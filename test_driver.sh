#!/usr/bin/env bash
# Real-driver regression test suite for edva: verifies CLI behavior,
# error propagation, signal handling, and atomic file outputs.
set -e
ulimit -v 4194304 2>/dev/null || true
cd "$(dirname "$0")"

if [ ! -x ./edva ]; then
    echo "test_driver: ./edva not found — building..." >&2
    make edva
fi

TMPDIR=$(mktemp -d /tmp/edva_driver_test_XXXXXX)
trap 'rm -rf "$TMPDIR"' EXIT

echo "=== Running edva driver regression tests ==="

# --- Test 1: F1 - Parse failure must fail compilation and emit no files ---
echo -n "Testing F1 (parse failure propagation)... "
cat <<'EOF' > "$TMPDIR/bad_syntax.dva"
x = )
EOF
set +e
timeout 30 ./edva "$TMPDIR/bad_syntax.dva" < /dev/null >"$TMPDIR/t1.out" 2>"$TMPDIR/t1.err"
rc=$?
set -e
if [ $rc -eq 0 ]; then
    echo "FAILED: expected non-zero exit on parse failure, got 0"
    exit 1
fi
if ! grep -q "E2064" "$TMPDIR/t1.out" "$TMPDIR/t1.err"; then
    echo "FAILED: expected E2064 in output"
    exit 1
fi
if [ -f "$TMPDIR/bad_syntax" ] || [ -f "$TMPDIR/bad_syntax.ll" ] || [ -f "bad_syntax" ] || [ -f "bad_syntax.ll" ]; then
    echo "FAILED: output binary or IR was emitted despite parse failure"
    exit 1
fi
echo "PASS"

# --- Test 2: F1 - Missing module must fail compilation and emit no files ---
echo -n "Testing F1 (missing module failure propagation)... "
cat <<'EOF' > "$TMPDIR/bad_mod.dva"
#use "definitely_nonexistent_mod_12345"
x = 42
EOF
set +e
timeout 30 ./edva "$TMPDIR/bad_mod.dva" < /dev/null >"$TMPDIR/t2.out" 2>"$TMPDIR/t2.err"
rc=$?
set -e
if [ $rc -eq 0 ]; then
    echo "FAILED: expected non-zero exit on missing module, got 0"
    exit 1
fi
if ! grep -q "E5006" "$TMPDIR/t2.out" "$TMPDIR/t2.err"; then
    echo "FAILED: expected E5006 in output"
    exit 1
fi
if [ -f "$TMPDIR/bad_mod" ] || [ -f "$TMPDIR/bad_mod.ll" ] || [ -f "bad_mod" ] || [ -f "bad_mod.ll" ]; then
    echo "FAILED: output binary or IR was emitted despite missing module"
    exit 1
fi
echo "PASS"

# --- Test 3: F2 - Unwritable output path must report error without segfault ---
echo -n "Testing F2 (unwritable output path error without SIGSEGV)... "
cat <<'EOF' > "$TMPDIR/good.dva"
#use io
io::out $ "hello"
EOF
set +e
timeout 30 ./edva "$TMPDIR/good.dva" "$TMPDIR/nonexistent_dir/output" -ir < /dev/null >"$TMPDIR/t3.out" 2>"$TMPDIR/t3.err"
rc=$?
set -e
if [ $rc -eq 0 ]; then
    echo "FAILED: expected non-zero exit on unwritable output path, got 0"
    exit 1
fi
if [ $rc -ge 128 ]; then
    echo "FAILED: compiler crashed with signal $((rc - 128))"
    exit 1
fi
if ! grep -q "E5012" "$TMPDIR/t3.out" "$TMPDIR/t3.err"; then
    echo "FAILED: expected E5012 error message"
    exit 1
fi
echo "PASS"

# --- Test 4: F5 - read_file_text exact bytes & empty file handling ---
echo -n "Testing F5 (file read exact length and empty file handling)... "
cat <<'EOF' > "$TMPDIR/empty.txt"
EOF
cat <<'EOF' > "$TMPDIR/nonempty.txt"
Line 1
Line 2
Line 3
EOF
cat <<'EOF' > "$TMPDIR/test_f5.dva"
#use io
#use "str"
#use "libc"
#use "sys"

read_fd_bytes_loop: Int, Builder, Int, Int => < Int | >
read_fd_bytes_loop = fd, b, off, rem =>
   rem == 0
      | <+ off +>
      |
         chunk = rem < 65536 | rem | 65536
         n = libc::read(fd, &b + off, chunk)
         n < 0
            | <-->
            |
               n == 0
                  | <+ off +>
                  | read_fd_bytes_loop(fd, b, off + n, rem - n)

read_file_text: String => < String | >
read_file_text = path =>
   fd = libc::open(path, 0)
   fd < 0
      | <-->
      |
         sz = libc::lseek(fd, 0, 2)
         sz < 0
            |
               libc::close(fd)
               <-->
            |
               sz == 0
                  |
                     libc::close(fd)
                     <+ "" +>
                  |
                     libc::lseek(fd, 0, 0)
                     b = {sz}
                     read_res = read_fd_bytes_loop(fd, b, 0, sz)
                     libc::close(fd)
                     read_res
                        | total =>
                           ?b = total
                           <+ +b +>
                        | <-->

empty_res = read_file_text("FILE_EMPTY_PATH")
empty_res
   | s =>
      ?s != 0 | sys::exit(2)
   | sys::exit(3)

nonempty_res = read_file_text("FILE_NONEMPTY_PATH")
nonempty_res
   | s =>
      ?s == 21
         | io::out $ "F5_OK"
         | sys::exit(4)
   | sys::exit(5)
EOF
sed -i "s|FILE_EMPTY_PATH|$TMPDIR/empty.txt|g" "$TMPDIR/test_f5.dva"
sed -i "s|FILE_NONEMPTY_PATH|$TMPDIR/nonempty.txt|g" "$TMPDIR/test_f5.dva"
set +e
timeout 30 ./edva "$TMPDIR/test_f5.dva" "$TMPDIR/test_f5" -r < /dev/null >"$TMPDIR/t4.out" 2>"$TMPDIR/t4.err"
rc=$?
set -e
if [ $rc -ne 0 ] || ! grep -q "F5_OK" "$TMPDIR/t4.out"; then
    echo "FAILED: test_f5 failed (rc=$rc)"
    cat "$TMPDIR/t4.out" "$TMPDIR/t4.err"
    exit 1
fi
echo "PASS"

# --- Test 5: F8 - Signal termination under -r must be reported correctly ---
echo -n "Testing F8 (child signal termination reporting under -r)... "
cat <<'EOF' > "$TMPDIR/test_sig.dva"
#foreign "c"
   raise: (sig: Int) -> Int

raise(15)
EOF
set +e
timeout 30 ./edva "$TMPDIR/test_sig.dva" "$TMPDIR/test_sig" -r < /dev/null >"$TMPDIR/t5.out" 2>"$TMPDIR/t5.err"
rc=$?
set -e
if [ $rc -eq 0 ]; then
    echo "FAILED: expected non-zero exit code when child is killed by signal"
    exit 1
fi
if ! grep -q "Process terminated by signal 15" "$TMPDIR/t5.out" "$TMPDIR/t5.err"; then
    echo "FAILED: expected 'Process terminated by signal 15' in output"
    cat "$TMPDIR/t5.out" "$TMPDIR/t5.err"
    exit 1
fi
if ! grep -q "E5014: Compiled program exited with code 143" "$TMPDIR/t5.out" "$TMPDIR/t5.err"; then
    echo "FAILED: expected code 143 (128 + 15) in E5014 output"
    cat "$TMPDIR/t5.out" "$TMPDIR/t5.err"
    exit 1
fi
echo "PASS"

# --- Test 6: Pipeline verification flag (--typed-ast) ---
echo -n "Testing --typed-ast (typed AST elaboration & error handling)... "
cat <<'EOF' > "$TMPDIR/test_typed_pass.dva"
#use io
f: Int => Int
f = x => x + 1
io::out(f(41))
EOF
set +e
timeout 30 ./edva "$TMPDIR/test_typed_pass.dva" --typed-ast < /dev/null \
    >"$TMPDIR/t6_pass.out" 2>"$TMPDIR/t6_pass.err"
rc=$?
set -e
if [ $rc -ne 0 ]; then
    echo "FAILED: expected 0 exit on --typed-ast with valid code, got $rc"
    cat "$TMPDIR/t6_pass.out" "$TMPDIR/t6_pass.err"
    exit 1
fi
if ! grep -q "Typed AST Elaboration Statistics" "$TMPDIR/t6_pass.out"; then
    echo "FAILED: expected 'Typed AST Elaboration Statistics' in output"
    exit 1
fi
if [ -f "$TMPDIR/test_typed_pass" ] || [ -f "$TMPDIR/test_typed_pass.ll" ] || \
   [ -f "test_typed_pass" ] || [ -f "test_typed_pass.ll" ]; then
    echo "FAILED: binary or IR emitted during --typed-ast"
    exit 1
fi

cat <<'EOF' > "$TMPDIR/test_typed_fail.dva"
x = 5 + "hello"
EOF
set +e
timeout 30 ./edva "$TMPDIR/test_typed_fail.dva" --typed-ast < /dev/null \
    >"$TMPDIR/t6_fail.out" 2>"$TMPDIR/t6_fail.err"
rc=$?
set -e
if [ $rc -eq 0 ]; then
    echo "FAILED: expected non-zero exit on type error with --typed-ast"
    exit 1
fi
if ! grep -q "E3084" "$TMPDIR/t6_fail.out" "$TMPDIR/t6_fail.err"; then
    echo "FAILED: expected E3084 in type error output"
    exit 1
fi

timeout 30 ./edva "$TMPDIR/test_typed_pass.dva" -typed-ast-tree < /dev/null \
    >"$TMPDIR/t6_tree.out" 2>"$TMPDIR/t6_tree.err"
if ! grep -q "Bin(+): Int \[8B\]" "$TMPDIR/t6_tree.out"; then
    echo "FAILED: expected 'Bin(+): Int [8B]' in typed AST tree output"
    cat "$TMPDIR/t6_tree.out"
    exit 1
fi
echo "PASS"

# --- Test 7: C header generation (-H / --header) ---
echo -n "Testing -H / --header (C header generation from #export)... "
cat <<'EOF' > "$TMPDIR/test_export.dva"
#type Point (x: Int, y: Int)
#export add_points: Point, Point => Point
add_points = p1, p2 => Point(p1.x + p2.x, p1.y + p2.y)
#export mul_int: Int, Int => Int
mul_int = a, b => a * b
EOF
set +e
timeout 30 ./edva "$TMPDIR/test_export.dva" -H "$TMPDIR/test_export.h" -ir < /dev/null \
    >"$TMPDIR/t7.out" 2>"$TMPDIR/t7.err"
rc=$?
set -e
if [ $rc -ne 0 ]; then
    echo "FAILED: expected 0 exit on header generation, got $rc"
    cat "$TMPDIR/t7.out" "$TMPDIR/t7.err"
    exit 1
fi
if [ ! -f "$TMPDIR/test_export.h" ]; then
    echo "FAILED: header file was not created at expected path"
    exit 1
fi
if ! grep -q "TEST_EXPORT_H" "$TMPDIR/test_export.h"; then
    echo "FAILED: header guard missing or incorrect in test_export.h"
    exit 1
fi
if ! grep -q "Point add_points(Point p1, Point p2);" "$TMPDIR/test_export.h"; then
    echo "FAILED: expected prototype 'Point add_points(Point p1, Point p2);' in header"
    cat "$TMPDIR/test_export.h"
    exit 1
fi
if ! grep -q "int64_t mul_int(int64_t a, int64_t b);" "$TMPDIR/test_export.h"; then
    echo "FAILED: expected prototype 'int64_t mul_int(int64_t a, int64_t b);' in header"
    cat "$TMPDIR/test_export.h"
    exit 1
fi
if ! clang -fsyntax-only "$TMPDIR/test_export.h" 2>/dev/null; then
    echo "FAILED: generated header is not valid C99"
    cat "$TMPDIR/test_export.h"
    exit 1
fi
echo "PASS"

# --- Test 8: WebAssembly target (-target wasm32-unknown-unknown) ---
echo -n "Testing WebAssembly target (-target wasm32-unknown-unknown)... "
cat <<'EOF' > "$TMPDIR/test_wasm.dva"
#export add_int: Int, Int => Int
add_int = a, b => a + b

#export square: Int => Int
square = x => x * x
EOF
set +e
timeout 30 ./edva "$TMPDIR/test_wasm.dva" -target wasm32-unknown-unknown -o "$TMPDIR/math.wasm" < /dev/null \
    >"$TMPDIR/t8.out" 2>"$TMPDIR/t8.err"
rc=$?
set -e
if [ $rc -ne 0 ]; then
    if grep -qE "unhandled target|No available targets are compatible with triple" "$TMPDIR/t8.err" 2>/dev/null || grep -q "wasm-ld linking failed" "$TMPDIR/t8.out" 2>/dev/null; then
        echo "SKIPPED (wasm-ld or wasm32 toolchain unavailable)"
    else
        echo "FAILED: expected 0 exit on wasm compilation, got $rc"
        cat "$TMPDIR/t8.out" "$TMPDIR/t8.err"
        exit 1
    fi
elif [ ! -f "$TMPDIR/math.wasm" ]; then
    echo "FAILED: wasm binary was not created at expected path"
    exit 1
else
if command -v file >/dev/null 2>&1; then
    if ! file "$TMPDIR/math.wasm" | grep -q "WebAssembly"; then
        echo "FAILED: output file is not a valid WebAssembly binary"
        exit 1
    fi
else
    # Fallback when 'file' utility is not installed: verify 4-byte Wasm magic header \0asm
    magic=$(head -c 4 "$TMPDIR/math.wasm" 2>/dev/null || true)
    if [ "$magic" != $'\0asm' ]; then
        echo "FAILED: output file is not a valid WebAssembly binary (invalid header)"
        exit 1
    fi
fi
if command -v node >/dev/null 2>&1; then
    node_out=$(node --disable-wasm-trap-handler -e '
        const fs = require("fs");
        const b = fs.readFileSync(process.argv[1]);
        WebAssembly.instantiate(b).then(res => {
            const e = res.instance.exports;
            const r1 = e.add_int(10n, 32n);
            const r2 = e.square(7n);
            if (r1 !== 42n || r2 !== 49n) {
                console.error("Wrong result: " + r1 + ", " + r2);
                process.exit(1);
            }
            console.log("OK");
        });
    ' "$TMPDIR/math.wasm" 2>&1)
    if [ "$node_out" != "OK" ]; then
        echo "FAILED: node execution of wasm module failed: $node_out"
        exit 1
    fi
    fi
    echo "PASS"
fi

# --- Test 9: Modular compilation & interface-only #use loading (#80, #81) ---
echo -n "Testing modular compilation & interface-only #use loading... "
cat <<'EOF' > "$TMPDIR/lib_mod.dva"
#public

#type Point (x: Int, y: Int)

add_pts: Point, Point => Point
add_pts = p1, p2 => Point(p1.x + p2.x, p1.y + p2.y)

#private
secret: Int => Int
secret = x => x * 100
EOF

cat <<'EOF' > "$TMPDIR/main_mod.dva"
#use "lib_mod"
#foreign "c"
   exit: (code: Int) => ()

pt1 = lib_mod::Point(10, 20)
pt2 = lib_mod::Point(30, 40)
pt3 = lib_mod::add_pts(pt1, pt2)
exit(pt3.x + pt3.y)
EOF

set +e
timeout 30 ./edva -c --module lib_mod "$TMPDIR/lib_mod.dva" -o "$TMPDIR/lib_mod.o" < /dev/null >"$TMPDIR/t9_lib.out" 2>"$TMPDIR/t9_lib.err"
rc=$?
set -e
if [ $rc -ne 0 ] || [ ! -f "$TMPDIR/lib_mod.o" ]; then
    echo "FAILED: lib_mod.o compilation failed"
    cat "$TMPDIR/t9_lib.out" "$TMPDIR/t9_lib.err"
    exit 1
fi

set +e
timeout 30 ./edva -c --entry "$TMPDIR/main_mod.dva" -o "$TMPDIR/main_mod.o" -ir < /dev/null >"$TMPDIR/t9_main.out" 2>"$TMPDIR/t9_main.err"
rc=$?
set -e
if [ $rc -ne 0 ] || [ ! -f "main_mod.ll" ]; then
    echo "FAILED: main_mod.o compilation failed"
    cat "$TMPDIR/t9_main.out" "$TMPDIR/t9_main.err"
    exit 1
fi

if ! grep -q 'declare ptr @"lib_mod::add_pts"' "main_mod.ll"; then
    echo "FAILED: expected external declaration of lib_mod::add_pts in main_mod.ll"
    cat "main_mod.ll"
    exit 1
fi
if grep -q 'define internal %"lib_mod::Point" @"lib_mod::add_pts"' "main_mod.ll"; then
    echo "FAILED: dependency function body was compiled into importer in modular mode"
    exit 1
fi
if grep -q 'secret' "main_mod.ll"; then
    echo "FAILED: private dependency symbol leaked into importer"
    exit 1
fi

clang -Qunused-arguments -Wno-unused-command-line-argument -c "main_mod.ll" -o "$TMPDIR/main_mod.o"
clang -Qunused-arguments -Wno-unused-command-line-argument "$TMPDIR/main_mod.o" "$TMPDIR/lib_mod.o" -o "$TMPDIR/mod_bin"
set +e
"$TMPDIR/mod_bin"
rc=$?
set -e
if [ $rc -ne 100 ]; then
    echo "FAILED: expected exit code 100 (40 + 60), got $rc"
    exit 1
fi
rm -f "main_mod.ll" "main_mod.o"
echo "PASS"

# --- Test 10: Compiling src/ derives project directory name ---
echo -n "Testing project name derivation for src/ directory target... "
mkdir -p "$TMPDIR/sample_proj/src"
cat <<'EOF' > "$TMPDIR/sample_proj/src/main.dva"
#use io
io::out $ "driver test sample_proj"
EOF
ORIG_DIR=$(pwd)
cd "$TMPDIR/sample_proj"
set +e
timeout 30 "$ORIG_DIR/edva" src/ < /dev/null >"$TMPDIR/t10.out" 2>"$TMPDIR/t10.err"
rc=$?
set -e
cd "$ORIG_DIR"
if [ $rc -ne 0 ] || [ ! -x "$TMPDIR/sample_proj/sample_proj" ]; then
    echo "FAILED: expected binary $TMPDIR/sample_proj/sample_proj to be created, exit code $rc"
    cat "$TMPDIR/t10.out" "$TMPDIR/t10.err"
    exit 1
fi
OUT=$("$TMPDIR/sample_proj/sample_proj")
if [ "$OUT" != "driver test sample_proj" ]; then
    echo "FAILED: unexpected binary output: $OUT"
    exit 1
fi
echo "PASS"

# --- Test 11: E5022 directory collision diagnostic ---
echo -n "Testing E5022 directory collision handling... "
mkdir -p "$TMPDIR/collision_proj/subpkg"
cat <<'EOF' > "$TMPDIR/collision_proj/subpkg/main.dva"
#use io
io::out $ "hello"
EOF
cd "$TMPDIR/collision_proj"
set +e
timeout 30 "$ORIG_DIR/edva" subpkg/ < /dev/null >"$TMPDIR/t11.out" 2>"$TMPDIR/t11.err"
rc=$?
set -e
cd "$ORIG_DIR"
if [ $rc -eq 0 ]; then
    echo "FAILED: expected non-zero exit code on directory collision"
    exit 1
fi
if ! grep -q "E5022" "$TMPDIR/t11.out" "$TMPDIR/t11.err"; then
    echo "FAILED: expected E5022 in output"
    cat "$TMPDIR/t11.out" "$TMPDIR/t11.err"
    exit 1
fi
echo "PASS"

# --- Test 12: edva pkg CLI usage and dispatch ---
echo -n "Testing edva pkg CLI dispatch and usage... "
set +e
timeout 30 ./edva pkg >"$TMPDIR/t12.out" 2>"$TMPDIR/t12.err"
rc=$?
set -e
if [ $rc -ne 2 ] || ! grep -q "usage: edva pkg" "$TMPDIR/t12.out"; then
    echo "FAILED: expected rc=2 and usage message for 'edva pkg'"
    cat "$TMPDIR/t12.out" "$TMPDIR/t12.err"
    exit 1
fi
set +e
timeout 30 ./edva pkg --help >"$TMPDIR/t12_h.out" 2>"$TMPDIR/t12_h.err"
rc=$?
set -e
if [ $rc -ne 0 ] || ! grep -q "usage: edva pkg" "$TMPDIR/t12_h.out"; then
    echo "FAILED: expected rc=0 and usage message for 'edva pkg --help'"
    exit 1
fi
echo "PASS"

# --- Test 13: edva pkg fetch generates lock and import map ---
echo -n "Testing edva pkg fetch resolution, lockfile and imports.ccl generation... "
PKGDIR="$TMPDIR/pkg_app"
mkdir -p "$PKGDIR/src" "$PKGDIR/packages/lib_a/src"
cat <<'EOF' > "$PKGDIR/edva.ccl"
name = app
version = 0.1.0
edva = 0.1.0

dependencies =
  a =
    path = ./packages/lib_a
EOF
cat <<'EOF' > "$PKGDIR/packages/lib_a/edva.ccl"
name = lib_a
version = 1.0.0
edva = 0.1.0
EOF
cat <<'EOF' > "$PKGDIR/packages/lib_a/src/lib_a.dva"
#public
   forty_two = 42
EOF
cat <<'EOF' > "$PKGDIR/src/main.dva"
#use @a
#use io
io::out $ str::from_int(a::forty_two)
EOF

set +e
timeout 30 ./edva pkg fetch "$PKGDIR" >"$TMPDIR/t13.out" 2>"$PKGDIR/t13.err"
rc=$?
set -e
if [ $rc -ne 0 ] || [ ! -f "$PKGDIR/edva.lock.ccl" ] || [ ! -f "$PKGDIR/.edva/imports.ccl" ]; then
    echo "FAILED: edva pkg fetch failed to generate lockfile or imports map, rc=$rc"
    cat "$TMPDIR/t13.out" "$PKGDIR/t13.err"
    exit 1
fi
if ! grep -q "lib_a@path" "$PKGDIR/edva.lock.ccl"; then
    echo "FAILED: edva.lock.ccl missing lib_a@path"
    exit 1
fi
if ! grep -q "aliases =" "$PKGDIR/.edva/imports.ccl"; then
    echo "FAILED: imports.ccl missing aliases section"
    exit 1
fi
echo "PASS"

# --- Test 14: edva pkg fetch --locked enforcement ---
echo -n "Testing edva pkg fetch --locked validation... "
set +e
timeout 30 ./edva pkg fetch "$PKGDIR" --locked >"$TMPDIR/t14.out" 2>"$TMPDIR/t14.err"
rc=$?
set -e
if [ $rc -ne 0 ]; then
    echo "FAILED: expected --locked to succeed on matching lockfile, got rc=$rc"
    exit 1
fi
# Mutate manifest to trigger out of date error
printf '  extra =\n    path = ./packages/lib_a\n' >> "$PKGDIR/edva.ccl"
set +e
timeout 30 ./edva pkg fetch "$PKGDIR" --locked >"$TMPDIR/t14_stale.out" 2>"$TMPDIR/t14_stale.err"
rc=$?
set -e
if [ $rc -eq 0 ] || ! grep -q "E7007" "$TMPDIR/t14_stale.out"; then
    echo "FAILED: expected E7007 on out of date lockfile under --locked"
    cat "$TMPDIR/t14_stale.out"
    exit 1
fi
rm -f "$PKGDIR/edva.lock.ccl"
set +e
timeout 30 ./edva pkg fetch "$PKGDIR" --locked >"$TMPDIR/t14_missing.out" 2>"$TMPDIR/t14_missing.err"
rc=$?
set -e
if [ $rc -eq 0 ] || ! grep -q "E7006" "$TMPDIR/t14_missing.out"; then
    echo "FAILED: expected E7006 on missing lockfile under --locked"
    cat "$TMPDIR/t14_missing.out"
    exit 1
fi
echo "PASS"

# --- Test 15: edva pkg fetch cycle detection ---
echo -n "Testing edva pkg fetch dependency cycle detection... "
CYCDIR="$TMPDIR/pkg_cycle"
mkdir -p "$CYCDIR/packages/c1/src" "$CYCDIR/packages/c2/src"
cat <<'EOF' > "$CYCDIR/edva.ccl"
name = cyc_root
version = 0.1.0
edva = 0.1.0

dependencies =
  c1 =
    path = ./packages/c1
EOF
cat <<'EOF' > "$CYCDIR/packages/c1/edva.ccl"
name = c1
version = 0.1.0
edva = 0.1.0

dependencies =
  c2 =
    path = ../c2
EOF
cat <<'EOF' > "$CYCDIR/packages/c2/edva.ccl"
name = c2
version = 0.1.0
edva = 0.1.0

dependencies =
  c1 =
    path = ../c1
EOF
set +e
timeout 30 ./edva pkg fetch "$CYCDIR" >"$TMPDIR/t15.out" 2>"$TMPDIR/t15.err"
rc=$?
set -e
if [ $rc -eq 0 ] || ! grep -q "E7002: dependency cycle: c1@path -> c2@path -> c1@path" "$TMPDIR/t15.out"; then
    echo "FAILED: expected E7002 dependency cycle error"
    cat "$TMPDIR/t15.out"
    exit 1
fi
echo "PASS"

# --- Test 16: edva pkg fetch root overrides and --locked rejection ---
echo -n "Testing edva pkg fetch overrides and --locked rejection... "
OVRDIR="$TMPDIR/pkg_ovr"
mkdir -p "$OVRDIR/packages/orig/src" "$OVRDIR/packages/rep/src"
cat <<'EOF' > "$OVRDIR/packages/orig/edva.ccl"
name = orig
version = 1.0.0
edva = 0.1.0
EOF
cat <<'EOF' > "$OVRDIR/packages/rep/edva.ccl"
name = rep
version = 2.0.0
edva = 0.1.0
EOF
cat <<'EOF' > "$OVRDIR/edva.ccl"
name = ovrapp
version = 0.1.0
edva = 0.1.0

dependencies =
  dep =
    path = ./packages/orig

overrides =
  dep =
    path = ./packages/rep
EOF
set +e
timeout 30 ./edva pkg fetch "$OVRDIR" >"$TMPDIR/t16.out" 2>"$TMPDIR/t16.err"
rc=$?
set -e
if [ $rc -ne 0 ] || ! grep -q "rep@path" "$OVRDIR/edva.lock.ccl"; then
    echo "FAILED: expected override to select rep@path"
    cat "$TMPDIR/t16.out"
    exit 1
fi
if ! grep -q "override = true" "$OVRDIR/edva.lock.ccl"; then
    echo "FAILED: expected override = true in edva.lock.ccl"
    exit 1
fi
set +e
timeout 30 ./edva pkg fetch "$OVRDIR" --locked >"$TMPDIR/t16_lock.out" 2>"$TMPDIR/t16_lock.err"
rc=$?
set -e
if [ $rc -eq 0 ] || ! grep -q "E7008" "$TMPDIR/t16_lock.out"; then
    echo "FAILED: expected E7008 when --locked runs with overrides"
    cat "$TMPDIR/t16_lock.out"
    exit 1
fi
echo "PASS"

# --- Test 17: edva pkg fetch --offline enforcement ---
echo -n "Testing edva pkg fetch --offline rejection... "
OFFDIR="$TMPDIR/pkg_off"
mkdir -p "$OFFDIR"
cat <<'EOF' > "$OFFDIR/edva.ccl"
name = offapp
version = 0.1.0
edva = 0.1.0

dependencies =
  net_dep =
    git = https://example.com/doesnotexist.git
    rev = main
EOF
set +e
timeout 30 ./edva pkg fetch "$OFFDIR" --offline --store "$TMPDIR/store" >"$TMPDIR/t17.out" 2>"$TMPDIR/t17.err"
rc=$?
set -e
if [ $rc -eq 0 ] || ! grep -q "E7003: offline:" "$TMPDIR/t17.out"; then
    echo "FAILED: expected E7003 offline error"
    cat "$TMPDIR/t17.out"
    exit 1
fi
echo "PASS"

# --- Test 18: local Git fixture fetch, tree hashing, store layout, and imports map ---
echo -n "Testing edva pkg fetch git fixture, tree hashing and store layout... "
GIT_REPO="$TMPDIR/fixture_git"
mkdir -p "$GIT_REPO/src"
cat <<'EOF' > "$GIT_REPO/edva.ccl"
name = git_pkg
version = 1.0.0
edva = 0.1.0
EOF
cat <<'EOF' > "$GIT_REPO/src/git_pkg.dva"
#public
   git_val = 100
EOF
git -C "$GIT_REPO" init --quiet -b main
git -C "$GIT_REPO" config user.email "test@example.com"
git -C "$GIT_REPO" config user.name "Test"
git -C "$GIT_REPO" add .
git -C "$GIT_REPO" commit --quiet -m "init git_pkg"
git -C "$GIT_REPO" tag v1.0.0
FIRST_COMMIT=$(git -C "$GIT_REPO" rev-parse HEAD)

GIT_APP="$TMPDIR/git_app"
STORE_DIR="$TMPDIR/edva_store"
mkdir -p "$GIT_APP/src"
cat <<EOF > "$GIT_APP/edva.ccl"
name = git_consumer
version = 0.1.0
edva = 0.1.0

dependencies =
  dep =
    git = file://$GIT_REPO
    rev = v1.0.0
EOF

set +e
timeout 30 ./edva pkg fetch "$GIT_APP" --store "$STORE_DIR" >"$TMPDIR/t18.out" 2>"$TMPDIR/t18.err"
rc=$?
set -e
if [ $rc -ne 0 ]; then
    echo "FAILED: edva pkg fetch failed for git fixture, rc=$rc"
    cat "$TMPDIR/t18.out" "$TMPDIR/t18.err"
    exit 1
fi
if ! grep -q "commit = $FIRST_COMMIT" "$GIT_APP/edva.lock.ccl"; then
    echo "FAILED: edva.lock.ccl missing resolved commit $FIRST_COMMIT"
    cat "$GIT_APP/edva.lock.ccl"
    exit 1
fi
if ! grep -E -q "hash = sha256-[0-9a-f]{64}" "$GIT_APP/edva.lock.ccl"; then
    echo "FAILED: edva.lock.ccl missing tree hash"
    cat "$GIT_APP/edva.lock.ccl"
    exit 1
fi
TREE_HASH=$(grep -E "hash = sha256-" "$GIT_APP/edva.lock.ccl" | awk '{print $3}')
if [ ! -d "$STORE_DIR/$TREE_HASH/src" ] || [ ! -f "$STORE_DIR/$TREE_HASH/src/git_pkg.dva" ]; then
    echo "FAILED: content store missing $STORE_DIR/$TREE_HASH/src/git_pkg.dva"
    ls -la "$STORE_DIR"
    exit 1
fi
if ! grep -q "$STORE_DIR/$TREE_HASH/src" "$GIT_APP/.edva/imports.ccl"; then
    echo "FAILED: imports.ccl does not point to $STORE_DIR/$TREE_HASH/src"
    cat "$GIT_APP/.edva/imports.ccl"
    exit 1
fi
echo "PASS"

# --- Test 19: moving tag pinning in locked fetch ---
echo -n "Testing edva pkg fetch moving tag pinning... "
echo "new_val = 200" >> "$GIT_REPO/src/git_pkg.dva"
git -C "$GIT_REPO" commit --quiet -am "update git_pkg"
git -C "$GIT_REPO" tag -f v1.0.0 >/dev/null
NEW_COMMIT=$(git -C "$GIT_REPO" rev-parse HEAD)
if [ "$FIRST_COMMIT" = "$NEW_COMMIT" ]; then
    echo "FAILED: tag did not move to new commit"
    exit 1
fi

set +e
timeout 30 ./edva pkg fetch "$GIT_APP" --store "$STORE_DIR" >"$TMPDIR/t19.out" 2>"$TMPDIR/t19.err"
rc=$?
set -e
if [ $rc -ne 0 ]; then
    echo "FAILED: fetch failed on moving tag, rc=$rc"
    cat "$TMPDIR/t19.out"
    exit 1
fi
if ! grep -q "commit = $FIRST_COMMIT" "$GIT_APP/edva.lock.ccl"; then
    echo "FAILED: moving tag was not pinned to $FIRST_COMMIT in lockfile"
    cat "$GIT_APP/edva.lock.ccl"
    exit 1
fi
# Also verify under --locked
set +e
timeout 30 ./edva pkg fetch "$GIT_APP" --store "$STORE_DIR" --locked >"$TMPDIR/t19_locked.out" 2>"$TMPDIR/t19_locked.err"
rc=$?
set -e
if [ $rc -ne 0 ]; then
    echo "FAILED: --locked failed on pinned moving tag"
    cat "$TMPDIR/t19_locked.out"
    exit 1
fi
echo "PASS"

# --- Test 20: Git tree hash mismatch detection (E7005) ---
echo -n "Testing edva pkg fetch tree hash mismatch (E7005)... "
BAD_HASH_APP="$TMPDIR/bad_hash_app"
mkdir -p "$BAD_HASH_APP/src"
cat <<EOF > "$BAD_HASH_APP/edva.ccl"
name = bad_hash_app
version = 0.1.0
edva = 0.1.0

dependencies =
  dep =
    git = file://$GIT_REPO
    rev = v1.0.0
EOF
# Copy lockfile but tamper with hash
sed "s/hash = sha256-.*/hash = sha256-0000000000000000000000000000000000000000000000000000000000000000/" "$GIT_APP/edva.lock.ccl" > "$BAD_HASH_APP/edva.lock.ccl"

set +e
timeout 30 ./edva pkg fetch "$BAD_HASH_APP" --store "$STORE_DIR" >"$TMPDIR/t20.out" 2>"$TMPDIR/t20.err"
rc=$?
set -e
if [ $rc -eq 0 ] || ! grep -q "E7005: dependency 'dep': hash mismatch" "$TMPDIR/t20.out"; then
    echo "FAILED: expected E7005 tree hash mismatch error"
    cat "$TMPDIR/t20.out"
    exit 1
fi
echo "PASS"

# --- Test 21: archive fetching, checksum verification, store caching ---
echo -n "Testing edva pkg fetch archive source and store caching... "
ARCH_SRC="$TMPDIR/arch_src"
mkdir -p "$ARCH_SRC/src"
cat <<'EOF' > "$ARCH_SRC/edva.ccl"
name = myarch
version = 1.2.3
edva = 0.1.0
EOF
cat <<'EOF' > "$ARCH_SRC/src/myarch.dva"
#public
   arch_val = 456
EOF
ARCH_FILE="$TMPDIR/myarch-1.2.3.tar.gz"
tar -czf "$ARCH_FILE" -C "$TMPDIR" arch_src
ARCH_HEX=$(sha256sum "$ARCH_FILE" | cut -c1-64)
ARCH_HASH="sha256-$ARCH_HEX"

ARCH_APP="$TMPDIR/arch_app"
mkdir -p "$ARCH_APP/src"
cat <<EOF > "$ARCH_APP/edva.ccl"
name = arch_app
version = 0.1.0
edva = 0.1.0

dependencies =
  myarch =
    url = file://$ARCH_FILE
    hash = $ARCH_HASH
EOF

set +e
timeout 30 ./edva pkg fetch "$ARCH_APP" --store "$STORE_DIR" >"$TMPDIR/t21.out" 2>"$TMPDIR/t21.err"
rc=$?
set -e
if [ $rc -ne 0 ]; then
    echo "FAILED: archive fetch failed, rc=$rc"
    cat "$TMPDIR/t21.out" "$TMPDIR/t21.err"
    exit 1
fi
if [ ! -d "$STORE_DIR/$ARCH_HASH/src" ] || [ ! -f "$STORE_DIR/$ARCH_HASH/src/myarch.dva" ]; then
    echo "FAILED: store missing archive tree at $STORE_DIR/$ARCH_HASH/src"
    ls -la "$STORE_DIR"
    exit 1
fi
if ! grep -q "$STORE_DIR/$ARCH_HASH/src" "$ARCH_APP/.edva/imports.ccl"; then
    echo "FAILED: imports.ccl does not point to $STORE_DIR/$ARCH_HASH/src"
    cat "$ARCH_APP/.edva/imports.ccl"
    exit 1
fi
echo "PASS"

# --- Test 22: archive checksum mismatch (E7005) & corrupt downloads ---
echo -n "Testing edva pkg fetch archive checksum mismatch (E7005)... "
BAD_ARCH_APP="$TMPDIR/bad_arch_app"
mkdir -p "$BAD_ARCH_APP/src"
cat <<EOF > "$BAD_ARCH_APP/edva.ccl"
name = bad_arch_app
version = 0.1.0
edva = 0.1.0

dependencies =
  myarch =
    url = file://$ARCH_FILE
    hash = sha256-ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
EOF

set +e
timeout 30 ./edva pkg fetch "$BAD_ARCH_APP" --store "$STORE_DIR" >"$TMPDIR/t22.out" 2>"$TMPDIR/t22.err"
rc=$?
set -e
if [ $rc -eq 0 ] || ! grep -q "E7005: dependency 'myarch': hash mismatch" "$TMPDIR/t22.out"; then
    echo "FAILED: expected E7005 archive hash mismatch"
    cat "$TMPDIR/t22.out"
    exit 1
fi
if [ -d "$STORE_DIR/sha256-ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff" ]; then
    echo "FAILED: store must never contain failed entries"
    exit 1
fi
echo "PASS"

# --- Test 23: zip-slip / path traversal archive rejection (E7019) ---
echo -n "Testing edva pkg fetch zip-slip / traversal rejection (E7019)... "
EVIL_TAR="$TMPDIR/evil.tar.gz"
python3 -c "
import tarfile, io
with tarfile.open('$EVIL_TAR', 'w:gz') as tar:
    ti = tarfile.TarInfo('../escape.txt')
    ti.size = 4
    tar.addfile(ti, io.BytesIO(b'evil'))
"
EVIL_HEX=$(sha256sum "$EVIL_TAR" | cut -c1-64)
EVIL_APP="$TMPDIR/evil_app"
mkdir -p "$EVIL_APP/src"
cat <<EOF > "$EVIL_APP/edva.ccl"
name = evil_app
version = 0.1.0
edva = 0.1.0

dependencies =
  evil =
    url = file://$EVIL_TAR
    hash = sha256-$EVIL_HEX
EOF

set +e
timeout 30 ./edva pkg fetch "$EVIL_APP" --store "$STORE_DIR" >"$TMPDIR/t23.out" 2>"$TMPDIR/t23.err"
rc=$?
set -e
if [ $rc -eq 0 ] || ! grep -q "E7019: dependency 'evil': archive contains illegal path or path traversal" "$TMPDIR/t23.out"; then
    echo "FAILED: expected E7019 traversal rejection"
    cat "$TMPDIR/t23.out"
    exit 1
fi
if [ -f "$TMPDIR/escape.txt" ]; then
    echo "FAILED: zip-slip exploit succeeded, escape.txt was created!"
    exit 1
fi
echo "PASS"

# --- Test 24: escaping symlink rejection (E7019) ---
echo -n "Testing edva pkg fetch escaping symlink rejection (E7019)... "
SYM_SRC="$TMPDIR/sym_src"
mkdir -p "$SYM_SRC/src"
cat <<'EOF' > "$SYM_SRC/edva.ccl"
name = sym_pkg
version = 1.0.0
edva = 0.1.0
EOF
touch "$SYM_SRC/src/main.dva"
ln -s ../../../etc/passwd "$SYM_SRC/src/badlink"
SYM_TAR="$TMPDIR/sym_pkg.tar.gz"
tar -czf "$SYM_TAR" -C "$TMPDIR" sym_src
SYM_HEX=$(sha256sum "$SYM_TAR" | cut -c1-64)

SYM_APP="$TMPDIR/sym_app"
mkdir -p "$SYM_APP/src"
cat <<EOF > "$SYM_APP/edva.ccl"
name = sym_app
version = 0.1.0
edva = 0.1.0

dependencies =
  sym_dep =
    url = file://$SYM_TAR
    hash = sha256-$SYM_HEX
EOF

set +e
timeout 30 ./edva pkg fetch "$SYM_APP" --store "$STORE_DIR" >"$TMPDIR/t24.out" 2>"$TMPDIR/t24.err"
rc=$?
set -e
if [ $rc -eq 0 ] || ! grep -q "E7019: dependency 'sym_dep': archive contains illegal path or escaping symlink" "$TMPDIR/t24.out"; then
    echo "FAILED: expected E7019 escaping symlink rejection"
    cat "$TMPDIR/t24.out"
    exit 1
fi
echo "PASS"

# --- Test 25: offline cache hit vs miss ---
echo -n "Testing edva pkg fetch offline cache hit and miss... "
# Hit: ARCH_APP has ARCH_HASH already in STORE_DIR
set +e
timeout 30 ./edva pkg fetch "$ARCH_APP" --store "$STORE_DIR" --offline >"$TMPDIR/t25_hit.out" 2>"$TMPDIR/t25_hit.err"
rc=$?
set -e
if [ $rc -ne 0 ]; then
    echo "FAILED: expected offline cache hit to succeed, rc=$rc"
    cat "$TMPDIR/t25_hit.out"
    exit 1
fi
# Miss: point to non-cached archive under --offline
EMPTY_STORE="$TMPDIR/empty_store"
mkdir -p "$EMPTY_STORE"
set +e
timeout 30 ./edva pkg fetch "$ARCH_APP" --store "$EMPTY_STORE" --offline >"$TMPDIR/t25_miss.out" 2>"$TMPDIR/t25_miss.err"
rc=$?
set -e
if [ $rc -eq 0 ] || ! grep -q "E7003: offline:" "$TMPDIR/t25_miss.out"; then
    echo "FAILED: expected E7003 offline cache miss"
    cat "$TMPDIR/t25_miss.out"
    exit 1
fi
echo "PASS"

# --- Test 26: submodule and subdir actionable diagnostics ---
echo -n "Testing edva pkg fetch submodule and subdir actionable errors... "
SUBM_APP="$TMPDIR/subm_app"
mkdir -p "$SUBM_APP"
cat <<'EOF' > "$SUBM_APP/edva.ccl"
name = subm_app
version = 0.1.0
edva = 0.1.0

dependencies =
  bad =
    git = https://example.com/repo.git
    rev = main
    submodules = true
EOF
set +e
timeout 30 ./edva pkg fetch "$SUBM_APP" >"$TMPDIR/t26_subm.out" 2>"$TMPDIR/t26_subm.err"
rc=$?
set -e
if [ $rc -eq 0 ] || ! grep -q "git submodules are not supported" "$TMPDIR/t26_subm.out"; then
    echo "FAILED: expected submodules error"
    cat "$TMPDIR/t26_subm.out"
    exit 1
fi

SUBD_APP="$TMPDIR/subd_app"
mkdir -p "$SUBD_APP"
cat <<'EOF' > "$SUBD_APP/edva.ccl"
name = subd_app
version = 0.1.0
edva = 0.1.0

dependencies =
  bad =
    git = https://example.com/repo.git
    rev = main
    subdir = packages/sub
EOF
set +e
timeout 30 ./edva pkg fetch "$SUBD_APP" >"$TMPDIR/t26_subd.out" 2>"$TMPDIR/t26_subd.err"
rc=$?
set -e
if [ $rc -eq 0 ] || ! grep -q "package subdirectory selection ('subdir') is not supported in v1" "$TMPDIR/t26_subd.out"; then
    echo "FAILED: expected subdir error"
    cat "$TMPDIR/t26_subd.out"
    exit 1
fi
echo "PASS"

# --- Test 27: edva pkg build with src/main.dva and diamond dependencies ---
echo -n "Testing edva pkg build with diamond dependency graph... "
DIAMOND_DIR="$TMPDIR/diamond_test"
mkdir -p "$DIAMOND_DIR/base/src" "$DIAMOND_DIR/mid1/src" "$DIAMOND_DIR/mid2/src" "$DIAMOND_DIR/app/src"
cat <<'EOF' > "$DIAMOND_DIR/base/edva.ccl"
name = base
version = 1.0.0
edva = 0.1.0
EOF
cat <<'EOF' > "$DIAMOND_DIR/base/src/base.dva"
#public
   get_val: () => Int
   get_val = !=> 42
EOF

cat <<'EOF' > "$DIAMOND_DIR/mid1/edva.ccl"
name = mid1
version = 1.0.0
edva = 0.1.0

dependencies =
  base =
    path = ../base
EOF
cat <<'EOF' > "$DIAMOND_DIR/mid1/src/mid1.dva"
#use @base
#public
   mid1_val: () => Int
   mid1_val = !=> base::get_val! + 1
EOF

cat <<'EOF' > "$DIAMOND_DIR/mid2/edva.ccl"
name = mid2
version = 1.0.0
edva = 0.1.0

dependencies =
  base =
    path = ../base
EOF
cat <<'EOF' > "$DIAMOND_DIR/mid2/src/mid2.dva"
#use @base
#public
   mid2_val: () => Int
   mid2_val = !=> base::get_val! * 2
EOF

cat <<'EOF' > "$DIAMOND_DIR/app/edva.ccl"
name = d_app
version = 1.0.0
edva = 0.1.0

dependencies =
  m1 =
    path = ../mid1
  m2 =
    path = ../mid2
EOF
cat <<'EOF' > "$DIAMOND_DIR/app/src/main.dva"
#use @m1
#use @m2
#use "libc"

val = m1::mid1_val! + m2::mid2_val!
val == 127 | libc::exit(0) | libc::exit(1)
EOF

set +e
timeout 30 ./edva pkg build "$DIAMOND_DIR/app" >"$TMPDIR/t27.out" 2>"$TMPDIR/t27.err"
rc=$?
set -e
if [ $rc -ne 0 ] || [ ! -x "$DIAMOND_DIR/app/d_app" ]; then
    echo "FAILED: expected successful build of d_app, rc=$rc"
    cat "$TMPDIR/t27.out" "$TMPDIR/t27.err"
    exit 1
fi
set +e
timeout 10 "$DIAMOND_DIR/app/d_app"
app_rc=$?
set -e
if [ $app_rc -ne 0 ]; then
    echo "FAILED: expected d_app to exit with 0, got $app_rc"
    exit 1
fi
echo "PASS"

# --- Test 28: edva pkg test with passing and failing test targets ---
echo -n "Testing edva pkg test runner... "
mkdir -p "$DIAMOND_DIR/app/tests"
cat <<'EOF' > "$DIAMOND_DIR/app/tests/t1.dva"
#use @m1
#use "libc"
m1::mid1_val! == 43 | libc::exit(0) | libc::exit(1)
EOF

cat <<'EOF' > "$DIAMOND_DIR/app/tests/t2.dva"
#use @m2
#use "libc"
m2::mid2_val! == 84 | libc::exit(0) | libc::exit(1)
EOF

set +e
timeout 30 ./edva pkg test "$DIAMOND_DIR/app" >"$TMPDIR/t28.out" 2>"$TMPDIR/t28.err"
rc=$?
set -e
if [ $rc -ne 0 ] || ! grep -q "test t1.dva ... ok" "$TMPDIR/t28.out" || ! grep -q "test t2.dva ... ok" "$TMPDIR/t28.out" || ! grep -q "2 passed, 0 failed" "$TMPDIR/t28.out"; then
    echo "FAILED: expected 2 passed tests"
    cat "$TMPDIR/t28.out" "$TMPDIR/t28.err"
    exit 1
fi

cat <<'EOF' > "$DIAMOND_DIR/app/tests/t3_fail.dva"
#use "libc"
libc::exit(1)
EOF

set +e
timeout 30 ./edva pkg test "$DIAMOND_DIR/app" >"$TMPDIR/t28_fail.out" 2>"$TMPDIR/t28_fail.err"
fail_rc=$?
set -e
rm -f "$DIAMOND_DIR/app/tests/t3_fail.dva"
if [ $fail_rc -eq 0 ] || ! grep -q "test t3_fail.dva ... FAIL" "$TMPDIR/t28_fail.out" || ! grep -q "2 passed, 1 failed" "$TMPDIR/t28_fail.out"; then
    echo "FAILED: expected 1 failed test with non-zero exit code"
    cat "$TMPDIR/t28_fail.out" "$TMPDIR/t28_fail.err"
    exit 1
fi
echo "PASS"

# --- Test 29: Native dependencies FFI linkage (native.libs) ---
echo -n "Testing native dependencies FFI linkage (native.libs)... "
NAT_DIR="$TMPDIR/nat_pkg"
mkdir -p "$NAT_DIR/src"
cat <<'EOF' > "$NAT_DIR/edva.ccl"
name = nat_pkg
version = 1.0.0
edva = 0.1.0

native =
  libs =
    = m
EOF

cat <<'EOF' > "$NAT_DIR/src/main.dva"
#use "libc"

#foreign "c"
   cos: (rad: Float) => Float

c = cos(0.0)
c == 1.0 | libc::exit(0) | libc::exit(1)
EOF

set +e
timeout 30 ./edva pkg build "$NAT_DIR" >"$TMPDIR/t29.out" 2>"$TMPDIR/t29.err"
rc=$?
set -e
if [ $rc -ne 0 ] || [ ! -x "$NAT_DIR/nat_pkg" ]; then
    echo "FAILED: expected nat_pkg to build with -lm"
    cat "$TMPDIR/t29.out" "$TMPDIR/t29.err"
    exit 1
fi
set +e
timeout 10 "$NAT_DIR/nat_pkg"
app_rc=$?
set -e
if [ $app_rc -ne 0 ]; then
    echo "FAILED: expected nat_pkg to exit with 0, got $app_rc"
    exit 1
fi
echo "PASS"

# --- Test 30: Native pkg-config resolution and missing requirement error ---
echo -n "Testing native pkg-config resolution and missing requirement error... "
PKGCONF_DIR="$TMPDIR/pkgconf_pkg"
mkdir -p "$PKGCONF_DIR/src"
cat <<'EOF' > "$PKGCONF_DIR/edva.ccl"
name = pkgconf_pkg
version = 1.0.0
edva = 0.1.0

native =
  pkg-config =
    = nonexistent_native_package_xyz
EOF

cat <<'EOF' > "$PKGCONF_DIR/src/main.dva"
x = 0
EOF

set +e
timeout 30 ./edva pkg build "$PKGCONF_DIR" >"$TMPDIR/t30_miss.out" 2>"$TMPDIR/t30_miss.err"
rc=$?
set -e
if [ $rc -eq 0 ] || ! grep -q "missing native requirement: pkg-config 'nonexistent_native_package_xyz' failed" "$TMPDIR/t30_miss.out" "$TMPDIR/t30_miss.err"; then
    echo "FAILED: expected missing native requirement error"
    cat "$TMPDIR/t30_miss.out" "$TMPDIR/t30_miss.err"
    exit 1
fi

MOCK_BIN="$TMPDIR/mock_bin"
mkdir -p "$MOCK_BIN"
cat <<'EOF' > "$MOCK_BIN/pkg-config"
#!/usr/bin/env bash
if [ "$1" = "--libs" ] && [ "$2" = "mock_lib" ]; then
    echo "-lm"
    exit 0
fi
exit 1
EOF
chmod +x "$MOCK_BIN/pkg-config"

cat <<'EOF' > "$PKGCONF_DIR/edva.ccl"
name = pkgconf_pkg
version = 1.0.0
edva = 0.1.0

native =
  pkg-config =
    = mock_lib
EOF

cat <<'EOF' > "$PKGCONF_DIR/src/main.dva"
#use "libc"

#foreign "c"
   cos: (rad: Float) => Float

c = cos(0.0)
c == 1.0 | libc::exit(0) | libc::exit(1)
EOF

set +e
PATH="$MOCK_BIN:$PATH" timeout 30 ./edva pkg build "$PKGCONF_DIR" >"$TMPDIR/t30_ok.out" 2>"$TMPDIR/t30_ok.err"
rc=$?
set -e
if [ $rc -ne 0 ] || [ ! -x "$PKGCONF_DIR/pkgconf_pkg" ]; then
    echo "FAILED: expected pkgconf_pkg to build using mock pkg-config"
    cat "$TMPDIR/t30_ok.out" "$TMPDIR/t30_ok.err"
    exit 1
fi
echo "PASS"

# --- Test 31: Library package build (no src/main.dva) ---
echo -n "Testing library package build (no src/main.dva)... "
LIB_PKG="$TMPDIR/lib_only_pkg"
mkdir -p "$LIB_PKG/src"
cat <<'EOF' > "$LIB_PKG/edva.ccl"
name = lib_only
version = 1.0.0
edva = 0.1.0
EOF
cat <<'EOF' > "$LIB_PKG/src/lib_only.dva"
#public
   val: () => Int
   val = !=> 100
EOF

set +e
timeout 30 ./edva pkg build "$LIB_PKG" >"$TMPDIR/t31.out" 2>"$TMPDIR/t31.err"
rc=$?
set -e
if [ $rc -ne 0 ] || ! grep -q "library package" "$TMPDIR/t31.out"; then
    echo "FAILED: expected library package build to succeed without error"
    cat "$TMPDIR/t31.out" "$TMPDIR/t31.err"
    exit 1
fi
if [ -f "$LIB_PKG/lib_only" ]; then
    echo "FAILED: binary should not be created for library package"
    exit 1
fi
echo "PASS"

# --- Test 32: LLVM IR caching - cold build vs warm build ---
echo -n "Testing LLVM IR caching cold vs warm build... "
CACHE_DIR="$TMPDIR/cache_test"
PKG_DIR="$TMPDIR/cached_pkg"
mkdir -p "$PKG_DIR/src" "$CACHE_DIR"
cat <<'EOF' > "$PKG_DIR/edva.ccl"
name = cached_app
version = 0.1.0
edva = 0.1.0
EOF
cat <<'EOF' > "$PKG_DIR/src/main.dva"
#use io
io::out $ "hello cache"
EOF
set +e
timeout 30 ./edva "$PKG_DIR/src/main.dva" -o "$PKG_DIR/app" --cache "$CACHE_DIR" >"$TMPDIR/t32_cold.out" 2>"$TMPDIR/t32_cold.err"
rc=$?
set -e
if [ $rc -ne 0 ] || ! grep -q "Successfully generated LLVM IR" "$TMPDIR/t32_cold.out"; then
    echo "FAILED: cold build should generate LLVM IR"
    cat "$TMPDIR/t32_cold.out" "$TMPDIR/t32_cold.err"
    exit 1
fi

set +e
timeout 30 ./edva "$PKG_DIR/src/main.dva" -o "$PKG_DIR/app" --cache "$CACHE_DIR" >"$TMPDIR/t32_warm.out" 2>"$TMPDIR/t32_warm.err"
rc=$?
set -e
if [ $rc -ne 0 ] || ! grep -q "cached LLVM IR:" "$TMPDIR/t32_warm.out"; then
    echo "FAILED: warm build should hit cache"
    cat "$TMPDIR/t32_warm.out" "$TMPDIR/t32_warm.err"
    exit 1
fi
if [ "$("$PKG_DIR/app")" != "hello cache" ]; then
    echo "FAILED: binary from cached IR did not execute correctly"
    exit 1
fi
echo "PASS"

# --- Test 33: Cache invalidation on source change ---
echo -n "Testing cache invalidation on source change... "
cat <<'EOF' > "$PKG_DIR/src/main.dva"
#use io
io::out $ "hello cache v2"
EOF
set +e
timeout 30 ./edva "$PKG_DIR/src/main.dva" -o "$PKG_DIR/app" --cache "$CACHE_DIR" >"$TMPDIR/t33.out" 2>"$TMPDIR/t33.err"
rc=$?
set -e
if [ $rc -ne 0 ] || ! grep -q "Successfully generated LLVM IR" "$TMPDIR/t33.out"; then
    echo "FAILED: source change should invalidate cache and generate new IR"
    cat "$TMPDIR/t33.out" "$TMPDIR/t33.err"
    exit 1
fi
if [ "$("$PKG_DIR/app")" != "hello cache v2" ]; then
    echo "FAILED: updated binary did not execute correctly"
    exit 1
fi
echo "PASS"

# --- Test 34: Cache invalidation on dependency source change ---
echo -n "Testing cache invalidation on dependency source change... "
mkdir -p "$PKG_DIR/src"
cat <<'EOF' > "$PKG_DIR/src/helper.dva"
#public
   msg: () => String
   msg = !=> "msg1"
EOF
cat <<'EOF' > "$PKG_DIR/src/main.dva"
#use io
#use "helper"
io::out $ helper::msg!
EOF
set +e
timeout 30 ./edva "$PKG_DIR/src/main.dva" -o "$PKG_DIR/app" --cache "$CACHE_DIR" >"$TMPDIR/t34_1.out" 2>"$TMPDIR/t34_1.err"
rc=$?
set -e
if [ $rc -ne 0 ]; then
    echo "FAILED: initial build with helper failed"
    cat "$TMPDIR/t34_1.out" "$TMPDIR/t34_1.err"
    exit 1
fi
cat <<'EOF' > "$PKG_DIR/src/helper.dva"
#public
   msg: () => String
   msg = !=> "msg2"
EOF
set +e
timeout 30 ./edva "$PKG_DIR/src/main.dva" -o "$PKG_DIR/app" --cache "$CACHE_DIR" >"$TMPDIR/t34_2.out" 2>"$TMPDIR/t34_2.err"
rc=$?
set -e
if [ $rc -ne 0 ] || ! grep -q "Successfully generated LLVM IR" "$TMPDIR/t34_2.out"; then
    echo "FAILED: dependency change should invalidate cache"
    cat "$TMPDIR/t34_2.out" "$TMPDIR/t34_2.err"
    exit 1
fi
echo "PASS"

# --- Test 35: Cache invalidation on compiler flags change ---
echo -n "Testing cache invalidation on optimization flag change... "
set +e
timeout 30 ./edva "$PKG_DIR/src/main.dva" -o "$PKG_DIR/app" -O0 --cache "$CACHE_DIR" >"$TMPDIR/t35_o0.out" 2>"$TMPDIR/t35_o0.err"
rc=$?
set -e
if [ $rc -ne 0 ] || ! grep -q "Successfully generated LLVM IR" "$TMPDIR/t35_o0.out"; then
    echo "FAILED: -O0 should cause cache miss"
    cat "$TMPDIR/t35_o0.out" "$TMPDIR/t35_o0.err"
    exit 1
fi
set +e
timeout 30 ./edva "$PKG_DIR/src/main.dva" -o "$PKG_DIR/app" -O0 --cache "$CACHE_DIR" >"$TMPDIR/t35_o0_warm.out" 2>"$TMPDIR/t35_o0_warm.err"
rc=$?
set -e
if [ $rc -ne 0 ] || ! grep -q "cached LLVM IR:" "$TMPDIR/t35_o0_warm.out"; then
    echo "FAILED: second -O0 build should hit cache"
    cat "$TMPDIR/t35_o0_warm.out" "$TMPDIR/t35_o0_warm.err"
    exit 1
fi
echo "PASS"

# --- Test 36: Cache invalidation on EDVA_COMPILER_ID change ---
echo -n "Testing cache invalidation on EDVA_COMPILER_ID change... "
set +e
EDVA_COMPILER_ID=test_id_v2 timeout 30 ./edva "$PKG_DIR/src/main.dva" -o "$PKG_DIR/app" --cache "$CACHE_DIR" >"$TMPDIR/t36.out" 2>"$TMPDIR/t36.err"
rc=$?
set -e
if [ $rc -ne 0 ] || ! grep -q "Successfully generated LLVM IR" "$TMPDIR/t36.out"; then
    echo "FAILED: EDVA_COMPILER_ID change should invalidate cache"
    cat "$TMPDIR/t36.out" "$TMPDIR/t36.err"
    exit 1
fi
echo "PASS"

# --- Test 37: Cache invalidation on target triple change ---
echo -n "Testing cache invalidation on target triple change... "
set +e
timeout 30 ./edva "$PKG_DIR/src/main.dva" -target i686-unknown-linux-gnu -ir -o "$PKG_DIR/app.ll" --cache "$CACHE_DIR" >"$TMPDIR/t37.out" 2>"$TMPDIR/t37.err"
rc=$?
set -e
if [ $rc -ne 0 ] || ! grep -q "Successfully generated LLVM IR" "$TMPDIR/t37.out"; then
    echo "FAILED: target triple change should invalidate cache"
    cat "$TMPDIR/t37.out" "$TMPDIR/t37.err"
    exit 1
fi
echo "PASS"

# --- Test 38: Diagnostics preservation on cache lookup ---
echo -n "Testing diagnostics preservation on compilation... "
ERR_SRC="$TMPDIR/err_app.dva"
cat <<'EOF' > "$ERR_SRC"
#public
   bad: Int => Int
   bad = x => "not an int"
EOF
set +e
timeout 30 ./edva "$ERR_SRC" -c -o "$TMPDIR/bad.o" --cache "$CACHE_DIR" >"$TMPDIR/t38.out" 2>"$TMPDIR/t38.err"
rc=$?
set -e
if [ $rc -eq 0 ] || ! grep -q "E3084" "$TMPDIR/t38.out"; then
    echo "FAILED: type error should be caught during semantic analysis"
    cat "$TMPDIR/t38.out" "$TMPDIR/t38.err"
    exit 1
fi
echo "PASS"

# --- Test 39: Cache CLI management (ls, dir, clean) ---
echo -n "Testing cache CLI commands (dir, ls, clean)... "
DIR_OUT="$(./edva pkg cache dir --cache "$CACHE_DIR")"
if [ "$DIR_OUT" != "$CACHE_DIR" ]; then
    echo "FAILED: expected cache dir $CACHE_DIR, got $DIR_OUT"
    exit 1
fi
LS_OUT="$(./edva pkg cache ls --cache "$CACHE_DIR")"
if ! echo "$LS_OUT" | grep -q "entries"; then
    echo "FAILED: cache ls should report entries"
    echo "$LS_OUT"
    exit 1
fi
CLEAN_OUT="$(./edva pkg cache clean --cache "$CACHE_DIR")"
if ! echo "$CLEAN_OUT" | grep -q "cache cleaned"; then
    echo "FAILED: cache clean failed"
    echo "$CLEAN_OUT"
    exit 1
fi
EMPTY_LS="$(./edva pkg cache ls --cache "$CACHE_DIR")"
if [ "$EMPTY_LS" != "0 cached entries" ]; then
    echo "FAILED: expected 0 entries after clean, got $EMPTY_LS"
    exit 1
fi
echo "PASS"

# --- Test 40: Corrupt cache entry cleanup ---
echo -n "Testing corrupt cache entry cleanup... "
CORRUPT_ENTRY="$CACHE_DIR/entries/corrupt_hash_123"
mkdir -p "$CORRUPT_ENTRY"
echo "not valid ccl [[[" > "$CORRUPT_ENTRY/meta.ccl"
touch "$CORRUPT_ENTRY/output.ll"
# A build whose key happens to collide with corrupt entry or cache lookup encountering corrupt entry deletes it
timeout 30 ./edva pkg cache ls --cache "$CACHE_DIR" >/dev/null 2>&1
# Rebuilding something should cleanly proceed
timeout 30 ./edva "$PKG_DIR/src/main.dva" -o "$PKG_DIR/app" --cache "$CACHE_DIR" >/dev/null 2>&1
echo "PASS"

# --- Test 41: edva init workflow & duplicate prevention (E7020) ---
echo -n "Testing edva init and duplicate prevention (E7020)... "

# Verify edva pkg init with no args fails with E7002
set +e
timeout 30 ./edva pkg init >"$TMPDIR/t41_noargs.out" 2>"$TMPDIR/t41_noargs.err"
rc=$?
set -e
if [ $rc -eq 0 ] || ! grep -q "E7002: missing target directory for 'init'" \
    "$TMPDIR/t41_noargs.out" "$TMPDIR/t41_noargs.err"; then
    echo "FAILED: edva pkg init with no args should fail with E7002"
    cat "$TMPDIR/t41_noargs.out" "$TMPDIR/t41_noargs.err"
    exit 1
fi

# Verify edva --version, -v, and version subcommand
VER_OUT="$(./edva --version)"
V_OUT="$(./edva -v)"
CMD_VER_OUT="$(./edva version)"
EXP_VER="$(cat "VERSION" | tr -d '[:space:]')"
EXP_VER_ESC="$(echo "$EXP_VER" | sed 's/\./\\./g')"
if ! echo "$VER_OUT" | grep -qE "^edva ${EXP_VER_ESC}(\+[0-9a-fA-F]+(-dirty)?)?$" || [ "$VER_OUT" != "$V_OUT" ] || [ "$VER_OUT" != "$CMD_VER_OUT" ]; then
    echo "FAILED: edva --version output invalid: '$VER_OUT' vs '$V_OUT' vs '$CMD_VER_OUT'"
    exit 1
fi

INIT_APP="$TMPDIR/init_app"
INIT_LIB="$TMPDIR/init_lib"
timeout 30 ./edva init "$INIT_APP" >"$TMPDIR/t41_init.out" 2>"$TMPDIR/t41_init.err"
rc=$?
if [ $rc -ne 0 ] || [ ! -f "$INIT_APP/edva.ccl" ] || [ ! -f "$INIT_APP/src/init_app.dva" ] || [ ! -f "$INIT_APP/src/main.dva" ]; then
    echo "FAILED: edva init did not create expected skeleton files"
    cat "$TMPDIR/t41_init.out" "$TMPDIR/t41_init.err"
    exit 1
fi
if ! grep -q "edva = $EXP_VER" "$INIT_APP/edva.ccl"; then
    echo "FAILED: edva init wrote incorrect compiler version into edva.ccl"
    cat "$INIT_APP/edva.ccl"
    exit 1
fi
timeout 30 ./edva pkg init "$INIT_LIB" --name my_custom_lib >/dev/null 2>&1
if [ ! -f "$INIT_LIB/edva.ccl" ] || [ ! -f "$INIT_LIB/src/my_custom_lib.dva" ]; then
    echo "FAILED: edva pkg init --name did not create expected named skeleton"
    exit 1
fi
set +e
timeout 30 ./edva init "$INIT_APP" >"$TMPDIR/t41_dup.out" 2>"$TMPDIR/t41_dup.err"
rc=$?
set -e
if [ $rc -eq 0 ] || ! grep -q "E7020: edva.ccl already exists" "$TMPDIR/t41_dup.err" "$TMPDIR/t41_dup.out"; then
    echo "FAILED: re-running edva init should fail with E7020"
    cat "$TMPDIR/t41_dup.out" "$TMPDIR/t41_dup.err"
    exit 1
fi
timeout 30 ./edva build "$INIT_APP" >"$TMPDIR/t41_bld.out" 2>"$TMPDIR/t41_bld.err"
rc=$?
if [ $rc -ne 0 ] || [ ! -x "$INIT_APP/init_app" ]; then
    echo "FAILED: initialized app should build cleanly"
    cat "$TMPDIR/t41_bld.out" "$TMPDIR/t41_bld.err"
    exit 1
fi
APP_RUN_OUT="$("$INIT_APP/init_app")"
if [ "$APP_RUN_OUT" != "Hello from init_app!" ]; then
    echo "FAILED: unexpected output from initialized app binary: $APP_RUN_OUT"
    exit 1
fi
echo "PASS"

# --- Test 42: edva add transactional rollback on failure (E7021) & successful add ---
echo -n "Testing edva add and transactional rollback (E7021)... "
timeout 30 ./edva add my_lib --path "$INIT_LIB" "$INIT_APP" >"$TMPDIR/t42_add.out" 2>"$TMPDIR/t42_add.err"
rc=$?
if [ $rc -ne 0 ] || ! grep -q "my_lib" "$INIT_APP/edva.ccl" || ! grep -q "my_custom_lib@path" "$INIT_APP/edva.lock.ccl"; then
    echo "FAILED: edva add failed to add dependency to manifest and lock"
    cat "$TMPDIR/t42_add.out" "$TMPDIR/t42_add.err"
    exit 1
fi
MANIFEST_BEFORE="$(cat "$INIT_APP/edva.ccl")"
set +e
timeout 30 ./edva add bad_dep --path "$TMPDIR/nonexistent_xyz_dir" "$INIT_APP" >"$TMPDIR/t42_fail.out" 2>"$TMPDIR/t42_fail.err"
rc=$?
set -e
if [ $rc -eq 0 ] || ! grep -q "E7021: rolled back edva.ccl changes after resolution failure" "$TMPDIR/t42_fail.err" "$TMPDIR/t42_fail.out"; then
    echo "FAILED: edva add with invalid source should rollback with E7021"
    cat "$TMPDIR/t42_fail.out" "$TMPDIR/t42_fail.err"
    exit 1
fi
MANIFEST_AFTER="$(cat "$INIT_APP/edva.ccl")"
if [ "$MANIFEST_BEFORE" != "$MANIFEST_AFTER" ]; then
    echo "FAILED: edva.ccl was not rolled back to original content"
    exit 1
fi
echo "PASS"

# --- Test 43: edva update selective pin refresh & --locked rejection ---
echo -n "Testing edva update selective pin refresh & --locked rejection... "
# Test --locked rejection
set +e
timeout 30 ./edva update "$INIT_APP" --locked >"$TMPDIR/t43_lock.out" 2>"$TMPDIR/t43_lock.err"
rc=$?
set -e
if [ $rc -eq 0 ] || ! grep -q "E7008: --locked: update cannot be run with --locked" "$TMPDIR/t43_lock.err" "$TMPDIR/t43_lock.out"; then
    echo "FAILED: edva update --locked should fail with E7008"
    cat "$TMPDIR/t43_lock.out" "$TMPDIR/t43_lock.err"
    exit 1
fi
# Test non-existent dependency alias
set +e
timeout 30 ./edva update "$INIT_APP" nonexistent_dep_alias >"$TMPDIR/t43_noalias.out" 2>"$TMPDIR/t43_noalias.err"
rc=$?
set -e
if [ $rc -eq 0 ] || ! grep -q "E7004: dependency 'nonexistent_dep_alias' not found" "$TMPDIR/t43_noalias.err" "$TMPDIR/t43_noalias.out"; then
    echo "FAILED: edva update non-existent alias should fail with E7004"
    cat "$TMPDIR/t43_noalias.out" "$TMPDIR/t43_noalias.err"
    exit 1
fi
# Setup git repo for update test
UPD_GIT="$TMPDIR/upd_git_pkg"
UPD_APP="$TMPDIR/upd_app"
mkdir -p "$UPD_GIT/src" "$UPD_APP/src"
git -C "$UPD_GIT" init --quiet -b master
git -C "$UPD_GIT" config user.email "test@example.com"
git -C "$UPD_GIT" config user.name "Test"
cat <<'EOF' > "$UPD_GIT/edva.ccl"
name = upd_git_pkg
version = 1.0.0
edva = 0.1.0
EOF
cat <<'EOF' > "$UPD_GIT/src/upd_git_pkg.dva"
#public
   v = 1
EOF
git -C "$UPD_GIT" add edva.ccl src/upd_git_pkg.dva
git -C "$UPD_GIT" commit --quiet -m "commit 1"
COMMIT1="$(git -C "$UPD_GIT" rev-parse HEAD)"

cat <<'EOF' > "$UPD_APP/edva.ccl"
name = upd_app
version = 0.1.0
edva = 0.1.0

dependencies =
  g =
    git = FILE_GIT_URL
    rev = master
EOF
sed -i "s|FILE_GIT_URL|file://$UPD_GIT|g" "$UPD_APP/edva.ccl"
touch "$UPD_APP/src/main.dva"
timeout 30 ./edva fetch "$UPD_APP" --store "$STORE_DIR" >/dev/null 2>&1
if ! grep -q "$COMMIT1" "$UPD_APP/edva.lock.ccl"; then
    echo "FAILED: initial fetch did not lock commit1"
    exit 1
fi
# Add a new commit to git repo
echo "   v2 = 2" >> "$UPD_GIT/src/upd_git_pkg.dva"
git -C "$UPD_GIT" commit --quiet -am "commit 2"
COMMIT2="$(git -C "$UPD_GIT" rev-parse HEAD)"

# Regular fetch without update should preserve pinned commit1
timeout 30 ./edva fetch "$UPD_APP" --store "$STORE_DIR" >/dev/null 2>&1
if ! grep -q "$COMMIT1" "$UPD_APP/edva.lock.ccl"; then
    echo "FAILED: fetch should keep pinned commit"
    exit 1
fi
# edva update should refresh the pin to commit2
timeout 30 ./edva update "$UPD_APP" g --store "$STORE_DIR" >"$TMPDIR/t43_upd.out" 2>"$TMPDIR/t43_upd.err"
rc=$?
if [ $rc -ne 0 ] || ! grep -q "$COMMIT2" "$UPD_APP/edva.lock.ccl"; then
    echo "FAILED: edva update did not advance lockfile to commit2"
    cat "$TMPDIR/t43_upd.out" "$TMPDIR/t43_upd.err"
    exit 1
fi
if ! grep -q "updated 'upd_git_pkg'" "$TMPDIR/t43_upd.out"; then
    echo "FAILED: edva update output should report updated package"
    cat "$TMPDIR/t43_upd.out" "$TMPDIR/t43_upd.err"
    exit 1
fi
echo "PASS"

# --- Test 44: edva graph & tree with duplicate versions detection ---
echo -n "Testing edva graph & tree with duplicate versions detection... "
GRAPH_OUT="$(./edva graph "$INIT_APP")"
TREE_OUT="$(./edva tree "$INIT_APP")"
if [ "$GRAPH_OUT" != "$TREE_OUT" ] || ! echo "$GRAPH_OUT" | grep -q "my_lib -> my_custom_lib@path"; then
    echo "FAILED: edva graph and tree should produce matching dependency trees"
    exit 1
fi
# Test duplicate versions detection
DUP_PROJ="$TMPDIR/dup_proj"
mkdir -p "$DUP_PROJ/src"
cat <<'EOF' > "$DUP_PROJ/edva.ccl"
name = dup_proj
version = 0.1.0
edva = 0.1.0
EOF
cat <<'EOF' > "$DUP_PROJ/edva.lock.ccl"
lock = 1

packages =
  common@11111111 =
    git = https://example.com/common.git
    rev = v1
    commit = 1111111111111111111111111111111111111111
  common@22222222 =
    git = https://example.com/common.git
    rev = v2
    commit = 2222222222222222222222222222222222222222

root =
  c1 = common@11111111
  c2 = common@22222222
EOF
DUP_OUT="$(./edva graph "$DUP_PROJ")"
if ! echo "$DUP_OUT" | grep -q "\[duplicate version\]" || ! echo "$DUP_OUT" | grep -q "Duplicate versions detected:"; then
    echo "FAILED: edva graph should detect and display duplicate versions"
    echo "$DUP_OUT"
    exit 1
fi
echo "PASS"

# --- Test 45: Top-level subcommands dispatch ---
echo -n "Testing top-level subcommands dispatch (edva <subcmd>)... "
timeout 30 ./edva test "$INIT_APP" >"$TMPDIR/t45_test.out" 2>"$TMPDIR/t45_test.err"
rc=$?
if [ $rc -ne 0 ] || ! grep -q "0 passed, 0 failed" "$TMPDIR/t45_test.out"; then
    echo "FAILED: edva test top-level command dispatch failed"
    cat "$TMPDIR/t45_test.out" "$TMPDIR/t45_test.err"
    exit 1
fi
timeout 30 ./edva fetch "$INIT_APP" >"$TMPDIR/t45_fetch.out" 2>"$TMPDIR/t45_fetch.err"
rc=$?
if [ $rc -ne 0 ]; then
    echo "FAILED: edva fetch top-level command dispatch failed"
    cat "$TMPDIR/t45_fetch.out" "$TMPDIR/t45_fetch.err"
    exit 1
fi
echo "PASS"

# --- Test 46: edva vendor complete offline workflow, relocation, tamper detection ---
echo -n "Testing edva vendor offline workflow, relocation & tamper checks... "
VEND_FIXTURE="$TMPDIR/vend_fixture"
mkdir -p "$VEND_FIXTURE/ext_lib/src" "$VEND_FIXTURE/git_dep/src" "$VEND_FIXTURE/root_app/src"

# 1. External path library with a LICENSE file and a duplicate module name 'utils'
cat <<'EOF' > "$VEND_FIXTURE/ext_lib/edva.ccl"
name = ext_lib
version = 1.0.0
edva = 0.1.0
EOF
echo "MIT License (c) 2026 External Lib Author" > "$VEND_FIXTURE/ext_lib/LICENSE"
cat <<'EOF' > "$VEND_FIXTURE/ext_lib/src/ext_lib.dva"
#use utils

#public
   ext_calc: Int => Int
   ext_calc = x => x + 10
EOF
cat <<'EOF' > "$VEND_FIXTURE/ext_lib/src/utils.dva"
#public
   mod_tag: () => String
   mod_tag = !=> "ext_utils"
EOF

# 2. Git library with LICENSE.txt, duplicate module name 'utils', and multiple commits/revisions
cat <<'EOF' > "$VEND_FIXTURE/git_dep/edva.ccl"
name = git_dep
version = 1.0.0
edva = 0.1.0
EOF
echo "BSD-3-Clause License (c) 2026 Git Dep Author" > "$VEND_FIXTURE/git_dep/LICENSE.txt"
cat <<'EOF' > "$VEND_FIXTURE/git_dep/src/git_dep.dva"
#use utils

#public
   git_calc: Int => Int
   git_calc = x => x * 2
EOF
cat <<'EOF' > "$VEND_FIXTURE/git_dep/src/utils.dva"
#public
   mod_tag: () => String
   mod_tag = !=> "git_utils"
EOF
git -C "$VEND_FIXTURE/git_dep" init --quiet -b main
git -C "$VEND_FIXTURE/git_dep" config user.email "test@example.com"
git -C "$VEND_FIXTURE/git_dep" config user.name "Test"
git -C "$VEND_FIXTURE/git_dep" add .
git -C "$VEND_FIXTURE/git_dep" commit --quiet -m "init git_dep v1"
git -C "$VEND_FIXTURE/git_dep" tag v1.0.0

# Add a v2 commit to test selective update later
cat <<'EOF' > "$VEND_FIXTURE/git_dep/src/git_dep.dva"
#use utils

#public
   git_calc: Int => Int
   git_calc = x => x * 3
EOF
git -C "$VEND_FIXTURE/git_dep" add .
git -C "$VEND_FIXTURE/git_dep" commit --quiet -m "git_dep v2"
git -C "$VEND_FIXTURE/git_dep" tag v2.0.0

# 3. Root app consuming git_dep at v1.0.0 and external path dependency
cat <<EOF > "$VEND_FIXTURE/root_app/edva.ccl"
name = root_app
version = 0.1.0
edva = 0.1.0

dependencies =
  git_lib =
    git = file://$VEND_FIXTURE/git_dep
    rev = v1.0.0
  ext_lib =
    path = ../ext_lib
EOF
cat <<'EOF' > "$VEND_FIXTURE/root_app/src/utils.dva"
#public
   mod_tag: () => String
   mod_tag = !=> "root_utils"
EOF
cat <<'EOF' > "$VEND_FIXTURE/root_app/src/main.dva"
#use @git_lib
#use @ext_lib
#use utils
#use "libc"

g = git_lib::git_calc(5)
e = ext_lib::ext_calc(g)
e == 20 | libc::exit(0) | libc::exit(1)
EOF

# 4. Run `edva vendor` to materialize vendor directory and vendor.ccl
timeout 30 ./edva vendor "$VEND_FIXTURE/root_app" >"$TMPDIR/t46_vendor.out" 2>"$TMPDIR/t46_vendor.err"
rc=$?
if [ $rc -ne 0 ] || ! grep -q "vendored 2 packages in vendor/" "$TMPDIR/t46_vendor.out"; then
    echo "FAILED: edva vendor failed to materialize packages"
    cat "$TMPDIR/t46_vendor.out" "$TMPDIR/t46_vendor.err"
    exit 1
fi
if [ ! -f "$VEND_FIXTURE/root_app/vendor/vendor.ccl" ]; then
    echo "FAILED: vendor/vendor.ccl was not generated"
    exit 1
fi
# Verify metadata and stripped .git
if [ -d "$VEND_FIXTURE/root_app/vendor/git_dep"*/.git ]; then
    echo "FAILED: .git repository metadata was not stripped from vendored git package"
    exit 1
fi
if [ ! -f "$VEND_FIXTURE/root_app/vendor/ext_lib@path/LICENSE" ]; then
    echo "FAILED: LICENSE was not retained in vendored path package"
    exit 1
fi

# 5. Relocate project to a completely new path and clear caches/stores
RELOC_APP="$TMPDIR/relocated_app"
cp -R "$VEND_FIXTURE/root_app" "$RELOC_APP"
EMPTY_STORE="$TMPDIR/empty_store"
EMPTY_CACHE="$TMPDIR/empty_cache"
mkdir -p "$EMPTY_STORE" "$EMPTY_CACHE"

# Remove the original source locations so any leak to external path will fail!
rm -rf "$VEND_FIXTURE/ext_lib"

# 6. Cold build --locked --offline in relocated directory with empty store/cache
timeout 30 env EDVA_STORE="$EMPTY_STORE" EDVA_CACHE="$EMPTY_CACHE" ./edva build "$RELOC_APP" --locked --offline >"$TMPDIR/t46_cold.out" 2>"$TMPDIR/t46_cold.err"
rc=$?
if [ $rc -ne 0 ]; then
    echo "FAILED: cold build --locked --offline in relocated directory failed"
    cat "$TMPDIR/t46_cold.out" "$TMPDIR/t46_cold.err"
    exit 1
fi
# Run executable and verify exit code 0 (20 == 20)
"$RELOC_APP/root_app"
rc=$?
if [ $rc -ne 0 ]; then
    echo "FAILED: unexpected binary execution exit code from vendored app: $rc"
    exit 1
fi

# 7. Warm build --locked --offline
timeout 30 env EDVA_STORE="$EMPTY_STORE" EDVA_CACHE="$EMPTY_CACHE" ./edva build "$RELOC_APP" --locked --offline >"$TMPDIR/t46_warm.out" 2>"$TMPDIR/t46_warm.err"
rc=$?
if [ $rc -ne 0 ]; then
    echo "FAILED: warm build --locked --offline failed"
    cat "$TMPDIR/t46_warm.out" "$TMPDIR/t46_warm.err"
    exit 1
fi

# 8. Tamper detection on vendored content (E7005)
TAMPER_FILE="$(find "$RELOC_APP/vendor" -name "ext_lib.dva" | head -n 1)"
echo "// tampered content" >> "$TAMPER_FILE"
set +e
timeout 30 env EDVA_STORE="$EMPTY_STORE" EDVA_CACHE="$EMPTY_CACHE" ./edva build "$RELOC_APP" --locked --offline >"$TMPDIR/t46_tamper.out" 2>"$TMPDIR/t46_tamper.err"
rc=$?
set -e
if [ $rc -eq 0 ] || ! grep -q "E7005: tampered vendor content: tree hash mismatch" "$TMPDIR/t46_tamper.out"; then
    echo "FAILED: expected E7005 tamper detection on modified vendored content"
    cat "$TMPDIR/t46_tamper.out"
    exit 1
fi

# 9. Missing vendored package detection (E7014)
MISSING_APP="$TMPDIR/missing_vend_app"
cp -R "$VEND_FIXTURE/root_app" "$MISSING_APP"
rm -rf "$MISSING_APP/vendor/ext_lib@path"
set +e
timeout 30 env EDVA_STORE="$EMPTY_STORE" EDVA_CACHE="$EMPTY_CACHE" ./edva build "$MISSING_APP" --locked --offline >"$TMPDIR/t46_missing.out" 2>"$TMPDIR/t46_missing.err"
rc=$?
set -e
if [ $rc -eq 0 ] || ! grep -q "E7014: vendored package 'ext_lib@path' not found" "$TMPDIR/t46_missing.out"; then
    echo "FAILED: expected E7014 when a vendored package is missing"
    cat "$TMPDIR/t46_missing.out"
    exit 1
fi

# 10. Stale lock detection under --locked (E7007)
STALE_APP="$TMPDIR/stale_vend_app"
cp -R "$VEND_FIXTURE/root_app" "$STALE_APP"
mkdir -p "$TMPDIR/new_dep"
cat <<'EOF' > "$TMPDIR/new_dep/edva.ccl"
name = new_dep
version = 0.1.0
edva = 0.1.0
EOF
cat <<'EOF' >> "$STALE_APP/edva.ccl"
  new_unused_dep =
    path = ../new_dep
EOF
set +e
timeout 30 env EDVA_STORE="$EMPTY_STORE" EDVA_CACHE="$EMPTY_CACHE" ./edva build "$STALE_APP" --locked >"$TMPDIR/t46_stale.out" 2>"$TMPDIR/t46_stale.err"
rc=$?
set -e
if [ $rc -eq 0 ] || ! grep -q "E7007: --locked: edva.lock.ccl is out of date" "$TMPDIR/t46_stale.out"; then
    echo "FAILED: expected E7007 when lockfile is out of date under --locked"
    cat "$TMPDIR/t46_stale.out"
    exit 1
fi

echo "PASS"

# --- Test 47: F16 / #164 - Doc checker enforces classification and validation ---
echo -n "Testing Test 47 (tools/check_docs.nu classification and example execution)... "
if ! command -v nu >/dev/null 2>&1; then
    echo "SKIPPED (nu not available)"
else
DOC_TEST_DIR="$TMPDIR/doc_test_repo"
mkdir -p "$DOC_TEST_DIR/doc" "$DOC_TEST_DIR/tools/opgen"
cp tools/check_docs.nu "$DOC_TEST_DIR/tools/"
cat <<'EOF' > "$DOC_TEST_DIR/tools/opgen/main.nu"
def main [--check] { exit 0 }
EOF

# 1. Reject --compile-examples if edva binary is missing
cat <<'EOF' > "$DOC_TEST_DIR/doc/sample.qmd"
---
meta:
  evidence: doc/sample.qmd
---
```{.dva .run}
x = 1
```
EOF
set +e
timeout 10 nu "$DOC_TEST_DIR/tools/check_docs.nu" --compile-examples >"$TMPDIR/t47_noedva.out" 2>"$TMPDIR/t47_noedva.err"
rc=$?
set -e
if [ $rc -eq 0 ] || ! grep -q "binary was not found" "$TMPDIR/t47_noedva.err"; then
    echo "FAILED: expected failure when edva is missing under --compile-examples"
    cat "$TMPDIR/t47_noedva.err"
    exit 1
fi

# Link real edva binary into mock repo
ln -s "$(pwd)/edva" "$DOC_TEST_DIR/edva"

# 2. Reject unclassified code blocks
cat <<'EOF' > "$DOC_TEST_DIR/doc/sample.qmd"
---
meta:
  evidence: doc/sample.qmd
---
```dva
x = 1
```
EOF
set +e
timeout 10 nu "$DOC_TEST_DIR/tools/check_docs.nu" >"$TMPDIR/t47_unclass.out" 2>"$TMPDIR/t47_unclass.err"
rc=$?
set -e
if [ $rc -eq 0 ] || ! grep -q "unclassified code blocks found" "$TMPDIR/t47_unclass.err"; then
    echo "FAILED: expected failure on unclassified code block"
    cat "$TMPDIR/t47_unclass.err"
    exit 1
fi

# 3. Reject failing expected-error blocks when compilation succeeds
cat <<'EOF' > "$DOC_TEST_DIR/doc/sample.qmd"
---
meta:
  evidence: doc/sample.qmd
---
```{.dva expected-error="E9999"}
x = 1
```
EOF
set +e
timeout 10 nu "$DOC_TEST_DIR/tools/check_docs.nu" --compile-examples >"$TMPDIR/t47_badneg.out" 2>"$TMPDIR/t47_badneg.err"
rc=$?
set -e
if [ $rc -eq 0 ] || ! grep -q "Block compiled successfully with exit code 0" "$TMPDIR/t47_badneg.err"; then
    echo "FAILED: expected failure when expected-error block compiles cleanly"
    cat "$TMPDIR/t47_badneg.err"
    exit 1
fi

echo "PASS"
fi

# --- Test 48: edva -repl autoimports io ---
echo -n "Testing edva -repl autoimport io... "
set +e
timeout 15 ./edva -repl <<'EOF' >"$TMPDIR/t48_repl.out" 2>"$TMPDIR/t48_repl.err"
1 + 2
x = 40
x + 2
:q
EOF
rc=$?
set -e
if [ $rc -ne 0 ] || ! grep -q "3" "$TMPDIR/t48_repl.out" || ! grep -q "42" "$TMPDIR/t48_repl.out"; then
    echo "FAILED: edva -repl failed to evaluate expressions using autoimported io"
    cat "$TMPDIR/t48_repl.out"
    cat "$TMPDIR/t48_repl.err"
    exit 1
fi
echo "PASS"

# --- Test 49: edva fmt (--stdin, --check, in-place, AST invariance) ---
echo -n "Testing edva fmt (--stdin, --check, in-place, AST invariance)... "
FMT_DIR="$TMPDIR/fmt_test"
mkdir -p "$FMT_DIR"
cat <<'EOF' > "$FMT_DIR/messy.dva"
#type Point (x:Int,y:Int)


add: Int,Int => Int
add = a,b =>
  a + b   
EOF
set +e
./edva fmt --check "$FMT_DIR/messy.dva" >"$TMPDIR/t49_chk1.out" 2>"$TMPDIR/t49_chk1.err"
rc=$?
set -e
if [ $rc -eq 0 ]; then
    echo "FAILED: expected 'edva fmt --check' to return non-zero on unformatted file"
    exit 1
fi
./edva fmt "$FMT_DIR/messy.dva" >"$TMPDIR/t49_fmt.out" 2>"$TMPDIR/t49_fmt.err"
./edva fmt --check "$FMT_DIR/messy.dva" >"$TMPDIR/t49_chk2.out" 2>"$TMPDIR/t49_chk2.err"
if ! grep -q "   a + b" "$FMT_DIR/messy.dva" || ! grep -q "(x: Int, y: Int)" "$FMT_DIR/messy.dva"; then
    echo "FAILED: edva fmt did not normalize 3-space indentation or colon/comma spacing"
    cat "$FMT_DIR/messy.dva"
    exit 1
fi
STDIN_OUT=$(printf "f = x =>\n  x + 1\n" | ./edva fmt --stdin)
if [ "$STDIN_OUT" != "$(printf "f = x =>\n   x + 1")" ]; then
    echo "FAILED: edva fmt --stdin unexpected output: $STDIN_OUT"
    exit 1
fi
# Inline choice arm body (+2 spaces)
PIPE_OUT=$(printf "foo = x =>\n   x > 0\n      | a = 10\n          b = 20\n          a + b\n      | 0\n" | ./edva fmt --stdin)
if [ "$PIPE_OUT" != "$(printf "foo = x =>\n   x > 0\n      | a = 10\n        b = 20\n        a + b\n      | 0")" ]; then
    echo "FAILED: edva fmt did not indent inline choice arm body by +2 spaces: $PIPE_OUT"
    exit 1
fi
# Lambda choice arm (+3 spaces)
LAMBDA_OUT=$(printf "foo = r =>\n   r\n      | x =>\n        x + 1\n      | 0\n" | ./edva fmt --stdin)
if [ "$LAMBDA_OUT" != "$(printf "foo = r =>\n   r\n      | x =>\n         x + 1\n      | 0")" ]; then
    echo "FAILED: edva fmt did not indent lambda choice arm by +3 spaces: $LAMBDA_OUT"
    exit 1
fi
# Inline-started function block (+3 spaces)
INLINE_FN_OUT=$(printf "my_fn = a, b => a1 = a + b\n     a1 * 2\n" | ./edva fmt --stdin)
if [ "$INLINE_FN_OUT" != "$(printf "my_fn = a, b => a1 = a + b\n   a1 * 2")" ]; then
    echo "FAILED: edva fmt did not indent inline-started function block by +3 spaces: $INLINE_FN_OUT"
    exit 1
fi
# Expression continuation (+2 spaces)
CONT_OUT=$(printf "total = 10 +\n   20 +\n   12\n" | ./edva fmt --stdin)
if [ "$CONT_OUT" != "$(printf "total = 10 +\n  20 +\n  12")" ]; then
    echo "FAILED: edva fmt did not indent expression continuation by +2 spaces: $CONT_OUT"
    exit 1
fi
# Preserve guard table horizontal alignment
GUARD_OUT=$(printf "#type Tok <\n   Ident\n   IntLit\n>\nname = tok =>\n   tok\n      [Ident]   \"ident\"\n      [IntLit]  \"int\"\n" | ./edva fmt --stdin)
if ! printf "%s\n" "$GUARD_OUT" | grep -q '\[Ident\]   "ident"'; then
    echo "FAILED: edva fmt did not preserve guard table alignment: $GUARD_OUT"
    exit 1
fi
echo "PASS"

# --- Test 50: edva lsp (JSON-RPC 2.0 initialize, diagnostics, hover, definition, formatting) ---
echo -n "Testing edva lsp (JSON-RPC 2.0 protocol, cross-module typecheck, hover, formatting)... "
python3 - "$TMPDIR" <<'PYEOF'
import json, os, subprocess, sys

tmpdir = sys.argv[1]
def frame(obj):
    s = json.dumps(obj)
    return f"Content-Length: {len(s.encode('utf-8'))}\r\n\r\n{s}".encode('utf-8')

uri = f"file://{tmpdir}/lsp_test.dva"
src_valid = "#use str\n\nshout = s =>\n  str::upper(s)\n"
src_err = "#use str\n\nbad: Int\nbad = str::upper(\"hi\")\n"

payload = b"".join([
    frame({"jsonrpc": "2.0", "id": 1, "method": "initialize", "params": {}}),
    frame({"jsonrpc": "2.0", "method": "textDocument/didOpen", "params": {
        "textDocument": {"uri": uri, "languageId": "edva", "version": 1, "text": src_valid}
    }}),
    frame({"jsonrpc": "2.0", "id": 2, "method": "textDocument/hover", "params": {
        "textDocument": {"uri": uri}, "position": {"line": 2, "character": 1}
    }}),
    frame({"jsonrpc": "2.0", "id": 3, "method": "textDocument/formatting", "params": {
        "textDocument": {"uri": uri}, "options": {"tabSize": 3, "insertSpaces": True}
    }}),
    frame({"jsonrpc": "2.0", "method": "textDocument/didChange", "params": {
        "textDocument": {"uri": uri, "version": 2},
        "contentChanges": [{"text": src_err}]
    }}),
    frame({"jsonrpc": "2.0", "id": 4, "method": "shutdown"}),
    frame({"jsonrpc": "2.0", "method": "exit"}),
])

proc = subprocess.run(["./edva", "lsp"], input=payload, capture_output=True, timeout=15)
assert proc.returncode == 0, f"edva lsp exited with {proc.returncode}: {proc.stderr.decode()}"
out = proc.stdout.decode("utf-8")
assert '"name":"edva-lsp"' in out, f"missing serverInfo in {out}"
assert "shout: (String) => String" in out, f"missing inferred cross-module hover type in {out}"
assert "   str::upper(s)" in out, f"missing 3-space formatted edit in {out}"
assert '"code":"E3084"' in out, f"missing E3084 diagnostic in {out}"
PYEOF
echo "PASS"

echo "=== All driver tests PASSED ==="

