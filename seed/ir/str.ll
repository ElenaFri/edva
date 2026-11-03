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
@clo.const = internal constant { ptr, ptr } { ptr @"str::is_digit", ptr null }
@"var.str::is_digit" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"str::is_alpha", ptr null }
@"var.str::is_alpha" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"str::is_alnum", ptr null }
@"var.str::is_alnum" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"str::is_ws", ptr null }
@"var.str::is_ws" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"str::is_hex", ptr null }
@"var.str::is_hex" = global ptr null
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.5 = internal constant { ptr, ptr } { ptr @"str::from_byte", ptr null }
@"var.str::from_byte" = global ptr null
@str.0 = internal unnamed_addr constant [2 x i8] c"0\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.0 }
@str.1 = internal unnamed_addr constant [21 x i8] c"-9223372036854775808\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 20, ptr @str.1 }
@div_zero_msg = internal unnamed_addr constant [33 x i8] c"E4012: integer division by zero\0A\00"
@div_ovf_msg = internal unnamed_addr constant [56 x i8] c"E4013: signed integer division overflow (INT_MIN / -1)\0A\00"
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.6 = internal constant { ptr, ptr } { ptr @"str::from_int", ptr null }
@"var.str::from_int" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"str::from_u64", ptr null }
@"var.str::from_u64" = global ptr null
@str.2 = internal unnamed_addr constant [4 x i8] c"nan\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.2 }
@str.3 = internal unnamed_addr constant [4 x i8] c"inf\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.3 }
@str.4 = internal unnamed_addr constant [5 x i8] c"-inf\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.4 }
@str.5 = internal unnamed_addr constant [3 x i8] c"-0\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.5 }
@str.6 = internal unnamed_addr constant [3 x i8] c"0.\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.6 }
@str.7 = internal unnamed_addr constant [2 x i8] c"-\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.7 }
@str.8 = internal unnamed_addr constant [2 x i8] c"e\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.8 }
@clo.const.8 = internal constant { ptr, ptr } { ptr @"str::from_float", ptr null }
@"var.str::from_float" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"str::cmp", ptr null }
@"var.str::cmp" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"str::lt", ptr null }
@"var.str::lt" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"str::to_int", ptr null }
@"var.str::to_int" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"str::to_hex", ptr null }
@"var.str::to_hex" = global ptr null
@str.9 = internal unnamed_addr constant [4 x i8] c"0x0\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.9 }
@clo.const.13 = internal constant { ptr, ptr } { ptr @"str::hex_to_str", ptr null }
@"var.str::hex_to_str" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"str::is_empty", ptr null }
@"var.str::is_empty" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"str::is_blank", ptr null }
@"var.str::is_blank" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"str::starts_with", ptr null }
@"var.str::starts_with" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"str::ends_with", ptr null }
@"var.str::ends_with" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"str::find_from", ptr null }
@"var.str::find_from" = global ptr null
@clo.const.19 = internal constant { ptr, ptr } { ptr @"str::find", ptr null }
@"var.str::find" = global ptr null
@clo.const.20 = internal constant { ptr, ptr } { ptr @"str::rfind", ptr null }
@"var.str::rfind" = global ptr null
@clo.const.21 = internal constant { ptr, ptr } { ptr @"str::contains", ptr null }
@"var.str::contains" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"str::count", ptr null }
@"var.str::count" = global ptr null
@clo.const.23 = internal constant { ptr, ptr } { ptr @"str::trim_start", ptr null }
@"var.str::trim_start" = global ptr null
@clo.const.24 = internal constant { ptr, ptr } { ptr @"str::trim_end", ptr null }
@"var.str::trim_end" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"str::trim", ptr null }
@"var.str::trim" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"str::trim_prefix", ptr null }
@"var.str::trim_prefix" = global ptr null
@clo.const.27 = internal constant { ptr, ptr } { ptr @"str::trim_suffix", ptr null }
@"var.str::trim_suffix" = global ptr null
@clo.const.28 = internal constant { ptr, ptr } { ptr @"str::split_once", ptr null }
@"var.str::split_once" = global ptr null
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@clo.const.29 = internal constant { ptr, ptr } { ptr @"str::split", ptr null }
@"var.str::split" = global ptr null
@clo.const.30 = internal constant { ptr, ptr } { ptr @"str::lines", ptr null }
@"var.str::lines" = global ptr null
@clo.const.31 = internal constant { ptr, ptr } { ptr @"str::words", ptr null }
@"var.str::words" = global ptr null
@str.10 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.10 }
@str.11 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.11 }
@str.12 = internal unnamed_addr constant [8 x i8] c"str.dva\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.12 }
@str.13 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.13 }
@dva_thread_rec = external thread_local global ptr
@clo.const.32 = internal constant { ptr, ptr } { ptr @"str::join", ptr null }
@"var.str::join" = global ptr null
@clo.const.33 = internal constant { ptr, ptr } { ptr @"str::lower", ptr null }
@"var.str::lower" = global ptr null
@str.14 = internal unnamed_addr constant [3 x i8] c"SS\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.14 }
@clo.const.34 = internal constant { ptr, ptr } { ptr @"str::upper", ptr null }
@"var.str::upper" = global ptr null
@clo.const.35 = internal constant { ptr, ptr } { ptr @"str::repeat", ptr null }
@"var.str::repeat" = global ptr null
@clo.const.36 = internal constant { ptr, ptr } { ptr @"str::pad_left", ptr null }
@"var.str::pad_left" = global ptr null
@clo.const.37 = internal constant { ptr, ptr } { ptr @"str::pad_right", ptr null }
@"var.str::pad_right" = global ptr null
@clo.const.38 = internal constant { ptr, ptr } { ptr @"str::reverse", ptr null }
@"var.str::reverse" = global ptr null
@clo.const.39 = internal constant { ptr, ptr } { ptr @"str::replace_first", ptr null }
@"var.str::replace_first" = global ptr null
@clo.const.40 = internal constant { ptr, ptr } { ptr @"str::replace", ptr null }
@"var.str::replace" = global ptr null
@clo.const.41 = internal constant { ptr, ptr } { ptr @"str::parse_int", ptr null }
@"var.str::parse_int" = global ptr null
@clo.const.42 = internal constant { ptr, ptr } { ptr @"str::parse_float", ptr null }
@"var.str::parse_float" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_str, ptr null }]

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

define internal void @__dva_global_init_str() #1 {
entry:
  store ptr @clo.const, ptr @"var.str::is_digit", align 8
  store ptr @clo.const.1, ptr @"var.str::is_alpha", align 8
  store ptr @clo.const.2, ptr @"var.str::is_alnum", align 8
  store ptr @clo.const.3, ptr @"var.str::is_ws", align 8
  store ptr @clo.const.4, ptr @"var.str::is_hex", align 8
  store ptr @clo.const.5, ptr @"var.str::from_byte", align 8
  store ptr @clo.const.6, ptr @"var.str::from_int", align 8
  store ptr @clo.const.7, ptr @"var.str::from_u64", align 8
  store ptr @clo.const.8, ptr @"var.str::from_float", align 8
  store ptr @clo.const.9, ptr @"var.str::cmp", align 8
  store ptr @clo.const.10, ptr @"var.str::lt", align 8
  store ptr @clo.const.11, ptr @"var.str::to_int", align 8
  store ptr @clo.const.12, ptr @"var.str::to_hex", align 8
  store ptr @clo.const.13, ptr @"var.str::hex_to_str", align 8
  store ptr @clo.const.14, ptr @"var.str::is_empty", align 8
  store ptr @clo.const.15, ptr @"var.str::is_blank", align 8
  store ptr @clo.const.16, ptr @"var.str::starts_with", align 8
  store ptr @clo.const.17, ptr @"var.str::ends_with", align 8
  store ptr @clo.const.18, ptr @"var.str::find_from", align 8
  store ptr @clo.const.19, ptr @"var.str::find", align 8
  store ptr @clo.const.20, ptr @"var.str::rfind", align 8
  store ptr @clo.const.21, ptr @"var.str::contains", align 8
  store ptr @clo.const.22, ptr @"var.str::count", align 8
  store ptr @clo.const.23, ptr @"var.str::trim_start", align 8
  store ptr @clo.const.24, ptr @"var.str::trim_end", align 8
  store ptr @clo.const.25, ptr @"var.str::trim", align 8
  store ptr @clo.const.26, ptr @"var.str::trim_prefix", align 8
  store ptr @clo.const.27, ptr @"var.str::trim_suffix", align 8
  store ptr @clo.const.28, ptr @"var.str::split_once", align 8
  store ptr @clo.const.29, ptr @"var.str::split", align 8
  store ptr @clo.const.30, ptr @"var.str::lines", align 8
  store ptr @clo.const.31, ptr @"var.str::words", align 8
  store ptr @clo.const.32, ptr @"var.str::join", align 8
  store ptr @clo.const.33, ptr @"var.str::lower", align 8
  store ptr @clo.const.34, ptr @"var.str::upper", align 8
  store ptr @clo.const.35, ptr @"var.str::repeat", align 8
  store ptr @clo.const.36, ptr @"var.str::pad_left", align 8
  store ptr @clo.const.37, ptr @"var.str::pad_right", align 8
  store ptr @clo.const.38, ptr @"var.str::reverse", align 8
  store ptr @clo.const.39, ptr @"var.str::replace_first", align 8
  store ptr @clo.const.40, ptr @"var.str::replace", align 8
  store ptr @clo.const.41, ptr @"var.str::parse_int", align 8
  store ptr @clo.const.42, ptr @"var.str::parse_float", align 8
  ret void
}

define i1 @"str::is_digit"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"ascii::is_digit"(i64 %var.load)
  ret i1 %call.res
}

declare i1 @"ascii::is_digit"(i64) #1

define i1 @"str::is_alpha"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"ascii::is_alpha"(i64 %var.load)
  ret i1 %call.res
}

declare i1 @"ascii::is_alpha"(i64) #1

define i1 @"str::is_alnum"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"ascii::is_alnum"(i64 %var.load)
  ret i1 %call.res
}

declare i1 @"ascii::is_alnum"(i64) #1

define i1 @"str::is_ws"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %val.match = icmp eq i64 %var.load, 32
  %val.match1 = icmp eq i64 %var.load, 9
  %case.or = or i1 %val.match, %val.match1
  %val.match2 = icmp eq i64 %var.load, 10
  %case.or3 = or i1 %case.or, %val.match2
  %val.match4 = icmp eq i64 %var.load, 13
  %case.or5 = or i1 %case.or3, %val.match4
  br i1 %case.or5, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define i1 @"str::is_hex"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"ascii::is_hex"(i64 %var.load)
  ret i1 %call.res
}

declare i1 @"ascii::is_hex"(i64) #1

define ptr @"str::from_byte"(i64 %0) #1 {
entry:
  %var.out = alloca ptr, align 8
  %var.b = alloca i64, align 8
  store i64 %0, ptr %var.b, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1, i64 1)
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
  store i64 1, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.out, align 8
  %b.load = load ptr, ptr %var.out, align 8
  %var.load = load i64, ptr %var.b, align 8
  %b.b.ge0 = icmp sge i64 %var.load, 0
  %b.b.le255 = icmp sle i64 %var.load, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

str_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

b.byte_ok:                                        ; preds = %b.byte_err, %b.buf.len1
  %b.byte.i8 = trunc i64 %var.load to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len3 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap4 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data5 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len3, %b.cap4
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %b.buf.len1
  %2 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap4, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum6 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf7 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf7, label %str_overflow_abort9, label %b.new.buf.len8

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len8
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data11 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len12 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data11, i64 %b.cur.len12
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len12, 1
  %b.nul = getelementptr i8, ptr %b.cur.data11, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep13 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep13, align 8
  %var.load14 = load ptr, ptr %var.out, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load14, i32 0, i32 0
  %b.freeze.len15 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load14, i32 0, i32 1
  %b.freeze.data16 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.new.buf.len8:                                   ; preds = %str_overflow_abort9, %b.grow
  %arena.cur10 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 %sum6)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data5, i64 %b.len3, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len3
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort9:                              ; preds = %b.grow
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len8

b.freeze.check:                                   ; preds = %b.push_done
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data16, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data16, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data16, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len15, 1
  %arena.cur17 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data16, i64 %b.freeze.len15, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len15
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.push_done
  %b.freeze.data18 = phi ptr [ %b.freeze.data16, %b.push_done ], [ %b.freeze.data16, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur19 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len15, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data18, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load14, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load14, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load14, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

declare i64 @write(i32, ptr, i64)

declare void @exit(i32)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

define ptr @"str::from_int"(i64 %0) #1 {
entry:
  %var._89 = alloca i64, align 8
  %var._i88 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.39 = alloca i64, align 8
  %loop.idx.39 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.37 = alloca i64, align 8
  %loop.idx.37 = alloca i64, align 8
  %"var.n'" = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.v = alloca i64, align 8
  store i64 %0, ptr %var.v, align 8
  %var.load = load i64, ptr %var.v, align 8
  %val.match = icmp eq i64 %var.load, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %ret.dead
  %var.load1 = load i64, ptr %var.v, align 8
  %var.load2 = load i64, ptr @"var.const::min_i64", align 8
  %cmptmp = icmp eq i64 %var.load1, %var.load2
  br i1 %cmptmp, label %choice.then, label %choice.exit3

choice.case:                                      ; preds = %entry
  ret ptr @str.0.struct

choice.next:                                      ; preds = %entry
  br label %choice.exit

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then:                                      ; preds = %choice.exit
  ret ptr @str.1.struct

choice.exit3:                                     ; preds = %ret.dead4, %choice.exit
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len5

ret.dead4:                                        ; No predecessors!
  br label %choice.exit3

b.buf.len5:                                       ; preds = %str_overflow_abort, %choice.exit3
  %arena.cur6 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 32, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load7 = load i64, ptr %var.v, align 8
  %cmptmp11 = icmp slt i64 %var.load7, 0
  br i1 %cmptmp11, label %choice.case9, label %choice.next10

str_overflow_abort:                               ; preds = %choice.exit3
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len5

choice.exit8:                                     ; preds = %choice.next10, %choice.case9
  %choice.res = phi i64 [ %subtmp, %choice.case9 ], [ %var.load13, %choice.next10 ]
  store i64 %choice.res, ptr %"var.n'", align 8
  store i64 0, ptr %loop.idx.37, align 8
  br label %loop.header.37

choice.case9:                                     ; preds = %b.buf.len5
  %var.load12 = load i64, ptr %var.v, align 8
  %subtmp = sub i64 0, %var.load12
  br label %choice.exit8

choice.next10:                                    ; preds = %b.buf.len5
  %var.load13 = load i64, ptr %var.v, align 8
  br label %choice.exit8

loop.header.37:                                   ; preds = %loop.latch.37, %choice.exit8
  %counter.load = load i64, ptr %loop.idx.37, align 8
  %loop.cond = icmp slt i64 %counter.load, 32
  br i1 %loop.cond, label %loop.body.37, label %loop.exit.nat.37

loop.body.37:                                     ; preds = %loop.header.37
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.37, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load14 = load i64, ptr %"var.n'", align 8
  %cmptmp18 = icmp sgt i64 %var.load14, 0
  br i1 %cmptmp18, label %choice.case16, label %choice.next17

loop.exit.nat.37:                                 ; preds = %loop.header.37
  br label %loop.exit.37

loop.latch.37:                                    ; preds = %choice.exit15
  %step.val = load i64, ptr %loop.step.37, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.37, align 8
  br label %loop.header.37

loop.exit.37:                                     ; preds = %choice.next17, %loop.exit.nat.37
  %var.load38 = load i64, ptr %var.v, align 8
  %cmptmp39 = icmp slt i64 %var.load38, 0
  br i1 %cmptmp39, label %choice.then40, label %choice.exit41

choice.exit15:                                    ; preds = %div.ok36
  br label %loop.latch.37

choice.case16:                                    ; preds = %loop.body.37
  %b.load = load ptr, ptr %var.b, align 8
  %var.load19 = load i64, ptr %"var.n'", align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

choice.next17:                                    ; preds = %loop.body.37
  br label %loop.exit.37

div.not_zero:                                     ; preds = %div.zero_abort, %choice.case16
  %div.is.min = icmp eq i64 %var.load19, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.case16
  %2 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %modtmp = srem i64 %var.load19, 10
  %coerce.trunc = trunc i64 %modtmp to i32
  %addtmp = add i32 48, %coerce.trunc
  %b.byte.zext = zext i32 %addtmp to i64
  %b.b.ge0 = icmp sge i64 %b.byte.zext, 0
  %b.b.le255 = icmp sle i64 %b.byte.zext, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

div.ovf_abort:                                    ; preds = %div.not_zero
  %3 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

b.byte_ok:                                        ; preds = %b.byte_err, %div.ok
  %b.byte.i8 = trunc i64 %b.byte.zext to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len20 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap21 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data22 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len20, %b.cap21
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %div.ok
  %4 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap21, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum23 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf24 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf24, label %str_overflow_abort26, label %b.new.buf.len25

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len25
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data28 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len29 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data28, i64 %b.cur.len29
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len29, 1
  %b.nul = getelementptr i8, ptr %b.cur.data28, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep30 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep30, align 8
  %var.load31 = load i64, ptr %"var.n'", align 8
  br i1 false, label %div.zero_abort33, label %div.not_zero32

b.new.buf.len25:                                  ; preds = %str_overflow_abort26, %b.grow
  %arena.cur27 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 %sum23)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data22, i64 %b.len20, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len20
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort26:                             ; preds = %b.grow
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len25

div.not_zero32:                                   ; preds = %div.zero_abort33, %b.push_done
  %div.is.min34 = icmp eq i64 %var.load31, -9223372036854775808
  %div.is.ovf35 = and i1 %div.is.min34, false
  br i1 %div.is.ovf35, label %div.ovf_abort37, label %div.ok36

div.zero_abort33:                                 ; preds = %b.push_done
  %6 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero32

div.ok36:                                         ; preds = %div.ovf_abort37, %div.not_zero32
  %divtmp = sdiv i64 %var.load31, 10
  store i64 %divtmp, ptr %"var.n'", align 8
  br label %choice.exit15

div.ovf_abort37:                                  ; preds = %div.not_zero32
  %7 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok36

choice.then40:                                    ; preds = %loop.exit.37
  %b.load42 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 0
  %b.rn.cur.len43 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len43, i64 1)
  %sum44 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf45 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf45, label %str_overflow_abort47, label %b.rn.new.len46

choice.exit41:                                    ; preds = %br.done.38, %loop.exit.37
  %var.load62 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load62, i32 0, i32 0
  %b.freeze.len63 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load62, i32 0, i32 1
  %b.freeze.data64 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.rn.new.len46:                                   ; preds = %str_overflow_abort47, %choice.then40
  %b.cap48 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 2
  %b.cap49 = load i64, ptr %b.cap48, align 8
  %b.need.grow = icmp slt i64 %b.cap49, %sum44
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort47:                             ; preds = %choice.then40
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len46

b.grow2:                                          ; preds = %b.rn.new.len46
  %b.cap250 = mul i64 %b.cap49, 2
  %b.cap.small51 = icmp slt i64 %b.cap250, 16
  %b.cap.grow = select i1 %b.cap.small51, i64 16, i64 %b.cap250
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum44
  %b.new.cap52 = select i1 %b.cap.need, i64 %sum44, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 0
  %b.cur.len253 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 1
  %b.cur.data254 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap52, i64 1)
  %sum55 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf56 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf56, label %str_overflow_abort58, label %b.new.buf.len257

b.nogrow2:                                        ; preds = %b.rn.new.len46
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len257
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 1
  %b.rn.data60 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data60, i64 %b.rn.cur.len43
  br i1 true, label %br.b1.38, label %br.c2.38

b.new.buf.len257:                                 ; preds = %str_overflow_abort58, %b.grow2
  %arena.cur59 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 %sum55)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data254, i64 %b.cur.len253, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len253
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 2
  store i64 %b.new.cap52, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort58:                             ; preds = %b.grow2
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len257

br.b1.38:                                         ; preds = %b.grow_done
  store i8 45, ptr %b.rn.dst, align 1
  br label %br.done.38

br.c2.38:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.38, label %br.c3.38

br.b2.38:                                         ; preds = %br.c2.38
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -83, ptr %br.dst1, align 1
  br label %br.done.38

br.c3.38:                                         ; preds = %br.c2.38
  br i1 true, label %br.b3.38, label %br.b4.38

br.b3.38:                                         ; preds = %br.c3.38
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -83, ptr %br.dst2.3, align 1
  br label %br.done.38

br.b4.38:                                         ; preds = %br.c3.38
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -83, ptr %br.dst3.4, align 1
  br label %br.done.38

br.done.38:                                       ; preds = %br.b4.38, %br.b3.38, %br.b2.38, %br.b1.38
  %br.nul = getelementptr i8, ptr %b.rn.data60, i64 %sum44
  store i8 0, ptr %br.nul, align 1
  %b.len.gep61 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 0
  store i64 %sum44, ptr %b.len.gep61, align 8
  br label %choice.exit41

b.freeze.check:                                   ; preds = %choice.exit41
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data64, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data64, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data64, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len63, 1
  %arena.cur65 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data64, i64 %b.freeze.len63, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len63
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit41
  %b.freeze.data66 = phi ptr [ %b.freeze.data64, %choice.exit41 ], [ %b.freeze.data64, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur67 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len63, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data66, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load62, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load62, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load62, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.s, align 8
  %arena.cur68 = call ptr @dva_arena_current()
  %builder.new69 = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 24)
  %b.data.gep70 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new69, i32 0, i32 1
  %b.len.gep71 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new69, i32 0, i32 0
  %b.cap.gep72 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new69, i32 0, i32 2
  %b.buf.len73 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum74 = extractvalue { i64, i1 } %b.buf.len73, 0
  %ovf75 = extractvalue { i64, i1 } %b.buf.len73, 1
  br i1 %ovf75, label %str_overflow_abort77, label %b.buf.len76

b.buf.len76:                                      ; preds = %str_overflow_abort77, %b.freeze.done
  %arena.cur78 = call ptr @dva_arena_current()
  %b.buf79 = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 %sum74)
  %b.nul080 = getelementptr i8, ptr %b.buf79, i64 0
  store i8 0, ptr %b.nul080, align 1
  store i64 0, ptr %b.len.gep71, align 8
  store ptr %b.buf79, ptr %b.data.gep70, align 8
  store i64 32, ptr %b.cap.gep72, align 8
  store ptr %builder.new69, ptr %var.out, align 8
  %var.load81 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load81, i32 0, i32 0
  %str.len.query82 = load i64, ptr %str.len.query, align 8
  %str.len.query83 = and i64 %str.len.query82, 281474976710655
  %str.tag = lshr i64 %str.len.query82, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_overflow_abort77:                             ; preds = %b.freeze.done
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len76

str_gen_check:                                    ; preds = %b.buf.len76
  %arena.cur84 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur84, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.buf.len76
  store i64 0, ptr %loop.idx.39, align 8
  br label %loop.header.39

str_stale:                                        ; preds = %str_gen_check
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.39:                                   ; preds = %loop.latch.39, %str_ok
  %counter.load85 = load i64, ptr %loop.idx.39, align 8
  %loop.cond86 = icmp slt i64 %counter.load85, %str.len.query83
  br i1 %loop.cond86, label %loop.body.39, label %loop.exit.nat.39

loop.body.39:                                     ; preds = %loop.header.39
  %loop.rel.i87 = sub i64 %counter.load85, 0
  store i64 1, ptr %loop.step.39, align 8
  store i64 %loop.rel.i87, ptr %var._i88, align 8
  store i64 %counter.load85, ptr %var._89, align 8
  store i64 %counter.load85, ptr %var.i, align 8
  %b.load90 = load ptr, ptr %var.out, align 8
  %var.load91 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load91, i32 0, i32 0
  %s.read.len92 = load i64, ptr %s.read.len, align 8
  %s.read.len93 = and i64 %s.read.len92, 281474976710655
  %str.tag94 = lshr i64 %s.read.len92, 48
  %str.immortal95 = icmp eq i64 %str.tag94, 0
  br i1 %str.immortal95, label %str_ok97, label %str_gen_check96

loop.exit.nat.39:                                 ; preds = %loop.header.39
  br label %loop.exit.39

loop.latch.39:                                    ; preds = %b.push_done131
  %step.val153 = load i64, ptr %loop.step.39, align 8
  %loop.next154 = add i64 %counter.load85, %step.val153
  store i64 %loop.next154, ptr %loop.idx.39, align 8
  br label %loop.header.39

loop.exit.39:                                     ; preds = %loop.exit.nat.39
  %var.load155 = load ptr, ptr %var.out, align 8
  %b.freeze.len156 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load155, i32 0, i32 0
  %b.freeze.len157 = load i64, ptr %b.freeze.len156, align 8
  %b.freeze.data158 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load155, i32 0, i32 1
  %b.freeze.data159 = load ptr, ptr %b.freeze.data158, align 8
  %b.freeze.arena160 = call ptr @dva_arena_current()
  %b.freeze.nc.gep161 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena160, i32 0, i32 1
  %b.freeze.nc162 = load i64, ptr %b.freeze.nc.gep161, align 8
  %b.freeze.has.chunk163 = icmp sgt i64 %b.freeze.nc162, 0
  br i1 %b.freeze.has.chunk163, label %b.freeze.check164, label %b.freeze.done166

str_gen_check96:                                  ; preds = %loop.body.39
  %arena.cur99 = call ptr @dva_arena_current()
  %tag.valid100 = call i1 @dva_arena_validate_tag(ptr %arena.cur99, i64 %str.tag94)
  br i1 %tag.valid100, label %str_ok97, label %str_stale98

str_ok97:                                         ; preds = %str_stale98, %str_gen_check96, %loop.body.39
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load91, i32 0, i32 1
  %s.read.data101 = load ptr, ptr %s.read.data, align 8
  %var.load102 = load ptr, ptr %var.s, align 8
  %str.len.query103 = getelementptr inbounds { i64, ptr }, ptr %var.load102, i32 0, i32 0
  %str.len.query104 = load i64, ptr %str.len.query103, align 8
  %str.len.query105 = and i64 %str.len.query104, 281474976710655
  %str.tag106 = lshr i64 %str.len.query104, 48
  %str.immortal107 = icmp eq i64 %str.tag106, 0
  br i1 %str.immortal107, label %str_ok109, label %str_gen_check108

str_stale98:                                      ; preds = %str_gen_check96
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok97

str_gen_check108:                                 ; preds = %str_ok97
  %arena.cur111 = call ptr @dva_arena_current()
  %tag.valid112 = call i1 @dva_arena_validate_tag(ptr %arena.cur111, i64 %str.tag106)
  br i1 %tag.valid112, label %str_ok109, label %str_stale110

str_ok109:                                        ; preds = %str_stale110, %str_gen_check108, %str_ok97
  %subtmp113 = sub i64 %str.len.query105, 1
  %var.load114 = load i64, ptr %var.i, align 8
  %subtmp115 = sub i64 %subtmp113, %var.load114
  %idx.neg = icmp slt i64 %subtmp115, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale110:                                     ; preds = %str_gen_check108
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok109

idx_big_check:                                    ; preds = %str_ok109
  %idx.big = icmp sge i64 %subtmp115, %s.read.len93
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data101, i64 %subtmp115
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.b.ge0116 = icmp sge i64 %s.byte.val, 0
  %b.b.le255117 = icmp sle i64 %s.byte.val, 255
  %b.byte.range118 = and i1 %b.b.ge0116, %b.b.le255117
  br i1 %b.byte.range118, label %b.byte_ok119, label %b.byte_err120

idx_oob:                                          ; preds = %idx_big_check, %str_ok109
  %14 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

b.byte_ok119:                                     ; preds = %b.byte_err120, %idx_ok
  %b.byte.i8121 = trunc i64 %s.byte.val to i8
  %b.len122 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load90, i32 0, i32 0
  %b.len123 = load i64, ptr %b.len122, align 8
  %b.cap124 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load90, i32 0, i32 2
  %b.cap125 = load i64, ptr %b.cap124, align 8
  %b.data126 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load90, i32 0, i32 1
  %b.data127 = load ptr, ptr %b.data126, align 8
  %b.needs.grow128 = icmp eq i64 %b.len123, %b.cap125
  br i1 %b.needs.grow128, label %b.grow129, label %b.nogrow130

b.byte_err120:                                    ; preds = %idx_ok
  %15 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok119

b.grow129:                                        ; preds = %b.byte_ok119
  %b.cap2132 = mul i64 %b.cap125, 2
  %b.cap.small133 = icmp slt i64 %b.cap2132, 16
  %b.new.cap134 = select i1 %b.cap.small133, i64 16, i64 %b.cap2132
  %b.new.buf.len135 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap134, i64 1)
  %sum136 = extractvalue { i64, i1 } %b.new.buf.len135, 0
  %ovf137 = extractvalue { i64, i1 } %b.new.buf.len135, 1
  br i1 %ovf137, label %str_overflow_abort139, label %b.new.buf.len138

b.nogrow130:                                      ; preds = %b.byte_ok119
  br label %b.push_done131

b.push_done131:                                   ; preds = %b.nogrow130, %b.new.buf.len138
  %b.cur.data145 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load90, i32 0, i32 1
  %b.cur.data146 = load ptr, ptr %b.cur.data145, align 8
  %b.cur.len147 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load90, i32 0, i32 0
  %b.cur.len148 = load i64, ptr %b.cur.len147, align 8
  %b.byte.gep149 = getelementptr i8, ptr %b.cur.data146, i64 %b.cur.len148
  store i8 %b.byte.i8121, ptr %b.byte.gep149, align 1
  %b.next.len150 = add i64 %b.cur.len148, 1
  %b.nul151 = getelementptr i8, ptr %b.cur.data146, i64 %b.next.len150
  store i8 0, ptr %b.nul151, align 1
  %b.len.gep152 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load90, i32 0, i32 0
  store i64 %b.next.len150, ptr %b.len.gep152, align 8
  br label %loop.latch.39

b.new.buf.len138:                                 ; preds = %str_overflow_abort139, %b.grow129
  %arena.cur140 = call ptr @dva_arena_current()
  %b.new.buf141 = call ptr @dva_arena_alloc(ptr %arena.cur140, i64 %sum136)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf141, ptr align 1 %b.data127, i64 %b.len123, i1 false)
  %b.grow.nul142 = getelementptr i8, ptr %b.new.buf141, i64 %b.len123
  store i8 0, ptr %b.grow.nul142, align 1
  %b.new.data.gep143 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load90, i32 0, i32 1
  store ptr %b.new.buf141, ptr %b.new.data.gep143, align 8
  %b.new.cap.gep144 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load90, i32 0, i32 2
  store i64 %b.new.cap134, ptr %b.new.cap.gep144, align 8
  br label %b.push_done131

str_overflow_abort139:                            ; preds = %b.grow129
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len138

b.freeze.check164:                                ; preds = %loop.exit.39
  %b.freeze.last.idx167 = sub i64 %b.freeze.nc162, 1
  %b.freeze.chunks.gep168 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena160, i32 0, i32 3
  %b.freeze.chunk.slot169 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep168, i64 0, i64 %b.freeze.last.idx167
  %b.freeze.last.chunk170 = load ptr, ptr %b.freeze.chunk.slot169, align 8
  %b.freeze.off.gep171 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena160, i32 0, i32 2
  %b.freeze.off172 = load i64, ptr %b.freeze.off.gep171, align 8
  %b.freeze.bump173 = getelementptr i8, ptr %b.freeze.last.chunk170, i64 %b.freeze.off172
  %b.freeze.cap.gep174 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena160, i32 0, i32 0
  %b.freeze.cap175 = load i64, ptr %b.freeze.cap.gep174, align 8
  %b.freeze.chunk.end176 = getelementptr i8, ptr %b.freeze.last.chunk170, i64 %b.freeze.cap175
  %b.freeze.ge.chunk177 = icmp uge ptr %b.freeze.data159, %b.freeze.last.chunk170
  %b.freeze.lt.end178 = icmp ult ptr %b.freeze.data159, %b.freeze.chunk.end176
  %b.freeze.in.chunk179 = and i1 %b.freeze.ge.chunk177, %b.freeze.lt.end178
  %b.freeze.ge.bump180 = icmp uge ptr %b.freeze.data159, %b.freeze.bump173
  %b.freeze.reaped181 = and i1 %b.freeze.in.chunk179, %b.freeze.ge.bump180
  br i1 %b.freeze.reaped181, label %b.freeze.copy165, label %b.freeze.done166

b.freeze.copy165:                                 ; preds = %b.freeze.check164
  %b.freeze.alen182 = add i64 %b.freeze.len157, 1
  %arena.cur183 = call ptr @dva_arena_current()
  %b.freeze.fresh184 = call ptr @dva_arena_alloc(ptr %arena.cur183, i64 %b.freeze.alen182)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh184, ptr align 1 %b.freeze.data159, i64 %b.freeze.len157, i1 false)
  %b.freeze.nul185 = getelementptr i8, ptr %b.freeze.fresh184, i64 %b.freeze.len157
  store i8 0, ptr %b.freeze.nul185, align 1
  br label %b.freeze.done166

b.freeze.done166:                                 ; preds = %b.freeze.copy165, %b.freeze.check164, %loop.exit.39
  %b.freeze.data186 = phi ptr [ %b.freeze.data159, %loop.exit.39 ], [ %b.freeze.data159, %b.freeze.check164 ], [ %b.freeze.fresh184, %b.freeze.copy165 ]
  %arena.cur187 = call ptr @dva_arena_current()
  %builder.freeze188 = call ptr @dva_arena_alloc(ptr %arena.cur187, i64 16)
  %str.build.len.gep189 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze188, i32 0, i32 0
  store i64 %b.freeze.len157, ptr %str.build.len.gep189, align 8
  %str.build.data.gep190 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze188, i32 0, i32 1
  store ptr %b.freeze.data186, ptr %str.build.data.gep190, align 8
  %b.freeze.rst.len191 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load155, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len191, align 8
  %b.freeze.rst.data192 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load155, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data192, align 8
  %b.freeze.rst.cap193 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load155, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap193, align 8
  ret ptr %builder.freeze188
}

define ptr @"str::from_u64"(i64 %0) #1 {
entry:
  %var._50 = alloca i64, align 8
  %var._i49 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.41 = alloca i64, align 8
  %loop.idx.41 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.40 = alloca i64, align 8
  %loop.idx.40 = alloca i64, align 8
  %"var.n'" = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.v = alloca i64, align 8
  store i64 %0, ptr %var.v, align 8
  %var.load = load i64, ptr %var.v, align 8
  %val.match = icmp eq i64 %var.load, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %ret.dead
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

choice.case:                                      ; preds = %entry
  ret ptr @str.0.struct

choice.next:                                      ; preds = %entry
  br label %choice.exit

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len1:                                       ; preds = %str_overflow_abort, %choice.exit
  %arena.cur2 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 32, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load3 = load i64, ptr %var.v, align 8
  store i64 %var.load3, ptr %"var.n'", align 8
  store i64 0, ptr %loop.idx.40, align 8
  br label %loop.header.40

str_overflow_abort:                               ; preds = %choice.exit
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

loop.header.40:                                   ; preds = %loop.latch.40, %b.buf.len1
  %counter.load = load i64, ptr %loop.idx.40, align 8
  %loop.cond = icmp slt i64 %counter.load, 32
  br i1 %loop.cond, label %loop.body.40, label %loop.exit.nat.40

loop.body.40:                                     ; preds = %loop.header.40
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.40, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load4 = load i64, ptr %"var.n'", align 8
  %cmptmp = icmp ugt i64 %var.load4, 0
  br i1 %cmptmp, label %choice.case6, label %choice.next7

loop.exit.nat.40:                                 ; preds = %loop.header.40
  br label %loop.exit.40

loop.latch.40:                                    ; preds = %choice.exit5
  %step.val = load i64, ptr %loop.step.40, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.40, align 8
  br label %loop.header.40

loop.exit.40:                                     ; preds = %choice.next7, %loop.exit.nat.40
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

choice.exit5:                                     ; preds = %div.not_zero21
  br label %loop.latch.40

choice.case6:                                     ; preds = %loop.body.40
  %b.load = load ptr, ptr %var.b, align 8
  %var.load8 = load i64, ptr %"var.n'", align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

choice.next7:                                     ; preds = %loop.body.40
  br label %loop.exit.40

div.not_zero:                                     ; preds = %div.zero_abort, %choice.case6
  %modtmp = urem i64 %var.load8, 10
  %coerce.trunc = trunc i64 %modtmp to i32
  %addtmp = add i32 48, %coerce.trunc
  %b.byte.zext = zext i32 %addtmp to i64
  %b.b.ge0 = icmp sge i64 %b.byte.zext, 0
  %b.b.le255 = icmp sle i64 %b.byte.zext, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

div.zero_abort:                                   ; preds = %choice.case6
  %2 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

b.byte_ok:                                        ; preds = %b.byte_err, %div.not_zero
  %b.byte.i8 = trunc i64 %b.byte.zext to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len9 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap10 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data11 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len9, %b.cap10
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %div.not_zero
  %3 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap10, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum12 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf13 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf13, label %str_overflow_abort15, label %b.new.buf.len14

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len14
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data17 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len18 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data17, i64 %b.cur.len18
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len18, 1
  %b.nul = getelementptr i8, ptr %b.cur.data17, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep19 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep19, align 8
  %var.load20 = load i64, ptr %"var.n'", align 8
  br i1 false, label %div.zero_abort22, label %div.not_zero21

b.new.buf.len14:                                  ; preds = %str_overflow_abort15, %b.grow
  %arena.cur16 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 %sum12)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data11, i64 %b.len9, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len9
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort15:                             ; preds = %b.grow
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len14

div.not_zero21:                                   ; preds = %div.zero_abort22, %b.push_done
  %divtmp = udiv i64 %var.load20, 10
  store i64 %divtmp, ptr %"var.n'", align 8
  br label %choice.exit5

div.zero_abort22:                                 ; preds = %b.push_done
  %5 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero21

b.freeze.check:                                   ; preds = %loop.exit.40
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

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.40
  %b.freeze.data27 = phi ptr [ %b.freeze.data25, %loop.exit.40 ], [ %b.freeze.data25, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
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
  store ptr %builder.freeze, ptr %var.s, align 8
  %arena.cur29 = call ptr @dva_arena_current()
  %builder.new30 = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 24)
  %b.data.gep31 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new30, i32 0, i32 1
  %b.len.gep32 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new30, i32 0, i32 0
  %b.cap.gep33 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new30, i32 0, i32 2
  %b.buf.len34 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum35 = extractvalue { i64, i1 } %b.buf.len34, 0
  %ovf36 = extractvalue { i64, i1 } %b.buf.len34, 1
  br i1 %ovf36, label %str_overflow_abort38, label %b.buf.len37

b.buf.len37:                                      ; preds = %str_overflow_abort38, %b.freeze.done
  %arena.cur39 = call ptr @dva_arena_current()
  %b.buf40 = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 %sum35)
  %b.nul041 = getelementptr i8, ptr %b.buf40, i64 0
  store i8 0, ptr %b.nul041, align 1
  store i64 0, ptr %b.len.gep32, align 8
  store ptr %b.buf40, ptr %b.data.gep31, align 8
  store i64 32, ptr %b.cap.gep33, align 8
  store ptr %builder.new30, ptr %var.out, align 8
  %var.load42 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 0
  %str.len.query43 = load i64, ptr %str.len.query, align 8
  %str.len.query44 = and i64 %str.len.query43, 281474976710655
  %str.tag = lshr i64 %str.len.query43, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_overflow_abort38:                             ; preds = %b.freeze.done
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len37

str_gen_check:                                    ; preds = %b.buf.len37
  %arena.cur45 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur45, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.buf.len37
  store i64 0, ptr %loop.idx.41, align 8
  br label %loop.header.41

str_stale:                                        ; preds = %str_gen_check
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.41:                                   ; preds = %loop.latch.41, %str_ok
  %counter.load46 = load i64, ptr %loop.idx.41, align 8
  %loop.cond47 = icmp slt i64 %counter.load46, %str.len.query44
  br i1 %loop.cond47, label %loop.body.41, label %loop.exit.nat.41

loop.body.41:                                     ; preds = %loop.header.41
  %loop.rel.i48 = sub i64 %counter.load46, 0
  store i64 1, ptr %loop.step.41, align 8
  store i64 %loop.rel.i48, ptr %var._i49, align 8
  store i64 %counter.load46, ptr %var._50, align 8
  store i64 %counter.load46, ptr %var.i, align 8
  %b.load51 = load ptr, ptr %var.out, align 8
  %var.load52 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 0
  %s.read.len53 = load i64, ptr %s.read.len, align 8
  %s.read.len54 = and i64 %s.read.len53, 281474976710655
  %str.tag55 = lshr i64 %s.read.len53, 48
  %str.immortal56 = icmp eq i64 %str.tag55, 0
  br i1 %str.immortal56, label %str_ok58, label %str_gen_check57

loop.exit.nat.41:                                 ; preds = %loop.header.41
  br label %loop.exit.41

loop.latch.41:                                    ; preds = %b.push_done91
  %step.val113 = load i64, ptr %loop.step.41, align 8
  %loop.next114 = add i64 %counter.load46, %step.val113
  store i64 %loop.next114, ptr %loop.idx.41, align 8
  br label %loop.header.41

loop.exit.41:                                     ; preds = %loop.exit.nat.41
  %var.load115 = load ptr, ptr %var.out, align 8
  %b.freeze.len116 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load115, i32 0, i32 0
  %b.freeze.len117 = load i64, ptr %b.freeze.len116, align 8
  %b.freeze.data118 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load115, i32 0, i32 1
  %b.freeze.data119 = load ptr, ptr %b.freeze.data118, align 8
  %b.freeze.arena120 = call ptr @dva_arena_current()
  %b.freeze.nc.gep121 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena120, i32 0, i32 1
  %b.freeze.nc122 = load i64, ptr %b.freeze.nc.gep121, align 8
  %b.freeze.has.chunk123 = icmp sgt i64 %b.freeze.nc122, 0
  br i1 %b.freeze.has.chunk123, label %b.freeze.check124, label %b.freeze.done126

str_gen_check57:                                  ; preds = %loop.body.41
  %arena.cur60 = call ptr @dva_arena_current()
  %tag.valid61 = call i1 @dva_arena_validate_tag(ptr %arena.cur60, i64 %str.tag55)
  br i1 %tag.valid61, label %str_ok58, label %str_stale59

str_ok58:                                         ; preds = %str_stale59, %str_gen_check57, %loop.body.41
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 1
  %s.read.data62 = load ptr, ptr %s.read.data, align 8
  %var.load63 = load ptr, ptr %var.s, align 8
  %str.len.query64 = getelementptr inbounds { i64, ptr }, ptr %var.load63, i32 0, i32 0
  %str.len.query65 = load i64, ptr %str.len.query64, align 8
  %str.len.query66 = and i64 %str.len.query65, 281474976710655
  %str.tag67 = lshr i64 %str.len.query65, 48
  %str.immortal68 = icmp eq i64 %str.tag67, 0
  br i1 %str.immortal68, label %str_ok70, label %str_gen_check69

str_stale59:                                      ; preds = %str_gen_check57
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok58

str_gen_check69:                                  ; preds = %str_ok58
  %arena.cur72 = call ptr @dva_arena_current()
  %tag.valid73 = call i1 @dva_arena_validate_tag(ptr %arena.cur72, i64 %str.tag67)
  br i1 %tag.valid73, label %str_ok70, label %str_stale71

str_ok70:                                         ; preds = %str_stale71, %str_gen_check69, %str_ok58
  %subtmp = sub i64 %str.len.query66, 1
  %var.load74 = load i64, ptr %var.i, align 8
  %subtmp75 = sub i64 %subtmp, %var.load74
  %idx.neg = icmp slt i64 %subtmp75, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale71:                                      ; preds = %str_gen_check69
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok70

idx_big_check:                                    ; preds = %str_ok70
  %idx.big = icmp sge i64 %subtmp75, %s.read.len54
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data62, i64 %subtmp75
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.b.ge076 = icmp sge i64 %s.byte.val, 0
  %b.b.le25577 = icmp sle i64 %s.byte.val, 255
  %b.byte.range78 = and i1 %b.b.ge076, %b.b.le25577
  br i1 %b.byte.range78, label %b.byte_ok79, label %b.byte_err80

idx_oob:                                          ; preds = %idx_big_check, %str_ok70
  %10 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

b.byte_ok79:                                      ; preds = %b.byte_err80, %idx_ok
  %b.byte.i881 = trunc i64 %s.byte.val to i8
  %b.len82 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  %b.len83 = load i64, ptr %b.len82, align 8
  %b.cap84 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 2
  %b.cap85 = load i64, ptr %b.cap84, align 8
  %b.data86 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  %b.data87 = load ptr, ptr %b.data86, align 8
  %b.needs.grow88 = icmp eq i64 %b.len83, %b.cap85
  br i1 %b.needs.grow88, label %b.grow89, label %b.nogrow90

b.byte_err80:                                     ; preds = %idx_ok
  %11 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok79

b.grow89:                                         ; preds = %b.byte_ok79
  %b.cap292 = mul i64 %b.cap85, 2
  %b.cap.small93 = icmp slt i64 %b.cap292, 16
  %b.new.cap94 = select i1 %b.cap.small93, i64 16, i64 %b.cap292
  %b.new.buf.len95 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap94, i64 1)
  %sum96 = extractvalue { i64, i1 } %b.new.buf.len95, 0
  %ovf97 = extractvalue { i64, i1 } %b.new.buf.len95, 1
  br i1 %ovf97, label %str_overflow_abort99, label %b.new.buf.len98

b.nogrow90:                                       ; preds = %b.byte_ok79
  br label %b.push_done91

b.push_done91:                                    ; preds = %b.nogrow90, %b.new.buf.len98
  %b.cur.data105 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  %b.cur.data106 = load ptr, ptr %b.cur.data105, align 8
  %b.cur.len107 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  %b.cur.len108 = load i64, ptr %b.cur.len107, align 8
  %b.byte.gep109 = getelementptr i8, ptr %b.cur.data106, i64 %b.cur.len108
  store i8 %b.byte.i881, ptr %b.byte.gep109, align 1
  %b.next.len110 = add i64 %b.cur.len108, 1
  %b.nul111 = getelementptr i8, ptr %b.cur.data106, i64 %b.next.len110
  store i8 0, ptr %b.nul111, align 1
  %b.len.gep112 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  store i64 %b.next.len110, ptr %b.len.gep112, align 8
  br label %loop.latch.41

b.new.buf.len98:                                  ; preds = %str_overflow_abort99, %b.grow89
  %arena.cur100 = call ptr @dva_arena_current()
  %b.new.buf101 = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 %sum96)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf101, ptr align 1 %b.data87, i64 %b.len83, i1 false)
  %b.grow.nul102 = getelementptr i8, ptr %b.new.buf101, i64 %b.len83
  store i8 0, ptr %b.grow.nul102, align 1
  %b.new.data.gep103 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  store ptr %b.new.buf101, ptr %b.new.data.gep103, align 8
  %b.new.cap.gep104 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 2
  store i64 %b.new.cap94, ptr %b.new.cap.gep104, align 8
  br label %b.push_done91

str_overflow_abort99:                             ; preds = %b.grow89
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len98

b.freeze.check124:                                ; preds = %loop.exit.41
  %b.freeze.last.idx127 = sub i64 %b.freeze.nc122, 1
  %b.freeze.chunks.gep128 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena120, i32 0, i32 3
  %b.freeze.chunk.slot129 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep128, i64 0, i64 %b.freeze.last.idx127
  %b.freeze.last.chunk130 = load ptr, ptr %b.freeze.chunk.slot129, align 8
  %b.freeze.off.gep131 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena120, i32 0, i32 2
  %b.freeze.off132 = load i64, ptr %b.freeze.off.gep131, align 8
  %b.freeze.bump133 = getelementptr i8, ptr %b.freeze.last.chunk130, i64 %b.freeze.off132
  %b.freeze.cap.gep134 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena120, i32 0, i32 0
  %b.freeze.cap135 = load i64, ptr %b.freeze.cap.gep134, align 8
  %b.freeze.chunk.end136 = getelementptr i8, ptr %b.freeze.last.chunk130, i64 %b.freeze.cap135
  %b.freeze.ge.chunk137 = icmp uge ptr %b.freeze.data119, %b.freeze.last.chunk130
  %b.freeze.lt.end138 = icmp ult ptr %b.freeze.data119, %b.freeze.chunk.end136
  %b.freeze.in.chunk139 = and i1 %b.freeze.ge.chunk137, %b.freeze.lt.end138
  %b.freeze.ge.bump140 = icmp uge ptr %b.freeze.data119, %b.freeze.bump133
  %b.freeze.reaped141 = and i1 %b.freeze.in.chunk139, %b.freeze.ge.bump140
  br i1 %b.freeze.reaped141, label %b.freeze.copy125, label %b.freeze.done126

b.freeze.copy125:                                 ; preds = %b.freeze.check124
  %b.freeze.alen142 = add i64 %b.freeze.len117, 1
  %arena.cur143 = call ptr @dva_arena_current()
  %b.freeze.fresh144 = call ptr @dva_arena_alloc(ptr %arena.cur143, i64 %b.freeze.alen142)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh144, ptr align 1 %b.freeze.data119, i64 %b.freeze.len117, i1 false)
  %b.freeze.nul145 = getelementptr i8, ptr %b.freeze.fresh144, i64 %b.freeze.len117
  store i8 0, ptr %b.freeze.nul145, align 1
  br label %b.freeze.done126

b.freeze.done126:                                 ; preds = %b.freeze.copy125, %b.freeze.check124, %loop.exit.41
  %b.freeze.data146 = phi ptr [ %b.freeze.data119, %loop.exit.41 ], [ %b.freeze.data119, %b.freeze.check124 ], [ %b.freeze.fresh144, %b.freeze.copy125 ]
  %arena.cur147 = call ptr @dva_arena_current()
  %builder.freeze148 = call ptr @dva_arena_alloc(ptr %arena.cur147, i64 16)
  %str.build.len.gep149 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze148, i32 0, i32 0
  store i64 %b.freeze.len117, ptr %str.build.len.gep149, align 8
  %str.build.data.gep150 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze148, i32 0, i32 1
  store ptr %b.freeze.data146, ptr %str.build.data.gep150, align 8
  %b.freeze.rst.len151 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load115, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len151, align 8
  %b.freeze.rst.data152 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load115, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data152, align 8
  %b.freeze.rst.cap153 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load115, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap153, align 8
  ret ptr %builder.freeze148
}

define ptr @"str::from_float"(double %0) #1 {
entry:
  %var.es = alloca ptr, align 8
  %var.mant = alloca ptr, align 8
  %var._848 = alloca i64, align 8
  %var._i847 = alloca i64, align 8
  %loop.step.57 = alloca i64, align 8
  %loop.idx.57 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var._800 = alloca i64, align 8
  %var._i799 = alloca i64, align 8
  %loop.step.56 = alloca i64, align 8
  %loop.idx.56 = alloca i64, align 8
  %"var.dot_pos'" = alloca i64, align 8
  %var.full = alloca ptr, align 8
  %var._684 = alloca i64, align 8
  %var._i683 = alloca i64, align 8
  %loop.step.55 = alloca i64, align 8
  %loop.idx.55 = alloca i64, align 8
  %var._633 = alloca i64, align 8
  %var._i632 = alloca i64, align 8
  %loop.step.53 = alloca i64, align 8
  %loop.idx.53 = alloca i64, align 8
  %var._522 = alloca i64, align 8
  %var._i521 = alloca i64, align 8
  %loop.step.52 = alloca i64, align 8
  %loop.idx.52 = alloca i64, align 8
  %var._406 = alloca i64, align 8
  %var._i405 = alloca i64, align 8
  %loop.step.50 = alloca i64, align 8
  %loop.idx.50 = alloca i64, align 8
  %var.en = alloca i64, align 8
  %var._331 = alloca i64, align 8
  %var._i330 = alloca i64, align 8
  %loop.step.49 = alloca i64, align 8
  %loop.idx.49 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.ms = alloca ptr, align 8
  %var._139 = alloca i64, align 8
  %var._i138 = alloca i64, align 8
  %loop.step.45 = alloca i64, align 8
  %loop.idx.45 = alloca i64, align 8
  %"var.m'" = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.d = alloca i64, align 8
  %var._76 = alloca i64, align 8
  %var._i75 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.44 = alloca i64, align 8
  %loop.idx.44 = alloca i64, align 8
  %var.ds = alloca ptr, align 8
  %"var.f'" = alloca double, align 8
  %var.ip = alloca i64, align 8
  %var._44 = alloca i64, align 8
  %var._i43 = alloca i64, align 8
  %loop.step.43 = alloca i64, align 8
  %loop.idx.43 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.42 = alloca i64, align 8
  %loop.idx.42 = alloca i64, align 8
  %"var.e'" = alloca i64, align 8
  %"var.x'" = alloca double, align 8
  %var.a = alloca double, align 8
  %var.neg = alloca i1, align 1
  %var.v = alloca double, align 8
  store double %0, ptr %var.v, align 8
  %var.load = load double, ptr %var.v, align 8
  %var.load1 = load double, ptr %var.v, align 8
  %fcmptmp = fcmp une double %var.load, %var.load1
  br i1 %fcmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret ptr @str.2.struct

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load2 = load double, ptr %var.v, align 8
  %var.load3 = load double, ptr @"var.const::max_f64", align 8
  %fcmptmp4 = fcmp ogt double %var.load2, %var.load3
  br i1 %fcmptmp4, label %choice.then5, label %choice.exit6

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then5:                                     ; preds = %choice.exit
  ret ptr @str.3.struct

choice.exit6:                                     ; preds = %ret.dead7, %choice.exit
  %var.load8 = load double, ptr %var.v, align 8
  %var.load9 = load double, ptr @"var.const::max_f64", align 8
  %fnegtmp = fneg double %var.load9
  %fcmptmp10 = fcmp olt double %var.load8, %fnegtmp
  br i1 %fcmptmp10, label %choice.then11, label %choice.exit12

ret.dead7:                                        ; No predecessors!
  br label %choice.exit6

choice.then11:                                    ; preds = %choice.exit6
  ret ptr @str.4.struct

choice.exit12:                                    ; preds = %ret.dead13, %choice.exit6
  %var.load14 = load double, ptr %var.v, align 8
  %fcmptmp15 = fcmp olt double %var.load14, 0.000000e+00
  store i1 %fcmptmp15, ptr %var.neg, align 1
  %var.load16 = load i1, ptr %var.neg, align 1
  br i1 %var.load16, label %choice.then17, label %choice.else

ret.dead13:                                       ; No predecessors!
  br label %choice.exit12

choice.then17:                                    ; preds = %choice.exit12
  %var.load19 = load double, ptr %var.v, align 8
  %fsubtmp = fsub double 0.000000e+00, %var.load19
  br label %choice.exit18

choice.else:                                      ; preds = %choice.exit12
  %var.load20 = load double, ptr %var.v, align 8
  br label %choice.exit18

choice.exit18:                                    ; preds = %choice.else, %choice.then17
  %choice.res = phi double [ %fsubtmp, %choice.then17 ], [ %var.load20, %choice.else ]
  store double %choice.res, ptr %var.a, align 8
  %var.load21 = load double, ptr %var.a, align 8
  %fcmptmp22 = fcmp oeq double %var.load21, 0.000000e+00
  br i1 %fcmptmp22, label %choice.then23, label %choice.exit24

choice.then23:                                    ; preds = %choice.exit18
  %var.load25 = load double, ptr %var.v, align 8
  %fdivtmp = fdiv double 1.000000e+00, %var.load25
  %fcmptmp26 = fcmp olt double %fdivtmp, 0.000000e+00
  br i1 %fcmptmp26, label %choice.then27, label %choice.else28

choice.exit24:                                    ; preds = %ret.dead31, %choice.exit18
  %var.load32 = load double, ptr %var.a, align 8
  store double %var.load32, ptr %"var.x'", align 8
  store i64 0, ptr %"var.e'", align 8
  store i64 0, ptr %loop.idx.42, align 8
  br label %loop.header.42

choice.then27:                                    ; preds = %choice.then23
  br label %choice.exit29

choice.else28:                                    ; preds = %choice.then23
  br label %choice.exit29

choice.exit29:                                    ; preds = %choice.else28, %choice.then27
  %choice.res30 = phi ptr [ @str.5.struct, %choice.then27 ], [ @str.0.struct, %choice.else28 ]
  ret ptr %choice.res30

ret.dead31:                                       ; No predecessors!
  br label %choice.exit24

loop.header.42:                                   ; preds = %loop.latch.42, %choice.exit24
  %counter.load = load i64, ptr %loop.idx.42, align 8
  br label %loop.body.42

loop.body.42:                                     ; preds = %loop.header.42
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.42, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load33 = load double, ptr %"var.x'", align 8
  %fcmptmp34 = fcmp oge double %var.load33, 1.000000e+01
  br i1 %fcmptmp34, label %choice.then35, label %choice.else36

loop.exit.nat.42:                                 ; No predecessors!
  br label %loop.exit.42

loop.latch.42:                                    ; preds = %choice.exit37
  %step.val = load i64, ptr %loop.step.42, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.42, align 8
  br label %loop.header.42

loop.exit.42:                                     ; preds = %choice.else36, %loop.exit.nat.42
  store i64 0, ptr %loop.idx.43, align 8
  br label %loop.header.43

choice.then35:                                    ; preds = %loop.body.42
  %var.load38 = load double, ptr %"var.x'", align 8
  %fdivtmp39 = fdiv double %var.load38, 1.000000e+01
  store double %fdivtmp39, ptr %"var.x'", align 8
  %var.load40 = load i64, ptr %"var.e'", align 8
  %addtmp = add i64 %var.load40, 1
  store i64 %addtmp, ptr %"var.e'", align 8
  br label %choice.exit37

choice.else36:                                    ; preds = %loop.body.42
  br label %loop.exit.42

choice.exit37:                                    ; preds = %choice.then35
  br label %loop.latch.42

loop.header.43:                                   ; preds = %loop.latch.43, %loop.exit.42
  %counter.load41 = load i64, ptr %loop.idx.43, align 8
  br label %loop.body.43

loop.body.43:                                     ; preds = %loop.header.43
  %loop.rel.i42 = sub i64 %counter.load41, 0
  store i64 1, ptr %loop.step.43, align 8
  store i64 %loop.rel.i42, ptr %var._i43, align 8
  store i64 %counter.load41, ptr %var._44, align 8
  %var.load45 = load double, ptr %"var.x'", align 8
  %fcmptmp46 = fcmp olt double %var.load45, 1.000000e+00
  br i1 %fcmptmp46, label %choice.then47, label %choice.else48

loop.exit.nat.43:                                 ; No predecessors!
  br label %loop.exit.43

loop.latch.43:                                    ; preds = %choice.exit49
  %step.val52 = load i64, ptr %loop.step.43, align 8
  %loop.next53 = add i64 %counter.load41, %step.val52
  store i64 %loop.next53, ptr %loop.idx.43, align 8
  br label %loop.header.43

loop.exit.43:                                     ; preds = %choice.else48, %loop.exit.nat.43
  %var.load54 = load double, ptr %"var.x'", align 8
  %cast.fptosi = fptosi double %var.load54 to i64
  store i64 %cast.fptosi, ptr %var.ip, align 8
  %var.load55 = load double, ptr %"var.x'", align 8
  %var.load56 = load i64, ptr %var.ip, align 8
  %cast.sitofp = sitofp i64 %var.load56 to double
  %fsubtmp57 = fsub double %var.load55, %cast.sitofp
  store double %fsubtmp57, ptr %"var.f'", align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 16, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len58

choice.then47:                                    ; preds = %loop.body.43
  %var.load50 = load double, ptr %"var.x'", align 8
  %fmultmp = fmul double %var.load50, 1.000000e+01
  store double %fmultmp, ptr %"var.x'", align 8
  %var.load51 = load i64, ptr %"var.e'", align 8
  %subtmp = sub i64 %var.load51, 1
  store i64 %subtmp, ptr %"var.e'", align 8
  br label %choice.exit49

choice.else48:                                    ; preds = %loop.body.43
  br label %loop.exit.43

choice.exit49:                                    ; preds = %choice.then47
  br label %loop.latch.43

b.buf.len58:                                      ; preds = %str_overflow_abort, %loop.exit.43
  %arena.cur59 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 16, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.ds, align 8
  %b.load = load ptr, ptr %var.ds, align 8
  %var.load60 = load i64, ptr %var.ip, align 8
  %coerce.trunc = trunc i64 %var.load60 to i32
  %addtmp61 = add i32 48, %coerce.trunc
  %b.byte.zext = zext i32 %addtmp61 to i64
  %b.b.ge0 = icmp sge i64 %b.byte.zext, 0
  %b.b.le255 = icmp sle i64 %b.byte.zext, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

str_overflow_abort:                               ; preds = %loop.exit.43
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len58

b.byte_ok:                                        ; preds = %b.byte_err, %b.buf.len58
  %b.byte.i8 = trunc i64 %b.byte.zext to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len62 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap63 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data64 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len62, %b.cap63
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %b.buf.len58
  %2 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap63, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum65 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf66 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf66, label %str_overflow_abort68, label %b.new.buf.len67

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len67
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data70 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len71 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data70, i64 %b.cur.len71
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len71, 1
  %b.nul = getelementptr i8, ptr %b.cur.data70, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep72 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep72, align 8
  store i64 0, ptr %loop.idx.44, align 8
  br label %loop.header.44

b.new.buf.len67:                                  ; preds = %str_overflow_abort68, %b.grow
  %arena.cur69 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 %sum65)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data64, i64 %b.len62, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len62
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort68:                             ; preds = %b.grow
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len67

loop.header.44:                                   ; preds = %loop.latch.44, %b.push_done
  %counter.load73 = load i64, ptr %loop.idx.44, align 8
  %loop.cond = icmp slt i64 %counter.load73, 6
  br i1 %loop.cond, label %loop.body.44, label %loop.exit.nat.44

loop.body.44:                                     ; preds = %loop.header.44
  %loop.rel.i74 = sub i64 %counter.load73, 0
  store i64 1, ptr %loop.step.44, align 8
  store i64 %loop.rel.i74, ptr %var._i75, align 8
  store i64 %counter.load73, ptr %var._76, align 8
  store i64 %counter.load73, ptr %var.i, align 8
  %var.load77 = load double, ptr %"var.f'", align 8
  %fmultmp78 = fmul double %var.load77, 1.000000e+01
  store double %fmultmp78, ptr %"var.f'", align 8
  %var.load79 = load double, ptr %"var.f'", align 8
  %cast.fptosi80 = fptosi double %var.load79 to i64
  store i64 %cast.fptosi80, ptr %var.d, align 8
  %b.load81 = load ptr, ptr %var.ds, align 8
  %var.load82 = load i64, ptr %var.d, align 8
  %coerce.trunc83 = trunc i64 %var.load82 to i32
  %addtmp84 = add i32 48, %coerce.trunc83
  %b.byte.zext85 = zext i32 %addtmp84 to i64
  %b.b.ge086 = icmp sge i64 %b.byte.zext85, 0
  %b.b.le25587 = icmp sle i64 %b.byte.zext85, 255
  %b.byte.range88 = and i1 %b.b.ge086, %b.b.le25587
  br i1 %b.byte.range88, label %b.byte_ok89, label %b.byte_err90

loop.exit.nat.44:                                 ; preds = %loop.header.44
  br label %loop.exit.44

loop.latch.44:                                    ; preds = %b.push_done101
  %step.val127 = load i64, ptr %loop.step.44, align 8
  %loop.next128 = add i64 %counter.load73, %step.val127
  store i64 %loop.next128, ptr %loop.idx.44, align 8
  br label %loop.header.44

loop.exit.44:                                     ; preds = %loop.exit.nat.44
  %var.load129 = load ptr, ptr %var.ds, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load129, i32 0, i32 0
  %b.freeze.len130 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load129, i32 0, i32 1
  %b.freeze.data131 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.byte_ok89:                                      ; preds = %b.byte_err90, %loop.body.44
  %b.byte.i891 = trunc i64 %b.byte.zext85 to i8
  %b.len92 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 0
  %b.len93 = load i64, ptr %b.len92, align 8
  %b.cap94 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 2
  %b.cap95 = load i64, ptr %b.cap94, align 8
  %b.data96 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 1
  %b.data97 = load ptr, ptr %b.data96, align 8
  %b.needs.grow98 = icmp eq i64 %b.len93, %b.cap95
  br i1 %b.needs.grow98, label %b.grow99, label %b.nogrow100

b.byte_err90:                                     ; preds = %loop.body.44
  %4 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok89

b.grow99:                                         ; preds = %b.byte_ok89
  %b.cap2102 = mul i64 %b.cap95, 2
  %b.cap.small103 = icmp slt i64 %b.cap2102, 16
  %b.new.cap104 = select i1 %b.cap.small103, i64 16, i64 %b.cap2102
  %b.new.buf.len105 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap104, i64 1)
  %sum106 = extractvalue { i64, i1 } %b.new.buf.len105, 0
  %ovf107 = extractvalue { i64, i1 } %b.new.buf.len105, 1
  br i1 %ovf107, label %str_overflow_abort109, label %b.new.buf.len108

b.nogrow100:                                      ; preds = %b.byte_ok89
  br label %b.push_done101

b.push_done101:                                   ; preds = %b.nogrow100, %b.new.buf.len108
  %b.cur.data115 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 1
  %b.cur.data116 = load ptr, ptr %b.cur.data115, align 8
  %b.cur.len117 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 0
  %b.cur.len118 = load i64, ptr %b.cur.len117, align 8
  %b.byte.gep119 = getelementptr i8, ptr %b.cur.data116, i64 %b.cur.len118
  store i8 %b.byte.i891, ptr %b.byte.gep119, align 1
  %b.next.len120 = add i64 %b.cur.len118, 1
  %b.nul121 = getelementptr i8, ptr %b.cur.data116, i64 %b.next.len120
  store i8 0, ptr %b.nul121, align 1
  %b.len.gep122 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 0
  store i64 %b.next.len120, ptr %b.len.gep122, align 8
  %var.load123 = load double, ptr %"var.f'", align 8
  %var.load124 = load i64, ptr %var.d, align 8
  %cast.sitofp125 = sitofp i64 %var.load124 to double
  %fsubtmp126 = fsub double %var.load123, %cast.sitofp125
  store double %fsubtmp126, ptr %"var.f'", align 8
  br label %loop.latch.44

b.new.buf.len108:                                 ; preds = %str_overflow_abort109, %b.grow99
  %arena.cur110 = call ptr @dva_arena_current()
  %b.new.buf111 = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 %sum106)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf111, ptr align 1 %b.data97, i64 %b.len93, i1 false)
  %b.grow.nul112 = getelementptr i8, ptr %b.new.buf111, i64 %b.len93
  store i8 0, ptr %b.grow.nul112, align 1
  %b.new.data.gep113 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 1
  store ptr %b.new.buf111, ptr %b.new.data.gep113, align 8
  %b.new.cap.gep114 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 2
  store i64 %b.new.cap104, ptr %b.new.cap.gep114, align 8
  br label %b.push_done101

str_overflow_abort109:                            ; preds = %b.grow99
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len108

b.freeze.check:                                   ; preds = %loop.exit.44
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data131, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data131, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data131, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len130, 1
  %arena.cur132 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data131, i64 %b.freeze.len130, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len130
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.44
  %b.freeze.data133 = phi ptr [ %b.freeze.data131, %loop.exit.44 ], [ %b.freeze.data131, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur134 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur134, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len130, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data133, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load129, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load129, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load129, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.s, align 8
  store i64 0, ptr %"var.m'", align 8
  store i64 0, ptr %loop.idx.45, align 8
  br label %loop.header.45

loop.header.45:                                   ; preds = %loop.latch.45, %b.freeze.done
  %counter.load135 = load i64, ptr %loop.idx.45, align 8
  %loop.cond136 = icmp slt i64 %counter.load135, 6
  br i1 %loop.cond136, label %loop.body.45, label %loop.exit.nat.45

loop.body.45:                                     ; preds = %loop.header.45
  %loop.rel.i137 = sub i64 %counter.load135, 0
  store i64 1, ptr %loop.step.45, align 8
  store i64 %loop.rel.i137, ptr %var._i138, align 8
  store i64 %counter.load135, ptr %var._139, align 8
  store i64 %counter.load135, ptr %var.i, align 8
  %var.load140 = load i64, ptr %"var.m'", align 8
  %multmp = mul i64 %var.load140, 10
  %var.load141 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load141, i32 0, i32 0
  %s.read.len142 = load i64, ptr %s.read.len, align 8
  %s.read.len143 = and i64 %s.read.len142, 281474976710655
  %str.tag = lshr i64 %s.read.len142, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.45:                                 ; preds = %loop.header.45
  br label %loop.exit.45

loop.latch.45:                                    ; preds = %idx_ok
  %step.val149 = load i64, ptr %loop.step.45, align 8
  %loop.next150 = add i64 %counter.load135, %step.val149
  store i64 %loop.next150, ptr %loop.idx.45, align 8
  br label %loop.header.45

loop.exit.45:                                     ; preds = %loop.exit.nat.45
  %var.load151 = load ptr, ptr %var.s, align 8
  %s.read.len152 = getelementptr inbounds { i64, ptr }, ptr %var.load151, i32 0, i32 0
  %s.read.len153 = load i64, ptr %s.read.len152, align 8
  %s.read.len154 = and i64 %s.read.len153, 281474976710655
  %str.tag155 = lshr i64 %s.read.len153, 48
  %str.immortal156 = icmp eq i64 %str.tag155, 0
  br i1 %str.immortal156, label %str_ok158, label %str_gen_check157

str_gen_check:                                    ; preds = %loop.body.45
  %arena.cur144 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur144, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.45
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load141, i32 0, i32 1
  %s.read.data145 = load ptr, ptr %s.read.data, align 8
  %var.load146 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load146, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale:                                        ; preds = %str_gen_check
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

idx_big_check:                                    ; preds = %str_ok
  %idx.big = icmp sge i64 %var.load146, %s.read.len143
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data145, i64 %var.load146
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %subtmp147 = sub i64 %s.byte.val, 48
  %addtmp148 = add i64 %multmp, %subtmp147
  store i64 %addtmp148, ptr %"var.m'", align 8
  br label %loop.latch.45

idx_oob:                                          ; preds = %idx_big_check, %str_ok
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

str_gen_check157:                                 ; preds = %loop.exit.45
  %arena.cur160 = call ptr @dva_arena_current()
  %tag.valid161 = call i1 @dva_arena_validate_tag(ptr %arena.cur160, i64 %str.tag155)
  br i1 %tag.valid161, label %str_ok158, label %str_stale159

str_ok158:                                        ; preds = %str_stale159, %str_gen_check157, %loop.exit.45
  %s.read.data162 = getelementptr inbounds { i64, ptr }, ptr %var.load151, i32 0, i32 1
  %s.read.data163 = load ptr, ptr %s.read.data162, align 8
  br i1 false, label %idx_oob166, label %idx_big_check164

str_stale159:                                     ; preds = %str_gen_check157
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok158

idx_big_check164:                                 ; preds = %str_ok158
  %idx.big167 = icmp sge i64 6, %s.read.len154
  br i1 %idx.big167, label %idx_oob166, label %idx_ok165

idx_ok165:                                        ; preds = %idx_oob166, %idx_big_check164
  %s.byte.gep168 = getelementptr i8, ptr %s.read.data163, i64 6
  %s.byte169 = load i8, ptr %s.byte.gep168, align 1
  %s.byte.val170 = zext i8 %s.byte169 to i64
  %cmptmp = icmp sge i64 %s.byte.val170, 53
  br i1 %cmptmp, label %choice.then171, label %choice.exit172

idx_oob166:                                       ; preds = %idx_big_check164, %str_ok158
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok165

choice.then171:                                   ; preds = %idx_ok165
  %var.load173 = load i64, ptr %"var.m'", align 8
  %addtmp174 = add i64 %var.load173, 1
  store i64 %addtmp174, ptr %"var.m'", align 8
  br label %choice.exit172

choice.exit172:                                   ; preds = %choice.then171, %idx_ok165
  %var.load175 = load i64, ptr %"var.m'", align 8
  %cmptmp176 = icmp eq i64 %var.load175, 1000000
  br i1 %cmptmp176, label %choice.then177, label %choice.exit178

choice.then177:                                   ; preds = %choice.exit172
  store i64 100000, ptr %"var.m'", align 8
  %var.load179 = load i64, ptr %"var.e'", align 8
  %addtmp180 = add i64 %var.load179, 1
  store i64 %addtmp180, ptr %"var.e'", align 8
  br label %choice.exit178

choice.exit178:                                   ; preds = %choice.then177, %choice.exit172
  %var.load181 = load i64, ptr %"var.m'", align 8
  %call.res = call ptr @"str::from_int"(i64 %var.load181)
  store ptr %call.res, ptr %var.ms, align 8
  %arena.cur182 = call ptr @dva_arena_current()
  %builder.new183 = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 24)
  %b.data.gep184 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new183, i32 0, i32 1
  %b.len.gep185 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new183, i32 0, i32 0
  %b.cap.gep186 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new183, i32 0, i32 2
  %b.buf.len187 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum188 = extractvalue { i64, i1 } %b.buf.len187, 0
  %ovf189 = extractvalue { i64, i1 } %b.buf.len187, 1
  br i1 %ovf189, label %str_overflow_abort191, label %b.buf.len190

b.buf.len190:                                     ; preds = %str_overflow_abort191, %choice.exit178
  %arena.cur192 = call ptr @dva_arena_current()
  %b.buf193 = call ptr @dva_arena_alloc(ptr %arena.cur192, i64 %sum188)
  %b.nul0194 = getelementptr i8, ptr %b.buf193, i64 0
  store i8 0, ptr %b.nul0194, align 1
  store i64 0, ptr %b.len.gep185, align 8
  store ptr %b.buf193, ptr %b.data.gep184, align 8
  store i64 32, ptr %b.cap.gep186, align 8
  store ptr %builder.new183, ptr %var.b, align 8
  %var.load195 = load i1, ptr %var.neg, align 1
  br i1 %var.load195, label %choice.then196, label %choice.exit197

str_overflow_abort191:                            ; preds = %choice.exit178
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len190

choice.then196:                                   ; preds = %b.buf.len190
  %b.load198 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 0
  %b.rn.cur.len199 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len199, i64 1)
  %sum200 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf201 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf201, label %str_overflow_abort203, label %b.rn.new.len202

choice.exit197:                                   ; preds = %br.done.46, %b.buf.len190
  %var.load218 = load i64, ptr %"var.e'", align 8
  %cmptmp219 = icmp slt i64 %var.load218, -4
  br i1 %cmptmp219, label %or.47.then, label %or.47.else

b.rn.new.len202:                                  ; preds = %str_overflow_abort203, %choice.then196
  %b.cap204 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 2
  %b.cap205 = load i64, ptr %b.cap204, align 8
  %b.need.grow = icmp slt i64 %b.cap205, %sum200
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort203:                            ; preds = %choice.then196
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len202

b.grow2:                                          ; preds = %b.rn.new.len202
  %b.cap2206 = mul i64 %b.cap205, 2
  %b.cap.small207 = icmp slt i64 %b.cap2206, 16
  %b.cap.grow = select i1 %b.cap.small207, i64 16, i64 %b.cap2206
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum200
  %b.new.cap208 = select i1 %b.cap.need, i64 %sum200, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 0
  %b.cur.len2209 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 1
  %b.cur.data2210 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap208, i64 1)
  %sum211 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf212 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf212, label %str_overflow_abort214, label %b.new.buf.len2213

b.nogrow2:                                        ; preds = %b.rn.new.len202
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2213
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 1
  %b.rn.data216 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data216, i64 %b.rn.cur.len199
  br i1 true, label %br.b1.46, label %br.c2.46

b.new.buf.len2213:                                ; preds = %str_overflow_abort214, %b.grow2
  %arena.cur215 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur215, i64 %sum211)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2210, i64 %b.cur.len2209, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2209
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 2
  store i64 %b.new.cap208, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort214:                            ; preds = %b.grow2
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2213

br.b1.46:                                         ; preds = %b.grow_done
  store i8 45, ptr %b.rn.dst, align 1
  br label %br.done.46

br.c2.46:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.46, label %br.c3.46

br.b2.46:                                         ; preds = %br.c2.46
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -83, ptr %br.dst1, align 1
  br label %br.done.46

br.c3.46:                                         ; preds = %br.c2.46
  br i1 true, label %br.b3.46, label %br.b4.46

br.b3.46:                                         ; preds = %br.c3.46
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -83, ptr %br.dst2.3, align 1
  br label %br.done.46

br.b4.46:                                         ; preds = %br.c3.46
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -83, ptr %br.dst3.4, align 1
  br label %br.done.46

br.done.46:                                       ; preds = %br.b4.46, %br.b3.46, %br.b2.46, %br.b1.46
  %br.nul = getelementptr i8, ptr %b.rn.data216, i64 %sum200
  store i8 0, ptr %br.nul, align 1
  %b.len.gep217 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 0
  store i64 %sum200, ptr %b.len.gep217, align 8
  br label %choice.exit197

or.47.then:                                       ; preds = %choice.exit197
  br label %or.47.exit

or.47.else:                                       ; preds = %choice.exit197
  %var.load220 = load i64, ptr %"var.e'", align 8
  %cmptmp221 = icmp sge i64 %var.load220, 6
  br label %or.47.exit

or.47.exit:                                       ; preds = %or.47.else, %or.47.then
  %or.47.phi = phi i1 [ %cmptmp219, %or.47.then ], [ %cmptmp221, %or.47.else ]
  br i1 %or.47.phi, label %choice.then222, label %choice.else223

choice.then222:                                   ; preds = %or.47.exit
  %b.load225 = load ptr, ptr %var.b, align 8
  %var.load226 = load ptr, ptr %var.ms, align 8
  %s.read.len227 = getelementptr inbounds { i64, ptr }, ptr %var.load226, i32 0, i32 0
  %s.read.len228 = load i64, ptr %s.read.len227, align 8
  %s.read.len229 = and i64 %s.read.len228, 281474976710655
  %str.tag230 = lshr i64 %s.read.len228, 48
  %str.immortal231 = icmp eq i64 %str.tag230, 0
  br i1 %str.immortal231, label %str_ok233, label %str_gen_check232

choice.else223:                                   ; preds = %or.47.exit
  %var.load394 = load i64, ptr %"var.e'", align 8
  %cmptmp395 = icmp sge i64 %var.load394, 0
  br i1 %cmptmp395, label %choice.then396, label %choice.else397

choice.exit224:                                   ; preds = %choice.exit398, %loop.exit.49
  %var.load747 = load ptr, ptr %var.b, align 8
  %b.freeze.len748 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load747, i32 0, i32 0
  %b.freeze.len749 = load i64, ptr %b.freeze.len748, align 8
  %b.freeze.data750 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load747, i32 0, i32 1
  %b.freeze.data751 = load ptr, ptr %b.freeze.data750, align 8
  %b.freeze.arena752 = call ptr @dva_arena_current()
  %b.freeze.nc.gep753 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena752, i32 0, i32 1
  %b.freeze.nc754 = load i64, ptr %b.freeze.nc.gep753, align 8
  %b.freeze.has.chunk755 = icmp sgt i64 %b.freeze.nc754, 0
  br i1 %b.freeze.has.chunk755, label %b.freeze.check756, label %b.freeze.done758

str_gen_check232:                                 ; preds = %choice.then222
  %arena.cur235 = call ptr @dva_arena_current()
  %tag.valid236 = call i1 @dva_arena_validate_tag(ptr %arena.cur235, i64 %str.tag230)
  br i1 %tag.valid236, label %str_ok233, label %str_stale234

str_ok233:                                        ; preds = %str_stale234, %str_gen_check232, %choice.then222
  %s.read.data237 = getelementptr inbounds { i64, ptr }, ptr %var.load226, i32 0, i32 1
  %s.read.data238 = load ptr, ptr %s.read.data237, align 8
  br i1 false, label %idx_oob241, label %idx_big_check239

str_stale234:                                     ; preds = %str_gen_check232
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok233

idx_big_check239:                                 ; preds = %str_ok233
  %idx.big242 = icmp sge i64 0, %s.read.len229
  br i1 %idx.big242, label %idx_oob241, label %idx_ok240

idx_ok240:                                        ; preds = %idx_oob241, %idx_big_check239
  %s.byte.gep243 = getelementptr i8, ptr %s.read.data238, i64 0
  %s.byte244 = load i8, ptr %s.byte.gep243, align 1
  %s.byte.val245 = zext i8 %s.byte244 to i64
  %b.b.ge0246 = icmp sge i64 %s.byte.val245, 0
  %b.b.le255247 = icmp sle i64 %s.byte.val245, 255
  %b.byte.range248 = and i1 %b.b.ge0246, %b.b.le255247
  br i1 %b.byte.range248, label %b.byte_ok249, label %b.byte_err250

idx_oob241:                                       ; preds = %idx_big_check239, %str_ok233
  %14 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok240

b.byte_ok249:                                     ; preds = %b.byte_err250, %idx_ok240
  %b.byte.i8251 = trunc i64 %s.byte.val245 to i8
  %b.len252 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load225, i32 0, i32 0
  %b.len253 = load i64, ptr %b.len252, align 8
  %b.cap254 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load225, i32 0, i32 2
  %b.cap255 = load i64, ptr %b.cap254, align 8
  %b.data256 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load225, i32 0, i32 1
  %b.data257 = load ptr, ptr %b.data256, align 8
  %b.needs.grow258 = icmp eq i64 %b.len253, %b.cap255
  br i1 %b.needs.grow258, label %b.grow259, label %b.nogrow260

b.byte_err250:                                    ; preds = %idx_ok240
  %15 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok249

b.grow259:                                        ; preds = %b.byte_ok249
  %b.cap2262 = mul i64 %b.cap255, 2
  %b.cap.small263 = icmp slt i64 %b.cap2262, 16
  %b.new.cap264 = select i1 %b.cap.small263, i64 16, i64 %b.cap2262
  %b.new.buf.len265 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap264, i64 1)
  %sum266 = extractvalue { i64, i1 } %b.new.buf.len265, 0
  %ovf267 = extractvalue { i64, i1 } %b.new.buf.len265, 1
  br i1 %ovf267, label %str_overflow_abort269, label %b.new.buf.len268

b.nogrow260:                                      ; preds = %b.byte_ok249
  br label %b.push_done261

b.push_done261:                                   ; preds = %b.nogrow260, %b.new.buf.len268
  %b.cur.data275 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load225, i32 0, i32 1
  %b.cur.data276 = load ptr, ptr %b.cur.data275, align 8
  %b.cur.len277 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load225, i32 0, i32 0
  %b.cur.len278 = load i64, ptr %b.cur.len277, align 8
  %b.byte.gep279 = getelementptr i8, ptr %b.cur.data276, i64 %b.cur.len278
  store i8 %b.byte.i8251, ptr %b.byte.gep279, align 1
  %b.next.len280 = add i64 %b.cur.len278, 1
  %b.nul281 = getelementptr i8, ptr %b.cur.data276, i64 %b.next.len280
  store i8 0, ptr %b.nul281, align 1
  %b.len.gep282 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load225, i32 0, i32 0
  store i64 %b.next.len280, ptr %b.len.gep282, align 8
  %b.load283 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len284 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 0
  %b.rn.cur.len285 = load i64, ptr %b.rn.cur.len284, align 8
  %b.rn.new.len286 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len285, i64 1)
  %sum287 = extractvalue { i64, i1 } %b.rn.new.len286, 0
  %ovf288 = extractvalue { i64, i1 } %b.rn.new.len286, 1
  br i1 %ovf288, label %str_overflow_abort290, label %b.rn.new.len289

b.new.buf.len268:                                 ; preds = %str_overflow_abort269, %b.grow259
  %arena.cur270 = call ptr @dva_arena_current()
  %b.new.buf271 = call ptr @dva_arena_alloc(ptr %arena.cur270, i64 %sum266)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf271, ptr align 1 %b.data257, i64 %b.len253, i1 false)
  %b.grow.nul272 = getelementptr i8, ptr %b.new.buf271, i64 %b.len253
  store i8 0, ptr %b.grow.nul272, align 1
  %b.new.data.gep273 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load225, i32 0, i32 1
  store ptr %b.new.buf271, ptr %b.new.data.gep273, align 8
  %b.new.cap.gep274 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load225, i32 0, i32 2
  store i64 %b.new.cap264, ptr %b.new.cap.gep274, align 8
  br label %b.push_done261

str_overflow_abort269:                            ; preds = %b.grow259
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len268

b.rn.new.len289:                                  ; preds = %str_overflow_abort290, %b.push_done261
  %b.cap291 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 2
  %b.cap292 = load i64, ptr %b.cap291, align 8
  %b.need.grow293 = icmp slt i64 %b.cap292, %sum287
  br i1 %b.need.grow293, label %b.grow2294, label %b.nogrow2295

str_overflow_abort290:                            ; preds = %b.push_done261
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
  br i1 true, label %br.b1.48, label %br.c2.48

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

br.b1.48:                                         ; preds = %b.grow_done296
  store i8 46, ptr %b.rn.dst318, align 1
  br label %br.done.48

br.c2.48:                                         ; preds = %b.grow_done296
  br i1 true, label %br.b2.48, label %br.c3.48

br.b2.48:                                         ; preds = %br.c2.48
  store i8 -64, ptr %b.rn.dst318, align 1
  %br.dst1319 = getelementptr i8, ptr %b.rn.dst318, i64 1
  store i8 -82, ptr %br.dst1319, align 1
  br label %br.done.48

br.c3.48:                                         ; preds = %br.c2.48
  br i1 true, label %br.b3.48, label %br.b4.48

br.b3.48:                                         ; preds = %br.c3.48
  store i8 -32, ptr %b.rn.dst318, align 1
  %br.dst1.3320 = getelementptr i8, ptr %b.rn.dst318, i64 1
  store i8 -128, ptr %br.dst1.3320, align 1
  %br.dst2.3321 = getelementptr i8, ptr %b.rn.dst318, i64 2
  store i8 -82, ptr %br.dst2.3321, align 1
  br label %br.done.48

br.b4.48:                                         ; preds = %br.c3.48
  store i8 -16, ptr %b.rn.dst318, align 1
  %br.dst1.4322 = getelementptr i8, ptr %b.rn.dst318, i64 1
  store i8 -128, ptr %br.dst1.4322, align 1
  %br.dst2.4323 = getelementptr i8, ptr %b.rn.dst318, i64 2
  store i8 -128, ptr %br.dst2.4323, align 1
  %br.dst3.4324 = getelementptr i8, ptr %b.rn.dst318, i64 3
  store i8 -82, ptr %br.dst3.4324, align 1
  br label %br.done.48

br.done.48:                                       ; preds = %br.b4.48, %br.b3.48, %br.b2.48, %br.b1.48
  %br.nul325 = getelementptr i8, ptr %b.rn.data317, i64 %sum287
  store i8 0, ptr %br.nul325, align 1
  %b.len.gep326 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 0
  store i64 %sum287, ptr %b.len.gep326, align 8
  store i64 1, ptr %loop.idx.49, align 8
  br label %loop.header.49

loop.header.49:                                   ; preds = %loop.latch.49, %br.done.48
  %counter.load327 = load i64, ptr %loop.idx.49, align 8
  %loop.cond328 = icmp slt i64 %counter.load327, 6
  br i1 %loop.cond328, label %loop.body.49, label %loop.exit.nat.49

loop.body.49:                                     ; preds = %loop.header.49
  %loop.rel.i329 = sub i64 %counter.load327, 1
  store i64 1, ptr %loop.step.49, align 8
  store i64 %loop.rel.i329, ptr %var._i330, align 8
  store i64 %counter.load327, ptr %var._331, align 8
  store i64 %counter.load327, ptr %var.i, align 8
  %b.load332 = load ptr, ptr %var.b, align 8
  %var.load333 = load ptr, ptr %var.ms, align 8
  %s.read.len334 = getelementptr inbounds { i64, ptr }, ptr %var.load333, i32 0, i32 0
  %s.read.len335 = load i64, ptr %s.read.len334, align 8
  %s.read.len336 = and i64 %s.read.len335, 281474976710655
  %str.tag337 = lshr i64 %s.read.len335, 48
  %str.immortal338 = icmp eq i64 %str.tag337, 0
  br i1 %str.immortal338, label %str_ok340, label %str_gen_check339

loop.exit.nat.49:                                 ; preds = %loop.header.49
  br label %loop.exit.49

loop.latch.49:                                    ; preds = %b.push_done370
  %step.val392 = load i64, ptr %loop.step.49, align 8
  %loop.next393 = add i64 %counter.load327, %step.val392
  store i64 %loop.next393, ptr %loop.idx.49, align 8
  br label %loop.header.49

loop.exit.49:                                     ; preds = %loop.exit.nat.49
  br label %choice.exit224

str_gen_check339:                                 ; preds = %loop.body.49
  %arena.cur342 = call ptr @dva_arena_current()
  %tag.valid343 = call i1 @dva_arena_validate_tag(ptr %arena.cur342, i64 %str.tag337)
  br i1 %tag.valid343, label %str_ok340, label %str_stale341

str_ok340:                                        ; preds = %str_stale341, %str_gen_check339, %loop.body.49
  %s.read.data344 = getelementptr inbounds { i64, ptr }, ptr %var.load333, i32 0, i32 1
  %s.read.data345 = load ptr, ptr %s.read.data344, align 8
  %var.load346 = load i64, ptr %var.i, align 8
  %idx.neg347 = icmp slt i64 %var.load346, 0
  br i1 %idx.neg347, label %idx_oob350, label %idx_big_check348

str_stale341:                                     ; preds = %str_gen_check339
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok340

idx_big_check348:                                 ; preds = %str_ok340
  %idx.big351 = icmp sge i64 %var.load346, %s.read.len336
  br i1 %idx.big351, label %idx_oob350, label %idx_ok349

idx_ok349:                                        ; preds = %idx_oob350, %idx_big_check348
  %s.byte.gep352 = getelementptr i8, ptr %s.read.data345, i64 %var.load346
  %s.byte353 = load i8, ptr %s.byte.gep352, align 1
  %s.byte.val354 = zext i8 %s.byte353 to i64
  %b.b.ge0355 = icmp sge i64 %s.byte.val354, 0
  %b.b.le255356 = icmp sle i64 %s.byte.val354, 255
  %b.byte.range357 = and i1 %b.b.ge0355, %b.b.le255356
  br i1 %b.byte.range357, label %b.byte_ok358, label %b.byte_err359

idx_oob350:                                       ; preds = %idx_big_check348, %str_ok340
  %20 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok349

b.byte_ok358:                                     ; preds = %b.byte_err359, %idx_ok349
  %b.byte.i8360 = trunc i64 %s.byte.val354 to i8
  %b.len361 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load332, i32 0, i32 0
  %b.len362 = load i64, ptr %b.len361, align 8
  %b.cap363 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load332, i32 0, i32 2
  %b.cap364 = load i64, ptr %b.cap363, align 8
  %b.data365 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load332, i32 0, i32 1
  %b.data366 = load ptr, ptr %b.data365, align 8
  %b.needs.grow367 = icmp eq i64 %b.len362, %b.cap364
  br i1 %b.needs.grow367, label %b.grow368, label %b.nogrow369

b.byte_err359:                                    ; preds = %idx_ok349
  %21 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok358

b.grow368:                                        ; preds = %b.byte_ok358
  %b.cap2371 = mul i64 %b.cap364, 2
  %b.cap.small372 = icmp slt i64 %b.cap2371, 16
  %b.new.cap373 = select i1 %b.cap.small372, i64 16, i64 %b.cap2371
  %b.new.buf.len374 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap373, i64 1)
  %sum375 = extractvalue { i64, i1 } %b.new.buf.len374, 0
  %ovf376 = extractvalue { i64, i1 } %b.new.buf.len374, 1
  br i1 %ovf376, label %str_overflow_abort378, label %b.new.buf.len377

b.nogrow369:                                      ; preds = %b.byte_ok358
  br label %b.push_done370

b.push_done370:                                   ; preds = %b.nogrow369, %b.new.buf.len377
  %b.cur.data384 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load332, i32 0, i32 1
  %b.cur.data385 = load ptr, ptr %b.cur.data384, align 8
  %b.cur.len386 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load332, i32 0, i32 0
  %b.cur.len387 = load i64, ptr %b.cur.len386, align 8
  %b.byte.gep388 = getelementptr i8, ptr %b.cur.data385, i64 %b.cur.len387
  store i8 %b.byte.i8360, ptr %b.byte.gep388, align 1
  %b.next.len389 = add i64 %b.cur.len387, 1
  %b.nul390 = getelementptr i8, ptr %b.cur.data385, i64 %b.next.len389
  store i8 0, ptr %b.nul390, align 1
  %b.len.gep391 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load332, i32 0, i32 0
  store i64 %b.next.len389, ptr %b.len.gep391, align 8
  br label %loop.latch.49

b.new.buf.len377:                                 ; preds = %str_overflow_abort378, %b.grow368
  %arena.cur379 = call ptr @dva_arena_current()
  %b.new.buf380 = call ptr @dva_arena_alloc(ptr %arena.cur379, i64 %sum375)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf380, ptr align 1 %b.data366, i64 %b.len362, i1 false)
  %b.grow.nul381 = getelementptr i8, ptr %b.new.buf380, i64 %b.len362
  store i8 0, ptr %b.grow.nul381, align 1
  %b.new.data.gep382 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load332, i32 0, i32 1
  store ptr %b.new.buf380, ptr %b.new.data.gep382, align 8
  %b.new.cap.gep383 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load332, i32 0, i32 2
  store i64 %b.new.cap373, ptr %b.new.cap.gep383, align 8
  br label %b.push_done370

str_overflow_abort378:                            ; preds = %b.grow368
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len377

choice.then396:                                   ; preds = %choice.else223
  %var.load399 = load i64, ptr %"var.e'", align 8
  %addtmp400 = add i64 %var.load399, 1
  store i64 %addtmp400, ptr %var.en, align 8
  %var.load401 = load i64, ptr %var.en, align 8
  store i64 0, ptr %loop.idx.50, align 8
  br label %loop.header.50

choice.else397:                                   ; preds = %choice.else223
  %b.load585 = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.6.struct, align 8
  %app.str.len586 = and i64 %app.str.len, 281474976710655
  %str.tag587 = lshr i64 %app.str.len, 48
  %str.immortal588 = icmp eq i64 %str.tag587, 0
  br i1 %str.immortal588, label %str_ok590, label %str_gen_check589

choice.exit398:                                   ; preds = %loop.exit.55, %choice.exit472
  br label %choice.exit224

loop.header.50:                                   ; preds = %loop.latch.50, %choice.then396
  %counter.load402 = load i64, ptr %loop.idx.50, align 8
  %loop.cond403 = icmp slt i64 %counter.load402, %var.load401
  br i1 %loop.cond403, label %loop.body.50, label %loop.exit.nat.50

loop.body.50:                                     ; preds = %loop.header.50
  %loop.rel.i404 = sub i64 %counter.load402, 0
  store i64 1, ptr %loop.step.50, align 8
  store i64 %loop.rel.i404, ptr %var._i405, align 8
  store i64 %counter.load402, ptr %var._406, align 8
  store i64 %counter.load402, ptr %var.i, align 8
  %b.load407 = load ptr, ptr %var.b, align 8
  %var.load408 = load ptr, ptr %var.ms, align 8
  %s.read.len409 = getelementptr inbounds { i64, ptr }, ptr %var.load408, i32 0, i32 0
  %s.read.len410 = load i64, ptr %s.read.len409, align 8
  %s.read.len411 = and i64 %s.read.len410, 281474976710655
  %str.tag412 = lshr i64 %s.read.len410, 48
  %str.immortal413 = icmp eq i64 %str.tag412, 0
  br i1 %str.immortal413, label %str_ok415, label %str_gen_check414

loop.exit.nat.50:                                 ; preds = %loop.header.50
  br label %loop.exit.50

loop.latch.50:                                    ; preds = %b.push_done445
  %step.val467 = load i64, ptr %loop.step.50, align 8
  %loop.next468 = add i64 %counter.load402, %step.val467
  store i64 %loop.next468, ptr %loop.idx.50, align 8
  br label %loop.header.50

loop.exit.50:                                     ; preds = %loop.exit.nat.50
  %var.load469 = load i64, ptr %var.en, align 8
  %cmptmp470 = icmp slt i64 %var.load469, 6
  br i1 %cmptmp470, label %choice.then471, label %choice.exit472

str_gen_check414:                                 ; preds = %loop.body.50
  %arena.cur417 = call ptr @dva_arena_current()
  %tag.valid418 = call i1 @dva_arena_validate_tag(ptr %arena.cur417, i64 %str.tag412)
  br i1 %tag.valid418, label %str_ok415, label %str_stale416

str_ok415:                                        ; preds = %str_stale416, %str_gen_check414, %loop.body.50
  %s.read.data419 = getelementptr inbounds { i64, ptr }, ptr %var.load408, i32 0, i32 1
  %s.read.data420 = load ptr, ptr %s.read.data419, align 8
  %var.load421 = load i64, ptr %var.i, align 8
  %idx.neg422 = icmp slt i64 %var.load421, 0
  br i1 %idx.neg422, label %idx_oob425, label %idx_big_check423

str_stale416:                                     ; preds = %str_gen_check414
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok415

idx_big_check423:                                 ; preds = %str_ok415
  %idx.big426 = icmp sge i64 %var.load421, %s.read.len411
  br i1 %idx.big426, label %idx_oob425, label %idx_ok424

idx_ok424:                                        ; preds = %idx_oob425, %idx_big_check423
  %s.byte.gep427 = getelementptr i8, ptr %s.read.data420, i64 %var.load421
  %s.byte428 = load i8, ptr %s.byte.gep427, align 1
  %s.byte.val429 = zext i8 %s.byte428 to i64
  %b.b.ge0430 = icmp sge i64 %s.byte.val429, 0
  %b.b.le255431 = icmp sle i64 %s.byte.val429, 255
  %b.byte.range432 = and i1 %b.b.ge0430, %b.b.le255431
  br i1 %b.byte.range432, label %b.byte_ok433, label %b.byte_err434

idx_oob425:                                       ; preds = %idx_big_check423, %str_ok415
  %24 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok424

b.byte_ok433:                                     ; preds = %b.byte_err434, %idx_ok424
  %b.byte.i8435 = trunc i64 %s.byte.val429 to i8
  %b.len436 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load407, i32 0, i32 0
  %b.len437 = load i64, ptr %b.len436, align 8
  %b.cap438 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load407, i32 0, i32 2
  %b.cap439 = load i64, ptr %b.cap438, align 8
  %b.data440 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load407, i32 0, i32 1
  %b.data441 = load ptr, ptr %b.data440, align 8
  %b.needs.grow442 = icmp eq i64 %b.len437, %b.cap439
  br i1 %b.needs.grow442, label %b.grow443, label %b.nogrow444

b.byte_err434:                                    ; preds = %idx_ok424
  %25 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok433

b.grow443:                                        ; preds = %b.byte_ok433
  %b.cap2446 = mul i64 %b.cap439, 2
  %b.cap.small447 = icmp slt i64 %b.cap2446, 16
  %b.new.cap448 = select i1 %b.cap.small447, i64 16, i64 %b.cap2446
  %b.new.buf.len449 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap448, i64 1)
  %sum450 = extractvalue { i64, i1 } %b.new.buf.len449, 0
  %ovf451 = extractvalue { i64, i1 } %b.new.buf.len449, 1
  br i1 %ovf451, label %str_overflow_abort453, label %b.new.buf.len452

b.nogrow444:                                      ; preds = %b.byte_ok433
  br label %b.push_done445

b.push_done445:                                   ; preds = %b.nogrow444, %b.new.buf.len452
  %b.cur.data459 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load407, i32 0, i32 1
  %b.cur.data460 = load ptr, ptr %b.cur.data459, align 8
  %b.cur.len461 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load407, i32 0, i32 0
  %b.cur.len462 = load i64, ptr %b.cur.len461, align 8
  %b.byte.gep463 = getelementptr i8, ptr %b.cur.data460, i64 %b.cur.len462
  store i8 %b.byte.i8435, ptr %b.byte.gep463, align 1
  %b.next.len464 = add i64 %b.cur.len462, 1
  %b.nul465 = getelementptr i8, ptr %b.cur.data460, i64 %b.next.len464
  store i8 0, ptr %b.nul465, align 1
  %b.len.gep466 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load407, i32 0, i32 0
  store i64 %b.next.len464, ptr %b.len.gep466, align 8
  br label %loop.latch.50

b.new.buf.len452:                                 ; preds = %str_overflow_abort453, %b.grow443
  %arena.cur454 = call ptr @dva_arena_current()
  %b.new.buf455 = call ptr @dva_arena_alloc(ptr %arena.cur454, i64 %sum450)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf455, ptr align 1 %b.data441, i64 %b.len437, i1 false)
  %b.grow.nul456 = getelementptr i8, ptr %b.new.buf455, i64 %b.len437
  store i8 0, ptr %b.grow.nul456, align 1
  %b.new.data.gep457 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load407, i32 0, i32 1
  store ptr %b.new.buf455, ptr %b.new.data.gep457, align 8
  %b.new.cap.gep458 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load407, i32 0, i32 2
  store i64 %b.new.cap448, ptr %b.new.cap.gep458, align 8
  br label %b.push_done445

str_overflow_abort453:                            ; preds = %b.grow443
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len452

choice.then471:                                   ; preds = %loop.exit.50
  %b.load473 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len474 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load473, i32 0, i32 0
  %b.rn.cur.len475 = load i64, ptr %b.rn.cur.len474, align 8
  %b.rn.new.len476 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len475, i64 1)
  %sum477 = extractvalue { i64, i1 } %b.rn.new.len476, 0
  %ovf478 = extractvalue { i64, i1 } %b.rn.new.len476, 1
  br i1 %ovf478, label %str_overflow_abort480, label %b.rn.new.len479

choice.exit472:                                   ; preds = %loop.exit.52, %loop.exit.50
  br label %choice.exit398

b.rn.new.len479:                                  ; preds = %str_overflow_abort480, %choice.then471
  %b.cap481 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load473, i32 0, i32 2
  %b.cap482 = load i64, ptr %b.cap481, align 8
  %b.need.grow483 = icmp slt i64 %b.cap482, %sum477
  br i1 %b.need.grow483, label %b.grow2484, label %b.nogrow2485

str_overflow_abort480:                            ; preds = %choice.then471
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len479

b.grow2484:                                       ; preds = %b.rn.new.len479
  %b.cap2487 = mul i64 %b.cap482, 2
  %b.cap.small488 = icmp slt i64 %b.cap2487, 16
  %b.cap.grow489 = select i1 %b.cap.small488, i64 16, i64 %b.cap2487
  %b.cap.need490 = icmp slt i64 %b.cap.grow489, %sum477
  %b.new.cap491 = select i1 %b.cap.need490, i64 %sum477, i64 %b.cap.grow489
  %b.cur.len2492 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load473, i32 0, i32 0
  %b.cur.len2493 = load i64, ptr %b.cur.len2492, align 8
  %b.cur.data2494 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load473, i32 0, i32 1
  %b.cur.data2495 = load ptr, ptr %b.cur.data2494, align 8
  %b.new.buf.len2496 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap491, i64 1)
  %sum497 = extractvalue { i64, i1 } %b.new.buf.len2496, 0
  %ovf498 = extractvalue { i64, i1 } %b.new.buf.len2496, 1
  br i1 %ovf498, label %str_overflow_abort500, label %b.new.buf.len2499

b.nogrow2485:                                     ; preds = %b.rn.new.len479
  br label %b.grow_done486

b.grow_done486:                                   ; preds = %b.nogrow2485, %b.new.buf.len2499
  %b.rn.data506 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load473, i32 0, i32 1
  %b.rn.data507 = load ptr, ptr %b.rn.data506, align 8
  %b.rn.dst508 = getelementptr i8, ptr %b.rn.data507, i64 %b.rn.cur.len475
  br i1 true, label %br.b1.51, label %br.c2.51

b.new.buf.len2499:                                ; preds = %str_overflow_abort500, %b.grow2484
  %arena.cur501 = call ptr @dva_arena_current()
  %b.new.buf2502 = call ptr @dva_arena_alloc(ptr %arena.cur501, i64 %sum497)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2502, ptr align 1 %b.cur.data2495, i64 %b.cur.len2493, i1 false)
  %b.grow2.nul503 = getelementptr i8, ptr %b.new.buf2502, i64 %b.cur.len2493
  store i8 0, ptr %b.grow2.nul503, align 1
  %b.new.data2.gep504 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load473, i32 0, i32 1
  store ptr %b.new.buf2502, ptr %b.new.data2.gep504, align 8
  %b.new.cap2.gep505 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load473, i32 0, i32 2
  store i64 %b.new.cap491, ptr %b.new.cap2.gep505, align 8
  br label %b.grow_done486

str_overflow_abort500:                            ; preds = %b.grow2484
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2499

br.b1.51:                                         ; preds = %b.grow_done486
  store i8 46, ptr %b.rn.dst508, align 1
  br label %br.done.51

br.c2.51:                                         ; preds = %b.grow_done486
  br i1 true, label %br.b2.51, label %br.c3.51

br.b2.51:                                         ; preds = %br.c2.51
  store i8 -64, ptr %b.rn.dst508, align 1
  %br.dst1509 = getelementptr i8, ptr %b.rn.dst508, i64 1
  store i8 -82, ptr %br.dst1509, align 1
  br label %br.done.51

br.c3.51:                                         ; preds = %br.c2.51
  br i1 true, label %br.b3.51, label %br.b4.51

br.b3.51:                                         ; preds = %br.c3.51
  store i8 -32, ptr %b.rn.dst508, align 1
  %br.dst1.3510 = getelementptr i8, ptr %b.rn.dst508, i64 1
  store i8 -128, ptr %br.dst1.3510, align 1
  %br.dst2.3511 = getelementptr i8, ptr %b.rn.dst508, i64 2
  store i8 -82, ptr %br.dst2.3511, align 1
  br label %br.done.51

br.b4.51:                                         ; preds = %br.c3.51
  store i8 -16, ptr %b.rn.dst508, align 1
  %br.dst1.4512 = getelementptr i8, ptr %b.rn.dst508, i64 1
  store i8 -128, ptr %br.dst1.4512, align 1
  %br.dst2.4513 = getelementptr i8, ptr %b.rn.dst508, i64 2
  store i8 -128, ptr %br.dst2.4513, align 1
  %br.dst3.4514 = getelementptr i8, ptr %b.rn.dst508, i64 3
  store i8 -82, ptr %br.dst3.4514, align 1
  br label %br.done.51

br.done.51:                                       ; preds = %br.b4.51, %br.b3.51, %br.b2.51, %br.b1.51
  %br.nul515 = getelementptr i8, ptr %b.rn.data507, i64 %sum477
  store i8 0, ptr %br.nul515, align 1
  %b.len.gep516 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load473, i32 0, i32 0
  store i64 %sum477, ptr %b.len.gep516, align 8
  %var.load517 = load i64, ptr %var.en, align 8
  store i64 %var.load517, ptr %loop.idx.52, align 8
  br label %loop.header.52

loop.header.52:                                   ; preds = %loop.latch.52, %br.done.51
  %counter.load518 = load i64, ptr %loop.idx.52, align 8
  %loop.cond519 = icmp slt i64 %counter.load518, 6
  br i1 %loop.cond519, label %loop.body.52, label %loop.exit.nat.52

loop.body.52:                                     ; preds = %loop.header.52
  %loop.rel.i520 = sub i64 %counter.load518, %var.load517
  store i64 1, ptr %loop.step.52, align 8
  store i64 %loop.rel.i520, ptr %var._i521, align 8
  store i64 %counter.load518, ptr %var._522, align 8
  store i64 %counter.load518, ptr %var.i, align 8
  %b.load523 = load ptr, ptr %var.b, align 8
  %var.load524 = load ptr, ptr %var.ms, align 8
  %s.read.len525 = getelementptr inbounds { i64, ptr }, ptr %var.load524, i32 0, i32 0
  %s.read.len526 = load i64, ptr %s.read.len525, align 8
  %s.read.len527 = and i64 %s.read.len526, 281474976710655
  %str.tag528 = lshr i64 %s.read.len526, 48
  %str.immortal529 = icmp eq i64 %str.tag528, 0
  br i1 %str.immortal529, label %str_ok531, label %str_gen_check530

loop.exit.nat.52:                                 ; preds = %loop.header.52
  br label %loop.exit.52

loop.latch.52:                                    ; preds = %b.push_done561
  %step.val583 = load i64, ptr %loop.step.52, align 8
  %loop.next584 = add i64 %counter.load518, %step.val583
  store i64 %loop.next584, ptr %loop.idx.52, align 8
  br label %loop.header.52

loop.exit.52:                                     ; preds = %loop.exit.nat.52
  br label %choice.exit472

str_gen_check530:                                 ; preds = %loop.body.52
  %arena.cur533 = call ptr @dva_arena_current()
  %tag.valid534 = call i1 @dva_arena_validate_tag(ptr %arena.cur533, i64 %str.tag528)
  br i1 %tag.valid534, label %str_ok531, label %str_stale532

str_ok531:                                        ; preds = %str_stale532, %str_gen_check530, %loop.body.52
  %s.read.data535 = getelementptr inbounds { i64, ptr }, ptr %var.load524, i32 0, i32 1
  %s.read.data536 = load ptr, ptr %s.read.data535, align 8
  %var.load537 = load i64, ptr %var.i, align 8
  %idx.neg538 = icmp slt i64 %var.load537, 0
  br i1 %idx.neg538, label %idx_oob541, label %idx_big_check539

str_stale532:                                     ; preds = %str_gen_check530
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok531

idx_big_check539:                                 ; preds = %str_ok531
  %idx.big542 = icmp sge i64 %var.load537, %s.read.len527
  br i1 %idx.big542, label %idx_oob541, label %idx_ok540

idx_ok540:                                        ; preds = %idx_oob541, %idx_big_check539
  %s.byte.gep543 = getelementptr i8, ptr %s.read.data536, i64 %var.load537
  %s.byte544 = load i8, ptr %s.byte.gep543, align 1
  %s.byte.val545 = zext i8 %s.byte544 to i64
  %b.b.ge0546 = icmp sge i64 %s.byte.val545, 0
  %b.b.le255547 = icmp sle i64 %s.byte.val545, 255
  %b.byte.range548 = and i1 %b.b.ge0546, %b.b.le255547
  br i1 %b.byte.range548, label %b.byte_ok549, label %b.byte_err550

idx_oob541:                                       ; preds = %idx_big_check539, %str_ok531
  %30 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok540

b.byte_ok549:                                     ; preds = %b.byte_err550, %idx_ok540
  %b.byte.i8551 = trunc i64 %s.byte.val545 to i8
  %b.len552 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load523, i32 0, i32 0
  %b.len553 = load i64, ptr %b.len552, align 8
  %b.cap554 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load523, i32 0, i32 2
  %b.cap555 = load i64, ptr %b.cap554, align 8
  %b.data556 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load523, i32 0, i32 1
  %b.data557 = load ptr, ptr %b.data556, align 8
  %b.needs.grow558 = icmp eq i64 %b.len553, %b.cap555
  br i1 %b.needs.grow558, label %b.grow559, label %b.nogrow560

b.byte_err550:                                    ; preds = %idx_ok540
  %31 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok549

b.grow559:                                        ; preds = %b.byte_ok549
  %b.cap2562 = mul i64 %b.cap555, 2
  %b.cap.small563 = icmp slt i64 %b.cap2562, 16
  %b.new.cap564 = select i1 %b.cap.small563, i64 16, i64 %b.cap2562
  %b.new.buf.len565 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap564, i64 1)
  %sum566 = extractvalue { i64, i1 } %b.new.buf.len565, 0
  %ovf567 = extractvalue { i64, i1 } %b.new.buf.len565, 1
  br i1 %ovf567, label %str_overflow_abort569, label %b.new.buf.len568

b.nogrow560:                                      ; preds = %b.byte_ok549
  br label %b.push_done561

b.push_done561:                                   ; preds = %b.nogrow560, %b.new.buf.len568
  %b.cur.data575 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load523, i32 0, i32 1
  %b.cur.data576 = load ptr, ptr %b.cur.data575, align 8
  %b.cur.len577 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load523, i32 0, i32 0
  %b.cur.len578 = load i64, ptr %b.cur.len577, align 8
  %b.byte.gep579 = getelementptr i8, ptr %b.cur.data576, i64 %b.cur.len578
  store i8 %b.byte.i8551, ptr %b.byte.gep579, align 1
  %b.next.len580 = add i64 %b.cur.len578, 1
  %b.nul581 = getelementptr i8, ptr %b.cur.data576, i64 %b.next.len580
  store i8 0, ptr %b.nul581, align 1
  %b.len.gep582 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load523, i32 0, i32 0
  store i64 %b.next.len580, ptr %b.len.gep582, align 8
  br label %loop.latch.52

b.new.buf.len568:                                 ; preds = %str_overflow_abort569, %b.grow559
  %arena.cur570 = call ptr @dva_arena_current()
  %b.new.buf571 = call ptr @dva_arena_alloc(ptr %arena.cur570, i64 %sum566)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf571, ptr align 1 %b.data557, i64 %b.len553, i1 false)
  %b.grow.nul572 = getelementptr i8, ptr %b.new.buf571, i64 %b.len553
  store i8 0, ptr %b.grow.nul572, align 1
  %b.new.data.gep573 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load523, i32 0, i32 1
  store ptr %b.new.buf571, ptr %b.new.data.gep573, align 8
  %b.new.cap.gep574 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load523, i32 0, i32 2
  store i64 %b.new.cap564, ptr %b.new.cap.gep574, align 8
  br label %b.push_done561

str_overflow_abort569:                            ; preds = %b.grow559
  %32 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len568

str_gen_check589:                                 ; preds = %choice.else397
  %arena.cur592 = call ptr @dva_arena_current()
  %tag.valid593 = call i1 @dva_arena_validate_tag(ptr %arena.cur592, i64 %str.tag587)
  br i1 %tag.valid593, label %str_ok590, label %str_stale591

str_ok590:                                        ; preds = %str_stale591, %str_gen_check589, %choice.else397
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load585, i32 0, i32 0
  %b.app.cur.len594 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len594, i64 %app.str.len586)
  %sum595 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf596 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf596, label %str_overflow_abort598, label %b.app.new.len597

str_stale591:                                     ; preds = %str_gen_check589
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok590

b.app.new.len597:                                 ; preds = %str_overflow_abort598, %str_ok590
  %b.cap599 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load585, i32 0, i32 2
  %b.cap600 = load i64, ptr %b.cap599, align 8
  %b.need.grow601 = icmp slt i64 %b.cap600, %sum595
  br i1 %b.need.grow601, label %b.grow2602, label %b.nogrow2603

str_overflow_abort598:                            ; preds = %str_ok590
  %34 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len597

b.grow2602:                                       ; preds = %b.app.new.len597
  %b.cap2605 = mul i64 %b.cap600, 2
  %b.cap.small606 = icmp slt i64 %b.cap2605, 16
  %b.cap.grow607 = select i1 %b.cap.small606, i64 16, i64 %b.cap2605
  %b.cap.need608 = icmp slt i64 %b.cap.grow607, %sum595
  %b.new.cap609 = select i1 %b.cap.need608, i64 %sum595, i64 %b.cap.grow607
  %b.cur.len2610 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load585, i32 0, i32 0
  %b.cur.len2611 = load i64, ptr %b.cur.len2610, align 8
  %b.cur.data2612 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load585, i32 0, i32 1
  %b.cur.data2613 = load ptr, ptr %b.cur.data2612, align 8
  %b.new.buf.len2614 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap609, i64 1)
  %sum615 = extractvalue { i64, i1 } %b.new.buf.len2614, 0
  %ovf616 = extractvalue { i64, i1 } %b.new.buf.len2614, 1
  br i1 %ovf616, label %str_overflow_abort618, label %b.new.buf.len2617

b.nogrow2603:                                     ; preds = %b.app.new.len597
  br label %b.grow_done604

b.grow_done604:                                   ; preds = %b.nogrow2603, %b.new.buf.len2617
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load585, i32 0, i32 1
  %b.app.data624 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data624, i64 %b.app.cur.len594
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len586, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data624, i64 %sum595
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep625 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load585, i32 0, i32 0
  store i64 %sum595, ptr %b.len.gep625, align 8
  %var.load626 = load i64, ptr %"var.e'", align 8
  %subtmp627 = sub i64 0, %var.load626
  %subtmp628 = sub i64 %subtmp627, 1
  store i64 0, ptr %loop.idx.53, align 8
  br label %loop.header.53

b.new.buf.len2617:                                ; preds = %str_overflow_abort618, %b.grow2602
  %arena.cur619 = call ptr @dva_arena_current()
  %b.new.buf2620 = call ptr @dva_arena_alloc(ptr %arena.cur619, i64 %sum615)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2620, ptr align 1 %b.cur.data2613, i64 %b.cur.len2611, i1 false)
  %b.grow2.nul621 = getelementptr i8, ptr %b.new.buf2620, i64 %b.cur.len2611
  store i8 0, ptr %b.grow2.nul621, align 1
  %b.new.data2.gep622 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load585, i32 0, i32 1
  store ptr %b.new.buf2620, ptr %b.new.data2.gep622, align 8
  %b.new.cap2.gep623 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load585, i32 0, i32 2
  store i64 %b.new.cap609, ptr %b.new.cap2.gep623, align 8
  br label %b.grow_done604

str_overflow_abort618:                            ; preds = %b.grow2602
  %35 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2617

loop.header.53:                                   ; preds = %loop.latch.53, %b.grow_done604
  %counter.load629 = load i64, ptr %loop.idx.53, align 8
  %loop.cond630 = icmp slt i64 %counter.load629, %subtmp628
  br i1 %loop.cond630, label %loop.body.53, label %loop.exit.nat.53

loop.body.53:                                     ; preds = %loop.header.53
  %loop.rel.i631 = sub i64 %counter.load629, 0
  store i64 1, ptr %loop.step.53, align 8
  store i64 %loop.rel.i631, ptr %var._i632, align 8
  store i64 %counter.load629, ptr %var._633, align 8
  store i64 %counter.load629, ptr %var.i, align 8
  %b.load634 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len635 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load634, i32 0, i32 0
  %b.rn.cur.len636 = load i64, ptr %b.rn.cur.len635, align 8
  %b.rn.new.len637 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len636, i64 1)
  %sum638 = extractvalue { i64, i1 } %b.rn.new.len637, 0
  %ovf639 = extractvalue { i64, i1 } %b.rn.new.len637, 1
  br i1 %ovf639, label %str_overflow_abort641, label %b.rn.new.len640

loop.exit.nat.53:                                 ; preds = %loop.header.53
  br label %loop.exit.53

loop.latch.53:                                    ; preds = %br.done.54
  %step.val678 = load i64, ptr %loop.step.53, align 8
  %loop.next679 = add i64 %counter.load629, %step.val678
  store i64 %loop.next679, ptr %loop.idx.53, align 8
  br label %loop.header.53

loop.exit.53:                                     ; preds = %loop.exit.nat.53
  store i64 0, ptr %loop.idx.55, align 8
  br label %loop.header.55

b.rn.new.len640:                                  ; preds = %str_overflow_abort641, %loop.body.53
  %b.cap642 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load634, i32 0, i32 2
  %b.cap643 = load i64, ptr %b.cap642, align 8
  %b.need.grow644 = icmp slt i64 %b.cap643, %sum638
  br i1 %b.need.grow644, label %b.grow2645, label %b.nogrow2646

str_overflow_abort641:                            ; preds = %loop.body.53
  %36 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len640

b.grow2645:                                       ; preds = %b.rn.new.len640
  %b.cap2648 = mul i64 %b.cap643, 2
  %b.cap.small649 = icmp slt i64 %b.cap2648, 16
  %b.cap.grow650 = select i1 %b.cap.small649, i64 16, i64 %b.cap2648
  %b.cap.need651 = icmp slt i64 %b.cap.grow650, %sum638
  %b.new.cap652 = select i1 %b.cap.need651, i64 %sum638, i64 %b.cap.grow650
  %b.cur.len2653 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load634, i32 0, i32 0
  %b.cur.len2654 = load i64, ptr %b.cur.len2653, align 8
  %b.cur.data2655 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load634, i32 0, i32 1
  %b.cur.data2656 = load ptr, ptr %b.cur.data2655, align 8
  %b.new.buf.len2657 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap652, i64 1)
  %sum658 = extractvalue { i64, i1 } %b.new.buf.len2657, 0
  %ovf659 = extractvalue { i64, i1 } %b.new.buf.len2657, 1
  br i1 %ovf659, label %str_overflow_abort661, label %b.new.buf.len2660

b.nogrow2646:                                     ; preds = %b.rn.new.len640
  br label %b.grow_done647

b.grow_done647:                                   ; preds = %b.nogrow2646, %b.new.buf.len2660
  %b.rn.data667 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load634, i32 0, i32 1
  %b.rn.data668 = load ptr, ptr %b.rn.data667, align 8
  %b.rn.dst669 = getelementptr i8, ptr %b.rn.data668, i64 %b.rn.cur.len636
  br i1 true, label %br.b1.54, label %br.c2.54

b.new.buf.len2660:                                ; preds = %str_overflow_abort661, %b.grow2645
  %arena.cur662 = call ptr @dva_arena_current()
  %b.new.buf2663 = call ptr @dva_arena_alloc(ptr %arena.cur662, i64 %sum658)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2663, ptr align 1 %b.cur.data2656, i64 %b.cur.len2654, i1 false)
  %b.grow2.nul664 = getelementptr i8, ptr %b.new.buf2663, i64 %b.cur.len2654
  store i8 0, ptr %b.grow2.nul664, align 1
  %b.new.data2.gep665 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load634, i32 0, i32 1
  store ptr %b.new.buf2663, ptr %b.new.data2.gep665, align 8
  %b.new.cap2.gep666 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load634, i32 0, i32 2
  store i64 %b.new.cap652, ptr %b.new.cap2.gep666, align 8
  br label %b.grow_done647

str_overflow_abort661:                            ; preds = %b.grow2645
  %37 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2660

br.b1.54:                                         ; preds = %b.grow_done647
  store i8 48, ptr %b.rn.dst669, align 1
  br label %br.done.54

br.c2.54:                                         ; preds = %b.grow_done647
  br i1 true, label %br.b2.54, label %br.c3.54

br.b2.54:                                         ; preds = %br.c2.54
  store i8 -64, ptr %b.rn.dst669, align 1
  %br.dst1670 = getelementptr i8, ptr %b.rn.dst669, i64 1
  store i8 -80, ptr %br.dst1670, align 1
  br label %br.done.54

br.c3.54:                                         ; preds = %br.c2.54
  br i1 true, label %br.b3.54, label %br.b4.54

br.b3.54:                                         ; preds = %br.c3.54
  store i8 -32, ptr %b.rn.dst669, align 1
  %br.dst1.3671 = getelementptr i8, ptr %b.rn.dst669, i64 1
  store i8 -128, ptr %br.dst1.3671, align 1
  %br.dst2.3672 = getelementptr i8, ptr %b.rn.dst669, i64 2
  store i8 -80, ptr %br.dst2.3672, align 1
  br label %br.done.54

br.b4.54:                                         ; preds = %br.c3.54
  store i8 -16, ptr %b.rn.dst669, align 1
  %br.dst1.4673 = getelementptr i8, ptr %b.rn.dst669, i64 1
  store i8 -128, ptr %br.dst1.4673, align 1
  %br.dst2.4674 = getelementptr i8, ptr %b.rn.dst669, i64 2
  store i8 -128, ptr %br.dst2.4674, align 1
  %br.dst3.4675 = getelementptr i8, ptr %b.rn.dst669, i64 3
  store i8 -80, ptr %br.dst3.4675, align 1
  br label %br.done.54

br.done.54:                                       ; preds = %br.b4.54, %br.b3.54, %br.b2.54, %br.b1.54
  %br.nul676 = getelementptr i8, ptr %b.rn.data668, i64 %sum638
  store i8 0, ptr %br.nul676, align 1
  %b.len.gep677 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load634, i32 0, i32 0
  store i64 %sum638, ptr %b.len.gep677, align 8
  br label %loop.latch.53

loop.header.55:                                   ; preds = %loop.latch.55, %loop.exit.53
  %counter.load680 = load i64, ptr %loop.idx.55, align 8
  %loop.cond681 = icmp slt i64 %counter.load680, 6
  br i1 %loop.cond681, label %loop.body.55, label %loop.exit.nat.55

loop.body.55:                                     ; preds = %loop.header.55
  %loop.rel.i682 = sub i64 %counter.load680, 0
  store i64 1, ptr %loop.step.55, align 8
  store i64 %loop.rel.i682, ptr %var._i683, align 8
  store i64 %counter.load680, ptr %var._684, align 8
  store i64 %counter.load680, ptr %var.i, align 8
  %b.load685 = load ptr, ptr %var.b, align 8
  %var.load686 = load ptr, ptr %var.ms, align 8
  %s.read.len687 = getelementptr inbounds { i64, ptr }, ptr %var.load686, i32 0, i32 0
  %s.read.len688 = load i64, ptr %s.read.len687, align 8
  %s.read.len689 = and i64 %s.read.len688, 281474976710655
  %str.tag690 = lshr i64 %s.read.len688, 48
  %str.immortal691 = icmp eq i64 %str.tag690, 0
  br i1 %str.immortal691, label %str_ok693, label %str_gen_check692

loop.exit.nat.55:                                 ; preds = %loop.header.55
  br label %loop.exit.55

loop.latch.55:                                    ; preds = %b.push_done723
  %step.val745 = load i64, ptr %loop.step.55, align 8
  %loop.next746 = add i64 %counter.load680, %step.val745
  store i64 %loop.next746, ptr %loop.idx.55, align 8
  br label %loop.header.55

loop.exit.55:                                     ; preds = %loop.exit.nat.55
  br label %choice.exit398

str_gen_check692:                                 ; preds = %loop.body.55
  %arena.cur695 = call ptr @dva_arena_current()
  %tag.valid696 = call i1 @dva_arena_validate_tag(ptr %arena.cur695, i64 %str.tag690)
  br i1 %tag.valid696, label %str_ok693, label %str_stale694

str_ok693:                                        ; preds = %str_stale694, %str_gen_check692, %loop.body.55
  %s.read.data697 = getelementptr inbounds { i64, ptr }, ptr %var.load686, i32 0, i32 1
  %s.read.data698 = load ptr, ptr %s.read.data697, align 8
  %var.load699 = load i64, ptr %var.i, align 8
  %idx.neg700 = icmp slt i64 %var.load699, 0
  br i1 %idx.neg700, label %idx_oob703, label %idx_big_check701

str_stale694:                                     ; preds = %str_gen_check692
  %38 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok693

idx_big_check701:                                 ; preds = %str_ok693
  %idx.big704 = icmp sge i64 %var.load699, %s.read.len689
  br i1 %idx.big704, label %idx_oob703, label %idx_ok702

idx_ok702:                                        ; preds = %idx_oob703, %idx_big_check701
  %s.byte.gep705 = getelementptr i8, ptr %s.read.data698, i64 %var.load699
  %s.byte706 = load i8, ptr %s.byte.gep705, align 1
  %s.byte.val707 = zext i8 %s.byte706 to i64
  %b.b.ge0708 = icmp sge i64 %s.byte.val707, 0
  %b.b.le255709 = icmp sle i64 %s.byte.val707, 255
  %b.byte.range710 = and i1 %b.b.ge0708, %b.b.le255709
  br i1 %b.byte.range710, label %b.byte_ok711, label %b.byte_err712

idx_oob703:                                       ; preds = %idx_big_check701, %str_ok693
  %39 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok702

b.byte_ok711:                                     ; preds = %b.byte_err712, %idx_ok702
  %b.byte.i8713 = trunc i64 %s.byte.val707 to i8
  %b.len714 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load685, i32 0, i32 0
  %b.len715 = load i64, ptr %b.len714, align 8
  %b.cap716 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load685, i32 0, i32 2
  %b.cap717 = load i64, ptr %b.cap716, align 8
  %b.data718 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load685, i32 0, i32 1
  %b.data719 = load ptr, ptr %b.data718, align 8
  %b.needs.grow720 = icmp eq i64 %b.len715, %b.cap717
  br i1 %b.needs.grow720, label %b.grow721, label %b.nogrow722

b.byte_err712:                                    ; preds = %idx_ok702
  %40 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok711

b.grow721:                                        ; preds = %b.byte_ok711
  %b.cap2724 = mul i64 %b.cap717, 2
  %b.cap.small725 = icmp slt i64 %b.cap2724, 16
  %b.new.cap726 = select i1 %b.cap.small725, i64 16, i64 %b.cap2724
  %b.new.buf.len727 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap726, i64 1)
  %sum728 = extractvalue { i64, i1 } %b.new.buf.len727, 0
  %ovf729 = extractvalue { i64, i1 } %b.new.buf.len727, 1
  br i1 %ovf729, label %str_overflow_abort731, label %b.new.buf.len730

b.nogrow722:                                      ; preds = %b.byte_ok711
  br label %b.push_done723

b.push_done723:                                   ; preds = %b.nogrow722, %b.new.buf.len730
  %b.cur.data737 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load685, i32 0, i32 1
  %b.cur.data738 = load ptr, ptr %b.cur.data737, align 8
  %b.cur.len739 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load685, i32 0, i32 0
  %b.cur.len740 = load i64, ptr %b.cur.len739, align 8
  %b.byte.gep741 = getelementptr i8, ptr %b.cur.data738, i64 %b.cur.len740
  store i8 %b.byte.i8713, ptr %b.byte.gep741, align 1
  %b.next.len742 = add i64 %b.cur.len740, 1
  %b.nul743 = getelementptr i8, ptr %b.cur.data738, i64 %b.next.len742
  store i8 0, ptr %b.nul743, align 1
  %b.len.gep744 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load685, i32 0, i32 0
  store i64 %b.next.len742, ptr %b.len.gep744, align 8
  br label %loop.latch.55

b.new.buf.len730:                                 ; preds = %str_overflow_abort731, %b.grow721
  %arena.cur732 = call ptr @dva_arena_current()
  %b.new.buf733 = call ptr @dva_arena_alloc(ptr %arena.cur732, i64 %sum728)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf733, ptr align 1 %b.data719, i64 %b.len715, i1 false)
  %b.grow.nul734 = getelementptr i8, ptr %b.new.buf733, i64 %b.len715
  store i8 0, ptr %b.grow.nul734, align 1
  %b.new.data.gep735 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load685, i32 0, i32 1
  store ptr %b.new.buf733, ptr %b.new.data.gep735, align 8
  %b.new.cap.gep736 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load685, i32 0, i32 2
  store i64 %b.new.cap726, ptr %b.new.cap.gep736, align 8
  br label %b.push_done723

str_overflow_abort731:                            ; preds = %b.grow721
  %41 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len730

b.freeze.check756:                                ; preds = %choice.exit224
  %b.freeze.last.idx759 = sub i64 %b.freeze.nc754, 1
  %b.freeze.chunks.gep760 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena752, i32 0, i32 3
  %b.freeze.chunk.slot761 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep760, i64 0, i64 %b.freeze.last.idx759
  %b.freeze.last.chunk762 = load ptr, ptr %b.freeze.chunk.slot761, align 8
  %b.freeze.off.gep763 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena752, i32 0, i32 2
  %b.freeze.off764 = load i64, ptr %b.freeze.off.gep763, align 8
  %b.freeze.bump765 = getelementptr i8, ptr %b.freeze.last.chunk762, i64 %b.freeze.off764
  %b.freeze.cap.gep766 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena752, i32 0, i32 0
  %b.freeze.cap767 = load i64, ptr %b.freeze.cap.gep766, align 8
  %b.freeze.chunk.end768 = getelementptr i8, ptr %b.freeze.last.chunk762, i64 %b.freeze.cap767
  %b.freeze.ge.chunk769 = icmp uge ptr %b.freeze.data751, %b.freeze.last.chunk762
  %b.freeze.lt.end770 = icmp ult ptr %b.freeze.data751, %b.freeze.chunk.end768
  %b.freeze.in.chunk771 = and i1 %b.freeze.ge.chunk769, %b.freeze.lt.end770
  %b.freeze.ge.bump772 = icmp uge ptr %b.freeze.data751, %b.freeze.bump765
  %b.freeze.reaped773 = and i1 %b.freeze.in.chunk771, %b.freeze.ge.bump772
  br i1 %b.freeze.reaped773, label %b.freeze.copy757, label %b.freeze.done758

b.freeze.copy757:                                 ; preds = %b.freeze.check756
  %b.freeze.alen774 = add i64 %b.freeze.len749, 1
  %arena.cur775 = call ptr @dva_arena_current()
  %b.freeze.fresh776 = call ptr @dva_arena_alloc(ptr %arena.cur775, i64 %b.freeze.alen774)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh776, ptr align 1 %b.freeze.data751, i64 %b.freeze.len749, i1 false)
  %b.freeze.nul777 = getelementptr i8, ptr %b.freeze.fresh776, i64 %b.freeze.len749
  store i8 0, ptr %b.freeze.nul777, align 1
  br label %b.freeze.done758

b.freeze.done758:                                 ; preds = %b.freeze.copy757, %b.freeze.check756, %choice.exit224
  %b.freeze.data778 = phi ptr [ %b.freeze.data751, %choice.exit224 ], [ %b.freeze.data751, %b.freeze.check756 ], [ %b.freeze.fresh776, %b.freeze.copy757 ]
  %arena.cur779 = call ptr @dva_arena_current()
  %builder.freeze780 = call ptr @dva_arena_alloc(ptr %arena.cur779, i64 16)
  %str.build.len.gep781 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze780, i32 0, i32 0
  store i64 %b.freeze.len749, ptr %str.build.len.gep781, align 8
  %str.build.data.gep782 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze780, i32 0, i32 1
  store ptr %b.freeze.data778, ptr %str.build.data.gep782, align 8
  %b.freeze.rst.len783 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load747, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len783, align 8
  %b.freeze.rst.data784 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load747, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data784, align 8
  %b.freeze.rst.cap785 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load747, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap785, align 8
  store ptr %builder.freeze780, ptr %var.full, align 8
  store i64 -1, ptr %"var.dot_pos'", align 8
  %var.load786 = load ptr, ptr %var.full, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load786, i32 0, i32 0
  %str.len.query787 = load i64, ptr %str.len.query, align 8
  %str.len.query788 = and i64 %str.len.query787, 281474976710655
  %str.tag789 = lshr i64 %str.len.query787, 48
  %str.immortal790 = icmp eq i64 %str.tag789, 0
  br i1 %str.immortal790, label %str_ok792, label %str_gen_check791

str_gen_check791:                                 ; preds = %b.freeze.done758
  %arena.cur794 = call ptr @dva_arena_current()
  %tag.valid795 = call i1 @dva_arena_validate_tag(ptr %arena.cur794, i64 %str.tag789)
  br i1 %tag.valid795, label %str_ok792, label %str_stale793

str_ok792:                                        ; preds = %str_stale793, %str_gen_check791, %b.freeze.done758
  store i64 0, ptr %loop.idx.56, align 8
  br label %loop.header.56

str_stale793:                                     ; preds = %str_gen_check791
  %42 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok792

loop.header.56:                                   ; preds = %loop.latch.56, %str_ok792
  %counter.load796 = load i64, ptr %loop.idx.56, align 8
  %loop.cond797 = icmp slt i64 %counter.load796, %str.len.query788
  br i1 %loop.cond797, label %loop.body.56, label %loop.exit.nat.56

loop.body.56:                                     ; preds = %loop.header.56
  %loop.rel.i798 = sub i64 %counter.load796, 0
  store i64 1, ptr %loop.step.56, align 8
  store i64 %loop.rel.i798, ptr %var._i799, align 8
  store i64 %counter.load796, ptr %var._800, align 8
  store i64 %counter.load796, ptr %var.i, align 8
  %var.load801 = load ptr, ptr %var.full, align 8
  %s.read.len802 = getelementptr inbounds { i64, ptr }, ptr %var.load801, i32 0, i32 0
  %s.read.len803 = load i64, ptr %s.read.len802, align 8
  %s.read.len804 = and i64 %s.read.len803, 281474976710655
  %str.tag805 = lshr i64 %s.read.len803, 48
  %str.immortal806 = icmp eq i64 %str.tag805, 0
  br i1 %str.immortal806, label %str_ok808, label %str_gen_check807

loop.exit.nat.56:                                 ; preds = %loop.header.56
  br label %loop.exit.56

loop.latch.56:                                    ; preds = %choice.exit825
  %step.val827 = load i64, ptr %loop.step.56, align 8
  %loop.next828 = add i64 %counter.load796, %step.val827
  store i64 %loop.next828, ptr %loop.idx.56, align 8
  br label %loop.header.56

loop.exit.56:                                     ; preds = %loop.exit.nat.56
  %var.load829 = load ptr, ptr %var.full, align 8
  %str.len.query830 = getelementptr inbounds { i64, ptr }, ptr %var.load829, i32 0, i32 0
  %str.len.query831 = load i64, ptr %str.len.query830, align 8
  %str.len.query832 = and i64 %str.len.query831, 281474976710655
  %str.tag833 = lshr i64 %str.len.query831, 48
  %str.immortal834 = icmp eq i64 %str.tag833, 0
  br i1 %str.immortal834, label %str_ok836, label %str_gen_check835

str_gen_check807:                                 ; preds = %loop.body.56
  %arena.cur810 = call ptr @dva_arena_current()
  %tag.valid811 = call i1 @dva_arena_validate_tag(ptr %arena.cur810, i64 %str.tag805)
  br i1 %tag.valid811, label %str_ok808, label %str_stale809

str_ok808:                                        ; preds = %str_stale809, %str_gen_check807, %loop.body.56
  %s.read.data812 = getelementptr inbounds { i64, ptr }, ptr %var.load801, i32 0, i32 1
  %s.read.data813 = load ptr, ptr %s.read.data812, align 8
  %var.load814 = load i64, ptr %var.i, align 8
  %idx.neg815 = icmp slt i64 %var.load814, 0
  br i1 %idx.neg815, label %idx_oob818, label %idx_big_check816

str_stale809:                                     ; preds = %str_gen_check807
  %43 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok808

idx_big_check816:                                 ; preds = %str_ok808
  %idx.big819 = icmp sge i64 %var.load814, %s.read.len804
  br i1 %idx.big819, label %idx_oob818, label %idx_ok817

idx_ok817:                                        ; preds = %idx_oob818, %idx_big_check816
  %s.byte.gep820 = getelementptr i8, ptr %s.read.data813, i64 %var.load814
  %s.byte821 = load i8, ptr %s.byte.gep820, align 1
  %s.byte.val822 = zext i8 %s.byte821 to i64
  %cmptmp823 = icmp eq i64 %s.byte.val822, 46
  br i1 %cmptmp823, label %choice.then824, label %choice.exit825

idx_oob818:                                       ; preds = %idx_big_check816, %str_ok808
  %44 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok817

choice.then824:                                   ; preds = %idx_ok817
  %var.load826 = load i64, ptr %var.i, align 8
  store i64 %var.load826, ptr %"var.dot_pos'", align 8
  br label %choice.exit825

choice.exit825:                                   ; preds = %choice.then824, %idx_ok817
  br label %loop.latch.56

str_gen_check835:                                 ; preds = %loop.exit.56
  %arena.cur838 = call ptr @dva_arena_current()
  %tag.valid839 = call i1 @dva_arena_validate_tag(ptr %arena.cur838, i64 %str.tag833)
  br i1 %tag.valid839, label %str_ok836, label %str_stale837

str_ok836:                                        ; preds = %str_stale837, %str_gen_check835, %loop.exit.56
  store i64 %str.len.query832, ptr %var.len, align 8
  %var.load840 = load i64, ptr %var.len, align 8
  store i64 %var.load840, ptr %"var.end'", align 8
  %var.load841 = load i64, ptr %"var.dot_pos'", align 8
  %cmptmp842 = icmp sge i64 %var.load841, 0
  br i1 %cmptmp842, label %choice.then843, label %choice.exit844

str_stale837:                                     ; preds = %str_gen_check835
  %45 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok836

choice.then843:                                   ; preds = %str_ok836
  store i64 0, ptr %loop.idx.57, align 8
  br label %loop.header.57

choice.exit844:                                   ; preds = %choice.exit889, %str_ok836
  %var.load891 = load ptr, ptr %var.full, align 8
  %s.read.len892 = getelementptr inbounds { i64, ptr }, ptr %var.load891, i32 0, i32 0
  %s.read.len893 = load i64, ptr %s.read.len892, align 8
  %s.read.len894 = and i64 %s.read.len893, 281474976710655
  %str.tag895 = lshr i64 %s.read.len893, 48
  %str.immortal896 = icmp eq i64 %str.tag895, 0
  br i1 %str.immortal896, label %str_ok898, label %str_gen_check897

loop.header.57:                                   ; preds = %loop.latch.57, %choice.then843
  %counter.load845 = load i64, ptr %loop.idx.57, align 8
  br label %loop.body.57

loop.body.57:                                     ; preds = %loop.header.57
  %loop.rel.i846 = sub i64 %counter.load845, 0
  store i64 1, ptr %loop.step.57, align 8
  store i64 %loop.rel.i846, ptr %var._i847, align 8
  store i64 %counter.load845, ptr %var._848, align 8
  %var.load849 = load i64, ptr %"var.end'", align 8
  %subtmp850 = sub i64 %var.load849, 1
  %var.load851 = load i64, ptr %"var.dot_pos'", align 8
  %cmptmp852 = icmp sgt i64 %subtmp850, %var.load851
  br i1 %cmptmp852, label %and.58.then, label %and.58.else

loop.exit.nat.57:                                 ; No predecessors!
  br label %loop.exit.57

loop.latch.57:                                    ; preds = %choice.exit879
  %step.val882 = load i64, ptr %loop.step.57, align 8
  %loop.next883 = add i64 %counter.load845, %step.val882
  store i64 %loop.next883, ptr %loop.idx.57, align 8
  br label %loop.header.57

loop.exit.57:                                     ; preds = %choice.else878, %loop.exit.nat.57
  %var.load884 = load i64, ptr %"var.end'", align 8
  %subtmp885 = sub i64 %var.load884, 1
  %var.load886 = load i64, ptr %"var.dot_pos'", align 8
  %cmptmp887 = icmp eq i64 %subtmp885, %var.load886
  br i1 %cmptmp887, label %choice.then888, label %choice.exit889

and.58.then:                                      ; preds = %loop.body.57
  %var.load853 = load ptr, ptr %var.full, align 8
  %s.read.len854 = getelementptr inbounds { i64, ptr }, ptr %var.load853, i32 0, i32 0
  %s.read.len855 = load i64, ptr %s.read.len854, align 8
  %s.read.len856 = and i64 %s.read.len855, 281474976710655
  %str.tag857 = lshr i64 %s.read.len855, 48
  %str.immortal858 = icmp eq i64 %str.tag857, 0
  br i1 %str.immortal858, label %str_ok860, label %str_gen_check859

and.58.else:                                      ; preds = %loop.body.57
  br label %and.58.exit

and.58.exit:                                      ; preds = %and.58.else, %idx_ok870
  %and.58.phi = phi i1 [ %cmptmp876, %idx_ok870 ], [ %cmptmp852, %and.58.else ]
  br i1 %and.58.phi, label %choice.then877, label %choice.else878

str_gen_check859:                                 ; preds = %and.58.then
  %arena.cur862 = call ptr @dva_arena_current()
  %tag.valid863 = call i1 @dva_arena_validate_tag(ptr %arena.cur862, i64 %str.tag857)
  br i1 %tag.valid863, label %str_ok860, label %str_stale861

str_ok860:                                        ; preds = %str_stale861, %str_gen_check859, %and.58.then
  %s.read.data864 = getelementptr inbounds { i64, ptr }, ptr %var.load853, i32 0, i32 1
  %s.read.data865 = load ptr, ptr %s.read.data864, align 8
  %var.load866 = load i64, ptr %"var.end'", align 8
  %subtmp867 = sub i64 %var.load866, 1
  %idx.neg868 = icmp slt i64 %subtmp867, 0
  br i1 %idx.neg868, label %idx_oob871, label %idx_big_check869

str_stale861:                                     ; preds = %str_gen_check859
  %46 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok860

idx_big_check869:                                 ; preds = %str_ok860
  %idx.big872 = icmp sge i64 %subtmp867, %s.read.len856
  br i1 %idx.big872, label %idx_oob871, label %idx_ok870

idx_ok870:                                        ; preds = %idx_oob871, %idx_big_check869
  %s.byte.gep873 = getelementptr i8, ptr %s.read.data865, i64 %subtmp867
  %s.byte874 = load i8, ptr %s.byte.gep873, align 1
  %s.byte.val875 = zext i8 %s.byte874 to i64
  %cmptmp876 = icmp eq i64 %s.byte.val875, 48
  br label %and.58.exit

idx_oob871:                                       ; preds = %idx_big_check869, %str_ok860
  %47 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok870

choice.then877:                                   ; preds = %and.58.exit
  %var.load880 = load i64, ptr %"var.end'", align 8
  %subtmp881 = sub i64 %var.load880, 1
  store i64 %subtmp881, ptr %"var.end'", align 8
  br label %choice.exit879

choice.else878:                                   ; preds = %and.58.exit
  br label %loop.exit.57

choice.exit879:                                   ; preds = %choice.then877
  br label %loop.latch.57

choice.then888:                                   ; preds = %loop.exit.57
  %var.load890 = load i64, ptr %"var.dot_pos'", align 8
  store i64 %var.load890, ptr %"var.end'", align 8
  br label %choice.exit889

choice.exit889:                                   ; preds = %choice.then888, %loop.exit.57
  br label %choice.exit844

str_gen_check897:                                 ; preds = %choice.exit844
  %arena.cur900 = call ptr @dva_arena_current()
  %tag.valid901 = call i1 @dva_arena_validate_tag(ptr %arena.cur900, i64 %str.tag895)
  br i1 %tag.valid901, label %str_ok898, label %str_stale899

str_ok898:                                        ; preds = %str_stale899, %str_gen_check897, %choice.exit844
  %s.read.data902 = getelementptr inbounds { i64, ptr }, ptr %var.load891, i32 0, i32 1
  %s.read.data903 = load ptr, ptr %s.read.data902, align 8
  %var.load904 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len894, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len894
  %final.start = select i1 %start.gt.len, i64 %s.read.len894, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load904, 0
  %rel.end = add i64 %s.read.len894, %var.load904
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load904
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len894
  %final.end = select i1 %end.gt.len, i64 %s.read.len894, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data903, i64 %final.start
  %arena.cur905 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur905, i64 16)
  %str.build.len.gep906 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep906, align 8
  %str.build.data.gep907 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep907, align 8
  store ptr %str.view, ptr %var.mant, align 8
  %var.load908 = load i64, ptr %"var.e'", align 8
  %cmptmp909 = icmp slt i64 %var.load908, 0
  br i1 %cmptmp909, label %choice.then910, label %choice.else911

str_stale899:                                     ; preds = %str_gen_check897
  %48 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok898

choice.then910:                                   ; preds = %str_ok898
  %var.load913 = load i64, ptr %"var.e'", align 8
  %subtmp914 = sub i64 0, %var.load913
  %call.res915 = call ptr @"str::from_int"(i64 %subtmp914)
  %concat.lhs = load i64, ptr @str.7.struct, align 8
  %concat.lhs916 = and i64 %concat.lhs, 281474976710655
  %str.tag917 = lshr i64 %concat.lhs, 48
  %str.immortal918 = icmp eq i64 %str.tag917, 0
  br i1 %str.immortal918, label %str_ok920, label %str_gen_check919

choice.else911:                                   ; preds = %str_ok898
  %var.load948 = load i64, ptr %"var.e'", align 8
  %call.res949 = call ptr @"str::from_int"(i64 %var.load948)
  br label %choice.exit912

choice.exit912:                                   ; preds = %choice.else911, %concat.tot.len942
  %choice.res950 = phi ptr [ %concat.str, %concat.tot.len942 ], [ %call.res949, %choice.else911 ]
  store ptr %choice.res950, ptr %var.es, align 8
  %var.load951 = load i64, ptr %"var.e'", align 8
  %cmptmp952 = icmp slt i64 %var.load951, -4
  br i1 %cmptmp952, label %or.59.then, label %or.59.else

str_gen_check919:                                 ; preds = %choice.then910
  %arena.cur922 = call ptr @dva_arena_current()
  %tag.valid923 = call i1 @dva_arena_validate_tag(ptr %arena.cur922, i64 %str.tag917)
  br i1 %tag.valid923, label %str_ok920, label %str_stale921

str_ok920:                                        ; preds = %str_stale921, %str_gen_check919, %choice.then910
  %concat.lhs924 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %call.res915, i32 0, i32 0
  %concat.rhs925 = load i64, ptr %concat.rhs, align 8
  %concat.rhs926 = and i64 %concat.rhs925, 281474976710655
  %str.tag927 = lshr i64 %concat.rhs925, 48
  %str.immortal928 = icmp eq i64 %str.tag927, 0
  br i1 %str.immortal928, label %str_ok930, label %str_gen_check929

str_stale921:                                     ; preds = %str_gen_check919
  %49 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok920

str_gen_check929:                                 ; preds = %str_ok920
  %arena.cur932 = call ptr @dva_arena_current()
  %tag.valid933 = call i1 @dva_arena_validate_tag(ptr %arena.cur932, i64 %str.tag927)
  br i1 %tag.valid933, label %str_ok930, label %str_stale931

str_ok930:                                        ; preds = %str_stale931, %str_gen_check929, %str_ok920
  %concat.rhs934 = getelementptr inbounds { i64, ptr }, ptr %call.res915, i32 0, i32 1
  %concat.rhs935 = load ptr, ptr %concat.rhs934, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs916, i64 %concat.rhs926)
  %sum936 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf937 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf937, label %str_overflow_abort939, label %concat.sum.len938

str_stale931:                                     ; preds = %str_gen_check929
  %50 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok930

concat.sum.len938:                                ; preds = %str_overflow_abort939, %str_ok930
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum936, i64 1)
  %sum940 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf941 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf941, label %str_overflow_abort943, label %concat.tot.len942

str_overflow_abort939:                            ; preds = %str_ok930
  %51 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len938

concat.tot.len942:                                ; preds = %str_overflow_abort943, %concat.sum.len938
  %arena.cur944 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur944, i64 %sum940)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs924, i64 %concat.lhs916, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs916
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs935, i64 %concat.rhs926, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum936
  store i8 0, ptr %concat.nul, align 1
  %arena.cur945 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur945, i64 16)
  %str.build.len.gep946 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum936, ptr %str.build.len.gep946, align 8
  %str.build.data.gep947 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep947, align 8
  br label %choice.exit912

str_overflow_abort943:                            ; preds = %concat.sum.len938
  %52 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len942

or.59.then:                                       ; preds = %choice.exit912
  br label %or.59.exit

or.59.else:                                       ; preds = %choice.exit912
  %var.load953 = load i64, ptr %"var.e'", align 8
  %cmptmp954 = icmp sge i64 %var.load953, 6
  br label %or.59.exit

or.59.exit:                                       ; preds = %or.59.else, %or.59.then
  %or.59.phi = phi i1 [ %cmptmp952, %or.59.then ], [ %cmptmp954, %or.59.else ]
  br i1 %or.59.phi, label %choice.then955, label %choice.else956

choice.then955:                                   ; preds = %or.59.exit
  %var.load958 = load ptr, ptr %var.mant, align 8
  %concat.lhs959 = getelementptr inbounds { i64, ptr }, ptr %var.load958, i32 0, i32 0
  %concat.lhs960 = load i64, ptr %concat.lhs959, align 8
  %concat.lhs961 = and i64 %concat.lhs960, 281474976710655
  %str.tag962 = lshr i64 %concat.lhs960, 48
  %str.immortal963 = icmp eq i64 %str.tag962, 0
  br i1 %str.immortal963, label %str_ok965, label %str_gen_check964

choice.else956:                                   ; preds = %or.59.exit
  %var.load1042 = load ptr, ptr %var.mant, align 8
  br label %choice.exit957

choice.exit957:                                   ; preds = %choice.else956, %concat.tot.len1032
  %choice.res1043 = phi ptr [ %concat.str1039, %concat.tot.len1032 ], [ %var.load1042, %choice.else956 ]
  ret ptr %choice.res1043

str_gen_check964:                                 ; preds = %choice.then955
  %arena.cur967 = call ptr @dva_arena_current()
  %tag.valid968 = call i1 @dva_arena_validate_tag(ptr %arena.cur967, i64 %str.tag962)
  br i1 %tag.valid968, label %str_ok965, label %str_stale966

str_ok965:                                        ; preds = %str_stale966, %str_gen_check964, %choice.then955
  %concat.lhs969 = getelementptr inbounds { i64, ptr }, ptr %var.load958, i32 0, i32 1
  %concat.lhs970 = load ptr, ptr %concat.lhs969, align 8
  %concat.rhs971 = load i64, ptr @str.8.struct, align 8
  %concat.rhs972 = and i64 %concat.rhs971, 281474976710655
  %str.tag973 = lshr i64 %concat.rhs971, 48
  %str.immortal974 = icmp eq i64 %str.tag973, 0
  br i1 %str.immortal974, label %str_ok976, label %str_gen_check975

str_stale966:                                     ; preds = %str_gen_check964
  %53 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok965

str_gen_check975:                                 ; preds = %str_ok965
  %arena.cur978 = call ptr @dva_arena_current()
  %tag.valid979 = call i1 @dva_arena_validate_tag(ptr %arena.cur978, i64 %str.tag973)
  br i1 %tag.valid979, label %str_ok976, label %str_stale977

str_ok976:                                        ; preds = %str_stale977, %str_gen_check975, %str_ok965
  %concat.rhs980 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %concat.sum.len981 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs961, i64 %concat.rhs972)
  %sum982 = extractvalue { i64, i1 } %concat.sum.len981, 0
  %ovf983 = extractvalue { i64, i1 } %concat.sum.len981, 1
  br i1 %ovf983, label %str_overflow_abort985, label %concat.sum.len984

str_stale977:                                     ; preds = %str_gen_check975
  %54 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok976

concat.sum.len984:                                ; preds = %str_overflow_abort985, %str_ok976
  %concat.tot.len986 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum982, i64 1)
  %sum987 = extractvalue { i64, i1 } %concat.tot.len986, 0
  %ovf988 = extractvalue { i64, i1 } %concat.tot.len986, 1
  br i1 %ovf988, label %str_overflow_abort990, label %concat.tot.len989

str_overflow_abort985:                            ; preds = %str_ok976
  %55 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len984

concat.tot.len989:                                ; preds = %str_overflow_abort990, %concat.sum.len984
  %arena.cur991 = call ptr @dva_arena_current()
  %concat.buf992 = call ptr @dva_arena_alloc(ptr %arena.cur991, i64 %sum987)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf992, ptr align 1 %concat.lhs970, i64 %concat.lhs961, i1 false)
  %concat.mid993 = getelementptr i8, ptr %concat.buf992, i64 %concat.lhs961
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid993, ptr align 1 %concat.rhs980, i64 %concat.rhs972, i1 false)
  %concat.nul994 = getelementptr i8, ptr %concat.buf992, i64 %sum982
  store i8 0, ptr %concat.nul994, align 1
  %arena.cur995 = call ptr @dva_arena_current()
  %concat.str996 = call ptr @dva_arena_alloc(ptr %arena.cur995, i64 16)
  %str.build.len.gep997 = getelementptr inbounds { i64, ptr }, ptr %concat.str996, i32 0, i32 0
  store i64 %sum982, ptr %str.build.len.gep997, align 8
  %str.build.data.gep998 = getelementptr inbounds { i64, ptr }, ptr %concat.str996, i32 0, i32 1
  store ptr %concat.buf992, ptr %str.build.data.gep998, align 8
  %var.load999 = load ptr, ptr %var.es, align 8
  %concat.lhs1000 = getelementptr inbounds { i64, ptr }, ptr %concat.str996, i32 0, i32 0
  %concat.lhs1001 = load i64, ptr %concat.lhs1000, align 8
  %concat.lhs1002 = and i64 %concat.lhs1001, 281474976710655
  %str.tag1003 = lshr i64 %concat.lhs1001, 48
  %str.immortal1004 = icmp eq i64 %str.tag1003, 0
  br i1 %str.immortal1004, label %str_ok1006, label %str_gen_check1005

str_overflow_abort990:                            ; preds = %concat.sum.len984
  %56 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len989

str_gen_check1005:                                ; preds = %concat.tot.len989
  %arena.cur1008 = call ptr @dva_arena_current()
  %tag.valid1009 = call i1 @dva_arena_validate_tag(ptr %arena.cur1008, i64 %str.tag1003)
  br i1 %tag.valid1009, label %str_ok1006, label %str_stale1007

str_ok1006:                                       ; preds = %str_stale1007, %str_gen_check1005, %concat.tot.len989
  %concat.lhs1010 = getelementptr inbounds { i64, ptr }, ptr %concat.str996, i32 0, i32 1
  %concat.lhs1011 = load ptr, ptr %concat.lhs1010, align 8
  %concat.rhs1012 = getelementptr inbounds { i64, ptr }, ptr %var.load999, i32 0, i32 0
  %concat.rhs1013 = load i64, ptr %concat.rhs1012, align 8
  %concat.rhs1014 = and i64 %concat.rhs1013, 281474976710655
  %str.tag1015 = lshr i64 %concat.rhs1013, 48
  %str.immortal1016 = icmp eq i64 %str.tag1015, 0
  br i1 %str.immortal1016, label %str_ok1018, label %str_gen_check1017

str_stale1007:                                    ; preds = %str_gen_check1005
  %57 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1006

str_gen_check1017:                                ; preds = %str_ok1006
  %arena.cur1020 = call ptr @dva_arena_current()
  %tag.valid1021 = call i1 @dva_arena_validate_tag(ptr %arena.cur1020, i64 %str.tag1015)
  br i1 %tag.valid1021, label %str_ok1018, label %str_stale1019

str_ok1018:                                       ; preds = %str_stale1019, %str_gen_check1017, %str_ok1006
  %concat.rhs1022 = getelementptr inbounds { i64, ptr }, ptr %var.load999, i32 0, i32 1
  %concat.rhs1023 = load ptr, ptr %concat.rhs1022, align 8
  %concat.sum.len1024 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1002, i64 %concat.rhs1014)
  %sum1025 = extractvalue { i64, i1 } %concat.sum.len1024, 0
  %ovf1026 = extractvalue { i64, i1 } %concat.sum.len1024, 1
  br i1 %ovf1026, label %str_overflow_abort1028, label %concat.sum.len1027

str_stale1019:                                    ; preds = %str_gen_check1017
  %58 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1018

concat.sum.len1027:                               ; preds = %str_overflow_abort1028, %str_ok1018
  %concat.tot.len1029 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1025, i64 1)
  %sum1030 = extractvalue { i64, i1 } %concat.tot.len1029, 0
  %ovf1031 = extractvalue { i64, i1 } %concat.tot.len1029, 1
  br i1 %ovf1031, label %str_overflow_abort1033, label %concat.tot.len1032

str_overflow_abort1028:                           ; preds = %str_ok1018
  %59 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len1027

concat.tot.len1032:                               ; preds = %str_overflow_abort1033, %concat.sum.len1027
  %arena.cur1034 = call ptr @dva_arena_current()
  %concat.buf1035 = call ptr @dva_arena_alloc(ptr %arena.cur1034, i64 %sum1030)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1035, ptr align 1 %concat.lhs1011, i64 %concat.lhs1002, i1 false)
  %concat.mid1036 = getelementptr i8, ptr %concat.buf1035, i64 %concat.lhs1002
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid1036, ptr align 1 %concat.rhs1023, i64 %concat.rhs1014, i1 false)
  %concat.nul1037 = getelementptr i8, ptr %concat.buf1035, i64 %sum1025
  store i8 0, ptr %concat.nul1037, align 1
  %arena.cur1038 = call ptr @dva_arena_current()
  %concat.str1039 = call ptr @dva_arena_alloc(ptr %arena.cur1038, i64 16)
  %str.build.len.gep1040 = getelementptr inbounds { i64, ptr }, ptr %concat.str1039, i32 0, i32 0
  store i64 %sum1025, ptr %str.build.len.gep1040, align 8
  %str.build.data.gep1041 = getelementptr inbounds { i64, ptr }, ptr %concat.str1039, i32 0, i32 1
  store ptr %concat.buf1035, ptr %str.build.data.gep1041, align 8
  br label %choice.exit957

str_overflow_abort1033:                           ; preds = %concat.sum.len1027
  %60 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len1032
}

define i64 @"str::cmp"(ptr %0, ptr %1) #1 {
entry:
  %var.cb = alloca i64, align 8
  %var.ca = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.60 = alloca i64, align 8
  %loop.idx.60 = alloca i64, align 8
  %"var.r'" = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.lb = alloca i64, align 8
  %var.la = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.a, align 8
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
  store i64 %str.len.query2, ptr %var.la, align 8
  %var.load3 = load ptr, ptr %var.b, align 8
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
  store i64 %str.len.query6, ptr %var.lb, align 8
  %var.load14 = load i64, ptr %var.la, align 8
  %var.load15 = load i64, ptr %var.lb, align 8
  %cmptmp = icmp slt i64 %var.load14, %var.load15
  br i1 %cmptmp, label %choice.then, label %choice.else

str_stale11:                                      ; preds = %str_gen_check9
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

choice.then:                                      ; preds = %str_ok10
  %var.load16 = load i64, ptr %var.la, align 8
  br label %choice.exit

choice.else:                                      ; preds = %str_ok10
  %var.load17 = load i64, ptr %var.lb, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load16, %choice.then ], [ %var.load17, %choice.else ]
  store i64 %choice.res, ptr %var.n, align 8
  store i64 0, ptr %"var.r'", align 8
  %var.load18 = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.60, align 8
  br label %loop.header.60

loop.header.60:                                   ; preds = %loop.latch.60, %choice.exit
  %counter.load = load i64, ptr %loop.idx.60, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load18
  br i1 %loop.cond, label %loop.body.60, label %loop.exit.nat.60

loop.body.60:                                     ; preds = %loop.header.60
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.60, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load19 = load ptr, ptr %var.a, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 0
  %s.read.len20 = load i64, ptr %s.read.len, align 8
  %s.read.len21 = and i64 %s.read.len20, 281474976710655
  %str.tag22 = lshr i64 %s.read.len20, 48
  %str.immortal23 = icmp eq i64 %str.tag22, 0
  br i1 %str.immortal23, label %str_ok25, label %str_gen_check24

loop.exit.nat.60:                                 ; preds = %loop.header.60
  br label %loop.exit.60

loop.latch.60:                                    ; preds = %choice.exit57
  %step.val = load i64, ptr %loop.step.60, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.60, align 8
  br label %loop.header.60

loop.exit.60:                                     ; preds = %choice.exit63, %loop.exit.nat.60
  %var.load65 = load i64, ptr %"var.r'", align 8
  %cmptmp66 = icmp ne i64 %var.load65, 0
  br i1 %cmptmp66, label %choice.then67, label %choice.else68

str_gen_check24:                                  ; preds = %loop.body.60
  %arena.cur27 = call ptr @dva_arena_current()
  %tag.valid28 = call i1 @dva_arena_validate_tag(ptr %arena.cur27, i64 %str.tag22)
  br i1 %tag.valid28, label %str_ok25, label %str_stale26

str_ok25:                                         ; preds = %str_stale26, %str_gen_check24, %loop.body.60
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data, align 8
  %var.load30 = load i64, ptr %var.i, align 8
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
  store i64 %s.byte.val, ptr %var.ca, align 8
  %var.load31 = load ptr, ptr %var.b, align 8
  %s.read.len32 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 0
  %s.read.len33 = load i64, ptr %s.read.len32, align 8
  %s.read.len34 = and i64 %s.read.len33, 281474976710655
  %str.tag35 = lshr i64 %s.read.len33, 48
  %str.immortal36 = icmp eq i64 %str.tag35, 0
  br i1 %str.immortal36, label %str_ok38, label %str_gen_check37

idx_oob:                                          ; preds = %idx_big_check, %str_ok25
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

str_gen_check37:                                  ; preds = %idx_ok
  %arena.cur40 = call ptr @dva_arena_current()
  %tag.valid41 = call i1 @dva_arena_validate_tag(ptr %arena.cur40, i64 %str.tag35)
  br i1 %tag.valid41, label %str_ok38, label %str_stale39

str_ok38:                                         ; preds = %str_stale39, %str_gen_check37, %idx_ok
  %s.read.data42 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 1
  %s.read.data43 = load ptr, ptr %s.read.data42, align 8
  %var.load44 = load i64, ptr %var.i, align 8
  %idx.neg45 = icmp slt i64 %var.load44, 0
  br i1 %idx.neg45, label %idx_oob48, label %idx_big_check46

str_stale39:                                      ; preds = %str_gen_check37
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok38

idx_big_check46:                                  ; preds = %str_ok38
  %idx.big49 = icmp sge i64 %var.load44, %s.read.len34
  br i1 %idx.big49, label %idx_oob48, label %idx_ok47

idx_ok47:                                         ; preds = %idx_oob48, %idx_big_check46
  %s.byte.gep50 = getelementptr i8, ptr %s.read.data43, i64 %var.load44
  %s.byte51 = load i8, ptr %s.byte.gep50, align 1
  %s.byte.val52 = zext i8 %s.byte51 to i64
  store i64 %s.byte.val52, ptr %var.cb, align 8
  %var.load53 = load i64, ptr %var.ca, align 8
  %var.load54 = load i64, ptr %var.cb, align 8
  %cmptmp55 = icmp ne i64 %var.load53, %var.load54
  br i1 %cmptmp55, label %choice.then56, label %choice.exit57

idx_oob48:                                        ; preds = %idx_big_check46, %str_ok38
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok47

choice.then56:                                    ; preds = %idx_ok47
  %var.load58 = load i64, ptr %var.ca, align 8
  %var.load59 = load i64, ptr %var.cb, align 8
  %cmptmp60 = icmp slt i64 %var.load58, %var.load59
  br i1 %cmptmp60, label %choice.then61, label %choice.else62

choice.exit57:                                    ; preds = %idx_ok47
  br label %loop.latch.60

choice.then61:                                    ; preds = %choice.then56
  br label %choice.exit63

choice.else62:                                    ; preds = %choice.then56
  br label %choice.exit63

choice.exit63:                                    ; preds = %choice.else62, %choice.then61
  %choice.res64 = phi i64 [ -1, %choice.then61 ], [ 1, %choice.else62 ]
  store i64 %choice.res64, ptr %"var.r'", align 8
  br label %loop.exit.60

choice.then67:                                    ; preds = %loop.exit.60
  %var.load70 = load i64, ptr %"var.r'", align 8
  br label %choice.exit69

choice.else68:                                    ; preds = %loop.exit.60
  %var.load71 = load i64, ptr %var.la, align 8
  %var.load72 = load i64, ptr %var.lb, align 8
  %cmptmp73 = icmp eq i64 %var.load71, %var.load72
  br i1 %cmptmp73, label %choice.then74, label %choice.else75

choice.exit69:                                    ; preds = %choice.exit76, %choice.then67
  %choice.res85 = phi i64 [ %var.load70, %choice.then67 ], [ %choice.res84, %choice.exit76 ]
  ret i64 %choice.res85

choice.then74:                                    ; preds = %choice.else68
  br label %choice.exit76

choice.else75:                                    ; preds = %choice.else68
  %var.load77 = load i64, ptr %var.la, align 8
  %var.load78 = load i64, ptr %var.lb, align 8
  %cmptmp79 = icmp slt i64 %var.load77, %var.load78
  br i1 %cmptmp79, label %choice.then80, label %choice.else81

choice.exit76:                                    ; preds = %choice.exit82, %choice.then74
  %choice.res84 = phi i64 [ 0, %choice.then74 ], [ %choice.res83, %choice.exit82 ]
  br label %choice.exit69

choice.then80:                                    ; preds = %choice.else75
  br label %choice.exit82

choice.else81:                                    ; preds = %choice.else75
  br label %choice.exit82

choice.exit82:                                    ; preds = %choice.else81, %choice.then80
  %choice.res83 = phi i64 [ -1, %choice.then80 ], [ 1, %choice.else81 ]
  br label %choice.exit76
}

define i1 @"str::lt"(ptr %0, ptr %1) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %var.load1 = load ptr, ptr %var.b, align 8
  %call.res = call i64 @"str::cmp"(ptr %var.load, ptr %var.load1)
  %cmptmp = icmp slt i64 %call.res, 0
  ret i1 %cmptmp
}

define ptr @"str::to_int"(ptr %0) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.b = alloca i64, align 8
  %loop.step.61 = alloca i64, align 8
  %loop.idx.61 = alloca i64, align 8
  %"var.val'" = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 0, ptr %"var.val'", align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len1 = load i64, ptr %str.len, align 8
  %str.len2 = and i64 %str.len1, 281474976710655
  %str.tag = lshr i64 %str.len1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %s.read.data3 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.61, align 8
  store i64 0, ptr %var.i, align 8
  br label %loop.header.61

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.61:                                   ; preds = %loop.latch.61, %str_ok
  %counter.load = load i64, ptr %loop.idx.61, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len2
  br i1 %loop.cond, label %loop.body.61, label %loop.exit.nat.61

loop.body.61:                                     ; preds = %loop.header.61
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.61, align 8
  %s.byte.gep = getelementptr i8, ptr %s.read.data3, i64 %counter.load
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %s.byte.val, ptr %var._, align 8
  store i64 %s.byte.val, ptr %var.b, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load4 = load i64, ptr %var.b, align 8
  %call.res = call i1 @"str::is_digit"(i64 %var.load4)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

loop.exit.nat.61:                                 ; preds = %loop.header.61
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.61

loop.latch.61:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.61, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.61, align 8
  br label %loop.header.61

loop.exit.61:                                     ; preds = %choice.then, %loop.exit.nat.61
  %var.load7 = load i64, ptr %var.i, align 8
  %val.match = icmp eq i64 %var.load7, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.then:                                      ; preds = %loop.body.61
  br label %loop.exit.61

choice.exit:                                      ; preds = %loop.body.61
  %var.load5 = load i64, ptr %"var.val'", align 8
  %multmp = mul i64 %var.load5, 10
  %var.load6 = load i64, ptr %var.b, align 8
  %subtmp = sub i64 %var.load6, 48
  %addtmp = add i64 %multmp, %subtmp
  store i64 %addtmp, ptr %"var.val'", align 8
  br label %loop.latch.61

choice.exit8:                                     ; preds = %choice.next, %ret.dead
  %var.load9 = load i64, ptr %"var.val'", align 8
  %var.load10 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %str.tag13 = lshr i64 %s.read.len11, 48
  %str.immortal14 = icmp eq i64 %str.tag13, 0
  br i1 %str.immortal14, label %str_ok16, label %str_gen_check15

choice.case:                                      ; preds = %loop.exit.61
  ret ptr null

choice.next:                                      ; preds = %loop.exit.61
  br label %choice.exit8

ret.dead:                                         ; No predecessors!
  br label %choice.exit8

str_gen_check15:                                  ; preds = %choice.exit8
  %arena.cur18 = call ptr @dva_arena_current()
  %tag.valid19 = call i1 @dva_arena_validate_tag(ptr %arena.cur18, i64 %str.tag13)
  br i1 %tag.valid19, label %str_ok16, label %str_stale17

str_ok16:                                         ; preds = %str_stale17, %str_gen_check15, %choice.exit8
  %s.read.data20 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data21 = load ptr, ptr %s.read.data20, align 8
  %var.load22 = load i64, ptr %var.i, align 8
  %start.is_neg = icmp slt i64 %var.load22, 0
  %rel.start = add i64 %s.read.len12, %var.load22
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load22
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len12
  %final.start = select i1 %start.gt.len, i64 %s.read.len12, i64 %c.start.0
  %end.is_neg = icmp slt i64 %s.read.len12, 0
  %rel.end = add i64 %s.read.len12, %s.read.len12
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %s.read.len12
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len12
  %final.end = select i1 %end.gt.len, i64 %s.read.len12, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data21, i64 %final.start
  %arena.cur23 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %arena.cur24 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 ptrtoint (ptr getelementptr ({ i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load9, ptr %rec.fld, align 8
  %rec.fld25 = getelementptr inbounds { i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %str.view, ptr %rec.fld25, align 8
  ret ptr %rec.alloc

str_stale17:                                      ; preds = %str_gen_check15
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok16
}

define ptr @"str::to_hex"(ptr %0) #1 {
entry:
  %var.d = alloca i64, align 8
  %var._5 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.b = alloca i64, align 8
  %loop.step.62 = alloca i64, align 8
  %loop.idx.62 = alloca i64, align 8
  %"var.val'" = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 0, ptr %"var.val'", align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len1 = load i64, ptr %str.len, align 8
  %str.len2 = and i64 %str.len1, 281474976710655
  %str.tag = lshr i64 %str.len1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %s.read.data3 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.62, align 8
  store i64 0, ptr %var.i, align 8
  br label %loop.header.62

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.62:                                   ; preds = %loop.latch.62, %str_ok
  %counter.load = load i64, ptr %loop.idx.62, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len2
  br i1 %loop.cond, label %loop.body.62, label %loop.exit.nat.62

loop.body.62:                                     ; preds = %loop.header.62
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.62, align 8
  %s.byte.gep = getelementptr i8, ptr %s.read.data3, i64 %counter.load
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %s.byte.val, ptr %var._, align 8
  store i64 %s.byte.val, ptr %var.b, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load4 = load i64, ptr %var.b, align 8
  %call.res = call { i1, i64 } @"ascii::hex_value"(i64 %var.load4)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

loop.exit.nat.62:                                 ; preds = %loop.header.62
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.62

loop.latch.62:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.62, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.62, align 8
  br label %loop.header.62

loop.exit.62:                                     ; preds = %choice.else, %loop.exit.nat.62
  %var.load8 = load i64, ptr %var.i, align 8
  %val.match = icmp eq i64 %var.load8, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.then:                                      ; preds = %loop.body.62
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._5, align 8
  store i64 %ram.pay, ptr %var.d, align 8
  %var.load6 = load i64, ptr %"var.val'", align 8
  %multmp = mul i64 %var.load6, 16
  %var.load7 = load i64, ptr %var.d, align 8
  %addtmp = add i64 %multmp, %var.load7
  store i64 %addtmp, ptr %"var.val'", align 8
  br label %choice.exit

choice.else:                                      ; preds = %loop.body.62
  br label %loop.exit.62

choice.exit:                                      ; preds = %choice.then
  br label %loop.latch.62

choice.exit9:                                     ; preds = %choice.next, %ret.dead
  %var.load10 = load i64, ptr %"var.val'", align 8
  %var.load11 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %s.read.len12 = load i64, ptr %s.read.len, align 8
  %s.read.len13 = and i64 %s.read.len12, 281474976710655
  %str.tag14 = lshr i64 %s.read.len12, 48
  %str.immortal15 = icmp eq i64 %str.tag14, 0
  br i1 %str.immortal15, label %str_ok17, label %str_gen_check16

choice.case:                                      ; preds = %loop.exit.62
  ret ptr null

choice.next:                                      ; preds = %loop.exit.62
  br label %choice.exit9

ret.dead:                                         ; No predecessors!
  br label %choice.exit9

str_gen_check16:                                  ; preds = %choice.exit9
  %arena.cur19 = call ptr @dva_arena_current()
  %tag.valid20 = call i1 @dva_arena_validate_tag(ptr %arena.cur19, i64 %str.tag14)
  br i1 %tag.valid20, label %str_ok17, label %str_stale18

str_ok17:                                         ; preds = %str_stale18, %str_gen_check16, %choice.exit9
  %s.read.data21 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 1
  %s.read.data22 = load ptr, ptr %s.read.data21, align 8
  %var.load23 = load i64, ptr %var.i, align 8
  %start.is_neg = icmp slt i64 %var.load23, 0
  %rel.start = add i64 %s.read.len13, %var.load23
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load23
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len13
  %final.start = select i1 %start.gt.len, i64 %s.read.len13, i64 %c.start.0
  %end.is_neg = icmp slt i64 %s.read.len13, 0
  %rel.end = add i64 %s.read.len13, %s.read.len13
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %s.read.len13
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len13
  %final.end = select i1 %end.gt.len, i64 %s.read.len13, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data22, i64 %final.start
  %arena.cur24 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %arena.cur25 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 ptrtoint (ptr getelementptr ({ i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load10, ptr %rec.fld, align 8
  %rec.fld26 = getelementptr inbounds { i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %str.view, ptr %rec.fld26, align 8
  ret ptr %rec.alloc

str_stale18:                                      ; preds = %str_gen_check16
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok17
}

declare { i1, i64 } @"ascii::hex_value"(i64) #1

define ptr @"str::hex_to_str"(i64 %0) #1 {
entry:
  %var._166 = alloca i64, align 8
  %var._i165 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.67 = alloca i64, align 8
  %loop.idx.67 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  %var.ch = alloca i64, align 8
  %var.digit = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.63 = alloca i64, align 8
  %loop.idx.63 = alloca i64, align 8
  %"var.n'" = alloca i64, align 8
  %var.neg = alloca i1, align 1
  %var.b = alloca ptr, align 8
  %var.val = alloca i64, align 8
  store i64 %0, ptr %var.val, align 8
  %var.load = load i64, ptr %var.val, align 8
  %val.match = icmp eq i64 %var.load, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %ret.dead
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

choice.case:                                      ; preds = %entry
  ret ptr @str.9.struct

choice.next:                                      ; preds = %entry
  br label %choice.exit

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len1:                                       ; preds = %str_overflow_abort, %choice.exit
  %arena.cur2 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 32, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load3 = load i64, ptr %var.val, align 8
  %cmptmp = icmp slt i64 %var.load3, 0
  store i1 %cmptmp, ptr %var.neg, align 1
  %var.load4 = load i1, ptr %var.neg, align 1
  br i1 %var.load4, label %choice.then, label %choice.else

str_overflow_abort:                               ; preds = %choice.exit
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

choice.then:                                      ; preds = %b.buf.len1
  %var.load6 = load i64, ptr %var.val, align 8
  %subtmp = sub i64 0, %var.load6
  br label %choice.exit5

choice.else:                                      ; preds = %b.buf.len1
  %var.load7 = load i64, ptr %var.val, align 8
  br label %choice.exit5

choice.exit5:                                     ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %subtmp, %choice.then ], [ %var.load7, %choice.else ]
  store i64 %choice.res, ptr %"var.n'", align 8
  store i64 0, ptr %loop.idx.63, align 8
  br label %loop.header.63

loop.header.63:                                   ; preds = %loop.latch.63, %choice.exit5
  %counter.load = load i64, ptr %loop.idx.63, align 8
  %loop.cond = icmp slt i64 %counter.load, 32
  br i1 %loop.cond, label %loop.body.63, label %loop.exit.nat.63

loop.body.63:                                     ; preds = %loop.header.63
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.63, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load8 = load i64, ptr %"var.n'", align 8
  %cmptmp12 = icmp ugt i64 %var.load8, 0
  br i1 %cmptmp12, label %choice.case10, label %choice.next11

loop.exit.nat.63:                                 ; preds = %loop.header.63
  br label %loop.exit.63

loop.latch.63:                                    ; preds = %choice.exit9
  %step.val = load i64, ptr %loop.step.63, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.63, align 8
  br label %loop.header.63

loop.exit.63:                                     ; preds = %choice.next11, %loop.exit.nat.63
  %b.load28 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 0
  %b.rn.cur.len29 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len29, i64 1)
  %sum30 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf31 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf31, label %str_overflow_abort33, label %b.rn.new.len32

choice.exit9:                                     ; preds = %b.push_done
  br label %loop.latch.63

choice.case10:                                    ; preds = %loop.body.63
  %var.load13 = load i64, ptr %"var.n'", align 8
  %bandtmp = and i64 %var.load13, 15
  store i64 %bandtmp, ptr %var.digit, align 8
  %var.load14 = load i64, ptr %var.digit, align 8
  %call.res = call i64 @"ascii::hex_char_upper"(i64 %var.load14)
  store i64 %call.res, ptr %var.ch, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load15 = load i64, ptr %var.ch, align 8
  %b.b.ge0 = icmp sge i64 %var.load15, 0
  %b.b.le255 = icmp sle i64 %var.load15, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.next11:                                    ; preds = %loop.body.63
  br label %loop.exit.63

b.byte_ok:                                        ; preds = %b.byte_err, %choice.case10
  %b.byte.i8 = trunc i64 %var.load15 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len16 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap17 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data18 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len16, %b.cap17
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.case10
  %2 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap17, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum19 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf20 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf20, label %str_overflow_abort22, label %b.new.buf.len21

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len21
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data24 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len25 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data24, i64 %b.cur.len25
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len25, 1
  %b.nul = getelementptr i8, ptr %b.cur.data24, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep26 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep26, align 8
  %var.load27 = load i64, ptr %"var.n'", align 8
  %shrtmp = lshr i64 %var.load27, 4
  store i64 %shrtmp, ptr %"var.n'", align 8
  br label %choice.exit9

b.new.buf.len21:                                  ; preds = %str_overflow_abort22, %b.grow
  %arena.cur23 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 %sum19)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data18, i64 %b.len16, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len16
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort22:                             ; preds = %b.grow
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len21

b.rn.new.len32:                                   ; preds = %str_overflow_abort33, %loop.exit.63
  %b.cap34 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 2
  %b.cap35 = load i64, ptr %b.cap34, align 8
  %b.need.grow = icmp slt i64 %b.cap35, %sum30
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort33:                             ; preds = %loop.exit.63
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len32

b.grow2:                                          ; preds = %b.rn.new.len32
  %b.cap236 = mul i64 %b.cap35, 2
  %b.cap.small37 = icmp slt i64 %b.cap236, 16
  %b.cap.grow = select i1 %b.cap.small37, i64 16, i64 %b.cap236
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum30
  %b.new.cap38 = select i1 %b.cap.need, i64 %sum30, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 0
  %b.cur.len239 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 1
  %b.cur.data240 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap38, i64 1)
  %sum41 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf42 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf42, label %str_overflow_abort44, label %b.new.buf.len243

b.nogrow2:                                        ; preds = %b.rn.new.len32
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len243
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 1
  %b.rn.data46 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data46, i64 %b.rn.cur.len29
  br i1 true, label %br.b1.64, label %br.c2.64

b.new.buf.len243:                                 ; preds = %str_overflow_abort44, %b.grow2
  %arena.cur45 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 %sum41)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data240, i64 %b.cur.len239, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len239
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 2
  store i64 %b.new.cap38, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort44:                             ; preds = %b.grow2
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len243

br.b1.64:                                         ; preds = %b.grow_done
  store i8 120, ptr %b.rn.dst, align 1
  br label %br.done.64

br.c2.64:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.64, label %br.c3.64

br.b2.64:                                         ; preds = %br.c2.64
  store i8 -63, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -72, ptr %br.dst1, align 1
  br label %br.done.64

br.c3.64:                                         ; preds = %br.c2.64
  br i1 true, label %br.b3.64, label %br.b4.64

br.b3.64:                                         ; preds = %br.c3.64
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -127, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -72, ptr %br.dst2.3, align 1
  br label %br.done.64

br.b4.64:                                         ; preds = %br.c3.64
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -127, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -72, ptr %br.dst3.4, align 1
  br label %br.done.64

br.done.64:                                       ; preds = %br.b4.64, %br.b3.64, %br.b2.64, %br.b1.64
  %br.nul = getelementptr i8, ptr %b.rn.data46, i64 %sum30
  store i8 0, ptr %br.nul, align 1
  %b.len.gep47 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 0
  store i64 %sum30, ptr %b.len.gep47, align 8
  %b.load48 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len49 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 0
  %b.rn.cur.len50 = load i64, ptr %b.rn.cur.len49, align 8
  %b.rn.new.len51 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len50, i64 1)
  %sum52 = extractvalue { i64, i1 } %b.rn.new.len51, 0
  %ovf53 = extractvalue { i64, i1 } %b.rn.new.len51, 1
  br i1 %ovf53, label %str_overflow_abort55, label %b.rn.new.len54

b.rn.new.len54:                                   ; preds = %str_overflow_abort55, %br.done.64
  %b.cap56 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 2
  %b.cap57 = load i64, ptr %b.cap56, align 8
  %b.need.grow58 = icmp slt i64 %b.cap57, %sum52
  br i1 %b.need.grow58, label %b.grow259, label %b.nogrow260

str_overflow_abort55:                             ; preds = %br.done.64
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len54

b.grow259:                                        ; preds = %b.rn.new.len54
  %b.cap262 = mul i64 %b.cap57, 2
  %b.cap.small63 = icmp slt i64 %b.cap262, 16
  %b.cap.grow64 = select i1 %b.cap.small63, i64 16, i64 %b.cap262
  %b.cap.need65 = icmp slt i64 %b.cap.grow64, %sum52
  %b.new.cap66 = select i1 %b.cap.need65, i64 %sum52, i64 %b.cap.grow64
  %b.cur.len267 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 0
  %b.cur.len268 = load i64, ptr %b.cur.len267, align 8
  %b.cur.data269 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 1
  %b.cur.data270 = load ptr, ptr %b.cur.data269, align 8
  %b.new.buf.len271 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap66, i64 1)
  %sum72 = extractvalue { i64, i1 } %b.new.buf.len271, 0
  %ovf73 = extractvalue { i64, i1 } %b.new.buf.len271, 1
  br i1 %ovf73, label %str_overflow_abort75, label %b.new.buf.len274

b.nogrow260:                                      ; preds = %b.rn.new.len54
  br label %b.grow_done61

b.grow_done61:                                    ; preds = %b.nogrow260, %b.new.buf.len274
  %b.rn.data81 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 1
  %b.rn.data82 = load ptr, ptr %b.rn.data81, align 8
  %b.rn.dst83 = getelementptr i8, ptr %b.rn.data82, i64 %b.rn.cur.len50
  br i1 true, label %br.b1.65, label %br.c2.65

b.new.buf.len274:                                 ; preds = %str_overflow_abort75, %b.grow259
  %arena.cur76 = call ptr @dva_arena_current()
  %b.new.buf277 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 %sum72)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf277, ptr align 1 %b.cur.data270, i64 %b.cur.len268, i1 false)
  %b.grow2.nul78 = getelementptr i8, ptr %b.new.buf277, i64 %b.cur.len268
  store i8 0, ptr %b.grow2.nul78, align 1
  %b.new.data2.gep79 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 1
  store ptr %b.new.buf277, ptr %b.new.data2.gep79, align 8
  %b.new.cap2.gep80 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 2
  store i64 %b.new.cap66, ptr %b.new.cap2.gep80, align 8
  br label %b.grow_done61

str_overflow_abort75:                             ; preds = %b.grow259
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len274

br.b1.65:                                         ; preds = %b.grow_done61
  store i8 48, ptr %b.rn.dst83, align 1
  br label %br.done.65

br.c2.65:                                         ; preds = %b.grow_done61
  br i1 true, label %br.b2.65, label %br.c3.65

br.b2.65:                                         ; preds = %br.c2.65
  store i8 -64, ptr %b.rn.dst83, align 1
  %br.dst184 = getelementptr i8, ptr %b.rn.dst83, i64 1
  store i8 -80, ptr %br.dst184, align 1
  br label %br.done.65

br.c3.65:                                         ; preds = %br.c2.65
  br i1 true, label %br.b3.65, label %br.b4.65

br.b3.65:                                         ; preds = %br.c3.65
  store i8 -32, ptr %b.rn.dst83, align 1
  %br.dst1.385 = getelementptr i8, ptr %b.rn.dst83, i64 1
  store i8 -128, ptr %br.dst1.385, align 1
  %br.dst2.386 = getelementptr i8, ptr %b.rn.dst83, i64 2
  store i8 -80, ptr %br.dst2.386, align 1
  br label %br.done.65

br.b4.65:                                         ; preds = %br.c3.65
  store i8 -16, ptr %b.rn.dst83, align 1
  %br.dst1.487 = getelementptr i8, ptr %b.rn.dst83, i64 1
  store i8 -128, ptr %br.dst1.487, align 1
  %br.dst2.488 = getelementptr i8, ptr %b.rn.dst83, i64 2
  store i8 -128, ptr %br.dst2.488, align 1
  %br.dst3.489 = getelementptr i8, ptr %b.rn.dst83, i64 3
  store i8 -80, ptr %br.dst3.489, align 1
  br label %br.done.65

br.done.65:                                       ; preds = %br.b4.65, %br.b3.65, %br.b2.65, %br.b1.65
  %br.nul90 = getelementptr i8, ptr %b.rn.data82, i64 %sum52
  store i8 0, ptr %br.nul90, align 1
  %b.len.gep91 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 0
  store i64 %sum52, ptr %b.len.gep91, align 8
  %var.load92 = load i1, ptr %var.neg, align 1
  br i1 %var.load92, label %choice.then93, label %choice.exit94

choice.then93:                                    ; preds = %br.done.65
  %b.load95 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len96 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load95, i32 0, i32 0
  %b.rn.cur.len97 = load i64, ptr %b.rn.cur.len96, align 8
  %b.rn.new.len98 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len97, i64 1)
  %sum99 = extractvalue { i64, i1 } %b.rn.new.len98, 0
  %ovf100 = extractvalue { i64, i1 } %b.rn.new.len98, 1
  br i1 %ovf100, label %str_overflow_abort102, label %b.rn.new.len101

choice.exit94:                                    ; preds = %br.done.66, %br.done.65
  %var.load139 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load139, i32 0, i32 0
  %b.freeze.len140 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load139, i32 0, i32 1
  %b.freeze.data141 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.rn.new.len101:                                  ; preds = %str_overflow_abort102, %choice.then93
  %b.cap103 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load95, i32 0, i32 2
  %b.cap104 = load i64, ptr %b.cap103, align 8
  %b.need.grow105 = icmp slt i64 %b.cap104, %sum99
  br i1 %b.need.grow105, label %b.grow2106, label %b.nogrow2107

str_overflow_abort102:                            ; preds = %choice.then93
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len101

b.grow2106:                                       ; preds = %b.rn.new.len101
  %b.cap2109 = mul i64 %b.cap104, 2
  %b.cap.small110 = icmp slt i64 %b.cap2109, 16
  %b.cap.grow111 = select i1 %b.cap.small110, i64 16, i64 %b.cap2109
  %b.cap.need112 = icmp slt i64 %b.cap.grow111, %sum99
  %b.new.cap113 = select i1 %b.cap.need112, i64 %sum99, i64 %b.cap.grow111
  %b.cur.len2114 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load95, i32 0, i32 0
  %b.cur.len2115 = load i64, ptr %b.cur.len2114, align 8
  %b.cur.data2116 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load95, i32 0, i32 1
  %b.cur.data2117 = load ptr, ptr %b.cur.data2116, align 8
  %b.new.buf.len2118 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap113, i64 1)
  %sum119 = extractvalue { i64, i1 } %b.new.buf.len2118, 0
  %ovf120 = extractvalue { i64, i1 } %b.new.buf.len2118, 1
  br i1 %ovf120, label %str_overflow_abort122, label %b.new.buf.len2121

b.nogrow2107:                                     ; preds = %b.rn.new.len101
  br label %b.grow_done108

b.grow_done108:                                   ; preds = %b.nogrow2107, %b.new.buf.len2121
  %b.rn.data128 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load95, i32 0, i32 1
  %b.rn.data129 = load ptr, ptr %b.rn.data128, align 8
  %b.rn.dst130 = getelementptr i8, ptr %b.rn.data129, i64 %b.rn.cur.len97
  br i1 true, label %br.b1.66, label %br.c2.66

b.new.buf.len2121:                                ; preds = %str_overflow_abort122, %b.grow2106
  %arena.cur123 = call ptr @dva_arena_current()
  %b.new.buf2124 = call ptr @dva_arena_alloc(ptr %arena.cur123, i64 %sum119)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2124, ptr align 1 %b.cur.data2117, i64 %b.cur.len2115, i1 false)
  %b.grow2.nul125 = getelementptr i8, ptr %b.new.buf2124, i64 %b.cur.len2115
  store i8 0, ptr %b.grow2.nul125, align 1
  %b.new.data2.gep126 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load95, i32 0, i32 1
  store ptr %b.new.buf2124, ptr %b.new.data2.gep126, align 8
  %b.new.cap2.gep127 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load95, i32 0, i32 2
  store i64 %b.new.cap113, ptr %b.new.cap2.gep127, align 8
  br label %b.grow_done108

str_overflow_abort122:                            ; preds = %b.grow2106
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2121

br.b1.66:                                         ; preds = %b.grow_done108
  store i8 45, ptr %b.rn.dst130, align 1
  br label %br.done.66

br.c2.66:                                         ; preds = %b.grow_done108
  br i1 true, label %br.b2.66, label %br.c3.66

br.b2.66:                                         ; preds = %br.c2.66
  store i8 -64, ptr %b.rn.dst130, align 1
  %br.dst1131 = getelementptr i8, ptr %b.rn.dst130, i64 1
  store i8 -83, ptr %br.dst1131, align 1
  br label %br.done.66

br.c3.66:                                         ; preds = %br.c2.66
  br i1 true, label %br.b3.66, label %br.b4.66

br.b3.66:                                         ; preds = %br.c3.66
  store i8 -32, ptr %b.rn.dst130, align 1
  %br.dst1.3132 = getelementptr i8, ptr %b.rn.dst130, i64 1
  store i8 -128, ptr %br.dst1.3132, align 1
  %br.dst2.3133 = getelementptr i8, ptr %b.rn.dst130, i64 2
  store i8 -83, ptr %br.dst2.3133, align 1
  br label %br.done.66

br.b4.66:                                         ; preds = %br.c3.66
  store i8 -16, ptr %b.rn.dst130, align 1
  %br.dst1.4134 = getelementptr i8, ptr %b.rn.dst130, i64 1
  store i8 -128, ptr %br.dst1.4134, align 1
  %br.dst2.4135 = getelementptr i8, ptr %b.rn.dst130, i64 2
  store i8 -128, ptr %br.dst2.4135, align 1
  %br.dst3.4136 = getelementptr i8, ptr %b.rn.dst130, i64 3
  store i8 -83, ptr %br.dst3.4136, align 1
  br label %br.done.66

br.done.66:                                       ; preds = %br.b4.66, %br.b3.66, %br.b2.66, %br.b1.66
  %br.nul137 = getelementptr i8, ptr %b.rn.data129, i64 %sum99
  store i8 0, ptr %br.nul137, align 1
  %b.len.gep138 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load95, i32 0, i32 0
  store i64 %sum99, ptr %b.len.gep138, align 8
  br label %choice.exit94

b.freeze.check:                                   ; preds = %choice.exit94
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data141, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data141, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data141, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len140, 1
  %arena.cur142 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data141, i64 %b.freeze.len140, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len140
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit94
  %b.freeze.data143 = phi ptr [ %b.freeze.data141, %choice.exit94 ], [ %b.freeze.data141, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur144 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len140, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data143, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load139, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load139, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load139, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.s, align 8
  %arena.cur145 = call ptr @dva_arena_current()
  %builder.new146 = call ptr @dva_arena_alloc(ptr %arena.cur145, i64 24)
  %b.data.gep147 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new146, i32 0, i32 1
  %b.len.gep148 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new146, i32 0, i32 0
  %b.cap.gep149 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new146, i32 0, i32 2
  %b.buf.len150 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum151 = extractvalue { i64, i1 } %b.buf.len150, 0
  %ovf152 = extractvalue { i64, i1 } %b.buf.len150, 1
  br i1 %ovf152, label %str_overflow_abort154, label %b.buf.len153

b.buf.len153:                                     ; preds = %str_overflow_abort154, %b.freeze.done
  %arena.cur155 = call ptr @dva_arena_current()
  %b.buf156 = call ptr @dva_arena_alloc(ptr %arena.cur155, i64 %sum151)
  %b.nul0157 = getelementptr i8, ptr %b.buf156, i64 0
  store i8 0, ptr %b.nul0157, align 1
  store i64 0, ptr %b.len.gep148, align 8
  store ptr %b.buf156, ptr %b.data.gep147, align 8
  store i64 32, ptr %b.cap.gep149, align 8
  store ptr %builder.new146, ptr %var.out, align 8
  %var.load158 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load158, i32 0, i32 0
  %str.len.query159 = load i64, ptr %str.len.query, align 8
  %str.len.query160 = and i64 %str.len.query159, 281474976710655
  %str.tag = lshr i64 %str.len.query159, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_overflow_abort154:                            ; preds = %b.freeze.done
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len153

str_gen_check:                                    ; preds = %b.buf.len153
  %arena.cur161 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur161, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.buf.len153
  store i64 0, ptr %loop.idx.67, align 8
  br label %loop.header.67

str_stale:                                        ; preds = %str_gen_check
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.67:                                   ; preds = %loop.latch.67, %str_ok
  %counter.load162 = load i64, ptr %loop.idx.67, align 8
  %loop.cond163 = icmp slt i64 %counter.load162, %str.len.query160
  br i1 %loop.cond163, label %loop.body.67, label %loop.exit.nat.67

loop.body.67:                                     ; preds = %loop.header.67
  %loop.rel.i164 = sub i64 %counter.load162, 0
  store i64 1, ptr %loop.step.67, align 8
  store i64 %loop.rel.i164, ptr %var._i165, align 8
  store i64 %counter.load162, ptr %var._166, align 8
  store i64 %counter.load162, ptr %var.i, align 8
  %b.load167 = load ptr, ptr %var.out, align 8
  %var.load168 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load168, i32 0, i32 0
  %s.read.len169 = load i64, ptr %s.read.len, align 8
  %s.read.len170 = and i64 %s.read.len169, 281474976710655
  %str.tag171 = lshr i64 %s.read.len169, 48
  %str.immortal172 = icmp eq i64 %str.tag171, 0
  br i1 %str.immortal172, label %str_ok174, label %str_gen_check173

loop.exit.nat.67:                                 ; preds = %loop.header.67
  br label %loop.exit.67

loop.latch.67:                                    ; preds = %b.push_done208
  %step.val230 = load i64, ptr %loop.step.67, align 8
  %loop.next231 = add i64 %counter.load162, %step.val230
  store i64 %loop.next231, ptr %loop.idx.67, align 8
  br label %loop.header.67

loop.exit.67:                                     ; preds = %loop.exit.nat.67
  %var.load232 = load ptr, ptr %var.out, align 8
  %b.freeze.len233 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load232, i32 0, i32 0
  %b.freeze.len234 = load i64, ptr %b.freeze.len233, align 8
  %b.freeze.data235 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load232, i32 0, i32 1
  %b.freeze.data236 = load ptr, ptr %b.freeze.data235, align 8
  %b.freeze.arena237 = call ptr @dva_arena_current()
  %b.freeze.nc.gep238 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena237, i32 0, i32 1
  %b.freeze.nc239 = load i64, ptr %b.freeze.nc.gep238, align 8
  %b.freeze.has.chunk240 = icmp sgt i64 %b.freeze.nc239, 0
  br i1 %b.freeze.has.chunk240, label %b.freeze.check241, label %b.freeze.done243

str_gen_check173:                                 ; preds = %loop.body.67
  %arena.cur176 = call ptr @dva_arena_current()
  %tag.valid177 = call i1 @dva_arena_validate_tag(ptr %arena.cur176, i64 %str.tag171)
  br i1 %tag.valid177, label %str_ok174, label %str_stale175

str_ok174:                                        ; preds = %str_stale175, %str_gen_check173, %loop.body.67
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load168, i32 0, i32 1
  %s.read.data178 = load ptr, ptr %s.read.data, align 8
  %var.load179 = load ptr, ptr %var.s, align 8
  %str.len.query180 = getelementptr inbounds { i64, ptr }, ptr %var.load179, i32 0, i32 0
  %str.len.query181 = load i64, ptr %str.len.query180, align 8
  %str.len.query182 = and i64 %str.len.query181, 281474976710655
  %str.tag183 = lshr i64 %str.len.query181, 48
  %str.immortal184 = icmp eq i64 %str.tag183, 0
  br i1 %str.immortal184, label %str_ok186, label %str_gen_check185

str_stale175:                                     ; preds = %str_gen_check173
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok174

str_gen_check185:                                 ; preds = %str_ok174
  %arena.cur188 = call ptr @dva_arena_current()
  %tag.valid189 = call i1 @dva_arena_validate_tag(ptr %arena.cur188, i64 %str.tag183)
  br i1 %tag.valid189, label %str_ok186, label %str_stale187

str_ok186:                                        ; preds = %str_stale187, %str_gen_check185, %str_ok174
  %subtmp190 = sub i64 %str.len.query182, 1
  %var.load191 = load i64, ptr %var.i, align 8
  %subtmp192 = sub i64 %subtmp190, %var.load191
  %idx.neg = icmp slt i64 %subtmp192, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale187:                                     ; preds = %str_gen_check185
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok186

idx_big_check:                                    ; preds = %str_ok186
  %idx.big = icmp sge i64 %subtmp192, %s.read.len170
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data178, i64 %subtmp192
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.b.ge0193 = icmp sge i64 %s.byte.val, 0
  %b.b.le255194 = icmp sle i64 %s.byte.val, 255
  %b.byte.range195 = and i1 %b.b.ge0193, %b.b.le255194
  br i1 %b.byte.range195, label %b.byte_ok196, label %b.byte_err197

idx_oob:                                          ; preds = %idx_big_check, %str_ok186
  %14 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

b.byte_ok196:                                     ; preds = %b.byte_err197, %idx_ok
  %b.byte.i8198 = trunc i64 %s.byte.val to i8
  %b.len199 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load167, i32 0, i32 0
  %b.len200 = load i64, ptr %b.len199, align 8
  %b.cap201 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load167, i32 0, i32 2
  %b.cap202 = load i64, ptr %b.cap201, align 8
  %b.data203 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load167, i32 0, i32 1
  %b.data204 = load ptr, ptr %b.data203, align 8
  %b.needs.grow205 = icmp eq i64 %b.len200, %b.cap202
  br i1 %b.needs.grow205, label %b.grow206, label %b.nogrow207

b.byte_err197:                                    ; preds = %idx_ok
  %15 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok196

b.grow206:                                        ; preds = %b.byte_ok196
  %b.cap2209 = mul i64 %b.cap202, 2
  %b.cap.small210 = icmp slt i64 %b.cap2209, 16
  %b.new.cap211 = select i1 %b.cap.small210, i64 16, i64 %b.cap2209
  %b.new.buf.len212 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap211, i64 1)
  %sum213 = extractvalue { i64, i1 } %b.new.buf.len212, 0
  %ovf214 = extractvalue { i64, i1 } %b.new.buf.len212, 1
  br i1 %ovf214, label %str_overflow_abort216, label %b.new.buf.len215

b.nogrow207:                                      ; preds = %b.byte_ok196
  br label %b.push_done208

b.push_done208:                                   ; preds = %b.nogrow207, %b.new.buf.len215
  %b.cur.data222 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load167, i32 0, i32 1
  %b.cur.data223 = load ptr, ptr %b.cur.data222, align 8
  %b.cur.len224 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load167, i32 0, i32 0
  %b.cur.len225 = load i64, ptr %b.cur.len224, align 8
  %b.byte.gep226 = getelementptr i8, ptr %b.cur.data223, i64 %b.cur.len225
  store i8 %b.byte.i8198, ptr %b.byte.gep226, align 1
  %b.next.len227 = add i64 %b.cur.len225, 1
  %b.nul228 = getelementptr i8, ptr %b.cur.data223, i64 %b.next.len227
  store i8 0, ptr %b.nul228, align 1
  %b.len.gep229 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load167, i32 0, i32 0
  store i64 %b.next.len227, ptr %b.len.gep229, align 8
  br label %loop.latch.67

b.new.buf.len215:                                 ; preds = %str_overflow_abort216, %b.grow206
  %arena.cur217 = call ptr @dva_arena_current()
  %b.new.buf218 = call ptr @dva_arena_alloc(ptr %arena.cur217, i64 %sum213)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf218, ptr align 1 %b.data204, i64 %b.len200, i1 false)
  %b.grow.nul219 = getelementptr i8, ptr %b.new.buf218, i64 %b.len200
  store i8 0, ptr %b.grow.nul219, align 1
  %b.new.data.gep220 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load167, i32 0, i32 1
  store ptr %b.new.buf218, ptr %b.new.data.gep220, align 8
  %b.new.cap.gep221 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load167, i32 0, i32 2
  store i64 %b.new.cap211, ptr %b.new.cap.gep221, align 8
  br label %b.push_done208

str_overflow_abort216:                            ; preds = %b.grow206
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len215

b.freeze.check241:                                ; preds = %loop.exit.67
  %b.freeze.last.idx244 = sub i64 %b.freeze.nc239, 1
  %b.freeze.chunks.gep245 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena237, i32 0, i32 3
  %b.freeze.chunk.slot246 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep245, i64 0, i64 %b.freeze.last.idx244
  %b.freeze.last.chunk247 = load ptr, ptr %b.freeze.chunk.slot246, align 8
  %b.freeze.off.gep248 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena237, i32 0, i32 2
  %b.freeze.off249 = load i64, ptr %b.freeze.off.gep248, align 8
  %b.freeze.bump250 = getelementptr i8, ptr %b.freeze.last.chunk247, i64 %b.freeze.off249
  %b.freeze.cap.gep251 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena237, i32 0, i32 0
  %b.freeze.cap252 = load i64, ptr %b.freeze.cap.gep251, align 8
  %b.freeze.chunk.end253 = getelementptr i8, ptr %b.freeze.last.chunk247, i64 %b.freeze.cap252
  %b.freeze.ge.chunk254 = icmp uge ptr %b.freeze.data236, %b.freeze.last.chunk247
  %b.freeze.lt.end255 = icmp ult ptr %b.freeze.data236, %b.freeze.chunk.end253
  %b.freeze.in.chunk256 = and i1 %b.freeze.ge.chunk254, %b.freeze.lt.end255
  %b.freeze.ge.bump257 = icmp uge ptr %b.freeze.data236, %b.freeze.bump250
  %b.freeze.reaped258 = and i1 %b.freeze.in.chunk256, %b.freeze.ge.bump257
  br i1 %b.freeze.reaped258, label %b.freeze.copy242, label %b.freeze.done243

b.freeze.copy242:                                 ; preds = %b.freeze.check241
  %b.freeze.alen259 = add i64 %b.freeze.len234, 1
  %arena.cur260 = call ptr @dva_arena_current()
  %b.freeze.fresh261 = call ptr @dva_arena_alloc(ptr %arena.cur260, i64 %b.freeze.alen259)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh261, ptr align 1 %b.freeze.data236, i64 %b.freeze.len234, i1 false)
  %b.freeze.nul262 = getelementptr i8, ptr %b.freeze.fresh261, i64 %b.freeze.len234
  store i8 0, ptr %b.freeze.nul262, align 1
  br label %b.freeze.done243

b.freeze.done243:                                 ; preds = %b.freeze.copy242, %b.freeze.check241, %loop.exit.67
  %b.freeze.data263 = phi ptr [ %b.freeze.data236, %loop.exit.67 ], [ %b.freeze.data236, %b.freeze.check241 ], [ %b.freeze.fresh261, %b.freeze.copy242 ]
  %arena.cur264 = call ptr @dva_arena_current()
  %builder.freeze265 = call ptr @dva_arena_alloc(ptr %arena.cur264, i64 16)
  %str.build.len.gep266 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze265, i32 0, i32 0
  store i64 %b.freeze.len234, ptr %str.build.len.gep266, align 8
  %str.build.data.gep267 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze265, i32 0, i32 1
  store ptr %b.freeze.data263, ptr %str.build.data.gep267, align 8
  %b.freeze.rst.len268 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load232, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len268, align 8
  %b.freeze.rst.data269 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load232, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data269, align 8
  %b.freeze.rst.cap270 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load232, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap270, align 8
  ret ptr %builder.freeze265
}

declare i64 @"ascii::hex_char_upper"(i64) #1

define i1 @"str::is_empty"(ptr %0) #1 {
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
  %cmptmp = icmp eq i64 %str.len.query2, 0
  ret i1 %cmptmp

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok
}

define i1 @"str::is_blank"(ptr %0) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.68 = alloca i64, align 8
  %loop.idx.68 = alloca i64, align 8
  %"var.blank'" = alloca i1, align 1
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i1 true, ptr %"var.blank'", align 1
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
  store i64 0, ptr %loop.idx.68, align 8
  br label %loop.header.68

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.68:                                   ; preds = %loop.latch.68, %str_ok
  %counter.load = load i64, ptr %loop.idx.68, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len.query2
  br i1 %loop.cond, label %loop.body.68, label %loop.exit.nat.68

loop.body.68:                                     ; preds = %loop.header.68
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.68, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load3 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %s.read.len4 = load i64, ptr %s.read.len, align 8
  %s.read.len5 = and i64 %s.read.len4, 281474976710655
  %str.tag6 = lshr i64 %s.read.len4, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

loop.exit.nat.68:                                 ; preds = %loop.header.68
  br label %loop.exit.68

loop.latch.68:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.68, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.68, align 8
  br label %loop.header.68

loop.exit.68:                                     ; preds = %choice.then, %loop.exit.nat.68
  %var.load15 = load i1, ptr %"var.blank'", align 1
  ret i1 %var.load15

str_gen_check8:                                   ; preds = %loop.body.68
  %arena.cur11 = call ptr @dva_arena_current()
  %tag.valid12 = call i1 @dva_arena_validate_tag(ptr %arena.cur11, i64 %str.tag6)
  br i1 %tag.valid12, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %loop.body.68
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  %var.load14 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load14, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale10:                                      ; preds = %str_gen_check8
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

idx_big_check:                                    ; preds = %str_ok9
  %idx.big = icmp sge i64 %var.load14, %s.read.len5
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data13, i64 %var.load14
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok9
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %idx_ok
  store i1 false, ptr %"var.blank'", align 1
  br label %loop.exit.68

choice.exit:                                      ; preds = %idx_ok
  br label %loop.latch.68
}

define i1 @"str::starts_with"(ptr %0, ptr %1) #1 {
entry:
  %var.lp = alloca i64, align 8
  %var.prefix = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.prefix, align 8
  %var.load = load ptr, ptr %var.prefix, align 8
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
  store i64 %str.len.query2, ptr %var.lp, align 8
  %var.load3 = load i64, ptr %var.lp, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  br label %choice.exit

choice.else:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.s, align 8
  %str.len.query5 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query5, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %str.tag8 = lshr i64 %str.len.query6, 48
  %str.immortal9 = icmp eq i64 %str.tag8, 0
  br i1 %str.immortal9, label %str_ok11, label %str_gen_check10

choice.exit:                                      ; preds = %and.69.exit, %choice.then
  %choice.res = phi i1 [ true, %choice.then ], [ %and.69.phi, %and.69.exit ]
  ret i1 %choice.res

str_gen_check10:                                  ; preds = %choice.else
  %arena.cur13 = call ptr @dva_arena_current()
  %tag.valid14 = call i1 @dva_arena_validate_tag(ptr %arena.cur13, i64 %str.tag8)
  br i1 %tag.valid14, label %str_ok11, label %str_stale12

str_ok11:                                         ; preds = %str_stale12, %str_gen_check10, %choice.else
  %var.load15 = load i64, ptr %var.lp, align 8
  %cmptmp16 = icmp sge i64 %str.len.query7, %var.load15
  br i1 %cmptmp16, label %and.69.then, label %and.69.else

str_stale12:                                      ; preds = %str_gen_check10
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok11

and.69.then:                                      ; preds = %str_ok11
  %var.load17 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %s.read.len18 = load i64, ptr %s.read.len, align 8
  %s.read.len19 = and i64 %s.read.len18, 281474976710655
  %str.tag20 = lshr i64 %s.read.len18, 48
  %str.immortal21 = icmp eq i64 %str.tag20, 0
  br i1 %str.immortal21, label %str_ok23, label %str_gen_check22

and.69.else:                                      ; preds = %str_ok11
  br label %and.69.exit

and.69.exit:                                      ; preds = %and.69.else, %str.eq.merge
  %and.69.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp16, %and.69.else ]
  br label %choice.exit

str_gen_check22:                                  ; preds = %and.69.then
  %arena.cur25 = call ptr @dva_arena_current()
  %tag.valid26 = call i1 @dva_arena_validate_tag(ptr %arena.cur25, i64 %str.tag20)
  br i1 %tag.valid26, label %str_ok23, label %str_stale24

str_ok23:                                         ; preds = %str_stale24, %str_gen_check22, %and.69.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 1
  %s.read.data27 = load ptr, ptr %s.read.data, align 8
  %var.load28 = load i64, ptr %var.lp, align 8
  %rel.start = add i64 %s.read.len19, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len19
  %final.start = select i1 %start.gt.len, i64 %s.read.len19, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load28, 0
  %rel.end = add i64 %s.read.len19, %var.load28
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load28
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len19
  %final.end = select i1 %end.gt.len, i64 %s.read.len19, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data27, i64 %final.start
  %arena.cur29 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %var.load30 = load ptr, ptr %var.prefix, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len31 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len32 = and i64 %eq.lhs.len31, 281474976710655
  %str.tag33 = lshr i64 %eq.lhs.len31, 48
  %str.immortal34 = icmp eq i64 %str.tag33, 0
  br i1 %str.immortal34, label %str_ok36, label %str_gen_check35

str_stale24:                                      ; preds = %str_gen_check22
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok23

str_gen_check35:                                  ; preds = %str_ok23
  %arena.cur38 = call ptr @dva_arena_current()
  %tag.valid39 = call i1 @dva_arena_validate_tag(ptr %arena.cur38, i64 %str.tag33)
  br i1 %tag.valid39, label %str_ok36, label %str_stale37

str_ok36:                                         ; preds = %str_stale37, %str_gen_check35, %str_ok23
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 0
  %eq.rhs.len40 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len41 = and i64 %eq.rhs.len40, 281474976710655
  %str.tag42 = lshr i64 %eq.rhs.len40, 48
  %str.immortal43 = icmp eq i64 %str.tag42, 0
  br i1 %str.immortal43, label %str_ok45, label %str_gen_check44

str_stale37:                                      ; preds = %str_gen_check35
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok36

str_gen_check44:                                  ; preds = %str_ok36
  %arena.cur47 = call ptr @dva_arena_current()
  %tag.valid48 = call i1 @dva_arena_validate_tag(ptr %arena.cur47, i64 %str.tag42)
  br i1 %tag.valid48, label %str_ok45, label %str_stale46

str_ok45:                                         ; preds = %str_stale46, %str_gen_check44, %str_ok36
  %eq.len = icmp eq i64 %eq.lhs.len32, %eq.rhs.len41
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale46:                                      ; preds = %str_gen_check44
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok45

str.eq.then:                                      ; preds = %str_ok45
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data49 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 1
  %eq.rhs.data50 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data49, ptr %eq.rhs.data50, i64 %eq.lhs.len32)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok45
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.69.exit
}

declare i32 @memcmp(ptr, ptr, i64)

define i1 @"str::ends_with"(ptr %0, ptr %1) #1 {
entry:
  %var.lf = alloca i64, align 8
  %var.ls = alloca i64, align 8
  %var.suffix = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.suffix, align 8
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
  store i64 %str.len.query2, ptr %var.ls, align 8
  %var.load3 = load ptr, ptr %var.suffix, align 8
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
  store i64 %str.len.query6, ptr %var.lf, align 8
  %var.load14 = load i64, ptr %var.lf, align 8
  %cmptmp = icmp eq i64 %var.load14, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

str_stale11:                                      ; preds = %str_gen_check9
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

choice.then:                                      ; preds = %str_ok10
  br label %choice.exit

choice.else:                                      ; preds = %str_ok10
  %var.load15 = load i64, ptr %var.ls, align 8
  %var.load16 = load i64, ptr %var.lf, align 8
  %cmptmp17 = icmp sge i64 %var.load15, %var.load16
  br i1 %cmptmp17, label %and.70.then, label %and.70.else

choice.exit:                                      ; preds = %and.70.exit, %choice.then
  %choice.res = phi i1 [ true, %choice.then ], [ %and.70.phi, %and.70.exit ]
  ret i1 %choice.res

and.70.then:                                      ; preds = %choice.else
  %var.load18 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %str.tag21 = lshr i64 %s.read.len19, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

and.70.else:                                      ; preds = %choice.else
  br label %and.70.exit

and.70.exit:                                      ; preds = %and.70.else, %str.eq.merge
  %and.70.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp17, %and.70.else ]
  br label %choice.exit

str_gen_check23:                                  ; preds = %and.70.then
  %arena.cur26 = call ptr @dva_arena_current()
  %tag.valid27 = call i1 @dva_arena_validate_tag(ptr %arena.cur26, i64 %str.tag21)
  br i1 %tag.valid27, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %and.70.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 1
  %s.read.data28 = load ptr, ptr %s.read.data, align 8
  %var.load29 = load i64, ptr %var.ls, align 8
  %var.load30 = load i64, ptr %var.lf, align 8
  %subtmp = sub i64 %var.load29, %var.load30
  %var.load31 = load i64, ptr %var.ls, align 8
  %start.is_neg = icmp slt i64 %subtmp, 0
  %rel.start = add i64 %s.read.len20, %subtmp
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %subtmp
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len20
  %final.start = select i1 %start.gt.len, i64 %s.read.len20, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load31, 0
  %rel.end = add i64 %s.read.len20, %var.load31
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load31
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len20
  %final.end = select i1 %end.gt.len, i64 %s.read.len20, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data28, i64 %final.start
  %arena.cur32 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %var.load33 = load ptr, ptr %var.suffix, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len34 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len35 = and i64 %eq.lhs.len34, 281474976710655
  %str.tag36 = lshr i64 %eq.lhs.len34, 48
  %str.immortal37 = icmp eq i64 %str.tag36, 0
  br i1 %str.immortal37, label %str_ok39, label %str_gen_check38

str_stale25:                                      ; preds = %str_gen_check23
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok24

str_gen_check38:                                  ; preds = %str_ok24
  %arena.cur41 = call ptr @dva_arena_current()
  %tag.valid42 = call i1 @dva_arena_validate_tag(ptr %arena.cur41, i64 %str.tag36)
  br i1 %tag.valid42, label %str_ok39, label %str_stale40

str_ok39:                                         ; preds = %str_stale40, %str_gen_check38, %str_ok24
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 0
  %eq.rhs.len43 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len44 = and i64 %eq.rhs.len43, 281474976710655
  %str.tag45 = lshr i64 %eq.rhs.len43, 48
  %str.immortal46 = icmp eq i64 %str.tag45, 0
  br i1 %str.immortal46, label %str_ok48, label %str_gen_check47

str_stale40:                                      ; preds = %str_gen_check38
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok39

str_gen_check47:                                  ; preds = %str_ok39
  %arena.cur50 = call ptr @dva_arena_current()
  %tag.valid51 = call i1 @dva_arena_validate_tag(ptr %arena.cur50, i64 %str.tag45)
  br i1 %tag.valid51, label %str_ok48, label %str_stale49

str_ok48:                                         ; preds = %str_stale49, %str_gen_check47, %str_ok39
  %eq.len = icmp eq i64 %eq.lhs.len35, %eq.rhs.len44
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale49:                                      ; preds = %str_gen_check47
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok48

str.eq.then:                                      ; preds = %str_ok48
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data52 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 1
  %eq.rhs.data53 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data52, ptr %eq.rhs.data53, i64 %eq.lhs.len35)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok48
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.70.exit
}

define { i1, i64 } @"str::find_from"(ptr %0, ptr %1, i64 %2) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.71 = alloca i64, align 8
  %loop.idx.71 = alloca i64, align 8
  %"var.res'" = alloca { i1, i64 }, align 8
  %var.first_b = alloca i64, align 8
  %var.limit = alloca i64, align 8
  %var.st = alloca i64, align 8
  %var.ln = alloca i64, align 8
  %var.ls = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.needle = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.needle, align 8
  store i64 %2, ptr %var.start, align 8
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
  store i64 %str.len.query2, ptr %var.ls, align 8
  %var.load3 = load ptr, ptr %var.needle, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag7 = lshr i64 %str.len.query5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check9:                                   ; preds = %str_ok
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %str_ok
  store i64 %str.len.query6, ptr %var.ln, align 8
  %var.load14 = load i64, ptr %var.start, align 8
  %cmptmp = icmp slt i64 %var.load14, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

str_stale11:                                      ; preds = %str_gen_check9
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

choice.then:                                      ; preds = %str_ok10
  br label %choice.exit

choice.else:                                      ; preds = %str_ok10
  %var.load15 = load i64, ptr %var.start, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ 0, %choice.then ], [ %var.load15, %choice.else ]
  store i64 %choice.res, ptr %var.st, align 8
  %var.load16 = load i64, ptr %var.ln, align 8
  %cmptmp17 = icmp eq i64 %var.load16, 0
  br i1 %cmptmp17, label %choice.then18, label %choice.else19

choice.then18:                                    ; preds = %choice.exit
  %var.load21 = load i64, ptr %var.st, align 8
  %var.load22 = load i64, ptr %var.ls, align 8
  %cmptmp23 = icmp sle i64 %var.load21, %var.load22
  br i1 %cmptmp23, label %choice.then24, label %choice.else25

choice.else19:                                    ; preds = %choice.exit
  %var.load29 = load i64, ptr %var.st, align 8
  %var.load30 = load i64, ptr %var.ln, align 8
  %addtmp = add i64 %var.load29, %var.load30
  %var.load31 = load i64, ptr %var.ls, align 8
  %cmptmp32 = icmp sgt i64 %addtmp, %var.load31
  br i1 %cmptmp32, label %choice.then33, label %choice.else34

choice.exit20:                                    ; preds = %choice.exit35, %choice.exit26
  %choice.res120 = phi { i1, i64 } [ %choice.res28, %choice.exit26 ], [ %choice.res119, %choice.exit35 ]
  ret { i1, i64 } %choice.res120

choice.then24:                                    ; preds = %choice.then18
  %var.load27 = load i64, ptr %var.st, align 8
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load27, 1
  br label %choice.exit26

choice.else25:                                    ; preds = %choice.then18
  br label %choice.exit26

choice.exit26:                                    ; preds = %choice.else25, %choice.then24
  %choice.res28 = phi { i1, i64 } [ %ram.pay, %choice.then24 ], [ zeroinitializer, %choice.else25 ]
  br label %choice.exit20

choice.then33:                                    ; preds = %choice.else19
  br label %choice.exit35

choice.else34:                                    ; preds = %choice.else19
  %var.load36 = load i64, ptr %var.ls, align 8
  %var.load37 = load i64, ptr %var.ln, align 8
  %subtmp = sub i64 %var.load36, %var.load37
  %addtmp38 = add i64 %subtmp, 1
  store i64 %addtmp38, ptr %var.limit, align 8
  %var.load39 = load ptr, ptr %var.needle, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 0
  %s.read.len40 = load i64, ptr %s.read.len, align 8
  %s.read.len41 = and i64 %s.read.len40, 281474976710655
  %str.tag42 = lshr i64 %s.read.len40, 48
  %str.immortal43 = icmp eq i64 %str.tag42, 0
  br i1 %str.immortal43, label %str_ok45, label %str_gen_check44

choice.exit35:                                    ; preds = %loop.exit.71, %choice.then33
  %choice.res119 = phi { i1, i64 } [ zeroinitializer, %choice.then33 ], [ %var.load118, %loop.exit.71 ]
  br label %choice.exit20

str_gen_check44:                                  ; preds = %choice.else34
  %arena.cur47 = call ptr @dva_arena_current()
  %tag.valid48 = call i1 @dva_arena_validate_tag(ptr %arena.cur47, i64 %str.tag42)
  br i1 %tag.valid48, label %str_ok45, label %str_stale46

str_ok45:                                         ; preds = %str_stale46, %str_gen_check44, %choice.else34
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 1
  %s.read.data49 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

str_stale46:                                      ; preds = %str_gen_check44
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok45

idx_big_check:                                    ; preds = %str_ok45
  %idx.big = icmp sge i64 0, %s.read.len41
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data49, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.first_b, align 8
  store { i1, i64 } zeroinitializer, ptr %"var.res'", align 8
  %var.load50 = load i64, ptr %var.st, align 8
  %var.load51 = load i64, ptr %var.limit, align 8
  store i64 %var.load50, ptr %loop.idx.71, align 8
  br label %loop.header.71

idx_oob:                                          ; preds = %idx_big_check, %str_ok45
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

loop.header.71:                                   ; preds = %loop.latch.71, %idx_ok
  %counter.load = load i64, ptr %loop.idx.71, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load51
  br i1 %loop.cond, label %loop.body.71, label %loop.exit.nat.71

loop.body.71:                                     ; preds = %loop.header.71
  %loop.rel.i = sub i64 %counter.load, %var.load50
  store i64 1, ptr %loop.step.71, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load52 = load ptr, ptr %var.s, align 8
  %s.read.len53 = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 0
  %s.read.len54 = load i64, ptr %s.read.len53, align 8
  %s.read.len55 = and i64 %s.read.len54, 281474976710655
  %str.tag56 = lshr i64 %s.read.len54, 48
  %str.immortal57 = icmp eq i64 %str.tag56, 0
  br i1 %str.immortal57, label %str_ok59, label %str_gen_check58

loop.exit.nat.71:                                 ; preds = %loop.header.71
  br label %loop.exit.71

loop.latch.71:                                    ; preds = %choice.exit115
  %step.val = load i64, ptr %loop.step.71, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.71, align 8
  br label %loop.header.71

loop.exit.71:                                     ; preds = %choice.then114, %loop.exit.nat.71
  %var.load118 = load { i1, i64 }, ptr %"var.res'", align 8
  br label %choice.exit35

str_gen_check58:                                  ; preds = %loop.body.71
  %arena.cur61 = call ptr @dva_arena_current()
  %tag.valid62 = call i1 @dva_arena_validate_tag(ptr %arena.cur61, i64 %str.tag56)
  br i1 %tag.valid62, label %str_ok59, label %str_stale60

str_ok59:                                         ; preds = %str_stale60, %str_gen_check58, %loop.body.71
  %s.read.data63 = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 1
  %s.read.data64 = load ptr, ptr %s.read.data63, align 8
  %var.load65 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load65, 0
  br i1 %idx.neg, label %idx_oob68, label %idx_big_check66

str_stale60:                                      ; preds = %str_gen_check58
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok59

idx_big_check66:                                  ; preds = %str_ok59
  %idx.big69 = icmp sge i64 %var.load65, %s.read.len55
  br i1 %idx.big69, label %idx_oob68, label %idx_ok67

idx_ok67:                                         ; preds = %idx_oob68, %idx_big_check66
  %s.byte.gep70 = getelementptr i8, ptr %s.read.data64, i64 %var.load65
  %s.byte71 = load i8, ptr %s.byte.gep70, align 1
  %s.byte.val72 = zext i8 %s.byte71 to i64
  %var.load73 = load i64, ptr %var.first_b, align 8
  %cmptmp74 = icmp eq i64 %s.byte.val72, %var.load73
  br i1 %cmptmp74, label %and.72.then, label %and.72.else

idx_oob68:                                        ; preds = %idx_big_check66, %str_ok59
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok67

and.72.then:                                      ; preds = %idx_ok67
  %var.load75 = load ptr, ptr %var.s, align 8
  %s.read.len76 = getelementptr inbounds { i64, ptr }, ptr %var.load75, i32 0, i32 0
  %s.read.len77 = load i64, ptr %s.read.len76, align 8
  %s.read.len78 = and i64 %s.read.len77, 281474976710655
  %str.tag79 = lshr i64 %s.read.len77, 48
  %str.immortal80 = icmp eq i64 %str.tag79, 0
  br i1 %str.immortal80, label %str_ok82, label %str_gen_check81

and.72.else:                                      ; preds = %idx_ok67
  br label %and.72.exit

and.72.exit:                                      ; preds = %and.72.else, %str.eq.merge
  %and.72.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp74, %and.72.else ]
  br i1 %and.72.phi, label %choice.then114, label %choice.exit115

str_gen_check81:                                  ; preds = %and.72.then
  %arena.cur84 = call ptr @dva_arena_current()
  %tag.valid85 = call i1 @dva_arena_validate_tag(ptr %arena.cur84, i64 %str.tag79)
  br i1 %tag.valid85, label %str_ok82, label %str_stale83

str_ok82:                                         ; preds = %str_stale83, %str_gen_check81, %and.72.then
  %s.read.data86 = getelementptr inbounds { i64, ptr }, ptr %var.load75, i32 0, i32 1
  %s.read.data87 = load ptr, ptr %s.read.data86, align 8
  %var.load88 = load i64, ptr %var.i, align 8
  %var.load89 = load i64, ptr %var.i, align 8
  %var.load90 = load i64, ptr %var.ln, align 8
  %addtmp91 = add i64 %var.load89, %var.load90
  %start.is_neg = icmp slt i64 %var.load88, 0
  %rel.start = add i64 %s.read.len78, %var.load88
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load88
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len78
  %final.start = select i1 %start.gt.len, i64 %s.read.len78, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp91, 0
  %rel.end = add i64 %s.read.len78, %addtmp91
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp91
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len78
  %final.end = select i1 %end.gt.len, i64 %s.read.len78, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data87, i64 %final.start
  %arena.cur92 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur92, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %var.load93 = load ptr, ptr %var.needle, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len94 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len95 = and i64 %eq.lhs.len94, 281474976710655
  %str.tag96 = lshr i64 %eq.lhs.len94, 48
  %str.immortal97 = icmp eq i64 %str.tag96, 0
  br i1 %str.immortal97, label %str_ok99, label %str_gen_check98

str_stale83:                                      ; preds = %str_gen_check81
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok82

str_gen_check98:                                  ; preds = %str_ok82
  %arena.cur101 = call ptr @dva_arena_current()
  %tag.valid102 = call i1 @dva_arena_validate_tag(ptr %arena.cur101, i64 %str.tag96)
  br i1 %tag.valid102, label %str_ok99, label %str_stale100

str_ok99:                                         ; preds = %str_stale100, %str_gen_check98, %str_ok82
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load93, i32 0, i32 0
  %eq.rhs.len103 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len104 = and i64 %eq.rhs.len103, 281474976710655
  %str.tag105 = lshr i64 %eq.rhs.len103, 48
  %str.immortal106 = icmp eq i64 %str.tag105, 0
  br i1 %str.immortal106, label %str_ok108, label %str_gen_check107

str_stale100:                                     ; preds = %str_gen_check98
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok99

str_gen_check107:                                 ; preds = %str_ok99
  %arena.cur110 = call ptr @dva_arena_current()
  %tag.valid111 = call i1 @dva_arena_validate_tag(ptr %arena.cur110, i64 %str.tag105)
  br i1 %tag.valid111, label %str_ok108, label %str_stale109

str_ok108:                                        ; preds = %str_stale109, %str_gen_check107, %str_ok99
  %eq.len = icmp eq i64 %eq.lhs.len95, %eq.rhs.len104
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale109:                                     ; preds = %str_gen_check107
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok108

str.eq.then:                                      ; preds = %str_ok108
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data112 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load93, i32 0, i32 1
  %eq.rhs.data113 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data112, ptr %eq.rhs.data113, i64 %eq.lhs.len95)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok108
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.72.exit

choice.then114:                                   ; preds = %and.72.exit
  %var.load116 = load i64, ptr %var.i, align 8
  %ram.pay117 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load116, 1
  store { i1, i64 } %ram.pay117, ptr %"var.res'", align 8
  br label %loop.exit.71

choice.exit115:                                   ; preds = %and.72.exit
  br label %loop.latch.71
}

define { i1, i64 } @"str::find"(ptr %0, ptr %1) #1 {
entry:
  %var.needle = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.needle, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.needle, align 8
  %call.res = call { i1, i64 } @"str::find_from"(ptr %var.load, ptr %var.load1, i64 0)
  ret { i1, i64 } %call.res
}

define { i1, i64 } @"str::rfind"(ptr %0, ptr %1) #1 {
entry:
  %var.i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.73 = alloca i64, align 8
  %loop.idx.73 = alloca i64, align 8
  %"var.res'" = alloca { i1, i64 }, align 8
  %var.first_b = alloca i64, align 8
  %var.span = alloca i64, align 8
  %var.ln = alloca i64, align 8
  %var.ls = alloca i64, align 8
  %var.needle = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.needle, align 8
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
  store i64 %str.len.query2, ptr %var.ls, align 8
  %var.load3 = load ptr, ptr %var.needle, align 8
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
  store i64 %str.len.query6, ptr %var.ln, align 8
  %var.load14 = load i64, ptr %var.ln, align 8
  %cmptmp = icmp eq i64 %var.load14, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

str_stale11:                                      ; preds = %str_gen_check9
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

choice.then:                                      ; preds = %str_ok10
  %var.load15 = load i64, ptr %var.ls, align 8
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load15, 1
  br label %choice.exit

choice.else:                                      ; preds = %str_ok10
  %var.load16 = load i64, ptr %var.ln, align 8
  %var.load17 = load i64, ptr %var.ls, align 8
  %cmptmp18 = icmp sgt i64 %var.load16, %var.load17
  br i1 %cmptmp18, label %choice.then19, label %choice.else20

choice.exit:                                      ; preds = %choice.exit21, %choice.then
  %choice.res108 = phi { i1, i64 } [ %ram.pay, %choice.then ], [ %choice.res, %choice.exit21 ]
  ret { i1, i64 } %choice.res108

choice.then19:                                    ; preds = %choice.else
  br label %choice.exit21

choice.else20:                                    ; preds = %choice.else
  %var.load22 = load i64, ptr %var.ls, align 8
  %var.load23 = load i64, ptr %var.ln, align 8
  %subtmp = sub i64 %var.load22, %var.load23
  %addtmp = add i64 %subtmp, 1
  store i64 %addtmp, ptr %var.span, align 8
  %var.load24 = load ptr, ptr %var.needle, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 0
  %s.read.len25 = load i64, ptr %s.read.len, align 8
  %s.read.len26 = and i64 %s.read.len25, 281474976710655
  %str.tag27 = lshr i64 %s.read.len25, 48
  %str.immortal28 = icmp eq i64 %str.tag27, 0
  br i1 %str.immortal28, label %str_ok30, label %str_gen_check29

choice.exit21:                                    ; preds = %loop.exit.73, %choice.then19
  %choice.res = phi { i1, i64 } [ zeroinitializer, %choice.then19 ], [ %var.load107, %loop.exit.73 ]
  br label %choice.exit

str_gen_check29:                                  ; preds = %choice.else20
  %arena.cur32 = call ptr @dva_arena_current()
  %tag.valid33 = call i1 @dva_arena_validate_tag(ptr %arena.cur32, i64 %str.tag27)
  br i1 %tag.valid33, label %str_ok30, label %str_stale31

str_ok30:                                         ; preds = %str_stale31, %str_gen_check29, %choice.else20
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 1
  %s.read.data34 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

str_stale31:                                      ; preds = %str_gen_check29
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok30

idx_big_check:                                    ; preds = %str_ok30
  %idx.big = icmp sge i64 0, %s.read.len26
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data34, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.first_b, align 8
  store { i1, i64 } zeroinitializer, ptr %"var.res'", align 8
  %var.load35 = load i64, ptr %var.span, align 8
  store i64 0, ptr %loop.idx.73, align 8
  br label %loop.header.73

idx_oob:                                          ; preds = %idx_big_check, %str_ok30
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

loop.header.73:                                   ; preds = %loop.latch.73, %idx_ok
  %counter.load = load i64, ptr %loop.idx.73, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load35
  br i1 %loop.cond, label %loop.body.73, label %loop.exit.nat.73

loop.body.73:                                     ; preds = %loop.header.73
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.73, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.k, align 8
  %var.load36 = load i64, ptr %var.ls, align 8
  %var.load37 = load i64, ptr %var.ln, align 8
  %subtmp38 = sub i64 %var.load36, %var.load37
  %var.load39 = load i64, ptr %var.k, align 8
  %subtmp40 = sub i64 %subtmp38, %var.load39
  store i64 %subtmp40, ptr %var.i, align 8
  %var.load41 = load ptr, ptr %var.s, align 8
  %s.read.len42 = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 0
  %s.read.len43 = load i64, ptr %s.read.len42, align 8
  %s.read.len44 = and i64 %s.read.len43, 281474976710655
  %str.tag45 = lshr i64 %s.read.len43, 48
  %str.immortal46 = icmp eq i64 %str.tag45, 0
  br i1 %str.immortal46, label %str_ok48, label %str_gen_check47

loop.exit.nat.73:                                 ; preds = %loop.header.73
  br label %loop.exit.73

loop.latch.73:                                    ; preds = %choice.exit104
  %step.val = load i64, ptr %loop.step.73, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.73, align 8
  br label %loop.header.73

loop.exit.73:                                     ; preds = %choice.then103, %loop.exit.nat.73
  %var.load107 = load { i1, i64 }, ptr %"var.res'", align 8
  br label %choice.exit21

str_gen_check47:                                  ; preds = %loop.body.73
  %arena.cur50 = call ptr @dva_arena_current()
  %tag.valid51 = call i1 @dva_arena_validate_tag(ptr %arena.cur50, i64 %str.tag45)
  br i1 %tag.valid51, label %str_ok48, label %str_stale49

str_ok48:                                         ; preds = %str_stale49, %str_gen_check47, %loop.body.73
  %s.read.data52 = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 1
  %s.read.data53 = load ptr, ptr %s.read.data52, align 8
  %var.load54 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load54, 0
  br i1 %idx.neg, label %idx_oob57, label %idx_big_check55

str_stale49:                                      ; preds = %str_gen_check47
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok48

idx_big_check55:                                  ; preds = %str_ok48
  %idx.big58 = icmp sge i64 %var.load54, %s.read.len44
  br i1 %idx.big58, label %idx_oob57, label %idx_ok56

idx_ok56:                                         ; preds = %idx_oob57, %idx_big_check55
  %s.byte.gep59 = getelementptr i8, ptr %s.read.data53, i64 %var.load54
  %s.byte60 = load i8, ptr %s.byte.gep59, align 1
  %s.byte.val61 = zext i8 %s.byte60 to i64
  %var.load62 = load i64, ptr %var.first_b, align 8
  %cmptmp63 = icmp eq i64 %s.byte.val61, %var.load62
  br i1 %cmptmp63, label %and.74.then, label %and.74.else

idx_oob57:                                        ; preds = %idx_big_check55, %str_ok48
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok56

and.74.then:                                      ; preds = %idx_ok56
  %var.load64 = load ptr, ptr %var.s, align 8
  %s.read.len65 = getelementptr inbounds { i64, ptr }, ptr %var.load64, i32 0, i32 0
  %s.read.len66 = load i64, ptr %s.read.len65, align 8
  %s.read.len67 = and i64 %s.read.len66, 281474976710655
  %str.tag68 = lshr i64 %s.read.len66, 48
  %str.immortal69 = icmp eq i64 %str.tag68, 0
  br i1 %str.immortal69, label %str_ok71, label %str_gen_check70

and.74.else:                                      ; preds = %idx_ok56
  br label %and.74.exit

and.74.exit:                                      ; preds = %and.74.else, %str.eq.merge
  %and.74.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp63, %and.74.else ]
  br i1 %and.74.phi, label %choice.then103, label %choice.exit104

str_gen_check70:                                  ; preds = %and.74.then
  %arena.cur73 = call ptr @dva_arena_current()
  %tag.valid74 = call i1 @dva_arena_validate_tag(ptr %arena.cur73, i64 %str.tag68)
  br i1 %tag.valid74, label %str_ok71, label %str_stale72

str_ok71:                                         ; preds = %str_stale72, %str_gen_check70, %and.74.then
  %s.read.data75 = getelementptr inbounds { i64, ptr }, ptr %var.load64, i32 0, i32 1
  %s.read.data76 = load ptr, ptr %s.read.data75, align 8
  %var.load77 = load i64, ptr %var.i, align 8
  %var.load78 = load i64, ptr %var.i, align 8
  %var.load79 = load i64, ptr %var.ln, align 8
  %addtmp80 = add i64 %var.load78, %var.load79
  %start.is_neg = icmp slt i64 %var.load77, 0
  %rel.start = add i64 %s.read.len67, %var.load77
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load77
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len67
  %final.start = select i1 %start.gt.len, i64 %s.read.len67, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp80, 0
  %rel.end = add i64 %s.read.len67, %addtmp80
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp80
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len67
  %final.end = select i1 %end.gt.len, i64 %s.read.len67, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data76, i64 %final.start
  %arena.cur81 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %var.load82 = load ptr, ptr %var.needle, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len83 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len84 = and i64 %eq.lhs.len83, 281474976710655
  %str.tag85 = lshr i64 %eq.lhs.len83, 48
  %str.immortal86 = icmp eq i64 %str.tag85, 0
  br i1 %str.immortal86, label %str_ok88, label %str_gen_check87

str_stale72:                                      ; preds = %str_gen_check70
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok71

str_gen_check87:                                  ; preds = %str_ok71
  %arena.cur90 = call ptr @dva_arena_current()
  %tag.valid91 = call i1 @dva_arena_validate_tag(ptr %arena.cur90, i64 %str.tag85)
  br i1 %tag.valid91, label %str_ok88, label %str_stale89

str_ok88:                                         ; preds = %str_stale89, %str_gen_check87, %str_ok71
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load82, i32 0, i32 0
  %eq.rhs.len92 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len93 = and i64 %eq.rhs.len92, 281474976710655
  %str.tag94 = lshr i64 %eq.rhs.len92, 48
  %str.immortal95 = icmp eq i64 %str.tag94, 0
  br i1 %str.immortal95, label %str_ok97, label %str_gen_check96

str_stale89:                                      ; preds = %str_gen_check87
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok88

str_gen_check96:                                  ; preds = %str_ok88
  %arena.cur99 = call ptr @dva_arena_current()
  %tag.valid100 = call i1 @dva_arena_validate_tag(ptr %arena.cur99, i64 %str.tag94)
  br i1 %tag.valid100, label %str_ok97, label %str_stale98

str_ok97:                                         ; preds = %str_stale98, %str_gen_check96, %str_ok88
  %eq.len = icmp eq i64 %eq.lhs.len84, %eq.rhs.len93
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale98:                                      ; preds = %str_gen_check96
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok97

str.eq.then:                                      ; preds = %str_ok97
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data101 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load82, i32 0, i32 1
  %eq.rhs.data102 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data101, ptr %eq.rhs.data102, i64 %eq.lhs.len84)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok97
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.74.exit

choice.then103:                                   ; preds = %and.74.exit
  %var.load105 = load i64, ptr %var.i, align 8
  %ram.pay106 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load105, 1
  store { i1, i64 } %ram.pay106, ptr %"var.res'", align 8
  br label %loop.exit.73

choice.exit104:                                   ; preds = %and.74.exit
  br label %loop.latch.73
}

define i1 @"str::contains"(ptr %0, ptr %1) #1 {
entry:
  %var.needle = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.needle, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.needle, align 8
  %call.res = call { i1, i64 } @"str::find"(ptr %var.load, ptr %var.load1)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  ret i1 %ram.tag
}

define i64 @"str::count"(ptr %0, ptr %1) #1 {
entry:
  %var.idx = alloca i64, align 8
  %var._27 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.75 = alloca i64, align 8
  %loop.idx.75 = alloca i64, align 8
  %"var.n'" = alloca i64, align 8
  %"var.pos'" = alloca i64, align 8
  %var.ls = alloca i64, align 8
  %var.ln = alloca i64, align 8
  %var.needle = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.needle, align 8
  %var.load = load ptr, ptr %var.needle, align 8
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
  store i64 %str.len.query2, ptr %var.ln, align 8
  %var.load3 = load i64, ptr %var.ln, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  br label %choice.exit

choice.else:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.s, align 8
  %str.len.query5 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query5, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %str.tag8 = lshr i64 %str.len.query6, 48
  %str.immortal9 = icmp eq i64 %str.tag8, 0
  br i1 %str.immortal9, label %str_ok11, label %str_gen_check10

choice.exit:                                      ; preds = %loop.exit.75, %choice.then
  %choice.res = phi i64 [ 0, %choice.then ], [ %var.load33, %loop.exit.75 ]
  ret i64 %choice.res

str_gen_check10:                                  ; preds = %choice.else
  %arena.cur13 = call ptr @dva_arena_current()
  %tag.valid14 = call i1 @dva_arena_validate_tag(ptr %arena.cur13, i64 %str.tag8)
  br i1 %tag.valid14, label %str_ok11, label %str_stale12

str_ok11:                                         ; preds = %str_stale12, %str_gen_check10, %choice.else
  store i64 %str.len.query7, ptr %var.ls, align 8
  store i64 0, ptr %"var.pos'", align 8
  store i64 0, ptr %"var.n'", align 8
  store i64 0, ptr %loop.idx.75, align 8
  br label %loop.header.75

str_stale12:                                      ; preds = %str_gen_check10
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok11

loop.header.75:                                   ; preds = %loop.latch.75, %str_ok11
  %counter.load = load i64, ptr %loop.idx.75, align 8
  br label %loop.body.75

loop.body.75:                                     ; preds = %loop.header.75
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.75, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load15 = load i64, ptr %"var.pos'", align 8
  %var.load16 = load i64, ptr %var.ln, align 8
  %addtmp = add i64 %var.load15, %var.load16
  %var.load17 = load i64, ptr %var.ls, align 8
  %cmptmp18 = icmp sgt i64 %addtmp, %var.load17
  br i1 %cmptmp18, label %choice.then19, label %choice.exit20

loop.exit.nat.75:                                 ; No predecessors!
  br label %loop.exit.75

loop.latch.75:                                    ; preds = %choice.exit26
  %step.val = load i64, ptr %loop.step.75, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.75, align 8
  br label %loop.header.75

loop.exit.75:                                     ; preds = %choice.else25, %choice.then19, %loop.exit.nat.75
  %var.load33 = load i64, ptr %"var.n'", align 8
  br label %choice.exit

choice.then19:                                    ; preds = %loop.body.75
  br label %loop.exit.75

choice.exit20:                                    ; preds = %loop.body.75
  %var.load21 = load ptr, ptr %var.s, align 8
  %var.load22 = load ptr, ptr %var.needle, align 8
  %var.load23 = load i64, ptr %"var.pos'", align 8
  %call.res = call { i1, i64 } @"str::find_from"(ptr %var.load21, ptr %var.load22, i64 %var.load23)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then24, label %choice.else25

choice.then24:                                    ; preds = %choice.exit20
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._27, align 8
  store i64 %ram.pay, ptr %var.idx, align 8
  %var.load28 = load i64, ptr %"var.n'", align 8
  %addtmp29 = add i64 %var.load28, 1
  store i64 %addtmp29, ptr %"var.n'", align 8
  %var.load30 = load i64, ptr %var.idx, align 8
  %var.load31 = load i64, ptr %var.ln, align 8
  %addtmp32 = add i64 %var.load30, %var.load31
  store i64 %addtmp32, ptr %"var.pos'", align 8
  br label %choice.exit26

choice.else25:                                    ; preds = %choice.exit20
  br label %loop.exit.75

choice.exit26:                                    ; preds = %choice.then24
  br label %loop.latch.75
}

define ptr @"str::trim_start"(ptr %0) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.76 = alloca i64, align 8
  %loop.idx.76 = alloca i64, align 8
  %"var.i'" = alloca i64, align 8
  %var.len = alloca i64, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  store i64 0, ptr %"var.i'", align 8
  %var.load3 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.76, align 8
  br label %loop.header.76

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.76:                                   ; preds = %loop.latch.76, %str_ok
  %counter.load = load i64, ptr %loop.idx.76, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load3
  br i1 %loop.cond, label %loop.body.76, label %loop.exit.nat.76

loop.body.76:                                     ; preds = %loop.header.76
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.76, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.k, align 8
  %var.load4 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

loop.exit.nat.76:                                 ; preds = %loop.header.76
  br label %loop.exit.76

loop.latch.76:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.76, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.76, align 8
  br label %loop.header.76

loop.exit.76:                                     ; preds = %choice.else, %loop.exit.nat.76
  %var.load17 = load i64, ptr %"var.i'", align 8
  %cmptmp = icmp eq i64 %var.load17, 0
  br i1 %cmptmp, label %choice.then18, label %choice.else19

str_gen_check9:                                   ; preds = %loop.body.76
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %loop.body.76
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  %var.load15 = load i64, ptr %var.k, align 8
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
  br i1 %call.res, label %choice.then, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %idx_ok
  %var.load16 = load i64, ptr %var.k, align 8
  %addtmp = add i64 %var.load16, 1
  store i64 %addtmp, ptr %"var.i'", align 8
  br label %choice.exit

choice.else:                                      ; preds = %idx_ok
  br label %loop.exit.76

choice.exit:                                      ; preds = %choice.then
  br label %loop.latch.76

choice.then18:                                    ; preds = %loop.exit.76
  %var.load21 = load ptr, ptr %var.s, align 8
  br label %choice.exit20

choice.else19:                                    ; preds = %loop.exit.76
  %var.load22 = load ptr, ptr %var.s, align 8
  %s.read.len23 = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 0
  %s.read.len24 = load i64, ptr %s.read.len23, align 8
  %s.read.len25 = and i64 %s.read.len24, 281474976710655
  %str.tag26 = lshr i64 %s.read.len24, 48
  %str.immortal27 = icmp eq i64 %str.tag26, 0
  br i1 %str.immortal27, label %str_ok29, label %str_gen_check28

choice.exit20:                                    ; preds = %str_ok29, %choice.then18
  %choice.res = phi ptr [ %var.load21, %choice.then18 ], [ %str.view, %str_ok29 ]
  ret ptr %choice.res

str_gen_check28:                                  ; preds = %choice.else19
  %arena.cur31 = call ptr @dva_arena_current()
  %tag.valid32 = call i1 @dva_arena_validate_tag(ptr %arena.cur31, i64 %str.tag26)
  br i1 %tag.valid32, label %str_ok29, label %str_stale30

str_ok29:                                         ; preds = %str_stale30, %str_gen_check28, %choice.else19
  %s.read.data33 = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 1
  %s.read.data34 = load ptr, ptr %s.read.data33, align 8
  %var.load35 = load i64, ptr %"var.i'", align 8
  %var.load36 = load i64, ptr %var.len, align 8
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
  br label %choice.exit20

str_stale30:                                      ; preds = %str_gen_check28
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok29
}

define ptr @"str::trim_end"(ptr %0) #1 {
entry:
  %var.idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.77 = alloca i64, align 8
  %loop.idx.77 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.len = alloca i64, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  store i64 %var.load3, ptr %"var.end'", align 8
  %var.load4 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.77, align 8
  br label %loop.header.77

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.77:                                   ; preds = %loop.latch.77, %str_ok
  %counter.load = load i64, ptr %loop.idx.77, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load4
  br i1 %loop.cond, label %loop.body.77, label %loop.exit.nat.77

loop.body.77:                                     ; preds = %loop.header.77
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.77, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.k, align 8
  %var.load5 = load i64, ptr %var.len, align 8
  %subtmp = sub i64 %var.load5, 1
  %var.load6 = load i64, ptr %var.k, align 8
  %subtmp7 = sub i64 %subtmp, %var.load6
  store i64 %subtmp7, ptr %var.idx, align 8
  %var.load8 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 0
  %s.read.len9 = load i64, ptr %s.read.len, align 8
  %s.read.len10 = and i64 %s.read.len9, 281474976710655
  %str.tag11 = lshr i64 %s.read.len9, 48
  %str.immortal12 = icmp eq i64 %str.tag11, 0
  br i1 %str.immortal12, label %str_ok14, label %str_gen_check13

loop.exit.nat.77:                                 ; preds = %loop.header.77
  br label %loop.exit.77

loop.latch.77:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.77, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.77, align 8
  br label %loop.header.77

loop.exit.77:                                     ; preds = %choice.else, %loop.exit.nat.77
  %var.load21 = load i64, ptr %"var.end'", align 8
  %var.load22 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load21, %var.load22
  br i1 %cmptmp, label %choice.then23, label %choice.else24

str_gen_check13:                                  ; preds = %loop.body.77
  %arena.cur16 = call ptr @dva_arena_current()
  %tag.valid17 = call i1 @dva_arena_validate_tag(ptr %arena.cur16, i64 %str.tag11)
  br i1 %tag.valid17, label %str_ok14, label %str_stale15

str_ok14:                                         ; preds = %str_stale15, %str_gen_check13, %loop.body.77
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 1
  %s.read.data18 = load ptr, ptr %s.read.data, align 8
  %var.load19 = load i64, ptr %var.idx, align 8
  %idx.neg = icmp slt i64 %var.load19, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale15:                                      ; preds = %str_gen_check13
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok14

idx_big_check:                                    ; preds = %str_ok14
  %idx.big = icmp sge i64 %var.load19, %s.read.len10
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data18, i64 %var.load19
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  br i1 %call.res, label %choice.then, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok14
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %idx_ok
  %var.load20 = load i64, ptr %var.idx, align 8
  store i64 %var.load20, ptr %"var.end'", align 8
  br label %choice.exit

choice.else:                                      ; preds = %idx_ok
  br label %loop.exit.77

choice.exit:                                      ; preds = %choice.then
  br label %loop.latch.77

choice.then23:                                    ; preds = %loop.exit.77
  %var.load26 = load ptr, ptr %var.s, align 8
  br label %choice.exit25

choice.else24:                                    ; preds = %loop.exit.77
  %var.load27 = load ptr, ptr %var.s, align 8
  %s.read.len28 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %s.read.len29 = load i64, ptr %s.read.len28, align 8
  %s.read.len30 = and i64 %s.read.len29, 281474976710655
  %str.tag31 = lshr i64 %s.read.len29, 48
  %str.immortal32 = icmp eq i64 %str.tag31, 0
  br i1 %str.immortal32, label %str_ok34, label %str_gen_check33

choice.exit25:                                    ; preds = %str_ok34, %choice.then23
  %choice.res = phi ptr [ %var.load26, %choice.then23 ], [ %str.view, %str_ok34 ]
  ret ptr %choice.res

str_gen_check33:                                  ; preds = %choice.else24
  %arena.cur36 = call ptr @dva_arena_current()
  %tag.valid37 = call i1 @dva_arena_validate_tag(ptr %arena.cur36, i64 %str.tag31)
  br i1 %tag.valid37, label %str_ok34, label %str_stale35

str_ok34:                                         ; preds = %str_stale35, %str_gen_check33, %choice.else24
  %s.read.data38 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %s.read.data39 = load ptr, ptr %s.read.data38, align 8
  %var.load40 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len30, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len30
  %final.start = select i1 %start.gt.len, i64 %s.read.len30, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load40, 0
  %rel.end = add i64 %s.read.len30, %var.load40
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load40
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len30
  %final.end = select i1 %end.gt.len, i64 %s.read.len30, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data39, i64 %final.start
  %arena.cur41 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit25

str_stale35:                                      ; preds = %str_gen_check33
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok34
}

define ptr @"str::trim"(ptr %0) #1 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %call.res = call ptr @"str::trim_start"(ptr %var.load)
  %call.res1 = call ptr @"str::trim_end"(ptr %call.res)
  ret ptr %call.res1
}

define ptr @"str::trim_prefix"(ptr %0, ptr %1) #1 {
entry:
  %var.prefix = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.prefix, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.prefix, align 8
  %call.res = call i1 @"str::starts_with"(ptr %var.load, ptr %var.load1)
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %s.read.len3 = load i64, ptr %s.read.len, align 8
  %s.read.len4 = and i64 %s.read.len3, 281474976710655
  %str.tag = lshr i64 %s.read.len3, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.else:                                      ; preds = %entry
  %var.load28 = load ptr, ptr %var.s, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %str_ok23
  %choice.res = phi ptr [ %str.view, %str_ok23 ], [ %var.load28, %choice.else ]
  ret ptr %choice.res

str_gen_check:                                    ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %s.read.data5 = load ptr, ptr %s.read.data, align 8
  %var.load6 = load ptr, ptr %var.prefix, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %str.len.query7 = load i64, ptr %str.len.query, align 8
  %str.len.query8 = and i64 %str.len.query7, 281474976710655
  %str.tag9 = lshr i64 %str.len.query7, 48
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
  %var.load16 = load ptr, ptr %var.s, align 8
  %str.len.query17 = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 0
  %str.len.query18 = load i64, ptr %str.len.query17, align 8
  %str.len.query19 = and i64 %str.len.query18, 281474976710655
  %str.tag20 = lshr i64 %str.len.query18, 48
  %str.immortal21 = icmp eq i64 %str.tag20, 0
  br i1 %str.immortal21, label %str_ok23, label %str_gen_check22

str_stale13:                                      ; preds = %str_gen_check11
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

str_gen_check22:                                  ; preds = %str_ok12
  %arena.cur25 = call ptr @dva_arena_current()
  %tag.valid26 = call i1 @dva_arena_validate_tag(ptr %arena.cur25, i64 %str.tag20)
  br i1 %tag.valid26, label %str_ok23, label %str_stale24

str_ok23:                                         ; preds = %str_stale24, %str_gen_check22, %str_ok12
  %start.is_neg = icmp slt i64 %str.len.query8, 0
  %rel.start = add i64 %s.read.len4, %str.len.query8
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %str.len.query8
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len4
  %final.start = select i1 %start.gt.len, i64 %s.read.len4, i64 %c.start.0
  %end.is_neg = icmp slt i64 %str.len.query19, 0
  %rel.end = add i64 %s.read.len4, %str.len.query19
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %str.len.query19
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len4
  %final.end = select i1 %end.gt.len, i64 %s.read.len4, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data5, i64 %final.start
  %arena.cur27 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit

str_stale24:                                      ; preds = %str_gen_check22
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok23
}

define ptr @"str::trim_suffix"(ptr %0, ptr %1) #1 {
entry:
  %var.suffix = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.suffix, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.suffix, align 8
  %call.res = call i1 @"str::ends_with"(ptr %var.load, ptr %var.load1)
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %s.read.len3 = load i64, ptr %s.read.len, align 8
  %s.read.len4 = and i64 %s.read.len3, 281474976710655
  %str.tag = lshr i64 %s.read.len3, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.else:                                      ; preds = %entry
  %var.load28 = load ptr, ptr %var.s, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %str_ok23
  %choice.res = phi ptr [ %str.view, %str_ok23 ], [ %var.load28, %choice.else ]
  ret ptr %choice.res

str_gen_check:                                    ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %s.read.data5 = load ptr, ptr %s.read.data, align 8
  %var.load6 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %str.len.query7 = load i64, ptr %str.len.query, align 8
  %str.len.query8 = and i64 %str.len.query7, 281474976710655
  %str.tag9 = lshr i64 %str.len.query7, 48
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
  %var.load16 = load ptr, ptr %var.suffix, align 8
  %str.len.query17 = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 0
  %str.len.query18 = load i64, ptr %str.len.query17, align 8
  %str.len.query19 = and i64 %str.len.query18, 281474976710655
  %str.tag20 = lshr i64 %str.len.query18, 48
  %str.immortal21 = icmp eq i64 %str.tag20, 0
  br i1 %str.immortal21, label %str_ok23, label %str_gen_check22

str_stale13:                                      ; preds = %str_gen_check11
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

str_gen_check22:                                  ; preds = %str_ok12
  %arena.cur25 = call ptr @dva_arena_current()
  %tag.valid26 = call i1 @dva_arena_validate_tag(ptr %arena.cur25, i64 %str.tag20)
  br i1 %tag.valid26, label %str_ok23, label %str_stale24

str_ok23:                                         ; preds = %str_stale24, %str_gen_check22, %str_ok12
  %subtmp = sub i64 %str.len.query8, %str.len.query19
  %rel.start = add i64 %s.read.len4, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len4
  %final.start = select i1 %start.gt.len, i64 %s.read.len4, i64 %c.start.0
  %end.is_neg = icmp slt i64 %subtmp, 0
  %rel.end = add i64 %s.read.len4, %subtmp
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %subtmp
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len4
  %final.end = select i1 %end.gt.len, i64 %s.read.len4, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data5, i64 %final.start
  %arena.cur27 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit

str_stale24:                                      ; preds = %str_gen_check22
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok23
}

define ptr @"str::split_once"(ptr %0, ptr %1) #1 {
entry:
  %var.idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var.sep = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.sep, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.sep, align 8
  %call.res = call { i1, i64 } @"str::find"(ptr %var.load, ptr %var.load1)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._, align 8
  store i64 %ram.pay, ptr %var.idx, align 8
  %var.load2 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %s.read.len3 = load i64, ptr %s.read.len, align 8
  %s.read.len4 = and i64 %s.read.len3, 281474976710655
  %str.tag = lshr i64 %s.read.len3, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %str_ok39
  %choice.res = phi ptr [ %rec.alloc, %str_ok39 ], [ null, %choice.else ]
  ret ptr %choice.res

str_gen_check:                                    ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %s.read.data5 = load ptr, ptr %s.read.data, align 8
  %var.load6 = load i64, ptr %var.idx, align 8
  %rel.start = add i64 %s.read.len4, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len4
  %final.start = select i1 %start.gt.len, i64 %s.read.len4, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load6, 0
  %rel.end = add i64 %s.read.len4, %var.load6
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load6
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len4
  %final.end = select i1 %end.gt.len, i64 %s.read.len4, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data5, i64 %final.start
  %arena.cur7 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %var.load8 = load ptr, ptr %var.s, align 8
  %s.read.len9 = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len9, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %str.tag12 = lshr i64 %s.read.len10, 48
  %str.immortal13 = icmp eq i64 %str.tag12, 0
  br i1 %str.immortal13, label %str_ok15, label %str_gen_check14

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check14:                                  ; preds = %str_ok
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %str.tag12)
  br i1 %tag.valid18, label %str_ok15, label %str_stale16

str_ok15:                                         ; preds = %str_stale16, %str_gen_check14, %str_ok
  %s.read.data19 = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 1
  %s.read.data20 = load ptr, ptr %s.read.data19, align 8
  %var.load21 = load i64, ptr %var.idx, align 8
  %var.load22 = load ptr, ptr %var.sep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 0
  %str.len.query23 = load i64, ptr %str.len.query, align 8
  %str.len.query24 = and i64 %str.len.query23, 281474976710655
  %str.tag25 = lshr i64 %str.len.query23, 48
  %str.immortal26 = icmp eq i64 %str.tag25, 0
  br i1 %str.immortal26, label %str_ok28, label %str_gen_check27

str_stale16:                                      ; preds = %str_gen_check14
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok15

str_gen_check27:                                  ; preds = %str_ok15
  %arena.cur30 = call ptr @dva_arena_current()
  %tag.valid31 = call i1 @dva_arena_validate_tag(ptr %arena.cur30, i64 %str.tag25)
  br i1 %tag.valid31, label %str_ok28, label %str_stale29

str_ok28:                                         ; preds = %str_stale29, %str_gen_check27, %str_ok15
  %addtmp = add i64 %var.load21, %str.len.query24
  %var.load32 = load ptr, ptr %var.s, align 8
  %str.len.query33 = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 0
  %str.len.query34 = load i64, ptr %str.len.query33, align 8
  %str.len.query35 = and i64 %str.len.query34, 281474976710655
  %str.tag36 = lshr i64 %str.len.query34, 48
  %str.immortal37 = icmp eq i64 %str.tag36, 0
  br i1 %str.immortal37, label %str_ok39, label %str_gen_check38

str_stale29:                                      ; preds = %str_gen_check27
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok28

str_gen_check38:                                  ; preds = %str_ok28
  %arena.cur41 = call ptr @dva_arena_current()
  %tag.valid42 = call i1 @dva_arena_validate_tag(ptr %arena.cur41, i64 %str.tag36)
  br i1 %tag.valid42, label %str_ok39, label %str_stale40

str_ok39:                                         ; preds = %str_stale40, %str_gen_check38, %str_ok28
  %start.is_neg = icmp slt i64 %addtmp, 0
  %rel.start43 = add i64 %s.read.len11, %addtmp
  %norm.start44 = select i1 %start.is_neg, i64 %rel.start43, i64 %addtmp
  %start.lt.045 = icmp slt i64 %norm.start44, 0
  %c.start.046 = select i1 %start.lt.045, i64 0, i64 %norm.start44
  %start.gt.len47 = icmp sgt i64 %c.start.046, %s.read.len11
  %final.start48 = select i1 %start.gt.len47, i64 %s.read.len11, i64 %c.start.046
  %end.is_neg49 = icmp slt i64 %str.len.query35, 0
  %rel.end50 = add i64 %s.read.len11, %str.len.query35
  %norm.end51 = select i1 %end.is_neg49, i64 %rel.end50, i64 %str.len.query35
  %end.lt.052 = icmp slt i64 %norm.end51, 0
  %c.end.053 = select i1 %end.lt.052, i64 0, i64 %norm.end51
  %end.gt.len54 = icmp sgt i64 %c.end.053, %s.read.len11
  %final.end55 = select i1 %end.gt.len54, i64 %s.read.len11, i64 %c.end.053
  %view.empty56 = icmp sle i64 %final.end55, %final.start48
  %view.len.sub57 = sub i64 %final.end55, %final.start48
  %view.len58 = select i1 %view.empty56, i64 0, i64 %view.len.sub57
  %view.data59 = getelementptr i8, ptr %s.read.data20, i64 %final.start48
  %arena.cur60 = call ptr @dva_arena_current()
  %str.view61 = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 16)
  %str.build.len.gep62 = getelementptr inbounds { i64, ptr }, ptr %str.view61, i32 0, i32 0
  store i64 %view.len58, ptr %str.build.len.gep62, align 8
  %str.build.data.gep63 = getelementptr inbounds { i64, ptr }, ptr %str.view61, i32 0, i32 1
  store ptr %view.data59, ptr %str.build.data.gep63, align 8
  %arena.cur64 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %str.view, ptr %rec.fld, align 8
  %rec.fld65 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %str.view61, ptr %rec.fld65, align 8
  br label %choice.exit

str_stale40:                                      ; preds = %str_gen_check38
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok39
}

define ptr @"str::split"(ptr %0, ptr %1) #1 {
entry:
  %var.idx = alloca i64, align 8
  %var._66 = alloca i64, align 8
  %var._59 = alloca i64, align 8
  %var._i58 = alloca i64, align 8
  %loop.step.79 = alloca i64, align 8
  %loop.idx.79 = alloca i64, align 8
  %"var.pos'" = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.78 = alloca i64, align 8
  %loop.idx.78 = alloca i64, align 8
  %var.lsep = alloca i64, align 8
  %var.ls = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var.sep = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.sep, align 8
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
  store ptr %a.new, ptr %var.out, align 8
  %var.load = load ptr, ptr %var.s, align 8
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
  store i64 %str.len.query3, ptr %var.ls, align 8
  %var.load5 = load ptr, ptr %var.sep, align 8
  %str.len.query6 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %str.len.query7 = load i64, ptr %str.len.query6, align 8
  %str.len.query8 = and i64 %str.len.query7, 281474976710655
  %str.tag9 = lshr i64 %str.len.query7, 48
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
  store i64 %str.len.query8, ptr %var.lsep, align 8
  %var.load16 = load i64, ptr %var.lsep, align 8
  %cmptmp = icmp eq i64 %var.load16, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

str_stale13:                                      ; preds = %str_gen_check11
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

choice.then:                                      ; preds = %str_ok12
  %var.load17 = load i64, ptr %var.ls, align 8
  store i64 0, ptr %loop.idx.78, align 8
  br label %loop.header.78

choice.else:                                      ; preds = %str_ok12
  store i64 0, ptr %"var.pos'", align 8
  store i64 0, ptr %loop.idx.79, align 8
  br label %loop.header.79

choice.exit:                                      ; preds = %a.after206, %a.after47
  %choice.res = phi ptr [ %a.load255, %a.after47 ], [ %a.load2214, %a.after206 ]
  ret ptr %choice.res

loop.header.78:                                   ; preds = %loop.latch.78, %choice.then
  %counter.load = load i64, ptr %loop.idx.78, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load17
  br i1 %loop.cond, label %loop.body.78, label %loop.exit.nat.78

loop.body.78:                                     ; preds = %loop.header.78
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.78, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load18 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %str.tag21 = lshr i64 %s.read.len19, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

loop.exit.nat.78:                                 ; preds = %loop.header.78
  br label %loop.exit.78

loop.latch.78:                                    ; preds = %a.store
  %step.val = load i64, ptr %loop.step.78, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.78, align 8
  br label %loop.header.78

loop.exit.78:                                     ; preds = %loop.exit.nat.78
  %var.load43 = load ptr, ptr %var.out, align 8
  %a.load44 = load ptr, ptr %var.out, align 8
  %a.null45 = icmp eq ptr %a.load44, null
  br i1 %a.null45, label %a.create46, label %a.after47

str_gen_check23:                                  ; preds = %loop.body.78
  %arena.cur26 = call ptr @dva_arena_current()
  %tag.valid27 = call i1 @dva_arena_validate_tag(ptr %arena.cur26, i64 %str.tag21)
  br i1 %tag.valid27, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %loop.body.78
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 1
  %s.read.data28 = load ptr, ptr %s.read.data, align 8
  %var.load29 = load i64, ptr %var.i, align 8
  %var.load30 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load30, 1
  %start.is_neg = icmp slt i64 %var.load29, 0
  %rel.start = add i64 %s.read.len20, %var.load29
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load29
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len20
  %final.start = select i1 %start.gt.len, i64 %s.read.len20, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp, 0
  %rel.end = add i64 %s.read.len20, %addtmp
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len20
  %final.end = select i1 %end.gt.len, i64 %s.read.len20, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data28, i64 %final.start
  %arena.cur31 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %a.load = load ptr, ptr %var.out, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

str_stale25:                                      ; preds = %str_gen_check23
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok24

a.create:                                         ; preds = %str_ok24
  %arena.cur32 = call ptr @dva_arena_current()
  %a.create33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 24)
  %arena.cur34 = call ptr @dva_arena_current()
  %a.buf35 = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 128)
  %a.len.gep36 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create33, i32 0, i32 0
  store i64 0, ptr %a.len.gep36, align 8
  %a.data.gep37 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create33, i32 0, i32 1
  store ptr %a.buf35, ptr %a.data.gep37, align 8
  %a.cap.gep38 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create33, i32 0, i32 2
  store i64 16, ptr %a.cap.gep38, align 8
  store ptr %a.create33, ptr %var.out, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %str_ok24
  %a.load2 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len39 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap40 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len39, %a.cap40
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data41 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len42 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data41, i64 %a.cur.len42
  %slot.p2i = ptrtoint ptr %str.view to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len42, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.78

a.create46:                                       ; preds = %loop.exit.78
  %arena.cur48 = call ptr @dva_arena_current()
  %a.create49 = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 24)
  %arena.cur50 = call ptr @dva_arena_current()
  %a.buf51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 128)
  %a.len.gep52 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create49, i32 0, i32 0
  store i64 0, ptr %a.len.gep52, align 8
  %a.data.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create49, i32 0, i32 1
  store ptr %a.buf51, ptr %a.data.gep53, align 8
  %a.cap.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create49, i32 0, i32 2
  store i64 16, ptr %a.cap.gep54, align 8
  store ptr %a.create49, ptr %var.out, align 8
  br label %a.after47

a.after47:                                        ; preds = %a.create46, %loop.exit.78
  %a.load255 = load ptr, ptr %var.out, align 8
  br label %choice.exit

loop.header.79:                                   ; preds = %loop.latch.79, %choice.else
  %counter.load56 = load i64, ptr %loop.idx.79, align 8
  br label %loop.body.79

loop.body.79:                                     ; preds = %loop.header.79
  %loop.rel.i57 = sub i64 %counter.load56, 0
  store i64 1, ptr %loop.step.79, align 8
  store i64 %loop.rel.i57, ptr %var._i58, align 8
  store i64 %counter.load56, ptr %var._59, align 8
  %var.load60 = load ptr, ptr %var.s, align 8
  %var.load61 = load ptr, ptr %var.sep, align 8
  %var.load62 = load i64, ptr %"var.pos'", align 8
  %call.res = call { i1, i64 } @"str::find_from"(ptr %var.load60, ptr %var.load61, i64 %var.load62)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then63, label %choice.else64

loop.exit.nat.79:                                 ; No predecessors!
  br label %loop.exit.79

loop.latch.79:                                    ; preds = %choice.exit65
  %step.val200 = load i64, ptr %loop.step.79, align 8
  %loop.next201 = add i64 %counter.load56, %step.val200
  store i64 %loop.next201, ptr %loop.idx.79, align 8
  br label %loop.header.79

loop.exit.79:                                     ; preds = %a.store186, %loop.exit.nat.79
  %var.load202 = load ptr, ptr %var.out, align 8
  %a.load203 = load ptr, ptr %var.out, align 8
  %a.null204 = icmp eq ptr %a.load203, null
  br i1 %a.null204, label %a.create205, label %a.after206

choice.then63:                                    ; preds = %loop.body.79
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._66, align 8
  store i64 %ram.pay, ptr %var.idx, align 8
  %var.load67 = load ptr, ptr %var.s, align 8
  %s.read.len68 = getelementptr inbounds { i64, ptr }, ptr %var.load67, i32 0, i32 0
  %s.read.len69 = load i64, ptr %s.read.len68, align 8
  %s.read.len70 = and i64 %s.read.len69, 281474976710655
  %str.tag71 = lshr i64 %s.read.len69, 48
  %str.immortal72 = icmp eq i64 %str.tag71, 0
  br i1 %str.immortal72, label %str_ok74, label %str_gen_check73

choice.else64:                                    ; preds = %loop.body.79
  %var.load135 = load ptr, ptr %var.s, align 8
  %s.read.len136 = getelementptr inbounds { i64, ptr }, ptr %var.load135, i32 0, i32 0
  %s.read.len137 = load i64, ptr %s.read.len136, align 8
  %s.read.len138 = and i64 %s.read.len137, 281474976710655
  %str.tag139 = lshr i64 %s.read.len137, 48
  %str.immortal140 = icmp eq i64 %str.tag139, 0
  br i1 %str.immortal140, label %str_ok142, label %str_gen_check141

choice.exit65:                                    ; preds = %a.store118
  br label %loop.latch.79

str_gen_check73:                                  ; preds = %choice.then63
  %arena.cur76 = call ptr @dva_arena_current()
  %tag.valid77 = call i1 @dva_arena_validate_tag(ptr %arena.cur76, i64 %str.tag71)
  br i1 %tag.valid77, label %str_ok74, label %str_stale75

str_ok74:                                         ; preds = %str_stale75, %str_gen_check73, %choice.then63
  %s.read.data78 = getelementptr inbounds { i64, ptr }, ptr %var.load67, i32 0, i32 1
  %s.read.data79 = load ptr, ptr %s.read.data78, align 8
  %var.load80 = load i64, ptr %"var.pos'", align 8
  %var.load81 = load i64, ptr %var.idx, align 8
  %start.is_neg82 = icmp slt i64 %var.load80, 0
  %rel.start83 = add i64 %s.read.len70, %var.load80
  %norm.start84 = select i1 %start.is_neg82, i64 %rel.start83, i64 %var.load80
  %start.lt.085 = icmp slt i64 %norm.start84, 0
  %c.start.086 = select i1 %start.lt.085, i64 0, i64 %norm.start84
  %start.gt.len87 = icmp sgt i64 %c.start.086, %s.read.len70
  %final.start88 = select i1 %start.gt.len87, i64 %s.read.len70, i64 %c.start.086
  %end.is_neg89 = icmp slt i64 %var.load81, 0
  %rel.end90 = add i64 %s.read.len70, %var.load81
  %norm.end91 = select i1 %end.is_neg89, i64 %rel.end90, i64 %var.load81
  %end.lt.092 = icmp slt i64 %norm.end91, 0
  %c.end.093 = select i1 %end.lt.092, i64 0, i64 %norm.end91
  %end.gt.len94 = icmp sgt i64 %c.end.093, %s.read.len70
  %final.end95 = select i1 %end.gt.len94, i64 %s.read.len70, i64 %c.end.093
  %view.empty96 = icmp sle i64 %final.end95, %final.start88
  %view.len.sub97 = sub i64 %final.end95, %final.start88
  %view.len98 = select i1 %view.empty96, i64 0, i64 %view.len.sub97
  %view.data99 = getelementptr i8, ptr %s.read.data79, i64 %final.start88
  %arena.cur100 = call ptr @dva_arena_current()
  %str.view101 = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 16)
  %str.build.len.gep102 = getelementptr inbounds { i64, ptr }, ptr %str.view101, i32 0, i32 0
  store i64 %view.len98, ptr %str.build.len.gep102, align 8
  %str.build.data.gep103 = getelementptr inbounds { i64, ptr }, ptr %str.view101, i32 0, i32 1
  store ptr %view.data99, ptr %str.build.data.gep103, align 8
  %a.load104 = load ptr, ptr %var.out, align 8
  %a.null105 = icmp eq ptr %a.load104, null
  br i1 %a.null105, label %a.create106, label %a.after107

str_stale75:                                      ; preds = %str_gen_check73
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok74

a.create106:                                      ; preds = %str_ok74
  %arena.cur108 = call ptr @dva_arena_current()
  %a.create109 = call ptr @dva_arena_alloc(ptr %arena.cur108, i64 24)
  %arena.cur110 = call ptr @dva_arena_current()
  %a.buf111 = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 128)
  %a.len.gep112 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create109, i32 0, i32 0
  store i64 0, ptr %a.len.gep112, align 8
  %a.data.gep113 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create109, i32 0, i32 1
  store ptr %a.buf111, ptr %a.data.gep113, align 8
  %a.cap.gep114 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create109, i32 0, i32 2
  store i64 16, ptr %a.cap.gep114, align 8
  store ptr %a.create109, ptr %var.out, align 8
  br label %a.after107

a.after107:                                       ; preds = %a.create106, %str_ok74
  %a.load2115 = load ptr, ptr %var.out, align 8
  br label %a.check116

a.check116:                                       ; preds = %a.after107
  %a.len119 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2115, i32 0, i32 0
  %a.len120 = load i64, ptr %a.len119, align 8
  %a.cap121 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2115, i32 0, i32 2
  %a.cap122 = load i64, ptr %a.cap121, align 8
  %a.needs.grow123 = icmp eq i64 %a.len120, %a.cap122
  br i1 %a.needs.grow123, label %a.grow117, label %a.store118

a.grow117:                                        ; preds = %a.check116
  call void @dva_array_grow(ptr %a.load2115)
  br label %a.store118

a.store118:                                       ; preds = %a.grow117, %a.check116
  %a.cur.data124 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2115, i32 0, i32 1
  %a.cur.data125 = load ptr, ptr %a.cur.data124, align 8
  %a.cur.len126 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2115, i32 0, i32 0
  %a.cur.len127 = load i64, ptr %a.cur.len126, align 8
  %a.elem.gep128 = getelementptr i64, ptr %a.cur.data125, i64 %a.cur.len127
  %slot.p2i129 = ptrtoint ptr %str.view101 to i64
  store i64 %slot.p2i129, ptr %a.elem.gep128, align 8
  %a.next.len130 = add i64 %a.cur.len127, 1
  %b.len.gep131 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2115, i32 0, i32 0
  store i64 %a.next.len130, ptr %b.len.gep131, align 8
  %var.load132 = load i64, ptr %var.idx, align 8
  %var.load133 = load i64, ptr %var.lsep, align 8
  %addtmp134 = add i64 %var.load132, %var.load133
  store i64 %addtmp134, ptr %"var.pos'", align 8
  br label %choice.exit65

str_gen_check141:                                 ; preds = %choice.else64
  %arena.cur144 = call ptr @dva_arena_current()
  %tag.valid145 = call i1 @dva_arena_validate_tag(ptr %arena.cur144, i64 %str.tag139)
  br i1 %tag.valid145, label %str_ok142, label %str_stale143

str_ok142:                                        ; preds = %str_stale143, %str_gen_check141, %choice.else64
  %s.read.data146 = getelementptr inbounds { i64, ptr }, ptr %var.load135, i32 0, i32 1
  %s.read.data147 = load ptr, ptr %s.read.data146, align 8
  %var.load148 = load i64, ptr %"var.pos'", align 8
  %var.load149 = load i64, ptr %var.ls, align 8
  %start.is_neg150 = icmp slt i64 %var.load148, 0
  %rel.start151 = add i64 %s.read.len138, %var.load148
  %norm.start152 = select i1 %start.is_neg150, i64 %rel.start151, i64 %var.load148
  %start.lt.0153 = icmp slt i64 %norm.start152, 0
  %c.start.0154 = select i1 %start.lt.0153, i64 0, i64 %norm.start152
  %start.gt.len155 = icmp sgt i64 %c.start.0154, %s.read.len138
  %final.start156 = select i1 %start.gt.len155, i64 %s.read.len138, i64 %c.start.0154
  %end.is_neg157 = icmp slt i64 %var.load149, 0
  %rel.end158 = add i64 %s.read.len138, %var.load149
  %norm.end159 = select i1 %end.is_neg157, i64 %rel.end158, i64 %var.load149
  %end.lt.0160 = icmp slt i64 %norm.end159, 0
  %c.end.0161 = select i1 %end.lt.0160, i64 0, i64 %norm.end159
  %end.gt.len162 = icmp sgt i64 %c.end.0161, %s.read.len138
  %final.end163 = select i1 %end.gt.len162, i64 %s.read.len138, i64 %c.end.0161
  %view.empty164 = icmp sle i64 %final.end163, %final.start156
  %view.len.sub165 = sub i64 %final.end163, %final.start156
  %view.len166 = select i1 %view.empty164, i64 0, i64 %view.len.sub165
  %view.data167 = getelementptr i8, ptr %s.read.data147, i64 %final.start156
  %arena.cur168 = call ptr @dva_arena_current()
  %str.view169 = call ptr @dva_arena_alloc(ptr %arena.cur168, i64 16)
  %str.build.len.gep170 = getelementptr inbounds { i64, ptr }, ptr %str.view169, i32 0, i32 0
  store i64 %view.len166, ptr %str.build.len.gep170, align 8
  %str.build.data.gep171 = getelementptr inbounds { i64, ptr }, ptr %str.view169, i32 0, i32 1
  store ptr %view.data167, ptr %str.build.data.gep171, align 8
  %a.load172 = load ptr, ptr %var.out, align 8
  %a.null173 = icmp eq ptr %a.load172, null
  br i1 %a.null173, label %a.create174, label %a.after175

str_stale143:                                     ; preds = %str_gen_check141
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok142

a.create174:                                      ; preds = %str_ok142
  %arena.cur176 = call ptr @dva_arena_current()
  %a.create177 = call ptr @dva_arena_alloc(ptr %arena.cur176, i64 24)
  %arena.cur178 = call ptr @dva_arena_current()
  %a.buf179 = call ptr @dva_arena_alloc(ptr %arena.cur178, i64 128)
  %a.len.gep180 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create177, i32 0, i32 0
  store i64 0, ptr %a.len.gep180, align 8
  %a.data.gep181 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create177, i32 0, i32 1
  store ptr %a.buf179, ptr %a.data.gep181, align 8
  %a.cap.gep182 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create177, i32 0, i32 2
  store i64 16, ptr %a.cap.gep182, align 8
  store ptr %a.create177, ptr %var.out, align 8
  br label %a.after175

a.after175:                                       ; preds = %a.create174, %str_ok142
  %a.load2183 = load ptr, ptr %var.out, align 8
  br label %a.check184

a.check184:                                       ; preds = %a.after175
  %a.len187 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2183, i32 0, i32 0
  %a.len188 = load i64, ptr %a.len187, align 8
  %a.cap189 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2183, i32 0, i32 2
  %a.cap190 = load i64, ptr %a.cap189, align 8
  %a.needs.grow191 = icmp eq i64 %a.len188, %a.cap190
  br i1 %a.needs.grow191, label %a.grow185, label %a.store186

a.grow185:                                        ; preds = %a.check184
  call void @dva_array_grow(ptr %a.load2183)
  br label %a.store186

a.store186:                                       ; preds = %a.grow185, %a.check184
  %a.cur.data192 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2183, i32 0, i32 1
  %a.cur.data193 = load ptr, ptr %a.cur.data192, align 8
  %a.cur.len194 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2183, i32 0, i32 0
  %a.cur.len195 = load i64, ptr %a.cur.len194, align 8
  %a.elem.gep196 = getelementptr i64, ptr %a.cur.data193, i64 %a.cur.len195
  %slot.p2i197 = ptrtoint ptr %str.view169 to i64
  store i64 %slot.p2i197, ptr %a.elem.gep196, align 8
  %a.next.len198 = add i64 %a.cur.len195, 1
  %b.len.gep199 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2183, i32 0, i32 0
  store i64 %a.next.len198, ptr %b.len.gep199, align 8
  br label %loop.exit.79

a.create205:                                      ; preds = %loop.exit.79
  %arena.cur207 = call ptr @dva_arena_current()
  %a.create208 = call ptr @dva_arena_alloc(ptr %arena.cur207, i64 24)
  %arena.cur209 = call ptr @dva_arena_current()
  %a.buf210 = call ptr @dva_arena_alloc(ptr %arena.cur209, i64 128)
  %a.len.gep211 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create208, i32 0, i32 0
  store i64 0, ptr %a.len.gep211, align 8
  %a.data.gep212 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create208, i32 0, i32 1
  store ptr %a.buf210, ptr %a.data.gep212, align 8
  %a.cap.gep213 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create208, i32 0, i32 2
  store i64 16, ptr %a.cap.gep213, align 8
  store ptr %a.create208, ptr %var.out, align 8
  br label %a.after206

a.after206:                                       ; preds = %a.create205, %loop.exit.79
  %a.load2214 = load ptr, ptr %var.out, align 8
  br label %choice.exit
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

define ptr @"str::lines"(ptr %0) #1 {
entry:
  %var.end133 = alloca i64, align 8
  %var.end = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.80 = alloca i64, align 8
  %loop.idx.80 = alloca i64, align 8
  %"var.start'" = alloca i64, align 8
  %var.ls = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
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
  store ptr %a.new, ptr %var.out, align 8
  %var.load = load ptr, ptr %var.s, align 8
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
  store i64 %str.len.query3, ptr %var.ls, align 8
  %var.load5 = load i64, ptr %var.ls, align 8
  %cmptmp = icmp eq i64 %var.load5, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load6 = load ptr, ptr %var.out, align 8
  %a.load = load ptr, ptr %var.out, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %ret.dead, %str_ok
  store i64 0, ptr %"var.start'", align 8
  %var.load14 = load i64, ptr %var.ls, align 8
  store i64 0, ptr %loop.idx.80, align 8
  br label %loop.header.80

a.create:                                         ; preds = %choice.then
  %arena.cur7 = call ptr @dva_arena_current()
  %a.create8 = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 24)
  %arena.cur9 = call ptr @dva_arena_current()
  %a.buf10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 128)
  %a.len.gep11 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create8, i32 0, i32 0
  store i64 0, ptr %a.len.gep11, align 8
  %a.data.gep12 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create8, i32 0, i32 1
  store ptr %a.buf10, ptr %a.data.gep12, align 8
  %a.cap.gep13 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create8, i32 0, i32 2
  store i64 16, ptr %a.cap.gep13, align 8
  store ptr %a.create8, ptr %var.out, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.out, align 8
  ret ptr %a.load2

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.80:                                   ; preds = %loop.latch.80, %choice.exit
  %counter.load = load i64, ptr %loop.idx.80, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load14
  br i1 %loop.cond, label %loop.body.80, label %loop.exit.nat.80

loop.body.80:                                     ; preds = %loop.header.80
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.80, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load15 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 0
  %s.read.len16 = load i64, ptr %s.read.len, align 8
  %s.read.len17 = and i64 %s.read.len16, 281474976710655
  %str.tag18 = lshr i64 %s.read.len16, 48
  %str.immortal19 = icmp eq i64 %str.tag18, 0
  br i1 %str.immortal19, label %str_ok21, label %str_gen_check20

loop.exit.nat.80:                                 ; preds = %loop.header.80
  br label %loop.exit.80

loop.latch.80:                                    ; preds = %choice.exit29
  %step.val = load i64, ptr %loop.step.80, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.80, align 8
  br label %loop.header.80

loop.exit.80:                                     ; preds = %loop.exit.nat.80
  %var.load94 = load i64, ptr %"var.start'", align 8
  %var.load95 = load i64, ptr %var.ls, align 8
  %cmptmp96 = icmp slt i64 %var.load94, %var.load95
  br i1 %cmptmp96, label %choice.then97, label %choice.exit98

str_gen_check20:                                  ; preds = %loop.body.80
  %arena.cur23 = call ptr @dva_arena_current()
  %tag.valid24 = call i1 @dva_arena_validate_tag(ptr %arena.cur23, i64 %str.tag18)
  br i1 %tag.valid24, label %str_ok21, label %str_stale22

str_ok21:                                         ; preds = %str_stale22, %str_gen_check20, %loop.body.80
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 1
  %s.read.data25 = load ptr, ptr %s.read.data, align 8
  %var.load26 = load i64, ptr %var.i, align 8
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
  br i1 %cmptmp27, label %choice.then28, label %choice.exit29

idx_oob:                                          ; preds = %idx_big_check, %str_ok21
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then28:                                    ; preds = %idx_ok
  %var.load30 = load i64, ptr %var.i, align 8
  %var.load31 = load i64, ptr %"var.start'", align 8
  %cmptmp32 = icmp sgt i64 %var.load30, %var.load31
  br i1 %cmptmp32, label %and.81.then, label %and.81.else

choice.exit29:                                    ; preds = %a.store, %idx_ok
  br label %loop.latch.80

and.81.then:                                      ; preds = %choice.then28
  %var.load33 = load ptr, ptr %var.s, align 8
  %s.read.len34 = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 0
  %s.read.len35 = load i64, ptr %s.read.len34, align 8
  %s.read.len36 = and i64 %s.read.len35, 281474976710655
  %str.tag37 = lshr i64 %s.read.len35, 48
  %str.immortal38 = icmp eq i64 %str.tag37, 0
  br i1 %str.immortal38, label %str_ok40, label %str_gen_check39

and.81.else:                                      ; preds = %choice.then28
  br label %and.81.exit

and.81.exit:                                      ; preds = %and.81.else, %idx_ok49
  %and.81.phi = phi i1 [ %cmptmp55, %idx_ok49 ], [ %cmptmp32, %and.81.else ]
  br i1 %and.81.phi, label %choice.then56, label %choice.else

str_gen_check39:                                  ; preds = %and.81.then
  %arena.cur42 = call ptr @dva_arena_current()
  %tag.valid43 = call i1 @dva_arena_validate_tag(ptr %arena.cur42, i64 %str.tag37)
  br i1 %tag.valid43, label %str_ok40, label %str_stale41

str_ok40:                                         ; preds = %str_stale41, %str_gen_check39, %and.81.then
  %s.read.data44 = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 1
  %s.read.data45 = load ptr, ptr %s.read.data44, align 8
  %var.load46 = load i64, ptr %var.i, align 8
  %subtmp = sub i64 %var.load46, 1
  %idx.neg47 = icmp slt i64 %subtmp, 0
  br i1 %idx.neg47, label %idx_oob50, label %idx_big_check48

str_stale41:                                      ; preds = %str_gen_check39
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok40

idx_big_check48:                                  ; preds = %str_ok40
  %idx.big51 = icmp sge i64 %subtmp, %s.read.len36
  br i1 %idx.big51, label %idx_oob50, label %idx_ok49

idx_ok49:                                         ; preds = %idx_oob50, %idx_big_check48
  %s.byte.gep52 = getelementptr i8, ptr %s.read.data45, i64 %subtmp
  %s.byte53 = load i8, ptr %s.byte.gep52, align 1
  %s.byte.val54 = zext i8 %s.byte53 to i64
  %cmptmp55 = icmp eq i64 %s.byte.val54, 13
  br label %and.81.exit

idx_oob50:                                        ; preds = %idx_big_check48, %str_ok40
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok49

choice.then56:                                    ; preds = %and.81.exit
  %var.load58 = load i64, ptr %var.i, align 8
  %subtmp59 = sub i64 %var.load58, 1
  br label %choice.exit57

choice.else:                                      ; preds = %and.81.exit
  %var.load60 = load i64, ptr %var.i, align 8
  br label %choice.exit57

choice.exit57:                                    ; preds = %choice.else, %choice.then56
  %choice.res = phi i64 [ %subtmp59, %choice.then56 ], [ %var.load60, %choice.else ]
  store i64 %choice.res, ptr %var.end, align 8
  %var.load61 = load ptr, ptr %var.s, align 8
  %s.read.len62 = getelementptr inbounds { i64, ptr }, ptr %var.load61, i32 0, i32 0
  %s.read.len63 = load i64, ptr %s.read.len62, align 8
  %s.read.len64 = and i64 %s.read.len63, 281474976710655
  %str.tag65 = lshr i64 %s.read.len63, 48
  %str.immortal66 = icmp eq i64 %str.tag65, 0
  br i1 %str.immortal66, label %str_ok68, label %str_gen_check67

str_gen_check67:                                  ; preds = %choice.exit57
  %arena.cur70 = call ptr @dva_arena_current()
  %tag.valid71 = call i1 @dva_arena_validate_tag(ptr %arena.cur70, i64 %str.tag65)
  br i1 %tag.valid71, label %str_ok68, label %str_stale69

str_ok68:                                         ; preds = %str_stale69, %str_gen_check67, %choice.exit57
  %s.read.data72 = getelementptr inbounds { i64, ptr }, ptr %var.load61, i32 0, i32 1
  %s.read.data73 = load ptr, ptr %s.read.data72, align 8
  %var.load74 = load i64, ptr %"var.start'", align 8
  %var.load75 = load i64, ptr %var.end, align 8
  %start.is_neg = icmp slt i64 %var.load74, 0
  %rel.start = add i64 %s.read.len64, %var.load74
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load74
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len64
  %final.start = select i1 %start.gt.len, i64 %s.read.len64, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load75, 0
  %rel.end = add i64 %s.read.len64, %var.load75
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load75
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len64
  %final.end = select i1 %end.gt.len, i64 %s.read.len64, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data73, i64 %final.start
  %arena.cur76 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %a.load77 = load ptr, ptr %var.out, align 8
  %a.null78 = icmp eq ptr %a.load77, null
  br i1 %a.null78, label %a.create79, label %a.after80

str_stale69:                                      ; preds = %str_gen_check67
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok68

a.create79:                                       ; preds = %str_ok68
  %arena.cur81 = call ptr @dva_arena_current()
  %a.create82 = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 24)
  %arena.cur83 = call ptr @dva_arena_current()
  %a.buf84 = call ptr @dva_arena_alloc(ptr %arena.cur83, i64 128)
  %a.len.gep85 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create82, i32 0, i32 0
  store i64 0, ptr %a.len.gep85, align 8
  %a.data.gep86 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create82, i32 0, i32 1
  store ptr %a.buf84, ptr %a.data.gep86, align 8
  %a.cap.gep87 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create82, i32 0, i32 2
  store i64 16, ptr %a.cap.gep87, align 8
  store ptr %a.create82, ptr %var.out, align 8
  br label %a.after80

a.after80:                                        ; preds = %a.create79, %str_ok68
  %a.load288 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after80
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load288, i32 0, i32 0
  %a.len89 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load288, i32 0, i32 2
  %a.cap90 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len89, %a.cap90
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load288)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load288, i32 0, i32 1
  %a.cur.data91 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load288, i32 0, i32 0
  %a.cur.len92 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data91, i64 %a.cur.len92
  %slot.p2i = ptrtoint ptr %str.view to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len92, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load288, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load93 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load93, 1
  store i64 %addtmp, ptr %"var.start'", align 8
  br label %choice.exit29

choice.then97:                                    ; preds = %loop.exit.80
  %var.load99 = load i64, ptr %var.ls, align 8
  %var.load100 = load i64, ptr %"var.start'", align 8
  %cmptmp101 = icmp sgt i64 %var.load99, %var.load100
  br i1 %cmptmp101, label %and.82.then, label %and.82.else

choice.exit98:                                    ; preds = %a.store185, %loop.exit.80
  %var.load199 = load ptr, ptr %var.out, align 8
  %a.load200 = load ptr, ptr %var.out, align 8
  %a.null201 = icmp eq ptr %a.load200, null
  br i1 %a.null201, label %a.create202, label %a.after203

and.82.then:                                      ; preds = %choice.then97
  %var.load102 = load ptr, ptr %var.s, align 8
  %s.read.len103 = getelementptr inbounds { i64, ptr }, ptr %var.load102, i32 0, i32 0
  %s.read.len104 = load i64, ptr %s.read.len103, align 8
  %s.read.len105 = and i64 %s.read.len104, 281474976710655
  %str.tag106 = lshr i64 %s.read.len104, 48
  %str.immortal107 = icmp eq i64 %str.tag106, 0
  br i1 %str.immortal107, label %str_ok109, label %str_gen_check108

and.82.else:                                      ; preds = %choice.then97
  br label %and.82.exit

and.82.exit:                                      ; preds = %and.82.else, %idx_ok119
  %and.82.phi = phi i1 [ %cmptmp125, %idx_ok119 ], [ %cmptmp101, %and.82.else ]
  br i1 %and.82.phi, label %choice.then126, label %choice.else127

str_gen_check108:                                 ; preds = %and.82.then
  %arena.cur111 = call ptr @dva_arena_current()
  %tag.valid112 = call i1 @dva_arena_validate_tag(ptr %arena.cur111, i64 %str.tag106)
  br i1 %tag.valid112, label %str_ok109, label %str_stale110

str_ok109:                                        ; preds = %str_stale110, %str_gen_check108, %and.82.then
  %s.read.data113 = getelementptr inbounds { i64, ptr }, ptr %var.load102, i32 0, i32 1
  %s.read.data114 = load ptr, ptr %s.read.data113, align 8
  %var.load115 = load i64, ptr %var.ls, align 8
  %subtmp116 = sub i64 %var.load115, 1
  %idx.neg117 = icmp slt i64 %subtmp116, 0
  br i1 %idx.neg117, label %idx_oob120, label %idx_big_check118

str_stale110:                                     ; preds = %str_gen_check108
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok109

idx_big_check118:                                 ; preds = %str_ok109
  %idx.big121 = icmp sge i64 %subtmp116, %s.read.len105
  br i1 %idx.big121, label %idx_oob120, label %idx_ok119

idx_ok119:                                        ; preds = %idx_oob120, %idx_big_check118
  %s.byte.gep122 = getelementptr i8, ptr %s.read.data114, i64 %subtmp116
  %s.byte123 = load i8, ptr %s.byte.gep122, align 1
  %s.byte.val124 = zext i8 %s.byte123 to i64
  %cmptmp125 = icmp eq i64 %s.byte.val124, 13
  br label %and.82.exit

idx_oob120:                                       ; preds = %idx_big_check118, %str_ok109
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok119

choice.then126:                                   ; preds = %and.82.exit
  %var.load129 = load i64, ptr %var.ls, align 8
  %subtmp130 = sub i64 %var.load129, 1
  br label %choice.exit128

choice.else127:                                   ; preds = %and.82.exit
  %var.load131 = load i64, ptr %var.ls, align 8
  br label %choice.exit128

choice.exit128:                                   ; preds = %choice.else127, %choice.then126
  %choice.res132 = phi i64 [ %subtmp130, %choice.then126 ], [ %var.load131, %choice.else127 ]
  store i64 %choice.res132, ptr %var.end133, align 8
  %var.load134 = load ptr, ptr %var.s, align 8
  %s.read.len135 = getelementptr inbounds { i64, ptr }, ptr %var.load134, i32 0, i32 0
  %s.read.len136 = load i64, ptr %s.read.len135, align 8
  %s.read.len137 = and i64 %s.read.len136, 281474976710655
  %str.tag138 = lshr i64 %s.read.len136, 48
  %str.immortal139 = icmp eq i64 %str.tag138, 0
  br i1 %str.immortal139, label %str_ok141, label %str_gen_check140

str_gen_check140:                                 ; preds = %choice.exit128
  %arena.cur143 = call ptr @dva_arena_current()
  %tag.valid144 = call i1 @dva_arena_validate_tag(ptr %arena.cur143, i64 %str.tag138)
  br i1 %tag.valid144, label %str_ok141, label %str_stale142

str_ok141:                                        ; preds = %str_stale142, %str_gen_check140, %choice.exit128
  %s.read.data145 = getelementptr inbounds { i64, ptr }, ptr %var.load134, i32 0, i32 1
  %s.read.data146 = load ptr, ptr %s.read.data145, align 8
  %var.load147 = load i64, ptr %"var.start'", align 8
  %var.load148 = load i64, ptr %var.end133, align 8
  %start.is_neg149 = icmp slt i64 %var.load147, 0
  %rel.start150 = add i64 %s.read.len137, %var.load147
  %norm.start151 = select i1 %start.is_neg149, i64 %rel.start150, i64 %var.load147
  %start.lt.0152 = icmp slt i64 %norm.start151, 0
  %c.start.0153 = select i1 %start.lt.0152, i64 0, i64 %norm.start151
  %start.gt.len154 = icmp sgt i64 %c.start.0153, %s.read.len137
  %final.start155 = select i1 %start.gt.len154, i64 %s.read.len137, i64 %c.start.0153
  %end.is_neg156 = icmp slt i64 %var.load148, 0
  %rel.end157 = add i64 %s.read.len137, %var.load148
  %norm.end158 = select i1 %end.is_neg156, i64 %rel.end157, i64 %var.load148
  %end.lt.0159 = icmp slt i64 %norm.end158, 0
  %c.end.0160 = select i1 %end.lt.0159, i64 0, i64 %norm.end158
  %end.gt.len161 = icmp sgt i64 %c.end.0160, %s.read.len137
  %final.end162 = select i1 %end.gt.len161, i64 %s.read.len137, i64 %c.end.0160
  %view.empty163 = icmp sle i64 %final.end162, %final.start155
  %view.len.sub164 = sub i64 %final.end162, %final.start155
  %view.len165 = select i1 %view.empty163, i64 0, i64 %view.len.sub164
  %view.data166 = getelementptr i8, ptr %s.read.data146, i64 %final.start155
  %arena.cur167 = call ptr @dva_arena_current()
  %str.view168 = call ptr @dva_arena_alloc(ptr %arena.cur167, i64 16)
  %str.build.len.gep169 = getelementptr inbounds { i64, ptr }, ptr %str.view168, i32 0, i32 0
  store i64 %view.len165, ptr %str.build.len.gep169, align 8
  %str.build.data.gep170 = getelementptr inbounds { i64, ptr }, ptr %str.view168, i32 0, i32 1
  store ptr %view.data166, ptr %str.build.data.gep170, align 8
  %a.load171 = load ptr, ptr %var.out, align 8
  %a.null172 = icmp eq ptr %a.load171, null
  br i1 %a.null172, label %a.create173, label %a.after174

str_stale142:                                     ; preds = %str_gen_check140
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok141

a.create173:                                      ; preds = %str_ok141
  %arena.cur175 = call ptr @dva_arena_current()
  %a.create176 = call ptr @dva_arena_alloc(ptr %arena.cur175, i64 24)
  %arena.cur177 = call ptr @dva_arena_current()
  %a.buf178 = call ptr @dva_arena_alloc(ptr %arena.cur177, i64 128)
  %a.len.gep179 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create176, i32 0, i32 0
  store i64 0, ptr %a.len.gep179, align 8
  %a.data.gep180 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create176, i32 0, i32 1
  store ptr %a.buf178, ptr %a.data.gep180, align 8
  %a.cap.gep181 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create176, i32 0, i32 2
  store i64 16, ptr %a.cap.gep181, align 8
  store ptr %a.create176, ptr %var.out, align 8
  br label %a.after174

a.after174:                                       ; preds = %a.create173, %str_ok141
  %a.load2182 = load ptr, ptr %var.out, align 8
  br label %a.check183

a.check183:                                       ; preds = %a.after174
  %a.len186 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2182, i32 0, i32 0
  %a.len187 = load i64, ptr %a.len186, align 8
  %a.cap188 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2182, i32 0, i32 2
  %a.cap189 = load i64, ptr %a.cap188, align 8
  %a.needs.grow190 = icmp eq i64 %a.len187, %a.cap189
  br i1 %a.needs.grow190, label %a.grow184, label %a.store185

a.grow184:                                        ; preds = %a.check183
  call void @dva_array_grow(ptr %a.load2182)
  br label %a.store185

a.store185:                                       ; preds = %a.grow184, %a.check183
  %a.cur.data191 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2182, i32 0, i32 1
  %a.cur.data192 = load ptr, ptr %a.cur.data191, align 8
  %a.cur.len193 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2182, i32 0, i32 0
  %a.cur.len194 = load i64, ptr %a.cur.len193, align 8
  %a.elem.gep195 = getelementptr i64, ptr %a.cur.data192, i64 %a.cur.len194
  %slot.p2i196 = ptrtoint ptr %str.view168 to i64
  store i64 %slot.p2i196, ptr %a.elem.gep195, align 8
  %a.next.len197 = add i64 %a.cur.len194, 1
  %b.len.gep198 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2182, i32 0, i32 0
  store i64 %a.next.len197, ptr %b.len.gep198, align 8
  br label %choice.exit98

a.create202:                                      ; preds = %choice.exit98
  %arena.cur204 = call ptr @dva_arena_current()
  %a.create205 = call ptr @dva_arena_alloc(ptr %arena.cur204, i64 24)
  %arena.cur206 = call ptr @dva_arena_current()
  %a.buf207 = call ptr @dva_arena_alloc(ptr %arena.cur206, i64 128)
  %a.len.gep208 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create205, i32 0, i32 0
  store i64 0, ptr %a.len.gep208, align 8
  %a.data.gep209 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create205, i32 0, i32 1
  store ptr %a.buf207, ptr %a.data.gep209, align 8
  %a.cap.gep210 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create205, i32 0, i32 2
  store i64 16, ptr %a.cap.gep210, align 8
  store ptr %a.create205, ptr %var.out, align 8
  br label %a.after203

a.after203:                                       ; preds = %a.create202, %choice.exit98
  %a.load2211 = load ptr, ptr %var.out, align 8
  ret ptr %a.load2211
}

define ptr @"str::words"(ptr %0) #1 {
entry:
  %var._40 = alloca i64, align 8
  %var._i39 = alloca i64, align 8
  %loop.step.86 = alloca i64, align 8
  %loop.idx.86 = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var._10 = alloca i64, align 8
  %var._i9 = alloca i64, align 8
  %loop.step.84 = alloca i64, align 8
  %loop.idx.84 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.83 = alloca i64, align 8
  %loop.idx.83 = alloca i64, align 8
  %"var.i'" = alloca i64, align 8
  %var.ls = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
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
  store ptr %a.new, ptr %var.out, align 8
  %var.load = load ptr, ptr %var.s, align 8
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
  store i64 %str.len.query3, ptr %var.ls, align 8
  store i64 0, ptr %"var.i'", align 8
  store i64 0, ptr %loop.idx.83, align 8
  br label %loop.header.83

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.83:                                   ; preds = %loop.latch.83, %str_ok
  %counter.load = load i64, ptr %loop.idx.83, align 8
  br label %loop.body.83

loop.body.83:                                     ; preds = %loop.header.83
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.83, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load5 = load i64, ptr %"var.i'", align 8
  %var.load6 = load i64, ptr %var.ls, align 8
  %cmptmp = icmp sge i64 %var.load5, %var.load6
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.83:                                 ; No predecessors!
  br label %loop.exit.83

loop.latch.83:                                    ; preds = %a.store
  %step.val101 = load i64, ptr %loop.step.83, align 8
  %loop.next102 = add i64 %counter.load, %step.val101
  store i64 %loop.next102, ptr %loop.idx.83, align 8
  br label %loop.header.83

loop.exit.83:                                     ; preds = %choice.then32, %choice.then, %loop.exit.nat.83
  %var.load103 = load ptr, ptr %var.out, align 8
  %a.load104 = load ptr, ptr %var.out, align 8
  %a.null105 = icmp eq ptr %a.load104, null
  br i1 %a.null105, label %a.create106, label %a.after107

choice.then:                                      ; preds = %loop.body.83
  br label %loop.exit.83

choice.exit:                                      ; preds = %loop.body.83
  store i64 0, ptr %loop.idx.84, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.84

loop.header.84:                                   ; preds = %loop.latch.84, %choice.exit
  %counter.load7 = load i64, ptr %loop.idx.84, align 8
  br label %loop.body.84

loop.body.84:                                     ; preds = %loop.header.84
  %loop.rel.i8 = sub i64 %counter.load7, 0
  store i64 1, ptr %loop.step.84, align 8
  store i64 %loop.rel.i8, ptr %var._i9, align 8
  store i64 %counter.load7, ptr %var._10, align 8
  %var.load11 = load i64, ptr %"var.i'", align 8
  %var.load12 = load i64, ptr %var.ls, align 8
  %cmptmp13 = icmp slt i64 %var.load11, %var.load12
  br i1 %cmptmp13, label %and.85.then, label %and.85.else

loop.exit.nat.84:                                 ; No predecessors!
  br label %loop.exit.84

loop.latch.84:                                    ; preds = %choice.exit27
  %step.val = load i64, ptr %loop.step.84, align 8
  %loop.next = add i64 %counter.load7, %step.val
  store i64 %loop.next, ptr %loop.idx.84, align 8
  br label %loop.header.84

loop.exit.84:                                     ; preds = %choice.else, %loop.exit.nat.84
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load29 = load i64, ptr %"var.i'", align 8
  %var.load30 = load i64, ptr %var.ls, align 8
  %cmptmp31 = icmp sge i64 %var.load29, %var.load30
  br i1 %cmptmp31, label %choice.then32, label %choice.exit33

and.85.then:                                      ; preds = %loop.body.84
  %var.load14 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %s.read.len15 = load i64, ptr %s.read.len, align 8
  %s.read.len16 = and i64 %s.read.len15, 281474976710655
  %str.tag17 = lshr i64 %s.read.len15, 48
  %str.immortal18 = icmp eq i64 %str.tag17, 0
  br i1 %str.immortal18, label %str_ok20, label %str_gen_check19

and.85.else:                                      ; preds = %loop.body.84
  br label %and.85.exit

and.85.exit:                                      ; preds = %and.85.else, %idx_ok
  %and.85.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp13, %and.85.else ]
  br i1 %and.85.phi, label %choice.then26, label %choice.else

str_gen_check19:                                  ; preds = %and.85.then
  %arena.cur22 = call ptr @dva_arena_current()
  %tag.valid23 = call i1 @dva_arena_validate_tag(ptr %arena.cur22, i64 %str.tag17)
  br i1 %tag.valid23, label %str_ok20, label %str_stale21

str_ok20:                                         ; preds = %str_stale21, %str_gen_check19, %and.85.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 1
  %s.read.data24 = load ptr, ptr %s.read.data, align 8
  %var.load25 = load i64, ptr %"var.i'", align 8
  %idx.neg = icmp slt i64 %var.load25, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale21:                                      ; preds = %str_gen_check19
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok20

idx_big_check:                                    ; preds = %str_ok20
  %idx.big = icmp sge i64 %var.load25, %s.read.len16
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data24, i64 %var.load25
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  br label %and.85.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok20
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then26:                                    ; preds = %and.85.exit
  %var.load28 = load i64, ptr %"var.i'", align 8
  %addtmp = add i64 %var.load28, 1
  store i64 %addtmp, ptr %"var.i'", align 8
  br label %choice.exit27

choice.else:                                      ; preds = %and.85.exit
  br label %loop.exit.84

choice.exit27:                                    ; preds = %choice.then26
  br label %loop.latch.84

choice.then32:                                    ; preds = %loop.exit.84
  br label %loop.exit.83

choice.exit33:                                    ; preds = %loop.exit.84
  %var.load34 = load i64, ptr %"var.i'", align 8
  store i64 %var.load34, ptr %var.start, align 8
  store i64 0, ptr %loop.idx.86, align 8
  %cycle.prev.u35 = load i64, ptr %var._, align 8
  %cycle.prev.i36 = load i64, ptr %var._i, align 8
  br label %loop.header.86

loop.header.86:                                   ; preds = %loop.latch.86, %choice.exit33
  %counter.load37 = load i64, ptr %loop.idx.86, align 8
  br label %loop.body.86

loop.body.86:                                     ; preds = %loop.header.86
  %loop.rel.i38 = sub i64 %counter.load37, 0
  store i64 1, ptr %loop.step.86, align 8
  store i64 %loop.rel.i38, ptr %var._i39, align 8
  store i64 %counter.load37, ptr %var._40, align 8
  %var.load41 = load i64, ptr %"var.i'", align 8
  %var.load42 = load i64, ptr %var.ls, align 8
  %cmptmp43 = icmp slt i64 %var.load41, %var.load42
  br i1 %cmptmp43, label %and.87.then, label %and.87.else

loop.exit.nat.86:                                 ; No predecessors!
  br label %loop.exit.86

loop.latch.86:                                    ; preds = %choice.exit69
  %step.val72 = load i64, ptr %loop.step.86, align 8
  %loop.next73 = add i64 %counter.load37, %step.val72
  store i64 %loop.next73, ptr %loop.idx.86, align 8
  br label %loop.header.86

loop.exit.86:                                     ; preds = %choice.else68, %loop.exit.nat.86
  store i64 %cycle.prev.u35, ptr %var._, align 8
  store i64 %cycle.prev.i36, ptr %var._i, align 8
  %var.load74 = load ptr, ptr %var.s, align 8
  %s.read.len75 = getelementptr inbounds { i64, ptr }, ptr %var.load74, i32 0, i32 0
  %s.read.len76 = load i64, ptr %s.read.len75, align 8
  %s.read.len77 = and i64 %s.read.len76, 281474976710655
  %str.tag78 = lshr i64 %s.read.len76, 48
  %str.immortal79 = icmp eq i64 %str.tag78, 0
  br i1 %str.immortal79, label %str_ok81, label %str_gen_check80

and.87.then:                                      ; preds = %loop.body.86
  %var.load44 = load ptr, ptr %var.s, align 8
  %s.read.len45 = getelementptr inbounds { i64, ptr }, ptr %var.load44, i32 0, i32 0
  %s.read.len46 = load i64, ptr %s.read.len45, align 8
  %s.read.len47 = and i64 %s.read.len46, 281474976710655
  %str.tag48 = lshr i64 %s.read.len46, 48
  %str.immortal49 = icmp eq i64 %str.tag48, 0
  br i1 %str.immortal49, label %str_ok51, label %str_gen_check50

and.87.else:                                      ; preds = %loop.body.86
  br label %and.87.exit

and.87.exit:                                      ; preds = %and.87.else, %idx_ok60
  %and.87.phi = phi i1 [ %nottmp, %idx_ok60 ], [ %cmptmp43, %and.87.else ]
  br i1 %and.87.phi, label %choice.then67, label %choice.else68

str_gen_check50:                                  ; preds = %and.87.then
  %arena.cur53 = call ptr @dva_arena_current()
  %tag.valid54 = call i1 @dva_arena_validate_tag(ptr %arena.cur53, i64 %str.tag48)
  br i1 %tag.valid54, label %str_ok51, label %str_stale52

str_ok51:                                         ; preds = %str_stale52, %str_gen_check50, %and.87.then
  %s.read.data55 = getelementptr inbounds { i64, ptr }, ptr %var.load44, i32 0, i32 1
  %s.read.data56 = load ptr, ptr %s.read.data55, align 8
  %var.load57 = load i64, ptr %"var.i'", align 8
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
  %call.res66 = call i1 @"str::is_ws"(i64 %s.byte.val65)
  %nottmp = xor i1 %call.res66, true
  br label %and.87.exit

idx_oob61:                                        ; preds = %idx_big_check59, %str_ok51
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok60

choice.then67:                                    ; preds = %and.87.exit
  %var.load70 = load i64, ptr %"var.i'", align 8
  %addtmp71 = add i64 %var.load70, 1
  store i64 %addtmp71, ptr %"var.i'", align 8
  br label %choice.exit69

choice.else68:                                    ; preds = %and.87.exit
  br label %loop.exit.86

choice.exit69:                                    ; preds = %choice.then67
  br label %loop.latch.86

str_gen_check80:                                  ; preds = %loop.exit.86
  %arena.cur83 = call ptr @dva_arena_current()
  %tag.valid84 = call i1 @dva_arena_validate_tag(ptr %arena.cur83, i64 %str.tag78)
  br i1 %tag.valid84, label %str_ok81, label %str_stale82

str_ok81:                                         ; preds = %str_stale82, %str_gen_check80, %loop.exit.86
  %s.read.data85 = getelementptr inbounds { i64, ptr }, ptr %var.load74, i32 0, i32 1
  %s.read.data86 = load ptr, ptr %s.read.data85, align 8
  %var.load87 = load i64, ptr %var.start, align 8
  %var.load88 = load i64, ptr %"var.i'", align 8
  %start.is_neg = icmp slt i64 %var.load87, 0
  %rel.start = add i64 %s.read.len77, %var.load87
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load87
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len77
  %final.start = select i1 %start.gt.len, i64 %s.read.len77, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load88, 0
  %rel.end = add i64 %s.read.len77, %var.load88
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load88
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len77
  %final.end = select i1 %end.gt.len, i64 %s.read.len77, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data86, i64 %final.start
  %arena.cur89 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %a.load = load ptr, ptr %var.out, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

str_stale82:                                      ; preds = %str_gen_check80
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok81

a.create:                                         ; preds = %str_ok81
  %arena.cur90 = call ptr @dva_arena_current()
  %a.create91 = call ptr @dva_arena_alloc(ptr %arena.cur90, i64 24)
  %arena.cur92 = call ptr @dva_arena_current()
  %a.buf93 = call ptr @dva_arena_alloc(ptr %arena.cur92, i64 128)
  %a.len.gep94 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create91, i32 0, i32 0
  store i64 0, ptr %a.len.gep94, align 8
  %a.data.gep95 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create91, i32 0, i32 1
  store ptr %a.buf93, ptr %a.data.gep95, align 8
  %a.cap.gep96 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create91, i32 0, i32 2
  store i64 16, ptr %a.cap.gep96, align 8
  store ptr %a.create91, ptr %var.out, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %str_ok81
  %a.load2 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len97 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap98 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len97, %a.cap98
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data99 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len100 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data99, i64 %a.cur.len100
  %slot.p2i = ptrtoint ptr %str.view to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len100, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.83

a.create106:                                      ; preds = %loop.exit.83
  %arena.cur108 = call ptr @dva_arena_current()
  %a.create109 = call ptr @dva_arena_alloc(ptr %arena.cur108, i64 24)
  %arena.cur110 = call ptr @dva_arena_current()
  %a.buf111 = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 128)
  %a.len.gep112 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create109, i32 0, i32 0
  store i64 0, ptr %a.len.gep112, align 8
  %a.data.gep113 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create109, i32 0, i32 1
  store ptr %a.buf111, ptr %a.data.gep113, align 8
  %a.cap.gep114 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create109, i32 0, i32 2
  store i64 16, ptr %a.cap.gep114, align 8
  store ptr %a.create109, ptr %var.out, align 8
  br label %a.after107

a.after107:                                       ; preds = %a.create106, %loop.exit.83
  %a.load2115 = load ptr, ptr %var.out, align 8
  ret ptr %a.load2115
}

define ptr @"str::join"(ptr %0, ptr %1) #1 {
entry:
  %var._124 = alloca ptr, align 8
  %var._i123 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.90 = alloca i64, align 8
  %loop.idx.90 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.89 = alloca i64, align 8
  %loop.idx.89 = alloca i64, align 8
  %"var.total'" = alloca i64, align 8
  %var.lsep = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.sep = alloca ptr, align 8
  %var.parts = alloca ptr, align 8
  store ptr %0, ptr %var.parts, align 8
  store ptr %1, ptr %var.sep, align 8
  %var.load = load ptr, ptr %var.parts, align 8
  %a.load = load ptr, ptr %var.parts, align 8
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
  store ptr %a.create1, ptr %var.parts, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.parts, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query3 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query3, ptr %var.n, align 8
  %var.load4 = load i64, ptr %var.n, align 8
  %cmptmp = icmp eq i64 %var.load4, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %a.after
  ret ptr @str.10.struct

choice.exit:                                      ; preds = %ret.dead, %a.after
  %var.load5 = load i64, ptr %var.n, align 8
  %cmptmp6 = icmp eq i64 %var.load5, 1
  br i1 %cmptmp6, label %choice.then7, label %choice.exit8

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then7:                                     ; preds = %choice.exit
  %var.load9 = load ptr, ptr %var.parts, align 8
  %a.load10 = load ptr, ptr %var.parts, align 8
  %a.null11 = icmp eq ptr %a.load10, null
  br i1 %a.null11, label %a.create12, label %a.after13

choice.exit8:                                     ; preds = %ret.dead55, %choice.exit
  %var.load56 = load ptr, ptr %var.sep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 0
  %str.len.query57 = load i64, ptr %str.len.query, align 8
  %str.len.query58 = and i64 %str.len.query57, 281474976710655
  %str.tag59 = lshr i64 %str.len.query57, 48
  %str.immortal60 = icmp eq i64 %str.tag59, 0
  br i1 %str.immortal60, label %str_ok62, label %str_gen_check61

a.create12:                                       ; preds = %choice.then7
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
  store ptr %a.create15, ptr %var.parts, align 8
  br label %a.after13

a.after13:                                        ; preds = %a.create12, %choice.then7
  %a.load221 = load ptr, ptr %var.parts, align 8
  %a.rd.nonnull = icmp ne ptr %a.load221, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after13
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load221, i32 0, i32 0
  %a.rd.len22 = load i64, ptr %a.rd.len, align 8
  %a.rd.lt = icmp slt i64 0, %a.rd.len22
  %a.rd.bounds = and i1 true, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load221, i32 0, i32 1
  %a.rd.data23 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data23, i64 0
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after13
  %arena.cur24 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.11.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.12.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 457, ptr %err.line.gep, align 8
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
  %arena.cur25 = call ptr @dva_arena_current()
  %err.alloc26 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 56)
  %err.code.gep27 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc26, i32 0, i32 0
  store i64 4011, ptr %err.code.gep27, align 8
  %err.msg.gep28 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc26, i32 0, i32 1
  store ptr @str.13.struct, ptr %err.msg.gep28, align 8
  %err.file.gep29 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc26, i32 0, i32 2
  store ptr @str.12.struct, ptr %err.file.gep29, align 8
  %err.line.gep30 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc26, i32 0, i32 3
  store i64 457, ptr %err.line.gep30, align 8
  %err.col.gep31 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc26, i32 0, i32 4
  store i64 28, ptr %err.col.gep31, align 8
  %err.ctx.gep32 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc26, i32 0, i32 5
  %err.ctx0.gep33 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep32, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep33, align 8
  %err.ctx1.gep34 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep32, i32 0, i32 1
  store i64 %a.rd.len22, ptr %err.ctx1.gep34, align 8
  %err.p2i35 = ptrtoint ptr %err.alloc26 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i35, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.88, label %unwrap.abort.88

unwrap.pos.88:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  ret ptr %pay.ptr

unwrap.abort.88:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep36 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep36, align 8
  %err.msg.gep37 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep37, align 8
  %err.file.gep38 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep38, align 8
  %err.line.gep39 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep39, align 8
  %err.col.gep40 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep40, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len41 = load i64, ptr %err.msg.len, align 8
  %err.msg.len42 = and i64 %err.msg.len41, 281474976710655
  %str.tag = lshr i64 %err.msg.len41, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %unwrap.abort.88
  %arena.cur43 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur43, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %unwrap.abort.88
  %err.msg.len32 = trunc i64 %err.msg.len42 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data44 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len45 = load i64, ptr %err.file.len, align 8
  %err.file.len46 = and i64 %err.file.len45, 281474976710655
  %str.tag47 = lshr i64 %err.file.len45, 48
  %str.immortal48 = icmp eq i64 %str.tag47, 0
  br i1 %str.immortal48, label %str_ok50, label %str_gen_check49

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check49:                                  ; preds = %str_ok
  %arena.cur52 = call ptr @dva_arena_current()
  %tag.valid53 = call i1 @dva_arena_validate_tag(ptr %arena.cur52, i64 %str.tag47)
  br i1 %tag.valid53, label %str_ok50, label %str_stale51

str_ok50:                                         ; preds = %str_stale51, %str_gen_check49, %str_ok
  %err.file.len32 = trunc i64 %err.file.len46 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data54 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale51:                                      ; preds = %str_gen_check49
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok50

err.thread:                                       ; preds = %str_ok50
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok50
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data44, i32 %err.file.len32, ptr %err.file.data54, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

ret.dead55:                                       ; No predecessors!
  br label %choice.exit8

str_gen_check61:                                  ; preds = %choice.exit8
  %arena.cur64 = call ptr @dva_arena_current()
  %tag.valid65 = call i1 @dva_arena_validate_tag(ptr %arena.cur64, i64 %str.tag59)
  br i1 %tag.valid65, label %str_ok62, label %str_stale63

str_ok62:                                         ; preds = %str_stale63, %str_gen_check61, %choice.exit8
  store i64 %str.len.query58, ptr %var.lsep, align 8
  %var.load66 = load i64, ptr %var.n, align 8
  %subtmp = sub i64 %var.load66, 1
  %var.load67 = load i64, ptr %var.lsep, align 8
  %multmp = mul i64 %subtmp, %var.load67
  store i64 %multmp, ptr %"var.total'", align 8
  %var.load68 = load ptr, ptr %var.parts, align 8
  %a.load69 = load ptr, ptr %var.parts, align 8
  %a.null70 = icmp eq ptr %a.load69, null
  br i1 %a.null70, label %a.create71, label %a.after72

str_stale63:                                      ; preds = %str_gen_check61
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok62

a.create71:                                       ; preds = %str_ok62
  %arena.cur73 = call ptr @dva_arena_current()
  %a.create74 = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 24)
  %arena.cur75 = call ptr @dva_arena_current()
  %a.buf76 = call ptr @dva_arena_alloc(ptr %arena.cur75, i64 128)
  %a.len.gep77 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create74, i32 0, i32 0
  store i64 0, ptr %a.len.gep77, align 8
  %a.data.gep78 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create74, i32 0, i32 1
  store ptr %a.buf76, ptr %a.data.gep78, align 8
  %a.cap.gep79 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create74, i32 0, i32 2
  store i64 16, ptr %a.cap.gep79, align 8
  store ptr %a.create74, ptr %var.parts, align 8
  br label %a.after72

a.after72:                                        ; preds = %a.create71, %str_ok62
  %a.load280 = load ptr, ptr %var.parts, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load280, i32 0, i32 0
  %arr.cycle.len81 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load280, i32 0, i32 1
  %arr.cycle.data82 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.89, align 8
  br label %loop.header.89

loop.header.89:                                   ; preds = %loop.latch.89, %a.after72
  %counter.load = load i64, ptr %loop.idx.89, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len81
  br i1 %loop.cond, label %loop.body.89, label %loop.exit.nat.89

loop.body.89:                                     ; preds = %loop.header.89
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.89, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data82, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.p, align 8
  %var.load83 = load i64, ptr %"var.total'", align 8
  %var.load84 = load ptr, ptr %var.p, align 8
  %str.len.query85 = getelementptr inbounds { i64, ptr }, ptr %var.load84, i32 0, i32 0
  %str.len.query86 = load i64, ptr %str.len.query85, align 8
  %str.len.query87 = and i64 %str.len.query86, 281474976710655
  %str.tag88 = lshr i64 %str.len.query86, 48
  %str.immortal89 = icmp eq i64 %str.tag88, 0
  br i1 %str.immortal89, label %str_ok91, label %str_gen_check90

loop.exit.nat.89:                                 ; preds = %loop.header.89
  br label %loop.exit.89

loop.latch.89:                                    ; preds = %str_ok91
  %step.val = load i64, ptr %loop.step.89, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.89, align 8
  br label %loop.header.89

loop.exit.89:                                     ; preds = %loop.exit.nat.89
  %var.load95 = load i64, ptr %"var.total'", align 8
  %addtmp96 = add i64 %var.load95, 1
  %arena.cur97 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur97, i64 24)
  %cap.neg = icmp slt i64 %addtmp96, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp96
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len98

str_gen_check90:                                  ; preds = %loop.body.89
  %arena.cur93 = call ptr @dva_arena_current()
  %tag.valid94 = call i1 @dva_arena_validate_tag(ptr %arena.cur93, i64 %str.tag88)
  br i1 %tag.valid94, label %str_ok91, label %str_stale92

str_ok91:                                         ; preds = %str_stale92, %str_gen_check90, %loop.body.89
  %addtmp = add i64 %var.load83, %str.len.query87
  store i64 %addtmp, ptr %"var.total'", align 8
  br label %loop.latch.89

str_stale92:                                      ; preds = %str_gen_check90
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok91

b.buf.len98:                                      ; preds = %str_overflow_abort, %loop.exit.89
  %arena.cur99 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load100 = load ptr, ptr %var.parts, align 8
  %a.load101 = load ptr, ptr %var.parts, align 8
  %a.null102 = icmp eq ptr %a.load101, null
  br i1 %a.null102, label %a.create103, label %a.after104

str_overflow_abort:                               ; preds = %loop.exit.89
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len98

a.create103:                                      ; preds = %b.buf.len98
  %arena.cur105 = call ptr @dva_arena_current()
  %a.create106 = call ptr @dva_arena_alloc(ptr %arena.cur105, i64 24)
  %arena.cur107 = call ptr @dva_arena_current()
  %a.buf108 = call ptr @dva_arena_alloc(ptr %arena.cur107, i64 128)
  %a.len.gep109 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create106, i32 0, i32 0
  store i64 0, ptr %a.len.gep109, align 8
  %a.data.gep110 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create106, i32 0, i32 1
  store ptr %a.buf108, ptr %a.data.gep110, align 8
  %a.cap.gep111 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create106, i32 0, i32 2
  store i64 16, ptr %a.cap.gep111, align 8
  store ptr %a.create106, ptr %var.parts, align 8
  br label %a.after104

a.after104:                                       ; preds = %a.create103, %b.buf.len98
  %a.load2112 = load ptr, ptr %var.parts, align 8
  %arr.cycle.len113 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2112, i32 0, i32 0
  %arr.cycle.len114 = load i64, ptr %arr.cycle.len113, align 8
  %arr.cycle.data115 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2112, i32 0, i32 1
  %arr.cycle.data116 = load ptr, ptr %arr.cycle.data115, align 8
  store i64 0, ptr %loop.idx.90, align 8
  store i64 0, ptr %var.i, align 8
  br label %loop.header.90

loop.header.90:                                   ; preds = %loop.latch.90, %a.after104
  %counter.load117 = load i64, ptr %loop.idx.90, align 8
  %loop.cond118 = icmp slt i64 %counter.load117, %arr.cycle.len114
  br i1 %loop.cond118, label %loop.body.90, label %loop.exit.nat.90

loop.body.90:                                     ; preds = %loop.header.90
  %loop.rel.i119 = sub i64 %counter.load117, 0
  store i64 1, ptr %loop.step.90, align 8
  %arr.elem.gep120 = getelementptr i64, ptr %arr.cycle.data116, i64 %counter.load117
  %arr.elem.raw121 = load i64, ptr %arr.elem.gep120, align 8
  %slot.i2p122 = inttoptr i64 %arr.elem.raw121 to ptr
  store i64 %loop.rel.i119, ptr %var._i123, align 8
  store ptr %slot.i2p122, ptr %var._124, align 8
  store ptr %slot.i2p122, ptr %var.p, align 8
  store i64 %loop.rel.i119, ptr %var.i, align 8
  %var.load125 = load i64, ptr %var.i, align 8
  %cmptmp126 = icmp sgt i64 %var.load125, 0
  br i1 %cmptmp126, label %and.91.then, label %and.91.else

loop.exit.nat.90:                                 ; preds = %loop.header.90
  %loop.rel.end = sub i64 %counter.load117, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.90

loop.latch.90:                                    ; preds = %b.grow_done181
  %step.val208 = load i64, ptr %loop.step.90, align 8
  %loop.next209 = add i64 %counter.load117, %step.val208
  store i64 %loop.next209, ptr %loop.idx.90, align 8
  br label %loop.header.90

loop.exit.90:                                     ; preds = %loop.exit.nat.90
  %var.load210 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load210, i32 0, i32 0
  %b.freeze.len211 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load210, i32 0, i32 1
  %b.freeze.data212 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

and.91.then:                                      ; preds = %loop.body.90
  %var.load127 = load i64, ptr %var.lsep, align 8
  %cmptmp128 = icmp sgt i64 %var.load127, 0
  br label %and.91.exit

and.91.else:                                      ; preds = %loop.body.90
  br label %and.91.exit

and.91.exit:                                      ; preds = %and.91.else, %and.91.then
  %and.91.phi = phi i1 [ %cmptmp128, %and.91.then ], [ %cmptmp126, %and.91.else ]
  br i1 %and.91.phi, label %choice.then129, label %choice.exit130

choice.then129:                                   ; preds = %and.91.exit
  %b.load = load ptr, ptr %var.b, align 8
  %var.load131 = load ptr, ptr %var.sep, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load131, i32 0, i32 0
  %app.str.len132 = load i64, ptr %app.str.len, align 8
  %app.str.len133 = and i64 %app.str.len132, 281474976710655
  %str.tag134 = lshr i64 %app.str.len132, 48
  %str.immortal135 = icmp eq i64 %str.tag134, 0
  br i1 %str.immortal135, label %str_ok137, label %str_gen_check136

choice.exit130:                                   ; preds = %b.grow_done, %and.91.exit
  %b.load157 = load ptr, ptr %var.b, align 8
  %var.load158 = load ptr, ptr %var.p, align 8
  %app.str.len159 = getelementptr inbounds { i64, ptr }, ptr %var.load158, i32 0, i32 0
  %app.str.len160 = load i64, ptr %app.str.len159, align 8
  %app.str.len161 = and i64 %app.str.len160, 281474976710655
  %str.tag162 = lshr i64 %app.str.len160, 48
  %str.immortal163 = icmp eq i64 %str.tag162, 0
  br i1 %str.immortal163, label %str_ok165, label %str_gen_check164

str_gen_check136:                                 ; preds = %choice.then129
  %arena.cur139 = call ptr @dva_arena_current()
  %tag.valid140 = call i1 @dva_arena_validate_tag(ptr %arena.cur139, i64 %str.tag134)
  br i1 %tag.valid140, label %str_ok137, label %str_stale138

str_ok137:                                        ; preds = %str_stale138, %str_gen_check136, %choice.then129
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len141 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len141, i64 %app.str.len133)
  %sum142 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf143 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf143, label %str_overflow_abort145, label %b.app.new.len144

str_stale138:                                     ; preds = %str_gen_check136
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok137

b.app.new.len144:                                 ; preds = %str_overflow_abort145, %str_ok137
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap146 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap146, %sum142
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort145:                            ; preds = %str_ok137
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len144

b.grow2:                                          ; preds = %b.app.new.len144
  %b.cap2 = mul i64 %b.cap146, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum142
  %b.new.cap = select i1 %b.cap.need, i64 %sum142, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len2147 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data2148 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum149 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf150 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf150, label %str_overflow_abort152, label %b.new.buf.len2151

b.nogrow2:                                        ; preds = %b.app.new.len144
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2151
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load131, i32 0, i32 1
  %app.str.data154 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data155 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data155, i64 %b.app.cur.len141
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data154, i64 %app.str.len133, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data155, i64 %sum142
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep156 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum142, ptr %b.len.gep156, align 8
  br label %choice.exit130

b.new.buf.len2151:                                ; preds = %str_overflow_abort152, %b.grow2
  %arena.cur153 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur153, i64 %sum149)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2148, i64 %b.cur.len2147, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2147
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort152:                            ; preds = %b.grow2
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2151

str_gen_check164:                                 ; preds = %choice.exit130
  %arena.cur167 = call ptr @dva_arena_current()
  %tag.valid168 = call i1 @dva_arena_validate_tag(ptr %arena.cur167, i64 %str.tag162)
  br i1 %tag.valid168, label %str_ok165, label %str_stale166

str_ok165:                                        ; preds = %str_stale166, %str_gen_check164, %choice.exit130
  %b.app.cur.len169 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load157, i32 0, i32 0
  %b.app.cur.len170 = load i64, ptr %b.app.cur.len169, align 8
  %b.app.new.len171 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len170, i64 %app.str.len161)
  %sum172 = extractvalue { i64, i1 } %b.app.new.len171, 0
  %ovf173 = extractvalue { i64, i1 } %b.app.new.len171, 1
  br i1 %ovf173, label %str_overflow_abort175, label %b.app.new.len174

str_stale166:                                     ; preds = %str_gen_check164
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok165

b.app.new.len174:                                 ; preds = %str_overflow_abort175, %str_ok165
  %b.cap176 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load157, i32 0, i32 2
  %b.cap177 = load i64, ptr %b.cap176, align 8
  %b.need.grow178 = icmp slt i64 %b.cap177, %sum172
  br i1 %b.need.grow178, label %b.grow2179, label %b.nogrow2180

str_overflow_abort175:                            ; preds = %str_ok165
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len174

b.grow2179:                                       ; preds = %b.app.new.len174
  %b.cap2182 = mul i64 %b.cap177, 2
  %b.cap.small183 = icmp slt i64 %b.cap2182, 16
  %b.cap.grow184 = select i1 %b.cap.small183, i64 16, i64 %b.cap2182
  %b.cap.need185 = icmp slt i64 %b.cap.grow184, %sum172
  %b.new.cap186 = select i1 %b.cap.need185, i64 %sum172, i64 %b.cap.grow184
  %b.cur.len2187 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load157, i32 0, i32 0
  %b.cur.len2188 = load i64, ptr %b.cur.len2187, align 8
  %b.cur.data2189 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load157, i32 0, i32 1
  %b.cur.data2190 = load ptr, ptr %b.cur.data2189, align 8
  %b.new.buf.len2191 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap186, i64 1)
  %sum192 = extractvalue { i64, i1 } %b.new.buf.len2191, 0
  %ovf193 = extractvalue { i64, i1 } %b.new.buf.len2191, 1
  br i1 %ovf193, label %str_overflow_abort195, label %b.new.buf.len2194

b.nogrow2180:                                     ; preds = %b.app.new.len174
  br label %b.grow_done181

b.grow_done181:                                   ; preds = %b.nogrow2180, %b.new.buf.len2194
  %app.str.data201 = getelementptr inbounds { i64, ptr }, ptr %var.load158, i32 0, i32 1
  %app.str.data202 = load ptr, ptr %app.str.data201, align 8
  %b.app.data203 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load157, i32 0, i32 1
  %b.app.data204 = load ptr, ptr %b.app.data203, align 8
  %b.app.dst205 = getelementptr i8, ptr %b.app.data204, i64 %b.app.cur.len170
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst205, ptr align 1 %app.str.data202, i64 %app.str.len161, i1 false)
  %b.app.nul206 = getelementptr i8, ptr %b.app.data204, i64 %sum172
  store i8 0, ptr %b.app.nul206, align 1
  %b.len.gep207 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load157, i32 0, i32 0
  store i64 %sum172, ptr %b.len.gep207, align 8
  br label %loop.latch.90

b.new.buf.len2194:                                ; preds = %str_overflow_abort195, %b.grow2179
  %arena.cur196 = call ptr @dva_arena_current()
  %b.new.buf2197 = call ptr @dva_arena_alloc(ptr %arena.cur196, i64 %sum192)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2197, ptr align 1 %b.cur.data2190, i64 %b.cur.len2188, i1 false)
  %b.grow2.nul198 = getelementptr i8, ptr %b.new.buf2197, i64 %b.cur.len2188
  store i8 0, ptr %b.grow2.nul198, align 1
  %b.new.data2.gep199 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load157, i32 0, i32 1
  store ptr %b.new.buf2197, ptr %b.new.data2.gep199, align 8
  %b.new.cap2.gep200 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load157, i32 0, i32 2
  store i64 %b.new.cap186, ptr %b.new.cap2.gep200, align 8
  br label %b.grow_done181

str_overflow_abort195:                            ; preds = %b.grow2179
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2194

b.freeze.check:                                   ; preds = %loop.exit.90
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data212, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data212, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data212, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len211, 1
  %arena.cur213 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur213, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data212, i64 %b.freeze.len211, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len211
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.90
  %b.freeze.data214 = phi ptr [ %b.freeze.data212, %loop.exit.90 ], [ %b.freeze.data212, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur215 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur215, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len211, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data214, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load210, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load210, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load210, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define ptr @"str::lower"(ptr %0) #1 {
entry:
  %var.dec = alloca ptr, align 8
  %var.b0 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.92 = alloca i64, align 8
  %loop.idx.92 = alloca i64, align 8
  %"var.i'" = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.len = alloca i64, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  ret ptr @str.10.struct

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load i64, ptr %var.len, align 8
  %addtmp = add i64 %var.load4, 8
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

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len6:                                       ; preds = %str_overflow_abort, %choice.exit
  %arena.cur7 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  store i64 0, ptr %"var.i'", align 8
  store i64 0, ptr %loop.idx.92, align 8
  br label %loop.header.92

str_overflow_abort:                               ; preds = %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len6

loop.header.92:                                   ; preds = %loop.latch.92, %b.buf.len6
  %counter.load = load i64, ptr %loop.idx.92, align 8
  br label %loop.body.92

loop.body.92:                                     ; preds = %loop.header.92
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.92, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load8 = load i64, ptr %"var.i'", align 8
  %var.load9 = load i64, ptr %var.len, align 8
  %cmptmp10 = icmp sge i64 %var.load8, %var.load9
  br i1 %cmptmp10, label %choice.then11, label %choice.exit12

loop.exit.nat.92:                                 ; No predecessors!
  br label %loop.exit.92

loop.latch.92:                                    ; preds = %choice.exit28
  %step.val = load i64, ptr %loop.step.92, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.92, align 8
  br label %loop.header.92

loop.exit.92:                                     ; preds = %choice.then11, %loop.exit.nat.92
  %var.load102 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load102, i32 0, i32 0
  %b.freeze.len103 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load102, i32 0, i32 1
  %b.freeze.data104 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.then11:                                    ; preds = %loop.body.92
  br label %loop.exit.92

choice.exit12:                                    ; preds = %loop.body.92
  %var.load13 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %s.read.len14 = load i64, ptr %s.read.len, align 8
  %s.read.len15 = and i64 %s.read.len14, 281474976710655
  %str.tag16 = lshr i64 %s.read.len14, 48
  %str.immortal17 = icmp eq i64 %str.tag16, 0
  br i1 %str.immortal17, label %str_ok19, label %str_gen_check18

str_gen_check18:                                  ; preds = %choice.exit12
  %arena.cur21 = call ptr @dva_arena_current()
  %tag.valid22 = call i1 @dva_arena_validate_tag(ptr %arena.cur21, i64 %str.tag16)
  br i1 %tag.valid22, label %str_ok19, label %str_stale20

str_ok19:                                         ; preds = %str_stale20, %str_gen_check18, %choice.exit12
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %s.read.data23 = load ptr, ptr %s.read.data, align 8
  %var.load24 = load i64, ptr %"var.i'", align 8
  %idx.neg = icmp slt i64 %var.load24, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale20:                                      ; preds = %str_gen_check18
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok19

idx_big_check:                                    ; preds = %str_ok19
  %idx.big = icmp sge i64 %var.load24, %s.read.len15
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data23, i64 %var.load24
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.b0, align 8
  %var.load25 = load i64, ptr %var.b0, align 8
  %cmptmp26 = icmp slt i64 %var.load25, 128
  br i1 %cmptmp26, label %choice.then27, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok19
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then27:                                    ; preds = %idx_ok
  %b.load = load ptr, ptr %var.b, align 8
  %var.load29 = load i64, ptr %var.b0, align 8
  %call.res = call i64 @"ascii::to_lower"(i64 %var.load29)
  %b.b.ge0 = icmp sge i64 %call.res, 0
  %b.b.le255 = icmp sle i64 %call.res, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.else:                                      ; preds = %idx_ok
  %var.load43 = load ptr, ptr %var.s, align 8
  %var.load44 = load i64, ptr %"var.i'", align 8
  %call.res45 = call ptr @"utf::decode_str_at"(ptr %var.load43, i64 %var.load44)
  store ptr %call.res45, ptr %var.dec, align 8
  %var.load46 = load ptr, ptr %var.dec, align 8
  %fld.gep = getelementptr inbounds { i64, i64 }, ptr %var.load46, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp47 = icmp slt i64 %fld.load, 0
  br i1 %cmptmp47, label %choice.then48, label %choice.else49

choice.exit28:                                    ; preds = %choice.exit50, %b.push_done
  br label %loop.latch.92

b.byte_ok:                                        ; preds = %b.byte_err, %choice.then27
  %b.byte.i8 = trunc i64 %call.res to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len30 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap31 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data32 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len30, %b.cap31
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.then27
  %5 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap31, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum33 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf34 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf34, label %str_overflow_abort36, label %b.new.buf.len35

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len35
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data38 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len39 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data38, i64 %b.cur.len39
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len39, 1
  %b.nul = getelementptr i8, ptr %b.cur.data38, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep40 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep40, align 8
  %var.load41 = load i64, ptr %"var.i'", align 8
  %addtmp42 = add i64 %var.load41, 1
  store i64 %addtmp42, ptr %"var.i'", align 8
  br label %choice.exit28

b.new.buf.len35:                                  ; preds = %str_overflow_abort36, %b.grow
  %arena.cur37 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 %sum33)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data32, i64 %b.len30, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len30
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort36:                             ; preds = %b.grow
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len35

choice.then48:                                    ; preds = %choice.else
  %b.load51 = load ptr, ptr %var.b, align 8
  %var.load52 = load i64, ptr %var.b0, align 8
  %b.b.ge053 = icmp sge i64 %var.load52, 0
  %b.b.le25554 = icmp sle i64 %var.load52, 255
  %b.byte.range55 = and i1 %b.b.ge053, %b.b.le25554
  br i1 %b.byte.range55, label %b.byte_ok56, label %b.byte_err57

choice.else49:                                    ; preds = %choice.else
  %var.load92 = load ptr, ptr %var.b, align 8
  %var.load93 = load ptr, ptr %var.dec, align 8
  %fld.gep94 = getelementptr inbounds { i64, i64 }, ptr %var.load93, i32 0, i32 0
  %fld.load95 = load i64, ptr %fld.gep94, align 8
  %coerce.trunc = trunc i64 %fld.load95 to i32
  %call.res96 = call i32 @"unicode::to_lower"(i32 %coerce.trunc)
  call void @"utf::append_rune"(ptr %var.load92, i32 %call.res96)
  %var.load97 = load i64, ptr %"var.i'", align 8
  %var.load98 = load ptr, ptr %var.dec, align 8
  %fld.gep99 = getelementptr inbounds { i64, i64 }, ptr %var.load98, i32 0, i32 1
  %fld.load100 = load i64, ptr %fld.gep99, align 8
  %addtmp101 = add i64 %var.load97, %fld.load100
  store i64 %addtmp101, ptr %"var.i'", align 8
  br label %choice.exit50

choice.exit50:                                    ; preds = %choice.else49, %b.push_done68
  br label %choice.exit28

b.byte_ok56:                                      ; preds = %b.byte_err57, %choice.then48
  %b.byte.i858 = trunc i64 %var.load52 to i8
  %b.len59 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  %b.len60 = load i64, ptr %b.len59, align 8
  %b.cap61 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 2
  %b.cap62 = load i64, ptr %b.cap61, align 8
  %b.data63 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  %b.data64 = load ptr, ptr %b.data63, align 8
  %b.needs.grow65 = icmp eq i64 %b.len60, %b.cap62
  br i1 %b.needs.grow65, label %b.grow66, label %b.nogrow67

b.byte_err57:                                     ; preds = %choice.then48
  %7 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok56

b.grow66:                                         ; preds = %b.byte_ok56
  %b.cap269 = mul i64 %b.cap62, 2
  %b.cap.small70 = icmp slt i64 %b.cap269, 16
  %b.new.cap71 = select i1 %b.cap.small70, i64 16, i64 %b.cap269
  %b.new.buf.len72 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap71, i64 1)
  %sum73 = extractvalue { i64, i1 } %b.new.buf.len72, 0
  %ovf74 = extractvalue { i64, i1 } %b.new.buf.len72, 1
  br i1 %ovf74, label %str_overflow_abort76, label %b.new.buf.len75

b.nogrow67:                                       ; preds = %b.byte_ok56
  br label %b.push_done68

b.push_done68:                                    ; preds = %b.nogrow67, %b.new.buf.len75
  %b.cur.data82 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  %b.cur.data83 = load ptr, ptr %b.cur.data82, align 8
  %b.cur.len84 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  %b.cur.len85 = load i64, ptr %b.cur.len84, align 8
  %b.byte.gep86 = getelementptr i8, ptr %b.cur.data83, i64 %b.cur.len85
  store i8 %b.byte.i858, ptr %b.byte.gep86, align 1
  %b.next.len87 = add i64 %b.cur.len85, 1
  %b.nul88 = getelementptr i8, ptr %b.cur.data83, i64 %b.next.len87
  store i8 0, ptr %b.nul88, align 1
  %b.len.gep89 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  store i64 %b.next.len87, ptr %b.len.gep89, align 8
  %var.load90 = load i64, ptr %"var.i'", align 8
  %addtmp91 = add i64 %var.load90, 1
  store i64 %addtmp91, ptr %"var.i'", align 8
  br label %choice.exit50

b.new.buf.len75:                                  ; preds = %str_overflow_abort76, %b.grow66
  %arena.cur77 = call ptr @dva_arena_current()
  %b.new.buf78 = call ptr @dva_arena_alloc(ptr %arena.cur77, i64 %sum73)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf78, ptr align 1 %b.data64, i64 %b.len60, i1 false)
  %b.grow.nul79 = getelementptr i8, ptr %b.new.buf78, i64 %b.len60
  store i8 0, ptr %b.grow.nul79, align 1
  %b.new.data.gep80 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  store ptr %b.new.buf78, ptr %b.new.data.gep80, align 8
  %b.new.cap.gep81 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 2
  store i64 %b.new.cap71, ptr %b.new.cap.gep81, align 8
  br label %b.push_done68

str_overflow_abort76:                             ; preds = %b.grow66
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len75

b.freeze.check:                                   ; preds = %loop.exit.92
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data104, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data104, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data104, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len103, 1
  %arena.cur105 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur105, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data104, i64 %b.freeze.len103, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len103
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.92
  %b.freeze.data106 = phi ptr [ %b.freeze.data104, %loop.exit.92 ], [ %b.freeze.data104, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur107 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur107, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len103, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data106, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load102, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load102, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load102, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

declare i64 @"ascii::to_lower"(i64) #1

declare ptr @"utf::decode_str_at"(ptr, i64) #1

declare i32 @"unicode::to_lower"(i32) #1

declare void @"utf::append_rune"(ptr, i32) #1

define ptr @"str::upper"(ptr %0) #1 {
entry:
  %var.dec = alloca ptr, align 8
  %var.b0 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.93 = alloca i64, align 8
  %loop.idx.93 = alloca i64, align 8
  %"var.i'" = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.len = alloca i64, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  ret ptr @str.10.struct

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load i64, ptr %var.len, align 8
  %addtmp = add i64 %var.load4, 8
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

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len6:                                       ; preds = %str_overflow_abort, %choice.exit
  %arena.cur7 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  store i64 0, ptr %"var.i'", align 8
  store i64 0, ptr %loop.idx.93, align 8
  br label %loop.header.93

str_overflow_abort:                               ; preds = %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len6

loop.header.93:                                   ; preds = %loop.latch.93, %b.buf.len6
  %counter.load = load i64, ptr %loop.idx.93, align 8
  br label %loop.body.93

loop.body.93:                                     ; preds = %loop.header.93
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.93, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load8 = load i64, ptr %"var.i'", align 8
  %var.load9 = load i64, ptr %var.len, align 8
  %cmptmp10 = icmp sge i64 %var.load8, %var.load9
  br i1 %cmptmp10, label %choice.then11, label %choice.exit12

loop.exit.nat.93:                                 ; No predecessors!
  br label %loop.exit.93

loop.latch.93:                                    ; preds = %choice.exit28
  %step.val = load i64, ptr %loop.step.93, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.93, align 8
  br label %loop.header.93

loop.exit.93:                                     ; preds = %choice.then11, %loop.exit.nat.93
  %var.load137 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load137, i32 0, i32 0
  %b.freeze.len138 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load137, i32 0, i32 1
  %b.freeze.data139 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.then11:                                    ; preds = %loop.body.93
  br label %loop.exit.93

choice.exit12:                                    ; preds = %loop.body.93
  %var.load13 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %s.read.len14 = load i64, ptr %s.read.len, align 8
  %s.read.len15 = and i64 %s.read.len14, 281474976710655
  %str.tag16 = lshr i64 %s.read.len14, 48
  %str.immortal17 = icmp eq i64 %str.tag16, 0
  br i1 %str.immortal17, label %str_ok19, label %str_gen_check18

str_gen_check18:                                  ; preds = %choice.exit12
  %arena.cur21 = call ptr @dva_arena_current()
  %tag.valid22 = call i1 @dva_arena_validate_tag(ptr %arena.cur21, i64 %str.tag16)
  br i1 %tag.valid22, label %str_ok19, label %str_stale20

str_ok19:                                         ; preds = %str_stale20, %str_gen_check18, %choice.exit12
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %s.read.data23 = load ptr, ptr %s.read.data, align 8
  %var.load24 = load i64, ptr %"var.i'", align 8
  %idx.neg = icmp slt i64 %var.load24, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale20:                                      ; preds = %str_gen_check18
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok19

idx_big_check:                                    ; preds = %str_ok19
  %idx.big = icmp sge i64 %var.load24, %s.read.len15
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data23, i64 %var.load24
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.b0, align 8
  %var.load25 = load i64, ptr %var.b0, align 8
  %cmptmp26 = icmp slt i64 %var.load25, 128
  br i1 %cmptmp26, label %choice.then27, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok19
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then27:                                    ; preds = %idx_ok
  %b.load = load ptr, ptr %var.b, align 8
  %var.load29 = load i64, ptr %var.b0, align 8
  %call.res = call i64 @"ascii::to_upper"(i64 %var.load29)
  %b.b.ge0 = icmp sge i64 %call.res, 0
  %b.b.le255 = icmp sle i64 %call.res, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.else:                                      ; preds = %idx_ok
  %var.load43 = load ptr, ptr %var.s, align 8
  %var.load44 = load i64, ptr %"var.i'", align 8
  %call.res45 = call ptr @"utf::decode_str_at"(ptr %var.load43, i64 %var.load44)
  store ptr %call.res45, ptr %var.dec, align 8
  %var.load46 = load ptr, ptr %var.dec, align 8
  %fld.gep = getelementptr inbounds { i64, i64 }, ptr %var.load46, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp47 = icmp slt i64 %fld.load, 0
  br i1 %cmptmp47, label %choice.then48, label %choice.else49

choice.exit28:                                    ; preds = %choice.exit50, %b.push_done
  br label %loop.latch.93

b.byte_ok:                                        ; preds = %b.byte_err, %choice.then27
  %b.byte.i8 = trunc i64 %call.res to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len30 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap31 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data32 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len30, %b.cap31
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.then27
  %5 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap31, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum33 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf34 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf34, label %str_overflow_abort36, label %b.new.buf.len35

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len35
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data38 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len39 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data38, i64 %b.cur.len39
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len39, 1
  %b.nul = getelementptr i8, ptr %b.cur.data38, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep40 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep40, align 8
  %var.load41 = load i64, ptr %"var.i'", align 8
  %addtmp42 = add i64 %var.load41, 1
  store i64 %addtmp42, ptr %"var.i'", align 8
  br label %choice.exit28

b.new.buf.len35:                                  ; preds = %str_overflow_abort36, %b.grow
  %arena.cur37 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 %sum33)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data32, i64 %b.len30, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len30
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort36:                             ; preds = %b.grow
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len35

choice.then48:                                    ; preds = %choice.else
  %b.load51 = load ptr, ptr %var.b, align 8
  %var.load52 = load i64, ptr %var.b0, align 8
  %b.b.ge053 = icmp sge i64 %var.load52, 0
  %b.b.le25554 = icmp sle i64 %var.load52, 255
  %b.byte.range55 = and i1 %b.b.ge053, %b.b.le25554
  br i1 %b.byte.range55, label %b.byte_ok56, label %b.byte_err57

choice.else49:                                    ; preds = %choice.else
  %var.load92 = load ptr, ptr %var.dec, align 8
  %fld.gep93 = getelementptr inbounds { i64, i64 }, ptr %var.load92, i32 0, i32 0
  %fld.load94 = load i64, ptr %fld.gep93, align 8
  %cmptmp95 = icmp eq i64 %fld.load94, 223
  br i1 %cmptmp95, label %choice.then96, label %choice.else97

choice.exit50:                                    ; preds = %choice.exit98, %b.push_done68
  br label %choice.exit28

b.byte_ok56:                                      ; preds = %b.byte_err57, %choice.then48
  %b.byte.i858 = trunc i64 %var.load52 to i8
  %b.len59 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  %b.len60 = load i64, ptr %b.len59, align 8
  %b.cap61 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 2
  %b.cap62 = load i64, ptr %b.cap61, align 8
  %b.data63 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  %b.data64 = load ptr, ptr %b.data63, align 8
  %b.needs.grow65 = icmp eq i64 %b.len60, %b.cap62
  br i1 %b.needs.grow65, label %b.grow66, label %b.nogrow67

b.byte_err57:                                     ; preds = %choice.then48
  %7 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok56

b.grow66:                                         ; preds = %b.byte_ok56
  %b.cap269 = mul i64 %b.cap62, 2
  %b.cap.small70 = icmp slt i64 %b.cap269, 16
  %b.new.cap71 = select i1 %b.cap.small70, i64 16, i64 %b.cap269
  %b.new.buf.len72 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap71, i64 1)
  %sum73 = extractvalue { i64, i1 } %b.new.buf.len72, 0
  %ovf74 = extractvalue { i64, i1 } %b.new.buf.len72, 1
  br i1 %ovf74, label %str_overflow_abort76, label %b.new.buf.len75

b.nogrow67:                                       ; preds = %b.byte_ok56
  br label %b.push_done68

b.push_done68:                                    ; preds = %b.nogrow67, %b.new.buf.len75
  %b.cur.data82 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  %b.cur.data83 = load ptr, ptr %b.cur.data82, align 8
  %b.cur.len84 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  %b.cur.len85 = load i64, ptr %b.cur.len84, align 8
  %b.byte.gep86 = getelementptr i8, ptr %b.cur.data83, i64 %b.cur.len85
  store i8 %b.byte.i858, ptr %b.byte.gep86, align 1
  %b.next.len87 = add i64 %b.cur.len85, 1
  %b.nul88 = getelementptr i8, ptr %b.cur.data83, i64 %b.next.len87
  store i8 0, ptr %b.nul88, align 1
  %b.len.gep89 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  store i64 %b.next.len87, ptr %b.len.gep89, align 8
  %var.load90 = load i64, ptr %"var.i'", align 8
  %addtmp91 = add i64 %var.load90, 1
  store i64 %addtmp91, ptr %"var.i'", align 8
  br label %choice.exit50

b.new.buf.len75:                                  ; preds = %str_overflow_abort76, %b.grow66
  %arena.cur77 = call ptr @dva_arena_current()
  %b.new.buf78 = call ptr @dva_arena_alloc(ptr %arena.cur77, i64 %sum73)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf78, ptr align 1 %b.data64, i64 %b.len60, i1 false)
  %b.grow.nul79 = getelementptr i8, ptr %b.new.buf78, i64 %b.len60
  store i8 0, ptr %b.grow.nul79, align 1
  %b.new.data.gep80 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  store ptr %b.new.buf78, ptr %b.new.data.gep80, align 8
  %b.new.cap.gep81 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 2
  store i64 %b.new.cap71, ptr %b.new.cap.gep81, align 8
  br label %b.push_done68

str_overflow_abort76:                             ; preds = %b.grow66
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len75

choice.then96:                                    ; preds = %choice.else49
  %b.load99 = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.14.struct, align 8
  %app.str.len100 = and i64 %app.str.len, 281474976710655
  %str.tag101 = lshr i64 %app.str.len, 48
  %str.immortal102 = icmp eq i64 %str.tag101, 0
  br i1 %str.immortal102, label %str_ok104, label %str_gen_check103

choice.else97:                                    ; preds = %choice.else49
  %var.load127 = load ptr, ptr %var.b, align 8
  %var.load128 = load ptr, ptr %var.dec, align 8
  %fld.gep129 = getelementptr inbounds { i64, i64 }, ptr %var.load128, i32 0, i32 0
  %fld.load130 = load i64, ptr %fld.gep129, align 8
  %coerce.trunc = trunc i64 %fld.load130 to i32
  %call.res131 = call i32 @"unicode::to_upper"(i32 %coerce.trunc)
  call void @"utf::append_rune"(ptr %var.load127, i32 %call.res131)
  br label %choice.exit98

choice.exit98:                                    ; preds = %choice.else97, %b.grow_done
  %var.load132 = load i64, ptr %"var.i'", align 8
  %var.load133 = load ptr, ptr %var.dec, align 8
  %fld.gep134 = getelementptr inbounds { i64, i64 }, ptr %var.load133, i32 0, i32 1
  %fld.load135 = load i64, ptr %fld.gep134, align 8
  %addtmp136 = add i64 %var.load132, %fld.load135
  store i64 %addtmp136, ptr %"var.i'", align 8
  br label %choice.exit50

str_gen_check103:                                 ; preds = %choice.then96
  %arena.cur106 = call ptr @dva_arena_current()
  %tag.valid107 = call i1 @dva_arena_validate_tag(ptr %arena.cur106, i64 %str.tag101)
  br i1 %tag.valid107, label %str_ok104, label %str_stale105

str_ok104:                                        ; preds = %str_stale105, %str_gen_check103, %choice.then96
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 0
  %b.app.cur.len108 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len108, i64 %app.str.len100)
  %sum109 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf110 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf110, label %str_overflow_abort112, label %b.app.new.len111

str_stale105:                                     ; preds = %str_gen_check103
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok104

b.app.new.len111:                                 ; preds = %str_overflow_abort112, %str_ok104
  %b.cap113 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 2
  %b.cap114 = load i64, ptr %b.cap113, align 8
  %b.need.grow = icmp slt i64 %b.cap114, %sum109
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort112:                            ; preds = %str_ok104
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len111

b.grow2:                                          ; preds = %b.app.new.len111
  %b.cap2115 = mul i64 %b.cap114, 2
  %b.cap.small116 = icmp slt i64 %b.cap2115, 16
  %b.cap.grow = select i1 %b.cap.small116, i64 16, i64 %b.cap2115
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum109
  %b.new.cap117 = select i1 %b.cap.need, i64 %sum109, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 0
  %b.cur.len2118 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 1
  %b.cur.data2119 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap117, i64 1)
  %sum120 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf121 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf121, label %str_overflow_abort123, label %b.new.buf.len2122

b.nogrow2:                                        ; preds = %b.app.new.len111
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2122
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 1
  %b.app.data125 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data125, i64 %b.app.cur.len108
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len100, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data125, i64 %sum109
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep126 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 0
  store i64 %sum109, ptr %b.len.gep126, align 8
  br label %choice.exit98

b.new.buf.len2122:                                ; preds = %str_overflow_abort123, %b.grow2
  %arena.cur124 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur124, i64 %sum120)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2119, i64 %b.cur.len2118, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2118
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 2
  store i64 %b.new.cap117, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort123:                            ; preds = %b.grow2
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2122

b.freeze.check:                                   ; preds = %loop.exit.93
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data139, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data139, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data139, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len138, 1
  %arena.cur140 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur140, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data139, i64 %b.freeze.len138, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len138
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.93
  %b.freeze.data141 = phi ptr [ %b.freeze.data139, %loop.exit.93 ], [ %b.freeze.data139, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur142 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len138, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data141, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load137, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load137, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load137, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

declare i64 @"ascii::to_upper"(i64) #1

declare i32 @"unicode::to_upper"(i32) #1

define ptr @"str::repeat"(ptr %0, i64 %1) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.95 = alloca i64, align 8
  %loop.idx.95 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.len = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.n, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sle i64 %var.load3, 0
  br i1 %cmptmp, label %or.94.then, label %or.94.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

or.94.then:                                       ; preds = %str_ok
  br label %or.94.exit

or.94.else:                                       ; preds = %str_ok
  %var.load4 = load i64, ptr %var.len, align 8
  %cmptmp5 = icmp eq i64 %var.load4, 0
  br label %or.94.exit

or.94.exit:                                       ; preds = %or.94.else, %or.94.then
  %or.94.phi = phi i1 [ %cmptmp, %or.94.then ], [ %cmptmp5, %or.94.else ]
  br i1 %or.94.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %or.94.exit
  ret ptr @str.10.struct

choice.exit:                                      ; preds = %ret.dead, %or.94.exit
  %var.load6 = load i64, ptr %var.n, align 8
  %cmptmp7 = icmp eq i64 %var.load6, 1
  br i1 %cmptmp7, label %choice.then8, label %choice.exit9

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then8:                                     ; preds = %choice.exit
  %var.load10 = load ptr, ptr %var.s, align 8
  ret ptr %var.load10

choice.exit9:                                     ; preds = %ret.dead11, %choice.exit
  %var.load12 = load i64, ptr %var.len, align 8
  %var.load13 = load i64, ptr %var.n, align 8
  %multmp = mul i64 %var.load12, %var.load13
  %arena.cur14 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 24)
  %cap.neg = icmp slt i64 %multmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %multmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len15

ret.dead11:                                       ; No predecessors!
  br label %choice.exit9

b.buf.len15:                                      ; preds = %str_overflow_abort, %choice.exit9
  %arena.cur16 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load17 = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.95, align 8
  br label %loop.header.95

str_overflow_abort:                               ; preds = %choice.exit9
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len15

loop.header.95:                                   ; preds = %loop.latch.95, %b.buf.len15
  %counter.load = load i64, ptr %loop.idx.95, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load17
  br i1 %loop.cond, label %loop.body.95, label %loop.exit.nat.95

loop.body.95:                                     ; preds = %loop.header.95
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.95, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load18 = load ptr, ptr %var.s, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %app.str.len19 = load i64, ptr %app.str.len, align 8
  %app.str.len20 = and i64 %app.str.len19, 281474976710655
  %str.tag21 = lshr i64 %app.str.len19, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

loop.exit.nat.95:                                 ; preds = %loop.header.95
  br label %loop.exit.95

loop.latch.95:                                    ; preds = %b.grow_done
  %step.val = load i64, ptr %loop.step.95, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.95, align 8
  br label %loop.header.95

loop.exit.95:                                     ; preds = %loop.exit.nat.95
  %var.load44 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load44, i32 0, i32 0
  %b.freeze.len45 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load44, i32 0, i32 1
  %b.freeze.data46 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_gen_check23:                                  ; preds = %loop.body.95
  %arena.cur26 = call ptr @dva_arena_current()
  %tag.valid27 = call i1 @dva_arena_validate_tag(ptr %arena.cur26, i64 %str.tag21)
  br i1 %tag.valid27, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %loop.body.95
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len28 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len28, i64 %app.str.len20)
  %sum29 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf30 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf30, label %str_overflow_abort32, label %b.app.new.len31

str_stale25:                                      ; preds = %str_gen_check23
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok24

b.app.new.len31:                                  ; preds = %str_overflow_abort32, %str_ok24
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap33 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap33, %sum29
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort32:                             ; preds = %str_ok24
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len31

b.grow2:                                          ; preds = %b.app.new.len31
  %b.cap2 = mul i64 %b.cap33, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum29
  %b.new.cap = select i1 %b.cap.need, i64 %sum29, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len234 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data235 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum36 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf37 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf37, label %str_overflow_abort39, label %b.new.buf.len238

b.nogrow2:                                        ; preds = %b.app.new.len31
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len238
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 1
  %app.str.data41 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data42 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data42, i64 %b.app.cur.len28
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data41, i64 %app.str.len20, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data42, i64 %sum29
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep43 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum29, ptr %b.len.gep43, align 8
  br label %loop.latch.95

b.new.buf.len238:                                 ; preds = %str_overflow_abort39, %b.grow2
  %arena.cur40 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 %sum36)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data235, i64 %b.cur.len234, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len234
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort39:                             ; preds = %b.grow2
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len238

b.freeze.check:                                   ; preds = %loop.exit.95
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data46, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data46, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data46, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len45, 1
  %arena.cur47 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data46, i64 %b.freeze.len45, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len45
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.95
  %b.freeze.data48 = phi ptr [ %b.freeze.data46, %loop.exit.95 ], [ %b.freeze.data46, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur49 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len45, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data48, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load44, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load44, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load44, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define ptr @"str::pad_left"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.96 = alloca i64, align 8
  %loop.idx.96 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.pad_n = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.pad_byte = alloca i64, align 8
  %var.width = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.width, align 8
  store i64 %2, ptr %var.pad_byte, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %var.load4 = load i64, ptr %var.width, align 8
  %cmptmp = icmp sge i64 %var.load3, %var.load4
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load5 = load ptr, ptr %var.s, align 8
  ret ptr %var.load5

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load6 = load i64, ptr %var.width, align 8
  %var.load7 = load i64, ptr %var.len, align 8
  %subtmp = sub i64 %var.load6, %var.load7
  store i64 %subtmp, ptr %var.pad_n, align 8
  %var.load8 = load i64, ptr %var.width, align 8
  %arena.cur9 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 24)
  %cap.neg = icmp slt i64 %var.load8, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load8
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len10

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len10:                                      ; preds = %str_overflow_abort, %choice.exit
  %arena.cur11 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load12 = load i64, ptr %var.pad_n, align 8
  store i64 0, ptr %loop.idx.96, align 8
  br label %loop.header.96

str_overflow_abort:                               ; preds = %choice.exit
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len10

loop.header.96:                                   ; preds = %loop.latch.96, %b.buf.len10
  %counter.load = load i64, ptr %loop.idx.96, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load12
  br i1 %loop.cond, label %loop.body.96, label %loop.exit.nat.96

loop.body.96:                                     ; preds = %loop.header.96
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.96, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load13 = load i64, ptr %var.pad_byte, align 8
  %b.b.ge0 = icmp sge i64 %var.load13, 0
  %b.b.le255 = icmp sle i64 %var.load13, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

loop.exit.nat.96:                                 ; preds = %loop.header.96
  br label %loop.exit.96

loop.latch.96:                                    ; preds = %b.push_done
  %step.val = load i64, ptr %loop.step.96, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.96, align 8
  br label %loop.header.96

loop.exit.96:                                     ; preds = %loop.exit.nat.96
  %b.load25 = load ptr, ptr %var.b, align 8
  %var.load26 = load ptr, ptr %var.s, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %app.str.len27 = load i64, ptr %app.str.len, align 8
  %app.str.len28 = and i64 %app.str.len27, 281474976710655
  %str.tag29 = lshr i64 %app.str.len27, 48
  %str.immortal30 = icmp eq i64 %str.tag29, 0
  br i1 %str.immortal30, label %str_ok32, label %str_gen_check31

b.byte_ok:                                        ; preds = %b.byte_err, %loop.body.96
  %b.byte.i8 = trunc i64 %var.load13 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len14 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap15 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data16 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len14, %b.cap15
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %loop.body.96
  %5 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap15, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum17 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf18 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf18, label %str_overflow_abort20, label %b.new.buf.len19

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len19
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data22 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len23 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data22, i64 %b.cur.len23
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len23, 1
  %b.nul = getelementptr i8, ptr %b.cur.data22, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep24 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep24, align 8
  br label %loop.latch.96

b.new.buf.len19:                                  ; preds = %str_overflow_abort20, %b.grow
  %arena.cur21 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 %sum17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data16, i64 %b.len14, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len14
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort20:                             ; preds = %b.grow
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len19

str_gen_check31:                                  ; preds = %loop.exit.96
  %arena.cur34 = call ptr @dva_arena_current()
  %tag.valid35 = call i1 @dva_arena_validate_tag(ptr %arena.cur34, i64 %str.tag29)
  br i1 %tag.valid35, label %str_ok32, label %str_stale33

str_ok32:                                         ; preds = %str_stale33, %str_gen_check31, %loop.exit.96
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load25, i32 0, i32 0
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
  %b.cap41 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load25, i32 0, i32 2
  %b.cap42 = load i64, ptr %b.cap41, align 8
  %b.need.grow = icmp slt i64 %b.cap42, %sum37
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort40:                             ; preds = %str_ok32
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len39

b.grow2:                                          ; preds = %b.app.new.len39
  %b.cap243 = mul i64 %b.cap42, 2
  %b.cap.small44 = icmp slt i64 %b.cap243, 16
  %b.cap.grow = select i1 %b.cap.small44, i64 16, i64 %b.cap243
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum37
  %b.new.cap45 = select i1 %b.cap.need, i64 %sum37, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load25, i32 0, i32 0
  %b.cur.len246 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load25, i32 0, i32 1
  %b.cur.data247 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap45, i64 1)
  %sum48 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf49 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf49, label %str_overflow_abort51, label %b.new.buf.len250

b.nogrow2:                                        ; preds = %b.app.new.len39
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len250
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 1
  %app.str.data53 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load25, i32 0, i32 1
  %b.app.data54 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data54, i64 %b.app.cur.len36
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data53, i64 %app.str.len28, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data54, i64 %sum37
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep55 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load25, i32 0, i32 0
  store i64 %sum37, ptr %b.len.gep55, align 8
  %var.load56 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load56, i32 0, i32 0
  %b.freeze.len57 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load56, i32 0, i32 1
  %b.freeze.data58 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.new.buf.len250:                                 ; preds = %str_overflow_abort51, %b.grow2
  %arena.cur52 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 %sum48)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data247, i64 %b.cur.len246, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len246
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load25, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load25, i32 0, i32 2
  store i64 %b.new.cap45, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort51:                             ; preds = %b.grow2
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len250

b.freeze.check:                                   ; preds = %b.grow_done
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data58, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data58, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data58, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len57, 1
  %arena.cur59 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data58, i64 %b.freeze.len57, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len57
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.grow_done
  %b.freeze.data60 = phi ptr [ %b.freeze.data58, %b.grow_done ], [ %b.freeze.data58, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur61 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len57, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data60, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load56, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load56, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load56, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define ptr @"str::pad_right"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.97 = alloca i64, align 8
  %loop.idx.97 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.pad_n = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.pad_byte = alloca i64, align 8
  %var.width = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.width, align 8
  store i64 %2, ptr %var.pad_byte, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %var.load4 = load i64, ptr %var.width, align 8
  %cmptmp = icmp sge i64 %var.load3, %var.load4
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load5 = load ptr, ptr %var.s, align 8
  ret ptr %var.load5

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load6 = load i64, ptr %var.width, align 8
  %var.load7 = load i64, ptr %var.len, align 8
  %subtmp = sub i64 %var.load6, %var.load7
  store i64 %subtmp, ptr %var.pad_n, align 8
  %var.load8 = load i64, ptr %var.width, align 8
  %arena.cur9 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 24)
  %cap.neg = icmp slt i64 %var.load8, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load8
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len10

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len10:                                      ; preds = %str_overflow_abort, %choice.exit
  %arena.cur11 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load12 = load ptr, ptr %var.s, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 0
  %app.str.len13 = load i64, ptr %app.str.len, align 8
  %app.str.len14 = and i64 %app.str.len13, 281474976710655
  %str.tag15 = lshr i64 %app.str.len13, 48
  %str.immortal16 = icmp eq i64 %str.tag15, 0
  br i1 %str.immortal16, label %str_ok18, label %str_gen_check17

str_overflow_abort:                               ; preds = %choice.exit
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len10

str_gen_check17:                                  ; preds = %b.buf.len10
  %arena.cur20 = call ptr @dva_arena_current()
  %tag.valid21 = call i1 @dva_arena_validate_tag(ptr %arena.cur20, i64 %str.tag15)
  br i1 %tag.valid21, label %str_ok18, label %str_stale19

str_ok18:                                         ; preds = %str_stale19, %str_gen_check17, %b.buf.len10
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len22 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len22, i64 %app.str.len14)
  %sum23 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf24 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf24, label %str_overflow_abort26, label %b.app.new.len25

str_stale19:                                      ; preds = %str_gen_check17
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok18

b.app.new.len25:                                  ; preds = %str_overflow_abort26, %str_ok18
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap27 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap27, %sum23
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort26:                             ; preds = %str_ok18
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len25

b.grow2:                                          ; preds = %b.app.new.len25
  %b.cap2 = mul i64 %b.cap27, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum23
  %b.new.cap = select i1 %b.cap.need, i64 %sum23, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len228 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data229 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum30 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf31 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf31, label %str_overflow_abort33, label %b.new.buf.len232

b.nogrow2:                                        ; preds = %b.app.new.len25
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len232
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 1
  %app.str.data35 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data36 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data36, i64 %b.app.cur.len22
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data35, i64 %app.str.len14, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data36, i64 %sum23
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep37 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum23, ptr %b.len.gep37, align 8
  %var.load38 = load i64, ptr %var.pad_n, align 8
  store i64 0, ptr %loop.idx.97, align 8
  br label %loop.header.97

b.new.buf.len232:                                 ; preds = %str_overflow_abort33, %b.grow2
  %arena.cur34 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 %sum30)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data229, i64 %b.cur.len228, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len228
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort33:                             ; preds = %b.grow2
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len232

loop.header.97:                                   ; preds = %loop.latch.97, %b.grow_done
  %counter.load = load i64, ptr %loop.idx.97, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load38
  br i1 %loop.cond, label %loop.body.97, label %loop.exit.nat.97

loop.body.97:                                     ; preds = %loop.header.97
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.97, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %b.load39 = load ptr, ptr %var.b, align 8
  %var.load40 = load i64, ptr %var.pad_byte, align 8
  %b.b.ge0 = icmp sge i64 %var.load40, 0
  %b.b.le255 = icmp sle i64 %var.load40, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

loop.exit.nat.97:                                 ; preds = %loop.header.97
  br label %loop.exit.97

loop.latch.97:                                    ; preds = %b.push_done
  %step.val = load i64, ptr %loop.step.97, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.97, align 8
  br label %loop.header.97

loop.exit.97:                                     ; preds = %loop.exit.nat.97
  %var.load56 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load56, i32 0, i32 0
  %b.freeze.len57 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load56, i32 0, i32 1
  %b.freeze.data58 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.byte_ok:                                        ; preds = %b.byte_err, %loop.body.97
  %b.byte.i8 = trunc i64 %var.load40 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load39, i32 0, i32 0
  %b.len41 = load i64, ptr %b.len, align 8
  %b.cap42 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load39, i32 0, i32 2
  %b.cap43 = load i64, ptr %b.cap42, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load39, i32 0, i32 1
  %b.data44 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len41, %b.cap43
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %loop.body.97
  %8 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap245 = mul i64 %b.cap43, 2
  %b.cap.small46 = icmp slt i64 %b.cap245, 16
  %b.new.cap47 = select i1 %b.cap.small46, i64 16, i64 %b.cap245
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap47, i64 1)
  %sum48 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf49 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf49, label %str_overflow_abort51, label %b.new.buf.len50

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len50
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load39, i32 0, i32 1
  %b.cur.data53 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load39, i32 0, i32 0
  %b.cur.len54 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data53, i64 %b.cur.len54
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len54, 1
  %b.nul = getelementptr i8, ptr %b.cur.data53, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep55 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load39, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep55, align 8
  br label %loop.latch.97

b.new.buf.len50:                                  ; preds = %str_overflow_abort51, %b.grow
  %arena.cur52 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 %sum48)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data44, i64 %b.len41, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len41
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load39, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load39, i32 0, i32 2
  store i64 %b.new.cap47, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort51:                             ; preds = %b.grow
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len50

b.freeze.check:                                   ; preds = %loop.exit.97
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data58, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data58, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data58, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len57, 1
  %arena.cur59 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data58, i64 %b.freeze.len57, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len57
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.97
  %b.freeze.data60 = phi ptr [ %b.freeze.data58, %loop.exit.97 ], [ %b.freeze.data58, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur61 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len57, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data60, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load56, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load56, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load56, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define ptr @"str::reverse"(ptr %0) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.98 = alloca i64, align 8
  %loop.idx.98 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.len = alloca i64, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp sle i64 %var.load3, 1
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.s, align 8
  ret ptr %var.load4

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load5 = load i64, ptr %var.len, align 8
  %arena.cur6 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 24)
  %cap.neg = icmp slt i64 %var.load5, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load5
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len7

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len7:                                       ; preds = %str_overflow_abort, %choice.exit
  %arena.cur8 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load9 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.98, align 8
  br label %loop.header.98

str_overflow_abort:                               ; preds = %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len7

loop.header.98:                                   ; preds = %loop.latch.98, %b.buf.len7
  %counter.load = load i64, ptr %loop.idx.98, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load9
  br i1 %loop.cond, label %loop.body.98, label %loop.exit.nat.98

loop.body.98:                                     ; preds = %loop.header.98
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.98, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load10 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %str.tag13 = lshr i64 %s.read.len11, 48
  %str.immortal14 = icmp eq i64 %str.tag13, 0
  br i1 %str.immortal14, label %str_ok16, label %str_gen_check15

loop.exit.nat.98:                                 ; preds = %loop.header.98
  br label %loop.exit.98

loop.latch.98:                                    ; preds = %b.push_done
  %step.val = load i64, ptr %loop.step.98, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.98, align 8
  br label %loop.header.98

loop.exit.98:                                     ; preds = %loop.exit.nat.98
  %var.load35 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load35, i32 0, i32 0
  %b.freeze.len36 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load35, i32 0, i32 1
  %b.freeze.data37 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_gen_check15:                                  ; preds = %loop.body.98
  %arena.cur18 = call ptr @dva_arena_current()
  %tag.valid19 = call i1 @dva_arena_validate_tag(ptr %arena.cur18, i64 %str.tag13)
  br i1 %tag.valid19, label %str_ok16, label %str_stale17

str_ok16:                                         ; preds = %str_stale17, %str_gen_check15, %loop.body.98
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data20 = load ptr, ptr %s.read.data, align 8
  %var.load21 = load i64, ptr %var.len, align 8
  %subtmp = sub i64 %var.load21, 1
  %var.load22 = load i64, ptr %var.i, align 8
  %subtmp23 = sub i64 %subtmp, %var.load22
  %idx.neg = icmp slt i64 %subtmp23, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale17:                                      ; preds = %str_gen_check15
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok16

idx_big_check:                                    ; preds = %str_ok16
  %idx.big = icmp sge i64 %subtmp23, %s.read.len12
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data20, i64 %subtmp23
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.b.ge0 = icmp sge i64 %s.byte.val, 0
  %b.b.le255 = icmp sle i64 %s.byte.val, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

idx_oob:                                          ; preds = %idx_big_check, %str_ok16
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

b.byte_ok:                                        ; preds = %b.byte_err, %idx_ok
  %b.byte.i8 = trunc i64 %s.byte.val to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len24 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap25 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data26 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len24, %b.cap25
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %idx_ok
  %5 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap25, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum27 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf28 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf28, label %str_overflow_abort30, label %b.new.buf.len29

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len29
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data32 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len33 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data32, i64 %b.cur.len33
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len33, 1
  %b.nul = getelementptr i8, ptr %b.cur.data32, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep34, align 8
  br label %loop.latch.98

b.new.buf.len29:                                  ; preds = %str_overflow_abort30, %b.grow
  %arena.cur31 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 %sum27)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data26, i64 %b.len24, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len24
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort30:                             ; preds = %b.grow
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len29

b.freeze.check:                                   ; preds = %loop.exit.98
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data37, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data37, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data37, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len36, 1
  %arena.cur38 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data37, i64 %b.freeze.len36, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len36
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.98
  %b.freeze.data39 = phi ptr [ %b.freeze.data37, %loop.exit.98 ], [ %b.freeze.data37, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur40 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len36, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data39, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load35, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load35, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load35, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define ptr @"str::replace_first"(ptr %0, ptr %1, ptr %2) #1 {
entry:
  %var.after = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.lo = alloca i64, align 8
  %var.ls = alloca i64, align 8
  %var.idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var.new_s = alloca ptr, align 8
  %var.old = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.old, align 8
  store ptr %2, ptr %var.new_s, align 8
  %var.load = load ptr, ptr %var.old, align 8
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
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load3 = load ptr, ptr %var.s, align 8
  ret ptr %var.load3

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.s, align 8
  %var.load5 = load ptr, ptr %var.old, align 8
  %call.res = call { i1, i64 } @"str::find"(ptr %var.load4, ptr %var.load5)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then6, label %choice.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then6:                                     ; preds = %choice.exit
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._, align 8
  store i64 %ram.pay, ptr %var.idx, align 8
  %var.load8 = load ptr, ptr %var.s, align 8
  %str.len.query9 = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 0
  %str.len.query10 = load i64, ptr %str.len.query9, align 8
  %str.len.query11 = and i64 %str.len.query10, 281474976710655
  %str.tag12 = lshr i64 %str.len.query10, 48
  %str.immortal13 = icmp eq i64 %str.tag12, 0
  br i1 %str.immortal13, label %str_ok15, label %str_gen_check14

choice.else:                                      ; preds = %choice.exit
  %var.load241 = load ptr, ptr %var.s, align 8
  br label %choice.exit7

choice.exit7:                                     ; preds = %choice.else, %b.freeze.done
  %choice.res = phi ptr [ %builder.freeze, %b.freeze.done ], [ %var.load241, %choice.else ]
  ret ptr %choice.res

str_gen_check14:                                  ; preds = %choice.then6
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %str.tag12)
  br i1 %tag.valid18, label %str_ok15, label %str_stale16

str_ok15:                                         ; preds = %str_stale16, %str_gen_check14, %choice.then6
  store i64 %str.len.query11, ptr %var.ls, align 8
  %var.load19 = load ptr, ptr %var.old, align 8
  %str.len.query20 = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 0
  %str.len.query21 = load i64, ptr %str.len.query20, align 8
  %str.len.query22 = and i64 %str.len.query21, 281474976710655
  %str.tag23 = lshr i64 %str.len.query21, 48
  %str.immortal24 = icmp eq i64 %str.tag23, 0
  br i1 %str.immortal24, label %str_ok26, label %str_gen_check25

str_stale16:                                      ; preds = %str_gen_check14
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok15

str_gen_check25:                                  ; preds = %str_ok15
  %arena.cur28 = call ptr @dva_arena_current()
  %tag.valid29 = call i1 @dva_arena_validate_tag(ptr %arena.cur28, i64 %str.tag23)
  br i1 %tag.valid29, label %str_ok26, label %str_stale27

str_ok26:                                         ; preds = %str_stale27, %str_gen_check25, %str_ok15
  store i64 %str.len.query22, ptr %var.lo, align 8
  %var.load30 = load i64, ptr %var.ls, align 8
  %var.load31 = load i64, ptr %var.lo, align 8
  %subtmp = sub i64 %var.load30, %var.load31
  %var.load32 = load ptr, ptr %var.new_s, align 8
  %str.len.query33 = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 0
  %str.len.query34 = load i64, ptr %str.len.query33, align 8
  %str.len.query35 = and i64 %str.len.query34, 281474976710655
  %str.tag36 = lshr i64 %str.len.query34, 48
  %str.immortal37 = icmp eq i64 %str.tag36, 0
  br i1 %str.immortal37, label %str_ok39, label %str_gen_check38

str_stale27:                                      ; preds = %str_gen_check25
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok26

str_gen_check38:                                  ; preds = %str_ok26
  %arena.cur41 = call ptr @dva_arena_current()
  %tag.valid42 = call i1 @dva_arena_validate_tag(ptr %arena.cur41, i64 %str.tag36)
  br i1 %tag.valid42, label %str_ok39, label %str_stale40

str_ok39:                                         ; preds = %str_stale40, %str_gen_check38, %str_ok26
  %addtmp = add i64 %subtmp, %str.len.query35
  %arena.cur43 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 24)
  %cap.neg = icmp slt i64 %addtmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len44

str_stale40:                                      ; preds = %str_gen_check38
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok39

b.buf.len44:                                      ; preds = %str_overflow_abort, %str_ok39
  %arena.cur45 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load46 = load i64, ptr %var.idx, align 8
  %cmptmp47 = icmp sgt i64 %var.load46, 0
  br i1 %cmptmp47, label %choice.then48, label %choice.exit49

str_overflow_abort:                               ; preds = %str_ok39
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len44

choice.then48:                                    ; preds = %b.buf.len44
  %b.load = load ptr, ptr %var.b, align 8
  %var.load50 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 0
  %s.read.len51 = load i64, ptr %s.read.len, align 8
  %s.read.len52 = and i64 %s.read.len51, 281474976710655
  %str.tag53 = lshr i64 %s.read.len51, 48
  %str.immortal54 = icmp eq i64 %str.tag53, 0
  br i1 %str.immortal54, label %str_ok56, label %str_gen_check55

choice.exit49:                                    ; preds = %b.grow_done, %b.buf.len44
  %b.load88 = load ptr, ptr %var.b, align 8
  %var.load89 = load ptr, ptr %var.new_s, align 8
  %app.str.len90 = getelementptr inbounds { i64, ptr }, ptr %var.load89, i32 0, i32 0
  %app.str.len91 = load i64, ptr %app.str.len90, align 8
  %app.str.len92 = and i64 %app.str.len91, 281474976710655
  %str.tag93 = lshr i64 %app.str.len91, 48
  %str.immortal94 = icmp eq i64 %str.tag93, 0
  br i1 %str.immortal94, label %str_ok96, label %str_gen_check95

str_gen_check55:                                  ; preds = %choice.then48
  %arena.cur58 = call ptr @dva_arena_current()
  %tag.valid59 = call i1 @dva_arena_validate_tag(ptr %arena.cur58, i64 %str.tag53)
  br i1 %tag.valid59, label %str_ok56, label %str_stale57

str_ok56:                                         ; preds = %str_stale57, %str_gen_check55, %choice.then48
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 1
  %s.read.data60 = load ptr, ptr %s.read.data, align 8
  %var.load61 = load i64, ptr %var.idx, align 8
  %rel.start = add i64 %s.read.len52, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len52
  %final.start = select i1 %start.gt.len, i64 %s.read.len52, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load61, 0
  %rel.end = add i64 %s.read.len52, %var.load61
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load61
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len52
  %final.end = select i1 %end.gt.len, i64 %s.read.len52, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data60, i64 %final.start
  %arena.cur62 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %app.str.len63 = load i64, ptr %app.str.len, align 8
  %app.str.len64 = and i64 %app.str.len63, 281474976710655
  %str.tag65 = lshr i64 %app.str.len63, 48
  %str.immortal66 = icmp eq i64 %str.tag65, 0
  br i1 %str.immortal66, label %str_ok68, label %str_gen_check67

str_stale57:                                      ; preds = %str_gen_check55
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok56

str_gen_check67:                                  ; preds = %str_ok56
  %arena.cur70 = call ptr @dva_arena_current()
  %tag.valid71 = call i1 @dva_arena_validate_tag(ptr %arena.cur70, i64 %str.tag65)
  br i1 %tag.valid71, label %str_ok68, label %str_stale69

str_ok68:                                         ; preds = %str_stale69, %str_gen_check67, %str_ok56
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len72 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len72, i64 %app.str.len64)
  %sum73 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf74 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf74, label %str_overflow_abort76, label %b.app.new.len75

str_stale69:                                      ; preds = %str_gen_check67
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok68

b.app.new.len75:                                  ; preds = %str_overflow_abort76, %str_ok68
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap77 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap77, %sum73
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort76:                             ; preds = %str_ok68
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len75

b.grow2:                                          ; preds = %b.app.new.len75
  %b.cap2 = mul i64 %b.cap77, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum73
  %b.new.cap = select i1 %b.cap.need, i64 %sum73, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len278 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data279 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum80 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf81 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf81, label %str_overflow_abort83, label %b.new.buf.len282

b.nogrow2:                                        ; preds = %b.app.new.len75
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len282
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %app.str.data85 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data86 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data86, i64 %b.app.cur.len72
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data85, i64 %app.str.len64, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data86, i64 %sum73
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep87 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum73, ptr %b.len.gep87, align 8
  br label %choice.exit49

b.new.buf.len282:                                 ; preds = %str_overflow_abort83, %b.grow2
  %arena.cur84 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur84, i64 %sum80)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data279, i64 %b.cur.len278, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len278
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort83:                             ; preds = %b.grow2
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len282

str_gen_check95:                                  ; preds = %choice.exit49
  %arena.cur98 = call ptr @dva_arena_current()
  %tag.valid99 = call i1 @dva_arena_validate_tag(ptr %arena.cur98, i64 %str.tag93)
  br i1 %tag.valid99, label %str_ok96, label %str_stale97

str_ok96:                                         ; preds = %str_stale97, %str_gen_check95, %choice.exit49
  %b.app.cur.len100 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load88, i32 0, i32 0
  %b.app.cur.len101 = load i64, ptr %b.app.cur.len100, align 8
  %b.app.new.len102 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len101, i64 %app.str.len92)
  %sum103 = extractvalue { i64, i1 } %b.app.new.len102, 0
  %ovf104 = extractvalue { i64, i1 } %b.app.new.len102, 1
  br i1 %ovf104, label %str_overflow_abort106, label %b.app.new.len105

str_stale97:                                      ; preds = %str_gen_check95
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok96

b.app.new.len105:                                 ; preds = %str_overflow_abort106, %str_ok96
  %b.cap107 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load88, i32 0, i32 2
  %b.cap108 = load i64, ptr %b.cap107, align 8
  %b.need.grow109 = icmp slt i64 %b.cap108, %sum103
  br i1 %b.need.grow109, label %b.grow2110, label %b.nogrow2111

str_overflow_abort106:                            ; preds = %str_ok96
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len105

b.grow2110:                                       ; preds = %b.app.new.len105
  %b.cap2113 = mul i64 %b.cap108, 2
  %b.cap.small114 = icmp slt i64 %b.cap2113, 16
  %b.cap.grow115 = select i1 %b.cap.small114, i64 16, i64 %b.cap2113
  %b.cap.need116 = icmp slt i64 %b.cap.grow115, %sum103
  %b.new.cap117 = select i1 %b.cap.need116, i64 %sum103, i64 %b.cap.grow115
  %b.cur.len2118 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load88, i32 0, i32 0
  %b.cur.len2119 = load i64, ptr %b.cur.len2118, align 8
  %b.cur.data2120 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load88, i32 0, i32 1
  %b.cur.data2121 = load ptr, ptr %b.cur.data2120, align 8
  %b.new.buf.len2122 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap117, i64 1)
  %sum123 = extractvalue { i64, i1 } %b.new.buf.len2122, 0
  %ovf124 = extractvalue { i64, i1 } %b.new.buf.len2122, 1
  br i1 %ovf124, label %str_overflow_abort126, label %b.new.buf.len2125

b.nogrow2111:                                     ; preds = %b.app.new.len105
  br label %b.grow_done112

b.grow_done112:                                   ; preds = %b.nogrow2111, %b.new.buf.len2125
  %app.str.data132 = getelementptr inbounds { i64, ptr }, ptr %var.load89, i32 0, i32 1
  %app.str.data133 = load ptr, ptr %app.str.data132, align 8
  %b.app.data134 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load88, i32 0, i32 1
  %b.app.data135 = load ptr, ptr %b.app.data134, align 8
  %b.app.dst136 = getelementptr i8, ptr %b.app.data135, i64 %b.app.cur.len101
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst136, ptr align 1 %app.str.data133, i64 %app.str.len92, i1 false)
  %b.app.nul137 = getelementptr i8, ptr %b.app.data135, i64 %sum103
  store i8 0, ptr %b.app.nul137, align 1
  %b.len.gep138 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load88, i32 0, i32 0
  store i64 %sum103, ptr %b.len.gep138, align 8
  %var.load139 = load i64, ptr %var.idx, align 8
  %var.load140 = load i64, ptr %var.lo, align 8
  %addtmp141 = add i64 %var.load139, %var.load140
  store i64 %addtmp141, ptr %var.after, align 8
  %var.load142 = load i64, ptr %var.after, align 8
  %var.load143 = load i64, ptr %var.ls, align 8
  %cmptmp144 = icmp slt i64 %var.load142, %var.load143
  br i1 %cmptmp144, label %choice.then145, label %choice.exit146

b.new.buf.len2125:                                ; preds = %str_overflow_abort126, %b.grow2110
  %arena.cur127 = call ptr @dva_arena_current()
  %b.new.buf2128 = call ptr @dva_arena_alloc(ptr %arena.cur127, i64 %sum123)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2128, ptr align 1 %b.cur.data2121, i64 %b.cur.len2119, i1 false)
  %b.grow2.nul129 = getelementptr i8, ptr %b.new.buf2128, i64 %b.cur.len2119
  store i8 0, ptr %b.grow2.nul129, align 1
  %b.new.data2.gep130 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load88, i32 0, i32 1
  store ptr %b.new.buf2128, ptr %b.new.data2.gep130, align 8
  %b.new.cap2.gep131 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load88, i32 0, i32 2
  store i64 %b.new.cap117, ptr %b.new.cap2.gep131, align 8
  br label %b.grow_done112

str_overflow_abort126:                            ; preds = %b.grow2110
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2125

choice.then145:                                   ; preds = %b.grow_done112
  %b.load147 = load ptr, ptr %var.b, align 8
  %var.load148 = load ptr, ptr %var.s, align 8
  %s.read.len149 = getelementptr inbounds { i64, ptr }, ptr %var.load148, i32 0, i32 0
  %s.read.len150 = load i64, ptr %s.read.len149, align 8
  %s.read.len151 = and i64 %s.read.len150, 281474976710655
  %str.tag152 = lshr i64 %s.read.len150, 48
  %str.immortal153 = icmp eq i64 %str.tag152, 0
  br i1 %str.immortal153, label %str_ok155, label %str_gen_check154

choice.exit146:                                   ; preds = %b.grow_done206, %b.grow_done112
  %var.load233 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load233, i32 0, i32 0
  %b.freeze.len234 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load233, i32 0, i32 1
  %b.freeze.data235 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_gen_check154:                                 ; preds = %choice.then145
  %arena.cur157 = call ptr @dva_arena_current()
  %tag.valid158 = call i1 @dva_arena_validate_tag(ptr %arena.cur157, i64 %str.tag152)
  br i1 %tag.valid158, label %str_ok155, label %str_stale156

str_ok155:                                        ; preds = %str_stale156, %str_gen_check154, %choice.then145
  %s.read.data159 = getelementptr inbounds { i64, ptr }, ptr %var.load148, i32 0, i32 1
  %s.read.data160 = load ptr, ptr %s.read.data159, align 8
  %var.load161 = load i64, ptr %var.after, align 8
  %var.load162 = load i64, ptr %var.ls, align 8
  %start.is_neg = icmp slt i64 %var.load161, 0
  %rel.start163 = add i64 %s.read.len151, %var.load161
  %norm.start164 = select i1 %start.is_neg, i64 %rel.start163, i64 %var.load161
  %start.lt.0165 = icmp slt i64 %norm.start164, 0
  %c.start.0166 = select i1 %start.lt.0165, i64 0, i64 %norm.start164
  %start.gt.len167 = icmp sgt i64 %c.start.0166, %s.read.len151
  %final.start168 = select i1 %start.gt.len167, i64 %s.read.len151, i64 %c.start.0166
  %end.is_neg169 = icmp slt i64 %var.load162, 0
  %rel.end170 = add i64 %s.read.len151, %var.load162
  %norm.end171 = select i1 %end.is_neg169, i64 %rel.end170, i64 %var.load162
  %end.lt.0172 = icmp slt i64 %norm.end171, 0
  %c.end.0173 = select i1 %end.lt.0172, i64 0, i64 %norm.end171
  %end.gt.len174 = icmp sgt i64 %c.end.0173, %s.read.len151
  %final.end175 = select i1 %end.gt.len174, i64 %s.read.len151, i64 %c.end.0173
  %view.empty176 = icmp sle i64 %final.end175, %final.start168
  %view.len.sub177 = sub i64 %final.end175, %final.start168
  %view.len178 = select i1 %view.empty176, i64 0, i64 %view.len.sub177
  %view.data179 = getelementptr i8, ptr %s.read.data160, i64 %final.start168
  %arena.cur180 = call ptr @dva_arena_current()
  %str.view181 = call ptr @dva_arena_alloc(ptr %arena.cur180, i64 16)
  %str.build.len.gep182 = getelementptr inbounds { i64, ptr }, ptr %str.view181, i32 0, i32 0
  store i64 %view.len178, ptr %str.build.len.gep182, align 8
  %str.build.data.gep183 = getelementptr inbounds { i64, ptr }, ptr %str.view181, i32 0, i32 1
  store ptr %view.data179, ptr %str.build.data.gep183, align 8
  %app.str.len184 = getelementptr inbounds { i64, ptr }, ptr %str.view181, i32 0, i32 0
  %app.str.len185 = load i64, ptr %app.str.len184, align 8
  %app.str.len186 = and i64 %app.str.len185, 281474976710655
  %str.tag187 = lshr i64 %app.str.len185, 48
  %str.immortal188 = icmp eq i64 %str.tag187, 0
  br i1 %str.immortal188, label %str_ok190, label %str_gen_check189

str_stale156:                                     ; preds = %str_gen_check154
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok155

str_gen_check189:                                 ; preds = %str_ok155
  %arena.cur192 = call ptr @dva_arena_current()
  %tag.valid193 = call i1 @dva_arena_validate_tag(ptr %arena.cur192, i64 %str.tag187)
  br i1 %tag.valid193, label %str_ok190, label %str_stale191

str_ok190:                                        ; preds = %str_stale191, %str_gen_check189, %str_ok155
  %b.app.cur.len194 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 0
  %b.app.cur.len195 = load i64, ptr %b.app.cur.len194, align 8
  %b.app.new.len196 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len195, i64 %app.str.len186)
  %sum197 = extractvalue { i64, i1 } %b.app.new.len196, 0
  %ovf198 = extractvalue { i64, i1 } %b.app.new.len196, 1
  br i1 %ovf198, label %str_overflow_abort200, label %b.app.new.len199

str_stale191:                                     ; preds = %str_gen_check189
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok190

b.app.new.len199:                                 ; preds = %str_overflow_abort200, %str_ok190
  %b.cap201 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 2
  %b.cap202 = load i64, ptr %b.cap201, align 8
  %b.need.grow203 = icmp slt i64 %b.cap202, %sum197
  br i1 %b.need.grow203, label %b.grow2204, label %b.nogrow2205

str_overflow_abort200:                            ; preds = %str_ok190
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len199

b.grow2204:                                       ; preds = %b.app.new.len199
  %b.cap2207 = mul i64 %b.cap202, 2
  %b.cap.small208 = icmp slt i64 %b.cap2207, 16
  %b.cap.grow209 = select i1 %b.cap.small208, i64 16, i64 %b.cap2207
  %b.cap.need210 = icmp slt i64 %b.cap.grow209, %sum197
  %b.new.cap211 = select i1 %b.cap.need210, i64 %sum197, i64 %b.cap.grow209
  %b.cur.len2212 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 0
  %b.cur.len2213 = load i64, ptr %b.cur.len2212, align 8
  %b.cur.data2214 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 1
  %b.cur.data2215 = load ptr, ptr %b.cur.data2214, align 8
  %b.new.buf.len2216 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap211, i64 1)
  %sum217 = extractvalue { i64, i1 } %b.new.buf.len2216, 0
  %ovf218 = extractvalue { i64, i1 } %b.new.buf.len2216, 1
  br i1 %ovf218, label %str_overflow_abort220, label %b.new.buf.len2219

b.nogrow2205:                                     ; preds = %b.app.new.len199
  br label %b.grow_done206

b.grow_done206:                                   ; preds = %b.nogrow2205, %b.new.buf.len2219
  %app.str.data226 = getelementptr inbounds { i64, ptr }, ptr %str.view181, i32 0, i32 1
  %app.str.data227 = load ptr, ptr %app.str.data226, align 8
  %b.app.data228 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 1
  %b.app.data229 = load ptr, ptr %b.app.data228, align 8
  %b.app.dst230 = getelementptr i8, ptr %b.app.data229, i64 %b.app.cur.len195
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst230, ptr align 1 %app.str.data227, i64 %app.str.len186, i1 false)
  %b.app.nul231 = getelementptr i8, ptr %b.app.data229, i64 %sum197
  store i8 0, ptr %b.app.nul231, align 1
  %b.len.gep232 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 0
  store i64 %sum197, ptr %b.len.gep232, align 8
  br label %choice.exit146

b.new.buf.len2219:                                ; preds = %str_overflow_abort220, %b.grow2204
  %arena.cur221 = call ptr @dva_arena_current()
  %b.new.buf2222 = call ptr @dva_arena_alloc(ptr %arena.cur221, i64 %sum217)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2222, ptr align 1 %b.cur.data2215, i64 %b.cur.len2213, i1 false)
  %b.grow2.nul223 = getelementptr i8, ptr %b.new.buf2222, i64 %b.cur.len2213
  store i8 0, ptr %b.grow2.nul223, align 1
  %b.new.data2.gep224 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 1
  store ptr %b.new.buf2222, ptr %b.new.data2.gep224, align 8
  %b.new.cap2.gep225 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 2
  store i64 %b.new.cap211, ptr %b.new.cap2.gep225, align 8
  br label %b.grow_done206

str_overflow_abort220:                            ; preds = %b.grow2204
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2219

b.freeze.check:                                   ; preds = %choice.exit146
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data235, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data235, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data235, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len234, 1
  %arena.cur236 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur236, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data235, i64 %b.freeze.len234, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len234
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit146
  %b.freeze.data237 = phi ptr [ %b.freeze.data235, %choice.exit146 ], [ %b.freeze.data235, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur238 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur238, i64 16)
  %str.build.len.gep239 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len234, ptr %str.build.len.gep239, align 8
  %str.build.data.gep240 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data237, ptr %str.build.data.gep240, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load233, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load233, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load233, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit7
}

define ptr @"str::replace"(ptr %0, ptr %1, ptr %2) #1 {
entry:
  %var.idx = alloca i64, align 8
  %var._135 = alloca i64, align 8
  %var._120 = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.99 = alloca i64, align 8
  %loop.idx.99 = alloca i64, align 8
  %"var.pos'" = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.first_idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var.ls = alloca i64, align 8
  %var.lo = alloca i64, align 8
  %var.new_s = alloca ptr, align 8
  %var.old = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.old, align 8
  store ptr %2, ptr %var.new_s, align 8
  %var.load = load ptr, ptr %var.old, align 8
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
  store i64 %str.len.query2, ptr %var.lo, align 8
  %var.load3 = load i64, ptr %var.lo, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.s, align 8
  ret ptr %var.load4

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load5 = load ptr, ptr %var.s, align 8
  %str.len.query6 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %str.len.query7 = load i64, ptr %str.len.query6, align 8
  %str.len.query8 = and i64 %str.len.query7, 281474976710655
  %str.tag9 = lshr i64 %str.len.query7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check11:                                  ; preds = %choice.exit
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid15 = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %str.tag9)
  br i1 %tag.valid15, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %choice.exit
  store i64 %str.len.query8, ptr %var.ls, align 8
  %var.load16 = load ptr, ptr %var.s, align 8
  %var.load17 = load ptr, ptr %var.old, align 8
  %call.res = call { i1, i64 } @"str::find"(ptr %var.load16, ptr %var.load17)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then18, label %choice.else

str_stale13:                                      ; preds = %str_gen_check11
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

choice.then18:                                    ; preds = %str_ok12
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._, align 8
  store i64 %ram.pay, ptr %var.first_idx, align 8
  %var.load20 = load i64, ptr %var.ls, align 8
  %addtmp = add i64 %var.load20, 16
  %arena.cur21 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 24)
  %cap.neg = icmp slt i64 %addtmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len22

choice.else:                                      ; preds = %str_ok12
  %var.load376 = load ptr, ptr %var.s, align 8
  br label %choice.exit19

choice.exit19:                                    ; preds = %choice.else, %b.freeze.done
  %choice.res = phi ptr [ %builder.freeze, %b.freeze.done ], [ %var.load376, %choice.else ]
  ret ptr %choice.res

b.buf.len22:                                      ; preds = %str_overflow_abort, %choice.then18
  %arena.cur23 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load24 = load i64, ptr %var.first_idx, align 8
  %cmptmp25 = icmp sgt i64 %var.load24, 0
  br i1 %cmptmp25, label %choice.then26, label %choice.exit27

str_overflow_abort:                               ; preds = %choice.then18
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len22

choice.then26:                                    ; preds = %b.buf.len22
  %b.load = load ptr, ptr %var.b, align 8
  %var.load28 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %s.read.len29 = load i64, ptr %s.read.len, align 8
  %s.read.len30 = and i64 %s.read.len29, 281474976710655
  %str.tag31 = lshr i64 %s.read.len29, 48
  %str.immortal32 = icmp eq i64 %str.tag31, 0
  br i1 %str.immortal32, label %str_ok34, label %str_gen_check33

choice.exit27:                                    ; preds = %b.grow_done, %b.buf.len22
  %b.load66 = load ptr, ptr %var.b, align 8
  %var.load67 = load ptr, ptr %var.new_s, align 8
  %app.str.len68 = getelementptr inbounds { i64, ptr }, ptr %var.load67, i32 0, i32 0
  %app.str.len69 = load i64, ptr %app.str.len68, align 8
  %app.str.len70 = and i64 %app.str.len69, 281474976710655
  %str.tag71 = lshr i64 %app.str.len69, 48
  %str.immortal72 = icmp eq i64 %str.tag71, 0
  br i1 %str.immortal72, label %str_ok74, label %str_gen_check73

str_gen_check33:                                  ; preds = %choice.then26
  %arena.cur36 = call ptr @dva_arena_current()
  %tag.valid37 = call i1 @dva_arena_validate_tag(ptr %arena.cur36, i64 %str.tag31)
  br i1 %tag.valid37, label %str_ok34, label %str_stale35

str_ok34:                                         ; preds = %str_stale35, %str_gen_check33, %choice.then26
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %s.read.data38 = load ptr, ptr %s.read.data, align 8
  %var.load39 = load i64, ptr %var.first_idx, align 8
  %rel.start = add i64 %s.read.len30, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len30
  %final.start = select i1 %start.gt.len, i64 %s.read.len30, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load39, 0
  %rel.end = add i64 %s.read.len30, %var.load39
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load39
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len30
  %final.end = select i1 %end.gt.len, i64 %s.read.len30, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data38, i64 %final.start
  %arena.cur40 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %app.str.len41 = load i64, ptr %app.str.len, align 8
  %app.str.len42 = and i64 %app.str.len41, 281474976710655
  %str.tag43 = lshr i64 %app.str.len41, 48
  %str.immortal44 = icmp eq i64 %str.tag43, 0
  br i1 %str.immortal44, label %str_ok46, label %str_gen_check45

str_stale35:                                      ; preds = %str_gen_check33
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok34

str_gen_check45:                                  ; preds = %str_ok34
  %arena.cur48 = call ptr @dva_arena_current()
  %tag.valid49 = call i1 @dva_arena_validate_tag(ptr %arena.cur48, i64 %str.tag43)
  br i1 %tag.valid49, label %str_ok46, label %str_stale47

str_ok46:                                         ; preds = %str_stale47, %str_gen_check45, %str_ok34
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len50 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len50, i64 %app.str.len42)
  %sum51 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf52 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf52, label %str_overflow_abort54, label %b.app.new.len53

str_stale47:                                      ; preds = %str_gen_check45
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok46

b.app.new.len53:                                  ; preds = %str_overflow_abort54, %str_ok46
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap55 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap55, %sum51
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort54:                             ; preds = %str_ok46
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len53

b.grow2:                                          ; preds = %b.app.new.len53
  %b.cap2 = mul i64 %b.cap55, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum51
  %b.new.cap = select i1 %b.cap.need, i64 %sum51, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len256 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data257 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum58 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf59 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf59, label %str_overflow_abort61, label %b.new.buf.len260

b.nogrow2:                                        ; preds = %b.app.new.len53
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len260
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %app.str.data63 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data64 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data64, i64 %b.app.cur.len50
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data63, i64 %app.str.len42, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data64, i64 %sum51
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep65 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum51, ptr %b.len.gep65, align 8
  br label %choice.exit27

b.new.buf.len260:                                 ; preds = %str_overflow_abort61, %b.grow2
  %arena.cur62 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 %sum58)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data257, i64 %b.cur.len256, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len256
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort61:                             ; preds = %b.grow2
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len260

str_gen_check73:                                  ; preds = %choice.exit27
  %arena.cur76 = call ptr @dva_arena_current()
  %tag.valid77 = call i1 @dva_arena_validate_tag(ptr %arena.cur76, i64 %str.tag71)
  br i1 %tag.valid77, label %str_ok74, label %str_stale75

str_ok74:                                         ; preds = %str_stale75, %str_gen_check73, %choice.exit27
  %b.app.cur.len78 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load66, i32 0, i32 0
  %b.app.cur.len79 = load i64, ptr %b.app.cur.len78, align 8
  %b.app.new.len80 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len79, i64 %app.str.len70)
  %sum81 = extractvalue { i64, i1 } %b.app.new.len80, 0
  %ovf82 = extractvalue { i64, i1 } %b.app.new.len80, 1
  br i1 %ovf82, label %str_overflow_abort84, label %b.app.new.len83

str_stale75:                                      ; preds = %str_gen_check73
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok74

b.app.new.len83:                                  ; preds = %str_overflow_abort84, %str_ok74
  %b.cap85 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load66, i32 0, i32 2
  %b.cap86 = load i64, ptr %b.cap85, align 8
  %b.need.grow87 = icmp slt i64 %b.cap86, %sum81
  br i1 %b.need.grow87, label %b.grow288, label %b.nogrow289

str_overflow_abort84:                             ; preds = %str_ok74
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len83

b.grow288:                                        ; preds = %b.app.new.len83
  %b.cap291 = mul i64 %b.cap86, 2
  %b.cap.small92 = icmp slt i64 %b.cap291, 16
  %b.cap.grow93 = select i1 %b.cap.small92, i64 16, i64 %b.cap291
  %b.cap.need94 = icmp slt i64 %b.cap.grow93, %sum81
  %b.new.cap95 = select i1 %b.cap.need94, i64 %sum81, i64 %b.cap.grow93
  %b.cur.len296 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load66, i32 0, i32 0
  %b.cur.len297 = load i64, ptr %b.cur.len296, align 8
  %b.cur.data298 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load66, i32 0, i32 1
  %b.cur.data299 = load ptr, ptr %b.cur.data298, align 8
  %b.new.buf.len2100 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap95, i64 1)
  %sum101 = extractvalue { i64, i1 } %b.new.buf.len2100, 0
  %ovf102 = extractvalue { i64, i1 } %b.new.buf.len2100, 1
  br i1 %ovf102, label %str_overflow_abort104, label %b.new.buf.len2103

b.nogrow289:                                      ; preds = %b.app.new.len83
  br label %b.grow_done90

b.grow_done90:                                    ; preds = %b.nogrow289, %b.new.buf.len2103
  %app.str.data110 = getelementptr inbounds { i64, ptr }, ptr %var.load67, i32 0, i32 1
  %app.str.data111 = load ptr, ptr %app.str.data110, align 8
  %b.app.data112 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load66, i32 0, i32 1
  %b.app.data113 = load ptr, ptr %b.app.data112, align 8
  %b.app.dst114 = getelementptr i8, ptr %b.app.data113, i64 %b.app.cur.len79
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst114, ptr align 1 %app.str.data111, i64 %app.str.len70, i1 false)
  %b.app.nul115 = getelementptr i8, ptr %b.app.data113, i64 %sum81
  store i8 0, ptr %b.app.nul115, align 1
  %b.len.gep116 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load66, i32 0, i32 0
  store i64 %sum81, ptr %b.len.gep116, align 8
  %var.load117 = load i64, ptr %var.first_idx, align 8
  %var.load118 = load i64, ptr %var.lo, align 8
  %addtmp119 = add i64 %var.load117, %var.load118
  store i64 %addtmp119, ptr %"var.pos'", align 8
  store i64 0, ptr %loop.idx.99, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  br label %loop.header.99

b.new.buf.len2103:                                ; preds = %str_overflow_abort104, %b.grow288
  %arena.cur105 = call ptr @dva_arena_current()
  %b.new.buf2106 = call ptr @dva_arena_alloc(ptr %arena.cur105, i64 %sum101)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2106, ptr align 1 %b.cur.data299, i64 %b.cur.len297, i1 false)
  %b.grow2.nul107 = getelementptr i8, ptr %b.new.buf2106, i64 %b.cur.len297
  store i8 0, ptr %b.grow2.nul107, align 1
  %b.new.data2.gep108 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load66, i32 0, i32 1
  store ptr %b.new.buf2106, ptr %b.new.data2.gep108, align 8
  %b.new.cap2.gep109 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load66, i32 0, i32 2
  store i64 %b.new.cap95, ptr %b.new.cap2.gep109, align 8
  br label %b.grow_done90

str_overflow_abort104:                            ; preds = %b.grow288
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2103

loop.header.99:                                   ; preds = %loop.latch.99, %b.grow_done90
  %counter.load = load i64, ptr %loop.idx.99, align 8
  br label %loop.body.99

loop.body.99:                                     ; preds = %loop.header.99
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.99, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._120, align 8
  %var.load121 = load i64, ptr %"var.pos'", align 8
  %var.load122 = load i64, ptr %var.ls, align 8
  %cmptmp123 = icmp sge i64 %var.load121, %var.load122
  br i1 %cmptmp123, label %choice.then124, label %choice.exit125

loop.exit.nat.99:                                 ; No predecessors!
  br label %loop.exit.99

loop.latch.99:                                    ; preds = %choice.exit133
  %step.val = load i64, ptr %loop.step.99, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.99, align 8
  br label %loop.header.99

loop.exit.99:                                     ; preds = %b.grow_done341, %choice.then124, %loop.exit.nat.99
  store i64 %cycle.prev.u, ptr %var._, align 8
  %var.load368 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load368, i32 0, i32 0
  %b.freeze.len369 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load368, i32 0, i32 1
  %b.freeze.data370 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.then124:                                   ; preds = %loop.body.99
  br label %loop.exit.99

choice.exit125:                                   ; preds = %loop.body.99
  %var.load126 = load ptr, ptr %var.s, align 8
  %var.load127 = load ptr, ptr %var.old, align 8
  %var.load128 = load i64, ptr %"var.pos'", align 8
  %call.res129 = call { i1, i64 } @"str::find_from"(ptr %var.load126, ptr %var.load127, i64 %var.load128)
  %ram.tag130 = extractvalue { i1, i64 } %call.res129, 0
  br i1 %ram.tag130, label %choice.then131, label %choice.else132

choice.then131:                                   ; preds = %choice.exit125
  %ram.pay134 = extractvalue { i1, i64 } %call.res129, 1
  store i64 %ram.pay134, ptr %var._135, align 8
  store i64 %ram.pay134, ptr %var.idx, align 8
  %var.load136 = load i64, ptr %var.idx, align 8
  %var.load137 = load i64, ptr %"var.pos'", align 8
  %cmptmp138 = icmp sgt i64 %var.load136, %var.load137
  br i1 %cmptmp138, label %choice.then139, label %choice.exit140

choice.else132:                                   ; preds = %choice.exit125
  %b.load281 = load ptr, ptr %var.b, align 8
  %var.load282 = load ptr, ptr %var.s, align 8
  %s.read.len283 = getelementptr inbounds { i64, ptr }, ptr %var.load282, i32 0, i32 0
  %s.read.len284 = load i64, ptr %s.read.len283, align 8
  %s.read.len285 = and i64 %s.read.len284, 281474976710655
  %str.tag286 = lshr i64 %s.read.len284, 48
  %str.immortal287 = icmp eq i64 %str.tag286, 0
  br i1 %str.immortal287, label %str_ok289, label %str_gen_check288

choice.exit133:                                   ; preds = %b.grow_done251
  br label %loop.latch.99

choice.then139:                                   ; preds = %choice.then131
  %b.load141 = load ptr, ptr %var.b, align 8
  %var.load142 = load ptr, ptr %var.s, align 8
  %s.read.len143 = getelementptr inbounds { i64, ptr }, ptr %var.load142, i32 0, i32 0
  %s.read.len144 = load i64, ptr %s.read.len143, align 8
  %s.read.len145 = and i64 %s.read.len144, 281474976710655
  %str.tag146 = lshr i64 %s.read.len144, 48
  %str.immortal147 = icmp eq i64 %str.tag146, 0
  br i1 %str.immortal147, label %str_ok149, label %str_gen_check148

choice.exit140:                                   ; preds = %b.grow_done200, %choice.then131
  %b.load227 = load ptr, ptr %var.b, align 8
  %var.load228 = load ptr, ptr %var.new_s, align 8
  %app.str.len229 = getelementptr inbounds { i64, ptr }, ptr %var.load228, i32 0, i32 0
  %app.str.len230 = load i64, ptr %app.str.len229, align 8
  %app.str.len231 = and i64 %app.str.len230, 281474976710655
  %str.tag232 = lshr i64 %app.str.len230, 48
  %str.immortal233 = icmp eq i64 %str.tag232, 0
  br i1 %str.immortal233, label %str_ok235, label %str_gen_check234

str_gen_check148:                                 ; preds = %choice.then139
  %arena.cur151 = call ptr @dva_arena_current()
  %tag.valid152 = call i1 @dva_arena_validate_tag(ptr %arena.cur151, i64 %str.tag146)
  br i1 %tag.valid152, label %str_ok149, label %str_stale150

str_ok149:                                        ; preds = %str_stale150, %str_gen_check148, %choice.then139
  %s.read.data153 = getelementptr inbounds { i64, ptr }, ptr %var.load142, i32 0, i32 1
  %s.read.data154 = load ptr, ptr %s.read.data153, align 8
  %var.load155 = load i64, ptr %"var.pos'", align 8
  %var.load156 = load i64, ptr %var.idx, align 8
  %start.is_neg = icmp slt i64 %var.load155, 0
  %rel.start157 = add i64 %s.read.len145, %var.load155
  %norm.start158 = select i1 %start.is_neg, i64 %rel.start157, i64 %var.load155
  %start.lt.0159 = icmp slt i64 %norm.start158, 0
  %c.start.0160 = select i1 %start.lt.0159, i64 0, i64 %norm.start158
  %start.gt.len161 = icmp sgt i64 %c.start.0160, %s.read.len145
  %final.start162 = select i1 %start.gt.len161, i64 %s.read.len145, i64 %c.start.0160
  %end.is_neg163 = icmp slt i64 %var.load156, 0
  %rel.end164 = add i64 %s.read.len145, %var.load156
  %norm.end165 = select i1 %end.is_neg163, i64 %rel.end164, i64 %var.load156
  %end.lt.0166 = icmp slt i64 %norm.end165, 0
  %c.end.0167 = select i1 %end.lt.0166, i64 0, i64 %norm.end165
  %end.gt.len168 = icmp sgt i64 %c.end.0167, %s.read.len145
  %final.end169 = select i1 %end.gt.len168, i64 %s.read.len145, i64 %c.end.0167
  %view.empty170 = icmp sle i64 %final.end169, %final.start162
  %view.len.sub171 = sub i64 %final.end169, %final.start162
  %view.len172 = select i1 %view.empty170, i64 0, i64 %view.len.sub171
  %view.data173 = getelementptr i8, ptr %s.read.data154, i64 %final.start162
  %arena.cur174 = call ptr @dva_arena_current()
  %str.view175 = call ptr @dva_arena_alloc(ptr %arena.cur174, i64 16)
  %str.build.len.gep176 = getelementptr inbounds { i64, ptr }, ptr %str.view175, i32 0, i32 0
  store i64 %view.len172, ptr %str.build.len.gep176, align 8
  %str.build.data.gep177 = getelementptr inbounds { i64, ptr }, ptr %str.view175, i32 0, i32 1
  store ptr %view.data173, ptr %str.build.data.gep177, align 8
  %app.str.len178 = getelementptr inbounds { i64, ptr }, ptr %str.view175, i32 0, i32 0
  %app.str.len179 = load i64, ptr %app.str.len178, align 8
  %app.str.len180 = and i64 %app.str.len179, 281474976710655
  %str.tag181 = lshr i64 %app.str.len179, 48
  %str.immortal182 = icmp eq i64 %str.tag181, 0
  br i1 %str.immortal182, label %str_ok184, label %str_gen_check183

str_stale150:                                     ; preds = %str_gen_check148
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok149

str_gen_check183:                                 ; preds = %str_ok149
  %arena.cur186 = call ptr @dva_arena_current()
  %tag.valid187 = call i1 @dva_arena_validate_tag(ptr %arena.cur186, i64 %str.tag181)
  br i1 %tag.valid187, label %str_ok184, label %str_stale185

str_ok184:                                        ; preds = %str_stale185, %str_gen_check183, %str_ok149
  %b.app.cur.len188 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load141, i32 0, i32 0
  %b.app.cur.len189 = load i64, ptr %b.app.cur.len188, align 8
  %b.app.new.len190 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len189, i64 %app.str.len180)
  %sum191 = extractvalue { i64, i1 } %b.app.new.len190, 0
  %ovf192 = extractvalue { i64, i1 } %b.app.new.len190, 1
  br i1 %ovf192, label %str_overflow_abort194, label %b.app.new.len193

str_stale185:                                     ; preds = %str_gen_check183
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok184

b.app.new.len193:                                 ; preds = %str_overflow_abort194, %str_ok184
  %b.cap195 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load141, i32 0, i32 2
  %b.cap196 = load i64, ptr %b.cap195, align 8
  %b.need.grow197 = icmp slt i64 %b.cap196, %sum191
  br i1 %b.need.grow197, label %b.grow2198, label %b.nogrow2199

str_overflow_abort194:                            ; preds = %str_ok184
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len193

b.grow2198:                                       ; preds = %b.app.new.len193
  %b.cap2201 = mul i64 %b.cap196, 2
  %b.cap.small202 = icmp slt i64 %b.cap2201, 16
  %b.cap.grow203 = select i1 %b.cap.small202, i64 16, i64 %b.cap2201
  %b.cap.need204 = icmp slt i64 %b.cap.grow203, %sum191
  %b.new.cap205 = select i1 %b.cap.need204, i64 %sum191, i64 %b.cap.grow203
  %b.cur.len2206 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load141, i32 0, i32 0
  %b.cur.len2207 = load i64, ptr %b.cur.len2206, align 8
  %b.cur.data2208 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load141, i32 0, i32 1
  %b.cur.data2209 = load ptr, ptr %b.cur.data2208, align 8
  %b.new.buf.len2210 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap205, i64 1)
  %sum211 = extractvalue { i64, i1 } %b.new.buf.len2210, 0
  %ovf212 = extractvalue { i64, i1 } %b.new.buf.len2210, 1
  br i1 %ovf212, label %str_overflow_abort214, label %b.new.buf.len2213

b.nogrow2199:                                     ; preds = %b.app.new.len193
  br label %b.grow_done200

b.grow_done200:                                   ; preds = %b.nogrow2199, %b.new.buf.len2213
  %app.str.data220 = getelementptr inbounds { i64, ptr }, ptr %str.view175, i32 0, i32 1
  %app.str.data221 = load ptr, ptr %app.str.data220, align 8
  %b.app.data222 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load141, i32 0, i32 1
  %b.app.data223 = load ptr, ptr %b.app.data222, align 8
  %b.app.dst224 = getelementptr i8, ptr %b.app.data223, i64 %b.app.cur.len189
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst224, ptr align 1 %app.str.data221, i64 %app.str.len180, i1 false)
  %b.app.nul225 = getelementptr i8, ptr %b.app.data223, i64 %sum191
  store i8 0, ptr %b.app.nul225, align 1
  %b.len.gep226 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load141, i32 0, i32 0
  store i64 %sum191, ptr %b.len.gep226, align 8
  br label %choice.exit140

b.new.buf.len2213:                                ; preds = %str_overflow_abort214, %b.grow2198
  %arena.cur215 = call ptr @dva_arena_current()
  %b.new.buf2216 = call ptr @dva_arena_alloc(ptr %arena.cur215, i64 %sum211)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2216, ptr align 1 %b.cur.data2209, i64 %b.cur.len2207, i1 false)
  %b.grow2.nul217 = getelementptr i8, ptr %b.new.buf2216, i64 %b.cur.len2207
  store i8 0, ptr %b.grow2.nul217, align 1
  %b.new.data2.gep218 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load141, i32 0, i32 1
  store ptr %b.new.buf2216, ptr %b.new.data2.gep218, align 8
  %b.new.cap2.gep219 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load141, i32 0, i32 2
  store i64 %b.new.cap205, ptr %b.new.cap2.gep219, align 8
  br label %b.grow_done200

str_overflow_abort214:                            ; preds = %b.grow2198
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2213

str_gen_check234:                                 ; preds = %choice.exit140
  %arena.cur237 = call ptr @dva_arena_current()
  %tag.valid238 = call i1 @dva_arena_validate_tag(ptr %arena.cur237, i64 %str.tag232)
  br i1 %tag.valid238, label %str_ok235, label %str_stale236

str_ok235:                                        ; preds = %str_stale236, %str_gen_check234, %choice.exit140
  %b.app.cur.len239 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load227, i32 0, i32 0
  %b.app.cur.len240 = load i64, ptr %b.app.cur.len239, align 8
  %b.app.new.len241 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len240, i64 %app.str.len231)
  %sum242 = extractvalue { i64, i1 } %b.app.new.len241, 0
  %ovf243 = extractvalue { i64, i1 } %b.app.new.len241, 1
  br i1 %ovf243, label %str_overflow_abort245, label %b.app.new.len244

str_stale236:                                     ; preds = %str_gen_check234
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok235

b.app.new.len244:                                 ; preds = %str_overflow_abort245, %str_ok235
  %b.cap246 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load227, i32 0, i32 2
  %b.cap247 = load i64, ptr %b.cap246, align 8
  %b.need.grow248 = icmp slt i64 %b.cap247, %sum242
  br i1 %b.need.grow248, label %b.grow2249, label %b.nogrow2250

str_overflow_abort245:                            ; preds = %str_ok235
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len244

b.grow2249:                                       ; preds = %b.app.new.len244
  %b.cap2252 = mul i64 %b.cap247, 2
  %b.cap.small253 = icmp slt i64 %b.cap2252, 16
  %b.cap.grow254 = select i1 %b.cap.small253, i64 16, i64 %b.cap2252
  %b.cap.need255 = icmp slt i64 %b.cap.grow254, %sum242
  %b.new.cap256 = select i1 %b.cap.need255, i64 %sum242, i64 %b.cap.grow254
  %b.cur.len2257 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load227, i32 0, i32 0
  %b.cur.len2258 = load i64, ptr %b.cur.len2257, align 8
  %b.cur.data2259 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load227, i32 0, i32 1
  %b.cur.data2260 = load ptr, ptr %b.cur.data2259, align 8
  %b.new.buf.len2261 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap256, i64 1)
  %sum262 = extractvalue { i64, i1 } %b.new.buf.len2261, 0
  %ovf263 = extractvalue { i64, i1 } %b.new.buf.len2261, 1
  br i1 %ovf263, label %str_overflow_abort265, label %b.new.buf.len2264

b.nogrow2250:                                     ; preds = %b.app.new.len244
  br label %b.grow_done251

b.grow_done251:                                   ; preds = %b.nogrow2250, %b.new.buf.len2264
  %app.str.data271 = getelementptr inbounds { i64, ptr }, ptr %var.load228, i32 0, i32 1
  %app.str.data272 = load ptr, ptr %app.str.data271, align 8
  %b.app.data273 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load227, i32 0, i32 1
  %b.app.data274 = load ptr, ptr %b.app.data273, align 8
  %b.app.dst275 = getelementptr i8, ptr %b.app.data274, i64 %b.app.cur.len240
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst275, ptr align 1 %app.str.data272, i64 %app.str.len231, i1 false)
  %b.app.nul276 = getelementptr i8, ptr %b.app.data274, i64 %sum242
  store i8 0, ptr %b.app.nul276, align 1
  %b.len.gep277 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load227, i32 0, i32 0
  store i64 %sum242, ptr %b.len.gep277, align 8
  %var.load278 = load i64, ptr %var.idx, align 8
  %var.load279 = load i64, ptr %var.lo, align 8
  %addtmp280 = add i64 %var.load278, %var.load279
  store i64 %addtmp280, ptr %"var.pos'", align 8
  br label %choice.exit133

b.new.buf.len2264:                                ; preds = %str_overflow_abort265, %b.grow2249
  %arena.cur266 = call ptr @dva_arena_current()
  %b.new.buf2267 = call ptr @dva_arena_alloc(ptr %arena.cur266, i64 %sum262)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2267, ptr align 1 %b.cur.data2260, i64 %b.cur.len2258, i1 false)
  %b.grow2.nul268 = getelementptr i8, ptr %b.new.buf2267, i64 %b.cur.len2258
  store i8 0, ptr %b.grow2.nul268, align 1
  %b.new.data2.gep269 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load227, i32 0, i32 1
  store ptr %b.new.buf2267, ptr %b.new.data2.gep269, align 8
  %b.new.cap2.gep270 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load227, i32 0, i32 2
  store i64 %b.new.cap256, ptr %b.new.cap2.gep270, align 8
  br label %b.grow_done251

str_overflow_abort265:                            ; preds = %b.grow2249
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2264

str_gen_check288:                                 ; preds = %choice.else132
  %arena.cur291 = call ptr @dva_arena_current()
  %tag.valid292 = call i1 @dva_arena_validate_tag(ptr %arena.cur291, i64 %str.tag286)
  br i1 %tag.valid292, label %str_ok289, label %str_stale290

str_ok289:                                        ; preds = %str_stale290, %str_gen_check288, %choice.else132
  %s.read.data293 = getelementptr inbounds { i64, ptr }, ptr %var.load282, i32 0, i32 1
  %s.read.data294 = load ptr, ptr %s.read.data293, align 8
  %var.load295 = load i64, ptr %"var.pos'", align 8
  %var.load296 = load i64, ptr %var.ls, align 8
  %start.is_neg297 = icmp slt i64 %var.load295, 0
  %rel.start298 = add i64 %s.read.len285, %var.load295
  %norm.start299 = select i1 %start.is_neg297, i64 %rel.start298, i64 %var.load295
  %start.lt.0300 = icmp slt i64 %norm.start299, 0
  %c.start.0301 = select i1 %start.lt.0300, i64 0, i64 %norm.start299
  %start.gt.len302 = icmp sgt i64 %c.start.0301, %s.read.len285
  %final.start303 = select i1 %start.gt.len302, i64 %s.read.len285, i64 %c.start.0301
  %end.is_neg304 = icmp slt i64 %var.load296, 0
  %rel.end305 = add i64 %s.read.len285, %var.load296
  %norm.end306 = select i1 %end.is_neg304, i64 %rel.end305, i64 %var.load296
  %end.lt.0307 = icmp slt i64 %norm.end306, 0
  %c.end.0308 = select i1 %end.lt.0307, i64 0, i64 %norm.end306
  %end.gt.len309 = icmp sgt i64 %c.end.0308, %s.read.len285
  %final.end310 = select i1 %end.gt.len309, i64 %s.read.len285, i64 %c.end.0308
  %view.empty311 = icmp sle i64 %final.end310, %final.start303
  %view.len.sub312 = sub i64 %final.end310, %final.start303
  %view.len313 = select i1 %view.empty311, i64 0, i64 %view.len.sub312
  %view.data314 = getelementptr i8, ptr %s.read.data294, i64 %final.start303
  %arena.cur315 = call ptr @dva_arena_current()
  %str.view316 = call ptr @dva_arena_alloc(ptr %arena.cur315, i64 16)
  %str.build.len.gep317 = getelementptr inbounds { i64, ptr }, ptr %str.view316, i32 0, i32 0
  store i64 %view.len313, ptr %str.build.len.gep317, align 8
  %str.build.data.gep318 = getelementptr inbounds { i64, ptr }, ptr %str.view316, i32 0, i32 1
  store ptr %view.data314, ptr %str.build.data.gep318, align 8
  %app.str.len319 = getelementptr inbounds { i64, ptr }, ptr %str.view316, i32 0, i32 0
  %app.str.len320 = load i64, ptr %app.str.len319, align 8
  %app.str.len321 = and i64 %app.str.len320, 281474976710655
  %str.tag322 = lshr i64 %app.str.len320, 48
  %str.immortal323 = icmp eq i64 %str.tag322, 0
  br i1 %str.immortal323, label %str_ok325, label %str_gen_check324

str_stale290:                                     ; preds = %str_gen_check288
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok289

str_gen_check324:                                 ; preds = %str_ok289
  %arena.cur327 = call ptr @dva_arena_current()
  %tag.valid328 = call i1 @dva_arena_validate_tag(ptr %arena.cur327, i64 %str.tag322)
  br i1 %tag.valid328, label %str_ok325, label %str_stale326

str_ok325:                                        ; preds = %str_stale326, %str_gen_check324, %str_ok289
  %b.app.cur.len329 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load281, i32 0, i32 0
  %b.app.cur.len330 = load i64, ptr %b.app.cur.len329, align 8
  %b.app.new.len331 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len330, i64 %app.str.len321)
  %sum332 = extractvalue { i64, i1 } %b.app.new.len331, 0
  %ovf333 = extractvalue { i64, i1 } %b.app.new.len331, 1
  br i1 %ovf333, label %str_overflow_abort335, label %b.app.new.len334

str_stale326:                                     ; preds = %str_gen_check324
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok325

b.app.new.len334:                                 ; preds = %str_overflow_abort335, %str_ok325
  %b.cap336 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load281, i32 0, i32 2
  %b.cap337 = load i64, ptr %b.cap336, align 8
  %b.need.grow338 = icmp slt i64 %b.cap337, %sum332
  br i1 %b.need.grow338, label %b.grow2339, label %b.nogrow2340

str_overflow_abort335:                            ; preds = %str_ok325
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len334

b.grow2339:                                       ; preds = %b.app.new.len334
  %b.cap2342 = mul i64 %b.cap337, 2
  %b.cap.small343 = icmp slt i64 %b.cap2342, 16
  %b.cap.grow344 = select i1 %b.cap.small343, i64 16, i64 %b.cap2342
  %b.cap.need345 = icmp slt i64 %b.cap.grow344, %sum332
  %b.new.cap346 = select i1 %b.cap.need345, i64 %sum332, i64 %b.cap.grow344
  %b.cur.len2347 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load281, i32 0, i32 0
  %b.cur.len2348 = load i64, ptr %b.cur.len2347, align 8
  %b.cur.data2349 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load281, i32 0, i32 1
  %b.cur.data2350 = load ptr, ptr %b.cur.data2349, align 8
  %b.new.buf.len2351 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap346, i64 1)
  %sum352 = extractvalue { i64, i1 } %b.new.buf.len2351, 0
  %ovf353 = extractvalue { i64, i1 } %b.new.buf.len2351, 1
  br i1 %ovf353, label %str_overflow_abort355, label %b.new.buf.len2354

b.nogrow2340:                                     ; preds = %b.app.new.len334
  br label %b.grow_done341

b.grow_done341:                                   ; preds = %b.nogrow2340, %b.new.buf.len2354
  %app.str.data361 = getelementptr inbounds { i64, ptr }, ptr %str.view316, i32 0, i32 1
  %app.str.data362 = load ptr, ptr %app.str.data361, align 8
  %b.app.data363 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load281, i32 0, i32 1
  %b.app.data364 = load ptr, ptr %b.app.data363, align 8
  %b.app.dst365 = getelementptr i8, ptr %b.app.data364, i64 %b.app.cur.len330
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst365, ptr align 1 %app.str.data362, i64 %app.str.len321, i1 false)
  %b.app.nul366 = getelementptr i8, ptr %b.app.data364, i64 %sum332
  store i8 0, ptr %b.app.nul366, align 1
  %b.len.gep367 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load281, i32 0, i32 0
  store i64 %sum332, ptr %b.len.gep367, align 8
  br label %loop.exit.99

b.new.buf.len2354:                                ; preds = %str_overflow_abort355, %b.grow2339
  %arena.cur356 = call ptr @dva_arena_current()
  %b.new.buf2357 = call ptr @dva_arena_alloc(ptr %arena.cur356, i64 %sum352)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2357, ptr align 1 %b.cur.data2350, i64 %b.cur.len2348, i1 false)
  %b.grow2.nul358 = getelementptr i8, ptr %b.new.buf2357, i64 %b.cur.len2348
  store i8 0, ptr %b.grow2.nul358, align 1
  %b.new.data2.gep359 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load281, i32 0, i32 1
  store ptr %b.new.buf2357, ptr %b.new.data2.gep359, align 8
  %b.new.cap2.gep360 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load281, i32 0, i32 2
  store i64 %b.new.cap346, ptr %b.new.cap2.gep360, align 8
  br label %b.grow_done341

str_overflow_abort355:                            ; preds = %b.grow2339
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2354

b.freeze.check:                                   ; preds = %loop.exit.99
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data370, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data370, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data370, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len369, 1
  %arena.cur371 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur371, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data370, i64 %b.freeze.len369, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len369
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.99
  %b.freeze.data372 = phi ptr [ %b.freeze.data370, %loop.exit.99 ], [ %b.freeze.data370, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur373 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur373, i64 16)
  %str.build.len.gep374 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len369, ptr %str.build.len.gep374, align 8
  %str.build.data.gep375 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data372, ptr %str.build.data.gep375, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load368, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load368, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load368, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit19
}

define { i1, i64 } @"str::parse_int"(ptr %0) #1 {
entry:
  %var.d299 = alloca ptr, align 8
  %var._298 = alloca ptr, align 8
  %var.ch = alloca i64, align 8
  %var._247 = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.105 = alloca i64, align 8
  %loop.idx.105 = alloca i64, align 8
  %"var.ok'" = alloca i1, align 1
  %"var.val'" = alloca i64, align 8
  %var.d = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.is_bin_pfx = alloca i1, align 1
  %var.is_hex_pfx = alloca i1, align 1
  %var.lbody = alloca i64, align 8
  %var.body = alloca ptr, align 8
  %var.start = alloca i64, align 8
  %var.has_sign = alloca i1, align 1
  %var.neg = alloca i1, align 1
  %var.len = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.raw = alloca ptr, align 8
  store ptr %0, ptr %var.raw, align 8
  %var.load = load ptr, ptr %var.raw, align 8
  %call.res = call ptr @"str::trim"(ptr %var.load)
  store ptr %call.res, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.s, align 8
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
  store i64 %str.len.query3, ptr %var.len, align 8
  %var.load4 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load4, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  ret { i1, i64 } zeroinitializer

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load5 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %s.read.len6 = load i64, ptr %s.read.len, align 8
  %s.read.len7 = and i64 %s.read.len6, 281474976710655
  %str.tag8 = lshr i64 %s.read.len6, 48
  %str.immortal9 = icmp eq i64 %str.tag8, 0
  br i1 %str.immortal9, label %str_ok11, label %str_gen_check10

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check10:                                  ; preds = %choice.exit
  %arena.cur13 = call ptr @dva_arena_current()
  %tag.valid14 = call i1 @dva_arena_validate_tag(ptr %arena.cur13, i64 %str.tag8)
  br i1 %tag.valid14, label %str_ok11, label %str_stale12

str_ok11:                                         ; preds = %str_stale12, %str_gen_check10, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

str_stale12:                                      ; preds = %str_gen_check10
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok11

idx_big_check:                                    ; preds = %str_ok11
  %idx.big = icmp sge i64 0, %s.read.len7
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data15, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp16 = icmp eq i64 %s.byte.val, 45
  store i1 %cmptmp16, ptr %var.neg, align 1
  %var.load17 = load i1, ptr %var.neg, align 1
  br i1 %var.load17, label %or.100.then, label %or.100.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok11
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

or.100.then:                                      ; preds = %idx_ok
  br label %or.100.exit

or.100.else:                                      ; preds = %idx_ok
  %var.load18 = load ptr, ptr %var.s, align 8
  %s.read.len19 = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %s.read.len20 = load i64, ptr %s.read.len19, align 8
  %s.read.len21 = and i64 %s.read.len20, 281474976710655
  %str.tag22 = lshr i64 %s.read.len20, 48
  %str.immortal23 = icmp eq i64 %str.tag22, 0
  br i1 %str.immortal23, label %str_ok25, label %str_gen_check24

or.100.exit:                                      ; preds = %idx_ok32, %or.100.then
  %or.100.phi = phi i1 [ %var.load17, %or.100.then ], [ %cmptmp38, %idx_ok32 ]
  store i1 %or.100.phi, ptr %var.has_sign, align 1
  %var.load39 = load i1, ptr %var.has_sign, align 1
  br i1 %var.load39, label %choice.then40, label %choice.else

str_gen_check24:                                  ; preds = %or.100.else
  %arena.cur27 = call ptr @dva_arena_current()
  %tag.valid28 = call i1 @dva_arena_validate_tag(ptr %arena.cur27, i64 %str.tag22)
  br i1 %tag.valid28, label %str_ok25, label %str_stale26

str_ok25:                                         ; preds = %str_stale26, %str_gen_check24, %or.100.else
  %s.read.data29 = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 1
  %s.read.data30 = load ptr, ptr %s.read.data29, align 8
  br i1 false, label %idx_oob33, label %idx_big_check31

str_stale26:                                      ; preds = %str_gen_check24
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok25

idx_big_check31:                                  ; preds = %str_ok25
  %idx.big34 = icmp sge i64 0, %s.read.len21
  br i1 %idx.big34, label %idx_oob33, label %idx_ok32

idx_ok32:                                         ; preds = %idx_oob33, %idx_big_check31
  %s.byte.gep35 = getelementptr i8, ptr %s.read.data30, i64 0
  %s.byte36 = load i8, ptr %s.byte.gep35, align 1
  %s.byte.val37 = zext i8 %s.byte36 to i64
  %cmptmp38 = icmp eq i64 %s.byte.val37, 43
  br label %or.100.exit

idx_oob33:                                        ; preds = %idx_big_check31, %str_ok25
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok32

choice.then40:                                    ; preds = %or.100.exit
  br label %choice.exit41

choice.else:                                      ; preds = %or.100.exit
  br label %choice.exit41

choice.exit41:                                    ; preds = %choice.else, %choice.then40
  %choice.res = phi i64 [ 1, %choice.then40 ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.start, align 8
  %var.load42 = load i64, ptr %var.start, align 8
  %var.load43 = load i64, ptr %var.len, align 8
  %cmptmp44 = icmp sge i64 %var.load42, %var.load43
  br i1 %cmptmp44, label %choice.then45, label %choice.exit46

choice.then45:                                    ; preds = %choice.exit41
  ret { i1, i64 } zeroinitializer

choice.exit46:                                    ; preds = %ret.dead47, %choice.exit41
  %var.load48 = load ptr, ptr %var.s, align 8
  %s.read.len49 = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 0
  %s.read.len50 = load i64, ptr %s.read.len49, align 8
  %s.read.len51 = and i64 %s.read.len50, 281474976710655
  %str.tag52 = lshr i64 %s.read.len50, 48
  %str.immortal53 = icmp eq i64 %str.tag52, 0
  br i1 %str.immortal53, label %str_ok55, label %str_gen_check54

ret.dead47:                                       ; No predecessors!
  br label %choice.exit46

str_gen_check54:                                  ; preds = %choice.exit46
  %arena.cur57 = call ptr @dva_arena_current()
  %tag.valid58 = call i1 @dva_arena_validate_tag(ptr %arena.cur57, i64 %str.tag52)
  br i1 %tag.valid58, label %str_ok55, label %str_stale56

str_ok55:                                         ; preds = %str_stale56, %str_gen_check54, %choice.exit46
  %s.read.data59 = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 1
  %s.read.data60 = load ptr, ptr %s.read.data59, align 8
  %var.load61 = load i64, ptr %var.start, align 8
  %var.load62 = load i64, ptr %var.len, align 8
  %start.is_neg = icmp slt i64 %var.load61, 0
  %rel.start = add i64 %s.read.len51, %var.load61
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load61
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len51
  %final.start = select i1 %start.gt.len, i64 %s.read.len51, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load62, 0
  %rel.end = add i64 %s.read.len51, %var.load62
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load62
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len51
  %final.end = select i1 %end.gt.len, i64 %s.read.len51, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data60, i64 %final.start
  %arena.cur63 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %var.body, align 8
  %var.load64 = load ptr, ptr %var.body, align 8
  %str.len.query65 = getelementptr inbounds { i64, ptr }, ptr %var.load64, i32 0, i32 0
  %str.len.query66 = load i64, ptr %str.len.query65, align 8
  %str.len.query67 = and i64 %str.len.query66, 281474976710655
  %str.tag68 = lshr i64 %str.len.query66, 48
  %str.immortal69 = icmp eq i64 %str.tag68, 0
  br i1 %str.immortal69, label %str_ok71, label %str_gen_check70

str_stale56:                                      ; preds = %str_gen_check54
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok55

str_gen_check70:                                  ; preds = %str_ok55
  %arena.cur73 = call ptr @dva_arena_current()
  %tag.valid74 = call i1 @dva_arena_validate_tag(ptr %arena.cur73, i64 %str.tag68)
  br i1 %tag.valid74, label %str_ok71, label %str_stale72

str_ok71:                                         ; preds = %str_stale72, %str_gen_check70, %str_ok55
  store i64 %str.len.query67, ptr %var.lbody, align 8
  %var.load75 = load i64, ptr %var.lbody, align 8
  %cmptmp76 = icmp sgt i64 %var.load75, 2
  br i1 %cmptmp76, label %and.101.then, label %and.101.else

str_stale72:                                      ; preds = %str_gen_check70
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok71

and.101.then:                                     ; preds = %str_ok71
  %var.load77 = load ptr, ptr %var.body, align 8
  %s.read.len78 = getelementptr inbounds { i64, ptr }, ptr %var.load77, i32 0, i32 0
  %s.read.len79 = load i64, ptr %s.read.len78, align 8
  %s.read.len80 = and i64 %s.read.len79, 281474976710655
  %str.tag81 = lshr i64 %s.read.len79, 48
  %str.immortal82 = icmp eq i64 %str.tag81, 0
  br i1 %str.immortal82, label %str_ok84, label %str_gen_check83

and.101.else:                                     ; preds = %str_ok71
  br label %and.101.exit

and.101.exit:                                     ; preds = %and.101.else, %idx_ok91
  %and.101.phi = phi i1 [ %cmptmp97, %idx_ok91 ], [ %cmptmp76, %and.101.else ]
  br i1 %and.101.phi, label %and.102.then, label %and.102.else

str_gen_check83:                                  ; preds = %and.101.then
  %arena.cur86 = call ptr @dva_arena_current()
  %tag.valid87 = call i1 @dva_arena_validate_tag(ptr %arena.cur86, i64 %str.tag81)
  br i1 %tag.valid87, label %str_ok84, label %str_stale85

str_ok84:                                         ; preds = %str_stale85, %str_gen_check83, %and.101.then
  %s.read.data88 = getelementptr inbounds { i64, ptr }, ptr %var.load77, i32 0, i32 1
  %s.read.data89 = load ptr, ptr %s.read.data88, align 8
  br i1 false, label %idx_oob92, label %idx_big_check90

str_stale85:                                      ; preds = %str_gen_check83
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok84

idx_big_check90:                                  ; preds = %str_ok84
  %idx.big93 = icmp sge i64 0, %s.read.len80
  br i1 %idx.big93, label %idx_oob92, label %idx_ok91

idx_ok91:                                         ; preds = %idx_oob92, %idx_big_check90
  %s.byte.gep94 = getelementptr i8, ptr %s.read.data89, i64 0
  %s.byte95 = load i8, ptr %s.byte.gep94, align 1
  %s.byte.val96 = zext i8 %s.byte95 to i64
  %cmptmp97 = icmp eq i64 %s.byte.val96, 48
  br label %and.101.exit

idx_oob92:                                        ; preds = %idx_big_check90, %str_ok84
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok91

and.102.then:                                     ; preds = %and.101.exit
  %var.load98 = load ptr, ptr %var.body, align 8
  %s.read.len99 = getelementptr inbounds { i64, ptr }, ptr %var.load98, i32 0, i32 0
  %s.read.len100 = load i64, ptr %s.read.len99, align 8
  %s.read.len101 = and i64 %s.read.len100, 281474976710655
  %str.tag102 = lshr i64 %s.read.len100, 48
  %str.immortal103 = icmp eq i64 %str.tag102, 0
  br i1 %str.immortal103, label %str_ok105, label %str_gen_check104

and.102.else:                                     ; preds = %and.101.exit
  br label %and.102.exit

and.102.exit:                                     ; preds = %and.102.else, %choice.exit118
  %and.102.phi = phi i1 [ %choice.res120, %choice.exit118 ], [ %and.101.phi, %and.102.else ]
  store i1 %and.102.phi, ptr %var.is_hex_pfx, align 1
  %var.load121 = load i64, ptr %var.lbody, align 8
  %cmptmp122 = icmp sgt i64 %var.load121, 2
  br i1 %cmptmp122, label %and.103.then, label %and.103.else

str_gen_check104:                                 ; preds = %and.102.then
  %arena.cur107 = call ptr @dva_arena_current()
  %tag.valid108 = call i1 @dva_arena_validate_tag(ptr %arena.cur107, i64 %str.tag102)
  br i1 %tag.valid108, label %str_ok105, label %str_stale106

str_ok105:                                        ; preds = %str_stale106, %str_gen_check104, %and.102.then
  %s.read.data109 = getelementptr inbounds { i64, ptr }, ptr %var.load98, i32 0, i32 1
  %s.read.data110 = load ptr, ptr %s.read.data109, align 8
  br i1 false, label %idx_oob113, label %idx_big_check111

str_stale106:                                     ; preds = %str_gen_check104
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok105

idx_big_check111:                                 ; preds = %str_ok105
  %idx.big114 = icmp sge i64 1, %s.read.len101
  br i1 %idx.big114, label %idx_oob113, label %idx_ok112

idx_ok112:                                        ; preds = %idx_oob113, %idx_big_check111
  %s.byte.gep115 = getelementptr i8, ptr %s.read.data110, i64 1
  %s.byte116 = load i8, ptr %s.byte.gep115, align 1
  %s.byte.val117 = zext i8 %s.byte116 to i64
  %val.match = icmp eq i64 %s.byte.val117, 120
  %val.match119 = icmp eq i64 %s.byte.val117, 88
  %case.or = or i1 %val.match, %val.match119
  br i1 %case.or, label %choice.case, label %choice.next

idx_oob113:                                       ; preds = %idx_big_check111, %str_ok105
  %11 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok112

choice.exit118:                                   ; preds = %choice.next, %choice.case
  %choice.res120 = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br label %and.102.exit

choice.case:                                      ; preds = %idx_ok112
  br label %choice.exit118

choice.next:                                      ; preds = %idx_ok112
  br label %choice.exit118

and.103.then:                                     ; preds = %and.102.exit
  %var.load123 = load ptr, ptr %var.body, align 8
  %s.read.len124 = getelementptr inbounds { i64, ptr }, ptr %var.load123, i32 0, i32 0
  %s.read.len125 = load i64, ptr %s.read.len124, align 8
  %s.read.len126 = and i64 %s.read.len125, 281474976710655
  %str.tag127 = lshr i64 %s.read.len125, 48
  %str.immortal128 = icmp eq i64 %str.tag127, 0
  br i1 %str.immortal128, label %str_ok130, label %str_gen_check129

and.103.else:                                     ; preds = %and.102.exit
  br label %and.103.exit

and.103.exit:                                     ; preds = %and.103.else, %idx_ok137
  %and.103.phi = phi i1 [ %cmptmp143, %idx_ok137 ], [ %cmptmp122, %and.103.else ]
  br i1 %and.103.phi, label %and.104.then, label %and.104.else

str_gen_check129:                                 ; preds = %and.103.then
  %arena.cur132 = call ptr @dva_arena_current()
  %tag.valid133 = call i1 @dva_arena_validate_tag(ptr %arena.cur132, i64 %str.tag127)
  br i1 %tag.valid133, label %str_ok130, label %str_stale131

str_ok130:                                        ; preds = %str_stale131, %str_gen_check129, %and.103.then
  %s.read.data134 = getelementptr inbounds { i64, ptr }, ptr %var.load123, i32 0, i32 1
  %s.read.data135 = load ptr, ptr %s.read.data134, align 8
  br i1 false, label %idx_oob138, label %idx_big_check136

str_stale131:                                     ; preds = %str_gen_check129
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok130

idx_big_check136:                                 ; preds = %str_ok130
  %idx.big139 = icmp sge i64 0, %s.read.len126
  br i1 %idx.big139, label %idx_oob138, label %idx_ok137

idx_ok137:                                        ; preds = %idx_oob138, %idx_big_check136
  %s.byte.gep140 = getelementptr i8, ptr %s.read.data135, i64 0
  %s.byte141 = load i8, ptr %s.byte.gep140, align 1
  %s.byte.val142 = zext i8 %s.byte141 to i64
  %cmptmp143 = icmp eq i64 %s.byte.val142, 48
  br label %and.103.exit

idx_oob138:                                       ; preds = %idx_big_check136, %str_ok130
  %13 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok137

and.104.then:                                     ; preds = %and.103.exit
  %var.load144 = load ptr, ptr %var.body, align 8
  %s.read.len145 = getelementptr inbounds { i64, ptr }, ptr %var.load144, i32 0, i32 0
  %s.read.len146 = load i64, ptr %s.read.len145, align 8
  %s.read.len147 = and i64 %s.read.len146, 281474976710655
  %str.tag148 = lshr i64 %s.read.len146, 48
  %str.immortal149 = icmp eq i64 %str.tag148, 0
  br i1 %str.immortal149, label %str_ok151, label %str_gen_check150

and.104.else:                                     ; preds = %and.103.exit
  br label %and.104.exit

and.104.exit:                                     ; preds = %and.104.else, %choice.exit164
  %and.104.phi = phi i1 [ %choice.res170, %choice.exit164 ], [ %and.103.phi, %and.104.else ]
  store i1 %and.104.phi, ptr %var.is_bin_pfx, align 1
  %var.load171 = load i1, ptr %var.is_hex_pfx, align 1
  br i1 %var.load171, label %choice.then172, label %choice.else173

str_gen_check150:                                 ; preds = %and.104.then
  %arena.cur153 = call ptr @dva_arena_current()
  %tag.valid154 = call i1 @dva_arena_validate_tag(ptr %arena.cur153, i64 %str.tag148)
  br i1 %tag.valid154, label %str_ok151, label %str_stale152

str_ok151:                                        ; preds = %str_stale152, %str_gen_check150, %and.104.then
  %s.read.data155 = getelementptr inbounds { i64, ptr }, ptr %var.load144, i32 0, i32 1
  %s.read.data156 = load ptr, ptr %s.read.data155, align 8
  br i1 false, label %idx_oob159, label %idx_big_check157

str_stale152:                                     ; preds = %str_gen_check150
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok151

idx_big_check157:                                 ; preds = %str_ok151
  %idx.big160 = icmp sge i64 1, %s.read.len147
  br i1 %idx.big160, label %idx_oob159, label %idx_ok158

idx_ok158:                                        ; preds = %idx_oob159, %idx_big_check157
  %s.byte.gep161 = getelementptr i8, ptr %s.read.data156, i64 1
  %s.byte162 = load i8, ptr %s.byte.gep161, align 1
  %s.byte.val163 = zext i8 %s.byte162 to i64
  %val.match167 = icmp eq i64 %s.byte.val163, 98
  %val.match168 = icmp eq i64 %s.byte.val163, 66
  %case.or169 = or i1 %val.match167, %val.match168
  br i1 %case.or169, label %choice.case165, label %choice.next166

idx_oob159:                                       ; preds = %idx_big_check157, %str_ok151
  %15 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok158

choice.exit164:                                   ; preds = %choice.next166, %choice.case165
  %choice.res170 = phi i1 [ true, %choice.case165 ], [ false, %choice.next166 ]
  br label %and.104.exit

choice.case165:                                   ; preds = %idx_ok158
  br label %choice.exit164

choice.next166:                                   ; preds = %idx_ok158
  br label %choice.exit164

choice.then172:                                   ; preds = %and.104.exit
  %var.load175 = load ptr, ptr %var.body, align 8
  %s.read.len176 = getelementptr inbounds { i64, ptr }, ptr %var.load175, i32 0, i32 0
  %s.read.len177 = load i64, ptr %s.read.len176, align 8
  %s.read.len178 = and i64 %s.read.len177, 281474976710655
  %str.tag179 = lshr i64 %s.read.len177, 48
  %str.immortal180 = icmp eq i64 %str.tag179, 0
  br i1 %str.immortal180, label %str_ok182, label %str_gen_check181

choice.else173:                                   ; preds = %and.104.exit
  %var.load242 = load i1, ptr %var.is_bin_pfx, align 1
  br i1 %var.load242, label %choice.then243, label %choice.else244

choice.exit174:                                   ; preds = %choice.exit245, %choice.exit213
  %choice.res333 = phi { i1, i64 } [ %choice.res241, %choice.exit213 ], [ %choice.res332, %choice.exit245 ]
  ret { i1, i64 } %choice.res333

str_gen_check181:                                 ; preds = %choice.then172
  %arena.cur184 = call ptr @dva_arena_current()
  %tag.valid185 = call i1 @dva_arena_validate_tag(ptr %arena.cur184, i64 %str.tag179)
  br i1 %tag.valid185, label %str_ok182, label %str_stale183

str_ok182:                                        ; preds = %str_stale183, %str_gen_check181, %choice.then172
  %s.read.data186 = getelementptr inbounds { i64, ptr }, ptr %var.load175, i32 0, i32 1
  %s.read.data187 = load ptr, ptr %s.read.data186, align 8
  %var.load188 = load i64, ptr %var.lbody, align 8
  %rel.start189 = add i64 %s.read.len178, 2
  %norm.start190 = select i1 false, i64 %rel.start189, i64 2
  %start.lt.0191 = icmp slt i64 %norm.start190, 0
  %c.start.0192 = select i1 %start.lt.0191, i64 0, i64 %norm.start190
  %start.gt.len193 = icmp sgt i64 %c.start.0192, %s.read.len178
  %final.start194 = select i1 %start.gt.len193, i64 %s.read.len178, i64 %c.start.0192
  %end.is_neg195 = icmp slt i64 %var.load188, 0
  %rel.end196 = add i64 %s.read.len178, %var.load188
  %norm.end197 = select i1 %end.is_neg195, i64 %rel.end196, i64 %var.load188
  %end.lt.0198 = icmp slt i64 %norm.end197, 0
  %c.end.0199 = select i1 %end.lt.0198, i64 0, i64 %norm.end197
  %end.gt.len200 = icmp sgt i64 %c.end.0199, %s.read.len178
  %final.end201 = select i1 %end.gt.len200, i64 %s.read.len178, i64 %c.end.0199
  %view.empty202 = icmp sle i64 %final.end201, %final.start194
  %view.len.sub203 = sub i64 %final.end201, %final.start194
  %view.len204 = select i1 %view.empty202, i64 0, i64 %view.len.sub203
  %view.data205 = getelementptr i8, ptr %s.read.data187, i64 %final.start194
  %arena.cur206 = call ptr @dva_arena_current()
  %str.view207 = call ptr @dva_arena_alloc(ptr %arena.cur206, i64 16)
  %str.build.len.gep208 = getelementptr inbounds { i64, ptr }, ptr %str.view207, i32 0, i32 0
  store i64 %view.len204, ptr %str.build.len.gep208, align 8
  %str.build.data.gep209 = getelementptr inbounds { i64, ptr }, ptr %str.view207, i32 0, i32 1
  store ptr %view.data205, ptr %str.build.data.gep209, align 8
  %call.res210 = call ptr @"str::to_hex"(ptr %str.view207)
  %niche.ne.null = icmp ne ptr %call.res210, null
  br i1 %niche.ne.null, label %choice.then211, label %choice.else212

str_stale183:                                     ; preds = %str_gen_check181
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok182

choice.then211:                                   ; preds = %str_ok182
  store ptr %call.res210, ptr %var._, align 8
  store ptr %call.res210, ptr %var.d, align 8
  %var.load214 = load ptr, ptr %var.d, align 8
  %fld.gep = getelementptr inbounds { i64, ptr }, ptr %var.load214, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %str.len.query215 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %str.len.query216 = load i64, ptr %str.len.query215, align 8
  %str.len.query217 = and i64 %str.len.query216, 281474976710655
  %str.tag218 = lshr i64 %str.len.query216, 48
  %str.immortal219 = icmp eq i64 %str.tag218, 0
  br i1 %str.immortal219, label %str_ok221, label %str_gen_check220

choice.else212:                                   ; preds = %str_ok182
  br label %choice.exit213

choice.exit213:                                   ; preds = %choice.else212, %choice.exit228
  %choice.res241 = phi { i1, i64 } [ %choice.res240, %choice.exit228 ], [ zeroinitializer, %choice.else212 ]
  br label %choice.exit174

str_gen_check220:                                 ; preds = %choice.then211
  %arena.cur223 = call ptr @dva_arena_current()
  %tag.valid224 = call i1 @dva_arena_validate_tag(ptr %arena.cur223, i64 %str.tag218)
  br i1 %tag.valid224, label %str_ok221, label %str_stale222

str_ok221:                                        ; preds = %str_stale222, %str_gen_check220, %choice.then211
  %cmptmp225 = icmp eq i64 %str.len.query217, 0
  br i1 %cmptmp225, label %choice.then226, label %choice.else227

str_stale222:                                     ; preds = %str_gen_check220
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok221

choice.then226:                                   ; preds = %str_ok221
  %var.load229 = load i1, ptr %var.neg, align 1
  br i1 %var.load229, label %choice.then230, label %choice.else231

choice.else227:                                   ; preds = %str_ok221
  br label %choice.exit228

choice.exit228:                                   ; preds = %choice.else227, %choice.exit232
  %choice.res240 = phi { i1, i64 } [ %ram.pay, %choice.exit232 ], [ zeroinitializer, %choice.else227 ]
  br label %choice.exit213

choice.then230:                                   ; preds = %choice.then226
  %var.load233 = load ptr, ptr %var.d, align 8
  %fld.gep234 = getelementptr inbounds { i64, ptr }, ptr %var.load233, i32 0, i32 0
  %fld.load235 = load i64, ptr %fld.gep234, align 8
  %negtmp = sub i64 0, %fld.load235
  br label %choice.exit232

choice.else231:                                   ; preds = %choice.then226
  %var.load236 = load ptr, ptr %var.d, align 8
  %fld.gep237 = getelementptr inbounds { i64, ptr }, ptr %var.load236, i32 0, i32 0
  %fld.load238 = load i64, ptr %fld.gep237, align 8
  br label %choice.exit232

choice.exit232:                                   ; preds = %choice.else231, %choice.then230
  %choice.res239 = phi i64 [ %negtmp, %choice.then230 ], [ %fld.load238, %choice.else231 ]
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %choice.res239, 1
  br label %choice.exit228

choice.then243:                                   ; preds = %choice.else173
  store i64 0, ptr %"var.val'", align 8
  store i1 true, ptr %"var.ok'", align 1
  %var.load246 = load i64, ptr %var.lbody, align 8
  store i64 2, ptr %loop.idx.105, align 8
  br label %loop.header.105

choice.else244:                                   ; preds = %choice.else173
  %var.load292 = load ptr, ptr %var.body, align 8
  %call.res293 = call ptr @"str::to_int"(ptr %var.load292)
  %niche.ne.null294 = icmp ne ptr %call.res293, null
  br i1 %niche.ne.null294, label %choice.then295, label %choice.else296

choice.exit245:                                   ; preds = %choice.exit297, %choice.exit281
  %choice.res332 = phi { i1, i64 } [ %choice.res291, %choice.exit281 ], [ %choice.res331, %choice.exit297 ]
  br label %choice.exit174

loop.header.105:                                  ; preds = %loop.latch.105, %choice.then243
  %counter.load = load i64, ptr %loop.idx.105, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load246
  br i1 %loop.cond, label %loop.body.105, label %loop.exit.nat.105

loop.body.105:                                    ; preds = %loop.header.105
  %loop.rel.i = sub i64 %counter.load, 2
  store i64 1, ptr %loop.step.105, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._247, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load248 = load ptr, ptr %var.body, align 8
  %s.read.len249 = getelementptr inbounds { i64, ptr }, ptr %var.load248, i32 0, i32 0
  %s.read.len250 = load i64, ptr %s.read.len249, align 8
  %s.read.len251 = and i64 %s.read.len250, 281474976710655
  %str.tag252 = lshr i64 %s.read.len250, 48
  %str.immortal253 = icmp eq i64 %str.tag252, 0
  br i1 %str.immortal253, label %str_ok255, label %str_gen_check254

loop.exit.nat.105:                                ; preds = %loop.header.105
  br label %loop.exit.105

loop.latch.105:                                   ; preds = %choice.exit275
  %step.val = load i64, ptr %loop.step.105, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.105, align 8
  br label %loop.header.105

loop.exit.105:                                    ; preds = %choice.else274, %loop.exit.nat.105
  %var.load278 = load i1, ptr %"var.ok'", align 1
  br i1 %var.load278, label %choice.then279, label %choice.else280

str_gen_check254:                                 ; preds = %loop.body.105
  %arena.cur257 = call ptr @dva_arena_current()
  %tag.valid258 = call i1 @dva_arena_validate_tag(ptr %arena.cur257, i64 %str.tag252)
  br i1 %tag.valid258, label %str_ok255, label %str_stale256

str_ok255:                                        ; preds = %str_stale256, %str_gen_check254, %loop.body.105
  %s.read.data259 = getelementptr inbounds { i64, ptr }, ptr %var.load248, i32 0, i32 1
  %s.read.data260 = load ptr, ptr %s.read.data259, align 8
  %var.load261 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load261, 0
  br i1 %idx.neg, label %idx_oob264, label %idx_big_check262

str_stale256:                                     ; preds = %str_gen_check254
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok255

idx_big_check262:                                 ; preds = %str_ok255
  %idx.big265 = icmp sge i64 %var.load261, %s.read.len251
  br i1 %idx.big265, label %idx_oob264, label %idx_ok263

idx_ok263:                                        ; preds = %idx_oob264, %idx_big_check262
  %s.byte.gep266 = getelementptr i8, ptr %s.read.data260, i64 %var.load261
  %s.byte267 = load i8, ptr %s.byte.gep266, align 1
  %s.byte.val268 = zext i8 %s.byte267 to i64
  store i64 %s.byte.val268, ptr %var.ch, align 8
  %var.load269 = load i64, ptr %var.ch, align 8
  %cmptmp270 = icmp eq i64 %var.load269, 48
  br i1 %cmptmp270, label %or.106.then, label %or.106.else

idx_oob264:                                       ; preds = %idx_big_check262, %str_ok255
  %19 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok263

or.106.then:                                      ; preds = %idx_ok263
  br label %or.106.exit

or.106.else:                                      ; preds = %idx_ok263
  %var.load271 = load i64, ptr %var.ch, align 8
  %cmptmp272 = icmp eq i64 %var.load271, 49
  br label %or.106.exit

or.106.exit:                                      ; preds = %or.106.else, %or.106.then
  %or.106.phi = phi i1 [ %cmptmp270, %or.106.then ], [ %cmptmp272, %or.106.else ]
  br i1 %or.106.phi, label %choice.then273, label %choice.else274

choice.then273:                                   ; preds = %or.106.exit
  %var.load276 = load i64, ptr %"var.val'", align 8
  %multmp = mul i64 %var.load276, 2
  %var.load277 = load i64, ptr %var.ch, align 8
  %subtmp = sub i64 %var.load277, 48
  %addtmp = add i64 %multmp, %subtmp
  store i64 %addtmp, ptr %"var.val'", align 8
  br label %choice.exit275

choice.else274:                                   ; preds = %or.106.exit
  store i1 false, ptr %"var.ok'", align 1
  br label %loop.exit.105

choice.exit275:                                   ; preds = %choice.then273
  br label %loop.latch.105

choice.then279:                                   ; preds = %loop.exit.105
  %var.load282 = load i1, ptr %var.neg, align 1
  br i1 %var.load282, label %choice.then283, label %choice.else284

choice.else280:                                   ; preds = %loop.exit.105
  br label %choice.exit281

choice.exit281:                                   ; preds = %choice.else280, %choice.exit285
  %choice.res291 = phi { i1, i64 } [ %ram.pay290, %choice.exit285 ], [ zeroinitializer, %choice.else280 ]
  br label %choice.exit245

choice.then283:                                   ; preds = %choice.then279
  %var.load286 = load i64, ptr %"var.val'", align 8
  %negtmp287 = sub i64 0, %var.load286
  br label %choice.exit285

choice.else284:                                   ; preds = %choice.then279
  %var.load288 = load i64, ptr %"var.val'", align 8
  br label %choice.exit285

choice.exit285:                                   ; preds = %choice.else284, %choice.then283
  %choice.res289 = phi i64 [ %negtmp287, %choice.then283 ], [ %var.load288, %choice.else284 ]
  %ram.pay290 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %choice.res289, 1
  br label %choice.exit281

choice.then295:                                   ; preds = %choice.else244
  store ptr %call.res293, ptr %var._298, align 8
  store ptr %call.res293, ptr %var.d299, align 8
  %var.load300 = load ptr, ptr %var.d299, align 8
  %fld.gep301 = getelementptr inbounds { i64, ptr }, ptr %var.load300, i32 0, i32 1
  %fld.load302 = load ptr, ptr %fld.gep301, align 8
  %str.len.query303 = getelementptr inbounds { i64, ptr }, ptr %fld.load302, i32 0, i32 0
  %str.len.query304 = load i64, ptr %str.len.query303, align 8
  %str.len.query305 = and i64 %str.len.query304, 281474976710655
  %str.tag306 = lshr i64 %str.len.query304, 48
  %str.immortal307 = icmp eq i64 %str.tag306, 0
  br i1 %str.immortal307, label %str_ok309, label %str_gen_check308

choice.else296:                                   ; preds = %choice.else244
  br label %choice.exit297

choice.exit297:                                   ; preds = %choice.else296, %choice.exit316
  %choice.res331 = phi { i1, i64 } [ %choice.res330, %choice.exit316 ], [ zeroinitializer, %choice.else296 ]
  br label %choice.exit245

str_gen_check308:                                 ; preds = %choice.then295
  %arena.cur311 = call ptr @dva_arena_current()
  %tag.valid312 = call i1 @dva_arena_validate_tag(ptr %arena.cur311, i64 %str.tag306)
  br i1 %tag.valid312, label %str_ok309, label %str_stale310

str_ok309:                                        ; preds = %str_stale310, %str_gen_check308, %choice.then295
  %cmptmp313 = icmp eq i64 %str.len.query305, 0
  br i1 %cmptmp313, label %choice.then314, label %choice.else315

str_stale310:                                     ; preds = %str_gen_check308
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok309

choice.then314:                                   ; preds = %str_ok309
  %var.load317 = load i1, ptr %var.neg, align 1
  br i1 %var.load317, label %choice.then318, label %choice.else319

choice.else315:                                   ; preds = %str_ok309
  br label %choice.exit316

choice.exit316:                                   ; preds = %choice.else315, %choice.exit320
  %choice.res330 = phi { i1, i64 } [ %ram.pay329, %choice.exit320 ], [ zeroinitializer, %choice.else315 ]
  br label %choice.exit297

choice.then318:                                   ; preds = %choice.then314
  %var.load321 = load ptr, ptr %var.d299, align 8
  %fld.gep322 = getelementptr inbounds { i64, ptr }, ptr %var.load321, i32 0, i32 0
  %fld.load323 = load i64, ptr %fld.gep322, align 8
  %negtmp324 = sub i64 0, %fld.load323
  br label %choice.exit320

choice.else319:                                   ; preds = %choice.then314
  %var.load325 = load ptr, ptr %var.d299, align 8
  %fld.gep326 = getelementptr inbounds { i64, ptr }, ptr %var.load325, i32 0, i32 0
  %fld.load327 = load i64, ptr %fld.gep326, align 8
  br label %choice.exit320

choice.exit320:                                   ; preds = %choice.else319, %choice.then318
  %choice.res328 = phi i64 [ %negtmp324, %choice.then318 ], [ %fld.load327, %choice.else319 ]
  %ram.pay329 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %choice.res328, 1
  br label %choice.exit316
}

define { i1, i64 } @"str::parse_float"(ptr %0) #1 {
entry:
  %var.pow10 = alloca double, align 8
  %var._304 = alloca i64, align 8
  %var._i303 = alloca i64, align 8
  %loop.step.115 = alloca i64, align 8
  %loop.idx.115 = alloca i64, align 8
  %"var.exp_digits'" = alloca i64, align 8
  %"var.exp_val'" = alloca i64, align 8
  %var.exp_neg = alloca i1, align 1
  %"var.res'" = alloca double, align 8
  %var._133 = alloca i64, align 8
  %var._i132 = alloca i64, align 8
  %loop.step.111 = alloca i64, align 8
  %loop.idx.111 = alloca i64, align 8
  %"var.frac_scale'" = alloca double, align 8
  %"var.frac_val'" = alloca double, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.108 = alloca i64, align 8
  %loop.idx.108 = alloca i64, align 8
  %"var.digits'" = alloca i64, align 8
  %"var.int_val'" = alloca double, align 8
  %var.neg = alloca i1, align 1
  %"var.i'" = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.raw = alloca ptr, align 8
  store ptr %0, ptr %var.raw, align 8
  %var.load = load ptr, ptr %var.raw, align 8
  %call.res = call ptr @"str::trim"(ptr %var.load)
  store ptr %call.res, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.s, align 8
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
  store i64 %str.len.query3, ptr %var.len, align 8
  %var.load4 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load4, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  ret { i1, i64 } zeroinitializer

choice.exit:                                      ; preds = %ret.dead, %str_ok
  store i64 0, ptr %"var.i'", align 8
  %var.load5 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %s.read.len6 = load i64, ptr %s.read.len, align 8
  %s.read.len7 = and i64 %s.read.len6, 281474976710655
  %str.tag8 = lshr i64 %s.read.len6, 48
  %str.immortal9 = icmp eq i64 %str.tag8, 0
  br i1 %str.immortal9, label %str_ok11, label %str_gen_check10

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check10:                                  ; preds = %choice.exit
  %arena.cur13 = call ptr @dva_arena_current()
  %tag.valid14 = call i1 @dva_arena_validate_tag(ptr %arena.cur13, i64 %str.tag8)
  br i1 %tag.valid14, label %str_ok11, label %str_stale12

str_ok11:                                         ; preds = %str_stale12, %str_gen_check10, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

str_stale12:                                      ; preds = %str_gen_check10
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok11

idx_big_check:                                    ; preds = %str_ok11
  %idx.big = icmp sge i64 0, %s.read.len7
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data15, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp16 = icmp eq i64 %s.byte.val, 45
  store i1 %cmptmp16, ptr %var.neg, align 1
  %var.load17 = load i1, ptr %var.neg, align 1
  br i1 %var.load17, label %or.107.then, label %or.107.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok11
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

or.107.then:                                      ; preds = %idx_ok
  br label %or.107.exit

or.107.else:                                      ; preds = %idx_ok
  %var.load18 = load ptr, ptr %var.s, align 8
  %s.read.len19 = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %s.read.len20 = load i64, ptr %s.read.len19, align 8
  %s.read.len21 = and i64 %s.read.len20, 281474976710655
  %str.tag22 = lshr i64 %s.read.len20, 48
  %str.immortal23 = icmp eq i64 %str.tag22, 0
  br i1 %str.immortal23, label %str_ok25, label %str_gen_check24

or.107.exit:                                      ; preds = %idx_ok32, %or.107.then
  %or.107.phi = phi i1 [ %var.load17, %or.107.then ], [ %cmptmp38, %idx_ok32 ]
  br i1 %or.107.phi, label %choice.then39, label %choice.exit40

str_gen_check24:                                  ; preds = %or.107.else
  %arena.cur27 = call ptr @dva_arena_current()
  %tag.valid28 = call i1 @dva_arena_validate_tag(ptr %arena.cur27, i64 %str.tag22)
  br i1 %tag.valid28, label %str_ok25, label %str_stale26

str_ok25:                                         ; preds = %str_stale26, %str_gen_check24, %or.107.else
  %s.read.data29 = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 1
  %s.read.data30 = load ptr, ptr %s.read.data29, align 8
  br i1 false, label %idx_oob33, label %idx_big_check31

str_stale26:                                      ; preds = %str_gen_check24
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok25

idx_big_check31:                                  ; preds = %str_ok25
  %idx.big34 = icmp sge i64 0, %s.read.len21
  br i1 %idx.big34, label %idx_oob33, label %idx_ok32

idx_ok32:                                         ; preds = %idx_oob33, %idx_big_check31
  %s.byte.gep35 = getelementptr i8, ptr %s.read.data30, i64 0
  %s.byte36 = load i8, ptr %s.byte.gep35, align 1
  %s.byte.val37 = zext i8 %s.byte36 to i64
  %cmptmp38 = icmp eq i64 %s.byte.val37, 43
  br label %or.107.exit

idx_oob33:                                        ; preds = %idx_big_check31, %str_ok25
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok32

choice.then39:                                    ; preds = %or.107.exit
  store i64 1, ptr %"var.i'", align 8
  br label %choice.exit40

choice.exit40:                                    ; preds = %choice.then39, %or.107.exit
  %var.load41 = load i64, ptr %"var.i'", align 8
  %var.load42 = load i64, ptr %var.len, align 8
  %cmptmp43 = icmp sge i64 %var.load41, %var.load42
  br i1 %cmptmp43, label %choice.then44, label %choice.exit45

choice.then44:                                    ; preds = %choice.exit40
  ret { i1, i64 } zeroinitializer

choice.exit45:                                    ; preds = %ret.dead46, %choice.exit40
  store double 0.000000e+00, ptr %"var.int_val'", align 8
  store i64 0, ptr %"var.digits'", align 8
  store i64 0, ptr %loop.idx.108, align 8
  br label %loop.header.108

ret.dead46:                                       ; No predecessors!
  br label %choice.exit45

loop.header.108:                                  ; preds = %loop.latch.108, %choice.exit45
  %counter.load = load i64, ptr %loop.idx.108, align 8
  br label %loop.body.108

loop.body.108:                                    ; preds = %loop.header.108
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.108, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load47 = load i64, ptr %"var.i'", align 8
  %var.load48 = load i64, ptr %var.len, align 8
  %cmptmp49 = icmp slt i64 %var.load47, %var.load48
  br i1 %cmptmp49, label %and.109.then, label %and.109.else

loop.exit.nat.108:                                ; No predecessors!
  br label %loop.exit.108

loop.latch.108:                                   ; preds = %choice.exit73
  %step.val = load i64, ptr %loop.step.108, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.108, align 8
  br label %loop.header.108

loop.exit.108:                                    ; preds = %choice.else, %loop.exit.nat.108
  store double 0.000000e+00, ptr %"var.frac_val'", align 8
  store double 1.000000e+00, ptr %"var.frac_scale'", align 8
  %var.load100 = load i64, ptr %"var.i'", align 8
  %var.load101 = load i64, ptr %var.len, align 8
  %cmptmp102 = icmp slt i64 %var.load100, %var.load101
  br i1 %cmptmp102, label %and.110.then, label %and.110.else

and.109.then:                                     ; preds = %loop.body.108
  %var.load50 = load ptr, ptr %var.s, align 8
  %s.read.len51 = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 0
  %s.read.len52 = load i64, ptr %s.read.len51, align 8
  %s.read.len53 = and i64 %s.read.len52, 281474976710655
  %str.tag54 = lshr i64 %s.read.len52, 48
  %str.immortal55 = icmp eq i64 %str.tag54, 0
  br i1 %str.immortal55, label %str_ok57, label %str_gen_check56

and.109.else:                                     ; preds = %loop.body.108
  br label %and.109.exit

and.109.exit:                                     ; preds = %and.109.else, %idx_ok65
  %and.109.phi = phi i1 [ %call.res71, %idx_ok65 ], [ %cmptmp49, %and.109.else ]
  br i1 %and.109.phi, label %choice.then72, label %choice.else

str_gen_check56:                                  ; preds = %and.109.then
  %arena.cur59 = call ptr @dva_arena_current()
  %tag.valid60 = call i1 @dva_arena_validate_tag(ptr %arena.cur59, i64 %str.tag54)
  br i1 %tag.valid60, label %str_ok57, label %str_stale58

str_ok57:                                         ; preds = %str_stale58, %str_gen_check56, %and.109.then
  %s.read.data61 = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 1
  %s.read.data62 = load ptr, ptr %s.read.data61, align 8
  %var.load63 = load i64, ptr %"var.i'", align 8
  %idx.neg = icmp slt i64 %var.load63, 0
  br i1 %idx.neg, label %idx_oob66, label %idx_big_check64

str_stale58:                                      ; preds = %str_gen_check56
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok57

idx_big_check64:                                  ; preds = %str_ok57
  %idx.big67 = icmp sge i64 %var.load63, %s.read.len53
  br i1 %idx.big67, label %idx_oob66, label %idx_ok65

idx_ok65:                                         ; preds = %idx_oob66, %idx_big_check64
  %s.byte.gep68 = getelementptr i8, ptr %s.read.data62, i64 %var.load63
  %s.byte69 = load i8, ptr %s.byte.gep68, align 1
  %s.byte.val70 = zext i8 %s.byte69 to i64
  %call.res71 = call i1 @"str::is_digit"(i64 %s.byte.val70)
  br label %and.109.exit

idx_oob66:                                        ; preds = %idx_big_check64, %str_ok57
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok65

choice.then72:                                    ; preds = %and.109.exit
  %var.load74 = load double, ptr %"var.int_val'", align 8
  %fmultmp = fmul double %var.load74, 1.000000e+01
  %var.load75 = load ptr, ptr %var.s, align 8
  %s.read.len76 = getelementptr inbounds { i64, ptr }, ptr %var.load75, i32 0, i32 0
  %s.read.len77 = load i64, ptr %s.read.len76, align 8
  %s.read.len78 = and i64 %s.read.len77, 281474976710655
  %str.tag79 = lshr i64 %s.read.len77, 48
  %str.immortal80 = icmp eq i64 %str.tag79, 0
  br i1 %str.immortal80, label %str_ok82, label %str_gen_check81

choice.else:                                      ; preds = %and.109.exit
  br label %loop.exit.108

choice.exit73:                                    ; preds = %idx_ok91
  br label %loop.latch.108

str_gen_check81:                                  ; preds = %choice.then72
  %arena.cur84 = call ptr @dva_arena_current()
  %tag.valid85 = call i1 @dva_arena_validate_tag(ptr %arena.cur84, i64 %str.tag79)
  br i1 %tag.valid85, label %str_ok82, label %str_stale83

str_ok82:                                         ; preds = %str_stale83, %str_gen_check81, %choice.then72
  %s.read.data86 = getelementptr inbounds { i64, ptr }, ptr %var.load75, i32 0, i32 1
  %s.read.data87 = load ptr, ptr %s.read.data86, align 8
  %var.load88 = load i64, ptr %"var.i'", align 8
  %idx.neg89 = icmp slt i64 %var.load88, 0
  br i1 %idx.neg89, label %idx_oob92, label %idx_big_check90

str_stale83:                                      ; preds = %str_gen_check81
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok82

idx_big_check90:                                  ; preds = %str_ok82
  %idx.big93 = icmp sge i64 %var.load88, %s.read.len78
  br i1 %idx.big93, label %idx_oob92, label %idx_ok91

idx_ok91:                                         ; preds = %idx_oob92, %idx_big_check90
  %s.byte.gep94 = getelementptr i8, ptr %s.read.data87, i64 %var.load88
  %s.byte95 = load i8, ptr %s.byte.gep94, align 1
  %s.byte.val96 = zext i8 %s.byte95 to i64
  %subtmp = sub i64 %s.byte.val96, 48
  %cast.sitofp = sitofp i64 %subtmp to double
  %faddtmp = fadd double %fmultmp, %cast.sitofp
  store double %faddtmp, ptr %"var.int_val'", align 8
  %var.load97 = load i64, ptr %"var.digits'", align 8
  %addtmp = add i64 %var.load97, 1
  store i64 %addtmp, ptr %"var.digits'", align 8
  %var.load98 = load i64, ptr %"var.i'", align 8
  %addtmp99 = add i64 %var.load98, 1
  store i64 %addtmp99, ptr %"var.i'", align 8
  br label %choice.exit73

idx_oob92:                                        ; preds = %idx_big_check90, %str_ok82
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok91

and.110.then:                                     ; preds = %loop.exit.108
  %var.load103 = load ptr, ptr %var.s, align 8
  %s.read.len104 = getelementptr inbounds { i64, ptr }, ptr %var.load103, i32 0, i32 0
  %s.read.len105 = load i64, ptr %s.read.len104, align 8
  %s.read.len106 = and i64 %s.read.len105, 281474976710655
  %str.tag107 = lshr i64 %s.read.len105, 48
  %str.immortal108 = icmp eq i64 %str.tag107, 0
  br i1 %str.immortal108, label %str_ok110, label %str_gen_check109

and.110.else:                                     ; preds = %loop.exit.108
  br label %and.110.exit

and.110.exit:                                     ; preds = %and.110.else, %idx_ok119
  %and.110.phi = phi i1 [ %cmptmp125, %idx_ok119 ], [ %cmptmp102, %and.110.else ]
  br i1 %and.110.phi, label %choice.then126, label %choice.exit127

str_gen_check109:                                 ; preds = %and.110.then
  %arena.cur112 = call ptr @dva_arena_current()
  %tag.valid113 = call i1 @dva_arena_validate_tag(ptr %arena.cur112, i64 %str.tag107)
  br i1 %tag.valid113, label %str_ok110, label %str_stale111

str_ok110:                                        ; preds = %str_stale111, %str_gen_check109, %and.110.then
  %s.read.data114 = getelementptr inbounds { i64, ptr }, ptr %var.load103, i32 0, i32 1
  %s.read.data115 = load ptr, ptr %s.read.data114, align 8
  %var.load116 = load i64, ptr %"var.i'", align 8
  %idx.neg117 = icmp slt i64 %var.load116, 0
  br i1 %idx.neg117, label %idx_oob120, label %idx_big_check118

str_stale111:                                     ; preds = %str_gen_check109
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok110

idx_big_check118:                                 ; preds = %str_ok110
  %idx.big121 = icmp sge i64 %var.load116, %s.read.len106
  br i1 %idx.big121, label %idx_oob120, label %idx_ok119

idx_ok119:                                        ; preds = %idx_oob120, %idx_big_check118
  %s.byte.gep122 = getelementptr i8, ptr %s.read.data115, i64 %var.load116
  %s.byte123 = load i8, ptr %s.byte.gep122, align 1
  %s.byte.val124 = zext i8 %s.byte123 to i64
  %cmptmp125 = icmp eq i64 %s.byte.val124, 46
  br label %and.110.exit

idx_oob120:                                       ; preds = %idx_big_check118, %str_ok110
  %11 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok119

choice.then126:                                   ; preds = %and.110.exit
  %var.load128 = load i64, ptr %"var.i'", align 8
  %addtmp129 = add i64 %var.load128, 1
  store i64 %addtmp129, ptr %"var.i'", align 8
  store i64 0, ptr %loop.idx.111, align 8
  br label %loop.header.111

choice.exit127:                                   ; preds = %loop.exit.111, %and.110.exit
  %var.load198 = load i64, ptr %"var.digits'", align 8
  %cmptmp199 = icmp eq i64 %var.load198, 0
  br i1 %cmptmp199, label %choice.then200, label %choice.exit201

loop.header.111:                                  ; preds = %loop.latch.111, %choice.then126
  %counter.load130 = load i64, ptr %loop.idx.111, align 8
  br label %loop.body.111

loop.body.111:                                    ; preds = %loop.header.111
  %loop.rel.i131 = sub i64 %counter.load130, 0
  store i64 1, ptr %loop.step.111, align 8
  store i64 %loop.rel.i131, ptr %var._i132, align 8
  store i64 %counter.load130, ptr %var._133, align 8
  %var.load134 = load i64, ptr %"var.i'", align 8
  %var.load135 = load i64, ptr %var.len, align 8
  %cmptmp136 = icmp slt i64 %var.load134, %var.load135
  br i1 %cmptmp136, label %and.112.then, label %and.112.else

loop.exit.nat.111:                                ; No predecessors!
  br label %loop.exit.111

loop.latch.111:                                   ; preds = %choice.exit162
  %step.val196 = load i64, ptr %loop.step.111, align 8
  %loop.next197 = add i64 %counter.load130, %step.val196
  store i64 %loop.next197, ptr %loop.idx.111, align 8
  br label %loop.header.111

loop.exit.111:                                    ; preds = %choice.else161, %loop.exit.nat.111
  br label %choice.exit127

and.112.then:                                     ; preds = %loop.body.111
  %var.load137 = load ptr, ptr %var.s, align 8
  %s.read.len138 = getelementptr inbounds { i64, ptr }, ptr %var.load137, i32 0, i32 0
  %s.read.len139 = load i64, ptr %s.read.len138, align 8
  %s.read.len140 = and i64 %s.read.len139, 281474976710655
  %str.tag141 = lshr i64 %s.read.len139, 48
  %str.immortal142 = icmp eq i64 %str.tag141, 0
  br i1 %str.immortal142, label %str_ok144, label %str_gen_check143

and.112.else:                                     ; preds = %loop.body.111
  br label %and.112.exit

and.112.exit:                                     ; preds = %and.112.else, %idx_ok153
  %and.112.phi = phi i1 [ %call.res159, %idx_ok153 ], [ %cmptmp136, %and.112.else ]
  br i1 %and.112.phi, label %choice.then160, label %choice.else161

str_gen_check143:                                 ; preds = %and.112.then
  %arena.cur146 = call ptr @dva_arena_current()
  %tag.valid147 = call i1 @dva_arena_validate_tag(ptr %arena.cur146, i64 %str.tag141)
  br i1 %tag.valid147, label %str_ok144, label %str_stale145

str_ok144:                                        ; preds = %str_stale145, %str_gen_check143, %and.112.then
  %s.read.data148 = getelementptr inbounds { i64, ptr }, ptr %var.load137, i32 0, i32 1
  %s.read.data149 = load ptr, ptr %s.read.data148, align 8
  %var.load150 = load i64, ptr %"var.i'", align 8
  %idx.neg151 = icmp slt i64 %var.load150, 0
  br i1 %idx.neg151, label %idx_oob154, label %idx_big_check152

str_stale145:                                     ; preds = %str_gen_check143
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok144

idx_big_check152:                                 ; preds = %str_ok144
  %idx.big155 = icmp sge i64 %var.load150, %s.read.len140
  br i1 %idx.big155, label %idx_oob154, label %idx_ok153

idx_ok153:                                        ; preds = %idx_oob154, %idx_big_check152
  %s.byte.gep156 = getelementptr i8, ptr %s.read.data149, i64 %var.load150
  %s.byte157 = load i8, ptr %s.byte.gep156, align 1
  %s.byte.val158 = zext i8 %s.byte157 to i64
  %call.res159 = call i1 @"str::is_digit"(i64 %s.byte.val158)
  br label %and.112.exit

idx_oob154:                                       ; preds = %idx_big_check152, %str_ok144
  %13 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok153

choice.then160:                                   ; preds = %and.112.exit
  %var.load163 = load double, ptr %"var.frac_val'", align 8
  %fmultmp164 = fmul double %var.load163, 1.000000e+01
  %var.load165 = load ptr, ptr %var.s, align 8
  %s.read.len166 = getelementptr inbounds { i64, ptr }, ptr %var.load165, i32 0, i32 0
  %s.read.len167 = load i64, ptr %s.read.len166, align 8
  %s.read.len168 = and i64 %s.read.len167, 281474976710655
  %str.tag169 = lshr i64 %s.read.len167, 48
  %str.immortal170 = icmp eq i64 %str.tag169, 0
  br i1 %str.immortal170, label %str_ok172, label %str_gen_check171

choice.else161:                                   ; preds = %and.112.exit
  br label %loop.exit.111

choice.exit162:                                   ; preds = %idx_ok181
  br label %loop.latch.111

str_gen_check171:                                 ; preds = %choice.then160
  %arena.cur174 = call ptr @dva_arena_current()
  %tag.valid175 = call i1 @dva_arena_validate_tag(ptr %arena.cur174, i64 %str.tag169)
  br i1 %tag.valid175, label %str_ok172, label %str_stale173

str_ok172:                                        ; preds = %str_stale173, %str_gen_check171, %choice.then160
  %s.read.data176 = getelementptr inbounds { i64, ptr }, ptr %var.load165, i32 0, i32 1
  %s.read.data177 = load ptr, ptr %s.read.data176, align 8
  %var.load178 = load i64, ptr %"var.i'", align 8
  %idx.neg179 = icmp slt i64 %var.load178, 0
  br i1 %idx.neg179, label %idx_oob182, label %idx_big_check180

str_stale173:                                     ; preds = %str_gen_check171
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok172

idx_big_check180:                                 ; preds = %str_ok172
  %idx.big183 = icmp sge i64 %var.load178, %s.read.len168
  br i1 %idx.big183, label %idx_oob182, label %idx_ok181

idx_ok181:                                        ; preds = %idx_oob182, %idx_big_check180
  %s.byte.gep184 = getelementptr i8, ptr %s.read.data177, i64 %var.load178
  %s.byte185 = load i8, ptr %s.byte.gep184, align 1
  %s.byte.val186 = zext i8 %s.byte185 to i64
  %subtmp187 = sub i64 %s.byte.val186, 48
  %cast.sitofp188 = sitofp i64 %subtmp187 to double
  %faddtmp189 = fadd double %fmultmp164, %cast.sitofp188
  store double %faddtmp189, ptr %"var.frac_val'", align 8
  %var.load190 = load double, ptr %"var.frac_scale'", align 8
  %fmultmp191 = fmul double %var.load190, 1.000000e+01
  store double %fmultmp191, ptr %"var.frac_scale'", align 8
  %var.load192 = load i64, ptr %"var.digits'", align 8
  %addtmp193 = add i64 %var.load192, 1
  store i64 %addtmp193, ptr %"var.digits'", align 8
  %var.load194 = load i64, ptr %"var.i'", align 8
  %addtmp195 = add i64 %var.load194, 1
  store i64 %addtmp195, ptr %"var.i'", align 8
  br label %choice.exit162

idx_oob182:                                       ; preds = %idx_big_check180, %str_ok172
  %15 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok181

choice.then200:                                   ; preds = %choice.exit127
  ret { i1, i64 } zeroinitializer

choice.exit201:                                   ; preds = %ret.dead202, %choice.exit127
  %var.load203 = load double, ptr %"var.int_val'", align 8
  %var.load204 = load double, ptr %"var.frac_val'", align 8
  %var.load205 = load double, ptr %"var.frac_scale'", align 8
  %fdivtmp = fdiv double %var.load204, %var.load205
  %faddtmp206 = fadd double %var.load203, %fdivtmp
  store double %faddtmp206, ptr %"var.res'", align 8
  %var.load207 = load i64, ptr %"var.i'", align 8
  %var.load208 = load i64, ptr %var.len, align 8
  %cmptmp209 = icmp slt i64 %var.load207, %var.load208
  br i1 %cmptmp209, label %and.113.then, label %and.113.else

ret.dead202:                                      ; No predecessors!
  br label %choice.exit201

and.113.then:                                     ; preds = %choice.exit201
  %var.load210 = load ptr, ptr %var.s, align 8
  %s.read.len211 = getelementptr inbounds { i64, ptr }, ptr %var.load210, i32 0, i32 0
  %s.read.len212 = load i64, ptr %s.read.len211, align 8
  %s.read.len213 = and i64 %s.read.len212, 281474976710655
  %str.tag214 = lshr i64 %s.read.len212, 48
  %str.immortal215 = icmp eq i64 %str.tag214, 0
  br i1 %str.immortal215, label %str_ok217, label %str_gen_check216

and.113.else:                                     ; preds = %choice.exit201
  br label %and.113.exit

and.113.exit:                                     ; preds = %and.113.else, %choice.exit232
  %and.113.phi = phi i1 [ %choice.res, %choice.exit232 ], [ %cmptmp209, %and.113.else ]
  br i1 %and.113.phi, label %choice.then234, label %choice.exit235

str_gen_check216:                                 ; preds = %and.113.then
  %arena.cur219 = call ptr @dva_arena_current()
  %tag.valid220 = call i1 @dva_arena_validate_tag(ptr %arena.cur219, i64 %str.tag214)
  br i1 %tag.valid220, label %str_ok217, label %str_stale218

str_ok217:                                        ; preds = %str_stale218, %str_gen_check216, %and.113.then
  %s.read.data221 = getelementptr inbounds { i64, ptr }, ptr %var.load210, i32 0, i32 1
  %s.read.data222 = load ptr, ptr %s.read.data221, align 8
  %var.load223 = load i64, ptr %"var.i'", align 8
  %idx.neg224 = icmp slt i64 %var.load223, 0
  br i1 %idx.neg224, label %idx_oob227, label %idx_big_check225

str_stale218:                                     ; preds = %str_gen_check216
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok217

idx_big_check225:                                 ; preds = %str_ok217
  %idx.big228 = icmp sge i64 %var.load223, %s.read.len213
  br i1 %idx.big228, label %idx_oob227, label %idx_ok226

idx_ok226:                                        ; preds = %idx_oob227, %idx_big_check225
  %s.byte.gep229 = getelementptr i8, ptr %s.read.data222, i64 %var.load223
  %s.byte230 = load i8, ptr %s.byte.gep229, align 1
  %s.byte.val231 = zext i8 %s.byte230 to i64
  %val.match = icmp eq i64 %s.byte.val231, 101
  %val.match233 = icmp eq i64 %s.byte.val231, 69
  %case.or = or i1 %val.match, %val.match233
  br i1 %case.or, label %choice.case, label %choice.next

idx_oob227:                                       ; preds = %idx_big_check225, %str_ok217
  %17 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok226

choice.exit232:                                   ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br label %and.113.exit

choice.case:                                      ; preds = %idx_ok226
  br label %choice.exit232

choice.next:                                      ; preds = %idx_ok226
  br label %choice.exit232

choice.then234:                                   ; preds = %and.113.exit
  %var.load236 = load i64, ptr %"var.i'", align 8
  %addtmp237 = add i64 %var.load236, 1
  store i64 %addtmp237, ptr %"var.i'", align 8
  %var.load238 = load i64, ptr %"var.i'", align 8
  %var.load239 = load i64, ptr %var.len, align 8
  %cmptmp240 = icmp sge i64 %var.load238, %var.load239
  br i1 %cmptmp240, label %choice.then241, label %choice.exit242

choice.exit235:                                   ; preds = %choice.exit373, %and.113.exit
  %var.load381 = load i64, ptr %"var.i'", align 8
  %var.load382 = load i64, ptr %var.len, align 8
  %cmptmp383 = icmp ne i64 %var.load381, %var.load382
  br i1 %cmptmp383, label %choice.then384, label %choice.else385

choice.then241:                                   ; preds = %choice.then234
  ret { i1, i64 } zeroinitializer

choice.exit242:                                   ; preds = %ret.dead243, %choice.then234
  %var.load244 = load ptr, ptr %var.s, align 8
  %s.read.len245 = getelementptr inbounds { i64, ptr }, ptr %var.load244, i32 0, i32 0
  %s.read.len246 = load i64, ptr %s.read.len245, align 8
  %s.read.len247 = and i64 %s.read.len246, 281474976710655
  %str.tag248 = lshr i64 %s.read.len246, 48
  %str.immortal249 = icmp eq i64 %str.tag248, 0
  br i1 %str.immortal249, label %str_ok251, label %str_gen_check250

ret.dead243:                                      ; No predecessors!
  br label %choice.exit242

str_gen_check250:                                 ; preds = %choice.exit242
  %arena.cur253 = call ptr @dva_arena_current()
  %tag.valid254 = call i1 @dva_arena_validate_tag(ptr %arena.cur253, i64 %str.tag248)
  br i1 %tag.valid254, label %str_ok251, label %str_stale252

str_ok251:                                        ; preds = %str_stale252, %str_gen_check250, %choice.exit242
  %s.read.data255 = getelementptr inbounds { i64, ptr }, ptr %var.load244, i32 0, i32 1
  %s.read.data256 = load ptr, ptr %s.read.data255, align 8
  %var.load257 = load i64, ptr %"var.i'", align 8
  %idx.neg258 = icmp slt i64 %var.load257, 0
  br i1 %idx.neg258, label %idx_oob261, label %idx_big_check259

str_stale252:                                     ; preds = %str_gen_check250
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok251

idx_big_check259:                                 ; preds = %str_ok251
  %idx.big262 = icmp sge i64 %var.load257, %s.read.len247
  br i1 %idx.big262, label %idx_oob261, label %idx_ok260

idx_ok260:                                        ; preds = %idx_oob261, %idx_big_check259
  %s.byte.gep263 = getelementptr i8, ptr %s.read.data256, i64 %var.load257
  %s.byte264 = load i8, ptr %s.byte.gep263, align 1
  %s.byte.val265 = zext i8 %s.byte264 to i64
  %cmptmp266 = icmp eq i64 %s.byte.val265, 45
  store i1 %cmptmp266, ptr %var.exp_neg, align 1
  %var.load267 = load i1, ptr %var.exp_neg, align 1
  br i1 %var.load267, label %or.114.then, label %or.114.else

idx_oob261:                                       ; preds = %idx_big_check259, %str_ok251
  %19 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok260

or.114.then:                                      ; preds = %idx_ok260
  br label %or.114.exit

or.114.else:                                      ; preds = %idx_ok260
  %var.load268 = load ptr, ptr %var.s, align 8
  %s.read.len269 = getelementptr inbounds { i64, ptr }, ptr %var.load268, i32 0, i32 0
  %s.read.len270 = load i64, ptr %s.read.len269, align 8
  %s.read.len271 = and i64 %s.read.len270, 281474976710655
  %str.tag272 = lshr i64 %s.read.len270, 48
  %str.immortal273 = icmp eq i64 %str.tag272, 0
  br i1 %str.immortal273, label %str_ok275, label %str_gen_check274

or.114.exit:                                      ; preds = %idx_ok284, %or.114.then
  %or.114.phi = phi i1 [ %var.load267, %or.114.then ], [ %cmptmp290, %idx_ok284 ]
  br i1 %or.114.phi, label %choice.then291, label %choice.exit292

str_gen_check274:                                 ; preds = %or.114.else
  %arena.cur277 = call ptr @dva_arena_current()
  %tag.valid278 = call i1 @dva_arena_validate_tag(ptr %arena.cur277, i64 %str.tag272)
  br i1 %tag.valid278, label %str_ok275, label %str_stale276

str_ok275:                                        ; preds = %str_stale276, %str_gen_check274, %or.114.else
  %s.read.data279 = getelementptr inbounds { i64, ptr }, ptr %var.load268, i32 0, i32 1
  %s.read.data280 = load ptr, ptr %s.read.data279, align 8
  %var.load281 = load i64, ptr %"var.i'", align 8
  %idx.neg282 = icmp slt i64 %var.load281, 0
  br i1 %idx.neg282, label %idx_oob285, label %idx_big_check283

str_stale276:                                     ; preds = %str_gen_check274
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok275

idx_big_check283:                                 ; preds = %str_ok275
  %idx.big286 = icmp sge i64 %var.load281, %s.read.len271
  br i1 %idx.big286, label %idx_oob285, label %idx_ok284

idx_ok284:                                        ; preds = %idx_oob285, %idx_big_check283
  %s.byte.gep287 = getelementptr i8, ptr %s.read.data280, i64 %var.load281
  %s.byte288 = load i8, ptr %s.byte.gep287, align 1
  %s.byte.val289 = zext i8 %s.byte288 to i64
  %cmptmp290 = icmp eq i64 %s.byte.val289, 43
  br label %or.114.exit

idx_oob285:                                       ; preds = %idx_big_check283, %str_ok275
  %21 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok284

choice.then291:                                   ; preds = %or.114.exit
  %var.load293 = load i64, ptr %"var.i'", align 8
  %addtmp294 = add i64 %var.load293, 1
  store i64 %addtmp294, ptr %"var.i'", align 8
  br label %choice.exit292

choice.exit292:                                   ; preds = %choice.then291, %or.114.exit
  %var.load295 = load i64, ptr %"var.i'", align 8
  %var.load296 = load i64, ptr %var.len, align 8
  %cmptmp297 = icmp sge i64 %var.load295, %var.load296
  br i1 %cmptmp297, label %choice.then298, label %choice.exit299

choice.then298:                                   ; preds = %choice.exit292
  ret { i1, i64 } zeroinitializer

choice.exit299:                                   ; preds = %ret.dead300, %choice.exit292
  store i64 0, ptr %"var.exp_val'", align 8
  store i64 0, ptr %"var.exp_digits'", align 8
  store i64 0, ptr %loop.idx.115, align 8
  br label %loop.header.115

ret.dead300:                                      ; No predecessors!
  br label %choice.exit299

loop.header.115:                                  ; preds = %loop.latch.115, %choice.exit299
  %counter.load301 = load i64, ptr %loop.idx.115, align 8
  br label %loop.body.115

loop.body.115:                                    ; preds = %loop.header.115
  %loop.rel.i302 = sub i64 %counter.load301, 0
  store i64 1, ptr %loop.step.115, align 8
  store i64 %loop.rel.i302, ptr %var._i303, align 8
  store i64 %counter.load301, ptr %var._304, align 8
  %var.load305 = load i64, ptr %"var.i'", align 8
  %var.load306 = load i64, ptr %var.len, align 8
  %cmptmp307 = icmp slt i64 %var.load305, %var.load306
  br i1 %cmptmp307, label %and.116.then, label %and.116.else

loop.exit.nat.115:                                ; No predecessors!
  br label %loop.exit.115

loop.latch.115:                                   ; preds = %choice.exit333
  %step.val363 = load i64, ptr %loop.step.115, align 8
  %loop.next364 = add i64 %counter.load301, %step.val363
  store i64 %loop.next364, ptr %loop.idx.115, align 8
  br label %loop.header.115

loop.exit.115:                                    ; preds = %choice.else332, %loop.exit.nat.115
  %var.load365 = load i64, ptr %"var.exp_digits'", align 8
  %cmptmp366 = icmp eq i64 %var.load365, 0
  br i1 %cmptmp366, label %choice.then367, label %choice.exit368

and.116.then:                                     ; preds = %loop.body.115
  %var.load308 = load ptr, ptr %var.s, align 8
  %s.read.len309 = getelementptr inbounds { i64, ptr }, ptr %var.load308, i32 0, i32 0
  %s.read.len310 = load i64, ptr %s.read.len309, align 8
  %s.read.len311 = and i64 %s.read.len310, 281474976710655
  %str.tag312 = lshr i64 %s.read.len310, 48
  %str.immortal313 = icmp eq i64 %str.tag312, 0
  br i1 %str.immortal313, label %str_ok315, label %str_gen_check314

and.116.else:                                     ; preds = %loop.body.115
  br label %and.116.exit

and.116.exit:                                     ; preds = %and.116.else, %idx_ok324
  %and.116.phi = phi i1 [ %call.res330, %idx_ok324 ], [ %cmptmp307, %and.116.else ]
  br i1 %and.116.phi, label %choice.then331, label %choice.else332

str_gen_check314:                                 ; preds = %and.116.then
  %arena.cur317 = call ptr @dva_arena_current()
  %tag.valid318 = call i1 @dva_arena_validate_tag(ptr %arena.cur317, i64 %str.tag312)
  br i1 %tag.valid318, label %str_ok315, label %str_stale316

str_ok315:                                        ; preds = %str_stale316, %str_gen_check314, %and.116.then
  %s.read.data319 = getelementptr inbounds { i64, ptr }, ptr %var.load308, i32 0, i32 1
  %s.read.data320 = load ptr, ptr %s.read.data319, align 8
  %var.load321 = load i64, ptr %"var.i'", align 8
  %idx.neg322 = icmp slt i64 %var.load321, 0
  br i1 %idx.neg322, label %idx_oob325, label %idx_big_check323

str_stale316:                                     ; preds = %str_gen_check314
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok315

idx_big_check323:                                 ; preds = %str_ok315
  %idx.big326 = icmp sge i64 %var.load321, %s.read.len311
  br i1 %idx.big326, label %idx_oob325, label %idx_ok324

idx_ok324:                                        ; preds = %idx_oob325, %idx_big_check323
  %s.byte.gep327 = getelementptr i8, ptr %s.read.data320, i64 %var.load321
  %s.byte328 = load i8, ptr %s.byte.gep327, align 1
  %s.byte.val329 = zext i8 %s.byte328 to i64
  %call.res330 = call i1 @"str::is_digit"(i64 %s.byte.val329)
  br label %and.116.exit

idx_oob325:                                       ; preds = %idx_big_check323, %str_ok315
  %23 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok324

choice.then331:                                   ; preds = %and.116.exit
  %var.load334 = load i64, ptr %"var.exp_val'", align 8
  %multmp = mul i64 %var.load334, 10
  %var.load335 = load ptr, ptr %var.s, align 8
  %s.read.len336 = getelementptr inbounds { i64, ptr }, ptr %var.load335, i32 0, i32 0
  %s.read.len337 = load i64, ptr %s.read.len336, align 8
  %s.read.len338 = and i64 %s.read.len337, 281474976710655
  %str.tag339 = lshr i64 %s.read.len337, 48
  %str.immortal340 = icmp eq i64 %str.tag339, 0
  br i1 %str.immortal340, label %str_ok342, label %str_gen_check341

choice.else332:                                   ; preds = %and.116.exit
  br label %loop.exit.115

choice.exit333:                                   ; preds = %idx_ok351
  br label %loop.latch.115

str_gen_check341:                                 ; preds = %choice.then331
  %arena.cur344 = call ptr @dva_arena_current()
  %tag.valid345 = call i1 @dva_arena_validate_tag(ptr %arena.cur344, i64 %str.tag339)
  br i1 %tag.valid345, label %str_ok342, label %str_stale343

str_ok342:                                        ; preds = %str_stale343, %str_gen_check341, %choice.then331
  %s.read.data346 = getelementptr inbounds { i64, ptr }, ptr %var.load335, i32 0, i32 1
  %s.read.data347 = load ptr, ptr %s.read.data346, align 8
  %var.load348 = load i64, ptr %"var.i'", align 8
  %idx.neg349 = icmp slt i64 %var.load348, 0
  br i1 %idx.neg349, label %idx_oob352, label %idx_big_check350

str_stale343:                                     ; preds = %str_gen_check341
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok342

idx_big_check350:                                 ; preds = %str_ok342
  %idx.big353 = icmp sge i64 %var.load348, %s.read.len338
  br i1 %idx.big353, label %idx_oob352, label %idx_ok351

idx_ok351:                                        ; preds = %idx_oob352, %idx_big_check350
  %s.byte.gep354 = getelementptr i8, ptr %s.read.data347, i64 %var.load348
  %s.byte355 = load i8, ptr %s.byte.gep354, align 1
  %s.byte.val356 = zext i8 %s.byte355 to i64
  %subtmp357 = sub i64 %s.byte.val356, 48
  %addtmp358 = add i64 %multmp, %subtmp357
  store i64 %addtmp358, ptr %"var.exp_val'", align 8
  %var.load359 = load i64, ptr %"var.exp_digits'", align 8
  %addtmp360 = add i64 %var.load359, 1
  store i64 %addtmp360, ptr %"var.exp_digits'", align 8
  %var.load361 = load i64, ptr %"var.i'", align 8
  %addtmp362 = add i64 %var.load361, 1
  store i64 %addtmp362, ptr %"var.i'", align 8
  br label %choice.exit333

idx_oob352:                                       ; preds = %idx_big_check350, %str_ok342
  %25 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok351

choice.then367:                                   ; preds = %loop.exit.115
  ret { i1, i64 } zeroinitializer

choice.exit368:                                   ; preds = %ret.dead369, %loop.exit.115
  %var.load370 = load i1, ptr %var.exp_neg, align 1
  br i1 %var.load370, label %choice.then371, label %choice.else372

ret.dead369:                                      ; No predecessors!
  br label %choice.exit368

choice.then371:                                   ; preds = %choice.exit368
  %var.load374 = load i64, ptr %"var.exp_val'", align 8
  %negtmp = sub i64 0, %var.load374
  br label %choice.exit373

choice.else372:                                   ; preds = %choice.exit368
  %var.load375 = load i64, ptr %"var.exp_val'", align 8
  br label %choice.exit373

choice.exit373:                                   ; preds = %choice.else372, %choice.then371
  %choice.res376 = phi i64 [ %negtmp, %choice.then371 ], [ %var.load375, %choice.else372 ]
  %cast.sitofp377 = sitofp i64 %choice.res376 to double
  %pow = call double @llvm.pow.f64(double 1.000000e+01, double %cast.sitofp377)
  store double %pow, ptr %var.pow10, align 8
  %var.load378 = load double, ptr %"var.res'", align 8
  %var.load379 = load double, ptr %var.pow10, align 8
  %fmultmp380 = fmul double %var.load378, %var.load379
  store double %fmultmp380, ptr %"var.res'", align 8
  br label %choice.exit235

choice.then384:                                   ; preds = %choice.exit235
  br label %choice.exit386

choice.else385:                                   ; preds = %choice.exit235
  %var.load387 = load i1, ptr %var.neg, align 1
  br i1 %var.load387, label %choice.then388, label %choice.else389

choice.exit386:                                   ; preds = %choice.exit390, %choice.then384
  %choice.res394 = phi { i1, i64 } [ zeroinitializer, %choice.then384 ], [ %ram.pay, %choice.exit390 ]
  ret { i1, i64 } %choice.res394

choice.then388:                                   ; preds = %choice.else385
  %var.load391 = load double, ptr %"var.res'", align 8
  %fnegtmp = fneg double %var.load391
  br label %choice.exit390

choice.else389:                                   ; preds = %choice.else385
  %var.load392 = load double, ptr %"var.res'", align 8
  br label %choice.exit390

choice.exit390:                                   ; preds = %choice.else389, %choice.then388
  %choice.res393 = phi double [ %fnegtmp, %choice.then388 ], [ %var.load392, %choice.else389 ]
  %f.to.i64 = bitcast double %choice.res393 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %f.to.i64, 1
  br label %choice.exit386
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #0

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
