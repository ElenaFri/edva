; Dva highlights for tree-sitter
; Tuned for Helix and compatible tree-sitter highlighters. Each syntactic
; class gets its own capture so the theme can give it a distinct color.
; Note: Later rules take precedence over earlier rules.

;; ------------------------------------------------------------------
;; Comments
;; ------------------------------------------------------------------
(comment) @comment

;; ------------------------------------------------------------------
;; Defaults (Variables & Punctuation) — placed first so specific rules win
;; ------------------------------------------------------------------
(identifier) @variable

"(" @punctuation.bracket
")" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket
"[" @punctuation.bracket
"]" @punctuation.bracket
"," @punctuation.delimiter
"." @punctuation.delimiter
":" @punctuation.delimiter
"::" @punctuation.delimiter

;; ------------------------------------------------------------------
;; Compiler directives
;; ------------------------------------------------------------------
[
  "#use"
  "#use-dynamic"
  "#type"
  "#foreign"
  "#pragma"
  "#public"
  "#pub"
  "#private"
  "#export"
  "#spawn"
  "#join"
  "#!"
  "#size"
  "#packed"
  "#align"
] @keyword.directive

;; ------------------------------------------------------------------
;; Literals & Uniform #use Module Paths
;; ------------------------------------------------------------------
(string_literal) @string
(string_interpolation "${" @punctuation.special)
(string_interpolation "}" @punctuation.special)
(char_literal) @constant.character
(integer_literal) @constant.numeric.integer
(float_literal) @constant.numeric.float

;; All paths/strings after #use are highlighted uniformly as @string
(import_statement (module_path) @string)
(import_statement (module_path (identifier) @string))
(import_statement (module_path (string_literal) @string))

;; ------------------------------------------------------------------
;; Ramifications
;; ------------------------------------------------------------------
;; Unit ramification literals: <+>, <->, <++>, <--> (numeric literals like numbers)
[
  "<+>"
  "<->"
  "<++>"
  "<-->"
] @constant.numeric.integer

;; Ramification payload openers and closers: "<+ p +>", "<+ p ->", "<- p ->", "<- p +>".
(ramification_literal "<+" @constant.builtin.ram)
(ramification_literal "+>" @constant.builtin.ram)
(ramification_literal "<-" @constant.builtin.ram)
(ramification_literal "->" @constant.builtin.ram)

[
  "<+"
  "+>"
  "<-"
  "->"
] @constant.builtin.ram

;; Branch return unit sugars: "|+>", "|->", "|++>", "|-->".
(branch "|+>" @constant.builtin.ram)
(branch "|->" @constant.builtin.ram)
(branch "|++>" @constant.builtin.ram)
(branch "|-->" @constant.builtin.ram)

[
  "|+>"
  "|->"
  "|++>"
  "|-->"
] @constant.builtin.ram

;; ------------------------------------------------------------------
;; Function definitions & calls
;; ------------------------------------------------------------------
; A binding whose RHS is a lambda (or zero-arg / section / implicit fn).
(assignment_statement
  (identifier) @function
  (expr (fn_expr)))
(assignment_statement
  (variant_name) @function
  (expr (fn_expr)))

; A forward-annotation signature "fun: Int, String => Int" — also a function.
(assignment_statement
  (identifier) @function
  (function_signature_type))
(assignment_statement
  (variant_name) @function
  (function_signature_type))

; Foreign C function bindings "dup2 : (...) -> Int".
(foreign_binding (identifier) @function)
(foreign_binding (variant_name) @function)

; Regular (lowercase) function calls.
(paren_call (primary_expr (identifier) @function.call))
(paren_call (primary_expr (member_expr (identifier) @function.call)))
(dollar_call (primary_expr (identifier) @function.call))
(dollar_call (primary_expr (member_expr (identifier) @function.call))
)
(postfix_call (primary_expr (identifier) @function.call))
(postfix_call (primary_expr (member_expr (identifier) @function.call)))

; Uppercase constructor / variant expressions: "Token(Id)", "CompDiag(...)".
(variant_expr
  (variant_name) @constructor)

; Enum variant labels in declarations and choice guards.
(enum_variant (identifier) @type.enum.variant)
(enum_variant (variant_name) @type.enum.variant)
(pattern (variant_name) @type.enum.variant)

;; ------------------------------------------------------------------
;; Parameters & Properties
;; ------------------------------------------------------------------
(fn_param (identifier) @variable.parameter)
(fn_param (variant_name) @variable.parameter)
(foreign_param (identifier) @variable.parameter)
(foreign_param (variant_name) @variable.parameter)

; Compile-time type-parameter names ("#! T: Type").
(signature_param (identifier) @variable.parameter)
(signature_param (variant_name) @variable.parameter)

; Implicit "_" parameter / identity extractor.
((identifier) @variable.builtin (#eq? @variable.builtin "_"))

; Field names in record type declarations.
(field_type (identifier) @property)
(indent_field (identifier) @property)

; Member access / module access / named arguments.
(member_expr (identifier) @property)
(named_arg (identifier) @property)

; Module member access "mod::sym" — the base is a module.
((member_expr (primary_expr (identifier)) @module)
  (#match? @module "^[a-z_][a-z0-9_]*$"))

;; ------------------------------------------------------------------
;; User-declared types
;; ------------------------------------------------------------------
(type_name (variant_name) @type)
(type_name (identifier) @type)
(type_name (qual_identifier) @type)
(type_pattern_atom (variant_name) @type)
(type_pattern_atom (identifier) @type)
(type_pattern_atom (qual_identifier) @type)
(qual_identifier) @type

;; The name being declared in "#type Name ...".
(type_decl_statement (identifier) @type.definition)
(type_decl_statement (variant_name) @type.definition)

;; ------------------------------------------------------------------
;; Built-in & Structural Types (override @type, @constructor, @variable)
;; ------------------------------------------------------------------
[
  "Int"
  "Float"
  "String"
  "Addr"
  "Address"
  "Rune"
  "Builder"
  "Error"
  "Type"
  "i1"
  "i8"
  "i16"
  "i32"
  "i64"
  "u8"
  "u16"
  "u32"
  "u64"
  "f32"
  "f64"
  "float"
  "double"
  "void"
  "ptr"
  "<>"
  "<|>"
  "(..)"
  "<..>"
] @type.builtin

((variant_name) @type.builtin
  (#match? @type.builtin
    "^(Int|Float|String|Addr|Address|Rune|Builder|Error|Type)$"))

((identifier) @type.builtin
  (#match? @type.builtin
    "^(i1|i8|i16|i32|i64|u8|u16|u32|u64|f32|f64|float|double|void|ptr)$"))

;; Unit and structural types in declarations, signatures, and type patterns
(ram_or_enum_type_decl ["<>" "<|>" "<" ">" "|" "|>" "<|"] @type.builtin)
(array_type_decl ["{" "}"] @type.builtin)
(slice_type_decl ["[" "]"] @type.builtin)
(map_type "^" @type.builtin)
(field_type ["*" "[" "]"] @type.builtin)
(foreign_binding "()" @type.builtin)
(function_signature_type "()" @type.builtin)
(signature_param "()" @type.builtin)
(assignment_statement "()" @type.builtin)
(type_pattern
  [
    "()"
    "<>"
    "<|>"
    "(..)"
    "<..>"
    ".."
    "*"
    "<"
    ">"
    "|"
    "|>"
    "<|"
    "("
    ")"
    "{"
    "}"
    "["
    "]"
    "^"
  ] @type.builtin)

;; Raw-memory load type "@[addr i32]".
(raw_memory_load_type) @type.builtin

;; ------------------------------------------------------------------
;; Control flow
;; ------------------------------------------------------------------
; Cycle jumps and cycle-escape marker.
(cycle_jump_expr) @keyword.control.repeat
(cycle_expr "@" @keyword.control.repeat)
"--:" @keyword.control

; Choice branch separators and choice headers.
(choice_expr "[" @keyword.control.conditional)
(choice_expr "]" @keyword.control.conditional)
(branch "[" @keyword.control.conditional)
(branch "]" @keyword.control.conditional)
(branch "|" @keyword.control.conditional)
(branch "!|" @keyword.control.conditional)

;; ------------------------------------------------------------------
;; Operators
;; ------------------------------------------------------------------
; Assignment / declaration operators.
[
  "="
  (op_assign)
  (op_global_assign)
  (op_plus_assign)
  (op_arrow)
  "!=>"
] @operator
(foreign_binding "->" @operator)

; Infix binary operators (scoped so "<" / ">" don't hit ram/enum type decls).
(binary_expr "&&" @operator)
(binary_expr "||" @operator)
(binary_expr ".|." @operator)
(binary_expr ".&." @operator)
(binary_expr "==" @operator)
(binary_expr "!=" @operator)
(binary_expr "<" @operator)
(binary_expr ">" @operator)
(binary_expr "!<" @operator)
(binary_expr "!>" @operator)
(binary_expr ".<." @operator)
(binary_expr ".>." @operator)
(binary_expr "+" @operator)
(binary_expr "-" @operator)
(binary_expr "*" @operator)
(binary_expr "/" @operator)
(binary_expr "%" @operator)
(binary_expr "$>" @operator)
(binary_expr "$>>" @operator)

; Infix apply, range (.., ..., ..=), map access, block feed.
(dollar_call "$" @operator)
(range_expr [".." "..." "..="] @operator)
(key_access_expr "^" @operator)
(key_access_expr "^?" @operator)

; Operator sections: "+ 10", "[> 37.5]".
(section_expr "+" @operator)
(section_expr "-" @operator)
(section_expr "*" @operator)
(section_expr "/" @operator)
(section_expr "%" @operator)
(section_expr "==" @operator)
(section_expr "!=" @operator)
(section_expr "<" @operator)
(section_expr ">" @operator)
(section_expr "!<" @operator)
(section_expr "!>" @operator)
(section_expr "<=" @operator)
(section_expr ">=" @operator)
(section_expr ".|." @operator)
(section_expr ".&." @operator)
(section_expr ".^." @operator)
(section_expr ".<." @operator)
(section_expr ".>." @operator)

; Unary prefix operators.
(unary_expr "!" @operator)
(unary_expr "+" @operator)
(unary_expr "&" @operator)
(unary_expr "?" @operator)
(unary_expr "??" @operator)
(unary_expr "++" @operator)
(unary_expr ".!." @operator)
(unary_expr "~~" @operator)
(unary_expr "-" @operator)

; Postfix operators.
(postfix_call "!" @operator)
(postfix_call "!!" @operator)
(postfix_call "--!" @operator)
