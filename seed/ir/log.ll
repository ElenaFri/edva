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
@"var.log::#min_level" = global i64 1
@"var.log::#out_fd" = global i64 2
@"var.log::#owned_fd" = global i64 -1
@"var.log::#show_ts" = global i1 true
@"var.log::#ts_utc" = global i1 false
@"var.log::#ts_basic" = global i1 false
@"var.log::#color_mode" = global i64 0
@str.0 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.0 }
@"var.log::#prefix_tag" = global ptr null
@"var.log::#O_LOG_APPEND" = global i64 1089
@str.1 = internal unnamed_addr constant [6 x i8] c"DEBUG\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.1 }
@str.2 = internal unnamed_addr constant [6 x i8] c"\1B[36m\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.2 }
@str.3 = internal unnamed_addr constant [5 x i8] c"INFO\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.3 }
@str.4 = internal unnamed_addr constant [6 x i8] c"\1B[32m\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.4 }
@str.5 = internal unnamed_addr constant [5 x i8] c"WARN\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.5 }
@str.6 = internal unnamed_addr constant [6 x i8] c"\1B[33m\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.6 }
@str.7 = internal unnamed_addr constant [6 x i8] c"ERROR\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.7 }
@str.8 = internal unnamed_addr constant [6 x i8] c"\1B[31m\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.8 }
@str.9 = internal unnamed_addr constant [7 x i8] c"SILENT\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.9 }
@"var.log::#LEVELS" = global ptr null
@clo.const = internal constant { ptr, ptr } { ptr @"log::#level_meta", ptr null }
@"var.log::#level_meta" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"log::#rank_to_level", ptr null }
@"var.log::#rank_to_level" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@clo.const.2 = internal constant { ptr, ptr } { ptr @"log::#env_val", ptr null }
@"var.log::#env_val" = global ptr null
@str.10 = internal unnamed_addr constant [9 x i8] c"NO_COLOR\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.10 }
@str.11 = internal unnamed_addr constant [12 x i8] c"FORCE_COLOR\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 11, ptr @str.11 }
@str.12 = internal unnamed_addr constant [2 x i8] c"0\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.12 }
@str.13 = internal unnamed_addr constant [5 x i8] c"TERM\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.13 }
@str.14 = internal unnamed_addr constant [5 x i8] c"dumb\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.14 }
@clo.const.3 = internal constant { ptr, ptr } { ptr @"log::#auto_color_enabled", ptr null }
@"var.log::#auto_color_enabled" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"log::#should_color", ptr null }
@"var.log::#should_color" = global ptr null
@str.15 = internal unnamed_addr constant [2 x i8] c"[\00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.15 }
@str.16 = internal unnamed_addr constant [2 x i8] c"]\00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.16 }
@clo.const.5 = internal constant { ptr, ptr } { ptr @"log::#level_plain", ptr null }
@"var.log::#level_plain" = global ptr null
@str.17 = internal unnamed_addr constant [5 x i8] c"\1B[0m\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.17 }
@clo.const.6 = internal constant { ptr, ptr } { ptr @"log::#level_ansi", ptr null }
@"var.log::#level_ansi" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.7 = internal constant { ptr, ptr } { ptr @"log::#needs_quoting", ptr null }
@"var.log::#needs_quoting" = global ptr null
@str.18 = internal unnamed_addr constant [3 x i8] c"\\\22\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.18 }
@str.19 = internal unnamed_addr constant [3 x i8] c"\\\\\00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.19 }
@str.20 = internal unnamed_addr constant [3 x i8] c"\\n\00"
@str.20.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.20 }
@str.21 = internal unnamed_addr constant [3 x i8] c"\\r\00"
@str.21.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.21 }
@str.22 = internal unnamed_addr constant [3 x i8] c"\\t\00"
@str.22.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.22 }
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.8 = internal constant { ptr, ptr } { ptr @"log::#quote_value", ptr null }
@"var.log::#quote_value" = global ptr null
@str.23 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.23.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.23 }
@str.24 = internal unnamed_addr constant [8 x i8] c"log.dva\00"
@str.24.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.24 }
@str.25 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.25.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.25 }
@dva_thread_rec = external thread_local global ptr
@clo.const.9 = internal constant { ptr, ptr } { ptr @"log::#append_fields", ptr null }
@"var.log::#append_fields" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"log::level_rank", ptr null }
@"var.log::level_rank" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"log::level_name", ptr null }
@"var.log::level_name" = global ptr null
@str.26 = internal unnamed_addr constant [6 x i8] c"debug\00"
@str.26.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.26 }
@str.27 = internal unnamed_addr constant [5 x i8] c"info\00"
@str.27.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.27 }
@str.28 = internal unnamed_addr constant [5 x i8] c"warn\00"
@str.28.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.28 }
@str.29 = internal unnamed_addr constant [8 x i8] c"warning\00"
@str.29.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.29 }
@str.30 = internal unnamed_addr constant [6 x i8] c"error\00"
@str.30.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.30 }
@str.31 = internal unnamed_addr constant [4 x i8] c"err\00"
@str.31.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.31 }
@str.32 = internal unnamed_addr constant [7 x i8] c"silent\00"
@str.32.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.32 }
@str.33 = internal unnamed_addr constant [4 x i8] c"off\00"
@str.33.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.33 }
@str.34 = internal unnamed_addr constant [5 x i8] c"none\00"
@str.34.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.34 }
@clo.const.12 = internal constant { ptr, ptr } { ptr @"log::parse_level", ptr null }
@"var.log::parse_level" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"log::set_level", ptr null }
@"var.log::set_level" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"log::get_level", ptr null }
@"var.log::get_level" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"log::enabled", ptr null }
@"var.log::enabled" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"log::set_timestamps", ptr null }
@"var.log::set_timestamps" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"log::set_utc", ptr null }
@"var.log::set_utc" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"log::set_basic_iso", ptr null }
@"var.log::set_basic_iso" = global ptr null
@clo.const.19 = internal constant { ptr, ptr } { ptr @"log::set_color", ptr null }
@"var.log::set_color" = global ptr null
@clo.const.20 = internal constant { ptr, ptr } { ptr @"log::use_auto_color", ptr null }
@"var.log::use_auto_color" = global ptr null
@clo.const.21 = internal constant { ptr, ptr } { ptr @"log::set_prefix", ptr null }
@"var.log::set_prefix" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"log::get_prefix", ptr null }
@"var.log::get_prefix" = global ptr null
@clo.const.23 = internal constant { ptr, ptr } { ptr @"log::set_fd", ptr null }
@"var.log::set_fd" = global ptr null
@clo.const.24 = internal constant { ptr, ptr } { ptr @"log::get_fd", ptr null }
@"var.log::get_fd" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"log::set_file", ptr null }
@"var.log::set_file" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"log::close_file", ptr null }
@"var.log::close_file" = global ptr null
@str.35 = internal unnamed_addr constant [2 x i8] c" \00"
@str.35.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.35 }
@str.36 = internal unnamed_addr constant [3 x i8] c" [\00"
@str.36.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.36 }
@clo.const.27 = internal constant { ptr, ptr } { ptr @"log::format_entry", ptr null }
@"var.log::format_entry" = global ptr null
@clo.const.28 = internal constant { ptr, ptr } { ptr @"log::format_kv", ptr null }
@"var.log::format_kv" = global ptr null
@str.37 = internal unnamed_addr constant [2 x i8] c"\0A\00"
@str.37.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.37 }
@clo.const.29 = internal constant { ptr, ptr } { ptr @"log::log", ptr null }
@"var.log::log" = global ptr null
@clo.const.30 = internal constant { ptr, ptr } { ptr @"log::log_kv", ptr null }
@"var.log::log_kv" = global ptr null
@clo.const.31 = internal constant { ptr, ptr } { ptr @"log::debug", ptr null }
@"var.log::debug" = global ptr null
@clo.const.32 = internal constant { ptr, ptr } { ptr @"log::info", ptr null }
@"var.log::info" = global ptr null
@clo.const.33 = internal constant { ptr, ptr } { ptr @"log::warn", ptr null }
@"var.log::warn" = global ptr null
@clo.const.34 = internal constant { ptr, ptr } { ptr @"log::error", ptr null }
@"var.log::error" = global ptr null
@clo.const.35 = internal constant { ptr, ptr } { ptr @"log::debug_kv", ptr null }
@"var.log::debug_kv" = global ptr null
@clo.const.36 = internal constant { ptr, ptr } { ptr @"log::info_kv", ptr null }
@"var.log::info_kv" = global ptr null
@clo.const.37 = internal constant { ptr, ptr } { ptr @"log::warn_kv", ptr null }
@"var.log::warn_kv" = global ptr null
@clo.const.38 = internal constant { ptr, ptr } { ptr @"log::error_kv", ptr null }
@"var.log::error_kv" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_log, ptr null }]

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

define internal void @__dva_global_init_log() #1 {
entry:
  store i64 1, ptr @"var.log::#min_level", align 8
  store i64 2, ptr @"var.log::#out_fd", align 8
  store i64 -1, ptr @"var.log::#owned_fd", align 8
  store i1 true, ptr @"var.log::#show_ts", align 1
  store i1 false, ptr @"var.log::#ts_utc", align 1
  store i1 false, ptr @"var.log::#ts_basic", align 1
  store i64 0, ptr @"var.log::#color_mode", align 8
  store ptr @str.0.struct, ptr @"var.log::#prefix_tag", align 8
  store i64 1089, ptr @"var.log::#O_LOG_APPEND", align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %arena.cur1 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %enum.alloc, ptr %rec.fld, align 8
  %rec.fld2 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld2, align 8
  %rec.fld3 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr @str.1.struct, ptr %rec.fld3, align 8
  %rec.fld4 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc, i32 0, i32 3
  store ptr @str.2.struct, ptr %rec.fld4, align 8
  %arena.cur5 = call ptr @dva_arena_current()
  %enum.alloc6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 16)
  %tag.gep7 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc6, i32 0, i32 0
  store i64 1, ptr %tag.gep7, align 8
  %pay.gep8 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc6, i32 0, i32 1
  store ptr null, ptr %pay.gep8, align 8
  %arena.cur9 = call ptr @dva_arena_current()
  %rec.alloc10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld11 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc10, i32 0, i32 0
  store ptr %enum.alloc6, ptr %rec.fld11, align 8
  %rec.fld12 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc10, i32 0, i32 1
  store i64 1, ptr %rec.fld12, align 8
  %rec.fld13 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc10, i32 0, i32 2
  store ptr @str.3.struct, ptr %rec.fld13, align 8
  %rec.fld14 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc10, i32 0, i32 3
  store ptr @str.4.struct, ptr %rec.fld14, align 8
  %arena.cur15 = call ptr @dva_arena_current()
  %enum.alloc16 = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 16)
  %tag.gep17 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc16, i32 0, i32 0
  store i64 2, ptr %tag.gep17, align 8
  %pay.gep18 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc16, i32 0, i32 1
  store ptr null, ptr %pay.gep18, align 8
  %arena.cur19 = call ptr @dva_arena_current()
  %rec.alloc20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld21 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc20, i32 0, i32 0
  store ptr %enum.alloc16, ptr %rec.fld21, align 8
  %rec.fld22 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc20, i32 0, i32 1
  store i64 2, ptr %rec.fld22, align 8
  %rec.fld23 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc20, i32 0, i32 2
  store ptr @str.5.struct, ptr %rec.fld23, align 8
  %rec.fld24 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc20, i32 0, i32 3
  store ptr @str.6.struct, ptr %rec.fld24, align 8
  %arena.cur25 = call ptr @dva_arena_current()
  %enum.alloc26 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 16)
  %tag.gep27 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc26, i32 0, i32 0
  store i64 3, ptr %tag.gep27, align 8
  %pay.gep28 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc26, i32 0, i32 1
  store ptr null, ptr %pay.gep28, align 8
  %arena.cur29 = call ptr @dva_arena_current()
  %rec.alloc30 = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld31 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc30, i32 0, i32 0
  store ptr %enum.alloc26, ptr %rec.fld31, align 8
  %rec.fld32 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc30, i32 0, i32 1
  store i64 3, ptr %rec.fld32, align 8
  %rec.fld33 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc30, i32 0, i32 2
  store ptr @str.7.struct, ptr %rec.fld33, align 8
  %rec.fld34 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc30, i32 0, i32 3
  store ptr @str.8.struct, ptr %rec.fld34, align 8
  %arena.cur35 = call ptr @dva_arena_current()
  %enum.alloc36 = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 16)
  %tag.gep37 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc36, i32 0, i32 0
  store i64 4, ptr %tag.gep37, align 8
  %pay.gep38 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc36, i32 0, i32 1
  store ptr null, ptr %pay.gep38, align 8
  %arena.cur39 = call ptr @dva_arena_current()
  %rec.alloc40 = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld41 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc40, i32 0, i32 0
  store ptr %enum.alloc36, ptr %rec.fld41, align 8
  %rec.fld42 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc40, i32 0, i32 1
  store i64 4, ptr %rec.fld42, align 8
  %rec.fld43 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc40, i32 0, i32 2
  store ptr @str.9.struct, ptr %rec.fld43, align 8
  %rec.fld44 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc40, i32 0, i32 3
  store ptr @str.0.struct, ptr %rec.fld44, align 8
  %arena.cur45 = call ptr @dva_arena_current()
  %rec.alloc46 = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 ptrtoint (ptr getelementptr ({ { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr null, i32 1) to i64))
  %rec.fld47 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %rec.alloc46, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld47, ptr align 1 %rec.alloc, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld48 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %rec.alloc46, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld48, ptr align 1 %rec.alloc10, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld49 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %rec.alloc46, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld49, ptr align 1 %rec.alloc20, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld50 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %rec.alloc46, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld50, ptr align 1 %rec.alloc30, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld51 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %rec.alloc46, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld51, ptr align 1 %rec.alloc40, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc46, ptr @"var.log::#LEVELS", align 8
  store ptr @clo.const, ptr @"var.log::#level_meta", align 8
  store ptr @clo.const.1, ptr @"var.log::#rank_to_level", align 8
  store ptr @clo.const.2, ptr @"var.log::#env_val", align 8
  store ptr @clo.const.3, ptr @"var.log::#auto_color_enabled", align 8
  store ptr @clo.const.4, ptr @"var.log::#should_color", align 8
  store ptr @clo.const.5, ptr @"var.log::#level_plain", align 8
  store ptr @clo.const.6, ptr @"var.log::#level_ansi", align 8
  store ptr @clo.const.7, ptr @"var.log::#needs_quoting", align 8
  store ptr @clo.const.8, ptr @"var.log::#quote_value", align 8
  store ptr @clo.const.9, ptr @"var.log::#append_fields", align 8
  store ptr @clo.const.10, ptr @"var.log::level_rank", align 8
  store ptr @clo.const.11, ptr @"var.log::level_name", align 8
  store ptr @clo.const.12, ptr @"var.log::parse_level", align 8
  store ptr @clo.const.13, ptr @"var.log::set_level", align 8
  store ptr @clo.const.14, ptr @"var.log::get_level", align 8
  store ptr @clo.const.15, ptr @"var.log::enabled", align 8
  store ptr @clo.const.16, ptr @"var.log::set_timestamps", align 8
  store ptr @clo.const.17, ptr @"var.log::set_utc", align 8
  store ptr @clo.const.18, ptr @"var.log::set_basic_iso", align 8
  store ptr @clo.const.19, ptr @"var.log::set_color", align 8
  store ptr @clo.const.20, ptr @"var.log::use_auto_color", align 8
  store ptr @clo.const.21, ptr @"var.log::set_prefix", align 8
  store ptr @clo.const.22, ptr @"var.log::get_prefix", align 8
  store ptr @clo.const.23, ptr @"var.log::set_fd", align 8
  store ptr @clo.const.24, ptr @"var.log::get_fd", align 8
  store ptr @clo.const.25, ptr @"var.log::set_file", align 8
  store ptr @clo.const.26, ptr @"var.log::close_file", align 8
  store ptr @clo.const.27, ptr @"var.log::format_entry", align 8
  store ptr @clo.const.28, ptr @"var.log::format_kv", align 8
  store ptr @clo.const.29, ptr @"var.log::log", align 8
  store ptr @clo.const.30, ptr @"var.log::log_kv", align 8
  store ptr @clo.const.31, ptr @"var.log::debug", align 8
  store ptr @clo.const.32, ptr @"var.log::info", align 8
  store ptr @clo.const.33, ptr @"var.log::warn", align 8
  store ptr @clo.const.34, ptr @"var.log::error", align 8
  store ptr @clo.const.35, ptr @"var.log::debug_kv", align 8
  store ptr @clo.const.36, ptr @"var.log::info_kv", align 8
  store ptr @clo.const.37, ptr @"var.log::warn_kv", align 8
  store ptr @clo.const.38, ptr @"var.log::error_kv", align 8
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

declare ptr @getenv(ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define internal ptr @"log::#level_meta"(ptr %0) #1 {
entry:
  %var._ = alloca ptr, align 8
  store ptr %0, ptr %var._, align 8
  %var.load = load ptr, ptr %var._, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next24, %choice.case23, %choice.case16, %choice.case9, %choice.case2, %choice.case
  %choice.res = phi ptr [ %fld.gep, %choice.case ], [ %fld.gep8, %choice.case2 ], [ %fld.gep15, %choice.case9 ], [ %fld.gep22, %choice.case16 ], [ %fld.gep29, %choice.case23 ], [ null, %choice.next24 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  %var.load1 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load1, i32 0, i32 0
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %tag.gep4 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id5 = load i64, ptr %tag.gep4, align 8
  %tag.match6 = icmp eq i64 %tag.id5, 1
  br i1 %tag.match6, label %choice.case2, label %choice.next3

choice.case2:                                     ; preds = %choice.next
  %var.load7 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep8 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load7, i32 0, i32 1
  br label %choice.exit

choice.next3:                                     ; preds = %choice.next
  %tag.gep11 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id12 = load i64, ptr %tag.gep11, align 8
  %tag.match13 = icmp eq i64 %tag.id12, 2
  br i1 %tag.match13, label %choice.case9, label %choice.next10

choice.case9:                                     ; preds = %choice.next3
  %var.load14 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep15 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load14, i32 0, i32 2
  br label %choice.exit

choice.next10:                                    ; preds = %choice.next3
  %tag.gep18 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id19 = load i64, ptr %tag.gep18, align 8
  %tag.match20 = icmp eq i64 %tag.id19, 3
  br i1 %tag.match20, label %choice.case16, label %choice.next17

choice.case16:                                    ; preds = %choice.next10
  %var.load21 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep22 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load21, i32 0, i32 3
  br label %choice.exit

choice.next17:                                    ; preds = %choice.next10
  %tag.gep25 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id26 = load i64, ptr %tag.gep25, align 8
  %tag.match27 = icmp eq i64 %tag.id26, 4
  br i1 %tag.match27, label %choice.case23, label %choice.next24

choice.case23:                                    ; preds = %choice.next17
  %var.load28 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep29 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load28, i32 0, i32 4
  br label %choice.exit

choice.next24:                                    ; preds = %choice.next17
  br label %choice.exit
}

define internal ptr @"log::#rank_to_level"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %val.match = icmp eq i64 %var.load, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next18, %choice.case17, %choice.case10, %choice.case3, %choice.case
  %choice.res = phi ptr [ %fld.load, %choice.case ], [ %fld.load9, %choice.case3 ], [ %fld.load16, %choice.case10 ], [ %fld.load23, %choice.case17 ], [ %fld.load27, %choice.next18 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  %var.load1 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load1, i32 0, i32 0
  %fld.gep2 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %fld.gep, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep2, align 8
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %val.match5 = icmp eq i64 %var.load, 1
  br i1 %val.match5, label %choice.case3, label %choice.next4

choice.case3:                                     ; preds = %choice.next
  %var.load6 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep7 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load6, i32 0, i32 1
  %fld.gep8 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %fld.gep7, i32 0, i32 0
  %fld.load9 = load ptr, ptr %fld.gep8, align 8
  br label %choice.exit

choice.next4:                                     ; preds = %choice.next
  %val.match12 = icmp eq i64 %var.load, 2
  br i1 %val.match12, label %choice.case10, label %choice.next11

choice.case10:                                    ; preds = %choice.next4
  %var.load13 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep14 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load13, i32 0, i32 2
  %fld.gep15 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %fld.gep14, i32 0, i32 0
  %fld.load16 = load ptr, ptr %fld.gep15, align 8
  br label %choice.exit

choice.next11:                                    ; preds = %choice.next4
  %val.match19 = icmp eq i64 %var.load, 3
  br i1 %val.match19, label %choice.case17, label %choice.next18

choice.case17:                                    ; preds = %choice.next11
  %var.load20 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep21 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load20, i32 0, i32 3
  %fld.gep22 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %fld.gep21, i32 0, i32 0
  %fld.load23 = load ptr, ptr %fld.gep22, align 8
  br label %choice.exit

choice.next18:                                    ; preds = %choice.next11
  %var.load24 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep25 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load24, i32 0, i32 4
  %fld.gep26 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %fld.gep25, i32 0, i32 0
  %fld.load27 = load ptr, ptr %fld.gep26, align 8
  br label %choice.exit
}

define internal ptr @"log::#env_val"(ptr %0) #1 {
entry:
  %var.raw = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %arg.str.ptr1 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr2 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %arg.str.ptr3 = load i64, ptr %arg.str.ptr2, align 8
  %arg.str.ptr4 = and i64 %arg.str.ptr3, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr3, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr8 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %call.res = call ptr @getenv(ptr %arg.str.ptr8)
  store ptr %call.res, ptr %var.raw, align 8
  %var.load9 = load ptr, ptr %var.raw, align 8
  %var.load10 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load9 to i64
  %ptr.int.r = ptrtoint ptr %var.load10 to i64
  %cmptmp = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp, label %choice.then, label %choice.else

nulcopy.len6:                                     ; preds = %str_overflow_abort, %nulcopy
  %arena.cur7 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  br label %choice.exit

choice.else:                                      ; preds = %nulmerge
  %var.load11 = load ptr, ptr %var.raw, align 8
  %call.res12 = call ptr @"sys::c_str"(ptr %var.load11)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.0.struct, %choice.then ], [ %call.res12, %choice.else ]
  ret ptr %choice.res
}

declare ptr @"sys::c_str"(ptr) #1

define internal i1 @"log::#auto_color_enabled"() #1 {
entry:
  %var.fc = alloca ptr, align 8
  %call.res = call ptr @"log::#env_val"(ptr @str.10.struct)
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
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
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %call.res3 = call ptr @"log::#env_val"(ptr @str.11.struct)
  store ptr %call.res3, ptr %var.fc, align 8
  %var.load = load ptr, ptr %var.fc, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag7 = lshr i64 %str.len.query5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check9:                                   ; preds = %choice.exit
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %choice.exit
  %cmptmp14 = icmp sgt i64 %str.len.query6, 0
  br i1 %cmptmp14, label %and.84.then, label %and.84.else

str_stale11:                                      ; preds = %str_gen_check9
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

and.84.then:                                      ; preds = %str_ok10
  %var.load15 = load ptr, ptr %var.fc, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 0
  %eq.lhs.len16 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len17 = and i64 %eq.lhs.len16, 281474976710655
  %str.tag18 = lshr i64 %eq.lhs.len16, 48
  %str.immortal19 = icmp eq i64 %str.tag18, 0
  br i1 %str.immortal19, label %str_ok21, label %str_gen_check20

and.84.else:                                      ; preds = %str_ok10
  br label %and.84.exit

and.84.exit:                                      ; preds = %and.84.else, %str.eq.merge
  %and.84.phi = phi i1 [ %str.neq, %str.eq.merge ], [ %cmptmp14, %and.84.else ]
  br i1 %and.84.phi, label %choice.then34, label %choice.exit35

str_gen_check20:                                  ; preds = %and.84.then
  %arena.cur23 = call ptr @dva_arena_current()
  %tag.valid24 = call i1 @dva_arena_validate_tag(ptr %arena.cur23, i64 %str.tag18)
  br i1 %tag.valid24, label %str_ok21, label %str_stale22

str_ok21:                                         ; preds = %str_stale22, %str_gen_check20, %and.84.then
  %eq.rhs.len = load i64, ptr @str.12.struct, align 8
  %eq.rhs.len25 = and i64 %eq.rhs.len, 281474976710655
  %str.tag26 = lshr i64 %eq.rhs.len, 48
  %str.immortal27 = icmp eq i64 %str.tag26, 0
  br i1 %str.immortal27, label %str_ok29, label %str_gen_check28

str_stale22:                                      ; preds = %str_gen_check20
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok21

str_gen_check28:                                  ; preds = %str_ok21
  %arena.cur31 = call ptr @dva_arena_current()
  %tag.valid32 = call i1 @dva_arena_validate_tag(ptr %arena.cur31, i64 %str.tag26)
  br i1 %tag.valid32, label %str_ok29, label %str_stale30

str_ok29:                                         ; preds = %str_stale30, %str_gen_check28, %str_ok21
  %eq.len = icmp eq i64 %eq.lhs.len17, %eq.rhs.len25
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale30:                                      ; preds = %str_gen_check28
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok29

str.eq.then:                                      ; preds = %str_ok29
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 1
  %eq.lhs.data33 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.12.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data33, ptr %eq.rhs.data, i64 %eq.lhs.len17)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok29
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br label %and.84.exit

choice.then34:                                    ; preds = %and.84.exit
  ret i1 true

choice.exit35:                                    ; preds = %ret.dead36, %and.84.exit
  %call.res37 = call ptr @"log::#env_val"(ptr @str.13.struct)
  %eq.lhs.len38 = getelementptr inbounds { i64, ptr }, ptr %call.res37, i32 0, i32 0
  %eq.lhs.len39 = load i64, ptr %eq.lhs.len38, align 8
  %eq.lhs.len40 = and i64 %eq.lhs.len39, 281474976710655
  %str.tag41 = lshr i64 %eq.lhs.len39, 48
  %str.immortal42 = icmp eq i64 %str.tag41, 0
  br i1 %str.immortal42, label %str_ok44, label %str_gen_check43

ret.dead36:                                       ; No predecessors!
  br label %choice.exit35

str_gen_check43:                                  ; preds = %choice.exit35
  %arena.cur46 = call ptr @dva_arena_current()
  %tag.valid47 = call i1 @dva_arena_validate_tag(ptr %arena.cur46, i64 %str.tag41)
  br i1 %tag.valid47, label %str_ok44, label %str_stale45

str_ok44:                                         ; preds = %str_stale45, %str_gen_check43, %choice.exit35
  %eq.rhs.len48 = load i64, ptr @str.14.struct, align 8
  %eq.rhs.len49 = and i64 %eq.rhs.len48, 281474976710655
  %str.tag50 = lshr i64 %eq.rhs.len48, 48
  %str.immortal51 = icmp eq i64 %str.tag50, 0
  br i1 %str.immortal51, label %str_ok53, label %str_gen_check52

str_stale45:                                      ; preds = %str_gen_check43
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok44

str_gen_check52:                                  ; preds = %str_ok44
  %arena.cur55 = call ptr @dva_arena_current()
  %tag.valid56 = call i1 @dva_arena_validate_tag(ptr %arena.cur55, i64 %str.tag50)
  br i1 %tag.valid56, label %str_ok53, label %str_stale54

str_ok53:                                         ; preds = %str_stale54, %str_gen_check52, %str_ok44
  %eq.len57 = icmp eq i64 %eq.lhs.len40, %eq.rhs.len49
  br i1 %eq.len57, label %str.eq.then58, label %str.eq.else59

str_stale54:                                      ; preds = %str_gen_check52
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok53

str.eq.then58:                                    ; preds = %str_ok53
  %eq.lhs.data61 = getelementptr inbounds { i64, ptr }, ptr %call.res37, i32 0, i32 1
  %eq.lhs.data62 = load ptr, ptr %eq.lhs.data61, align 8
  %eq.rhs.data63 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  %eq.memcmp64 = call i32 @memcmp(ptr %eq.lhs.data62, ptr %eq.rhs.data63, i64 %eq.lhs.len40)
  %eq.cmp.zero65 = icmp eq i32 %eq.memcmp64, 0
  br label %str.eq.merge60

str.eq.else59:                                    ; preds = %str_ok53
  br label %str.eq.merge60

str.eq.merge60:                                   ; preds = %str.eq.else59, %str.eq.then58
  %str.eq.result66 = phi i1 [ %eq.cmp.zero65, %str.eq.then58 ], [ false, %str.eq.else59 ]
  br i1 %str.eq.result66, label %choice.then67, label %choice.exit68

choice.then67:                                    ; preds = %str.eq.merge60
  ret i1 false

choice.exit68:                                    ; preds = %ret.dead69, %str.eq.merge60
  %var.load70 = load i64, ptr @"var.log::#out_fd", align 8
  %coerce.trunc = trunc i64 %var.load70 to i32
  %call.res71 = call i64 @isatty(i32 %coerce.trunc)
  %cmptmp72 = icmp eq i64 %call.res71, 1
  ret i1 %cmptmp72

ret.dead69:                                       ; No predecessors!
  br label %choice.exit68
}

declare i32 @memcmp(ptr, ptr, i64)

define internal i1 @"log::#should_color"() #1 {
entry:
  %var.load = load i64, ptr @"var.log::#color_mode", align 8
  %val.match = icmp eq i64 %var.load, 1
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next2, %choice.case1, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.case1 ], [ %call.res, %choice.next2 ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %val.match3 = icmp eq i64 %var.load, 2
  br i1 %val.match3, label %choice.case1, label %choice.next2

choice.case1:                                     ; preds = %choice.next
  br label %choice.exit

choice.next2:                                     ; preds = %choice.next
  %call.res = call i1 @"log::#auto_color_enabled"()
  br label %choice.exit
}

define internal ptr @"log::#level_plain"(ptr %0) #1 {
entry:
  %var.lvl = alloca ptr, align 8
  store ptr %0, ptr %var.lvl, align 8
  %var.load = load ptr, ptr %var.lvl, align 8
  %call.res = call ptr @"log::#level_meta"(ptr %var.load)
  %fld.gep = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %call.res, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep, align 8
  %concat.lhs = load i64, ptr @str.15.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.15.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
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
  %concat.rhs12 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
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
  %concat.rhs33 = load i64, ptr @str.16.struct, align 8
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
  %concat.rhs42 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
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

define internal ptr @"log::#level_ansi"(ptr %0) #1 {
entry:
  %var.badge = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var.lvl = alloca ptr, align 8
  store ptr %0, ptr %var.lvl, align 8
  %var.load = load ptr, ptr %var.lvl, align 8
  %call.res = call ptr @"log::#level_meta"(ptr %var.load)
  store ptr %call.res, ptr %var.m, align 8
  %var.load1 = load ptr, ptr %var.m, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %var.load1, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep, align 8
  %concat.lhs = load i64, ptr @str.15.struct, align 8
  %concat.lhs2 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs3 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.15.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
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
  %concat.rhs13 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %concat.rhs14 = load ptr, ptr %concat.rhs13, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs2, i64 %concat.rhs5)
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
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs3, i64 %concat.lhs2, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs14, i64 %concat.rhs5, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur21 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs22 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs23 = load i64, ptr %concat.lhs22, align 8
  %concat.lhs24 = and i64 %concat.lhs23, 281474976710655
  %str.tag25 = lshr i64 %concat.lhs23, 48
  %str.immortal26 = icmp eq i64 %str.tag25, 0
  br i1 %str.immortal26, label %str_ok28, label %str_gen_check27

str_overflow_abort19:                             ; preds = %concat.sum.len15
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len18

str_gen_check27:                                  ; preds = %concat.tot.len18
  %arena.cur30 = call ptr @dva_arena_current()
  %tag.valid31 = call i1 @dva_arena_validate_tag(ptr %arena.cur30, i64 %str.tag25)
  br i1 %tag.valid31, label %str_ok28, label %str_stale29

str_ok28:                                         ; preds = %str_stale29, %str_gen_check27, %concat.tot.len18
  %concat.lhs32 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs33 = load ptr, ptr %concat.lhs32, align 8
  %concat.rhs34 = load i64, ptr @str.16.struct, align 8
  %concat.rhs35 = and i64 %concat.rhs34, 281474976710655
  %str.tag36 = lshr i64 %concat.rhs34, 48
  %str.immortal37 = icmp eq i64 %str.tag36, 0
  br i1 %str.immortal37, label %str_ok39, label %str_gen_check38

str_stale29:                                      ; preds = %str_gen_check27
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok28

str_gen_check38:                                  ; preds = %str_ok28
  %arena.cur41 = call ptr @dva_arena_current()
  %tag.valid42 = call i1 @dva_arena_validate_tag(ptr %arena.cur41, i64 %str.tag36)
  br i1 %tag.valid42, label %str_ok39, label %str_stale40

str_ok39:                                         ; preds = %str_stale40, %str_gen_check38, %str_ok28
  %concat.rhs43 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %concat.sum.len44 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs24, i64 %concat.rhs35)
  %sum45 = extractvalue { i64, i1 } %concat.sum.len44, 0
  %ovf46 = extractvalue { i64, i1 } %concat.sum.len44, 1
  br i1 %ovf46, label %str_overflow_abort48, label %concat.sum.len47

str_stale40:                                      ; preds = %str_gen_check38
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok39

concat.sum.len47:                                 ; preds = %str_overflow_abort48, %str_ok39
  %concat.tot.len49 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum45, i64 1)
  %sum50 = extractvalue { i64, i1 } %concat.tot.len49, 0
  %ovf51 = extractvalue { i64, i1 } %concat.tot.len49, 1
  br i1 %ovf51, label %str_overflow_abort53, label %concat.tot.len52

str_overflow_abort48:                             ; preds = %str_ok39
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len47

concat.tot.len52:                                 ; preds = %str_overflow_abort53, %concat.sum.len47
  %arena.cur54 = call ptr @dva_arena_current()
  %concat.buf55 = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 %sum50)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf55, ptr align 1 %concat.lhs33, i64 %concat.lhs24, i1 false)
  %concat.mid56 = getelementptr i8, ptr %concat.buf55, i64 %concat.lhs24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid56, ptr align 1 %concat.rhs43, i64 %concat.rhs35, i1 false)
  %concat.nul57 = getelementptr i8, ptr %concat.buf55, i64 %sum45
  store i8 0, ptr %concat.nul57, align 1
  %arena.cur58 = call ptr @dva_arena_current()
  %concat.str59 = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 16)
  %str.build.len.gep60 = getelementptr inbounds { i64, ptr }, ptr %concat.str59, i32 0, i32 0
  store i64 %sum45, ptr %str.build.len.gep60, align 8
  %str.build.data.gep61 = getelementptr inbounds { i64, ptr }, ptr %concat.str59, i32 0, i32 1
  store ptr %concat.buf55, ptr %str.build.data.gep61, align 8
  store ptr %concat.str59, ptr %var.badge, align 8
  %var.load62 = load ptr, ptr %var.m, align 8
  %fld.gep63 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %var.load62, i32 0, i32 3
  %fld.load64 = load ptr, ptr %fld.gep63, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load64, i32 0, i32 0
  %str.len.query65 = load i64, ptr %str.len.query, align 8
  %str.len.query66 = and i64 %str.len.query65, 281474976710655
  %str.tag67 = lshr i64 %str.len.query65, 48
  %str.immortal68 = icmp eq i64 %str.tag67, 0
  br i1 %str.immortal68, label %str_ok70, label %str_gen_check69

str_overflow_abort53:                             ; preds = %concat.sum.len47
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len52

str_gen_check69:                                  ; preds = %concat.tot.len52
  %arena.cur72 = call ptr @dva_arena_current()
  %tag.valid73 = call i1 @dva_arena_validate_tag(ptr %arena.cur72, i64 %str.tag67)
  br i1 %tag.valid73, label %str_ok70, label %str_stale71

str_ok70:                                         ; preds = %str_stale71, %str_gen_check69, %concat.tot.len52
  %cmptmp = icmp sgt i64 %str.len.query66, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

str_stale71:                                      ; preds = %str_gen_check69
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok70

choice.then:                                      ; preds = %str_ok70
  %var.load74 = load ptr, ptr %var.m, align 8
  %fld.gep75 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %var.load74, i32 0, i32 3
  %fld.load76 = load ptr, ptr %fld.gep75, align 8
  %var.load77 = load ptr, ptr %var.badge, align 8
  %concat.lhs78 = getelementptr inbounds { i64, ptr }, ptr %fld.load76, i32 0, i32 0
  %concat.lhs79 = load i64, ptr %concat.lhs78, align 8
  %concat.lhs80 = and i64 %concat.lhs79, 281474976710655
  %str.tag81 = lshr i64 %concat.lhs79, 48
  %str.immortal82 = icmp eq i64 %str.tag81, 0
  br i1 %str.immortal82, label %str_ok84, label %str_gen_check83

choice.else:                                      ; preds = %str_ok70
  %var.load160 = load ptr, ptr %var.badge, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %concat.tot.len150
  %choice.res = phi ptr [ %concat.str157, %concat.tot.len150 ], [ %var.load160, %choice.else ]
  ret ptr %choice.res

str_gen_check83:                                  ; preds = %choice.then
  %arena.cur86 = call ptr @dva_arena_current()
  %tag.valid87 = call i1 @dva_arena_validate_tag(ptr %arena.cur86, i64 %str.tag81)
  br i1 %tag.valid87, label %str_ok84, label %str_stale85

str_ok84:                                         ; preds = %str_stale85, %str_gen_check83, %choice.then
  %concat.lhs88 = getelementptr inbounds { i64, ptr }, ptr %fld.load76, i32 0, i32 1
  %concat.lhs89 = load ptr, ptr %concat.lhs88, align 8
  %concat.rhs90 = getelementptr inbounds { i64, ptr }, ptr %var.load77, i32 0, i32 0
  %concat.rhs91 = load i64, ptr %concat.rhs90, align 8
  %concat.rhs92 = and i64 %concat.rhs91, 281474976710655
  %str.tag93 = lshr i64 %concat.rhs91, 48
  %str.immortal94 = icmp eq i64 %str.tag93, 0
  br i1 %str.immortal94, label %str_ok96, label %str_gen_check95

str_stale85:                                      ; preds = %str_gen_check83
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok84

str_gen_check95:                                  ; preds = %str_ok84
  %arena.cur98 = call ptr @dva_arena_current()
  %tag.valid99 = call i1 @dva_arena_validate_tag(ptr %arena.cur98, i64 %str.tag93)
  br i1 %tag.valid99, label %str_ok96, label %str_stale97

str_ok96:                                         ; preds = %str_stale97, %str_gen_check95, %str_ok84
  %concat.rhs100 = getelementptr inbounds { i64, ptr }, ptr %var.load77, i32 0, i32 1
  %concat.rhs101 = load ptr, ptr %concat.rhs100, align 8
  %concat.sum.len102 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs80, i64 %concat.rhs92)
  %sum103 = extractvalue { i64, i1 } %concat.sum.len102, 0
  %ovf104 = extractvalue { i64, i1 } %concat.sum.len102, 1
  br i1 %ovf104, label %str_overflow_abort106, label %concat.sum.len105

str_stale97:                                      ; preds = %str_gen_check95
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok96

concat.sum.len105:                                ; preds = %str_overflow_abort106, %str_ok96
  %concat.tot.len107 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum103, i64 1)
  %sum108 = extractvalue { i64, i1 } %concat.tot.len107, 0
  %ovf109 = extractvalue { i64, i1 } %concat.tot.len107, 1
  br i1 %ovf109, label %str_overflow_abort111, label %concat.tot.len110

str_overflow_abort106:                            ; preds = %str_ok96
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len105

concat.tot.len110:                                ; preds = %str_overflow_abort111, %concat.sum.len105
  %arena.cur112 = call ptr @dva_arena_current()
  %concat.buf113 = call ptr @dva_arena_alloc(ptr %arena.cur112, i64 %sum108)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf113, ptr align 1 %concat.lhs89, i64 %concat.lhs80, i1 false)
  %concat.mid114 = getelementptr i8, ptr %concat.buf113, i64 %concat.lhs80
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid114, ptr align 1 %concat.rhs101, i64 %concat.rhs92, i1 false)
  %concat.nul115 = getelementptr i8, ptr %concat.buf113, i64 %sum103
  store i8 0, ptr %concat.nul115, align 1
  %arena.cur116 = call ptr @dva_arena_current()
  %concat.str117 = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 16)
  %str.build.len.gep118 = getelementptr inbounds { i64, ptr }, ptr %concat.str117, i32 0, i32 0
  store i64 %sum103, ptr %str.build.len.gep118, align 8
  %str.build.data.gep119 = getelementptr inbounds { i64, ptr }, ptr %concat.str117, i32 0, i32 1
  store ptr %concat.buf113, ptr %str.build.data.gep119, align 8
  %concat.lhs120 = getelementptr inbounds { i64, ptr }, ptr %concat.str117, i32 0, i32 0
  %concat.lhs121 = load i64, ptr %concat.lhs120, align 8
  %concat.lhs122 = and i64 %concat.lhs121, 281474976710655
  %str.tag123 = lshr i64 %concat.lhs121, 48
  %str.immortal124 = icmp eq i64 %str.tag123, 0
  br i1 %str.immortal124, label %str_ok126, label %str_gen_check125

str_overflow_abort111:                            ; preds = %concat.sum.len105
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len110

str_gen_check125:                                 ; preds = %concat.tot.len110
  %arena.cur128 = call ptr @dva_arena_current()
  %tag.valid129 = call i1 @dva_arena_validate_tag(ptr %arena.cur128, i64 %str.tag123)
  br i1 %tag.valid129, label %str_ok126, label %str_stale127

str_ok126:                                        ; preds = %str_stale127, %str_gen_check125, %concat.tot.len110
  %concat.lhs130 = getelementptr inbounds { i64, ptr }, ptr %concat.str117, i32 0, i32 1
  %concat.lhs131 = load ptr, ptr %concat.lhs130, align 8
  %concat.rhs132 = load i64, ptr @str.17.struct, align 8
  %concat.rhs133 = and i64 %concat.rhs132, 281474976710655
  %str.tag134 = lshr i64 %concat.rhs132, 48
  %str.immortal135 = icmp eq i64 %str.tag134, 0
  br i1 %str.immortal135, label %str_ok137, label %str_gen_check136

str_stale127:                                     ; preds = %str_gen_check125
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok126

str_gen_check136:                                 ; preds = %str_ok126
  %arena.cur139 = call ptr @dva_arena_current()
  %tag.valid140 = call i1 @dva_arena_validate_tag(ptr %arena.cur139, i64 %str.tag134)
  br i1 %tag.valid140, label %str_ok137, label %str_stale138

str_ok137:                                        ; preds = %str_stale138, %str_gen_check136, %str_ok126
  %concat.rhs141 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %concat.sum.len142 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs122, i64 %concat.rhs133)
  %sum143 = extractvalue { i64, i1 } %concat.sum.len142, 0
  %ovf144 = extractvalue { i64, i1 } %concat.sum.len142, 1
  br i1 %ovf144, label %str_overflow_abort146, label %concat.sum.len145

str_stale138:                                     ; preds = %str_gen_check136
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok137

concat.sum.len145:                                ; preds = %str_overflow_abort146, %str_ok137
  %concat.tot.len147 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum143, i64 1)
  %sum148 = extractvalue { i64, i1 } %concat.tot.len147, 0
  %ovf149 = extractvalue { i64, i1 } %concat.tot.len147, 1
  br i1 %ovf149, label %str_overflow_abort151, label %concat.tot.len150

str_overflow_abort146:                            ; preds = %str_ok137
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len145

concat.tot.len150:                                ; preds = %str_overflow_abort151, %concat.sum.len145
  %arena.cur152 = call ptr @dva_arena_current()
  %concat.buf153 = call ptr @dva_arena_alloc(ptr %arena.cur152, i64 %sum148)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf153, ptr align 1 %concat.lhs131, i64 %concat.lhs122, i1 false)
  %concat.mid154 = getelementptr i8, ptr %concat.buf153, i64 %concat.lhs122
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid154, ptr align 1 %concat.rhs141, i64 %concat.rhs133, i1 false)
  %concat.nul155 = getelementptr i8, ptr %concat.buf153, i64 %sum143
  store i8 0, ptr %concat.nul155, align 1
  %arena.cur156 = call ptr @dva_arena_current()
  %concat.str157 = call ptr @dva_arena_alloc(ptr %arena.cur156, i64 16)
  %str.build.len.gep158 = getelementptr inbounds { i64, ptr }, ptr %concat.str157, i32 0, i32 0
  store i64 %sum143, ptr %str.build.len.gep158, align 8
  %str.build.data.gep159 = getelementptr inbounds { i64, ptr }, ptr %concat.str157, i32 0, i32 1
  store ptr %concat.buf153, ptr %str.build.data.gep159, align 8
  br label %choice.exit

str_overflow_abort151:                            ; preds = %concat.sum.len145
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len150
}

define internal i1 @"log::#needs_quoting"(ptr %0) #1 {
entry:
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.85 = alloca i64, align 8
  %loop.idx.85 = alloca i64, align 8
  %"var.hit'" = alloca i1, align 1
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
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  ret i1 true

choice.exit:                                      ; preds = %ret.dead, %str_ok
  store i1 false, ptr %"var.hit'", align 1
  %var.load3 = load ptr, ptr %var.s, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag7 = lshr i64 %str.len.query5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check9:                                   ; preds = %choice.exit
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %choice.exit
  store i64 0, ptr %loop.idx.85, align 8
  br label %loop.header.85

str_stale11:                                      ; preds = %str_gen_check9
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

loop.header.85:                                   ; preds = %loop.latch.85, %str_ok10
  %counter.load = load i64, ptr %loop.idx.85, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len.query6
  br i1 %loop.cond, label %loop.body.85, label %loop.exit.nat.85

loop.body.85:                                     ; preds = %loop.header.85
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.85, align 8
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

loop.exit.nat.85:                                 ; preds = %loop.header.85
  br label %loop.exit.85

loop.latch.85:                                    ; preds = %choice.exit38
  %step.val = load i64, ptr %loop.step.85, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.85, align 8
  br label %loop.header.85

loop.exit.85:                                     ; preds = %choice.then37, %loop.exit.nat.85
  %var.load39 = load i1, ptr %"var.hit'", align 1
  ret i1 %var.load39

str_gen_check19:                                  ; preds = %loop.body.85
  %arena.cur22 = call ptr @dva_arena_current()
  %tag.valid23 = call i1 @dva_arena_validate_tag(ptr %arena.cur22, i64 %str.tag17)
  br i1 %tag.valid23, label %str_ok20, label %str_stale21

str_ok20:                                         ; preds = %str_stale21, %str_gen_check19, %loop.body.85
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 1
  %s.read.data24 = load ptr, ptr %s.read.data, align 8
  %var.load25 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load25, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale21:                                      ; preds = %str_gen_check19
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok20

idx_big_check:                                    ; preds = %str_ok20
  %idx.big = icmp sge i64 %var.load25, %s.read.len16
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data24, i64 %var.load25
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load26 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load26, 32
  %val.match28 = icmp eq i64 %var.load26, 9
  %case.or = or i1 %val.match, %val.match28
  %val.match29 = icmp eq i64 %var.load26, 10
  %case.or30 = or i1 %case.or, %val.match29
  %val.match31 = icmp eq i64 %var.load26, 13
  %case.or32 = or i1 %case.or30, %val.match31
  %val.match33 = icmp eq i64 %var.load26, 34
  %case.or34 = or i1 %case.or32, %val.match33
  %val.match35 = icmp eq i64 %var.load26, 61
  %case.or36 = or i1 %case.or34, %val.match35
  br i1 %case.or36, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %str_ok20
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.exit27:                                    ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %choice.then37, label %choice.exit38

choice.case:                                      ; preds = %idx_ok
  br label %choice.exit27

choice.next:                                      ; preds = %idx_ok
  br label %choice.exit27

choice.then37:                                    ; preds = %choice.exit27
  store i1 true, ptr %"var.hit'", align 1
  br label %loop.exit.85

choice.exit38:                                    ; preds = %choice.exit27
  br label %loop.latch.85
}

define internal ptr @"log::#quote_value"(ptr %0) #1 {
entry:
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.87 = alloca i64, align 8
  %loop.idx.87 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %call.res = call i1 @"log::#needs_quoting"(ptr %var.load)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.s, align 8
  ret ptr %var.load1

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load2 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %str.len.query3 = load i64, ptr %str.len.query, align 8
  %str.len.query4 = and i64 %str.len.query3, 281474976710655
  %str.tag = lshr i64 %str.len.query3, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check:                                    ; preds = %choice.exit
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %addtmp = add i64 %str.len.query4, 8
  %arena.cur5 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 24)
  %cap.neg = icmp slt i64 %addtmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len6

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

b.buf.len6:                                       ; preds = %str_overflow_abort, %str_ok
  %arena.cur7 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len8 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len8, i64 1)
  %sum9 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf10 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf10, label %str_overflow_abort12, label %b.rn.new.len11

str_overflow_abort:                               ; preds = %str_ok
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len6

b.rn.new.len11:                                   ; preds = %str_overflow_abort12, %b.buf.len6
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap13 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap13, %sum9
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort12:                             ; preds = %b.buf.len6
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len11

b.grow2:                                          ; preds = %b.rn.new.len11
  %b.cap2 = mul i64 %b.cap13, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum9
  %b.new.cap = select i1 %b.cap.need, i64 %sum9, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len214 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data215 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum16 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf17 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf17, label %str_overflow_abort19, label %b.new.buf.len218

b.nogrow2:                                        ; preds = %b.rn.new.len11
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len218
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data21 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data21, i64 %b.rn.cur.len8
  br i1 true, label %br.b1.86, label %br.c2.86

b.new.buf.len218:                                 ; preds = %str_overflow_abort19, %b.grow2
  %arena.cur20 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 %sum16)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data215, i64 %b.cur.len214, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len214
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort19:                             ; preds = %b.grow2
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len218

br.b1.86:                                         ; preds = %b.grow_done
  store i8 34, ptr %b.rn.dst, align 1
  br label %br.done.86

br.c2.86:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.86, label %br.c3.86

br.b2.86:                                         ; preds = %br.c2.86
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -94, ptr %br.dst1, align 1
  br label %br.done.86

br.c3.86:                                         ; preds = %br.c2.86
  br i1 true, label %br.b3.86, label %br.b4.86

br.b3.86:                                         ; preds = %br.c3.86
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -94, ptr %br.dst2.3, align 1
  br label %br.done.86

br.b4.86:                                         ; preds = %br.c3.86
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -94, ptr %br.dst3.4, align 1
  br label %br.done.86

br.done.86:                                       ; preds = %br.b4.86, %br.b3.86, %br.b2.86, %br.b1.86
  %br.nul = getelementptr i8, ptr %b.rn.data21, i64 %sum9
  store i8 0, ptr %br.nul, align 1
  %b.len.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum9, ptr %b.len.gep22, align 8
  %var.load23 = load ptr, ptr %var.s, align 8
  %str.len.query24 = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 0
  %str.len.query25 = load i64, ptr %str.len.query24, align 8
  %str.len.query26 = and i64 %str.len.query25, 281474976710655
  %str.tag27 = lshr i64 %str.len.query25, 48
  %str.immortal28 = icmp eq i64 %str.tag27, 0
  br i1 %str.immortal28, label %str_ok30, label %str_gen_check29

str_gen_check29:                                  ; preds = %br.done.86
  %arena.cur32 = call ptr @dva_arena_current()
  %tag.valid33 = call i1 @dva_arena_validate_tag(ptr %arena.cur32, i64 %str.tag27)
  br i1 %tag.valid33, label %str_ok30, label %str_stale31

str_ok30:                                         ; preds = %str_stale31, %str_gen_check29, %br.done.86
  store i64 0, ptr %loop.idx.87, align 8
  br label %loop.header.87

str_stale31:                                      ; preds = %str_gen_check29
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok30

loop.header.87:                                   ; preds = %loop.latch.87, %str_ok30
  %counter.load = load i64, ptr %loop.idx.87, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len.query26
  br i1 %loop.cond, label %loop.body.87, label %loop.exit.nat.87

loop.body.87:                                     ; preds = %loop.header.87
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.87, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load34 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %s.read.len35 = load i64, ptr %s.read.len, align 8
  %s.read.len36 = and i64 %s.read.len35, 281474976710655
  %str.tag37 = lshr i64 %s.read.len35, 48
  %str.immortal38 = icmp eq i64 %str.tag37, 0
  br i1 %str.immortal38, label %str_ok40, label %str_gen_check39

loop.exit.nat.87:                                 ; preds = %loop.header.87
  br label %loop.exit.87

loop.latch.87:                                    ; preds = %choice.exit47
  %step.val = load i64, ptr %loop.step.87, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.87, align 8
  br label %loop.header.87

loop.exit.87:                                     ; preds = %loop.exit.nat.87
  %b.load310 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len311 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load310, i32 0, i32 0
  %b.rn.cur.len312 = load i64, ptr %b.rn.cur.len311, align 8
  %b.rn.new.len313 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len312, i64 1)
  %sum314 = extractvalue { i64, i1 } %b.rn.new.len313, 0
  %ovf315 = extractvalue { i64, i1 } %b.rn.new.len313, 1
  br i1 %ovf315, label %str_overflow_abort317, label %b.rn.new.len316

str_gen_check39:                                  ; preds = %loop.body.87
  %arena.cur42 = call ptr @dva_arena_current()
  %tag.valid43 = call i1 @dva_arena_validate_tag(ptr %arena.cur42, i64 %str.tag37)
  br i1 %tag.valid43, label %str_ok40, label %str_stale41

str_ok40:                                         ; preds = %str_stale41, %str_gen_check39, %loop.body.87
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %s.read.data44 = load ptr, ptr %s.read.data, align 8
  %var.load45 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load45, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale41:                                      ; preds = %str_gen_check39
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok40

idx_big_check:                                    ; preds = %str_ok40
  %idx.big = icmp sge i64 %var.load45, %s.read.len36
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data44, i64 %var.load45
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load46 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load46, 34
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %str_ok40
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.exit47:                                    ; preds = %b.push_done, %b.grow_done267, %b.grow_done216, %b.grow_done165, %b.grow_done114, %b.grow_done67
  br label %loop.latch.87

choice.case:                                      ; preds = %idx_ok
  %b.load48 = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.18.struct, align 8
  %app.str.len49 = and i64 %app.str.len, 281474976710655
  %str.tag50 = lshr i64 %app.str.len, 48
  %str.immortal51 = icmp eq i64 %str.tag50, 0
  br i1 %str.immortal51, label %str_ok53, label %str_gen_check52

choice.next:                                      ; preds = %idx_ok
  %val.match91 = icmp eq i64 %var.load46, 92
  br i1 %val.match91, label %choice.case89, label %choice.next90

str_gen_check52:                                  ; preds = %choice.case
  %arena.cur55 = call ptr @dva_arena_current()
  %tag.valid56 = call i1 @dva_arena_validate_tag(ptr %arena.cur55, i64 %str.tag50)
  br i1 %tag.valid56, label %str_ok53, label %str_stale54

str_ok53:                                         ; preds = %str_stale54, %str_gen_check52, %choice.case
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 0
  %b.app.cur.len57 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len57, i64 %app.str.len49)
  %sum58 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf59 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf59, label %str_overflow_abort61, label %b.app.new.len60

str_stale54:                                      ; preds = %str_gen_check52
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok53

b.app.new.len60:                                  ; preds = %str_overflow_abort61, %str_ok53
  %b.cap62 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 2
  %b.cap63 = load i64, ptr %b.cap62, align 8
  %b.need.grow64 = icmp slt i64 %b.cap63, %sum58
  br i1 %b.need.grow64, label %b.grow265, label %b.nogrow266

str_overflow_abort61:                             ; preds = %str_ok53
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len60

b.grow265:                                        ; preds = %b.app.new.len60
  %b.cap268 = mul i64 %b.cap63, 2
  %b.cap.small69 = icmp slt i64 %b.cap268, 16
  %b.cap.grow70 = select i1 %b.cap.small69, i64 16, i64 %b.cap268
  %b.cap.need71 = icmp slt i64 %b.cap.grow70, %sum58
  %b.new.cap72 = select i1 %b.cap.need71, i64 %sum58, i64 %b.cap.grow70
  %b.cur.len273 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 0
  %b.cur.len274 = load i64, ptr %b.cur.len273, align 8
  %b.cur.data275 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 1
  %b.cur.data276 = load ptr, ptr %b.cur.data275, align 8
  %b.new.buf.len277 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap72, i64 1)
  %sum78 = extractvalue { i64, i1 } %b.new.buf.len277, 0
  %ovf79 = extractvalue { i64, i1 } %b.new.buf.len277, 1
  br i1 %ovf79, label %str_overflow_abort81, label %b.new.buf.len280

b.nogrow266:                                      ; preds = %b.app.new.len60
  br label %b.grow_done67

b.grow_done67:                                    ; preds = %b.nogrow266, %b.new.buf.len280
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.18.struct, i32 0, i32 1), align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 1
  %b.app.data87 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data87, i64 %b.app.cur.len57
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len49, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data87, i64 %sum58
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep88 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 0
  store i64 %sum58, ptr %b.len.gep88, align 8
  br label %choice.exit47

b.new.buf.len280:                                 ; preds = %str_overflow_abort81, %b.grow265
  %arena.cur82 = call ptr @dva_arena_current()
  %b.new.buf283 = call ptr @dva_arena_alloc(ptr %arena.cur82, i64 %sum78)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf283, ptr align 1 %b.cur.data276, i64 %b.cur.len274, i1 false)
  %b.grow2.nul84 = getelementptr i8, ptr %b.new.buf283, i64 %b.cur.len274
  store i8 0, ptr %b.grow2.nul84, align 1
  %b.new.data2.gep85 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 1
  store ptr %b.new.buf283, ptr %b.new.data2.gep85, align 8
  %b.new.cap2.gep86 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 2
  store i64 %b.new.cap72, ptr %b.new.cap2.gep86, align 8
  br label %b.grow_done67

str_overflow_abort81:                             ; preds = %b.grow265
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len280

choice.case89:                                    ; preds = %choice.next
  %b.load92 = load ptr, ptr %var.b, align 8
  %app.str.len93 = load i64, ptr @str.19.struct, align 8
  %app.str.len94 = and i64 %app.str.len93, 281474976710655
  %str.tag95 = lshr i64 %app.str.len93, 48
  %str.immortal96 = icmp eq i64 %str.tag95, 0
  br i1 %str.immortal96, label %str_ok98, label %str_gen_check97

choice.next90:                                    ; preds = %choice.next
  %val.match142 = icmp eq i64 %var.load46, 10
  br i1 %val.match142, label %choice.case140, label %choice.next141

str_gen_check97:                                  ; preds = %choice.case89
  %arena.cur100 = call ptr @dva_arena_current()
  %tag.valid101 = call i1 @dva_arena_validate_tag(ptr %arena.cur100, i64 %str.tag95)
  br i1 %tag.valid101, label %str_ok98, label %str_stale99

str_ok98:                                         ; preds = %str_stale99, %str_gen_check97, %choice.case89
  %b.app.cur.len102 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load92, i32 0, i32 0
  %b.app.cur.len103 = load i64, ptr %b.app.cur.len102, align 8
  %b.app.new.len104 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len103, i64 %app.str.len94)
  %sum105 = extractvalue { i64, i1 } %b.app.new.len104, 0
  %ovf106 = extractvalue { i64, i1 } %b.app.new.len104, 1
  br i1 %ovf106, label %str_overflow_abort108, label %b.app.new.len107

str_stale99:                                      ; preds = %str_gen_check97
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok98

b.app.new.len107:                                 ; preds = %str_overflow_abort108, %str_ok98
  %b.cap109 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load92, i32 0, i32 2
  %b.cap110 = load i64, ptr %b.cap109, align 8
  %b.need.grow111 = icmp slt i64 %b.cap110, %sum105
  br i1 %b.need.grow111, label %b.grow2112, label %b.nogrow2113

str_overflow_abort108:                            ; preds = %str_ok98
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len107

b.grow2112:                                       ; preds = %b.app.new.len107
  %b.cap2115 = mul i64 %b.cap110, 2
  %b.cap.small116 = icmp slt i64 %b.cap2115, 16
  %b.cap.grow117 = select i1 %b.cap.small116, i64 16, i64 %b.cap2115
  %b.cap.need118 = icmp slt i64 %b.cap.grow117, %sum105
  %b.new.cap119 = select i1 %b.cap.need118, i64 %sum105, i64 %b.cap.grow117
  %b.cur.len2120 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load92, i32 0, i32 0
  %b.cur.len2121 = load i64, ptr %b.cur.len2120, align 8
  %b.cur.data2122 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load92, i32 0, i32 1
  %b.cur.data2123 = load ptr, ptr %b.cur.data2122, align 8
  %b.new.buf.len2124 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap119, i64 1)
  %sum125 = extractvalue { i64, i1 } %b.new.buf.len2124, 0
  %ovf126 = extractvalue { i64, i1 } %b.new.buf.len2124, 1
  br i1 %ovf126, label %str_overflow_abort128, label %b.new.buf.len2127

b.nogrow2113:                                     ; preds = %b.app.new.len107
  br label %b.grow_done114

b.grow_done114:                                   ; preds = %b.nogrow2113, %b.new.buf.len2127
  %app.str.data134 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.19.struct, i32 0, i32 1), align 8
  %b.app.data135 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load92, i32 0, i32 1
  %b.app.data136 = load ptr, ptr %b.app.data135, align 8
  %b.app.dst137 = getelementptr i8, ptr %b.app.data136, i64 %b.app.cur.len103
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst137, ptr align 1 %app.str.data134, i64 %app.str.len94, i1 false)
  %b.app.nul138 = getelementptr i8, ptr %b.app.data136, i64 %sum105
  store i8 0, ptr %b.app.nul138, align 1
  %b.len.gep139 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load92, i32 0, i32 0
  store i64 %sum105, ptr %b.len.gep139, align 8
  br label %choice.exit47

b.new.buf.len2127:                                ; preds = %str_overflow_abort128, %b.grow2112
  %arena.cur129 = call ptr @dva_arena_current()
  %b.new.buf2130 = call ptr @dva_arena_alloc(ptr %arena.cur129, i64 %sum125)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2130, ptr align 1 %b.cur.data2123, i64 %b.cur.len2121, i1 false)
  %b.grow2.nul131 = getelementptr i8, ptr %b.new.buf2130, i64 %b.cur.len2121
  store i8 0, ptr %b.grow2.nul131, align 1
  %b.new.data2.gep132 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load92, i32 0, i32 1
  store ptr %b.new.buf2130, ptr %b.new.data2.gep132, align 8
  %b.new.cap2.gep133 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load92, i32 0, i32 2
  store i64 %b.new.cap119, ptr %b.new.cap2.gep133, align 8
  br label %b.grow_done114

str_overflow_abort128:                            ; preds = %b.grow2112
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2127

choice.case140:                                   ; preds = %choice.next90
  %b.load143 = load ptr, ptr %var.b, align 8
  %app.str.len144 = load i64, ptr @str.20.struct, align 8
  %app.str.len145 = and i64 %app.str.len144, 281474976710655
  %str.tag146 = lshr i64 %app.str.len144, 48
  %str.immortal147 = icmp eq i64 %str.tag146, 0
  br i1 %str.immortal147, label %str_ok149, label %str_gen_check148

choice.next141:                                   ; preds = %choice.next90
  %val.match193 = icmp eq i64 %var.load46, 13
  br i1 %val.match193, label %choice.case191, label %choice.next192

str_gen_check148:                                 ; preds = %choice.case140
  %arena.cur151 = call ptr @dva_arena_current()
  %tag.valid152 = call i1 @dva_arena_validate_tag(ptr %arena.cur151, i64 %str.tag146)
  br i1 %tag.valid152, label %str_ok149, label %str_stale150

str_ok149:                                        ; preds = %str_stale150, %str_gen_check148, %choice.case140
  %b.app.cur.len153 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load143, i32 0, i32 0
  %b.app.cur.len154 = load i64, ptr %b.app.cur.len153, align 8
  %b.app.new.len155 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len154, i64 %app.str.len145)
  %sum156 = extractvalue { i64, i1 } %b.app.new.len155, 0
  %ovf157 = extractvalue { i64, i1 } %b.app.new.len155, 1
  br i1 %ovf157, label %str_overflow_abort159, label %b.app.new.len158

str_stale150:                                     ; preds = %str_gen_check148
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok149

b.app.new.len158:                                 ; preds = %str_overflow_abort159, %str_ok149
  %b.cap160 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load143, i32 0, i32 2
  %b.cap161 = load i64, ptr %b.cap160, align 8
  %b.need.grow162 = icmp slt i64 %b.cap161, %sum156
  br i1 %b.need.grow162, label %b.grow2163, label %b.nogrow2164

str_overflow_abort159:                            ; preds = %str_ok149
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len158

b.grow2163:                                       ; preds = %b.app.new.len158
  %b.cap2166 = mul i64 %b.cap161, 2
  %b.cap.small167 = icmp slt i64 %b.cap2166, 16
  %b.cap.grow168 = select i1 %b.cap.small167, i64 16, i64 %b.cap2166
  %b.cap.need169 = icmp slt i64 %b.cap.grow168, %sum156
  %b.new.cap170 = select i1 %b.cap.need169, i64 %sum156, i64 %b.cap.grow168
  %b.cur.len2171 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load143, i32 0, i32 0
  %b.cur.len2172 = load i64, ptr %b.cur.len2171, align 8
  %b.cur.data2173 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load143, i32 0, i32 1
  %b.cur.data2174 = load ptr, ptr %b.cur.data2173, align 8
  %b.new.buf.len2175 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap170, i64 1)
  %sum176 = extractvalue { i64, i1 } %b.new.buf.len2175, 0
  %ovf177 = extractvalue { i64, i1 } %b.new.buf.len2175, 1
  br i1 %ovf177, label %str_overflow_abort179, label %b.new.buf.len2178

b.nogrow2164:                                     ; preds = %b.app.new.len158
  br label %b.grow_done165

b.grow_done165:                                   ; preds = %b.nogrow2164, %b.new.buf.len2178
  %app.str.data185 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.20.struct, i32 0, i32 1), align 8
  %b.app.data186 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load143, i32 0, i32 1
  %b.app.data187 = load ptr, ptr %b.app.data186, align 8
  %b.app.dst188 = getelementptr i8, ptr %b.app.data187, i64 %b.app.cur.len154
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst188, ptr align 1 %app.str.data185, i64 %app.str.len145, i1 false)
  %b.app.nul189 = getelementptr i8, ptr %b.app.data187, i64 %sum156
  store i8 0, ptr %b.app.nul189, align 1
  %b.len.gep190 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load143, i32 0, i32 0
  store i64 %sum156, ptr %b.len.gep190, align 8
  br label %choice.exit47

b.new.buf.len2178:                                ; preds = %str_overflow_abort179, %b.grow2163
  %arena.cur180 = call ptr @dva_arena_current()
  %b.new.buf2181 = call ptr @dva_arena_alloc(ptr %arena.cur180, i64 %sum176)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2181, ptr align 1 %b.cur.data2174, i64 %b.cur.len2172, i1 false)
  %b.grow2.nul182 = getelementptr i8, ptr %b.new.buf2181, i64 %b.cur.len2172
  store i8 0, ptr %b.grow2.nul182, align 1
  %b.new.data2.gep183 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load143, i32 0, i32 1
  store ptr %b.new.buf2181, ptr %b.new.data2.gep183, align 8
  %b.new.cap2.gep184 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load143, i32 0, i32 2
  store i64 %b.new.cap170, ptr %b.new.cap2.gep184, align 8
  br label %b.grow_done165

str_overflow_abort179:                            ; preds = %b.grow2163
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2178

choice.case191:                                   ; preds = %choice.next141
  %b.load194 = load ptr, ptr %var.b, align 8
  %app.str.len195 = load i64, ptr @str.21.struct, align 8
  %app.str.len196 = and i64 %app.str.len195, 281474976710655
  %str.tag197 = lshr i64 %app.str.len195, 48
  %str.immortal198 = icmp eq i64 %str.tag197, 0
  br i1 %str.immortal198, label %str_ok200, label %str_gen_check199

choice.next192:                                   ; preds = %choice.next141
  %val.match244 = icmp eq i64 %var.load46, 9
  br i1 %val.match244, label %choice.case242, label %choice.next243

str_gen_check199:                                 ; preds = %choice.case191
  %arena.cur202 = call ptr @dva_arena_current()
  %tag.valid203 = call i1 @dva_arena_validate_tag(ptr %arena.cur202, i64 %str.tag197)
  br i1 %tag.valid203, label %str_ok200, label %str_stale201

str_ok200:                                        ; preds = %str_stale201, %str_gen_check199, %choice.case191
  %b.app.cur.len204 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load194, i32 0, i32 0
  %b.app.cur.len205 = load i64, ptr %b.app.cur.len204, align 8
  %b.app.new.len206 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len205, i64 %app.str.len196)
  %sum207 = extractvalue { i64, i1 } %b.app.new.len206, 0
  %ovf208 = extractvalue { i64, i1 } %b.app.new.len206, 1
  br i1 %ovf208, label %str_overflow_abort210, label %b.app.new.len209

str_stale201:                                     ; preds = %str_gen_check199
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok200

b.app.new.len209:                                 ; preds = %str_overflow_abort210, %str_ok200
  %b.cap211 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load194, i32 0, i32 2
  %b.cap212 = load i64, ptr %b.cap211, align 8
  %b.need.grow213 = icmp slt i64 %b.cap212, %sum207
  br i1 %b.need.grow213, label %b.grow2214, label %b.nogrow2215

str_overflow_abort210:                            ; preds = %str_ok200
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len209

b.grow2214:                                       ; preds = %b.app.new.len209
  %b.cap2217 = mul i64 %b.cap212, 2
  %b.cap.small218 = icmp slt i64 %b.cap2217, 16
  %b.cap.grow219 = select i1 %b.cap.small218, i64 16, i64 %b.cap2217
  %b.cap.need220 = icmp slt i64 %b.cap.grow219, %sum207
  %b.new.cap221 = select i1 %b.cap.need220, i64 %sum207, i64 %b.cap.grow219
  %b.cur.len2222 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load194, i32 0, i32 0
  %b.cur.len2223 = load i64, ptr %b.cur.len2222, align 8
  %b.cur.data2224 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load194, i32 0, i32 1
  %b.cur.data2225 = load ptr, ptr %b.cur.data2224, align 8
  %b.new.buf.len2226 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap221, i64 1)
  %sum227 = extractvalue { i64, i1 } %b.new.buf.len2226, 0
  %ovf228 = extractvalue { i64, i1 } %b.new.buf.len2226, 1
  br i1 %ovf228, label %str_overflow_abort230, label %b.new.buf.len2229

b.nogrow2215:                                     ; preds = %b.app.new.len209
  br label %b.grow_done216

b.grow_done216:                                   ; preds = %b.nogrow2215, %b.new.buf.len2229
  %app.str.data236 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.21.struct, i32 0, i32 1), align 8
  %b.app.data237 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load194, i32 0, i32 1
  %b.app.data238 = load ptr, ptr %b.app.data237, align 8
  %b.app.dst239 = getelementptr i8, ptr %b.app.data238, i64 %b.app.cur.len205
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst239, ptr align 1 %app.str.data236, i64 %app.str.len196, i1 false)
  %b.app.nul240 = getelementptr i8, ptr %b.app.data238, i64 %sum207
  store i8 0, ptr %b.app.nul240, align 1
  %b.len.gep241 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load194, i32 0, i32 0
  store i64 %sum207, ptr %b.len.gep241, align 8
  br label %choice.exit47

b.new.buf.len2229:                                ; preds = %str_overflow_abort230, %b.grow2214
  %arena.cur231 = call ptr @dva_arena_current()
  %b.new.buf2232 = call ptr @dva_arena_alloc(ptr %arena.cur231, i64 %sum227)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2232, ptr align 1 %b.cur.data2225, i64 %b.cur.len2223, i1 false)
  %b.grow2.nul233 = getelementptr i8, ptr %b.new.buf2232, i64 %b.cur.len2223
  store i8 0, ptr %b.grow2.nul233, align 1
  %b.new.data2.gep234 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load194, i32 0, i32 1
  store ptr %b.new.buf2232, ptr %b.new.data2.gep234, align 8
  %b.new.cap2.gep235 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load194, i32 0, i32 2
  store i64 %b.new.cap221, ptr %b.new.cap2.gep235, align 8
  br label %b.grow_done216

str_overflow_abort230:                            ; preds = %b.grow2214
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2229

choice.case242:                                   ; preds = %choice.next192
  %b.load245 = load ptr, ptr %var.b, align 8
  %app.str.len246 = load i64, ptr @str.22.struct, align 8
  %app.str.len247 = and i64 %app.str.len246, 281474976710655
  %str.tag248 = lshr i64 %app.str.len246, 48
  %str.immortal249 = icmp eq i64 %str.tag248, 0
  br i1 %str.immortal249, label %str_ok251, label %str_gen_check250

choice.next243:                                   ; preds = %choice.next192
  %b.load293 = load ptr, ptr %var.b, align 8
  %var.load294 = load i64, ptr %var.c, align 8
  %b.b.ge0 = icmp sge i64 %var.load294, 0
  %b.b.le255 = icmp sle i64 %var.load294, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

str_gen_check250:                                 ; preds = %choice.case242
  %arena.cur253 = call ptr @dva_arena_current()
  %tag.valid254 = call i1 @dva_arena_validate_tag(ptr %arena.cur253, i64 %str.tag248)
  br i1 %tag.valid254, label %str_ok251, label %str_stale252

str_ok251:                                        ; preds = %str_stale252, %str_gen_check250, %choice.case242
  %b.app.cur.len255 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load245, i32 0, i32 0
  %b.app.cur.len256 = load i64, ptr %b.app.cur.len255, align 8
  %b.app.new.len257 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len256, i64 %app.str.len247)
  %sum258 = extractvalue { i64, i1 } %b.app.new.len257, 0
  %ovf259 = extractvalue { i64, i1 } %b.app.new.len257, 1
  br i1 %ovf259, label %str_overflow_abort261, label %b.app.new.len260

str_stale252:                                     ; preds = %str_gen_check250
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok251

b.app.new.len260:                                 ; preds = %str_overflow_abort261, %str_ok251
  %b.cap262 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load245, i32 0, i32 2
  %b.cap263 = load i64, ptr %b.cap262, align 8
  %b.need.grow264 = icmp slt i64 %b.cap263, %sum258
  br i1 %b.need.grow264, label %b.grow2265, label %b.nogrow2266

str_overflow_abort261:                            ; preds = %str_ok251
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len260

b.grow2265:                                       ; preds = %b.app.new.len260
  %b.cap2268 = mul i64 %b.cap263, 2
  %b.cap.small269 = icmp slt i64 %b.cap2268, 16
  %b.cap.grow270 = select i1 %b.cap.small269, i64 16, i64 %b.cap2268
  %b.cap.need271 = icmp slt i64 %b.cap.grow270, %sum258
  %b.new.cap272 = select i1 %b.cap.need271, i64 %sum258, i64 %b.cap.grow270
  %b.cur.len2273 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load245, i32 0, i32 0
  %b.cur.len2274 = load i64, ptr %b.cur.len2273, align 8
  %b.cur.data2275 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load245, i32 0, i32 1
  %b.cur.data2276 = load ptr, ptr %b.cur.data2275, align 8
  %b.new.buf.len2277 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap272, i64 1)
  %sum278 = extractvalue { i64, i1 } %b.new.buf.len2277, 0
  %ovf279 = extractvalue { i64, i1 } %b.new.buf.len2277, 1
  br i1 %ovf279, label %str_overflow_abort281, label %b.new.buf.len2280

b.nogrow2266:                                     ; preds = %b.app.new.len260
  br label %b.grow_done267

b.grow_done267:                                   ; preds = %b.nogrow2266, %b.new.buf.len2280
  %app.str.data287 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.22.struct, i32 0, i32 1), align 8
  %b.app.data288 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load245, i32 0, i32 1
  %b.app.data289 = load ptr, ptr %b.app.data288, align 8
  %b.app.dst290 = getelementptr i8, ptr %b.app.data289, i64 %b.app.cur.len256
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst290, ptr align 1 %app.str.data287, i64 %app.str.len247, i1 false)
  %b.app.nul291 = getelementptr i8, ptr %b.app.data289, i64 %sum258
  store i8 0, ptr %b.app.nul291, align 1
  %b.len.gep292 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load245, i32 0, i32 0
  store i64 %sum258, ptr %b.len.gep292, align 8
  br label %choice.exit47

b.new.buf.len2280:                                ; preds = %str_overflow_abort281, %b.grow2265
  %arena.cur282 = call ptr @dva_arena_current()
  %b.new.buf2283 = call ptr @dva_arena_alloc(ptr %arena.cur282, i64 %sum278)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2283, ptr align 1 %b.cur.data2276, i64 %b.cur.len2274, i1 false)
  %b.grow2.nul284 = getelementptr i8, ptr %b.new.buf2283, i64 %b.cur.len2274
  store i8 0, ptr %b.grow2.nul284, align 1
  %b.new.data2.gep285 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load245, i32 0, i32 1
  store ptr %b.new.buf2283, ptr %b.new.data2.gep285, align 8
  %b.new.cap2.gep286 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load245, i32 0, i32 2
  store i64 %b.new.cap272, ptr %b.new.cap2.gep286, align 8
  br label %b.grow_done267

str_overflow_abort281:                            ; preds = %b.grow2265
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2280

b.byte_ok:                                        ; preds = %b.byte_err, %choice.next243
  %b.byte.i8 = trunc i64 %var.load294 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load293, i32 0, i32 0
  %b.len295 = load i64, ptr %b.len, align 8
  %b.cap296 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load293, i32 0, i32 2
  %b.cap297 = load i64, ptr %b.cap296, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load293, i32 0, i32 1
  %b.data298 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len295, %b.cap297
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.next243
  %23 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2299 = mul i64 %b.cap297, 2
  %b.cap.small300 = icmp slt i64 %b.cap2299, 16
  %b.new.cap301 = select i1 %b.cap.small300, i64 16, i64 %b.cap2299
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap301, i64 1)
  %sum302 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf303 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf303, label %str_overflow_abort305, label %b.new.buf.len304

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len304
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load293, i32 0, i32 1
  %b.cur.data307 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load293, i32 0, i32 0
  %b.cur.len308 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data307, i64 %b.cur.len308
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len308, 1
  %b.nul = getelementptr i8, ptr %b.cur.data307, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep309 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load293, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep309, align 8
  br label %choice.exit47

b.new.buf.len304:                                 ; preds = %str_overflow_abort305, %b.grow
  %arena.cur306 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur306, i64 %sum302)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data298, i64 %b.len295, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len295
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load293, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load293, i32 0, i32 2
  store i64 %b.new.cap301, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort305:                            ; preds = %b.grow
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len304

b.rn.new.len316:                                  ; preds = %str_overflow_abort317, %loop.exit.87
  %b.cap318 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load310, i32 0, i32 2
  %b.cap319 = load i64, ptr %b.cap318, align 8
  %b.need.grow320 = icmp slt i64 %b.cap319, %sum314
  br i1 %b.need.grow320, label %b.grow2321, label %b.nogrow2322

str_overflow_abort317:                            ; preds = %loop.exit.87
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len316

b.grow2321:                                       ; preds = %b.rn.new.len316
  %b.cap2324 = mul i64 %b.cap319, 2
  %b.cap.small325 = icmp slt i64 %b.cap2324, 16
  %b.cap.grow326 = select i1 %b.cap.small325, i64 16, i64 %b.cap2324
  %b.cap.need327 = icmp slt i64 %b.cap.grow326, %sum314
  %b.new.cap328 = select i1 %b.cap.need327, i64 %sum314, i64 %b.cap.grow326
  %b.cur.len2329 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load310, i32 0, i32 0
  %b.cur.len2330 = load i64, ptr %b.cur.len2329, align 8
  %b.cur.data2331 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load310, i32 0, i32 1
  %b.cur.data2332 = load ptr, ptr %b.cur.data2331, align 8
  %b.new.buf.len2333 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap328, i64 1)
  %sum334 = extractvalue { i64, i1 } %b.new.buf.len2333, 0
  %ovf335 = extractvalue { i64, i1 } %b.new.buf.len2333, 1
  br i1 %ovf335, label %str_overflow_abort337, label %b.new.buf.len2336

b.nogrow2322:                                     ; preds = %b.rn.new.len316
  br label %b.grow_done323

b.grow_done323:                                   ; preds = %b.nogrow2322, %b.new.buf.len2336
  %b.rn.data343 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load310, i32 0, i32 1
  %b.rn.data344 = load ptr, ptr %b.rn.data343, align 8
  %b.rn.dst345 = getelementptr i8, ptr %b.rn.data344, i64 %b.rn.cur.len312
  br i1 true, label %br.b1.88, label %br.c2.88

b.new.buf.len2336:                                ; preds = %str_overflow_abort337, %b.grow2321
  %arena.cur338 = call ptr @dva_arena_current()
  %b.new.buf2339 = call ptr @dva_arena_alloc(ptr %arena.cur338, i64 %sum334)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2339, ptr align 1 %b.cur.data2332, i64 %b.cur.len2330, i1 false)
  %b.grow2.nul340 = getelementptr i8, ptr %b.new.buf2339, i64 %b.cur.len2330
  store i8 0, ptr %b.grow2.nul340, align 1
  %b.new.data2.gep341 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load310, i32 0, i32 1
  store ptr %b.new.buf2339, ptr %b.new.data2.gep341, align 8
  %b.new.cap2.gep342 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load310, i32 0, i32 2
  store i64 %b.new.cap328, ptr %b.new.cap2.gep342, align 8
  br label %b.grow_done323

str_overflow_abort337:                            ; preds = %b.grow2321
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2336

br.b1.88:                                         ; preds = %b.grow_done323
  store i8 34, ptr %b.rn.dst345, align 1
  br label %br.done.88

br.c2.88:                                         ; preds = %b.grow_done323
  br i1 true, label %br.b2.88, label %br.c3.88

br.b2.88:                                         ; preds = %br.c2.88
  store i8 -64, ptr %b.rn.dst345, align 1
  %br.dst1346 = getelementptr i8, ptr %b.rn.dst345, i64 1
  store i8 -94, ptr %br.dst1346, align 1
  br label %br.done.88

br.c3.88:                                         ; preds = %br.c2.88
  br i1 true, label %br.b3.88, label %br.b4.88

br.b3.88:                                         ; preds = %br.c3.88
  store i8 -32, ptr %b.rn.dst345, align 1
  %br.dst1.3347 = getelementptr i8, ptr %b.rn.dst345, i64 1
  store i8 -128, ptr %br.dst1.3347, align 1
  %br.dst2.3348 = getelementptr i8, ptr %b.rn.dst345, i64 2
  store i8 -94, ptr %br.dst2.3348, align 1
  br label %br.done.88

br.b4.88:                                         ; preds = %br.c3.88
  store i8 -16, ptr %b.rn.dst345, align 1
  %br.dst1.4349 = getelementptr i8, ptr %b.rn.dst345, i64 1
  store i8 -128, ptr %br.dst1.4349, align 1
  %br.dst2.4350 = getelementptr i8, ptr %b.rn.dst345, i64 2
  store i8 -128, ptr %br.dst2.4350, align 1
  %br.dst3.4351 = getelementptr i8, ptr %b.rn.dst345, i64 3
  store i8 -94, ptr %br.dst3.4351, align 1
  br label %br.done.88

br.done.88:                                       ; preds = %br.b4.88, %br.b3.88, %br.b2.88, %br.b1.88
  %br.nul352 = getelementptr i8, ptr %b.rn.data344, i64 %sum314
  store i8 0, ptr %br.nul352, align 1
  %b.len.gep353 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load310, i32 0, i32 0
  store i64 %sum314, ptr %b.len.gep353, align 8
  %var.load354 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load354, i32 0, i32 0
  %b.freeze.len355 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load354, i32 0, i32 1
  %b.freeze.data356 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %br.done.88
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data356, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data356, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data356, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len355, 1
  %arena.cur357 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur357, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data356, i64 %b.freeze.len355, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len355
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %br.done.88
  %b.freeze.data358 = phi ptr [ %b.freeze.data356, %br.done.88 ], [ %b.freeze.data356, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur359 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur359, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len355, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data358, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load354, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load354, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load354, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

define internal ptr @"log::#append_fields"(ptr %0, ptr %1) #1 {
entry:
  %var.f = alloca ptr, align 8
  %var._139 = alloca i64, align 8
  %var._i138 = alloca i64, align 8
  %loop.step.91 = alloca i64, align 8
  %loop.idx.91 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.89 = alloca i64, align 8
  %loop.idx.89 = alloca i64, align 8
  %"var.total'" = alloca i64, align 8
  %var.fields = alloca ptr, align 8
  %var.msg = alloca ptr, align 8
  store ptr %0, ptr %var.msg, align 8
  store ptr %1, ptr %var.fields, align 8
  %var.load = load ptr, ptr %var.fields, align 8
  %a.load = load ptr, ptr %var.fields, align 8
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
  store ptr %a.create1, ptr %var.fields, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.fields, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query3 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp eq i64 %a.len.query3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %a.after
  %var.load4 = load ptr, ptr %var.msg, align 8
  ret ptr %var.load4

choice.exit:                                      ; preds = %ret.dead, %a.after
  %var.load5 = load ptr, ptr %var.msg, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %str.tag = lshr i64 %str.len.query6, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check:                                    ; preds = %choice.exit
  %arena.cur8 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur8, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  store i64 %str.len.query7, ptr %"var.total'", align 8
  %var.load9 = load ptr, ptr %var.fields, align 8
  %a.load10 = load ptr, ptr %var.fields, align 8
  %a.null11 = icmp eq ptr %a.load10, null
  br i1 %a.null11, label %a.create12, label %a.after13

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

a.create12:                                       ; preds = %str_ok
  %arena.cur14 = call ptr @dva_arena_current()
  %a.create15 = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 24)
  %arena.cur16 = call ptr @dva_arena_current()
  %a.buf17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 128)
  %a.len.gep18 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 0
  store i64 0, ptr %a.len.gep18, align 8
  %a.data.gep19 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 1
  store ptr %a.buf17, ptr %a.data.gep19, align 8
  %a.cap.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 2
  store i64 16, ptr %a.cap.gep20, align 8
  store ptr %a.create15, ptr %var.fields, align 8
  br label %a.after13

a.after13:                                        ; preds = %a.create12, %str_ok
  %a.load221 = load ptr, ptr %var.fields, align 8
  %a.len.query22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load221, i32 0, i32 0
  %a.len.query23 = load i64, ptr %a.len.query22, align 8
  store i64 0, ptr %loop.idx.89, align 8
  br label %loop.header.89

loop.header.89:                                   ; preds = %loop.latch.89, %a.after13
  %counter.load = load i64, ptr %loop.idx.89, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query23
  br i1 %loop.cond, label %loop.body.89, label %loop.exit.nat.89

loop.body.89:                                     ; preds = %loop.header.89
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.89, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load24 = load i64, ptr %"var.total'", align 8
  %addtmp = add i64 %var.load24, 1
  %var.load25 = load ptr, ptr %var.fields, align 8
  %a.load26 = load ptr, ptr %var.fields, align 8
  %a.null27 = icmp eq ptr %a.load26, null
  br i1 %a.null27, label %a.create28, label %a.after29

loop.exit.nat.89:                                 ; preds = %loop.header.89
  br label %loop.exit.89

loop.latch.89:                                    ; preds = %str_ok84
  %step.val = load i64, ptr %loop.step.89, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.89, align 8
  br label %loop.header.89

loop.exit.89:                                     ; preds = %loop.exit.nat.89
  %var.load89 = load i64, ptr %"var.total'", align 8
  %addtmp90 = add i64 %var.load89, 8
  %arena.cur91 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 24)
  %cap.neg = icmp slt i64 %addtmp90, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp90
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len92

a.create28:                                       ; preds = %loop.body.89
  %arena.cur30 = call ptr @dva_arena_current()
  %a.create31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 24)
  %arena.cur32 = call ptr @dva_arena_current()
  %a.buf33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 128)
  %a.len.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 0
  store i64 0, ptr %a.len.gep34, align 8
  %a.data.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 1
  store ptr %a.buf33, ptr %a.data.gep35, align 8
  %a.cap.gep36 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 2
  store i64 16, ptr %a.cap.gep36, align 8
  store ptr %a.create31, ptr %var.fields, align 8
  br label %a.after29

a.after29:                                        ; preds = %a.create28, %loop.body.89
  %a.load237 = load ptr, ptr %var.fields, align 8
  %var.load38 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %a.load237, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after29
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load237, i32 0, i32 0
  %a.rd.len39 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load38, 0
  %a.rd.lt = icmp slt i64 %var.load38, %a.rd.len39
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load237, i32 0, i32 1
  %a.rd.data40 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data40, i64 %var.load38
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after29
  %arena.cur41 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.23.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.24.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 126, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 43, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur42 = call ptr @dva_arena_current()
  %err.alloc43 = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 56)
  %err.code.gep44 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 0
  store i64 4011, ptr %err.code.gep44, align 8
  %err.msg.gep45 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 1
  store ptr @str.25.struct, ptr %err.msg.gep45, align 8
  %err.file.gep46 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 2
  store ptr @str.24.struct, ptr %err.file.gep46, align 8
  %err.line.gep47 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 3
  store i64 126, ptr %err.line.gep47, align 8
  %err.col.gep48 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 4
  store i64 43, ptr %err.col.gep48, align 8
  %err.ctx.gep49 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 5
  %err.ctx0.gep50 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep49, i32 0, i32 0
  store i64 %var.load38, ptr %err.ctx0.gep50, align 8
  %err.ctx1.gep51 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep49, i32 0, i32 1
  store i64 %a.rd.len39, ptr %err.ctx1.gep51, align 8
  %err.p2i52 = ptrtoint ptr %err.alloc43 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i52, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.90, label %unwrap.abort.90

unwrap.pos.90:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  %str.len.query78 = getelementptr inbounds { i64, ptr }, ptr %pay.ptr, i32 0, i32 0
  %str.len.query79 = load i64, ptr %str.len.query78, align 8
  %str.len.query80 = and i64 %str.len.query79, 281474976710655
  %str.tag81 = lshr i64 %str.len.query79, 48
  %str.immortal82 = icmp eq i64 %str.tag81, 0
  br i1 %str.immortal82, label %str_ok84, label %str_gen_check83

unwrap.abort.90:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep53 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep53, align 8
  %err.msg.gep54 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep54, align 8
  %err.file.gep55 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep55, align 8
  %err.line.gep56 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep56, align 8
  %err.col.gep57 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep57, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len58 = load i64, ptr %err.msg.len, align 8
  %err.msg.len59 = and i64 %err.msg.len58, 281474976710655
  %str.tag60 = lshr i64 %err.msg.len58, 48
  %str.immortal61 = icmp eq i64 %str.tag60, 0
  br i1 %str.immortal61, label %str_ok63, label %str_gen_check62

str_gen_check62:                                  ; preds = %unwrap.abort.90
  %arena.cur65 = call ptr @dva_arena_current()
  %tag.valid66 = call i1 @dva_arena_validate_tag(ptr %arena.cur65, i64 %str.tag60)
  br i1 %tag.valid66, label %str_ok63, label %str_stale64

str_ok63:                                         ; preds = %str_stale64, %str_gen_check62, %unwrap.abort.90
  %err.msg.len32 = trunc i64 %err.msg.len59 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data67 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len68 = load i64, ptr %err.file.len, align 8
  %err.file.len69 = and i64 %err.file.len68, 281474976710655
  %str.tag70 = lshr i64 %err.file.len68, 48
  %str.immortal71 = icmp eq i64 %str.tag70, 0
  br i1 %str.immortal71, label %str_ok73, label %str_gen_check72

str_stale64:                                      ; preds = %str_gen_check62
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok63

str_gen_check72:                                  ; preds = %str_ok63
  %arena.cur75 = call ptr @dva_arena_current()
  %tag.valid76 = call i1 @dva_arena_validate_tag(ptr %arena.cur75, i64 %str.tag70)
  br i1 %tag.valid76, label %str_ok73, label %str_stale74

str_ok73:                                         ; preds = %str_stale74, %str_gen_check72, %str_ok63
  %err.file.len32 = trunc i64 %err.file.len69 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data77 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale74:                                      ; preds = %str_gen_check72
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok73

err.thread:                                       ; preds = %str_ok73
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok73
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data67, i32 %err.file.len32, ptr %err.file.data77, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

str_gen_check83:                                  ; preds = %unwrap.pos.90
  %arena.cur86 = call ptr @dva_arena_current()
  %tag.valid87 = call i1 @dva_arena_validate_tag(ptr %arena.cur86, i64 %str.tag81)
  br i1 %tag.valid87, label %str_ok84, label %str_stale85

str_ok84:                                         ; preds = %str_stale85, %str_gen_check83, %unwrap.pos.90
  %addtmp88 = add i64 %addtmp, %str.len.query80
  store i64 %addtmp88, ptr %"var.total'", align 8
  br label %loop.latch.89

str_stale85:                                      ; preds = %str_gen_check83
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok84

b.buf.len92:                                      ; preds = %str_overflow_abort, %loop.exit.89
  %arena.cur93 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load94 = load ptr, ptr %var.msg, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load94, i32 0, i32 0
  %app.str.len95 = load i64, ptr %app.str.len, align 8
  %app.str.len96 = and i64 %app.str.len95, 281474976710655
  %str.tag97 = lshr i64 %app.str.len95, 48
  %str.immortal98 = icmp eq i64 %str.tag97, 0
  br i1 %str.immortal98, label %str_ok100, label %str_gen_check99

str_overflow_abort:                               ; preds = %loop.exit.89
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len92

str_gen_check99:                                  ; preds = %b.buf.len92
  %arena.cur102 = call ptr @dva_arena_current()
  %tag.valid103 = call i1 @dva_arena_validate_tag(ptr %arena.cur102, i64 %str.tag97)
  br i1 %tag.valid103, label %str_ok100, label %str_stale101

str_ok100:                                        ; preds = %str_stale101, %str_gen_check99, %b.buf.len92
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len104 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len104, i64 %app.str.len96)
  %sum105 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf106 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf106, label %str_overflow_abort108, label %b.app.new.len107

str_stale101:                                     ; preds = %str_gen_check99
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok100

b.app.new.len107:                                 ; preds = %str_overflow_abort108, %str_ok100
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap109 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap109, %sum105
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort108:                            ; preds = %str_ok100
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len107

b.grow2:                                          ; preds = %b.app.new.len107
  %b.cap2 = mul i64 %b.cap109, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum105
  %b.new.cap = select i1 %b.cap.need, i64 %sum105, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len2110 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data2111 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum112 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf113 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf113, label %str_overflow_abort115, label %b.new.buf.len2114

b.nogrow2:                                        ; preds = %b.app.new.len107
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2114
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load94, i32 0, i32 1
  %app.str.data117 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data118 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data118, i64 %b.app.cur.len104
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data117, i64 %app.str.len96, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data118, i64 %sum105
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep119 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum105, ptr %b.len.gep119, align 8
  %var.load120 = load ptr, ptr %var.fields, align 8
  %a.load121 = load ptr, ptr %var.fields, align 8
  %a.null122 = icmp eq ptr %a.load121, null
  br i1 %a.null122, label %a.create123, label %a.after124

b.new.buf.len2114:                                ; preds = %str_overflow_abort115, %b.grow2
  %arena.cur116 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 %sum112)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2111, i64 %b.cur.len2110, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2110
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort115:                            ; preds = %b.grow2
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2114

a.create123:                                      ; preds = %b.grow_done
  %arena.cur125 = call ptr @dva_arena_current()
  %a.create126 = call ptr @dva_arena_alloc(ptr %arena.cur125, i64 24)
  %arena.cur127 = call ptr @dva_arena_current()
  %a.buf128 = call ptr @dva_arena_alloc(ptr %arena.cur127, i64 128)
  %a.len.gep129 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create126, i32 0, i32 0
  store i64 0, ptr %a.len.gep129, align 8
  %a.data.gep130 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create126, i32 0, i32 1
  store ptr %a.buf128, ptr %a.data.gep130, align 8
  %a.cap.gep131 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create126, i32 0, i32 2
  store i64 16, ptr %a.cap.gep131, align 8
  store ptr %a.create126, ptr %var.fields, align 8
  br label %a.after124

a.after124:                                       ; preds = %a.create123, %b.grow_done
  %a.load2132 = load ptr, ptr %var.fields, align 8
  %a.len.query133 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2132, i32 0, i32 0
  %a.len.query134 = load i64, ptr %a.len.query133, align 8
  store i64 0, ptr %loop.idx.91, align 8
  br label %loop.header.91

loop.header.91:                                   ; preds = %loop.latch.91, %a.after124
  %counter.load135 = load i64, ptr %loop.idx.91, align 8
  %loop.cond136 = icmp slt i64 %counter.load135, %a.len.query134
  br i1 %loop.cond136, label %loop.body.91, label %loop.exit.nat.91

loop.body.91:                                     ; preds = %loop.header.91
  %loop.rel.i137 = sub i64 %counter.load135, 0
  store i64 1, ptr %loop.step.91, align 8
  store i64 %loop.rel.i137, ptr %var._i138, align 8
  store i64 %counter.load135, ptr %var._139, align 8
  store i64 %counter.load135, ptr %var.i, align 8
  %var.load140 = load ptr, ptr %var.fields, align 8
  %a.load141 = load ptr, ptr %var.fields, align 8
  %a.null142 = icmp eq ptr %a.load141, null
  br i1 %a.null142, label %a.create143, label %a.after144

loop.exit.nat.91:                                 ; preds = %loop.header.91
  br label %loop.exit.91

loop.latch.91:                                    ; preds = %choice.exit256
  %step.val341 = load i64, ptr %loop.step.91, align 8
  %loop.next342 = add i64 %counter.load135, %step.val341
  store i64 %loop.next342, ptr %loop.idx.91, align 8
  br label %loop.header.91

loop.exit.91:                                     ; preds = %loop.exit.nat.91
  %var.load343 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load343, i32 0, i32 0
  %b.freeze.len344 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load343, i32 0, i32 1
  %b.freeze.data345 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

a.create143:                                      ; preds = %loop.body.91
  %arena.cur145 = call ptr @dva_arena_current()
  %a.create146 = call ptr @dva_arena_alloc(ptr %arena.cur145, i64 24)
  %arena.cur147 = call ptr @dva_arena_current()
  %a.buf148 = call ptr @dva_arena_alloc(ptr %arena.cur147, i64 128)
  %a.len.gep149 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create146, i32 0, i32 0
  store i64 0, ptr %a.len.gep149, align 8
  %a.data.gep150 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create146, i32 0, i32 1
  store ptr %a.buf148, ptr %a.data.gep150, align 8
  %a.cap.gep151 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create146, i32 0, i32 2
  store i64 16, ptr %a.cap.gep151, align 8
  store ptr %a.create146, ptr %var.fields, align 8
  br label %a.after144

a.after144:                                       ; preds = %a.create143, %loop.body.91
  %a.load2152 = load ptr, ptr %var.fields, align 8
  %var.load153 = load i64, ptr %var.i, align 8
  %a.rd.nonnull154 = icmp ne ptr %a.load2152, null
  br i1 %a.rd.nonnull154, label %a.rd.check155, label %a.rd.err.null157

a.rd.check155:                                    ; preds = %a.after144
  %a.rd.len160 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2152, i32 0, i32 0
  %a.rd.len161 = load i64, ptr %a.rd.len160, align 8
  %a.rd.ge0162 = icmp sge i64 %var.load153, 0
  %a.rd.lt163 = icmp slt i64 %var.load153, %a.rd.len161
  %a.rd.bounds164 = and i1 %a.rd.ge0162, %a.rd.lt163
  br i1 %a.rd.bounds164, label %a.rd.ok156, label %a.rd.err.oob158

a.rd.ok156:                                       ; preds = %a.rd.check155
  %a.rd.data165 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2152, i32 0, i32 1
  %a.rd.data166 = load ptr, ptr %a.rd.data165, align 8
  %a.rd.elem.gep167 = getelementptr i64, ptr %a.rd.data166, i64 %var.load153
  %a.rd.elem168 = load i64, ptr %a.rd.elem.gep167, align 8
  br label %a.rd.done159

a.rd.err.null157:                                 ; preds = %a.after144
  %arena.cur169 = call ptr @dva_arena_current()
  %err.alloc170 = call ptr @dva_arena_alloc(ptr %arena.cur169, i64 56)
  %err.code.gep171 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc170, i32 0, i32 0
  store i64 4011, ptr %err.code.gep171, align 8
  %err.msg.gep172 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc170, i32 0, i32 1
  store ptr @str.23.struct, ptr %err.msg.gep172, align 8
  %err.file.gep173 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc170, i32 0, i32 2
  store ptr @str.24.struct, ptr %err.file.gep173, align 8
  %err.line.gep174 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc170, i32 0, i32 3
  store i64 130, ptr %err.line.gep174, align 8
  %err.col.gep175 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc170, i32 0, i32 4
  store i64 23, ptr %err.col.gep175, align 8
  %err.ctx.gep176 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc170, i32 0, i32 5
  %err.ctx0.gep177 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep176, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep177, align 8
  %err.ctx1.gep178 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep176, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep178, align 8
  %err.p2i179 = ptrtoint ptr %err.alloc170 to i64
  br label %a.rd.done159

a.rd.err.oob158:                                  ; preds = %a.rd.check155
  %arena.cur180 = call ptr @dva_arena_current()
  %err.alloc181 = call ptr @dva_arena_alloc(ptr %arena.cur180, i64 56)
  %err.code.gep182 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc181, i32 0, i32 0
  store i64 4011, ptr %err.code.gep182, align 8
  %err.msg.gep183 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc181, i32 0, i32 1
  store ptr @str.25.struct, ptr %err.msg.gep183, align 8
  %err.file.gep184 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc181, i32 0, i32 2
  store ptr @str.24.struct, ptr %err.file.gep184, align 8
  %err.line.gep185 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc181, i32 0, i32 3
  store i64 130, ptr %err.line.gep185, align 8
  %err.col.gep186 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc181, i32 0, i32 4
  store i64 23, ptr %err.col.gep186, align 8
  %err.ctx.gep187 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc181, i32 0, i32 5
  %err.ctx0.gep188 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep187, i32 0, i32 0
  store i64 %var.load153, ptr %err.ctx0.gep188, align 8
  %err.ctx1.gep189 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep187, i32 0, i32 1
  store i64 %a.rd.len161, ptr %err.ctx1.gep189, align 8
  %err.p2i190 = ptrtoint ptr %err.alloc181 to i64
  br label %a.rd.done159

a.rd.done159:                                     ; preds = %a.rd.err.oob158, %a.rd.err.null157, %a.rd.ok156
  %a.rd.tag191 = phi i1 [ true, %a.rd.ok156 ], [ false, %a.rd.err.null157 ], [ false, %a.rd.err.oob158 ]
  %a.rd.pay192 = phi i64 [ %a.rd.elem168, %a.rd.ok156 ], [ %err.p2i179, %a.rd.err.null157 ], [ %err.p2i190, %a.rd.err.oob158 ]
  %ram.tag193 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag191, 0
  %ram.pay194 = insertvalue { i1, i64 } %ram.tag193, i64 %a.rd.pay192, 1
  %unwrap.is_pos195 = extractvalue { i1, i64 } %ram.pay194, 0
  br i1 %unwrap.is_pos195, label %unwrap.pos.92, label %unwrap.abort.92

unwrap.pos.92:                                    ; preds = %a.rd.done159
  %unwrap.pay.pos241 = extractvalue { i1, i64 } %ram.pay194, 1
  %pay.ptr242 = inttoptr i64 %unwrap.pay.pos241 to ptr
  store ptr %pay.ptr242, ptr %var.f, align 8
  %var.load243 = load ptr, ptr %var.f, align 8
  %str.len.query244 = getelementptr inbounds { i64, ptr }, ptr %var.load243, i32 0, i32 0
  %str.len.query245 = load i64, ptr %str.len.query244, align 8
  %str.len.query246 = and i64 %str.len.query245, 281474976710655
  %str.tag247 = lshr i64 %str.len.query245, 48
  %str.immortal248 = icmp eq i64 %str.tag247, 0
  br i1 %str.immortal248, label %str_ok250, label %str_gen_check249

unwrap.abort.92:                                  ; preds = %a.rd.done159
  %unwrap.pay.abort196 = extractvalue { i1, i64 } %ram.pay194, 1
  %err.ptr197 = inttoptr i64 %unwrap.pay.abort196 to ptr
  %err.code.gep198 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr197, i32 0, i32 0
  %err.code199 = load i64, ptr %err.code.gep198, align 8
  %err.msg.gep200 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr197, i32 0, i32 1
  %err.msg.struct201 = load ptr, ptr %err.msg.gep200, align 8
  %err.file.gep202 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr197, i32 0, i32 2
  %err.file.struct203 = load ptr, ptr %err.file.gep202, align 8
  %err.line.gep204 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr197, i32 0, i32 3
  %err.line205 = load i64, ptr %err.line.gep204, align 8
  %err.col.gep206 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr197, i32 0, i32 4
  %err.col207 = load i64, ptr %err.col.gep206, align 8
  %err.msg.len208 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct201, i32 0, i32 0
  %err.msg.len209 = load i64, ptr %err.msg.len208, align 8
  %err.msg.len210 = and i64 %err.msg.len209, 281474976710655
  %str.tag211 = lshr i64 %err.msg.len209, 48
  %str.immortal212 = icmp eq i64 %str.tag211, 0
  br i1 %str.immortal212, label %str_ok214, label %str_gen_check213

str_gen_check213:                                 ; preds = %unwrap.abort.92
  %arena.cur216 = call ptr @dva_arena_current()
  %tag.valid217 = call i1 @dva_arena_validate_tag(ptr %arena.cur216, i64 %str.tag211)
  br i1 %tag.valid217, label %str_ok214, label %str_stale215

str_ok214:                                        ; preds = %str_stale215, %str_gen_check213, %unwrap.abort.92
  %err.msg.len32218 = trunc i64 %err.msg.len210 to i32
  %err.msg.data219 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct201, i32 0, i32 1
  %err.msg.data220 = load ptr, ptr %err.msg.data219, align 8
  %err.file.len221 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct203, i32 0, i32 0
  %err.file.len222 = load i64, ptr %err.file.len221, align 8
  %err.file.len223 = and i64 %err.file.len222, 281474976710655
  %str.tag224 = lshr i64 %err.file.len222, 48
  %str.immortal225 = icmp eq i64 %str.tag224, 0
  br i1 %str.immortal225, label %str_ok227, label %str_gen_check226

str_stale215:                                     ; preds = %str_gen_check213
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok214

str_gen_check226:                                 ; preds = %str_ok214
  %arena.cur229 = call ptr @dva_arena_current()
  %tag.valid230 = call i1 @dva_arena_validate_tag(ptr %arena.cur229, i64 %str.tag224)
  br i1 %tag.valid230, label %str_ok227, label %str_stale228

str_ok227:                                        ; preds = %str_stale228, %str_gen_check226, %str_ok214
  %err.file.len32231 = trunc i64 %err.file.len223 to i32
  %err.file.data232 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct203, i32 0, i32 1
  %err.file.data233 = load ptr, ptr %err.file.data232, align 8
  %err.thread.rec234 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread235 = icmp ne ptr %err.thread.rec234, null
  br i1 %err.is.thread235, label %err.thread236, label %err.normal237

str_stale228:                                     ; preds = %str_gen_check226
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok227

err.thread236:                                    ; preds = %str_ok227
  %err.haserr.gep238 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec234, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep238, align 8
  %err.err.gep239 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec234, i32 0, i32 7
  store ptr %err.ptr197, ptr %err.err.gep239, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal237:                                    ; preds = %str_ok227
  %err.panic.printf240 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code199, i32 %err.msg.len32218, ptr %err.msg.data220, i32 %err.file.len32231, ptr %err.file.data233, i64 %err.line205, i64 %err.col207)
  call void @exit(i32 1)
  unreachable

str_gen_check249:                                 ; preds = %unwrap.pos.92
  %arena.cur252 = call ptr @dva_arena_current()
  %tag.valid253 = call i1 @dva_arena_validate_tag(ptr %arena.cur252, i64 %str.tag247)
  br i1 %tag.valid253, label %str_ok250, label %str_stale251

str_ok250:                                        ; preds = %str_stale251, %str_gen_check249, %unwrap.pos.92
  %cmptmp254 = icmp sgt i64 %str.len.query246, 0
  br i1 %cmptmp254, label %choice.then255, label %choice.exit256

str_stale251:                                     ; preds = %str_gen_check249
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok250

choice.then255:                                   ; preds = %str_ok250
  %b.load257 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load257, i32 0, i32 0
  %b.rn.cur.len258 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len258, i64 1)
  %sum259 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf260 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf260, label %str_overflow_abort262, label %b.rn.new.len261

choice.exit256:                                   ; preds = %b.grow_done314, %str_ok250
  br label %loop.latch.91

b.rn.new.len261:                                  ; preds = %str_overflow_abort262, %choice.then255
  %b.cap263 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load257, i32 0, i32 2
  %b.cap264 = load i64, ptr %b.cap263, align 8
  %b.need.grow265 = icmp slt i64 %b.cap264, %sum259
  br i1 %b.need.grow265, label %b.grow2266, label %b.nogrow2267

str_overflow_abort262:                            ; preds = %choice.then255
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len261

b.grow2266:                                       ; preds = %b.rn.new.len261
  %b.cap2269 = mul i64 %b.cap264, 2
  %b.cap.small270 = icmp slt i64 %b.cap2269, 16
  %b.cap.grow271 = select i1 %b.cap.small270, i64 16, i64 %b.cap2269
  %b.cap.need272 = icmp slt i64 %b.cap.grow271, %sum259
  %b.new.cap273 = select i1 %b.cap.need272, i64 %sum259, i64 %b.cap.grow271
  %b.cur.len2274 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load257, i32 0, i32 0
  %b.cur.len2275 = load i64, ptr %b.cur.len2274, align 8
  %b.cur.data2276 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load257, i32 0, i32 1
  %b.cur.data2277 = load ptr, ptr %b.cur.data2276, align 8
  %b.new.buf.len2278 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap273, i64 1)
  %sum279 = extractvalue { i64, i1 } %b.new.buf.len2278, 0
  %ovf280 = extractvalue { i64, i1 } %b.new.buf.len2278, 1
  br i1 %ovf280, label %str_overflow_abort282, label %b.new.buf.len2281

b.nogrow2267:                                     ; preds = %b.rn.new.len261
  br label %b.grow_done268

b.grow_done268:                                   ; preds = %b.nogrow2267, %b.new.buf.len2281
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load257, i32 0, i32 1
  %b.rn.data288 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data288, i64 %b.rn.cur.len258
  br i1 true, label %br.b1.93, label %br.c2.93

b.new.buf.len2281:                                ; preds = %str_overflow_abort282, %b.grow2266
  %arena.cur283 = call ptr @dva_arena_current()
  %b.new.buf2284 = call ptr @dva_arena_alloc(ptr %arena.cur283, i64 %sum279)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2284, ptr align 1 %b.cur.data2277, i64 %b.cur.len2275, i1 false)
  %b.grow2.nul285 = getelementptr i8, ptr %b.new.buf2284, i64 %b.cur.len2275
  store i8 0, ptr %b.grow2.nul285, align 1
  %b.new.data2.gep286 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load257, i32 0, i32 1
  store ptr %b.new.buf2284, ptr %b.new.data2.gep286, align 8
  %b.new.cap2.gep287 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load257, i32 0, i32 2
  store i64 %b.new.cap273, ptr %b.new.cap2.gep287, align 8
  br label %b.grow_done268

str_overflow_abort282:                            ; preds = %b.grow2266
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2281

br.b1.93:                                         ; preds = %b.grow_done268
  store i8 32, ptr %b.rn.dst, align 1
  br label %br.done.93

br.c2.93:                                         ; preds = %b.grow_done268
  br i1 true, label %br.b2.93, label %br.c3.93

br.b2.93:                                         ; preds = %br.c2.93
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -96, ptr %br.dst1, align 1
  br label %br.done.93

br.c3.93:                                         ; preds = %br.c2.93
  br i1 true, label %br.b3.93, label %br.b4.93

br.b3.93:                                         ; preds = %br.c3.93
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -96, ptr %br.dst2.3, align 1
  br label %br.done.93

br.b4.93:                                         ; preds = %br.c3.93
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -96, ptr %br.dst3.4, align 1
  br label %br.done.93

br.done.93:                                       ; preds = %br.b4.93, %br.b3.93, %br.b2.93, %br.b1.93
  %br.nul = getelementptr i8, ptr %b.rn.data288, i64 %sum259
  store i8 0, ptr %br.nul, align 1
  %b.len.gep289 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load257, i32 0, i32 0
  store i64 %sum259, ptr %b.len.gep289, align 8
  %b.load290 = load ptr, ptr %var.b, align 8
  %var.load291 = load ptr, ptr %var.f, align 8
  %app.str.len292 = getelementptr inbounds { i64, ptr }, ptr %var.load291, i32 0, i32 0
  %app.str.len293 = load i64, ptr %app.str.len292, align 8
  %app.str.len294 = and i64 %app.str.len293, 281474976710655
  %str.tag295 = lshr i64 %app.str.len293, 48
  %str.immortal296 = icmp eq i64 %str.tag295, 0
  br i1 %str.immortal296, label %str_ok298, label %str_gen_check297

str_gen_check297:                                 ; preds = %br.done.93
  %arena.cur300 = call ptr @dva_arena_current()
  %tag.valid301 = call i1 @dva_arena_validate_tag(ptr %arena.cur300, i64 %str.tag295)
  br i1 %tag.valid301, label %str_ok298, label %str_stale299

str_ok298:                                        ; preds = %str_stale299, %str_gen_check297, %br.done.93
  %b.app.cur.len302 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 0
  %b.app.cur.len303 = load i64, ptr %b.app.cur.len302, align 8
  %b.app.new.len304 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len303, i64 %app.str.len294)
  %sum305 = extractvalue { i64, i1 } %b.app.new.len304, 0
  %ovf306 = extractvalue { i64, i1 } %b.app.new.len304, 1
  br i1 %ovf306, label %str_overflow_abort308, label %b.app.new.len307

str_stale299:                                     ; preds = %str_gen_check297
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok298

b.app.new.len307:                                 ; preds = %str_overflow_abort308, %str_ok298
  %b.cap309 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 2
  %b.cap310 = load i64, ptr %b.cap309, align 8
  %b.need.grow311 = icmp slt i64 %b.cap310, %sum305
  br i1 %b.need.grow311, label %b.grow2312, label %b.nogrow2313

str_overflow_abort308:                            ; preds = %str_ok298
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len307

b.grow2312:                                       ; preds = %b.app.new.len307
  %b.cap2315 = mul i64 %b.cap310, 2
  %b.cap.small316 = icmp slt i64 %b.cap2315, 16
  %b.cap.grow317 = select i1 %b.cap.small316, i64 16, i64 %b.cap2315
  %b.cap.need318 = icmp slt i64 %b.cap.grow317, %sum305
  %b.new.cap319 = select i1 %b.cap.need318, i64 %sum305, i64 %b.cap.grow317
  %b.cur.len2320 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 0
  %b.cur.len2321 = load i64, ptr %b.cur.len2320, align 8
  %b.cur.data2322 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 1
  %b.cur.data2323 = load ptr, ptr %b.cur.data2322, align 8
  %b.new.buf.len2324 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap319, i64 1)
  %sum325 = extractvalue { i64, i1 } %b.new.buf.len2324, 0
  %ovf326 = extractvalue { i64, i1 } %b.new.buf.len2324, 1
  br i1 %ovf326, label %str_overflow_abort328, label %b.new.buf.len2327

b.nogrow2313:                                     ; preds = %b.app.new.len307
  br label %b.grow_done314

b.grow_done314:                                   ; preds = %b.nogrow2313, %b.new.buf.len2327
  %app.str.data334 = getelementptr inbounds { i64, ptr }, ptr %var.load291, i32 0, i32 1
  %app.str.data335 = load ptr, ptr %app.str.data334, align 8
  %b.app.data336 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 1
  %b.app.data337 = load ptr, ptr %b.app.data336, align 8
  %b.app.dst338 = getelementptr i8, ptr %b.app.data337, i64 %b.app.cur.len303
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst338, ptr align 1 %app.str.data335, i64 %app.str.len294, i1 false)
  %b.app.nul339 = getelementptr i8, ptr %b.app.data337, i64 %sum305
  store i8 0, ptr %b.app.nul339, align 1
  %b.len.gep340 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 0
  store i64 %sum305, ptr %b.len.gep340, align 8
  br label %choice.exit256

b.new.buf.len2327:                                ; preds = %str_overflow_abort328, %b.grow2312
  %arena.cur329 = call ptr @dva_arena_current()
  %b.new.buf2330 = call ptr @dva_arena_alloc(ptr %arena.cur329, i64 %sum325)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2330, ptr align 1 %b.cur.data2323, i64 %b.cur.len2321, i1 false)
  %b.grow2.nul331 = getelementptr i8, ptr %b.new.buf2330, i64 %b.cur.len2321
  store i8 0, ptr %b.grow2.nul331, align 1
  %b.new.data2.gep332 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 1
  store ptr %b.new.buf2330, ptr %b.new.data2.gep332, align 8
  %b.new.cap2.gep333 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 2
  store i64 %b.new.cap319, ptr %b.new.cap2.gep333, align 8
  br label %b.grow_done314

str_overflow_abort328:                            ; preds = %b.grow2312
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2327

b.freeze.check:                                   ; preds = %loop.exit.91
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data345, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data345, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data345, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len344, 1
  %arena.cur346 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur346, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data345, i64 %b.freeze.len344, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len344
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.91
  %b.freeze.data347 = phi ptr [ %b.freeze.data345, %loop.exit.91 ], [ %b.freeze.data345, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur348 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur348, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len344, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data347, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load343, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load343, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load343, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define i64 @"log::level_rank"(ptr %0) #1 {
entry:
  %var.lvl = alloca ptr, align 8
  store ptr %0, ptr %var.lvl, align 8
  %var.load = load ptr, ptr %var.lvl, align 8
  %call.res = call ptr @"log::#level_meta"(ptr %var.load)
  %fld.gep = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %call.res, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load
}

define ptr @"log::level_name"(ptr %0) #1 {
entry:
  %var.lvl = alloca ptr, align 8
  store ptr %0, ptr %var.lvl, align 8
  %var.load = load ptr, ptr %var.lvl, align 8
  %call.res = call ptr @"log::#level_meta"(ptr %var.load)
  %fld.gep = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %call.res, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep, align 8
  ret ptr %fld.load
}

define { i1, i64 } @"log::parse_level"(ptr %0) #1 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %call.res = call ptr @"str::trim"(ptr %var.load)
  %call.res1 = call ptr @"str::lower"(ptr %call.res)
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %call.res1, i32 0, i32 0
  %eq.lhs.len2 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len3 = and i64 %eq.lhs.len2, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.next185, %choice.case184, %choice.case117, %choice.case51, %choice.case14, %choice.case
  %choice.res = phi { i1, i64 } [ %ram.pay, %choice.case ], [ %ram.pay50, %choice.case14 ], [ %ram.pay116, %choice.case51 ], [ %ram.pay183, %choice.case117 ], [ %ram.pay280, %choice.case184 ], [ zeroinitializer, %choice.next185 ]
  ret { i1, i64 } %choice.res

choice.case:                                      ; preds = %str.eq.merge
  %arena.cur13 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit

choice.next:                                      ; preds = %str.eq.merge
  %eq.lhs.len16 = getelementptr inbounds { i64, ptr }, ptr %call.res1, i32 0, i32 0
  %eq.lhs.len17 = load i64, ptr %eq.lhs.len16, align 8
  %eq.lhs.len18 = and i64 %eq.lhs.len17, 281474976710655
  %str.tag19 = lshr i64 %eq.lhs.len17, 48
  %str.immortal20 = icmp eq i64 %str.tag19, 0
  br i1 %str.immortal20, label %str_ok22, label %str_gen_check21

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.26.struct, align 8
  %eq.rhs.len4 = and i64 %eq.rhs.len, 281474976710655
  %str.tag5 = lshr i64 %eq.rhs.len, 48
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
  %eq.len = icmp eq i64 %eq.lhs.len3, %eq.rhs.len4
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale9:                                       ; preds = %str_gen_check7
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok8

str.eq.then:                                      ; preds = %str_ok8
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %call.res1, i32 0, i32 1
  %eq.lhs.data12 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.26.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data12, ptr %eq.rhs.data, i64 %eq.lhs.len3)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok8
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.case, label %choice.next

choice.case14:                                    ; preds = %str.eq.merge38
  %arena.cur45 = call ptr @dva_arena_current()
  %enum.alloc46 = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 16)
  %tag.gep47 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc46, i32 0, i32 0
  store i64 1, ptr %tag.gep47, align 8
  %pay.gep48 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc46, i32 0, i32 1
  store ptr null, ptr %pay.gep48, align 8
  %p.to.i6449 = ptrtoint ptr %enum.alloc46 to i64
  %ram.pay50 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i6449, 1
  br label %choice.exit

choice.next15:                                    ; preds = %str.eq.merge38
  %eq.lhs.len53 = getelementptr inbounds { i64, ptr }, ptr %call.res1, i32 0, i32 0
  %eq.lhs.len54 = load i64, ptr %eq.lhs.len53, align 8
  %eq.lhs.len55 = and i64 %eq.lhs.len54, 281474976710655
  %str.tag56 = lshr i64 %eq.lhs.len54, 48
  %str.immortal57 = icmp eq i64 %str.tag56, 0
  br i1 %str.immortal57, label %str_ok59, label %str_gen_check58

str_gen_check21:                                  ; preds = %choice.next
  %arena.cur24 = call ptr @dva_arena_current()
  %tag.valid25 = call i1 @dva_arena_validate_tag(ptr %arena.cur24, i64 %str.tag19)
  br i1 %tag.valid25, label %str_ok22, label %str_stale23

str_ok22:                                         ; preds = %str_stale23, %str_gen_check21, %choice.next
  %eq.rhs.len26 = load i64, ptr @str.27.struct, align 8
  %eq.rhs.len27 = and i64 %eq.rhs.len26, 281474976710655
  %str.tag28 = lshr i64 %eq.rhs.len26, 48
  %str.immortal29 = icmp eq i64 %str.tag28, 0
  br i1 %str.immortal29, label %str_ok31, label %str_gen_check30

str_stale23:                                      ; preds = %str_gen_check21
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok22

str_gen_check30:                                  ; preds = %str_ok22
  %arena.cur33 = call ptr @dva_arena_current()
  %tag.valid34 = call i1 @dva_arena_validate_tag(ptr %arena.cur33, i64 %str.tag28)
  br i1 %tag.valid34, label %str_ok31, label %str_stale32

str_ok31:                                         ; preds = %str_stale32, %str_gen_check30, %str_ok22
  %eq.len35 = icmp eq i64 %eq.lhs.len18, %eq.rhs.len27
  br i1 %eq.len35, label %str.eq.then36, label %str.eq.else37

str_stale32:                                      ; preds = %str_gen_check30
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok31

str.eq.then36:                                    ; preds = %str_ok31
  %eq.lhs.data39 = getelementptr inbounds { i64, ptr }, ptr %call.res1, i32 0, i32 1
  %eq.lhs.data40 = load ptr, ptr %eq.lhs.data39, align 8
  %eq.rhs.data41 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.27.struct, i32 0, i32 1), align 8
  %eq.memcmp42 = call i32 @memcmp(ptr %eq.lhs.data40, ptr %eq.rhs.data41, i64 %eq.lhs.len18)
  %eq.cmp.zero43 = icmp eq i32 %eq.memcmp42, 0
  br label %str.eq.merge38

str.eq.else37:                                    ; preds = %str_ok31
  br label %str.eq.merge38

str.eq.merge38:                                   ; preds = %str.eq.else37, %str.eq.then36
  %str.eq.result44 = phi i1 [ %eq.cmp.zero43, %str.eq.then36 ], [ false, %str.eq.else37 ]
  br i1 %str.eq.result44, label %choice.case14, label %choice.next15

choice.case51:                                    ; preds = %str.eq.merge104
  %arena.cur111 = call ptr @dva_arena_current()
  %enum.alloc112 = call ptr @dva_arena_alloc(ptr %arena.cur111, i64 16)
  %tag.gep113 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc112, i32 0, i32 0
  store i64 2, ptr %tag.gep113, align 8
  %pay.gep114 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc112, i32 0, i32 1
  store ptr null, ptr %pay.gep114, align 8
  %p.to.i64115 = ptrtoint ptr %enum.alloc112 to i64
  %ram.pay116 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64115, 1
  br label %choice.exit

choice.next52:                                    ; preds = %str.eq.merge104
  %eq.lhs.len119 = getelementptr inbounds { i64, ptr }, ptr %call.res1, i32 0, i32 0
  %eq.lhs.len120 = load i64, ptr %eq.lhs.len119, align 8
  %eq.lhs.len121 = and i64 %eq.lhs.len120, 281474976710655
  %str.tag122 = lshr i64 %eq.lhs.len120, 48
  %str.immortal123 = icmp eq i64 %str.tag122, 0
  br i1 %str.immortal123, label %str_ok125, label %str_gen_check124

str_gen_check58:                                  ; preds = %choice.next15
  %arena.cur61 = call ptr @dva_arena_current()
  %tag.valid62 = call i1 @dva_arena_validate_tag(ptr %arena.cur61, i64 %str.tag56)
  br i1 %tag.valid62, label %str_ok59, label %str_stale60

str_ok59:                                         ; preds = %str_stale60, %str_gen_check58, %choice.next15
  %eq.rhs.len63 = load i64, ptr @str.28.struct, align 8
  %eq.rhs.len64 = and i64 %eq.rhs.len63, 281474976710655
  %str.tag65 = lshr i64 %eq.rhs.len63, 48
  %str.immortal66 = icmp eq i64 %str.tag65, 0
  br i1 %str.immortal66, label %str_ok68, label %str_gen_check67

str_stale60:                                      ; preds = %str_gen_check58
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok59

str_gen_check67:                                  ; preds = %str_ok59
  %arena.cur70 = call ptr @dva_arena_current()
  %tag.valid71 = call i1 @dva_arena_validate_tag(ptr %arena.cur70, i64 %str.tag65)
  br i1 %tag.valid71, label %str_ok68, label %str_stale69

str_ok68:                                         ; preds = %str_stale69, %str_gen_check67, %str_ok59
  %eq.len72 = icmp eq i64 %eq.lhs.len55, %eq.rhs.len64
  br i1 %eq.len72, label %str.eq.then73, label %str.eq.else74

str_stale69:                                      ; preds = %str_gen_check67
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok68

str.eq.then73:                                    ; preds = %str_ok68
  %eq.lhs.data76 = getelementptr inbounds { i64, ptr }, ptr %call.res1, i32 0, i32 1
  %eq.lhs.data77 = load ptr, ptr %eq.lhs.data76, align 8
  %eq.rhs.data78 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.28.struct, i32 0, i32 1), align 8
  %eq.memcmp79 = call i32 @memcmp(ptr %eq.lhs.data77, ptr %eq.rhs.data78, i64 %eq.lhs.len55)
  %eq.cmp.zero80 = icmp eq i32 %eq.memcmp79, 0
  br label %str.eq.merge75

str.eq.else74:                                    ; preds = %str_ok68
  br label %str.eq.merge75

str.eq.merge75:                                   ; preds = %str.eq.else74, %str.eq.then73
  %str.eq.result81 = phi i1 [ %eq.cmp.zero80, %str.eq.then73 ], [ false, %str.eq.else74 ]
  %eq.lhs.len82 = getelementptr inbounds { i64, ptr }, ptr %call.res1, i32 0, i32 0
  %eq.lhs.len83 = load i64, ptr %eq.lhs.len82, align 8
  %eq.lhs.len84 = and i64 %eq.lhs.len83, 281474976710655
  %str.tag85 = lshr i64 %eq.lhs.len83, 48
  %str.immortal86 = icmp eq i64 %str.tag85, 0
  br i1 %str.immortal86, label %str_ok88, label %str_gen_check87

str_gen_check87:                                  ; preds = %str.eq.merge75
  %arena.cur90 = call ptr @dva_arena_current()
  %tag.valid91 = call i1 @dva_arena_validate_tag(ptr %arena.cur90, i64 %str.tag85)
  br i1 %tag.valid91, label %str_ok88, label %str_stale89

str_ok88:                                         ; preds = %str_stale89, %str_gen_check87, %str.eq.merge75
  %eq.rhs.len92 = load i64, ptr @str.29.struct, align 8
  %eq.rhs.len93 = and i64 %eq.rhs.len92, 281474976710655
  %str.tag94 = lshr i64 %eq.rhs.len92, 48
  %str.immortal95 = icmp eq i64 %str.tag94, 0
  br i1 %str.immortal95, label %str_ok97, label %str_gen_check96

str_stale89:                                      ; preds = %str_gen_check87
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
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
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok97

str.eq.then102:                                   ; preds = %str_ok97
  %eq.lhs.data105 = getelementptr inbounds { i64, ptr }, ptr %call.res1, i32 0, i32 1
  %eq.lhs.data106 = load ptr, ptr %eq.lhs.data105, align 8
  %eq.rhs.data107 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.29.struct, i32 0, i32 1), align 8
  %eq.memcmp108 = call i32 @memcmp(ptr %eq.lhs.data106, ptr %eq.rhs.data107, i64 %eq.lhs.len84)
  %eq.cmp.zero109 = icmp eq i32 %eq.memcmp108, 0
  br label %str.eq.merge104

str.eq.else103:                                   ; preds = %str_ok97
  br label %str.eq.merge104

str.eq.merge104:                                  ; preds = %str.eq.else103, %str.eq.then102
  %str.eq.result110 = phi i1 [ %eq.cmp.zero109, %str.eq.then102 ], [ false, %str.eq.else103 ]
  %case.or = or i1 %str.eq.result81, %str.eq.result110
  br i1 %case.or, label %choice.case51, label %choice.next52

choice.case117:                                   ; preds = %str.eq.merge170
  %arena.cur178 = call ptr @dva_arena_current()
  %enum.alloc179 = call ptr @dva_arena_alloc(ptr %arena.cur178, i64 16)
  %tag.gep180 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc179, i32 0, i32 0
  store i64 3, ptr %tag.gep180, align 8
  %pay.gep181 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc179, i32 0, i32 1
  store ptr null, ptr %pay.gep181, align 8
  %p.to.i64182 = ptrtoint ptr %enum.alloc179 to i64
  %ram.pay183 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64182, 1
  br label %choice.exit

choice.next118:                                   ; preds = %str.eq.merge170
  %eq.lhs.len186 = getelementptr inbounds { i64, ptr }, ptr %call.res1, i32 0, i32 0
  %eq.lhs.len187 = load i64, ptr %eq.lhs.len186, align 8
  %eq.lhs.len188 = and i64 %eq.lhs.len187, 281474976710655
  %str.tag189 = lshr i64 %eq.lhs.len187, 48
  %str.immortal190 = icmp eq i64 %str.tag189, 0
  br i1 %str.immortal190, label %str_ok192, label %str_gen_check191

str_gen_check124:                                 ; preds = %choice.next52
  %arena.cur127 = call ptr @dva_arena_current()
  %tag.valid128 = call i1 @dva_arena_validate_tag(ptr %arena.cur127, i64 %str.tag122)
  br i1 %tag.valid128, label %str_ok125, label %str_stale126

str_ok125:                                        ; preds = %str_stale126, %str_gen_check124, %choice.next52
  %eq.rhs.len129 = load i64, ptr @str.30.struct, align 8
  %eq.rhs.len130 = and i64 %eq.rhs.len129, 281474976710655
  %str.tag131 = lshr i64 %eq.rhs.len129, 48
  %str.immortal132 = icmp eq i64 %str.tag131, 0
  br i1 %str.immortal132, label %str_ok134, label %str_gen_check133

str_stale126:                                     ; preds = %str_gen_check124
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok125

str_gen_check133:                                 ; preds = %str_ok125
  %arena.cur136 = call ptr @dva_arena_current()
  %tag.valid137 = call i1 @dva_arena_validate_tag(ptr %arena.cur136, i64 %str.tag131)
  br i1 %tag.valid137, label %str_ok134, label %str_stale135

str_ok134:                                        ; preds = %str_stale135, %str_gen_check133, %str_ok125
  %eq.len138 = icmp eq i64 %eq.lhs.len121, %eq.rhs.len130
  br i1 %eq.len138, label %str.eq.then139, label %str.eq.else140

str_stale135:                                     ; preds = %str_gen_check133
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok134

str.eq.then139:                                   ; preds = %str_ok134
  %eq.lhs.data142 = getelementptr inbounds { i64, ptr }, ptr %call.res1, i32 0, i32 1
  %eq.lhs.data143 = load ptr, ptr %eq.lhs.data142, align 8
  %eq.rhs.data144 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.30.struct, i32 0, i32 1), align 8
  %eq.memcmp145 = call i32 @memcmp(ptr %eq.lhs.data143, ptr %eq.rhs.data144, i64 %eq.lhs.len121)
  %eq.cmp.zero146 = icmp eq i32 %eq.memcmp145, 0
  br label %str.eq.merge141

str.eq.else140:                                   ; preds = %str_ok134
  br label %str.eq.merge141

str.eq.merge141:                                  ; preds = %str.eq.else140, %str.eq.then139
  %str.eq.result147 = phi i1 [ %eq.cmp.zero146, %str.eq.then139 ], [ false, %str.eq.else140 ]
  %eq.lhs.len148 = getelementptr inbounds { i64, ptr }, ptr %call.res1, i32 0, i32 0
  %eq.lhs.len149 = load i64, ptr %eq.lhs.len148, align 8
  %eq.lhs.len150 = and i64 %eq.lhs.len149, 281474976710655
  %str.tag151 = lshr i64 %eq.lhs.len149, 48
  %str.immortal152 = icmp eq i64 %str.tag151, 0
  br i1 %str.immortal152, label %str_ok154, label %str_gen_check153

str_gen_check153:                                 ; preds = %str.eq.merge141
  %arena.cur156 = call ptr @dva_arena_current()
  %tag.valid157 = call i1 @dva_arena_validate_tag(ptr %arena.cur156, i64 %str.tag151)
  br i1 %tag.valid157, label %str_ok154, label %str_stale155

str_ok154:                                        ; preds = %str_stale155, %str_gen_check153, %str.eq.merge141
  %eq.rhs.len158 = load i64, ptr @str.31.struct, align 8
  %eq.rhs.len159 = and i64 %eq.rhs.len158, 281474976710655
  %str.tag160 = lshr i64 %eq.rhs.len158, 48
  %str.immortal161 = icmp eq i64 %str.tag160, 0
  br i1 %str.immortal161, label %str_ok163, label %str_gen_check162

str_stale155:                                     ; preds = %str_gen_check153
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok154

str_gen_check162:                                 ; preds = %str_ok154
  %arena.cur165 = call ptr @dva_arena_current()
  %tag.valid166 = call i1 @dva_arena_validate_tag(ptr %arena.cur165, i64 %str.tag160)
  br i1 %tag.valid166, label %str_ok163, label %str_stale164

str_ok163:                                        ; preds = %str_stale164, %str_gen_check162, %str_ok154
  %eq.len167 = icmp eq i64 %eq.lhs.len150, %eq.rhs.len159
  br i1 %eq.len167, label %str.eq.then168, label %str.eq.else169

str_stale164:                                     ; preds = %str_gen_check162
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok163

str.eq.then168:                                   ; preds = %str_ok163
  %eq.lhs.data171 = getelementptr inbounds { i64, ptr }, ptr %call.res1, i32 0, i32 1
  %eq.lhs.data172 = load ptr, ptr %eq.lhs.data171, align 8
  %eq.rhs.data173 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.31.struct, i32 0, i32 1), align 8
  %eq.memcmp174 = call i32 @memcmp(ptr %eq.lhs.data172, ptr %eq.rhs.data173, i64 %eq.lhs.len150)
  %eq.cmp.zero175 = icmp eq i32 %eq.memcmp174, 0
  br label %str.eq.merge170

str.eq.else169:                                   ; preds = %str_ok163
  br label %str.eq.merge170

str.eq.merge170:                                  ; preds = %str.eq.else169, %str.eq.then168
  %str.eq.result176 = phi i1 [ %eq.cmp.zero175, %str.eq.then168 ], [ false, %str.eq.else169 ]
  %case.or177 = or i1 %str.eq.result147, %str.eq.result176
  br i1 %case.or177, label %choice.case117, label %choice.next118

choice.case184:                                   ; preds = %str.eq.merge267
  %arena.cur275 = call ptr @dva_arena_current()
  %enum.alloc276 = call ptr @dva_arena_alloc(ptr %arena.cur275, i64 16)
  %tag.gep277 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc276, i32 0, i32 0
  store i64 4, ptr %tag.gep277, align 8
  %pay.gep278 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc276, i32 0, i32 1
  store ptr null, ptr %pay.gep278, align 8
  %p.to.i64279 = ptrtoint ptr %enum.alloc276 to i64
  %ram.pay280 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64279, 1
  br label %choice.exit

choice.next185:                                   ; preds = %str.eq.merge267
  br label %choice.exit

str_gen_check191:                                 ; preds = %choice.next118
  %arena.cur194 = call ptr @dva_arena_current()
  %tag.valid195 = call i1 @dva_arena_validate_tag(ptr %arena.cur194, i64 %str.tag189)
  br i1 %tag.valid195, label %str_ok192, label %str_stale193

str_ok192:                                        ; preds = %str_stale193, %str_gen_check191, %choice.next118
  %eq.rhs.len196 = load i64, ptr @str.32.struct, align 8
  %eq.rhs.len197 = and i64 %eq.rhs.len196, 281474976710655
  %str.tag198 = lshr i64 %eq.rhs.len196, 48
  %str.immortal199 = icmp eq i64 %str.tag198, 0
  br i1 %str.immortal199, label %str_ok201, label %str_gen_check200

str_stale193:                                     ; preds = %str_gen_check191
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok192

str_gen_check200:                                 ; preds = %str_ok192
  %arena.cur203 = call ptr @dva_arena_current()
  %tag.valid204 = call i1 @dva_arena_validate_tag(ptr %arena.cur203, i64 %str.tag198)
  br i1 %tag.valid204, label %str_ok201, label %str_stale202

str_ok201:                                        ; preds = %str_stale202, %str_gen_check200, %str_ok192
  %eq.len205 = icmp eq i64 %eq.lhs.len188, %eq.rhs.len197
  br i1 %eq.len205, label %str.eq.then206, label %str.eq.else207

str_stale202:                                     ; preds = %str_gen_check200
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok201

str.eq.then206:                                   ; preds = %str_ok201
  %eq.lhs.data209 = getelementptr inbounds { i64, ptr }, ptr %call.res1, i32 0, i32 1
  %eq.lhs.data210 = load ptr, ptr %eq.lhs.data209, align 8
  %eq.rhs.data211 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.32.struct, i32 0, i32 1), align 8
  %eq.memcmp212 = call i32 @memcmp(ptr %eq.lhs.data210, ptr %eq.rhs.data211, i64 %eq.lhs.len188)
  %eq.cmp.zero213 = icmp eq i32 %eq.memcmp212, 0
  br label %str.eq.merge208

str.eq.else207:                                   ; preds = %str_ok201
  br label %str.eq.merge208

str.eq.merge208:                                  ; preds = %str.eq.else207, %str.eq.then206
  %str.eq.result214 = phi i1 [ %eq.cmp.zero213, %str.eq.then206 ], [ false, %str.eq.else207 ]
  %eq.lhs.len215 = getelementptr inbounds { i64, ptr }, ptr %call.res1, i32 0, i32 0
  %eq.lhs.len216 = load i64, ptr %eq.lhs.len215, align 8
  %eq.lhs.len217 = and i64 %eq.lhs.len216, 281474976710655
  %str.tag218 = lshr i64 %eq.lhs.len216, 48
  %str.immortal219 = icmp eq i64 %str.tag218, 0
  br i1 %str.immortal219, label %str_ok221, label %str_gen_check220

str_gen_check220:                                 ; preds = %str.eq.merge208
  %arena.cur223 = call ptr @dva_arena_current()
  %tag.valid224 = call i1 @dva_arena_validate_tag(ptr %arena.cur223, i64 %str.tag218)
  br i1 %tag.valid224, label %str_ok221, label %str_stale222

str_ok221:                                        ; preds = %str_stale222, %str_gen_check220, %str.eq.merge208
  %eq.rhs.len225 = load i64, ptr @str.33.struct, align 8
  %eq.rhs.len226 = and i64 %eq.rhs.len225, 281474976710655
  %str.tag227 = lshr i64 %eq.rhs.len225, 48
  %str.immortal228 = icmp eq i64 %str.tag227, 0
  br i1 %str.immortal228, label %str_ok230, label %str_gen_check229

str_stale222:                                     ; preds = %str_gen_check220
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok221

str_gen_check229:                                 ; preds = %str_ok221
  %arena.cur232 = call ptr @dva_arena_current()
  %tag.valid233 = call i1 @dva_arena_validate_tag(ptr %arena.cur232, i64 %str.tag227)
  br i1 %tag.valid233, label %str_ok230, label %str_stale231

str_ok230:                                        ; preds = %str_stale231, %str_gen_check229, %str_ok221
  %eq.len234 = icmp eq i64 %eq.lhs.len217, %eq.rhs.len226
  br i1 %eq.len234, label %str.eq.then235, label %str.eq.else236

str_stale231:                                     ; preds = %str_gen_check229
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok230

str.eq.then235:                                   ; preds = %str_ok230
  %eq.lhs.data238 = getelementptr inbounds { i64, ptr }, ptr %call.res1, i32 0, i32 1
  %eq.lhs.data239 = load ptr, ptr %eq.lhs.data238, align 8
  %eq.rhs.data240 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.33.struct, i32 0, i32 1), align 8
  %eq.memcmp241 = call i32 @memcmp(ptr %eq.lhs.data239, ptr %eq.rhs.data240, i64 %eq.lhs.len217)
  %eq.cmp.zero242 = icmp eq i32 %eq.memcmp241, 0
  br label %str.eq.merge237

str.eq.else236:                                   ; preds = %str_ok230
  br label %str.eq.merge237

str.eq.merge237:                                  ; preds = %str.eq.else236, %str.eq.then235
  %str.eq.result243 = phi i1 [ %eq.cmp.zero242, %str.eq.then235 ], [ false, %str.eq.else236 ]
  %case.or244 = or i1 %str.eq.result214, %str.eq.result243
  %eq.lhs.len245 = getelementptr inbounds { i64, ptr }, ptr %call.res1, i32 0, i32 0
  %eq.lhs.len246 = load i64, ptr %eq.lhs.len245, align 8
  %eq.lhs.len247 = and i64 %eq.lhs.len246, 281474976710655
  %str.tag248 = lshr i64 %eq.lhs.len246, 48
  %str.immortal249 = icmp eq i64 %str.tag248, 0
  br i1 %str.immortal249, label %str_ok251, label %str_gen_check250

str_gen_check250:                                 ; preds = %str.eq.merge237
  %arena.cur253 = call ptr @dva_arena_current()
  %tag.valid254 = call i1 @dva_arena_validate_tag(ptr %arena.cur253, i64 %str.tag248)
  br i1 %tag.valid254, label %str_ok251, label %str_stale252

str_ok251:                                        ; preds = %str_stale252, %str_gen_check250, %str.eq.merge237
  %eq.rhs.len255 = load i64, ptr @str.34.struct, align 8
  %eq.rhs.len256 = and i64 %eq.rhs.len255, 281474976710655
  %str.tag257 = lshr i64 %eq.rhs.len255, 48
  %str.immortal258 = icmp eq i64 %str.tag257, 0
  br i1 %str.immortal258, label %str_ok260, label %str_gen_check259

str_stale252:                                     ; preds = %str_gen_check250
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok251

str_gen_check259:                                 ; preds = %str_ok251
  %arena.cur262 = call ptr @dva_arena_current()
  %tag.valid263 = call i1 @dva_arena_validate_tag(ptr %arena.cur262, i64 %str.tag257)
  br i1 %tag.valid263, label %str_ok260, label %str_stale261

str_ok260:                                        ; preds = %str_stale261, %str_gen_check259, %str_ok251
  %eq.len264 = icmp eq i64 %eq.lhs.len247, %eq.rhs.len256
  br i1 %eq.len264, label %str.eq.then265, label %str.eq.else266

str_stale261:                                     ; preds = %str_gen_check259
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok260

str.eq.then265:                                   ; preds = %str_ok260
  %eq.lhs.data268 = getelementptr inbounds { i64, ptr }, ptr %call.res1, i32 0, i32 1
  %eq.lhs.data269 = load ptr, ptr %eq.lhs.data268, align 8
  %eq.rhs.data270 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.34.struct, i32 0, i32 1), align 8
  %eq.memcmp271 = call i32 @memcmp(ptr %eq.lhs.data269, ptr %eq.rhs.data270, i64 %eq.lhs.len247)
  %eq.cmp.zero272 = icmp eq i32 %eq.memcmp271, 0
  br label %str.eq.merge267

str.eq.else266:                                   ; preds = %str_ok260
  br label %str.eq.merge267

str.eq.merge267:                                  ; preds = %str.eq.else266, %str.eq.then265
  %str.eq.result273 = phi i1 [ %eq.cmp.zero272, %str.eq.then265 ], [ false, %str.eq.else266 ]
  %case.or274 = or i1 %case.or244, %str.eq.result273
  br i1 %case.or274, label %choice.case184, label %choice.next185
}

declare ptr @"str::trim"(ptr) #1

declare ptr @"str::lower"(ptr) #1

define void @"log::set_level"(ptr %0) #1 {
entry:
  %var.lvl = alloca ptr, align 8
  store ptr %0, ptr %var.lvl, align 8
  %var.load = load ptr, ptr %var.lvl, align 8
  %call.res = call i64 @"log::level_rank"(ptr %var.load)
  store i64 %call.res, ptr @"var.log::#min_level", align 8
  ret void
}

define ptr @"log::get_level"() #1 {
entry:
  %var.load = load i64, ptr @"var.log::#min_level", align 8
  %call.res = call ptr @"log::#rank_to_level"(i64 %var.load)
  ret ptr %call.res
}

define i1 @"log::enabled"(ptr %0) #1 {
entry:
  %var.r = alloca i64, align 8
  %var.lvl = alloca ptr, align 8
  store ptr %0, ptr %var.lvl, align 8
  %var.load = load ptr, ptr %var.lvl, align 8
  %call.res = call i64 @"log::level_rank"(ptr %var.load)
  store i64 %call.res, ptr %var.r, align 8
  %var.load1 = load i64, ptr %var.r, align 8
  %cmptmp = icmp slt i64 %var.load1, 4
  br i1 %cmptmp, label %and.94.then, label %and.94.else

and.94.then:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.r, align 8
  %var.load3 = load i64, ptr @"var.log::#min_level", align 8
  %cmptmp4 = icmp sge i64 %var.load2, %var.load3
  br label %and.94.exit

and.94.else:                                      ; preds = %entry
  br label %and.94.exit

and.94.exit:                                      ; preds = %and.94.else, %and.94.then
  %and.94.phi = phi i1 [ %cmptmp4, %and.94.then ], [ %cmptmp, %and.94.else ]
  ret i1 %and.94.phi
}

define void @"log::set_timestamps"(i1 %0) #1 {
entry:
  %var.on = alloca i1, align 1
  store i1 %0, ptr %var.on, align 1
  %var.load = load i1, ptr %var.on, align 1
  store i1 %var.load, ptr @"var.log::#show_ts", align 1
  ret void
}

define void @"log::set_utc"(i1 %0) #1 {
entry:
  %var.on = alloca i1, align 1
  store i1 %0, ptr %var.on, align 1
  %var.load = load i1, ptr %var.on, align 1
  store i1 %var.load, ptr @"var.log::#ts_utc", align 1
  ret void
}

define void @"log::set_basic_iso"(i1 %0) #1 {
entry:
  %var.on = alloca i1, align 1
  store i1 %0, ptr %var.on, align 1
  %var.load = load i1, ptr %var.on, align 1
  store i1 %var.load, ptr @"var.log::#ts_basic", align 1
  ret void
}

define void @"log::set_color"(i1 %0) #1 {
entry:
  %var.on = alloca i1, align 1
  store i1 %0, ptr %var.on, align 1
  %var.load = load i1, ptr %var.on, align 1
  br i1 %var.load, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ 1, %choice.then ], [ 2, %choice.else ]
  store i64 %choice.res, ptr @"var.log::#color_mode", align 8
  ret void
}

define void @"log::use_auto_color"() #1 {
entry:
  store i64 0, ptr @"var.log::#color_mode", align 8
  ret void
}

define void @"log::set_prefix"(ptr %0) #1 {
entry:
  %var.pfx = alloca ptr, align 8
  store ptr %0, ptr %var.pfx, align 8
  %var.load = load ptr, ptr %var.pfx, align 8
  store ptr %var.load, ptr @"var.log::#prefix_tag", align 8
  ret void
}

define ptr @"log::get_prefix"() #1 {
entry:
  %var.load = load ptr, ptr @"var.log::#prefix_tag", align 8
  ret ptr %var.load
}

define void @"log::set_fd"(i64 %0) #1 {
entry:
  %var.fd = alloca i64, align 8
  store i64 %0, ptr %var.fd, align 8
  %var.load = load i64, ptr @"var.log::#owned_fd", align 8
  %cmptmp = icmp sge i64 %var.load, 0
  br i1 %cmptmp, label %and.95.then, label %and.95.else

and.95.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr @"var.log::#owned_fd", align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %cmptmp3 = icmp ne i64 %var.load1, %var.load2
  br label %and.95.exit

and.95.else:                                      ; preds = %entry
  br label %and.95.exit

and.95.exit:                                      ; preds = %and.95.else, %and.95.then
  %and.95.phi = phi i1 [ %cmptmp3, %and.95.then ], [ %cmptmp, %and.95.else ]
  br i1 %and.95.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.95.exit
  %var.load4 = load i64, ptr @"var.log::#owned_fd", align 8
  %coerce.trunc = trunc i64 %var.load4 to i32
  %call.res = call i32 @close(i32 %coerce.trunc)
  store i64 -1, ptr @"var.log::#owned_fd", align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %and.95.exit
  %var.load5 = load i64, ptr %var.fd, align 8
  store i64 %var.load5, ptr @"var.log::#out_fd", align 8
  ret void
}

define i64 @"log::get_fd"() #1 {
entry:
  %var.load = load i64, ptr @"var.log::#out_fd", align 8
  ret i64 %var.load
}

define i1 @"log::set_file"(ptr %0) #1 {
entry:
  %var.fd = alloca i64, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %arg.str.ptr1 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr2 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %arg.str.ptr3 = load i64, ptr %arg.str.ptr2, align 8
  %arg.str.ptr4 = and i64 %arg.str.ptr3, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr3, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr8 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %var.load9 = load i64, ptr @"var.log::#O_LOG_APPEND", align 8
  %coerce.trunc = trunc i64 %var.load9 to i32
  %call.res = call i32 @open(ptr %arg.str.ptr8, i32 %coerce.trunc, i64 420)
  store i32 %call.res, ptr %var.fd, align 4
  %var.load10 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load10, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

nulcopy.len6:                                     ; preds = %str_overflow_abort, %nulcopy
  %arena.cur7 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  br label %choice.exit

choice.else:                                      ; preds = %nulmerge
  %var.load11 = load i64, ptr @"var.log::#owned_fd", align 8
  %cmptmp12 = icmp sge i64 %var.load11, 0
  br i1 %cmptmp12, label %choice.then13, label %choice.exit14

choice.exit:                                      ; preds = %choice.exit14, %choice.then
  %choice.res = phi i1 [ false, %choice.then ], [ true, %choice.exit14 ]
  ret i1 %choice.res

choice.then13:                                    ; preds = %choice.else
  %var.load15 = load i64, ptr @"var.log::#owned_fd", align 8
  %coerce.trunc16 = trunc i64 %var.load15 to i32
  %call.res17 = call i32 @close(i32 %coerce.trunc16)
  br label %choice.exit14

choice.exit14:                                    ; preds = %choice.then13, %choice.else
  %var.load18 = load i64, ptr %var.fd, align 8
  store i64 %var.load18, ptr @"var.log::#owned_fd", align 8
  %var.load19 = load i64, ptr %var.fd, align 8
  store i64 %var.load19, ptr @"var.log::#out_fd", align 8
  br label %choice.exit
}

define void @"log::close_file"() #1 {
entry:
  %var.load = load i64, ptr @"var.log::#owned_fd", align 8
  %cmptmp = icmp sge i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr @"var.log::#owned_fd", align 8
  %coerce.trunc = trunc i64 %var.load1 to i32
  %call.res = call i32 @close(i32 %coerce.trunc)
  store i64 -1, ptr @"var.log::#owned_fd", align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %entry
  store i64 2, ptr @"var.log::#out_fd", align 8
  ret void
}

define ptr @"log::format_entry"(ptr %0, ptr %1) #1 {
entry:
  %var.pfx_part = alloca ptr, align 8
  %var.ts_str = alloca ptr, align 8
  %var.badge = alloca ptr, align 8
  %var.msg = alloca ptr, align 8
  %var.lvl = alloca ptr, align 8
  store ptr %0, ptr %var.lvl, align 8
  store ptr %1, ptr %var.msg, align 8
  %call.res = call i1 @"log::#should_color"()
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load = load ptr, ptr %var.lvl, align 8
  %call.res1 = call ptr @"log::#level_ansi"(ptr %var.load)
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.lvl, align 8
  %call.res3 = call ptr @"log::#level_plain"(ptr %var.load2)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %call.res1, %choice.then ], [ %call.res3, %choice.else ]
  store ptr %choice.res, ptr %var.badge, align 8
  %var.load4 = load i1, ptr @"var.log::#show_ts", align 1
  br i1 %var.load4, label %choice.then5, label %choice.else6

choice.then5:                                     ; preds = %choice.exit
  %var.load8 = load i1, ptr @"var.log::#ts_utc", align 1
  br i1 %var.load8, label %choice.then9, label %choice.else10

choice.else6:                                     ; preds = %choice.exit
  br label %choice.exit7

choice.exit7:                                     ; preds = %choice.else6, %concat.tot.len43
  %choice.res47 = phi ptr [ %concat.str, %concat.tot.len43 ], [ @str.0.struct, %choice.else6 ]
  store ptr %choice.res47, ptr %var.ts_str, align 8
  %var.load48 = load ptr, ptr @"var.log::#prefix_tag", align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 0
  %str.len.query49 = load i64, ptr %str.len.query, align 8
  %str.len.query50 = and i64 %str.len.query49, 281474976710655
  %str.tag51 = lshr i64 %str.len.query49, 48
  %str.immortal52 = icmp eq i64 %str.tag51, 0
  br i1 %str.immortal52, label %str_ok54, label %str_gen_check53

choice.then9:                                     ; preds = %choice.then5
  %var.load12 = load i1, ptr @"var.log::#ts_basic", align 1
  br i1 %var.load12, label %choice.then13, label %choice.else14

choice.else10:                                    ; preds = %choice.then5
  %var.load19 = load i1, ptr @"var.log::#ts_basic", align 1
  br i1 %var.load19, label %choice.then20, label %choice.else21

choice.exit11:                                    ; preds = %choice.exit22, %choice.exit15
  %choice.res26 = phi ptr [ %choice.res18, %choice.exit15 ], [ %choice.res25, %choice.exit22 ]
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %choice.res26, i32 0, i32 0
  %concat.lhs27 = load i64, ptr %concat.lhs, align 8
  %concat.lhs28 = and i64 %concat.lhs27, 281474976710655
  %str.tag = lshr i64 %concat.lhs27, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.then13:                                    ; preds = %choice.then9
  %call.res16 = call ptr @"time::utc_iso_basic$Unit"(i64 0)
  br label %choice.exit15

choice.else14:                                    ; preds = %choice.then9
  %call.res17 = call ptr @"time::utc_iso$Unit"(i64 0)
  br label %choice.exit15

choice.exit15:                                    ; preds = %choice.else14, %choice.then13
  %choice.res18 = phi ptr [ %call.res16, %choice.then13 ], [ %call.res17, %choice.else14 ]
  br label %choice.exit11

choice.then20:                                    ; preds = %choice.else10
  %call.res23 = call ptr @"time::iso_basic$Unit"(i64 0)
  br label %choice.exit22

choice.else21:                                    ; preds = %choice.else10
  %call.res24 = call ptr @"time::iso$Unit"(i64 0)
  br label %choice.exit22

choice.exit22:                                    ; preds = %choice.else21, %choice.then20
  %choice.res25 = phi ptr [ %call.res23, %choice.then20 ], [ %call.res24, %choice.else21 ]
  br label %choice.exit11

str_gen_check:                                    ; preds = %choice.exit11
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit11
  %concat.lhs29 = getelementptr inbounds { i64, ptr }, ptr %choice.res26, i32 0, i32 1
  %concat.lhs30 = load ptr, ptr %concat.lhs29, align 8
  %concat.rhs = load i64, ptr @str.35.struct, align 8
  %concat.rhs31 = and i64 %concat.rhs, 281474976710655
  %str.tag32 = lshr i64 %concat.rhs, 48
  %str.immortal33 = icmp eq i64 %str.tag32, 0
  br i1 %str.immortal33, label %str_ok35, label %str_gen_check34

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check34:                                  ; preds = %str_ok
  %arena.cur37 = call ptr @dva_arena_current()
  %tag.valid38 = call i1 @dva_arena_validate_tag(ptr %arena.cur37, i64 %str.tag32)
  br i1 %tag.valid38, label %str_ok35, label %str_stale36

str_ok35:                                         ; preds = %str_stale36, %str_gen_check34, %str_ok
  %concat.rhs39 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.35.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs28, i64 %concat.rhs31)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len40

str_stale36:                                      ; preds = %str_gen_check34
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok35

concat.sum.len40:                                 ; preds = %str_overflow_abort, %str_ok35
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum41 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf42 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf42, label %str_overflow_abort44, label %concat.tot.len43

str_overflow_abort:                               ; preds = %str_ok35
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len40

concat.tot.len43:                                 ; preds = %str_overflow_abort44, %concat.sum.len40
  %arena.cur45 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 %sum41)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs30, i64 %concat.lhs28, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs28
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs39, i64 %concat.rhs31, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur46 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit7

str_overflow_abort44:                             ; preds = %concat.sum.len40
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len43

str_gen_check53:                                  ; preds = %choice.exit7
  %arena.cur56 = call ptr @dva_arena_current()
  %tag.valid57 = call i1 @dva_arena_validate_tag(ptr %arena.cur56, i64 %str.tag51)
  br i1 %tag.valid57, label %str_ok54, label %str_stale55

str_ok54:                                         ; preds = %str_stale55, %str_gen_check53, %choice.exit7
  %cmptmp = icmp sgt i64 %str.len.query50, 0
  br i1 %cmptmp, label %choice.then58, label %choice.else59

str_stale55:                                      ; preds = %str_gen_check53
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok54

choice.then58:                                    ; preds = %str_ok54
  %var.load61 = load ptr, ptr @"var.log::#prefix_tag", align 8
  %concat.lhs62 = load i64, ptr @str.36.struct, align 8
  %concat.lhs63 = and i64 %concat.lhs62, 281474976710655
  %str.tag64 = lshr i64 %concat.lhs62, 48
  %str.immortal65 = icmp eq i64 %str.tag64, 0
  br i1 %str.immortal65, label %str_ok67, label %str_gen_check66

choice.else59:                                    ; preds = %str_ok54
  br label %choice.exit60

choice.exit60:                                    ; preds = %choice.else59, %concat.tot.len132
  %choice.res142 = phi ptr [ %concat.str139, %concat.tot.len132 ], [ @str.0.struct, %choice.else59 ]
  store ptr %choice.res142, ptr %var.pfx_part, align 8
  %var.load143 = load ptr, ptr %var.ts_str, align 8
  %var.load144 = load ptr, ptr %var.badge, align 8
  %concat.lhs145 = getelementptr inbounds { i64, ptr }, ptr %var.load143, i32 0, i32 0
  %concat.lhs146 = load i64, ptr %concat.lhs145, align 8
  %concat.lhs147 = and i64 %concat.lhs146, 281474976710655
  %str.tag148 = lshr i64 %concat.lhs146, 48
  %str.immortal149 = icmp eq i64 %str.tag148, 0
  br i1 %str.immortal149, label %str_ok151, label %str_gen_check150

str_gen_check66:                                  ; preds = %choice.then58
  %arena.cur69 = call ptr @dva_arena_current()
  %tag.valid70 = call i1 @dva_arena_validate_tag(ptr %arena.cur69, i64 %str.tag64)
  br i1 %tag.valid70, label %str_ok67, label %str_stale68

str_ok67:                                         ; preds = %str_stale68, %str_gen_check66, %choice.then58
  %concat.lhs71 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.36.struct, i32 0, i32 1), align 8
  %concat.rhs72 = getelementptr inbounds { i64, ptr }, ptr %var.load61, i32 0, i32 0
  %concat.rhs73 = load i64, ptr %concat.rhs72, align 8
  %concat.rhs74 = and i64 %concat.rhs73, 281474976710655
  %str.tag75 = lshr i64 %concat.rhs73, 48
  %str.immortal76 = icmp eq i64 %str.tag75, 0
  br i1 %str.immortal76, label %str_ok78, label %str_gen_check77

str_stale68:                                      ; preds = %str_gen_check66
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok67

str_gen_check77:                                  ; preds = %str_ok67
  %arena.cur80 = call ptr @dva_arena_current()
  %tag.valid81 = call i1 @dva_arena_validate_tag(ptr %arena.cur80, i64 %str.tag75)
  br i1 %tag.valid81, label %str_ok78, label %str_stale79

str_ok78:                                         ; preds = %str_stale79, %str_gen_check77, %str_ok67
  %concat.rhs82 = getelementptr inbounds { i64, ptr }, ptr %var.load61, i32 0, i32 1
  %concat.rhs83 = load ptr, ptr %concat.rhs82, align 8
  %concat.sum.len84 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs63, i64 %concat.rhs74)
  %sum85 = extractvalue { i64, i1 } %concat.sum.len84, 0
  %ovf86 = extractvalue { i64, i1 } %concat.sum.len84, 1
  br i1 %ovf86, label %str_overflow_abort88, label %concat.sum.len87

str_stale79:                                      ; preds = %str_gen_check77
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok78

concat.sum.len87:                                 ; preds = %str_overflow_abort88, %str_ok78
  %concat.tot.len89 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum85, i64 1)
  %sum90 = extractvalue { i64, i1 } %concat.tot.len89, 0
  %ovf91 = extractvalue { i64, i1 } %concat.tot.len89, 1
  br i1 %ovf91, label %str_overflow_abort93, label %concat.tot.len92

str_overflow_abort88:                             ; preds = %str_ok78
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len87

concat.tot.len92:                                 ; preds = %str_overflow_abort93, %concat.sum.len87
  %arena.cur94 = call ptr @dva_arena_current()
  %concat.buf95 = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 %sum90)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf95, ptr align 1 %concat.lhs71, i64 %concat.lhs63, i1 false)
  %concat.mid96 = getelementptr i8, ptr %concat.buf95, i64 %concat.lhs63
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid96, ptr align 1 %concat.rhs83, i64 %concat.rhs74, i1 false)
  %concat.nul97 = getelementptr i8, ptr %concat.buf95, i64 %sum85
  store i8 0, ptr %concat.nul97, align 1
  %arena.cur98 = call ptr @dva_arena_current()
  %concat.str99 = call ptr @dva_arena_alloc(ptr %arena.cur98, i64 16)
  %str.build.len.gep100 = getelementptr inbounds { i64, ptr }, ptr %concat.str99, i32 0, i32 0
  store i64 %sum85, ptr %str.build.len.gep100, align 8
  %str.build.data.gep101 = getelementptr inbounds { i64, ptr }, ptr %concat.str99, i32 0, i32 1
  store ptr %concat.buf95, ptr %str.build.data.gep101, align 8
  %concat.lhs102 = getelementptr inbounds { i64, ptr }, ptr %concat.str99, i32 0, i32 0
  %concat.lhs103 = load i64, ptr %concat.lhs102, align 8
  %concat.lhs104 = and i64 %concat.lhs103, 281474976710655
  %str.tag105 = lshr i64 %concat.lhs103, 48
  %str.immortal106 = icmp eq i64 %str.tag105, 0
  br i1 %str.immortal106, label %str_ok108, label %str_gen_check107

str_overflow_abort93:                             ; preds = %concat.sum.len87
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len92

str_gen_check107:                                 ; preds = %concat.tot.len92
  %arena.cur110 = call ptr @dva_arena_current()
  %tag.valid111 = call i1 @dva_arena_validate_tag(ptr %arena.cur110, i64 %str.tag105)
  br i1 %tag.valid111, label %str_ok108, label %str_stale109

str_ok108:                                        ; preds = %str_stale109, %str_gen_check107, %concat.tot.len92
  %concat.lhs112 = getelementptr inbounds { i64, ptr }, ptr %concat.str99, i32 0, i32 1
  %concat.lhs113 = load ptr, ptr %concat.lhs112, align 8
  %concat.rhs114 = load i64, ptr @str.16.struct, align 8
  %concat.rhs115 = and i64 %concat.rhs114, 281474976710655
  %str.tag116 = lshr i64 %concat.rhs114, 48
  %str.immortal117 = icmp eq i64 %str.tag116, 0
  br i1 %str.immortal117, label %str_ok119, label %str_gen_check118

str_stale109:                                     ; preds = %str_gen_check107
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok108

str_gen_check118:                                 ; preds = %str_ok108
  %arena.cur121 = call ptr @dva_arena_current()
  %tag.valid122 = call i1 @dva_arena_validate_tag(ptr %arena.cur121, i64 %str.tag116)
  br i1 %tag.valid122, label %str_ok119, label %str_stale120

str_ok119:                                        ; preds = %str_stale120, %str_gen_check118, %str_ok108
  %concat.rhs123 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %concat.sum.len124 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs104, i64 %concat.rhs115)
  %sum125 = extractvalue { i64, i1 } %concat.sum.len124, 0
  %ovf126 = extractvalue { i64, i1 } %concat.sum.len124, 1
  br i1 %ovf126, label %str_overflow_abort128, label %concat.sum.len127

str_stale120:                                     ; preds = %str_gen_check118
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok119

concat.sum.len127:                                ; preds = %str_overflow_abort128, %str_ok119
  %concat.tot.len129 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum125, i64 1)
  %sum130 = extractvalue { i64, i1 } %concat.tot.len129, 0
  %ovf131 = extractvalue { i64, i1 } %concat.tot.len129, 1
  br i1 %ovf131, label %str_overflow_abort133, label %concat.tot.len132

str_overflow_abort128:                            ; preds = %str_ok119
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len127

concat.tot.len132:                                ; preds = %str_overflow_abort133, %concat.sum.len127
  %arena.cur134 = call ptr @dva_arena_current()
  %concat.buf135 = call ptr @dva_arena_alloc(ptr %arena.cur134, i64 %sum130)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf135, ptr align 1 %concat.lhs113, i64 %concat.lhs104, i1 false)
  %concat.mid136 = getelementptr i8, ptr %concat.buf135, i64 %concat.lhs104
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid136, ptr align 1 %concat.rhs123, i64 %concat.rhs115, i1 false)
  %concat.nul137 = getelementptr i8, ptr %concat.buf135, i64 %sum125
  store i8 0, ptr %concat.nul137, align 1
  %arena.cur138 = call ptr @dva_arena_current()
  %concat.str139 = call ptr @dva_arena_alloc(ptr %arena.cur138, i64 16)
  %str.build.len.gep140 = getelementptr inbounds { i64, ptr }, ptr %concat.str139, i32 0, i32 0
  store i64 %sum125, ptr %str.build.len.gep140, align 8
  %str.build.data.gep141 = getelementptr inbounds { i64, ptr }, ptr %concat.str139, i32 0, i32 1
  store ptr %concat.buf135, ptr %str.build.data.gep141, align 8
  br label %choice.exit60

str_overflow_abort133:                            ; preds = %concat.sum.len127
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len132

str_gen_check150:                                 ; preds = %choice.exit60
  %arena.cur153 = call ptr @dva_arena_current()
  %tag.valid154 = call i1 @dva_arena_validate_tag(ptr %arena.cur153, i64 %str.tag148)
  br i1 %tag.valid154, label %str_ok151, label %str_stale152

str_ok151:                                        ; preds = %str_stale152, %str_gen_check150, %choice.exit60
  %concat.lhs155 = getelementptr inbounds { i64, ptr }, ptr %var.load143, i32 0, i32 1
  %concat.lhs156 = load ptr, ptr %concat.lhs155, align 8
  %concat.rhs157 = getelementptr inbounds { i64, ptr }, ptr %var.load144, i32 0, i32 0
  %concat.rhs158 = load i64, ptr %concat.rhs157, align 8
  %concat.rhs159 = and i64 %concat.rhs158, 281474976710655
  %str.tag160 = lshr i64 %concat.rhs158, 48
  %str.immortal161 = icmp eq i64 %str.tag160, 0
  br i1 %str.immortal161, label %str_ok163, label %str_gen_check162

str_stale152:                                     ; preds = %str_gen_check150
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
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
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok163

concat.sum.len172:                                ; preds = %str_overflow_abort173, %str_ok163
  %concat.tot.len174 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum170, i64 1)
  %sum175 = extractvalue { i64, i1 } %concat.tot.len174, 0
  %ovf176 = extractvalue { i64, i1 } %concat.tot.len174, 1
  br i1 %ovf176, label %str_overflow_abort178, label %concat.tot.len177

str_overflow_abort173:                            ; preds = %str_ok163
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
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
  %var.load187 = load ptr, ptr %var.pfx_part, align 8
  %concat.lhs188 = getelementptr inbounds { i64, ptr }, ptr %concat.str184, i32 0, i32 0
  %concat.lhs189 = load i64, ptr %concat.lhs188, align 8
  %concat.lhs190 = and i64 %concat.lhs189, 281474976710655
  %str.tag191 = lshr i64 %concat.lhs189, 48
  %str.immortal192 = icmp eq i64 %str.tag191, 0
  br i1 %str.immortal192, label %str_ok194, label %str_gen_check193

str_overflow_abort178:                            ; preds = %concat.sum.len172
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len177

str_gen_check193:                                 ; preds = %concat.tot.len177
  %arena.cur196 = call ptr @dva_arena_current()
  %tag.valid197 = call i1 @dva_arena_validate_tag(ptr %arena.cur196, i64 %str.tag191)
  br i1 %tag.valid197, label %str_ok194, label %str_stale195

str_ok194:                                        ; preds = %str_stale195, %str_gen_check193, %concat.tot.len177
  %concat.lhs198 = getelementptr inbounds { i64, ptr }, ptr %concat.str184, i32 0, i32 1
  %concat.lhs199 = load ptr, ptr %concat.lhs198, align 8
  %concat.rhs200 = getelementptr inbounds { i64, ptr }, ptr %var.load187, i32 0, i32 0
  %concat.rhs201 = load i64, ptr %concat.rhs200, align 8
  %concat.rhs202 = and i64 %concat.rhs201, 281474976710655
  %str.tag203 = lshr i64 %concat.rhs201, 48
  %str.immortal204 = icmp eq i64 %str.tag203, 0
  br i1 %str.immortal204, label %str_ok206, label %str_gen_check205

str_stale195:                                     ; preds = %str_gen_check193
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok194

str_gen_check205:                                 ; preds = %str_ok194
  %arena.cur208 = call ptr @dva_arena_current()
  %tag.valid209 = call i1 @dva_arena_validate_tag(ptr %arena.cur208, i64 %str.tag203)
  br i1 %tag.valid209, label %str_ok206, label %str_stale207

str_ok206:                                        ; preds = %str_stale207, %str_gen_check205, %str_ok194
  %concat.rhs210 = getelementptr inbounds { i64, ptr }, ptr %var.load187, i32 0, i32 1
  %concat.rhs211 = load ptr, ptr %concat.rhs210, align 8
  %concat.sum.len212 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs190, i64 %concat.rhs202)
  %sum213 = extractvalue { i64, i1 } %concat.sum.len212, 0
  %ovf214 = extractvalue { i64, i1 } %concat.sum.len212, 1
  br i1 %ovf214, label %str_overflow_abort216, label %concat.sum.len215

str_stale207:                                     ; preds = %str_gen_check205
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok206

concat.sum.len215:                                ; preds = %str_overflow_abort216, %str_ok206
  %concat.tot.len217 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum213, i64 1)
  %sum218 = extractvalue { i64, i1 } %concat.tot.len217, 0
  %ovf219 = extractvalue { i64, i1 } %concat.tot.len217, 1
  br i1 %ovf219, label %str_overflow_abort221, label %concat.tot.len220

str_overflow_abort216:                            ; preds = %str_ok206
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len215

concat.tot.len220:                                ; preds = %str_overflow_abort221, %concat.sum.len215
  %arena.cur222 = call ptr @dva_arena_current()
  %concat.buf223 = call ptr @dva_arena_alloc(ptr %arena.cur222, i64 %sum218)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf223, ptr align 1 %concat.lhs199, i64 %concat.lhs190, i1 false)
  %concat.mid224 = getelementptr i8, ptr %concat.buf223, i64 %concat.lhs190
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid224, ptr align 1 %concat.rhs211, i64 %concat.rhs202, i1 false)
  %concat.nul225 = getelementptr i8, ptr %concat.buf223, i64 %sum213
  store i8 0, ptr %concat.nul225, align 1
  %arena.cur226 = call ptr @dva_arena_current()
  %concat.str227 = call ptr @dva_arena_alloc(ptr %arena.cur226, i64 16)
  %str.build.len.gep228 = getelementptr inbounds { i64, ptr }, ptr %concat.str227, i32 0, i32 0
  store i64 %sum213, ptr %str.build.len.gep228, align 8
  %str.build.data.gep229 = getelementptr inbounds { i64, ptr }, ptr %concat.str227, i32 0, i32 1
  store ptr %concat.buf223, ptr %str.build.data.gep229, align 8
  %concat.lhs230 = getelementptr inbounds { i64, ptr }, ptr %concat.str227, i32 0, i32 0
  %concat.lhs231 = load i64, ptr %concat.lhs230, align 8
  %concat.lhs232 = and i64 %concat.lhs231, 281474976710655
  %str.tag233 = lshr i64 %concat.lhs231, 48
  %str.immortal234 = icmp eq i64 %str.tag233, 0
  br i1 %str.immortal234, label %str_ok236, label %str_gen_check235

str_overflow_abort221:                            ; preds = %concat.sum.len215
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len220

str_gen_check235:                                 ; preds = %concat.tot.len220
  %arena.cur238 = call ptr @dva_arena_current()
  %tag.valid239 = call i1 @dva_arena_validate_tag(ptr %arena.cur238, i64 %str.tag233)
  br i1 %tag.valid239, label %str_ok236, label %str_stale237

str_ok236:                                        ; preds = %str_stale237, %str_gen_check235, %concat.tot.len220
  %concat.lhs240 = getelementptr inbounds { i64, ptr }, ptr %concat.str227, i32 0, i32 1
  %concat.lhs241 = load ptr, ptr %concat.lhs240, align 8
  %concat.rhs242 = load i64, ptr @str.35.struct, align 8
  %concat.rhs243 = and i64 %concat.rhs242, 281474976710655
  %str.tag244 = lshr i64 %concat.rhs242, 48
  %str.immortal245 = icmp eq i64 %str.tag244, 0
  br i1 %str.immortal245, label %str_ok247, label %str_gen_check246

str_stale237:                                     ; preds = %str_gen_check235
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok236

str_gen_check246:                                 ; preds = %str_ok236
  %arena.cur249 = call ptr @dva_arena_current()
  %tag.valid250 = call i1 @dva_arena_validate_tag(ptr %arena.cur249, i64 %str.tag244)
  br i1 %tag.valid250, label %str_ok247, label %str_stale248

str_ok247:                                        ; preds = %str_stale248, %str_gen_check246, %str_ok236
  %concat.rhs251 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.35.struct, i32 0, i32 1), align 8
  %concat.sum.len252 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs232, i64 %concat.rhs243)
  %sum253 = extractvalue { i64, i1 } %concat.sum.len252, 0
  %ovf254 = extractvalue { i64, i1 } %concat.sum.len252, 1
  br i1 %ovf254, label %str_overflow_abort256, label %concat.sum.len255

str_stale248:                                     ; preds = %str_gen_check246
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok247

concat.sum.len255:                                ; preds = %str_overflow_abort256, %str_ok247
  %concat.tot.len257 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum253, i64 1)
  %sum258 = extractvalue { i64, i1 } %concat.tot.len257, 0
  %ovf259 = extractvalue { i64, i1 } %concat.tot.len257, 1
  br i1 %ovf259, label %str_overflow_abort261, label %concat.tot.len260

str_overflow_abort256:                            ; preds = %str_ok247
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len255

concat.tot.len260:                                ; preds = %str_overflow_abort261, %concat.sum.len255
  %arena.cur262 = call ptr @dva_arena_current()
  %concat.buf263 = call ptr @dva_arena_alloc(ptr %arena.cur262, i64 %sum258)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf263, ptr align 1 %concat.lhs241, i64 %concat.lhs232, i1 false)
  %concat.mid264 = getelementptr i8, ptr %concat.buf263, i64 %concat.lhs232
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid264, ptr align 1 %concat.rhs251, i64 %concat.rhs243, i1 false)
  %concat.nul265 = getelementptr i8, ptr %concat.buf263, i64 %sum253
  store i8 0, ptr %concat.nul265, align 1
  %arena.cur266 = call ptr @dva_arena_current()
  %concat.str267 = call ptr @dva_arena_alloc(ptr %arena.cur266, i64 16)
  %str.build.len.gep268 = getelementptr inbounds { i64, ptr }, ptr %concat.str267, i32 0, i32 0
  store i64 %sum253, ptr %str.build.len.gep268, align 8
  %str.build.data.gep269 = getelementptr inbounds { i64, ptr }, ptr %concat.str267, i32 0, i32 1
  store ptr %concat.buf263, ptr %str.build.data.gep269, align 8
  %var.load270 = load ptr, ptr %var.msg, align 8
  %concat.lhs271 = getelementptr inbounds { i64, ptr }, ptr %concat.str267, i32 0, i32 0
  %concat.lhs272 = load i64, ptr %concat.lhs271, align 8
  %concat.lhs273 = and i64 %concat.lhs272, 281474976710655
  %str.tag274 = lshr i64 %concat.lhs272, 48
  %str.immortal275 = icmp eq i64 %str.tag274, 0
  br i1 %str.immortal275, label %str_ok277, label %str_gen_check276

str_overflow_abort261:                            ; preds = %concat.sum.len255
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len260

str_gen_check276:                                 ; preds = %concat.tot.len260
  %arena.cur279 = call ptr @dva_arena_current()
  %tag.valid280 = call i1 @dva_arena_validate_tag(ptr %arena.cur279, i64 %str.tag274)
  br i1 %tag.valid280, label %str_ok277, label %str_stale278

str_ok277:                                        ; preds = %str_stale278, %str_gen_check276, %concat.tot.len260
  %concat.lhs281 = getelementptr inbounds { i64, ptr }, ptr %concat.str267, i32 0, i32 1
  %concat.lhs282 = load ptr, ptr %concat.lhs281, align 8
  %concat.rhs283 = getelementptr inbounds { i64, ptr }, ptr %var.load270, i32 0, i32 0
  %concat.rhs284 = load i64, ptr %concat.rhs283, align 8
  %concat.rhs285 = and i64 %concat.rhs284, 281474976710655
  %str.tag286 = lshr i64 %concat.rhs284, 48
  %str.immortal287 = icmp eq i64 %str.tag286, 0
  br i1 %str.immortal287, label %str_ok289, label %str_gen_check288

str_stale278:                                     ; preds = %str_gen_check276
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok277

str_gen_check288:                                 ; preds = %str_ok277
  %arena.cur291 = call ptr @dva_arena_current()
  %tag.valid292 = call i1 @dva_arena_validate_tag(ptr %arena.cur291, i64 %str.tag286)
  br i1 %tag.valid292, label %str_ok289, label %str_stale290

str_ok289:                                        ; preds = %str_stale290, %str_gen_check288, %str_ok277
  %concat.rhs293 = getelementptr inbounds { i64, ptr }, ptr %var.load270, i32 0, i32 1
  %concat.rhs294 = load ptr, ptr %concat.rhs293, align 8
  %concat.sum.len295 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs273, i64 %concat.rhs285)
  %sum296 = extractvalue { i64, i1 } %concat.sum.len295, 0
  %ovf297 = extractvalue { i64, i1 } %concat.sum.len295, 1
  br i1 %ovf297, label %str_overflow_abort299, label %concat.sum.len298

str_stale290:                                     ; preds = %str_gen_check288
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok289

concat.sum.len298:                                ; preds = %str_overflow_abort299, %str_ok289
  %concat.tot.len300 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum296, i64 1)
  %sum301 = extractvalue { i64, i1 } %concat.tot.len300, 0
  %ovf302 = extractvalue { i64, i1 } %concat.tot.len300, 1
  br i1 %ovf302, label %str_overflow_abort304, label %concat.tot.len303

str_overflow_abort299:                            ; preds = %str_ok289
  %29 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len298

concat.tot.len303:                                ; preds = %str_overflow_abort304, %concat.sum.len298
  %arena.cur305 = call ptr @dva_arena_current()
  %concat.buf306 = call ptr @dva_arena_alloc(ptr %arena.cur305, i64 %sum301)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf306, ptr align 1 %concat.lhs282, i64 %concat.lhs273, i1 false)
  %concat.mid307 = getelementptr i8, ptr %concat.buf306, i64 %concat.lhs273
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid307, ptr align 1 %concat.rhs294, i64 %concat.rhs285, i1 false)
  %concat.nul308 = getelementptr i8, ptr %concat.buf306, i64 %sum296
  store i8 0, ptr %concat.nul308, align 1
  %arena.cur309 = call ptr @dva_arena_current()
  %concat.str310 = call ptr @dva_arena_alloc(ptr %arena.cur309, i64 16)
  %str.build.len.gep311 = getelementptr inbounds { i64, ptr }, ptr %concat.str310, i32 0, i32 0
  store i64 %sum296, ptr %str.build.len.gep311, align 8
  %str.build.data.gep312 = getelementptr inbounds { i64, ptr }, ptr %concat.str310, i32 0, i32 1
  store ptr %concat.buf306, ptr %str.build.data.gep312, align 8
  ret ptr %concat.str310

str_overflow_abort304:                            ; preds = %concat.sum.len298
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len303
}

define internal ptr @"time::utc_iso_basic$Unit"(i64 %0) #1 {
entry:
  %call.res = call ptr @"time::resolve_utc_dt$Unit"(i64 %0)
  %call.res1 = call ptr @"time::format_dt_iso_basic"(ptr %call.res)
  ret ptr %call.res1
}

declare ptr @"time::format_dt_iso_basic"(ptr) #1

define internal ptr @"time::resolve_utc_dt$Unit"(i64 %0) #1 {
entry:
  %call.res = call ptr @"time::utc_now_dt"()
  ret ptr %call.res
}

declare ptr @"time::utc_now_dt"() #1

define internal ptr @"time::utc_iso$Unit"(i64 %0) #1 {
entry:
  %call.res = call ptr @"time::resolve_utc_dt$Unit"(i64 %0)
  %call.res1 = call ptr @"time::format_dt_iso"(ptr %call.res)
  ret ptr %call.res1
}

declare ptr @"time::format_dt_iso"(ptr) #1

define internal ptr @"time::iso_basic$Unit"(i64 %0) #1 {
entry:
  %call.res = call ptr @"time::resolve_local_dt$Unit"(i64 %0)
  %call.res1 = call ptr @"time::format_dt_iso_basic"(ptr %call.res)
  ret ptr %call.res1
}

define internal ptr @"time::resolve_local_dt$Unit"(i64 %0) #1 {
entry:
  %call.res = call ptr @"time::local_now_dt"()
  ret ptr %call.res
}

declare ptr @"time::local_now_dt"() #1

define internal ptr @"time::iso$Unit"(i64 %0) #1 {
entry:
  %call.res = call ptr @"time::resolve_local_dt$Unit"(i64 %0)
  %call.res1 = call ptr @"time::format_dt_iso"(ptr %call.res)
  ret ptr %call.res1
}

define ptr @"log::format_kv"(ptr %0, ptr %1, ptr %2) #1 {
entry:
  %var.fields = alloca ptr, align 8
  %var.msg = alloca ptr, align 8
  %var.lvl = alloca ptr, align 8
  store ptr %0, ptr %var.lvl, align 8
  store ptr %1, ptr %var.msg, align 8
  store ptr %2, ptr %var.fields, align 8
  %var.load = load ptr, ptr %var.lvl, align 8
  %var.load1 = load ptr, ptr %var.msg, align 8
  %var.load2 = load ptr, ptr %var.fields, align 8
  %a.load = load ptr, ptr %var.fields, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
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
  store ptr %a.create3, ptr %var.fields, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.fields, align 8
  %call.res = call ptr @"log::#append_fields"(ptr %var.load1, ptr %a.load2)
  %call.res5 = call ptr @"log::format_entry"(ptr %var.load, ptr %call.res)
  ret ptr %call.res5
}

define void @"log::log"(ptr %0, ptr %1) #1 {
entry:
  %var.line = alloca ptr, align 8
  %var.msg = alloca ptr, align 8
  %var.lvl = alloca ptr, align 8
  store ptr %0, ptr %var.lvl, align 8
  store ptr %1, ptr %var.msg, align 8
  %var.load = load ptr, ptr %var.lvl, align 8
  %call.res = call i1 @"log::enabled"(ptr %var.load)
  br i1 %call.res, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.lvl, align 8
  %var.load2 = load ptr, ptr %var.msg, align 8
  %call.res3 = call ptr @"log::format_entry"(ptr %var.load1, ptr %var.load2)
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %call.res3, i32 0, i32 0
  %concat.lhs4 = load i64, ptr %concat.lhs, align 8
  %concat.lhs5 = and i64 %concat.lhs4, 281474976710655
  %str.tag = lshr i64 %concat.lhs4, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %str_ok50, %entry
  ret void

str_gen_check:                                    ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.then
  %concat.lhs6 = getelementptr inbounds { i64, ptr }, ptr %call.res3, i32 0, i32 1
  %concat.lhs7 = load ptr, ptr %concat.lhs6, align 8
  %concat.rhs = load i64, ptr @str.37.struct, align 8
  %concat.rhs8 = and i64 %concat.rhs, 281474976710655
  %str.tag9 = lshr i64 %concat.rhs, 48
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
  %concat.rhs16 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.37.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs5, i64 %concat.rhs8)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len17

str_stale13:                                      ; preds = %str_gen_check11
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

concat.sum.len17:                                 ; preds = %str_overflow_abort, %str_ok12
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum18 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf19 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf19, label %str_overflow_abort21, label %concat.tot.len20

str_overflow_abort:                               ; preds = %str_ok12
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len17

concat.tot.len20:                                 ; preds = %str_overflow_abort21, %concat.sum.len17
  %arena.cur22 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 %sum18)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs7, i64 %concat.lhs5, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs16, i64 %concat.rhs8, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur23 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.line, align 8
  %var.load24 = load i64, ptr @"var.log::#out_fd", align 8
  %var.load25 = load ptr, ptr %var.line, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %arg.str.ptr26 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr27 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %arg.str.ptr28 = load i64, ptr %arg.str.ptr27, align 8
  %arg.str.ptr29 = and i64 %arg.str.ptr28, 281474976710655
  %str.tag30 = lshr i64 %arg.str.ptr28, 48
  %str.immortal31 = icmp eq i64 %str.tag30, 0
  br i1 %str.immortal31, label %str_ok33, label %str_gen_check32

str_overflow_abort21:                             ; preds = %concat.sum.len17
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len20

str_gen_check32:                                  ; preds = %concat.tot.len20
  %arena.cur35 = call ptr @dva_arena_current()
  %tag.valid36 = call i1 @dva_arena_validate_tag(ptr %arena.cur35, i64 %str.tag30)
  br i1 %tag.valid36, label %str_ok33, label %str_stale34

str_ok33:                                         ; preds = %str_stale34, %str_gen_check32, %concat.tot.len20
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr26, i64 %arg.str.ptr29
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr37, label %nulcopy

str_stale34:                                      ; preds = %str_gen_check32
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok33

arg.str.ptr37:                                    ; preds = %str_ok33
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok33
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr29, i64 1)
  %sum38 = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf39 = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf39, label %str_overflow_abort41, label %nulcopy.len40

nulmerge:                                         ; preds = %nulcopy.len40, %arg.str.ptr37
  %arg.str.ptr43 = phi ptr [ %arg.str.ptr26, %arg.str.ptr37 ], [ %nulcopy.buf, %nulcopy.len40 ]
  %var.load44 = load ptr, ptr %var.line, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load44, i32 0, i32 0
  %str.len.query45 = load i64, ptr %str.len.query, align 8
  %str.len.query46 = and i64 %str.len.query45, 281474976710655
  %str.tag47 = lshr i64 %str.len.query45, 48
  %str.immortal48 = icmp eq i64 %str.tag47, 0
  br i1 %str.immortal48, label %str_ok50, label %str_gen_check49

nulcopy.len40:                                    ; preds = %str_overflow_abort41, %nulcopy
  %arena.cur42 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 %sum38)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr26, i64 %arg.str.ptr29, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr29
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort41:                             ; preds = %nulcopy
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len40

str_gen_check49:                                  ; preds = %nulmerge
  %arena.cur52 = call ptr @dva_arena_current()
  %tag.valid53 = call i1 @dva_arena_validate_tag(ptr %arena.cur52, i64 %str.tag47)
  br i1 %tag.valid53, label %str_ok50, label %str_stale51

str_ok50:                                         ; preds = %str_stale51, %str_gen_check49, %nulmerge
  %coerce.trunc = trunc i64 %var.load24 to i32
  %call.res54 = call i64 @write(i32 %coerce.trunc, ptr %arg.str.ptr43, i64 %str.len.query46)
  br label %choice.exit

str_stale51:                                      ; preds = %str_gen_check49
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok50
}

define void @"log::log_kv"(ptr %0, ptr %1, ptr %2) #1 {
entry:
  %var.line = alloca ptr, align 8
  %var.fields = alloca ptr, align 8
  %var.msg = alloca ptr, align 8
  %var.lvl = alloca ptr, align 8
  store ptr %0, ptr %var.lvl, align 8
  store ptr %1, ptr %var.msg, align 8
  store ptr %2, ptr %var.fields, align 8
  %var.load = load ptr, ptr %var.lvl, align 8
  %call.res = call i1 @"log::enabled"(ptr %var.load)
  br i1 %call.res, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.lvl, align 8
  %var.load2 = load ptr, ptr %var.msg, align 8
  %var.load3 = load ptr, ptr %var.fields, align 8
  %a.load = load ptr, ptr %var.fields, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %str_ok54, %entry
  ret void

a.create:                                         ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %a.create4 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur5 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create4, ptr %var.fields, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.fields, align 8
  %call.res6 = call ptr @"log::format_kv"(ptr %var.load1, ptr %var.load2, ptr %a.load2)
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %call.res6, i32 0, i32 0
  %concat.lhs7 = load i64, ptr %concat.lhs, align 8
  %concat.lhs8 = and i64 %concat.lhs7, 281474976710655
  %str.tag = lshr i64 %concat.lhs7, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %a.after
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %a.after
  %concat.lhs10 = getelementptr inbounds { i64, ptr }, ptr %call.res6, i32 0, i32 1
  %concat.lhs11 = load ptr, ptr %concat.lhs10, align 8
  %concat.rhs = load i64, ptr @str.37.struct, align 8
  %concat.rhs12 = and i64 %concat.rhs, 281474976710655
  %str.tag13 = lshr i64 %concat.rhs, 48
  %str.immortal14 = icmp eq i64 %str.tag13, 0
  br i1 %str.immortal14, label %str_ok16, label %str_gen_check15

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check15:                                  ; preds = %str_ok
  %arena.cur18 = call ptr @dva_arena_current()
  %tag.valid19 = call i1 @dva_arena_validate_tag(ptr %arena.cur18, i64 %str.tag13)
  br i1 %tag.valid19, label %str_ok16, label %str_stale17

str_ok16:                                         ; preds = %str_stale17, %str_gen_check15, %str_ok
  %concat.rhs20 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.37.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs8, i64 %concat.rhs12)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len21

str_stale17:                                      ; preds = %str_gen_check15
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok16

concat.sum.len21:                                 ; preds = %str_overflow_abort, %str_ok16
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum22 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf23 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf23, label %str_overflow_abort25, label %concat.tot.len24

str_overflow_abort:                               ; preds = %str_ok16
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len21

concat.tot.len24:                                 ; preds = %str_overflow_abort25, %concat.sum.len21
  %arena.cur26 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 %sum22)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs11, i64 %concat.lhs8, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs20, i64 %concat.rhs12, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur27 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.line, align 8
  %var.load28 = load i64, ptr @"var.log::#out_fd", align 8
  %var.load29 = load ptr, ptr %var.line, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 1
  %arg.str.ptr30 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr31 = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 0
  %arg.str.ptr32 = load i64, ptr %arg.str.ptr31, align 8
  %arg.str.ptr33 = and i64 %arg.str.ptr32, 281474976710655
  %str.tag34 = lshr i64 %arg.str.ptr32, 48
  %str.immortal35 = icmp eq i64 %str.tag34, 0
  br i1 %str.immortal35, label %str_ok37, label %str_gen_check36

str_overflow_abort25:                             ; preds = %concat.sum.len21
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len24

str_gen_check36:                                  ; preds = %concat.tot.len24
  %arena.cur39 = call ptr @dva_arena_current()
  %tag.valid40 = call i1 @dva_arena_validate_tag(ptr %arena.cur39, i64 %str.tag34)
  br i1 %tag.valid40, label %str_ok37, label %str_stale38

str_ok37:                                         ; preds = %str_stale38, %str_gen_check36, %concat.tot.len24
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr30, i64 %arg.str.ptr33
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr41, label %nulcopy

str_stale38:                                      ; preds = %str_gen_check36
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok37

arg.str.ptr41:                                    ; preds = %str_ok37
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok37
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr33, i64 1)
  %sum42 = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf43 = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf43, label %str_overflow_abort45, label %nulcopy.len44

nulmerge:                                         ; preds = %nulcopy.len44, %arg.str.ptr41
  %arg.str.ptr47 = phi ptr [ %arg.str.ptr30, %arg.str.ptr41 ], [ %nulcopy.buf, %nulcopy.len44 ]
  %var.load48 = load ptr, ptr %var.line, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 0
  %str.len.query49 = load i64, ptr %str.len.query, align 8
  %str.len.query50 = and i64 %str.len.query49, 281474976710655
  %str.tag51 = lshr i64 %str.len.query49, 48
  %str.immortal52 = icmp eq i64 %str.tag51, 0
  br i1 %str.immortal52, label %str_ok54, label %str_gen_check53

nulcopy.len44:                                    ; preds = %str_overflow_abort45, %nulcopy
  %arena.cur46 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 %sum42)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr30, i64 %arg.str.ptr33, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr33
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort45:                             ; preds = %nulcopy
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len44

str_gen_check53:                                  ; preds = %nulmerge
  %arena.cur56 = call ptr @dva_arena_current()
  %tag.valid57 = call i1 @dva_arena_validate_tag(ptr %arena.cur56, i64 %str.tag51)
  br i1 %tag.valid57, label %str_ok54, label %str_stale55

str_ok54:                                         ; preds = %str_stale55, %str_gen_check53, %nulmerge
  %coerce.trunc = trunc i64 %var.load28 to i32
  %call.res58 = call i64 @write(i32 %coerce.trunc, ptr %arg.str.ptr47, i64 %str.len.query50)
  br label %choice.exit

str_stale55:                                      ; preds = %str_gen_check53
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok54
}

define void @"log::debug"(ptr %0) #1 {
entry:
  %var.msg = alloca ptr, align 8
  store ptr %0, ptr %var.msg, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load = load ptr, ptr %var.msg, align 8
  call void @"log::log"(ptr %enum.alloc, ptr %var.load)
  ret void
}

define void @"log::info"(ptr %0) #1 {
entry:
  %var.msg = alloca ptr, align 8
  store ptr %0, ptr %var.msg, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load = load ptr, ptr %var.msg, align 8
  call void @"log::log"(ptr %enum.alloc, ptr %var.load)
  ret void
}

define void @"log::warn"(ptr %0) #1 {
entry:
  %var.msg = alloca ptr, align 8
  store ptr %0, ptr %var.msg, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 2, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load = load ptr, ptr %var.msg, align 8
  call void @"log::log"(ptr %enum.alloc, ptr %var.load)
  ret void
}

define void @"log::error"(ptr %0) #1 {
entry:
  %var.msg = alloca ptr, align 8
  store ptr %0, ptr %var.msg, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 3, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load = load ptr, ptr %var.msg, align 8
  call void @"log::log"(ptr %enum.alloc, ptr %var.load)
  ret void
}

define void @"log::debug_kv"(ptr %0, ptr %1) #1 {
entry:
  %var.fields = alloca ptr, align 8
  %var.msg = alloca ptr, align 8
  store ptr %0, ptr %var.msg, align 8
  store ptr %1, ptr %var.fields, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load = load ptr, ptr %var.msg, align 8
  %var.load1 = load ptr, ptr %var.fields, align 8
  %a.load = load ptr, ptr %var.fields, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = call ptr @dva_arena_current()
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create3, ptr %var.fields, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.fields, align 8
  call void @"log::log_kv"(ptr %enum.alloc, ptr %var.load, ptr %a.load2)
  ret void
}

define void @"log::info_kv"(ptr %0, ptr %1) #1 {
entry:
  %var.fields = alloca ptr, align 8
  %var.msg = alloca ptr, align 8
  store ptr %0, ptr %var.msg, align 8
  store ptr %1, ptr %var.fields, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load = load ptr, ptr %var.msg, align 8
  %var.load1 = load ptr, ptr %var.fields, align 8
  %a.load = load ptr, ptr %var.fields, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = call ptr @dva_arena_current()
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create3, ptr %var.fields, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.fields, align 8
  call void @"log::log_kv"(ptr %enum.alloc, ptr %var.load, ptr %a.load2)
  ret void
}

define void @"log::warn_kv"(ptr %0, ptr %1) #1 {
entry:
  %var.fields = alloca ptr, align 8
  %var.msg = alloca ptr, align 8
  store ptr %0, ptr %var.msg, align 8
  store ptr %1, ptr %var.fields, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 2, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load = load ptr, ptr %var.msg, align 8
  %var.load1 = load ptr, ptr %var.fields, align 8
  %a.load = load ptr, ptr %var.fields, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = call ptr @dva_arena_current()
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create3, ptr %var.fields, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.fields, align 8
  call void @"log::log_kv"(ptr %enum.alloc, ptr %var.load, ptr %a.load2)
  ret void
}

define void @"log::error_kv"(ptr %0, ptr %1) #1 {
entry:
  %var.fields = alloca ptr, align 8
  %var.msg = alloca ptr, align 8
  store ptr %0, ptr %var.msg, align 8
  store ptr %1, ptr %var.fields, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 3, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load = load ptr, ptr %var.msg, align 8
  %var.load1 = load ptr, ptr %var.fields, align 8
  %a.load = load ptr, ptr %var.fields, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = call ptr @dva_arena_current()
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create3, ptr %var.fields, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.fields, align 8
  call void @"log::log_kv"(ptr %enum.alloc, ptr %var.load, ptr %a.load2)
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
