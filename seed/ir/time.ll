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
@"var.time::CLOCK_REALTIME" = global i64 0
@"var.time::CLOCK_MONOTONIC" = global i64 1
@clo.const = internal constant { ptr, ptr } { ptr @"time::clock_realtime", ptr null }
@"var.time::clock_realtime" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"time::clock_monotonic", ptr null }
@"var.time::clock_monotonic" = global ptr null
@"var.time::NS_PER_US" = global i64 1000
@"var.time::NS_PER_MS" = global i64 1000000
@"var.time::NS_PER_SEC" = global i64 1000000000
@"var.time::SEC_PER_MIN" = global i64 60
@"var.time::SEC_PER_HOUR" = global i64 3600
@"var.time::SEC_PER_DAY" = global i64 86400
@div_zero_msg = internal unnamed_addr constant [33 x i8] c"E4012: integer division by zero\0A\00"
@div_ovf_msg = internal unnamed_addr constant [56 x i8] c"E4013: signed integer division overflow (INT_MIN / -1)\0A\00"
@clo.const.2 = internal constant { ptr, ptr } { ptr @"time::#floor_div", ptr null }
@"var.time::#floor_div" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"time::#floor_mod", ptr null }
@"var.time::#floor_mod" = global ptr null
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.4 = internal constant { ptr, ptr } { ptr @"time::#pad2", ptr null }
@"var.time::#pad2" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"time::#pad3", ptr null }
@"var.time::#pad3" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"time::#pad4", ptr null }
@"var.time::#pad4" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"time::#tm_to_datetime", ptr null }
@"var.time::#tm_to_datetime" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"time::#datetime_to_tm", ptr null }
@"var.time::#datetime_to_tm" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"time::#days_from_civil", ptr null }
@"var.time::#days_from_civil" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"time::#civil_from_days", ptr null }
@"var.time::#civil_from_days" = global ptr null
@str.0 = internal unnamed_addr constant [4 x i8] c"Sun\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.0 }
@str.1 = internal unnamed_addr constant [4 x i8] c"Mon\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.1 }
@str.2 = internal unnamed_addr constant [4 x i8] c"Tue\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.2 }
@str.3 = internal unnamed_addr constant [4 x i8] c"Wed\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.3 }
@str.4 = internal unnamed_addr constant [4 x i8] c"Thu\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.4 }
@str.5 = internal unnamed_addr constant [4 x i8] c"Fri\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.5 }
@str.6 = internal unnamed_addr constant [4 x i8] c"Sat\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.6 }
@clo.const.11 = internal constant { ptr, ptr } { ptr @"time::#short_weekday_name", ptr null }
@"var.time::#short_weekday_name" = global ptr null
@str.7 = internal unnamed_addr constant [7 x i8] c"Sunday\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.7 }
@str.8 = internal unnamed_addr constant [7 x i8] c"Monday\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.8 }
@str.9 = internal unnamed_addr constant [8 x i8] c"Tuesday\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.9 }
@str.10 = internal unnamed_addr constant [10 x i8] c"Wednesday\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 9, ptr @str.10 }
@str.11 = internal unnamed_addr constant [9 x i8] c"Thursday\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.11 }
@str.12 = internal unnamed_addr constant [7 x i8] c"Friday\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.12 }
@str.13 = internal unnamed_addr constant [9 x i8] c"Saturday\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.13 }
@clo.const.12 = internal constant { ptr, ptr } { ptr @"time::#full_weekday_name", ptr null }
@"var.time::#full_weekday_name" = global ptr null
@str.14 = internal unnamed_addr constant [4 x i8] c"Jan\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.14 }
@str.15 = internal unnamed_addr constant [4 x i8] c"Feb\00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.15 }
@str.16 = internal unnamed_addr constant [4 x i8] c"Mar\00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.16 }
@str.17 = internal unnamed_addr constant [4 x i8] c"Apr\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.17 }
@str.18 = internal unnamed_addr constant [4 x i8] c"May\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.18 }
@str.19 = internal unnamed_addr constant [4 x i8] c"Jun\00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.19 }
@str.20 = internal unnamed_addr constant [4 x i8] c"Jul\00"
@str.20.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.20 }
@str.21 = internal unnamed_addr constant [4 x i8] c"Aug\00"
@str.21.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.21 }
@str.22 = internal unnamed_addr constant [4 x i8] c"Sep\00"
@str.22.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.22 }
@str.23 = internal unnamed_addr constant [4 x i8] c"Oct\00"
@str.23.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.23 }
@str.24 = internal unnamed_addr constant [4 x i8] c"Nov\00"
@str.24.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.24 }
@str.25 = internal unnamed_addr constant [4 x i8] c"Dec\00"
@str.25.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.25 }
@clo.const.13 = internal constant { ptr, ptr } { ptr @"time::#short_month_name", ptr null }
@"var.time::#short_month_name" = global ptr null
@str.26 = internal unnamed_addr constant [8 x i8] c"January\00"
@str.26.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.26 }
@str.27 = internal unnamed_addr constant [9 x i8] c"February\00"
@str.27.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.27 }
@str.28 = internal unnamed_addr constant [6 x i8] c"March\00"
@str.28.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.28 }
@str.29 = internal unnamed_addr constant [6 x i8] c"April\00"
@str.29.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.29 }
@str.30 = internal unnamed_addr constant [5 x i8] c"June\00"
@str.30.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.30 }
@str.31 = internal unnamed_addr constant [5 x i8] c"July\00"
@str.31.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.31 }
@str.32 = internal unnamed_addr constant [7 x i8] c"August\00"
@str.32.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.32 }
@str.33 = internal unnamed_addr constant [10 x i8] c"September\00"
@str.33.struct = internal unnamed_addr constant { i64, ptr } { i64 9, ptr @str.33 }
@str.34 = internal unnamed_addr constant [8 x i8] c"October\00"
@str.34.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.34 }
@str.35 = internal unnamed_addr constant [9 x i8] c"November\00"
@str.35.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.35 }
@str.36 = internal unnamed_addr constant [9 x i8] c"December\00"
@str.36.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.36 }
@clo.const.14 = internal constant { ptr, ptr } { ptr @"time::#full_month_name", ptr null }
@"var.time::#full_month_name" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"time::#write_date_into", ptr null }
@"var.time::#write_date_into" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"time::#write_clock_into", ptr null }
@"var.time::#write_clock_into" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"time::#write_tz_iso_into", ptr null }
@"var.time::#write_tz_iso_into" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"time::#write_tz_compact_into", ptr null }
@"var.time::#write_tz_compact_into" = global ptr null
@clo.const.19 = internal constant { ptr, ptr } { ptr @"time::#write_date_basic_into", ptr null }
@"var.time::#write_date_basic_into" = global ptr null
@clo.const.20 = internal constant { ptr, ptr } { ptr @"time::#write_clock_basic_into", ptr null }
@"var.time::#write_clock_basic_into" = global ptr null
@clo.const.21 = internal constant { ptr, ptr } { ptr @"time::#write_tz_basic_into", ptr null }
@"var.time::#write_tz_basic_into" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"time::format_dt_iso", ptr null }
@"var.time::format_dt_iso" = global ptr null
@clo.const.23 = internal constant { ptr, ptr } { ptr @"time::format_dt_iso_basic", ptr null }
@"var.time::format_dt_iso_basic" = global ptr null
@clo.const.24 = internal constant { ptr, ptr } { ptr @"time::format_dt_date", ptr null }
@"var.time::format_dt_date" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"time::format_dt_clock", ptr null }
@"var.time::format_dt_clock" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"time::now", ptr null }
@"var.time::now" = global ptr null
@clo.const.27 = internal constant { ptr, ptr } { ptr @"time::now_ms", ptr null }
@"var.time::now_ms" = global ptr null
@clo.const.28 = internal constant { ptr, ptr } { ptr @"time::now_ns", ptr null }
@"var.time::now_ns" = global ptr null
@clo.const.29 = internal constant { ptr, ptr } { ptr @"time::now_f64", ptr null }
@"var.time::now_f64" = global ptr null
@clo.const.30 = internal constant { ptr, ptr } { ptr @"time::mono_ns", ptr null }
@"var.time::mono_ns" = global ptr null
@clo.const.31 = internal constant { ptr, ptr } { ptr @"time::mono_ms", ptr null }
@"var.time::mono_ms" = global ptr null
@clo.const.32 = internal constant { ptr, ptr } { ptr @"time::mono_f64", ptr null }
@"var.time::mono_f64" = global ptr null
@clo.const.33 = internal constant { ptr, ptr } { ptr @"time::elapsed_ms", ptr null }
@"var.time::elapsed_ms" = global ptr null
@clo.const.34 = internal constant { ptr, ptr } { ptr @"time::elapsed_f64", ptr null }
@"var.time::elapsed_f64" = global ptr null
@clo.const.35 = internal constant { ptr, ptr } { ptr @"time::sleep_ns", ptr null }
@"var.time::sleep_ns" = global ptr null
@clo.const.36 = internal constant { ptr, ptr } { ptr @"time::sleep_ms", ptr null }
@"var.time::sleep_ms" = global ptr null
@clo.const.37 = internal constant { ptr, ptr } { ptr @"time::sleep", ptr null }
@"var.time::sleep" = global ptr null
@clo.const.38 = internal constant { ptr, ptr } { ptr @"time::is_leap_year", ptr null }
@"var.time::is_leap_year" = global ptr null
@clo.const.39 = internal constant { ptr, ptr } { ptr @"time::days_in_month", ptr null }
@"var.time::days_in_month" = global ptr null
@clo.const.40 = internal constant { ptr, ptr } { ptr @"time::utc_from_epoch", ptr null }
@"var.time::utc_from_epoch" = global ptr null
@clo.const.41 = internal constant { ptr, ptr } { ptr @"time::epoch", ptr null }
@"var.time::epoch" = global ptr null
@clo.const.42 = internal constant { ptr, ptr } { ptr @"time::datetime_utc", ptr null }
@"var.time::datetime_utc" = global ptr null
@clo.const.43 = internal constant { ptr, ptr } { ptr @"time::local_from_sec", ptr null }
@"var.time::local_from_sec" = global ptr null
@clo.const.44 = internal constant { ptr, ptr } { ptr @"time::local_now_dt", ptr null }
@"var.time::local_now_dt" = global ptr null
@clo.const.45 = internal constant { ptr, ptr } { ptr @"time::utc_now_dt", ptr null }
@"var.time::utc_now_dt" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@str.37 = internal unnamed_addr constant [3 x i8] c"AM\00"
@str.37.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.37 }
@str.38 = internal unnamed_addr constant [3 x i8] c"PM\00"
@str.38.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.38 }
@str.39 = internal unnamed_addr constant [3 x i8] c"am\00"
@str.39.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.39 }
@str.40 = internal unnamed_addr constant [3 x i8] c"pm\00"
@str.40.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.40 }
@str.41 = internal unnamed_addr constant [4 x i8] c"UTC\00"
@str.41.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.41 }
@clo.const.46 = internal constant { ptr, ptr } { ptr @"time::format_dt_pattern", ptr null }
@"var.time::format_dt_pattern" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_time, ptr null }]

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

define internal void @__dva_global_init_time() #1 {
entry:
  store i64 0, ptr @"var.time::CLOCK_REALTIME", align 8
  store i64 1, ptr @"var.time::CLOCK_MONOTONIC", align 8
  store ptr @clo.const, ptr @"var.time::clock_realtime", align 8
  store ptr @clo.const.1, ptr @"var.time::clock_monotonic", align 8
  store i64 1000, ptr @"var.time::NS_PER_US", align 8
  store i64 1000000, ptr @"var.time::NS_PER_MS", align 8
  store i64 1000000000, ptr @"var.time::NS_PER_SEC", align 8
  store i64 60, ptr @"var.time::SEC_PER_MIN", align 8
  store i64 3600, ptr @"var.time::SEC_PER_HOUR", align 8
  store i64 86400, ptr @"var.time::SEC_PER_DAY", align 8
  store ptr @clo.const.2, ptr @"var.time::#floor_div", align 8
  store ptr @clo.const.3, ptr @"var.time::#floor_mod", align 8
  store ptr @clo.const.4, ptr @"var.time::#pad2", align 8
  store ptr @clo.const.5, ptr @"var.time::#pad3", align 8
  store ptr @clo.const.6, ptr @"var.time::#pad4", align 8
  store ptr @clo.const.7, ptr @"var.time::#tm_to_datetime", align 8
  store ptr @clo.const.8, ptr @"var.time::#datetime_to_tm", align 8
  store ptr @clo.const.9, ptr @"var.time::#days_from_civil", align 8
  store ptr @clo.const.10, ptr @"var.time::#civil_from_days", align 8
  store ptr @clo.const.11, ptr @"var.time::#short_weekday_name", align 8
  store ptr @clo.const.12, ptr @"var.time::#full_weekday_name", align 8
  store ptr @clo.const.13, ptr @"var.time::#short_month_name", align 8
  store ptr @clo.const.14, ptr @"var.time::#full_month_name", align 8
  store ptr @clo.const.15, ptr @"var.time::#write_date_into", align 8
  store ptr @clo.const.16, ptr @"var.time::#write_clock_into", align 8
  store ptr @clo.const.17, ptr @"var.time::#write_tz_iso_into", align 8
  store ptr @clo.const.18, ptr @"var.time::#write_tz_compact_into", align 8
  store ptr @clo.const.19, ptr @"var.time::#write_date_basic_into", align 8
  store ptr @clo.const.20, ptr @"var.time::#write_clock_basic_into", align 8
  store ptr @clo.const.21, ptr @"var.time::#write_tz_basic_into", align 8
  store ptr @clo.const.22, ptr @"var.time::format_dt_iso", align 8
  store ptr @clo.const.23, ptr @"var.time::format_dt_iso_basic", align 8
  store ptr @clo.const.24, ptr @"var.time::format_dt_date", align 8
  store ptr @clo.const.25, ptr @"var.time::format_dt_clock", align 8
  store ptr @clo.const.26, ptr @"var.time::now", align 8
  store ptr @clo.const.27, ptr @"var.time::now_ms", align 8
  store ptr @clo.const.28, ptr @"var.time::now_ns", align 8
  store ptr @clo.const.29, ptr @"var.time::now_f64", align 8
  store ptr @clo.const.30, ptr @"var.time::mono_ns", align 8
  store ptr @clo.const.31, ptr @"var.time::mono_ms", align 8
  store ptr @clo.const.32, ptr @"var.time::mono_f64", align 8
  store ptr @clo.const.33, ptr @"var.time::elapsed_ms", align 8
  store ptr @clo.const.34, ptr @"var.time::elapsed_f64", align 8
  store ptr @clo.const.35, ptr @"var.time::sleep_ns", align 8
  store ptr @clo.const.36, ptr @"var.time::sleep_ms", align 8
  store ptr @clo.const.37, ptr @"var.time::sleep", align 8
  store ptr @clo.const.38, ptr @"var.time::is_leap_year", align 8
  store ptr @clo.const.39, ptr @"var.time::days_in_month", align 8
  store ptr @clo.const.40, ptr @"var.time::utc_from_epoch", align 8
  store ptr @clo.const.41, ptr @"var.time::epoch", align 8
  store ptr @clo.const.42, ptr @"var.time::datetime_utc", align 8
  store ptr @clo.const.43, ptr @"var.time::local_from_sec", align 8
  store ptr @clo.const.44, ptr @"var.time::local_now_dt", align 8
  store ptr @clo.const.45, ptr @"var.time::utc_now_dt", align 8
  store ptr @clo.const.46, ptr @"var.time::format_dt_pattern", align 8
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

declare i32 @clock_gettime(i32, ptr)

declare i32 @nanosleep(ptr, ptr)

declare ptr @localtime_r(ptr, ptr)

declare ptr @gmtime_r(ptr, ptr)

declare i64 @mktime(ptr)

declare i64 @strftime(ptr, i64, ptr, ptr)

define i32 @"time::clock_realtime"() #1 {
entry:
  ret i32 0
}

define i32 @"time::clock_monotonic"() #1 {
entry:
  %var.load = load i64, ptr @"var.time::CLOCK_MONOTONIC", align 8
  %coerce.trunc = trunc i64 %var.load to i32
  ret i32 %coerce.trunc
}

define internal i64 @"time::#floor_div"(i64 %0, i64 %1) #1 {
entry:
  %var.r = alloca i64, align 8
  %var.q = alloca i64, align 8
  %var.b = alloca i64, align 8
  %var.a = alloca i64, align 8
  store i64 %0, ptr %var.a, align 8
  store i64 %1, ptr %var.b, align 8
  %var.load = load i64, ptr %var.a, align 8
  %var.load1 = load i64, ptr %var.b, align 8
  %div.is.zero = icmp eq i64 %var.load1, 0
  br i1 %div.is.zero, label %div.zero_abort, label %div.not_zero

div.not_zero:                                     ; preds = %div.zero_abort, %entry
  %div.is.min = icmp eq i64 %var.load, -9223372036854775808
  %div.is.negone = icmp eq i64 %var.load1, -1
  %div.is.ovf = and i1 %div.is.min, %div.is.negone
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %entry
  %2 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %divtmp = sdiv i64 %var.load, %var.load1
  store i64 %divtmp, ptr %var.q, align 8
  %var.load2 = load i64, ptr %var.a, align 8
  %var.load3 = load i64, ptr %var.b, align 8
  %div.is.zero4 = icmp eq i64 %var.load3, 0
  br i1 %div.is.zero4, label %div.zero_abort6, label %div.not_zero5

div.ovf_abort:                                    ; preds = %div.not_zero
  %3 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

div.not_zero5:                                    ; preds = %div.zero_abort6, %div.ok
  %div.is.min7 = icmp eq i64 %var.load2, -9223372036854775808
  %div.is.negone8 = icmp eq i64 %var.load3, -1
  %div.is.ovf9 = and i1 %div.is.min7, %div.is.negone8
  br i1 %div.is.ovf9, label %div.ovf_abort11, label %div.ok10

div.zero_abort6:                                  ; preds = %div.ok
  %4 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero5

div.ok10:                                         ; preds = %div.ovf_abort11, %div.not_zero5
  %modtmp = srem i64 %var.load2, %var.load3
  store i64 %modtmp, ptr %var.r, align 8
  %var.load12 = load i64, ptr %var.r, align 8
  %cmptmp = icmp slt i64 %var.load12, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

div.ovf_abort11:                                  ; preds = %div.not_zero5
  %5 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok10

choice.then:                                      ; preds = %div.ok10
  %var.load13 = load i64, ptr %var.q, align 8
  %subtmp = sub i64 %var.load13, 1
  br label %choice.exit

choice.else:                                      ; preds = %div.ok10
  %var.load14 = load i64, ptr %var.q, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %subtmp, %choice.then ], [ %var.load14, %choice.else ]
  ret i64 %choice.res
}

define internal i64 @"time::#floor_mod"(i64 %0, i64 %1) #1 {
entry:
  %var.r = alloca i64, align 8
  %var.b = alloca i64, align 8
  %var.a = alloca i64, align 8
  store i64 %0, ptr %var.a, align 8
  store i64 %1, ptr %var.b, align 8
  %var.load = load i64, ptr %var.a, align 8
  %var.load1 = load i64, ptr %var.b, align 8
  %div.is.zero = icmp eq i64 %var.load1, 0
  br i1 %div.is.zero, label %div.zero_abort, label %div.not_zero

div.not_zero:                                     ; preds = %div.zero_abort, %entry
  %div.is.min = icmp eq i64 %var.load, -9223372036854775808
  %div.is.negone = icmp eq i64 %var.load1, -1
  %div.is.ovf = and i1 %div.is.min, %div.is.negone
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %entry
  %2 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %modtmp = srem i64 %var.load, %var.load1
  store i64 %modtmp, ptr %var.r, align 8
  %var.load2 = load i64, ptr %var.r, align 8
  %cmptmp = icmp slt i64 %var.load2, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

div.ovf_abort:                                    ; preds = %div.not_zero
  %3 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

choice.then:                                      ; preds = %div.ok
  %var.load3 = load i64, ptr %var.r, align 8
  %var.load4 = load i64, ptr %var.b, align 8
  %addtmp = add i64 %var.load3, %var.load4
  br label %choice.exit

choice.else:                                      ; preds = %div.ok
  %var.load5 = load i64, ptr %var.r, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %addtmp, %choice.then ], [ %var.load5, %choice.else ]
  ret i64 %choice.res
}

define internal void @"time::#pad2"(ptr %0, i64 %1) #1 {
entry:
  %var.v = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i64 %1, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %cmptmp = icmp slt i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.n, align 8
  %negtmp = sub i64 0, %var.load1
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.n, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %negtmp, %choice.then ], [ %var.load2, %choice.else ]
  store i64 %choice.res, ptr %var.v, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load3 = load i64, ptr %var.v, align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

div.not_zero:                                     ; preds = %div.zero_abort, %choice.exit
  %div.is.min = icmp eq i64 %var.load3, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.exit
  %2 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %divtmp = sdiv i64 %var.load3, 10
  br i1 false, label %div.zero_abort5, label %div.not_zero4

div.ovf_abort:                                    ; preds = %div.not_zero
  %3 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

div.not_zero4:                                    ; preds = %div.zero_abort5, %div.ok
  %div.is.min6 = icmp eq i64 %divtmp, -9223372036854775808
  %div.is.ovf7 = and i1 %div.is.min6, false
  br i1 %div.is.ovf7, label %div.ovf_abort9, label %div.ok8

div.zero_abort5:                                  ; preds = %div.ok
  %4 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero4

div.ok8:                                          ; preds = %div.ovf_abort9, %div.not_zero4
  %modtmp = srem i64 %divtmp, 10
  %addtmp = add i64 48, %modtmp
  %b.b.ge0 = icmp sge i64 %addtmp, 0
  %b.b.le255 = icmp sle i64 %addtmp, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

div.ovf_abort9:                                   ; preds = %div.not_zero4
  %5 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok8

b.byte_ok:                                        ; preds = %b.byte_err, %div.ok8
  %b.byte.i8 = trunc i64 %addtmp to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len10 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap11 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data12 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len10, %b.cap11
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %div.ok8
  %6 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap11, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.new.buf.len13

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len13
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data14 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len15 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data14, i64 %b.cur.len15
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len15, 1
  %b.nul = getelementptr i8, ptr %b.cur.data14, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep, align 8
  %b.load16 = load ptr, ptr %var.b, align 8
  %var.load17 = load i64, ptr %var.v, align 8
  br i1 false, label %div.zero_abort19, label %div.not_zero18

b.new.buf.len13:                                  ; preds = %str_overflow_abort, %b.grow
  %arena.cur = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data12, i64 %b.len10, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len10
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort:                               ; preds = %b.grow
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len13

div.not_zero18:                                   ; preds = %div.zero_abort19, %b.push_done
  %div.is.min20 = icmp eq i64 %var.load17, -9223372036854775808
  %div.is.ovf21 = and i1 %div.is.min20, false
  br i1 %div.is.ovf21, label %div.ovf_abort23, label %div.ok22

div.zero_abort19:                                 ; preds = %b.push_done
  %8 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero18

div.ok22:                                         ; preds = %div.ovf_abort23, %div.not_zero18
  %modtmp24 = srem i64 %var.load17, 10
  %addtmp25 = add i64 48, %modtmp24
  %b.b.ge026 = icmp sge i64 %addtmp25, 0
  %b.b.le25527 = icmp sle i64 %addtmp25, 255
  %b.byte.range28 = and i1 %b.b.ge026, %b.b.le25527
  br i1 %b.byte.range28, label %b.byte_ok29, label %b.byte_err30

div.ovf_abort23:                                  ; preds = %div.not_zero18
  %9 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok22

b.byte_ok29:                                      ; preds = %b.byte_err30, %div.ok22
  %b.byte.i831 = trunc i64 %addtmp25 to i8
  %b.len32 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 0
  %b.len33 = load i64, ptr %b.len32, align 8
  %b.cap34 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 2
  %b.cap35 = load i64, ptr %b.cap34, align 8
  %b.data36 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 1
  %b.data37 = load ptr, ptr %b.data36, align 8
  %b.needs.grow38 = icmp eq i64 %b.len33, %b.cap35
  br i1 %b.needs.grow38, label %b.grow39, label %b.nogrow40

b.byte_err30:                                     ; preds = %div.ok22
  %10 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok29

b.grow39:                                         ; preds = %b.byte_ok29
  %b.cap242 = mul i64 %b.cap35, 2
  %b.cap.small43 = icmp slt i64 %b.cap242, 16
  %b.new.cap44 = select i1 %b.cap.small43, i64 16, i64 %b.cap242
  %b.new.buf.len45 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap44, i64 1)
  %sum46 = extractvalue { i64, i1 } %b.new.buf.len45, 0
  %ovf47 = extractvalue { i64, i1 } %b.new.buf.len45, 1
  br i1 %ovf47, label %str_overflow_abort49, label %b.new.buf.len48

b.nogrow40:                                       ; preds = %b.byte_ok29
  br label %b.push_done41

b.push_done41:                                    ; preds = %b.nogrow40, %b.new.buf.len48
  %b.cur.data55 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 1
  %b.cur.data56 = load ptr, ptr %b.cur.data55, align 8
  %b.cur.len57 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 0
  %b.cur.len58 = load i64, ptr %b.cur.len57, align 8
  %b.byte.gep59 = getelementptr i8, ptr %b.cur.data56, i64 %b.cur.len58
  store i8 %b.byte.i831, ptr %b.byte.gep59, align 1
  %b.next.len60 = add i64 %b.cur.len58, 1
  %b.nul61 = getelementptr i8, ptr %b.cur.data56, i64 %b.next.len60
  store i8 0, ptr %b.nul61, align 1
  %b.len.gep62 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 0
  store i64 %b.next.len60, ptr %b.len.gep62, align 8
  ret void

b.new.buf.len48:                                  ; preds = %str_overflow_abort49, %b.grow39
  %arena.cur50 = call ptr @dva_arena_current()
  %b.new.buf51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 %sum46)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf51, ptr align 1 %b.data37, i64 %b.len33, i1 false)
  %b.grow.nul52 = getelementptr i8, ptr %b.new.buf51, i64 %b.len33
  store i8 0, ptr %b.grow.nul52, align 1
  %b.new.data.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 1
  store ptr %b.new.buf51, ptr %b.new.data.gep53, align 8
  %b.new.cap.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 2
  store i64 %b.new.cap44, ptr %b.new.cap.gep54, align 8
  br label %b.push_done41

str_overflow_abort49:                             ; preds = %b.grow39
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len48
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define internal void @"time::#pad3"(ptr %0, i64 %1) #1 {
entry:
  %var.v = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i64 %1, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %cmptmp = icmp slt i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.n, align 8
  %negtmp = sub i64 0, %var.load1
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.n, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %negtmp, %choice.then ], [ %var.load2, %choice.else ]
  store i64 %choice.res, ptr %var.v, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load3 = load i64, ptr %var.v, align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

div.not_zero:                                     ; preds = %div.zero_abort, %choice.exit
  %div.is.min = icmp eq i64 %var.load3, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.exit
  %2 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %divtmp = sdiv i64 %var.load3, 100
  br i1 false, label %div.zero_abort5, label %div.not_zero4

div.ovf_abort:                                    ; preds = %div.not_zero
  %3 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

div.not_zero4:                                    ; preds = %div.zero_abort5, %div.ok
  %div.is.min6 = icmp eq i64 %divtmp, -9223372036854775808
  %div.is.ovf7 = and i1 %div.is.min6, false
  br i1 %div.is.ovf7, label %div.ovf_abort9, label %div.ok8

div.zero_abort5:                                  ; preds = %div.ok
  %4 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero4

div.ok8:                                          ; preds = %div.ovf_abort9, %div.not_zero4
  %modtmp = srem i64 %divtmp, 10
  %addtmp = add i64 48, %modtmp
  %b.b.ge0 = icmp sge i64 %addtmp, 0
  %b.b.le255 = icmp sle i64 %addtmp, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

div.ovf_abort9:                                   ; preds = %div.not_zero4
  %5 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok8

b.byte_ok:                                        ; preds = %b.byte_err, %div.ok8
  %b.byte.i8 = trunc i64 %addtmp to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len10 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap11 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data12 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len10, %b.cap11
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %div.ok8
  %6 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap11, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.new.buf.len13

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len13
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data14 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len15 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data14, i64 %b.cur.len15
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len15, 1
  %b.nul = getelementptr i8, ptr %b.cur.data14, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep, align 8
  %b.load16 = load ptr, ptr %var.b, align 8
  %var.load17 = load i64, ptr %var.v, align 8
  br i1 false, label %div.zero_abort19, label %div.not_zero18

b.new.buf.len13:                                  ; preds = %str_overflow_abort, %b.grow
  %arena.cur = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data12, i64 %b.len10, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len10
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort:                               ; preds = %b.grow
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len13

div.not_zero18:                                   ; preds = %div.zero_abort19, %b.push_done
  %div.is.min20 = icmp eq i64 %var.load17, -9223372036854775808
  %div.is.ovf21 = and i1 %div.is.min20, false
  br i1 %div.is.ovf21, label %div.ovf_abort23, label %div.ok22

div.zero_abort19:                                 ; preds = %b.push_done
  %8 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero18

div.ok22:                                         ; preds = %div.ovf_abort23, %div.not_zero18
  %divtmp24 = sdiv i64 %var.load17, 10
  br i1 false, label %div.zero_abort26, label %div.not_zero25

div.ovf_abort23:                                  ; preds = %div.not_zero18
  %9 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok22

div.not_zero25:                                   ; preds = %div.zero_abort26, %div.ok22
  %div.is.min27 = icmp eq i64 %divtmp24, -9223372036854775808
  %div.is.ovf28 = and i1 %div.is.min27, false
  br i1 %div.is.ovf28, label %div.ovf_abort30, label %div.ok29

div.zero_abort26:                                 ; preds = %div.ok22
  %10 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero25

div.ok29:                                         ; preds = %div.ovf_abort30, %div.not_zero25
  %modtmp31 = srem i64 %divtmp24, 10
  %addtmp32 = add i64 48, %modtmp31
  %b.b.ge033 = icmp sge i64 %addtmp32, 0
  %b.b.le25534 = icmp sle i64 %addtmp32, 255
  %b.byte.range35 = and i1 %b.b.ge033, %b.b.le25534
  br i1 %b.byte.range35, label %b.byte_ok36, label %b.byte_err37

div.ovf_abort30:                                  ; preds = %div.not_zero25
  %11 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok29

b.byte_ok36:                                      ; preds = %b.byte_err37, %div.ok29
  %b.byte.i838 = trunc i64 %addtmp32 to i8
  %b.len39 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 0
  %b.len40 = load i64, ptr %b.len39, align 8
  %b.cap41 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 2
  %b.cap42 = load i64, ptr %b.cap41, align 8
  %b.data43 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 1
  %b.data44 = load ptr, ptr %b.data43, align 8
  %b.needs.grow45 = icmp eq i64 %b.len40, %b.cap42
  br i1 %b.needs.grow45, label %b.grow46, label %b.nogrow47

b.byte_err37:                                     ; preds = %div.ok29
  %12 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok36

b.grow46:                                         ; preds = %b.byte_ok36
  %b.cap249 = mul i64 %b.cap42, 2
  %b.cap.small50 = icmp slt i64 %b.cap249, 16
  %b.new.cap51 = select i1 %b.cap.small50, i64 16, i64 %b.cap249
  %b.new.buf.len52 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap51, i64 1)
  %sum53 = extractvalue { i64, i1 } %b.new.buf.len52, 0
  %ovf54 = extractvalue { i64, i1 } %b.new.buf.len52, 1
  br i1 %ovf54, label %str_overflow_abort56, label %b.new.buf.len55

b.nogrow47:                                       ; preds = %b.byte_ok36
  br label %b.push_done48

b.push_done48:                                    ; preds = %b.nogrow47, %b.new.buf.len55
  %b.cur.data62 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 1
  %b.cur.data63 = load ptr, ptr %b.cur.data62, align 8
  %b.cur.len64 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 0
  %b.cur.len65 = load i64, ptr %b.cur.len64, align 8
  %b.byte.gep66 = getelementptr i8, ptr %b.cur.data63, i64 %b.cur.len65
  store i8 %b.byte.i838, ptr %b.byte.gep66, align 1
  %b.next.len67 = add i64 %b.cur.len65, 1
  %b.nul68 = getelementptr i8, ptr %b.cur.data63, i64 %b.next.len67
  store i8 0, ptr %b.nul68, align 1
  %b.len.gep69 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 0
  store i64 %b.next.len67, ptr %b.len.gep69, align 8
  %b.load70 = load ptr, ptr %var.b, align 8
  %var.load71 = load i64, ptr %var.v, align 8
  br i1 false, label %div.zero_abort73, label %div.not_zero72

b.new.buf.len55:                                  ; preds = %str_overflow_abort56, %b.grow46
  %arena.cur57 = call ptr @dva_arena_current()
  %b.new.buf58 = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 %sum53)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf58, ptr align 1 %b.data44, i64 %b.len40, i1 false)
  %b.grow.nul59 = getelementptr i8, ptr %b.new.buf58, i64 %b.len40
  store i8 0, ptr %b.grow.nul59, align 1
  %b.new.data.gep60 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 1
  store ptr %b.new.buf58, ptr %b.new.data.gep60, align 8
  %b.new.cap.gep61 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 2
  store i64 %b.new.cap51, ptr %b.new.cap.gep61, align 8
  br label %b.push_done48

str_overflow_abort56:                             ; preds = %b.grow46
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len55

div.not_zero72:                                   ; preds = %div.zero_abort73, %b.push_done48
  %div.is.min74 = icmp eq i64 %var.load71, -9223372036854775808
  %div.is.ovf75 = and i1 %div.is.min74, false
  br i1 %div.is.ovf75, label %div.ovf_abort77, label %div.ok76

div.zero_abort73:                                 ; preds = %b.push_done48
  %14 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero72

div.ok76:                                         ; preds = %div.ovf_abort77, %div.not_zero72
  %modtmp78 = srem i64 %var.load71, 10
  %addtmp79 = add i64 48, %modtmp78
  %b.b.ge080 = icmp sge i64 %addtmp79, 0
  %b.b.le25581 = icmp sle i64 %addtmp79, 255
  %b.byte.range82 = and i1 %b.b.ge080, %b.b.le25581
  br i1 %b.byte.range82, label %b.byte_ok83, label %b.byte_err84

div.ovf_abort77:                                  ; preds = %div.not_zero72
  %15 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok76

b.byte_ok83:                                      ; preds = %b.byte_err84, %div.ok76
  %b.byte.i885 = trunc i64 %addtmp79 to i8
  %b.len86 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 0
  %b.len87 = load i64, ptr %b.len86, align 8
  %b.cap88 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 2
  %b.cap89 = load i64, ptr %b.cap88, align 8
  %b.data90 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 1
  %b.data91 = load ptr, ptr %b.data90, align 8
  %b.needs.grow92 = icmp eq i64 %b.len87, %b.cap89
  br i1 %b.needs.grow92, label %b.grow93, label %b.nogrow94

b.byte_err84:                                     ; preds = %div.ok76
  %16 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok83

b.grow93:                                         ; preds = %b.byte_ok83
  %b.cap296 = mul i64 %b.cap89, 2
  %b.cap.small97 = icmp slt i64 %b.cap296, 16
  %b.new.cap98 = select i1 %b.cap.small97, i64 16, i64 %b.cap296
  %b.new.buf.len99 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap98, i64 1)
  %sum100 = extractvalue { i64, i1 } %b.new.buf.len99, 0
  %ovf101 = extractvalue { i64, i1 } %b.new.buf.len99, 1
  br i1 %ovf101, label %str_overflow_abort103, label %b.new.buf.len102

b.nogrow94:                                       ; preds = %b.byte_ok83
  br label %b.push_done95

b.push_done95:                                    ; preds = %b.nogrow94, %b.new.buf.len102
  %b.cur.data109 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 1
  %b.cur.data110 = load ptr, ptr %b.cur.data109, align 8
  %b.cur.len111 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 0
  %b.cur.len112 = load i64, ptr %b.cur.len111, align 8
  %b.byte.gep113 = getelementptr i8, ptr %b.cur.data110, i64 %b.cur.len112
  store i8 %b.byte.i885, ptr %b.byte.gep113, align 1
  %b.next.len114 = add i64 %b.cur.len112, 1
  %b.nul115 = getelementptr i8, ptr %b.cur.data110, i64 %b.next.len114
  store i8 0, ptr %b.nul115, align 1
  %b.len.gep116 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 0
  store i64 %b.next.len114, ptr %b.len.gep116, align 8
  ret void

b.new.buf.len102:                                 ; preds = %str_overflow_abort103, %b.grow93
  %arena.cur104 = call ptr @dva_arena_current()
  %b.new.buf105 = call ptr @dva_arena_alloc(ptr %arena.cur104, i64 %sum100)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf105, ptr align 1 %b.data91, i64 %b.len87, i1 false)
  %b.grow.nul106 = getelementptr i8, ptr %b.new.buf105, i64 %b.len87
  store i8 0, ptr %b.grow.nul106, align 1
  %b.new.data.gep107 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 1
  store ptr %b.new.buf105, ptr %b.new.data.gep107, align 8
  %b.new.cap.gep108 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 2
  store i64 %b.new.cap98, ptr %b.new.cap.gep108, align 8
  br label %b.push_done95

str_overflow_abort103:                            ; preds = %b.grow93
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len102
}

define internal void @"time::#pad4"(ptr %0, i64 %1) #1 {
entry:
  %var.v = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i64 %1, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %cmptmp = icmp slt i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.n, align 8
  %negtmp = sub i64 0, %var.load1
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.n, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %negtmp, %choice.then ], [ %var.load2, %choice.else ]
  store i64 %choice.res, ptr %var.v, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load3 = load i64, ptr %var.v, align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

div.not_zero:                                     ; preds = %div.zero_abort, %choice.exit
  %div.is.min = icmp eq i64 %var.load3, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.exit
  %2 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %divtmp = sdiv i64 %var.load3, 1000
  br i1 false, label %div.zero_abort5, label %div.not_zero4

div.ovf_abort:                                    ; preds = %div.not_zero
  %3 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

div.not_zero4:                                    ; preds = %div.zero_abort5, %div.ok
  %div.is.min6 = icmp eq i64 %divtmp, -9223372036854775808
  %div.is.ovf7 = and i1 %div.is.min6, false
  br i1 %div.is.ovf7, label %div.ovf_abort9, label %div.ok8

div.zero_abort5:                                  ; preds = %div.ok
  %4 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero4

div.ok8:                                          ; preds = %div.ovf_abort9, %div.not_zero4
  %modtmp = srem i64 %divtmp, 10
  %addtmp = add i64 48, %modtmp
  %b.b.ge0 = icmp sge i64 %addtmp, 0
  %b.b.le255 = icmp sle i64 %addtmp, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

div.ovf_abort9:                                   ; preds = %div.not_zero4
  %5 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok8

b.byte_ok:                                        ; preds = %b.byte_err, %div.ok8
  %b.byte.i8 = trunc i64 %addtmp to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len10 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap11 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data12 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len10, %b.cap11
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %div.ok8
  %6 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap11, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.new.buf.len13

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len13
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data14 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len15 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data14, i64 %b.cur.len15
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len15, 1
  %b.nul = getelementptr i8, ptr %b.cur.data14, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep, align 8
  %b.load16 = load ptr, ptr %var.b, align 8
  %var.load17 = load i64, ptr %var.v, align 8
  br i1 false, label %div.zero_abort19, label %div.not_zero18

b.new.buf.len13:                                  ; preds = %str_overflow_abort, %b.grow
  %arena.cur = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data12, i64 %b.len10, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len10
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort:                               ; preds = %b.grow
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len13

div.not_zero18:                                   ; preds = %div.zero_abort19, %b.push_done
  %div.is.min20 = icmp eq i64 %var.load17, -9223372036854775808
  %div.is.ovf21 = and i1 %div.is.min20, false
  br i1 %div.is.ovf21, label %div.ovf_abort23, label %div.ok22

div.zero_abort19:                                 ; preds = %b.push_done
  %8 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero18

div.ok22:                                         ; preds = %div.ovf_abort23, %div.not_zero18
  %divtmp24 = sdiv i64 %var.load17, 100
  br i1 false, label %div.zero_abort26, label %div.not_zero25

div.ovf_abort23:                                  ; preds = %div.not_zero18
  %9 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok22

div.not_zero25:                                   ; preds = %div.zero_abort26, %div.ok22
  %div.is.min27 = icmp eq i64 %divtmp24, -9223372036854775808
  %div.is.ovf28 = and i1 %div.is.min27, false
  br i1 %div.is.ovf28, label %div.ovf_abort30, label %div.ok29

div.zero_abort26:                                 ; preds = %div.ok22
  %10 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero25

div.ok29:                                         ; preds = %div.ovf_abort30, %div.not_zero25
  %modtmp31 = srem i64 %divtmp24, 10
  %addtmp32 = add i64 48, %modtmp31
  %b.b.ge033 = icmp sge i64 %addtmp32, 0
  %b.b.le25534 = icmp sle i64 %addtmp32, 255
  %b.byte.range35 = and i1 %b.b.ge033, %b.b.le25534
  br i1 %b.byte.range35, label %b.byte_ok36, label %b.byte_err37

div.ovf_abort30:                                  ; preds = %div.not_zero25
  %11 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok29

b.byte_ok36:                                      ; preds = %b.byte_err37, %div.ok29
  %b.byte.i838 = trunc i64 %addtmp32 to i8
  %b.len39 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 0
  %b.len40 = load i64, ptr %b.len39, align 8
  %b.cap41 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 2
  %b.cap42 = load i64, ptr %b.cap41, align 8
  %b.data43 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 1
  %b.data44 = load ptr, ptr %b.data43, align 8
  %b.needs.grow45 = icmp eq i64 %b.len40, %b.cap42
  br i1 %b.needs.grow45, label %b.grow46, label %b.nogrow47

b.byte_err37:                                     ; preds = %div.ok29
  %12 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok36

b.grow46:                                         ; preds = %b.byte_ok36
  %b.cap249 = mul i64 %b.cap42, 2
  %b.cap.small50 = icmp slt i64 %b.cap249, 16
  %b.new.cap51 = select i1 %b.cap.small50, i64 16, i64 %b.cap249
  %b.new.buf.len52 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap51, i64 1)
  %sum53 = extractvalue { i64, i1 } %b.new.buf.len52, 0
  %ovf54 = extractvalue { i64, i1 } %b.new.buf.len52, 1
  br i1 %ovf54, label %str_overflow_abort56, label %b.new.buf.len55

b.nogrow47:                                       ; preds = %b.byte_ok36
  br label %b.push_done48

b.push_done48:                                    ; preds = %b.nogrow47, %b.new.buf.len55
  %b.cur.data62 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 1
  %b.cur.data63 = load ptr, ptr %b.cur.data62, align 8
  %b.cur.len64 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 0
  %b.cur.len65 = load i64, ptr %b.cur.len64, align 8
  %b.byte.gep66 = getelementptr i8, ptr %b.cur.data63, i64 %b.cur.len65
  store i8 %b.byte.i838, ptr %b.byte.gep66, align 1
  %b.next.len67 = add i64 %b.cur.len65, 1
  %b.nul68 = getelementptr i8, ptr %b.cur.data63, i64 %b.next.len67
  store i8 0, ptr %b.nul68, align 1
  %b.len.gep69 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 0
  store i64 %b.next.len67, ptr %b.len.gep69, align 8
  %b.load70 = load ptr, ptr %var.b, align 8
  %var.load71 = load i64, ptr %var.v, align 8
  br i1 false, label %div.zero_abort73, label %div.not_zero72

b.new.buf.len55:                                  ; preds = %str_overflow_abort56, %b.grow46
  %arena.cur57 = call ptr @dva_arena_current()
  %b.new.buf58 = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 %sum53)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf58, ptr align 1 %b.data44, i64 %b.len40, i1 false)
  %b.grow.nul59 = getelementptr i8, ptr %b.new.buf58, i64 %b.len40
  store i8 0, ptr %b.grow.nul59, align 1
  %b.new.data.gep60 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 1
  store ptr %b.new.buf58, ptr %b.new.data.gep60, align 8
  %b.new.cap.gep61 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 2
  store i64 %b.new.cap51, ptr %b.new.cap.gep61, align 8
  br label %b.push_done48

str_overflow_abort56:                             ; preds = %b.grow46
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len55

div.not_zero72:                                   ; preds = %div.zero_abort73, %b.push_done48
  %div.is.min74 = icmp eq i64 %var.load71, -9223372036854775808
  %div.is.ovf75 = and i1 %div.is.min74, false
  br i1 %div.is.ovf75, label %div.ovf_abort77, label %div.ok76

div.zero_abort73:                                 ; preds = %b.push_done48
  %14 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero72

div.ok76:                                         ; preds = %div.ovf_abort77, %div.not_zero72
  %divtmp78 = sdiv i64 %var.load71, 10
  br i1 false, label %div.zero_abort80, label %div.not_zero79

div.ovf_abort77:                                  ; preds = %div.not_zero72
  %15 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok76

div.not_zero79:                                   ; preds = %div.zero_abort80, %div.ok76
  %div.is.min81 = icmp eq i64 %divtmp78, -9223372036854775808
  %div.is.ovf82 = and i1 %div.is.min81, false
  br i1 %div.is.ovf82, label %div.ovf_abort84, label %div.ok83

div.zero_abort80:                                 ; preds = %div.ok76
  %16 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero79

div.ok83:                                         ; preds = %div.ovf_abort84, %div.not_zero79
  %modtmp85 = srem i64 %divtmp78, 10
  %addtmp86 = add i64 48, %modtmp85
  %b.b.ge087 = icmp sge i64 %addtmp86, 0
  %b.b.le25588 = icmp sle i64 %addtmp86, 255
  %b.byte.range89 = and i1 %b.b.ge087, %b.b.le25588
  br i1 %b.byte.range89, label %b.byte_ok90, label %b.byte_err91

div.ovf_abort84:                                  ; preds = %div.not_zero79
  %17 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok83

b.byte_ok90:                                      ; preds = %b.byte_err91, %div.ok83
  %b.byte.i892 = trunc i64 %addtmp86 to i8
  %b.len93 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 0
  %b.len94 = load i64, ptr %b.len93, align 8
  %b.cap95 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 2
  %b.cap96 = load i64, ptr %b.cap95, align 8
  %b.data97 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 1
  %b.data98 = load ptr, ptr %b.data97, align 8
  %b.needs.grow99 = icmp eq i64 %b.len94, %b.cap96
  br i1 %b.needs.grow99, label %b.grow100, label %b.nogrow101

b.byte_err91:                                     ; preds = %div.ok83
  %18 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok90

b.grow100:                                        ; preds = %b.byte_ok90
  %b.cap2103 = mul i64 %b.cap96, 2
  %b.cap.small104 = icmp slt i64 %b.cap2103, 16
  %b.new.cap105 = select i1 %b.cap.small104, i64 16, i64 %b.cap2103
  %b.new.buf.len106 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap105, i64 1)
  %sum107 = extractvalue { i64, i1 } %b.new.buf.len106, 0
  %ovf108 = extractvalue { i64, i1 } %b.new.buf.len106, 1
  br i1 %ovf108, label %str_overflow_abort110, label %b.new.buf.len109

b.nogrow101:                                      ; preds = %b.byte_ok90
  br label %b.push_done102

b.push_done102:                                   ; preds = %b.nogrow101, %b.new.buf.len109
  %b.cur.data116 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 1
  %b.cur.data117 = load ptr, ptr %b.cur.data116, align 8
  %b.cur.len118 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 0
  %b.cur.len119 = load i64, ptr %b.cur.len118, align 8
  %b.byte.gep120 = getelementptr i8, ptr %b.cur.data117, i64 %b.cur.len119
  store i8 %b.byte.i892, ptr %b.byte.gep120, align 1
  %b.next.len121 = add i64 %b.cur.len119, 1
  %b.nul122 = getelementptr i8, ptr %b.cur.data117, i64 %b.next.len121
  store i8 0, ptr %b.nul122, align 1
  %b.len.gep123 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 0
  store i64 %b.next.len121, ptr %b.len.gep123, align 8
  %b.load124 = load ptr, ptr %var.b, align 8
  %var.load125 = load i64, ptr %var.v, align 8
  br i1 false, label %div.zero_abort127, label %div.not_zero126

b.new.buf.len109:                                 ; preds = %str_overflow_abort110, %b.grow100
  %arena.cur111 = call ptr @dva_arena_current()
  %b.new.buf112 = call ptr @dva_arena_alloc(ptr %arena.cur111, i64 %sum107)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf112, ptr align 1 %b.data98, i64 %b.len94, i1 false)
  %b.grow.nul113 = getelementptr i8, ptr %b.new.buf112, i64 %b.len94
  store i8 0, ptr %b.grow.nul113, align 1
  %b.new.data.gep114 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 1
  store ptr %b.new.buf112, ptr %b.new.data.gep114, align 8
  %b.new.cap.gep115 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 2
  store i64 %b.new.cap105, ptr %b.new.cap.gep115, align 8
  br label %b.push_done102

str_overflow_abort110:                            ; preds = %b.grow100
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len109

div.not_zero126:                                  ; preds = %div.zero_abort127, %b.push_done102
  %div.is.min128 = icmp eq i64 %var.load125, -9223372036854775808
  %div.is.ovf129 = and i1 %div.is.min128, false
  br i1 %div.is.ovf129, label %div.ovf_abort131, label %div.ok130

div.zero_abort127:                                ; preds = %b.push_done102
  %20 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero126

div.ok130:                                        ; preds = %div.ovf_abort131, %div.not_zero126
  %modtmp132 = srem i64 %var.load125, 10
  %addtmp133 = add i64 48, %modtmp132
  %b.b.ge0134 = icmp sge i64 %addtmp133, 0
  %b.b.le255135 = icmp sle i64 %addtmp133, 255
  %b.byte.range136 = and i1 %b.b.ge0134, %b.b.le255135
  br i1 %b.byte.range136, label %b.byte_ok137, label %b.byte_err138

div.ovf_abort131:                                 ; preds = %div.not_zero126
  %21 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok130

b.byte_ok137:                                     ; preds = %b.byte_err138, %div.ok130
  %b.byte.i8139 = trunc i64 %addtmp133 to i8
  %b.len140 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 0
  %b.len141 = load i64, ptr %b.len140, align 8
  %b.cap142 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 2
  %b.cap143 = load i64, ptr %b.cap142, align 8
  %b.data144 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 1
  %b.data145 = load ptr, ptr %b.data144, align 8
  %b.needs.grow146 = icmp eq i64 %b.len141, %b.cap143
  br i1 %b.needs.grow146, label %b.grow147, label %b.nogrow148

b.byte_err138:                                    ; preds = %div.ok130
  %22 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok137

b.grow147:                                        ; preds = %b.byte_ok137
  %b.cap2150 = mul i64 %b.cap143, 2
  %b.cap.small151 = icmp slt i64 %b.cap2150, 16
  %b.new.cap152 = select i1 %b.cap.small151, i64 16, i64 %b.cap2150
  %b.new.buf.len153 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap152, i64 1)
  %sum154 = extractvalue { i64, i1 } %b.new.buf.len153, 0
  %ovf155 = extractvalue { i64, i1 } %b.new.buf.len153, 1
  br i1 %ovf155, label %str_overflow_abort157, label %b.new.buf.len156

b.nogrow148:                                      ; preds = %b.byte_ok137
  br label %b.push_done149

b.push_done149:                                   ; preds = %b.nogrow148, %b.new.buf.len156
  %b.cur.data163 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 1
  %b.cur.data164 = load ptr, ptr %b.cur.data163, align 8
  %b.cur.len165 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 0
  %b.cur.len166 = load i64, ptr %b.cur.len165, align 8
  %b.byte.gep167 = getelementptr i8, ptr %b.cur.data164, i64 %b.cur.len166
  store i8 %b.byte.i8139, ptr %b.byte.gep167, align 1
  %b.next.len168 = add i64 %b.cur.len166, 1
  %b.nul169 = getelementptr i8, ptr %b.cur.data164, i64 %b.next.len168
  store i8 0, ptr %b.nul169, align 1
  %b.len.gep170 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 0
  store i64 %b.next.len168, ptr %b.len.gep170, align 8
  ret void

b.new.buf.len156:                                 ; preds = %str_overflow_abort157, %b.grow147
  %arena.cur158 = call ptr @dva_arena_current()
  %b.new.buf159 = call ptr @dva_arena_alloc(ptr %arena.cur158, i64 %sum154)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf159, ptr align 1 %b.data145, i64 %b.len141, i1 false)
  %b.grow.nul160 = getelementptr i8, ptr %b.new.buf159, i64 %b.len141
  store i8 0, ptr %b.grow.nul160, align 1
  %b.new.data.gep161 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 1
  store ptr %b.new.buf159, ptr %b.new.data.gep161, align 8
  %b.new.cap.gep162 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 2
  store i64 %b.new.cap152, ptr %b.new.cap.gep162, align 8
  br label %b.push_done149

str_overflow_abort157:                            ; preds = %b.grow147
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len156
}

define internal ptr @"time::#tm_to_datetime"(ptr %0, i64 %1) #1 {
entry:
  %var.nsec = alloca i64, align 8
  %var.tm = alloca ptr, align 8
  store ptr %0, ptr %var.tm, align 8
  store i64 %1, ptr %var.nsec, align 8
  %var.load = load ptr, ptr %var.tm, align 8
  %fld.gep = getelementptr inbounds { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }, ptr %var.load, i32 0, i32 5
  %fld.load = load i32, ptr %fld.gep, align 4
  %coerce.sext = sext i32 %fld.load to i64
  %addtmp = add i64 %coerce.sext, 1900
  %var.load1 = load ptr, ptr %var.tm, align 8
  %fld.gep2 = getelementptr inbounds { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }, ptr %var.load1, i32 0, i32 4
  %fld.load3 = load i32, ptr %fld.gep2, align 4
  %coerce.sext4 = sext i32 %fld.load3 to i64
  %addtmp5 = add i64 %coerce.sext4, 1
  %var.load6 = load ptr, ptr %var.tm, align 8
  %fld.gep7 = getelementptr inbounds { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }, ptr %var.load6, i32 0, i32 3
  %fld.load8 = load i32, ptr %fld.gep7, align 4
  %coerce.sext9 = sext i32 %fld.load8 to i64
  %var.load10 = load ptr, ptr %var.tm, align 8
  %fld.gep11 = getelementptr inbounds { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }, ptr %var.load10, i32 0, i32 2
  %fld.load12 = load i32, ptr %fld.gep11, align 4
  %coerce.sext13 = sext i32 %fld.load12 to i64
  %var.load14 = load ptr, ptr %var.tm, align 8
  %fld.gep15 = getelementptr inbounds { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }, ptr %var.load14, i32 0, i32 1
  %fld.load16 = load i32, ptr %fld.gep15, align 4
  %coerce.sext17 = sext i32 %fld.load16 to i64
  %var.load18 = load ptr, ptr %var.tm, align 8
  %fld.gep19 = getelementptr inbounds { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }, ptr %var.load18, i32 0, i32 0
  %fld.load20 = load i32, ptr %fld.gep19, align 4
  %coerce.sext21 = sext i32 %fld.load20 to i64
  %var.load22 = load i64, ptr %var.nsec, align 8
  %var.load23 = load ptr, ptr %var.tm, align 8
  %fld.gep24 = getelementptr inbounds { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }, ptr %var.load23, i32 0, i32 6
  %fld.load25 = load i32, ptr %fld.gep24, align 4
  %coerce.sext26 = sext i32 %fld.load25 to i64
  %var.load27 = load ptr, ptr %var.tm, align 8
  %fld.gep28 = getelementptr inbounds { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }, ptr %var.load27, i32 0, i32 7
  %fld.load29 = load i32, ptr %fld.gep28, align 4
  %coerce.sext30 = sext i32 %fld.load29 to i64
  %addtmp31 = add i64 %coerce.sext30, 1
  %var.load32 = load ptr, ptr %var.tm, align 8
  %fld.gep33 = getelementptr inbounds { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }, ptr %var.load32, i32 0, i32 10
  %fld.load34 = load i64, ptr %fld.gep33, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %addtmp, ptr %rec.fld, align 8
  %rec.fld35 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %addtmp5, ptr %rec.fld35, align 8
  %rec.fld36 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %coerce.sext9, ptr %rec.fld36, align 8
  %rec.fld37 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %coerce.sext13, ptr %rec.fld37, align 8
  %rec.fld38 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %coerce.sext17, ptr %rec.fld38, align 8
  %rec.fld39 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %coerce.sext21, ptr %rec.fld39, align 8
  %rec.fld40 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 6
  store i64 %var.load22, ptr %rec.fld40, align 8
  %rec.fld41 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 7
  store i64 %coerce.sext26, ptr %rec.fld41, align 8
  %rec.fld42 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 8
  store i64 %addtmp31, ptr %rec.fld42, align 8
  %rec.fld43 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 9
  store i64 %fld.load34, ptr %rec.fld43, align 8
  ret ptr %rec.alloc
}

define internal ptr @"time::#datetime_to_tm"(ptr %0) #1 {
entry:
  %var.dt = alloca ptr, align 8
  store ptr %0, ptr %var.dt, align 8
  %var.load = load ptr, ptr %var.dt, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 5
  %fld.load = load i64, ptr %fld.gep, align 8
  %coerce.trunc = trunc i64 %fld.load to i32
  %var.load1 = load ptr, ptr %var.dt, align 8
  %fld.gep2 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load1, i32 0, i32 4
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %coerce.trunc4 = trunc i64 %fld.load3 to i32
  %var.load5 = load ptr, ptr %var.dt, align 8
  %fld.gep6 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load5, i32 0, i32 3
  %fld.load7 = load i64, ptr %fld.gep6, align 8
  %coerce.trunc8 = trunc i64 %fld.load7 to i32
  %var.load9 = load ptr, ptr %var.dt, align 8
  %fld.gep10 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load9, i32 0, i32 2
  %fld.load11 = load i64, ptr %fld.gep10, align 8
  %coerce.trunc12 = trunc i64 %fld.load11 to i32
  %var.load13 = load ptr, ptr %var.dt, align 8
  %fld.gep14 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load13, i32 0, i32 1
  %fld.load15 = load i64, ptr %fld.gep14, align 8
  %subtmp = sub i64 %fld.load15, 1
  %coerce.trunc16 = trunc i64 %subtmp to i32
  %var.load17 = load ptr, ptr %var.dt, align 8
  %fld.gep18 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load17, i32 0, i32 0
  %fld.load19 = load i64, ptr %fld.gep18, align 8
  %subtmp20 = sub i64 %fld.load19, 1900
  %coerce.trunc21 = trunc i64 %subtmp20 to i32
  %var.load22 = load ptr, ptr %var.dt, align 8
  %fld.gep23 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load22, i32 0, i32 7
  %fld.load24 = load i64, ptr %fld.gep23, align 8
  %coerce.trunc25 = trunc i64 %fld.load24 to i32
  %var.load26 = load ptr, ptr %var.dt, align 8
  %fld.gep27 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load26, i32 0, i32 8
  %fld.load28 = load i64, ptr %fld.gep27, align 8
  %subtmp29 = sub i64 %fld.load28, 1
  %coerce.trunc30 = trunc i64 %subtmp29 to i32
  %var.load31 = load ptr, ptr %var.dt, align 8
  %fld.gep32 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load31, i32 0, i32 9
  %fld.load33 = load i64, ptr %fld.gep32, align 8
  %var.load34 = load ptr, ptr @"var.sys::addr_null", align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 0
  store i32 %coerce.trunc, ptr %rec.fld, align 4
  %rec.fld35 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 1
  store i32 %coerce.trunc4, ptr %rec.fld35, align 4
  %rec.fld36 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 2
  store i32 %coerce.trunc8, ptr %rec.fld36, align 4
  %rec.fld37 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 3
  store i32 %coerce.trunc12, ptr %rec.fld37, align 4
  %rec.fld38 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 4
  store i32 %coerce.trunc16, ptr %rec.fld38, align 4
  %rec.fld39 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 5
  store i32 %coerce.trunc21, ptr %rec.fld39, align 4
  %rec.fld40 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 6
  store i32 %coerce.trunc25, ptr %rec.fld40, align 4
  %rec.fld41 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 7
  store i32 %coerce.trunc30, ptr %rec.fld41, align 4
  %rec.fld42 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 8
  store i32 -1, ptr %rec.fld42, align 4
  %rec.fld43 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 9
  store i32 0, ptr %rec.fld43, align 4
  %rec.fld44 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 10
  store i64 %fld.load33, ptr %rec.fld44, align 8
  %rec.fld45 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 11
  store ptr %var.load34, ptr %rec.fld45, align 8
  ret ptr %rec.alloc
}

define internal i64 @"time::#days_from_civil"(i64 %0, i64 %1, i64 %2) #1 {
entry:
  %var.doe = alloca i64, align 8
  %var.doy = alloca i64, align 8
  %var.mp = alloca i64, align 8
  %var.yoe = alloca i64, align 8
  %var.era = alloca i64, align 8
  %var.y = alloca i64, align 8
  %var.day = alloca i64, align 8
  %var.month = alloca i64, align 8
  %var.year = alloca i64, align 8
  store i64 %0, ptr %var.year, align 8
  store i64 %1, ptr %var.month, align 8
  store i64 %2, ptr %var.day, align 8
  %var.load = load i64, ptr %var.month, align 8
  %cmptmp = icmp sle i64 %var.load, 2
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.year, align 8
  %subtmp = sub i64 %var.load1, 1
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.year, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %subtmp, %choice.then ], [ %var.load2, %choice.else ]
  store i64 %choice.res, ptr %var.y, align 8
  %var.load3 = load i64, ptr %var.y, align 8
  %cmptmp4 = icmp sge i64 %var.load3, 0
  br i1 %cmptmp4, label %choice.then5, label %choice.else6

choice.then5:                                     ; preds = %choice.exit
  %var.load8 = load i64, ptr %var.y, align 8
  br label %choice.exit7

choice.else6:                                     ; preds = %choice.exit
  %var.load9 = load i64, ptr %var.y, align 8
  %subtmp10 = sub i64 %var.load9, 399
  br label %choice.exit7

choice.exit7:                                     ; preds = %choice.else6, %choice.then5
  %choice.res11 = phi i64 [ %var.load8, %choice.then5 ], [ %subtmp10, %choice.else6 ]
  br i1 false, label %div.zero_abort, label %div.not_zero

div.not_zero:                                     ; preds = %div.zero_abort, %choice.exit7
  %div.is.min = icmp eq i64 %choice.res11, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.exit7
  %3 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %divtmp = sdiv i64 %choice.res11, 400
  store i64 %divtmp, ptr %var.era, align 8
  %var.load12 = load i64, ptr %var.y, align 8
  %var.load13 = load i64, ptr %var.era, align 8
  %multmp = mul i64 %var.load13, 400
  %subtmp14 = sub i64 %var.load12, %multmp
  store i64 %subtmp14, ptr %var.yoe, align 8
  %var.load15 = load i64, ptr %var.month, align 8
  %cmptmp16 = icmp sgt i64 %var.load15, 2
  br i1 %cmptmp16, label %choice.then17, label %choice.else18

div.ovf_abort:                                    ; preds = %div.not_zero
  %4 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

choice.then17:                                    ; preds = %div.ok
  %var.load20 = load i64, ptr %var.month, align 8
  %subtmp21 = sub i64 %var.load20, 3
  br label %choice.exit19

choice.else18:                                    ; preds = %div.ok
  %var.load22 = load i64, ptr %var.month, align 8
  %addtmp = add i64 %var.load22, 9
  br label %choice.exit19

choice.exit19:                                    ; preds = %choice.else18, %choice.then17
  %choice.res23 = phi i64 [ %subtmp21, %choice.then17 ], [ %addtmp, %choice.else18 ]
  store i64 %choice.res23, ptr %var.mp, align 8
  %var.load24 = load i64, ptr %var.mp, align 8
  %multmp25 = mul i64 153, %var.load24
  %addtmp26 = add i64 %multmp25, 2
  br i1 false, label %div.zero_abort28, label %div.not_zero27

div.not_zero27:                                   ; preds = %div.zero_abort28, %choice.exit19
  %div.is.min29 = icmp eq i64 %addtmp26, -9223372036854775808
  %div.is.ovf30 = and i1 %div.is.min29, false
  br i1 %div.is.ovf30, label %div.ovf_abort32, label %div.ok31

div.zero_abort28:                                 ; preds = %choice.exit19
  %5 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero27

div.ok31:                                         ; preds = %div.ovf_abort32, %div.not_zero27
  %divtmp33 = sdiv i64 %addtmp26, 5
  %var.load34 = load i64, ptr %var.day, align 8
  %addtmp35 = add i64 %divtmp33, %var.load34
  %subtmp36 = sub i64 %addtmp35, 1
  store i64 %subtmp36, ptr %var.doy, align 8
  %var.load37 = load i64, ptr %var.yoe, align 8
  %multmp38 = mul i64 %var.load37, 365
  %var.load39 = load i64, ptr %var.yoe, align 8
  br i1 false, label %div.zero_abort41, label %div.not_zero40

div.ovf_abort32:                                  ; preds = %div.not_zero27
  %6 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok31

div.not_zero40:                                   ; preds = %div.zero_abort41, %div.ok31
  %div.is.min42 = icmp eq i64 %var.load39, -9223372036854775808
  %div.is.ovf43 = and i1 %div.is.min42, false
  br i1 %div.is.ovf43, label %div.ovf_abort45, label %div.ok44

div.zero_abort41:                                 ; preds = %div.ok31
  %7 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero40

div.ok44:                                         ; preds = %div.ovf_abort45, %div.not_zero40
  %divtmp46 = sdiv i64 %var.load39, 4
  %addtmp47 = add i64 %multmp38, %divtmp46
  %var.load48 = load i64, ptr %var.yoe, align 8
  br i1 false, label %div.zero_abort50, label %div.not_zero49

div.ovf_abort45:                                  ; preds = %div.not_zero40
  %8 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok44

div.not_zero49:                                   ; preds = %div.zero_abort50, %div.ok44
  %div.is.min51 = icmp eq i64 %var.load48, -9223372036854775808
  %div.is.ovf52 = and i1 %div.is.min51, false
  br i1 %div.is.ovf52, label %div.ovf_abort54, label %div.ok53

div.zero_abort50:                                 ; preds = %div.ok44
  %9 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero49

div.ok53:                                         ; preds = %div.ovf_abort54, %div.not_zero49
  %divtmp55 = sdiv i64 %var.load48, 100
  %subtmp56 = sub i64 %addtmp47, %divtmp55
  %var.load57 = load i64, ptr %var.doy, align 8
  %addtmp58 = add i64 %subtmp56, %var.load57
  store i64 %addtmp58, ptr %var.doe, align 8
  %var.load59 = load i64, ptr %var.era, align 8
  %multmp60 = mul i64 %var.load59, 146097
  %var.load61 = load i64, ptr %var.doe, align 8
  %addtmp62 = add i64 %multmp60, %var.load61
  %subtmp63 = sub i64 %addtmp62, 719468
  ret i64 %subtmp63

div.ovf_abort54:                                  ; preds = %div.not_zero49
  %10 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok53
}

define internal ptr @"time::#civil_from_days"(i64 %0) #1 {
entry:
  %var.yday = alloca i64, align 8
  %var.jan1 = alloca i64, align 8
  %var.wday = alloca i64, align 8
  %var.year = alloca i64, align 8
  %var.m = alloca i64, align 8
  %var.d = alloca i64, align 8
  %var.mp = alloca i64, align 8
  %var.doy_mar = alloca i64, align 8
  %var.y = alloca i64, align 8
  %var.yoe = alloca i64, align 8
  %var.doe = alloca i64, align 8
  %var.era = alloca i64, align 8
  %var.z_s = alloca i64, align 8
  %var.z = alloca i64, align 8
  store i64 %0, ptr %var.z, align 8
  %var.load = load i64, ptr %var.z, align 8
  %addtmp = add i64 %var.load, 719468
  store i64 %addtmp, ptr %var.z_s, align 8
  %var.load1 = load i64, ptr %var.z_s, align 8
  %cmptmp = icmp sge i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.z_s, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load3 = load i64, ptr %var.z_s, align 8
  %subtmp = sub i64 %var.load3, 146096
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load2, %choice.then ], [ %subtmp, %choice.else ]
  br i1 false, label %div.zero_abort, label %div.not_zero

div.not_zero:                                     ; preds = %div.zero_abort, %choice.exit
  %div.is.min = icmp eq i64 %choice.res, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.exit
  %1 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %divtmp = sdiv i64 %choice.res, 146097
  store i64 %divtmp, ptr %var.era, align 8
  %var.load4 = load i64, ptr %var.z_s, align 8
  %var.load5 = load i64, ptr %var.era, align 8
  %multmp = mul i64 %var.load5, 146097
  %subtmp6 = sub i64 %var.load4, %multmp
  store i64 %subtmp6, ptr %var.doe, align 8
  %var.load7 = load i64, ptr %var.doe, align 8
  %var.load8 = load i64, ptr %var.doe, align 8
  br i1 false, label %div.zero_abort10, label %div.not_zero9

div.ovf_abort:                                    ; preds = %div.not_zero
  %2 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

div.not_zero9:                                    ; preds = %div.zero_abort10, %div.ok
  %div.is.min11 = icmp eq i64 %var.load8, -9223372036854775808
  %div.is.ovf12 = and i1 %div.is.min11, false
  br i1 %div.is.ovf12, label %div.ovf_abort14, label %div.ok13

div.zero_abort10:                                 ; preds = %div.ok
  %3 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero9

div.ok13:                                         ; preds = %div.ovf_abort14, %div.not_zero9
  %divtmp15 = sdiv i64 %var.load8, 1460
  %subtmp16 = sub i64 %var.load7, %divtmp15
  %var.load17 = load i64, ptr %var.doe, align 8
  br i1 false, label %div.zero_abort19, label %div.not_zero18

div.ovf_abort14:                                  ; preds = %div.not_zero9
  %4 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok13

div.not_zero18:                                   ; preds = %div.zero_abort19, %div.ok13
  %div.is.min20 = icmp eq i64 %var.load17, -9223372036854775808
  %div.is.ovf21 = and i1 %div.is.min20, false
  br i1 %div.is.ovf21, label %div.ovf_abort23, label %div.ok22

div.zero_abort19:                                 ; preds = %div.ok13
  %5 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero18

div.ok22:                                         ; preds = %div.ovf_abort23, %div.not_zero18
  %divtmp24 = sdiv i64 %var.load17, 36524
  %addtmp25 = add i64 %subtmp16, %divtmp24
  %var.load26 = load i64, ptr %var.doe, align 8
  br i1 false, label %div.zero_abort28, label %div.not_zero27

div.ovf_abort23:                                  ; preds = %div.not_zero18
  %6 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok22

div.not_zero27:                                   ; preds = %div.zero_abort28, %div.ok22
  %div.is.min29 = icmp eq i64 %var.load26, -9223372036854775808
  %div.is.ovf30 = and i1 %div.is.min29, false
  br i1 %div.is.ovf30, label %div.ovf_abort32, label %div.ok31

div.zero_abort28:                                 ; preds = %div.ok22
  %7 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero27

div.ok31:                                         ; preds = %div.ovf_abort32, %div.not_zero27
  %divtmp33 = sdiv i64 %var.load26, 146096
  %subtmp34 = sub i64 %addtmp25, %divtmp33
  br i1 false, label %div.zero_abort36, label %div.not_zero35

div.ovf_abort32:                                  ; preds = %div.not_zero27
  %8 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok31

div.not_zero35:                                   ; preds = %div.zero_abort36, %div.ok31
  %div.is.min37 = icmp eq i64 %subtmp34, -9223372036854775808
  %div.is.ovf38 = and i1 %div.is.min37, false
  br i1 %div.is.ovf38, label %div.ovf_abort40, label %div.ok39

div.zero_abort36:                                 ; preds = %div.ok31
  %9 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero35

div.ok39:                                         ; preds = %div.ovf_abort40, %div.not_zero35
  %divtmp41 = sdiv i64 %subtmp34, 365
  store i64 %divtmp41, ptr %var.yoe, align 8
  %var.load42 = load i64, ptr %var.yoe, align 8
  %var.load43 = load i64, ptr %var.era, align 8
  %multmp44 = mul i64 %var.load43, 400
  %addtmp45 = add i64 %var.load42, %multmp44
  store i64 %addtmp45, ptr %var.y, align 8
  %var.load46 = load i64, ptr %var.doe, align 8
  %var.load47 = load i64, ptr %var.yoe, align 8
  %multmp48 = mul i64 365, %var.load47
  %var.load49 = load i64, ptr %var.yoe, align 8
  br i1 false, label %div.zero_abort51, label %div.not_zero50

div.ovf_abort40:                                  ; preds = %div.not_zero35
  %10 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok39

div.not_zero50:                                   ; preds = %div.zero_abort51, %div.ok39
  %div.is.min52 = icmp eq i64 %var.load49, -9223372036854775808
  %div.is.ovf53 = and i1 %div.is.min52, false
  br i1 %div.is.ovf53, label %div.ovf_abort55, label %div.ok54

div.zero_abort51:                                 ; preds = %div.ok39
  %11 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero50

div.ok54:                                         ; preds = %div.ovf_abort55, %div.not_zero50
  %divtmp56 = sdiv i64 %var.load49, 4
  %addtmp57 = add i64 %multmp48, %divtmp56
  %var.load58 = load i64, ptr %var.yoe, align 8
  br i1 false, label %div.zero_abort60, label %div.not_zero59

div.ovf_abort55:                                  ; preds = %div.not_zero50
  %12 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok54

div.not_zero59:                                   ; preds = %div.zero_abort60, %div.ok54
  %div.is.min61 = icmp eq i64 %var.load58, -9223372036854775808
  %div.is.ovf62 = and i1 %div.is.min61, false
  br i1 %div.is.ovf62, label %div.ovf_abort64, label %div.ok63

div.zero_abort60:                                 ; preds = %div.ok54
  %13 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero59

div.ok63:                                         ; preds = %div.ovf_abort64, %div.not_zero59
  %divtmp65 = sdiv i64 %var.load58, 100
  %subtmp66 = sub i64 %addtmp57, %divtmp65
  %subtmp67 = sub i64 %var.load46, %subtmp66
  store i64 %subtmp67, ptr %var.doy_mar, align 8
  %var.load68 = load i64, ptr %var.doy_mar, align 8
  %multmp69 = mul i64 5, %var.load68
  %addtmp70 = add i64 %multmp69, 2
  br i1 false, label %div.zero_abort72, label %div.not_zero71

div.ovf_abort64:                                  ; preds = %div.not_zero59
  %14 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok63

div.not_zero71:                                   ; preds = %div.zero_abort72, %div.ok63
  %div.is.min73 = icmp eq i64 %addtmp70, -9223372036854775808
  %div.is.ovf74 = and i1 %div.is.min73, false
  br i1 %div.is.ovf74, label %div.ovf_abort76, label %div.ok75

div.zero_abort72:                                 ; preds = %div.ok63
  %15 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero71

div.ok75:                                         ; preds = %div.ovf_abort76, %div.not_zero71
  %divtmp77 = sdiv i64 %addtmp70, 153
  store i64 %divtmp77, ptr %var.mp, align 8
  %var.load78 = load i64, ptr %var.doy_mar, align 8
  %var.load79 = load i64, ptr %var.mp, align 8
  %multmp80 = mul i64 153, %var.load79
  %addtmp81 = add i64 %multmp80, 2
  br i1 false, label %div.zero_abort83, label %div.not_zero82

div.ovf_abort76:                                  ; preds = %div.not_zero71
  %16 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok75

div.not_zero82:                                   ; preds = %div.zero_abort83, %div.ok75
  %div.is.min84 = icmp eq i64 %addtmp81, -9223372036854775808
  %div.is.ovf85 = and i1 %div.is.min84, false
  br i1 %div.is.ovf85, label %div.ovf_abort87, label %div.ok86

div.zero_abort83:                                 ; preds = %div.ok75
  %17 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero82

div.ok86:                                         ; preds = %div.ovf_abort87, %div.not_zero82
  %divtmp88 = sdiv i64 %addtmp81, 5
  %subtmp89 = sub i64 %var.load78, %divtmp88
  %addtmp90 = add i64 %subtmp89, 1
  store i64 %addtmp90, ptr %var.d, align 8
  %var.load91 = load i64, ptr %var.mp, align 8
  %cmptmp92 = icmp slt i64 %var.load91, 10
  br i1 %cmptmp92, label %choice.then93, label %choice.else94

div.ovf_abort87:                                  ; preds = %div.not_zero82
  %18 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok86

choice.then93:                                    ; preds = %div.ok86
  %var.load96 = load i64, ptr %var.mp, align 8
  %addtmp97 = add i64 %var.load96, 3
  br label %choice.exit95

choice.else94:                                    ; preds = %div.ok86
  %var.load98 = load i64, ptr %var.mp, align 8
  %subtmp99 = sub i64 %var.load98, 9
  br label %choice.exit95

choice.exit95:                                    ; preds = %choice.else94, %choice.then93
  %choice.res100 = phi i64 [ %addtmp97, %choice.then93 ], [ %subtmp99, %choice.else94 ]
  store i64 %choice.res100, ptr %var.m, align 8
  %var.load101 = load i64, ptr %var.m, align 8
  %cmptmp102 = icmp sle i64 %var.load101, 2
  br i1 %cmptmp102, label %choice.then103, label %choice.else104

choice.then103:                                   ; preds = %choice.exit95
  %var.load106 = load i64, ptr %var.y, align 8
  %addtmp107 = add i64 %var.load106, 1
  br label %choice.exit105

choice.else104:                                   ; preds = %choice.exit95
  %var.load108 = load i64, ptr %var.y, align 8
  br label %choice.exit105

choice.exit105:                                   ; preds = %choice.else104, %choice.then103
  %choice.res109 = phi i64 [ %addtmp107, %choice.then103 ], [ %var.load108, %choice.else104 ]
  store i64 %choice.res109, ptr %var.year, align 8
  %var.load110 = load i64, ptr %var.z, align 8
  %addtmp111 = add i64 %var.load110, 4
  %call.res = call i64 @"time::#floor_mod"(i64 %addtmp111, i64 7)
  store i64 %call.res, ptr %var.wday, align 8
  %var.load112 = load i64, ptr %var.year, align 8
  %call.res113 = call i64 @"time::#days_from_civil"(i64 %var.load112, i64 1, i64 1)
  store i64 %call.res113, ptr %var.jan1, align 8
  %var.load114 = load i64, ptr %var.z, align 8
  %var.load115 = load i64, ptr %var.jan1, align 8
  %subtmp116 = sub i64 %var.load114, %var.load115
  %addtmp117 = add i64 %subtmp116, 1
  store i64 %addtmp117, ptr %var.yday, align 8
  %var.load118 = load i64, ptr %var.year, align 8
  %var.load119 = load i64, ptr %var.m, align 8
  %var.load120 = load i64, ptr %var.d, align 8
  %var.load121 = load i64, ptr %var.wday, align 8
  %var.load122 = load i64, ptr %var.yday, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load118, ptr %rec.fld, align 8
  %rec.fld123 = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load119, ptr %rec.fld123, align 8
  %rec.fld124 = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load120, ptr %rec.fld124, align 8
  %rec.fld125 = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load121, ptr %rec.fld125, align 8
  %rec.fld126 = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %var.load122, ptr %rec.fld126, align 8
  ret ptr %rec.alloc
}

define internal ptr @"time::#short_weekday_name"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %val.match = icmp eq i64 %var.load, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next14, %choice.case13, %choice.case10, %choice.case7, %choice.case4, %choice.case1, %choice.case
  %choice.res = phi ptr [ @str.0.struct, %choice.case ], [ @str.1.struct, %choice.case1 ], [ @str.2.struct, %choice.case4 ], [ @str.3.struct, %choice.case7 ], [ @str.4.struct, %choice.case10 ], [ @str.5.struct, %choice.case13 ], [ @str.6.struct, %choice.next14 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %val.match3 = icmp eq i64 %var.load, 1
  br i1 %val.match3, label %choice.case1, label %choice.next2

choice.case1:                                     ; preds = %choice.next
  br label %choice.exit

choice.next2:                                     ; preds = %choice.next
  %val.match6 = icmp eq i64 %var.load, 2
  br i1 %val.match6, label %choice.case4, label %choice.next5

choice.case4:                                     ; preds = %choice.next2
  br label %choice.exit

choice.next5:                                     ; preds = %choice.next2
  %val.match9 = icmp eq i64 %var.load, 3
  br i1 %val.match9, label %choice.case7, label %choice.next8

choice.case7:                                     ; preds = %choice.next5
  br label %choice.exit

choice.next8:                                     ; preds = %choice.next5
  %val.match12 = icmp eq i64 %var.load, 4
  br i1 %val.match12, label %choice.case10, label %choice.next11

choice.case10:                                    ; preds = %choice.next8
  br label %choice.exit

choice.next11:                                    ; preds = %choice.next8
  %val.match15 = icmp eq i64 %var.load, 5
  br i1 %val.match15, label %choice.case13, label %choice.next14

choice.case13:                                    ; preds = %choice.next11
  br label %choice.exit

choice.next14:                                    ; preds = %choice.next11
  br label %choice.exit
}

define internal ptr @"time::#full_weekday_name"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %val.match = icmp eq i64 %var.load, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next14, %choice.case13, %choice.case10, %choice.case7, %choice.case4, %choice.case1, %choice.case
  %choice.res = phi ptr [ @str.7.struct, %choice.case ], [ @str.8.struct, %choice.case1 ], [ @str.9.struct, %choice.case4 ], [ @str.10.struct, %choice.case7 ], [ @str.11.struct, %choice.case10 ], [ @str.12.struct, %choice.case13 ], [ @str.13.struct, %choice.next14 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %val.match3 = icmp eq i64 %var.load, 1
  br i1 %val.match3, label %choice.case1, label %choice.next2

choice.case1:                                     ; preds = %choice.next
  br label %choice.exit

choice.next2:                                     ; preds = %choice.next
  %val.match6 = icmp eq i64 %var.load, 2
  br i1 %val.match6, label %choice.case4, label %choice.next5

choice.case4:                                     ; preds = %choice.next2
  br label %choice.exit

choice.next5:                                     ; preds = %choice.next2
  %val.match9 = icmp eq i64 %var.load, 3
  br i1 %val.match9, label %choice.case7, label %choice.next8

choice.case7:                                     ; preds = %choice.next5
  br label %choice.exit

choice.next8:                                     ; preds = %choice.next5
  %val.match12 = icmp eq i64 %var.load, 4
  br i1 %val.match12, label %choice.case10, label %choice.next11

choice.case10:                                    ; preds = %choice.next8
  br label %choice.exit

choice.next11:                                    ; preds = %choice.next8
  %val.match15 = icmp eq i64 %var.load, 5
  br i1 %val.match15, label %choice.case13, label %choice.next14

choice.case13:                                    ; preds = %choice.next11
  br label %choice.exit

choice.next14:                                    ; preds = %choice.next11
  br label %choice.exit
}

define internal ptr @"time::#short_month_name"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %val.match = icmp eq i64 %var.load, 1
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next29, %choice.case28, %choice.case25, %choice.case22, %choice.case19, %choice.case16, %choice.case13, %choice.case10, %choice.case7, %choice.case4, %choice.case1, %choice.case
  %choice.res = phi ptr [ @str.14.struct, %choice.case ], [ @str.15.struct, %choice.case1 ], [ @str.16.struct, %choice.case4 ], [ @str.17.struct, %choice.case7 ], [ @str.18.struct, %choice.case10 ], [ @str.19.struct, %choice.case13 ], [ @str.20.struct, %choice.case16 ], [ @str.21.struct, %choice.case19 ], [ @str.22.struct, %choice.case22 ], [ @str.23.struct, %choice.case25 ], [ @str.24.struct, %choice.case28 ], [ @str.25.struct, %choice.next29 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %val.match3 = icmp eq i64 %var.load, 2
  br i1 %val.match3, label %choice.case1, label %choice.next2

choice.case1:                                     ; preds = %choice.next
  br label %choice.exit

choice.next2:                                     ; preds = %choice.next
  %val.match6 = icmp eq i64 %var.load, 3
  br i1 %val.match6, label %choice.case4, label %choice.next5

choice.case4:                                     ; preds = %choice.next2
  br label %choice.exit

choice.next5:                                     ; preds = %choice.next2
  %val.match9 = icmp eq i64 %var.load, 4
  br i1 %val.match9, label %choice.case7, label %choice.next8

choice.case7:                                     ; preds = %choice.next5
  br label %choice.exit

choice.next8:                                     ; preds = %choice.next5
  %val.match12 = icmp eq i64 %var.load, 5
  br i1 %val.match12, label %choice.case10, label %choice.next11

choice.case10:                                    ; preds = %choice.next8
  br label %choice.exit

choice.next11:                                    ; preds = %choice.next8
  %val.match15 = icmp eq i64 %var.load, 6
  br i1 %val.match15, label %choice.case13, label %choice.next14

choice.case13:                                    ; preds = %choice.next11
  br label %choice.exit

choice.next14:                                    ; preds = %choice.next11
  %val.match18 = icmp eq i64 %var.load, 7
  br i1 %val.match18, label %choice.case16, label %choice.next17

choice.case16:                                    ; preds = %choice.next14
  br label %choice.exit

choice.next17:                                    ; preds = %choice.next14
  %val.match21 = icmp eq i64 %var.load, 8
  br i1 %val.match21, label %choice.case19, label %choice.next20

choice.case19:                                    ; preds = %choice.next17
  br label %choice.exit

choice.next20:                                    ; preds = %choice.next17
  %val.match24 = icmp eq i64 %var.load, 9
  br i1 %val.match24, label %choice.case22, label %choice.next23

choice.case22:                                    ; preds = %choice.next20
  br label %choice.exit

choice.next23:                                    ; preds = %choice.next20
  %val.match27 = icmp eq i64 %var.load, 10
  br i1 %val.match27, label %choice.case25, label %choice.next26

choice.case25:                                    ; preds = %choice.next23
  br label %choice.exit

choice.next26:                                    ; preds = %choice.next23
  %val.match30 = icmp eq i64 %var.load, 11
  br i1 %val.match30, label %choice.case28, label %choice.next29

choice.case28:                                    ; preds = %choice.next26
  br label %choice.exit

choice.next29:                                    ; preds = %choice.next26
  br label %choice.exit
}

define internal ptr @"time::#full_month_name"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %val.match = icmp eq i64 %var.load, 1
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next29, %choice.case28, %choice.case25, %choice.case22, %choice.case19, %choice.case16, %choice.case13, %choice.case10, %choice.case7, %choice.case4, %choice.case1, %choice.case
  %choice.res = phi ptr [ @str.26.struct, %choice.case ], [ @str.27.struct, %choice.case1 ], [ @str.28.struct, %choice.case4 ], [ @str.29.struct, %choice.case7 ], [ @str.18.struct, %choice.case10 ], [ @str.30.struct, %choice.case13 ], [ @str.31.struct, %choice.case16 ], [ @str.32.struct, %choice.case19 ], [ @str.33.struct, %choice.case22 ], [ @str.34.struct, %choice.case25 ], [ @str.35.struct, %choice.case28 ], [ @str.36.struct, %choice.next29 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %val.match3 = icmp eq i64 %var.load, 2
  br i1 %val.match3, label %choice.case1, label %choice.next2

choice.case1:                                     ; preds = %choice.next
  br label %choice.exit

choice.next2:                                     ; preds = %choice.next
  %val.match6 = icmp eq i64 %var.load, 3
  br i1 %val.match6, label %choice.case4, label %choice.next5

choice.case4:                                     ; preds = %choice.next2
  br label %choice.exit

choice.next5:                                     ; preds = %choice.next2
  %val.match9 = icmp eq i64 %var.load, 4
  br i1 %val.match9, label %choice.case7, label %choice.next8

choice.case7:                                     ; preds = %choice.next5
  br label %choice.exit

choice.next8:                                     ; preds = %choice.next5
  %val.match12 = icmp eq i64 %var.load, 5
  br i1 %val.match12, label %choice.case10, label %choice.next11

choice.case10:                                    ; preds = %choice.next8
  br label %choice.exit

choice.next11:                                    ; preds = %choice.next8
  %val.match15 = icmp eq i64 %var.load, 6
  br i1 %val.match15, label %choice.case13, label %choice.next14

choice.case13:                                    ; preds = %choice.next11
  br label %choice.exit

choice.next14:                                    ; preds = %choice.next11
  %val.match18 = icmp eq i64 %var.load, 7
  br i1 %val.match18, label %choice.case16, label %choice.next17

choice.case16:                                    ; preds = %choice.next14
  br label %choice.exit

choice.next17:                                    ; preds = %choice.next14
  %val.match21 = icmp eq i64 %var.load, 8
  br i1 %val.match21, label %choice.case19, label %choice.next20

choice.case19:                                    ; preds = %choice.next17
  br label %choice.exit

choice.next20:                                    ; preds = %choice.next17
  %val.match24 = icmp eq i64 %var.load, 9
  br i1 %val.match24, label %choice.case22, label %choice.next23

choice.case22:                                    ; preds = %choice.next20
  br label %choice.exit

choice.next23:                                    ; preds = %choice.next20
  %val.match27 = icmp eq i64 %var.load, 10
  br i1 %val.match27, label %choice.case25, label %choice.next26

choice.case25:                                    ; preds = %choice.next23
  br label %choice.exit

choice.next26:                                    ; preds = %choice.next23
  %val.match30 = icmp eq i64 %var.load, 11
  br i1 %val.match30, label %choice.case28, label %choice.next29

choice.case28:                                    ; preds = %choice.next26
  br label %choice.exit

choice.next29:                                    ; preds = %choice.next26
  br label %choice.exit
}

define internal void @"time::#write_date_into"(ptr %0, ptr %1) #1 {
entry:
  %var.dt = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store ptr %1, ptr %var.dt, align 8
  %var.load = load ptr, ptr %var.dt, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp slt i64 %fld.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len1 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len1, i64 1)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len2

choice.exit:                                      ; preds = %br.done.66, %entry
  %var.load11 = load ptr, ptr %var.b, align 8
  %var.load12 = load ptr, ptr %var.dt, align 8
  %fld.gep13 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load12, i32 0, i32 0
  %fld.load14 = load i64, ptr %fld.gep13, align 8
  call void @"time::#pad4"(ptr %var.load11, i64 %fld.load14)
  %b.load15 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len16 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load15, i32 0, i32 0
  %b.rn.cur.len17 = load i64, ptr %b.rn.cur.len16, align 8
  %b.rn.new.len18 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len17, i64 1)
  %sum19 = extractvalue { i64, i1 } %b.rn.new.len18, 0
  %ovf20 = extractvalue { i64, i1 } %b.rn.new.len18, 1
  br i1 %ovf20, label %str_overflow_abort22, label %b.rn.new.len21

b.rn.new.len2:                                    ; preds = %str_overflow_abort, %choice.then
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap3 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap3, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %choice.then
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
  br i1 true, label %br.b1.66, label %br.c2.66

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

br.b1.66:                                         ; preds = %b.grow_done
  store i8 45, ptr %b.rn.dst, align 1
  br label %br.done.66

br.c2.66:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.66, label %br.c3.66

br.b2.66:                                         ; preds = %br.c2.66
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -83, ptr %br.dst1, align 1
  br label %br.done.66

br.c3.66:                                         ; preds = %br.c2.66
  br i1 true, label %br.b3.66, label %br.b4.66

br.b3.66:                                         ; preds = %br.c3.66
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -83, ptr %br.dst2.3, align 1
  br label %br.done.66

br.b4.66:                                         ; preds = %br.c3.66
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -83, ptr %br.dst3.4, align 1
  br label %br.done.66

br.done.66:                                       ; preds = %br.b4.66, %br.b3.66, %br.b2.66, %br.b1.66
  %br.nul = getelementptr i8, ptr %b.rn.data10, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %choice.exit

b.rn.new.len21:                                   ; preds = %str_overflow_abort22, %choice.exit
  %b.cap23 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load15, i32 0, i32 2
  %b.cap24 = load i64, ptr %b.cap23, align 8
  %b.need.grow25 = icmp slt i64 %b.cap24, %sum19
  br i1 %b.need.grow25, label %b.grow226, label %b.nogrow227

str_overflow_abort22:                             ; preds = %choice.exit
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len21

b.grow226:                                        ; preds = %b.rn.new.len21
  %b.cap229 = mul i64 %b.cap24, 2
  %b.cap.small30 = icmp slt i64 %b.cap229, 16
  %b.cap.grow31 = select i1 %b.cap.small30, i64 16, i64 %b.cap229
  %b.cap.need32 = icmp slt i64 %b.cap.grow31, %sum19
  %b.new.cap33 = select i1 %b.cap.need32, i64 %sum19, i64 %b.cap.grow31
  %b.cur.len234 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load15, i32 0, i32 0
  %b.cur.len235 = load i64, ptr %b.cur.len234, align 8
  %b.cur.data236 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load15, i32 0, i32 1
  %b.cur.data237 = load ptr, ptr %b.cur.data236, align 8
  %b.new.buf.len238 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap33, i64 1)
  %sum39 = extractvalue { i64, i1 } %b.new.buf.len238, 0
  %ovf40 = extractvalue { i64, i1 } %b.new.buf.len238, 1
  br i1 %ovf40, label %str_overflow_abort42, label %b.new.buf.len241

b.nogrow227:                                      ; preds = %b.rn.new.len21
  br label %b.grow_done28

b.grow_done28:                                    ; preds = %b.nogrow227, %b.new.buf.len241
  %b.rn.data48 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load15, i32 0, i32 1
  %b.rn.data49 = load ptr, ptr %b.rn.data48, align 8
  %b.rn.dst50 = getelementptr i8, ptr %b.rn.data49, i64 %b.rn.cur.len17
  br i1 true, label %br.b1.67, label %br.c2.67

b.new.buf.len241:                                 ; preds = %str_overflow_abort42, %b.grow226
  %arena.cur43 = call ptr @dva_arena_current()
  %b.new.buf244 = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 %sum39)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf244, ptr align 1 %b.cur.data237, i64 %b.cur.len235, i1 false)
  %b.grow2.nul45 = getelementptr i8, ptr %b.new.buf244, i64 %b.cur.len235
  store i8 0, ptr %b.grow2.nul45, align 1
  %b.new.data2.gep46 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load15, i32 0, i32 1
  store ptr %b.new.buf244, ptr %b.new.data2.gep46, align 8
  %b.new.cap2.gep47 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load15, i32 0, i32 2
  store i64 %b.new.cap33, ptr %b.new.cap2.gep47, align 8
  br label %b.grow_done28

str_overflow_abort42:                             ; preds = %b.grow226
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len241

br.b1.67:                                         ; preds = %b.grow_done28
  store i8 45, ptr %b.rn.dst50, align 1
  br label %br.done.67

br.c2.67:                                         ; preds = %b.grow_done28
  br i1 true, label %br.b2.67, label %br.c3.67

br.b2.67:                                         ; preds = %br.c2.67
  store i8 -64, ptr %b.rn.dst50, align 1
  %br.dst151 = getelementptr i8, ptr %b.rn.dst50, i64 1
  store i8 -83, ptr %br.dst151, align 1
  br label %br.done.67

br.c3.67:                                         ; preds = %br.c2.67
  br i1 true, label %br.b3.67, label %br.b4.67

br.b3.67:                                         ; preds = %br.c3.67
  store i8 -32, ptr %b.rn.dst50, align 1
  %br.dst1.352 = getelementptr i8, ptr %b.rn.dst50, i64 1
  store i8 -128, ptr %br.dst1.352, align 1
  %br.dst2.353 = getelementptr i8, ptr %b.rn.dst50, i64 2
  store i8 -83, ptr %br.dst2.353, align 1
  br label %br.done.67

br.b4.67:                                         ; preds = %br.c3.67
  store i8 -16, ptr %b.rn.dst50, align 1
  %br.dst1.454 = getelementptr i8, ptr %b.rn.dst50, i64 1
  store i8 -128, ptr %br.dst1.454, align 1
  %br.dst2.455 = getelementptr i8, ptr %b.rn.dst50, i64 2
  store i8 -128, ptr %br.dst2.455, align 1
  %br.dst3.456 = getelementptr i8, ptr %b.rn.dst50, i64 3
  store i8 -83, ptr %br.dst3.456, align 1
  br label %br.done.67

br.done.67:                                       ; preds = %br.b4.67, %br.b3.67, %br.b2.67, %br.b1.67
  %br.nul57 = getelementptr i8, ptr %b.rn.data49, i64 %sum19
  store i8 0, ptr %br.nul57, align 1
  %b.len.gep58 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load15, i32 0, i32 0
  store i64 %sum19, ptr %b.len.gep58, align 8
  %var.load59 = load ptr, ptr %var.b, align 8
  %var.load60 = load ptr, ptr %var.dt, align 8
  %fld.gep61 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load60, i32 0, i32 1
  %fld.load62 = load i64, ptr %fld.gep61, align 8
  call void @"time::#pad2"(ptr %var.load59, i64 %fld.load62)
  %b.load63 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len64 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load63, i32 0, i32 0
  %b.rn.cur.len65 = load i64, ptr %b.rn.cur.len64, align 8
  %b.rn.new.len66 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len65, i64 1)
  %sum67 = extractvalue { i64, i1 } %b.rn.new.len66, 0
  %ovf68 = extractvalue { i64, i1 } %b.rn.new.len66, 1
  br i1 %ovf68, label %str_overflow_abort70, label %b.rn.new.len69

b.rn.new.len69:                                   ; preds = %str_overflow_abort70, %br.done.67
  %b.cap71 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load63, i32 0, i32 2
  %b.cap72 = load i64, ptr %b.cap71, align 8
  %b.need.grow73 = icmp slt i64 %b.cap72, %sum67
  br i1 %b.need.grow73, label %b.grow274, label %b.nogrow275

str_overflow_abort70:                             ; preds = %br.done.67
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len69

b.grow274:                                        ; preds = %b.rn.new.len69
  %b.cap277 = mul i64 %b.cap72, 2
  %b.cap.small78 = icmp slt i64 %b.cap277, 16
  %b.cap.grow79 = select i1 %b.cap.small78, i64 16, i64 %b.cap277
  %b.cap.need80 = icmp slt i64 %b.cap.grow79, %sum67
  %b.new.cap81 = select i1 %b.cap.need80, i64 %sum67, i64 %b.cap.grow79
  %b.cur.len282 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load63, i32 0, i32 0
  %b.cur.len283 = load i64, ptr %b.cur.len282, align 8
  %b.cur.data284 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load63, i32 0, i32 1
  %b.cur.data285 = load ptr, ptr %b.cur.data284, align 8
  %b.new.buf.len286 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap81, i64 1)
  %sum87 = extractvalue { i64, i1 } %b.new.buf.len286, 0
  %ovf88 = extractvalue { i64, i1 } %b.new.buf.len286, 1
  br i1 %ovf88, label %str_overflow_abort90, label %b.new.buf.len289

b.nogrow275:                                      ; preds = %b.rn.new.len69
  br label %b.grow_done76

b.grow_done76:                                    ; preds = %b.nogrow275, %b.new.buf.len289
  %b.rn.data96 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load63, i32 0, i32 1
  %b.rn.data97 = load ptr, ptr %b.rn.data96, align 8
  %b.rn.dst98 = getelementptr i8, ptr %b.rn.data97, i64 %b.rn.cur.len65
  br i1 true, label %br.b1.68, label %br.c2.68

b.new.buf.len289:                                 ; preds = %str_overflow_abort90, %b.grow274
  %arena.cur91 = call ptr @dva_arena_current()
  %b.new.buf292 = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 %sum87)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf292, ptr align 1 %b.cur.data285, i64 %b.cur.len283, i1 false)
  %b.grow2.nul93 = getelementptr i8, ptr %b.new.buf292, i64 %b.cur.len283
  store i8 0, ptr %b.grow2.nul93, align 1
  %b.new.data2.gep94 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load63, i32 0, i32 1
  store ptr %b.new.buf292, ptr %b.new.data2.gep94, align 8
  %b.new.cap2.gep95 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load63, i32 0, i32 2
  store i64 %b.new.cap81, ptr %b.new.cap2.gep95, align 8
  br label %b.grow_done76

str_overflow_abort90:                             ; preds = %b.grow274
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len289

br.b1.68:                                         ; preds = %b.grow_done76
  store i8 45, ptr %b.rn.dst98, align 1
  br label %br.done.68

br.c2.68:                                         ; preds = %b.grow_done76
  br i1 true, label %br.b2.68, label %br.c3.68

br.b2.68:                                         ; preds = %br.c2.68
  store i8 -64, ptr %b.rn.dst98, align 1
  %br.dst199 = getelementptr i8, ptr %b.rn.dst98, i64 1
  store i8 -83, ptr %br.dst199, align 1
  br label %br.done.68

br.c3.68:                                         ; preds = %br.c2.68
  br i1 true, label %br.b3.68, label %br.b4.68

br.b3.68:                                         ; preds = %br.c3.68
  store i8 -32, ptr %b.rn.dst98, align 1
  %br.dst1.3100 = getelementptr i8, ptr %b.rn.dst98, i64 1
  store i8 -128, ptr %br.dst1.3100, align 1
  %br.dst2.3101 = getelementptr i8, ptr %b.rn.dst98, i64 2
  store i8 -83, ptr %br.dst2.3101, align 1
  br label %br.done.68

br.b4.68:                                         ; preds = %br.c3.68
  store i8 -16, ptr %b.rn.dst98, align 1
  %br.dst1.4102 = getelementptr i8, ptr %b.rn.dst98, i64 1
  store i8 -128, ptr %br.dst1.4102, align 1
  %br.dst2.4103 = getelementptr i8, ptr %b.rn.dst98, i64 2
  store i8 -128, ptr %br.dst2.4103, align 1
  %br.dst3.4104 = getelementptr i8, ptr %b.rn.dst98, i64 3
  store i8 -83, ptr %br.dst3.4104, align 1
  br label %br.done.68

br.done.68:                                       ; preds = %br.b4.68, %br.b3.68, %br.b2.68, %br.b1.68
  %br.nul105 = getelementptr i8, ptr %b.rn.data97, i64 %sum67
  store i8 0, ptr %br.nul105, align 1
  %b.len.gep106 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load63, i32 0, i32 0
  store i64 %sum67, ptr %b.len.gep106, align 8
  %var.load107 = load ptr, ptr %var.b, align 8
  %var.load108 = load ptr, ptr %var.dt, align 8
  %fld.gep109 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load108, i32 0, i32 2
  %fld.load110 = load i64, ptr %fld.gep109, align 8
  call void @"time::#pad2"(ptr %var.load107, i64 %fld.load110)
  ret void
}

define internal void @"time::#write_clock_into"(ptr %0, ptr %1) #1 {
entry:
  %var.dt = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store ptr %1, ptr %var.dt, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %var.load1 = load ptr, ptr %var.dt, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load1, i32 0, i32 3
  %fld.load = load i64, ptr %fld.gep, align 8
  call void @"time::#pad2"(ptr %var.load, i64 %fld.load)
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len2 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len2, i64 1)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len3

b.rn.new.len3:                                    ; preds = %str_overflow_abort, %entry
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap4 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap4, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %entry
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len3

b.grow2:                                          ; preds = %b.rn.new.len3
  %b.cap2 = mul i64 %b.cap4, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len25 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data26 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum7 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf8 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf8, label %str_overflow_abort10, label %b.new.buf.len29

b.nogrow2:                                        ; preds = %b.rn.new.len3
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len29
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data11 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data11, i64 %b.rn.cur.len2
  br i1 true, label %br.b1.69, label %br.c2.69

b.new.buf.len29:                                  ; preds = %str_overflow_abort10, %b.grow2
  %arena.cur = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum7)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data26, i64 %b.cur.len25, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len25
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort10:                             ; preds = %b.grow2
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len29

br.b1.69:                                         ; preds = %b.grow_done
  store i8 58, ptr %b.rn.dst, align 1
  br label %br.done.69

br.c2.69:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.69, label %br.c3.69

br.b2.69:                                         ; preds = %br.c2.69
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -70, ptr %br.dst1, align 1
  br label %br.done.69

br.c3.69:                                         ; preds = %br.c2.69
  br i1 true, label %br.b3.69, label %br.b4.69

br.b3.69:                                         ; preds = %br.c3.69
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -70, ptr %br.dst2.3, align 1
  br label %br.done.69

br.b4.69:                                         ; preds = %br.c3.69
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -70, ptr %br.dst3.4, align 1
  br label %br.done.69

br.done.69:                                       ; preds = %br.b4.69, %br.b3.69, %br.b2.69, %br.b1.69
  %br.nul = getelementptr i8, ptr %b.rn.data11, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  %var.load12 = load ptr, ptr %var.b, align 8
  %var.load13 = load ptr, ptr %var.dt, align 8
  %fld.gep14 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load13, i32 0, i32 4
  %fld.load15 = load i64, ptr %fld.gep14, align 8
  call void @"time::#pad2"(ptr %var.load12, i64 %fld.load15)
  %b.load16 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len17 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 0
  %b.rn.cur.len18 = load i64, ptr %b.rn.cur.len17, align 8
  %b.rn.new.len19 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len18, i64 1)
  %sum20 = extractvalue { i64, i1 } %b.rn.new.len19, 0
  %ovf21 = extractvalue { i64, i1 } %b.rn.new.len19, 1
  br i1 %ovf21, label %str_overflow_abort23, label %b.rn.new.len22

b.rn.new.len22:                                   ; preds = %str_overflow_abort23, %br.done.69
  %b.cap24 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 2
  %b.cap25 = load i64, ptr %b.cap24, align 8
  %b.need.grow26 = icmp slt i64 %b.cap25, %sum20
  br i1 %b.need.grow26, label %b.grow227, label %b.nogrow228

str_overflow_abort23:                             ; preds = %br.done.69
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len22

b.grow227:                                        ; preds = %b.rn.new.len22
  %b.cap230 = mul i64 %b.cap25, 2
  %b.cap.small31 = icmp slt i64 %b.cap230, 16
  %b.cap.grow32 = select i1 %b.cap.small31, i64 16, i64 %b.cap230
  %b.cap.need33 = icmp slt i64 %b.cap.grow32, %sum20
  %b.new.cap34 = select i1 %b.cap.need33, i64 %sum20, i64 %b.cap.grow32
  %b.cur.len235 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 0
  %b.cur.len236 = load i64, ptr %b.cur.len235, align 8
  %b.cur.data237 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 1
  %b.cur.data238 = load ptr, ptr %b.cur.data237, align 8
  %b.new.buf.len239 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap34, i64 1)
  %sum40 = extractvalue { i64, i1 } %b.new.buf.len239, 0
  %ovf41 = extractvalue { i64, i1 } %b.new.buf.len239, 1
  br i1 %ovf41, label %str_overflow_abort43, label %b.new.buf.len242

b.nogrow228:                                      ; preds = %b.rn.new.len22
  br label %b.grow_done29

b.grow_done29:                                    ; preds = %b.nogrow228, %b.new.buf.len242
  %b.rn.data49 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 1
  %b.rn.data50 = load ptr, ptr %b.rn.data49, align 8
  %b.rn.dst51 = getelementptr i8, ptr %b.rn.data50, i64 %b.rn.cur.len18
  br i1 true, label %br.b1.70, label %br.c2.70

b.new.buf.len242:                                 ; preds = %str_overflow_abort43, %b.grow227
  %arena.cur44 = call ptr @dva_arena_current()
  %b.new.buf245 = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 %sum40)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf245, ptr align 1 %b.cur.data238, i64 %b.cur.len236, i1 false)
  %b.grow2.nul46 = getelementptr i8, ptr %b.new.buf245, i64 %b.cur.len236
  store i8 0, ptr %b.grow2.nul46, align 1
  %b.new.data2.gep47 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 1
  store ptr %b.new.buf245, ptr %b.new.data2.gep47, align 8
  %b.new.cap2.gep48 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 2
  store i64 %b.new.cap34, ptr %b.new.cap2.gep48, align 8
  br label %b.grow_done29

str_overflow_abort43:                             ; preds = %b.grow227
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len242

br.b1.70:                                         ; preds = %b.grow_done29
  store i8 58, ptr %b.rn.dst51, align 1
  br label %br.done.70

br.c2.70:                                         ; preds = %b.grow_done29
  br i1 true, label %br.b2.70, label %br.c3.70

br.b2.70:                                         ; preds = %br.c2.70
  store i8 -64, ptr %b.rn.dst51, align 1
  %br.dst152 = getelementptr i8, ptr %b.rn.dst51, i64 1
  store i8 -70, ptr %br.dst152, align 1
  br label %br.done.70

br.c3.70:                                         ; preds = %br.c2.70
  br i1 true, label %br.b3.70, label %br.b4.70

br.b3.70:                                         ; preds = %br.c3.70
  store i8 -32, ptr %b.rn.dst51, align 1
  %br.dst1.353 = getelementptr i8, ptr %b.rn.dst51, i64 1
  store i8 -128, ptr %br.dst1.353, align 1
  %br.dst2.354 = getelementptr i8, ptr %b.rn.dst51, i64 2
  store i8 -70, ptr %br.dst2.354, align 1
  br label %br.done.70

br.b4.70:                                         ; preds = %br.c3.70
  store i8 -16, ptr %b.rn.dst51, align 1
  %br.dst1.455 = getelementptr i8, ptr %b.rn.dst51, i64 1
  store i8 -128, ptr %br.dst1.455, align 1
  %br.dst2.456 = getelementptr i8, ptr %b.rn.dst51, i64 2
  store i8 -128, ptr %br.dst2.456, align 1
  %br.dst3.457 = getelementptr i8, ptr %b.rn.dst51, i64 3
  store i8 -70, ptr %br.dst3.457, align 1
  br label %br.done.70

br.done.70:                                       ; preds = %br.b4.70, %br.b3.70, %br.b2.70, %br.b1.70
  %br.nul58 = getelementptr i8, ptr %b.rn.data50, i64 %sum20
  store i8 0, ptr %br.nul58, align 1
  %b.len.gep59 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 0
  store i64 %sum20, ptr %b.len.gep59, align 8
  %var.load60 = load ptr, ptr %var.b, align 8
  %var.load61 = load ptr, ptr %var.dt, align 8
  %fld.gep62 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load61, i32 0, i32 5
  %fld.load63 = load i64, ptr %fld.gep62, align 8
  call void @"time::#pad2"(ptr %var.load60, i64 %fld.load63)
  ret void
}

define internal void @"time::#write_tz_iso_into"(ptr %0, i64 %1) #1 {
entry:
  %var.abs_off = alloca i64, align 8
  %var.utc_off = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i64 %1, ptr %var.utc_off, align 8
  %var.load = load i64, ptr %var.utc_off, align 8
  %cmptmp = icmp eq i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len1 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len1, i64 1)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len2

choice.else:                                      ; preds = %entry
  %b.load11 = load ptr, ptr %var.b, align 8
  %var.load12 = load i64, ptr %var.utc_off, align 8
  %cmptmp13 = icmp slt i64 %var.load12, 0
  br i1 %cmptmp13, label %choice.then14, label %choice.else15

choice.exit:                                      ; preds = %div.ok126, %br.done.71
  ret void

b.rn.new.len2:                                    ; preds = %str_overflow_abort, %choice.then
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap3 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap3, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %choice.then
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
  br i1 true, label %br.b1.71, label %br.c2.71

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

br.b1.71:                                         ; preds = %b.grow_done
  store i8 90, ptr %b.rn.dst, align 1
  br label %br.done.71

br.c2.71:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.71, label %br.c3.71

br.b2.71:                                         ; preds = %br.c2.71
  store i8 -63, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -102, ptr %br.dst1, align 1
  br label %br.done.71

br.c3.71:                                         ; preds = %br.c2.71
  br i1 true, label %br.b3.71, label %br.b4.71

br.b3.71:                                         ; preds = %br.c3.71
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -127, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -102, ptr %br.dst2.3, align 1
  br label %br.done.71

br.b4.71:                                         ; preds = %br.c3.71
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -127, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -102, ptr %br.dst3.4, align 1
  br label %br.done.71

br.done.71:                                       ; preds = %br.b4.71, %br.b3.71, %br.b2.71, %br.b1.71
  %br.nul = getelementptr i8, ptr %b.rn.data10, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %choice.exit

choice.then14:                                    ; preds = %choice.else
  br label %choice.exit16

choice.else15:                                    ; preds = %choice.else
  br label %choice.exit16

choice.exit16:                                    ; preds = %choice.else15, %choice.then14
  %choice.res = phi i32 [ 45, %choice.then14 ], [ 43, %choice.else15 ]
  %coerce.sext = sext i32 %choice.res to i64
  %br.cmp1 = icmp slt i64 %coerce.sext, 128
  %br.cmp2 = icmp slt i64 %coerce.sext, 2048
  %br.cmp3 = icmp slt i64 %coerce.sext, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.cur.len17 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 0
  %b.rn.cur.len18 = load i64, ptr %b.rn.cur.len17, align 8
  %b.rn.new.len19 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len18, i64 %br.width)
  %sum20 = extractvalue { i64, i1 } %b.rn.new.len19, 0
  %ovf21 = extractvalue { i64, i1 } %b.rn.new.len19, 1
  br i1 %ovf21, label %str_overflow_abort23, label %b.rn.new.len22

b.rn.new.len22:                                   ; preds = %str_overflow_abort23, %choice.exit16
  %b.cap24 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 2
  %b.cap25 = load i64, ptr %b.cap24, align 8
  %b.need.grow26 = icmp slt i64 %b.cap25, %sum20
  br i1 %b.need.grow26, label %b.grow227, label %b.nogrow228

str_overflow_abort23:                             ; preds = %choice.exit16
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len22

b.grow227:                                        ; preds = %b.rn.new.len22
  %b.cap230 = mul i64 %b.cap25, 2
  %b.cap.small31 = icmp slt i64 %b.cap230, 16
  %b.cap.grow32 = select i1 %b.cap.small31, i64 16, i64 %b.cap230
  %b.cap.need33 = icmp slt i64 %b.cap.grow32, %sum20
  %b.new.cap34 = select i1 %b.cap.need33, i64 %sum20, i64 %b.cap.grow32
  %b.cur.len235 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 0
  %b.cur.len236 = load i64, ptr %b.cur.len235, align 8
  %b.cur.data237 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 1
  %b.cur.data238 = load ptr, ptr %b.cur.data237, align 8
  %b.new.buf.len239 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap34, i64 1)
  %sum40 = extractvalue { i64, i1 } %b.new.buf.len239, 0
  %ovf41 = extractvalue { i64, i1 } %b.new.buf.len239, 1
  br i1 %ovf41, label %str_overflow_abort43, label %b.new.buf.len242

b.nogrow228:                                      ; preds = %b.rn.new.len22
  br label %b.grow_done29

b.grow_done29:                                    ; preds = %b.nogrow228, %b.new.buf.len242
  %b.rn.data49 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 1
  %b.rn.data50 = load ptr, ptr %b.rn.data49, align 8
  %b.rn.dst51 = getelementptr i8, ptr %b.rn.data50, i64 %b.rn.cur.len18
  br i1 %br.cmp1, label %br.b1.72, label %br.c2.72

b.new.buf.len242:                                 ; preds = %str_overflow_abort43, %b.grow227
  %arena.cur44 = call ptr @dva_arena_current()
  %b.new.buf245 = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 %sum40)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf245, ptr align 1 %b.cur.data238, i64 %b.cur.len236, i1 false)
  %b.grow2.nul46 = getelementptr i8, ptr %b.new.buf245, i64 %b.cur.len236
  store i8 0, ptr %b.grow2.nul46, align 1
  %b.new.data2.gep47 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 1
  store ptr %b.new.buf245, ptr %b.new.data2.gep47, align 8
  %b.new.cap2.gep48 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 2
  store i64 %b.new.cap34, ptr %b.new.cap2.gep48, align 8
  br label %b.grow_done29

str_overflow_abort43:                             ; preds = %b.grow227
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len242

br.b1.72:                                         ; preds = %b.grow_done29
  %br.b1.0 = trunc i64 %coerce.sext to i8
  store i8 %br.b1.0, ptr %b.rn.dst51, align 1
  br label %br.done.72

br.c2.72:                                         ; preds = %b.grow_done29
  br i1 %br.cmp2, label %br.b2.72, label %br.c3.72

br.b2.72:                                         ; preds = %br.c2.72
  %br.sh6 = lshr i64 %coerce.sext, 6
  %br.b2.0 = or i64 %br.sh6, 192
  %br.b2.0t = trunc i64 %br.b2.0 to i8
  %br.m6 = and i64 %coerce.sext, 63
  %br.b2.1 = or i64 %br.m6, 128
  %br.b2.1t = trunc i64 %br.b2.1 to i8
  store i8 %br.b2.0t, ptr %b.rn.dst51, align 1
  %br.dst152 = getelementptr i8, ptr %b.rn.dst51, i64 1
  store i8 %br.b2.1t, ptr %br.dst152, align 1
  br label %br.done.72

br.c3.72:                                         ; preds = %br.c2.72
  br i1 %br.cmp3, label %br.b3.72, label %br.b4.72

br.b3.72:                                         ; preds = %br.c3.72
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
  store i8 %br.b3.0t, ptr %b.rn.dst51, align 1
  %br.dst1.353 = getelementptr i8, ptr %b.rn.dst51, i64 1
  store i8 %br.b3.1t, ptr %br.dst1.353, align 1
  %br.dst2.354 = getelementptr i8, ptr %b.rn.dst51, i64 2
  store i8 %br.b3.2t, ptr %br.dst2.354, align 1
  br label %br.done.72

br.b4.72:                                         ; preds = %br.c3.72
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
  store i8 %br.b4.0t, ptr %b.rn.dst51, align 1
  %br.dst1.455 = getelementptr i8, ptr %b.rn.dst51, i64 1
  store i8 %br.b4.1t, ptr %br.dst1.455, align 1
  %br.dst2.456 = getelementptr i8, ptr %b.rn.dst51, i64 2
  store i8 %br.b4.2t, ptr %br.dst2.456, align 1
  %br.dst3.457 = getelementptr i8, ptr %b.rn.dst51, i64 3
  store i8 %br.b4.3t, ptr %br.dst3.457, align 1
  br label %br.done.72

br.done.72:                                       ; preds = %br.b4.72, %br.b3.72, %br.b2.72, %br.b1.72
  %br.nul58 = getelementptr i8, ptr %b.rn.data50, i64 %sum20
  store i8 0, ptr %br.nul58, align 1
  %b.len.gep59 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 0
  store i64 %sum20, ptr %b.len.gep59, align 8
  %var.load60 = load i64, ptr %var.utc_off, align 8
  %cmptmp61 = icmp slt i64 %var.load60, 0
  br i1 %cmptmp61, label %choice.then62, label %choice.else63

choice.then62:                                    ; preds = %br.done.72
  %var.load65 = load i64, ptr %var.utc_off, align 8
  %negtmp = sub i64 0, %var.load65
  br label %choice.exit64

choice.else63:                                    ; preds = %br.done.72
  %var.load66 = load i64, ptr %var.utc_off, align 8
  br label %choice.exit64

choice.exit64:                                    ; preds = %choice.else63, %choice.then62
  %choice.res67 = phi i64 [ %negtmp, %choice.then62 ], [ %var.load66, %choice.else63 ]
  store i64 %choice.res67, ptr %var.abs_off, align 8
  %var.load68 = load ptr, ptr %var.b, align 8
  %var.load69 = load i64, ptr %var.abs_off, align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

div.not_zero:                                     ; preds = %div.zero_abort, %choice.exit64
  %div.is.min = icmp eq i64 %var.load69, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.exit64
  %6 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %divtmp = sdiv i64 %var.load69, 3600
  call void @"time::#pad2"(ptr %var.load68, i64 %divtmp)
  %b.load70 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len71 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 0
  %b.rn.cur.len72 = load i64, ptr %b.rn.cur.len71, align 8
  %b.rn.new.len73 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len72, i64 1)
  %sum74 = extractvalue { i64, i1 } %b.rn.new.len73, 0
  %ovf75 = extractvalue { i64, i1 } %b.rn.new.len73, 1
  br i1 %ovf75, label %str_overflow_abort77, label %b.rn.new.len76

div.ovf_abort:                                    ; preds = %div.not_zero
  %7 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

b.rn.new.len76:                                   ; preds = %str_overflow_abort77, %div.ok
  %b.cap78 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 2
  %b.cap79 = load i64, ptr %b.cap78, align 8
  %b.need.grow80 = icmp slt i64 %b.cap79, %sum74
  br i1 %b.need.grow80, label %b.grow281, label %b.nogrow282

str_overflow_abort77:                             ; preds = %div.ok
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len76

b.grow281:                                        ; preds = %b.rn.new.len76
  %b.cap284 = mul i64 %b.cap79, 2
  %b.cap.small85 = icmp slt i64 %b.cap284, 16
  %b.cap.grow86 = select i1 %b.cap.small85, i64 16, i64 %b.cap284
  %b.cap.need87 = icmp slt i64 %b.cap.grow86, %sum74
  %b.new.cap88 = select i1 %b.cap.need87, i64 %sum74, i64 %b.cap.grow86
  %b.cur.len289 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 0
  %b.cur.len290 = load i64, ptr %b.cur.len289, align 8
  %b.cur.data291 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 1
  %b.cur.data292 = load ptr, ptr %b.cur.data291, align 8
  %b.new.buf.len293 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap88, i64 1)
  %sum94 = extractvalue { i64, i1 } %b.new.buf.len293, 0
  %ovf95 = extractvalue { i64, i1 } %b.new.buf.len293, 1
  br i1 %ovf95, label %str_overflow_abort97, label %b.new.buf.len296

b.nogrow282:                                      ; preds = %b.rn.new.len76
  br label %b.grow_done83

b.grow_done83:                                    ; preds = %b.nogrow282, %b.new.buf.len296
  %b.rn.data103 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 1
  %b.rn.data104 = load ptr, ptr %b.rn.data103, align 8
  %b.rn.dst105 = getelementptr i8, ptr %b.rn.data104, i64 %b.rn.cur.len72
  br i1 true, label %br.b1.73, label %br.c2.73

b.new.buf.len296:                                 ; preds = %str_overflow_abort97, %b.grow281
  %arena.cur98 = call ptr @dva_arena_current()
  %b.new.buf299 = call ptr @dva_arena_alloc(ptr %arena.cur98, i64 %sum94)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf299, ptr align 1 %b.cur.data292, i64 %b.cur.len290, i1 false)
  %b.grow2.nul100 = getelementptr i8, ptr %b.new.buf299, i64 %b.cur.len290
  store i8 0, ptr %b.grow2.nul100, align 1
  %b.new.data2.gep101 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 1
  store ptr %b.new.buf299, ptr %b.new.data2.gep101, align 8
  %b.new.cap2.gep102 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 2
  store i64 %b.new.cap88, ptr %b.new.cap2.gep102, align 8
  br label %b.grow_done83

str_overflow_abort97:                             ; preds = %b.grow281
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len296

br.b1.73:                                         ; preds = %b.grow_done83
  store i8 58, ptr %b.rn.dst105, align 1
  br label %br.done.73

br.c2.73:                                         ; preds = %b.grow_done83
  br i1 true, label %br.b2.73, label %br.c3.73

br.b2.73:                                         ; preds = %br.c2.73
  store i8 -64, ptr %b.rn.dst105, align 1
  %br.dst1106 = getelementptr i8, ptr %b.rn.dst105, i64 1
  store i8 -70, ptr %br.dst1106, align 1
  br label %br.done.73

br.c3.73:                                         ; preds = %br.c2.73
  br i1 true, label %br.b3.73, label %br.b4.73

br.b3.73:                                         ; preds = %br.c3.73
  store i8 -32, ptr %b.rn.dst105, align 1
  %br.dst1.3107 = getelementptr i8, ptr %b.rn.dst105, i64 1
  store i8 -128, ptr %br.dst1.3107, align 1
  %br.dst2.3108 = getelementptr i8, ptr %b.rn.dst105, i64 2
  store i8 -70, ptr %br.dst2.3108, align 1
  br label %br.done.73

br.b4.73:                                         ; preds = %br.c3.73
  store i8 -16, ptr %b.rn.dst105, align 1
  %br.dst1.4109 = getelementptr i8, ptr %b.rn.dst105, i64 1
  store i8 -128, ptr %br.dst1.4109, align 1
  %br.dst2.4110 = getelementptr i8, ptr %b.rn.dst105, i64 2
  store i8 -128, ptr %br.dst2.4110, align 1
  %br.dst3.4111 = getelementptr i8, ptr %b.rn.dst105, i64 3
  store i8 -70, ptr %br.dst3.4111, align 1
  br label %br.done.73

br.done.73:                                       ; preds = %br.b4.73, %br.b3.73, %br.b2.73, %br.b1.73
  %br.nul112 = getelementptr i8, ptr %b.rn.data104, i64 %sum74
  store i8 0, ptr %br.nul112, align 1
  %b.len.gep113 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 0
  store i64 %sum74, ptr %b.len.gep113, align 8
  %var.load114 = load ptr, ptr %var.b, align 8
  %var.load115 = load i64, ptr %var.abs_off, align 8
  br i1 false, label %div.zero_abort117, label %div.not_zero116

div.not_zero116:                                  ; preds = %div.zero_abort117, %br.done.73
  %div.is.min118 = icmp eq i64 %var.load115, -9223372036854775808
  %div.is.ovf119 = and i1 %div.is.min118, false
  br i1 %div.is.ovf119, label %div.ovf_abort121, label %div.ok120

div.zero_abort117:                                ; preds = %br.done.73
  %10 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero116

div.ok120:                                        ; preds = %div.ovf_abort121, %div.not_zero116
  %modtmp = srem i64 %var.load115, 3600
  br i1 false, label %div.zero_abort123, label %div.not_zero122

div.ovf_abort121:                                 ; preds = %div.not_zero116
  %11 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok120

div.not_zero122:                                  ; preds = %div.zero_abort123, %div.ok120
  %div.is.min124 = icmp eq i64 %modtmp, -9223372036854775808
  %div.is.ovf125 = and i1 %div.is.min124, false
  br i1 %div.is.ovf125, label %div.ovf_abort127, label %div.ok126

div.zero_abort123:                                ; preds = %div.ok120
  %12 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero122

div.ok126:                                        ; preds = %div.ovf_abort127, %div.not_zero122
  %divtmp128 = sdiv i64 %modtmp, 60
  call void @"time::#pad2"(ptr %var.load114, i64 %divtmp128)
  br label %choice.exit

div.ovf_abort127:                                 ; preds = %div.not_zero122
  %13 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok126
}

define internal void @"time::#write_tz_compact_into"(ptr %0, i64 %1) #1 {
entry:
  %var.abs_off = alloca i64, align 8
  %var.utc_off = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i64 %1, ptr %var.utc_off, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load = load i64, ptr %var.utc_off, align 8
  %cmptmp = icmp slt i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i32 [ 45, %choice.then ], [ 43, %choice.else ]
  %coerce.sext = sext i32 %choice.res to i64
  %br.cmp1 = icmp slt i64 %coerce.sext, 128
  %br.cmp2 = icmp slt i64 %coerce.sext, 2048
  %br.cmp3 = icmp slt i64 %coerce.sext, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len1 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len1, i64 %br.width)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len2

b.rn.new.len2:                                    ; preds = %str_overflow_abort, %choice.exit
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap3 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap3, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %choice.exit
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
  br i1 %br.cmp1, label %br.b1.74, label %br.c2.74

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

br.b1.74:                                         ; preds = %b.grow_done
  %br.b1.0 = trunc i64 %coerce.sext to i8
  store i8 %br.b1.0, ptr %b.rn.dst, align 1
  br label %br.done.74

br.c2.74:                                         ; preds = %b.grow_done
  br i1 %br.cmp2, label %br.b2.74, label %br.c3.74

br.b2.74:                                         ; preds = %br.c2.74
  %br.sh6 = lshr i64 %coerce.sext, 6
  %br.b2.0 = or i64 %br.sh6, 192
  %br.b2.0t = trunc i64 %br.b2.0 to i8
  %br.m6 = and i64 %coerce.sext, 63
  %br.b2.1 = or i64 %br.m6, 128
  %br.b2.1t = trunc i64 %br.b2.1 to i8
  store i8 %br.b2.0t, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b2.1t, ptr %br.dst1, align 1
  br label %br.done.74

br.c3.74:                                         ; preds = %br.c2.74
  br i1 %br.cmp3, label %br.b3.74, label %br.b4.74

br.b3.74:                                         ; preds = %br.c3.74
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
  store i8 %br.b3.0t, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b3.1t, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 %br.b3.2t, ptr %br.dst2.3, align 1
  br label %br.done.74

br.b4.74:                                         ; preds = %br.c3.74
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
  store i8 %br.b4.0t, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b4.1t, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 %br.b4.2t, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 %br.b4.3t, ptr %br.dst3.4, align 1
  br label %br.done.74

br.done.74:                                       ; preds = %br.b4.74, %br.b3.74, %br.b2.74, %br.b1.74
  %br.nul = getelementptr i8, ptr %b.rn.data10, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  %var.load11 = load i64, ptr %var.utc_off, align 8
  %cmptmp12 = icmp slt i64 %var.load11, 0
  br i1 %cmptmp12, label %choice.then13, label %choice.else14

choice.then13:                                    ; preds = %br.done.74
  %var.load16 = load i64, ptr %var.utc_off, align 8
  %negtmp = sub i64 0, %var.load16
  br label %choice.exit15

choice.else14:                                    ; preds = %br.done.74
  %var.load17 = load i64, ptr %var.utc_off, align 8
  br label %choice.exit15

choice.exit15:                                    ; preds = %choice.else14, %choice.then13
  %choice.res18 = phi i64 [ %negtmp, %choice.then13 ], [ %var.load17, %choice.else14 ]
  store i64 %choice.res18, ptr %var.abs_off, align 8
  %var.load19 = load ptr, ptr %var.b, align 8
  %var.load20 = load i64, ptr %var.abs_off, align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

div.not_zero:                                     ; preds = %div.zero_abort, %choice.exit15
  %div.is.min = icmp eq i64 %var.load20, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.exit15
  %4 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %divtmp = sdiv i64 %var.load20, 3600
  call void @"time::#pad2"(ptr %var.load19, i64 %divtmp)
  %var.load21 = load ptr, ptr %var.b, align 8
  %var.load22 = load i64, ptr %var.abs_off, align 8
  br i1 false, label %div.zero_abort24, label %div.not_zero23

div.ovf_abort:                                    ; preds = %div.not_zero
  %5 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

div.not_zero23:                                   ; preds = %div.zero_abort24, %div.ok
  %div.is.min25 = icmp eq i64 %var.load22, -9223372036854775808
  %div.is.ovf26 = and i1 %div.is.min25, false
  br i1 %div.is.ovf26, label %div.ovf_abort28, label %div.ok27

div.zero_abort24:                                 ; preds = %div.ok
  %6 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero23

div.ok27:                                         ; preds = %div.ovf_abort28, %div.not_zero23
  %modtmp = srem i64 %var.load22, 3600
  br i1 false, label %div.zero_abort30, label %div.not_zero29

div.ovf_abort28:                                  ; preds = %div.not_zero23
  %7 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok27

div.not_zero29:                                   ; preds = %div.zero_abort30, %div.ok27
  %div.is.min31 = icmp eq i64 %modtmp, -9223372036854775808
  %div.is.ovf32 = and i1 %div.is.min31, false
  br i1 %div.is.ovf32, label %div.ovf_abort34, label %div.ok33

div.zero_abort30:                                 ; preds = %div.ok27
  %8 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero29

div.ok33:                                         ; preds = %div.ovf_abort34, %div.not_zero29
  %divtmp35 = sdiv i64 %modtmp, 60
  call void @"time::#pad2"(ptr %var.load21, i64 %divtmp35)
  ret void

div.ovf_abort34:                                  ; preds = %div.not_zero29
  %9 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok33
}

define internal void @"time::#write_date_basic_into"(ptr %0, ptr %1) #1 {
entry:
  %var.dt = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store ptr %1, ptr %var.dt, align 8
  %var.load = load ptr, ptr %var.dt, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp slt i64 %fld.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len1 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len1, i64 1)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len2

choice.exit:                                      ; preds = %br.done.75, %entry
  %var.load11 = load ptr, ptr %var.b, align 8
  %var.load12 = load ptr, ptr %var.dt, align 8
  %fld.gep13 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load12, i32 0, i32 0
  %fld.load14 = load i64, ptr %fld.gep13, align 8
  call void @"time::#pad4"(ptr %var.load11, i64 %fld.load14)
  %var.load15 = load ptr, ptr %var.b, align 8
  %var.load16 = load ptr, ptr %var.dt, align 8
  %fld.gep17 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load16, i32 0, i32 1
  %fld.load18 = load i64, ptr %fld.gep17, align 8
  call void @"time::#pad2"(ptr %var.load15, i64 %fld.load18)
  %var.load19 = load ptr, ptr %var.b, align 8
  %var.load20 = load ptr, ptr %var.dt, align 8
  %fld.gep21 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load20, i32 0, i32 2
  %fld.load22 = load i64, ptr %fld.gep21, align 8
  call void @"time::#pad2"(ptr %var.load19, i64 %fld.load22)
  ret void

b.rn.new.len2:                                    ; preds = %str_overflow_abort, %choice.then
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap3 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap3, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %choice.then
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
  br i1 true, label %br.b1.75, label %br.c2.75

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

br.b1.75:                                         ; preds = %b.grow_done
  store i8 45, ptr %b.rn.dst, align 1
  br label %br.done.75

br.c2.75:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.75, label %br.c3.75

br.b2.75:                                         ; preds = %br.c2.75
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -83, ptr %br.dst1, align 1
  br label %br.done.75

br.c3.75:                                         ; preds = %br.c2.75
  br i1 true, label %br.b3.75, label %br.b4.75

br.b3.75:                                         ; preds = %br.c3.75
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -83, ptr %br.dst2.3, align 1
  br label %br.done.75

br.b4.75:                                         ; preds = %br.c3.75
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -83, ptr %br.dst3.4, align 1
  br label %br.done.75

br.done.75:                                       ; preds = %br.b4.75, %br.b3.75, %br.b2.75, %br.b1.75
  %br.nul = getelementptr i8, ptr %b.rn.data10, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %choice.exit
}

define internal void @"time::#write_clock_basic_into"(ptr %0, ptr %1) #1 {
entry:
  %var.dt = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store ptr %1, ptr %var.dt, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %var.load1 = load ptr, ptr %var.dt, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load1, i32 0, i32 3
  %fld.load = load i64, ptr %fld.gep, align 8
  call void @"time::#pad2"(ptr %var.load, i64 %fld.load)
  %var.load2 = load ptr, ptr %var.b, align 8
  %var.load3 = load ptr, ptr %var.dt, align 8
  %fld.gep4 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load3, i32 0, i32 4
  %fld.load5 = load i64, ptr %fld.gep4, align 8
  call void @"time::#pad2"(ptr %var.load2, i64 %fld.load5)
  %var.load6 = load ptr, ptr %var.b, align 8
  %var.load7 = load ptr, ptr %var.dt, align 8
  %fld.gep8 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load7, i32 0, i32 5
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  call void @"time::#pad2"(ptr %var.load6, i64 %fld.load9)
  ret void
}

define internal void @"time::#write_tz_basic_into"(ptr %0, i64 %1) #1 {
entry:
  %var.utc_off = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i64 %1, ptr %var.utc_off, align 8
  %var.load = load i64, ptr %var.utc_off, align 8
  %cmptmp = icmp eq i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len1 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len1, i64 1)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len2

choice.else:                                      ; preds = %entry
  %var.load11 = load ptr, ptr %var.b, align 8
  %var.load12 = load i64, ptr %var.utc_off, align 8
  call void @"time::#write_tz_compact_into"(ptr %var.load11, i64 %var.load12)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %br.done.76
  ret void

b.rn.new.len2:                                    ; preds = %str_overflow_abort, %choice.then
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap3 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap3, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %choice.then
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
  br i1 true, label %br.b1.76, label %br.c2.76

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

br.b1.76:                                         ; preds = %b.grow_done
  store i8 90, ptr %b.rn.dst, align 1
  br label %br.done.76

br.c2.76:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.76, label %br.c3.76

br.b2.76:                                         ; preds = %br.c2.76
  store i8 -63, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -102, ptr %br.dst1, align 1
  br label %br.done.76

br.c3.76:                                         ; preds = %br.c2.76
  br i1 true, label %br.b3.76, label %br.b4.76

br.b3.76:                                         ; preds = %br.c3.76
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -127, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -102, ptr %br.dst2.3, align 1
  br label %br.done.76

br.b4.76:                                         ; preds = %br.c3.76
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -127, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -102, ptr %br.dst3.4, align 1
  br label %br.done.76

br.done.76:                                       ; preds = %br.b4.76, %br.b3.76, %br.b2.76, %br.b1.76
  %br.nul = getelementptr i8, ptr %b.rn.data10, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %choice.exit
}

define ptr @"time::format_dt_iso"(ptr %0) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var.dt = alloca ptr, align 8
  store ptr %0, ptr %var.dt, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
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
  store i64 32, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %var.load3 = load ptr, ptr %var.dt, align 8
  call void @"time::#write_date_into"(ptr %var.load, ptr %var.load3)
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len4 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len4, i64 1)
  %sum5 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf6 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf6, label %str_overflow_abort8, label %b.rn.new.len7

str_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

b.rn.new.len7:                                    ; preds = %str_overflow_abort8, %b.buf.len1
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap9 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap9, %sum5
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort8:                              ; preds = %b.buf.len1
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len7

b.grow2:                                          ; preds = %b.rn.new.len7
  %b.cap2 = mul i64 %b.cap9, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum5
  %b.new.cap = select i1 %b.cap.need, i64 %sum5, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len210 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data211 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum12 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf13 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf13, label %str_overflow_abort15, label %b.new.buf.len214

b.nogrow2:                                        ; preds = %b.rn.new.len7
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len214
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data17 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data17, i64 %b.rn.cur.len4
  br i1 true, label %br.b1.77, label %br.c2.77

b.new.buf.len214:                                 ; preds = %str_overflow_abort15, %b.grow2
  %arena.cur16 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 %sum12)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data211, i64 %b.cur.len210, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len210
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort15:                             ; preds = %b.grow2
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len214

br.b1.77:                                         ; preds = %b.grow_done
  store i8 84, ptr %b.rn.dst, align 1
  br label %br.done.77

br.c2.77:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.77, label %br.c3.77

br.b2.77:                                         ; preds = %br.c2.77
  store i8 -63, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -108, ptr %br.dst1, align 1
  br label %br.done.77

br.c3.77:                                         ; preds = %br.c2.77
  br i1 true, label %br.b3.77, label %br.b4.77

br.b3.77:                                         ; preds = %br.c3.77
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -127, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -108, ptr %br.dst2.3, align 1
  br label %br.done.77

br.b4.77:                                         ; preds = %br.c3.77
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -127, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -108, ptr %br.dst3.4, align 1
  br label %br.done.77

br.done.77:                                       ; preds = %br.b4.77, %br.b3.77, %br.b2.77, %br.b1.77
  %br.nul = getelementptr i8, ptr %b.rn.data17, i64 %sum5
  store i8 0, ptr %br.nul, align 1
  %b.len.gep18 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum5, ptr %b.len.gep18, align 8
  %var.load19 = load ptr, ptr %var.b, align 8
  %var.load20 = load ptr, ptr %var.dt, align 8
  call void @"time::#write_clock_into"(ptr %var.load19, ptr %var.load20)
  %var.load21 = load ptr, ptr %var.b, align 8
  %var.load22 = load ptr, ptr %var.dt, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load22, i32 0, i32 9
  %fld.load = load i64, ptr %fld.gep, align 8
  call void @"time::#write_tz_iso_into"(ptr %var.load21, i64 %fld.load)
  %var.load23 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load23, i32 0, i32 0
  %b.freeze.len24 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load23, i32 0, i32 1
  %b.freeze.data25 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %br.done.77
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data25, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data25, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data25, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len24, 1
  %arena.cur26 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data25, i64 %b.freeze.len24, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len24
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %br.done.77
  %b.freeze.data27 = phi ptr [ %b.freeze.data25, %br.done.77 ], [ %b.freeze.data25, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur28 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len24, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data27, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load23, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load23, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load23, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

define ptr @"time::format_dt_iso_basic"(ptr %0) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var.dt = alloca ptr, align 8
  store ptr %0, ptr %var.dt, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 24, i64 1)
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
  store i64 24, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %var.load3 = load ptr, ptr %var.dt, align 8
  call void @"time::#write_date_basic_into"(ptr %var.load, ptr %var.load3)
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len4 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len4, i64 1)
  %sum5 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf6 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf6, label %str_overflow_abort8, label %b.rn.new.len7

str_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

b.rn.new.len7:                                    ; preds = %str_overflow_abort8, %b.buf.len1
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap9 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap9, %sum5
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort8:                              ; preds = %b.buf.len1
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len7

b.grow2:                                          ; preds = %b.rn.new.len7
  %b.cap2 = mul i64 %b.cap9, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum5
  %b.new.cap = select i1 %b.cap.need, i64 %sum5, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len210 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data211 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum12 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf13 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf13, label %str_overflow_abort15, label %b.new.buf.len214

b.nogrow2:                                        ; preds = %b.rn.new.len7
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len214
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data17 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data17, i64 %b.rn.cur.len4
  br i1 true, label %br.b1.78, label %br.c2.78

b.new.buf.len214:                                 ; preds = %str_overflow_abort15, %b.grow2
  %arena.cur16 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 %sum12)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data211, i64 %b.cur.len210, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len210
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort15:                             ; preds = %b.grow2
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len214

br.b1.78:                                         ; preds = %b.grow_done
  store i8 84, ptr %b.rn.dst, align 1
  br label %br.done.78

br.c2.78:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.78, label %br.c3.78

br.b2.78:                                         ; preds = %br.c2.78
  store i8 -63, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -108, ptr %br.dst1, align 1
  br label %br.done.78

br.c3.78:                                         ; preds = %br.c2.78
  br i1 true, label %br.b3.78, label %br.b4.78

br.b3.78:                                         ; preds = %br.c3.78
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -127, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -108, ptr %br.dst2.3, align 1
  br label %br.done.78

br.b4.78:                                         ; preds = %br.c3.78
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -127, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -108, ptr %br.dst3.4, align 1
  br label %br.done.78

br.done.78:                                       ; preds = %br.b4.78, %br.b3.78, %br.b2.78, %br.b1.78
  %br.nul = getelementptr i8, ptr %b.rn.data17, i64 %sum5
  store i8 0, ptr %br.nul, align 1
  %b.len.gep18 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum5, ptr %b.len.gep18, align 8
  %var.load19 = load ptr, ptr %var.b, align 8
  %var.load20 = load ptr, ptr %var.dt, align 8
  call void @"time::#write_clock_basic_into"(ptr %var.load19, ptr %var.load20)
  %var.load21 = load ptr, ptr %var.b, align 8
  %var.load22 = load ptr, ptr %var.dt, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load22, i32 0, i32 9
  %fld.load = load i64, ptr %fld.gep, align 8
  call void @"time::#write_tz_basic_into"(ptr %var.load21, i64 %fld.load)
  %var.load23 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load23, i32 0, i32 0
  %b.freeze.len24 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load23, i32 0, i32 1
  %b.freeze.data25 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %br.done.78
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data25, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data25, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data25, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len24, 1
  %arena.cur26 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data25, i64 %b.freeze.len24, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len24
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %br.done.78
  %b.freeze.data27 = phi ptr [ %b.freeze.data25, %br.done.78 ], [ %b.freeze.data25, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur28 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len24, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data27, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load23, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load23, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load23, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define ptr @"time::format_dt_date"(ptr %0) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var.dt = alloca ptr, align 8
  store ptr %0, ptr %var.dt, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 16, i64 1)
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
  store i64 16, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %var.load3 = load ptr, ptr %var.dt, align 8
  call void @"time::#write_date_into"(ptr %var.load, ptr %var.load3)
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

define ptr @"time::format_dt_clock"(ptr %0) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var.dt = alloca ptr, align 8
  store ptr %0, ptr %var.dt, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 16, i64 1)
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
  store i64 16, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %var.load3 = load ptr, ptr %var.dt, align 8
  call void @"time::#write_clock_into"(ptr %var.load, ptr %var.load3)
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

define i64 @"time::now"() #1 {
entry:
  %"var.ts'" = alloca ptr, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i64, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  store ptr %rec.alloc, ptr %"var.ts'", align 8
  %call.res = call i32 @"time::clock_realtime"()
  %var.load = load ptr, ptr %"var.ts'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res2 = call i32 @clock_gettime(i32 %call.res, ptr %addr.ffi.clean)
  %var.load3 = load ptr, ptr %"var.ts'", align 8
  %fld.gep = getelementptr inbounds <{ i64, i64 }>, ptr %var.load3, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load
}

define i64 @"time::now_ms"() #1 {
entry:
  %"var.ts'" = alloca ptr, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i64, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  store ptr %rec.alloc, ptr %"var.ts'", align 8
  %call.res = call i32 @"time::clock_realtime"()
  %var.load = load ptr, ptr %"var.ts'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res2 = call i32 @clock_gettime(i32 %call.res, ptr %addr.ffi.clean)
  %var.load3 = load ptr, ptr %"var.ts'", align 8
  %fld.gep = getelementptr inbounds <{ i64, i64 }>, ptr %var.load3, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %multmp = mul i64 %fld.load, 1000
  %var.load4 = load ptr, ptr %"var.ts'", align 8
  %fld.gep5 = getelementptr inbounds <{ i64, i64 }>, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

div.not_zero:                                     ; preds = %div.zero_abort, %entry
  %div.is.min = icmp eq i64 %fld.load6, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %entry
  %0 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %divtmp = sdiv i64 %fld.load6, 1000000
  %addtmp = add i64 %multmp, %divtmp
  ret i64 %addtmp

div.ovf_abort:                                    ; preds = %div.not_zero
  %1 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok
}

define i64 @"time::now_ns"() #1 {
entry:
  %"var.ts'" = alloca ptr, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i64, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  store ptr %rec.alloc, ptr %"var.ts'", align 8
  %call.res = call i32 @"time::clock_realtime"()
  %var.load = load ptr, ptr %"var.ts'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res2 = call i32 @clock_gettime(i32 %call.res, ptr %addr.ffi.clean)
  %var.load3 = load ptr, ptr %"var.ts'", align 8
  %fld.gep = getelementptr inbounds <{ i64, i64 }>, ptr %var.load3, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %multmp = mul i64 %fld.load, 1000000000
  %var.load4 = load ptr, ptr %"var.ts'", align 8
  %fld.gep5 = getelementptr inbounds <{ i64, i64 }>, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %addtmp = add i64 %multmp, %fld.load6
  ret i64 %addtmp
}

define double @"time::now_f64"() #1 {
entry:
  %"var.ts'" = alloca ptr, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i64, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  store ptr %rec.alloc, ptr %"var.ts'", align 8
  %call.res = call i32 @"time::clock_realtime"()
  %var.load = load ptr, ptr %"var.ts'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res2 = call i32 @clock_gettime(i32 %call.res, ptr %addr.ffi.clean)
  %var.load3 = load ptr, ptr %"var.ts'", align 8
  %fld.gep = getelementptr inbounds <{ i64, i64 }>, ptr %var.load3, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %cast.sitofp = sitofp i64 %fld.load to double
  %var.load4 = load ptr, ptr %"var.ts'", align 8
  %fld.gep5 = getelementptr inbounds <{ i64, i64 }>, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %cast.sitofp7 = sitofp i64 %fld.load6 to double
  %fmultmp = fmul double %cast.sitofp7, 1.000000e-09
  %faddtmp = fadd double %cast.sitofp, %fmultmp
  ret double %faddtmp
}

define i64 @"time::mono_ns"() #1 {
entry:
  %"var.ts'" = alloca ptr, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i64, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  store ptr %rec.alloc, ptr %"var.ts'", align 8
  %call.res = call i32 @"time::clock_monotonic"()
  %var.load = load ptr, ptr %"var.ts'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res2 = call i32 @clock_gettime(i32 %call.res, ptr %addr.ffi.clean)
  %var.load3 = load ptr, ptr %"var.ts'", align 8
  %fld.gep = getelementptr inbounds <{ i64, i64 }>, ptr %var.load3, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %multmp = mul i64 %fld.load, 1000000000
  %var.load4 = load ptr, ptr %"var.ts'", align 8
  %fld.gep5 = getelementptr inbounds <{ i64, i64 }>, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %addtmp = add i64 %multmp, %fld.load6
  ret i64 %addtmp
}

define i64 @"time::mono_ms"() #1 {
entry:
  %"var.ts'" = alloca ptr, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i64, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  store ptr %rec.alloc, ptr %"var.ts'", align 8
  %call.res = call i32 @"time::clock_monotonic"()
  %var.load = load ptr, ptr %"var.ts'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res2 = call i32 @clock_gettime(i32 %call.res, ptr %addr.ffi.clean)
  %var.load3 = load ptr, ptr %"var.ts'", align 8
  %fld.gep = getelementptr inbounds <{ i64, i64 }>, ptr %var.load3, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %multmp = mul i64 %fld.load, 1000
  %var.load4 = load ptr, ptr %"var.ts'", align 8
  %fld.gep5 = getelementptr inbounds <{ i64, i64 }>, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

div.not_zero:                                     ; preds = %div.zero_abort, %entry
  %div.is.min = icmp eq i64 %fld.load6, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %entry
  %0 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %divtmp = sdiv i64 %fld.load6, 1000000
  %addtmp = add i64 %multmp, %divtmp
  ret i64 %addtmp

div.ovf_abort:                                    ; preds = %div.not_zero
  %1 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok
}

define double @"time::mono_f64"() #1 {
entry:
  %"var.ts'" = alloca ptr, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i64, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  store ptr %rec.alloc, ptr %"var.ts'", align 8
  %call.res = call i32 @"time::clock_monotonic"()
  %var.load = load ptr, ptr %"var.ts'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res2 = call i32 @clock_gettime(i32 %call.res, ptr %addr.ffi.clean)
  %var.load3 = load ptr, ptr %"var.ts'", align 8
  %fld.gep = getelementptr inbounds <{ i64, i64 }>, ptr %var.load3, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %cast.sitofp = sitofp i64 %fld.load to double
  %var.load4 = load ptr, ptr %"var.ts'", align 8
  %fld.gep5 = getelementptr inbounds <{ i64, i64 }>, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %cast.sitofp7 = sitofp i64 %fld.load6 to double
  %fmultmp = fmul double %cast.sitofp7, 1.000000e-09
  %faddtmp = fadd double %cast.sitofp, %fmultmp
  ret double %faddtmp
}

define i64 @"time::elapsed_ms"(i64 %0) #1 {
entry:
  %var.start_ns = alloca i64, align 8
  store i64 %0, ptr %var.start_ns, align 8
  %call.res = call i64 @"time::mono_ns"()
  %var.load = load i64, ptr %var.start_ns, align 8
  %subtmp = sub i64 %call.res, %var.load
  br i1 false, label %div.zero_abort, label %div.not_zero

div.not_zero:                                     ; preds = %div.zero_abort, %entry
  %div.is.min = icmp eq i64 %subtmp, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %divtmp = sdiv i64 %subtmp, 1000000
  ret i64 %divtmp

div.ovf_abort:                                    ; preds = %div.not_zero
  %2 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok
}

define double @"time::elapsed_f64"(i64 %0) #1 {
entry:
  %var.start_ns = alloca i64, align 8
  store i64 %0, ptr %var.start_ns, align 8
  %call.res = call i64 @"time::mono_ns"()
  %var.load = load i64, ptr %var.start_ns, align 8
  %subtmp = sub i64 %call.res, %var.load
  %cast.sitofp = sitofp i64 %subtmp to double
  %fmultmp = fmul double %cast.sitofp, 1.000000e-09
  ret double %fmultmp
}

define void @"time::sleep_ns"(i64 %0) #1 {
entry:
  %"var.rem'" = alloca ptr, align 8
  %"var.req'" = alloca ptr, align 8
  %var.ns = alloca i64, align 8
  store i64 %0, ptr %var.ns, align 8
  %var.load = load i64, ptr %var.ns, align 8
  %cmptmp = icmp sgt i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.ns, align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

choice.exit:                                      ; preds = %div.ok7, %entry
  ret void

div.not_zero:                                     ; preds = %div.zero_abort, %choice.then
  %div.is.min = icmp eq i64 %var.load1, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.then
  %1 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %divtmp = sdiv i64 %var.load1, 1000000000
  %var.load2 = load i64, ptr %var.ns, align 8
  br i1 false, label %div.zero_abort4, label %div.not_zero3

div.ovf_abort:                                    ; preds = %div.not_zero
  %2 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

div.not_zero3:                                    ; preds = %div.zero_abort4, %div.ok
  %div.is.min5 = icmp eq i64 %var.load2, -9223372036854775808
  %div.is.ovf6 = and i1 %div.is.min5, false
  br i1 %div.is.ovf6, label %div.ovf_abort8, label %div.ok7

div.zero_abort4:                                  ; preds = %div.ok
  %3 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero3

div.ok7:                                          ; preds = %div.ovf_abort8, %div.not_zero3
  %modtmp = srem i64 %var.load2, 1000000000
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i64, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i64 %divtmp, ptr %rec.fld, align 8
  %rec.fld9 = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 %modtmp, ptr %rec.fld9, align 8
  store ptr %rec.alloc, ptr %"var.req'", align 8
  %arena.cur10 = call ptr @dva_arena_current()
  %rec.alloc11 = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 ptrtoint (ptr getelementptr (<{ i64, i64 }>, ptr null, i32 1) to i64))
  %rec.fld12 = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc11, i32 0, i32 0
  store i64 0, ptr %rec.fld12, align 8
  %rec.fld13 = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc11, i32 0, i32 1
  store i64 0, ptr %rec.fld13, align 8
  store ptr %rec.alloc11, ptr %"var.rem'", align 8
  %var.load14 = load ptr, ptr %"var.req'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load14 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load15 = load ptr, ptr %"var.rem'", align 8
  %addr.ffi.int16 = ptrtoint ptr %var.load15 to i64
  %addr.ffi.masked17 = and i64 %addr.ffi.int16, 281474976710655
  %addr.ffi.clean18 = inttoptr i64 %addr.ffi.masked17 to ptr
  %call.res = call i32 @nanosleep(ptr %addr.ffi.clean, ptr %addr.ffi.clean18)
  br label %choice.exit

div.ovf_abort8:                                   ; preds = %div.not_zero3
  %4 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok7
}

define void @"time::sleep_ms"(i64 %0) #1 {
entry:
  %var.ms = alloca i64, align 8
  store i64 %0, ptr %var.ms, align 8
  %var.load = load i64, ptr %var.ms, align 8
  %multmp = mul i64 %var.load, 1000000
  call void @"time::sleep_ns"(i64 %multmp)
  ret void
}

define void @"time::sleep"(double %0) #1 {
entry:
  %var.sec = alloca double, align 8
  store double %0, ptr %var.sec, align 8
  %var.load = load double, ptr %var.sec, align 8
  %fcmptmp = fcmp ogt double %var.load, 0.000000e+00
  br i1 %fcmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load1 = load double, ptr %var.sec, align 8
  %fmultmp = fmul double %var.load1, 1.000000e+09
  %cast.fptosi = fptosi double %fmultmp to i64
  call void @"time::sleep_ns"(i64 %cast.fptosi)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %entry
  ret void
}

define i1 @"time::is_leap_year"(i64 %0) #1 {
entry:
  %var.year = alloca i64, align 8
  store i64 %0, ptr %var.year, align 8
  %var.load = load i64, ptr %var.year, align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

div.not_zero:                                     ; preds = %div.zero_abort, %entry
  %div.is.min = icmp eq i64 %var.load, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %modtmp = srem i64 %var.load, 4
  %cmptmp = icmp eq i64 %modtmp, 0
  br i1 %cmptmp, label %and.79.then, label %and.79.else

div.ovf_abort:                                    ; preds = %div.not_zero
  %2 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

and.79.then:                                      ; preds = %div.ok
  %var.load1 = load i64, ptr %var.year, align 8
  br i1 false, label %div.zero_abort3, label %div.not_zero2

and.79.else:                                      ; preds = %div.ok
  br label %and.79.exit

and.79.exit:                                      ; preds = %and.79.else, %or.80.exit
  %and.79.phi = phi i1 [ %or.80.phi, %or.80.exit ], [ %cmptmp, %and.79.else ]
  ret i1 %and.79.phi

div.not_zero2:                                    ; preds = %div.zero_abort3, %and.79.then
  %div.is.min4 = icmp eq i64 %var.load1, -9223372036854775808
  %div.is.ovf5 = and i1 %div.is.min4, false
  br i1 %div.is.ovf5, label %div.ovf_abort7, label %div.ok6

div.zero_abort3:                                  ; preds = %and.79.then
  %3 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero2

div.ok6:                                          ; preds = %div.ovf_abort7, %div.not_zero2
  %modtmp8 = srem i64 %var.load1, 100
  %cmptmp9 = icmp ne i64 %modtmp8, 0
  br i1 %cmptmp9, label %or.80.then, label %or.80.else

div.ovf_abort7:                                   ; preds = %div.not_zero2
  %4 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok6

or.80.then:                                       ; preds = %div.ok6
  br label %or.80.exit

or.80.else:                                       ; preds = %div.ok6
  %var.load10 = load i64, ptr %var.year, align 8
  br i1 false, label %div.zero_abort12, label %div.not_zero11

or.80.exit:                                       ; preds = %div.ok15, %or.80.then
  %or.80.phi = phi i1 [ %cmptmp9, %or.80.then ], [ %cmptmp18, %div.ok15 ]
  br label %and.79.exit

div.not_zero11:                                   ; preds = %div.zero_abort12, %or.80.else
  %div.is.min13 = icmp eq i64 %var.load10, -9223372036854775808
  %div.is.ovf14 = and i1 %div.is.min13, false
  br i1 %div.is.ovf14, label %div.ovf_abort16, label %div.ok15

div.zero_abort12:                                 ; preds = %or.80.else
  %5 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero11

div.ok15:                                         ; preds = %div.ovf_abort16, %div.not_zero11
  %modtmp17 = srem i64 %var.load10, 400
  %cmptmp18 = icmp eq i64 %modtmp17, 0
  br label %or.80.exit

div.ovf_abort16:                                  ; preds = %div.not_zero11
  %6 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok15
}

define i64 @"time::days_in_month"(i64 %0, i64 %1) #1 {
entry:
  %var.month = alloca i64, align 8
  %var.year = alloca i64, align 8
  store i64 %0, ptr %var.year, align 8
  store i64 %1, ptr %var.month, align 8
  %var.load = load i64, ptr %var.month, align 8
  %val.match = icmp eq i64 %var.load, 2
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next4, %choice.case3, %choice.exit2
  %choice.res11 = phi i64 [ %choice.res, %choice.exit2 ], [ 30, %choice.case3 ], [ 31, %choice.next4 ]
  ret i64 %choice.res11

choice.case:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.year, align 8
  %call.res = call i1 @"time::is_leap_year"(i64 %var.load1)
  br i1 %call.res, label %choice.then, label %choice.else

choice.next:                                      ; preds = %entry
  %val.match5 = icmp eq i64 %var.load, 4
  %val.match6 = icmp eq i64 %var.load, 6
  %case.or = or i1 %val.match5, %val.match6
  %val.match7 = icmp eq i64 %var.load, 9
  %case.or8 = or i1 %case.or, %val.match7
  %val.match9 = icmp eq i64 %var.load, 11
  %case.or10 = or i1 %case.or8, %val.match9
  br i1 %case.or10, label %choice.case3, label %choice.next4

choice.then:                                      ; preds = %choice.case
  br label %choice.exit2

choice.else:                                      ; preds = %choice.case
  br label %choice.exit2

choice.exit2:                                     ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ 29, %choice.then ], [ 28, %choice.else ]
  br label %choice.exit

choice.case3:                                     ; preds = %choice.next
  br label %choice.exit

choice.next4:                                     ; preds = %choice.next
  br label %choice.exit
}

define ptr @"time::utc_from_epoch"(i64 %0, i64 %1) #1 {
entry:
  %var.civ = alloca ptr, align 8
  %var.ss = alloca i64, align 8
  %var.mm = alloca i64, align 8
  %var.hh = alloca i64, align 8
  %var.rem = alloca i64, align 8
  %var.days = alloca i64, align 8
  %var.nsec = alloca i64, align 8
  %var.sec = alloca i64, align 8
  store i64 %0, ptr %var.sec, align 8
  store i64 %1, ptr %var.nsec, align 8
  %var.load = load i64, ptr %var.sec, align 8
  %call.res = call i64 @"time::#floor_div"(i64 %var.load, i64 86400)
  store i64 %call.res, ptr %var.days, align 8
  %var.load1 = load i64, ptr %var.sec, align 8
  %call.res2 = call i64 @"time::#floor_mod"(i64 %var.load1, i64 86400)
  store i64 %call.res2, ptr %var.rem, align 8
  %var.load3 = load i64, ptr %var.rem, align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

div.not_zero:                                     ; preds = %div.zero_abort, %entry
  %div.is.min = icmp eq i64 %var.load3, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %entry
  %2 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %divtmp = sdiv i64 %var.load3, 3600
  store i64 %divtmp, ptr %var.hh, align 8
  %var.load4 = load i64, ptr %var.rem, align 8
  br i1 false, label %div.zero_abort6, label %div.not_zero5

div.ovf_abort:                                    ; preds = %div.not_zero
  %3 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

div.not_zero5:                                    ; preds = %div.zero_abort6, %div.ok
  %div.is.min7 = icmp eq i64 %var.load4, -9223372036854775808
  %div.is.ovf8 = and i1 %div.is.min7, false
  br i1 %div.is.ovf8, label %div.ovf_abort10, label %div.ok9

div.zero_abort6:                                  ; preds = %div.ok
  %4 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero5

div.ok9:                                          ; preds = %div.ovf_abort10, %div.not_zero5
  %modtmp = srem i64 %var.load4, 3600
  br i1 false, label %div.zero_abort12, label %div.not_zero11

div.ovf_abort10:                                  ; preds = %div.not_zero5
  %5 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok9

div.not_zero11:                                   ; preds = %div.zero_abort12, %div.ok9
  %div.is.min13 = icmp eq i64 %modtmp, -9223372036854775808
  %div.is.ovf14 = and i1 %div.is.min13, false
  br i1 %div.is.ovf14, label %div.ovf_abort16, label %div.ok15

div.zero_abort12:                                 ; preds = %div.ok9
  %6 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero11

div.ok15:                                         ; preds = %div.ovf_abort16, %div.not_zero11
  %divtmp17 = sdiv i64 %modtmp, 60
  store i64 %divtmp17, ptr %var.mm, align 8
  %var.load18 = load i64, ptr %var.rem, align 8
  br i1 false, label %div.zero_abort20, label %div.not_zero19

div.ovf_abort16:                                  ; preds = %div.not_zero11
  %7 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok15

div.not_zero19:                                   ; preds = %div.zero_abort20, %div.ok15
  %div.is.min21 = icmp eq i64 %var.load18, -9223372036854775808
  %div.is.ovf22 = and i1 %div.is.min21, false
  br i1 %div.is.ovf22, label %div.ovf_abort24, label %div.ok23

div.zero_abort20:                                 ; preds = %div.ok15
  %8 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero19

div.ok23:                                         ; preds = %div.ovf_abort24, %div.not_zero19
  %modtmp25 = srem i64 %var.load18, 60
  store i64 %modtmp25, ptr %var.ss, align 8
  %var.load26 = load i64, ptr %var.days, align 8
  %call.res27 = call ptr @"time::#civil_from_days"(i64 %var.load26)
  store ptr %call.res27, ptr %var.civ, align 8
  %var.load28 = load ptr, ptr %var.civ, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %var.load28, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load29 = load ptr, ptr %var.civ, align 8
  %fld.gep30 = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %var.load29, i32 0, i32 1
  %fld.load31 = load i64, ptr %fld.gep30, align 8
  %var.load32 = load ptr, ptr %var.civ, align 8
  %fld.gep33 = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %var.load32, i32 0, i32 2
  %fld.load34 = load i64, ptr %fld.gep33, align 8
  %var.load35 = load i64, ptr %var.hh, align 8
  %var.load36 = load i64, ptr %var.mm, align 8
  %var.load37 = load i64, ptr %var.ss, align 8
  %var.load38 = load i64, ptr %var.nsec, align 8
  %var.load39 = load ptr, ptr %var.civ, align 8
  %fld.gep40 = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %var.load39, i32 0, i32 3
  %fld.load41 = load i64, ptr %fld.gep40, align 8
  %var.load42 = load ptr, ptr %var.civ, align 8
  %fld.gep43 = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %var.load42, i32 0, i32 4
  %fld.load44 = load i64, ptr %fld.gep43, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %fld.load, ptr %rec.fld, align 8
  %rec.fld45 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %fld.load31, ptr %rec.fld45, align 8
  %rec.fld46 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %fld.load34, ptr %rec.fld46, align 8
  %rec.fld47 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load35, ptr %rec.fld47, align 8
  %rec.fld48 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %var.load36, ptr %rec.fld48, align 8
  %rec.fld49 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %var.load37, ptr %rec.fld49, align 8
  %rec.fld50 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 6
  store i64 %var.load38, ptr %rec.fld50, align 8
  %rec.fld51 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 7
  store i64 %fld.load41, ptr %rec.fld51, align 8
  %rec.fld52 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 8
  store i64 %fld.load44, ptr %rec.fld52, align 8
  %rec.fld53 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 9
  store i64 0, ptr %rec.fld53, align 8
  ret ptr %rec.alloc

div.ovf_abort24:                                  ; preds = %div.not_zero19
  %9 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok23
}

define i64 @"time::epoch"(ptr %0) #1 {
entry:
  %var.days = alloca i64, align 8
  %var.dt = alloca ptr, align 8
  store ptr %0, ptr %var.dt, align 8
  %var.load = load ptr, ptr %var.dt, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.dt, align 8
  %fld.gep2 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load1, i32 0, i32 1
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %var.load4 = load ptr, ptr %var.dt, align 8
  %fld.gep5 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load4, i32 0, i32 2
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %call.res = call i64 @"time::#days_from_civil"(i64 %fld.load, i64 %fld.load3, i64 %fld.load6)
  store i64 %call.res, ptr %var.days, align 8
  %var.load7 = load i64, ptr %var.days, align 8
  %multmp = mul i64 %var.load7, 86400
  %var.load8 = load ptr, ptr %var.dt, align 8
  %fld.gep9 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load8, i32 0, i32 3
  %fld.load10 = load i64, ptr %fld.gep9, align 8
  %multmp11 = mul i64 %fld.load10, 3600
  %addtmp = add i64 %multmp, %multmp11
  %var.load12 = load ptr, ptr %var.dt, align 8
  %fld.gep13 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load12, i32 0, i32 4
  %fld.load14 = load i64, ptr %fld.gep13, align 8
  %multmp15 = mul i64 %fld.load14, 60
  %addtmp16 = add i64 %addtmp, %multmp15
  %var.load17 = load ptr, ptr %var.dt, align 8
  %fld.gep18 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load17, i32 0, i32 5
  %fld.load19 = load i64, ptr %fld.gep18, align 8
  %addtmp20 = add i64 %addtmp16, %fld.load19
  %var.load21 = load ptr, ptr %var.dt, align 8
  %fld.gep22 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load21, i32 0, i32 9
  %fld.load23 = load i64, ptr %fld.gep22, align 8
  %subtmp = sub i64 %addtmp20, %fld.load23
  ret i64 %subtmp
}

define ptr @"time::datetime_utc"(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #1 {
entry:
  %var.civ = alloca ptr, align 8
  %var.z = alloca i64, align 8
  %var.sec = alloca i64, align 8
  %var.min = alloca i64, align 8
  %var.hour = alloca i64, align 8
  %var.day = alloca i64, align 8
  %var.month = alloca i64, align 8
  %var.year = alloca i64, align 8
  store i64 %0, ptr %var.year, align 8
  store i64 %1, ptr %var.month, align 8
  store i64 %2, ptr %var.day, align 8
  store i64 %3, ptr %var.hour, align 8
  store i64 %4, ptr %var.min, align 8
  store i64 %5, ptr %var.sec, align 8
  %var.load = load i64, ptr %var.year, align 8
  %var.load1 = load i64, ptr %var.month, align 8
  %var.load2 = load i64, ptr %var.day, align 8
  %call.res = call i64 @"time::#days_from_civil"(i64 %var.load, i64 %var.load1, i64 %var.load2)
  store i64 %call.res, ptr %var.z, align 8
  %var.load3 = load i64, ptr %var.z, align 8
  %call.res4 = call ptr @"time::#civil_from_days"(i64 %var.load3)
  store ptr %call.res4, ptr %var.civ, align 8
  %var.load5 = load i64, ptr %var.year, align 8
  %var.load6 = load i64, ptr %var.month, align 8
  %var.load7 = load i64, ptr %var.day, align 8
  %var.load8 = load i64, ptr %var.hour, align 8
  %var.load9 = load i64, ptr %var.min, align 8
  %var.load10 = load i64, ptr %var.sec, align 8
  %var.load11 = load ptr, ptr %var.civ, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %var.load11, i32 0, i32 3
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load12 = load ptr, ptr %var.civ, align 8
  %fld.gep13 = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %var.load12, i32 0, i32 4
  %fld.load14 = load i64, ptr %fld.gep13, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load5, ptr %rec.fld, align 8
  %rec.fld15 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load6, ptr %rec.fld15, align 8
  %rec.fld16 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load7, ptr %rec.fld16, align 8
  %rec.fld17 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load8, ptr %rec.fld17, align 8
  %rec.fld18 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %var.load9, ptr %rec.fld18, align 8
  %rec.fld19 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %var.load10, ptr %rec.fld19, align 8
  %rec.fld20 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 6
  store i64 0, ptr %rec.fld20, align 8
  %rec.fld21 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 7
  store i64 %fld.load, ptr %rec.fld21, align 8
  %rec.fld22 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 8
  store i64 %fld.load14, ptr %rec.fld22, align 8
  %rec.fld23 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 9
  store i64 0, ptr %rec.fld23, align 8
  ret ptr %rec.alloc
}

define ptr @"time::local_from_sec"(i64 %0, i64 %1) #1 {
entry:
  %var.res = alloca ptr, align 8
  %"var.tm'" = alloca ptr, align 8
  %"var.t_val'" = alloca i64, align 8
  %var.nsec = alloca i64, align 8
  %var.sec = alloca i64, align 8
  store i64 %0, ptr %var.sec, align 8
  store i64 %1, ptr %var.nsec, align 8
  %var.load = load i64, ptr %var.sec, align 8
  store i64 %var.load, ptr %"var.t_val'", align 8
  %var.load1 = load ptr, ptr @"var.sys::addr_null", align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 0
  store i32 0, ptr %rec.fld, align 4
  %rec.fld2 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 1
  store i32 0, ptr %rec.fld2, align 4
  %rec.fld3 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 2
  store i32 0, ptr %rec.fld3, align 4
  %rec.fld4 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 3
  store i32 0, ptr %rec.fld4, align 4
  %rec.fld5 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 4
  store i32 0, ptr %rec.fld5, align 4
  %rec.fld6 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 5
  store i32 0, ptr %rec.fld6, align 4
  %rec.fld7 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 6
  store i32 0, ptr %rec.fld7, align 4
  %rec.fld8 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 7
  store i32 0, ptr %rec.fld8, align 4
  %rec.fld9 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 8
  store i32 0, ptr %rec.fld9, align 4
  %rec.fld10 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 9
  store i32 0, ptr %rec.fld10, align 4
  %rec.fld11 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 10
  store i64 0, ptr %rec.fld11, align 8
  %rec.fld12 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 11
  store ptr %var.load1, ptr %rec.fld12, align 8
  store ptr %rec.alloc, ptr %"var.tm'", align 8
  %var.load13 = load i64, ptr %"var.t_val'", align 8
  %addr.ffi.int = ptrtoint ptr %"var.t_val'" to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load14 = load ptr, ptr %"var.tm'", align 8
  %addr.ffi.int15 = ptrtoint ptr %var.load14 to i64
  %addr.ffi.masked16 = and i64 %addr.ffi.int15, 281474976710655
  %addr.ffi.clean17 = inttoptr i64 %addr.ffi.masked16 to ptr
  %call.res = call ptr @localtime_r(ptr %addr.ffi.clean, ptr %addr.ffi.clean17)
  store ptr %call.res, ptr %var.res, align 8
  %var.load18 = load ptr, ptr %var.res, align 8
  %var.load19 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load18 to i64
  %ptr.int.r = ptrtoint ptr %var.load19 to i64
  %cmptmp = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load20 = load i64, ptr %var.sec, align 8
  %var.load21 = load i64, ptr %var.nsec, align 8
  %call.res22 = call ptr @"time::utc_from_epoch"(i64 %var.load20, i64 %var.load21)
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load23 = load ptr, ptr %"var.tm'", align 8
  %var.load24 = load i64, ptr %var.nsec, align 8
  %call.res25 = call ptr @"time::#tm_to_datetime"(ptr %var.load23, i64 %var.load24)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %call.res22, %choice.then ], [ %call.res25, %choice.else ]
  ret ptr %choice.res
}

define ptr @"time::local_now_dt"() #1 {
entry:
  %"var.ts'" = alloca ptr, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i64, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  store ptr %rec.alloc, ptr %"var.ts'", align 8
  %call.res = call i32 @"time::clock_realtime"()
  %var.load = load ptr, ptr %"var.ts'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res2 = call i32 @clock_gettime(i32 %call.res, ptr %addr.ffi.clean)
  %var.load3 = load ptr, ptr %"var.ts'", align 8
  %fld.gep = getelementptr inbounds <{ i64, i64 }>, ptr %var.load3, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load4 = load ptr, ptr %"var.ts'", align 8
  %fld.gep5 = getelementptr inbounds <{ i64, i64 }>, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %call.res7 = call ptr @"time::local_from_sec"(i64 %fld.load, i64 %fld.load6)
  ret ptr %call.res7
}

define ptr @"time::utc_now_dt"() #1 {
entry:
  %"var.ts'" = alloca ptr, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i64, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  store ptr %rec.alloc, ptr %"var.ts'", align 8
  %call.res = call i32 @"time::clock_realtime"()
  %var.load = load ptr, ptr %"var.ts'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res2 = call i32 @clock_gettime(i32 %call.res, ptr %addr.ffi.clean)
  %var.load3 = load ptr, ptr %"var.ts'", align 8
  %fld.gep = getelementptr inbounds <{ i64, i64 }>, ptr %var.load3, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load4 = load ptr, ptr %"var.ts'", align 8
  %fld.gep5 = getelementptr inbounds <{ i64, i64 }>, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %call.res7 = call ptr @"time::utc_from_epoch"(i64 %fld.load, i64 %fld.load6)
  ret ptr %call.res7
}

define ptr @"time::format_dt_pattern"(ptr %0, ptr %1) #1 {
entry:
  %var.h12 = alloca i64, align 8
  %var.spec = alloca i64, align 8
  %var.ch = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.81 = alloca i64, align 8
  %loop.idx.81 = alloca i64, align 8
  %"var.i'" = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.len = alloca i64, align 8
  %var.dt = alloca ptr, align 8
  %var.fmt = alloca ptr, align 8
  store ptr %0, ptr %var.fmt, align 8
  store ptr %1, ptr %var.dt, align 8
  %var.load = load ptr, ptr %var.fmt, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %addtmp = add i64 %var.load3, 32
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
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
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
  store i64 0, ptr %loop.idx.81, align 8
  br label %loop.header.81

str_overflow_abort:                               ; preds = %str_ok
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len5

loop.header.81:                                   ; preds = %loop.latch.81, %b.buf.len5
  %counter.load = load i64, ptr %loop.idx.81, align 8
  br label %loop.body.81

loop.body.81:                                     ; preds = %loop.header.81
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.81, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load7 = load i64, ptr %"var.i'", align 8
  %var.load8 = load i64, ptr %var.len, align 8
  %cmptmp = icmp sge i64 %var.load7, %var.load8
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.81:                                 ; No predecessors!
  br label %loop.exit.81

loop.latch.81:                                    ; preds = %choice.exit28
  %step.val = load i64, ptr %loop.step.81, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.81, align 8
  br label %loop.header.81

loop.exit.81:                                     ; preds = %choice.then, %loop.exit.nat.81
  %var.load1072 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1072, i32 0, i32 0
  %b.freeze.len1073 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1072, i32 0, i32 1
  %b.freeze.data1074 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.then:                                      ; preds = %loop.body.81
  br label %loop.exit.81

choice.exit:                                      ; preds = %loop.body.81
  %var.load9 = load ptr, ptr %var.fmt, align 8
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
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok15

idx_big_check:                                    ; preds = %str_ok15
  %idx.big = icmp sge i64 %var.load20, %s.read.len11
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data19, i64 %var.load20
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.ch, align 8
  %var.load21 = load i64, ptr %var.ch, align 8
  %cmptmp22 = icmp eq i64 %var.load21, 37
  br i1 %cmptmp22, label %and.82.then, label %and.82.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok15
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.82.then:                                      ; preds = %idx_ok
  %var.load23 = load i64, ptr %"var.i'", align 8
  %addtmp24 = add i64 %var.load23, 1
  %var.load25 = load i64, ptr %var.len, align 8
  %cmptmp26 = icmp slt i64 %addtmp24, %var.load25
  br label %and.82.exit

and.82.else:                                      ; preds = %idx_ok
  br label %and.82.exit

and.82.exit:                                      ; preds = %and.82.else, %and.82.then
  %and.82.phi = phi i1 [ %cmptmp26, %and.82.then ], [ %cmptmp22, %and.82.else ]
  br i1 %and.82.phi, label %choice.then27, label %choice.else

choice.then27:                                    ; preds = %and.82.exit
  %var.load29 = load ptr, ptr %var.fmt, align 8
  %s.read.len30 = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 0
  %s.read.len31 = load i64, ptr %s.read.len30, align 8
  %s.read.len32 = and i64 %s.read.len31, 281474976710655
  %str.tag33 = lshr i64 %s.read.len31, 48
  %str.immortal34 = icmp eq i64 %str.tag33, 0
  br i1 %str.immortal34, label %str_ok36, label %str_gen_check35

choice.else:                                      ; preds = %and.82.exit
  %b.load1031 = load ptr, ptr %var.b, align 8
  %var.load1032 = load i64, ptr %var.ch, align 8
  %b.b.ge01033 = icmp sge i64 %var.load1032, 0
  %b.b.le2551034 = icmp sle i64 %var.load1032, 255
  %b.byte.range1035 = and i1 %b.b.ge01033, %b.b.le2551034
  br i1 %b.byte.range1035, label %b.byte_ok1036, label %b.byte_err1037

choice.exit28:                                    ; preds = %b.push_done1048, %choice.exit53
  br label %loop.latch.81

str_gen_check35:                                  ; preds = %choice.then27
  %arena.cur38 = call ptr @dva_arena_current()
  %tag.valid39 = call i1 @dva_arena_validate_tag(ptr %arena.cur38, i64 %str.tag33)
  br i1 %tag.valid39, label %str_ok36, label %str_stale37

str_ok36:                                         ; preds = %str_stale37, %str_gen_check35, %choice.then27
  %s.read.data40 = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 1
  %s.read.data41 = load ptr, ptr %s.read.data40, align 8
  %var.load42 = load i64, ptr %"var.i'", align 8
  %addtmp43 = add i64 %var.load42, 1
  %idx.neg44 = icmp slt i64 %addtmp43, 0
  br i1 %idx.neg44, label %idx_oob47, label %idx_big_check45

str_stale37:                                      ; preds = %str_gen_check35
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok36

idx_big_check45:                                  ; preds = %str_ok36
  %idx.big48 = icmp sge i64 %addtmp43, %s.read.len32
  br i1 %idx.big48, label %idx_oob47, label %idx_ok46

idx_ok46:                                         ; preds = %idx_oob47, %idx_big_check45
  %s.byte.gep49 = getelementptr i8, ptr %s.read.data41, i64 %addtmp43
  %s.byte50 = load i8, ptr %s.byte.gep49, align 1
  %s.byte.val51 = zext i8 %s.byte50 to i64
  store i64 %s.byte.val51, ptr %var.spec, align 8
  %var.load52 = load i64, ptr %var.spec, align 8
  %val.match = icmp eq i64 %var.load52, 89
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob47:                                        ; preds = %idx_big_check45, %str_ok36
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok46

choice.exit53:                                    ; preds = %b.push_done1007, %br.done.87, %br.done.86, %br.done.85, %b.grow_done778, %choice.exit696, %choice.case680, %b.push_done658, %b.push_done605, %choice.case575, %b.grow_done548, %b.grow_done491, %b.grow_done433, %b.grow_done376, %br.done.84, %choice.case287, %choice.case282, %b.grow_done255, %b.grow_done198, %choice.case160, %choice.case153, %choice.exit151, %choice.case126, %choice.exit86, %choice.case70, %choice.case63, %div.ok, %choice.case
  %var.load1029 = load i64, ptr %"var.i'", align 8
  %addtmp1030 = add i64 %var.load1029, 2
  store i64 %addtmp1030, ptr %"var.i'", align 8
  br label %choice.exit28

choice.case:                                      ; preds = %idx_ok46
  %var.load54 = load ptr, ptr %var.b, align 8
  %var.load55 = load ptr, ptr %var.dt, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load55, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  call void @"time::#pad4"(ptr %var.load54, i64 %fld.load)
  br label %choice.exit53

choice.next:                                      ; preds = %idx_ok46
  %val.match58 = icmp eq i64 %var.load52, 121
  br i1 %val.match58, label %choice.case56, label %choice.next57

choice.case56:                                    ; preds = %choice.next
  %var.load59 = load ptr, ptr %var.b, align 8
  %var.load60 = load ptr, ptr %var.dt, align 8
  %fld.gep61 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load60, i32 0, i32 0
  %fld.load62 = load i64, ptr %fld.gep61, align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

choice.next57:                                    ; preds = %choice.next
  %val.match65 = icmp eq i64 %var.load52, 109
  br i1 %val.match65, label %choice.case63, label %choice.next64

div.not_zero:                                     ; preds = %div.zero_abort, %choice.case56
  %div.is.min = icmp eq i64 %fld.load62, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.case56
  %8 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %modtmp = srem i64 %fld.load62, 100
  call void @"time::#pad2"(ptr %var.load59, i64 %modtmp)
  br label %choice.exit53

div.ovf_abort:                                    ; preds = %div.not_zero
  %9 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

choice.case63:                                    ; preds = %choice.next57
  %var.load66 = load ptr, ptr %var.b, align 8
  %var.load67 = load ptr, ptr %var.dt, align 8
  %fld.gep68 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load67, i32 0, i32 1
  %fld.load69 = load i64, ptr %fld.gep68, align 8
  call void @"time::#pad2"(ptr %var.load66, i64 %fld.load69)
  br label %choice.exit53

choice.next64:                                    ; preds = %choice.next57
  %val.match72 = icmp eq i64 %var.load52, 100
  br i1 %val.match72, label %choice.case70, label %choice.next71

choice.case70:                                    ; preds = %choice.next64
  %var.load73 = load ptr, ptr %var.b, align 8
  %var.load74 = load ptr, ptr %var.dt, align 8
  %fld.gep75 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load74, i32 0, i32 2
  %fld.load76 = load i64, ptr %fld.gep75, align 8
  call void @"time::#pad2"(ptr %var.load73, i64 %fld.load76)
  br label %choice.exit53

choice.next71:                                    ; preds = %choice.next64
  %val.match79 = icmp eq i64 %var.load52, 101
  br i1 %val.match79, label %choice.case77, label %choice.next78

choice.case77:                                    ; preds = %choice.next71
  %var.load80 = load ptr, ptr %var.dt, align 8
  %fld.gep81 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load80, i32 0, i32 2
  %fld.load82 = load i64, ptr %fld.gep81, align 8
  %cmptmp83 = icmp slt i64 %fld.load82, 10
  br i1 %cmptmp83, label %choice.then84, label %choice.else85

choice.next78:                                    ; preds = %choice.next71
  %val.match128 = icmp eq i64 %var.load52, 72
  br i1 %val.match128, label %choice.case126, label %choice.next127

choice.then84:                                    ; preds = %choice.case77
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len87 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len87, i64 1)
  %sum88 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf89 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf89, label %str_overflow_abort91, label %b.rn.new.len90

choice.else85:                                    ; preds = %choice.case77
  %var.load122 = load ptr, ptr %var.b, align 8
  %var.load123 = load ptr, ptr %var.dt, align 8
  %fld.gep124 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load123, i32 0, i32 2
  %fld.load125 = load i64, ptr %fld.gep124, align 8
  call void @"time::#pad2"(ptr %var.load122, i64 %fld.load125)
  br label %choice.exit86

choice.exit86:                                    ; preds = %choice.else85, %b.push_done
  br label %choice.exit53

b.rn.new.len90:                                   ; preds = %str_overflow_abort91, %choice.then84
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap92 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap92, %sum88
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort91:                             ; preds = %choice.then84
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len90

b.grow2:                                          ; preds = %b.rn.new.len90
  %b.cap2 = mul i64 %b.cap92, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum88
  %b.new.cap = select i1 %b.cap.need, i64 %sum88, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len293 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data294 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum95 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf96 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf96, label %str_overflow_abort98, label %b.new.buf.len297

b.nogrow2:                                        ; preds = %b.rn.new.len90
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len297
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data100 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data100, i64 %b.rn.cur.len87
  br i1 true, label %br.b1.83, label %br.c2.83

b.new.buf.len297:                                 ; preds = %str_overflow_abort98, %b.grow2
  %arena.cur99 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 %sum95)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data294, i64 %b.cur.len293, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len293
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort98:                             ; preds = %b.grow2
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len297

br.b1.83:                                         ; preds = %b.grow_done
  store i8 32, ptr %b.rn.dst, align 1
  br label %br.done.83

br.c2.83:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.83, label %br.c3.83

br.b2.83:                                         ; preds = %br.c2.83
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -96, ptr %br.dst1, align 1
  br label %br.done.83

br.c3.83:                                         ; preds = %br.c2.83
  br i1 true, label %br.b3.83, label %br.b4.83

br.b3.83:                                         ; preds = %br.c3.83
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -96, ptr %br.dst2.3, align 1
  br label %br.done.83

br.b4.83:                                         ; preds = %br.c3.83
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -96, ptr %br.dst3.4, align 1
  br label %br.done.83

br.done.83:                                       ; preds = %br.b4.83, %br.b3.83, %br.b2.83, %br.b1.83
  %br.nul = getelementptr i8, ptr %b.rn.data100, i64 %sum88
  store i8 0, ptr %br.nul, align 1
  %b.len.gep101 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum88, ptr %b.len.gep101, align 8
  %b.load102 = load ptr, ptr %var.b, align 8
  %var.load103 = load ptr, ptr %var.dt, align 8
  %fld.gep104 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load103, i32 0, i32 2
  %fld.load105 = load i64, ptr %fld.gep104, align 8
  %addtmp106 = add i64 48, %fld.load105
  %b.b.ge0 = icmp sge i64 %addtmp106, 0
  %b.b.le255 = icmp sle i64 %addtmp106, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

b.byte_ok:                                        ; preds = %b.byte_err, %br.done.83
  %b.byte.i8 = trunc i64 %addtmp106 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 0
  %b.len107 = load i64, ptr %b.len, align 8
  %b.cap108 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 2
  %b.cap109 = load i64, ptr %b.cap108, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 1
  %b.data110 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len107, %b.cap109
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %br.done.83
  %12 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2111 = mul i64 %b.cap109, 2
  %b.cap.small112 = icmp slt i64 %b.cap2111, 16
  %b.new.cap113 = select i1 %b.cap.small112, i64 16, i64 %b.cap2111
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap113, i64 1)
  %sum114 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf115 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf115, label %str_overflow_abort117, label %b.new.buf.len116

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len116
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 1
  %b.cur.data119 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 0
  %b.cur.len120 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data119, i64 %b.cur.len120
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len120, 1
  %b.nul = getelementptr i8, ptr %b.cur.data119, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep121 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep121, align 8
  br label %choice.exit86

b.new.buf.len116:                                 ; preds = %str_overflow_abort117, %b.grow
  %arena.cur118 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur118, i64 %sum114)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data110, i64 %b.len107, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len107
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 2
  store i64 %b.new.cap113, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort117:                            ; preds = %b.grow
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len116

choice.case126:                                   ; preds = %choice.next78
  %var.load129 = load ptr, ptr %var.b, align 8
  %var.load130 = load ptr, ptr %var.dt, align 8
  %fld.gep131 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load130, i32 0, i32 3
  %fld.load132 = load i64, ptr %fld.gep131, align 8
  call void @"time::#pad2"(ptr %var.load129, i64 %fld.load132)
  br label %choice.exit53

choice.next127:                                   ; preds = %choice.next78
  %val.match135 = icmp eq i64 %var.load52, 73
  br i1 %val.match135, label %choice.case133, label %choice.next134

choice.case133:                                   ; preds = %choice.next127
  %var.load136 = load ptr, ptr %var.dt, align 8
  %fld.gep137 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load136, i32 0, i32 3
  %fld.load138 = load i64, ptr %fld.gep137, align 8
  br i1 false, label %div.zero_abort140, label %div.not_zero139

choice.next134:                                   ; preds = %choice.next127
  %val.match155 = icmp eq i64 %var.load52, 77
  br i1 %val.match155, label %choice.case153, label %choice.next154

div.not_zero139:                                  ; preds = %div.zero_abort140, %choice.case133
  %div.is.min141 = icmp eq i64 %fld.load138, -9223372036854775808
  %div.is.ovf142 = and i1 %div.is.min141, false
  br i1 %div.is.ovf142, label %div.ovf_abort144, label %div.ok143

div.zero_abort140:                                ; preds = %choice.case133
  %14 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero139

div.ok143:                                        ; preds = %div.ovf_abort144, %div.not_zero139
  %modtmp145 = srem i64 %fld.load138, 12
  store i64 %modtmp145, ptr %var.h12, align 8
  %var.load146 = load ptr, ptr %var.b, align 8
  %var.load147 = load i64, ptr %var.h12, align 8
  %cmptmp148 = icmp eq i64 %var.load147, 0
  br i1 %cmptmp148, label %choice.then149, label %choice.else150

div.ovf_abort144:                                 ; preds = %div.not_zero139
  %15 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok143

choice.then149:                                   ; preds = %div.ok143
  br label %choice.exit151

choice.else150:                                   ; preds = %div.ok143
  %var.load152 = load i64, ptr %var.h12, align 8
  br label %choice.exit151

choice.exit151:                                   ; preds = %choice.else150, %choice.then149
  %choice.res = phi i64 [ 12, %choice.then149 ], [ %var.load152, %choice.else150 ]
  call void @"time::#pad2"(ptr %var.load146, i64 %choice.res)
  br label %choice.exit53

choice.case153:                                   ; preds = %choice.next134
  %var.load156 = load ptr, ptr %var.b, align 8
  %var.load157 = load ptr, ptr %var.dt, align 8
  %fld.gep158 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load157, i32 0, i32 4
  %fld.load159 = load i64, ptr %fld.gep158, align 8
  call void @"time::#pad2"(ptr %var.load156, i64 %fld.load159)
  br label %choice.exit53

choice.next154:                                   ; preds = %choice.next134
  %val.match162 = icmp eq i64 %var.load52, 83
  br i1 %val.match162, label %choice.case160, label %choice.next161

choice.case160:                                   ; preds = %choice.next154
  %var.load163 = load ptr, ptr %var.b, align 8
  %var.load164 = load ptr, ptr %var.dt, align 8
  %fld.gep165 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load164, i32 0, i32 5
  %fld.load166 = load i64, ptr %fld.gep165, align 8
  call void @"time::#pad2"(ptr %var.load163, i64 %fld.load166)
  br label %choice.exit53

choice.next161:                                   ; preds = %choice.next154
  %val.match169 = icmp eq i64 %var.load52, 112
  br i1 %val.match169, label %choice.case167, label %choice.next168

choice.case167:                                   ; preds = %choice.next161
  %b.load170 = load ptr, ptr %var.b, align 8
  %var.load171 = load ptr, ptr %var.dt, align 8
  %fld.gep172 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load171, i32 0, i32 3
  %fld.load173 = load i64, ptr %fld.gep172, align 8
  %cmptmp174 = icmp slt i64 %fld.load173, 12
  br i1 %cmptmp174, label %choice.then175, label %choice.else176

choice.next168:                                   ; preds = %choice.next161
  %val.match223 = icmp eq i64 %var.load52, 80
  br i1 %val.match223, label %choice.case221, label %choice.next222

choice.then175:                                   ; preds = %choice.case167
  br label %choice.exit177

choice.else176:                                   ; preds = %choice.case167
  br label %choice.exit177

choice.exit177:                                   ; preds = %choice.else176, %choice.then175
  %choice.res178 = phi ptr [ @str.37.struct, %choice.then175 ], [ @str.38.struct, %choice.else176 ]
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %choice.res178, i32 0, i32 0
  %app.str.len179 = load i64, ptr %app.str.len, align 8
  %app.str.len180 = and i64 %app.str.len179, 281474976710655
  %str.tag181 = lshr i64 %app.str.len179, 48
  %str.immortal182 = icmp eq i64 %str.tag181, 0
  br i1 %str.immortal182, label %str_ok184, label %str_gen_check183

str_gen_check183:                                 ; preds = %choice.exit177
  %arena.cur186 = call ptr @dva_arena_current()
  %tag.valid187 = call i1 @dva_arena_validate_tag(ptr %arena.cur186, i64 %str.tag181)
  br i1 %tag.valid187, label %str_ok184, label %str_stale185

str_ok184:                                        ; preds = %str_stale185, %str_gen_check183, %choice.exit177
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load170, i32 0, i32 0
  %b.app.cur.len188 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len188, i64 %app.str.len180)
  %sum189 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf190 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf190, label %str_overflow_abort192, label %b.app.new.len191

str_stale185:                                     ; preds = %str_gen_check183
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok184

b.app.new.len191:                                 ; preds = %str_overflow_abort192, %str_ok184
  %b.cap193 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load170, i32 0, i32 2
  %b.cap194 = load i64, ptr %b.cap193, align 8
  %b.need.grow195 = icmp slt i64 %b.cap194, %sum189
  br i1 %b.need.grow195, label %b.grow2196, label %b.nogrow2197

str_overflow_abort192:                            ; preds = %str_ok184
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len191

b.grow2196:                                       ; preds = %b.app.new.len191
  %b.cap2199 = mul i64 %b.cap194, 2
  %b.cap.small200 = icmp slt i64 %b.cap2199, 16
  %b.cap.grow201 = select i1 %b.cap.small200, i64 16, i64 %b.cap2199
  %b.cap.need202 = icmp slt i64 %b.cap.grow201, %sum189
  %b.new.cap203 = select i1 %b.cap.need202, i64 %sum189, i64 %b.cap.grow201
  %b.cur.len2204 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load170, i32 0, i32 0
  %b.cur.len2205 = load i64, ptr %b.cur.len2204, align 8
  %b.cur.data2206 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load170, i32 0, i32 1
  %b.cur.data2207 = load ptr, ptr %b.cur.data2206, align 8
  %b.new.buf.len2208 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap203, i64 1)
  %sum209 = extractvalue { i64, i1 } %b.new.buf.len2208, 0
  %ovf210 = extractvalue { i64, i1 } %b.new.buf.len2208, 1
  br i1 %ovf210, label %str_overflow_abort212, label %b.new.buf.len2211

b.nogrow2197:                                     ; preds = %b.app.new.len191
  br label %b.grow_done198

b.grow_done198:                                   ; preds = %b.nogrow2197, %b.new.buf.len2211
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %choice.res178, i32 0, i32 1
  %app.str.data218 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load170, i32 0, i32 1
  %b.app.data219 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data219, i64 %b.app.cur.len188
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data218, i64 %app.str.len180, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data219, i64 %sum189
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep220 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load170, i32 0, i32 0
  store i64 %sum189, ptr %b.len.gep220, align 8
  br label %choice.exit53

b.new.buf.len2211:                                ; preds = %str_overflow_abort212, %b.grow2196
  %arena.cur213 = call ptr @dva_arena_current()
  %b.new.buf2214 = call ptr @dva_arena_alloc(ptr %arena.cur213, i64 %sum209)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2214, ptr align 1 %b.cur.data2207, i64 %b.cur.len2205, i1 false)
  %b.grow2.nul215 = getelementptr i8, ptr %b.new.buf2214, i64 %b.cur.len2205
  store i8 0, ptr %b.grow2.nul215, align 1
  %b.new.data2.gep216 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load170, i32 0, i32 1
  store ptr %b.new.buf2214, ptr %b.new.data2.gep216, align 8
  %b.new.cap2.gep217 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load170, i32 0, i32 2
  store i64 %b.new.cap203, ptr %b.new.cap2.gep217, align 8
  br label %b.grow_done198

str_overflow_abort212:                            ; preds = %b.grow2196
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2211

choice.case221:                                   ; preds = %choice.next168
  %b.load224 = load ptr, ptr %var.b, align 8
  %var.load225 = load ptr, ptr %var.dt, align 8
  %fld.gep226 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load225, i32 0, i32 3
  %fld.load227 = load i64, ptr %fld.gep226, align 8
  %cmptmp228 = icmp slt i64 %fld.load227, 12
  br i1 %cmptmp228, label %choice.then229, label %choice.else230

choice.next222:                                   ; preds = %choice.next168
  %val.match284 = icmp eq i64 %var.load52, 70
  br i1 %val.match284, label %choice.case282, label %choice.next283

choice.then229:                                   ; preds = %choice.case221
  br label %choice.exit231

choice.else230:                                   ; preds = %choice.case221
  br label %choice.exit231

choice.exit231:                                   ; preds = %choice.else230, %choice.then229
  %choice.res232 = phi ptr [ @str.39.struct, %choice.then229 ], [ @str.40.struct, %choice.else230 ]
  %app.str.len233 = getelementptr inbounds { i64, ptr }, ptr %choice.res232, i32 0, i32 0
  %app.str.len234 = load i64, ptr %app.str.len233, align 8
  %app.str.len235 = and i64 %app.str.len234, 281474976710655
  %str.tag236 = lshr i64 %app.str.len234, 48
  %str.immortal237 = icmp eq i64 %str.tag236, 0
  br i1 %str.immortal237, label %str_ok239, label %str_gen_check238

str_gen_check238:                                 ; preds = %choice.exit231
  %arena.cur241 = call ptr @dva_arena_current()
  %tag.valid242 = call i1 @dva_arena_validate_tag(ptr %arena.cur241, i64 %str.tag236)
  br i1 %tag.valid242, label %str_ok239, label %str_stale240

str_ok239:                                        ; preds = %str_stale240, %str_gen_check238, %choice.exit231
  %b.app.cur.len243 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load224, i32 0, i32 0
  %b.app.cur.len244 = load i64, ptr %b.app.cur.len243, align 8
  %b.app.new.len245 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len244, i64 %app.str.len235)
  %sum246 = extractvalue { i64, i1 } %b.app.new.len245, 0
  %ovf247 = extractvalue { i64, i1 } %b.app.new.len245, 1
  br i1 %ovf247, label %str_overflow_abort249, label %b.app.new.len248

str_stale240:                                     ; preds = %str_gen_check238
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok239

b.app.new.len248:                                 ; preds = %str_overflow_abort249, %str_ok239
  %b.cap250 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load224, i32 0, i32 2
  %b.cap251 = load i64, ptr %b.cap250, align 8
  %b.need.grow252 = icmp slt i64 %b.cap251, %sum246
  br i1 %b.need.grow252, label %b.grow2253, label %b.nogrow2254

str_overflow_abort249:                            ; preds = %str_ok239
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len248

b.grow2253:                                       ; preds = %b.app.new.len248
  %b.cap2256 = mul i64 %b.cap251, 2
  %b.cap.small257 = icmp slt i64 %b.cap2256, 16
  %b.cap.grow258 = select i1 %b.cap.small257, i64 16, i64 %b.cap2256
  %b.cap.need259 = icmp slt i64 %b.cap.grow258, %sum246
  %b.new.cap260 = select i1 %b.cap.need259, i64 %sum246, i64 %b.cap.grow258
  %b.cur.len2261 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load224, i32 0, i32 0
  %b.cur.len2262 = load i64, ptr %b.cur.len2261, align 8
  %b.cur.data2263 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load224, i32 0, i32 1
  %b.cur.data2264 = load ptr, ptr %b.cur.data2263, align 8
  %b.new.buf.len2265 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap260, i64 1)
  %sum266 = extractvalue { i64, i1 } %b.new.buf.len2265, 0
  %ovf267 = extractvalue { i64, i1 } %b.new.buf.len2265, 1
  br i1 %ovf267, label %str_overflow_abort269, label %b.new.buf.len2268

b.nogrow2254:                                     ; preds = %b.app.new.len248
  br label %b.grow_done255

b.grow_done255:                                   ; preds = %b.nogrow2254, %b.new.buf.len2268
  %app.str.data275 = getelementptr inbounds { i64, ptr }, ptr %choice.res232, i32 0, i32 1
  %app.str.data276 = load ptr, ptr %app.str.data275, align 8
  %b.app.data277 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load224, i32 0, i32 1
  %b.app.data278 = load ptr, ptr %b.app.data277, align 8
  %b.app.dst279 = getelementptr i8, ptr %b.app.data278, i64 %b.app.cur.len244
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst279, ptr align 1 %app.str.data276, i64 %app.str.len235, i1 false)
  %b.app.nul280 = getelementptr i8, ptr %b.app.data278, i64 %sum246
  store i8 0, ptr %b.app.nul280, align 1
  %b.len.gep281 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load224, i32 0, i32 0
  store i64 %sum246, ptr %b.len.gep281, align 8
  br label %choice.exit53

b.new.buf.len2268:                                ; preds = %str_overflow_abort269, %b.grow2253
  %arena.cur270 = call ptr @dva_arena_current()
  %b.new.buf2271 = call ptr @dva_arena_alloc(ptr %arena.cur270, i64 %sum266)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2271, ptr align 1 %b.cur.data2264, i64 %b.cur.len2262, i1 false)
  %b.grow2.nul272 = getelementptr i8, ptr %b.new.buf2271, i64 %b.cur.len2262
  store i8 0, ptr %b.grow2.nul272, align 1
  %b.new.data2.gep273 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load224, i32 0, i32 1
  store ptr %b.new.buf2271, ptr %b.new.data2.gep273, align 8
  %b.new.cap2.gep274 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load224, i32 0, i32 2
  store i64 %b.new.cap260, ptr %b.new.cap2.gep274, align 8
  br label %b.grow_done255

str_overflow_abort269:                            ; preds = %b.grow2253
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2268

choice.case282:                                   ; preds = %choice.next222
  %var.load285 = load ptr, ptr %var.b, align 8
  %var.load286 = load ptr, ptr %var.dt, align 8
  call void @"time::#write_date_into"(ptr %var.load285, ptr %var.load286)
  br label %choice.exit53

choice.next283:                                   ; preds = %choice.next222
  %val.match289 = icmp eq i64 %var.load52, 84
  br i1 %val.match289, label %choice.case287, label %choice.next288

choice.case287:                                   ; preds = %choice.next283
  %var.load290 = load ptr, ptr %var.b, align 8
  %var.load291 = load ptr, ptr %var.dt, align 8
  call void @"time::#write_clock_into"(ptr %var.load290, ptr %var.load291)
  br label %choice.exit53

choice.next288:                                   ; preds = %choice.next283
  %val.match294 = icmp eq i64 %var.load52, 82
  br i1 %val.match294, label %choice.case292, label %choice.next293

choice.case292:                                   ; preds = %choice.next288
  %var.load295 = load ptr, ptr %var.b, align 8
  %var.load296 = load ptr, ptr %var.dt, align 8
  %fld.gep297 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load296, i32 0, i32 3
  %fld.load298 = load i64, ptr %fld.gep297, align 8
  call void @"time::#pad2"(ptr %var.load295, i64 %fld.load298)
  %b.load299 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len300 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load299, i32 0, i32 0
  %b.rn.cur.len301 = load i64, ptr %b.rn.cur.len300, align 8
  %b.rn.new.len302 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len301, i64 1)
  %sum303 = extractvalue { i64, i1 } %b.rn.new.len302, 0
  %ovf304 = extractvalue { i64, i1 } %b.rn.new.len302, 1
  br i1 %ovf304, label %str_overflow_abort306, label %b.rn.new.len305

choice.next293:                                   ; preds = %choice.next288
  %val.match349 = icmp eq i64 %var.load52, 97
  br i1 %val.match349, label %choice.case347, label %choice.next348

b.rn.new.len305:                                  ; preds = %str_overflow_abort306, %choice.case292
  %b.cap307 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load299, i32 0, i32 2
  %b.cap308 = load i64, ptr %b.cap307, align 8
  %b.need.grow309 = icmp slt i64 %b.cap308, %sum303
  br i1 %b.need.grow309, label %b.grow2310, label %b.nogrow2311

str_overflow_abort306:                            ; preds = %choice.case292
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len305

b.grow2310:                                       ; preds = %b.rn.new.len305
  %b.cap2313 = mul i64 %b.cap308, 2
  %b.cap.small314 = icmp slt i64 %b.cap2313, 16
  %b.cap.grow315 = select i1 %b.cap.small314, i64 16, i64 %b.cap2313
  %b.cap.need316 = icmp slt i64 %b.cap.grow315, %sum303
  %b.new.cap317 = select i1 %b.cap.need316, i64 %sum303, i64 %b.cap.grow315
  %b.cur.len2318 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load299, i32 0, i32 0
  %b.cur.len2319 = load i64, ptr %b.cur.len2318, align 8
  %b.cur.data2320 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load299, i32 0, i32 1
  %b.cur.data2321 = load ptr, ptr %b.cur.data2320, align 8
  %b.new.buf.len2322 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap317, i64 1)
  %sum323 = extractvalue { i64, i1 } %b.new.buf.len2322, 0
  %ovf324 = extractvalue { i64, i1 } %b.new.buf.len2322, 1
  br i1 %ovf324, label %str_overflow_abort326, label %b.new.buf.len2325

b.nogrow2311:                                     ; preds = %b.rn.new.len305
  br label %b.grow_done312

b.grow_done312:                                   ; preds = %b.nogrow2311, %b.new.buf.len2325
  %b.rn.data332 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load299, i32 0, i32 1
  %b.rn.data333 = load ptr, ptr %b.rn.data332, align 8
  %b.rn.dst334 = getelementptr i8, ptr %b.rn.data333, i64 %b.rn.cur.len301
  br i1 true, label %br.b1.84, label %br.c2.84

b.new.buf.len2325:                                ; preds = %str_overflow_abort326, %b.grow2310
  %arena.cur327 = call ptr @dva_arena_current()
  %b.new.buf2328 = call ptr @dva_arena_alloc(ptr %arena.cur327, i64 %sum323)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2328, ptr align 1 %b.cur.data2321, i64 %b.cur.len2319, i1 false)
  %b.grow2.nul329 = getelementptr i8, ptr %b.new.buf2328, i64 %b.cur.len2319
  store i8 0, ptr %b.grow2.nul329, align 1
  %b.new.data2.gep330 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load299, i32 0, i32 1
  store ptr %b.new.buf2328, ptr %b.new.data2.gep330, align 8
  %b.new.cap2.gep331 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load299, i32 0, i32 2
  store i64 %b.new.cap317, ptr %b.new.cap2.gep331, align 8
  br label %b.grow_done312

str_overflow_abort326:                            ; preds = %b.grow2310
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2325

br.b1.84:                                         ; preds = %b.grow_done312
  store i8 58, ptr %b.rn.dst334, align 1
  br label %br.done.84

br.c2.84:                                         ; preds = %b.grow_done312
  br i1 true, label %br.b2.84, label %br.c3.84

br.b2.84:                                         ; preds = %br.c2.84
  store i8 -64, ptr %b.rn.dst334, align 1
  %br.dst1335 = getelementptr i8, ptr %b.rn.dst334, i64 1
  store i8 -70, ptr %br.dst1335, align 1
  br label %br.done.84

br.c3.84:                                         ; preds = %br.c2.84
  br i1 true, label %br.b3.84, label %br.b4.84

br.b3.84:                                         ; preds = %br.c3.84
  store i8 -32, ptr %b.rn.dst334, align 1
  %br.dst1.3336 = getelementptr i8, ptr %b.rn.dst334, i64 1
  store i8 -128, ptr %br.dst1.3336, align 1
  %br.dst2.3337 = getelementptr i8, ptr %b.rn.dst334, i64 2
  store i8 -70, ptr %br.dst2.3337, align 1
  br label %br.done.84

br.b4.84:                                         ; preds = %br.c3.84
  store i8 -16, ptr %b.rn.dst334, align 1
  %br.dst1.4338 = getelementptr i8, ptr %b.rn.dst334, i64 1
  store i8 -128, ptr %br.dst1.4338, align 1
  %br.dst2.4339 = getelementptr i8, ptr %b.rn.dst334, i64 2
  store i8 -128, ptr %br.dst2.4339, align 1
  %br.dst3.4340 = getelementptr i8, ptr %b.rn.dst334, i64 3
  store i8 -70, ptr %br.dst3.4340, align 1
  br label %br.done.84

br.done.84:                                       ; preds = %br.b4.84, %br.b3.84, %br.b2.84, %br.b1.84
  %br.nul341 = getelementptr i8, ptr %b.rn.data333, i64 %sum303
  store i8 0, ptr %br.nul341, align 1
  %b.len.gep342 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load299, i32 0, i32 0
  store i64 %sum303, ptr %b.len.gep342, align 8
  %var.load343 = load ptr, ptr %var.b, align 8
  %var.load344 = load ptr, ptr %var.dt, align 8
  %fld.gep345 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load344, i32 0, i32 4
  %fld.load346 = load i64, ptr %fld.gep345, align 8
  call void @"time::#pad2"(ptr %var.load343, i64 %fld.load346)
  br label %choice.exit53

choice.case347:                                   ; preds = %choice.next293
  %b.load350 = load ptr, ptr %var.b, align 8
  %var.load351 = load ptr, ptr %var.dt, align 8
  %fld.gep352 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load351, i32 0, i32 7
  %fld.load353 = load i64, ptr %fld.gep352, align 8
  %call.res = call ptr @"time::#short_weekday_name"(i64 %fld.load353)
  %app.str.len354 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %app.str.len355 = load i64, ptr %app.str.len354, align 8
  %app.str.len356 = and i64 %app.str.len355, 281474976710655
  %str.tag357 = lshr i64 %app.str.len355, 48
  %str.immortal358 = icmp eq i64 %str.tag357, 0
  br i1 %str.immortal358, label %str_ok360, label %str_gen_check359

choice.next348:                                   ; preds = %choice.next293
  %val.match405 = icmp eq i64 %var.load52, 65
  br i1 %val.match405, label %choice.case403, label %choice.next404

str_gen_check359:                                 ; preds = %choice.case347
  %arena.cur362 = call ptr @dva_arena_current()
  %tag.valid363 = call i1 @dva_arena_validate_tag(ptr %arena.cur362, i64 %str.tag357)
  br i1 %tag.valid363, label %str_ok360, label %str_stale361

str_ok360:                                        ; preds = %str_stale361, %str_gen_check359, %choice.case347
  %b.app.cur.len364 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load350, i32 0, i32 0
  %b.app.cur.len365 = load i64, ptr %b.app.cur.len364, align 8
  %b.app.new.len366 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len365, i64 %app.str.len356)
  %sum367 = extractvalue { i64, i1 } %b.app.new.len366, 0
  %ovf368 = extractvalue { i64, i1 } %b.app.new.len366, 1
  br i1 %ovf368, label %str_overflow_abort370, label %b.app.new.len369

str_stale361:                                     ; preds = %str_gen_check359
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok360

b.app.new.len369:                                 ; preds = %str_overflow_abort370, %str_ok360
  %b.cap371 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load350, i32 0, i32 2
  %b.cap372 = load i64, ptr %b.cap371, align 8
  %b.need.grow373 = icmp slt i64 %b.cap372, %sum367
  br i1 %b.need.grow373, label %b.grow2374, label %b.nogrow2375

str_overflow_abort370:                            ; preds = %str_ok360
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len369

b.grow2374:                                       ; preds = %b.app.new.len369
  %b.cap2377 = mul i64 %b.cap372, 2
  %b.cap.small378 = icmp slt i64 %b.cap2377, 16
  %b.cap.grow379 = select i1 %b.cap.small378, i64 16, i64 %b.cap2377
  %b.cap.need380 = icmp slt i64 %b.cap.grow379, %sum367
  %b.new.cap381 = select i1 %b.cap.need380, i64 %sum367, i64 %b.cap.grow379
  %b.cur.len2382 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load350, i32 0, i32 0
  %b.cur.len2383 = load i64, ptr %b.cur.len2382, align 8
  %b.cur.data2384 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load350, i32 0, i32 1
  %b.cur.data2385 = load ptr, ptr %b.cur.data2384, align 8
  %b.new.buf.len2386 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap381, i64 1)
  %sum387 = extractvalue { i64, i1 } %b.new.buf.len2386, 0
  %ovf388 = extractvalue { i64, i1 } %b.new.buf.len2386, 1
  br i1 %ovf388, label %str_overflow_abort390, label %b.new.buf.len2389

b.nogrow2375:                                     ; preds = %b.app.new.len369
  br label %b.grow_done376

b.grow_done376:                                   ; preds = %b.nogrow2375, %b.new.buf.len2389
  %app.str.data396 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %app.str.data397 = load ptr, ptr %app.str.data396, align 8
  %b.app.data398 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load350, i32 0, i32 1
  %b.app.data399 = load ptr, ptr %b.app.data398, align 8
  %b.app.dst400 = getelementptr i8, ptr %b.app.data399, i64 %b.app.cur.len365
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst400, ptr align 1 %app.str.data397, i64 %app.str.len356, i1 false)
  %b.app.nul401 = getelementptr i8, ptr %b.app.data399, i64 %sum367
  store i8 0, ptr %b.app.nul401, align 1
  %b.len.gep402 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load350, i32 0, i32 0
  store i64 %sum367, ptr %b.len.gep402, align 8
  br label %choice.exit53

b.new.buf.len2389:                                ; preds = %str_overflow_abort390, %b.grow2374
  %arena.cur391 = call ptr @dva_arena_current()
  %b.new.buf2392 = call ptr @dva_arena_alloc(ptr %arena.cur391, i64 %sum387)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2392, ptr align 1 %b.cur.data2385, i64 %b.cur.len2383, i1 false)
  %b.grow2.nul393 = getelementptr i8, ptr %b.new.buf2392, i64 %b.cur.len2383
  store i8 0, ptr %b.grow2.nul393, align 1
  %b.new.data2.gep394 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load350, i32 0, i32 1
  store ptr %b.new.buf2392, ptr %b.new.data2.gep394, align 8
  %b.new.cap2.gep395 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load350, i32 0, i32 2
  store i64 %b.new.cap381, ptr %b.new.cap2.gep395, align 8
  br label %b.grow_done376

str_overflow_abort390:                            ; preds = %b.grow2374
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2389

choice.case403:                                   ; preds = %choice.next348
  %b.load406 = load ptr, ptr %var.b, align 8
  %var.load407 = load ptr, ptr %var.dt, align 8
  %fld.gep408 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load407, i32 0, i32 7
  %fld.load409 = load i64, ptr %fld.gep408, align 8
  %call.res410 = call ptr @"time::#full_weekday_name"(i64 %fld.load409)
  %app.str.len411 = getelementptr inbounds { i64, ptr }, ptr %call.res410, i32 0, i32 0
  %app.str.len412 = load i64, ptr %app.str.len411, align 8
  %app.str.len413 = and i64 %app.str.len412, 281474976710655
  %str.tag414 = lshr i64 %app.str.len412, 48
  %str.immortal415 = icmp eq i64 %str.tag414, 0
  br i1 %str.immortal415, label %str_ok417, label %str_gen_check416

choice.next404:                                   ; preds = %choice.next348
  %val.match462 = icmp eq i64 %var.load52, 98
  %val.match463 = icmp eq i64 %var.load52, 104
  %case.or = or i1 %val.match462, %val.match463
  br i1 %case.or, label %choice.case460, label %choice.next461

str_gen_check416:                                 ; preds = %choice.case403
  %arena.cur419 = call ptr @dva_arena_current()
  %tag.valid420 = call i1 @dva_arena_validate_tag(ptr %arena.cur419, i64 %str.tag414)
  br i1 %tag.valid420, label %str_ok417, label %str_stale418

str_ok417:                                        ; preds = %str_stale418, %str_gen_check416, %choice.case403
  %b.app.cur.len421 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 0
  %b.app.cur.len422 = load i64, ptr %b.app.cur.len421, align 8
  %b.app.new.len423 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len422, i64 %app.str.len413)
  %sum424 = extractvalue { i64, i1 } %b.app.new.len423, 0
  %ovf425 = extractvalue { i64, i1 } %b.app.new.len423, 1
  br i1 %ovf425, label %str_overflow_abort427, label %b.app.new.len426

str_stale418:                                     ; preds = %str_gen_check416
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok417

b.app.new.len426:                                 ; preds = %str_overflow_abort427, %str_ok417
  %b.cap428 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 2
  %b.cap429 = load i64, ptr %b.cap428, align 8
  %b.need.grow430 = icmp slt i64 %b.cap429, %sum424
  br i1 %b.need.grow430, label %b.grow2431, label %b.nogrow2432

str_overflow_abort427:                            ; preds = %str_ok417
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len426

b.grow2431:                                       ; preds = %b.app.new.len426
  %b.cap2434 = mul i64 %b.cap429, 2
  %b.cap.small435 = icmp slt i64 %b.cap2434, 16
  %b.cap.grow436 = select i1 %b.cap.small435, i64 16, i64 %b.cap2434
  %b.cap.need437 = icmp slt i64 %b.cap.grow436, %sum424
  %b.new.cap438 = select i1 %b.cap.need437, i64 %sum424, i64 %b.cap.grow436
  %b.cur.len2439 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 0
  %b.cur.len2440 = load i64, ptr %b.cur.len2439, align 8
  %b.cur.data2441 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 1
  %b.cur.data2442 = load ptr, ptr %b.cur.data2441, align 8
  %b.new.buf.len2443 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap438, i64 1)
  %sum444 = extractvalue { i64, i1 } %b.new.buf.len2443, 0
  %ovf445 = extractvalue { i64, i1 } %b.new.buf.len2443, 1
  br i1 %ovf445, label %str_overflow_abort447, label %b.new.buf.len2446

b.nogrow2432:                                     ; preds = %b.app.new.len426
  br label %b.grow_done433

b.grow_done433:                                   ; preds = %b.nogrow2432, %b.new.buf.len2446
  %app.str.data453 = getelementptr inbounds { i64, ptr }, ptr %call.res410, i32 0, i32 1
  %app.str.data454 = load ptr, ptr %app.str.data453, align 8
  %b.app.data455 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 1
  %b.app.data456 = load ptr, ptr %b.app.data455, align 8
  %b.app.dst457 = getelementptr i8, ptr %b.app.data456, i64 %b.app.cur.len422
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst457, ptr align 1 %app.str.data454, i64 %app.str.len413, i1 false)
  %b.app.nul458 = getelementptr i8, ptr %b.app.data456, i64 %sum424
  store i8 0, ptr %b.app.nul458, align 1
  %b.len.gep459 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 0
  store i64 %sum424, ptr %b.len.gep459, align 8
  br label %choice.exit53

b.new.buf.len2446:                                ; preds = %str_overflow_abort447, %b.grow2431
  %arena.cur448 = call ptr @dva_arena_current()
  %b.new.buf2449 = call ptr @dva_arena_alloc(ptr %arena.cur448, i64 %sum444)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2449, ptr align 1 %b.cur.data2442, i64 %b.cur.len2440, i1 false)
  %b.grow2.nul450 = getelementptr i8, ptr %b.new.buf2449, i64 %b.cur.len2440
  store i8 0, ptr %b.grow2.nul450, align 1
  %b.new.data2.gep451 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 1
  store ptr %b.new.buf2449, ptr %b.new.data2.gep451, align 8
  %b.new.cap2.gep452 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 2
  store i64 %b.new.cap438, ptr %b.new.cap2.gep452, align 8
  br label %b.grow_done433

str_overflow_abort447:                            ; preds = %b.grow2431
  %29 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2446

choice.case460:                                   ; preds = %choice.next404
  %b.load464 = load ptr, ptr %var.b, align 8
  %var.load465 = load ptr, ptr %var.dt, align 8
  %fld.gep466 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load465, i32 0, i32 1
  %fld.load467 = load i64, ptr %fld.gep466, align 8
  %call.res468 = call ptr @"time::#short_month_name"(i64 %fld.load467)
  %app.str.len469 = getelementptr inbounds { i64, ptr }, ptr %call.res468, i32 0, i32 0
  %app.str.len470 = load i64, ptr %app.str.len469, align 8
  %app.str.len471 = and i64 %app.str.len470, 281474976710655
  %str.tag472 = lshr i64 %app.str.len470, 48
  %str.immortal473 = icmp eq i64 %str.tag472, 0
  br i1 %str.immortal473, label %str_ok475, label %str_gen_check474

choice.next461:                                   ; preds = %choice.next404
  %val.match520 = icmp eq i64 %var.load52, 66
  br i1 %val.match520, label %choice.case518, label %choice.next519

str_gen_check474:                                 ; preds = %choice.case460
  %arena.cur477 = call ptr @dva_arena_current()
  %tag.valid478 = call i1 @dva_arena_validate_tag(ptr %arena.cur477, i64 %str.tag472)
  br i1 %tag.valid478, label %str_ok475, label %str_stale476

str_ok475:                                        ; preds = %str_stale476, %str_gen_check474, %choice.case460
  %b.app.cur.len479 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load464, i32 0, i32 0
  %b.app.cur.len480 = load i64, ptr %b.app.cur.len479, align 8
  %b.app.new.len481 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len480, i64 %app.str.len471)
  %sum482 = extractvalue { i64, i1 } %b.app.new.len481, 0
  %ovf483 = extractvalue { i64, i1 } %b.app.new.len481, 1
  br i1 %ovf483, label %str_overflow_abort485, label %b.app.new.len484

str_stale476:                                     ; preds = %str_gen_check474
  %30 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok475

b.app.new.len484:                                 ; preds = %str_overflow_abort485, %str_ok475
  %b.cap486 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load464, i32 0, i32 2
  %b.cap487 = load i64, ptr %b.cap486, align 8
  %b.need.grow488 = icmp slt i64 %b.cap487, %sum482
  br i1 %b.need.grow488, label %b.grow2489, label %b.nogrow2490

str_overflow_abort485:                            ; preds = %str_ok475
  %31 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len484

b.grow2489:                                       ; preds = %b.app.new.len484
  %b.cap2492 = mul i64 %b.cap487, 2
  %b.cap.small493 = icmp slt i64 %b.cap2492, 16
  %b.cap.grow494 = select i1 %b.cap.small493, i64 16, i64 %b.cap2492
  %b.cap.need495 = icmp slt i64 %b.cap.grow494, %sum482
  %b.new.cap496 = select i1 %b.cap.need495, i64 %sum482, i64 %b.cap.grow494
  %b.cur.len2497 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load464, i32 0, i32 0
  %b.cur.len2498 = load i64, ptr %b.cur.len2497, align 8
  %b.cur.data2499 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load464, i32 0, i32 1
  %b.cur.data2500 = load ptr, ptr %b.cur.data2499, align 8
  %b.new.buf.len2501 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap496, i64 1)
  %sum502 = extractvalue { i64, i1 } %b.new.buf.len2501, 0
  %ovf503 = extractvalue { i64, i1 } %b.new.buf.len2501, 1
  br i1 %ovf503, label %str_overflow_abort505, label %b.new.buf.len2504

b.nogrow2490:                                     ; preds = %b.app.new.len484
  br label %b.grow_done491

b.grow_done491:                                   ; preds = %b.nogrow2490, %b.new.buf.len2504
  %app.str.data511 = getelementptr inbounds { i64, ptr }, ptr %call.res468, i32 0, i32 1
  %app.str.data512 = load ptr, ptr %app.str.data511, align 8
  %b.app.data513 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load464, i32 0, i32 1
  %b.app.data514 = load ptr, ptr %b.app.data513, align 8
  %b.app.dst515 = getelementptr i8, ptr %b.app.data514, i64 %b.app.cur.len480
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst515, ptr align 1 %app.str.data512, i64 %app.str.len471, i1 false)
  %b.app.nul516 = getelementptr i8, ptr %b.app.data514, i64 %sum482
  store i8 0, ptr %b.app.nul516, align 1
  %b.len.gep517 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load464, i32 0, i32 0
  store i64 %sum482, ptr %b.len.gep517, align 8
  br label %choice.exit53

b.new.buf.len2504:                                ; preds = %str_overflow_abort505, %b.grow2489
  %arena.cur506 = call ptr @dva_arena_current()
  %b.new.buf2507 = call ptr @dva_arena_alloc(ptr %arena.cur506, i64 %sum502)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2507, ptr align 1 %b.cur.data2500, i64 %b.cur.len2498, i1 false)
  %b.grow2.nul508 = getelementptr i8, ptr %b.new.buf2507, i64 %b.cur.len2498
  store i8 0, ptr %b.grow2.nul508, align 1
  %b.new.data2.gep509 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load464, i32 0, i32 1
  store ptr %b.new.buf2507, ptr %b.new.data2.gep509, align 8
  %b.new.cap2.gep510 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load464, i32 0, i32 2
  store i64 %b.new.cap496, ptr %b.new.cap2.gep510, align 8
  br label %b.grow_done491

str_overflow_abort505:                            ; preds = %b.grow2489
  %32 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2504

choice.case518:                                   ; preds = %choice.next461
  %b.load521 = load ptr, ptr %var.b, align 8
  %var.load522 = load ptr, ptr %var.dt, align 8
  %fld.gep523 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load522, i32 0, i32 1
  %fld.load524 = load i64, ptr %fld.gep523, align 8
  %call.res525 = call ptr @"time::#full_month_name"(i64 %fld.load524)
  %app.str.len526 = getelementptr inbounds { i64, ptr }, ptr %call.res525, i32 0, i32 0
  %app.str.len527 = load i64, ptr %app.str.len526, align 8
  %app.str.len528 = and i64 %app.str.len527, 281474976710655
  %str.tag529 = lshr i64 %app.str.len527, 48
  %str.immortal530 = icmp eq i64 %str.tag529, 0
  br i1 %str.immortal530, label %str_ok532, label %str_gen_check531

choice.next519:                                   ; preds = %choice.next461
  %val.match577 = icmp eq i64 %var.load52, 106
  br i1 %val.match577, label %choice.case575, label %choice.next576

str_gen_check531:                                 ; preds = %choice.case518
  %arena.cur534 = call ptr @dva_arena_current()
  %tag.valid535 = call i1 @dva_arena_validate_tag(ptr %arena.cur534, i64 %str.tag529)
  br i1 %tag.valid535, label %str_ok532, label %str_stale533

str_ok532:                                        ; preds = %str_stale533, %str_gen_check531, %choice.case518
  %b.app.cur.len536 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load521, i32 0, i32 0
  %b.app.cur.len537 = load i64, ptr %b.app.cur.len536, align 8
  %b.app.new.len538 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len537, i64 %app.str.len528)
  %sum539 = extractvalue { i64, i1 } %b.app.new.len538, 0
  %ovf540 = extractvalue { i64, i1 } %b.app.new.len538, 1
  br i1 %ovf540, label %str_overflow_abort542, label %b.app.new.len541

str_stale533:                                     ; preds = %str_gen_check531
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok532

b.app.new.len541:                                 ; preds = %str_overflow_abort542, %str_ok532
  %b.cap543 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load521, i32 0, i32 2
  %b.cap544 = load i64, ptr %b.cap543, align 8
  %b.need.grow545 = icmp slt i64 %b.cap544, %sum539
  br i1 %b.need.grow545, label %b.grow2546, label %b.nogrow2547

str_overflow_abort542:                            ; preds = %str_ok532
  %34 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len541

b.grow2546:                                       ; preds = %b.app.new.len541
  %b.cap2549 = mul i64 %b.cap544, 2
  %b.cap.small550 = icmp slt i64 %b.cap2549, 16
  %b.cap.grow551 = select i1 %b.cap.small550, i64 16, i64 %b.cap2549
  %b.cap.need552 = icmp slt i64 %b.cap.grow551, %sum539
  %b.new.cap553 = select i1 %b.cap.need552, i64 %sum539, i64 %b.cap.grow551
  %b.cur.len2554 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load521, i32 0, i32 0
  %b.cur.len2555 = load i64, ptr %b.cur.len2554, align 8
  %b.cur.data2556 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load521, i32 0, i32 1
  %b.cur.data2557 = load ptr, ptr %b.cur.data2556, align 8
  %b.new.buf.len2558 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap553, i64 1)
  %sum559 = extractvalue { i64, i1 } %b.new.buf.len2558, 0
  %ovf560 = extractvalue { i64, i1 } %b.new.buf.len2558, 1
  br i1 %ovf560, label %str_overflow_abort562, label %b.new.buf.len2561

b.nogrow2547:                                     ; preds = %b.app.new.len541
  br label %b.grow_done548

b.grow_done548:                                   ; preds = %b.nogrow2547, %b.new.buf.len2561
  %app.str.data568 = getelementptr inbounds { i64, ptr }, ptr %call.res525, i32 0, i32 1
  %app.str.data569 = load ptr, ptr %app.str.data568, align 8
  %b.app.data570 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load521, i32 0, i32 1
  %b.app.data571 = load ptr, ptr %b.app.data570, align 8
  %b.app.dst572 = getelementptr i8, ptr %b.app.data571, i64 %b.app.cur.len537
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst572, ptr align 1 %app.str.data569, i64 %app.str.len528, i1 false)
  %b.app.nul573 = getelementptr i8, ptr %b.app.data571, i64 %sum539
  store i8 0, ptr %b.app.nul573, align 1
  %b.len.gep574 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load521, i32 0, i32 0
  store i64 %sum539, ptr %b.len.gep574, align 8
  br label %choice.exit53

b.new.buf.len2561:                                ; preds = %str_overflow_abort562, %b.grow2546
  %arena.cur563 = call ptr @dva_arena_current()
  %b.new.buf2564 = call ptr @dva_arena_alloc(ptr %arena.cur563, i64 %sum559)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2564, ptr align 1 %b.cur.data2557, i64 %b.cur.len2555, i1 false)
  %b.grow2.nul565 = getelementptr i8, ptr %b.new.buf2564, i64 %b.cur.len2555
  store i8 0, ptr %b.grow2.nul565, align 1
  %b.new.data2.gep566 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load521, i32 0, i32 1
  store ptr %b.new.buf2564, ptr %b.new.data2.gep566, align 8
  %b.new.cap2.gep567 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load521, i32 0, i32 2
  store i64 %b.new.cap553, ptr %b.new.cap2.gep567, align 8
  br label %b.grow_done548

str_overflow_abort562:                            ; preds = %b.grow2546
  %35 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2561

choice.case575:                                   ; preds = %choice.next519
  %var.load578 = load ptr, ptr %var.b, align 8
  %var.load579 = load ptr, ptr %var.dt, align 8
  %fld.gep580 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load579, i32 0, i32 8
  %fld.load581 = load i64, ptr %fld.gep580, align 8
  call void @"time::#pad3"(ptr %var.load578, i64 %fld.load581)
  br label %choice.exit53

choice.next576:                                   ; preds = %choice.next519
  %val.match584 = icmp eq i64 %var.load52, 119
  br i1 %val.match584, label %choice.case582, label %choice.next583

choice.case582:                                   ; preds = %choice.next576
  %b.load585 = load ptr, ptr %var.b, align 8
  %var.load586 = load ptr, ptr %var.dt, align 8
  %fld.gep587 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load586, i32 0, i32 7
  %fld.load588 = load i64, ptr %fld.gep587, align 8
  %addtmp589 = add i64 48, %fld.load588
  %b.b.ge0590 = icmp sge i64 %addtmp589, 0
  %b.b.le255591 = icmp sle i64 %addtmp589, 255
  %b.byte.range592 = and i1 %b.b.ge0590, %b.b.le255591
  br i1 %b.byte.range592, label %b.byte_ok593, label %b.byte_err594

choice.next583:                                   ; preds = %choice.next576
  %val.match629 = icmp eq i64 %var.load52, 117
  br i1 %val.match629, label %choice.case627, label %choice.next628

b.byte_ok593:                                     ; preds = %b.byte_err594, %choice.case582
  %b.byte.i8595 = trunc i64 %addtmp589 to i8
  %b.len596 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load585, i32 0, i32 0
  %b.len597 = load i64, ptr %b.len596, align 8
  %b.cap598 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load585, i32 0, i32 2
  %b.cap599 = load i64, ptr %b.cap598, align 8
  %b.data600 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load585, i32 0, i32 1
  %b.data601 = load ptr, ptr %b.data600, align 8
  %b.needs.grow602 = icmp eq i64 %b.len597, %b.cap599
  br i1 %b.needs.grow602, label %b.grow603, label %b.nogrow604

b.byte_err594:                                    ; preds = %choice.case582
  %36 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok593

b.grow603:                                        ; preds = %b.byte_ok593
  %b.cap2606 = mul i64 %b.cap599, 2
  %b.cap.small607 = icmp slt i64 %b.cap2606, 16
  %b.new.cap608 = select i1 %b.cap.small607, i64 16, i64 %b.cap2606
  %b.new.buf.len609 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap608, i64 1)
  %sum610 = extractvalue { i64, i1 } %b.new.buf.len609, 0
  %ovf611 = extractvalue { i64, i1 } %b.new.buf.len609, 1
  br i1 %ovf611, label %str_overflow_abort613, label %b.new.buf.len612

b.nogrow604:                                      ; preds = %b.byte_ok593
  br label %b.push_done605

b.push_done605:                                   ; preds = %b.nogrow604, %b.new.buf.len612
  %b.cur.data619 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load585, i32 0, i32 1
  %b.cur.data620 = load ptr, ptr %b.cur.data619, align 8
  %b.cur.len621 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load585, i32 0, i32 0
  %b.cur.len622 = load i64, ptr %b.cur.len621, align 8
  %b.byte.gep623 = getelementptr i8, ptr %b.cur.data620, i64 %b.cur.len622
  store i8 %b.byte.i8595, ptr %b.byte.gep623, align 1
  %b.next.len624 = add i64 %b.cur.len622, 1
  %b.nul625 = getelementptr i8, ptr %b.cur.data620, i64 %b.next.len624
  store i8 0, ptr %b.nul625, align 1
  %b.len.gep626 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load585, i32 0, i32 0
  store i64 %b.next.len624, ptr %b.len.gep626, align 8
  br label %choice.exit53

b.new.buf.len612:                                 ; preds = %str_overflow_abort613, %b.grow603
  %arena.cur614 = call ptr @dva_arena_current()
  %b.new.buf615 = call ptr @dva_arena_alloc(ptr %arena.cur614, i64 %sum610)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf615, ptr align 1 %b.data601, i64 %b.len597, i1 false)
  %b.grow.nul616 = getelementptr i8, ptr %b.new.buf615, i64 %b.len597
  store i8 0, ptr %b.grow.nul616, align 1
  %b.new.data.gep617 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load585, i32 0, i32 1
  store ptr %b.new.buf615, ptr %b.new.data.gep617, align 8
  %b.new.cap.gep618 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load585, i32 0, i32 2
  store i64 %b.new.cap608, ptr %b.new.cap.gep618, align 8
  br label %b.push_done605

str_overflow_abort613:                            ; preds = %b.grow603
  %37 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len612

choice.case627:                                   ; preds = %choice.next583
  %b.load630 = load ptr, ptr %var.b, align 8
  %var.load631 = load ptr, ptr %var.dt, align 8
  %fld.gep632 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load631, i32 0, i32 7
  %fld.load633 = load i64, ptr %fld.gep632, align 8
  %cmptmp634 = icmp eq i64 %fld.load633, 0
  br i1 %cmptmp634, label %choice.then635, label %choice.else636

choice.next628:                                   ; preds = %choice.next583
  %val.match682 = icmp eq i64 %var.load52, 122
  br i1 %val.match682, label %choice.case680, label %choice.next681

choice.then635:                                   ; preds = %choice.case627
  br label %choice.exit637

choice.else636:                                   ; preds = %choice.case627
  %var.load638 = load ptr, ptr %var.dt, align 8
  %fld.gep639 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load638, i32 0, i32 7
  %fld.load640 = load i64, ptr %fld.gep639, align 8
  br label %choice.exit637

choice.exit637:                                   ; preds = %choice.else636, %choice.then635
  %choice.res641 = phi i64 [ 7, %choice.then635 ], [ %fld.load640, %choice.else636 ]
  %addtmp642 = add i64 48, %choice.res641
  %b.b.ge0643 = icmp sge i64 %addtmp642, 0
  %b.b.le255644 = icmp sle i64 %addtmp642, 255
  %b.byte.range645 = and i1 %b.b.ge0643, %b.b.le255644
  br i1 %b.byte.range645, label %b.byte_ok646, label %b.byte_err647

b.byte_ok646:                                     ; preds = %b.byte_err647, %choice.exit637
  %b.byte.i8648 = trunc i64 %addtmp642 to i8
  %b.len649 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load630, i32 0, i32 0
  %b.len650 = load i64, ptr %b.len649, align 8
  %b.cap651 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load630, i32 0, i32 2
  %b.cap652 = load i64, ptr %b.cap651, align 8
  %b.data653 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load630, i32 0, i32 1
  %b.data654 = load ptr, ptr %b.data653, align 8
  %b.needs.grow655 = icmp eq i64 %b.len650, %b.cap652
  br i1 %b.needs.grow655, label %b.grow656, label %b.nogrow657

b.byte_err647:                                    ; preds = %choice.exit637
  %38 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok646

b.grow656:                                        ; preds = %b.byte_ok646
  %b.cap2659 = mul i64 %b.cap652, 2
  %b.cap.small660 = icmp slt i64 %b.cap2659, 16
  %b.new.cap661 = select i1 %b.cap.small660, i64 16, i64 %b.cap2659
  %b.new.buf.len662 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap661, i64 1)
  %sum663 = extractvalue { i64, i1 } %b.new.buf.len662, 0
  %ovf664 = extractvalue { i64, i1 } %b.new.buf.len662, 1
  br i1 %ovf664, label %str_overflow_abort666, label %b.new.buf.len665

b.nogrow657:                                      ; preds = %b.byte_ok646
  br label %b.push_done658

b.push_done658:                                   ; preds = %b.nogrow657, %b.new.buf.len665
  %b.cur.data672 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load630, i32 0, i32 1
  %b.cur.data673 = load ptr, ptr %b.cur.data672, align 8
  %b.cur.len674 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load630, i32 0, i32 0
  %b.cur.len675 = load i64, ptr %b.cur.len674, align 8
  %b.byte.gep676 = getelementptr i8, ptr %b.cur.data673, i64 %b.cur.len675
  store i8 %b.byte.i8648, ptr %b.byte.gep676, align 1
  %b.next.len677 = add i64 %b.cur.len675, 1
  %b.nul678 = getelementptr i8, ptr %b.cur.data673, i64 %b.next.len677
  store i8 0, ptr %b.nul678, align 1
  %b.len.gep679 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load630, i32 0, i32 0
  store i64 %b.next.len677, ptr %b.len.gep679, align 8
  br label %choice.exit53

b.new.buf.len665:                                 ; preds = %str_overflow_abort666, %b.grow656
  %arena.cur667 = call ptr @dva_arena_current()
  %b.new.buf668 = call ptr @dva_arena_alloc(ptr %arena.cur667, i64 %sum663)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf668, ptr align 1 %b.data654, i64 %b.len650, i1 false)
  %b.grow.nul669 = getelementptr i8, ptr %b.new.buf668, i64 %b.len650
  store i8 0, ptr %b.grow.nul669, align 1
  %b.new.data.gep670 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load630, i32 0, i32 1
  store ptr %b.new.buf668, ptr %b.new.data.gep670, align 8
  %b.new.cap.gep671 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load630, i32 0, i32 2
  store i64 %b.new.cap661, ptr %b.new.cap.gep671, align 8
  br label %b.push_done658

str_overflow_abort666:                            ; preds = %b.grow656
  %39 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len665

choice.case680:                                   ; preds = %choice.next628
  %var.load683 = load ptr, ptr %var.b, align 8
  %var.load684 = load ptr, ptr %var.dt, align 8
  %fld.gep685 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load684, i32 0, i32 9
  %fld.load686 = load i64, ptr %fld.gep685, align 8
  call void @"time::#write_tz_compact_into"(ptr %var.load683, i64 %fld.load686)
  br label %choice.exit53

choice.next681:                                   ; preds = %choice.next628
  %val.match689 = icmp eq i64 %var.load52, 90
  br i1 %val.match689, label %choice.case687, label %choice.next688

choice.case687:                                   ; preds = %choice.next681
  %var.load690 = load ptr, ptr %var.dt, align 8
  %fld.gep691 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load690, i32 0, i32 9
  %fld.load692 = load i64, ptr %fld.gep691, align 8
  %cmptmp693 = icmp eq i64 %fld.load692, 0
  br i1 %cmptmp693, label %choice.then694, label %choice.else695

choice.next688:                                   ; preds = %choice.next681
  %val.match751 = icmp eq i64 %var.load52, 115
  br i1 %val.match751, label %choice.case749, label %choice.next750

choice.then694:                                   ; preds = %choice.case687
  %b.load697 = load ptr, ptr %var.b, align 8
  %app.str.len698 = load i64, ptr @str.41.struct, align 8
  %app.str.len699 = and i64 %app.str.len698, 281474976710655
  %str.tag700 = lshr i64 %app.str.len698, 48
  %str.immortal701 = icmp eq i64 %str.tag700, 0
  br i1 %str.immortal701, label %str_ok703, label %str_gen_check702

choice.else695:                                   ; preds = %choice.case687
  %var.load745 = load ptr, ptr %var.b, align 8
  %var.load746 = load ptr, ptr %var.dt, align 8
  %fld.gep747 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load746, i32 0, i32 9
  %fld.load748 = load i64, ptr %fld.gep747, align 8
  call void @"time::#write_tz_iso_into"(ptr %var.load745, i64 %fld.load748)
  br label %choice.exit696

choice.exit696:                                   ; preds = %choice.else695, %b.grow_done719
  br label %choice.exit53

str_gen_check702:                                 ; preds = %choice.then694
  %arena.cur705 = call ptr @dva_arena_current()
  %tag.valid706 = call i1 @dva_arena_validate_tag(ptr %arena.cur705, i64 %str.tag700)
  br i1 %tag.valid706, label %str_ok703, label %str_stale704

str_ok703:                                        ; preds = %str_stale704, %str_gen_check702, %choice.then694
  %b.app.cur.len707 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load697, i32 0, i32 0
  %b.app.cur.len708 = load i64, ptr %b.app.cur.len707, align 8
  %b.app.new.len709 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len708, i64 %app.str.len699)
  %sum710 = extractvalue { i64, i1 } %b.app.new.len709, 0
  %ovf711 = extractvalue { i64, i1 } %b.app.new.len709, 1
  br i1 %ovf711, label %str_overflow_abort713, label %b.app.new.len712

str_stale704:                                     ; preds = %str_gen_check702
  %40 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok703

b.app.new.len712:                                 ; preds = %str_overflow_abort713, %str_ok703
  %b.cap714 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load697, i32 0, i32 2
  %b.cap715 = load i64, ptr %b.cap714, align 8
  %b.need.grow716 = icmp slt i64 %b.cap715, %sum710
  br i1 %b.need.grow716, label %b.grow2717, label %b.nogrow2718

str_overflow_abort713:                            ; preds = %str_ok703
  %41 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len712

b.grow2717:                                       ; preds = %b.app.new.len712
  %b.cap2720 = mul i64 %b.cap715, 2
  %b.cap.small721 = icmp slt i64 %b.cap2720, 16
  %b.cap.grow722 = select i1 %b.cap.small721, i64 16, i64 %b.cap2720
  %b.cap.need723 = icmp slt i64 %b.cap.grow722, %sum710
  %b.new.cap724 = select i1 %b.cap.need723, i64 %sum710, i64 %b.cap.grow722
  %b.cur.len2725 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load697, i32 0, i32 0
  %b.cur.len2726 = load i64, ptr %b.cur.len2725, align 8
  %b.cur.data2727 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load697, i32 0, i32 1
  %b.cur.data2728 = load ptr, ptr %b.cur.data2727, align 8
  %b.new.buf.len2729 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap724, i64 1)
  %sum730 = extractvalue { i64, i1 } %b.new.buf.len2729, 0
  %ovf731 = extractvalue { i64, i1 } %b.new.buf.len2729, 1
  br i1 %ovf731, label %str_overflow_abort733, label %b.new.buf.len2732

b.nogrow2718:                                     ; preds = %b.app.new.len712
  br label %b.grow_done719

b.grow_done719:                                   ; preds = %b.nogrow2718, %b.new.buf.len2732
  %app.str.data739 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.41.struct, i32 0, i32 1), align 8
  %b.app.data740 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load697, i32 0, i32 1
  %b.app.data741 = load ptr, ptr %b.app.data740, align 8
  %b.app.dst742 = getelementptr i8, ptr %b.app.data741, i64 %b.app.cur.len708
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst742, ptr align 1 %app.str.data739, i64 %app.str.len699, i1 false)
  %b.app.nul743 = getelementptr i8, ptr %b.app.data741, i64 %sum710
  store i8 0, ptr %b.app.nul743, align 1
  %b.len.gep744 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load697, i32 0, i32 0
  store i64 %sum710, ptr %b.len.gep744, align 8
  br label %choice.exit696

b.new.buf.len2732:                                ; preds = %str_overflow_abort733, %b.grow2717
  %arena.cur734 = call ptr @dva_arena_current()
  %b.new.buf2735 = call ptr @dva_arena_alloc(ptr %arena.cur734, i64 %sum730)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2735, ptr align 1 %b.cur.data2728, i64 %b.cur.len2726, i1 false)
  %b.grow2.nul736 = getelementptr i8, ptr %b.new.buf2735, i64 %b.cur.len2726
  store i8 0, ptr %b.grow2.nul736, align 1
  %b.new.data2.gep737 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load697, i32 0, i32 1
  store ptr %b.new.buf2735, ptr %b.new.data2.gep737, align 8
  %b.new.cap2.gep738 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load697, i32 0, i32 2
  store i64 %b.new.cap724, ptr %b.new.cap2.gep738, align 8
  br label %b.grow_done719

str_overflow_abort733:                            ; preds = %b.grow2717
  %42 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2732

choice.case749:                                   ; preds = %choice.next688
  %b.load752 = load ptr, ptr %var.b, align 8
  %var.load753 = load ptr, ptr %var.dt, align 8
  %call.res754 = call i64 @"time::epoch"(ptr %var.load753)
  %call.res755 = call ptr @"str::from_int"(i64 %call.res754)
  %app.str.len756 = getelementptr inbounds { i64, ptr }, ptr %call.res755, i32 0, i32 0
  %app.str.len757 = load i64, ptr %app.str.len756, align 8
  %app.str.len758 = and i64 %app.str.len757, 281474976710655
  %str.tag759 = lshr i64 %app.str.len757, 48
  %str.immortal760 = icmp eq i64 %str.tag759, 0
  br i1 %str.immortal760, label %str_ok762, label %str_gen_check761

choice.next750:                                   ; preds = %choice.next688
  %val.match807 = icmp eq i64 %var.load52, 110
  br i1 %val.match807, label %choice.case805, label %choice.next806

str_gen_check761:                                 ; preds = %choice.case749
  %arena.cur764 = call ptr @dva_arena_current()
  %tag.valid765 = call i1 @dva_arena_validate_tag(ptr %arena.cur764, i64 %str.tag759)
  br i1 %tag.valid765, label %str_ok762, label %str_stale763

str_ok762:                                        ; preds = %str_stale763, %str_gen_check761, %choice.case749
  %b.app.cur.len766 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load752, i32 0, i32 0
  %b.app.cur.len767 = load i64, ptr %b.app.cur.len766, align 8
  %b.app.new.len768 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len767, i64 %app.str.len758)
  %sum769 = extractvalue { i64, i1 } %b.app.new.len768, 0
  %ovf770 = extractvalue { i64, i1 } %b.app.new.len768, 1
  br i1 %ovf770, label %str_overflow_abort772, label %b.app.new.len771

str_stale763:                                     ; preds = %str_gen_check761
  %43 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok762

b.app.new.len771:                                 ; preds = %str_overflow_abort772, %str_ok762
  %b.cap773 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load752, i32 0, i32 2
  %b.cap774 = load i64, ptr %b.cap773, align 8
  %b.need.grow775 = icmp slt i64 %b.cap774, %sum769
  br i1 %b.need.grow775, label %b.grow2776, label %b.nogrow2777

str_overflow_abort772:                            ; preds = %str_ok762
  %44 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len771

b.grow2776:                                       ; preds = %b.app.new.len771
  %b.cap2779 = mul i64 %b.cap774, 2
  %b.cap.small780 = icmp slt i64 %b.cap2779, 16
  %b.cap.grow781 = select i1 %b.cap.small780, i64 16, i64 %b.cap2779
  %b.cap.need782 = icmp slt i64 %b.cap.grow781, %sum769
  %b.new.cap783 = select i1 %b.cap.need782, i64 %sum769, i64 %b.cap.grow781
  %b.cur.len2784 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load752, i32 0, i32 0
  %b.cur.len2785 = load i64, ptr %b.cur.len2784, align 8
  %b.cur.data2786 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load752, i32 0, i32 1
  %b.cur.data2787 = load ptr, ptr %b.cur.data2786, align 8
  %b.new.buf.len2788 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap783, i64 1)
  %sum789 = extractvalue { i64, i1 } %b.new.buf.len2788, 0
  %ovf790 = extractvalue { i64, i1 } %b.new.buf.len2788, 1
  br i1 %ovf790, label %str_overflow_abort792, label %b.new.buf.len2791

b.nogrow2777:                                     ; preds = %b.app.new.len771
  br label %b.grow_done778

b.grow_done778:                                   ; preds = %b.nogrow2777, %b.new.buf.len2791
  %app.str.data798 = getelementptr inbounds { i64, ptr }, ptr %call.res755, i32 0, i32 1
  %app.str.data799 = load ptr, ptr %app.str.data798, align 8
  %b.app.data800 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load752, i32 0, i32 1
  %b.app.data801 = load ptr, ptr %b.app.data800, align 8
  %b.app.dst802 = getelementptr i8, ptr %b.app.data801, i64 %b.app.cur.len767
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst802, ptr align 1 %app.str.data799, i64 %app.str.len758, i1 false)
  %b.app.nul803 = getelementptr i8, ptr %b.app.data801, i64 %sum769
  store i8 0, ptr %b.app.nul803, align 1
  %b.len.gep804 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load752, i32 0, i32 0
  store i64 %sum769, ptr %b.len.gep804, align 8
  br label %choice.exit53

b.new.buf.len2791:                                ; preds = %str_overflow_abort792, %b.grow2776
  %arena.cur793 = call ptr @dva_arena_current()
  %b.new.buf2794 = call ptr @dva_arena_alloc(ptr %arena.cur793, i64 %sum789)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2794, ptr align 1 %b.cur.data2787, i64 %b.cur.len2785, i1 false)
  %b.grow2.nul795 = getelementptr i8, ptr %b.new.buf2794, i64 %b.cur.len2785
  store i8 0, ptr %b.grow2.nul795, align 1
  %b.new.data2.gep796 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load752, i32 0, i32 1
  store ptr %b.new.buf2794, ptr %b.new.data2.gep796, align 8
  %b.new.cap2.gep797 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load752, i32 0, i32 2
  store i64 %b.new.cap783, ptr %b.new.cap2.gep797, align 8
  br label %b.grow_done778

str_overflow_abort792:                            ; preds = %b.grow2776
  %45 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2791

choice.case805:                                   ; preds = %choice.next750
  %b.load808 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len809 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load808, i32 0, i32 0
  %b.rn.cur.len810 = load i64, ptr %b.rn.cur.len809, align 8
  %b.rn.new.len811 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len810, i64 1)
  %sum812 = extractvalue { i64, i1 } %b.rn.new.len811, 0
  %ovf813 = extractvalue { i64, i1 } %b.rn.new.len811, 1
  br i1 %ovf813, label %str_overflow_abort815, label %b.rn.new.len814

choice.next806:                                   ; preds = %choice.next750
  %val.match854 = icmp eq i64 %var.load52, 116
  br i1 %val.match854, label %choice.case852, label %choice.next853

b.rn.new.len814:                                  ; preds = %str_overflow_abort815, %choice.case805
  %b.cap816 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load808, i32 0, i32 2
  %b.cap817 = load i64, ptr %b.cap816, align 8
  %b.need.grow818 = icmp slt i64 %b.cap817, %sum812
  br i1 %b.need.grow818, label %b.grow2819, label %b.nogrow2820

str_overflow_abort815:                            ; preds = %choice.case805
  %46 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len814

b.grow2819:                                       ; preds = %b.rn.new.len814
  %b.cap2822 = mul i64 %b.cap817, 2
  %b.cap.small823 = icmp slt i64 %b.cap2822, 16
  %b.cap.grow824 = select i1 %b.cap.small823, i64 16, i64 %b.cap2822
  %b.cap.need825 = icmp slt i64 %b.cap.grow824, %sum812
  %b.new.cap826 = select i1 %b.cap.need825, i64 %sum812, i64 %b.cap.grow824
  %b.cur.len2827 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load808, i32 0, i32 0
  %b.cur.len2828 = load i64, ptr %b.cur.len2827, align 8
  %b.cur.data2829 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load808, i32 0, i32 1
  %b.cur.data2830 = load ptr, ptr %b.cur.data2829, align 8
  %b.new.buf.len2831 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap826, i64 1)
  %sum832 = extractvalue { i64, i1 } %b.new.buf.len2831, 0
  %ovf833 = extractvalue { i64, i1 } %b.new.buf.len2831, 1
  br i1 %ovf833, label %str_overflow_abort835, label %b.new.buf.len2834

b.nogrow2820:                                     ; preds = %b.rn.new.len814
  br label %b.grow_done821

b.grow_done821:                                   ; preds = %b.nogrow2820, %b.new.buf.len2834
  %b.rn.data841 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load808, i32 0, i32 1
  %b.rn.data842 = load ptr, ptr %b.rn.data841, align 8
  %b.rn.dst843 = getelementptr i8, ptr %b.rn.data842, i64 %b.rn.cur.len810
  br i1 true, label %br.b1.85, label %br.c2.85

b.new.buf.len2834:                                ; preds = %str_overflow_abort835, %b.grow2819
  %arena.cur836 = call ptr @dva_arena_current()
  %b.new.buf2837 = call ptr @dva_arena_alloc(ptr %arena.cur836, i64 %sum832)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2837, ptr align 1 %b.cur.data2830, i64 %b.cur.len2828, i1 false)
  %b.grow2.nul838 = getelementptr i8, ptr %b.new.buf2837, i64 %b.cur.len2828
  store i8 0, ptr %b.grow2.nul838, align 1
  %b.new.data2.gep839 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load808, i32 0, i32 1
  store ptr %b.new.buf2837, ptr %b.new.data2.gep839, align 8
  %b.new.cap2.gep840 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load808, i32 0, i32 2
  store i64 %b.new.cap826, ptr %b.new.cap2.gep840, align 8
  br label %b.grow_done821

str_overflow_abort835:                            ; preds = %b.grow2819
  %47 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2834

br.b1.85:                                         ; preds = %b.grow_done821
  store i8 10, ptr %b.rn.dst843, align 1
  br label %br.done.85

br.c2.85:                                         ; preds = %b.grow_done821
  br i1 true, label %br.b2.85, label %br.c3.85

br.b2.85:                                         ; preds = %br.c2.85
  store i8 -64, ptr %b.rn.dst843, align 1
  %br.dst1844 = getelementptr i8, ptr %b.rn.dst843, i64 1
  store i8 -118, ptr %br.dst1844, align 1
  br label %br.done.85

br.c3.85:                                         ; preds = %br.c2.85
  br i1 true, label %br.b3.85, label %br.b4.85

br.b3.85:                                         ; preds = %br.c3.85
  store i8 -32, ptr %b.rn.dst843, align 1
  %br.dst1.3845 = getelementptr i8, ptr %b.rn.dst843, i64 1
  store i8 -128, ptr %br.dst1.3845, align 1
  %br.dst2.3846 = getelementptr i8, ptr %b.rn.dst843, i64 2
  store i8 -118, ptr %br.dst2.3846, align 1
  br label %br.done.85

br.b4.85:                                         ; preds = %br.c3.85
  store i8 -16, ptr %b.rn.dst843, align 1
  %br.dst1.4847 = getelementptr i8, ptr %b.rn.dst843, i64 1
  store i8 -128, ptr %br.dst1.4847, align 1
  %br.dst2.4848 = getelementptr i8, ptr %b.rn.dst843, i64 2
  store i8 -128, ptr %br.dst2.4848, align 1
  %br.dst3.4849 = getelementptr i8, ptr %b.rn.dst843, i64 3
  store i8 -118, ptr %br.dst3.4849, align 1
  br label %br.done.85

br.done.85:                                       ; preds = %br.b4.85, %br.b3.85, %br.b2.85, %br.b1.85
  %br.nul850 = getelementptr i8, ptr %b.rn.data842, i64 %sum812
  store i8 0, ptr %br.nul850, align 1
  %b.len.gep851 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load808, i32 0, i32 0
  store i64 %sum812, ptr %b.len.gep851, align 8
  br label %choice.exit53

choice.case852:                                   ; preds = %choice.next806
  %b.load855 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len856 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load855, i32 0, i32 0
  %b.rn.cur.len857 = load i64, ptr %b.rn.cur.len856, align 8
  %b.rn.new.len858 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len857, i64 1)
  %sum859 = extractvalue { i64, i1 } %b.rn.new.len858, 0
  %ovf860 = extractvalue { i64, i1 } %b.rn.new.len858, 1
  br i1 %ovf860, label %str_overflow_abort862, label %b.rn.new.len861

choice.next853:                                   ; preds = %choice.next806
  %val.match901 = icmp eq i64 %var.load52, 37
  br i1 %val.match901, label %choice.case899, label %choice.next900

b.rn.new.len861:                                  ; preds = %str_overflow_abort862, %choice.case852
  %b.cap863 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load855, i32 0, i32 2
  %b.cap864 = load i64, ptr %b.cap863, align 8
  %b.need.grow865 = icmp slt i64 %b.cap864, %sum859
  br i1 %b.need.grow865, label %b.grow2866, label %b.nogrow2867

str_overflow_abort862:                            ; preds = %choice.case852
  %48 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len861

b.grow2866:                                       ; preds = %b.rn.new.len861
  %b.cap2869 = mul i64 %b.cap864, 2
  %b.cap.small870 = icmp slt i64 %b.cap2869, 16
  %b.cap.grow871 = select i1 %b.cap.small870, i64 16, i64 %b.cap2869
  %b.cap.need872 = icmp slt i64 %b.cap.grow871, %sum859
  %b.new.cap873 = select i1 %b.cap.need872, i64 %sum859, i64 %b.cap.grow871
  %b.cur.len2874 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load855, i32 0, i32 0
  %b.cur.len2875 = load i64, ptr %b.cur.len2874, align 8
  %b.cur.data2876 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load855, i32 0, i32 1
  %b.cur.data2877 = load ptr, ptr %b.cur.data2876, align 8
  %b.new.buf.len2878 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap873, i64 1)
  %sum879 = extractvalue { i64, i1 } %b.new.buf.len2878, 0
  %ovf880 = extractvalue { i64, i1 } %b.new.buf.len2878, 1
  br i1 %ovf880, label %str_overflow_abort882, label %b.new.buf.len2881

b.nogrow2867:                                     ; preds = %b.rn.new.len861
  br label %b.grow_done868

b.grow_done868:                                   ; preds = %b.nogrow2867, %b.new.buf.len2881
  %b.rn.data888 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load855, i32 0, i32 1
  %b.rn.data889 = load ptr, ptr %b.rn.data888, align 8
  %b.rn.dst890 = getelementptr i8, ptr %b.rn.data889, i64 %b.rn.cur.len857
  br i1 true, label %br.b1.86, label %br.c2.86

b.new.buf.len2881:                                ; preds = %str_overflow_abort882, %b.grow2866
  %arena.cur883 = call ptr @dva_arena_current()
  %b.new.buf2884 = call ptr @dva_arena_alloc(ptr %arena.cur883, i64 %sum879)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2884, ptr align 1 %b.cur.data2877, i64 %b.cur.len2875, i1 false)
  %b.grow2.nul885 = getelementptr i8, ptr %b.new.buf2884, i64 %b.cur.len2875
  store i8 0, ptr %b.grow2.nul885, align 1
  %b.new.data2.gep886 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load855, i32 0, i32 1
  store ptr %b.new.buf2884, ptr %b.new.data2.gep886, align 8
  %b.new.cap2.gep887 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load855, i32 0, i32 2
  store i64 %b.new.cap873, ptr %b.new.cap2.gep887, align 8
  br label %b.grow_done868

str_overflow_abort882:                            ; preds = %b.grow2866
  %49 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2881

br.b1.86:                                         ; preds = %b.grow_done868
  store i8 9, ptr %b.rn.dst890, align 1
  br label %br.done.86

br.c2.86:                                         ; preds = %b.grow_done868
  br i1 true, label %br.b2.86, label %br.c3.86

br.b2.86:                                         ; preds = %br.c2.86
  store i8 -64, ptr %b.rn.dst890, align 1
  %br.dst1891 = getelementptr i8, ptr %b.rn.dst890, i64 1
  store i8 -119, ptr %br.dst1891, align 1
  br label %br.done.86

br.c3.86:                                         ; preds = %br.c2.86
  br i1 true, label %br.b3.86, label %br.b4.86

br.b3.86:                                         ; preds = %br.c3.86
  store i8 -32, ptr %b.rn.dst890, align 1
  %br.dst1.3892 = getelementptr i8, ptr %b.rn.dst890, i64 1
  store i8 -128, ptr %br.dst1.3892, align 1
  %br.dst2.3893 = getelementptr i8, ptr %b.rn.dst890, i64 2
  store i8 -119, ptr %br.dst2.3893, align 1
  br label %br.done.86

br.b4.86:                                         ; preds = %br.c3.86
  store i8 -16, ptr %b.rn.dst890, align 1
  %br.dst1.4894 = getelementptr i8, ptr %b.rn.dst890, i64 1
  store i8 -128, ptr %br.dst1.4894, align 1
  %br.dst2.4895 = getelementptr i8, ptr %b.rn.dst890, i64 2
  store i8 -128, ptr %br.dst2.4895, align 1
  %br.dst3.4896 = getelementptr i8, ptr %b.rn.dst890, i64 3
  store i8 -119, ptr %br.dst3.4896, align 1
  br label %br.done.86

br.done.86:                                       ; preds = %br.b4.86, %br.b3.86, %br.b2.86, %br.b1.86
  %br.nul897 = getelementptr i8, ptr %b.rn.data889, i64 %sum859
  store i8 0, ptr %br.nul897, align 1
  %b.len.gep898 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load855, i32 0, i32 0
  store i64 %sum859, ptr %b.len.gep898, align 8
  br label %choice.exit53

choice.case899:                                   ; preds = %choice.next853
  %b.load902 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len903 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load902, i32 0, i32 0
  %b.rn.cur.len904 = load i64, ptr %b.rn.cur.len903, align 8
  %b.rn.new.len905 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len904, i64 1)
  %sum906 = extractvalue { i64, i1 } %b.rn.new.len905, 0
  %ovf907 = extractvalue { i64, i1 } %b.rn.new.len905, 1
  br i1 %ovf907, label %str_overflow_abort909, label %b.rn.new.len908

choice.next900:                                   ; preds = %choice.next853
  %b.load946 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len947 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load946, i32 0, i32 0
  %b.rn.cur.len948 = load i64, ptr %b.rn.cur.len947, align 8
  %b.rn.new.len949 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len948, i64 1)
  %sum950 = extractvalue { i64, i1 } %b.rn.new.len949, 0
  %ovf951 = extractvalue { i64, i1 } %b.rn.new.len949, 1
  br i1 %ovf951, label %str_overflow_abort953, label %b.rn.new.len952

b.rn.new.len908:                                  ; preds = %str_overflow_abort909, %choice.case899
  %b.cap910 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load902, i32 0, i32 2
  %b.cap911 = load i64, ptr %b.cap910, align 8
  %b.need.grow912 = icmp slt i64 %b.cap911, %sum906
  br i1 %b.need.grow912, label %b.grow2913, label %b.nogrow2914

str_overflow_abort909:                            ; preds = %choice.case899
  %50 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len908

b.grow2913:                                       ; preds = %b.rn.new.len908
  %b.cap2916 = mul i64 %b.cap911, 2
  %b.cap.small917 = icmp slt i64 %b.cap2916, 16
  %b.cap.grow918 = select i1 %b.cap.small917, i64 16, i64 %b.cap2916
  %b.cap.need919 = icmp slt i64 %b.cap.grow918, %sum906
  %b.new.cap920 = select i1 %b.cap.need919, i64 %sum906, i64 %b.cap.grow918
  %b.cur.len2921 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load902, i32 0, i32 0
  %b.cur.len2922 = load i64, ptr %b.cur.len2921, align 8
  %b.cur.data2923 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load902, i32 0, i32 1
  %b.cur.data2924 = load ptr, ptr %b.cur.data2923, align 8
  %b.new.buf.len2925 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap920, i64 1)
  %sum926 = extractvalue { i64, i1 } %b.new.buf.len2925, 0
  %ovf927 = extractvalue { i64, i1 } %b.new.buf.len2925, 1
  br i1 %ovf927, label %str_overflow_abort929, label %b.new.buf.len2928

b.nogrow2914:                                     ; preds = %b.rn.new.len908
  br label %b.grow_done915

b.grow_done915:                                   ; preds = %b.nogrow2914, %b.new.buf.len2928
  %b.rn.data935 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load902, i32 0, i32 1
  %b.rn.data936 = load ptr, ptr %b.rn.data935, align 8
  %b.rn.dst937 = getelementptr i8, ptr %b.rn.data936, i64 %b.rn.cur.len904
  br i1 true, label %br.b1.87, label %br.c2.87

b.new.buf.len2928:                                ; preds = %str_overflow_abort929, %b.grow2913
  %arena.cur930 = call ptr @dva_arena_current()
  %b.new.buf2931 = call ptr @dva_arena_alloc(ptr %arena.cur930, i64 %sum926)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2931, ptr align 1 %b.cur.data2924, i64 %b.cur.len2922, i1 false)
  %b.grow2.nul932 = getelementptr i8, ptr %b.new.buf2931, i64 %b.cur.len2922
  store i8 0, ptr %b.grow2.nul932, align 1
  %b.new.data2.gep933 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load902, i32 0, i32 1
  store ptr %b.new.buf2931, ptr %b.new.data2.gep933, align 8
  %b.new.cap2.gep934 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load902, i32 0, i32 2
  store i64 %b.new.cap920, ptr %b.new.cap2.gep934, align 8
  br label %b.grow_done915

str_overflow_abort929:                            ; preds = %b.grow2913
  %51 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2928

br.b1.87:                                         ; preds = %b.grow_done915
  store i8 37, ptr %b.rn.dst937, align 1
  br label %br.done.87

br.c2.87:                                         ; preds = %b.grow_done915
  br i1 true, label %br.b2.87, label %br.c3.87

br.b2.87:                                         ; preds = %br.c2.87
  store i8 -64, ptr %b.rn.dst937, align 1
  %br.dst1938 = getelementptr i8, ptr %b.rn.dst937, i64 1
  store i8 -91, ptr %br.dst1938, align 1
  br label %br.done.87

br.c3.87:                                         ; preds = %br.c2.87
  br i1 true, label %br.b3.87, label %br.b4.87

br.b3.87:                                         ; preds = %br.c3.87
  store i8 -32, ptr %b.rn.dst937, align 1
  %br.dst1.3939 = getelementptr i8, ptr %b.rn.dst937, i64 1
  store i8 -128, ptr %br.dst1.3939, align 1
  %br.dst2.3940 = getelementptr i8, ptr %b.rn.dst937, i64 2
  store i8 -91, ptr %br.dst2.3940, align 1
  br label %br.done.87

br.b4.87:                                         ; preds = %br.c3.87
  store i8 -16, ptr %b.rn.dst937, align 1
  %br.dst1.4941 = getelementptr i8, ptr %b.rn.dst937, i64 1
  store i8 -128, ptr %br.dst1.4941, align 1
  %br.dst2.4942 = getelementptr i8, ptr %b.rn.dst937, i64 2
  store i8 -128, ptr %br.dst2.4942, align 1
  %br.dst3.4943 = getelementptr i8, ptr %b.rn.dst937, i64 3
  store i8 -91, ptr %br.dst3.4943, align 1
  br label %br.done.87

br.done.87:                                       ; preds = %br.b4.87, %br.b3.87, %br.b2.87, %br.b1.87
  %br.nul944 = getelementptr i8, ptr %b.rn.data936, i64 %sum906
  store i8 0, ptr %br.nul944, align 1
  %b.len.gep945 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load902, i32 0, i32 0
  store i64 %sum906, ptr %b.len.gep945, align 8
  br label %choice.exit53

b.rn.new.len952:                                  ; preds = %str_overflow_abort953, %choice.next900
  %b.cap954 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load946, i32 0, i32 2
  %b.cap955 = load i64, ptr %b.cap954, align 8
  %b.need.grow956 = icmp slt i64 %b.cap955, %sum950
  br i1 %b.need.grow956, label %b.grow2957, label %b.nogrow2958

str_overflow_abort953:                            ; preds = %choice.next900
  %52 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len952

b.grow2957:                                       ; preds = %b.rn.new.len952
  %b.cap2960 = mul i64 %b.cap955, 2
  %b.cap.small961 = icmp slt i64 %b.cap2960, 16
  %b.cap.grow962 = select i1 %b.cap.small961, i64 16, i64 %b.cap2960
  %b.cap.need963 = icmp slt i64 %b.cap.grow962, %sum950
  %b.new.cap964 = select i1 %b.cap.need963, i64 %sum950, i64 %b.cap.grow962
  %b.cur.len2965 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load946, i32 0, i32 0
  %b.cur.len2966 = load i64, ptr %b.cur.len2965, align 8
  %b.cur.data2967 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load946, i32 0, i32 1
  %b.cur.data2968 = load ptr, ptr %b.cur.data2967, align 8
  %b.new.buf.len2969 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap964, i64 1)
  %sum970 = extractvalue { i64, i1 } %b.new.buf.len2969, 0
  %ovf971 = extractvalue { i64, i1 } %b.new.buf.len2969, 1
  br i1 %ovf971, label %str_overflow_abort973, label %b.new.buf.len2972

b.nogrow2958:                                     ; preds = %b.rn.new.len952
  br label %b.grow_done959

b.grow_done959:                                   ; preds = %b.nogrow2958, %b.new.buf.len2972
  %b.rn.data979 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load946, i32 0, i32 1
  %b.rn.data980 = load ptr, ptr %b.rn.data979, align 8
  %b.rn.dst981 = getelementptr i8, ptr %b.rn.data980, i64 %b.rn.cur.len948
  br i1 true, label %br.b1.88, label %br.c2.88

b.new.buf.len2972:                                ; preds = %str_overflow_abort973, %b.grow2957
  %arena.cur974 = call ptr @dva_arena_current()
  %b.new.buf2975 = call ptr @dva_arena_alloc(ptr %arena.cur974, i64 %sum970)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2975, ptr align 1 %b.cur.data2968, i64 %b.cur.len2966, i1 false)
  %b.grow2.nul976 = getelementptr i8, ptr %b.new.buf2975, i64 %b.cur.len2966
  store i8 0, ptr %b.grow2.nul976, align 1
  %b.new.data2.gep977 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load946, i32 0, i32 1
  store ptr %b.new.buf2975, ptr %b.new.data2.gep977, align 8
  %b.new.cap2.gep978 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load946, i32 0, i32 2
  store i64 %b.new.cap964, ptr %b.new.cap2.gep978, align 8
  br label %b.grow_done959

str_overflow_abort973:                            ; preds = %b.grow2957
  %53 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2972

br.b1.88:                                         ; preds = %b.grow_done959
  store i8 37, ptr %b.rn.dst981, align 1
  br label %br.done.88

br.c2.88:                                         ; preds = %b.grow_done959
  br i1 true, label %br.b2.88, label %br.c3.88

br.b2.88:                                         ; preds = %br.c2.88
  store i8 -64, ptr %b.rn.dst981, align 1
  %br.dst1982 = getelementptr i8, ptr %b.rn.dst981, i64 1
  store i8 -91, ptr %br.dst1982, align 1
  br label %br.done.88

br.c3.88:                                         ; preds = %br.c2.88
  br i1 true, label %br.b3.88, label %br.b4.88

br.b3.88:                                         ; preds = %br.c3.88
  store i8 -32, ptr %b.rn.dst981, align 1
  %br.dst1.3983 = getelementptr i8, ptr %b.rn.dst981, i64 1
  store i8 -128, ptr %br.dst1.3983, align 1
  %br.dst2.3984 = getelementptr i8, ptr %b.rn.dst981, i64 2
  store i8 -91, ptr %br.dst2.3984, align 1
  br label %br.done.88

br.b4.88:                                         ; preds = %br.c3.88
  store i8 -16, ptr %b.rn.dst981, align 1
  %br.dst1.4985 = getelementptr i8, ptr %b.rn.dst981, i64 1
  store i8 -128, ptr %br.dst1.4985, align 1
  %br.dst2.4986 = getelementptr i8, ptr %b.rn.dst981, i64 2
  store i8 -128, ptr %br.dst2.4986, align 1
  %br.dst3.4987 = getelementptr i8, ptr %b.rn.dst981, i64 3
  store i8 -91, ptr %br.dst3.4987, align 1
  br label %br.done.88

br.done.88:                                       ; preds = %br.b4.88, %br.b3.88, %br.b2.88, %br.b1.88
  %br.nul988 = getelementptr i8, ptr %b.rn.data980, i64 %sum950
  store i8 0, ptr %br.nul988, align 1
  %b.len.gep989 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load946, i32 0, i32 0
  store i64 %sum950, ptr %b.len.gep989, align 8
  %b.load990 = load ptr, ptr %var.b, align 8
  %var.load991 = load i64, ptr %var.spec, align 8
  %b.b.ge0992 = icmp sge i64 %var.load991, 0
  %b.b.le255993 = icmp sle i64 %var.load991, 255
  %b.byte.range994 = and i1 %b.b.ge0992, %b.b.le255993
  br i1 %b.byte.range994, label %b.byte_ok995, label %b.byte_err996

b.byte_ok995:                                     ; preds = %b.byte_err996, %br.done.88
  %b.byte.i8997 = trunc i64 %var.load991 to i8
  %b.len998 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load990, i32 0, i32 0
  %b.len999 = load i64, ptr %b.len998, align 8
  %b.cap1000 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load990, i32 0, i32 2
  %b.cap1001 = load i64, ptr %b.cap1000, align 8
  %b.data1002 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load990, i32 0, i32 1
  %b.data1003 = load ptr, ptr %b.data1002, align 8
  %b.needs.grow1004 = icmp eq i64 %b.len999, %b.cap1001
  br i1 %b.needs.grow1004, label %b.grow1005, label %b.nogrow1006

b.byte_err996:                                    ; preds = %br.done.88
  %54 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok995

b.grow1005:                                       ; preds = %b.byte_ok995
  %b.cap21008 = mul i64 %b.cap1001, 2
  %b.cap.small1009 = icmp slt i64 %b.cap21008, 16
  %b.new.cap1010 = select i1 %b.cap.small1009, i64 16, i64 %b.cap21008
  %b.new.buf.len1011 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1010, i64 1)
  %sum1012 = extractvalue { i64, i1 } %b.new.buf.len1011, 0
  %ovf1013 = extractvalue { i64, i1 } %b.new.buf.len1011, 1
  br i1 %ovf1013, label %str_overflow_abort1015, label %b.new.buf.len1014

b.nogrow1006:                                     ; preds = %b.byte_ok995
  br label %b.push_done1007

b.push_done1007:                                  ; preds = %b.nogrow1006, %b.new.buf.len1014
  %b.cur.data1021 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load990, i32 0, i32 1
  %b.cur.data1022 = load ptr, ptr %b.cur.data1021, align 8
  %b.cur.len1023 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load990, i32 0, i32 0
  %b.cur.len1024 = load i64, ptr %b.cur.len1023, align 8
  %b.byte.gep1025 = getelementptr i8, ptr %b.cur.data1022, i64 %b.cur.len1024
  store i8 %b.byte.i8997, ptr %b.byte.gep1025, align 1
  %b.next.len1026 = add i64 %b.cur.len1024, 1
  %b.nul1027 = getelementptr i8, ptr %b.cur.data1022, i64 %b.next.len1026
  store i8 0, ptr %b.nul1027, align 1
  %b.len.gep1028 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load990, i32 0, i32 0
  store i64 %b.next.len1026, ptr %b.len.gep1028, align 8
  br label %choice.exit53

b.new.buf.len1014:                                ; preds = %str_overflow_abort1015, %b.grow1005
  %arena.cur1016 = call ptr @dva_arena_current()
  %b.new.buf1017 = call ptr @dva_arena_alloc(ptr %arena.cur1016, i64 %sum1012)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf1017, ptr align 1 %b.data1003, i64 %b.len999, i1 false)
  %b.grow.nul1018 = getelementptr i8, ptr %b.new.buf1017, i64 %b.len999
  store i8 0, ptr %b.grow.nul1018, align 1
  %b.new.data.gep1019 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load990, i32 0, i32 1
  store ptr %b.new.buf1017, ptr %b.new.data.gep1019, align 8
  %b.new.cap.gep1020 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load990, i32 0, i32 2
  store i64 %b.new.cap1010, ptr %b.new.cap.gep1020, align 8
  br label %b.push_done1007

str_overflow_abort1015:                           ; preds = %b.grow1005
  %55 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len1014

b.byte_ok1036:                                    ; preds = %b.byte_err1037, %choice.else
  %b.byte.i81038 = trunc i64 %var.load1032 to i8
  %b.len1039 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1031, i32 0, i32 0
  %b.len1040 = load i64, ptr %b.len1039, align 8
  %b.cap1041 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1031, i32 0, i32 2
  %b.cap1042 = load i64, ptr %b.cap1041, align 8
  %b.data1043 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1031, i32 0, i32 1
  %b.data1044 = load ptr, ptr %b.data1043, align 8
  %b.needs.grow1045 = icmp eq i64 %b.len1040, %b.cap1042
  br i1 %b.needs.grow1045, label %b.grow1046, label %b.nogrow1047

b.byte_err1037:                                   ; preds = %choice.else
  %56 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok1036

b.grow1046:                                       ; preds = %b.byte_ok1036
  %b.cap21049 = mul i64 %b.cap1042, 2
  %b.cap.small1050 = icmp slt i64 %b.cap21049, 16
  %b.new.cap1051 = select i1 %b.cap.small1050, i64 16, i64 %b.cap21049
  %b.new.buf.len1052 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1051, i64 1)
  %sum1053 = extractvalue { i64, i1 } %b.new.buf.len1052, 0
  %ovf1054 = extractvalue { i64, i1 } %b.new.buf.len1052, 1
  br i1 %ovf1054, label %str_overflow_abort1056, label %b.new.buf.len1055

b.nogrow1047:                                     ; preds = %b.byte_ok1036
  br label %b.push_done1048

b.push_done1048:                                  ; preds = %b.nogrow1047, %b.new.buf.len1055
  %b.cur.data1062 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1031, i32 0, i32 1
  %b.cur.data1063 = load ptr, ptr %b.cur.data1062, align 8
  %b.cur.len1064 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1031, i32 0, i32 0
  %b.cur.len1065 = load i64, ptr %b.cur.len1064, align 8
  %b.byte.gep1066 = getelementptr i8, ptr %b.cur.data1063, i64 %b.cur.len1065
  store i8 %b.byte.i81038, ptr %b.byte.gep1066, align 1
  %b.next.len1067 = add i64 %b.cur.len1065, 1
  %b.nul1068 = getelementptr i8, ptr %b.cur.data1063, i64 %b.next.len1067
  store i8 0, ptr %b.nul1068, align 1
  %b.len.gep1069 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1031, i32 0, i32 0
  store i64 %b.next.len1067, ptr %b.len.gep1069, align 8
  %var.load1070 = load i64, ptr %"var.i'", align 8
  %addtmp1071 = add i64 %var.load1070, 1
  store i64 %addtmp1071, ptr %"var.i'", align 8
  br label %choice.exit28

b.new.buf.len1055:                                ; preds = %str_overflow_abort1056, %b.grow1046
  %arena.cur1057 = call ptr @dva_arena_current()
  %b.new.buf1058 = call ptr @dva_arena_alloc(ptr %arena.cur1057, i64 %sum1053)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf1058, ptr align 1 %b.data1044, i64 %b.len1040, i1 false)
  %b.grow.nul1059 = getelementptr i8, ptr %b.new.buf1058, i64 %b.len1040
  store i8 0, ptr %b.grow.nul1059, align 1
  %b.new.data.gep1060 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1031, i32 0, i32 1
  store ptr %b.new.buf1058, ptr %b.new.data.gep1060, align 8
  %b.new.cap.gep1061 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load1031, i32 0, i32 2
  store i64 %b.new.cap1051, ptr %b.new.cap.gep1061, align 8
  br label %b.push_done1048

str_overflow_abort1056:                           ; preds = %b.grow1046
  %57 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len1055

b.freeze.check:                                   ; preds = %loop.exit.81
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data1074, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data1074, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data1074, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len1073, 1
  %arena.cur1075 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur1075, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data1074, i64 %b.freeze.len1073, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len1073
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.81
  %b.freeze.data1076 = phi ptr [ %b.freeze.data1074, %loop.exit.81 ], [ %b.freeze.data1074, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur1077 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur1077, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len1073, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data1076, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1072, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1072, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1072, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

declare ptr @"str::from_int"(i64) #1

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
