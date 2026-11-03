# Edva — modular build, verification, and bootstrap targets.

SHELL := /usr/bin/env bash

# --- Installation Directories (GNU conventions) ------------------------------
PREFIX      ?= /usr/local
EXEC_PREFIX ?= $(PREFIX)
BINDIR      ?= $(EXEC_PREFIX)/bin
LIBDIR      ?= $(EXEC_PREFIX)/lib
INCDIR      ?= $(PREFIX)/include
DATADIR     ?= $(PREFIX)/share
DESTDIR     ?=

# --- Tools and Overrides -----------------------------------------------------
ifeq ($(origin CC),default)
  CC := clang
endif
CC              ?= clang
CLANG           ?= $(CC)
EDVA            ?= ./edva
EDVA_FLAGS      ?= -O2
NU              ?= nu
INSTALL         ?= install
INSTALL_PROGRAM ?= $(INSTALL) -m 755
INSTALL_DATA    ?= $(INSTALL) -m 644
INSTALL_DIR     ?= $(INSTALL) -d

# --- Compiler & Linker Flags -------------------------------------------------
UNAME_S      := $(shell uname -s)
CFLAGS       ?= -O2
LDFLAGS      ?=
LLVM_CONFIG  ?= llvm-config
LLVM_LIBDIR  := $(shell $(LLVM_CONFIG) --libdir 2>/dev/null)
ifeq ($(LLVM_LIBDIR),)
  LLVM_LIBDIR := $(shell sh -c 'for d in /usr/lib/llvm-*/lib /opt/homebrew/opt/llvm*/lib /usr/local/opt/llvm*/lib; do if [ -e "$$d/libLLVM.dylib" ] || [ -e "$$d/libLLVM.so" ]; then echo "$$d"; break; fi; done')
endif
ifneq ($(LLVM_LIBDIR),)
  LLVM_LDFLAGS := -L$(LLVM_LIBDIR) -Wl,-rpath,$(LLVM_LIBDIR)
else
  LLVM_LDFLAGS :=
endif
LLVM_LIBS    ?= $(shell $(LLVM_CONFIG) --libs 2>/dev/null)
ifeq ($(LLVM_LIBS),)
  ifneq ($(wildcard $(LLVM_LIBDIR)/libLLVM.dylib $(LLVM_LIBDIR)/libLLVM.so),)
    LLVM_LIBS := -lLLVM
  else
    LLVM_LIBS := -lLLVM-18
  endif
endif
LIBS         ?= $(LLVM_LIBS) -lm -ldl
ifeq ($(UNAME_S),Darwin)
  EXPORT_DYNAMIC_FLAG := -Wl,-export_dynamic
else
  EXPORT_DYNAMIC_FLAG := -Wl,--export-dynamic
endif

ALL_LDFLAGS  := -Qunused-arguments -Wno-unused-command-line-argument -Wno-override-module $(CFLAGS) \
                $(EXPORT_DYNAMIC_FLAG) $(LLVM_LDFLAGS) $(LDFLAGS)

# --- Verbosity Control -------------------------------------------------------
# Default: verbose (print commands). Run `make V=0` for quiet mode.
ifeq ($(V),0)
  Q    := @
  ECHO := @echo
else
  Q    :=
  ECHO := @:
endif

# Polling backend selection (poll, epoll, uring)
POLL_BACKEND ?= poll

# --- Modules and Objects -----------------------------------------------------
STD_MODULES      := const ascii utf str mem sys libc unicode io ccl json uring event path fs cli time log
COMPILER_MODULES := poll diag ast llvm operators dep_graph layout tast lexer unify type_env show parser annotate version pkg formatter lsp \
                    codegen/types codegen/runtime codegen/expr codegen/match codegen/stmt codegen/main codegen
ENTRY_MODULE     := edva

STD_OBJS      := $(patsubst %, build/obj/%.o, $(STD_MODULES))
COMPILER_OBJS := $(patsubst %, build/obj/%.o, $(COMPILER_MODULES))
ENTRY_OBJ     := build/obj/$(ENTRY_MODULE).o
ALL_OBJS      := $(STD_OBJS) $(COMPILER_OBJS) $(ENTRY_OBJ)

# Sources of the compiled objects, and every .dva the dependency scan may reach
ALL_SRCS      := $(STD_MODULES:%=std/%.dva) $(COMPILER_MODULES:%=src/%.dva) src/$(ENTRY_MODULE).dva
SCAN_SRCS     := $(shell find src std -name '*.dva')
DEPS_MK       := build/deps.mk

.PHONY: all build clean test check driver-test fixed-point rebuild-seed bootstrap gen-tokens gen-operators gen-version install uninstall

# Default target: incremental modular build
all: edva

# --- Incremental Modular Compilation -----------------------------------------

edva: $(ALL_OBJS)
	$(ECHO) "Linking edva..."
	$(Q)$(CC) $(ALL_LDFLAGS) $(ALL_OBJS) $(LIBS) -o $@
	@echo "Built edva successfully."

# Ensure bootstrap compiler exists before compiling any object
$(ALL_OBJS): | bootstrap build/obj src/version.dva src/poll.dva

.PHONY: config-poll
config-poll:
	$(Q)if [ ! -f src/poll.dva ] || ! cmp -s src/poll/$(POLL_BACKEND).dva src/poll.dva; then \
		echo "Configuring compiler poll backend: $(POLL_BACKEND)..."; \
		cp src/poll/$(POLL_BACKEND).dva src/poll.dva; \
	fi

src/poll.dva: config-poll

# Pattern rules for compilation units
build/obj/%.o: std/%.dva
	$(ECHO) "Compiling std/$*..."
	$(Q)mkdir -p $(dir $@)
	$(Q)$(EDVA) $< -c --module $* -o $@ $(EDVA_FLAGS)

build/obj/%.o: src/%.dva
	$(ECHO) "Compiling src/$*..."
	$(Q)mkdir -p $(dir $@)
	$(Q)$(EDVA) $< -c --module $(notdir $*) -o $@ $(EDVA_FLAGS)

build/obj/edva.o: src/edva.dva
	$(ECHO) "Compiling edva entry..."
	$(Q)mkdir -p $(dir $@)
	$(Q)$(EDVA) $< -c --entry -o $@ $(EDVA_FLAGS)

build/obj:
	$(Q)mkdir -p $@

# Bootstrap from seed if ./edva binary is missing
bootstrap:
	$(Q)if [ ! -x ./edva ]; then \
		echo "edva not found; bootstrapping from seed/ir/..."; \
		printf '#ifdef __APPLE__\nextern int *__error(void);\nint *__errno_location(void) { return __error(); }\n#else\nextern int *__errno_location(void);\nint *__error(void) { return __errno_location(); }\n#endif\n' > /tmp/edva_seed_shim_$$$$.c; \
		$(CC) --target=$$($(CC) -dumpmachine) $(ALL_LDFLAGS) $$(find seed/ir -name "*.ll") /tmp/edva_seed_shim_$$$$.c $(LIBS) -o edva; \
		rc=$$?; rm -f /tmp/edva_seed_shim_$$$$.c; exit $$rc; \
	fi

# --- Automatic Code Generation -----------------------------------------------

src/lexer.dva: tools/tokens.txt
	@echo "Generating token enums from tools/tokens.txt..."
	$(Q)if command -v $(NU) >/dev/null 2>&1; then $(NU) tools/gen_tokens.nu; else touch $@; fi

src/operators.dva: operators.yaml
	@echo "Generating operator tables from operators.yaml..."
	$(Q)if command -v $(NU) >/dev/null 2>&1; then $(NU) tools/opgen/main.nu; else touch $@; fi

src/version.dva: VERSION tools/gen_version.nu
	@echo "Generating version from tools/gen_version.nu..."
	$(Q)if command -v $(NU) >/dev/null 2>&1; then \
		$(NU) tools/gen_version.nu; \
	else \
		ver=$$(tr -d ' \t\r\n' < VERSION); \
		commit=$$(git rev-parse --short HEAD 2>/dev/null || echo unknown); \
		if [ "$$commit" != "unknown" ] && [ -n "$$(git status --porcelain -uno -- ':!VERSION' ':!src/version.dva' ':!seed/' 2>/dev/null)" ]; then \
			commit="$$commit-dirty"; \
		fi; \
		printf '// src/version.dva — generated by tools/gen_version.nu (do not edit manually)\n#public\n   VERSION = "%s+%s"\n   COMMIT_HASH = "%s"\n' "$$ver" "$$commit" "$$commit" > $@; \
	fi

gen-version:
	$(Q)if command -v $(NU) >/dev/null 2>&1; then \
		$(NU) tools/gen_version.nu; \
	else \
		$(MAKE) -B src/version.dva; \
	fi

gen-tokens: src/lexer.dva
gen-operators: src/operators.dva

# --- Module Dependencies (Prerequisites for incremental & parallel builds) ----
# build/deps.mk lists, for every object, all .dva files reachable through
# `#use` (transitively). Regenerated whenever any .dva source changes; GNU make
# then restarts with the fresh rules.

$(DEPS_MK): $(SCAN_SRCS) tools/gendeps.nu
	@echo "Generating module dependencies..."
	$(Q)if command -v $(NU) >/dev/null 2>&1; then \
		$(NU) tools/gendeps.nu $@ $(ALL_SRCS); \
	else \
		python3 -c 'import glob, os, re, sys; out, srcs = sys.argv[1], sys.argv[2:]; use_re = re.compile(r"^\s*#use(?:\([^)]*\))?\s+\"?([^\"\s]+)\"?"); \
		resolve = lambda base, mod: next(([os.path.normpath(os.path.join(b, mod + ".dva"))] if os.path.isfile(os.path.join(b, mod + ".dva")) else sorted(os.path.normpath(x) for x in glob.glob(os.path.join(b, mod, "*.dva"))) for b in ([base] + ([os.path.dirname(base)] if os.path.dirname(base) not in ("", ".") else []) + ["std"]) if os.path.isfile(os.path.join(b, mod + ".dva")) or os.path.isdir(os.path.join(b, mod))), []); \
		direct = lambda f: [d for m in dict.fromkeys(m.group(1) for line in open(f, encoding="utf-8") for m in [use_re.match(line)] if m) for d in resolve(os.path.dirname(f), m)]; \
		closure = lambda f: (lambda seen, todo: [seen.append(x) or todo.extend(direct(x)) for x in todo if x not in seen] and sorted(x for x in seen if x != f))([], [f]); \
		obj_for = lambda s: "build/obj/" + re.sub(r"\.dva$$", ".o", "/".join(s.split("/")[1:])); \
		os.makedirs(os.path.dirname(out), exist_ok=True); \
		rules = [(obj_for(s), closure(os.path.normpath(s))) for s in srcs]; \
		all_deps = sorted({d for _, deps in rules for d in deps}); \
		lines = ["# build/deps.mk", ""] + [t + (": \\\n  " + " \\\n  ".join(deps) if deps else ":") for t, deps in rules] + [""] + [d + ":" for d in all_deps] + [""]; \
		open(out, "w", encoding="utf-8").write("\n".join(lines))' $@ $(ALL_SRCS); \
	fi

NODEPS_GOALS := clean uninstall
ifeq ($(MAKECMDGOALS),)
  -include $(DEPS_MK)
else ifneq ($(filter-out $(NODEPS_GOALS),$(MAKECMDGOALS)),)
  -include $(DEPS_MK)
endif

# --- Installation ------------------------------------------------------------

install: edva
	$(INSTALL_DIR) $(DESTDIR)$(BINDIR)
	$(INSTALL_PROGRAM) edva $(DESTDIR)$(BINDIR)/edva
	$(INSTALL_DIR) $(DESTDIR)$(LIBDIR)/edva/std
	cp -R std/* $(DESTDIR)$(LIBDIR)/edva/std/

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/edva
	rm -rf $(DESTDIR)$(LIBDIR)/edva

# --- Fixed-Point Verification ------------------------------------------------
# Stage 1: ./edva compiles all modules to build/stage1/*.ll
# Stage 2: ./edva_stage1 compiles all modules to build/stage2/*.ll
# Fixed-point asserts: diff -u build/stage1 build/stage2 is empty

fixed-point: bootstrap
	@echo "=== Running 2-stage fixed-point verification ==="
	$(Q)rm -rf build/stage1 build/stage2 edva_stage1 edva_stage2
	$(Q)mkdir -p build/stage1/codegen build/stage2/codegen
	@echo "Running Stage 1 compilation..."
	$(Q)for m in $(STD_MODULES); do \
		./edva std/$$m.dva -c --module $$m -o build/stage1/$$m.o -ir --no-cache || exit 1; \
		mv -f $$m.ll build/stage1/$$m.ll; \
	done
	$(Q)for m in $(COMPILER_MODULES); do \
		./edva src/$$m.dva -c --module $$(basename $$m) -o build/stage1/$$m.o -ir --no-cache || exit 1; \
		mv -f $$(basename $$m).ll build/stage1/$$m.ll; \
	done
	$(Q)./edva src/edva.dva -c --entry -o build/stage1/edva.o -ir --no-cache || exit 1
	$(Q)mv -f edva.ll build/stage1/edva.ll
	$(Q)$(CC) $(ALL_LDFLAGS) $$(find build/stage1 -name "*.ll") $(LIBS) -o edva_stage1
	@echo "Running Stage 2 compilation..."
	$(Q)for m in $(STD_MODULES); do \
		./edva_stage1 std/$$m.dva -c --module $$m -o build/stage2/$$m.o -ir --no-cache || exit 1; \
		mv -f $$m.ll build/stage2/$$m.ll; \
	done
	$(Q)for m in $(COMPILER_MODULES); do \
		./edva_stage1 src/$$m.dva -c --module $$(basename $$m) -o build/stage2/$$m.o -ir --no-cache || exit 1; \
		mv -f $$(basename $$m).ll build/stage2/$$m.ll; \
	done
	$(Q)./edva_stage1 src/edva.dva -c --entry -o build/stage2/edva.o -ir --no-cache || exit 1
	$(Q)mv -f edva.ll build/stage2/edva.ll
	@echo "Comparing Stage 1 and Stage 2 IR files..."
	$(Q)diff -u -r -x "*.o" build/stage1/ build/stage2/
	@echo "Fixed point verified! (All module IR outputs are byte-identical)"
	$(Q)mv -f edva_stage1 edva
	$(Q)rm -rf build/stage1 build/stage2 edva_stage2

# --- Rebuild Seed -------------------------------------------------------------
# Updates seed/ (seed/src, seed/std, seed/ir) with the verified compiler IR.
# MANDATORY whenever language syntax, compiler intrinsics, runtime, or stdlib
# changes are introduced, so fresh checkouts without a pre-existing ./edva binary
# can bootstrap cleanly. Run `make rebuild-seed` and commit seed/.
rebuild-seed: fixed-point
	@echo "Syncing frozen sources to seed/..."
	$(Q)rm -rf seed/src seed/std seed/ir
	$(Q)mkdir -p seed/src/codegen seed/std seed/ir/codegen
	$(Q)cp -f src/*.dva seed/src/
	$(Q)cp -f src/codegen/*.dva seed/src/codegen/
	$(Q)cp -f tools/tokens.txt seed/src/
	$(Q)cp -r std/* seed/std/
	@echo "Updating seed modular IR..."
	$(Q)for m in $(STD_MODULES); do \
		./edva seed/std/$$m.dva -c --module $$m -o seed/ir/$$m.o -ir --no-cache || exit 1; \
		mv -f $$m.ll seed/ir/$$m.ll; \
	done
	$(Q)for m in $(COMPILER_MODULES); do \
		./edva seed/src/$$m.dva -c --module $$(basename $$m) -o seed/ir/$$m.o -ir --no-cache || exit 1; \
		mv -f $$(basename $$m).ll seed/ir/$$m.ll; \
	done
	$(Q)./edva seed/src/edva.dva -c --entry -o seed/ir/edva.o -ir --no-cache || exit 1
	$(Q)mv -f edva.ll seed/ir/edva.ll
	$(Q)rm -f seed/ir/*.o seed/ir/codegen/*.o
	@echo "Seed successfully rebuilt and verified."

# --- Clean & Test Gates -------------------------------------------------------

build: gen-tokens gen-operators gen-version edva

test: edva
	./run_tests.sh

driver-test: edva
	./test_driver.sh

check: build driver-test test

clean:
	$(Q)rm -rf build edva_stage1 edva_stage2 edva_stage1.ll edva_stage2.ll
	$(Q)rm -f *.ll *.o
	@echo "Cleaned build artifacts."
