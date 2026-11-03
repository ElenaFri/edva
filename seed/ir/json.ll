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
@"var.json::#src" = global ptr null
@"var.json::#pos" = global i64 0
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
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const = internal constant { ptr, ptr } { ptr @"json::#is_ws_at", ptr null }
@"var.json::#is_ws_at" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"json::#skip_ws", ptr null }
@"var.json::#skip_ws" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"json::#hexval", ptr null }
@"var.json::#hexval" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"json::#is_hex_at", ptr null }
@"var.json::#is_hex_at" = global ptr null
@str.0 = internal unnamed_addr constant [5 x i8] c"true\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.0 }
@str.1 = internal unnamed_addr constant [6 x i8] c"false\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.1 }
@clo.const.4 = internal constant { ptr, ptr } { ptr @"json::#bool_str", ptr null }
@"var.json::#bool_str" = global ptr null
@str.2 = internal unnamed_addr constant [30 x i8] c"json: invalid UTF-8 in string\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 29, ptr @str.2 }
@str.3 = internal unnamed_addr constant [13 x i8] c"std/json.dva\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 12, ptr @str.3 }
@str.4 = internal unnamed_addr constant [26 x i8] c"json: unterminated string\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.4 }
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@str.5 = internal unnamed_addr constant [24 x i8] c"json: bad low surrogate\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 23, ptr @str.5 }
@str.6 = internal unnamed_addr constant [28 x i8] c"json: missing low surrogate\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 27, ptr @str.6 }
@clo.const.5 = internal constant { ptr, ptr } { ptr @"json::#parse_surrogate_pair", ptr null }
@str.7 = internal unnamed_addr constant [29 x i8] c"json: unpaired low surrogate\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 28, ptr @str.7 }
@clo.const.6 = internal constant { ptr, ptr } { ptr @"json::#parse_unicode_cp", ptr null }
@str.8 = internal unnamed_addr constant [20 x i8] c"json: bad \\u escape\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 19, ptr @str.8 }
@clo.const.7 = internal constant { ptr, ptr } { ptr @"json::#parse_unicode", ptr null }
@str.9 = internal unnamed_addr constant [17 x i8] c"json: bad escape\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 16, ptr @str.9 }
@clo.const.8 = internal constant { ptr, ptr } { ptr @"json::#parse_escape", ptr null }
@str.10 = internal unnamed_addr constant [34 x i8] c"json: control character in string\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 33, ptr @str.10 }
@clo.const.9 = internal constant { ptr, ptr } { ptr @"json::#scan_string", ptr null }
@clo.const.10 = internal constant { ptr, ptr } { ptr @"json::#scan_utf8_char", ptr null }
@"var.json::#scan_utf8_char" = global ptr null
@"var.json::#scan_string" = global ptr null
@"var.json::#parse_escape" = global ptr null
@"var.json::#parse_unicode" = global ptr null
@"var.json::#parse_unicode_cp" = global ptr null
@"var.json::#parse_surrogate_pair" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"json::#is_digit_at", ptr null }
@"var.json::#is_digit_at" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"json::#parse_string", ptr null }
@"var.json::#parse_string" = global ptr null
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@str.11 = internal unnamed_addr constant [31 x i8] c"json: trailing comma in object\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 30, ptr @str.11 }
@str.12 = internal unnamed_addr constant [36 x i8] c"json: expected ',' or '}' in object\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 35, ptr @str.12 }
@clo.const.13 = internal constant { ptr, ptr } { ptr @"json::#parse_object_after_val", ptr null }
@str.13 = internal unnamed_addr constant [36 x i8] c"json: expected ':' after object key\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 35, ptr @str.13 }
@str.14 = internal unnamed_addr constant [33 x i8] c"json: object key is not a string\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 32, ptr @str.14 }
@clo.const.14 = internal constant { ptr, ptr } { ptr @"json::#parse_object_after_key", ptr null }
@str.15 = internal unnamed_addr constant [36 x i8] c"json: expected string key in object\00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 35, ptr @str.15 }
@clo.const.15 = internal constant { ptr, ptr } { ptr @"json::#parse_object_loop", ptr null }
@clo.const.16 = internal constant { ptr, ptr } { ptr @"json::#parse_object", ptr null }
@str.16 = internal unnamed_addr constant [18 x i8] c"json: bad literal\00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 17, ptr @str.16 }
@clo.const.17 = internal constant { ptr, ptr } { ptr @"json::#parse_lit", ptr null }
@str.17 = internal unnamed_addr constant [5 x i8] c"null\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.17 }
@str.18 = internal unnamed_addr constant [23 x i8] c"json: bad null literal\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 22, ptr @str.18 }
@clo.const.18 = internal constant { ptr, ptr } { ptr @"json::#parse_null", ptr null }
@str.19 = internal unnamed_addr constant [31 x i8] c"json: leading zero not allowed\00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 30, ptr @str.19 }
@str.20 = internal unnamed_addr constant [23 x i8] c"json: malformed number\00"
@str.20.struct = internal unnamed_addr constant { i64, ptr } { i64 22, ptr @str.20 }
@str.21 = internal unnamed_addr constant [24 x i8] c"json: expected a number\00"
@str.21.struct = internal unnamed_addr constant { i64, ptr } { i64 23, ptr @str.21 }
@clo.const.19 = internal constant { ptr, ptr } { ptr @"json::#parse_number", ptr null }
@clo.const.20 = internal constant { ptr, ptr } { ptr @"json::#parse_value", ptr null }
@str.22 = internal unnamed_addr constant [30 x i8] c"json: trailing comma in array\00"
@str.22.struct = internal unnamed_addr constant { i64, ptr } { i64 29, ptr @str.22 }
@str.23 = internal unnamed_addr constant [35 x i8] c"json: expected ',' or ']' in array\00"
@str.23.struct = internal unnamed_addr constant { i64, ptr } { i64 34, ptr @str.23 }
@clo.const.21 = internal constant { ptr, ptr } { ptr @"json::#parse_array_after_value", ptr null }
@clo.const.22 = internal constant { ptr, ptr } { ptr @"json::#parse_array_loop", ptr null }
@clo.const.23 = internal constant { ptr, ptr } { ptr @"json::#parse_array", ptr null }
@"var.json::#parse_array" = global ptr null
@"var.json::#parse_array_loop" = global ptr null
@"var.json::#parse_array_after_value" = global ptr null
@"var.json::#parse_object" = global ptr null
@"var.json::#parse_object_loop" = global ptr null
@"var.json::#parse_object_after_key" = global ptr null
@"var.json::#parse_object_after_val" = global ptr null
@"var.json::#parse_lit" = global ptr null
@"var.json::#parse_null" = global ptr null
@"var.json::#parse_number" = global ptr null
@str.24 = internal unnamed_addr constant [38 x i8] c"json: trailing characters after value\00"
@str.24.struct = internal unnamed_addr constant { i64, ptr } { i64 37, ptr @str.24 }
@clo.const.24 = internal constant { ptr, ptr } { ptr @"json::#parse_finish", ptr null }
@clo.const.25 = internal constant { ptr, ptr } { ptr @"json::parse", ptr null }
@"var.json::parse" = global ptr null
@"var.json::#parse_finish" = global ptr null
@"var.json::#parse_value" = global ptr null
@str.25 = internal unnamed_addr constant [7 x i8] c"json: \00"
@str.25.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.25 }
@clo.const.26 = internal constant { ptr, ptr } { ptr @"json::#json_type_err", ptr null }
@"var.json::#json_type_err" = global ptr null
@clo.const.27 = internal constant { ptr, ptr } { ptr @"json::#hex_digit", ptr null }
@"var.json::#hex_digit" = global ptr null
@str.26 = internal unnamed_addr constant [3 x i8] c"\\\22\00"
@str.26.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.26 }
@str.27 = internal unnamed_addr constant [3 x i8] c"\\\\\00"
@str.27.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.27 }
@str.28 = internal unnamed_addr constant [3 x i8] c"\\b\00"
@str.28.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.28 }
@str.29 = internal unnamed_addr constant [3 x i8] c"\\f\00"
@str.29.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.29 }
@str.30 = internal unnamed_addr constant [3 x i8] c"\\n\00"
@str.30.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.30 }
@str.31 = internal unnamed_addr constant [3 x i8] c"\\r\00"
@str.31.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.31 }
@str.32 = internal unnamed_addr constant [3 x i8] c"\\t\00"
@str.32.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.32 }
@str.33 = internal unnamed_addr constant [5 x i8] c"\\u00\00"
@str.33.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.33 }
@clo.const.28 = internal constant { ptr, ptr } { ptr @"json::escape_string_into", ptr null }
@"var.json::escape_string_into" = global ptr null
@clo.const.29 = internal constant { ptr, ptr } { ptr @"json::escape_string", ptr null }
@"var.json::escape_string" = global ptr null
@str.34 = internal unnamed_addr constant [4 x i8] c"nan\00"
@str.34.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.34 }
@str.35 = internal unnamed_addr constant [4 x i8] c"inf\00"
@str.35.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.35 }
@str.36 = internal unnamed_addr constant [5 x i8] c"-inf\00"
@str.36.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.36 }
@clo.const.30 = internal constant { ptr, ptr } { ptr @"json::format_number", ptr null }
@"var.json::format_number" = global ptr null
@clo.const.31 = internal constant { ptr, ptr } { ptr @"json::#stringify_into", ptr null }
@"var.json::#stringify_into" = global ptr null
@clo.const.32 = internal constant { ptr, ptr } { ptr @"json::#append_indent", ptr null }
@"var.json::#append_indent" = global ptr null
@str.37 = internal unnamed_addr constant [3 x i8] c"[]\00"
@str.37.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.37 }
@str.38 = internal unnamed_addr constant [3 x i8] c"[\0A\00"
@str.38.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.38 }
@str.39 = internal unnamed_addr constant [3 x i8] c",\0A\00"
@str.39.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.39 }
@str.40 = internal unnamed_addr constant [3 x i8] c"{}\00"
@str.40.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.40 }
@str.41 = internal unnamed_addr constant [3 x i8] c"{\0A\00"
@str.41.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.41 }
@str.42 = internal unnamed_addr constant [3 x i8] c": \00"
@str.42.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.42 }
@clo.const.33 = internal constant { ptr, ptr } { ptr @"json::#stringify_pretty_into", ptr null }
@"var.json::#stringify_pretty_into" = global ptr null
@clo.const.34 = internal constant { ptr, ptr } { ptr @"json::stringify", ptr null }
@"var.json::stringify" = global ptr null
@clo.const.35 = internal constant { ptr, ptr } { ptr @"json::stringify_pretty", ptr null }
@"var.json::stringify_pretty" = global ptr null
@clo.const.36 = internal constant { ptr, ptr } { ptr @"json::get", ptr null }
@"var.json::get" = global ptr null
@clo.const.37 = internal constant { ptr, ptr } { ptr @"json::has", ptr null }
@"var.json::has" = global ptr null
@clo.const.38 = internal constant { ptr, ptr } { ptr @"json::get_str", ptr null }
@"var.json::get_str" = global ptr null
@clo.const.39 = internal constant { ptr, ptr } { ptr @"json::get_int", ptr null }
@"var.json::get_int" = global ptr null
@clo.const.40 = internal constant { ptr, ptr } { ptr @"json::get_float", ptr null }
@"var.json::get_float" = global ptr null
@clo.const.41 = internal constant { ptr, ptr } { ptr @"json::get_bool", ptr null }
@"var.json::get_bool" = global ptr null
@clo.const.42 = internal constant { ptr, ptr } { ptr @"json::is_array", ptr null }
@"var.json::is_array" = global ptr null
@clo.const.43 = internal constant { ptr, ptr } { ptr @"json::array_len", ptr null }
@"var.json::array_len" = global ptr null
@clo.const.44 = internal constant { ptr, ptr } { ptr @"json::array_at", ptr null }
@"var.json::array_at" = global ptr null
@clo.const.45 = internal constant { ptr, ptr } { ptr @"json::is_object", ptr null }
@"var.json::is_object" = global ptr null
@clo.const.46 = internal constant { ptr, ptr } { ptr @"json::object_len", ptr null }
@"var.json::object_len" = global ptr null
@str.43 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.43.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.43 }
@clo.const.47 = internal constant { ptr, ptr } { ptr @"json::object_key_at", ptr null }
@"var.json::object_key_at" = global ptr null
@clo.const.48 = internal constant { ptr, ptr } { ptr @"json::object_val_at", ptr null }
@"var.json::object_val_at" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_json, ptr null }]

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

define internal void @__dva_global_init_json() #1 {
entry:
  store ptr @clo.const, ptr @"var.json::#is_ws_at", align 8
  store ptr @clo.const.1, ptr @"var.json::#skip_ws", align 8
  store ptr @clo.const.2, ptr @"var.json::#hexval", align 8
  store ptr @clo.const.3, ptr @"var.json::#is_hex_at", align 8
  store ptr @clo.const.4, ptr @"var.json::#bool_str", align 8
  store ptr @clo.const.10, ptr @"var.json::#scan_utf8_char", align 8
  store ptr @clo.const.9, ptr @"var.json::#scan_string", align 8
  store ptr @clo.const.8, ptr @"var.json::#parse_escape", align 8
  store ptr @clo.const.7, ptr @"var.json::#parse_unicode", align 8
  store ptr @clo.const.6, ptr @"var.json::#parse_unicode_cp", align 8
  store ptr @clo.const.5, ptr @"var.json::#parse_surrogate_pair", align 8
  store ptr @clo.const.11, ptr @"var.json::#is_digit_at", align 8
  store ptr @clo.const.12, ptr @"var.json::#parse_string", align 8
  store ptr @clo.const.23, ptr @"var.json::#parse_array", align 8
  store ptr @clo.const.22, ptr @"var.json::#parse_array_loop", align 8
  store ptr @clo.const.21, ptr @"var.json::#parse_array_after_value", align 8
  store ptr @clo.const.16, ptr @"var.json::#parse_object", align 8
  store ptr @clo.const.15, ptr @"var.json::#parse_object_loop", align 8
  store ptr @clo.const.14, ptr @"var.json::#parse_object_after_key", align 8
  store ptr @clo.const.13, ptr @"var.json::#parse_object_after_val", align 8
  store ptr @clo.const.17, ptr @"var.json::#parse_lit", align 8
  store ptr @clo.const.18, ptr @"var.json::#parse_null", align 8
  store ptr @clo.const.19, ptr @"var.json::#parse_number", align 8
  store ptr @clo.const.25, ptr @"var.json::parse", align 8
  store ptr @clo.const.24, ptr @"var.json::#parse_finish", align 8
  store ptr @clo.const.20, ptr @"var.json::#parse_value", align 8
  store ptr @clo.const.26, ptr @"var.json::#json_type_err", align 8
  store ptr @clo.const.27, ptr @"var.json::#hex_digit", align 8
  store ptr @clo.const.28, ptr @"var.json::escape_string_into", align 8
  store ptr @clo.const.29, ptr @"var.json::escape_string", align 8
  store ptr @clo.const.30, ptr @"var.json::format_number", align 8
  store ptr @clo.const.31, ptr @"var.json::#stringify_into", align 8
  store ptr @clo.const.32, ptr @"var.json::#append_indent", align 8
  store ptr @clo.const.33, ptr @"var.json::#stringify_pretty_into", align 8
  store ptr @clo.const.34, ptr @"var.json::stringify", align 8
  store ptr @clo.const.35, ptr @"var.json::stringify_pretty", align 8
  store ptr @clo.const.36, ptr @"var.json::get", align 8
  store ptr @clo.const.37, ptr @"var.json::has", align 8
  store ptr @clo.const.38, ptr @"var.json::get_str", align 8
  store ptr @clo.const.39, ptr @"var.json::get_int", align 8
  store ptr @clo.const.40, ptr @"var.json::get_float", align 8
  store ptr @clo.const.41, ptr @"var.json::get_bool", align 8
  store ptr @clo.const.42, ptr @"var.json::is_array", align 8
  store ptr @clo.const.43, ptr @"var.json::array_len", align 8
  store ptr @clo.const.44, ptr @"var.json::array_at", align 8
  store ptr @clo.const.45, ptr @"var.json::is_object", align 8
  store ptr @clo.const.46, ptr @"var.json::object_len", align 8
  store ptr @clo.const.47, ptr @"var.json::object_key_at", align 8
  store ptr @clo.const.48, ptr @"var.json::object_val_at", align 8
  ret void
}

define internal i1 @"json::#is_ws_at"(i64 %0) #1 {
entry:
  %var.p = alloca i64, align 8
  store i64 %0, ptr %var.p, align 8
  %var.load = load i64, ptr %var.p, align 8
  %var.load1 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %and.70.then, label %and.70.else

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.70.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

and.70.else:                                      ; preds = %str_ok
  br label %and.70.exit

and.70.exit:                                      ; preds = %and.70.else, %idx_ok
  %and.70.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp, %and.70.else ]
  ret i1 %and.70.phi

str_gen_check9:                                   ; preds = %and.70.then
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %and.70.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  %var.load15 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load15, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale11:                                      ; preds = %str_gen_check9
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

idx_big_check:                                    ; preds = %str_ok10
  %idx.big = icmp sge i64 %var.load15, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data14, i64 %var.load15
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  br label %and.70.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok
}

declare i64 @write(i32, ptr, i64)

declare void @exit(i32)

declare i1 @"str::is_ws"(i64) #1

define internal i64 @"json::#skip_ws"(i64 %0) #1 {
entry:
  %var.p = alloca i64, align 8
  store i64 %0, ptr %var.p, align 8
  %var.load = load i64, ptr %var.p, align 8
  %call.res = call i1 @"json::#is_ws_at"(i64 %var.load)
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load1, 1
  %call.res2 = call i64 @"json::#skip_ws"(i64 %addtmp)
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load3 = load i64, ptr %var.p, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %call.res2, %choice.then ], [ %var.load3, %choice.else ]
  ret i64 %choice.res
}

define internal i64 @"json::#hexval"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  %var.h = alloca i64, align 8
  store i64 %0, ptr %var.h, align 8
  %var.load = load i64, ptr %var.h, align 8
  %call.res = call { i1, i64 } @"ascii::hex_value"(i64 %var.load)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %ram.pay, %choice.then ], [ -1, %choice.else ]
  ret i64 %choice.res
}

declare { i1, i64 } @"ascii::hex_value"(i64) #1

define internal i1 @"json::#is_hex_at"(i64 %0) #1 {
entry:
  %var.p = alloca i64, align 8
  store i64 %0, ptr %var.p, align 8
  %var.load = load i64, ptr %var.p, align 8
  %var.load1 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %and.71.then, label %and.71.else

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.71.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

and.71.else:                                      ; preds = %str_ok
  br label %and.71.exit

and.71.exit:                                      ; preds = %and.71.else, %idx_ok
  %and.71.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp, %and.71.else ]
  ret i1 %and.71.phi

str_gen_check9:                                   ; preds = %and.71.then
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %and.71.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  %var.load15 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load15, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale11:                                      ; preds = %str_gen_check9
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

idx_big_check:                                    ; preds = %str_ok10
  %idx.big = icmp sge i64 %var.load15, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data14, i64 %var.load15
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"ascii::is_hex"(i64 %s.byte.val)
  br label %and.71.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok
}

declare i1 @"ascii::is_hex"(i64) #1

define internal ptr @"json::#bool_str"(i1 %0) #1 {
entry:
  %var.b = alloca i1, align 1
  store i1 %0, ptr %var.b, align 1
  %var.load = load i1, ptr %var.b, align 1
  br i1 %var.load, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.0.struct, %choice.then ], [ @str.1.struct, %choice.else ]
  ret ptr %choice.res
}

define internal { i1, i64 } @"json::#scan_utf8_char"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.dec = alloca ptr, align 8
  %var._c0 = alloca i64, align 8
  %var.k = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i64 %1, ptr %var.k, align 8
  store i64 %2, ptr %var._c0, align 8
  %var.load = load ptr, ptr @"var.json::#src", align 8
  %var.load1 = load i64, ptr %var.k, align 8
  %call.res = call ptr @"utf::decode_str_at"(ptr %var.load, i64 %var.load1)
  store ptr %call.res, ptr %var.dec, align 8
  %var.load2 = load ptr, ptr %var.dec, align 8
  %fld.gep = getelementptr inbounds { i64, i64 }, ptr %var.load2, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp slt i64 %fld.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load3 = load i64, ptr %var.k, align 8
  %arena.cur4 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load3, ptr %rec.fld, align 8
  %rec.fld5 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld5, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %b.load = load ptr, ptr %var.b, align 8
  %var.load6 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %str.tag = lshr i64 %s.read.len7, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %b.grow_done, %choice.then
  %choice.res = phi { i1, i64 } [ %ram.pay, %choice.then ], [ %call.res44, %b.grow_done ]
  ret { i1, i64 } %choice.res

str_gen_check:                                    ; preds = %choice.else
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %s.read.data10 = load ptr, ptr %s.read.data, align 8
  %var.load11 = load i64, ptr %var.k, align 8
  %var.load12 = load i64, ptr %var.k, align 8
  %var.load13 = load ptr, ptr %var.dec, align 8
  %fld.gep14 = getelementptr inbounds { i64, i64 }, ptr %var.load13, i32 0, i32 1
  %fld.load15 = load i64, ptr %fld.gep14, align 8
  %addtmp = add i64 %var.load12, %fld.load15
  %start.is_neg = icmp slt i64 %var.load11, 0
  %rel.start = add i64 %s.read.len8, %var.load11
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load11
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len8
  %final.start = select i1 %start.gt.len, i64 %s.read.len8, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp, 0
  %rel.end = add i64 %s.read.len8, %addtmp
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len8
  %final.end = select i1 %end.gt.len, i64 %s.read.len8, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data10, i64 %final.start
  %arena.cur16 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %app.str.len17 = load i64, ptr %app.str.len, align 8
  %app.str.len18 = and i64 %app.str.len17, 281474976710655
  %str.tag19 = lshr i64 %app.str.len17, 48
  %str.immortal20 = icmp eq i64 %str.tag19, 0
  br i1 %str.immortal20, label %str_ok22, label %str_gen_check21

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check21:                                  ; preds = %str_ok
  %arena.cur24 = call ptr @dva_arena_current()
  %tag.valid25 = call i1 @dva_arena_validate_tag(ptr %arena.cur24, i64 %str.tag19)
  br i1 %tag.valid25, label %str_ok22, label %str_stale23

str_ok22:                                         ; preds = %str_stale23, %str_gen_check21, %str_ok
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len26 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len26, i64 %app.str.len18)
  %sum = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.app.new.len27

str_stale23:                                      ; preds = %str_gen_check21
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok22

b.app.new.len27:                                  ; preds = %str_overflow_abort, %str_ok22
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap28 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap28, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %str_ok22
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len27

b.grow2:                                          ; preds = %b.app.new.len27
  %b.cap2 = mul i64 %b.cap28, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len229 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data230 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum31 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf32 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf32, label %str_overflow_abort34, label %b.new.buf.len233

b.nogrow2:                                        ; preds = %b.app.new.len27
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len233
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %app.str.data36 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data37 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data37, i64 %b.app.cur.len26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data36, i64 %app.str.len18, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data37, i64 %sum
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  %var.load38 = load ptr, ptr %var.b, align 8
  %var.load39 = load i64, ptr %var.k, align 8
  %var.load40 = load ptr, ptr %var.dec, align 8
  %fld.gep41 = getelementptr inbounds { i64, i64 }, ptr %var.load40, i32 0, i32 1
  %fld.load42 = load i64, ptr %fld.gep41, align 8
  %addtmp43 = add i64 %var.load39, %fld.load42
  %call.res44 = call { i1, i64 } @"json::#scan_string"(ptr %var.load38, i64 %addtmp43)
  br label %choice.exit

b.new.buf.len233:                                 ; preds = %str_overflow_abort34, %b.grow2
  %arena.cur35 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 %sum31)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data230, i64 %b.cur.len229, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len229
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort34:                             ; preds = %b.grow2
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len233
}

declare ptr @"utf::decode_str_at"(ptr, i64) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define internal { i1, i64 } @"json::#scan_string"(ptr %0, i64 %1) #1 {
entry:
  %var.c = alloca i64, align 8
  %var.k = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i64 %1, ptr %var.k, align 8
  %var.load = load i64, ptr %var.k, align 8
  %var.load1 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp sge i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %arena.cur4 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load5 = load i64, ptr %var.k, align 8
  %arena.cur6 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load5, ptr %rec.fld, align 8
  %rec.fld7 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld7, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %str_ok
  %var.load8 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 0
  %s.read.len9 = load i64, ptr %s.read.len, align 8
  %s.read.len10 = and i64 %s.read.len9, 281474976710655
  %str.tag11 = lshr i64 %s.read.len9, 48
  %str.immortal12 = icmp eq i64 %str.tag11, 0
  br i1 %str.immortal12, label %str_ok14, label %str_gen_check13

str_gen_check13:                                  ; preds = %choice.exit
  %arena.cur16 = call ptr @dva_arena_current()
  %tag.valid17 = call i1 @dva_arena_validate_tag(ptr %arena.cur16, i64 %str.tag11)
  br i1 %tag.valid17, label %str_ok14, label %str_stale15

str_ok14:                                         ; preds = %str_stale15, %str_gen_check13, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 1
  %s.read.data18 = load ptr, ptr %s.read.data, align 8
  %var.load19 = load i64, ptr %var.k, align 8
  %idx.neg = icmp slt i64 %var.load19, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale15:                                      ; preds = %str_gen_check13
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok14

idx_big_check:                                    ; preds = %str_ok14
  %idx.big = icmp sge i64 %var.load19, %s.read.len10
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data18, i64 %var.load19
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load20 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load20, 34
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %str_ok14
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.exit21:                                    ; preds = %choice.next54, %b.push_done, %choice.case29, %choice.case24, %choice.case
  %choice.res = phi { i1, i64 } [ %ram.pay23, %choice.case ], [ %call.res, %choice.case24 ], [ %ram.pay52, %choice.case29 ], [ %call.res66, %b.push_done ], [ %call.res70, %choice.next54 ]
  ret { i1, i64 } %choice.res

choice.case:                                      ; preds = %idx_ok
  %var.load22 = load i64, ptr %var.k, align 8
  %ram.pay23 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load22, 1
  br label %choice.exit21

choice.next:                                      ; preds = %idx_ok
  %val.match26 = icmp eq i64 %var.load20, 92
  br i1 %val.match26, label %choice.case24, label %choice.next25

choice.case24:                                    ; preds = %choice.next
  %var.load27 = load ptr, ptr %var.b, align 8
  %var.load28 = load i64, ptr %var.k, align 8
  %call.res = call { i1, i64 } @"json::#parse_escape"(ptr %var.load27, i64 %var.load28)
  br label %choice.exit21

choice.next25:                                    ; preds = %choice.next
  %cmptmp31 = icmp slt i64 %var.load20, 32
  br i1 %cmptmp31, label %choice.case29, label %choice.next30

choice.case29:                                    ; preds = %choice.next25
  %arena.cur32 = call ptr @dva_arena_current()
  %err.alloc33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 56)
  %err.code.gep34 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 0
  store i64 400, ptr %err.code.gep34, align 8
  %err.msg.gep35 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep35, align 8
  %err.file.gep36 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep36, align 8
  %err.line.gep37 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 3
  store i64 0, ptr %err.line.gep37, align 8
  %err.col.gep38 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 4
  store i64 0, ptr %err.col.gep38, align 8
  %err.ctx.gep39 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 5
  %var.load40 = load i64, ptr %var.k, align 8
  %arena.cur41 = call ptr @dva_arena_current()
  %rec.alloc42 = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld43 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc42, i32 0, i32 0
  store i64 %var.load40, ptr %rec.fld43, align 8
  %rec.fld44 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc42, i32 0, i32 1
  store i64 0, ptr %rec.fld44, align 8
  %ctx.0.gep45 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc42, i32 0, i32 0
  %ctx.046 = load i64, ptr %ctx.0.gep45, align 8
  %ctx.1.gep47 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc42, i32 0, i32 1
  %ctx.148 = load i64, ptr %ctx.1.gep47, align 8
  %err.ctx0.gep49 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep39, i32 0, i32 0
  store i64 %ctx.046, ptr %err.ctx0.gep49, align 8
  %err.ctx1.gep50 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep39, i32 0, i32 1
  store i64 %ctx.148, ptr %err.ctx1.gep50, align 8
  %p.to.i6451 = ptrtoint ptr %err.alloc33 to i64
  %ram.pay52 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6451, 1
  br label %choice.exit21

choice.next30:                                    ; preds = %choice.next25
  %cmptmp55 = icmp slt i64 %var.load20, 128
  br i1 %cmptmp55, label %choice.case53, label %choice.next54

choice.case53:                                    ; preds = %choice.next30
  %b.load = load ptr, ptr %var.b, align 8
  %var.load56 = load i64, ptr %var.c, align 8
  %b.b.ge0 = icmp sge i64 %var.load56, 0
  %b.b.le255 = icmp sle i64 %var.load56, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.next54:                                    ; preds = %choice.next30
  %var.load67 = load ptr, ptr %var.b, align 8
  %var.load68 = load i64, ptr %var.k, align 8
  %var.load69 = load i64, ptr %var.c, align 8
  %call.res70 = call { i1, i64 } @"json::#scan_utf8_char"(ptr %var.load67, i64 %var.load68, i64 %var.load69)
  br label %choice.exit21

b.byte_ok:                                        ; preds = %b.byte_err, %choice.case53
  %b.byte.i8 = trunc i64 %var.load56 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len57 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap58 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data59 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len57, %b.cap58
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.case53
  %5 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap58, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.new.buf.len60

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len60
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data62 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len63 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data62, i64 %b.cur.len63
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len63, 1
  %b.nul = getelementptr i8, ptr %b.cur.data62, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep, align 8
  %var.load64 = load ptr, ptr %var.b, align 8
  %var.load65 = load i64, ptr %var.k, align 8
  %addtmp = add i64 %var.load65, 1
  %call.res66 = call { i1, i64 } @"json::#scan_string"(ptr %var.load64, i64 %addtmp)
  br label %choice.exit21

b.new.buf.len60:                                  ; preds = %str_overflow_abort, %b.grow
  %arena.cur61 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data59, i64 %b.len57, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len57
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort:                               ; preds = %b.grow
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len60
}

define internal { i1, i64 } @"json::#parse_escape"(ptr %0, i64 %1) #1 {
entry:
  %var.e = alloca i64, align 8
  %var.k = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i64 %1, ptr %var.k, align 8
  %var.load = load i64, ptr %var.k, align 8
  %addtmp = add i64 %var.load, 1
  %var.load1 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.e, align 8
  %var.load17 = load i64, ptr %var.e, align 8
  %val.match = icmp eq i64 %var.load17, 34
  br i1 %val.match, label %choice.case19, label %choice.next20

choice.case:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %choice.case, label %choice.next

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check9:                                   ; preds = %choice.case
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %choice.case
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  %var.load15 = load i64, ptr %var.k, align 8
  %addtmp16 = add i64 %var.load15, 1
  %idx.neg = icmp slt i64 %addtmp16, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale11:                                      ; preds = %str_gen_check9
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

idx_big_check:                                    ; preds = %str_ok10
  %idx.big = icmp sge i64 %addtmp16, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data14, i64 %addtmp16
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.exit18:                                    ; preds = %choice.next326, %choice.case325, %b.push_done299, %b.push_done257, %b.push_done216, %b.push_done175, %b.push_done, %br.done.74, %br.done.73, %br.done.72
  %choice.res335 = phi { i1, i64 } [ %call.res, %br.done.72 ], [ %call.res85, %br.done.73 ], [ %call.res136, %br.done.74 ], [ %call.res159, %b.push_done ], [ %call.res200, %b.push_done175 ], [ %call.res241, %b.push_done216 ], [ %call.res283, %b.push_done257 ], [ %call.res324, %b.push_done299 ], [ %call.res330, %choice.case325 ], [ %ram.pay, %choice.next326 ]
  ret { i1, i64 } %choice.res335

choice.case19:                                    ; preds = %choice.exit
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len21 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len21, i64 1)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len22

choice.next20:                                    ; preds = %choice.exit
  %val.match37 = icmp eq i64 %var.load17, 92
  br i1 %val.match37, label %choice.case35, label %choice.next36

b.rn.new.len22:                                   ; preds = %str_overflow_abort, %choice.case19
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap23 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap23, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %choice.case19
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len22

b.grow2:                                          ; preds = %b.rn.new.len22
  %b.cap2 = mul i64 %b.cap23, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len224 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data225 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum26 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf27 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf27, label %str_overflow_abort29, label %b.new.buf.len228

b.nogrow2:                                        ; preds = %b.rn.new.len22
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len228
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data31 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data31, i64 %b.rn.cur.len21
  br i1 true, label %br.b1.72, label %br.c2.72

b.new.buf.len228:                                 ; preds = %str_overflow_abort29, %b.grow2
  %arena.cur30 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 %sum26)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data225, i64 %b.cur.len224, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len224
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort29:                             ; preds = %b.grow2
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len228

br.b1.72:                                         ; preds = %b.grow_done
  store i8 34, ptr %b.rn.dst, align 1
  br label %br.done.72

br.c2.72:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.72, label %br.c3.72

br.b2.72:                                         ; preds = %br.c2.72
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -94, ptr %br.dst1, align 1
  br label %br.done.72

br.c3.72:                                         ; preds = %br.c2.72
  br i1 true, label %br.b3.72, label %br.b4.72

br.b3.72:                                         ; preds = %br.c3.72
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -94, ptr %br.dst2.3, align 1
  br label %br.done.72

br.b4.72:                                         ; preds = %br.c3.72
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -94, ptr %br.dst3.4, align 1
  br label %br.done.72

br.done.72:                                       ; preds = %br.b4.72, %br.b3.72, %br.b2.72, %br.b1.72
  %br.nul = getelementptr i8, ptr %b.rn.data31, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  %var.load32 = load ptr, ptr %var.b, align 8
  %var.load33 = load i64, ptr %var.k, align 8
  %addtmp34 = add i64 %var.load33, 2
  %call.res = call { i1, i64 } @"json::#scan_string"(ptr %var.load32, i64 %addtmp34)
  br label %choice.exit18

choice.case35:                                    ; preds = %choice.next20
  %b.load38 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len39 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load38, i32 0, i32 0
  %b.rn.cur.len40 = load i64, ptr %b.rn.cur.len39, align 8
  %b.rn.new.len41 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len40, i64 1)
  %sum42 = extractvalue { i64, i1 } %b.rn.new.len41, 0
  %ovf43 = extractvalue { i64, i1 } %b.rn.new.len41, 1
  br i1 %ovf43, label %str_overflow_abort45, label %b.rn.new.len44

choice.next36:                                    ; preds = %choice.next20
  %val.match88 = icmp eq i64 %var.load17, 47
  br i1 %val.match88, label %choice.case86, label %choice.next87

b.rn.new.len44:                                   ; preds = %str_overflow_abort45, %choice.case35
  %b.cap46 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load38, i32 0, i32 2
  %b.cap47 = load i64, ptr %b.cap46, align 8
  %b.need.grow48 = icmp slt i64 %b.cap47, %sum42
  br i1 %b.need.grow48, label %b.grow249, label %b.nogrow250

str_overflow_abort45:                             ; preds = %choice.case35
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len44

b.grow249:                                        ; preds = %b.rn.new.len44
  %b.cap252 = mul i64 %b.cap47, 2
  %b.cap.small53 = icmp slt i64 %b.cap252, 16
  %b.cap.grow54 = select i1 %b.cap.small53, i64 16, i64 %b.cap252
  %b.cap.need55 = icmp slt i64 %b.cap.grow54, %sum42
  %b.new.cap56 = select i1 %b.cap.need55, i64 %sum42, i64 %b.cap.grow54
  %b.cur.len257 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load38, i32 0, i32 0
  %b.cur.len258 = load i64, ptr %b.cur.len257, align 8
  %b.cur.data259 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load38, i32 0, i32 1
  %b.cur.data260 = load ptr, ptr %b.cur.data259, align 8
  %b.new.buf.len261 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap56, i64 1)
  %sum62 = extractvalue { i64, i1 } %b.new.buf.len261, 0
  %ovf63 = extractvalue { i64, i1 } %b.new.buf.len261, 1
  br i1 %ovf63, label %str_overflow_abort65, label %b.new.buf.len264

b.nogrow250:                                      ; preds = %b.rn.new.len44
  br label %b.grow_done51

b.grow_done51:                                    ; preds = %b.nogrow250, %b.new.buf.len264
  %b.rn.data71 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load38, i32 0, i32 1
  %b.rn.data72 = load ptr, ptr %b.rn.data71, align 8
  %b.rn.dst73 = getelementptr i8, ptr %b.rn.data72, i64 %b.rn.cur.len40
  br i1 true, label %br.b1.73, label %br.c2.73

b.new.buf.len264:                                 ; preds = %str_overflow_abort65, %b.grow249
  %arena.cur66 = call ptr @dva_arena_current()
  %b.new.buf267 = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 %sum62)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf267, ptr align 1 %b.cur.data260, i64 %b.cur.len258, i1 false)
  %b.grow2.nul68 = getelementptr i8, ptr %b.new.buf267, i64 %b.cur.len258
  store i8 0, ptr %b.grow2.nul68, align 1
  %b.new.data2.gep69 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load38, i32 0, i32 1
  store ptr %b.new.buf267, ptr %b.new.data2.gep69, align 8
  %b.new.cap2.gep70 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load38, i32 0, i32 2
  store i64 %b.new.cap56, ptr %b.new.cap2.gep70, align 8
  br label %b.grow_done51

str_overflow_abort65:                             ; preds = %b.grow249
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len264

br.b1.73:                                         ; preds = %b.grow_done51
  store i8 92, ptr %b.rn.dst73, align 1
  br label %br.done.73

br.c2.73:                                         ; preds = %b.grow_done51
  br i1 true, label %br.b2.73, label %br.c3.73

br.b2.73:                                         ; preds = %br.c2.73
  store i8 -63, ptr %b.rn.dst73, align 1
  %br.dst174 = getelementptr i8, ptr %b.rn.dst73, i64 1
  store i8 -100, ptr %br.dst174, align 1
  br label %br.done.73

br.c3.73:                                         ; preds = %br.c2.73
  br i1 true, label %br.b3.73, label %br.b4.73

br.b3.73:                                         ; preds = %br.c3.73
  store i8 -32, ptr %b.rn.dst73, align 1
  %br.dst1.375 = getelementptr i8, ptr %b.rn.dst73, i64 1
  store i8 -127, ptr %br.dst1.375, align 1
  %br.dst2.376 = getelementptr i8, ptr %b.rn.dst73, i64 2
  store i8 -100, ptr %br.dst2.376, align 1
  br label %br.done.73

br.b4.73:                                         ; preds = %br.c3.73
  store i8 -16, ptr %b.rn.dst73, align 1
  %br.dst1.477 = getelementptr i8, ptr %b.rn.dst73, i64 1
  store i8 -128, ptr %br.dst1.477, align 1
  %br.dst2.478 = getelementptr i8, ptr %b.rn.dst73, i64 2
  store i8 -127, ptr %br.dst2.478, align 1
  %br.dst3.479 = getelementptr i8, ptr %b.rn.dst73, i64 3
  store i8 -100, ptr %br.dst3.479, align 1
  br label %br.done.73

br.done.73:                                       ; preds = %br.b4.73, %br.b3.73, %br.b2.73, %br.b1.73
  %br.nul80 = getelementptr i8, ptr %b.rn.data72, i64 %sum42
  store i8 0, ptr %br.nul80, align 1
  %b.len.gep81 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load38, i32 0, i32 0
  store i64 %sum42, ptr %b.len.gep81, align 8
  %var.load82 = load ptr, ptr %var.b, align 8
  %var.load83 = load i64, ptr %var.k, align 8
  %addtmp84 = add i64 %var.load83, 2
  %call.res85 = call { i1, i64 } @"json::#scan_string"(ptr %var.load82, i64 %addtmp84)
  br label %choice.exit18

choice.case86:                                    ; preds = %choice.next36
  %b.load89 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len90 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load89, i32 0, i32 0
  %b.rn.cur.len91 = load i64, ptr %b.rn.cur.len90, align 8
  %b.rn.new.len92 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len91, i64 1)
  %sum93 = extractvalue { i64, i1 } %b.rn.new.len92, 0
  %ovf94 = extractvalue { i64, i1 } %b.rn.new.len92, 1
  br i1 %ovf94, label %str_overflow_abort96, label %b.rn.new.len95

choice.next87:                                    ; preds = %choice.next36
  %val.match139 = icmp eq i64 %var.load17, 98
  br i1 %val.match139, label %choice.case137, label %choice.next138

b.rn.new.len95:                                   ; preds = %str_overflow_abort96, %choice.case86
  %b.cap97 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load89, i32 0, i32 2
  %b.cap98 = load i64, ptr %b.cap97, align 8
  %b.need.grow99 = icmp slt i64 %b.cap98, %sum93
  br i1 %b.need.grow99, label %b.grow2100, label %b.nogrow2101

str_overflow_abort96:                             ; preds = %choice.case86
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len95

b.grow2100:                                       ; preds = %b.rn.new.len95
  %b.cap2103 = mul i64 %b.cap98, 2
  %b.cap.small104 = icmp slt i64 %b.cap2103, 16
  %b.cap.grow105 = select i1 %b.cap.small104, i64 16, i64 %b.cap2103
  %b.cap.need106 = icmp slt i64 %b.cap.grow105, %sum93
  %b.new.cap107 = select i1 %b.cap.need106, i64 %sum93, i64 %b.cap.grow105
  %b.cur.len2108 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load89, i32 0, i32 0
  %b.cur.len2109 = load i64, ptr %b.cur.len2108, align 8
  %b.cur.data2110 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load89, i32 0, i32 1
  %b.cur.data2111 = load ptr, ptr %b.cur.data2110, align 8
  %b.new.buf.len2112 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap107, i64 1)
  %sum113 = extractvalue { i64, i1 } %b.new.buf.len2112, 0
  %ovf114 = extractvalue { i64, i1 } %b.new.buf.len2112, 1
  br i1 %ovf114, label %str_overflow_abort116, label %b.new.buf.len2115

b.nogrow2101:                                     ; preds = %b.rn.new.len95
  br label %b.grow_done102

b.grow_done102:                                   ; preds = %b.nogrow2101, %b.new.buf.len2115
  %b.rn.data122 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load89, i32 0, i32 1
  %b.rn.data123 = load ptr, ptr %b.rn.data122, align 8
  %b.rn.dst124 = getelementptr i8, ptr %b.rn.data123, i64 %b.rn.cur.len91
  br i1 true, label %br.b1.74, label %br.c2.74

b.new.buf.len2115:                                ; preds = %str_overflow_abort116, %b.grow2100
  %arena.cur117 = call ptr @dva_arena_current()
  %b.new.buf2118 = call ptr @dva_arena_alloc(ptr %arena.cur117, i64 %sum113)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2118, ptr align 1 %b.cur.data2111, i64 %b.cur.len2109, i1 false)
  %b.grow2.nul119 = getelementptr i8, ptr %b.new.buf2118, i64 %b.cur.len2109
  store i8 0, ptr %b.grow2.nul119, align 1
  %b.new.data2.gep120 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load89, i32 0, i32 1
  store ptr %b.new.buf2118, ptr %b.new.data2.gep120, align 8
  %b.new.cap2.gep121 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load89, i32 0, i32 2
  store i64 %b.new.cap107, ptr %b.new.cap2.gep121, align 8
  br label %b.grow_done102

str_overflow_abort116:                            ; preds = %b.grow2100
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2115

br.b1.74:                                         ; preds = %b.grow_done102
  store i8 47, ptr %b.rn.dst124, align 1
  br label %br.done.74

br.c2.74:                                         ; preds = %b.grow_done102
  br i1 true, label %br.b2.74, label %br.c3.74

br.b2.74:                                         ; preds = %br.c2.74
  store i8 -64, ptr %b.rn.dst124, align 1
  %br.dst1125 = getelementptr i8, ptr %b.rn.dst124, i64 1
  store i8 -81, ptr %br.dst1125, align 1
  br label %br.done.74

br.c3.74:                                         ; preds = %br.c2.74
  br i1 true, label %br.b3.74, label %br.b4.74

br.b3.74:                                         ; preds = %br.c3.74
  store i8 -32, ptr %b.rn.dst124, align 1
  %br.dst1.3126 = getelementptr i8, ptr %b.rn.dst124, i64 1
  store i8 -128, ptr %br.dst1.3126, align 1
  %br.dst2.3127 = getelementptr i8, ptr %b.rn.dst124, i64 2
  store i8 -81, ptr %br.dst2.3127, align 1
  br label %br.done.74

br.b4.74:                                         ; preds = %br.c3.74
  store i8 -16, ptr %b.rn.dst124, align 1
  %br.dst1.4128 = getelementptr i8, ptr %b.rn.dst124, i64 1
  store i8 -128, ptr %br.dst1.4128, align 1
  %br.dst2.4129 = getelementptr i8, ptr %b.rn.dst124, i64 2
  store i8 -128, ptr %br.dst2.4129, align 1
  %br.dst3.4130 = getelementptr i8, ptr %b.rn.dst124, i64 3
  store i8 -81, ptr %br.dst3.4130, align 1
  br label %br.done.74

br.done.74:                                       ; preds = %br.b4.74, %br.b3.74, %br.b2.74, %br.b1.74
  %br.nul131 = getelementptr i8, ptr %b.rn.data123, i64 %sum93
  store i8 0, ptr %br.nul131, align 1
  %b.len.gep132 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load89, i32 0, i32 0
  store i64 %sum93, ptr %b.len.gep132, align 8
  %var.load133 = load ptr, ptr %var.b, align 8
  %var.load134 = load i64, ptr %var.k, align 8
  %addtmp135 = add i64 %var.load134, 2
  %call.res136 = call { i1, i64 } @"json::#scan_string"(ptr %var.load133, i64 %addtmp135)
  br label %choice.exit18

choice.case137:                                   ; preds = %choice.next87
  %b.load140 = load ptr, ptr %var.b, align 8
  br i1 true, label %b.byte_ok, label %b.byte_err

choice.next138:                                   ; preds = %choice.next87
  %val.match162 = icmp eq i64 %var.load17, 102
  br i1 %val.match162, label %choice.case160, label %choice.next161

b.byte_ok:                                        ; preds = %b.byte_err, %choice.case137
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load140, i32 0, i32 0
  %b.len141 = load i64, ptr %b.len, align 8
  %b.cap142 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load140, i32 0, i32 2
  %b.cap143 = load i64, ptr %b.cap142, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load140, i32 0, i32 1
  %b.data144 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len141, %b.cap143
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.case137
  %11 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2145 = mul i64 %b.cap143, 2
  %b.cap.small146 = icmp slt i64 %b.cap2145, 16
  %b.new.cap147 = select i1 %b.cap.small146, i64 16, i64 %b.cap2145
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap147, i64 1)
  %sum148 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf149 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf149, label %str_overflow_abort151, label %b.new.buf.len150

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len150
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load140, i32 0, i32 1
  %b.cur.data153 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load140, i32 0, i32 0
  %b.cur.len154 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data153, i64 %b.cur.len154
  store i8 8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len154, 1
  %b.nul = getelementptr i8, ptr %b.cur.data153, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep155 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load140, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep155, align 8
  %var.load156 = load ptr, ptr %var.b, align 8
  %var.load157 = load i64, ptr %var.k, align 8
  %addtmp158 = add i64 %var.load157, 2
  %call.res159 = call { i1, i64 } @"json::#scan_string"(ptr %var.load156, i64 %addtmp158)
  br label %choice.exit18

b.new.buf.len150:                                 ; preds = %str_overflow_abort151, %b.grow
  %arena.cur152 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur152, i64 %sum148)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data144, i64 %b.len141, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len141
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load140, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load140, i32 0, i32 2
  store i64 %b.new.cap147, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort151:                            ; preds = %b.grow
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len150

choice.case160:                                   ; preds = %choice.next138
  %b.load163 = load ptr, ptr %var.b, align 8
  br i1 true, label %b.byte_ok164, label %b.byte_err165

choice.next161:                                   ; preds = %choice.next138
  %val.match203 = icmp eq i64 %var.load17, 110
  br i1 %val.match203, label %choice.case201, label %choice.next202

b.byte_ok164:                                     ; preds = %b.byte_err165, %choice.case160
  %b.len166 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load163, i32 0, i32 0
  %b.len167 = load i64, ptr %b.len166, align 8
  %b.cap168 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load163, i32 0, i32 2
  %b.cap169 = load i64, ptr %b.cap168, align 8
  %b.data170 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load163, i32 0, i32 1
  %b.data171 = load ptr, ptr %b.data170, align 8
  %b.needs.grow172 = icmp eq i64 %b.len167, %b.cap169
  br i1 %b.needs.grow172, label %b.grow173, label %b.nogrow174

b.byte_err165:                                    ; preds = %choice.case160
  %13 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok164

b.grow173:                                        ; preds = %b.byte_ok164
  %b.cap2176 = mul i64 %b.cap169, 2
  %b.cap.small177 = icmp slt i64 %b.cap2176, 16
  %b.new.cap178 = select i1 %b.cap.small177, i64 16, i64 %b.cap2176
  %b.new.buf.len179 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap178, i64 1)
  %sum180 = extractvalue { i64, i1 } %b.new.buf.len179, 0
  %ovf181 = extractvalue { i64, i1 } %b.new.buf.len179, 1
  br i1 %ovf181, label %str_overflow_abort183, label %b.new.buf.len182

b.nogrow174:                                      ; preds = %b.byte_ok164
  br label %b.push_done175

b.push_done175:                                   ; preds = %b.nogrow174, %b.new.buf.len182
  %b.cur.data189 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load163, i32 0, i32 1
  %b.cur.data190 = load ptr, ptr %b.cur.data189, align 8
  %b.cur.len191 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load163, i32 0, i32 0
  %b.cur.len192 = load i64, ptr %b.cur.len191, align 8
  %b.byte.gep193 = getelementptr i8, ptr %b.cur.data190, i64 %b.cur.len192
  store i8 12, ptr %b.byte.gep193, align 1
  %b.next.len194 = add i64 %b.cur.len192, 1
  %b.nul195 = getelementptr i8, ptr %b.cur.data190, i64 %b.next.len194
  store i8 0, ptr %b.nul195, align 1
  %b.len.gep196 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load163, i32 0, i32 0
  store i64 %b.next.len194, ptr %b.len.gep196, align 8
  %var.load197 = load ptr, ptr %var.b, align 8
  %var.load198 = load i64, ptr %var.k, align 8
  %addtmp199 = add i64 %var.load198, 2
  %call.res200 = call { i1, i64 } @"json::#scan_string"(ptr %var.load197, i64 %addtmp199)
  br label %choice.exit18

b.new.buf.len182:                                 ; preds = %str_overflow_abort183, %b.grow173
  %arena.cur184 = call ptr @dva_arena_current()
  %b.new.buf185 = call ptr @dva_arena_alloc(ptr %arena.cur184, i64 %sum180)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf185, ptr align 1 %b.data171, i64 %b.len167, i1 false)
  %b.grow.nul186 = getelementptr i8, ptr %b.new.buf185, i64 %b.len167
  store i8 0, ptr %b.grow.nul186, align 1
  %b.new.data.gep187 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load163, i32 0, i32 1
  store ptr %b.new.buf185, ptr %b.new.data.gep187, align 8
  %b.new.cap.gep188 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load163, i32 0, i32 2
  store i64 %b.new.cap178, ptr %b.new.cap.gep188, align 8
  br label %b.push_done175

str_overflow_abort183:                            ; preds = %b.grow173
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len182

choice.case201:                                   ; preds = %choice.next161
  %b.load204 = load ptr, ptr %var.b, align 8
  br i1 true, label %b.byte_ok205, label %b.byte_err206

choice.next202:                                   ; preds = %choice.next161
  %val.match244 = icmp eq i64 %var.load17, 114
  br i1 %val.match244, label %choice.case242, label %choice.next243

b.byte_ok205:                                     ; preds = %b.byte_err206, %choice.case201
  %b.len207 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load204, i32 0, i32 0
  %b.len208 = load i64, ptr %b.len207, align 8
  %b.cap209 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load204, i32 0, i32 2
  %b.cap210 = load i64, ptr %b.cap209, align 8
  %b.data211 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load204, i32 0, i32 1
  %b.data212 = load ptr, ptr %b.data211, align 8
  %b.needs.grow213 = icmp eq i64 %b.len208, %b.cap210
  br i1 %b.needs.grow213, label %b.grow214, label %b.nogrow215

b.byte_err206:                                    ; preds = %choice.case201
  %15 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok205

b.grow214:                                        ; preds = %b.byte_ok205
  %b.cap2217 = mul i64 %b.cap210, 2
  %b.cap.small218 = icmp slt i64 %b.cap2217, 16
  %b.new.cap219 = select i1 %b.cap.small218, i64 16, i64 %b.cap2217
  %b.new.buf.len220 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap219, i64 1)
  %sum221 = extractvalue { i64, i1 } %b.new.buf.len220, 0
  %ovf222 = extractvalue { i64, i1 } %b.new.buf.len220, 1
  br i1 %ovf222, label %str_overflow_abort224, label %b.new.buf.len223

b.nogrow215:                                      ; preds = %b.byte_ok205
  br label %b.push_done216

b.push_done216:                                   ; preds = %b.nogrow215, %b.new.buf.len223
  %b.cur.data230 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load204, i32 0, i32 1
  %b.cur.data231 = load ptr, ptr %b.cur.data230, align 8
  %b.cur.len232 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load204, i32 0, i32 0
  %b.cur.len233 = load i64, ptr %b.cur.len232, align 8
  %b.byte.gep234 = getelementptr i8, ptr %b.cur.data231, i64 %b.cur.len233
  store i8 10, ptr %b.byte.gep234, align 1
  %b.next.len235 = add i64 %b.cur.len233, 1
  %b.nul236 = getelementptr i8, ptr %b.cur.data231, i64 %b.next.len235
  store i8 0, ptr %b.nul236, align 1
  %b.len.gep237 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load204, i32 0, i32 0
  store i64 %b.next.len235, ptr %b.len.gep237, align 8
  %var.load238 = load ptr, ptr %var.b, align 8
  %var.load239 = load i64, ptr %var.k, align 8
  %addtmp240 = add i64 %var.load239, 2
  %call.res241 = call { i1, i64 } @"json::#scan_string"(ptr %var.load238, i64 %addtmp240)
  br label %choice.exit18

b.new.buf.len223:                                 ; preds = %str_overflow_abort224, %b.grow214
  %arena.cur225 = call ptr @dva_arena_current()
  %b.new.buf226 = call ptr @dva_arena_alloc(ptr %arena.cur225, i64 %sum221)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf226, ptr align 1 %b.data212, i64 %b.len208, i1 false)
  %b.grow.nul227 = getelementptr i8, ptr %b.new.buf226, i64 %b.len208
  store i8 0, ptr %b.grow.nul227, align 1
  %b.new.data.gep228 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load204, i32 0, i32 1
  store ptr %b.new.buf226, ptr %b.new.data.gep228, align 8
  %b.new.cap.gep229 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load204, i32 0, i32 2
  store i64 %b.new.cap219, ptr %b.new.cap.gep229, align 8
  br label %b.push_done216

str_overflow_abort224:                            ; preds = %b.grow214
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len223

choice.case242:                                   ; preds = %choice.next202
  %b.load245 = load ptr, ptr %var.b, align 8
  br i1 true, label %b.byte_ok246, label %b.byte_err247

choice.next243:                                   ; preds = %choice.next202
  %val.match286 = icmp eq i64 %var.load17, 116
  br i1 %val.match286, label %choice.case284, label %choice.next285

b.byte_ok246:                                     ; preds = %b.byte_err247, %choice.case242
  %b.len248 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load245, i32 0, i32 0
  %b.len249 = load i64, ptr %b.len248, align 8
  %b.cap250 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load245, i32 0, i32 2
  %b.cap251 = load i64, ptr %b.cap250, align 8
  %b.data252 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load245, i32 0, i32 1
  %b.data253 = load ptr, ptr %b.data252, align 8
  %b.needs.grow254 = icmp eq i64 %b.len249, %b.cap251
  br i1 %b.needs.grow254, label %b.grow255, label %b.nogrow256

b.byte_err247:                                    ; preds = %choice.case242
  %17 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok246

b.grow255:                                        ; preds = %b.byte_ok246
  %b.cap2258 = mul i64 %b.cap251, 2
  %b.cap.small259 = icmp slt i64 %b.cap2258, 16
  %b.new.cap260 = select i1 %b.cap.small259, i64 16, i64 %b.cap2258
  %b.new.buf.len262 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap260, i64 1)
  %sum263 = extractvalue { i64, i1 } %b.new.buf.len262, 0
  %ovf264 = extractvalue { i64, i1 } %b.new.buf.len262, 1
  br i1 %ovf264, label %str_overflow_abort266, label %b.new.buf.len265

b.nogrow256:                                      ; preds = %b.byte_ok246
  br label %b.push_done257

b.push_done257:                                   ; preds = %b.nogrow256, %b.new.buf.len265
  %b.cur.data272 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load245, i32 0, i32 1
  %b.cur.data273 = load ptr, ptr %b.cur.data272, align 8
  %b.cur.len274 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load245, i32 0, i32 0
  %b.cur.len275 = load i64, ptr %b.cur.len274, align 8
  %b.byte.gep276 = getelementptr i8, ptr %b.cur.data273, i64 %b.cur.len275
  store i8 13, ptr %b.byte.gep276, align 1
  %b.next.len277 = add i64 %b.cur.len275, 1
  %b.nul278 = getelementptr i8, ptr %b.cur.data273, i64 %b.next.len277
  store i8 0, ptr %b.nul278, align 1
  %b.len.gep279 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load245, i32 0, i32 0
  store i64 %b.next.len277, ptr %b.len.gep279, align 8
  %var.load280 = load ptr, ptr %var.b, align 8
  %var.load281 = load i64, ptr %var.k, align 8
  %addtmp282 = add i64 %var.load281, 2
  %call.res283 = call { i1, i64 } @"json::#scan_string"(ptr %var.load280, i64 %addtmp282)
  br label %choice.exit18

b.new.buf.len265:                                 ; preds = %str_overflow_abort266, %b.grow255
  %arena.cur267 = call ptr @dva_arena_current()
  %b.new.buf268 = call ptr @dva_arena_alloc(ptr %arena.cur267, i64 %sum263)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf268, ptr align 1 %b.data253, i64 %b.len249, i1 false)
  %b.grow.nul269 = getelementptr i8, ptr %b.new.buf268, i64 %b.len249
  store i8 0, ptr %b.grow.nul269, align 1
  %b.new.data.gep270 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load245, i32 0, i32 1
  store ptr %b.new.buf268, ptr %b.new.data.gep270, align 8
  %b.new.cap.gep271 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load245, i32 0, i32 2
  store i64 %b.new.cap260, ptr %b.new.cap.gep271, align 8
  br label %b.push_done257

str_overflow_abort266:                            ; preds = %b.grow255
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len265

choice.case284:                                   ; preds = %choice.next243
  %b.load287 = load ptr, ptr %var.b, align 8
  br i1 true, label %b.byte_ok288, label %b.byte_err289

choice.next285:                                   ; preds = %choice.next243
  %val.match327 = icmp eq i64 %var.load17, 117
  br i1 %val.match327, label %choice.case325, label %choice.next326

b.byte_ok288:                                     ; preds = %b.byte_err289, %choice.case284
  %b.len290 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 0
  %b.len291 = load i64, ptr %b.len290, align 8
  %b.cap292 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 2
  %b.cap293 = load i64, ptr %b.cap292, align 8
  %b.data294 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 1
  %b.data295 = load ptr, ptr %b.data294, align 8
  %b.needs.grow296 = icmp eq i64 %b.len291, %b.cap293
  br i1 %b.needs.grow296, label %b.grow297, label %b.nogrow298

b.byte_err289:                                    ; preds = %choice.case284
  %19 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok288

b.grow297:                                        ; preds = %b.byte_ok288
  %b.cap2300 = mul i64 %b.cap293, 2
  %b.cap.small301 = icmp slt i64 %b.cap2300, 16
  %b.new.cap302 = select i1 %b.cap.small301, i64 16, i64 %b.cap2300
  %b.new.buf.len303 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap302, i64 1)
  %sum304 = extractvalue { i64, i1 } %b.new.buf.len303, 0
  %ovf305 = extractvalue { i64, i1 } %b.new.buf.len303, 1
  br i1 %ovf305, label %str_overflow_abort307, label %b.new.buf.len306

b.nogrow298:                                      ; preds = %b.byte_ok288
  br label %b.push_done299

b.push_done299:                                   ; preds = %b.nogrow298, %b.new.buf.len306
  %b.cur.data313 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 1
  %b.cur.data314 = load ptr, ptr %b.cur.data313, align 8
  %b.cur.len315 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 0
  %b.cur.len316 = load i64, ptr %b.cur.len315, align 8
  %b.byte.gep317 = getelementptr i8, ptr %b.cur.data314, i64 %b.cur.len316
  store i8 9, ptr %b.byte.gep317, align 1
  %b.next.len318 = add i64 %b.cur.len316, 1
  %b.nul319 = getelementptr i8, ptr %b.cur.data314, i64 %b.next.len318
  store i8 0, ptr %b.nul319, align 1
  %b.len.gep320 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 0
  store i64 %b.next.len318, ptr %b.len.gep320, align 8
  %var.load321 = load ptr, ptr %var.b, align 8
  %var.load322 = load i64, ptr %var.k, align 8
  %addtmp323 = add i64 %var.load322, 2
  %call.res324 = call { i1, i64 } @"json::#scan_string"(ptr %var.load321, i64 %addtmp323)
  br label %choice.exit18

b.new.buf.len306:                                 ; preds = %str_overflow_abort307, %b.grow297
  %arena.cur308 = call ptr @dva_arena_current()
  %b.new.buf309 = call ptr @dva_arena_alloc(ptr %arena.cur308, i64 %sum304)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf309, ptr align 1 %b.data295, i64 %b.len291, i1 false)
  %b.grow.nul310 = getelementptr i8, ptr %b.new.buf309, i64 %b.len291
  store i8 0, ptr %b.grow.nul310, align 1
  %b.new.data.gep311 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 1
  store ptr %b.new.buf309, ptr %b.new.data.gep311, align 8
  %b.new.cap.gep312 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 2
  store i64 %b.new.cap302, ptr %b.new.cap.gep312, align 8
  br label %b.push_done299

str_overflow_abort307:                            ; preds = %b.grow297
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len306

choice.case325:                                   ; preds = %choice.next285
  %var.load328 = load ptr, ptr %var.b, align 8
  %var.load329 = load i64, ptr %var.k, align 8
  %call.res330 = call { i1, i64 } @"json::#parse_unicode"(ptr %var.load328, i64 %var.load329)
  br label %choice.exit18

choice.next326:                                   ; preds = %choice.next285
  %arena.cur331 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur331, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.9.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load332 = load i64, ptr %var.k, align 8
  %arena.cur333 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur333, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load332, ptr %rec.fld, align 8
  %rec.fld334 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld334, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit18
}

define internal { i1, i64 } @"json::#parse_unicode"(ptr %0, i64 %1) #1 {
entry:
  %var.cp = alloca i64, align 8
  %var.d5 = alloca i64, align 8
  %var.d4 = alloca i64, align 8
  %var.d3 = alloca i64, align 8
  %var.d2 = alloca i64, align 8
  %var.ok = alloca i1, align 1
  %var.h5 = alloca i1, align 1
  %var.h4 = alloca i1, align 1
  %var.h3 = alloca i1, align 1
  %var.h2 = alloca i1, align 1
  %var.k = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i64 %1, ptr %var.k, align 8
  %var.load = load i64, ptr %var.k, align 8
  %addtmp = add i64 %var.load, 2
  %call.res = call i1 @"json::#is_hex_at"(i64 %addtmp)
  store i1 %call.res, ptr %var.h2, align 1
  %var.load1 = load i64, ptr %var.k, align 8
  %addtmp2 = add i64 %var.load1, 3
  %call.res3 = call i1 @"json::#is_hex_at"(i64 %addtmp2)
  store i1 %call.res3, ptr %var.h3, align 1
  %var.load4 = load i64, ptr %var.k, align 8
  %addtmp5 = add i64 %var.load4, 4
  %call.res6 = call i1 @"json::#is_hex_at"(i64 %addtmp5)
  store i1 %call.res6, ptr %var.h4, align 1
  %var.load7 = load i64, ptr %var.k, align 8
  %addtmp8 = add i64 %var.load7, 5
  %call.res9 = call i1 @"json::#is_hex_at"(i64 %addtmp8)
  store i1 %call.res9, ptr %var.h5, align 1
  %var.load10 = load i1, ptr %var.h2, align 1
  br i1 %var.load10, label %and.75.then, label %and.75.else

and.75.then:                                      ; preds = %entry
  %var.load11 = load i1, ptr %var.h3, align 1
  br label %and.75.exit

and.75.else:                                      ; preds = %entry
  br label %and.75.exit

and.75.exit:                                      ; preds = %and.75.else, %and.75.then
  %and.75.phi = phi i1 [ %var.load11, %and.75.then ], [ %var.load10, %and.75.else ]
  br i1 %and.75.phi, label %and.76.then, label %and.76.else

and.76.then:                                      ; preds = %and.75.exit
  %var.load12 = load i1, ptr %var.h4, align 1
  br label %and.76.exit

and.76.else:                                      ; preds = %and.75.exit
  br label %and.76.exit

and.76.exit:                                      ; preds = %and.76.else, %and.76.then
  %and.76.phi = phi i1 [ %var.load12, %and.76.then ], [ %and.75.phi, %and.76.else ]
  br i1 %and.76.phi, label %and.77.then, label %and.77.else

and.77.then:                                      ; preds = %and.76.exit
  %var.load13 = load i1, ptr %var.h5, align 1
  br label %and.77.exit

and.77.else:                                      ; preds = %and.76.exit
  br label %and.77.exit

and.77.exit:                                      ; preds = %and.77.else, %and.77.then
  %and.77.phi = phi i1 [ %var.load13, %and.77.then ], [ %and.76.phi, %and.77.else ]
  store i1 %and.77.phi, ptr %var.ok, align 1
  %var.load14 = load i1, ptr %var.ok, align 1
  br i1 %var.load14, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.77.exit
  %var.load15 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 0
  %s.read.len16 = load i64, ptr %s.read.len, align 8
  %s.read.len17 = and i64 %s.read.len16, 281474976710655
  %str.tag = lshr i64 %s.read.len16, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.else:                                      ; preds = %and.77.exit
  %arena.cur107 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur107, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load108 = load i64, ptr %var.k, align 8
  %arena.cur109 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur109, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load108, ptr %rec.fld, align 8
  %rec.fld110 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld110, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %idx_ok87
  %choice.res = phi { i1, i64 } [ %call.res106, %idx_ok87 ], [ %ram.pay, %choice.else ]
  ret { i1, i64 } %choice.res

str_gen_check:                                    ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 1
  %s.read.data18 = load ptr, ptr %s.read.data, align 8
  %var.load19 = load i64, ptr %var.k, align 8
  %addtmp20 = add i64 %var.load19, 2
  %idx.neg = icmp slt i64 %addtmp20, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

idx_big_check:                                    ; preds = %str_ok
  %idx.big = icmp sge i64 %addtmp20, %s.read.len17
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data18, i64 %addtmp20
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res21 = call i64 @"json::#hexval"(i64 %s.byte.val)
  store i64 %call.res21, ptr %var.d2, align 8
  %var.load22 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len23 = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 0
  %s.read.len24 = load i64, ptr %s.read.len23, align 8
  %s.read.len25 = and i64 %s.read.len24, 281474976710655
  %str.tag26 = lshr i64 %s.read.len24, 48
  %str.immortal27 = icmp eq i64 %str.tag26, 0
  br i1 %str.immortal27, label %str_ok29, label %str_gen_check28

idx_oob:                                          ; preds = %idx_big_check, %str_ok
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

str_gen_check28:                                  ; preds = %idx_ok
  %arena.cur31 = call ptr @dva_arena_current()
  %tag.valid32 = call i1 @dva_arena_validate_tag(ptr %arena.cur31, i64 %str.tag26)
  br i1 %tag.valid32, label %str_ok29, label %str_stale30

str_ok29:                                         ; preds = %str_stale30, %str_gen_check28, %idx_ok
  %s.read.data33 = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 1
  %s.read.data34 = load ptr, ptr %s.read.data33, align 8
  %var.load35 = load i64, ptr %var.k, align 8
  %addtmp36 = add i64 %var.load35, 3
  %idx.neg37 = icmp slt i64 %addtmp36, 0
  br i1 %idx.neg37, label %idx_oob40, label %idx_big_check38

str_stale30:                                      ; preds = %str_gen_check28
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok29

idx_big_check38:                                  ; preds = %str_ok29
  %idx.big41 = icmp sge i64 %addtmp36, %s.read.len25
  br i1 %idx.big41, label %idx_oob40, label %idx_ok39

idx_ok39:                                         ; preds = %idx_oob40, %idx_big_check38
  %s.byte.gep42 = getelementptr i8, ptr %s.read.data34, i64 %addtmp36
  %s.byte43 = load i8, ptr %s.byte.gep42, align 1
  %s.byte.val44 = zext i8 %s.byte43 to i64
  %call.res45 = call i64 @"json::#hexval"(i64 %s.byte.val44)
  store i64 %call.res45, ptr %var.d3, align 8
  %var.load46 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len47 = getelementptr inbounds { i64, ptr }, ptr %var.load46, i32 0, i32 0
  %s.read.len48 = load i64, ptr %s.read.len47, align 8
  %s.read.len49 = and i64 %s.read.len48, 281474976710655
  %str.tag50 = lshr i64 %s.read.len48, 48
  %str.immortal51 = icmp eq i64 %str.tag50, 0
  br i1 %str.immortal51, label %str_ok53, label %str_gen_check52

idx_oob40:                                        ; preds = %idx_big_check38, %str_ok29
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok39

str_gen_check52:                                  ; preds = %idx_ok39
  %arena.cur55 = call ptr @dva_arena_current()
  %tag.valid56 = call i1 @dva_arena_validate_tag(ptr %arena.cur55, i64 %str.tag50)
  br i1 %tag.valid56, label %str_ok53, label %str_stale54

str_ok53:                                         ; preds = %str_stale54, %str_gen_check52, %idx_ok39
  %s.read.data57 = getelementptr inbounds { i64, ptr }, ptr %var.load46, i32 0, i32 1
  %s.read.data58 = load ptr, ptr %s.read.data57, align 8
  %var.load59 = load i64, ptr %var.k, align 8
  %addtmp60 = add i64 %var.load59, 4
  %idx.neg61 = icmp slt i64 %addtmp60, 0
  br i1 %idx.neg61, label %idx_oob64, label %idx_big_check62

str_stale54:                                      ; preds = %str_gen_check52
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok53

idx_big_check62:                                  ; preds = %str_ok53
  %idx.big65 = icmp sge i64 %addtmp60, %s.read.len49
  br i1 %idx.big65, label %idx_oob64, label %idx_ok63

idx_ok63:                                         ; preds = %idx_oob64, %idx_big_check62
  %s.byte.gep66 = getelementptr i8, ptr %s.read.data58, i64 %addtmp60
  %s.byte67 = load i8, ptr %s.byte.gep66, align 1
  %s.byte.val68 = zext i8 %s.byte67 to i64
  %call.res69 = call i64 @"json::#hexval"(i64 %s.byte.val68)
  store i64 %call.res69, ptr %var.d4, align 8
  %var.load70 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len71 = getelementptr inbounds { i64, ptr }, ptr %var.load70, i32 0, i32 0
  %s.read.len72 = load i64, ptr %s.read.len71, align 8
  %s.read.len73 = and i64 %s.read.len72, 281474976710655
  %str.tag74 = lshr i64 %s.read.len72, 48
  %str.immortal75 = icmp eq i64 %str.tag74, 0
  br i1 %str.immortal75, label %str_ok77, label %str_gen_check76

idx_oob64:                                        ; preds = %idx_big_check62, %str_ok53
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok63

str_gen_check76:                                  ; preds = %idx_ok63
  %arena.cur79 = call ptr @dva_arena_current()
  %tag.valid80 = call i1 @dva_arena_validate_tag(ptr %arena.cur79, i64 %str.tag74)
  br i1 %tag.valid80, label %str_ok77, label %str_stale78

str_ok77:                                         ; preds = %str_stale78, %str_gen_check76, %idx_ok63
  %s.read.data81 = getelementptr inbounds { i64, ptr }, ptr %var.load70, i32 0, i32 1
  %s.read.data82 = load ptr, ptr %s.read.data81, align 8
  %var.load83 = load i64, ptr %var.k, align 8
  %addtmp84 = add i64 %var.load83, 5
  %idx.neg85 = icmp slt i64 %addtmp84, 0
  br i1 %idx.neg85, label %idx_oob88, label %idx_big_check86

str_stale78:                                      ; preds = %str_gen_check76
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok77

idx_big_check86:                                  ; preds = %str_ok77
  %idx.big89 = icmp sge i64 %addtmp84, %s.read.len73
  br i1 %idx.big89, label %idx_oob88, label %idx_ok87

idx_ok87:                                         ; preds = %idx_oob88, %idx_big_check86
  %s.byte.gep90 = getelementptr i8, ptr %s.read.data82, i64 %addtmp84
  %s.byte91 = load i8, ptr %s.byte.gep90, align 1
  %s.byte.val92 = zext i8 %s.byte91 to i64
  %call.res93 = call i64 @"json::#hexval"(i64 %s.byte.val92)
  store i64 %call.res93, ptr %var.d5, align 8
  %var.load94 = load i64, ptr %var.d2, align 8
  %multmp = mul i64 %var.load94, 4096
  %var.load95 = load i64, ptr %var.d3, align 8
  %multmp96 = mul i64 %var.load95, 256
  %addtmp97 = add i64 %multmp, %multmp96
  %var.load98 = load i64, ptr %var.d4, align 8
  %multmp99 = mul i64 %var.load98, 16
  %addtmp100 = add i64 %addtmp97, %multmp99
  %var.load101 = load i64, ptr %var.d5, align 8
  %addtmp102 = add i64 %addtmp100, %var.load101
  store i64 %addtmp102, ptr %var.cp, align 8
  %var.load103 = load ptr, ptr %var.b, align 8
  %var.load104 = load i64, ptr %var.k, align 8
  %var.load105 = load i64, ptr %var.cp, align 8
  %call.res106 = call { i1, i64 } @"json::#parse_unicode_cp"(ptr %var.load103, i64 %var.load104, i64 %var.load105)
  br label %choice.exit

idx_oob88:                                        ; preds = %idx_big_check86, %str_ok77
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok87
}

define internal { i1, i64 } @"json::#parse_unicode_cp"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.cp = alloca i64, align 8
  %var.k = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i64 %1, ptr %var.k, align 8
  store i64 %2, ptr %var.cp, align 8
  %var.load = load i64, ptr %var.cp, align 8
  %cmptmp = icmp sge i64 %var.load, 55296
  br i1 %cmptmp, label %and.78.then, label %and.78.else

choice.exit:                                      ; preds = %choice.next6, %choice.case5, %choice.case
  %choice.res = phi { i1, i64 } [ %call.res, %choice.case ], [ %ram.pay, %choice.case5 ], [ %call.res16, %choice.next6 ]
  ret { i1, i64 } %choice.res

choice.case:                                      ; preds = %and.78.exit
  %var.load2 = load ptr, ptr %var.b, align 8
  %var.load3 = load i64, ptr %var.k, align 8
  %var.load4 = load i64, ptr %var.cp, align 8
  %call.res = call { i1, i64 } @"json::#parse_surrogate_pair"(ptr %var.load2, i64 %var.load3, i64 %var.load4)
  br label %choice.exit

choice.next:                                      ; preds = %and.78.exit
  %cmptmp7 = icmp sge i64 %var.load, 56320
  br i1 %cmptmp7, label %and.86.then, label %and.86.else

and.78.then:                                      ; preds = %entry
  %cmptmp1 = icmp sle i64 %var.load, 56319
  br label %and.78.exit

and.78.else:                                      ; preds = %entry
  br label %and.78.exit

and.78.exit:                                      ; preds = %and.78.else, %and.78.then
  %and.78.phi = phi i1 [ %cmptmp1, %and.78.then ], [ %cmptmp, %and.78.else ]
  br i1 %and.78.phi, label %choice.case, label %choice.next

choice.case5:                                     ; preds = %and.86.exit
  %arena.cur = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load9 = load i64, ptr %var.k, align 8
  %arena.cur10 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load9, ptr %rec.fld, align 8
  %rec.fld11 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld11, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit

choice.next6:                                     ; preds = %and.86.exit
  %var.load12 = load ptr, ptr %var.b, align 8
  %var.load13 = load i64, ptr %var.cp, align 8
  %coerce.trunc = trunc i64 %var.load13 to i32
  call void @"utf::append_rune"(ptr %var.load12, i32 %coerce.trunc)
  %var.load14 = load ptr, ptr %var.b, align 8
  %var.load15 = load i64, ptr %var.k, align 8
  %addtmp = add i64 %var.load15, 6
  %call.res16 = call { i1, i64 } @"json::#scan_string"(ptr %var.load14, i64 %addtmp)
  br label %choice.exit

and.86.then:                                      ; preds = %choice.next
  %cmptmp8 = icmp sle i64 %var.load, 57343
  br label %and.86.exit

and.86.else:                                      ; preds = %choice.next
  br label %and.86.exit

and.86.exit:                                      ; preds = %and.86.else, %and.86.then
  %and.86.phi = phi i1 [ %cmptmp8, %and.86.then ], [ %cmptmp7, %and.86.else ]
  br i1 %and.86.phi, label %choice.case5, label %choice.next6
}

define internal { i1, i64 } @"json::#parse_surrogate_pair"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.full_cp = alloca i64, align 8
  %var.locp = alloca i64, align 8
  %var.l5 = alloca i64, align 8
  %var.l4 = alloca i64, align 8
  %var.l3 = alloca i64, align 8
  %var.l2 = alloca i64, align 8
  %var.has_second = alloca i1, align 1
  %var.cp = alloca i64, align 8
  %var.k = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i64 %1, ptr %var.k, align 8
  store i64 %2, ptr %var.cp, align 8
  %var.load = load i64, ptr %var.k, align 8
  %addtmp = add i64 %var.load, 11
  %var.load1 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %and.79.then, label %and.79.else

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.79.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

and.79.else:                                      ; preds = %str_ok
  br label %and.79.exit

and.79.exit:                                      ; preds = %and.79.else, %idx_ok
  %and.79.phi = phi i1 [ %cmptmp17, %idx_ok ], [ %cmptmp, %and.79.else ]
  br i1 %and.79.phi, label %and.80.then, label %and.80.else

str_gen_check9:                                   ; preds = %and.79.then
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %and.79.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  %var.load15 = load i64, ptr %var.k, align 8
  %addtmp16 = add i64 %var.load15, 6
  %idx.neg = icmp slt i64 %addtmp16, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale11:                                      ; preds = %str_gen_check9
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

idx_big_check:                                    ; preds = %str_ok10
  %idx.big = icmp sge i64 %addtmp16, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data14, i64 %addtmp16
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp17 = icmp eq i64 %s.byte.val, 92
  br label %and.79.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.80.then:                                      ; preds = %and.79.exit
  %var.load18 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len19 = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %s.read.len20 = load i64, ptr %s.read.len19, align 8
  %s.read.len21 = and i64 %s.read.len20, 281474976710655
  %str.tag22 = lshr i64 %s.read.len20, 48
  %str.immortal23 = icmp eq i64 %str.tag22, 0
  br i1 %str.immortal23, label %str_ok25, label %str_gen_check24

and.80.else:                                      ; preds = %and.79.exit
  br label %and.80.exit

and.80.exit:                                      ; preds = %and.80.else, %idx_ok35
  %and.80.phi = phi i1 [ %cmptmp41, %idx_ok35 ], [ %and.79.phi, %and.80.else ]
  br i1 %and.80.phi, label %and.81.then, label %and.81.else

str_gen_check24:                                  ; preds = %and.80.then
  %arena.cur27 = call ptr @dva_arena_current()
  %tag.valid28 = call i1 @dva_arena_validate_tag(ptr %arena.cur27, i64 %str.tag22)
  br i1 %tag.valid28, label %str_ok25, label %str_stale26

str_ok25:                                         ; preds = %str_stale26, %str_gen_check24, %and.80.then
  %s.read.data29 = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 1
  %s.read.data30 = load ptr, ptr %s.read.data29, align 8
  %var.load31 = load i64, ptr %var.k, align 8
  %addtmp32 = add i64 %var.load31, 7
  %idx.neg33 = icmp slt i64 %addtmp32, 0
  br i1 %idx.neg33, label %idx_oob36, label %idx_big_check34

str_stale26:                                      ; preds = %str_gen_check24
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok25

idx_big_check34:                                  ; preds = %str_ok25
  %idx.big37 = icmp sge i64 %addtmp32, %s.read.len21
  br i1 %idx.big37, label %idx_oob36, label %idx_ok35

idx_ok35:                                         ; preds = %idx_oob36, %idx_big_check34
  %s.byte.gep38 = getelementptr i8, ptr %s.read.data30, i64 %addtmp32
  %s.byte39 = load i8, ptr %s.byte.gep38, align 1
  %s.byte.val40 = zext i8 %s.byte39 to i64
  %cmptmp41 = icmp eq i64 %s.byte.val40, 117
  br label %and.80.exit

idx_oob36:                                        ; preds = %idx_big_check34, %str_ok25
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok35

and.81.then:                                      ; preds = %and.80.exit
  %var.load42 = load i64, ptr %var.k, align 8
  %addtmp43 = add i64 %var.load42, 8
  %call.res = call i1 @"json::#is_hex_at"(i64 %addtmp43)
  br label %and.81.exit

and.81.else:                                      ; preds = %and.80.exit
  br label %and.81.exit

and.81.exit:                                      ; preds = %and.81.else, %and.81.then
  %and.81.phi = phi i1 [ %call.res, %and.81.then ], [ %and.80.phi, %and.81.else ]
  br i1 %and.81.phi, label %and.82.then, label %and.82.else

and.82.then:                                      ; preds = %and.81.exit
  %var.load44 = load i64, ptr %var.k, align 8
  %addtmp45 = add i64 %var.load44, 9
  %call.res46 = call i1 @"json::#is_hex_at"(i64 %addtmp45)
  br label %and.82.exit

and.82.else:                                      ; preds = %and.81.exit
  br label %and.82.exit

and.82.exit:                                      ; preds = %and.82.else, %and.82.then
  %and.82.phi = phi i1 [ %call.res46, %and.82.then ], [ %and.81.phi, %and.82.else ]
  br i1 %and.82.phi, label %and.83.then, label %and.83.else

and.83.then:                                      ; preds = %and.82.exit
  %var.load47 = load i64, ptr %var.k, align 8
  %addtmp48 = add i64 %var.load47, 10
  %call.res49 = call i1 @"json::#is_hex_at"(i64 %addtmp48)
  br label %and.83.exit

and.83.else:                                      ; preds = %and.82.exit
  br label %and.83.exit

and.83.exit:                                      ; preds = %and.83.else, %and.83.then
  %and.83.phi = phi i1 [ %call.res49, %and.83.then ], [ %and.82.phi, %and.83.else ]
  br i1 %and.83.phi, label %and.84.then, label %and.84.else

and.84.then:                                      ; preds = %and.83.exit
  %var.load50 = load i64, ptr %var.k, align 8
  %addtmp51 = add i64 %var.load50, 11
  %call.res52 = call i1 @"json::#is_hex_at"(i64 %addtmp51)
  br label %and.84.exit

and.84.else:                                      ; preds = %and.83.exit
  br label %and.84.exit

and.84.exit:                                      ; preds = %and.84.else, %and.84.then
  %and.84.phi = phi i1 [ %call.res52, %and.84.then ], [ %and.83.phi, %and.84.else ]
  store i1 %and.84.phi, ptr %var.has_second, align 1
  %var.load53 = load i1, ptr %var.has_second, align 1
  br i1 %var.load53, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.84.exit
  %var.load54 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len55 = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 0
  %s.read.len56 = load i64, ptr %s.read.len55, align 8
  %s.read.len57 = and i64 %s.read.len56, 281474976710655
  %str.tag58 = lshr i64 %s.read.len56, 48
  %str.immortal59 = icmp eq i64 %str.tag58, 0
  br i1 %str.immortal59, label %str_ok61, label %str_gen_check60

choice.else:                                      ; preds = %and.84.exit
  %arena.cur179 = call ptr @dva_arena_current()
  %err.alloc180 = call ptr @dva_arena_alloc(ptr %arena.cur179, i64 56)
  %err.code.gep181 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc180, i32 0, i32 0
  store i64 400, ptr %err.code.gep181, align 8
  %err.msg.gep182 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc180, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep182, align 8
  %err.file.gep183 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc180, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep183, align 8
  %err.line.gep184 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc180, i32 0, i32 3
  store i64 0, ptr %err.line.gep184, align 8
  %err.col.gep185 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc180, i32 0, i32 4
  store i64 0, ptr %err.col.gep185, align 8
  %err.ctx.gep186 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc180, i32 0, i32 5
  %var.load187 = load i64, ptr %var.k, align 8
  %arena.cur188 = call ptr @dva_arena_current()
  %rec.alloc189 = call ptr @dva_arena_alloc(ptr %arena.cur188, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld190 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc189, i32 0, i32 0
  store i64 %var.load187, ptr %rec.fld190, align 8
  %rec.fld191 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc189, i32 0, i32 1
  store i64 0, ptr %rec.fld191, align 8
  %ctx.0.gep192 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc189, i32 0, i32 0
  %ctx.0193 = load i64, ptr %ctx.0.gep192, align 8
  %ctx.1.gep194 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc189, i32 0, i32 1
  %ctx.1195 = load i64, ptr %ctx.1.gep194, align 8
  %err.ctx0.gep196 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep186, i32 0, i32 0
  store i64 %ctx.0193, ptr %err.ctx0.gep196, align 8
  %err.ctx1.gep197 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep186, i32 0, i32 1
  store i64 %ctx.1195, ptr %err.ctx1.gep197, align 8
  %p.to.i64198 = ptrtoint ptr %err.alloc180 to i64
  %ram.pay199 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64198, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit160
  %choice.res200 = phi { i1, i64 } [ %choice.res, %choice.exit160 ], [ %ram.pay199, %choice.else ]
  ret { i1, i64 } %choice.res200

str_gen_check60:                                  ; preds = %choice.then
  %arena.cur63 = call ptr @dva_arena_current()
  %tag.valid64 = call i1 @dva_arena_validate_tag(ptr %arena.cur63, i64 %str.tag58)
  br i1 %tag.valid64, label %str_ok61, label %str_stale62

str_ok61:                                         ; preds = %str_stale62, %str_gen_check60, %choice.then
  %s.read.data65 = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 1
  %s.read.data66 = load ptr, ptr %s.read.data65, align 8
  %var.load67 = load i64, ptr %var.k, align 8
  %addtmp68 = add i64 %var.load67, 8
  %idx.neg69 = icmp slt i64 %addtmp68, 0
  br i1 %idx.neg69, label %idx_oob72, label %idx_big_check70

str_stale62:                                      ; preds = %str_gen_check60
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok61

idx_big_check70:                                  ; preds = %str_ok61
  %idx.big73 = icmp sge i64 %addtmp68, %s.read.len57
  br i1 %idx.big73, label %idx_oob72, label %idx_ok71

idx_ok71:                                         ; preds = %idx_oob72, %idx_big_check70
  %s.byte.gep74 = getelementptr i8, ptr %s.read.data66, i64 %addtmp68
  %s.byte75 = load i8, ptr %s.byte.gep74, align 1
  %s.byte.val76 = zext i8 %s.byte75 to i64
  %call.res77 = call i64 @"json::#hexval"(i64 %s.byte.val76)
  store i64 %call.res77, ptr %var.l2, align 8
  %var.load78 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len79 = getelementptr inbounds { i64, ptr }, ptr %var.load78, i32 0, i32 0
  %s.read.len80 = load i64, ptr %s.read.len79, align 8
  %s.read.len81 = and i64 %s.read.len80, 281474976710655
  %str.tag82 = lshr i64 %s.read.len80, 48
  %str.immortal83 = icmp eq i64 %str.tag82, 0
  br i1 %str.immortal83, label %str_ok85, label %str_gen_check84

idx_oob72:                                        ; preds = %idx_big_check70, %str_ok61
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok71

str_gen_check84:                                  ; preds = %idx_ok71
  %arena.cur87 = call ptr @dva_arena_current()
  %tag.valid88 = call i1 @dva_arena_validate_tag(ptr %arena.cur87, i64 %str.tag82)
  br i1 %tag.valid88, label %str_ok85, label %str_stale86

str_ok85:                                         ; preds = %str_stale86, %str_gen_check84, %idx_ok71
  %s.read.data89 = getelementptr inbounds { i64, ptr }, ptr %var.load78, i32 0, i32 1
  %s.read.data90 = load ptr, ptr %s.read.data89, align 8
  %var.load91 = load i64, ptr %var.k, align 8
  %addtmp92 = add i64 %var.load91, 9
  %idx.neg93 = icmp slt i64 %addtmp92, 0
  br i1 %idx.neg93, label %idx_oob96, label %idx_big_check94

str_stale86:                                      ; preds = %str_gen_check84
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok85

idx_big_check94:                                  ; preds = %str_ok85
  %idx.big97 = icmp sge i64 %addtmp92, %s.read.len81
  br i1 %idx.big97, label %idx_oob96, label %idx_ok95

idx_ok95:                                         ; preds = %idx_oob96, %idx_big_check94
  %s.byte.gep98 = getelementptr i8, ptr %s.read.data90, i64 %addtmp92
  %s.byte99 = load i8, ptr %s.byte.gep98, align 1
  %s.byte.val100 = zext i8 %s.byte99 to i64
  %call.res101 = call i64 @"json::#hexval"(i64 %s.byte.val100)
  store i64 %call.res101, ptr %var.l3, align 8
  %var.load102 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len103 = getelementptr inbounds { i64, ptr }, ptr %var.load102, i32 0, i32 0
  %s.read.len104 = load i64, ptr %s.read.len103, align 8
  %s.read.len105 = and i64 %s.read.len104, 281474976710655
  %str.tag106 = lshr i64 %s.read.len104, 48
  %str.immortal107 = icmp eq i64 %str.tag106, 0
  br i1 %str.immortal107, label %str_ok109, label %str_gen_check108

idx_oob96:                                        ; preds = %idx_big_check94, %str_ok85
  %11 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok95

str_gen_check108:                                 ; preds = %idx_ok95
  %arena.cur111 = call ptr @dva_arena_current()
  %tag.valid112 = call i1 @dva_arena_validate_tag(ptr %arena.cur111, i64 %str.tag106)
  br i1 %tag.valid112, label %str_ok109, label %str_stale110

str_ok109:                                        ; preds = %str_stale110, %str_gen_check108, %idx_ok95
  %s.read.data113 = getelementptr inbounds { i64, ptr }, ptr %var.load102, i32 0, i32 1
  %s.read.data114 = load ptr, ptr %s.read.data113, align 8
  %var.load115 = load i64, ptr %var.k, align 8
  %addtmp116 = add i64 %var.load115, 10
  %idx.neg117 = icmp slt i64 %addtmp116, 0
  br i1 %idx.neg117, label %idx_oob120, label %idx_big_check118

str_stale110:                                     ; preds = %str_gen_check108
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok109

idx_big_check118:                                 ; preds = %str_ok109
  %idx.big121 = icmp sge i64 %addtmp116, %s.read.len105
  br i1 %idx.big121, label %idx_oob120, label %idx_ok119

idx_ok119:                                        ; preds = %idx_oob120, %idx_big_check118
  %s.byte.gep122 = getelementptr i8, ptr %s.read.data114, i64 %addtmp116
  %s.byte123 = load i8, ptr %s.byte.gep122, align 1
  %s.byte.val124 = zext i8 %s.byte123 to i64
  %call.res125 = call i64 @"json::#hexval"(i64 %s.byte.val124)
  store i64 %call.res125, ptr %var.l4, align 8
  %var.load126 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len127 = getelementptr inbounds { i64, ptr }, ptr %var.load126, i32 0, i32 0
  %s.read.len128 = load i64, ptr %s.read.len127, align 8
  %s.read.len129 = and i64 %s.read.len128, 281474976710655
  %str.tag130 = lshr i64 %s.read.len128, 48
  %str.immortal131 = icmp eq i64 %str.tag130, 0
  br i1 %str.immortal131, label %str_ok133, label %str_gen_check132

idx_oob120:                                       ; preds = %idx_big_check118, %str_ok109
  %13 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok119

str_gen_check132:                                 ; preds = %idx_ok119
  %arena.cur135 = call ptr @dva_arena_current()
  %tag.valid136 = call i1 @dva_arena_validate_tag(ptr %arena.cur135, i64 %str.tag130)
  br i1 %tag.valid136, label %str_ok133, label %str_stale134

str_ok133:                                        ; preds = %str_stale134, %str_gen_check132, %idx_ok119
  %s.read.data137 = getelementptr inbounds { i64, ptr }, ptr %var.load126, i32 0, i32 1
  %s.read.data138 = load ptr, ptr %s.read.data137, align 8
  %var.load139 = load i64, ptr %var.k, align 8
  %addtmp140 = add i64 %var.load139, 11
  %idx.neg141 = icmp slt i64 %addtmp140, 0
  br i1 %idx.neg141, label %idx_oob144, label %idx_big_check142

str_stale134:                                     ; preds = %str_gen_check132
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok133

idx_big_check142:                                 ; preds = %str_ok133
  %idx.big145 = icmp sge i64 %addtmp140, %s.read.len129
  br i1 %idx.big145, label %idx_oob144, label %idx_ok143

idx_ok143:                                        ; preds = %idx_oob144, %idx_big_check142
  %s.byte.gep146 = getelementptr i8, ptr %s.read.data138, i64 %addtmp140
  %s.byte147 = load i8, ptr %s.byte.gep146, align 1
  %s.byte.val148 = zext i8 %s.byte147 to i64
  %call.res149 = call i64 @"json::#hexval"(i64 %s.byte.val148)
  store i64 %call.res149, ptr %var.l5, align 8
  %var.load150 = load i64, ptr %var.l2, align 8
  %multmp = mul i64 %var.load150, 4096
  %var.load151 = load i64, ptr %var.l3, align 8
  %multmp152 = mul i64 %var.load151, 256
  %addtmp153 = add i64 %multmp, %multmp152
  %var.load154 = load i64, ptr %var.l4, align 8
  %multmp155 = mul i64 %var.load154, 16
  %addtmp156 = add i64 %addtmp153, %multmp155
  %var.load157 = load i64, ptr %var.l5, align 8
  %addtmp158 = add i64 %addtmp156, %var.load157
  store i64 %addtmp158, ptr %var.locp, align 8
  %var.load159 = load i64, ptr %var.locp, align 8
  %cmptmp161 = icmp sge i64 %var.load159, 56320
  br i1 %cmptmp161, label %and.85.then, label %and.85.else

idx_oob144:                                       ; preds = %idx_big_check142, %str_ok133
  %15 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok143

choice.exit160:                                   ; preds = %choice.next, %choice.case
  %choice.res = phi { i1, i64 } [ %call.res174, %choice.case ], [ %ram.pay, %choice.next ]
  br label %choice.exit

choice.case:                                      ; preds = %and.85.exit
  %var.load163 = load i64, ptr %var.cp, align 8
  %subtmp = sub i64 %var.load163, 55296
  %multmp164 = mul i64 %subtmp, 1024
  %addtmp165 = add i64 65536, %multmp164
  %var.load166 = load i64, ptr %var.locp, align 8
  %subtmp167 = sub i64 %var.load166, 56320
  %addtmp168 = add i64 %addtmp165, %subtmp167
  store i64 %addtmp168, ptr %var.full_cp, align 8
  %var.load169 = load ptr, ptr %var.b, align 8
  %var.load170 = load i64, ptr %var.full_cp, align 8
  %coerce.trunc = trunc i64 %var.load170 to i32
  call void @"utf::append_rune"(ptr %var.load169, i32 %coerce.trunc)
  %var.load171 = load ptr, ptr %var.b, align 8
  %var.load172 = load i64, ptr %var.k, align 8
  %addtmp173 = add i64 %var.load172, 12
  %call.res174 = call { i1, i64 } @"json::#scan_string"(ptr %var.load171, i64 %addtmp173)
  br label %choice.exit160

choice.next:                                      ; preds = %and.85.exit
  %arena.cur175 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur175, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load176 = load i64, ptr %var.k, align 8
  %arena.cur177 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur177, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load176, ptr %rec.fld, align 8
  %rec.fld178 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld178, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit160

and.85.then:                                      ; preds = %idx_ok143
  %cmptmp162 = icmp sle i64 %var.load159, 57343
  br label %and.85.exit

and.85.else:                                      ; preds = %idx_ok143
  br label %and.85.exit

and.85.exit:                                      ; preds = %and.85.else, %and.85.then
  %and.85.phi = phi i1 [ %cmptmp162, %and.85.then ], [ %cmptmp161, %and.85.else ]
  br i1 %and.85.phi, label %choice.case, label %choice.next
}

declare void @"utf::append_rune"(ptr, i32) #1

define internal i1 @"json::#is_digit_at"(i64 %0) #1 {
entry:
  %var.p = alloca i64, align 8
  store i64 %0, ptr %var.p, align 8
  %var.load = load i64, ptr %var.p, align 8
  %var.load1 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %and.87.then, label %and.87.else

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.87.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

and.87.else:                                      ; preds = %str_ok
  br label %and.87.exit

and.87.exit:                                      ; preds = %and.87.else, %idx_ok
  %and.87.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp, %and.87.else ]
  ret i1 %and.87.phi

str_gen_check9:                                   ; preds = %and.87.then
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %and.87.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  %var.load15 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load15, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale11:                                      ; preds = %str_gen_check9
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

idx_big_check:                                    ; preds = %str_ok10
  %idx.big = icmp sge i64 %var.load15, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data14, i64 %var.load15
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_digit"(i64 %s.byte.val)
  br label %and.87.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok
}

declare i1 @"str::is_digit"(i64) #1

define internal { i1, i64 } @"json::#parse_string"() #1 {
entry:
  %var.err = alloca ptr, align 8
  %var._17 = alloca ptr, align 8
  %var.end = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var.r = alloca { i1, i64 }, align 8
  %var.b = alloca ptr, align 8
  %var.load = load i64, ptr @"var.json::#pos", align 8
  %addtmp = add i64 %var.load, 1
  store i64 %addtmp, ptr @"var.json::#pos", align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 64, i64 1)
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
  store i64 64, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load3 = load ptr, ptr %var.b, align 8
  %var.load4 = load i64, ptr @"var.json::#pos", align 8
  %call.res = call { i1, i64 } @"json::#scan_string"(ptr %var.load3, i64 %var.load4)
  store { i1, i64 } %call.res, ptr %var.r, align 8
  %var.load5 = load { i1, i64 }, ptr %var.r, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load5, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

str_overflow_abort:                               ; preds = %entry
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

choice.then:                                      ; preds = %b.buf.len1
  %ram.pay = extractvalue { i1, i64 } %var.load5, 1
  store i64 %ram.pay, ptr %var._, align 8
  store i64 %ram.pay, ptr %var.end, align 8
  %var.load6 = load i64, ptr %var.end, align 8
  %addtmp7 = add i64 %var.load6, 1
  store i64 %addtmp7, ptr @"var.json::#pos", align 8
  %arena.cur8 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load9 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load9, i32 0, i32 0
  %b.freeze.len10 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load9, i32 0, i32 1
  %b.freeze.data11 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.else:                                      ; preds = %b.buf.len1
  %ram.pay16 = extractvalue { i1, i64 } %var.load5, 1
  %pay.ptr = inttoptr i64 %ram.pay16 to ptr
  store ptr %pay.ptr, ptr %var._17, align 8
  store ptr %pay.ptr, ptr %var.err, align 8
  %var.load18 = load ptr, ptr %var.err, align 8
  %p.to.i6419 = ptrtoint ptr %var.load18 to i64
  %ram.pay20 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6419, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %b.freeze.done
  %choice.res = phi { i1, i64 } [ %ram.pay15, %b.freeze.done ], [ %ram.pay20, %choice.else ]
  ret { i1, i64 } %choice.res

b.freeze.check:                                   ; preds = %choice.then
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data11, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data11, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data11, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len10, 1
  %arena.cur12 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data11, i64 %b.freeze.len10, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len10
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then
  %b.freeze.data13 = phi ptr [ %b.freeze.data11, %choice.then ], [ %b.freeze.data11, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur14 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len10, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data13, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load9, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load9, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load9, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay15 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

define internal { i1, i64 } @"json::#parse_array"() #1 {
entry:
  %var.elems49 = alloca ptr, align 8
  %var.elems = alloca ptr, align 8
  %var.c = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.load = load i64, ptr @"var.json::#pos", align 8
  %addtmp = add i64 %var.load, 1
  store i64 %addtmp, ptr @"var.json::#pos", align 8
  %var.load1 = load i64, ptr @"var.json::#pos", align 8
  %call.res = call i64 @"json::#skip_ws"(i64 %var.load1)
  store i64 %call.res, ptr %var.p, align 8
  %var.load2 = load i64, ptr %var.p, align 8
  store i64 %var.load2, ptr @"var.json::#pos", align 8
  %var.load3 = load i64, ptr %var.p, align 8
  %var.load4 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag = lshr i64 %str.len.query5, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load19 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load19, 93
  br i1 %val.match, label %choice.case21, label %choice.next22

choice.case:                                      ; preds = %str_ok
  %var.load7 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %str.tag10 = lshr i64 %s.read.len8, 48
  %str.immortal11 = icmp eq i64 %str.tag10, 0
  br i1 %str.immortal11, label %str_ok13, label %str_gen_check12

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %var.load3, %str.len.query6
  br i1 %cmptmp, label %choice.case, label %choice.next

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check12:                                  ; preds = %choice.case
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag10)
  br i1 %tag.valid16, label %str_ok13, label %str_stale14

str_ok13:                                         ; preds = %str_stale14, %str_gen_check12, %choice.case
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %s.read.data17 = load ptr, ptr %s.read.data, align 8
  %var.load18 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load18, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale14:                                      ; preds = %str_gen_check12
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok13

idx_big_check:                                    ; preds = %str_ok13
  %idx.big = icmp sge i64 %var.load18, %s.read.len9
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data17, i64 %var.load18
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok13
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.exit20:                                    ; preds = %a.after54, %a.view.off39
  %choice.res64 = phi { i1, i64 } [ %ram.pay, %a.view.off39 ], [ %call.res63, %a.after54 ]
  ret { i1, i64 } %choice.res64

choice.case21:                                    ; preds = %choice.exit
  %var.load23 = load i64, ptr @"var.json::#pos", align 8
  %addtmp24 = add i64 %var.load23, 1
  store i64 %addtmp24, ptr @"var.json::#pos", align 8
  %arena.cur25 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 24)
  %arena.cur26 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.elems, align 8
  %arena.cur27 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 4, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load28 = load ptr, ptr %var.elems, align 8
  %a.load = load ptr, ptr %var.elems, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next22:                                    ; preds = %choice.exit
  %arena.cur42 = call ptr @dva_arena_current()
  %a.new43 = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 24)
  %arena.cur44 = call ptr @dva_arena_current()
  %a.buf45 = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 128)
  %a.len.gep46 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new43, i32 0, i32 0
  store i64 0, ptr %a.len.gep46, align 8
  %a.data.gep47 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new43, i32 0, i32 1
  store ptr %a.buf45, ptr %a.data.gep47, align 8
  %a.cap.gep48 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new43, i32 0, i32 2
  store i64 16, ptr %a.cap.gep48, align 8
  store ptr %a.new43, ptr %var.elems49, align 8
  %var.load50 = load ptr, ptr %var.elems49, align 8
  %a.load51 = load ptr, ptr %var.elems49, align 8
  %a.null52 = icmp eq ptr %a.load51, null
  br i1 %a.null52, label %a.create53, label %a.after54

a.create:                                         ; preds = %choice.case21
  %arena.cur29 = call ptr @dva_arena_current()
  %a.create30 = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 24)
  %arena.cur31 = call ptr @dva_arena_current()
  %a.buf32 = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 128)
  %a.len.gep33 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create30, i32 0, i32 0
  store i64 0, ptr %a.len.gep33, align 8
  %a.data.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create30, i32 0, i32 1
  store ptr %a.buf32, ptr %a.data.gep34, align 8
  %a.cap.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create30, i32 0, i32 2
  store i64 16, ptr %a.cap.gep35, align 8
  store ptr %a.create30, ptr %var.elems, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case21
  %a.load2 = load ptr, ptr %var.elems, align 8
  %a.view.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.view.len36 = load i64, ptr %a.view.len, align 8
  %rel.start = add i64 %a.view.len36, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %a.view.len36
  %final.start = select i1 %start.gt.len, i64 %a.view.len36, i64 %c.start.0
  %rel.end = add i64 %a.view.len36, 0
  %norm.end = select i1 false, i64 %rel.end, i64 0
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %a.view.len36
  %final.end = select i1 %end.gt.len, i64 %a.view.len36, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %a.view.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.view.data37 = load ptr, ptr %a.view.data, align 8
  %a.view.off = mul i64 %final.start, 8
  %a.view.off38 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %a.view.off, i64 0)
  %sum = extractvalue { i64, i1 } %a.view.off38, 0
  %ovf = extractvalue { i64, i1 } %a.view.off38, 1
  br i1 %ovf, label %str_overflow_abort, label %a.view.off39

a.view.off39:                                     ; preds = %str_overflow_abort, %a.after
  %a.view.data40 = getelementptr i8, ptr %a.view.data37, i64 %sum
  %a.view.len.tagged = or i64 %view.len, 4611686018427387904
  %arena.cur41 = call ptr @dva_arena_current()
  %a.view.slice = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 16)
  %a.view.data.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 0
  store ptr %a.view.data40, ptr %a.view.data.gep, align 8
  %a.view.len.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 1
  store i64 %a.view.len.tagged, ptr %a.view.len.gep, align 8
  store ptr %a.view.slice, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit20

str_overflow_abort:                               ; preds = %a.after
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %a.view.off39

a.create53:                                       ; preds = %choice.next22
  %arena.cur55 = call ptr @dva_arena_current()
  %a.create56 = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 24)
  %arena.cur57 = call ptr @dva_arena_current()
  %a.buf58 = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 128)
  %a.len.gep59 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create56, i32 0, i32 0
  store i64 0, ptr %a.len.gep59, align 8
  %a.data.gep60 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create56, i32 0, i32 1
  store ptr %a.buf58, ptr %a.data.gep60, align 8
  %a.cap.gep61 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create56, i32 0, i32 2
  store i64 16, ptr %a.cap.gep61, align 8
  store ptr %a.create56, ptr %var.elems49, align 8
  br label %a.after54

a.after54:                                        ; preds = %a.create53, %choice.next22
  %a.load262 = load ptr, ptr %var.elems49, align 8
  %call.res63 = call { i1, i64 } @"json::#parse_array_loop"(ptr %a.load262)
  br label %choice.exit20
}

define internal { i1, i64 } @"json::#parse_array_loop"(ptr %0) #1 {
entry:
  %var.v = alloca { i1, i64 }, align 8
  %var.elems = alloca ptr, align 8
  store ptr %0, ptr %var.elems, align 8
  %call.res = call { i1, i64 } @"json::#parse_value"()
  store { i1, i64 } %call.res, ptr %var.v, align 8
  %var.load = load ptr, ptr %var.elems, align 8
  %a.load = load ptr, ptr %var.elems, align 8
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
  store ptr %a.create1, ptr %var.elems, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.elems, align 8
  %var.load3 = load { i1, i64 }, ptr %var.v, align 8
  %call.res4 = call { i1, i64 } @"json::#parse_array_after_value"(ptr %a.load2, { i1, i64 } %var.load3)
  ret { i1, i64 } %call.res4
}

define internal { i1, i64 } @"json::#parse_value"() #1 {
entry:
  %var.c = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.load = load i64, ptr @"var.json::#pos", align 8
  %call.res = call i64 @"json::#skip_ws"(i64 %var.load)
  store i64 %call.res, ptr %var.p, align 8
  %var.load1 = load i64, ptr %var.p, align 8
  store i64 %var.load1, ptr @"var.json::#pos", align 8
  %var.load2 = load i64, ptr %var.p, align 8
  %var.load3 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query4 = load i64, ptr %str.len.query, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %str.tag = lshr i64 %str.len.query4, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load18 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load18, 34
  br i1 %val.match, label %choice.case20, label %choice.next21

choice.case:                                      ; preds = %str_ok
  %var.load6 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %str.tag9 = lshr i64 %s.read.len7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %var.load2, %str.len.query5
  br i1 %cmptmp, label %choice.case, label %choice.next

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check11:                                  ; preds = %choice.case
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid15 = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %str.tag9)
  br i1 %tag.valid15, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %choice.case
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %var.load17 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load17, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale13:                                      ; preds = %str_gen_check11
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

idx_big_check:                                    ; preds = %str_ok12
  %idx.big = icmp sge i64 %var.load17, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok12
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.exit19:                                    ; preds = %choice.next40, %choice.case39, %choice.case35, %choice.case31, %choice.case27, %choice.case23, %choice.case20
  %choice.res44 = phi { i1, i64 } [ %call.res22, %choice.case20 ], [ %call.res26, %choice.case23 ], [ %call.res30, %choice.case27 ], [ %call.res34, %choice.case31 ], [ %call.res38, %choice.case35 ], [ %call.res42, %choice.case39 ], [ %call.res43, %choice.next40 ]
  ret { i1, i64 } %choice.res44

choice.case20:                                    ; preds = %choice.exit
  %call.res22 = call { i1, i64 } @"json::#parse_string"()
  br label %choice.exit19

choice.next21:                                    ; preds = %choice.exit
  %val.match25 = icmp eq i64 %var.load18, 123
  br i1 %val.match25, label %choice.case23, label %choice.next24

choice.case23:                                    ; preds = %choice.next21
  %call.res26 = call { i1, i64 } @"json::#parse_object"()
  br label %choice.exit19

choice.next24:                                    ; preds = %choice.next21
  %val.match29 = icmp eq i64 %var.load18, 91
  br i1 %val.match29, label %choice.case27, label %choice.next28

choice.case27:                                    ; preds = %choice.next24
  %call.res30 = call { i1, i64 } @"json::#parse_array"()
  br label %choice.exit19

choice.next28:                                    ; preds = %choice.next24
  %val.match33 = icmp eq i64 %var.load18, 116
  br i1 %val.match33, label %choice.case31, label %choice.next32

choice.case31:                                    ; preds = %choice.next28
  %call.res34 = call { i1, i64 } @"json::#parse_lit"(i1 true, i64 4)
  br label %choice.exit19

choice.next32:                                    ; preds = %choice.next28
  %val.match37 = icmp eq i64 %var.load18, 102
  br i1 %val.match37, label %choice.case35, label %choice.next36

choice.case35:                                    ; preds = %choice.next32
  %call.res38 = call { i1, i64 } @"json::#parse_lit"(i1 false, i64 5)
  br label %choice.exit19

choice.next36:                                    ; preds = %choice.next32
  %val.match41 = icmp eq i64 %var.load18, 110
  br i1 %val.match41, label %choice.case39, label %choice.next40

choice.case39:                                    ; preds = %choice.next36
  %call.res42 = call { i1, i64 } @"json::#parse_null"()
  br label %choice.exit19

choice.next40:                                    ; preds = %choice.next36
  %call.res43 = call { i1, i64 } @"json::#parse_number"()
  br label %choice.exit19
}

define internal { i1, i64 } @"json::#parse_object"() #1 {
entry:
  %var.entries49 = alloca ptr, align 8
  %var.entries = alloca ptr, align 8
  %var.c = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.load = load i64, ptr @"var.json::#pos", align 8
  %addtmp = add i64 %var.load, 1
  store i64 %addtmp, ptr @"var.json::#pos", align 8
  %var.load1 = load i64, ptr @"var.json::#pos", align 8
  %call.res = call i64 @"json::#skip_ws"(i64 %var.load1)
  store i64 %call.res, ptr %var.p, align 8
  %var.load2 = load i64, ptr %var.p, align 8
  store i64 %var.load2, ptr @"var.json::#pos", align 8
  %var.load3 = load i64, ptr %var.p, align 8
  %var.load4 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag = lshr i64 %str.len.query5, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load19 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load19, 125
  br i1 %val.match, label %choice.case21, label %choice.next22

choice.case:                                      ; preds = %str_ok
  %var.load7 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %str.tag10 = lshr i64 %s.read.len8, 48
  %str.immortal11 = icmp eq i64 %str.tag10, 0
  br i1 %str.immortal11, label %str_ok13, label %str_gen_check12

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %var.load3, %str.len.query6
  br i1 %cmptmp, label %choice.case, label %choice.next

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check12:                                  ; preds = %choice.case
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag10)
  br i1 %tag.valid16, label %str_ok13, label %str_stale14

str_ok13:                                         ; preds = %str_stale14, %str_gen_check12, %choice.case
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %s.read.data17 = load ptr, ptr %s.read.data, align 8
  %var.load18 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load18, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale14:                                      ; preds = %str_gen_check12
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok13

idx_big_check:                                    ; preds = %str_ok13
  %idx.big = icmp sge i64 %var.load18, %s.read.len9
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data17, i64 %var.load18
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok13
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.exit20:                                    ; preds = %a.after54, %a.view.off39
  %choice.res64 = phi { i1, i64 } [ %ram.pay, %a.view.off39 ], [ %call.res63, %a.after54 ]
  ret { i1, i64 } %choice.res64

choice.case21:                                    ; preds = %choice.exit
  %var.load23 = load i64, ptr @"var.json::#pos", align 8
  %addtmp24 = add i64 %var.load23, 1
  store i64 %addtmp24, ptr @"var.json::#pos", align 8
  %arena.cur25 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 24)
  %arena.cur26 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.entries, align 8
  %arena.cur27 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 5, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load28 = load ptr, ptr %var.entries, align 8
  %a.load = load ptr, ptr %var.entries, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next22:                                    ; preds = %choice.exit
  %arena.cur42 = call ptr @dva_arena_current()
  %a.new43 = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 24)
  %arena.cur44 = call ptr @dva_arena_current()
  %a.buf45 = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 128)
  %a.len.gep46 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new43, i32 0, i32 0
  store i64 0, ptr %a.len.gep46, align 8
  %a.data.gep47 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new43, i32 0, i32 1
  store ptr %a.buf45, ptr %a.data.gep47, align 8
  %a.cap.gep48 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new43, i32 0, i32 2
  store i64 16, ptr %a.cap.gep48, align 8
  store ptr %a.new43, ptr %var.entries49, align 8
  %var.load50 = load ptr, ptr %var.entries49, align 8
  %a.load51 = load ptr, ptr %var.entries49, align 8
  %a.null52 = icmp eq ptr %a.load51, null
  br i1 %a.null52, label %a.create53, label %a.after54

a.create:                                         ; preds = %choice.case21
  %arena.cur29 = call ptr @dva_arena_current()
  %a.create30 = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 24)
  %arena.cur31 = call ptr @dva_arena_current()
  %a.buf32 = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 128)
  %a.len.gep33 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create30, i32 0, i32 0
  store i64 0, ptr %a.len.gep33, align 8
  %a.data.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create30, i32 0, i32 1
  store ptr %a.buf32, ptr %a.data.gep34, align 8
  %a.cap.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create30, i32 0, i32 2
  store i64 16, ptr %a.cap.gep35, align 8
  store ptr %a.create30, ptr %var.entries, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case21
  %a.load2 = load ptr, ptr %var.entries, align 8
  %a.view.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.view.len36 = load i64, ptr %a.view.len, align 8
  %rel.start = add i64 %a.view.len36, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %a.view.len36
  %final.start = select i1 %start.gt.len, i64 %a.view.len36, i64 %c.start.0
  %rel.end = add i64 %a.view.len36, 0
  %norm.end = select i1 false, i64 %rel.end, i64 0
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %a.view.len36
  %final.end = select i1 %end.gt.len, i64 %a.view.len36, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %a.view.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.view.data37 = load ptr, ptr %a.view.data, align 8
  %a.view.off = mul i64 %final.start, 8
  %a.view.off38 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %a.view.off, i64 0)
  %sum = extractvalue { i64, i1 } %a.view.off38, 0
  %ovf = extractvalue { i64, i1 } %a.view.off38, 1
  br i1 %ovf, label %str_overflow_abort, label %a.view.off39

a.view.off39:                                     ; preds = %str_overflow_abort, %a.after
  %a.view.data40 = getelementptr i8, ptr %a.view.data37, i64 %sum
  %a.view.len.tagged = or i64 %view.len, 4611686018427387904
  %arena.cur41 = call ptr @dva_arena_current()
  %a.view.slice = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 16)
  %a.view.data.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 0
  store ptr %a.view.data40, ptr %a.view.data.gep, align 8
  %a.view.len.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 1
  store i64 %a.view.len.tagged, ptr %a.view.len.gep, align 8
  store ptr %a.view.slice, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit20

str_overflow_abort:                               ; preds = %a.after
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %a.view.off39

a.create53:                                       ; preds = %choice.next22
  %arena.cur55 = call ptr @dva_arena_current()
  %a.create56 = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 24)
  %arena.cur57 = call ptr @dva_arena_current()
  %a.buf58 = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 128)
  %a.len.gep59 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create56, i32 0, i32 0
  store i64 0, ptr %a.len.gep59, align 8
  %a.data.gep60 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create56, i32 0, i32 1
  store ptr %a.buf58, ptr %a.data.gep60, align 8
  %a.cap.gep61 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create56, i32 0, i32 2
  store i64 16, ptr %a.cap.gep61, align 8
  store ptr %a.create56, ptr %var.entries49, align 8
  br label %a.after54

a.after54:                                        ; preds = %a.create53, %choice.next22
  %a.load262 = load ptr, ptr %var.entries49, align 8
  %call.res63 = call { i1, i64 } @"json::#parse_object_loop"(ptr %a.load262)
  br label %choice.exit20
}

define internal { i1, i64 } @"json::#parse_object_loop"(ptr %0) #1 {
entry:
  %var.k = alloca { i1, i64 }, align 8
  %var.c = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.entries = alloca ptr, align 8
  store ptr %0, ptr %var.entries, align 8
  %var.load = load i64, ptr @"var.json::#pos", align 8
  %call.res = call i64 @"json::#skip_ws"(i64 %var.load)
  store i64 %call.res, ptr %var.p, align 8
  %var.load1 = load i64, ptr %var.p, align 8
  store i64 %var.load1, ptr @"var.json::#pos", align 8
  %var.load2 = load i64, ptr %var.p, align 8
  %var.load3 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query4 = load i64, ptr %str.len.query, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %str.tag = lshr i64 %str.len.query4, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load18 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load18, 34
  br i1 %val.match, label %choice.case20, label %choice.next21

choice.case:                                      ; preds = %str_ok
  %var.load6 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %str.tag9 = lshr i64 %s.read.len7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %var.load2, %str.len.query5
  br i1 %cmptmp, label %choice.case, label %choice.next

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check11:                                  ; preds = %choice.case
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid15 = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %str.tag9)
  br i1 %tag.valid15, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %choice.case
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %var.load17 = load i64, ptr %var.p, align 8
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
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok12
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.exit19:                                    ; preds = %choice.next21, %a.after
  %choice.res33 = phi { i1, i64 } [ %call.res28, %a.after ], [ %ram.pay, %choice.next21 ]
  ret { i1, i64 } %choice.res33

choice.case20:                                    ; preds = %choice.exit
  %call.res22 = call { i1, i64 } @"json::#parse_string"()
  store { i1, i64 } %call.res22, ptr %var.k, align 8
  %var.load23 = load ptr, ptr %var.entries, align 8
  %a.load = load ptr, ptr %var.entries, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next21:                                    ; preds = %choice.exit
  %arena.cur29 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.15.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load30 = load i64, ptr %var.p, align 8
  %arena.cur31 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load30, ptr %rec.fld, align 8
  %rec.fld32 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld32, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit19

a.create:                                         ; preds = %choice.case20
  %arena.cur24 = call ptr @dva_arena_current()
  %a.create25 = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 24)
  %arena.cur26 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create25, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create25, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create25, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create25, ptr %var.entries, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case20
  %a.load2 = load ptr, ptr %var.entries, align 8
  %var.load27 = load { i1, i64 }, ptr %var.k, align 8
  %call.res28 = call { i1, i64 } @"json::#parse_object_after_key"(ptr %a.load2, { i1, i64 } %var.load27)
  br label %choice.exit19
}

define internal { i1, i64 } @"json::#parse_object_after_key"(ptr %0, { i1, i64 } %1) #1 {
entry:
  %var.e = alloca ptr, align 8
  %var._64 = alloca ptr, align 8
  %var.v = alloca { i1, i64 }, align 8
  %var.ok_col = alloca i1, align 1
  %var.p = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var._3 = alloca ptr, align 8
  %var.key = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.k = alloca { i1, i64 }, align 8
  %var.entries = alloca ptr, align 8
  store ptr %0, ptr %var.entries, align 8
  store { i1, i64 } %1, ptr %var.k, align 8
  %var.load = load { i1, i64 }, ptr %var.k, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.key, align 8
  %var.load1 = load ptr, ptr %var.key, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.else:                                      ; preds = %entry
  %ram.pay62 = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr63 = inttoptr i64 %ram.pay62 to ptr
  store ptr %pay.ptr63, ptr %var._64, align 8
  store ptr %pay.ptr63, ptr %var.e, align 8
  %var.load65 = load ptr, ptr %var.e, align 8
  %p.to.i6466 = ptrtoint ptr %var.load65 to i64
  %ram.pay67 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6466, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit2
  %choice.res68 = phi { i1, i64 } [ %choice.res61, %choice.exit2 ], [ %ram.pay67, %choice.else ]
  ret { i1, i64 } %choice.res68

choice.exit2:                                     ; preds = %choice.next, %choice.exit26
  %choice.res61 = phi { i1, i64 } [ %choice.res, %choice.exit26 ], [ %ram.pay60, %choice.next ]
  br label %choice.exit

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._3, align 8
  store ptr %payload.ptr, ptr %var.s, align 8
  %var.load4 = load i64, ptr @"var.json::#pos", align 8
  %call.res = call i64 @"json::#skip_ws"(i64 %var.load4)
  store i64 %call.res, ptr %var.p, align 8
  %var.load5 = load i64, ptr %var.p, align 8
  store i64 %var.load5, ptr @"var.json::#pos", align 8
  %var.load6 = load i64, ptr %var.p, align 8
  %var.load7 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %str.len.query8 = load i64, ptr %str.len.query, align 8
  %str.len.query9 = and i64 %str.len.query8, 281474976710655
  %str.tag = lshr i64 %str.len.query8, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.next:                                      ; preds = %choice.then
  %arena.cur41 = call ptr @dva_arena_current()
  %err.alloc42 = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 56)
  %err.code.gep43 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc42, i32 0, i32 0
  store i64 400, ptr %err.code.gep43, align 8
  %err.msg.gep44 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc42, i32 0, i32 1
  store ptr @str.14.struct, ptr %err.msg.gep44, align 8
  %err.file.gep45 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc42, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep45, align 8
  %err.line.gep46 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc42, i32 0, i32 3
  store i64 0, ptr %err.line.gep46, align 8
  %err.col.gep47 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc42, i32 0, i32 4
  store i64 0, ptr %err.col.gep47, align 8
  %err.ctx.gep48 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc42, i32 0, i32 5
  %arena.cur49 = call ptr @dva_arena_current()
  %rec.alloc50 = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld51 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc50, i32 0, i32 0
  store i64 0, ptr %rec.fld51, align 8
  %rec.fld52 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc50, i32 0, i32 1
  store i64 0, ptr %rec.fld52, align 8
  %ctx.0.gep53 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc50, i32 0, i32 0
  %ctx.054 = load i64, ptr %ctx.0.gep53, align 8
  %ctx.1.gep55 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc50, i32 0, i32 1
  %ctx.156 = load i64, ptr %ctx.1.gep55, align 8
  %err.ctx0.gep57 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep48, i32 0, i32 0
  store i64 %ctx.054, ptr %err.ctx0.gep57, align 8
  %err.ctx1.gep58 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep48, i32 0, i32 1
  store i64 %ctx.156, ptr %err.ctx1.gep58, align 8
  %p.to.i6459 = ptrtoint ptr %err.alloc42 to i64
  %ram.pay60 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6459, 1
  br label %choice.exit2

str_gen_check:                                    ; preds = %choice.case
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.case
  %cmptmp = icmp slt i64 %var.load6, %str.len.query9
  br i1 %cmptmp, label %and.88.then, label %and.88.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.88.then:                                      ; preds = %str_ok
  %var.load10 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %str.tag13 = lshr i64 %s.read.len11, 48
  %str.immortal14 = icmp eq i64 %str.tag13, 0
  br i1 %str.immortal14, label %str_ok16, label %str_gen_check15

and.88.else:                                      ; preds = %str_ok
  br label %and.88.exit

and.88.exit:                                      ; preds = %and.88.else, %idx_ok
  %and.88.phi = phi i1 [ %cmptmp22, %idx_ok ], [ %cmptmp, %and.88.else ]
  store i1 %and.88.phi, ptr %var.ok_col, align 1
  %var.load23 = load i1, ptr %var.ok_col, align 1
  br i1 %var.load23, label %choice.then24, label %choice.else25

str_gen_check15:                                  ; preds = %and.88.then
  %arena.cur18 = call ptr @dva_arena_current()
  %tag.valid19 = call i1 @dva_arena_validate_tag(ptr %arena.cur18, i64 %str.tag13)
  br i1 %tag.valid19, label %str_ok16, label %str_stale17

str_ok16:                                         ; preds = %str_stale17, %str_gen_check15, %and.88.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data20 = load ptr, ptr %s.read.data, align 8
  %var.load21 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load21, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale17:                                      ; preds = %str_gen_check15
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok16

idx_big_check:                                    ; preds = %str_ok16
  %idx.big = icmp sge i64 %var.load21, %s.read.len12
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data20, i64 %var.load21
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp22 = icmp eq i64 %s.byte.val, 58
  br label %and.88.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok16
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then24:                                    ; preds = %and.88.exit
  %var.load27 = load i64, ptr @"var.json::#pos", align 8
  %addtmp = add i64 %var.load27, 1
  store i64 %addtmp, ptr @"var.json::#pos", align 8
  %call.res28 = call { i1, i64 } @"json::#parse_value"()
  store { i1, i64 } %call.res28, ptr %var.v, align 8
  %var.load29 = load ptr, ptr %var.entries, align 8
  %a.load = load ptr, ptr %var.entries, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else25:                                    ; preds = %and.88.exit
  %arena.cur36 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.13.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load37 = load i64, ptr %var.p, align 8
  %arena.cur38 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load37, ptr %rec.fld, align 8
  %rec.fld39 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld39, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay40 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit26

choice.exit26:                                    ; preds = %choice.else25, %a.after
  %choice.res = phi { i1, i64 } [ %call.res35, %a.after ], [ %ram.pay40, %choice.else25 ]
  br label %choice.exit2

a.create:                                         ; preds = %choice.then24
  %arena.cur30 = call ptr @dva_arena_current()
  %a.create31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 24)
  %arena.cur32 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create31, ptr %var.entries, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then24
  %a.load2 = load ptr, ptr %var.entries, align 8
  %var.load33 = load ptr, ptr %var.s, align 8
  %var.load34 = load { i1, i64 }, ptr %var.v, align 8
  %call.res35 = call { i1, i64 } @"json::#parse_object_after_val"(ptr %a.load2, ptr %var.load33, { i1, i64 } %var.load34)
  br label %choice.exit26
}

define internal { i1, i64 } @"json::#parse_object_after_val"(ptr %0, ptr %1, { i1, i64 } %2) #1 {
entry:
  %var.e2 = alloca ptr, align 8
  %var._170 = alloca ptr, align 8
  %var.c2 = alloca i64, align 8
  %var.p2 = alloca i64, align 8
  %var.m = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.val = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.v = alloca { i1, i64 }, align 8
  %var.s = alloca ptr, align 8
  %var.entries = alloca ptr, align 8
  store ptr %0, ptr %var.entries, align 8
  store ptr %1, ptr %var.s, align 8
  store { i1, i64 } %2, ptr %var.v, align 8
  %var.load = load { i1, i64 }, ptr %var.v, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.val, align 8
  %var.load1 = load ptr, ptr %var.s, align 8
  %var.load2 = load ptr, ptr %var.val, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load1, ptr %rec.fld, align 8
  %rec.fld3 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load2, ptr %rec.fld3, align 8
  %a.load = load ptr, ptr %var.entries, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else:                                      ; preds = %entry
  %ram.pay168 = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr169 = inttoptr i64 %ram.pay168 to ptr
  store ptr %pay.ptr169, ptr %var._170, align 8
  store ptr %pay.ptr169, ptr %var.e2, align 8
  %var.load171 = load ptr, ptr %var.e2, align 8
  %p.to.i64172 = ptrtoint ptr %var.load171 to i64
  %ram.pay173 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64172, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit32
  %choice.res174 = phi { i1, i64 } [ %choice.res167, %choice.exit32 ], [ %ram.pay173, %choice.else ]
  ret { i1, i64 } %choice.res174

a.create:                                         ; preds = %choice.then
  %arena.cur4 = call ptr @dva_arena_current()
  %a.create5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 24)
  %arena.cur6 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create5, ptr %var.entries, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.entries, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len7 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap8 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len7, %a.cap8
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data9 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len10 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data9, i64 %a.cur.len10
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len10, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load11 = load i64, ptr @"var.json::#pos", align 8
  %call.res = call i64 @"json::#skip_ws"(i64 %var.load11)
  store i64 %call.res, ptr %var.p, align 8
  %var.load12 = load i64, ptr %var.p, align 8
  store i64 %var.load12, ptr @"var.json::#pos", align 8
  %var.load13 = load i64, ptr %var.p, align 8
  %var.load15 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 0
  %str.len.query16 = load i64, ptr %str.len.query, align 8
  %str.len.query17 = and i64 %str.len.query16, 281474976710655
  %str.tag = lshr i64 %str.len.query16, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit14:                                    ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load31 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load31, 125
  br i1 %val.match, label %choice.case33, label %choice.next34

choice.case:                                      ; preds = %str_ok
  %var.load19 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 0
  %s.read.len20 = load i64, ptr %s.read.len, align 8
  %s.read.len21 = and i64 %s.read.len20, 281474976710655
  %str.tag22 = lshr i64 %s.read.len20, 48
  %str.immortal23 = icmp eq i64 %str.tag22, 0
  br i1 %str.immortal23, label %str_ok25, label %str_gen_check24

choice.next:                                      ; preds = %str_ok
  br label %choice.exit14

str_gen_check:                                    ; preds = %a.store
  %arena.cur18 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur18, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %a.store
  %cmptmp = icmp slt i64 %var.load13, %str.len.query17
  br i1 %cmptmp, label %choice.case, label %choice.next

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check24:                                  ; preds = %choice.case
  %arena.cur27 = call ptr @dva_arena_current()
  %tag.valid28 = call i1 @dva_arena_validate_tag(ptr %arena.cur27, i64 %str.tag22)
  br i1 %tag.valid28, label %str_ok25, label %str_stale26

str_ok25:                                         ; preds = %str_stale26, %str_gen_check24, %choice.case
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data, align 8
  %var.load30 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load30, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale26:                                      ; preds = %str_gen_check24
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok25

idx_big_check:                                    ; preds = %str_ok25
  %idx.big = icmp sge i64 %var.load30, %s.read.len21
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data29, i64 %var.load30
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit14

idx_oob:                                          ; preds = %idx_big_check, %str_ok25
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.exit32:                                    ; preds = %choice.next73, %choice.exit119, %a.view.off68
  %choice.res167 = phi { i1, i64 } [ %ram.pay71, %a.view.off68 ], [ %choice.res145, %choice.exit119 ], [ %ram.pay166, %choice.next73 ]
  br label %choice.exit

choice.case33:                                    ; preds = %choice.exit14
  %var.load35 = load i64, ptr @"var.json::#pos", align 8
  %addtmp = add i64 %var.load35, 1
  store i64 %addtmp, ptr @"var.json::#pos", align 8
  %var.load36 = load ptr, ptr %var.entries, align 8
  %a.load37 = load ptr, ptr %var.entries, align 8
  %a.null38 = icmp eq ptr %a.load37, null
  br i1 %a.null38, label %a.create39, label %a.after40

choice.next34:                                    ; preds = %choice.exit14
  %val.match74 = icmp eq i64 %var.load31, 44
  br i1 %val.match74, label %choice.case72, label %choice.next73

a.create39:                                       ; preds = %choice.case33
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

a.after40:                                        ; preds = %a.create39, %choice.case33
  %a.load248 = load ptr, ptr %var.entries, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load248, i32 0, i32 0
  %a.len.query49 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query49, ptr %var.m, align 8
  %arena.cur50 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 5, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load51 = load ptr, ptr %var.entries, align 8
  %a.load52 = load ptr, ptr %var.entries, align 8
  %a.null53 = icmp eq ptr %a.load52, null
  br i1 %a.null53, label %a.create54, label %a.after55

a.create54:                                       ; preds = %a.after40
  %arena.cur56 = call ptr @dva_arena_current()
  %a.create57 = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 24)
  %arena.cur58 = call ptr @dva_arena_current()
  %a.buf59 = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 128)
  %a.len.gep60 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create57, i32 0, i32 0
  store i64 0, ptr %a.len.gep60, align 8
  %a.data.gep61 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create57, i32 0, i32 1
  store ptr %a.buf59, ptr %a.data.gep61, align 8
  %a.cap.gep62 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create57, i32 0, i32 2
  store i64 16, ptr %a.cap.gep62, align 8
  store ptr %a.create57, ptr %var.entries, align 8
  br label %a.after55

a.after55:                                        ; preds = %a.create54, %a.after40
  %a.load263 = load ptr, ptr %var.entries, align 8
  %var.load64 = load i64, ptr %var.m, align 8
  %a.view.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load263, i32 0, i32 0
  %a.view.len65 = load i64, ptr %a.view.len, align 8
  %rel.start = add i64 %a.view.len65, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %a.view.len65
  %final.start = select i1 %start.gt.len, i64 %a.view.len65, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load64, 0
  %rel.end = add i64 %a.view.len65, %var.load64
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load64
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %a.view.len65
  %final.end = select i1 %end.gt.len, i64 %a.view.len65, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %a.view.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load263, i32 0, i32 1
  %a.view.data66 = load ptr, ptr %a.view.data, align 8
  %a.view.off = mul i64 %final.start, 8
  %a.view.off67 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %a.view.off, i64 0)
  %sum = extractvalue { i64, i1 } %a.view.off67, 0
  %ovf = extractvalue { i64, i1 } %a.view.off67, 1
  br i1 %ovf, label %str_overflow_abort, label %a.view.off68

a.view.off68:                                     ; preds = %str_overflow_abort, %a.after55
  %a.view.data69 = getelementptr i8, ptr %a.view.data66, i64 %sum
  %a.view.len.tagged = or i64 %view.len, 4611686018427387904
  %arena.cur70 = call ptr @dva_arena_current()
  %a.view.slice = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 16)
  %a.view.data.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 0
  store ptr %a.view.data69, ptr %a.view.data.gep, align 8
  %a.view.len.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 1
  store i64 %a.view.len.tagged, ptr %a.view.len.gep, align 8
  store ptr %a.view.slice, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay71 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit32

str_overflow_abort:                               ; preds = %a.after55
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %a.view.off68

choice.case72:                                    ; preds = %choice.next34
  %var.load75 = load i64, ptr @"var.json::#pos", align 8
  %addtmp76 = add i64 %var.load75, 1
  store i64 %addtmp76, ptr @"var.json::#pos", align 8
  %var.load77 = load i64, ptr @"var.json::#pos", align 8
  %call.res78 = call i64 @"json::#skip_ws"(i64 %var.load77)
  store i64 %call.res78, ptr %var.p2, align 8
  %var.load79 = load i64, ptr %var.p2, align 8
  %var.load83 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query84 = getelementptr inbounds { i64, ptr }, ptr %var.load83, i32 0, i32 0
  %str.len.query85 = load i64, ptr %str.len.query84, align 8
  %str.len.query86 = and i64 %str.len.query85, 281474976710655
  %str.tag87 = lshr i64 %str.len.query85, 48
  %str.immortal88 = icmp eq i64 %str.tag87, 0
  br i1 %str.immortal88, label %str_ok90, label %str_gen_check89

choice.next73:                                    ; preds = %choice.next34
  %arena.cur146 = call ptr @dva_arena_current()
  %err.alloc147 = call ptr @dva_arena_alloc(ptr %arena.cur146, i64 56)
  %err.code.gep148 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc147, i32 0, i32 0
  store i64 400, ptr %err.code.gep148, align 8
  %err.msg.gep149 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc147, i32 0, i32 1
  store ptr @str.12.struct, ptr %err.msg.gep149, align 8
  %err.file.gep150 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc147, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep150, align 8
  %err.line.gep151 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc147, i32 0, i32 3
  store i64 0, ptr %err.line.gep151, align 8
  %err.col.gep152 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc147, i32 0, i32 4
  store i64 0, ptr %err.col.gep152, align 8
  %err.ctx.gep153 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc147, i32 0, i32 5
  %var.load154 = load i64, ptr %var.p, align 8
  %arena.cur155 = call ptr @dva_arena_current()
  %rec.alloc156 = call ptr @dva_arena_alloc(ptr %arena.cur155, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld157 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc156, i32 0, i32 0
  store i64 %var.load154, ptr %rec.fld157, align 8
  %rec.fld158 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc156, i32 0, i32 1
  store i64 0, ptr %rec.fld158, align 8
  %ctx.0.gep159 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc156, i32 0, i32 0
  %ctx.0160 = load i64, ptr %ctx.0.gep159, align 8
  %ctx.1.gep161 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc156, i32 0, i32 1
  %ctx.1162 = load i64, ptr %ctx.1.gep161, align 8
  %err.ctx0.gep163 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep153, i32 0, i32 0
  store i64 %ctx.0160, ptr %err.ctx0.gep163, align 8
  %err.ctx1.gep164 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep153, i32 0, i32 1
  store i64 %ctx.1162, ptr %err.ctx1.gep164, align 8
  %p.to.i64165 = ptrtoint ptr %err.alloc147 to i64
  %ram.pay166 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64165, 1
  br label %choice.exit32

choice.exit80:                                    ; preds = %choice.next82, %idx_ok111
  %choice.res117 = phi i64 [ %s.byte.val116, %idx_ok111 ], [ -1, %choice.next82 ]
  store i64 %choice.res117, ptr %var.c2, align 8
  %var.load118 = load i64, ptr %var.c2, align 8
  %val.match122 = icmp eq i64 %var.load118, 125
  br i1 %val.match122, label %choice.case120, label %choice.next121

choice.case81:                                    ; preds = %str_ok90
  %var.load95 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len96 = getelementptr inbounds { i64, ptr }, ptr %var.load95, i32 0, i32 0
  %s.read.len97 = load i64, ptr %s.read.len96, align 8
  %s.read.len98 = and i64 %s.read.len97, 281474976710655
  %str.tag99 = lshr i64 %s.read.len97, 48
  %str.immortal100 = icmp eq i64 %str.tag99, 0
  br i1 %str.immortal100, label %str_ok102, label %str_gen_check101

choice.next82:                                    ; preds = %str_ok90
  br label %choice.exit80

str_gen_check89:                                  ; preds = %choice.case72
  %arena.cur92 = call ptr @dva_arena_current()
  %tag.valid93 = call i1 @dva_arena_validate_tag(ptr %arena.cur92, i64 %str.tag87)
  br i1 %tag.valid93, label %str_ok90, label %str_stale91

str_ok90:                                         ; preds = %str_stale91, %str_gen_check89, %choice.case72
  %cmptmp94 = icmp slt i64 %var.load79, %str.len.query86
  br i1 %cmptmp94, label %choice.case81, label %choice.next82

str_stale91:                                      ; preds = %str_gen_check89
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok90

str_gen_check101:                                 ; preds = %choice.case81
  %arena.cur104 = call ptr @dva_arena_current()
  %tag.valid105 = call i1 @dva_arena_validate_tag(ptr %arena.cur104, i64 %str.tag99)
  br i1 %tag.valid105, label %str_ok102, label %str_stale103

str_ok102:                                        ; preds = %str_stale103, %str_gen_check101, %choice.case81
  %s.read.data106 = getelementptr inbounds { i64, ptr }, ptr %var.load95, i32 0, i32 1
  %s.read.data107 = load ptr, ptr %s.read.data106, align 8
  %var.load108 = load i64, ptr %var.p2, align 8
  %idx.neg109 = icmp slt i64 %var.load108, 0
  br i1 %idx.neg109, label %idx_oob112, label %idx_big_check110

str_stale103:                                     ; preds = %str_gen_check101
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok102

idx_big_check110:                                 ; preds = %str_ok102
  %idx.big113 = icmp sge i64 %var.load108, %s.read.len98
  br i1 %idx.big113, label %idx_oob112, label %idx_ok111

idx_ok111:                                        ; preds = %idx_oob112, %idx_big_check110
  %s.byte.gep114 = getelementptr i8, ptr %s.read.data107, i64 %var.load108
  %s.byte115 = load i8, ptr %s.byte.gep114, align 1
  %s.byte.val116 = zext i8 %s.byte115 to i64
  br label %choice.exit80

idx_oob112:                                       ; preds = %idx_big_check110, %str_ok102
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok111

choice.exit119:                                   ; preds = %a.after135, %choice.case120
  %choice.res145 = phi { i1, i64 } [ %ram.pay130, %choice.case120 ], [ %call.res144, %a.after135 ]
  br label %choice.exit32

choice.case120:                                   ; preds = %choice.exit80
  %arena.cur123 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur123, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.11.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load124 = load i64, ptr %var.p2, align 8
  %arena.cur125 = call ptr @dva_arena_current()
  %rec.alloc126 = call ptr @dva_arena_alloc(ptr %arena.cur125, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld127 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc126, i32 0, i32 0
  store i64 %var.load124, ptr %rec.fld127, align 8
  %rec.fld128 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc126, i32 0, i32 1
  store i64 0, ptr %rec.fld128, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc126, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc126, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64129 = ptrtoint ptr %err.alloc to i64
  %ram.pay130 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64129, 1
  br label %choice.exit119

choice.next121:                                   ; preds = %choice.exit80
  %var.load131 = load ptr, ptr %var.entries, align 8
  %a.load132 = load ptr, ptr %var.entries, align 8
  %a.null133 = icmp eq ptr %a.load132, null
  br i1 %a.null133, label %a.create134, label %a.after135

a.create134:                                      ; preds = %choice.next121
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
  store ptr %a.create137, ptr %var.entries, align 8
  br label %a.after135

a.after135:                                       ; preds = %a.create134, %choice.next121
  %a.load2143 = load ptr, ptr %var.entries, align 8
  %call.res144 = call { i1, i64 } @"json::#parse_object_loop"(ptr %a.load2143)
  br label %choice.exit119
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

define internal { i1, i64 } @"json::#parse_lit"(i1 %0, i64 %1) #1 {
entry:
  %var.ok = alloca i1, align 1
  %var.word = alloca ptr, align 8
  %var.p = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.tag = alloca i1, align 1
  store i1 %0, ptr %var.tag, align 1
  store i64 %1, ptr %var.len, align 8
  %var.load = load i64, ptr @"var.json::#pos", align 8
  %call.res = call i64 @"json::#skip_ws"(i64 %var.load)
  store i64 %call.res, ptr %var.p, align 8
  %var.load1 = load i64, ptr %var.p, align 8
  store i64 %var.load1, ptr @"var.json::#pos", align 8
  %var.load2 = load i1, ptr %var.tag, align 1
  br i1 %var.load2, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.0.struct, %choice.then ], [ @str.1.struct, %choice.else ]
  store ptr %choice.res, ptr %var.word, align 8
  %var.load3 = load i64, ptr %var.p, align 8
  %var.load4 = load i64, ptr %var.len, align 8
  %addtmp = add i64 %var.load3, %var.load4
  %var.load5 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %str.tag = lshr i64 %str.len.query6, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %cmptmp = icmp sle i64 %addtmp, %str.len.query7
  br i1 %cmptmp, label %and.89.then, label %and.89.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.89.then:                                      ; preds = %str_ok
  %var.load8 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 0
  %s.read.len9 = load i64, ptr %s.read.len, align 8
  %s.read.len10 = and i64 %s.read.len9, 281474976710655
  %str.tag11 = lshr i64 %s.read.len9, 48
  %str.immortal12 = icmp eq i64 %str.tag11, 0
  br i1 %str.immortal12, label %str_ok14, label %str_gen_check13

and.89.else:                                      ; preds = %str_ok
  br label %and.89.exit

and.89.exit:                                      ; preds = %and.89.else, %str.eq.merge
  %and.89.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.89.else ]
  store i1 %and.89.phi, ptr %var.ok, align 1
  %var.load45 = load i1, ptr %var.ok, align 1
  br i1 %var.load45, label %choice.then46, label %choice.else47

str_gen_check13:                                  ; preds = %and.89.then
  %arena.cur16 = call ptr @dva_arena_current()
  %tag.valid17 = call i1 @dva_arena_validate_tag(ptr %arena.cur16, i64 %str.tag11)
  br i1 %tag.valid17, label %str_ok14, label %str_stale15

str_ok14:                                         ; preds = %str_stale15, %str_gen_check13, %and.89.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 1
  %s.read.data18 = load ptr, ptr %s.read.data, align 8
  %var.load19 = load i64, ptr %var.p, align 8
  %var.load20 = load i64, ptr %var.p, align 8
  %var.load21 = load i64, ptr %var.len, align 8
  %addtmp22 = add i64 %var.load20, %var.load21
  %start.is_neg = icmp slt i64 %var.load19, 0
  %rel.start = add i64 %s.read.len10, %var.load19
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load19
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len10
  %final.start = select i1 %start.gt.len, i64 %s.read.len10, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp22, 0
  %rel.end = add i64 %s.read.len10, %addtmp22
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp22
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len10
  %final.end = select i1 %end.gt.len, i64 %s.read.len10, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data18, i64 %final.start
  %arena.cur23 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %var.load24 = load ptr, ptr %var.word, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len25 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len26 = and i64 %eq.lhs.len25, 281474976710655
  %str.tag27 = lshr i64 %eq.lhs.len25, 48
  %str.immortal28 = icmp eq i64 %str.tag27, 0
  br i1 %str.immortal28, label %str_ok30, label %str_gen_check29

str_stale15:                                      ; preds = %str_gen_check13
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok14

str_gen_check29:                                  ; preds = %str_ok14
  %arena.cur32 = call ptr @dva_arena_current()
  %tag.valid33 = call i1 @dva_arena_validate_tag(ptr %arena.cur32, i64 %str.tag27)
  br i1 %tag.valid33, label %str_ok30, label %str_stale31

str_ok30:                                         ; preds = %str_stale31, %str_gen_check29, %str_ok14
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 0
  %eq.rhs.len34 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len35 = and i64 %eq.rhs.len34, 281474976710655
  %str.tag36 = lshr i64 %eq.rhs.len34, 48
  %str.immortal37 = icmp eq i64 %str.tag36, 0
  br i1 %str.immortal37, label %str_ok39, label %str_gen_check38

str_stale31:                                      ; preds = %str_gen_check29
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok30

str_gen_check38:                                  ; preds = %str_ok30
  %arena.cur41 = call ptr @dva_arena_current()
  %tag.valid42 = call i1 @dva_arena_validate_tag(ptr %arena.cur41, i64 %str.tag36)
  br i1 %tag.valid42, label %str_ok39, label %str_stale40

str_ok39:                                         ; preds = %str_stale40, %str_gen_check38, %str_ok30
  %eq.len = icmp eq i64 %eq.lhs.len26, %eq.rhs.len35
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale40:                                      ; preds = %str_gen_check38
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok39

str.eq.then:                                      ; preds = %str_ok39
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data43 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 1
  %eq.rhs.data44 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data43, ptr %eq.rhs.data44, i64 %eq.lhs.len26)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok39
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.89.exit

choice.then46:                                    ; preds = %and.89.exit
  %var.load49 = load i64, ptr %var.p, align 8
  %var.load50 = load i64, ptr %var.len, align 8
  %addtmp51 = add i64 %var.load49, %var.load50
  store i64 %addtmp51, ptr @"var.json::#pos", align 8
  %arena.cur52 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 2, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load53 = load i1, ptr %var.tag, align 1
  %arena.cur54 = call ptr @dva_arena_current()
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store i1 %var.load53, ptr %enum.pay.alloc, align 1
  store ptr %enum.pay.alloc, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit48

choice.else47:                                    ; preds = %and.89.exit
  %arena.cur55 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.16.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load56 = load i64, ptr %var.p, align 8
  %arena.cur57 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load56, ptr %rec.fld, align 8
  %rec.fld58 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld58, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i6459 = ptrtoint ptr %err.alloc to i64
  %ram.pay60 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6459, 1
  br label %choice.exit48

choice.exit48:                                    ; preds = %choice.else47, %choice.then46
  %choice.res61 = phi { i1, i64 } [ %ram.pay, %choice.then46 ], [ %ram.pay60, %choice.else47 ]
  ret { i1, i64 } %choice.res61
}

declare i32 @memcmp(ptr, ptr, i64)

define internal { i1, i64 } @"json::#parse_null"() #1 {
entry:
  %var.ok = alloca i1, align 1
  %var.p = alloca i64, align 8
  %var.load = load i64, ptr @"var.json::#pos", align 8
  %call.res = call i64 @"json::#skip_ws"(i64 %var.load)
  store i64 %call.res, ptr %var.p, align 8
  %var.load1 = load i64, ptr %var.p, align 8
  store i64 %var.load1, ptr @"var.json::#pos", align 8
  %var.load2 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load2, 4
  %var.load3 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query4 = load i64, ptr %str.len.query, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %str.tag = lshr i64 %str.len.query4, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp sle i64 %addtmp, %str.len.query5
  br i1 %cmptmp, label %and.90.then, label %and.90.else

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.90.then:                                      ; preds = %str_ok
  %var.load6 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %str.tag9 = lshr i64 %s.read.len7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

and.90.else:                                      ; preds = %str_ok
  br label %and.90.exit

and.90.exit:                                      ; preds = %and.90.else, %str.eq.merge
  %and.90.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.90.else ]
  store i1 %and.90.phi, ptr %var.ok, align 1
  %var.load39 = load i1, ptr %var.ok, align 1
  br i1 %var.load39, label %choice.then, label %choice.else

str_gen_check11:                                  ; preds = %and.90.then
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid15 = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %str.tag9)
  br i1 %tag.valid15, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %and.90.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %var.load17 = load i64, ptr %var.p, align 8
  %var.load18 = load i64, ptr %var.p, align 8
  %addtmp19 = add i64 %var.load18, 4
  %start.is_neg = icmp slt i64 %var.load17, 0
  %rel.start = add i64 %s.read.len8, %var.load17
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load17
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len8
  %final.start = select i1 %start.gt.len, i64 %s.read.len8, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp19, 0
  %rel.end = add i64 %s.read.len8, %addtmp19
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp19
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len8
  %final.end = select i1 %end.gt.len, i64 %s.read.len8, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data16, i64 %final.start
  %arena.cur20 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len21 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len22 = and i64 %eq.lhs.len21, 281474976710655
  %str.tag23 = lshr i64 %eq.lhs.len21, 48
  %str.immortal24 = icmp eq i64 %str.tag23, 0
  br i1 %str.immortal24, label %str_ok26, label %str_gen_check25

str_stale13:                                      ; preds = %str_gen_check11
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

str_gen_check25:                                  ; preds = %str_ok12
  %arena.cur28 = call ptr @dva_arena_current()
  %tag.valid29 = call i1 @dva_arena_validate_tag(ptr %arena.cur28, i64 %str.tag23)
  br i1 %tag.valid29, label %str_ok26, label %str_stale27

str_ok26:                                         ; preds = %str_stale27, %str_gen_check25, %str_ok12
  %eq.rhs.len = load i64, ptr @str.17.struct, align 8
  %eq.rhs.len30 = and i64 %eq.rhs.len, 281474976710655
  %str.tag31 = lshr i64 %eq.rhs.len, 48
  %str.immortal32 = icmp eq i64 %str.tag31, 0
  br i1 %str.immortal32, label %str_ok34, label %str_gen_check33

str_stale27:                                      ; preds = %str_gen_check25
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok26

str_gen_check33:                                  ; preds = %str_ok26
  %arena.cur36 = call ptr @dva_arena_current()
  %tag.valid37 = call i1 @dva_arena_validate_tag(ptr %arena.cur36, i64 %str.tag31)
  br i1 %tag.valid37, label %str_ok34, label %str_stale35

str_ok34:                                         ; preds = %str_stale35, %str_gen_check33, %str_ok26
  %eq.len = icmp eq i64 %eq.lhs.len22, %eq.rhs.len30
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale35:                                      ; preds = %str_gen_check33
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok34

str.eq.then:                                      ; preds = %str_ok34
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data38 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data38, ptr %eq.rhs.data, i64 %eq.lhs.len22)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok34
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.90.exit

choice.then:                                      ; preds = %and.90.exit
  %var.load40 = load i64, ptr %var.p, align 8
  %addtmp41 = add i64 %var.load40, 4
  store i64 %addtmp41, ptr @"var.json::#pos", align 8
  %arena.cur42 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 3, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit

choice.else:                                      ; preds = %and.90.exit
  %arena.cur43 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.18.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load44 = load i64, ptr %var.p, align 8
  %arena.cur45 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load44, ptr %rec.fld, align 8
  %rec.fld46 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld46, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i6447 = ptrtoint ptr %err.alloc to i64
  %ram.pay48 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6447, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi { i1, i64 } [ %ram.pay, %choice.then ], [ %ram.pay48, %choice.else ]
  ret { i1, i64 } %choice.res
}

define internal { i1, i64 } @"json::#parse_number"() #1 {
entry:
  %var.f = alloca double, align 8
  %var.valid = alloca i1, align 1
  %var._506 = alloca i64, align 8
  %var._i505 = alloca i64, align 8
  %loop.step.107 = alloca i64, align 8
  %loop.idx.107 = alloca i64, align 8
  %var.abs_e = alloca i64, align 8
  %var.eclamp = alloca i64, align 8
  %var.exp_val = alloca i64, align 8
  %var.ed = alloca i64, align 8
  %var.ec = alloca i64, align 8
  %var._396 = alloca i64, align 8
  %var._i395 = alloca i64, align 8
  %loop.step.105 = alloca i64, align 8
  %loop.idx.105 = alloca i64, align 8
  %"var.had_exp_digits'" = alloca i1, align 1
  %"var.over_exp'" = alloca i1, align 1
  %"var.ev'" = alloca i64, align 8
  %var.plus = alloca i1, align 1
  %var.e0 = alloca i64, align 8
  %"var.eneg'" = alloca i1, align 1
  %"var.p3'" = alloca i64, align 8
  %"var.had_exp'" = alloca i1, align 1
  %var.has_exp = alloca i1, align 1
  %var.d249 = alloca i64, align 8
  %var.c239 = alloca i64, align 8
  %var._201 = alloca i64, align 8
  %var._i200 = alloca i64, align 8
  %loop.step.100 = alloca i64, align 8
  %loop.idx.100 = alloca i64, align 8
  %"var.had_frac'" = alloca i1, align 1
  %var.has_dot = alloca i1, align 1
  %var.d = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.96 = alloca i64, align 8
  %loop.idx.96 = alloca i64, align 8
  %"var.exp10'" = alloca i64, align 8
  %"var.fv'" = alloca double, align 8
  %"var.sig_digits'" = alloca i64, align 8
  %"var.had_int'" = alloca i1, align 1
  %"var.p2'" = alloca i64, align 8
  %var.has_leading_zero = alloca i1, align 1
  %"var.neg'" = alloca i1, align 1
  %var.is_num_start = alloca i1, align 1
  %var.c0 = alloca i64, align 8
  %"var.p'" = alloca i64, align 8
  %var.load = load i64, ptr @"var.json::#pos", align 8
  %call.res = call i64 @"json::#skip_ws"(i64 %var.load)
  store i64 %call.res, ptr %"var.p'", align 8
  %var.load1 = load i64, ptr %"var.p'", align 8
  store i64 %var.load1, ptr @"var.json::#pos", align 8
  %var.load2 = load i64, ptr %"var.p'", align 8
  %var.load3 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query4 = load i64, ptr %str.len.query, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %str.tag = lshr i64 %str.len.query4, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c0, align 8
  %var.load18 = load i64, ptr %var.c0, align 8
  %cmptmp19 = icmp sge i64 %var.load18, 48
  br i1 %cmptmp19, label %and.91.then, label %and.91.else

choice.case:                                      ; preds = %str_ok
  %var.load6 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %str.tag9 = lshr i64 %s.read.len7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %var.load2, %str.len.query5
  br i1 %cmptmp, label %choice.case, label %choice.next

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check11:                                  ; preds = %choice.case
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid15 = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %str.tag9)
  br i1 %tag.valid15, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %choice.case
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %var.load17 = load i64, ptr %"var.p'", align 8
  %idx.neg = icmp slt i64 %var.load17, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale13:                                      ; preds = %str_gen_check11
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

idx_big_check:                                    ; preds = %str_ok12
  %idx.big = icmp sge i64 %var.load17, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok12
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.91.then:                                      ; preds = %choice.exit
  %var.load20 = load i64, ptr %var.c0, align 8
  %cmptmp21 = icmp sle i64 %var.load20, 57
  br label %and.91.exit

and.91.else:                                      ; preds = %choice.exit
  br label %and.91.exit

and.91.exit:                                      ; preds = %and.91.else, %and.91.then
  %and.91.phi = phi i1 [ %cmptmp21, %and.91.then ], [ %cmptmp19, %and.91.else ]
  br i1 %and.91.phi, label %or.92.then, label %or.92.else

or.92.then:                                       ; preds = %and.91.exit
  br label %or.92.exit

or.92.else:                                       ; preds = %and.91.exit
  %var.load22 = load i64, ptr %var.c0, align 8
  %cmptmp23 = icmp eq i64 %var.load22, 45
  br label %or.92.exit

or.92.exit:                                       ; preds = %or.92.else, %or.92.then
  %or.92.phi = phi i1 [ %and.91.phi, %or.92.then ], [ %cmptmp23, %or.92.else ]
  store i1 %or.92.phi, ptr %var.is_num_start, align 1
  %var.load24 = load i1, ptr %var.is_num_start, align 1
  br i1 %var.load24, label %choice.then, label %choice.else

choice.then:                                      ; preds = %or.92.exit
  store i1 false, ptr %"var.neg'", align 1
  %var.load26 = load i64, ptr %var.c0, align 8
  %val.match = icmp eq i64 %var.load26, 45
  br i1 %val.match, label %choice.case28, label %choice.next29

choice.else:                                      ; preds = %or.92.exit
  %arena.cur564 = call ptr @dva_arena_current()
  %err.alloc565 = call ptr @dva_arena_alloc(ptr %arena.cur564, i64 56)
  %err.code.gep566 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc565, i32 0, i32 0
  store i64 400, ptr %err.code.gep566, align 8
  %err.msg.gep567 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc565, i32 0, i32 1
  store ptr @str.21.struct, ptr %err.msg.gep567, align 8
  %err.file.gep568 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc565, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep568, align 8
  %err.line.gep569 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc565, i32 0, i32 3
  store i64 0, ptr %err.line.gep569, align 8
  %err.col.gep570 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc565, i32 0, i32 4
  store i64 0, ptr %err.col.gep570, align 8
  %err.ctx.gep571 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc565, i32 0, i32 5
  %var.load572 = load i64, ptr %"var.p'", align 8
  %arena.cur573 = call ptr @dva_arena_current()
  %rec.alloc574 = call ptr @dva_arena_alloc(ptr %arena.cur573, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld575 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc574, i32 0, i32 0
  store i64 %var.load572, ptr %rec.fld575, align 8
  %rec.fld576 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc574, i32 0, i32 1
  store i64 0, ptr %rec.fld576, align 8
  %ctx.0.gep577 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc574, i32 0, i32 0
  %ctx.0578 = load i64, ptr %ctx.0.gep577, align 8
  %ctx.1.gep579 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc574, i32 0, i32 1
  %ctx.1580 = load i64, ptr %ctx.1.gep579, align 8
  %err.ctx0.gep581 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep571, i32 0, i32 0
  store i64 %ctx.0578, ptr %err.ctx0.gep581, align 8
  %err.ctx1.gep582 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep571, i32 0, i32 1
  store i64 %ctx.1580, ptr %err.ctx1.gep582, align 8
  %p.to.i64583 = ptrtoint ptr %err.alloc565 to i64
  %ram.pay584 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64583, 1
  br label %choice.exit25

choice.exit25:                                    ; preds = %choice.else, %choice.exit87
  %choice.res585 = phi { i1, i64 } [ %choice.res563, %choice.exit87 ], [ %ram.pay584, %choice.else ]
  ret { i1, i64 } %choice.res585

choice.exit27:                                    ; preds = %choice.next29, %choice.case28
  %var.load31 = load i64, ptr %"var.p'", align 8
  %var.load32 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query33 = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 0
  %str.len.query34 = load i64, ptr %str.len.query33, align 8
  %str.len.query35 = and i64 %str.len.query34, 281474976710655
  %str.tag36 = lshr i64 %str.len.query34, 48
  %str.immortal37 = icmp eq i64 %str.tag36, 0
  br i1 %str.immortal37, label %str_ok39, label %str_gen_check38

choice.case28:                                    ; preds = %choice.then
  store i1 true, ptr %"var.neg'", align 1
  %var.load30 = load i64, ptr %"var.p'", align 8
  %addtmp = add i64 %var.load30, 1
  store i64 %addtmp, ptr %"var.p'", align 8
  br label %choice.exit27

choice.next29:                                    ; preds = %choice.then
  br label %choice.exit27

str_gen_check38:                                  ; preds = %choice.exit27
  %arena.cur41 = call ptr @dva_arena_current()
  %tag.valid42 = call i1 @dva_arena_validate_tag(ptr %arena.cur41, i64 %str.tag36)
  br i1 %tag.valid42, label %str_ok39, label %str_stale40

str_ok39:                                         ; preds = %str_stale40, %str_gen_check38, %choice.exit27
  %cmptmp43 = icmp slt i64 %var.load31, %str.len.query35
  br i1 %cmptmp43, label %and.93.then, label %and.93.else

str_stale40:                                      ; preds = %str_gen_check38
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok39

and.93.then:                                      ; preds = %str_ok39
  %var.load44 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len45 = getelementptr inbounds { i64, ptr }, ptr %var.load44, i32 0, i32 0
  %s.read.len46 = load i64, ptr %s.read.len45, align 8
  %s.read.len47 = and i64 %s.read.len46, 281474976710655
  %str.tag48 = lshr i64 %s.read.len46, 48
  %str.immortal49 = icmp eq i64 %str.tag48, 0
  br i1 %str.immortal49, label %str_ok51, label %str_gen_check50

and.93.else:                                      ; preds = %str_ok39
  br label %and.93.exit

and.93.exit:                                      ; preds = %and.93.else, %idx_ok60
  %and.93.phi = phi i1 [ %cmptmp66, %idx_ok60 ], [ %cmptmp43, %and.93.else ]
  br i1 %and.93.phi, label %and.94.then, label %and.94.else

str_gen_check50:                                  ; preds = %and.93.then
  %arena.cur53 = call ptr @dva_arena_current()
  %tag.valid54 = call i1 @dva_arena_validate_tag(ptr %arena.cur53, i64 %str.tag48)
  br i1 %tag.valid54, label %str_ok51, label %str_stale52

str_ok51:                                         ; preds = %str_stale52, %str_gen_check50, %and.93.then
  %s.read.data55 = getelementptr inbounds { i64, ptr }, ptr %var.load44, i32 0, i32 1
  %s.read.data56 = load ptr, ptr %s.read.data55, align 8
  %var.load57 = load i64, ptr %"var.p'", align 8
  %idx.neg58 = icmp slt i64 %var.load57, 0
  br i1 %idx.neg58, label %idx_oob61, label %idx_big_check59

str_stale52:                                      ; preds = %str_gen_check50
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok51

idx_big_check59:                                  ; preds = %str_ok51
  %idx.big62 = icmp sge i64 %var.load57, %s.read.len47
  br i1 %idx.big62, label %idx_oob61, label %idx_ok60

idx_ok60:                                         ; preds = %idx_oob61, %idx_big_check59
  %s.byte.gep63 = getelementptr i8, ptr %s.read.data56, i64 %var.load57
  %s.byte64 = load i8, ptr %s.byte.gep63, align 1
  %s.byte.val65 = zext i8 %s.byte64 to i64
  %cmptmp66 = icmp eq i64 %s.byte.val65, 48
  br label %and.93.exit

idx_oob61:                                        ; preds = %idx_big_check59, %str_ok51
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok60

and.94.then:                                      ; preds = %and.93.exit
  %var.load67 = load i64, ptr %"var.p'", align 8
  %addtmp68 = add i64 %var.load67, 1
  %var.load69 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query70 = getelementptr inbounds { i64, ptr }, ptr %var.load69, i32 0, i32 0
  %str.len.query71 = load i64, ptr %str.len.query70, align 8
  %str.len.query72 = and i64 %str.len.query71, 281474976710655
  %str.tag73 = lshr i64 %str.len.query71, 48
  %str.immortal74 = icmp eq i64 %str.tag73, 0
  br i1 %str.immortal74, label %str_ok76, label %str_gen_check75

and.94.else:                                      ; preds = %and.93.exit
  br label %and.94.exit

and.94.exit:                                      ; preds = %and.94.else, %str_ok76
  %and.94.phi = phi i1 [ %cmptmp80, %str_ok76 ], [ %and.93.phi, %and.94.else ]
  br i1 %and.94.phi, label %and.95.then, label %and.95.else

str_gen_check75:                                  ; preds = %and.94.then
  %arena.cur78 = call ptr @dva_arena_current()
  %tag.valid79 = call i1 @dva_arena_validate_tag(ptr %arena.cur78, i64 %str.tag73)
  br i1 %tag.valid79, label %str_ok76, label %str_stale77

str_ok76:                                         ; preds = %str_stale77, %str_gen_check75, %and.94.then
  %cmptmp80 = icmp slt i64 %addtmp68, %str.len.query72
  br label %and.94.exit

str_stale77:                                      ; preds = %str_gen_check75
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok76

and.95.then:                                      ; preds = %and.94.exit
  %var.load81 = load i64, ptr %"var.p'", align 8
  %addtmp82 = add i64 %var.load81, 1
  %call.res83 = call i1 @"json::#is_digit_at"(i64 %addtmp82)
  br label %and.95.exit

and.95.else:                                      ; preds = %and.94.exit
  br label %and.95.exit

and.95.exit:                                      ; preds = %and.95.else, %and.95.then
  %and.95.phi = phi i1 [ %call.res83, %and.95.then ], [ %and.94.phi, %and.95.else ]
  store i1 %and.95.phi, ptr %var.has_leading_zero, align 1
  %var.load84 = load i1, ptr %var.has_leading_zero, align 1
  br i1 %var.load84, label %choice.then85, label %choice.else86

choice.then85:                                    ; preds = %and.95.exit
  %arena.cur88 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load89 = load i64, ptr %"var.p'", align 8
  %arena.cur90 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur90, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load89, ptr %rec.fld, align 8
  %rec.fld91 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld91, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit87

choice.else86:                                    ; preds = %and.95.exit
  %var.load92 = load i64, ptr %"var.p'", align 8
  store i64 %var.load92, ptr %"var.p2'", align 8
  store i1 false, ptr %"var.had_int'", align 1
  store i64 0, ptr %"var.sig_digits'", align 8
  store double 0.000000e+00, ptr %"var.fv'", align 8
  store i64 0, ptr %"var.exp10'", align 8
  store i64 0, ptr %loop.idx.96, align 8
  br label %loop.header.96

choice.exit87:                                    ; preds = %choice.exit527, %choice.then85
  %choice.res563 = phi { i1, i64 } [ %ram.pay, %choice.then85 ], [ %choice.res562, %choice.exit527 ]
  br label %choice.exit25

loop.header.96:                                   ; preds = %loop.latch.96, %choice.else86
  %counter.load = load i64, ptr %loop.idx.96, align 8
  br label %loop.body.96

loop.body.96:                                     ; preds = %loop.header.96
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.96, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load93 = load i64, ptr %"var.p2'", align 8
  %var.load94 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query95 = getelementptr inbounds { i64, ptr }, ptr %var.load94, i32 0, i32 0
  %str.len.query96 = load i64, ptr %str.len.query95, align 8
  %str.len.query97 = and i64 %str.len.query96, 281474976710655
  %str.tag98 = lshr i64 %str.len.query96, 48
  %str.immortal99 = icmp eq i64 %str.tag98, 0
  br i1 %str.immortal99, label %str_ok101, label %str_gen_check100

loop.exit.nat.96:                                 ; No predecessors!
  br label %loop.exit.96

loop.latch.96:                                    ; preds = %choice.exit136
  %step.val = load i64, ptr %loop.step.96, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.96, align 8
  br label %loop.header.96

loop.exit.96:                                     ; preds = %choice.else135, %choice.then106, %loop.exit.nat.96
  %var.load157 = load i64, ptr %"var.p2'", align 8
  %var.load158 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query159 = getelementptr inbounds { i64, ptr }, ptr %var.load158, i32 0, i32 0
  %str.len.query160 = load i64, ptr %str.len.query159, align 8
  %str.len.query161 = and i64 %str.len.query160, 281474976710655
  %str.tag162 = lshr i64 %str.len.query160, 48
  %str.immortal163 = icmp eq i64 %str.tag162, 0
  br i1 %str.immortal163, label %str_ok165, label %str_gen_check164

str_gen_check100:                                 ; preds = %loop.body.96
  %arena.cur103 = call ptr @dva_arena_current()
  %tag.valid104 = call i1 @dva_arena_validate_tag(ptr %arena.cur103, i64 %str.tag98)
  br i1 %tag.valid104, label %str_ok101, label %str_stale102

str_ok101:                                        ; preds = %str_stale102, %str_gen_check100, %loop.body.96
  %cmptmp105 = icmp sge i64 %var.load93, %str.len.query97
  br i1 %cmptmp105, label %choice.then106, label %choice.exit107

str_stale102:                                     ; preds = %str_gen_check100
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok101

choice.then106:                                   ; preds = %str_ok101
  br label %loop.exit.96

choice.exit107:                                   ; preds = %str_ok101
  %var.load108 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len109 = getelementptr inbounds { i64, ptr }, ptr %var.load108, i32 0, i32 0
  %s.read.len110 = load i64, ptr %s.read.len109, align 8
  %s.read.len111 = and i64 %s.read.len110, 281474976710655
  %str.tag112 = lshr i64 %s.read.len110, 48
  %str.immortal113 = icmp eq i64 %str.tag112, 0
  br i1 %str.immortal113, label %str_ok115, label %str_gen_check114

str_gen_check114:                                 ; preds = %choice.exit107
  %arena.cur117 = call ptr @dva_arena_current()
  %tag.valid118 = call i1 @dva_arena_validate_tag(ptr %arena.cur117, i64 %str.tag112)
  br i1 %tag.valid118, label %str_ok115, label %str_stale116

str_ok115:                                        ; preds = %str_stale116, %str_gen_check114, %choice.exit107
  %s.read.data119 = getelementptr inbounds { i64, ptr }, ptr %var.load108, i32 0, i32 1
  %s.read.data120 = load ptr, ptr %s.read.data119, align 8
  %var.load121 = load i64, ptr %"var.p2'", align 8
  %idx.neg122 = icmp slt i64 %var.load121, 0
  br i1 %idx.neg122, label %idx_oob125, label %idx_big_check123

str_stale116:                                     ; preds = %str_gen_check114
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok115

idx_big_check123:                                 ; preds = %str_ok115
  %idx.big126 = icmp sge i64 %var.load121, %s.read.len111
  br i1 %idx.big126, label %idx_oob125, label %idx_ok124

idx_ok124:                                        ; preds = %idx_oob125, %idx_big_check123
  %s.byte.gep127 = getelementptr i8, ptr %s.read.data120, i64 %var.load121
  %s.byte128 = load i8, ptr %s.byte.gep127, align 1
  %s.byte.val129 = zext i8 %s.byte128 to i64
  store i64 %s.byte.val129, ptr %var.c, align 8
  %var.load130 = load i64, ptr %var.c, align 8
  %cmptmp131 = icmp sge i64 %var.load130, 48
  br i1 %cmptmp131, label %and.97.then, label %and.97.else

idx_oob125:                                       ; preds = %idx_big_check123, %str_ok115
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok124

and.97.then:                                      ; preds = %idx_ok124
  %var.load132 = load i64, ptr %var.c, align 8
  %cmptmp133 = icmp sle i64 %var.load132, 57
  br label %and.97.exit

and.97.else:                                      ; preds = %idx_ok124
  br label %and.97.exit

and.97.exit:                                      ; preds = %and.97.else, %and.97.then
  %and.97.phi = phi i1 [ %cmptmp133, %and.97.then ], [ %cmptmp131, %and.97.else ]
  br i1 %and.97.phi, label %choice.then134, label %choice.else135

choice.then134:                                   ; preds = %and.97.exit
  store i1 true, ptr %"var.had_int'", align 1
  %var.load137 = load i64, ptr %var.c, align 8
  %subtmp = sub i64 %var.load137, 48
  store i64 %subtmp, ptr %var.d, align 8
  %var.load138 = load i64, ptr %"var.sig_digits'", align 8
  %cmptmp139 = icmp sgt i64 %var.load138, 0
  br i1 %cmptmp139, label %or.98.then, label %or.98.else

choice.else135:                                   ; preds = %and.97.exit
  br label %loop.exit.96

choice.exit136:                                   ; preds = %choice.exit143
  br label %loop.latch.96

or.98.then:                                       ; preds = %choice.then134
  br label %or.98.exit

or.98.else:                                       ; preds = %choice.then134
  %var.load140 = load i64, ptr %var.d, align 8
  %cmptmp141 = icmp ne i64 %var.load140, 0
  br label %or.98.exit

or.98.exit:                                       ; preds = %or.98.else, %or.98.then
  %or.98.phi = phi i1 [ %cmptmp139, %or.98.then ], [ %cmptmp141, %or.98.else ]
  br i1 %or.98.phi, label %choice.then142, label %choice.exit143

choice.then142:                                   ; preds = %or.98.exit
  %var.load144 = load i64, ptr %"var.sig_digits'", align 8
  %cmptmp145 = icmp slt i64 %var.load144, 17
  br i1 %cmptmp145, label %choice.then146, label %choice.else147

choice.exit143:                                   ; preds = %choice.exit148, %or.98.exit
  %var.load155 = load i64, ptr %"var.p2'", align 8
  %addtmp156 = add i64 %var.load155, 1
  store i64 %addtmp156, ptr %"var.p2'", align 8
  br label %choice.exit136

choice.then146:                                   ; preds = %choice.then142
  %var.load149 = load double, ptr %"var.fv'", align 8
  %fmultmp = fmul double %var.load149, 1.000000e+01
  %var.load150 = load i64, ptr %var.d, align 8
  %cast.sitofp = sitofp i64 %var.load150 to double
  %faddtmp = fadd double %fmultmp, %cast.sitofp
  store double %faddtmp, ptr %"var.fv'", align 8
  %var.load151 = load i64, ptr %"var.sig_digits'", align 8
  %addtmp152 = add i64 %var.load151, 1
  store i64 %addtmp152, ptr %"var.sig_digits'", align 8
  br label %choice.exit148

choice.else147:                                   ; preds = %choice.then142
  %var.load153 = load i64, ptr %"var.exp10'", align 8
  %addtmp154 = add i64 %var.load153, 1
  store i64 %addtmp154, ptr %"var.exp10'", align 8
  br label %choice.exit148

choice.exit148:                                   ; preds = %choice.else147, %choice.then146
  br label %choice.exit143

str_gen_check164:                                 ; preds = %loop.exit.96
  %arena.cur167 = call ptr @dva_arena_current()
  %tag.valid168 = call i1 @dva_arena_validate_tag(ptr %arena.cur167, i64 %str.tag162)
  br i1 %tag.valid168, label %str_ok165, label %str_stale166

str_ok165:                                        ; preds = %str_stale166, %str_gen_check164, %loop.exit.96
  %cmptmp169 = icmp slt i64 %var.load157, %str.len.query161
  br i1 %cmptmp169, label %and.99.then, label %and.99.else

str_stale166:                                     ; preds = %str_gen_check164
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok165

and.99.then:                                      ; preds = %str_ok165
  %var.load170 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len171 = getelementptr inbounds { i64, ptr }, ptr %var.load170, i32 0, i32 0
  %s.read.len172 = load i64, ptr %s.read.len171, align 8
  %s.read.len173 = and i64 %s.read.len172, 281474976710655
  %str.tag174 = lshr i64 %s.read.len172, 48
  %str.immortal175 = icmp eq i64 %str.tag174, 0
  br i1 %str.immortal175, label %str_ok177, label %str_gen_check176

and.99.else:                                      ; preds = %str_ok165
  br label %and.99.exit

and.99.exit:                                      ; preds = %and.99.else, %idx_ok186
  %and.99.phi = phi i1 [ %cmptmp192, %idx_ok186 ], [ %cmptmp169, %and.99.else ]
  store i1 %and.99.phi, ptr %var.has_dot, align 1
  store i1 false, ptr %"var.had_frac'", align 1
  %var.load193 = load i1, ptr %var.has_dot, align 1
  br i1 %var.load193, label %choice.then194, label %choice.exit195

str_gen_check176:                                 ; preds = %and.99.then
  %arena.cur179 = call ptr @dva_arena_current()
  %tag.valid180 = call i1 @dva_arena_validate_tag(ptr %arena.cur179, i64 %str.tag174)
  br i1 %tag.valid180, label %str_ok177, label %str_stale178

str_ok177:                                        ; preds = %str_stale178, %str_gen_check176, %and.99.then
  %s.read.data181 = getelementptr inbounds { i64, ptr }, ptr %var.load170, i32 0, i32 1
  %s.read.data182 = load ptr, ptr %s.read.data181, align 8
  %var.load183 = load i64, ptr %"var.p2'", align 8
  %idx.neg184 = icmp slt i64 %var.load183, 0
  br i1 %idx.neg184, label %idx_oob187, label %idx_big_check185

str_stale178:                                     ; preds = %str_gen_check176
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok177

idx_big_check185:                                 ; preds = %str_ok177
  %idx.big188 = icmp sge i64 %var.load183, %s.read.len173
  br i1 %idx.big188, label %idx_oob187, label %idx_ok186

idx_ok186:                                        ; preds = %idx_oob187, %idx_big_check185
  %s.byte.gep189 = getelementptr i8, ptr %s.read.data182, i64 %var.load183
  %s.byte190 = load i8, ptr %s.byte.gep189, align 1
  %s.byte.val191 = zext i8 %s.byte190 to i64
  %cmptmp192 = icmp eq i64 %s.byte.val191, 46
  br label %and.99.exit

idx_oob187:                                       ; preds = %idx_big_check185, %str_ok177
  %12 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok186

choice.then194:                                   ; preds = %and.99.exit
  %var.load196 = load i64, ptr %"var.p2'", align 8
  %addtmp197 = add i64 %var.load196, 1
  store i64 %addtmp197, ptr %"var.p2'", align 8
  store i64 0, ptr %loop.idx.100, align 8
  br label %loop.header.100

choice.exit195:                                   ; preds = %loop.exit.100, %and.99.exit
  %var.load276 = load i64, ptr %"var.p2'", align 8
  %var.load277 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query278 = getelementptr inbounds { i64, ptr }, ptr %var.load277, i32 0, i32 0
  %str.len.query279 = load i64, ptr %str.len.query278, align 8
  %str.len.query280 = and i64 %str.len.query279, 281474976710655
  %str.tag281 = lshr i64 %str.len.query279, 48
  %str.immortal282 = icmp eq i64 %str.tag281, 0
  br i1 %str.immortal282, label %str_ok284, label %str_gen_check283

loop.header.100:                                  ; preds = %loop.latch.100, %choice.then194
  %counter.load198 = load i64, ptr %loop.idx.100, align 8
  br label %loop.body.100

loop.body.100:                                    ; preds = %loop.header.100
  %loop.rel.i199 = sub i64 %counter.load198, 0
  store i64 1, ptr %loop.step.100, align 8
  store i64 %loop.rel.i199, ptr %var._i200, align 8
  store i64 %counter.load198, ptr %var._201, align 8
  %var.load202 = load i64, ptr %"var.p2'", align 8
  %var.load203 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query204 = getelementptr inbounds { i64, ptr }, ptr %var.load203, i32 0, i32 0
  %str.len.query205 = load i64, ptr %str.len.query204, align 8
  %str.len.query206 = and i64 %str.len.query205, 281474976710655
  %str.tag207 = lshr i64 %str.len.query205, 48
  %str.immortal208 = icmp eq i64 %str.tag207, 0
  br i1 %str.immortal208, label %str_ok210, label %str_gen_check209

loop.exit.nat.100:                                ; No predecessors!
  br label %loop.exit.100

loop.latch.100:                                   ; preds = %choice.exit246
  %step.val274 = load i64, ptr %loop.step.100, align 8
  %loop.next275 = add i64 %counter.load198, %step.val274
  store i64 %loop.next275, ptr %loop.idx.100, align 8
  br label %loop.header.100

loop.exit.100:                                    ; preds = %choice.else245, %choice.then215, %loop.exit.nat.100
  br label %choice.exit195

str_gen_check209:                                 ; preds = %loop.body.100
  %arena.cur212 = call ptr @dva_arena_current()
  %tag.valid213 = call i1 @dva_arena_validate_tag(ptr %arena.cur212, i64 %str.tag207)
  br i1 %tag.valid213, label %str_ok210, label %str_stale211

str_ok210:                                        ; preds = %str_stale211, %str_gen_check209, %loop.body.100
  %cmptmp214 = icmp sge i64 %var.load202, %str.len.query206
  br i1 %cmptmp214, label %choice.then215, label %choice.exit216

str_stale211:                                     ; preds = %str_gen_check209
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok210

choice.then215:                                   ; preds = %str_ok210
  br label %loop.exit.100

choice.exit216:                                   ; preds = %str_ok210
  %var.load217 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len218 = getelementptr inbounds { i64, ptr }, ptr %var.load217, i32 0, i32 0
  %s.read.len219 = load i64, ptr %s.read.len218, align 8
  %s.read.len220 = and i64 %s.read.len219, 281474976710655
  %str.tag221 = lshr i64 %s.read.len219, 48
  %str.immortal222 = icmp eq i64 %str.tag221, 0
  br i1 %str.immortal222, label %str_ok224, label %str_gen_check223

str_gen_check223:                                 ; preds = %choice.exit216
  %arena.cur226 = call ptr @dva_arena_current()
  %tag.valid227 = call i1 @dva_arena_validate_tag(ptr %arena.cur226, i64 %str.tag221)
  br i1 %tag.valid227, label %str_ok224, label %str_stale225

str_ok224:                                        ; preds = %str_stale225, %str_gen_check223, %choice.exit216
  %s.read.data228 = getelementptr inbounds { i64, ptr }, ptr %var.load217, i32 0, i32 1
  %s.read.data229 = load ptr, ptr %s.read.data228, align 8
  %var.load230 = load i64, ptr %"var.p2'", align 8
  %idx.neg231 = icmp slt i64 %var.load230, 0
  br i1 %idx.neg231, label %idx_oob234, label %idx_big_check232

str_stale225:                                     ; preds = %str_gen_check223
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok224

idx_big_check232:                                 ; preds = %str_ok224
  %idx.big235 = icmp sge i64 %var.load230, %s.read.len220
  br i1 %idx.big235, label %idx_oob234, label %idx_ok233

idx_ok233:                                        ; preds = %idx_oob234, %idx_big_check232
  %s.byte.gep236 = getelementptr i8, ptr %s.read.data229, i64 %var.load230
  %s.byte237 = load i8, ptr %s.byte.gep236, align 1
  %s.byte.val238 = zext i8 %s.byte237 to i64
  store i64 %s.byte.val238, ptr %var.c239, align 8
  %var.load240 = load i64, ptr %var.c239, align 8
  %cmptmp241 = icmp sge i64 %var.load240, 48
  br i1 %cmptmp241, label %and.101.then, label %and.101.else

idx_oob234:                                       ; preds = %idx_big_check232, %str_ok224
  %15 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok233

and.101.then:                                     ; preds = %idx_ok233
  %var.load242 = load i64, ptr %var.c239, align 8
  %cmptmp243 = icmp sle i64 %var.load242, 57
  br label %and.101.exit

and.101.else:                                     ; preds = %idx_ok233
  br label %and.101.exit

and.101.exit:                                     ; preds = %and.101.else, %and.101.then
  %and.101.phi = phi i1 [ %cmptmp243, %and.101.then ], [ %cmptmp241, %and.101.else ]
  br i1 %and.101.phi, label %choice.then244, label %choice.else245

choice.then244:                                   ; preds = %and.101.exit
  store i1 true, ptr %"var.had_frac'", align 1
  %var.load247 = load i64, ptr %var.c239, align 8
  %subtmp248 = sub i64 %var.load247, 48
  store i64 %subtmp248, ptr %var.d249, align 8
  %var.load250 = load i64, ptr %"var.sig_digits'", align 8
  %cmptmp251 = icmp eq i64 %var.load250, 0
  br i1 %cmptmp251, label %and.102.then, label %and.102.else

choice.else245:                                   ; preds = %and.101.exit
  br label %loop.exit.100

choice.exit246:                                   ; preds = %choice.exit256
  br label %loop.latch.100

and.102.then:                                     ; preds = %choice.then244
  %var.load252 = load i64, ptr %var.d249, align 8
  %cmptmp253 = icmp eq i64 %var.load252, 0
  br label %and.102.exit

and.102.else:                                     ; preds = %choice.then244
  br label %and.102.exit

and.102.exit:                                     ; preds = %and.102.else, %and.102.then
  %and.102.phi = phi i1 [ %cmptmp253, %and.102.then ], [ %cmptmp251, %and.102.else ]
  br i1 %and.102.phi, label %choice.then254, label %choice.else255

choice.then254:                                   ; preds = %and.102.exit
  %var.load257 = load i64, ptr %"var.exp10'", align 8
  %subtmp258 = sub i64 %var.load257, 1
  store i64 %subtmp258, ptr %"var.exp10'", align 8
  br label %choice.exit256

choice.else255:                                   ; preds = %and.102.exit
  %var.load259 = load i64, ptr %"var.sig_digits'", align 8
  %cmptmp260 = icmp slt i64 %var.load259, 17
  br i1 %cmptmp260, label %choice.then261, label %choice.exit262

choice.exit256:                                   ; preds = %choice.exit262, %choice.then254
  %var.load272 = load i64, ptr %"var.p2'", align 8
  %addtmp273 = add i64 %var.load272, 1
  store i64 %addtmp273, ptr %"var.p2'", align 8
  br label %choice.exit246

choice.then261:                                   ; preds = %choice.else255
  %var.load263 = load double, ptr %"var.fv'", align 8
  %fmultmp264 = fmul double %var.load263, 1.000000e+01
  %var.load265 = load i64, ptr %var.d249, align 8
  %cast.sitofp266 = sitofp i64 %var.load265 to double
  %faddtmp267 = fadd double %fmultmp264, %cast.sitofp266
  store double %faddtmp267, ptr %"var.fv'", align 8
  %var.load268 = load i64, ptr %"var.sig_digits'", align 8
  %addtmp269 = add i64 %var.load268, 1
  store i64 %addtmp269, ptr %"var.sig_digits'", align 8
  %var.load270 = load i64, ptr %"var.exp10'", align 8
  %subtmp271 = sub i64 %var.load270, 1
  store i64 %subtmp271, ptr %"var.exp10'", align 8
  br label %choice.exit262

choice.exit262:                                   ; preds = %choice.then261, %choice.else255
  br label %choice.exit256

str_gen_check283:                                 ; preds = %choice.exit195
  %arena.cur286 = call ptr @dva_arena_current()
  %tag.valid287 = call i1 @dva_arena_validate_tag(ptr %arena.cur286, i64 %str.tag281)
  br i1 %tag.valid287, label %str_ok284, label %str_stale285

str_ok284:                                        ; preds = %str_stale285, %str_gen_check283, %choice.exit195
  %cmptmp288 = icmp slt i64 %var.load276, %str.len.query280
  br i1 %cmptmp288, label %and.103.then, label %and.103.else

str_stale285:                                     ; preds = %str_gen_check283
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok284

and.103.then:                                     ; preds = %str_ok284
  %var.load289 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len290 = getelementptr inbounds { i64, ptr }, ptr %var.load289, i32 0, i32 0
  %s.read.len291 = load i64, ptr %s.read.len290, align 8
  %s.read.len292 = and i64 %s.read.len291, 281474976710655
  %str.tag293 = lshr i64 %s.read.len291, 48
  %str.immortal294 = icmp eq i64 %str.tag293, 0
  br i1 %str.immortal294, label %str_ok296, label %str_gen_check295

and.103.else:                                     ; preds = %str_ok284
  br label %and.103.exit

and.103.exit:                                     ; preds = %and.103.else, %or.104.exit
  %and.103.phi = phi i1 [ %or.104.phi, %or.104.exit ], [ %cmptmp288, %and.103.else ]
  store i1 %and.103.phi, ptr %var.has_exp, align 1
  store i1 false, ptr %"var.had_exp'", align 1
  %var.load335 = load i1, ptr %var.has_exp, align 1
  br i1 %var.load335, label %choice.then336, label %choice.exit337

str_gen_check295:                                 ; preds = %and.103.then
  %arena.cur298 = call ptr @dva_arena_current()
  %tag.valid299 = call i1 @dva_arena_validate_tag(ptr %arena.cur298, i64 %str.tag293)
  br i1 %tag.valid299, label %str_ok296, label %str_stale297

str_ok296:                                        ; preds = %str_stale297, %str_gen_check295, %and.103.then
  %s.read.data300 = getelementptr inbounds { i64, ptr }, ptr %var.load289, i32 0, i32 1
  %s.read.data301 = load ptr, ptr %s.read.data300, align 8
  %var.load302 = load i64, ptr %"var.p2'", align 8
  %idx.neg303 = icmp slt i64 %var.load302, 0
  br i1 %idx.neg303, label %idx_oob306, label %idx_big_check304

str_stale297:                                     ; preds = %str_gen_check295
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok296

idx_big_check304:                                 ; preds = %str_ok296
  %idx.big307 = icmp sge i64 %var.load302, %s.read.len292
  br i1 %idx.big307, label %idx_oob306, label %idx_ok305

idx_ok305:                                        ; preds = %idx_oob306, %idx_big_check304
  %s.byte.gep308 = getelementptr i8, ptr %s.read.data301, i64 %var.load302
  %s.byte309 = load i8, ptr %s.byte.gep308, align 1
  %s.byte.val310 = zext i8 %s.byte309 to i64
  %cmptmp311 = icmp eq i64 %s.byte.val310, 101
  br i1 %cmptmp311, label %or.104.then, label %or.104.else

idx_oob306:                                       ; preds = %idx_big_check304, %str_ok296
  %18 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok305

or.104.then:                                      ; preds = %idx_ok305
  br label %or.104.exit

or.104.else:                                      ; preds = %idx_ok305
  %var.load312 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len313 = getelementptr inbounds { i64, ptr }, ptr %var.load312, i32 0, i32 0
  %s.read.len314 = load i64, ptr %s.read.len313, align 8
  %s.read.len315 = and i64 %s.read.len314, 281474976710655
  %str.tag316 = lshr i64 %s.read.len314, 48
  %str.immortal317 = icmp eq i64 %str.tag316, 0
  br i1 %str.immortal317, label %str_ok319, label %str_gen_check318

or.104.exit:                                      ; preds = %idx_ok328, %or.104.then
  %or.104.phi = phi i1 [ %cmptmp311, %or.104.then ], [ %cmptmp334, %idx_ok328 ]
  br label %and.103.exit

str_gen_check318:                                 ; preds = %or.104.else
  %arena.cur321 = call ptr @dva_arena_current()
  %tag.valid322 = call i1 @dva_arena_validate_tag(ptr %arena.cur321, i64 %str.tag316)
  br i1 %tag.valid322, label %str_ok319, label %str_stale320

str_ok319:                                        ; preds = %str_stale320, %str_gen_check318, %or.104.else
  %s.read.data323 = getelementptr inbounds { i64, ptr }, ptr %var.load312, i32 0, i32 1
  %s.read.data324 = load ptr, ptr %s.read.data323, align 8
  %var.load325 = load i64, ptr %"var.p2'", align 8
  %idx.neg326 = icmp slt i64 %var.load325, 0
  br i1 %idx.neg326, label %idx_oob329, label %idx_big_check327

str_stale320:                                     ; preds = %str_gen_check318
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok319

idx_big_check327:                                 ; preds = %str_ok319
  %idx.big330 = icmp sge i64 %var.load325, %s.read.len315
  br i1 %idx.big330, label %idx_oob329, label %idx_ok328

idx_ok328:                                        ; preds = %idx_oob329, %idx_big_check327
  %s.byte.gep331 = getelementptr i8, ptr %s.read.data324, i64 %var.load325
  %s.byte332 = load i8, ptr %s.byte.gep331, align 1
  %s.byte.val333 = zext i8 %s.byte332 to i64
  %cmptmp334 = icmp eq i64 %s.byte.val333, 69
  br label %or.104.exit

idx_oob329:                                       ; preds = %idx_big_check327, %str_ok319
  %20 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok328

choice.then336:                                   ; preds = %and.103.exit
  %var.load338 = load i64, ptr %"var.p2'", align 8
  %addtmp339 = add i64 %var.load338, 1
  store i64 %addtmp339, ptr %"var.p3'", align 8
  store i1 false, ptr %"var.eneg'", align 1
  %var.load340 = load i64, ptr %"var.p3'", align 8
  %var.load344 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query345 = getelementptr inbounds { i64, ptr }, ptr %var.load344, i32 0, i32 0
  %str.len.query346 = load i64, ptr %str.len.query345, align 8
  %str.len.query347 = and i64 %str.len.query346, 281474976710655
  %str.tag348 = lshr i64 %str.len.query346, 48
  %str.immortal349 = icmp eq i64 %str.tag348, 0
  br i1 %str.immortal349, label %str_ok351, label %str_gen_check350

choice.exit337:                                   ; preds = %choice.exit469, %and.103.exit
  %var.load477 = load double, ptr %"var.fv'", align 8
  %fcmptmp = fcmp une double %var.load477, 0.000000e+00
  br i1 %fcmptmp, label %choice.then478, label %choice.exit479

choice.exit341:                                   ; preds = %choice.next343, %idx_ok372
  %choice.res378 = phi i64 [ %s.byte.val377, %idx_ok372 ], [ -1, %choice.next343 ]
  store i64 %choice.res378, ptr %var.e0, align 8
  %var.load379 = load i64, ptr %var.e0, align 8
  %val.match383 = icmp eq i64 %var.load379, 45
  br i1 %val.match383, label %choice.case381, label %choice.next382

choice.case342:                                   ; preds = %str_ok351
  %var.load356 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len357 = getelementptr inbounds { i64, ptr }, ptr %var.load356, i32 0, i32 0
  %s.read.len358 = load i64, ptr %s.read.len357, align 8
  %s.read.len359 = and i64 %s.read.len358, 281474976710655
  %str.tag360 = lshr i64 %s.read.len358, 48
  %str.immortal361 = icmp eq i64 %str.tag360, 0
  br i1 %str.immortal361, label %str_ok363, label %str_gen_check362

choice.next343:                                   ; preds = %str_ok351
  br label %choice.exit341

str_gen_check350:                                 ; preds = %choice.then336
  %arena.cur353 = call ptr @dva_arena_current()
  %tag.valid354 = call i1 @dva_arena_validate_tag(ptr %arena.cur353, i64 %str.tag348)
  br i1 %tag.valid354, label %str_ok351, label %str_stale352

str_ok351:                                        ; preds = %str_stale352, %str_gen_check350, %choice.then336
  %cmptmp355 = icmp slt i64 %var.load340, %str.len.query347
  br i1 %cmptmp355, label %choice.case342, label %choice.next343

str_stale352:                                     ; preds = %str_gen_check350
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok351

str_gen_check362:                                 ; preds = %choice.case342
  %arena.cur365 = call ptr @dva_arena_current()
  %tag.valid366 = call i1 @dva_arena_validate_tag(ptr %arena.cur365, i64 %str.tag360)
  br i1 %tag.valid366, label %str_ok363, label %str_stale364

str_ok363:                                        ; preds = %str_stale364, %str_gen_check362, %choice.case342
  %s.read.data367 = getelementptr inbounds { i64, ptr }, ptr %var.load356, i32 0, i32 1
  %s.read.data368 = load ptr, ptr %s.read.data367, align 8
  %var.load369 = load i64, ptr %"var.p3'", align 8
  %idx.neg370 = icmp slt i64 %var.load369, 0
  br i1 %idx.neg370, label %idx_oob373, label %idx_big_check371

str_stale364:                                     ; preds = %str_gen_check362
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok363

idx_big_check371:                                 ; preds = %str_ok363
  %idx.big374 = icmp sge i64 %var.load369, %s.read.len359
  br i1 %idx.big374, label %idx_oob373, label %idx_ok372

idx_ok372:                                        ; preds = %idx_oob373, %idx_big_check371
  %s.byte.gep375 = getelementptr i8, ptr %s.read.data368, i64 %var.load369
  %s.byte376 = load i8, ptr %s.byte.gep375, align 1
  %s.byte.val377 = zext i8 %s.byte376 to i64
  br label %choice.exit341

idx_oob373:                                       ; preds = %idx_big_check371, %str_ok363
  %23 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok372

choice.exit380:                                   ; preds = %choice.next382, %choice.case381
  %var.load386 = load i64, ptr %var.e0, align 8
  %cmptmp387 = icmp eq i64 %var.load386, 43
  store i1 %cmptmp387, ptr %var.plus, align 1
  %var.load388 = load i1, ptr %var.plus, align 1
  br i1 %var.load388, label %choice.then389, label %choice.exit390

choice.case381:                                   ; preds = %choice.exit341
  store i1 true, ptr %"var.eneg'", align 1
  %var.load384 = load i64, ptr %"var.p3'", align 8
  %addtmp385 = add i64 %var.load384, 1
  store i64 %addtmp385, ptr %"var.p3'", align 8
  br label %choice.exit380

choice.next382:                                   ; preds = %choice.exit341
  br label %choice.exit380

choice.then389:                                   ; preds = %choice.exit380
  %var.load391 = load i64, ptr %"var.p3'", align 8
  %addtmp392 = add i64 %var.load391, 1
  store i64 %addtmp392, ptr %"var.p3'", align 8
  br label %choice.exit390

choice.exit390:                                   ; preds = %choice.then389, %choice.exit380
  store i64 0, ptr %"var.ev'", align 8
  store i1 false, ptr %"var.over_exp'", align 1
  store i1 false, ptr %"var.had_exp_digits'", align 1
  store i64 0, ptr %loop.idx.105, align 8
  br label %loop.header.105

loop.header.105:                                  ; preds = %loop.latch.105, %choice.exit390
  %counter.load393 = load i64, ptr %loop.idx.105, align 8
  br label %loop.body.105

loop.body.105:                                    ; preds = %loop.header.105
  %loop.rel.i394 = sub i64 %counter.load393, 0
  store i64 1, ptr %loop.step.105, align 8
  store i64 %loop.rel.i394, ptr %var._i395, align 8
  store i64 %counter.load393, ptr %var._396, align 8
  %var.load397 = load i64, ptr %"var.p3'", align 8
  %var.load398 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query399 = getelementptr inbounds { i64, ptr }, ptr %var.load398, i32 0, i32 0
  %str.len.query400 = load i64, ptr %str.len.query399, align 8
  %str.len.query401 = and i64 %str.len.query400, 281474976710655
  %str.tag402 = lshr i64 %str.len.query400, 48
  %str.immortal403 = icmp eq i64 %str.tag402, 0
  br i1 %str.immortal403, label %str_ok405, label %str_gen_check404

loop.exit.nat.105:                                ; No predecessors!
  br label %loop.exit.105

loop.latch.105:                                   ; preds = %choice.exit443
  %step.val456 = load i64, ptr %loop.step.105, align 8
  %loop.next457 = add i64 %counter.load393, %step.val456
  store i64 %loop.next457, ptr %loop.idx.105, align 8
  br label %loop.header.105

loop.exit.105:                                    ; preds = %choice.else442, %choice.then410, %loop.exit.nat.105
  %var.load458 = load i1, ptr %"var.had_exp_digits'", align 1
  store i1 %var.load458, ptr %"var.had_exp'", align 1
  %var.load459 = load i64, ptr %"var.p3'", align 8
  store i64 %var.load459, ptr %"var.p2'", align 8
  %var.load460 = load i1, ptr %"var.over_exp'", align 1
  br i1 %var.load460, label %choice.then461, label %choice.else462

str_gen_check404:                                 ; preds = %loop.body.105
  %arena.cur407 = call ptr @dva_arena_current()
  %tag.valid408 = call i1 @dva_arena_validate_tag(ptr %arena.cur407, i64 %str.tag402)
  br i1 %tag.valid408, label %str_ok405, label %str_stale406

str_ok405:                                        ; preds = %str_stale406, %str_gen_check404, %loop.body.105
  %cmptmp409 = icmp sge i64 %var.load397, %str.len.query401
  br i1 %cmptmp409, label %choice.then410, label %choice.exit411

str_stale406:                                     ; preds = %str_gen_check404
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok405

choice.then410:                                   ; preds = %str_ok405
  br label %loop.exit.105

choice.exit411:                                   ; preds = %str_ok405
  %var.load412 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len413 = getelementptr inbounds { i64, ptr }, ptr %var.load412, i32 0, i32 0
  %s.read.len414 = load i64, ptr %s.read.len413, align 8
  %s.read.len415 = and i64 %s.read.len414, 281474976710655
  %str.tag416 = lshr i64 %s.read.len414, 48
  %str.immortal417 = icmp eq i64 %str.tag416, 0
  br i1 %str.immortal417, label %str_ok419, label %str_gen_check418

str_gen_check418:                                 ; preds = %choice.exit411
  %arena.cur421 = call ptr @dva_arena_current()
  %tag.valid422 = call i1 @dva_arena_validate_tag(ptr %arena.cur421, i64 %str.tag416)
  br i1 %tag.valid422, label %str_ok419, label %str_stale420

str_ok419:                                        ; preds = %str_stale420, %str_gen_check418, %choice.exit411
  %s.read.data423 = getelementptr inbounds { i64, ptr }, ptr %var.load412, i32 0, i32 1
  %s.read.data424 = load ptr, ptr %s.read.data423, align 8
  %var.load425 = load i64, ptr %"var.p3'", align 8
  %idx.neg426 = icmp slt i64 %var.load425, 0
  br i1 %idx.neg426, label %idx_oob429, label %idx_big_check427

str_stale420:                                     ; preds = %str_gen_check418
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok419

idx_big_check427:                                 ; preds = %str_ok419
  %idx.big430 = icmp sge i64 %var.load425, %s.read.len415
  br i1 %idx.big430, label %idx_oob429, label %idx_ok428

idx_ok428:                                        ; preds = %idx_oob429, %idx_big_check427
  %s.byte.gep431 = getelementptr i8, ptr %s.read.data424, i64 %var.load425
  %s.byte432 = load i8, ptr %s.byte.gep431, align 1
  %s.byte.val433 = zext i8 %s.byte432 to i64
  store i64 %s.byte.val433, ptr %var.ec, align 8
  %var.load434 = load i64, ptr %var.ec, align 8
  %cmptmp438 = icmp sge i64 %var.load434, 48
  br i1 %cmptmp438, label %and.106.then, label %and.106.else

idx_oob429:                                       ; preds = %idx_big_check427, %str_ok419
  %26 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok428

choice.exit435:                                   ; preds = %choice.next437, %choice.case436
  %choice.res440 = phi i1 [ true, %choice.case436 ], [ false, %choice.next437 ]
  br i1 %choice.res440, label %choice.then441, label %choice.else442

choice.case436:                                   ; preds = %and.106.exit
  br label %choice.exit435

choice.next437:                                   ; preds = %and.106.exit
  br label %choice.exit435

and.106.then:                                     ; preds = %idx_ok428
  %cmptmp439 = icmp sle i64 %var.load434, 57
  br label %and.106.exit

and.106.else:                                     ; preds = %idx_ok428
  br label %and.106.exit

and.106.exit:                                     ; preds = %and.106.else, %and.106.then
  %and.106.phi = phi i1 [ %cmptmp439, %and.106.then ], [ %cmptmp438, %and.106.else ]
  br i1 %and.106.phi, label %choice.case436, label %choice.next437

choice.then441:                                   ; preds = %choice.exit435
  store i1 true, ptr %"var.had_exp_digits'", align 1
  %var.load444 = load i64, ptr %var.ec, align 8
  %subtmp445 = sub i64 %var.load444, 48
  store i64 %subtmp445, ptr %var.ed, align 8
  %var.load446 = load i64, ptr %"var.ev'", align 8
  %cmptmp447 = icmp sgt i64 %var.load446, 1000000
  br i1 %cmptmp447, label %choice.then448, label %choice.else449

choice.else442:                                   ; preds = %choice.exit435
  br label %loop.exit.105

choice.exit443:                                   ; preds = %choice.exit450
  br label %loop.latch.105

choice.then448:                                   ; preds = %choice.then441
  store i1 true, ptr %"var.over_exp'", align 1
  br label %choice.exit450

choice.else449:                                   ; preds = %choice.then441
  %var.load451 = load i64, ptr %"var.ev'", align 8
  %multmp = mul i64 %var.load451, 10
  %var.load452 = load i64, ptr %var.ed, align 8
  %addtmp453 = add i64 %multmp, %var.load452
  store i64 %addtmp453, ptr %"var.ev'", align 8
  br label %choice.exit450

choice.exit450:                                   ; preds = %choice.else449, %choice.then448
  %var.load454 = load i64, ptr %"var.p3'", align 8
  %addtmp455 = add i64 %var.load454, 1
  store i64 %addtmp455, ptr %"var.p3'", align 8
  br label %choice.exit443

choice.then461:                                   ; preds = %loop.exit.105
  br label %choice.exit463

choice.else462:                                   ; preds = %loop.exit.105
  %var.load464 = load i64, ptr %"var.ev'", align 8
  br label %choice.exit463

choice.exit463:                                   ; preds = %choice.else462, %choice.then461
  %choice.res465 = phi i64 [ 1000000, %choice.then461 ], [ %var.load464, %choice.else462 ]
  store i64 %choice.res465, ptr %var.exp_val, align 8
  %var.load466 = load i1, ptr %"var.eneg'", align 1
  br i1 %var.load466, label %choice.then467, label %choice.else468

choice.then467:                                   ; preds = %choice.exit463
  %var.load470 = load i64, ptr %"var.exp10'", align 8
  %var.load471 = load i64, ptr %var.exp_val, align 8
  %subtmp472 = sub i64 %var.load470, %var.load471
  br label %choice.exit469

choice.else468:                                   ; preds = %choice.exit463
  %var.load473 = load i64, ptr %"var.exp10'", align 8
  %var.load474 = load i64, ptr %var.exp_val, align 8
  %addtmp475 = add i64 %var.load473, %var.load474
  br label %choice.exit469

choice.exit469:                                   ; preds = %choice.else468, %choice.then467
  %choice.res476 = phi i64 [ %subtmp472, %choice.then467 ], [ %addtmp475, %choice.else468 ]
  store i64 %choice.res476, ptr %"var.exp10'", align 8
  br label %choice.exit337

choice.then478:                                   ; preds = %choice.exit337
  %var.load480 = load i64, ptr %"var.exp10'", align 8
  %cmptmp481 = icmp slt i64 %var.load480, -400
  br i1 %cmptmp481, label %choice.then482, label %choice.else483

choice.exit479:                                   ; preds = %loop.exit.107, %choice.exit337
  %var.load518 = load i1, ptr %"var.had_int'", align 1
  br i1 %var.load518, label %and.108.then, label %and.108.else

choice.then482:                                   ; preds = %choice.then478
  br label %choice.exit484

choice.else483:                                   ; preds = %choice.then478
  %var.load485 = load i64, ptr %"var.exp10'", align 8
  %cmptmp486 = icmp sgt i64 %var.load485, 400
  br i1 %cmptmp486, label %choice.then487, label %choice.else488

choice.exit484:                                   ; preds = %choice.exit489, %choice.then482
  %choice.res492 = phi i64 [ -400, %choice.then482 ], [ %choice.res491, %choice.exit489 ]
  store i64 %choice.res492, ptr %var.eclamp, align 8
  %var.load493 = load i64, ptr %var.eclamp, align 8
  %cmptmp494 = icmp slt i64 %var.load493, 0
  br i1 %cmptmp494, label %choice.then495, label %choice.else496

choice.then487:                                   ; preds = %choice.else483
  br label %choice.exit489

choice.else488:                                   ; preds = %choice.else483
  %var.load490 = load i64, ptr %"var.exp10'", align 8
  br label %choice.exit489

choice.exit489:                                   ; preds = %choice.else488, %choice.then487
  %choice.res491 = phi i64 [ 400, %choice.then487 ], [ %var.load490, %choice.else488 ]
  br label %choice.exit484

choice.then495:                                   ; preds = %choice.exit484
  %var.load498 = load i64, ptr %var.eclamp, align 8
  %subtmp499 = sub i64 0, %var.load498
  br label %choice.exit497

choice.else496:                                   ; preds = %choice.exit484
  %var.load500 = load i64, ptr %var.eclamp, align 8
  br label %choice.exit497

choice.exit497:                                   ; preds = %choice.else496, %choice.then495
  %choice.res501 = phi i64 [ %subtmp499, %choice.then495 ], [ %var.load500, %choice.else496 ]
  store i64 %choice.res501, ptr %var.abs_e, align 8
  %var.load502 = load i64, ptr %var.abs_e, align 8
  store i64 0, ptr %loop.idx.107, align 8
  br label %loop.header.107

loop.header.107:                                  ; preds = %loop.latch.107, %choice.exit497
  %counter.load503 = load i64, ptr %loop.idx.107, align 8
  %loop.cond = icmp slt i64 %counter.load503, %var.load502
  br i1 %loop.cond, label %loop.body.107, label %loop.exit.nat.107

loop.body.107:                                    ; preds = %loop.header.107
  %loop.rel.i504 = sub i64 %counter.load503, 0
  store i64 1, ptr %loop.step.107, align 8
  store i64 %loop.rel.i504, ptr %var._i505, align 8
  store i64 %counter.load503, ptr %var._506, align 8
  %var.load507 = load i64, ptr %var.eclamp, align 8
  %cmptmp508 = icmp slt i64 %var.load507, 0
  br i1 %cmptmp508, label %choice.then509, label %choice.else510

loop.exit.nat.107:                                ; preds = %loop.header.107
  br label %loop.exit.107

loop.latch.107:                                   ; preds = %choice.exit511
  %step.val516 = load i64, ptr %loop.step.107, align 8
  %loop.next517 = add i64 %counter.load503, %step.val516
  store i64 %loop.next517, ptr %loop.idx.107, align 8
  br label %loop.header.107

loop.exit.107:                                    ; preds = %loop.exit.nat.107
  br label %choice.exit479

choice.then509:                                   ; preds = %loop.body.107
  %var.load512 = load double, ptr %"var.fv'", align 8
  %fdivtmp = fdiv double %var.load512, 1.000000e+01
  br label %choice.exit511

choice.else510:                                   ; preds = %loop.body.107
  %var.load513 = load double, ptr %"var.fv'", align 8
  %fmultmp514 = fmul double %var.load513, 1.000000e+01
  br label %choice.exit511

choice.exit511:                                   ; preds = %choice.else510, %choice.then509
  %choice.res515 = phi double [ %fdivtmp, %choice.then509 ], [ %fmultmp514, %choice.else510 ]
  store double %choice.res515, ptr %"var.fv'", align 8
  br label %loop.latch.107

and.108.then:                                     ; preds = %choice.exit479
  %var.load519 = load i1, ptr %var.has_dot, align 1
  %nottmp = xor i1 %var.load519, true
  br i1 %nottmp, label %or.109.then, label %or.109.else

and.108.else:                                     ; preds = %choice.exit479
  br label %and.108.exit

and.108.exit:                                     ; preds = %and.108.else, %or.109.exit
  %and.108.phi = phi i1 [ %or.109.phi, %or.109.exit ], [ %var.load518, %and.108.else ]
  br i1 %and.108.phi, label %and.110.then, label %and.110.else

or.109.then:                                      ; preds = %and.108.then
  br label %or.109.exit

or.109.else:                                      ; preds = %and.108.then
  %var.load520 = load i1, ptr %"var.had_frac'", align 1
  br label %or.109.exit

or.109.exit:                                      ; preds = %or.109.else, %or.109.then
  %or.109.phi = phi i1 [ %nottmp, %or.109.then ], [ %var.load520, %or.109.else ]
  br label %and.108.exit

and.110.then:                                     ; preds = %and.108.exit
  %var.load521 = load i1, ptr %var.has_exp, align 1
  %nottmp522 = xor i1 %var.load521, true
  br i1 %nottmp522, label %or.111.then, label %or.111.else

and.110.else:                                     ; preds = %and.108.exit
  br label %and.110.exit

and.110.exit:                                     ; preds = %and.110.else, %or.111.exit
  %and.110.phi = phi i1 [ %or.111.phi, %or.111.exit ], [ %and.108.phi, %and.110.else ]
  store i1 %and.110.phi, ptr %var.valid, align 1
  %var.load524 = load i1, ptr %var.valid, align 1
  br i1 %var.load524, label %choice.then525, label %choice.else526

or.111.then:                                      ; preds = %and.110.then
  br label %or.111.exit

or.111.else:                                      ; preds = %and.110.then
  %var.load523 = load i1, ptr %"var.had_exp'", align 1
  br label %or.111.exit

or.111.exit:                                      ; preds = %or.111.else, %or.111.then
  %or.111.phi = phi i1 [ %nottmp522, %or.111.then ], [ %var.load523, %or.111.else ]
  br label %and.110.exit

choice.then525:                                   ; preds = %and.110.exit
  %var.load528 = load i1, ptr %"var.neg'", align 1
  br i1 %var.load528, label %choice.then529, label %choice.else530

choice.else526:                                   ; preds = %and.110.exit
  %arena.cur541 = call ptr @dva_arena_current()
  %err.alloc542 = call ptr @dva_arena_alloc(ptr %arena.cur541, i64 56)
  %err.code.gep543 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc542, i32 0, i32 0
  store i64 400, ptr %err.code.gep543, align 8
  %err.msg.gep544 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc542, i32 0, i32 1
  store ptr @str.20.struct, ptr %err.msg.gep544, align 8
  %err.file.gep545 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc542, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep545, align 8
  %err.line.gep546 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc542, i32 0, i32 3
  store i64 0, ptr %err.line.gep546, align 8
  %err.col.gep547 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc542, i32 0, i32 4
  store i64 0, ptr %err.col.gep547, align 8
  %err.ctx.gep548 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc542, i32 0, i32 5
  %var.load549 = load i64, ptr %"var.p'", align 8
  %arena.cur550 = call ptr @dva_arena_current()
  %rec.alloc551 = call ptr @dva_arena_alloc(ptr %arena.cur550, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld552 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc551, i32 0, i32 0
  store i64 %var.load549, ptr %rec.fld552, align 8
  %rec.fld553 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc551, i32 0, i32 1
  store i64 0, ptr %rec.fld553, align 8
  %ctx.0.gep554 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc551, i32 0, i32 0
  %ctx.0555 = load i64, ptr %ctx.0.gep554, align 8
  %ctx.1.gep556 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc551, i32 0, i32 1
  %ctx.1557 = load i64, ptr %ctx.1.gep556, align 8
  %err.ctx0.gep558 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep548, i32 0, i32 0
  store i64 %ctx.0555, ptr %err.ctx0.gep558, align 8
  %err.ctx1.gep559 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep548, i32 0, i32 1
  store i64 %ctx.1557, ptr %err.ctx1.gep559, align 8
  %p.to.i64560 = ptrtoint ptr %err.alloc542 to i64
  %ram.pay561 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64560, 1
  br label %choice.exit527

choice.exit527:                                   ; preds = %choice.else526, %choice.exit531
  %choice.res562 = phi { i1, i64 } [ %ram.pay540, %choice.exit531 ], [ %ram.pay561, %choice.else526 ]
  br label %choice.exit87

choice.then529:                                   ; preds = %choice.then525
  %var.load532 = load double, ptr %"var.fv'", align 8
  %fsubtmp = fsub double 0.000000e+00, %var.load532
  br label %choice.exit531

choice.else530:                                   ; preds = %choice.then525
  %var.load533 = load double, ptr %"var.fv'", align 8
  br label %choice.exit531

choice.exit531:                                   ; preds = %choice.else530, %choice.then529
  %choice.res534 = phi double [ %fsubtmp, %choice.then529 ], [ %var.load533, %choice.else530 ]
  store double %choice.res534, ptr %var.f, align 8
  %var.load535 = load i64, ptr %"var.p2'", align 8
  store i64 %var.load535, ptr @"var.json::#pos", align 8
  %arena.cur536 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur536, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load537 = load double, ptr %var.f, align 8
  %arena.cur538 = call ptr @dva_arena_current()
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur538, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store double %var.load537, ptr %enum.pay.alloc, align 8
  store ptr %enum.pay.alloc, ptr %pay.gep, align 8
  %p.to.i64539 = ptrtoint ptr %enum.alloc to i64
  %ram.pay540 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64539, 1
  br label %choice.exit527
}

define internal { i1, i64 } @"json::#parse_array_after_value"(ptr %0, { i1, i64 } %1) #1 {
entry:
  %var.e = alloca ptr, align 8
  %var._165 = alloca ptr, align 8
  %var.c2 = alloca i64, align 8
  %var.p2 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.val = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.v = alloca { i1, i64 }, align 8
  %var.elems = alloca ptr, align 8
  store ptr %0, ptr %var.elems, align 8
  store { i1, i64 } %1, ptr %var.v, align 8
  %var.load = load { i1, i64 }, ptr %var.v, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.val, align 8
  %var.load1 = load ptr, ptr %var.val, align 8
  %a.load = load ptr, ptr %var.elems, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else:                                      ; preds = %entry
  %ram.pay163 = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr164 = inttoptr i64 %ram.pay163 to ptr
  store ptr %pay.ptr164, ptr %var._165, align 8
  store ptr %pay.ptr164, ptr %var.e, align 8
  %var.load166 = load ptr, ptr %var.e, align 8
  %p.to.i64167 = ptrtoint ptr %var.load166 to i64
  %ram.pay168 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64167, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit29
  %choice.res169 = phi { i1, i64 } [ %choice.res162, %choice.exit29 ], [ %ram.pay168, %choice.else ]
  ret { i1, i64 } %choice.res169

a.create:                                         ; preds = %choice.then
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
  store ptr %a.create2, ptr %var.elems, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.elems, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len4 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap5 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len4, %a.cap5
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data6 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len7 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data6, i64 %a.cur.len7
  %slot.p2i = ptrtoint ptr %var.load1 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len7, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load8 = load i64, ptr @"var.json::#pos", align 8
  %call.res = call i64 @"json::#skip_ws"(i64 %var.load8)
  store i64 %call.res, ptr %var.p, align 8
  %var.load9 = load i64, ptr %var.p, align 8
  store i64 %var.load9, ptr @"var.json::#pos", align 8
  %var.load10 = load i64, ptr %var.p, align 8
  %var.load12 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 0
  %str.len.query13 = load i64, ptr %str.len.query, align 8
  %str.len.query14 = and i64 %str.len.query13, 281474976710655
  %str.tag = lshr i64 %str.len.query13, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit11:                                    ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load28 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load28, 93
  br i1 %val.match, label %choice.case30, label %choice.next31

choice.case:                                      ; preds = %str_ok
  %var.load16 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 0
  %s.read.len17 = load i64, ptr %s.read.len, align 8
  %s.read.len18 = and i64 %s.read.len17, 281474976710655
  %str.tag19 = lshr i64 %s.read.len17, 48
  %str.immortal20 = icmp eq i64 %str.tag19, 0
  br i1 %str.immortal20, label %str_ok22, label %str_gen_check21

choice.next:                                      ; preds = %str_ok
  br label %choice.exit11

str_gen_check:                                    ; preds = %a.store
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %a.store
  %cmptmp = icmp slt i64 %var.load10, %str.len.query14
  br i1 %cmptmp, label %choice.case, label %choice.next

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check21:                                  ; preds = %choice.case
  %arena.cur24 = call ptr @dva_arena_current()
  %tag.valid25 = call i1 @dva_arena_validate_tag(ptr %arena.cur24, i64 %str.tag19)
  br i1 %tag.valid25, label %str_ok22, label %str_stale23

str_ok22:                                         ; preds = %str_stale23, %str_gen_check21, %choice.case
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 1
  %s.read.data26 = load ptr, ptr %s.read.data, align 8
  %var.load27 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load27, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale23:                                      ; preds = %str_gen_check21
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok22

idx_big_check:                                    ; preds = %str_ok22
  %idx.big = icmp sge i64 %var.load27, %s.read.len18
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data26, i64 %var.load27
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit11

idx_oob:                                          ; preds = %idx_big_check, %str_ok22
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.exit29:                                    ; preds = %choice.next70, %choice.exit116, %a.view.off65
  %choice.res162 = phi { i1, i64 } [ %ram.pay68, %a.view.off65 ], [ %choice.res140, %choice.exit116 ], [ %ram.pay161, %choice.next70 ]
  br label %choice.exit

choice.case30:                                    ; preds = %choice.exit11
  %var.load32 = load i64, ptr @"var.json::#pos", align 8
  %addtmp = add i64 %var.load32, 1
  store i64 %addtmp, ptr @"var.json::#pos", align 8
  %var.load33 = load ptr, ptr %var.elems, align 8
  %a.load34 = load ptr, ptr %var.elems, align 8
  %a.null35 = icmp eq ptr %a.load34, null
  br i1 %a.null35, label %a.create36, label %a.after37

choice.next31:                                    ; preds = %choice.exit11
  %val.match71 = icmp eq i64 %var.load28, 44
  br i1 %val.match71, label %choice.case69, label %choice.next70

a.create36:                                       ; preds = %choice.case30
  %arena.cur38 = call ptr @dva_arena_current()
  %a.create39 = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 24)
  %arena.cur40 = call ptr @dva_arena_current()
  %a.buf41 = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 128)
  %a.len.gep42 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create39, i32 0, i32 0
  store i64 0, ptr %a.len.gep42, align 8
  %a.data.gep43 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create39, i32 0, i32 1
  store ptr %a.buf41, ptr %a.data.gep43, align 8
  %a.cap.gep44 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create39, i32 0, i32 2
  store i64 16, ptr %a.cap.gep44, align 8
  store ptr %a.create39, ptr %var.elems, align 8
  br label %a.after37

a.after37:                                        ; preds = %a.create36, %choice.case30
  %a.load245 = load ptr, ptr %var.elems, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load245, i32 0, i32 0
  %a.len.query46 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query46, ptr %var.n, align 8
  %arena.cur47 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 4, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load48 = load ptr, ptr %var.elems, align 8
  %a.load49 = load ptr, ptr %var.elems, align 8
  %a.null50 = icmp eq ptr %a.load49, null
  br i1 %a.null50, label %a.create51, label %a.after52

a.create51:                                       ; preds = %a.after37
  %arena.cur53 = call ptr @dva_arena_current()
  %a.create54 = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 24)
  %arena.cur55 = call ptr @dva_arena_current()
  %a.buf56 = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 128)
  %a.len.gep57 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create54, i32 0, i32 0
  store i64 0, ptr %a.len.gep57, align 8
  %a.data.gep58 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create54, i32 0, i32 1
  store ptr %a.buf56, ptr %a.data.gep58, align 8
  %a.cap.gep59 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create54, i32 0, i32 2
  store i64 16, ptr %a.cap.gep59, align 8
  store ptr %a.create54, ptr %var.elems, align 8
  br label %a.after52

a.after52:                                        ; preds = %a.create51, %a.after37
  %a.load260 = load ptr, ptr %var.elems, align 8
  %var.load61 = load i64, ptr %var.n, align 8
  %a.view.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load260, i32 0, i32 0
  %a.view.len62 = load i64, ptr %a.view.len, align 8
  %rel.start = add i64 %a.view.len62, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %a.view.len62
  %final.start = select i1 %start.gt.len, i64 %a.view.len62, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load61, 0
  %rel.end = add i64 %a.view.len62, %var.load61
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load61
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %a.view.len62
  %final.end = select i1 %end.gt.len, i64 %a.view.len62, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %a.view.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load260, i32 0, i32 1
  %a.view.data63 = load ptr, ptr %a.view.data, align 8
  %a.view.off = mul i64 %final.start, 8
  %a.view.off64 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %a.view.off, i64 0)
  %sum = extractvalue { i64, i1 } %a.view.off64, 0
  %ovf = extractvalue { i64, i1 } %a.view.off64, 1
  br i1 %ovf, label %str_overflow_abort, label %a.view.off65

a.view.off65:                                     ; preds = %str_overflow_abort, %a.after52
  %a.view.data66 = getelementptr i8, ptr %a.view.data63, i64 %sum
  %a.view.len.tagged = or i64 %view.len, 4611686018427387904
  %arena.cur67 = call ptr @dva_arena_current()
  %a.view.slice = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 16)
  %a.view.data.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 0
  store ptr %a.view.data66, ptr %a.view.data.gep, align 8
  %a.view.len.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 1
  store i64 %a.view.len.tagged, ptr %a.view.len.gep, align 8
  store ptr %a.view.slice, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay68 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit29

str_overflow_abort:                               ; preds = %a.after52
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %a.view.off65

choice.case69:                                    ; preds = %choice.next31
  %var.load72 = load i64, ptr @"var.json::#pos", align 8
  %addtmp73 = add i64 %var.load72, 1
  store i64 %addtmp73, ptr @"var.json::#pos", align 8
  %var.load74 = load i64, ptr @"var.json::#pos", align 8
  %call.res75 = call i64 @"json::#skip_ws"(i64 %var.load74)
  store i64 %call.res75, ptr %var.p2, align 8
  %var.load76 = load i64, ptr %var.p2, align 8
  %var.load80 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query81 = getelementptr inbounds { i64, ptr }, ptr %var.load80, i32 0, i32 0
  %str.len.query82 = load i64, ptr %str.len.query81, align 8
  %str.len.query83 = and i64 %str.len.query82, 281474976710655
  %str.tag84 = lshr i64 %str.len.query82, 48
  %str.immortal85 = icmp eq i64 %str.tag84, 0
  br i1 %str.immortal85, label %str_ok87, label %str_gen_check86

choice.next70:                                    ; preds = %choice.next31
  %arena.cur141 = call ptr @dva_arena_current()
  %err.alloc142 = call ptr @dva_arena_alloc(ptr %arena.cur141, i64 56)
  %err.code.gep143 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc142, i32 0, i32 0
  store i64 400, ptr %err.code.gep143, align 8
  %err.msg.gep144 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc142, i32 0, i32 1
  store ptr @str.23.struct, ptr %err.msg.gep144, align 8
  %err.file.gep145 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc142, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep145, align 8
  %err.line.gep146 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc142, i32 0, i32 3
  store i64 0, ptr %err.line.gep146, align 8
  %err.col.gep147 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc142, i32 0, i32 4
  store i64 0, ptr %err.col.gep147, align 8
  %err.ctx.gep148 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc142, i32 0, i32 5
  %var.load149 = load i64, ptr %var.p, align 8
  %arena.cur150 = call ptr @dva_arena_current()
  %rec.alloc151 = call ptr @dva_arena_alloc(ptr %arena.cur150, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld152 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc151, i32 0, i32 0
  store i64 %var.load149, ptr %rec.fld152, align 8
  %rec.fld153 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc151, i32 0, i32 1
  store i64 0, ptr %rec.fld153, align 8
  %ctx.0.gep154 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc151, i32 0, i32 0
  %ctx.0155 = load i64, ptr %ctx.0.gep154, align 8
  %ctx.1.gep156 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc151, i32 0, i32 1
  %ctx.1157 = load i64, ptr %ctx.1.gep156, align 8
  %err.ctx0.gep158 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep148, i32 0, i32 0
  store i64 %ctx.0155, ptr %err.ctx0.gep158, align 8
  %err.ctx1.gep159 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep148, i32 0, i32 1
  store i64 %ctx.1157, ptr %err.ctx1.gep159, align 8
  %p.to.i64160 = ptrtoint ptr %err.alloc142 to i64
  %ram.pay161 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64160, 1
  br label %choice.exit29

choice.exit77:                                    ; preds = %choice.next79, %idx_ok108
  %choice.res114 = phi i64 [ %s.byte.val113, %idx_ok108 ], [ -1, %choice.next79 ]
  store i64 %choice.res114, ptr %var.c2, align 8
  %var.load115 = load i64, ptr %var.c2, align 8
  %val.match119 = icmp eq i64 %var.load115, 93
  br i1 %val.match119, label %choice.case117, label %choice.next118

choice.case78:                                    ; preds = %str_ok87
  %var.load92 = load ptr, ptr @"var.json::#src", align 8
  %s.read.len93 = getelementptr inbounds { i64, ptr }, ptr %var.load92, i32 0, i32 0
  %s.read.len94 = load i64, ptr %s.read.len93, align 8
  %s.read.len95 = and i64 %s.read.len94, 281474976710655
  %str.tag96 = lshr i64 %s.read.len94, 48
  %str.immortal97 = icmp eq i64 %str.tag96, 0
  br i1 %str.immortal97, label %str_ok99, label %str_gen_check98

choice.next79:                                    ; preds = %str_ok87
  br label %choice.exit77

str_gen_check86:                                  ; preds = %choice.case69
  %arena.cur89 = call ptr @dva_arena_current()
  %tag.valid90 = call i1 @dva_arena_validate_tag(ptr %arena.cur89, i64 %str.tag84)
  br i1 %tag.valid90, label %str_ok87, label %str_stale88

str_ok87:                                         ; preds = %str_stale88, %str_gen_check86, %choice.case69
  %cmptmp91 = icmp slt i64 %var.load76, %str.len.query83
  br i1 %cmptmp91, label %choice.case78, label %choice.next79

str_stale88:                                      ; preds = %str_gen_check86
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok87

str_gen_check98:                                  ; preds = %choice.case78
  %arena.cur101 = call ptr @dva_arena_current()
  %tag.valid102 = call i1 @dva_arena_validate_tag(ptr %arena.cur101, i64 %str.tag96)
  br i1 %tag.valid102, label %str_ok99, label %str_stale100

str_ok99:                                         ; preds = %str_stale100, %str_gen_check98, %choice.case78
  %s.read.data103 = getelementptr inbounds { i64, ptr }, ptr %var.load92, i32 0, i32 1
  %s.read.data104 = load ptr, ptr %s.read.data103, align 8
  %var.load105 = load i64, ptr %var.p2, align 8
  %idx.neg106 = icmp slt i64 %var.load105, 0
  br i1 %idx.neg106, label %idx_oob109, label %idx_big_check107

str_stale100:                                     ; preds = %str_gen_check98
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok99

idx_big_check107:                                 ; preds = %str_ok99
  %idx.big110 = icmp sge i64 %var.load105, %s.read.len95
  br i1 %idx.big110, label %idx_oob109, label %idx_ok108

idx_ok108:                                        ; preds = %idx_oob109, %idx_big_check107
  %s.byte.gep111 = getelementptr i8, ptr %s.read.data104, i64 %var.load105
  %s.byte112 = load i8, ptr %s.byte.gep111, align 1
  %s.byte.val113 = zext i8 %s.byte112 to i64
  br label %choice.exit77

idx_oob109:                                       ; preds = %idx_big_check107, %str_ok99
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok108

choice.exit116:                                   ; preds = %a.after130, %choice.case117
  %choice.res140 = phi { i1, i64 } [ %ram.pay125, %choice.case117 ], [ %call.res139, %a.after130 ]
  br label %choice.exit29

choice.case117:                                   ; preds = %choice.exit77
  %arena.cur120 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.22.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load121 = load i64, ptr %var.p2, align 8
  %arena.cur122 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur122, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load121, ptr %rec.fld, align 8
  %rec.fld123 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld123, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64124 = ptrtoint ptr %err.alloc to i64
  %ram.pay125 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64124, 1
  br label %choice.exit116

choice.next118:                                   ; preds = %choice.exit77
  %var.load126 = load ptr, ptr %var.elems, align 8
  %a.load127 = load ptr, ptr %var.elems, align 8
  %a.null128 = icmp eq ptr %a.load127, null
  br i1 %a.null128, label %a.create129, label %a.after130

a.create129:                                      ; preds = %choice.next118
  %arena.cur131 = call ptr @dva_arena_current()
  %a.create132 = call ptr @dva_arena_alloc(ptr %arena.cur131, i64 24)
  %arena.cur133 = call ptr @dva_arena_current()
  %a.buf134 = call ptr @dva_arena_alloc(ptr %arena.cur133, i64 128)
  %a.len.gep135 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create132, i32 0, i32 0
  store i64 0, ptr %a.len.gep135, align 8
  %a.data.gep136 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create132, i32 0, i32 1
  store ptr %a.buf134, ptr %a.data.gep136, align 8
  %a.cap.gep137 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create132, i32 0, i32 2
  store i64 16, ptr %a.cap.gep137, align 8
  store ptr %a.create132, ptr %var.elems, align 8
  br label %a.after130

a.after130:                                       ; preds = %a.create129, %choice.next118
  %a.load2138 = load ptr, ptr %var.elems, align 8
  %call.res139 = call { i1, i64 } @"json::#parse_array_loop"(ptr %a.load2138)
  br label %choice.exit116
}

define { i1, i64 } @"json::parse"(ptr %0) #1 {
entry:
  %var.r = alloca { i1, i64 }, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  store ptr %var.load, ptr @"var.json::#src", align 8
  store i64 0, ptr @"var.json::#pos", align 8
  %call.res = call { i1, i64 } @"json::#parse_value"()
  store { i1, i64 } %call.res, ptr %var.r, align 8
  %var.load1 = load { i1, i64 }, ptr %var.r, align 8
  %call.res2 = call { i1, i64 } @"json::#parse_finish"({ i1, i64 } %var.load1)
  ret { i1, i64 } %call.res2
}

define internal { i1, i64 } @"json::#parse_finish"({ i1, i64 } %0) #1 {
entry:
  %var.err = alloca ptr, align 8
  %var._19 = alloca ptr, align 8
  %var.p = alloca i64, align 8
  %var.val = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.r = alloca { i1, i64 }, align 8
  store { i1, i64 } %0, ptr %var.r, align 8
  %var.load = load { i1, i64 }, ptr %var.r, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.val, align 8
  %var.load1 = load i64, ptr @"var.json::#pos", align 8
  %call.res = call i64 @"json::#skip_ws"(i64 %var.load1)
  store i64 %call.res, ptr %var.p, align 8
  %var.load2 = load i64, ptr %var.p, align 8
  %var.load3 = load ptr, ptr @"var.json::#src", align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query4 = load i64, ptr %str.len.query, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %str.tag = lshr i64 %str.len.query4, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.else:                                      ; preds = %entry
  %ram.pay17 = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr18 = inttoptr i64 %ram.pay17 to ptr
  store ptr %pay.ptr18, ptr %var._19, align 8
  store ptr %pay.ptr18, ptr %var.err, align 8
  %var.load20 = load ptr, ptr %var.err, align 8
  %p.to.i6421 = ptrtoint ptr %var.load20 to i64
  %ram.pay22 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6421, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit8
  %choice.res23 = phi { i1, i64 } [ %choice.res, %choice.exit8 ], [ %ram.pay22, %choice.else ]
  ret { i1, i64 } %choice.res23

str_gen_check:                                    ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.then
  %cmptmp = icmp eq i64 %var.load2, %str.len.query5
  br i1 %cmptmp, label %choice.then6, label %choice.else7

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then6:                                     ; preds = %str_ok
  %var.load9 = load ptr, ptr %var.val, align 8
  %p.to.i64 = ptrtoint ptr %var.load9 to i64
  %ram.pay10 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit8

choice.else7:                                     ; preds = %str_ok
  %arena.cur11 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.24.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load12 = load i64, ptr %var.p, align 8
  %arena.cur13 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load12, ptr %rec.fld, align 8
  %rec.fld14 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld14, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i6415 = ptrtoint ptr %err.alloc to i64
  %ram.pay16 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6415, 1
  br label %choice.exit8

choice.exit8:                                     ; preds = %choice.else7, %choice.then6
  %choice.res = phi { i1, i64 } [ %ram.pay10, %choice.then6 ], [ %ram.pay16, %choice.else7 ]
  br label %choice.exit
}

define internal ptr @"json::#json_type_err"(ptr %0) #1 {
entry:
  %var.msg = alloca ptr, align 8
  store ptr %0, ptr %var.msg, align 8
  %arena.cur = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  %var.load = load ptr, ptr %var.msg, align 8
  %concat.lhs = load i64, ptr @str.25.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur2 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur2, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs3 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.25.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.rhs4 = load i64, ptr %concat.rhs, align 8
  %concat.rhs5 = and i64 %concat.rhs4, 281474976710655
  %str.tag6 = lshr i64 %concat.rhs4, 48
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
  %concat.rhs13 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.rhs14 = load ptr, ptr %concat.rhs13, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs5)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len15

str_stale10:                                      ; preds = %str_gen_check8
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

concat.sum.len15:                                 ; preds = %str_overflow_abort, %str_ok9
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum16 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf17 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf17, label %str_overflow_abort19, label %concat.tot.len18

str_overflow_abort:                               ; preds = %str_ok9
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len15

concat.tot.len18:                                 ; preds = %str_overflow_abort19, %concat.sum.len15
  %arena.cur20 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 %sum16)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs3, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs14, i64 %concat.rhs5, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur21 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 422, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr %concat.str, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %arena.cur22 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld23 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld23, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  ret ptr %err.alloc

str_overflow_abort19:                             ; preds = %concat.sum.len15
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len18
}

define internal i32 @"json::#hex_digit"(i64 %0) #1 {
entry:
  %var.d = alloca i64, align 8
  %var.n = alloca i64, align 8
  store i64 %0, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %bandtmp = and i64 %var.load, 15
  store i64 %bandtmp, ptr %var.d, align 8
  %var.load1 = load i64, ptr %var.d, align 8
  %cmptmp = icmp slt i64 %var.load1, 10
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.d, align 8
  %coerce.trunc = trunc i64 %var.load2 to i32
  %addtmp = add i32 48, %coerce.trunc
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load3 = load i64, ptr %var.d, align 8
  %subtmp = sub i64 %var.load3, 10
  %coerce.trunc4 = trunc i64 %subtmp to i32
  %addtmp5 = add i32 97, %coerce.trunc4
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i32 [ %addtmp, %choice.then ], [ %addtmp5, %choice.else ]
  ret i32 %choice.res
}

define void @"json::escape_string_into"(ptr %0, ptr %1) #1 {
entry:
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.113 = alloca i64, align 8
  %loop.idx.113 = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store ptr %1, ptr %var.s, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len1 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len1, i64 1)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len2

b.rn.new.len2:                                    ; preds = %str_overflow_abort, %entry
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap3 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap3, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %entry
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len2

b.grow2:                                          ; preds = %b.rn.new.len2
  %b.cap2 = mul i64 %b.cap3, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len24 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data25 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum6 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf7 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf7, label %str_overflow_abort9, label %b.new.buf.len28

b.nogrow2:                                        ; preds = %b.rn.new.len2
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len28
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data10 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data10, i64 %b.rn.cur.len1
  br i1 true, label %br.b1.112, label %br.c2.112

b.new.buf.len28:                                  ; preds = %str_overflow_abort9, %b.grow2
  %arena.cur = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum6)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data25, i64 %b.cur.len24, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len24
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort9:                              ; preds = %b.grow2
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len28

br.b1.112:                                        ; preds = %b.grow_done
  store i8 34, ptr %b.rn.dst, align 1
  br label %br.done.112

br.c2.112:                                        ; preds = %b.grow_done
  br i1 true, label %br.b2.112, label %br.c3.112

br.b2.112:                                        ; preds = %br.c2.112
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -94, ptr %br.dst1, align 1
  br label %br.done.112

br.c3.112:                                        ; preds = %br.c2.112
  br i1 true, label %br.b3.112, label %br.b4.112

br.b3.112:                                        ; preds = %br.c3.112
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -94, ptr %br.dst2.3, align 1
  br label %br.done.112

br.b4.112:                                        ; preds = %br.c3.112
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -94, ptr %br.dst3.4, align 1
  br label %br.done.112

br.done.112:                                      ; preds = %br.b4.112, %br.b3.112, %br.b2.112, %br.b1.112
  %br.nul = getelementptr i8, ptr %b.rn.data10, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query11 = load i64, ptr %str.len.query, align 8
  %str.len.query12 = and i64 %str.len.query11, 281474976710655
  %str.tag = lshr i64 %str.len.query11, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %br.done.112
  %arena.cur13 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur13, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %br.done.112
  store i64 0, ptr %loop.idx.113, align 8
  br label %loop.header.113

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.113:                                  ; preds = %loop.latch.113, %str_ok
  %counter.load = load i64, ptr %loop.idx.113, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len.query12
  br i1 %loop.cond, label %loop.body.113, label %loop.exit.nat.113

loop.body.113:                                    ; preds = %loop.header.113
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.113, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load14 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %s.read.len15 = load i64, ptr %s.read.len, align 8
  %s.read.len16 = and i64 %s.read.len15, 281474976710655
  %str.tag17 = lshr i64 %s.read.len15, 48
  %str.immortal18 = icmp eq i64 %str.tag17, 0
  br i1 %str.immortal18, label %str_ok20, label %str_gen_check19

loop.exit.nat.113:                                ; preds = %loop.header.113
  br label %loop.exit.113

loop.latch.113:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.113, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.113, align 8
  br label %loop.header.113

loop.exit.113:                                    ; preds = %loop.exit.nat.113
  %b.load570 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len571 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load570, i32 0, i32 0
  %b.rn.cur.len572 = load i64, ptr %b.rn.cur.len571, align 8
  %b.rn.new.len573 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len572, i64 1)
  %sum574 = extractvalue { i64, i1 } %b.rn.new.len573, 0
  %ovf575 = extractvalue { i64, i1 } %b.rn.new.len573, 1
  br i1 %ovf575, label %str_overflow_abort577, label %b.rn.new.len576

str_gen_check19:                                  ; preds = %loop.body.113
  %arena.cur22 = call ptr @dva_arena_current()
  %tag.valid23 = call i1 @dva_arena_validate_tag(ptr %arena.cur22, i64 %str.tag17)
  br i1 %tag.valid23, label %str_ok20, label %str_stale21

str_ok20:                                         ; preds = %str_stale21, %str_gen_check19, %loop.body.113
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 1
  %s.read.data24 = load ptr, ptr %s.read.data, align 8
  %var.load25 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load25, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale21:                                      ; preds = %str_gen_check19
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok20

idx_big_check:                                    ; preds = %str_ok20
  %idx.big = icmp sge i64 %var.load25, %s.read.len16
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data24, i64 %var.load25
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %bandtmp = and i64 %s.byte.val, 255
  store i64 %bandtmp, ptr %var.c, align 8
  %var.load26 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load26, 34
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %str_ok20
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.exit:                                      ; preds = %b.push_done, %br.done.115, %b.grow_done348, %b.grow_done297, %b.grow_done246, %b.grow_done195, %b.grow_done144, %b.grow_done93, %b.grow_done46
  br label %loop.latch.113

choice.case:                                      ; preds = %idx_ok
  %b.load27 = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.26.struct, align 8
  %app.str.len28 = and i64 %app.str.len, 281474976710655
  %str.tag29 = lshr i64 %app.str.len, 48
  %str.immortal30 = icmp eq i64 %str.tag29, 0
  br i1 %str.immortal30, label %str_ok32, label %str_gen_check31

choice.next:                                      ; preds = %idx_ok
  %val.match70 = icmp eq i64 %var.load26, 92
  br i1 %val.match70, label %choice.case68, label %choice.next69

str_gen_check31:                                  ; preds = %choice.case
  %arena.cur34 = call ptr @dva_arena_current()
  %tag.valid35 = call i1 @dva_arena_validate_tag(ptr %arena.cur34, i64 %str.tag29)
  br i1 %tag.valid35, label %str_ok32, label %str_stale33

str_ok32:                                         ; preds = %str_stale33, %str_gen_check31, %choice.case
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load27, i32 0, i32 0
  %b.app.cur.len36 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len36, i64 %app.str.len28)
  %sum37 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf38 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf38, label %str_overflow_abort40, label %b.app.new.len39

str_stale33:                                      ; preds = %str_gen_check31
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok32

b.app.new.len39:                                  ; preds = %str_overflow_abort40, %str_ok32
  %b.cap41 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load27, i32 0, i32 2
  %b.cap42 = load i64, ptr %b.cap41, align 8
  %b.need.grow43 = icmp slt i64 %b.cap42, %sum37
  br i1 %b.need.grow43, label %b.grow244, label %b.nogrow245

str_overflow_abort40:                             ; preds = %str_ok32
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len39

b.grow244:                                        ; preds = %b.app.new.len39
  %b.cap247 = mul i64 %b.cap42, 2
  %b.cap.small48 = icmp slt i64 %b.cap247, 16
  %b.cap.grow49 = select i1 %b.cap.small48, i64 16, i64 %b.cap247
  %b.cap.need50 = icmp slt i64 %b.cap.grow49, %sum37
  %b.new.cap51 = select i1 %b.cap.need50, i64 %sum37, i64 %b.cap.grow49
  %b.cur.len252 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load27, i32 0, i32 0
  %b.cur.len253 = load i64, ptr %b.cur.len252, align 8
  %b.cur.data254 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load27, i32 0, i32 1
  %b.cur.data255 = load ptr, ptr %b.cur.data254, align 8
  %b.new.buf.len256 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap51, i64 1)
  %sum57 = extractvalue { i64, i1 } %b.new.buf.len256, 0
  %ovf58 = extractvalue { i64, i1 } %b.new.buf.len256, 1
  br i1 %ovf58, label %str_overflow_abort60, label %b.new.buf.len259

b.nogrow245:                                      ; preds = %b.app.new.len39
  br label %b.grow_done46

b.grow_done46:                                    ; preds = %b.nogrow245, %b.new.buf.len259
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.26.struct, i32 0, i32 1), align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load27, i32 0, i32 1
  %b.app.data66 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data66, i64 %b.app.cur.len36
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len28, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data66, i64 %sum37
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep67 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load27, i32 0, i32 0
  store i64 %sum37, ptr %b.len.gep67, align 8
  br label %choice.exit

b.new.buf.len259:                                 ; preds = %str_overflow_abort60, %b.grow244
  %arena.cur61 = call ptr @dva_arena_current()
  %b.new.buf262 = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 %sum57)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf262, ptr align 1 %b.cur.data255, i64 %b.cur.len253, i1 false)
  %b.grow2.nul63 = getelementptr i8, ptr %b.new.buf262, i64 %b.cur.len253
  store i8 0, ptr %b.grow2.nul63, align 1
  %b.new.data2.gep64 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load27, i32 0, i32 1
  store ptr %b.new.buf262, ptr %b.new.data2.gep64, align 8
  %b.new.cap2.gep65 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load27, i32 0, i32 2
  store i64 %b.new.cap51, ptr %b.new.cap2.gep65, align 8
  br label %b.grow_done46

str_overflow_abort60:                             ; preds = %b.grow244
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len259

choice.case68:                                    ; preds = %choice.next
  %b.load71 = load ptr, ptr %var.b, align 8
  %app.str.len72 = load i64, ptr @str.27.struct, align 8
  %app.str.len73 = and i64 %app.str.len72, 281474976710655
  %str.tag74 = lshr i64 %app.str.len72, 48
  %str.immortal75 = icmp eq i64 %str.tag74, 0
  br i1 %str.immortal75, label %str_ok77, label %str_gen_check76

choice.next69:                                    ; preds = %choice.next
  %val.match121 = icmp eq i64 %var.load26, 8
  br i1 %val.match121, label %choice.case119, label %choice.next120

str_gen_check76:                                  ; preds = %choice.case68
  %arena.cur79 = call ptr @dva_arena_current()
  %tag.valid80 = call i1 @dva_arena_validate_tag(ptr %arena.cur79, i64 %str.tag74)
  br i1 %tag.valid80, label %str_ok77, label %str_stale78

str_ok77:                                         ; preds = %str_stale78, %str_gen_check76, %choice.case68
  %b.app.cur.len81 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load71, i32 0, i32 0
  %b.app.cur.len82 = load i64, ptr %b.app.cur.len81, align 8
  %b.app.new.len83 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len82, i64 %app.str.len73)
  %sum84 = extractvalue { i64, i1 } %b.app.new.len83, 0
  %ovf85 = extractvalue { i64, i1 } %b.app.new.len83, 1
  br i1 %ovf85, label %str_overflow_abort87, label %b.app.new.len86

str_stale78:                                      ; preds = %str_gen_check76
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok77

b.app.new.len86:                                  ; preds = %str_overflow_abort87, %str_ok77
  %b.cap88 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load71, i32 0, i32 2
  %b.cap89 = load i64, ptr %b.cap88, align 8
  %b.need.grow90 = icmp slt i64 %b.cap89, %sum84
  br i1 %b.need.grow90, label %b.grow291, label %b.nogrow292

str_overflow_abort87:                             ; preds = %str_ok77
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len86

b.grow291:                                        ; preds = %b.app.new.len86
  %b.cap294 = mul i64 %b.cap89, 2
  %b.cap.small95 = icmp slt i64 %b.cap294, 16
  %b.cap.grow96 = select i1 %b.cap.small95, i64 16, i64 %b.cap294
  %b.cap.need97 = icmp slt i64 %b.cap.grow96, %sum84
  %b.new.cap98 = select i1 %b.cap.need97, i64 %sum84, i64 %b.cap.grow96
  %b.cur.len299 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load71, i32 0, i32 0
  %b.cur.len2100 = load i64, ptr %b.cur.len299, align 8
  %b.cur.data2101 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load71, i32 0, i32 1
  %b.cur.data2102 = load ptr, ptr %b.cur.data2101, align 8
  %b.new.buf.len2103 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap98, i64 1)
  %sum104 = extractvalue { i64, i1 } %b.new.buf.len2103, 0
  %ovf105 = extractvalue { i64, i1 } %b.new.buf.len2103, 1
  br i1 %ovf105, label %str_overflow_abort107, label %b.new.buf.len2106

b.nogrow292:                                      ; preds = %b.app.new.len86
  br label %b.grow_done93

b.grow_done93:                                    ; preds = %b.nogrow292, %b.new.buf.len2106
  %app.str.data113 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.27.struct, i32 0, i32 1), align 8
  %b.app.data114 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load71, i32 0, i32 1
  %b.app.data115 = load ptr, ptr %b.app.data114, align 8
  %b.app.dst116 = getelementptr i8, ptr %b.app.data115, i64 %b.app.cur.len82
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst116, ptr align 1 %app.str.data113, i64 %app.str.len73, i1 false)
  %b.app.nul117 = getelementptr i8, ptr %b.app.data115, i64 %sum84
  store i8 0, ptr %b.app.nul117, align 1
  %b.len.gep118 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load71, i32 0, i32 0
  store i64 %sum84, ptr %b.len.gep118, align 8
  br label %choice.exit

b.new.buf.len2106:                                ; preds = %str_overflow_abort107, %b.grow291
  %arena.cur108 = call ptr @dva_arena_current()
  %b.new.buf2109 = call ptr @dva_arena_alloc(ptr %arena.cur108, i64 %sum104)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2109, ptr align 1 %b.cur.data2102, i64 %b.cur.len2100, i1 false)
  %b.grow2.nul110 = getelementptr i8, ptr %b.new.buf2109, i64 %b.cur.len2100
  store i8 0, ptr %b.grow2.nul110, align 1
  %b.new.data2.gep111 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load71, i32 0, i32 1
  store ptr %b.new.buf2109, ptr %b.new.data2.gep111, align 8
  %b.new.cap2.gep112 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load71, i32 0, i32 2
  store i64 %b.new.cap98, ptr %b.new.cap2.gep112, align 8
  br label %b.grow_done93

str_overflow_abort107:                            ; preds = %b.grow291
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2106

choice.case119:                                   ; preds = %choice.next69
  %b.load122 = load ptr, ptr %var.b, align 8
  %app.str.len123 = load i64, ptr @str.28.struct, align 8
  %app.str.len124 = and i64 %app.str.len123, 281474976710655
  %str.tag125 = lshr i64 %app.str.len123, 48
  %str.immortal126 = icmp eq i64 %str.tag125, 0
  br i1 %str.immortal126, label %str_ok128, label %str_gen_check127

choice.next120:                                   ; preds = %choice.next69
  %val.match172 = icmp eq i64 %var.load26, 12
  br i1 %val.match172, label %choice.case170, label %choice.next171

str_gen_check127:                                 ; preds = %choice.case119
  %arena.cur130 = call ptr @dva_arena_current()
  %tag.valid131 = call i1 @dva_arena_validate_tag(ptr %arena.cur130, i64 %str.tag125)
  br i1 %tag.valid131, label %str_ok128, label %str_stale129

str_ok128:                                        ; preds = %str_stale129, %str_gen_check127, %choice.case119
  %b.app.cur.len132 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 0
  %b.app.cur.len133 = load i64, ptr %b.app.cur.len132, align 8
  %b.app.new.len134 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len133, i64 %app.str.len124)
  %sum135 = extractvalue { i64, i1 } %b.app.new.len134, 0
  %ovf136 = extractvalue { i64, i1 } %b.app.new.len134, 1
  br i1 %ovf136, label %str_overflow_abort138, label %b.app.new.len137

str_stale129:                                     ; preds = %str_gen_check127
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok128

b.app.new.len137:                                 ; preds = %str_overflow_abort138, %str_ok128
  %b.cap139 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 2
  %b.cap140 = load i64, ptr %b.cap139, align 8
  %b.need.grow141 = icmp slt i64 %b.cap140, %sum135
  br i1 %b.need.grow141, label %b.grow2142, label %b.nogrow2143

str_overflow_abort138:                            ; preds = %str_ok128
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len137

b.grow2142:                                       ; preds = %b.app.new.len137
  %b.cap2145 = mul i64 %b.cap140, 2
  %b.cap.small146 = icmp slt i64 %b.cap2145, 16
  %b.cap.grow147 = select i1 %b.cap.small146, i64 16, i64 %b.cap2145
  %b.cap.need148 = icmp slt i64 %b.cap.grow147, %sum135
  %b.new.cap149 = select i1 %b.cap.need148, i64 %sum135, i64 %b.cap.grow147
  %b.cur.len2150 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 0
  %b.cur.len2151 = load i64, ptr %b.cur.len2150, align 8
  %b.cur.data2152 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 1
  %b.cur.data2153 = load ptr, ptr %b.cur.data2152, align 8
  %b.new.buf.len2154 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap149, i64 1)
  %sum155 = extractvalue { i64, i1 } %b.new.buf.len2154, 0
  %ovf156 = extractvalue { i64, i1 } %b.new.buf.len2154, 1
  br i1 %ovf156, label %str_overflow_abort158, label %b.new.buf.len2157

b.nogrow2143:                                     ; preds = %b.app.new.len137
  br label %b.grow_done144

b.grow_done144:                                   ; preds = %b.nogrow2143, %b.new.buf.len2157
  %app.str.data164 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.28.struct, i32 0, i32 1), align 8
  %b.app.data165 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 1
  %b.app.data166 = load ptr, ptr %b.app.data165, align 8
  %b.app.dst167 = getelementptr i8, ptr %b.app.data166, i64 %b.app.cur.len133
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst167, ptr align 1 %app.str.data164, i64 %app.str.len124, i1 false)
  %b.app.nul168 = getelementptr i8, ptr %b.app.data166, i64 %sum135
  store i8 0, ptr %b.app.nul168, align 1
  %b.len.gep169 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 0
  store i64 %sum135, ptr %b.len.gep169, align 8
  br label %choice.exit

b.new.buf.len2157:                                ; preds = %str_overflow_abort158, %b.grow2142
  %arena.cur159 = call ptr @dva_arena_current()
  %b.new.buf2160 = call ptr @dva_arena_alloc(ptr %arena.cur159, i64 %sum155)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2160, ptr align 1 %b.cur.data2153, i64 %b.cur.len2151, i1 false)
  %b.grow2.nul161 = getelementptr i8, ptr %b.new.buf2160, i64 %b.cur.len2151
  store i8 0, ptr %b.grow2.nul161, align 1
  %b.new.data2.gep162 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 1
  store ptr %b.new.buf2160, ptr %b.new.data2.gep162, align 8
  %b.new.cap2.gep163 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 2
  store i64 %b.new.cap149, ptr %b.new.cap2.gep163, align 8
  br label %b.grow_done144

str_overflow_abort158:                            ; preds = %b.grow2142
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2157

choice.case170:                                   ; preds = %choice.next120
  %b.load173 = load ptr, ptr %var.b, align 8
  %app.str.len174 = load i64, ptr @str.29.struct, align 8
  %app.str.len175 = and i64 %app.str.len174, 281474976710655
  %str.tag176 = lshr i64 %app.str.len174, 48
  %str.immortal177 = icmp eq i64 %str.tag176, 0
  br i1 %str.immortal177, label %str_ok179, label %str_gen_check178

choice.next171:                                   ; preds = %choice.next120
  %val.match223 = icmp eq i64 %var.load26, 10
  br i1 %val.match223, label %choice.case221, label %choice.next222

str_gen_check178:                                 ; preds = %choice.case170
  %arena.cur181 = call ptr @dva_arena_current()
  %tag.valid182 = call i1 @dva_arena_validate_tag(ptr %arena.cur181, i64 %str.tag176)
  br i1 %tag.valid182, label %str_ok179, label %str_stale180

str_ok179:                                        ; preds = %str_stale180, %str_gen_check178, %choice.case170
  %b.app.cur.len183 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load173, i32 0, i32 0
  %b.app.cur.len184 = load i64, ptr %b.app.cur.len183, align 8
  %b.app.new.len185 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len184, i64 %app.str.len175)
  %sum186 = extractvalue { i64, i1 } %b.app.new.len185, 0
  %ovf187 = extractvalue { i64, i1 } %b.app.new.len185, 1
  br i1 %ovf187, label %str_overflow_abort189, label %b.app.new.len188

str_stale180:                                     ; preds = %str_gen_check178
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok179

b.app.new.len188:                                 ; preds = %str_overflow_abort189, %str_ok179
  %b.cap190 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load173, i32 0, i32 2
  %b.cap191 = load i64, ptr %b.cap190, align 8
  %b.need.grow192 = icmp slt i64 %b.cap191, %sum186
  br i1 %b.need.grow192, label %b.grow2193, label %b.nogrow2194

str_overflow_abort189:                            ; preds = %str_ok179
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len188

b.grow2193:                                       ; preds = %b.app.new.len188
  %b.cap2196 = mul i64 %b.cap191, 2
  %b.cap.small197 = icmp slt i64 %b.cap2196, 16
  %b.cap.grow198 = select i1 %b.cap.small197, i64 16, i64 %b.cap2196
  %b.cap.need199 = icmp slt i64 %b.cap.grow198, %sum186
  %b.new.cap200 = select i1 %b.cap.need199, i64 %sum186, i64 %b.cap.grow198
  %b.cur.len2201 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load173, i32 0, i32 0
  %b.cur.len2202 = load i64, ptr %b.cur.len2201, align 8
  %b.cur.data2203 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load173, i32 0, i32 1
  %b.cur.data2204 = load ptr, ptr %b.cur.data2203, align 8
  %b.new.buf.len2205 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap200, i64 1)
  %sum206 = extractvalue { i64, i1 } %b.new.buf.len2205, 0
  %ovf207 = extractvalue { i64, i1 } %b.new.buf.len2205, 1
  br i1 %ovf207, label %str_overflow_abort209, label %b.new.buf.len2208

b.nogrow2194:                                     ; preds = %b.app.new.len188
  br label %b.grow_done195

b.grow_done195:                                   ; preds = %b.nogrow2194, %b.new.buf.len2208
  %app.str.data215 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.29.struct, i32 0, i32 1), align 8
  %b.app.data216 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load173, i32 0, i32 1
  %b.app.data217 = load ptr, ptr %b.app.data216, align 8
  %b.app.dst218 = getelementptr i8, ptr %b.app.data217, i64 %b.app.cur.len184
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst218, ptr align 1 %app.str.data215, i64 %app.str.len175, i1 false)
  %b.app.nul219 = getelementptr i8, ptr %b.app.data217, i64 %sum186
  store i8 0, ptr %b.app.nul219, align 1
  %b.len.gep220 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load173, i32 0, i32 0
  store i64 %sum186, ptr %b.len.gep220, align 8
  br label %choice.exit

b.new.buf.len2208:                                ; preds = %str_overflow_abort209, %b.grow2193
  %arena.cur210 = call ptr @dva_arena_current()
  %b.new.buf2211 = call ptr @dva_arena_alloc(ptr %arena.cur210, i64 %sum206)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2211, ptr align 1 %b.cur.data2204, i64 %b.cur.len2202, i1 false)
  %b.grow2.nul212 = getelementptr i8, ptr %b.new.buf2211, i64 %b.cur.len2202
  store i8 0, ptr %b.grow2.nul212, align 1
  %b.new.data2.gep213 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load173, i32 0, i32 1
  store ptr %b.new.buf2211, ptr %b.new.data2.gep213, align 8
  %b.new.cap2.gep214 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load173, i32 0, i32 2
  store i64 %b.new.cap200, ptr %b.new.cap2.gep214, align 8
  br label %b.grow_done195

str_overflow_abort209:                            ; preds = %b.grow2193
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2208

choice.case221:                                   ; preds = %choice.next171
  %b.load224 = load ptr, ptr %var.b, align 8
  %app.str.len225 = load i64, ptr @str.30.struct, align 8
  %app.str.len226 = and i64 %app.str.len225, 281474976710655
  %str.tag227 = lshr i64 %app.str.len225, 48
  %str.immortal228 = icmp eq i64 %str.tag227, 0
  br i1 %str.immortal228, label %str_ok230, label %str_gen_check229

choice.next222:                                   ; preds = %choice.next171
  %val.match274 = icmp eq i64 %var.load26, 13
  br i1 %val.match274, label %choice.case272, label %choice.next273

str_gen_check229:                                 ; preds = %choice.case221
  %arena.cur232 = call ptr @dva_arena_current()
  %tag.valid233 = call i1 @dva_arena_validate_tag(ptr %arena.cur232, i64 %str.tag227)
  br i1 %tag.valid233, label %str_ok230, label %str_stale231

str_ok230:                                        ; preds = %str_stale231, %str_gen_check229, %choice.case221
  %b.app.cur.len234 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load224, i32 0, i32 0
  %b.app.cur.len235 = load i64, ptr %b.app.cur.len234, align 8
  %b.app.new.len236 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len235, i64 %app.str.len226)
  %sum237 = extractvalue { i64, i1 } %b.app.new.len236, 0
  %ovf238 = extractvalue { i64, i1 } %b.app.new.len236, 1
  br i1 %ovf238, label %str_overflow_abort240, label %b.app.new.len239

str_stale231:                                     ; preds = %str_gen_check229
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok230

b.app.new.len239:                                 ; preds = %str_overflow_abort240, %str_ok230
  %b.cap241 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load224, i32 0, i32 2
  %b.cap242 = load i64, ptr %b.cap241, align 8
  %b.need.grow243 = icmp slt i64 %b.cap242, %sum237
  br i1 %b.need.grow243, label %b.grow2244, label %b.nogrow2245

str_overflow_abort240:                            ; preds = %str_ok230
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len239

b.grow2244:                                       ; preds = %b.app.new.len239
  %b.cap2247 = mul i64 %b.cap242, 2
  %b.cap.small248 = icmp slt i64 %b.cap2247, 16
  %b.cap.grow249 = select i1 %b.cap.small248, i64 16, i64 %b.cap2247
  %b.cap.need250 = icmp slt i64 %b.cap.grow249, %sum237
  %b.new.cap251 = select i1 %b.cap.need250, i64 %sum237, i64 %b.cap.grow249
  %b.cur.len2252 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load224, i32 0, i32 0
  %b.cur.len2253 = load i64, ptr %b.cur.len2252, align 8
  %b.cur.data2254 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load224, i32 0, i32 1
  %b.cur.data2255 = load ptr, ptr %b.cur.data2254, align 8
  %b.new.buf.len2256 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap251, i64 1)
  %sum257 = extractvalue { i64, i1 } %b.new.buf.len2256, 0
  %ovf258 = extractvalue { i64, i1 } %b.new.buf.len2256, 1
  br i1 %ovf258, label %str_overflow_abort260, label %b.new.buf.len2259

b.nogrow2245:                                     ; preds = %b.app.new.len239
  br label %b.grow_done246

b.grow_done246:                                   ; preds = %b.nogrow2245, %b.new.buf.len2259
  %app.str.data266 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.30.struct, i32 0, i32 1), align 8
  %b.app.data267 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load224, i32 0, i32 1
  %b.app.data268 = load ptr, ptr %b.app.data267, align 8
  %b.app.dst269 = getelementptr i8, ptr %b.app.data268, i64 %b.app.cur.len235
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst269, ptr align 1 %app.str.data266, i64 %app.str.len226, i1 false)
  %b.app.nul270 = getelementptr i8, ptr %b.app.data268, i64 %sum237
  store i8 0, ptr %b.app.nul270, align 1
  %b.len.gep271 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load224, i32 0, i32 0
  store i64 %sum237, ptr %b.len.gep271, align 8
  br label %choice.exit

b.new.buf.len2259:                                ; preds = %str_overflow_abort260, %b.grow2244
  %arena.cur261 = call ptr @dva_arena_current()
  %b.new.buf2262 = call ptr @dva_arena_alloc(ptr %arena.cur261, i64 %sum257)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2262, ptr align 1 %b.cur.data2255, i64 %b.cur.len2253, i1 false)
  %b.grow2.nul263 = getelementptr i8, ptr %b.new.buf2262, i64 %b.cur.len2253
  store i8 0, ptr %b.grow2.nul263, align 1
  %b.new.data2.gep264 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load224, i32 0, i32 1
  store ptr %b.new.buf2262, ptr %b.new.data2.gep264, align 8
  %b.new.cap2.gep265 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load224, i32 0, i32 2
  store i64 %b.new.cap251, ptr %b.new.cap2.gep265, align 8
  br label %b.grow_done246

str_overflow_abort260:                            ; preds = %b.grow2244
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2259

choice.case272:                                   ; preds = %choice.next222
  %b.load275 = load ptr, ptr %var.b, align 8
  %app.str.len276 = load i64, ptr @str.31.struct, align 8
  %app.str.len277 = and i64 %app.str.len276, 281474976710655
  %str.tag278 = lshr i64 %app.str.len276, 48
  %str.immortal279 = icmp eq i64 %str.tag278, 0
  br i1 %str.immortal279, label %str_ok281, label %str_gen_check280

choice.next273:                                   ; preds = %choice.next222
  %val.match325 = icmp eq i64 %var.load26, 9
  br i1 %val.match325, label %choice.case323, label %choice.next324

str_gen_check280:                                 ; preds = %choice.case272
  %arena.cur283 = call ptr @dva_arena_current()
  %tag.valid284 = call i1 @dva_arena_validate_tag(ptr %arena.cur283, i64 %str.tag278)
  br i1 %tag.valid284, label %str_ok281, label %str_stale282

str_ok281:                                        ; preds = %str_stale282, %str_gen_check280, %choice.case272
  %b.app.cur.len285 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load275, i32 0, i32 0
  %b.app.cur.len286 = load i64, ptr %b.app.cur.len285, align 8
  %b.app.new.len287 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len286, i64 %app.str.len277)
  %sum288 = extractvalue { i64, i1 } %b.app.new.len287, 0
  %ovf289 = extractvalue { i64, i1 } %b.app.new.len287, 1
  br i1 %ovf289, label %str_overflow_abort291, label %b.app.new.len290

str_stale282:                                     ; preds = %str_gen_check280
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok281

b.app.new.len290:                                 ; preds = %str_overflow_abort291, %str_ok281
  %b.cap292 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load275, i32 0, i32 2
  %b.cap293 = load i64, ptr %b.cap292, align 8
  %b.need.grow294 = icmp slt i64 %b.cap293, %sum288
  br i1 %b.need.grow294, label %b.grow2295, label %b.nogrow2296

str_overflow_abort291:                            ; preds = %str_ok281
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len290

b.grow2295:                                       ; preds = %b.app.new.len290
  %b.cap2298 = mul i64 %b.cap293, 2
  %b.cap.small299 = icmp slt i64 %b.cap2298, 16
  %b.cap.grow300 = select i1 %b.cap.small299, i64 16, i64 %b.cap2298
  %b.cap.need301 = icmp slt i64 %b.cap.grow300, %sum288
  %b.new.cap302 = select i1 %b.cap.need301, i64 %sum288, i64 %b.cap.grow300
  %b.cur.len2303 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load275, i32 0, i32 0
  %b.cur.len2304 = load i64, ptr %b.cur.len2303, align 8
  %b.cur.data2305 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load275, i32 0, i32 1
  %b.cur.data2306 = load ptr, ptr %b.cur.data2305, align 8
  %b.new.buf.len2307 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap302, i64 1)
  %sum308 = extractvalue { i64, i1 } %b.new.buf.len2307, 0
  %ovf309 = extractvalue { i64, i1 } %b.new.buf.len2307, 1
  br i1 %ovf309, label %str_overflow_abort311, label %b.new.buf.len2310

b.nogrow2296:                                     ; preds = %b.app.new.len290
  br label %b.grow_done297

b.grow_done297:                                   ; preds = %b.nogrow2296, %b.new.buf.len2310
  %app.str.data317 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.31.struct, i32 0, i32 1), align 8
  %b.app.data318 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load275, i32 0, i32 1
  %b.app.data319 = load ptr, ptr %b.app.data318, align 8
  %b.app.dst320 = getelementptr i8, ptr %b.app.data319, i64 %b.app.cur.len286
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst320, ptr align 1 %app.str.data317, i64 %app.str.len277, i1 false)
  %b.app.nul321 = getelementptr i8, ptr %b.app.data319, i64 %sum288
  store i8 0, ptr %b.app.nul321, align 1
  %b.len.gep322 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load275, i32 0, i32 0
  store i64 %sum288, ptr %b.len.gep322, align 8
  br label %choice.exit

b.new.buf.len2310:                                ; preds = %str_overflow_abort311, %b.grow2295
  %arena.cur312 = call ptr @dva_arena_current()
  %b.new.buf2313 = call ptr @dva_arena_alloc(ptr %arena.cur312, i64 %sum308)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2313, ptr align 1 %b.cur.data2306, i64 %b.cur.len2304, i1 false)
  %b.grow2.nul314 = getelementptr i8, ptr %b.new.buf2313, i64 %b.cur.len2304
  store i8 0, ptr %b.grow2.nul314, align 1
  %b.new.data2.gep315 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load275, i32 0, i32 1
  store ptr %b.new.buf2313, ptr %b.new.data2.gep315, align 8
  %b.new.cap2.gep316 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load275, i32 0, i32 2
  store i64 %b.new.cap302, ptr %b.new.cap2.gep316, align 8
  br label %b.grow_done297

str_overflow_abort311:                            ; preds = %b.grow2295
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2310

choice.case323:                                   ; preds = %choice.next273
  %b.load326 = load ptr, ptr %var.b, align 8
  %app.str.len327 = load i64, ptr @str.32.struct, align 8
  %app.str.len328 = and i64 %app.str.len327, 281474976710655
  %str.tag329 = lshr i64 %app.str.len327, 48
  %str.immortal330 = icmp eq i64 %str.tag329, 0
  br i1 %str.immortal330, label %str_ok332, label %str_gen_check331

choice.next324:                                   ; preds = %choice.next273
  %cmptmp = icmp slt i64 %var.load26, 32
  br i1 %cmptmp, label %choice.case374, label %choice.next375

str_gen_check331:                                 ; preds = %choice.case323
  %arena.cur334 = call ptr @dva_arena_current()
  %tag.valid335 = call i1 @dva_arena_validate_tag(ptr %arena.cur334, i64 %str.tag329)
  br i1 %tag.valid335, label %str_ok332, label %str_stale333

str_ok332:                                        ; preds = %str_stale333, %str_gen_check331, %choice.case323
  %b.app.cur.len336 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load326, i32 0, i32 0
  %b.app.cur.len337 = load i64, ptr %b.app.cur.len336, align 8
  %b.app.new.len338 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len337, i64 %app.str.len328)
  %sum339 = extractvalue { i64, i1 } %b.app.new.len338, 0
  %ovf340 = extractvalue { i64, i1 } %b.app.new.len338, 1
  br i1 %ovf340, label %str_overflow_abort342, label %b.app.new.len341

str_stale333:                                     ; preds = %str_gen_check331
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok332

b.app.new.len341:                                 ; preds = %str_overflow_abort342, %str_ok332
  %b.cap343 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load326, i32 0, i32 2
  %b.cap344 = load i64, ptr %b.cap343, align 8
  %b.need.grow345 = icmp slt i64 %b.cap344, %sum339
  br i1 %b.need.grow345, label %b.grow2346, label %b.nogrow2347

str_overflow_abort342:                            ; preds = %str_ok332
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len341

b.grow2346:                                       ; preds = %b.app.new.len341
  %b.cap2349 = mul i64 %b.cap344, 2
  %b.cap.small350 = icmp slt i64 %b.cap2349, 16
  %b.cap.grow351 = select i1 %b.cap.small350, i64 16, i64 %b.cap2349
  %b.cap.need352 = icmp slt i64 %b.cap.grow351, %sum339
  %b.new.cap353 = select i1 %b.cap.need352, i64 %sum339, i64 %b.cap.grow351
  %b.cur.len2354 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load326, i32 0, i32 0
  %b.cur.len2355 = load i64, ptr %b.cur.len2354, align 8
  %b.cur.data2356 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load326, i32 0, i32 1
  %b.cur.data2357 = load ptr, ptr %b.cur.data2356, align 8
  %b.new.buf.len2358 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap353, i64 1)
  %sum359 = extractvalue { i64, i1 } %b.new.buf.len2358, 0
  %ovf360 = extractvalue { i64, i1 } %b.new.buf.len2358, 1
  br i1 %ovf360, label %str_overflow_abort362, label %b.new.buf.len2361

b.nogrow2347:                                     ; preds = %b.app.new.len341
  br label %b.grow_done348

b.grow_done348:                                   ; preds = %b.nogrow2347, %b.new.buf.len2361
  %app.str.data368 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.32.struct, i32 0, i32 1), align 8
  %b.app.data369 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load326, i32 0, i32 1
  %b.app.data370 = load ptr, ptr %b.app.data369, align 8
  %b.app.dst371 = getelementptr i8, ptr %b.app.data370, i64 %b.app.cur.len337
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst371, ptr align 1 %app.str.data368, i64 %app.str.len328, i1 false)
  %b.app.nul372 = getelementptr i8, ptr %b.app.data370, i64 %sum339
  store i8 0, ptr %b.app.nul372, align 1
  %b.len.gep373 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load326, i32 0, i32 0
  store i64 %sum339, ptr %b.len.gep373, align 8
  br label %choice.exit

b.new.buf.len2361:                                ; preds = %str_overflow_abort362, %b.grow2346
  %arena.cur363 = call ptr @dva_arena_current()
  %b.new.buf2364 = call ptr @dva_arena_alloc(ptr %arena.cur363, i64 %sum359)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2364, ptr align 1 %b.cur.data2357, i64 %b.cur.len2355, i1 false)
  %b.grow2.nul365 = getelementptr i8, ptr %b.new.buf2364, i64 %b.cur.len2355
  store i8 0, ptr %b.grow2.nul365, align 1
  %b.new.data2.gep366 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load326, i32 0, i32 1
  store ptr %b.new.buf2364, ptr %b.new.data2.gep366, align 8
  %b.new.cap2.gep367 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load326, i32 0, i32 2
  store i64 %b.new.cap353, ptr %b.new.cap2.gep367, align 8
  br label %b.grow_done348

str_overflow_abort362:                            ; preds = %b.grow2346
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2361

choice.case374:                                   ; preds = %choice.next324
  %b.load376 = load ptr, ptr %var.b, align 8
  %app.str.len377 = load i64, ptr @str.33.struct, align 8
  %app.str.len378 = and i64 %app.str.len377, 281474976710655
  %str.tag379 = lshr i64 %app.str.len377, 48
  %str.immortal380 = icmp eq i64 %str.tag379, 0
  br i1 %str.immortal380, label %str_ok382, label %str_gen_check381

choice.next375:                                   ; preds = %choice.next324
  %b.load553 = load ptr, ptr %var.b, align 8
  %var.load554 = load i64, ptr %var.c, align 8
  %b.b.ge0 = icmp sge i64 %var.load554, 0
  %b.b.le255 = icmp sle i64 %var.load554, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

str_gen_check381:                                 ; preds = %choice.case374
  %arena.cur384 = call ptr @dva_arena_current()
  %tag.valid385 = call i1 @dva_arena_validate_tag(ptr %arena.cur384, i64 %str.tag379)
  br i1 %tag.valid385, label %str_ok382, label %str_stale383

str_ok382:                                        ; preds = %str_stale383, %str_gen_check381, %choice.case374
  %b.app.cur.len386 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load376, i32 0, i32 0
  %b.app.cur.len387 = load i64, ptr %b.app.cur.len386, align 8
  %b.app.new.len388 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len387, i64 %app.str.len378)
  %sum389 = extractvalue { i64, i1 } %b.app.new.len388, 0
  %ovf390 = extractvalue { i64, i1 } %b.app.new.len388, 1
  br i1 %ovf390, label %str_overflow_abort392, label %b.app.new.len391

str_stale383:                                     ; preds = %str_gen_check381
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok382

b.app.new.len391:                                 ; preds = %str_overflow_abort392, %str_ok382
  %b.cap393 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load376, i32 0, i32 2
  %b.cap394 = load i64, ptr %b.cap393, align 8
  %b.need.grow395 = icmp slt i64 %b.cap394, %sum389
  br i1 %b.need.grow395, label %b.grow2396, label %b.nogrow2397

str_overflow_abort392:                            ; preds = %str_ok382
  %29 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len391

b.grow2396:                                       ; preds = %b.app.new.len391
  %b.cap2399 = mul i64 %b.cap394, 2
  %b.cap.small400 = icmp slt i64 %b.cap2399, 16
  %b.cap.grow401 = select i1 %b.cap.small400, i64 16, i64 %b.cap2399
  %b.cap.need402 = icmp slt i64 %b.cap.grow401, %sum389
  %b.new.cap403 = select i1 %b.cap.need402, i64 %sum389, i64 %b.cap.grow401
  %b.cur.len2404 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load376, i32 0, i32 0
  %b.cur.len2405 = load i64, ptr %b.cur.len2404, align 8
  %b.cur.data2406 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load376, i32 0, i32 1
  %b.cur.data2407 = load ptr, ptr %b.cur.data2406, align 8
  %b.new.buf.len2408 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap403, i64 1)
  %sum409 = extractvalue { i64, i1 } %b.new.buf.len2408, 0
  %ovf410 = extractvalue { i64, i1 } %b.new.buf.len2408, 1
  br i1 %ovf410, label %str_overflow_abort412, label %b.new.buf.len2411

b.nogrow2397:                                     ; preds = %b.app.new.len391
  br label %b.grow_done398

b.grow_done398:                                   ; preds = %b.nogrow2397, %b.new.buf.len2411
  %app.str.data418 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.33.struct, i32 0, i32 1), align 8
  %b.app.data419 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load376, i32 0, i32 1
  %b.app.data420 = load ptr, ptr %b.app.data419, align 8
  %b.app.dst421 = getelementptr i8, ptr %b.app.data420, i64 %b.app.cur.len387
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst421, ptr align 1 %app.str.data418, i64 %app.str.len378, i1 false)
  %b.app.nul422 = getelementptr i8, ptr %b.app.data420, i64 %sum389
  store i8 0, ptr %b.app.nul422, align 1
  %b.len.gep423 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load376, i32 0, i32 0
  store i64 %sum389, ptr %b.len.gep423, align 8
  %b.load424 = load ptr, ptr %var.b, align 8
  %var.load425 = load i64, ptr %var.c, align 8
  %shrtmp = lshr i64 %var.load425, 4
  %call.res = call i32 @"json::#hex_digit"(i64 %shrtmp)
  %coerce.sext = sext i32 %call.res to i64
  %br.cmp1 = icmp slt i64 %coerce.sext, 128
  %br.cmp2 = icmp slt i64 %coerce.sext, 2048
  %br.cmp3 = icmp slt i64 %coerce.sext, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.cur.len426 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load424, i32 0, i32 0
  %b.rn.cur.len427 = load i64, ptr %b.rn.cur.len426, align 8
  %b.rn.new.len428 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len427, i64 %br.width)
  %sum429 = extractvalue { i64, i1 } %b.rn.new.len428, 0
  %ovf430 = extractvalue { i64, i1 } %b.rn.new.len428, 1
  br i1 %ovf430, label %str_overflow_abort432, label %b.rn.new.len431

b.new.buf.len2411:                                ; preds = %str_overflow_abort412, %b.grow2396
  %arena.cur413 = call ptr @dva_arena_current()
  %b.new.buf2414 = call ptr @dva_arena_alloc(ptr %arena.cur413, i64 %sum409)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2414, ptr align 1 %b.cur.data2407, i64 %b.cur.len2405, i1 false)
  %b.grow2.nul415 = getelementptr i8, ptr %b.new.buf2414, i64 %b.cur.len2405
  store i8 0, ptr %b.grow2.nul415, align 1
  %b.new.data2.gep416 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load376, i32 0, i32 1
  store ptr %b.new.buf2414, ptr %b.new.data2.gep416, align 8
  %b.new.cap2.gep417 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load376, i32 0, i32 2
  store i64 %b.new.cap403, ptr %b.new.cap2.gep417, align 8
  br label %b.grow_done398

str_overflow_abort412:                            ; preds = %b.grow2396
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2411

b.rn.new.len431:                                  ; preds = %str_overflow_abort432, %b.grow_done398
  %b.cap433 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load424, i32 0, i32 2
  %b.cap434 = load i64, ptr %b.cap433, align 8
  %b.need.grow435 = icmp slt i64 %b.cap434, %sum429
  br i1 %b.need.grow435, label %b.grow2436, label %b.nogrow2437

str_overflow_abort432:                            ; preds = %b.grow_done398
  %31 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len431

b.grow2436:                                       ; preds = %b.rn.new.len431
  %b.cap2439 = mul i64 %b.cap434, 2
  %b.cap.small440 = icmp slt i64 %b.cap2439, 16
  %b.cap.grow441 = select i1 %b.cap.small440, i64 16, i64 %b.cap2439
  %b.cap.need442 = icmp slt i64 %b.cap.grow441, %sum429
  %b.new.cap443 = select i1 %b.cap.need442, i64 %sum429, i64 %b.cap.grow441
  %b.cur.len2444 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load424, i32 0, i32 0
  %b.cur.len2445 = load i64, ptr %b.cur.len2444, align 8
  %b.cur.data2446 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load424, i32 0, i32 1
  %b.cur.data2447 = load ptr, ptr %b.cur.data2446, align 8
  %b.new.buf.len2448 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap443, i64 1)
  %sum449 = extractvalue { i64, i1 } %b.new.buf.len2448, 0
  %ovf450 = extractvalue { i64, i1 } %b.new.buf.len2448, 1
  br i1 %ovf450, label %str_overflow_abort452, label %b.new.buf.len2451

b.nogrow2437:                                     ; preds = %b.rn.new.len431
  br label %b.grow_done438

b.grow_done438:                                   ; preds = %b.nogrow2437, %b.new.buf.len2451
  %b.rn.data458 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load424, i32 0, i32 1
  %b.rn.data459 = load ptr, ptr %b.rn.data458, align 8
  %b.rn.dst460 = getelementptr i8, ptr %b.rn.data459, i64 %b.rn.cur.len427
  br i1 %br.cmp1, label %br.b1.114, label %br.c2.114

b.new.buf.len2451:                                ; preds = %str_overflow_abort452, %b.grow2436
  %arena.cur453 = call ptr @dva_arena_current()
  %b.new.buf2454 = call ptr @dva_arena_alloc(ptr %arena.cur453, i64 %sum449)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2454, ptr align 1 %b.cur.data2447, i64 %b.cur.len2445, i1 false)
  %b.grow2.nul455 = getelementptr i8, ptr %b.new.buf2454, i64 %b.cur.len2445
  store i8 0, ptr %b.grow2.nul455, align 1
  %b.new.data2.gep456 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load424, i32 0, i32 1
  store ptr %b.new.buf2454, ptr %b.new.data2.gep456, align 8
  %b.new.cap2.gep457 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load424, i32 0, i32 2
  store i64 %b.new.cap443, ptr %b.new.cap2.gep457, align 8
  br label %b.grow_done438

str_overflow_abort452:                            ; preds = %b.grow2436
  %32 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2451

br.b1.114:                                        ; preds = %b.grow_done438
  %br.b1.0 = trunc i64 %coerce.sext to i8
  store i8 %br.b1.0, ptr %b.rn.dst460, align 1
  br label %br.done.114

br.c2.114:                                        ; preds = %b.grow_done438
  br i1 %br.cmp2, label %br.b2.114, label %br.c3.114

br.b2.114:                                        ; preds = %br.c2.114
  %br.sh6 = lshr i64 %coerce.sext, 6
  %br.b2.0 = or i64 %br.sh6, 192
  %br.b2.0t = trunc i64 %br.b2.0 to i8
  %br.m6 = and i64 %coerce.sext, 63
  %br.b2.1 = or i64 %br.m6, 128
  %br.b2.1t = trunc i64 %br.b2.1 to i8
  store i8 %br.b2.0t, ptr %b.rn.dst460, align 1
  %br.dst1461 = getelementptr i8, ptr %b.rn.dst460, i64 1
  store i8 %br.b2.1t, ptr %br.dst1461, align 1
  br label %br.done.114

br.c3.114:                                        ; preds = %br.c2.114
  br i1 %br.cmp3, label %br.b3.114, label %br.b4.114

br.b3.114:                                        ; preds = %br.c3.114
  %br.sh12 = lshr i64 %coerce.sext, 12
  %br.b3.0 = or i64 %br.sh12, 224
  %br.b3.0t = trunc i64 %br.b3.0 to i8
  %br.sh6.3 = lshr i64 %coerce.sext, 6
  %br.m6.3 = and i64 %br.sh6.3, 63
  %br.b3.1 = or i64 %br.m6.3, 128
  %br.b3.1t = trunc i64 %br.b3.1 to i8
  %br.mend = and i64 %coerce.sext, 63
  %br.b3.2 = or i64 %br.mend, 128
  %br.b3.2t = trunc i64 %br.b3.2 to i8
  store i8 %br.b3.0t, ptr %b.rn.dst460, align 1
  %br.dst1.3462 = getelementptr i8, ptr %b.rn.dst460, i64 1
  store i8 %br.b3.1t, ptr %br.dst1.3462, align 1
  %br.dst2.3463 = getelementptr i8, ptr %b.rn.dst460, i64 2
  store i8 %br.b3.2t, ptr %br.dst2.3463, align 1
  br label %br.done.114

br.b4.114:                                        ; preds = %br.c3.114
  %br.sh18 = lshr i64 %coerce.sext, 18
  %br.b4.0 = or i64 %br.sh18, 240
  %br.b4.0t = trunc i64 %br.b4.0 to i8
  %br.sh12.4 = lshr i64 %coerce.sext, 12
  %br.m12.4 = and i64 %br.sh12.4, 63
  %br.b4.1 = or i64 %br.m12.4, 128
  %br.b4.1t = trunc i64 %br.b4.1 to i8
  %br.sh6.4 = lshr i64 %coerce.sext, 6
  %br.m6.4 = and i64 %br.sh6.4, 63
  %br.b4.2 = or i64 %br.m6.4, 128
  %br.b4.2t = trunc i64 %br.b4.2 to i8
  %br.mend4 = and i64 %coerce.sext, 63
  %br.b4.3 = or i64 %br.mend4, 128
  %br.b4.3t = trunc i64 %br.b4.3 to i8
  store i8 %br.b4.0t, ptr %b.rn.dst460, align 1
  %br.dst1.4464 = getelementptr i8, ptr %b.rn.dst460, i64 1
  store i8 %br.b4.1t, ptr %br.dst1.4464, align 1
  %br.dst2.4465 = getelementptr i8, ptr %b.rn.dst460, i64 2
  store i8 %br.b4.2t, ptr %br.dst2.4465, align 1
  %br.dst3.4466 = getelementptr i8, ptr %b.rn.dst460, i64 3
  store i8 %br.b4.3t, ptr %br.dst3.4466, align 1
  br label %br.done.114

br.done.114:                                      ; preds = %br.b4.114, %br.b3.114, %br.b2.114, %br.b1.114
  %br.nul467 = getelementptr i8, ptr %b.rn.data459, i64 %sum429
  store i8 0, ptr %br.nul467, align 1
  %b.len.gep468 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load424, i32 0, i32 0
  store i64 %sum429, ptr %b.len.gep468, align 8
  %b.load469 = load ptr, ptr %var.b, align 8
  %var.load470 = load i64, ptr %var.c, align 8
  %call.res471 = call i32 @"json::#hex_digit"(i64 %var.load470)
  %coerce.sext472 = sext i32 %call.res471 to i64
  %br.cmp1473 = icmp slt i64 %coerce.sext472, 128
  %br.cmp2474 = icmp slt i64 %coerce.sext472, 2048
  %br.cmp3475 = icmp slt i64 %coerce.sext472, 65536
  %br.w3476 = select i1 %br.cmp3475, i64 3, i64 4
  %br.w2477 = select i1 %br.cmp2474, i64 2, i64 %br.w3476
  %br.width478 = select i1 %br.cmp1473, i64 1, i64 %br.w2477
  %b.rn.cur.len479 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load469, i32 0, i32 0
  %b.rn.cur.len480 = load i64, ptr %b.rn.cur.len479, align 8
  %b.rn.new.len481 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len480, i64 %br.width478)
  %sum482 = extractvalue { i64, i1 } %b.rn.new.len481, 0
  %ovf483 = extractvalue { i64, i1 } %b.rn.new.len481, 1
  br i1 %ovf483, label %str_overflow_abort485, label %b.rn.new.len484

b.rn.new.len484:                                  ; preds = %str_overflow_abort485, %br.done.114
  %b.cap486 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load469, i32 0, i32 2
  %b.cap487 = load i64, ptr %b.cap486, align 8
  %b.need.grow488 = icmp slt i64 %b.cap487, %sum482
  br i1 %b.need.grow488, label %b.grow2489, label %b.nogrow2490

str_overflow_abort485:                            ; preds = %br.done.114
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len484

b.grow2489:                                       ; preds = %b.rn.new.len484
  %b.cap2492 = mul i64 %b.cap487, 2
  %b.cap.small493 = icmp slt i64 %b.cap2492, 16
  %b.cap.grow494 = select i1 %b.cap.small493, i64 16, i64 %b.cap2492
  %b.cap.need495 = icmp slt i64 %b.cap.grow494, %sum482
  %b.new.cap496 = select i1 %b.cap.need495, i64 %sum482, i64 %b.cap.grow494
  %b.cur.len2497 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load469, i32 0, i32 0
  %b.cur.len2498 = load i64, ptr %b.cur.len2497, align 8
  %b.cur.data2499 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load469, i32 0, i32 1
  %b.cur.data2500 = load ptr, ptr %b.cur.data2499, align 8
  %b.new.buf.len2501 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap496, i64 1)
  %sum502 = extractvalue { i64, i1 } %b.new.buf.len2501, 0
  %ovf503 = extractvalue { i64, i1 } %b.new.buf.len2501, 1
  br i1 %ovf503, label %str_overflow_abort505, label %b.new.buf.len2504

b.nogrow2490:                                     ; preds = %b.rn.new.len484
  br label %b.grow_done491

b.grow_done491:                                   ; preds = %b.nogrow2490, %b.new.buf.len2504
  %b.rn.data511 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load469, i32 0, i32 1
  %b.rn.data512 = load ptr, ptr %b.rn.data511, align 8
  %b.rn.dst513 = getelementptr i8, ptr %b.rn.data512, i64 %b.rn.cur.len480
  br i1 %br.cmp1473, label %br.b1.115, label %br.c2.115

b.new.buf.len2504:                                ; preds = %str_overflow_abort505, %b.grow2489
  %arena.cur506 = call ptr @dva_arena_current()
  %b.new.buf2507 = call ptr @dva_arena_alloc(ptr %arena.cur506, i64 %sum502)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2507, ptr align 1 %b.cur.data2500, i64 %b.cur.len2498, i1 false)
  %b.grow2.nul508 = getelementptr i8, ptr %b.new.buf2507, i64 %b.cur.len2498
  store i8 0, ptr %b.grow2.nul508, align 1
  %b.new.data2.gep509 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load469, i32 0, i32 1
  store ptr %b.new.buf2507, ptr %b.new.data2.gep509, align 8
  %b.new.cap2.gep510 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load469, i32 0, i32 2
  store i64 %b.new.cap496, ptr %b.new.cap2.gep510, align 8
  br label %b.grow_done491

str_overflow_abort505:                            ; preds = %b.grow2489
  %34 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2504

br.b1.115:                                        ; preds = %b.grow_done491
  %br.b1.0514 = trunc i64 %coerce.sext472 to i8
  store i8 %br.b1.0514, ptr %b.rn.dst513, align 1
  br label %br.done.115

br.c2.115:                                        ; preds = %b.grow_done491
  br i1 %br.cmp2474, label %br.b2.115, label %br.c3.115

br.b2.115:                                        ; preds = %br.c2.115
  %br.sh6515 = lshr i64 %coerce.sext472, 6
  %br.b2.0516 = or i64 %br.sh6515, 192
  %br.b2.0t517 = trunc i64 %br.b2.0516 to i8
  %br.m6518 = and i64 %coerce.sext472, 63
  %br.b2.1519 = or i64 %br.m6518, 128
  %br.b2.1t520 = trunc i64 %br.b2.1519 to i8
  store i8 %br.b2.0t517, ptr %b.rn.dst513, align 1
  %br.dst1521 = getelementptr i8, ptr %b.rn.dst513, i64 1
  store i8 %br.b2.1t520, ptr %br.dst1521, align 1
  br label %br.done.115

br.c3.115:                                        ; preds = %br.c2.115
  br i1 %br.cmp3475, label %br.b3.115, label %br.b4.115

br.b3.115:                                        ; preds = %br.c3.115
  %br.sh12522 = lshr i64 %coerce.sext472, 12
  %br.b3.0523 = or i64 %br.sh12522, 224
  %br.b3.0t524 = trunc i64 %br.b3.0523 to i8
  %br.sh6.3525 = lshr i64 %coerce.sext472, 6
  %br.m6.3526 = and i64 %br.sh6.3525, 63
  %br.b3.1527 = or i64 %br.m6.3526, 128
  %br.b3.1t528 = trunc i64 %br.b3.1527 to i8
  %br.mend529 = and i64 %coerce.sext472, 63
  %br.b3.2530 = or i64 %br.mend529, 128
  %br.b3.2t531 = trunc i64 %br.b3.2530 to i8
  store i8 %br.b3.0t524, ptr %b.rn.dst513, align 1
  %br.dst1.3532 = getelementptr i8, ptr %b.rn.dst513, i64 1
  store i8 %br.b3.1t528, ptr %br.dst1.3532, align 1
  %br.dst2.3533 = getelementptr i8, ptr %b.rn.dst513, i64 2
  store i8 %br.b3.2t531, ptr %br.dst2.3533, align 1
  br label %br.done.115

br.b4.115:                                        ; preds = %br.c3.115
  %br.sh18534 = lshr i64 %coerce.sext472, 18
  %br.b4.0535 = or i64 %br.sh18534, 240
  %br.b4.0t536 = trunc i64 %br.b4.0535 to i8
  %br.sh12.4537 = lshr i64 %coerce.sext472, 12
  %br.m12.4538 = and i64 %br.sh12.4537, 63
  %br.b4.1539 = or i64 %br.m12.4538, 128
  %br.b4.1t540 = trunc i64 %br.b4.1539 to i8
  %br.sh6.4541 = lshr i64 %coerce.sext472, 6
  %br.m6.4542 = and i64 %br.sh6.4541, 63
  %br.b4.2543 = or i64 %br.m6.4542, 128
  %br.b4.2t544 = trunc i64 %br.b4.2543 to i8
  %br.mend4545 = and i64 %coerce.sext472, 63
  %br.b4.3546 = or i64 %br.mend4545, 128
  %br.b4.3t547 = trunc i64 %br.b4.3546 to i8
  store i8 %br.b4.0t536, ptr %b.rn.dst513, align 1
  %br.dst1.4548 = getelementptr i8, ptr %b.rn.dst513, i64 1
  store i8 %br.b4.1t540, ptr %br.dst1.4548, align 1
  %br.dst2.4549 = getelementptr i8, ptr %b.rn.dst513, i64 2
  store i8 %br.b4.2t544, ptr %br.dst2.4549, align 1
  %br.dst3.4550 = getelementptr i8, ptr %b.rn.dst513, i64 3
  store i8 %br.b4.3t547, ptr %br.dst3.4550, align 1
  br label %br.done.115

br.done.115:                                      ; preds = %br.b4.115, %br.b3.115, %br.b2.115, %br.b1.115
  %br.nul551 = getelementptr i8, ptr %b.rn.data512, i64 %sum482
  store i8 0, ptr %br.nul551, align 1
  %b.len.gep552 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load469, i32 0, i32 0
  store i64 %sum482, ptr %b.len.gep552, align 8
  br label %choice.exit

b.byte_ok:                                        ; preds = %b.byte_err, %choice.next375
  %b.byte.i8 = trunc i64 %var.load554 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 0
  %b.len555 = load i64, ptr %b.len, align 8
  %b.cap556 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 2
  %b.cap557 = load i64, ptr %b.cap556, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 1
  %b.data558 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len555, %b.cap557
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.next375
  %35 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2559 = mul i64 %b.cap557, 2
  %b.cap.small560 = icmp slt i64 %b.cap2559, 16
  %b.new.cap561 = select i1 %b.cap.small560, i64 16, i64 %b.cap2559
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap561, i64 1)
  %sum562 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf563 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf563, label %str_overflow_abort565, label %b.new.buf.len564

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len564
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 1
  %b.cur.data567 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 0
  %b.cur.len568 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data567, i64 %b.cur.len568
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len568, 1
  %b.nul = getelementptr i8, ptr %b.cur.data567, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep569 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep569, align 8
  br label %choice.exit

b.new.buf.len564:                                 ; preds = %str_overflow_abort565, %b.grow
  %arena.cur566 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur566, i64 %sum562)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data558, i64 %b.len555, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len555
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 2
  store i64 %b.new.cap561, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort565:                            ; preds = %b.grow
  %36 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len564

b.rn.new.len576:                                  ; preds = %str_overflow_abort577, %loop.exit.113
  %b.cap578 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load570, i32 0, i32 2
  %b.cap579 = load i64, ptr %b.cap578, align 8
  %b.need.grow580 = icmp slt i64 %b.cap579, %sum574
  br i1 %b.need.grow580, label %b.grow2581, label %b.nogrow2582

str_overflow_abort577:                            ; preds = %loop.exit.113
  %37 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len576

b.grow2581:                                       ; preds = %b.rn.new.len576
  %b.cap2584 = mul i64 %b.cap579, 2
  %b.cap.small585 = icmp slt i64 %b.cap2584, 16
  %b.cap.grow586 = select i1 %b.cap.small585, i64 16, i64 %b.cap2584
  %b.cap.need587 = icmp slt i64 %b.cap.grow586, %sum574
  %b.new.cap588 = select i1 %b.cap.need587, i64 %sum574, i64 %b.cap.grow586
  %b.cur.len2589 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load570, i32 0, i32 0
  %b.cur.len2590 = load i64, ptr %b.cur.len2589, align 8
  %b.cur.data2591 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load570, i32 0, i32 1
  %b.cur.data2592 = load ptr, ptr %b.cur.data2591, align 8
  %b.new.buf.len2593 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap588, i64 1)
  %sum594 = extractvalue { i64, i1 } %b.new.buf.len2593, 0
  %ovf595 = extractvalue { i64, i1 } %b.new.buf.len2593, 1
  br i1 %ovf595, label %str_overflow_abort597, label %b.new.buf.len2596

b.nogrow2582:                                     ; preds = %b.rn.new.len576
  br label %b.grow_done583

b.grow_done583:                                   ; preds = %b.nogrow2582, %b.new.buf.len2596
  %b.rn.data603 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load570, i32 0, i32 1
  %b.rn.data604 = load ptr, ptr %b.rn.data603, align 8
  %b.rn.dst605 = getelementptr i8, ptr %b.rn.data604, i64 %b.rn.cur.len572
  br i1 true, label %br.b1.116, label %br.c2.116

b.new.buf.len2596:                                ; preds = %str_overflow_abort597, %b.grow2581
  %arena.cur598 = call ptr @dva_arena_current()
  %b.new.buf2599 = call ptr @dva_arena_alloc(ptr %arena.cur598, i64 %sum594)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2599, ptr align 1 %b.cur.data2592, i64 %b.cur.len2590, i1 false)
  %b.grow2.nul600 = getelementptr i8, ptr %b.new.buf2599, i64 %b.cur.len2590
  store i8 0, ptr %b.grow2.nul600, align 1
  %b.new.data2.gep601 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load570, i32 0, i32 1
  store ptr %b.new.buf2599, ptr %b.new.data2.gep601, align 8
  %b.new.cap2.gep602 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load570, i32 0, i32 2
  store i64 %b.new.cap588, ptr %b.new.cap2.gep602, align 8
  br label %b.grow_done583

str_overflow_abort597:                            ; preds = %b.grow2581
  %38 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2596

br.b1.116:                                        ; preds = %b.grow_done583
  store i8 34, ptr %b.rn.dst605, align 1
  br label %br.done.116

br.c2.116:                                        ; preds = %b.grow_done583
  br i1 true, label %br.b2.116, label %br.c3.116

br.b2.116:                                        ; preds = %br.c2.116
  store i8 -64, ptr %b.rn.dst605, align 1
  %br.dst1606 = getelementptr i8, ptr %b.rn.dst605, i64 1
  store i8 -94, ptr %br.dst1606, align 1
  br label %br.done.116

br.c3.116:                                        ; preds = %br.c2.116
  br i1 true, label %br.b3.116, label %br.b4.116

br.b3.116:                                        ; preds = %br.c3.116
  store i8 -32, ptr %b.rn.dst605, align 1
  %br.dst1.3607 = getelementptr i8, ptr %b.rn.dst605, i64 1
  store i8 -128, ptr %br.dst1.3607, align 1
  %br.dst2.3608 = getelementptr i8, ptr %b.rn.dst605, i64 2
  store i8 -94, ptr %br.dst2.3608, align 1
  br label %br.done.116

br.b4.116:                                        ; preds = %br.c3.116
  store i8 -16, ptr %b.rn.dst605, align 1
  %br.dst1.4609 = getelementptr i8, ptr %b.rn.dst605, i64 1
  store i8 -128, ptr %br.dst1.4609, align 1
  %br.dst2.4610 = getelementptr i8, ptr %b.rn.dst605, i64 2
  store i8 -128, ptr %br.dst2.4610, align 1
  %br.dst3.4611 = getelementptr i8, ptr %b.rn.dst605, i64 3
  store i8 -94, ptr %br.dst3.4611, align 1
  br label %br.done.116

br.done.116:                                      ; preds = %br.b4.116, %br.b3.116, %br.b2.116, %br.b1.116
  %br.nul612 = getelementptr i8, ptr %b.rn.data604, i64 %sum574
  store i8 0, ptr %br.nul612, align 1
  %b.len.gep613 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load570, i32 0, i32 0
  store i64 %sum574, ptr %b.len.gep613, align 8
  ret void
}

define ptr @"json::escape_string"(ptr %0) #1 {
entry:
  %var.b = alloca ptr, align 8
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
  %addtmp = add i64 %str.len.query2, 8
  %arena.cur3 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 24)
  %cap.neg = icmp slt i64 %addtmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len4

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

b.buf.len4:                                       ; preds = %str_overflow_abort, %str_ok
  %arena.cur5 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load6 = load ptr, ptr %var.b, align 8
  %var.load7 = load ptr, ptr %var.s, align 8
  call void @"json::escape_string_into"(ptr %var.load6, ptr %var.load7)
  %var.load8 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load8, i32 0, i32 0
  %b.freeze.len9 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load8, i32 0, i32 1
  %b.freeze.data10 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_overflow_abort:                               ; preds = %str_ok
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len4

b.freeze.check:                                   ; preds = %b.buf.len4
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data10, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data10, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data10, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len9, 1
  %arena.cur11 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data10, i64 %b.freeze.len9, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len9
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.buf.len4
  %b.freeze.data12 = phi ptr [ %b.freeze.data10, %b.buf.len4 ], [ %b.freeze.data10, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur13 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len9, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data12, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load8, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load8, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load8, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define ptr @"json::format_number"(double %0) #1 {
entry:
  %var.s = alloca ptr, align 8
  %var.iv = alloca i64, align 8
  %var.f = alloca double, align 8
  store double %0, ptr %var.f, align 8
  %var.load = load double, ptr %var.f, align 8
  %var.load1 = load double, ptr %var.f, align 8
  %fcmptmp = fcmp une double %var.load, %var.load1
  br i1 %fcmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret ptr @str.17.struct

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load2 = load double, ptr %var.f, align 8
  %var.load3 = load double, ptr @"var.const::max_f64", align 8
  %fcmptmp4 = fcmp ogt double %var.load2, %var.load3
  br i1 %fcmptmp4, label %or.117.then, label %or.117.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

or.117.then:                                      ; preds = %choice.exit
  br label %or.117.exit

or.117.else:                                      ; preds = %choice.exit
  %var.load5 = load double, ptr %var.f, align 8
  %var.load6 = load double, ptr @"var.const::max_f64", align 8
  %fnegtmp = fneg double %var.load6
  %fcmptmp7 = fcmp olt double %var.load5, %fnegtmp
  br label %or.117.exit

or.117.exit:                                      ; preds = %or.117.else, %or.117.then
  %or.117.phi = phi i1 [ %fcmptmp4, %or.117.then ], [ %fcmptmp7, %or.117.else ]
  br i1 %or.117.phi, label %choice.then8, label %choice.exit9

choice.then8:                                     ; preds = %or.117.exit
  ret ptr @str.17.struct

choice.exit9:                                     ; preds = %ret.dead10, %or.117.exit
  %var.load11 = load double, ptr %var.f, align 8
  %cast.fptosi = fptosi double %var.load11 to i64
  store i64 %cast.fptosi, ptr %var.iv, align 8
  %var.load12 = load i64, ptr %var.iv, align 8
  %cast.sitofp = sitofp i64 %var.load12 to double
  %var.load13 = load double, ptr %var.f, align 8
  %fcmptmp14 = fcmp oeq double %cast.sitofp, %var.load13
  br i1 %fcmptmp14, label %and.118.then, label %and.118.else

ret.dead10:                                       ; No predecessors!
  br label %choice.exit9

and.118.then:                                     ; preds = %choice.exit9
  %var.load15 = load i64, ptr %var.iv, align 8
  %var.load17 = load i64, ptr @"var.const::max_safe_int", align 8
  %negtmp = sub i64 0, %var.load17
  %cmptmp = icmp sge i64 %var.load15, %negtmp
  br i1 %cmptmp, label %and.119.then, label %and.119.else

and.118.else:                                     ; preds = %choice.exit9
  br label %and.118.exit

and.118.exit:                                     ; preds = %and.118.else, %choice.exit16
  %and.118.phi = phi i1 [ %choice.res, %choice.exit16 ], [ %fcmptmp14, %and.118.else ]
  br i1 %and.118.phi, label %choice.then20, label %choice.else

choice.exit16:                                    ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br label %and.118.exit

choice.case:                                      ; preds = %and.119.exit
  br label %choice.exit16

choice.next:                                      ; preds = %and.119.exit
  br label %choice.exit16

and.119.then:                                     ; preds = %and.118.then
  %var.load18 = load i64, ptr @"var.const::max_safe_int", align 8
  %cmptmp19 = icmp sle i64 %var.load15, %var.load18
  br label %and.119.exit

and.119.else:                                     ; preds = %and.118.then
  br label %and.119.exit

and.119.exit:                                     ; preds = %and.119.else, %and.119.then
  %and.119.phi = phi i1 [ %cmptmp19, %and.119.then ], [ %cmptmp, %and.119.else ]
  br i1 %and.119.phi, label %choice.case, label %choice.next

choice.then20:                                    ; preds = %and.118.exit
  %var.load22 = load i64, ptr %var.iv, align 8
  %call.res = call ptr @"str::from_int"(i64 %var.load22)
  br label %choice.exit21

choice.else:                                      ; preds = %and.118.exit
  %var.load23 = load double, ptr %var.f, align 8
  %call.res24 = call ptr @"str::from_float"(double %var.load23)
  store ptr %call.res24, ptr %var.s, align 8
  %var.load25 = load ptr, ptr %var.s, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %eq.lhs.len29 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len30 = and i64 %eq.lhs.len29, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len29, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit21:                                    ; preds = %choice.exit26, %choice.then20
  %choice.res101 = phi ptr [ %call.res, %choice.then20 ], [ %choice.res100, %choice.exit26 ]
  ret ptr %choice.res101

choice.exit26:                                    ; preds = %choice.next28, %choice.case27
  %choice.res100 = phi ptr [ @str.17.struct, %choice.case27 ], [ %var.load99, %choice.next28 ]
  br label %choice.exit21

choice.case27:                                    ; preds = %str.eq.merge91
  br label %choice.exit26

choice.next28:                                    ; preds = %str.eq.merge91
  %var.load99 = load ptr, ptr %var.s, align 8
  br label %choice.exit26

str_gen_check:                                    ; preds = %choice.else
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else
  %eq.rhs.len = load i64, ptr @str.34.struct, align 8
  %eq.rhs.len31 = and i64 %eq.rhs.len, 281474976710655
  %str.tag32 = lshr i64 %eq.rhs.len, 48
  %str.immortal33 = icmp eq i64 %str.tag32, 0
  br i1 %str.immortal33, label %str_ok35, label %str_gen_check34

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check34:                                  ; preds = %str_ok
  %arena.cur37 = call ptr @dva_arena_current()
  %tag.valid38 = call i1 @dva_arena_validate_tag(ptr %arena.cur37, i64 %str.tag32)
  br i1 %tag.valid38, label %str_ok35, label %str_stale36

str_ok35:                                         ; preds = %str_stale36, %str_gen_check34, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len30, %eq.rhs.len31
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale36:                                      ; preds = %str_gen_check34
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok35

str.eq.then:                                      ; preds = %str_ok35
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %eq.lhs.data39 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.34.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data39, ptr %eq.rhs.data, i64 %eq.lhs.len30)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok35
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %eq.lhs.len40 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %eq.lhs.len41 = load i64, ptr %eq.lhs.len40, align 8
  %eq.lhs.len42 = and i64 %eq.lhs.len41, 281474976710655
  %str.tag43 = lshr i64 %eq.lhs.len41, 48
  %str.immortal44 = icmp eq i64 %str.tag43, 0
  br i1 %str.immortal44, label %str_ok46, label %str_gen_check45

str_gen_check45:                                  ; preds = %str.eq.merge
  %arena.cur48 = call ptr @dva_arena_current()
  %tag.valid49 = call i1 @dva_arena_validate_tag(ptr %arena.cur48, i64 %str.tag43)
  br i1 %tag.valid49, label %str_ok46, label %str_stale47

str_ok46:                                         ; preds = %str_stale47, %str_gen_check45, %str.eq.merge
  %eq.rhs.len50 = load i64, ptr @str.35.struct, align 8
  %eq.rhs.len51 = and i64 %eq.rhs.len50, 281474976710655
  %str.tag52 = lshr i64 %eq.rhs.len50, 48
  %str.immortal53 = icmp eq i64 %str.tag52, 0
  br i1 %str.immortal53, label %str_ok55, label %str_gen_check54

str_stale47:                                      ; preds = %str_gen_check45
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok46

str_gen_check54:                                  ; preds = %str_ok46
  %arena.cur57 = call ptr @dva_arena_current()
  %tag.valid58 = call i1 @dva_arena_validate_tag(ptr %arena.cur57, i64 %str.tag52)
  br i1 %tag.valid58, label %str_ok55, label %str_stale56

str_ok55:                                         ; preds = %str_stale56, %str_gen_check54, %str_ok46
  %eq.len59 = icmp eq i64 %eq.lhs.len42, %eq.rhs.len51
  br i1 %eq.len59, label %str.eq.then60, label %str.eq.else61

str_stale56:                                      ; preds = %str_gen_check54
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok55

str.eq.then60:                                    ; preds = %str_ok55
  %eq.lhs.data63 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %eq.lhs.data64 = load ptr, ptr %eq.lhs.data63, align 8
  %eq.rhs.data65 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.35.struct, i32 0, i32 1), align 8
  %eq.memcmp66 = call i32 @memcmp(ptr %eq.lhs.data64, ptr %eq.rhs.data65, i64 %eq.lhs.len42)
  %eq.cmp.zero67 = icmp eq i32 %eq.memcmp66, 0
  br label %str.eq.merge62

str.eq.else61:                                    ; preds = %str_ok55
  br label %str.eq.merge62

str.eq.merge62:                                   ; preds = %str.eq.else61, %str.eq.then60
  %str.eq.result68 = phi i1 [ %eq.cmp.zero67, %str.eq.then60 ], [ false, %str.eq.else61 ]
  %case.or = or i1 %str.eq.result, %str.eq.result68
  %eq.lhs.len69 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %eq.lhs.len70 = load i64, ptr %eq.lhs.len69, align 8
  %eq.lhs.len71 = and i64 %eq.lhs.len70, 281474976710655
  %str.tag72 = lshr i64 %eq.lhs.len70, 48
  %str.immortal73 = icmp eq i64 %str.tag72, 0
  br i1 %str.immortal73, label %str_ok75, label %str_gen_check74

str_gen_check74:                                  ; preds = %str.eq.merge62
  %arena.cur77 = call ptr @dva_arena_current()
  %tag.valid78 = call i1 @dva_arena_validate_tag(ptr %arena.cur77, i64 %str.tag72)
  br i1 %tag.valid78, label %str_ok75, label %str_stale76

str_ok75:                                         ; preds = %str_stale76, %str_gen_check74, %str.eq.merge62
  %eq.rhs.len79 = load i64, ptr @str.36.struct, align 8
  %eq.rhs.len80 = and i64 %eq.rhs.len79, 281474976710655
  %str.tag81 = lshr i64 %eq.rhs.len79, 48
  %str.immortal82 = icmp eq i64 %str.tag81, 0
  br i1 %str.immortal82, label %str_ok84, label %str_gen_check83

str_stale76:                                      ; preds = %str_gen_check74
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok75

str_gen_check83:                                  ; preds = %str_ok75
  %arena.cur86 = call ptr @dva_arena_current()
  %tag.valid87 = call i1 @dva_arena_validate_tag(ptr %arena.cur86, i64 %str.tag81)
  br i1 %tag.valid87, label %str_ok84, label %str_stale85

str_ok84:                                         ; preds = %str_stale85, %str_gen_check83, %str_ok75
  %eq.len88 = icmp eq i64 %eq.lhs.len71, %eq.rhs.len80
  br i1 %eq.len88, label %str.eq.then89, label %str.eq.else90

str_stale85:                                      ; preds = %str_gen_check83
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok84

str.eq.then89:                                    ; preds = %str_ok84
  %eq.lhs.data92 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %eq.lhs.data93 = load ptr, ptr %eq.lhs.data92, align 8
  %eq.rhs.data94 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.36.struct, i32 0, i32 1), align 8
  %eq.memcmp95 = call i32 @memcmp(ptr %eq.lhs.data93, ptr %eq.rhs.data94, i64 %eq.lhs.len71)
  %eq.cmp.zero96 = icmp eq i32 %eq.memcmp95, 0
  br label %str.eq.merge91

str.eq.else90:                                    ; preds = %str_ok84
  br label %str.eq.merge91

str.eq.merge91:                                   ; preds = %str.eq.else90, %str.eq.then89
  %str.eq.result97 = phi i1 [ %eq.cmp.zero96, %str.eq.then89 ], [ false, %str.eq.else90 ]
  %case.or98 = or i1 %case.or, %str.eq.result97
  br i1 %case.or98, label %choice.case27, label %choice.next28
}

declare ptr @"str::from_int"(i64) #1

declare ptr @"str::from_float"(double) #1

define internal void @"json::#stringify_into"(ptr %0, ptr %1) #1 {
entry:
  %var._340 = alloca ptr, align 8
  %var._i339 = alloca i64, align 8
  %var.i333 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.125 = alloca i64, align 8
  %loop.idx.125 = alloca i64, align 8
  %var.pairs = alloca ptr, align 8
  %var._282 = alloca ptr, align 8
  %var._181 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.item = alloca ptr, align 8
  %loop.step.121 = alloca i64, align 8
  %loop.idx.121 = alloca i64, align 8
  %var.items = alloca ptr, align 8
  %var._146 = alloca ptr, align 8
  %var.flag = alloca i1, align 1
  %var._33 = alloca i1, align 1
  %var.n = alloca double, align 8
  %var._10 = alloca double, align 8
  %var.s = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store ptr %1, ptr %var.val, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next276, %br.done.128, %br.done.123, %b.grow_done113, %b.grow_done59, %b.grow_done, %choice.case
  ret void

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.b, align 8
  %var.load2 = load ptr, ptr %var.s, align 8
  call void @"json::escape_string_into"(ptr %var.load1, ptr %var.load2)
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %tag.gep5 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id6 = load i64, ptr %tag.gep5, align 8
  %tag.match7 = icmp eq i64 %tag.id6, 1
  br i1 %tag.match7, label %choice.case3, label %choice.next4

choice.case3:                                     ; preds = %choice.next
  %pay.gep8 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr9 = load ptr, ptr %pay.gep8, align 8
  %pay.float.null = icmp eq ptr %payload.ptr9, null
  br i1 %pay.float.null, label %pay.float.nullbb, label %pay.float.load

choice.next4:                                     ; preds = %choice.next
  %tag.gep28 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id29 = load i64, ptr %tag.gep28, align 8
  %tag.match30 = icmp eq i64 %tag.id29, 2
  br i1 %tag.match30, label %choice.case26, label %choice.next27

pay.float.load:                                   ; preds = %choice.case3
  %pay.float.val = load double, ptr %payload.ptr9, align 8
  br label %pay.float.merge

pay.float.nullbb:                                 ; preds = %choice.case3
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %pay.float.nullbb, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %pay.float.nullbb ]
  store double %pay.float.phi, ptr %var._10, align 8
  store double %pay.float.phi, ptr %var.n, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load11 = load double, ptr %var.n, align 8
  %call.res = call ptr @"json::format_number"(double %var.load11)
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %app.str.len12 = load i64, ptr %app.str.len, align 8
  %app.str.len13 = and i64 %app.str.len12, 281474976710655
  %str.tag = lshr i64 %app.str.len12, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %pay.float.merge
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %pay.float.merge
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len14 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len14, i64 %app.str.len13)
  %sum = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.app.new.len15

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

b.app.new.len15:                                  ; preds = %str_overflow_abort, %str_ok
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap16 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap16, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %str_ok
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len15

b.grow2:                                          ; preds = %b.app.new.len15
  %b.cap2 = mul i64 %b.cap16, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len217 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data218 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum19 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf20 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf20, label %str_overflow_abort22, label %b.new.buf.len221

b.nogrow2:                                        ; preds = %b.app.new.len15
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len221
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %app.str.data24 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data25 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data25, i64 %b.app.cur.len14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data24, i64 %app.str.len13, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data25, i64 %sum
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %choice.exit

b.new.buf.len221:                                 ; preds = %str_overflow_abort22, %b.grow2
  %arena.cur23 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 %sum19)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data218, i64 %b.cur.len217, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len217
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort22:                             ; preds = %b.grow2
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len221

choice.case26:                                    ; preds = %choice.next4
  %pay.gep31 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr32 = load ptr, ptr %pay.gep31, align 8
  %pay.int.null = icmp eq ptr %payload.ptr32, null
  br i1 %pay.int.null, label %pay.int.nullbb, label %pay.int.load

choice.next27:                                    ; preds = %choice.next4
  %tag.gep88 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id89 = load i64, ptr %tag.gep88, align 8
  %tag.match90 = icmp eq i64 %tag.id89, 3
  br i1 %tag.match90, label %choice.case86, label %choice.next87

pay.int.load:                                     ; preds = %choice.case26
  %pay.int.val = load i1, ptr %payload.ptr32, align 1
  br label %pay.int.merge

pay.int.nullbb:                                   ; preds = %choice.case26
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %pay.int.nullbb, %pay.int.load
  %pay.int.phi = phi i1 [ %pay.int.val, %pay.int.load ], [ false, %pay.int.nullbb ]
  store i1 %pay.int.phi, ptr %var._33, align 1
  store i1 %pay.int.phi, ptr %var.flag, align 1
  %b.load34 = load ptr, ptr %var.b, align 8
  %var.load35 = load i1, ptr %var.flag, align 1
  br i1 %var.load35, label %choice.then, label %choice.else

choice.then:                                      ; preds = %pay.int.merge
  br label %choice.exit36

choice.else:                                      ; preds = %pay.int.merge
  br label %choice.exit36

choice.exit36:                                    ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.0.struct, %choice.then ], [ @str.1.struct, %choice.else ]
  %app.str.len37 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 0
  %app.str.len38 = load i64, ptr %app.str.len37, align 8
  %app.str.len39 = and i64 %app.str.len38, 281474976710655
  %str.tag40 = lshr i64 %app.str.len38, 48
  %str.immortal41 = icmp eq i64 %str.tag40, 0
  br i1 %str.immortal41, label %str_ok43, label %str_gen_check42

str_gen_check42:                                  ; preds = %choice.exit36
  %arena.cur45 = call ptr @dva_arena_current()
  %tag.valid46 = call i1 @dva_arena_validate_tag(ptr %arena.cur45, i64 %str.tag40)
  br i1 %tag.valid46, label %str_ok43, label %str_stale44

str_ok43:                                         ; preds = %str_stale44, %str_gen_check42, %choice.exit36
  %b.app.cur.len47 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 0
  %b.app.cur.len48 = load i64, ptr %b.app.cur.len47, align 8
  %b.app.new.len49 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len48, i64 %app.str.len39)
  %sum50 = extractvalue { i64, i1 } %b.app.new.len49, 0
  %ovf51 = extractvalue { i64, i1 } %b.app.new.len49, 1
  br i1 %ovf51, label %str_overflow_abort53, label %b.app.new.len52

str_stale44:                                      ; preds = %str_gen_check42
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok43

b.app.new.len52:                                  ; preds = %str_overflow_abort53, %str_ok43
  %b.cap54 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 2
  %b.cap55 = load i64, ptr %b.cap54, align 8
  %b.need.grow56 = icmp slt i64 %b.cap55, %sum50
  br i1 %b.need.grow56, label %b.grow257, label %b.nogrow258

str_overflow_abort53:                             ; preds = %str_ok43
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len52

b.grow257:                                        ; preds = %b.app.new.len52
  %b.cap260 = mul i64 %b.cap55, 2
  %b.cap.small61 = icmp slt i64 %b.cap260, 16
  %b.cap.grow62 = select i1 %b.cap.small61, i64 16, i64 %b.cap260
  %b.cap.need63 = icmp slt i64 %b.cap.grow62, %sum50
  %b.new.cap64 = select i1 %b.cap.need63, i64 %sum50, i64 %b.cap.grow62
  %b.cur.len265 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 0
  %b.cur.len266 = load i64, ptr %b.cur.len265, align 8
  %b.cur.data267 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 1
  %b.cur.data268 = load ptr, ptr %b.cur.data267, align 8
  %b.new.buf.len269 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap64, i64 1)
  %sum70 = extractvalue { i64, i1 } %b.new.buf.len269, 0
  %ovf71 = extractvalue { i64, i1 } %b.new.buf.len269, 1
  br i1 %ovf71, label %str_overflow_abort73, label %b.new.buf.len272

b.nogrow258:                                      ; preds = %b.app.new.len52
  br label %b.grow_done59

b.grow_done59:                                    ; preds = %b.nogrow258, %b.new.buf.len272
  %app.str.data79 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %app.str.data80 = load ptr, ptr %app.str.data79, align 8
  %b.app.data81 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 1
  %b.app.data82 = load ptr, ptr %b.app.data81, align 8
  %b.app.dst83 = getelementptr i8, ptr %b.app.data82, i64 %b.app.cur.len48
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst83, ptr align 1 %app.str.data80, i64 %app.str.len39, i1 false)
  %b.app.nul84 = getelementptr i8, ptr %b.app.data82, i64 %sum50
  store i8 0, ptr %b.app.nul84, align 1
  %b.len.gep85 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 0
  store i64 %sum50, ptr %b.len.gep85, align 8
  br label %choice.exit

b.new.buf.len272:                                 ; preds = %str_overflow_abort73, %b.grow257
  %arena.cur74 = call ptr @dva_arena_current()
  %b.new.buf275 = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 %sum70)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf275, ptr align 1 %b.cur.data268, i64 %b.cur.len266, i1 false)
  %b.grow2.nul76 = getelementptr i8, ptr %b.new.buf275, i64 %b.cur.len266
  store i8 0, ptr %b.grow2.nul76, align 1
  %b.new.data2.gep77 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 1
  store ptr %b.new.buf275, ptr %b.new.data2.gep77, align 8
  %b.new.cap2.gep78 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 2
  store i64 %b.new.cap64, ptr %b.new.cap2.gep78, align 8
  br label %b.grow_done59

str_overflow_abort73:                             ; preds = %b.grow257
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len272

choice.case86:                                    ; preds = %choice.next27
  %b.load91 = load ptr, ptr %var.b, align 8
  %app.str.len92 = load i64, ptr @str.17.struct, align 8
  %app.str.len93 = and i64 %app.str.len92, 281474976710655
  %str.tag94 = lshr i64 %app.str.len92, 48
  %str.immortal95 = icmp eq i64 %str.tag94, 0
  br i1 %str.immortal95, label %str_ok97, label %str_gen_check96

choice.next87:                                    ; preds = %choice.next27
  %tag.gep141 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id142 = load i64, ptr %tag.gep141, align 8
  %tag.match143 = icmp eq i64 %tag.id142, 4
  br i1 %tag.match143, label %choice.case139, label %choice.next140

str_gen_check96:                                  ; preds = %choice.case86
  %arena.cur99 = call ptr @dva_arena_current()
  %tag.valid100 = call i1 @dva_arena_validate_tag(ptr %arena.cur99, i64 %str.tag94)
  br i1 %tag.valid100, label %str_ok97, label %str_stale98

str_ok97:                                         ; preds = %str_stale98, %str_gen_check96, %choice.case86
  %b.app.cur.len101 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 0
  %b.app.cur.len102 = load i64, ptr %b.app.cur.len101, align 8
  %b.app.new.len103 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len102, i64 %app.str.len93)
  %sum104 = extractvalue { i64, i1 } %b.app.new.len103, 0
  %ovf105 = extractvalue { i64, i1 } %b.app.new.len103, 1
  br i1 %ovf105, label %str_overflow_abort107, label %b.app.new.len106

str_stale98:                                      ; preds = %str_gen_check96
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok97

b.app.new.len106:                                 ; preds = %str_overflow_abort107, %str_ok97
  %b.cap108 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 2
  %b.cap109 = load i64, ptr %b.cap108, align 8
  %b.need.grow110 = icmp slt i64 %b.cap109, %sum104
  br i1 %b.need.grow110, label %b.grow2111, label %b.nogrow2112

str_overflow_abort107:                            ; preds = %str_ok97
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len106

b.grow2111:                                       ; preds = %b.app.new.len106
  %b.cap2114 = mul i64 %b.cap109, 2
  %b.cap.small115 = icmp slt i64 %b.cap2114, 16
  %b.cap.grow116 = select i1 %b.cap.small115, i64 16, i64 %b.cap2114
  %b.cap.need117 = icmp slt i64 %b.cap.grow116, %sum104
  %b.new.cap118 = select i1 %b.cap.need117, i64 %sum104, i64 %b.cap.grow116
  %b.cur.len2119 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 0
  %b.cur.len2120 = load i64, ptr %b.cur.len2119, align 8
  %b.cur.data2121 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 1
  %b.cur.data2122 = load ptr, ptr %b.cur.data2121, align 8
  %b.new.buf.len2123 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap118, i64 1)
  %sum124 = extractvalue { i64, i1 } %b.new.buf.len2123, 0
  %ovf125 = extractvalue { i64, i1 } %b.new.buf.len2123, 1
  br i1 %ovf125, label %str_overflow_abort127, label %b.new.buf.len2126

b.nogrow2112:                                     ; preds = %b.app.new.len106
  br label %b.grow_done113

b.grow_done113:                                   ; preds = %b.nogrow2112, %b.new.buf.len2126
  %app.str.data133 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %b.app.data134 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 1
  %b.app.data135 = load ptr, ptr %b.app.data134, align 8
  %b.app.dst136 = getelementptr i8, ptr %b.app.data135, i64 %b.app.cur.len102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst136, ptr align 1 %app.str.data133, i64 %app.str.len93, i1 false)
  %b.app.nul137 = getelementptr i8, ptr %b.app.data135, i64 %sum104
  store i8 0, ptr %b.app.nul137, align 1
  %b.len.gep138 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 0
  store i64 %sum104, ptr %b.len.gep138, align 8
  br label %choice.exit

b.new.buf.len2126:                                ; preds = %str_overflow_abort127, %b.grow2111
  %arena.cur128 = call ptr @dva_arena_current()
  %b.new.buf2129 = call ptr @dva_arena_alloc(ptr %arena.cur128, i64 %sum124)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2129, ptr align 1 %b.cur.data2122, i64 %b.cur.len2120, i1 false)
  %b.grow2.nul130 = getelementptr i8, ptr %b.new.buf2129, i64 %b.cur.len2120
  store i8 0, ptr %b.grow2.nul130, align 1
  %b.new.data2.gep131 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 1
  store ptr %b.new.buf2129, ptr %b.new.data2.gep131, align 8
  %b.new.cap2.gep132 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 2
  store i64 %b.new.cap118, ptr %b.new.cap2.gep132, align 8
  br label %b.grow_done113

str_overflow_abort127:                            ; preds = %b.grow2111
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2126

choice.case139:                                   ; preds = %choice.next87
  %pay.gep144 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr145 = load ptr, ptr %pay.gep144, align 8
  store ptr %payload.ptr145, ptr %var._146, align 8
  store ptr %payload.ptr145, ptr %var.items, align 8
  %b.load147 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 0
  %b.rn.cur.len148 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len148, i64 1)
  %sum149 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf150 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf150, label %str_overflow_abort152, label %b.rn.new.len151

choice.next140:                                   ; preds = %choice.next87
  %tag.gep277 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id278 = load i64, ptr %tag.gep277, align 8
  %tag.match279 = icmp eq i64 %tag.id278, 5
  br i1 %tag.match279, label %choice.case275, label %choice.next276

b.rn.new.len151:                                  ; preds = %str_overflow_abort152, %choice.case139
  %b.cap153 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 2
  %b.cap154 = load i64, ptr %b.cap153, align 8
  %b.need.grow155 = icmp slt i64 %b.cap154, %sum149
  br i1 %b.need.grow155, label %b.grow2156, label %b.nogrow2157

str_overflow_abort152:                            ; preds = %choice.case139
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len151

b.grow2156:                                       ; preds = %b.rn.new.len151
  %b.cap2159 = mul i64 %b.cap154, 2
  %b.cap.small160 = icmp slt i64 %b.cap2159, 16
  %b.cap.grow161 = select i1 %b.cap.small160, i64 16, i64 %b.cap2159
  %b.cap.need162 = icmp slt i64 %b.cap.grow161, %sum149
  %b.new.cap163 = select i1 %b.cap.need162, i64 %sum149, i64 %b.cap.grow161
  %b.cur.len2164 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 0
  %b.cur.len2165 = load i64, ptr %b.cur.len2164, align 8
  %b.cur.data2166 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 1
  %b.cur.data2167 = load ptr, ptr %b.cur.data2166, align 8
  %b.new.buf.len2168 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap163, i64 1)
  %sum169 = extractvalue { i64, i1 } %b.new.buf.len2168, 0
  %ovf170 = extractvalue { i64, i1 } %b.new.buf.len2168, 1
  br i1 %ovf170, label %str_overflow_abort172, label %b.new.buf.len2171

b.nogrow2157:                                     ; preds = %b.rn.new.len151
  br label %b.grow_done158

b.grow_done158:                                   ; preds = %b.nogrow2157, %b.new.buf.len2171
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 1
  %b.rn.data178 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data178, i64 %b.rn.cur.len148
  br i1 true, label %br.b1.120, label %br.c2.120

b.new.buf.len2171:                                ; preds = %str_overflow_abort172, %b.grow2156
  %arena.cur173 = call ptr @dva_arena_current()
  %b.new.buf2174 = call ptr @dva_arena_alloc(ptr %arena.cur173, i64 %sum169)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2174, ptr align 1 %b.cur.data2167, i64 %b.cur.len2165, i1 false)
  %b.grow2.nul175 = getelementptr i8, ptr %b.new.buf2174, i64 %b.cur.len2165
  store i8 0, ptr %b.grow2.nul175, align 1
  %b.new.data2.gep176 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 1
  store ptr %b.new.buf2174, ptr %b.new.data2.gep176, align 8
  %b.new.cap2.gep177 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 2
  store i64 %b.new.cap163, ptr %b.new.cap2.gep177, align 8
  br label %b.grow_done158

str_overflow_abort172:                            ; preds = %b.grow2156
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2171

br.b1.120:                                        ; preds = %b.grow_done158
  store i8 91, ptr %b.rn.dst, align 1
  br label %br.done.120

br.c2.120:                                        ; preds = %b.grow_done158
  br i1 true, label %br.b2.120, label %br.c3.120

br.b2.120:                                        ; preds = %br.c2.120
  store i8 -63, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -101, ptr %br.dst1, align 1
  br label %br.done.120

br.c3.120:                                        ; preds = %br.c2.120
  br i1 true, label %br.b3.120, label %br.b4.120

br.b3.120:                                        ; preds = %br.c3.120
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -127, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -101, ptr %br.dst2.3, align 1
  br label %br.done.120

br.b4.120:                                        ; preds = %br.c3.120
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -127, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -101, ptr %br.dst3.4, align 1
  br label %br.done.120

br.done.120:                                      ; preds = %br.b4.120, %br.b3.120, %br.b2.120, %br.b1.120
  %br.nul = getelementptr i8, ptr %b.rn.data178, i64 %sum149
  store i8 0, ptr %br.nul, align 1
  %b.len.gep179 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 0
  store i64 %sum149, ptr %b.len.gep179, align 8
  %var.load180 = load ptr, ptr %var.items, align 8
  %sl.len.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load180, i32 0, i32 1
  %sl.len.raw = load i64, ptr %sl.len.gep, align 8
  %sl.len = and i64 %sl.len.raw, 4611686018427387903
  %sl.data.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load180, i32 0, i32 0
  %sl.data = load ptr, ptr %sl.data.gep, align 8
  store i64 0, ptr %loop.idx.121, align 8
  store i64 0, ptr %var.i, align 8
  %cycle.prev.u = load ptr, ptr %var._146, align 8
  br label %loop.header.121

loop.header.121:                                  ; preds = %loop.latch.121, %br.done.120
  %counter.load = load i64, ptr %loop.idx.121, align 8
  %loop.cond = icmp slt i64 %counter.load, %sl.len
  br i1 %loop.cond, label %loop.body.121, label %loop.exit.nat.121

loop.body.121:                                    ; preds = %loop.header.121
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.121, align 8
  %sl.elem.gep.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load180, i32 0, i32 1
  %sl.elem.gep.isp.bit.raw = load i64, ptr %sl.elem.gep.isp.bit.gep, align 8
  %sl.elem.gep.isp.bit = and i64 %sl.elem.gep.isp.bit.raw, 4611686018427387904
  %sl.elem.gep.isp = icmp ne i64 %sl.elem.gep.isp.bit, 0
  %sl.elem.gep.pgep = getelementptr i64, ptr %sl.data, i64 %counter.load
  %sl.elem.gep.ngep = getelementptr ptr, ptr %sl.data, i64 %counter.load
  %sl.elem.gep = select i1 %sl.elem.gep.isp, ptr %sl.elem.gep.pgep, ptr %sl.elem.gep.ngep
  %sl.elem.val = load ptr, ptr %sl.elem.gep, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %sl.elem.val, ptr %var._181, align 8
  store ptr %sl.elem.val, ptr %var.item, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load182 = load i64, ptr %var.i, align 8
  %cmptmp = icmp sgt i64 %var.load182, 0
  br i1 %cmptmp, label %choice.then183, label %choice.exit184

loop.exit.nat.121:                                ; preds = %loop.header.121
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.121

loop.latch.121:                                   ; preds = %choice.exit184
  %step.val = load i64, ptr %loop.step.121, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.121, align 8
  br label %loop.header.121

loop.exit.121:                                    ; preds = %loop.exit.nat.121
  store ptr %cycle.prev.u, ptr %var._146, align 8
  %b.load231 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len232 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 0
  %b.rn.cur.len233 = load i64, ptr %b.rn.cur.len232, align 8
  %b.rn.new.len234 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len233, i64 1)
  %sum235 = extractvalue { i64, i1 } %b.rn.new.len234, 0
  %ovf236 = extractvalue { i64, i1 } %b.rn.new.len234, 1
  br i1 %ovf236, label %str_overflow_abort238, label %b.rn.new.len237

choice.then183:                                   ; preds = %loop.body.121
  %b.load185 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len186 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 0
  %b.rn.cur.len187 = load i64, ptr %b.rn.cur.len186, align 8
  %b.rn.new.len188 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len187, i64 1)
  %sum189 = extractvalue { i64, i1 } %b.rn.new.len188, 0
  %ovf190 = extractvalue { i64, i1 } %b.rn.new.len188, 1
  br i1 %ovf190, label %str_overflow_abort192, label %b.rn.new.len191

choice.exit184:                                   ; preds = %br.done.122, %loop.body.121
  %var.load229 = load ptr, ptr %var.b, align 8
  %var.load230 = load ptr, ptr %var.item, align 8
  call void @"json::#stringify_into"(ptr %var.load229, ptr %var.load230)
  br label %loop.latch.121

b.rn.new.len191:                                  ; preds = %str_overflow_abort192, %choice.then183
  %b.cap193 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 2
  %b.cap194 = load i64, ptr %b.cap193, align 8
  %b.need.grow195 = icmp slt i64 %b.cap194, %sum189
  br i1 %b.need.grow195, label %b.grow2196, label %b.nogrow2197

str_overflow_abort192:                            ; preds = %choice.then183
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len191

b.grow2196:                                       ; preds = %b.rn.new.len191
  %b.cap2199 = mul i64 %b.cap194, 2
  %b.cap.small200 = icmp slt i64 %b.cap2199, 16
  %b.cap.grow201 = select i1 %b.cap.small200, i64 16, i64 %b.cap2199
  %b.cap.need202 = icmp slt i64 %b.cap.grow201, %sum189
  %b.new.cap203 = select i1 %b.cap.need202, i64 %sum189, i64 %b.cap.grow201
  %b.cur.len2204 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 0
  %b.cur.len2205 = load i64, ptr %b.cur.len2204, align 8
  %b.cur.data2206 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 1
  %b.cur.data2207 = load ptr, ptr %b.cur.data2206, align 8
  %b.new.buf.len2208 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap203, i64 1)
  %sum209 = extractvalue { i64, i1 } %b.new.buf.len2208, 0
  %ovf210 = extractvalue { i64, i1 } %b.new.buf.len2208, 1
  br i1 %ovf210, label %str_overflow_abort212, label %b.new.buf.len2211

b.nogrow2197:                                     ; preds = %b.rn.new.len191
  br label %b.grow_done198

b.grow_done198:                                   ; preds = %b.nogrow2197, %b.new.buf.len2211
  %b.rn.data218 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 1
  %b.rn.data219 = load ptr, ptr %b.rn.data218, align 8
  %b.rn.dst220 = getelementptr i8, ptr %b.rn.data219, i64 %b.rn.cur.len187
  br i1 true, label %br.b1.122, label %br.c2.122

b.new.buf.len2211:                                ; preds = %str_overflow_abort212, %b.grow2196
  %arena.cur213 = call ptr @dva_arena_current()
  %b.new.buf2214 = call ptr @dva_arena_alloc(ptr %arena.cur213, i64 %sum209)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2214, ptr align 1 %b.cur.data2207, i64 %b.cur.len2205, i1 false)
  %b.grow2.nul215 = getelementptr i8, ptr %b.new.buf2214, i64 %b.cur.len2205
  store i8 0, ptr %b.grow2.nul215, align 1
  %b.new.data2.gep216 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 1
  store ptr %b.new.buf2214, ptr %b.new.data2.gep216, align 8
  %b.new.cap2.gep217 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 2
  store i64 %b.new.cap203, ptr %b.new.cap2.gep217, align 8
  br label %b.grow_done198

str_overflow_abort212:                            ; preds = %b.grow2196
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2211

br.b1.122:                                        ; preds = %b.grow_done198
  store i8 44, ptr %b.rn.dst220, align 1
  br label %br.done.122

br.c2.122:                                        ; preds = %b.grow_done198
  br i1 true, label %br.b2.122, label %br.c3.122

br.b2.122:                                        ; preds = %br.c2.122
  store i8 -64, ptr %b.rn.dst220, align 1
  %br.dst1221 = getelementptr i8, ptr %b.rn.dst220, i64 1
  store i8 -84, ptr %br.dst1221, align 1
  br label %br.done.122

br.c3.122:                                        ; preds = %br.c2.122
  br i1 true, label %br.b3.122, label %br.b4.122

br.b3.122:                                        ; preds = %br.c3.122
  store i8 -32, ptr %b.rn.dst220, align 1
  %br.dst1.3222 = getelementptr i8, ptr %b.rn.dst220, i64 1
  store i8 -128, ptr %br.dst1.3222, align 1
  %br.dst2.3223 = getelementptr i8, ptr %b.rn.dst220, i64 2
  store i8 -84, ptr %br.dst2.3223, align 1
  br label %br.done.122

br.b4.122:                                        ; preds = %br.c3.122
  store i8 -16, ptr %b.rn.dst220, align 1
  %br.dst1.4224 = getelementptr i8, ptr %b.rn.dst220, i64 1
  store i8 -128, ptr %br.dst1.4224, align 1
  %br.dst2.4225 = getelementptr i8, ptr %b.rn.dst220, i64 2
  store i8 -128, ptr %br.dst2.4225, align 1
  %br.dst3.4226 = getelementptr i8, ptr %b.rn.dst220, i64 3
  store i8 -84, ptr %br.dst3.4226, align 1
  br label %br.done.122

br.done.122:                                      ; preds = %br.b4.122, %br.b3.122, %br.b2.122, %br.b1.122
  %br.nul227 = getelementptr i8, ptr %b.rn.data219, i64 %sum189
  store i8 0, ptr %br.nul227, align 1
  %b.len.gep228 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 0
  store i64 %sum189, ptr %b.len.gep228, align 8
  br label %choice.exit184

b.rn.new.len237:                                  ; preds = %str_overflow_abort238, %loop.exit.121
  %b.cap239 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 2
  %b.cap240 = load i64, ptr %b.cap239, align 8
  %b.need.grow241 = icmp slt i64 %b.cap240, %sum235
  br i1 %b.need.grow241, label %b.grow2242, label %b.nogrow2243

str_overflow_abort238:                            ; preds = %loop.exit.121
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len237

b.grow2242:                                       ; preds = %b.rn.new.len237
  %b.cap2245 = mul i64 %b.cap240, 2
  %b.cap.small246 = icmp slt i64 %b.cap2245, 16
  %b.cap.grow247 = select i1 %b.cap.small246, i64 16, i64 %b.cap2245
  %b.cap.need248 = icmp slt i64 %b.cap.grow247, %sum235
  %b.new.cap249 = select i1 %b.cap.need248, i64 %sum235, i64 %b.cap.grow247
  %b.cur.len2250 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 0
  %b.cur.len2251 = load i64, ptr %b.cur.len2250, align 8
  %b.cur.data2252 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 1
  %b.cur.data2253 = load ptr, ptr %b.cur.data2252, align 8
  %b.new.buf.len2254 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap249, i64 1)
  %sum255 = extractvalue { i64, i1 } %b.new.buf.len2254, 0
  %ovf256 = extractvalue { i64, i1 } %b.new.buf.len2254, 1
  br i1 %ovf256, label %str_overflow_abort258, label %b.new.buf.len2257

b.nogrow2243:                                     ; preds = %b.rn.new.len237
  br label %b.grow_done244

b.grow_done244:                                   ; preds = %b.nogrow2243, %b.new.buf.len2257
  %b.rn.data264 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 1
  %b.rn.data265 = load ptr, ptr %b.rn.data264, align 8
  %b.rn.dst266 = getelementptr i8, ptr %b.rn.data265, i64 %b.rn.cur.len233
  br i1 true, label %br.b1.123, label %br.c2.123

b.new.buf.len2257:                                ; preds = %str_overflow_abort258, %b.grow2242
  %arena.cur259 = call ptr @dva_arena_current()
  %b.new.buf2260 = call ptr @dva_arena_alloc(ptr %arena.cur259, i64 %sum255)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2260, ptr align 1 %b.cur.data2253, i64 %b.cur.len2251, i1 false)
  %b.grow2.nul261 = getelementptr i8, ptr %b.new.buf2260, i64 %b.cur.len2251
  store i8 0, ptr %b.grow2.nul261, align 1
  %b.new.data2.gep262 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 1
  store ptr %b.new.buf2260, ptr %b.new.data2.gep262, align 8
  %b.new.cap2.gep263 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 2
  store i64 %b.new.cap249, ptr %b.new.cap2.gep263, align 8
  br label %b.grow_done244

str_overflow_abort258:                            ; preds = %b.grow2242
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2257

br.b1.123:                                        ; preds = %b.grow_done244
  store i8 93, ptr %b.rn.dst266, align 1
  br label %br.done.123

br.c2.123:                                        ; preds = %b.grow_done244
  br i1 true, label %br.b2.123, label %br.c3.123

br.b2.123:                                        ; preds = %br.c2.123
  store i8 -63, ptr %b.rn.dst266, align 1
  %br.dst1267 = getelementptr i8, ptr %b.rn.dst266, i64 1
  store i8 -99, ptr %br.dst1267, align 1
  br label %br.done.123

br.c3.123:                                        ; preds = %br.c2.123
  br i1 true, label %br.b3.123, label %br.b4.123

br.b3.123:                                        ; preds = %br.c3.123
  store i8 -32, ptr %b.rn.dst266, align 1
  %br.dst1.3268 = getelementptr i8, ptr %b.rn.dst266, i64 1
  store i8 -127, ptr %br.dst1.3268, align 1
  %br.dst2.3269 = getelementptr i8, ptr %b.rn.dst266, i64 2
  store i8 -99, ptr %br.dst2.3269, align 1
  br label %br.done.123

br.b4.123:                                        ; preds = %br.c3.123
  store i8 -16, ptr %b.rn.dst266, align 1
  %br.dst1.4270 = getelementptr i8, ptr %b.rn.dst266, i64 1
  store i8 -128, ptr %br.dst1.4270, align 1
  %br.dst2.4271 = getelementptr i8, ptr %b.rn.dst266, i64 2
  store i8 -127, ptr %br.dst2.4271, align 1
  %br.dst3.4272 = getelementptr i8, ptr %b.rn.dst266, i64 3
  store i8 -99, ptr %br.dst3.4272, align 1
  br label %br.done.123

br.done.123:                                      ; preds = %br.b4.123, %br.b3.123, %br.b2.123, %br.b1.123
  %br.nul273 = getelementptr i8, ptr %b.rn.data265, i64 %sum235
  store i8 0, ptr %br.nul273, align 1
  %b.len.gep274 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 0
  store i64 %sum235, ptr %b.len.gep274, align 8
  br label %choice.exit

choice.case275:                                   ; preds = %choice.next140
  %pay.gep280 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr281 = load ptr, ptr %pay.gep280, align 8
  store ptr %payload.ptr281, ptr %var._282, align 8
  store ptr %payload.ptr281, ptr %var.pairs, align 8
  %b.load283 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len284 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 0
  %b.rn.cur.len285 = load i64, ptr %b.rn.cur.len284, align 8
  %b.rn.new.len286 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len285, i64 1)
  %sum287 = extractvalue { i64, i1 } %b.rn.new.len286, 0
  %ovf288 = extractvalue { i64, i1 } %b.rn.new.len286, 1
  br i1 %ovf288, label %str_overflow_abort290, label %b.rn.new.len289

choice.next276:                                   ; preds = %choice.next140
  br label %choice.exit

b.rn.new.len289:                                  ; preds = %str_overflow_abort290, %choice.case275
  %b.cap291 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 2
  %b.cap292 = load i64, ptr %b.cap291, align 8
  %b.need.grow293 = icmp slt i64 %b.cap292, %sum287
  br i1 %b.need.grow293, label %b.grow2294, label %b.nogrow2295

str_overflow_abort290:                            ; preds = %choice.case275
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len289

b.grow2294:                                       ; preds = %b.rn.new.len289
  %b.cap2297 = mul i64 %b.cap292, 2
  %b.cap.small298 = icmp slt i64 %b.cap2297, 16
  %b.cap.grow299 = select i1 %b.cap.small298, i64 16, i64 %b.cap2297
  %b.cap.need300 = icmp slt i64 %b.cap.grow299, %sum287
  %b.new.cap301 = select i1 %b.cap.need300, i64 %sum287, i64 %b.cap.grow299
  %b.cur.len2302 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 0
  %b.cur.len2303 = load i64, ptr %b.cur.len2302, align 8
  %b.cur.data2304 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 1
  %b.cur.data2305 = load ptr, ptr %b.cur.data2304, align 8
  %b.new.buf.len2306 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap301, i64 1)
  %sum307 = extractvalue { i64, i1 } %b.new.buf.len2306, 0
  %ovf308 = extractvalue { i64, i1 } %b.new.buf.len2306, 1
  br i1 %ovf308, label %str_overflow_abort310, label %b.new.buf.len2309

b.nogrow2295:                                     ; preds = %b.rn.new.len289
  br label %b.grow_done296

b.grow_done296:                                   ; preds = %b.nogrow2295, %b.new.buf.len2309
  %b.rn.data316 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 1
  %b.rn.data317 = load ptr, ptr %b.rn.data316, align 8
  %b.rn.dst318 = getelementptr i8, ptr %b.rn.data317, i64 %b.rn.cur.len285
  br i1 true, label %br.b1.124, label %br.c2.124

b.new.buf.len2309:                                ; preds = %str_overflow_abort310, %b.grow2294
  %arena.cur311 = call ptr @dva_arena_current()
  %b.new.buf2312 = call ptr @dva_arena_alloc(ptr %arena.cur311, i64 %sum307)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2312, ptr align 1 %b.cur.data2305, i64 %b.cur.len2303, i1 false)
  %b.grow2.nul313 = getelementptr i8, ptr %b.new.buf2312, i64 %b.cur.len2303
  store i8 0, ptr %b.grow2.nul313, align 1
  %b.new.data2.gep314 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 1
  store ptr %b.new.buf2312, ptr %b.new.data2.gep314, align 8
  %b.new.cap2.gep315 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 2
  store i64 %b.new.cap301, ptr %b.new.cap2.gep315, align 8
  br label %b.grow_done296

str_overflow_abort310:                            ; preds = %b.grow2294
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2309

br.b1.124:                                        ; preds = %b.grow_done296
  store i8 123, ptr %b.rn.dst318, align 1
  br label %br.done.124

br.c2.124:                                        ; preds = %b.grow_done296
  br i1 true, label %br.b2.124, label %br.c3.124

br.b2.124:                                        ; preds = %br.c2.124
  store i8 -63, ptr %b.rn.dst318, align 1
  %br.dst1319 = getelementptr i8, ptr %b.rn.dst318, i64 1
  store i8 -69, ptr %br.dst1319, align 1
  br label %br.done.124

br.c3.124:                                        ; preds = %br.c2.124
  br i1 true, label %br.b3.124, label %br.b4.124

br.b3.124:                                        ; preds = %br.c3.124
  store i8 -32, ptr %b.rn.dst318, align 1
  %br.dst1.3320 = getelementptr i8, ptr %b.rn.dst318, i64 1
  store i8 -127, ptr %br.dst1.3320, align 1
  %br.dst2.3321 = getelementptr i8, ptr %b.rn.dst318, i64 2
  store i8 -69, ptr %br.dst2.3321, align 1
  br label %br.done.124

br.b4.124:                                        ; preds = %br.c3.124
  store i8 -16, ptr %b.rn.dst318, align 1
  %br.dst1.4322 = getelementptr i8, ptr %b.rn.dst318, i64 1
  store i8 -128, ptr %br.dst1.4322, align 1
  %br.dst2.4323 = getelementptr i8, ptr %b.rn.dst318, i64 2
  store i8 -127, ptr %br.dst2.4323, align 1
  %br.dst3.4324 = getelementptr i8, ptr %b.rn.dst318, i64 3
  store i8 -69, ptr %br.dst3.4324, align 1
  br label %br.done.124

br.done.124:                                      ; preds = %br.b4.124, %br.b3.124, %br.b2.124, %br.b1.124
  %br.nul325 = getelementptr i8, ptr %b.rn.data317, i64 %sum287
  store i8 0, ptr %br.nul325, align 1
  %b.len.gep326 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 0
  store i64 %sum287, ptr %b.len.gep326, align 8
  %var.load327 = load ptr, ptr %var.pairs, align 8
  %sl.len.gep328 = getelementptr inbounds { ptr, i64 }, ptr %var.load327, i32 0, i32 1
  %sl.len.raw329 = load i64, ptr %sl.len.gep328, align 8
  %sl.len330 = and i64 %sl.len.raw329, 4611686018427387903
  %sl.data.gep331 = getelementptr inbounds { ptr, i64 }, ptr %var.load327, i32 0, i32 0
  %sl.data332 = load ptr, ptr %sl.data.gep331, align 8
  store i64 0, ptr %loop.idx.125, align 8
  store i64 0, ptr %var.i333, align 8
  %cycle.prev.u334 = load ptr, ptr %var._282, align 8
  br label %loop.header.125

loop.header.125:                                  ; preds = %loop.latch.125, %br.done.124
  %counter.load335 = load i64, ptr %loop.idx.125, align 8
  %loop.cond336 = icmp slt i64 %counter.load335, %sl.len330
  br i1 %loop.cond336, label %loop.body.125, label %loop.exit.nat.125

loop.body.125:                                    ; preds = %loop.header.125
  %loop.rel.i338 = sub i64 %counter.load335, 0
  store i64 1, ptr %loop.step.125, align 8
  %sl.rec.elem.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load327, i32 0, i32 1
  %sl.rec.elem.isp.bit.raw = load i64, ptr %sl.rec.elem.isp.bit.gep, align 8
  %sl.rec.elem.isp.bit = and i64 %sl.rec.elem.isp.bit.raw, 4611686018427387904
  %sl.rec.elem.isp = icmp ne i64 %sl.rec.elem.isp.bit, 0
  br i1 %sl.rec.elem.isp, label %sl.rec.elem.pbb, label %sl.rec.elem.nbb

loop.exit.nat.125:                                ; preds = %loop.header.125
  %loop.rel.end337 = sub i64 %counter.load335, 0
  store i64 %loop.rel.end337, ptr %var.i333, align 8
  br label %loop.exit.125

loop.latch.125:                                   ; preds = %br.done.127
  %step.val439 = load i64, ptr %loop.step.125, align 8
  %loop.next440 = add i64 %counter.load335, %step.val439
  store i64 %loop.next440, ptr %loop.idx.125, align 8
  br label %loop.header.125

loop.exit.125:                                    ; preds = %loop.exit.nat.125
  store ptr %cycle.prev.u334, ptr %var._282, align 8
  %b.load441 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len442 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load441, i32 0, i32 0
  %b.rn.cur.len443 = load i64, ptr %b.rn.cur.len442, align 8
  %b.rn.new.len444 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len443, i64 1)
  %sum445 = extractvalue { i64, i1 } %b.rn.new.len444, 0
  %ovf446 = extractvalue { i64, i1 } %b.rn.new.len444, 1
  br i1 %ovf446, label %str_overflow_abort448, label %b.rn.new.len447

sl.rec.elem.pbb:                                  ; preds = %loop.body.125
  %sl.rec.elem.pgep = getelementptr i64, ptr %sl.data332, i64 %counter.load335
  %sl.rec.elem.pval = load ptr, ptr %sl.rec.elem.pgep, align 8
  br label %sl.rec.elem.dbb

sl.rec.elem.nbb:                                  ; preds = %loop.body.125
  %sl.rec.elem.ngep = getelementptr { ptr, ptr }, ptr %sl.data332, i64 %counter.load335
  br label %sl.rec.elem.dbb

sl.rec.elem.dbb:                                  ; preds = %sl.rec.elem.nbb, %sl.rec.elem.pbb
  %sl.rec.elem = phi ptr [ %sl.rec.elem.pval, %sl.rec.elem.pbb ], [ %sl.rec.elem.ngep, %sl.rec.elem.nbb ]
  store i64 %loop.rel.i338, ptr %var._i339, align 8
  store ptr %sl.rec.elem, ptr %var._340, align 8
  store ptr %sl.rec.elem, ptr %var.p, align 8
  store i64 %loop.rel.i338, ptr %var.i333, align 8
  %var.load341 = load i64, ptr %var.i333, align 8
  %cmptmp342 = icmp sgt i64 %var.load341, 0
  br i1 %cmptmp342, label %choice.then343, label %choice.exit344

choice.then343:                                   ; preds = %sl.rec.elem.dbb
  %b.load345 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len346 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load345, i32 0, i32 0
  %b.rn.cur.len347 = load i64, ptr %b.rn.cur.len346, align 8
  %b.rn.new.len348 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len347, i64 1)
  %sum349 = extractvalue { i64, i1 } %b.rn.new.len348, 0
  %ovf350 = extractvalue { i64, i1 } %b.rn.new.len348, 1
  br i1 %ovf350, label %str_overflow_abort352, label %b.rn.new.len351

choice.exit344:                                   ; preds = %br.done.126, %sl.rec.elem.dbb
  %var.load389 = load ptr, ptr %var.b, align 8
  %var.load390 = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load390, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  call void @"json::escape_string_into"(ptr %var.load389, ptr %fld.load)
  %b.load391 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len392 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 0
  %b.rn.cur.len393 = load i64, ptr %b.rn.cur.len392, align 8
  %b.rn.new.len394 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len393, i64 1)
  %sum395 = extractvalue { i64, i1 } %b.rn.new.len394, 0
  %ovf396 = extractvalue { i64, i1 } %b.rn.new.len394, 1
  br i1 %ovf396, label %str_overflow_abort398, label %b.rn.new.len397

b.rn.new.len351:                                  ; preds = %str_overflow_abort352, %choice.then343
  %b.cap353 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load345, i32 0, i32 2
  %b.cap354 = load i64, ptr %b.cap353, align 8
  %b.need.grow355 = icmp slt i64 %b.cap354, %sum349
  br i1 %b.need.grow355, label %b.grow2356, label %b.nogrow2357

str_overflow_abort352:                            ; preds = %choice.then343
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len351

b.grow2356:                                       ; preds = %b.rn.new.len351
  %b.cap2359 = mul i64 %b.cap354, 2
  %b.cap.small360 = icmp slt i64 %b.cap2359, 16
  %b.cap.grow361 = select i1 %b.cap.small360, i64 16, i64 %b.cap2359
  %b.cap.need362 = icmp slt i64 %b.cap.grow361, %sum349
  %b.new.cap363 = select i1 %b.cap.need362, i64 %sum349, i64 %b.cap.grow361
  %b.cur.len2364 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load345, i32 0, i32 0
  %b.cur.len2365 = load i64, ptr %b.cur.len2364, align 8
  %b.cur.data2366 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load345, i32 0, i32 1
  %b.cur.data2367 = load ptr, ptr %b.cur.data2366, align 8
  %b.new.buf.len2368 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap363, i64 1)
  %sum369 = extractvalue { i64, i1 } %b.new.buf.len2368, 0
  %ovf370 = extractvalue { i64, i1 } %b.new.buf.len2368, 1
  br i1 %ovf370, label %str_overflow_abort372, label %b.new.buf.len2371

b.nogrow2357:                                     ; preds = %b.rn.new.len351
  br label %b.grow_done358

b.grow_done358:                                   ; preds = %b.nogrow2357, %b.new.buf.len2371
  %b.rn.data378 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load345, i32 0, i32 1
  %b.rn.data379 = load ptr, ptr %b.rn.data378, align 8
  %b.rn.dst380 = getelementptr i8, ptr %b.rn.data379, i64 %b.rn.cur.len347
  br i1 true, label %br.b1.126, label %br.c2.126

b.new.buf.len2371:                                ; preds = %str_overflow_abort372, %b.grow2356
  %arena.cur373 = call ptr @dva_arena_current()
  %b.new.buf2374 = call ptr @dva_arena_alloc(ptr %arena.cur373, i64 %sum369)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2374, ptr align 1 %b.cur.data2367, i64 %b.cur.len2365, i1 false)
  %b.grow2.nul375 = getelementptr i8, ptr %b.new.buf2374, i64 %b.cur.len2365
  store i8 0, ptr %b.grow2.nul375, align 1
  %b.new.data2.gep376 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load345, i32 0, i32 1
  store ptr %b.new.buf2374, ptr %b.new.data2.gep376, align 8
  %b.new.cap2.gep377 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load345, i32 0, i32 2
  store i64 %b.new.cap363, ptr %b.new.cap2.gep377, align 8
  br label %b.grow_done358

str_overflow_abort372:                            ; preds = %b.grow2356
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2371

br.b1.126:                                        ; preds = %b.grow_done358
  store i8 44, ptr %b.rn.dst380, align 1
  br label %br.done.126

br.c2.126:                                        ; preds = %b.grow_done358
  br i1 true, label %br.b2.126, label %br.c3.126

br.b2.126:                                        ; preds = %br.c2.126
  store i8 -64, ptr %b.rn.dst380, align 1
  %br.dst1381 = getelementptr i8, ptr %b.rn.dst380, i64 1
  store i8 -84, ptr %br.dst1381, align 1
  br label %br.done.126

br.c3.126:                                        ; preds = %br.c2.126
  br i1 true, label %br.b3.126, label %br.b4.126

br.b3.126:                                        ; preds = %br.c3.126
  store i8 -32, ptr %b.rn.dst380, align 1
  %br.dst1.3382 = getelementptr i8, ptr %b.rn.dst380, i64 1
  store i8 -128, ptr %br.dst1.3382, align 1
  %br.dst2.3383 = getelementptr i8, ptr %b.rn.dst380, i64 2
  store i8 -84, ptr %br.dst2.3383, align 1
  br label %br.done.126

br.b4.126:                                        ; preds = %br.c3.126
  store i8 -16, ptr %b.rn.dst380, align 1
  %br.dst1.4384 = getelementptr i8, ptr %b.rn.dst380, i64 1
  store i8 -128, ptr %br.dst1.4384, align 1
  %br.dst2.4385 = getelementptr i8, ptr %b.rn.dst380, i64 2
  store i8 -128, ptr %br.dst2.4385, align 1
  %br.dst3.4386 = getelementptr i8, ptr %b.rn.dst380, i64 3
  store i8 -84, ptr %br.dst3.4386, align 1
  br label %br.done.126

br.done.126:                                      ; preds = %br.b4.126, %br.b3.126, %br.b2.126, %br.b1.126
  %br.nul387 = getelementptr i8, ptr %b.rn.data379, i64 %sum349
  store i8 0, ptr %br.nul387, align 1
  %b.len.gep388 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load345, i32 0, i32 0
  store i64 %sum349, ptr %b.len.gep388, align 8
  br label %choice.exit344

b.rn.new.len397:                                  ; preds = %str_overflow_abort398, %choice.exit344
  %b.cap399 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 2
  %b.cap400 = load i64, ptr %b.cap399, align 8
  %b.need.grow401 = icmp slt i64 %b.cap400, %sum395
  br i1 %b.need.grow401, label %b.grow2402, label %b.nogrow2403

str_overflow_abort398:                            ; preds = %choice.exit344
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len397

b.grow2402:                                       ; preds = %b.rn.new.len397
  %b.cap2405 = mul i64 %b.cap400, 2
  %b.cap.small406 = icmp slt i64 %b.cap2405, 16
  %b.cap.grow407 = select i1 %b.cap.small406, i64 16, i64 %b.cap2405
  %b.cap.need408 = icmp slt i64 %b.cap.grow407, %sum395
  %b.new.cap409 = select i1 %b.cap.need408, i64 %sum395, i64 %b.cap.grow407
  %b.cur.len2410 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 0
  %b.cur.len2411 = load i64, ptr %b.cur.len2410, align 8
  %b.cur.data2412 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 1
  %b.cur.data2413 = load ptr, ptr %b.cur.data2412, align 8
  %b.new.buf.len2414 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap409, i64 1)
  %sum415 = extractvalue { i64, i1 } %b.new.buf.len2414, 0
  %ovf416 = extractvalue { i64, i1 } %b.new.buf.len2414, 1
  br i1 %ovf416, label %str_overflow_abort418, label %b.new.buf.len2417

b.nogrow2403:                                     ; preds = %b.rn.new.len397
  br label %b.grow_done404

b.grow_done404:                                   ; preds = %b.nogrow2403, %b.new.buf.len2417
  %b.rn.data424 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 1
  %b.rn.data425 = load ptr, ptr %b.rn.data424, align 8
  %b.rn.dst426 = getelementptr i8, ptr %b.rn.data425, i64 %b.rn.cur.len393
  br i1 true, label %br.b1.127, label %br.c2.127

b.new.buf.len2417:                                ; preds = %str_overflow_abort418, %b.grow2402
  %arena.cur419 = call ptr @dva_arena_current()
  %b.new.buf2420 = call ptr @dva_arena_alloc(ptr %arena.cur419, i64 %sum415)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2420, ptr align 1 %b.cur.data2413, i64 %b.cur.len2411, i1 false)
  %b.grow2.nul421 = getelementptr i8, ptr %b.new.buf2420, i64 %b.cur.len2411
  store i8 0, ptr %b.grow2.nul421, align 1
  %b.new.data2.gep422 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 1
  store ptr %b.new.buf2420, ptr %b.new.data2.gep422, align 8
  %b.new.cap2.gep423 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 2
  store i64 %b.new.cap409, ptr %b.new.cap2.gep423, align 8
  br label %b.grow_done404

str_overflow_abort418:                            ; preds = %b.grow2402
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2417

br.b1.127:                                        ; preds = %b.grow_done404
  store i8 58, ptr %b.rn.dst426, align 1
  br label %br.done.127

br.c2.127:                                        ; preds = %b.grow_done404
  br i1 true, label %br.b2.127, label %br.c3.127

br.b2.127:                                        ; preds = %br.c2.127
  store i8 -64, ptr %b.rn.dst426, align 1
  %br.dst1427 = getelementptr i8, ptr %b.rn.dst426, i64 1
  store i8 -70, ptr %br.dst1427, align 1
  br label %br.done.127

br.c3.127:                                        ; preds = %br.c2.127
  br i1 true, label %br.b3.127, label %br.b4.127

br.b3.127:                                        ; preds = %br.c3.127
  store i8 -32, ptr %b.rn.dst426, align 1
  %br.dst1.3428 = getelementptr i8, ptr %b.rn.dst426, i64 1
  store i8 -128, ptr %br.dst1.3428, align 1
  %br.dst2.3429 = getelementptr i8, ptr %b.rn.dst426, i64 2
  store i8 -70, ptr %br.dst2.3429, align 1
  br label %br.done.127

br.b4.127:                                        ; preds = %br.c3.127
  store i8 -16, ptr %b.rn.dst426, align 1
  %br.dst1.4430 = getelementptr i8, ptr %b.rn.dst426, i64 1
  store i8 -128, ptr %br.dst1.4430, align 1
  %br.dst2.4431 = getelementptr i8, ptr %b.rn.dst426, i64 2
  store i8 -128, ptr %br.dst2.4431, align 1
  %br.dst3.4432 = getelementptr i8, ptr %b.rn.dst426, i64 3
  store i8 -70, ptr %br.dst3.4432, align 1
  br label %br.done.127

br.done.127:                                      ; preds = %br.b4.127, %br.b3.127, %br.b2.127, %br.b1.127
  %br.nul433 = getelementptr i8, ptr %b.rn.data425, i64 %sum395
  store i8 0, ptr %br.nul433, align 1
  %b.len.gep434 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 0
  store i64 %sum395, ptr %b.len.gep434, align 8
  %var.load435 = load ptr, ptr %var.b, align 8
  %var.load436 = load ptr, ptr %var.p, align 8
  %fld.gep437 = getelementptr inbounds { ptr, ptr }, ptr %var.load436, i32 0, i32 1
  %fld.load438 = load ptr, ptr %fld.gep437, align 8
  call void @"json::#stringify_into"(ptr %var.load435, ptr %fld.load438)
  br label %loop.latch.125

b.rn.new.len447:                                  ; preds = %str_overflow_abort448, %loop.exit.125
  %b.cap449 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load441, i32 0, i32 2
  %b.cap450 = load i64, ptr %b.cap449, align 8
  %b.need.grow451 = icmp slt i64 %b.cap450, %sum445
  br i1 %b.need.grow451, label %b.grow2452, label %b.nogrow2453

str_overflow_abort448:                            ; preds = %loop.exit.125
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len447

b.grow2452:                                       ; preds = %b.rn.new.len447
  %b.cap2455 = mul i64 %b.cap450, 2
  %b.cap.small456 = icmp slt i64 %b.cap2455, 16
  %b.cap.grow457 = select i1 %b.cap.small456, i64 16, i64 %b.cap2455
  %b.cap.need458 = icmp slt i64 %b.cap.grow457, %sum445
  %b.new.cap459 = select i1 %b.cap.need458, i64 %sum445, i64 %b.cap.grow457
  %b.cur.len2460 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load441, i32 0, i32 0
  %b.cur.len2461 = load i64, ptr %b.cur.len2460, align 8
  %b.cur.data2462 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load441, i32 0, i32 1
  %b.cur.data2463 = load ptr, ptr %b.cur.data2462, align 8
  %b.new.buf.len2464 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap459, i64 1)
  %sum465 = extractvalue { i64, i1 } %b.new.buf.len2464, 0
  %ovf466 = extractvalue { i64, i1 } %b.new.buf.len2464, 1
  br i1 %ovf466, label %str_overflow_abort468, label %b.new.buf.len2467

b.nogrow2453:                                     ; preds = %b.rn.new.len447
  br label %b.grow_done454

b.grow_done454:                                   ; preds = %b.nogrow2453, %b.new.buf.len2467
  %b.rn.data474 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load441, i32 0, i32 1
  %b.rn.data475 = load ptr, ptr %b.rn.data474, align 8
  %b.rn.dst476 = getelementptr i8, ptr %b.rn.data475, i64 %b.rn.cur.len443
  br i1 true, label %br.b1.128, label %br.c2.128

b.new.buf.len2467:                                ; preds = %str_overflow_abort468, %b.grow2452
  %arena.cur469 = call ptr @dva_arena_current()
  %b.new.buf2470 = call ptr @dva_arena_alloc(ptr %arena.cur469, i64 %sum465)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2470, ptr align 1 %b.cur.data2463, i64 %b.cur.len2461, i1 false)
  %b.grow2.nul471 = getelementptr i8, ptr %b.new.buf2470, i64 %b.cur.len2461
  store i8 0, ptr %b.grow2.nul471, align 1
  %b.new.data2.gep472 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load441, i32 0, i32 1
  store ptr %b.new.buf2470, ptr %b.new.data2.gep472, align 8
  %b.new.cap2.gep473 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load441, i32 0, i32 2
  store i64 %b.new.cap459, ptr %b.new.cap2.gep473, align 8
  br label %b.grow_done454

str_overflow_abort468:                            ; preds = %b.grow2452
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2467

br.b1.128:                                        ; preds = %b.grow_done454
  store i8 125, ptr %b.rn.dst476, align 1
  br label %br.done.128

br.c2.128:                                        ; preds = %b.grow_done454
  br i1 true, label %br.b2.128, label %br.c3.128

br.b2.128:                                        ; preds = %br.c2.128
  store i8 -63, ptr %b.rn.dst476, align 1
  %br.dst1477 = getelementptr i8, ptr %b.rn.dst476, i64 1
  store i8 -67, ptr %br.dst1477, align 1
  br label %br.done.128

br.c3.128:                                        ; preds = %br.c2.128
  br i1 true, label %br.b3.128, label %br.b4.128

br.b3.128:                                        ; preds = %br.c3.128
  store i8 -32, ptr %b.rn.dst476, align 1
  %br.dst1.3478 = getelementptr i8, ptr %b.rn.dst476, i64 1
  store i8 -127, ptr %br.dst1.3478, align 1
  %br.dst2.3479 = getelementptr i8, ptr %b.rn.dst476, i64 2
  store i8 -67, ptr %br.dst2.3479, align 1
  br label %br.done.128

br.b4.128:                                        ; preds = %br.c3.128
  store i8 -16, ptr %b.rn.dst476, align 1
  %br.dst1.4480 = getelementptr i8, ptr %b.rn.dst476, i64 1
  store i8 -128, ptr %br.dst1.4480, align 1
  %br.dst2.4481 = getelementptr i8, ptr %b.rn.dst476, i64 2
  store i8 -127, ptr %br.dst2.4481, align 1
  %br.dst3.4482 = getelementptr i8, ptr %b.rn.dst476, i64 3
  store i8 -67, ptr %br.dst3.4482, align 1
  br label %br.done.128

br.done.128:                                      ; preds = %br.b4.128, %br.b3.128, %br.b2.128, %br.b1.128
  %br.nul483 = getelementptr i8, ptr %b.rn.data475, i64 %sum445
  store i8 0, ptr %br.nul483, align 1
  %b.len.gep484 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load441, i32 0, i32 0
  store i64 %sum445, ptr %b.len.gep484, align 8
  br label %choice.exit
}

define internal void @"json::#append_indent"(ptr %0, i64 %1) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.129 = alloca i64, align 8
  %loop.idx.129 = alloca i64, align 8
  %var.spaces = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i64 %1, ptr %var.spaces, align 8
  %var.load = load i64, ptr %var.spaces, align 8
  store i64 0, ptr %loop.idx.129, align 8
  br label %loop.header.129

loop.header.129:                                  ; preds = %loop.latch.129, %entry
  %counter.load = load i64, ptr %loop.idx.129, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load
  br i1 %loop.cond, label %loop.body.129, label %loop.exit.nat.129

loop.body.129:                                    ; preds = %loop.header.129
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.129, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len1 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len1, i64 1)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len2

loop.exit.nat.129:                                ; preds = %loop.header.129
  br label %loop.exit.129

loop.latch.129:                                   ; preds = %br.done.130
  %step.val = load i64, ptr %loop.step.129, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.129, align 8
  br label %loop.header.129

loop.exit.129:                                    ; preds = %loop.exit.nat.129
  ret void

b.rn.new.len2:                                    ; preds = %str_overflow_abort, %loop.body.129
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap3 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap3, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %loop.body.129
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len2

b.grow2:                                          ; preds = %b.rn.new.len2
  %b.cap2 = mul i64 %b.cap3, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len24 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data25 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum6 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf7 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf7, label %str_overflow_abort9, label %b.new.buf.len28

b.nogrow2:                                        ; preds = %b.rn.new.len2
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len28
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data10 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data10, i64 %b.rn.cur.len1
  br i1 true, label %br.b1.130, label %br.c2.130

b.new.buf.len28:                                  ; preds = %str_overflow_abort9, %b.grow2
  %arena.cur = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum6)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data25, i64 %b.cur.len24, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len24
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort9:                              ; preds = %b.grow2
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len28

br.b1.130:                                        ; preds = %b.grow_done
  store i8 32, ptr %b.rn.dst, align 1
  br label %br.done.130

br.c2.130:                                        ; preds = %b.grow_done
  br i1 true, label %br.b2.130, label %br.c3.130

br.b2.130:                                        ; preds = %br.c2.130
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -96, ptr %br.dst1, align 1
  br label %br.done.130

br.c3.130:                                        ; preds = %br.c2.130
  br i1 true, label %br.b3.130, label %br.b4.130

br.b3.130:                                        ; preds = %br.c3.130
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -96, ptr %br.dst2.3, align 1
  br label %br.done.130

br.b4.130:                                        ; preds = %br.c3.130
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -96, ptr %br.dst3.4, align 1
  br label %br.done.130

br.done.130:                                      ; preds = %br.b4.130, %br.b3.130, %br.b2.130, %br.b1.130
  %br.nul = getelementptr i8, ptr %b.rn.data10, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %loop.latch.129
}

define internal void @"json::#stringify_pretty_into"(ptr %0, ptr %1, i64 %2, i64 %3) #1 {
entry:
  %var._515 = alloca ptr, align 8
  %var._i514 = alloca i64, align 8
  %var.i508 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.134 = alloca i64, align 8
  %loop.idx.134 = alloca i64, align 8
  %var.pairs = alloca ptr, align 8
  %var._397 = alloca ptr, align 8
  %var._248 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.item = alloca ptr, align 8
  %loop.step.131 = alloca i64, align 8
  %loop.idx.131 = alloca i64, align 8
  %var.items = alloca ptr, align 8
  %var._146 = alloca ptr, align 8
  %var.flag = alloca i1, align 1
  %var._33 = alloca i1, align 1
  %var.n = alloca double, align 8
  %var._10 = alloca double, align 8
  %var.s = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.depth = alloca i64, align 8
  %var.indent = alloca i64, align 8
  %var.val = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store ptr %1, ptr %var.val, align 8
  store i64 %2, ptr %var.indent, align 8
  store i64 %3, ptr %var.depth, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next391, %choice.exit405, %choice.exit150, %b.grow_done113, %b.grow_done59, %b.grow_done, %choice.case
  ret void

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.b, align 8
  %var.load2 = load ptr, ptr %var.s, align 8
  call void @"json::escape_string_into"(ptr %var.load1, ptr %var.load2)
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %tag.gep5 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id6 = load i64, ptr %tag.gep5, align 8
  %tag.match7 = icmp eq i64 %tag.id6, 1
  br i1 %tag.match7, label %choice.case3, label %choice.next4

choice.case3:                                     ; preds = %choice.next
  %pay.gep8 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr9 = load ptr, ptr %pay.gep8, align 8
  %pay.float.null = icmp eq ptr %payload.ptr9, null
  br i1 %pay.float.null, label %pay.float.nullbb, label %pay.float.load

choice.next4:                                     ; preds = %choice.next
  %tag.gep28 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id29 = load i64, ptr %tag.gep28, align 8
  %tag.match30 = icmp eq i64 %tag.id29, 2
  br i1 %tag.match30, label %choice.case26, label %choice.next27

pay.float.load:                                   ; preds = %choice.case3
  %pay.float.val = load double, ptr %payload.ptr9, align 8
  br label %pay.float.merge

pay.float.nullbb:                                 ; preds = %choice.case3
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %pay.float.nullbb, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %pay.float.nullbb ]
  store double %pay.float.phi, ptr %var._10, align 8
  store double %pay.float.phi, ptr %var.n, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load11 = load double, ptr %var.n, align 8
  %call.res = call ptr @"json::format_number"(double %var.load11)
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %app.str.len12 = load i64, ptr %app.str.len, align 8
  %app.str.len13 = and i64 %app.str.len12, 281474976710655
  %str.tag = lshr i64 %app.str.len12, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %pay.float.merge
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %pay.float.merge
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len14 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len14, i64 %app.str.len13)
  %sum = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.app.new.len15

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

b.app.new.len15:                                  ; preds = %str_overflow_abort, %str_ok
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap16 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap16, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %str_ok
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len15

b.grow2:                                          ; preds = %b.app.new.len15
  %b.cap2 = mul i64 %b.cap16, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len217 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data218 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum19 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf20 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf20, label %str_overflow_abort22, label %b.new.buf.len221

b.nogrow2:                                        ; preds = %b.app.new.len15
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len221
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %app.str.data24 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data25 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data25, i64 %b.app.cur.len14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data24, i64 %app.str.len13, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data25, i64 %sum
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %choice.exit

b.new.buf.len221:                                 ; preds = %str_overflow_abort22, %b.grow2
  %arena.cur23 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 %sum19)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data218, i64 %b.cur.len217, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len217
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort22:                             ; preds = %b.grow2
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len221

choice.case26:                                    ; preds = %choice.next4
  %pay.gep31 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr32 = load ptr, ptr %pay.gep31, align 8
  %pay.int.null = icmp eq ptr %payload.ptr32, null
  br i1 %pay.int.null, label %pay.int.nullbb, label %pay.int.load

choice.next27:                                    ; preds = %choice.next4
  %tag.gep88 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id89 = load i64, ptr %tag.gep88, align 8
  %tag.match90 = icmp eq i64 %tag.id89, 3
  br i1 %tag.match90, label %choice.case86, label %choice.next87

pay.int.load:                                     ; preds = %choice.case26
  %pay.int.val = load i1, ptr %payload.ptr32, align 1
  br label %pay.int.merge

pay.int.nullbb:                                   ; preds = %choice.case26
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %pay.int.nullbb, %pay.int.load
  %pay.int.phi = phi i1 [ %pay.int.val, %pay.int.load ], [ false, %pay.int.nullbb ]
  store i1 %pay.int.phi, ptr %var._33, align 1
  store i1 %pay.int.phi, ptr %var.flag, align 1
  %b.load34 = load ptr, ptr %var.b, align 8
  %var.load35 = load i1, ptr %var.flag, align 1
  br i1 %var.load35, label %choice.then, label %choice.else

choice.then:                                      ; preds = %pay.int.merge
  br label %choice.exit36

choice.else:                                      ; preds = %pay.int.merge
  br label %choice.exit36

choice.exit36:                                    ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.0.struct, %choice.then ], [ @str.1.struct, %choice.else ]
  %app.str.len37 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 0
  %app.str.len38 = load i64, ptr %app.str.len37, align 8
  %app.str.len39 = and i64 %app.str.len38, 281474976710655
  %str.tag40 = lshr i64 %app.str.len38, 48
  %str.immortal41 = icmp eq i64 %str.tag40, 0
  br i1 %str.immortal41, label %str_ok43, label %str_gen_check42

str_gen_check42:                                  ; preds = %choice.exit36
  %arena.cur45 = call ptr @dva_arena_current()
  %tag.valid46 = call i1 @dva_arena_validate_tag(ptr %arena.cur45, i64 %str.tag40)
  br i1 %tag.valid46, label %str_ok43, label %str_stale44

str_ok43:                                         ; preds = %str_stale44, %str_gen_check42, %choice.exit36
  %b.app.cur.len47 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 0
  %b.app.cur.len48 = load i64, ptr %b.app.cur.len47, align 8
  %b.app.new.len49 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len48, i64 %app.str.len39)
  %sum50 = extractvalue { i64, i1 } %b.app.new.len49, 0
  %ovf51 = extractvalue { i64, i1 } %b.app.new.len49, 1
  br i1 %ovf51, label %str_overflow_abort53, label %b.app.new.len52

str_stale44:                                      ; preds = %str_gen_check42
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok43

b.app.new.len52:                                  ; preds = %str_overflow_abort53, %str_ok43
  %b.cap54 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 2
  %b.cap55 = load i64, ptr %b.cap54, align 8
  %b.need.grow56 = icmp slt i64 %b.cap55, %sum50
  br i1 %b.need.grow56, label %b.grow257, label %b.nogrow258

str_overflow_abort53:                             ; preds = %str_ok43
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len52

b.grow257:                                        ; preds = %b.app.new.len52
  %b.cap260 = mul i64 %b.cap55, 2
  %b.cap.small61 = icmp slt i64 %b.cap260, 16
  %b.cap.grow62 = select i1 %b.cap.small61, i64 16, i64 %b.cap260
  %b.cap.need63 = icmp slt i64 %b.cap.grow62, %sum50
  %b.new.cap64 = select i1 %b.cap.need63, i64 %sum50, i64 %b.cap.grow62
  %b.cur.len265 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 0
  %b.cur.len266 = load i64, ptr %b.cur.len265, align 8
  %b.cur.data267 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 1
  %b.cur.data268 = load ptr, ptr %b.cur.data267, align 8
  %b.new.buf.len269 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap64, i64 1)
  %sum70 = extractvalue { i64, i1 } %b.new.buf.len269, 0
  %ovf71 = extractvalue { i64, i1 } %b.new.buf.len269, 1
  br i1 %ovf71, label %str_overflow_abort73, label %b.new.buf.len272

b.nogrow258:                                      ; preds = %b.app.new.len52
  br label %b.grow_done59

b.grow_done59:                                    ; preds = %b.nogrow258, %b.new.buf.len272
  %app.str.data79 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %app.str.data80 = load ptr, ptr %app.str.data79, align 8
  %b.app.data81 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 1
  %b.app.data82 = load ptr, ptr %b.app.data81, align 8
  %b.app.dst83 = getelementptr i8, ptr %b.app.data82, i64 %b.app.cur.len48
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst83, ptr align 1 %app.str.data80, i64 %app.str.len39, i1 false)
  %b.app.nul84 = getelementptr i8, ptr %b.app.data82, i64 %sum50
  store i8 0, ptr %b.app.nul84, align 1
  %b.len.gep85 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 0
  store i64 %sum50, ptr %b.len.gep85, align 8
  br label %choice.exit

b.new.buf.len272:                                 ; preds = %str_overflow_abort73, %b.grow257
  %arena.cur74 = call ptr @dva_arena_current()
  %b.new.buf275 = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 %sum70)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf275, ptr align 1 %b.cur.data268, i64 %b.cur.len266, i1 false)
  %b.grow2.nul76 = getelementptr i8, ptr %b.new.buf275, i64 %b.cur.len266
  store i8 0, ptr %b.grow2.nul76, align 1
  %b.new.data2.gep77 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 1
  store ptr %b.new.buf275, ptr %b.new.data2.gep77, align 8
  %b.new.cap2.gep78 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 2
  store i64 %b.new.cap64, ptr %b.new.cap2.gep78, align 8
  br label %b.grow_done59

str_overflow_abort73:                             ; preds = %b.grow257
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len272

choice.case86:                                    ; preds = %choice.next27
  %b.load91 = load ptr, ptr %var.b, align 8
  %app.str.len92 = load i64, ptr @str.17.struct, align 8
  %app.str.len93 = and i64 %app.str.len92, 281474976710655
  %str.tag94 = lshr i64 %app.str.len92, 48
  %str.immortal95 = icmp eq i64 %str.tag94, 0
  br i1 %str.immortal95, label %str_ok97, label %str_gen_check96

choice.next87:                                    ; preds = %choice.next27
  %tag.gep141 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id142 = load i64, ptr %tag.gep141, align 8
  %tag.match143 = icmp eq i64 %tag.id142, 4
  br i1 %tag.match143, label %choice.case139, label %choice.next140

str_gen_check96:                                  ; preds = %choice.case86
  %arena.cur99 = call ptr @dva_arena_current()
  %tag.valid100 = call i1 @dva_arena_validate_tag(ptr %arena.cur99, i64 %str.tag94)
  br i1 %tag.valid100, label %str_ok97, label %str_stale98

str_ok97:                                         ; preds = %str_stale98, %str_gen_check96, %choice.case86
  %b.app.cur.len101 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 0
  %b.app.cur.len102 = load i64, ptr %b.app.cur.len101, align 8
  %b.app.new.len103 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len102, i64 %app.str.len93)
  %sum104 = extractvalue { i64, i1 } %b.app.new.len103, 0
  %ovf105 = extractvalue { i64, i1 } %b.app.new.len103, 1
  br i1 %ovf105, label %str_overflow_abort107, label %b.app.new.len106

str_stale98:                                      ; preds = %str_gen_check96
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok97

b.app.new.len106:                                 ; preds = %str_overflow_abort107, %str_ok97
  %b.cap108 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 2
  %b.cap109 = load i64, ptr %b.cap108, align 8
  %b.need.grow110 = icmp slt i64 %b.cap109, %sum104
  br i1 %b.need.grow110, label %b.grow2111, label %b.nogrow2112

str_overflow_abort107:                            ; preds = %str_ok97
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len106

b.grow2111:                                       ; preds = %b.app.new.len106
  %b.cap2114 = mul i64 %b.cap109, 2
  %b.cap.small115 = icmp slt i64 %b.cap2114, 16
  %b.cap.grow116 = select i1 %b.cap.small115, i64 16, i64 %b.cap2114
  %b.cap.need117 = icmp slt i64 %b.cap.grow116, %sum104
  %b.new.cap118 = select i1 %b.cap.need117, i64 %sum104, i64 %b.cap.grow116
  %b.cur.len2119 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 0
  %b.cur.len2120 = load i64, ptr %b.cur.len2119, align 8
  %b.cur.data2121 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 1
  %b.cur.data2122 = load ptr, ptr %b.cur.data2121, align 8
  %b.new.buf.len2123 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap118, i64 1)
  %sum124 = extractvalue { i64, i1 } %b.new.buf.len2123, 0
  %ovf125 = extractvalue { i64, i1 } %b.new.buf.len2123, 1
  br i1 %ovf125, label %str_overflow_abort127, label %b.new.buf.len2126

b.nogrow2112:                                     ; preds = %b.app.new.len106
  br label %b.grow_done113

b.grow_done113:                                   ; preds = %b.nogrow2112, %b.new.buf.len2126
  %app.str.data133 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %b.app.data134 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 1
  %b.app.data135 = load ptr, ptr %b.app.data134, align 8
  %b.app.dst136 = getelementptr i8, ptr %b.app.data135, i64 %b.app.cur.len102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst136, ptr align 1 %app.str.data133, i64 %app.str.len93, i1 false)
  %b.app.nul137 = getelementptr i8, ptr %b.app.data135, i64 %sum104
  store i8 0, ptr %b.app.nul137, align 1
  %b.len.gep138 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 0
  store i64 %sum104, ptr %b.len.gep138, align 8
  br label %choice.exit

b.new.buf.len2126:                                ; preds = %str_overflow_abort127, %b.grow2111
  %arena.cur128 = call ptr @dva_arena_current()
  %b.new.buf2129 = call ptr @dva_arena_alloc(ptr %arena.cur128, i64 %sum124)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2129, ptr align 1 %b.cur.data2122, i64 %b.cur.len2120, i1 false)
  %b.grow2.nul130 = getelementptr i8, ptr %b.new.buf2129, i64 %b.cur.len2120
  store i8 0, ptr %b.grow2.nul130, align 1
  %b.new.data2.gep131 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 1
  store ptr %b.new.buf2129, ptr %b.new.data2.gep131, align 8
  %b.new.cap2.gep132 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 2
  store i64 %b.new.cap118, ptr %b.new.cap2.gep132, align 8
  br label %b.grow_done113

str_overflow_abort127:                            ; preds = %b.grow2111
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2126

choice.case139:                                   ; preds = %choice.next87
  %pay.gep144 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr145 = load ptr, ptr %pay.gep144, align 8
  store ptr %payload.ptr145, ptr %var._146, align 8
  store ptr %payload.ptr145, ptr %var.items, align 8
  %var.load147 = load ptr, ptr %var.items, align 8
  %slice.len.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load147, i32 0, i32 1
  %slice.len.raw = load i64, ptr %slice.len.gep, align 8
  %slice.len = and i64 %slice.len.raw, 4611686018427387903
  %cmptmp = icmp eq i64 %slice.len, 0
  br i1 %cmptmp, label %choice.then148, label %choice.else149

choice.next140:                                   ; preds = %choice.next87
  %tag.gep392 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id393 = load i64, ptr %tag.gep392, align 8
  %tag.match394 = icmp eq i64 %tag.id393, 5
  br i1 %tag.match394, label %choice.case390, label %choice.next391

choice.then148:                                   ; preds = %choice.case139
  %b.load151 = load ptr, ptr %var.b, align 8
  %app.str.len152 = load i64, ptr @str.37.struct, align 8
  %app.str.len153 = and i64 %app.str.len152, 281474976710655
  %str.tag154 = lshr i64 %app.str.len152, 48
  %str.immortal155 = icmp eq i64 %str.tag154, 0
  br i1 %str.immortal155, label %str_ok157, label %str_gen_check156

choice.else149:                                   ; preds = %choice.case139
  %b.load199 = load ptr, ptr %var.b, align 8
  %app.str.len200 = load i64, ptr @str.38.struct, align 8
  %app.str.len201 = and i64 %app.str.len200, 281474976710655
  %str.tag202 = lshr i64 %app.str.len200, 48
  %str.immortal203 = icmp eq i64 %str.tag202, 0
  br i1 %str.immortal203, label %str_ok205, label %str_gen_check204

choice.exit150:                                   ; preds = %br.done.133, %b.grow_done173
  br label %choice.exit

str_gen_check156:                                 ; preds = %choice.then148
  %arena.cur159 = call ptr @dva_arena_current()
  %tag.valid160 = call i1 @dva_arena_validate_tag(ptr %arena.cur159, i64 %str.tag154)
  br i1 %tag.valid160, label %str_ok157, label %str_stale158

str_ok157:                                        ; preds = %str_stale158, %str_gen_check156, %choice.then148
  %b.app.cur.len161 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 0
  %b.app.cur.len162 = load i64, ptr %b.app.cur.len161, align 8
  %b.app.new.len163 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len162, i64 %app.str.len153)
  %sum164 = extractvalue { i64, i1 } %b.app.new.len163, 0
  %ovf165 = extractvalue { i64, i1 } %b.app.new.len163, 1
  br i1 %ovf165, label %str_overflow_abort167, label %b.app.new.len166

str_stale158:                                     ; preds = %str_gen_check156
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok157

b.app.new.len166:                                 ; preds = %str_overflow_abort167, %str_ok157
  %b.cap168 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 2
  %b.cap169 = load i64, ptr %b.cap168, align 8
  %b.need.grow170 = icmp slt i64 %b.cap169, %sum164
  br i1 %b.need.grow170, label %b.grow2171, label %b.nogrow2172

str_overflow_abort167:                            ; preds = %str_ok157
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len166

b.grow2171:                                       ; preds = %b.app.new.len166
  %b.cap2174 = mul i64 %b.cap169, 2
  %b.cap.small175 = icmp slt i64 %b.cap2174, 16
  %b.cap.grow176 = select i1 %b.cap.small175, i64 16, i64 %b.cap2174
  %b.cap.need177 = icmp slt i64 %b.cap.grow176, %sum164
  %b.new.cap178 = select i1 %b.cap.need177, i64 %sum164, i64 %b.cap.grow176
  %b.cur.len2179 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 0
  %b.cur.len2180 = load i64, ptr %b.cur.len2179, align 8
  %b.cur.data2181 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 1
  %b.cur.data2182 = load ptr, ptr %b.cur.data2181, align 8
  %b.new.buf.len2183 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap178, i64 1)
  %sum184 = extractvalue { i64, i1 } %b.new.buf.len2183, 0
  %ovf185 = extractvalue { i64, i1 } %b.new.buf.len2183, 1
  br i1 %ovf185, label %str_overflow_abort187, label %b.new.buf.len2186

b.nogrow2172:                                     ; preds = %b.app.new.len166
  br label %b.grow_done173

b.grow_done173:                                   ; preds = %b.nogrow2172, %b.new.buf.len2186
  %app.str.data193 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.37.struct, i32 0, i32 1), align 8
  %b.app.data194 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 1
  %b.app.data195 = load ptr, ptr %b.app.data194, align 8
  %b.app.dst196 = getelementptr i8, ptr %b.app.data195, i64 %b.app.cur.len162
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst196, ptr align 1 %app.str.data193, i64 %app.str.len153, i1 false)
  %b.app.nul197 = getelementptr i8, ptr %b.app.data195, i64 %sum164
  store i8 0, ptr %b.app.nul197, align 1
  %b.len.gep198 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 0
  store i64 %sum164, ptr %b.len.gep198, align 8
  br label %choice.exit150

b.new.buf.len2186:                                ; preds = %str_overflow_abort187, %b.grow2171
  %arena.cur188 = call ptr @dva_arena_current()
  %b.new.buf2189 = call ptr @dva_arena_alloc(ptr %arena.cur188, i64 %sum184)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2189, ptr align 1 %b.cur.data2182, i64 %b.cur.len2180, i1 false)
  %b.grow2.nul190 = getelementptr i8, ptr %b.new.buf2189, i64 %b.cur.len2180
  store i8 0, ptr %b.grow2.nul190, align 1
  %b.new.data2.gep191 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 1
  store ptr %b.new.buf2189, ptr %b.new.data2.gep191, align 8
  %b.new.cap2.gep192 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 2
  store i64 %b.new.cap178, ptr %b.new.cap2.gep192, align 8
  br label %b.grow_done173

str_overflow_abort187:                            ; preds = %b.grow2171
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2186

str_gen_check204:                                 ; preds = %choice.else149
  %arena.cur207 = call ptr @dva_arena_current()
  %tag.valid208 = call i1 @dva_arena_validate_tag(ptr %arena.cur207, i64 %str.tag202)
  br i1 %tag.valid208, label %str_ok205, label %str_stale206

str_ok205:                                        ; preds = %str_stale206, %str_gen_check204, %choice.else149
  %b.app.cur.len209 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 0
  %b.app.cur.len210 = load i64, ptr %b.app.cur.len209, align 8
  %b.app.new.len211 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len210, i64 %app.str.len201)
  %sum212 = extractvalue { i64, i1 } %b.app.new.len211, 0
  %ovf213 = extractvalue { i64, i1 } %b.app.new.len211, 1
  br i1 %ovf213, label %str_overflow_abort215, label %b.app.new.len214

str_stale206:                                     ; preds = %str_gen_check204
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok205

b.app.new.len214:                                 ; preds = %str_overflow_abort215, %str_ok205
  %b.cap216 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 2
  %b.cap217 = load i64, ptr %b.cap216, align 8
  %b.need.grow218 = icmp slt i64 %b.cap217, %sum212
  br i1 %b.need.grow218, label %b.grow2219, label %b.nogrow2220

str_overflow_abort215:                            ; preds = %str_ok205
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len214

b.grow2219:                                       ; preds = %b.app.new.len214
  %b.cap2222 = mul i64 %b.cap217, 2
  %b.cap.small223 = icmp slt i64 %b.cap2222, 16
  %b.cap.grow224 = select i1 %b.cap.small223, i64 16, i64 %b.cap2222
  %b.cap.need225 = icmp slt i64 %b.cap.grow224, %sum212
  %b.new.cap226 = select i1 %b.cap.need225, i64 %sum212, i64 %b.cap.grow224
  %b.cur.len2227 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 0
  %b.cur.len2228 = load i64, ptr %b.cur.len2227, align 8
  %b.cur.data2229 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 1
  %b.cur.data2230 = load ptr, ptr %b.cur.data2229, align 8
  %b.new.buf.len2231 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap226, i64 1)
  %sum232 = extractvalue { i64, i1 } %b.new.buf.len2231, 0
  %ovf233 = extractvalue { i64, i1 } %b.new.buf.len2231, 1
  br i1 %ovf233, label %str_overflow_abort235, label %b.new.buf.len2234

b.nogrow2220:                                     ; preds = %b.app.new.len214
  br label %b.grow_done221

b.grow_done221:                                   ; preds = %b.nogrow2220, %b.new.buf.len2234
  %app.str.data241 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.38.struct, i32 0, i32 1), align 8
  %b.app.data242 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 1
  %b.app.data243 = load ptr, ptr %b.app.data242, align 8
  %b.app.dst244 = getelementptr i8, ptr %b.app.data243, i64 %b.app.cur.len210
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst244, ptr align 1 %app.str.data241, i64 %app.str.len201, i1 false)
  %b.app.nul245 = getelementptr i8, ptr %b.app.data243, i64 %sum212
  store i8 0, ptr %b.app.nul245, align 1
  %b.len.gep246 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 0
  store i64 %sum212, ptr %b.len.gep246, align 8
  %var.load247 = load ptr, ptr %var.items, align 8
  %sl.len.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load247, i32 0, i32 1
  %sl.len.raw = load i64, ptr %sl.len.gep, align 8
  %sl.len = and i64 %sl.len.raw, 4611686018427387903
  %sl.data.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load247, i32 0, i32 0
  %sl.data = load ptr, ptr %sl.data.gep, align 8
  store i64 0, ptr %loop.idx.131, align 8
  store i64 0, ptr %var.i, align 8
  %cycle.prev.u = load ptr, ptr %var._146, align 8
  br label %loop.header.131

b.new.buf.len2234:                                ; preds = %str_overflow_abort235, %b.grow2219
  %arena.cur236 = call ptr @dva_arena_current()
  %b.new.buf2237 = call ptr @dva_arena_alloc(ptr %arena.cur236, i64 %sum232)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2237, ptr align 1 %b.cur.data2230, i64 %b.cur.len2228, i1 false)
  %b.grow2.nul238 = getelementptr i8, ptr %b.new.buf2237, i64 %b.cur.len2228
  store i8 0, ptr %b.grow2.nul238, align 1
  %b.new.data2.gep239 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 1
  store ptr %b.new.buf2237, ptr %b.new.data2.gep239, align 8
  %b.new.cap2.gep240 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 2
  store i64 %b.new.cap226, ptr %b.new.cap2.gep240, align 8
  br label %b.grow_done221

str_overflow_abort235:                            ; preds = %b.grow2219
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2234

loop.header.131:                                  ; preds = %loop.latch.131, %b.grow_done221
  %counter.load = load i64, ptr %loop.idx.131, align 8
  %loop.cond = icmp slt i64 %counter.load, %sl.len
  br i1 %loop.cond, label %loop.body.131, label %loop.exit.nat.131

loop.body.131:                                    ; preds = %loop.header.131
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.131, align 8
  %sl.elem.gep.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load247, i32 0, i32 1
  %sl.elem.gep.isp.bit.raw = load i64, ptr %sl.elem.gep.isp.bit.gep, align 8
  %sl.elem.gep.isp.bit = and i64 %sl.elem.gep.isp.bit.raw, 4611686018427387904
  %sl.elem.gep.isp = icmp ne i64 %sl.elem.gep.isp.bit, 0
  %sl.elem.gep.pgep = getelementptr i64, ptr %sl.data, i64 %counter.load
  %sl.elem.gep.ngep = getelementptr ptr, ptr %sl.data, i64 %counter.load
  %sl.elem.gep = select i1 %sl.elem.gep.isp, ptr %sl.elem.gep.pgep, ptr %sl.elem.gep.ngep
  %sl.elem.val = load ptr, ptr %sl.elem.gep, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %sl.elem.val, ptr %var._248, align 8
  store ptr %sl.elem.val, ptr %var.item, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load249 = load i64, ptr %var.i, align 8
  %cmptmp250 = icmp sgt i64 %var.load249, 0
  br i1 %cmptmp250, label %choice.then251, label %choice.exit252

loop.exit.nat.131:                                ; preds = %loop.header.131
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.131

loop.latch.131:                                   ; preds = %choice.exit252
  %step.val = load i64, ptr %loop.step.131, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.131, align 8
  br label %loop.header.131

loop.exit.131:                                    ; preds = %loop.exit.nat.131
  store ptr %cycle.prev.u, ptr %var._146, align 8
  %b.load309 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load309, i32 0, i32 0
  %b.rn.cur.len310 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len310, i64 1)
  %sum311 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf312 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf312, label %str_overflow_abort314, label %b.rn.new.len313

choice.then251:                                   ; preds = %loop.body.131
  %b.load253 = load ptr, ptr %var.b, align 8
  %app.str.len254 = load i64, ptr @str.39.struct, align 8
  %app.str.len255 = and i64 %app.str.len254, 281474976710655
  %str.tag256 = lshr i64 %app.str.len254, 48
  %str.immortal257 = icmp eq i64 %str.tag256, 0
  br i1 %str.immortal257, label %str_ok259, label %str_gen_check258

choice.exit252:                                   ; preds = %b.grow_done275, %loop.body.131
  %var.load301 = load ptr, ptr %var.b, align 8
  %var.load302 = load i64, ptr %var.depth, align 8
  %addtmp = add i64 %var.load302, 1
  %var.load303 = load i64, ptr %var.indent, align 8
  %multmp = mul i64 %addtmp, %var.load303
  call void @"json::#append_indent"(ptr %var.load301, i64 %multmp)
  %var.load304 = load ptr, ptr %var.b, align 8
  %var.load305 = load ptr, ptr %var.item, align 8
  %var.load306 = load i64, ptr %var.indent, align 8
  %var.load307 = load i64, ptr %var.depth, align 8
  %addtmp308 = add i64 %var.load307, 1
  call void @"json::#stringify_pretty_into"(ptr %var.load304, ptr %var.load305, i64 %var.load306, i64 %addtmp308)
  br label %loop.latch.131

str_gen_check258:                                 ; preds = %choice.then251
  %arena.cur261 = call ptr @dva_arena_current()
  %tag.valid262 = call i1 @dva_arena_validate_tag(ptr %arena.cur261, i64 %str.tag256)
  br i1 %tag.valid262, label %str_ok259, label %str_stale260

str_ok259:                                        ; preds = %str_stale260, %str_gen_check258, %choice.then251
  %b.app.cur.len263 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load253, i32 0, i32 0
  %b.app.cur.len264 = load i64, ptr %b.app.cur.len263, align 8
  %b.app.new.len265 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len264, i64 %app.str.len255)
  %sum266 = extractvalue { i64, i1 } %b.app.new.len265, 0
  %ovf267 = extractvalue { i64, i1 } %b.app.new.len265, 1
  br i1 %ovf267, label %str_overflow_abort269, label %b.app.new.len268

str_stale260:                                     ; preds = %str_gen_check258
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok259

b.app.new.len268:                                 ; preds = %str_overflow_abort269, %str_ok259
  %b.cap270 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load253, i32 0, i32 2
  %b.cap271 = load i64, ptr %b.cap270, align 8
  %b.need.grow272 = icmp slt i64 %b.cap271, %sum266
  br i1 %b.need.grow272, label %b.grow2273, label %b.nogrow2274

str_overflow_abort269:                            ; preds = %str_ok259
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len268

b.grow2273:                                       ; preds = %b.app.new.len268
  %b.cap2276 = mul i64 %b.cap271, 2
  %b.cap.small277 = icmp slt i64 %b.cap2276, 16
  %b.cap.grow278 = select i1 %b.cap.small277, i64 16, i64 %b.cap2276
  %b.cap.need279 = icmp slt i64 %b.cap.grow278, %sum266
  %b.new.cap280 = select i1 %b.cap.need279, i64 %sum266, i64 %b.cap.grow278
  %b.cur.len2281 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load253, i32 0, i32 0
  %b.cur.len2282 = load i64, ptr %b.cur.len2281, align 8
  %b.cur.data2283 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load253, i32 0, i32 1
  %b.cur.data2284 = load ptr, ptr %b.cur.data2283, align 8
  %b.new.buf.len2285 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap280, i64 1)
  %sum286 = extractvalue { i64, i1 } %b.new.buf.len2285, 0
  %ovf287 = extractvalue { i64, i1 } %b.new.buf.len2285, 1
  br i1 %ovf287, label %str_overflow_abort289, label %b.new.buf.len2288

b.nogrow2274:                                     ; preds = %b.app.new.len268
  br label %b.grow_done275

b.grow_done275:                                   ; preds = %b.nogrow2274, %b.new.buf.len2288
  %app.str.data295 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.39.struct, i32 0, i32 1), align 8
  %b.app.data296 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load253, i32 0, i32 1
  %b.app.data297 = load ptr, ptr %b.app.data296, align 8
  %b.app.dst298 = getelementptr i8, ptr %b.app.data297, i64 %b.app.cur.len264
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst298, ptr align 1 %app.str.data295, i64 %app.str.len255, i1 false)
  %b.app.nul299 = getelementptr i8, ptr %b.app.data297, i64 %sum266
  store i8 0, ptr %b.app.nul299, align 1
  %b.len.gep300 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load253, i32 0, i32 0
  store i64 %sum266, ptr %b.len.gep300, align 8
  br label %choice.exit252

b.new.buf.len2288:                                ; preds = %str_overflow_abort289, %b.grow2273
  %arena.cur290 = call ptr @dva_arena_current()
  %b.new.buf2291 = call ptr @dva_arena_alloc(ptr %arena.cur290, i64 %sum286)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2291, ptr align 1 %b.cur.data2284, i64 %b.cur.len2282, i1 false)
  %b.grow2.nul292 = getelementptr i8, ptr %b.new.buf2291, i64 %b.cur.len2282
  store i8 0, ptr %b.grow2.nul292, align 1
  %b.new.data2.gep293 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load253, i32 0, i32 1
  store ptr %b.new.buf2291, ptr %b.new.data2.gep293, align 8
  %b.new.cap2.gep294 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load253, i32 0, i32 2
  store i64 %b.new.cap280, ptr %b.new.cap2.gep294, align 8
  br label %b.grow_done275

str_overflow_abort289:                            ; preds = %b.grow2273
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2288

b.rn.new.len313:                                  ; preds = %str_overflow_abort314, %loop.exit.131
  %b.cap315 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load309, i32 0, i32 2
  %b.cap316 = load i64, ptr %b.cap315, align 8
  %b.need.grow317 = icmp slt i64 %b.cap316, %sum311
  br i1 %b.need.grow317, label %b.grow2318, label %b.nogrow2319

str_overflow_abort314:                            ; preds = %loop.exit.131
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len313

b.grow2318:                                       ; preds = %b.rn.new.len313
  %b.cap2321 = mul i64 %b.cap316, 2
  %b.cap.small322 = icmp slt i64 %b.cap2321, 16
  %b.cap.grow323 = select i1 %b.cap.small322, i64 16, i64 %b.cap2321
  %b.cap.need324 = icmp slt i64 %b.cap.grow323, %sum311
  %b.new.cap325 = select i1 %b.cap.need324, i64 %sum311, i64 %b.cap.grow323
  %b.cur.len2326 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load309, i32 0, i32 0
  %b.cur.len2327 = load i64, ptr %b.cur.len2326, align 8
  %b.cur.data2328 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load309, i32 0, i32 1
  %b.cur.data2329 = load ptr, ptr %b.cur.data2328, align 8
  %b.new.buf.len2330 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap325, i64 1)
  %sum331 = extractvalue { i64, i1 } %b.new.buf.len2330, 0
  %ovf332 = extractvalue { i64, i1 } %b.new.buf.len2330, 1
  br i1 %ovf332, label %str_overflow_abort334, label %b.new.buf.len2333

b.nogrow2319:                                     ; preds = %b.rn.new.len313
  br label %b.grow_done320

b.grow_done320:                                   ; preds = %b.nogrow2319, %b.new.buf.len2333
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load309, i32 0, i32 1
  %b.rn.data340 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data340, i64 %b.rn.cur.len310
  br i1 true, label %br.b1.132, label %br.c2.132

b.new.buf.len2333:                                ; preds = %str_overflow_abort334, %b.grow2318
  %arena.cur335 = call ptr @dva_arena_current()
  %b.new.buf2336 = call ptr @dva_arena_alloc(ptr %arena.cur335, i64 %sum331)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2336, ptr align 1 %b.cur.data2329, i64 %b.cur.len2327, i1 false)
  %b.grow2.nul337 = getelementptr i8, ptr %b.new.buf2336, i64 %b.cur.len2327
  store i8 0, ptr %b.grow2.nul337, align 1
  %b.new.data2.gep338 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load309, i32 0, i32 1
  store ptr %b.new.buf2336, ptr %b.new.data2.gep338, align 8
  %b.new.cap2.gep339 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load309, i32 0, i32 2
  store i64 %b.new.cap325, ptr %b.new.cap2.gep339, align 8
  br label %b.grow_done320

str_overflow_abort334:                            ; preds = %b.grow2318
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2333

br.b1.132:                                        ; preds = %b.grow_done320
  store i8 10, ptr %b.rn.dst, align 1
  br label %br.done.132

br.c2.132:                                        ; preds = %b.grow_done320
  br i1 true, label %br.b2.132, label %br.c3.132

br.b2.132:                                        ; preds = %br.c2.132
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -118, ptr %br.dst1, align 1
  br label %br.done.132

br.c3.132:                                        ; preds = %br.c2.132
  br i1 true, label %br.b3.132, label %br.b4.132

br.b3.132:                                        ; preds = %br.c3.132
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -118, ptr %br.dst2.3, align 1
  br label %br.done.132

br.b4.132:                                        ; preds = %br.c3.132
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -118, ptr %br.dst3.4, align 1
  br label %br.done.132

br.done.132:                                      ; preds = %br.b4.132, %br.b3.132, %br.b2.132, %br.b1.132
  %br.nul = getelementptr i8, ptr %b.rn.data340, i64 %sum311
  store i8 0, ptr %br.nul, align 1
  %b.len.gep341 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load309, i32 0, i32 0
  store i64 %sum311, ptr %b.len.gep341, align 8
  %var.load342 = load ptr, ptr %var.b, align 8
  %var.load343 = load i64, ptr %var.depth, align 8
  %var.load344 = load i64, ptr %var.indent, align 8
  %multmp345 = mul i64 %var.load343, %var.load344
  call void @"json::#append_indent"(ptr %var.load342, i64 %multmp345)
  %b.load346 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len347 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load346, i32 0, i32 0
  %b.rn.cur.len348 = load i64, ptr %b.rn.cur.len347, align 8
  %b.rn.new.len349 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len348, i64 1)
  %sum350 = extractvalue { i64, i1 } %b.rn.new.len349, 0
  %ovf351 = extractvalue { i64, i1 } %b.rn.new.len349, 1
  br i1 %ovf351, label %str_overflow_abort353, label %b.rn.new.len352

b.rn.new.len352:                                  ; preds = %str_overflow_abort353, %br.done.132
  %b.cap354 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load346, i32 0, i32 2
  %b.cap355 = load i64, ptr %b.cap354, align 8
  %b.need.grow356 = icmp slt i64 %b.cap355, %sum350
  br i1 %b.need.grow356, label %b.grow2357, label %b.nogrow2358

str_overflow_abort353:                            ; preds = %br.done.132
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len352

b.grow2357:                                       ; preds = %b.rn.new.len352
  %b.cap2360 = mul i64 %b.cap355, 2
  %b.cap.small361 = icmp slt i64 %b.cap2360, 16
  %b.cap.grow362 = select i1 %b.cap.small361, i64 16, i64 %b.cap2360
  %b.cap.need363 = icmp slt i64 %b.cap.grow362, %sum350
  %b.new.cap364 = select i1 %b.cap.need363, i64 %sum350, i64 %b.cap.grow362
  %b.cur.len2365 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load346, i32 0, i32 0
  %b.cur.len2366 = load i64, ptr %b.cur.len2365, align 8
  %b.cur.data2367 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load346, i32 0, i32 1
  %b.cur.data2368 = load ptr, ptr %b.cur.data2367, align 8
  %b.new.buf.len2369 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap364, i64 1)
  %sum370 = extractvalue { i64, i1 } %b.new.buf.len2369, 0
  %ovf371 = extractvalue { i64, i1 } %b.new.buf.len2369, 1
  br i1 %ovf371, label %str_overflow_abort373, label %b.new.buf.len2372

b.nogrow2358:                                     ; preds = %b.rn.new.len352
  br label %b.grow_done359

b.grow_done359:                                   ; preds = %b.nogrow2358, %b.new.buf.len2372
  %b.rn.data379 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load346, i32 0, i32 1
  %b.rn.data380 = load ptr, ptr %b.rn.data379, align 8
  %b.rn.dst381 = getelementptr i8, ptr %b.rn.data380, i64 %b.rn.cur.len348
  br i1 true, label %br.b1.133, label %br.c2.133

b.new.buf.len2372:                                ; preds = %str_overflow_abort373, %b.grow2357
  %arena.cur374 = call ptr @dva_arena_current()
  %b.new.buf2375 = call ptr @dva_arena_alloc(ptr %arena.cur374, i64 %sum370)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2375, ptr align 1 %b.cur.data2368, i64 %b.cur.len2366, i1 false)
  %b.grow2.nul376 = getelementptr i8, ptr %b.new.buf2375, i64 %b.cur.len2366
  store i8 0, ptr %b.grow2.nul376, align 1
  %b.new.data2.gep377 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load346, i32 0, i32 1
  store ptr %b.new.buf2375, ptr %b.new.data2.gep377, align 8
  %b.new.cap2.gep378 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load346, i32 0, i32 2
  store i64 %b.new.cap364, ptr %b.new.cap2.gep378, align 8
  br label %b.grow_done359

str_overflow_abort373:                            ; preds = %b.grow2357
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2372

br.b1.133:                                        ; preds = %b.grow_done359
  store i8 93, ptr %b.rn.dst381, align 1
  br label %br.done.133

br.c2.133:                                        ; preds = %b.grow_done359
  br i1 true, label %br.b2.133, label %br.c3.133

br.b2.133:                                        ; preds = %br.c2.133
  store i8 -63, ptr %b.rn.dst381, align 1
  %br.dst1382 = getelementptr i8, ptr %b.rn.dst381, i64 1
  store i8 -99, ptr %br.dst1382, align 1
  br label %br.done.133

br.c3.133:                                        ; preds = %br.c2.133
  br i1 true, label %br.b3.133, label %br.b4.133

br.b3.133:                                        ; preds = %br.c3.133
  store i8 -32, ptr %b.rn.dst381, align 1
  %br.dst1.3383 = getelementptr i8, ptr %b.rn.dst381, i64 1
  store i8 -127, ptr %br.dst1.3383, align 1
  %br.dst2.3384 = getelementptr i8, ptr %b.rn.dst381, i64 2
  store i8 -99, ptr %br.dst2.3384, align 1
  br label %br.done.133

br.b4.133:                                        ; preds = %br.c3.133
  store i8 -16, ptr %b.rn.dst381, align 1
  %br.dst1.4385 = getelementptr i8, ptr %b.rn.dst381, i64 1
  store i8 -128, ptr %br.dst1.4385, align 1
  %br.dst2.4386 = getelementptr i8, ptr %b.rn.dst381, i64 2
  store i8 -127, ptr %br.dst2.4386, align 1
  %br.dst3.4387 = getelementptr i8, ptr %b.rn.dst381, i64 3
  store i8 -99, ptr %br.dst3.4387, align 1
  br label %br.done.133

br.done.133:                                      ; preds = %br.b4.133, %br.b3.133, %br.b2.133, %br.b1.133
  %br.nul388 = getelementptr i8, ptr %b.rn.data380, i64 %sum350
  store i8 0, ptr %br.nul388, align 1
  %b.len.gep389 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load346, i32 0, i32 0
  store i64 %sum350, ptr %b.len.gep389, align 8
  br label %choice.exit150

choice.case390:                                   ; preds = %choice.next140
  %pay.gep395 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr396 = load ptr, ptr %pay.gep395, align 8
  store ptr %payload.ptr396, ptr %var._397, align 8
  store ptr %payload.ptr396, ptr %var.pairs, align 8
  %var.load398 = load ptr, ptr %var.pairs, align 8
  %slice.len.gep399 = getelementptr inbounds { ptr, i64 }, ptr %var.load398, i32 0, i32 1
  %slice.len.raw400 = load i64, ptr %slice.len.gep399, align 8
  %slice.len401 = and i64 %slice.len.raw400, 4611686018427387903
  %cmptmp402 = icmp eq i64 %slice.len401, 0
  br i1 %cmptmp402, label %choice.then403, label %choice.else404

choice.next391:                                   ; preds = %choice.next140
  br label %choice.exit

choice.then403:                                   ; preds = %choice.case390
  %b.load406 = load ptr, ptr %var.b, align 8
  %app.str.len407 = load i64, ptr @str.40.struct, align 8
  %app.str.len408 = and i64 %app.str.len407, 281474976710655
  %str.tag409 = lshr i64 %app.str.len407, 48
  %str.immortal410 = icmp eq i64 %str.tag409, 0
  br i1 %str.immortal410, label %str_ok412, label %str_gen_check411

choice.else404:                                   ; preds = %choice.case390
  %b.load454 = load ptr, ptr %var.b, align 8
  %app.str.len455 = load i64, ptr @str.41.struct, align 8
  %app.str.len456 = and i64 %app.str.len455, 281474976710655
  %str.tag457 = lshr i64 %app.str.len455, 48
  %str.immortal458 = icmp eq i64 %str.tag457, 0
  br i1 %str.immortal458, label %str_ok460, label %str_gen_check459

choice.exit405:                                   ; preds = %br.done.136, %b.grow_done428
  br label %choice.exit

str_gen_check411:                                 ; preds = %choice.then403
  %arena.cur414 = call ptr @dva_arena_current()
  %tag.valid415 = call i1 @dva_arena_validate_tag(ptr %arena.cur414, i64 %str.tag409)
  br i1 %tag.valid415, label %str_ok412, label %str_stale413

str_ok412:                                        ; preds = %str_stale413, %str_gen_check411, %choice.then403
  %b.app.cur.len416 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 0
  %b.app.cur.len417 = load i64, ptr %b.app.cur.len416, align 8
  %b.app.new.len418 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len417, i64 %app.str.len408)
  %sum419 = extractvalue { i64, i1 } %b.app.new.len418, 0
  %ovf420 = extractvalue { i64, i1 } %b.app.new.len418, 1
  br i1 %ovf420, label %str_overflow_abort422, label %b.app.new.len421

str_stale413:                                     ; preds = %str_gen_check411
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok412

b.app.new.len421:                                 ; preds = %str_overflow_abort422, %str_ok412
  %b.cap423 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 2
  %b.cap424 = load i64, ptr %b.cap423, align 8
  %b.need.grow425 = icmp slt i64 %b.cap424, %sum419
  br i1 %b.need.grow425, label %b.grow2426, label %b.nogrow2427

str_overflow_abort422:                            ; preds = %str_ok412
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len421

b.grow2426:                                       ; preds = %b.app.new.len421
  %b.cap2429 = mul i64 %b.cap424, 2
  %b.cap.small430 = icmp slt i64 %b.cap2429, 16
  %b.cap.grow431 = select i1 %b.cap.small430, i64 16, i64 %b.cap2429
  %b.cap.need432 = icmp slt i64 %b.cap.grow431, %sum419
  %b.new.cap433 = select i1 %b.cap.need432, i64 %sum419, i64 %b.cap.grow431
  %b.cur.len2434 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 0
  %b.cur.len2435 = load i64, ptr %b.cur.len2434, align 8
  %b.cur.data2436 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 1
  %b.cur.data2437 = load ptr, ptr %b.cur.data2436, align 8
  %b.new.buf.len2438 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap433, i64 1)
  %sum439 = extractvalue { i64, i1 } %b.new.buf.len2438, 0
  %ovf440 = extractvalue { i64, i1 } %b.new.buf.len2438, 1
  br i1 %ovf440, label %str_overflow_abort442, label %b.new.buf.len2441

b.nogrow2427:                                     ; preds = %b.app.new.len421
  br label %b.grow_done428

b.grow_done428:                                   ; preds = %b.nogrow2427, %b.new.buf.len2441
  %app.str.data448 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.40.struct, i32 0, i32 1), align 8
  %b.app.data449 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 1
  %b.app.data450 = load ptr, ptr %b.app.data449, align 8
  %b.app.dst451 = getelementptr i8, ptr %b.app.data450, i64 %b.app.cur.len417
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst451, ptr align 1 %app.str.data448, i64 %app.str.len408, i1 false)
  %b.app.nul452 = getelementptr i8, ptr %b.app.data450, i64 %sum419
  store i8 0, ptr %b.app.nul452, align 1
  %b.len.gep453 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 0
  store i64 %sum419, ptr %b.len.gep453, align 8
  br label %choice.exit405

b.new.buf.len2441:                                ; preds = %str_overflow_abort442, %b.grow2426
  %arena.cur443 = call ptr @dva_arena_current()
  %b.new.buf2444 = call ptr @dva_arena_alloc(ptr %arena.cur443, i64 %sum439)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2444, ptr align 1 %b.cur.data2437, i64 %b.cur.len2435, i1 false)
  %b.grow2.nul445 = getelementptr i8, ptr %b.new.buf2444, i64 %b.cur.len2435
  store i8 0, ptr %b.grow2.nul445, align 1
  %b.new.data2.gep446 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 1
  store ptr %b.new.buf2444, ptr %b.new.data2.gep446, align 8
  %b.new.cap2.gep447 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 2
  store i64 %b.new.cap433, ptr %b.new.cap2.gep447, align 8
  br label %b.grow_done428

str_overflow_abort442:                            ; preds = %b.grow2426
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2441

str_gen_check459:                                 ; preds = %choice.else404
  %arena.cur462 = call ptr @dva_arena_current()
  %tag.valid463 = call i1 @dva_arena_validate_tag(ptr %arena.cur462, i64 %str.tag457)
  br i1 %tag.valid463, label %str_ok460, label %str_stale461

str_ok460:                                        ; preds = %str_stale461, %str_gen_check459, %choice.else404
  %b.app.cur.len464 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load454, i32 0, i32 0
  %b.app.cur.len465 = load i64, ptr %b.app.cur.len464, align 8
  %b.app.new.len466 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len465, i64 %app.str.len456)
  %sum467 = extractvalue { i64, i1 } %b.app.new.len466, 0
  %ovf468 = extractvalue { i64, i1 } %b.app.new.len466, 1
  br i1 %ovf468, label %str_overflow_abort470, label %b.app.new.len469

str_stale461:                                     ; preds = %str_gen_check459
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok460

b.app.new.len469:                                 ; preds = %str_overflow_abort470, %str_ok460
  %b.cap471 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load454, i32 0, i32 2
  %b.cap472 = load i64, ptr %b.cap471, align 8
  %b.need.grow473 = icmp slt i64 %b.cap472, %sum467
  br i1 %b.need.grow473, label %b.grow2474, label %b.nogrow2475

str_overflow_abort470:                            ; preds = %str_ok460
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len469

b.grow2474:                                       ; preds = %b.app.new.len469
  %b.cap2477 = mul i64 %b.cap472, 2
  %b.cap.small478 = icmp slt i64 %b.cap2477, 16
  %b.cap.grow479 = select i1 %b.cap.small478, i64 16, i64 %b.cap2477
  %b.cap.need480 = icmp slt i64 %b.cap.grow479, %sum467
  %b.new.cap481 = select i1 %b.cap.need480, i64 %sum467, i64 %b.cap.grow479
  %b.cur.len2482 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load454, i32 0, i32 0
  %b.cur.len2483 = load i64, ptr %b.cur.len2482, align 8
  %b.cur.data2484 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load454, i32 0, i32 1
  %b.cur.data2485 = load ptr, ptr %b.cur.data2484, align 8
  %b.new.buf.len2486 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap481, i64 1)
  %sum487 = extractvalue { i64, i1 } %b.new.buf.len2486, 0
  %ovf488 = extractvalue { i64, i1 } %b.new.buf.len2486, 1
  br i1 %ovf488, label %str_overflow_abort490, label %b.new.buf.len2489

b.nogrow2475:                                     ; preds = %b.app.new.len469
  br label %b.grow_done476

b.grow_done476:                                   ; preds = %b.nogrow2475, %b.new.buf.len2489
  %app.str.data496 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.41.struct, i32 0, i32 1), align 8
  %b.app.data497 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load454, i32 0, i32 1
  %b.app.data498 = load ptr, ptr %b.app.data497, align 8
  %b.app.dst499 = getelementptr i8, ptr %b.app.data498, i64 %b.app.cur.len465
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst499, ptr align 1 %app.str.data496, i64 %app.str.len456, i1 false)
  %b.app.nul500 = getelementptr i8, ptr %b.app.data498, i64 %sum467
  store i8 0, ptr %b.app.nul500, align 1
  %b.len.gep501 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load454, i32 0, i32 0
  store i64 %sum467, ptr %b.len.gep501, align 8
  %var.load502 = load ptr, ptr %var.pairs, align 8
  %sl.len.gep503 = getelementptr inbounds { ptr, i64 }, ptr %var.load502, i32 0, i32 1
  %sl.len.raw504 = load i64, ptr %sl.len.gep503, align 8
  %sl.len505 = and i64 %sl.len.raw504, 4611686018427387903
  %sl.data.gep506 = getelementptr inbounds { ptr, i64 }, ptr %var.load502, i32 0, i32 0
  %sl.data507 = load ptr, ptr %sl.data.gep506, align 8
  store i64 0, ptr %loop.idx.134, align 8
  store i64 0, ptr %var.i508, align 8
  %cycle.prev.u509 = load ptr, ptr %var._397, align 8
  br label %loop.header.134

b.new.buf.len2489:                                ; preds = %str_overflow_abort490, %b.grow2474
  %arena.cur491 = call ptr @dva_arena_current()
  %b.new.buf2492 = call ptr @dva_arena_alloc(ptr %arena.cur491, i64 %sum487)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2492, ptr align 1 %b.cur.data2485, i64 %b.cur.len2483, i1 false)
  %b.grow2.nul493 = getelementptr i8, ptr %b.new.buf2492, i64 %b.cur.len2483
  store i8 0, ptr %b.grow2.nul493, align 1
  %b.new.data2.gep494 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load454, i32 0, i32 1
  store ptr %b.new.buf2492, ptr %b.new.data2.gep494, align 8
  %b.new.cap2.gep495 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load454, i32 0, i32 2
  store i64 %b.new.cap481, ptr %b.new.cap2.gep495, align 8
  br label %b.grow_done476

str_overflow_abort490:                            ; preds = %b.grow2474
  %31 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2489

loop.header.134:                                  ; preds = %loop.latch.134, %b.grow_done476
  %counter.load510 = load i64, ptr %loop.idx.134, align 8
  %loop.cond511 = icmp slt i64 %counter.load510, %sl.len505
  br i1 %loop.cond511, label %loop.body.134, label %loop.exit.nat.134

loop.body.134:                                    ; preds = %loop.header.134
  %loop.rel.i513 = sub i64 %counter.load510, 0
  store i64 1, ptr %loop.step.134, align 8
  %sl.rec.elem.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load502, i32 0, i32 1
  %sl.rec.elem.isp.bit.raw = load i64, ptr %sl.rec.elem.isp.bit.gep, align 8
  %sl.rec.elem.isp.bit = and i64 %sl.rec.elem.isp.bit.raw, 4611686018427387904
  %sl.rec.elem.isp = icmp ne i64 %sl.rec.elem.isp.bit, 0
  br i1 %sl.rec.elem.isp, label %sl.rec.elem.pbb, label %sl.rec.elem.nbb

loop.exit.nat.134:                                ; preds = %loop.header.134
  %loop.rel.end512 = sub i64 %counter.load510, 0
  store i64 %loop.rel.end512, ptr %var.i508, align 8
  br label %loop.exit.134

loop.latch.134:                                   ; preds = %b.grow_done597
  %step.val630 = load i64, ptr %loop.step.134, align 8
  %loop.next631 = add i64 %counter.load510, %step.val630
  store i64 %loop.next631, ptr %loop.idx.134, align 8
  br label %loop.header.134

loop.exit.134:                                    ; preds = %loop.exit.nat.134
  store ptr %cycle.prev.u509, ptr %var._397, align 8
  %b.load632 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len633 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load632, i32 0, i32 0
  %b.rn.cur.len634 = load i64, ptr %b.rn.cur.len633, align 8
  %b.rn.new.len635 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len634, i64 1)
  %sum636 = extractvalue { i64, i1 } %b.rn.new.len635, 0
  %ovf637 = extractvalue { i64, i1 } %b.rn.new.len635, 1
  br i1 %ovf637, label %str_overflow_abort639, label %b.rn.new.len638

sl.rec.elem.pbb:                                  ; preds = %loop.body.134
  %sl.rec.elem.pgep = getelementptr i64, ptr %sl.data507, i64 %counter.load510
  %sl.rec.elem.pval = load ptr, ptr %sl.rec.elem.pgep, align 8
  br label %sl.rec.elem.dbb

sl.rec.elem.nbb:                                  ; preds = %loop.body.134
  %sl.rec.elem.ngep = getelementptr { ptr, ptr }, ptr %sl.data507, i64 %counter.load510
  br label %sl.rec.elem.dbb

sl.rec.elem.dbb:                                  ; preds = %sl.rec.elem.nbb, %sl.rec.elem.pbb
  %sl.rec.elem = phi ptr [ %sl.rec.elem.pval, %sl.rec.elem.pbb ], [ %sl.rec.elem.ngep, %sl.rec.elem.nbb ]
  store i64 %loop.rel.i513, ptr %var._i514, align 8
  store ptr %sl.rec.elem, ptr %var._515, align 8
  store ptr %sl.rec.elem, ptr %var.p, align 8
  store i64 %loop.rel.i513, ptr %var.i508, align 8
  %var.load516 = load i64, ptr %var.i508, align 8
  %cmptmp517 = icmp sgt i64 %var.load516, 0
  br i1 %cmptmp517, label %choice.then518, label %choice.exit519

choice.then518:                                   ; preds = %sl.rec.elem.dbb
  %b.load520 = load ptr, ptr %var.b, align 8
  %app.str.len521 = load i64, ptr @str.39.struct, align 8
  %app.str.len522 = and i64 %app.str.len521, 281474976710655
  %str.tag523 = lshr i64 %app.str.len521, 48
  %str.immortal524 = icmp eq i64 %str.tag523, 0
  br i1 %str.immortal524, label %str_ok526, label %str_gen_check525

choice.exit519:                                   ; preds = %b.grow_done542, %sl.rec.elem.dbb
  %var.load568 = load ptr, ptr %var.b, align 8
  %var.load569 = load i64, ptr %var.depth, align 8
  %addtmp570 = add i64 %var.load569, 1
  %var.load571 = load i64, ptr %var.indent, align 8
  %multmp572 = mul i64 %addtmp570, %var.load571
  call void @"json::#append_indent"(ptr %var.load568, i64 %multmp572)
  %var.load573 = load ptr, ptr %var.b, align 8
  %var.load574 = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load574, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  call void @"json::escape_string_into"(ptr %var.load573, ptr %fld.load)
  %b.load575 = load ptr, ptr %var.b, align 8
  %app.str.len576 = load i64, ptr @str.42.struct, align 8
  %app.str.len577 = and i64 %app.str.len576, 281474976710655
  %str.tag578 = lshr i64 %app.str.len576, 48
  %str.immortal579 = icmp eq i64 %str.tag578, 0
  br i1 %str.immortal579, label %str_ok581, label %str_gen_check580

str_gen_check525:                                 ; preds = %choice.then518
  %arena.cur528 = call ptr @dva_arena_current()
  %tag.valid529 = call i1 @dva_arena_validate_tag(ptr %arena.cur528, i64 %str.tag523)
  br i1 %tag.valid529, label %str_ok526, label %str_stale527

str_ok526:                                        ; preds = %str_stale527, %str_gen_check525, %choice.then518
  %b.app.cur.len530 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load520, i32 0, i32 0
  %b.app.cur.len531 = load i64, ptr %b.app.cur.len530, align 8
  %b.app.new.len532 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len531, i64 %app.str.len522)
  %sum533 = extractvalue { i64, i1 } %b.app.new.len532, 0
  %ovf534 = extractvalue { i64, i1 } %b.app.new.len532, 1
  br i1 %ovf534, label %str_overflow_abort536, label %b.app.new.len535

str_stale527:                                     ; preds = %str_gen_check525
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok526

b.app.new.len535:                                 ; preds = %str_overflow_abort536, %str_ok526
  %b.cap537 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load520, i32 0, i32 2
  %b.cap538 = load i64, ptr %b.cap537, align 8
  %b.need.grow539 = icmp slt i64 %b.cap538, %sum533
  br i1 %b.need.grow539, label %b.grow2540, label %b.nogrow2541

str_overflow_abort536:                            ; preds = %str_ok526
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len535

b.grow2540:                                       ; preds = %b.app.new.len535
  %b.cap2543 = mul i64 %b.cap538, 2
  %b.cap.small544 = icmp slt i64 %b.cap2543, 16
  %b.cap.grow545 = select i1 %b.cap.small544, i64 16, i64 %b.cap2543
  %b.cap.need546 = icmp slt i64 %b.cap.grow545, %sum533
  %b.new.cap547 = select i1 %b.cap.need546, i64 %sum533, i64 %b.cap.grow545
  %b.cur.len2548 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load520, i32 0, i32 0
  %b.cur.len2549 = load i64, ptr %b.cur.len2548, align 8
  %b.cur.data2550 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load520, i32 0, i32 1
  %b.cur.data2551 = load ptr, ptr %b.cur.data2550, align 8
  %b.new.buf.len2552 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap547, i64 1)
  %sum553 = extractvalue { i64, i1 } %b.new.buf.len2552, 0
  %ovf554 = extractvalue { i64, i1 } %b.new.buf.len2552, 1
  br i1 %ovf554, label %str_overflow_abort556, label %b.new.buf.len2555

b.nogrow2541:                                     ; preds = %b.app.new.len535
  br label %b.grow_done542

b.grow_done542:                                   ; preds = %b.nogrow2541, %b.new.buf.len2555
  %app.str.data562 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.39.struct, i32 0, i32 1), align 8
  %b.app.data563 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load520, i32 0, i32 1
  %b.app.data564 = load ptr, ptr %b.app.data563, align 8
  %b.app.dst565 = getelementptr i8, ptr %b.app.data564, i64 %b.app.cur.len531
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst565, ptr align 1 %app.str.data562, i64 %app.str.len522, i1 false)
  %b.app.nul566 = getelementptr i8, ptr %b.app.data564, i64 %sum533
  store i8 0, ptr %b.app.nul566, align 1
  %b.len.gep567 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load520, i32 0, i32 0
  store i64 %sum533, ptr %b.len.gep567, align 8
  br label %choice.exit519

b.new.buf.len2555:                                ; preds = %str_overflow_abort556, %b.grow2540
  %arena.cur557 = call ptr @dva_arena_current()
  %b.new.buf2558 = call ptr @dva_arena_alloc(ptr %arena.cur557, i64 %sum553)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2558, ptr align 1 %b.cur.data2551, i64 %b.cur.len2549, i1 false)
  %b.grow2.nul559 = getelementptr i8, ptr %b.new.buf2558, i64 %b.cur.len2549
  store i8 0, ptr %b.grow2.nul559, align 1
  %b.new.data2.gep560 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load520, i32 0, i32 1
  store ptr %b.new.buf2558, ptr %b.new.data2.gep560, align 8
  %b.new.cap2.gep561 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load520, i32 0, i32 2
  store i64 %b.new.cap547, ptr %b.new.cap2.gep561, align 8
  br label %b.grow_done542

str_overflow_abort556:                            ; preds = %b.grow2540
  %34 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2555

str_gen_check580:                                 ; preds = %choice.exit519
  %arena.cur583 = call ptr @dva_arena_current()
  %tag.valid584 = call i1 @dva_arena_validate_tag(ptr %arena.cur583, i64 %str.tag578)
  br i1 %tag.valid584, label %str_ok581, label %str_stale582

str_ok581:                                        ; preds = %str_stale582, %str_gen_check580, %choice.exit519
  %b.app.cur.len585 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load575, i32 0, i32 0
  %b.app.cur.len586 = load i64, ptr %b.app.cur.len585, align 8
  %b.app.new.len587 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len586, i64 %app.str.len577)
  %sum588 = extractvalue { i64, i1 } %b.app.new.len587, 0
  %ovf589 = extractvalue { i64, i1 } %b.app.new.len587, 1
  br i1 %ovf589, label %str_overflow_abort591, label %b.app.new.len590

str_stale582:                                     ; preds = %str_gen_check580
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok581

b.app.new.len590:                                 ; preds = %str_overflow_abort591, %str_ok581
  %b.cap592 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load575, i32 0, i32 2
  %b.cap593 = load i64, ptr %b.cap592, align 8
  %b.need.grow594 = icmp slt i64 %b.cap593, %sum588
  br i1 %b.need.grow594, label %b.grow2595, label %b.nogrow2596

str_overflow_abort591:                            ; preds = %str_ok581
  %36 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len590

b.grow2595:                                       ; preds = %b.app.new.len590
  %b.cap2598 = mul i64 %b.cap593, 2
  %b.cap.small599 = icmp slt i64 %b.cap2598, 16
  %b.cap.grow600 = select i1 %b.cap.small599, i64 16, i64 %b.cap2598
  %b.cap.need601 = icmp slt i64 %b.cap.grow600, %sum588
  %b.new.cap602 = select i1 %b.cap.need601, i64 %sum588, i64 %b.cap.grow600
  %b.cur.len2603 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load575, i32 0, i32 0
  %b.cur.len2604 = load i64, ptr %b.cur.len2603, align 8
  %b.cur.data2605 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load575, i32 0, i32 1
  %b.cur.data2606 = load ptr, ptr %b.cur.data2605, align 8
  %b.new.buf.len2607 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap602, i64 1)
  %sum608 = extractvalue { i64, i1 } %b.new.buf.len2607, 0
  %ovf609 = extractvalue { i64, i1 } %b.new.buf.len2607, 1
  br i1 %ovf609, label %str_overflow_abort611, label %b.new.buf.len2610

b.nogrow2596:                                     ; preds = %b.app.new.len590
  br label %b.grow_done597

b.grow_done597:                                   ; preds = %b.nogrow2596, %b.new.buf.len2610
  %app.str.data617 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.42.struct, i32 0, i32 1), align 8
  %b.app.data618 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load575, i32 0, i32 1
  %b.app.data619 = load ptr, ptr %b.app.data618, align 8
  %b.app.dst620 = getelementptr i8, ptr %b.app.data619, i64 %b.app.cur.len586
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst620, ptr align 1 %app.str.data617, i64 %app.str.len577, i1 false)
  %b.app.nul621 = getelementptr i8, ptr %b.app.data619, i64 %sum588
  store i8 0, ptr %b.app.nul621, align 1
  %b.len.gep622 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load575, i32 0, i32 0
  store i64 %sum588, ptr %b.len.gep622, align 8
  %var.load623 = load ptr, ptr %var.b, align 8
  %var.load624 = load ptr, ptr %var.p, align 8
  %fld.gep625 = getelementptr inbounds { ptr, ptr }, ptr %var.load624, i32 0, i32 1
  %fld.load626 = load ptr, ptr %fld.gep625, align 8
  %var.load627 = load i64, ptr %var.indent, align 8
  %var.load628 = load i64, ptr %var.depth, align 8
  %addtmp629 = add i64 %var.load628, 1
  call void @"json::#stringify_pretty_into"(ptr %var.load623, ptr %fld.load626, i64 %var.load627, i64 %addtmp629)
  br label %loop.latch.134

b.new.buf.len2610:                                ; preds = %str_overflow_abort611, %b.grow2595
  %arena.cur612 = call ptr @dva_arena_current()
  %b.new.buf2613 = call ptr @dva_arena_alloc(ptr %arena.cur612, i64 %sum608)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2613, ptr align 1 %b.cur.data2606, i64 %b.cur.len2604, i1 false)
  %b.grow2.nul614 = getelementptr i8, ptr %b.new.buf2613, i64 %b.cur.len2604
  store i8 0, ptr %b.grow2.nul614, align 1
  %b.new.data2.gep615 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load575, i32 0, i32 1
  store ptr %b.new.buf2613, ptr %b.new.data2.gep615, align 8
  %b.new.cap2.gep616 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load575, i32 0, i32 2
  store i64 %b.new.cap602, ptr %b.new.cap2.gep616, align 8
  br label %b.grow_done597

str_overflow_abort611:                            ; preds = %b.grow2595
  %37 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2610

b.rn.new.len638:                                  ; preds = %str_overflow_abort639, %loop.exit.134
  %b.cap640 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load632, i32 0, i32 2
  %b.cap641 = load i64, ptr %b.cap640, align 8
  %b.need.grow642 = icmp slt i64 %b.cap641, %sum636
  br i1 %b.need.grow642, label %b.grow2643, label %b.nogrow2644

str_overflow_abort639:                            ; preds = %loop.exit.134
  %38 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len638

b.grow2643:                                       ; preds = %b.rn.new.len638
  %b.cap2646 = mul i64 %b.cap641, 2
  %b.cap.small647 = icmp slt i64 %b.cap2646, 16
  %b.cap.grow648 = select i1 %b.cap.small647, i64 16, i64 %b.cap2646
  %b.cap.need649 = icmp slt i64 %b.cap.grow648, %sum636
  %b.new.cap650 = select i1 %b.cap.need649, i64 %sum636, i64 %b.cap.grow648
  %b.cur.len2651 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load632, i32 0, i32 0
  %b.cur.len2652 = load i64, ptr %b.cur.len2651, align 8
  %b.cur.data2653 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load632, i32 0, i32 1
  %b.cur.data2654 = load ptr, ptr %b.cur.data2653, align 8
  %b.new.buf.len2655 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap650, i64 1)
  %sum656 = extractvalue { i64, i1 } %b.new.buf.len2655, 0
  %ovf657 = extractvalue { i64, i1 } %b.new.buf.len2655, 1
  br i1 %ovf657, label %str_overflow_abort659, label %b.new.buf.len2658

b.nogrow2644:                                     ; preds = %b.rn.new.len638
  br label %b.grow_done645

b.grow_done645:                                   ; preds = %b.nogrow2644, %b.new.buf.len2658
  %b.rn.data665 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load632, i32 0, i32 1
  %b.rn.data666 = load ptr, ptr %b.rn.data665, align 8
  %b.rn.dst667 = getelementptr i8, ptr %b.rn.data666, i64 %b.rn.cur.len634
  br i1 true, label %br.b1.135, label %br.c2.135

b.new.buf.len2658:                                ; preds = %str_overflow_abort659, %b.grow2643
  %arena.cur660 = call ptr @dva_arena_current()
  %b.new.buf2661 = call ptr @dva_arena_alloc(ptr %arena.cur660, i64 %sum656)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2661, ptr align 1 %b.cur.data2654, i64 %b.cur.len2652, i1 false)
  %b.grow2.nul662 = getelementptr i8, ptr %b.new.buf2661, i64 %b.cur.len2652
  store i8 0, ptr %b.grow2.nul662, align 1
  %b.new.data2.gep663 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load632, i32 0, i32 1
  store ptr %b.new.buf2661, ptr %b.new.data2.gep663, align 8
  %b.new.cap2.gep664 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load632, i32 0, i32 2
  store i64 %b.new.cap650, ptr %b.new.cap2.gep664, align 8
  br label %b.grow_done645

str_overflow_abort659:                            ; preds = %b.grow2643
  %39 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2658

br.b1.135:                                        ; preds = %b.grow_done645
  store i8 10, ptr %b.rn.dst667, align 1
  br label %br.done.135

br.c2.135:                                        ; preds = %b.grow_done645
  br i1 true, label %br.b2.135, label %br.c3.135

br.b2.135:                                        ; preds = %br.c2.135
  store i8 -64, ptr %b.rn.dst667, align 1
  %br.dst1668 = getelementptr i8, ptr %b.rn.dst667, i64 1
  store i8 -118, ptr %br.dst1668, align 1
  br label %br.done.135

br.c3.135:                                        ; preds = %br.c2.135
  br i1 true, label %br.b3.135, label %br.b4.135

br.b3.135:                                        ; preds = %br.c3.135
  store i8 -32, ptr %b.rn.dst667, align 1
  %br.dst1.3669 = getelementptr i8, ptr %b.rn.dst667, i64 1
  store i8 -128, ptr %br.dst1.3669, align 1
  %br.dst2.3670 = getelementptr i8, ptr %b.rn.dst667, i64 2
  store i8 -118, ptr %br.dst2.3670, align 1
  br label %br.done.135

br.b4.135:                                        ; preds = %br.c3.135
  store i8 -16, ptr %b.rn.dst667, align 1
  %br.dst1.4671 = getelementptr i8, ptr %b.rn.dst667, i64 1
  store i8 -128, ptr %br.dst1.4671, align 1
  %br.dst2.4672 = getelementptr i8, ptr %b.rn.dst667, i64 2
  store i8 -128, ptr %br.dst2.4672, align 1
  %br.dst3.4673 = getelementptr i8, ptr %b.rn.dst667, i64 3
  store i8 -118, ptr %br.dst3.4673, align 1
  br label %br.done.135

br.done.135:                                      ; preds = %br.b4.135, %br.b3.135, %br.b2.135, %br.b1.135
  %br.nul674 = getelementptr i8, ptr %b.rn.data666, i64 %sum636
  store i8 0, ptr %br.nul674, align 1
  %b.len.gep675 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load632, i32 0, i32 0
  store i64 %sum636, ptr %b.len.gep675, align 8
  %var.load676 = load ptr, ptr %var.b, align 8
  %var.load677 = load i64, ptr %var.depth, align 8
  %var.load678 = load i64, ptr %var.indent, align 8
  %multmp679 = mul i64 %var.load677, %var.load678
  call void @"json::#append_indent"(ptr %var.load676, i64 %multmp679)
  %b.load680 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len681 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load680, i32 0, i32 0
  %b.rn.cur.len682 = load i64, ptr %b.rn.cur.len681, align 8
  %b.rn.new.len683 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len682, i64 1)
  %sum684 = extractvalue { i64, i1 } %b.rn.new.len683, 0
  %ovf685 = extractvalue { i64, i1 } %b.rn.new.len683, 1
  br i1 %ovf685, label %str_overflow_abort687, label %b.rn.new.len686

b.rn.new.len686:                                  ; preds = %str_overflow_abort687, %br.done.135
  %b.cap688 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load680, i32 0, i32 2
  %b.cap689 = load i64, ptr %b.cap688, align 8
  %b.need.grow690 = icmp slt i64 %b.cap689, %sum684
  br i1 %b.need.grow690, label %b.grow2691, label %b.nogrow2692

str_overflow_abort687:                            ; preds = %br.done.135
  %40 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len686

b.grow2691:                                       ; preds = %b.rn.new.len686
  %b.cap2694 = mul i64 %b.cap689, 2
  %b.cap.small695 = icmp slt i64 %b.cap2694, 16
  %b.cap.grow696 = select i1 %b.cap.small695, i64 16, i64 %b.cap2694
  %b.cap.need697 = icmp slt i64 %b.cap.grow696, %sum684
  %b.new.cap698 = select i1 %b.cap.need697, i64 %sum684, i64 %b.cap.grow696
  %b.cur.len2699 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load680, i32 0, i32 0
  %b.cur.len2700 = load i64, ptr %b.cur.len2699, align 8
  %b.cur.data2701 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load680, i32 0, i32 1
  %b.cur.data2702 = load ptr, ptr %b.cur.data2701, align 8
  %b.new.buf.len2703 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap698, i64 1)
  %sum704 = extractvalue { i64, i1 } %b.new.buf.len2703, 0
  %ovf705 = extractvalue { i64, i1 } %b.new.buf.len2703, 1
  br i1 %ovf705, label %str_overflow_abort707, label %b.new.buf.len2706

b.nogrow2692:                                     ; preds = %b.rn.new.len686
  br label %b.grow_done693

b.grow_done693:                                   ; preds = %b.nogrow2692, %b.new.buf.len2706
  %b.rn.data713 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load680, i32 0, i32 1
  %b.rn.data714 = load ptr, ptr %b.rn.data713, align 8
  %b.rn.dst715 = getelementptr i8, ptr %b.rn.data714, i64 %b.rn.cur.len682
  br i1 true, label %br.b1.136, label %br.c2.136

b.new.buf.len2706:                                ; preds = %str_overflow_abort707, %b.grow2691
  %arena.cur708 = call ptr @dva_arena_current()
  %b.new.buf2709 = call ptr @dva_arena_alloc(ptr %arena.cur708, i64 %sum704)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2709, ptr align 1 %b.cur.data2702, i64 %b.cur.len2700, i1 false)
  %b.grow2.nul710 = getelementptr i8, ptr %b.new.buf2709, i64 %b.cur.len2700
  store i8 0, ptr %b.grow2.nul710, align 1
  %b.new.data2.gep711 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load680, i32 0, i32 1
  store ptr %b.new.buf2709, ptr %b.new.data2.gep711, align 8
  %b.new.cap2.gep712 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load680, i32 0, i32 2
  store i64 %b.new.cap698, ptr %b.new.cap2.gep712, align 8
  br label %b.grow_done693

str_overflow_abort707:                            ; preds = %b.grow2691
  %41 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2706

br.b1.136:                                        ; preds = %b.grow_done693
  store i8 125, ptr %b.rn.dst715, align 1
  br label %br.done.136

br.c2.136:                                        ; preds = %b.grow_done693
  br i1 true, label %br.b2.136, label %br.c3.136

br.b2.136:                                        ; preds = %br.c2.136
  store i8 -63, ptr %b.rn.dst715, align 1
  %br.dst1716 = getelementptr i8, ptr %b.rn.dst715, i64 1
  store i8 -67, ptr %br.dst1716, align 1
  br label %br.done.136

br.c3.136:                                        ; preds = %br.c2.136
  br i1 true, label %br.b3.136, label %br.b4.136

br.b3.136:                                        ; preds = %br.c3.136
  store i8 -32, ptr %b.rn.dst715, align 1
  %br.dst1.3717 = getelementptr i8, ptr %b.rn.dst715, i64 1
  store i8 -127, ptr %br.dst1.3717, align 1
  %br.dst2.3718 = getelementptr i8, ptr %b.rn.dst715, i64 2
  store i8 -67, ptr %br.dst2.3718, align 1
  br label %br.done.136

br.b4.136:                                        ; preds = %br.c3.136
  store i8 -16, ptr %b.rn.dst715, align 1
  %br.dst1.4719 = getelementptr i8, ptr %b.rn.dst715, i64 1
  store i8 -128, ptr %br.dst1.4719, align 1
  %br.dst2.4720 = getelementptr i8, ptr %b.rn.dst715, i64 2
  store i8 -127, ptr %br.dst2.4720, align 1
  %br.dst3.4721 = getelementptr i8, ptr %b.rn.dst715, i64 3
  store i8 -67, ptr %br.dst3.4721, align 1
  br label %br.done.136

br.done.136:                                      ; preds = %br.b4.136, %br.b3.136, %br.b2.136, %br.b1.136
  %br.nul722 = getelementptr i8, ptr %b.rn.data714, i64 %sum684
  store i8 0, ptr %br.nul722, align 1
  %b.len.gep723 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load680, i32 0, i32 0
  store i64 %sum684, ptr %b.len.gep723, align 8
  br label %choice.exit405
}

define ptr @"json::stringify"(ptr %0) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 128, i64 1)
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
  store i64 128, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %var.load3 = load ptr, ptr %var.val, align 8
  call void @"json::#stringify_into"(ptr %var.load, ptr %var.load3)
  %var.load4 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 0
  %b.freeze.len5 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 1
  %b.freeze.data6 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

b.freeze.check:                                   ; preds = %b.buf.len1
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data6, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data6, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data6, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len5, 1
  %arena.cur7 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data6, i64 %b.freeze.len5, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len5
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.buf.len1
  %b.freeze.data8 = phi ptr [ %b.freeze.data6, %b.buf.len1 ], [ %b.freeze.data6, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur9 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len5, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data8, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define ptr @"json::stringify_pretty"(ptr %0, i64 %1) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var.indent = alloca i64, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  store i64 %1, ptr %var.indent, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 256, i64 1)
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
  store i64 256, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %var.load3 = load ptr, ptr %var.val, align 8
  %var.load4 = load i64, ptr %var.indent, align 8
  call void @"json::#stringify_pretty_into"(ptr %var.load, ptr %var.load3, i64 %var.load4, i64 0)
  %var.load5 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load5, i32 0, i32 0
  %b.freeze.len6 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load5, i32 0, i32 1
  %b.freeze.data7 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_overflow_abort:                               ; preds = %entry
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

b.freeze.check:                                   ; preds = %b.buf.len1
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data7, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data7, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data7, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len6, 1
  %arena.cur8 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data7, i64 %b.freeze.len6, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len6
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.buf.len1
  %b.freeze.data9 = phi ptr [ %b.freeze.data7, %b.buf.len1 ], [ %b.freeze.data7, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur10 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len6, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data9, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load5, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load5, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load5, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define { i1, i64 } @"json::get"(ptr %0, ptr %1) #1 {
entry:
  %var._2 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.137 = alloca i64, align 8
  %loop.idx.137 = alloca i64, align 8
  %"var.hit'" = alloca { i1, i64 }, align 8
  %var.pairs = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.key = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  store ptr %1, ptr %var.key, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 5
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %loop.exit.137
  %choice.res = phi { i1, i64 } [ %var.load22, %loop.exit.137 ], [ zeroinitializer, %choice.next ]
  ret { i1, i64 } %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.pairs, align 8
  store { i1, i64 } zeroinitializer, ptr %"var.hit'", align 8
  %var.load1 = load ptr, ptr %var.pairs, align 8
  %sl.len.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %sl.len.raw = load i64, ptr %sl.len.gep, align 8
  %sl.len = and i64 %sl.len.raw, 4611686018427387903
  %sl.data.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %sl.data = load ptr, ptr %sl.data.gep, align 8
  store i64 0, ptr %loop.idx.137, align 8
  %cycle.prev.u = load ptr, ptr %var._, align 8
  br label %loop.header.137

choice.next:                                      ; preds = %entry
  br label %choice.exit

loop.header.137:                                  ; preds = %loop.latch.137, %choice.case
  %counter.load = load i64, ptr %loop.idx.137, align 8
  %loop.cond = icmp slt i64 %counter.load, %sl.len
  br i1 %loop.cond, label %loop.body.137, label %loop.exit.nat.137

loop.body.137:                                    ; preds = %loop.header.137
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.137, align 8
  %sl.rec.elem.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %sl.rec.elem.isp.bit.raw = load i64, ptr %sl.rec.elem.isp.bit.gep, align 8
  %sl.rec.elem.isp.bit = and i64 %sl.rec.elem.isp.bit.raw, 4611686018427387904
  %sl.rec.elem.isp = icmp ne i64 %sl.rec.elem.isp.bit, 0
  br i1 %sl.rec.elem.isp, label %sl.rec.elem.pbb, label %sl.rec.elem.nbb

loop.exit.nat.137:                                ; preds = %loop.header.137
  br label %loop.exit.137

loop.latch.137:                                   ; preds = %choice.exit18
  %step.val = load i64, ptr %loop.step.137, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.137, align 8
  br label %loop.header.137

loop.exit.137:                                    ; preds = %choice.then, %loop.exit.nat.137
  store ptr %cycle.prev.u, ptr %var._, align 8
  %var.load22 = load { i1, i64 }, ptr %"var.hit'", align 8
  br label %choice.exit

sl.rec.elem.pbb:                                  ; preds = %loop.body.137
  %sl.rec.elem.pgep = getelementptr i64, ptr %sl.data, i64 %counter.load
  %sl.rec.elem.pval = load ptr, ptr %sl.rec.elem.pgep, align 8
  br label %sl.rec.elem.dbb

sl.rec.elem.nbb:                                  ; preds = %loop.body.137
  %sl.rec.elem.ngep = getelementptr { ptr, ptr }, ptr %sl.data, i64 %counter.load
  br label %sl.rec.elem.dbb

sl.rec.elem.dbb:                                  ; preds = %sl.rec.elem.nbb, %sl.rec.elem.pbb
  %sl.rec.elem = phi ptr [ %sl.rec.elem.pval, %sl.rec.elem.pbb ], [ %sl.rec.elem.ngep, %sl.rec.elem.nbb ]
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %sl.rec.elem, ptr %var._2, align 8
  store ptr %sl.rec.elem, ptr %var.p, align 8
  %var.load3 = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load3, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load4 = load ptr, ptr %var.key, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len5 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len6 = and i64 %eq.lhs.len5, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len5, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %sl.rec.elem.dbb
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %sl.rec.elem.dbb
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.rhs.len7 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len8 = and i64 %eq.rhs.len7, 281474976710655
  %str.tag9 = lshr i64 %eq.rhs.len7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check11:                                  ; preds = %str_ok
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid15 = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %str.tag9)
  br i1 %tag.valid15, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len6, %eq.rhs.len8
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale13:                                      ; preds = %str_gen_check11
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

str.eq.then:                                      ; preds = %str_ok12
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data16 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.rhs.data17 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data16, ptr %eq.rhs.data17, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok12
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.exit18

choice.then:                                      ; preds = %str.eq.merge
  %var.load19 = load ptr, ptr %var.p, align 8
  %fld.gep20 = getelementptr inbounds { ptr, ptr }, ptr %var.load19, i32 0, i32 1
  %fld.load21 = load ptr, ptr %fld.gep20, align 8
  %p.to.i64 = ptrtoint ptr %fld.load21 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  store { i1, i64 } %ram.pay, ptr %"var.hit'", align 8
  br label %loop.exit.137

choice.exit18:                                    ; preds = %str.eq.merge
  br label %loop.latch.137
}

define i1 @"json::has"(ptr %0, ptr %1) #1 {
entry:
  %var.key = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  store ptr %1, ptr %var.key, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %var.load1 = load ptr, ptr %var.key, align 8
  %call.res = call { i1, i64 } @"json::get"(ptr %var.load, ptr %var.load1)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  ret i1 %ram.tag
}

define ptr @"json::get_str"(ptr %0, ptr %1) #1 {
entry:
  %var.s = alloca ptr, align 8
  %var._4 = alloca ptr, align 8
  %var.fval = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.key = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  store ptr %1, ptr %var.key, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %var.load1 = load ptr, ptr %var.key, align 8
  %call.res = call { i1, i64 } @"json::get"(ptr %var.load, ptr %var.load1)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.fval, align 8
  %var.load2 = load ptr, ptr %var.fval, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit3
  %choice.res6 = phi ptr [ %choice.res, %choice.exit3 ], [ null, %choice.else ]
  ret ptr %choice.res6

choice.exit3:                                     ; preds = %choice.next, %choice.case
  %choice.res = phi ptr [ %var.load5, %choice.case ], [ null, %choice.next ]
  br label %choice.exit

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._4, align 8
  store ptr %payload.ptr, ptr %var.s, align 8
  %var.load5 = load ptr, ptr %var.s, align 8
  br label %choice.exit3

choice.next:                                      ; preds = %choice.then
  br label %choice.exit3
}

define { i1, i64 } @"json::get_int"(ptr %0, ptr %1) #1 {
entry:
  %var.iv = alloca i64, align 8
  %var.n = alloca double, align 8
  %var._4 = alloca double, align 8
  %var.fval = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.key = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  store ptr %1, ptr %var.key, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %var.load1 = load ptr, ptr %var.key, align 8
  %call.res = call { i1, i64 } @"json::get"(ptr %var.load, ptr %var.load1)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.fval, align 8
  %var.load2 = load ptr, ptr %var.fval, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 1
  br i1 %tag.match, label %choice.case, label %choice.next

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit3
  %choice.res14 = phi { i1, i64 } [ %choice.res13, %choice.exit3 ], [ zeroinitializer, %choice.else ]
  ret { i1, i64 } %choice.res14

choice.exit3:                                     ; preds = %choice.next, %choice.exit10
  %choice.res13 = phi { i1, i64 } [ %choice.res, %choice.exit10 ], [ zeroinitializer, %choice.next ]
  br label %choice.exit

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.float.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.float.null, label %pay.float.nullbb, label %pay.float.load

choice.next:                                      ; preds = %choice.then
  br label %choice.exit3

pay.float.load:                                   ; preds = %choice.case
  %pay.float.val = load double, ptr %payload.ptr, align 8
  br label %pay.float.merge

pay.float.nullbb:                                 ; preds = %choice.case
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %pay.float.nullbb, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %pay.float.nullbb ]
  store double %pay.float.phi, ptr %var._4, align 8
  store double %pay.float.phi, ptr %var.n, align 8
  %var.load5 = load double, ptr %var.n, align 8
  %cast.fptosi = fptosi double %var.load5 to i64
  store i64 %cast.fptosi, ptr %var.iv, align 8
  %var.load6 = load i64, ptr %var.iv, align 8
  %cast.sitofp = sitofp i64 %var.load6 to double
  %var.load7 = load double, ptr %var.n, align 8
  %fcmptmp = fcmp oeq double %cast.sitofp, %var.load7
  br i1 %fcmptmp, label %choice.then8, label %choice.else9

choice.then8:                                     ; preds = %pay.float.merge
  %var.load11 = load i64, ptr %var.iv, align 8
  %ram.pay12 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load11, 1
  br label %choice.exit10

choice.else9:                                     ; preds = %pay.float.merge
  br label %choice.exit10

choice.exit10:                                    ; preds = %choice.else9, %choice.then8
  %choice.res = phi { i1, i64 } [ %ram.pay12, %choice.then8 ], [ zeroinitializer, %choice.else9 ]
  br label %choice.exit3
}

define { i1, i64 } @"json::get_float"(ptr %0, ptr %1) #1 {
entry:
  %var.n = alloca double, align 8
  %var._4 = alloca double, align 8
  %var.fval = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.key = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  store ptr %1, ptr %var.key, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %var.load1 = load ptr, ptr %var.key, align 8
  %call.res = call { i1, i64 } @"json::get"(ptr %var.load, ptr %var.load1)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.fval, align 8
  %var.load2 = load ptr, ptr %var.fval, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 1
  br i1 %tag.match, label %choice.case, label %choice.next

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit3
  %choice.res7 = phi { i1, i64 } [ %choice.res, %choice.exit3 ], [ zeroinitializer, %choice.else ]
  ret { i1, i64 } %choice.res7

choice.exit3:                                     ; preds = %choice.next, %pay.float.merge
  %choice.res = phi { i1, i64 } [ %ram.pay6, %pay.float.merge ], [ zeroinitializer, %choice.next ]
  br label %choice.exit

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.float.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.float.null, label %pay.float.nullbb, label %pay.float.load

choice.next:                                      ; preds = %choice.then
  br label %choice.exit3

pay.float.load:                                   ; preds = %choice.case
  %pay.float.val = load double, ptr %payload.ptr, align 8
  br label %pay.float.merge

pay.float.nullbb:                                 ; preds = %choice.case
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %pay.float.nullbb, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %pay.float.nullbb ]
  store double %pay.float.phi, ptr %var._4, align 8
  store double %pay.float.phi, ptr %var.n, align 8
  %var.load5 = load double, ptr %var.n, align 8
  %f.to.i64 = bitcast double %var.load5 to i64
  %ram.pay6 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %f.to.i64, 1
  br label %choice.exit3
}

define { i1, i64 } @"json::get_bool"(ptr %0, ptr %1) #1 {
entry:
  %var.flag = alloca i1, align 1
  %var._4 = alloca i1, align 1
  %var.fval = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.key = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  store ptr %1, ptr %var.key, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %var.load1 = load ptr, ptr %var.key, align 8
  %call.res = call { i1, i64 } @"json::get"(ptr %var.load, ptr %var.load1)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.fval, align 8
  %var.load2 = load ptr, ptr %var.fval, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 2
  br i1 %tag.match, label %choice.case, label %choice.next

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit3
  %choice.res7 = phi { i1, i64 } [ %choice.res, %choice.exit3 ], [ zeroinitializer, %choice.else ]
  ret { i1, i64 } %choice.res7

choice.exit3:                                     ; preds = %choice.next, %pay.int.merge
  %choice.res = phi { i1, i64 } [ %ram.pay6, %pay.int.merge ], [ zeroinitializer, %choice.next ]
  br label %choice.exit

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.int.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.int.null, label %pay.int.nullbb, label %pay.int.load

choice.next:                                      ; preds = %choice.then
  br label %choice.exit3

pay.int.load:                                     ; preds = %choice.case
  %pay.int.val = load i1, ptr %payload.ptr, align 1
  br label %pay.int.merge

pay.int.nullbb:                                   ; preds = %choice.case
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %pay.int.nullbb, %pay.int.load
  %pay.int.phi = phi i1 [ %pay.int.val, %pay.int.load ], [ false, %pay.int.nullbb ]
  store i1 %pay.int.phi, ptr %var._4, align 1
  store i1 %pay.int.phi, ptr %var.flag, align 1
  %var.load5 = load i1, ptr %var.flag, align 1
  %zext.to.i64 = zext i1 %var.load5 to i64
  %ram.pay6 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %zext.to.i64, 1
  br label %choice.exit3
}

define i1 @"json::is_array"(ptr %0) #1 {
entry:
  %var._ = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 4
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define i64 @"json::array_len"(ptr %0) #1 {
entry:
  %var.items = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 4
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i64 [ %slice.len, %choice.case ], [ 0, %choice.next ]
  ret i64 %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.items, align 8
  %var.load1 = load ptr, ptr %var.items, align 8
  %slice.len.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %slice.len.raw = load i64, ptr %slice.len.gep, align 8
  %slice.len = and i64 %slice.len.raw, 4611686018427387903
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define ptr @"json::array_at"(ptr %0, i64 %1) #1 {
entry:
  %var.items = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.idx = alloca i64, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  store i64 %1, ptr %var.idx, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 4
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi ptr [ %slice.elem.raw, %choice.case ], [ %enum.alloc, %choice.next ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.items, align 8
  %var.load1 = load ptr, ptr %var.items, align 8
  %var.load2 = load i64, ptr %var.idx, align 8
  %slice.data.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %slice.data = load ptr, ptr %slice.data.gep, align 8
  %sl.elem.gep.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %sl.elem.gep.isp.bit.raw = load i64, ptr %sl.elem.gep.isp.bit.gep, align 8
  %sl.elem.gep.isp.bit = and i64 %sl.elem.gep.isp.bit.raw, 4611686018427387904
  %sl.elem.gep.isp = icmp ne i64 %sl.elem.gep.isp.bit, 0
  %sl.elem.gep.pgep = getelementptr i64, ptr %slice.data, i64 %var.load2
  %sl.elem.gep.ngep = getelementptr ptr, ptr %slice.data, i64 %var.load2
  %sl.elem.gep = select i1 %sl.elem.gep.isp, ptr %sl.elem.gep.pgep, ptr %sl.elem.gep.ngep
  %slice.elem.raw = load ptr, ptr %sl.elem.gep, align 8
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep3 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 3, ptr %tag.gep3, align 8
  %pay.gep4 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep4, align 8
  br label %choice.exit
}

define i1 @"json::is_object"(ptr %0) #1 {
entry:
  %var._ = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 5
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define i64 @"json::object_len"(ptr %0) #1 {
entry:
  %var.pairs = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 5
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i64 [ %slice.len, %choice.case ], [ 0, %choice.next ]
  ret i64 %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.pairs, align 8
  %var.load1 = load ptr, ptr %var.pairs, align 8
  %slice.len.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %slice.len.raw = load i64, ptr %slice.len.gep, align 8
  %slice.len = and i64 %slice.len.raw, 4611686018427387903
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define ptr @"json::object_key_at"(ptr %0, i64 %1) #1 {
entry:
  %var.p = alloca ptr, align 8
  %var.pairs = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.idx = alloca i64, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  store i64 %1, ptr %var.idx, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 5
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %sl.rec.elem.dbb
  %choice.res = phi ptr [ %fld.load, %sl.rec.elem.dbb ], [ @str.43.struct, %choice.next ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.pairs, align 8
  %var.load1 = load ptr, ptr %var.pairs, align 8
  %var.load2 = load i64, ptr %var.idx, align 8
  %slice.data.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %slice.data = load ptr, ptr %slice.data.gep, align 8
  %sl.rec.elem.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %sl.rec.elem.isp.bit.raw = load i64, ptr %sl.rec.elem.isp.bit.gep, align 8
  %sl.rec.elem.isp.bit = and i64 %sl.rec.elem.isp.bit.raw, 4611686018427387904
  %sl.rec.elem.isp = icmp ne i64 %sl.rec.elem.isp.bit, 0
  br i1 %sl.rec.elem.isp, label %sl.rec.elem.pbb, label %sl.rec.elem.nbb

choice.next:                                      ; preds = %entry
  br label %choice.exit

sl.rec.elem.pbb:                                  ; preds = %choice.case
  %sl.rec.elem.pgep = getelementptr i64, ptr %slice.data, i64 %var.load2
  %sl.rec.elem.pval = load ptr, ptr %sl.rec.elem.pgep, align 8
  br label %sl.rec.elem.dbb

sl.rec.elem.nbb:                                  ; preds = %choice.case
  %sl.rec.elem.ngep = getelementptr { ptr, ptr }, ptr %slice.data, i64 %var.load2
  br label %sl.rec.elem.dbb

sl.rec.elem.dbb:                                  ; preds = %sl.rec.elem.nbb, %sl.rec.elem.pbb
  %sl.rec.elem = phi ptr [ %sl.rec.elem.pval, %sl.rec.elem.pbb ], [ %sl.rec.elem.ngep, %sl.rec.elem.nbb ]
  store ptr %sl.rec.elem, ptr %var.p, align 8
  %var.load3 = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load3, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  br label %choice.exit
}

define ptr @"json::object_val_at"(ptr %0, i64 %1) #1 {
entry:
  %var.p = alloca ptr, align 8
  %var.pairs = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.idx = alloca i64, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  store i64 %1, ptr %var.idx, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 5
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %sl.rec.elem.dbb
  %choice.res = phi ptr [ %fld.load, %sl.rec.elem.dbb ], [ %enum.alloc, %choice.next ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.pairs, align 8
  %var.load1 = load ptr, ptr %var.pairs, align 8
  %var.load2 = load i64, ptr %var.idx, align 8
  %slice.data.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %slice.data = load ptr, ptr %slice.data.gep, align 8
  %sl.rec.elem.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %sl.rec.elem.isp.bit.raw = load i64, ptr %sl.rec.elem.isp.bit.gep, align 8
  %sl.rec.elem.isp.bit = and i64 %sl.rec.elem.isp.bit.raw, 4611686018427387904
  %sl.rec.elem.isp = icmp ne i64 %sl.rec.elem.isp.bit, 0
  br i1 %sl.rec.elem.isp, label %sl.rec.elem.pbb, label %sl.rec.elem.nbb

choice.next:                                      ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep4 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 3, ptr %tag.gep4, align 8
  %pay.gep5 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep5, align 8
  br label %choice.exit

sl.rec.elem.pbb:                                  ; preds = %choice.case
  %sl.rec.elem.pgep = getelementptr i64, ptr %slice.data, i64 %var.load2
  %sl.rec.elem.pval = load ptr, ptr %sl.rec.elem.pgep, align 8
  br label %sl.rec.elem.dbb

sl.rec.elem.nbb:                                  ; preds = %choice.case
  %sl.rec.elem.ngep = getelementptr { ptr, ptr }, ptr %slice.data, i64 %var.load2
  br label %sl.rec.elem.dbb

sl.rec.elem.dbb:                                  ; preds = %sl.rec.elem.nbb, %sl.rec.elem.pbb
  %sl.rec.elem = phi ptr [ %sl.rec.elem.pval, %sl.rec.elem.pbb ], [ %sl.rec.elem.ngep, %sl.rec.elem.nbb ]
  store ptr %sl.rec.elem, ptr %var.p, align 8
  %var.load3 = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load3, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  br label %choice.exit
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
