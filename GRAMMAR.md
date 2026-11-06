# Dva Language Specification

Normative specification of the Dva programming language: lexical structure,
grammar, and semantics. This document is the source of truth for the
language; the compiler implements it. Dva examples in this document are
compiled (or rejected, as annotated) by the documentation conformance gate
(`nu tools/check_docs.nu --compile-examples`), so the specification and the
compiler cannot silently drift apart. A divergence between the two is a
bug: against the compiler when the documented behavior is intended,
against this document otherwise.

---

## 1. Lexical Structure

### 1.1 Source Encoding & Indentation

Source is UTF-8. Indentation is significant: an indented block is an
`INDENT` level of statements terminated by a matching `DEDENT`. All
indentation within a program must use the same character (spaces or tabs);
mixing them, or un-indenting to a level with no matching outer block, is a
compile error.

Indented block `INDENT { STATEMENT \n } DEDENT` is equivalent to `;`-separated
inline statements. A `;` at the end of a line is an error.

### 1.2 Comments

- Line comments: `//` to end of line.
- Block comments: `/* ... */` (may span multiple lines).

### 1.3 Literals

| Kind | Syntax | Notes |
|------|--------|-------|
| Integer | `42`, `0xFF`, `0o77`, `0b1010`, `0b1{48}` | optional type suffix (`42u64`, `-5i32`), repeating digits `{N}` |
| Float | `3.14`, `1.5e-3`, `3.14f32`, `-0.0` | padding zeros mandatory on both sides of `.` (see §1.4) |
| Rune | `'a'`, `'\n'`, `'λ'` | a single Unicode code point; `Rune`-typed |
| String | `"..."` | C-style escapes, `${expr}` interpolation; multiline with margin stripping when starting with `"\n` |

> **Numeric limits and IEEE-754 constants** — Explicit-width integer bounds (`const::max_i64`, `const::min_i64`, `const::max_i32`, `const::min_i32`, `const::max_i16`, `const::min_i16`, `const::max_i8`, `const::min_i8`, `const::max_u64`, `const::max_u32`, `const::max_u16`, `const::max_u8`) and IEEE-754 floating-point constants (`const::inf_f64`, `const::inf_f32`, `const::nan_f64`, `const::nan_f32`, `const::max_f64`, `const::max_f32`, `const::min_f64`, `const::min_f32`, `const::sub_f64`, `const::sub_f32`, `const::eps_f64`, `const::eps_f32`) are provided by the `std/const` module (`#use const`). Signed negative zero is written directly as `-0.0` (or `-0.0f32`).

**Unified String Literals (`"..."`)** — Double-quoted string literals with expression interpolation and multiline formatting:
- **Interpolation**: `${expr}` evaluates scalar primitives (`Int`, `Float`, `Rune`, `String`, sized int/float types) directly into the string (desugaring to `%to_str(expr)`). Escaped as `\$` or `\${`. Bare `$` is literal.
- **Multiline Blocks**: When a string literal begins immediately with a newline (`"\n`), it enters multiline mode:
  - The first line sets the baseline margin indentation.
  - Subsequent lines must not be indented less than the first line (raises `E1017`).
  - The closing `"` can close the last line directly (no trailing newline is emitted), or sit on its own line aligned with the content or dedented one level.
  - Line continuation with trailing `\` suppresses newlines while maintaining indentation stripping on subsequent lines.
- **Lowering**: Standalone strings evaluate to `String`. In a compound append to a Builder (`b += "..."`), segments and interpolated expressions are appended directly in place without intermediate string allocations.
- **Retired Syntax**: Triple double quotes `"""..."""` are retired.

**Multiline string concatenation** — If a line ends with a string literal
`"..."`, and the next line begins with another string literal indented deeper
than the current block, they concatenate into a single string literal at compile
time across lines.

**Mask literals (`0m<N>` / `0m-<N>`)** — integer literals for generating bitmasks
of 0..64 bits (rejecting > 64 with `E2043`):
- `0m<N>` sets the lower $N$ bits: `0m48` == `0x0000FFFFFFFFFFFF` ($(1 \ll 48) - 1$), `0m32` == `0xFFFFFFFF`.
- `0m-<N>` sets the upper $N$ bits: `0m-16` == `0xFFFF000000000000` ($(-1) \ll (64 - 16)$).
- Accepts optional integer type suffixes, e.g. `0m32u32`.

**Integer type suffixes** — an integer literal may carry an explicit type
suffix, materializing the value at that width: `5i16`, `0xFFu8`, `0b101u16`,
`9i64` (i8/u8..i64/u64). An unsigned suffix wraps; a narrow signed suffix
truncates (`70000i16` = `4464`).

**Float padding zeros** — a float must have digits on both sides of the
decimal point: `.5`, `1.`, `.5e3` are illegal (write `0.5`, `1.0`,
`0.5e3`). A digit run immediately followed by `.` with no digit after it
(and not a dot-operator) is a lexer error.

### 1.4 Directives

A `#`-prefixed word is a directive. Directives are lexed as single tokens.

- `#foreign` — opens a foreign-binding block (§2.4). An optional string
  argument names the library: `#foreign "c"`.
- `#pragma integer <type>` — a positional, file-scoped directive that switches
  the **default integer literal type** for the rest of the file. `<type>` is
  any integer type name (`i8`/`u8`..`i64`/`u64`) or `default` to restore
  `Int`. An explicit literal suffix always overrides the pragma. Typical use:
  `#pragma integer i16` before an i16 table, `#pragma integer i64` before an
  i64 table. Invalid types produce `E1013`. The directive itself is a no-op
  statement.
- `#pragma float <type>` — a positional, file-scoped directive that switches
  the **default float literal type** for the rest of the file. `<type>` is
  `f32`, `f64`, `Float`, or `default` (to restore `Float`). An explicit literal
  suffix (`f32`, `f64`, `f`, `F`) always overrides the pragma. Invalid types
  produce `E1013`.
- `#!` — compile-time execution (§2.14). As a prefix on an expression,
   `#! expr` folds a constant expression at compile time (CTFE). As a prefix on
   a parameter (`#! T`), it marks a compile-time type parameter.
- `#error <msg>` — compile-time error diagnostic reporting (`E3174`).
   Aborts compilation during code generation or CTFE evaluation with the
   given message.
- `#warn <msg>` — compile-time warning reporting. Emits a non-fatal warning
   diagnostic during code generation or CTFE evaluation.
 - `#exit <code>` — terminate the process with an integerish status. The code
    is the whole following expression at the choice tier (the lowest
    precedence), so a comparison or choice chain needs no parens
    (`#exit r == 4 | 1 | 0`); inside a choice branch body the code parses at
    the range tier, so a following `|` stays with the enclosing choice
    (`x [3] #exit 42 | miss` is `x [3] (#exit 42) | miss`). The expression
    never yields a value — it is void, compatible with every type (a choice
    phi skips a Void branch), so anything after it in the same block is dead
    code. On hosted targets it runs the same epilogue as a
    normal `main` return (the global arena is destroyed) then calls `exit`;
    on bare-metal (`-no-runtime`) targets — where there is no libc — the code
    is parked in a debugger-readable `dva_exit_code` global and control traps.

### 1.5 Tokens

The lexer produces the following token classes:

- **Identifiers** — Unicode alphabetic/underscore start, then alphanumeric,
  underscore, per UAX31.
- **Integers / floats / runes / strings** — see §1.3.
- **Operators** — every maximal run of operator characters is one token,
  looked up in the operator table; a run matching no operator is a lexer
  error. Operators must be whitespace-separated.
- **Punctuation** — `( ) [ ] { } , ;` are atomic single tokens (they never
  join an operator run).
- **Prefix markers** — `#` introduces a directive (`#use` import, `#type`
  type declaration, `#foreign` foreign binding, `#pragma`, `#private`); `#!`
  compile-time execution; `@` (cycle) and `\` (lambda) are atomic.

Operator inventory (see `src/lexer.dva` for the exact table):

```
$ $> $>> ; , - -> . .. : :: ::= := = == => + ++ += +> * / > < <+ <-
% ! !< !> != !| ? && | || .>. .<. .|. .&. .!.
```

plus the **cycle-jump family** (`-->`, `--^`, `>--`, optionally followed by an
integer cycle depth — variable-length tokens, kept out of the operator munch,
§2.11). The unit-ram literals `<+>`, `<->`, `<++>`, `<-->`, `<>` are
**constants**, not operators (see §2.12).

`.>.`/`.<.` are the zero-fill bit shifts (`.>.` right, `.<.` left);
`.|.`/`.&.` are bitwise OR/AND; `.!.` is unary bitwise NOT. `+>`/`->` are the
ramification payload closers (never a bare `>`). `.>.` etc. are distinct
three-character tokens, so a `1.` float can never masquerade as one.

### 1.6 Operators & Precedence

Every operator is a fixed sequence of special characters, lexed greedily as
one token. Precedence, loosest to tightest (this table is **generated** by
`tools/opgen/main.nu` from `process/spec/operators.yaml`, the single source of
truth; the unified operator table with operand and result types is in §3.3):

<!-- BEGIN operators.yaml -->
| Tier | LBP | RBP | Operators | Associativity |
|---|---|---|---|---|
| cycle | 10 | 20 | `@` `@@` `>--` `-->` `--^` | left |
| sequence | 20 | 30 | `;` | left |
| apply | 30 | 30 | `$` | right |
| feed | 40 | 50 | `$>` `$>>` | left |
| choice | 50 | 60 | `|` `[pattern]` `!|` `|->` `|+>` `|-->` `|++>` | left |
| assignment | 60 | 50 | `=` `:=` `+=` `::=` | right |
| range | 70 | 80 | `..` | left |
| logical or | 80 | 90 | `||` | left |
| logical and | 90 | 100 | `&&` | left |
| bitwise or | 100 | 105 | `.|.` | left |
| bitwise xor | 105 | 110 | `.^.` | left |
| bitwise and | 110 | 120 | `.&.` | left |
| comparison | 120 | 130 | `<` `>` `==` `!=` `!<` `!>` | left, same-line |
| shift | 130 | 140 | `.<.` `.>.` | left |
| addition | 140 | 150 | `+` `-` | left |
| multiplication | 150 | 160 | `*` `/` `%` | left |
| unary prefix | 160 | 180 | `!` `+` `&` `++` `.!.` `~~` `?` `??` `-x` `#size` | right |
| postfix / apply | 170 | 180 | `call ()` `.` `::` `: cast` `{N}` `@[...]` `!!` `--!` | left |
| primary | 180 | 180 | `primary` | left |

<!-- END operators.yaml -->

Notable precedence facts:

- `$>` (feed) and `$` (infix apply) are **multi-argument** and sit **below the
  choice tier** (application-ops.md): `f(a) $ b` == `f(a, b)` (append),
  `x $> f(a)` == `f(x, a)` (prepend). Their RHS parses at the choice tier, so
  the choice is the operand:
  - `a $> b | c | d` == `a $> (b | c | d)` — feed `a` into the function the
    choice selects.
  - `f $ a [1] x | y` == `f $ (a [1] x | y)` — apply `f` to the whole choice.
  - `2 + 3 $> sum + 4` == `(2 + 3) $> (sum + 4)` (the RHS grabs `+ 4`);
    parenthesize the feed to bind tighter: `((2 + 3) $> sum) + 4`.
- `$>` is left-assoc (`2 $> f $> g` == `g(f(2))`); `$` is **right-assoc**
  (`f $ g(a) $ b` == `f(g(a, b))`, and `f $ a + b` == `f $ (a + b)`).
- The choice absorption is suppressed inside choice branch bodies, so a feed
  in a branch stays in that branch (`x == 5 | 0 | base $> sum` keeps the feed
  inside the last branch).
- Apply a value to a call's RESULT with the postfix form (`pick(1)(5)`), not
  `pick(1) $ 5` (which appends `5` as an argument to `pick`).
- A lambda body is a full expression, so a `$` inside the body stays inside
  it: `x => print $ x` == `x => (print $ x)`.
- The comparison tier only chains operators on one source line.
- Bitwise precedence is C-style: `|| < && < .|. < .&. < comparison < .<.
  .>. < + - < * / %`.

---

## 2. Grammar

### 2.1 Program

```
Program    ::= { Statement } EOF

Statement  ::= ImportStmt
             | ForeignDeclStmt
             | PragmaStmt
             | VisibilityStmt
             | TypeDeclStmt
             | AssignmentStmt
             | ExprStmt
```

### 2.2 Imports

```
ImportStmt ::= "#use" [ "(" [ "dynamic" | "import" ]
                          { "," [ "dynamic" | "import" ] } ")" ] ModulePath
```

`#use module_name` imports a module named `module_name`; `#use path/to/module`
(or quoted `#use "path/to/module"`) imports by filesystem path. Quotes are optional
unless the path contains whitespace. Module resolution first searches relative to the
importing file's directory, then the standard-library directory alongside the
compiler. The loader is **file-first**: a module is `<dir>/<name>.dva`; a
same-named `<dir>/<name>/` directory is only a fallback (a multi-file module),
so `std/net.dva` and `std/net/http.dva` can coexist. The module prefix is the
**last path segment** (`#use net/http` binds as `http::name`). An imported
module's bindings are referenced by `module::name`.

`#use(import) path` brings all public symbols of the module into scope without the
`module::` prefix. Name clashes with declarations in the module or other imported
modules emit `E3033`. Function-local declarations shadow imported symbols.

`#use(dynamic) path` (replacing legacy `#use-dynamic`) enables hot-reloading through
dynamic function pointer indirection.

```
VisibilityStmt ::= PublicStmt | PrivateStmt

PublicStmt     ::= ( "#public" | "#pub" ) [ Newline INDENT { Statement } DEDENT | Statement | Newline ]
PrivateStmt    ::= "#private" [ Newline INDENT { Statement } DEDENT | Statement | Newline ]
```

Modules are **private by default**: any module without `#public` exports nothing; all its
declarations remain private to the module. To export declarations, a module must explicitly
mark them with `#public` (or synonym `#pub`).

- **Standing directive**: `#public` or `#private` on its own line (with no indented block following)
  switches the module's visibility state for all subsequent declarations.
- **Scoped block**: `#public` or `#private` introducing an indented block applies only to the
  declarations inside that block, reverting to the enclosing visibility state upon dedent.
- **Inline statement**: `#public stmt` or `#private stmt` applies visibility only to the immediate
  following statement on the same line.

Private declarations are reachable only by a *bare* name inside their own module; external
qualified access `module::name` receives `E3004`. Variables, functions, and types can all be
public or private.

### 2.3 Pragma

```
PragmaStmt ::= "#pragma" "integer" ( TypeName | "default" )
             | "#pragma" "float" ( "f32" | "f64" | "Float" | "default" )
             | "#pragma" "fpfast" ( "all" | "none" )
             | "#pragma" "swizzle" ( "all" | "xyzw" | "rgba" | "none" )
```

See §1.4. Positional and file-scoped; a no-op statement.

### 2.4 Foreign Bindings

```
ForeignDeclStmt ::= "#foreign" [ StringLiteral ] Indent
                    { ForeignBinding } Dedent

ForeignBinding  ::= [ Identifier "=" ] Identifier ":"
                    [ "(" [ ParamList ] ")" [ "->" TypeName ] | TypeName ]
```

Foreign functions and variables expose C symbols to Dva. A binding names a Dva
identifier (optionally mapped from a C symbol with `dva_name = c_symbol`),
followed by `:` and the C type signature. A function signature is a parameter
list and optional return type; a bare `TypeName` declares a foreign variable.

### 2.5 Type Declarations

```
TypeDeclStmt  ::= "#type" Identifier "(" [ FieldTypeList ] ")"
               |  "#type" Identifier Newline INDENT IndentFieldList DEDENT
               |  "#type" Identifier EnumTypeDecl
               |  "#type" Identifier RamTypeDecl
               |  "#type" Identifier "(" TypeName ")" "{}"    (* growable array *)
               |  "#type" Identifier GeneratorCall            (* instantiation *)
FieldTypeList ::= FieldType { ( "," | Newline ) FieldType } [ "," ]
FieldType     ::= [ Identifier ":" ] TypeName [ "=" Expr ]
               |  TypeName "*" Integer          (* repeated: N fields of Type *)
               |  TypeName "[" "]"              (* dynamic slice: T[] *)
IndentFieldList ::= IndentField { ( "," | Newline ) IndentField } [ "," ]
IndentField   ::= Identifier ":" TypeName [ "=" Expr ]
               |  Identifier ":" Newline INDENT IndentFieldList DEDENT
EnumTypeDecl  ::= "<" EnumVariant "," EnumVariant { "," EnumVariant } [ "," ] ">"
               |  "<" Newline INDENT EnumVariant { ( "," | Newline ) EnumVariant } [ "," ] DEDENT ">"
EnumVariant   ::= UpperIdentifier [ "(" TypeName ")" ]
```

Declares a named record, enum, ramification, growable array, or generator instantiation.

**Record declarations.** The parenthesized form (`#type Name (...)`, as well as `#packed (...)` and `#packed uN (...)`) separates fields with commas or, in multiline declarations, with newlines between aligned fields sharing the first field's indentation (`E2015` when multiple fields appear on the same line without a comma or when a comma-free sibling field is misaligned; deeper indentation continues the current field's type or default expression). The indent-based form (`#type Name` followed by an indented block of `field: Type` lines) likewise separates aligned fields by newlines or commas, and a field whose own `field:` is followed by a deeper-indented block declares a nested inline record type. Function parameter lists in `(A, B => C)` always require commas between parameter types. The type name becomes a coercion/constructor function (§2.10) and is reserved.

**Enum declarations (`EnumTypeDecl`).** An enum declares at least **two** named variants (`E2070`) enclosed in `< ... >` (distinguished from a `RamTypeDecl` by the absence of a top-level `|`). Each variant label must start with an uppercase letter (`E2071`) and be unique within the enum (`E2074`). Variants may be bare unit labels (`Red`) or carry a payload type or record field list in a single pair of parentheses (`Some(String)`, `Add(Expr, Expr)`, `Ok(w: Int, h: Int)`; redundant double parentheses `Add((Expr, Expr))` are rejected with `E2083`). Multi-line block declarations may separate aligned variants by newlines with optional commas; multiple variants on the same line require commas (`E2076`), and comma-free sibling variants must align with the first variant (`E2075`).
- **Construction**: `EnumName(Variant)` constructs a unit variant; `EnumName(Variant, payload)` constructs a payload-bearing variant (`E3096` unknown variant, `E3097` missing payload, `E3098` payload on unit variant, `E3099` payload type mismatch). Unambiguous unit variant labels may also be referenced bare (`Red`) or qualified (`Color::Red`, `mod::Color::Red`; `E3105` when an unqualified unit label is declared by multiple enums).
- **Pattern matching**: Matched in choice expressions using bracket guards: `[Variant]` (unit or ignored payload; `[Variant _]` is rejected by `E2109`), `[V1, V2]` (multi-variant OR guard), `[Variant x]` (juxtaposed payload binding without parentheses), or deep nested patterns `[Add (Lit a, Lit b)]`. Value-producing choices over an enum must cover all variants or include a trailing `|` fallback (`E3102`).
- **Equality & Reflection**: Enums support `==` and `!=` (provided no variant payload contains a function type, `E3084`), and reject ordering operators `<, <=, >, >=` (`E3127`). At compile time, `?EnumType` yields the number of variants and `EnumType.(i)` yields the `i`-th variant's label as a `String` (`E3170`, `E3171`).

**Packed records and bitfields.** A record declaration or colon type declaration
can be marked `#packed`:
```dva complete
Header: #packed (a: u8, b: u16, c: u8)
```
Packed records have byte alignment with zero interior or tail padding
(`#size Header` is 4 bytes). Integer bitfield definitions specify a backing
integer type (`u8`, `u16`, `u32`, `u64`) with per-field bit widths:
```dva complete
TcpFlags: #packed u16 (
   fin: 1, syn: 1, rst: 1, psh: 1,
   ack: 1, urg: 1, ece: 1, cwr: 1,
   ns: 1, res: 7,
)
```
The sum of all field bit widths must equal the backing integer width (`E3153`).
Field access reads/writes via shift and mask on the backing integer.

```dva complete
#type Record
   foo: Int
   person:
      name: String
      age: Int
   address: String
```

declares `Record` with fields `foo: Int`, `person` (a nested record), and
`address: String`.

A type declaration is introduced by `#type` before the name, so it is
unambiguous against a forward annotation (`r: Record` — a lowercase name
followed by `:` and a type). `:` alone never declares a type; it only
annotates a binding or a function signature (`fun: <Int|> => Int`).

**Repeated and slice types.** `(Int * 5)` is a fixed record of five `Int`s
(5-element homogeneous record); `Int[]` is a dynamic slice (a size-less
view over an array of `Int`, valid only as the sole element of a type
signature). A slice is stored by reference; a repeated/fixed record is stored
inline.

**Growable arrays.** `#type Values Value{}` declares a growable array type
whose elements are `Value`; `Value{100}` names an initial capacity of 100 (0
= default 16). A variable is typed with the declared name (`xs: Values`) or
materialized empty with `xs = Values`. It is a Builder-shaped
`{ len, data, cap }` struct over a run-time-sized element buffer:

```dva complete
#use io
#type Ints Int{}
xs: Ints
xs += 42                      // append (first append creates the struct+buffer)
io::out $ ?xs                 // length (0 before any append)
io::out $ (xs(1) | _ | _)     // read: <elem | Error>; unwrap-or-panic on OOB
xs(1) = 7 !| _                // write: < | Error>; write-or-panic on OOB
view = xs(0..?xs)             // a T[] slice view over the buffer
grow: Ints => Int             // params pass the caller's { len, data, cap }
```

`xs += v` appends (first append at runtime creates the `{ len, data, cap }`
struct + buffer once, so loops are safe); an element type is appended as
either that exact type or an integerish value into an integerish array.
An indexed read `a(i)` is a `< elem | Error >` ram (RamPP): in-bounds carries
the element, out-of-range or an uninitialized array carries the core `Error`.
An indexed write `a(i) = v` is a `< | Error >` ram (RamNP): the first slot is
a bare unit, the second slot is the core `Error`. The idiomatic
unwrap-or-panic / write-or-panic forms are `a(i) | _ | _` and `a(i) = v !| _`
(`!|` is sugar for `| (void) |`, skipping the void first slot); unwrapping the
`Error` branch aborts with the Error's fields (`Error <code>: <msg>` /
`at <file>:<line>:<col>`).

A declaration may instead introduce a **ramification (variant) type**:

```
RamTypeDecl ::= "<>"                    (* RamNN: both branches unit *)
              | "<" TypeName "|" ">"    (* RamPN: left payload, right unit *)
              | "<" "|" TypeName ">"    (* RamNP: left unit, right payload *)
              | "<" TypeName "|" TypeName ">" (* RamPP: both payload *)
```

The `|` separates the positive (left) and negative (right) polarity slots.
Each slot either carries a payload of the declared type or is a bare unit
branch. Construction coerces an existing ramification literal through the type
name, verifying the tag and payload against the declared slots:

```dva complete
#type CompilerDiagnostic < String | (Int, String) >
d = CompilerDiagnostic(<+ "Success" ->)   // first slot, payload String in RamPP
e = <- (404, "Type error") +> $> CompilerDiagnostic  // second slot, payload (Int, String) in RamPP
```

**Recursive and forward-referenced types.** A ram/enum declaration registers
its name before its body parses, so a payload may reference the type itself
(`#type Tree <Leaf(Int), Branch(Tree[])>`). A type atom naming a
not-yet-declared type is a **forward reference**: it defers to a placeholder
that codegen resolves against the fully-registered type table, so declarations
may be mutually recursive across separate `#type` statements
(`#type Expr <Pick(ChoiceExpr)>` before `#type ChoiceExpr (cond: Expr, …)`).
A deferred name that is never declared is reported at end-of-parse as
`E2014` "Unknown type name".

**Type-generator instantiation.** A `#type` name whose schema is a call to a
type generator (§2.14) declares the generated type: `#type IntPair Pair(Int)`
binds `IntPair` to the result of instantiating `Pair` with `Int`. The
generator is evaluated at compile time and the resulting type is registered
under the new
name, usable in any annotation (`x: IntPair`).

### 2.6 Assignments & Declarations

```
AssignmentStmt ::= Identifier "=" Expr
                 | Identifier ":=" Expr
                 | Identifier "::=" Expr   (* legacy global mutation *)
                 | Identifier "+=" Expr    (* in-place Builder append *)
                 | Identifier ":" TypeName
                 | "::" Identifier "=" Expr  (* marked global declaration *)
                 | "::" Identifier ":=" Expr (* marked mutable global *)
                 | "::" Identifier ":" TypeName (* marked global annotation *)
                 | RawMemoryExpr "=" Expr
                 | MemberExpr  "=" Expr
                 | MemberExpr  ":=" Expr
                 | CallExpr    "=" Expr
                 | CallExpr    ":=" Expr
```

- `=` declares an **immutable** binding. Re-assigning an immutable binding is
  an error (`E3033`).
- `::name = v`, `::name := v`, `::name: T` declares a **marked global variable**.
  Inside functions, writing `name = expr` (or `::name = expr` or legacy
  `name ::= expr`) mutates the marked global without creating a local shadow.
- `::=` is legacy **global mutation**: `x ::= v` writes the module/global
  binding `x` (the `::` mirrors module access), bypassing any function-local
  shadow — a function's `x = v` / `x := v` always bind a fresh local unless
  the global was declared with `::name`. The target must already exist
  (`E3123`); mutability of the global is ignored.
- `:=` declares a **mutable** binding; it may be re-assigned later.
- `?b = n` is the **Builder length-set** (report model): it writes the
  integerish `n` into the Builder's `len` field without rebinding the name —
  allowed even on `=`-bound Builders (a mutation, not a re-assignment). This
  is how an FFI read's byte count is recorded:
  `n = libc::recv(fd, *req, 4096, 0)` then `?req = n`.
- `+=` is the **in-place Builder append**: mutates the Builder's buffer
  (equivalent to the old destructive `b + c`), regardless of the binding's
  mutability. Its RHS parses at the addition tier, so a following `|` still
  belongs to an enclosing choice. Only Builders support `+=`.
- A declaration with a type annotation and no initializer — `Identifier ":"
  TypeName` — is a **forward annotation**: it binds the name and type but
  allocates no storage. Reading the variable before its first write is a
  compile error (`E3045`); the first write allocates the storage.
  Annotated declarations with an initializer (`x: Int = 5`) are not a form;
  coerce the value instead (`x = Int(5)`). A `:` annotation never declares a
  type — types are declared with `#type` (§2.5) — so a signature like
  `fun: <Int|> => Int` is unambiguous.
- **Field-initialization tracking.** A forward-annotated composite is built
  with **no zero-fill**: the compiler tracks which fields are definitely
  written and rejects reads of unwritten fields (`E3130`). A field write
  (`x.a = v`) marks `a` written; a whole-value assignment (`x = <record>`)
  marks the record whole-initialized. A homogeneous record (array) requires
  whole-value initialization before any element is read or written (`E3131`).
  Definite initialization is **must-init**: a field written in only some
  choice branches is not initialized after the join. A partially-initialized
  composite may not be passed to a function (`E3132`), since the callee could
  read an unwritten field. Nested records are tracked recursively.

### 2.7 Expressions

```
Expr         ::= FnExpr
               | ChoiceExpr
               | CycleExpr
               | AssignmentExpr
               | BinaryExpr

PrimaryExpr  ::= Literal
               | Variable
               | UnaryExpr
               | DollarCall
               | ParenCall
               | MemberExpr
               | RawMemoryExpr
               | VariantExpr
               | CycleJumpExpr
               | TupleExpr
               | RepetitionExpr
               | BuilderExpr
               | "(" Expr ")"

Literal      ::= Integer | Float | Character | String

Variable     ::= Identifier

UnaryExpr    ::= "!" PrimaryExpr          (* type-directed Flag negation, §2.7.1 *)
               | "?" PrimaryExpr          (* length/count, §2.7.2 *)
               | "&" PrimaryExpr          (* buffer address / data pointer, §2.7.2; no space *)
               | "+" PrimaryExpr          (* Builder freeze into String, §2.7.2; no space *)
               | "++" PrimaryExpr         (* deep copy *)
               | ".!." PrimaryExpr        (* bitwise not *)
               | "-" PrimaryExpr          (* desugars to 0 - x *)
               | "#size" TypeName         (* compile-time type size in bytes *)

DollarCall   ::= ( Identifier | QualIdentifier ) "$" Expr
ParenCall    ::= ( Identifier | QualIdentifier ) "(" CommaArgs ")"
ChainCall    ::= ParenCall { "(" CommaArgs ")" }   (* apply the returned function value *)

CommaArgs    ::= [ Expr { "," Expr } ]

MemberExpr   ::= PrimaryExpr ( "." | "::" ) Identifier

QualIdentifier ::= Identifier "::" Identifier

RawMemoryExpr ::= "@[" Expr [ TypeName ] "]"    (* "@[addr]" is a bare
                                                   pointer; "@[addr Prim]" is a
                                                   volatile typed load of Prim;
                                                   "@[addr RecordType]" is a
                                                   zero-copy record view *)

RepetitionExpr ::= Expr "{" Integer "}"     (* N copies of Expr *)

BuilderExpr   ::= "{" Expr "}"              (* Builder with capacity Expr *)

CycleJumpExpr ::= ("-->" | "--^") [ Integer ]
```

A call whose result is itself a function value may be applied again with a
further argument list — `f(x)(y)` calls the function returned by `f(x)` with
`y`, and `f(x)(y)(z)` chains on. This is the postfix form of the infix apply
`f(x) $ y`; the callee's type comes from the value, so its arity must match
the supplied arguments.

Whitespace between the function expression and the opening parenthesis is
forbidden (`E2032`): `f (x)` is a syntax error; write `f(x)` or `f $ x`.

**Repetition.** `expr {N}` (with `N` a positive integer literal) expands to a
record of `N` copies of `expr`: `0 {3548}` is 3548 zeros. A `{` that **starts**
an expression is the Builder literal (§3.7), so `{a * 3 * 4}` is a Builder
whose capacity is `a * 3 * 4`, and `*` stays multiplication inside the braces.
Inside a record literal a `{N}` group splices flat: `(0, 1 {3}, 2)` is
the 5-element record `[0, 1, 1, 1, 2]`.

**Compile-time size.** `#size T` (also `#size T`; a parenthesized single
unnamed type unwraps) is a compile-time unary operator over a **type**, not a
value: it folds to an `Int` constant equal to the byte size of `T`. Scalars
use their LLVM ABI size (`Int`/`Rune`/`Float`/pointer-sized types = 8,`i32`/`f32` = 4, `i16` = 2, `i8`/`i1` = 1). Composite record types use the
arena-floored size the language allocates and strides by (≥ 16 bytes).
Examples: `#size Int` is 8, `#size(Int * 2)` is 16, `#size Pt` for
`#type Pt (x: Int, y: Int)` is 16. The operand may be a declared record type or a
record type literal (`#size((x: Int, y: Int))`).

**The `!|` operator.** `X !| Y` is sugar for `X | (void) | Y`: a void first
branch (the first slot matches and yields nothing) followed by `Y` parsed
as if introduced by a plain `|`. It pairs with ram writes whose first slot
is a bare unit: `a(i) = v !| _` (write-or-panic) skips the void first slot
and unwraps the second (Error) slot, aborting if the write was out of range.

### 2.7.1 The `!` family — type-directed dispatch

`!` is a **single prefix operator with two meanings, chosen by its operand's
static type** (no syntax/kind special-casing — §3.3.1, B8/E15):

| operand type | `!x` means | result type |
|---|---|---|
| `Ramification` (a Flag unit `<+>`/`<->`, or a unit ram) | logical negation | `Ramification` |
| `Builder` | **freeze** into a String (consumes the Builder, O(1) buffer transfer) | `String` |
| anything else (Int, Float, String, Record, RawPtr, Rune, …) | **compile error** (`E3008`) | — |

`!` no longer measures String length — that is the separate `?` operator
(§2.7.2). Builder creation is **not** a `!` meaning — it is the brace literal
`{expr}` (§3.7). Examples:

```dva partial reason="fragment: b, is_digit, and c are defined by the surrounding prose"
b = {4096}         // Builder with capacity ~4096; len 0
b += 'h'           // push a byte in place
b += 'i'
s = +b             // freeze: s is "hi", b is dead thereafter
?"hello"           // => 5 (byte length)
!is_digit(c)       // negate the ramification (truth flag)
```

```dva expected-error=E3187
!4096              // '!' on an integer is not allowed
```

`.!.` is a separate operator and remains **bitwise NOT** (integerish operands
only); the plain `!` strictly performs logical negation of Flag ramifications.
There is no "logical not of a number" meaning (numbers have no truthiness — test
them with a comparison, which yields a ramification). `+b` is Builder freeze.

### 2.7.2 The `?` / `&` unary family

- `?s` — the **byte length** of a String (generation-masked, no mutation).
- `?b` — the **written byte count** of a Builder (a pure read; no freeze).
- `?a` / `?m` — a growable array's element count / a map's entry count.
- `?rec` / `?sl` — a homogeneous record's element count (compile-time) / a
  slice's runtime length. `?` is the **single** length operator; there is no
  `a(*)` form.
- `&s` — the String's **data pointer** as a `RawPtr` (the FFI read seam / C
  in-arg, e.g. `write(fd, &s, ?s)`).
- `&b` — the Builder's **writable buffer address** as a `RawPtr`, for FFI read
  targets. Requires **no trailing whitespace** (`&b`). Unary `*` is eliminated;
  `* x` with a space is the multiplication section. Inside a call, `f(&b)` is
  the unary address.
- `&rec` / `&tup` — the memory address of a record, tuple, array, or slice.
- `&scalar` — the address of a scalar local variable (`Int`, `Float`, `i8`..`u64`, `Rune`, `Flag`)
  in downward **call-argument position** (Strategy 1: FFI out-parameters). Storing or returning
  a scalar stack address is rejected (`E3078`). `Addr(...)` casts are restricted strictly to
  integerish types and pointers; casting composites or buffers to `Addr(...)` is `E3180`.

This is the whole FFI-read pattern, with no `malloc`/`free`:

```dva partial reason="fragment: fd comes from the surrounding FFI context"
req = {4096}                              // Builder: len 0, cap 4096
n = libc::recv(fd, &req, 4096, 0)         // bytes land in the buffer
?req = n                                  // record how many arrived
s = +req                                  // String of exactly n bytes
```

### 2.7.3 String and Builder call-dispatch

A String or Builder name used as a call target dispatches on its single
argument's shape (see §3.6):

- `s(i)` — **String byte read**: bounds-checked byte at index `i`, returns
  `Int`. To get the *length*, use `?s`.
- `s(a..b)` — **String view**: a NEW String sharing the parent's buffer over
  the half-open range `[a, b)`; a view, not a copy.
- `b(i)` — **Builder peek**: bounds-checked read of one *written* byte.
- `b(a..b)` is an error (`E3064`): a Builder has no views.

### 2.7.4 Postfix unwrap `!!`

Postfix `!!` is sugar for `x | _ | _` at Tier 16 (postfix/apply,
left-associative). It extracts the positive payload of a ramification and
aborts on the negative slot:

- On `RamPP <A | B>`: yields `A` (positive payload) and aborts on the negative
  slot (triggering poisonous `Error` panic if `B` is `Error`).
- On `RamPN <A | >`: yields `A` and aborts on the negative unit slot.
- On `RamNP <| B>`, bare `Flag`, or non-ram operand: compile error (`E3091`).

Because `!!` sits at Tier 16, it chains naturally without parentheses:
`users(i)!!.name`, `matrix(r)!!(c)!!`, and `a(i)!! $> process`.

### 2.8 Functions

Function definitions are expressions producing a function value. The body may
be a block or a single expression.

```
FnExpr     ::= Identifier { "," Identifier } "=>" ( Expr | Block )
             | "(" Expr ")"                    (* implicit-param lambda: a "_" inside desugars *)
             | Section

Block      ::= Indent { Statement } Dedent
```

- **Bare (parentless) parameters**: `add = a, b => a + b`. Parameter lists
  are never parenthesized — `(a, b) => ...` is a grammar error. **Inline
  parameter types are removed** — `a: Int, b: Int => ...` is rejected; types
  live only in a separate signature. The parameter list is **mandatory for
  `=>`** — `=> body` with no parameters is a parse error (`E2050`); the one
  implicit form is a parenthesized expression containing `_`.
  **Explicit `_` as a function parameter is forbidden**: `_ => ...`,
  `x, _ => ...`, `items @ _ => ...`, `r | _ => ...`, and `#! _ => ...` emit
  `E2040`. Use a named parameter (e.g. `ignored`) or omit unused binders.
- **Signatures**: a full function type is declared separately, as a forward
  annotation whose type is a function signature:
  `fun: Int, String => < Int | >` (positional parameter types, `=>`, return
  type), then `fun = x, s => body`. The signature types the parameters
  (callers must pass matching args, `E3094`), fixes the return LLVM type, and
  validates the body's value against the declared return (`E3093`); a
   parameter-count mismatch is `E3092`. The parameter types are always written
   flat and separate (`Int, Int => Float`); a function type used *as a type*
   (a param or return type) is parenthesized but still flat inside:
   `(Int, Int => Int)`. The doubly-parenthesized `((Int, Int) => Int)` form is
   a parse error (`E2082`): the inner `(Int, Int)` would parse as a single
   record parameter. Without a signature, parameters are typed from each
   call site (the first call's argument types). A function **read as a value**
   before any call and without a declared signature has unknowable parameter
   types and is rejected (`E3128`) — parameter types are never defaulted to
   `Int`.
- **Unit / void**: the return type `()` is the unit/void type (LLVM
  `void`), the canonical return of a side-effect-only function
  (`tap: Int, (Int => ()) => Int`, `for_each: (Int * 3), (Int => ()) => ()`).
  A function declared `=> ()` discards its body's incidental value and
  returns nothing. `()` is strictly a type, never a value: attempting to
  use `()` as an expression or argument (e.g. `f(())` or `x = ()`) is a
  compile error (`E2104`). Empty record literals do not exist.
- **Implicit-param lambda**: a parenthesized expression containing a free `_`
  desugars to an implicit single-parameter lambda, carrying exactly one implicit
  parameter `_` (never an explicit list): `(3 - 2 * _)` is an anonymous function,
  `(_ * _)` multiplies its argument by itself, `(_)` is the identity function.
  Only the *innermost* parentheses desugar — a nested group has already become a
  lambda (binding its own `_`) by the time the enclosing group is scanned, so
  `(3 - 2 * (_ + 1))` leaves the inner `(_ + 1)` as a lambda and the outer
  `3 - 2 * <lambda>` as a plain expression.
  A cycle body `arr @` followed by an indented block is the same implicit form
  (`_` and `_i` bound); `5 @ (print_int $ _)` is the inline spelling.
- **Section**: `+ 10` (an operator with trailing whitespace and an rhs) is
  an implicit single-parameter function over `_`, usable wherever a function is expected.
- `=>` binds tighter than the infix-apply `$`: `fun $ x => x + 1` is
  `fun $ (x => x + 1)`, and `x => x + 1 $ v` is `(x => x + 1) $ v`; `$>`
  binds tighter still, so `x => x + 1 $> process` is `x => process(x + 1)`.
- Function values are first-class: they may be stored, passed, returned, and
  called. A named function is called by name; a function value is called
  through the feed/apply operators.
- **Nested functions**: a function body may define local functions
  (`inner = b => b * 2`). A lambda expression captures an enclosing
  function's locals by value (copy-at-capture, carried in a
  `{ fn_ptr, env_ptr }` fat pointer): `mul2 = a => b => a * b` captures
  `a`, and the captured copy is mutable state owned by the closure. A
  nested *named* function (`inner = y => x + y`) captures the same way —
  it becomes a closure value stored in a variable. A declared
  function-type return (`fun: ... => (T => U)`) types a nested lambda's
  params.
- **Generic functions** (`#! T: Type` compile-time parameters, inferred type
  arguments, monomorphization, compile-time type dispatch) and **type
  generators** are covered in §2.14.
- **Custom operators** (see `process/spec/custom-operators.md`): a
  non-reserved operator symbol (a maximal `.Op` run that is not a built-in
  operator or special token) is an ordinary function name. It can be defined
  (`+++ = a, b => ...`), annotated (`+++ : Int, Int => Int`), called prefix
  (`+++(3, 4)`), or taken as a value (`(+++)`). A
  fixity clause in the forward annotation gives it both binding powers,
  always written explicitly: `+++ : #infix <lbp> <rbp>, Int, Int => Int` —
  the weights are the Pratt `lhs_bp` / `rhs_bp`, and associativity falls out
  (`rbp > lbp` left, `rbp < lbp` right, `rbp == lbp` non-assoc with chains
  rejected). Infix uses desugar to a call: `a +++ b` ≡ `+++(a, b)`.

### 2.9 Choice Expressions

```
ChoiceExpr   ::= CondExpr Branch { Branch }

Branch       ::= ( "|" | "[" Pattern "]" ) BranchBody

Pattern      ::= Expr { "," Expr }       (* value OR-list; matches any of *)
               | Identifier          (* enum variant tag, uppercase *)
               | "(" FnExpr ")"      (* predicate *)

BranchBody   ::= Expr | Block
```

A choice selects the first branch whose condition holds. A branch is either
**bare** (`|` + body, matching a ramification positionally) or **guarded**
(`[ pattern ]` + body). Guarded branches chain **adjacently** — `x [1] "a"
[2] "b"` — with no `|` between them. `|` introduces only a *bare* branch,
legal as the first branch (ram left-slot / positivity) or as the trailing
catch-all; a `|` before a guard (`x [1] "a" | [2] "b"`) is an error
(`E2096`) — chain the guards adjacently instead. Bare `|` in a middle
position is `E2024`. Predicate patterns are
functions: `[(_ > 30)]` (a parenthesized-lambda), `[> 39.0]` (a section), or
`[x => x > 30]`. An enum variant pattern
(`[Id]`) matches a declared enum label and may bind its payload. Ramifications
have no labels — match them positionally with bare `|` branches instead.

A **comma OR-list** in a value pattern (`x [1, 2, 3] body`) matches when `x`
equals *any* of the listed values — equivalent to a chain of `[1] [2] [3]`
guards. Commas are not allowed in predicate patterns (`[< 0, 5]` is a parse
error, `E2052`).

**Precedence.** `[guard]` and `|` branches sit at the SAME tier — the choice
tier — and the choice's scrutinee is the **whole preceding expression**
(looser than every binary operator; tighter only than `$`, `$>`, and
assignments). So `a + b [7] "x" | "y"` is `(a + b) [7] "x" | "y"`, and an
operation *on* a choice value requires grouping it: `(a [7] 1 | 0) || b` —
bare `a [7] || b` binds `b` into the choice (`(a [7] ...) || b` is the
flag-then-operator form only when `[7]` has no body). The `]` closer must be
followed by whitespace (or a delimiter that cannot start a body: `)`, `,`,
`;`, `]`, `}`, EOF), so `[1]body` is rejected while `(x [1])` groups an
empty-body flag choice.

### 2.10 Type Coercion

Coercion is an ordinary call whose callee name is a type name:

```
ParenCall   ::= ( TypeName ) "(" Expr ")"     (* coercion *)
FeedCoerce  ::= Expr "$>" TypeName            (* feed into a type name *)
```

- `i8(x)` `i16(x)` `i32(x)` `i64(x)` `u8(x)`..`u64(x)` `f32(x)` — integer and
  float-width coercion.
- `Int(x)`, `Rune(x)`, `Float(x)`, `String(x)`, `Addr(x)` — named built-in
  types.
- `UserType(x)` — a user-declared record type constructs/coerces a value of
  that type.
- `x $> Int` is equivalent to `Int(x)`.

Type names are reserved: defining a variable or function whose name matches a
built-in or user type is a compile error.

### 2.11 Cycles

```
CycleExpr     ::= Iterable "@" FnExpr [ ">--" BranchBody ]
               | Iterable "@" Expr  [ ">--" BranchBody ]   // function value
               | Iterable "@" Block [ ">--" BranchBody ]   // implicit "_" body

Iterable      ::= RangeExpr | Expr

RangeExpr     ::= [ Expr ] ".." [ Expr ]
```

A cycle iterates `Iterable`, binding each value to the function's parameter
and evaluating the body. Iterables: a range `a..b`, a bare integer `n` (the
range `0..n`), a `Flag` (`<>`) or `Ram` condition expression (re-evaluated
before each iteration; repeats while positive), an array/slice/homogeneous-record
value, a map `K ^ V`, or a **String** (which iterates its *bytes*). The body may
be an inline function (`arr @ i => ...`), a function value (`arr @ show`), or an
indented block (the implicit form, running with `_` bound to the current value
and `_i` to its 0-based index):

```dva partial reason="fragment: arr is defined by the surrounding prose"
arr @
    io::out $ _i   // 0, 1, 2
    io::out $ _    // the element
```

When `Iterable` is a `Flag` (`<>`) or `Ram` condition expression, the condition
is re-evaluated at the start of each iteration and the body runs as long as the
condition evaluates to positive (`<+>` or `<+ ... +>`), acting as a `while`
loop:

```dva partial reason="fragment: nbits, wbuf, and out are defined by the surrounding prose"
(nbits !< 8) @
    out += (wbuf .&. 0xFF)
    wbuf = wbuf .>. 8
    nbits = nbits - 8
```

A String iterable binds one parameter to the **byte value** (an `Int`) and a
two-parameter body to **(byte, index)** — the index is always the **last**
parameter:

```dva run
#use io
"hi!" @ b => io::out $ b   // 104, 105, 33
"abc" @ b, i => io::out $ i // 0, 1, 2
```

The index binding persists after the cycle ends: a `-->` break leaves it at
the number of bytes consumed, so a scanner can build its rest-view with
`s(i..)` (see `std/str.dva`'s `to_int`/`to_hex`). A zero-length String runs
the body zero times with the index at 0.

A growable array iterable (`T{}`) iterates its live elements in index order
(`0..?xs`). The body's first parameter binds the unwrapped element (`T`), and an
optional second parameter binds the 0-based integer index (`Int`):

```dva partial reason="fragment: xs is defined by the surrounding prose"
xs @ elem => io::out $ elem
xs @ elem, i => io::out $ i
```

In the implicit block form (`xs @ ...`), `_` binds the unwrapped element and
`_i` binds the index.

- `-->` breaks out of the innermost enclosing cycle; `--^` skips to the next
  iteration. An integer suffix targets an outer cycle: `-->2` breaks the
  second enclosing cycle, `--^3` continues the third.
- `>--` introduces a cycle-escape branch (its own token; never `|` or
  `[..]`). If a `-->` targeting the cycle fires, control transfers to the
  branch and its value becomes the result of the cycle expression. If the
  cycle completes without a break, the result is a zero value of the branch's
  type.

### 2.12 Ramifications

```
Ramification ::= "<+>" | "<->" | "<++>" | "<-->"
               | "<+" Expr "+>"        (* first slot, with payload; second slot is unit (RamPN) *)
               | "<+" Expr "->"        (* first slot, with payload; second slot is a payload slot (RamPP) *)
               | "<-" Expr "->"        (* second slot, with payload; first slot is unit (RamNP) *)
               | "<-" Expr "+>"        (* second slot, with payload; first slot is a payload slot (RamPP) *)
```

A ramification is a two-slot tagged value; the slots are positional (first /
second), never named. The unit forms carry no payload; the payload forms wrap
one expression in the slot selected by the prefix (`<+` = first slot, `<-` =
second slot). The closer decides whether the *other* slot also carries a
payload: a closer whose sign matches the prefix (`<+ … +>`, `<- … ->`) pairs
with a unit second slot (RamPN / RamNP respectively), while an opposite-sign closer
(`<+ … ->`, `<- … +>`) makes the other slot a payload slot as well (RamPP).
Because the closer is a two-character token, `<` and `>` are never delimiters:
comparisons inside a payload are written unbracketed, e.g. `<+ a > b +>`.

The four unit spellings carry four distinct tags: `<+>` and `<->` are the
bare two-slot truth flags (both slots unit, bare i1 values) — `<+>` is the
first-slot flag, `<->` the second. `<++>` and `<-->` are the heap unit forms
(`{ tag, payload }` values): `<++>` is the canonical unit of a payload ram's
first slot, `<-->` the canonical unit of its second slot. A heap ram's unit
branch must use the canonical spelling for its slot: `'<++>'` for the first,
`'<-->'` for the second. `'<+>'`/`'<->'` are the RamNN i1 flags and are
**not** a heap-ram unit (`E3083`). All four ramification shapes are distinct
types and are not compatible with each other; there is no implicit coercion
or subtyping between any of the four shapes.

Ramification values are matched in choice branches **positionally** with bare
`|` branches — the first branch tests the first slot, the second branch the
second (`r | a => ... | b => ...`); the matched slot's payload is bound to the
branch's lambda parameter (or a bare branch body to ignore it). This is positional-only: no
keyword names a ram's slots (`[Positive]`/`[Succ]` on a real ram is `E3125`; a
bare `Positive` label is `E3004`). The tag names surface in a ram's polarity match: `writeln $ (x | "Positive" | "Negative")`.
output (`Positive`/`Negative`) are internal display strings, not syntax
(see `AGENTS.md` HARD RULES).

### 2.13 Records, Arrays, Slices

```
ArrayType    ::= "(" TypeName "*" Integer ")"    (* fixed array: N of T *)
               | "(" TypeName "[" "]" ")"        (* dynamic slice: T[] *)

TupleExpr    ::= "(" Expr { "," Expr } ")"
               | "(" [ Identifier "=" ] Expr { "," [ Identifier "=" ] Expr } ")"
```

- A record is a comma-separated list of expressions (each is a full
  expression, so `(0 * 3548)` is multiplication, not repetition — use
  `0 {3548}` for repetition).
- `(expr)` is a grouped expression and unwraps to the inner value; single-field
  records (`(a: T)`, `(expr,)`) are illegal (`E2084`) — a record must have at
  least 2 fields.
- A `{N}` group inside a record splices flat.
- Indexing: `arr(i)` reads element `i`; `arr(a..b)` produces a slice. Length
  is the unary `?` (`?arr`, `?sl`), never a `(*)` form.
- Records may have named fields (`(name = value, ...)`); fields are accessed
  with `.field`, elements with `(i)`. Record value literals use `=` for named
  fields (never `:`; `:` is strictly reserved for type declarations, `E2107`).

### 2.14 Metaprogramming — compile-time types (`#!`, `Type`)

Compile-Time Function Execution (CTFE): types are first-class values at
compile time, generic functions are monomorphized per instantiation, and a
type generator yields a type. There is **no RTTI** — types are fully erased at
runtime, and a `Type` value never exists in a running program (`E3129`).

**`Type`.** `Type` is a built-in compile-time type name: a `Type` value names a
type (a primitive, a composite, or a generated type). It is *erased* — usable
only in compile-time positions, never as a runtime value.

**Compile-time type parameters.** A function signature declares an erased type
parameter with `#! Name: Type`:

```dva complete
identity: #! T: Type, T => T        // signature: T is compile-time, x: T, returns T
identity = x => x                   // body binds only the runtime param

apply: #! T: Type, #! U: Type, (T => U), T => U   // a function-typed param
apply = f, x => f $ x
```

The single-type-parameter case may instead be written **inline**, in the
lambda's parameter list, with the type parameter inferred:

```dva complete
id   = #! T, x => x                 // T is the type of x
add  = #! T, a, b => a + b          // both params typed T; "+" dispatches per T
```

**Monomorphization.** A generic function is instantiated once per inferred
type — `id(42)` compiles `id::Int`, `id("hi ")` compiles `id::String`. The
type parameter is inferred from the runtime argument types (a param typed by a
type variable binds that variable to the argument's type). The body is
compiled for each binding, so type-directed operators (`+`, `?`, comparisons)
resolve per instantiation. The same operator dispatches differently:
`add(3, 4)` is integer `+`, `add("a", "b")` is string concatenation.

**Compile-time type dispatch & structural type-shape patterns.** A choice whose
scrutinee is a `Type` (`T [...]`) or whose condition is a type comparison
(`T == Int`, `T != String`) is resolved at compile time and pruned to the taken
branch — untaken branches are never codegen'd, so they may use operations
only valid for the matched shape:

```dva complete
length_or_id = #! T, x =>
   T == String | ?x | x           // ?x only valid when T is String
```

In `T [...]` choices on a `Type` scrutinee, branches may match exact types
(`[Int, i32, u64]`), predicates (`[type::is_numeric]`), or structural type-shape
patterns that optionally extract inner component types into compile-time `Type`
binders:

| Guard Pattern | Matches | Extracted `Type` Binders |
|---|---|---|
| `[()]` | Unit (`()`) | — |
| `[<>]` or `[<\|>]` | Flag (`<>`, both slots unit) | — |
| `[<P\|>]` | Option ramification (`<P \| >`) | `P`: positive payload `Type` |
| `[<\|N>]` | Fallible ramification (`< \| N>`) | `N`: negative payload `Type` |
| `[<P \| N>]` | Either ramification (`<P \| N>`) | `P`, `N`: slot payload `Type`s |
| `[E{}]` | Growable array (`E{}`) | `E`: element `Type` |
| `[E[]]` | Slice (`E[]`) | `E`: element `Type` |
| `[(E * ..)]` | Any fixed-size homogeneous tuple (`(E * N)`) | `E`: element `Type` |
| `[(E * 4)]` | Fixed-size homogeneous tuple of exact length `4` | `E`: element `Type` |
| `[K ^ V]` / `[String ^ V]` | Map (`K ^ V`, or fixed key `K` with binder `V`) | `K`, `V`: key and value `Type`s |
| `[(..)]` | Any record type | — |
| `[<..>]` | Any nominal enum type | — |

Type equality is structural unless a nominal user type or enum is matched.

**Compile-time properties on `T: Type`.**
- `#size T` / `#align T` — ABI byte size and alignment (`Int`).
- `T.name` — declared `#type` name if nominal/aliased, or canonical type name (`String`).
- `T.zero` — zero/default-initialized value of type `T` (honoring `f.default` on record fields and recursively zeroing nested fields; empty `E{}` / `K ^ V` for growable containers; `<->` for `<>`; `<-->` for `<P|>`).
- `?T` — compile-time arity (`Int`): field count for records, element count `N` for `(E * N)`, variant count for enums, `0` for `()`.

**Compile-time record & enum unrolling (`T @ f =>`, `T @ v =>`).**
Iterating a `Type` directly with `@` unrolls the loop body at compile time over `0..?T`:
- When `T` is a record (`[(..)]`), `T @ f =>` binds a compile-time field cursor `f`:
  - `f.idx` (`Int`), `f.name` (`String`), `f.type` (`Type`), `f.default` (`<f.type|>`).
  - `val.(f)` reads field `f.idx` with static type `f.type`; `val.(f) = expr` writes field `f.idx` (marking it initialized for definite-assignment tracking).
- When `T` is an enum (`[<..>]`), `T @ v =>` binds a compile-time variant cursor `v`:
  - `v.idx` (`Int`), `v.name` (`String`), `v.type` (`Type`, `()` for unit variants).
  - `val.(v)` inspects whether `val`'s active tag is `v.idx`, returning `<v.type|>` (`<+ payload +>` / `<++>` on match, `<-->` otherwise).
  - `T(v)` constructs unit variant `v`, and `T(v, payload)` constructs payload variant `v` (or unit variant `v` when `v.type [()]` and `payload` is unit).

**Type generators.** A signature whose parameters are all compile-time and whose
return is a type is a *type generator* — a compile-time function yielding a
type:

```dva complete
Opt: #! T: Type => < T | >          // the type IS the result; no "=" body
#type IntOpt Opt(Int)               // IntOpt is the ram < Int | >
#type StrOpt Opt(String)
```

A type-generator instantiation (`#type IntOpt Opt(Int)`) is evaluated at
compile time (the type variable is substituted) and registered as a declared
type.

**`#! expr`.** A `#!` prefix on an expression folds it at compile time (CTFE)
to a constant. The evaluable subset — literals, `+ - * / %`, comparisons,
bitwise, `&&`/`||`, `!`/`.!.`, string `+`, `?s`, scalar/string compile-time
choices, and **calls to pure user functions** (including generic and
higher-order ones) whose bodies stay in the subset — is interpreted by a
tree-walking CTFE evaluator with a JIT fallback; anything else is a compile
error (`E3130`):

```dva partial reason="fragment: max2 is a pure user function defined elsewhere"
x = #! 2 + 2          // x is the constant 4
n = #! ?"hello"       // n is the constant 5
m = #! max2(3, 7)     // 7 — a call to a pure user function
```

---

## 3. Semantics

### 3.1 Types

Native type names are **uppercase**: `Int`, `Float`, `String`, `Addr`,
`Rune`, `Builder`, `Error`, `Type`. The compiler recognizes ONLY these, plus
the LLVM lowercase scalar type names (`i8`/`u8`..`i64`/`u64`, `f32`, `void`,
`ptr`), plus composite types. No other type names are ever recognized.

| Type name | Meaning |
|-----------|---------|
| `Int` (`i64`) | signed 64-bit integer |
| `i8` `i16` `i32` `i64`, `u8`..`u64` | fixed-width signed/unsigned integers |
| `Rune` | a Unicode scalar value (0..0x10FFFF); **i64-backed**, interoperates with `Int` |
| `Float` (`f64`) | double-precision float |
| `f32` | single-precision float |
| `String` | an immutable, length-prefixed, NUL-reserved byte string (fat `{ len, data }` pointer, §3.6) |
| `Builder` | a uniquely-owned growable byte buffer (`{ len, data, capacity }`), writable; the only mutable string type, §3.7 |
| `Addr` (`ptr`) | raw pointer |
| `Type` | a compile-time-only type value naming a type; **erased** at runtime (§2.14). Never a runtime value. |
| function type | a first-class function value (a `{ fn_ptr, env_ptr }` closure pointer); the full signature (params + return) is a `.Function` type carried like a ram's slot layout. Written flat: `Int, Int => Float` (§2.8) |
| record | named/positional tuple schema |
| enum | tagged union of $\ge 2$ uppercase-named unit or payload-bearing variants (`#type Name < V1, V2(T) >`) |
| array / slice | fixed / variable-length sequences |
| user types | composite schemas declared with `#type Name ...`, referenced by name |

`rune` literals (`'a'`) are `Rune`-typed; `Rune(x)` coerces an `Int` to a
`Rune` (identity at i64), so `'a' + 1` and `'a' < 127` work directly.

**Ramification** — the single binary sum kind, with **four instances** distinguished
only by their slot layout (in the ram's `TypeInfo`), never by a separate
`ValueType`: `Flag` (`<>`, both slots unit — a bare i1), `Option`
(` < A | >`, positive payload / negative unit), `Either` (`< A | B >`, both
payloads), and `Fallible` (`< | B >`, positive unit / negative payload). The
runtime representation is either a bare i1 (Flag), a null-niche pointer, an unboxed `{ i1, i64 }`, or a heap
`{ i64 tag, ptr payload }` pointer; codegen picks which
via the ram TypeInfo or the value's actual shape. `&&`/`||`/`!` operate on
ram truthiness. User-defined **Enums** (`#type Name < V1, V2(T), ... >`) are distinct nominal tagged union types declaring at least two uppercase variants and matched with `[Variant]` guards.

### 3.2 Value Model

- **Immutability**: `=` bindings cannot be re-assigned. `:=` bindings can.
- **Zero-initialization**: composite values written with a whole-value `=`/`:=`
  assignment are initialized as a unit. A forward-annotated composite built
  field-by-field is **not** zero-filled — field-init tracking (§2.6) rejects
  reads of unwritten fields instead.
- **Strings are immutable values** (a fresh Builder is the *only* mutable
  string surface, §3.7). There is no writing through a String: `s(i) = b`,
  `s.len = n`, `s.data = p`, and `String(ptr)` construction are all **compile
  errors** (`E3065`/`E3066`/`E3067` — A1). Strings are *built* (literals, `+`,
  `++`, `s + n`, `+b` freeze) and only ever *read*. Length is `?s`, the data
  pointer is `&s` — **Strings have no member access at all** (`.len` and
  `.data` are removed, §3.6.3).
- **`{ len, data }` ABI**: a String is a fat pointer; `data[len]` is reserved
  to be NUL so an owned whole string crosses a C boundary without copying. The
  `len` word also carries a generation tag (§3.6.2) to detect stale strings
  after an arena restore. Reading a stale string aborts `E4010`.
- **Lambda closures capture by value; nested named functions do too**
  (§2.8).

### 3.3 Operators — unified table

Every operator, with its **operand types and result type**. One table covers
all operator semantics; precedence/associativity is in §1.6 (generated from
`process/spec/operators.yaml`, the single source of truth — descriptions and
per-operator annotations live there; §3.3 keeps the fine-grained operand
matrix). "integerish" = `Int`, `Rune`, `i8`..`u64`. Ramifications (§2.12) are
the truth values `<+>` (positive) and `<->` (negative).

| Operator | Operands | Result |
|---|---|---|
| `+` | `Int, Int` | `Int` |
| `+` | `Float/Float32`, numeric (promotes `Int`) | `Float`/`Float32` (wider wins) |
| `+` | `Rune, Int` (or `Int, Rune`) | `Int` (Rune is i64-backed; interoperates: `'a' + 1` works) |
| `+` | `String, String` | `String` — concat, new buffer |
| `+` | `String, n` (integerish, `n` ∈ 0..255) | `String` — **append one byte** (new String, `E4008` if out of range) |
| `+` | `Builder, c` (integerish, `c` ∈ 0..255) | `Builder` — **PURE append**: a NEW Builder holding b's bytes + c (O(len) copy); `E4007` if out of range |
| `+` | `Builder, s` (String) | `Builder` — **PURE append** of s's bytes (a NEW Builder = b + s) |
| `+=` | `Builder, c` (integerish, `c` ∈ 0..255) | `Builder` — **in-place push**: mutates b's buffer (amortized O(1)); `E4007` if out of range |
| `+=` | `Builder, s` (String) | `Builder` — **in-place append** of s's bytes (grows as needed) |
| `$>` | `lhs, fn` | `fn(lhs)` — feed / reverse application; **multi-arg** (`x $> f(a)` == `f(x, a)` prepend); below the choice tier, left-assoc, RHS absorbs a choice |
| `$>>` | `RamPP/RamPN, fn` | `Ramification` — monadic bind: `lhs | rhs(_) | <- _ +>` (RamPP, negative payload propagates) or `lhs | rhs(_) | <-->` (RamPN, negative unit propagates); `rhs` receives the positive payload and must return the same monad. Any other lhs layout (RamNP/RamNN/non-ram) is `E3091`. |
| `+` | `Addr/RawPtr, Int` (or mirrored) | `Addr` — pointer offset (unsafe) |
| `-` | numeric, numeric | numeric |
| `*` `/` `%` | numeric, numeric | numeric |
| `<` `>` `!<` `!>` | numeric, numeric | `Ramification` (bare Flag) — relational comparisons |
| `==` | numeric, numeric | `Ramification` |
| `!=` | numeric, numeric | `Ramification` — **value inequality**, the complement of `==` (unsigned operands use the unsigned NE predicate) |
| `==` | `String, String` | `Ramification` — **content equality** (length short-circuit then `memcmp`) |
| `!=` | `String, String` | `Ramification` — **content inequality**, the complement of `==` (length short-circuit then `memcmp`) |
| `==` | `Builder, Builder` | `Ramification` — **pointer identity** only (meaningless for uniqueness-checked builders; freeze and compare the Strings) |
| `!=` | `Builder, Builder` | `Ramification` — **pointer identity inequality** |
| `&&` `||` | `heap Ram, heap Ram` or `Flag, Flag` | `Ramification` — short-circuit; the result is the winner with its payload intact. For `&&`, the RHS supplies the positive slot and both negative slots must match; for `||`, both positive slots must match and the RHS supplies the negative slot. A shared slot cannot mix unit and payload or unequal payloads (`E3089`). Flags never coerce into heap rams; write `<++>`/`<-->` explicitly. Comparison flags / `!ram` / predicates stay bare Flags. Non-ram operands (Int truthiness) give a Flag. |
| `.|.` `.&.` | integerish, integerish | integerish (bitwise OR / AND) |
| `.!.` (prefix) | integerish | integerish (bitwise NOT) |
| `.<.` `.>.` | integerish, integerish (count) | integerish — zero-fill (logical) shifts; count masked to operand width - 1 (wrapping modulo width) |
| `++` (prefix) | `String` / `Slice` / Record / Array | deep copy of the operand (fresh buffer); scalars are a reference no-op |
| `!` (prefix) | Flag | Flag negation |
| `+` (prefix, no space) | `Builder` | `String` — freeze into String in-place (§2.7.2) |
| `?` (prefix) | `String` / `Builder` / `Array` / `Map` / `Record` / `Slice` | `Int` — byte length / element·entry count (§2.7.2) |
| `&` (prefix, no space) | `Builder` / `String` | `RawPtr` — the writable buffer address or data pointer (§2.7.2) |
| `-` (prefix) | `Int`/`Float` | desugars to `0 - x` |
| `#size` (prefix) | a **type** name | `Int` constant |
| `$>` | `lhs, fn-or-TypeName` | `fn(lhs)` / coercion result (reverse apply / feed) |
| `$` | `fn, arg` (right-assoc, below choice) | call result: `f $ a` ≡ `f(a)`; **multi-arg** (`f(a) $ b` == `f(a, b)` append); RHS absorbs a choice |
| call `f(...)` | fn, args | fn's result |
| `s(i)` | `String, Int` | `Int` — bounds-checked byte read (`E4006`) |
| `s(a..b)` | `String, Range` | `String` — view (clamped, relative negative offsets, never errors) |
| `b(i)` | `Builder, Int` | `Int` — peek a written byte (bounds-checked `E4009`) |
| `r(i)` | Record/Slice, `Int` | element (bounds-checked for homogeneous records/slices) |
| `r(a..b)` | Record/Slice, Range | same-element slice of the operand |
| `?r` | String/Builder/Array/Map/Record/Slice | `Int` — length/count (bytes for String/Builder; compile-time for records, runtime for slices) |
| `.` | record, field | field value |
| `::` | module, name | module binding |
| `@[expr]` | `Addr` | bare pointer (`Addr`/`RawPtr`), no memory access |
| `@[expr T]` | `Addr`, `T` | volatile typed load of primitive `T` (i8..u64/Int/Rune/Float/Addr); zero-copy record view when `T` is a RecordType |
| `@[expr] = v` | `Addr`, value | volatile store at `v`'s own width (integerish or pointer-shaped) |
| `{N}` (postfix) | expr, `Int` literal | record of N copies |
| `{expr}` (prefix) | integerish expr | `Builder` — new Builder with capacity = expr (§3.7) |
| `-->`/`--^` | — | cycle jump (see §2.11) |

`String` + integerish is *append*; `Builder` + integerish is a *pure* new
Builder, and `+=` is the in-place push. Both range-check the byte to 0..255 at
runtime (never silently mask/truncate).

**Prohibited (compile or runtime error):**
- `String` `-` `*` `/` `%` — no arithmetic on strings.
- `String` `<` `>` — ordering is meaningless on byte strings; only `==`
  content equality exists (use `str::compare` for ordering).
- `==` / `!=` on ramifications (`E3027`) — ram tags are tested in choice
  patterns, not compared.
- `<` `>` `!<` `!>` on ramifications (`E3127`) — ramifications have no
  ordering; test their slots with `|` branches instead.
- `!<` reads as "greater or equal" and `!>` reads as "less or equal". On floats,
  these are ordered comparisons (LLVM `OGE` / `OLE`) and evaluate to false (`<->`)
  if either operand is NaN, distinct from logical negation `!(x < y)`.
- `String + Addr`, `Addr + Addr` — pointer arithmetic is
  disallowed; an `Addr` offsets only by `Int`.
- `.&.`/`.|.`/`.<.`/`.>.`/`.!.` on `Float`/`String`/`Builder`/`Ramification` —
  integerish operands only (`E3057`/`E3058`).

**FFI argument typing (strict).** A foreign `String` param accepts a `String`
only; an `Addr`/`RawPtr` param accepts an `Addr` or a `Record` (passed
by its storage address). There is no `String`↔`RawPtr` interchange and no
automatic `Int`→pointer coercion — write `Addr(x)` explicitly. Write-target
buffers (e.g. `read`/`recv`) are declared `Addr`, never `String`.

### 3.3.1 `!` dispatch (reference)

The meaning of prefix `!` by operand static type — the §2.7.1 table is
the operative spec:

| operand | operation | result | notes |
|---|---|---|---|
| `Ramification` (Flag unit or heap unit ram) | logical negation | `Ramification` | `!` of a positive ram is negative |
| any other type | — | **error** `E3008` | Int, Float, String, Record, RawPtr, … |

### 3.4 Precedence

See §1.6.

### 3.5 Output & input — `std/io`

There is **no builtin `print`**. Output is a plain library feature: the single
fd-parameterized `std/io.dva` module, auto-imported by the prelude and
re-exported as global aliases (`print`, `writeln`, `print_int`, `print_float`,
`print_float32`, `writeln_b`, bound to stdout). They are first-class functions
(passable to `tap` & co.), not compiler special cases.

The **console.log-style writers** are the ergonomic surface: `io::out(...)` /
`io::err(...)` accept a single value OR a record of values of mixed types,
each formatted at compile time (the `#! T: Type` type dispatch), joined with a
single space, and written + newline to stdout/stderr:

```dva complete
#use io
PORT = 8080
io::out(("listening on port", PORT))     // "listening on port 8080"
io::out("plain string")                  // a lone value needs no record parens
io::err(("failed to bind port", PORT))   // stderr
a = 1
b = 2
io::outf((a, b), "{}: {}")               // '{}' placeholders, in order
```

`io::out` covers what used to need separate `writeln` / `print_int` /
`print_float` / `writeln_b` calls: a String, an Int, a Float, a Builder, or
any mix. The value→text dispatch (`show`) renders a String as itself, a Rune
as its byte, Int/Float as decimal (`str::from_int` / `str::from_float`, the
same `%g`-style contract the old builtin used), and a Builder's written bytes.

- `print(s)` / `writeln(s)` — a String's bytes + a newline to stdout.
- `print_int(n)` / `print_float(f)` / `print_float32(f)` — a lone number's
  decimal text + a newline (the prelude's stdout-bound aliases of `io::out`).
- `writeln_b(b)` — a Builder's written bytes + a newline (a pure read).
- `in::read_line(max)` / `in::read_bytes(max)` / `in::read_byte()` — the
  current stdin reads (arena-owned Strings, `os::read`). The planned fd-read
  repertoire is tracked in Gitea issues.
- All writers return () (Void).

Composite values still require a pattern match to extract a printable value
first, and a `RawPtr` has no length to render as text — freeze a Builder with
`+b` and write the String, or write `?b`/`?s` for the byte count. A bare ram
prints as its polarity word via a positional match:
`io::out((x | "Positive" | "Negative"))`.

### 3.6 `String` — the byte-string value type

A `String` is an **immutable, length-prefixed, NUL-reserved byte sequence**,
implemented as a fat pointer `{ i64 len, ptr data }`. Applications never
construct one from raw bytes: literals, operators, and `str::` functions are
the only String origins. Strings are *bytes*, not runes — `len` is a byte
count and every index reads one byte. UTF-8 validity is not tracked.

**Literal forms.** The quoted form `"..."` processes C-style escapes
(`\n \t \r \0 \a \b \f \v \e \" \' \\`), `${expr}` dynamic interpolation, and
multiline text blocks with baseline margin stripping when starting with `"\n`.

#### 3.6.1 The `{ len, data }` ABI

- `data` points at byte 0; `data + i` is the address of byte `i`. `data[len]`
  is **reserved NUL** (`data[len] == 0` is the C-boundary contract, §3.6.5), so
  an owned whole string crosses a C boundary zero-copy.
- There is **no member write surface** — Strings have no members: `s.len = n`
  and `s.data = p` are compile errors (`E3066`), and `String(ptr)`
  construction is rejected (`E3065`) — those would be mutable windows into
  memory the language cannot verify ownership of (§3.2). Length is the `?s`
  operator and the data pointer is `&s`; `.len`/`.data` member access is
  removed. Reads via `?s`/`&s`/`s(i)`/`s(a..b)` are the only ways *in*.

#### 3.6.2 Generation-tagged liveness

The `len` word carries an **arena generation** in its high bits
(`DVA_STRING_TAG_SHIFT = 48`). Every string read validates the tag against the
current arena generation and aborts `E4010: stale String read after arena
restore` if the string was built in a save/restore scope that has since been
reaped. This converts what used to be a stale-after-restore segfault into a
deterministic diagnostic. Strings built outside any restore scope (including
`.rodata` literals) carry tag 0 (immortal) and always validate.

#### 3.6.3 Reading a String — the operators

| Shape | Meaning | Result |
|---|---|---|
| `?s` | byte **length** (generation-masked) | `Int` |
| `s(i)` | bounds-checked **byte read** at index `i` (0 ≤ `i` < `?s`, else `E4006`) | `Int` (zero-extended byte) |
| `&s` | **FFI read seam**: the raw byte pointer (no member access) | `RawPtr` |
| `s(a..b)` | **view**: new String sharing the parent's buffer over `[a, b)` — O(1), no copy | `String` |
| `s(i..)` | rest-from-`i` view; `s(..b)` prefix view; `s(..)` full-view alias | `String` |
| `s == t` | **content equality**: length short-circuit, then `memcmp` | `Ramification` |
| `++s` | full **deep copy** into a fresh buffer (the only copy) | `String` |
| `s @ b => ...` / `s @ b, i => ...` | **byte iteration** over the whole string (§2.11) | cycle value |

Details:

- **`s(i)` byte read** — a signed compare on `0 <= i < ?s`; a negative index
  aborts. The index coerces from any integerish type. The read returns the byte
  zero-extended to an `Int`, matching what iteration and `s(i..)` see. There is
  no unchecked variant: LLVM is expected to eliminate the redundant check in a
  tight loop.
- **`s(a..b)` view** — operates on `[start, end)`. Negative endpoints resolve
  relative to the length (`?s + offset`). Endpoints clamp safely to `[0, ?s]`.
  If resolved `start >= end`, yields an empty string `""`. Views never abort
  at runtime (no `E4011`). Omitted bounds default to `0` / `?s`. The view is a
  **new String** value that *shares* the parent's buffer (an alias, not a copy);
  the view's own liveness is generation-checked like any other String. `s[a..b]`
  bracket slicing does not exist — view syntax is the call form only.
- **`s + n` byte append** (B6) — returns a *new* String `= s` with byte `n`
  appended (O(len) full rewrite; a `{len,data}` pointer has no capacity). `n`
  must be 0..255, else `E4008` at runtime — never silently masked. For bulk
  O(n) construction use a Builder (§3.7).
- **Iteration** — `s @ b =>` binds `b` to each byte (an `Int`), and `s @ b, i
  =>` binds `(byte, index)` with the **index always last**. The implicit/block
  form binds `_` = byte, `_i` = index. On `-->` break the index persists as
  bytes-consumed, so a scanner builds its rest-view as `s(i..)`
  (`std/str.dva`'s `to_int`/`to_hex` do exactly this).
- **Length is the unary `?`** — `?s`/`?b` (bytes), `?a`/`?m` (elements/entries),
  `?rec`/`?sl` (record/slice count). There is no `s(*)` / `r(*)` form.

#### 3.6.4 C-boundary NUL contract

The contract is exactly `data[len] == 0` — the byte *after* the content is
reserved, nothing more. The runtime does **not** scan content for embedded
NULs: a length-carrying C call (`write(fd, s, ?s)`) tolerates them, while a
`strlen`-style callee truncates at the first embedded NUL. A *view* whose
boundary byte is not NUL is copied (`len+1`, NUL-terminated) before such a
call (`codegen_ensure_nul_terminated`).

#### 3.6.5 String origins (and non-origins)

| How a String is made | `data` points to |
|---|---|
| literal `"hi"` | compiler-emitted static global (read-only `.rodata`) |
| `+` concat / `++` copy / `s + n` | fresh arena allocation |
| `+b` freeze | the Builder's own arena buffer (transferred, O(1)) |
| `s(a..b)` view | `*parent + start` (aliased) |
| foreign fn returning String | a copy-in of the C `char*` (arena) |

*Non-origins:* `String(ptr)`, `s.len = n` writes, `libc::malloc`-as-a-String —
all rejected.

### 3.7 `Builder` — the mutable byte buffer

A `Builder` is the **only mutable string surface** in the language: an
arena-allocated growable byte buffer, represented by a descriptor `{ i64 len,
ptr data, i64 capacity }` — the String fat pointer plus a capacity word. The
programmer never sees the raw struct; they use the operators. A Builder
descriptor may be aliased (`b2 = b` or passed to functions as `b: Builder`),
in which case aliases share the underlying descriptor and buffer.

#### 3.7.1 The Builder operators

| Shape | Meaning | Result |
|---|---|---|
| `{n}` | **create** — arena buffer with capacity `n` (a hint; clamped ≥ 0, with at least one byte + NUL reserved free), `len` = 0 | `Builder` |
| `b = {n}` | bind a name to a fresh empty Builder (len 0) | `Builder` |
| `b += c` | **in-place push** one byte `c` (0..255, else `E4007`); stores at `data[len]`, NUL-reserves the next, `len++`; grows by doubling when `len == capacity` (amortized O(1)) | `Builder` |
| `b += s` | **in-place append** of a whole String's bytes (grows as needed) | `Builder` |
| `b + c` | **pure append** — a NEW Builder = b's bytes + c (O(len) copy), same contract as `s + n`; `b` is untouched | `Builder` |
| `b + s` | **pure append** of a whole String's bytes (a NEW Builder = b + s) | `Builder` |
| `?b = n` | **set length** — writes `n` into the `len` field (report model after an FFI read); integerish RHS only | `Builder` |
| `?b` | **written byte count** — a pure read of `len` | `Int` |
| `&b` | **buffer address** — the writable `data` pointer as a `RawPtr`, for FFI read targets (no trailing space) | `RawPtr` |
| `b(i)` | **peek** — bounds-checked read of one *written* byte (index < `len`, else `E4009`) | `Int` |
| `+b` | **freeze** — String buffer transfer; resets descriptor to `{0, 0, 0}` | `String` |

#### 3.7.2 Semantics & guarantees

- **Create** (`{n}`) allocates capacity `n` (rounded to bump granularity),
  writes `len = 0`, and NUL-reserves `data[0]` so even the empty string's
  boundary byte is valid. `n` may be any integerish expression; the result is
  a fresh Builder value. The idiomatic binding is `b = {n}` — `=` creates the
  empty buffer; the appends (`+=`) and the length-set (`?b = n`) mutate the
  value in place, so an `=`-bound name is never re-bound, only written.
- **In-place push** (`b += c`) writes the byte at `data[len]`, bumps `len`,
  and always NUL-reserves `data[len+1]` (the boundary byte). When
  `len == capacity` it grows — new capacity = `max(cap * 2, 16)`, memcpy's the
  contents into a fresh arena buffer, and keeps going. The byte is
  range-checked (`0..255`) before it is ever stored, so `b += 300` aborts
  `E4007` — no masking. `b + c` (pure) has the same byte contract but returns
  a fresh copy.
- **Length** — `?b` reads the written count without freezing; `?b = n` writes
  it. The pair is the FFI-read bookkeeping: `n = libc::recv(fd, &req, cap, 0)`
  then `?req = n` records how many bytes landed, so `+req` freezes exactly
  those bytes. `&b` is the write target; together they replace the
  `libc::malloc`/`libc::free` buffer dance.
- **Freeze** (`+b`) transfers the Builder's buffer to the new String with no
  copy (O(1)); the String is generation-stamped at freeze time so a Builder
  created inside a save/restore scope yields a correctly-liveness-checked
  String. **Detach and reset**: freezing detaches the buffer into the new `String`
  and resets the Builder descriptor to empty `{ len: 0, cap: 0, data: null }`.
  Any aliases to the Builder observe the empty descriptor (`?b == 0`), preventing
  mutation of the already-frozen String. Subsequent appends (`+=`) to the Builder
  (or any of its aliases) allocate a fresh arena buffer, making the Builder
  cleanly reusable without affecting the frozen String.
- **Peek** (`b(i)`) reads already-pushed bytes only (`i < len`); reading past
  the written count aborts `E4009`. `b(a..b)` views do not exist (`E3064`).
- **Aliasing & sharing**: `b2 = b` shares the Builder descriptor; mutations via
  `b2 += ...` affect the shared buffer. When frozen with `+b` (or `+b2`), the
  buffer is transferred to the returned `String` and the shared descriptor is
  reset to `{0, 0, 0}`, so all aliases observe an empty buffer without mutating
  the frozen `String`. `b: Builder` passes a Builder by descriptor pointer into
  functions so callees can mutate it in place. `++b` is the copy *no-op* of §3.3
  for scalars.

### 3.8 Memory

Runtime allocations come from a chunked arena. Strings, tuples, arrays, and
slices allocate in the arena; the arena grows in 1 MiB chunks up to a large
ceiling, and is reset at the end of each enclosing block/iteration scope.

---

## 4. Standard Library

The standard library lives in `std/`, alongside the compiler, and is imported
with `#use module`. Modules are compiled lazily: an unused function contributes
nothing to the binary.

### 4.1 `sys` (`std/sys.dva`)

Process and descriptor primitives.

- `STDIN`, `STDOUT`, `STDERR` — file descriptor constants.
- `argc`, `argv` — program arguments (`argv(n)` is bounds-checked and returns
  a `<X | >` ram).
- `exit(code)` — terminate the process.
- `write(fd, buf, len)` — raw write.

### 4.2 `os` (`std/os.dva`)

File and process helpers.

- `open(path, flags)`, `close(fd)`, `write(fd, buf, len)`, `ioctl(fd, req, arg)`.
- `read(fd, count, delimiter)`, `read_with_delim(...)`.
- `spawn(path, argv)` — `posix_spawn` a process and wait for its exit code.

### 4.3 `libc` (`std/libc.dva`)

Foreign POSIX/C bindings.

- `open close read write ioctl malloc free exit`.
- `posix_spawn waitpid htons htonl ntohs ntohl inet_addr`.
- `socket bind listen accept connect send recv sendto recvfrom setsockopt getsockopt`.
- `getpeername getsockname shutdown fcntl getaddrinfo freeaddrinfo`.
- `memset atoi`.

Write-target buffers are declared `Addr`, not `String`: `read(fd, buf:
Addr, count)`, `recv(sockfd, buf: Addr, len, flags)` — a `String` is
immutable and would only ever hand a copy to the C write (§3.3 FFI typing).

### 4.4 `fmt` (`std/fmt.dva`)

Formatting without libc. Scalar renderers plus `+`-concatenation are the
report model (§2.7.2) — there is no variadic `printf` (dva has no varargs).

- `int_to_str(n)`, `hex_to_str(n)` — base-10 / base-16 rendering.
- `print_int(n)`.

### 4.5 `net` (`std/net.dva`)

POSIX sockets — the transport layer. HTTP protocol lives in `std/net/http.dva`
(imported as `#use "net/http"`). The socket/data-returning helpers use **result
rams** instead of `-1` / `""` sentinels, so callers pattern-match with `|`
branches:

- `Conn` = `< Int | String >` — positive = fd, negative = error message.
- `Host` = `< Addr | String >` — positive = getaddrinfo list, negative = error.
- `Chunk` = `< String | >` — positive = received data, negative = none.

- `AF_INET`, `AF_INET6`, `SOCK_STREAM`, `SOCK_DGRAM`, `IPPROTO_TCP`,
  `IPPROTO_UDP`, `SOL_SOCKET`, `SO_REUSEADDR`, `SO_RCVTIMEO`, `SO_SNDTIMEO`.
- `SockAddrIn`, `Timeval`, `Addrinfo` — the socket address / timeval /
  getaddrinfo record layouts.
- `tcp_connect(host, port)` → `Conn` — numeric IP or **DNS name**
  (getaddrinfo, walking the result list); `tcp_listen(port, backlog)` →
  `Conn`; `tcp_accept(fd)` → `Conn`.
- `resolve(host, port)` → `Host` — getaddrinfo result list (release with
  `libc::freeaddrinfo`).
- `send_str(fd, msg)` — sends the whole String, **looping until every byte
  is written** (send() can deliver fewer bytes than requested on a socket).
- `recv(fd, max)` → `Chunk` — one read into a String; `recv_buf(fd, buf:
  Addr, n)` — raw buffer read.
- `set_recv_timeout(fd, ms)` / `set_send_timeout(fd, ms)` —
  `setsockopt(SO_*TIMEO)` with a `Timeval`.
- `set_nonblocking(fd, flag)` — `fcntl(F_SETFL, O_NONBLOCK)`.
- `peer_addr(fd)` / `local_addr(fd)` — `getpeername`/`getsockname` as
  `"ip:port"`.
- `shutdown_fd(fd)` — half-close; `close_fd(fd)`.
- UDP: `udp_socket(unused)` → `Conn`; `udp_bind(fd, port)`; `udp_send(fd,
  host, port, data)` — one datagram to a numeric IP; `udp_recv(fd, max)` →
  `Chunk` — one datagram.

`tcp_listen` sets `SO_REUSEADDR` by writing a 1 into a Builder's buffer via
`@[*one] = 1i32` — no `malloc`/`free`.

### 4.8 `http` (`std/net/http.dva`)

The HTTP protocol layer (messages + request/URL parsing), built on `net`
(transport). Imported as `#use "net/http"`; bindings are `http::*`.

Writing / response side:

- `path_of(req)` — the request path out of a request-line String (bounds-safe
  byte reads, no raw-address plumbing).
- `reason_of(code)` — status code → reason phrase ("" for unknown).
- `header(name, value)` — one `"Name: Value\r\n"` line.
- `response(status, headers, body)` — status line + pre-formatted header
  lines + blank line + body.
- `respond(fd, status, body)` — sends a text/plain response with explicit
  Content-Length and `Connection: close`.

Request reading (reads from `fd` via `net::recv`):

- `read_line(fd, max)` → `Chunk` — one line, `\r\n` stripped.
- `read_headers(fd, max)` — the raw header block up to the blank line.
- `content_length(headers)` → `Num` (`< Int | >`) — the `Content-Length` value.
- `read_body(fd, n)` → `Chunk` — exactly `n` bytes.
- `line_req(line)` → `Req` (`< Request | String >`) — parse a request line.
- `read_request(fd, max)` → `Req` — request line + headers + body
  (`Request` = `(method, path, body)` record).

URL / query utilities (pure string functions):

- `method_of(line)` — the method token before the first space.
- `query_of(path)` — the query string after `?`; `strip_query(path)` — the
  path without it.
- `percent_decode(s)` — `%XX` escapes → bytes.
- `query_param(qs, key)` → `Chunk` — look up `key=value` in `a=1&b=2`.
- `parse_url(url)` → `UrlRes` (`< Url | String >`) — split
  `scheme://host[:port][/path][?query]` into the `Url` record
  `(scheme, host, port, path, query)`.
- Helpers: `find_char(s, from, c)`, `path_start(s)`, `to_int(s)`, `hex_val(c)`.

Header manipulation model: a header set is a flat String of `"Name: Value\r\n"`
lines; Content-Length is always explicit so the receiver can size the body.
(Planned: a structured `Headers` record with append/lookup/render once parsing
and case-insensitive lookup are needed.)

### 4.6 `unicode` (`std/unicode.dva`)

Unicode rune classification via shared stage-2 page tables. Each 256-codepoint
page is a 256-bit bitmap stored as four 64-bit words; identical pages share
one pool entry, so an unused predicate contributes nothing to the binary. The
source uses `#pragma number i16`/`i64` and `{N}` repetition to stay compact.

Each predicate takes a `Rune` and returns a ramification (`<+>` in set,
`<->` not):

```
unicode::is_alpha cp   unicode::is_digit cp
unicode::is_upper cp   unicode::is_lower cp
unicode::is_space cp
```

### 4.7 `str` (`std/str.dva`)

Byte-oriented string helpers for writing a lexer. Strings are fat
`{ len, data }` byte sequences; bytes are `Int`. Predicates return
ramifications (`<+>` in, `<->` out), never `Int` flags.

```
str::is_digit c   str::is_alpha c   str::is_alnum c
str::is_ws c      str::is_hex c

str::from_byte b      -- one byte as a 1-byte String
str::from_int v       -- Int to ASCII decimal String
str::to_int s         -- scan leading decimal digits
str::to_hex s         -- scan leading hex digits (0-9, a-f, A-F)
```

`to_int`/`to_hex` return the declared RamPN ram `Digits` (`< (Int, String) | >`):
the first branch carries `(value, rest)` (rest is the zero-copy unconsumed
view of the input); the second is a bare unit — no digits. The payload branch
comes first in a choice.

```dva complete
#use str
r = str::to_int("123abc")
v = r | (_.0) | -1        // 123
rest = r | (_.1) | "none" // "abc"
```
