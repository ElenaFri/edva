; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_arena_tls = external thread_local global ptr
@global_arena = external global { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@arena_toobig_msg = internal unnamed_addr constant [99 x i8] c"E4004: arena allocation too large for a single chunk (requested %llu bytes, chunk cap %llu bytes)\0A\00"
@arena_chunklimit_msg = internal unnamed_addr constant [58 x i8] c"E4003: arena chunk limit reached (too many arena chunks)\0A\00"
@arena_oom_msg = internal unnamed_addr constant [50 x i8] c"E4001: arena allocator exhausted (out of memory)\0A\00"
@builder_len_oob_msg = internal unnamed_addr constant [48 x i8] c"E4008: Builder length assignment out of bounds\0A\00"
@str.0 = internal unnamed_addr constant [56 x i8] c"Line indented less than first line in multi-line string\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 55, ptr @str.0 }
@clo.const = internal constant { ptr, ptr } { ptr @"diag::E1017_multiline_under_indented", ptr null }
@"var.diag::E1017_multiline_under_indented" = global ptr null
@str.1 = internal unnamed_addr constant [62 x i8] c"Unterminated multi-line string literal -- missing closing '\22'\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 61, ptr @str.1 }
@clo.const.1 = internal constant { ptr, ptr } { ptr @"diag::E1018_multiline_unterminated", ptr null }
@"var.diag::E1018_multiline_unterminated" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"diag::E1017_heredoc_under_indented", ptr null }
@"var.diag::E1017_heredoc_under_indented" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"diag::E1018_heredoc_unterminated", ptr null }
@"var.diag::E1018_heredoc_unterminated" = global ptr null
@str.2 = internal unnamed_addr constant [68 x i8] c"Bare '|' is only allowed as the first branch (Left Value) or final \00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 67, ptr @str.2 }
@str.3 = internal unnamed_addr constant [43 x i8] c"branch (catch-all) in a choice expression.\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 42, ptr @str.3 }
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@clo.const.4 = internal constant { ptr, ptr } { ptr @"diag::E2024_bare_bar_position", ptr null }
@"var.diag::E2024_bare_bar_position" = global ptr null
@str.4 = internal unnamed_addr constant [57 x i8] c"Whitespace between range endpoint and '..' is forbidden.\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 56, ptr @str.4 }
@clo.const.5 = internal constant { ptr, ptr } { ptr @"diag::E2025_range_endpoint_whitespace", ptr null }
@"var.diag::E2025_range_endpoint_whitespace" = global ptr null
@str.5 = internal unnamed_addr constant [49 x i8] c"Whitespace before call parenthesis is forbidden.\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 48, ptr @str.5 }
@clo.const.6 = internal constant { ptr, ptr } { ptr @"diag::E2032_call_paren_whitespace", ptr null }
@"var.diag::E2032_call_paren_whitespace" = global ptr null
@str.6 = internal unnamed_addr constant [83 x i8] c"Function parameters may not be parenthesized; write 'x, y =>' with no parentheses.\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 82, ptr @str.6 }
@clo.const.7 = internal constant { ptr, ptr } { ptr @"diag::E2037_params_parenthesized", ptr null }
@"var.diag::E2037_params_parenthesized" = global ptr null
@str.7 = internal unnamed_addr constant [29 x i8] c"Expression nested too deeply\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 28, ptr @str.7 }
@clo.const.8 = internal constant { ptr, ptr } { ptr @"diag::E2039_expr_too_deep", ptr null }
@"var.diag::E2039_expr_too_deep" = global ptr null
@str.8 = internal unnamed_addr constant [69 x i8] c"Function parameters cannot be mutable \E2\80\94 remove prime suffix from '\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 68, ptr @str.8 }
@clo.const.9 = internal constant { ptr, ptr } { ptr @"diag::E2039_param_mutable_prefix", ptr null }
@"var.diag::E2039_param_mutable_prefix" = global ptr null
@str.9 = internal unnamed_addr constant [114 x i8] c"Explicit '_' parameter is forbidden in function parameter lists \E2\80\94 use a named parameter or omit unused binders.\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 113, ptr @str.9 }
@clo.const.10 = internal constant { ptr, ptr } { ptr @"diag::E2040_underscore_param", ptr null }
@"var.diag::E2040_underscore_param" = global ptr null
@str.10 = internal unnamed_addr constant [69 x i8] c"Cannot assign to '_' \E2\80\94 '_' cannot be used as an assignment target.\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 68, ptr @str.10 }
@clo.const.11 = internal constant { ptr, ptr } { ptr @"diag::E2044_underscore_assign", ptr null }
@"var.diag::E2044_underscore_assign" = global ptr null
@str.11 = internal unnamed_addr constant [81 x i8] c"Cannot assign to a typed load; write through the untyped '@[addr]' form instead.\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 80, ptr @str.11 }
@clo.const.12 = internal constant { ptr, ptr } { ptr @"diag::E2093_assign_typed_load", ptr null }
@"var.diag::E2093_assign_typed_load" = global ptr null
@str.12 = internal unnamed_addr constant [75 x i8] c"A '|' before a '[' guard is invalid \E2\80\94 chain guarded branches adjacently.\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 74, ptr @str.12 }
@clo.const.13 = internal constant { ptr, ptr } { ptr @"diag::E2096_bar_before_guard", ptr null }
@"var.diag::E2096_bar_before_guard" = global ptr null
@str.13 = internal unnamed_addr constant [49 x i8] c"Redundant choice tail '<+> | <->' is forbidden. \00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 48, ptr @str.13 }
@str.14 = internal unnamed_addr constant [57 x i8] c"Empty guard body '[guard]' already produces a bare flag.\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 56, ptr @str.14 }
@clo.const.14 = internal constant { ptr, ptr } { ptr @"diag::E2105_redundant_choice_tail", ptr null }
@"var.diag::E2105_redundant_choice_tail" = global ptr null
@str.15 = internal unnamed_addr constant [91 x i8] c"State binding operator '~~' requires a variable, member access, or indexed element target.\00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 90, ptr @str.15 }
@clo.const.15 = internal constant { ptr, ptr } { ptr @"diag::E2108_state_binding_target", ptr null }
@"var.diag::E2108_state_binding_target" = global ptr null
@str.16 = internal unnamed_addr constant [21 x i8] c"Disallowed syntax '[\00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 20, ptr @str.16 }
@str.17 = internal unnamed_addr constant [13 x i8] c" _]'. Use '[\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 12, ptr @str.17 }
@str.18 = internal unnamed_addr constant [12 x i8] c"]' instead.\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 11, ptr @str.18 }
@clo.const.16 = internal constant { ptr, ptr } { ptr @"diag::E2109_disallowed_variant_wildcard", ptr null }
@"var.diag::E2109_disallowed_variant_wildcard" = global ptr null
@str.19 = internal unnamed_addr constant [75 x i8] c"Omitting a Choice/pattern branch's leading condition is only allowed when \00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 74, ptr @str.19 }
@str.20 = internal unnamed_addr constant [82 x i8] c"'_' is already defined in the enclosing scope (e.g. inside a '=> '-omitted-param \00"
@str.20.struct = internal unnamed_addr constant { i64, ptr } { i64 81, ptr @str.20 }
@str.21 = internal unnamed_addr constant [51 x i8] c"lambda, or a cycle body). '_' is not defined here.\00"
@str.21.struct = internal unnamed_addr constant { i64, ptr } { i64 50, ptr @str.21 }
@clo.const.17 = internal constant { ptr, ptr } { ptr @"diag::E3003_choice_underscore_undefined", ptr null }
@"var.diag::E3003_choice_underscore_undefined" = global ptr null
@str.22 = internal unnamed_addr constant [94 x i8] c"Unary '!' cannot be applied to this type. Use Flag for logical NOT or '+' for Builder freeze.\00"
@str.22.struct = internal unnamed_addr constant { i64, ptr } { i64 93, ptr @str.22 }
@clo.const.18 = internal constant { ptr, ptr } { ptr @"diag::E3008_not_invalid_type", ptr null }
@"var.diag::E3008_not_invalid_type" = global ptr null
@str.23 = internal unnamed_addr constant [44 x i8] c"Unary '!' cannot be applied to an integer. \00"
@str.23.struct = internal unnamed_addr constant { i64, ptr } { i64 43, ptr @str.23 }
@str.24 = internal unnamed_addr constant [66 x i8] c"To create a Builder with capacity n, use the brace literal '{n}'.\00"
@str.24.struct = internal unnamed_addr constant { i64, ptr } { i64 65, ptr @str.24 }
@clo.const.19 = internal constant { ptr, ptr } { ptr @"diag::E3008_not_integer", ptr null }
@"var.diag::E3008_not_integer" = global ptr null
@str.25 = internal unnamed_addr constant [44 x i8] c"Cannot assign Void expression to variable '\00"
@str.25.struct = internal unnamed_addr constant { i64, ptr } { i64 43, ptr @str.25 }
@clo.const.20 = internal constant { ptr, ptr } { ptr @"diag::E3032_assign_void_var_prefix", ptr null }
@"var.diag::E3032_assign_void_var_prefix" = global ptr null
@str.26 = internal unnamed_addr constant [46 x i8] c"Cannot assign Void expression to element of '\00"
@str.26.struct = internal unnamed_addr constant { i64, ptr } { i64 45, ptr @str.26 }
@clo.const.21 = internal constant { ptr, ptr } { ptr @"diag::E3032_assign_void_elem_prefix", ptr null }
@"var.diag::E3032_assign_void_elem_prefix" = global ptr null
@str.27 = internal unnamed_addr constant [37 x i8] c"Cannot re-assign immutable binding '\00"
@str.27.struct = internal unnamed_addr constant { i64, ptr } { i64 36, ptr @str.27 }
@clo.const.22 = internal constant { ptr, ptr } { ptr @"diag::E3033_reassign_immutable_prefix", ptr null }
@"var.diag::E3033_reassign_immutable_prefix" = global ptr null
@str.28 = internal unnamed_addr constant [25 x i8] c"'. Use a prime suffix ('\00"
@str.28.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.28 }
@clo.const.23 = internal constant { ptr, ptr } { ptr @"diag::E3033_reassign_immutable_suffix", ptr null }
@"var.diag::E3033_reassign_immutable_suffix" = global ptr null
@str.29 = internal unnamed_addr constant [30 x i8] c"'') for rebindable variables.\00"
@str.29.struct = internal unnamed_addr constant { i64, ptr } { i64 29, ptr @str.29 }
@clo.const.24 = internal constant { ptr, ptr } { ptr @"diag::E3033_reassign_immutable_tail", ptr null }
@"var.diag::E3033_reassign_immutable_tail" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"diag::reassign_immutable", ptr null }
@"var.diag::reassign_immutable" = global ptr null
@str.30 = internal unnamed_addr constant [3 x i8] c"'.\00"
@str.30.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.30 }
@clo.const.26 = internal constant { ptr, ptr } { ptr @"diag::assign_void_variable", ptr null }
@"var.diag::assign_void_variable" = global ptr null
@clo.const.27 = internal constant { ptr, ptr } { ptr @"diag::assign_void_element", ptr null }
@"var.diag::assign_void_element" = global ptr null
@str.31 = internal unnamed_addr constant [21 x i8] c"Homogeneous record '\00"
@str.31.struct = internal unnamed_addr constant { i64, ptr } { i64 20, ptr @str.31 }
@clo.const.28 = internal constant { ptr, ptr } { ptr @"diag::E3131_whole_val_init_prefix", ptr null }
@str.32 = internal unnamed_addr constant [61 x i8] c"' requires whole-value initialization before element access.\00"
@str.32.struct = internal unnamed_addr constant { i64, ptr } { i64 60, ptr @str.32 }
@clo.const.29 = internal constant { ptr, ptr } { ptr @"diag::E3131_whole_val_init_suffix", ptr null }
@clo.const.30 = internal constant { ptr, ptr } { ptr @"diag::whole_value_init", ptr null }
@"var.diag::whole_value_init" = global ptr null
@str.33 = internal unnamed_addr constant [8 x i8] c"Field '\00"
@str.33.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.33 }
@str.34 = internal unnamed_addr constant [7 x i8] c"' of '\00"
@str.34.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.34 }
@str.35 = internal unnamed_addr constant [45 x i8] c"' has no default value and was not provided.\00"
@str.35.struct = internal unnamed_addr constant { i64, ptr } { i64 44, ptr @str.35 }
@clo.const.31 = internal constant { ptr, ptr } { ptr @"diag::record_default_missing", ptr null }
@"var.diag::record_default_missing" = global ptr null
@str.36 = internal unnamed_addr constant [7 x i8] c"Enum '\00"
@str.36.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.36 }
@str.37 = internal unnamed_addr constant [27 x i8] c"' has no variant labeled '\00"
@str.37.struct = internal unnamed_addr constant { i64, ptr } { i64 26, ptr @str.37 }
@clo.const.32 = internal constant { ptr, ptr } { ptr @"diag::enum_no_variant", ptr null }
@"var.diag::enum_no_variant" = global ptr null
@str.38 = internal unnamed_addr constant [12 x i8] c"' variant '\00"
@str.38.struct = internal unnamed_addr constant { i64, ptr } { i64 11, ptr @str.38 }
@str.39 = internal unnamed_addr constant [48 x i8] c"' is a bare unit and takes no payload argument.\00"
@str.39.struct = internal unnamed_addr constant { i64, ptr } { i64 47, ptr @str.39 }
@clo.const.33 = internal constant { ptr, ptr } { ptr @"diag::enum_unit_payload", ptr null }
@"var.diag::enum_unit_payload" = global ptr null
@str.40 = internal unnamed_addr constant [27 x i8] c"' expects payload of type \00"
@str.40.struct = internal unnamed_addr constant { i64, ptr } { i64 26, ptr @str.40 }
@str.41 = internal unnamed_addr constant [7 x i8] c", got \00"
@str.41.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.41 }
@str.42 = internal unnamed_addr constant [2 x i8] c".\00"
@str.42.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.42 }
@clo.const.34 = internal constant { ptr, ptr } { ptr @"diag::enum_payload_type", ptr null }
@"var.diag::enum_payload_type" = global ptr null
@str.43 = internal unnamed_addr constant [44 x i8] c"Passing a partially-initialized composite '\00"
@str.43.struct = internal unnamed_addr constant { i64, ptr } { i64 43, ptr @str.43 }
@str.44 = internal unnamed_addr constant [31 x i8] c"' to a function is disallowed.\00"
@str.44.struct = internal unnamed_addr constant { i64, ptr } { i64 30, ptr @str.44 }
@clo.const.35 = internal constant { ptr, ptr } { ptr @"diag::partial_composite_argument", ptr null }
@"var.diag::partial_composite_argument" = global ptr null
@str.45 = internal unnamed_addr constant [57 x i8] c"Dynamic indexing is only allowed on homogeneous records.\00"
@str.45.struct = internal unnamed_addr constant { i64, ptr } { i64 56, ptr @str.45 }
@clo.const.36 = internal constant { ptr, ptr } { ptr @"diag::E3051_dynamic_index_hetero", ptr null }
@"var.diag::E3051_dynamic_index_hetero" = global ptr null
@str.46 = internal unnamed_addr constant [56 x i8] c"Cycle iteration is only allowed on homogeneous records.\00"
@str.46.struct = internal unnamed_addr constant { i64, ptr } { i64 55, ptr @str.46 }
@clo.const.37 = internal constant { ptr, ptr } { ptr @"diag::E3051_cycle_iter_hetero", ptr null }
@"var.diag::E3051_cycle_iter_hetero" = global ptr null
@str.47 = internal unnamed_addr constant [72 x i8] c"Cannot construct a String from a RawPtr \E2\80\94 'String(ptr)' is rejected. \00"
@str.47.struct = internal unnamed_addr constant { i64, ptr } { i64 71, ptr @str.47 }
@str.48 = internal unnamed_addr constant [55 x i8] c"Build with literals, '+', '++', 's + n', or a Builder.\00"
@str.48.struct = internal unnamed_addr constant { i64, ptr } { i64 54, ptr @str.48 }
@clo.const.38 = internal constant { ptr, ptr } { ptr @"diag::E3065_rawptr_to_string", ptr null }
@"var.diag::E3065_rawptr_to_string" = global ptr null
@str.49 = internal unnamed_addr constant [59 x i8] c"Address operator '&' requires a Builder or String operand.\00"
@str.49.struct = internal unnamed_addr constant { i64, ptr } { i64 58, ptr @str.49 }
@clo.const.39 = internal constant { ptr, ptr } { ptr @"diag::E3078_addr_builder_or_string", ptr null }
@"var.diag::E3078_addr_builder_or_string" = global ptr null
@str.50 = internal unnamed_addr constant [35 x i8] c"Record size mismatch in arithmetic\00"
@str.50.struct = internal unnamed_addr constant { i64, ptr } { i64 34, ptr @str.50 }
@clo.const.40 = internal constant { ptr, ptr } { ptr @"diag::E3084_record_size_mismatch", ptr null }
@"var.diag::E3084_record_size_mismatch" = global ptr null
@str.51 = internal unnamed_addr constant [25 x i8] c"Arithmetic type mismatch\00"
@str.51.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.51 }
@clo.const.41 = internal constant { ptr, ptr } { ptr @"diag::E3084_arithmetic_type_mismatch", ptr null }
@"var.diag::E3084_arithmetic_type_mismatch" = global ptr null
@str.52 = internal unnamed_addr constant [39 x i8] c"Builder append requires byte or String\00"
@str.52.struct = internal unnamed_addr constant { i64, ptr } { i64 38, ptr @str.52 }
@clo.const.42 = internal constant { ptr, ptr } { ptr @"diag::E3084_builder_append_type", ptr null }
@"var.diag::E3084_builder_append_type" = global ptr null
@str.53 = internal unnamed_addr constant [43 x i8] c"Incompatible branch result types in choice\00"
@str.53.struct = internal unnamed_addr constant { i64, ptr } { i64 42, ptr @str.53 }
@clo.const.43 = internal constant { ptr, ptr } { ptr @"diag::E3084_choice_branch_mismatch", ptr null }
@"var.diag::E3084_choice_branch_mismatch" = global ptr null
@str.54 = internal unnamed_addr constant [40 x i8] c"Operand of '--!' must be a ramification\00"
@str.54.struct = internal unnamed_addr constant { i64, ptr } { i64 39, ptr @str.54 }
@clo.const.44 = internal constant { ptr, ptr } { ptr @"diag::E3091_propagate_ram_operand", ptr null }
@"var.diag::E3091_propagate_ram_operand" = global ptr null
@str.55 = internal unnamed_addr constant [42 x i8] c"Cannot infer concrete type for expression\00"
@str.55.struct = internal unnamed_addr constant { i64, ptr } { i64 41, ptr @str.55 }
@clo.const.45 = internal constant { ptr, ptr } { ptr @"diag::E3103_cannot_infer_type", ptr null }
@"var.diag::E3103_cannot_infer_type" = global ptr null
@"var.diag::E3131_whole_val_init_prefix" = global ptr null
@"var.diag::E3131_whole_val_init_suffix" = global ptr null
@str.56 = internal unnamed_addr constant [49 x i8] c"Cannot return Addr from an arena-restore scope. \00"
@str.56.struct = internal unnamed_addr constant { i64, ptr } { i64 48, ptr @str.56 }
@str.57 = internal unnamed_addr constant [48 x i8] c"Copy data explicitly with '++' before boundary.\00"
@str.57.struct = internal unnamed_addr constant { i64, ptr } { i64 47, ptr @str.57 }
@clo.const.46 = internal constant { ptr, ptr } { ptr @"diag::E3133_addr_escape_restore", ptr null }
@"var.diag::E3133_addr_escape_restore" = global ptr null
@str.58 = internal unnamed_addr constant [80 x i8] c"Assignment of block-scoped Addr to outer-scope binding escapes arena lifecycle.\00"
@str.58.struct = internal unnamed_addr constant { i64, ptr } { i64 79, ptr @str.58 }
@clo.const.47 = internal constant { ptr, ptr } { ptr @"diag::E3134_addr_escape_lifecycle", ptr null }
@"var.diag::E3134_addr_escape_lifecycle" = global ptr null
@str.59 = internal unnamed_addr constant [54 x i8] c"Compile-time type choice has no branch for this type.\00"
@str.59.struct = internal unnamed_addr constant { i64, ptr } { i64 53, ptr @str.59 }
@clo.const.48 = internal constant { ptr, ptr } { ptr @"diag::E3136_type_choice_no_branch", ptr null }
@"var.diag::E3136_type_choice_no_branch" = global ptr null
@str.60 = internal unnamed_addr constant [79 x i8] c"arena allocation under --no-runtime. The feature you used (a record, closure, \00"
@str.60.struct = internal unnamed_addr constant { i64, ptr } { i64 78, ptr @str.60 }
@str.61 = internal unnamed_addr constant [68 x i8] c"String concat, Builder, or heap ram/enum) needs the runtime arena, \00"
@str.61.struct = internal unnamed_addr constant { i64, ptr } { i64 67, ptr @str.61 }
@str.62 = internal unnamed_addr constant [73 x i8] c"which --no-runtime omits. Use only bare-metal features: Int arithmetic, \00"
@str.62.struct = internal unnamed_addr constant { i64, ptr } { i64 72, ptr @str.62 }
@str.63 = internal unnamed_addr constant [62 x i8] c"String literals, '?s', 's(i)', and raw '@[Addr(...)]' memory.\00"
@str.63.struct = internal unnamed_addr constant { i64, ptr } { i64 61, ptr @str.63 }
@clo.const.49 = internal constant { ptr, ptr } { ptr @"diag::E3140_no_runtime_arena", ptr null }
@"var.diag::E3140_no_runtime_arena" = global ptr null
@str.64 = internal unnamed_addr constant [85 x i8] c"Raw memory write '@[addr] = expr' requires an integerish or pointer value, got Float\00"
@str.64.struct = internal unnamed_addr constant { i64, ptr } { i64 84, ptr @str.64 }
@clo.const.50 = internal constant { ptr, ptr } { ptr @"diag::E3142_raw_write_type", ptr null }
@"var.diag::E3142_raw_write_type" = global ptr null
@str.65 = internal unnamed_addr constant [34 x i8] c"View cannot escape function frame\00"
@str.65.struct = internal unnamed_addr constant { i64, ptr } { i64 33, ptr @str.65 }
@clo.const.51 = internal constant { ptr, ptr } { ptr @"diag::E3150_view_escape_frame", ptr null }
@"var.diag::E3150_view_escape_frame" = global ptr null
@str.66 = internal unnamed_addr constant [42 x i8] c"'#exit' expects an integerish status code\00"
@str.66.struct = internal unnamed_addr constant { i64, ptr } { i64 41, ptr @str.66 }
@clo.const.52 = internal constant { ptr, ptr } { ptr @"diag::E3172_exit_status_integerish", ptr null }
@"var.diag::E3172_exit_status_integerish" = global ptr null
@str.67 = internal unnamed_addr constant [49 x i8] c"Return '--|' can only be used inside a function.\00"
@str.67.struct = internal unnamed_addr constant { i64, ptr } { i64 48, ptr @str.67 }
@clo.const.53 = internal constant { ptr, ptr } { ptr @"diag::E3173_return_outside_fn", ptr null }
@"var.diag::E3173_return_outside_fn" = global ptr null
@str.68 = internal unnamed_addr constant [61 x i8] c"Propagate operator '--!' can only be used inside a function.\00"
@str.68.struct = internal unnamed_addr constant { i64, ptr } { i64 60, ptr @str.68 }
@clo.const.54 = internal constant { ptr, ptr } { ptr @"diag::E3173_propagate_outside_fn", ptr null }
@"var.diag::E3173_propagate_outside_fn" = global ptr null
@str.69 = internal unnamed_addr constant [72 x i8] c"Choice has a constant expression in a branch and its value is discarded\00"
@str.69.struct = internal unnamed_addr constant { i64, ptr } { i64 71, ptr @str.69 }
@clo.const.55 = internal constant { ptr, ptr } { ptr @"diag::E3175_choice_const_discarded", ptr null }
@"var.diag::E3175_choice_const_discarded" = global ptr null
@str.70 = internal unnamed_addr constant [32 x i8] c"Use of uninitialized variable '\00"
@str.70.struct = internal unnamed_addr constant { i64, ptr } { i64 31, ptr @str.70 }
@clo.const.56 = internal constant { ptr, ptr } { ptr @"diag::uninitialized_variable_prefix", ptr null }
@"var.diag::uninitialized_variable_prefix" = global ptr null
@str.71 = internal unnamed_addr constant [68 x i8] c"' \E2\80\94 it is a built-in type name and is reserved for type coercion.\00"
@str.71.struct = internal unnamed_addr constant { i64, ptr } { i64 67, ptr @str.71 }
@clo.const.57 = internal constant { ptr, ptr } { ptr @"diag::E3050_reserved_type_name_suffix", ptr null }
@"var.diag::E3050_reserved_type_name_suffix" = global ptr null
@str.72 = internal unnamed_addr constant [35 x i8] c"Return type mismatch in function: \00"
@str.72.struct = internal unnamed_addr constant { i64, ptr } { i64 34, ptr @str.72 }
@clo.const.58 = internal constant { ptr, ptr } { ptr @"diag::return_type_mismatch_prefix", ptr null }
@"var.diag::return_type_mismatch_prefix" = global ptr null
@str.73 = internal unnamed_addr constant [33 x i8] c"Type mismatch in assignment to: \00"
@str.73.struct = internal unnamed_addr constant { i64, ptr } { i64 32, ptr @str.73 }
@clo.const.59 = internal constant { ptr, ptr } { ptr @"diag::assignment_type_mismatch_prefix", ptr null }
@"var.diag::assignment_type_mismatch_prefix" = global ptr null
@str.74 = internal unnamed_addr constant [80 x i8] c"Member index 'x.(i)' must be a compile-time constant (a per-field cycle index).\00"
@str.74.struct = internal unnamed_addr constant { i64, ptr } { i64 79, ptr @str.74 }
@clo.const.60 = internal constant { ptr, ptr } { ptr @"diag::member_index_constant", ptr null }
@"var.diag::member_index_constant" = global ptr null
@str.75 = internal unnamed_addr constant [36 x i8] c"Type mismatch in field assignment: \00"
@str.75.struct = internal unnamed_addr constant { i64, ptr } { i64 35, ptr @str.75 }
@clo.const.61 = internal constant { ptr, ptr } { ptr @"diag::field_assignment_type_mismatch_prefix", ptr null }
@"var.diag::field_assignment_type_mismatch_prefix" = global ptr null
@str.76 = internal unnamed_addr constant [44 x i8] c"Cannot write through a String call-target '\00"
@str.76.struct = internal unnamed_addr constant { i64, ptr } { i64 43, ptr @str.76 }
@clo.const.62 = internal constant { ptr, ptr } { ptr @"diag::E3067_string_write_prefix", ptr null }
@"var.diag::E3067_string_write_prefix" = global ptr null
@str.77 = internal unnamed_addr constant [72 x i8] c"(...)' \E2\80\94 Strings are immutable and a Builder is written with 'b + c'.\00"
@str.77.struct = internal unnamed_addr constant { i64, ptr } { i64 71, ptr @str.77 }
@clo.const.63 = internal constant { ptr, ptr } { ptr @"diag::E3067_string_write_suffix", ptr null }
@"var.diag::E3067_string_write_suffix" = global ptr null
@str.78 = internal unnamed_addr constant [50 x i8] c"Cannot write element of forward-annotated slice '\00"
@str.78.struct = internal unnamed_addr constant { i64, ptr } { i64 49, ptr @str.78 }
@clo.const.64 = internal constant { ptr, ptr } { ptr @"diag::E3049_slice_write_prefix", ptr null }
@"var.diag::E3049_slice_write_prefix" = global ptr null
@str.79 = internal unnamed_addr constant [37 x i8] c"' before whole-value initialization.\00"
@str.79.struct = internal unnamed_addr constant { i64, ptr } { i64 36, ptr @str.79 }
@clo.const.65 = internal constant { ptr, ptr } { ptr @"diag::E3049_slice_write_suffix", ptr null }
@"var.diag::E3049_slice_write_suffix" = global ptr null
@str.80 = internal unnamed_addr constant [49 x i8] c"Cannot infer concrete return type for function '\00"
@str.80.struct = internal unnamed_addr constant { i64, ptr } { i64 48, ptr @str.80 }
@clo.const.66 = internal constant { ptr, ptr } { ptr @"diag::return_type_inference_prefix", ptr null }
@"var.diag::return_type_inference_prefix" = global ptr null
@str.81 = internal unnamed_addr constant [83 x i8] c"' is used as a value but its parameter types cannot be determined \E2\80\94 no declared \00"
@str.81.struct = internal unnamed_addr constant { i64, ptr } { i64 82, ptr @str.81 }
@str.82 = internal unnamed_addr constant [65 x i8] c"signature and no call site to infer from. Declare a signature: '\00"
@str.82.struct = internal unnamed_addr constant { i64, ptr } { i64 64, ptr @str.82 }
@clo.const.67 = internal constant { ptr, ptr } { ptr @"diag::E3128_function_value_signature_suffix", ptr null }
@"var.diag::E3128_function_value_signature_suffix" = global ptr null
@str.83 = internal unnamed_addr constant [35 x i8] c"Expected primary expression, got '\00"
@str.83.struct = internal unnamed_addr constant { i64, ptr } { i64 34, ptr @str.83 }
@clo.const.68 = internal constant { ptr, ptr } { ptr @"diag::expected_primary_prefix", ptr null }
@"var.diag::expected_primary_prefix" = global ptr null
@str.84 = internal unnamed_addr constant [72 x i8] c"Cycle jump suffix must be a positive integer depth (e.g. '-->2'), got '\00"
@str.84.struct = internal unnamed_addr constant { i64, ptr } { i64 71, ptr @str.84 }
@clo.const.69 = internal constant { ptr, ptr } { ptr @"diag::cycle_jump_depth_prefix", ptr null }
@"var.diag::cycle_jump_depth_prefix" = global ptr null
@str.85 = internal unnamed_addr constant [63 x i8] c"Record type repetition count must be a positive integer, got '\00"
@str.85.struct = internal unnamed_addr constant { i64, ptr } { i64 62, ptr @str.85 }
@clo.const.70 = internal constant { ptr, ptr } { ptr @"diag::record_repeat_count_prefix", ptr null }
@"var.diag::record_repeat_count_prefix" = global ptr null
@str.86 = internal unnamed_addr constant [32 x i8] c" exceeds the maximum of 1000000\00"
@str.86.struct = internal unnamed_addr constant { i64, ptr } { i64 31, ptr @str.86 }
@clo.const.71 = internal constant { ptr, ptr } { ptr @"diag::record_repeat_limit_suffix", ptr null }
@"var.diag::record_repeat_limit_suffix" = global ptr null
@str.87 = internal unnamed_addr constant [55 x i8] c"Expected an integer right binding-power after '#infix \00"
@str.87.struct = internal unnamed_addr constant { i64, ptr } { i64 54, ptr @str.87 }
@clo.const.72 = internal constant { ptr, ptr } { ptr @"diag::infix_right_binding_power_prefix", ptr null }
@"var.diag::infix_right_binding_power_prefix" = global ptr null
@str.88 = internal unnamed_addr constant [61 x i8] c"Expected an integer left binding-power after '#infix', got '\00"
@str.88.struct = internal unnamed_addr constant { i64, ptr } { i64 60, ptr @str.88 }
@clo.const.73 = internal constant { ptr, ptr } { ptr @"diag::infix_left_binding_power_prefix", ptr null }
@"var.diag::infix_left_binding_power_prefix" = global ptr null
@str.89 = internal unnamed_addr constant [48 x i8] c"' conflicts with symbol already imported from '\00"
@str.89.struct = internal unnamed_addr constant { i64, ptr } { i64 47, ptr @str.89 }
@clo.const.74 = internal constant { ptr, ptr } { ptr @"diag::imported_symbol_conflict_suffix", ptr null }
@"var.diag::imported_symbol_conflict_suffix" = global ptr null
@str.90 = internal unnamed_addr constant [38 x i8] c"E3033: Name clash: foreign function '\00"
@str.90.struct = internal unnamed_addr constant { i64, ptr } { i64 37, ptr @str.90 }
@clo.const.75 = internal constant { ptr, ptr } { ptr @"diag::E3033_foreign_function_clash_prefix", ptr null }
@"var.diag::E3033_foreign_function_clash_prefix" = global ptr null
@str.91 = internal unnamed_addr constant [59 x i8] c"' declared in module conflicts with symbol imported from '\00"
@str.91.struct = internal unnamed_addr constant { i64, ptr } { i64 58, ptr @str.91 }
@clo.const.76 = internal constant { ptr, ptr } { ptr @"diag::declared_symbol_conflict_suffix", ptr null }
@"var.diag::declared_symbol_conflict_suffix" = global ptr null
@str.92 = internal unnamed_addr constant [45 x i8] c"E5038: module import cycle across packages: \00"
@str.92.struct = internal unnamed_addr constant { i64, ptr } { i64 44, ptr @str.92 }
@clo.const.77 = internal constant { ptr, ptr } { ptr @"diag::E5038_package_import_cycle_prefix", ptr null }
@"var.diag::E5038_package_import_cycle_prefix" = global ptr null
@str.93 = internal unnamed_addr constant [43 x i8] c": Clang compilation failed with exit code \00"
@str.93.struct = internal unnamed_addr constant { i64, ptr } { i64 42, ptr @str.93 }
@clo.const.78 = internal constant { ptr, ptr } { ptr @"diag::clang_compilation_failed_suffix", ptr null }
@"var.diag::clang_compilation_failed_suffix" = global ptr null
@str.94 = internal unnamed_addr constant [37 x i8] c"E5007: No input .dva file specified.\00"
@str.94.struct = internal unnamed_addr constant { i64, ptr } { i64 36, ptr @str.94 }
@clo.const.79 = internal constant { ptr, ptr } { ptr @"diag::E5007_no_input", ptr null }
@"var.diag::E5007_no_input" = global ptr null
@str.95 = internal unnamed_addr constant [43 x i8] c"Record does not satisfy open record fields\00"
@str.95.struct = internal unnamed_addr constant { i64, ptr } { i64 42, ptr @str.95 }
@clo.const.80 = internal constant { ptr, ptr } { ptr @"diag::E3084_open_record_fields", ptr null }
@"var.diag::E3084_open_record_fields" = global ptr null
@str.96 = internal unnamed_addr constant [37 x i8] c"Cannot assign ramification of shape \00"
@str.96.struct = internal unnamed_addr constant { i64, ptr } { i64 36, ptr @str.96 }
@clo.const.81 = internal constant { ptr, ptr } { ptr @"diag::E3089_ram_shape_prefix", ptr null }
@"var.diag::E3089_ram_shape_prefix" = global ptr null
@str.97 = internal unnamed_addr constant [41 x i8] c"--locked: edva.lock.ccl is out of date (\00"
@str.97.struct = internal unnamed_addr constant { i64, ptr } { i64 40, ptr @str.97 }
@clo.const.82 = internal constant { ptr, ptr } { ptr @"diag::locked_manifest_stale_prefix", ptr null }
@"var.diag::locked_manifest_stale_prefix" = global ptr null
@str.98 = internal unnamed_addr constant [56 x i8] c"': repository contains illegal path or escaping symlink\00"
@str.98.struct = internal unnamed_addr constant { i64, ptr } { i64 55, ptr @str.98 }
@clo.const.83 = internal constant { ptr, ptr } { ptr @"diag::repository_illegal_path_suffix", ptr null }
@"var.diag::repository_illegal_path_suffix" = global ptr null
@str.99 = internal unnamed_addr constant [50 x i8] c"tampered vendor content: tree hash mismatch for '\00"
@str.99.struct = internal unnamed_addr constant { i64, ptr } { i64 49, ptr @str.99 }
@clo.const.84 = internal constant { ptr, ptr } { ptr @"diag::vendor_tree_mismatch_prefix", ptr null }
@"var.diag::vendor_tree_mismatch_prefix" = global ptr null
@str.100 = internal unnamed_addr constant [51 x i8] c"': archive contains illegal path or path traversal\00"
@str.100.struct = internal unnamed_addr constant { i64, ptr } { i64 50, ptr @str.100 }
@clo.const.85 = internal constant { ptr, ptr } { ptr @"diag::archive_illegal_path_suffix", ptr null }
@"var.diag::archive_illegal_path_suffix" = global ptr null
@str.101 = internal unnamed_addr constant [85 x i8] c"' cannot be applied to ramifications \E2\80\94 ramifications have no ordering; test their \00"
@str.101.struct = internal unnamed_addr constant { i64, ptr } { i64 84, ptr @str.101 }
@str.102 = internal unnamed_addr constant [33 x i8] c"slots with '|' branches instead.\00"
@str.102.struct = internal unnamed_addr constant { i64, ptr } { i64 32, ptr @str.102 }
@clo.const.86 = internal constant { ptr, ptr } { ptr @"diag::E3127_ram_ordering_suffix", ptr null }
@"var.diag::E3127_ram_ordering_suffix" = global ptr null
@str.103 = internal unnamed_addr constant [70 x i8] c"' cannot be applied to enums \E2\80\94 enums have no ordering; match their \00"
@str.103.struct = internal unnamed_addr constant { i64, ptr } { i64 69, ptr @str.103 }
@str.104 = internal unnamed_addr constant [44 x i8] c"variants with '[Variant]' branches instead.\00"
@str.104.struct = internal unnamed_addr constant { i64, ptr } { i64 43, ptr @str.104 }
@clo.const.87 = internal constant { ptr, ptr } { ptr @"diag::E3127_enum_ordering_suffix", ptr null }
@"var.diag::E3127_enum_ordering_suffix" = global ptr null
@str.105 = internal unnamed_addr constant [86 x i8] c"Record field index 'T.(i)' must be a compile-time constant (a per-field cycle index).\00"
@str.105.struct = internal unnamed_addr constant { i64, ptr } { i64 85, ptr @str.105 }
@clo.const.88 = internal constant { ptr, ptr } { ptr @"diag::record_field_index_constant", ptr null }
@"var.diag::record_field_index_constant" = global ptr null
@str.106 = internal unnamed_addr constant [81 x i8] c"Enum variant index 'T.(i)' must be a compile-time constant (a per-variant cycle \00"
@str.106.struct = internal unnamed_addr constant { i64, ptr } { i64 80, ptr @str.106 }
@str.107 = internal unnamed_addr constant [8 x i8] c"index).\00"
@str.107.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.107 }
@clo.const.89 = internal constant { ptr, ptr } { ptr @"diag::enum_variant_index_constant", ptr null }
@"var.diag::enum_variant_index_constant" = global ptr null
@str.108 = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@str.108.struct = internal unnamed_addr constant { i64, ptr } { i64 70, ptr @str.108 }
@clo.const.90 = internal constant { ptr, ptr } { ptr @"diag::E4002_string_length_overflow", ptr null }
@"var.diag::E4002_string_length_overflow" = global ptr null
@str.109 = internal unnamed_addr constant [31 x i8] c"' targets cycle-nesting level \00"
@str.109.struct = internal unnamed_addr constant { i64, ptr } { i64 30, ptr @str.109 }
@clo.const.91 = internal constant { ptr, ptr } { ptr @"diag::E3007_cycle_jump_level_prefix", ptr null }
@"var.diag::E3007_cycle_jump_level_prefix" = global ptr null
@str.110 = internal unnamed_addr constant [41 x i8] c" enclosing cycle(s) exist at this point.\00"
@str.110.struct = internal unnamed_addr constant { i64, ptr } { i64 40, ptr @str.110 }
@clo.const.92 = internal constant { ptr, ptr } { ptr @"diag::E3007_cycle_jump_level_suffix", ptr null }
@"var.diag::E3007_cycle_jump_level_suffix" = global ptr null
@str.111 = internal unnamed_addr constant [46 x i8] c"E4007: unwrap on empty or error ramification\0A\00"
@str.111.struct = internal unnamed_addr constant { i64, ptr } { i64 45, ptr @str.111 }
@clo.const.93 = internal constant { ptr, ptr } { ptr @"diag::E4007_unwrap_empty_or_error", ptr null }
@"var.diag::E4007_unwrap_empty_or_error" = global ptr null
@str.112 = internal unnamed_addr constant [32 x i8] c"' is not compile-time evaluable\00"
@str.112.struct = internal unnamed_addr constant { i64, ptr } { i64 31, ptr @str.112 }
@clo.const.94 = internal constant { ptr, ptr } { ptr @"diag::compile_time_parameter_suffix", ptr null }
@"var.diag::compile_time_parameter_suffix" = global ptr null
@str.113 = internal unnamed_addr constant [78 x i8] c"' is ambiguous \E2\80\94 declared by multiple enums; qualify the variant as 'Enum::\00"
@str.113.struct = internal unnamed_addr constant { i64, ptr } { i64 77, ptr @str.113 }
@clo.const.95 = internal constant { ptr, ptr } { ptr @"diag::E3105_enum_label_ambiguous_suffix", ptr null }
@"var.diag::E3105_enum_label_ambiguous_suffix" = global ptr null
@str.114 = internal unnamed_addr constant [48 x i8] c"E4008: Builder length assignment out of bounds\0A\00"
@str.114.struct = internal unnamed_addr constant { i64, ptr } { i64 47, ptr @str.114 }
@clo.const.96 = internal constant { ptr, ptr } { ptr @"diag::E4008_builder_length_bounds", ptr null }
@"var.diag::E4008_builder_length_bounds" = global ptr null
@str.115 = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@str.115.struct = internal unnamed_addr constant { i64, ptr } { i64 37, ptr @str.115 }
@clo.const.97 = internal constant { ptr, ptr } { ptr @"diag::runtime_error_format", ptr null }
@"var.diag::runtime_error_format" = global ptr null
@str.116 = internal unnamed_addr constant [83 x i8] c"E4004: arena allocation too large for a single chunk (requested %llu bytes, chunk \00"
@str.116.struct = internal unnamed_addr constant { i64, ptr } { i64 82, ptr @str.116 }
@str.117 = internal unnamed_addr constant [17 x i8] c"cap %llu bytes)\0A\00"
@str.117.struct = internal unnamed_addr constant { i64, ptr } { i64 16, ptr @str.117 }
@clo.const.98 = internal constant { ptr, ptr } { ptr @"diag::E4004_arena_allocation_too_large", ptr null }
@"var.diag::E4004_arena_allocation_too_large" = global ptr null
@str.118 = internal unnamed_addr constant [58 x i8] c"E4003: arena chunk limit reached (too many arena chunks)\0A\00"
@str.118.struct = internal unnamed_addr constant { i64, ptr } { i64 57, ptr @str.118 }
@clo.const.99 = internal constant { ptr, ptr } { ptr @"diag::E4003_arena_chunk_limit", ptr null }
@"var.diag::E4003_arena_chunk_limit" = global ptr null
@str.119 = internal unnamed_addr constant [50 x i8] c"E4001: arena allocator exhausted (out of memory)\0A\00"
@str.119.struct = internal unnamed_addr constant { i64, ptr } { i64 49, ptr @str.119 }
@clo.const.100 = internal constant { ptr, ptr } { ptr @"diag::E4001_arena_exhausted", ptr null }
@"var.diag::E4001_arena_exhausted" = global ptr null
@str.120 = internal unnamed_addr constant [36 x i8] c"E5012: Failed to write LLVM IR to '\00"
@str.120.struct = internal unnamed_addr constant { i64, ptr } { i64 35, ptr @str.120 }
@clo.const.101 = internal constant { ptr, ptr } { ptr @"diag::E5012_write_ir_prefix", ptr null }
@"var.diag::E5012_write_ir_prefix" = global ptr null
@str.121 = internal unnamed_addr constant [51 x i8] c"Unterminated string literal -- missing closing '\22'\00"
@str.121.struct = internal unnamed_addr constant { i64, ptr } { i64 50, ptr @str.121 }
@clo.const.102 = internal constant { ptr, ptr } { ptr @"diag::E1008_string_unterminated", ptr null }
@"var.diag::E1008_string_unterminated" = global ptr null
@"var.diag::capture_enabled" = global i1 false
@"var.diag::captured_diags" = global ptr null
@clo.const.103 = internal constant { ptr, ptr } { ptr @"diag::enable_capture", ptr null }
@"var.diag::enable_capture" = global ptr null
@clo.const.104 = internal constant { ptr, ptr } { ptr @"diag::disable_capture", ptr null }
@"var.diag::disable_capture" = global ptr null
@clo.const.105 = internal constant { ptr, ptr } { ptr @"diag::is_capturing", ptr null }
@"var.diag::is_capturing" = global ptr null
@clo.const.106 = internal constant { ptr, ptr } { ptr @"diag::clear_captured", ptr null }
@"var.diag::clear_captured" = global ptr null
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@clo.const.107 = internal constant { ptr, ptr } { ptr @"diag::record_diag", ptr null }
@"var.diag::record_diag" = global ptr null
@clo.const.108 = internal constant { ptr, ptr } { ptr @"diag::get_captured", ptr null }
@"var.diag::get_captured" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_diag, ptr null }]

declare ptr @dva_arena_current()

declare ptr @dva_arena_set_current(ptr)

declare ptr @malloc(i64)

declare void @free(ptr)

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

declare void @dva_arena_init(ptr, i64)

declare ptr @dva_arena_alloc(ptr, i64)

declare void @dva_arena_destroy(ptr)

declare i64 @dva_arena_save(ptr)

declare void @dva_arena_restore(ptr, i64)

declare i1 @dva_arena_validate_tag(ptr, i64)

declare void @dva_arena_adopt(ptr, ptr)

declare i64 @dva_hash_string(ptr, i64)

define internal void @__dva_global_init_diag() #1 {
entry:
  store ptr @clo.const, ptr @"var.diag::E1017_multiline_under_indented", align 8
  store ptr @clo.const.1, ptr @"var.diag::E1018_multiline_unterminated", align 8
  store ptr @clo.const.2, ptr @"var.diag::E1017_heredoc_under_indented", align 8
  store ptr @clo.const.3, ptr @"var.diag::E1018_heredoc_unterminated", align 8
  store ptr @clo.const.4, ptr @"var.diag::E2024_bare_bar_position", align 8
  store ptr @clo.const.5, ptr @"var.diag::E2025_range_endpoint_whitespace", align 8
  store ptr @clo.const.6, ptr @"var.diag::E2032_call_paren_whitespace", align 8
  store ptr @clo.const.7, ptr @"var.diag::E2037_params_parenthesized", align 8
  store ptr @clo.const.8, ptr @"var.diag::E2039_expr_too_deep", align 8
  store ptr @clo.const.9, ptr @"var.diag::E2039_param_mutable_prefix", align 8
  store ptr @clo.const.10, ptr @"var.diag::E2040_underscore_param", align 8
  store ptr @clo.const.11, ptr @"var.diag::E2044_underscore_assign", align 8
  store ptr @clo.const.12, ptr @"var.diag::E2093_assign_typed_load", align 8
  store ptr @clo.const.13, ptr @"var.diag::E2096_bar_before_guard", align 8
  store ptr @clo.const.14, ptr @"var.diag::E2105_redundant_choice_tail", align 8
  store ptr @clo.const.15, ptr @"var.diag::E2108_state_binding_target", align 8
  store ptr @clo.const.16, ptr @"var.diag::E2109_disallowed_variant_wildcard", align 8
  store ptr @clo.const.17, ptr @"var.diag::E3003_choice_underscore_undefined", align 8
  store ptr @clo.const.18, ptr @"var.diag::E3008_not_invalid_type", align 8
  store ptr @clo.const.19, ptr @"var.diag::E3008_not_integer", align 8
  store ptr @clo.const.20, ptr @"var.diag::E3032_assign_void_var_prefix", align 8
  store ptr @clo.const.21, ptr @"var.diag::E3032_assign_void_elem_prefix", align 8
  store ptr @clo.const.22, ptr @"var.diag::E3033_reassign_immutable_prefix", align 8
  store ptr @clo.const.23, ptr @"var.diag::E3033_reassign_immutable_suffix", align 8
  store ptr @clo.const.24, ptr @"var.diag::E3033_reassign_immutable_tail", align 8
  store ptr @clo.const.25, ptr @"var.diag::reassign_immutable", align 8
  store ptr @clo.const.26, ptr @"var.diag::assign_void_variable", align 8
  store ptr @clo.const.27, ptr @"var.diag::assign_void_element", align 8
  store ptr @clo.const.30, ptr @"var.diag::whole_value_init", align 8
  store ptr @clo.const.31, ptr @"var.diag::record_default_missing", align 8
  store ptr @clo.const.32, ptr @"var.diag::enum_no_variant", align 8
  store ptr @clo.const.33, ptr @"var.diag::enum_unit_payload", align 8
  store ptr @clo.const.34, ptr @"var.diag::enum_payload_type", align 8
  store ptr @clo.const.35, ptr @"var.diag::partial_composite_argument", align 8
  store ptr @clo.const.36, ptr @"var.diag::E3051_dynamic_index_hetero", align 8
  store ptr @clo.const.37, ptr @"var.diag::E3051_cycle_iter_hetero", align 8
  store ptr @clo.const.38, ptr @"var.diag::E3065_rawptr_to_string", align 8
  store ptr @clo.const.39, ptr @"var.diag::E3078_addr_builder_or_string", align 8
  store ptr @clo.const.40, ptr @"var.diag::E3084_record_size_mismatch", align 8
  store ptr @clo.const.41, ptr @"var.diag::E3084_arithmetic_type_mismatch", align 8
  store ptr @clo.const.42, ptr @"var.diag::E3084_builder_append_type", align 8
  store ptr @clo.const.43, ptr @"var.diag::E3084_choice_branch_mismatch", align 8
  store ptr @clo.const.44, ptr @"var.diag::E3091_propagate_ram_operand", align 8
  store ptr @clo.const.45, ptr @"var.diag::E3103_cannot_infer_type", align 8
  store ptr @clo.const.28, ptr @"var.diag::E3131_whole_val_init_prefix", align 8
  store ptr @clo.const.29, ptr @"var.diag::E3131_whole_val_init_suffix", align 8
  store ptr @clo.const.46, ptr @"var.diag::E3133_addr_escape_restore", align 8
  store ptr @clo.const.47, ptr @"var.diag::E3134_addr_escape_lifecycle", align 8
  store ptr @clo.const.48, ptr @"var.diag::E3136_type_choice_no_branch", align 8
  store ptr @clo.const.49, ptr @"var.diag::E3140_no_runtime_arena", align 8
  store ptr @clo.const.50, ptr @"var.diag::E3142_raw_write_type", align 8
  store ptr @clo.const.51, ptr @"var.diag::E3150_view_escape_frame", align 8
  store ptr @clo.const.52, ptr @"var.diag::E3172_exit_status_integerish", align 8
  store ptr @clo.const.53, ptr @"var.diag::E3173_return_outside_fn", align 8
  store ptr @clo.const.54, ptr @"var.diag::E3173_propagate_outside_fn", align 8
  store ptr @clo.const.55, ptr @"var.diag::E3175_choice_const_discarded", align 8
  store ptr @clo.const.56, ptr @"var.diag::uninitialized_variable_prefix", align 8
  store ptr @clo.const.57, ptr @"var.diag::E3050_reserved_type_name_suffix", align 8
  store ptr @clo.const.58, ptr @"var.diag::return_type_mismatch_prefix", align 8
  store ptr @clo.const.59, ptr @"var.diag::assignment_type_mismatch_prefix", align 8
  store ptr @clo.const.60, ptr @"var.diag::member_index_constant", align 8
  store ptr @clo.const.61, ptr @"var.diag::field_assignment_type_mismatch_prefix", align 8
  store ptr @clo.const.62, ptr @"var.diag::E3067_string_write_prefix", align 8
  store ptr @clo.const.63, ptr @"var.diag::E3067_string_write_suffix", align 8
  store ptr @clo.const.64, ptr @"var.diag::E3049_slice_write_prefix", align 8
  store ptr @clo.const.65, ptr @"var.diag::E3049_slice_write_suffix", align 8
  store ptr @clo.const.66, ptr @"var.diag::return_type_inference_prefix", align 8
  store ptr @clo.const.67, ptr @"var.diag::E3128_function_value_signature_suffix", align 8
  store ptr @clo.const.68, ptr @"var.diag::expected_primary_prefix", align 8
  store ptr @clo.const.69, ptr @"var.diag::cycle_jump_depth_prefix", align 8
  store ptr @clo.const.70, ptr @"var.diag::record_repeat_count_prefix", align 8
  store ptr @clo.const.71, ptr @"var.diag::record_repeat_limit_suffix", align 8
  store ptr @clo.const.72, ptr @"var.diag::infix_right_binding_power_prefix", align 8
  store ptr @clo.const.73, ptr @"var.diag::infix_left_binding_power_prefix", align 8
  store ptr @clo.const.74, ptr @"var.diag::imported_symbol_conflict_suffix", align 8
  store ptr @clo.const.75, ptr @"var.diag::E3033_foreign_function_clash_prefix", align 8
  store ptr @clo.const.76, ptr @"var.diag::declared_symbol_conflict_suffix", align 8
  store ptr @clo.const.77, ptr @"var.diag::E5038_package_import_cycle_prefix", align 8
  store ptr @clo.const.78, ptr @"var.diag::clang_compilation_failed_suffix", align 8
  store ptr @clo.const.79, ptr @"var.diag::E5007_no_input", align 8
  store ptr @clo.const.80, ptr @"var.diag::E3084_open_record_fields", align 8
  store ptr @clo.const.81, ptr @"var.diag::E3089_ram_shape_prefix", align 8
  store ptr @clo.const.82, ptr @"var.diag::locked_manifest_stale_prefix", align 8
  store ptr @clo.const.83, ptr @"var.diag::repository_illegal_path_suffix", align 8
  store ptr @clo.const.84, ptr @"var.diag::vendor_tree_mismatch_prefix", align 8
  store ptr @clo.const.85, ptr @"var.diag::archive_illegal_path_suffix", align 8
  store ptr @clo.const.86, ptr @"var.diag::E3127_ram_ordering_suffix", align 8
  store ptr @clo.const.87, ptr @"var.diag::E3127_enum_ordering_suffix", align 8
  store ptr @clo.const.88, ptr @"var.diag::record_field_index_constant", align 8
  store ptr @clo.const.89, ptr @"var.diag::enum_variant_index_constant", align 8
  store ptr @clo.const.90, ptr @"var.diag::E4002_string_length_overflow", align 8
  store ptr @clo.const.91, ptr @"var.diag::E3007_cycle_jump_level_prefix", align 8
  store ptr @clo.const.92, ptr @"var.diag::E3007_cycle_jump_level_suffix", align 8
  store ptr @clo.const.93, ptr @"var.diag::E4007_unwrap_empty_or_error", align 8
  store ptr @clo.const.94, ptr @"var.diag::compile_time_parameter_suffix", align 8
  store ptr @clo.const.95, ptr @"var.diag::E3105_enum_label_ambiguous_suffix", align 8
  store ptr @clo.const.96, ptr @"var.diag::E4008_builder_length_bounds", align 8
  store ptr @clo.const.97, ptr @"var.diag::runtime_error_format", align 8
  store ptr @clo.const.98, ptr @"var.diag::E4004_arena_allocation_too_large", align 8
  store ptr @clo.const.99, ptr @"var.diag::E4003_arena_chunk_limit", align 8
  store ptr @clo.const.100, ptr @"var.diag::E4001_arena_exhausted", align 8
  store ptr @clo.const.101, ptr @"var.diag::E5012_write_ir_prefix", align 8
  store ptr @clo.const.102, ptr @"var.diag::E1008_string_unterminated", align 8
  store i1 false, ptr @"var.diag::capture_enabled", align 1
  %arena.cur = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr @"var.diag::captured_diags", align 8
  store ptr @clo.const.103, ptr @"var.diag::enable_capture", align 8
  store ptr @clo.const.104, ptr @"var.diag::disable_capture", align 8
  store ptr @clo.const.105, ptr @"var.diag::is_capturing", align 8
  store ptr @clo.const.106, ptr @"var.diag::clear_captured", align 8
  store ptr @clo.const.107, ptr @"var.diag::record_diag", align 8
  store ptr @clo.const.108, ptr @"var.diag::get_captured", align 8
  ret void
}

define ptr @"diag::E1017_multiline_under_indented"() #1 {
entry:
  ret ptr @str.0.struct
}

define ptr @"diag::E1018_multiline_unterminated"() #1 {
entry:
  ret ptr @str.1.struct
}

define ptr @"diag::E1017_heredoc_under_indented"() #1 {
entry:
  %call.res = call ptr @"diag::E1017_multiline_under_indented"()
  ret ptr %call.res
}

define ptr @"diag::E1018_heredoc_unterminated"() #1 {
entry:
  %call.res = call ptr @"diag::E1018_multiline_unterminated"()
  ret ptr %call.res
}

define ptr @"diag::E2024_bare_bar_position"() #1 {
entry:
  %concat.lhs = load i64, ptr @str.2.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.3.struct, align 8
  %concat.rhs3 = and i64 %concat.rhs, 281474976710655
  %str.tag4 = lshr i64 %concat.rhs, 48
  %str.immortal5 = icmp eq i64 %str.tag4, 0
  br i1 %str.immortal5, label %str_ok7, label %str_gen_check6

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check6:                                   ; preds = %str_ok
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid10 = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag4)
  br i1 %tag.valid10, label %str_ok7, label %str_stale8

str_ok7:                                          ; preds = %str_stale8, %str_gen_check6, %str_ok
  %concat.rhs11 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs3)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len12

str_stale8:                                       ; preds = %str_gen_check6
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok7

concat.sum.len12:                                 ; preds = %str_overflow_abort, %str_ok7
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum13 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf14 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf14, label %str_overflow_abort16, label %concat.tot.len15

str_overflow_abort:                               ; preds = %str_ok7
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len12

concat.tot.len15:                                 ; preds = %str_overflow_abort16, %concat.sum.len12
  %arena.cur17 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 %sum13)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs11, i64 %concat.rhs3, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur18 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  ret ptr %concat.str

str_overflow_abort16:                             ; preds = %concat.sum.len12
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len15
}

declare i64 @write(i32, ptr, i64)

declare void @exit(i32)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define ptr @"diag::E2025_range_endpoint_whitespace"() #1 {
entry:
  ret ptr @str.4.struct
}

define ptr @"diag::E2032_call_paren_whitespace"() #1 {
entry:
  ret ptr @str.5.struct
}

define ptr @"diag::E2037_params_parenthesized"() #1 {
entry:
  ret ptr @str.6.struct
}

define ptr @"diag::E2039_expr_too_deep"() #1 {
entry:
  ret ptr @str.7.struct
}

define ptr @"diag::E2039_param_mutable_prefix"() #1 {
entry:
  ret ptr @str.8.struct
}

define ptr @"diag::E2040_underscore_param"() #1 {
entry:
  ret ptr @str.9.struct
}

define ptr @"diag::E2044_underscore_assign"() #1 {
entry:
  ret ptr @str.10.struct
}

define ptr @"diag::E2093_assign_typed_load"() #1 {
entry:
  ret ptr @str.11.struct
}

define ptr @"diag::E2096_bar_before_guard"() #1 {
entry:
  ret ptr @str.12.struct
}

define ptr @"diag::E2105_redundant_choice_tail"() #1 {
entry:
  %concat.lhs = load i64, ptr @str.13.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.13.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.14.struct, align 8
  %concat.rhs3 = and i64 %concat.rhs, 281474976710655
  %str.tag4 = lshr i64 %concat.rhs, 48
  %str.immortal5 = icmp eq i64 %str.tag4, 0
  br i1 %str.immortal5, label %str_ok7, label %str_gen_check6

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check6:                                   ; preds = %str_ok
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid10 = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag4)
  br i1 %tag.valid10, label %str_ok7, label %str_stale8

str_ok7:                                          ; preds = %str_stale8, %str_gen_check6, %str_ok
  %concat.rhs11 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs3)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len12

str_stale8:                                       ; preds = %str_gen_check6
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok7

concat.sum.len12:                                 ; preds = %str_overflow_abort, %str_ok7
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum13 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf14 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf14, label %str_overflow_abort16, label %concat.tot.len15

str_overflow_abort:                               ; preds = %str_ok7
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len12

concat.tot.len15:                                 ; preds = %str_overflow_abort16, %concat.sum.len12
  %arena.cur17 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 %sum13)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs11, i64 %concat.rhs3, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur18 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  ret ptr %concat.str

str_overflow_abort16:                             ; preds = %concat.sum.len12
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len15
}

define ptr @"diag::E2108_state_binding_target"() #1 {
entry:
  ret ptr @str.15.struct
}

define ptr @"diag::E2109_disallowed_variant_wildcard"(ptr %0) #1 {
entry:
  %var.tag = alloca ptr, align 8
  store ptr %0, ptr %var.tag, align 8
  %var.load = load ptr, ptr %var.tag, align 8
  %concat.lhs = load i64, ptr @str.16.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.rhs3 = load i64, ptr %concat.rhs, align 8
  %concat.rhs4 = and i64 %concat.rhs3, 281474976710655
  %str.tag5 = lshr i64 %concat.rhs3, 48
  %str.immortal6 = icmp eq i64 %str.tag5, 0
  br i1 %str.immortal6, label %str_ok8, label %str_gen_check7

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check7:                                   ; preds = %str_ok
  %arena.cur10 = call ptr @dva_arena_current()
  %tag.valid11 = call i1 @dva_arena_validate_tag(ptr %arena.cur10, i64 %str.tag5)
  br i1 %tag.valid11, label %str_ok8, label %str_stale9

str_ok8:                                          ; preds = %str_stale9, %str_gen_check7, %str_ok
  %concat.rhs12 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.rhs13 = load ptr, ptr %concat.rhs12, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs4)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len14

str_stale9:                                       ; preds = %str_gen_check7
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok8

concat.sum.len14:                                 ; preds = %str_overflow_abort, %str_ok8
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum15 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf16 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf16, label %str_overflow_abort18, label %concat.tot.len17

str_overflow_abort:                               ; preds = %str_ok8
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len14

concat.tot.len17:                                 ; preds = %str_overflow_abort18, %concat.sum.len14
  %arena.cur19 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 %sum15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs13, i64 %concat.rhs4, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur20 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs21 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs22 = load i64, ptr %concat.lhs21, align 8
  %concat.lhs23 = and i64 %concat.lhs22, 281474976710655
  %str.tag24 = lshr i64 %concat.lhs22, 48
  %str.immortal25 = icmp eq i64 %str.tag24, 0
  br i1 %str.immortal25, label %str_ok27, label %str_gen_check26

str_overflow_abort18:                             ; preds = %concat.sum.len14
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len17

str_gen_check26:                                  ; preds = %concat.tot.len17
  %arena.cur29 = call ptr @dva_arena_current()
  %tag.valid30 = call i1 @dva_arena_validate_tag(ptr %arena.cur29, i64 %str.tag24)
  br i1 %tag.valid30, label %str_ok27, label %str_stale28

str_ok27:                                         ; preds = %str_stale28, %str_gen_check26, %concat.tot.len17
  %concat.lhs31 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs32 = load ptr, ptr %concat.lhs31, align 8
  %concat.rhs33 = load i64, ptr @str.17.struct, align 8
  %concat.rhs34 = and i64 %concat.rhs33, 281474976710655
  %str.tag35 = lshr i64 %concat.rhs33, 48
  %str.immortal36 = icmp eq i64 %str.tag35, 0
  br i1 %str.immortal36, label %str_ok38, label %str_gen_check37

str_stale28:                                      ; preds = %str_gen_check26
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok27

str_gen_check37:                                  ; preds = %str_ok27
  %arena.cur40 = call ptr @dva_arena_current()
  %tag.valid41 = call i1 @dva_arena_validate_tag(ptr %arena.cur40, i64 %str.tag35)
  br i1 %tag.valid41, label %str_ok38, label %str_stale39

str_ok38:                                         ; preds = %str_stale39, %str_gen_check37, %str_ok27
  %concat.rhs42 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %concat.sum.len43 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs23, i64 %concat.rhs34)
  %sum44 = extractvalue { i64, i1 } %concat.sum.len43, 0
  %ovf45 = extractvalue { i64, i1 } %concat.sum.len43, 1
  br i1 %ovf45, label %str_overflow_abort47, label %concat.sum.len46

str_stale39:                                      ; preds = %str_gen_check37
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok38

concat.sum.len46:                                 ; preds = %str_overflow_abort47, %str_ok38
  %concat.tot.len48 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum44, i64 1)
  %sum49 = extractvalue { i64, i1 } %concat.tot.len48, 0
  %ovf50 = extractvalue { i64, i1 } %concat.tot.len48, 1
  br i1 %ovf50, label %str_overflow_abort52, label %concat.tot.len51

str_overflow_abort47:                             ; preds = %str_ok38
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len46

concat.tot.len51:                                 ; preds = %str_overflow_abort52, %concat.sum.len46
  %arena.cur53 = call ptr @dva_arena_current()
  %concat.buf54 = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 %sum49)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf54, ptr align 1 %concat.lhs32, i64 %concat.lhs23, i1 false)
  %concat.mid55 = getelementptr i8, ptr %concat.buf54, i64 %concat.lhs23
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid55, ptr align 1 %concat.rhs42, i64 %concat.rhs34, i1 false)
  %concat.nul56 = getelementptr i8, ptr %concat.buf54, i64 %sum44
  store i8 0, ptr %concat.nul56, align 1
  %arena.cur57 = call ptr @dva_arena_current()
  %concat.str58 = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 16)
  %str.build.len.gep59 = getelementptr inbounds { i64, ptr }, ptr %concat.str58, i32 0, i32 0
  store i64 %sum44, ptr %str.build.len.gep59, align 8
  %str.build.data.gep60 = getelementptr inbounds { i64, ptr }, ptr %concat.str58, i32 0, i32 1
  store ptr %concat.buf54, ptr %str.build.data.gep60, align 8
  %var.load61 = load ptr, ptr %var.tag, align 8
  %concat.lhs62 = getelementptr inbounds { i64, ptr }, ptr %concat.str58, i32 0, i32 0
  %concat.lhs63 = load i64, ptr %concat.lhs62, align 8
  %concat.lhs64 = and i64 %concat.lhs63, 281474976710655
  %str.tag65 = lshr i64 %concat.lhs63, 48
  %str.immortal66 = icmp eq i64 %str.tag65, 0
  br i1 %str.immortal66, label %str_ok68, label %str_gen_check67

str_overflow_abort52:                             ; preds = %concat.sum.len46
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len51

str_gen_check67:                                  ; preds = %concat.tot.len51
  %arena.cur70 = call ptr @dva_arena_current()
  %tag.valid71 = call i1 @dva_arena_validate_tag(ptr %arena.cur70, i64 %str.tag65)
  br i1 %tag.valid71, label %str_ok68, label %str_stale69

str_ok68:                                         ; preds = %str_stale69, %str_gen_check67, %concat.tot.len51
  %concat.lhs72 = getelementptr inbounds { i64, ptr }, ptr %concat.str58, i32 0, i32 1
  %concat.lhs73 = load ptr, ptr %concat.lhs72, align 8
  %concat.rhs74 = getelementptr inbounds { i64, ptr }, ptr %var.load61, i32 0, i32 0
  %concat.rhs75 = load i64, ptr %concat.rhs74, align 8
  %concat.rhs76 = and i64 %concat.rhs75, 281474976710655
  %str.tag77 = lshr i64 %concat.rhs75, 48
  %str.immortal78 = icmp eq i64 %str.tag77, 0
  br i1 %str.immortal78, label %str_ok80, label %str_gen_check79

str_stale69:                                      ; preds = %str_gen_check67
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok68

str_gen_check79:                                  ; preds = %str_ok68
  %arena.cur82 = call ptr @dva_arena_current()
  %tag.valid83 = call i1 @dva_arena_validate_tag(ptr %arena.cur82, i64 %str.tag77)
  br i1 %tag.valid83, label %str_ok80, label %str_stale81

str_ok80:                                         ; preds = %str_stale81, %str_gen_check79, %str_ok68
  %concat.rhs84 = getelementptr inbounds { i64, ptr }, ptr %var.load61, i32 0, i32 1
  %concat.rhs85 = load ptr, ptr %concat.rhs84, align 8
  %concat.sum.len86 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs64, i64 %concat.rhs76)
  %sum87 = extractvalue { i64, i1 } %concat.sum.len86, 0
  %ovf88 = extractvalue { i64, i1 } %concat.sum.len86, 1
  br i1 %ovf88, label %str_overflow_abort90, label %concat.sum.len89

str_stale81:                                      ; preds = %str_gen_check79
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok80

concat.sum.len89:                                 ; preds = %str_overflow_abort90, %str_ok80
  %concat.tot.len91 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum87, i64 1)
  %sum92 = extractvalue { i64, i1 } %concat.tot.len91, 0
  %ovf93 = extractvalue { i64, i1 } %concat.tot.len91, 1
  br i1 %ovf93, label %str_overflow_abort95, label %concat.tot.len94

str_overflow_abort90:                             ; preds = %str_ok80
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len89

concat.tot.len94:                                 ; preds = %str_overflow_abort95, %concat.sum.len89
  %arena.cur96 = call ptr @dva_arena_current()
  %concat.buf97 = call ptr @dva_arena_alloc(ptr %arena.cur96, i64 %sum92)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf97, ptr align 1 %concat.lhs73, i64 %concat.lhs64, i1 false)
  %concat.mid98 = getelementptr i8, ptr %concat.buf97, i64 %concat.lhs64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid98, ptr align 1 %concat.rhs85, i64 %concat.rhs76, i1 false)
  %concat.nul99 = getelementptr i8, ptr %concat.buf97, i64 %sum87
  store i8 0, ptr %concat.nul99, align 1
  %arena.cur100 = call ptr @dva_arena_current()
  %concat.str101 = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 16)
  %str.build.len.gep102 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 0
  store i64 %sum87, ptr %str.build.len.gep102, align 8
  %str.build.data.gep103 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 1
  store ptr %concat.buf97, ptr %str.build.data.gep103, align 8
  %concat.lhs104 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 0
  %concat.lhs105 = load i64, ptr %concat.lhs104, align 8
  %concat.lhs106 = and i64 %concat.lhs105, 281474976710655
  %str.tag107 = lshr i64 %concat.lhs105, 48
  %str.immortal108 = icmp eq i64 %str.tag107, 0
  br i1 %str.immortal108, label %str_ok110, label %str_gen_check109

str_overflow_abort95:                             ; preds = %concat.sum.len89
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len94

str_gen_check109:                                 ; preds = %concat.tot.len94
  %arena.cur112 = call ptr @dva_arena_current()
  %tag.valid113 = call i1 @dva_arena_validate_tag(ptr %arena.cur112, i64 %str.tag107)
  br i1 %tag.valid113, label %str_ok110, label %str_stale111

str_ok110:                                        ; preds = %str_stale111, %str_gen_check109, %concat.tot.len94
  %concat.lhs114 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 1
  %concat.lhs115 = load ptr, ptr %concat.lhs114, align 8
  %concat.rhs116 = load i64, ptr @str.18.struct, align 8
  %concat.rhs117 = and i64 %concat.rhs116, 281474976710655
  %str.tag118 = lshr i64 %concat.rhs116, 48
  %str.immortal119 = icmp eq i64 %str.tag118, 0
  br i1 %str.immortal119, label %str_ok121, label %str_gen_check120

str_stale111:                                     ; preds = %str_gen_check109
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok110

str_gen_check120:                                 ; preds = %str_ok110
  %arena.cur123 = call ptr @dva_arena_current()
  %tag.valid124 = call i1 @dva_arena_validate_tag(ptr %arena.cur123, i64 %str.tag118)
  br i1 %tag.valid124, label %str_ok121, label %str_stale122

str_ok121:                                        ; preds = %str_stale122, %str_gen_check120, %str_ok110
  %concat.rhs125 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.18.struct, i32 0, i32 1), align 8
  %concat.sum.len126 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs106, i64 %concat.rhs117)
  %sum127 = extractvalue { i64, i1 } %concat.sum.len126, 0
  %ovf128 = extractvalue { i64, i1 } %concat.sum.len126, 1
  br i1 %ovf128, label %str_overflow_abort130, label %concat.sum.len129

str_stale122:                                     ; preds = %str_gen_check120
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok121

concat.sum.len129:                                ; preds = %str_overflow_abort130, %str_ok121
  %concat.tot.len131 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum127, i64 1)
  %sum132 = extractvalue { i64, i1 } %concat.tot.len131, 0
  %ovf133 = extractvalue { i64, i1 } %concat.tot.len131, 1
  br i1 %ovf133, label %str_overflow_abort135, label %concat.tot.len134

str_overflow_abort130:                            ; preds = %str_ok121
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len129

concat.tot.len134:                                ; preds = %str_overflow_abort135, %concat.sum.len129
  %arena.cur136 = call ptr @dva_arena_current()
  %concat.buf137 = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 %sum132)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf137, ptr align 1 %concat.lhs115, i64 %concat.lhs106, i1 false)
  %concat.mid138 = getelementptr i8, ptr %concat.buf137, i64 %concat.lhs106
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid138, ptr align 1 %concat.rhs125, i64 %concat.rhs117, i1 false)
  %concat.nul139 = getelementptr i8, ptr %concat.buf137, i64 %sum127
  store i8 0, ptr %concat.nul139, align 1
  %arena.cur140 = call ptr @dva_arena_current()
  %concat.str141 = call ptr @dva_arena_alloc(ptr %arena.cur140, i64 16)
  %str.build.len.gep142 = getelementptr inbounds { i64, ptr }, ptr %concat.str141, i32 0, i32 0
  store i64 %sum127, ptr %str.build.len.gep142, align 8
  %str.build.data.gep143 = getelementptr inbounds { i64, ptr }, ptr %concat.str141, i32 0, i32 1
  store ptr %concat.buf137, ptr %str.build.data.gep143, align 8
  ret ptr %concat.str141

str_overflow_abort135:                            ; preds = %concat.sum.len129
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len134
}

define ptr @"diag::E3003_choice_underscore_undefined"() #1 {
entry:
  %concat.lhs = load i64, ptr @str.19.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.19.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.20.struct, align 8
  %concat.rhs3 = and i64 %concat.rhs, 281474976710655
  %str.tag4 = lshr i64 %concat.rhs, 48
  %str.immortal5 = icmp eq i64 %str.tag4, 0
  br i1 %str.immortal5, label %str_ok7, label %str_gen_check6

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check6:                                   ; preds = %str_ok
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid10 = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag4)
  br i1 %tag.valid10, label %str_ok7, label %str_stale8

str_ok7:                                          ; preds = %str_stale8, %str_gen_check6, %str_ok
  %concat.rhs11 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.20.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs3)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len12

str_stale8:                                       ; preds = %str_gen_check6
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok7

concat.sum.len12:                                 ; preds = %str_overflow_abort, %str_ok7
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum13 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf14 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf14, label %str_overflow_abort16, label %concat.tot.len15

str_overflow_abort:                               ; preds = %str_ok7
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len12

concat.tot.len15:                                 ; preds = %str_overflow_abort16, %concat.sum.len12
  %arena.cur17 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 %sum13)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs11, i64 %concat.rhs3, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur18 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs19 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs20 = load i64, ptr %concat.lhs19, align 8
  %concat.lhs21 = and i64 %concat.lhs20, 281474976710655
  %str.tag22 = lshr i64 %concat.lhs20, 48
  %str.immortal23 = icmp eq i64 %str.tag22, 0
  br i1 %str.immortal23, label %str_ok25, label %str_gen_check24

str_overflow_abort16:                             ; preds = %concat.sum.len12
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len15

str_gen_check24:                                  ; preds = %concat.tot.len15
  %arena.cur27 = call ptr @dva_arena_current()
  %tag.valid28 = call i1 @dva_arena_validate_tag(ptr %arena.cur27, i64 %str.tag22)
  br i1 %tag.valid28, label %str_ok25, label %str_stale26

str_ok25:                                         ; preds = %str_stale26, %str_gen_check24, %concat.tot.len15
  %concat.lhs29 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs30 = load ptr, ptr %concat.lhs29, align 8
  %concat.rhs31 = load i64, ptr @str.21.struct, align 8
  %concat.rhs32 = and i64 %concat.rhs31, 281474976710655
  %str.tag33 = lshr i64 %concat.rhs31, 48
  %str.immortal34 = icmp eq i64 %str.tag33, 0
  br i1 %str.immortal34, label %str_ok36, label %str_gen_check35

str_stale26:                                      ; preds = %str_gen_check24
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok25

str_gen_check35:                                  ; preds = %str_ok25
  %arena.cur38 = call ptr @dva_arena_current()
  %tag.valid39 = call i1 @dva_arena_validate_tag(ptr %arena.cur38, i64 %str.tag33)
  br i1 %tag.valid39, label %str_ok36, label %str_stale37

str_ok36:                                         ; preds = %str_stale37, %str_gen_check35, %str_ok25
  %concat.rhs40 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.21.struct, i32 0, i32 1), align 8
  %concat.sum.len41 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs21, i64 %concat.rhs32)
  %sum42 = extractvalue { i64, i1 } %concat.sum.len41, 0
  %ovf43 = extractvalue { i64, i1 } %concat.sum.len41, 1
  br i1 %ovf43, label %str_overflow_abort45, label %concat.sum.len44

str_stale37:                                      ; preds = %str_gen_check35
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok36

concat.sum.len44:                                 ; preds = %str_overflow_abort45, %str_ok36
  %concat.tot.len46 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum42, i64 1)
  %sum47 = extractvalue { i64, i1 } %concat.tot.len46, 0
  %ovf48 = extractvalue { i64, i1 } %concat.tot.len46, 1
  br i1 %ovf48, label %str_overflow_abort50, label %concat.tot.len49

str_overflow_abort45:                             ; preds = %str_ok36
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len44

concat.tot.len49:                                 ; preds = %str_overflow_abort50, %concat.sum.len44
  %arena.cur51 = call ptr @dva_arena_current()
  %concat.buf52 = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 %sum47)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf52, ptr align 1 %concat.lhs30, i64 %concat.lhs21, i1 false)
  %concat.mid53 = getelementptr i8, ptr %concat.buf52, i64 %concat.lhs21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid53, ptr align 1 %concat.rhs40, i64 %concat.rhs32, i1 false)
  %concat.nul54 = getelementptr i8, ptr %concat.buf52, i64 %sum42
  store i8 0, ptr %concat.nul54, align 1
  %arena.cur55 = call ptr @dva_arena_current()
  %concat.str56 = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 16)
  %str.build.len.gep57 = getelementptr inbounds { i64, ptr }, ptr %concat.str56, i32 0, i32 0
  store i64 %sum42, ptr %str.build.len.gep57, align 8
  %str.build.data.gep58 = getelementptr inbounds { i64, ptr }, ptr %concat.str56, i32 0, i32 1
  store ptr %concat.buf52, ptr %str.build.data.gep58, align 8
  ret ptr %concat.str56

str_overflow_abort50:                             ; preds = %concat.sum.len44
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len49
}

define ptr @"diag::E3008_not_invalid_type"() #1 {
entry:
  ret ptr @str.22.struct
}

define ptr @"diag::E3008_not_integer"() #1 {
entry:
  %concat.lhs = load i64, ptr @str.23.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.23.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.24.struct, align 8
  %concat.rhs3 = and i64 %concat.rhs, 281474976710655
  %str.tag4 = lshr i64 %concat.rhs, 48
  %str.immortal5 = icmp eq i64 %str.tag4, 0
  br i1 %str.immortal5, label %str_ok7, label %str_gen_check6

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check6:                                   ; preds = %str_ok
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid10 = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag4)
  br i1 %tag.valid10, label %str_ok7, label %str_stale8

str_ok7:                                          ; preds = %str_stale8, %str_gen_check6, %str_ok
  %concat.rhs11 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.24.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs3)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len12

str_stale8:                                       ; preds = %str_gen_check6
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok7

concat.sum.len12:                                 ; preds = %str_overflow_abort, %str_ok7
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum13 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf14 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf14, label %str_overflow_abort16, label %concat.tot.len15

str_overflow_abort:                               ; preds = %str_ok7
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len12

concat.tot.len15:                                 ; preds = %str_overflow_abort16, %concat.sum.len12
  %arena.cur17 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 %sum13)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs11, i64 %concat.rhs3, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur18 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  ret ptr %concat.str

str_overflow_abort16:                             ; preds = %concat.sum.len12
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len15
}

define ptr @"diag::E3032_assign_void_var_prefix"() #1 {
entry:
  ret ptr @str.25.struct
}

define ptr @"diag::E3032_assign_void_elem_prefix"() #1 {
entry:
  ret ptr @str.26.struct
}

define ptr @"diag::E3033_reassign_immutable_prefix"() #1 {
entry:
  ret ptr @str.27.struct
}

define ptr @"diag::E3033_reassign_immutable_suffix"() #1 {
entry:
  ret ptr @str.28.struct
}

define ptr @"diag::E3033_reassign_immutable_tail"() #1 {
entry:
  ret ptr @str.29.struct
}

define ptr @"diag::reassign_immutable"(ptr %0) #1 {
entry:
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %call.res = call ptr @"diag::E3033_reassign_immutable_prefix"()
  %var.load = load ptr, ptr %var.name, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %concat.lhs1 = load i64, ptr %concat.lhs, align 8
  %concat.lhs2 = and i64 %concat.lhs1, 281474976710655
  %str.tag = lshr i64 %concat.lhs1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs3 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %concat.lhs4 = load ptr, ptr %concat.lhs3, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.rhs5 = load i64, ptr %concat.rhs, align 8
  %concat.rhs6 = and i64 %concat.rhs5, 281474976710655
  %str.tag7 = lshr i64 %concat.rhs5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check9:                                   ; preds = %str_ok
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %str_ok
  %concat.rhs14 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.rhs15 = load ptr, ptr %concat.rhs14, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs2, i64 %concat.rhs6)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len16

str_stale11:                                      ; preds = %str_gen_check9
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

concat.sum.len16:                                 ; preds = %str_overflow_abort, %str_ok10
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum17 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf18 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf18, label %str_overflow_abort20, label %concat.tot.len19

str_overflow_abort:                               ; preds = %str_ok10
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len16

concat.tot.len19:                                 ; preds = %str_overflow_abort20, %concat.sum.len16
  %arena.cur21 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 %sum17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs4, i64 %concat.lhs2, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs15, i64 %concat.rhs6, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur22 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res23 = call ptr @"diag::E3033_reassign_immutable_suffix"()
  %concat.lhs24 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs25 = load i64, ptr %concat.lhs24, align 8
  %concat.lhs26 = and i64 %concat.lhs25, 281474976710655
  %str.tag27 = lshr i64 %concat.lhs25, 48
  %str.immortal28 = icmp eq i64 %str.tag27, 0
  br i1 %str.immortal28, label %str_ok30, label %str_gen_check29

str_overflow_abort20:                             ; preds = %concat.sum.len16
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len19

str_gen_check29:                                  ; preds = %concat.tot.len19
  %arena.cur32 = call ptr @dva_arena_current()
  %tag.valid33 = call i1 @dva_arena_validate_tag(ptr %arena.cur32, i64 %str.tag27)
  br i1 %tag.valid33, label %str_ok30, label %str_stale31

str_ok30:                                         ; preds = %str_stale31, %str_gen_check29, %concat.tot.len19
  %concat.lhs34 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs35 = load ptr, ptr %concat.lhs34, align 8
  %concat.rhs36 = getelementptr inbounds { i64, ptr }, ptr %call.res23, i32 0, i32 0
  %concat.rhs37 = load i64, ptr %concat.rhs36, align 8
  %concat.rhs38 = and i64 %concat.rhs37, 281474976710655
  %str.tag39 = lshr i64 %concat.rhs37, 48
  %str.immortal40 = icmp eq i64 %str.tag39, 0
  br i1 %str.immortal40, label %str_ok42, label %str_gen_check41

str_stale31:                                      ; preds = %str_gen_check29
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok30

str_gen_check41:                                  ; preds = %str_ok30
  %arena.cur44 = call ptr @dva_arena_current()
  %tag.valid45 = call i1 @dva_arena_validate_tag(ptr %arena.cur44, i64 %str.tag39)
  br i1 %tag.valid45, label %str_ok42, label %str_stale43

str_ok42:                                         ; preds = %str_stale43, %str_gen_check41, %str_ok30
  %concat.rhs46 = getelementptr inbounds { i64, ptr }, ptr %call.res23, i32 0, i32 1
  %concat.rhs47 = load ptr, ptr %concat.rhs46, align 8
  %concat.sum.len48 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs26, i64 %concat.rhs38)
  %sum49 = extractvalue { i64, i1 } %concat.sum.len48, 0
  %ovf50 = extractvalue { i64, i1 } %concat.sum.len48, 1
  br i1 %ovf50, label %str_overflow_abort52, label %concat.sum.len51

str_stale43:                                      ; preds = %str_gen_check41
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok42

concat.sum.len51:                                 ; preds = %str_overflow_abort52, %str_ok42
  %concat.tot.len53 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum49, i64 1)
  %sum54 = extractvalue { i64, i1 } %concat.tot.len53, 0
  %ovf55 = extractvalue { i64, i1 } %concat.tot.len53, 1
  br i1 %ovf55, label %str_overflow_abort57, label %concat.tot.len56

str_overflow_abort52:                             ; preds = %str_ok42
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len51

concat.tot.len56:                                 ; preds = %str_overflow_abort57, %concat.sum.len51
  %arena.cur58 = call ptr @dva_arena_current()
  %concat.buf59 = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 %sum54)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf59, ptr align 1 %concat.lhs35, i64 %concat.lhs26, i1 false)
  %concat.mid60 = getelementptr i8, ptr %concat.buf59, i64 %concat.lhs26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid60, ptr align 1 %concat.rhs47, i64 %concat.rhs38, i1 false)
  %concat.nul61 = getelementptr i8, ptr %concat.buf59, i64 %sum49
  store i8 0, ptr %concat.nul61, align 1
  %arena.cur62 = call ptr @dva_arena_current()
  %concat.str63 = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 16)
  %str.build.len.gep64 = getelementptr inbounds { i64, ptr }, ptr %concat.str63, i32 0, i32 0
  store i64 %sum49, ptr %str.build.len.gep64, align 8
  %str.build.data.gep65 = getelementptr inbounds { i64, ptr }, ptr %concat.str63, i32 0, i32 1
  store ptr %concat.buf59, ptr %str.build.data.gep65, align 8
  %var.load66 = load ptr, ptr %var.name, align 8
  %concat.lhs67 = getelementptr inbounds { i64, ptr }, ptr %concat.str63, i32 0, i32 0
  %concat.lhs68 = load i64, ptr %concat.lhs67, align 8
  %concat.lhs69 = and i64 %concat.lhs68, 281474976710655
  %str.tag70 = lshr i64 %concat.lhs68, 48
  %str.immortal71 = icmp eq i64 %str.tag70, 0
  br i1 %str.immortal71, label %str_ok73, label %str_gen_check72

str_overflow_abort57:                             ; preds = %concat.sum.len51
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len56

str_gen_check72:                                  ; preds = %concat.tot.len56
  %arena.cur75 = call ptr @dva_arena_current()
  %tag.valid76 = call i1 @dva_arena_validate_tag(ptr %arena.cur75, i64 %str.tag70)
  br i1 %tag.valid76, label %str_ok73, label %str_stale74

str_ok73:                                         ; preds = %str_stale74, %str_gen_check72, %concat.tot.len56
  %concat.lhs77 = getelementptr inbounds { i64, ptr }, ptr %concat.str63, i32 0, i32 1
  %concat.lhs78 = load ptr, ptr %concat.lhs77, align 8
  %concat.rhs79 = getelementptr inbounds { i64, ptr }, ptr %var.load66, i32 0, i32 0
  %concat.rhs80 = load i64, ptr %concat.rhs79, align 8
  %concat.rhs81 = and i64 %concat.rhs80, 281474976710655
  %str.tag82 = lshr i64 %concat.rhs80, 48
  %str.immortal83 = icmp eq i64 %str.tag82, 0
  br i1 %str.immortal83, label %str_ok85, label %str_gen_check84

str_stale74:                                      ; preds = %str_gen_check72
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok73

str_gen_check84:                                  ; preds = %str_ok73
  %arena.cur87 = call ptr @dva_arena_current()
  %tag.valid88 = call i1 @dva_arena_validate_tag(ptr %arena.cur87, i64 %str.tag82)
  br i1 %tag.valid88, label %str_ok85, label %str_stale86

str_ok85:                                         ; preds = %str_stale86, %str_gen_check84, %str_ok73
  %concat.rhs89 = getelementptr inbounds { i64, ptr }, ptr %var.load66, i32 0, i32 1
  %concat.rhs90 = load ptr, ptr %concat.rhs89, align 8
  %concat.sum.len91 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs69, i64 %concat.rhs81)
  %sum92 = extractvalue { i64, i1 } %concat.sum.len91, 0
  %ovf93 = extractvalue { i64, i1 } %concat.sum.len91, 1
  br i1 %ovf93, label %str_overflow_abort95, label %concat.sum.len94

str_stale86:                                      ; preds = %str_gen_check84
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok85

concat.sum.len94:                                 ; preds = %str_overflow_abort95, %str_ok85
  %concat.tot.len96 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum92, i64 1)
  %sum97 = extractvalue { i64, i1 } %concat.tot.len96, 0
  %ovf98 = extractvalue { i64, i1 } %concat.tot.len96, 1
  br i1 %ovf98, label %str_overflow_abort100, label %concat.tot.len99

str_overflow_abort95:                             ; preds = %str_ok85
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len94

concat.tot.len99:                                 ; preds = %str_overflow_abort100, %concat.sum.len94
  %arena.cur101 = call ptr @dva_arena_current()
  %concat.buf102 = call ptr @dva_arena_alloc(ptr %arena.cur101, i64 %sum97)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf102, ptr align 1 %concat.lhs78, i64 %concat.lhs69, i1 false)
  %concat.mid103 = getelementptr i8, ptr %concat.buf102, i64 %concat.lhs69
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid103, ptr align 1 %concat.rhs90, i64 %concat.rhs81, i1 false)
  %concat.nul104 = getelementptr i8, ptr %concat.buf102, i64 %sum92
  store i8 0, ptr %concat.nul104, align 1
  %arena.cur105 = call ptr @dva_arena_current()
  %concat.str106 = call ptr @dva_arena_alloc(ptr %arena.cur105, i64 16)
  %str.build.len.gep107 = getelementptr inbounds { i64, ptr }, ptr %concat.str106, i32 0, i32 0
  store i64 %sum92, ptr %str.build.len.gep107, align 8
  %str.build.data.gep108 = getelementptr inbounds { i64, ptr }, ptr %concat.str106, i32 0, i32 1
  store ptr %concat.buf102, ptr %str.build.data.gep108, align 8
  %call.res109 = call ptr @"diag::E3033_reassign_immutable_tail"()
  %concat.lhs110 = getelementptr inbounds { i64, ptr }, ptr %concat.str106, i32 0, i32 0
  %concat.lhs111 = load i64, ptr %concat.lhs110, align 8
  %concat.lhs112 = and i64 %concat.lhs111, 281474976710655
  %str.tag113 = lshr i64 %concat.lhs111, 48
  %str.immortal114 = icmp eq i64 %str.tag113, 0
  br i1 %str.immortal114, label %str_ok116, label %str_gen_check115

str_overflow_abort100:                            ; preds = %concat.sum.len94
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len99

str_gen_check115:                                 ; preds = %concat.tot.len99
  %arena.cur118 = call ptr @dva_arena_current()
  %tag.valid119 = call i1 @dva_arena_validate_tag(ptr %arena.cur118, i64 %str.tag113)
  br i1 %tag.valid119, label %str_ok116, label %str_stale117

str_ok116:                                        ; preds = %str_stale117, %str_gen_check115, %concat.tot.len99
  %concat.lhs120 = getelementptr inbounds { i64, ptr }, ptr %concat.str106, i32 0, i32 1
  %concat.lhs121 = load ptr, ptr %concat.lhs120, align 8
  %concat.rhs122 = getelementptr inbounds { i64, ptr }, ptr %call.res109, i32 0, i32 0
  %concat.rhs123 = load i64, ptr %concat.rhs122, align 8
  %concat.rhs124 = and i64 %concat.rhs123, 281474976710655
  %str.tag125 = lshr i64 %concat.rhs123, 48
  %str.immortal126 = icmp eq i64 %str.tag125, 0
  br i1 %str.immortal126, label %str_ok128, label %str_gen_check127

str_stale117:                                     ; preds = %str_gen_check115
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok116

str_gen_check127:                                 ; preds = %str_ok116
  %arena.cur130 = call ptr @dva_arena_current()
  %tag.valid131 = call i1 @dva_arena_validate_tag(ptr %arena.cur130, i64 %str.tag125)
  br i1 %tag.valid131, label %str_ok128, label %str_stale129

str_ok128:                                        ; preds = %str_stale129, %str_gen_check127, %str_ok116
  %concat.rhs132 = getelementptr inbounds { i64, ptr }, ptr %call.res109, i32 0, i32 1
  %concat.rhs133 = load ptr, ptr %concat.rhs132, align 8
  %concat.sum.len134 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs112, i64 %concat.rhs124)
  %sum135 = extractvalue { i64, i1 } %concat.sum.len134, 0
  %ovf136 = extractvalue { i64, i1 } %concat.sum.len134, 1
  br i1 %ovf136, label %str_overflow_abort138, label %concat.sum.len137

str_stale129:                                     ; preds = %str_gen_check127
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok128

concat.sum.len137:                                ; preds = %str_overflow_abort138, %str_ok128
  %concat.tot.len139 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum135, i64 1)
  %sum140 = extractvalue { i64, i1 } %concat.tot.len139, 0
  %ovf141 = extractvalue { i64, i1 } %concat.tot.len139, 1
  br i1 %ovf141, label %str_overflow_abort143, label %concat.tot.len142

str_overflow_abort138:                            ; preds = %str_ok128
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len137

concat.tot.len142:                                ; preds = %str_overflow_abort143, %concat.sum.len137
  %arena.cur144 = call ptr @dva_arena_current()
  %concat.buf145 = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 %sum140)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf145, ptr align 1 %concat.lhs121, i64 %concat.lhs112, i1 false)
  %concat.mid146 = getelementptr i8, ptr %concat.buf145, i64 %concat.lhs112
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid146, ptr align 1 %concat.rhs133, i64 %concat.rhs124, i1 false)
  %concat.nul147 = getelementptr i8, ptr %concat.buf145, i64 %sum135
  store i8 0, ptr %concat.nul147, align 1
  %arena.cur148 = call ptr @dva_arena_current()
  %concat.str149 = call ptr @dva_arena_alloc(ptr %arena.cur148, i64 16)
  %str.build.len.gep150 = getelementptr inbounds { i64, ptr }, ptr %concat.str149, i32 0, i32 0
  store i64 %sum135, ptr %str.build.len.gep150, align 8
  %str.build.data.gep151 = getelementptr inbounds { i64, ptr }, ptr %concat.str149, i32 0, i32 1
  store ptr %concat.buf145, ptr %str.build.data.gep151, align 8
  ret ptr %concat.str149

str_overflow_abort143:                            ; preds = %concat.sum.len137
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len142
}

define ptr @"diag::assign_void_variable"(ptr %0) #1 {
entry:
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %call.res = call ptr @"diag::E3032_assign_void_var_prefix"()
  %var.load = load ptr, ptr %var.name, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %concat.lhs1 = load i64, ptr %concat.lhs, align 8
  %concat.lhs2 = and i64 %concat.lhs1, 281474976710655
  %str.tag = lshr i64 %concat.lhs1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs3 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %concat.lhs4 = load ptr, ptr %concat.lhs3, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.rhs5 = load i64, ptr %concat.rhs, align 8
  %concat.rhs6 = and i64 %concat.rhs5, 281474976710655
  %str.tag7 = lshr i64 %concat.rhs5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check9:                                   ; preds = %str_ok
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %str_ok
  %concat.rhs14 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.rhs15 = load ptr, ptr %concat.rhs14, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs2, i64 %concat.rhs6)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len16

str_stale11:                                      ; preds = %str_gen_check9
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

concat.sum.len16:                                 ; preds = %str_overflow_abort, %str_ok10
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum17 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf18 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf18, label %str_overflow_abort20, label %concat.tot.len19

str_overflow_abort:                               ; preds = %str_ok10
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len16

concat.tot.len19:                                 ; preds = %str_overflow_abort20, %concat.sum.len16
  %arena.cur21 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 %sum17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs4, i64 %concat.lhs2, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs15, i64 %concat.rhs6, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur22 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs23 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs24 = load i64, ptr %concat.lhs23, align 8
  %concat.lhs25 = and i64 %concat.lhs24, 281474976710655
  %str.tag26 = lshr i64 %concat.lhs24, 48
  %str.immortal27 = icmp eq i64 %str.tag26, 0
  br i1 %str.immortal27, label %str_ok29, label %str_gen_check28

str_overflow_abort20:                             ; preds = %concat.sum.len16
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len19

str_gen_check28:                                  ; preds = %concat.tot.len19
  %arena.cur31 = call ptr @dva_arena_current()
  %tag.valid32 = call i1 @dva_arena_validate_tag(ptr %arena.cur31, i64 %str.tag26)
  br i1 %tag.valid32, label %str_ok29, label %str_stale30

str_ok29:                                         ; preds = %str_stale30, %str_gen_check28, %concat.tot.len19
  %concat.lhs33 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs34 = load ptr, ptr %concat.lhs33, align 8
  %concat.rhs35 = load i64, ptr @str.30.struct, align 8
  %concat.rhs36 = and i64 %concat.rhs35, 281474976710655
  %str.tag37 = lshr i64 %concat.rhs35, 48
  %str.immortal38 = icmp eq i64 %str.tag37, 0
  br i1 %str.immortal38, label %str_ok40, label %str_gen_check39

str_stale30:                                      ; preds = %str_gen_check28
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok29

str_gen_check39:                                  ; preds = %str_ok29
  %arena.cur42 = call ptr @dva_arena_current()
  %tag.valid43 = call i1 @dva_arena_validate_tag(ptr %arena.cur42, i64 %str.tag37)
  br i1 %tag.valid43, label %str_ok40, label %str_stale41

str_ok40:                                         ; preds = %str_stale41, %str_gen_check39, %str_ok29
  %concat.rhs44 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.30.struct, i32 0, i32 1), align 8
  %concat.sum.len45 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs25, i64 %concat.rhs36)
  %sum46 = extractvalue { i64, i1 } %concat.sum.len45, 0
  %ovf47 = extractvalue { i64, i1 } %concat.sum.len45, 1
  br i1 %ovf47, label %str_overflow_abort49, label %concat.sum.len48

str_stale41:                                      ; preds = %str_gen_check39
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok40

concat.sum.len48:                                 ; preds = %str_overflow_abort49, %str_ok40
  %concat.tot.len50 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum46, i64 1)
  %sum51 = extractvalue { i64, i1 } %concat.tot.len50, 0
  %ovf52 = extractvalue { i64, i1 } %concat.tot.len50, 1
  br i1 %ovf52, label %str_overflow_abort54, label %concat.tot.len53

str_overflow_abort49:                             ; preds = %str_ok40
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len48

concat.tot.len53:                                 ; preds = %str_overflow_abort54, %concat.sum.len48
  %arena.cur55 = call ptr @dva_arena_current()
  %concat.buf56 = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 %sum51)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf56, ptr align 1 %concat.lhs34, i64 %concat.lhs25, i1 false)
  %concat.mid57 = getelementptr i8, ptr %concat.buf56, i64 %concat.lhs25
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid57, ptr align 1 %concat.rhs44, i64 %concat.rhs36, i1 false)
  %concat.nul58 = getelementptr i8, ptr %concat.buf56, i64 %sum46
  store i8 0, ptr %concat.nul58, align 1
  %arena.cur59 = call ptr @dva_arena_current()
  %concat.str60 = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 16)
  %str.build.len.gep61 = getelementptr inbounds { i64, ptr }, ptr %concat.str60, i32 0, i32 0
  store i64 %sum46, ptr %str.build.len.gep61, align 8
  %str.build.data.gep62 = getelementptr inbounds { i64, ptr }, ptr %concat.str60, i32 0, i32 1
  store ptr %concat.buf56, ptr %str.build.data.gep62, align 8
  ret ptr %concat.str60

str_overflow_abort54:                             ; preds = %concat.sum.len48
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len53
}

define ptr @"diag::assign_void_element"(ptr %0) #1 {
entry:
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %call.res = call ptr @"diag::E3032_assign_void_elem_prefix"()
  %var.load = load ptr, ptr %var.name, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %concat.lhs1 = load i64, ptr %concat.lhs, align 8
  %concat.lhs2 = and i64 %concat.lhs1, 281474976710655
  %str.tag = lshr i64 %concat.lhs1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs3 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %concat.lhs4 = load ptr, ptr %concat.lhs3, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.rhs5 = load i64, ptr %concat.rhs, align 8
  %concat.rhs6 = and i64 %concat.rhs5, 281474976710655
  %str.tag7 = lshr i64 %concat.rhs5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check9:                                   ; preds = %str_ok
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %str_ok
  %concat.rhs14 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.rhs15 = load ptr, ptr %concat.rhs14, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs2, i64 %concat.rhs6)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len16

str_stale11:                                      ; preds = %str_gen_check9
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

concat.sum.len16:                                 ; preds = %str_overflow_abort, %str_ok10
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum17 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf18 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf18, label %str_overflow_abort20, label %concat.tot.len19

str_overflow_abort:                               ; preds = %str_ok10
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len16

concat.tot.len19:                                 ; preds = %str_overflow_abort20, %concat.sum.len16
  %arena.cur21 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 %sum17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs4, i64 %concat.lhs2, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs15, i64 %concat.rhs6, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur22 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs23 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs24 = load i64, ptr %concat.lhs23, align 8
  %concat.lhs25 = and i64 %concat.lhs24, 281474976710655
  %str.tag26 = lshr i64 %concat.lhs24, 48
  %str.immortal27 = icmp eq i64 %str.tag26, 0
  br i1 %str.immortal27, label %str_ok29, label %str_gen_check28

str_overflow_abort20:                             ; preds = %concat.sum.len16
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len19

str_gen_check28:                                  ; preds = %concat.tot.len19
  %arena.cur31 = call ptr @dva_arena_current()
  %tag.valid32 = call i1 @dva_arena_validate_tag(ptr %arena.cur31, i64 %str.tag26)
  br i1 %tag.valid32, label %str_ok29, label %str_stale30

str_ok29:                                         ; preds = %str_stale30, %str_gen_check28, %concat.tot.len19
  %concat.lhs33 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs34 = load ptr, ptr %concat.lhs33, align 8
  %concat.rhs35 = load i64, ptr @str.30.struct, align 8
  %concat.rhs36 = and i64 %concat.rhs35, 281474976710655
  %str.tag37 = lshr i64 %concat.rhs35, 48
  %str.immortal38 = icmp eq i64 %str.tag37, 0
  br i1 %str.immortal38, label %str_ok40, label %str_gen_check39

str_stale30:                                      ; preds = %str_gen_check28
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok29

str_gen_check39:                                  ; preds = %str_ok29
  %arena.cur42 = call ptr @dva_arena_current()
  %tag.valid43 = call i1 @dva_arena_validate_tag(ptr %arena.cur42, i64 %str.tag37)
  br i1 %tag.valid43, label %str_ok40, label %str_stale41

str_ok40:                                         ; preds = %str_stale41, %str_gen_check39, %str_ok29
  %concat.rhs44 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.30.struct, i32 0, i32 1), align 8
  %concat.sum.len45 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs25, i64 %concat.rhs36)
  %sum46 = extractvalue { i64, i1 } %concat.sum.len45, 0
  %ovf47 = extractvalue { i64, i1 } %concat.sum.len45, 1
  br i1 %ovf47, label %str_overflow_abort49, label %concat.sum.len48

str_stale41:                                      ; preds = %str_gen_check39
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok40

concat.sum.len48:                                 ; preds = %str_overflow_abort49, %str_ok40
  %concat.tot.len50 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum46, i64 1)
  %sum51 = extractvalue { i64, i1 } %concat.tot.len50, 0
  %ovf52 = extractvalue { i64, i1 } %concat.tot.len50, 1
  br i1 %ovf52, label %str_overflow_abort54, label %concat.tot.len53

str_overflow_abort49:                             ; preds = %str_ok40
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len48

concat.tot.len53:                                 ; preds = %str_overflow_abort54, %concat.sum.len48
  %arena.cur55 = call ptr @dva_arena_current()
  %concat.buf56 = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 %sum51)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf56, ptr align 1 %concat.lhs34, i64 %concat.lhs25, i1 false)
  %concat.mid57 = getelementptr i8, ptr %concat.buf56, i64 %concat.lhs25
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid57, ptr align 1 %concat.rhs44, i64 %concat.rhs36, i1 false)
  %concat.nul58 = getelementptr i8, ptr %concat.buf56, i64 %sum46
  store i8 0, ptr %concat.nul58, align 1
  %arena.cur59 = call ptr @dva_arena_current()
  %concat.str60 = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 16)
  %str.build.len.gep61 = getelementptr inbounds { i64, ptr }, ptr %concat.str60, i32 0, i32 0
  store i64 %sum46, ptr %str.build.len.gep61, align 8
  %str.build.data.gep62 = getelementptr inbounds { i64, ptr }, ptr %concat.str60, i32 0, i32 1
  store ptr %concat.buf56, ptr %str.build.data.gep62, align 8
  ret ptr %concat.str60

str_overflow_abort54:                             ; preds = %concat.sum.len48
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len53
}

define ptr @"diag::whole_value_init"(ptr %0) #1 {
entry:
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %call.res = call ptr @"diag::E3131_whole_val_init_prefix"()
  %var.load = load ptr, ptr %var.name, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %concat.lhs1 = load i64, ptr %concat.lhs, align 8
  %concat.lhs2 = and i64 %concat.lhs1, 281474976710655
  %str.tag = lshr i64 %concat.lhs1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs3 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %concat.lhs4 = load ptr, ptr %concat.lhs3, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.rhs5 = load i64, ptr %concat.rhs, align 8
  %concat.rhs6 = and i64 %concat.rhs5, 281474976710655
  %str.tag7 = lshr i64 %concat.rhs5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check9:                                   ; preds = %str_ok
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %str_ok
  %concat.rhs14 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.rhs15 = load ptr, ptr %concat.rhs14, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs2, i64 %concat.rhs6)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len16

str_stale11:                                      ; preds = %str_gen_check9
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

concat.sum.len16:                                 ; preds = %str_overflow_abort, %str_ok10
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum17 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf18 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf18, label %str_overflow_abort20, label %concat.tot.len19

str_overflow_abort:                               ; preds = %str_ok10
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len16

concat.tot.len19:                                 ; preds = %str_overflow_abort20, %concat.sum.len16
  %arena.cur21 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 %sum17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs4, i64 %concat.lhs2, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs15, i64 %concat.rhs6, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur22 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res23 = call ptr @"diag::E3131_whole_val_init_suffix"()
  %concat.lhs24 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs25 = load i64, ptr %concat.lhs24, align 8
  %concat.lhs26 = and i64 %concat.lhs25, 281474976710655
  %str.tag27 = lshr i64 %concat.lhs25, 48
  %str.immortal28 = icmp eq i64 %str.tag27, 0
  br i1 %str.immortal28, label %str_ok30, label %str_gen_check29

str_overflow_abort20:                             ; preds = %concat.sum.len16
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len19

str_gen_check29:                                  ; preds = %concat.tot.len19
  %arena.cur32 = call ptr @dva_arena_current()
  %tag.valid33 = call i1 @dva_arena_validate_tag(ptr %arena.cur32, i64 %str.tag27)
  br i1 %tag.valid33, label %str_ok30, label %str_stale31

str_ok30:                                         ; preds = %str_stale31, %str_gen_check29, %concat.tot.len19
  %concat.lhs34 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs35 = load ptr, ptr %concat.lhs34, align 8
  %concat.rhs36 = getelementptr inbounds { i64, ptr }, ptr %call.res23, i32 0, i32 0
  %concat.rhs37 = load i64, ptr %concat.rhs36, align 8
  %concat.rhs38 = and i64 %concat.rhs37, 281474976710655
  %str.tag39 = lshr i64 %concat.rhs37, 48
  %str.immortal40 = icmp eq i64 %str.tag39, 0
  br i1 %str.immortal40, label %str_ok42, label %str_gen_check41

str_stale31:                                      ; preds = %str_gen_check29
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok30

str_gen_check41:                                  ; preds = %str_ok30
  %arena.cur44 = call ptr @dva_arena_current()
  %tag.valid45 = call i1 @dva_arena_validate_tag(ptr %arena.cur44, i64 %str.tag39)
  br i1 %tag.valid45, label %str_ok42, label %str_stale43

str_ok42:                                         ; preds = %str_stale43, %str_gen_check41, %str_ok30
  %concat.rhs46 = getelementptr inbounds { i64, ptr }, ptr %call.res23, i32 0, i32 1
  %concat.rhs47 = load ptr, ptr %concat.rhs46, align 8
  %concat.sum.len48 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs26, i64 %concat.rhs38)
  %sum49 = extractvalue { i64, i1 } %concat.sum.len48, 0
  %ovf50 = extractvalue { i64, i1 } %concat.sum.len48, 1
  br i1 %ovf50, label %str_overflow_abort52, label %concat.sum.len51

str_stale43:                                      ; preds = %str_gen_check41
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok42

concat.sum.len51:                                 ; preds = %str_overflow_abort52, %str_ok42
  %concat.tot.len53 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum49, i64 1)
  %sum54 = extractvalue { i64, i1 } %concat.tot.len53, 0
  %ovf55 = extractvalue { i64, i1 } %concat.tot.len53, 1
  br i1 %ovf55, label %str_overflow_abort57, label %concat.tot.len56

str_overflow_abort52:                             ; preds = %str_ok42
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len51

concat.tot.len56:                                 ; preds = %str_overflow_abort57, %concat.sum.len51
  %arena.cur58 = call ptr @dva_arena_current()
  %concat.buf59 = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 %sum54)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf59, ptr align 1 %concat.lhs35, i64 %concat.lhs26, i1 false)
  %concat.mid60 = getelementptr i8, ptr %concat.buf59, i64 %concat.lhs26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid60, ptr align 1 %concat.rhs47, i64 %concat.rhs38, i1 false)
  %concat.nul61 = getelementptr i8, ptr %concat.buf59, i64 %sum49
  store i8 0, ptr %concat.nul61, align 1
  %arena.cur62 = call ptr @dva_arena_current()
  %concat.str63 = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 16)
  %str.build.len.gep64 = getelementptr inbounds { i64, ptr }, ptr %concat.str63, i32 0, i32 0
  store i64 %sum49, ptr %str.build.len.gep64, align 8
  %str.build.data.gep65 = getelementptr inbounds { i64, ptr }, ptr %concat.str63, i32 0, i32 1
  store ptr %concat.buf59, ptr %str.build.data.gep65, align 8
  ret ptr %concat.str63

str_overflow_abort57:                             ; preds = %concat.sum.len51
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len56
}

define ptr @"diag::E3131_whole_val_init_prefix"() #1 {
entry:
  ret ptr @str.31.struct
}

define ptr @"diag::E3131_whole_val_init_suffix"() #1 {
entry:
  ret ptr @str.32.struct
}

define ptr @"diag::record_default_missing"(ptr %0, ptr %1) #1 {
entry:
  %var.record = alloca ptr, align 8
  %var.field = alloca ptr, align 8
  store ptr %0, ptr %var.field, align 8
  store ptr %1, ptr %var.record, align 8
  %var.load = load ptr, ptr %var.field, align 8
  %concat.lhs = load i64, ptr @str.33.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.33.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.rhs3 = load i64, ptr %concat.rhs, align 8
  %concat.rhs4 = and i64 %concat.rhs3, 281474976710655
  %str.tag5 = lshr i64 %concat.rhs3, 48
  %str.immortal6 = icmp eq i64 %str.tag5, 0
  br i1 %str.immortal6, label %str_ok8, label %str_gen_check7

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check7:                                   ; preds = %str_ok
  %arena.cur10 = call ptr @dva_arena_current()
  %tag.valid11 = call i1 @dva_arena_validate_tag(ptr %arena.cur10, i64 %str.tag5)
  br i1 %tag.valid11, label %str_ok8, label %str_stale9

str_ok8:                                          ; preds = %str_stale9, %str_gen_check7, %str_ok
  %concat.rhs12 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.rhs13 = load ptr, ptr %concat.rhs12, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs4)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len14

str_stale9:                                       ; preds = %str_gen_check7
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok8

concat.sum.len14:                                 ; preds = %str_overflow_abort, %str_ok8
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum15 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf16 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf16, label %str_overflow_abort18, label %concat.tot.len17

str_overflow_abort:                               ; preds = %str_ok8
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len14

concat.tot.len17:                                 ; preds = %str_overflow_abort18, %concat.sum.len14
  %arena.cur19 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 %sum15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs13, i64 %concat.rhs4, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur20 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs21 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs22 = load i64, ptr %concat.lhs21, align 8
  %concat.lhs23 = and i64 %concat.lhs22, 281474976710655
  %str.tag24 = lshr i64 %concat.lhs22, 48
  %str.immortal25 = icmp eq i64 %str.tag24, 0
  br i1 %str.immortal25, label %str_ok27, label %str_gen_check26

str_overflow_abort18:                             ; preds = %concat.sum.len14
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len17

str_gen_check26:                                  ; preds = %concat.tot.len17
  %arena.cur29 = call ptr @dva_arena_current()
  %tag.valid30 = call i1 @dva_arena_validate_tag(ptr %arena.cur29, i64 %str.tag24)
  br i1 %tag.valid30, label %str_ok27, label %str_stale28

str_ok27:                                         ; preds = %str_stale28, %str_gen_check26, %concat.tot.len17
  %concat.lhs31 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs32 = load ptr, ptr %concat.lhs31, align 8
  %concat.rhs33 = load i64, ptr @str.34.struct, align 8
  %concat.rhs34 = and i64 %concat.rhs33, 281474976710655
  %str.tag35 = lshr i64 %concat.rhs33, 48
  %str.immortal36 = icmp eq i64 %str.tag35, 0
  br i1 %str.immortal36, label %str_ok38, label %str_gen_check37

str_stale28:                                      ; preds = %str_gen_check26
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok27

str_gen_check37:                                  ; preds = %str_ok27
  %arena.cur40 = call ptr @dva_arena_current()
  %tag.valid41 = call i1 @dva_arena_validate_tag(ptr %arena.cur40, i64 %str.tag35)
  br i1 %tag.valid41, label %str_ok38, label %str_stale39

str_ok38:                                         ; preds = %str_stale39, %str_gen_check37, %str_ok27
  %concat.rhs42 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.34.struct, i32 0, i32 1), align 8
  %concat.sum.len43 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs23, i64 %concat.rhs34)
  %sum44 = extractvalue { i64, i1 } %concat.sum.len43, 0
  %ovf45 = extractvalue { i64, i1 } %concat.sum.len43, 1
  br i1 %ovf45, label %str_overflow_abort47, label %concat.sum.len46

str_stale39:                                      ; preds = %str_gen_check37
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok38

concat.sum.len46:                                 ; preds = %str_overflow_abort47, %str_ok38
  %concat.tot.len48 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum44, i64 1)
  %sum49 = extractvalue { i64, i1 } %concat.tot.len48, 0
  %ovf50 = extractvalue { i64, i1 } %concat.tot.len48, 1
  br i1 %ovf50, label %str_overflow_abort52, label %concat.tot.len51

str_overflow_abort47:                             ; preds = %str_ok38
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len46

concat.tot.len51:                                 ; preds = %str_overflow_abort52, %concat.sum.len46
  %arena.cur53 = call ptr @dva_arena_current()
  %concat.buf54 = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 %sum49)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf54, ptr align 1 %concat.lhs32, i64 %concat.lhs23, i1 false)
  %concat.mid55 = getelementptr i8, ptr %concat.buf54, i64 %concat.lhs23
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid55, ptr align 1 %concat.rhs42, i64 %concat.rhs34, i1 false)
  %concat.nul56 = getelementptr i8, ptr %concat.buf54, i64 %sum44
  store i8 0, ptr %concat.nul56, align 1
  %arena.cur57 = call ptr @dva_arena_current()
  %concat.str58 = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 16)
  %str.build.len.gep59 = getelementptr inbounds { i64, ptr }, ptr %concat.str58, i32 0, i32 0
  store i64 %sum44, ptr %str.build.len.gep59, align 8
  %str.build.data.gep60 = getelementptr inbounds { i64, ptr }, ptr %concat.str58, i32 0, i32 1
  store ptr %concat.buf54, ptr %str.build.data.gep60, align 8
  %var.load61 = load ptr, ptr %var.record, align 8
  %concat.lhs62 = getelementptr inbounds { i64, ptr }, ptr %concat.str58, i32 0, i32 0
  %concat.lhs63 = load i64, ptr %concat.lhs62, align 8
  %concat.lhs64 = and i64 %concat.lhs63, 281474976710655
  %str.tag65 = lshr i64 %concat.lhs63, 48
  %str.immortal66 = icmp eq i64 %str.tag65, 0
  br i1 %str.immortal66, label %str_ok68, label %str_gen_check67

str_overflow_abort52:                             ; preds = %concat.sum.len46
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len51

str_gen_check67:                                  ; preds = %concat.tot.len51
  %arena.cur70 = call ptr @dva_arena_current()
  %tag.valid71 = call i1 @dva_arena_validate_tag(ptr %arena.cur70, i64 %str.tag65)
  br i1 %tag.valid71, label %str_ok68, label %str_stale69

str_ok68:                                         ; preds = %str_stale69, %str_gen_check67, %concat.tot.len51
  %concat.lhs72 = getelementptr inbounds { i64, ptr }, ptr %concat.str58, i32 0, i32 1
  %concat.lhs73 = load ptr, ptr %concat.lhs72, align 8
  %concat.rhs74 = getelementptr inbounds { i64, ptr }, ptr %var.load61, i32 0, i32 0
  %concat.rhs75 = load i64, ptr %concat.rhs74, align 8
  %concat.rhs76 = and i64 %concat.rhs75, 281474976710655
  %str.tag77 = lshr i64 %concat.rhs75, 48
  %str.immortal78 = icmp eq i64 %str.tag77, 0
  br i1 %str.immortal78, label %str_ok80, label %str_gen_check79

str_stale69:                                      ; preds = %str_gen_check67
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok68

str_gen_check79:                                  ; preds = %str_ok68
  %arena.cur82 = call ptr @dva_arena_current()
  %tag.valid83 = call i1 @dva_arena_validate_tag(ptr %arena.cur82, i64 %str.tag77)
  br i1 %tag.valid83, label %str_ok80, label %str_stale81

str_ok80:                                         ; preds = %str_stale81, %str_gen_check79, %str_ok68
  %concat.rhs84 = getelementptr inbounds { i64, ptr }, ptr %var.load61, i32 0, i32 1
  %concat.rhs85 = load ptr, ptr %concat.rhs84, align 8
  %concat.sum.len86 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs64, i64 %concat.rhs76)
  %sum87 = extractvalue { i64, i1 } %concat.sum.len86, 0
  %ovf88 = extractvalue { i64, i1 } %concat.sum.len86, 1
  br i1 %ovf88, label %str_overflow_abort90, label %concat.sum.len89

str_stale81:                                      ; preds = %str_gen_check79
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok80

concat.sum.len89:                                 ; preds = %str_overflow_abort90, %str_ok80
  %concat.tot.len91 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum87, i64 1)
  %sum92 = extractvalue { i64, i1 } %concat.tot.len91, 0
  %ovf93 = extractvalue { i64, i1 } %concat.tot.len91, 1
  br i1 %ovf93, label %str_overflow_abort95, label %concat.tot.len94

str_overflow_abort90:                             ; preds = %str_ok80
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len89

concat.tot.len94:                                 ; preds = %str_overflow_abort95, %concat.sum.len89
  %arena.cur96 = call ptr @dva_arena_current()
  %concat.buf97 = call ptr @dva_arena_alloc(ptr %arena.cur96, i64 %sum92)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf97, ptr align 1 %concat.lhs73, i64 %concat.lhs64, i1 false)
  %concat.mid98 = getelementptr i8, ptr %concat.buf97, i64 %concat.lhs64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid98, ptr align 1 %concat.rhs85, i64 %concat.rhs76, i1 false)
  %concat.nul99 = getelementptr i8, ptr %concat.buf97, i64 %sum87
  store i8 0, ptr %concat.nul99, align 1
  %arena.cur100 = call ptr @dva_arena_current()
  %concat.str101 = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 16)
  %str.build.len.gep102 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 0
  store i64 %sum87, ptr %str.build.len.gep102, align 8
  %str.build.data.gep103 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 1
  store ptr %concat.buf97, ptr %str.build.data.gep103, align 8
  %concat.lhs104 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 0
  %concat.lhs105 = load i64, ptr %concat.lhs104, align 8
  %concat.lhs106 = and i64 %concat.lhs105, 281474976710655
  %str.tag107 = lshr i64 %concat.lhs105, 48
  %str.immortal108 = icmp eq i64 %str.tag107, 0
  br i1 %str.immortal108, label %str_ok110, label %str_gen_check109

str_overflow_abort95:                             ; preds = %concat.sum.len89
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len94

str_gen_check109:                                 ; preds = %concat.tot.len94
  %arena.cur112 = call ptr @dva_arena_current()
  %tag.valid113 = call i1 @dva_arena_validate_tag(ptr %arena.cur112, i64 %str.tag107)
  br i1 %tag.valid113, label %str_ok110, label %str_stale111

str_ok110:                                        ; preds = %str_stale111, %str_gen_check109, %concat.tot.len94
  %concat.lhs114 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 1
  %concat.lhs115 = load ptr, ptr %concat.lhs114, align 8
  %concat.rhs116 = load i64, ptr @str.35.struct, align 8
  %concat.rhs117 = and i64 %concat.rhs116, 281474976710655
  %str.tag118 = lshr i64 %concat.rhs116, 48
  %str.immortal119 = icmp eq i64 %str.tag118, 0
  br i1 %str.immortal119, label %str_ok121, label %str_gen_check120

str_stale111:                                     ; preds = %str_gen_check109
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok110

str_gen_check120:                                 ; preds = %str_ok110
  %arena.cur123 = call ptr @dva_arena_current()
  %tag.valid124 = call i1 @dva_arena_validate_tag(ptr %arena.cur123, i64 %str.tag118)
  br i1 %tag.valid124, label %str_ok121, label %str_stale122

str_ok121:                                        ; preds = %str_stale122, %str_gen_check120, %str_ok110
  %concat.rhs125 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.35.struct, i32 0, i32 1), align 8
  %concat.sum.len126 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs106, i64 %concat.rhs117)
  %sum127 = extractvalue { i64, i1 } %concat.sum.len126, 0
  %ovf128 = extractvalue { i64, i1 } %concat.sum.len126, 1
  br i1 %ovf128, label %str_overflow_abort130, label %concat.sum.len129

str_stale122:                                     ; preds = %str_gen_check120
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok121

concat.sum.len129:                                ; preds = %str_overflow_abort130, %str_ok121
  %concat.tot.len131 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum127, i64 1)
  %sum132 = extractvalue { i64, i1 } %concat.tot.len131, 0
  %ovf133 = extractvalue { i64, i1 } %concat.tot.len131, 1
  br i1 %ovf133, label %str_overflow_abort135, label %concat.tot.len134

str_overflow_abort130:                            ; preds = %str_ok121
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len129

concat.tot.len134:                                ; preds = %str_overflow_abort135, %concat.sum.len129
  %arena.cur136 = call ptr @dva_arena_current()
  %concat.buf137 = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 %sum132)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf137, ptr align 1 %concat.lhs115, i64 %concat.lhs106, i1 false)
  %concat.mid138 = getelementptr i8, ptr %concat.buf137, i64 %concat.lhs106
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid138, ptr align 1 %concat.rhs125, i64 %concat.rhs117, i1 false)
  %concat.nul139 = getelementptr i8, ptr %concat.buf137, i64 %sum127
  store i8 0, ptr %concat.nul139, align 1
  %arena.cur140 = call ptr @dva_arena_current()
  %concat.str141 = call ptr @dva_arena_alloc(ptr %arena.cur140, i64 16)
  %str.build.len.gep142 = getelementptr inbounds { i64, ptr }, ptr %concat.str141, i32 0, i32 0
  store i64 %sum127, ptr %str.build.len.gep142, align 8
  %str.build.data.gep143 = getelementptr inbounds { i64, ptr }, ptr %concat.str141, i32 0, i32 1
  store ptr %concat.buf137, ptr %str.build.data.gep143, align 8
  ret ptr %concat.str141

str_overflow_abort135:                            ; preds = %concat.sum.len129
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len134
}

define ptr @"diag::enum_no_variant"(ptr %0, ptr %1) #1 {
entry:
  %var.label = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store ptr %1, ptr %var.label, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %concat.lhs = load i64, ptr @str.36.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.36.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.rhs3 = load i64, ptr %concat.rhs, align 8
  %concat.rhs4 = and i64 %concat.rhs3, 281474976710655
  %str.tag5 = lshr i64 %concat.rhs3, 48
  %str.immortal6 = icmp eq i64 %str.tag5, 0
  br i1 %str.immortal6, label %str_ok8, label %str_gen_check7

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check7:                                   ; preds = %str_ok
  %arena.cur10 = call ptr @dva_arena_current()
  %tag.valid11 = call i1 @dva_arena_validate_tag(ptr %arena.cur10, i64 %str.tag5)
  br i1 %tag.valid11, label %str_ok8, label %str_stale9

str_ok8:                                          ; preds = %str_stale9, %str_gen_check7, %str_ok
  %concat.rhs12 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.rhs13 = load ptr, ptr %concat.rhs12, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs4)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len14

str_stale9:                                       ; preds = %str_gen_check7
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok8

concat.sum.len14:                                 ; preds = %str_overflow_abort, %str_ok8
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum15 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf16 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf16, label %str_overflow_abort18, label %concat.tot.len17

str_overflow_abort:                               ; preds = %str_ok8
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len14

concat.tot.len17:                                 ; preds = %str_overflow_abort18, %concat.sum.len14
  %arena.cur19 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 %sum15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs13, i64 %concat.rhs4, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur20 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs21 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs22 = load i64, ptr %concat.lhs21, align 8
  %concat.lhs23 = and i64 %concat.lhs22, 281474976710655
  %str.tag24 = lshr i64 %concat.lhs22, 48
  %str.immortal25 = icmp eq i64 %str.tag24, 0
  br i1 %str.immortal25, label %str_ok27, label %str_gen_check26

str_overflow_abort18:                             ; preds = %concat.sum.len14
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len17

str_gen_check26:                                  ; preds = %concat.tot.len17
  %arena.cur29 = call ptr @dva_arena_current()
  %tag.valid30 = call i1 @dva_arena_validate_tag(ptr %arena.cur29, i64 %str.tag24)
  br i1 %tag.valid30, label %str_ok27, label %str_stale28

str_ok27:                                         ; preds = %str_stale28, %str_gen_check26, %concat.tot.len17
  %concat.lhs31 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs32 = load ptr, ptr %concat.lhs31, align 8
  %concat.rhs33 = load i64, ptr @str.37.struct, align 8
  %concat.rhs34 = and i64 %concat.rhs33, 281474976710655
  %str.tag35 = lshr i64 %concat.rhs33, 48
  %str.immortal36 = icmp eq i64 %str.tag35, 0
  br i1 %str.immortal36, label %str_ok38, label %str_gen_check37

str_stale28:                                      ; preds = %str_gen_check26
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok27

str_gen_check37:                                  ; preds = %str_ok27
  %arena.cur40 = call ptr @dva_arena_current()
  %tag.valid41 = call i1 @dva_arena_validate_tag(ptr %arena.cur40, i64 %str.tag35)
  br i1 %tag.valid41, label %str_ok38, label %str_stale39

str_ok38:                                         ; preds = %str_stale39, %str_gen_check37, %str_ok27
  %concat.rhs42 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.37.struct, i32 0, i32 1), align 8
  %concat.sum.len43 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs23, i64 %concat.rhs34)
  %sum44 = extractvalue { i64, i1 } %concat.sum.len43, 0
  %ovf45 = extractvalue { i64, i1 } %concat.sum.len43, 1
  br i1 %ovf45, label %str_overflow_abort47, label %concat.sum.len46

str_stale39:                                      ; preds = %str_gen_check37
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok38

concat.sum.len46:                                 ; preds = %str_overflow_abort47, %str_ok38
  %concat.tot.len48 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum44, i64 1)
  %sum49 = extractvalue { i64, i1 } %concat.tot.len48, 0
  %ovf50 = extractvalue { i64, i1 } %concat.tot.len48, 1
  br i1 %ovf50, label %str_overflow_abort52, label %concat.tot.len51

str_overflow_abort47:                             ; preds = %str_ok38
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len46

concat.tot.len51:                                 ; preds = %str_overflow_abort52, %concat.sum.len46
  %arena.cur53 = call ptr @dva_arena_current()
  %concat.buf54 = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 %sum49)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf54, ptr align 1 %concat.lhs32, i64 %concat.lhs23, i1 false)
  %concat.mid55 = getelementptr i8, ptr %concat.buf54, i64 %concat.lhs23
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid55, ptr align 1 %concat.rhs42, i64 %concat.rhs34, i1 false)
  %concat.nul56 = getelementptr i8, ptr %concat.buf54, i64 %sum44
  store i8 0, ptr %concat.nul56, align 1
  %arena.cur57 = call ptr @dva_arena_current()
  %concat.str58 = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 16)
  %str.build.len.gep59 = getelementptr inbounds { i64, ptr }, ptr %concat.str58, i32 0, i32 0
  store i64 %sum44, ptr %str.build.len.gep59, align 8
  %str.build.data.gep60 = getelementptr inbounds { i64, ptr }, ptr %concat.str58, i32 0, i32 1
  store ptr %concat.buf54, ptr %str.build.data.gep60, align 8
  %var.load61 = load ptr, ptr %var.label, align 8
  %concat.lhs62 = getelementptr inbounds { i64, ptr }, ptr %concat.str58, i32 0, i32 0
  %concat.lhs63 = load i64, ptr %concat.lhs62, align 8
  %concat.lhs64 = and i64 %concat.lhs63, 281474976710655
  %str.tag65 = lshr i64 %concat.lhs63, 48
  %str.immortal66 = icmp eq i64 %str.tag65, 0
  br i1 %str.immortal66, label %str_ok68, label %str_gen_check67

str_overflow_abort52:                             ; preds = %concat.sum.len46
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len51

str_gen_check67:                                  ; preds = %concat.tot.len51
  %arena.cur70 = call ptr @dva_arena_current()
  %tag.valid71 = call i1 @dva_arena_validate_tag(ptr %arena.cur70, i64 %str.tag65)
  br i1 %tag.valid71, label %str_ok68, label %str_stale69

str_ok68:                                         ; preds = %str_stale69, %str_gen_check67, %concat.tot.len51
  %concat.lhs72 = getelementptr inbounds { i64, ptr }, ptr %concat.str58, i32 0, i32 1
  %concat.lhs73 = load ptr, ptr %concat.lhs72, align 8
  %concat.rhs74 = getelementptr inbounds { i64, ptr }, ptr %var.load61, i32 0, i32 0
  %concat.rhs75 = load i64, ptr %concat.rhs74, align 8
  %concat.rhs76 = and i64 %concat.rhs75, 281474976710655
  %str.tag77 = lshr i64 %concat.rhs75, 48
  %str.immortal78 = icmp eq i64 %str.tag77, 0
  br i1 %str.immortal78, label %str_ok80, label %str_gen_check79

str_stale69:                                      ; preds = %str_gen_check67
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok68

str_gen_check79:                                  ; preds = %str_ok68
  %arena.cur82 = call ptr @dva_arena_current()
  %tag.valid83 = call i1 @dva_arena_validate_tag(ptr %arena.cur82, i64 %str.tag77)
  br i1 %tag.valid83, label %str_ok80, label %str_stale81

str_ok80:                                         ; preds = %str_stale81, %str_gen_check79, %str_ok68
  %concat.rhs84 = getelementptr inbounds { i64, ptr }, ptr %var.load61, i32 0, i32 1
  %concat.rhs85 = load ptr, ptr %concat.rhs84, align 8
  %concat.sum.len86 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs64, i64 %concat.rhs76)
  %sum87 = extractvalue { i64, i1 } %concat.sum.len86, 0
  %ovf88 = extractvalue { i64, i1 } %concat.sum.len86, 1
  br i1 %ovf88, label %str_overflow_abort90, label %concat.sum.len89

str_stale81:                                      ; preds = %str_gen_check79
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok80

concat.sum.len89:                                 ; preds = %str_overflow_abort90, %str_ok80
  %concat.tot.len91 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum87, i64 1)
  %sum92 = extractvalue { i64, i1 } %concat.tot.len91, 0
  %ovf93 = extractvalue { i64, i1 } %concat.tot.len91, 1
  br i1 %ovf93, label %str_overflow_abort95, label %concat.tot.len94

str_overflow_abort90:                             ; preds = %str_ok80
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len89

concat.tot.len94:                                 ; preds = %str_overflow_abort95, %concat.sum.len89
  %arena.cur96 = call ptr @dva_arena_current()
  %concat.buf97 = call ptr @dva_arena_alloc(ptr %arena.cur96, i64 %sum92)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf97, ptr align 1 %concat.lhs73, i64 %concat.lhs64, i1 false)
  %concat.mid98 = getelementptr i8, ptr %concat.buf97, i64 %concat.lhs64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid98, ptr align 1 %concat.rhs85, i64 %concat.rhs76, i1 false)
  %concat.nul99 = getelementptr i8, ptr %concat.buf97, i64 %sum87
  store i8 0, ptr %concat.nul99, align 1
  %arena.cur100 = call ptr @dva_arena_current()
  %concat.str101 = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 16)
  %str.build.len.gep102 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 0
  store i64 %sum87, ptr %str.build.len.gep102, align 8
  %str.build.data.gep103 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 1
  store ptr %concat.buf97, ptr %str.build.data.gep103, align 8
  %concat.lhs104 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 0
  %concat.lhs105 = load i64, ptr %concat.lhs104, align 8
  %concat.lhs106 = and i64 %concat.lhs105, 281474976710655
  %str.tag107 = lshr i64 %concat.lhs105, 48
  %str.immortal108 = icmp eq i64 %str.tag107, 0
  br i1 %str.immortal108, label %str_ok110, label %str_gen_check109

str_overflow_abort95:                             ; preds = %concat.sum.len89
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len94

str_gen_check109:                                 ; preds = %concat.tot.len94
  %arena.cur112 = call ptr @dva_arena_current()
  %tag.valid113 = call i1 @dva_arena_validate_tag(ptr %arena.cur112, i64 %str.tag107)
  br i1 %tag.valid113, label %str_ok110, label %str_stale111

str_ok110:                                        ; preds = %str_stale111, %str_gen_check109, %concat.tot.len94
  %concat.lhs114 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 1
  %concat.lhs115 = load ptr, ptr %concat.lhs114, align 8
  %concat.rhs116 = load i64, ptr @str.30.struct, align 8
  %concat.rhs117 = and i64 %concat.rhs116, 281474976710655
  %str.tag118 = lshr i64 %concat.rhs116, 48
  %str.immortal119 = icmp eq i64 %str.tag118, 0
  br i1 %str.immortal119, label %str_ok121, label %str_gen_check120

str_stale111:                                     ; preds = %str_gen_check109
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok110

str_gen_check120:                                 ; preds = %str_ok110
  %arena.cur123 = call ptr @dva_arena_current()
  %tag.valid124 = call i1 @dva_arena_validate_tag(ptr %arena.cur123, i64 %str.tag118)
  br i1 %tag.valid124, label %str_ok121, label %str_stale122

str_ok121:                                        ; preds = %str_stale122, %str_gen_check120, %str_ok110
  %concat.rhs125 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.30.struct, i32 0, i32 1), align 8
  %concat.sum.len126 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs106, i64 %concat.rhs117)
  %sum127 = extractvalue { i64, i1 } %concat.sum.len126, 0
  %ovf128 = extractvalue { i64, i1 } %concat.sum.len126, 1
  br i1 %ovf128, label %str_overflow_abort130, label %concat.sum.len129

str_stale122:                                     ; preds = %str_gen_check120
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok121

concat.sum.len129:                                ; preds = %str_overflow_abort130, %str_ok121
  %concat.tot.len131 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum127, i64 1)
  %sum132 = extractvalue { i64, i1 } %concat.tot.len131, 0
  %ovf133 = extractvalue { i64, i1 } %concat.tot.len131, 1
  br i1 %ovf133, label %str_overflow_abort135, label %concat.tot.len134

str_overflow_abort130:                            ; preds = %str_ok121
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len129

concat.tot.len134:                                ; preds = %str_overflow_abort135, %concat.sum.len129
  %arena.cur136 = call ptr @dva_arena_current()
  %concat.buf137 = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 %sum132)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf137, ptr align 1 %concat.lhs115, i64 %concat.lhs106, i1 false)
  %concat.mid138 = getelementptr i8, ptr %concat.buf137, i64 %concat.lhs106
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid138, ptr align 1 %concat.rhs125, i64 %concat.rhs117, i1 false)
  %concat.nul139 = getelementptr i8, ptr %concat.buf137, i64 %sum127
  store i8 0, ptr %concat.nul139, align 1
  %arena.cur140 = call ptr @dva_arena_current()
  %concat.str141 = call ptr @dva_arena_alloc(ptr %arena.cur140, i64 16)
  %str.build.len.gep142 = getelementptr inbounds { i64, ptr }, ptr %concat.str141, i32 0, i32 0
  store i64 %sum127, ptr %str.build.len.gep142, align 8
  %str.build.data.gep143 = getelementptr inbounds { i64, ptr }, ptr %concat.str141, i32 0, i32 1
  store ptr %concat.buf137, ptr %str.build.data.gep143, align 8
  ret ptr %concat.str141

str_overflow_abort135:                            ; preds = %concat.sum.len129
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len134
}

define ptr @"diag::enum_unit_payload"(ptr %0, ptr %1) #1 {
entry:
  %var.label = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store ptr %1, ptr %var.label, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %concat.lhs = load i64, ptr @str.36.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.36.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.rhs3 = load i64, ptr %concat.rhs, align 8
  %concat.rhs4 = and i64 %concat.rhs3, 281474976710655
  %str.tag5 = lshr i64 %concat.rhs3, 48
  %str.immortal6 = icmp eq i64 %str.tag5, 0
  br i1 %str.immortal6, label %str_ok8, label %str_gen_check7

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check7:                                   ; preds = %str_ok
  %arena.cur10 = call ptr @dva_arena_current()
  %tag.valid11 = call i1 @dva_arena_validate_tag(ptr %arena.cur10, i64 %str.tag5)
  br i1 %tag.valid11, label %str_ok8, label %str_stale9

str_ok8:                                          ; preds = %str_stale9, %str_gen_check7, %str_ok
  %concat.rhs12 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.rhs13 = load ptr, ptr %concat.rhs12, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs4)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len14

str_stale9:                                       ; preds = %str_gen_check7
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok8

concat.sum.len14:                                 ; preds = %str_overflow_abort, %str_ok8
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum15 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf16 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf16, label %str_overflow_abort18, label %concat.tot.len17

str_overflow_abort:                               ; preds = %str_ok8
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len14

concat.tot.len17:                                 ; preds = %str_overflow_abort18, %concat.sum.len14
  %arena.cur19 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 %sum15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs13, i64 %concat.rhs4, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur20 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs21 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs22 = load i64, ptr %concat.lhs21, align 8
  %concat.lhs23 = and i64 %concat.lhs22, 281474976710655
  %str.tag24 = lshr i64 %concat.lhs22, 48
  %str.immortal25 = icmp eq i64 %str.tag24, 0
  br i1 %str.immortal25, label %str_ok27, label %str_gen_check26

str_overflow_abort18:                             ; preds = %concat.sum.len14
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len17

str_gen_check26:                                  ; preds = %concat.tot.len17
  %arena.cur29 = call ptr @dva_arena_current()
  %tag.valid30 = call i1 @dva_arena_validate_tag(ptr %arena.cur29, i64 %str.tag24)
  br i1 %tag.valid30, label %str_ok27, label %str_stale28

str_ok27:                                         ; preds = %str_stale28, %str_gen_check26, %concat.tot.len17
  %concat.lhs31 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs32 = load ptr, ptr %concat.lhs31, align 8
  %concat.rhs33 = load i64, ptr @str.38.struct, align 8
  %concat.rhs34 = and i64 %concat.rhs33, 281474976710655
  %str.tag35 = lshr i64 %concat.rhs33, 48
  %str.immortal36 = icmp eq i64 %str.tag35, 0
  br i1 %str.immortal36, label %str_ok38, label %str_gen_check37

str_stale28:                                      ; preds = %str_gen_check26
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok27

str_gen_check37:                                  ; preds = %str_ok27
  %arena.cur40 = call ptr @dva_arena_current()
  %tag.valid41 = call i1 @dva_arena_validate_tag(ptr %arena.cur40, i64 %str.tag35)
  br i1 %tag.valid41, label %str_ok38, label %str_stale39

str_ok38:                                         ; preds = %str_stale39, %str_gen_check37, %str_ok27
  %concat.rhs42 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.38.struct, i32 0, i32 1), align 8
  %concat.sum.len43 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs23, i64 %concat.rhs34)
  %sum44 = extractvalue { i64, i1 } %concat.sum.len43, 0
  %ovf45 = extractvalue { i64, i1 } %concat.sum.len43, 1
  br i1 %ovf45, label %str_overflow_abort47, label %concat.sum.len46

str_stale39:                                      ; preds = %str_gen_check37
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok38

concat.sum.len46:                                 ; preds = %str_overflow_abort47, %str_ok38
  %concat.tot.len48 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum44, i64 1)
  %sum49 = extractvalue { i64, i1 } %concat.tot.len48, 0
  %ovf50 = extractvalue { i64, i1 } %concat.tot.len48, 1
  br i1 %ovf50, label %str_overflow_abort52, label %concat.tot.len51

str_overflow_abort47:                             ; preds = %str_ok38
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len46

concat.tot.len51:                                 ; preds = %str_overflow_abort52, %concat.sum.len46
  %arena.cur53 = call ptr @dva_arena_current()
  %concat.buf54 = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 %sum49)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf54, ptr align 1 %concat.lhs32, i64 %concat.lhs23, i1 false)
  %concat.mid55 = getelementptr i8, ptr %concat.buf54, i64 %concat.lhs23
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid55, ptr align 1 %concat.rhs42, i64 %concat.rhs34, i1 false)
  %concat.nul56 = getelementptr i8, ptr %concat.buf54, i64 %sum44
  store i8 0, ptr %concat.nul56, align 1
  %arena.cur57 = call ptr @dva_arena_current()
  %concat.str58 = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 16)
  %str.build.len.gep59 = getelementptr inbounds { i64, ptr }, ptr %concat.str58, i32 0, i32 0
  store i64 %sum44, ptr %str.build.len.gep59, align 8
  %str.build.data.gep60 = getelementptr inbounds { i64, ptr }, ptr %concat.str58, i32 0, i32 1
  store ptr %concat.buf54, ptr %str.build.data.gep60, align 8
  %var.load61 = load ptr, ptr %var.label, align 8
  %concat.lhs62 = getelementptr inbounds { i64, ptr }, ptr %concat.str58, i32 0, i32 0
  %concat.lhs63 = load i64, ptr %concat.lhs62, align 8
  %concat.lhs64 = and i64 %concat.lhs63, 281474976710655
  %str.tag65 = lshr i64 %concat.lhs63, 48
  %str.immortal66 = icmp eq i64 %str.tag65, 0
  br i1 %str.immortal66, label %str_ok68, label %str_gen_check67

str_overflow_abort52:                             ; preds = %concat.sum.len46
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len51

str_gen_check67:                                  ; preds = %concat.tot.len51
  %arena.cur70 = call ptr @dva_arena_current()
  %tag.valid71 = call i1 @dva_arena_validate_tag(ptr %arena.cur70, i64 %str.tag65)
  br i1 %tag.valid71, label %str_ok68, label %str_stale69

str_ok68:                                         ; preds = %str_stale69, %str_gen_check67, %concat.tot.len51
  %concat.lhs72 = getelementptr inbounds { i64, ptr }, ptr %concat.str58, i32 0, i32 1
  %concat.lhs73 = load ptr, ptr %concat.lhs72, align 8
  %concat.rhs74 = getelementptr inbounds { i64, ptr }, ptr %var.load61, i32 0, i32 0
  %concat.rhs75 = load i64, ptr %concat.rhs74, align 8
  %concat.rhs76 = and i64 %concat.rhs75, 281474976710655
  %str.tag77 = lshr i64 %concat.rhs75, 48
  %str.immortal78 = icmp eq i64 %str.tag77, 0
  br i1 %str.immortal78, label %str_ok80, label %str_gen_check79

str_stale69:                                      ; preds = %str_gen_check67
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok68

str_gen_check79:                                  ; preds = %str_ok68
  %arena.cur82 = call ptr @dva_arena_current()
  %tag.valid83 = call i1 @dva_arena_validate_tag(ptr %arena.cur82, i64 %str.tag77)
  br i1 %tag.valid83, label %str_ok80, label %str_stale81

str_ok80:                                         ; preds = %str_stale81, %str_gen_check79, %str_ok68
  %concat.rhs84 = getelementptr inbounds { i64, ptr }, ptr %var.load61, i32 0, i32 1
  %concat.rhs85 = load ptr, ptr %concat.rhs84, align 8
  %concat.sum.len86 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs64, i64 %concat.rhs76)
  %sum87 = extractvalue { i64, i1 } %concat.sum.len86, 0
  %ovf88 = extractvalue { i64, i1 } %concat.sum.len86, 1
  br i1 %ovf88, label %str_overflow_abort90, label %concat.sum.len89

str_stale81:                                      ; preds = %str_gen_check79
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok80

concat.sum.len89:                                 ; preds = %str_overflow_abort90, %str_ok80
  %concat.tot.len91 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum87, i64 1)
  %sum92 = extractvalue { i64, i1 } %concat.tot.len91, 0
  %ovf93 = extractvalue { i64, i1 } %concat.tot.len91, 1
  br i1 %ovf93, label %str_overflow_abort95, label %concat.tot.len94

str_overflow_abort90:                             ; preds = %str_ok80
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len89

concat.tot.len94:                                 ; preds = %str_overflow_abort95, %concat.sum.len89
  %arena.cur96 = call ptr @dva_arena_current()
  %concat.buf97 = call ptr @dva_arena_alloc(ptr %arena.cur96, i64 %sum92)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf97, ptr align 1 %concat.lhs73, i64 %concat.lhs64, i1 false)
  %concat.mid98 = getelementptr i8, ptr %concat.buf97, i64 %concat.lhs64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid98, ptr align 1 %concat.rhs85, i64 %concat.rhs76, i1 false)
  %concat.nul99 = getelementptr i8, ptr %concat.buf97, i64 %sum87
  store i8 0, ptr %concat.nul99, align 1
  %arena.cur100 = call ptr @dva_arena_current()
  %concat.str101 = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 16)
  %str.build.len.gep102 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 0
  store i64 %sum87, ptr %str.build.len.gep102, align 8
  %str.build.data.gep103 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 1
  store ptr %concat.buf97, ptr %str.build.data.gep103, align 8
  %concat.lhs104 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 0
  %concat.lhs105 = load i64, ptr %concat.lhs104, align 8
  %concat.lhs106 = and i64 %concat.lhs105, 281474976710655
  %str.tag107 = lshr i64 %concat.lhs105, 48
  %str.immortal108 = icmp eq i64 %str.tag107, 0
  br i1 %str.immortal108, label %str_ok110, label %str_gen_check109

str_overflow_abort95:                             ; preds = %concat.sum.len89
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len94

str_gen_check109:                                 ; preds = %concat.tot.len94
  %arena.cur112 = call ptr @dva_arena_current()
  %tag.valid113 = call i1 @dva_arena_validate_tag(ptr %arena.cur112, i64 %str.tag107)
  br i1 %tag.valid113, label %str_ok110, label %str_stale111

str_ok110:                                        ; preds = %str_stale111, %str_gen_check109, %concat.tot.len94
  %concat.lhs114 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 1
  %concat.lhs115 = load ptr, ptr %concat.lhs114, align 8
  %concat.rhs116 = load i64, ptr @str.39.struct, align 8
  %concat.rhs117 = and i64 %concat.rhs116, 281474976710655
  %str.tag118 = lshr i64 %concat.rhs116, 48
  %str.immortal119 = icmp eq i64 %str.tag118, 0
  br i1 %str.immortal119, label %str_ok121, label %str_gen_check120

str_stale111:                                     ; preds = %str_gen_check109
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok110

str_gen_check120:                                 ; preds = %str_ok110
  %arena.cur123 = call ptr @dva_arena_current()
  %tag.valid124 = call i1 @dva_arena_validate_tag(ptr %arena.cur123, i64 %str.tag118)
  br i1 %tag.valid124, label %str_ok121, label %str_stale122

str_ok121:                                        ; preds = %str_stale122, %str_gen_check120, %str_ok110
  %concat.rhs125 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.39.struct, i32 0, i32 1), align 8
  %concat.sum.len126 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs106, i64 %concat.rhs117)
  %sum127 = extractvalue { i64, i1 } %concat.sum.len126, 0
  %ovf128 = extractvalue { i64, i1 } %concat.sum.len126, 1
  br i1 %ovf128, label %str_overflow_abort130, label %concat.sum.len129

str_stale122:                                     ; preds = %str_gen_check120
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok121

concat.sum.len129:                                ; preds = %str_overflow_abort130, %str_ok121
  %concat.tot.len131 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum127, i64 1)
  %sum132 = extractvalue { i64, i1 } %concat.tot.len131, 0
  %ovf133 = extractvalue { i64, i1 } %concat.tot.len131, 1
  br i1 %ovf133, label %str_overflow_abort135, label %concat.tot.len134

str_overflow_abort130:                            ; preds = %str_ok121
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len129

concat.tot.len134:                                ; preds = %str_overflow_abort135, %concat.sum.len129
  %arena.cur136 = call ptr @dva_arena_current()
  %concat.buf137 = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 %sum132)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf137, ptr align 1 %concat.lhs115, i64 %concat.lhs106, i1 false)
  %concat.mid138 = getelementptr i8, ptr %concat.buf137, i64 %concat.lhs106
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid138, ptr align 1 %concat.rhs125, i64 %concat.rhs117, i1 false)
  %concat.nul139 = getelementptr i8, ptr %concat.buf137, i64 %sum127
  store i8 0, ptr %concat.nul139, align 1
  %arena.cur140 = call ptr @dva_arena_current()
  %concat.str141 = call ptr @dva_arena_alloc(ptr %arena.cur140, i64 16)
  %str.build.len.gep142 = getelementptr inbounds { i64, ptr }, ptr %concat.str141, i32 0, i32 0
  store i64 %sum127, ptr %str.build.len.gep142, align 8
  %str.build.data.gep143 = getelementptr inbounds { i64, ptr }, ptr %concat.str141, i32 0, i32 1
  store ptr %concat.buf137, ptr %str.build.data.gep143, align 8
  ret ptr %concat.str141

str_overflow_abort135:                            ; preds = %concat.sum.len129
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len134
}

define ptr @"diag::enum_payload_type"(ptr %0, ptr %1, ptr %2, ptr %3) #1 {
entry:
  %var.got = alloca ptr, align 8
  %var.expected = alloca ptr, align 8
  %var.label = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store ptr %1, ptr %var.label, align 8
  store ptr %2, ptr %var.expected, align 8
  store ptr %3, ptr %var.got, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %concat.lhs = load i64, ptr @str.36.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.36.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.rhs3 = load i64, ptr %concat.rhs, align 8
  %concat.rhs4 = and i64 %concat.rhs3, 281474976710655
  %str.tag5 = lshr i64 %concat.rhs3, 48
  %str.immortal6 = icmp eq i64 %str.tag5, 0
  br i1 %str.immortal6, label %str_ok8, label %str_gen_check7

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check7:                                   ; preds = %str_ok
  %arena.cur10 = call ptr @dva_arena_current()
  %tag.valid11 = call i1 @dva_arena_validate_tag(ptr %arena.cur10, i64 %str.tag5)
  br i1 %tag.valid11, label %str_ok8, label %str_stale9

str_ok8:                                          ; preds = %str_stale9, %str_gen_check7, %str_ok
  %concat.rhs12 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.rhs13 = load ptr, ptr %concat.rhs12, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs4)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len14

str_stale9:                                       ; preds = %str_gen_check7
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok8

concat.sum.len14:                                 ; preds = %str_overflow_abort, %str_ok8
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum15 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf16 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf16, label %str_overflow_abort18, label %concat.tot.len17

str_overflow_abort:                               ; preds = %str_ok8
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len14

concat.tot.len17:                                 ; preds = %str_overflow_abort18, %concat.sum.len14
  %arena.cur19 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 %sum15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs13, i64 %concat.rhs4, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur20 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs21 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs22 = load i64, ptr %concat.lhs21, align 8
  %concat.lhs23 = and i64 %concat.lhs22, 281474976710655
  %str.tag24 = lshr i64 %concat.lhs22, 48
  %str.immortal25 = icmp eq i64 %str.tag24, 0
  br i1 %str.immortal25, label %str_ok27, label %str_gen_check26

str_overflow_abort18:                             ; preds = %concat.sum.len14
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len17

str_gen_check26:                                  ; preds = %concat.tot.len17
  %arena.cur29 = call ptr @dva_arena_current()
  %tag.valid30 = call i1 @dva_arena_validate_tag(ptr %arena.cur29, i64 %str.tag24)
  br i1 %tag.valid30, label %str_ok27, label %str_stale28

str_ok27:                                         ; preds = %str_stale28, %str_gen_check26, %concat.tot.len17
  %concat.lhs31 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs32 = load ptr, ptr %concat.lhs31, align 8
  %concat.rhs33 = load i64, ptr @str.38.struct, align 8
  %concat.rhs34 = and i64 %concat.rhs33, 281474976710655
  %str.tag35 = lshr i64 %concat.rhs33, 48
  %str.immortal36 = icmp eq i64 %str.tag35, 0
  br i1 %str.immortal36, label %str_ok38, label %str_gen_check37

str_stale28:                                      ; preds = %str_gen_check26
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok27

str_gen_check37:                                  ; preds = %str_ok27
  %arena.cur40 = call ptr @dva_arena_current()
  %tag.valid41 = call i1 @dva_arena_validate_tag(ptr %arena.cur40, i64 %str.tag35)
  br i1 %tag.valid41, label %str_ok38, label %str_stale39

str_ok38:                                         ; preds = %str_stale39, %str_gen_check37, %str_ok27
  %concat.rhs42 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.38.struct, i32 0, i32 1), align 8
  %concat.sum.len43 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs23, i64 %concat.rhs34)
  %sum44 = extractvalue { i64, i1 } %concat.sum.len43, 0
  %ovf45 = extractvalue { i64, i1 } %concat.sum.len43, 1
  br i1 %ovf45, label %str_overflow_abort47, label %concat.sum.len46

str_stale39:                                      ; preds = %str_gen_check37
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok38

concat.sum.len46:                                 ; preds = %str_overflow_abort47, %str_ok38
  %concat.tot.len48 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum44, i64 1)
  %sum49 = extractvalue { i64, i1 } %concat.tot.len48, 0
  %ovf50 = extractvalue { i64, i1 } %concat.tot.len48, 1
  br i1 %ovf50, label %str_overflow_abort52, label %concat.tot.len51

str_overflow_abort47:                             ; preds = %str_ok38
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len46

concat.tot.len51:                                 ; preds = %str_overflow_abort52, %concat.sum.len46
  %arena.cur53 = call ptr @dva_arena_current()
  %concat.buf54 = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 %sum49)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf54, ptr align 1 %concat.lhs32, i64 %concat.lhs23, i1 false)
  %concat.mid55 = getelementptr i8, ptr %concat.buf54, i64 %concat.lhs23
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid55, ptr align 1 %concat.rhs42, i64 %concat.rhs34, i1 false)
  %concat.nul56 = getelementptr i8, ptr %concat.buf54, i64 %sum44
  store i8 0, ptr %concat.nul56, align 1
  %arena.cur57 = call ptr @dva_arena_current()
  %concat.str58 = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 16)
  %str.build.len.gep59 = getelementptr inbounds { i64, ptr }, ptr %concat.str58, i32 0, i32 0
  store i64 %sum44, ptr %str.build.len.gep59, align 8
  %str.build.data.gep60 = getelementptr inbounds { i64, ptr }, ptr %concat.str58, i32 0, i32 1
  store ptr %concat.buf54, ptr %str.build.data.gep60, align 8
  %var.load61 = load ptr, ptr %var.label, align 8
  %concat.lhs62 = getelementptr inbounds { i64, ptr }, ptr %concat.str58, i32 0, i32 0
  %concat.lhs63 = load i64, ptr %concat.lhs62, align 8
  %concat.lhs64 = and i64 %concat.lhs63, 281474976710655
  %str.tag65 = lshr i64 %concat.lhs63, 48
  %str.immortal66 = icmp eq i64 %str.tag65, 0
  br i1 %str.immortal66, label %str_ok68, label %str_gen_check67

str_overflow_abort52:                             ; preds = %concat.sum.len46
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len51

str_gen_check67:                                  ; preds = %concat.tot.len51
  %arena.cur70 = call ptr @dva_arena_current()
  %tag.valid71 = call i1 @dva_arena_validate_tag(ptr %arena.cur70, i64 %str.tag65)
  br i1 %tag.valid71, label %str_ok68, label %str_stale69

str_ok68:                                         ; preds = %str_stale69, %str_gen_check67, %concat.tot.len51
  %concat.lhs72 = getelementptr inbounds { i64, ptr }, ptr %concat.str58, i32 0, i32 1
  %concat.lhs73 = load ptr, ptr %concat.lhs72, align 8
  %concat.rhs74 = getelementptr inbounds { i64, ptr }, ptr %var.load61, i32 0, i32 0
  %concat.rhs75 = load i64, ptr %concat.rhs74, align 8
  %concat.rhs76 = and i64 %concat.rhs75, 281474976710655
  %str.tag77 = lshr i64 %concat.rhs75, 48
  %str.immortal78 = icmp eq i64 %str.tag77, 0
  br i1 %str.immortal78, label %str_ok80, label %str_gen_check79

str_stale69:                                      ; preds = %str_gen_check67
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok68

str_gen_check79:                                  ; preds = %str_ok68
  %arena.cur82 = call ptr @dva_arena_current()
  %tag.valid83 = call i1 @dva_arena_validate_tag(ptr %arena.cur82, i64 %str.tag77)
  br i1 %tag.valid83, label %str_ok80, label %str_stale81

str_ok80:                                         ; preds = %str_stale81, %str_gen_check79, %str_ok68
  %concat.rhs84 = getelementptr inbounds { i64, ptr }, ptr %var.load61, i32 0, i32 1
  %concat.rhs85 = load ptr, ptr %concat.rhs84, align 8
  %concat.sum.len86 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs64, i64 %concat.rhs76)
  %sum87 = extractvalue { i64, i1 } %concat.sum.len86, 0
  %ovf88 = extractvalue { i64, i1 } %concat.sum.len86, 1
  br i1 %ovf88, label %str_overflow_abort90, label %concat.sum.len89

str_stale81:                                      ; preds = %str_gen_check79
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok80

concat.sum.len89:                                 ; preds = %str_overflow_abort90, %str_ok80
  %concat.tot.len91 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum87, i64 1)
  %sum92 = extractvalue { i64, i1 } %concat.tot.len91, 0
  %ovf93 = extractvalue { i64, i1 } %concat.tot.len91, 1
  br i1 %ovf93, label %str_overflow_abort95, label %concat.tot.len94

str_overflow_abort90:                             ; preds = %str_ok80
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len89

concat.tot.len94:                                 ; preds = %str_overflow_abort95, %concat.sum.len89
  %arena.cur96 = call ptr @dva_arena_current()
  %concat.buf97 = call ptr @dva_arena_alloc(ptr %arena.cur96, i64 %sum92)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf97, ptr align 1 %concat.lhs73, i64 %concat.lhs64, i1 false)
  %concat.mid98 = getelementptr i8, ptr %concat.buf97, i64 %concat.lhs64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid98, ptr align 1 %concat.rhs85, i64 %concat.rhs76, i1 false)
  %concat.nul99 = getelementptr i8, ptr %concat.buf97, i64 %sum87
  store i8 0, ptr %concat.nul99, align 1
  %arena.cur100 = call ptr @dva_arena_current()
  %concat.str101 = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 16)
  %str.build.len.gep102 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 0
  store i64 %sum87, ptr %str.build.len.gep102, align 8
  %str.build.data.gep103 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 1
  store ptr %concat.buf97, ptr %str.build.data.gep103, align 8
  %concat.lhs104 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 0
  %concat.lhs105 = load i64, ptr %concat.lhs104, align 8
  %concat.lhs106 = and i64 %concat.lhs105, 281474976710655
  %str.tag107 = lshr i64 %concat.lhs105, 48
  %str.immortal108 = icmp eq i64 %str.tag107, 0
  br i1 %str.immortal108, label %str_ok110, label %str_gen_check109

str_overflow_abort95:                             ; preds = %concat.sum.len89
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len94

str_gen_check109:                                 ; preds = %concat.tot.len94
  %arena.cur112 = call ptr @dva_arena_current()
  %tag.valid113 = call i1 @dva_arena_validate_tag(ptr %arena.cur112, i64 %str.tag107)
  br i1 %tag.valid113, label %str_ok110, label %str_stale111

str_ok110:                                        ; preds = %str_stale111, %str_gen_check109, %concat.tot.len94
  %concat.lhs114 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 1
  %concat.lhs115 = load ptr, ptr %concat.lhs114, align 8
  %concat.rhs116 = load i64, ptr @str.40.struct, align 8
  %concat.rhs117 = and i64 %concat.rhs116, 281474976710655
  %str.tag118 = lshr i64 %concat.rhs116, 48
  %str.immortal119 = icmp eq i64 %str.tag118, 0
  br i1 %str.immortal119, label %str_ok121, label %str_gen_check120

str_stale111:                                     ; preds = %str_gen_check109
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok110

str_gen_check120:                                 ; preds = %str_ok110
  %arena.cur123 = call ptr @dva_arena_current()
  %tag.valid124 = call i1 @dva_arena_validate_tag(ptr %arena.cur123, i64 %str.tag118)
  br i1 %tag.valid124, label %str_ok121, label %str_stale122

str_ok121:                                        ; preds = %str_stale122, %str_gen_check120, %str_ok110
  %concat.rhs125 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.40.struct, i32 0, i32 1), align 8
  %concat.sum.len126 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs106, i64 %concat.rhs117)
  %sum127 = extractvalue { i64, i1 } %concat.sum.len126, 0
  %ovf128 = extractvalue { i64, i1 } %concat.sum.len126, 1
  br i1 %ovf128, label %str_overflow_abort130, label %concat.sum.len129

str_stale122:                                     ; preds = %str_gen_check120
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok121

concat.sum.len129:                                ; preds = %str_overflow_abort130, %str_ok121
  %concat.tot.len131 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum127, i64 1)
  %sum132 = extractvalue { i64, i1 } %concat.tot.len131, 0
  %ovf133 = extractvalue { i64, i1 } %concat.tot.len131, 1
  br i1 %ovf133, label %str_overflow_abort135, label %concat.tot.len134

str_overflow_abort130:                            ; preds = %str_ok121
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len129

concat.tot.len134:                                ; preds = %str_overflow_abort135, %concat.sum.len129
  %arena.cur136 = call ptr @dva_arena_current()
  %concat.buf137 = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 %sum132)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf137, ptr align 1 %concat.lhs115, i64 %concat.lhs106, i1 false)
  %concat.mid138 = getelementptr i8, ptr %concat.buf137, i64 %concat.lhs106
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid138, ptr align 1 %concat.rhs125, i64 %concat.rhs117, i1 false)
  %concat.nul139 = getelementptr i8, ptr %concat.buf137, i64 %sum127
  store i8 0, ptr %concat.nul139, align 1
  %arena.cur140 = call ptr @dva_arena_current()
  %concat.str141 = call ptr @dva_arena_alloc(ptr %arena.cur140, i64 16)
  %str.build.len.gep142 = getelementptr inbounds { i64, ptr }, ptr %concat.str141, i32 0, i32 0
  store i64 %sum127, ptr %str.build.len.gep142, align 8
  %str.build.data.gep143 = getelementptr inbounds { i64, ptr }, ptr %concat.str141, i32 0, i32 1
  store ptr %concat.buf137, ptr %str.build.data.gep143, align 8
  %var.load144 = load ptr, ptr %var.expected, align 8
  %concat.lhs145 = getelementptr inbounds { i64, ptr }, ptr %concat.str141, i32 0, i32 0
  %concat.lhs146 = load i64, ptr %concat.lhs145, align 8
  %concat.lhs147 = and i64 %concat.lhs146, 281474976710655
  %str.tag148 = lshr i64 %concat.lhs146, 48
  %str.immortal149 = icmp eq i64 %str.tag148, 0
  br i1 %str.immortal149, label %str_ok151, label %str_gen_check150

str_overflow_abort135:                            ; preds = %concat.sum.len129
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len134

str_gen_check150:                                 ; preds = %concat.tot.len134
  %arena.cur153 = call ptr @dva_arena_current()
  %tag.valid154 = call i1 @dva_arena_validate_tag(ptr %arena.cur153, i64 %str.tag148)
  br i1 %tag.valid154, label %str_ok151, label %str_stale152

str_ok151:                                        ; preds = %str_stale152, %str_gen_check150, %concat.tot.len134
  %concat.lhs155 = getelementptr inbounds { i64, ptr }, ptr %concat.str141, i32 0, i32 1
  %concat.lhs156 = load ptr, ptr %concat.lhs155, align 8
  %concat.rhs157 = getelementptr inbounds { i64, ptr }, ptr %var.load144, i32 0, i32 0
  %concat.rhs158 = load i64, ptr %concat.rhs157, align 8
  %concat.rhs159 = and i64 %concat.rhs158, 281474976710655
  %str.tag160 = lshr i64 %concat.rhs158, 48
  %str.immortal161 = icmp eq i64 %str.tag160, 0
  br i1 %str.immortal161, label %str_ok163, label %str_gen_check162

str_stale152:                                     ; preds = %str_gen_check150
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok151

str_gen_check162:                                 ; preds = %str_ok151
  %arena.cur165 = call ptr @dva_arena_current()
  %tag.valid166 = call i1 @dva_arena_validate_tag(ptr %arena.cur165, i64 %str.tag160)
  br i1 %tag.valid166, label %str_ok163, label %str_stale164

str_ok163:                                        ; preds = %str_stale164, %str_gen_check162, %str_ok151
  %concat.rhs167 = getelementptr inbounds { i64, ptr }, ptr %var.load144, i32 0, i32 1
  %concat.rhs168 = load ptr, ptr %concat.rhs167, align 8
  %concat.sum.len169 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs147, i64 %concat.rhs159)
  %sum170 = extractvalue { i64, i1 } %concat.sum.len169, 0
  %ovf171 = extractvalue { i64, i1 } %concat.sum.len169, 1
  br i1 %ovf171, label %str_overflow_abort173, label %concat.sum.len172

str_stale164:                                     ; preds = %str_gen_check162
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok163

concat.sum.len172:                                ; preds = %str_overflow_abort173, %str_ok163
  %concat.tot.len174 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum170, i64 1)
  %sum175 = extractvalue { i64, i1 } %concat.tot.len174, 0
  %ovf176 = extractvalue { i64, i1 } %concat.tot.len174, 1
  br i1 %ovf176, label %str_overflow_abort178, label %concat.tot.len177

str_overflow_abort173:                            ; preds = %str_ok163
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len172

concat.tot.len177:                                ; preds = %str_overflow_abort178, %concat.sum.len172
  %arena.cur179 = call ptr @dva_arena_current()
  %concat.buf180 = call ptr @dva_arena_alloc(ptr %arena.cur179, i64 %sum175)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf180, ptr align 1 %concat.lhs156, i64 %concat.lhs147, i1 false)
  %concat.mid181 = getelementptr i8, ptr %concat.buf180, i64 %concat.lhs147
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid181, ptr align 1 %concat.rhs168, i64 %concat.rhs159, i1 false)
  %concat.nul182 = getelementptr i8, ptr %concat.buf180, i64 %sum170
  store i8 0, ptr %concat.nul182, align 1
  %arena.cur183 = call ptr @dva_arena_current()
  %concat.str184 = call ptr @dva_arena_alloc(ptr %arena.cur183, i64 16)
  %str.build.len.gep185 = getelementptr inbounds { i64, ptr }, ptr %concat.str184, i32 0, i32 0
  store i64 %sum170, ptr %str.build.len.gep185, align 8
  %str.build.data.gep186 = getelementptr inbounds { i64, ptr }, ptr %concat.str184, i32 0, i32 1
  store ptr %concat.buf180, ptr %str.build.data.gep186, align 8
  %concat.lhs187 = getelementptr inbounds { i64, ptr }, ptr %concat.str184, i32 0, i32 0
  %concat.lhs188 = load i64, ptr %concat.lhs187, align 8
  %concat.lhs189 = and i64 %concat.lhs188, 281474976710655
  %str.tag190 = lshr i64 %concat.lhs188, 48
  %str.immortal191 = icmp eq i64 %str.tag190, 0
  br i1 %str.immortal191, label %str_ok193, label %str_gen_check192

str_overflow_abort178:                            ; preds = %concat.sum.len172
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len177

str_gen_check192:                                 ; preds = %concat.tot.len177
  %arena.cur195 = call ptr @dva_arena_current()
  %tag.valid196 = call i1 @dva_arena_validate_tag(ptr %arena.cur195, i64 %str.tag190)
  br i1 %tag.valid196, label %str_ok193, label %str_stale194

str_ok193:                                        ; preds = %str_stale194, %str_gen_check192, %concat.tot.len177
  %concat.lhs197 = getelementptr inbounds { i64, ptr }, ptr %concat.str184, i32 0, i32 1
  %concat.lhs198 = load ptr, ptr %concat.lhs197, align 8
  %concat.rhs199 = load i64, ptr @str.41.struct, align 8
  %concat.rhs200 = and i64 %concat.rhs199, 281474976710655
  %str.tag201 = lshr i64 %concat.rhs199, 48
  %str.immortal202 = icmp eq i64 %str.tag201, 0
  br i1 %str.immortal202, label %str_ok204, label %str_gen_check203

str_stale194:                                     ; preds = %str_gen_check192
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok193

str_gen_check203:                                 ; preds = %str_ok193
  %arena.cur206 = call ptr @dva_arena_current()
  %tag.valid207 = call i1 @dva_arena_validate_tag(ptr %arena.cur206, i64 %str.tag201)
  br i1 %tag.valid207, label %str_ok204, label %str_stale205

str_ok204:                                        ; preds = %str_stale205, %str_gen_check203, %str_ok193
  %concat.rhs208 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.41.struct, i32 0, i32 1), align 8
  %concat.sum.len209 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs189, i64 %concat.rhs200)
  %sum210 = extractvalue { i64, i1 } %concat.sum.len209, 0
  %ovf211 = extractvalue { i64, i1 } %concat.sum.len209, 1
  br i1 %ovf211, label %str_overflow_abort213, label %concat.sum.len212

str_stale205:                                     ; preds = %str_gen_check203
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok204

concat.sum.len212:                                ; preds = %str_overflow_abort213, %str_ok204
  %concat.tot.len214 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum210, i64 1)
  %sum215 = extractvalue { i64, i1 } %concat.tot.len214, 0
  %ovf216 = extractvalue { i64, i1 } %concat.tot.len214, 1
  br i1 %ovf216, label %str_overflow_abort218, label %concat.tot.len217

str_overflow_abort213:                            ; preds = %str_ok204
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len212

concat.tot.len217:                                ; preds = %str_overflow_abort218, %concat.sum.len212
  %arena.cur219 = call ptr @dva_arena_current()
  %concat.buf220 = call ptr @dva_arena_alloc(ptr %arena.cur219, i64 %sum215)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf220, ptr align 1 %concat.lhs198, i64 %concat.lhs189, i1 false)
  %concat.mid221 = getelementptr i8, ptr %concat.buf220, i64 %concat.lhs189
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid221, ptr align 1 %concat.rhs208, i64 %concat.rhs200, i1 false)
  %concat.nul222 = getelementptr i8, ptr %concat.buf220, i64 %sum210
  store i8 0, ptr %concat.nul222, align 1
  %arena.cur223 = call ptr @dva_arena_current()
  %concat.str224 = call ptr @dva_arena_alloc(ptr %arena.cur223, i64 16)
  %str.build.len.gep225 = getelementptr inbounds { i64, ptr }, ptr %concat.str224, i32 0, i32 0
  store i64 %sum210, ptr %str.build.len.gep225, align 8
  %str.build.data.gep226 = getelementptr inbounds { i64, ptr }, ptr %concat.str224, i32 0, i32 1
  store ptr %concat.buf220, ptr %str.build.data.gep226, align 8
  %var.load227 = load ptr, ptr %var.got, align 8
  %concat.lhs228 = getelementptr inbounds { i64, ptr }, ptr %concat.str224, i32 0, i32 0
  %concat.lhs229 = load i64, ptr %concat.lhs228, align 8
  %concat.lhs230 = and i64 %concat.lhs229, 281474976710655
  %str.tag231 = lshr i64 %concat.lhs229, 48
  %str.immortal232 = icmp eq i64 %str.tag231, 0
  br i1 %str.immortal232, label %str_ok234, label %str_gen_check233

str_overflow_abort218:                            ; preds = %concat.sum.len212
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len217

str_gen_check233:                                 ; preds = %concat.tot.len217
  %arena.cur236 = call ptr @dva_arena_current()
  %tag.valid237 = call i1 @dva_arena_validate_tag(ptr %arena.cur236, i64 %str.tag231)
  br i1 %tag.valid237, label %str_ok234, label %str_stale235

str_ok234:                                        ; preds = %str_stale235, %str_gen_check233, %concat.tot.len217
  %concat.lhs238 = getelementptr inbounds { i64, ptr }, ptr %concat.str224, i32 0, i32 1
  %concat.lhs239 = load ptr, ptr %concat.lhs238, align 8
  %concat.rhs240 = getelementptr inbounds { i64, ptr }, ptr %var.load227, i32 0, i32 0
  %concat.rhs241 = load i64, ptr %concat.rhs240, align 8
  %concat.rhs242 = and i64 %concat.rhs241, 281474976710655
  %str.tag243 = lshr i64 %concat.rhs241, 48
  %str.immortal244 = icmp eq i64 %str.tag243, 0
  br i1 %str.immortal244, label %str_ok246, label %str_gen_check245

str_stale235:                                     ; preds = %str_gen_check233
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok234

str_gen_check245:                                 ; preds = %str_ok234
  %arena.cur248 = call ptr @dva_arena_current()
  %tag.valid249 = call i1 @dva_arena_validate_tag(ptr %arena.cur248, i64 %str.tag243)
  br i1 %tag.valid249, label %str_ok246, label %str_stale247

str_ok246:                                        ; preds = %str_stale247, %str_gen_check245, %str_ok234
  %concat.rhs250 = getelementptr inbounds { i64, ptr }, ptr %var.load227, i32 0, i32 1
  %concat.rhs251 = load ptr, ptr %concat.rhs250, align 8
  %concat.sum.len252 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs230, i64 %concat.rhs242)
  %sum253 = extractvalue { i64, i1 } %concat.sum.len252, 0
  %ovf254 = extractvalue { i64, i1 } %concat.sum.len252, 1
  br i1 %ovf254, label %str_overflow_abort256, label %concat.sum.len255

str_stale247:                                     ; preds = %str_gen_check245
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok246

concat.sum.len255:                                ; preds = %str_overflow_abort256, %str_ok246
  %concat.tot.len257 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum253, i64 1)
  %sum258 = extractvalue { i64, i1 } %concat.tot.len257, 0
  %ovf259 = extractvalue { i64, i1 } %concat.tot.len257, 1
  br i1 %ovf259, label %str_overflow_abort261, label %concat.tot.len260

str_overflow_abort256:                            ; preds = %str_ok246
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len255

concat.tot.len260:                                ; preds = %str_overflow_abort261, %concat.sum.len255
  %arena.cur262 = call ptr @dva_arena_current()
  %concat.buf263 = call ptr @dva_arena_alloc(ptr %arena.cur262, i64 %sum258)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf263, ptr align 1 %concat.lhs239, i64 %concat.lhs230, i1 false)
  %concat.mid264 = getelementptr i8, ptr %concat.buf263, i64 %concat.lhs230
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid264, ptr align 1 %concat.rhs251, i64 %concat.rhs242, i1 false)
  %concat.nul265 = getelementptr i8, ptr %concat.buf263, i64 %sum253
  store i8 0, ptr %concat.nul265, align 1
  %arena.cur266 = call ptr @dva_arena_current()
  %concat.str267 = call ptr @dva_arena_alloc(ptr %arena.cur266, i64 16)
  %str.build.len.gep268 = getelementptr inbounds { i64, ptr }, ptr %concat.str267, i32 0, i32 0
  store i64 %sum253, ptr %str.build.len.gep268, align 8
  %str.build.data.gep269 = getelementptr inbounds { i64, ptr }, ptr %concat.str267, i32 0, i32 1
  store ptr %concat.buf263, ptr %str.build.data.gep269, align 8
  %concat.lhs270 = getelementptr inbounds { i64, ptr }, ptr %concat.str267, i32 0, i32 0
  %concat.lhs271 = load i64, ptr %concat.lhs270, align 8
  %concat.lhs272 = and i64 %concat.lhs271, 281474976710655
  %str.tag273 = lshr i64 %concat.lhs271, 48
  %str.immortal274 = icmp eq i64 %str.tag273, 0
  br i1 %str.immortal274, label %str_ok276, label %str_gen_check275

str_overflow_abort261:                            ; preds = %concat.sum.len255
  %31 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len260

str_gen_check275:                                 ; preds = %concat.tot.len260
  %arena.cur278 = call ptr @dva_arena_current()
  %tag.valid279 = call i1 @dva_arena_validate_tag(ptr %arena.cur278, i64 %str.tag273)
  br i1 %tag.valid279, label %str_ok276, label %str_stale277

str_ok276:                                        ; preds = %str_stale277, %str_gen_check275, %concat.tot.len260
  %concat.lhs280 = getelementptr inbounds { i64, ptr }, ptr %concat.str267, i32 0, i32 1
  %concat.lhs281 = load ptr, ptr %concat.lhs280, align 8
  %concat.rhs282 = load i64, ptr @str.42.struct, align 8
  %concat.rhs283 = and i64 %concat.rhs282, 281474976710655
  %str.tag284 = lshr i64 %concat.rhs282, 48
  %str.immortal285 = icmp eq i64 %str.tag284, 0
  br i1 %str.immortal285, label %str_ok287, label %str_gen_check286

str_stale277:                                     ; preds = %str_gen_check275
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok276

str_gen_check286:                                 ; preds = %str_ok276
  %arena.cur289 = call ptr @dva_arena_current()
  %tag.valid290 = call i1 @dva_arena_validate_tag(ptr %arena.cur289, i64 %str.tag284)
  br i1 %tag.valid290, label %str_ok287, label %str_stale288

str_ok287:                                        ; preds = %str_stale288, %str_gen_check286, %str_ok276
  %concat.rhs291 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.42.struct, i32 0, i32 1), align 8
  %concat.sum.len292 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs272, i64 %concat.rhs283)
  %sum293 = extractvalue { i64, i1 } %concat.sum.len292, 0
  %ovf294 = extractvalue { i64, i1 } %concat.sum.len292, 1
  br i1 %ovf294, label %str_overflow_abort296, label %concat.sum.len295

str_stale288:                                     ; preds = %str_gen_check286
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok287

concat.sum.len295:                                ; preds = %str_overflow_abort296, %str_ok287
  %concat.tot.len297 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum293, i64 1)
  %sum298 = extractvalue { i64, i1 } %concat.tot.len297, 0
  %ovf299 = extractvalue { i64, i1 } %concat.tot.len297, 1
  br i1 %ovf299, label %str_overflow_abort301, label %concat.tot.len300

str_overflow_abort296:                            ; preds = %str_ok287
  %34 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len295

concat.tot.len300:                                ; preds = %str_overflow_abort301, %concat.sum.len295
  %arena.cur302 = call ptr @dva_arena_current()
  %concat.buf303 = call ptr @dva_arena_alloc(ptr %arena.cur302, i64 %sum298)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf303, ptr align 1 %concat.lhs281, i64 %concat.lhs272, i1 false)
  %concat.mid304 = getelementptr i8, ptr %concat.buf303, i64 %concat.lhs272
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid304, ptr align 1 %concat.rhs291, i64 %concat.rhs283, i1 false)
  %concat.nul305 = getelementptr i8, ptr %concat.buf303, i64 %sum293
  store i8 0, ptr %concat.nul305, align 1
  %arena.cur306 = call ptr @dva_arena_current()
  %concat.str307 = call ptr @dva_arena_alloc(ptr %arena.cur306, i64 16)
  %str.build.len.gep308 = getelementptr inbounds { i64, ptr }, ptr %concat.str307, i32 0, i32 0
  store i64 %sum293, ptr %str.build.len.gep308, align 8
  %str.build.data.gep309 = getelementptr inbounds { i64, ptr }, ptr %concat.str307, i32 0, i32 1
  store ptr %concat.buf303, ptr %str.build.data.gep309, align 8
  ret ptr %concat.str307

str_overflow_abort301:                            ; preds = %concat.sum.len295
  %35 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len300
}

define ptr @"diag::partial_composite_argument"(ptr %0) #1 {
entry:
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %concat.lhs = load i64, ptr @str.43.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.43.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.rhs3 = load i64, ptr %concat.rhs, align 8
  %concat.rhs4 = and i64 %concat.rhs3, 281474976710655
  %str.tag5 = lshr i64 %concat.rhs3, 48
  %str.immortal6 = icmp eq i64 %str.tag5, 0
  br i1 %str.immortal6, label %str_ok8, label %str_gen_check7

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check7:                                   ; preds = %str_ok
  %arena.cur10 = call ptr @dva_arena_current()
  %tag.valid11 = call i1 @dva_arena_validate_tag(ptr %arena.cur10, i64 %str.tag5)
  br i1 %tag.valid11, label %str_ok8, label %str_stale9

str_ok8:                                          ; preds = %str_stale9, %str_gen_check7, %str_ok
  %concat.rhs12 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.rhs13 = load ptr, ptr %concat.rhs12, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs4)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len14

str_stale9:                                       ; preds = %str_gen_check7
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok8

concat.sum.len14:                                 ; preds = %str_overflow_abort, %str_ok8
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum15 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf16 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf16, label %str_overflow_abort18, label %concat.tot.len17

str_overflow_abort:                               ; preds = %str_ok8
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len14

concat.tot.len17:                                 ; preds = %str_overflow_abort18, %concat.sum.len14
  %arena.cur19 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 %sum15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs13, i64 %concat.rhs4, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur20 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs21 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs22 = load i64, ptr %concat.lhs21, align 8
  %concat.lhs23 = and i64 %concat.lhs22, 281474976710655
  %str.tag24 = lshr i64 %concat.lhs22, 48
  %str.immortal25 = icmp eq i64 %str.tag24, 0
  br i1 %str.immortal25, label %str_ok27, label %str_gen_check26

str_overflow_abort18:                             ; preds = %concat.sum.len14
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len17

str_gen_check26:                                  ; preds = %concat.tot.len17
  %arena.cur29 = call ptr @dva_arena_current()
  %tag.valid30 = call i1 @dva_arena_validate_tag(ptr %arena.cur29, i64 %str.tag24)
  br i1 %tag.valid30, label %str_ok27, label %str_stale28

str_ok27:                                         ; preds = %str_stale28, %str_gen_check26, %concat.tot.len17
  %concat.lhs31 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs32 = load ptr, ptr %concat.lhs31, align 8
  %concat.rhs33 = load i64, ptr @str.44.struct, align 8
  %concat.rhs34 = and i64 %concat.rhs33, 281474976710655
  %str.tag35 = lshr i64 %concat.rhs33, 48
  %str.immortal36 = icmp eq i64 %str.tag35, 0
  br i1 %str.immortal36, label %str_ok38, label %str_gen_check37

str_stale28:                                      ; preds = %str_gen_check26
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok27

str_gen_check37:                                  ; preds = %str_ok27
  %arena.cur40 = call ptr @dva_arena_current()
  %tag.valid41 = call i1 @dva_arena_validate_tag(ptr %arena.cur40, i64 %str.tag35)
  br i1 %tag.valid41, label %str_ok38, label %str_stale39

str_ok38:                                         ; preds = %str_stale39, %str_gen_check37, %str_ok27
  %concat.rhs42 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.44.struct, i32 0, i32 1), align 8
  %concat.sum.len43 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs23, i64 %concat.rhs34)
  %sum44 = extractvalue { i64, i1 } %concat.sum.len43, 0
  %ovf45 = extractvalue { i64, i1 } %concat.sum.len43, 1
  br i1 %ovf45, label %str_overflow_abort47, label %concat.sum.len46

str_stale39:                                      ; preds = %str_gen_check37
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok38

concat.sum.len46:                                 ; preds = %str_overflow_abort47, %str_ok38
  %concat.tot.len48 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum44, i64 1)
  %sum49 = extractvalue { i64, i1 } %concat.tot.len48, 0
  %ovf50 = extractvalue { i64, i1 } %concat.tot.len48, 1
  br i1 %ovf50, label %str_overflow_abort52, label %concat.tot.len51

str_overflow_abort47:                             ; preds = %str_ok38
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len46

concat.tot.len51:                                 ; preds = %str_overflow_abort52, %concat.sum.len46
  %arena.cur53 = call ptr @dva_arena_current()
  %concat.buf54 = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 %sum49)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf54, ptr align 1 %concat.lhs32, i64 %concat.lhs23, i1 false)
  %concat.mid55 = getelementptr i8, ptr %concat.buf54, i64 %concat.lhs23
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid55, ptr align 1 %concat.rhs42, i64 %concat.rhs34, i1 false)
  %concat.nul56 = getelementptr i8, ptr %concat.buf54, i64 %sum44
  store i8 0, ptr %concat.nul56, align 1
  %arena.cur57 = call ptr @dva_arena_current()
  %concat.str58 = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 16)
  %str.build.len.gep59 = getelementptr inbounds { i64, ptr }, ptr %concat.str58, i32 0, i32 0
  store i64 %sum44, ptr %str.build.len.gep59, align 8
  %str.build.data.gep60 = getelementptr inbounds { i64, ptr }, ptr %concat.str58, i32 0, i32 1
  store ptr %concat.buf54, ptr %str.build.data.gep60, align 8
  ret ptr %concat.str58

str_overflow_abort52:                             ; preds = %concat.sum.len46
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len51
}

define ptr @"diag::E3051_dynamic_index_hetero"() #1 {
entry:
  ret ptr @str.45.struct
}

define ptr @"diag::E3051_cycle_iter_hetero"() #1 {
entry:
  ret ptr @str.46.struct
}

define ptr @"diag::E3065_rawptr_to_string"() #1 {
entry:
  %concat.lhs = load i64, ptr @str.47.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.47.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.48.struct, align 8
  %concat.rhs3 = and i64 %concat.rhs, 281474976710655
  %str.tag4 = lshr i64 %concat.rhs, 48
  %str.immortal5 = icmp eq i64 %str.tag4, 0
  br i1 %str.immortal5, label %str_ok7, label %str_gen_check6

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check6:                                   ; preds = %str_ok
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid10 = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag4)
  br i1 %tag.valid10, label %str_ok7, label %str_stale8

str_ok7:                                          ; preds = %str_stale8, %str_gen_check6, %str_ok
  %concat.rhs11 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.48.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs3)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len12

str_stale8:                                       ; preds = %str_gen_check6
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok7

concat.sum.len12:                                 ; preds = %str_overflow_abort, %str_ok7
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum13 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf14 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf14, label %str_overflow_abort16, label %concat.tot.len15

str_overflow_abort:                               ; preds = %str_ok7
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len12

concat.tot.len15:                                 ; preds = %str_overflow_abort16, %concat.sum.len12
  %arena.cur17 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 %sum13)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs11, i64 %concat.rhs3, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur18 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  ret ptr %concat.str

str_overflow_abort16:                             ; preds = %concat.sum.len12
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len15
}

define ptr @"diag::E3078_addr_builder_or_string"() #1 {
entry:
  ret ptr @str.49.struct
}

define ptr @"diag::E3084_record_size_mismatch"() #1 {
entry:
  ret ptr @str.50.struct
}

define ptr @"diag::E3084_arithmetic_type_mismatch"() #1 {
entry:
  ret ptr @str.51.struct
}

define ptr @"diag::E3084_builder_append_type"() #1 {
entry:
  ret ptr @str.52.struct
}

define ptr @"diag::E3084_choice_branch_mismatch"() #1 {
entry:
  ret ptr @str.53.struct
}

define ptr @"diag::E3091_propagate_ram_operand"() #1 {
entry:
  ret ptr @str.54.struct
}

define ptr @"diag::E3103_cannot_infer_type"() #1 {
entry:
  ret ptr @str.55.struct
}

define ptr @"diag::E3133_addr_escape_restore"() #1 {
entry:
  %concat.lhs = load i64, ptr @str.56.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.56.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.57.struct, align 8
  %concat.rhs3 = and i64 %concat.rhs, 281474976710655
  %str.tag4 = lshr i64 %concat.rhs, 48
  %str.immortal5 = icmp eq i64 %str.tag4, 0
  br i1 %str.immortal5, label %str_ok7, label %str_gen_check6

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check6:                                   ; preds = %str_ok
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid10 = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag4)
  br i1 %tag.valid10, label %str_ok7, label %str_stale8

str_ok7:                                          ; preds = %str_stale8, %str_gen_check6, %str_ok
  %concat.rhs11 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.57.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs3)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len12

str_stale8:                                       ; preds = %str_gen_check6
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok7

concat.sum.len12:                                 ; preds = %str_overflow_abort, %str_ok7
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum13 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf14 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf14, label %str_overflow_abort16, label %concat.tot.len15

str_overflow_abort:                               ; preds = %str_ok7
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len12

concat.tot.len15:                                 ; preds = %str_overflow_abort16, %concat.sum.len12
  %arena.cur17 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 %sum13)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs11, i64 %concat.rhs3, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur18 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  ret ptr %concat.str

str_overflow_abort16:                             ; preds = %concat.sum.len12
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len15
}

define ptr @"diag::E3134_addr_escape_lifecycle"() #1 {
entry:
  ret ptr @str.58.struct
}

define ptr @"diag::E3136_type_choice_no_branch"() #1 {
entry:
  ret ptr @str.59.struct
}

define ptr @"diag::E3140_no_runtime_arena"() #1 {
entry:
  %concat.lhs = load i64, ptr @str.60.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.60.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.61.struct, align 8
  %concat.rhs3 = and i64 %concat.rhs, 281474976710655
  %str.tag4 = lshr i64 %concat.rhs, 48
  %str.immortal5 = icmp eq i64 %str.tag4, 0
  br i1 %str.immortal5, label %str_ok7, label %str_gen_check6

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check6:                                   ; preds = %str_ok
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid10 = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag4)
  br i1 %tag.valid10, label %str_ok7, label %str_stale8

str_ok7:                                          ; preds = %str_stale8, %str_gen_check6, %str_ok
  %concat.rhs11 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.61.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs3)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len12

str_stale8:                                       ; preds = %str_gen_check6
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok7

concat.sum.len12:                                 ; preds = %str_overflow_abort, %str_ok7
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum13 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf14 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf14, label %str_overflow_abort16, label %concat.tot.len15

str_overflow_abort:                               ; preds = %str_ok7
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len12

concat.tot.len15:                                 ; preds = %str_overflow_abort16, %concat.sum.len12
  %arena.cur17 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 %sum13)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs11, i64 %concat.rhs3, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur18 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs19 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs20 = load i64, ptr %concat.lhs19, align 8
  %concat.lhs21 = and i64 %concat.lhs20, 281474976710655
  %str.tag22 = lshr i64 %concat.lhs20, 48
  %str.immortal23 = icmp eq i64 %str.tag22, 0
  br i1 %str.immortal23, label %str_ok25, label %str_gen_check24

str_overflow_abort16:                             ; preds = %concat.sum.len12
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len15

str_gen_check24:                                  ; preds = %concat.tot.len15
  %arena.cur27 = call ptr @dva_arena_current()
  %tag.valid28 = call i1 @dva_arena_validate_tag(ptr %arena.cur27, i64 %str.tag22)
  br i1 %tag.valid28, label %str_ok25, label %str_stale26

str_ok25:                                         ; preds = %str_stale26, %str_gen_check24, %concat.tot.len15
  %concat.lhs29 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs30 = load ptr, ptr %concat.lhs29, align 8
  %concat.rhs31 = load i64, ptr @str.62.struct, align 8
  %concat.rhs32 = and i64 %concat.rhs31, 281474976710655
  %str.tag33 = lshr i64 %concat.rhs31, 48
  %str.immortal34 = icmp eq i64 %str.tag33, 0
  br i1 %str.immortal34, label %str_ok36, label %str_gen_check35

str_stale26:                                      ; preds = %str_gen_check24
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok25

str_gen_check35:                                  ; preds = %str_ok25
  %arena.cur38 = call ptr @dva_arena_current()
  %tag.valid39 = call i1 @dva_arena_validate_tag(ptr %arena.cur38, i64 %str.tag33)
  br i1 %tag.valid39, label %str_ok36, label %str_stale37

str_ok36:                                         ; preds = %str_stale37, %str_gen_check35, %str_ok25
  %concat.rhs40 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.62.struct, i32 0, i32 1), align 8
  %concat.sum.len41 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs21, i64 %concat.rhs32)
  %sum42 = extractvalue { i64, i1 } %concat.sum.len41, 0
  %ovf43 = extractvalue { i64, i1 } %concat.sum.len41, 1
  br i1 %ovf43, label %str_overflow_abort45, label %concat.sum.len44

str_stale37:                                      ; preds = %str_gen_check35
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok36

concat.sum.len44:                                 ; preds = %str_overflow_abort45, %str_ok36
  %concat.tot.len46 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum42, i64 1)
  %sum47 = extractvalue { i64, i1 } %concat.tot.len46, 0
  %ovf48 = extractvalue { i64, i1 } %concat.tot.len46, 1
  br i1 %ovf48, label %str_overflow_abort50, label %concat.tot.len49

str_overflow_abort45:                             ; preds = %str_ok36
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len44

concat.tot.len49:                                 ; preds = %str_overflow_abort50, %concat.sum.len44
  %arena.cur51 = call ptr @dva_arena_current()
  %concat.buf52 = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 %sum47)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf52, ptr align 1 %concat.lhs30, i64 %concat.lhs21, i1 false)
  %concat.mid53 = getelementptr i8, ptr %concat.buf52, i64 %concat.lhs21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid53, ptr align 1 %concat.rhs40, i64 %concat.rhs32, i1 false)
  %concat.nul54 = getelementptr i8, ptr %concat.buf52, i64 %sum42
  store i8 0, ptr %concat.nul54, align 1
  %arena.cur55 = call ptr @dva_arena_current()
  %concat.str56 = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 16)
  %str.build.len.gep57 = getelementptr inbounds { i64, ptr }, ptr %concat.str56, i32 0, i32 0
  store i64 %sum42, ptr %str.build.len.gep57, align 8
  %str.build.data.gep58 = getelementptr inbounds { i64, ptr }, ptr %concat.str56, i32 0, i32 1
  store ptr %concat.buf52, ptr %str.build.data.gep58, align 8
  %concat.lhs59 = getelementptr inbounds { i64, ptr }, ptr %concat.str56, i32 0, i32 0
  %concat.lhs60 = load i64, ptr %concat.lhs59, align 8
  %concat.lhs61 = and i64 %concat.lhs60, 281474976710655
  %str.tag62 = lshr i64 %concat.lhs60, 48
  %str.immortal63 = icmp eq i64 %str.tag62, 0
  br i1 %str.immortal63, label %str_ok65, label %str_gen_check64

str_overflow_abort50:                             ; preds = %concat.sum.len44
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len49

str_gen_check64:                                  ; preds = %concat.tot.len49
  %arena.cur67 = call ptr @dva_arena_current()
  %tag.valid68 = call i1 @dva_arena_validate_tag(ptr %arena.cur67, i64 %str.tag62)
  br i1 %tag.valid68, label %str_ok65, label %str_stale66

str_ok65:                                         ; preds = %str_stale66, %str_gen_check64, %concat.tot.len49
  %concat.lhs69 = getelementptr inbounds { i64, ptr }, ptr %concat.str56, i32 0, i32 1
  %concat.lhs70 = load ptr, ptr %concat.lhs69, align 8
  %concat.rhs71 = load i64, ptr @str.63.struct, align 8
  %concat.rhs72 = and i64 %concat.rhs71, 281474976710655
  %str.tag73 = lshr i64 %concat.rhs71, 48
  %str.immortal74 = icmp eq i64 %str.tag73, 0
  br i1 %str.immortal74, label %str_ok76, label %str_gen_check75

str_stale66:                                      ; preds = %str_gen_check64
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok65

str_gen_check75:                                  ; preds = %str_ok65
  %arena.cur78 = call ptr @dva_arena_current()
  %tag.valid79 = call i1 @dva_arena_validate_tag(ptr %arena.cur78, i64 %str.tag73)
  br i1 %tag.valid79, label %str_ok76, label %str_stale77

str_ok76:                                         ; preds = %str_stale77, %str_gen_check75, %str_ok65
  %concat.rhs80 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.63.struct, i32 0, i32 1), align 8
  %concat.sum.len81 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs61, i64 %concat.rhs72)
  %sum82 = extractvalue { i64, i1 } %concat.sum.len81, 0
  %ovf83 = extractvalue { i64, i1 } %concat.sum.len81, 1
  br i1 %ovf83, label %str_overflow_abort85, label %concat.sum.len84

str_stale77:                                      ; preds = %str_gen_check75
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok76

concat.sum.len84:                                 ; preds = %str_overflow_abort85, %str_ok76
  %concat.tot.len86 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum82, i64 1)
  %sum87 = extractvalue { i64, i1 } %concat.tot.len86, 0
  %ovf88 = extractvalue { i64, i1 } %concat.tot.len86, 1
  br i1 %ovf88, label %str_overflow_abort90, label %concat.tot.len89

str_overflow_abort85:                             ; preds = %str_ok76
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len84

concat.tot.len89:                                 ; preds = %str_overflow_abort90, %concat.sum.len84
  %arena.cur91 = call ptr @dva_arena_current()
  %concat.buf92 = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 %sum87)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf92, ptr align 1 %concat.lhs70, i64 %concat.lhs61, i1 false)
  %concat.mid93 = getelementptr i8, ptr %concat.buf92, i64 %concat.lhs61
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid93, ptr align 1 %concat.rhs80, i64 %concat.rhs72, i1 false)
  %concat.nul94 = getelementptr i8, ptr %concat.buf92, i64 %sum82
  store i8 0, ptr %concat.nul94, align 1
  %arena.cur95 = call ptr @dva_arena_current()
  %concat.str96 = call ptr @dva_arena_alloc(ptr %arena.cur95, i64 16)
  %str.build.len.gep97 = getelementptr inbounds { i64, ptr }, ptr %concat.str96, i32 0, i32 0
  store i64 %sum82, ptr %str.build.len.gep97, align 8
  %str.build.data.gep98 = getelementptr inbounds { i64, ptr }, ptr %concat.str96, i32 0, i32 1
  store ptr %concat.buf92, ptr %str.build.data.gep98, align 8
  ret ptr %concat.str96

str_overflow_abort90:                             ; preds = %concat.sum.len84
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len89
}

define ptr @"diag::E3142_raw_write_type"() #1 {
entry:
  ret ptr @str.64.struct
}

define ptr @"diag::E3150_view_escape_frame"() #1 {
entry:
  ret ptr @str.65.struct
}

define ptr @"diag::E3172_exit_status_integerish"() #1 {
entry:
  ret ptr @str.66.struct
}

define ptr @"diag::E3173_return_outside_fn"() #1 {
entry:
  ret ptr @str.67.struct
}

define ptr @"diag::E3173_propagate_outside_fn"() #1 {
entry:
  ret ptr @str.68.struct
}

define ptr @"diag::E3175_choice_const_discarded"() #1 {
entry:
  ret ptr @str.69.struct
}

define ptr @"diag::uninitialized_variable_prefix"() #1 {
entry:
  ret ptr @str.70.struct
}

define ptr @"diag::E3050_reserved_type_name_suffix"() #1 {
entry:
  ret ptr @str.71.struct
}

define ptr @"diag::return_type_mismatch_prefix"() #1 {
entry:
  ret ptr @str.72.struct
}

define ptr @"diag::assignment_type_mismatch_prefix"() #1 {
entry:
  ret ptr @str.73.struct
}

define ptr @"diag::member_index_constant"() #1 {
entry:
  ret ptr @str.74.struct
}

define ptr @"diag::field_assignment_type_mismatch_prefix"() #1 {
entry:
  ret ptr @str.75.struct
}

define ptr @"diag::E3067_string_write_prefix"() #1 {
entry:
  ret ptr @str.76.struct
}

define ptr @"diag::E3067_string_write_suffix"() #1 {
entry:
  ret ptr @str.77.struct
}

define ptr @"diag::E3049_slice_write_prefix"() #1 {
entry:
  ret ptr @str.78.struct
}

define ptr @"diag::E3049_slice_write_suffix"() #1 {
entry:
  ret ptr @str.79.struct
}

define ptr @"diag::return_type_inference_prefix"() #1 {
entry:
  ret ptr @str.80.struct
}

define ptr @"diag::E3128_function_value_signature_suffix"() #1 {
entry:
  %concat.lhs = load i64, ptr @str.81.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.81.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.82.struct, align 8
  %concat.rhs3 = and i64 %concat.rhs, 281474976710655
  %str.tag4 = lshr i64 %concat.rhs, 48
  %str.immortal5 = icmp eq i64 %str.tag4, 0
  br i1 %str.immortal5, label %str_ok7, label %str_gen_check6

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check6:                                   ; preds = %str_ok
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid10 = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag4)
  br i1 %tag.valid10, label %str_ok7, label %str_stale8

str_ok7:                                          ; preds = %str_stale8, %str_gen_check6, %str_ok
  %concat.rhs11 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.82.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs3)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len12

str_stale8:                                       ; preds = %str_gen_check6
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok7

concat.sum.len12:                                 ; preds = %str_overflow_abort, %str_ok7
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum13 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf14 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf14, label %str_overflow_abort16, label %concat.tot.len15

str_overflow_abort:                               ; preds = %str_ok7
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len12

concat.tot.len15:                                 ; preds = %str_overflow_abort16, %concat.sum.len12
  %arena.cur17 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 %sum13)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs11, i64 %concat.rhs3, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur18 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  ret ptr %concat.str

str_overflow_abort16:                             ; preds = %concat.sum.len12
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len15
}

define ptr @"diag::expected_primary_prefix"() #1 {
entry:
  ret ptr @str.83.struct
}

define ptr @"diag::cycle_jump_depth_prefix"() #1 {
entry:
  ret ptr @str.84.struct
}

define ptr @"diag::record_repeat_count_prefix"() #1 {
entry:
  ret ptr @str.85.struct
}

define ptr @"diag::record_repeat_limit_suffix"() #1 {
entry:
  ret ptr @str.86.struct
}

define ptr @"diag::infix_right_binding_power_prefix"() #1 {
entry:
  ret ptr @str.87.struct
}

define ptr @"diag::infix_left_binding_power_prefix"() #1 {
entry:
  ret ptr @str.88.struct
}

define ptr @"diag::imported_symbol_conflict_suffix"() #1 {
entry:
  ret ptr @str.89.struct
}

define ptr @"diag::E3033_foreign_function_clash_prefix"() #1 {
entry:
  ret ptr @str.90.struct
}

define ptr @"diag::declared_symbol_conflict_suffix"() #1 {
entry:
  ret ptr @str.91.struct
}

define ptr @"diag::E5038_package_import_cycle_prefix"() #1 {
entry:
  ret ptr @str.92.struct
}

define ptr @"diag::clang_compilation_failed_suffix"() #1 {
entry:
  ret ptr @str.93.struct
}

define ptr @"diag::E5007_no_input"() #1 {
entry:
  ret ptr @str.94.struct
}

define ptr @"diag::E3084_open_record_fields"() #1 {
entry:
  ret ptr @str.95.struct
}

define ptr @"diag::E3089_ram_shape_prefix"() #1 {
entry:
  ret ptr @str.96.struct
}

define ptr @"diag::locked_manifest_stale_prefix"() #1 {
entry:
  ret ptr @str.97.struct
}

define ptr @"diag::repository_illegal_path_suffix"() #1 {
entry:
  ret ptr @str.98.struct
}

define ptr @"diag::vendor_tree_mismatch_prefix"() #1 {
entry:
  ret ptr @str.99.struct
}

define ptr @"diag::archive_illegal_path_suffix"() #1 {
entry:
  ret ptr @str.100.struct
}

define ptr @"diag::E3127_ram_ordering_suffix"() #1 {
entry:
  %concat.lhs = load i64, ptr @str.101.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.101.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.102.struct, align 8
  %concat.rhs3 = and i64 %concat.rhs, 281474976710655
  %str.tag4 = lshr i64 %concat.rhs, 48
  %str.immortal5 = icmp eq i64 %str.tag4, 0
  br i1 %str.immortal5, label %str_ok7, label %str_gen_check6

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check6:                                   ; preds = %str_ok
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid10 = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag4)
  br i1 %tag.valid10, label %str_ok7, label %str_stale8

str_ok7:                                          ; preds = %str_stale8, %str_gen_check6, %str_ok
  %concat.rhs11 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.102.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs3)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len12

str_stale8:                                       ; preds = %str_gen_check6
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok7

concat.sum.len12:                                 ; preds = %str_overflow_abort, %str_ok7
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum13 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf14 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf14, label %str_overflow_abort16, label %concat.tot.len15

str_overflow_abort:                               ; preds = %str_ok7
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len12

concat.tot.len15:                                 ; preds = %str_overflow_abort16, %concat.sum.len12
  %arena.cur17 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 %sum13)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs11, i64 %concat.rhs3, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur18 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  ret ptr %concat.str

str_overflow_abort16:                             ; preds = %concat.sum.len12
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len15
}

define ptr @"diag::E3127_enum_ordering_suffix"() #1 {
entry:
  %concat.lhs = load i64, ptr @str.103.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.103.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.104.struct, align 8
  %concat.rhs3 = and i64 %concat.rhs, 281474976710655
  %str.tag4 = lshr i64 %concat.rhs, 48
  %str.immortal5 = icmp eq i64 %str.tag4, 0
  br i1 %str.immortal5, label %str_ok7, label %str_gen_check6

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check6:                                   ; preds = %str_ok
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid10 = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag4)
  br i1 %tag.valid10, label %str_ok7, label %str_stale8

str_ok7:                                          ; preds = %str_stale8, %str_gen_check6, %str_ok
  %concat.rhs11 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.104.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs3)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len12

str_stale8:                                       ; preds = %str_gen_check6
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok7

concat.sum.len12:                                 ; preds = %str_overflow_abort, %str_ok7
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum13 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf14 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf14, label %str_overflow_abort16, label %concat.tot.len15

str_overflow_abort:                               ; preds = %str_ok7
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len12

concat.tot.len15:                                 ; preds = %str_overflow_abort16, %concat.sum.len12
  %arena.cur17 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 %sum13)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs11, i64 %concat.rhs3, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur18 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  ret ptr %concat.str

str_overflow_abort16:                             ; preds = %concat.sum.len12
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len15
}

define ptr @"diag::record_field_index_constant"() #1 {
entry:
  ret ptr @str.105.struct
}

define ptr @"diag::enum_variant_index_constant"() #1 {
entry:
  %concat.lhs = load i64, ptr @str.106.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.106.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.107.struct, align 8
  %concat.rhs3 = and i64 %concat.rhs, 281474976710655
  %str.tag4 = lshr i64 %concat.rhs, 48
  %str.immortal5 = icmp eq i64 %str.tag4, 0
  br i1 %str.immortal5, label %str_ok7, label %str_gen_check6

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check6:                                   ; preds = %str_ok
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid10 = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag4)
  br i1 %tag.valid10, label %str_ok7, label %str_stale8

str_ok7:                                          ; preds = %str_stale8, %str_gen_check6, %str_ok
  %concat.rhs11 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.107.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs3)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len12

str_stale8:                                       ; preds = %str_gen_check6
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok7

concat.sum.len12:                                 ; preds = %str_overflow_abort, %str_ok7
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum13 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf14 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf14, label %str_overflow_abort16, label %concat.tot.len15

str_overflow_abort:                               ; preds = %str_ok7
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len12

concat.tot.len15:                                 ; preds = %str_overflow_abort16, %concat.sum.len12
  %arena.cur17 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 %sum13)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs11, i64 %concat.rhs3, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur18 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  ret ptr %concat.str

str_overflow_abort16:                             ; preds = %concat.sum.len12
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len15
}

define ptr @"diag::E4002_string_length_overflow"() #1 {
entry:
  ret ptr @str.108.struct
}

define ptr @"diag::E3007_cycle_jump_level_prefix"() #1 {
entry:
  ret ptr @str.109.struct
}

define ptr @"diag::E3007_cycle_jump_level_suffix"() #1 {
entry:
  ret ptr @str.110.struct
}

define ptr @"diag::E4007_unwrap_empty_or_error"() #1 {
entry:
  ret ptr @str.111.struct
}

define ptr @"diag::compile_time_parameter_suffix"() #1 {
entry:
  ret ptr @str.112.struct
}

define ptr @"diag::E3105_enum_label_ambiguous_suffix"() #1 {
entry:
  ret ptr @str.113.struct
}

define ptr @"diag::E4008_builder_length_bounds"() #1 {
entry:
  ret ptr @str.114.struct
}

define ptr @"diag::runtime_error_format"() #1 {
entry:
  ret ptr @str.115.struct
}

define ptr @"diag::E4004_arena_allocation_too_large"() #1 {
entry:
  %concat.lhs = load i64, ptr @str.116.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.116.struct, i32 0, i32 1), align 8
  %concat.rhs = load i64, ptr @str.117.struct, align 8
  %concat.rhs3 = and i64 %concat.rhs, 281474976710655
  %str.tag4 = lshr i64 %concat.rhs, 48
  %str.immortal5 = icmp eq i64 %str.tag4, 0
  br i1 %str.immortal5, label %str_ok7, label %str_gen_check6

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check6:                                   ; preds = %str_ok
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid10 = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag4)
  br i1 %tag.valid10, label %str_ok7, label %str_stale8

str_ok7:                                          ; preds = %str_stale8, %str_gen_check6, %str_ok
  %concat.rhs11 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.117.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs3)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len12

str_stale8:                                       ; preds = %str_gen_check6
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok7

concat.sum.len12:                                 ; preds = %str_overflow_abort, %str_ok7
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum13 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf14 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf14, label %str_overflow_abort16, label %concat.tot.len15

str_overflow_abort:                               ; preds = %str_ok7
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len12

concat.tot.len15:                                 ; preds = %str_overflow_abort16, %concat.sum.len12
  %arena.cur17 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 %sum13)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs11, i64 %concat.rhs3, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur18 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  ret ptr %concat.str

str_overflow_abort16:                             ; preds = %concat.sum.len12
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len15
}

define ptr @"diag::E4003_arena_chunk_limit"() #1 {
entry:
  ret ptr @str.118.struct
}

define ptr @"diag::E4001_arena_exhausted"() #1 {
entry:
  ret ptr @str.119.struct
}

define ptr @"diag::E5012_write_ir_prefix"() #1 {
entry:
  ret ptr @str.120.struct
}

define ptr @"diag::E1008_string_unterminated"() #1 {
entry:
  ret ptr @str.121.struct
}

define void @"diag::enable_capture"() #1 {
entry:
  store i1 true, ptr @"var.diag::capture_enabled", align 1
  %arena.cur = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr @"var.diag::captured_diags", align 8
  ret void
}

define void @"diag::disable_capture"() #1 {
entry:
  store i1 false, ptr @"var.diag::capture_enabled", align 1
  ret void
}

define i1 @"diag::is_capturing"() #1 {
entry:
  %var.load = load i1, ptr @"var.diag::capture_enabled", align 1
  ret i1 %var.load
}

define void @"diag::clear_captured"() #1 {
entry:
  %arena.cur = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr @"var.diag::captured_diags", align 8
  ret void
}

define void @"diag::record_diag"(i64 %0, ptr %1, i64 %2, i64 %3, ptr %4, i1 %5) #1 {
entry:
  %var.ds = alloca ptr, align 8
  %var.is_warn = alloca i1, align 1
  %var.msg = alloca ptr, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.file = alloca ptr, align 8
  %var.code = alloca i64, align 8
  store i64 %0, ptr %var.code, align 8
  store ptr %1, ptr %var.file, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  store ptr %4, ptr %var.msg, align 8
  store i1 %5, ptr %var.is_warn, align 1
  %var.load = load ptr, ptr @"var.diag::captured_diags", align 8
  %a.load = load ptr, ptr @"var.diag::captured_diags", align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create1, ptr @"var.diag::captured_diags", align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr @"var.diag::captured_diags", align 8
  store ptr %a.load2, ptr %var.ds, align 8
  %var.load3 = load i64, ptr %var.code, align 8
  %var.load4 = load ptr, ptr %var.file, align 8
  %var.load5 = load i64, ptr %var.line, align 8
  %var.load6 = load i64, ptr %var.col, align 8
  %var.load7 = load ptr, ptr %var.msg, align 8
  %var.load8 = load i1, ptr %var.is_warn, align 1
  %arena.cur9 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 ptrtoint (ptr getelementptr ({ i64, ptr, i64, i64, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load3, ptr %rec.fld, align 8
  %rec.fld10 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load4, ptr %rec.fld10, align 8
  %rec.fld11 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load5, ptr %rec.fld11, align 8
  %rec.fld12 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load6, ptr %rec.fld12, align 8
  %rec.fld13 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 4
  store ptr %var.load7, ptr %rec.fld13, align 8
  %rec.fld14 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %rec.alloc, i32 0, i32 5
  store i1 %var.load8, ptr %rec.fld14, align 1
  %a.load15 = load ptr, ptr %var.ds, align 8
  %a.null16 = icmp eq ptr %a.load15, null
  br i1 %a.null16, label %a.create17, label %a.after18

a.create17:                                       ; preds = %a.after
  %arena.cur19 = call ptr @dva_arena_current()
  %a.create20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 24)
  %arena.cur21 = call ptr @dva_arena_current()
  %a.buf22 = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 128)
  %a.len.gep23 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 0
  store i64 0, ptr %a.len.gep23, align 8
  %a.data.gep24 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 1
  store ptr %a.buf22, ptr %a.data.gep24, align 8
  %a.cap.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 2
  store i64 16, ptr %a.cap.gep25, align 8
  store ptr %a.create20, ptr %var.ds, align 8
  br label %a.after18

a.after18:                                        ; preds = %a.create17, %a.after
  %a.load226 = load ptr, ptr %var.ds, align 8
  br label %a.check

a.check:                                          ; preds = %a.after18
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load226, i32 0, i32 0
  %a.len27 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load226, i32 0, i32 2
  %a.cap28 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len27, %a.cap28
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load226)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load226, i32 0, i32 1
  %a.cur.data29 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load226, i32 0, i32 0
  %a.cur.len30 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data29, i64 %a.cur.len30
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len30, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load226, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load31 = load ptr, ptr %var.ds, align 8
  %a.load32 = load ptr, ptr %var.ds, align 8
  %a.null33 = icmp eq ptr %a.load32, null
  br i1 %a.null33, label %a.create34, label %a.after35

a.create34:                                       ; preds = %a.store
  %arena.cur36 = call ptr @dva_arena_current()
  %a.create37 = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 24)
  %arena.cur38 = call ptr @dva_arena_current()
  %a.buf39 = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 128)
  %a.len.gep40 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create37, i32 0, i32 0
  store i64 0, ptr %a.len.gep40, align 8
  %a.data.gep41 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create37, i32 0, i32 1
  store ptr %a.buf39, ptr %a.data.gep41, align 8
  %a.cap.gep42 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create37, i32 0, i32 2
  store i64 16, ptr %a.cap.gep42, align 8
  store ptr %a.create37, ptr %var.ds, align 8
  br label %a.after35

a.after35:                                        ; preds = %a.create34, %a.store
  %a.load243 = load ptr, ptr %var.ds, align 8
  store ptr %a.load243, ptr @"var.diag::captured_diags", align 8
  ret void
}

define internal void @dva_array_grow(ptr %0) #1 {
entry:
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 0
  %a.len1 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  %a.cap2 = load i64, ptr %a.cap, align 8
  %a.data = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %a.data3 = load ptr, ptr %a.data, align 8
  %a.cap24 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.cap2, i64 2)
  %prod = extractvalue { i64, i1 } %a.cap24, 0
  %ovf = extractvalue { i64, i1 } %a.cap24, 1
  br i1 %ovf, label %arr_overflow_abort, label %a.cap25

a.cap25:                                          ; preds = %arr_overflow_abort, %entry
  %a.cap.small = icmp slt i64 %prod, 16
  %a.new.cap = select i1 %a.cap.small, i64 16, i64 %prod
  %a.grow.bytes = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.new.cap, i64 8)
  %prod6 = extractvalue { i64, i1 } %a.grow.bytes, 0
  %ovf7 = extractvalue { i64, i1 } %a.grow.bytes, 1
  br i1 %ovf7, label %arr_overflow_abort9, label %a.grow.bytes8

arr_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  br label %a.cap25

a.grow.bytes8:                                    ; preds = %arr_overflow_abort9, %a.cap25
  %arena.cur = call ptr @dva_arena_current()
  %a.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %prod6)
  %a.copy.bytes = mul i64 %a.len1, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.new.buf, ptr align 1 %a.data3, i64 %a.copy.bytes, i1 false)
  %a.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  store ptr %a.new.buf, ptr %a.new.data.gep, align 8
  %a.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  store i64 %a.new.cap, ptr %a.new.cap.gep, align 8
  ret void

arr_overflow_abort9:                              ; preds = %a.cap25
  %2 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  br label %a.grow.bytes8
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #0

define ptr @"diag::get_captured"() #1 {
entry:
  %var.load = load ptr, ptr @"var.diag::captured_diags", align 8
  %a.load = load ptr, ptr @"var.diag::captured_diags", align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create1, ptr @"var.diag::captured_diags", align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr @"var.diag::captured_diags", align 8
  ret ptr %a.load2
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
