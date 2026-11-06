**Edva design, implementation, Quarto documentation, and LLM-reference audit**

Reviewed checkout `bc20a35` on 2026-10-12. The existing compiler was up to date according to `make -n edva`. The pre-existing modification to `src/version.dva` was left intact. No compiler, library, documentation, or test sources were edited. Reproduction files and results are archived alongside this report under `audits/2026-10-12/`.

This is a targeted audit of the type/lowering boundaries, integer operations, casts, maps, arena lifetimes, and documentation contracts, not an exhaustive verification of the roughly 50,000 lines of compiler code. Findings marked **reproduced** were compiled/run locally with time and memory limits. Findings marked **static** identify source-level problems without claiming a demonstrated crash.

**1. High — Map updates can create duplicate keys after deletion. Reproduced.**

Insert integer keys 0 and 8, delete 0, then update key 8. The map reports two entries even though only one distinct key remains. Deleting 8 then exposes its old value: lookup returns 20 after the updated value 30 was deleted.

Observed output from [the reproduction](reproductions/map_duplicate/main.dva): `2`, `30`, `<+>`, `20`. Expected: count 1; value 30; after deletion, membership false and lookup absent.

The insertion probe immediately treats a tombstone as an available insertion slot at [runtime.dva:2124](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/codegen/runtime.dva#L2124). It does not continue searching for an existing copy of the key later in the collision chain. Remember the first tombstone, continue until the key or an empty slot, and only then choose overwrite versus insertion. Test collision chains with deletion followed by updates, not only deletion followed by reinsertion of the same key.

**2. High — Missing-key map operations can loop forever after deletion churn. Reproduced.**

An empty map has capacity 8. Insert and delete keys 0 through 7, one at a time. The count returns to zero, but each bucket becomes a tombstone. `m ^? 100` never returns; the [reproduction](reproductions/map_tombstones/main.dva) prints `0` and times out after eight seconds.

Membership ends only at an empty bucket or a matching live entry; the probe wraps without a bound at [runtime.dva:2389](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/codegen/runtime.dva#L2389). Deletion and typed lookup contain the same unbounded pattern ([expr.dva:7177](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/codegen/expr.dva#L7177)). Growth uses live count, so tombstones can fill the table without triggering growth ([runtime.dva:2238](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/codegen/runtime.dva#L2238)). Bound probes by capacity and account for tombstone occupancy when deciding to rebuild the table.

**3. High — Restoring an inner allocation scope invalidates still-live outer strings. Reproduced.**

[This complete program](reproductions/arena_nested/main.dva) creates an outer string, executes one inner loop that allocates a temporary string, and reads the outer string:

```dva
#use io
0..1 @ i =>
   s = "a" + "b"
   0..1 @ j =>
      t = "c" + "d"
      ?t != 2 | io::out("bad")
   io::out(s)
```

It aborts with `E4010: stale String read after arena restore`. The outer string precedes the inner restore mark and should remain live.

Every restore increments a single arena generation ([runtime.dva:491](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/codegen/runtime.dva#L491)). String validation compares its saved generation against the current one ([expr.dva:172](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/codegen/expr.dva#L172)), invalidating older surviving allocations as well as reclaimed ones. Lifetime identity needs to describe the allocation/region being reclaimed, rather than every allocation in the arena sharing one current generation.

**4. High — Arena generation encoding fails during ordinary long-running loops. Reproduced.**

The [generation reproduction](reproductions/arena_generation_wrap/main.dva) performs 65,538 iterations, creates `"a" + "b"`, and immediately reads its length. It aborts with E4010 despite using each string before that iteration's restore.

Only 16 generation bits fit into a string length, because the generation is shifted left by 48 ([expr.dva:326](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/codegen/expr.dva#L326)). Validation compares the extracted 16-bit tag against an unrestricted 64-bit generation ([expr.dva:172](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/codegen/expr.dva#L172)). At generation 65,536 the stored tag becomes zero, which also means immortal; later tags disagree with the full counter. Simply masking the counter would introduce stale-generation reuse and retain the zero/immortal collision. This needs a defined epoch/region lifetime strategy with an exhaustion policy.

**5. High — Narrow integer division and remainder produce invalid LLVM IR. Reproduced.**

- [Signed division](reproductions/narrow_div/main.dva): `a = i8(100); b = i8(3); io::out $ a / b` fails LLVM verification.
- [Unsigned remainder](reproductions/narrow_mod/main.dva): `a = u16(100); b = u16(3); io::out $ a % b` also fails verification.

The guard constructs zero, minimum signed value, and minus one as i64 regardless of operand width ([expr.dva:2230](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/codegen/expr.dva#L2230)). Example emitted instruction: `icmp eq i8 %var.load1, i64 0`. Generate constants and overflow checks at the actual operand width, covering all signed/unsigned widths and both `/` and `%`.

**6. High — Narrow bit shifts lose width and return incorrect results. Reproduced.**

For `a = u8(128)`, [the probe](reproductions/narrow_shift/main.dva) prints 0 for `a .>. 8` and 32768 for `a .<. 8`. The documented width-masked semantics would mask 8 to zero for an 8-bit operand. For `a = i8(-128)`, [right shift by one](reproductions/signed_narrow_shift/main.dva) produces `9223372036854775744`, not the 8-bit logical result 64.

The typed bitwise path extends both operands to i64 before shifting ([expr.dva:4961](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/codegen/expr.dva#L4961)); the helper then masks using that widened width and reports an Int result ([expr.dva:2305](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/codegen/expr.dva#L2305)). Preserve the left operand's width and type, and normalize only the count. The grammar's statement that *all* shifts greater than or equal to the width are a no-op is also inaccurate for modulo-width masking: width+1 shifts by one ([GRAMMAR.md:1076](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/GRAMMAR.md#L1076)).

**7. High — Unsigned-to-float casts interpret the source as signed. Reproduced.**

[The cast probe](reproductions/unsigned_float/main.dva) prints -1 for all three of `Float(u8(255))`, `Float(u64(18446744073709551615))`, and `f32(u8(255))`.

Both typed conversion branches use `LLVMBuildSIToFP` without checking signedness ([expr.dva:7246](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/codegen/expr.dva#L7246), [expr.dva:7262](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/codegen/expr.dva#L7262)). The older shared conversion helper repeats the same assumption. Choose unsigned versus signed conversion using the source type.

**8. Medium — Float-to-fixed-width-integer conversion emits pointer conversion IR. Reproduced.**

`x = 3.5; io::out $ i32(x)` produces `ptrtoint double ... to i32`, rejected with `PtrToInt source must be pointer`. [Reproduction](reproductions/float_narrow_int/main.dva).

Only conversion to the specific `Int` tag has an FP-to-integer path; other integer types fall through to `coerce_int_ext` ([expr.dva:7274](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/codegen/expr.dva#L7274), [expr.dva:7300](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/codegen/expr.dva#L7300)). That helper assumes a non-integer source must be a pointer ([stmt.dva:1072](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/codegen/stmt.dva#L1072)). Define float conversion behavior for every width, signedness, NaN, infinity, and out-of-range input; reject unsupported conversions during elaboration.

**9. High — Primitive constructor/cast validation admits invalid Builder values. Reproduced.**

The documented `b = Builder(64); b += "A"; io::out $ +b` compiles, then terminates with SIGSEGV. [Reproduction](reproductions/builder_constructor/main.dva). `{64}` is the actual Builder allocation syntax.

Primitive-name calls receive their target type without a general legality or arity check ([annotate.dva:2828](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/annotate.dva#L2828)); the generic cast fallback can merely relabel an unchanged value ([expr.dva:7306](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/codegen/expr.dva#L7306)). This allows a scalar to become an invalid Builder representation. The [arity probe](reproductions/cast_arity/main.dva) also shows `Int(1, 2)` silently returns 1 and `Int()` returns 0. Extra arguments should not silently disappear. Enforce a legal conversion matrix and explicit constructor arities before LLVM generation. Correct [the Builder reference example](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/doc/reference/types/builder.qmd#L19) immediately.

**10. High — String map-key comparison requests bytes beyond the shorter key. Static finding.**

[The string-key equality routine](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/codegen/runtime.dva#L2068) computes length equality, unconditionally calls `memcmp(stored_data, new_data, new_len)`, and only then ANDs the two results. A longer query that collides with a shorter stored key requests a comparison beyond the stored key's extent. C-library early exits may hide it, but they do not establish a valid readable range. Branch on equal lengths before calling memcmp. No runtime memory violation is claimed here; the invalid comparison range follows directly from the emitted call.

**11. Design contract — Builder ownership is described as linear, but implemented as shared mutable descriptors. Reproduced.**

[GRAMMAR.md:1288](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/GRAMMAR.md#L1288) promises aliasing is a compile error, and [GRAMMAR.md:1328](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/GRAMMAR.md#L1328) promises E3060 for any use after freeze. The [Builder page](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/doc/reference/types/builder.qmd#L94) repeats the invalidation promise.

[The probe](reproductions/builder_alias/main.dva) aliases `c = b`, appends through c, freezes b, appends again through b, and freezes c. It compiles and prints `AB`, then `C`. Freeze resets a shared descriptor to zero ([main.dva:853](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/codegen/main.dva#L853)); subsequent append is accepted. This probe does not demonstrate mutation of an already-frozen String. It demonstrates that the advertised uniqueness and use-after-consume checks do not exist in this path. Tracker follow-up: [Gitea #84](https://gitea.gde.to/ike/dva/issues/84) already chose reusable shared descriptors with detach/reset on freeze. Align the documentation with that decision, including behavior across arguments, captures, and records; this finding does not request a return to linear ownership.

**12. Design contract — `!<` and `!>` are not logical complements for NaN. Reproduced.**

With `x = 0.0 / 0.0`, [the probe](reproductions/float_nan_logic/main.dva) produces false for `x !< 1.0` and true for `!(x < 1.0)`. Ordered >=/<= predicates implement these operators ([match.dva:1498](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/codegen/match.dva#L1498)). That is a defensible numeric choice, but conflicts with teaching `!<` as “not less than” ([llms-full.txt:13](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/doc/llms-full.txt#L13)). Specify NaN behavior explicitly, or implement actual complement semantics. Do not silently substitute the two expressions in documentation or compiler rewrites.

**13. Design/implementation contract — Layout metadata disagrees with lowering. Static plus a size probe.**

The semantic layout describes Rune as 4 bytes ([layout.dva:33](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/layout.dva#L33)); LLVM lowering gives it the i64 fallback ([types.dva:1127](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/codegen/types.dva#L1127)), and [the local size probe](reproductions/rune_size/main.dva) prints 8 for `#size(Rune)`. It also reports Error as 48 bytes, while `codegen_build_error` allocates its 56-byte record ([main.dva:1729](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/codegen/main.dva#L1729)). The same module hard-codes eight-byte raw pointers even though the compiler supports 32-bit targets. This is demonstrably inconsistent metadata; this audit has not established a resulting memory overwrite. Separate logical layouts, value representations, allocation sizes, and foreign ABI layouts, and compute target-dependent quantities centrally.

**14. Quarto references contain executable contradictions. Reproduced where indicated.**

| Reference claim | Actual behavior / conflicting evidence |
|---|---|
| [The first Quickstart program uses `print` without an import](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/doc/start/quickstart.qmd#L19) | [The exact two-line example](reproductions/quickstart_hello/main.dva) fails E3004 (`Undefined function: print`). Use an explicit `#use io` and `io::out`. |
| [Integer examples use `x: i8 = 127`](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/doc/reference/types/int.qmd#L22) | [Probe](reproductions/doc_inline_annotation/main.dva) fails E2003. The Addr page correctly requires a separate annotation line. |
| [Integer comparisons use `<=` and `>=`](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/doc/reference/types/int.qmd#L109) | [Probe](reproductions/bad_comparison/main.dva) fails E2027; valid spellings are `!>` and `!<`. Rune examples repeat the invalid forms. |
| [Signed right shift is arithmetic](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/doc/reference/types/int.qmd#L95) | Code uses logical right shift; the grammar also says logical. This is separate from the narrow-width bug. |
| [String + Int formats decimal text](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/doc/reference/types/string.qmd#L141) | [Probe](reproductions/string_int_append/main.dva): `"item_" + 42` produces `item_*`. Integer append writes a byte. Use `str::from_int` or formatting. |
| [String indexing returns `<String|Error>`](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/doc/reference/types/string.qmd#L154) | `"A"(0)` returns byte value 65, and applying `!!` is rejected ([probe](reproductions/string_index_unwrap/main.dva)). Out-of-bounds String indexing aborts rather than returning an error ram. |
| [Typed raw-memory store `@[addr T] = val`](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/doc/guide/data-and-memory.qmd#L134) | The [Addr reference](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/doc/reference/types/addr.qmd#L94) correctly says this is E2093; writes use `@[addr] = typed_value`. |
| [Quickstart calls all bindings strictly immutable and forbids uninitialized declarations](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/doc/start/quickstart.qmd#L61) | Primed bindings are reassignable; declaration plus definite field initialization is supported and documented elsewhere. |
| [Quickstart formatting call passes format first](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/doc/start/quickstart.qmd#L180) | The [probe](reproductions/quickstart_printf/main.dva) prints `128`, losing the message. `io::outf` expects value first, format second. |

The array page also combines inline annotation syntax with a slice example and presents a named-loop form `@loop:` that is not the documented cycle grammar. Its complete slice declaration snippet fails parsing ([probe](reproductions/slice_doc/main.dva)). These snippets should become executable documentation fixtures, with intentionally incomplete syntax illustrations explicitly marked.

**15. LLM references teach incorrect ram shapes and precedence. Reproduced/static.**

Both `doc/llms.txt` and `doc/llms-full.txt` contain essentially the same 249-line hand-maintained reference; their only current difference is Addr versus RawPtr at line 191.

- The constructor summary gives only `<+ value +>` and `<- error ->` ([llms-full.txt:163](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/doc/llms-full.txt#L163)). Those are RamPN and RamNP. A two-payload result requires `<+ value ->` and `<- error +>`. This is not cosmetic: the declared result shape is incompatible.
- `load_config: String => <Config|Error>` ends with `<+ cfg +>` ([line 179](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/doc/llms-full.txt#L179)), which constructs the wrong shape. Its `io::read_file` API is also absent from `std/io.dva`. A minimal result-returning equivalent fails E3089 ([probe](reproductions/llm_propagate/main.dva)).
- The FFI `read_file` example declares `<String|>` but builds `<+ +b ->` in its successful branch. [The extracted example](reproductions/llm_ffi_example/main.dva) fails E3089/E3084.
- The precedence table collapses `&&` and `||` into one tier, collapses bitwise OR and AND, puts cycle `@` at the tightest tier, and lists postfix `--!` as prefix ([line 52](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/doc/llms-full.txt#L52)). It also omits assignment and range tiers. The generated table in [GRAMMAR.md:140](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/GRAMMAR.md#L140) and [operators.yaml](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/operators.yaml) distinguishes these.
- “No defaulting to Int” incorrectly includes literals ([line 11](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/doc/llms-full.txt#L11)). Unsuffixed integer literals default to Int, adjustable by `#pragma number`. Rejecting unresolved type variables is a separate rule.

Generate the LLM material from the same tested syntax/API sources as the human reference. Include all four ram constructors and executable examples; separate mandatory syntax, implementation guarantees, and optional coding style.

**16. Standard-library reference contains missing APIs and wrong signatures. Static.**

[The mem reference](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/doc/reference/stdlib/mem.qmd#L44) advertises `mem::alloc_aligned`, which is absent. Its pool signature reverses the two Int arguments: documentation says `(capacity, elem_size)`, but [the implementation](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/std/mem.dva#L89) takes `(elem_size, capacity)`. This error can compile while silently allocating the wrong arrangement. `pool_alloc` actually returns `<Addr|>`, and `pool_free` returns Flag, not the documented Addr and Unit. Generate or verify signature tables against public module declarations, and include argument order in checks.

**17. Representation and performance promises are inconsistent. Static.**

[The ram reference](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/doc/reference/types/ram.qmd#L18) teaches `{i64 tag, ptr payload}` for payload shapes and later permits boxed or unboxed forms. [The ram guide](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/doc/guide/ramifications.qmd#L26) teaches pointer unions for PN/NP and `{i1,i64}` for PP. Actual lowering uses unboxed PP and null-pointer niches for eligible single-payload String/Record rams ([types.dva:1936](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/codegen/types.dva#L1936)). The latter optimization is missing from those tables.

The guide's “no runtime tags” conflates absence of RTTI with absence of value discriminants: PP does contain a runtime polarity tag. Its “zero heap allocation” for lookup should distinguish the unboxed result wrapper from construction of an Error on a miss ([expr.dva:7202](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/codegen/expr.dva#L7202)). Likewise, the LLM freeze description says “zero allocation”, while freeze allocates the String descriptor through `codegen_string_build` even when the buffer itself transfers without copying ([expr.dva:318](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/src/codegen/expr.dva#L318)). State allocation claims per operation/path and distinguish descriptors, buffers, and payloads.

**18. Documentation audit metadata and CI do not enforce the stated policy. Static scan.**

Across 61 Quarto pages, 29 contain evidence references to missing paths: 40 missing evidence anchors in total. Examples include `src/types.dva`, `src/eval.dva`, `src/codegen/array.dva`, `selfhost/src/edva.dva`, `selfhost/test_driver.sh`, and `seed/edva.ll`. The [scan output](doc-audit.json) lists every case. Ordinary local Markdown links checked by this scan resolved; the problem is primarily unvalidated evidence metadata and stale prose paths.

The [testing page](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/doc/compiler/testing.qmd#L48) directs users to a nonexistent `./selfhost/test_driver.sh`. The architecture page claims sources and object files live under `selfhost/`. These are actionable contributor-instruction failures, not historical background.

[Documentation policy](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/doc/contributing/documentation.qmd#L17) requires evidence and runnable anchors, but [the docs workflow](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/.github/workflows/docs.yml#L34) only renders the book. It runs on selected pushes, not documentation pull requests, and does not compile examples or validate evidence. Operator generation checks GRAMMAR.md only; the Quarto and LLM tables can drift independently.

Prioritize the runtime corruption/hang/lifetime issues, then width-aware numeric lowering and cast validation. In parallel, correct the dangerous constructor/API examples and introduce documentation compile/output tests, link/evidence validation, and shared generated operator/LLM references. Decide the Builder ownership, NaN complement, indexing-failure, and target-layout contracts explicitly before extending their implementations.

**19. Medium — The privileged-test harness hides compilation failures, including on CI. Reproduced/static.**

The full suite ended with **505 checks: 503 passed, 2 failed**. Both failures were Scroll Lock tests reporting `sudo: ./01_scrolllock_on: command not found` / `./02_scrolllock_off: command not found`. Compiling each source separately revealed the real issue: E3004 for an undefined `print` function, followed by E3103. No hardware access was needed to reproduce their compilation failures.

[run_tests.sh:313](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/run_tests.sh#L313) suppresses compiler output and records the exit status, but checks only the timeout case. It then attempts to execute a nonexistent binary. Under CI/SKIP_SUDO it counts the test as passed even when compilation failed ([line 328](https://github.com/ElenaFri/edva/blob/bc20a35ba2dd351bb0c891797a33d1ec8ae74940/run_tests.sh#L328)). Check every nonzero compile result before deciding whether to skip the hardware execution phase, and report skips separately. The driver suite and all ordinary pass/fail integration tests passed during this run; the focused audit failures demonstrate missing regression coverage.

**Validation record**

The focused programs, emitted IR, and JSON results are retained alongside this report. Ordinary f32 arithmetic, narrow addition, and size checks were also exercised as controls. The complete baseline suite outcome (503/505, with the two compilation/harness failures described above) is recorded in [regression.log](regression.log); an initial sandbox cache-write failure required an approved rerun with cache access. This audit did not render Quarto or run a fresh bootstrap fixed-point verification.

**Gitea tracking**

See [the issue index](issues.md) for the milestone and the issue covering each finding.
