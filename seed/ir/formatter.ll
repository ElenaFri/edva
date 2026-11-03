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
@sys_argc_global = external global i64
@sys_argv_global = external global ptr
@"var.diag::capture_enabled" = external global i1
@"var.diag::captured_diags" = external global ptr
@"var.const::pi" = external global double
@"var.const::tau" = external global double
@"var.const::e" = external global double
@"var.const::phi" = external global double
@"var.const::inv_phi" = external global double
@"var.const::sqrt2" = external global double
@"var.const::sqrt3" = external global double
@"var.const::ln2" = external global double
@"var.const::ln10" = external global double
@"var.const::max_i64" = external global i64
@"var.const::min_i64" = external global i64
@"var.const::max_safe_int" = external global i64
@"var.const::max_i32" = external global i32
@"var.const::min_i32" = external global i32
@"var.const::max_i16" = external global i16
@"var.const::min_i16" = external global i16
@"var.const::max_i8" = external global i8
@"var.const::min_i8" = external global i8
@"var.const::max_u64" = external global i64
@"var.const::max_u32" = external global i32
@"var.const::max_u16" = external global i16
@"var.const::max_u8" = external global i8
@"var.const::inf_f64" = external global double
@"var.const::nan_f64" = external global double
@"var.const::max_f64" = external global double
@"var.const::min_f64" = external global double
@"var.const::sub_f64" = external global double
@"var.const::eps_f64" = external global double
@"var.const::inf_f32" = external global float
@"var.const::nan_f32" = external global float
@"var.const::max_f32" = external global float
@"var.const::min_f32" = external global float
@"var.const::sub_f32" = external global float
@"var.const::eps_f32" = external global float
@"var.sys::STDIN" = external global i64
@"var.sys::STDOUT" = external global i64
@"var.sys::STDERR" = external global i64
@"var.sys::addr_null" = external global ptr
@"var.time::CLOCK_REALTIME" = external global i64
@"var.time::CLOCK_MONOTONIC" = external global i64
@"var.time::NS_PER_US" = external global i64
@"var.time::NS_PER_MS" = external global i64
@"var.time::NS_PER_SEC" = external global i64
@"var.time::SEC_PER_MIN" = external global i64
@"var.time::SEC_PER_HOUR" = external global i64
@"var.time::SEC_PER_DAY" = external global i64
@"var.lexer::cur_lex_file" = external global ptr
@"var.lexer::cur_lex_failed" = external global i1
@"var.ast::cell_var_names" = external global ptr
@"var.path::SEP" = external global i32
@"var.path::SEP_STR" = external global ptr
@"var.path::LIST_SEP" = external global i32
@"var.path::LIST_SEP_STR" = external global ptr
@"var.path::IS_WIN" = external global i1
@"var.parser::cur_target_triple" = external global ptr
@clo.const = internal constant { ptr, ptr } { ptr @"formatter::is_space_or_tab", ptr null }
@"var.formatter::is_space_or_tab" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.1 = internal constant { ptr, ptr } { ptr @"formatter::scan_line_state", ptr null }
@"var.formatter::scan_line_state" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"formatter::strip_cr_and_trailing_ws", ptr null }
@"var.formatter::strip_cr_and_trailing_ws" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"formatter::strip_cr_only", ptr null }
@"var.formatter::strip_cr_only" = global ptr null
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@clo.const.4 = internal constant { ptr, ptr } { ptr @"formatter::split_source_lines", ptr null }
@"var.formatter::split_source_lines" = global ptr null
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@str.0 = internal unnamed_addr constant [3 x i8] c"/*\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.0 }
@str.1 = internal unnamed_addr constant [4 x i8] c"\22\22\22\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.1 }
@str.2 = internal unnamed_addr constant [3 x i8] c": \00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.2 }
@clo.const.5 = internal constant { ptr, ptr } { ptr @"formatter::format_code_body", ptr null }
@"var.formatter::format_code_body" = global ptr null
@str.3 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.3 }
@clo.const.6 = internal constant { ptr, ptr } { ptr @"formatter::make_spaces", ptr null }
@"var.formatter::make_spaces" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"formatter::strip_leading_ws", ptr null }
@"var.formatter::strip_leading_ws" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"formatter::strip_code_comment", ptr null }
@"var.formatter::strip_code_comment" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"formatter::ends_with_str", ptr null }
@"var.formatter::ends_with_str" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"formatter::starts_with_str", ptr null }
@"var.formatter::starts_with_str" = global ptr null
@str.4 = internal unnamed_addr constant [3 x i8] c"![\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.4 }
@str.5 = internal unnamed_addr constant [3 x i8] c"!|\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.5 }
@clo.const.11 = internal constant { ptr, ptr } { ptr @"formatter::starts_with_choice_sep", ptr null }
@"var.formatter::starts_with_choice_sep" = global ptr null
@str.6 = internal unnamed_addr constant [4 x i8] c"|->\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.6 }
@str.7 = internal unnamed_addr constant [4 x i8] c"|+>\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.7 }
@str.8 = internal unnamed_addr constant [5 x i8] c"|-->\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.8 }
@str.9 = internal unnamed_addr constant [5 x i8] c"|++>\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.9 }
@clo.const.12 = internal constant { ptr, ptr } { ptr @"formatter::is_inline_pipe_arm", ptr null }
@"var.formatter::is_inline_pipe_arm" = global ptr null
@str.10 = internal unnamed_addr constant [2 x i8] c"|\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.10 }
@str.11 = internal unnamed_addr constant [8 x i8] c"#public\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.11 }
@str.12 = internal unnamed_addr constant [9 x i8] c"#private\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.12 }
@str.13 = internal unnamed_addr constant [8 x i8] c"#export\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.13 }
@str.14 = internal unnamed_addr constant [9 x i8] c"#foreign\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.14 }
@str.15 = internal unnamed_addr constant [10 x i8] c"#foreign \00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 9, ptr @str.15 }
@str.16 = internal unnamed_addr constant [3 x i8] c"=>\00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.16 }
@str.17 = internal unnamed_addr constant [4 x i8] c"!=>\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.17 }
@str.18 = internal unnamed_addr constant [2 x i8] c"@\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.18 }
@str.19 = internal unnamed_addr constant [3 x i8] c"@@\00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.19 }
@str.20 = internal unnamed_addr constant [4 x i8] c">--\00"
@str.20.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.20 }
@str.21 = internal unnamed_addr constant [2 x i8] c"(\00"
@str.21.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.21 }
@str.22 = internal unnamed_addr constant [2 x i8] c"{\00"
@str.22.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.22 }
@str.23 = internal unnamed_addr constant [7 x i8] c"#type \00"
@str.23.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.23 }
@str.24 = internal unnamed_addr constant [2 x i8] c"<\00"
@str.24.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.24 }
@str.25 = internal unnamed_addr constant [2 x i8] c"]\00"
@str.25.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.25 }
@str.26 = internal unnamed_addr constant [2 x i8] c"=\00"
@str.26.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.26 }
@str.27 = internal unnamed_addr constant [3 x i8] c"==\00"
@str.27.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.27 }
@str.28 = internal unnamed_addr constant [3 x i8] c"!=\00"
@str.28.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.28 }
@str.29 = internal unnamed_addr constant [3 x i8] c"^=\00"
@str.29.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.29 }
@str.30 = internal unnamed_addr constant [3 x i8] c"<=\00"
@str.30.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.30 }
@str.31 = internal unnamed_addr constant [3 x i8] c">=\00"
@str.31.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.31 }
@clo.const.13 = internal constant { ptr, ptr } { ptr @"formatter::ends_with_block_opener", ptr null }
@"var.formatter::ends_with_block_opener" = global ptr null
@str.32 = internal unnamed_addr constant [2 x i8] c"+\00"
@str.32.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.32 }
@str.33 = internal unnamed_addr constant [3 x i8] c"++\00"
@str.33.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.33 }
@str.34 = internal unnamed_addr constant [4 x i8] c"<+>\00"
@str.34.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.34 }
@str.35 = internal unnamed_addr constant [5 x i8] c"<++>\00"
@str.35.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.35 }
@str.36 = internal unnamed_addr constant [2 x i8] c"-\00"
@str.36.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.36 }
@str.37 = internal unnamed_addr constant [3 x i8] c"--\00"
@str.37.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.37 }
@str.38 = internal unnamed_addr constant [4 x i8] c"<->\00"
@str.38.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.38 }
@str.39 = internal unnamed_addr constant [5 x i8] c"<-->\00"
@str.39.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.39 }
@str.40 = internal unnamed_addr constant [2 x i8] c"*\00"
@str.40.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.40 }
@str.41 = internal unnamed_addr constant [2 x i8] c"/\00"
@str.41.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.41 }
@str.42 = internal unnamed_addr constant [2 x i8] c"%\00"
@str.42.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.42 }
@str.43 = internal unnamed_addr constant [3 x i8] c"&&\00"
@str.43.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.43 }
@str.44 = internal unnamed_addr constant [3 x i8] c"||\00"
@str.44.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.44 }
@str.45 = internal unnamed_addr constant [3 x i8] c"!<\00"
@str.45.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.45 }
@str.46 = internal unnamed_addr constant [3 x i8] c"!>\00"
@str.46.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.46 }
@str.47 = internal unnamed_addr constant [2 x i8] c",\00"
@str.47.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.47 }
@str.48 = internal unnamed_addr constant [2 x i8] c";\00"
@str.48.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.48 }
@str.49 = internal unnamed_addr constant [2 x i8] c"$\00"
@str.49.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.49 }
@str.50 = internal unnamed_addr constant [4 x i8] c".&.\00"
@str.50.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.50 }
@str.51 = internal unnamed_addr constant [4 x i8] c".|.\00"
@str.51.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.51 }
@str.52 = internal unnamed_addr constant [4 x i8] c".^.\00"
@str.52.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.52 }
@clo.const.14 = internal constant { ptr, ptr } { ptr @"formatter::ends_with_cont_op", ptr null }
@"var.formatter::ends_with_cont_op" = global ptr null
@str.53 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.53.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.53 }
@str.54 = internal unnamed_addr constant [14 x i8] c"formatter.dva\00"
@str.54.struct = internal unnamed_addr constant { i64, ptr } { i64 13, ptr @str.54 }
@str.55 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.55.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.55 }
@dva_thread_rec = external thread_local global ptr
@clo.const.15 = internal constant { ptr, ptr } { ptr @"formatter::has_intermediate_dedent", ptr null }
@"var.formatter::has_intermediate_dedent" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"formatter::compute_child_delta", ptr null }
@"var.formatter::compute_child_delta" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"formatter::find_stack_level", ptr null }
@"var.formatter::find_stack_level" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"formatter::format_lines", ptr null }
@"var.formatter::format_lines" = global ptr null
@clo.const.19 = internal constant { ptr, ptr } { ptr @"formatter::format_safe_fallback", ptr null }
@"var.formatter::format_safe_fallback" = global ptr null
@str.56 = internal unnamed_addr constant [2 x i8] c":\00"
@str.56.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.56 }
@str.57 = internal unnamed_addr constant [4 x i8] c": E\00"
@str.57.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.57 }
@str.58 = internal unnamed_addr constant [15 x i8] c": syntax error\00"
@str.58.struct = internal unnamed_addr constant { i64, ptr } { i64 14, ptr @str.58 }
@clo.const.20 = internal constant { ptr, ptr } { ptr @"formatter::parse_ast_signature", ptr null }
@"var.formatter::parse_ast_signature" = global ptr null
@clo.const.21 = internal constant { ptr, ptr } { ptr @"formatter::format_source", ptr null }
@"var.formatter::format_source" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"formatter::sort_names", ptr null }
@"var.formatter::sort_names" = global ptr null
@str.59 = internal unnamed_addr constant [5 x i8] c".dva\00"
@str.59.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.59 }
@clo.const.23 = internal constant { ptr, ptr } { ptr @"formatter::collect_dva_files", ptr null }
@"var.formatter::collect_dva_files" = global ptr null
@clo.const.24 = internal constant { ptr, ptr } { ptr @"formatter::read_stdin_all", ptr null }
@"var.formatter::read_stdin_all" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"formatter::write_stdout", ptr null }
@"var.formatter::write_stdout" = global ptr null
@str.60 = internal unnamed_addr constant [2 x i8] c"\0A\00"
@str.60.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.60 }
@clo.const.26 = internal constant { ptr, ptr } { ptr @"formatter::print_line", ptr null }
@"var.formatter::print_line" = global ptr null
@str.61 = internal unnamed_addr constant [46 x i8] c"Usage: edva fmt [options] [file.dva | dir...]\00"
@str.61.struct = internal unnamed_addr constant { i64, ptr } { i64 45, ptr @str.61 }
@str.62 = internal unnamed_addr constant [9 x i8] c"Options:\00"
@str.62.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.62 }
@str.63 = internal unnamed_addr constant [70 x i8] c"  --check     Check if files are formatted (exit 1 if changes needed)\00"
@str.63.struct = internal unnamed_addr constant { i64, ptr } { i64 69, ptr @str.63 }
@str.64 = internal unnamed_addr constant [74 x i8] c"  --stdout    Write formatted output to stdout instead of modifying files\00"
@str.64.struct = internal unnamed_addr constant { i64, ptr } { i64 73, ptr @str.64 }
@str.65 = internal unnamed_addr constant [74 x i8] c"  --stdin     Read source from stdin and write formatted output to stdout\00"
@str.65.struct = internal unnamed_addr constant { i64, ptr } { i64 73, ptr @str.65 }
@str.66 = internal unnamed_addr constant [49 x i8] c"  -h, --help  Display this help message and exit\00"
@str.66.struct = internal unnamed_addr constant { i64, ptr } { i64 48, ptr @str.66 }
@clo.const.27 = internal constant { ptr, ptr } { ptr @"formatter::print_fmt_help", ptr null }
@"var.formatter::print_fmt_help" = global ptr null
@str.67 = internal unnamed_addr constant [3 x i8] c"-h\00"
@str.67.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.67 }
@str.68 = internal unnamed_addr constant [7 x i8] c"--help\00"
@str.68.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.68 }
@str.69 = internal unnamed_addr constant [8 x i8] c"--check\00"
@str.69.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.69 }
@str.70 = internal unnamed_addr constant [9 x i8] c"--stdout\00"
@str.70.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.70 }
@str.71 = internal unnamed_addr constant [8 x i8] c"--stdin\00"
@str.71.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.71 }
@str.72 = internal unnamed_addr constant [27 x i8] c"edva fmt: unknown option '\00"
@str.72.struct = internal unnamed_addr constant { i64, ptr } { i64 26, ptr @str.72 }
@str.73 = internal unnamed_addr constant [2 x i8] c"'\00"
@str.73.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.73 }
@str.74 = internal unnamed_addr constant [8 x i8] c"<stdin>\00"
@str.74.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.74 }
@str.75 = internal unnamed_addr constant [2 x i8] c".\00"
@str.75.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.75 }
@str.76 = internal unnamed_addr constant [17 x i8] c"edva fmt: path '\00"
@str.76.struct = internal unnamed_addr constant { i64, ptr } { i64 16, ptr @str.76 }
@str.77 = internal unnamed_addr constant [17 x i8] c"' does not exist\00"
@str.77.struct = internal unnamed_addr constant { i64, ptr } { i64 16, ptr @str.77 }
@str.78 = internal unnamed_addr constant [30 x i8] c"edva fmt: no .dva files found\00"
@str.78.struct = internal unnamed_addr constant { i64, ptr } { i64 29, ptr @str.78 }
@str.79 = internal unnamed_addr constant [28 x i8] c"edva fmt: could not write '\00"
@str.79.struct = internal unnamed_addr constant { i64, ptr } { i64 27, ptr @str.79 }
@str.80 = internal unnamed_addr constant [27 x i8] c"edva fmt: could not read '\00"
@str.80.struct = internal unnamed_addr constant { i64, ptr } { i64 26, ptr @str.80 }
@clo.const.28 = internal constant { ptr, ptr } { ptr @"formatter::main", ptr null }
@"var.formatter::main" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_formatter, ptr null }]

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

define internal void @__dva_global_init_formatter() #1 {
entry:
  store ptr @clo.const, ptr @"var.formatter::is_space_or_tab", align 8
  store ptr @clo.const.1, ptr @"var.formatter::scan_line_state", align 8
  store ptr @clo.const.2, ptr @"var.formatter::strip_cr_and_trailing_ws", align 8
  store ptr @clo.const.3, ptr @"var.formatter::strip_cr_only", align 8
  store ptr @clo.const.4, ptr @"var.formatter::split_source_lines", align 8
  store ptr @clo.const.5, ptr @"var.formatter::format_code_body", align 8
  store ptr @clo.const.6, ptr @"var.formatter::make_spaces", align 8
  store ptr @clo.const.7, ptr @"var.formatter::strip_leading_ws", align 8
  store ptr @clo.const.8, ptr @"var.formatter::strip_code_comment", align 8
  store ptr @clo.const.9, ptr @"var.formatter::ends_with_str", align 8
  store ptr @clo.const.10, ptr @"var.formatter::starts_with_str", align 8
  store ptr @clo.const.11, ptr @"var.formatter::starts_with_choice_sep", align 8
  store ptr @clo.const.12, ptr @"var.formatter::is_inline_pipe_arm", align 8
  store ptr @clo.const.13, ptr @"var.formatter::ends_with_block_opener", align 8
  store ptr @clo.const.14, ptr @"var.formatter::ends_with_cont_op", align 8
  store ptr @clo.const.15, ptr @"var.formatter::has_intermediate_dedent", align 8
  store ptr @clo.const.16, ptr @"var.formatter::compute_child_delta", align 8
  store ptr @clo.const.17, ptr @"var.formatter::find_stack_level", align 8
  store ptr @clo.const.18, ptr @"var.formatter::format_lines", align 8
  store ptr @clo.const.19, ptr @"var.formatter::format_safe_fallback", align 8
  store ptr @clo.const.20, ptr @"var.formatter::parse_ast_signature", align 8
  store ptr @clo.const.21, ptr @"var.formatter::format_source", align 8
  store ptr @clo.const.22, ptr @"var.formatter::sort_names", align 8
  store ptr @clo.const.23, ptr @"var.formatter::collect_dva_files", align 8
  store ptr @clo.const.24, ptr @"var.formatter::read_stdin_all", align 8
  store ptr @clo.const.25, ptr @"var.formatter::write_stdout", align 8
  store ptr @clo.const.26, ptr @"var.formatter::print_line", align 8
  store ptr @clo.const.27, ptr @"var.formatter::print_fmt_help", align 8
  store ptr @clo.const.28, ptr @"var.formatter::main", align 8
  ret void
}

declare i32 @open(ptr, i32)

declare i64 @creat(ptr, i64)

declare i32 @close(i32)

declare i64 @posix_spawn(ptr, ptr, ptr, ptr, ptr, ptr)

declare i64 @posix_spawnp(ptr, ptr, ptr, ptr, ptr, ptr)

declare i64 @waitpid(i64, ptr, i64)

declare i64 @read(i32, ptr, i64)

declare i64 @lseek(i32, i64, i64)

declare i64 @write(i32, ptr, i64)

declare i64 @writev(i32, ptr, i64)

declare i32 @ioctl(i32, i64, i64, ...)

declare void @exit(i32)

declare i64 @htons(i64)

declare i64 @htonl(i64)

declare i64 @ntohs(i64)

declare i64 @ntohl(i64)

declare i64 @inet_addr(ptr)

declare i64 @socket(i64, i64, i64)

declare i64 @connect(i64, ptr, i64)

declare i64 @bind(i64, ptr, i64)

declare i64 @listen(i64, i64)

declare i64 @accept(i64, ptr, ptr)

declare i64 @send(i64, ptr, i64, i32)

declare i64 @recv(i64, ptr, i64, i32)

declare i64 @sendto(i64, ptr, i64, i32, ptr, i64)

declare i64 @recvfrom(i64, ptr, i64, i32, ptr, ptr)

declare i64 @setsockopt(i64, i64, i64, ptr, i64)

declare i64 @getsockopt(i64, i64, i64, ptr, ptr)

declare i64 @getpeername(i64, ptr, ptr)

declare i64 @getsockname(i64, ptr, ptr)

declare i64 @shutdown(i64, i64)

declare i64 @fcntl(i32, i64, i64)

declare i64 @getaddrinfo(ptr, ptr, ptr, ptr)

declare void @freeaddrinfo(ptr)

declare i64 @getifaddrs(ptr)

declare void @freeifaddrs(ptr)

declare ptr @memset(ptr, i64, i64)

declare i64 @atoi(ptr)

declare ptr @opendir(ptr)

declare ptr @readdir(ptr)

declare i64 @closedir(ptr)

declare i64 @strlen(ptr)

declare i64 @strcmp(ptr, ptr)

declare ptr @memcpy(ptr, ptr, i64)

declare ptr @memmove(ptr, ptr, i64)

declare i64 @stat(ptr, ptr)

declare i64 @fstat(i32, ptr)

declare i64 @rename(ptr, ptr)

declare i64 @unlink(ptr)

declare i64 @pipe(ptr)

declare ptr @__errno_location()

declare ptr @mmap(ptr, i64, i64, i64, i32, i64)

declare i64 @munmap(ptr, i64)

declare i64 @syscall(i64, ptr, ptr, ptr, ptr, ptr, ptr)

declare ptr @dlopen(ptr, i32)

declare ptr @dlsym(ptr, ptr)

declare i64 @dlclose(ptr)

declare ptr @dlerror()

declare i64 @system(ptr)

declare ptr @realpath(ptr, ptr)

declare i64 @isatty(i32)

declare i64 @tcgetattr(i32, ptr)

declare i64 @tcsetattr(i32, i64, ptr)

declare void @cfmakeraw(ptr)

declare i64 @poll(ptr, i64, i64)

declare i64 @epoll_create1(i32)

declare i64 @epoll_ctl(i64, i64, i32, ptr)

declare i64 @epoll_wait(i64, ptr, i64, i64)

declare i64 @time(ptr)

declare ptr @signal(i64, ptr)

declare i64 @raise(i64)

declare i64 @getrlimit(i64, ptr)

declare i64 @setrlimit(i64, ptr)

declare i64 @uname(ptr)

define i1 @"formatter::is_space_or_tab"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %val.match = icmp eq i64 %var.load, 32
  %val.match1 = icmp eq i64 %var.load, 9
  %case.or = or i1 %val.match, %val.match1
  br i1 %case.or, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define i64 @"formatter::scan_line_state"(ptr %0, i64 %1) #1 {
entry:
  %var.c2 = alloca i64, align 8
  %var.c1 = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.468 = alloca i64, align 8
  %loop.idx.468 = alloca i64, align 8
  %"var.in_rune'" = alloca i1, align 1
  %"var.str_triple'" = alloca i1, align 1
  %"var.in_str'" = alloca i1, align 1
  %"var.i'" = alloca i64, align 8
  %"var.st'" = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.init_state = alloca i64, align 8
  %var.line = alloca ptr, align 8
  store ptr %0, ptr %var.line, align 8
  store i64 %1, ptr %var.init_state, align 8
  %var.load = load ptr, ptr %var.line, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load3 = load i64, ptr %var.init_state, align 8
  store i64 %var.load3, ptr %"var.st'", align 8
  store i64 0, ptr %"var.i'", align 8
  store i1 false, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  store i1 false, ptr %"var.in_rune'", align 1
  store i64 0, ptr %loop.idx.468, align 8
  br label %loop.header.468

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.468:                                  ; preds = %loop.latch.468, %str_ok
  %counter.load = load i64, ptr %loop.idx.468, align 8
  br label %loop.body.468

loop.body.468:                                    ; preds = %loop.header.468
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.468, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load4 = load i64, ptr %"var.i'", align 8
  %var.load5 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load4, %var.load5
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.468:                                ; No predecessors!
  br label %loop.exit.468

loop.latch.468:                                   ; preds = %choice.exit78
  %step.val = load i64, ptr %loop.step.468, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.468, align 8
  br label %loop.header.468

loop.exit.468:                                    ; preds = %choice.then, %loop.exit.nat.468
  %var.load247 = load i1, ptr %"var.in_str'", align 1
  br i1 %var.load247, label %choice.then248, label %choice.else249

choice.then:                                      ; preds = %loop.body.468
  br label %loop.exit.468

choice.exit:                                      ; preds = %loop.body.468
  %var.load6 = load ptr, ptr %var.line, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %str.tag9 = lshr i64 %s.read.len7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

str_gen_check11:                                  ; preds = %choice.exit
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid15 = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %str.tag9)
  br i1 %tag.valid15, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %var.load17 = load i64, ptr %"var.i'", align 8
  %idx.neg = icmp slt i64 %var.load17, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale13:                                      ; preds = %str_gen_check11
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

idx_big_check:                                    ; preds = %str_ok12
  %idx.big = icmp sge i64 %var.load17, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load18 = load i64, ptr %"var.i'", align 8
  %addtmp = add i64 %var.load18, 1
  %var.load19 = load i64, ptr %var.n, align 8
  %cmptmp20 = icmp slt i64 %addtmp, %var.load19
  br i1 %cmptmp20, label %choice.then21, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok12
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then21:                                    ; preds = %idx_ok
  %var.load23 = load ptr, ptr %var.line, align 8
  %s.read.len24 = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 0
  %s.read.len25 = load i64, ptr %s.read.len24, align 8
  %s.read.len26 = and i64 %s.read.len25, 281474976710655
  %str.tag27 = lshr i64 %s.read.len25, 48
  %str.immortal28 = icmp eq i64 %str.tag27, 0
  br i1 %str.immortal28, label %str_ok30, label %str_gen_check29

choice.else:                                      ; preds = %idx_ok
  br label %choice.exit22

choice.exit22:                                    ; preds = %choice.else, %idx_ok40
  %choice.res = phi i64 [ %s.byte.val45, %idx_ok40 ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.c1, align 8
  %var.load46 = load i64, ptr %"var.i'", align 8
  %addtmp47 = add i64 %var.load46, 2
  %var.load48 = load i64, ptr %var.n, align 8
  %cmptmp49 = icmp slt i64 %addtmp47, %var.load48
  br i1 %cmptmp49, label %choice.then50, label %choice.else51

str_gen_check29:                                  ; preds = %choice.then21
  %arena.cur32 = call ptr @dva_arena_current()
  %tag.valid33 = call i1 @dva_arena_validate_tag(ptr %arena.cur32, i64 %str.tag27)
  br i1 %tag.valid33, label %str_ok30, label %str_stale31

str_ok30:                                         ; preds = %str_stale31, %str_gen_check29, %choice.then21
  %s.read.data34 = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 1
  %s.read.data35 = load ptr, ptr %s.read.data34, align 8
  %var.load36 = load i64, ptr %"var.i'", align 8
  %addtmp37 = add i64 %var.load36, 1
  %idx.neg38 = icmp slt i64 %addtmp37, 0
  br i1 %idx.neg38, label %idx_oob41, label %idx_big_check39

str_stale31:                                      ; preds = %str_gen_check29
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok30

idx_big_check39:                                  ; preds = %str_ok30
  %idx.big42 = icmp sge i64 %addtmp37, %s.read.len26
  br i1 %idx.big42, label %idx_oob41, label %idx_ok40

idx_ok40:                                         ; preds = %idx_oob41, %idx_big_check39
  %s.byte.gep43 = getelementptr i8, ptr %s.read.data35, i64 %addtmp37
  %s.byte44 = load i8, ptr %s.byte.gep43, align 1
  %s.byte.val45 = zext i8 %s.byte44 to i64
  br label %choice.exit22

idx_oob41:                                        ; preds = %idx_big_check39, %str_ok30
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok40

choice.then50:                                    ; preds = %choice.exit22
  %var.load53 = load ptr, ptr %var.line, align 8
  %s.read.len54 = getelementptr inbounds { i64, ptr }, ptr %var.load53, i32 0, i32 0
  %s.read.len55 = load i64, ptr %s.read.len54, align 8
  %s.read.len56 = and i64 %s.read.len55, 281474976710655
  %str.tag57 = lshr i64 %s.read.len55, 48
  %str.immortal58 = icmp eq i64 %str.tag57, 0
  br i1 %str.immortal58, label %str_ok60, label %str_gen_check59

choice.else51:                                    ; preds = %choice.exit22
  br label %choice.exit52

choice.exit52:                                    ; preds = %choice.else51, %idx_ok70
  %choice.res76 = phi i64 [ %s.byte.val75, %idx_ok70 ], [ 0, %choice.else51 ]
  store i64 %choice.res76, ptr %var.c2, align 8
  %var.load77 = load i64, ptr %"var.st'", align 8
  %val.match = icmp eq i64 %var.load77, 1
  br i1 %val.match, label %choice.case, label %choice.next

str_gen_check59:                                  ; preds = %choice.then50
  %arena.cur62 = call ptr @dva_arena_current()
  %tag.valid63 = call i1 @dva_arena_validate_tag(ptr %arena.cur62, i64 %str.tag57)
  br i1 %tag.valid63, label %str_ok60, label %str_stale61

str_ok60:                                         ; preds = %str_stale61, %str_gen_check59, %choice.then50
  %s.read.data64 = getelementptr inbounds { i64, ptr }, ptr %var.load53, i32 0, i32 1
  %s.read.data65 = load ptr, ptr %s.read.data64, align 8
  %var.load66 = load i64, ptr %"var.i'", align 8
  %addtmp67 = add i64 %var.load66, 2
  %idx.neg68 = icmp slt i64 %addtmp67, 0
  br i1 %idx.neg68, label %idx_oob71, label %idx_big_check69

str_stale61:                                      ; preds = %str_gen_check59
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok60

idx_big_check69:                                  ; preds = %str_ok60
  %idx.big72 = icmp sge i64 %addtmp67, %s.read.len56
  br i1 %idx.big72, label %idx_oob71, label %idx_ok70

idx_ok70:                                         ; preds = %idx_oob71, %idx_big_check69
  %s.byte.gep73 = getelementptr i8, ptr %s.read.data65, i64 %addtmp67
  %s.byte74 = load i8, ptr %s.byte.gep73, align 1
  %s.byte.val75 = zext i8 %s.byte74 to i64
  br label %choice.exit52

idx_oob71:                                        ; preds = %idx_big_check69, %str_ok60
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok70

choice.exit78:                                    ; preds = %choice.exit135, %choice.exit116, %choice.exit97, %choice.exit85
  br label %loop.latch.468

choice.case:                                      ; preds = %choice.exit52
  %var.load79 = load i64, ptr %var.c, align 8
  %cmptmp80 = icmp eq i64 %var.load79, 42
  br i1 %cmptmp80, label %and.469.then, label %and.469.else

choice.next:                                      ; preds = %choice.exit52
  %val.match92 = icmp eq i64 %var.load77, 2
  br i1 %val.match92, label %choice.case90, label %choice.next91

and.469.then:                                     ; preds = %choice.case
  %var.load81 = load i64, ptr %var.c1, align 8
  %cmptmp82 = icmp eq i64 %var.load81, 47
  br label %and.469.exit

and.469.else:                                     ; preds = %choice.case
  br label %and.469.exit

and.469.exit:                                     ; preds = %and.469.else, %and.469.then
  %and.469.phi = phi i1 [ %cmptmp82, %and.469.then ], [ %cmptmp80, %and.469.else ]
  br i1 %and.469.phi, label %choice.then83, label %choice.else84

choice.then83:                                    ; preds = %and.469.exit
  store i64 0, ptr %"var.st'", align 8
  %var.load86 = load i64, ptr %"var.i'", align 8
  %addtmp87 = add i64 %var.load86, 2
  store i64 %addtmp87, ptr %"var.i'", align 8
  br label %choice.exit85

choice.else84:                                    ; preds = %and.469.exit
  %var.load88 = load i64, ptr %"var.i'", align 8
  %addtmp89 = add i64 %var.load88, 1
  store i64 %addtmp89, ptr %"var.i'", align 8
  br label %choice.exit85

choice.exit85:                                    ; preds = %choice.else84, %choice.then83
  br label %choice.exit78

choice.case90:                                    ; preds = %choice.next
  %var.load93 = load i64, ptr %var.c, align 8
  %cmptmp94 = icmp eq i64 %var.load93, 92
  br i1 %cmptmp94, label %choice.then95, label %choice.else96

choice.next91:                                    ; preds = %choice.next
  %val.match111 = icmp eq i64 %var.load77, 3
  br i1 %val.match111, label %choice.case109, label %choice.next110

choice.then95:                                    ; preds = %choice.case90
  %var.load98 = load i64, ptr %"var.i'", align 8
  %addtmp99 = add i64 %var.load98, 2
  store i64 %addtmp99, ptr %"var.i'", align 8
  br label %choice.exit97

choice.else96:                                    ; preds = %choice.case90
  %var.load100 = load i64, ptr %var.c, align 8
  %cmptmp101 = icmp eq i64 %var.load100, 34
  br i1 %cmptmp101, label %choice.then102, label %choice.else103

choice.exit97:                                    ; preds = %choice.exit104, %choice.then95
  br label %choice.exit78

choice.then102:                                   ; preds = %choice.else96
  store i64 0, ptr %"var.st'", align 8
  %var.load105 = load i64, ptr %"var.i'", align 8
  %addtmp106 = add i64 %var.load105, 1
  store i64 %addtmp106, ptr %"var.i'", align 8
  br label %choice.exit104

choice.else103:                                   ; preds = %choice.else96
  %var.load107 = load i64, ptr %"var.i'", align 8
  %addtmp108 = add i64 %var.load107, 1
  store i64 %addtmp108, ptr %"var.i'", align 8
  br label %choice.exit104

choice.exit104:                                   ; preds = %choice.else103, %choice.then102
  br label %choice.exit97

choice.case109:                                   ; preds = %choice.next91
  %var.load112 = load i64, ptr %var.c, align 8
  %cmptmp113 = icmp eq i64 %var.load112, 92
  br i1 %cmptmp113, label %choice.then114, label %choice.else115

choice.next110:                                   ; preds = %choice.next91
  %var.load132 = load i1, ptr %"var.in_rune'", align 1
  br i1 %var.load132, label %choice.then133, label %choice.else134

choice.then114:                                   ; preds = %choice.case109
  %var.load117 = load i64, ptr %"var.i'", align 8
  %addtmp118 = add i64 %var.load117, 2
  store i64 %addtmp118, ptr %"var.i'", align 8
  br label %choice.exit116

choice.else115:                                   ; preds = %choice.case109
  %var.load119 = load i64, ptr %var.c, align 8
  %cmptmp120 = icmp eq i64 %var.load119, 34
  br i1 %cmptmp120, label %and.470.then, label %and.470.else

choice.exit116:                                   ; preds = %choice.exit127, %choice.then114
  br label %choice.exit78

and.470.then:                                     ; preds = %choice.else115
  %var.load121 = load i64, ptr %var.c1, align 8
  %cmptmp122 = icmp eq i64 %var.load121, 34
  br label %and.470.exit

and.470.else:                                     ; preds = %choice.else115
  br label %and.470.exit

and.470.exit:                                     ; preds = %and.470.else, %and.470.then
  %and.470.phi = phi i1 [ %cmptmp122, %and.470.then ], [ %cmptmp120, %and.470.else ]
  br i1 %and.470.phi, label %and.471.then, label %and.471.else

and.471.then:                                     ; preds = %and.470.exit
  %var.load123 = load i64, ptr %var.c2, align 8
  %cmptmp124 = icmp eq i64 %var.load123, 34
  br label %and.471.exit

and.471.else:                                     ; preds = %and.470.exit
  br label %and.471.exit

and.471.exit:                                     ; preds = %and.471.else, %and.471.then
  %and.471.phi = phi i1 [ %cmptmp124, %and.471.then ], [ %and.470.phi, %and.471.else ]
  br i1 %and.471.phi, label %choice.then125, label %choice.else126

choice.then125:                                   ; preds = %and.471.exit
  store i64 0, ptr %"var.st'", align 8
  %var.load128 = load i64, ptr %"var.i'", align 8
  %addtmp129 = add i64 %var.load128, 3
  store i64 %addtmp129, ptr %"var.i'", align 8
  br label %choice.exit127

choice.else126:                                   ; preds = %and.471.exit
  %var.load130 = load i64, ptr %"var.i'", align 8
  %addtmp131 = add i64 %var.load130, 1
  store i64 %addtmp131, ptr %"var.i'", align 8
  br label %choice.exit127

choice.exit127:                                   ; preds = %choice.else126, %choice.then125
  br label %choice.exit116

choice.then133:                                   ; preds = %choice.next110
  %var.load136 = load i64, ptr %var.c, align 8
  %cmptmp137 = icmp eq i64 %var.load136, 92
  br i1 %cmptmp137, label %choice.then138, label %choice.else139

choice.else134:                                   ; preds = %choice.next110
  %var.load152 = load i1, ptr %"var.in_str'", align 1
  br i1 %var.load152, label %choice.then153, label %choice.else154

choice.exit135:                                   ; preds = %choice.exit155, %choice.exit140
  br label %choice.exit78

choice.then138:                                   ; preds = %choice.then133
  %var.load141 = load i64, ptr %"var.i'", align 8
  %addtmp142 = add i64 %var.load141, 2
  store i64 %addtmp142, ptr %"var.i'", align 8
  br label %choice.exit140

choice.else139:                                   ; preds = %choice.then133
  %var.load143 = load i64, ptr %var.c, align 8
  %cmptmp144 = icmp eq i64 %var.load143, 39
  br i1 %cmptmp144, label %choice.then145, label %choice.else146

choice.exit140:                                   ; preds = %choice.exit147, %choice.then138
  br label %choice.exit135

choice.then145:                                   ; preds = %choice.else139
  store i1 false, ptr %"var.in_rune'", align 1
  %var.load148 = load i64, ptr %"var.i'", align 8
  %addtmp149 = add i64 %var.load148, 1
  store i64 %addtmp149, ptr %"var.i'", align 8
  br label %choice.exit147

choice.else146:                                   ; preds = %choice.else139
  %var.load150 = load i64, ptr %"var.i'", align 8
  %addtmp151 = add i64 %var.load150, 1
  store i64 %addtmp151, ptr %"var.i'", align 8
  br label %choice.exit147

choice.exit147:                                   ; preds = %choice.else146, %choice.then145
  br label %choice.exit140

choice.then153:                                   ; preds = %choice.else134
  %var.load156 = load i64, ptr %var.c, align 8
  %cmptmp157 = icmp eq i64 %var.load156, 92
  br i1 %cmptmp157, label %choice.then158, label %choice.else159

choice.else154:                                   ; preds = %choice.else134
  %var.load189 = load i64, ptr %var.c, align 8
  %cmptmp190 = icmp eq i64 %var.load189, 47
  br i1 %cmptmp190, label %and.474.then, label %and.474.else

choice.exit155:                                   ; preds = %choice.exit195, %choice.exit160
  br label %choice.exit135

choice.then158:                                   ; preds = %choice.then153
  %var.load161 = load i64, ptr %"var.i'", align 8
  %addtmp162 = add i64 %var.load161, 2
  store i64 %addtmp162, ptr %"var.i'", align 8
  br label %choice.exit160

choice.else159:                                   ; preds = %choice.then153
  %var.load163 = load i1, ptr %"var.str_triple'", align 1
  br i1 %var.load163, label %choice.then164, label %choice.else165

choice.exit160:                                   ; preds = %choice.exit166, %choice.then158
  br label %choice.exit155

choice.then164:                                   ; preds = %choice.else159
  %var.load167 = load i64, ptr %var.c, align 8
  %cmptmp168 = icmp eq i64 %var.load167, 34
  br i1 %cmptmp168, label %and.472.then, label %and.472.else

choice.else165:                                   ; preds = %choice.else159
  %var.load180 = load i64, ptr %var.c, align 8
  %cmptmp181 = icmp eq i64 %var.load180, 34
  br i1 %cmptmp181, label %choice.then182, label %choice.else183

choice.exit166:                                   ; preds = %choice.exit184, %choice.exit175
  br label %choice.exit160

and.472.then:                                     ; preds = %choice.then164
  %var.load169 = load i64, ptr %var.c1, align 8
  %cmptmp170 = icmp eq i64 %var.load169, 34
  br label %and.472.exit

and.472.else:                                     ; preds = %choice.then164
  br label %and.472.exit

and.472.exit:                                     ; preds = %and.472.else, %and.472.then
  %and.472.phi = phi i1 [ %cmptmp170, %and.472.then ], [ %cmptmp168, %and.472.else ]
  br i1 %and.472.phi, label %and.473.then, label %and.473.else

and.473.then:                                     ; preds = %and.472.exit
  %var.load171 = load i64, ptr %var.c2, align 8
  %cmptmp172 = icmp eq i64 %var.load171, 34
  br label %and.473.exit

and.473.else:                                     ; preds = %and.472.exit
  br label %and.473.exit

and.473.exit:                                     ; preds = %and.473.else, %and.473.then
  %and.473.phi = phi i1 [ %cmptmp172, %and.473.then ], [ %and.472.phi, %and.473.else ]
  br i1 %and.473.phi, label %choice.then173, label %choice.else174

choice.then173:                                   ; preds = %and.473.exit
  store i1 false, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  %var.load176 = load i64, ptr %"var.i'", align 8
  %addtmp177 = add i64 %var.load176, 3
  store i64 %addtmp177, ptr %"var.i'", align 8
  br label %choice.exit175

choice.else174:                                   ; preds = %and.473.exit
  %var.load178 = load i64, ptr %"var.i'", align 8
  %addtmp179 = add i64 %var.load178, 1
  store i64 %addtmp179, ptr %"var.i'", align 8
  br label %choice.exit175

choice.exit175:                                   ; preds = %choice.else174, %choice.then173
  br label %choice.exit166

choice.then182:                                   ; preds = %choice.else165
  store i1 false, ptr %"var.in_str'", align 1
  %var.load185 = load i64, ptr %"var.i'", align 8
  %addtmp186 = add i64 %var.load185, 1
  store i64 %addtmp186, ptr %"var.i'", align 8
  br label %choice.exit184

choice.else183:                                   ; preds = %choice.else165
  %var.load187 = load i64, ptr %"var.i'", align 8
  %addtmp188 = add i64 %var.load187, 1
  store i64 %addtmp188, ptr %"var.i'", align 8
  br label %choice.exit184

choice.exit184:                                   ; preds = %choice.else183, %choice.then182
  br label %choice.exit166

and.474.then:                                     ; preds = %choice.else154
  %var.load191 = load i64, ptr %var.c1, align 8
  %cmptmp192 = icmp eq i64 %var.load191, 47
  br label %and.474.exit

and.474.else:                                     ; preds = %choice.else154
  br label %and.474.exit

and.474.exit:                                     ; preds = %and.474.else, %and.474.then
  %and.474.phi = phi i1 [ %cmptmp192, %and.474.then ], [ %cmptmp190, %and.474.else ]
  br i1 %and.474.phi, label %choice.then193, label %choice.else194

choice.then193:                                   ; preds = %and.474.exit
  %var.load196 = load i64, ptr %var.n, align 8
  store i64 %var.load196, ptr %"var.i'", align 8
  br label %choice.exit195

choice.else194:                                   ; preds = %and.474.exit
  %var.load197 = load i64, ptr %var.c, align 8
  %cmptmp198 = icmp eq i64 %var.load197, 47
  br i1 %cmptmp198, label %and.475.then, label %and.475.else

choice.exit195:                                   ; preds = %choice.exit203, %choice.then193
  br label %choice.exit155

and.475.then:                                     ; preds = %choice.else194
  %var.load199 = load i64, ptr %var.c1, align 8
  %cmptmp200 = icmp eq i64 %var.load199, 42
  br label %and.475.exit

and.475.else:                                     ; preds = %choice.else194
  br label %and.475.exit

and.475.exit:                                     ; preds = %and.475.else, %and.475.then
  %and.475.phi = phi i1 [ %cmptmp200, %and.475.then ], [ %cmptmp198, %and.475.else ]
  br i1 %and.475.phi, label %choice.then201, label %choice.else202

choice.then201:                                   ; preds = %and.475.exit
  store i64 1, ptr %"var.st'", align 8
  %var.load204 = load i64, ptr %"var.i'", align 8
  %addtmp205 = add i64 %var.load204, 2
  store i64 %addtmp205, ptr %"var.i'", align 8
  br label %choice.exit203

choice.else202:                                   ; preds = %and.475.exit
  %var.load206 = load i64, ptr %var.c, align 8
  %cmptmp207 = icmp eq i64 %var.load206, 39
  br i1 %cmptmp207, label %choice.then208, label %choice.else209

choice.exit203:                                   ; preds = %choice.exit210, %choice.then201
  br label %choice.exit195

choice.then208:                                   ; preds = %choice.else202
  store i1 true, ptr %"var.in_rune'", align 1
  %var.load211 = load i64, ptr %"var.i'", align 8
  %addtmp212 = add i64 %var.load211, 1
  store i64 %addtmp212, ptr %"var.i'", align 8
  br label %choice.exit210

choice.else209:                                   ; preds = %choice.else202
  %var.load213 = load i64, ptr %var.c, align 8
  %cmptmp214 = icmp eq i64 %var.load213, 34
  br i1 %cmptmp214, label %choice.then215, label %choice.else216

choice.exit210:                                   ; preds = %choice.exit217, %choice.then208
  br label %choice.exit203

choice.then215:                                   ; preds = %choice.else209
  %var.load218 = load i64, ptr %var.c1, align 8
  %cmptmp219 = icmp eq i64 %var.load218, 34
  br i1 %cmptmp219, label %and.476.then, label %and.476.else

choice.else216:                                   ; preds = %choice.else209
  %var.load245 = load i64, ptr %"var.i'", align 8
  %addtmp246 = add i64 %var.load245, 1
  store i64 %addtmp246, ptr %"var.i'", align 8
  br label %choice.exit217

choice.exit217:                                   ; preds = %choice.else216, %choice.exit224
  br label %choice.exit210

and.476.then:                                     ; preds = %choice.then215
  %var.load220 = load i64, ptr %var.c2, align 8
  %cmptmp221 = icmp eq i64 %var.load220, 34
  br label %and.476.exit

and.476.else:                                     ; preds = %choice.then215
  br label %and.476.exit

and.476.exit:                                     ; preds = %and.476.else, %and.476.then
  %and.476.phi = phi i1 [ %cmptmp221, %and.476.then ], [ %cmptmp219, %and.476.else ]
  br i1 %and.476.phi, label %choice.then222, label %choice.else223

choice.then222:                                   ; preds = %and.476.exit
  %var.load225 = load i64, ptr %"var.i'", align 8
  %addtmp226 = add i64 %var.load225, 3
  %var.load227 = load i64, ptr %var.n, align 8
  %cmptmp228 = icmp eq i64 %addtmp226, %var.load227
  br i1 %cmptmp228, label %choice.then229, label %choice.else230

choice.else223:                                   ; preds = %and.476.exit
  %var.load235 = load i64, ptr %"var.i'", align 8
  %addtmp236 = add i64 %var.load235, 1
  %var.load237 = load i64, ptr %var.n, align 8
  %cmptmp238 = icmp eq i64 %addtmp236, %var.load237
  br i1 %cmptmp238, label %choice.then239, label %choice.else240

choice.exit224:                                   ; preds = %choice.exit241, %choice.exit231
  br label %choice.exit217

choice.then229:                                   ; preds = %choice.then222
  store i64 3, ptr %"var.st'", align 8
  %var.load232 = load i64, ptr %var.n, align 8
  store i64 %var.load232, ptr %"var.i'", align 8
  br label %choice.exit231

choice.else230:                                   ; preds = %choice.then222
  store i1 true, ptr %"var.in_str'", align 1
  store i1 true, ptr %"var.str_triple'", align 1
  %var.load233 = load i64, ptr %"var.i'", align 8
  %addtmp234 = add i64 %var.load233, 3
  store i64 %addtmp234, ptr %"var.i'", align 8
  br label %choice.exit231

choice.exit231:                                   ; preds = %choice.else230, %choice.then229
  br label %choice.exit224

choice.then239:                                   ; preds = %choice.else223
  store i64 2, ptr %"var.st'", align 8
  %var.load242 = load i64, ptr %var.n, align 8
  store i64 %var.load242, ptr %"var.i'", align 8
  br label %choice.exit241

choice.else240:                                   ; preds = %choice.else223
  store i1 true, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  %var.load243 = load i64, ptr %"var.i'", align 8
  %addtmp244 = add i64 %var.load243, 1
  store i64 %addtmp244, ptr %"var.i'", align 8
  br label %choice.exit241

choice.exit241:                                   ; preds = %choice.else240, %choice.then239
  br label %choice.exit224

choice.then248:                                   ; preds = %loop.exit.468
  %var.load251 = load i1, ptr %"var.str_triple'", align 1
  br i1 %var.load251, label %choice.then252, label %choice.else253

choice.else249:                                   ; preds = %loop.exit.468
  %var.load256 = load i64, ptr %"var.st'", align 8
  br label %choice.exit250

choice.exit250:                                   ; preds = %choice.else249, %choice.exit254
  %choice.res257 = phi i64 [ %choice.res255, %choice.exit254 ], [ %var.load256, %choice.else249 ]
  ret i64 %choice.res257

choice.then252:                                   ; preds = %choice.then248
  br label %choice.exit254

choice.else253:                                   ; preds = %choice.then248
  br label %choice.exit254

choice.exit254:                                   ; preds = %choice.else253, %choice.then252
  %choice.res255 = phi i64 [ 3, %choice.then252 ], [ 2, %choice.else253 ]
  br label %choice.exit250
}

define ptr @"formatter::strip_cr_and_trailing_ws"(ptr %0) #1 {
entry:
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.477 = alloca i64, align 8
  %loop.idx.477 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  store i64 %str.len.query2, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.477, align 8
  br label %loop.header.477

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.477:                                  ; preds = %loop.latch.477, %str_ok
  %counter.load = load i64, ptr %loop.idx.477, align 8
  br label %loop.body.477

loop.body.477:                                    ; preds = %loop.header.477
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.477, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load3 = load i64, ptr %"var.end'", align 8
  %cmptmp = icmp sle i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.477:                                ; No predecessors!
  br label %loop.exit.477

loop.latch.477:                                   ; preds = %choice.exit22
  %step.val = load i64, ptr %loop.step.477, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.477, align 8
  br label %loop.header.477

loop.exit.477:                                    ; preds = %choice.else, %choice.then, %loop.exit.nat.477
  %var.load25 = load ptr, ptr %var.s, align 8
  %s.read.len26 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %s.read.len27 = load i64, ptr %s.read.len26, align 8
  %s.read.len28 = and i64 %s.read.len27, 281474976710655
  %str.tag29 = lshr i64 %s.read.len27, 48
  %str.immortal30 = icmp eq i64 %str.tag29, 0
  br i1 %str.immortal30, label %str_ok32, label %str_gen_check31

choice.then:                                      ; preds = %loop.body.477
  br label %loop.exit.477

choice.exit:                                      ; preds = %loop.body.477
  %var.load4 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

str_gen_check9:                                   ; preds = %choice.exit
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  %var.load15 = load i64, ptr %"var.end'", align 8
  %subtmp = sub i64 %var.load15, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale11:                                      ; preds = %str_gen_check9
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

idx_big_check:                                    ; preds = %str_ok10
  %idx.big = icmp sge i64 %subtmp, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data14, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load16 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load16, 32
  %val.match18 = icmp eq i64 %var.load16, 9
  %case.or = or i1 %val.match, %val.match18
  %val.match19 = icmp eq i64 %var.load16, 13
  %case.or20 = or i1 %case.or, %val.match19
  br i1 %case.or20, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.exit17:                                    ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %choice.then21, label %choice.else

choice.case:                                      ; preds = %idx_ok
  br label %choice.exit17

choice.next:                                      ; preds = %idx_ok
  br label %choice.exit17

choice.then21:                                    ; preds = %choice.exit17
  %var.load23 = load i64, ptr %"var.end'", align 8
  %subtmp24 = sub i64 %var.load23, 1
  store i64 %subtmp24, ptr %"var.end'", align 8
  br label %choice.exit22

choice.else:                                      ; preds = %choice.exit17
  br label %loop.exit.477

choice.exit22:                                    ; preds = %choice.then21
  br label %loop.latch.477

str_gen_check31:                                  ; preds = %loop.exit.477
  %arena.cur34 = call ptr @dva_arena_current()
  %tag.valid35 = call i1 @dva_arena_validate_tag(ptr %arena.cur34, i64 %str.tag29)
  br i1 %tag.valid35, label %str_ok32, label %str_stale33

str_ok32:                                         ; preds = %str_stale33, %str_gen_check31, %loop.exit.477
  %s.read.data36 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %s.read.data37 = load ptr, ptr %s.read.data36, align 8
  %var.load38 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len28, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len28
  %final.start = select i1 %start.gt.len, i64 %s.read.len28, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load38, 0
  %rel.end = add i64 %s.read.len28, %var.load38
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load38
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len28
  %final.end = select i1 %end.gt.len, i64 %s.read.len28, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data37, i64 %final.start
  %arena.cur39 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  ret ptr %str.view

str_stale33:                                      ; preds = %str_gen_check31
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok32
}

define ptr @"formatter::strip_cr_only"(ptr %0) #1 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp sgt i64 %str.len.query2, 0
  br i1 %cmptmp, label %and.478.then, label %and.478.else

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.478.then:                                     ; preds = %str_ok
  %var.load3 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %s.read.len4 = load i64, ptr %s.read.len, align 8
  %s.read.len5 = and i64 %s.read.len4, 281474976710655
  %str.tag6 = lshr i64 %s.read.len4, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

and.478.else:                                     ; preds = %str_ok
  br label %and.478.exit

and.478.exit:                                     ; preds = %and.478.else, %idx_ok
  %and.478.phi = phi i1 [ %cmptmp25, %idx_ok ], [ %cmptmp, %and.478.else ]
  br i1 %and.478.phi, label %choice.then, label %choice.else

str_gen_check8:                                   ; preds = %and.478.then
  %arena.cur11 = call ptr @dva_arena_current()
  %tag.valid12 = call i1 @dva_arena_validate_tag(ptr %arena.cur11, i64 %str.tag6)
  br i1 %tag.valid12, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %and.478.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  %var.load14 = load ptr, ptr %var.s, align 8
  %str.len.query15 = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %str.len.query16 = load i64, ptr %str.len.query15, align 8
  %str.len.query17 = and i64 %str.len.query16, 281474976710655
  %str.tag18 = lshr i64 %str.len.query16, 48
  %str.immortal19 = icmp eq i64 %str.tag18, 0
  br i1 %str.immortal19, label %str_ok21, label %str_gen_check20

str_stale10:                                      ; preds = %str_gen_check8
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

str_gen_check20:                                  ; preds = %str_ok9
  %arena.cur23 = call ptr @dva_arena_current()
  %tag.valid24 = call i1 @dva_arena_validate_tag(ptr %arena.cur23, i64 %str.tag18)
  br i1 %tag.valid24, label %str_ok21, label %str_stale22

str_ok21:                                         ; preds = %str_stale22, %str_gen_check20, %str_ok9
  %subtmp = sub i64 %str.len.query17, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale22:                                      ; preds = %str_gen_check20
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok21

idx_big_check:                                    ; preds = %str_ok21
  %idx.big = icmp sge i64 %subtmp, %s.read.len5
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data13, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp25 = icmp eq i64 %s.byte.val, 13
  br label %and.478.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok21
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %and.478.exit
  %var.load26 = load ptr, ptr %var.s, align 8
  %s.read.len27 = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %s.read.len28 = load i64, ptr %s.read.len27, align 8
  %s.read.len29 = and i64 %s.read.len28, 281474976710655
  %str.tag30 = lshr i64 %s.read.len28, 48
  %str.immortal31 = icmp eq i64 %str.tag30, 0
  br i1 %str.immortal31, label %str_ok33, label %str_gen_check32

choice.else:                                      ; preds = %and.478.exit
  %var.load52 = load ptr, ptr %var.s, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %str_ok46
  %choice.res = phi ptr [ %str.view, %str_ok46 ], [ %var.load52, %choice.else ]
  ret ptr %choice.res

str_gen_check32:                                  ; preds = %choice.then
  %arena.cur35 = call ptr @dva_arena_current()
  %tag.valid36 = call i1 @dva_arena_validate_tag(ptr %arena.cur35, i64 %str.tag30)
  br i1 %tag.valid36, label %str_ok33, label %str_stale34

str_ok33:                                         ; preds = %str_stale34, %str_gen_check32, %choice.then
  %s.read.data37 = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 1
  %s.read.data38 = load ptr, ptr %s.read.data37, align 8
  %var.load39 = load ptr, ptr %var.s, align 8
  %str.len.query40 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 0
  %str.len.query41 = load i64, ptr %str.len.query40, align 8
  %str.len.query42 = and i64 %str.len.query41, 281474976710655
  %str.tag43 = lshr i64 %str.len.query41, 48
  %str.immortal44 = icmp eq i64 %str.tag43, 0
  br i1 %str.immortal44, label %str_ok46, label %str_gen_check45

str_stale34:                                      ; preds = %str_gen_check32
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok33

str_gen_check45:                                  ; preds = %str_ok33
  %arena.cur48 = call ptr @dva_arena_current()
  %tag.valid49 = call i1 @dva_arena_validate_tag(ptr %arena.cur48, i64 %str.tag43)
  br i1 %tag.valid49, label %str_ok46, label %str_stale47

str_ok46:                                         ; preds = %str_stale47, %str_gen_check45, %str_ok33
  %subtmp50 = sub i64 %str.len.query42, 1
  %rel.start = add i64 %s.read.len29, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len29
  %final.start = select i1 %start.gt.len, i64 %s.read.len29, i64 %c.start.0
  %end.is_neg = icmp slt i64 %subtmp50, 0
  %rel.end = add i64 %s.read.len29, %subtmp50
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %subtmp50
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len29
  %final.end = select i1 %end.gt.len, i64 %s.read.len29, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data38, i64 %final.start
  %arena.cur51 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit

str_stale47:                                      ; preds = %str_gen_check45
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok46
}

define ptr @"formatter::split_source_lines"(ptr %0) #1 {
entry:
  %var.next_st = alloca i64, align 8
  %var.is_comm = alloca i1, align 1
  %var.is_blank = alloca i1, align 1
  %var.eff_indent = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var._89 = alloca i64, align 8
  %var._i88 = alloca i64, align 8
  %loop.step.483 = alloca i64, align 8
  %loop.idx.483 = alloca i64, align 8
  %"var.idx'" = alloca i64, align 8
  %"var.tabs'" = alloca i64, align 8
  %"var.sp'" = alloca i64, align 8
  %var.cleaned = alloca ptr, align 8
  %var.raw_slice = alloca ptr, align 8
  %var._11 = alloca i64, align 8
  %var._i10 = alloca i64, align 8
  %loop.step.480 = alloca i64, align 8
  %loop.idx.480 = alloca i64, align 8
  %var.line_start = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.479 = alloca i64, align 8
  %loop.idx.479 = alloca i64, align 8
  %"var.st'" = alloca i64, align 8
  %"var.pos'" = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.res = alloca ptr, align 8
  %var.src = alloca ptr, align 8
  store ptr %0, ptr %var.src, align 8
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
  store ptr %a.new, ptr %var.res, align 8
  %var.load = load ptr, ptr %var.src, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur4 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur4, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  store i64 %str.len.query3, ptr %var.n, align 8
  store i64 0, ptr %"var.pos'", align 8
  store i64 0, ptr %"var.st'", align 8
  store i64 0, ptr %loop.idx.479, align 8
  br label %loop.header.479

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.479:                                  ; preds = %loop.latch.479, %str_ok
  %counter.load = load i64, ptr %loop.idx.479, align 8
  br label %loop.body.479

loop.body.479:                                    ; preds = %loop.header.479
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.479, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load5 = load i64, ptr %"var.pos'", align 8
  %var.load6 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load5, %var.load6
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.479:                                ; No predecessors!
  br label %loop.exit.479

loop.latch.479:                                   ; preds = %a.store
  %step.val283 = load i64, ptr %loop.step.479, align 8
  %loop.next284 = add i64 %counter.load, %step.val283
  store i64 %loop.next284, ptr %loop.idx.479, align 8
  br label %loop.header.479

loop.exit.479:                                    ; preds = %choice.then, %loop.exit.nat.479
  %var.load285 = load ptr, ptr %var.res, align 8
  %a.load286 = load ptr, ptr %var.res, align 8
  %a.null287 = icmp eq ptr %a.load286, null
  br i1 %a.null287, label %a.create288, label %a.after289

choice.then:                                      ; preds = %loop.body.479
  br label %loop.exit.479

choice.exit:                                      ; preds = %loop.body.479
  %var.load7 = load i64, ptr %"var.pos'", align 8
  store i64 %var.load7, ptr %var.line_start, align 8
  store i64 0, ptr %loop.idx.480, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.480

loop.header.480:                                  ; preds = %loop.latch.480, %choice.exit
  %counter.load8 = load i64, ptr %loop.idx.480, align 8
  br label %loop.body.480

loop.body.480:                                    ; preds = %loop.header.480
  %loop.rel.i9 = sub i64 %counter.load8, 0
  store i64 1, ptr %loop.step.480, align 8
  store i64 %loop.rel.i9, ptr %var._i10, align 8
  store i64 %counter.load8, ptr %var._11, align 8
  %var.load12 = load i64, ptr %"var.pos'", align 8
  %var.load13 = load i64, ptr %var.n, align 8
  %cmptmp14 = icmp sge i64 %var.load12, %var.load13
  br i1 %cmptmp14, label %or.481.then, label %or.481.else

loop.exit.nat.480:                                ; No predecessors!
  br label %loop.exit.480

loop.latch.480:                                   ; preds = %choice.exit29
  %step.val = load i64, ptr %loop.step.480, align 8
  %loop.next = add i64 %counter.load8, %step.val
  store i64 %loop.next, ptr %loop.idx.480, align 8
  br label %loop.header.480

loop.exit.480:                                    ; preds = %choice.then28, %loop.exit.nat.480
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load31 = load ptr, ptr %var.src, align 8
  %s.read.len32 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 0
  %s.read.len33 = load i64, ptr %s.read.len32, align 8
  %s.read.len34 = and i64 %s.read.len33, 281474976710655
  %str.tag35 = lshr i64 %s.read.len33, 48
  %str.immortal36 = icmp eq i64 %str.tag35, 0
  br i1 %str.immortal36, label %str_ok38, label %str_gen_check37

or.481.then:                                      ; preds = %loop.body.480
  br label %or.481.exit

or.481.else:                                      ; preds = %loop.body.480
  %var.load15 = load ptr, ptr %var.src, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 0
  %s.read.len16 = load i64, ptr %s.read.len, align 8
  %s.read.len17 = and i64 %s.read.len16, 281474976710655
  %str.tag18 = lshr i64 %s.read.len16, 48
  %str.immortal19 = icmp eq i64 %str.tag18, 0
  br i1 %str.immortal19, label %str_ok21, label %str_gen_check20

or.481.exit:                                      ; preds = %idx_ok, %or.481.then
  %or.481.phi = phi i1 [ %cmptmp14, %or.481.then ], [ %cmptmp27, %idx_ok ]
  br i1 %or.481.phi, label %choice.then28, label %choice.exit29

str_gen_check20:                                  ; preds = %or.481.else
  %arena.cur23 = call ptr @dva_arena_current()
  %tag.valid24 = call i1 @dva_arena_validate_tag(ptr %arena.cur23, i64 %str.tag18)
  br i1 %tag.valid24, label %str_ok21, label %str_stale22

str_ok21:                                         ; preds = %str_stale22, %str_gen_check20, %or.481.else
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 1
  %s.read.data25 = load ptr, ptr %s.read.data, align 8
  %var.load26 = load i64, ptr %"var.pos'", align 8
  %idx.neg = icmp slt i64 %var.load26, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale22:                                      ; preds = %str_gen_check20
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok21

idx_big_check:                                    ; preds = %str_ok21
  %idx.big = icmp sge i64 %var.load26, %s.read.len17
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data25, i64 %var.load26
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp27 = icmp eq i64 %s.byte.val, 10
  br label %or.481.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok21
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then28:                                    ; preds = %or.481.exit
  br label %loop.exit.480

choice.exit29:                                    ; preds = %or.481.exit
  %var.load30 = load i64, ptr %"var.pos'", align 8
  %addtmp = add i64 %var.load30, 1
  store i64 %addtmp, ptr %"var.pos'", align 8
  br label %loop.latch.480

str_gen_check37:                                  ; preds = %loop.exit.480
  %arena.cur40 = call ptr @dva_arena_current()
  %tag.valid41 = call i1 @dva_arena_validate_tag(ptr %arena.cur40, i64 %str.tag35)
  br i1 %tag.valid41, label %str_ok38, label %str_stale39

str_ok38:                                         ; preds = %str_stale39, %str_gen_check37, %loop.exit.480
  %s.read.data42 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 1
  %s.read.data43 = load ptr, ptr %s.read.data42, align 8
  %var.load44 = load i64, ptr %var.line_start, align 8
  %var.load45 = load i64, ptr %"var.pos'", align 8
  %start.is_neg = icmp slt i64 %var.load44, 0
  %rel.start = add i64 %s.read.len34, %var.load44
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load44
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len34
  %final.start = select i1 %start.gt.len, i64 %s.read.len34, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load45, 0
  %rel.end = add i64 %s.read.len34, %var.load45
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load45
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len34
  %final.end = select i1 %end.gt.len, i64 %s.read.len34, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data43, i64 %final.start
  %arena.cur46 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %var.raw_slice, align 8
  %var.load47 = load i64, ptr %"var.pos'", align 8
  %var.load48 = load i64, ptr %var.n, align 8
  %cmptmp49 = icmp slt i64 %var.load47, %var.load48
  br i1 %cmptmp49, label %and.482.then, label %and.482.else

str_stale39:                                      ; preds = %str_gen_check37
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok38

and.482.then:                                     ; preds = %str_ok38
  %var.load50 = load ptr, ptr %var.src, align 8
  %s.read.len51 = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 0
  %s.read.len52 = load i64, ptr %s.read.len51, align 8
  %s.read.len53 = and i64 %s.read.len52, 281474976710655
  %str.tag54 = lshr i64 %s.read.len52, 48
  %str.immortal55 = icmp eq i64 %str.tag54, 0
  br i1 %str.immortal55, label %str_ok57, label %str_gen_check56

and.482.else:                                     ; preds = %str_ok38
  br label %and.482.exit

and.482.exit:                                     ; preds = %and.482.else, %idx_ok66
  %and.482.phi = phi i1 [ %cmptmp72, %idx_ok66 ], [ %cmptmp49, %and.482.else ]
  br i1 %and.482.phi, label %choice.then73, label %choice.exit74

str_gen_check56:                                  ; preds = %and.482.then
  %arena.cur59 = call ptr @dva_arena_current()
  %tag.valid60 = call i1 @dva_arena_validate_tag(ptr %arena.cur59, i64 %str.tag54)
  br i1 %tag.valid60, label %str_ok57, label %str_stale58

str_ok57:                                         ; preds = %str_stale58, %str_gen_check56, %and.482.then
  %s.read.data61 = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 1
  %s.read.data62 = load ptr, ptr %s.read.data61, align 8
  %var.load63 = load i64, ptr %"var.pos'", align 8
  %idx.neg64 = icmp slt i64 %var.load63, 0
  br i1 %idx.neg64, label %idx_oob67, label %idx_big_check65

str_stale58:                                      ; preds = %str_gen_check56
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok57

idx_big_check65:                                  ; preds = %str_ok57
  %idx.big68 = icmp sge i64 %var.load63, %s.read.len53
  br i1 %idx.big68, label %idx_oob67, label %idx_ok66

idx_ok66:                                         ; preds = %idx_oob67, %idx_big_check65
  %s.byte.gep69 = getelementptr i8, ptr %s.read.data62, i64 %var.load63
  %s.byte70 = load i8, ptr %s.byte.gep69, align 1
  %s.byte.val71 = zext i8 %s.byte70 to i64
  %cmptmp72 = icmp eq i64 %s.byte.val71, 10
  br label %and.482.exit

idx_oob67:                                        ; preds = %idx_big_check65, %str_ok57
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok66

choice.then73:                                    ; preds = %and.482.exit
  %var.load75 = load i64, ptr %"var.pos'", align 8
  %addtmp76 = add i64 %var.load75, 1
  store i64 %addtmp76, ptr %"var.pos'", align 8
  br label %choice.exit74

choice.exit74:                                    ; preds = %choice.then73, %and.482.exit
  %var.load77 = load i64, ptr %"var.st'", align 8
  %cmptmp78 = icmp eq i64 %var.load77, 0
  br i1 %cmptmp78, label %choice.then79, label %choice.else

choice.then79:                                    ; preds = %choice.exit74
  %var.load81 = load ptr, ptr %var.raw_slice, align 8
  %call.res = call ptr @"formatter::strip_cr_and_trailing_ws"(ptr %var.load81)
  br label %choice.exit80

choice.else:                                      ; preds = %choice.exit74
  %var.load82 = load ptr, ptr %var.raw_slice, align 8
  %call.res83 = call ptr @"formatter::strip_cr_only"(ptr %var.load82)
  br label %choice.exit80

choice.exit80:                                    ; preds = %choice.else, %choice.then79
  %choice.res = phi ptr [ %call.res, %choice.then79 ], [ %call.res83, %choice.else ]
  store ptr %choice.res, ptr %var.cleaned, align 8
  store i64 0, ptr %"var.sp'", align 8
  store i64 0, ptr %"var.tabs'", align 8
  store i64 0, ptr %"var.idx'", align 8
  store i64 0, ptr %loop.idx.483, align 8
  %cycle.prev.u84 = load i64, ptr %var._, align 8
  %cycle.prev.i85 = load i64, ptr %var._i, align 8
  br label %loop.header.483

loop.header.483:                                  ; preds = %loop.latch.483, %choice.exit80
  %counter.load86 = load i64, ptr %loop.idx.483, align 8
  br label %loop.body.483

loop.body.483:                                    ; preds = %loop.header.483
  %loop.rel.i87 = sub i64 %counter.load86, 0
  store i64 1, ptr %loop.step.483, align 8
  store i64 %loop.rel.i87, ptr %var._i88, align 8
  store i64 %counter.load86, ptr %var._89, align 8
  %var.load90 = load i64, ptr %"var.idx'", align 8
  %var.load91 = load ptr, ptr %var.cleaned, align 8
  %str.len.query92 = getelementptr inbounds { i64, ptr }, ptr %var.load91, i32 0, i32 0
  %str.len.query93 = load i64, ptr %str.len.query92, align 8
  %str.len.query94 = and i64 %str.len.query93, 281474976710655
  %str.tag95 = lshr i64 %str.len.query93, 48
  %str.immortal96 = icmp eq i64 %str.tag95, 0
  br i1 %str.immortal96, label %str_ok98, label %str_gen_check97

loop.exit.nat.483:                                ; No predecessors!
  br label %loop.exit.483

loop.latch.483:                                   ; preds = %choice.exit131
  %step.val145 = load i64, ptr %loop.step.483, align 8
  %loop.next146 = add i64 %counter.load86, %step.val145
  store i64 %loop.next146, ptr %loop.idx.483, align 8
  br label %loop.header.483

loop.exit.483:                                    ; preds = %choice.else139, %choice.then103, %loop.exit.nat.483
  store i64 %cycle.prev.u84, ptr %var._, align 8
  store i64 %cycle.prev.i85, ptr %var._i, align 8
  %var.load147 = load i64, ptr %"var.sp'", align 8
  %var.load148 = load i64, ptr %"var.tabs'", align 8
  %multmp = mul i64 %var.load148, 3
  %addtmp149 = add i64 %var.load147, %multmp
  store i64 %addtmp149, ptr %var.eff_indent, align 8
  %var.load150 = load i64, ptr %"var.st'", align 8
  %cmptmp151 = icmp eq i64 %var.load150, 0
  br i1 %cmptmp151, label %and.484.then, label %and.484.else

str_gen_check97:                                  ; preds = %loop.body.483
  %arena.cur100 = call ptr @dva_arena_current()
  %tag.valid101 = call i1 @dva_arena_validate_tag(ptr %arena.cur100, i64 %str.tag95)
  br i1 %tag.valid101, label %str_ok98, label %str_stale99

str_ok98:                                         ; preds = %str_stale99, %str_gen_check97, %loop.body.483
  %cmptmp102 = icmp sge i64 %var.load90, %str.len.query94
  br i1 %cmptmp102, label %choice.then103, label %choice.exit104

str_stale99:                                      ; preds = %str_gen_check97
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok98

choice.then103:                                   ; preds = %str_ok98
  br label %loop.exit.483

choice.exit104:                                   ; preds = %str_ok98
  %var.load105 = load ptr, ptr %var.cleaned, align 8
  %s.read.len106 = getelementptr inbounds { i64, ptr }, ptr %var.load105, i32 0, i32 0
  %s.read.len107 = load i64, ptr %s.read.len106, align 8
  %s.read.len108 = and i64 %s.read.len107, 281474976710655
  %str.tag109 = lshr i64 %s.read.len107, 48
  %str.immortal110 = icmp eq i64 %str.tag109, 0
  br i1 %str.immortal110, label %str_ok112, label %str_gen_check111

str_gen_check111:                                 ; preds = %choice.exit104
  %arena.cur114 = call ptr @dva_arena_current()
  %tag.valid115 = call i1 @dva_arena_validate_tag(ptr %arena.cur114, i64 %str.tag109)
  br i1 %tag.valid115, label %str_ok112, label %str_stale113

str_ok112:                                        ; preds = %str_stale113, %str_gen_check111, %choice.exit104
  %s.read.data116 = getelementptr inbounds { i64, ptr }, ptr %var.load105, i32 0, i32 1
  %s.read.data117 = load ptr, ptr %s.read.data116, align 8
  %var.load118 = load i64, ptr %"var.idx'", align 8
  %idx.neg119 = icmp slt i64 %var.load118, 0
  br i1 %idx.neg119, label %idx_oob122, label %idx_big_check120

str_stale113:                                     ; preds = %str_gen_check111
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok112

idx_big_check120:                                 ; preds = %str_ok112
  %idx.big123 = icmp sge i64 %var.load118, %s.read.len108
  br i1 %idx.big123, label %idx_oob122, label %idx_ok121

idx_ok121:                                        ; preds = %idx_oob122, %idx_big_check120
  %s.byte.gep124 = getelementptr i8, ptr %s.read.data117, i64 %var.load118
  %s.byte125 = load i8, ptr %s.byte.gep124, align 1
  %s.byte.val126 = zext i8 %s.byte125 to i64
  store i64 %s.byte.val126, ptr %var.c, align 8
  %var.load127 = load i64, ptr %var.c, align 8
  %cmptmp128 = icmp eq i64 %var.load127, 32
  br i1 %cmptmp128, label %choice.then129, label %choice.else130

idx_oob122:                                       ; preds = %idx_big_check120, %str_ok112
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok121

choice.then129:                                   ; preds = %idx_ok121
  %var.load132 = load i64, ptr %"var.sp'", align 8
  %addtmp133 = add i64 %var.load132, 1
  store i64 %addtmp133, ptr %"var.sp'", align 8
  %var.load134 = load i64, ptr %"var.idx'", align 8
  %addtmp135 = add i64 %var.load134, 1
  store i64 %addtmp135, ptr %"var.idx'", align 8
  br label %choice.exit131

choice.else130:                                   ; preds = %idx_ok121
  %var.load136 = load i64, ptr %var.c, align 8
  %cmptmp137 = icmp eq i64 %var.load136, 9
  br i1 %cmptmp137, label %choice.then138, label %choice.else139

choice.exit131:                                   ; preds = %choice.exit140, %choice.then129
  br label %loop.latch.483

choice.then138:                                   ; preds = %choice.else130
  %var.load141 = load i64, ptr %"var.tabs'", align 8
  %addtmp142 = add i64 %var.load141, 1
  store i64 %addtmp142, ptr %"var.tabs'", align 8
  %var.load143 = load i64, ptr %"var.idx'", align 8
  %addtmp144 = add i64 %var.load143, 1
  store i64 %addtmp144, ptr %"var.idx'", align 8
  br label %choice.exit140

choice.else139:                                   ; preds = %choice.else130
  br label %loop.exit.483

choice.exit140:                                   ; preds = %choice.then138
  br label %choice.exit131

and.484.then:                                     ; preds = %loop.exit.483
  %var.load152 = load i64, ptr %"var.idx'", align 8
  %var.load153 = load ptr, ptr %var.cleaned, align 8
  %str.len.query154 = getelementptr inbounds { i64, ptr }, ptr %var.load153, i32 0, i32 0
  %str.len.query155 = load i64, ptr %str.len.query154, align 8
  %str.len.query156 = and i64 %str.len.query155, 281474976710655
  %str.tag157 = lshr i64 %str.len.query155, 48
  %str.immortal158 = icmp eq i64 %str.tag157, 0
  br i1 %str.immortal158, label %str_ok160, label %str_gen_check159

and.484.else:                                     ; preds = %loop.exit.483
  br label %and.484.exit

and.484.exit:                                     ; preds = %and.484.else, %str_ok160
  %and.484.phi = phi i1 [ %cmptmp164, %str_ok160 ], [ %cmptmp151, %and.484.else ]
  store i1 %and.484.phi, ptr %var.is_blank, align 1
  %var.load165 = load i64, ptr %"var.st'", align 8
  %cmptmp166 = icmp eq i64 %var.load165, 0
  br i1 %cmptmp166, label %and.485.then, label %and.485.else

str_gen_check159:                                 ; preds = %and.484.then
  %arena.cur162 = call ptr @dva_arena_current()
  %tag.valid163 = call i1 @dva_arena_validate_tag(ptr %arena.cur162, i64 %str.tag157)
  br i1 %tag.valid163, label %str_ok160, label %str_stale161

str_ok160:                                        ; preds = %str_stale161, %str_gen_check159, %and.484.then
  %cmptmp164 = icmp eq i64 %var.load152, %str.len.query156
  br label %and.484.exit

str_stale161:                                     ; preds = %str_gen_check159
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok160

and.485.then:                                     ; preds = %and.484.exit
  %var.load167 = load i1, ptr %var.is_blank, align 1
  %nottmp = xor i1 %var.load167, true
  br label %and.485.exit

and.485.else:                                     ; preds = %and.484.exit
  br label %and.485.exit

and.485.exit:                                     ; preds = %and.485.else, %and.485.then
  %and.485.phi = phi i1 [ %nottmp, %and.485.then ], [ %cmptmp166, %and.485.else ]
  br i1 %and.485.phi, label %and.486.then, label %and.486.else

and.486.then:                                     ; preds = %and.485.exit
  %var.load168 = load i64, ptr %"var.idx'", align 8
  %addtmp169 = add i64 %var.load168, 1
  %var.load170 = load ptr, ptr %var.cleaned, align 8
  %str.len.query171 = getelementptr inbounds { i64, ptr }, ptr %var.load170, i32 0, i32 0
  %str.len.query172 = load i64, ptr %str.len.query171, align 8
  %str.len.query173 = and i64 %str.len.query172, 281474976710655
  %str.tag174 = lshr i64 %str.len.query172, 48
  %str.immortal175 = icmp eq i64 %str.tag174, 0
  br i1 %str.immortal175, label %str_ok177, label %str_gen_check176

and.486.else:                                     ; preds = %and.485.exit
  br label %and.486.exit

and.486.exit:                                     ; preds = %and.486.else, %str_ok177
  %and.486.phi = phi i1 [ %cmptmp181, %str_ok177 ], [ %and.485.phi, %and.486.else ]
  br i1 %and.486.phi, label %and.487.then, label %and.487.else

str_gen_check176:                                 ; preds = %and.486.then
  %arena.cur179 = call ptr @dva_arena_current()
  %tag.valid180 = call i1 @dva_arena_validate_tag(ptr %arena.cur179, i64 %str.tag174)
  br i1 %tag.valid180, label %str_ok177, label %str_stale178

str_ok177:                                        ; preds = %str_stale178, %str_gen_check176, %and.486.then
  %cmptmp181 = icmp slt i64 %addtmp169, %str.len.query173
  br label %and.486.exit

str_stale178:                                     ; preds = %str_gen_check176
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok177

and.487.then:                                     ; preds = %and.486.exit
  %var.load182 = load ptr, ptr %var.cleaned, align 8
  %s.read.len183 = getelementptr inbounds { i64, ptr }, ptr %var.load182, i32 0, i32 0
  %s.read.len184 = load i64, ptr %s.read.len183, align 8
  %s.read.len185 = and i64 %s.read.len184, 281474976710655
  %str.tag186 = lshr i64 %s.read.len184, 48
  %str.immortal187 = icmp eq i64 %str.tag186, 0
  br i1 %str.immortal187, label %str_ok189, label %str_gen_check188

and.487.else:                                     ; preds = %and.486.exit
  br label %and.487.exit

and.487.exit:                                     ; preds = %and.487.else, %idx_ok198
  %and.487.phi = phi i1 [ %cmptmp204, %idx_ok198 ], [ %and.486.phi, %and.487.else ]
  br i1 %and.487.phi, label %and.488.then, label %and.488.else

str_gen_check188:                                 ; preds = %and.487.then
  %arena.cur191 = call ptr @dva_arena_current()
  %tag.valid192 = call i1 @dva_arena_validate_tag(ptr %arena.cur191, i64 %str.tag186)
  br i1 %tag.valid192, label %str_ok189, label %str_stale190

str_ok189:                                        ; preds = %str_stale190, %str_gen_check188, %and.487.then
  %s.read.data193 = getelementptr inbounds { i64, ptr }, ptr %var.load182, i32 0, i32 1
  %s.read.data194 = load ptr, ptr %s.read.data193, align 8
  %var.load195 = load i64, ptr %"var.idx'", align 8
  %idx.neg196 = icmp slt i64 %var.load195, 0
  br i1 %idx.neg196, label %idx_oob199, label %idx_big_check197

str_stale190:                                     ; preds = %str_gen_check188
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok189

idx_big_check197:                                 ; preds = %str_ok189
  %idx.big200 = icmp sge i64 %var.load195, %s.read.len185
  br i1 %idx.big200, label %idx_oob199, label %idx_ok198

idx_ok198:                                        ; preds = %idx_oob199, %idx_big_check197
  %s.byte.gep201 = getelementptr i8, ptr %s.read.data194, i64 %var.load195
  %s.byte202 = load i8, ptr %s.byte.gep201, align 1
  %s.byte.val203 = zext i8 %s.byte202 to i64
  %cmptmp204 = icmp eq i64 %s.byte.val203, 47
  br label %and.487.exit

idx_oob199:                                       ; preds = %idx_big_check197, %str_ok189
  %13 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok198

and.488.then:                                     ; preds = %and.487.exit
  %var.load205 = load ptr, ptr %var.cleaned, align 8
  %s.read.len206 = getelementptr inbounds { i64, ptr }, ptr %var.load205, i32 0, i32 0
  %s.read.len207 = load i64, ptr %s.read.len206, align 8
  %s.read.len208 = and i64 %s.read.len207, 281474976710655
  %str.tag209 = lshr i64 %s.read.len207, 48
  %str.immortal210 = icmp eq i64 %str.tag209, 0
  br i1 %str.immortal210, label %str_ok212, label %str_gen_check211

and.488.else:                                     ; preds = %and.487.exit
  br label %and.488.exit

and.488.exit:                                     ; preds = %and.488.else, %or.489.exit
  %and.488.phi = phi i1 [ %or.489.phi, %or.489.exit ], [ %and.487.phi, %and.488.else ]
  store i1 %and.488.phi, ptr %var.is_comm, align 1
  %var.load253 = load ptr, ptr %var.cleaned, align 8
  %var.load254 = load i64, ptr %"var.st'", align 8
  %call.res255 = call i64 @"formatter::scan_line_state"(ptr %var.load253, i64 %var.load254)
  store i64 %call.res255, ptr %var.next_st, align 8
  %var.load256 = load ptr, ptr %var.cleaned, align 8
  %var.load257 = load i64, ptr %"var.st'", align 8
  %var.load258 = load i64, ptr %var.next_st, align 8
  %var.load259 = load i64, ptr %var.eff_indent, align 8
  %var.load260 = load i64, ptr %"var.tabs'", align 8
  %cmptmp261 = icmp sgt i64 %var.load260, 0
  %var.load262 = load i1, ptr %var.is_blank, align 1
  %var.load263 = load i1, ptr %var.is_comm, align 1
  %arena.cur264 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur264, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i1, i1, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load256, ptr %rec.fld, align 8
  %rec.fld265 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load257, ptr %rec.fld265, align 8
  %rec.fld266 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load258, ptr %rec.fld266, align 8
  %rec.fld267 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load259, ptr %rec.fld267, align 8
  %rec.fld268 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 4
  store i1 %cmptmp261, ptr %rec.fld268, align 1
  %rec.fld269 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 5
  store i1 %var.load262, ptr %rec.fld269, align 1
  %rec.fld270 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 6
  store i1 %var.load263, ptr %rec.fld270, align 1
  %a.load = load ptr, ptr %var.res, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

str_gen_check211:                                 ; preds = %and.488.then
  %arena.cur214 = call ptr @dva_arena_current()
  %tag.valid215 = call i1 @dva_arena_validate_tag(ptr %arena.cur214, i64 %str.tag209)
  br i1 %tag.valid215, label %str_ok212, label %str_stale213

str_ok212:                                        ; preds = %str_stale213, %str_gen_check211, %and.488.then
  %s.read.data216 = getelementptr inbounds { i64, ptr }, ptr %var.load205, i32 0, i32 1
  %s.read.data217 = load ptr, ptr %s.read.data216, align 8
  %var.load218 = load i64, ptr %"var.idx'", align 8
  %addtmp219 = add i64 %var.load218, 1
  %idx.neg220 = icmp slt i64 %addtmp219, 0
  br i1 %idx.neg220, label %idx_oob223, label %idx_big_check221

str_stale213:                                     ; preds = %str_gen_check211
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok212

idx_big_check221:                                 ; preds = %str_ok212
  %idx.big224 = icmp sge i64 %addtmp219, %s.read.len208
  br i1 %idx.big224, label %idx_oob223, label %idx_ok222

idx_ok222:                                        ; preds = %idx_oob223, %idx_big_check221
  %s.byte.gep225 = getelementptr i8, ptr %s.read.data217, i64 %addtmp219
  %s.byte226 = load i8, ptr %s.byte.gep225, align 1
  %s.byte.val227 = zext i8 %s.byte226 to i64
  %cmptmp228 = icmp eq i64 %s.byte.val227, 47
  br i1 %cmptmp228, label %or.489.then, label %or.489.else

idx_oob223:                                       ; preds = %idx_big_check221, %str_ok212
  %15 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok222

or.489.then:                                      ; preds = %idx_ok222
  br label %or.489.exit

or.489.else:                                      ; preds = %idx_ok222
  %var.load229 = load ptr, ptr %var.cleaned, align 8
  %s.read.len230 = getelementptr inbounds { i64, ptr }, ptr %var.load229, i32 0, i32 0
  %s.read.len231 = load i64, ptr %s.read.len230, align 8
  %s.read.len232 = and i64 %s.read.len231, 281474976710655
  %str.tag233 = lshr i64 %s.read.len231, 48
  %str.immortal234 = icmp eq i64 %str.tag233, 0
  br i1 %str.immortal234, label %str_ok236, label %str_gen_check235

or.489.exit:                                      ; preds = %idx_ok246, %or.489.then
  %or.489.phi = phi i1 [ %cmptmp228, %or.489.then ], [ %cmptmp252, %idx_ok246 ]
  br label %and.488.exit

str_gen_check235:                                 ; preds = %or.489.else
  %arena.cur238 = call ptr @dva_arena_current()
  %tag.valid239 = call i1 @dva_arena_validate_tag(ptr %arena.cur238, i64 %str.tag233)
  br i1 %tag.valid239, label %str_ok236, label %str_stale237

str_ok236:                                        ; preds = %str_stale237, %str_gen_check235, %or.489.else
  %s.read.data240 = getelementptr inbounds { i64, ptr }, ptr %var.load229, i32 0, i32 1
  %s.read.data241 = load ptr, ptr %s.read.data240, align 8
  %var.load242 = load i64, ptr %"var.idx'", align 8
  %addtmp243 = add i64 %var.load242, 1
  %idx.neg244 = icmp slt i64 %addtmp243, 0
  br i1 %idx.neg244, label %idx_oob247, label %idx_big_check245

str_stale237:                                     ; preds = %str_gen_check235
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok236

idx_big_check245:                                 ; preds = %str_ok236
  %idx.big248 = icmp sge i64 %addtmp243, %s.read.len232
  br i1 %idx.big248, label %idx_oob247, label %idx_ok246

idx_ok246:                                        ; preds = %idx_oob247, %idx_big_check245
  %s.byte.gep249 = getelementptr i8, ptr %s.read.data241, i64 %addtmp243
  %s.byte250 = load i8, ptr %s.byte.gep249, align 1
  %s.byte.val251 = zext i8 %s.byte250 to i64
  %cmptmp252 = icmp eq i64 %s.byte.val251, 42
  br label %or.489.exit

idx_oob247:                                       ; preds = %idx_big_check245, %str_ok236
  %17 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok246

a.create:                                         ; preds = %and.488.exit
  %arena.cur271 = call ptr @dva_arena_current()
  %a.create272 = call ptr @dva_arena_alloc(ptr %arena.cur271, i64 24)
  %arena.cur273 = call ptr @dva_arena_current()
  %a.buf274 = call ptr @dva_arena_alloc(ptr %arena.cur273, i64 128)
  %a.len.gep275 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create272, i32 0, i32 0
  store i64 0, ptr %a.len.gep275, align 8
  %a.data.gep276 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create272, i32 0, i32 1
  store ptr %a.buf274, ptr %a.data.gep276, align 8
  %a.cap.gep277 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create272, i32 0, i32 2
  store i64 16, ptr %a.cap.gep277, align 8
  store ptr %a.create272, ptr %var.res, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %and.488.exit
  %a.load2 = load ptr, ptr %var.res, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len278 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap279 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len278, %a.cap279
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data280 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len281 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data280, i64 %a.cur.len281
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len281, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load282 = load i64, ptr %var.next_st, align 8
  store i64 %var.load282, ptr %"var.st'", align 8
  br label %loop.latch.479

a.create288:                                      ; preds = %loop.exit.479
  %arena.cur290 = call ptr @dva_arena_current()
  %a.create291 = call ptr @dva_arena_alloc(ptr %arena.cur290, i64 24)
  %arena.cur292 = call ptr @dva_arena_current()
  %a.buf293 = call ptr @dva_arena_alloc(ptr %arena.cur292, i64 128)
  %a.len.gep294 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create291, i32 0, i32 0
  store i64 0, ptr %a.len.gep294, align 8
  %a.data.gep295 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create291, i32 0, i32 1
  store ptr %a.buf293, ptr %a.data.gep295, align 8
  %a.cap.gep296 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create291, i32 0, i32 2
  store i64 16, ptr %a.cap.gep296, align 8
  store ptr %a.create291, ptr %var.res, align 8
  br label %a.after289

a.after289:                                       ; preds = %a.create288, %loop.exit.479
  %a.load2297 = load ptr, ptr %var.res, align 8
  ret ptr %a.load2297
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define ptr @"formatter::format_code_body"(ptr %0) #1 {
entry:
  %var.is_annot_colon = alloca i1, align 1
  %var.prev_c = alloca i64, align 8
  %var.need_sp = alloca i1, align 1
  %var.c2 = alloca i64, align 8
  %var.c1 = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.490 = alloca i64, align 8
  %loop.idx.490 = alloca i64, align 8
  %"var.in_blk_comm'" = alloca i1, align 1
  %"var.in_rune'" = alloca i1, align 1
  %"var.str_triple'" = alloca i1, align 1
  %"var.in_str'" = alloca i1, align 1
  %"var.i'" = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.n = alloca i64, align 8
  %var.body = alloca ptr, align 8
  store ptr %0, ptr %var.body, align 8
  %var.load = load ptr, ptr %var.body, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load3 = load i64, ptr %var.n, align 8
  %addtmp = add i64 %var.load3, 16
  %arena.cur4 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 24)
  %cap.neg = icmp slt i64 %addtmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len5

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

b.buf.len5:                                       ; preds = %str_overflow_abort, %str_ok
  %arena.cur6 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  store i64 0, ptr %"var.i'", align 8
  store i1 false, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  store i1 false, ptr %"var.in_rune'", align 1
  store i1 false, ptr %"var.in_blk_comm'", align 1
  store i64 0, ptr %loop.idx.490, align 8
  br label %loop.header.490

str_overflow_abort:                               ; preds = %str_ok
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len5

loop.header.490:                                  ; preds = %loop.latch.490, %b.buf.len5
  %counter.load = load i64, ptr %loop.idx.490, align 8
  br label %loop.body.490

loop.body.490:                                    ; preds = %loop.header.490
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.490, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load7 = load i64, ptr %"var.i'", align 8
  %var.load8 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load7, %var.load8
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.490:                                ; No predecessors!
  br label %loop.exit.490

loop.latch.490:                                   ; preds = %choice.exit84
  %step.val = load i64, ptr %loop.step.490, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.490, align 8
  br label %loop.header.490

loop.exit.490:                                    ; preds = %choice.then, %loop.exit.nat.490
  %var.load967 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load967, i32 0, i32 0
  %b.freeze.len968 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load967, i32 0, i32 1
  %b.freeze.data969 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.then:                                      ; preds = %loop.body.490
  br label %loop.exit.490

choice.exit:                                      ; preds = %loop.body.490
  %var.load9 = load ptr, ptr %var.body, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %str.tag12 = lshr i64 %s.read.len10, 48
  %str.immortal13 = icmp eq i64 %str.tag12, 0
  br i1 %str.immortal13, label %str_ok15, label %str_gen_check14

str_gen_check14:                                  ; preds = %choice.exit
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %str.tag12)
  br i1 %tag.valid18, label %str_ok15, label %str_stale16

str_ok15:                                         ; preds = %str_stale16, %str_gen_check14, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.read.data19 = load ptr, ptr %s.read.data, align 8
  %var.load20 = load i64, ptr %"var.i'", align 8
  %idx.neg = icmp slt i64 %var.load20, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale16:                                      ; preds = %str_gen_check14
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok15

idx_big_check:                                    ; preds = %str_ok15
  %idx.big = icmp sge i64 %var.load20, %s.read.len11
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data19, i64 %var.load20
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load21 = load i64, ptr %"var.i'", align 8
  %addtmp22 = add i64 %var.load21, 1
  %var.load23 = load i64, ptr %var.n, align 8
  %cmptmp24 = icmp slt i64 %addtmp22, %var.load23
  br i1 %cmptmp24, label %choice.then25, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok15
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then25:                                    ; preds = %idx_ok
  %var.load27 = load ptr, ptr %var.body, align 8
  %s.read.len28 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %s.read.len29 = load i64, ptr %s.read.len28, align 8
  %s.read.len30 = and i64 %s.read.len29, 281474976710655
  %str.tag31 = lshr i64 %s.read.len29, 48
  %str.immortal32 = icmp eq i64 %str.tag31, 0
  br i1 %str.immortal32, label %str_ok34, label %str_gen_check33

choice.else:                                      ; preds = %idx_ok
  br label %choice.exit26

choice.exit26:                                    ; preds = %choice.else, %idx_ok44
  %choice.res = phi i64 [ %s.byte.val49, %idx_ok44 ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.c1, align 8
  %var.load50 = load i64, ptr %"var.i'", align 8
  %addtmp51 = add i64 %var.load50, 2
  %var.load52 = load i64, ptr %var.n, align 8
  %cmptmp53 = icmp slt i64 %addtmp51, %var.load52
  br i1 %cmptmp53, label %choice.then54, label %choice.else55

str_gen_check33:                                  ; preds = %choice.then25
  %arena.cur36 = call ptr @dva_arena_current()
  %tag.valid37 = call i1 @dva_arena_validate_tag(ptr %arena.cur36, i64 %str.tag31)
  br i1 %tag.valid37, label %str_ok34, label %str_stale35

str_ok34:                                         ; preds = %str_stale35, %str_gen_check33, %choice.then25
  %s.read.data38 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %s.read.data39 = load ptr, ptr %s.read.data38, align 8
  %var.load40 = load i64, ptr %"var.i'", align 8
  %addtmp41 = add i64 %var.load40, 1
  %idx.neg42 = icmp slt i64 %addtmp41, 0
  br i1 %idx.neg42, label %idx_oob45, label %idx_big_check43

str_stale35:                                      ; preds = %str_gen_check33
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok34

idx_big_check43:                                  ; preds = %str_ok34
  %idx.big46 = icmp sge i64 %addtmp41, %s.read.len30
  br i1 %idx.big46, label %idx_oob45, label %idx_ok44

idx_ok44:                                         ; preds = %idx_oob45, %idx_big_check43
  %s.byte.gep47 = getelementptr i8, ptr %s.read.data39, i64 %addtmp41
  %s.byte48 = load i8, ptr %s.byte.gep47, align 1
  %s.byte.val49 = zext i8 %s.byte48 to i64
  br label %choice.exit26

idx_oob45:                                        ; preds = %idx_big_check43, %str_ok34
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok44

choice.then54:                                    ; preds = %choice.exit26
  %var.load57 = load ptr, ptr %var.body, align 8
  %s.read.len58 = getelementptr inbounds { i64, ptr }, ptr %var.load57, i32 0, i32 0
  %s.read.len59 = load i64, ptr %s.read.len58, align 8
  %s.read.len60 = and i64 %s.read.len59, 281474976710655
  %str.tag61 = lshr i64 %s.read.len59, 48
  %str.immortal62 = icmp eq i64 %str.tag61, 0
  br i1 %str.immortal62, label %str_ok64, label %str_gen_check63

choice.else55:                                    ; preds = %choice.exit26
  br label %choice.exit56

choice.exit56:                                    ; preds = %choice.else55, %idx_ok74
  %choice.res80 = phi i64 [ %s.byte.val79, %idx_ok74 ], [ 0, %choice.else55 ]
  store i64 %choice.res80, ptr %var.c2, align 8
  %var.load81 = load i1, ptr %"var.in_blk_comm'", align 1
  br i1 %var.load81, label %choice.then82, label %choice.else83

str_gen_check63:                                  ; preds = %choice.then54
  %arena.cur66 = call ptr @dva_arena_current()
  %tag.valid67 = call i1 @dva_arena_validate_tag(ptr %arena.cur66, i64 %str.tag61)
  br i1 %tag.valid67, label %str_ok64, label %str_stale65

str_ok64:                                         ; preds = %str_stale65, %str_gen_check63, %choice.then54
  %s.read.data68 = getelementptr inbounds { i64, ptr }, ptr %var.load57, i32 0, i32 1
  %s.read.data69 = load ptr, ptr %s.read.data68, align 8
  %var.load70 = load i64, ptr %"var.i'", align 8
  %addtmp71 = add i64 %var.load70, 2
  %idx.neg72 = icmp slt i64 %addtmp71, 0
  br i1 %idx.neg72, label %idx_oob75, label %idx_big_check73

str_stale65:                                      ; preds = %str_gen_check63
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok64

idx_big_check73:                                  ; preds = %str_ok64
  %idx.big76 = icmp sge i64 %addtmp71, %s.read.len60
  br i1 %idx.big76, label %idx_oob75, label %idx_ok74

idx_ok74:                                         ; preds = %idx_oob75, %idx_big_check73
  %s.byte.gep77 = getelementptr i8, ptr %s.read.data69, i64 %addtmp71
  %s.byte78 = load i8, ptr %s.byte.gep77, align 1
  %s.byte.val79 = zext i8 %s.byte78 to i64
  br label %choice.exit56

idx_oob75:                                        ; preds = %idx_big_check73, %str_ok64
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok74

choice.then82:                                    ; preds = %choice.exit56
  %b.load = load ptr, ptr %var.b, align 8
  %var.load85 = load i64, ptr %var.c, align 8
  %b.b.ge0 = icmp sge i64 %var.load85, 0
  %b.b.le255 = icmp sle i64 %var.load85, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.else83:                                    ; preds = %choice.exit56
  %var.load147 = load i1, ptr %"var.in_rune'", align 1
  br i1 %var.load147, label %choice.then148, label %choice.else149

choice.exit84:                                    ; preds = %choice.exit150, %choice.exit103
  br label %loop.latch.490

b.byte_ok:                                        ; preds = %b.byte_err, %choice.then82
  %b.byte.i8 = trunc i64 %var.load85 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len86 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap87 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data88 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len86, %b.cap87
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.then82
  %9 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap87, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum89 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf90 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf90, label %str_overflow_abort92, label %b.new.buf.len91

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len91
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data94 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len95 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data94, i64 %b.cur.len95
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len95, 1
  %b.nul = getelementptr i8, ptr %b.cur.data94, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep96 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep96, align 8
  %var.load97 = load i64, ptr %var.c, align 8
  %cmptmp98 = icmp eq i64 %var.load97, 42
  br i1 %cmptmp98, label %and.491.then, label %and.491.else

b.new.buf.len91:                                  ; preds = %str_overflow_abort92, %b.grow
  %arena.cur93 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 %sum89)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data88, i64 %b.len86, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len86
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort92:                             ; preds = %b.grow
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len91

and.491.then:                                     ; preds = %b.push_done
  %var.load99 = load i64, ptr %var.c1, align 8
  %cmptmp100 = icmp eq i64 %var.load99, 47
  br label %and.491.exit

and.491.else:                                     ; preds = %b.push_done
  br label %and.491.exit

and.491.exit:                                     ; preds = %and.491.else, %and.491.then
  %and.491.phi = phi i1 [ %cmptmp100, %and.491.then ], [ %cmptmp98, %and.491.else ]
  br i1 %and.491.phi, label %choice.then101, label %choice.else102

choice.then101:                                   ; preds = %and.491.exit
  %b.load104 = load ptr, ptr %var.b, align 8
  %var.load105 = load i64, ptr %var.c1, align 8
  %b.b.ge0106 = icmp sge i64 %var.load105, 0
  %b.b.le255107 = icmp sle i64 %var.load105, 255
  %b.byte.range108 = and i1 %b.b.ge0106, %b.b.le255107
  br i1 %b.byte.range108, label %b.byte_ok109, label %b.byte_err110

choice.else102:                                   ; preds = %and.491.exit
  %var.load145 = load i64, ptr %"var.i'", align 8
  %addtmp146 = add i64 %var.load145, 1
  store i64 %addtmp146, ptr %"var.i'", align 8
  br label %choice.exit103

choice.exit103:                                   ; preds = %choice.else102, %b.push_done121
  br label %choice.exit84

b.byte_ok109:                                     ; preds = %b.byte_err110, %choice.then101
  %b.byte.i8111 = trunc i64 %var.load105 to i8
  %b.len112 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load104, i32 0, i32 0
  %b.len113 = load i64, ptr %b.len112, align 8
  %b.cap114 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load104, i32 0, i32 2
  %b.cap115 = load i64, ptr %b.cap114, align 8
  %b.data116 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load104, i32 0, i32 1
  %b.data117 = load ptr, ptr %b.data116, align 8
  %b.needs.grow118 = icmp eq i64 %b.len113, %b.cap115
  br i1 %b.needs.grow118, label %b.grow119, label %b.nogrow120

b.byte_err110:                                    ; preds = %choice.then101
  %11 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok109

b.grow119:                                        ; preds = %b.byte_ok109
  %b.cap2122 = mul i64 %b.cap115, 2
  %b.cap.small123 = icmp slt i64 %b.cap2122, 16
  %b.new.cap124 = select i1 %b.cap.small123, i64 16, i64 %b.cap2122
  %b.new.buf.len125 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap124, i64 1)
  %sum126 = extractvalue { i64, i1 } %b.new.buf.len125, 0
  %ovf127 = extractvalue { i64, i1 } %b.new.buf.len125, 1
  br i1 %ovf127, label %str_overflow_abort129, label %b.new.buf.len128

b.nogrow120:                                      ; preds = %b.byte_ok109
  br label %b.push_done121

b.push_done121:                                   ; preds = %b.nogrow120, %b.new.buf.len128
  %b.cur.data135 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load104, i32 0, i32 1
  %b.cur.data136 = load ptr, ptr %b.cur.data135, align 8
  %b.cur.len137 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load104, i32 0, i32 0
  %b.cur.len138 = load i64, ptr %b.cur.len137, align 8
  %b.byte.gep139 = getelementptr i8, ptr %b.cur.data136, i64 %b.cur.len138
  store i8 %b.byte.i8111, ptr %b.byte.gep139, align 1
  %b.next.len140 = add i64 %b.cur.len138, 1
  %b.nul141 = getelementptr i8, ptr %b.cur.data136, i64 %b.next.len140
  store i8 0, ptr %b.nul141, align 1
  %b.len.gep142 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load104, i32 0, i32 0
  store i64 %b.next.len140, ptr %b.len.gep142, align 8
  store i1 false, ptr %"var.in_blk_comm'", align 1
  %var.load143 = load i64, ptr %"var.i'", align 8
  %addtmp144 = add i64 %var.load143, 2
  store i64 %addtmp144, ptr %"var.i'", align 8
  br label %choice.exit103

b.new.buf.len128:                                 ; preds = %str_overflow_abort129, %b.grow119
  %arena.cur130 = call ptr @dva_arena_current()
  %b.new.buf131 = call ptr @dva_arena_alloc(ptr %arena.cur130, i64 %sum126)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf131, ptr align 1 %b.data117, i64 %b.len113, i1 false)
  %b.grow.nul132 = getelementptr i8, ptr %b.new.buf131, i64 %b.len113
  store i8 0, ptr %b.grow.nul132, align 1
  %b.new.data.gep133 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load104, i32 0, i32 1
  store ptr %b.new.buf131, ptr %b.new.data.gep133, align 8
  %b.new.cap.gep134 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load104, i32 0, i32 2
  store i64 %b.new.cap124, ptr %b.new.cap.gep134, align 8
  br label %b.push_done121

str_overflow_abort129:                            ; preds = %b.grow119
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len128

choice.then148:                                   ; preds = %choice.else83
  %b.load151 = load ptr, ptr %var.b, align 8
  %var.load152 = load i64, ptr %var.c, align 8
  %b.b.ge0153 = icmp sge i64 %var.load152, 0
  %b.b.le255154 = icmp sle i64 %var.load152, 255
  %b.byte.range155 = and i1 %b.b.ge0153, %b.b.le255154
  br i1 %b.byte.range155, label %b.byte_ok156, label %b.byte_err157

choice.else149:                                   ; preds = %choice.else83
  %var.load246 = load i1, ptr %"var.in_str'", align 1
  br i1 %var.load246, label %choice.then247, label %choice.else248

choice.exit150:                                   ; preds = %choice.exit249, %choice.exit198
  br label %choice.exit84

b.byte_ok156:                                     ; preds = %b.byte_err157, %choice.then148
  %b.byte.i8158 = trunc i64 %var.load152 to i8
  %b.len159 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 0
  %b.len160 = load i64, ptr %b.len159, align 8
  %b.cap161 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 2
  %b.cap162 = load i64, ptr %b.cap161, align 8
  %b.data163 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 1
  %b.data164 = load ptr, ptr %b.data163, align 8
  %b.needs.grow165 = icmp eq i64 %b.len160, %b.cap162
  br i1 %b.needs.grow165, label %b.grow166, label %b.nogrow167

b.byte_err157:                                    ; preds = %choice.then148
  %13 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok156

b.grow166:                                        ; preds = %b.byte_ok156
  %b.cap2169 = mul i64 %b.cap162, 2
  %b.cap.small170 = icmp slt i64 %b.cap2169, 16
  %b.new.cap171 = select i1 %b.cap.small170, i64 16, i64 %b.cap2169
  %b.new.buf.len172 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap171, i64 1)
  %sum173 = extractvalue { i64, i1 } %b.new.buf.len172, 0
  %ovf174 = extractvalue { i64, i1 } %b.new.buf.len172, 1
  br i1 %ovf174, label %str_overflow_abort176, label %b.new.buf.len175

b.nogrow167:                                      ; preds = %b.byte_ok156
  br label %b.push_done168

b.push_done168:                                   ; preds = %b.nogrow167, %b.new.buf.len175
  %b.cur.data182 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 1
  %b.cur.data183 = load ptr, ptr %b.cur.data182, align 8
  %b.cur.len184 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 0
  %b.cur.len185 = load i64, ptr %b.cur.len184, align 8
  %b.byte.gep186 = getelementptr i8, ptr %b.cur.data183, i64 %b.cur.len185
  store i8 %b.byte.i8158, ptr %b.byte.gep186, align 1
  %b.next.len187 = add i64 %b.cur.len185, 1
  %b.nul188 = getelementptr i8, ptr %b.cur.data183, i64 %b.next.len187
  store i8 0, ptr %b.nul188, align 1
  %b.len.gep189 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 0
  store i64 %b.next.len187, ptr %b.len.gep189, align 8
  %var.load190 = load i64, ptr %var.c, align 8
  %cmptmp191 = icmp eq i64 %var.load190, 92
  br i1 %cmptmp191, label %and.492.then, label %and.492.else

b.new.buf.len175:                                 ; preds = %str_overflow_abort176, %b.grow166
  %arena.cur177 = call ptr @dva_arena_current()
  %b.new.buf178 = call ptr @dva_arena_alloc(ptr %arena.cur177, i64 %sum173)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf178, ptr align 1 %b.data164, i64 %b.len160, i1 false)
  %b.grow.nul179 = getelementptr i8, ptr %b.new.buf178, i64 %b.len160
  store i8 0, ptr %b.grow.nul179, align 1
  %b.new.data.gep180 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 1
  store ptr %b.new.buf178, ptr %b.new.data.gep180, align 8
  %b.new.cap.gep181 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 2
  store i64 %b.new.cap171, ptr %b.new.cap.gep181, align 8
  br label %b.push_done168

str_overflow_abort176:                            ; preds = %b.grow166
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len175

and.492.then:                                     ; preds = %b.push_done168
  %var.load192 = load i64, ptr %"var.i'", align 8
  %addtmp193 = add i64 %var.load192, 1
  %var.load194 = load i64, ptr %var.n, align 8
  %cmptmp195 = icmp slt i64 %addtmp193, %var.load194
  br label %and.492.exit

and.492.else:                                     ; preds = %b.push_done168
  br label %and.492.exit

and.492.exit:                                     ; preds = %and.492.else, %and.492.then
  %and.492.phi = phi i1 [ %cmptmp195, %and.492.then ], [ %cmptmp191, %and.492.else ]
  br i1 %and.492.phi, label %choice.then196, label %choice.else197

choice.then196:                                   ; preds = %and.492.exit
  %b.load199 = load ptr, ptr %var.b, align 8
  %var.load200 = load i64, ptr %var.c1, align 8
  %b.b.ge0201 = icmp sge i64 %var.load200, 0
  %b.b.le255202 = icmp sle i64 %var.load200, 255
  %b.byte.range203 = and i1 %b.b.ge0201, %b.b.le255202
  br i1 %b.byte.range203, label %b.byte_ok204, label %b.byte_err205

choice.else197:                                   ; preds = %and.492.exit
  %var.load240 = load i64, ptr %var.c, align 8
  %cmptmp241 = icmp eq i64 %var.load240, 39
  br i1 %cmptmp241, label %choice.then242, label %choice.exit243

choice.exit198:                                   ; preds = %choice.exit243, %b.push_done216
  br label %choice.exit150

b.byte_ok204:                                     ; preds = %b.byte_err205, %choice.then196
  %b.byte.i8206 = trunc i64 %var.load200 to i8
  %b.len207 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 0
  %b.len208 = load i64, ptr %b.len207, align 8
  %b.cap209 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 2
  %b.cap210 = load i64, ptr %b.cap209, align 8
  %b.data211 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 1
  %b.data212 = load ptr, ptr %b.data211, align 8
  %b.needs.grow213 = icmp eq i64 %b.len208, %b.cap210
  br i1 %b.needs.grow213, label %b.grow214, label %b.nogrow215

b.byte_err205:                                    ; preds = %choice.then196
  %15 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok204

b.grow214:                                        ; preds = %b.byte_ok204
  %b.cap2217 = mul i64 %b.cap210, 2
  %b.cap.small218 = icmp slt i64 %b.cap2217, 16
  %b.new.cap219 = select i1 %b.cap.small218, i64 16, i64 %b.cap2217
  %b.new.buf.len220 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap219, i64 1)
  %sum221 = extractvalue { i64, i1 } %b.new.buf.len220, 0
  %ovf222 = extractvalue { i64, i1 } %b.new.buf.len220, 1
  br i1 %ovf222, label %str_overflow_abort224, label %b.new.buf.len223

b.nogrow215:                                      ; preds = %b.byte_ok204
  br label %b.push_done216

b.push_done216:                                   ; preds = %b.nogrow215, %b.new.buf.len223
  %b.cur.data230 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 1
  %b.cur.data231 = load ptr, ptr %b.cur.data230, align 8
  %b.cur.len232 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 0
  %b.cur.len233 = load i64, ptr %b.cur.len232, align 8
  %b.byte.gep234 = getelementptr i8, ptr %b.cur.data231, i64 %b.cur.len233
  store i8 %b.byte.i8206, ptr %b.byte.gep234, align 1
  %b.next.len235 = add i64 %b.cur.len233, 1
  %b.nul236 = getelementptr i8, ptr %b.cur.data231, i64 %b.next.len235
  store i8 0, ptr %b.nul236, align 1
  %b.len.gep237 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 0
  store i64 %b.next.len235, ptr %b.len.gep237, align 8
  %var.load238 = load i64, ptr %"var.i'", align 8
  %addtmp239 = add i64 %var.load238, 2
  store i64 %addtmp239, ptr %"var.i'", align 8
  br label %choice.exit198

b.new.buf.len223:                                 ; preds = %str_overflow_abort224, %b.grow214
  %arena.cur225 = call ptr @dva_arena_current()
  %b.new.buf226 = call ptr @dva_arena_alloc(ptr %arena.cur225, i64 %sum221)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf226, ptr align 1 %b.data212, i64 %b.len208, i1 false)
  %b.grow.nul227 = getelementptr i8, ptr %b.new.buf226, i64 %b.len208
  store i8 0, ptr %b.grow.nul227, align 1
  %b.new.data.gep228 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 1
  store ptr %b.new.buf226, ptr %b.new.data.gep228, align 8
  %b.new.cap.gep229 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 2
  store i64 %b.new.cap219, ptr %b.new.cap.gep229, align 8
  br label %b.push_done216

str_overflow_abort224:                            ; preds = %b.grow214
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len223

choice.then242:                                   ; preds = %choice.else197
  store i1 false, ptr %"var.in_rune'", align 1
  br label %choice.exit243

choice.exit243:                                   ; preds = %choice.then242, %choice.else197
  %var.load244 = load i64, ptr %"var.i'", align 8
  %addtmp245 = add i64 %var.load244, 1
  store i64 %addtmp245, ptr %"var.i'", align 8
  br label %choice.exit198

choice.then247:                                   ; preds = %choice.else149
  %b.load250 = load ptr, ptr %var.b, align 8
  %var.load251 = load i64, ptr %var.c, align 8
  %b.b.ge0252 = icmp sge i64 %var.load251, 0
  %b.b.le255253 = icmp sle i64 %var.load251, 255
  %b.byte.range254 = and i1 %b.b.ge0252, %b.b.le255253
  br i1 %b.byte.range254, label %b.byte_ok255, label %b.byte_err256

choice.else248:                                   ; preds = %choice.else149
  %var.load440 = load i64, ptr %var.c, align 8
  %cmptmp441 = icmp eq i64 %var.load440, 47
  br i1 %cmptmp441, label %and.496.then, label %and.496.else

choice.exit249:                                   ; preds = %choice.exit446, %choice.exit297
  br label %choice.exit150

b.byte_ok255:                                     ; preds = %b.byte_err256, %choice.then247
  %b.byte.i8257 = trunc i64 %var.load251 to i8
  %b.len258 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load250, i32 0, i32 0
  %b.len259 = load i64, ptr %b.len258, align 8
  %b.cap260 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load250, i32 0, i32 2
  %b.cap261 = load i64, ptr %b.cap260, align 8
  %b.data262 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load250, i32 0, i32 1
  %b.data263 = load ptr, ptr %b.data262, align 8
  %b.needs.grow264 = icmp eq i64 %b.len259, %b.cap261
  br i1 %b.needs.grow264, label %b.grow265, label %b.nogrow266

b.byte_err256:                                    ; preds = %choice.then247
  %17 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok255

b.grow265:                                        ; preds = %b.byte_ok255
  %b.cap2268 = mul i64 %b.cap261, 2
  %b.cap.small269 = icmp slt i64 %b.cap2268, 16
  %b.new.cap270 = select i1 %b.cap.small269, i64 16, i64 %b.cap2268
  %b.new.buf.len271 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap270, i64 1)
  %sum272 = extractvalue { i64, i1 } %b.new.buf.len271, 0
  %ovf273 = extractvalue { i64, i1 } %b.new.buf.len271, 1
  br i1 %ovf273, label %str_overflow_abort275, label %b.new.buf.len274

b.nogrow266:                                      ; preds = %b.byte_ok255
  br label %b.push_done267

b.push_done267:                                   ; preds = %b.nogrow266, %b.new.buf.len274
  %b.cur.data281 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load250, i32 0, i32 1
  %b.cur.data282 = load ptr, ptr %b.cur.data281, align 8
  %b.cur.len283 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load250, i32 0, i32 0
  %b.cur.len284 = load i64, ptr %b.cur.len283, align 8
  %b.byte.gep285 = getelementptr i8, ptr %b.cur.data282, i64 %b.cur.len284
  store i8 %b.byte.i8257, ptr %b.byte.gep285, align 1
  %b.next.len286 = add i64 %b.cur.len284, 1
  %b.nul287 = getelementptr i8, ptr %b.cur.data282, i64 %b.next.len286
  store i8 0, ptr %b.nul287, align 1
  %b.len.gep288 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load250, i32 0, i32 0
  store i64 %b.next.len286, ptr %b.len.gep288, align 8
  %var.load289 = load i64, ptr %var.c, align 8
  %cmptmp290 = icmp eq i64 %var.load289, 92
  br i1 %cmptmp290, label %and.493.then, label %and.493.else

b.new.buf.len274:                                 ; preds = %str_overflow_abort275, %b.grow265
  %arena.cur276 = call ptr @dva_arena_current()
  %b.new.buf277 = call ptr @dva_arena_alloc(ptr %arena.cur276, i64 %sum272)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf277, ptr align 1 %b.data263, i64 %b.len259, i1 false)
  %b.grow.nul278 = getelementptr i8, ptr %b.new.buf277, i64 %b.len259
  store i8 0, ptr %b.grow.nul278, align 1
  %b.new.data.gep279 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load250, i32 0, i32 1
  store ptr %b.new.buf277, ptr %b.new.data.gep279, align 8
  %b.new.cap.gep280 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load250, i32 0, i32 2
  store i64 %b.new.cap270, ptr %b.new.cap.gep280, align 8
  br label %b.push_done267

str_overflow_abort275:                            ; preds = %b.grow265
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len274

and.493.then:                                     ; preds = %b.push_done267
  %var.load291 = load i64, ptr %"var.i'", align 8
  %addtmp292 = add i64 %var.load291, 1
  %var.load293 = load i64, ptr %var.n, align 8
  %cmptmp294 = icmp slt i64 %addtmp292, %var.load293
  br label %and.493.exit

and.493.else:                                     ; preds = %b.push_done267
  br label %and.493.exit

and.493.exit:                                     ; preds = %and.493.else, %and.493.then
  %and.493.phi = phi i1 [ %cmptmp294, %and.493.then ], [ %cmptmp290, %and.493.else ]
  br i1 %and.493.phi, label %choice.then295, label %choice.else296

choice.then295:                                   ; preds = %and.493.exit
  %b.load298 = load ptr, ptr %var.b, align 8
  %var.load299 = load i64, ptr %var.c1, align 8
  %b.b.ge0300 = icmp sge i64 %var.load299, 0
  %b.b.le255301 = icmp sle i64 %var.load299, 255
  %b.byte.range302 = and i1 %b.b.ge0300, %b.b.le255301
  br i1 %b.byte.range302, label %b.byte_ok303, label %b.byte_err304

choice.else296:                                   ; preds = %and.493.exit
  %var.load339 = load i1, ptr %"var.str_triple'", align 1
  br i1 %var.load339, label %choice.then340, label %choice.else341

choice.exit297:                                   ; preds = %choice.exit342, %b.push_done315
  br label %choice.exit249

b.byte_ok303:                                     ; preds = %b.byte_err304, %choice.then295
  %b.byte.i8305 = trunc i64 %var.load299 to i8
  %b.len306 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load298, i32 0, i32 0
  %b.len307 = load i64, ptr %b.len306, align 8
  %b.cap308 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load298, i32 0, i32 2
  %b.cap309 = load i64, ptr %b.cap308, align 8
  %b.data310 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load298, i32 0, i32 1
  %b.data311 = load ptr, ptr %b.data310, align 8
  %b.needs.grow312 = icmp eq i64 %b.len307, %b.cap309
  br i1 %b.needs.grow312, label %b.grow313, label %b.nogrow314

b.byte_err304:                                    ; preds = %choice.then295
  %19 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok303

b.grow313:                                        ; preds = %b.byte_ok303
  %b.cap2316 = mul i64 %b.cap309, 2
  %b.cap.small317 = icmp slt i64 %b.cap2316, 16
  %b.new.cap318 = select i1 %b.cap.small317, i64 16, i64 %b.cap2316
  %b.new.buf.len319 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap318, i64 1)
  %sum320 = extractvalue { i64, i1 } %b.new.buf.len319, 0
  %ovf321 = extractvalue { i64, i1 } %b.new.buf.len319, 1
  br i1 %ovf321, label %str_overflow_abort323, label %b.new.buf.len322

b.nogrow314:                                      ; preds = %b.byte_ok303
  br label %b.push_done315

b.push_done315:                                   ; preds = %b.nogrow314, %b.new.buf.len322
  %b.cur.data329 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load298, i32 0, i32 1
  %b.cur.data330 = load ptr, ptr %b.cur.data329, align 8
  %b.cur.len331 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load298, i32 0, i32 0
  %b.cur.len332 = load i64, ptr %b.cur.len331, align 8
  %b.byte.gep333 = getelementptr i8, ptr %b.cur.data330, i64 %b.cur.len332
  store i8 %b.byte.i8305, ptr %b.byte.gep333, align 1
  %b.next.len334 = add i64 %b.cur.len332, 1
  %b.nul335 = getelementptr i8, ptr %b.cur.data330, i64 %b.next.len334
  store i8 0, ptr %b.nul335, align 1
  %b.len.gep336 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load298, i32 0, i32 0
  store i64 %b.next.len334, ptr %b.len.gep336, align 8
  %var.load337 = load i64, ptr %"var.i'", align 8
  %addtmp338 = add i64 %var.load337, 2
  store i64 %addtmp338, ptr %"var.i'", align 8
  br label %choice.exit297

b.new.buf.len322:                                 ; preds = %str_overflow_abort323, %b.grow313
  %arena.cur324 = call ptr @dva_arena_current()
  %b.new.buf325 = call ptr @dva_arena_alloc(ptr %arena.cur324, i64 %sum320)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf325, ptr align 1 %b.data311, i64 %b.len307, i1 false)
  %b.grow.nul326 = getelementptr i8, ptr %b.new.buf325, i64 %b.len307
  store i8 0, ptr %b.grow.nul326, align 1
  %b.new.data.gep327 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load298, i32 0, i32 1
  store ptr %b.new.buf325, ptr %b.new.data.gep327, align 8
  %b.new.cap.gep328 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load298, i32 0, i32 2
  store i64 %b.new.cap318, ptr %b.new.cap.gep328, align 8
  br label %b.push_done315

str_overflow_abort323:                            ; preds = %b.grow313
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len322

choice.then340:                                   ; preds = %choice.else296
  %var.load343 = load i64, ptr %var.c, align 8
  %cmptmp344 = icmp eq i64 %var.load343, 34
  br i1 %cmptmp344, label %and.494.then, label %and.494.else

choice.else341:                                   ; preds = %choice.else296
  %var.load434 = load i64, ptr %var.c, align 8
  %cmptmp435 = icmp eq i64 %var.load434, 34
  br i1 %cmptmp435, label %choice.then436, label %choice.exit437

choice.exit342:                                   ; preds = %choice.exit437, %choice.exit351
  br label %choice.exit297

and.494.then:                                     ; preds = %choice.then340
  %var.load345 = load i64, ptr %var.c1, align 8
  %cmptmp346 = icmp eq i64 %var.load345, 34
  br label %and.494.exit

and.494.else:                                     ; preds = %choice.then340
  br label %and.494.exit

and.494.exit:                                     ; preds = %and.494.else, %and.494.then
  %and.494.phi = phi i1 [ %cmptmp346, %and.494.then ], [ %cmptmp344, %and.494.else ]
  br i1 %and.494.phi, label %and.495.then, label %and.495.else

and.495.then:                                     ; preds = %and.494.exit
  %var.load347 = load i64, ptr %var.c2, align 8
  %cmptmp348 = icmp eq i64 %var.load347, 34
  br label %and.495.exit

and.495.else:                                     ; preds = %and.494.exit
  br label %and.495.exit

and.495.exit:                                     ; preds = %and.495.else, %and.495.then
  %and.495.phi = phi i1 [ %cmptmp348, %and.495.then ], [ %and.494.phi, %and.495.else ]
  br i1 %and.495.phi, label %choice.then349, label %choice.else350

choice.then349:                                   ; preds = %and.495.exit
  %b.load352 = load ptr, ptr %var.b, align 8
  %var.load353 = load i64, ptr %var.c1, align 8
  %b.b.ge0354 = icmp sge i64 %var.load353, 0
  %b.b.le255355 = icmp sle i64 %var.load353, 255
  %b.byte.range356 = and i1 %b.b.ge0354, %b.b.le255355
  br i1 %b.byte.range356, label %b.byte_ok357, label %b.byte_err358

choice.else350:                                   ; preds = %and.495.exit
  %var.load432 = load i64, ptr %"var.i'", align 8
  %addtmp433 = add i64 %var.load432, 1
  store i64 %addtmp433, ptr %"var.i'", align 8
  br label %choice.exit351

choice.exit351:                                   ; preds = %choice.else350, %b.push_done408
  br label %choice.exit342

b.byte_ok357:                                     ; preds = %b.byte_err358, %choice.then349
  %b.byte.i8359 = trunc i64 %var.load353 to i8
  %b.len360 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load352, i32 0, i32 0
  %b.len361 = load i64, ptr %b.len360, align 8
  %b.cap362 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load352, i32 0, i32 2
  %b.cap363 = load i64, ptr %b.cap362, align 8
  %b.data364 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load352, i32 0, i32 1
  %b.data365 = load ptr, ptr %b.data364, align 8
  %b.needs.grow366 = icmp eq i64 %b.len361, %b.cap363
  br i1 %b.needs.grow366, label %b.grow367, label %b.nogrow368

b.byte_err358:                                    ; preds = %choice.then349
  %21 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok357

b.grow367:                                        ; preds = %b.byte_ok357
  %b.cap2370 = mul i64 %b.cap363, 2
  %b.cap.small371 = icmp slt i64 %b.cap2370, 16
  %b.new.cap372 = select i1 %b.cap.small371, i64 16, i64 %b.cap2370
  %b.new.buf.len373 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap372, i64 1)
  %sum374 = extractvalue { i64, i1 } %b.new.buf.len373, 0
  %ovf375 = extractvalue { i64, i1 } %b.new.buf.len373, 1
  br i1 %ovf375, label %str_overflow_abort377, label %b.new.buf.len376

b.nogrow368:                                      ; preds = %b.byte_ok357
  br label %b.push_done369

b.push_done369:                                   ; preds = %b.nogrow368, %b.new.buf.len376
  %b.cur.data383 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load352, i32 0, i32 1
  %b.cur.data384 = load ptr, ptr %b.cur.data383, align 8
  %b.cur.len385 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load352, i32 0, i32 0
  %b.cur.len386 = load i64, ptr %b.cur.len385, align 8
  %b.byte.gep387 = getelementptr i8, ptr %b.cur.data384, i64 %b.cur.len386
  store i8 %b.byte.i8359, ptr %b.byte.gep387, align 1
  %b.next.len388 = add i64 %b.cur.len386, 1
  %b.nul389 = getelementptr i8, ptr %b.cur.data384, i64 %b.next.len388
  store i8 0, ptr %b.nul389, align 1
  %b.len.gep390 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load352, i32 0, i32 0
  store i64 %b.next.len388, ptr %b.len.gep390, align 8
  %b.load391 = load ptr, ptr %var.b, align 8
  %var.load392 = load i64, ptr %var.c2, align 8
  %b.b.ge0393 = icmp sge i64 %var.load392, 0
  %b.b.le255394 = icmp sle i64 %var.load392, 255
  %b.byte.range395 = and i1 %b.b.ge0393, %b.b.le255394
  br i1 %b.byte.range395, label %b.byte_ok396, label %b.byte_err397

b.new.buf.len376:                                 ; preds = %str_overflow_abort377, %b.grow367
  %arena.cur378 = call ptr @dva_arena_current()
  %b.new.buf379 = call ptr @dva_arena_alloc(ptr %arena.cur378, i64 %sum374)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf379, ptr align 1 %b.data365, i64 %b.len361, i1 false)
  %b.grow.nul380 = getelementptr i8, ptr %b.new.buf379, i64 %b.len361
  store i8 0, ptr %b.grow.nul380, align 1
  %b.new.data.gep381 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load352, i32 0, i32 1
  store ptr %b.new.buf379, ptr %b.new.data.gep381, align 8
  %b.new.cap.gep382 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load352, i32 0, i32 2
  store i64 %b.new.cap372, ptr %b.new.cap.gep382, align 8
  br label %b.push_done369

str_overflow_abort377:                            ; preds = %b.grow367
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len376

b.byte_ok396:                                     ; preds = %b.byte_err397, %b.push_done369
  %b.byte.i8398 = trunc i64 %var.load392 to i8
  %b.len399 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 0
  %b.len400 = load i64, ptr %b.len399, align 8
  %b.cap401 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 2
  %b.cap402 = load i64, ptr %b.cap401, align 8
  %b.data403 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 1
  %b.data404 = load ptr, ptr %b.data403, align 8
  %b.needs.grow405 = icmp eq i64 %b.len400, %b.cap402
  br i1 %b.needs.grow405, label %b.grow406, label %b.nogrow407

b.byte_err397:                                    ; preds = %b.push_done369
  %23 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok396

b.grow406:                                        ; preds = %b.byte_ok396
  %b.cap2409 = mul i64 %b.cap402, 2
  %b.cap.small410 = icmp slt i64 %b.cap2409, 16
  %b.new.cap411 = select i1 %b.cap.small410, i64 16, i64 %b.cap2409
  %b.new.buf.len412 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap411, i64 1)
  %sum413 = extractvalue { i64, i1 } %b.new.buf.len412, 0
  %ovf414 = extractvalue { i64, i1 } %b.new.buf.len412, 1
  br i1 %ovf414, label %str_overflow_abort416, label %b.new.buf.len415

b.nogrow407:                                      ; preds = %b.byte_ok396
  br label %b.push_done408

b.push_done408:                                   ; preds = %b.nogrow407, %b.new.buf.len415
  %b.cur.data422 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 1
  %b.cur.data423 = load ptr, ptr %b.cur.data422, align 8
  %b.cur.len424 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 0
  %b.cur.len425 = load i64, ptr %b.cur.len424, align 8
  %b.byte.gep426 = getelementptr i8, ptr %b.cur.data423, i64 %b.cur.len425
  store i8 %b.byte.i8398, ptr %b.byte.gep426, align 1
  %b.next.len427 = add i64 %b.cur.len425, 1
  %b.nul428 = getelementptr i8, ptr %b.cur.data423, i64 %b.next.len427
  store i8 0, ptr %b.nul428, align 1
  %b.len.gep429 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 0
  store i64 %b.next.len427, ptr %b.len.gep429, align 8
  store i1 false, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  %var.load430 = load i64, ptr %"var.i'", align 8
  %addtmp431 = add i64 %var.load430, 3
  store i64 %addtmp431, ptr %"var.i'", align 8
  br label %choice.exit351

b.new.buf.len415:                                 ; preds = %str_overflow_abort416, %b.grow406
  %arena.cur417 = call ptr @dva_arena_current()
  %b.new.buf418 = call ptr @dva_arena_alloc(ptr %arena.cur417, i64 %sum413)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf418, ptr align 1 %b.data404, i64 %b.len400, i1 false)
  %b.grow.nul419 = getelementptr i8, ptr %b.new.buf418, i64 %b.len400
  store i8 0, ptr %b.grow.nul419, align 1
  %b.new.data.gep420 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 1
  store ptr %b.new.buf418, ptr %b.new.data.gep420, align 8
  %b.new.cap.gep421 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 2
  store i64 %b.new.cap411, ptr %b.new.cap.gep421, align 8
  br label %b.push_done408

str_overflow_abort416:                            ; preds = %b.grow406
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len415

choice.then436:                                   ; preds = %choice.else341
  store i1 false, ptr %"var.in_str'", align 1
  br label %choice.exit437

choice.exit437:                                   ; preds = %choice.then436, %choice.else341
  %var.load438 = load i64, ptr %"var.i'", align 8
  %addtmp439 = add i64 %var.load438, 1
  store i64 %addtmp439, ptr %"var.i'", align 8
  br label %choice.exit342

and.496.then:                                     ; preds = %choice.else248
  %var.load442 = load i64, ptr %var.c1, align 8
  %cmptmp443 = icmp eq i64 %var.load442, 47
  br label %and.496.exit

and.496.else:                                     ; preds = %choice.else248
  br label %and.496.exit

and.496.exit:                                     ; preds = %and.496.else, %and.496.then
  %and.496.phi = phi i1 [ %cmptmp443, %and.496.then ], [ %cmptmp441, %and.496.else ]
  br i1 %and.496.phi, label %choice.then444, label %choice.else445

choice.then444:                                   ; preds = %and.496.exit
  %b.load447 = load ptr, ptr %var.b, align 8
  %var.load448 = load ptr, ptr %var.body, align 8
  %s.read.len449 = getelementptr inbounds { i64, ptr }, ptr %var.load448, i32 0, i32 0
  %s.read.len450 = load i64, ptr %s.read.len449, align 8
  %s.read.len451 = and i64 %s.read.len450, 281474976710655
  %str.tag452 = lshr i64 %s.read.len450, 48
  %str.immortal453 = icmp eq i64 %str.tag452, 0
  br i1 %str.immortal453, label %str_ok455, label %str_gen_check454

choice.else445:                                   ; preds = %and.496.exit
  %var.load494 = load i64, ptr %var.c, align 8
  %cmptmp495 = icmp eq i64 %var.load494, 47
  br i1 %cmptmp495, label %and.497.then, label %and.497.else

choice.exit446:                                   ; preds = %choice.exit500, %b.grow_done
  br label %choice.exit249

str_gen_check454:                                 ; preds = %choice.then444
  %arena.cur457 = call ptr @dva_arena_current()
  %tag.valid458 = call i1 @dva_arena_validate_tag(ptr %arena.cur457, i64 %str.tag452)
  br i1 %tag.valid458, label %str_ok455, label %str_stale456

str_ok455:                                        ; preds = %str_stale456, %str_gen_check454, %choice.then444
  %s.read.data459 = getelementptr inbounds { i64, ptr }, ptr %var.load448, i32 0, i32 1
  %s.read.data460 = load ptr, ptr %s.read.data459, align 8
  %var.load461 = load i64, ptr %"var.i'", align 8
  %var.load462 = load i64, ptr %var.n, align 8
  %start.is_neg = icmp slt i64 %var.load461, 0
  %rel.start = add i64 %s.read.len451, %var.load461
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load461
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len451
  %final.start = select i1 %start.gt.len, i64 %s.read.len451, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load462, 0
  %rel.end = add i64 %s.read.len451, %var.load462
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load462
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len451
  %final.end = select i1 %end.gt.len, i64 %s.read.len451, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data460, i64 %final.start
  %arena.cur463 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur463, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %app.str.len464 = load i64, ptr %app.str.len, align 8
  %app.str.len465 = and i64 %app.str.len464, 281474976710655
  %str.tag466 = lshr i64 %app.str.len464, 48
  %str.immortal467 = icmp eq i64 %str.tag466, 0
  br i1 %str.immortal467, label %str_ok469, label %str_gen_check468

str_stale456:                                     ; preds = %str_gen_check454
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok455

str_gen_check468:                                 ; preds = %str_ok455
  %arena.cur471 = call ptr @dva_arena_current()
  %tag.valid472 = call i1 @dva_arena_validate_tag(ptr %arena.cur471, i64 %str.tag466)
  br i1 %tag.valid472, label %str_ok469, label %str_stale470

str_ok469:                                        ; preds = %str_stale470, %str_gen_check468, %str_ok455
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load447, i32 0, i32 0
  %b.app.cur.len473 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len473, i64 %app.str.len465)
  %sum474 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf475 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf475, label %str_overflow_abort477, label %b.app.new.len476

str_stale470:                                     ; preds = %str_gen_check468
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok469

b.app.new.len476:                                 ; preds = %str_overflow_abort477, %str_ok469
  %b.cap478 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load447, i32 0, i32 2
  %b.cap479 = load i64, ptr %b.cap478, align 8
  %b.need.grow = icmp slt i64 %b.cap479, %sum474
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort477:                            ; preds = %str_ok469
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len476

b.grow2:                                          ; preds = %b.app.new.len476
  %b.cap2480 = mul i64 %b.cap479, 2
  %b.cap.small481 = icmp slt i64 %b.cap2480, 16
  %b.cap.grow = select i1 %b.cap.small481, i64 16, i64 %b.cap2480
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum474
  %b.new.cap482 = select i1 %b.cap.need, i64 %sum474, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load447, i32 0, i32 0
  %b.cur.len2483 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load447, i32 0, i32 1
  %b.cur.data2484 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap482, i64 1)
  %sum485 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf486 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf486, label %str_overflow_abort488, label %b.new.buf.len2487

b.nogrow2:                                        ; preds = %b.app.new.len476
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2487
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %app.str.data490 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load447, i32 0, i32 1
  %b.app.data491 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data491, i64 %b.app.cur.len473
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data490, i64 %app.str.len465, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data491, i64 %sum474
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep492 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load447, i32 0, i32 0
  store i64 %sum474, ptr %b.len.gep492, align 8
  %var.load493 = load i64, ptr %var.n, align 8
  store i64 %var.load493, ptr %"var.i'", align 8
  br label %choice.exit446

b.new.buf.len2487:                                ; preds = %str_overflow_abort488, %b.grow2
  %arena.cur489 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur489, i64 %sum485)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2484, i64 %b.cur.len2483, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2483
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load447, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load447, i32 0, i32 2
  store i64 %b.new.cap482, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort488:                            ; preds = %b.grow2
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2487

and.497.then:                                     ; preds = %choice.else445
  %var.load496 = load i64, ptr %var.c1, align 8
  %cmptmp497 = icmp eq i64 %var.load496, 42
  br label %and.497.exit

and.497.else:                                     ; preds = %choice.else445
  br label %and.497.exit

and.497.exit:                                     ; preds = %and.497.else, %and.497.then
  %and.497.phi = phi i1 [ %cmptmp497, %and.497.then ], [ %cmptmp495, %and.497.else ]
  br i1 %and.497.phi, label %choice.then498, label %choice.else499

choice.then498:                                   ; preds = %and.497.exit
  %b.load501 = load ptr, ptr %var.b, align 8
  %app.str.len502 = load i64, ptr @str.0.struct, align 8
  %app.str.len503 = and i64 %app.str.len502, 281474976710655
  %str.tag504 = lshr i64 %app.str.len502, 48
  %str.immortal505 = icmp eq i64 %str.tag504, 0
  br i1 %str.immortal505, label %str_ok507, label %str_gen_check506

choice.else499:                                   ; preds = %and.497.exit
  %var.load551 = load i64, ptr %var.c, align 8
  %cmptmp552 = icmp eq i64 %var.load551, 39
  br i1 %cmptmp552, label %choice.then553, label %choice.else554

choice.exit500:                                   ; preds = %choice.exit555, %b.grow_done523
  br label %choice.exit446

str_gen_check506:                                 ; preds = %choice.then498
  %arena.cur509 = call ptr @dva_arena_current()
  %tag.valid510 = call i1 @dva_arena_validate_tag(ptr %arena.cur509, i64 %str.tag504)
  br i1 %tag.valid510, label %str_ok507, label %str_stale508

str_ok507:                                        ; preds = %str_stale508, %str_gen_check506, %choice.then498
  %b.app.cur.len511 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load501, i32 0, i32 0
  %b.app.cur.len512 = load i64, ptr %b.app.cur.len511, align 8
  %b.app.new.len513 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len512, i64 %app.str.len503)
  %sum514 = extractvalue { i64, i1 } %b.app.new.len513, 0
  %ovf515 = extractvalue { i64, i1 } %b.app.new.len513, 1
  br i1 %ovf515, label %str_overflow_abort517, label %b.app.new.len516

str_stale508:                                     ; preds = %str_gen_check506
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok507

b.app.new.len516:                                 ; preds = %str_overflow_abort517, %str_ok507
  %b.cap518 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load501, i32 0, i32 2
  %b.cap519 = load i64, ptr %b.cap518, align 8
  %b.need.grow520 = icmp slt i64 %b.cap519, %sum514
  br i1 %b.need.grow520, label %b.grow2521, label %b.nogrow2522

str_overflow_abort517:                            ; preds = %str_ok507
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len516

b.grow2521:                                       ; preds = %b.app.new.len516
  %b.cap2524 = mul i64 %b.cap519, 2
  %b.cap.small525 = icmp slt i64 %b.cap2524, 16
  %b.cap.grow526 = select i1 %b.cap.small525, i64 16, i64 %b.cap2524
  %b.cap.need527 = icmp slt i64 %b.cap.grow526, %sum514
  %b.new.cap528 = select i1 %b.cap.need527, i64 %sum514, i64 %b.cap.grow526
  %b.cur.len2529 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load501, i32 0, i32 0
  %b.cur.len2530 = load i64, ptr %b.cur.len2529, align 8
  %b.cur.data2531 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load501, i32 0, i32 1
  %b.cur.data2532 = load ptr, ptr %b.cur.data2531, align 8
  %b.new.buf.len2533 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap528, i64 1)
  %sum534 = extractvalue { i64, i1 } %b.new.buf.len2533, 0
  %ovf535 = extractvalue { i64, i1 } %b.new.buf.len2533, 1
  br i1 %ovf535, label %str_overflow_abort537, label %b.new.buf.len2536

b.nogrow2522:                                     ; preds = %b.app.new.len516
  br label %b.grow_done523

b.grow_done523:                                   ; preds = %b.nogrow2522, %b.new.buf.len2536
  %app.str.data543 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %b.app.data544 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load501, i32 0, i32 1
  %b.app.data545 = load ptr, ptr %b.app.data544, align 8
  %b.app.dst546 = getelementptr i8, ptr %b.app.data545, i64 %b.app.cur.len512
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst546, ptr align 1 %app.str.data543, i64 %app.str.len503, i1 false)
  %b.app.nul547 = getelementptr i8, ptr %b.app.data545, i64 %sum514
  store i8 0, ptr %b.app.nul547, align 1
  %b.len.gep548 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load501, i32 0, i32 0
  store i64 %sum514, ptr %b.len.gep548, align 8
  store i1 true, ptr %"var.in_blk_comm'", align 1
  %var.load549 = load i64, ptr %"var.i'", align 8
  %addtmp550 = add i64 %var.load549, 2
  store i64 %addtmp550, ptr %"var.i'", align 8
  br label %choice.exit500

b.new.buf.len2536:                                ; preds = %str_overflow_abort537, %b.grow2521
  %arena.cur538 = call ptr @dva_arena_current()
  %b.new.buf2539 = call ptr @dva_arena_alloc(ptr %arena.cur538, i64 %sum534)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2539, ptr align 1 %b.cur.data2532, i64 %b.cur.len2530, i1 false)
  %b.grow2.nul540 = getelementptr i8, ptr %b.new.buf2539, i64 %b.cur.len2530
  store i8 0, ptr %b.grow2.nul540, align 1
  %b.new.data2.gep541 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load501, i32 0, i32 1
  store ptr %b.new.buf2539, ptr %b.new.data2.gep541, align 8
  %b.new.cap2.gep542 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load501, i32 0, i32 2
  store i64 %b.new.cap528, ptr %b.new.cap2.gep542, align 8
  br label %b.grow_done523

str_overflow_abort537:                            ; preds = %b.grow2521
  %31 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2536

choice.then553:                                   ; preds = %choice.else499
  %b.load556 = load ptr, ptr %var.b, align 8
  %var.load557 = load i64, ptr %var.c, align 8
  %b.b.ge0558 = icmp sge i64 %var.load557, 0
  %b.b.le255559 = icmp sle i64 %var.load557, 255
  %b.byte.range560 = and i1 %b.b.ge0558, %b.b.le255559
  br i1 %b.byte.range560, label %b.byte_ok561, label %b.byte_err562

choice.else554:                                   ; preds = %choice.else499
  %var.load597 = load i64, ptr %var.c, align 8
  %cmptmp598 = icmp eq i64 %var.load597, 34
  br i1 %cmptmp598, label %choice.then599, label %choice.else600

choice.exit555:                                   ; preds = %choice.exit601, %b.push_done573
  br label %choice.exit500

b.byte_ok561:                                     ; preds = %b.byte_err562, %choice.then553
  %b.byte.i8563 = trunc i64 %var.load557 to i8
  %b.len564 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load556, i32 0, i32 0
  %b.len565 = load i64, ptr %b.len564, align 8
  %b.cap566 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load556, i32 0, i32 2
  %b.cap567 = load i64, ptr %b.cap566, align 8
  %b.data568 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load556, i32 0, i32 1
  %b.data569 = load ptr, ptr %b.data568, align 8
  %b.needs.grow570 = icmp eq i64 %b.len565, %b.cap567
  br i1 %b.needs.grow570, label %b.grow571, label %b.nogrow572

b.byte_err562:                                    ; preds = %choice.then553
  %32 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok561

b.grow571:                                        ; preds = %b.byte_ok561
  %b.cap2574 = mul i64 %b.cap567, 2
  %b.cap.small575 = icmp slt i64 %b.cap2574, 16
  %b.new.cap576 = select i1 %b.cap.small575, i64 16, i64 %b.cap2574
  %b.new.buf.len577 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap576, i64 1)
  %sum578 = extractvalue { i64, i1 } %b.new.buf.len577, 0
  %ovf579 = extractvalue { i64, i1 } %b.new.buf.len577, 1
  br i1 %ovf579, label %str_overflow_abort581, label %b.new.buf.len580

b.nogrow572:                                      ; preds = %b.byte_ok561
  br label %b.push_done573

b.push_done573:                                   ; preds = %b.nogrow572, %b.new.buf.len580
  %b.cur.data587 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load556, i32 0, i32 1
  %b.cur.data588 = load ptr, ptr %b.cur.data587, align 8
  %b.cur.len589 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load556, i32 0, i32 0
  %b.cur.len590 = load i64, ptr %b.cur.len589, align 8
  %b.byte.gep591 = getelementptr i8, ptr %b.cur.data588, i64 %b.cur.len590
  store i8 %b.byte.i8563, ptr %b.byte.gep591, align 1
  %b.next.len592 = add i64 %b.cur.len590, 1
  %b.nul593 = getelementptr i8, ptr %b.cur.data588, i64 %b.next.len592
  store i8 0, ptr %b.nul593, align 1
  %b.len.gep594 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load556, i32 0, i32 0
  store i64 %b.next.len592, ptr %b.len.gep594, align 8
  store i1 true, ptr %"var.in_rune'", align 1
  %var.load595 = load i64, ptr %"var.i'", align 8
  %addtmp596 = add i64 %var.load595, 1
  store i64 %addtmp596, ptr %"var.i'", align 8
  br label %choice.exit555

b.new.buf.len580:                                 ; preds = %str_overflow_abort581, %b.grow571
  %arena.cur582 = call ptr @dva_arena_current()
  %b.new.buf583 = call ptr @dva_arena_alloc(ptr %arena.cur582, i64 %sum578)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf583, ptr align 1 %b.data569, i64 %b.len565, i1 false)
  %b.grow.nul584 = getelementptr i8, ptr %b.new.buf583, i64 %b.len565
  store i8 0, ptr %b.grow.nul584, align 1
  %b.new.data.gep585 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load556, i32 0, i32 1
  store ptr %b.new.buf583, ptr %b.new.data.gep585, align 8
  %b.new.cap.gep586 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load556, i32 0, i32 2
  store i64 %b.new.cap576, ptr %b.new.cap.gep586, align 8
  br label %b.push_done573

str_overflow_abort581:                            ; preds = %b.grow571
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len580

choice.then599:                                   ; preds = %choice.else554
  %var.load602 = load i64, ptr %var.c1, align 8
  %cmptmp603 = icmp eq i64 %var.load602, 34
  br i1 %cmptmp603, label %and.498.then, label %and.498.else

choice.else600:                                   ; preds = %choice.else554
  %var.load700 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load700, 44
  %val.match702 = icmp eq i64 %var.load700, 59
  %case.or = or i1 %val.match, %val.match702
  br i1 %case.or, label %choice.case, label %choice.next

choice.exit601:                                   ; preds = %choice.exit706, %choice.exit608
  br label %choice.exit555

and.498.then:                                     ; preds = %choice.then599
  %var.load604 = load i64, ptr %var.c2, align 8
  %cmptmp605 = icmp eq i64 %var.load604, 34
  br label %and.498.exit

and.498.else:                                     ; preds = %choice.then599
  br label %and.498.exit

and.498.exit:                                     ; preds = %and.498.else, %and.498.then
  %and.498.phi = phi i1 [ %cmptmp605, %and.498.then ], [ %cmptmp603, %and.498.else ]
  br i1 %and.498.phi, label %choice.then606, label %choice.else607

choice.then606:                                   ; preds = %and.498.exit
  %b.load609 = load ptr, ptr %var.b, align 8
  %app.str.len610 = load i64, ptr @str.1.struct, align 8
  %app.str.len611 = and i64 %app.str.len610, 281474976710655
  %str.tag612 = lshr i64 %app.str.len610, 48
  %str.immortal613 = icmp eq i64 %str.tag612, 0
  br i1 %str.immortal613, label %str_ok615, label %str_gen_check614

choice.else607:                                   ; preds = %and.498.exit
  %b.load659 = load ptr, ptr %var.b, align 8
  %var.load660 = load i64, ptr %var.c, align 8
  %b.b.ge0661 = icmp sge i64 %var.load660, 0
  %b.b.le255662 = icmp sle i64 %var.load660, 255
  %b.byte.range663 = and i1 %b.b.ge0661, %b.b.le255662
  br i1 %b.byte.range663, label %b.byte_ok664, label %b.byte_err665

choice.exit608:                                   ; preds = %b.push_done676, %b.grow_done631
  br label %choice.exit601

str_gen_check614:                                 ; preds = %choice.then606
  %arena.cur617 = call ptr @dva_arena_current()
  %tag.valid618 = call i1 @dva_arena_validate_tag(ptr %arena.cur617, i64 %str.tag612)
  br i1 %tag.valid618, label %str_ok615, label %str_stale616

str_ok615:                                        ; preds = %str_stale616, %str_gen_check614, %choice.then606
  %b.app.cur.len619 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load609, i32 0, i32 0
  %b.app.cur.len620 = load i64, ptr %b.app.cur.len619, align 8
  %b.app.new.len621 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len620, i64 %app.str.len611)
  %sum622 = extractvalue { i64, i1 } %b.app.new.len621, 0
  %ovf623 = extractvalue { i64, i1 } %b.app.new.len621, 1
  br i1 %ovf623, label %str_overflow_abort625, label %b.app.new.len624

str_stale616:                                     ; preds = %str_gen_check614
  %34 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok615

b.app.new.len624:                                 ; preds = %str_overflow_abort625, %str_ok615
  %b.cap626 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load609, i32 0, i32 2
  %b.cap627 = load i64, ptr %b.cap626, align 8
  %b.need.grow628 = icmp slt i64 %b.cap627, %sum622
  br i1 %b.need.grow628, label %b.grow2629, label %b.nogrow2630

str_overflow_abort625:                            ; preds = %str_ok615
  %35 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len624

b.grow2629:                                       ; preds = %b.app.new.len624
  %b.cap2632 = mul i64 %b.cap627, 2
  %b.cap.small633 = icmp slt i64 %b.cap2632, 16
  %b.cap.grow634 = select i1 %b.cap.small633, i64 16, i64 %b.cap2632
  %b.cap.need635 = icmp slt i64 %b.cap.grow634, %sum622
  %b.new.cap636 = select i1 %b.cap.need635, i64 %sum622, i64 %b.cap.grow634
  %b.cur.len2637 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load609, i32 0, i32 0
  %b.cur.len2638 = load i64, ptr %b.cur.len2637, align 8
  %b.cur.data2639 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load609, i32 0, i32 1
  %b.cur.data2640 = load ptr, ptr %b.cur.data2639, align 8
  %b.new.buf.len2641 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap636, i64 1)
  %sum642 = extractvalue { i64, i1 } %b.new.buf.len2641, 0
  %ovf643 = extractvalue { i64, i1 } %b.new.buf.len2641, 1
  br i1 %ovf643, label %str_overflow_abort645, label %b.new.buf.len2644

b.nogrow2630:                                     ; preds = %b.app.new.len624
  br label %b.grow_done631

b.grow_done631:                                   ; preds = %b.nogrow2630, %b.new.buf.len2644
  %app.str.data651 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %b.app.data652 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load609, i32 0, i32 1
  %b.app.data653 = load ptr, ptr %b.app.data652, align 8
  %b.app.dst654 = getelementptr i8, ptr %b.app.data653, i64 %b.app.cur.len620
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst654, ptr align 1 %app.str.data651, i64 %app.str.len611, i1 false)
  %b.app.nul655 = getelementptr i8, ptr %b.app.data653, i64 %sum622
  store i8 0, ptr %b.app.nul655, align 1
  %b.len.gep656 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load609, i32 0, i32 0
  store i64 %sum622, ptr %b.len.gep656, align 8
  store i1 true, ptr %"var.in_str'", align 1
  store i1 true, ptr %"var.str_triple'", align 1
  %var.load657 = load i64, ptr %"var.i'", align 8
  %addtmp658 = add i64 %var.load657, 3
  store i64 %addtmp658, ptr %"var.i'", align 8
  br label %choice.exit608

b.new.buf.len2644:                                ; preds = %str_overflow_abort645, %b.grow2629
  %arena.cur646 = call ptr @dva_arena_current()
  %b.new.buf2647 = call ptr @dva_arena_alloc(ptr %arena.cur646, i64 %sum642)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2647, ptr align 1 %b.cur.data2640, i64 %b.cur.len2638, i1 false)
  %b.grow2.nul648 = getelementptr i8, ptr %b.new.buf2647, i64 %b.cur.len2638
  store i8 0, ptr %b.grow2.nul648, align 1
  %b.new.data2.gep649 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load609, i32 0, i32 1
  store ptr %b.new.buf2647, ptr %b.new.data2.gep649, align 8
  %b.new.cap2.gep650 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load609, i32 0, i32 2
  store i64 %b.new.cap636, ptr %b.new.cap2.gep650, align 8
  br label %b.grow_done631

str_overflow_abort645:                            ; preds = %b.grow2629
  %36 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2644

b.byte_ok664:                                     ; preds = %b.byte_err665, %choice.else607
  %b.byte.i8666 = trunc i64 %var.load660 to i8
  %b.len667 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load659, i32 0, i32 0
  %b.len668 = load i64, ptr %b.len667, align 8
  %b.cap669 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load659, i32 0, i32 2
  %b.cap670 = load i64, ptr %b.cap669, align 8
  %b.data671 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load659, i32 0, i32 1
  %b.data672 = load ptr, ptr %b.data671, align 8
  %b.needs.grow673 = icmp eq i64 %b.len668, %b.cap670
  br i1 %b.needs.grow673, label %b.grow674, label %b.nogrow675

b.byte_err665:                                    ; preds = %choice.else607
  %37 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok664

b.grow674:                                        ; preds = %b.byte_ok664
  %b.cap2677 = mul i64 %b.cap670, 2
  %b.cap.small678 = icmp slt i64 %b.cap2677, 16
  %b.new.cap679 = select i1 %b.cap.small678, i64 16, i64 %b.cap2677
  %b.new.buf.len680 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap679, i64 1)
  %sum681 = extractvalue { i64, i1 } %b.new.buf.len680, 0
  %ovf682 = extractvalue { i64, i1 } %b.new.buf.len680, 1
  br i1 %ovf682, label %str_overflow_abort684, label %b.new.buf.len683

b.nogrow675:                                      ; preds = %b.byte_ok664
  br label %b.push_done676

b.push_done676:                                   ; preds = %b.nogrow675, %b.new.buf.len683
  %b.cur.data690 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load659, i32 0, i32 1
  %b.cur.data691 = load ptr, ptr %b.cur.data690, align 8
  %b.cur.len692 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load659, i32 0, i32 0
  %b.cur.len693 = load i64, ptr %b.cur.len692, align 8
  %b.byte.gep694 = getelementptr i8, ptr %b.cur.data691, i64 %b.cur.len693
  store i8 %b.byte.i8666, ptr %b.byte.gep694, align 1
  %b.next.len695 = add i64 %b.cur.len693, 1
  %b.nul696 = getelementptr i8, ptr %b.cur.data691, i64 %b.next.len695
  store i8 0, ptr %b.nul696, align 1
  %b.len.gep697 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load659, i32 0, i32 0
  store i64 %b.next.len695, ptr %b.len.gep697, align 8
  store i1 true, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  %var.load698 = load i64, ptr %"var.i'", align 8
  %addtmp699 = add i64 %var.load698, 1
  store i64 %addtmp699, ptr %"var.i'", align 8
  br label %choice.exit608

b.new.buf.len683:                                 ; preds = %str_overflow_abort684, %b.grow674
  %arena.cur685 = call ptr @dva_arena_current()
  %b.new.buf686 = call ptr @dva_arena_alloc(ptr %arena.cur685, i64 %sum681)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf686, ptr align 1 %b.data672, i64 %b.len668, i1 false)
  %b.grow.nul687 = getelementptr i8, ptr %b.new.buf686, i64 %b.len668
  store i8 0, ptr %b.grow.nul687, align 1
  %b.new.data.gep688 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load659, i32 0, i32 1
  store ptr %b.new.buf686, ptr %b.new.data.gep688, align 8
  %b.new.cap.gep689 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load659, i32 0, i32 2
  store i64 %b.new.cap679, ptr %b.new.cap.gep689, align 8
  br label %b.push_done676

str_overflow_abort684:                            ; preds = %b.grow674
  %38 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len683

choice.exit701:                                   ; preds = %choice.next, %choice.case
  %choice.res703 = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res703, label %choice.then704, label %choice.else705

choice.case:                                      ; preds = %choice.else600
  br label %choice.exit701

choice.next:                                      ; preds = %choice.else600
  br label %choice.exit701

choice.then704:                                   ; preds = %choice.exit701
  %b.load707 = load ptr, ptr %var.b, align 8
  %var.load708 = load i64, ptr %var.c, align 8
  %b.b.ge0709 = icmp sge i64 %var.load708, 0
  %b.b.le255710 = icmp sle i64 %var.load708, 255
  %b.byte.range711 = and i1 %b.b.ge0709, %b.b.le255710
  br i1 %b.byte.range711, label %b.byte_ok712, label %b.byte_err713

choice.else705:                                   ; preds = %choice.exit701
  %var.load806 = load i64, ptr %"var.i'", align 8
  %cmptmp807 = icmp sgt i64 %var.load806, 0
  br i1 %cmptmp807, label %choice.then808, label %choice.else809

choice.exit706:                                   ; preds = %choice.exit875, %choice.exit770
  br label %choice.exit601

b.byte_ok712:                                     ; preds = %b.byte_err713, %choice.then704
  %b.byte.i8714 = trunc i64 %var.load708 to i8
  %b.len715 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load707, i32 0, i32 0
  %b.len716 = load i64, ptr %b.len715, align 8
  %b.cap717 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load707, i32 0, i32 2
  %b.cap718 = load i64, ptr %b.cap717, align 8
  %b.data719 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load707, i32 0, i32 1
  %b.data720 = load ptr, ptr %b.data719, align 8
  %b.needs.grow721 = icmp eq i64 %b.len716, %b.cap718
  br i1 %b.needs.grow721, label %b.grow722, label %b.nogrow723

b.byte_err713:                                    ; preds = %choice.then704
  %39 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok712

b.grow722:                                        ; preds = %b.byte_ok712
  %b.cap2725 = mul i64 %b.cap718, 2
  %b.cap.small726 = icmp slt i64 %b.cap2725, 16
  %b.new.cap727 = select i1 %b.cap.small726, i64 16, i64 %b.cap2725
  %b.new.buf.len728 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap727, i64 1)
  %sum729 = extractvalue { i64, i1 } %b.new.buf.len728, 0
  %ovf730 = extractvalue { i64, i1 } %b.new.buf.len728, 1
  br i1 %ovf730, label %str_overflow_abort732, label %b.new.buf.len731

b.nogrow723:                                      ; preds = %b.byte_ok712
  br label %b.push_done724

b.push_done724:                                   ; preds = %b.nogrow723, %b.new.buf.len731
  %b.cur.data738 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load707, i32 0, i32 1
  %b.cur.data739 = load ptr, ptr %b.cur.data738, align 8
  %b.cur.len740 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load707, i32 0, i32 0
  %b.cur.len741 = load i64, ptr %b.cur.len740, align 8
  %b.byte.gep742 = getelementptr i8, ptr %b.cur.data739, i64 %b.cur.len741
  store i8 %b.byte.i8714, ptr %b.byte.gep742, align 1
  %b.next.len743 = add i64 %b.cur.len741, 1
  %b.nul744 = getelementptr i8, ptr %b.cur.data739, i64 %b.next.len743
  store i8 0, ptr %b.nul744, align 1
  %b.len.gep745 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load707, i32 0, i32 0
  store i64 %b.next.len743, ptr %b.len.gep745, align 8
  %var.load746 = load i64, ptr %"var.i'", align 8
  %addtmp747 = add i64 %var.load746, 1
  %var.load748 = load i64, ptr %var.n, align 8
  %cmptmp749 = icmp slt i64 %addtmp747, %var.load748
  br i1 %cmptmp749, label %and.499.then, label %and.499.else

b.new.buf.len731:                                 ; preds = %str_overflow_abort732, %b.grow722
  %arena.cur733 = call ptr @dva_arena_current()
  %b.new.buf734 = call ptr @dva_arena_alloc(ptr %arena.cur733, i64 %sum729)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf734, ptr align 1 %b.data720, i64 %b.len716, i1 false)
  %b.grow.nul735 = getelementptr i8, ptr %b.new.buf734, i64 %b.len716
  store i8 0, ptr %b.grow.nul735, align 1
  %b.new.data.gep736 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load707, i32 0, i32 1
  store ptr %b.new.buf734, ptr %b.new.data.gep736, align 8
  %b.new.cap.gep737 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load707, i32 0, i32 2
  store i64 %b.new.cap727, ptr %b.new.cap.gep737, align 8
  br label %b.push_done724

str_overflow_abort732:                            ; preds = %b.grow722
  %40 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len731

and.499.then:                                     ; preds = %b.push_done724
  %var.load750 = load i64, ptr %var.c1, align 8
  %val.match754 = icmp eq i64 %var.load750, 32
  %val.match755 = icmp eq i64 %var.load750, 9
  %case.or756 = or i1 %val.match754, %val.match755
  %val.match757 = icmp eq i64 %var.load750, 41
  %case.or758 = or i1 %case.or756, %val.match757
  %val.match759 = icmp eq i64 %var.load750, 93
  %case.or760 = or i1 %case.or758, %val.match759
  %val.match761 = icmp eq i64 %var.load750, 125
  %case.or762 = or i1 %case.or760, %val.match761
  %val.match763 = icmp eq i64 %var.load750, 44
  %case.or764 = or i1 %case.or762, %val.match763
  %val.match765 = icmp eq i64 %var.load750, 59
  %case.or766 = or i1 %case.or764, %val.match765
  br i1 %case.or766, label %choice.case752, label %choice.next753

and.499.else:                                     ; preds = %b.push_done724
  br label %and.499.exit

and.499.exit:                                     ; preds = %and.499.else, %choice.exit751
  %and.499.phi = phi i1 [ %nottmp, %choice.exit751 ], [ %cmptmp749, %and.499.else ]
  store i1 %and.499.phi, ptr %var.need_sp, align 1
  %var.load768 = load i1, ptr %var.need_sp, align 1
  br i1 %var.load768, label %choice.then769, label %choice.exit770

choice.exit751:                                   ; preds = %choice.next753, %choice.case752
  %choice.res767 = phi i1 [ true, %choice.case752 ], [ false, %choice.next753 ]
  %nottmp = xor i1 %choice.res767, true
  br label %and.499.exit

choice.case752:                                   ; preds = %and.499.then
  br label %choice.exit751

choice.next753:                                   ; preds = %and.499.then
  br label %choice.exit751

choice.then769:                                   ; preds = %and.499.exit
  %b.load771 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load771, i32 0, i32 0
  %b.rn.cur.len772 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len772, i64 1)
  %sum773 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf774 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf774, label %str_overflow_abort776, label %b.rn.new.len775

choice.exit770:                                   ; preds = %br.done.500, %and.499.exit
  %var.load804 = load i64, ptr %"var.i'", align 8
  %addtmp805 = add i64 %var.load804, 1
  store i64 %addtmp805, ptr %"var.i'", align 8
  br label %choice.exit706

b.rn.new.len775:                                  ; preds = %str_overflow_abort776, %choice.then769
  %b.cap777 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load771, i32 0, i32 2
  %b.cap778 = load i64, ptr %b.cap777, align 8
  %b.need.grow779 = icmp slt i64 %b.cap778, %sum773
  br i1 %b.need.grow779, label %b.grow2780, label %b.nogrow2781

str_overflow_abort776:                            ; preds = %choice.then769
  %41 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len775

b.grow2780:                                       ; preds = %b.rn.new.len775
  %b.cap2783 = mul i64 %b.cap778, 2
  %b.cap.small784 = icmp slt i64 %b.cap2783, 16
  %b.cap.grow785 = select i1 %b.cap.small784, i64 16, i64 %b.cap2783
  %b.cap.need786 = icmp slt i64 %b.cap.grow785, %sum773
  %b.new.cap787 = select i1 %b.cap.need786, i64 %sum773, i64 %b.cap.grow785
  %b.cur.len2788 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load771, i32 0, i32 0
  %b.cur.len2789 = load i64, ptr %b.cur.len2788, align 8
  %b.cur.data2790 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load771, i32 0, i32 1
  %b.cur.data2791 = load ptr, ptr %b.cur.data2790, align 8
  %b.new.buf.len2792 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap787, i64 1)
  %sum793 = extractvalue { i64, i1 } %b.new.buf.len2792, 0
  %ovf794 = extractvalue { i64, i1 } %b.new.buf.len2792, 1
  br i1 %ovf794, label %str_overflow_abort796, label %b.new.buf.len2795

b.nogrow2781:                                     ; preds = %b.rn.new.len775
  br label %b.grow_done782

b.grow_done782:                                   ; preds = %b.nogrow2781, %b.new.buf.len2795
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load771, i32 0, i32 1
  %b.rn.data802 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data802, i64 %b.rn.cur.len772
  br i1 true, label %br.b1.500, label %br.c2.500

b.new.buf.len2795:                                ; preds = %str_overflow_abort796, %b.grow2780
  %arena.cur797 = call ptr @dva_arena_current()
  %b.new.buf2798 = call ptr @dva_arena_alloc(ptr %arena.cur797, i64 %sum793)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2798, ptr align 1 %b.cur.data2791, i64 %b.cur.len2789, i1 false)
  %b.grow2.nul799 = getelementptr i8, ptr %b.new.buf2798, i64 %b.cur.len2789
  store i8 0, ptr %b.grow2.nul799, align 1
  %b.new.data2.gep800 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load771, i32 0, i32 1
  store ptr %b.new.buf2798, ptr %b.new.data2.gep800, align 8
  %b.new.cap2.gep801 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load771, i32 0, i32 2
  store i64 %b.new.cap787, ptr %b.new.cap2.gep801, align 8
  br label %b.grow_done782

str_overflow_abort796:                            ; preds = %b.grow2780
  %42 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2795

br.b1.500:                                        ; preds = %b.grow_done782
  store i8 32, ptr %b.rn.dst, align 1
  br label %br.done.500

br.c2.500:                                        ; preds = %b.grow_done782
  br i1 true, label %br.b2.500, label %br.c3.500

br.b2.500:                                        ; preds = %br.c2.500
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -96, ptr %br.dst1, align 1
  br label %br.done.500

br.c3.500:                                        ; preds = %br.c2.500
  br i1 true, label %br.b3.500, label %br.b4.500

br.b3.500:                                        ; preds = %br.c3.500
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -96, ptr %br.dst2.3, align 1
  br label %br.done.500

br.b4.500:                                        ; preds = %br.c3.500
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -96, ptr %br.dst3.4, align 1
  br label %br.done.500

br.done.500:                                      ; preds = %br.b4.500, %br.b3.500, %br.b2.500, %br.b1.500
  %br.nul = getelementptr i8, ptr %b.rn.data802, i64 %sum773
  store i8 0, ptr %br.nul, align 1
  %b.len.gep803 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load771, i32 0, i32 0
  store i64 %sum773, ptr %b.len.gep803, align 8
  br label %choice.exit770

choice.then808:                                   ; preds = %choice.else705
  %var.load811 = load ptr, ptr %var.body, align 8
  %s.read.len812 = getelementptr inbounds { i64, ptr }, ptr %var.load811, i32 0, i32 0
  %s.read.len813 = load i64, ptr %s.read.len812, align 8
  %s.read.len814 = and i64 %s.read.len813, 281474976710655
  %str.tag815 = lshr i64 %s.read.len813, 48
  %str.immortal816 = icmp eq i64 %str.tag815, 0
  br i1 %str.immortal816, label %str_ok818, label %str_gen_check817

choice.else809:                                   ; preds = %choice.else705
  br label %choice.exit810

choice.exit810:                                   ; preds = %choice.else809, %idx_ok827
  %choice.res833 = phi i64 [ %s.byte.val832, %idx_ok827 ], [ 0, %choice.else809 ]
  store i64 %choice.res833, ptr %var.prev_c, align 8
  %var.load834 = load i64, ptr %var.c, align 8
  %cmptmp835 = icmp eq i64 %var.load834, 58
  br i1 %cmptmp835, label %and.501.then, label %and.501.else

str_gen_check817:                                 ; preds = %choice.then808
  %arena.cur820 = call ptr @dva_arena_current()
  %tag.valid821 = call i1 @dva_arena_validate_tag(ptr %arena.cur820, i64 %str.tag815)
  br i1 %tag.valid821, label %str_ok818, label %str_stale819

str_ok818:                                        ; preds = %str_stale819, %str_gen_check817, %choice.then808
  %s.read.data822 = getelementptr inbounds { i64, ptr }, ptr %var.load811, i32 0, i32 1
  %s.read.data823 = load ptr, ptr %s.read.data822, align 8
  %var.load824 = load i64, ptr %"var.i'", align 8
  %subtmp = sub i64 %var.load824, 1
  %idx.neg825 = icmp slt i64 %subtmp, 0
  br i1 %idx.neg825, label %idx_oob828, label %idx_big_check826

str_stale819:                                     ; preds = %str_gen_check817
  %43 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok818

idx_big_check826:                                 ; preds = %str_ok818
  %idx.big829 = icmp sge i64 %subtmp, %s.read.len814
  br i1 %idx.big829, label %idx_oob828, label %idx_ok827

idx_ok827:                                        ; preds = %idx_oob828, %idx_big_check826
  %s.byte.gep830 = getelementptr i8, ptr %s.read.data823, i64 %subtmp
  %s.byte831 = load i8, ptr %s.byte.gep830, align 1
  %s.byte.val832 = zext i8 %s.byte831 to i64
  br label %choice.exit810

idx_oob828:                                       ; preds = %idx_big_check826, %str_ok818
  %44 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok827

and.501.then:                                     ; preds = %choice.exit810
  %var.load836 = load i64, ptr %var.prev_c, align 8
  %val.match840 = icmp eq i64 %var.load836, 58
  %val.match841 = icmp eq i64 %var.load836, 45
  %case.or842 = or i1 %val.match840, %val.match841
  %val.match843 = icmp eq i64 %var.load836, 32
  %case.or844 = or i1 %case.or842, %val.match843
  %val.match845 = icmp eq i64 %var.load836, 9
  %case.or846 = or i1 %case.or844, %val.match845
  br i1 %case.or846, label %choice.case838, label %choice.next839

and.501.else:                                     ; preds = %choice.exit810
  br label %and.501.exit

and.501.exit:                                     ; preds = %and.501.else, %choice.exit837
  %and.501.phi = phi i1 [ %nottmp848, %choice.exit837 ], [ %cmptmp835, %and.501.else ]
  br i1 %and.501.phi, label %and.502.then, label %and.502.else

choice.exit837:                                   ; preds = %choice.next839, %choice.case838
  %choice.res847 = phi i1 [ true, %choice.case838 ], [ false, %choice.next839 ]
  %nottmp848 = xor i1 %choice.res847, true
  br label %and.501.exit

choice.case838:                                   ; preds = %and.501.then
  br label %choice.exit837

choice.next839:                                   ; preds = %and.501.then
  br label %choice.exit837

and.502.then:                                     ; preds = %and.501.exit
  %var.load849 = load i64, ptr %var.c1, align 8
  %val.match853 = icmp eq i64 %var.load849, 58
  %val.match854 = icmp eq i64 %var.load849, 61
  %case.or855 = or i1 %val.match853, %val.match854
  %val.match856 = icmp eq i64 %var.load849, 32
  %case.or857 = or i1 %case.or855, %val.match856
  %val.match858 = icmp eq i64 %var.load849, 9
  %case.or859 = or i1 %case.or857, %val.match858
  %val.match860 = icmp eq i64 %var.load849, 41
  %case.or861 = or i1 %case.or859, %val.match860
  %val.match862 = icmp eq i64 %var.load849, 93
  %case.or863 = or i1 %case.or861, %val.match862
  %val.match864 = icmp eq i64 %var.load849, 125
  %case.or865 = or i1 %case.or863, %val.match864
  %val.match866 = icmp eq i64 %var.load849, 44
  %case.or867 = or i1 %case.or865, %val.match866
  %val.match868 = icmp eq i64 %var.load849, 59
  %case.or869 = or i1 %case.or867, %val.match868
  br i1 %case.or869, label %choice.case851, label %choice.next852

and.502.else:                                     ; preds = %and.501.exit
  br label %and.502.exit

and.502.exit:                                     ; preds = %and.502.else, %choice.exit850
  %and.502.phi = phi i1 [ %nottmp871, %choice.exit850 ], [ %and.501.phi, %and.502.else ]
  store i1 %and.502.phi, ptr %var.is_annot_colon, align 1
  %var.load872 = load i1, ptr %var.is_annot_colon, align 1
  br i1 %var.load872, label %choice.then873, label %choice.else874

choice.exit850:                                   ; preds = %choice.next852, %choice.case851
  %choice.res870 = phi i1 [ true, %choice.case851 ], [ false, %choice.next852 ]
  %nottmp871 = xor i1 %choice.res870, true
  br label %and.502.exit

choice.case851:                                   ; preds = %and.502.then
  br label %choice.exit850

choice.next852:                                   ; preds = %and.502.then
  br label %choice.exit850

choice.then873:                                   ; preds = %and.502.exit
  %b.load876 = load ptr, ptr %var.b, align 8
  %app.str.len877 = load i64, ptr @str.2.struct, align 8
  %app.str.len878 = and i64 %app.str.len877, 281474976710655
  %str.tag879 = lshr i64 %app.str.len877, 48
  %str.immortal880 = icmp eq i64 %str.tag879, 0
  br i1 %str.immortal880, label %str_ok882, label %str_gen_check881

choice.else874:                                   ; preds = %and.502.exit
  %b.load926 = load ptr, ptr %var.b, align 8
  %var.load927 = load i64, ptr %var.c, align 8
  %b.b.ge0928 = icmp sge i64 %var.load927, 0
  %b.b.le255929 = icmp sle i64 %var.load927, 255
  %b.byte.range930 = and i1 %b.b.ge0928, %b.b.le255929
  br i1 %b.byte.range930, label %b.byte_ok931, label %b.byte_err932

choice.exit875:                                   ; preds = %b.push_done943, %b.grow_done898
  br label %choice.exit706

str_gen_check881:                                 ; preds = %choice.then873
  %arena.cur884 = call ptr @dva_arena_current()
  %tag.valid885 = call i1 @dva_arena_validate_tag(ptr %arena.cur884, i64 %str.tag879)
  br i1 %tag.valid885, label %str_ok882, label %str_stale883

str_ok882:                                        ; preds = %str_stale883, %str_gen_check881, %choice.then873
  %b.app.cur.len886 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load876, i32 0, i32 0
  %b.app.cur.len887 = load i64, ptr %b.app.cur.len886, align 8
  %b.app.new.len888 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len887, i64 %app.str.len878)
  %sum889 = extractvalue { i64, i1 } %b.app.new.len888, 0
  %ovf890 = extractvalue { i64, i1 } %b.app.new.len888, 1
  br i1 %ovf890, label %str_overflow_abort892, label %b.app.new.len891

str_stale883:                                     ; preds = %str_gen_check881
  %45 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok882

b.app.new.len891:                                 ; preds = %str_overflow_abort892, %str_ok882
  %b.cap893 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load876, i32 0, i32 2
  %b.cap894 = load i64, ptr %b.cap893, align 8
  %b.need.grow895 = icmp slt i64 %b.cap894, %sum889
  br i1 %b.need.grow895, label %b.grow2896, label %b.nogrow2897

str_overflow_abort892:                            ; preds = %str_ok882
  %46 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len891

b.grow2896:                                       ; preds = %b.app.new.len891
  %b.cap2899 = mul i64 %b.cap894, 2
  %b.cap.small900 = icmp slt i64 %b.cap2899, 16
  %b.cap.grow901 = select i1 %b.cap.small900, i64 16, i64 %b.cap2899
  %b.cap.need902 = icmp slt i64 %b.cap.grow901, %sum889
  %b.new.cap903 = select i1 %b.cap.need902, i64 %sum889, i64 %b.cap.grow901
  %b.cur.len2904 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load876, i32 0, i32 0
  %b.cur.len2905 = load i64, ptr %b.cur.len2904, align 8
  %b.cur.data2906 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load876, i32 0, i32 1
  %b.cur.data2907 = load ptr, ptr %b.cur.data2906, align 8
  %b.new.buf.len2908 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap903, i64 1)
  %sum909 = extractvalue { i64, i1 } %b.new.buf.len2908, 0
  %ovf910 = extractvalue { i64, i1 } %b.new.buf.len2908, 1
  br i1 %ovf910, label %str_overflow_abort912, label %b.new.buf.len2911

b.nogrow2897:                                     ; preds = %b.app.new.len891
  br label %b.grow_done898

b.grow_done898:                                   ; preds = %b.nogrow2897, %b.new.buf.len2911
  %app.str.data918 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %b.app.data919 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load876, i32 0, i32 1
  %b.app.data920 = load ptr, ptr %b.app.data919, align 8
  %b.app.dst921 = getelementptr i8, ptr %b.app.data920, i64 %b.app.cur.len887
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst921, ptr align 1 %app.str.data918, i64 %app.str.len878, i1 false)
  %b.app.nul922 = getelementptr i8, ptr %b.app.data920, i64 %sum889
  store i8 0, ptr %b.app.nul922, align 1
  %b.len.gep923 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load876, i32 0, i32 0
  store i64 %sum889, ptr %b.len.gep923, align 8
  %var.load924 = load i64, ptr %"var.i'", align 8
  %addtmp925 = add i64 %var.load924, 1
  store i64 %addtmp925, ptr %"var.i'", align 8
  br label %choice.exit875

b.new.buf.len2911:                                ; preds = %str_overflow_abort912, %b.grow2896
  %arena.cur913 = call ptr @dva_arena_current()
  %b.new.buf2914 = call ptr @dva_arena_alloc(ptr %arena.cur913, i64 %sum909)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2914, ptr align 1 %b.cur.data2907, i64 %b.cur.len2905, i1 false)
  %b.grow2.nul915 = getelementptr i8, ptr %b.new.buf2914, i64 %b.cur.len2905
  store i8 0, ptr %b.grow2.nul915, align 1
  %b.new.data2.gep916 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load876, i32 0, i32 1
  store ptr %b.new.buf2914, ptr %b.new.data2.gep916, align 8
  %b.new.cap2.gep917 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load876, i32 0, i32 2
  store i64 %b.new.cap903, ptr %b.new.cap2.gep917, align 8
  br label %b.grow_done898

str_overflow_abort912:                            ; preds = %b.grow2896
  %47 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2911

b.byte_ok931:                                     ; preds = %b.byte_err932, %choice.else874
  %b.byte.i8933 = trunc i64 %var.load927 to i8
  %b.len934 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load926, i32 0, i32 0
  %b.len935 = load i64, ptr %b.len934, align 8
  %b.cap936 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load926, i32 0, i32 2
  %b.cap937 = load i64, ptr %b.cap936, align 8
  %b.data938 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load926, i32 0, i32 1
  %b.data939 = load ptr, ptr %b.data938, align 8
  %b.needs.grow940 = icmp eq i64 %b.len935, %b.cap937
  br i1 %b.needs.grow940, label %b.grow941, label %b.nogrow942

b.byte_err932:                                    ; preds = %choice.else874
  %48 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok931

b.grow941:                                        ; preds = %b.byte_ok931
  %b.cap2944 = mul i64 %b.cap937, 2
  %b.cap.small945 = icmp slt i64 %b.cap2944, 16
  %b.new.cap946 = select i1 %b.cap.small945, i64 16, i64 %b.cap2944
  %b.new.buf.len947 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap946, i64 1)
  %sum948 = extractvalue { i64, i1 } %b.new.buf.len947, 0
  %ovf949 = extractvalue { i64, i1 } %b.new.buf.len947, 1
  br i1 %ovf949, label %str_overflow_abort951, label %b.new.buf.len950

b.nogrow942:                                      ; preds = %b.byte_ok931
  br label %b.push_done943

b.push_done943:                                   ; preds = %b.nogrow942, %b.new.buf.len950
  %b.cur.data957 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load926, i32 0, i32 1
  %b.cur.data958 = load ptr, ptr %b.cur.data957, align 8
  %b.cur.len959 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load926, i32 0, i32 0
  %b.cur.len960 = load i64, ptr %b.cur.len959, align 8
  %b.byte.gep961 = getelementptr i8, ptr %b.cur.data958, i64 %b.cur.len960
  store i8 %b.byte.i8933, ptr %b.byte.gep961, align 1
  %b.next.len962 = add i64 %b.cur.len960, 1
  %b.nul963 = getelementptr i8, ptr %b.cur.data958, i64 %b.next.len962
  store i8 0, ptr %b.nul963, align 1
  %b.len.gep964 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load926, i32 0, i32 0
  store i64 %b.next.len962, ptr %b.len.gep964, align 8
  %var.load965 = load i64, ptr %"var.i'", align 8
  %addtmp966 = add i64 %var.load965, 1
  store i64 %addtmp966, ptr %"var.i'", align 8
  br label %choice.exit875

b.new.buf.len950:                                 ; preds = %str_overflow_abort951, %b.grow941
  %arena.cur952 = call ptr @dva_arena_current()
  %b.new.buf953 = call ptr @dva_arena_alloc(ptr %arena.cur952, i64 %sum948)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf953, ptr align 1 %b.data939, i64 %b.len935, i1 false)
  %b.grow.nul954 = getelementptr i8, ptr %b.new.buf953, i64 %b.len935
  store i8 0, ptr %b.grow.nul954, align 1
  %b.new.data.gep955 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load926, i32 0, i32 1
  store ptr %b.new.buf953, ptr %b.new.data.gep955, align 8
  %b.new.cap.gep956 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load926, i32 0, i32 2
  store i64 %b.new.cap946, ptr %b.new.cap.gep956, align 8
  br label %b.push_done943

str_overflow_abort951:                            ; preds = %b.grow941
  %49 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len950

b.freeze.check:                                   ; preds = %loop.exit.490
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data969, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data969, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data969, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len968, 1
  %arena.cur970 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur970, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data969, i64 %b.freeze.len968, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len968
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.490
  %b.freeze.data971 = phi ptr [ %b.freeze.data969, %loop.exit.490 ], [ %b.freeze.data969, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur972 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur972, i64 16)
  %str.build.len.gep973 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len968, ptr %str.build.len.gep973, align 8
  %str.build.data.gep974 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data971, ptr %str.build.data.gep974, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load967, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load967, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load967, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

define ptr @"formatter::make_spaces"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.503 = alloca i64, align 8
  %loop.idx.503 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.count = alloca i64, align 8
  store i64 %0, ptr %var.count, align 8
  %var.load = load i64, ptr %var.count, align 8
  %cmptmp = icmp sle i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret ptr @str.3.struct

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load1 = load i64, ptr %var.count, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %cap.neg = icmp slt i64 %var.load1, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load1
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len2

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len2:                                       ; preds = %str_overflow_abort, %choice.exit
  %arena.cur3 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load4 = load i64, ptr %var.count, align 8
  store i64 0, ptr %loop.idx.503, align 8
  br label %loop.header.503

str_overflow_abort:                               ; preds = %choice.exit
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len2

loop.header.503:                                  ; preds = %loop.latch.503, %b.buf.len2
  %counter.load = load i64, ptr %loop.idx.503, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load4
  br i1 %loop.cond, label %loop.body.503, label %loop.exit.nat.503

loop.body.503:                                    ; preds = %loop.header.503
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.503, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len5 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len5, i64 1)
  %sum6 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf7 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf7, label %str_overflow_abort9, label %b.rn.new.len8

loop.exit.nat.503:                                ; preds = %loop.header.503
  br label %loop.exit.503

loop.latch.503:                                   ; preds = %br.done.504
  %step.val = load i64, ptr %loop.step.503, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.503, align 8
  br label %loop.header.503

loop.exit.503:                                    ; preds = %loop.exit.nat.503
  %var.load20 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load20, i32 0, i32 0
  %b.freeze.len21 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load20, i32 0, i32 1
  %b.freeze.data22 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.rn.new.len8:                                    ; preds = %str_overflow_abort9, %loop.body.503
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap10 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap10, %sum6
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort9:                              ; preds = %loop.body.503
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len8

b.grow2:                                          ; preds = %b.rn.new.len8
  %b.cap2 = mul i64 %b.cap10, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum6
  %b.new.cap = select i1 %b.cap.need, i64 %sum6, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len211 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data212 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum13 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf14 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf14, label %str_overflow_abort16, label %b.new.buf.len215

b.nogrow2:                                        ; preds = %b.rn.new.len8
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len215
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data18 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data18, i64 %b.rn.cur.len5
  br i1 true, label %br.b1.504, label %br.c2.504

b.new.buf.len215:                                 ; preds = %str_overflow_abort16, %b.grow2
  %arena.cur17 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 %sum13)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data212, i64 %b.cur.len211, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len211
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort16:                             ; preds = %b.grow2
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len215

br.b1.504:                                        ; preds = %b.grow_done
  store i8 32, ptr %b.rn.dst, align 1
  br label %br.done.504

br.c2.504:                                        ; preds = %b.grow_done
  br i1 true, label %br.b2.504, label %br.c3.504

br.b2.504:                                        ; preds = %br.c2.504
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -96, ptr %br.dst1, align 1
  br label %br.done.504

br.c3.504:                                        ; preds = %br.c2.504
  br i1 true, label %br.b3.504, label %br.b4.504

br.b3.504:                                        ; preds = %br.c3.504
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -96, ptr %br.dst2.3, align 1
  br label %br.done.504

br.b4.504:                                        ; preds = %br.c3.504
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -96, ptr %br.dst3.4, align 1
  br label %br.done.504

br.done.504:                                      ; preds = %br.b4.504, %br.b3.504, %br.b2.504, %br.b1.504
  %br.nul = getelementptr i8, ptr %b.rn.data18, i64 %sum6
  store i8 0, ptr %br.nul, align 1
  %b.len.gep19 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum6, ptr %b.len.gep19, align 8
  br label %loop.latch.503

b.freeze.check:                                   ; preds = %loop.exit.503
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data22, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data22, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data22, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len21, 1
  %arena.cur23 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data22, i64 %b.freeze.len21, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len21
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.503
  %b.freeze.data24 = phi ptr [ %b.freeze.data22, %loop.exit.503 ], [ %b.freeze.data22, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur25 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len21, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data24, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load20, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load20, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load20, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define ptr @"formatter::strip_leading_ws"(ptr %0) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.505 = alloca i64, align 8
  %loop.idx.505 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %"var.i'" = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 0, ptr %"var.i'", align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  store i64 %str.len.query2, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.505, align 8
  br label %loop.header.505

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.505:                                  ; preds = %loop.latch.505, %str_ok
  %counter.load = load i64, ptr %loop.idx.505, align 8
  br label %loop.body.505

loop.body.505:                                    ; preds = %loop.header.505
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.505, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load3 = load i64, ptr %"var.i'", align 8
  %var.load4 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load3, %var.load4
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.505:                                ; No predecessors!
  br label %loop.exit.505

loop.latch.505:                                   ; preds = %choice.exit20
  %step.val = load i64, ptr %loop.step.505, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.505, align 8
  br label %loop.header.505

loop.exit.505:                                    ; preds = %choice.else, %choice.then, %loop.exit.nat.505
  %var.load22 = load ptr, ptr %var.s, align 8
  %s.read.len23 = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 0
  %s.read.len24 = load i64, ptr %s.read.len23, align 8
  %s.read.len25 = and i64 %s.read.len24, 281474976710655
  %str.tag26 = lshr i64 %s.read.len24, 48
  %str.immortal27 = icmp eq i64 %str.tag26, 0
  br i1 %str.immortal27, label %str_ok29, label %str_gen_check28

choice.then:                                      ; preds = %loop.body.505
  br label %loop.exit.505

choice.exit:                                      ; preds = %loop.body.505
  %var.load5 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %s.read.len6 = load i64, ptr %s.read.len, align 8
  %s.read.len7 = and i64 %s.read.len6, 281474976710655
  %str.tag8 = lshr i64 %s.read.len6, 48
  %str.immortal9 = icmp eq i64 %str.tag8, 0
  br i1 %str.immortal9, label %str_ok11, label %str_gen_check10

str_gen_check10:                                  ; preds = %choice.exit
  %arena.cur13 = call ptr @dva_arena_current()
  %tag.valid14 = call i1 @dva_arena_validate_tag(ptr %arena.cur13, i64 %str.tag8)
  br i1 %tag.valid14, label %str_ok11, label %str_stale12

str_ok11:                                         ; preds = %str_stale12, %str_gen_check10, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data, align 8
  %var.load16 = load i64, ptr %"var.i'", align 8
  %idx.neg = icmp slt i64 %var.load16, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale12:                                      ; preds = %str_gen_check10
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok11

idx_big_check:                                    ; preds = %str_ok11
  %idx.big = icmp sge i64 %var.load16, %s.read.len7
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data15, i64 %var.load16
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %val.match = icmp eq i64 %s.byte.val, 32
  %val.match18 = icmp eq i64 %s.byte.val, 9
  %case.or = or i1 %val.match, %val.match18
  br i1 %case.or, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %str_ok11
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.exit17:                                    ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %choice.then19, label %choice.else

choice.case:                                      ; preds = %idx_ok
  br label %choice.exit17

choice.next:                                      ; preds = %idx_ok
  br label %choice.exit17

choice.then19:                                    ; preds = %choice.exit17
  %var.load21 = load i64, ptr %"var.i'", align 8
  %addtmp = add i64 %var.load21, 1
  store i64 %addtmp, ptr %"var.i'", align 8
  br label %choice.exit20

choice.else:                                      ; preds = %choice.exit17
  br label %loop.exit.505

choice.exit20:                                    ; preds = %choice.then19
  br label %loop.latch.505

str_gen_check28:                                  ; preds = %loop.exit.505
  %arena.cur31 = call ptr @dva_arena_current()
  %tag.valid32 = call i1 @dva_arena_validate_tag(ptr %arena.cur31, i64 %str.tag26)
  br i1 %tag.valid32, label %str_ok29, label %str_stale30

str_ok29:                                         ; preds = %str_stale30, %str_gen_check28, %loop.exit.505
  %s.read.data33 = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 1
  %s.read.data34 = load ptr, ptr %s.read.data33, align 8
  %var.load35 = load i64, ptr %"var.i'", align 8
  %var.load36 = load i64, ptr %var.n, align 8
  %start.is_neg = icmp slt i64 %var.load35, 0
  %rel.start = add i64 %s.read.len25, %var.load35
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load35
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len25
  %final.start = select i1 %start.gt.len, i64 %s.read.len25, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load36, 0
  %rel.end = add i64 %s.read.len25, %var.load36
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load36
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len25
  %final.end = select i1 %end.gt.len, i64 %s.read.len25, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data34, i64 %final.start
  %arena.cur37 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  ret ptr %str.view

str_stale30:                                      ; preds = %str_gen_check28
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok29
}

define ptr @"formatter::strip_code_comment"(ptr %0) #1 {
entry:
  %var._115 = alloca i64, align 8
  %var._i114 = alloca i64, align 8
  %loop.step.510 = alloca i64, align 8
  %loop.idx.510 = alloca i64, align 8
  %var.c1 = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.506 = alloca i64, align 8
  %loop.idx.506 = alloca i64, align 8
  %"var.end_idx'" = alloca i64, align 8
  %"var.in_rune'" = alloca i1, align 1
  %"var.in_str'" = alloca i1, align 1
  %"var.i'" = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.body = alloca ptr, align 8
  store ptr %0, ptr %var.body, align 8
  %var.load = load ptr, ptr %var.body, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  store i64 %str.len.query2, ptr %var.n, align 8
  store i64 0, ptr %"var.i'", align 8
  store i1 false, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.in_rune'", align 1
  %var.load3 = load i64, ptr %var.n, align 8
  store i64 %var.load3, ptr %"var.end_idx'", align 8
  store i64 0, ptr %loop.idx.506, align 8
  br label %loop.header.506

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.506:                                  ; preds = %loop.latch.506, %str_ok
  %counter.load = load i64, ptr %loop.idx.506, align 8
  br label %loop.body.506

loop.body.506:                                    ; preds = %loop.header.506
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.506, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load4 = load i64, ptr %"var.i'", align 8
  %var.load5 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load4, %var.load5
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.506:                                ; No predecessors!
  br label %loop.exit.506

loop.latch.506:                                   ; preds = %choice.exit49
  %step.val = load i64, ptr %loop.step.506, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.506, align 8
  br label %loop.header.506

loop.exit.506:                                    ; preds = %choice.then92, %choice.then, %loop.exit.nat.506
  store i64 0, ptr %loop.idx.510, align 8
  br label %loop.header.510

choice.then:                                      ; preds = %loop.body.506
  br label %loop.exit.506

choice.exit:                                      ; preds = %loop.body.506
  %var.load6 = load ptr, ptr %var.body, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %str.tag9 = lshr i64 %s.read.len7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

str_gen_check11:                                  ; preds = %choice.exit
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid15 = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %str.tag9)
  br i1 %tag.valid15, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %var.load17 = load i64, ptr %"var.i'", align 8
  %idx.neg = icmp slt i64 %var.load17, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale13:                                      ; preds = %str_gen_check11
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

idx_big_check:                                    ; preds = %str_ok12
  %idx.big = icmp sge i64 %var.load17, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load18 = load i64, ptr %"var.i'", align 8
  %addtmp = add i64 %var.load18, 1
  %var.load19 = load i64, ptr %var.n, align 8
  %cmptmp20 = icmp slt i64 %addtmp, %var.load19
  br i1 %cmptmp20, label %choice.then21, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok12
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then21:                                    ; preds = %idx_ok
  %var.load23 = load ptr, ptr %var.body, align 8
  %s.read.len24 = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 0
  %s.read.len25 = load i64, ptr %s.read.len24, align 8
  %s.read.len26 = and i64 %s.read.len25, 281474976710655
  %str.tag27 = lshr i64 %s.read.len25, 48
  %str.immortal28 = icmp eq i64 %str.tag27, 0
  br i1 %str.immortal28, label %str_ok30, label %str_gen_check29

choice.else:                                      ; preds = %idx_ok
  br label %choice.exit22

choice.exit22:                                    ; preds = %choice.else, %idx_ok40
  %choice.res = phi i64 [ %s.byte.val45, %idx_ok40 ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.c1, align 8
  %var.load46 = load i1, ptr %"var.in_rune'", align 1
  br i1 %var.load46, label %choice.then47, label %choice.else48

str_gen_check29:                                  ; preds = %choice.then21
  %arena.cur32 = call ptr @dva_arena_current()
  %tag.valid33 = call i1 @dva_arena_validate_tag(ptr %arena.cur32, i64 %str.tag27)
  br i1 %tag.valid33, label %str_ok30, label %str_stale31

str_ok30:                                         ; preds = %str_stale31, %str_gen_check29, %choice.then21
  %s.read.data34 = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 1
  %s.read.data35 = load ptr, ptr %s.read.data34, align 8
  %var.load36 = load i64, ptr %"var.i'", align 8
  %addtmp37 = add i64 %var.load36, 1
  %idx.neg38 = icmp slt i64 %addtmp37, 0
  br i1 %idx.neg38, label %idx_oob41, label %idx_big_check39

str_stale31:                                      ; preds = %str_gen_check29
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok30

idx_big_check39:                                  ; preds = %str_ok30
  %idx.big42 = icmp sge i64 %addtmp37, %s.read.len26
  br i1 %idx.big42, label %idx_oob41, label %idx_ok40

idx_ok40:                                         ; preds = %idx_oob41, %idx_big_check39
  %s.byte.gep43 = getelementptr i8, ptr %s.read.data35, i64 %addtmp37
  %s.byte44 = load i8, ptr %s.byte.gep43, align 1
  %s.byte.val45 = zext i8 %s.byte44 to i64
  br label %choice.exit22

idx_oob41:                                        ; preds = %idx_big_check39, %str_ok30
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok40

choice.then47:                                    ; preds = %choice.exit22
  %var.load50 = load i64, ptr %var.c, align 8
  %cmptmp51 = icmp eq i64 %var.load50, 92
  br i1 %cmptmp51, label %and.507.then, label %and.507.else

choice.else48:                                    ; preds = %choice.exit22
  %var.load67 = load i1, ptr %"var.in_str'", align 1
  br i1 %var.load67, label %choice.then68, label %choice.else69

choice.exit49:                                    ; preds = %choice.exit70, %choice.exit58
  br label %loop.latch.506

and.507.then:                                     ; preds = %choice.then47
  %var.load52 = load i64, ptr %"var.i'", align 8
  %addtmp53 = add i64 %var.load52, 1
  %var.load54 = load i64, ptr %var.n, align 8
  %cmptmp55 = icmp slt i64 %addtmp53, %var.load54
  br label %and.507.exit

and.507.else:                                     ; preds = %choice.then47
  br label %and.507.exit

and.507.exit:                                     ; preds = %and.507.else, %and.507.then
  %and.507.phi = phi i1 [ %cmptmp55, %and.507.then ], [ %cmptmp51, %and.507.else ]
  br i1 %and.507.phi, label %choice.then56, label %choice.else57

choice.then56:                                    ; preds = %and.507.exit
  %var.load59 = load i64, ptr %"var.i'", align 8
  %addtmp60 = add i64 %var.load59, 2
  store i64 %addtmp60, ptr %"var.i'", align 8
  br label %choice.exit58

choice.else57:                                    ; preds = %and.507.exit
  %var.load61 = load i64, ptr %var.c, align 8
  %cmptmp62 = icmp eq i64 %var.load61, 39
  br i1 %cmptmp62, label %choice.then63, label %choice.exit64

choice.exit58:                                    ; preds = %choice.exit64, %choice.then56
  br label %choice.exit49

choice.then63:                                    ; preds = %choice.else57
  store i1 false, ptr %"var.in_rune'", align 1
  br label %choice.exit64

choice.exit64:                                    ; preds = %choice.then63, %choice.else57
  %var.load65 = load i64, ptr %"var.i'", align 8
  %addtmp66 = add i64 %var.load65, 1
  store i64 %addtmp66, ptr %"var.i'", align 8
  br label %choice.exit58

choice.then68:                                    ; preds = %choice.else48
  %var.load71 = load i64, ptr %var.c, align 8
  %cmptmp72 = icmp eq i64 %var.load71, 92
  br i1 %cmptmp72, label %and.508.then, label %and.508.else

choice.else69:                                    ; preds = %choice.else48
  %var.load88 = load i64, ptr %var.c, align 8
  %cmptmp89 = icmp eq i64 %var.load88, 47
  br i1 %cmptmp89, label %and.509.then, label %and.509.else

choice.exit70:                                    ; preds = %choice.exit94, %choice.exit79
  br label %choice.exit49

and.508.then:                                     ; preds = %choice.then68
  %var.load73 = load i64, ptr %"var.i'", align 8
  %addtmp74 = add i64 %var.load73, 1
  %var.load75 = load i64, ptr %var.n, align 8
  %cmptmp76 = icmp slt i64 %addtmp74, %var.load75
  br label %and.508.exit

and.508.else:                                     ; preds = %choice.then68
  br label %and.508.exit

and.508.exit:                                     ; preds = %and.508.else, %and.508.then
  %and.508.phi = phi i1 [ %cmptmp76, %and.508.then ], [ %cmptmp72, %and.508.else ]
  br i1 %and.508.phi, label %choice.then77, label %choice.else78

choice.then77:                                    ; preds = %and.508.exit
  %var.load80 = load i64, ptr %"var.i'", align 8
  %addtmp81 = add i64 %var.load80, 2
  store i64 %addtmp81, ptr %"var.i'", align 8
  br label %choice.exit79

choice.else78:                                    ; preds = %and.508.exit
  %var.load82 = load i64, ptr %var.c, align 8
  %cmptmp83 = icmp eq i64 %var.load82, 34
  br i1 %cmptmp83, label %choice.then84, label %choice.exit85

choice.exit79:                                    ; preds = %choice.exit85, %choice.then77
  br label %choice.exit70

choice.then84:                                    ; preds = %choice.else78
  store i1 false, ptr %"var.in_str'", align 1
  br label %choice.exit85

choice.exit85:                                    ; preds = %choice.then84, %choice.else78
  %var.load86 = load i64, ptr %"var.i'", align 8
  %addtmp87 = add i64 %var.load86, 1
  store i64 %addtmp87, ptr %"var.i'", align 8
  br label %choice.exit79

and.509.then:                                     ; preds = %choice.else69
  %var.load90 = load i64, ptr %var.c1, align 8
  %cmptmp91 = icmp eq i64 %var.load90, 47
  br label %and.509.exit

and.509.else:                                     ; preds = %choice.else69
  br label %and.509.exit

and.509.exit:                                     ; preds = %and.509.else, %and.509.then
  %and.509.phi = phi i1 [ %cmptmp91, %and.509.then ], [ %cmptmp89, %and.509.else ]
  br i1 %and.509.phi, label %choice.then92, label %choice.else93

choice.then92:                                    ; preds = %and.509.exit
  %var.load95 = load i64, ptr %"var.i'", align 8
  store i64 %var.load95, ptr %"var.end_idx'", align 8
  br label %loop.exit.506

choice.else93:                                    ; preds = %and.509.exit
  %var.load96 = load i64, ptr %var.c, align 8
  %cmptmp97 = icmp eq i64 %var.load96, 39
  br i1 %cmptmp97, label %choice.then98, label %choice.else99

choice.exit94:                                    ; preds = %choice.exit100
  br label %choice.exit70

choice.then98:                                    ; preds = %choice.else93
  store i1 true, ptr %"var.in_rune'", align 1
  %var.load101 = load i64, ptr %"var.i'", align 8
  %addtmp102 = add i64 %var.load101, 1
  store i64 %addtmp102, ptr %"var.i'", align 8
  br label %choice.exit100

choice.else99:                                    ; preds = %choice.else93
  %var.load103 = load i64, ptr %var.c, align 8
  %cmptmp104 = icmp eq i64 %var.load103, 34
  br i1 %cmptmp104, label %choice.then105, label %choice.else106

choice.exit100:                                   ; preds = %choice.exit107, %choice.then98
  br label %choice.exit94

choice.then105:                                   ; preds = %choice.else99
  store i1 true, ptr %"var.in_str'", align 1
  %var.load108 = load i64, ptr %"var.i'", align 8
  %addtmp109 = add i64 %var.load108, 1
  store i64 %addtmp109, ptr %"var.i'", align 8
  br label %choice.exit107

choice.else106:                                   ; preds = %choice.else99
  %var.load110 = load i64, ptr %"var.i'", align 8
  %addtmp111 = add i64 %var.load110, 1
  store i64 %addtmp111, ptr %"var.i'", align 8
  br label %choice.exit107

choice.exit107:                                   ; preds = %choice.else106, %choice.then105
  br label %choice.exit100

loop.header.510:                                  ; preds = %loop.latch.510, %loop.exit.506
  %counter.load112 = load i64, ptr %loop.idx.510, align 8
  br label %loop.body.510

loop.body.510:                                    ; preds = %loop.header.510
  %loop.rel.i113 = sub i64 %counter.load112, 0
  store i64 1, ptr %loop.step.510, align 8
  store i64 %loop.rel.i113, ptr %var._i114, align 8
  store i64 %counter.load112, ptr %var._115, align 8
  %var.load116 = load i64, ptr %"var.end_idx'", align 8
  %cmptmp117 = icmp sgt i64 %var.load116, 0
  br i1 %cmptmp117, label %and.511.then, label %and.511.else

loop.exit.nat.510:                                ; No predecessors!
  br label %loop.exit.510

loop.latch.510:                                   ; preds = %choice.exit145
  %step.val148 = load i64, ptr %loop.step.510, align 8
  %loop.next149 = add i64 %counter.load112, %step.val148
  store i64 %loop.next149, ptr %loop.idx.510, align 8
  br label %loop.header.510

loop.exit.510:                                    ; preds = %choice.else144, %loop.exit.nat.510
  %var.load150 = load ptr, ptr %var.body, align 8
  %s.read.len151 = getelementptr inbounds { i64, ptr }, ptr %var.load150, i32 0, i32 0
  %s.read.len152 = load i64, ptr %s.read.len151, align 8
  %s.read.len153 = and i64 %s.read.len152, 281474976710655
  %str.tag154 = lshr i64 %s.read.len152, 48
  %str.immortal155 = icmp eq i64 %str.tag154, 0
  br i1 %str.immortal155, label %str_ok157, label %str_gen_check156

and.511.then:                                     ; preds = %loop.body.510
  %var.load118 = load ptr, ptr %var.body, align 8
  %s.read.len119 = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 0
  %s.read.len120 = load i64, ptr %s.read.len119, align 8
  %s.read.len121 = and i64 %s.read.len120, 281474976710655
  %str.tag122 = lshr i64 %s.read.len120, 48
  %str.immortal123 = icmp eq i64 %str.tag122, 0
  br i1 %str.immortal123, label %str_ok125, label %str_gen_check124

and.511.else:                                     ; preds = %loop.body.510
  br label %and.511.exit

and.511.exit:                                     ; preds = %and.511.else, %choice.exit140
  %and.511.phi = phi i1 [ %choice.res142, %choice.exit140 ], [ %cmptmp117, %and.511.else ]
  br i1 %and.511.phi, label %choice.then143, label %choice.else144

str_gen_check124:                                 ; preds = %and.511.then
  %arena.cur127 = call ptr @dva_arena_current()
  %tag.valid128 = call i1 @dva_arena_validate_tag(ptr %arena.cur127, i64 %str.tag122)
  br i1 %tag.valid128, label %str_ok125, label %str_stale126

str_ok125:                                        ; preds = %str_stale126, %str_gen_check124, %and.511.then
  %s.read.data129 = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 1
  %s.read.data130 = load ptr, ptr %s.read.data129, align 8
  %var.load131 = load i64, ptr %"var.end_idx'", align 8
  %subtmp = sub i64 %var.load131, 1
  %idx.neg132 = icmp slt i64 %subtmp, 0
  br i1 %idx.neg132, label %idx_oob135, label %idx_big_check133

str_stale126:                                     ; preds = %str_gen_check124
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok125

idx_big_check133:                                 ; preds = %str_ok125
  %idx.big136 = icmp sge i64 %subtmp, %s.read.len121
  br i1 %idx.big136, label %idx_oob135, label %idx_ok134

idx_ok134:                                        ; preds = %idx_oob135, %idx_big_check133
  %s.byte.gep137 = getelementptr i8, ptr %s.read.data130, i64 %subtmp
  %s.byte138 = load i8, ptr %s.byte.gep137, align 1
  %s.byte.val139 = zext i8 %s.byte138 to i64
  %val.match = icmp eq i64 %s.byte.val139, 32
  %val.match141 = icmp eq i64 %s.byte.val139, 9
  %case.or = or i1 %val.match, %val.match141
  br i1 %case.or, label %choice.case, label %choice.next

idx_oob135:                                       ; preds = %idx_big_check133, %str_ok125
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok134

choice.exit140:                                   ; preds = %choice.next, %choice.case
  %choice.res142 = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br label %and.511.exit

choice.case:                                      ; preds = %idx_ok134
  br label %choice.exit140

choice.next:                                      ; preds = %idx_ok134
  br label %choice.exit140

choice.then143:                                   ; preds = %and.511.exit
  %var.load146 = load i64, ptr %"var.end_idx'", align 8
  %subtmp147 = sub i64 %var.load146, 1
  store i64 %subtmp147, ptr %"var.end_idx'", align 8
  br label %choice.exit145

choice.else144:                                   ; preds = %and.511.exit
  br label %loop.exit.510

choice.exit145:                                   ; preds = %choice.then143
  br label %loop.latch.510

str_gen_check156:                                 ; preds = %loop.exit.510
  %arena.cur159 = call ptr @dva_arena_current()
  %tag.valid160 = call i1 @dva_arena_validate_tag(ptr %arena.cur159, i64 %str.tag154)
  br i1 %tag.valid160, label %str_ok157, label %str_stale158

str_ok157:                                        ; preds = %str_stale158, %str_gen_check156, %loop.exit.510
  %s.read.data161 = getelementptr inbounds { i64, ptr }, ptr %var.load150, i32 0, i32 1
  %s.read.data162 = load ptr, ptr %s.read.data161, align 8
  %var.load163 = load i64, ptr %"var.end_idx'", align 8
  %rel.start = add i64 %s.read.len153, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len153
  %final.start = select i1 %start.gt.len, i64 %s.read.len153, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load163, 0
  %rel.end = add i64 %s.read.len153, %var.load163
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load163
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len153
  %final.end = select i1 %end.gt.len, i64 %s.read.len153, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data162, i64 %final.start
  %arena.cur164 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur164, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  ret ptr %str.view

str_stale158:                                     ; preds = %str_gen_check156
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok157
}

define i1 @"formatter::ends_with_str"(ptr %0, ptr %1) #1 {
entry:
  %var.suf = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.suf, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %var.load3 = load ptr, ptr %var.suf, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag7 = lshr i64 %str.len.query5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check9:                                   ; preds = %str_ok
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %str_ok
  %cmptmp = icmp sge i64 %str.len.query2, %str.len.query6
  br i1 %cmptmp, label %and.512.then, label %and.512.else

str_stale11:                                      ; preds = %str_gen_check9
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

and.512.then:                                     ; preds = %str_ok10
  %var.load14 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %s.read.len15 = load i64, ptr %s.read.len, align 8
  %s.read.len16 = and i64 %s.read.len15, 281474976710655
  %str.tag17 = lshr i64 %s.read.len15, 48
  %str.immortal18 = icmp eq i64 %str.tag17, 0
  br i1 %str.immortal18, label %str_ok20, label %str_gen_check19

and.512.else:                                     ; preds = %str_ok10
  br label %and.512.exit

and.512.exit:                                     ; preds = %and.512.else, %str.eq.merge
  %and.512.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.512.else ]
  ret i1 %and.512.phi

str_gen_check19:                                  ; preds = %and.512.then
  %arena.cur22 = call ptr @dva_arena_current()
  %tag.valid23 = call i1 @dva_arena_validate_tag(ptr %arena.cur22, i64 %str.tag17)
  br i1 %tag.valid23, label %str_ok20, label %str_stale21

str_ok20:                                         ; preds = %str_stale21, %str_gen_check19, %and.512.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 1
  %s.read.data24 = load ptr, ptr %s.read.data, align 8
  %var.load25 = load ptr, ptr %var.s, align 8
  %str.len.query26 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %str.len.query27 = load i64, ptr %str.len.query26, align 8
  %str.len.query28 = and i64 %str.len.query27, 281474976710655
  %str.tag29 = lshr i64 %str.len.query27, 48
  %str.immortal30 = icmp eq i64 %str.tag29, 0
  br i1 %str.immortal30, label %str_ok32, label %str_gen_check31

str_stale21:                                      ; preds = %str_gen_check19
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok20

str_gen_check31:                                  ; preds = %str_ok20
  %arena.cur34 = call ptr @dva_arena_current()
  %tag.valid35 = call i1 @dva_arena_validate_tag(ptr %arena.cur34, i64 %str.tag29)
  br i1 %tag.valid35, label %str_ok32, label %str_stale33

str_ok32:                                         ; preds = %str_stale33, %str_gen_check31, %str_ok20
  %var.load36 = load ptr, ptr %var.suf, align 8
  %str.len.query37 = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 0
  %str.len.query38 = load i64, ptr %str.len.query37, align 8
  %str.len.query39 = and i64 %str.len.query38, 281474976710655
  %str.tag40 = lshr i64 %str.len.query38, 48
  %str.immortal41 = icmp eq i64 %str.tag40, 0
  br i1 %str.immortal41, label %str_ok43, label %str_gen_check42

str_stale33:                                      ; preds = %str_gen_check31
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok32

str_gen_check42:                                  ; preds = %str_ok32
  %arena.cur45 = call ptr @dva_arena_current()
  %tag.valid46 = call i1 @dva_arena_validate_tag(ptr %arena.cur45, i64 %str.tag40)
  br i1 %tag.valid46, label %str_ok43, label %str_stale44

str_ok43:                                         ; preds = %str_stale44, %str_gen_check42, %str_ok32
  %subtmp = sub i64 %str.len.query28, %str.len.query39
  %var.load47 = load ptr, ptr %var.s, align 8
  %str.len.query48 = getelementptr inbounds { i64, ptr }, ptr %var.load47, i32 0, i32 0
  %str.len.query49 = load i64, ptr %str.len.query48, align 8
  %str.len.query50 = and i64 %str.len.query49, 281474976710655
  %str.tag51 = lshr i64 %str.len.query49, 48
  %str.immortal52 = icmp eq i64 %str.tag51, 0
  br i1 %str.immortal52, label %str_ok54, label %str_gen_check53

str_stale44:                                      ; preds = %str_gen_check42
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok43

str_gen_check53:                                  ; preds = %str_ok43
  %arena.cur56 = call ptr @dva_arena_current()
  %tag.valid57 = call i1 @dva_arena_validate_tag(ptr %arena.cur56, i64 %str.tag51)
  br i1 %tag.valid57, label %str_ok54, label %str_stale55

str_ok54:                                         ; preds = %str_stale55, %str_gen_check53, %str_ok43
  %start.is_neg = icmp slt i64 %subtmp, 0
  %rel.start = add i64 %s.read.len16, %subtmp
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %subtmp
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len16
  %final.start = select i1 %start.gt.len, i64 %s.read.len16, i64 %c.start.0
  %end.is_neg = icmp slt i64 %str.len.query50, 0
  %rel.end = add i64 %s.read.len16, %str.len.query50
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %str.len.query50
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len16
  %final.end = select i1 %end.gt.len, i64 %s.read.len16, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data24, i64 %final.start
  %arena.cur58 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %var.load59 = load ptr, ptr %var.suf, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len60 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len61 = and i64 %eq.lhs.len60, 281474976710655
  %str.tag62 = lshr i64 %eq.lhs.len60, 48
  %str.immortal63 = icmp eq i64 %str.tag62, 0
  br i1 %str.immortal63, label %str_ok65, label %str_gen_check64

str_stale55:                                      ; preds = %str_gen_check53
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok54

str_gen_check64:                                  ; preds = %str_ok54
  %arena.cur67 = call ptr @dva_arena_current()
  %tag.valid68 = call i1 @dva_arena_validate_tag(ptr %arena.cur67, i64 %str.tag62)
  br i1 %tag.valid68, label %str_ok65, label %str_stale66

str_ok65:                                         ; preds = %str_stale66, %str_gen_check64, %str_ok54
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load59, i32 0, i32 0
  %eq.rhs.len69 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len70 = and i64 %eq.rhs.len69, 281474976710655
  %str.tag71 = lshr i64 %eq.rhs.len69, 48
  %str.immortal72 = icmp eq i64 %str.tag71, 0
  br i1 %str.immortal72, label %str_ok74, label %str_gen_check73

str_stale66:                                      ; preds = %str_gen_check64
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok65

str_gen_check73:                                  ; preds = %str_ok65
  %arena.cur76 = call ptr @dva_arena_current()
  %tag.valid77 = call i1 @dva_arena_validate_tag(ptr %arena.cur76, i64 %str.tag71)
  br i1 %tag.valid77, label %str_ok74, label %str_stale75

str_ok74:                                         ; preds = %str_stale75, %str_gen_check73, %str_ok65
  %eq.len = icmp eq i64 %eq.lhs.len61, %eq.rhs.len70
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale75:                                      ; preds = %str_gen_check73
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok74

str.eq.then:                                      ; preds = %str_ok74
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data78 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load59, i32 0, i32 1
  %eq.rhs.data79 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data78, ptr %eq.rhs.data79, i64 %eq.lhs.len61)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok74
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.512.exit
}

declare i32 @memcmp(ptr, ptr, i64)

define i1 @"formatter::starts_with_str"(ptr %0, ptr %1) #1 {
entry:
  %var.pfx = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.pfx, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %var.load3 = load ptr, ptr %var.pfx, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag7 = lshr i64 %str.len.query5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check9:                                   ; preds = %str_ok
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %str_ok
  %cmptmp = icmp sge i64 %str.len.query2, %str.len.query6
  br i1 %cmptmp, label %and.513.then, label %and.513.else

str_stale11:                                      ; preds = %str_gen_check9
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

and.513.then:                                     ; preds = %str_ok10
  %var.load14 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %s.read.len15 = load i64, ptr %s.read.len, align 8
  %s.read.len16 = and i64 %s.read.len15, 281474976710655
  %str.tag17 = lshr i64 %s.read.len15, 48
  %str.immortal18 = icmp eq i64 %str.tag17, 0
  br i1 %str.immortal18, label %str_ok20, label %str_gen_check19

and.513.else:                                     ; preds = %str_ok10
  br label %and.513.exit

and.513.exit:                                     ; preds = %and.513.else, %str.eq.merge
  %and.513.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.513.else ]
  ret i1 %and.513.phi

str_gen_check19:                                  ; preds = %and.513.then
  %arena.cur22 = call ptr @dva_arena_current()
  %tag.valid23 = call i1 @dva_arena_validate_tag(ptr %arena.cur22, i64 %str.tag17)
  br i1 %tag.valid23, label %str_ok20, label %str_stale21

str_ok20:                                         ; preds = %str_stale21, %str_gen_check19, %and.513.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 1
  %s.read.data24 = load ptr, ptr %s.read.data, align 8
  %var.load25 = load ptr, ptr %var.pfx, align 8
  %str.len.query26 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %str.len.query27 = load i64, ptr %str.len.query26, align 8
  %str.len.query28 = and i64 %str.len.query27, 281474976710655
  %str.tag29 = lshr i64 %str.len.query27, 48
  %str.immortal30 = icmp eq i64 %str.tag29, 0
  br i1 %str.immortal30, label %str_ok32, label %str_gen_check31

str_stale21:                                      ; preds = %str_gen_check19
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok20

str_gen_check31:                                  ; preds = %str_ok20
  %arena.cur34 = call ptr @dva_arena_current()
  %tag.valid35 = call i1 @dva_arena_validate_tag(ptr %arena.cur34, i64 %str.tag29)
  br i1 %tag.valid35, label %str_ok32, label %str_stale33

str_ok32:                                         ; preds = %str_stale33, %str_gen_check31, %str_ok20
  %rel.start = add i64 %s.read.len16, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len16
  %final.start = select i1 %start.gt.len, i64 %s.read.len16, i64 %c.start.0
  %end.is_neg = icmp slt i64 %str.len.query28, 0
  %rel.end = add i64 %s.read.len16, %str.len.query28
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %str.len.query28
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len16
  %final.end = select i1 %end.gt.len, i64 %s.read.len16, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data24, i64 %final.start
  %arena.cur36 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %var.load37 = load ptr, ptr %var.pfx, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len38 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len39 = and i64 %eq.lhs.len38, 281474976710655
  %str.tag40 = lshr i64 %eq.lhs.len38, 48
  %str.immortal41 = icmp eq i64 %str.tag40, 0
  br i1 %str.immortal41, label %str_ok43, label %str_gen_check42

str_stale33:                                      ; preds = %str_gen_check31
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok32

str_gen_check42:                                  ; preds = %str_ok32
  %arena.cur45 = call ptr @dva_arena_current()
  %tag.valid46 = call i1 @dva_arena_validate_tag(ptr %arena.cur45, i64 %str.tag40)
  br i1 %tag.valid46, label %str_ok43, label %str_stale44

str_ok43:                                         ; preds = %str_stale44, %str_gen_check42, %str_ok32
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %eq.rhs.len47 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len48 = and i64 %eq.rhs.len47, 281474976710655
  %str.tag49 = lshr i64 %eq.rhs.len47, 48
  %str.immortal50 = icmp eq i64 %str.tag49, 0
  br i1 %str.immortal50, label %str_ok52, label %str_gen_check51

str_stale44:                                      ; preds = %str_gen_check42
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok43

str_gen_check51:                                  ; preds = %str_ok43
  %arena.cur54 = call ptr @dva_arena_current()
  %tag.valid55 = call i1 @dva_arena_validate_tag(ptr %arena.cur54, i64 %str.tag49)
  br i1 %tag.valid55, label %str_ok52, label %str_stale53

str_ok52:                                         ; preds = %str_stale53, %str_gen_check51, %str_ok43
  %eq.len = icmp eq i64 %eq.lhs.len39, %eq.rhs.len48
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale53:                                      ; preds = %str_gen_check51
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok52

str.eq.then:                                      ; preds = %str_ok52
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data56 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %eq.rhs.data57 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data56, ptr %eq.rhs.data57, i64 %eq.lhs.len39)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok52
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.513.exit
}

define i1 @"formatter::starts_with_choice_sep"(ptr %0) #1 {
entry:
  %var.c0 = alloca i64, align 8
  %var.code = alloca ptr, align 8
  store ptr %0, ptr %var.code, align 8
  %var.load = load ptr, ptr %var.code, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load3 = load ptr, ptr %var.code, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %s.read.len4 = load i64, ptr %s.read.len, align 8
  %s.read.len5 = and i64 %s.read.len4, 281474976710655
  %str.tag6 = lshr i64 %s.read.len4, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check8:                                   ; preds = %choice.exit
  %arena.cur11 = call ptr @dva_arena_current()
  %tag.valid12 = call i1 @dva_arena_validate_tag(ptr %arena.cur11, i64 %str.tag6)
  br i1 %tag.valid12, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

str_stale10:                                      ; preds = %str_gen_check8
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

idx_big_check:                                    ; preds = %str_ok9
  %idx.big = icmp sge i64 0, %s.read.len5
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data13, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c0, align 8
  %var.load14 = load i64, ptr %var.c0, align 8
  %cmptmp15 = icmp eq i64 %var.load14, 91
  br i1 %cmptmp15, label %choice.then16, label %choice.exit17

idx_oob:                                          ; preds = %idx_big_check, %str_ok9
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then16:                                    ; preds = %idx_ok
  ret i1 true

choice.exit17:                                    ; preds = %ret.dead18, %idx_ok
  %var.load19 = load ptr, ptr %var.code, align 8
  %call.res = call i1 @"formatter::starts_with_str"(ptr %var.load19, ptr @str.4.struct)
  br i1 %call.res, label %choice.then20, label %choice.exit21

ret.dead18:                                       ; No predecessors!
  br label %choice.exit17

choice.then20:                                    ; preds = %choice.exit17
  ret i1 true

choice.exit21:                                    ; preds = %ret.dead22, %choice.exit17
  %var.load23 = load ptr, ptr %var.code, align 8
  %call.res24 = call i1 @"formatter::starts_with_str"(ptr %var.load23, ptr @str.5.struct)
  br i1 %call.res24, label %choice.then25, label %choice.exit26

ret.dead22:                                       ; No predecessors!
  br label %choice.exit21

choice.then25:                                    ; preds = %choice.exit21
  ret i1 true

choice.exit26:                                    ; preds = %ret.dead27, %choice.exit21
  %var.load28 = load i64, ptr %var.c0, align 8
  %cmptmp29 = icmp eq i64 %var.load28, 124
  br i1 %cmptmp29, label %and.514.then, label %and.514.else

ret.dead27:                                       ; No predecessors!
  br label %choice.exit26

and.514.then:                                     ; preds = %choice.exit26
  %var.load30 = load ptr, ptr %var.code, align 8
  %str.len.query31 = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 0
  %str.len.query32 = load i64, ptr %str.len.query31, align 8
  %str.len.query33 = and i64 %str.len.query32, 281474976710655
  %str.tag34 = lshr i64 %str.len.query32, 48
  %str.immortal35 = icmp eq i64 %str.tag34, 0
  br i1 %str.immortal35, label %str_ok37, label %str_gen_check36

and.514.else:                                     ; preds = %choice.exit26
  br label %and.514.exit

and.514.exit:                                     ; preds = %and.514.else, %or.515.exit
  %and.514.phi = phi i1 [ %or.515.phi, %or.515.exit ], [ %cmptmp29, %and.514.else ]
  ret i1 %and.514.phi

str_gen_check36:                                  ; preds = %and.514.then
  %arena.cur39 = call ptr @dva_arena_current()
  %tag.valid40 = call i1 @dva_arena_validate_tag(ptr %arena.cur39, i64 %str.tag34)
  br i1 %tag.valid40, label %str_ok37, label %str_stale38

str_ok37:                                         ; preds = %str_stale38, %str_gen_check36, %and.514.then
  %cmptmp41 = icmp eq i64 %str.len.query33, 1
  br i1 %cmptmp41, label %or.515.then, label %or.515.else

str_stale38:                                      ; preds = %str_gen_check36
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok37

or.515.then:                                      ; preds = %str_ok37
  br label %or.515.exit

or.515.else:                                      ; preds = %str_ok37
  %var.load42 = load ptr, ptr %var.code, align 8
  %s.read.len43 = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 0
  %s.read.len44 = load i64, ptr %s.read.len43, align 8
  %s.read.len45 = and i64 %s.read.len44, 281474976710655
  %str.tag46 = lshr i64 %s.read.len44, 48
  %str.immortal47 = icmp eq i64 %str.tag46, 0
  br i1 %str.immortal47, label %str_ok49, label %str_gen_check48

or.515.exit:                                      ; preds = %idx_ok56, %or.515.then
  %or.515.phi = phi i1 [ %cmptmp41, %or.515.then ], [ %cmptmp62, %idx_ok56 ]
  br label %and.514.exit

str_gen_check48:                                  ; preds = %or.515.else
  %arena.cur51 = call ptr @dva_arena_current()
  %tag.valid52 = call i1 @dva_arena_validate_tag(ptr %arena.cur51, i64 %str.tag46)
  br i1 %tag.valid52, label %str_ok49, label %str_stale50

str_ok49:                                         ; preds = %str_stale50, %str_gen_check48, %or.515.else
  %s.read.data53 = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 1
  %s.read.data54 = load ptr, ptr %s.read.data53, align 8
  br i1 false, label %idx_oob57, label %idx_big_check55

str_stale50:                                      ; preds = %str_gen_check48
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok49

idx_big_check55:                                  ; preds = %str_ok49
  %idx.big58 = icmp sge i64 1, %s.read.len45
  br i1 %idx.big58, label %idx_oob57, label %idx_ok56

idx_ok56:                                         ; preds = %idx_oob57, %idx_big_check55
  %s.byte.gep59 = getelementptr i8, ptr %s.read.data54, i64 1
  %s.byte60 = load i8, ptr %s.byte.gep59, align 1
  %s.byte.val61 = zext i8 %s.byte60 to i64
  %cmptmp62 = icmp ne i64 %s.byte.val61, 124
  br label %or.515.exit

idx_oob57:                                        ; preds = %idx_big_check55, %str_ok49
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok56
}

define i1 @"formatter::is_inline_pipe_arm"(ptr %0) #1 {
entry:
  %var.code = alloca ptr, align 8
  store ptr %0, ptr %var.code, align 8
  %var.load = load ptr, ptr %var.code, align 8
  %call.res = call i1 @"formatter::starts_with_str"(ptr %var.load, ptr @str.6.struct)
  br i1 %call.res, label %or.516.then, label %or.516.else

or.516.then:                                      ; preds = %entry
  br label %or.516.exit

or.516.else:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.code, align 8
  %call.res2 = call i1 @"formatter::starts_with_str"(ptr %var.load1, ptr @str.7.struct)
  br label %or.516.exit

or.516.exit:                                      ; preds = %or.516.else, %or.516.then
  %or.516.phi = phi i1 [ %call.res, %or.516.then ], [ %call.res2, %or.516.else ]
  br i1 %or.516.phi, label %or.517.then, label %or.517.else

or.517.then:                                      ; preds = %or.516.exit
  br label %or.517.exit

or.517.else:                                      ; preds = %or.516.exit
  %var.load3 = load ptr, ptr %var.code, align 8
  %call.res4 = call i1 @"formatter::starts_with_str"(ptr %var.load3, ptr @str.8.struct)
  br label %or.517.exit

or.517.exit:                                      ; preds = %or.517.else, %or.517.then
  %or.517.phi = phi i1 [ %or.516.phi, %or.517.then ], [ %call.res4, %or.517.else ]
  br i1 %or.517.phi, label %or.518.then, label %or.518.else

or.518.then:                                      ; preds = %or.517.exit
  br label %or.518.exit

or.518.else:                                      ; preds = %or.517.exit
  %var.load5 = load ptr, ptr %var.code, align 8
  %call.res6 = call i1 @"formatter::starts_with_str"(ptr %var.load5, ptr @str.9.struct)
  br label %or.518.exit

or.518.exit:                                      ; preds = %or.518.else, %or.518.then
  %or.518.phi = phi i1 [ %or.517.phi, %or.518.then ], [ %call.res6, %or.518.else ]
  br i1 %or.518.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %or.518.exit
  br label %choice.exit

choice.else:                                      ; preds = %or.518.exit
  %var.load7 = load ptr, ptr %var.code, align 8
  %call.res8 = call i1 @"formatter::starts_with_str"(ptr %var.load7, ptr @str.5.struct)
  br i1 %call.res8, label %choice.then9, label %choice.else10

choice.exit:                                      ; preds = %choice.exit11, %choice.then
  %choice.res60 = phi i1 [ false, %choice.then ], [ %choice.res, %choice.exit11 ]
  ret i1 %choice.res60

choice.then9:                                     ; preds = %choice.else
  %var.load12 = load ptr, ptr %var.code, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 0
  %str.len.query13 = load i64, ptr %str.len.query, align 8
  %str.len.query14 = and i64 %str.len.query13, 281474976710655
  %str.tag = lshr i64 %str.len.query13, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.else10:                                    ; preds = %choice.else
  %var.load15 = load ptr, ptr %var.code, align 8
  %str.len.query16 = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 0
  %str.len.query17 = load i64, ptr %str.len.query16, align 8
  %str.len.query18 = and i64 %str.len.query17, 281474976710655
  %str.tag19 = lshr i64 %str.len.query17, 48
  %str.immortal20 = icmp eq i64 %str.tag19, 0
  br i1 %str.immortal20, label %str_ok22, label %str_gen_check21

choice.exit11:                                    ; preds = %and.520.exit, %str_ok
  %choice.res = phi i1 [ %cmptmp, %str_ok ], [ %and.520.phi, %and.520.exit ]
  br label %choice.exit

str_gen_check:                                    ; preds = %choice.then9
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.then9
  %cmptmp = icmp sgt i64 %str.len.query14, 2
  br label %choice.exit11

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check21:                                  ; preds = %choice.else10
  %arena.cur24 = call ptr @dva_arena_current()
  %tag.valid25 = call i1 @dva_arena_validate_tag(ptr %arena.cur24, i64 %str.tag19)
  br i1 %tag.valid25, label %str_ok22, label %str_stale23

str_ok22:                                         ; preds = %str_stale23, %str_gen_check21, %choice.else10
  %cmptmp26 = icmp sgt i64 %str.len.query18, 1
  br i1 %cmptmp26, label %and.519.then, label %and.519.else

str_stale23:                                      ; preds = %str_gen_check21
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok22

and.519.then:                                     ; preds = %str_ok22
  %var.load27 = load ptr, ptr %var.code, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %s.read.len28 = load i64, ptr %s.read.len, align 8
  %s.read.len29 = and i64 %s.read.len28, 281474976710655
  %str.tag30 = lshr i64 %s.read.len28, 48
  %str.immortal31 = icmp eq i64 %str.tag30, 0
  br i1 %str.immortal31, label %str_ok33, label %str_gen_check32

and.519.else:                                     ; preds = %str_ok22
  br label %and.519.exit

and.519.exit:                                     ; preds = %and.519.else, %idx_ok
  %and.519.phi = phi i1 [ %cmptmp38, %idx_ok ], [ %cmptmp26, %and.519.else ]
  br i1 %and.519.phi, label %and.520.then, label %and.520.else

str_gen_check32:                                  ; preds = %and.519.then
  %arena.cur35 = call ptr @dva_arena_current()
  %tag.valid36 = call i1 @dva_arena_validate_tag(ptr %arena.cur35, i64 %str.tag30)
  br i1 %tag.valid36, label %str_ok33, label %str_stale34

str_ok33:                                         ; preds = %str_stale34, %str_gen_check32, %and.519.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %s.read.data37 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

str_stale34:                                      ; preds = %str_gen_check32
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok33

idx_big_check:                                    ; preds = %str_ok33
  %idx.big = icmp sge i64 0, %s.read.len29
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data37, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp38 = icmp eq i64 %s.byte.val, 124
  br label %and.519.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok33
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.520.then:                                     ; preds = %and.519.exit
  %var.load39 = load ptr, ptr %var.code, align 8
  %s.read.len40 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 0
  %s.read.len41 = load i64, ptr %s.read.len40, align 8
  %s.read.len42 = and i64 %s.read.len41, 281474976710655
  %str.tag43 = lshr i64 %s.read.len41, 48
  %str.immortal44 = icmp eq i64 %str.tag43, 0
  br i1 %str.immortal44, label %str_ok46, label %str_gen_check45

and.520.else:                                     ; preds = %and.519.exit
  br label %and.520.exit

and.520.exit:                                     ; preds = %and.520.else, %idx_ok53
  %and.520.phi = phi i1 [ %cmptmp59, %idx_ok53 ], [ %and.519.phi, %and.520.else ]
  br label %choice.exit11

str_gen_check45:                                  ; preds = %and.520.then
  %arena.cur48 = call ptr @dva_arena_current()
  %tag.valid49 = call i1 @dva_arena_validate_tag(ptr %arena.cur48, i64 %str.tag43)
  br i1 %tag.valid49, label %str_ok46, label %str_stale47

str_ok46:                                         ; preds = %str_stale47, %str_gen_check45, %and.520.then
  %s.read.data50 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 1
  %s.read.data51 = load ptr, ptr %s.read.data50, align 8
  br i1 false, label %idx_oob54, label %idx_big_check52

str_stale47:                                      ; preds = %str_gen_check45
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok46

idx_big_check52:                                  ; preds = %str_ok46
  %idx.big55 = icmp sge i64 1, %s.read.len42
  br i1 %idx.big55, label %idx_oob54, label %idx_ok53

idx_ok53:                                         ; preds = %idx_oob54, %idx_big_check52
  %s.byte.gep56 = getelementptr i8, ptr %s.read.data51, i64 1
  %s.byte57 = load i8, ptr %s.byte.gep56, align 1
  %s.byte.val58 = zext i8 %s.byte57 to i64
  %cmptmp59 = icmp ne i64 %s.byte.val58, 124
  br label %and.520.exit

idx_oob54:                                        ; preds = %idx_big_check52, %str_ok46
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok53
}

define i1 @"formatter::ends_with_block_opener"(ptr %0) #1 {
entry:
  %var.code = alloca ptr, align 8
  store ptr %0, ptr %var.code, align 8
  %var.load = load ptr, ptr %var.code, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load3 = load ptr, ptr %var.code, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len5 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len6 = and i64 %eq.lhs.len5, 281474976710655
  %str.tag7 = lshr i64 %eq.lhs.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.exit4:                                     ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %choice.then172, label %choice.exit173

choice.case:                                      ; preds = %str.eq.merge164
  br label %choice.exit4

choice.next:                                      ; preds = %str.eq.merge164
  br label %choice.exit4

str_gen_check9:                                   ; preds = %choice.exit
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %choice.exit
  %eq.rhs.len = load i64, ptr @str.10.struct, align 8
  %eq.rhs.len14 = and i64 %eq.rhs.len, 281474976710655
  %str.tag15 = lshr i64 %eq.rhs.len, 48
  %str.immortal16 = icmp eq i64 %str.tag15, 0
  br i1 %str.immortal16, label %str_ok18, label %str_gen_check17

str_stale11:                                      ; preds = %str_gen_check9
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

str_gen_check17:                                  ; preds = %str_ok10
  %arena.cur20 = call ptr @dva_arena_current()
  %tag.valid21 = call i1 @dva_arena_validate_tag(ptr %arena.cur20, i64 %str.tag15)
  br i1 %tag.valid21, label %str_ok18, label %str_stale19

str_ok18:                                         ; preds = %str_stale19, %str_gen_check17, %str_ok10
  %eq.len = icmp eq i64 %eq.lhs.len6, %eq.rhs.len14
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale19:                                      ; preds = %str_gen_check17
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok18

str.eq.then:                                      ; preds = %str_ok18
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data22 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.10.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data22, ptr %eq.rhs.data, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok18
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %eq.lhs.len23 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len24 = load i64, ptr %eq.lhs.len23, align 8
  %eq.lhs.len25 = and i64 %eq.lhs.len24, 281474976710655
  %str.tag26 = lshr i64 %eq.lhs.len24, 48
  %str.immortal27 = icmp eq i64 %str.tag26, 0
  br i1 %str.immortal27, label %str_ok29, label %str_gen_check28

str_gen_check28:                                  ; preds = %str.eq.merge
  %arena.cur31 = call ptr @dva_arena_current()
  %tag.valid32 = call i1 @dva_arena_validate_tag(ptr %arena.cur31, i64 %str.tag26)
  br i1 %tag.valid32, label %str_ok29, label %str_stale30

str_ok29:                                         ; preds = %str_stale30, %str_gen_check28, %str.eq.merge
  %eq.rhs.len33 = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len34 = and i64 %eq.rhs.len33, 281474976710655
  %str.tag35 = lshr i64 %eq.rhs.len33, 48
  %str.immortal36 = icmp eq i64 %str.tag35, 0
  br i1 %str.immortal36, label %str_ok38, label %str_gen_check37

str_stale30:                                      ; preds = %str_gen_check28
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok29

str_gen_check37:                                  ; preds = %str_ok29
  %arena.cur40 = call ptr @dva_arena_current()
  %tag.valid41 = call i1 @dva_arena_validate_tag(ptr %arena.cur40, i64 %str.tag35)
  br i1 %tag.valid41, label %str_ok38, label %str_stale39

str_ok38:                                         ; preds = %str_stale39, %str_gen_check37, %str_ok29
  %eq.len42 = icmp eq i64 %eq.lhs.len25, %eq.rhs.len34
  br i1 %eq.len42, label %str.eq.then43, label %str.eq.else44

str_stale39:                                      ; preds = %str_gen_check37
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok38

str.eq.then43:                                    ; preds = %str_ok38
  %eq.lhs.data46 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data47 = load ptr, ptr %eq.lhs.data46, align 8
  %eq.rhs.data48 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp49 = call i32 @memcmp(ptr %eq.lhs.data47, ptr %eq.rhs.data48, i64 %eq.lhs.len25)
  %eq.cmp.zero50 = icmp eq i32 %eq.memcmp49, 0
  br label %str.eq.merge45

str.eq.else44:                                    ; preds = %str_ok38
  br label %str.eq.merge45

str.eq.merge45:                                   ; preds = %str.eq.else44, %str.eq.then43
  %str.eq.result51 = phi i1 [ %eq.cmp.zero50, %str.eq.then43 ], [ false, %str.eq.else44 ]
  %case.or = or i1 %str.eq.result, %str.eq.result51
  %eq.lhs.len52 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len53 = load i64, ptr %eq.lhs.len52, align 8
  %eq.lhs.len54 = and i64 %eq.lhs.len53, 281474976710655
  %str.tag55 = lshr i64 %eq.lhs.len53, 48
  %str.immortal56 = icmp eq i64 %str.tag55, 0
  br i1 %str.immortal56, label %str_ok58, label %str_gen_check57

str_gen_check57:                                  ; preds = %str.eq.merge45
  %arena.cur60 = call ptr @dva_arena_current()
  %tag.valid61 = call i1 @dva_arena_validate_tag(ptr %arena.cur60, i64 %str.tag55)
  br i1 %tag.valid61, label %str_ok58, label %str_stale59

str_ok58:                                         ; preds = %str_stale59, %str_gen_check57, %str.eq.merge45
  %eq.rhs.len62 = load i64, ptr @str.11.struct, align 8
  %eq.rhs.len63 = and i64 %eq.rhs.len62, 281474976710655
  %str.tag64 = lshr i64 %eq.rhs.len62, 48
  %str.immortal65 = icmp eq i64 %str.tag64, 0
  br i1 %str.immortal65, label %str_ok67, label %str_gen_check66

str_stale59:                                      ; preds = %str_gen_check57
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok58

str_gen_check66:                                  ; preds = %str_ok58
  %arena.cur69 = call ptr @dva_arena_current()
  %tag.valid70 = call i1 @dva_arena_validate_tag(ptr %arena.cur69, i64 %str.tag64)
  br i1 %tag.valid70, label %str_ok67, label %str_stale68

str_ok67:                                         ; preds = %str_stale68, %str_gen_check66, %str_ok58
  %eq.len71 = icmp eq i64 %eq.lhs.len54, %eq.rhs.len63
  br i1 %eq.len71, label %str.eq.then72, label %str.eq.else73

str_stale68:                                      ; preds = %str_gen_check66
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok67

str.eq.then72:                                    ; preds = %str_ok67
  %eq.lhs.data75 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data76 = load ptr, ptr %eq.lhs.data75, align 8
  %eq.rhs.data77 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  %eq.memcmp78 = call i32 @memcmp(ptr %eq.lhs.data76, ptr %eq.rhs.data77, i64 %eq.lhs.len54)
  %eq.cmp.zero79 = icmp eq i32 %eq.memcmp78, 0
  br label %str.eq.merge74

str.eq.else73:                                    ; preds = %str_ok67
  br label %str.eq.merge74

str.eq.merge74:                                   ; preds = %str.eq.else73, %str.eq.then72
  %str.eq.result80 = phi i1 [ %eq.cmp.zero79, %str.eq.then72 ], [ false, %str.eq.else73 ]
  %case.or81 = or i1 %case.or, %str.eq.result80
  %eq.lhs.len82 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len83 = load i64, ptr %eq.lhs.len82, align 8
  %eq.lhs.len84 = and i64 %eq.lhs.len83, 281474976710655
  %str.tag85 = lshr i64 %eq.lhs.len83, 48
  %str.immortal86 = icmp eq i64 %str.tag85, 0
  br i1 %str.immortal86, label %str_ok88, label %str_gen_check87

str_gen_check87:                                  ; preds = %str.eq.merge74
  %arena.cur90 = call ptr @dva_arena_current()
  %tag.valid91 = call i1 @dva_arena_validate_tag(ptr %arena.cur90, i64 %str.tag85)
  br i1 %tag.valid91, label %str_ok88, label %str_stale89

str_ok88:                                         ; preds = %str_stale89, %str_gen_check87, %str.eq.merge74
  %eq.rhs.len92 = load i64, ptr @str.12.struct, align 8
  %eq.rhs.len93 = and i64 %eq.rhs.len92, 281474976710655
  %str.tag94 = lshr i64 %eq.rhs.len92, 48
  %str.immortal95 = icmp eq i64 %str.tag94, 0
  br i1 %str.immortal95, label %str_ok97, label %str_gen_check96

str_stale89:                                      ; preds = %str_gen_check87
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok88

str_gen_check96:                                  ; preds = %str_ok88
  %arena.cur99 = call ptr @dva_arena_current()
  %tag.valid100 = call i1 @dva_arena_validate_tag(ptr %arena.cur99, i64 %str.tag94)
  br i1 %tag.valid100, label %str_ok97, label %str_stale98

str_ok97:                                         ; preds = %str_stale98, %str_gen_check96, %str_ok88
  %eq.len101 = icmp eq i64 %eq.lhs.len84, %eq.rhs.len93
  br i1 %eq.len101, label %str.eq.then102, label %str.eq.else103

str_stale98:                                      ; preds = %str_gen_check96
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok97

str.eq.then102:                                   ; preds = %str_ok97
  %eq.lhs.data105 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data106 = load ptr, ptr %eq.lhs.data105, align 8
  %eq.rhs.data107 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.12.struct, i32 0, i32 1), align 8
  %eq.memcmp108 = call i32 @memcmp(ptr %eq.lhs.data106, ptr %eq.rhs.data107, i64 %eq.lhs.len84)
  %eq.cmp.zero109 = icmp eq i32 %eq.memcmp108, 0
  br label %str.eq.merge104

str.eq.else103:                                   ; preds = %str_ok97
  br label %str.eq.merge104

str.eq.merge104:                                  ; preds = %str.eq.else103, %str.eq.then102
  %str.eq.result110 = phi i1 [ %eq.cmp.zero109, %str.eq.then102 ], [ false, %str.eq.else103 ]
  %case.or111 = or i1 %case.or81, %str.eq.result110
  %eq.lhs.len112 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len113 = load i64, ptr %eq.lhs.len112, align 8
  %eq.lhs.len114 = and i64 %eq.lhs.len113, 281474976710655
  %str.tag115 = lshr i64 %eq.lhs.len113, 48
  %str.immortal116 = icmp eq i64 %str.tag115, 0
  br i1 %str.immortal116, label %str_ok118, label %str_gen_check117

str_gen_check117:                                 ; preds = %str.eq.merge104
  %arena.cur120 = call ptr @dva_arena_current()
  %tag.valid121 = call i1 @dva_arena_validate_tag(ptr %arena.cur120, i64 %str.tag115)
  br i1 %tag.valid121, label %str_ok118, label %str_stale119

str_ok118:                                        ; preds = %str_stale119, %str_gen_check117, %str.eq.merge104
  %eq.rhs.len122 = load i64, ptr @str.13.struct, align 8
  %eq.rhs.len123 = and i64 %eq.rhs.len122, 281474976710655
  %str.tag124 = lshr i64 %eq.rhs.len122, 48
  %str.immortal125 = icmp eq i64 %str.tag124, 0
  br i1 %str.immortal125, label %str_ok127, label %str_gen_check126

str_stale119:                                     ; preds = %str_gen_check117
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok118

str_gen_check126:                                 ; preds = %str_ok118
  %arena.cur129 = call ptr @dva_arena_current()
  %tag.valid130 = call i1 @dva_arena_validate_tag(ptr %arena.cur129, i64 %str.tag124)
  br i1 %tag.valid130, label %str_ok127, label %str_stale128

str_ok127:                                        ; preds = %str_stale128, %str_gen_check126, %str_ok118
  %eq.len131 = icmp eq i64 %eq.lhs.len114, %eq.rhs.len123
  br i1 %eq.len131, label %str.eq.then132, label %str.eq.else133

str_stale128:                                     ; preds = %str_gen_check126
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok127

str.eq.then132:                                   ; preds = %str_ok127
  %eq.lhs.data135 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data136 = load ptr, ptr %eq.lhs.data135, align 8
  %eq.rhs.data137 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.13.struct, i32 0, i32 1), align 8
  %eq.memcmp138 = call i32 @memcmp(ptr %eq.lhs.data136, ptr %eq.rhs.data137, i64 %eq.lhs.len114)
  %eq.cmp.zero139 = icmp eq i32 %eq.memcmp138, 0
  br label %str.eq.merge134

str.eq.else133:                                   ; preds = %str_ok127
  br label %str.eq.merge134

str.eq.merge134:                                  ; preds = %str.eq.else133, %str.eq.then132
  %str.eq.result140 = phi i1 [ %eq.cmp.zero139, %str.eq.then132 ], [ false, %str.eq.else133 ]
  %case.or141 = or i1 %case.or111, %str.eq.result140
  %eq.lhs.len142 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len143 = load i64, ptr %eq.lhs.len142, align 8
  %eq.lhs.len144 = and i64 %eq.lhs.len143, 281474976710655
  %str.tag145 = lshr i64 %eq.lhs.len143, 48
  %str.immortal146 = icmp eq i64 %str.tag145, 0
  br i1 %str.immortal146, label %str_ok148, label %str_gen_check147

str_gen_check147:                                 ; preds = %str.eq.merge134
  %arena.cur150 = call ptr @dva_arena_current()
  %tag.valid151 = call i1 @dva_arena_validate_tag(ptr %arena.cur150, i64 %str.tag145)
  br i1 %tag.valid151, label %str_ok148, label %str_stale149

str_ok148:                                        ; preds = %str_stale149, %str_gen_check147, %str.eq.merge134
  %eq.rhs.len152 = load i64, ptr @str.14.struct, align 8
  %eq.rhs.len153 = and i64 %eq.rhs.len152, 281474976710655
  %str.tag154 = lshr i64 %eq.rhs.len152, 48
  %str.immortal155 = icmp eq i64 %str.tag154, 0
  br i1 %str.immortal155, label %str_ok157, label %str_gen_check156

str_stale149:                                     ; preds = %str_gen_check147
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok148

str_gen_check156:                                 ; preds = %str_ok148
  %arena.cur159 = call ptr @dva_arena_current()
  %tag.valid160 = call i1 @dva_arena_validate_tag(ptr %arena.cur159, i64 %str.tag154)
  br i1 %tag.valid160, label %str_ok157, label %str_stale158

str_ok157:                                        ; preds = %str_stale158, %str_gen_check156, %str_ok148
  %eq.len161 = icmp eq i64 %eq.lhs.len144, %eq.rhs.len153
  br i1 %eq.len161, label %str.eq.then162, label %str.eq.else163

str_stale158:                                     ; preds = %str_gen_check156
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok157

str.eq.then162:                                   ; preds = %str_ok157
  %eq.lhs.data165 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data166 = load ptr, ptr %eq.lhs.data165, align 8
  %eq.rhs.data167 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  %eq.memcmp168 = call i32 @memcmp(ptr %eq.lhs.data166, ptr %eq.rhs.data167, i64 %eq.lhs.len144)
  %eq.cmp.zero169 = icmp eq i32 %eq.memcmp168, 0
  br label %str.eq.merge164

str.eq.else163:                                   ; preds = %str_ok157
  br label %str.eq.merge164

str.eq.merge164:                                  ; preds = %str.eq.else163, %str.eq.then162
  %str.eq.result170 = phi i1 [ %eq.cmp.zero169, %str.eq.then162 ], [ false, %str.eq.else163 ]
  %case.or171 = or i1 %case.or141, %str.eq.result170
  br i1 %case.or171, label %choice.case, label %choice.next

choice.then172:                                   ; preds = %choice.exit4
  ret i1 true

choice.exit173:                                   ; preds = %ret.dead174, %choice.exit4
  %var.load175 = load ptr, ptr %var.code, align 8
  %call.res = call i1 @"formatter::starts_with_str"(ptr %var.load175, ptr @str.15.struct)
  br i1 %call.res, label %choice.then176, label %choice.exit177

ret.dead174:                                      ; No predecessors!
  br label %choice.exit173

choice.then176:                                   ; preds = %choice.exit173
  ret i1 true

choice.exit177:                                   ; preds = %ret.dead178, %choice.exit173
  %var.load179 = load ptr, ptr %var.code, align 8
  %call.res180 = call i1 @"formatter::ends_with_str"(ptr %var.load179, ptr @str.16.struct)
  br i1 %call.res180, label %or.521.then, label %or.521.else

ret.dead178:                                      ; No predecessors!
  br label %choice.exit177

or.521.then:                                      ; preds = %choice.exit177
  br label %or.521.exit

or.521.else:                                      ; preds = %choice.exit177
  %var.load181 = load ptr, ptr %var.code, align 8
  %call.res182 = call i1 @"formatter::ends_with_str"(ptr %var.load181, ptr @str.17.struct)
  br label %or.521.exit

or.521.exit:                                      ; preds = %or.521.else, %or.521.then
  %or.521.phi = phi i1 [ %call.res180, %or.521.then ], [ %call.res182, %or.521.else ]
  br i1 %or.521.phi, label %choice.then183, label %choice.exit184

choice.then183:                                   ; preds = %or.521.exit
  ret i1 true

choice.exit184:                                   ; preds = %ret.dead185, %or.521.exit
  %var.load186 = load ptr, ptr %var.code, align 8
  %call.res187 = call i1 @"formatter::ends_with_str"(ptr %var.load186, ptr @str.18.struct)
  br i1 %call.res187, label %or.522.then, label %or.522.else

ret.dead185:                                      ; No predecessors!
  br label %choice.exit184

or.522.then:                                      ; preds = %choice.exit184
  br label %or.522.exit

or.522.else:                                      ; preds = %choice.exit184
  %var.load188 = load ptr, ptr %var.code, align 8
  %call.res189 = call i1 @"formatter::ends_with_str"(ptr %var.load188, ptr @str.19.struct)
  br label %or.522.exit

or.522.exit:                                      ; preds = %or.522.else, %or.522.then
  %or.522.phi = phi i1 [ %call.res187, %or.522.then ], [ %call.res189, %or.522.else ]
  br i1 %or.522.phi, label %or.523.then, label %or.523.else

or.523.then:                                      ; preds = %or.522.exit
  br label %or.523.exit

or.523.else:                                      ; preds = %or.522.exit
  %var.load190 = load ptr, ptr %var.code, align 8
  %call.res191 = call i1 @"formatter::ends_with_str"(ptr %var.load190, ptr @str.20.struct)
  br label %or.523.exit

or.523.exit:                                      ; preds = %or.523.else, %or.523.then
  %or.523.phi = phi i1 [ %or.522.phi, %or.523.then ], [ %call.res191, %or.523.else ]
  br i1 %or.523.phi, label %choice.then192, label %choice.exit193

choice.then192:                                   ; preds = %or.523.exit
  ret i1 true

choice.exit193:                                   ; preds = %ret.dead194, %or.523.exit
  %var.load195 = load ptr, ptr %var.code, align 8
  %call.res196 = call i1 @"formatter::ends_with_str"(ptr %var.load195, ptr @str.21.struct)
  br i1 %call.res196, label %or.524.then, label %or.524.else

ret.dead194:                                      ; No predecessors!
  br label %choice.exit193

or.524.then:                                      ; preds = %choice.exit193
  br label %or.524.exit

or.524.else:                                      ; preds = %choice.exit193
  %var.load197 = load ptr, ptr %var.code, align 8
  %call.res198 = call i1 @"formatter::ends_with_str"(ptr %var.load197, ptr @str.22.struct)
  br label %or.524.exit

or.524.exit:                                      ; preds = %or.524.else, %or.524.then
  %or.524.phi = phi i1 [ %call.res196, %or.524.then ], [ %call.res198, %or.524.else ]
  br i1 %or.524.phi, label %choice.then199, label %choice.exit200

choice.then199:                                   ; preds = %or.524.exit
  ret i1 true

choice.exit200:                                   ; preds = %ret.dead201, %or.524.exit
  %var.load202 = load ptr, ptr %var.code, align 8
  %call.res203 = call i1 @"formatter::starts_with_str"(ptr %var.load202, ptr @str.23.struct)
  br i1 %call.res203, label %and.525.then, label %and.525.else

ret.dead201:                                      ; No predecessors!
  br label %choice.exit200

and.525.then:                                     ; preds = %choice.exit200
  %var.load204 = load ptr, ptr %var.code, align 8
  %call.res205 = call i1 @"formatter::ends_with_str"(ptr %var.load204, ptr @str.24.struct)
  br label %and.525.exit

and.525.else:                                     ; preds = %choice.exit200
  br label %and.525.exit

and.525.exit:                                     ; preds = %and.525.else, %and.525.then
  %and.525.phi = phi i1 [ %call.res205, %and.525.then ], [ %call.res203, %and.525.else ]
  br i1 %and.525.phi, label %choice.then206, label %choice.exit207

choice.then206:                                   ; preds = %and.525.exit
  ret i1 true

choice.exit207:                                   ; preds = %ret.dead208, %and.525.exit
  %var.load209 = load ptr, ptr %var.code, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load209, i32 0, i32 0
  %s.read.len210 = load i64, ptr %s.read.len, align 8
  %s.read.len211 = and i64 %s.read.len210, 281474976710655
  %str.tag212 = lshr i64 %s.read.len210, 48
  %str.immortal213 = icmp eq i64 %str.tag212, 0
  br i1 %str.immortal213, label %str_ok215, label %str_gen_check214

ret.dead208:                                      ; No predecessors!
  br label %choice.exit207

str_gen_check214:                                 ; preds = %choice.exit207
  %arena.cur217 = call ptr @dva_arena_current()
  %tag.valid218 = call i1 @dva_arena_validate_tag(ptr %arena.cur217, i64 %str.tag212)
  br i1 %tag.valid218, label %str_ok215, label %str_stale216

str_ok215:                                        ; preds = %str_stale216, %str_gen_check214, %choice.exit207
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load209, i32 0, i32 1
  %s.read.data219 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

str_stale216:                                     ; preds = %str_gen_check214
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok215

idx_big_check:                                    ; preds = %str_ok215
  %idx.big = icmp sge i64 0, %s.read.len211
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data219, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp220 = icmp eq i64 %s.byte.val, 91
  br i1 %cmptmp220, label %or.526.then, label %or.526.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok215
  %15 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

or.526.then:                                      ; preds = %idx_ok
  br label %or.526.exit

or.526.else:                                      ; preds = %idx_ok
  %var.load221 = load ptr, ptr %var.code, align 8
  %call.res222 = call i1 @"formatter::starts_with_str"(ptr %var.load221, ptr @str.4.struct)
  br label %or.526.exit

or.526.exit:                                      ; preds = %or.526.else, %or.526.then
  %or.526.phi = phi i1 [ %cmptmp220, %or.526.then ], [ %call.res222, %or.526.else ]
  br i1 %or.526.phi, label %and.527.then, label %and.527.else

and.527.then:                                     ; preds = %or.526.exit
  %var.load223 = load ptr, ptr %var.code, align 8
  %call.res224 = call i1 @"formatter::ends_with_str"(ptr %var.load223, ptr @str.25.struct)
  br label %and.527.exit

and.527.else:                                     ; preds = %or.526.exit
  br label %and.527.exit

and.527.exit:                                     ; preds = %and.527.else, %and.527.then
  %and.527.phi = phi i1 [ %call.res224, %and.527.then ], [ %or.526.phi, %and.527.else ]
  br i1 %and.527.phi, label %choice.then225, label %choice.exit226

choice.then225:                                   ; preds = %and.527.exit
  ret i1 true

choice.exit226:                                   ; preds = %ret.dead227, %and.527.exit
  %var.load228 = load ptr, ptr %var.code, align 8
  %call.res229 = call i1 @"formatter::ends_with_str"(ptr %var.load228, ptr @str.26.struct)
  br i1 %call.res229, label %and.528.then, label %and.528.else

ret.dead227:                                      ; No predecessors!
  br label %choice.exit226

and.528.then:                                     ; preds = %choice.exit226
  %var.load230 = load ptr, ptr %var.code, align 8
  %call.res231 = call i1 @"formatter::ends_with_str"(ptr %var.load230, ptr @str.27.struct)
  %nottmp = xor i1 %call.res231, true
  br label %and.528.exit

and.528.else:                                     ; preds = %choice.exit226
  br label %and.528.exit

and.528.exit:                                     ; preds = %and.528.else, %and.528.then
  %and.528.phi = phi i1 [ %nottmp, %and.528.then ], [ %call.res229, %and.528.else ]
  br i1 %and.528.phi, label %and.529.then, label %and.529.else

and.529.then:                                     ; preds = %and.528.exit
  %var.load232 = load ptr, ptr %var.code, align 8
  %call.res233 = call i1 @"formatter::ends_with_str"(ptr %var.load232, ptr @str.28.struct)
  %nottmp234 = xor i1 %call.res233, true
  br label %and.529.exit

and.529.else:                                     ; preds = %and.528.exit
  br label %and.529.exit

and.529.exit:                                     ; preds = %and.529.else, %and.529.then
  %and.529.phi = phi i1 [ %nottmp234, %and.529.then ], [ %and.528.phi, %and.529.else ]
  br i1 %and.529.phi, label %and.530.then, label %and.530.else

and.530.then:                                     ; preds = %and.529.exit
  %var.load235 = load ptr, ptr %var.code, align 8
  %call.res236 = call i1 @"formatter::ends_with_str"(ptr %var.load235, ptr @str.29.struct)
  %nottmp237 = xor i1 %call.res236, true
  br label %and.530.exit

and.530.else:                                     ; preds = %and.529.exit
  br label %and.530.exit

and.530.exit:                                     ; preds = %and.530.else, %and.530.then
  %and.530.phi = phi i1 [ %nottmp237, %and.530.then ], [ %and.529.phi, %and.530.else ]
  br i1 %and.530.phi, label %and.531.then, label %and.531.else

and.531.then:                                     ; preds = %and.530.exit
  %var.load238 = load ptr, ptr %var.code, align 8
  %call.res239 = call i1 @"formatter::ends_with_str"(ptr %var.load238, ptr @str.30.struct)
  %nottmp240 = xor i1 %call.res239, true
  br label %and.531.exit

and.531.else:                                     ; preds = %and.530.exit
  br label %and.531.exit

and.531.exit:                                     ; preds = %and.531.else, %and.531.then
  %and.531.phi = phi i1 [ %nottmp240, %and.531.then ], [ %and.530.phi, %and.531.else ]
  br i1 %and.531.phi, label %and.532.then, label %and.532.else

and.532.then:                                     ; preds = %and.531.exit
  %var.load241 = load ptr, ptr %var.code, align 8
  %call.res242 = call i1 @"formatter::ends_with_str"(ptr %var.load241, ptr @str.31.struct)
  %nottmp243 = xor i1 %call.res242, true
  br label %and.532.exit

and.532.else:                                     ; preds = %and.531.exit
  br label %and.532.exit

and.532.exit:                                     ; preds = %and.532.else, %and.532.then
  %and.532.phi = phi i1 [ %nottmp243, %and.532.then ], [ %and.531.phi, %and.532.else ]
  ret i1 %and.532.phi
}

define i1 @"formatter::ends_with_cont_op"(ptr %0) #1 {
entry:
  %var.code = alloca ptr, align 8
  store ptr %0, ptr %var.code, align 8
  %var.load = load ptr, ptr %var.code, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %or.533.then, label %or.533.else

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

or.533.then:                                      ; preds = %str_ok
  br label %or.533.exit

or.533.else:                                      ; preds = %str_ok
  %var.load3 = load ptr, ptr %var.code, align 8
  %call.res = call i1 @"formatter::ends_with_block_opener"(ptr %var.load3)
  br label %or.533.exit

or.533.exit:                                      ; preds = %or.533.else, %or.533.then
  %or.533.phi = phi i1 [ %cmptmp, %or.533.then ], [ %call.res, %or.533.else ]
  br i1 %or.533.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %or.533.exit
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %or.533.exit
  %var.load4 = load ptr, ptr %var.code, align 8
  %call.res5 = call i1 @"formatter::ends_with_str"(ptr %var.load4, ptr @str.32.struct)
  br i1 %call.res5, label %and.534.then, label %and.534.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

and.534.then:                                     ; preds = %choice.exit
  %var.load6 = load ptr, ptr %var.code, align 8
  %call.res7 = call i1 @"formatter::ends_with_str"(ptr %var.load6, ptr @str.33.struct)
  %nottmp = xor i1 %call.res7, true
  br label %and.534.exit

and.534.else:                                     ; preds = %choice.exit
  br label %and.534.exit

and.534.exit:                                     ; preds = %and.534.else, %and.534.then
  %and.534.phi = phi i1 [ %nottmp, %and.534.then ], [ %call.res5, %and.534.else ]
  br i1 %and.534.phi, label %and.535.then, label %and.535.else

and.535.then:                                     ; preds = %and.534.exit
  %var.load8 = load ptr, ptr %var.code, align 8
  %call.res9 = call i1 @"formatter::ends_with_str"(ptr %var.load8, ptr @str.34.struct)
  %nottmp10 = xor i1 %call.res9, true
  br label %and.535.exit

and.535.else:                                     ; preds = %and.534.exit
  br label %and.535.exit

and.535.exit:                                     ; preds = %and.535.else, %and.535.then
  %and.535.phi = phi i1 [ %nottmp10, %and.535.then ], [ %and.534.phi, %and.535.else ]
  br i1 %and.535.phi, label %and.536.then, label %and.536.else

and.536.then:                                     ; preds = %and.535.exit
  %var.load11 = load ptr, ptr %var.code, align 8
  %call.res12 = call i1 @"formatter::ends_with_str"(ptr %var.load11, ptr @str.35.struct)
  %nottmp13 = xor i1 %call.res12, true
  br label %and.536.exit

and.536.else:                                     ; preds = %and.535.exit
  br label %and.536.exit

and.536.exit:                                     ; preds = %and.536.else, %and.536.then
  %and.536.phi = phi i1 [ %nottmp13, %and.536.then ], [ %and.535.phi, %and.536.else ]
  br i1 %and.536.phi, label %choice.then14, label %choice.exit15

choice.then14:                                    ; preds = %and.536.exit
  ret i1 true

choice.exit15:                                    ; preds = %ret.dead16, %and.536.exit
  %var.load17 = load ptr, ptr %var.code, align 8
  %call.res18 = call i1 @"formatter::ends_with_str"(ptr %var.load17, ptr @str.36.struct)
  br i1 %call.res18, label %and.537.then, label %and.537.else

ret.dead16:                                       ; No predecessors!
  br label %choice.exit15

and.537.then:                                     ; preds = %choice.exit15
  %var.load19 = load ptr, ptr %var.code, align 8
  %call.res20 = call i1 @"formatter::ends_with_str"(ptr %var.load19, ptr @str.37.struct)
  %nottmp21 = xor i1 %call.res20, true
  br label %and.537.exit

and.537.else:                                     ; preds = %choice.exit15
  br label %and.537.exit

and.537.exit:                                     ; preds = %and.537.else, %and.537.then
  %and.537.phi = phi i1 [ %nottmp21, %and.537.then ], [ %call.res18, %and.537.else ]
  br i1 %and.537.phi, label %and.538.then, label %and.538.else

and.538.then:                                     ; preds = %and.537.exit
  %var.load22 = load ptr, ptr %var.code, align 8
  %call.res23 = call i1 @"formatter::ends_with_str"(ptr %var.load22, ptr @str.38.struct)
  %nottmp24 = xor i1 %call.res23, true
  br label %and.538.exit

and.538.else:                                     ; preds = %and.537.exit
  br label %and.538.exit

and.538.exit:                                     ; preds = %and.538.else, %and.538.then
  %and.538.phi = phi i1 [ %nottmp24, %and.538.then ], [ %and.537.phi, %and.538.else ]
  br i1 %and.538.phi, label %and.539.then, label %and.539.else

and.539.then:                                     ; preds = %and.538.exit
  %var.load25 = load ptr, ptr %var.code, align 8
  %call.res26 = call i1 @"formatter::ends_with_str"(ptr %var.load25, ptr @str.39.struct)
  %nottmp27 = xor i1 %call.res26, true
  br label %and.539.exit

and.539.else:                                     ; preds = %and.538.exit
  br label %and.539.exit

and.539.exit:                                     ; preds = %and.539.else, %and.539.then
  %and.539.phi = phi i1 [ %nottmp27, %and.539.then ], [ %and.538.phi, %and.539.else ]
  br i1 %and.539.phi, label %choice.then28, label %choice.exit29

choice.then28:                                    ; preds = %and.539.exit
  ret i1 true

choice.exit29:                                    ; preds = %ret.dead30, %and.539.exit
  %var.load31 = load ptr, ptr %var.code, align 8
  %call.res32 = call i1 @"formatter::ends_with_str"(ptr %var.load31, ptr @str.40.struct)
  br i1 %call.res32, label %or.540.then, label %or.540.else

ret.dead30:                                       ; No predecessors!
  br label %choice.exit29

or.540.then:                                      ; preds = %choice.exit29
  br label %or.540.exit

or.540.else:                                      ; preds = %choice.exit29
  %var.load33 = load ptr, ptr %var.code, align 8
  %call.res34 = call i1 @"formatter::ends_with_str"(ptr %var.load33, ptr @str.41.struct)
  br label %or.540.exit

or.540.exit:                                      ; preds = %or.540.else, %or.540.then
  %or.540.phi = phi i1 [ %call.res32, %or.540.then ], [ %call.res34, %or.540.else ]
  br i1 %or.540.phi, label %or.541.then, label %or.541.else

or.541.then:                                      ; preds = %or.540.exit
  br label %or.541.exit

or.541.else:                                      ; preds = %or.540.exit
  %var.load35 = load ptr, ptr %var.code, align 8
  %call.res36 = call i1 @"formatter::ends_with_str"(ptr %var.load35, ptr @str.42.struct)
  br label %or.541.exit

or.541.exit:                                      ; preds = %or.541.else, %or.541.then
  %or.541.phi = phi i1 [ %or.540.phi, %or.541.then ], [ %call.res36, %or.541.else ]
  br i1 %or.541.phi, label %or.542.then, label %or.542.else

or.542.then:                                      ; preds = %or.541.exit
  br label %or.542.exit

or.542.else:                                      ; preds = %or.541.exit
  %var.load37 = load ptr, ptr %var.code, align 8
  %call.res38 = call i1 @"formatter::ends_with_str"(ptr %var.load37, ptr @str.43.struct)
  br label %or.542.exit

or.542.exit:                                      ; preds = %or.542.else, %or.542.then
  %or.542.phi = phi i1 [ %or.541.phi, %or.542.then ], [ %call.res38, %or.542.else ]
  br i1 %or.542.phi, label %or.543.then, label %or.543.else

or.543.then:                                      ; preds = %or.542.exit
  br label %or.543.exit

or.543.else:                                      ; preds = %or.542.exit
  %var.load39 = load ptr, ptr %var.code, align 8
  %call.res40 = call i1 @"formatter::ends_with_str"(ptr %var.load39, ptr @str.44.struct)
  br label %or.543.exit

or.543.exit:                                      ; preds = %or.543.else, %or.543.then
  %or.543.phi = phi i1 [ %or.542.phi, %or.543.then ], [ %call.res40, %or.543.else ]
  br i1 %or.543.phi, label %or.544.then, label %or.544.else

or.544.then:                                      ; preds = %or.543.exit
  br label %or.544.exit

or.544.else:                                      ; preds = %or.543.exit
  %var.load41 = load ptr, ptr %var.code, align 8
  %call.res42 = call i1 @"formatter::ends_with_str"(ptr %var.load41, ptr @str.27.struct)
  br label %or.544.exit

or.544.exit:                                      ; preds = %or.544.else, %or.544.then
  %or.544.phi = phi i1 [ %or.543.phi, %or.544.then ], [ %call.res42, %or.544.else ]
  br i1 %or.544.phi, label %or.545.then, label %or.545.else

or.545.then:                                      ; preds = %or.544.exit
  br label %or.545.exit

or.545.else:                                      ; preds = %or.544.exit
  %var.load43 = load ptr, ptr %var.code, align 8
  %call.res44 = call i1 @"formatter::ends_with_str"(ptr %var.load43, ptr @str.28.struct)
  br label %or.545.exit

or.545.exit:                                      ; preds = %or.545.else, %or.545.then
  %or.545.phi = phi i1 [ %or.544.phi, %or.545.then ], [ %call.res44, %or.545.else ]
  br i1 %or.545.phi, label %or.546.then, label %or.546.else

or.546.then:                                      ; preds = %or.545.exit
  br label %or.546.exit

or.546.else:                                      ; preds = %or.545.exit
  %var.load45 = load ptr, ptr %var.code, align 8
  %call.res46 = call i1 @"formatter::ends_with_str"(ptr %var.load45, ptr @str.45.struct)
  br label %or.546.exit

or.546.exit:                                      ; preds = %or.546.else, %or.546.then
  %or.546.phi = phi i1 [ %or.545.phi, %or.546.then ], [ %call.res46, %or.546.else ]
  br i1 %or.546.phi, label %or.547.then, label %or.547.else

or.547.then:                                      ; preds = %or.546.exit
  br label %or.547.exit

or.547.else:                                      ; preds = %or.546.exit
  %var.load47 = load ptr, ptr %var.code, align 8
  %call.res48 = call i1 @"formatter::ends_with_str"(ptr %var.load47, ptr @str.46.struct)
  br label %or.547.exit

or.547.exit:                                      ; preds = %or.547.else, %or.547.then
  %or.547.phi = phi i1 [ %or.546.phi, %or.547.then ], [ %call.res48, %or.547.else ]
  br i1 %or.547.phi, label %or.548.then, label %or.548.else

or.548.then:                                      ; preds = %or.547.exit
  br label %or.548.exit

or.548.else:                                      ; preds = %or.547.exit
  %var.load49 = load ptr, ptr %var.code, align 8
  %call.res50 = call i1 @"formatter::ends_with_str"(ptr %var.load49, ptr @str.47.struct)
  br label %or.548.exit

or.548.exit:                                      ; preds = %or.548.else, %or.548.then
  %or.548.phi = phi i1 [ %or.547.phi, %or.548.then ], [ %call.res50, %or.548.else ]
  br i1 %or.548.phi, label %or.549.then, label %or.549.else

or.549.then:                                      ; preds = %or.548.exit
  br label %or.549.exit

or.549.else:                                      ; preds = %or.548.exit
  %var.load51 = load ptr, ptr %var.code, align 8
  %call.res52 = call i1 @"formatter::ends_with_str"(ptr %var.load51, ptr @str.48.struct)
  br label %or.549.exit

or.549.exit:                                      ; preds = %or.549.else, %or.549.then
  %or.549.phi = phi i1 [ %or.548.phi, %or.549.then ], [ %call.res52, %or.549.else ]
  br i1 %or.549.phi, label %or.550.then, label %or.550.else

or.550.then:                                      ; preds = %or.549.exit
  br label %or.550.exit

or.550.else:                                      ; preds = %or.549.exit
  %var.load53 = load ptr, ptr %var.code, align 8
  %call.res54 = call i1 @"formatter::ends_with_str"(ptr %var.load53, ptr @str.49.struct)
  br label %or.550.exit

or.550.exit:                                      ; preds = %or.550.else, %or.550.then
  %or.550.phi = phi i1 [ %or.549.phi, %or.550.then ], [ %call.res54, %or.550.else ]
  br i1 %or.550.phi, label %or.551.then, label %or.551.else

or.551.then:                                      ; preds = %or.550.exit
  br label %or.551.exit

or.551.else:                                      ; preds = %or.550.exit
  %var.load55 = load ptr, ptr %var.code, align 8
  %call.res56 = call i1 @"formatter::ends_with_str"(ptr %var.load55, ptr @str.50.struct)
  br label %or.551.exit

or.551.exit:                                      ; preds = %or.551.else, %or.551.then
  %or.551.phi = phi i1 [ %or.550.phi, %or.551.then ], [ %call.res56, %or.551.else ]
  br i1 %or.551.phi, label %or.552.then, label %or.552.else

or.552.then:                                      ; preds = %or.551.exit
  br label %or.552.exit

or.552.else:                                      ; preds = %or.551.exit
  %var.load57 = load ptr, ptr %var.code, align 8
  %call.res58 = call i1 @"formatter::ends_with_str"(ptr %var.load57, ptr @str.51.struct)
  br label %or.552.exit

or.552.exit:                                      ; preds = %or.552.else, %or.552.then
  %or.552.phi = phi i1 [ %or.551.phi, %or.552.then ], [ %call.res58, %or.552.else ]
  br i1 %or.552.phi, label %or.553.then, label %or.553.else

or.553.then:                                      ; preds = %or.552.exit
  br label %or.553.exit

or.553.else:                                      ; preds = %or.552.exit
  %var.load59 = load ptr, ptr %var.code, align 8
  %call.res60 = call i1 @"formatter::ends_with_str"(ptr %var.load59, ptr @str.52.struct)
  br label %or.553.exit

or.553.exit:                                      ; preds = %or.553.else, %or.553.then
  %or.553.phi = phi i1 [ %or.552.phi, %or.553.then ], [ %call.res60, %or.553.else ]
  ret i1 %or.553.phi
}

define i1 @"formatter::has_intermediate_dedent"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %var.r = alloca i64, align 8
  %var.ln = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.554 = alloca i64, align 8
  %loop.idx.554 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %"var.idx'" = alloca i64, align 8
  %"var.found'" = alloca i1, align 1
  %var.child_raw = alloca i64, align 8
  %var.parent_raw = alloca i64, align 8
  %var.start_idx = alloca i64, align 8
  %var.lines = alloca ptr, align 8
  store ptr %0, ptr %var.lines, align 8
  store i64 %1, ptr %var.start_idx, align 8
  store i64 %2, ptr %var.parent_raw, align 8
  store i64 %3, ptr %var.child_raw, align 8
  store i1 false, ptr %"var.found'", align 1
  %var.load = load i64, ptr %var.start_idx, align 8
  %addtmp = add i64 %var.load, 1
  store i64 %addtmp, ptr %"var.idx'", align 8
  %var.load1 = load ptr, ptr %var.lines, align 8
  %a.load = load ptr, ptr %var.lines, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %a.create2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur3 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create2, ptr %var.lines, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.lines, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query4 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query4, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.554, align 8
  br label %loop.header.554

loop.header.554:                                  ; preds = %loop.latch.554, %a.after
  %counter.load = load i64, ptr %loop.idx.554, align 8
  br label %loop.body.554

loop.body.554:                                    ; preds = %loop.header.554
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.554, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load5 = load i64, ptr %"var.idx'", align 8
  %var.load6 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load5, %var.load6
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.554:                                ; No predecessors!
  br label %loop.exit.554

loop.latch.554:                                   ; preds = %choice.exit64
  %step.val = load i64, ptr %loop.step.554, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.554, align 8
  br label %loop.header.554

loop.exit.554:                                    ; preds = %choice.then76, %choice.then71, %choice.then, %loop.exit.nat.554
  %var.load80 = load i1, ptr %"var.found'", align 1
  ret i1 %var.load80

choice.then:                                      ; preds = %loop.body.554
  br label %loop.exit.554

choice.exit:                                      ; preds = %loop.body.554
  %var.load7 = load ptr, ptr %var.lines, align 8
  %a.load8 = load ptr, ptr %var.lines, align 8
  %a.null9 = icmp eq ptr %a.load8, null
  br i1 %a.null9, label %a.create10, label %a.after11

a.create10:                                       ; preds = %choice.exit
  %arena.cur12 = call ptr @dva_arena_current()
  %a.create13 = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 24)
  %arena.cur14 = call ptr @dva_arena_current()
  %a.buf15 = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 128)
  %a.len.gep16 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create13, i32 0, i32 0
  store i64 0, ptr %a.len.gep16, align 8
  %a.data.gep17 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create13, i32 0, i32 1
  store ptr %a.buf15, ptr %a.data.gep17, align 8
  %a.cap.gep18 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create13, i32 0, i32 2
  store i64 16, ptr %a.cap.gep18, align 8
  store ptr %a.create13, ptr %var.lines, align 8
  br label %a.after11

a.after11:                                        ; preds = %a.create10, %choice.exit
  %a.load219 = load ptr, ptr %var.lines, align 8
  %var.load20 = load i64, ptr %"var.idx'", align 8
  %a.rd.nonnull = icmp ne ptr %a.load219, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after11
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load219, i32 0, i32 0
  %a.rd.len21 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load20, 0
  %a.rd.lt = icmp slt i64 %var.load20, %a.rd.len21
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load219, i32 0, i32 1
  %a.rd.data22 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data22, i64 %var.load20
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after11
  %arena.cur23 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 455, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 23, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur24 = call ptr @dva_arena_current()
  %err.alloc25 = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 56)
  %err.code.gep26 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc25, i32 0, i32 0
  store i64 4011, ptr %err.code.gep26, align 8
  %err.msg.gep27 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc25, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep27, align 8
  %err.file.gep28 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc25, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep28, align 8
  %err.line.gep29 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc25, i32 0, i32 3
  store i64 455, ptr %err.line.gep29, align 8
  %err.col.gep30 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc25, i32 0, i32 4
  store i64 23, ptr %err.col.gep30, align 8
  %err.ctx.gep31 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc25, i32 0, i32 5
  %err.ctx0.gep32 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep31, i32 0, i32 0
  store i64 %var.load20, ptr %err.ctx0.gep32, align 8
  %err.ctx1.gep33 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep31, i32 0, i32 1
  store i64 %a.rd.len21, ptr %err.ctx1.gep33, align 8
  %err.p2i34 = ptrtoint ptr %err.alloc25 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i34, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.555, label %unwrap.abort.555

unwrap.pos.555:                                   ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.ln, align 8
  %var.load54 = load ptr, ptr %var.ln, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load54, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp55 = icmp eq i64 %fld.load, 0
  br i1 %cmptmp55, label %and.556.then, label %and.556.else

unwrap.abort.555:                                 ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep35 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep35, align 8
  %err.msg.gep36 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep36, align 8
  %err.file.gep37 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep37, align 8
  %err.line.gep38 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep38, align 8
  %err.col.gep39 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep39, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len40 = load i64, ptr %err.msg.len, align 8
  %err.msg.len41 = and i64 %err.msg.len40, 281474976710655
  %str.tag = lshr i64 %err.msg.len40, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %unwrap.abort.555
  %arena.cur42 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur42, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %unwrap.abort.555
  %err.msg.len32 = trunc i64 %err.msg.len41 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data43 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len44 = load i64, ptr %err.file.len, align 8
  %err.file.len45 = and i64 %err.file.len44, 281474976710655
  %str.tag46 = lshr i64 %err.file.len44, 48
  %str.immortal47 = icmp eq i64 %str.tag46, 0
  br i1 %str.immortal47, label %str_ok49, label %str_gen_check48

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check48:                                  ; preds = %str_ok
  %arena.cur51 = call ptr @dva_arena_current()
  %tag.valid52 = call i1 @dva_arena_validate_tag(ptr %arena.cur51, i64 %str.tag46)
  br i1 %tag.valid52, label %str_ok49, label %str_stale50

str_ok49:                                         ; preds = %str_stale50, %str_gen_check48, %str_ok
  %err.file.len32 = trunc i64 %err.file.len45 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data53 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale50:                                      ; preds = %str_gen_check48
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok49

err.thread:                                       ; preds = %str_ok49
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok49
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data43, i32 %err.file.len32, ptr %err.file.data53, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

and.556.then:                                     ; preds = %unwrap.pos.555
  %var.load56 = load ptr, ptr %var.ln, align 8
  %fld.gep57 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load56, i32 0, i32 5
  %fld.load58 = load i1, ptr %fld.gep57, align 1
  %nottmp = xor i1 %fld.load58, true
  br label %and.556.exit

and.556.else:                                     ; preds = %unwrap.pos.555
  br label %and.556.exit

and.556.exit:                                     ; preds = %and.556.else, %and.556.then
  %and.556.phi = phi i1 [ %nottmp, %and.556.then ], [ %cmptmp55, %and.556.else ]
  br i1 %and.556.phi, label %and.557.then, label %and.557.else

and.557.then:                                     ; preds = %and.556.exit
  %var.load59 = load ptr, ptr %var.ln, align 8
  %fld.gep60 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load59, i32 0, i32 6
  %fld.load61 = load i1, ptr %fld.gep60, align 1
  %nottmp62 = xor i1 %fld.load61, true
  br label %and.557.exit

and.557.else:                                     ; preds = %and.556.exit
  br label %and.557.exit

and.557.exit:                                     ; preds = %and.557.else, %and.557.then
  %and.557.phi = phi i1 [ %nottmp62, %and.557.then ], [ %and.556.phi, %and.557.else ]
  br i1 %and.557.phi, label %choice.then63, label %choice.exit64

choice.then63:                                    ; preds = %and.557.exit
  %var.load65 = load ptr, ptr %var.ln, align 8
  %fld.gep66 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load65, i32 0, i32 3
  %fld.load67 = load i64, ptr %fld.gep66, align 8
  store i64 %fld.load67, ptr %var.r, align 8
  %var.load68 = load i64, ptr %var.r, align 8
  %var.load69 = load i64, ptr %var.parent_raw, align 8
  %cmptmp70 = icmp sle i64 %var.load68, %var.load69
  br i1 %cmptmp70, label %choice.then71, label %choice.exit72

choice.exit64:                                    ; preds = %choice.exit77, %and.557.exit
  %var.load78 = load i64, ptr %"var.idx'", align 8
  %addtmp79 = add i64 %var.load78, 1
  store i64 %addtmp79, ptr %"var.idx'", align 8
  br label %loop.latch.554

choice.then71:                                    ; preds = %choice.then63
  br label %loop.exit.554

choice.exit72:                                    ; preds = %choice.then63
  %var.load73 = load i64, ptr %var.r, align 8
  %var.load74 = load i64, ptr %var.child_raw, align 8
  %cmptmp75 = icmp slt i64 %var.load73, %var.load74
  br i1 %cmptmp75, label %choice.then76, label %choice.exit77

choice.then76:                                    ; preds = %choice.exit72
  store i1 true, ptr %"var.found'", align 1
  br label %loop.exit.554

choice.exit77:                                    ; preds = %choice.exit72
  br label %choice.exit64
}

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define i64 @"formatter::compute_child_delta"(ptr %0, i64 %1, ptr %2, ptr %3, i64 %4, i64 %5) #1 {
entry:
  %var.child_raw = alloca i64, align 8
  %var.parent_raw = alloca i64, align 8
  %var.child_code = alloca ptr, align 8
  %var.parent_code = alloca ptr, align 8
  %var.idx = alloca i64, align 8
  %var.lines = alloca ptr, align 8
  store ptr %0, ptr %var.lines, align 8
  store i64 %1, ptr %var.idx, align 8
  store ptr %2, ptr %var.parent_code, align 8
  store ptr %3, ptr %var.child_code, align 8
  store i64 %4, ptr %var.parent_raw, align 8
  store i64 %5, ptr %var.child_raw, align 8
  %var.load = load ptr, ptr %var.child_code, align 8
  %call.res = call i1 @"formatter::starts_with_choice_sep"(ptr %var.load)
  br i1 %call.res, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret i64 3

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load1 = load ptr, ptr %var.parent_code, align 8
  %call.res2 = call i1 @"formatter::is_inline_pipe_arm"(ptr %var.load1)
  br i1 %call.res2, label %and.558.then, label %and.558.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

and.558.then:                                     ; preds = %choice.exit
  %var.load3 = load ptr, ptr %var.parent_code, align 8
  %call.res4 = call i1 @"formatter::ends_with_block_opener"(ptr %var.load3)
  %nottmp = xor i1 %call.res4, true
  br label %and.558.exit

and.558.else:                                     ; preds = %choice.exit
  br label %and.558.exit

and.558.exit:                                     ; preds = %and.558.else, %and.558.then
  %and.558.phi = phi i1 [ %nottmp, %and.558.then ], [ %call.res2, %and.558.else ]
  br i1 %and.558.phi, label %choice.then5, label %choice.else

choice.then5:                                     ; preds = %and.558.exit
  %var.load7 = load ptr, ptr %var.parent_code, align 8
  %call.res8 = call i1 @"formatter::ends_with_cont_op"(ptr %var.load7)
  br i1 %call.res8, label %and.559.then, label %and.559.else

choice.else:                                      ; preds = %and.558.exit
  %var.load19 = load ptr, ptr %var.parent_code, align 8
  %call.res20 = call i1 @"formatter::ends_with_cont_op"(ptr %var.load19)
  br i1 %call.res20, label %choice.then21, label %choice.else22

choice.exit6:                                     ; preds = %choice.exit23, %choice.exit18
  %choice.res25 = phi i64 [ %choice.res, %choice.exit18 ], [ %choice.res24, %choice.exit23 ]
  ret i64 %choice.res25

and.559.then:                                     ; preds = %choice.then5
  %var.load9 = load ptr, ptr %var.lines, align 8
  %a.load = load ptr, ptr %var.lines, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

and.559.else:                                     ; preds = %choice.then5
  br label %and.559.exit

and.559.exit:                                     ; preds = %and.559.else, %a.after
  %and.559.phi = phi i1 [ %call.res15, %a.after ], [ %call.res8, %and.559.else ]
  br i1 %and.559.phi, label %choice.then16, label %choice.else17

a.create:                                         ; preds = %and.559.then
  %arena.cur = call ptr @dva_arena_current()
  %a.create10 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur11 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create10, ptr %var.lines, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %and.559.then
  %a.load2 = load ptr, ptr %var.lines, align 8
  %var.load12 = load i64, ptr %var.idx, align 8
  %var.load13 = load i64, ptr %var.parent_raw, align 8
  %var.load14 = load i64, ptr %var.child_raw, align 8
  %call.res15 = call i1 @"formatter::has_intermediate_dedent"(ptr %a.load2, i64 %var.load12, i64 %var.load13, i64 %var.load14)
  br label %and.559.exit

choice.then16:                                    ; preds = %and.559.exit
  br label %choice.exit18

choice.else17:                                    ; preds = %and.559.exit
  br label %choice.exit18

choice.exit18:                                    ; preds = %choice.else17, %choice.then16
  %choice.res = phi i64 [ 4, %choice.then16 ], [ 2, %choice.else17 ]
  br label %choice.exit6

choice.then21:                                    ; preds = %choice.else
  br label %choice.exit23

choice.else22:                                    ; preds = %choice.else
  br label %choice.exit23

choice.exit23:                                    ; preds = %choice.else22, %choice.then21
  %choice.res24 = phi i64 [ 2, %choice.then21 ], [ 3, %choice.else22 ]
  br label %choice.exit6
}

define i64 @"formatter::find_stack_level"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.v = alloca i64, align 8
  %var._26 = alloca ptr, align 8
  %var._24 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.560 = alloca i64, align 8
  %loop.idx.560 = alloca i64, align 8
  %"var.found'" = alloca i64, align 8
  %"var.idx'" = alloca i64, align 8
  %var.raw = alloca i64, align 8
  %var.top = alloca i64, align 8
  %var.stack = alloca ptr, align 8
  store ptr %0, ptr %var.stack, align 8
  store i64 %1, ptr %var.top, align 8
  store i64 %2, ptr %var.raw, align 8
  %var.load = load i64, ptr %var.top, align 8
  %subtmp = sub i64 %var.load, 1
  store i64 %subtmp, ptr %"var.idx'", align 8
  store i64 0, ptr %"var.found'", align 8
  store i64 0, ptr %loop.idx.560, align 8
  br label %loop.header.560

loop.header.560:                                  ; preds = %loop.latch.560, %entry
  %counter.load = load i64, ptr %loop.idx.560, align 8
  br label %loop.body.560

loop.body.560:                                    ; preds = %loop.header.560
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.560, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load1 = load i64, ptr %"var.idx'", align 8
  %cmptmp = icmp slt i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.560:                                ; No predecessors!
  br label %loop.exit.560

loop.latch.560:                                   ; preds = %choice.exit32
  %step.val = load i64, ptr %loop.step.560, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.560, align 8
  br label %loop.header.560

loop.exit.560:                                    ; preds = %choice.then30, %choice.then, %loop.exit.nat.560
  %var.load36 = load i64, ptr %"var.found'", align 8
  ret i64 %var.load36

choice.then:                                      ; preds = %loop.body.560
  br label %loop.exit.560

choice.exit:                                      ; preds = %loop.body.560
  %var.load2 = load ptr, ptr %var.stack, align 8
  %a.load = load ptr, ptr %var.stack, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %choice.exit
  %arena.cur = call ptr @dva_arena_current()
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create3, ptr %var.stack, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.exit
  %a.load2 = load ptr, ptr %var.stack, align 8
  %var.load5 = load i64, ptr %"var.idx'", align 8
  %a.rd.nonnull = icmp ne ptr %a.load2, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.rd.len6 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load5, 0
  %a.rd.lt = icmp slt i64 %var.load5, %a.rd.len6
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.rd.data7 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data7, i64 %var.load5
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after
  %arena.cur8 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 485, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 23, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur9 = call ptr @dva_arena_current()
  %err.alloc10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 56)
  %err.code.gep11 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 0
  store i64 4011, ptr %err.code.gep11, align 8
  %err.msg.gep12 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep12, align 8
  %err.file.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep13, align 8
  %err.line.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 3
  store i64 485, ptr %err.line.gep14, align 8
  %err.col.gep15 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 4
  store i64 23, ptr %err.col.gep15, align 8
  %err.ctx.gep16 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 5
  %err.ctx0.gep17 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep16, i32 0, i32 0
  store i64 %var.load5, ptr %err.ctx0.gep17, align 8
  %err.ctx1.gep18 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep16, i32 0, i32 1
  store i64 %a.rd.len6, ptr %err.ctx1.gep18, align 8
  %err.p2i19 = ptrtoint ptr %err.alloc10 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i19, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag20 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag20, label %choice.then21, label %choice.else

choice.then21:                                    ; preds = %a.rd.done
  %ram.pay23 = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %ram.pay23, ptr %var._24, align 8
  br label %choice.exit22

choice.else:                                      ; preds = %a.rd.done
  %ram.pay25 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay25 to ptr
  store ptr %pay.ptr, ptr %var._26, align 8
  br label %choice.exit22

choice.exit22:                                    ; preds = %choice.else, %choice.then21
  %choice.res = phi i64 [ %ram.pay23, %choice.then21 ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.v, align 8
  %var.load27 = load i64, ptr %var.v, align 8
  %var.load28 = load i64, ptr %var.raw, align 8
  %cmptmp29 = icmp sle i64 %var.load27, %var.load28
  br i1 %cmptmp29, label %choice.then30, label %choice.else31

choice.then30:                                    ; preds = %choice.exit22
  %var.load33 = load i64, ptr %"var.idx'", align 8
  store i64 %var.load33, ptr %"var.found'", align 8
  br label %loop.exit.560

choice.else31:                                    ; preds = %choice.exit22
  %var.load34 = load i64, ptr %"var.idx'", align 8
  %subtmp35 = sub i64 %var.load34, 1
  store i64 %subtmp35, ptr %"var.idx'", align 8
  br label %choice.exit32

choice.exit32:                                    ; preds = %choice.else31
  br label %loop.latch.560
}

define ptr @"formatter::format_lines"(ptr %0) #1 {
entry:
  %var._2250 = alloca i64, align 8
  %var._i2249 = alloca i64, align 8
  %loop.step.569 = alloca i64, align 8
  %loop.idx.569 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.res = alloca ptr, align 8
  %var.canon_indent = alloca i64, align 8
  %var._2078 = alloca ptr, align 8
  %var._2075 = alloca i64, align 8
  %var._1969 = alloca ptr, align 8
  %var._1968 = alloca ptr, align 8
  %var._1967 = alloca ptr, align 8
  %var._1864 = alloca ptr, align 8
  %var._1863 = alloca ptr, align 8
  %var._1862 = alloca ptr, align 8
  %var._1762 = alloca ptr, align 8
  %var._1761 = alloca ptr, align 8
  %var._1760 = alloca ptr, align 8
  %var._1661 = alloca ptr, align 8
  %var._1660 = alloca ptr, align 8
  %var._1659 = alloca ptr, align 8
  %var.new_canon1499 = alloca i64, align 8
  %var.delta1495 = alloca i64, align 8
  %var.p_code1475 = alloca ptr, align 8
  %var._1473 = alloca ptr, align 8
  %var._1470 = alloca ptr, align 8
  %var.p_canon1407 = alloca i64, align 8
  %var._1405 = alloca ptr, align 8
  %var._1402 = alloca i64, align 8
  %var.matched_raw = alloca i64, align 8
  %var._1333 = alloca ptr, align 8
  %var._1330 = alloca i64, align 8
  %var._1260 = alloca ptr, align 8
  %var._1257 = alloca i64, align 8
  %var._1193 = alloca i64, align 8
  %var._i1192 = alloca i64, align 8
  %loop.step.566 = alloca i64, align 8
  %loop.idx.566 = alloca i64, align 8
  %var._1143 = alloca ptr, align 8
  %var._1142 = alloca ptr, align 8
  %var._1141 = alloca ptr, align 8
  %var._1041 = alloca ptr, align 8
  %var._1040 = alloca ptr, align 8
  %var._1039 = alloca ptr, align 8
  %var._959 = alloca ptr, align 8
  %var._958 = alloca ptr, align 8
  %var._957 = alloca ptr, align 8
  %var.new_canon = alloca i64, align 8
  %var.delta = alloca i64, align 8
  %var.p_code790 = alloca ptr, align 8
  %var._788 = alloca ptr, align 8
  %var._785 = alloca ptr, align 8
  %var.p_canon = alloca i64, align 8
  %var._721 = alloca ptr, align 8
  %var._718 = alloca i64, align 8
  %var.top_raw = alloca i64, align 8
  %var._649 = alloca ptr, align 8
  %var._646 = alloca i64, align 8
  %var.cur_code = alloca ptr, align 8
  %var.raw = alloca i64, align 8
  %var.c_indent = alloca i64, align 8
  %var.p_code = alloca ptr, align 8
  %var._412 = alloca ptr, align 8
  %var._409 = alloca ptr, align 8
  %var.base_r = alloca i64, align 8
  %var._346 = alloca ptr, align 8
  %var._343 = alloca i64, align 8
  %var.base_c = alloca i64, align 8
  %var._281 = alloca ptr, align 8
  %var._279 = alloca i64, align 8
  %var.lvl = alloca i64, align 8
  %var.body = alloca ptr, align 8
  %var.max_blanks = alloca i64, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.idx = alloca i64, align 8
  %var.ln = alloca ptr, align 8
  %loop.step.561 = alloca i64, align 8
  %loop.idx.561 = alloca i64, align 8
  %"var.cur_canon_indent'" = alloca i64, align 8
  %"var.started'" = alloca i1, align 1
  %"var.blank_run'" = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %"var.top'" = alloca i64, align 8
  %var.body_stack = alloca ptr, align 8
  %var.canon_stack = alloca ptr, align 8
  %var.raw_stack = alloca ptr, align 8
  %var.lines = alloca ptr, align 8
  store ptr %0, ptr %var.lines, align 8
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
  store ptr %a.new, ptr %var.raw_stack, align 8
  %arena.cur2 = call ptr @dva_arena_current()
  %a.new3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
  %a.buf5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep6 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new3, i32 0, i32 0
  store i64 0, ptr %a.len.gep6, align 8
  %a.data.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new3, i32 0, i32 1
  store ptr %a.buf5, ptr %a.data.gep7, align 8
  %a.cap.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep8, align 8
  store ptr %a.new3, ptr %var.canon_stack, align 8
  %arena.cur9 = call ptr @dva_arena_current()
  %a.new10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 24)
  %arena.cur11 = call ptr @dva_arena_current()
  %a.buf12 = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 128)
  %a.len.gep13 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new10, i32 0, i32 0
  store i64 0, ptr %a.len.gep13, align 8
  %a.data.gep14 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new10, i32 0, i32 1
  store ptr %a.buf12, ptr %a.data.gep14, align 8
  %a.cap.gep15 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new10, i32 0, i32 2
  store i64 16, ptr %a.cap.gep15, align 8
  store ptr %a.new10, ptr %var.body_stack, align 8
  %a.load = load ptr, ptr %var.raw_stack, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur16 = call ptr @dva_arena_current()
  %a.create17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 24)
  %arena.cur18 = call ptr @dva_arena_current()
  %a.buf19 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 128)
  %a.len.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create17, i32 0, i32 0
  store i64 0, ptr %a.len.gep20, align 8
  %a.data.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create17, i32 0, i32 1
  store ptr %a.buf19, ptr %a.data.gep21, align 8
  %a.cap.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create17, i32 0, i32 2
  store i64 16, ptr %a.cap.gep22, align 8
  store ptr %a.create17, ptr %var.raw_stack, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.raw_stack, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len23 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap24 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len23, %a.cap24
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data25 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len26 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data25, i64 %a.cur.len26
  store i64 0, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len26, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %a.load27 = load ptr, ptr %var.canon_stack, align 8
  %a.null28 = icmp eq ptr %a.load27, null
  br i1 %a.null28, label %a.create29, label %a.after30

a.create29:                                       ; preds = %a.store
  %arena.cur31 = call ptr @dva_arena_current()
  %a.create32 = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 24)
  %arena.cur33 = call ptr @dva_arena_current()
  %a.buf34 = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 128)
  %a.len.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create32, i32 0, i32 0
  store i64 0, ptr %a.len.gep35, align 8
  %a.data.gep36 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create32, i32 0, i32 1
  store ptr %a.buf34, ptr %a.data.gep36, align 8
  %a.cap.gep37 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create32, i32 0, i32 2
  store i64 16, ptr %a.cap.gep37, align 8
  store ptr %a.create32, ptr %var.canon_stack, align 8
  br label %a.after30

a.after30:                                        ; preds = %a.create29, %a.store
  %a.load238 = load ptr, ptr %var.canon_stack, align 8
  br label %a.check39

a.check39:                                        ; preds = %a.after30
  %a.len42 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load238, i32 0, i32 0
  %a.len43 = load i64, ptr %a.len42, align 8
  %a.cap44 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load238, i32 0, i32 2
  %a.cap45 = load i64, ptr %a.cap44, align 8
  %a.needs.grow46 = icmp eq i64 %a.len43, %a.cap45
  br i1 %a.needs.grow46, label %a.grow40, label %a.store41

a.grow40:                                         ; preds = %a.check39
  call void @dva_array_grow(ptr %a.load238)
  br label %a.store41

a.store41:                                        ; preds = %a.grow40, %a.check39
  %a.cur.data47 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load238, i32 0, i32 1
  %a.cur.data48 = load ptr, ptr %a.cur.data47, align 8
  %a.cur.len49 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load238, i32 0, i32 0
  %a.cur.len50 = load i64, ptr %a.cur.len49, align 8
  %a.elem.gep51 = getelementptr i64, ptr %a.cur.data48, i64 %a.cur.len50
  store i64 0, ptr %a.elem.gep51, align 8
  %a.next.len52 = add i64 %a.cur.len50, 1
  %b.len.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load238, i32 0, i32 0
  store i64 %a.next.len52, ptr %b.len.gep53, align 8
  %a.load54 = load ptr, ptr %var.body_stack, align 8
  %a.null55 = icmp eq ptr %a.load54, null
  br i1 %a.null55, label %a.create56, label %a.after57

a.create56:                                       ; preds = %a.store41
  %arena.cur58 = call ptr @dva_arena_current()
  %a.create59 = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 24)
  %arena.cur60 = call ptr @dva_arena_current()
  %a.buf61 = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 128)
  %a.len.gep62 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create59, i32 0, i32 0
  store i64 0, ptr %a.len.gep62, align 8
  %a.data.gep63 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create59, i32 0, i32 1
  store ptr %a.buf61, ptr %a.data.gep63, align 8
  %a.cap.gep64 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create59, i32 0, i32 2
  store i64 16, ptr %a.cap.gep64, align 8
  store ptr %a.create59, ptr %var.body_stack, align 8
  br label %a.after57

a.after57:                                        ; preds = %a.create56, %a.store41
  %a.load265 = load ptr, ptr %var.body_stack, align 8
  br label %a.check66

a.check66:                                        ; preds = %a.after57
  %a.len69 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load265, i32 0, i32 0
  %a.len70 = load i64, ptr %a.len69, align 8
  %a.cap71 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load265, i32 0, i32 2
  %a.cap72 = load i64, ptr %a.cap71, align 8
  %a.needs.grow73 = icmp eq i64 %a.len70, %a.cap72
  br i1 %a.needs.grow73, label %a.grow67, label %a.store68

a.grow67:                                         ; preds = %a.check66
  call void @dva_array_grow(ptr %a.load265)
  br label %a.store68

a.store68:                                        ; preds = %a.grow67, %a.check66
  %a.cur.data74 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load265, i32 0, i32 1
  %a.cur.data75 = load ptr, ptr %a.cur.data74, align 8
  %a.cur.len76 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load265, i32 0, i32 0
  %a.cur.len77 = load i64, ptr %a.cur.len76, align 8
  %a.elem.gep78 = getelementptr i64, ptr %a.cur.data75, i64 %a.cur.len77
  store i64 ptrtoint (ptr @str.3.struct to i64), ptr %a.elem.gep78, align 8
  %a.next.len79 = add i64 %a.cur.len77, 1
  %b.len.gep80 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load265, i32 0, i32 0
  store i64 %a.next.len79, ptr %b.len.gep80, align 8
  store i64 1, ptr %"var.top'", align 8
  %arena.cur81 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep82 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4096, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len83

b.buf.len83:                                      ; preds = %str_overflow_abort, %a.store68
  %arena.cur84 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur84, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep82, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 4096, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.out, align 8
  store i64 0, ptr %"var.blank_run'", align 8
  store i1 false, ptr %"var.started'", align 1
  store i64 0, ptr %"var.cur_canon_indent'", align 8
  %var.load = load ptr, ptr %var.lines, align 8
  %a.load85 = load ptr, ptr %var.lines, align 8
  %a.null86 = icmp eq ptr %a.load85, null
  br i1 %a.null86, label %a.create87, label %a.after88

str_overflow_abort:                               ; preds = %a.store68
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len83

a.create87:                                       ; preds = %b.buf.len83
  %arena.cur89 = call ptr @dva_arena_current()
  %a.create90 = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 24)
  %arena.cur91 = call ptr @dva_arena_current()
  %a.buf92 = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 128)
  %a.len.gep93 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create90, i32 0, i32 0
  store i64 0, ptr %a.len.gep93, align 8
  %a.data.gep94 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create90, i32 0, i32 1
  store ptr %a.buf92, ptr %a.data.gep94, align 8
  %a.cap.gep95 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create90, i32 0, i32 2
  store i64 16, ptr %a.cap.gep95, align 8
  store ptr %a.create90, ptr %var.lines, align 8
  br label %a.after88

a.after88:                                        ; preds = %a.create87, %b.buf.len83
  %a.load296 = load ptr, ptr %var.lines, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load296, i32 0, i32 0
  %arr.cycle.len97 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load296, i32 0, i32 1
  %arr.cycle.data98 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.561, align 8
  store i64 0, ptr %var.idx, align 8
  br label %loop.header.561

loop.header.561:                                  ; preds = %loop.latch.561, %a.after88
  %counter.load = load i64, ptr %loop.idx.561, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len97
  br i1 %loop.cond, label %loop.body.561, label %loop.exit.nat.561

loop.body.561:                                    ; preds = %loop.header.561
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.561, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data98, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.ln, align 8
  store i64 %loop.rel.i, ptr %var.idx, align 8
  %var.load99 = load ptr, ptr %var.ln, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load99, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp ne i64 %fld.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

loop.exit.nat.561:                                ; preds = %loop.header.561
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.idx, align 8
  br label %loop.exit.561

loop.latch.561:                                   ; preds = %choice.exit
  %step.val2229 = load i64, ptr %loop.step.561, align 8
  %loop.next2230 = add i64 %counter.load, %step.val2229
  store i64 %loop.next2230, ptr %loop.idx.561, align 8
  br label %loop.header.561

loop.exit.561:                                    ; preds = %loop.exit.nat.561
  %var.load2231 = load ptr, ptr %var.out, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load2231, i32 0, i32 0
  %b.freeze.len2232 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load2231, i32 0, i32 1
  %b.freeze.data2233 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.then:                                      ; preds = %loop.body.561
  store i1 true, ptr %"var.started'", align 1
  store i64 0, ptr %"var.blank_run'", align 8
  %b.load = load ptr, ptr %var.out, align 8
  %var.load100 = load ptr, ptr %var.ln, align 8
  %fld.gep101 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load100, i32 0, i32 0
  %fld.load102 = load ptr, ptr %fld.gep101, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %fld.load102, i32 0, i32 0
  %app.str.len103 = load i64, ptr %app.str.len, align 8
  %app.str.len104 = and i64 %app.str.len103, 281474976710655
  %str.tag = lshr i64 %app.str.len103, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.else:                                      ; preds = %loop.body.561
  %var.load155 = load ptr, ptr %var.ln, align 8
  %fld.gep156 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load155, i32 0, i32 5
  %fld.load157 = load i1, ptr %fld.gep156, align 1
  br i1 %fld.load157, label %choice.then158, label %choice.else159

choice.exit:                                      ; preds = %choice.exit160, %br.done.562
  br label %loop.latch.561

str_gen_check:                                    ; preds = %choice.then
  %arena.cur105 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur105, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.then
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len106 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len106, i64 %app.str.len104)
  %sum107 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf108 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf108, label %str_overflow_abort110, label %b.app.new.len109

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

b.app.new.len109:                                 ; preds = %str_overflow_abort110, %str_ok
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap111 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap111, %sum107
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort110:                            ; preds = %str_ok
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len109

b.grow2:                                          ; preds = %b.app.new.len109
  %b.cap2 = mul i64 %b.cap111, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum107
  %b.new.cap = select i1 %b.cap.need, i64 %sum107, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len2112 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data2113 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum114 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf115 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf115, label %str_overflow_abort117, label %b.new.buf.len2116

b.nogrow2:                                        ; preds = %b.app.new.len109
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2116
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %fld.load102, i32 0, i32 1
  %app.str.data119 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data120 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data120, i64 %b.app.cur.len106
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data119, i64 %app.str.len104, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data120, i64 %sum107
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep121 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum107, ptr %b.len.gep121, align 8
  %b.load122 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 0
  %b.rn.cur.len123 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len123, i64 1)
  %sum124 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf125 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf125, label %str_overflow_abort127, label %b.rn.new.len126

b.new.buf.len2116:                                ; preds = %str_overflow_abort117, %b.grow2
  %arena.cur118 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur118, i64 %sum114)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2113, i64 %b.cur.len2112, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2112
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort117:                            ; preds = %b.grow2
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2116

b.rn.new.len126:                                  ; preds = %str_overflow_abort127, %b.grow_done
  %b.cap128 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 2
  %b.cap129 = load i64, ptr %b.cap128, align 8
  %b.need.grow130 = icmp slt i64 %b.cap129, %sum124
  br i1 %b.need.grow130, label %b.grow2131, label %b.nogrow2132

str_overflow_abort127:                            ; preds = %b.grow_done
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len126

b.grow2131:                                       ; preds = %b.rn.new.len126
  %b.cap2134 = mul i64 %b.cap129, 2
  %b.cap.small135 = icmp slt i64 %b.cap2134, 16
  %b.cap.grow136 = select i1 %b.cap.small135, i64 16, i64 %b.cap2134
  %b.cap.need137 = icmp slt i64 %b.cap.grow136, %sum124
  %b.new.cap138 = select i1 %b.cap.need137, i64 %sum124, i64 %b.cap.grow136
  %b.cur.len2139 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 0
  %b.cur.len2140 = load i64, ptr %b.cur.len2139, align 8
  %b.cur.data2141 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 1
  %b.cur.data2142 = load ptr, ptr %b.cur.data2141, align 8
  %b.new.buf.len2143 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap138, i64 1)
  %sum144 = extractvalue { i64, i1 } %b.new.buf.len2143, 0
  %ovf145 = extractvalue { i64, i1 } %b.new.buf.len2143, 1
  br i1 %ovf145, label %str_overflow_abort147, label %b.new.buf.len2146

b.nogrow2132:                                     ; preds = %b.rn.new.len126
  br label %b.grow_done133

b.grow_done133:                                   ; preds = %b.nogrow2132, %b.new.buf.len2146
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 1
  %b.rn.data153 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data153, i64 %b.rn.cur.len123
  br i1 true, label %br.b1.562, label %br.c2.562

b.new.buf.len2146:                                ; preds = %str_overflow_abort147, %b.grow2131
  %arena.cur148 = call ptr @dva_arena_current()
  %b.new.buf2149 = call ptr @dva_arena_alloc(ptr %arena.cur148, i64 %sum144)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2149, ptr align 1 %b.cur.data2142, i64 %b.cur.len2140, i1 false)
  %b.grow2.nul150 = getelementptr i8, ptr %b.new.buf2149, i64 %b.cur.len2140
  store i8 0, ptr %b.grow2.nul150, align 1
  %b.new.data2.gep151 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 1
  store ptr %b.new.buf2149, ptr %b.new.data2.gep151, align 8
  %b.new.cap2.gep152 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 2
  store i64 %b.new.cap138, ptr %b.new.cap2.gep152, align 8
  br label %b.grow_done133

str_overflow_abort147:                            ; preds = %b.grow2131
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2146

br.b1.562:                                        ; preds = %b.grow_done133
  store i8 10, ptr %b.rn.dst, align 1
  br label %br.done.562

br.c2.562:                                        ; preds = %b.grow_done133
  br i1 true, label %br.b2.562, label %br.c3.562

br.b2.562:                                        ; preds = %br.c2.562
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -118, ptr %br.dst1, align 1
  br label %br.done.562

br.c3.562:                                        ; preds = %br.c2.562
  br i1 true, label %br.b3.562, label %br.b4.562

br.b3.562:                                        ; preds = %br.c3.562
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -118, ptr %br.dst2.3, align 1
  br label %br.done.562

br.b4.562:                                        ; preds = %br.c3.562
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -118, ptr %br.dst3.4, align 1
  br label %br.done.562

br.done.562:                                      ; preds = %br.b4.562, %br.b3.562, %br.b2.562, %br.b1.562
  %br.nul = getelementptr i8, ptr %b.rn.data153, i64 %sum124
  store i8 0, ptr %br.nul, align 1
  %b.len.gep154 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 0
  store i64 %sum124, ptr %b.len.gep154, align 8
  br label %choice.exit

choice.then158:                                   ; preds = %choice.else
  %var.load161 = load i1, ptr %"var.started'", align 1
  br i1 %var.load161, label %choice.then162, label %choice.exit163

choice.else159:                                   ; preds = %choice.else
  store i1 true, ptr %"var.started'", align 1
  store i64 0, ptr %"var.blank_run'", align 8
  %var.load219 = load ptr, ptr %var.ln, align 8
  %fld.gep220 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load219, i32 0, i32 0
  %fld.load221 = load ptr, ptr %fld.gep220, align 8
  %call.res = call ptr @"formatter::strip_leading_ws"(ptr %fld.load221)
  store ptr %call.res, ptr %var.body, align 8
  %var.load222 = load ptr, ptr %var.ln, align 8
  %fld.gep223 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load222, i32 0, i32 6
  %fld.load224 = load i1, ptr %fld.gep223, align 1
  br i1 %fld.load224, label %choice.then225, label %choice.else226

choice.exit160:                                   ; preds = %choice.exit227, %choice.exit163
  br label %choice.exit

choice.then162:                                   ; preds = %choice.then158
  %var.load164 = load i64, ptr %"var.blank_run'", align 8
  %addtmp = add i64 %var.load164, 1
  store i64 %addtmp, ptr %"var.blank_run'", align 8
  %var.load165 = load i64, ptr %"var.cur_canon_indent'", align 8
  %cmptmp166 = icmp eq i64 %var.load165, 0
  br i1 %cmptmp166, label %choice.then167, label %choice.else168

choice.exit163:                                   ; preds = %choice.exit174, %choice.then158
  br label %choice.exit160

choice.then167:                                   ; preds = %choice.then162
  br label %choice.exit169

choice.else168:                                   ; preds = %choice.then162
  br label %choice.exit169

choice.exit169:                                   ; preds = %choice.else168, %choice.then167
  %choice.res = phi i64 [ 2, %choice.then167 ], [ 1, %choice.else168 ]
  store i64 %choice.res, ptr %var.max_blanks, align 8
  %var.load170 = load i64, ptr %"var.blank_run'", align 8
  %var.load171 = load i64, ptr %var.max_blanks, align 8
  %cmptmp172 = icmp sle i64 %var.load170, %var.load171
  br i1 %cmptmp172, label %choice.then173, label %choice.exit174

choice.then173:                                   ; preds = %choice.exit169
  %b.load175 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len176 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load175, i32 0, i32 0
  %b.rn.cur.len177 = load i64, ptr %b.rn.cur.len176, align 8
  %b.rn.new.len178 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len177, i64 1)
  %sum179 = extractvalue { i64, i1 } %b.rn.new.len178, 0
  %ovf180 = extractvalue { i64, i1 } %b.rn.new.len178, 1
  br i1 %ovf180, label %str_overflow_abort182, label %b.rn.new.len181

choice.exit174:                                   ; preds = %br.done.563, %choice.exit169
  br label %choice.exit163

b.rn.new.len181:                                  ; preds = %str_overflow_abort182, %choice.then173
  %b.cap183 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load175, i32 0, i32 2
  %b.cap184 = load i64, ptr %b.cap183, align 8
  %b.need.grow185 = icmp slt i64 %b.cap184, %sum179
  br i1 %b.need.grow185, label %b.grow2186, label %b.nogrow2187

str_overflow_abort182:                            ; preds = %choice.then173
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len181

b.grow2186:                                       ; preds = %b.rn.new.len181
  %b.cap2189 = mul i64 %b.cap184, 2
  %b.cap.small190 = icmp slt i64 %b.cap2189, 16
  %b.cap.grow191 = select i1 %b.cap.small190, i64 16, i64 %b.cap2189
  %b.cap.need192 = icmp slt i64 %b.cap.grow191, %sum179
  %b.new.cap193 = select i1 %b.cap.need192, i64 %sum179, i64 %b.cap.grow191
  %b.cur.len2194 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load175, i32 0, i32 0
  %b.cur.len2195 = load i64, ptr %b.cur.len2194, align 8
  %b.cur.data2196 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load175, i32 0, i32 1
  %b.cur.data2197 = load ptr, ptr %b.cur.data2196, align 8
  %b.new.buf.len2198 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap193, i64 1)
  %sum199 = extractvalue { i64, i1 } %b.new.buf.len2198, 0
  %ovf200 = extractvalue { i64, i1 } %b.new.buf.len2198, 1
  br i1 %ovf200, label %str_overflow_abort202, label %b.new.buf.len2201

b.nogrow2187:                                     ; preds = %b.rn.new.len181
  br label %b.grow_done188

b.grow_done188:                                   ; preds = %b.nogrow2187, %b.new.buf.len2201
  %b.rn.data208 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load175, i32 0, i32 1
  %b.rn.data209 = load ptr, ptr %b.rn.data208, align 8
  %b.rn.dst210 = getelementptr i8, ptr %b.rn.data209, i64 %b.rn.cur.len177
  br i1 true, label %br.b1.563, label %br.c2.563

b.new.buf.len2201:                                ; preds = %str_overflow_abort202, %b.grow2186
  %arena.cur203 = call ptr @dva_arena_current()
  %b.new.buf2204 = call ptr @dva_arena_alloc(ptr %arena.cur203, i64 %sum199)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2204, ptr align 1 %b.cur.data2197, i64 %b.cur.len2195, i1 false)
  %b.grow2.nul205 = getelementptr i8, ptr %b.new.buf2204, i64 %b.cur.len2195
  store i8 0, ptr %b.grow2.nul205, align 1
  %b.new.data2.gep206 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load175, i32 0, i32 1
  store ptr %b.new.buf2204, ptr %b.new.data2.gep206, align 8
  %b.new.cap2.gep207 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load175, i32 0, i32 2
  store i64 %b.new.cap193, ptr %b.new.cap2.gep207, align 8
  br label %b.grow_done188

str_overflow_abort202:                            ; preds = %b.grow2186
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2201

br.b1.563:                                        ; preds = %b.grow_done188
  store i8 10, ptr %b.rn.dst210, align 1
  br label %br.done.563

br.c2.563:                                        ; preds = %b.grow_done188
  br i1 true, label %br.b2.563, label %br.c3.563

br.b2.563:                                        ; preds = %br.c2.563
  store i8 -64, ptr %b.rn.dst210, align 1
  %br.dst1211 = getelementptr i8, ptr %b.rn.dst210, i64 1
  store i8 -118, ptr %br.dst1211, align 1
  br label %br.done.563

br.c3.563:                                        ; preds = %br.c2.563
  br i1 true, label %br.b3.563, label %br.b4.563

br.b3.563:                                        ; preds = %br.c3.563
  store i8 -32, ptr %b.rn.dst210, align 1
  %br.dst1.3212 = getelementptr i8, ptr %b.rn.dst210, i64 1
  store i8 -128, ptr %br.dst1.3212, align 1
  %br.dst2.3213 = getelementptr i8, ptr %b.rn.dst210, i64 2
  store i8 -118, ptr %br.dst2.3213, align 1
  br label %br.done.563

br.b4.563:                                        ; preds = %br.c3.563
  store i8 -16, ptr %b.rn.dst210, align 1
  %br.dst1.4214 = getelementptr i8, ptr %b.rn.dst210, i64 1
  store i8 -128, ptr %br.dst1.4214, align 1
  %br.dst2.4215 = getelementptr i8, ptr %b.rn.dst210, i64 2
  store i8 -128, ptr %br.dst2.4215, align 1
  %br.dst3.4216 = getelementptr i8, ptr %b.rn.dst210, i64 3
  store i8 -118, ptr %br.dst3.4216, align 1
  br label %br.done.563

br.done.563:                                      ; preds = %br.b4.563, %br.b3.563, %br.b2.563, %br.b1.563
  %br.nul217 = getelementptr i8, ptr %b.rn.data209, i64 %sum179
  store i8 0, ptr %br.nul217, align 1
  %b.len.gep218 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load175, i32 0, i32 0
  store i64 %sum179, ptr %b.len.gep218, align 8
  br label %choice.exit174

choice.then225:                                   ; preds = %choice.else159
  %var.load228 = load ptr, ptr %var.raw_stack, align 8
  %a.load229 = load ptr, ptr %var.raw_stack, align 8
  %a.null230 = icmp eq ptr %a.load229, null
  br i1 %a.null230, label %a.create231, label %a.after232

choice.else226:                                   ; preds = %choice.else159
  %var.load581 = load ptr, ptr %var.ln, align 8
  %fld.gep582 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load581, i32 0, i32 3
  %fld.load583 = load i64, ptr %fld.gep582, align 8
  store i64 %fld.load583, ptr %var.raw, align 8
  %var.load584 = load ptr, ptr %var.body, align 8
  %call.res585 = call ptr @"formatter::strip_code_comment"(ptr %var.load584)
  store ptr %call.res585, ptr %var.cur_code, align 8
  %var.load586 = load ptr, ptr %var.raw_stack, align 8
  %a.load587 = load ptr, ptr %var.raw_stack, align 8
  %a.null588 = icmp eq ptr %a.load587, null
  br i1 %a.null588, label %a.create589, label %a.after590

choice.exit227:                                   ; preds = %br.done.568, %br.done.565
  br label %choice.exit160

a.create231:                                      ; preds = %choice.then225
  %arena.cur233 = call ptr @dva_arena_current()
  %a.create234 = call ptr @dva_arena_alloc(ptr %arena.cur233, i64 24)
  %arena.cur235 = call ptr @dva_arena_current()
  %a.buf236 = call ptr @dva_arena_alloc(ptr %arena.cur235, i64 128)
  %a.len.gep237 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create234, i32 0, i32 0
  store i64 0, ptr %a.len.gep237, align 8
  %a.data.gep238 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create234, i32 0, i32 1
  store ptr %a.buf236, ptr %a.data.gep238, align 8
  %a.cap.gep239 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create234, i32 0, i32 2
  store i64 16, ptr %a.cap.gep239, align 8
  store ptr %a.create234, ptr %var.raw_stack, align 8
  br label %a.after232

a.after232:                                       ; preds = %a.create231, %choice.then225
  %a.load2240 = load ptr, ptr %var.raw_stack, align 8
  %var.load241 = load i64, ptr %"var.top'", align 8
  %var.load242 = load ptr, ptr %var.ln, align 8
  %fld.gep243 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load242, i32 0, i32 3
  %fld.load244 = load i64, ptr %fld.gep243, align 8
  %call.res245 = call i64 @"formatter::find_stack_level"(ptr %a.load2240, i64 %var.load241, i64 %fld.load244)
  store i64 %call.res245, ptr %var.lvl, align 8
  %var.load246 = load ptr, ptr %var.canon_stack, align 8
  %a.load247 = load ptr, ptr %var.canon_stack, align 8
  %a.null248 = icmp eq ptr %a.load247, null
  br i1 %a.null248, label %a.create249, label %a.after250

a.create249:                                      ; preds = %a.after232
  %arena.cur251 = call ptr @dva_arena_current()
  %a.create252 = call ptr @dva_arena_alloc(ptr %arena.cur251, i64 24)
  %arena.cur253 = call ptr @dva_arena_current()
  %a.buf254 = call ptr @dva_arena_alloc(ptr %arena.cur253, i64 128)
  %a.len.gep255 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create252, i32 0, i32 0
  store i64 0, ptr %a.len.gep255, align 8
  %a.data.gep256 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create252, i32 0, i32 1
  store ptr %a.buf254, ptr %a.data.gep256, align 8
  %a.cap.gep257 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create252, i32 0, i32 2
  store i64 16, ptr %a.cap.gep257, align 8
  store ptr %a.create252, ptr %var.canon_stack, align 8
  br label %a.after250

a.after250:                                       ; preds = %a.create249, %a.after232
  %a.load2258 = load ptr, ptr %var.canon_stack, align 8
  %var.load259 = load i64, ptr %var.lvl, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2258, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after250
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2258, i32 0, i32 0
  %a.rd.len260 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load259, 0
  %a.rd.lt = icmp slt i64 %var.load259, %a.rd.len260
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2258, i32 0, i32 1
  %a.rd.data261 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data261, i64 %var.load259
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after250
  %arena.cur262 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur262, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 533, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 51, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur263 = call ptr @dva_arena_current()
  %err.alloc264 = call ptr @dva_arena_alloc(ptr %arena.cur263, i64 56)
  %err.code.gep265 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc264, i32 0, i32 0
  store i64 4011, ptr %err.code.gep265, align 8
  %err.msg.gep266 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc264, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep266, align 8
  %err.file.gep267 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc264, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep267, align 8
  %err.line.gep268 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc264, i32 0, i32 3
  store i64 533, ptr %err.line.gep268, align 8
  %err.col.gep269 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc264, i32 0, i32 4
  store i64 51, ptr %err.col.gep269, align 8
  %err.ctx.gep270 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc264, i32 0, i32 5
  %err.ctx0.gep271 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep270, i32 0, i32 0
  store i64 %var.load259, ptr %err.ctx0.gep271, align 8
  %err.ctx1.gep272 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep270, i32 0, i32 1
  store i64 %a.rd.len260, ptr %err.ctx1.gep272, align 8
  %err.p2i273 = ptrtoint ptr %err.alloc264 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i273, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag274 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag274, label %choice.then275, label %choice.else276

choice.then275:                                   ; preds = %a.rd.done
  %ram.pay278 = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %ram.pay278, ptr %var._279, align 8
  br label %choice.exit277

choice.else276:                                   ; preds = %a.rd.done
  %ram.pay280 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay280 to ptr
  store ptr %pay.ptr, ptr %var._281, align 8
  br label %choice.exit277

choice.exit277:                                   ; preds = %choice.else276, %choice.then275
  %choice.res282 = phi i64 [ %ram.pay278, %choice.then275 ], [ 0, %choice.else276 ]
  store i64 %choice.res282, ptr %var.base_c, align 8
  %var.load283 = load ptr, ptr %var.raw_stack, align 8
  %a.load284 = load ptr, ptr %var.raw_stack, align 8
  %a.null285 = icmp eq ptr %a.load284, null
  br i1 %a.null285, label %a.create286, label %a.after287

a.create286:                                      ; preds = %choice.exit277
  %arena.cur288 = call ptr @dva_arena_current()
  %a.create289 = call ptr @dva_arena_alloc(ptr %arena.cur288, i64 24)
  %arena.cur290 = call ptr @dva_arena_current()
  %a.buf291 = call ptr @dva_arena_alloc(ptr %arena.cur290, i64 128)
  %a.len.gep292 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create289, i32 0, i32 0
  store i64 0, ptr %a.len.gep292, align 8
  %a.data.gep293 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create289, i32 0, i32 1
  store ptr %a.buf291, ptr %a.data.gep293, align 8
  %a.cap.gep294 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create289, i32 0, i32 2
  store i64 16, ptr %a.cap.gep294, align 8
  store ptr %a.create289, ptr %var.raw_stack, align 8
  br label %a.after287

a.after287:                                       ; preds = %a.create286, %choice.exit277
  %a.load2295 = load ptr, ptr %var.raw_stack, align 8
  %var.load296 = load i64, ptr %var.lvl, align 8
  %a.rd.nonnull297 = icmp ne ptr %a.load2295, null
  br i1 %a.rd.nonnull297, label %a.rd.check298, label %a.rd.err.null300

a.rd.check298:                                    ; preds = %a.after287
  %a.rd.len303 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2295, i32 0, i32 0
  %a.rd.len304 = load i64, ptr %a.rd.len303, align 8
  %a.rd.ge0305 = icmp sge i64 %var.load296, 0
  %a.rd.lt306 = icmp slt i64 %var.load296, %a.rd.len304
  %a.rd.bounds307 = and i1 %a.rd.ge0305, %a.rd.lt306
  br i1 %a.rd.bounds307, label %a.rd.ok299, label %a.rd.err.oob301

a.rd.ok299:                                       ; preds = %a.rd.check298
  %a.rd.data308 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2295, i32 0, i32 1
  %a.rd.data309 = load ptr, ptr %a.rd.data308, align 8
  %a.rd.elem.gep310 = getelementptr i64, ptr %a.rd.data309, i64 %var.load296
  %a.rd.elem311 = load i64, ptr %a.rd.elem.gep310, align 8
  br label %a.rd.done302

a.rd.err.null300:                                 ; preds = %a.after287
  %arena.cur312 = call ptr @dva_arena_current()
  %err.alloc313 = call ptr @dva_arena_alloc(ptr %arena.cur312, i64 56)
  %err.code.gep314 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc313, i32 0, i32 0
  store i64 4011, ptr %err.code.gep314, align 8
  %err.msg.gep315 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc313, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep315, align 8
  %err.file.gep316 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc313, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep316, align 8
  %err.line.gep317 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc313, i32 0, i32 3
  store i64 534, ptr %err.line.gep317, align 8
  %err.col.gep318 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc313, i32 0, i32 4
  store i64 49, ptr %err.col.gep318, align 8
  %err.ctx.gep319 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc313, i32 0, i32 5
  %err.ctx0.gep320 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep319, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep320, align 8
  %err.ctx1.gep321 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep319, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep321, align 8
  %err.p2i322 = ptrtoint ptr %err.alloc313 to i64
  br label %a.rd.done302

a.rd.err.oob301:                                  ; preds = %a.rd.check298
  %arena.cur323 = call ptr @dva_arena_current()
  %err.alloc324 = call ptr @dva_arena_alloc(ptr %arena.cur323, i64 56)
  %err.code.gep325 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc324, i32 0, i32 0
  store i64 4011, ptr %err.code.gep325, align 8
  %err.msg.gep326 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc324, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep326, align 8
  %err.file.gep327 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc324, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep327, align 8
  %err.line.gep328 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc324, i32 0, i32 3
  store i64 534, ptr %err.line.gep328, align 8
  %err.col.gep329 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc324, i32 0, i32 4
  store i64 49, ptr %err.col.gep329, align 8
  %err.ctx.gep330 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc324, i32 0, i32 5
  %err.ctx0.gep331 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep330, i32 0, i32 0
  store i64 %var.load296, ptr %err.ctx0.gep331, align 8
  %err.ctx1.gep332 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep330, i32 0, i32 1
  store i64 %a.rd.len304, ptr %err.ctx1.gep332, align 8
  %err.p2i333 = ptrtoint ptr %err.alloc324 to i64
  br label %a.rd.done302

a.rd.done302:                                     ; preds = %a.rd.err.oob301, %a.rd.err.null300, %a.rd.ok299
  %a.rd.tag334 = phi i1 [ true, %a.rd.ok299 ], [ false, %a.rd.err.null300 ], [ false, %a.rd.err.oob301 ]
  %a.rd.pay335 = phi i64 [ %a.rd.elem311, %a.rd.ok299 ], [ %err.p2i322, %a.rd.err.null300 ], [ %err.p2i333, %a.rd.err.oob301 ]
  %ram.tag336 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag334, 0
  %ram.pay337 = insertvalue { i1, i64 } %ram.tag336, i64 %a.rd.pay335, 1
  %ram.tag338 = extractvalue { i1, i64 } %ram.pay337, 0
  br i1 %ram.tag338, label %choice.then339, label %choice.else340

choice.then339:                                   ; preds = %a.rd.done302
  %ram.pay342 = extractvalue { i1, i64 } %ram.pay337, 1
  store i64 %ram.pay342, ptr %var._343, align 8
  br label %choice.exit341

choice.else340:                                   ; preds = %a.rd.done302
  %ram.pay344 = extractvalue { i1, i64 } %ram.pay337, 1
  %pay.ptr345 = inttoptr i64 %ram.pay344 to ptr
  store ptr %pay.ptr345, ptr %var._346, align 8
  br label %choice.exit341

choice.exit341:                                   ; preds = %choice.else340, %choice.then339
  %choice.res347 = phi i64 [ %ram.pay342, %choice.then339 ], [ 0, %choice.else340 ]
  store i64 %choice.res347, ptr %var.base_r, align 8
  %var.load348 = load ptr, ptr %var.body_stack, align 8
  %a.load349 = load ptr, ptr %var.body_stack, align 8
  %a.null350 = icmp eq ptr %a.load349, null
  br i1 %a.null350, label %a.create351, label %a.after352

a.create351:                                      ; preds = %choice.exit341
  %arena.cur353 = call ptr @dva_arena_current()
  %a.create354 = call ptr @dva_arena_alloc(ptr %arena.cur353, i64 24)
  %arena.cur355 = call ptr @dva_arena_current()
  %a.buf356 = call ptr @dva_arena_alloc(ptr %arena.cur355, i64 128)
  %a.len.gep357 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create354, i32 0, i32 0
  store i64 0, ptr %a.len.gep357, align 8
  %a.data.gep358 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create354, i32 0, i32 1
  store ptr %a.buf356, ptr %a.data.gep358, align 8
  %a.cap.gep359 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create354, i32 0, i32 2
  store i64 16, ptr %a.cap.gep359, align 8
  store ptr %a.create354, ptr %var.body_stack, align 8
  br label %a.after352

a.after352:                                       ; preds = %a.create351, %choice.exit341
  %a.load2360 = load ptr, ptr %var.body_stack, align 8
  %var.load361 = load i64, ptr %var.lvl, align 8
  %a.rd.nonnull362 = icmp ne ptr %a.load2360, null
  br i1 %a.rd.nonnull362, label %a.rd.check363, label %a.rd.err.null365

a.rd.check363:                                    ; preds = %a.after352
  %a.rd.len368 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2360, i32 0, i32 0
  %a.rd.len369 = load i64, ptr %a.rd.len368, align 8
  %a.rd.ge0370 = icmp sge i64 %var.load361, 0
  %a.rd.lt371 = icmp slt i64 %var.load361, %a.rd.len369
  %a.rd.bounds372 = and i1 %a.rd.ge0370, %a.rd.lt371
  br i1 %a.rd.bounds372, label %a.rd.ok364, label %a.rd.err.oob366

a.rd.ok364:                                       ; preds = %a.rd.check363
  %a.rd.data373 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2360, i32 0, i32 1
  %a.rd.data374 = load ptr, ptr %a.rd.data373, align 8
  %a.rd.elem.gep375 = getelementptr i64, ptr %a.rd.data374, i64 %var.load361
  %a.rd.elem376 = load i64, ptr %a.rd.elem.gep375, align 8
  br label %a.rd.done367

a.rd.err.null365:                                 ; preds = %a.after352
  %arena.cur377 = call ptr @dva_arena_current()
  %err.alloc378 = call ptr @dva_arena_alloc(ptr %arena.cur377, i64 56)
  %err.code.gep379 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc378, i32 0, i32 0
  store i64 4011, ptr %err.code.gep379, align 8
  %err.msg.gep380 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc378, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep380, align 8
  %err.file.gep381 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc378, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep381, align 8
  %err.line.gep382 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc378, i32 0, i32 3
  store i64 535, ptr %err.line.gep382, align 8
  %err.col.gep383 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc378, i32 0, i32 4
  store i64 50, ptr %err.col.gep383, align 8
  %err.ctx.gep384 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc378, i32 0, i32 5
  %err.ctx0.gep385 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep384, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep385, align 8
  %err.ctx1.gep386 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep384, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep386, align 8
  %err.p2i387 = ptrtoint ptr %err.alloc378 to i64
  br label %a.rd.done367

a.rd.err.oob366:                                  ; preds = %a.rd.check363
  %arena.cur388 = call ptr @dva_arena_current()
  %err.alloc389 = call ptr @dva_arena_alloc(ptr %arena.cur388, i64 56)
  %err.code.gep390 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc389, i32 0, i32 0
  store i64 4011, ptr %err.code.gep390, align 8
  %err.msg.gep391 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc389, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep391, align 8
  %err.file.gep392 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc389, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep392, align 8
  %err.line.gep393 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc389, i32 0, i32 3
  store i64 535, ptr %err.line.gep393, align 8
  %err.col.gep394 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc389, i32 0, i32 4
  store i64 50, ptr %err.col.gep394, align 8
  %err.ctx.gep395 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc389, i32 0, i32 5
  %err.ctx0.gep396 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep395, i32 0, i32 0
  store i64 %var.load361, ptr %err.ctx0.gep396, align 8
  %err.ctx1.gep397 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep395, i32 0, i32 1
  store i64 %a.rd.len369, ptr %err.ctx1.gep397, align 8
  %err.p2i398 = ptrtoint ptr %err.alloc389 to i64
  br label %a.rd.done367

a.rd.done367:                                     ; preds = %a.rd.err.oob366, %a.rd.err.null365, %a.rd.ok364
  %a.rd.tag399 = phi i1 [ true, %a.rd.ok364 ], [ false, %a.rd.err.null365 ], [ false, %a.rd.err.oob366 ]
  %a.rd.pay400 = phi i64 [ %a.rd.elem376, %a.rd.ok364 ], [ %err.p2i387, %a.rd.err.null365 ], [ %err.p2i398, %a.rd.err.oob366 ]
  %ram.tag401 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag399, 0
  %ram.pay402 = insertvalue { i1, i64 } %ram.tag401, i64 %a.rd.pay400, 1
  %ram.tag403 = extractvalue { i1, i64 } %ram.pay402, 0
  br i1 %ram.tag403, label %choice.then404, label %choice.else405

choice.then404:                                   ; preds = %a.rd.done367
  %ram.pay407 = extractvalue { i1, i64 } %ram.pay402, 1
  %pay.ptr408 = inttoptr i64 %ram.pay407 to ptr
  store ptr %pay.ptr408, ptr %var._409, align 8
  br label %choice.exit406

choice.else405:                                   ; preds = %a.rd.done367
  %ram.pay410 = extractvalue { i1, i64 } %ram.pay402, 1
  %pay.ptr411 = inttoptr i64 %ram.pay410 to ptr
  store ptr %pay.ptr411, ptr %var._412, align 8
  br label %choice.exit406

choice.exit406:                                   ; preds = %choice.else405, %choice.then404
  %choice.res413 = phi ptr [ %pay.ptr408, %choice.then404 ], [ @str.3.struct, %choice.else405 ]
  store ptr %choice.res413, ptr %var.p_code, align 8
  %var.load414 = load ptr, ptr %var.ln, align 8
  %fld.gep415 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load414, i32 0, i32 3
  %fld.load416 = load i64, ptr %fld.gep415, align 8
  %var.load417 = load i64, ptr %var.base_r, align 8
  %cmptmp418 = icmp sgt i64 %fld.load416, %var.load417
  br i1 %cmptmp418, label %choice.then419, label %choice.else420

choice.then419:                                   ; preds = %choice.exit406
  %var.load422 = load i64, ptr %var.base_c, align 8
  %var.load423 = load ptr, ptr %var.p_code, align 8
  %call.res424 = call i1 @"formatter::is_inline_pipe_arm"(ptr %var.load423)
  br i1 %call.res424, label %and.564.then, label %and.564.else

choice.else420:                                   ; preds = %choice.exit406
  %var.load432 = load i64, ptr %var.base_c, align 8
  br label %choice.exit421

choice.exit421:                                   ; preds = %choice.else420, %choice.exit429
  %choice.res433 = phi i64 [ %addtmp431, %choice.exit429 ], [ %var.load432, %choice.else420 ]
  store i64 %choice.res433, ptr %var.c_indent, align 8
  %b.load434 = load ptr, ptr %var.out, align 8
  %var.load435 = load i64, ptr %var.c_indent, align 8
  %call.res436 = call ptr @"formatter::make_spaces"(i64 %var.load435)
  %app.str.len437 = getelementptr inbounds { i64, ptr }, ptr %call.res436, i32 0, i32 0
  %app.str.len438 = load i64, ptr %app.str.len437, align 8
  %app.str.len439 = and i64 %app.str.len438, 281474976710655
  %str.tag440 = lshr i64 %app.str.len438, 48
  %str.immortal441 = icmp eq i64 %str.tag440, 0
  br i1 %str.immortal441, label %str_ok443, label %str_gen_check442

and.564.then:                                     ; preds = %choice.then419
  %var.load425 = load ptr, ptr %var.p_code, align 8
  %call.res426 = call i1 @"formatter::ends_with_block_opener"(ptr %var.load425)
  %nottmp = xor i1 %call.res426, true
  br label %and.564.exit

and.564.else:                                     ; preds = %choice.then419
  br label %and.564.exit

and.564.exit:                                     ; preds = %and.564.else, %and.564.then
  %and.564.phi = phi i1 [ %nottmp, %and.564.then ], [ %call.res424, %and.564.else ]
  br i1 %and.564.phi, label %choice.then427, label %choice.else428

choice.then427:                                   ; preds = %and.564.exit
  br label %choice.exit429

choice.else428:                                   ; preds = %and.564.exit
  br label %choice.exit429

choice.exit429:                                   ; preds = %choice.else428, %choice.then427
  %choice.res430 = phi i64 [ 2, %choice.then427 ], [ 3, %choice.else428 ]
  %addtmp431 = add i64 %var.load422, %choice.res430
  br label %choice.exit421

str_gen_check442:                                 ; preds = %choice.exit421
  %arena.cur445 = call ptr @dva_arena_current()
  %tag.valid446 = call i1 @dva_arena_validate_tag(ptr %arena.cur445, i64 %str.tag440)
  br i1 %tag.valid446, label %str_ok443, label %str_stale444

str_ok443:                                        ; preds = %str_stale444, %str_gen_check442, %choice.exit421
  %b.app.cur.len447 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load434, i32 0, i32 0
  %b.app.cur.len448 = load i64, ptr %b.app.cur.len447, align 8
  %b.app.new.len449 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len448, i64 %app.str.len439)
  %sum450 = extractvalue { i64, i1 } %b.app.new.len449, 0
  %ovf451 = extractvalue { i64, i1 } %b.app.new.len449, 1
  br i1 %ovf451, label %str_overflow_abort453, label %b.app.new.len452

str_stale444:                                     ; preds = %str_gen_check442
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok443

b.app.new.len452:                                 ; preds = %str_overflow_abort453, %str_ok443
  %b.cap454 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load434, i32 0, i32 2
  %b.cap455 = load i64, ptr %b.cap454, align 8
  %b.need.grow456 = icmp slt i64 %b.cap455, %sum450
  br i1 %b.need.grow456, label %b.grow2457, label %b.nogrow2458

str_overflow_abort453:                            ; preds = %str_ok443
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len452

b.grow2457:                                       ; preds = %b.app.new.len452
  %b.cap2460 = mul i64 %b.cap455, 2
  %b.cap.small461 = icmp slt i64 %b.cap2460, 16
  %b.cap.grow462 = select i1 %b.cap.small461, i64 16, i64 %b.cap2460
  %b.cap.need463 = icmp slt i64 %b.cap.grow462, %sum450
  %b.new.cap464 = select i1 %b.cap.need463, i64 %sum450, i64 %b.cap.grow462
  %b.cur.len2465 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load434, i32 0, i32 0
  %b.cur.len2466 = load i64, ptr %b.cur.len2465, align 8
  %b.cur.data2467 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load434, i32 0, i32 1
  %b.cur.data2468 = load ptr, ptr %b.cur.data2467, align 8
  %b.new.buf.len2469 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap464, i64 1)
  %sum470 = extractvalue { i64, i1 } %b.new.buf.len2469, 0
  %ovf471 = extractvalue { i64, i1 } %b.new.buf.len2469, 1
  br i1 %ovf471, label %str_overflow_abort473, label %b.new.buf.len2472

b.nogrow2458:                                     ; preds = %b.app.new.len452
  br label %b.grow_done459

b.grow_done459:                                   ; preds = %b.nogrow2458, %b.new.buf.len2472
  %app.str.data479 = getelementptr inbounds { i64, ptr }, ptr %call.res436, i32 0, i32 1
  %app.str.data480 = load ptr, ptr %app.str.data479, align 8
  %b.app.data481 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load434, i32 0, i32 1
  %b.app.data482 = load ptr, ptr %b.app.data481, align 8
  %b.app.dst483 = getelementptr i8, ptr %b.app.data482, i64 %b.app.cur.len448
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst483, ptr align 1 %app.str.data480, i64 %app.str.len439, i1 false)
  %b.app.nul484 = getelementptr i8, ptr %b.app.data482, i64 %sum450
  store i8 0, ptr %b.app.nul484, align 1
  %b.len.gep485 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load434, i32 0, i32 0
  store i64 %sum450, ptr %b.len.gep485, align 8
  %b.load486 = load ptr, ptr %var.out, align 8
  %var.load487 = load ptr, ptr %var.body, align 8
  %app.str.len488 = getelementptr inbounds { i64, ptr }, ptr %var.load487, i32 0, i32 0
  %app.str.len489 = load i64, ptr %app.str.len488, align 8
  %app.str.len490 = and i64 %app.str.len489, 281474976710655
  %str.tag491 = lshr i64 %app.str.len489, 48
  %str.immortal492 = icmp eq i64 %str.tag491, 0
  br i1 %str.immortal492, label %str_ok494, label %str_gen_check493

b.new.buf.len2472:                                ; preds = %str_overflow_abort473, %b.grow2457
  %arena.cur474 = call ptr @dva_arena_current()
  %b.new.buf2475 = call ptr @dva_arena_alloc(ptr %arena.cur474, i64 %sum470)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2475, ptr align 1 %b.cur.data2468, i64 %b.cur.len2466, i1 false)
  %b.grow2.nul476 = getelementptr i8, ptr %b.new.buf2475, i64 %b.cur.len2466
  store i8 0, ptr %b.grow2.nul476, align 1
  %b.new.data2.gep477 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load434, i32 0, i32 1
  store ptr %b.new.buf2475, ptr %b.new.data2.gep477, align 8
  %b.new.cap2.gep478 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load434, i32 0, i32 2
  store i64 %b.new.cap464, ptr %b.new.cap2.gep478, align 8
  br label %b.grow_done459

str_overflow_abort473:                            ; preds = %b.grow2457
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2472

str_gen_check493:                                 ; preds = %b.grow_done459
  %arena.cur496 = call ptr @dva_arena_current()
  %tag.valid497 = call i1 @dva_arena_validate_tag(ptr %arena.cur496, i64 %str.tag491)
  br i1 %tag.valid497, label %str_ok494, label %str_stale495

str_ok494:                                        ; preds = %str_stale495, %str_gen_check493, %b.grow_done459
  %b.app.cur.len498 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load486, i32 0, i32 0
  %b.app.cur.len499 = load i64, ptr %b.app.cur.len498, align 8
  %b.app.new.len500 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len499, i64 %app.str.len490)
  %sum501 = extractvalue { i64, i1 } %b.app.new.len500, 0
  %ovf502 = extractvalue { i64, i1 } %b.app.new.len500, 1
  br i1 %ovf502, label %str_overflow_abort504, label %b.app.new.len503

str_stale495:                                     ; preds = %str_gen_check493
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok494

b.app.new.len503:                                 ; preds = %str_overflow_abort504, %str_ok494
  %b.cap505 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load486, i32 0, i32 2
  %b.cap506 = load i64, ptr %b.cap505, align 8
  %b.need.grow507 = icmp slt i64 %b.cap506, %sum501
  br i1 %b.need.grow507, label %b.grow2508, label %b.nogrow2509

str_overflow_abort504:                            ; preds = %str_ok494
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len503

b.grow2508:                                       ; preds = %b.app.new.len503
  %b.cap2511 = mul i64 %b.cap506, 2
  %b.cap.small512 = icmp slt i64 %b.cap2511, 16
  %b.cap.grow513 = select i1 %b.cap.small512, i64 16, i64 %b.cap2511
  %b.cap.need514 = icmp slt i64 %b.cap.grow513, %sum501
  %b.new.cap515 = select i1 %b.cap.need514, i64 %sum501, i64 %b.cap.grow513
  %b.cur.len2516 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load486, i32 0, i32 0
  %b.cur.len2517 = load i64, ptr %b.cur.len2516, align 8
  %b.cur.data2518 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load486, i32 0, i32 1
  %b.cur.data2519 = load ptr, ptr %b.cur.data2518, align 8
  %b.new.buf.len2520 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap515, i64 1)
  %sum521 = extractvalue { i64, i1 } %b.new.buf.len2520, 0
  %ovf522 = extractvalue { i64, i1 } %b.new.buf.len2520, 1
  br i1 %ovf522, label %str_overflow_abort524, label %b.new.buf.len2523

b.nogrow2509:                                     ; preds = %b.app.new.len503
  br label %b.grow_done510

b.grow_done510:                                   ; preds = %b.nogrow2509, %b.new.buf.len2523
  %app.str.data530 = getelementptr inbounds { i64, ptr }, ptr %var.load487, i32 0, i32 1
  %app.str.data531 = load ptr, ptr %app.str.data530, align 8
  %b.app.data532 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load486, i32 0, i32 1
  %b.app.data533 = load ptr, ptr %b.app.data532, align 8
  %b.app.dst534 = getelementptr i8, ptr %b.app.data533, i64 %b.app.cur.len499
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst534, ptr align 1 %app.str.data531, i64 %app.str.len490, i1 false)
  %b.app.nul535 = getelementptr i8, ptr %b.app.data533, i64 %sum501
  store i8 0, ptr %b.app.nul535, align 1
  %b.len.gep536 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load486, i32 0, i32 0
  store i64 %sum501, ptr %b.len.gep536, align 8
  %b.load537 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len538 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load537, i32 0, i32 0
  %b.rn.cur.len539 = load i64, ptr %b.rn.cur.len538, align 8
  %b.rn.new.len540 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len539, i64 1)
  %sum541 = extractvalue { i64, i1 } %b.rn.new.len540, 0
  %ovf542 = extractvalue { i64, i1 } %b.rn.new.len540, 1
  br i1 %ovf542, label %str_overflow_abort544, label %b.rn.new.len543

b.new.buf.len2523:                                ; preds = %str_overflow_abort524, %b.grow2508
  %arena.cur525 = call ptr @dva_arena_current()
  %b.new.buf2526 = call ptr @dva_arena_alloc(ptr %arena.cur525, i64 %sum521)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2526, ptr align 1 %b.cur.data2519, i64 %b.cur.len2517, i1 false)
  %b.grow2.nul527 = getelementptr i8, ptr %b.new.buf2526, i64 %b.cur.len2517
  store i8 0, ptr %b.grow2.nul527, align 1
  %b.new.data2.gep528 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load486, i32 0, i32 1
  store ptr %b.new.buf2526, ptr %b.new.data2.gep528, align 8
  %b.new.cap2.gep529 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load486, i32 0, i32 2
  store i64 %b.new.cap515, ptr %b.new.cap2.gep529, align 8
  br label %b.grow_done510

str_overflow_abort524:                            ; preds = %b.grow2508
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2523

b.rn.new.len543:                                  ; preds = %str_overflow_abort544, %b.grow_done510
  %b.cap545 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load537, i32 0, i32 2
  %b.cap546 = load i64, ptr %b.cap545, align 8
  %b.need.grow547 = icmp slt i64 %b.cap546, %sum541
  br i1 %b.need.grow547, label %b.grow2548, label %b.nogrow2549

str_overflow_abort544:                            ; preds = %b.grow_done510
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len543

b.grow2548:                                       ; preds = %b.rn.new.len543
  %b.cap2551 = mul i64 %b.cap546, 2
  %b.cap.small552 = icmp slt i64 %b.cap2551, 16
  %b.cap.grow553 = select i1 %b.cap.small552, i64 16, i64 %b.cap2551
  %b.cap.need554 = icmp slt i64 %b.cap.grow553, %sum541
  %b.new.cap555 = select i1 %b.cap.need554, i64 %sum541, i64 %b.cap.grow553
  %b.cur.len2556 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load537, i32 0, i32 0
  %b.cur.len2557 = load i64, ptr %b.cur.len2556, align 8
  %b.cur.data2558 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load537, i32 0, i32 1
  %b.cur.data2559 = load ptr, ptr %b.cur.data2558, align 8
  %b.new.buf.len2560 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap555, i64 1)
  %sum561 = extractvalue { i64, i1 } %b.new.buf.len2560, 0
  %ovf562 = extractvalue { i64, i1 } %b.new.buf.len2560, 1
  br i1 %ovf562, label %str_overflow_abort564, label %b.new.buf.len2563

b.nogrow2549:                                     ; preds = %b.rn.new.len543
  br label %b.grow_done550

b.grow_done550:                                   ; preds = %b.nogrow2549, %b.new.buf.len2563
  %b.rn.data570 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load537, i32 0, i32 1
  %b.rn.data571 = load ptr, ptr %b.rn.data570, align 8
  %b.rn.dst572 = getelementptr i8, ptr %b.rn.data571, i64 %b.rn.cur.len539
  br i1 true, label %br.b1.565, label %br.c2.565

b.new.buf.len2563:                                ; preds = %str_overflow_abort564, %b.grow2548
  %arena.cur565 = call ptr @dva_arena_current()
  %b.new.buf2566 = call ptr @dva_arena_alloc(ptr %arena.cur565, i64 %sum561)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2566, ptr align 1 %b.cur.data2559, i64 %b.cur.len2557, i1 false)
  %b.grow2.nul567 = getelementptr i8, ptr %b.new.buf2566, i64 %b.cur.len2557
  store i8 0, ptr %b.grow2.nul567, align 1
  %b.new.data2.gep568 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load537, i32 0, i32 1
  store ptr %b.new.buf2566, ptr %b.new.data2.gep568, align 8
  %b.new.cap2.gep569 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load537, i32 0, i32 2
  store i64 %b.new.cap555, ptr %b.new.cap2.gep569, align 8
  br label %b.grow_done550

str_overflow_abort564:                            ; preds = %b.grow2548
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2563

br.b1.565:                                        ; preds = %b.grow_done550
  store i8 10, ptr %b.rn.dst572, align 1
  br label %br.done.565

br.c2.565:                                        ; preds = %b.grow_done550
  br i1 true, label %br.b2.565, label %br.c3.565

br.b2.565:                                        ; preds = %br.c2.565
  store i8 -64, ptr %b.rn.dst572, align 1
  %br.dst1573 = getelementptr i8, ptr %b.rn.dst572, i64 1
  store i8 -118, ptr %br.dst1573, align 1
  br label %br.done.565

br.c3.565:                                        ; preds = %br.c2.565
  br i1 true, label %br.b3.565, label %br.b4.565

br.b3.565:                                        ; preds = %br.c3.565
  store i8 -32, ptr %b.rn.dst572, align 1
  %br.dst1.3574 = getelementptr i8, ptr %b.rn.dst572, i64 1
  store i8 -128, ptr %br.dst1.3574, align 1
  %br.dst2.3575 = getelementptr i8, ptr %b.rn.dst572, i64 2
  store i8 -118, ptr %br.dst2.3575, align 1
  br label %br.done.565

br.b4.565:                                        ; preds = %br.c3.565
  store i8 -16, ptr %b.rn.dst572, align 1
  %br.dst1.4576 = getelementptr i8, ptr %b.rn.dst572, i64 1
  store i8 -128, ptr %br.dst1.4576, align 1
  %br.dst2.4577 = getelementptr i8, ptr %b.rn.dst572, i64 2
  store i8 -128, ptr %br.dst2.4577, align 1
  %br.dst3.4578 = getelementptr i8, ptr %b.rn.dst572, i64 3
  store i8 -118, ptr %br.dst3.4578, align 1
  br label %br.done.565

br.done.565:                                      ; preds = %br.b4.565, %br.b3.565, %br.b2.565, %br.b1.565
  %br.nul579 = getelementptr i8, ptr %b.rn.data571, i64 %sum541
  store i8 0, ptr %br.nul579, align 1
  %b.len.gep580 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load537, i32 0, i32 0
  store i64 %sum541, ptr %b.len.gep580, align 8
  br label %choice.exit227

a.create589:                                      ; preds = %choice.else226
  %arena.cur591 = call ptr @dva_arena_current()
  %a.create592 = call ptr @dva_arena_alloc(ptr %arena.cur591, i64 24)
  %arena.cur593 = call ptr @dva_arena_current()
  %a.buf594 = call ptr @dva_arena_alloc(ptr %arena.cur593, i64 128)
  %a.len.gep595 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create592, i32 0, i32 0
  store i64 0, ptr %a.len.gep595, align 8
  %a.data.gep596 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create592, i32 0, i32 1
  store ptr %a.buf594, ptr %a.data.gep596, align 8
  %a.cap.gep597 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create592, i32 0, i32 2
  store i64 16, ptr %a.cap.gep597, align 8
  store ptr %a.create592, ptr %var.raw_stack, align 8
  br label %a.after590

a.after590:                                       ; preds = %a.create589, %choice.else226
  %a.load2598 = load ptr, ptr %var.raw_stack, align 8
  %var.load599 = load i64, ptr %"var.top'", align 8
  %subtmp = sub i64 %var.load599, 1
  %a.rd.nonnull600 = icmp ne ptr %a.load2598, null
  br i1 %a.rd.nonnull600, label %a.rd.check601, label %a.rd.err.null603

a.rd.check601:                                    ; preds = %a.after590
  %a.rd.len606 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2598, i32 0, i32 0
  %a.rd.len607 = load i64, ptr %a.rd.len606, align 8
  %a.rd.ge0608 = icmp sge i64 %subtmp, 0
  %a.rd.lt609 = icmp slt i64 %subtmp, %a.rd.len607
  %a.rd.bounds610 = and i1 %a.rd.ge0608, %a.rd.lt609
  br i1 %a.rd.bounds610, label %a.rd.ok602, label %a.rd.err.oob604

a.rd.ok602:                                       ; preds = %a.rd.check601
  %a.rd.data611 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2598, i32 0, i32 1
  %a.rd.data612 = load ptr, ptr %a.rd.data611, align 8
  %a.rd.elem.gep613 = getelementptr i64, ptr %a.rd.data612, i64 %subtmp
  %a.rd.elem614 = load i64, ptr %a.rd.elem.gep613, align 8
  br label %a.rd.done605

a.rd.err.null603:                                 ; preds = %a.after590
  %arena.cur615 = call ptr @dva_arena_current()
  %err.alloc616 = call ptr @dva_arena_alloc(ptr %arena.cur615, i64 56)
  %err.code.gep617 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc616, i32 0, i32 0
  store i64 4011, ptr %err.code.gep617, align 8
  %err.msg.gep618 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc616, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep618, align 8
  %err.file.gep619 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc616, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep619, align 8
  %err.line.gep620 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc616, i32 0, i32 3
  store i64 545, ptr %err.line.gep620, align 8
  %err.col.gep621 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc616, i32 0, i32 4
  store i64 55, ptr %err.col.gep621, align 8
  %err.ctx.gep622 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc616, i32 0, i32 5
  %err.ctx0.gep623 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep622, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep623, align 8
  %err.ctx1.gep624 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep622, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep624, align 8
  %err.p2i625 = ptrtoint ptr %err.alloc616 to i64
  br label %a.rd.done605

a.rd.err.oob604:                                  ; preds = %a.rd.check601
  %arena.cur626 = call ptr @dva_arena_current()
  %err.alloc627 = call ptr @dva_arena_alloc(ptr %arena.cur626, i64 56)
  %err.code.gep628 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc627, i32 0, i32 0
  store i64 4011, ptr %err.code.gep628, align 8
  %err.msg.gep629 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc627, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep629, align 8
  %err.file.gep630 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc627, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep630, align 8
  %err.line.gep631 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc627, i32 0, i32 3
  store i64 545, ptr %err.line.gep631, align 8
  %err.col.gep632 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc627, i32 0, i32 4
  store i64 55, ptr %err.col.gep632, align 8
  %err.ctx.gep633 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc627, i32 0, i32 5
  %err.ctx0.gep634 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep633, i32 0, i32 0
  store i64 %subtmp, ptr %err.ctx0.gep634, align 8
  %err.ctx1.gep635 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep633, i32 0, i32 1
  store i64 %a.rd.len607, ptr %err.ctx1.gep635, align 8
  %err.p2i636 = ptrtoint ptr %err.alloc627 to i64
  br label %a.rd.done605

a.rd.done605:                                     ; preds = %a.rd.err.oob604, %a.rd.err.null603, %a.rd.ok602
  %a.rd.tag637 = phi i1 [ true, %a.rd.ok602 ], [ false, %a.rd.err.null603 ], [ false, %a.rd.err.oob604 ]
  %a.rd.pay638 = phi i64 [ %a.rd.elem614, %a.rd.ok602 ], [ %err.p2i625, %a.rd.err.null603 ], [ %err.p2i636, %a.rd.err.oob604 ]
  %ram.tag639 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag637, 0
  %ram.pay640 = insertvalue { i1, i64 } %ram.tag639, i64 %a.rd.pay638, 1
  %ram.tag641 = extractvalue { i1, i64 } %ram.pay640, 0
  br i1 %ram.tag641, label %choice.then642, label %choice.else643

choice.then642:                                   ; preds = %a.rd.done605
  %ram.pay645 = extractvalue { i1, i64 } %ram.pay640, 1
  store i64 %ram.pay645, ptr %var._646, align 8
  br label %choice.exit644

choice.else643:                                   ; preds = %a.rd.done605
  %ram.pay647 = extractvalue { i1, i64 } %ram.pay640, 1
  %pay.ptr648 = inttoptr i64 %ram.pay647 to ptr
  store ptr %pay.ptr648, ptr %var._649, align 8
  br label %choice.exit644

choice.exit644:                                   ; preds = %choice.else643, %choice.then642
  %choice.res650 = phi i64 [ %ram.pay645, %choice.then642 ], [ 0, %choice.else643 ]
  store i64 %choice.res650, ptr %var.top_raw, align 8
  %var.load651 = load i64, ptr %var.raw, align 8
  %var.load652 = load i64, ptr %var.top_raw, align 8
  %cmptmp653 = icmp sgt i64 %var.load651, %var.load652
  br i1 %cmptmp653, label %choice.then654, label %choice.else655

choice.then654:                                   ; preds = %choice.exit644
  %var.load657 = load ptr, ptr %var.canon_stack, align 8
  %a.load658 = load ptr, ptr %var.canon_stack, align 8
  %a.null659 = icmp eq ptr %a.load658, null
  br i1 %a.null659, label %a.create660, label %a.after661

choice.else655:                                   ; preds = %choice.exit644
  store i64 0, ptr %loop.idx.566, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.566

choice.exit656:                                   ; preds = %choice.exit1340, %choice.exit831
  %var.load2014 = load ptr, ptr %var.canon_stack, align 8
  %a.load2015 = load ptr, ptr %var.canon_stack, align 8
  %a.null2016 = icmp eq ptr %a.load2015, null
  br i1 %a.null2016, label %a.create2017, label %a.after2018

a.create660:                                      ; preds = %choice.then654
  %arena.cur662 = call ptr @dva_arena_current()
  %a.create663 = call ptr @dva_arena_alloc(ptr %arena.cur662, i64 24)
  %arena.cur664 = call ptr @dva_arena_current()
  %a.buf665 = call ptr @dva_arena_alloc(ptr %arena.cur664, i64 128)
  %a.len.gep666 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create663, i32 0, i32 0
  store i64 0, ptr %a.len.gep666, align 8
  %a.data.gep667 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create663, i32 0, i32 1
  store ptr %a.buf665, ptr %a.data.gep667, align 8
  %a.cap.gep668 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create663, i32 0, i32 2
  store i64 16, ptr %a.cap.gep668, align 8
  store ptr %a.create663, ptr %var.canon_stack, align 8
  br label %a.after661

a.after661:                                       ; preds = %a.create660, %choice.then654
  %a.load2669 = load ptr, ptr %var.canon_stack, align 8
  %var.load670 = load i64, ptr %"var.top'", align 8
  %subtmp671 = sub i64 %var.load670, 1
  %a.rd.nonnull672 = icmp ne ptr %a.load2669, null
  br i1 %a.rd.nonnull672, label %a.rd.check673, label %a.rd.err.null675

a.rd.check673:                                    ; preds = %a.after661
  %a.rd.len678 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2669, i32 0, i32 0
  %a.rd.len679 = load i64, ptr %a.rd.len678, align 8
  %a.rd.ge0680 = icmp sge i64 %subtmp671, 0
  %a.rd.lt681 = icmp slt i64 %subtmp671, %a.rd.len679
  %a.rd.bounds682 = and i1 %a.rd.ge0680, %a.rd.lt681
  br i1 %a.rd.bounds682, label %a.rd.ok674, label %a.rd.err.oob676

a.rd.ok674:                                       ; preds = %a.rd.check673
  %a.rd.data683 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2669, i32 0, i32 1
  %a.rd.data684 = load ptr, ptr %a.rd.data683, align 8
  %a.rd.elem.gep685 = getelementptr i64, ptr %a.rd.data684, i64 %subtmp671
  %a.rd.elem686 = load i64, ptr %a.rd.elem.gep685, align 8
  br label %a.rd.done677

a.rd.err.null675:                                 ; preds = %a.after661
  %arena.cur687 = call ptr @dva_arena_current()
  %err.alloc688 = call ptr @dva_arena_alloc(ptr %arena.cur687, i64 56)
  %err.code.gep689 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc688, i32 0, i32 0
  store i64 4011, ptr %err.code.gep689, align 8
  %err.msg.gep690 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc688, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep690, align 8
  %err.file.gep691 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc688, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep691, align 8
  %err.line.gep692 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc688, i32 0, i32 3
  store i64 548, ptr %err.line.gep692, align 8
  %err.col.gep693 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc688, i32 0, i32 4
  store i64 63, ptr %err.col.gep693, align 8
  %err.ctx.gep694 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc688, i32 0, i32 5
  %err.ctx0.gep695 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep694, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep695, align 8
  %err.ctx1.gep696 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep694, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep696, align 8
  %err.p2i697 = ptrtoint ptr %err.alloc688 to i64
  br label %a.rd.done677

a.rd.err.oob676:                                  ; preds = %a.rd.check673
  %arena.cur698 = call ptr @dva_arena_current()
  %err.alloc699 = call ptr @dva_arena_alloc(ptr %arena.cur698, i64 56)
  %err.code.gep700 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc699, i32 0, i32 0
  store i64 4011, ptr %err.code.gep700, align 8
  %err.msg.gep701 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc699, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep701, align 8
  %err.file.gep702 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc699, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep702, align 8
  %err.line.gep703 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc699, i32 0, i32 3
  store i64 548, ptr %err.line.gep703, align 8
  %err.col.gep704 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc699, i32 0, i32 4
  store i64 63, ptr %err.col.gep704, align 8
  %err.ctx.gep705 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc699, i32 0, i32 5
  %err.ctx0.gep706 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep705, i32 0, i32 0
  store i64 %subtmp671, ptr %err.ctx0.gep706, align 8
  %err.ctx1.gep707 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep705, i32 0, i32 1
  store i64 %a.rd.len679, ptr %err.ctx1.gep707, align 8
  %err.p2i708 = ptrtoint ptr %err.alloc699 to i64
  br label %a.rd.done677

a.rd.done677:                                     ; preds = %a.rd.err.oob676, %a.rd.err.null675, %a.rd.ok674
  %a.rd.tag709 = phi i1 [ true, %a.rd.ok674 ], [ false, %a.rd.err.null675 ], [ false, %a.rd.err.oob676 ]
  %a.rd.pay710 = phi i64 [ %a.rd.elem686, %a.rd.ok674 ], [ %err.p2i697, %a.rd.err.null675 ], [ %err.p2i708, %a.rd.err.oob676 ]
  %ram.tag711 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag709, 0
  %ram.pay712 = insertvalue { i1, i64 } %ram.tag711, i64 %a.rd.pay710, 1
  %ram.tag713 = extractvalue { i1, i64 } %ram.pay712, 0
  br i1 %ram.tag713, label %choice.then714, label %choice.else715

choice.then714:                                   ; preds = %a.rd.done677
  %ram.pay717 = extractvalue { i1, i64 } %ram.pay712, 1
  store i64 %ram.pay717, ptr %var._718, align 8
  br label %choice.exit716

choice.else715:                                   ; preds = %a.rd.done677
  %ram.pay719 = extractvalue { i1, i64 } %ram.pay712, 1
  %pay.ptr720 = inttoptr i64 %ram.pay719 to ptr
  store ptr %pay.ptr720, ptr %var._721, align 8
  br label %choice.exit716

choice.exit716:                                   ; preds = %choice.else715, %choice.then714
  %choice.res722 = phi i64 [ %ram.pay717, %choice.then714 ], [ 0, %choice.else715 ]
  store i64 %choice.res722, ptr %var.p_canon, align 8
  %var.load723 = load ptr, ptr %var.body_stack, align 8
  %a.load724 = load ptr, ptr %var.body_stack, align 8
  %a.null725 = icmp eq ptr %a.load724, null
  br i1 %a.null725, label %a.create726, label %a.after727

a.create726:                                      ; preds = %choice.exit716
  %arena.cur728 = call ptr @dva_arena_current()
  %a.create729 = call ptr @dva_arena_alloc(ptr %arena.cur728, i64 24)
  %arena.cur730 = call ptr @dva_arena_current()
  %a.buf731 = call ptr @dva_arena_alloc(ptr %arena.cur730, i64 128)
  %a.len.gep732 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create729, i32 0, i32 0
  store i64 0, ptr %a.len.gep732, align 8
  %a.data.gep733 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create729, i32 0, i32 1
  store ptr %a.buf731, ptr %a.data.gep733, align 8
  %a.cap.gep734 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create729, i32 0, i32 2
  store i64 16, ptr %a.cap.gep734, align 8
  store ptr %a.create729, ptr %var.body_stack, align 8
  br label %a.after727

a.after727:                                       ; preds = %a.create726, %choice.exit716
  %a.load2735 = load ptr, ptr %var.body_stack, align 8
  %var.load736 = load i64, ptr %"var.top'", align 8
  %subtmp737 = sub i64 %var.load736, 1
  %a.rd.nonnull738 = icmp ne ptr %a.load2735, null
  br i1 %a.rd.nonnull738, label %a.rd.check739, label %a.rd.err.null741

a.rd.check739:                                    ; preds = %a.after727
  %a.rd.len744 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2735, i32 0, i32 0
  %a.rd.len745 = load i64, ptr %a.rd.len744, align 8
  %a.rd.ge0746 = icmp sge i64 %subtmp737, 0
  %a.rd.lt747 = icmp slt i64 %subtmp737, %a.rd.len745
  %a.rd.bounds748 = and i1 %a.rd.ge0746, %a.rd.lt747
  br i1 %a.rd.bounds748, label %a.rd.ok740, label %a.rd.err.oob742

a.rd.ok740:                                       ; preds = %a.rd.check739
  %a.rd.data749 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2735, i32 0, i32 1
  %a.rd.data750 = load ptr, ptr %a.rd.data749, align 8
  %a.rd.elem.gep751 = getelementptr i64, ptr %a.rd.data750, i64 %subtmp737
  %a.rd.elem752 = load i64, ptr %a.rd.elem.gep751, align 8
  br label %a.rd.done743

a.rd.err.null741:                                 ; preds = %a.after727
  %arena.cur753 = call ptr @dva_arena_current()
  %err.alloc754 = call ptr @dva_arena_alloc(ptr %arena.cur753, i64 56)
  %err.code.gep755 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc754, i32 0, i32 0
  store i64 4011, ptr %err.code.gep755, align 8
  %err.msg.gep756 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc754, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep756, align 8
  %err.file.gep757 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc754, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep757, align 8
  %err.line.gep758 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc754, i32 0, i32 3
  store i64 549, ptr %err.line.gep758, align 8
  %err.col.gep759 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc754, i32 0, i32 4
  store i64 61, ptr %err.col.gep759, align 8
  %err.ctx.gep760 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc754, i32 0, i32 5
  %err.ctx0.gep761 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep760, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep761, align 8
  %err.ctx1.gep762 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep760, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep762, align 8
  %err.p2i763 = ptrtoint ptr %err.alloc754 to i64
  br label %a.rd.done743

a.rd.err.oob742:                                  ; preds = %a.rd.check739
  %arena.cur764 = call ptr @dva_arena_current()
  %err.alloc765 = call ptr @dva_arena_alloc(ptr %arena.cur764, i64 56)
  %err.code.gep766 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc765, i32 0, i32 0
  store i64 4011, ptr %err.code.gep766, align 8
  %err.msg.gep767 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc765, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep767, align 8
  %err.file.gep768 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc765, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep768, align 8
  %err.line.gep769 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc765, i32 0, i32 3
  store i64 549, ptr %err.line.gep769, align 8
  %err.col.gep770 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc765, i32 0, i32 4
  store i64 61, ptr %err.col.gep770, align 8
  %err.ctx.gep771 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc765, i32 0, i32 5
  %err.ctx0.gep772 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep771, i32 0, i32 0
  store i64 %subtmp737, ptr %err.ctx0.gep772, align 8
  %err.ctx1.gep773 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep771, i32 0, i32 1
  store i64 %a.rd.len745, ptr %err.ctx1.gep773, align 8
  %err.p2i774 = ptrtoint ptr %err.alloc765 to i64
  br label %a.rd.done743

a.rd.done743:                                     ; preds = %a.rd.err.oob742, %a.rd.err.null741, %a.rd.ok740
  %a.rd.tag775 = phi i1 [ true, %a.rd.ok740 ], [ false, %a.rd.err.null741 ], [ false, %a.rd.err.oob742 ]
  %a.rd.pay776 = phi i64 [ %a.rd.elem752, %a.rd.ok740 ], [ %err.p2i763, %a.rd.err.null741 ], [ %err.p2i774, %a.rd.err.oob742 ]
  %ram.tag777 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag775, 0
  %ram.pay778 = insertvalue { i1, i64 } %ram.tag777, i64 %a.rd.pay776, 1
  %ram.tag779 = extractvalue { i1, i64 } %ram.pay778, 0
  br i1 %ram.tag779, label %choice.then780, label %choice.else781

choice.then780:                                   ; preds = %a.rd.done743
  %ram.pay783 = extractvalue { i1, i64 } %ram.pay778, 1
  %pay.ptr784 = inttoptr i64 %ram.pay783 to ptr
  store ptr %pay.ptr784, ptr %var._785, align 8
  br label %choice.exit782

choice.else781:                                   ; preds = %a.rd.done743
  %ram.pay786 = extractvalue { i1, i64 } %ram.pay778, 1
  %pay.ptr787 = inttoptr i64 %ram.pay786 to ptr
  store ptr %pay.ptr787, ptr %var._788, align 8
  br label %choice.exit782

choice.exit782:                                   ; preds = %choice.else781, %choice.then780
  %choice.res789 = phi ptr [ %pay.ptr784, %choice.then780 ], [ @str.3.struct, %choice.else781 ]
  store ptr %choice.res789, ptr %var.p_code790, align 8
  %var.load791 = load ptr, ptr %var.lines, align 8
  %a.load792 = load ptr, ptr %var.lines, align 8
  %a.null793 = icmp eq ptr %a.load792, null
  br i1 %a.null793, label %a.create794, label %a.after795

a.create794:                                      ; preds = %choice.exit782
  %arena.cur796 = call ptr @dva_arena_current()
  %a.create797 = call ptr @dva_arena_alloc(ptr %arena.cur796, i64 24)
  %arena.cur798 = call ptr @dva_arena_current()
  %a.buf799 = call ptr @dva_arena_alloc(ptr %arena.cur798, i64 128)
  %a.len.gep800 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create797, i32 0, i32 0
  store i64 0, ptr %a.len.gep800, align 8
  %a.data.gep801 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create797, i32 0, i32 1
  store ptr %a.buf799, ptr %a.data.gep801, align 8
  %a.cap.gep802 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create797, i32 0, i32 2
  store i64 16, ptr %a.cap.gep802, align 8
  store ptr %a.create797, ptr %var.lines, align 8
  br label %a.after795

a.after795:                                       ; preds = %a.create794, %choice.exit782
  %a.load2803 = load ptr, ptr %var.lines, align 8
  %var.load804 = load i64, ptr %var.idx, align 8
  %var.load805 = load ptr, ptr %var.p_code790, align 8
  %var.load806 = load ptr, ptr %var.cur_code, align 8
  %var.load807 = load i64, ptr %var.top_raw, align 8
  %var.load808 = load i64, ptr %var.raw, align 8
  %call.res809 = call i64 @"formatter::compute_child_delta"(ptr %a.load2803, i64 %var.load804, ptr %var.load805, ptr %var.load806, i64 %var.load807, i64 %var.load808)
  store i64 %call.res809, ptr %var.delta, align 8
  %var.load810 = load i64, ptr %var.p_canon, align 8
  %var.load811 = load i64, ptr %var.delta, align 8
  %addtmp812 = add i64 %var.load810, %var.load811
  store i64 %addtmp812, ptr %var.new_canon, align 8
  %var.load813 = load i64, ptr %"var.top'", align 8
  %var.load814 = load ptr, ptr %var.raw_stack, align 8
  %a.load815 = load ptr, ptr %var.raw_stack, align 8
  %a.null816 = icmp eq ptr %a.load815, null
  br i1 %a.null816, label %a.create817, label %a.after818

a.create817:                                      ; preds = %a.after795
  %arena.cur819 = call ptr @dva_arena_current()
  %a.create820 = call ptr @dva_arena_alloc(ptr %arena.cur819, i64 24)
  %arena.cur821 = call ptr @dva_arena_current()
  %a.buf822 = call ptr @dva_arena_alloc(ptr %arena.cur821, i64 128)
  %a.len.gep823 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create820, i32 0, i32 0
  store i64 0, ptr %a.len.gep823, align 8
  %a.data.gep824 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create820, i32 0, i32 1
  store ptr %a.buf822, ptr %a.data.gep824, align 8
  %a.cap.gep825 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create820, i32 0, i32 2
  store i64 16, ptr %a.cap.gep825, align 8
  store ptr %a.create820, ptr %var.raw_stack, align 8
  br label %a.after818

a.after818:                                       ; preds = %a.create817, %a.after795
  %a.load2826 = load ptr, ptr %var.raw_stack, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2826, i32 0, i32 0
  %a.len.query827 = load i64, ptr %a.len.query, align 8
  %cmptmp828 = icmp eq i64 %var.load813, %a.len.query827
  br i1 %cmptmp828, label %choice.then829, label %choice.else830

choice.then829:                                   ; preds = %a.after818
  %var.load832 = load i64, ptr %var.raw, align 8
  %a.load833 = load ptr, ptr %var.raw_stack, align 8
  %a.null834 = icmp eq ptr %a.load833, null
  br i1 %a.null834, label %a.create835, label %a.after836

choice.else830:                                   ; preds = %a.after818
  %var.load916 = load ptr, ptr %var.raw_stack, align 8
  %a.load917 = load ptr, ptr %var.raw_stack, align 8
  %a.null918 = icmp eq ptr %a.load917, null
  br i1 %a.null918, label %a.create919, label %a.after920

choice.exit831:                                   ; preds = %choice.exit1140, %a.store903
  %var.load1188 = load i64, ptr %"var.top'", align 8
  %addtmp1189 = add i64 %var.load1188, 1
  store i64 %addtmp1189, ptr %"var.top'", align 8
  br label %choice.exit656

a.create835:                                      ; preds = %choice.then829
  %arena.cur837 = call ptr @dva_arena_current()
  %a.create838 = call ptr @dva_arena_alloc(ptr %arena.cur837, i64 24)
  %arena.cur839 = call ptr @dva_arena_current()
  %a.buf840 = call ptr @dva_arena_alloc(ptr %arena.cur839, i64 128)
  %a.len.gep841 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create838, i32 0, i32 0
  store i64 0, ptr %a.len.gep841, align 8
  %a.data.gep842 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create838, i32 0, i32 1
  store ptr %a.buf840, ptr %a.data.gep842, align 8
  %a.cap.gep843 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create838, i32 0, i32 2
  store i64 16, ptr %a.cap.gep843, align 8
  store ptr %a.create838, ptr %var.raw_stack, align 8
  br label %a.after836

a.after836:                                       ; preds = %a.create835, %choice.then829
  %a.load2844 = load ptr, ptr %var.raw_stack, align 8
  br label %a.check845

a.check845:                                       ; preds = %a.after836
  %a.len848 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2844, i32 0, i32 0
  %a.len849 = load i64, ptr %a.len848, align 8
  %a.cap850 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2844, i32 0, i32 2
  %a.cap851 = load i64, ptr %a.cap850, align 8
  %a.needs.grow852 = icmp eq i64 %a.len849, %a.cap851
  br i1 %a.needs.grow852, label %a.grow846, label %a.store847

a.grow846:                                        ; preds = %a.check845
  call void @dva_array_grow(ptr %a.load2844)
  br label %a.store847

a.store847:                                       ; preds = %a.grow846, %a.check845
  %a.cur.data853 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2844, i32 0, i32 1
  %a.cur.data854 = load ptr, ptr %a.cur.data853, align 8
  %a.cur.len855 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2844, i32 0, i32 0
  %a.cur.len856 = load i64, ptr %a.cur.len855, align 8
  %a.elem.gep857 = getelementptr i64, ptr %a.cur.data854, i64 %a.cur.len856
  store i64 %var.load832, ptr %a.elem.gep857, align 8
  %a.next.len858 = add i64 %a.cur.len856, 1
  %b.len.gep859 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2844, i32 0, i32 0
  store i64 %a.next.len858, ptr %b.len.gep859, align 8
  %var.load860 = load i64, ptr %var.new_canon, align 8
  %a.load861 = load ptr, ptr %var.canon_stack, align 8
  %a.null862 = icmp eq ptr %a.load861, null
  br i1 %a.null862, label %a.create863, label %a.after864

a.create863:                                      ; preds = %a.store847
  %arena.cur865 = call ptr @dva_arena_current()
  %a.create866 = call ptr @dva_arena_alloc(ptr %arena.cur865, i64 24)
  %arena.cur867 = call ptr @dva_arena_current()
  %a.buf868 = call ptr @dva_arena_alloc(ptr %arena.cur867, i64 128)
  %a.len.gep869 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create866, i32 0, i32 0
  store i64 0, ptr %a.len.gep869, align 8
  %a.data.gep870 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create866, i32 0, i32 1
  store ptr %a.buf868, ptr %a.data.gep870, align 8
  %a.cap.gep871 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create866, i32 0, i32 2
  store i64 16, ptr %a.cap.gep871, align 8
  store ptr %a.create866, ptr %var.canon_stack, align 8
  br label %a.after864

a.after864:                                       ; preds = %a.create863, %a.store847
  %a.load2872 = load ptr, ptr %var.canon_stack, align 8
  br label %a.check873

a.check873:                                       ; preds = %a.after864
  %a.len876 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2872, i32 0, i32 0
  %a.len877 = load i64, ptr %a.len876, align 8
  %a.cap878 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2872, i32 0, i32 2
  %a.cap879 = load i64, ptr %a.cap878, align 8
  %a.needs.grow880 = icmp eq i64 %a.len877, %a.cap879
  br i1 %a.needs.grow880, label %a.grow874, label %a.store875

a.grow874:                                        ; preds = %a.check873
  call void @dva_array_grow(ptr %a.load2872)
  br label %a.store875

a.store875:                                       ; preds = %a.grow874, %a.check873
  %a.cur.data881 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2872, i32 0, i32 1
  %a.cur.data882 = load ptr, ptr %a.cur.data881, align 8
  %a.cur.len883 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2872, i32 0, i32 0
  %a.cur.len884 = load i64, ptr %a.cur.len883, align 8
  %a.elem.gep885 = getelementptr i64, ptr %a.cur.data882, i64 %a.cur.len884
  store i64 %var.load860, ptr %a.elem.gep885, align 8
  %a.next.len886 = add i64 %a.cur.len884, 1
  %b.len.gep887 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2872, i32 0, i32 0
  store i64 %a.next.len886, ptr %b.len.gep887, align 8
  %var.load888 = load ptr, ptr %var.cur_code, align 8
  %a.load889 = load ptr, ptr %var.body_stack, align 8
  %a.null890 = icmp eq ptr %a.load889, null
  br i1 %a.null890, label %a.create891, label %a.after892

a.create891:                                      ; preds = %a.store875
  %arena.cur893 = call ptr @dva_arena_current()
  %a.create894 = call ptr @dva_arena_alloc(ptr %arena.cur893, i64 24)
  %arena.cur895 = call ptr @dva_arena_current()
  %a.buf896 = call ptr @dva_arena_alloc(ptr %arena.cur895, i64 128)
  %a.len.gep897 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create894, i32 0, i32 0
  store i64 0, ptr %a.len.gep897, align 8
  %a.data.gep898 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create894, i32 0, i32 1
  store ptr %a.buf896, ptr %a.data.gep898, align 8
  %a.cap.gep899 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create894, i32 0, i32 2
  store i64 16, ptr %a.cap.gep899, align 8
  store ptr %a.create894, ptr %var.body_stack, align 8
  br label %a.after892

a.after892:                                       ; preds = %a.create891, %a.store875
  %a.load2900 = load ptr, ptr %var.body_stack, align 8
  br label %a.check901

a.check901:                                       ; preds = %a.after892
  %a.len904 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2900, i32 0, i32 0
  %a.len905 = load i64, ptr %a.len904, align 8
  %a.cap906 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2900, i32 0, i32 2
  %a.cap907 = load i64, ptr %a.cap906, align 8
  %a.needs.grow908 = icmp eq i64 %a.len905, %a.cap907
  br i1 %a.needs.grow908, label %a.grow902, label %a.store903

a.grow902:                                        ; preds = %a.check901
  call void @dva_array_grow(ptr %a.load2900)
  br label %a.store903

a.store903:                                       ; preds = %a.grow902, %a.check901
  %a.cur.data909 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2900, i32 0, i32 1
  %a.cur.data910 = load ptr, ptr %a.cur.data909, align 8
  %a.cur.len911 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2900, i32 0, i32 0
  %a.cur.len912 = load i64, ptr %a.cur.len911, align 8
  %a.elem.gep913 = getelementptr i64, ptr %a.cur.data910, i64 %a.cur.len912
  %slot.p2i = ptrtoint ptr %var.load888 to i64
  store i64 %slot.p2i, ptr %a.elem.gep913, align 8
  %a.next.len914 = add i64 %a.cur.len912, 1
  %b.len.gep915 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2900, i32 0, i32 0
  store i64 %a.next.len914, ptr %b.len.gep915, align 8
  br label %choice.exit831

a.create919:                                      ; preds = %choice.else830
  %arena.cur921 = call ptr @dva_arena_current()
  %a.create922 = call ptr @dva_arena_alloc(ptr %arena.cur921, i64 24)
  %arena.cur923 = call ptr @dva_arena_current()
  %a.buf924 = call ptr @dva_arena_alloc(ptr %arena.cur923, i64 128)
  %a.len.gep925 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create922, i32 0, i32 0
  store i64 0, ptr %a.len.gep925, align 8
  %a.data.gep926 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create922, i32 0, i32 1
  store ptr %a.buf924, ptr %a.data.gep926, align 8
  %a.cap.gep927 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create922, i32 0, i32 2
  store i64 16, ptr %a.cap.gep927, align 8
  store ptr %a.create922, ptr %var.raw_stack, align 8
  br label %a.after920

a.after920:                                       ; preds = %a.create919, %choice.else830
  %a.load2928 = load ptr, ptr %var.raw_stack, align 8
  %var.load929 = load i64, ptr %"var.top'", align 8
  %var.load930 = load i64, ptr %var.raw, align 8
  %a.wr.nonnull = icmp ne ptr %a.load2928, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after920
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2928, i32 0, i32 0
  %a.wr.len931 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load929, 0
  %a.wr.lt = icmp slt i64 %var.load929, %a.wr.len931
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2928, i32 0, i32 1
  %a.wr.data932 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep933 = getelementptr i64, ptr %a.wr.data932, i64 %var.load929
  store i64 %var.load930, ptr %a.elem.gep933, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after920
  %arena.cur934 = call ptr @dva_arena_current()
  %err.alloc935 = call ptr @dva_arena_alloc(ptr %arena.cur934, i64 56)
  %err.code.gep936 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc935, i32 0, i32 0
  store i64 4011, ptr %err.code.gep936, align 8
  %err.msg.gep937 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc935, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep937, align 8
  %err.file.gep938 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc935, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep938, align 8
  %err.line.gep939 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc935, i32 0, i32 3
  store i64 0, ptr %err.line.gep939, align 8
  %err.col.gep940 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc935, i32 0, i32 4
  store i64 0, ptr %err.col.gep940, align 8
  %err.ctx.gep941 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc935, i32 0, i32 5
  %err.ctx0.gep942 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep941, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep942, align 8
  %err.ctx1.gep943 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep941, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep943, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur944 = call ptr @dva_arena_current()
  %err.alloc945 = call ptr @dva_arena_alloc(ptr %arena.cur944, i64 56)
  %err.code.gep946 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc945, i32 0, i32 0
  store i64 4011, ptr %err.code.gep946, align 8
  %err.msg.gep947 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc945, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep947, align 8
  %err.file.gep948 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc945, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep948, align 8
  %err.line.gep949 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc945, i32 0, i32 3
  store i64 0, ptr %err.line.gep949, align 8
  %err.col.gep950 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc945, i32 0, i32 4
  store i64 0, ptr %err.col.gep950, align 8
  %err.ctx.gep951 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc945, i32 0, i32 5
  %err.ctx0.gep952 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep951, i32 0, i32 0
  store i64 %var.load929, ptr %err.ctx0.gep952, align 8
  %err.ctx1.gep953 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep951, i32 0, i32 1
  store i64 %a.wr.len931, ptr %err.ctx1.gep953, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc935, %a.wr.err.null ], [ %err.alloc945, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then954, label %choice.else955

choice.then954:                                   ; preds = %a.wr.done
  br label %choice.exit956

choice.else955:                                   ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._957, align 8
  store ptr %a.wr.niche, ptr %var._958, align 8
  store ptr %a.wr.niche, ptr %var._959, align 8
  %err.code.gep960 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep960, align 8
  %err.msg.gep961 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep961, align 8
  %err.file.gep962 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep962, align 8
  %err.line.gep963 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep963, align 8
  %err.col.gep964 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep964, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len965 = load i64, ptr %err.msg.len, align 8
  %err.msg.len966 = and i64 %err.msg.len965, 281474976710655
  %str.tag967 = lshr i64 %err.msg.len965, 48
  %str.immortal968 = icmp eq i64 %str.tag967, 0
  br i1 %str.immortal968, label %str_ok970, label %str_gen_check969

choice.exit956:                                   ; preds = %err.abort, %choice.then954
  %var.load985 = load ptr, ptr %var.canon_stack, align 8
  %a.load986 = load ptr, ptr %var.canon_stack, align 8
  %a.null987 = icmp eq ptr %a.load986, null
  br i1 %a.null987, label %a.create988, label %a.after989

str_gen_check969:                                 ; preds = %choice.else955
  %arena.cur972 = call ptr @dva_arena_current()
  %tag.valid973 = call i1 @dva_arena_validate_tag(ptr %arena.cur972, i64 %str.tag967)
  br i1 %tag.valid973, label %str_ok970, label %str_stale971

str_ok970:                                        ; preds = %str_stale971, %str_gen_check969, %choice.else955
  %err.msg.len32 = trunc i64 %err.msg.len966 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data974 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len975 = load i64, ptr %err.file.len, align 8
  %err.file.len976 = and i64 %err.file.len975, 281474976710655
  %str.tag977 = lshr i64 %err.file.len975, 48
  %str.immortal978 = icmp eq i64 %str.tag977, 0
  br i1 %str.immortal978, label %str_ok980, label %str_gen_check979

str_stale971:                                     ; preds = %str_gen_check969
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok970

str_gen_check979:                                 ; preds = %str_ok970
  %arena.cur982 = call ptr @dva_arena_current()
  %tag.valid983 = call i1 @dva_arena_validate_tag(ptr %arena.cur982, i64 %str.tag977)
  br i1 %tag.valid983, label %str_ok980, label %str_stale981

str_ok980:                                        ; preds = %str_stale981, %str_gen_check979, %str_ok970
  %err.file.len32 = trunc i64 %err.file.len976 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data984 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale981:                                     ; preds = %str_gen_check979
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok980

err.thread:                                       ; preds = %str_ok980
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok980
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data974, i32 %err.file.len32, ptr %err.file.data984, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit956

a.create988:                                      ; preds = %choice.exit956
  %arena.cur990 = call ptr @dva_arena_current()
  %a.create991 = call ptr @dva_arena_alloc(ptr %arena.cur990, i64 24)
  %arena.cur992 = call ptr @dva_arena_current()
  %a.buf993 = call ptr @dva_arena_alloc(ptr %arena.cur992, i64 128)
  %a.len.gep994 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create991, i32 0, i32 0
  store i64 0, ptr %a.len.gep994, align 8
  %a.data.gep995 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create991, i32 0, i32 1
  store ptr %a.buf993, ptr %a.data.gep995, align 8
  %a.cap.gep996 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create991, i32 0, i32 2
  store i64 16, ptr %a.cap.gep996, align 8
  store ptr %a.create991, ptr %var.canon_stack, align 8
  br label %a.after989

a.after989:                                       ; preds = %a.create988, %choice.exit956
  %a.load2997 = load ptr, ptr %var.canon_stack, align 8
  %var.load998 = load i64, ptr %"var.top'", align 8
  %var.load999 = load i64, ptr %var.new_canon, align 8
  %a.wr.nonnull1000 = icmp ne ptr %a.load2997, null
  br i1 %a.wr.nonnull1000, label %a.wr.check1001, label %a.wr.err.null1003

a.wr.check1001:                                   ; preds = %a.after989
  %a.wr.len1006 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2997, i32 0, i32 0
  %a.wr.len1007 = load i64, ptr %a.wr.len1006, align 8
  %a.wr.ge01008 = icmp sge i64 %var.load998, 0
  %a.wr.lt1009 = icmp slt i64 %var.load998, %a.wr.len1007
  %a.wr.bounds1010 = and i1 %a.wr.ge01008, %a.wr.lt1009
  br i1 %a.wr.bounds1010, label %a.wr.ok1002, label %a.wr.err.oob1004

a.wr.ok1002:                                      ; preds = %a.wr.check1001
  %a.wr.data1011 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2997, i32 0, i32 1
  %a.wr.data1012 = load ptr, ptr %a.wr.data1011, align 8
  %a.elem.gep1013 = getelementptr i64, ptr %a.wr.data1012, i64 %var.load998
  store i64 %var.load999, ptr %a.elem.gep1013, align 8
  br label %a.wr.done1005

a.wr.err.null1003:                                ; preds = %a.after989
  %arena.cur1014 = call ptr @dva_arena_current()
  %err.alloc1015 = call ptr @dva_arena_alloc(ptr %arena.cur1014, i64 56)
  %err.code.gep1016 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1015, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1016, align 8
  %err.msg.gep1017 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1015, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep1017, align 8
  %err.file.gep1018 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1015, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep1018, align 8
  %err.line.gep1019 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1015, i32 0, i32 3
  store i64 0, ptr %err.line.gep1019, align 8
  %err.col.gep1020 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1015, i32 0, i32 4
  store i64 0, ptr %err.col.gep1020, align 8
  %err.ctx.gep1021 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1015, i32 0, i32 5
  %err.ctx0.gep1022 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1021, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1022, align 8
  %err.ctx1.gep1023 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1021, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1023, align 8
  br label %a.wr.done1005

a.wr.err.oob1004:                                 ; preds = %a.wr.check1001
  %arena.cur1024 = call ptr @dva_arena_current()
  %err.alloc1025 = call ptr @dva_arena_alloc(ptr %arena.cur1024, i64 56)
  %err.code.gep1026 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1025, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1026, align 8
  %err.msg.gep1027 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1025, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep1027, align 8
  %err.file.gep1028 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1025, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep1028, align 8
  %err.line.gep1029 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1025, i32 0, i32 3
  store i64 0, ptr %err.line.gep1029, align 8
  %err.col.gep1030 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1025, i32 0, i32 4
  store i64 0, ptr %err.col.gep1030, align 8
  %err.ctx.gep1031 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1025, i32 0, i32 5
  %err.ctx0.gep1032 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1031, i32 0, i32 0
  store i64 %var.load998, ptr %err.ctx0.gep1032, align 8
  %err.ctx1.gep1033 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1031, i32 0, i32 1
  store i64 %a.wr.len1007, ptr %err.ctx1.gep1033, align 8
  br label %a.wr.done1005

a.wr.done1005:                                    ; preds = %a.wr.err.oob1004, %a.wr.err.null1003, %a.wr.ok1002
  %a.wr.niche1034 = phi ptr [ null, %a.wr.ok1002 ], [ %err.alloc1015, %a.wr.err.null1003 ], [ %err.alloc1025, %a.wr.err.oob1004 ]
  %niche.eq.null1035 = icmp eq ptr %a.wr.niche1034, null
  br i1 %niche.eq.null1035, label %choice.then1036, label %choice.else1037

choice.then1036:                                  ; preds = %a.wr.done1005
  br label %choice.exit1038

choice.else1037:                                  ; preds = %a.wr.done1005
  store ptr %a.wr.niche1034, ptr %var._1039, align 8
  store ptr %a.wr.niche1034, ptr %var._1040, align 8
  store ptr %a.wr.niche1034, ptr %var._1041, align 8
  %err.code.gep1042 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1034, i32 0, i32 0
  %err.code1043 = load i64, ptr %err.code.gep1042, align 8
  %err.msg.gep1044 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1034, i32 0, i32 1
  %err.msg.struct1045 = load ptr, ptr %err.msg.gep1044, align 8
  %err.file.gep1046 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1034, i32 0, i32 2
  %err.file.struct1047 = load ptr, ptr %err.file.gep1046, align 8
  %err.line.gep1048 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1034, i32 0, i32 3
  %err.line1049 = load i64, ptr %err.line.gep1048, align 8
  %err.col.gep1050 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1034, i32 0, i32 4
  %err.col1051 = load i64, ptr %err.col.gep1050, align 8
  %err.msg.len1052 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1045, i32 0, i32 0
  %err.msg.len1053 = load i64, ptr %err.msg.len1052, align 8
  %err.msg.len1054 = and i64 %err.msg.len1053, 281474976710655
  %str.tag1055 = lshr i64 %err.msg.len1053, 48
  %str.immortal1056 = icmp eq i64 %str.tag1055, 0
  br i1 %str.immortal1056, label %str_ok1058, label %str_gen_check1057

choice.exit1038:                                  ; preds = %err.abort1085, %choice.then1036
  %var.load1086 = load ptr, ptr %var.body_stack, align 8
  %a.load1087 = load ptr, ptr %var.body_stack, align 8
  %a.null1088 = icmp eq ptr %a.load1087, null
  br i1 %a.null1088, label %a.create1089, label %a.after1090

str_gen_check1057:                                ; preds = %choice.else1037
  %arena.cur1060 = call ptr @dva_arena_current()
  %tag.valid1061 = call i1 @dva_arena_validate_tag(ptr %arena.cur1060, i64 %str.tag1055)
  br i1 %tag.valid1061, label %str_ok1058, label %str_stale1059

str_ok1058:                                       ; preds = %str_stale1059, %str_gen_check1057, %choice.else1037
  %err.msg.len321062 = trunc i64 %err.msg.len1054 to i32
  %err.msg.data1063 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1045, i32 0, i32 1
  %err.msg.data1064 = load ptr, ptr %err.msg.data1063, align 8
  %err.file.len1065 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1047, i32 0, i32 0
  %err.file.len1066 = load i64, ptr %err.file.len1065, align 8
  %err.file.len1067 = and i64 %err.file.len1066, 281474976710655
  %str.tag1068 = lshr i64 %err.file.len1066, 48
  %str.immortal1069 = icmp eq i64 %str.tag1068, 0
  br i1 %str.immortal1069, label %str_ok1071, label %str_gen_check1070

str_stale1059:                                    ; preds = %str_gen_check1057
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1058

str_gen_check1070:                                ; preds = %str_ok1058
  %arena.cur1073 = call ptr @dva_arena_current()
  %tag.valid1074 = call i1 @dva_arena_validate_tag(ptr %arena.cur1073, i64 %str.tag1068)
  br i1 %tag.valid1074, label %str_ok1071, label %str_stale1072

str_ok1071:                                       ; preds = %str_stale1072, %str_gen_check1070, %str_ok1058
  %err.file.len321075 = trunc i64 %err.file.len1067 to i32
  %err.file.data1076 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1047, i32 0, i32 1
  %err.file.data1077 = load ptr, ptr %err.file.data1076, align 8
  %err.thread.rec1078 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1079 = icmp ne ptr %err.thread.rec1078, null
  br i1 %err.is.thread1079, label %err.thread1080, label %err.normal1081

str_stale1072:                                    ; preds = %str_gen_check1070
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1071

err.thread1080:                                   ; preds = %str_ok1071
  %err.haserr.gep1082 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1078, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1082, align 8
  %err.err.gep1083 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1078, i32 0, i32 7
  store ptr %a.wr.niche1034, ptr %err.err.gep1083, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1081:                                   ; preds = %str_ok1071
  %err.panic.printf1084 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1043, i32 %err.msg.len321062, ptr %err.msg.data1064, i32 %err.file.len321075, ptr %err.file.data1077, i64 %err.line1049, i64 %err.col1051)
  call void @exit(i32 1)
  unreachable

err.abort1085:                                    ; No predecessors!
  br label %choice.exit1038

a.create1089:                                     ; preds = %choice.exit1038
  %arena.cur1091 = call ptr @dva_arena_current()
  %a.create1092 = call ptr @dva_arena_alloc(ptr %arena.cur1091, i64 24)
  %arena.cur1093 = call ptr @dva_arena_current()
  %a.buf1094 = call ptr @dva_arena_alloc(ptr %arena.cur1093, i64 128)
  %a.len.gep1095 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1092, i32 0, i32 0
  store i64 0, ptr %a.len.gep1095, align 8
  %a.data.gep1096 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1092, i32 0, i32 1
  store ptr %a.buf1094, ptr %a.data.gep1096, align 8
  %a.cap.gep1097 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1092, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1097, align 8
  store ptr %a.create1092, ptr %var.body_stack, align 8
  br label %a.after1090

a.after1090:                                      ; preds = %a.create1089, %choice.exit1038
  %a.load21098 = load ptr, ptr %var.body_stack, align 8
  %var.load1099 = load i64, ptr %"var.top'", align 8
  %var.load1100 = load ptr, ptr %var.cur_code, align 8
  %slot.p2i1101 = ptrtoint ptr %var.load1100 to i64
  %a.wr.nonnull1102 = icmp ne ptr %a.load21098, null
  br i1 %a.wr.nonnull1102, label %a.wr.check1103, label %a.wr.err.null1105

a.wr.check1103:                                   ; preds = %a.after1090
  %a.wr.len1108 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21098, i32 0, i32 0
  %a.wr.len1109 = load i64, ptr %a.wr.len1108, align 8
  %a.wr.ge01110 = icmp sge i64 %var.load1099, 0
  %a.wr.lt1111 = icmp slt i64 %var.load1099, %a.wr.len1109
  %a.wr.bounds1112 = and i1 %a.wr.ge01110, %a.wr.lt1111
  br i1 %a.wr.bounds1112, label %a.wr.ok1104, label %a.wr.err.oob1106

a.wr.ok1104:                                      ; preds = %a.wr.check1103
  %a.wr.data1113 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21098, i32 0, i32 1
  %a.wr.data1114 = load ptr, ptr %a.wr.data1113, align 8
  %a.elem.gep1115 = getelementptr i64, ptr %a.wr.data1114, i64 %var.load1099
  store i64 %slot.p2i1101, ptr %a.elem.gep1115, align 8
  br label %a.wr.done1107

a.wr.err.null1105:                                ; preds = %a.after1090
  %arena.cur1116 = call ptr @dva_arena_current()
  %err.alloc1117 = call ptr @dva_arena_alloc(ptr %arena.cur1116, i64 56)
  %err.code.gep1118 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1117, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1118, align 8
  %err.msg.gep1119 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1117, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep1119, align 8
  %err.file.gep1120 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1117, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep1120, align 8
  %err.line.gep1121 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1117, i32 0, i32 3
  store i64 0, ptr %err.line.gep1121, align 8
  %err.col.gep1122 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1117, i32 0, i32 4
  store i64 0, ptr %err.col.gep1122, align 8
  %err.ctx.gep1123 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1117, i32 0, i32 5
  %err.ctx0.gep1124 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1123, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1124, align 8
  %err.ctx1.gep1125 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1123, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1125, align 8
  br label %a.wr.done1107

a.wr.err.oob1106:                                 ; preds = %a.wr.check1103
  %arena.cur1126 = call ptr @dva_arena_current()
  %err.alloc1127 = call ptr @dva_arena_alloc(ptr %arena.cur1126, i64 56)
  %err.code.gep1128 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1127, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1128, align 8
  %err.msg.gep1129 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1127, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep1129, align 8
  %err.file.gep1130 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1127, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep1130, align 8
  %err.line.gep1131 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1127, i32 0, i32 3
  store i64 0, ptr %err.line.gep1131, align 8
  %err.col.gep1132 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1127, i32 0, i32 4
  store i64 0, ptr %err.col.gep1132, align 8
  %err.ctx.gep1133 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1127, i32 0, i32 5
  %err.ctx0.gep1134 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1133, i32 0, i32 0
  store i64 %var.load1099, ptr %err.ctx0.gep1134, align 8
  %err.ctx1.gep1135 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1133, i32 0, i32 1
  store i64 %a.wr.len1109, ptr %err.ctx1.gep1135, align 8
  br label %a.wr.done1107

a.wr.done1107:                                    ; preds = %a.wr.err.oob1106, %a.wr.err.null1105, %a.wr.ok1104
  %a.wr.niche1136 = phi ptr [ null, %a.wr.ok1104 ], [ %err.alloc1117, %a.wr.err.null1105 ], [ %err.alloc1127, %a.wr.err.oob1106 ]
  %niche.eq.null1137 = icmp eq ptr %a.wr.niche1136, null
  br i1 %niche.eq.null1137, label %choice.then1138, label %choice.else1139

choice.then1138:                                  ; preds = %a.wr.done1107
  br label %choice.exit1140

choice.else1139:                                  ; preds = %a.wr.done1107
  store ptr %a.wr.niche1136, ptr %var._1141, align 8
  store ptr %a.wr.niche1136, ptr %var._1142, align 8
  store ptr %a.wr.niche1136, ptr %var._1143, align 8
  %err.code.gep1144 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1136, i32 0, i32 0
  %err.code1145 = load i64, ptr %err.code.gep1144, align 8
  %err.msg.gep1146 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1136, i32 0, i32 1
  %err.msg.struct1147 = load ptr, ptr %err.msg.gep1146, align 8
  %err.file.gep1148 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1136, i32 0, i32 2
  %err.file.struct1149 = load ptr, ptr %err.file.gep1148, align 8
  %err.line.gep1150 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1136, i32 0, i32 3
  %err.line1151 = load i64, ptr %err.line.gep1150, align 8
  %err.col.gep1152 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1136, i32 0, i32 4
  %err.col1153 = load i64, ptr %err.col.gep1152, align 8
  %err.msg.len1154 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1147, i32 0, i32 0
  %err.msg.len1155 = load i64, ptr %err.msg.len1154, align 8
  %err.msg.len1156 = and i64 %err.msg.len1155, 281474976710655
  %str.tag1157 = lshr i64 %err.msg.len1155, 48
  %str.immortal1158 = icmp eq i64 %str.tag1157, 0
  br i1 %str.immortal1158, label %str_ok1160, label %str_gen_check1159

choice.exit1140:                                  ; preds = %err.abort1187, %choice.then1138
  br label %choice.exit831

str_gen_check1159:                                ; preds = %choice.else1139
  %arena.cur1162 = call ptr @dva_arena_current()
  %tag.valid1163 = call i1 @dva_arena_validate_tag(ptr %arena.cur1162, i64 %str.tag1157)
  br i1 %tag.valid1163, label %str_ok1160, label %str_stale1161

str_ok1160:                                       ; preds = %str_stale1161, %str_gen_check1159, %choice.else1139
  %err.msg.len321164 = trunc i64 %err.msg.len1156 to i32
  %err.msg.data1165 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1147, i32 0, i32 1
  %err.msg.data1166 = load ptr, ptr %err.msg.data1165, align 8
  %err.file.len1167 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1149, i32 0, i32 0
  %err.file.len1168 = load i64, ptr %err.file.len1167, align 8
  %err.file.len1169 = and i64 %err.file.len1168, 281474976710655
  %str.tag1170 = lshr i64 %err.file.len1168, 48
  %str.immortal1171 = icmp eq i64 %str.tag1170, 0
  br i1 %str.immortal1171, label %str_ok1173, label %str_gen_check1172

str_stale1161:                                    ; preds = %str_gen_check1159
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1160

str_gen_check1172:                                ; preds = %str_ok1160
  %arena.cur1175 = call ptr @dva_arena_current()
  %tag.valid1176 = call i1 @dva_arena_validate_tag(ptr %arena.cur1175, i64 %str.tag1170)
  br i1 %tag.valid1176, label %str_ok1173, label %str_stale1174

str_ok1173:                                       ; preds = %str_stale1174, %str_gen_check1172, %str_ok1160
  %err.file.len321177 = trunc i64 %err.file.len1169 to i32
  %err.file.data1178 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1149, i32 0, i32 1
  %err.file.data1179 = load ptr, ptr %err.file.data1178, align 8
  %err.thread.rec1180 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1181 = icmp ne ptr %err.thread.rec1180, null
  br i1 %err.is.thread1181, label %err.thread1182, label %err.normal1183

str_stale1174:                                    ; preds = %str_gen_check1172
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1173

err.thread1182:                                   ; preds = %str_ok1173
  %err.haserr.gep1184 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1180, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1184, align 8
  %err.err.gep1185 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1180, i32 0, i32 7
  store ptr %a.wr.niche1136, ptr %err.err.gep1185, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1183:                                   ; preds = %str_ok1173
  %err.panic.printf1186 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1145, i32 %err.msg.len321164, ptr %err.msg.data1166, i32 %err.file.len321177, ptr %err.file.data1179, i64 %err.line1151, i64 %err.col1153)
  call void @exit(i32 1)
  unreachable

err.abort1187:                                    ; No predecessors!
  br label %choice.exit1140

loop.header.566:                                  ; preds = %loop.latch.566, %choice.else655
  %counter.load1190 = load i64, ptr %loop.idx.566, align 8
  br label %loop.body.566

loop.body.566:                                    ; preds = %loop.header.566
  %loop.rel.i1191 = sub i64 %counter.load1190, 0
  store i64 1, ptr %loop.step.566, align 8
  store i64 %loop.rel.i1191, ptr %var._i1192, align 8
  store i64 %counter.load1190, ptr %var._1193, align 8
  %var.load1194 = load i64, ptr %"var.top'", align 8
  %cmptmp1195 = icmp sgt i64 %var.load1194, 1
  br i1 %cmptmp1195, label %and.567.then, label %and.567.else

loop.exit.nat.566:                                ; No predecessors!
  br label %loop.exit.566

loop.latch.566:                                   ; preds = %choice.exit1266
  %step.val = load i64, ptr %loop.step.566, align 8
  %loop.next = add i64 %counter.load1190, %step.val
  store i64 %loop.next, ptr %loop.idx.566, align 8
  br label %loop.header.566

loop.exit.566:                                    ; preds = %choice.else1265, %loop.exit.nat.566
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load1269 = load ptr, ptr %var.raw_stack, align 8
  %a.load1270 = load ptr, ptr %var.raw_stack, align 8
  %a.null1271 = icmp eq ptr %a.load1270, null
  br i1 %a.null1271, label %a.create1272, label %a.after1273

and.567.then:                                     ; preds = %loop.body.566
  %var.load1196 = load ptr, ptr %var.raw_stack, align 8
  %a.load1197 = load ptr, ptr %var.raw_stack, align 8
  %a.null1198 = icmp eq ptr %a.load1197, null
  br i1 %a.null1198, label %a.create1199, label %a.after1200

and.567.else:                                     ; preds = %loop.body.566
  br label %and.567.exit

and.567.exit:                                     ; preds = %and.567.else, %choice.exit1255
  %and.567.phi = phi i1 [ %cmptmp1263, %choice.exit1255 ], [ %cmptmp1195, %and.567.else ]
  br i1 %and.567.phi, label %choice.then1264, label %choice.else1265

a.create1199:                                     ; preds = %and.567.then
  %arena.cur1201 = call ptr @dva_arena_current()
  %a.create1202 = call ptr @dva_arena_alloc(ptr %arena.cur1201, i64 24)
  %arena.cur1203 = call ptr @dva_arena_current()
  %a.buf1204 = call ptr @dva_arena_alloc(ptr %arena.cur1203, i64 128)
  %a.len.gep1205 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1202, i32 0, i32 0
  store i64 0, ptr %a.len.gep1205, align 8
  %a.data.gep1206 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1202, i32 0, i32 1
  store ptr %a.buf1204, ptr %a.data.gep1206, align 8
  %a.cap.gep1207 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1202, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1207, align 8
  store ptr %a.create1202, ptr %var.raw_stack, align 8
  br label %a.after1200

a.after1200:                                      ; preds = %a.create1199, %and.567.then
  %a.load21208 = load ptr, ptr %var.raw_stack, align 8
  %var.load1209 = load i64, ptr %"var.top'", align 8
  %subtmp1210 = sub i64 %var.load1209, 1
  %a.rd.nonnull1211 = icmp ne ptr %a.load21208, null
  br i1 %a.rd.nonnull1211, label %a.rd.check1212, label %a.rd.err.null1214

a.rd.check1212:                                   ; preds = %a.after1200
  %a.rd.len1217 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21208, i32 0, i32 0
  %a.rd.len1218 = load i64, ptr %a.rd.len1217, align 8
  %a.rd.ge01219 = icmp sge i64 %subtmp1210, 0
  %a.rd.lt1220 = icmp slt i64 %subtmp1210, %a.rd.len1218
  %a.rd.bounds1221 = and i1 %a.rd.ge01219, %a.rd.lt1220
  br i1 %a.rd.bounds1221, label %a.rd.ok1213, label %a.rd.err.oob1215

a.rd.ok1213:                                      ; preds = %a.rd.check1212
  %a.rd.data1222 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21208, i32 0, i32 1
  %a.rd.data1223 = load ptr, ptr %a.rd.data1222, align 8
  %a.rd.elem.gep1224 = getelementptr i64, ptr %a.rd.data1223, i64 %subtmp1210
  %a.rd.elem1225 = load i64, ptr %a.rd.elem.gep1224, align 8
  br label %a.rd.done1216

a.rd.err.null1214:                                ; preds = %a.after1200
  %arena.cur1226 = call ptr @dva_arena_current()
  %err.alloc1227 = call ptr @dva_arena_alloc(ptr %arena.cur1226, i64 56)
  %err.code.gep1228 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1227, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1228, align 8
  %err.msg.gep1229 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1227, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep1229, align 8
  %err.file.gep1230 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1227, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep1230, align 8
  %err.line.gep1231 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1227, i32 0, i32 3
  store i64 564, ptr %err.line.gep1231, align 8
  %err.col.gep1232 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1227, i32 0, i32 4
  store i64 68, ptr %err.col.gep1232, align 8
  %err.ctx.gep1233 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1227, i32 0, i32 5
  %err.ctx0.gep1234 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1233, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1234, align 8
  %err.ctx1.gep1235 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1233, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1235, align 8
  %err.p2i1236 = ptrtoint ptr %err.alloc1227 to i64
  br label %a.rd.done1216

a.rd.err.oob1215:                                 ; preds = %a.rd.check1212
  %arena.cur1237 = call ptr @dva_arena_current()
  %err.alloc1238 = call ptr @dva_arena_alloc(ptr %arena.cur1237, i64 56)
  %err.code.gep1239 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1238, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1239, align 8
  %err.msg.gep1240 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1238, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep1240, align 8
  %err.file.gep1241 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1238, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep1241, align 8
  %err.line.gep1242 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1238, i32 0, i32 3
  store i64 564, ptr %err.line.gep1242, align 8
  %err.col.gep1243 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1238, i32 0, i32 4
  store i64 68, ptr %err.col.gep1243, align 8
  %err.ctx.gep1244 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1238, i32 0, i32 5
  %err.ctx0.gep1245 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1244, i32 0, i32 0
  store i64 %subtmp1210, ptr %err.ctx0.gep1245, align 8
  %err.ctx1.gep1246 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1244, i32 0, i32 1
  store i64 %a.rd.len1218, ptr %err.ctx1.gep1246, align 8
  %err.p2i1247 = ptrtoint ptr %err.alloc1238 to i64
  br label %a.rd.done1216

a.rd.done1216:                                    ; preds = %a.rd.err.oob1215, %a.rd.err.null1214, %a.rd.ok1213
  %a.rd.tag1248 = phi i1 [ true, %a.rd.ok1213 ], [ false, %a.rd.err.null1214 ], [ false, %a.rd.err.oob1215 ]
  %a.rd.pay1249 = phi i64 [ %a.rd.elem1225, %a.rd.ok1213 ], [ %err.p2i1236, %a.rd.err.null1214 ], [ %err.p2i1247, %a.rd.err.oob1215 ]
  %ram.tag1250 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1248, 0
  %ram.pay1251 = insertvalue { i1, i64 } %ram.tag1250, i64 %a.rd.pay1249, 1
  %ram.tag1252 = extractvalue { i1, i64 } %ram.pay1251, 0
  br i1 %ram.tag1252, label %choice.then1253, label %choice.else1254

choice.then1253:                                  ; preds = %a.rd.done1216
  %ram.pay1256 = extractvalue { i1, i64 } %ram.pay1251, 1
  store i64 %ram.pay1256, ptr %var._1257, align 8
  br label %choice.exit1255

choice.else1254:                                  ; preds = %a.rd.done1216
  %ram.pay1258 = extractvalue { i1, i64 } %ram.pay1251, 1
  %pay.ptr1259 = inttoptr i64 %ram.pay1258 to ptr
  store ptr %pay.ptr1259, ptr %var._1260, align 8
  br label %choice.exit1255

choice.exit1255:                                  ; preds = %choice.else1254, %choice.then1253
  %choice.res1261 = phi i64 [ %ram.pay1256, %choice.then1253 ], [ 0, %choice.else1254 ]
  %var.load1262 = load i64, ptr %var.raw, align 8
  %cmptmp1263 = icmp sgt i64 %choice.res1261, %var.load1262
  br label %and.567.exit

choice.then1264:                                  ; preds = %and.567.exit
  %var.load1267 = load i64, ptr %"var.top'", align 8
  %subtmp1268 = sub i64 %var.load1267, 1
  store i64 %subtmp1268, ptr %"var.top'", align 8
  br label %choice.exit1266

choice.else1265:                                  ; preds = %and.567.exit
  br label %loop.exit.566

choice.exit1266:                                  ; preds = %choice.then1264
  br label %loop.latch.566

a.create1272:                                     ; preds = %loop.exit.566
  %arena.cur1274 = call ptr @dva_arena_current()
  %a.create1275 = call ptr @dva_arena_alloc(ptr %arena.cur1274, i64 24)
  %arena.cur1276 = call ptr @dva_arena_current()
  %a.buf1277 = call ptr @dva_arena_alloc(ptr %arena.cur1276, i64 128)
  %a.len.gep1278 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1275, i32 0, i32 0
  store i64 0, ptr %a.len.gep1278, align 8
  %a.data.gep1279 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1275, i32 0, i32 1
  store ptr %a.buf1277, ptr %a.data.gep1279, align 8
  %a.cap.gep1280 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1275, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1280, align 8
  store ptr %a.create1275, ptr %var.raw_stack, align 8
  br label %a.after1273

a.after1273:                                      ; preds = %a.create1272, %loop.exit.566
  %a.load21281 = load ptr, ptr %var.raw_stack, align 8
  %var.load1282 = load i64, ptr %"var.top'", align 8
  %subtmp1283 = sub i64 %var.load1282, 1
  %a.rd.nonnull1284 = icmp ne ptr %a.load21281, null
  br i1 %a.rd.nonnull1284, label %a.rd.check1285, label %a.rd.err.null1287

a.rd.check1285:                                   ; preds = %a.after1273
  %a.rd.len1290 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21281, i32 0, i32 0
  %a.rd.len1291 = load i64, ptr %a.rd.len1290, align 8
  %a.rd.ge01292 = icmp sge i64 %subtmp1283, 0
  %a.rd.lt1293 = icmp slt i64 %subtmp1283, %a.rd.len1291
  %a.rd.bounds1294 = and i1 %a.rd.ge01292, %a.rd.lt1293
  br i1 %a.rd.bounds1294, label %a.rd.ok1286, label %a.rd.err.oob1288

a.rd.ok1286:                                      ; preds = %a.rd.check1285
  %a.rd.data1295 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21281, i32 0, i32 1
  %a.rd.data1296 = load ptr, ptr %a.rd.data1295, align 8
  %a.rd.elem.gep1297 = getelementptr i64, ptr %a.rd.data1296, i64 %subtmp1283
  %a.rd.elem1298 = load i64, ptr %a.rd.elem.gep1297, align 8
  br label %a.rd.done1289

a.rd.err.null1287:                                ; preds = %a.after1273
  %arena.cur1299 = call ptr @dva_arena_current()
  %err.alloc1300 = call ptr @dva_arena_alloc(ptr %arena.cur1299, i64 56)
  %err.code.gep1301 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1300, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1301, align 8
  %err.msg.gep1302 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1300, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep1302, align 8
  %err.file.gep1303 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1300, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep1303, align 8
  %err.line.gep1304 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1300, i32 0, i32 3
  store i64 567, ptr %err.line.gep1304, align 8
  %err.col.gep1305 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1300, i32 0, i32 4
  store i64 65, ptr %err.col.gep1305, align 8
  %err.ctx.gep1306 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1300, i32 0, i32 5
  %err.ctx0.gep1307 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1306, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1307, align 8
  %err.ctx1.gep1308 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1306, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1308, align 8
  %err.p2i1309 = ptrtoint ptr %err.alloc1300 to i64
  br label %a.rd.done1289

a.rd.err.oob1288:                                 ; preds = %a.rd.check1285
  %arena.cur1310 = call ptr @dva_arena_current()
  %err.alloc1311 = call ptr @dva_arena_alloc(ptr %arena.cur1310, i64 56)
  %err.code.gep1312 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1311, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1312, align 8
  %err.msg.gep1313 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1311, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep1313, align 8
  %err.file.gep1314 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1311, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep1314, align 8
  %err.line.gep1315 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1311, i32 0, i32 3
  store i64 567, ptr %err.line.gep1315, align 8
  %err.col.gep1316 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1311, i32 0, i32 4
  store i64 65, ptr %err.col.gep1316, align 8
  %err.ctx.gep1317 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1311, i32 0, i32 5
  %err.ctx0.gep1318 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1317, i32 0, i32 0
  store i64 %subtmp1283, ptr %err.ctx0.gep1318, align 8
  %err.ctx1.gep1319 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1317, i32 0, i32 1
  store i64 %a.rd.len1291, ptr %err.ctx1.gep1319, align 8
  %err.p2i1320 = ptrtoint ptr %err.alloc1311 to i64
  br label %a.rd.done1289

a.rd.done1289:                                    ; preds = %a.rd.err.oob1288, %a.rd.err.null1287, %a.rd.ok1286
  %a.rd.tag1321 = phi i1 [ true, %a.rd.ok1286 ], [ false, %a.rd.err.null1287 ], [ false, %a.rd.err.oob1288 ]
  %a.rd.pay1322 = phi i64 [ %a.rd.elem1298, %a.rd.ok1286 ], [ %err.p2i1309, %a.rd.err.null1287 ], [ %err.p2i1320, %a.rd.err.oob1288 ]
  %ram.tag1323 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1321, 0
  %ram.pay1324 = insertvalue { i1, i64 } %ram.tag1323, i64 %a.rd.pay1322, 1
  %ram.tag1325 = extractvalue { i1, i64 } %ram.pay1324, 0
  br i1 %ram.tag1325, label %choice.then1326, label %choice.else1327

choice.then1326:                                  ; preds = %a.rd.done1289
  %ram.pay1329 = extractvalue { i1, i64 } %ram.pay1324, 1
  store i64 %ram.pay1329, ptr %var._1330, align 8
  br label %choice.exit1328

choice.else1327:                                  ; preds = %a.rd.done1289
  %ram.pay1331 = extractvalue { i1, i64 } %ram.pay1324, 1
  %pay.ptr1332 = inttoptr i64 %ram.pay1331 to ptr
  store ptr %pay.ptr1332, ptr %var._1333, align 8
  br label %choice.exit1328

choice.exit1328:                                  ; preds = %choice.else1327, %choice.then1326
  %choice.res1334 = phi i64 [ %ram.pay1329, %choice.then1326 ], [ 0, %choice.else1327 ]
  store i64 %choice.res1334, ptr %var.matched_raw, align 8
  %var.load1335 = load i64, ptr %var.raw, align 8
  %var.load1336 = load i64, ptr %var.matched_raw, align 8
  %cmptmp1337 = icmp sgt i64 %var.load1335, %var.load1336
  br i1 %cmptmp1337, label %choice.then1338, label %choice.else1339

choice.then1338:                                  ; preds = %choice.exit1328
  %var.load1341 = load ptr, ptr %var.canon_stack, align 8
  %a.load1342 = load ptr, ptr %var.canon_stack, align 8
  %a.null1343 = icmp eq ptr %a.load1342, null
  br i1 %a.null1343, label %a.create1344, label %a.after1345

choice.else1339:                                  ; preds = %choice.exit1328
  %var.load1911 = load ptr, ptr %var.body_stack, align 8
  %a.load1912 = load ptr, ptr %var.body_stack, align 8
  %a.null1913 = icmp eq ptr %a.load1912, null
  br i1 %a.null1913, label %a.create1914, label %a.after1915

choice.exit1340:                                  ; preds = %choice.exit1966, %choice.exit1519
  br label %choice.exit656

a.create1344:                                     ; preds = %choice.then1338
  %arena.cur1346 = call ptr @dva_arena_current()
  %a.create1347 = call ptr @dva_arena_alloc(ptr %arena.cur1346, i64 24)
  %arena.cur1348 = call ptr @dva_arena_current()
  %a.buf1349 = call ptr @dva_arena_alloc(ptr %arena.cur1348, i64 128)
  %a.len.gep1350 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1347, i32 0, i32 0
  store i64 0, ptr %a.len.gep1350, align 8
  %a.data.gep1351 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1347, i32 0, i32 1
  store ptr %a.buf1349, ptr %a.data.gep1351, align 8
  %a.cap.gep1352 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1347, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1352, align 8
  store ptr %a.create1347, ptr %var.canon_stack, align 8
  br label %a.after1345

a.after1345:                                      ; preds = %a.create1344, %choice.then1338
  %a.load21353 = load ptr, ptr %var.canon_stack, align 8
  %var.load1354 = load i64, ptr %"var.top'", align 8
  %subtmp1355 = sub i64 %var.load1354, 1
  %a.rd.nonnull1356 = icmp ne ptr %a.load21353, null
  br i1 %a.rd.nonnull1356, label %a.rd.check1357, label %a.rd.err.null1359

a.rd.check1357:                                   ; preds = %a.after1345
  %a.rd.len1362 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21353, i32 0, i32 0
  %a.rd.len1363 = load i64, ptr %a.rd.len1362, align 8
  %a.rd.ge01364 = icmp sge i64 %subtmp1355, 0
  %a.rd.lt1365 = icmp slt i64 %subtmp1355, %a.rd.len1363
  %a.rd.bounds1366 = and i1 %a.rd.ge01364, %a.rd.lt1365
  br i1 %a.rd.bounds1366, label %a.rd.ok1358, label %a.rd.err.oob1360

a.rd.ok1358:                                      ; preds = %a.rd.check1357
  %a.rd.data1367 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21353, i32 0, i32 1
  %a.rd.data1368 = load ptr, ptr %a.rd.data1367, align 8
  %a.rd.elem.gep1369 = getelementptr i64, ptr %a.rd.data1368, i64 %subtmp1355
  %a.rd.elem1370 = load i64, ptr %a.rd.elem.gep1369, align 8
  br label %a.rd.done1361

a.rd.err.null1359:                                ; preds = %a.after1345
  %arena.cur1371 = call ptr @dva_arena_current()
  %err.alloc1372 = call ptr @dva_arena_alloc(ptr %arena.cur1371, i64 56)
  %err.code.gep1373 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1372, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1373, align 8
  %err.msg.gep1374 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1372, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep1374, align 8
  %err.file.gep1375 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1372, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep1375, align 8
  %err.line.gep1376 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1372, i32 0, i32 3
  store i64 571, ptr %err.line.gep1376, align 8
  %err.col.gep1377 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1372, i32 0, i32 4
  store i64 69, ptr %err.col.gep1377, align 8
  %err.ctx.gep1378 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1372, i32 0, i32 5
  %err.ctx0.gep1379 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1378, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1379, align 8
  %err.ctx1.gep1380 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1378, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1380, align 8
  %err.p2i1381 = ptrtoint ptr %err.alloc1372 to i64
  br label %a.rd.done1361

a.rd.err.oob1360:                                 ; preds = %a.rd.check1357
  %arena.cur1382 = call ptr @dva_arena_current()
  %err.alloc1383 = call ptr @dva_arena_alloc(ptr %arena.cur1382, i64 56)
  %err.code.gep1384 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1383, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1384, align 8
  %err.msg.gep1385 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1383, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep1385, align 8
  %err.file.gep1386 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1383, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep1386, align 8
  %err.line.gep1387 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1383, i32 0, i32 3
  store i64 571, ptr %err.line.gep1387, align 8
  %err.col.gep1388 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1383, i32 0, i32 4
  store i64 69, ptr %err.col.gep1388, align 8
  %err.ctx.gep1389 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1383, i32 0, i32 5
  %err.ctx0.gep1390 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1389, i32 0, i32 0
  store i64 %subtmp1355, ptr %err.ctx0.gep1390, align 8
  %err.ctx1.gep1391 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1389, i32 0, i32 1
  store i64 %a.rd.len1363, ptr %err.ctx1.gep1391, align 8
  %err.p2i1392 = ptrtoint ptr %err.alloc1383 to i64
  br label %a.rd.done1361

a.rd.done1361:                                    ; preds = %a.rd.err.oob1360, %a.rd.err.null1359, %a.rd.ok1358
  %a.rd.tag1393 = phi i1 [ true, %a.rd.ok1358 ], [ false, %a.rd.err.null1359 ], [ false, %a.rd.err.oob1360 ]
  %a.rd.pay1394 = phi i64 [ %a.rd.elem1370, %a.rd.ok1358 ], [ %err.p2i1381, %a.rd.err.null1359 ], [ %err.p2i1392, %a.rd.err.oob1360 ]
  %ram.tag1395 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1393, 0
  %ram.pay1396 = insertvalue { i1, i64 } %ram.tag1395, i64 %a.rd.pay1394, 1
  %ram.tag1397 = extractvalue { i1, i64 } %ram.pay1396, 0
  br i1 %ram.tag1397, label %choice.then1398, label %choice.else1399

choice.then1398:                                  ; preds = %a.rd.done1361
  %ram.pay1401 = extractvalue { i1, i64 } %ram.pay1396, 1
  store i64 %ram.pay1401, ptr %var._1402, align 8
  br label %choice.exit1400

choice.else1399:                                  ; preds = %a.rd.done1361
  %ram.pay1403 = extractvalue { i1, i64 } %ram.pay1396, 1
  %pay.ptr1404 = inttoptr i64 %ram.pay1403 to ptr
  store ptr %pay.ptr1404, ptr %var._1405, align 8
  br label %choice.exit1400

choice.exit1400:                                  ; preds = %choice.else1399, %choice.then1398
  %choice.res1406 = phi i64 [ %ram.pay1401, %choice.then1398 ], [ 0, %choice.else1399 ]
  store i64 %choice.res1406, ptr %var.p_canon1407, align 8
  %var.load1408 = load ptr, ptr %var.body_stack, align 8
  %a.load1409 = load ptr, ptr %var.body_stack, align 8
  %a.null1410 = icmp eq ptr %a.load1409, null
  br i1 %a.null1410, label %a.create1411, label %a.after1412

a.create1411:                                     ; preds = %choice.exit1400
  %arena.cur1413 = call ptr @dva_arena_current()
  %a.create1414 = call ptr @dva_arena_alloc(ptr %arena.cur1413, i64 24)
  %arena.cur1415 = call ptr @dva_arena_current()
  %a.buf1416 = call ptr @dva_arena_alloc(ptr %arena.cur1415, i64 128)
  %a.len.gep1417 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1414, i32 0, i32 0
  store i64 0, ptr %a.len.gep1417, align 8
  %a.data.gep1418 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1414, i32 0, i32 1
  store ptr %a.buf1416, ptr %a.data.gep1418, align 8
  %a.cap.gep1419 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1414, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1419, align 8
  store ptr %a.create1414, ptr %var.body_stack, align 8
  br label %a.after1412

a.after1412:                                      ; preds = %a.create1411, %choice.exit1400
  %a.load21420 = load ptr, ptr %var.body_stack, align 8
  %var.load1421 = load i64, ptr %"var.top'", align 8
  %subtmp1422 = sub i64 %var.load1421, 1
  %a.rd.nonnull1423 = icmp ne ptr %a.load21420, null
  br i1 %a.rd.nonnull1423, label %a.rd.check1424, label %a.rd.err.null1426

a.rd.check1424:                                   ; preds = %a.after1412
  %a.rd.len1429 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21420, i32 0, i32 0
  %a.rd.len1430 = load i64, ptr %a.rd.len1429, align 8
  %a.rd.ge01431 = icmp sge i64 %subtmp1422, 0
  %a.rd.lt1432 = icmp slt i64 %subtmp1422, %a.rd.len1430
  %a.rd.bounds1433 = and i1 %a.rd.ge01431, %a.rd.lt1432
  br i1 %a.rd.bounds1433, label %a.rd.ok1425, label %a.rd.err.oob1427

a.rd.ok1425:                                      ; preds = %a.rd.check1424
  %a.rd.data1434 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21420, i32 0, i32 1
  %a.rd.data1435 = load ptr, ptr %a.rd.data1434, align 8
  %a.rd.elem.gep1436 = getelementptr i64, ptr %a.rd.data1435, i64 %subtmp1422
  %a.rd.elem1437 = load i64, ptr %a.rd.elem.gep1436, align 8
  br label %a.rd.done1428

a.rd.err.null1426:                                ; preds = %a.after1412
  %arena.cur1438 = call ptr @dva_arena_current()
  %err.alloc1439 = call ptr @dva_arena_alloc(ptr %arena.cur1438, i64 56)
  %err.code.gep1440 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1439, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1440, align 8
  %err.msg.gep1441 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1439, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep1441, align 8
  %err.file.gep1442 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1439, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep1442, align 8
  %err.line.gep1443 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1439, i32 0, i32 3
  store i64 572, ptr %err.line.gep1443, align 8
  %err.col.gep1444 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1439, i32 0, i32 4
  store i64 67, ptr %err.col.gep1444, align 8
  %err.ctx.gep1445 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1439, i32 0, i32 5
  %err.ctx0.gep1446 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1445, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1446, align 8
  %err.ctx1.gep1447 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1445, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1447, align 8
  %err.p2i1448 = ptrtoint ptr %err.alloc1439 to i64
  br label %a.rd.done1428

a.rd.err.oob1427:                                 ; preds = %a.rd.check1424
  %arena.cur1449 = call ptr @dva_arena_current()
  %err.alloc1450 = call ptr @dva_arena_alloc(ptr %arena.cur1449, i64 56)
  %err.code.gep1451 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1450, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1451, align 8
  %err.msg.gep1452 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1450, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep1452, align 8
  %err.file.gep1453 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1450, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep1453, align 8
  %err.line.gep1454 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1450, i32 0, i32 3
  store i64 572, ptr %err.line.gep1454, align 8
  %err.col.gep1455 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1450, i32 0, i32 4
  store i64 67, ptr %err.col.gep1455, align 8
  %err.ctx.gep1456 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1450, i32 0, i32 5
  %err.ctx0.gep1457 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1456, i32 0, i32 0
  store i64 %subtmp1422, ptr %err.ctx0.gep1457, align 8
  %err.ctx1.gep1458 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1456, i32 0, i32 1
  store i64 %a.rd.len1430, ptr %err.ctx1.gep1458, align 8
  %err.p2i1459 = ptrtoint ptr %err.alloc1450 to i64
  br label %a.rd.done1428

a.rd.done1428:                                    ; preds = %a.rd.err.oob1427, %a.rd.err.null1426, %a.rd.ok1425
  %a.rd.tag1460 = phi i1 [ true, %a.rd.ok1425 ], [ false, %a.rd.err.null1426 ], [ false, %a.rd.err.oob1427 ]
  %a.rd.pay1461 = phi i64 [ %a.rd.elem1437, %a.rd.ok1425 ], [ %err.p2i1448, %a.rd.err.null1426 ], [ %err.p2i1459, %a.rd.err.oob1427 ]
  %ram.tag1462 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1460, 0
  %ram.pay1463 = insertvalue { i1, i64 } %ram.tag1462, i64 %a.rd.pay1461, 1
  %ram.tag1464 = extractvalue { i1, i64 } %ram.pay1463, 0
  br i1 %ram.tag1464, label %choice.then1465, label %choice.else1466

choice.then1465:                                  ; preds = %a.rd.done1428
  %ram.pay1468 = extractvalue { i1, i64 } %ram.pay1463, 1
  %pay.ptr1469 = inttoptr i64 %ram.pay1468 to ptr
  store ptr %pay.ptr1469, ptr %var._1470, align 8
  br label %choice.exit1467

choice.else1466:                                  ; preds = %a.rd.done1428
  %ram.pay1471 = extractvalue { i1, i64 } %ram.pay1463, 1
  %pay.ptr1472 = inttoptr i64 %ram.pay1471 to ptr
  store ptr %pay.ptr1472, ptr %var._1473, align 8
  br label %choice.exit1467

choice.exit1467:                                  ; preds = %choice.else1466, %choice.then1465
  %choice.res1474 = phi ptr [ %pay.ptr1469, %choice.then1465 ], [ @str.3.struct, %choice.else1466 ]
  store ptr %choice.res1474, ptr %var.p_code1475, align 8
  %var.load1476 = load ptr, ptr %var.lines, align 8
  %a.load1477 = load ptr, ptr %var.lines, align 8
  %a.null1478 = icmp eq ptr %a.load1477, null
  br i1 %a.null1478, label %a.create1479, label %a.after1480

a.create1479:                                     ; preds = %choice.exit1467
  %arena.cur1481 = call ptr @dva_arena_current()
  %a.create1482 = call ptr @dva_arena_alloc(ptr %arena.cur1481, i64 24)
  %arena.cur1483 = call ptr @dva_arena_current()
  %a.buf1484 = call ptr @dva_arena_alloc(ptr %arena.cur1483, i64 128)
  %a.len.gep1485 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1482, i32 0, i32 0
  store i64 0, ptr %a.len.gep1485, align 8
  %a.data.gep1486 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1482, i32 0, i32 1
  store ptr %a.buf1484, ptr %a.data.gep1486, align 8
  %a.cap.gep1487 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1482, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1487, align 8
  store ptr %a.create1482, ptr %var.lines, align 8
  br label %a.after1480

a.after1480:                                      ; preds = %a.create1479, %choice.exit1467
  %a.load21488 = load ptr, ptr %var.lines, align 8
  %var.load1489 = load i64, ptr %var.idx, align 8
  %var.load1490 = load ptr, ptr %var.p_code1475, align 8
  %var.load1491 = load ptr, ptr %var.cur_code, align 8
  %var.load1492 = load i64, ptr %var.matched_raw, align 8
  %var.load1493 = load i64, ptr %var.raw, align 8
  %call.res1494 = call i64 @"formatter::compute_child_delta"(ptr %a.load21488, i64 %var.load1489, ptr %var.load1490, ptr %var.load1491, i64 %var.load1492, i64 %var.load1493)
  store i64 %call.res1494, ptr %var.delta1495, align 8
  %var.load1496 = load i64, ptr %var.p_canon1407, align 8
  %var.load1497 = load i64, ptr %var.delta1495, align 8
  %addtmp1498 = add i64 %var.load1496, %var.load1497
  store i64 %addtmp1498, ptr %var.new_canon1499, align 8
  %var.load1500 = load i64, ptr %"var.top'", align 8
  %var.load1501 = load ptr, ptr %var.raw_stack, align 8
  %a.load1502 = load ptr, ptr %var.raw_stack, align 8
  %a.null1503 = icmp eq ptr %a.load1502, null
  br i1 %a.null1503, label %a.create1504, label %a.after1505

a.create1504:                                     ; preds = %a.after1480
  %arena.cur1506 = call ptr @dva_arena_current()
  %a.create1507 = call ptr @dva_arena_alloc(ptr %arena.cur1506, i64 24)
  %arena.cur1508 = call ptr @dva_arena_current()
  %a.buf1509 = call ptr @dva_arena_alloc(ptr %arena.cur1508, i64 128)
  %a.len.gep1510 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1507, i32 0, i32 0
  store i64 0, ptr %a.len.gep1510, align 8
  %a.data.gep1511 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1507, i32 0, i32 1
  store ptr %a.buf1509, ptr %a.data.gep1511, align 8
  %a.cap.gep1512 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1507, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1512, align 8
  store ptr %a.create1507, ptr %var.raw_stack, align 8
  br label %a.after1505

a.after1505:                                      ; preds = %a.create1504, %a.after1480
  %a.load21513 = load ptr, ptr %var.raw_stack, align 8
  %a.len.query1514 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21513, i32 0, i32 0
  %a.len.query1515 = load i64, ptr %a.len.query1514, align 8
  %cmptmp1516 = icmp eq i64 %var.load1500, %a.len.query1515
  br i1 %cmptmp1516, label %choice.then1517, label %choice.else1518

choice.then1517:                                  ; preds = %a.after1505
  %var.load1520 = load i64, ptr %var.raw, align 8
  %a.load1521 = load ptr, ptr %var.raw_stack, align 8
  %a.null1522 = icmp eq ptr %a.load1521, null
  br i1 %a.null1522, label %a.create1523, label %a.after1524

choice.else1518:                                  ; preds = %a.after1505
  %var.load1605 = load ptr, ptr %var.raw_stack, align 8
  %a.load1606 = load ptr, ptr %var.raw_stack, align 8
  %a.null1607 = icmp eq ptr %a.load1606, null
  br i1 %a.null1607, label %a.create1608, label %a.after1609

choice.exit1519:                                  ; preds = %choice.exit1861, %a.store1591
  %var.load1909 = load i64, ptr %"var.top'", align 8
  %addtmp1910 = add i64 %var.load1909, 1
  store i64 %addtmp1910, ptr %"var.top'", align 8
  br label %choice.exit1340

a.create1523:                                     ; preds = %choice.then1517
  %arena.cur1525 = call ptr @dva_arena_current()
  %a.create1526 = call ptr @dva_arena_alloc(ptr %arena.cur1525, i64 24)
  %arena.cur1527 = call ptr @dva_arena_current()
  %a.buf1528 = call ptr @dva_arena_alloc(ptr %arena.cur1527, i64 128)
  %a.len.gep1529 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1526, i32 0, i32 0
  store i64 0, ptr %a.len.gep1529, align 8
  %a.data.gep1530 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1526, i32 0, i32 1
  store ptr %a.buf1528, ptr %a.data.gep1530, align 8
  %a.cap.gep1531 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1526, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1531, align 8
  store ptr %a.create1526, ptr %var.raw_stack, align 8
  br label %a.after1524

a.after1524:                                      ; preds = %a.create1523, %choice.then1517
  %a.load21532 = load ptr, ptr %var.raw_stack, align 8
  br label %a.check1533

a.check1533:                                      ; preds = %a.after1524
  %a.len1536 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21532, i32 0, i32 0
  %a.len1537 = load i64, ptr %a.len1536, align 8
  %a.cap1538 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21532, i32 0, i32 2
  %a.cap1539 = load i64, ptr %a.cap1538, align 8
  %a.needs.grow1540 = icmp eq i64 %a.len1537, %a.cap1539
  br i1 %a.needs.grow1540, label %a.grow1534, label %a.store1535

a.grow1534:                                       ; preds = %a.check1533
  call void @dva_array_grow(ptr %a.load21532)
  br label %a.store1535

a.store1535:                                      ; preds = %a.grow1534, %a.check1533
  %a.cur.data1541 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21532, i32 0, i32 1
  %a.cur.data1542 = load ptr, ptr %a.cur.data1541, align 8
  %a.cur.len1543 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21532, i32 0, i32 0
  %a.cur.len1544 = load i64, ptr %a.cur.len1543, align 8
  %a.elem.gep1545 = getelementptr i64, ptr %a.cur.data1542, i64 %a.cur.len1544
  store i64 %var.load1520, ptr %a.elem.gep1545, align 8
  %a.next.len1546 = add i64 %a.cur.len1544, 1
  %b.len.gep1547 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21532, i32 0, i32 0
  store i64 %a.next.len1546, ptr %b.len.gep1547, align 8
  %var.load1548 = load i64, ptr %var.new_canon1499, align 8
  %a.load1549 = load ptr, ptr %var.canon_stack, align 8
  %a.null1550 = icmp eq ptr %a.load1549, null
  br i1 %a.null1550, label %a.create1551, label %a.after1552

a.create1551:                                     ; preds = %a.store1535
  %arena.cur1553 = call ptr @dva_arena_current()
  %a.create1554 = call ptr @dva_arena_alloc(ptr %arena.cur1553, i64 24)
  %arena.cur1555 = call ptr @dva_arena_current()
  %a.buf1556 = call ptr @dva_arena_alloc(ptr %arena.cur1555, i64 128)
  %a.len.gep1557 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1554, i32 0, i32 0
  store i64 0, ptr %a.len.gep1557, align 8
  %a.data.gep1558 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1554, i32 0, i32 1
  store ptr %a.buf1556, ptr %a.data.gep1558, align 8
  %a.cap.gep1559 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1554, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1559, align 8
  store ptr %a.create1554, ptr %var.canon_stack, align 8
  br label %a.after1552

a.after1552:                                      ; preds = %a.create1551, %a.store1535
  %a.load21560 = load ptr, ptr %var.canon_stack, align 8
  br label %a.check1561

a.check1561:                                      ; preds = %a.after1552
  %a.len1564 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21560, i32 0, i32 0
  %a.len1565 = load i64, ptr %a.len1564, align 8
  %a.cap1566 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21560, i32 0, i32 2
  %a.cap1567 = load i64, ptr %a.cap1566, align 8
  %a.needs.grow1568 = icmp eq i64 %a.len1565, %a.cap1567
  br i1 %a.needs.grow1568, label %a.grow1562, label %a.store1563

a.grow1562:                                       ; preds = %a.check1561
  call void @dva_array_grow(ptr %a.load21560)
  br label %a.store1563

a.store1563:                                      ; preds = %a.grow1562, %a.check1561
  %a.cur.data1569 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21560, i32 0, i32 1
  %a.cur.data1570 = load ptr, ptr %a.cur.data1569, align 8
  %a.cur.len1571 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21560, i32 0, i32 0
  %a.cur.len1572 = load i64, ptr %a.cur.len1571, align 8
  %a.elem.gep1573 = getelementptr i64, ptr %a.cur.data1570, i64 %a.cur.len1572
  store i64 %var.load1548, ptr %a.elem.gep1573, align 8
  %a.next.len1574 = add i64 %a.cur.len1572, 1
  %b.len.gep1575 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21560, i32 0, i32 0
  store i64 %a.next.len1574, ptr %b.len.gep1575, align 8
  %var.load1576 = load ptr, ptr %var.cur_code, align 8
  %a.load1577 = load ptr, ptr %var.body_stack, align 8
  %a.null1578 = icmp eq ptr %a.load1577, null
  br i1 %a.null1578, label %a.create1579, label %a.after1580

a.create1579:                                     ; preds = %a.store1563
  %arena.cur1581 = call ptr @dva_arena_current()
  %a.create1582 = call ptr @dva_arena_alloc(ptr %arena.cur1581, i64 24)
  %arena.cur1583 = call ptr @dva_arena_current()
  %a.buf1584 = call ptr @dva_arena_alloc(ptr %arena.cur1583, i64 128)
  %a.len.gep1585 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1582, i32 0, i32 0
  store i64 0, ptr %a.len.gep1585, align 8
  %a.data.gep1586 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1582, i32 0, i32 1
  store ptr %a.buf1584, ptr %a.data.gep1586, align 8
  %a.cap.gep1587 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1582, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1587, align 8
  store ptr %a.create1582, ptr %var.body_stack, align 8
  br label %a.after1580

a.after1580:                                      ; preds = %a.create1579, %a.store1563
  %a.load21588 = load ptr, ptr %var.body_stack, align 8
  br label %a.check1589

a.check1589:                                      ; preds = %a.after1580
  %a.len1592 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21588, i32 0, i32 0
  %a.len1593 = load i64, ptr %a.len1592, align 8
  %a.cap1594 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21588, i32 0, i32 2
  %a.cap1595 = load i64, ptr %a.cap1594, align 8
  %a.needs.grow1596 = icmp eq i64 %a.len1593, %a.cap1595
  br i1 %a.needs.grow1596, label %a.grow1590, label %a.store1591

a.grow1590:                                       ; preds = %a.check1589
  call void @dva_array_grow(ptr %a.load21588)
  br label %a.store1591

a.store1591:                                      ; preds = %a.grow1590, %a.check1589
  %a.cur.data1597 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21588, i32 0, i32 1
  %a.cur.data1598 = load ptr, ptr %a.cur.data1597, align 8
  %a.cur.len1599 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21588, i32 0, i32 0
  %a.cur.len1600 = load i64, ptr %a.cur.len1599, align 8
  %a.elem.gep1601 = getelementptr i64, ptr %a.cur.data1598, i64 %a.cur.len1600
  %slot.p2i1602 = ptrtoint ptr %var.load1576 to i64
  store i64 %slot.p2i1602, ptr %a.elem.gep1601, align 8
  %a.next.len1603 = add i64 %a.cur.len1600, 1
  %b.len.gep1604 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21588, i32 0, i32 0
  store i64 %a.next.len1603, ptr %b.len.gep1604, align 8
  br label %choice.exit1519

a.create1608:                                     ; preds = %choice.else1518
  %arena.cur1610 = call ptr @dva_arena_current()
  %a.create1611 = call ptr @dva_arena_alloc(ptr %arena.cur1610, i64 24)
  %arena.cur1612 = call ptr @dva_arena_current()
  %a.buf1613 = call ptr @dva_arena_alloc(ptr %arena.cur1612, i64 128)
  %a.len.gep1614 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1611, i32 0, i32 0
  store i64 0, ptr %a.len.gep1614, align 8
  %a.data.gep1615 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1611, i32 0, i32 1
  store ptr %a.buf1613, ptr %a.data.gep1615, align 8
  %a.cap.gep1616 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1611, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1616, align 8
  store ptr %a.create1611, ptr %var.raw_stack, align 8
  br label %a.after1609

a.after1609:                                      ; preds = %a.create1608, %choice.else1518
  %a.load21617 = load ptr, ptr %var.raw_stack, align 8
  %var.load1618 = load i64, ptr %"var.top'", align 8
  %var.load1619 = load i64, ptr %var.raw, align 8
  %a.wr.nonnull1620 = icmp ne ptr %a.load21617, null
  br i1 %a.wr.nonnull1620, label %a.wr.check1621, label %a.wr.err.null1623

a.wr.check1621:                                   ; preds = %a.after1609
  %a.wr.len1626 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21617, i32 0, i32 0
  %a.wr.len1627 = load i64, ptr %a.wr.len1626, align 8
  %a.wr.ge01628 = icmp sge i64 %var.load1618, 0
  %a.wr.lt1629 = icmp slt i64 %var.load1618, %a.wr.len1627
  %a.wr.bounds1630 = and i1 %a.wr.ge01628, %a.wr.lt1629
  br i1 %a.wr.bounds1630, label %a.wr.ok1622, label %a.wr.err.oob1624

a.wr.ok1622:                                      ; preds = %a.wr.check1621
  %a.wr.data1631 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21617, i32 0, i32 1
  %a.wr.data1632 = load ptr, ptr %a.wr.data1631, align 8
  %a.elem.gep1633 = getelementptr i64, ptr %a.wr.data1632, i64 %var.load1618
  store i64 %var.load1619, ptr %a.elem.gep1633, align 8
  br label %a.wr.done1625

a.wr.err.null1623:                                ; preds = %a.after1609
  %arena.cur1634 = call ptr @dva_arena_current()
  %err.alloc1635 = call ptr @dva_arena_alloc(ptr %arena.cur1634, i64 56)
  %err.code.gep1636 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1635, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1636, align 8
  %err.msg.gep1637 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1635, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep1637, align 8
  %err.file.gep1638 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1635, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep1638, align 8
  %err.line.gep1639 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1635, i32 0, i32 3
  store i64 0, ptr %err.line.gep1639, align 8
  %err.col.gep1640 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1635, i32 0, i32 4
  store i64 0, ptr %err.col.gep1640, align 8
  %err.ctx.gep1641 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1635, i32 0, i32 5
  %err.ctx0.gep1642 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1641, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1642, align 8
  %err.ctx1.gep1643 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1641, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1643, align 8
  br label %a.wr.done1625

a.wr.err.oob1624:                                 ; preds = %a.wr.check1621
  %arena.cur1644 = call ptr @dva_arena_current()
  %err.alloc1645 = call ptr @dva_arena_alloc(ptr %arena.cur1644, i64 56)
  %err.code.gep1646 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1645, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1646, align 8
  %err.msg.gep1647 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1645, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep1647, align 8
  %err.file.gep1648 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1645, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep1648, align 8
  %err.line.gep1649 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1645, i32 0, i32 3
  store i64 0, ptr %err.line.gep1649, align 8
  %err.col.gep1650 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1645, i32 0, i32 4
  store i64 0, ptr %err.col.gep1650, align 8
  %err.ctx.gep1651 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1645, i32 0, i32 5
  %err.ctx0.gep1652 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1651, i32 0, i32 0
  store i64 %var.load1618, ptr %err.ctx0.gep1652, align 8
  %err.ctx1.gep1653 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1651, i32 0, i32 1
  store i64 %a.wr.len1627, ptr %err.ctx1.gep1653, align 8
  br label %a.wr.done1625

a.wr.done1625:                                    ; preds = %a.wr.err.oob1624, %a.wr.err.null1623, %a.wr.ok1622
  %a.wr.niche1654 = phi ptr [ null, %a.wr.ok1622 ], [ %err.alloc1635, %a.wr.err.null1623 ], [ %err.alloc1645, %a.wr.err.oob1624 ]
  %niche.eq.null1655 = icmp eq ptr %a.wr.niche1654, null
  br i1 %niche.eq.null1655, label %choice.then1656, label %choice.else1657

choice.then1656:                                  ; preds = %a.wr.done1625
  br label %choice.exit1658

choice.else1657:                                  ; preds = %a.wr.done1625
  store ptr %a.wr.niche1654, ptr %var._1659, align 8
  store ptr %a.wr.niche1654, ptr %var._1660, align 8
  store ptr %a.wr.niche1654, ptr %var._1661, align 8
  %err.code.gep1662 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1654, i32 0, i32 0
  %err.code1663 = load i64, ptr %err.code.gep1662, align 8
  %err.msg.gep1664 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1654, i32 0, i32 1
  %err.msg.struct1665 = load ptr, ptr %err.msg.gep1664, align 8
  %err.file.gep1666 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1654, i32 0, i32 2
  %err.file.struct1667 = load ptr, ptr %err.file.gep1666, align 8
  %err.line.gep1668 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1654, i32 0, i32 3
  %err.line1669 = load i64, ptr %err.line.gep1668, align 8
  %err.col.gep1670 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1654, i32 0, i32 4
  %err.col1671 = load i64, ptr %err.col.gep1670, align 8
  %err.msg.len1672 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1665, i32 0, i32 0
  %err.msg.len1673 = load i64, ptr %err.msg.len1672, align 8
  %err.msg.len1674 = and i64 %err.msg.len1673, 281474976710655
  %str.tag1675 = lshr i64 %err.msg.len1673, 48
  %str.immortal1676 = icmp eq i64 %str.tag1675, 0
  br i1 %str.immortal1676, label %str_ok1678, label %str_gen_check1677

choice.exit1658:                                  ; preds = %err.abort1705, %choice.then1656
  %var.load1706 = load ptr, ptr %var.canon_stack, align 8
  %a.load1707 = load ptr, ptr %var.canon_stack, align 8
  %a.null1708 = icmp eq ptr %a.load1707, null
  br i1 %a.null1708, label %a.create1709, label %a.after1710

str_gen_check1677:                                ; preds = %choice.else1657
  %arena.cur1680 = call ptr @dva_arena_current()
  %tag.valid1681 = call i1 @dva_arena_validate_tag(ptr %arena.cur1680, i64 %str.tag1675)
  br i1 %tag.valid1681, label %str_ok1678, label %str_stale1679

str_ok1678:                                       ; preds = %str_stale1679, %str_gen_check1677, %choice.else1657
  %err.msg.len321682 = trunc i64 %err.msg.len1674 to i32
  %err.msg.data1683 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1665, i32 0, i32 1
  %err.msg.data1684 = load ptr, ptr %err.msg.data1683, align 8
  %err.file.len1685 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1667, i32 0, i32 0
  %err.file.len1686 = load i64, ptr %err.file.len1685, align 8
  %err.file.len1687 = and i64 %err.file.len1686, 281474976710655
  %str.tag1688 = lshr i64 %err.file.len1686, 48
  %str.immortal1689 = icmp eq i64 %str.tag1688, 0
  br i1 %str.immortal1689, label %str_ok1691, label %str_gen_check1690

str_stale1679:                                    ; preds = %str_gen_check1677
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1678

str_gen_check1690:                                ; preds = %str_ok1678
  %arena.cur1693 = call ptr @dva_arena_current()
  %tag.valid1694 = call i1 @dva_arena_validate_tag(ptr %arena.cur1693, i64 %str.tag1688)
  br i1 %tag.valid1694, label %str_ok1691, label %str_stale1692

str_ok1691:                                       ; preds = %str_stale1692, %str_gen_check1690, %str_ok1678
  %err.file.len321695 = trunc i64 %err.file.len1687 to i32
  %err.file.data1696 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1667, i32 0, i32 1
  %err.file.data1697 = load ptr, ptr %err.file.data1696, align 8
  %err.thread.rec1698 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1699 = icmp ne ptr %err.thread.rec1698, null
  br i1 %err.is.thread1699, label %err.thread1700, label %err.normal1701

str_stale1692:                                    ; preds = %str_gen_check1690
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1691

err.thread1700:                                   ; preds = %str_ok1691
  %err.haserr.gep1702 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1698, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1702, align 8
  %err.err.gep1703 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1698, i32 0, i32 7
  store ptr %a.wr.niche1654, ptr %err.err.gep1703, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1701:                                   ; preds = %str_ok1691
  %err.panic.printf1704 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1663, i32 %err.msg.len321682, ptr %err.msg.data1684, i32 %err.file.len321695, ptr %err.file.data1697, i64 %err.line1669, i64 %err.col1671)
  call void @exit(i32 1)
  unreachable

err.abort1705:                                    ; No predecessors!
  br label %choice.exit1658

a.create1709:                                     ; preds = %choice.exit1658
  %arena.cur1711 = call ptr @dva_arena_current()
  %a.create1712 = call ptr @dva_arena_alloc(ptr %arena.cur1711, i64 24)
  %arena.cur1713 = call ptr @dva_arena_current()
  %a.buf1714 = call ptr @dva_arena_alloc(ptr %arena.cur1713, i64 128)
  %a.len.gep1715 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1712, i32 0, i32 0
  store i64 0, ptr %a.len.gep1715, align 8
  %a.data.gep1716 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1712, i32 0, i32 1
  store ptr %a.buf1714, ptr %a.data.gep1716, align 8
  %a.cap.gep1717 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1712, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1717, align 8
  store ptr %a.create1712, ptr %var.canon_stack, align 8
  br label %a.after1710

a.after1710:                                      ; preds = %a.create1709, %choice.exit1658
  %a.load21718 = load ptr, ptr %var.canon_stack, align 8
  %var.load1719 = load i64, ptr %"var.top'", align 8
  %var.load1720 = load i64, ptr %var.new_canon1499, align 8
  %a.wr.nonnull1721 = icmp ne ptr %a.load21718, null
  br i1 %a.wr.nonnull1721, label %a.wr.check1722, label %a.wr.err.null1724

a.wr.check1722:                                   ; preds = %a.after1710
  %a.wr.len1727 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21718, i32 0, i32 0
  %a.wr.len1728 = load i64, ptr %a.wr.len1727, align 8
  %a.wr.ge01729 = icmp sge i64 %var.load1719, 0
  %a.wr.lt1730 = icmp slt i64 %var.load1719, %a.wr.len1728
  %a.wr.bounds1731 = and i1 %a.wr.ge01729, %a.wr.lt1730
  br i1 %a.wr.bounds1731, label %a.wr.ok1723, label %a.wr.err.oob1725

a.wr.ok1723:                                      ; preds = %a.wr.check1722
  %a.wr.data1732 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21718, i32 0, i32 1
  %a.wr.data1733 = load ptr, ptr %a.wr.data1732, align 8
  %a.elem.gep1734 = getelementptr i64, ptr %a.wr.data1733, i64 %var.load1719
  store i64 %var.load1720, ptr %a.elem.gep1734, align 8
  br label %a.wr.done1726

a.wr.err.null1724:                                ; preds = %a.after1710
  %arena.cur1735 = call ptr @dva_arena_current()
  %err.alloc1736 = call ptr @dva_arena_alloc(ptr %arena.cur1735, i64 56)
  %err.code.gep1737 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1736, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1737, align 8
  %err.msg.gep1738 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1736, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep1738, align 8
  %err.file.gep1739 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1736, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep1739, align 8
  %err.line.gep1740 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1736, i32 0, i32 3
  store i64 0, ptr %err.line.gep1740, align 8
  %err.col.gep1741 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1736, i32 0, i32 4
  store i64 0, ptr %err.col.gep1741, align 8
  %err.ctx.gep1742 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1736, i32 0, i32 5
  %err.ctx0.gep1743 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1742, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1743, align 8
  %err.ctx1.gep1744 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1742, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1744, align 8
  br label %a.wr.done1726

a.wr.err.oob1725:                                 ; preds = %a.wr.check1722
  %arena.cur1745 = call ptr @dva_arena_current()
  %err.alloc1746 = call ptr @dva_arena_alloc(ptr %arena.cur1745, i64 56)
  %err.code.gep1747 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1746, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1747, align 8
  %err.msg.gep1748 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1746, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep1748, align 8
  %err.file.gep1749 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1746, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep1749, align 8
  %err.line.gep1750 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1746, i32 0, i32 3
  store i64 0, ptr %err.line.gep1750, align 8
  %err.col.gep1751 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1746, i32 0, i32 4
  store i64 0, ptr %err.col.gep1751, align 8
  %err.ctx.gep1752 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1746, i32 0, i32 5
  %err.ctx0.gep1753 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1752, i32 0, i32 0
  store i64 %var.load1719, ptr %err.ctx0.gep1753, align 8
  %err.ctx1.gep1754 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1752, i32 0, i32 1
  store i64 %a.wr.len1728, ptr %err.ctx1.gep1754, align 8
  br label %a.wr.done1726

a.wr.done1726:                                    ; preds = %a.wr.err.oob1725, %a.wr.err.null1724, %a.wr.ok1723
  %a.wr.niche1755 = phi ptr [ null, %a.wr.ok1723 ], [ %err.alloc1736, %a.wr.err.null1724 ], [ %err.alloc1746, %a.wr.err.oob1725 ]
  %niche.eq.null1756 = icmp eq ptr %a.wr.niche1755, null
  br i1 %niche.eq.null1756, label %choice.then1757, label %choice.else1758

choice.then1757:                                  ; preds = %a.wr.done1726
  br label %choice.exit1759

choice.else1758:                                  ; preds = %a.wr.done1726
  store ptr %a.wr.niche1755, ptr %var._1760, align 8
  store ptr %a.wr.niche1755, ptr %var._1761, align 8
  store ptr %a.wr.niche1755, ptr %var._1762, align 8
  %err.code.gep1763 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1755, i32 0, i32 0
  %err.code1764 = load i64, ptr %err.code.gep1763, align 8
  %err.msg.gep1765 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1755, i32 0, i32 1
  %err.msg.struct1766 = load ptr, ptr %err.msg.gep1765, align 8
  %err.file.gep1767 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1755, i32 0, i32 2
  %err.file.struct1768 = load ptr, ptr %err.file.gep1767, align 8
  %err.line.gep1769 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1755, i32 0, i32 3
  %err.line1770 = load i64, ptr %err.line.gep1769, align 8
  %err.col.gep1771 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1755, i32 0, i32 4
  %err.col1772 = load i64, ptr %err.col.gep1771, align 8
  %err.msg.len1773 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1766, i32 0, i32 0
  %err.msg.len1774 = load i64, ptr %err.msg.len1773, align 8
  %err.msg.len1775 = and i64 %err.msg.len1774, 281474976710655
  %str.tag1776 = lshr i64 %err.msg.len1774, 48
  %str.immortal1777 = icmp eq i64 %str.tag1776, 0
  br i1 %str.immortal1777, label %str_ok1779, label %str_gen_check1778

choice.exit1759:                                  ; preds = %err.abort1806, %choice.then1757
  %var.load1807 = load ptr, ptr %var.body_stack, align 8
  %a.load1808 = load ptr, ptr %var.body_stack, align 8
  %a.null1809 = icmp eq ptr %a.load1808, null
  br i1 %a.null1809, label %a.create1810, label %a.after1811

str_gen_check1778:                                ; preds = %choice.else1758
  %arena.cur1781 = call ptr @dva_arena_current()
  %tag.valid1782 = call i1 @dva_arena_validate_tag(ptr %arena.cur1781, i64 %str.tag1776)
  br i1 %tag.valid1782, label %str_ok1779, label %str_stale1780

str_ok1779:                                       ; preds = %str_stale1780, %str_gen_check1778, %choice.else1758
  %err.msg.len321783 = trunc i64 %err.msg.len1775 to i32
  %err.msg.data1784 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1766, i32 0, i32 1
  %err.msg.data1785 = load ptr, ptr %err.msg.data1784, align 8
  %err.file.len1786 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1768, i32 0, i32 0
  %err.file.len1787 = load i64, ptr %err.file.len1786, align 8
  %err.file.len1788 = and i64 %err.file.len1787, 281474976710655
  %str.tag1789 = lshr i64 %err.file.len1787, 48
  %str.immortal1790 = icmp eq i64 %str.tag1789, 0
  br i1 %str.immortal1790, label %str_ok1792, label %str_gen_check1791

str_stale1780:                                    ; preds = %str_gen_check1778
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1779

str_gen_check1791:                                ; preds = %str_ok1779
  %arena.cur1794 = call ptr @dva_arena_current()
  %tag.valid1795 = call i1 @dva_arena_validate_tag(ptr %arena.cur1794, i64 %str.tag1789)
  br i1 %tag.valid1795, label %str_ok1792, label %str_stale1793

str_ok1792:                                       ; preds = %str_stale1793, %str_gen_check1791, %str_ok1779
  %err.file.len321796 = trunc i64 %err.file.len1788 to i32
  %err.file.data1797 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1768, i32 0, i32 1
  %err.file.data1798 = load ptr, ptr %err.file.data1797, align 8
  %err.thread.rec1799 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1800 = icmp ne ptr %err.thread.rec1799, null
  br i1 %err.is.thread1800, label %err.thread1801, label %err.normal1802

str_stale1793:                                    ; preds = %str_gen_check1791
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1792

err.thread1801:                                   ; preds = %str_ok1792
  %err.haserr.gep1803 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1799, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1803, align 8
  %err.err.gep1804 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1799, i32 0, i32 7
  store ptr %a.wr.niche1755, ptr %err.err.gep1804, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1802:                                   ; preds = %str_ok1792
  %err.panic.printf1805 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1764, i32 %err.msg.len321783, ptr %err.msg.data1785, i32 %err.file.len321796, ptr %err.file.data1798, i64 %err.line1770, i64 %err.col1772)
  call void @exit(i32 1)
  unreachable

err.abort1806:                                    ; No predecessors!
  br label %choice.exit1759

a.create1810:                                     ; preds = %choice.exit1759
  %arena.cur1812 = call ptr @dva_arena_current()
  %a.create1813 = call ptr @dva_arena_alloc(ptr %arena.cur1812, i64 24)
  %arena.cur1814 = call ptr @dva_arena_current()
  %a.buf1815 = call ptr @dva_arena_alloc(ptr %arena.cur1814, i64 128)
  %a.len.gep1816 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1813, i32 0, i32 0
  store i64 0, ptr %a.len.gep1816, align 8
  %a.data.gep1817 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1813, i32 0, i32 1
  store ptr %a.buf1815, ptr %a.data.gep1817, align 8
  %a.cap.gep1818 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1813, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1818, align 8
  store ptr %a.create1813, ptr %var.body_stack, align 8
  br label %a.after1811

a.after1811:                                      ; preds = %a.create1810, %choice.exit1759
  %a.load21819 = load ptr, ptr %var.body_stack, align 8
  %var.load1820 = load i64, ptr %"var.top'", align 8
  %var.load1821 = load ptr, ptr %var.cur_code, align 8
  %slot.p2i1822 = ptrtoint ptr %var.load1821 to i64
  %a.wr.nonnull1823 = icmp ne ptr %a.load21819, null
  br i1 %a.wr.nonnull1823, label %a.wr.check1824, label %a.wr.err.null1826

a.wr.check1824:                                   ; preds = %a.after1811
  %a.wr.len1829 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21819, i32 0, i32 0
  %a.wr.len1830 = load i64, ptr %a.wr.len1829, align 8
  %a.wr.ge01831 = icmp sge i64 %var.load1820, 0
  %a.wr.lt1832 = icmp slt i64 %var.load1820, %a.wr.len1830
  %a.wr.bounds1833 = and i1 %a.wr.ge01831, %a.wr.lt1832
  br i1 %a.wr.bounds1833, label %a.wr.ok1825, label %a.wr.err.oob1827

a.wr.ok1825:                                      ; preds = %a.wr.check1824
  %a.wr.data1834 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21819, i32 0, i32 1
  %a.wr.data1835 = load ptr, ptr %a.wr.data1834, align 8
  %a.elem.gep1836 = getelementptr i64, ptr %a.wr.data1835, i64 %var.load1820
  store i64 %slot.p2i1822, ptr %a.elem.gep1836, align 8
  br label %a.wr.done1828

a.wr.err.null1826:                                ; preds = %a.after1811
  %arena.cur1837 = call ptr @dva_arena_current()
  %err.alloc1838 = call ptr @dva_arena_alloc(ptr %arena.cur1837, i64 56)
  %err.code.gep1839 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1838, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1839, align 8
  %err.msg.gep1840 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1838, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep1840, align 8
  %err.file.gep1841 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1838, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep1841, align 8
  %err.line.gep1842 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1838, i32 0, i32 3
  store i64 0, ptr %err.line.gep1842, align 8
  %err.col.gep1843 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1838, i32 0, i32 4
  store i64 0, ptr %err.col.gep1843, align 8
  %err.ctx.gep1844 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1838, i32 0, i32 5
  %err.ctx0.gep1845 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1844, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1845, align 8
  %err.ctx1.gep1846 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1844, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1846, align 8
  br label %a.wr.done1828

a.wr.err.oob1827:                                 ; preds = %a.wr.check1824
  %arena.cur1847 = call ptr @dva_arena_current()
  %err.alloc1848 = call ptr @dva_arena_alloc(ptr %arena.cur1847, i64 56)
  %err.code.gep1849 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1848, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1849, align 8
  %err.msg.gep1850 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1848, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep1850, align 8
  %err.file.gep1851 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1848, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep1851, align 8
  %err.line.gep1852 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1848, i32 0, i32 3
  store i64 0, ptr %err.line.gep1852, align 8
  %err.col.gep1853 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1848, i32 0, i32 4
  store i64 0, ptr %err.col.gep1853, align 8
  %err.ctx.gep1854 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1848, i32 0, i32 5
  %err.ctx0.gep1855 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1854, i32 0, i32 0
  store i64 %var.load1820, ptr %err.ctx0.gep1855, align 8
  %err.ctx1.gep1856 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1854, i32 0, i32 1
  store i64 %a.wr.len1830, ptr %err.ctx1.gep1856, align 8
  br label %a.wr.done1828

a.wr.done1828:                                    ; preds = %a.wr.err.oob1827, %a.wr.err.null1826, %a.wr.ok1825
  %a.wr.niche1857 = phi ptr [ null, %a.wr.ok1825 ], [ %err.alloc1838, %a.wr.err.null1826 ], [ %err.alloc1848, %a.wr.err.oob1827 ]
  %niche.eq.null1858 = icmp eq ptr %a.wr.niche1857, null
  br i1 %niche.eq.null1858, label %choice.then1859, label %choice.else1860

choice.then1859:                                  ; preds = %a.wr.done1828
  br label %choice.exit1861

choice.else1860:                                  ; preds = %a.wr.done1828
  store ptr %a.wr.niche1857, ptr %var._1862, align 8
  store ptr %a.wr.niche1857, ptr %var._1863, align 8
  store ptr %a.wr.niche1857, ptr %var._1864, align 8
  %err.code.gep1865 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1857, i32 0, i32 0
  %err.code1866 = load i64, ptr %err.code.gep1865, align 8
  %err.msg.gep1867 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1857, i32 0, i32 1
  %err.msg.struct1868 = load ptr, ptr %err.msg.gep1867, align 8
  %err.file.gep1869 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1857, i32 0, i32 2
  %err.file.struct1870 = load ptr, ptr %err.file.gep1869, align 8
  %err.line.gep1871 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1857, i32 0, i32 3
  %err.line1872 = load i64, ptr %err.line.gep1871, align 8
  %err.col.gep1873 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1857, i32 0, i32 4
  %err.col1874 = load i64, ptr %err.col.gep1873, align 8
  %err.msg.len1875 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1868, i32 0, i32 0
  %err.msg.len1876 = load i64, ptr %err.msg.len1875, align 8
  %err.msg.len1877 = and i64 %err.msg.len1876, 281474976710655
  %str.tag1878 = lshr i64 %err.msg.len1876, 48
  %str.immortal1879 = icmp eq i64 %str.tag1878, 0
  br i1 %str.immortal1879, label %str_ok1881, label %str_gen_check1880

choice.exit1861:                                  ; preds = %err.abort1908, %choice.then1859
  br label %choice.exit1519

str_gen_check1880:                                ; preds = %choice.else1860
  %arena.cur1883 = call ptr @dva_arena_current()
  %tag.valid1884 = call i1 @dva_arena_validate_tag(ptr %arena.cur1883, i64 %str.tag1878)
  br i1 %tag.valid1884, label %str_ok1881, label %str_stale1882

str_ok1881:                                       ; preds = %str_stale1882, %str_gen_check1880, %choice.else1860
  %err.msg.len321885 = trunc i64 %err.msg.len1877 to i32
  %err.msg.data1886 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1868, i32 0, i32 1
  %err.msg.data1887 = load ptr, ptr %err.msg.data1886, align 8
  %err.file.len1888 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1870, i32 0, i32 0
  %err.file.len1889 = load i64, ptr %err.file.len1888, align 8
  %err.file.len1890 = and i64 %err.file.len1889, 281474976710655
  %str.tag1891 = lshr i64 %err.file.len1889, 48
  %str.immortal1892 = icmp eq i64 %str.tag1891, 0
  br i1 %str.immortal1892, label %str_ok1894, label %str_gen_check1893

str_stale1882:                                    ; preds = %str_gen_check1880
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1881

str_gen_check1893:                                ; preds = %str_ok1881
  %arena.cur1896 = call ptr @dva_arena_current()
  %tag.valid1897 = call i1 @dva_arena_validate_tag(ptr %arena.cur1896, i64 %str.tag1891)
  br i1 %tag.valid1897, label %str_ok1894, label %str_stale1895

str_ok1894:                                       ; preds = %str_stale1895, %str_gen_check1893, %str_ok1881
  %err.file.len321898 = trunc i64 %err.file.len1890 to i32
  %err.file.data1899 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1870, i32 0, i32 1
  %err.file.data1900 = load ptr, ptr %err.file.data1899, align 8
  %err.thread.rec1901 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1902 = icmp ne ptr %err.thread.rec1901, null
  br i1 %err.is.thread1902, label %err.thread1903, label %err.normal1904

str_stale1895:                                    ; preds = %str_gen_check1893
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1894

err.thread1903:                                   ; preds = %str_ok1894
  %err.haserr.gep1905 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1901, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1905, align 8
  %err.err.gep1906 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1901, i32 0, i32 7
  store ptr %a.wr.niche1857, ptr %err.err.gep1906, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1904:                                   ; preds = %str_ok1894
  %err.panic.printf1907 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1866, i32 %err.msg.len321885, ptr %err.msg.data1887, i32 %err.file.len321898, ptr %err.file.data1900, i64 %err.line1872, i64 %err.col1874)
  call void @exit(i32 1)
  unreachable

err.abort1908:                                    ; No predecessors!
  br label %choice.exit1861

a.create1914:                                     ; preds = %choice.else1339
  %arena.cur1916 = call ptr @dva_arena_current()
  %a.create1917 = call ptr @dva_arena_alloc(ptr %arena.cur1916, i64 24)
  %arena.cur1918 = call ptr @dva_arena_current()
  %a.buf1919 = call ptr @dva_arena_alloc(ptr %arena.cur1918, i64 128)
  %a.len.gep1920 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1917, i32 0, i32 0
  store i64 0, ptr %a.len.gep1920, align 8
  %a.data.gep1921 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1917, i32 0, i32 1
  store ptr %a.buf1919, ptr %a.data.gep1921, align 8
  %a.cap.gep1922 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1917, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1922, align 8
  store ptr %a.create1917, ptr %var.body_stack, align 8
  br label %a.after1915

a.after1915:                                      ; preds = %a.create1914, %choice.else1339
  %a.load21923 = load ptr, ptr %var.body_stack, align 8
  %var.load1924 = load i64, ptr %"var.top'", align 8
  %subtmp1925 = sub i64 %var.load1924, 1
  %var.load1926 = load ptr, ptr %var.cur_code, align 8
  %slot.p2i1927 = ptrtoint ptr %var.load1926 to i64
  %a.wr.nonnull1928 = icmp ne ptr %a.load21923, null
  br i1 %a.wr.nonnull1928, label %a.wr.check1929, label %a.wr.err.null1931

a.wr.check1929:                                   ; preds = %a.after1915
  %a.wr.len1934 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21923, i32 0, i32 0
  %a.wr.len1935 = load i64, ptr %a.wr.len1934, align 8
  %a.wr.ge01936 = icmp sge i64 %subtmp1925, 0
  %a.wr.lt1937 = icmp slt i64 %subtmp1925, %a.wr.len1935
  %a.wr.bounds1938 = and i1 %a.wr.ge01936, %a.wr.lt1937
  br i1 %a.wr.bounds1938, label %a.wr.ok1930, label %a.wr.err.oob1932

a.wr.ok1930:                                      ; preds = %a.wr.check1929
  %a.wr.data1939 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21923, i32 0, i32 1
  %a.wr.data1940 = load ptr, ptr %a.wr.data1939, align 8
  %a.elem.gep1941 = getelementptr i64, ptr %a.wr.data1940, i64 %subtmp1925
  store i64 %slot.p2i1927, ptr %a.elem.gep1941, align 8
  br label %a.wr.done1933

a.wr.err.null1931:                                ; preds = %a.after1915
  %arena.cur1942 = call ptr @dva_arena_current()
  %err.alloc1943 = call ptr @dva_arena_alloc(ptr %arena.cur1942, i64 56)
  %err.code.gep1944 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1943, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1944, align 8
  %err.msg.gep1945 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1943, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep1945, align 8
  %err.file.gep1946 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1943, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep1946, align 8
  %err.line.gep1947 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1943, i32 0, i32 3
  store i64 0, ptr %err.line.gep1947, align 8
  %err.col.gep1948 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1943, i32 0, i32 4
  store i64 0, ptr %err.col.gep1948, align 8
  %err.ctx.gep1949 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1943, i32 0, i32 5
  %err.ctx0.gep1950 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1949, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1950, align 8
  %err.ctx1.gep1951 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1949, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1951, align 8
  br label %a.wr.done1933

a.wr.err.oob1932:                                 ; preds = %a.wr.check1929
  %arena.cur1952 = call ptr @dva_arena_current()
  %err.alloc1953 = call ptr @dva_arena_alloc(ptr %arena.cur1952, i64 56)
  %err.code.gep1954 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1953, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1954, align 8
  %err.msg.gep1955 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1953, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep1955, align 8
  %err.file.gep1956 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1953, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep1956, align 8
  %err.line.gep1957 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1953, i32 0, i32 3
  store i64 0, ptr %err.line.gep1957, align 8
  %err.col.gep1958 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1953, i32 0, i32 4
  store i64 0, ptr %err.col.gep1958, align 8
  %err.ctx.gep1959 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1953, i32 0, i32 5
  %err.ctx0.gep1960 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1959, i32 0, i32 0
  store i64 %subtmp1925, ptr %err.ctx0.gep1960, align 8
  %err.ctx1.gep1961 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1959, i32 0, i32 1
  store i64 %a.wr.len1935, ptr %err.ctx1.gep1961, align 8
  br label %a.wr.done1933

a.wr.done1933:                                    ; preds = %a.wr.err.oob1932, %a.wr.err.null1931, %a.wr.ok1930
  %a.wr.niche1962 = phi ptr [ null, %a.wr.ok1930 ], [ %err.alloc1943, %a.wr.err.null1931 ], [ %err.alloc1953, %a.wr.err.oob1932 ]
  %niche.eq.null1963 = icmp eq ptr %a.wr.niche1962, null
  br i1 %niche.eq.null1963, label %choice.then1964, label %choice.else1965

choice.then1964:                                  ; preds = %a.wr.done1933
  br label %choice.exit1966

choice.else1965:                                  ; preds = %a.wr.done1933
  store ptr %a.wr.niche1962, ptr %var._1967, align 8
  store ptr %a.wr.niche1962, ptr %var._1968, align 8
  store ptr %a.wr.niche1962, ptr %var._1969, align 8
  %err.code.gep1970 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1962, i32 0, i32 0
  %err.code1971 = load i64, ptr %err.code.gep1970, align 8
  %err.msg.gep1972 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1962, i32 0, i32 1
  %err.msg.struct1973 = load ptr, ptr %err.msg.gep1972, align 8
  %err.file.gep1974 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1962, i32 0, i32 2
  %err.file.struct1975 = load ptr, ptr %err.file.gep1974, align 8
  %err.line.gep1976 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1962, i32 0, i32 3
  %err.line1977 = load i64, ptr %err.line.gep1976, align 8
  %err.col.gep1978 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1962, i32 0, i32 4
  %err.col1979 = load i64, ptr %err.col.gep1978, align 8
  %err.msg.len1980 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1973, i32 0, i32 0
  %err.msg.len1981 = load i64, ptr %err.msg.len1980, align 8
  %err.msg.len1982 = and i64 %err.msg.len1981, 281474976710655
  %str.tag1983 = lshr i64 %err.msg.len1981, 48
  %str.immortal1984 = icmp eq i64 %str.tag1983, 0
  br i1 %str.immortal1984, label %str_ok1986, label %str_gen_check1985

choice.exit1966:                                  ; preds = %err.abort2013, %choice.then1964
  br label %choice.exit1340

str_gen_check1985:                                ; preds = %choice.else1965
  %arena.cur1988 = call ptr @dva_arena_current()
  %tag.valid1989 = call i1 @dva_arena_validate_tag(ptr %arena.cur1988, i64 %str.tag1983)
  br i1 %tag.valid1989, label %str_ok1986, label %str_stale1987

str_ok1986:                                       ; preds = %str_stale1987, %str_gen_check1985, %choice.else1965
  %err.msg.len321990 = trunc i64 %err.msg.len1982 to i32
  %err.msg.data1991 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1973, i32 0, i32 1
  %err.msg.data1992 = load ptr, ptr %err.msg.data1991, align 8
  %err.file.len1993 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1975, i32 0, i32 0
  %err.file.len1994 = load i64, ptr %err.file.len1993, align 8
  %err.file.len1995 = and i64 %err.file.len1994, 281474976710655
  %str.tag1996 = lshr i64 %err.file.len1994, 48
  %str.immortal1997 = icmp eq i64 %str.tag1996, 0
  br i1 %str.immortal1997, label %str_ok1999, label %str_gen_check1998

str_stale1987:                                    ; preds = %str_gen_check1985
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1986

str_gen_check1998:                                ; preds = %str_ok1986
  %arena.cur2001 = call ptr @dva_arena_current()
  %tag.valid2002 = call i1 @dva_arena_validate_tag(ptr %arena.cur2001, i64 %str.tag1996)
  br i1 %tag.valid2002, label %str_ok1999, label %str_stale2000

str_ok1999:                                       ; preds = %str_stale2000, %str_gen_check1998, %str_ok1986
  %err.file.len322003 = trunc i64 %err.file.len1995 to i32
  %err.file.data2004 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1975, i32 0, i32 1
  %err.file.data2005 = load ptr, ptr %err.file.data2004, align 8
  %err.thread.rec2006 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread2007 = icmp ne ptr %err.thread.rec2006, null
  br i1 %err.is.thread2007, label %err.thread2008, label %err.normal2009

str_stale2000:                                    ; preds = %str_gen_check1998
  %30 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1999

err.thread2008:                                   ; preds = %str_ok1999
  %err.haserr.gep2010 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec2006, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep2010, align 8
  %err.err.gep2011 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec2006, i32 0, i32 7
  store ptr %a.wr.niche1962, ptr %err.err.gep2011, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal2009:                                   ; preds = %str_ok1999
  %err.panic.printf2012 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1971, i32 %err.msg.len321990, ptr %err.msg.data1992, i32 %err.file.len322003, ptr %err.file.data2005, i64 %err.line1977, i64 %err.col1979)
  call void @exit(i32 1)
  unreachable

err.abort2013:                                    ; No predecessors!
  br label %choice.exit1966

a.create2017:                                     ; preds = %choice.exit656
  %arena.cur2019 = call ptr @dva_arena_current()
  %a.create2020 = call ptr @dva_arena_alloc(ptr %arena.cur2019, i64 24)
  %arena.cur2021 = call ptr @dva_arena_current()
  %a.buf2022 = call ptr @dva_arena_alloc(ptr %arena.cur2021, i64 128)
  %a.len.gep2023 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2020, i32 0, i32 0
  store i64 0, ptr %a.len.gep2023, align 8
  %a.data.gep2024 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2020, i32 0, i32 1
  store ptr %a.buf2022, ptr %a.data.gep2024, align 8
  %a.cap.gep2025 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2020, i32 0, i32 2
  store i64 16, ptr %a.cap.gep2025, align 8
  store ptr %a.create2020, ptr %var.canon_stack, align 8
  br label %a.after2018

a.after2018:                                      ; preds = %a.create2017, %choice.exit656
  %a.load22026 = load ptr, ptr %var.canon_stack, align 8
  %var.load2027 = load i64, ptr %"var.top'", align 8
  %subtmp2028 = sub i64 %var.load2027, 1
  %a.rd.nonnull2029 = icmp ne ptr %a.load22026, null
  br i1 %a.rd.nonnull2029, label %a.rd.check2030, label %a.rd.err.null2032

a.rd.check2030:                                   ; preds = %a.after2018
  %a.rd.len2035 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22026, i32 0, i32 0
  %a.rd.len2036 = load i64, ptr %a.rd.len2035, align 8
  %a.rd.ge02037 = icmp sge i64 %subtmp2028, 0
  %a.rd.lt2038 = icmp slt i64 %subtmp2028, %a.rd.len2036
  %a.rd.bounds2039 = and i1 %a.rd.ge02037, %a.rd.lt2038
  br i1 %a.rd.bounds2039, label %a.rd.ok2031, label %a.rd.err.oob2033

a.rd.ok2031:                                      ; preds = %a.rd.check2030
  %a.rd.data2040 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load22026, i32 0, i32 1
  %a.rd.data2041 = load ptr, ptr %a.rd.data2040, align 8
  %a.rd.elem.gep2042 = getelementptr i64, ptr %a.rd.data2041, i64 %subtmp2028
  %a.rd.elem2043 = load i64, ptr %a.rd.elem.gep2042, align 8
  br label %a.rd.done2034

a.rd.err.null2032:                                ; preds = %a.after2018
  %arena.cur2044 = call ptr @dva_arena_current()
  %err.alloc2045 = call ptr @dva_arena_alloc(ptr %arena.cur2044, i64 56)
  %err.code.gep2046 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc2045, i32 0, i32 0
  store i64 4011, ptr %err.code.gep2046, align 8
  %err.msg.gep2047 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc2045, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep2047, align 8
  %err.file.gep2048 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc2045, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep2048, align 8
  %err.line.gep2049 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc2045, i32 0, i32 3
  store i64 587, ptr %err.line.gep2049, align 8
  %err.col.gep2050 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc2045, i32 0, i32 4
  store i64 62, ptr %err.col.gep2050, align 8
  %err.ctx.gep2051 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc2045, i32 0, i32 5
  %err.ctx0.gep2052 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep2051, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep2052, align 8
  %err.ctx1.gep2053 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep2051, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep2053, align 8
  %err.p2i2054 = ptrtoint ptr %err.alloc2045 to i64
  br label %a.rd.done2034

a.rd.err.oob2033:                                 ; preds = %a.rd.check2030
  %arena.cur2055 = call ptr @dva_arena_current()
  %err.alloc2056 = call ptr @dva_arena_alloc(ptr %arena.cur2055, i64 56)
  %err.code.gep2057 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc2056, i32 0, i32 0
  store i64 4011, ptr %err.code.gep2057, align 8
  %err.msg.gep2058 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc2056, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep2058, align 8
  %err.file.gep2059 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc2056, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep2059, align 8
  %err.line.gep2060 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc2056, i32 0, i32 3
  store i64 587, ptr %err.line.gep2060, align 8
  %err.col.gep2061 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc2056, i32 0, i32 4
  store i64 62, ptr %err.col.gep2061, align 8
  %err.ctx.gep2062 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc2056, i32 0, i32 5
  %err.ctx0.gep2063 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep2062, i32 0, i32 0
  store i64 %subtmp2028, ptr %err.ctx0.gep2063, align 8
  %err.ctx1.gep2064 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep2062, i32 0, i32 1
  store i64 %a.rd.len2036, ptr %err.ctx1.gep2064, align 8
  %err.p2i2065 = ptrtoint ptr %err.alloc2056 to i64
  br label %a.rd.done2034

a.rd.done2034:                                    ; preds = %a.rd.err.oob2033, %a.rd.err.null2032, %a.rd.ok2031
  %a.rd.tag2066 = phi i1 [ true, %a.rd.ok2031 ], [ false, %a.rd.err.null2032 ], [ false, %a.rd.err.oob2033 ]
  %a.rd.pay2067 = phi i64 [ %a.rd.elem2043, %a.rd.ok2031 ], [ %err.p2i2054, %a.rd.err.null2032 ], [ %err.p2i2065, %a.rd.err.oob2033 ]
  %ram.tag2068 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag2066, 0
  %ram.pay2069 = insertvalue { i1, i64 } %ram.tag2068, i64 %a.rd.pay2067, 1
  %ram.tag2070 = extractvalue { i1, i64 } %ram.pay2069, 0
  br i1 %ram.tag2070, label %choice.then2071, label %choice.else2072

choice.then2071:                                  ; preds = %a.rd.done2034
  %ram.pay2074 = extractvalue { i1, i64 } %ram.pay2069, 1
  store i64 %ram.pay2074, ptr %var._2075, align 8
  br label %choice.exit2073

choice.else2072:                                  ; preds = %a.rd.done2034
  %ram.pay2076 = extractvalue { i1, i64 } %ram.pay2069, 1
  %pay.ptr2077 = inttoptr i64 %ram.pay2076 to ptr
  store ptr %pay.ptr2077, ptr %var._2078, align 8
  br label %choice.exit2073

choice.exit2073:                                  ; preds = %choice.else2072, %choice.then2071
  %choice.res2079 = phi i64 [ %ram.pay2074, %choice.then2071 ], [ 0, %choice.else2072 ]
  store i64 %choice.res2079, ptr %var.canon_indent, align 8
  %var.load2080 = load i64, ptr %var.canon_indent, align 8
  store i64 %var.load2080, ptr %"var.cur_canon_indent'", align 8
  %b.load2081 = load ptr, ptr %var.out, align 8
  %var.load2082 = load i64, ptr %var.canon_indent, align 8
  %call.res2083 = call ptr @"formatter::make_spaces"(i64 %var.load2082)
  %app.str.len2084 = getelementptr inbounds { i64, ptr }, ptr %call.res2083, i32 0, i32 0
  %app.str.len2085 = load i64, ptr %app.str.len2084, align 8
  %app.str.len2086 = and i64 %app.str.len2085, 281474976710655
  %str.tag2087 = lshr i64 %app.str.len2085, 48
  %str.immortal2088 = icmp eq i64 %str.tag2087, 0
  br i1 %str.immortal2088, label %str_ok2090, label %str_gen_check2089

str_gen_check2089:                                ; preds = %choice.exit2073
  %arena.cur2092 = call ptr @dva_arena_current()
  %tag.valid2093 = call i1 @dva_arena_validate_tag(ptr %arena.cur2092, i64 %str.tag2087)
  br i1 %tag.valid2093, label %str_ok2090, label %str_stale2091

str_ok2090:                                       ; preds = %str_stale2091, %str_gen_check2089, %choice.exit2073
  %b.app.cur.len2094 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2081, i32 0, i32 0
  %b.app.cur.len2095 = load i64, ptr %b.app.cur.len2094, align 8
  %b.app.new.len2096 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len2095, i64 %app.str.len2086)
  %sum2097 = extractvalue { i64, i1 } %b.app.new.len2096, 0
  %ovf2098 = extractvalue { i64, i1 } %b.app.new.len2096, 1
  br i1 %ovf2098, label %str_overflow_abort2100, label %b.app.new.len2099

str_stale2091:                                    ; preds = %str_gen_check2089
  %31 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok2090

b.app.new.len2099:                                ; preds = %str_overflow_abort2100, %str_ok2090
  %b.cap2101 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2081, i32 0, i32 2
  %b.cap2102 = load i64, ptr %b.cap2101, align 8
  %b.need.grow2103 = icmp slt i64 %b.cap2102, %sum2097
  br i1 %b.need.grow2103, label %b.grow22104, label %b.nogrow22105

str_overflow_abort2100:                           ; preds = %str_ok2090
  %32 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len2099

b.grow22104:                                      ; preds = %b.app.new.len2099
  %b.cap22107 = mul i64 %b.cap2102, 2
  %b.cap.small2108 = icmp slt i64 %b.cap22107, 16
  %b.cap.grow2109 = select i1 %b.cap.small2108, i64 16, i64 %b.cap22107
  %b.cap.need2110 = icmp slt i64 %b.cap.grow2109, %sum2097
  %b.new.cap2111 = select i1 %b.cap.need2110, i64 %sum2097, i64 %b.cap.grow2109
  %b.cur.len22112 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2081, i32 0, i32 0
  %b.cur.len22113 = load i64, ptr %b.cur.len22112, align 8
  %b.cur.data22114 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2081, i32 0, i32 1
  %b.cur.data22115 = load ptr, ptr %b.cur.data22114, align 8
  %b.new.buf.len22116 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap2111, i64 1)
  %sum2117 = extractvalue { i64, i1 } %b.new.buf.len22116, 0
  %ovf2118 = extractvalue { i64, i1 } %b.new.buf.len22116, 1
  br i1 %ovf2118, label %str_overflow_abort2120, label %b.new.buf.len22119

b.nogrow22105:                                    ; preds = %b.app.new.len2099
  br label %b.grow_done2106

b.grow_done2106:                                  ; preds = %b.nogrow22105, %b.new.buf.len22119
  %app.str.data2126 = getelementptr inbounds { i64, ptr }, ptr %call.res2083, i32 0, i32 1
  %app.str.data2127 = load ptr, ptr %app.str.data2126, align 8
  %b.app.data2128 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2081, i32 0, i32 1
  %b.app.data2129 = load ptr, ptr %b.app.data2128, align 8
  %b.app.dst2130 = getelementptr i8, ptr %b.app.data2129, i64 %b.app.cur.len2095
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst2130, ptr align 1 %app.str.data2127, i64 %app.str.len2086, i1 false)
  %b.app.nul2131 = getelementptr i8, ptr %b.app.data2129, i64 %sum2097
  store i8 0, ptr %b.app.nul2131, align 1
  %b.len.gep2132 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2081, i32 0, i32 0
  store i64 %sum2097, ptr %b.len.gep2132, align 8
  %b.load2133 = load ptr, ptr %var.out, align 8
  %var.load2134 = load ptr, ptr %var.body, align 8
  %call.res2135 = call ptr @"formatter::format_code_body"(ptr %var.load2134)
  %app.str.len2136 = getelementptr inbounds { i64, ptr }, ptr %call.res2135, i32 0, i32 0
  %app.str.len2137 = load i64, ptr %app.str.len2136, align 8
  %app.str.len2138 = and i64 %app.str.len2137, 281474976710655
  %str.tag2139 = lshr i64 %app.str.len2137, 48
  %str.immortal2140 = icmp eq i64 %str.tag2139, 0
  br i1 %str.immortal2140, label %str_ok2142, label %str_gen_check2141

b.new.buf.len22119:                               ; preds = %str_overflow_abort2120, %b.grow22104
  %arena.cur2121 = call ptr @dva_arena_current()
  %b.new.buf22122 = call ptr @dva_arena_alloc(ptr %arena.cur2121, i64 %sum2117)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf22122, ptr align 1 %b.cur.data22115, i64 %b.cur.len22113, i1 false)
  %b.grow2.nul2123 = getelementptr i8, ptr %b.new.buf22122, i64 %b.cur.len22113
  store i8 0, ptr %b.grow2.nul2123, align 1
  %b.new.data2.gep2124 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2081, i32 0, i32 1
  store ptr %b.new.buf22122, ptr %b.new.data2.gep2124, align 8
  %b.new.cap2.gep2125 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2081, i32 0, i32 2
  store i64 %b.new.cap2111, ptr %b.new.cap2.gep2125, align 8
  br label %b.grow_done2106

str_overflow_abort2120:                           ; preds = %b.grow22104
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len22119

str_gen_check2141:                                ; preds = %b.grow_done2106
  %arena.cur2144 = call ptr @dva_arena_current()
  %tag.valid2145 = call i1 @dva_arena_validate_tag(ptr %arena.cur2144, i64 %str.tag2139)
  br i1 %tag.valid2145, label %str_ok2142, label %str_stale2143

str_ok2142:                                       ; preds = %str_stale2143, %str_gen_check2141, %b.grow_done2106
  %b.app.cur.len2146 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2133, i32 0, i32 0
  %b.app.cur.len2147 = load i64, ptr %b.app.cur.len2146, align 8
  %b.app.new.len2148 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len2147, i64 %app.str.len2138)
  %sum2149 = extractvalue { i64, i1 } %b.app.new.len2148, 0
  %ovf2150 = extractvalue { i64, i1 } %b.app.new.len2148, 1
  br i1 %ovf2150, label %str_overflow_abort2152, label %b.app.new.len2151

str_stale2143:                                    ; preds = %str_gen_check2141
  %34 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok2142

b.app.new.len2151:                                ; preds = %str_overflow_abort2152, %str_ok2142
  %b.cap2153 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2133, i32 0, i32 2
  %b.cap2154 = load i64, ptr %b.cap2153, align 8
  %b.need.grow2155 = icmp slt i64 %b.cap2154, %sum2149
  br i1 %b.need.grow2155, label %b.grow22156, label %b.nogrow22157

str_overflow_abort2152:                           ; preds = %str_ok2142
  %35 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len2151

b.grow22156:                                      ; preds = %b.app.new.len2151
  %b.cap22159 = mul i64 %b.cap2154, 2
  %b.cap.small2160 = icmp slt i64 %b.cap22159, 16
  %b.cap.grow2161 = select i1 %b.cap.small2160, i64 16, i64 %b.cap22159
  %b.cap.need2162 = icmp slt i64 %b.cap.grow2161, %sum2149
  %b.new.cap2163 = select i1 %b.cap.need2162, i64 %sum2149, i64 %b.cap.grow2161
  %b.cur.len22164 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2133, i32 0, i32 0
  %b.cur.len22165 = load i64, ptr %b.cur.len22164, align 8
  %b.cur.data22166 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2133, i32 0, i32 1
  %b.cur.data22167 = load ptr, ptr %b.cur.data22166, align 8
  %b.new.buf.len22168 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap2163, i64 1)
  %sum2169 = extractvalue { i64, i1 } %b.new.buf.len22168, 0
  %ovf2170 = extractvalue { i64, i1 } %b.new.buf.len22168, 1
  br i1 %ovf2170, label %str_overflow_abort2172, label %b.new.buf.len22171

b.nogrow22157:                                    ; preds = %b.app.new.len2151
  br label %b.grow_done2158

b.grow_done2158:                                  ; preds = %b.nogrow22157, %b.new.buf.len22171
  %app.str.data2178 = getelementptr inbounds { i64, ptr }, ptr %call.res2135, i32 0, i32 1
  %app.str.data2179 = load ptr, ptr %app.str.data2178, align 8
  %b.app.data2180 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2133, i32 0, i32 1
  %b.app.data2181 = load ptr, ptr %b.app.data2180, align 8
  %b.app.dst2182 = getelementptr i8, ptr %b.app.data2181, i64 %b.app.cur.len2147
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst2182, ptr align 1 %app.str.data2179, i64 %app.str.len2138, i1 false)
  %b.app.nul2183 = getelementptr i8, ptr %b.app.data2181, i64 %sum2149
  store i8 0, ptr %b.app.nul2183, align 1
  %b.len.gep2184 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2133, i32 0, i32 0
  store i64 %sum2149, ptr %b.len.gep2184, align 8
  %b.load2185 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len2186 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2185, i32 0, i32 0
  %b.rn.cur.len2187 = load i64, ptr %b.rn.cur.len2186, align 8
  %b.rn.new.len2188 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len2187, i64 1)
  %sum2189 = extractvalue { i64, i1 } %b.rn.new.len2188, 0
  %ovf2190 = extractvalue { i64, i1 } %b.rn.new.len2188, 1
  br i1 %ovf2190, label %str_overflow_abort2192, label %b.rn.new.len2191

b.new.buf.len22171:                               ; preds = %str_overflow_abort2172, %b.grow22156
  %arena.cur2173 = call ptr @dva_arena_current()
  %b.new.buf22174 = call ptr @dva_arena_alloc(ptr %arena.cur2173, i64 %sum2169)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf22174, ptr align 1 %b.cur.data22167, i64 %b.cur.len22165, i1 false)
  %b.grow2.nul2175 = getelementptr i8, ptr %b.new.buf22174, i64 %b.cur.len22165
  store i8 0, ptr %b.grow2.nul2175, align 1
  %b.new.data2.gep2176 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2133, i32 0, i32 1
  store ptr %b.new.buf22174, ptr %b.new.data2.gep2176, align 8
  %b.new.cap2.gep2177 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2133, i32 0, i32 2
  store i64 %b.new.cap2163, ptr %b.new.cap2.gep2177, align 8
  br label %b.grow_done2158

str_overflow_abort2172:                           ; preds = %b.grow22156
  %36 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len22171

b.rn.new.len2191:                                 ; preds = %str_overflow_abort2192, %b.grow_done2158
  %b.cap2193 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2185, i32 0, i32 2
  %b.cap2194 = load i64, ptr %b.cap2193, align 8
  %b.need.grow2195 = icmp slt i64 %b.cap2194, %sum2189
  br i1 %b.need.grow2195, label %b.grow22196, label %b.nogrow22197

str_overflow_abort2192:                           ; preds = %b.grow_done2158
  %37 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len2191

b.grow22196:                                      ; preds = %b.rn.new.len2191
  %b.cap22199 = mul i64 %b.cap2194, 2
  %b.cap.small2200 = icmp slt i64 %b.cap22199, 16
  %b.cap.grow2201 = select i1 %b.cap.small2200, i64 16, i64 %b.cap22199
  %b.cap.need2202 = icmp slt i64 %b.cap.grow2201, %sum2189
  %b.new.cap2203 = select i1 %b.cap.need2202, i64 %sum2189, i64 %b.cap.grow2201
  %b.cur.len22204 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2185, i32 0, i32 0
  %b.cur.len22205 = load i64, ptr %b.cur.len22204, align 8
  %b.cur.data22206 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2185, i32 0, i32 1
  %b.cur.data22207 = load ptr, ptr %b.cur.data22206, align 8
  %b.new.buf.len22208 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap2203, i64 1)
  %sum2209 = extractvalue { i64, i1 } %b.new.buf.len22208, 0
  %ovf2210 = extractvalue { i64, i1 } %b.new.buf.len22208, 1
  br i1 %ovf2210, label %str_overflow_abort2212, label %b.new.buf.len22211

b.nogrow22197:                                    ; preds = %b.rn.new.len2191
  br label %b.grow_done2198

b.grow_done2198:                                  ; preds = %b.nogrow22197, %b.new.buf.len22211
  %b.rn.data2218 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2185, i32 0, i32 1
  %b.rn.data2219 = load ptr, ptr %b.rn.data2218, align 8
  %b.rn.dst2220 = getelementptr i8, ptr %b.rn.data2219, i64 %b.rn.cur.len2187
  br i1 true, label %br.b1.568, label %br.c2.568

b.new.buf.len22211:                               ; preds = %str_overflow_abort2212, %b.grow22196
  %arena.cur2213 = call ptr @dva_arena_current()
  %b.new.buf22214 = call ptr @dva_arena_alloc(ptr %arena.cur2213, i64 %sum2209)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf22214, ptr align 1 %b.cur.data22207, i64 %b.cur.len22205, i1 false)
  %b.grow2.nul2215 = getelementptr i8, ptr %b.new.buf22214, i64 %b.cur.len22205
  store i8 0, ptr %b.grow2.nul2215, align 1
  %b.new.data2.gep2216 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2185, i32 0, i32 1
  store ptr %b.new.buf22214, ptr %b.new.data2.gep2216, align 8
  %b.new.cap2.gep2217 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2185, i32 0, i32 2
  store i64 %b.new.cap2203, ptr %b.new.cap2.gep2217, align 8
  br label %b.grow_done2198

str_overflow_abort2212:                           ; preds = %b.grow22196
  %38 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len22211

br.b1.568:                                        ; preds = %b.grow_done2198
  store i8 10, ptr %b.rn.dst2220, align 1
  br label %br.done.568

br.c2.568:                                        ; preds = %b.grow_done2198
  br i1 true, label %br.b2.568, label %br.c3.568

br.b2.568:                                        ; preds = %br.c2.568
  store i8 -64, ptr %b.rn.dst2220, align 1
  %br.dst12221 = getelementptr i8, ptr %b.rn.dst2220, i64 1
  store i8 -118, ptr %br.dst12221, align 1
  br label %br.done.568

br.c3.568:                                        ; preds = %br.c2.568
  br i1 true, label %br.b3.568, label %br.b4.568

br.b3.568:                                        ; preds = %br.c3.568
  store i8 -32, ptr %b.rn.dst2220, align 1
  %br.dst1.32222 = getelementptr i8, ptr %b.rn.dst2220, i64 1
  store i8 -128, ptr %br.dst1.32222, align 1
  %br.dst2.32223 = getelementptr i8, ptr %b.rn.dst2220, i64 2
  store i8 -118, ptr %br.dst2.32223, align 1
  br label %br.done.568

br.b4.568:                                        ; preds = %br.c3.568
  store i8 -16, ptr %b.rn.dst2220, align 1
  %br.dst1.42224 = getelementptr i8, ptr %b.rn.dst2220, i64 1
  store i8 -128, ptr %br.dst1.42224, align 1
  %br.dst2.42225 = getelementptr i8, ptr %b.rn.dst2220, i64 2
  store i8 -128, ptr %br.dst2.42225, align 1
  %br.dst3.42226 = getelementptr i8, ptr %b.rn.dst2220, i64 3
  store i8 -118, ptr %br.dst3.42226, align 1
  br label %br.done.568

br.done.568:                                      ; preds = %br.b4.568, %br.b3.568, %br.b2.568, %br.b1.568
  %br.nul2227 = getelementptr i8, ptr %b.rn.data2219, i64 %sum2189
  store i8 0, ptr %br.nul2227, align 1
  %b.len.gep2228 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load2185, i32 0, i32 0
  store i64 %sum2189, ptr %b.len.gep2228, align 8
  br label %choice.exit227

b.freeze.check:                                   ; preds = %loop.exit.561
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data2233, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data2233, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data2233, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len2232, 1
  %arena.cur2234 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur2234, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data2233, i64 %b.freeze.len2232, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len2232
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.561
  %b.freeze.data2235 = phi ptr [ %b.freeze.data2233, %loop.exit.561 ], [ %b.freeze.data2233, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur2236 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur2236, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len2232, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data2235, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load2231, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load2231, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load2231, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.res, align 8
  %var.load2237 = load ptr, ptr %var.res, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load2237, i32 0, i32 0
  %str.len.query2238 = load i64, ptr %str.len.query, align 8
  %str.len.query2239 = and i64 %str.len.query2238, 281474976710655
  %str.tag2240 = lshr i64 %str.len.query2238, 48
  %str.immortal2241 = icmp eq i64 %str.tag2240, 0
  br i1 %str.immortal2241, label %str_ok2243, label %str_gen_check2242

str_gen_check2242:                                ; preds = %b.freeze.done
  %arena.cur2245 = call ptr @dva_arena_current()
  %tag.valid2246 = call i1 @dva_arena_validate_tag(ptr %arena.cur2245, i64 %str.tag2240)
  br i1 %tag.valid2246, label %str_ok2243, label %str_stale2244

str_ok2243:                                       ; preds = %str_stale2244, %str_gen_check2242, %b.freeze.done
  store i64 %str.len.query2239, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.569, align 8
  br label %loop.header.569

str_stale2244:                                    ; preds = %str_gen_check2242
  %39 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok2243

loop.header.569:                                  ; preds = %loop.latch.569, %str_ok2243
  %counter.load2247 = load i64, ptr %loop.idx.569, align 8
  br label %loop.body.569

loop.body.569:                                    ; preds = %loop.header.569
  %loop.rel.i2248 = sub i64 %counter.load2247, 0
  store i64 1, ptr %loop.step.569, align 8
  store i64 %loop.rel.i2248, ptr %var._i2249, align 8
  store i64 %counter.load2247, ptr %var._2250, align 8
  %var.load2251 = load i64, ptr %"var.end'", align 8
  %cmptmp2252 = icmp sgt i64 %var.load2251, 1
  br i1 %cmptmp2252, label %and.570.then, label %and.570.else

loop.exit.nat.569:                                ; No predecessors!
  br label %loop.exit.569

loop.latch.569:                                   ; preds = %choice.exit2293
  %step.val2296 = load i64, ptr %loop.step.569, align 8
  %loop.next2297 = add i64 %counter.load2247, %step.val2296
  store i64 %loop.next2297, ptr %loop.idx.569, align 8
  br label %loop.header.569

loop.exit.569:                                    ; preds = %choice.else2292, %loop.exit.nat.569
  %var.load2298 = load ptr, ptr %var.res, align 8
  %s.read.len2299 = getelementptr inbounds { i64, ptr }, ptr %var.load2298, i32 0, i32 0
  %s.read.len2300 = load i64, ptr %s.read.len2299, align 8
  %s.read.len2301 = and i64 %s.read.len2300, 281474976710655
  %str.tag2302 = lshr i64 %s.read.len2300, 48
  %str.immortal2303 = icmp eq i64 %str.tag2302, 0
  br i1 %str.immortal2303, label %str_ok2305, label %str_gen_check2304

and.570.then:                                     ; preds = %loop.body.569
  %var.load2253 = load ptr, ptr %var.res, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load2253, i32 0, i32 0
  %s.read.len2254 = load i64, ptr %s.read.len, align 8
  %s.read.len2255 = and i64 %s.read.len2254, 281474976710655
  %str.tag2256 = lshr i64 %s.read.len2254, 48
  %str.immortal2257 = icmp eq i64 %str.tag2256, 0
  br i1 %str.immortal2257, label %str_ok2259, label %str_gen_check2258

and.570.else:                                     ; preds = %loop.body.569
  br label %and.570.exit

and.570.exit:                                     ; preds = %and.570.else, %idx_ok
  %and.570.phi = phi i1 [ %cmptmp2266, %idx_ok ], [ %cmptmp2252, %and.570.else ]
  br i1 %and.570.phi, label %and.571.then, label %and.571.else

str_gen_check2258:                                ; preds = %and.570.then
  %arena.cur2261 = call ptr @dva_arena_current()
  %tag.valid2262 = call i1 @dva_arena_validate_tag(ptr %arena.cur2261, i64 %str.tag2256)
  br i1 %tag.valid2262, label %str_ok2259, label %str_stale2260

str_ok2259:                                       ; preds = %str_stale2260, %str_gen_check2258, %and.570.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load2253, i32 0, i32 1
  %s.read.data2263 = load ptr, ptr %s.read.data, align 8
  %var.load2264 = load i64, ptr %"var.end'", align 8
  %subtmp2265 = sub i64 %var.load2264, 1
  %idx.neg = icmp slt i64 %subtmp2265, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale2260:                                    ; preds = %str_gen_check2258
  %40 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok2259

idx_big_check:                                    ; preds = %str_ok2259
  %idx.big = icmp sge i64 %subtmp2265, %s.read.len2255
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data2263, i64 %subtmp2265
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp2266 = icmp eq i64 %s.byte.val, 10
  br label %and.570.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok2259
  %41 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.571.then:                                     ; preds = %and.570.exit
  %var.load2267 = load ptr, ptr %var.res, align 8
  %s.read.len2268 = getelementptr inbounds { i64, ptr }, ptr %var.load2267, i32 0, i32 0
  %s.read.len2269 = load i64, ptr %s.read.len2268, align 8
  %s.read.len2270 = and i64 %s.read.len2269, 281474976710655
  %str.tag2271 = lshr i64 %s.read.len2269, 48
  %str.immortal2272 = icmp eq i64 %str.tag2271, 0
  br i1 %str.immortal2272, label %str_ok2274, label %str_gen_check2273

and.571.else:                                     ; preds = %and.570.exit
  br label %and.571.exit

and.571.exit:                                     ; preds = %and.571.else, %idx_ok2284
  %and.571.phi = phi i1 [ %cmptmp2290, %idx_ok2284 ], [ %and.570.phi, %and.571.else ]
  br i1 %and.571.phi, label %choice.then2291, label %choice.else2292

str_gen_check2273:                                ; preds = %and.571.then
  %arena.cur2276 = call ptr @dva_arena_current()
  %tag.valid2277 = call i1 @dva_arena_validate_tag(ptr %arena.cur2276, i64 %str.tag2271)
  br i1 %tag.valid2277, label %str_ok2274, label %str_stale2275

str_ok2274:                                       ; preds = %str_stale2275, %str_gen_check2273, %and.571.then
  %s.read.data2278 = getelementptr inbounds { i64, ptr }, ptr %var.load2267, i32 0, i32 1
  %s.read.data2279 = load ptr, ptr %s.read.data2278, align 8
  %var.load2280 = load i64, ptr %"var.end'", align 8
  %subtmp2281 = sub i64 %var.load2280, 2
  %idx.neg2282 = icmp slt i64 %subtmp2281, 0
  br i1 %idx.neg2282, label %idx_oob2285, label %idx_big_check2283

str_stale2275:                                    ; preds = %str_gen_check2273
  %42 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok2274

idx_big_check2283:                                ; preds = %str_ok2274
  %idx.big2286 = icmp sge i64 %subtmp2281, %s.read.len2270
  br i1 %idx.big2286, label %idx_oob2285, label %idx_ok2284

idx_ok2284:                                       ; preds = %idx_oob2285, %idx_big_check2283
  %s.byte.gep2287 = getelementptr i8, ptr %s.read.data2279, i64 %subtmp2281
  %s.byte2288 = load i8, ptr %s.byte.gep2287, align 1
  %s.byte.val2289 = zext i8 %s.byte2288 to i64
  %cmptmp2290 = icmp eq i64 %s.byte.val2289, 10
  br label %and.571.exit

idx_oob2285:                                      ; preds = %idx_big_check2283, %str_ok2274
  %43 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok2284

choice.then2291:                                  ; preds = %and.571.exit
  %var.load2294 = load i64, ptr %"var.end'", align 8
  %subtmp2295 = sub i64 %var.load2294, 1
  store i64 %subtmp2295, ptr %"var.end'", align 8
  br label %choice.exit2293

choice.else2292:                                  ; preds = %and.571.exit
  br label %loop.exit.569

choice.exit2293:                                  ; preds = %choice.then2291
  br label %loop.latch.569

str_gen_check2304:                                ; preds = %loop.exit.569
  %arena.cur2307 = call ptr @dva_arena_current()
  %tag.valid2308 = call i1 @dva_arena_validate_tag(ptr %arena.cur2307, i64 %str.tag2302)
  br i1 %tag.valid2308, label %str_ok2305, label %str_stale2306

str_ok2305:                                       ; preds = %str_stale2306, %str_gen_check2304, %loop.exit.569
  %s.read.data2309 = getelementptr inbounds { i64, ptr }, ptr %var.load2298, i32 0, i32 1
  %s.read.data2310 = load ptr, ptr %s.read.data2309, align 8
  %var.load2311 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len2301, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len2301
  %final.start = select i1 %start.gt.len, i64 %s.read.len2301, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load2311, 0
  %rel.end = add i64 %s.read.len2301, %var.load2311
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load2311
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len2301
  %final.end = select i1 %end.gt.len, i64 %s.read.len2301, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data2310, i64 %final.start
  %arena.cur2312 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur2312, i64 16)
  %str.build.len.gep2313 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep2313, align 8
  %str.build.data.gep2314 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep2314, align 8
  ret ptr %str.view

str_stale2306:                                    ; preds = %str_gen_check2304
  %44 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok2305
}

define ptr @"formatter::format_safe_fallback"(ptr %0) #1 {
entry:
  %var._80 = alloca i64, align 8
  %var._i79 = alloca i64, align 8
  %loop.step.574 = alloca i64, align 8
  %loop.idx.574 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.res = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.ln = alloca ptr, align 8
  %loop.step.572 = alloca i64, align 8
  %loop.idx.572 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var.lines = alloca ptr, align 8
  store ptr %0, ptr %var.lines, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4096, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

b.buf.len1:                                       ; preds = %str_overflow_abort, %entry
  %arena.cur2 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 4096, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.out, align 8
  %var.load = load ptr, ptr %var.lines, align 8
  %a.load = load ptr, ptr %var.lines, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

str_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

a.create:                                         ; preds = %b.buf.len1
  %arena.cur3 = call ptr @dva_arena_current()
  %a.create4 = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 24)
  %arena.cur5 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create4, ptr %var.lines, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %b.buf.len1
  %a.load2 = load ptr, ptr %var.lines, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len6 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data7 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.572, align 8
  br label %loop.header.572

loop.header.572:                                  ; preds = %loop.latch.572, %a.after
  %counter.load = load i64, ptr %loop.idx.572, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len6
  br i1 %loop.cond, label %loop.body.572, label %loop.exit.nat.572

loop.body.572:                                    ; preds = %loop.header.572
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.572, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data7, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.ln, align 8
  %b.load = load ptr, ptr %var.out, align 8
  %var.load8 = load ptr, ptr %var.ln, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load8, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %app.str.len9 = load i64, ptr %app.str.len, align 8
  %app.str.len10 = and i64 %app.str.len9, 281474976710655
  %str.tag = lshr i64 %app.str.len9, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.572:                                ; preds = %loop.header.572
  br label %loop.exit.572

loop.latch.572:                                   ; preds = %br.done.573
  %step.val = load i64, ptr %loop.step.572, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.572, align 8
  br label %loop.header.572

loop.exit.572:                                    ; preds = %loop.exit.nat.572
  %var.load61 = load ptr, ptr %var.out, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load61, i32 0, i32 0
  %b.freeze.len62 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load61, i32 0, i32 1
  %b.freeze.data63 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_gen_check:                                    ; preds = %loop.body.572
  %arena.cur11 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur11, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.572
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len12 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len12, i64 %app.str.len10)
  %sum13 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf14 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf14, label %str_overflow_abort16, label %b.app.new.len15

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

b.app.new.len15:                                  ; preds = %str_overflow_abort16, %str_ok
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap17 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap17, %sum13
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort16:                             ; preds = %str_ok
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len15

b.grow2:                                          ; preds = %b.app.new.len15
  %b.cap2 = mul i64 %b.cap17, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum13
  %b.new.cap = select i1 %b.cap.need, i64 %sum13, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len218 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data219 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum20 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf21 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf21, label %str_overflow_abort23, label %b.new.buf.len222

b.nogrow2:                                        ; preds = %b.app.new.len15
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len222
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %app.str.data25 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data26 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data26, i64 %b.app.cur.len12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data25, i64 %app.str.len10, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data26, i64 %sum13
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep27 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum13, ptr %b.len.gep27, align 8
  %b.load28 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 0
  %b.rn.cur.len29 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len29, i64 1)
  %sum30 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf31 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf31, label %str_overflow_abort33, label %b.rn.new.len32

b.new.buf.len222:                                 ; preds = %str_overflow_abort23, %b.grow2
  %arena.cur24 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 %sum20)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data219, i64 %b.cur.len218, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len218
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort23:                             ; preds = %b.grow2
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len222

b.rn.new.len32:                                   ; preds = %str_overflow_abort33, %b.grow_done
  %b.cap34 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 2
  %b.cap35 = load i64, ptr %b.cap34, align 8
  %b.need.grow36 = icmp slt i64 %b.cap35, %sum30
  br i1 %b.need.grow36, label %b.grow237, label %b.nogrow238

str_overflow_abort33:                             ; preds = %b.grow_done
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len32

b.grow237:                                        ; preds = %b.rn.new.len32
  %b.cap240 = mul i64 %b.cap35, 2
  %b.cap.small41 = icmp slt i64 %b.cap240, 16
  %b.cap.grow42 = select i1 %b.cap.small41, i64 16, i64 %b.cap240
  %b.cap.need43 = icmp slt i64 %b.cap.grow42, %sum30
  %b.new.cap44 = select i1 %b.cap.need43, i64 %sum30, i64 %b.cap.grow42
  %b.cur.len245 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 0
  %b.cur.len246 = load i64, ptr %b.cur.len245, align 8
  %b.cur.data247 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 1
  %b.cur.data248 = load ptr, ptr %b.cur.data247, align 8
  %b.new.buf.len249 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap44, i64 1)
  %sum50 = extractvalue { i64, i1 } %b.new.buf.len249, 0
  %ovf51 = extractvalue { i64, i1 } %b.new.buf.len249, 1
  br i1 %ovf51, label %str_overflow_abort53, label %b.new.buf.len252

b.nogrow238:                                      ; preds = %b.rn.new.len32
  br label %b.grow_done39

b.grow_done39:                                    ; preds = %b.nogrow238, %b.new.buf.len252
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 1
  %b.rn.data59 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data59, i64 %b.rn.cur.len29
  br i1 true, label %br.b1.573, label %br.c2.573

b.new.buf.len252:                                 ; preds = %str_overflow_abort53, %b.grow237
  %arena.cur54 = call ptr @dva_arena_current()
  %b.new.buf255 = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 %sum50)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf255, ptr align 1 %b.cur.data248, i64 %b.cur.len246, i1 false)
  %b.grow2.nul56 = getelementptr i8, ptr %b.new.buf255, i64 %b.cur.len246
  store i8 0, ptr %b.grow2.nul56, align 1
  %b.new.data2.gep57 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 1
  store ptr %b.new.buf255, ptr %b.new.data2.gep57, align 8
  %b.new.cap2.gep58 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 2
  store i64 %b.new.cap44, ptr %b.new.cap2.gep58, align 8
  br label %b.grow_done39

str_overflow_abort53:                             ; preds = %b.grow237
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len252

br.b1.573:                                        ; preds = %b.grow_done39
  store i8 10, ptr %b.rn.dst, align 1
  br label %br.done.573

br.c2.573:                                        ; preds = %b.grow_done39
  br i1 true, label %br.b2.573, label %br.c3.573

br.b2.573:                                        ; preds = %br.c2.573
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -118, ptr %br.dst1, align 1
  br label %br.done.573

br.c3.573:                                        ; preds = %br.c2.573
  br i1 true, label %br.b3.573, label %br.b4.573

br.b3.573:                                        ; preds = %br.c3.573
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -118, ptr %br.dst2.3, align 1
  br label %br.done.573

br.b4.573:                                        ; preds = %br.c3.573
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -118, ptr %br.dst3.4, align 1
  br label %br.done.573

br.done.573:                                      ; preds = %br.b4.573, %br.b3.573, %br.b2.573, %br.b1.573
  %br.nul = getelementptr i8, ptr %b.rn.data59, i64 %sum30
  store i8 0, ptr %br.nul, align 1
  %b.len.gep60 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 0
  store i64 %sum30, ptr %b.len.gep60, align 8
  br label %loop.latch.572

b.freeze.check:                                   ; preds = %loop.exit.572
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data63, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data63, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data63, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len62, 1
  %arena.cur64 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data63, i64 %b.freeze.len62, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len62
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.572
  %b.freeze.data65 = phi ptr [ %b.freeze.data63, %loop.exit.572 ], [ %b.freeze.data63, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur66 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len62, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data65, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load61, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load61, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load61, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.res, align 8
  %var.load67 = load ptr, ptr %var.res, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load67, i32 0, i32 0
  %str.len.query68 = load i64, ptr %str.len.query, align 8
  %str.len.query69 = and i64 %str.len.query68, 281474976710655
  %str.tag70 = lshr i64 %str.len.query68, 48
  %str.immortal71 = icmp eq i64 %str.tag70, 0
  br i1 %str.immortal71, label %str_ok73, label %str_gen_check72

str_gen_check72:                                  ; preds = %b.freeze.done
  %arena.cur75 = call ptr @dva_arena_current()
  %tag.valid76 = call i1 @dva_arena_validate_tag(ptr %arena.cur75, i64 %str.tag70)
  br i1 %tag.valid76, label %str_ok73, label %str_stale74

str_ok73:                                         ; preds = %str_stale74, %str_gen_check72, %b.freeze.done
  store i64 %str.len.query69, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.574, align 8
  br label %loop.header.574

str_stale74:                                      ; preds = %str_gen_check72
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok73

loop.header.574:                                  ; preds = %loop.latch.574, %str_ok73
  %counter.load77 = load i64, ptr %loop.idx.574, align 8
  br label %loop.body.574

loop.body.574:                                    ; preds = %loop.header.574
  %loop.rel.i78 = sub i64 %counter.load77, 0
  store i64 1, ptr %loop.step.574, align 8
  store i64 %loop.rel.i78, ptr %var._i79, align 8
  store i64 %counter.load77, ptr %var._80, align 8
  %var.load81 = load i64, ptr %"var.end'", align 8
  %cmptmp = icmp sgt i64 %var.load81, 1
  br i1 %cmptmp, label %and.575.then, label %and.575.else

loop.exit.nat.574:                                ; No predecessors!
  br label %loop.exit.574

loop.latch.574:                                   ; preds = %choice.exit
  %step.val121 = load i64, ptr %loop.step.574, align 8
  %loop.next122 = add i64 %counter.load77, %step.val121
  store i64 %loop.next122, ptr %loop.idx.574, align 8
  br label %loop.header.574

loop.exit.574:                                    ; preds = %choice.else, %loop.exit.nat.574
  %var.load123 = load ptr, ptr %var.res, align 8
  %s.read.len124 = getelementptr inbounds { i64, ptr }, ptr %var.load123, i32 0, i32 0
  %s.read.len125 = load i64, ptr %s.read.len124, align 8
  %s.read.len126 = and i64 %s.read.len125, 281474976710655
  %str.tag127 = lshr i64 %s.read.len125, 48
  %str.immortal128 = icmp eq i64 %str.tag127, 0
  br i1 %str.immortal128, label %str_ok130, label %str_gen_check129

and.575.then:                                     ; preds = %loop.body.574
  %var.load82 = load ptr, ptr %var.res, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load82, i32 0, i32 0
  %s.read.len83 = load i64, ptr %s.read.len, align 8
  %s.read.len84 = and i64 %s.read.len83, 281474976710655
  %str.tag85 = lshr i64 %s.read.len83, 48
  %str.immortal86 = icmp eq i64 %str.tag85, 0
  br i1 %str.immortal86, label %str_ok88, label %str_gen_check87

and.575.else:                                     ; preds = %loop.body.574
  br label %and.575.exit

and.575.exit:                                     ; preds = %and.575.else, %idx_ok
  %and.575.phi = phi i1 [ %cmptmp94, %idx_ok ], [ %cmptmp, %and.575.else ]
  br i1 %and.575.phi, label %and.576.then, label %and.576.else

str_gen_check87:                                  ; preds = %and.575.then
  %arena.cur90 = call ptr @dva_arena_current()
  %tag.valid91 = call i1 @dva_arena_validate_tag(ptr %arena.cur90, i64 %str.tag85)
  br i1 %tag.valid91, label %str_ok88, label %str_stale89

str_ok88:                                         ; preds = %str_stale89, %str_gen_check87, %and.575.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load82, i32 0, i32 1
  %s.read.data92 = load ptr, ptr %s.read.data, align 8
  %var.load93 = load i64, ptr %"var.end'", align 8
  %subtmp = sub i64 %var.load93, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale89:                                      ; preds = %str_gen_check87
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok88

idx_big_check:                                    ; preds = %str_ok88
  %idx.big = icmp sge i64 %subtmp, %s.read.len84
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data92, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp94 = icmp eq i64 %s.byte.val, 10
  br label %and.575.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok88
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.576.then:                                     ; preds = %and.575.exit
  %var.load95 = load ptr, ptr %var.res, align 8
  %s.read.len96 = getelementptr inbounds { i64, ptr }, ptr %var.load95, i32 0, i32 0
  %s.read.len97 = load i64, ptr %s.read.len96, align 8
  %s.read.len98 = and i64 %s.read.len97, 281474976710655
  %str.tag99 = lshr i64 %s.read.len97, 48
  %str.immortal100 = icmp eq i64 %str.tag99, 0
  br i1 %str.immortal100, label %str_ok102, label %str_gen_check101

and.576.else:                                     ; preds = %and.575.exit
  br label %and.576.exit

and.576.exit:                                     ; preds = %and.576.else, %idx_ok112
  %and.576.phi = phi i1 [ %cmptmp118, %idx_ok112 ], [ %and.575.phi, %and.576.else ]
  br i1 %and.576.phi, label %choice.then, label %choice.else

str_gen_check101:                                 ; preds = %and.576.then
  %arena.cur104 = call ptr @dva_arena_current()
  %tag.valid105 = call i1 @dva_arena_validate_tag(ptr %arena.cur104, i64 %str.tag99)
  br i1 %tag.valid105, label %str_ok102, label %str_stale103

str_ok102:                                        ; preds = %str_stale103, %str_gen_check101, %and.576.then
  %s.read.data106 = getelementptr inbounds { i64, ptr }, ptr %var.load95, i32 0, i32 1
  %s.read.data107 = load ptr, ptr %s.read.data106, align 8
  %var.load108 = load i64, ptr %"var.end'", align 8
  %subtmp109 = sub i64 %var.load108, 2
  %idx.neg110 = icmp slt i64 %subtmp109, 0
  br i1 %idx.neg110, label %idx_oob113, label %idx_big_check111

str_stale103:                                     ; preds = %str_gen_check101
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok102

idx_big_check111:                                 ; preds = %str_ok102
  %idx.big114 = icmp sge i64 %subtmp109, %s.read.len98
  br i1 %idx.big114, label %idx_oob113, label %idx_ok112

idx_ok112:                                        ; preds = %idx_oob113, %idx_big_check111
  %s.byte.gep115 = getelementptr i8, ptr %s.read.data107, i64 %subtmp109
  %s.byte116 = load i8, ptr %s.byte.gep115, align 1
  %s.byte.val117 = zext i8 %s.byte116 to i64
  %cmptmp118 = icmp eq i64 %s.byte.val117, 10
  br label %and.576.exit

idx_oob113:                                       ; preds = %idx_big_check111, %str_ok102
  %11 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok112

choice.then:                                      ; preds = %and.576.exit
  %var.load119 = load i64, ptr %"var.end'", align 8
  %subtmp120 = sub i64 %var.load119, 1
  store i64 %subtmp120, ptr %"var.end'", align 8
  br label %choice.exit

choice.else:                                      ; preds = %and.576.exit
  br label %loop.exit.574

choice.exit:                                      ; preds = %choice.then
  br label %loop.latch.574

str_gen_check129:                                 ; preds = %loop.exit.574
  %arena.cur132 = call ptr @dva_arena_current()
  %tag.valid133 = call i1 @dva_arena_validate_tag(ptr %arena.cur132, i64 %str.tag127)
  br i1 %tag.valid133, label %str_ok130, label %str_stale131

str_ok130:                                        ; preds = %str_stale131, %str_gen_check129, %loop.exit.574
  %s.read.data134 = getelementptr inbounds { i64, ptr }, ptr %var.load123, i32 0, i32 1
  %s.read.data135 = load ptr, ptr %s.read.data134, align 8
  %var.load136 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len126, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len126
  %final.start = select i1 %start.gt.len, i64 %s.read.len126, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load136, 0
  %rel.end = add i64 %s.read.len126, %var.load136
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load136
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len126
  %final.end = select i1 %end.gt.len, i64 %s.read.len126, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data135, i64 %final.start
  %arena.cur137 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur137, i64 16)
  %str.build.len.gep138 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep138, align 8
  %str.build.data.gep139 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep139, align 8
  ret ptr %str.view

str_stale131:                                     ; preds = %str_gen_check129
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok130
}

define { i1, i64 } @"formatter::parse_ast_signature"(ptr %0, ptr %1) #1 {
entry:
  %var.fn629 = alloca ptr, align 8
  %var.d548 = alloca ptr, align 8
  %var.fn = alloca ptr, align 8
  %var.d = alloca ptr, align 8
  %var.prog = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.diags = alloca ptr, align 8
  %var.prog_res = alloca { i1, i64 }, align 8
  %var.ppr = alloca ptr, align 8
  %var.filename = alloca ptr, align 8
  %var.src = alloca ptr, align 8
  store ptr %0, ptr %var.src, align 8
  store ptr %1, ptr %var.filename, align 8
  call void @"diag::enable_capture"()
  %var.load = load ptr, ptr %var.filename, align 8
  call void @"lexer::lex_set_file"(ptr %var.load)
  %var.load1 = load ptr, ptr %var.src, align 8
  %call.res = call ptr @"parser::parse_init"(ptr %var.load1)
  store ptr %call.res, ptr %var.ppr, align 8
  %var.load2 = load ptr, ptr %var.ppr, align 8
  %var.load3 = load ptr, ptr %var.filename, align 8
  call void @"parser::parser_set_file"(ptr %var.load2, ptr %var.load3)
  %var.load4 = load ptr, ptr %var.ppr, align 8
  %fld.gep = getelementptr inbounds { { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, { ptr, i64, i64, i64, i64, i1, i1, ptr }, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, i1, i1, i1, i1, i1, ptr, ptr, ptr, ptr, i64, i64, i1, i1, i1, ptr, i1, ptr, ptr, ptr, ptr }, ptr %var.load4, i32 0, i32 16
  store i1 true, ptr %fld.gep, align 1
  %var.load5 = load ptr, ptr %var.ppr, align 8
  %call.res6 = call { i1, i64 } @"parser::parse_program"(ptr %var.load5)
  store { i1, i64 } %call.res6, ptr %var.prog_res, align 8
  %call.res7 = call ptr @"diag::get_captured"()
  store ptr %call.res7, ptr %var.diags, align 8
  call void @"diag::disable_capture"()
  %var.load8 = load { i1, i64 }, ptr %var.prog_res, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load8, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %var.load8, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.prog, align 8
  %var.load9 = load ptr, ptr %var.diags, align 8
  %a.load = load ptr, ptr %var.diags, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else:                                      ; preds = %entry
  %var.load428 = load ptr, ptr %var.diags, align 8
  %a.load429 = load ptr, ptr %var.diags, align 8
  %a.null430 = icmp eq ptr %a.load429, null
  br i1 %a.null430, label %a.create431, label %a.after432

choice.exit:                                      ; preds = %choice.exit446, %choice.exit15
  %choice.res980 = phi { i1, i64 } [ %choice.res427, %choice.exit15 ], [ %choice.res979, %choice.exit446 ]
  ret { i1, i64 } %choice.res980

a.create:                                         ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %a.create10 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur11 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create10, ptr %var.diags, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.diags, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query12 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp sgt i64 %a.len.query12, 0
  br i1 %cmptmp, label %choice.then13, label %choice.else14

choice.then13:                                    ; preds = %a.after
  %var.load16 = load ptr, ptr %var.diags, align 8
  %a.load17 = load ptr, ptr %var.diags, align 8
  %a.null18 = icmp eq ptr %a.load17, null
  br i1 %a.null18, label %a.create19, label %a.after20

choice.else14:                                    ; preds = %a.after
  %var.load423 = load ptr, ptr %var.prog, align 8
  %call.res424 = call ptr @"show::show_expr"(ptr %var.load423)
  %p.to.i64425 = ptrtoint ptr %call.res424 to i64
  %ram.pay426 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64425, 1
  br label %choice.exit15

choice.exit15:                                    ; preds = %choice.else14, %concat.tot.len412
  %choice.res427 = phi { i1, i64 } [ %ram.pay422, %concat.tot.len412 ], [ %ram.pay426, %choice.else14 ]
  br label %choice.exit

a.create19:                                       ; preds = %choice.then13
  %arena.cur21 = call ptr @dva_arena_current()
  %a.create22 = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 24)
  %arena.cur23 = call ptr @dva_arena_current()
  %a.buf24 = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 128)
  %a.len.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 0
  store i64 0, ptr %a.len.gep25, align 8
  %a.data.gep26 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 1
  store ptr %a.buf24, ptr %a.data.gep26, align 8
  %a.cap.gep27 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 2
  store i64 16, ptr %a.cap.gep27, align 8
  store ptr %a.create22, ptr %var.diags, align 8
  br label %a.after20

a.after20:                                        ; preds = %a.create19, %choice.then13
  %a.load228 = load ptr, ptr %var.diags, align 8
  %a.rd.nonnull = icmp ne ptr %a.load228, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after20
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load228, i32 0, i32 0
  %a.rd.len29 = load i64, ptr %a.rd.len, align 8
  %a.rd.lt = icmp slt i64 0, %a.rd.len29
  %a.rd.bounds = and i1 true, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load228, i32 0, i32 1
  %a.rd.data30 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data30, i64 0
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after20
  %arena.cur31 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 631, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 28, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur32 = call ptr @dva_arena_current()
  %err.alloc33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 56)
  %err.code.gep34 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 0
  store i64 4011, ptr %err.code.gep34, align 8
  %err.msg.gep35 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep35, align 8
  %err.file.gep36 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep36, align 8
  %err.line.gep37 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 3
  store i64 631, ptr %err.line.gep37, align 8
  %err.col.gep38 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 4
  store i64 28, ptr %err.col.gep38, align 8
  %err.ctx.gep39 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 5
  %err.ctx0.gep40 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep39, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep40, align 8
  %err.ctx1.gep41 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep39, i32 0, i32 1
  store i64 %a.rd.len29, ptr %err.ctx1.gep41, align 8
  %err.p2i42 = ptrtoint ptr %err.alloc33 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i42, %a.rd.err.oob ]
  %ram.tag43 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay44 = insertvalue { i1, i64 } %ram.tag43, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay44, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.577, label %unwrap.abort.577

unwrap.pos.577:                                   ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay44, 1
  %pay.ptr64 = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr64, ptr %var.d, align 8
  %var.load65 = load ptr, ptr %var.d, align 8
  %fld.gep66 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load65, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep66, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len67 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len68 = and i64 %eq.lhs.len67, 281474976710655
  %str.tag69 = lshr i64 %eq.lhs.len67, 48
  %str.immortal70 = icmp eq i64 %str.tag69, 0
  br i1 %str.immortal70, label %str_ok72, label %str_gen_check71

unwrap.abort.577:                                 ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay44, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep45 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep45, align 8
  %err.msg.gep46 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep46, align 8
  %err.file.gep47 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep47, align 8
  %err.line.gep48 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep48, align 8
  %err.col.gep49 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep49, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len50 = load i64, ptr %err.msg.len, align 8
  %err.msg.len51 = and i64 %err.msg.len50, 281474976710655
  %str.tag = lshr i64 %err.msg.len50, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %unwrap.abort.577
  %arena.cur52 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur52, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %unwrap.abort.577
  %err.msg.len32 = trunc i64 %err.msg.len51 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data53 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len54 = load i64, ptr %err.file.len, align 8
  %err.file.len55 = and i64 %err.file.len54, 281474976710655
  %str.tag56 = lshr i64 %err.file.len54, 48
  %str.immortal57 = icmp eq i64 %str.tag56, 0
  br i1 %str.immortal57, label %str_ok59, label %str_gen_check58

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check58:                                  ; preds = %str_ok
  %arena.cur61 = call ptr @dva_arena_current()
  %tag.valid62 = call i1 @dva_arena_validate_tag(ptr %arena.cur61, i64 %str.tag56)
  br i1 %tag.valid62, label %str_ok59, label %str_stale60

str_ok59:                                         ; preds = %str_stale60, %str_gen_check58, %str_ok
  %err.file.len32 = trunc i64 %err.file.len55 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data63 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale60:                                      ; preds = %str_gen_check58
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok59

err.thread:                                       ; preds = %str_ok59
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok59
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data53, i32 %err.file.len32, ptr %err.file.data63, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

str_gen_check71:                                  ; preds = %unwrap.pos.577
  %arena.cur74 = call ptr @dva_arena_current()
  %tag.valid75 = call i1 @dva_arena_validate_tag(ptr %arena.cur74, i64 %str.tag69)
  br i1 %tag.valid75, label %str_ok72, label %str_stale73

str_ok72:                                         ; preds = %str_stale73, %str_gen_check71, %unwrap.pos.577
  %eq.rhs.len = load i64, ptr @str.3.struct, align 8
  %eq.rhs.len76 = and i64 %eq.rhs.len, 281474976710655
  %str.tag77 = lshr i64 %eq.rhs.len, 48
  %str.immortal78 = icmp eq i64 %str.tag77, 0
  br i1 %str.immortal78, label %str_ok80, label %str_gen_check79

str_stale73:                                      ; preds = %str_gen_check71
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok72

str_gen_check79:                                  ; preds = %str_ok72
  %arena.cur82 = call ptr @dva_arena_current()
  %tag.valid83 = call i1 @dva_arena_validate_tag(ptr %arena.cur82, i64 %str.tag77)
  br i1 %tag.valid83, label %str_ok80, label %str_stale81

str_ok80:                                         ; preds = %str_stale81, %str_gen_check79, %str_ok72
  %eq.len = icmp eq i64 %eq.lhs.len68, %eq.rhs.len76
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale81:                                      ; preds = %str_gen_check79
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok80

str.eq.then:                                      ; preds = %str_ok80
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data84 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data84, ptr %eq.rhs.data, i64 %eq.lhs.len68)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok80
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then85, label %choice.else86

choice.then85:                                    ; preds = %str.eq.merge
  %var.load88 = load ptr, ptr %var.d, align 8
  %fld.gep89 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load88, i32 0, i32 1
  %fld.load90 = load ptr, ptr %fld.gep89, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %fld.load90, i32 0, i32 0
  %concat.lhs91 = load i64, ptr %concat.lhs, align 8
  %concat.lhs92 = and i64 %concat.lhs91, 281474976710655
  %str.tag93 = lshr i64 %concat.lhs91, 48
  %str.immortal94 = icmp eq i64 %str.tag93, 0
  br i1 %str.immortal94, label %str_ok96, label %str_gen_check95

choice.else86:                                    ; preds = %str.eq.merge
  br label %choice.exit87

choice.exit87:                                    ; preds = %choice.else86, %concat.tot.len114
  %choice.res = phi ptr [ %concat.str, %concat.tot.len114 ], [ @str.3.struct, %choice.else86 ]
  store ptr %choice.res, ptr %var.fn, align 8
  %var.load118 = load ptr, ptr %var.fn, align 8
  %var.load119 = load ptr, ptr %var.d, align 8
  %fld.gep120 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load119, i32 0, i32 2
  %fld.load121 = load i64, ptr %fld.gep120, align 8
  %call.res122 = call ptr @"str::from_int"(i64 %fld.load121)
  %concat.lhs123 = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 0
  %concat.lhs124 = load i64, ptr %concat.lhs123, align 8
  %concat.lhs125 = and i64 %concat.lhs124, 281474976710655
  %str.tag126 = lshr i64 %concat.lhs124, 48
  %str.immortal127 = icmp eq i64 %str.tag126, 0
  br i1 %str.immortal127, label %str_ok129, label %str_gen_check128

str_gen_check95:                                  ; preds = %choice.then85
  %arena.cur98 = call ptr @dva_arena_current()
  %tag.valid99 = call i1 @dva_arena_validate_tag(ptr %arena.cur98, i64 %str.tag93)
  br i1 %tag.valid99, label %str_ok96, label %str_stale97

str_ok96:                                         ; preds = %str_stale97, %str_gen_check95, %choice.then85
  %concat.lhs100 = getelementptr inbounds { i64, ptr }, ptr %fld.load90, i32 0, i32 1
  %concat.lhs101 = load ptr, ptr %concat.lhs100, align 8
  %concat.rhs = load i64, ptr @str.56.struct, align 8
  %concat.rhs102 = and i64 %concat.rhs, 281474976710655
  %str.tag103 = lshr i64 %concat.rhs, 48
  %str.immortal104 = icmp eq i64 %str.tag103, 0
  br i1 %str.immortal104, label %str_ok106, label %str_gen_check105

str_stale97:                                      ; preds = %str_gen_check95
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok96

str_gen_check105:                                 ; preds = %str_ok96
  %arena.cur108 = call ptr @dva_arena_current()
  %tag.valid109 = call i1 @dva_arena_validate_tag(ptr %arena.cur108, i64 %str.tag103)
  br i1 %tag.valid109, label %str_ok106, label %str_stale107

str_ok106:                                        ; preds = %str_stale107, %str_gen_check105, %str_ok96
  %concat.rhs110 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.56.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs92, i64 %concat.rhs102)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len111

str_stale107:                                     ; preds = %str_gen_check105
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok106

concat.sum.len111:                                ; preds = %str_overflow_abort, %str_ok106
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum112 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf113 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf113, label %str_overflow_abort115, label %concat.tot.len114

str_overflow_abort:                               ; preds = %str_ok106
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len111

concat.tot.len114:                                ; preds = %str_overflow_abort115, %concat.sum.len111
  %arena.cur116 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 %sum112)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs101, i64 %concat.lhs92, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs92
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs110, i64 %concat.rhs102, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur117 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur117, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit87

str_overflow_abort115:                            ; preds = %concat.sum.len111
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len114

str_gen_check128:                                 ; preds = %choice.exit87
  %arena.cur131 = call ptr @dva_arena_current()
  %tag.valid132 = call i1 @dva_arena_validate_tag(ptr %arena.cur131, i64 %str.tag126)
  br i1 %tag.valid132, label %str_ok129, label %str_stale130

str_ok129:                                        ; preds = %str_stale130, %str_gen_check128, %choice.exit87
  %concat.lhs133 = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 1
  %concat.lhs134 = load ptr, ptr %concat.lhs133, align 8
  %concat.rhs135 = getelementptr inbounds { i64, ptr }, ptr %call.res122, i32 0, i32 0
  %concat.rhs136 = load i64, ptr %concat.rhs135, align 8
  %concat.rhs137 = and i64 %concat.rhs136, 281474976710655
  %str.tag138 = lshr i64 %concat.rhs136, 48
  %str.immortal139 = icmp eq i64 %str.tag138, 0
  br i1 %str.immortal139, label %str_ok141, label %str_gen_check140

str_stale130:                                     ; preds = %str_gen_check128
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok129

str_gen_check140:                                 ; preds = %str_ok129
  %arena.cur143 = call ptr @dva_arena_current()
  %tag.valid144 = call i1 @dva_arena_validate_tag(ptr %arena.cur143, i64 %str.tag138)
  br i1 %tag.valid144, label %str_ok141, label %str_stale142

str_ok141:                                        ; preds = %str_stale142, %str_gen_check140, %str_ok129
  %concat.rhs145 = getelementptr inbounds { i64, ptr }, ptr %call.res122, i32 0, i32 1
  %concat.rhs146 = load ptr, ptr %concat.rhs145, align 8
  %concat.sum.len147 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs125, i64 %concat.rhs137)
  %sum148 = extractvalue { i64, i1 } %concat.sum.len147, 0
  %ovf149 = extractvalue { i64, i1 } %concat.sum.len147, 1
  br i1 %ovf149, label %str_overflow_abort151, label %concat.sum.len150

str_stale142:                                     ; preds = %str_gen_check140
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok141

concat.sum.len150:                                ; preds = %str_overflow_abort151, %str_ok141
  %concat.tot.len152 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum148, i64 1)
  %sum153 = extractvalue { i64, i1 } %concat.tot.len152, 0
  %ovf154 = extractvalue { i64, i1 } %concat.tot.len152, 1
  br i1 %ovf154, label %str_overflow_abort156, label %concat.tot.len155

str_overflow_abort151:                            ; preds = %str_ok141
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len150

concat.tot.len155:                                ; preds = %str_overflow_abort156, %concat.sum.len150
  %arena.cur157 = call ptr @dva_arena_current()
  %concat.buf158 = call ptr @dva_arena_alloc(ptr %arena.cur157, i64 %sum153)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf158, ptr align 1 %concat.lhs134, i64 %concat.lhs125, i1 false)
  %concat.mid159 = getelementptr i8, ptr %concat.buf158, i64 %concat.lhs125
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid159, ptr align 1 %concat.rhs146, i64 %concat.rhs137, i1 false)
  %concat.nul160 = getelementptr i8, ptr %concat.buf158, i64 %sum148
  store i8 0, ptr %concat.nul160, align 1
  %arena.cur161 = call ptr @dva_arena_current()
  %concat.str162 = call ptr @dva_arena_alloc(ptr %arena.cur161, i64 16)
  %str.build.len.gep163 = getelementptr inbounds { i64, ptr }, ptr %concat.str162, i32 0, i32 0
  store i64 %sum148, ptr %str.build.len.gep163, align 8
  %str.build.data.gep164 = getelementptr inbounds { i64, ptr }, ptr %concat.str162, i32 0, i32 1
  store ptr %concat.buf158, ptr %str.build.data.gep164, align 8
  %concat.lhs165 = getelementptr inbounds { i64, ptr }, ptr %concat.str162, i32 0, i32 0
  %concat.lhs166 = load i64, ptr %concat.lhs165, align 8
  %concat.lhs167 = and i64 %concat.lhs166, 281474976710655
  %str.tag168 = lshr i64 %concat.lhs166, 48
  %str.immortal169 = icmp eq i64 %str.tag168, 0
  br i1 %str.immortal169, label %str_ok171, label %str_gen_check170

str_overflow_abort156:                            ; preds = %concat.sum.len150
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len155

str_gen_check170:                                 ; preds = %concat.tot.len155
  %arena.cur173 = call ptr @dva_arena_current()
  %tag.valid174 = call i1 @dva_arena_validate_tag(ptr %arena.cur173, i64 %str.tag168)
  br i1 %tag.valid174, label %str_ok171, label %str_stale172

str_ok171:                                        ; preds = %str_stale172, %str_gen_check170, %concat.tot.len155
  %concat.lhs175 = getelementptr inbounds { i64, ptr }, ptr %concat.str162, i32 0, i32 1
  %concat.lhs176 = load ptr, ptr %concat.lhs175, align 8
  %concat.rhs177 = load i64, ptr @str.56.struct, align 8
  %concat.rhs178 = and i64 %concat.rhs177, 281474976710655
  %str.tag179 = lshr i64 %concat.rhs177, 48
  %str.immortal180 = icmp eq i64 %str.tag179, 0
  br i1 %str.immortal180, label %str_ok182, label %str_gen_check181

str_stale172:                                     ; preds = %str_gen_check170
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok171

str_gen_check181:                                 ; preds = %str_ok171
  %arena.cur184 = call ptr @dva_arena_current()
  %tag.valid185 = call i1 @dva_arena_validate_tag(ptr %arena.cur184, i64 %str.tag179)
  br i1 %tag.valid185, label %str_ok182, label %str_stale183

str_ok182:                                        ; preds = %str_stale183, %str_gen_check181, %str_ok171
  %concat.rhs186 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.56.struct, i32 0, i32 1), align 8
  %concat.sum.len187 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs167, i64 %concat.rhs178)
  %sum188 = extractvalue { i64, i1 } %concat.sum.len187, 0
  %ovf189 = extractvalue { i64, i1 } %concat.sum.len187, 1
  br i1 %ovf189, label %str_overflow_abort191, label %concat.sum.len190

str_stale183:                                     ; preds = %str_gen_check181
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok182

concat.sum.len190:                                ; preds = %str_overflow_abort191, %str_ok182
  %concat.tot.len192 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum188, i64 1)
  %sum193 = extractvalue { i64, i1 } %concat.tot.len192, 0
  %ovf194 = extractvalue { i64, i1 } %concat.tot.len192, 1
  br i1 %ovf194, label %str_overflow_abort196, label %concat.tot.len195

str_overflow_abort191:                            ; preds = %str_ok182
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len190

concat.tot.len195:                                ; preds = %str_overflow_abort196, %concat.sum.len190
  %arena.cur197 = call ptr @dva_arena_current()
  %concat.buf198 = call ptr @dva_arena_alloc(ptr %arena.cur197, i64 %sum193)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf198, ptr align 1 %concat.lhs176, i64 %concat.lhs167, i1 false)
  %concat.mid199 = getelementptr i8, ptr %concat.buf198, i64 %concat.lhs167
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid199, ptr align 1 %concat.rhs186, i64 %concat.rhs178, i1 false)
  %concat.nul200 = getelementptr i8, ptr %concat.buf198, i64 %sum188
  store i8 0, ptr %concat.nul200, align 1
  %arena.cur201 = call ptr @dva_arena_current()
  %concat.str202 = call ptr @dva_arena_alloc(ptr %arena.cur201, i64 16)
  %str.build.len.gep203 = getelementptr inbounds { i64, ptr }, ptr %concat.str202, i32 0, i32 0
  store i64 %sum188, ptr %str.build.len.gep203, align 8
  %str.build.data.gep204 = getelementptr inbounds { i64, ptr }, ptr %concat.str202, i32 0, i32 1
  store ptr %concat.buf198, ptr %str.build.data.gep204, align 8
  %var.load205 = load ptr, ptr %var.d, align 8
  %fld.gep206 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load205, i32 0, i32 3
  %fld.load207 = load i64, ptr %fld.gep206, align 8
  %call.res208 = call ptr @"str::from_int"(i64 %fld.load207)
  %concat.lhs209 = getelementptr inbounds { i64, ptr }, ptr %concat.str202, i32 0, i32 0
  %concat.lhs210 = load i64, ptr %concat.lhs209, align 8
  %concat.lhs211 = and i64 %concat.lhs210, 281474976710655
  %str.tag212 = lshr i64 %concat.lhs210, 48
  %str.immortal213 = icmp eq i64 %str.tag212, 0
  br i1 %str.immortal213, label %str_ok215, label %str_gen_check214

str_overflow_abort196:                            ; preds = %concat.sum.len190
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len195

str_gen_check214:                                 ; preds = %concat.tot.len195
  %arena.cur217 = call ptr @dva_arena_current()
  %tag.valid218 = call i1 @dva_arena_validate_tag(ptr %arena.cur217, i64 %str.tag212)
  br i1 %tag.valid218, label %str_ok215, label %str_stale216

str_ok215:                                        ; preds = %str_stale216, %str_gen_check214, %concat.tot.len195
  %concat.lhs219 = getelementptr inbounds { i64, ptr }, ptr %concat.str202, i32 0, i32 1
  %concat.lhs220 = load ptr, ptr %concat.lhs219, align 8
  %concat.rhs221 = getelementptr inbounds { i64, ptr }, ptr %call.res208, i32 0, i32 0
  %concat.rhs222 = load i64, ptr %concat.rhs221, align 8
  %concat.rhs223 = and i64 %concat.rhs222, 281474976710655
  %str.tag224 = lshr i64 %concat.rhs222, 48
  %str.immortal225 = icmp eq i64 %str.tag224, 0
  br i1 %str.immortal225, label %str_ok227, label %str_gen_check226

str_stale216:                                     ; preds = %str_gen_check214
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok215

str_gen_check226:                                 ; preds = %str_ok215
  %arena.cur229 = call ptr @dva_arena_current()
  %tag.valid230 = call i1 @dva_arena_validate_tag(ptr %arena.cur229, i64 %str.tag224)
  br i1 %tag.valid230, label %str_ok227, label %str_stale228

str_ok227:                                        ; preds = %str_stale228, %str_gen_check226, %str_ok215
  %concat.rhs231 = getelementptr inbounds { i64, ptr }, ptr %call.res208, i32 0, i32 1
  %concat.rhs232 = load ptr, ptr %concat.rhs231, align 8
  %concat.sum.len233 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs211, i64 %concat.rhs223)
  %sum234 = extractvalue { i64, i1 } %concat.sum.len233, 0
  %ovf235 = extractvalue { i64, i1 } %concat.sum.len233, 1
  br i1 %ovf235, label %str_overflow_abort237, label %concat.sum.len236

str_stale228:                                     ; preds = %str_gen_check226
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok227

concat.sum.len236:                                ; preds = %str_overflow_abort237, %str_ok227
  %concat.tot.len238 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum234, i64 1)
  %sum239 = extractvalue { i64, i1 } %concat.tot.len238, 0
  %ovf240 = extractvalue { i64, i1 } %concat.tot.len238, 1
  br i1 %ovf240, label %str_overflow_abort242, label %concat.tot.len241

str_overflow_abort237:                            ; preds = %str_ok227
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len236

concat.tot.len241:                                ; preds = %str_overflow_abort242, %concat.sum.len236
  %arena.cur243 = call ptr @dva_arena_current()
  %concat.buf244 = call ptr @dva_arena_alloc(ptr %arena.cur243, i64 %sum239)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf244, ptr align 1 %concat.lhs220, i64 %concat.lhs211, i1 false)
  %concat.mid245 = getelementptr i8, ptr %concat.buf244, i64 %concat.lhs211
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid245, ptr align 1 %concat.rhs232, i64 %concat.rhs223, i1 false)
  %concat.nul246 = getelementptr i8, ptr %concat.buf244, i64 %sum234
  store i8 0, ptr %concat.nul246, align 1
  %arena.cur247 = call ptr @dva_arena_current()
  %concat.str248 = call ptr @dva_arena_alloc(ptr %arena.cur247, i64 16)
  %str.build.len.gep249 = getelementptr inbounds { i64, ptr }, ptr %concat.str248, i32 0, i32 0
  store i64 %sum234, ptr %str.build.len.gep249, align 8
  %str.build.data.gep250 = getelementptr inbounds { i64, ptr }, ptr %concat.str248, i32 0, i32 1
  store ptr %concat.buf244, ptr %str.build.data.gep250, align 8
  %concat.lhs251 = getelementptr inbounds { i64, ptr }, ptr %concat.str248, i32 0, i32 0
  %concat.lhs252 = load i64, ptr %concat.lhs251, align 8
  %concat.lhs253 = and i64 %concat.lhs252, 281474976710655
  %str.tag254 = lshr i64 %concat.lhs252, 48
  %str.immortal255 = icmp eq i64 %str.tag254, 0
  br i1 %str.immortal255, label %str_ok257, label %str_gen_check256

str_overflow_abort242:                            ; preds = %concat.sum.len236
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len241

str_gen_check256:                                 ; preds = %concat.tot.len241
  %arena.cur259 = call ptr @dva_arena_current()
  %tag.valid260 = call i1 @dva_arena_validate_tag(ptr %arena.cur259, i64 %str.tag254)
  br i1 %tag.valid260, label %str_ok257, label %str_stale258

str_ok257:                                        ; preds = %str_stale258, %str_gen_check256, %concat.tot.len241
  %concat.lhs261 = getelementptr inbounds { i64, ptr }, ptr %concat.str248, i32 0, i32 1
  %concat.lhs262 = load ptr, ptr %concat.lhs261, align 8
  %concat.rhs263 = load i64, ptr @str.57.struct, align 8
  %concat.rhs264 = and i64 %concat.rhs263, 281474976710655
  %str.tag265 = lshr i64 %concat.rhs263, 48
  %str.immortal266 = icmp eq i64 %str.tag265, 0
  br i1 %str.immortal266, label %str_ok268, label %str_gen_check267

str_stale258:                                     ; preds = %str_gen_check256
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok257

str_gen_check267:                                 ; preds = %str_ok257
  %arena.cur270 = call ptr @dva_arena_current()
  %tag.valid271 = call i1 @dva_arena_validate_tag(ptr %arena.cur270, i64 %str.tag265)
  br i1 %tag.valid271, label %str_ok268, label %str_stale269

str_ok268:                                        ; preds = %str_stale269, %str_gen_check267, %str_ok257
  %concat.rhs272 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.57.struct, i32 0, i32 1), align 8
  %concat.sum.len273 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs253, i64 %concat.rhs264)
  %sum274 = extractvalue { i64, i1 } %concat.sum.len273, 0
  %ovf275 = extractvalue { i64, i1 } %concat.sum.len273, 1
  br i1 %ovf275, label %str_overflow_abort277, label %concat.sum.len276

str_stale269:                                     ; preds = %str_gen_check267
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok268

concat.sum.len276:                                ; preds = %str_overflow_abort277, %str_ok268
  %concat.tot.len278 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum274, i64 1)
  %sum279 = extractvalue { i64, i1 } %concat.tot.len278, 0
  %ovf280 = extractvalue { i64, i1 } %concat.tot.len278, 1
  br i1 %ovf280, label %str_overflow_abort282, label %concat.tot.len281

str_overflow_abort277:                            ; preds = %str_ok268
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len276

concat.tot.len281:                                ; preds = %str_overflow_abort282, %concat.sum.len276
  %arena.cur283 = call ptr @dva_arena_current()
  %concat.buf284 = call ptr @dva_arena_alloc(ptr %arena.cur283, i64 %sum279)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf284, ptr align 1 %concat.lhs262, i64 %concat.lhs253, i1 false)
  %concat.mid285 = getelementptr i8, ptr %concat.buf284, i64 %concat.lhs253
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid285, ptr align 1 %concat.rhs272, i64 %concat.rhs264, i1 false)
  %concat.nul286 = getelementptr i8, ptr %concat.buf284, i64 %sum274
  store i8 0, ptr %concat.nul286, align 1
  %arena.cur287 = call ptr @dva_arena_current()
  %concat.str288 = call ptr @dva_arena_alloc(ptr %arena.cur287, i64 16)
  %str.build.len.gep289 = getelementptr inbounds { i64, ptr }, ptr %concat.str288, i32 0, i32 0
  store i64 %sum274, ptr %str.build.len.gep289, align 8
  %str.build.data.gep290 = getelementptr inbounds { i64, ptr }, ptr %concat.str288, i32 0, i32 1
  store ptr %concat.buf284, ptr %str.build.data.gep290, align 8
  %var.load291 = load ptr, ptr %var.d, align 8
  %fld.gep292 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load291, i32 0, i32 0
  %fld.load293 = load i64, ptr %fld.gep292, align 8
  %call.res294 = call ptr @"str::from_int"(i64 %fld.load293)
  %concat.lhs295 = getelementptr inbounds { i64, ptr }, ptr %concat.str288, i32 0, i32 0
  %concat.lhs296 = load i64, ptr %concat.lhs295, align 8
  %concat.lhs297 = and i64 %concat.lhs296, 281474976710655
  %str.tag298 = lshr i64 %concat.lhs296, 48
  %str.immortal299 = icmp eq i64 %str.tag298, 0
  br i1 %str.immortal299, label %str_ok301, label %str_gen_check300

str_overflow_abort282:                            ; preds = %concat.sum.len276
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len281

str_gen_check300:                                 ; preds = %concat.tot.len281
  %arena.cur303 = call ptr @dva_arena_current()
  %tag.valid304 = call i1 @dva_arena_validate_tag(ptr %arena.cur303, i64 %str.tag298)
  br i1 %tag.valid304, label %str_ok301, label %str_stale302

str_ok301:                                        ; preds = %str_stale302, %str_gen_check300, %concat.tot.len281
  %concat.lhs305 = getelementptr inbounds { i64, ptr }, ptr %concat.str288, i32 0, i32 1
  %concat.lhs306 = load ptr, ptr %concat.lhs305, align 8
  %concat.rhs307 = getelementptr inbounds { i64, ptr }, ptr %call.res294, i32 0, i32 0
  %concat.rhs308 = load i64, ptr %concat.rhs307, align 8
  %concat.rhs309 = and i64 %concat.rhs308, 281474976710655
  %str.tag310 = lshr i64 %concat.rhs308, 48
  %str.immortal311 = icmp eq i64 %str.tag310, 0
  br i1 %str.immortal311, label %str_ok313, label %str_gen_check312

str_stale302:                                     ; preds = %str_gen_check300
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok301

str_gen_check312:                                 ; preds = %str_ok301
  %arena.cur315 = call ptr @dva_arena_current()
  %tag.valid316 = call i1 @dva_arena_validate_tag(ptr %arena.cur315, i64 %str.tag310)
  br i1 %tag.valid316, label %str_ok313, label %str_stale314

str_ok313:                                        ; preds = %str_stale314, %str_gen_check312, %str_ok301
  %concat.rhs317 = getelementptr inbounds { i64, ptr }, ptr %call.res294, i32 0, i32 1
  %concat.rhs318 = load ptr, ptr %concat.rhs317, align 8
  %concat.sum.len319 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs297, i64 %concat.rhs309)
  %sum320 = extractvalue { i64, i1 } %concat.sum.len319, 0
  %ovf321 = extractvalue { i64, i1 } %concat.sum.len319, 1
  br i1 %ovf321, label %str_overflow_abort323, label %concat.sum.len322

str_stale314:                                     ; preds = %str_gen_check312
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok313

concat.sum.len322:                                ; preds = %str_overflow_abort323, %str_ok313
  %concat.tot.len324 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum320, i64 1)
  %sum325 = extractvalue { i64, i1 } %concat.tot.len324, 0
  %ovf326 = extractvalue { i64, i1 } %concat.tot.len324, 1
  br i1 %ovf326, label %str_overflow_abort328, label %concat.tot.len327

str_overflow_abort323:                            ; preds = %str_ok313
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len322

concat.tot.len327:                                ; preds = %str_overflow_abort328, %concat.sum.len322
  %arena.cur329 = call ptr @dva_arena_current()
  %concat.buf330 = call ptr @dva_arena_alloc(ptr %arena.cur329, i64 %sum325)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf330, ptr align 1 %concat.lhs306, i64 %concat.lhs297, i1 false)
  %concat.mid331 = getelementptr i8, ptr %concat.buf330, i64 %concat.lhs297
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid331, ptr align 1 %concat.rhs318, i64 %concat.rhs309, i1 false)
  %concat.nul332 = getelementptr i8, ptr %concat.buf330, i64 %sum320
  store i8 0, ptr %concat.nul332, align 1
  %arena.cur333 = call ptr @dva_arena_current()
  %concat.str334 = call ptr @dva_arena_alloc(ptr %arena.cur333, i64 16)
  %str.build.len.gep335 = getelementptr inbounds { i64, ptr }, ptr %concat.str334, i32 0, i32 0
  store i64 %sum320, ptr %str.build.len.gep335, align 8
  %str.build.data.gep336 = getelementptr inbounds { i64, ptr }, ptr %concat.str334, i32 0, i32 1
  store ptr %concat.buf330, ptr %str.build.data.gep336, align 8
  %concat.lhs337 = getelementptr inbounds { i64, ptr }, ptr %concat.str334, i32 0, i32 0
  %concat.lhs338 = load i64, ptr %concat.lhs337, align 8
  %concat.lhs339 = and i64 %concat.lhs338, 281474976710655
  %str.tag340 = lshr i64 %concat.lhs338, 48
  %str.immortal341 = icmp eq i64 %str.tag340, 0
  br i1 %str.immortal341, label %str_ok343, label %str_gen_check342

str_overflow_abort328:                            ; preds = %concat.sum.len322
  %29 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len327

str_gen_check342:                                 ; preds = %concat.tot.len327
  %arena.cur345 = call ptr @dva_arena_current()
  %tag.valid346 = call i1 @dva_arena_validate_tag(ptr %arena.cur345, i64 %str.tag340)
  br i1 %tag.valid346, label %str_ok343, label %str_stale344

str_ok343:                                        ; preds = %str_stale344, %str_gen_check342, %concat.tot.len327
  %concat.lhs347 = getelementptr inbounds { i64, ptr }, ptr %concat.str334, i32 0, i32 1
  %concat.lhs348 = load ptr, ptr %concat.lhs347, align 8
  %concat.rhs349 = load i64, ptr @str.2.struct, align 8
  %concat.rhs350 = and i64 %concat.rhs349, 281474976710655
  %str.tag351 = lshr i64 %concat.rhs349, 48
  %str.immortal352 = icmp eq i64 %str.tag351, 0
  br i1 %str.immortal352, label %str_ok354, label %str_gen_check353

str_stale344:                                     ; preds = %str_gen_check342
  %30 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok343

str_gen_check353:                                 ; preds = %str_ok343
  %arena.cur356 = call ptr @dva_arena_current()
  %tag.valid357 = call i1 @dva_arena_validate_tag(ptr %arena.cur356, i64 %str.tag351)
  br i1 %tag.valid357, label %str_ok354, label %str_stale355

str_ok354:                                        ; preds = %str_stale355, %str_gen_check353, %str_ok343
  %concat.rhs358 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %concat.sum.len359 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs339, i64 %concat.rhs350)
  %sum360 = extractvalue { i64, i1 } %concat.sum.len359, 0
  %ovf361 = extractvalue { i64, i1 } %concat.sum.len359, 1
  br i1 %ovf361, label %str_overflow_abort363, label %concat.sum.len362

str_stale355:                                     ; preds = %str_gen_check353
  %31 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok354

concat.sum.len362:                                ; preds = %str_overflow_abort363, %str_ok354
  %concat.tot.len364 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum360, i64 1)
  %sum365 = extractvalue { i64, i1 } %concat.tot.len364, 0
  %ovf366 = extractvalue { i64, i1 } %concat.tot.len364, 1
  br i1 %ovf366, label %str_overflow_abort368, label %concat.tot.len367

str_overflow_abort363:                            ; preds = %str_ok354
  %32 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len362

concat.tot.len367:                                ; preds = %str_overflow_abort368, %concat.sum.len362
  %arena.cur369 = call ptr @dva_arena_current()
  %concat.buf370 = call ptr @dva_arena_alloc(ptr %arena.cur369, i64 %sum365)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf370, ptr align 1 %concat.lhs348, i64 %concat.lhs339, i1 false)
  %concat.mid371 = getelementptr i8, ptr %concat.buf370, i64 %concat.lhs339
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid371, ptr align 1 %concat.rhs358, i64 %concat.rhs350, i1 false)
  %concat.nul372 = getelementptr i8, ptr %concat.buf370, i64 %sum360
  store i8 0, ptr %concat.nul372, align 1
  %arena.cur373 = call ptr @dva_arena_current()
  %concat.str374 = call ptr @dva_arena_alloc(ptr %arena.cur373, i64 16)
  %str.build.len.gep375 = getelementptr inbounds { i64, ptr }, ptr %concat.str374, i32 0, i32 0
  store i64 %sum360, ptr %str.build.len.gep375, align 8
  %str.build.data.gep376 = getelementptr inbounds { i64, ptr }, ptr %concat.str374, i32 0, i32 1
  store ptr %concat.buf370, ptr %str.build.data.gep376, align 8
  %var.load377 = load ptr, ptr %var.d, align 8
  %fld.gep378 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load377, i32 0, i32 4
  %fld.load379 = load ptr, ptr %fld.gep378, align 8
  %concat.lhs380 = getelementptr inbounds { i64, ptr }, ptr %concat.str374, i32 0, i32 0
  %concat.lhs381 = load i64, ptr %concat.lhs380, align 8
  %concat.lhs382 = and i64 %concat.lhs381, 281474976710655
  %str.tag383 = lshr i64 %concat.lhs381, 48
  %str.immortal384 = icmp eq i64 %str.tag383, 0
  br i1 %str.immortal384, label %str_ok386, label %str_gen_check385

str_overflow_abort368:                            ; preds = %concat.sum.len362
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len367

str_gen_check385:                                 ; preds = %concat.tot.len367
  %arena.cur388 = call ptr @dva_arena_current()
  %tag.valid389 = call i1 @dva_arena_validate_tag(ptr %arena.cur388, i64 %str.tag383)
  br i1 %tag.valid389, label %str_ok386, label %str_stale387

str_ok386:                                        ; preds = %str_stale387, %str_gen_check385, %concat.tot.len367
  %concat.lhs390 = getelementptr inbounds { i64, ptr }, ptr %concat.str374, i32 0, i32 1
  %concat.lhs391 = load ptr, ptr %concat.lhs390, align 8
  %concat.rhs392 = getelementptr inbounds { i64, ptr }, ptr %fld.load379, i32 0, i32 0
  %concat.rhs393 = load i64, ptr %concat.rhs392, align 8
  %concat.rhs394 = and i64 %concat.rhs393, 281474976710655
  %str.tag395 = lshr i64 %concat.rhs393, 48
  %str.immortal396 = icmp eq i64 %str.tag395, 0
  br i1 %str.immortal396, label %str_ok398, label %str_gen_check397

str_stale387:                                     ; preds = %str_gen_check385
  %34 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok386

str_gen_check397:                                 ; preds = %str_ok386
  %arena.cur400 = call ptr @dva_arena_current()
  %tag.valid401 = call i1 @dva_arena_validate_tag(ptr %arena.cur400, i64 %str.tag395)
  br i1 %tag.valid401, label %str_ok398, label %str_stale399

str_ok398:                                        ; preds = %str_stale399, %str_gen_check397, %str_ok386
  %concat.rhs402 = getelementptr inbounds { i64, ptr }, ptr %fld.load379, i32 0, i32 1
  %concat.rhs403 = load ptr, ptr %concat.rhs402, align 8
  %concat.sum.len404 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs382, i64 %concat.rhs394)
  %sum405 = extractvalue { i64, i1 } %concat.sum.len404, 0
  %ovf406 = extractvalue { i64, i1 } %concat.sum.len404, 1
  br i1 %ovf406, label %str_overflow_abort408, label %concat.sum.len407

str_stale399:                                     ; preds = %str_gen_check397
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok398

concat.sum.len407:                                ; preds = %str_overflow_abort408, %str_ok398
  %concat.tot.len409 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum405, i64 1)
  %sum410 = extractvalue { i64, i1 } %concat.tot.len409, 0
  %ovf411 = extractvalue { i64, i1 } %concat.tot.len409, 1
  br i1 %ovf411, label %str_overflow_abort413, label %concat.tot.len412

str_overflow_abort408:                            ; preds = %str_ok398
  %36 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len407

concat.tot.len412:                                ; preds = %str_overflow_abort413, %concat.sum.len407
  %arena.cur414 = call ptr @dva_arena_current()
  %concat.buf415 = call ptr @dva_arena_alloc(ptr %arena.cur414, i64 %sum410)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf415, ptr align 1 %concat.lhs391, i64 %concat.lhs382, i1 false)
  %concat.mid416 = getelementptr i8, ptr %concat.buf415, i64 %concat.lhs382
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid416, ptr align 1 %concat.rhs403, i64 %concat.rhs394, i1 false)
  %concat.nul417 = getelementptr i8, ptr %concat.buf415, i64 %sum405
  store i8 0, ptr %concat.nul417, align 1
  %arena.cur418 = call ptr @dva_arena_current()
  %concat.str419 = call ptr @dva_arena_alloc(ptr %arena.cur418, i64 16)
  %str.build.len.gep420 = getelementptr inbounds { i64, ptr }, ptr %concat.str419, i32 0, i32 0
  store i64 %sum405, ptr %str.build.len.gep420, align 8
  %str.build.data.gep421 = getelementptr inbounds { i64, ptr }, ptr %concat.str419, i32 0, i32 1
  store ptr %concat.buf415, ptr %str.build.data.gep421, align 8
  %p.to.i64 = ptrtoint ptr %concat.str419 to i64
  %ram.pay422 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit15

str_overflow_abort413:                            ; preds = %concat.sum.len407
  %37 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len412

a.create431:                                      ; preds = %choice.else
  %arena.cur433 = call ptr @dva_arena_current()
  %a.create434 = call ptr @dva_arena_alloc(ptr %arena.cur433, i64 24)
  %arena.cur435 = call ptr @dva_arena_current()
  %a.buf436 = call ptr @dva_arena_alloc(ptr %arena.cur435, i64 128)
  %a.len.gep437 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create434, i32 0, i32 0
  store i64 0, ptr %a.len.gep437, align 8
  %a.data.gep438 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create434, i32 0, i32 1
  store ptr %a.buf436, ptr %a.data.gep438, align 8
  %a.cap.gep439 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create434, i32 0, i32 2
  store i64 16, ptr %a.cap.gep439, align 8
  store ptr %a.create434, ptr %var.diags, align 8
  br label %a.after432

a.after432:                                       ; preds = %a.create431, %choice.else
  %a.load2440 = load ptr, ptr %var.diags, align 8
  %a.len.query441 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2440, i32 0, i32 0
  %a.len.query442 = load i64, ptr %a.len.query441, align 8
  %cmptmp443 = icmp sgt i64 %a.len.query442, 0
  br i1 %cmptmp443, label %choice.then444, label %choice.else445

choice.then444:                                   ; preds = %a.after432
  %var.load447 = load ptr, ptr %var.diags, align 8
  %a.load448 = load ptr, ptr %var.diags, align 8
  %a.null449 = icmp eq ptr %a.load448, null
  br i1 %a.null449, label %a.create450, label %a.after451

choice.else445:                                   ; preds = %a.after432
  %var.load936 = load ptr, ptr %var.filename, align 8
  %concat.lhs937 = getelementptr inbounds { i64, ptr }, ptr %var.load936, i32 0, i32 0
  %concat.lhs938 = load i64, ptr %concat.lhs937, align 8
  %concat.lhs939 = and i64 %concat.lhs938, 281474976710655
  %str.tag940 = lshr i64 %concat.lhs938, 48
  %str.immortal941 = icmp eq i64 %str.tag940, 0
  br i1 %str.immortal941, label %str_ok943, label %str_gen_check942

choice.exit446:                                   ; preds = %concat.tot.len967, %concat.tot.len924
  %choice.res979 = phi { i1, i64 } [ %ram.pay935, %concat.tot.len924 ], [ %ram.pay978, %concat.tot.len967 ]
  br label %choice.exit

a.create450:                                      ; preds = %choice.then444
  %arena.cur452 = call ptr @dva_arena_current()
  %a.create453 = call ptr @dva_arena_alloc(ptr %arena.cur452, i64 24)
  %arena.cur454 = call ptr @dva_arena_current()
  %a.buf455 = call ptr @dva_arena_alloc(ptr %arena.cur454, i64 128)
  %a.len.gep456 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create453, i32 0, i32 0
  store i64 0, ptr %a.len.gep456, align 8
  %a.data.gep457 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create453, i32 0, i32 1
  store ptr %a.buf455, ptr %a.data.gep457, align 8
  %a.cap.gep458 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create453, i32 0, i32 2
  store i64 16, ptr %a.cap.gep458, align 8
  store ptr %a.create453, ptr %var.diags, align 8
  br label %a.after451

a.after451:                                       ; preds = %a.create450, %choice.then444
  %a.load2459 = load ptr, ptr %var.diags, align 8
  %a.rd.nonnull460 = icmp ne ptr %a.load2459, null
  br i1 %a.rd.nonnull460, label %a.rd.check461, label %a.rd.err.null463

a.rd.check461:                                    ; preds = %a.after451
  %a.rd.len466 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2459, i32 0, i32 0
  %a.rd.len467 = load i64, ptr %a.rd.len466, align 8
  %a.rd.lt468 = icmp slt i64 0, %a.rd.len467
  %a.rd.bounds469 = and i1 true, %a.rd.lt468
  br i1 %a.rd.bounds469, label %a.rd.ok462, label %a.rd.err.oob464

a.rd.ok462:                                       ; preds = %a.rd.check461
  %a.rd.data470 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2459, i32 0, i32 1
  %a.rd.data471 = load ptr, ptr %a.rd.data470, align 8
  %a.rd.elem.gep472 = getelementptr i64, ptr %a.rd.data471, i64 0
  %a.rd.elem473 = load i64, ptr %a.rd.elem.gep472, align 8
  br label %a.rd.done465

a.rd.err.null463:                                 ; preds = %a.after451
  %arena.cur474 = call ptr @dva_arena_current()
  %err.alloc475 = call ptr @dva_arena_alloc(ptr %arena.cur474, i64 56)
  %err.code.gep476 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc475, i32 0, i32 0
  store i64 4011, ptr %err.code.gep476, align 8
  %err.msg.gep477 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc475, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep477, align 8
  %err.file.gep478 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc475, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep478, align 8
  %err.line.gep479 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc475, i32 0, i32 3
  store i64 639, ptr %err.line.gep479, align 8
  %err.col.gep480 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc475, i32 0, i32 4
  store i64 28, ptr %err.col.gep480, align 8
  %err.ctx.gep481 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc475, i32 0, i32 5
  %err.ctx0.gep482 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep481, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep482, align 8
  %err.ctx1.gep483 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep481, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep483, align 8
  %err.p2i484 = ptrtoint ptr %err.alloc475 to i64
  br label %a.rd.done465

a.rd.err.oob464:                                  ; preds = %a.rd.check461
  %arena.cur485 = call ptr @dva_arena_current()
  %err.alloc486 = call ptr @dva_arena_alloc(ptr %arena.cur485, i64 56)
  %err.code.gep487 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc486, i32 0, i32 0
  store i64 4011, ptr %err.code.gep487, align 8
  %err.msg.gep488 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc486, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep488, align 8
  %err.file.gep489 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc486, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep489, align 8
  %err.line.gep490 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc486, i32 0, i32 3
  store i64 639, ptr %err.line.gep490, align 8
  %err.col.gep491 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc486, i32 0, i32 4
  store i64 28, ptr %err.col.gep491, align 8
  %err.ctx.gep492 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc486, i32 0, i32 5
  %err.ctx0.gep493 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep492, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep493, align 8
  %err.ctx1.gep494 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep492, i32 0, i32 1
  store i64 %a.rd.len467, ptr %err.ctx1.gep494, align 8
  %err.p2i495 = ptrtoint ptr %err.alloc486 to i64
  br label %a.rd.done465

a.rd.done465:                                     ; preds = %a.rd.err.oob464, %a.rd.err.null463, %a.rd.ok462
  %a.rd.tag496 = phi i1 [ true, %a.rd.ok462 ], [ false, %a.rd.err.null463 ], [ false, %a.rd.err.oob464 ]
  %a.rd.pay497 = phi i64 [ %a.rd.elem473, %a.rd.ok462 ], [ %err.p2i484, %a.rd.err.null463 ], [ %err.p2i495, %a.rd.err.oob464 ]
  %ram.tag498 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag496, 0
  %ram.pay499 = insertvalue { i1, i64 } %ram.tag498, i64 %a.rd.pay497, 1
  %unwrap.is_pos500 = extractvalue { i1, i64 } %ram.pay499, 0
  br i1 %unwrap.is_pos500, label %unwrap.pos.578, label %unwrap.abort.578

unwrap.pos.578:                                   ; preds = %a.rd.done465
  %unwrap.pay.pos546 = extractvalue { i1, i64 } %ram.pay499, 1
  %pay.ptr547 = inttoptr i64 %unwrap.pay.pos546 to ptr
  store ptr %pay.ptr547, ptr %var.d548, align 8
  %var.load549 = load ptr, ptr %var.d548, align 8
  %fld.gep550 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load549, i32 0, i32 1
  %fld.load551 = load ptr, ptr %fld.gep550, align 8
  %eq.lhs.len552 = getelementptr inbounds { i64, ptr }, ptr %fld.load551, i32 0, i32 0
  %eq.lhs.len553 = load i64, ptr %eq.lhs.len552, align 8
  %eq.lhs.len554 = and i64 %eq.lhs.len553, 281474976710655
  %str.tag555 = lshr i64 %eq.lhs.len553, 48
  %str.immortal556 = icmp eq i64 %str.tag555, 0
  br i1 %str.immortal556, label %str_ok558, label %str_gen_check557

unwrap.abort.578:                                 ; preds = %a.rd.done465
  %unwrap.pay.abort501 = extractvalue { i1, i64 } %ram.pay499, 1
  %err.ptr502 = inttoptr i64 %unwrap.pay.abort501 to ptr
  %err.code.gep503 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr502, i32 0, i32 0
  %err.code504 = load i64, ptr %err.code.gep503, align 8
  %err.msg.gep505 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr502, i32 0, i32 1
  %err.msg.struct506 = load ptr, ptr %err.msg.gep505, align 8
  %err.file.gep507 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr502, i32 0, i32 2
  %err.file.struct508 = load ptr, ptr %err.file.gep507, align 8
  %err.line.gep509 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr502, i32 0, i32 3
  %err.line510 = load i64, ptr %err.line.gep509, align 8
  %err.col.gep511 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr502, i32 0, i32 4
  %err.col512 = load i64, ptr %err.col.gep511, align 8
  %err.msg.len513 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct506, i32 0, i32 0
  %err.msg.len514 = load i64, ptr %err.msg.len513, align 8
  %err.msg.len515 = and i64 %err.msg.len514, 281474976710655
  %str.tag516 = lshr i64 %err.msg.len514, 48
  %str.immortal517 = icmp eq i64 %str.tag516, 0
  br i1 %str.immortal517, label %str_ok519, label %str_gen_check518

str_gen_check518:                                 ; preds = %unwrap.abort.578
  %arena.cur521 = call ptr @dva_arena_current()
  %tag.valid522 = call i1 @dva_arena_validate_tag(ptr %arena.cur521, i64 %str.tag516)
  br i1 %tag.valid522, label %str_ok519, label %str_stale520

str_ok519:                                        ; preds = %str_stale520, %str_gen_check518, %unwrap.abort.578
  %err.msg.len32523 = trunc i64 %err.msg.len515 to i32
  %err.msg.data524 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct506, i32 0, i32 1
  %err.msg.data525 = load ptr, ptr %err.msg.data524, align 8
  %err.file.len526 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct508, i32 0, i32 0
  %err.file.len527 = load i64, ptr %err.file.len526, align 8
  %err.file.len528 = and i64 %err.file.len527, 281474976710655
  %str.tag529 = lshr i64 %err.file.len527, 48
  %str.immortal530 = icmp eq i64 %str.tag529, 0
  br i1 %str.immortal530, label %str_ok532, label %str_gen_check531

str_stale520:                                     ; preds = %str_gen_check518
  %38 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok519

str_gen_check531:                                 ; preds = %str_ok519
  %arena.cur534 = call ptr @dva_arena_current()
  %tag.valid535 = call i1 @dva_arena_validate_tag(ptr %arena.cur534, i64 %str.tag529)
  br i1 %tag.valid535, label %str_ok532, label %str_stale533

str_ok532:                                        ; preds = %str_stale533, %str_gen_check531, %str_ok519
  %err.file.len32536 = trunc i64 %err.file.len528 to i32
  %err.file.data537 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct508, i32 0, i32 1
  %err.file.data538 = load ptr, ptr %err.file.data537, align 8
  %err.thread.rec539 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread540 = icmp ne ptr %err.thread.rec539, null
  br i1 %err.is.thread540, label %err.thread541, label %err.normal542

str_stale533:                                     ; preds = %str_gen_check531
  %39 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok532

err.thread541:                                    ; preds = %str_ok532
  %err.haserr.gep543 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec539, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep543, align 8
  %err.err.gep544 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec539, i32 0, i32 7
  store ptr %err.ptr502, ptr %err.err.gep544, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal542:                                    ; preds = %str_ok532
  %err.panic.printf545 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code504, i32 %err.msg.len32523, ptr %err.msg.data525, i32 %err.file.len32536, ptr %err.file.data538, i64 %err.line510, i64 %err.col512)
  call void @exit(i32 1)
  unreachable

str_gen_check557:                                 ; preds = %unwrap.pos.578
  %arena.cur560 = call ptr @dva_arena_current()
  %tag.valid561 = call i1 @dva_arena_validate_tag(ptr %arena.cur560, i64 %str.tag555)
  br i1 %tag.valid561, label %str_ok558, label %str_stale559

str_ok558:                                        ; preds = %str_stale559, %str_gen_check557, %unwrap.pos.578
  %eq.rhs.len562 = load i64, ptr @str.3.struct, align 8
  %eq.rhs.len563 = and i64 %eq.rhs.len562, 281474976710655
  %str.tag564 = lshr i64 %eq.rhs.len562, 48
  %str.immortal565 = icmp eq i64 %str.tag564, 0
  br i1 %str.immortal565, label %str_ok567, label %str_gen_check566

str_stale559:                                     ; preds = %str_gen_check557
  %40 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok558

str_gen_check566:                                 ; preds = %str_ok558
  %arena.cur569 = call ptr @dva_arena_current()
  %tag.valid570 = call i1 @dva_arena_validate_tag(ptr %arena.cur569, i64 %str.tag564)
  br i1 %tag.valid570, label %str_ok567, label %str_stale568

str_ok567:                                        ; preds = %str_stale568, %str_gen_check566, %str_ok558
  %eq.len571 = icmp eq i64 %eq.lhs.len554, %eq.rhs.len563
  br i1 %eq.len571, label %str.eq.then572, label %str.eq.else573

str_stale568:                                     ; preds = %str_gen_check566
  %41 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok567

str.eq.then572:                                   ; preds = %str_ok567
  %eq.lhs.data575 = getelementptr inbounds { i64, ptr }, ptr %fld.load551, i32 0, i32 1
  %eq.lhs.data576 = load ptr, ptr %eq.lhs.data575, align 8
  %eq.rhs.data577 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp578 = call i32 @memcmp(ptr %eq.lhs.data576, ptr %eq.rhs.data577, i64 %eq.lhs.len554)
  %eq.cmp.zero579 = icmp eq i32 %eq.memcmp578, 0
  br label %str.eq.merge574

str.eq.else573:                                   ; preds = %str_ok567
  br label %str.eq.merge574

str.eq.merge574:                                  ; preds = %str.eq.else573, %str.eq.then572
  %str.eq.result580 = phi i1 [ %eq.cmp.zero579, %str.eq.then572 ], [ false, %str.eq.else573 ]
  %str.neq581 = xor i1 %str.eq.result580, true
  br i1 %str.neq581, label %choice.then582, label %choice.else583

choice.then582:                                   ; preds = %str.eq.merge574
  %var.load585 = load ptr, ptr %var.d548, align 8
  %fld.gep586 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load585, i32 0, i32 1
  %fld.load587 = load ptr, ptr %fld.gep586, align 8
  %concat.lhs588 = getelementptr inbounds { i64, ptr }, ptr %fld.load587, i32 0, i32 0
  %concat.lhs589 = load i64, ptr %concat.lhs588, align 8
  %concat.lhs590 = and i64 %concat.lhs589, 281474976710655
  %str.tag591 = lshr i64 %concat.lhs589, 48
  %str.immortal592 = icmp eq i64 %str.tag591, 0
  br i1 %str.immortal592, label %str_ok594, label %str_gen_check593

choice.else583:                                   ; preds = %str.eq.merge574
  br label %choice.exit584

choice.exit584:                                   ; preds = %choice.else583, %concat.tot.len618
  %choice.res628 = phi ptr [ %concat.str625, %concat.tot.len618 ], [ @str.3.struct, %choice.else583 ]
  store ptr %choice.res628, ptr %var.fn629, align 8
  %var.load630 = load ptr, ptr %var.fn629, align 8
  %var.load631 = load ptr, ptr %var.d548, align 8
  %fld.gep632 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load631, i32 0, i32 2
  %fld.load633 = load i64, ptr %fld.gep632, align 8
  %call.res634 = call ptr @"str::from_int"(i64 %fld.load633)
  %concat.lhs635 = getelementptr inbounds { i64, ptr }, ptr %var.load630, i32 0, i32 0
  %concat.lhs636 = load i64, ptr %concat.lhs635, align 8
  %concat.lhs637 = and i64 %concat.lhs636, 281474976710655
  %str.tag638 = lshr i64 %concat.lhs636, 48
  %str.immortal639 = icmp eq i64 %str.tag638, 0
  br i1 %str.immortal639, label %str_ok641, label %str_gen_check640

str_gen_check593:                                 ; preds = %choice.then582
  %arena.cur596 = call ptr @dva_arena_current()
  %tag.valid597 = call i1 @dva_arena_validate_tag(ptr %arena.cur596, i64 %str.tag591)
  br i1 %tag.valid597, label %str_ok594, label %str_stale595

str_ok594:                                        ; preds = %str_stale595, %str_gen_check593, %choice.then582
  %concat.lhs598 = getelementptr inbounds { i64, ptr }, ptr %fld.load587, i32 0, i32 1
  %concat.lhs599 = load ptr, ptr %concat.lhs598, align 8
  %concat.rhs600 = load i64, ptr @str.56.struct, align 8
  %concat.rhs601 = and i64 %concat.rhs600, 281474976710655
  %str.tag602 = lshr i64 %concat.rhs600, 48
  %str.immortal603 = icmp eq i64 %str.tag602, 0
  br i1 %str.immortal603, label %str_ok605, label %str_gen_check604

str_stale595:                                     ; preds = %str_gen_check593
  %42 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok594

str_gen_check604:                                 ; preds = %str_ok594
  %arena.cur607 = call ptr @dva_arena_current()
  %tag.valid608 = call i1 @dva_arena_validate_tag(ptr %arena.cur607, i64 %str.tag602)
  br i1 %tag.valid608, label %str_ok605, label %str_stale606

str_ok605:                                        ; preds = %str_stale606, %str_gen_check604, %str_ok594
  %concat.rhs609 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.56.struct, i32 0, i32 1), align 8
  %concat.sum.len610 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs590, i64 %concat.rhs601)
  %sum611 = extractvalue { i64, i1 } %concat.sum.len610, 0
  %ovf612 = extractvalue { i64, i1 } %concat.sum.len610, 1
  br i1 %ovf612, label %str_overflow_abort614, label %concat.sum.len613

str_stale606:                                     ; preds = %str_gen_check604
  %43 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok605

concat.sum.len613:                                ; preds = %str_overflow_abort614, %str_ok605
  %concat.tot.len615 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum611, i64 1)
  %sum616 = extractvalue { i64, i1 } %concat.tot.len615, 0
  %ovf617 = extractvalue { i64, i1 } %concat.tot.len615, 1
  br i1 %ovf617, label %str_overflow_abort619, label %concat.tot.len618

str_overflow_abort614:                            ; preds = %str_ok605
  %44 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len613

concat.tot.len618:                                ; preds = %str_overflow_abort619, %concat.sum.len613
  %arena.cur620 = call ptr @dva_arena_current()
  %concat.buf621 = call ptr @dva_arena_alloc(ptr %arena.cur620, i64 %sum616)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf621, ptr align 1 %concat.lhs599, i64 %concat.lhs590, i1 false)
  %concat.mid622 = getelementptr i8, ptr %concat.buf621, i64 %concat.lhs590
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid622, ptr align 1 %concat.rhs609, i64 %concat.rhs601, i1 false)
  %concat.nul623 = getelementptr i8, ptr %concat.buf621, i64 %sum611
  store i8 0, ptr %concat.nul623, align 1
  %arena.cur624 = call ptr @dva_arena_current()
  %concat.str625 = call ptr @dva_arena_alloc(ptr %arena.cur624, i64 16)
  %str.build.len.gep626 = getelementptr inbounds { i64, ptr }, ptr %concat.str625, i32 0, i32 0
  store i64 %sum611, ptr %str.build.len.gep626, align 8
  %str.build.data.gep627 = getelementptr inbounds { i64, ptr }, ptr %concat.str625, i32 0, i32 1
  store ptr %concat.buf621, ptr %str.build.data.gep627, align 8
  br label %choice.exit584

str_overflow_abort619:                            ; preds = %concat.sum.len613
  %45 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len618

str_gen_check640:                                 ; preds = %choice.exit584
  %arena.cur643 = call ptr @dva_arena_current()
  %tag.valid644 = call i1 @dva_arena_validate_tag(ptr %arena.cur643, i64 %str.tag638)
  br i1 %tag.valid644, label %str_ok641, label %str_stale642

str_ok641:                                        ; preds = %str_stale642, %str_gen_check640, %choice.exit584
  %concat.lhs645 = getelementptr inbounds { i64, ptr }, ptr %var.load630, i32 0, i32 1
  %concat.lhs646 = load ptr, ptr %concat.lhs645, align 8
  %concat.rhs647 = getelementptr inbounds { i64, ptr }, ptr %call.res634, i32 0, i32 0
  %concat.rhs648 = load i64, ptr %concat.rhs647, align 8
  %concat.rhs649 = and i64 %concat.rhs648, 281474976710655
  %str.tag650 = lshr i64 %concat.rhs648, 48
  %str.immortal651 = icmp eq i64 %str.tag650, 0
  br i1 %str.immortal651, label %str_ok653, label %str_gen_check652

str_stale642:                                     ; preds = %str_gen_check640
  %46 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok641

str_gen_check652:                                 ; preds = %str_ok641
  %arena.cur655 = call ptr @dva_arena_current()
  %tag.valid656 = call i1 @dva_arena_validate_tag(ptr %arena.cur655, i64 %str.tag650)
  br i1 %tag.valid656, label %str_ok653, label %str_stale654

str_ok653:                                        ; preds = %str_stale654, %str_gen_check652, %str_ok641
  %concat.rhs657 = getelementptr inbounds { i64, ptr }, ptr %call.res634, i32 0, i32 1
  %concat.rhs658 = load ptr, ptr %concat.rhs657, align 8
  %concat.sum.len659 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs637, i64 %concat.rhs649)
  %sum660 = extractvalue { i64, i1 } %concat.sum.len659, 0
  %ovf661 = extractvalue { i64, i1 } %concat.sum.len659, 1
  br i1 %ovf661, label %str_overflow_abort663, label %concat.sum.len662

str_stale654:                                     ; preds = %str_gen_check652
  %47 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok653

concat.sum.len662:                                ; preds = %str_overflow_abort663, %str_ok653
  %concat.tot.len664 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum660, i64 1)
  %sum665 = extractvalue { i64, i1 } %concat.tot.len664, 0
  %ovf666 = extractvalue { i64, i1 } %concat.tot.len664, 1
  br i1 %ovf666, label %str_overflow_abort668, label %concat.tot.len667

str_overflow_abort663:                            ; preds = %str_ok653
  %48 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len662

concat.tot.len667:                                ; preds = %str_overflow_abort668, %concat.sum.len662
  %arena.cur669 = call ptr @dva_arena_current()
  %concat.buf670 = call ptr @dva_arena_alloc(ptr %arena.cur669, i64 %sum665)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf670, ptr align 1 %concat.lhs646, i64 %concat.lhs637, i1 false)
  %concat.mid671 = getelementptr i8, ptr %concat.buf670, i64 %concat.lhs637
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid671, ptr align 1 %concat.rhs658, i64 %concat.rhs649, i1 false)
  %concat.nul672 = getelementptr i8, ptr %concat.buf670, i64 %sum660
  store i8 0, ptr %concat.nul672, align 1
  %arena.cur673 = call ptr @dva_arena_current()
  %concat.str674 = call ptr @dva_arena_alloc(ptr %arena.cur673, i64 16)
  %str.build.len.gep675 = getelementptr inbounds { i64, ptr }, ptr %concat.str674, i32 0, i32 0
  store i64 %sum660, ptr %str.build.len.gep675, align 8
  %str.build.data.gep676 = getelementptr inbounds { i64, ptr }, ptr %concat.str674, i32 0, i32 1
  store ptr %concat.buf670, ptr %str.build.data.gep676, align 8
  %concat.lhs677 = getelementptr inbounds { i64, ptr }, ptr %concat.str674, i32 0, i32 0
  %concat.lhs678 = load i64, ptr %concat.lhs677, align 8
  %concat.lhs679 = and i64 %concat.lhs678, 281474976710655
  %str.tag680 = lshr i64 %concat.lhs678, 48
  %str.immortal681 = icmp eq i64 %str.tag680, 0
  br i1 %str.immortal681, label %str_ok683, label %str_gen_check682

str_overflow_abort668:                            ; preds = %concat.sum.len662
  %49 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len667

str_gen_check682:                                 ; preds = %concat.tot.len667
  %arena.cur685 = call ptr @dva_arena_current()
  %tag.valid686 = call i1 @dva_arena_validate_tag(ptr %arena.cur685, i64 %str.tag680)
  br i1 %tag.valid686, label %str_ok683, label %str_stale684

str_ok683:                                        ; preds = %str_stale684, %str_gen_check682, %concat.tot.len667
  %concat.lhs687 = getelementptr inbounds { i64, ptr }, ptr %concat.str674, i32 0, i32 1
  %concat.lhs688 = load ptr, ptr %concat.lhs687, align 8
  %concat.rhs689 = load i64, ptr @str.56.struct, align 8
  %concat.rhs690 = and i64 %concat.rhs689, 281474976710655
  %str.tag691 = lshr i64 %concat.rhs689, 48
  %str.immortal692 = icmp eq i64 %str.tag691, 0
  br i1 %str.immortal692, label %str_ok694, label %str_gen_check693

str_stale684:                                     ; preds = %str_gen_check682
  %50 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok683

str_gen_check693:                                 ; preds = %str_ok683
  %arena.cur696 = call ptr @dva_arena_current()
  %tag.valid697 = call i1 @dva_arena_validate_tag(ptr %arena.cur696, i64 %str.tag691)
  br i1 %tag.valid697, label %str_ok694, label %str_stale695

str_ok694:                                        ; preds = %str_stale695, %str_gen_check693, %str_ok683
  %concat.rhs698 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.56.struct, i32 0, i32 1), align 8
  %concat.sum.len699 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs679, i64 %concat.rhs690)
  %sum700 = extractvalue { i64, i1 } %concat.sum.len699, 0
  %ovf701 = extractvalue { i64, i1 } %concat.sum.len699, 1
  br i1 %ovf701, label %str_overflow_abort703, label %concat.sum.len702

str_stale695:                                     ; preds = %str_gen_check693
  %51 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok694

concat.sum.len702:                                ; preds = %str_overflow_abort703, %str_ok694
  %concat.tot.len704 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum700, i64 1)
  %sum705 = extractvalue { i64, i1 } %concat.tot.len704, 0
  %ovf706 = extractvalue { i64, i1 } %concat.tot.len704, 1
  br i1 %ovf706, label %str_overflow_abort708, label %concat.tot.len707

str_overflow_abort703:                            ; preds = %str_ok694
  %52 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len702

concat.tot.len707:                                ; preds = %str_overflow_abort708, %concat.sum.len702
  %arena.cur709 = call ptr @dva_arena_current()
  %concat.buf710 = call ptr @dva_arena_alloc(ptr %arena.cur709, i64 %sum705)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf710, ptr align 1 %concat.lhs688, i64 %concat.lhs679, i1 false)
  %concat.mid711 = getelementptr i8, ptr %concat.buf710, i64 %concat.lhs679
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid711, ptr align 1 %concat.rhs698, i64 %concat.rhs690, i1 false)
  %concat.nul712 = getelementptr i8, ptr %concat.buf710, i64 %sum700
  store i8 0, ptr %concat.nul712, align 1
  %arena.cur713 = call ptr @dva_arena_current()
  %concat.str714 = call ptr @dva_arena_alloc(ptr %arena.cur713, i64 16)
  %str.build.len.gep715 = getelementptr inbounds { i64, ptr }, ptr %concat.str714, i32 0, i32 0
  store i64 %sum700, ptr %str.build.len.gep715, align 8
  %str.build.data.gep716 = getelementptr inbounds { i64, ptr }, ptr %concat.str714, i32 0, i32 1
  store ptr %concat.buf710, ptr %str.build.data.gep716, align 8
  %var.load717 = load ptr, ptr %var.d548, align 8
  %fld.gep718 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load717, i32 0, i32 3
  %fld.load719 = load i64, ptr %fld.gep718, align 8
  %call.res720 = call ptr @"str::from_int"(i64 %fld.load719)
  %concat.lhs721 = getelementptr inbounds { i64, ptr }, ptr %concat.str714, i32 0, i32 0
  %concat.lhs722 = load i64, ptr %concat.lhs721, align 8
  %concat.lhs723 = and i64 %concat.lhs722, 281474976710655
  %str.tag724 = lshr i64 %concat.lhs722, 48
  %str.immortal725 = icmp eq i64 %str.tag724, 0
  br i1 %str.immortal725, label %str_ok727, label %str_gen_check726

str_overflow_abort708:                            ; preds = %concat.sum.len702
  %53 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len707

str_gen_check726:                                 ; preds = %concat.tot.len707
  %arena.cur729 = call ptr @dva_arena_current()
  %tag.valid730 = call i1 @dva_arena_validate_tag(ptr %arena.cur729, i64 %str.tag724)
  br i1 %tag.valid730, label %str_ok727, label %str_stale728

str_ok727:                                        ; preds = %str_stale728, %str_gen_check726, %concat.tot.len707
  %concat.lhs731 = getelementptr inbounds { i64, ptr }, ptr %concat.str714, i32 0, i32 1
  %concat.lhs732 = load ptr, ptr %concat.lhs731, align 8
  %concat.rhs733 = getelementptr inbounds { i64, ptr }, ptr %call.res720, i32 0, i32 0
  %concat.rhs734 = load i64, ptr %concat.rhs733, align 8
  %concat.rhs735 = and i64 %concat.rhs734, 281474976710655
  %str.tag736 = lshr i64 %concat.rhs734, 48
  %str.immortal737 = icmp eq i64 %str.tag736, 0
  br i1 %str.immortal737, label %str_ok739, label %str_gen_check738

str_stale728:                                     ; preds = %str_gen_check726
  %54 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok727

str_gen_check738:                                 ; preds = %str_ok727
  %arena.cur741 = call ptr @dva_arena_current()
  %tag.valid742 = call i1 @dva_arena_validate_tag(ptr %arena.cur741, i64 %str.tag736)
  br i1 %tag.valid742, label %str_ok739, label %str_stale740

str_ok739:                                        ; preds = %str_stale740, %str_gen_check738, %str_ok727
  %concat.rhs743 = getelementptr inbounds { i64, ptr }, ptr %call.res720, i32 0, i32 1
  %concat.rhs744 = load ptr, ptr %concat.rhs743, align 8
  %concat.sum.len745 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs723, i64 %concat.rhs735)
  %sum746 = extractvalue { i64, i1 } %concat.sum.len745, 0
  %ovf747 = extractvalue { i64, i1 } %concat.sum.len745, 1
  br i1 %ovf747, label %str_overflow_abort749, label %concat.sum.len748

str_stale740:                                     ; preds = %str_gen_check738
  %55 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok739

concat.sum.len748:                                ; preds = %str_overflow_abort749, %str_ok739
  %concat.tot.len750 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum746, i64 1)
  %sum751 = extractvalue { i64, i1 } %concat.tot.len750, 0
  %ovf752 = extractvalue { i64, i1 } %concat.tot.len750, 1
  br i1 %ovf752, label %str_overflow_abort754, label %concat.tot.len753

str_overflow_abort749:                            ; preds = %str_ok739
  %56 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len748

concat.tot.len753:                                ; preds = %str_overflow_abort754, %concat.sum.len748
  %arena.cur755 = call ptr @dva_arena_current()
  %concat.buf756 = call ptr @dva_arena_alloc(ptr %arena.cur755, i64 %sum751)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf756, ptr align 1 %concat.lhs732, i64 %concat.lhs723, i1 false)
  %concat.mid757 = getelementptr i8, ptr %concat.buf756, i64 %concat.lhs723
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid757, ptr align 1 %concat.rhs744, i64 %concat.rhs735, i1 false)
  %concat.nul758 = getelementptr i8, ptr %concat.buf756, i64 %sum746
  store i8 0, ptr %concat.nul758, align 1
  %arena.cur759 = call ptr @dva_arena_current()
  %concat.str760 = call ptr @dva_arena_alloc(ptr %arena.cur759, i64 16)
  %str.build.len.gep761 = getelementptr inbounds { i64, ptr }, ptr %concat.str760, i32 0, i32 0
  store i64 %sum746, ptr %str.build.len.gep761, align 8
  %str.build.data.gep762 = getelementptr inbounds { i64, ptr }, ptr %concat.str760, i32 0, i32 1
  store ptr %concat.buf756, ptr %str.build.data.gep762, align 8
  %concat.lhs763 = getelementptr inbounds { i64, ptr }, ptr %concat.str760, i32 0, i32 0
  %concat.lhs764 = load i64, ptr %concat.lhs763, align 8
  %concat.lhs765 = and i64 %concat.lhs764, 281474976710655
  %str.tag766 = lshr i64 %concat.lhs764, 48
  %str.immortal767 = icmp eq i64 %str.tag766, 0
  br i1 %str.immortal767, label %str_ok769, label %str_gen_check768

str_overflow_abort754:                            ; preds = %concat.sum.len748
  %57 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len753

str_gen_check768:                                 ; preds = %concat.tot.len753
  %arena.cur771 = call ptr @dva_arena_current()
  %tag.valid772 = call i1 @dva_arena_validate_tag(ptr %arena.cur771, i64 %str.tag766)
  br i1 %tag.valid772, label %str_ok769, label %str_stale770

str_ok769:                                        ; preds = %str_stale770, %str_gen_check768, %concat.tot.len753
  %concat.lhs773 = getelementptr inbounds { i64, ptr }, ptr %concat.str760, i32 0, i32 1
  %concat.lhs774 = load ptr, ptr %concat.lhs773, align 8
  %concat.rhs775 = load i64, ptr @str.57.struct, align 8
  %concat.rhs776 = and i64 %concat.rhs775, 281474976710655
  %str.tag777 = lshr i64 %concat.rhs775, 48
  %str.immortal778 = icmp eq i64 %str.tag777, 0
  br i1 %str.immortal778, label %str_ok780, label %str_gen_check779

str_stale770:                                     ; preds = %str_gen_check768
  %58 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok769

str_gen_check779:                                 ; preds = %str_ok769
  %arena.cur782 = call ptr @dva_arena_current()
  %tag.valid783 = call i1 @dva_arena_validate_tag(ptr %arena.cur782, i64 %str.tag777)
  br i1 %tag.valid783, label %str_ok780, label %str_stale781

str_ok780:                                        ; preds = %str_stale781, %str_gen_check779, %str_ok769
  %concat.rhs784 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.57.struct, i32 0, i32 1), align 8
  %concat.sum.len785 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs765, i64 %concat.rhs776)
  %sum786 = extractvalue { i64, i1 } %concat.sum.len785, 0
  %ovf787 = extractvalue { i64, i1 } %concat.sum.len785, 1
  br i1 %ovf787, label %str_overflow_abort789, label %concat.sum.len788

str_stale781:                                     ; preds = %str_gen_check779
  %59 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok780

concat.sum.len788:                                ; preds = %str_overflow_abort789, %str_ok780
  %concat.tot.len790 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum786, i64 1)
  %sum791 = extractvalue { i64, i1 } %concat.tot.len790, 0
  %ovf792 = extractvalue { i64, i1 } %concat.tot.len790, 1
  br i1 %ovf792, label %str_overflow_abort794, label %concat.tot.len793

str_overflow_abort789:                            ; preds = %str_ok780
  %60 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len788

concat.tot.len793:                                ; preds = %str_overflow_abort794, %concat.sum.len788
  %arena.cur795 = call ptr @dva_arena_current()
  %concat.buf796 = call ptr @dva_arena_alloc(ptr %arena.cur795, i64 %sum791)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf796, ptr align 1 %concat.lhs774, i64 %concat.lhs765, i1 false)
  %concat.mid797 = getelementptr i8, ptr %concat.buf796, i64 %concat.lhs765
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid797, ptr align 1 %concat.rhs784, i64 %concat.rhs776, i1 false)
  %concat.nul798 = getelementptr i8, ptr %concat.buf796, i64 %sum786
  store i8 0, ptr %concat.nul798, align 1
  %arena.cur799 = call ptr @dva_arena_current()
  %concat.str800 = call ptr @dva_arena_alloc(ptr %arena.cur799, i64 16)
  %str.build.len.gep801 = getelementptr inbounds { i64, ptr }, ptr %concat.str800, i32 0, i32 0
  store i64 %sum786, ptr %str.build.len.gep801, align 8
  %str.build.data.gep802 = getelementptr inbounds { i64, ptr }, ptr %concat.str800, i32 0, i32 1
  store ptr %concat.buf796, ptr %str.build.data.gep802, align 8
  %var.load803 = load ptr, ptr %var.d548, align 8
  %fld.gep804 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load803, i32 0, i32 0
  %fld.load805 = load i64, ptr %fld.gep804, align 8
  %call.res806 = call ptr @"str::from_int"(i64 %fld.load805)
  %concat.lhs807 = getelementptr inbounds { i64, ptr }, ptr %concat.str800, i32 0, i32 0
  %concat.lhs808 = load i64, ptr %concat.lhs807, align 8
  %concat.lhs809 = and i64 %concat.lhs808, 281474976710655
  %str.tag810 = lshr i64 %concat.lhs808, 48
  %str.immortal811 = icmp eq i64 %str.tag810, 0
  br i1 %str.immortal811, label %str_ok813, label %str_gen_check812

str_overflow_abort794:                            ; preds = %concat.sum.len788
  %61 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len793

str_gen_check812:                                 ; preds = %concat.tot.len793
  %arena.cur815 = call ptr @dva_arena_current()
  %tag.valid816 = call i1 @dva_arena_validate_tag(ptr %arena.cur815, i64 %str.tag810)
  br i1 %tag.valid816, label %str_ok813, label %str_stale814

str_ok813:                                        ; preds = %str_stale814, %str_gen_check812, %concat.tot.len793
  %concat.lhs817 = getelementptr inbounds { i64, ptr }, ptr %concat.str800, i32 0, i32 1
  %concat.lhs818 = load ptr, ptr %concat.lhs817, align 8
  %concat.rhs819 = getelementptr inbounds { i64, ptr }, ptr %call.res806, i32 0, i32 0
  %concat.rhs820 = load i64, ptr %concat.rhs819, align 8
  %concat.rhs821 = and i64 %concat.rhs820, 281474976710655
  %str.tag822 = lshr i64 %concat.rhs820, 48
  %str.immortal823 = icmp eq i64 %str.tag822, 0
  br i1 %str.immortal823, label %str_ok825, label %str_gen_check824

str_stale814:                                     ; preds = %str_gen_check812
  %62 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok813

str_gen_check824:                                 ; preds = %str_ok813
  %arena.cur827 = call ptr @dva_arena_current()
  %tag.valid828 = call i1 @dva_arena_validate_tag(ptr %arena.cur827, i64 %str.tag822)
  br i1 %tag.valid828, label %str_ok825, label %str_stale826

str_ok825:                                        ; preds = %str_stale826, %str_gen_check824, %str_ok813
  %concat.rhs829 = getelementptr inbounds { i64, ptr }, ptr %call.res806, i32 0, i32 1
  %concat.rhs830 = load ptr, ptr %concat.rhs829, align 8
  %concat.sum.len831 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs809, i64 %concat.rhs821)
  %sum832 = extractvalue { i64, i1 } %concat.sum.len831, 0
  %ovf833 = extractvalue { i64, i1 } %concat.sum.len831, 1
  br i1 %ovf833, label %str_overflow_abort835, label %concat.sum.len834

str_stale826:                                     ; preds = %str_gen_check824
  %63 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok825

concat.sum.len834:                                ; preds = %str_overflow_abort835, %str_ok825
  %concat.tot.len836 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum832, i64 1)
  %sum837 = extractvalue { i64, i1 } %concat.tot.len836, 0
  %ovf838 = extractvalue { i64, i1 } %concat.tot.len836, 1
  br i1 %ovf838, label %str_overflow_abort840, label %concat.tot.len839

str_overflow_abort835:                            ; preds = %str_ok825
  %64 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len834

concat.tot.len839:                                ; preds = %str_overflow_abort840, %concat.sum.len834
  %arena.cur841 = call ptr @dva_arena_current()
  %concat.buf842 = call ptr @dva_arena_alloc(ptr %arena.cur841, i64 %sum837)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf842, ptr align 1 %concat.lhs818, i64 %concat.lhs809, i1 false)
  %concat.mid843 = getelementptr i8, ptr %concat.buf842, i64 %concat.lhs809
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid843, ptr align 1 %concat.rhs830, i64 %concat.rhs821, i1 false)
  %concat.nul844 = getelementptr i8, ptr %concat.buf842, i64 %sum832
  store i8 0, ptr %concat.nul844, align 1
  %arena.cur845 = call ptr @dva_arena_current()
  %concat.str846 = call ptr @dva_arena_alloc(ptr %arena.cur845, i64 16)
  %str.build.len.gep847 = getelementptr inbounds { i64, ptr }, ptr %concat.str846, i32 0, i32 0
  store i64 %sum832, ptr %str.build.len.gep847, align 8
  %str.build.data.gep848 = getelementptr inbounds { i64, ptr }, ptr %concat.str846, i32 0, i32 1
  store ptr %concat.buf842, ptr %str.build.data.gep848, align 8
  %concat.lhs849 = getelementptr inbounds { i64, ptr }, ptr %concat.str846, i32 0, i32 0
  %concat.lhs850 = load i64, ptr %concat.lhs849, align 8
  %concat.lhs851 = and i64 %concat.lhs850, 281474976710655
  %str.tag852 = lshr i64 %concat.lhs850, 48
  %str.immortal853 = icmp eq i64 %str.tag852, 0
  br i1 %str.immortal853, label %str_ok855, label %str_gen_check854

str_overflow_abort840:                            ; preds = %concat.sum.len834
  %65 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len839

str_gen_check854:                                 ; preds = %concat.tot.len839
  %arena.cur857 = call ptr @dva_arena_current()
  %tag.valid858 = call i1 @dva_arena_validate_tag(ptr %arena.cur857, i64 %str.tag852)
  br i1 %tag.valid858, label %str_ok855, label %str_stale856

str_ok855:                                        ; preds = %str_stale856, %str_gen_check854, %concat.tot.len839
  %concat.lhs859 = getelementptr inbounds { i64, ptr }, ptr %concat.str846, i32 0, i32 1
  %concat.lhs860 = load ptr, ptr %concat.lhs859, align 8
  %concat.rhs861 = load i64, ptr @str.2.struct, align 8
  %concat.rhs862 = and i64 %concat.rhs861, 281474976710655
  %str.tag863 = lshr i64 %concat.rhs861, 48
  %str.immortal864 = icmp eq i64 %str.tag863, 0
  br i1 %str.immortal864, label %str_ok866, label %str_gen_check865

str_stale856:                                     ; preds = %str_gen_check854
  %66 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok855

str_gen_check865:                                 ; preds = %str_ok855
  %arena.cur868 = call ptr @dva_arena_current()
  %tag.valid869 = call i1 @dva_arena_validate_tag(ptr %arena.cur868, i64 %str.tag863)
  br i1 %tag.valid869, label %str_ok866, label %str_stale867

str_ok866:                                        ; preds = %str_stale867, %str_gen_check865, %str_ok855
  %concat.rhs870 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %concat.sum.len871 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs851, i64 %concat.rhs862)
  %sum872 = extractvalue { i64, i1 } %concat.sum.len871, 0
  %ovf873 = extractvalue { i64, i1 } %concat.sum.len871, 1
  br i1 %ovf873, label %str_overflow_abort875, label %concat.sum.len874

str_stale867:                                     ; preds = %str_gen_check865
  %67 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok866

concat.sum.len874:                                ; preds = %str_overflow_abort875, %str_ok866
  %concat.tot.len876 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum872, i64 1)
  %sum877 = extractvalue { i64, i1 } %concat.tot.len876, 0
  %ovf878 = extractvalue { i64, i1 } %concat.tot.len876, 1
  br i1 %ovf878, label %str_overflow_abort880, label %concat.tot.len879

str_overflow_abort875:                            ; preds = %str_ok866
  %68 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len874

concat.tot.len879:                                ; preds = %str_overflow_abort880, %concat.sum.len874
  %arena.cur881 = call ptr @dva_arena_current()
  %concat.buf882 = call ptr @dva_arena_alloc(ptr %arena.cur881, i64 %sum877)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf882, ptr align 1 %concat.lhs860, i64 %concat.lhs851, i1 false)
  %concat.mid883 = getelementptr i8, ptr %concat.buf882, i64 %concat.lhs851
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid883, ptr align 1 %concat.rhs870, i64 %concat.rhs862, i1 false)
  %concat.nul884 = getelementptr i8, ptr %concat.buf882, i64 %sum872
  store i8 0, ptr %concat.nul884, align 1
  %arena.cur885 = call ptr @dva_arena_current()
  %concat.str886 = call ptr @dva_arena_alloc(ptr %arena.cur885, i64 16)
  %str.build.len.gep887 = getelementptr inbounds { i64, ptr }, ptr %concat.str886, i32 0, i32 0
  store i64 %sum872, ptr %str.build.len.gep887, align 8
  %str.build.data.gep888 = getelementptr inbounds { i64, ptr }, ptr %concat.str886, i32 0, i32 1
  store ptr %concat.buf882, ptr %str.build.data.gep888, align 8
  %var.load889 = load ptr, ptr %var.d548, align 8
  %fld.gep890 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load889, i32 0, i32 4
  %fld.load891 = load ptr, ptr %fld.gep890, align 8
  %concat.lhs892 = getelementptr inbounds { i64, ptr }, ptr %concat.str886, i32 0, i32 0
  %concat.lhs893 = load i64, ptr %concat.lhs892, align 8
  %concat.lhs894 = and i64 %concat.lhs893, 281474976710655
  %str.tag895 = lshr i64 %concat.lhs893, 48
  %str.immortal896 = icmp eq i64 %str.tag895, 0
  br i1 %str.immortal896, label %str_ok898, label %str_gen_check897

str_overflow_abort880:                            ; preds = %concat.sum.len874
  %69 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len879

str_gen_check897:                                 ; preds = %concat.tot.len879
  %arena.cur900 = call ptr @dva_arena_current()
  %tag.valid901 = call i1 @dva_arena_validate_tag(ptr %arena.cur900, i64 %str.tag895)
  br i1 %tag.valid901, label %str_ok898, label %str_stale899

str_ok898:                                        ; preds = %str_stale899, %str_gen_check897, %concat.tot.len879
  %concat.lhs902 = getelementptr inbounds { i64, ptr }, ptr %concat.str886, i32 0, i32 1
  %concat.lhs903 = load ptr, ptr %concat.lhs902, align 8
  %concat.rhs904 = getelementptr inbounds { i64, ptr }, ptr %fld.load891, i32 0, i32 0
  %concat.rhs905 = load i64, ptr %concat.rhs904, align 8
  %concat.rhs906 = and i64 %concat.rhs905, 281474976710655
  %str.tag907 = lshr i64 %concat.rhs905, 48
  %str.immortal908 = icmp eq i64 %str.tag907, 0
  br i1 %str.immortal908, label %str_ok910, label %str_gen_check909

str_stale899:                                     ; preds = %str_gen_check897
  %70 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok898

str_gen_check909:                                 ; preds = %str_ok898
  %arena.cur912 = call ptr @dva_arena_current()
  %tag.valid913 = call i1 @dva_arena_validate_tag(ptr %arena.cur912, i64 %str.tag907)
  br i1 %tag.valid913, label %str_ok910, label %str_stale911

str_ok910:                                        ; preds = %str_stale911, %str_gen_check909, %str_ok898
  %concat.rhs914 = getelementptr inbounds { i64, ptr }, ptr %fld.load891, i32 0, i32 1
  %concat.rhs915 = load ptr, ptr %concat.rhs914, align 8
  %concat.sum.len916 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs894, i64 %concat.rhs906)
  %sum917 = extractvalue { i64, i1 } %concat.sum.len916, 0
  %ovf918 = extractvalue { i64, i1 } %concat.sum.len916, 1
  br i1 %ovf918, label %str_overflow_abort920, label %concat.sum.len919

str_stale911:                                     ; preds = %str_gen_check909
  %71 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok910

concat.sum.len919:                                ; preds = %str_overflow_abort920, %str_ok910
  %concat.tot.len921 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum917, i64 1)
  %sum922 = extractvalue { i64, i1 } %concat.tot.len921, 0
  %ovf923 = extractvalue { i64, i1 } %concat.tot.len921, 1
  br i1 %ovf923, label %str_overflow_abort925, label %concat.tot.len924

str_overflow_abort920:                            ; preds = %str_ok910
  %72 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len919

concat.tot.len924:                                ; preds = %str_overflow_abort925, %concat.sum.len919
  %arena.cur926 = call ptr @dva_arena_current()
  %concat.buf927 = call ptr @dva_arena_alloc(ptr %arena.cur926, i64 %sum922)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf927, ptr align 1 %concat.lhs903, i64 %concat.lhs894, i1 false)
  %concat.mid928 = getelementptr i8, ptr %concat.buf927, i64 %concat.lhs894
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid928, ptr align 1 %concat.rhs915, i64 %concat.rhs906, i1 false)
  %concat.nul929 = getelementptr i8, ptr %concat.buf927, i64 %sum917
  store i8 0, ptr %concat.nul929, align 1
  %arena.cur930 = call ptr @dva_arena_current()
  %concat.str931 = call ptr @dva_arena_alloc(ptr %arena.cur930, i64 16)
  %str.build.len.gep932 = getelementptr inbounds { i64, ptr }, ptr %concat.str931, i32 0, i32 0
  store i64 %sum917, ptr %str.build.len.gep932, align 8
  %str.build.data.gep933 = getelementptr inbounds { i64, ptr }, ptr %concat.str931, i32 0, i32 1
  store ptr %concat.buf927, ptr %str.build.data.gep933, align 8
  %p.to.i64934 = ptrtoint ptr %concat.str931 to i64
  %ram.pay935 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64934, 1
  br label %choice.exit446

str_overflow_abort925:                            ; preds = %concat.sum.len919
  %73 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len924

str_gen_check942:                                 ; preds = %choice.else445
  %arena.cur945 = call ptr @dva_arena_current()
  %tag.valid946 = call i1 @dva_arena_validate_tag(ptr %arena.cur945, i64 %str.tag940)
  br i1 %tag.valid946, label %str_ok943, label %str_stale944

str_ok943:                                        ; preds = %str_stale944, %str_gen_check942, %choice.else445
  %concat.lhs947 = getelementptr inbounds { i64, ptr }, ptr %var.load936, i32 0, i32 1
  %concat.lhs948 = load ptr, ptr %concat.lhs947, align 8
  %concat.rhs949 = load i64, ptr @str.58.struct, align 8
  %concat.rhs950 = and i64 %concat.rhs949, 281474976710655
  %str.tag951 = lshr i64 %concat.rhs949, 48
  %str.immortal952 = icmp eq i64 %str.tag951, 0
  br i1 %str.immortal952, label %str_ok954, label %str_gen_check953

str_stale944:                                     ; preds = %str_gen_check942
  %74 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok943

str_gen_check953:                                 ; preds = %str_ok943
  %arena.cur956 = call ptr @dva_arena_current()
  %tag.valid957 = call i1 @dva_arena_validate_tag(ptr %arena.cur956, i64 %str.tag951)
  br i1 %tag.valid957, label %str_ok954, label %str_stale955

str_ok954:                                        ; preds = %str_stale955, %str_gen_check953, %str_ok943
  %concat.rhs958 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.58.struct, i32 0, i32 1), align 8
  %concat.sum.len959 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs939, i64 %concat.rhs950)
  %sum960 = extractvalue { i64, i1 } %concat.sum.len959, 0
  %ovf961 = extractvalue { i64, i1 } %concat.sum.len959, 1
  br i1 %ovf961, label %str_overflow_abort963, label %concat.sum.len962

str_stale955:                                     ; preds = %str_gen_check953
  %75 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok954

concat.sum.len962:                                ; preds = %str_overflow_abort963, %str_ok954
  %concat.tot.len964 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum960, i64 1)
  %sum965 = extractvalue { i64, i1 } %concat.tot.len964, 0
  %ovf966 = extractvalue { i64, i1 } %concat.tot.len964, 1
  br i1 %ovf966, label %str_overflow_abort968, label %concat.tot.len967

str_overflow_abort963:                            ; preds = %str_ok954
  %76 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len962

concat.tot.len967:                                ; preds = %str_overflow_abort968, %concat.sum.len962
  %arena.cur969 = call ptr @dva_arena_current()
  %concat.buf970 = call ptr @dva_arena_alloc(ptr %arena.cur969, i64 %sum965)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf970, ptr align 1 %concat.lhs948, i64 %concat.lhs939, i1 false)
  %concat.mid971 = getelementptr i8, ptr %concat.buf970, i64 %concat.lhs939
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid971, ptr align 1 %concat.rhs958, i64 %concat.rhs950, i1 false)
  %concat.nul972 = getelementptr i8, ptr %concat.buf970, i64 %sum960
  store i8 0, ptr %concat.nul972, align 1
  %arena.cur973 = call ptr @dva_arena_current()
  %concat.str974 = call ptr @dva_arena_alloc(ptr %arena.cur973, i64 16)
  %str.build.len.gep975 = getelementptr inbounds { i64, ptr }, ptr %concat.str974, i32 0, i32 0
  store i64 %sum960, ptr %str.build.len.gep975, align 8
  %str.build.data.gep976 = getelementptr inbounds { i64, ptr }, ptr %concat.str974, i32 0, i32 1
  store ptr %concat.buf970, ptr %str.build.data.gep976, align 8
  %p.to.i64977 = ptrtoint ptr %concat.str974 to i64
  %ram.pay978 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64977, 1
  br label %choice.exit446

str_overflow_abort968:                            ; preds = %concat.sum.len962
  %77 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len967
}

declare void @"diag::enable_capture"() #1

declare void @"lexer::lex_set_file"(ptr) #1

declare ptr @"parser::parse_init"(ptr) #1

declare void @"parser::parser_set_file"(ptr, ptr) #1

declare { i1, i64 } @"parser::parse_program"(ptr) #1

declare ptr @"diag::get_captured"() #1

declare void @"diag::disable_capture"() #1

declare ptr @"str::from_int"(i64) #1

declare ptr @"show::show_expr"(ptr) #1

define { i1, i64 } @"formatter::format_source"(ptr %0, ptr %1) #1 {
entry:
  %var.err = alloca ptr, align 8
  %var._212 = alloca ptr, align 8
  %var._204 = alloca ptr, align 8
  %var.fb_sig158 = alloca ptr, align 8
  %var._157 = alloca ptr, align 8
  %var.fb_sig_res149 = alloca { i1, i64 }, align 8
  %var.fb145 = alloca ptr, align 8
  %var._130 = alloca ptr, align 8
  %var._122 = alloca ptr, align 8
  %var.fb_sig = alloca ptr, align 8
  %var._77 = alloca ptr, align 8
  %var.fb_sig_res = alloca { i1, i64 }, align 8
  %var.fb = alloca ptr, align 8
  %var.cand_sig = alloca ptr, align 8
  %var._25 = alloca ptr, align 8
  %var.cand_sig_res = alloca { i1, i64 }, align 8
  %var.candidate = alloca ptr, align 8
  %var.lines = alloca ptr, align 8
  %var.orig_sig = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.orig_sig_res = alloca { i1, i64 }, align 8
  %var.filename = alloca ptr, align 8
  %var.src = alloca ptr, align 8
  store ptr %0, ptr %var.src, align 8
  store ptr %1, ptr %var.filename, align 8
  %var.load = load ptr, ptr %var.src, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  ret { i1, i64 } { i1 true, i64 ptrtoint (ptr @str.3.struct to i64) }

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load3 = load ptr, ptr %var.src, align 8
  %var.load4 = load ptr, ptr %var.filename, align 8
  %call.res = call { i1, i64 } @"formatter::parse_ast_signature"(ptr %var.load3, ptr %var.load4)
  store { i1, i64 } %call.res, ptr %var.orig_sig_res, align 8
  %var.load5 = load { i1, i64 }, ptr %var.orig_sig_res, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load5, 0
  br i1 %ram.tag, label %choice.then6, label %choice.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then6:                                     ; preds = %choice.exit
  %ram.pay = extractvalue { i1, i64 } %var.load5, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.orig_sig, align 8
  %var.load8 = load ptr, ptr %var.src, align 8
  %call.res9 = call ptr @"formatter::split_source_lines"(ptr %var.load8)
  store ptr %call.res9, ptr %var.lines, align 8
  %var.load10 = load ptr, ptr %var.lines, align 8
  %a.load = load ptr, ptr %var.lines, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else:                                      ; preds = %choice.exit
  %ram.pay210 = extractvalue { i1, i64 } %var.load5, 1
  %pay.ptr211 = inttoptr i64 %ram.pay210 to ptr
  store ptr %pay.ptr211, ptr %var._212, align 8
  store ptr %pay.ptr211, ptr %var.err, align 8
  %var.load213 = load ptr, ptr %var.err, align 8
  %p.to.i64214 = ptrtoint ptr %var.load213 to i64
  %ram.pay215 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64214, 1
  br label %choice.exit7

choice.exit7:                                     ; preds = %choice.else, %choice.exit22
  %choice.res216 = phi { i1, i64 } [ %choice.res209, %choice.exit22 ], [ %ram.pay215, %choice.else ]
  ret { i1, i64 } %choice.res216

a.create:                                         ; preds = %choice.then6
  %arena.cur11 = call ptr @dva_arena_current()
  %a.create12 = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 24)
  %arena.cur13 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create12, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create12, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create12, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create12, ptr %var.lines, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then6
  %a.load2 = load ptr, ptr %var.lines, align 8
  %call.res14 = call ptr @"formatter::format_lines"(ptr %a.load2)
  store ptr %call.res14, ptr %var.candidate, align 8
  %var.load15 = load ptr, ptr %var.candidate, align 8
  %var.load16 = load ptr, ptr %var.filename, align 8
  %call.res17 = call { i1, i64 } @"formatter::parse_ast_signature"(ptr %var.load15, ptr %var.load16)
  store { i1, i64 } %call.res17, ptr %var.cand_sig_res, align 8
  %var.load18 = load { i1, i64 }, ptr %var.cand_sig_res, align 8
  %ram.tag19 = extractvalue { i1, i64 } %var.load18, 0
  br i1 %ram.tag19, label %choice.then20, label %choice.else21

choice.then20:                                    ; preds = %a.after
  %ram.pay23 = extractvalue { i1, i64 } %var.load18, 1
  %pay.ptr24 = inttoptr i64 %ram.pay23 to ptr
  store ptr %pay.ptr24, ptr %var._25, align 8
  store ptr %pay.ptr24, ptr %var.cand_sig, align 8
  %var.load26 = load ptr, ptr %var.cand_sig, align 8
  %var.load27 = load ptr, ptr %var.orig_sig, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %eq.lhs.len28 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len29 = and i64 %eq.lhs.len28, 281474976710655
  %str.tag30 = lshr i64 %eq.lhs.len28, 48
  %str.immortal31 = icmp eq i64 %str.tag30, 0
  br i1 %str.immortal31, label %str_ok33, label %str_gen_check32

choice.else21:                                    ; preds = %a.after
  %ram.pay128 = extractvalue { i1, i64 } %var.load18, 1
  %pay.ptr129 = inttoptr i64 %ram.pay128 to ptr
  store ptr %pay.ptr129, ptr %var._130, align 8
  %var.load131 = load ptr, ptr %var.lines, align 8
  %a.load132 = load ptr, ptr %var.lines, align 8
  %a.null133 = icmp eq ptr %a.load132, null
  br i1 %a.null133, label %a.create134, label %a.after135

choice.exit22:                                    ; preds = %choice.exit154, %choice.exit50
  %choice.res209 = phi { i1, i64 } [ %choice.res127, %choice.exit50 ], [ %choice.res208, %choice.exit154 ]
  br label %choice.exit7

str_gen_check32:                                  ; preds = %choice.then20
  %arena.cur35 = call ptr @dva_arena_current()
  %tag.valid36 = call i1 @dva_arena_validate_tag(ptr %arena.cur35, i64 %str.tag30)
  br i1 %tag.valid36, label %str_ok33, label %str_stale34

str_ok33:                                         ; preds = %str_stale34, %str_gen_check32, %choice.then20
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %eq.rhs.len37 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len38 = and i64 %eq.rhs.len37, 281474976710655
  %str.tag39 = lshr i64 %eq.rhs.len37, 48
  %str.immortal40 = icmp eq i64 %str.tag39, 0
  br i1 %str.immortal40, label %str_ok42, label %str_gen_check41

str_stale34:                                      ; preds = %str_gen_check32
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok33

str_gen_check41:                                  ; preds = %str_ok33
  %arena.cur44 = call ptr @dva_arena_current()
  %tag.valid45 = call i1 @dva_arena_validate_tag(ptr %arena.cur44, i64 %str.tag39)
  br i1 %tag.valid45, label %str_ok42, label %str_stale43

str_ok42:                                         ; preds = %str_stale43, %str_gen_check41, %str_ok33
  %eq.len = icmp eq i64 %eq.lhs.len29, %eq.rhs.len38
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale43:                                      ; preds = %str_gen_check41
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok42

str.eq.then:                                      ; preds = %str_ok42
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 1
  %eq.lhs.data46 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %eq.rhs.data47 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data46, ptr %eq.rhs.data47, i64 %eq.lhs.len29)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok42
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then48, label %choice.else49

choice.then48:                                    ; preds = %str.eq.merge
  %var.load51 = load ptr, ptr %var.candidate, align 8
  %p.to.i64 = ptrtoint ptr %var.load51 to i64
  %ram.pay52 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit50

choice.else49:                                    ; preds = %str.eq.merge
  %var.load53 = load ptr, ptr %var.lines, align 8
  %a.load54 = load ptr, ptr %var.lines, align 8
  %a.null55 = icmp eq ptr %a.load54, null
  br i1 %a.null55, label %a.create56, label %a.after57

choice.exit50:                                    ; preds = %choice.exit74, %choice.then48
  %choice.res127 = phi { i1, i64 } [ %ram.pay52, %choice.then48 ], [ %choice.res126, %choice.exit74 ]
  br label %choice.exit22

a.create56:                                       ; preds = %choice.else49
  %arena.cur58 = call ptr @dva_arena_current()
  %a.create59 = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 24)
  %arena.cur60 = call ptr @dva_arena_current()
  %a.buf61 = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 128)
  %a.len.gep62 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create59, i32 0, i32 0
  store i64 0, ptr %a.len.gep62, align 8
  %a.data.gep63 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create59, i32 0, i32 1
  store ptr %a.buf61, ptr %a.data.gep63, align 8
  %a.cap.gep64 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create59, i32 0, i32 2
  store i64 16, ptr %a.cap.gep64, align 8
  store ptr %a.create59, ptr %var.lines, align 8
  br label %a.after57

a.after57:                                        ; preds = %a.create56, %choice.else49
  %a.load265 = load ptr, ptr %var.lines, align 8
  %call.res66 = call ptr @"formatter::format_safe_fallback"(ptr %a.load265)
  store ptr %call.res66, ptr %var.fb, align 8
  %var.load67 = load ptr, ptr %var.fb, align 8
  %var.load68 = load ptr, ptr %var.filename, align 8
  %call.res69 = call { i1, i64 } @"formatter::parse_ast_signature"(ptr %var.load67, ptr %var.load68)
  store { i1, i64 } %call.res69, ptr %var.fb_sig_res, align 8
  %var.load70 = load { i1, i64 }, ptr %var.fb_sig_res, align 8
  %ram.tag71 = extractvalue { i1, i64 } %var.load70, 0
  br i1 %ram.tag71, label %choice.then72, label %choice.else73

choice.then72:                                    ; preds = %a.after57
  %ram.pay75 = extractvalue { i1, i64 } %var.load70, 1
  %pay.ptr76 = inttoptr i64 %ram.pay75 to ptr
  store ptr %pay.ptr76, ptr %var._77, align 8
  store ptr %pay.ptr76, ptr %var.fb_sig, align 8
  %var.load78 = load ptr, ptr %var.fb_sig, align 8
  %var.load79 = load ptr, ptr %var.orig_sig, align 8
  %eq.lhs.len80 = getelementptr inbounds { i64, ptr }, ptr %var.load78, i32 0, i32 0
  %eq.lhs.len81 = load i64, ptr %eq.lhs.len80, align 8
  %eq.lhs.len82 = and i64 %eq.lhs.len81, 281474976710655
  %str.tag83 = lshr i64 %eq.lhs.len81, 48
  %str.immortal84 = icmp eq i64 %str.tag83, 0
  br i1 %str.immortal84, label %str_ok86, label %str_gen_check85

choice.else73:                                    ; preds = %a.after57
  %ram.pay120 = extractvalue { i1, i64 } %var.load70, 1
  %pay.ptr121 = inttoptr i64 %ram.pay120 to ptr
  store ptr %pay.ptr121, ptr %var._122, align 8
  %var.load123 = load ptr, ptr %var.src, align 8
  %p.to.i64124 = ptrtoint ptr %var.load123 to i64
  %ram.pay125 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64124, 1
  br label %choice.exit74

choice.exit74:                                    ; preds = %choice.else73, %choice.exit113
  %choice.res126 = phi { i1, i64 } [ %choice.res, %choice.exit113 ], [ %ram.pay125, %choice.else73 ]
  br label %choice.exit50

str_gen_check85:                                  ; preds = %choice.then72
  %arena.cur88 = call ptr @dva_arena_current()
  %tag.valid89 = call i1 @dva_arena_validate_tag(ptr %arena.cur88, i64 %str.tag83)
  br i1 %tag.valid89, label %str_ok86, label %str_stale87

str_ok86:                                         ; preds = %str_stale87, %str_gen_check85, %choice.then72
  %eq.rhs.len90 = getelementptr inbounds { i64, ptr }, ptr %var.load79, i32 0, i32 0
  %eq.rhs.len91 = load i64, ptr %eq.rhs.len90, align 8
  %eq.rhs.len92 = and i64 %eq.rhs.len91, 281474976710655
  %str.tag93 = lshr i64 %eq.rhs.len91, 48
  %str.immortal94 = icmp eq i64 %str.tag93, 0
  br i1 %str.immortal94, label %str_ok96, label %str_gen_check95

str_stale87:                                      ; preds = %str_gen_check85
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok86

str_gen_check95:                                  ; preds = %str_ok86
  %arena.cur98 = call ptr @dva_arena_current()
  %tag.valid99 = call i1 @dva_arena_validate_tag(ptr %arena.cur98, i64 %str.tag93)
  br i1 %tag.valid99, label %str_ok96, label %str_stale97

str_ok96:                                         ; preds = %str_stale97, %str_gen_check95, %str_ok86
  %eq.len100 = icmp eq i64 %eq.lhs.len82, %eq.rhs.len92
  br i1 %eq.len100, label %str.eq.then101, label %str.eq.else102

str_stale97:                                      ; preds = %str_gen_check95
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok96

str.eq.then101:                                   ; preds = %str_ok96
  %eq.lhs.data104 = getelementptr inbounds { i64, ptr }, ptr %var.load78, i32 0, i32 1
  %eq.lhs.data105 = load ptr, ptr %eq.lhs.data104, align 8
  %eq.rhs.data106 = getelementptr inbounds { i64, ptr }, ptr %var.load79, i32 0, i32 1
  %eq.rhs.data107 = load ptr, ptr %eq.rhs.data106, align 8
  %eq.memcmp108 = call i32 @memcmp(ptr %eq.lhs.data105, ptr %eq.rhs.data107, i64 %eq.lhs.len82)
  %eq.cmp.zero109 = icmp eq i32 %eq.memcmp108, 0
  br label %str.eq.merge103

str.eq.else102:                                   ; preds = %str_ok96
  br label %str.eq.merge103

str.eq.merge103:                                  ; preds = %str.eq.else102, %str.eq.then101
  %str.eq.result110 = phi i1 [ %eq.cmp.zero109, %str.eq.then101 ], [ false, %str.eq.else102 ]
  br i1 %str.eq.result110, label %choice.then111, label %choice.else112

choice.then111:                                   ; preds = %str.eq.merge103
  %var.load114 = load ptr, ptr %var.fb, align 8
  %p.to.i64115 = ptrtoint ptr %var.load114 to i64
  %ram.pay116 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64115, 1
  br label %choice.exit113

choice.else112:                                   ; preds = %str.eq.merge103
  %var.load117 = load ptr, ptr %var.src, align 8
  %p.to.i64118 = ptrtoint ptr %var.load117 to i64
  %ram.pay119 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64118, 1
  br label %choice.exit113

choice.exit113:                                   ; preds = %choice.else112, %choice.then111
  %choice.res = phi { i1, i64 } [ %ram.pay116, %choice.then111 ], [ %ram.pay119, %choice.else112 ]
  br label %choice.exit74

a.create134:                                      ; preds = %choice.else21
  %arena.cur136 = call ptr @dva_arena_current()
  %a.create137 = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 24)
  %arena.cur138 = call ptr @dva_arena_current()
  %a.buf139 = call ptr @dva_arena_alloc(ptr %arena.cur138, i64 128)
  %a.len.gep140 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create137, i32 0, i32 0
  store i64 0, ptr %a.len.gep140, align 8
  %a.data.gep141 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create137, i32 0, i32 1
  store ptr %a.buf139, ptr %a.data.gep141, align 8
  %a.cap.gep142 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create137, i32 0, i32 2
  store i64 16, ptr %a.cap.gep142, align 8
  store ptr %a.create137, ptr %var.lines, align 8
  br label %a.after135

a.after135:                                       ; preds = %a.create134, %choice.else21
  %a.load2143 = load ptr, ptr %var.lines, align 8
  %call.res144 = call ptr @"formatter::format_safe_fallback"(ptr %a.load2143)
  store ptr %call.res144, ptr %var.fb145, align 8
  %var.load146 = load ptr, ptr %var.fb145, align 8
  %var.load147 = load ptr, ptr %var.filename, align 8
  %call.res148 = call { i1, i64 } @"formatter::parse_ast_signature"(ptr %var.load146, ptr %var.load147)
  store { i1, i64 } %call.res148, ptr %var.fb_sig_res149, align 8
  %var.load150 = load { i1, i64 }, ptr %var.fb_sig_res149, align 8
  %ram.tag151 = extractvalue { i1, i64 } %var.load150, 0
  br i1 %ram.tag151, label %choice.then152, label %choice.else153

choice.then152:                                   ; preds = %a.after135
  %ram.pay155 = extractvalue { i1, i64 } %var.load150, 1
  %pay.ptr156 = inttoptr i64 %ram.pay155 to ptr
  store ptr %pay.ptr156, ptr %var._157, align 8
  store ptr %pay.ptr156, ptr %var.fb_sig158, align 8
  %var.load159 = load ptr, ptr %var.fb_sig158, align 8
  %var.load160 = load ptr, ptr %var.orig_sig, align 8
  %eq.lhs.len161 = getelementptr inbounds { i64, ptr }, ptr %var.load159, i32 0, i32 0
  %eq.lhs.len162 = load i64, ptr %eq.lhs.len161, align 8
  %eq.lhs.len163 = and i64 %eq.lhs.len162, 281474976710655
  %str.tag164 = lshr i64 %eq.lhs.len162, 48
  %str.immortal165 = icmp eq i64 %str.tag164, 0
  br i1 %str.immortal165, label %str_ok167, label %str_gen_check166

choice.else153:                                   ; preds = %a.after135
  %ram.pay202 = extractvalue { i1, i64 } %var.load150, 1
  %pay.ptr203 = inttoptr i64 %ram.pay202 to ptr
  store ptr %pay.ptr203, ptr %var._204, align 8
  %var.load205 = load ptr, ptr %var.src, align 8
  %p.to.i64206 = ptrtoint ptr %var.load205 to i64
  %ram.pay207 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64206, 1
  br label %choice.exit154

choice.exit154:                                   ; preds = %choice.else153, %choice.exit194
  %choice.res208 = phi { i1, i64 } [ %choice.res201, %choice.exit194 ], [ %ram.pay207, %choice.else153 ]
  br label %choice.exit22

str_gen_check166:                                 ; preds = %choice.then152
  %arena.cur169 = call ptr @dva_arena_current()
  %tag.valid170 = call i1 @dva_arena_validate_tag(ptr %arena.cur169, i64 %str.tag164)
  br i1 %tag.valid170, label %str_ok167, label %str_stale168

str_ok167:                                        ; preds = %str_stale168, %str_gen_check166, %choice.then152
  %eq.rhs.len171 = getelementptr inbounds { i64, ptr }, ptr %var.load160, i32 0, i32 0
  %eq.rhs.len172 = load i64, ptr %eq.rhs.len171, align 8
  %eq.rhs.len173 = and i64 %eq.rhs.len172, 281474976710655
  %str.tag174 = lshr i64 %eq.rhs.len172, 48
  %str.immortal175 = icmp eq i64 %str.tag174, 0
  br i1 %str.immortal175, label %str_ok177, label %str_gen_check176

str_stale168:                                     ; preds = %str_gen_check166
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok167

str_gen_check176:                                 ; preds = %str_ok167
  %arena.cur179 = call ptr @dva_arena_current()
  %tag.valid180 = call i1 @dva_arena_validate_tag(ptr %arena.cur179, i64 %str.tag174)
  br i1 %tag.valid180, label %str_ok177, label %str_stale178

str_ok177:                                        ; preds = %str_stale178, %str_gen_check176, %str_ok167
  %eq.len181 = icmp eq i64 %eq.lhs.len163, %eq.rhs.len173
  br i1 %eq.len181, label %str.eq.then182, label %str.eq.else183

str_stale178:                                     ; preds = %str_gen_check176
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok177

str.eq.then182:                                   ; preds = %str_ok177
  %eq.lhs.data185 = getelementptr inbounds { i64, ptr }, ptr %var.load159, i32 0, i32 1
  %eq.lhs.data186 = load ptr, ptr %eq.lhs.data185, align 8
  %eq.rhs.data187 = getelementptr inbounds { i64, ptr }, ptr %var.load160, i32 0, i32 1
  %eq.rhs.data188 = load ptr, ptr %eq.rhs.data187, align 8
  %eq.memcmp189 = call i32 @memcmp(ptr %eq.lhs.data186, ptr %eq.rhs.data188, i64 %eq.lhs.len163)
  %eq.cmp.zero190 = icmp eq i32 %eq.memcmp189, 0
  br label %str.eq.merge184

str.eq.else183:                                   ; preds = %str_ok177
  br label %str.eq.merge184

str.eq.merge184:                                  ; preds = %str.eq.else183, %str.eq.then182
  %str.eq.result191 = phi i1 [ %eq.cmp.zero190, %str.eq.then182 ], [ false, %str.eq.else183 ]
  br i1 %str.eq.result191, label %choice.then192, label %choice.else193

choice.then192:                                   ; preds = %str.eq.merge184
  %var.load195 = load ptr, ptr %var.fb145, align 8
  %p.to.i64196 = ptrtoint ptr %var.load195 to i64
  %ram.pay197 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64196, 1
  br label %choice.exit194

choice.else193:                                   ; preds = %str.eq.merge184
  %var.load198 = load ptr, ptr %var.src, align 8
  %p.to.i64199 = ptrtoint ptr %var.load198 to i64
  %ram.pay200 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64199, 1
  br label %choice.exit194

choice.exit194:                                   ; preds = %choice.else193, %choice.then192
  %choice.res201 = phi { i1, i64 } [ %ram.pay197, %choice.then192 ], [ %ram.pay200, %choice.else193 ]
  br label %choice.exit154
}

define void @"formatter::sort_names"(ptr %0) #1 {
entry:
  %var._235 = alloca ptr, align 8
  %var._234 = alloca ptr, align 8
  %var._233 = alloca ptr, align 8
  %var._157 = alloca ptr, align 8
  %var._156 = alloca ptr, align 8
  %var._155 = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._109 = alloca ptr, align 8
  %var._106 = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  %var._44 = alloca ptr, align 8
  %var._41 = alloca ptr, align 8
  %var._10 = alloca i64, align 8
  %var._i9 = alloca i64, align 8
  %var.j = alloca i64, align 8
  %loop.step.580 = alloca i64, align 8
  %loop.idx.580 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.579 = alloca i64, align 8
  %loop.idx.579 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.names = alloca ptr, align 8
  store ptr %0, ptr %var.names, align 8
  %var.load = load ptr, ptr %var.names, align 8
  %a.load = load ptr, ptr %var.names, align 8
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
  store ptr %a.create1, ptr %var.names, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.names, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query3 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query3, ptr %var.n, align 8
  %var.load4 = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.579, align 8
  br label %loop.header.579

loop.header.579:                                  ; preds = %loop.latch.579, %a.after
  %counter.load = load i64, ptr %loop.idx.579, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load4
  br i1 %loop.cond, label %loop.body.579, label %loop.exit.nat.579

loop.body.579:                                    ; preds = %loop.header.579
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.579, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load5 = load i64, ptr %var.n, align 8
  %subtmp = sub i64 %var.load5, 1
  store i64 0, ptr %loop.idx.580, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.580

loop.exit.nat.579:                                ; preds = %loop.header.579
  br label %loop.exit.579

loop.latch.579:                                   ; preds = %loop.exit.580
  %step.val280 = load i64, ptr %loop.step.579, align 8
  %loop.next281 = add i64 %counter.load, %step.val280
  store i64 %loop.next281, ptr %loop.idx.579, align 8
  br label %loop.header.579

loop.exit.579:                                    ; preds = %loop.exit.nat.579
  ret void

loop.header.580:                                  ; preds = %loop.latch.580, %loop.body.579
  %counter.load6 = load i64, ptr %loop.idx.580, align 8
  %loop.cond7 = icmp slt i64 %counter.load6, %subtmp
  br i1 %loop.cond7, label %loop.body.580, label %loop.exit.nat.580

loop.body.580:                                    ; preds = %loop.header.580
  %loop.rel.i8 = sub i64 %counter.load6, 0
  store i64 1, ptr %loop.step.580, align 8
  store i64 %loop.rel.i8, ptr %var._i9, align 8
  store i64 %counter.load6, ptr %var._10, align 8
  store i64 %counter.load6, ptr %var.j, align 8
  %var.load11 = load ptr, ptr %var.names, align 8
  %a.load12 = load ptr, ptr %var.names, align 8
  %a.null13 = icmp eq ptr %a.load12, null
  br i1 %a.null13, label %a.create14, label %a.after15

loop.exit.nat.580:                                ; preds = %loop.header.580
  br label %loop.exit.580

loop.latch.580:                                   ; preds = %choice.exit114
  %step.val = load i64, ptr %loop.step.580, align 8
  %loop.next = add i64 %counter.load6, %step.val
  store i64 %loop.next, ptr %loop.idx.580, align 8
  br label %loop.header.580

loop.exit.580:                                    ; preds = %loop.exit.nat.580
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  br label %loop.latch.579

a.create14:                                       ; preds = %loop.body.580
  %arena.cur16 = call ptr @dva_arena_current()
  %a.create17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 24)
  %arena.cur18 = call ptr @dva_arena_current()
  %a.buf19 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 128)
  %a.len.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create17, i32 0, i32 0
  store i64 0, ptr %a.len.gep20, align 8
  %a.data.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create17, i32 0, i32 1
  store ptr %a.buf19, ptr %a.data.gep21, align 8
  %a.cap.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create17, i32 0, i32 2
  store i64 16, ptr %a.cap.gep22, align 8
  store ptr %a.create17, ptr %var.names, align 8
  br label %a.after15

a.after15:                                        ; preds = %a.create14, %loop.body.580
  %a.load223 = load ptr, ptr %var.names, align 8
  %var.load24 = load i64, ptr %var.j, align 8
  %a.rd.nonnull = icmp ne ptr %a.load223, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after15
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load223, i32 0, i32 0
  %a.rd.len25 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load24, 0
  %a.rd.lt = icmp slt i64 %var.load24, %a.rd.len25
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load223, i32 0, i32 1
  %a.rd.data26 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data26, i64 %var.load24
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after15
  %arena.cur27 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 680, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 23, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur28 = call ptr @dva_arena_current()
  %err.alloc29 = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 56)
  %err.code.gep30 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 0
  store i64 4011, ptr %err.code.gep30, align 8
  %err.msg.gep31 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep31, align 8
  %err.file.gep32 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep32, align 8
  %err.line.gep33 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 3
  store i64 680, ptr %err.line.gep33, align 8
  %err.col.gep34 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 4
  store i64 23, ptr %err.col.gep34, align 8
  %err.ctx.gep35 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 5
  %err.ctx0.gep36 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep35, i32 0, i32 0
  store i64 %var.load24, ptr %err.ctx0.gep36, align 8
  %err.ctx1.gep37 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep35, i32 0, i32 1
  store i64 %a.rd.len25, ptr %err.ctx1.gep37, align 8
  %err.p2i38 = ptrtoint ptr %err.alloc29 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i38, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag39 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag39, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %ram.pay40 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay40 to ptr
  store ptr %pay.ptr, ptr %var._41, align 8
  br label %choice.exit

choice.else:                                      ; preds = %a.rd.done
  %ram.pay42 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr43 = inttoptr i64 %ram.pay42 to ptr
  store ptr %pay.ptr43, ptr %var._44, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ @str.3.struct, %choice.else ]
  store ptr %choice.res, ptr %var.a, align 8
  %var.load45 = load ptr, ptr %var.names, align 8
  %a.load46 = load ptr, ptr %var.names, align 8
  %a.null47 = icmp eq ptr %a.load46, null
  br i1 %a.null47, label %a.create48, label %a.after49

a.create48:                                       ; preds = %choice.exit
  %arena.cur50 = call ptr @dva_arena_current()
  %a.create51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 24)
  %arena.cur52 = call ptr @dva_arena_current()
  %a.buf53 = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 128)
  %a.len.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create51, i32 0, i32 0
  store i64 0, ptr %a.len.gep54, align 8
  %a.data.gep55 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create51, i32 0, i32 1
  store ptr %a.buf53, ptr %a.data.gep55, align 8
  %a.cap.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create51, i32 0, i32 2
  store i64 16, ptr %a.cap.gep56, align 8
  store ptr %a.create51, ptr %var.names, align 8
  br label %a.after49

a.after49:                                        ; preds = %a.create48, %choice.exit
  %a.load257 = load ptr, ptr %var.names, align 8
  %var.load58 = load i64, ptr %var.j, align 8
  %addtmp = add i64 %var.load58, 1
  %a.rd.nonnull59 = icmp ne ptr %a.load257, null
  br i1 %a.rd.nonnull59, label %a.rd.check60, label %a.rd.err.null62

a.rd.check60:                                     ; preds = %a.after49
  %a.rd.len65 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 0
  %a.rd.len66 = load i64, ptr %a.rd.len65, align 8
  %a.rd.ge067 = icmp sge i64 %addtmp, 0
  %a.rd.lt68 = icmp slt i64 %addtmp, %a.rd.len66
  %a.rd.bounds69 = and i1 %a.rd.ge067, %a.rd.lt68
  br i1 %a.rd.bounds69, label %a.rd.ok61, label %a.rd.err.oob63

a.rd.ok61:                                        ; preds = %a.rd.check60
  %a.rd.data70 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 1
  %a.rd.data71 = load ptr, ptr %a.rd.data70, align 8
  %a.rd.elem.gep72 = getelementptr i64, ptr %a.rd.data71, i64 %addtmp
  %a.rd.elem73 = load i64, ptr %a.rd.elem.gep72, align 8
  br label %a.rd.done64

a.rd.err.null62:                                  ; preds = %a.after49
  %arena.cur74 = call ptr @dva_arena_current()
  %err.alloc75 = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 56)
  %err.code.gep76 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 0
  store i64 4011, ptr %err.code.gep76, align 8
  %err.msg.gep77 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep77, align 8
  %err.file.gep78 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep78, align 8
  %err.line.gep79 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 3
  store i64 681, ptr %err.line.gep79, align 8
  %err.col.gep80 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 4
  store i64 27, ptr %err.col.gep80, align 8
  %err.ctx.gep81 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 5
  %err.ctx0.gep82 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep81, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep82, align 8
  %err.ctx1.gep83 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep81, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep83, align 8
  %err.p2i84 = ptrtoint ptr %err.alloc75 to i64
  br label %a.rd.done64

a.rd.err.oob63:                                   ; preds = %a.rd.check60
  %arena.cur85 = call ptr @dva_arena_current()
  %err.alloc86 = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 56)
  %err.code.gep87 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc86, i32 0, i32 0
  store i64 4011, ptr %err.code.gep87, align 8
  %err.msg.gep88 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc86, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep88, align 8
  %err.file.gep89 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc86, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep89, align 8
  %err.line.gep90 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc86, i32 0, i32 3
  store i64 681, ptr %err.line.gep90, align 8
  %err.col.gep91 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc86, i32 0, i32 4
  store i64 27, ptr %err.col.gep91, align 8
  %err.ctx.gep92 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc86, i32 0, i32 5
  %err.ctx0.gep93 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep92, i32 0, i32 0
  store i64 %addtmp, ptr %err.ctx0.gep93, align 8
  %err.ctx1.gep94 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep92, i32 0, i32 1
  store i64 %a.rd.len66, ptr %err.ctx1.gep94, align 8
  %err.p2i95 = ptrtoint ptr %err.alloc86 to i64
  br label %a.rd.done64

a.rd.done64:                                      ; preds = %a.rd.err.oob63, %a.rd.err.null62, %a.rd.ok61
  %a.rd.tag96 = phi i1 [ true, %a.rd.ok61 ], [ false, %a.rd.err.null62 ], [ false, %a.rd.err.oob63 ]
  %a.rd.pay97 = phi i64 [ %a.rd.elem73, %a.rd.ok61 ], [ %err.p2i84, %a.rd.err.null62 ], [ %err.p2i95, %a.rd.err.oob63 ]
  %ram.tag98 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag96, 0
  %ram.pay99 = insertvalue { i1, i64 } %ram.tag98, i64 %a.rd.pay97, 1
  %ram.tag100 = extractvalue { i1, i64 } %ram.pay99, 0
  br i1 %ram.tag100, label %choice.then101, label %choice.else102

choice.then101:                                   ; preds = %a.rd.done64
  %ram.pay104 = extractvalue { i1, i64 } %ram.pay99, 1
  %pay.ptr105 = inttoptr i64 %ram.pay104 to ptr
  store ptr %pay.ptr105, ptr %var._106, align 8
  br label %choice.exit103

choice.else102:                                   ; preds = %a.rd.done64
  %ram.pay107 = extractvalue { i1, i64 } %ram.pay99, 1
  %pay.ptr108 = inttoptr i64 %ram.pay107 to ptr
  store ptr %pay.ptr108, ptr %var._109, align 8
  br label %choice.exit103

choice.exit103:                                   ; preds = %choice.else102, %choice.then101
  %choice.res110 = phi ptr [ %pay.ptr105, %choice.then101 ], [ @str.3.struct, %choice.else102 ]
  store ptr %choice.res110, ptr %var.b, align 8
  %var.load111 = load ptr, ptr %var.a, align 8
  %var.load112 = load ptr, ptr %var.b, align 8
  %call.res = call i64 @"str::cmp"(ptr %var.load111, ptr %var.load112)
  %cmptmp = icmp sgt i64 %call.res, 0
  br i1 %cmptmp, label %choice.then113, label %choice.exit114

choice.then113:                                   ; preds = %choice.exit103
  %var.load115 = load ptr, ptr %var.names, align 8
  %a.load116 = load ptr, ptr %var.names, align 8
  %a.null117 = icmp eq ptr %a.load116, null
  br i1 %a.null117, label %a.create118, label %a.after119

choice.exit114:                                   ; preds = %choice.exit232, %choice.exit103
  br label %loop.latch.580

a.create118:                                      ; preds = %choice.then113
  %arena.cur120 = call ptr @dva_arena_current()
  %a.create121 = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 24)
  %arena.cur122 = call ptr @dva_arena_current()
  %a.buf123 = call ptr @dva_arena_alloc(ptr %arena.cur122, i64 128)
  %a.len.gep124 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create121, i32 0, i32 0
  store i64 0, ptr %a.len.gep124, align 8
  %a.data.gep125 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create121, i32 0, i32 1
  store ptr %a.buf123, ptr %a.data.gep125, align 8
  %a.cap.gep126 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create121, i32 0, i32 2
  store i64 16, ptr %a.cap.gep126, align 8
  store ptr %a.create121, ptr %var.names, align 8
  br label %a.after119

a.after119:                                       ; preds = %a.create118, %choice.then113
  %a.load2127 = load ptr, ptr %var.names, align 8
  %var.load128 = load i64, ptr %var.j, align 8
  %var.load129 = load ptr, ptr %var.b, align 8
  %slot.p2i = ptrtoint ptr %var.load129 to i64
  %a.wr.nonnull = icmp ne ptr %a.load2127, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after119
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2127, i32 0, i32 0
  %a.wr.len130 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load128, 0
  %a.wr.lt = icmp slt i64 %var.load128, %a.wr.len130
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2127, i32 0, i32 1
  %a.wr.data131 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data131, i64 %var.load128
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after119
  %arena.cur132 = call ptr @dva_arena_current()
  %err.alloc133 = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 56)
  %err.code.gep134 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 0
  store i64 4011, ptr %err.code.gep134, align 8
  %err.msg.gep135 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep135, align 8
  %err.file.gep136 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep136, align 8
  %err.line.gep137 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 3
  store i64 0, ptr %err.line.gep137, align 8
  %err.col.gep138 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 4
  store i64 0, ptr %err.col.gep138, align 8
  %err.ctx.gep139 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 5
  %err.ctx0.gep140 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep139, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep140, align 8
  %err.ctx1.gep141 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep139, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep141, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur142 = call ptr @dva_arena_current()
  %err.alloc143 = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 56)
  %err.code.gep144 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 0
  store i64 4011, ptr %err.code.gep144, align 8
  %err.msg.gep145 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep145, align 8
  %err.file.gep146 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep146, align 8
  %err.line.gep147 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 3
  store i64 0, ptr %err.line.gep147, align 8
  %err.col.gep148 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 4
  store i64 0, ptr %err.col.gep148, align 8
  %err.ctx.gep149 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 5
  %err.ctx0.gep150 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep149, i32 0, i32 0
  store i64 %var.load128, ptr %err.ctx0.gep150, align 8
  %err.ctx1.gep151 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep149, i32 0, i32 1
  store i64 %a.wr.len130, ptr %err.ctx1.gep151, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc133, %a.wr.err.null ], [ %err.alloc143, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then152, label %choice.else153

choice.then152:                                   ; preds = %a.wr.done
  br label %choice.exit154

choice.else153:                                   ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._155, align 8
  store ptr %a.wr.niche, ptr %var._156, align 8
  store ptr %a.wr.niche, ptr %var._157, align 8
  %err.code.gep158 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep158, align 8
  %err.msg.gep159 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep159, align 8
  %err.file.gep160 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep160, align 8
  %err.line.gep161 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep161, align 8
  %err.col.gep162 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep162, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len163 = load i64, ptr %err.msg.len, align 8
  %err.msg.len164 = and i64 %err.msg.len163, 281474976710655
  %str.tag = lshr i64 %err.msg.len163, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit154:                                   ; preds = %err.abort, %choice.then152
  %var.load177 = load ptr, ptr %var.names, align 8
  %a.load178 = load ptr, ptr %var.names, align 8
  %a.null179 = icmp eq ptr %a.load178, null
  br i1 %a.null179, label %a.create180, label %a.after181

str_gen_check:                                    ; preds = %choice.else153
  %arena.cur165 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur165, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else153
  %err.msg.len32 = trunc i64 %err.msg.len164 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data166 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len167 = load i64, ptr %err.file.len, align 8
  %err.file.len168 = and i64 %err.file.len167, 281474976710655
  %str.tag169 = lshr i64 %err.file.len167, 48
  %str.immortal170 = icmp eq i64 %str.tag169, 0
  br i1 %str.immortal170, label %str_ok172, label %str_gen_check171

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check171:                                 ; preds = %str_ok
  %arena.cur174 = call ptr @dva_arena_current()
  %tag.valid175 = call i1 @dva_arena_validate_tag(ptr %arena.cur174, i64 %str.tag169)
  br i1 %tag.valid175, label %str_ok172, label %str_stale173

str_ok172:                                        ; preds = %str_stale173, %str_gen_check171, %str_ok
  %err.file.len32 = trunc i64 %err.file.len168 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data176 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale173:                                     ; preds = %str_gen_check171
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok172

err.thread:                                       ; preds = %str_ok172
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok172
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data166, i32 %err.file.len32, ptr %err.file.data176, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit154

a.create180:                                      ; preds = %choice.exit154
  %arena.cur182 = call ptr @dva_arena_current()
  %a.create183 = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 24)
  %arena.cur184 = call ptr @dva_arena_current()
  %a.buf185 = call ptr @dva_arena_alloc(ptr %arena.cur184, i64 128)
  %a.len.gep186 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create183, i32 0, i32 0
  store i64 0, ptr %a.len.gep186, align 8
  %a.data.gep187 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create183, i32 0, i32 1
  store ptr %a.buf185, ptr %a.data.gep187, align 8
  %a.cap.gep188 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create183, i32 0, i32 2
  store i64 16, ptr %a.cap.gep188, align 8
  store ptr %a.create183, ptr %var.names, align 8
  br label %a.after181

a.after181:                                       ; preds = %a.create180, %choice.exit154
  %a.load2189 = load ptr, ptr %var.names, align 8
  %var.load190 = load i64, ptr %var.j, align 8
  %addtmp191 = add i64 %var.load190, 1
  %var.load192 = load ptr, ptr %var.a, align 8
  %slot.p2i193 = ptrtoint ptr %var.load192 to i64
  %a.wr.nonnull194 = icmp ne ptr %a.load2189, null
  br i1 %a.wr.nonnull194, label %a.wr.check195, label %a.wr.err.null197

a.wr.check195:                                    ; preds = %a.after181
  %a.wr.len200 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2189, i32 0, i32 0
  %a.wr.len201 = load i64, ptr %a.wr.len200, align 8
  %a.wr.ge0202 = icmp sge i64 %addtmp191, 0
  %a.wr.lt203 = icmp slt i64 %addtmp191, %a.wr.len201
  %a.wr.bounds204 = and i1 %a.wr.ge0202, %a.wr.lt203
  br i1 %a.wr.bounds204, label %a.wr.ok196, label %a.wr.err.oob198

a.wr.ok196:                                       ; preds = %a.wr.check195
  %a.wr.data205 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2189, i32 0, i32 1
  %a.wr.data206 = load ptr, ptr %a.wr.data205, align 8
  %a.elem.gep207 = getelementptr i64, ptr %a.wr.data206, i64 %addtmp191
  store i64 %slot.p2i193, ptr %a.elem.gep207, align 8
  br label %a.wr.done199

a.wr.err.null197:                                 ; preds = %a.after181
  %arena.cur208 = call ptr @dva_arena_current()
  %err.alloc209 = call ptr @dva_arena_alloc(ptr %arena.cur208, i64 56)
  %err.code.gep210 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 0
  store i64 4011, ptr %err.code.gep210, align 8
  %err.msg.gep211 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 1
  store ptr @str.53.struct, ptr %err.msg.gep211, align 8
  %err.file.gep212 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep212, align 8
  %err.line.gep213 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 3
  store i64 0, ptr %err.line.gep213, align 8
  %err.col.gep214 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 4
  store i64 0, ptr %err.col.gep214, align 8
  %err.ctx.gep215 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 5
  %err.ctx0.gep216 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep215, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep216, align 8
  %err.ctx1.gep217 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep215, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep217, align 8
  br label %a.wr.done199

a.wr.err.oob198:                                  ; preds = %a.wr.check195
  %arena.cur218 = call ptr @dva_arena_current()
  %err.alloc219 = call ptr @dva_arena_alloc(ptr %arena.cur218, i64 56)
  %err.code.gep220 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc219, i32 0, i32 0
  store i64 4011, ptr %err.code.gep220, align 8
  %err.msg.gep221 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc219, i32 0, i32 1
  store ptr @str.55.struct, ptr %err.msg.gep221, align 8
  %err.file.gep222 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc219, i32 0, i32 2
  store ptr @str.54.struct, ptr %err.file.gep222, align 8
  %err.line.gep223 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc219, i32 0, i32 3
  store i64 0, ptr %err.line.gep223, align 8
  %err.col.gep224 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc219, i32 0, i32 4
  store i64 0, ptr %err.col.gep224, align 8
  %err.ctx.gep225 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc219, i32 0, i32 5
  %err.ctx0.gep226 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep225, i32 0, i32 0
  store i64 %addtmp191, ptr %err.ctx0.gep226, align 8
  %err.ctx1.gep227 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep225, i32 0, i32 1
  store i64 %a.wr.len201, ptr %err.ctx1.gep227, align 8
  br label %a.wr.done199

a.wr.done199:                                     ; preds = %a.wr.err.oob198, %a.wr.err.null197, %a.wr.ok196
  %a.wr.niche228 = phi ptr [ null, %a.wr.ok196 ], [ %err.alloc209, %a.wr.err.null197 ], [ %err.alloc219, %a.wr.err.oob198 ]
  %niche.eq.null229 = icmp eq ptr %a.wr.niche228, null
  br i1 %niche.eq.null229, label %choice.then230, label %choice.else231

choice.then230:                                   ; preds = %a.wr.done199
  br label %choice.exit232

choice.else231:                                   ; preds = %a.wr.done199
  store ptr %a.wr.niche228, ptr %var._233, align 8
  store ptr %a.wr.niche228, ptr %var._234, align 8
  store ptr %a.wr.niche228, ptr %var._235, align 8
  %err.code.gep236 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche228, i32 0, i32 0
  %err.code237 = load i64, ptr %err.code.gep236, align 8
  %err.msg.gep238 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche228, i32 0, i32 1
  %err.msg.struct239 = load ptr, ptr %err.msg.gep238, align 8
  %err.file.gep240 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche228, i32 0, i32 2
  %err.file.struct241 = load ptr, ptr %err.file.gep240, align 8
  %err.line.gep242 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche228, i32 0, i32 3
  %err.line243 = load i64, ptr %err.line.gep242, align 8
  %err.col.gep244 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche228, i32 0, i32 4
  %err.col245 = load i64, ptr %err.col.gep244, align 8
  %err.msg.len246 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct239, i32 0, i32 0
  %err.msg.len247 = load i64, ptr %err.msg.len246, align 8
  %err.msg.len248 = and i64 %err.msg.len247, 281474976710655
  %str.tag249 = lshr i64 %err.msg.len247, 48
  %str.immortal250 = icmp eq i64 %str.tag249, 0
  br i1 %str.immortal250, label %str_ok252, label %str_gen_check251

choice.exit232:                                   ; preds = %err.abort279, %choice.then230
  br label %choice.exit114

str_gen_check251:                                 ; preds = %choice.else231
  %arena.cur254 = call ptr @dva_arena_current()
  %tag.valid255 = call i1 @dva_arena_validate_tag(ptr %arena.cur254, i64 %str.tag249)
  br i1 %tag.valid255, label %str_ok252, label %str_stale253

str_ok252:                                        ; preds = %str_stale253, %str_gen_check251, %choice.else231
  %err.msg.len32256 = trunc i64 %err.msg.len248 to i32
  %err.msg.data257 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct239, i32 0, i32 1
  %err.msg.data258 = load ptr, ptr %err.msg.data257, align 8
  %err.file.len259 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct241, i32 0, i32 0
  %err.file.len260 = load i64, ptr %err.file.len259, align 8
  %err.file.len261 = and i64 %err.file.len260, 281474976710655
  %str.tag262 = lshr i64 %err.file.len260, 48
  %str.immortal263 = icmp eq i64 %str.tag262, 0
  br i1 %str.immortal263, label %str_ok265, label %str_gen_check264

str_stale253:                                     ; preds = %str_gen_check251
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok252

str_gen_check264:                                 ; preds = %str_ok252
  %arena.cur267 = call ptr @dva_arena_current()
  %tag.valid268 = call i1 @dva_arena_validate_tag(ptr %arena.cur267, i64 %str.tag262)
  br i1 %tag.valid268, label %str_ok265, label %str_stale266

str_ok265:                                        ; preds = %str_stale266, %str_gen_check264, %str_ok252
  %err.file.len32269 = trunc i64 %err.file.len261 to i32
  %err.file.data270 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct241, i32 0, i32 1
  %err.file.data271 = load ptr, ptr %err.file.data270, align 8
  %err.thread.rec272 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread273 = icmp ne ptr %err.thread.rec272, null
  br i1 %err.is.thread273, label %err.thread274, label %err.normal275

str_stale266:                                     ; preds = %str_gen_check264
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok265

err.thread274:                                    ; preds = %str_ok265
  %err.haserr.gep276 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec272, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep276, align 8
  %err.err.gep277 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec272, i32 0, i32 7
  store ptr %a.wr.niche228, ptr %err.err.gep277, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal275:                                    ; preds = %str_ok265
  %err.panic.printf278 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code237, i32 %err.msg.len32256, ptr %err.msg.data258, i32 %err.file.len32269, ptr %err.file.data271, i64 %err.line243, i64 %err.col245)
  call void @exit(i32 1)
  unreachable

err.abort279:                                     ; No predecessors!
  br label %choice.exit232
}

declare i64 @"str::cmp"(ptr, ptr) #1

define void @"formatter::collect_dva_files"(ptr %0, ptr %1) #1 {
entry:
  %var.sub = alloca ptr, align 8
  %var._132 = alloca ptr, align 8
  %var._i131 = alloca i64, align 8
  %var.name = alloca ptr, align 8
  %loop.step.582 = alloca i64, align 8
  %loop.idx.582 = alloca i64, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.ent = alloca ptr, align 8
  %loop.step.581 = alloca i64, align 8
  %loop.idx.581 = alloca i64, align 8
  %var.names = alloca ptr, align 8
  %var.entries = alloca ptr, align 8
  %var.out = alloca ptr, align 8
  %var.target = alloca ptr, align 8
  store ptr %0, ptr %var.target, align 8
  store ptr %1, ptr %var.out, align 8
  %var.load = load ptr, ptr %var.target, align 8
  %call.res = call i1 @"fs::is_file"(ptr %var.load)
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.target, align 8
  %call.res2 = call ptr @"fs::ext"(ptr %var.load1)
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %call.res2, i32 0, i32 0
  %eq.lhs.len3 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len4 = and i64 %eq.lhs.len3, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len3, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.else:                                      ; preds = %entry
  %var.load24 = load ptr, ptr %var.target, align 8
  %call.res25 = call i1 @"fs::is_dir"(ptr %var.load24)
  br i1 %call.res25, label %choice.then26, label %choice.exit27

choice.exit:                                      ; preds = %choice.exit27, %choice.exit15
  ret void

str_gen_check:                                    ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.then
  %eq.rhs.len = load i64, ptr @str.59.struct, align 8
  %eq.rhs.len5 = and i64 %eq.rhs.len, 281474976710655
  %str.tag6 = lshr i64 %eq.rhs.len, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check8:                                   ; preds = %str_ok
  %arena.cur11 = call ptr @dva_arena_current()
  %tag.valid12 = call i1 @dva_arena_validate_tag(ptr %arena.cur11, i64 %str.tag6)
  br i1 %tag.valid12, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len4, %eq.rhs.len5
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale10:                                      ; preds = %str_gen_check8
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

str.eq.then:                                      ; preds = %str_ok9
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %call.res2, i32 0, i32 1
  %eq.lhs.data13 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.59.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data13, ptr %eq.rhs.data, i64 %eq.lhs.len4)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok9
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then14, label %choice.exit15

choice.then14:                                    ; preds = %str.eq.merge
  %var.load16 = load ptr, ptr %var.target, align 8
  %a.load = load ptr, ptr %var.out, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit15:                                    ; preds = %a.store, %str.eq.merge
  br label %choice.exit

a.create:                                         ; preds = %choice.then14
  %arena.cur17 = call ptr @dva_arena_current()
  %a.create18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 24)
  %arena.cur19 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create18, ptr %var.out, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then14
  %a.load2 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len20 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap21 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len20, %a.cap21
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data22 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len23 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data22, i64 %a.cur.len23
  %slot.p2i = ptrtoint ptr %var.load16 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len23, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit15

choice.then26:                                    ; preds = %choice.else
  %var.load28 = load ptr, ptr %var.target, align 8
  %call.res29 = call ptr @"fs::read_dir"(ptr %var.load28)
  store ptr %call.res29, ptr %var.entries, align 8
  %arena.cur30 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 24)
  %arena.cur31 = call ptr @dva_arena_current()
  %a.buf32 = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 128)
  %a.len.gep33 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep33, align 8
  %a.data.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf32, ptr %a.data.gep34, align 8
  %a.cap.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep35, align 8
  store ptr %a.new, ptr %var.names, align 8
  %var.load36 = load ptr, ptr %var.entries, align 8
  %a.load37 = load ptr, ptr %var.entries, align 8
  %a.null38 = icmp eq ptr %a.load37, null
  br i1 %a.null38, label %a.create39, label %a.after40

choice.exit27:                                    ; preds = %loop.exit.582, %choice.else
  br label %choice.exit

a.create39:                                       ; preds = %choice.then26
  %arena.cur41 = call ptr @dva_arena_current()
  %a.create42 = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 24)
  %arena.cur43 = call ptr @dva_arena_current()
  %a.buf44 = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 128)
  %a.len.gep45 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create42, i32 0, i32 0
  store i64 0, ptr %a.len.gep45, align 8
  %a.data.gep46 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create42, i32 0, i32 1
  store ptr %a.buf44, ptr %a.data.gep46, align 8
  %a.cap.gep47 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create42, i32 0, i32 2
  store i64 16, ptr %a.cap.gep47, align 8
  store ptr %a.create42, ptr %var.entries, align 8
  br label %a.after40

a.after40:                                        ; preds = %a.create39, %choice.then26
  %a.load248 = load ptr, ptr %var.entries, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load248, i32 0, i32 0
  %arr.cycle.len49 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load248, i32 0, i32 1
  %arr.cycle.data50 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.581, align 8
  br label %loop.header.581

loop.header.581:                                  ; preds = %loop.latch.581, %a.after40
  %counter.load = load i64, ptr %loop.idx.581, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len49
  br i1 %loop.cond, label %loop.body.581, label %loop.exit.nat.581

loop.body.581:                                    ; preds = %loop.header.581
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.581, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data50, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.ent, align 8
  %var.load51 = load ptr, ptr %var.ent, align 8
  %fld.gep = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %var.load51, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %s.read.len52 = load i64, ptr %s.read.len, align 8
  %s.read.len53 = and i64 %s.read.len52, 281474976710655
  %str.tag54 = lshr i64 %s.read.len52, 48
  %str.immortal55 = icmp eq i64 %str.tag54, 0
  br i1 %str.immortal55, label %str_ok57, label %str_gen_check56

loop.exit.nat.581:                                ; preds = %loop.header.581
  br label %loop.exit.581

loop.latch.581:                                   ; preds = %choice.exit63
  %step.val = load i64, ptr %loop.step.581, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.581, align 8
  br label %loop.header.581

loop.exit.581:                                    ; preds = %loop.exit.nat.581
  %var.load95 = load ptr, ptr %var.names, align 8
  %a.load96 = load ptr, ptr %var.names, align 8
  %a.null97 = icmp eq ptr %a.load96, null
  br i1 %a.null97, label %a.create98, label %a.after99

str_gen_check56:                                  ; preds = %loop.body.581
  %arena.cur59 = call ptr @dva_arena_current()
  %tag.valid60 = call i1 @dva_arena_validate_tag(ptr %arena.cur59, i64 %str.tag54)
  br i1 %tag.valid60, label %str_ok57, label %str_stale58

str_ok57:                                         ; preds = %str_stale58, %str_gen_check56, %loop.body.581
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data61 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

str_stale58:                                      ; preds = %str_gen_check56
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok57

idx_big_check:                                    ; preds = %str_ok57
  %idx.big = icmp sge i64 0, %s.read.len53
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data61, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp = icmp ne i64 %s.byte.val, 46
  br i1 %cmptmp, label %choice.then62, label %choice.exit63

idx_oob:                                          ; preds = %idx_big_check, %str_ok57
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then62:                                    ; preds = %idx_ok
  %var.load64 = load ptr, ptr %var.ent, align 8
  %fld.gep65 = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %var.load64, i32 0, i32 0
  %fld.load66 = load ptr, ptr %fld.gep65, align 8
  %a.load67 = load ptr, ptr %var.names, align 8
  %a.null68 = icmp eq ptr %a.load67, null
  br i1 %a.null68, label %a.create69, label %a.after70

choice.exit63:                                    ; preds = %a.store81, %idx_ok
  br label %loop.latch.581

a.create69:                                       ; preds = %choice.then62
  %arena.cur71 = call ptr @dva_arena_current()
  %a.create72 = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 24)
  %arena.cur73 = call ptr @dva_arena_current()
  %a.buf74 = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 128)
  %a.len.gep75 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create72, i32 0, i32 0
  store i64 0, ptr %a.len.gep75, align 8
  %a.data.gep76 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create72, i32 0, i32 1
  store ptr %a.buf74, ptr %a.data.gep76, align 8
  %a.cap.gep77 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create72, i32 0, i32 2
  store i64 16, ptr %a.cap.gep77, align 8
  store ptr %a.create72, ptr %var.names, align 8
  br label %a.after70

a.after70:                                        ; preds = %a.create69, %choice.then62
  %a.load278 = load ptr, ptr %var.names, align 8
  br label %a.check79

a.check79:                                        ; preds = %a.after70
  %a.len82 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load278, i32 0, i32 0
  %a.len83 = load i64, ptr %a.len82, align 8
  %a.cap84 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load278, i32 0, i32 2
  %a.cap85 = load i64, ptr %a.cap84, align 8
  %a.needs.grow86 = icmp eq i64 %a.len83, %a.cap85
  br i1 %a.needs.grow86, label %a.grow80, label %a.store81

a.grow80:                                         ; preds = %a.check79
  call void @dva_array_grow(ptr %a.load278)
  br label %a.store81

a.store81:                                        ; preds = %a.grow80, %a.check79
  %a.cur.data87 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load278, i32 0, i32 1
  %a.cur.data88 = load ptr, ptr %a.cur.data87, align 8
  %a.cur.len89 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load278, i32 0, i32 0
  %a.cur.len90 = load i64, ptr %a.cur.len89, align 8
  %a.elem.gep91 = getelementptr i64, ptr %a.cur.data88, i64 %a.cur.len90
  %slot.p2i92 = ptrtoint ptr %fld.load66 to i64
  store i64 %slot.p2i92, ptr %a.elem.gep91, align 8
  %a.next.len93 = add i64 %a.cur.len90, 1
  %b.len.gep94 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load278, i32 0, i32 0
  store i64 %a.next.len93, ptr %b.len.gep94, align 8
  br label %choice.exit63

a.create98:                                       ; preds = %loop.exit.581
  %arena.cur100 = call ptr @dva_arena_current()
  %a.create101 = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 24)
  %arena.cur102 = call ptr @dva_arena_current()
  %a.buf103 = call ptr @dva_arena_alloc(ptr %arena.cur102, i64 128)
  %a.len.gep104 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create101, i32 0, i32 0
  store i64 0, ptr %a.len.gep104, align 8
  %a.data.gep105 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create101, i32 0, i32 1
  store ptr %a.buf103, ptr %a.data.gep105, align 8
  %a.cap.gep106 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create101, i32 0, i32 2
  store i64 16, ptr %a.cap.gep106, align 8
  store ptr %a.create101, ptr %var.names, align 8
  br label %a.after99

a.after99:                                        ; preds = %a.create98, %loop.exit.581
  %a.load2107 = load ptr, ptr %var.names, align 8
  call void @"formatter::sort_names"(ptr %a.load2107)
  %var.load108 = load ptr, ptr %var.names, align 8
  %a.load109 = load ptr, ptr %var.names, align 8
  %a.null110 = icmp eq ptr %a.load109, null
  br i1 %a.null110, label %a.create111, label %a.after112

a.create111:                                      ; preds = %a.after99
  %arena.cur113 = call ptr @dva_arena_current()
  %a.create114 = call ptr @dva_arena_alloc(ptr %arena.cur113, i64 24)
  %arena.cur115 = call ptr @dva_arena_current()
  %a.buf116 = call ptr @dva_arena_alloc(ptr %arena.cur115, i64 128)
  %a.len.gep117 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create114, i32 0, i32 0
  store i64 0, ptr %a.len.gep117, align 8
  %a.data.gep118 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create114, i32 0, i32 1
  store ptr %a.buf116, ptr %a.data.gep118, align 8
  %a.cap.gep119 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create114, i32 0, i32 2
  store i64 16, ptr %a.cap.gep119, align 8
  store ptr %a.create114, ptr %var.names, align 8
  br label %a.after112

a.after112:                                       ; preds = %a.create111, %a.after99
  %a.load2120 = load ptr, ptr %var.names, align 8
  %arr.cycle.len121 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2120, i32 0, i32 0
  %arr.cycle.len122 = load i64, ptr %arr.cycle.len121, align 8
  %arr.cycle.data123 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2120, i32 0, i32 1
  %arr.cycle.data124 = load ptr, ptr %arr.cycle.data123, align 8
  store i64 0, ptr %loop.idx.582, align 8
  br label %loop.header.582

loop.header.582:                                  ; preds = %loop.latch.582, %a.after112
  %counter.load125 = load i64, ptr %loop.idx.582, align 8
  %loop.cond126 = icmp slt i64 %counter.load125, %arr.cycle.len122
  br i1 %loop.cond126, label %loop.body.582, label %loop.exit.nat.582

loop.body.582:                                    ; preds = %loop.header.582
  %loop.rel.i127 = sub i64 %counter.load125, 0
  store i64 1, ptr %loop.step.582, align 8
  %arr.elem.gep128 = getelementptr i64, ptr %arr.cycle.data124, i64 %counter.load125
  %arr.elem.raw129 = load i64, ptr %arr.elem.gep128, align 8
  %slot.i2p130 = inttoptr i64 %arr.elem.raw129 to ptr
  store i64 %loop.rel.i127, ptr %var._i131, align 8
  store ptr %slot.i2p130, ptr %var._132, align 8
  store ptr %slot.i2p130, ptr %var.name, align 8
  %var.load133 = load ptr, ptr %var.target, align 8
  %var.load134 = load ptr, ptr %var.name, align 8
  %call.res135 = call ptr @"fs::join"(ptr %var.load133, ptr %var.load134)
  store ptr %call.res135, ptr %var.sub, align 8
  %var.load136 = load ptr, ptr %var.sub, align 8
  %var.load137 = load ptr, ptr %var.out, align 8
  %a.load138 = load ptr, ptr %var.out, align 8
  %a.null139 = icmp eq ptr %a.load138, null
  br i1 %a.null139, label %a.create140, label %a.after141

loop.exit.nat.582:                                ; preds = %loop.header.582
  br label %loop.exit.582

loop.latch.582:                                   ; preds = %a.after141
  %step.val150 = load i64, ptr %loop.step.582, align 8
  %loop.next151 = add i64 %counter.load125, %step.val150
  store i64 %loop.next151, ptr %loop.idx.582, align 8
  br label %loop.header.582

loop.exit.582:                                    ; preds = %loop.exit.nat.582
  br label %choice.exit27

a.create140:                                      ; preds = %loop.body.582
  %arena.cur142 = call ptr @dva_arena_current()
  %a.create143 = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 24)
  %arena.cur144 = call ptr @dva_arena_current()
  %a.buf145 = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 128)
  %a.len.gep146 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create143, i32 0, i32 0
  store i64 0, ptr %a.len.gep146, align 8
  %a.data.gep147 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create143, i32 0, i32 1
  store ptr %a.buf145, ptr %a.data.gep147, align 8
  %a.cap.gep148 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create143, i32 0, i32 2
  store i64 16, ptr %a.cap.gep148, align 8
  store ptr %a.create143, ptr %var.out, align 8
  br label %a.after141

a.after141:                                       ; preds = %a.create140, %loop.body.582
  %a.load2149 = load ptr, ptr %var.out, align 8
  call void @"formatter::collect_dva_files"(ptr %var.load136, ptr %a.load2149)
  br label %loop.latch.582
}

declare i1 @"fs::is_file"(ptr) #1

declare ptr @"fs::ext"(ptr) #1

declare i1 @"fs::is_dir"(ptr) #1

declare ptr @"fs::read_dir"(ptr) #1

declare ptr @"fs::join"(ptr, ptr) #1

define ptr @"formatter::read_stdin_all"() #1 {
entry:
  %var.n = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.583 = alloca i64, align 8
  %loop.idx.583 = alloca i64, align 8
  %var.chunk = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4096, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

b.buf.len1:                                       ; preds = %str_overflow_abort, %entry
  %arena.cur2 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 4096, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %arena.cur3 = call ptr @dva_arena_current()
  %builder.new4 = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 24)
  %b.data.gep5 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new4, i32 0, i32 1
  %b.len.gep6 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new4, i32 0, i32 0
  %b.cap.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new4, i32 0, i32 2
  %b.buf.len8 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4096, i64 1)
  %sum9 = extractvalue { i64, i1 } %b.buf.len8, 0
  %ovf10 = extractvalue { i64, i1 } %b.buf.len8, 1
  br i1 %ovf10, label %str_overflow_abort12, label %b.buf.len11

str_overflow_abort:                               ; preds = %entry
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

b.buf.len11:                                      ; preds = %str_overflow_abort12, %b.buf.len1
  %arena.cur13 = call ptr @dva_arena_current()
  %b.buf14 = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 %sum9)
  %b.nul015 = getelementptr i8, ptr %b.buf14, i64 0
  store i8 0, ptr %b.nul015, align 1
  store i64 0, ptr %b.len.gep6, align 8
  store ptr %b.buf14, ptr %b.data.gep5, align 8
  store i64 4096, ptr %b.cap.gep7, align 8
  store ptr %builder.new4, ptr %var.chunk, align 8
  store i64 0, ptr %loop.idx.583, align 8
  br label %loop.header.583

str_overflow_abort12:                             ; preds = %b.buf.len1
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len11

loop.header.583:                                  ; preds = %loop.latch.583, %b.buf.len11
  %counter.load = load i64, ptr %loop.idx.583, align 8
  br label %loop.body.583

loop.body.583:                                    ; preds = %loop.header.583
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.583, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load = load ptr, ptr %var.chunk, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load, i32 0, i32 1
  %b.ptr16 = load ptr, ptr %b.ptr, align 8
  %addr.ffi.int = ptrtoint ptr %b.ptr16 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call i64 @read(i32 0, ptr %addr.ffi.clean, i64 4096)
  store i64 %call.res, ptr %var.n, align 8
  %var.load17 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sle i64 %var.load17, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.583:                                ; No predecessors!
  br label %loop.exit.583

loop.latch.583:                                   ; preds = %b.grow_done
  %step.val = load i64, ptr %loop.step.583, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.583, align 8
  br label %loop.header.583

loop.exit.583:                                    ; preds = %choice.then, %loop.exit.nat.583
  %var.load48 = load ptr, ptr %var.b, align 8
  %b.freeze.len49 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load48, i32 0, i32 0
  %b.freeze.len50 = load i64, ptr %b.freeze.len49, align 8
  %b.freeze.data51 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load48, i32 0, i32 1
  %b.freeze.data52 = load ptr, ptr %b.freeze.data51, align 8
  %b.freeze.arena53 = call ptr @dva_arena_current()
  %b.freeze.nc.gep54 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena53, i32 0, i32 1
  %b.freeze.nc55 = load i64, ptr %b.freeze.nc.gep54, align 8
  %b.freeze.has.chunk56 = icmp sgt i64 %b.freeze.nc55, 0
  br i1 %b.freeze.has.chunk56, label %b.freeze.check57, label %b.freeze.done59

choice.then:                                      ; preds = %loop.body.583
  br label %loop.exit.583

choice.exit:                                      ; preds = %loop.body.583
  %var.load18 = load i64, ptr %var.n, align 8
  %b.load = load ptr, ptr %var.chunk, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap19 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load18, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

b.len_big_check:                                  ; preds = %choice.exit
  %b.len.big = icmp sgt i64 %var.load18, %b.cap19
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load18, ptr %b.len.gep20, align 8
  %b.load21 = load ptr, ptr %var.b, align 8
  %var.load22 = load ptr, ptr %var.chunk, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load22, i32 0, i32 0
  %b.freeze.len23 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load22, i32 0, i32 1
  %b.freeze.data24 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.len_oob:                                        ; preds = %b.len_big_check, %choice.exit
  %2 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok

b.freeze.check:                                   ; preds = %b.len_ok
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data24, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data24, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data24, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len23, 1
  %arena.cur25 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data24, i64 %b.freeze.len23, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len23
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.len_ok
  %b.freeze.data26 = phi ptr [ %b.freeze.data24, %b.len_ok ], [ %b.freeze.data24, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur27 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len23, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data26, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load22, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load22, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load22, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  %app.str.len28 = load i64, ptr %app.str.len, align 8
  %app.str.len29 = and i64 %app.str.len28, 281474976710655
  %str.tag = lshr i64 %app.str.len28, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %b.freeze.done
  %arena.cur30 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur30, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.freeze.done
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load21, i32 0, i32 0
  %b.app.cur.len31 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len31, i64 %app.str.len29)
  %sum32 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf33 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf33, label %str_overflow_abort35, label %b.app.new.len34

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

b.app.new.len34:                                  ; preds = %str_overflow_abort35, %str_ok
  %b.cap36 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load21, i32 0, i32 2
  %b.cap37 = load i64, ptr %b.cap36, align 8
  %b.need.grow = icmp slt i64 %b.cap37, %sum32
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort35:                             ; preds = %str_ok
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len34

b.grow2:                                          ; preds = %b.app.new.len34
  %b.cap2 = mul i64 %b.cap37, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum32
  %b.new.cap = select i1 %b.cap.need, i64 %sum32, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load21, i32 0, i32 0
  %b.cur.len238 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load21, i32 0, i32 1
  %b.cur.data239 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum40 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf41 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf41, label %str_overflow_abort43, label %b.new.buf.len242

b.nogrow2:                                        ; preds = %b.app.new.len34
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len242
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  %app.str.data45 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load21, i32 0, i32 1
  %b.app.data46 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data46, i64 %b.app.cur.len31
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data45, i64 %app.str.len29, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data46, i64 %sum32
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep47 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load21, i32 0, i32 0
  store i64 %sum32, ptr %b.len.gep47, align 8
  br label %loop.latch.583

b.new.buf.len242:                                 ; preds = %str_overflow_abort43, %b.grow2
  %arena.cur44 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 %sum40)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data239, i64 %b.cur.len238, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len238
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load21, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load21, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort43:                             ; preds = %b.grow2
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len242

b.freeze.check57:                                 ; preds = %loop.exit.583
  %b.freeze.last.idx60 = sub i64 %b.freeze.nc55, 1
  %b.freeze.chunks.gep61 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena53, i32 0, i32 3
  %b.freeze.chunk.slot62 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep61, i64 0, i64 %b.freeze.last.idx60
  %b.freeze.last.chunk63 = load ptr, ptr %b.freeze.chunk.slot62, align 8
  %b.freeze.off.gep64 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena53, i32 0, i32 2
  %b.freeze.off65 = load i64, ptr %b.freeze.off.gep64, align 8
  %b.freeze.bump66 = getelementptr i8, ptr %b.freeze.last.chunk63, i64 %b.freeze.off65
  %b.freeze.cap.gep67 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena53, i32 0, i32 0
  %b.freeze.cap68 = load i64, ptr %b.freeze.cap.gep67, align 8
  %b.freeze.chunk.end69 = getelementptr i8, ptr %b.freeze.last.chunk63, i64 %b.freeze.cap68
  %b.freeze.ge.chunk70 = icmp uge ptr %b.freeze.data52, %b.freeze.last.chunk63
  %b.freeze.lt.end71 = icmp ult ptr %b.freeze.data52, %b.freeze.chunk.end69
  %b.freeze.in.chunk72 = and i1 %b.freeze.ge.chunk70, %b.freeze.lt.end71
  %b.freeze.ge.bump73 = icmp uge ptr %b.freeze.data52, %b.freeze.bump66
  %b.freeze.reaped74 = and i1 %b.freeze.in.chunk72, %b.freeze.ge.bump73
  br i1 %b.freeze.reaped74, label %b.freeze.copy58, label %b.freeze.done59

b.freeze.copy58:                                  ; preds = %b.freeze.check57
  %b.freeze.alen75 = add i64 %b.freeze.len50, 1
  %arena.cur76 = call ptr @dva_arena_current()
  %b.freeze.fresh77 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 %b.freeze.alen75)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh77, ptr align 1 %b.freeze.data52, i64 %b.freeze.len50, i1 false)
  %b.freeze.nul78 = getelementptr i8, ptr %b.freeze.fresh77, i64 %b.freeze.len50
  store i8 0, ptr %b.freeze.nul78, align 1
  br label %b.freeze.done59

b.freeze.done59:                                  ; preds = %b.freeze.copy58, %b.freeze.check57, %loop.exit.583
  %b.freeze.data79 = phi ptr [ %b.freeze.data52, %loop.exit.583 ], [ %b.freeze.data52, %b.freeze.check57 ], [ %b.freeze.fresh77, %b.freeze.copy58 ]
  %arena.cur80 = call ptr @dva_arena_current()
  %builder.freeze81 = call ptr @dva_arena_alloc(ptr %arena.cur80, i64 16)
  %str.build.len.gep82 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze81, i32 0, i32 0
  store i64 %b.freeze.len50, ptr %str.build.len.gep82, align 8
  %str.build.data.gep83 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze81, i32 0, i32 1
  store ptr %b.freeze.data79, ptr %str.build.data.gep83, align 8
  %b.freeze.rst.len84 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load48, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len84, align 8
  %b.freeze.rst.data85 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load48, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data85, align 8
  %b.freeze.rst.cap86 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load48, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap86, align 8
  ret ptr %builder.freeze81
}

define void @"formatter::write_stdout"(ptr %0) #1 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp sgt i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load3 = load ptr, ptr %var.s, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %arg.str.ptr4 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr5 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %arg.str.ptr6 = load i64, ptr %arg.str.ptr5, align 8
  %arg.str.ptr7 = and i64 %arg.str.ptr6, 281474976710655
  %str.tag8 = lshr i64 %arg.str.ptr6, 48
  %str.immortal9 = icmp eq i64 %str.tag8, 0
  br i1 %str.immortal9, label %str_ok11, label %str_gen_check10

choice.exit:                                      ; preds = %str_ok26, %str_ok
  ret void

str_gen_check10:                                  ; preds = %choice.then
  %arena.cur13 = call ptr @dva_arena_current()
  %tag.valid14 = call i1 @dva_arena_validate_tag(ptr %arena.cur13, i64 %str.tag8)
  br i1 %tag.valid14, label %str_ok11, label %str_stale12

str_ok11:                                         ; preds = %str_stale12, %str_gen_check10, %choice.then
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr4, i64 %arg.str.ptr7
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr15, label %nulcopy

str_stale12:                                      ; preds = %str_gen_check10
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok11

arg.str.ptr15:                                    ; preds = %str_ok11
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok11
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr7, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len16

nulmerge:                                         ; preds = %nulcopy.len16, %arg.str.ptr15
  %arg.str.ptr18 = phi ptr [ %arg.str.ptr4, %arg.str.ptr15 ], [ %nulcopy.buf, %nulcopy.len16 ]
  %var.load19 = load ptr, ptr %var.s, align 8
  %str.len.query20 = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 0
  %str.len.query21 = load i64, ptr %str.len.query20, align 8
  %str.len.query22 = and i64 %str.len.query21, 281474976710655
  %str.tag23 = lshr i64 %str.len.query21, 48
  %str.immortal24 = icmp eq i64 %str.tag23, 0
  br i1 %str.immortal24, label %str_ok26, label %str_gen_check25

nulcopy.len16:                                    ; preds = %str_overflow_abort, %nulcopy
  %arena.cur17 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr4, i64 %arg.str.ptr7, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr7
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len16

str_gen_check25:                                  ; preds = %nulmerge
  %arena.cur28 = call ptr @dva_arena_current()
  %tag.valid29 = call i1 @dva_arena_validate_tag(ptr %arena.cur28, i64 %str.tag23)
  br i1 %tag.valid29, label %str_ok26, label %str_stale27

str_ok26:                                         ; preds = %str_stale27, %str_gen_check25, %nulmerge
  %call.res = call i64 @write(i32 1, ptr %arg.str.ptr18, i64 %str.len.query22)
  br label %choice.exit

str_stale27:                                      ; preds = %str_gen_check25
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok26
}

define void @"formatter::print_line"(ptr %0) #1 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
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
  %concat.lhs3 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.lhs4 = load ptr, ptr %concat.lhs3, align 8
  %concat.rhs = load i64, ptr @str.60.struct, align 8
  %concat.rhs5 = and i64 %concat.rhs, 281474976710655
  %str.tag6 = lshr i64 %concat.rhs, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check8:                                   ; preds = %str_ok
  %arena.cur11 = call ptr @dva_arena_current()
  %tag.valid12 = call i1 @dva_arena_validate_tag(ptr %arena.cur11, i64 %str.tag6)
  br i1 %tag.valid12, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %str_ok
  %concat.rhs13 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.60.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs2, i64 %concat.rhs5)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len14

str_stale10:                                      ; preds = %str_gen_check8
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

concat.sum.len14:                                 ; preds = %str_overflow_abort, %str_ok9
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum15 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf16 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf16, label %str_overflow_abort18, label %concat.tot.len17

str_overflow_abort:                               ; preds = %str_ok9
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len14

concat.tot.len17:                                 ; preds = %str_overflow_abort18, %concat.sum.len14
  %arena.cur19 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 %sum15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs4, i64 %concat.lhs2, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs13, i64 %concat.rhs5, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur20 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  call void @"formatter::write_stdout"(ptr %concat.str)
  ret void

str_overflow_abort18:                             ; preds = %concat.sum.len14
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len17
}

define void @"formatter::print_fmt_help"() #1 {
entry:
  call void @"formatter::print_line"(ptr @str.61.struct)
  call void @"formatter::print_line"(ptr @str.3.struct)
  call void @"formatter::print_line"(ptr @str.62.struct)
  call void @"formatter::print_line"(ptr @str.63.struct)
  call void @"formatter::print_line"(ptr @str.64.struct)
  call void @"formatter::print_line"(ptr @str.65.struct)
  call void @"formatter::print_line"(ptr @str.66.struct)
  ret void
}

define i64 @"formatter::main"(i64 %0) #1 {
entry:
  %var.err683 = alloca ptr, align 8
  %var._682 = alloca ptr, align 8
  %var.formatted543 = alloca ptr, align 8
  %var._542 = alloca ptr, align 8
  %var.res534 = alloca { i1, i64 }, align 8
  %var.src530 = alloca ptr, align 8
  %var._529 = alloca ptr, align 8
  %var.src_opt = alloca ptr, align 8
  %var._522 = alloca ptr, align 8
  %var._i521 = alloca i64, align 8
  %var.f = alloca ptr, align 8
  %loop.step.587 = alloca i64, align 8
  %loop.idx.587 = alloca i64, align 8
  %"var.unformatted'" = alloca i64, align 8
  %"var.had_err'" = alloca i1, align 1
  %var._376 = alloca ptr, align 8
  %var._i375 = alloca i64, align 8
  %var.t = alloca ptr, align 8
  %loop.step.586 = alloca i64, align 8
  %loop.idx.586 = alloca i64, align 8
  %var.files = alloca ptr, align 8
  %var.err = alloca ptr, align 8
  %var._304 = alloca ptr, align 8
  %var.formatted = alloca ptr, align 8
  %var._259 = alloca ptr, align 8
  %var.res = alloca { i1, i64 }, align 8
  %var.src = alloca ptr, align 8
  %var.arg = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.584 = alloca i64, align 8
  %loop.idx.584 = alloca i64, align 8
  %"var.i'" = alloca i64, align 8
  %var.targets = alloca ptr, align 8
  %"var.from_stdin'" = alloca i1, align 1
  %"var.to_stdout'" = alloca i1, align 1
  %"var.check_only'" = alloca i1, align 1
  %var.start_idx = alloca i64, align 8
  store i64 %0, ptr %var.start_idx, align 8
  store i1 false, ptr %"var.check_only'", align 1
  store i1 false, ptr %"var.to_stdout'", align 1
  store i1 false, ptr %"var.from_stdin'", align 1
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
  store ptr %a.new, ptr %var.targets, align 8
  %var.load = load i64, ptr %var.start_idx, align 8
  store i64 %var.load, ptr %"var.i'", align 8
  store i64 0, ptr %loop.idx.584, align 8
  br label %loop.header.584

loop.header.584:                                  ; preds = %loop.latch.584, %entry
  %counter.load = load i64, ptr %loop.idx.584, align 8
  br label %loop.body.584

loop.body.584:                                    ; preds = %loop.header.584
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.584, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load2 = load i64, ptr %"var.i'", align 8
  %var.load3 = load i64, ptr @sys_argc_global, align 8
  %cmptmp = icmp sge i64 %var.load2, %var.load3
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.584:                                ; No predecessors!
  br label %loop.exit.584

loop.latch.584:                                   ; preds = %choice.exit6
  %step.val = load i64, ptr %loop.step.584, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.584, align 8
  br label %loop.header.584

loop.exit.584:                                    ; preds = %choice.then, %loop.exit.nat.584
  %var.load248 = load i1, ptr %"var.from_stdin'", align 1
  br i1 %var.load248, label %choice.then249, label %choice.else250

choice.then:                                      ; preds = %loop.body.584
  br label %loop.exit.584

choice.exit:                                      ; preds = %loop.body.584
  %var.load4 = load i64, ptr %"var.i'", align 8
  %call.res = call ptr @"sys::argv_string"(i64 %var.load4)
  store ptr %call.res, ptr %var.arg, align 8
  %var.load5 = load ptr, ptr %var.arg, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len7 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len8 = and i64 %eq.lhs.len7, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len7, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit6:                                     ; preds = %choice.exit165, %choice.case110, %choice.case79, %choice.case48, %ret.dead
  %var.load247 = load i64, ptr %"var.i'", align 8
  %addtmp = add i64 %var.load247, 1
  store i64 %addtmp, ptr %"var.i'", align 8
  br label %loop.latch.584

choice.case:                                      ; preds = %str.eq.merge41
  call void @"formatter::print_fmt_help"()
  ret i64 0

choice.next:                                      ; preds = %str.eq.merge41
  %eq.lhs.len50 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len51 = load i64, ptr %eq.lhs.len50, align 8
  %eq.lhs.len52 = and i64 %eq.lhs.len51, 281474976710655
  %str.tag53 = lshr i64 %eq.lhs.len51, 48
  %str.immortal54 = icmp eq i64 %str.tag53, 0
  br i1 %str.immortal54, label %str_ok56, label %str_gen_check55

str_gen_check:                                    ; preds = %choice.exit
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %eq.rhs.len = load i64, ptr @str.67.struct, align 8
  %eq.rhs.len10 = and i64 %eq.rhs.len, 281474976710655
  %str.tag11 = lshr i64 %eq.rhs.len, 48
  %str.immortal12 = icmp eq i64 %str.tag11, 0
  br i1 %str.immortal12, label %str_ok14, label %str_gen_check13

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check13:                                  ; preds = %str_ok
  %arena.cur16 = call ptr @dva_arena_current()
  %tag.valid17 = call i1 @dva_arena_validate_tag(ptr %arena.cur16, i64 %str.tag11)
  br i1 %tag.valid17, label %str_ok14, label %str_stale15

str_ok14:                                         ; preds = %str_stale15, %str_gen_check13, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len10
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale15:                                      ; preds = %str_gen_check13
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok14

str.eq.then:                                      ; preds = %str_ok14
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data18 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.67.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data18, ptr %eq.rhs.data, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok14
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %eq.lhs.len19 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len20 = load i64, ptr %eq.lhs.len19, align 8
  %eq.lhs.len21 = and i64 %eq.lhs.len20, 281474976710655
  %str.tag22 = lshr i64 %eq.lhs.len20, 48
  %str.immortal23 = icmp eq i64 %str.tag22, 0
  br i1 %str.immortal23, label %str_ok25, label %str_gen_check24

str_gen_check24:                                  ; preds = %str.eq.merge
  %arena.cur27 = call ptr @dva_arena_current()
  %tag.valid28 = call i1 @dva_arena_validate_tag(ptr %arena.cur27, i64 %str.tag22)
  br i1 %tag.valid28, label %str_ok25, label %str_stale26

str_ok25:                                         ; preds = %str_stale26, %str_gen_check24, %str.eq.merge
  %eq.rhs.len29 = load i64, ptr @str.68.struct, align 8
  %eq.rhs.len30 = and i64 %eq.rhs.len29, 281474976710655
  %str.tag31 = lshr i64 %eq.rhs.len29, 48
  %str.immortal32 = icmp eq i64 %str.tag31, 0
  br i1 %str.immortal32, label %str_ok34, label %str_gen_check33

str_stale26:                                      ; preds = %str_gen_check24
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok25

str_gen_check33:                                  ; preds = %str_ok25
  %arena.cur36 = call ptr @dva_arena_current()
  %tag.valid37 = call i1 @dva_arena_validate_tag(ptr %arena.cur36, i64 %str.tag31)
  br i1 %tag.valid37, label %str_ok34, label %str_stale35

str_ok34:                                         ; preds = %str_stale35, %str_gen_check33, %str_ok25
  %eq.len38 = icmp eq i64 %eq.lhs.len21, %eq.rhs.len30
  br i1 %eq.len38, label %str.eq.then39, label %str.eq.else40

str_stale35:                                      ; preds = %str_gen_check33
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok34

str.eq.then39:                                    ; preds = %str_ok34
  %eq.lhs.data42 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data43 = load ptr, ptr %eq.lhs.data42, align 8
  %eq.rhs.data44 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.68.struct, i32 0, i32 1), align 8
  %eq.memcmp45 = call i32 @memcmp(ptr %eq.lhs.data43, ptr %eq.rhs.data44, i64 %eq.lhs.len21)
  %eq.cmp.zero46 = icmp eq i32 %eq.memcmp45, 0
  br label %str.eq.merge41

str.eq.else40:                                    ; preds = %str_ok34
  br label %str.eq.merge41

str.eq.merge41:                                   ; preds = %str.eq.else40, %str.eq.then39
  %str.eq.result47 = phi i1 [ %eq.cmp.zero46, %str.eq.then39 ], [ false, %str.eq.else40 ]
  %case.or = or i1 %str.eq.result, %str.eq.result47
  br i1 %case.or, label %choice.case, label %choice.next

ret.dead:                                         ; No predecessors!
  br label %choice.exit6

choice.case48:                                    ; preds = %str.eq.merge72
  store i1 true, ptr %"var.check_only'", align 1
  br label %choice.exit6

choice.next49:                                    ; preds = %str.eq.merge72
  %eq.lhs.len81 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len82 = load i64, ptr %eq.lhs.len81, align 8
  %eq.lhs.len83 = and i64 %eq.lhs.len82, 281474976710655
  %str.tag84 = lshr i64 %eq.lhs.len82, 48
  %str.immortal85 = icmp eq i64 %str.tag84, 0
  br i1 %str.immortal85, label %str_ok87, label %str_gen_check86

str_gen_check55:                                  ; preds = %choice.next
  %arena.cur58 = call ptr @dva_arena_current()
  %tag.valid59 = call i1 @dva_arena_validate_tag(ptr %arena.cur58, i64 %str.tag53)
  br i1 %tag.valid59, label %str_ok56, label %str_stale57

str_ok56:                                         ; preds = %str_stale57, %str_gen_check55, %choice.next
  %eq.rhs.len60 = load i64, ptr @str.69.struct, align 8
  %eq.rhs.len61 = and i64 %eq.rhs.len60, 281474976710655
  %str.tag62 = lshr i64 %eq.rhs.len60, 48
  %str.immortal63 = icmp eq i64 %str.tag62, 0
  br i1 %str.immortal63, label %str_ok65, label %str_gen_check64

str_stale57:                                      ; preds = %str_gen_check55
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok56

str_gen_check64:                                  ; preds = %str_ok56
  %arena.cur67 = call ptr @dva_arena_current()
  %tag.valid68 = call i1 @dva_arena_validate_tag(ptr %arena.cur67, i64 %str.tag62)
  br i1 %tag.valid68, label %str_ok65, label %str_stale66

str_ok65:                                         ; preds = %str_stale66, %str_gen_check64, %str_ok56
  %eq.len69 = icmp eq i64 %eq.lhs.len52, %eq.rhs.len61
  br i1 %eq.len69, label %str.eq.then70, label %str.eq.else71

str_stale66:                                      ; preds = %str_gen_check64
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok65

str.eq.then70:                                    ; preds = %str_ok65
  %eq.lhs.data73 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data74 = load ptr, ptr %eq.lhs.data73, align 8
  %eq.rhs.data75 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.69.struct, i32 0, i32 1), align 8
  %eq.memcmp76 = call i32 @memcmp(ptr %eq.lhs.data74, ptr %eq.rhs.data75, i64 %eq.lhs.len52)
  %eq.cmp.zero77 = icmp eq i32 %eq.memcmp76, 0
  br label %str.eq.merge72

str.eq.else71:                                    ; preds = %str_ok65
  br label %str.eq.merge72

str.eq.merge72:                                   ; preds = %str.eq.else71, %str.eq.then70
  %str.eq.result78 = phi i1 [ %eq.cmp.zero77, %str.eq.then70 ], [ false, %str.eq.else71 ]
  br i1 %str.eq.result78, label %choice.case48, label %choice.next49

choice.case79:                                    ; preds = %str.eq.merge103
  store i1 true, ptr %"var.to_stdout'", align 1
  br label %choice.exit6

choice.next80:                                    ; preds = %str.eq.merge103
  %eq.lhs.len112 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len113 = load i64, ptr %eq.lhs.len112, align 8
  %eq.lhs.len114 = and i64 %eq.lhs.len113, 281474976710655
  %str.tag115 = lshr i64 %eq.lhs.len113, 48
  %str.immortal116 = icmp eq i64 %str.tag115, 0
  br i1 %str.immortal116, label %str_ok118, label %str_gen_check117

str_gen_check86:                                  ; preds = %choice.next49
  %arena.cur89 = call ptr @dva_arena_current()
  %tag.valid90 = call i1 @dva_arena_validate_tag(ptr %arena.cur89, i64 %str.tag84)
  br i1 %tag.valid90, label %str_ok87, label %str_stale88

str_ok87:                                         ; preds = %str_stale88, %str_gen_check86, %choice.next49
  %eq.rhs.len91 = load i64, ptr @str.70.struct, align 8
  %eq.rhs.len92 = and i64 %eq.rhs.len91, 281474976710655
  %str.tag93 = lshr i64 %eq.rhs.len91, 48
  %str.immortal94 = icmp eq i64 %str.tag93, 0
  br i1 %str.immortal94, label %str_ok96, label %str_gen_check95

str_stale88:                                      ; preds = %str_gen_check86
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok87

str_gen_check95:                                  ; preds = %str_ok87
  %arena.cur98 = call ptr @dva_arena_current()
  %tag.valid99 = call i1 @dva_arena_validate_tag(ptr %arena.cur98, i64 %str.tag93)
  br i1 %tag.valid99, label %str_ok96, label %str_stale97

str_ok96:                                         ; preds = %str_stale97, %str_gen_check95, %str_ok87
  %eq.len100 = icmp eq i64 %eq.lhs.len83, %eq.rhs.len92
  br i1 %eq.len100, label %str.eq.then101, label %str.eq.else102

str_stale97:                                      ; preds = %str_gen_check95
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok96

str.eq.then101:                                   ; preds = %str_ok96
  %eq.lhs.data104 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data105 = load ptr, ptr %eq.lhs.data104, align 8
  %eq.rhs.data106 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.70.struct, i32 0, i32 1), align 8
  %eq.memcmp107 = call i32 @memcmp(ptr %eq.lhs.data105, ptr %eq.rhs.data106, i64 %eq.lhs.len83)
  %eq.cmp.zero108 = icmp eq i32 %eq.memcmp107, 0
  br label %str.eq.merge103

str.eq.else102:                                   ; preds = %str_ok96
  br label %str.eq.merge103

str.eq.merge103:                                  ; preds = %str.eq.else102, %str.eq.then101
  %str.eq.result109 = phi i1 [ %eq.cmp.zero108, %str.eq.then101 ], [ false, %str.eq.else102 ]
  br i1 %str.eq.result109, label %choice.case79, label %choice.next80

choice.case110:                                   ; preds = %str.eq.merge134
  store i1 true, ptr %"var.from_stdin'", align 1
  br label %choice.exit6

choice.next111:                                   ; preds = %str.eq.merge134
  %var.load141 = load ptr, ptr %var.arg, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load141, i32 0, i32 0
  %str.len.query142 = load i64, ptr %str.len.query, align 8
  %str.len.query143 = and i64 %str.len.query142, 281474976710655
  %str.tag144 = lshr i64 %str.len.query142, 48
  %str.immortal145 = icmp eq i64 %str.tag144, 0
  br i1 %str.immortal145, label %str_ok147, label %str_gen_check146

str_gen_check117:                                 ; preds = %choice.next80
  %arena.cur120 = call ptr @dva_arena_current()
  %tag.valid121 = call i1 @dva_arena_validate_tag(ptr %arena.cur120, i64 %str.tag115)
  br i1 %tag.valid121, label %str_ok118, label %str_stale119

str_ok118:                                        ; preds = %str_stale119, %str_gen_check117, %choice.next80
  %eq.rhs.len122 = load i64, ptr @str.71.struct, align 8
  %eq.rhs.len123 = and i64 %eq.rhs.len122, 281474976710655
  %str.tag124 = lshr i64 %eq.rhs.len122, 48
  %str.immortal125 = icmp eq i64 %str.tag124, 0
  br i1 %str.immortal125, label %str_ok127, label %str_gen_check126

str_stale119:                                     ; preds = %str_gen_check117
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok118

str_gen_check126:                                 ; preds = %str_ok118
  %arena.cur129 = call ptr @dva_arena_current()
  %tag.valid130 = call i1 @dva_arena_validate_tag(ptr %arena.cur129, i64 %str.tag124)
  br i1 %tag.valid130, label %str_ok127, label %str_stale128

str_ok127:                                        ; preds = %str_stale128, %str_gen_check126, %str_ok118
  %eq.len131 = icmp eq i64 %eq.lhs.len114, %eq.rhs.len123
  br i1 %eq.len131, label %str.eq.then132, label %str.eq.else133

str_stale128:                                     ; preds = %str_gen_check126
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok127

str.eq.then132:                                   ; preds = %str_ok127
  %eq.lhs.data135 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data136 = load ptr, ptr %eq.lhs.data135, align 8
  %eq.rhs.data137 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.71.struct, i32 0, i32 1), align 8
  %eq.memcmp138 = call i32 @memcmp(ptr %eq.lhs.data136, ptr %eq.rhs.data137, i64 %eq.lhs.len114)
  %eq.cmp.zero139 = icmp eq i32 %eq.memcmp138, 0
  br label %str.eq.merge134

str.eq.else133:                                   ; preds = %str_ok127
  br label %str.eq.merge134

str.eq.merge134:                                  ; preds = %str.eq.else133, %str.eq.then132
  %str.eq.result140 = phi i1 [ %eq.cmp.zero139, %str.eq.then132 ], [ false, %str.eq.else133 ]
  br i1 %str.eq.result140, label %choice.case110, label %choice.next111

str_gen_check146:                                 ; preds = %choice.next111
  %arena.cur149 = call ptr @dva_arena_current()
  %tag.valid150 = call i1 @dva_arena_validate_tag(ptr %arena.cur149, i64 %str.tag144)
  br i1 %tag.valid150, label %str_ok147, label %str_stale148

str_ok147:                                        ; preds = %str_stale148, %str_gen_check146, %choice.next111
  %cmptmp151 = icmp sgt i64 %str.len.query143, 0
  br i1 %cmptmp151, label %and.585.then, label %and.585.else

str_stale148:                                     ; preds = %str_gen_check146
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok147

and.585.then:                                     ; preds = %str_ok147
  %var.load152 = load ptr, ptr %var.arg, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load152, i32 0, i32 0
  %s.read.len153 = load i64, ptr %s.read.len, align 8
  %s.read.len154 = and i64 %s.read.len153, 281474976710655
  %str.tag155 = lshr i64 %s.read.len153, 48
  %str.immortal156 = icmp eq i64 %str.tag155, 0
  br i1 %str.immortal156, label %str_ok158, label %str_gen_check157

and.585.else:                                     ; preds = %str_ok147
  br label %and.585.exit

and.585.exit:                                     ; preds = %and.585.else, %idx_ok
  %and.585.phi = phi i1 [ %cmptmp163, %idx_ok ], [ %cmptmp151, %and.585.else ]
  br i1 %and.585.phi, label %choice.then164, label %choice.else

str_gen_check157:                                 ; preds = %and.585.then
  %arena.cur160 = call ptr @dva_arena_current()
  %tag.valid161 = call i1 @dva_arena_validate_tag(ptr %arena.cur160, i64 %str.tag155)
  br i1 %tag.valid161, label %str_ok158, label %str_stale159

str_ok158:                                        ; preds = %str_stale159, %str_gen_check157, %and.585.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load152, i32 0, i32 1
  %s.read.data162 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

str_stale159:                                     ; preds = %str_gen_check157
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok158

idx_big_check:                                    ; preds = %str_ok158
  %idx.big = icmp sge i64 0, %s.read.len154
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data162, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp163 = icmp eq i64 %s.byte.val, 45
  br label %and.585.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok158
  %13 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then164:                                   ; preds = %and.585.exit
  %var.load166 = load ptr, ptr %var.arg, align 8
  %concat.lhs = load i64, ptr @str.72.struct, align 8
  %concat.lhs167 = and i64 %concat.lhs, 281474976710655
  %str.tag168 = lshr i64 %concat.lhs, 48
  %str.immortal169 = icmp eq i64 %str.tag168, 0
  br i1 %str.immortal169, label %str_ok171, label %str_gen_check170

choice.else:                                      ; preds = %and.585.exit
  %var.load235 = load ptr, ptr %var.arg, align 8
  %a.load = load ptr, ptr %var.targets, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit165:                                   ; preds = %a.store, %ret.dead234
  br label %choice.exit6

str_gen_check170:                                 ; preds = %choice.then164
  %arena.cur173 = call ptr @dva_arena_current()
  %tag.valid174 = call i1 @dva_arena_validate_tag(ptr %arena.cur173, i64 %str.tag168)
  br i1 %tag.valid174, label %str_ok171, label %str_stale172

str_ok171:                                        ; preds = %str_stale172, %str_gen_check170, %choice.then164
  %concat.lhs175 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.72.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load166, i32 0, i32 0
  %concat.rhs176 = load i64, ptr %concat.rhs, align 8
  %concat.rhs177 = and i64 %concat.rhs176, 281474976710655
  %str.tag178 = lshr i64 %concat.rhs176, 48
  %str.immortal179 = icmp eq i64 %str.tag178, 0
  br i1 %str.immortal179, label %str_ok181, label %str_gen_check180

str_stale172:                                     ; preds = %str_gen_check170
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok171

str_gen_check180:                                 ; preds = %str_ok171
  %arena.cur183 = call ptr @dva_arena_current()
  %tag.valid184 = call i1 @dva_arena_validate_tag(ptr %arena.cur183, i64 %str.tag178)
  br i1 %tag.valid184, label %str_ok181, label %str_stale182

str_ok181:                                        ; preds = %str_stale182, %str_gen_check180, %str_ok171
  %concat.rhs185 = getelementptr inbounds { i64, ptr }, ptr %var.load166, i32 0, i32 1
  %concat.rhs186 = load ptr, ptr %concat.rhs185, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs167, i64 %concat.rhs177)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len187

str_stale182:                                     ; preds = %str_gen_check180
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok181

concat.sum.len187:                                ; preds = %str_overflow_abort, %str_ok181
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum188 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf189 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf189, label %str_overflow_abort191, label %concat.tot.len190

str_overflow_abort:                               ; preds = %str_ok181
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len187

concat.tot.len190:                                ; preds = %str_overflow_abort191, %concat.sum.len187
  %arena.cur192 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur192, i64 %sum188)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs175, i64 %concat.lhs167, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs167
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs186, i64 %concat.rhs177, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur193 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur193, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs194 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs195 = load i64, ptr %concat.lhs194, align 8
  %concat.lhs196 = and i64 %concat.lhs195, 281474976710655
  %str.tag197 = lshr i64 %concat.lhs195, 48
  %str.immortal198 = icmp eq i64 %str.tag197, 0
  br i1 %str.immortal198, label %str_ok200, label %str_gen_check199

str_overflow_abort191:                            ; preds = %concat.sum.len187
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len190

str_gen_check199:                                 ; preds = %concat.tot.len190
  %arena.cur202 = call ptr @dva_arena_current()
  %tag.valid203 = call i1 @dva_arena_validate_tag(ptr %arena.cur202, i64 %str.tag197)
  br i1 %tag.valid203, label %str_ok200, label %str_stale201

str_ok200:                                        ; preds = %str_stale201, %str_gen_check199, %concat.tot.len190
  %concat.lhs204 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs205 = load ptr, ptr %concat.lhs204, align 8
  %concat.rhs206 = load i64, ptr @str.73.struct, align 8
  %concat.rhs207 = and i64 %concat.rhs206, 281474976710655
  %str.tag208 = lshr i64 %concat.rhs206, 48
  %str.immortal209 = icmp eq i64 %str.tag208, 0
  br i1 %str.immortal209, label %str_ok211, label %str_gen_check210

str_stale201:                                     ; preds = %str_gen_check199
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok200

str_gen_check210:                                 ; preds = %str_ok200
  %arena.cur213 = call ptr @dva_arena_current()
  %tag.valid214 = call i1 @dva_arena_validate_tag(ptr %arena.cur213, i64 %str.tag208)
  br i1 %tag.valid214, label %str_ok211, label %str_stale212

str_ok211:                                        ; preds = %str_stale212, %str_gen_check210, %str_ok200
  %concat.rhs215 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.73.struct, i32 0, i32 1), align 8
  %concat.sum.len216 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs196, i64 %concat.rhs207)
  %sum217 = extractvalue { i64, i1 } %concat.sum.len216, 0
  %ovf218 = extractvalue { i64, i1 } %concat.sum.len216, 1
  br i1 %ovf218, label %str_overflow_abort220, label %concat.sum.len219

str_stale212:                                     ; preds = %str_gen_check210
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok211

concat.sum.len219:                                ; preds = %str_overflow_abort220, %str_ok211
  %concat.tot.len221 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum217, i64 1)
  %sum222 = extractvalue { i64, i1 } %concat.tot.len221, 0
  %ovf223 = extractvalue { i64, i1 } %concat.tot.len221, 1
  br i1 %ovf223, label %str_overflow_abort225, label %concat.tot.len224

str_overflow_abort220:                            ; preds = %str_ok211
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len219

concat.tot.len224:                                ; preds = %str_overflow_abort225, %concat.sum.len219
  %arena.cur226 = call ptr @dva_arena_current()
  %concat.buf227 = call ptr @dva_arena_alloc(ptr %arena.cur226, i64 %sum222)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf227, ptr align 1 %concat.lhs205, i64 %concat.lhs196, i1 false)
  %concat.mid228 = getelementptr i8, ptr %concat.buf227, i64 %concat.lhs196
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid228, ptr align 1 %concat.rhs215, i64 %concat.rhs207, i1 false)
  %concat.nul229 = getelementptr i8, ptr %concat.buf227, i64 %sum217
  store i8 0, ptr %concat.nul229, align 1
  %arena.cur230 = call ptr @dva_arena_current()
  %concat.str231 = call ptr @dva_arena_alloc(ptr %arena.cur230, i64 16)
  %str.build.len.gep232 = getelementptr inbounds { i64, ptr }, ptr %concat.str231, i32 0, i32 0
  store i64 %sum217, ptr %str.build.len.gep232, align 8
  %str.build.data.gep233 = getelementptr inbounds { i64, ptr }, ptr %concat.str231, i32 0, i32 1
  store ptr %concat.buf227, ptr %str.build.data.gep233, align 8
  call void @"log::error"(ptr %concat.str231)
  ret i64 1

str_overflow_abort225:                            ; preds = %concat.sum.len219
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len224

ret.dead234:                                      ; No predecessors!
  br label %choice.exit165

a.create:                                         ; preds = %choice.else
  %arena.cur236 = call ptr @dva_arena_current()
  %a.create237 = call ptr @dva_arena_alloc(ptr %arena.cur236, i64 24)
  %arena.cur238 = call ptr @dva_arena_current()
  %a.buf239 = call ptr @dva_arena_alloc(ptr %arena.cur238, i64 128)
  %a.len.gep240 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create237, i32 0, i32 0
  store i64 0, ptr %a.len.gep240, align 8
  %a.data.gep241 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create237, i32 0, i32 1
  store ptr %a.buf239, ptr %a.data.gep241, align 8
  %a.cap.gep242 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create237, i32 0, i32 2
  store i64 16, ptr %a.cap.gep242, align 8
  store ptr %a.create237, ptr %var.targets, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.else
  %a.load2 = load ptr, ptr %var.targets, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len243 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap244 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len243, %a.cap244
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data245 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len246 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data245, i64 %a.cur.len246
  %slot.p2i = ptrtoint ptr %var.load235 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len246, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit165

choice.then249:                                   ; preds = %loop.exit.584
  %call.res252 = call ptr @"formatter::read_stdin_all"()
  store ptr %call.res252, ptr %var.src, align 8
  %var.load253 = load ptr, ptr %var.src, align 8
  %call.res254 = call { i1, i64 } @"formatter::format_source"(ptr %var.load253, ptr @str.74.struct)
  store { i1, i64 } %call.res254, ptr %var.res, align 8
  %var.load255 = load { i1, i64 }, ptr %var.res, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load255, 0
  br i1 %ram.tag, label %choice.then256, label %choice.else257

choice.else250:                                   ; preds = %loop.exit.584
  %var.load307 = load ptr, ptr %var.targets, align 8
  %a.load308 = load ptr, ptr %var.targets, align 8
  %a.null309 = icmp eq ptr %a.load308, null
  br i1 %a.null309, label %a.create310, label %a.after311

choice.exit251:                                   ; preds = %choice.exit497, %choice.exit258
  %choice.res776 = phi i64 [ %choice.res306, %choice.exit258 ], [ %choice.res775, %choice.exit497 ]
  ret i64 %choice.res776

choice.then256:                                   ; preds = %choice.then249
  %ram.pay = extractvalue { i1, i64 } %var.load255, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._259, align 8
  store ptr %pay.ptr, ptr %var.formatted, align 8
  %var.load260 = load i1, ptr %"var.check_only'", align 1
  br i1 %var.load260, label %choice.then261, label %choice.else262

choice.else257:                                   ; preds = %choice.then249
  %ram.pay302 = extractvalue { i1, i64 } %var.load255, 1
  %pay.ptr303 = inttoptr i64 %ram.pay302 to ptr
  store ptr %pay.ptr303, ptr %var._304, align 8
  store ptr %pay.ptr303, ptr %var.err, align 8
  %var.load305 = load ptr, ptr %var.err, align 8
  call void @"log::error"(ptr %var.load305)
  br label %choice.exit258

choice.exit258:                                   ; preds = %choice.else257, %choice.exit263
  %choice.res306 = phi i64 [ %choice.res301, %choice.exit263 ], [ 1, %choice.else257 ]
  br label %choice.exit251

choice.then261:                                   ; preds = %choice.then256
  %var.load264 = load ptr, ptr %var.formatted, align 8
  %var.load265 = load ptr, ptr %var.src, align 8
  %eq.lhs.len266 = getelementptr inbounds { i64, ptr }, ptr %var.load264, i32 0, i32 0
  %eq.lhs.len267 = load i64, ptr %eq.lhs.len266, align 8
  %eq.lhs.len268 = and i64 %eq.lhs.len267, 281474976710655
  %str.tag269 = lshr i64 %eq.lhs.len267, 48
  %str.immortal270 = icmp eq i64 %str.tag269, 0
  br i1 %str.immortal270, label %str_ok272, label %str_gen_check271

choice.else262:                                   ; preds = %choice.then256
  %var.load300 = load ptr, ptr %var.formatted, align 8
  call void @"formatter::write_stdout"(ptr %var.load300)
  br label %choice.exit263

choice.exit263:                                   ; preds = %choice.else262, %choice.exit299
  %choice.res301 = phi i64 [ %choice.res, %choice.exit299 ], [ 0, %choice.else262 ]
  br label %choice.exit258

str_gen_check271:                                 ; preds = %choice.then261
  %arena.cur274 = call ptr @dva_arena_current()
  %tag.valid275 = call i1 @dva_arena_validate_tag(ptr %arena.cur274, i64 %str.tag269)
  br i1 %tag.valid275, label %str_ok272, label %str_stale273

str_ok272:                                        ; preds = %str_stale273, %str_gen_check271, %choice.then261
  %eq.rhs.len276 = getelementptr inbounds { i64, ptr }, ptr %var.load265, i32 0, i32 0
  %eq.rhs.len277 = load i64, ptr %eq.rhs.len276, align 8
  %eq.rhs.len278 = and i64 %eq.rhs.len277, 281474976710655
  %str.tag279 = lshr i64 %eq.rhs.len277, 48
  %str.immortal280 = icmp eq i64 %str.tag279, 0
  br i1 %str.immortal280, label %str_ok282, label %str_gen_check281

str_stale273:                                     ; preds = %str_gen_check271
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok272

str_gen_check281:                                 ; preds = %str_ok272
  %arena.cur284 = call ptr @dva_arena_current()
  %tag.valid285 = call i1 @dva_arena_validate_tag(ptr %arena.cur284, i64 %str.tag279)
  br i1 %tag.valid285, label %str_ok282, label %str_stale283

str_ok282:                                        ; preds = %str_stale283, %str_gen_check281, %str_ok272
  %eq.len286 = icmp eq i64 %eq.lhs.len268, %eq.rhs.len278
  br i1 %eq.len286, label %str.eq.then287, label %str.eq.else288

str_stale283:                                     ; preds = %str_gen_check281
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok282

str.eq.then287:                                   ; preds = %str_ok282
  %eq.lhs.data290 = getelementptr inbounds { i64, ptr }, ptr %var.load264, i32 0, i32 1
  %eq.lhs.data291 = load ptr, ptr %eq.lhs.data290, align 8
  %eq.rhs.data292 = getelementptr inbounds { i64, ptr }, ptr %var.load265, i32 0, i32 1
  %eq.rhs.data293 = load ptr, ptr %eq.rhs.data292, align 8
  %eq.memcmp294 = call i32 @memcmp(ptr %eq.lhs.data291, ptr %eq.rhs.data293, i64 %eq.lhs.len268)
  %eq.cmp.zero295 = icmp eq i32 %eq.memcmp294, 0
  br label %str.eq.merge289

str.eq.else288:                                   ; preds = %str_ok282
  br label %str.eq.merge289

str.eq.merge289:                                  ; preds = %str.eq.else288, %str.eq.then287
  %str.eq.result296 = phi i1 [ %eq.cmp.zero295, %str.eq.then287 ], [ false, %str.eq.else288 ]
  br i1 %str.eq.result296, label %choice.then297, label %choice.else298

choice.then297:                                   ; preds = %str.eq.merge289
  br label %choice.exit299

choice.else298:                                   ; preds = %str.eq.merge289
  br label %choice.exit299

choice.exit299:                                   ; preds = %choice.else298, %choice.then297
  %choice.res = phi i64 [ 0, %choice.then297 ], [ 1, %choice.else298 ]
  br label %choice.exit263

a.create310:                                      ; preds = %choice.else250
  %arena.cur312 = call ptr @dva_arena_current()
  %a.create313 = call ptr @dva_arena_alloc(ptr %arena.cur312, i64 24)
  %arena.cur314 = call ptr @dva_arena_current()
  %a.buf315 = call ptr @dva_arena_alloc(ptr %arena.cur314, i64 128)
  %a.len.gep316 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create313, i32 0, i32 0
  store i64 0, ptr %a.len.gep316, align 8
  %a.data.gep317 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create313, i32 0, i32 1
  store ptr %a.buf315, ptr %a.data.gep317, align 8
  %a.cap.gep318 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create313, i32 0, i32 2
  store i64 16, ptr %a.cap.gep318, align 8
  store ptr %a.create313, ptr %var.targets, align 8
  br label %a.after311

a.after311:                                       ; preds = %a.create310, %choice.else250
  %a.load2319 = load ptr, ptr %var.targets, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2319, i32 0, i32 0
  %a.len.query320 = load i64, ptr %a.len.query, align 8
  %cmptmp321 = icmp eq i64 %a.len.query320, 0
  br i1 %cmptmp321, label %choice.then322, label %choice.exit323

choice.then322:                                   ; preds = %a.after311
  %a.load324 = load ptr, ptr %var.targets, align 8
  %a.null325 = icmp eq ptr %a.load324, null
  br i1 %a.null325, label %a.create326, label %a.after327

choice.exit323:                                   ; preds = %a.store338, %a.after311
  %arena.cur351 = call ptr @dva_arena_current()
  %a.new352 = call ptr @dva_arena_alloc(ptr %arena.cur351, i64 24)
  %arena.cur353 = call ptr @dva_arena_current()
  %a.buf354 = call ptr @dva_arena_alloc(ptr %arena.cur353, i64 128)
  %a.len.gep355 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new352, i32 0, i32 0
  store i64 0, ptr %a.len.gep355, align 8
  %a.data.gep356 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new352, i32 0, i32 1
  store ptr %a.buf354, ptr %a.data.gep356, align 8
  %a.cap.gep357 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new352, i32 0, i32 2
  store i64 16, ptr %a.cap.gep357, align 8
  store ptr %a.new352, ptr %var.files, align 8
  %var.load358 = load ptr, ptr %var.targets, align 8
  %a.load359 = load ptr, ptr %var.targets, align 8
  %a.null360 = icmp eq ptr %a.load359, null
  br i1 %a.null360, label %a.create361, label %a.after362

a.create326:                                      ; preds = %choice.then322
  %arena.cur328 = call ptr @dva_arena_current()
  %a.create329 = call ptr @dva_arena_alloc(ptr %arena.cur328, i64 24)
  %arena.cur330 = call ptr @dva_arena_current()
  %a.buf331 = call ptr @dva_arena_alloc(ptr %arena.cur330, i64 128)
  %a.len.gep332 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create329, i32 0, i32 0
  store i64 0, ptr %a.len.gep332, align 8
  %a.data.gep333 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create329, i32 0, i32 1
  store ptr %a.buf331, ptr %a.data.gep333, align 8
  %a.cap.gep334 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create329, i32 0, i32 2
  store i64 16, ptr %a.cap.gep334, align 8
  store ptr %a.create329, ptr %var.targets, align 8
  br label %a.after327

a.after327:                                       ; preds = %a.create326, %choice.then322
  %a.load2335 = load ptr, ptr %var.targets, align 8
  br label %a.check336

a.check336:                                       ; preds = %a.after327
  %a.len339 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2335, i32 0, i32 0
  %a.len340 = load i64, ptr %a.len339, align 8
  %a.cap341 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2335, i32 0, i32 2
  %a.cap342 = load i64, ptr %a.cap341, align 8
  %a.needs.grow343 = icmp eq i64 %a.len340, %a.cap342
  br i1 %a.needs.grow343, label %a.grow337, label %a.store338

a.grow337:                                        ; preds = %a.check336
  call void @dva_array_grow(ptr %a.load2335)
  br label %a.store338

a.store338:                                       ; preds = %a.grow337, %a.check336
  %a.cur.data344 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2335, i32 0, i32 1
  %a.cur.data345 = load ptr, ptr %a.cur.data344, align 8
  %a.cur.len346 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2335, i32 0, i32 0
  %a.cur.len347 = load i64, ptr %a.cur.len346, align 8
  %a.elem.gep348 = getelementptr i64, ptr %a.cur.data345, i64 %a.cur.len347
  store i64 ptrtoint (ptr @str.75.struct to i64), ptr %a.elem.gep348, align 8
  %a.next.len349 = add i64 %a.cur.len347, 1
  %b.len.gep350 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2335, i32 0, i32 0
  store i64 %a.next.len349, ptr %b.len.gep350, align 8
  br label %choice.exit323

a.create361:                                      ; preds = %choice.exit323
  %arena.cur363 = call ptr @dva_arena_current()
  %a.create364 = call ptr @dva_arena_alloc(ptr %arena.cur363, i64 24)
  %arena.cur365 = call ptr @dva_arena_current()
  %a.buf366 = call ptr @dva_arena_alloc(ptr %arena.cur365, i64 128)
  %a.len.gep367 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create364, i32 0, i32 0
  store i64 0, ptr %a.len.gep367, align 8
  %a.data.gep368 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create364, i32 0, i32 1
  store ptr %a.buf366, ptr %a.data.gep368, align 8
  %a.cap.gep369 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create364, i32 0, i32 2
  store i64 16, ptr %a.cap.gep369, align 8
  store ptr %a.create364, ptr %var.targets, align 8
  br label %a.after362

a.after362:                                       ; preds = %a.create361, %choice.exit323
  %a.load2370 = load ptr, ptr %var.targets, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2370, i32 0, i32 0
  %arr.cycle.len371 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2370, i32 0, i32 1
  %arr.cycle.data372 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.586, align 8
  br label %loop.header.586

loop.header.586:                                  ; preds = %loop.latch.586, %a.after362
  %counter.load373 = load i64, ptr %loop.idx.586, align 8
  %loop.cond = icmp slt i64 %counter.load373, %arr.cycle.len371
  br i1 %loop.cond, label %loop.body.586, label %loop.exit.nat.586

loop.body.586:                                    ; preds = %loop.header.586
  %loop.rel.i374 = sub i64 %counter.load373, 0
  store i64 1, ptr %loop.step.586, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data372, i64 %counter.load373
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i374, ptr %var._i375, align 8
  store ptr %slot.i2p, ptr %var._376, align 8
  store ptr %slot.i2p, ptr %var.t, align 8
  %var.load377 = load ptr, ptr %var.t, align 8
  %call.res378 = call i1 @"fs::exists"(ptr %var.load377)
  %nottmp = xor i1 %call.res378, true
  br i1 %nottmp, label %choice.then379, label %choice.exit380

loop.exit.nat.586:                                ; preds = %loop.header.586
  br label %loop.exit.586

loop.latch.586:                                   ; preds = %a.after468
  %step.val477 = load i64, ptr %loop.step.586, align 8
  %loop.next478 = add i64 %counter.load373, %step.val477
  store i64 %loop.next478, ptr %loop.idx.586, align 8
  br label %loop.header.586

loop.exit.586:                                    ; preds = %loop.exit.nat.586
  %var.load479 = load ptr, ptr %var.files, align 8
  %a.load480 = load ptr, ptr %var.files, align 8
  %a.null481 = icmp eq ptr %a.load480, null
  br i1 %a.null481, label %a.create482, label %a.after483

choice.then379:                                   ; preds = %loop.body.586
  %var.load381 = load ptr, ptr %var.t, align 8
  %concat.lhs382 = load i64, ptr @str.76.struct, align 8
  %concat.lhs383 = and i64 %concat.lhs382, 281474976710655
  %str.tag384 = lshr i64 %concat.lhs382, 48
  %str.immortal385 = icmp eq i64 %str.tag384, 0
  br i1 %str.immortal385, label %str_ok387, label %str_gen_check386

choice.exit380:                                   ; preds = %ret.dead462, %loop.body.586
  %var.load463 = load ptr, ptr %var.t, align 8
  %var.load464 = load ptr, ptr %var.files, align 8
  %a.load465 = load ptr, ptr %var.files, align 8
  %a.null466 = icmp eq ptr %a.load465, null
  br i1 %a.null466, label %a.create467, label %a.after468

str_gen_check386:                                 ; preds = %choice.then379
  %arena.cur389 = call ptr @dva_arena_current()
  %tag.valid390 = call i1 @dva_arena_validate_tag(ptr %arena.cur389, i64 %str.tag384)
  br i1 %tag.valid390, label %str_ok387, label %str_stale388

str_ok387:                                        ; preds = %str_stale388, %str_gen_check386, %choice.then379
  %concat.lhs391 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.76.struct, i32 0, i32 1), align 8
  %concat.rhs392 = getelementptr inbounds { i64, ptr }, ptr %var.load381, i32 0, i32 0
  %concat.rhs393 = load i64, ptr %concat.rhs392, align 8
  %concat.rhs394 = and i64 %concat.rhs393, 281474976710655
  %str.tag395 = lshr i64 %concat.rhs393, 48
  %str.immortal396 = icmp eq i64 %str.tag395, 0
  br i1 %str.immortal396, label %str_ok398, label %str_gen_check397

str_stale388:                                     ; preds = %str_gen_check386
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok387

str_gen_check397:                                 ; preds = %str_ok387
  %arena.cur400 = call ptr @dva_arena_current()
  %tag.valid401 = call i1 @dva_arena_validate_tag(ptr %arena.cur400, i64 %str.tag395)
  br i1 %tag.valid401, label %str_ok398, label %str_stale399

str_ok398:                                        ; preds = %str_stale399, %str_gen_check397, %str_ok387
  %concat.rhs402 = getelementptr inbounds { i64, ptr }, ptr %var.load381, i32 0, i32 1
  %concat.rhs403 = load ptr, ptr %concat.rhs402, align 8
  %concat.sum.len404 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs383, i64 %concat.rhs394)
  %sum405 = extractvalue { i64, i1 } %concat.sum.len404, 0
  %ovf406 = extractvalue { i64, i1 } %concat.sum.len404, 1
  br i1 %ovf406, label %str_overflow_abort408, label %concat.sum.len407

str_stale399:                                     ; preds = %str_gen_check397
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok398

concat.sum.len407:                                ; preds = %str_overflow_abort408, %str_ok398
  %concat.tot.len409 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum405, i64 1)
  %sum410 = extractvalue { i64, i1 } %concat.tot.len409, 0
  %ovf411 = extractvalue { i64, i1 } %concat.tot.len409, 1
  br i1 %ovf411, label %str_overflow_abort413, label %concat.tot.len412

str_overflow_abort408:                            ; preds = %str_ok398
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len407

concat.tot.len412:                                ; preds = %str_overflow_abort413, %concat.sum.len407
  %arena.cur414 = call ptr @dva_arena_current()
  %concat.buf415 = call ptr @dva_arena_alloc(ptr %arena.cur414, i64 %sum410)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf415, ptr align 1 %concat.lhs391, i64 %concat.lhs383, i1 false)
  %concat.mid416 = getelementptr i8, ptr %concat.buf415, i64 %concat.lhs383
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid416, ptr align 1 %concat.rhs403, i64 %concat.rhs394, i1 false)
  %concat.nul417 = getelementptr i8, ptr %concat.buf415, i64 %sum405
  store i8 0, ptr %concat.nul417, align 1
  %arena.cur418 = call ptr @dva_arena_current()
  %concat.str419 = call ptr @dva_arena_alloc(ptr %arena.cur418, i64 16)
  %str.build.len.gep420 = getelementptr inbounds { i64, ptr }, ptr %concat.str419, i32 0, i32 0
  store i64 %sum405, ptr %str.build.len.gep420, align 8
  %str.build.data.gep421 = getelementptr inbounds { i64, ptr }, ptr %concat.str419, i32 0, i32 1
  store ptr %concat.buf415, ptr %str.build.data.gep421, align 8
  %concat.lhs422 = getelementptr inbounds { i64, ptr }, ptr %concat.str419, i32 0, i32 0
  %concat.lhs423 = load i64, ptr %concat.lhs422, align 8
  %concat.lhs424 = and i64 %concat.lhs423, 281474976710655
  %str.tag425 = lshr i64 %concat.lhs423, 48
  %str.immortal426 = icmp eq i64 %str.tag425, 0
  br i1 %str.immortal426, label %str_ok428, label %str_gen_check427

str_overflow_abort413:                            ; preds = %concat.sum.len407
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len412

str_gen_check427:                                 ; preds = %concat.tot.len412
  %arena.cur430 = call ptr @dva_arena_current()
  %tag.valid431 = call i1 @dva_arena_validate_tag(ptr %arena.cur430, i64 %str.tag425)
  br i1 %tag.valid431, label %str_ok428, label %str_stale429

str_ok428:                                        ; preds = %str_stale429, %str_gen_check427, %concat.tot.len412
  %concat.lhs432 = getelementptr inbounds { i64, ptr }, ptr %concat.str419, i32 0, i32 1
  %concat.lhs433 = load ptr, ptr %concat.lhs432, align 8
  %concat.rhs434 = load i64, ptr @str.77.struct, align 8
  %concat.rhs435 = and i64 %concat.rhs434, 281474976710655
  %str.tag436 = lshr i64 %concat.rhs434, 48
  %str.immortal437 = icmp eq i64 %str.tag436, 0
  br i1 %str.immortal437, label %str_ok439, label %str_gen_check438

str_stale429:                                     ; preds = %str_gen_check427
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok428

str_gen_check438:                                 ; preds = %str_ok428
  %arena.cur441 = call ptr @dva_arena_current()
  %tag.valid442 = call i1 @dva_arena_validate_tag(ptr %arena.cur441, i64 %str.tag436)
  br i1 %tag.valid442, label %str_ok439, label %str_stale440

str_ok439:                                        ; preds = %str_stale440, %str_gen_check438, %str_ok428
  %concat.rhs443 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.77.struct, i32 0, i32 1), align 8
  %concat.sum.len444 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs424, i64 %concat.rhs435)
  %sum445 = extractvalue { i64, i1 } %concat.sum.len444, 0
  %ovf446 = extractvalue { i64, i1 } %concat.sum.len444, 1
  br i1 %ovf446, label %str_overflow_abort448, label %concat.sum.len447

str_stale440:                                     ; preds = %str_gen_check438
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok439

concat.sum.len447:                                ; preds = %str_overflow_abort448, %str_ok439
  %concat.tot.len449 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum445, i64 1)
  %sum450 = extractvalue { i64, i1 } %concat.tot.len449, 0
  %ovf451 = extractvalue { i64, i1 } %concat.tot.len449, 1
  br i1 %ovf451, label %str_overflow_abort453, label %concat.tot.len452

str_overflow_abort448:                            ; preds = %str_ok439
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len447

concat.tot.len452:                                ; preds = %str_overflow_abort453, %concat.sum.len447
  %arena.cur454 = call ptr @dva_arena_current()
  %concat.buf455 = call ptr @dva_arena_alloc(ptr %arena.cur454, i64 %sum450)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf455, ptr align 1 %concat.lhs433, i64 %concat.lhs424, i1 false)
  %concat.mid456 = getelementptr i8, ptr %concat.buf455, i64 %concat.lhs424
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid456, ptr align 1 %concat.rhs443, i64 %concat.rhs435, i1 false)
  %concat.nul457 = getelementptr i8, ptr %concat.buf455, i64 %sum445
  store i8 0, ptr %concat.nul457, align 1
  %arena.cur458 = call ptr @dva_arena_current()
  %concat.str459 = call ptr @dva_arena_alloc(ptr %arena.cur458, i64 16)
  %str.build.len.gep460 = getelementptr inbounds { i64, ptr }, ptr %concat.str459, i32 0, i32 0
  store i64 %sum445, ptr %str.build.len.gep460, align 8
  %str.build.data.gep461 = getelementptr inbounds { i64, ptr }, ptr %concat.str459, i32 0, i32 1
  store ptr %concat.buf455, ptr %str.build.data.gep461, align 8
  call void @"log::error"(ptr %concat.str459)
  ret i64 1

str_overflow_abort453:                            ; preds = %concat.sum.len447
  %31 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len452

ret.dead462:                                      ; No predecessors!
  br label %choice.exit380

a.create467:                                      ; preds = %choice.exit380
  %arena.cur469 = call ptr @dva_arena_current()
  %a.create470 = call ptr @dva_arena_alloc(ptr %arena.cur469, i64 24)
  %arena.cur471 = call ptr @dva_arena_current()
  %a.buf472 = call ptr @dva_arena_alloc(ptr %arena.cur471, i64 128)
  %a.len.gep473 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create470, i32 0, i32 0
  store i64 0, ptr %a.len.gep473, align 8
  %a.data.gep474 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create470, i32 0, i32 1
  store ptr %a.buf472, ptr %a.data.gep474, align 8
  %a.cap.gep475 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create470, i32 0, i32 2
  store i64 16, ptr %a.cap.gep475, align 8
  store ptr %a.create470, ptr %var.files, align 8
  br label %a.after468

a.after468:                                       ; preds = %a.create467, %choice.exit380
  %a.load2476 = load ptr, ptr %var.files, align 8
  call void @"formatter::collect_dva_files"(ptr %var.load463, ptr %a.load2476)
  br label %loop.latch.586

a.create482:                                      ; preds = %loop.exit.586
  %arena.cur484 = call ptr @dva_arena_current()
  %a.create485 = call ptr @dva_arena_alloc(ptr %arena.cur484, i64 24)
  %arena.cur486 = call ptr @dva_arena_current()
  %a.buf487 = call ptr @dva_arena_alloc(ptr %arena.cur486, i64 128)
  %a.len.gep488 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create485, i32 0, i32 0
  store i64 0, ptr %a.len.gep488, align 8
  %a.data.gep489 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create485, i32 0, i32 1
  store ptr %a.buf487, ptr %a.data.gep489, align 8
  %a.cap.gep490 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create485, i32 0, i32 2
  store i64 16, ptr %a.cap.gep490, align 8
  store ptr %a.create485, ptr %var.files, align 8
  br label %a.after483

a.after483:                                       ; preds = %a.create482, %loop.exit.586
  %a.load2491 = load ptr, ptr %var.files, align 8
  %a.len.query492 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2491, i32 0, i32 0
  %a.len.query493 = load i64, ptr %a.len.query492, align 8
  %cmptmp494 = icmp eq i64 %a.len.query493, 0
  br i1 %cmptmp494, label %choice.then495, label %choice.else496

choice.then495:                                   ; preds = %a.after483
  call void @"log::error"(ptr @str.78.struct)
  br label %choice.exit497

choice.else496:                                   ; preds = %a.after483
  store i1 false, ptr %"var.had_err'", align 1
  store i64 0, ptr %"var.unformatted'", align 8
  %var.load498 = load ptr, ptr %var.files, align 8
  %a.load499 = load ptr, ptr %var.files, align 8
  %a.null500 = icmp eq ptr %a.load499, null
  br i1 %a.null500, label %a.create501, label %a.after502

choice.exit497:                                   ; preds = %choice.exit773, %choice.then495
  %choice.res775 = phi i64 [ 1, %choice.then495 ], [ %choice.res774, %choice.exit773 ]
  br label %choice.exit251

a.create501:                                      ; preds = %choice.else496
  %arena.cur503 = call ptr @dva_arena_current()
  %a.create504 = call ptr @dva_arena_alloc(ptr %arena.cur503, i64 24)
  %arena.cur505 = call ptr @dva_arena_current()
  %a.buf506 = call ptr @dva_arena_alloc(ptr %arena.cur505, i64 128)
  %a.len.gep507 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create504, i32 0, i32 0
  store i64 0, ptr %a.len.gep507, align 8
  %a.data.gep508 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create504, i32 0, i32 1
  store ptr %a.buf506, ptr %a.data.gep508, align 8
  %a.cap.gep509 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create504, i32 0, i32 2
  store i64 16, ptr %a.cap.gep509, align 8
  store ptr %a.create504, ptr %var.files, align 8
  br label %a.after502

a.after502:                                       ; preds = %a.create501, %choice.else496
  %a.load2510 = load ptr, ptr %var.files, align 8
  %arr.cycle.len511 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2510, i32 0, i32 0
  %arr.cycle.len512 = load i64, ptr %arr.cycle.len511, align 8
  %arr.cycle.data513 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2510, i32 0, i32 1
  %arr.cycle.data514 = load ptr, ptr %arr.cycle.data513, align 8
  store i64 0, ptr %loop.idx.587, align 8
  br label %loop.header.587

loop.header.587:                                  ; preds = %loop.latch.587, %a.after502
  %counter.load515 = load i64, ptr %loop.idx.587, align 8
  %loop.cond516 = icmp slt i64 %counter.load515, %arr.cycle.len512
  br i1 %loop.cond516, label %loop.body.587, label %loop.exit.nat.587

loop.body.587:                                    ; preds = %loop.header.587
  %loop.rel.i517 = sub i64 %counter.load515, 0
  store i64 1, ptr %loop.step.587, align 8
  %arr.elem.gep518 = getelementptr i64, ptr %arr.cycle.data514, i64 %counter.load515
  %arr.elem.raw519 = load i64, ptr %arr.elem.gep518, align 8
  %slot.i2p520 = inttoptr i64 %arr.elem.raw519 to ptr
  store i64 %loop.rel.i517, ptr %var._i521, align 8
  store ptr %slot.i2p520, ptr %var._522, align 8
  store ptr %slot.i2p520, ptr %var.f, align 8
  %var.load523 = load ptr, ptr %var.f, align 8
  %call.res524 = call ptr @"fs::read_to_string"(ptr %var.load523)
  store ptr %call.res524, ptr %var.src_opt, align 8
  %var.load525 = load ptr, ptr %var.src_opt, align 8
  %niche.ne.null = icmp ne ptr %var.load525, null
  br i1 %niche.ne.null, label %choice.then526, label %choice.else527

loop.exit.nat.587:                                ; preds = %loop.header.587
  br label %loop.exit.587

loop.latch.587:                                   ; preds = %choice.exit528
  %step.val766 = load i64, ptr %loop.step.587, align 8
  %loop.next767 = add i64 %counter.load515, %step.val766
  store i64 %loop.next767, ptr %loop.idx.587, align 8
  br label %loop.header.587

loop.exit.587:                                    ; preds = %loop.exit.nat.587
  %var.load768 = load i1, ptr %"var.had_err'", align 1
  br i1 %var.load768, label %or.588.then, label %or.588.else

choice.then526:                                   ; preds = %loop.body.587
  store ptr %var.load525, ptr %var._529, align 8
  store ptr %var.load525, ptr %var.src530, align 8
  %var.load531 = load ptr, ptr %var.src530, align 8
  %var.load532 = load ptr, ptr %var.f, align 8
  %call.res533 = call { i1, i64 } @"formatter::format_source"(ptr %var.load531, ptr %var.load532)
  store { i1, i64 } %call.res533, ptr %var.res534, align 8
  %var.load535 = load { i1, i64 }, ptr %var.res534, align 8
  %ram.tag536 = extractvalue { i1, i64 } %var.load535, 0
  br i1 %ram.tag536, label %choice.then537, label %choice.else538

choice.else527:                                   ; preds = %loop.body.587
  %var.load685 = load ptr, ptr %var.f, align 8
  %concat.lhs686 = load i64, ptr @str.80.struct, align 8
  %concat.lhs687 = and i64 %concat.lhs686, 281474976710655
  %str.tag688 = lshr i64 %concat.lhs686, 48
  %str.immortal689 = icmp eq i64 %str.tag688, 0
  br i1 %str.immortal689, label %str_ok691, label %str_gen_check690

choice.exit528:                                   ; preds = %concat.tot.len756, %choice.exit539
  br label %loop.latch.587

choice.then537:                                   ; preds = %choice.then526
  %ram.pay540 = extractvalue { i1, i64 } %var.load535, 1
  %pay.ptr541 = inttoptr i64 %ram.pay540 to ptr
  store ptr %pay.ptr541, ptr %var._542, align 8
  store ptr %pay.ptr541, ptr %var.formatted543, align 8
  %var.load544 = load i1, ptr %"var.to_stdout'", align 1
  br i1 %var.load544, label %choice.then545, label %choice.else546

choice.else538:                                   ; preds = %choice.then526
  %ram.pay680 = extractvalue { i1, i64 } %var.load535, 1
  %pay.ptr681 = inttoptr i64 %ram.pay680 to ptr
  store ptr %pay.ptr681, ptr %var._682, align 8
  store ptr %pay.ptr681, ptr %var.err683, align 8
  %var.load684 = load ptr, ptr %var.err683, align 8
  call void @"log::error"(ptr %var.load684)
  store i1 true, ptr %"var.had_err'", align 1
  br label %choice.exit539

choice.exit539:                                   ; preds = %choice.else538, %choice.exit547
  br label %choice.exit528

choice.then545:                                   ; preds = %choice.then537
  %var.load548 = load ptr, ptr %var.formatted543, align 8
  call void @"formatter::write_stdout"(ptr %var.load548)
  br label %choice.exit547

choice.else546:                                   ; preds = %choice.then537
  %var.load549 = load ptr, ptr %var.formatted543, align 8
  %var.load550 = load ptr, ptr %var.src530, align 8
  %eq.lhs.len551 = getelementptr inbounds { i64, ptr }, ptr %var.load549, i32 0, i32 0
  %eq.lhs.len552 = load i64, ptr %eq.lhs.len551, align 8
  %eq.lhs.len553 = and i64 %eq.lhs.len552, 281474976710655
  %str.tag554 = lshr i64 %eq.lhs.len552, 48
  %str.immortal555 = icmp eq i64 %str.tag554, 0
  br i1 %str.immortal555, label %str_ok557, label %str_gen_check556

choice.exit547:                                   ; preds = %choice.exit583, %choice.then545
  br label %choice.exit539

str_gen_check556:                                 ; preds = %choice.else546
  %arena.cur559 = call ptr @dva_arena_current()
  %tag.valid560 = call i1 @dva_arena_validate_tag(ptr %arena.cur559, i64 %str.tag554)
  br i1 %tag.valid560, label %str_ok557, label %str_stale558

str_ok557:                                        ; preds = %str_stale558, %str_gen_check556, %choice.else546
  %eq.rhs.len561 = getelementptr inbounds { i64, ptr }, ptr %var.load550, i32 0, i32 0
  %eq.rhs.len562 = load i64, ptr %eq.rhs.len561, align 8
  %eq.rhs.len563 = and i64 %eq.rhs.len562, 281474976710655
  %str.tag564 = lshr i64 %eq.rhs.len562, 48
  %str.immortal565 = icmp eq i64 %str.tag564, 0
  br i1 %str.immortal565, label %str_ok567, label %str_gen_check566

str_stale558:                                     ; preds = %str_gen_check556
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok557

str_gen_check566:                                 ; preds = %str_ok557
  %arena.cur569 = call ptr @dva_arena_current()
  %tag.valid570 = call i1 @dva_arena_validate_tag(ptr %arena.cur569, i64 %str.tag564)
  br i1 %tag.valid570, label %str_ok567, label %str_stale568

str_ok567:                                        ; preds = %str_stale568, %str_gen_check566, %str_ok557
  %eq.len571 = icmp eq i64 %eq.lhs.len553, %eq.rhs.len563
  br i1 %eq.len571, label %str.eq.then572, label %str.eq.else573

str_stale568:                                     ; preds = %str_gen_check566
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok567

str.eq.then572:                                   ; preds = %str_ok567
  %eq.lhs.data575 = getelementptr inbounds { i64, ptr }, ptr %var.load549, i32 0, i32 1
  %eq.lhs.data576 = load ptr, ptr %eq.lhs.data575, align 8
  %eq.rhs.data577 = getelementptr inbounds { i64, ptr }, ptr %var.load550, i32 0, i32 1
  %eq.rhs.data578 = load ptr, ptr %eq.rhs.data577, align 8
  %eq.memcmp579 = call i32 @memcmp(ptr %eq.lhs.data576, ptr %eq.rhs.data578, i64 %eq.lhs.len553)
  %eq.cmp.zero580 = icmp eq i32 %eq.memcmp579, 0
  br label %str.eq.merge574

str.eq.else573:                                   ; preds = %str_ok567
  br label %str.eq.merge574

str.eq.merge574:                                  ; preds = %str.eq.else573, %str.eq.then572
  %str.eq.result581 = phi i1 [ %eq.cmp.zero580, %str.eq.then572 ], [ false, %str.eq.else573 ]
  %str.neq = xor i1 %str.eq.result581, true
  br i1 %str.neq, label %choice.then582, label %choice.exit583

choice.then582:                                   ; preds = %str.eq.merge574
  %var.load584 = load i1, ptr %"var.check_only'", align 1
  br i1 %var.load584, label %choice.then585, label %choice.else586

choice.exit583:                                   ; preds = %choice.exit587, %str.eq.merge574
  br label %choice.exit547

choice.then585:                                   ; preds = %choice.then582
  %var.load588 = load ptr, ptr %var.f, align 8
  call void @"formatter::print_line"(ptr %var.load588)
  %var.load589 = load i64, ptr %"var.unformatted'", align 8
  %addtmp590 = add i64 %var.load589, 1
  store i64 %addtmp590, ptr %"var.unformatted'", align 8
  br label %choice.exit587

choice.else586:                                   ; preds = %choice.then582
  %var.load591 = load ptr, ptr %var.f, align 8
  %var.load592 = load ptr, ptr %var.formatted543, align 8
  %call.res593 = call i1 @"fs::write_file"(ptr %var.load591, ptr %var.load592)
  %nottmp594 = xor i1 %call.res593, true
  br i1 %nottmp594, label %choice.then595, label %choice.else596

choice.exit587:                                   ; preds = %choice.exit597, %choice.then585
  br label %choice.exit583

choice.then595:                                   ; preds = %choice.else586
  %var.load598 = load ptr, ptr %var.f, align 8
  %concat.lhs599 = load i64, ptr @str.79.struct, align 8
  %concat.lhs600 = and i64 %concat.lhs599, 281474976710655
  %str.tag601 = lshr i64 %concat.lhs599, 48
  %str.immortal602 = icmp eq i64 %str.tag601, 0
  br i1 %str.immortal602, label %str_ok604, label %str_gen_check603

choice.else596:                                   ; preds = %choice.else586
  %var.load679 = load ptr, ptr %var.f, align 8
  call void @"formatter::print_line"(ptr %var.load679)
  br label %choice.exit597

choice.exit597:                                   ; preds = %choice.else596, %concat.tot.len669
  br label %choice.exit587

str_gen_check603:                                 ; preds = %choice.then595
  %arena.cur606 = call ptr @dva_arena_current()
  %tag.valid607 = call i1 @dva_arena_validate_tag(ptr %arena.cur606, i64 %str.tag601)
  br i1 %tag.valid607, label %str_ok604, label %str_stale605

str_ok604:                                        ; preds = %str_stale605, %str_gen_check603, %choice.then595
  %concat.lhs608 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.79.struct, i32 0, i32 1), align 8
  %concat.rhs609 = getelementptr inbounds { i64, ptr }, ptr %var.load598, i32 0, i32 0
  %concat.rhs610 = load i64, ptr %concat.rhs609, align 8
  %concat.rhs611 = and i64 %concat.rhs610, 281474976710655
  %str.tag612 = lshr i64 %concat.rhs610, 48
  %str.immortal613 = icmp eq i64 %str.tag612, 0
  br i1 %str.immortal613, label %str_ok615, label %str_gen_check614

str_stale605:                                     ; preds = %str_gen_check603
  %34 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok604

str_gen_check614:                                 ; preds = %str_ok604
  %arena.cur617 = call ptr @dva_arena_current()
  %tag.valid618 = call i1 @dva_arena_validate_tag(ptr %arena.cur617, i64 %str.tag612)
  br i1 %tag.valid618, label %str_ok615, label %str_stale616

str_ok615:                                        ; preds = %str_stale616, %str_gen_check614, %str_ok604
  %concat.rhs619 = getelementptr inbounds { i64, ptr }, ptr %var.load598, i32 0, i32 1
  %concat.rhs620 = load ptr, ptr %concat.rhs619, align 8
  %concat.sum.len621 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs600, i64 %concat.rhs611)
  %sum622 = extractvalue { i64, i1 } %concat.sum.len621, 0
  %ovf623 = extractvalue { i64, i1 } %concat.sum.len621, 1
  br i1 %ovf623, label %str_overflow_abort625, label %concat.sum.len624

str_stale616:                                     ; preds = %str_gen_check614
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok615

concat.sum.len624:                                ; preds = %str_overflow_abort625, %str_ok615
  %concat.tot.len626 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum622, i64 1)
  %sum627 = extractvalue { i64, i1 } %concat.tot.len626, 0
  %ovf628 = extractvalue { i64, i1 } %concat.tot.len626, 1
  br i1 %ovf628, label %str_overflow_abort630, label %concat.tot.len629

str_overflow_abort625:                            ; preds = %str_ok615
  %36 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len624

concat.tot.len629:                                ; preds = %str_overflow_abort630, %concat.sum.len624
  %arena.cur631 = call ptr @dva_arena_current()
  %concat.buf632 = call ptr @dva_arena_alloc(ptr %arena.cur631, i64 %sum627)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf632, ptr align 1 %concat.lhs608, i64 %concat.lhs600, i1 false)
  %concat.mid633 = getelementptr i8, ptr %concat.buf632, i64 %concat.lhs600
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid633, ptr align 1 %concat.rhs620, i64 %concat.rhs611, i1 false)
  %concat.nul634 = getelementptr i8, ptr %concat.buf632, i64 %sum622
  store i8 0, ptr %concat.nul634, align 1
  %arena.cur635 = call ptr @dva_arena_current()
  %concat.str636 = call ptr @dva_arena_alloc(ptr %arena.cur635, i64 16)
  %str.build.len.gep637 = getelementptr inbounds { i64, ptr }, ptr %concat.str636, i32 0, i32 0
  store i64 %sum622, ptr %str.build.len.gep637, align 8
  %str.build.data.gep638 = getelementptr inbounds { i64, ptr }, ptr %concat.str636, i32 0, i32 1
  store ptr %concat.buf632, ptr %str.build.data.gep638, align 8
  %concat.lhs639 = getelementptr inbounds { i64, ptr }, ptr %concat.str636, i32 0, i32 0
  %concat.lhs640 = load i64, ptr %concat.lhs639, align 8
  %concat.lhs641 = and i64 %concat.lhs640, 281474976710655
  %str.tag642 = lshr i64 %concat.lhs640, 48
  %str.immortal643 = icmp eq i64 %str.tag642, 0
  br i1 %str.immortal643, label %str_ok645, label %str_gen_check644

str_overflow_abort630:                            ; preds = %concat.sum.len624
  %37 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len629

str_gen_check644:                                 ; preds = %concat.tot.len629
  %arena.cur647 = call ptr @dva_arena_current()
  %tag.valid648 = call i1 @dva_arena_validate_tag(ptr %arena.cur647, i64 %str.tag642)
  br i1 %tag.valid648, label %str_ok645, label %str_stale646

str_ok645:                                        ; preds = %str_stale646, %str_gen_check644, %concat.tot.len629
  %concat.lhs649 = getelementptr inbounds { i64, ptr }, ptr %concat.str636, i32 0, i32 1
  %concat.lhs650 = load ptr, ptr %concat.lhs649, align 8
  %concat.rhs651 = load i64, ptr @str.73.struct, align 8
  %concat.rhs652 = and i64 %concat.rhs651, 281474976710655
  %str.tag653 = lshr i64 %concat.rhs651, 48
  %str.immortal654 = icmp eq i64 %str.tag653, 0
  br i1 %str.immortal654, label %str_ok656, label %str_gen_check655

str_stale646:                                     ; preds = %str_gen_check644
  %38 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok645

str_gen_check655:                                 ; preds = %str_ok645
  %arena.cur658 = call ptr @dva_arena_current()
  %tag.valid659 = call i1 @dva_arena_validate_tag(ptr %arena.cur658, i64 %str.tag653)
  br i1 %tag.valid659, label %str_ok656, label %str_stale657

str_ok656:                                        ; preds = %str_stale657, %str_gen_check655, %str_ok645
  %concat.rhs660 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.73.struct, i32 0, i32 1), align 8
  %concat.sum.len661 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs641, i64 %concat.rhs652)
  %sum662 = extractvalue { i64, i1 } %concat.sum.len661, 0
  %ovf663 = extractvalue { i64, i1 } %concat.sum.len661, 1
  br i1 %ovf663, label %str_overflow_abort665, label %concat.sum.len664

str_stale657:                                     ; preds = %str_gen_check655
  %39 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok656

concat.sum.len664:                                ; preds = %str_overflow_abort665, %str_ok656
  %concat.tot.len666 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum662, i64 1)
  %sum667 = extractvalue { i64, i1 } %concat.tot.len666, 0
  %ovf668 = extractvalue { i64, i1 } %concat.tot.len666, 1
  br i1 %ovf668, label %str_overflow_abort670, label %concat.tot.len669

str_overflow_abort665:                            ; preds = %str_ok656
  %40 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len664

concat.tot.len669:                                ; preds = %str_overflow_abort670, %concat.sum.len664
  %arena.cur671 = call ptr @dva_arena_current()
  %concat.buf672 = call ptr @dva_arena_alloc(ptr %arena.cur671, i64 %sum667)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf672, ptr align 1 %concat.lhs650, i64 %concat.lhs641, i1 false)
  %concat.mid673 = getelementptr i8, ptr %concat.buf672, i64 %concat.lhs641
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid673, ptr align 1 %concat.rhs660, i64 %concat.rhs652, i1 false)
  %concat.nul674 = getelementptr i8, ptr %concat.buf672, i64 %sum662
  store i8 0, ptr %concat.nul674, align 1
  %arena.cur675 = call ptr @dva_arena_current()
  %concat.str676 = call ptr @dva_arena_alloc(ptr %arena.cur675, i64 16)
  %str.build.len.gep677 = getelementptr inbounds { i64, ptr }, ptr %concat.str676, i32 0, i32 0
  store i64 %sum662, ptr %str.build.len.gep677, align 8
  %str.build.data.gep678 = getelementptr inbounds { i64, ptr }, ptr %concat.str676, i32 0, i32 1
  store ptr %concat.buf672, ptr %str.build.data.gep678, align 8
  call void @"log::error"(ptr %concat.str676)
  store i1 true, ptr %"var.had_err'", align 1
  br label %choice.exit597

str_overflow_abort670:                            ; preds = %concat.sum.len664
  %41 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len669

str_gen_check690:                                 ; preds = %choice.else527
  %arena.cur693 = call ptr @dva_arena_current()
  %tag.valid694 = call i1 @dva_arena_validate_tag(ptr %arena.cur693, i64 %str.tag688)
  br i1 %tag.valid694, label %str_ok691, label %str_stale692

str_ok691:                                        ; preds = %str_stale692, %str_gen_check690, %choice.else527
  %concat.lhs695 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.80.struct, i32 0, i32 1), align 8
  %concat.rhs696 = getelementptr inbounds { i64, ptr }, ptr %var.load685, i32 0, i32 0
  %concat.rhs697 = load i64, ptr %concat.rhs696, align 8
  %concat.rhs698 = and i64 %concat.rhs697, 281474976710655
  %str.tag699 = lshr i64 %concat.rhs697, 48
  %str.immortal700 = icmp eq i64 %str.tag699, 0
  br i1 %str.immortal700, label %str_ok702, label %str_gen_check701

str_stale692:                                     ; preds = %str_gen_check690
  %42 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok691

str_gen_check701:                                 ; preds = %str_ok691
  %arena.cur704 = call ptr @dva_arena_current()
  %tag.valid705 = call i1 @dva_arena_validate_tag(ptr %arena.cur704, i64 %str.tag699)
  br i1 %tag.valid705, label %str_ok702, label %str_stale703

str_ok702:                                        ; preds = %str_stale703, %str_gen_check701, %str_ok691
  %concat.rhs706 = getelementptr inbounds { i64, ptr }, ptr %var.load685, i32 0, i32 1
  %concat.rhs707 = load ptr, ptr %concat.rhs706, align 8
  %concat.sum.len708 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs687, i64 %concat.rhs698)
  %sum709 = extractvalue { i64, i1 } %concat.sum.len708, 0
  %ovf710 = extractvalue { i64, i1 } %concat.sum.len708, 1
  br i1 %ovf710, label %str_overflow_abort712, label %concat.sum.len711

str_stale703:                                     ; preds = %str_gen_check701
  %43 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok702

concat.sum.len711:                                ; preds = %str_overflow_abort712, %str_ok702
  %concat.tot.len713 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum709, i64 1)
  %sum714 = extractvalue { i64, i1 } %concat.tot.len713, 0
  %ovf715 = extractvalue { i64, i1 } %concat.tot.len713, 1
  br i1 %ovf715, label %str_overflow_abort717, label %concat.tot.len716

str_overflow_abort712:                            ; preds = %str_ok702
  %44 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len711

concat.tot.len716:                                ; preds = %str_overflow_abort717, %concat.sum.len711
  %arena.cur718 = call ptr @dva_arena_current()
  %concat.buf719 = call ptr @dva_arena_alloc(ptr %arena.cur718, i64 %sum714)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf719, ptr align 1 %concat.lhs695, i64 %concat.lhs687, i1 false)
  %concat.mid720 = getelementptr i8, ptr %concat.buf719, i64 %concat.lhs687
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid720, ptr align 1 %concat.rhs707, i64 %concat.rhs698, i1 false)
  %concat.nul721 = getelementptr i8, ptr %concat.buf719, i64 %sum709
  store i8 0, ptr %concat.nul721, align 1
  %arena.cur722 = call ptr @dva_arena_current()
  %concat.str723 = call ptr @dva_arena_alloc(ptr %arena.cur722, i64 16)
  %str.build.len.gep724 = getelementptr inbounds { i64, ptr }, ptr %concat.str723, i32 0, i32 0
  store i64 %sum709, ptr %str.build.len.gep724, align 8
  %str.build.data.gep725 = getelementptr inbounds { i64, ptr }, ptr %concat.str723, i32 0, i32 1
  store ptr %concat.buf719, ptr %str.build.data.gep725, align 8
  %concat.lhs726 = getelementptr inbounds { i64, ptr }, ptr %concat.str723, i32 0, i32 0
  %concat.lhs727 = load i64, ptr %concat.lhs726, align 8
  %concat.lhs728 = and i64 %concat.lhs727, 281474976710655
  %str.tag729 = lshr i64 %concat.lhs727, 48
  %str.immortal730 = icmp eq i64 %str.tag729, 0
  br i1 %str.immortal730, label %str_ok732, label %str_gen_check731

str_overflow_abort717:                            ; preds = %concat.sum.len711
  %45 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len716

str_gen_check731:                                 ; preds = %concat.tot.len716
  %arena.cur734 = call ptr @dva_arena_current()
  %tag.valid735 = call i1 @dva_arena_validate_tag(ptr %arena.cur734, i64 %str.tag729)
  br i1 %tag.valid735, label %str_ok732, label %str_stale733

str_ok732:                                        ; preds = %str_stale733, %str_gen_check731, %concat.tot.len716
  %concat.lhs736 = getelementptr inbounds { i64, ptr }, ptr %concat.str723, i32 0, i32 1
  %concat.lhs737 = load ptr, ptr %concat.lhs736, align 8
  %concat.rhs738 = load i64, ptr @str.73.struct, align 8
  %concat.rhs739 = and i64 %concat.rhs738, 281474976710655
  %str.tag740 = lshr i64 %concat.rhs738, 48
  %str.immortal741 = icmp eq i64 %str.tag740, 0
  br i1 %str.immortal741, label %str_ok743, label %str_gen_check742

str_stale733:                                     ; preds = %str_gen_check731
  %46 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok732

str_gen_check742:                                 ; preds = %str_ok732
  %arena.cur745 = call ptr @dva_arena_current()
  %tag.valid746 = call i1 @dva_arena_validate_tag(ptr %arena.cur745, i64 %str.tag740)
  br i1 %tag.valid746, label %str_ok743, label %str_stale744

str_ok743:                                        ; preds = %str_stale744, %str_gen_check742, %str_ok732
  %concat.rhs747 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.73.struct, i32 0, i32 1), align 8
  %concat.sum.len748 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs728, i64 %concat.rhs739)
  %sum749 = extractvalue { i64, i1 } %concat.sum.len748, 0
  %ovf750 = extractvalue { i64, i1 } %concat.sum.len748, 1
  br i1 %ovf750, label %str_overflow_abort752, label %concat.sum.len751

str_stale744:                                     ; preds = %str_gen_check742
  %47 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok743

concat.sum.len751:                                ; preds = %str_overflow_abort752, %str_ok743
  %concat.tot.len753 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum749, i64 1)
  %sum754 = extractvalue { i64, i1 } %concat.tot.len753, 0
  %ovf755 = extractvalue { i64, i1 } %concat.tot.len753, 1
  br i1 %ovf755, label %str_overflow_abort757, label %concat.tot.len756

str_overflow_abort752:                            ; preds = %str_ok743
  %48 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len751

concat.tot.len756:                                ; preds = %str_overflow_abort757, %concat.sum.len751
  %arena.cur758 = call ptr @dva_arena_current()
  %concat.buf759 = call ptr @dva_arena_alloc(ptr %arena.cur758, i64 %sum754)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf759, ptr align 1 %concat.lhs737, i64 %concat.lhs728, i1 false)
  %concat.mid760 = getelementptr i8, ptr %concat.buf759, i64 %concat.lhs728
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid760, ptr align 1 %concat.rhs747, i64 %concat.rhs739, i1 false)
  %concat.nul761 = getelementptr i8, ptr %concat.buf759, i64 %sum749
  store i8 0, ptr %concat.nul761, align 1
  %arena.cur762 = call ptr @dva_arena_current()
  %concat.str763 = call ptr @dva_arena_alloc(ptr %arena.cur762, i64 16)
  %str.build.len.gep764 = getelementptr inbounds { i64, ptr }, ptr %concat.str763, i32 0, i32 0
  store i64 %sum749, ptr %str.build.len.gep764, align 8
  %str.build.data.gep765 = getelementptr inbounds { i64, ptr }, ptr %concat.str763, i32 0, i32 1
  store ptr %concat.buf759, ptr %str.build.data.gep765, align 8
  call void @"log::error"(ptr %concat.str763)
  store i1 true, ptr %"var.had_err'", align 1
  br label %choice.exit528

str_overflow_abort757:                            ; preds = %concat.sum.len751
  %49 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len756

or.588.then:                                      ; preds = %loop.exit.587
  br label %or.588.exit

or.588.else:                                      ; preds = %loop.exit.587
  %var.load769 = load i64, ptr %"var.unformatted'", align 8
  %cmptmp770 = icmp sgt i64 %var.load769, 0
  br label %or.588.exit

or.588.exit:                                      ; preds = %or.588.else, %or.588.then
  %or.588.phi = phi i1 [ %var.load768, %or.588.then ], [ %cmptmp770, %or.588.else ]
  br i1 %or.588.phi, label %choice.then771, label %choice.else772

choice.then771:                                   ; preds = %or.588.exit
  br label %choice.exit773

choice.else772:                                   ; preds = %or.588.exit
  br label %choice.exit773

choice.exit773:                                   ; preds = %choice.else772, %choice.then771
  %choice.res774 = phi i64 [ 1, %choice.then771 ], [ 0, %choice.else772 ]
  br label %choice.exit497
}

declare ptr @"sys::argv_string"(i64) #1

declare void @"log::error"(ptr) #1

declare i1 @"fs::exists"(ptr) #1

declare ptr @"fs::read_to_string"(ptr) #1

declare i1 @"fs::write_file"(ptr, ptr) #1

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
