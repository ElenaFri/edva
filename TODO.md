# Roadmap — Edva/Dva improvements

Roadmap derived from the critical review of the compiler (`src/`), the grammar
(`GRAMMAR.md`) and the test suite (`tests/`). Goal: make the language
**modifiable** before modifying its design.

Recommended order: **Level 0 → 1 → 2 → 3**. Levels 0 and 1 are technical
prerequisites; the design changes (level 2) only become safe once that
foundation is in place.

Legend: `[ ]` todo · `[~]` in progress · `[x]` done

---

## Level 0 — Foundation for safe modification

Top priority. Without this, any syntax change is risky.

- [x] **0.1 — Normative grammar**
  - Reverse the "the code wins" rule (`GRAMMAR.md` intro).
  - Make the grammar (or a rules file) the source of truth.
  - Add a test that fails when the parser's behavior diverges from the spec.
  - *Files*: `GRAMMAR.md`, `tests/`
  - *Done*: `GRAMMAR.md` is now normative; its 18 Dva blocks are classified
    (`complete` / `run` / `partial` / `expected-error`) and compiled by the
    `check_docs --compile-examples` gate. Three stale examples were fixed
    (`print_int` no longer exists; `\`-lambda syntax never existed;
    `xs(0 .. ?xs)` whitespace), and the `!4096` negative example was isolated
    as `expected-error`.

- [x] **0.2 — Structured error codes**
  - Replace bare `Int`s (`unify::add_error(ctx, 3084, ...)`) with an enum.
  - One code = one cause. Split the catch-all `E3084` (≥ 5 distinct messages
    today: `record_size_mismatch`, `arithmetic_type_mismatch`,
    `builder_append_type`, `choice_branch_mismatch`, `open_record_fields`).
  - Same for other reused codes (`E3008_*`, `E3032_*`, `E3173_*`).
  - *Files*: `src/diag.dva`, `src/unify.dva`, callers.
  - *Done*: `diag::DiagCode` (138 variants) is the typed registry; `fail`,
    `parser_error`, `add_error`, and `add_error_at` take `DiagCode`
    (340 call sites converted). Splits: `E3084` → `E3176`–`E3186` (arity,
    record field count, enum shape, field access, cast, return, record size,
    arithmetic, builder append, choice branch, open record), `E3008` → `E3187`
    (`!` on integer) + `E3196` (range as value), `E3032` → `E3188` (element/member)
    + `E3189` (inexhaustive choice), `E3173` → `E3190`–`E3194`, `E3051` →
    `E3195` (cycle iter). Tests and docs repointed.
  - *Remaining* (follow-up): codegen `types::init_error` still takes `"ENNNN"`
    string codes; `pkg::fail`/driver `E5xxx`–`E7xxx` still take `Int`;
    `E3033` is still shared by reassign-immutable and driver name clashes.

- [x] **0.3 — Error message templates**
  - Remove the concatenated `*_prefix` / `*_suffix` / `*_tail` fragments.
  - One message = one function, using `${}` interpolation (already supported by
    the language).
  - *Files*: `src/diag.dva`
  - *Done*: all fragments replaced by single complete-message functions with
    `${}` interpolation; ~76 external call sites updated across parser,
    codegen, unify, annotate, pkg, and edva. Output text is byte-identical
    (the full suite passes unchanged).

---

## Level 1 — Reduce accidental complexity

- [x] **1.1 — Split `parser.dva` (~7,800 lines)**
  - Break it into modules like codegen: `parser/expr.dva`, `parser/decl.dva`,
    `parser/type.dva`, `parser/choice.dva`, etc.
  - Prerequisite for any calm evolution of the parser.
  - *Files*: `src/parser.dva` → `src/parser/`
  - *Done*: split into 7 units along the file's own section seams —
    `pstate` (state/token helpers/error core), `pexpr` (tiers + Pratt core +
    atoms), `plambda` (lambdas/blocks + `parse_program`), `ptype` (types +
    `#type` + `#use`), `ppost` (postfix), `pchoice` (choice tier), `pident`
    (identifier dispatch + const folding). `src/parser.dva` is now a facade
    re-exporting the 6-function public API (parse_init, parse_program,
    parser_set_file, fold_program_consts, last_segment, set_target_triple).
    Siblings import each other unqualified via `#use(import)`; signatures
    live with their bodies (the old cross-file forward declarations were
    hoisted next to their implementations). Makefile, fixed-point, and
    rebuild-seed updated for the new layout.

- [x] **1.2 — Eliminate manual state save/restore**
  - Remove the `saved_cd = p.cycle_depth; ...; p.cycle_depth = saved_cd`
    pattern repeated dozens of times (`cycle_depth`, `branch_body_depth`,
    `is_stmt`).
  - Pass the context as a parameter, or introduce a scoped helper
    `with_depth(p, n, body)` that restores automatically.
  - Eliminates an entire class of non-local bugs.
  - *Files*: `src/parser.dva`
  - *Done*: scoped helpers in `parser/pstate.dva` (`with_fn_depth`,
    `with_cycle_depth`, `with_in_rhs`, `with_module_level`, `with_no_assign`,
    `with_is_stmt`, `with_visibility`, `bump_branch_body`, plus
    `with_choice_depth_pb` in `pchoice`). ~20 call sites converted across
    pexpr/plambda/pident/ppost/pchoice; the only remaining `saved_*` locals live
    inside the helpers. Fixed a real leak: `seq_loop` never restored
    `p.is_stmt` on the parse-failure path. Sites that set a field one-way
    without restoring (`atom_double_colon`'s `is_stmt` probe) are a different
    pattern and were left alone.
  - *Found compiler bug*: a `#! T: Type` helper whose T instantiates to a
    ramification type miscompiles when any statement sits between the body
    call and the return — the monomorphized local is retyped as a bare Flag
    (E3149 catches it; a coerced variant segfaults at runtime). The helpers
    are therefore deliberately non-generic, pinned to the parser's dominant
    result ram `<ast::Expr|>`. Fixing the monomorphizer would let them become
    generic again.

- [ ] **1.3 — Operator table in the lexer**
  - Emit typed operator tokens instead of a generic `Op` re-split by text in
    the parser.
  - Remove the "split-back hack" (`<Int|>` → `Op("|>")` re-split).
  - Move the unknown-operator diagnostic closer to the lexer (former `E1006`).
  - *Files*: `src/lexer.dva`, `src/operators.dva`, `operators.yaml`, `src/parser.dva`
  - *Scoped* (design notes for implementation):
    - Current state: the lexer emits every unbroken special-character run as
      ONE generic `Op` token (documented as a deliberate simplification in
      `src/lexer.dva`'s header); the split-back hack for compact ram types is
      already gone. The parser filters by text: ~30 sites (21 `.text
      ["..."]` guards + 9 `token_is_op` calls) plus the Pratt loop's
      `operators::bin_info(text)` lookup; ram-literal forms (`<+`, `<->`,
      `<|>`, closers, …) are matched by text in pexpr/pchoice.
    - Layering constraint: `src/lexer.dva` is a leaf (no `ast`/`operators`
      import) while `src/operators.dva` depends on `ast`. The operator
      vocabulary must therefore be GENERATED into the lexer's layer — e.g. a
      generated `is_op_run: String => <>` table (a new opgen artifact, kept
      in sync with `operators.yaml` + the fixed sigil set: ram forms, cycle
      jumps, `=>`/`!=>`, `..`/`...`, `!!`, `~~`, `$`/`$>`/`$>>`, `:=`, …).
    - Step 1 — restore the unknown-operator diagnostic in the lexer with a
      NEW code (one code = one cause; the retired E1006 stays retired).
      Decide fatal vs recoverable carefully: `lexer::fail` is fatal, and the
      formatter and LSP also lex arbitrary user text — a fatal error would
      change `edva fmt` behavior on partially-broken files. Check which
      tests currently pin E2064 for meaningless runs before re-pointing.
    - Step 2 — typed emission: either (a) one `TokKind` per operator symbol
      (append-only ordinals in `tools/tokens.txt`; requires gen_tokens and
      opgen to share the symbol list), or (b) keep the `Op` kind but resolve
      the run at lex time against the generated table and carry the resolved
      operator id on the token, then migrate the ~30 parser text-matches and
      the `bin_info` lookup in `bp_loop` to the resolved form. Option (b)
      avoids the two-SSOT merge of tokens.txt and operators.yaml.
  - *Revised after investigation* — the lexer-side unknown-op diagnostic
    (former E1006) is UNSOUND as stated: runs outside the reserved vocabulary
    are legal **user-defined operator names** (`+++ : #infix 25 20`,
    `parse_fixity_clause` in pident; `atom_op_ident` accepts any non-reserved
    run in primary position as an operator-name atom). E1006's retirement was
    load-bearing for the custom-operator feature. A fatal lexer check would
    reject every user operator. Revised plan:
    1. Generate the reserved-vocabulary table (`op_is_reserved`'s list +
       `bin_info` symbols) into a leaf module the lexer can consume — the
       foundation for typed emission — instead of the hardcoded list in
       pstate.
    2. Improve the unknown-operator diagnostic at the PARSER, in operator
       position, where user-op registration is knowable: a run that is
       neither reserved nor `#infix`-registered gets a targeted "unknown
       operator 'xyz' — declare fixity with '#infix'" diagnostic instead of
       the generic E2064.
    3. Typed emission (former Step 2) applies to reserved runs only; user
       ops stay text-keyed by necessity.
  - *Second finding*: even parser-position blanket checks are unsound — an
    op run that cannot continue an expression legitimately ENDS it and may
    start the next statement (verified: `y = x + 1` ⏎ `--| y` compiles). The
    only sound improvement is a better MESSAGE at the existing error sites
    (e.g. E2064 hinting at `#infix` when the offending token is an op run).
    The former E1006 stays retired; the blanket-diagnostic bullet is closed
    as unsound-by-evidence.

---

## Level 2 — Design decisions (modifying the language)

Only undertake once the foundation (0 + 1) is in place.

- [ ] **2.1 — Desaturate control-flow sigils** *(highest-impact change)*
  - Pick a direction:
    - **Purist**: keep zero keywords but shrink the symbolic vocabulary; merge
      the `-->` / `--^` / `>--` / `--!` / `--|` family (too many near-identical
      glyphs for distinct semantics).
    - **Pragmatic**: introduce a handful of **contextual keywords** (non-reserved)
      for common control flow, while keeping identifiers free. Recommended if
      adoption/readability matters.
  - *Files*: `src/lexer.dva`, `src/parser.dva`, `GRAMMAR.md`

- [ ] **2.2 — Relax whitespace sensitivity**
  - Reconsider `E2025` (whitespace before `..`) and `E2032` (whitespace before
    the call parenthesis): high friction for low clarity gain.
  - Significant indentation already provides one "invisible" dimension.
  - *Files*: `src/lexer.dva`, `src/parser.dva`, `tests/fail/007*`, `008*`

- [ ] **2.3 — Distinct delimiter for ramifications/enums**
  - Stop reusing `< >` (shared with comparisons): root of much of the parser's
    complexity.
  - A dedicated delimiter would simplify both lexer and parser.
  - *Files*: `src/lexer.dva`, `src/parser.dva`, `GRAMMAR.md`

---

## Level 3 — Long-term quality

- [ ] **3.1 — Rebalance tests toward unit tests**
  - Today: 672 end-to-end tests, **3** unit tests.
  - Add isolated tests for `parser` and `unify` so regressions fail *near* the
    cause.
  - *Files*: `tests/unit/`
  - *Note*: the existing `tests/unit/*.dva` do not compile (`#use "src/ast"`
    does not resolve; they are not wired into any runner) — fix or remove
    them first.

- [ ] **3.2 — Clean up documentation drift**
  - Dated comments (`Phase 5 foundation`, `ports next`).
  - Retired features still mentioned (`E1006/E1014/E1016 retired`).
  - Dead paths (`process/unification-roadmap.md`,
    `process/spec/operators.yaml` while the file is `operators.yaml`).
  - Ideally: generate the docs rather than maintain them by hand.
  - *Files*: `src/*.dva`, `GRAMMAR.md`

- [ ] **3.3 — Fill or remove `audits/`**
  - Currently empty: unkept promise / bad signal.
  - *Files*: `audits/`

- [x] **3.4 — Diagnostic-code coverage gate + badge**
  - Standard source-based line coverage (`llvm-cov` / `gcov`) is unavailable:
    the compiler emits objects directly through the LLVM C API with no
    debug-line or coverage metadata (`seed/ir/*.ll` carry no `!dbg`). Measure
    instead a compiler-appropriate metric — the fraction of the `DiagCode`
    registry (`src/diag.dva`) actually triggered by the negative suite
    (`tests/fail/*.dva`).
  - *Done*: `tools/diag_coverage.nu` compiles every negative test, collects the
    emitted E-codes, intersects them with the 138-code registry, and writes
    `coverage.json` (shields.io endpoint). `make coverage` regenerates it;
    `make coverage-check` gates freshness in CI (ubuntu job); the README shows a
    `diagnostics` badge. Current: 96/138 = 70%.
  - *Surfaced* (follow-ups): 42 registry codes have no triggering test
    (including the structurally unreachable `E2097`); 5 front-end codes are
    emitted but missing from the registry enum (`E3006`, `E3007`, `E3040`,
    `E3172`, `E3174`).
  - *Files*: `tools/diag_coverage.nu`, `Makefile`, `.github/workflows/ci.yml`,
    `README.md`, `coverage.json`

- [ ] **3.5 — Source-based line/function coverage (real coverage)**
  - The honest line-coverage metric needs the compiler to emit coverage data.
    Two routes: (a) emit DWARF line info (`!dbg`) + an LLVM coverage map so
    `llvm-cov` can map execution back to `.dva` source; or (b) add a
    `--coverage` mode that instruments each function/branch with a counter,
    dumps a profile at exit, and a tool aggregates counts across the suite into
    `.dva`-level coverage. Route (b) is the more tractable one for a
    self-hosted compiler.
  - Supersedes the diagnostic-code proxy (3.4) once available.
  - *Files*: `src/llvm.dva`, `src/codegen/*`, `tools/`

---

## Tracking

| Level | Tasks | Done |
|---|---|---|
| 0 — Foundation | 3 | 3 |
| 1 — Complexity | 3 | 2 |
| 2 — Design | 3 | 0 |
| 3 — Quality | 5 | 1 |

**Recommended starting point:** Levels 0 + 1 (make the compiler modifiable),
then **2.1** (sigil desaturation), the highest-impact design change.
