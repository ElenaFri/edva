# Edva

[![CI](https://github.com/edva-lang/edva/actions/workflows/ci.yml/badge.svg)](https://github.com/edva-lang/edva/actions/workflows/ci.yml)
[![Documentation](https://github.com/edva-lang/edva/actions/workflows/docs.yml/badge.svg)](https://edva-lang.github.io/edva/)
[![Website](https://img.shields.io/badge/website-edva--lang.github.io-blue)](https://edva-lang.github.io/)
[![License](https://img.shields.io/badge/License-BSD_2--Clause-orange.svg)](LICENSE)

> *edva — an implementation of dva*  
> *A zero-keyword, expression-oriented systems language*

Edva is a statically typed, expression-oriented systems language with significant
indentation and zero reserved keywords. The self-hosted compiler (`edva`) lowers
Edva source (`.dva`) to LLVM IR and invokes `clang` to produce high-performance
native executables.

---

## Highlights

- **Zero Keywords**: Identifiers like `if`, `fn`, `for`, `while`, `return` are ordinary names. All control flow is expressed through pure syntax and symbolic operators (e.g. `@` cycles, choices, cycle escapes `>--`).
- **Fully Expression-Oriented**: Blocks, choices, bindings, loops, and assignments evaluate to values.
- **Unboxed Algebraic Datatypes**: First-class ramifications and variants with zero runtime type descriptors (no RTTI, fully static unification).
- **Self-Hosting Compiler**: The entire compiler is written in Dva and targets LLVM 18 with 2-stage fixed-point verification.

---

## Requirements

- **Linux** (x86_64 or aarch64)
- **libLLVM-18** installed system-wide
- **Clang** on `PATH` (used for code generation and linking)
- **Nushell** (`nu`) for code generation utilities

---

## Quickstart

### Build the compiler

```sh
git clone https://github.com/edva-lang/edva.git
cd edva
make
```

### Run an example

```sh
./edva examples/hello.dva -r
```

### Emit LLVM IR

```sh
./edva examples/hello.dva -ir
```

---

## Running the Test Suite

```sh
./run_tests.sh
```

---

## Documentation

- **Official Website:** [edva-lang.github.io](https://edva-lang.github.io/)
- **Documentation Book:** [edva-lang.github.io/edva](https://edva-lang.github.io/edva/)
- **Language Grammar Specification:** [`GRAMMAR.md`](GRAMMAR.md)
- **Tree-sitter Syntax Highlighting:** [edva-lang/tree-sitter-edva](https://github.com/edva-lang/tree-sitter-edva)

---

## Repository Map

- `src/` — Self-hosted compiler implementation
- `std/` — Standard library modules
- `tests/` — Compiler regression suite (pass, fail, driver)
- `examples/` — Code examples and sample applications
- `tools/` — Lexer token and operator table generators
- `seed/` — Frozen bootstrap source and modular LLVM IR
- `doc/` — Documentation source files

---

## License

Edva is licensed under the [BSD 2-Clause License](LICENSE).
