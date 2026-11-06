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

- [ ] **1.2 — Eliminate manual state save/restore**
  - Remove the `saved_cd = p.cycle_depth; ...; p.cycle_depth = saved_cd`
    pattern repeated dozens of times (`cycle_depth`, `branch_body_depth`,
    `is_stmt`).
  - Pass the context as a parameter, or introduce a scoped helper
    `with_depth(p, n, body)` that restores automatically.
  - Eliminates an entire class of non-local bugs.
  - *Files*: `src/parser.dva`

- [ ] **1.3 — Operator table in the lexer**
  - Emit typed operator tokens instead of a generic `Op` re-split by text in
    the parser.
  - Remove the "split-back hack" (`<Int|>` → `Op("|>")` re-split).
  - Move the unknown-operator diagnostic closer to the lexer (former `E1006`).
  - *Files*: `src/lexer.dva`, `src/operators.dva`, `operators.yaml`, `src/parser.dva`

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

---

## Tracking

| Level | Tasks | Done |
|---|---|---|
| 0 — Foundation | 3 | 3 |
| 1 — Complexity | 3 | 1 |
| 2 — Design | 3 | 0 |
| 3 — Quality | 3 | 0 |

**Recommended starting point:** Levels 0 + 1 (make the compiler modifiable),
then **2.1** (sigil desaturation), the highest-impact design change.
