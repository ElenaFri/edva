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
@"var.path::SEP" = global i32 0
@str.0 = internal unnamed_addr constant [2 x i8] c"/\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.0 }
@"var.path::SEP_STR" = global ptr null
@"var.path::LIST_SEP" = global i32 0
@str.1 = internal unnamed_addr constant [2 x i8] c":\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.1 }
@"var.path::LIST_SEP_STR" = global ptr null
@"var.path::IS_WIN" = global i1 false
@clo.const = internal constant { ptr, ptr } { ptr @"path::is_posix_sep", ptr null }
@"var.path::is_posix_sep" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"path::is_win_sep", ptr null }
@"var.path::is_win_sep" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"path::is_sep", ptr null }
@"var.path::is_sep" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.3 = internal constant { ptr, ptr } { ptr @"path::win_root_len", ptr null }
@"var.path::win_root_len" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"path::posix_root_len", ptr null }
@"var.path::posix_root_len" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"path::root_len", ptr null }
@"var.path::root_len" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"path::posix_is_abs", ptr null }
@"var.path::posix_is_abs" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"path::win_is_abs", ptr null }
@"var.path::win_is_abs" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"path::is_abs", ptr null }
@"var.path::is_abs" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"path::is_rel", ptr null }
@"var.path::is_rel" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"path::posix_strip_trailing_sep", ptr null }
@"var.path::posix_strip_trailing_sep" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"path::win_strip_trailing_sep", ptr null }
@"var.path::win_strip_trailing_sep" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"path::strip_trailing_sep", ptr null }
@"var.path::strip_trailing_sep" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"path::posix_join", ptr null }
@"var.path::posix_join" = global ptr null
@str.2 = internal unnamed_addr constant [2 x i8] c"\\\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.2 }
@clo.const.14 = internal constant { ptr, ptr } { ptr @"path::win_join", ptr null }
@"var.path::win_join" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"path::join", ptr null }
@"var.path::join" = global ptr null
@str.3 = internal unnamed_addr constant [2 x i8] c".\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.3 }
@clo.const.16 = internal constant { ptr, ptr } { ptr @"path::posix_parent", ptr null }
@"var.path::posix_parent" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"path::win_parent", ptr null }
@"var.path::win_parent" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"path::parent", ptr null }
@"var.path::parent" = global ptr null
@str.4 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.4 }
@clo.const.19 = internal constant { ptr, ptr } { ptr @"path::dirname", ptr null }
@"var.path::dirname" = global ptr null
@clo.const.20 = internal constant { ptr, ptr } { ptr @"path::posix_basename", ptr null }
@"var.path::posix_basename" = global ptr null
@clo.const.21 = internal constant { ptr, ptr } { ptr @"path::win_basename", ptr null }
@"var.path::win_basename" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"path::basename", ptr null }
@"var.path::basename" = global ptr null
@clo.const.23 = internal constant { ptr, ptr } { ptr @"path::base", ptr null }
@"var.path::base" = global ptr null
@clo.const.24 = internal constant { ptr, ptr } { ptr @"path::ext_dot_index", ptr null }
@"var.path::ext_dot_index" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"path::ext", ptr null }
@"var.path::ext" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"path::get_ext", ptr null }
@"var.path::get_ext" = global ptr null
@clo.const.27 = internal constant { ptr, ptr } { ptr @"path::ext_lower", ptr null }
@"var.path::ext_lower" = global ptr null
@clo.const.28 = internal constant { ptr, ptr } { ptr @"path::stem", ptr null }
@"var.path::stem" = global ptr null
@clo.const.29 = internal constant { ptr, ptr } { ptr @"path::with_ext", ptr null }
@"var.path::with_ext" = global ptr null
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.30 = internal constant { ptr, ptr } { ptr @"path::split", ptr null }
@"var.path::split" = global ptr null
@str.5 = internal unnamed_addr constant [3 x i8] c"..\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.5 }
@str.6 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.6 }
@str.7 = internal unnamed_addr constant [9 x i8] c"path.dva\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.7 }
@str.8 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.8 }
@clo.const.31 = internal constant { ptr, ptr } { ptr @"path::posix_normalize", ptr null }
@"var.path::posix_normalize" = global ptr null
@str.9 = internal unnamed_addr constant [3 x i8] c"\\\\\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.9 }
@clo.const.32 = internal constant { ptr, ptr } { ptr @"path::win_normalize", ptr null }
@"var.path::win_normalize" = global ptr null
@clo.const.33 = internal constant { ptr, ptr } { ptr @"path::normalize", ptr null }
@"var.path::normalize" = global ptr null
@clo.const.34 = internal constant { ptr, ptr } { ptr @"path::rel", ptr null }
@"var.path::rel" = global ptr null
@clo.const.35 = internal constant { ptr, ptr } { ptr @"path::has_prefix", ptr null }
@"var.path::has_prefix" = global ptr null
@clo.const.36 = internal constant { ptr, ptr } { ptr @"path::has_traversal", ptr null }
@"var.path::has_traversal" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_path, ptr null }]

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

define internal void @__dva_global_init_path() #1 {
entry:
  store i64 47, ptr @"var.path::SEP", align 8
  store ptr @str.0.struct, ptr @"var.path::SEP_STR", align 8
  store i64 58, ptr @"var.path::LIST_SEP", align 8
  store ptr @str.1.struct, ptr @"var.path::LIST_SEP_STR", align 8
  store i1 false, ptr @"var.path::IS_WIN", align 1
  store ptr @clo.const, ptr @"var.path::is_posix_sep", align 8
  store ptr @clo.const.1, ptr @"var.path::is_win_sep", align 8
  store ptr @clo.const.2, ptr @"var.path::is_sep", align 8
  store ptr @clo.const.3, ptr @"var.path::win_root_len", align 8
  store ptr @clo.const.4, ptr @"var.path::posix_root_len", align 8
  store ptr @clo.const.5, ptr @"var.path::root_len", align 8
  store ptr @clo.const.6, ptr @"var.path::posix_is_abs", align 8
  store ptr @clo.const.7, ptr @"var.path::win_is_abs", align 8
  store ptr @clo.const.8, ptr @"var.path::is_abs", align 8
  store ptr @clo.const.9, ptr @"var.path::is_rel", align 8
  store ptr @clo.const.10, ptr @"var.path::posix_strip_trailing_sep", align 8
  store ptr @clo.const.11, ptr @"var.path::win_strip_trailing_sep", align 8
  store ptr @clo.const.12, ptr @"var.path::strip_trailing_sep", align 8
  store ptr @clo.const.13, ptr @"var.path::posix_join", align 8
  store ptr @clo.const.14, ptr @"var.path::win_join", align 8
  store ptr @clo.const.15, ptr @"var.path::join", align 8
  store ptr @clo.const.16, ptr @"var.path::posix_parent", align 8
  store ptr @clo.const.17, ptr @"var.path::win_parent", align 8
  store ptr @clo.const.18, ptr @"var.path::parent", align 8
  store ptr @clo.const.19, ptr @"var.path::dirname", align 8
  store ptr @clo.const.20, ptr @"var.path::posix_basename", align 8
  store ptr @clo.const.21, ptr @"var.path::win_basename", align 8
  store ptr @clo.const.22, ptr @"var.path::basename", align 8
  store ptr @clo.const.23, ptr @"var.path::base", align 8
  store ptr @clo.const.24, ptr @"var.path::ext_dot_index", align 8
  store ptr @clo.const.25, ptr @"var.path::ext", align 8
  store ptr @clo.const.26, ptr @"var.path::get_ext", align 8
  store ptr @clo.const.27, ptr @"var.path::ext_lower", align 8
  store ptr @clo.const.28, ptr @"var.path::stem", align 8
  store ptr @clo.const.29, ptr @"var.path::with_ext", align 8
  store ptr @clo.const.30, ptr @"var.path::split", align 8
  store ptr @clo.const.31, ptr @"var.path::posix_normalize", align 8
  store ptr @clo.const.32, ptr @"var.path::win_normalize", align 8
  store ptr @clo.const.33, ptr @"var.path::normalize", align 8
  store ptr @clo.const.34, ptr @"var.path::rel", align 8
  store ptr @clo.const.35, ptr @"var.path::has_prefix", align 8
  store ptr @clo.const.36, ptr @"var.path::has_traversal", align 8
  ret void
}

define i1 @"path::is_posix_sep"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %val.match = icmp eq i64 %var.load, 47
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define i1 @"path::is_win_sep"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %val.match = icmp eq i64 %var.load, 47
  %val.match1 = icmp eq i64 %var.load, 92
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

define i1 @"path::is_sep"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  br i1 false, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"path::is_win_sep"(i64 %var.load)
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.c, align 8
  %call.res2 = call i1 @"path::is_posix_sep"(i64 %var.load1)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i1 [ %call.res, %choice.then ], [ %call.res2, %choice.else ]
  ret i1 %choice.res
}

define i64 @"path::win_root_len"(ptr %0) #1 {
entry:
  %var.len = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
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
  ret i64 0

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load i64, ptr %var.len, align 8
  %cmptmp5 = icmp sge i64 %var.load4, 2
  br i1 %cmptmp5, label %and.0.then, label %and.0.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

and.0.then:                                       ; preds = %choice.exit
  %var.load6 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %str.tag9 = lshr i64 %s.read.len7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

and.0.else:                                       ; preds = %choice.exit
  br label %and.0.exit

and.0.exit:                                       ; preds = %and.0.else, %idx_ok
  %and.0.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp5, %and.0.else ]
  br i1 %and.0.phi, label %and.1.then, label %and.1.else

str_gen_check11:                                  ; preds = %and.0.then
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid15 = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %str.tag9)
  br i1 %tag.valid15, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %and.0.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

str_stale13:                                      ; preds = %str_gen_check11
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

idx_big_check:                                    ; preds = %str_ok12
  %idx.big = icmp sge i64 0, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"ascii::is_alpha"(i64 %s.byte.val)
  br label %and.0.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok12
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.1.then:                                       ; preds = %and.0.exit
  %var.load17 = load ptr, ptr %var.p, align 8
  %s.read.len18 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len18, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %str.tag21 = lshr i64 %s.read.len19, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

and.1.else:                                       ; preds = %and.0.exit
  br label %and.1.exit

and.1.exit:                                       ; preds = %and.1.else, %idx_ok31
  %and.1.phi = phi i1 [ %cmptmp37, %idx_ok31 ], [ %and.0.phi, %and.1.else ]
  br i1 %and.1.phi, label %choice.then38, label %choice.else

str_gen_check23:                                  ; preds = %and.1.then
  %arena.cur26 = call ptr @dva_arena_current()
  %tag.valid27 = call i1 @dva_arena_validate_tag(ptr %arena.cur26, i64 %str.tag21)
  br i1 %tag.valid27, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %and.1.then
  %s.read.data28 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data28, align 8
  br i1 false, label %idx_oob32, label %idx_big_check30

str_stale25:                                      ; preds = %str_gen_check23
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok24

idx_big_check30:                                  ; preds = %str_ok24
  %idx.big33 = icmp sge i64 1, %s.read.len20
  br i1 %idx.big33, label %idx_oob32, label %idx_ok31

idx_ok31:                                         ; preds = %idx_oob32, %idx_big_check30
  %s.byte.gep34 = getelementptr i8, ptr %s.read.data29, i64 1
  %s.byte35 = load i8, ptr %s.byte.gep34, align 1
  %s.byte.val36 = zext i8 %s.byte35 to i64
  %cmptmp37 = icmp eq i64 %s.byte.val36, 58
  br label %and.1.exit

idx_oob32:                                        ; preds = %idx_big_check30, %str_ok24
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok31

choice.then38:                                    ; preds = %and.1.exit
  %var.load40 = load i64, ptr %var.len, align 8
  %cmptmp41 = icmp sge i64 %var.load40, 3
  br i1 %cmptmp41, label %and.2.then, label %and.2.else

choice.else:                                      ; preds = %and.1.exit
  %var.load66 = load ptr, ptr %var.p, align 8
  %s.read.len67 = getelementptr inbounds { i64, ptr }, ptr %var.load66, i32 0, i32 0
  %s.read.len68 = load i64, ptr %s.read.len67, align 8
  %s.read.len69 = and i64 %s.read.len68, 281474976710655
  %str.tag70 = lshr i64 %s.read.len68, 48
  %str.immortal71 = icmp eq i64 %str.tag70, 0
  br i1 %str.immortal71, label %str_ok73, label %str_gen_check72

choice.exit39:                                    ; preds = %choice.exit89, %choice.exit65
  %choice.res118 = phi i64 [ %choice.res, %choice.exit65 ], [ %choice.res117, %choice.exit89 ]
  ret i64 %choice.res118

and.2.then:                                       ; preds = %choice.then38
  %var.load42 = load ptr, ptr %var.p, align 8
  %s.read.len43 = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 0
  %s.read.len44 = load i64, ptr %s.read.len43, align 8
  %s.read.len45 = and i64 %s.read.len44, 281474976710655
  %str.tag46 = lshr i64 %s.read.len44, 48
  %str.immortal47 = icmp eq i64 %str.tag46, 0
  br i1 %str.immortal47, label %str_ok49, label %str_gen_check48

and.2.else:                                       ; preds = %choice.then38
  br label %and.2.exit

and.2.exit:                                       ; preds = %and.2.else, %idx_ok56
  %and.2.phi = phi i1 [ %call.res62, %idx_ok56 ], [ %cmptmp41, %and.2.else ]
  br i1 %and.2.phi, label %choice.then63, label %choice.else64

str_gen_check48:                                  ; preds = %and.2.then
  %arena.cur51 = call ptr @dva_arena_current()
  %tag.valid52 = call i1 @dva_arena_validate_tag(ptr %arena.cur51, i64 %str.tag46)
  br i1 %tag.valid52, label %str_ok49, label %str_stale50

str_ok49:                                         ; preds = %str_stale50, %str_gen_check48, %and.2.then
  %s.read.data53 = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 1
  %s.read.data54 = load ptr, ptr %s.read.data53, align 8
  br i1 false, label %idx_oob57, label %idx_big_check55

str_stale50:                                      ; preds = %str_gen_check48
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok49

idx_big_check55:                                  ; preds = %str_ok49
  %idx.big58 = icmp sge i64 2, %s.read.len45
  br i1 %idx.big58, label %idx_oob57, label %idx_ok56

idx_ok56:                                         ; preds = %idx_oob57, %idx_big_check55
  %s.byte.gep59 = getelementptr i8, ptr %s.read.data54, i64 2
  %s.byte60 = load i8, ptr %s.byte.gep59, align 1
  %s.byte.val61 = zext i8 %s.byte60 to i64
  %call.res62 = call i1 @"path::is_win_sep"(i64 %s.byte.val61)
  br label %and.2.exit

idx_oob57:                                        ; preds = %idx_big_check55, %str_ok49
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok56

choice.then63:                                    ; preds = %and.2.exit
  br label %choice.exit65

choice.else64:                                    ; preds = %and.2.exit
  br label %choice.exit65

choice.exit65:                                    ; preds = %choice.else64, %choice.then63
  %choice.res = phi i64 [ 3, %choice.then63 ], [ 2, %choice.else64 ]
  br label %choice.exit39

str_gen_check72:                                  ; preds = %choice.else
  %arena.cur75 = call ptr @dva_arena_current()
  %tag.valid76 = call i1 @dva_arena_validate_tag(ptr %arena.cur75, i64 %str.tag70)
  br i1 %tag.valid76, label %str_ok73, label %str_stale74

str_ok73:                                         ; preds = %str_stale74, %str_gen_check72, %choice.else
  %s.read.data77 = getelementptr inbounds { i64, ptr }, ptr %var.load66, i32 0, i32 1
  %s.read.data78 = load ptr, ptr %s.read.data77, align 8
  br i1 false, label %idx_oob81, label %idx_big_check79

str_stale74:                                      ; preds = %str_gen_check72
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok73

idx_big_check79:                                  ; preds = %str_ok73
  %idx.big82 = icmp sge i64 0, %s.read.len69
  br i1 %idx.big82, label %idx_oob81, label %idx_ok80

idx_ok80:                                         ; preds = %idx_oob81, %idx_big_check79
  %s.byte.gep83 = getelementptr i8, ptr %s.read.data78, i64 0
  %s.byte84 = load i8, ptr %s.byte.gep83, align 1
  %s.byte.val85 = zext i8 %s.byte84 to i64
  %call.res86 = call i1 @"path::is_win_sep"(i64 %s.byte.val85)
  br i1 %call.res86, label %choice.then87, label %choice.else88

idx_oob81:                                        ; preds = %idx_big_check79, %str_ok73
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok80

choice.then87:                                    ; preds = %idx_ok80
  %var.load90 = load i64, ptr %var.len, align 8
  %cmptmp91 = icmp sge i64 %var.load90, 2
  br i1 %cmptmp91, label %and.3.then, label %and.3.else

choice.else88:                                    ; preds = %idx_ok80
  br label %choice.exit89

choice.exit89:                                    ; preds = %choice.else88, %choice.exit115
  %choice.res117 = phi i64 [ %choice.res116, %choice.exit115 ], [ 0, %choice.else88 ]
  br label %choice.exit39

and.3.then:                                       ; preds = %choice.then87
  %var.load92 = load ptr, ptr %var.p, align 8
  %s.read.len93 = getelementptr inbounds { i64, ptr }, ptr %var.load92, i32 0, i32 0
  %s.read.len94 = load i64, ptr %s.read.len93, align 8
  %s.read.len95 = and i64 %s.read.len94, 281474976710655
  %str.tag96 = lshr i64 %s.read.len94, 48
  %str.immortal97 = icmp eq i64 %str.tag96, 0
  br i1 %str.immortal97, label %str_ok99, label %str_gen_check98

and.3.else:                                       ; preds = %choice.then87
  br label %and.3.exit

and.3.exit:                                       ; preds = %and.3.else, %idx_ok106
  %and.3.phi = phi i1 [ %call.res112, %idx_ok106 ], [ %cmptmp91, %and.3.else ]
  br i1 %and.3.phi, label %choice.then113, label %choice.else114

str_gen_check98:                                  ; preds = %and.3.then
  %arena.cur101 = call ptr @dva_arena_current()
  %tag.valid102 = call i1 @dva_arena_validate_tag(ptr %arena.cur101, i64 %str.tag96)
  br i1 %tag.valid102, label %str_ok99, label %str_stale100

str_ok99:                                         ; preds = %str_stale100, %str_gen_check98, %and.3.then
  %s.read.data103 = getelementptr inbounds { i64, ptr }, ptr %var.load92, i32 0, i32 1
  %s.read.data104 = load ptr, ptr %s.read.data103, align 8
  br i1 false, label %idx_oob107, label %idx_big_check105

str_stale100:                                     ; preds = %str_gen_check98
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok99

idx_big_check105:                                 ; preds = %str_ok99
  %idx.big108 = icmp sge i64 1, %s.read.len95
  br i1 %idx.big108, label %idx_oob107, label %idx_ok106

idx_ok106:                                        ; preds = %idx_oob107, %idx_big_check105
  %s.byte.gep109 = getelementptr i8, ptr %s.read.data104, i64 1
  %s.byte110 = load i8, ptr %s.byte.gep109, align 1
  %s.byte.val111 = zext i8 %s.byte110 to i64
  %call.res112 = call i1 @"path::is_win_sep"(i64 %s.byte.val111)
  br label %and.3.exit

idx_oob107:                                       ; preds = %idx_big_check105, %str_ok99
  %11 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok106

choice.then113:                                   ; preds = %and.3.exit
  br label %choice.exit115

choice.else114:                                   ; preds = %and.3.exit
  br label %choice.exit115

choice.exit115:                                   ; preds = %choice.else114, %choice.then113
  %choice.res116 = phi i64 [ 2, %choice.then113 ], [ 1, %choice.else114 ]
  br label %choice.exit89
}

declare i64 @write(i32, ptr, i64)

declare void @exit(i32)

declare i1 @"ascii::is_alpha"(i64) #1

define i64 @"path::posix_root_len"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
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
  br i1 %cmptmp, label %and.4.then, label %and.4.else

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.4.then:                                       ; preds = %str_ok
  %var.load3 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %s.read.len4 = load i64, ptr %s.read.len, align 8
  %s.read.len5 = and i64 %s.read.len4, 281474976710655
  %str.tag6 = lshr i64 %s.read.len4, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

and.4.else:                                       ; preds = %str_ok
  br label %and.4.exit

and.4.exit:                                       ; preds = %and.4.else, %idx_ok
  %and.4.phi = phi i1 [ %cmptmp14, %idx_ok ], [ %cmptmp, %and.4.else ]
  br i1 %and.4.phi, label %choice.then, label %choice.else

str_gen_check8:                                   ; preds = %and.4.then
  %arena.cur11 = call ptr @dva_arena_current()
  %tag.valid12 = call i1 @dva_arena_validate_tag(ptr %arena.cur11, i64 %str.tag6)
  br i1 %tag.valid12, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %and.4.then
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
  %cmptmp14 = icmp eq i64 %s.byte.val, 47
  br label %and.4.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok9
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %and.4.exit
  br label %choice.exit

choice.else:                                      ; preds = %and.4.exit
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ 1, %choice.then ], [ 0, %choice.else ]
  ret i64 %choice.res
}

define i64 @"path::root_len"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  br i1 false, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call i64 @"path::win_root_len"(ptr %var.load)
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.p, align 8
  %call.res2 = call i64 @"path::posix_root_len"(ptr %var.load1)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %call.res, %choice.then ], [ %call.res2, %choice.else ]
  ret i64 %choice.res
}

define i1 @"path::posix_is_abs"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
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
  br i1 %cmptmp, label %and.5.then, label %and.5.else

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.5.then:                                       ; preds = %str_ok
  %var.load3 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %s.read.len4 = load i64, ptr %s.read.len, align 8
  %s.read.len5 = and i64 %s.read.len4, 281474976710655
  %str.tag6 = lshr i64 %s.read.len4, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

and.5.else:                                       ; preds = %str_ok
  br label %and.5.exit

and.5.exit:                                       ; preds = %and.5.else, %idx_ok
  %and.5.phi = phi i1 [ %cmptmp14, %idx_ok ], [ %cmptmp, %and.5.else ]
  ret i1 %and.5.phi

str_gen_check8:                                   ; preds = %and.5.then
  %arena.cur11 = call ptr @dva_arena_current()
  %tag.valid12 = call i1 @dva_arena_validate_tag(ptr %arena.cur11, i64 %str.tag6)
  br i1 %tag.valid12, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %and.5.then
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
  %cmptmp14 = icmp eq i64 %s.byte.val, 47
  br label %and.5.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok9
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok
}

define i1 @"path::win_is_abs"(ptr %0) #1 {
entry:
  %var.len = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
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
  %cmptmp = icmp sgt i64 %var.load3, 0
  br i1 %cmptmp, label %and.6.then, label %and.6.else

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.6.then:                                       ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

and.6.else:                                       ; preds = %str_ok
  br label %and.6.exit

and.6.exit:                                       ; preds = %and.6.else, %idx_ok
  %and.6.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp, %and.6.else ]
  br i1 %and.6.phi, label %or.7.then, label %or.7.else

str_gen_check9:                                   ; preds = %and.6.then
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %and.6.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

str_stale11:                                      ; preds = %str_gen_check9
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

idx_big_check:                                    ; preds = %str_ok10
  %idx.big = icmp sge i64 0, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data14, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"path::is_win_sep"(i64 %s.byte.val)
  br label %and.6.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

or.7.then:                                        ; preds = %and.6.exit
  br label %or.7.exit

or.7.else:                                        ; preds = %and.6.exit
  %var.load15 = load i64, ptr %var.len, align 8
  %cmptmp16 = icmp sge i64 %var.load15, 3
  br i1 %cmptmp16, label %and.8.then, label %and.8.else

or.7.exit:                                        ; preds = %and.10.exit, %or.7.then
  %or.7.phi = phi i1 [ %and.6.phi, %or.7.then ], [ %and.10.phi, %and.10.exit ]
  ret i1 %or.7.phi

and.8.then:                                       ; preds = %or.7.else
  %var.load17 = load ptr, ptr %var.p, align 8
  %s.read.len18 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len18, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %str.tag21 = lshr i64 %s.read.len19, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

and.8.else:                                       ; preds = %or.7.else
  br label %and.8.exit

and.8.exit:                                       ; preds = %and.8.else, %idx_ok31
  %and.8.phi = phi i1 [ %call.res37, %idx_ok31 ], [ %cmptmp16, %and.8.else ]
  br i1 %and.8.phi, label %and.9.then, label %and.9.else

str_gen_check23:                                  ; preds = %and.8.then
  %arena.cur26 = call ptr @dva_arena_current()
  %tag.valid27 = call i1 @dva_arena_validate_tag(ptr %arena.cur26, i64 %str.tag21)
  br i1 %tag.valid27, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %and.8.then
  %s.read.data28 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data28, align 8
  br i1 false, label %idx_oob32, label %idx_big_check30

str_stale25:                                      ; preds = %str_gen_check23
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok24

idx_big_check30:                                  ; preds = %str_ok24
  %idx.big33 = icmp sge i64 0, %s.read.len20
  br i1 %idx.big33, label %idx_oob32, label %idx_ok31

idx_ok31:                                         ; preds = %idx_oob32, %idx_big_check30
  %s.byte.gep34 = getelementptr i8, ptr %s.read.data29, i64 0
  %s.byte35 = load i8, ptr %s.byte.gep34, align 1
  %s.byte.val36 = zext i8 %s.byte35 to i64
  %call.res37 = call i1 @"ascii::is_alpha"(i64 %s.byte.val36)
  br label %and.8.exit

idx_oob32:                                        ; preds = %idx_big_check30, %str_ok24
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok31

and.9.then:                                       ; preds = %and.8.exit
  %var.load38 = load ptr, ptr %var.p, align 8
  %s.read.len39 = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 0
  %s.read.len40 = load i64, ptr %s.read.len39, align 8
  %s.read.len41 = and i64 %s.read.len40, 281474976710655
  %str.tag42 = lshr i64 %s.read.len40, 48
  %str.immortal43 = icmp eq i64 %str.tag42, 0
  br i1 %str.immortal43, label %str_ok45, label %str_gen_check44

and.9.else:                                       ; preds = %and.8.exit
  br label %and.9.exit

and.9.exit:                                       ; preds = %and.9.else, %idx_ok52
  %and.9.phi = phi i1 [ %cmptmp58, %idx_ok52 ], [ %and.8.phi, %and.9.else ]
  br i1 %and.9.phi, label %and.10.then, label %and.10.else

str_gen_check44:                                  ; preds = %and.9.then
  %arena.cur47 = call ptr @dva_arena_current()
  %tag.valid48 = call i1 @dva_arena_validate_tag(ptr %arena.cur47, i64 %str.tag42)
  br i1 %tag.valid48, label %str_ok45, label %str_stale46

str_ok45:                                         ; preds = %str_stale46, %str_gen_check44, %and.9.then
  %s.read.data49 = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 1
  %s.read.data50 = load ptr, ptr %s.read.data49, align 8
  br i1 false, label %idx_oob53, label %idx_big_check51

str_stale46:                                      ; preds = %str_gen_check44
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok45

idx_big_check51:                                  ; preds = %str_ok45
  %idx.big54 = icmp sge i64 1, %s.read.len41
  br i1 %idx.big54, label %idx_oob53, label %idx_ok52

idx_ok52:                                         ; preds = %idx_oob53, %idx_big_check51
  %s.byte.gep55 = getelementptr i8, ptr %s.read.data50, i64 1
  %s.byte56 = load i8, ptr %s.byte.gep55, align 1
  %s.byte.val57 = zext i8 %s.byte56 to i64
  %cmptmp58 = icmp eq i64 %s.byte.val57, 58
  br label %and.9.exit

idx_oob53:                                        ; preds = %idx_big_check51, %str_ok45
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok52

and.10.then:                                      ; preds = %and.9.exit
  %var.load59 = load ptr, ptr %var.p, align 8
  %s.read.len60 = getelementptr inbounds { i64, ptr }, ptr %var.load59, i32 0, i32 0
  %s.read.len61 = load i64, ptr %s.read.len60, align 8
  %s.read.len62 = and i64 %s.read.len61, 281474976710655
  %str.tag63 = lshr i64 %s.read.len61, 48
  %str.immortal64 = icmp eq i64 %str.tag63, 0
  br i1 %str.immortal64, label %str_ok66, label %str_gen_check65

and.10.else:                                      ; preds = %and.9.exit
  br label %and.10.exit

and.10.exit:                                      ; preds = %and.10.else, %idx_ok73
  %and.10.phi = phi i1 [ %call.res79, %idx_ok73 ], [ %and.9.phi, %and.10.else ]
  br label %or.7.exit

str_gen_check65:                                  ; preds = %and.10.then
  %arena.cur68 = call ptr @dva_arena_current()
  %tag.valid69 = call i1 @dva_arena_validate_tag(ptr %arena.cur68, i64 %str.tag63)
  br i1 %tag.valid69, label %str_ok66, label %str_stale67

str_ok66:                                         ; preds = %str_stale67, %str_gen_check65, %and.10.then
  %s.read.data70 = getelementptr inbounds { i64, ptr }, ptr %var.load59, i32 0, i32 1
  %s.read.data71 = load ptr, ptr %s.read.data70, align 8
  br i1 false, label %idx_oob74, label %idx_big_check72

str_stale67:                                      ; preds = %str_gen_check65
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok66

idx_big_check72:                                  ; preds = %str_ok66
  %idx.big75 = icmp sge i64 2, %s.read.len62
  br i1 %idx.big75, label %idx_oob74, label %idx_ok73

idx_ok73:                                         ; preds = %idx_oob74, %idx_big_check72
  %s.byte.gep76 = getelementptr i8, ptr %s.read.data71, i64 2
  %s.byte77 = load i8, ptr %s.byte.gep76, align 1
  %s.byte.val78 = zext i8 %s.byte77 to i64
  %call.res79 = call i1 @"path::is_win_sep"(i64 %s.byte.val78)
  br label %and.10.exit

idx_oob74:                                        ; preds = %idx_big_check72, %str_ok66
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok73
}

define i1 @"path::is_abs"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  br i1 false, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call i1 @"path::win_is_abs"(ptr %var.load)
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.p, align 8
  %call.res2 = call i1 @"path::posix_is_abs"(ptr %var.load1)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i1 [ %call.res, %choice.then ], [ %call.res2, %choice.else ]
  ret i1 %choice.res
}

define i1 @"path::is_rel"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call i1 @"path::is_abs"(ptr %var.load)
  %nottmp = xor i1 %call.res, true
  ret i1 %nottmp
}

define ptr @"path::posix_strip_trailing_sep"(ptr %0) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.11 = alloca i64, align 8
  %loop.idx.11 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
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
  store i64 0, ptr %loop.idx.11, align 8
  br label %loop.header.11

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.11:                                   ; preds = %loop.latch.11, %str_ok
  %counter.load = load i64, ptr %loop.idx.11, align 8
  br label %loop.body.11

loop.body.11:                                     ; preds = %loop.header.11
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.11, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load3 = load i64, ptr %"var.end'", align 8
  %cmptmp = icmp sgt i64 %var.load3, 1
  br i1 %cmptmp, label %and.12.then, label %and.12.else

loop.exit.nat.11:                                 ; No predecessors!
  br label %loop.exit.11

loop.latch.11:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.11, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.11, align 8
  br label %loop.header.11

loop.exit.11:                                     ; preds = %choice.else, %loop.exit.nat.11
  %var.load19 = load i64, ptr %"var.end'", align 8
  %var.load20 = load ptr, ptr %var.p, align 8
  %str.len.query21 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %str.len.query22 = load i64, ptr %str.len.query21, align 8
  %str.len.query23 = and i64 %str.len.query22, 281474976710655
  %str.tag24 = lshr i64 %str.len.query22, 48
  %str.immortal25 = icmp eq i64 %str.tag24, 0
  br i1 %str.immortal25, label %str_ok27, label %str_gen_check26

and.12.then:                                      ; preds = %loop.body.11
  %var.load4 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

and.12.else:                                      ; preds = %loop.body.11
  br label %and.12.exit

and.12.exit:                                      ; preds = %and.12.else, %idx_ok
  %and.12.phi = phi i1 [ %cmptmp16, %idx_ok ], [ %cmptmp, %and.12.else ]
  br i1 %and.12.phi, label %choice.then, label %choice.else

str_gen_check9:                                   ; preds = %and.12.then
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %and.12.then
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
  %cmptmp16 = icmp eq i64 %s.byte.val, 47
  br label %and.12.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %and.12.exit
  %var.load17 = load i64, ptr %"var.end'", align 8
  %subtmp18 = sub i64 %var.load17, 1
  store i64 %subtmp18, ptr %"var.end'", align 8
  br label %choice.exit

choice.else:                                      ; preds = %and.12.exit
  br label %loop.exit.11

choice.exit:                                      ; preds = %choice.then
  br label %loop.latch.11

str_gen_check26:                                  ; preds = %loop.exit.11
  %arena.cur29 = call ptr @dva_arena_current()
  %tag.valid30 = call i1 @dva_arena_validate_tag(ptr %arena.cur29, i64 %str.tag24)
  br i1 %tag.valid30, label %str_ok27, label %str_stale28

str_ok27:                                         ; preds = %str_stale28, %str_gen_check26, %loop.exit.11
  %cmptmp31 = icmp eq i64 %var.load19, %str.len.query23
  br i1 %cmptmp31, label %choice.then32, label %choice.else33

str_stale28:                                      ; preds = %str_gen_check26
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok27

choice.then32:                                    ; preds = %str_ok27
  %var.load35 = load ptr, ptr %var.p, align 8
  br label %choice.exit34

choice.else33:                                    ; preds = %str_ok27
  %var.load36 = load ptr, ptr %var.p, align 8
  %s.read.len37 = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 0
  %s.read.len38 = load i64, ptr %s.read.len37, align 8
  %s.read.len39 = and i64 %s.read.len38, 281474976710655
  %str.tag40 = lshr i64 %s.read.len38, 48
  %str.immortal41 = icmp eq i64 %str.tag40, 0
  br i1 %str.immortal41, label %str_ok43, label %str_gen_check42

choice.exit34:                                    ; preds = %str_ok43, %choice.then32
  %choice.res = phi ptr [ %var.load35, %choice.then32 ], [ %str.view, %str_ok43 ]
  ret ptr %choice.res

str_gen_check42:                                  ; preds = %choice.else33
  %arena.cur45 = call ptr @dva_arena_current()
  %tag.valid46 = call i1 @dva_arena_validate_tag(ptr %arena.cur45, i64 %str.tag40)
  br i1 %tag.valid46, label %str_ok43, label %str_stale44

str_ok43:                                         ; preds = %str_stale44, %str_gen_check42, %choice.else33
  %s.read.data47 = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 1
  %s.read.data48 = load ptr, ptr %s.read.data47, align 8
  %var.load49 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len39, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len39
  %final.start = select i1 %start.gt.len, i64 %s.read.len39, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load49, 0
  %rel.end = add i64 %s.read.len39, %var.load49
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load49
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len39
  %final.end = select i1 %end.gt.len, i64 %s.read.len39, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data48, i64 %final.start
  %arena.cur50 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit34

str_stale44:                                      ; preds = %str_gen_check42
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok43
}

define ptr @"path::win_strip_trailing_sep"(ptr %0) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.13 = alloca i64, align 8
  %loop.idx.13 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.min_len = alloca i64, align 8
  %var.rlen = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call i64 @"path::win_root_len"(ptr %var.load)
  store i64 %call.res, ptr %var.rlen, align 8
  %var.load1 = load i64, ptr %var.rlen, align 8
  %cmptmp = icmp sgt i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.rlen, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load2, %choice.then ], [ 1, %choice.else ]
  store i64 %choice.res, ptr %var.min_len, align 8
  %var.load3 = load ptr, ptr %var.p, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query4 = load i64, ptr %str.len.query, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %str.tag = lshr i64 %str.len.query4, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  store i64 %str.len.query5, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.13, align 8
  br label %loop.header.13

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.13:                                   ; preds = %loop.latch.13, %str_ok
  %counter.load = load i64, ptr %loop.idx.13, align 8
  br label %loop.body.13

loop.body.13:                                     ; preds = %loop.header.13
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.13, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load6 = load i64, ptr %"var.end'", align 8
  %var.load7 = load i64, ptr %var.min_len, align 8
  %cmptmp8 = icmp sgt i64 %var.load6, %var.load7
  br i1 %cmptmp8, label %and.14.then, label %and.14.else

loop.exit.nat.13:                                 ; No predecessors!
  br label %loop.exit.13

loop.latch.13:                                    ; preds = %choice.exit24
  %step.val = load i64, ptr %loop.step.13, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.13, align 8
  br label %loop.header.13

loop.exit.13:                                     ; preds = %choice.else23, %loop.exit.nat.13
  %var.load27 = load i64, ptr %"var.end'", align 8
  %var.load28 = load ptr, ptr %var.p, align 8
  %str.len.query29 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %str.len.query30 = load i64, ptr %str.len.query29, align 8
  %str.len.query31 = and i64 %str.len.query30, 281474976710655
  %str.tag32 = lshr i64 %str.len.query30, 48
  %str.immortal33 = icmp eq i64 %str.tag32, 0
  br i1 %str.immortal33, label %str_ok35, label %str_gen_check34

and.14.then:                                      ; preds = %loop.body.13
  %var.load9 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %str.tag12 = lshr i64 %s.read.len10, 48
  %str.immortal13 = icmp eq i64 %str.tag12, 0
  br i1 %str.immortal13, label %str_ok15, label %str_gen_check14

and.14.else:                                      ; preds = %loop.body.13
  br label %and.14.exit

and.14.exit:                                      ; preds = %and.14.else, %idx_ok
  %and.14.phi = phi i1 [ %call.res21, %idx_ok ], [ %cmptmp8, %and.14.else ]
  br i1 %and.14.phi, label %choice.then22, label %choice.else23

str_gen_check14:                                  ; preds = %and.14.then
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %str.tag12)
  br i1 %tag.valid18, label %str_ok15, label %str_stale16

str_ok15:                                         ; preds = %str_stale16, %str_gen_check14, %and.14.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.read.data19 = load ptr, ptr %s.read.data, align 8
  %var.load20 = load i64, ptr %"var.end'", align 8
  %subtmp = sub i64 %var.load20, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale16:                                      ; preds = %str_gen_check14
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok15

idx_big_check:                                    ; preds = %str_ok15
  %idx.big = icmp sge i64 %subtmp, %s.read.len11
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data19, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res21 = call i1 @"path::is_win_sep"(i64 %s.byte.val)
  br label %and.14.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok15
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then22:                                    ; preds = %and.14.exit
  %var.load25 = load i64, ptr %"var.end'", align 8
  %subtmp26 = sub i64 %var.load25, 1
  store i64 %subtmp26, ptr %"var.end'", align 8
  br label %choice.exit24

choice.else23:                                    ; preds = %and.14.exit
  br label %loop.exit.13

choice.exit24:                                    ; preds = %choice.then22
  br label %loop.latch.13

str_gen_check34:                                  ; preds = %loop.exit.13
  %arena.cur37 = call ptr @dva_arena_current()
  %tag.valid38 = call i1 @dva_arena_validate_tag(ptr %arena.cur37, i64 %str.tag32)
  br i1 %tag.valid38, label %str_ok35, label %str_stale36

str_ok35:                                         ; preds = %str_stale36, %str_gen_check34, %loop.exit.13
  %cmptmp39 = icmp eq i64 %var.load27, %str.len.query31
  br i1 %cmptmp39, label %choice.then40, label %choice.else41

str_stale36:                                      ; preds = %str_gen_check34
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok35

choice.then40:                                    ; preds = %str_ok35
  %var.load43 = load ptr, ptr %var.p, align 8
  br label %choice.exit42

choice.else41:                                    ; preds = %str_ok35
  %var.load44 = load ptr, ptr %var.p, align 8
  %s.read.len45 = getelementptr inbounds { i64, ptr }, ptr %var.load44, i32 0, i32 0
  %s.read.len46 = load i64, ptr %s.read.len45, align 8
  %s.read.len47 = and i64 %s.read.len46, 281474976710655
  %str.tag48 = lshr i64 %s.read.len46, 48
  %str.immortal49 = icmp eq i64 %str.tag48, 0
  br i1 %str.immortal49, label %str_ok51, label %str_gen_check50

choice.exit42:                                    ; preds = %str_ok51, %choice.then40
  %choice.res59 = phi ptr [ %var.load43, %choice.then40 ], [ %str.view, %str_ok51 ]
  ret ptr %choice.res59

str_gen_check50:                                  ; preds = %choice.else41
  %arena.cur53 = call ptr @dva_arena_current()
  %tag.valid54 = call i1 @dva_arena_validate_tag(ptr %arena.cur53, i64 %str.tag48)
  br i1 %tag.valid54, label %str_ok51, label %str_stale52

str_ok51:                                         ; preds = %str_stale52, %str_gen_check50, %choice.else41
  %s.read.data55 = getelementptr inbounds { i64, ptr }, ptr %var.load44, i32 0, i32 1
  %s.read.data56 = load ptr, ptr %s.read.data55, align 8
  %var.load57 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len47, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len47
  %final.start = select i1 %start.gt.len, i64 %s.read.len47, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load57, 0
  %rel.end = add i64 %s.read.len47, %var.load57
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load57
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len47
  %final.end = select i1 %end.gt.len, i64 %s.read.len47, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data56, i64 %final.start
  %arena.cur58 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit42

str_stale52:                                      ; preds = %str_gen_check50
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok51
}

define ptr @"path::strip_trailing_sep"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  br i1 false, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call ptr @"path::win_strip_trailing_sep"(ptr %var.load)
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.p, align 8
  %call.res2 = call ptr @"path::posix_strip_trailing_sep"(ptr %var.load1)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %call.res, %choice.then ], [ %call.res2, %choice.else ]
  ret ptr %choice.res
}

define ptr @"path::posix_join"(ptr %0, ptr %1) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
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
  %var.load3 = load ptr, ptr %var.a, align 8
  ret ptr %var.load3

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.a, align 8
  %str.len.query5 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query5, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %str.tag8 = lshr i64 %str.len.query6, 48
  %str.immortal9 = icmp eq i64 %str.tag8, 0
  br i1 %str.immortal9, label %str_ok11, label %str_gen_check10

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check10:                                  ; preds = %choice.exit
  %arena.cur13 = call ptr @dva_arena_current()
  %tag.valid14 = call i1 @dva_arena_validate_tag(ptr %arena.cur13, i64 %str.tag8)
  br i1 %tag.valid14, label %str_ok11, label %str_stale12

str_ok11:                                         ; preds = %str_stale12, %str_gen_check10, %choice.exit
  %cmptmp15 = icmp eq i64 %str.len.query7, 0
  br i1 %cmptmp15, label %or.15.then, label %or.15.else

str_stale12:                                      ; preds = %str_gen_check10
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok11

or.15.then:                                       ; preds = %str_ok11
  br label %or.15.exit

or.15.else:                                       ; preds = %str_ok11
  %var.load16 = load ptr, ptr %var.b, align 8
  %call.res = call i1 @"path::posix_is_abs"(ptr %var.load16)
  br label %or.15.exit

or.15.exit:                                       ; preds = %or.15.else, %or.15.then
  %or.15.phi = phi i1 [ %cmptmp15, %or.15.then ], [ %call.res, %or.15.else ]
  br i1 %or.15.phi, label %choice.then17, label %choice.exit18

choice.then17:                                    ; preds = %or.15.exit
  %var.load19 = load ptr, ptr %var.b, align 8
  ret ptr %var.load19

choice.exit18:                                    ; preds = %ret.dead20, %or.15.exit
  %var.load21 = load ptr, ptr %var.a, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 0
  %s.read.len22 = load i64, ptr %s.read.len, align 8
  %s.read.len23 = and i64 %s.read.len22, 281474976710655
  %str.tag24 = lshr i64 %s.read.len22, 48
  %str.immortal25 = icmp eq i64 %str.tag24, 0
  br i1 %str.immortal25, label %str_ok27, label %str_gen_check26

ret.dead20:                                       ; No predecessors!
  br label %choice.exit18

str_gen_check26:                                  ; preds = %choice.exit18
  %arena.cur29 = call ptr @dva_arena_current()
  %tag.valid30 = call i1 @dva_arena_validate_tag(ptr %arena.cur29, i64 %str.tag24)
  br i1 %tag.valid30, label %str_ok27, label %str_stale28

str_ok27:                                         ; preds = %str_stale28, %str_gen_check26, %choice.exit18
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 1
  %s.read.data31 = load ptr, ptr %s.read.data, align 8
  %var.load32 = load ptr, ptr %var.a, align 8
  %str.len.query33 = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 0
  %str.len.query34 = load i64, ptr %str.len.query33, align 8
  %str.len.query35 = and i64 %str.len.query34, 281474976710655
  %str.tag36 = lshr i64 %str.len.query34, 48
  %str.immortal37 = icmp eq i64 %str.tag36, 0
  br i1 %str.immortal37, label %str_ok39, label %str_gen_check38

str_stale28:                                      ; preds = %str_gen_check26
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok27

str_gen_check38:                                  ; preds = %str_ok27
  %arena.cur41 = call ptr @dva_arena_current()
  %tag.valid42 = call i1 @dva_arena_validate_tag(ptr %arena.cur41, i64 %str.tag36)
  br i1 %tag.valid42, label %str_ok39, label %str_stale40

str_ok39:                                         ; preds = %str_stale40, %str_gen_check38, %str_ok27
  %subtmp = sub i64 %str.len.query35, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale40:                                      ; preds = %str_gen_check38
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok39

idx_big_check:                                    ; preds = %str_ok39
  %idx.big = icmp sge i64 %subtmp, %s.read.len23
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data31, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp43 = icmp eq i64 %s.byte.val, 47
  br i1 %cmptmp43, label %choice.then44, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok39
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then44:                                    ; preds = %idx_ok
  %var.load46 = load ptr, ptr %var.a, align 8
  %var.load47 = load ptr, ptr %var.b, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load46, i32 0, i32 0
  %concat.lhs48 = load i64, ptr %concat.lhs, align 8
  %concat.lhs49 = and i64 %concat.lhs48, 281474976710655
  %str.tag50 = lshr i64 %concat.lhs48, 48
  %str.immortal51 = icmp eq i64 %str.tag50, 0
  br i1 %str.immortal51, label %str_ok53, label %str_gen_check52

choice.else:                                      ; preds = %idx_ok
  %var.load77 = load ptr, ptr %var.a, align 8
  %concat.lhs78 = getelementptr inbounds { i64, ptr }, ptr %var.load77, i32 0, i32 0
  %concat.lhs79 = load i64, ptr %concat.lhs78, align 8
  %concat.lhs80 = and i64 %concat.lhs79, 281474976710655
  %str.tag81 = lshr i64 %concat.lhs79, 48
  %str.immortal82 = icmp eq i64 %str.tag81, 0
  br i1 %str.immortal82, label %str_ok84, label %str_gen_check83

choice.exit45:                                    ; preds = %concat.tot.len151, %concat.tot.len73
  %choice.res = phi ptr [ %concat.str, %concat.tot.len73 ], [ %concat.str158, %concat.tot.len151 ]
  ret ptr %choice.res

str_gen_check52:                                  ; preds = %choice.then44
  %arena.cur55 = call ptr @dva_arena_current()
  %tag.valid56 = call i1 @dva_arena_validate_tag(ptr %arena.cur55, i64 %str.tag50)
  br i1 %tag.valid56, label %str_ok53, label %str_stale54

str_ok53:                                         ; preds = %str_stale54, %str_gen_check52, %choice.then44
  %concat.lhs57 = getelementptr inbounds { i64, ptr }, ptr %var.load46, i32 0, i32 1
  %concat.lhs58 = load ptr, ptr %concat.lhs57, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load47, i32 0, i32 0
  %concat.rhs59 = load i64, ptr %concat.rhs, align 8
  %concat.rhs60 = and i64 %concat.rhs59, 281474976710655
  %str.tag61 = lshr i64 %concat.rhs59, 48
  %str.immortal62 = icmp eq i64 %str.tag61, 0
  br i1 %str.immortal62, label %str_ok64, label %str_gen_check63

str_stale54:                                      ; preds = %str_gen_check52
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok53

str_gen_check63:                                  ; preds = %str_ok53
  %arena.cur66 = call ptr @dva_arena_current()
  %tag.valid67 = call i1 @dva_arena_validate_tag(ptr %arena.cur66, i64 %str.tag61)
  br i1 %tag.valid67, label %str_ok64, label %str_stale65

str_ok64:                                         ; preds = %str_stale65, %str_gen_check63, %str_ok53
  %concat.rhs68 = getelementptr inbounds { i64, ptr }, ptr %var.load47, i32 0, i32 1
  %concat.rhs69 = load ptr, ptr %concat.rhs68, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs49, i64 %concat.rhs60)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len70

str_stale65:                                      ; preds = %str_gen_check63
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok64

concat.sum.len70:                                 ; preds = %str_overflow_abort, %str_ok64
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum71 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf72 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf72, label %str_overflow_abort74, label %concat.tot.len73

str_overflow_abort:                               ; preds = %str_ok64
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len70

concat.tot.len73:                                 ; preds = %str_overflow_abort74, %concat.sum.len70
  %arena.cur75 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur75, i64 %sum71)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs58, i64 %concat.lhs49, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs49
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs69, i64 %concat.rhs60, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur76 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit45

str_overflow_abort74:                             ; preds = %concat.sum.len70
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len73

str_gen_check83:                                  ; preds = %choice.else
  %arena.cur86 = call ptr @dva_arena_current()
  %tag.valid87 = call i1 @dva_arena_validate_tag(ptr %arena.cur86, i64 %str.tag81)
  br i1 %tag.valid87, label %str_ok84, label %str_stale85

str_ok84:                                         ; preds = %str_stale85, %str_gen_check83, %choice.else
  %concat.lhs88 = getelementptr inbounds { i64, ptr }, ptr %var.load77, i32 0, i32 1
  %concat.lhs89 = load ptr, ptr %concat.lhs88, align 8
  %concat.rhs90 = load i64, ptr @str.0.struct, align 8
  %concat.rhs91 = and i64 %concat.rhs90, 281474976710655
  %str.tag92 = lshr i64 %concat.rhs90, 48
  %str.immortal93 = icmp eq i64 %str.tag92, 0
  br i1 %str.immortal93, label %str_ok95, label %str_gen_check94

str_stale85:                                      ; preds = %str_gen_check83
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok84

str_gen_check94:                                  ; preds = %str_ok84
  %arena.cur97 = call ptr @dva_arena_current()
  %tag.valid98 = call i1 @dva_arena_validate_tag(ptr %arena.cur97, i64 %str.tag92)
  br i1 %tag.valid98, label %str_ok95, label %str_stale96

str_ok95:                                         ; preds = %str_stale96, %str_gen_check94, %str_ok84
  %concat.rhs99 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %concat.sum.len100 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs80, i64 %concat.rhs91)
  %sum101 = extractvalue { i64, i1 } %concat.sum.len100, 0
  %ovf102 = extractvalue { i64, i1 } %concat.sum.len100, 1
  br i1 %ovf102, label %str_overflow_abort104, label %concat.sum.len103

str_stale96:                                      ; preds = %str_gen_check94
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok95

concat.sum.len103:                                ; preds = %str_overflow_abort104, %str_ok95
  %concat.tot.len105 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum101, i64 1)
  %sum106 = extractvalue { i64, i1 } %concat.tot.len105, 0
  %ovf107 = extractvalue { i64, i1 } %concat.tot.len105, 1
  br i1 %ovf107, label %str_overflow_abort109, label %concat.tot.len108

str_overflow_abort104:                            ; preds = %str_ok95
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len103

concat.tot.len108:                                ; preds = %str_overflow_abort109, %concat.sum.len103
  %arena.cur110 = call ptr @dva_arena_current()
  %concat.buf111 = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 %sum106)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf111, ptr align 1 %concat.lhs89, i64 %concat.lhs80, i1 false)
  %concat.mid112 = getelementptr i8, ptr %concat.buf111, i64 %concat.lhs80
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid112, ptr align 1 %concat.rhs99, i64 %concat.rhs91, i1 false)
  %concat.nul113 = getelementptr i8, ptr %concat.buf111, i64 %sum101
  store i8 0, ptr %concat.nul113, align 1
  %arena.cur114 = call ptr @dva_arena_current()
  %concat.str115 = call ptr @dva_arena_alloc(ptr %arena.cur114, i64 16)
  %str.build.len.gep116 = getelementptr inbounds { i64, ptr }, ptr %concat.str115, i32 0, i32 0
  store i64 %sum101, ptr %str.build.len.gep116, align 8
  %str.build.data.gep117 = getelementptr inbounds { i64, ptr }, ptr %concat.str115, i32 0, i32 1
  store ptr %concat.buf111, ptr %str.build.data.gep117, align 8
  %var.load118 = load ptr, ptr %var.b, align 8
  %concat.lhs119 = getelementptr inbounds { i64, ptr }, ptr %concat.str115, i32 0, i32 0
  %concat.lhs120 = load i64, ptr %concat.lhs119, align 8
  %concat.lhs121 = and i64 %concat.lhs120, 281474976710655
  %str.tag122 = lshr i64 %concat.lhs120, 48
  %str.immortal123 = icmp eq i64 %str.tag122, 0
  br i1 %str.immortal123, label %str_ok125, label %str_gen_check124

str_overflow_abort109:                            ; preds = %concat.sum.len103
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len108

str_gen_check124:                                 ; preds = %concat.tot.len108
  %arena.cur127 = call ptr @dva_arena_current()
  %tag.valid128 = call i1 @dva_arena_validate_tag(ptr %arena.cur127, i64 %str.tag122)
  br i1 %tag.valid128, label %str_ok125, label %str_stale126

str_ok125:                                        ; preds = %str_stale126, %str_gen_check124, %concat.tot.len108
  %concat.lhs129 = getelementptr inbounds { i64, ptr }, ptr %concat.str115, i32 0, i32 1
  %concat.lhs130 = load ptr, ptr %concat.lhs129, align 8
  %concat.rhs131 = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 0
  %concat.rhs132 = load i64, ptr %concat.rhs131, align 8
  %concat.rhs133 = and i64 %concat.rhs132, 281474976710655
  %str.tag134 = lshr i64 %concat.rhs132, 48
  %str.immortal135 = icmp eq i64 %str.tag134, 0
  br i1 %str.immortal135, label %str_ok137, label %str_gen_check136

str_stale126:                                     ; preds = %str_gen_check124
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok125

str_gen_check136:                                 ; preds = %str_ok125
  %arena.cur139 = call ptr @dva_arena_current()
  %tag.valid140 = call i1 @dva_arena_validate_tag(ptr %arena.cur139, i64 %str.tag134)
  br i1 %tag.valid140, label %str_ok137, label %str_stale138

str_ok137:                                        ; preds = %str_stale138, %str_gen_check136, %str_ok125
  %concat.rhs141 = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 1
  %concat.rhs142 = load ptr, ptr %concat.rhs141, align 8
  %concat.sum.len143 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs121, i64 %concat.rhs133)
  %sum144 = extractvalue { i64, i1 } %concat.sum.len143, 0
  %ovf145 = extractvalue { i64, i1 } %concat.sum.len143, 1
  br i1 %ovf145, label %str_overflow_abort147, label %concat.sum.len146

str_stale138:                                     ; preds = %str_gen_check136
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok137

concat.sum.len146:                                ; preds = %str_overflow_abort147, %str_ok137
  %concat.tot.len148 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum144, i64 1)
  %sum149 = extractvalue { i64, i1 } %concat.tot.len148, 0
  %ovf150 = extractvalue { i64, i1 } %concat.tot.len148, 1
  br i1 %ovf150, label %str_overflow_abort152, label %concat.tot.len151

str_overflow_abort147:                            ; preds = %str_ok137
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len146

concat.tot.len151:                                ; preds = %str_overflow_abort152, %concat.sum.len146
  %arena.cur153 = call ptr @dva_arena_current()
  %concat.buf154 = call ptr @dva_arena_alloc(ptr %arena.cur153, i64 %sum149)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf154, ptr align 1 %concat.lhs130, i64 %concat.lhs121, i1 false)
  %concat.mid155 = getelementptr i8, ptr %concat.buf154, i64 %concat.lhs121
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid155, ptr align 1 %concat.rhs142, i64 %concat.rhs133, i1 false)
  %concat.nul156 = getelementptr i8, ptr %concat.buf154, i64 %sum144
  store i8 0, ptr %concat.nul156, align 1
  %arena.cur157 = call ptr @dva_arena_current()
  %concat.str158 = call ptr @dva_arena_alloc(ptr %arena.cur157, i64 16)
  %str.build.len.gep159 = getelementptr inbounds { i64, ptr }, ptr %concat.str158, i32 0, i32 0
  store i64 %sum144, ptr %str.build.len.gep159, align 8
  %str.build.data.gep160 = getelementptr inbounds { i64, ptr }, ptr %concat.str158, i32 0, i32 1
  store ptr %concat.buf154, ptr %str.build.data.gep160, align 8
  br label %choice.exit45

str_overflow_abort152:                            ; preds = %concat.sum.len146
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len151
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define ptr @"path::win_join"(ptr %0, ptr %1) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
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
  %var.load3 = load ptr, ptr %var.a, align 8
  ret ptr %var.load3

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.a, align 8
  %str.len.query5 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query5, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %str.tag8 = lshr i64 %str.len.query6, 48
  %str.immortal9 = icmp eq i64 %str.tag8, 0
  br i1 %str.immortal9, label %str_ok11, label %str_gen_check10

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check10:                                  ; preds = %choice.exit
  %arena.cur13 = call ptr @dva_arena_current()
  %tag.valid14 = call i1 @dva_arena_validate_tag(ptr %arena.cur13, i64 %str.tag8)
  br i1 %tag.valid14, label %str_ok11, label %str_stale12

str_ok11:                                         ; preds = %str_stale12, %str_gen_check10, %choice.exit
  %cmptmp15 = icmp eq i64 %str.len.query7, 0
  br i1 %cmptmp15, label %or.16.then, label %or.16.else

str_stale12:                                      ; preds = %str_gen_check10
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok11

or.16.then:                                       ; preds = %str_ok11
  br label %or.16.exit

or.16.else:                                       ; preds = %str_ok11
  %var.load16 = load ptr, ptr %var.b, align 8
  %call.res = call i1 @"path::win_is_abs"(ptr %var.load16)
  br label %or.16.exit

or.16.exit:                                       ; preds = %or.16.else, %or.16.then
  %or.16.phi = phi i1 [ %cmptmp15, %or.16.then ], [ %call.res, %or.16.else ]
  br i1 %or.16.phi, label %choice.then17, label %choice.exit18

choice.then17:                                    ; preds = %or.16.exit
  %var.load19 = load ptr, ptr %var.b, align 8
  ret ptr %var.load19

choice.exit18:                                    ; preds = %ret.dead20, %or.16.exit
  %var.load21 = load ptr, ptr %var.a, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 0
  %s.read.len22 = load i64, ptr %s.read.len, align 8
  %s.read.len23 = and i64 %s.read.len22, 281474976710655
  %str.tag24 = lshr i64 %s.read.len22, 48
  %str.immortal25 = icmp eq i64 %str.tag24, 0
  br i1 %str.immortal25, label %str_ok27, label %str_gen_check26

ret.dead20:                                       ; No predecessors!
  br label %choice.exit18

str_gen_check26:                                  ; preds = %choice.exit18
  %arena.cur29 = call ptr @dva_arena_current()
  %tag.valid30 = call i1 @dva_arena_validate_tag(ptr %arena.cur29, i64 %str.tag24)
  br i1 %tag.valid30, label %str_ok27, label %str_stale28

str_ok27:                                         ; preds = %str_stale28, %str_gen_check26, %choice.exit18
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 1
  %s.read.data31 = load ptr, ptr %s.read.data, align 8
  %var.load32 = load ptr, ptr %var.a, align 8
  %str.len.query33 = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 0
  %str.len.query34 = load i64, ptr %str.len.query33, align 8
  %str.len.query35 = and i64 %str.len.query34, 281474976710655
  %str.tag36 = lshr i64 %str.len.query34, 48
  %str.immortal37 = icmp eq i64 %str.tag36, 0
  br i1 %str.immortal37, label %str_ok39, label %str_gen_check38

str_stale28:                                      ; preds = %str_gen_check26
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok27

str_gen_check38:                                  ; preds = %str_ok27
  %arena.cur41 = call ptr @dva_arena_current()
  %tag.valid42 = call i1 @dva_arena_validate_tag(ptr %arena.cur41, i64 %str.tag36)
  br i1 %tag.valid42, label %str_ok39, label %str_stale40

str_ok39:                                         ; preds = %str_stale40, %str_gen_check38, %str_ok27
  %subtmp = sub i64 %str.len.query35, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale40:                                      ; preds = %str_gen_check38
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok39

idx_big_check:                                    ; preds = %str_ok39
  %idx.big = icmp sge i64 %subtmp, %s.read.len23
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data31, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res43 = call i1 @"path::is_win_sep"(i64 %s.byte.val)
  br i1 %call.res43, label %choice.then44, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok39
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then44:                                    ; preds = %idx_ok
  %var.load46 = load ptr, ptr %var.a, align 8
  %var.load47 = load ptr, ptr %var.b, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load46, i32 0, i32 0
  %concat.lhs48 = load i64, ptr %concat.lhs, align 8
  %concat.lhs49 = and i64 %concat.lhs48, 281474976710655
  %str.tag50 = lshr i64 %concat.lhs48, 48
  %str.immortal51 = icmp eq i64 %str.tag50, 0
  br i1 %str.immortal51, label %str_ok53, label %str_gen_check52

choice.else:                                      ; preds = %idx_ok
  %var.load77 = load ptr, ptr %var.a, align 8
  %concat.lhs78 = getelementptr inbounds { i64, ptr }, ptr %var.load77, i32 0, i32 0
  %concat.lhs79 = load i64, ptr %concat.lhs78, align 8
  %concat.lhs80 = and i64 %concat.lhs79, 281474976710655
  %str.tag81 = lshr i64 %concat.lhs79, 48
  %str.immortal82 = icmp eq i64 %str.tag81, 0
  br i1 %str.immortal82, label %str_ok84, label %str_gen_check83

choice.exit45:                                    ; preds = %concat.tot.len151, %concat.tot.len73
  %choice.res = phi ptr [ %concat.str, %concat.tot.len73 ], [ %concat.str158, %concat.tot.len151 ]
  ret ptr %choice.res

str_gen_check52:                                  ; preds = %choice.then44
  %arena.cur55 = call ptr @dva_arena_current()
  %tag.valid56 = call i1 @dva_arena_validate_tag(ptr %arena.cur55, i64 %str.tag50)
  br i1 %tag.valid56, label %str_ok53, label %str_stale54

str_ok53:                                         ; preds = %str_stale54, %str_gen_check52, %choice.then44
  %concat.lhs57 = getelementptr inbounds { i64, ptr }, ptr %var.load46, i32 0, i32 1
  %concat.lhs58 = load ptr, ptr %concat.lhs57, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load47, i32 0, i32 0
  %concat.rhs59 = load i64, ptr %concat.rhs, align 8
  %concat.rhs60 = and i64 %concat.rhs59, 281474976710655
  %str.tag61 = lshr i64 %concat.rhs59, 48
  %str.immortal62 = icmp eq i64 %str.tag61, 0
  br i1 %str.immortal62, label %str_ok64, label %str_gen_check63

str_stale54:                                      ; preds = %str_gen_check52
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok53

str_gen_check63:                                  ; preds = %str_ok53
  %arena.cur66 = call ptr @dva_arena_current()
  %tag.valid67 = call i1 @dva_arena_validate_tag(ptr %arena.cur66, i64 %str.tag61)
  br i1 %tag.valid67, label %str_ok64, label %str_stale65

str_ok64:                                         ; preds = %str_stale65, %str_gen_check63, %str_ok53
  %concat.rhs68 = getelementptr inbounds { i64, ptr }, ptr %var.load47, i32 0, i32 1
  %concat.rhs69 = load ptr, ptr %concat.rhs68, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs49, i64 %concat.rhs60)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len70

str_stale65:                                      ; preds = %str_gen_check63
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok64

concat.sum.len70:                                 ; preds = %str_overflow_abort, %str_ok64
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum71 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf72 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf72, label %str_overflow_abort74, label %concat.tot.len73

str_overflow_abort:                               ; preds = %str_ok64
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len70

concat.tot.len73:                                 ; preds = %str_overflow_abort74, %concat.sum.len70
  %arena.cur75 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur75, i64 %sum71)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs58, i64 %concat.lhs49, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs49
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs69, i64 %concat.rhs60, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur76 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit45

str_overflow_abort74:                             ; preds = %concat.sum.len70
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len73

str_gen_check83:                                  ; preds = %choice.else
  %arena.cur86 = call ptr @dva_arena_current()
  %tag.valid87 = call i1 @dva_arena_validate_tag(ptr %arena.cur86, i64 %str.tag81)
  br i1 %tag.valid87, label %str_ok84, label %str_stale85

str_ok84:                                         ; preds = %str_stale85, %str_gen_check83, %choice.else
  %concat.lhs88 = getelementptr inbounds { i64, ptr }, ptr %var.load77, i32 0, i32 1
  %concat.lhs89 = load ptr, ptr %concat.lhs88, align 8
  %concat.rhs90 = load i64, ptr @str.2.struct, align 8
  %concat.rhs91 = and i64 %concat.rhs90, 281474976710655
  %str.tag92 = lshr i64 %concat.rhs90, 48
  %str.immortal93 = icmp eq i64 %str.tag92, 0
  br i1 %str.immortal93, label %str_ok95, label %str_gen_check94

str_stale85:                                      ; preds = %str_gen_check83
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok84

str_gen_check94:                                  ; preds = %str_ok84
  %arena.cur97 = call ptr @dva_arena_current()
  %tag.valid98 = call i1 @dva_arena_validate_tag(ptr %arena.cur97, i64 %str.tag92)
  br i1 %tag.valid98, label %str_ok95, label %str_stale96

str_ok95:                                         ; preds = %str_stale96, %str_gen_check94, %str_ok84
  %concat.rhs99 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %concat.sum.len100 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs80, i64 %concat.rhs91)
  %sum101 = extractvalue { i64, i1 } %concat.sum.len100, 0
  %ovf102 = extractvalue { i64, i1 } %concat.sum.len100, 1
  br i1 %ovf102, label %str_overflow_abort104, label %concat.sum.len103

str_stale96:                                      ; preds = %str_gen_check94
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok95

concat.sum.len103:                                ; preds = %str_overflow_abort104, %str_ok95
  %concat.tot.len105 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum101, i64 1)
  %sum106 = extractvalue { i64, i1 } %concat.tot.len105, 0
  %ovf107 = extractvalue { i64, i1 } %concat.tot.len105, 1
  br i1 %ovf107, label %str_overflow_abort109, label %concat.tot.len108

str_overflow_abort104:                            ; preds = %str_ok95
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len103

concat.tot.len108:                                ; preds = %str_overflow_abort109, %concat.sum.len103
  %arena.cur110 = call ptr @dva_arena_current()
  %concat.buf111 = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 %sum106)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf111, ptr align 1 %concat.lhs89, i64 %concat.lhs80, i1 false)
  %concat.mid112 = getelementptr i8, ptr %concat.buf111, i64 %concat.lhs80
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid112, ptr align 1 %concat.rhs99, i64 %concat.rhs91, i1 false)
  %concat.nul113 = getelementptr i8, ptr %concat.buf111, i64 %sum101
  store i8 0, ptr %concat.nul113, align 1
  %arena.cur114 = call ptr @dva_arena_current()
  %concat.str115 = call ptr @dva_arena_alloc(ptr %arena.cur114, i64 16)
  %str.build.len.gep116 = getelementptr inbounds { i64, ptr }, ptr %concat.str115, i32 0, i32 0
  store i64 %sum101, ptr %str.build.len.gep116, align 8
  %str.build.data.gep117 = getelementptr inbounds { i64, ptr }, ptr %concat.str115, i32 0, i32 1
  store ptr %concat.buf111, ptr %str.build.data.gep117, align 8
  %var.load118 = load ptr, ptr %var.b, align 8
  %concat.lhs119 = getelementptr inbounds { i64, ptr }, ptr %concat.str115, i32 0, i32 0
  %concat.lhs120 = load i64, ptr %concat.lhs119, align 8
  %concat.lhs121 = and i64 %concat.lhs120, 281474976710655
  %str.tag122 = lshr i64 %concat.lhs120, 48
  %str.immortal123 = icmp eq i64 %str.tag122, 0
  br i1 %str.immortal123, label %str_ok125, label %str_gen_check124

str_overflow_abort109:                            ; preds = %concat.sum.len103
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len108

str_gen_check124:                                 ; preds = %concat.tot.len108
  %arena.cur127 = call ptr @dva_arena_current()
  %tag.valid128 = call i1 @dva_arena_validate_tag(ptr %arena.cur127, i64 %str.tag122)
  br i1 %tag.valid128, label %str_ok125, label %str_stale126

str_ok125:                                        ; preds = %str_stale126, %str_gen_check124, %concat.tot.len108
  %concat.lhs129 = getelementptr inbounds { i64, ptr }, ptr %concat.str115, i32 0, i32 1
  %concat.lhs130 = load ptr, ptr %concat.lhs129, align 8
  %concat.rhs131 = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 0
  %concat.rhs132 = load i64, ptr %concat.rhs131, align 8
  %concat.rhs133 = and i64 %concat.rhs132, 281474976710655
  %str.tag134 = lshr i64 %concat.rhs132, 48
  %str.immortal135 = icmp eq i64 %str.tag134, 0
  br i1 %str.immortal135, label %str_ok137, label %str_gen_check136

str_stale126:                                     ; preds = %str_gen_check124
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok125

str_gen_check136:                                 ; preds = %str_ok125
  %arena.cur139 = call ptr @dva_arena_current()
  %tag.valid140 = call i1 @dva_arena_validate_tag(ptr %arena.cur139, i64 %str.tag134)
  br i1 %tag.valid140, label %str_ok137, label %str_stale138

str_ok137:                                        ; preds = %str_stale138, %str_gen_check136, %str_ok125
  %concat.rhs141 = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 1
  %concat.rhs142 = load ptr, ptr %concat.rhs141, align 8
  %concat.sum.len143 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs121, i64 %concat.rhs133)
  %sum144 = extractvalue { i64, i1 } %concat.sum.len143, 0
  %ovf145 = extractvalue { i64, i1 } %concat.sum.len143, 1
  br i1 %ovf145, label %str_overflow_abort147, label %concat.sum.len146

str_stale138:                                     ; preds = %str_gen_check136
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok137

concat.sum.len146:                                ; preds = %str_overflow_abort147, %str_ok137
  %concat.tot.len148 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum144, i64 1)
  %sum149 = extractvalue { i64, i1 } %concat.tot.len148, 0
  %ovf150 = extractvalue { i64, i1 } %concat.tot.len148, 1
  br i1 %ovf150, label %str_overflow_abort152, label %concat.tot.len151

str_overflow_abort147:                            ; preds = %str_ok137
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len146

concat.tot.len151:                                ; preds = %str_overflow_abort152, %concat.sum.len146
  %arena.cur153 = call ptr @dva_arena_current()
  %concat.buf154 = call ptr @dva_arena_alloc(ptr %arena.cur153, i64 %sum149)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf154, ptr align 1 %concat.lhs130, i64 %concat.lhs121, i1 false)
  %concat.mid155 = getelementptr i8, ptr %concat.buf154, i64 %concat.lhs121
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid155, ptr align 1 %concat.rhs142, i64 %concat.rhs133, i1 false)
  %concat.nul156 = getelementptr i8, ptr %concat.buf154, i64 %sum144
  store i8 0, ptr %concat.nul156, align 1
  %arena.cur157 = call ptr @dva_arena_current()
  %concat.str158 = call ptr @dva_arena_alloc(ptr %arena.cur157, i64 16)
  %str.build.len.gep159 = getelementptr inbounds { i64, ptr }, ptr %concat.str158, i32 0, i32 0
  store i64 %sum144, ptr %str.build.len.gep159, align 8
  %str.build.data.gep160 = getelementptr inbounds { i64, ptr }, ptr %concat.str158, i32 0, i32 1
  store ptr %concat.buf154, ptr %str.build.data.gep160, align 8
  br label %choice.exit45

str_overflow_abort152:                            ; preds = %concat.sum.len146
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len151
}

define ptr @"path::join"(ptr %0, ptr %1) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.b, align 8
  br i1 false, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load = load ptr, ptr %var.a, align 8
  %var.load1 = load ptr, ptr %var.b, align 8
  %call.res = call ptr @"path::win_join"(ptr %var.load, ptr %var.load1)
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.a, align 8
  %var.load3 = load ptr, ptr %var.b, align 8
  %call.res4 = call ptr @"path::posix_join"(ptr %var.load2, ptr %var.load3)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %call.res, %choice.then ], [ %call.res4, %choice.else ]
  ret ptr %choice.res
}

define ptr @"path::posix_parent"(ptr %0) #1 {
entry:
  %var.idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.17 = alloca i64, align 8
  %loop.idx.17 = alloca i64, align 8
  %"var.last_sep'" = alloca i64, align 8
  %var.clen = alloca i64, align 8
  %var.clean = alloca ptr, align 8
  %var.len = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
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
  ret ptr @str.3.struct

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.p, align 8
  %call.res = call ptr @"path::posix_strip_trailing_sep"(ptr %var.load4)
  store ptr %call.res, ptr %var.clean, align 8
  %var.load5 = load ptr, ptr %var.clean, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len6 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len7 = and i64 %eq.lhs.len6, 281474976710655
  %str.tag8 = lshr i64 %eq.lhs.len6, 48
  %str.immortal9 = icmp eq i64 %str.tag8, 0
  br i1 %str.immortal9, label %str_ok11, label %str_gen_check10

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check10:                                  ; preds = %choice.exit
  %arena.cur13 = call ptr @dva_arena_current()
  %tag.valid14 = call i1 @dva_arena_validate_tag(ptr %arena.cur13, i64 %str.tag8)
  br i1 %tag.valid14, label %str_ok11, label %str_stale12

str_ok11:                                         ; preds = %str_stale12, %str_gen_check10, %choice.exit
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len15 = and i64 %eq.rhs.len, 281474976710655
  %str.tag16 = lshr i64 %eq.rhs.len, 48
  %str.immortal17 = icmp eq i64 %str.tag16, 0
  br i1 %str.immortal17, label %str_ok19, label %str_gen_check18

str_stale12:                                      ; preds = %str_gen_check10
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok11

str_gen_check18:                                  ; preds = %str_ok11
  %arena.cur21 = call ptr @dva_arena_current()
  %tag.valid22 = call i1 @dva_arena_validate_tag(ptr %arena.cur21, i64 %str.tag16)
  br i1 %tag.valid22, label %str_ok19, label %str_stale20

str_ok19:                                         ; preds = %str_stale20, %str_gen_check18, %str_ok11
  %eq.len = icmp eq i64 %eq.lhs.len7, %eq.rhs.len15
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale20:                                      ; preds = %str_gen_check18
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok19

str.eq.then:                                      ; preds = %str_ok19
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data23 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data23, ptr %eq.rhs.data, i64 %eq.lhs.len7)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok19
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then24, label %choice.exit25

choice.then24:                                    ; preds = %str.eq.merge
  ret ptr @str.0.struct

choice.exit25:                                    ; preds = %ret.dead26, %str.eq.merge
  %var.load27 = load ptr, ptr %var.clean, align 8
  %str.len.query28 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %str.len.query29 = load i64, ptr %str.len.query28, align 8
  %str.len.query30 = and i64 %str.len.query29, 281474976710655
  %str.tag31 = lshr i64 %str.len.query29, 48
  %str.immortal32 = icmp eq i64 %str.tag31, 0
  br i1 %str.immortal32, label %str_ok34, label %str_gen_check33

ret.dead26:                                       ; No predecessors!
  br label %choice.exit25

str_gen_check33:                                  ; preds = %choice.exit25
  %arena.cur36 = call ptr @dva_arena_current()
  %tag.valid37 = call i1 @dva_arena_validate_tag(ptr %arena.cur36, i64 %str.tag31)
  br i1 %tag.valid37, label %str_ok34, label %str_stale35

str_ok34:                                         ; preds = %str_stale35, %str_gen_check33, %choice.exit25
  store i64 %str.len.query30, ptr %var.clen, align 8
  store i64 -1, ptr %"var.last_sep'", align 8
  %var.load38 = load i64, ptr %var.clen, align 8
  store i64 0, ptr %loop.idx.17, align 8
  br label %loop.header.17

str_stale35:                                      ; preds = %str_gen_check33
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok34

loop.header.17:                                   ; preds = %loop.latch.17, %str_ok34
  %counter.load = load i64, ptr %loop.idx.17, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load38
  br i1 %loop.cond, label %loop.body.17, label %loop.exit.nat.17

loop.body.17:                                     ; preds = %loop.header.17
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.17, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load39 = load i64, ptr %var.clen, align 8
  %subtmp = sub i64 %var.load39, 1
  %var.load40 = load i64, ptr %var.i, align 8
  %subtmp41 = sub i64 %subtmp, %var.load40
  store i64 %subtmp41, ptr %var.idx, align 8
  %var.load42 = load ptr, ptr %var.clean, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 0
  %s.read.len43 = load i64, ptr %s.read.len, align 8
  %s.read.len44 = and i64 %s.read.len43, 281474976710655
  %str.tag45 = lshr i64 %s.read.len43, 48
  %str.immortal46 = icmp eq i64 %str.tag45, 0
  br i1 %str.immortal46, label %str_ok48, label %str_gen_check47

loop.exit.nat.17:                                 ; preds = %loop.header.17
  br label %loop.exit.17

loop.latch.17:                                    ; preds = %choice.exit58
  %step.val = load i64, ptr %loop.step.17, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.17, align 8
  br label %loop.header.17

loop.exit.17:                                     ; preds = %loop.exit.nat.17
  %var.load60 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp61 = icmp slt i64 %var.load60, 0
  br i1 %cmptmp61, label %choice.then62, label %choice.else

str_gen_check47:                                  ; preds = %loop.body.17
  %arena.cur50 = call ptr @dva_arena_current()
  %tag.valid51 = call i1 @dva_arena_validate_tag(ptr %arena.cur50, i64 %str.tag45)
  br i1 %tag.valid51, label %str_ok48, label %str_stale49

str_ok48:                                         ; preds = %str_stale49, %str_gen_check47, %loop.body.17
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 1
  %s.read.data52 = load ptr, ptr %s.read.data, align 8
  %var.load53 = load i64, ptr %var.idx, align 8
  %idx.neg = icmp slt i64 %var.load53, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale49:                                      ; preds = %str_gen_check47
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok48

idx_big_check:                                    ; preds = %str_ok48
  %idx.big = icmp sge i64 %var.load53, %s.read.len44
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data52, i64 %var.load53
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp54 = icmp eq i64 %s.byte.val, 47
  br i1 %cmptmp54, label %and.18.then, label %and.18.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok48
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.18.then:                                      ; preds = %idx_ok
  %var.load55 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp56 = icmp slt i64 %var.load55, 0
  br label %and.18.exit

and.18.else:                                      ; preds = %idx_ok
  br label %and.18.exit

and.18.exit:                                      ; preds = %and.18.else, %and.18.then
  %and.18.phi = phi i1 [ %cmptmp56, %and.18.then ], [ %cmptmp54, %and.18.else ]
  br i1 %and.18.phi, label %choice.then57, label %choice.exit58

choice.then57:                                    ; preds = %and.18.exit
  %var.load59 = load i64, ptr %var.idx, align 8
  store i64 %var.load59, ptr %"var.last_sep'", align 8
  br label %choice.exit58

choice.exit58:                                    ; preds = %choice.then57, %and.18.exit
  br label %loop.latch.17

choice.then62:                                    ; preds = %loop.exit.17
  br label %choice.exit63

choice.else:                                      ; preds = %loop.exit.17
  %var.load64 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp65 = icmp eq i64 %var.load64, 0
  br i1 %cmptmp65, label %choice.then66, label %choice.else67

choice.exit63:                                    ; preds = %choice.exit68, %choice.then62
  %choice.res84 = phi ptr [ @str.3.struct, %choice.then62 ], [ %choice.res, %choice.exit68 ]
  ret ptr %choice.res84

choice.then66:                                    ; preds = %choice.else
  br label %choice.exit68

choice.else67:                                    ; preds = %choice.else
  %var.load69 = load ptr, ptr %var.clean, align 8
  %s.read.len70 = getelementptr inbounds { i64, ptr }, ptr %var.load69, i32 0, i32 0
  %s.read.len71 = load i64, ptr %s.read.len70, align 8
  %s.read.len72 = and i64 %s.read.len71, 281474976710655
  %str.tag73 = lshr i64 %s.read.len71, 48
  %str.immortal74 = icmp eq i64 %str.tag73, 0
  br i1 %str.immortal74, label %str_ok76, label %str_gen_check75

choice.exit68:                                    ; preds = %str_ok76, %choice.then66
  %choice.res = phi ptr [ @str.0.struct, %choice.then66 ], [ %str.view, %str_ok76 ]
  br label %choice.exit63

str_gen_check75:                                  ; preds = %choice.else67
  %arena.cur78 = call ptr @dva_arena_current()
  %tag.valid79 = call i1 @dva_arena_validate_tag(ptr %arena.cur78, i64 %str.tag73)
  br i1 %tag.valid79, label %str_ok76, label %str_stale77

str_ok76:                                         ; preds = %str_stale77, %str_gen_check75, %choice.else67
  %s.read.data80 = getelementptr inbounds { i64, ptr }, ptr %var.load69, i32 0, i32 1
  %s.read.data81 = load ptr, ptr %s.read.data80, align 8
  %var.load82 = load i64, ptr %"var.last_sep'", align 8
  %rel.start = add i64 %s.read.len72, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len72
  %final.start = select i1 %start.gt.len, i64 %s.read.len72, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load82, 0
  %rel.end = add i64 %s.read.len72, %var.load82
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load82
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len72
  %final.end = select i1 %end.gt.len, i64 %s.read.len72, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data81, i64 %final.start
  %arena.cur83 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur83, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit68

str_stale77:                                      ; preds = %str_gen_check75
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok76
}

declare i32 @memcmp(ptr, ptr, i64)

define ptr @"path::win_parent"(ptr %0) #1 {
entry:
  %var.idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.20 = alloca i64, align 8
  %loop.idx.20 = alloca i64, align 8
  %"var.last_sep'" = alloca i64, align 8
  %var.clen = alloca i64, align 8
  %var.rlen = alloca i64, align 8
  %var.clean = alloca ptr, align 8
  %var.len = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
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
  ret ptr @str.3.struct

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.p, align 8
  %call.res = call ptr @"path::win_strip_trailing_sep"(ptr %var.load4)
  store ptr %call.res, ptr %var.clean, align 8
  %var.load5 = load ptr, ptr %var.clean, align 8
  %call.res6 = call i64 @"path::win_root_len"(ptr %var.load5)
  store i64 %call.res6, ptr %var.rlen, align 8
  %var.load7 = load ptr, ptr %var.clean, align 8
  %str.len.query8 = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %str.len.query9 = load i64, ptr %str.len.query8, align 8
  %str.len.query10 = and i64 %str.len.query9, 281474976710655
  %str.tag11 = lshr i64 %str.len.query9, 48
  %str.immortal12 = icmp eq i64 %str.tag11, 0
  br i1 %str.immortal12, label %str_ok14, label %str_gen_check13

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check13:                                  ; preds = %choice.exit
  %arena.cur16 = call ptr @dva_arena_current()
  %tag.valid17 = call i1 @dva_arena_validate_tag(ptr %arena.cur16, i64 %str.tag11)
  br i1 %tag.valid17, label %str_ok14, label %str_stale15

str_ok14:                                         ; preds = %str_stale15, %str_gen_check13, %choice.exit
  store i64 %str.len.query10, ptr %var.clen, align 8
  %var.load18 = load i64, ptr %var.rlen, align 8
  %cmptmp19 = icmp sgt i64 %var.load18, 0
  br i1 %cmptmp19, label %and.19.then, label %and.19.else

str_stale15:                                      ; preds = %str_gen_check13
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok14

and.19.then:                                      ; preds = %str_ok14
  %var.load20 = load i64, ptr %var.clen, align 8
  %var.load21 = load i64, ptr %var.rlen, align 8
  %cmptmp22 = icmp eq i64 %var.load20, %var.load21
  br label %and.19.exit

and.19.else:                                      ; preds = %str_ok14
  br label %and.19.exit

and.19.exit:                                      ; preds = %and.19.else, %and.19.then
  %and.19.phi = phi i1 [ %cmptmp22, %and.19.then ], [ %cmptmp19, %and.19.else ]
  br i1 %and.19.phi, label %choice.then23, label %choice.exit24

choice.then23:                                    ; preds = %and.19.exit
  %var.load25 = load ptr, ptr %var.clean, align 8
  ret ptr %var.load25

choice.exit24:                                    ; preds = %ret.dead26, %and.19.exit
  store i64 -1, ptr %"var.last_sep'", align 8
  %var.load27 = load i64, ptr %var.clen, align 8
  store i64 0, ptr %loop.idx.20, align 8
  br label %loop.header.20

ret.dead26:                                       ; No predecessors!
  br label %choice.exit24

loop.header.20:                                   ; preds = %loop.latch.20, %choice.exit24
  %counter.load = load i64, ptr %loop.idx.20, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load27
  br i1 %loop.cond, label %loop.body.20, label %loop.exit.nat.20

loop.body.20:                                     ; preds = %loop.header.20
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.20, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load28 = load i64, ptr %var.clen, align 8
  %subtmp = sub i64 %var.load28, 1
  %var.load29 = load i64, ptr %var.i, align 8
  %subtmp30 = sub i64 %subtmp, %var.load29
  store i64 %subtmp30, ptr %var.idx, align 8
  %var.load31 = load ptr, ptr %var.clean, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 0
  %s.read.len32 = load i64, ptr %s.read.len, align 8
  %s.read.len33 = and i64 %s.read.len32, 281474976710655
  %str.tag34 = lshr i64 %s.read.len32, 48
  %str.immortal35 = icmp eq i64 %str.tag34, 0
  br i1 %str.immortal35, label %str_ok37, label %str_gen_check36

loop.exit.nat.20:                                 ; preds = %loop.header.20
  br label %loop.exit.20

loop.latch.20:                                    ; preds = %choice.exit47
  %step.val = load i64, ptr %loop.step.20, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.20, align 8
  br label %loop.header.20

loop.exit.20:                                     ; preds = %loop.exit.nat.20
  %var.load49 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp50 = icmp slt i64 %var.load49, 0
  br i1 %cmptmp50, label %choice.then51, label %choice.else

str_gen_check36:                                  ; preds = %loop.body.20
  %arena.cur39 = call ptr @dva_arena_current()
  %tag.valid40 = call i1 @dva_arena_validate_tag(ptr %arena.cur39, i64 %str.tag34)
  br i1 %tag.valid40, label %str_ok37, label %str_stale38

str_ok37:                                         ; preds = %str_stale38, %str_gen_check36, %loop.body.20
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 1
  %s.read.data41 = load ptr, ptr %s.read.data, align 8
  %var.load42 = load i64, ptr %var.idx, align 8
  %idx.neg = icmp slt i64 %var.load42, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale38:                                      ; preds = %str_gen_check36
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok37

idx_big_check:                                    ; preds = %str_ok37
  %idx.big = icmp sge i64 %var.load42, %s.read.len33
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data41, i64 %var.load42
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res43 = call i1 @"path::is_win_sep"(i64 %s.byte.val)
  br i1 %call.res43, label %and.21.then, label %and.21.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok37
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.21.then:                                      ; preds = %idx_ok
  %var.load44 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp45 = icmp slt i64 %var.load44, 0
  br label %and.21.exit

and.21.else:                                      ; preds = %idx_ok
  br label %and.21.exit

and.21.exit:                                      ; preds = %and.21.else, %and.21.then
  %and.21.phi = phi i1 [ %cmptmp45, %and.21.then ], [ %call.res43, %and.21.else ]
  br i1 %and.21.phi, label %choice.then46, label %choice.exit47

choice.then46:                                    ; preds = %and.21.exit
  %var.load48 = load i64, ptr %var.idx, align 8
  store i64 %var.load48, ptr %"var.last_sep'", align 8
  br label %choice.exit47

choice.exit47:                                    ; preds = %choice.then46, %and.21.exit
  br label %loop.latch.20

choice.then51:                                    ; preds = %loop.exit.20
  %var.load53 = load i64, ptr %var.rlen, align 8
  %cmptmp54 = icmp eq i64 %var.load53, 2
  br i1 %cmptmp54, label %choice.then55, label %choice.else56

choice.else:                                      ; preds = %loop.exit.20
  %var.load72 = load i64, ptr %"var.last_sep'", align 8
  %var.load73 = load i64, ptr %var.rlen, align 8
  %cmptmp74 = icmp slt i64 %var.load72, %var.load73
  br i1 %cmptmp74, label %choice.then75, label %choice.else76

choice.exit52:                                    ; preds = %choice.exit77, %choice.exit57
  %choice.res148 = phi ptr [ %choice.res, %choice.exit57 ], [ %choice.res147, %choice.exit77 ]
  ret ptr %choice.res148

choice.then55:                                    ; preds = %choice.then51
  %var.load58 = load ptr, ptr %var.clean, align 8
  %s.read.len59 = getelementptr inbounds { i64, ptr }, ptr %var.load58, i32 0, i32 0
  %s.read.len60 = load i64, ptr %s.read.len59, align 8
  %s.read.len61 = and i64 %s.read.len60, 281474976710655
  %str.tag62 = lshr i64 %s.read.len60, 48
  %str.immortal63 = icmp eq i64 %str.tag62, 0
  br i1 %str.immortal63, label %str_ok65, label %str_gen_check64

choice.else56:                                    ; preds = %choice.then51
  br label %choice.exit57

choice.exit57:                                    ; preds = %choice.else56, %str_ok65
  %choice.res = phi ptr [ %str.view, %str_ok65 ], [ @str.3.struct, %choice.else56 ]
  br label %choice.exit52

str_gen_check64:                                  ; preds = %choice.then55
  %arena.cur67 = call ptr @dva_arena_current()
  %tag.valid68 = call i1 @dva_arena_validate_tag(ptr %arena.cur67, i64 %str.tag62)
  br i1 %tag.valid68, label %str_ok65, label %str_stale66

str_ok65:                                         ; preds = %str_stale66, %str_gen_check64, %choice.then55
  %s.read.data69 = getelementptr inbounds { i64, ptr }, ptr %var.load58, i32 0, i32 1
  %s.read.data70 = load ptr, ptr %s.read.data69, align 8
  %rel.start = add i64 %s.read.len61, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len61
  %final.start = select i1 %start.gt.len, i64 %s.read.len61, i64 %c.start.0
  %rel.end = add i64 %s.read.len61, 2
  %norm.end = select i1 false, i64 %rel.end, i64 2
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len61
  %final.end = select i1 %end.gt.len, i64 %s.read.len61, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data70, i64 %final.start
  %arena.cur71 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit57

str_stale66:                                      ; preds = %str_gen_check64
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok65

choice.then75:                                    ; preds = %choice.else
  %var.load78 = load ptr, ptr %var.clean, align 8
  %s.read.len79 = getelementptr inbounds { i64, ptr }, ptr %var.load78, i32 0, i32 0
  %s.read.len80 = load i64, ptr %s.read.len79, align 8
  %s.read.len81 = and i64 %s.read.len80, 281474976710655
  %str.tag82 = lshr i64 %s.read.len80, 48
  %str.immortal83 = icmp eq i64 %str.tag82, 0
  br i1 %str.immortal83, label %str_ok85, label %str_gen_check84

choice.else76:                                    ; preds = %choice.else
  %var.load112 = load ptr, ptr %var.clean, align 8
  %s.read.len113 = getelementptr inbounds { i64, ptr }, ptr %var.load112, i32 0, i32 0
  %s.read.len114 = load i64, ptr %s.read.len113, align 8
  %s.read.len115 = and i64 %s.read.len114, 281474976710655
  %str.tag116 = lshr i64 %s.read.len114, 48
  %str.immortal117 = icmp eq i64 %str.tag116, 0
  br i1 %str.immortal117, label %str_ok119, label %str_gen_check118

choice.exit77:                                    ; preds = %str_ok119, %str_ok85
  %choice.res147 = phi ptr [ %str.view109, %str_ok85 ], [ %str.view144, %str_ok119 ]
  br label %choice.exit52

str_gen_check84:                                  ; preds = %choice.then75
  %arena.cur87 = call ptr @dva_arena_current()
  %tag.valid88 = call i1 @dva_arena_validate_tag(ptr %arena.cur87, i64 %str.tag82)
  br i1 %tag.valid88, label %str_ok85, label %str_stale86

str_ok85:                                         ; preds = %str_stale86, %str_gen_check84, %choice.then75
  %s.read.data89 = getelementptr inbounds { i64, ptr }, ptr %var.load78, i32 0, i32 1
  %s.read.data90 = load ptr, ptr %s.read.data89, align 8
  %var.load91 = load i64, ptr %var.rlen, align 8
  %rel.start92 = add i64 %s.read.len81, 0
  %norm.start93 = select i1 false, i64 %rel.start92, i64 0
  %start.lt.094 = icmp slt i64 %norm.start93, 0
  %c.start.095 = select i1 %start.lt.094, i64 0, i64 %norm.start93
  %start.gt.len96 = icmp sgt i64 %c.start.095, %s.read.len81
  %final.start97 = select i1 %start.gt.len96, i64 %s.read.len81, i64 %c.start.095
  %end.is_neg = icmp slt i64 %var.load91, 0
  %rel.end98 = add i64 %s.read.len81, %var.load91
  %norm.end99 = select i1 %end.is_neg, i64 %rel.end98, i64 %var.load91
  %end.lt.0100 = icmp slt i64 %norm.end99, 0
  %c.end.0101 = select i1 %end.lt.0100, i64 0, i64 %norm.end99
  %end.gt.len102 = icmp sgt i64 %c.end.0101, %s.read.len81
  %final.end103 = select i1 %end.gt.len102, i64 %s.read.len81, i64 %c.end.0101
  %view.empty104 = icmp sle i64 %final.end103, %final.start97
  %view.len.sub105 = sub i64 %final.end103, %final.start97
  %view.len106 = select i1 %view.empty104, i64 0, i64 %view.len.sub105
  %view.data107 = getelementptr i8, ptr %s.read.data90, i64 %final.start97
  %arena.cur108 = call ptr @dva_arena_current()
  %str.view109 = call ptr @dva_arena_alloc(ptr %arena.cur108, i64 16)
  %str.build.len.gep110 = getelementptr inbounds { i64, ptr }, ptr %str.view109, i32 0, i32 0
  store i64 %view.len106, ptr %str.build.len.gep110, align 8
  %str.build.data.gep111 = getelementptr inbounds { i64, ptr }, ptr %str.view109, i32 0, i32 1
  store ptr %view.data107, ptr %str.build.data.gep111, align 8
  br label %choice.exit77

str_stale86:                                      ; preds = %str_gen_check84
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok85

str_gen_check118:                                 ; preds = %choice.else76
  %arena.cur121 = call ptr @dva_arena_current()
  %tag.valid122 = call i1 @dva_arena_validate_tag(ptr %arena.cur121, i64 %str.tag116)
  br i1 %tag.valid122, label %str_ok119, label %str_stale120

str_ok119:                                        ; preds = %str_stale120, %str_gen_check118, %choice.else76
  %s.read.data123 = getelementptr inbounds { i64, ptr }, ptr %var.load112, i32 0, i32 1
  %s.read.data124 = load ptr, ptr %s.read.data123, align 8
  %var.load125 = load i64, ptr %"var.last_sep'", align 8
  %rel.start126 = add i64 %s.read.len115, 0
  %norm.start127 = select i1 false, i64 %rel.start126, i64 0
  %start.lt.0128 = icmp slt i64 %norm.start127, 0
  %c.start.0129 = select i1 %start.lt.0128, i64 0, i64 %norm.start127
  %start.gt.len130 = icmp sgt i64 %c.start.0129, %s.read.len115
  %final.start131 = select i1 %start.gt.len130, i64 %s.read.len115, i64 %c.start.0129
  %end.is_neg132 = icmp slt i64 %var.load125, 0
  %rel.end133 = add i64 %s.read.len115, %var.load125
  %norm.end134 = select i1 %end.is_neg132, i64 %rel.end133, i64 %var.load125
  %end.lt.0135 = icmp slt i64 %norm.end134, 0
  %c.end.0136 = select i1 %end.lt.0135, i64 0, i64 %norm.end134
  %end.gt.len137 = icmp sgt i64 %c.end.0136, %s.read.len115
  %final.end138 = select i1 %end.gt.len137, i64 %s.read.len115, i64 %c.end.0136
  %view.empty139 = icmp sle i64 %final.end138, %final.start131
  %view.len.sub140 = sub i64 %final.end138, %final.start131
  %view.len141 = select i1 %view.empty139, i64 0, i64 %view.len.sub140
  %view.data142 = getelementptr i8, ptr %s.read.data124, i64 %final.start131
  %arena.cur143 = call ptr @dva_arena_current()
  %str.view144 = call ptr @dva_arena_alloc(ptr %arena.cur143, i64 16)
  %str.build.len.gep145 = getelementptr inbounds { i64, ptr }, ptr %str.view144, i32 0, i32 0
  store i64 %view.len141, ptr %str.build.len.gep145, align 8
  %str.build.data.gep146 = getelementptr inbounds { i64, ptr }, ptr %str.view144, i32 0, i32 1
  store ptr %view.data142, ptr %str.build.data.gep146, align 8
  br label %choice.exit77

str_stale120:                                     ; preds = %str_gen_check118
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok119
}

define ptr @"path::parent"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  br i1 false, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call ptr @"path::win_parent"(ptr %var.load)
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.p, align 8
  %call.res2 = call ptr @"path::posix_parent"(ptr %var.load1)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %call.res, %choice.then ], [ %call.res2, %choice.else ]
  ret ptr %choice.res
}

define ptr @"path::dirname"(ptr %0) #1 {
entry:
  %var.par = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call ptr @"path::parent"(ptr %var.load)
  store ptr %call.res, ptr %var.par, align 8
  %var.load1 = load ptr, ptr %var.par, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %eq.lhs.len2 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len3 = and i64 %eq.lhs.len2, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.3.struct, align 8
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
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %eq.lhs.data12 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data12, ptr %eq.rhs.data, i64 %eq.lhs.len3)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok8
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  br label %choice.exit

choice.else:                                      ; preds = %str.eq.merge
  %var.load13 = load ptr, ptr %var.par, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.4.struct, %choice.then ], [ %var.load13, %choice.else ]
  ret ptr %choice.res
}

define ptr @"path::posix_basename"(ptr %0) #1 {
entry:
  %var.idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.22 = alloca i64, align 8
  %loop.idx.22 = alloca i64, align 8
  %"var.last_sep'" = alloca i64, align 8
  %var.clen = alloca i64, align 8
  %var.clean = alloca ptr, align 8
  %var.len = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
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
  ret ptr @str.4.struct

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.p, align 8
  %call.res = call ptr @"path::posix_strip_trailing_sep"(ptr %var.load4)
  store ptr %call.res, ptr %var.clean, align 8
  %var.load5 = load ptr, ptr %var.clean, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len6 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len7 = and i64 %eq.lhs.len6, 281474976710655
  %str.tag8 = lshr i64 %eq.lhs.len6, 48
  %str.immortal9 = icmp eq i64 %str.tag8, 0
  br i1 %str.immortal9, label %str_ok11, label %str_gen_check10

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check10:                                  ; preds = %choice.exit
  %arena.cur13 = call ptr @dva_arena_current()
  %tag.valid14 = call i1 @dva_arena_validate_tag(ptr %arena.cur13, i64 %str.tag8)
  br i1 %tag.valid14, label %str_ok11, label %str_stale12

str_ok11:                                         ; preds = %str_stale12, %str_gen_check10, %choice.exit
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len15 = and i64 %eq.rhs.len, 281474976710655
  %str.tag16 = lshr i64 %eq.rhs.len, 48
  %str.immortal17 = icmp eq i64 %str.tag16, 0
  br i1 %str.immortal17, label %str_ok19, label %str_gen_check18

str_stale12:                                      ; preds = %str_gen_check10
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok11

str_gen_check18:                                  ; preds = %str_ok11
  %arena.cur21 = call ptr @dva_arena_current()
  %tag.valid22 = call i1 @dva_arena_validate_tag(ptr %arena.cur21, i64 %str.tag16)
  br i1 %tag.valid22, label %str_ok19, label %str_stale20

str_ok19:                                         ; preds = %str_stale20, %str_gen_check18, %str_ok11
  %eq.len = icmp eq i64 %eq.lhs.len7, %eq.rhs.len15
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale20:                                      ; preds = %str_gen_check18
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok19

str.eq.then:                                      ; preds = %str_ok19
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data23 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data23, ptr %eq.rhs.data, i64 %eq.lhs.len7)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok19
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then24, label %choice.exit25

choice.then24:                                    ; preds = %str.eq.merge
  ret ptr @str.0.struct

choice.exit25:                                    ; preds = %ret.dead26, %str.eq.merge
  %var.load27 = load ptr, ptr %var.clean, align 8
  %str.len.query28 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %str.len.query29 = load i64, ptr %str.len.query28, align 8
  %str.len.query30 = and i64 %str.len.query29, 281474976710655
  %str.tag31 = lshr i64 %str.len.query29, 48
  %str.immortal32 = icmp eq i64 %str.tag31, 0
  br i1 %str.immortal32, label %str_ok34, label %str_gen_check33

ret.dead26:                                       ; No predecessors!
  br label %choice.exit25

str_gen_check33:                                  ; preds = %choice.exit25
  %arena.cur36 = call ptr @dva_arena_current()
  %tag.valid37 = call i1 @dva_arena_validate_tag(ptr %arena.cur36, i64 %str.tag31)
  br i1 %tag.valid37, label %str_ok34, label %str_stale35

str_ok34:                                         ; preds = %str_stale35, %str_gen_check33, %choice.exit25
  store i64 %str.len.query30, ptr %var.clen, align 8
  store i64 -1, ptr %"var.last_sep'", align 8
  %var.load38 = load i64, ptr %var.clen, align 8
  store i64 0, ptr %loop.idx.22, align 8
  br label %loop.header.22

str_stale35:                                      ; preds = %str_gen_check33
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok34

loop.header.22:                                   ; preds = %loop.latch.22, %str_ok34
  %counter.load = load i64, ptr %loop.idx.22, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load38
  br i1 %loop.cond, label %loop.body.22, label %loop.exit.nat.22

loop.body.22:                                     ; preds = %loop.header.22
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.22, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load39 = load i64, ptr %var.clen, align 8
  %subtmp = sub i64 %var.load39, 1
  %var.load40 = load i64, ptr %var.i, align 8
  %subtmp41 = sub i64 %subtmp, %var.load40
  store i64 %subtmp41, ptr %var.idx, align 8
  %var.load42 = load ptr, ptr %var.clean, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 0
  %s.read.len43 = load i64, ptr %s.read.len, align 8
  %s.read.len44 = and i64 %s.read.len43, 281474976710655
  %str.tag45 = lshr i64 %s.read.len43, 48
  %str.immortal46 = icmp eq i64 %str.tag45, 0
  br i1 %str.immortal46, label %str_ok48, label %str_gen_check47

loop.exit.nat.22:                                 ; preds = %loop.header.22
  br label %loop.exit.22

loop.latch.22:                                    ; preds = %choice.exit58
  %step.val = load i64, ptr %loop.step.22, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.22, align 8
  br label %loop.header.22

loop.exit.22:                                     ; preds = %loop.exit.nat.22
  %var.load60 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp61 = icmp slt i64 %var.load60, 0
  br i1 %cmptmp61, label %choice.then62, label %choice.else

str_gen_check47:                                  ; preds = %loop.body.22
  %arena.cur50 = call ptr @dva_arena_current()
  %tag.valid51 = call i1 @dva_arena_validate_tag(ptr %arena.cur50, i64 %str.tag45)
  br i1 %tag.valid51, label %str_ok48, label %str_stale49

str_ok48:                                         ; preds = %str_stale49, %str_gen_check47, %loop.body.22
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 1
  %s.read.data52 = load ptr, ptr %s.read.data, align 8
  %var.load53 = load i64, ptr %var.idx, align 8
  %idx.neg = icmp slt i64 %var.load53, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale49:                                      ; preds = %str_gen_check47
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok48

idx_big_check:                                    ; preds = %str_ok48
  %idx.big = icmp sge i64 %var.load53, %s.read.len44
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data52, i64 %var.load53
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp54 = icmp eq i64 %s.byte.val, 47
  br i1 %cmptmp54, label %and.23.then, label %and.23.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok48
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.23.then:                                      ; preds = %idx_ok
  %var.load55 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp56 = icmp slt i64 %var.load55, 0
  br label %and.23.exit

and.23.else:                                      ; preds = %idx_ok
  br label %and.23.exit

and.23.exit:                                      ; preds = %and.23.else, %and.23.then
  %and.23.phi = phi i1 [ %cmptmp56, %and.23.then ], [ %cmptmp54, %and.23.else ]
  br i1 %and.23.phi, label %choice.then57, label %choice.exit58

choice.then57:                                    ; preds = %and.23.exit
  %var.load59 = load i64, ptr %var.idx, align 8
  store i64 %var.load59, ptr %"var.last_sep'", align 8
  br label %choice.exit58

choice.exit58:                                    ; preds = %choice.then57, %and.23.exit
  br label %loop.latch.22

choice.then62:                                    ; preds = %loop.exit.22
  %var.load64 = load ptr, ptr %var.clean, align 8
  br label %choice.exit63

choice.else:                                      ; preds = %loop.exit.22
  %var.load65 = load ptr, ptr %var.clean, align 8
  %s.read.len66 = getelementptr inbounds { i64, ptr }, ptr %var.load65, i32 0, i32 0
  %s.read.len67 = load i64, ptr %s.read.len66, align 8
  %s.read.len68 = and i64 %s.read.len67, 281474976710655
  %str.tag69 = lshr i64 %s.read.len67, 48
  %str.immortal70 = icmp eq i64 %str.tag69, 0
  br i1 %str.immortal70, label %str_ok72, label %str_gen_check71

choice.exit63:                                    ; preds = %str_ok72, %choice.then62
  %choice.res = phi ptr [ %var.load64, %choice.then62 ], [ %str.view, %str_ok72 ]
  ret ptr %choice.res

str_gen_check71:                                  ; preds = %choice.else
  %arena.cur74 = call ptr @dva_arena_current()
  %tag.valid75 = call i1 @dva_arena_validate_tag(ptr %arena.cur74, i64 %str.tag69)
  br i1 %tag.valid75, label %str_ok72, label %str_stale73

str_ok72:                                         ; preds = %str_stale73, %str_gen_check71, %choice.else
  %s.read.data76 = getelementptr inbounds { i64, ptr }, ptr %var.load65, i32 0, i32 1
  %s.read.data77 = load ptr, ptr %s.read.data76, align 8
  %var.load78 = load i64, ptr %"var.last_sep'", align 8
  %addtmp = add i64 %var.load78, 1
  %start.is_neg = icmp slt i64 %addtmp, 0
  %rel.start = add i64 %s.read.len68, %addtmp
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %addtmp
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len68
  %final.start = select i1 %start.gt.len, i64 %s.read.len68, i64 %c.start.0
  %end.is_neg = icmp slt i64 %s.read.len68, 0
  %rel.end = add i64 %s.read.len68, %s.read.len68
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %s.read.len68
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len68
  %final.end = select i1 %end.gt.len, i64 %s.read.len68, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data77, i64 %final.start
  %arena.cur79 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur79, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit63

str_stale73:                                      ; preds = %str_gen_check71
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok72
}

define ptr @"path::win_basename"(ptr %0) #1 {
entry:
  %var.start = alloca i64, align 8
  %var.idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.25 = alloca i64, align 8
  %loop.idx.25 = alloca i64, align 8
  %"var.last_sep'" = alloca i64, align 8
  %var.clen = alloca i64, align 8
  %var.rlen = alloca i64, align 8
  %var.clean = alloca ptr, align 8
  %var.len = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
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
  ret ptr @str.4.struct

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.p, align 8
  %call.res = call ptr @"path::win_strip_trailing_sep"(ptr %var.load4)
  store ptr %call.res, ptr %var.clean, align 8
  %var.load5 = load ptr, ptr %var.clean, align 8
  %call.res6 = call i64 @"path::win_root_len"(ptr %var.load5)
  store i64 %call.res6, ptr %var.rlen, align 8
  %var.load7 = load ptr, ptr %var.clean, align 8
  %str.len.query8 = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %str.len.query9 = load i64, ptr %str.len.query8, align 8
  %str.len.query10 = and i64 %str.len.query9, 281474976710655
  %str.tag11 = lshr i64 %str.len.query9, 48
  %str.immortal12 = icmp eq i64 %str.tag11, 0
  br i1 %str.immortal12, label %str_ok14, label %str_gen_check13

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check13:                                  ; preds = %choice.exit
  %arena.cur16 = call ptr @dva_arena_current()
  %tag.valid17 = call i1 @dva_arena_validate_tag(ptr %arena.cur16, i64 %str.tag11)
  br i1 %tag.valid17, label %str_ok14, label %str_stale15

str_ok14:                                         ; preds = %str_stale15, %str_gen_check13, %choice.exit
  store i64 %str.len.query10, ptr %var.clen, align 8
  %var.load18 = load i64, ptr %var.rlen, align 8
  %cmptmp19 = icmp sgt i64 %var.load18, 0
  br i1 %cmptmp19, label %and.24.then, label %and.24.else

str_stale15:                                      ; preds = %str_gen_check13
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok14

and.24.then:                                      ; preds = %str_ok14
  %var.load20 = load i64, ptr %var.clen, align 8
  %var.load21 = load i64, ptr %var.rlen, align 8
  %cmptmp22 = icmp eq i64 %var.load20, %var.load21
  br label %and.24.exit

and.24.else:                                      ; preds = %str_ok14
  br label %and.24.exit

and.24.exit:                                      ; preds = %and.24.else, %and.24.then
  %and.24.phi = phi i1 [ %cmptmp22, %and.24.then ], [ %cmptmp19, %and.24.else ]
  br i1 %and.24.phi, label %choice.then23, label %choice.exit24

choice.then23:                                    ; preds = %and.24.exit
  %var.load25 = load ptr, ptr %var.clean, align 8
  ret ptr %var.load25

choice.exit24:                                    ; preds = %ret.dead26, %and.24.exit
  store i64 -1, ptr %"var.last_sep'", align 8
  %var.load27 = load i64, ptr %var.clen, align 8
  store i64 0, ptr %loop.idx.25, align 8
  br label %loop.header.25

ret.dead26:                                       ; No predecessors!
  br label %choice.exit24

loop.header.25:                                   ; preds = %loop.latch.25, %choice.exit24
  %counter.load = load i64, ptr %loop.idx.25, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load27
  br i1 %loop.cond, label %loop.body.25, label %loop.exit.nat.25

loop.body.25:                                     ; preds = %loop.header.25
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.25, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load28 = load i64, ptr %var.clen, align 8
  %subtmp = sub i64 %var.load28, 1
  %var.load29 = load i64, ptr %var.i, align 8
  %subtmp30 = sub i64 %subtmp, %var.load29
  store i64 %subtmp30, ptr %var.idx, align 8
  %var.load31 = load ptr, ptr %var.clean, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 0
  %s.read.len32 = load i64, ptr %s.read.len, align 8
  %s.read.len33 = and i64 %s.read.len32, 281474976710655
  %str.tag34 = lshr i64 %s.read.len32, 48
  %str.immortal35 = icmp eq i64 %str.tag34, 0
  br i1 %str.immortal35, label %str_ok37, label %str_gen_check36

loop.exit.nat.25:                                 ; preds = %loop.header.25
  br label %loop.exit.25

loop.latch.25:                                    ; preds = %choice.exit47
  %step.val = load i64, ptr %loop.step.25, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.25, align 8
  br label %loop.header.25

loop.exit.25:                                     ; preds = %loop.exit.nat.25
  %var.load49 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp50 = icmp slt i64 %var.load49, 0
  br i1 %cmptmp50, label %choice.then51, label %choice.else

str_gen_check36:                                  ; preds = %loop.body.25
  %arena.cur39 = call ptr @dva_arena_current()
  %tag.valid40 = call i1 @dva_arena_validate_tag(ptr %arena.cur39, i64 %str.tag34)
  br i1 %tag.valid40, label %str_ok37, label %str_stale38

str_ok37:                                         ; preds = %str_stale38, %str_gen_check36, %loop.body.25
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 1
  %s.read.data41 = load ptr, ptr %s.read.data, align 8
  %var.load42 = load i64, ptr %var.idx, align 8
  %idx.neg = icmp slt i64 %var.load42, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale38:                                      ; preds = %str_gen_check36
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok37

idx_big_check:                                    ; preds = %str_ok37
  %idx.big = icmp sge i64 %var.load42, %s.read.len33
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data41, i64 %var.load42
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res43 = call i1 @"path::is_win_sep"(i64 %s.byte.val)
  br i1 %call.res43, label %and.26.then, label %and.26.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok37
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.26.then:                                      ; preds = %idx_ok
  %var.load44 = load i64, ptr %"var.last_sep'", align 8
  %cmptmp45 = icmp slt i64 %var.load44, 0
  br label %and.26.exit

and.26.else:                                      ; preds = %idx_ok
  br label %and.26.exit

and.26.exit:                                      ; preds = %and.26.else, %and.26.then
  %and.26.phi = phi i1 [ %cmptmp45, %and.26.then ], [ %call.res43, %and.26.else ]
  br i1 %and.26.phi, label %choice.then46, label %choice.exit47

choice.then46:                                    ; preds = %and.26.exit
  %var.load48 = load i64, ptr %var.idx, align 8
  store i64 %var.load48, ptr %"var.last_sep'", align 8
  br label %choice.exit47

choice.exit47:                                    ; preds = %choice.then46, %and.26.exit
  br label %loop.latch.25

choice.then51:                                    ; preds = %loop.exit.25
  %var.load53 = load i64, ptr %var.rlen, align 8
  %cmptmp54 = icmp eq i64 %var.load53, 2
  br i1 %cmptmp54, label %choice.then55, label %choice.else56

choice.else:                                      ; preds = %loop.exit.25
  %var.load58 = load i64, ptr %"var.last_sep'", align 8
  %addtmp = add i64 %var.load58, 1
  br label %choice.exit52

choice.exit52:                                    ; preds = %choice.else, %choice.exit57
  %choice.res59 = phi i64 [ %choice.res, %choice.exit57 ], [ %addtmp, %choice.else ]
  store i64 %choice.res59, ptr %var.start, align 8
  %var.load60 = load i64, ptr %var.start, align 8
  %var.load61 = load i64, ptr %var.clen, align 8
  %cmptmp62 = icmp sge i64 %var.load60, %var.load61
  br i1 %cmptmp62, label %choice.then63, label %choice.else64

choice.then55:                                    ; preds = %choice.then51
  br label %choice.exit57

choice.else56:                                    ; preds = %choice.then51
  br label %choice.exit57

choice.exit57:                                    ; preds = %choice.else56, %choice.then55
  %choice.res = phi i64 [ 2, %choice.then55 ], [ 0, %choice.else56 ]
  br label %choice.exit52

choice.then63:                                    ; preds = %choice.exit52
  br label %choice.exit65

choice.else64:                                    ; preds = %choice.exit52
  %var.load66 = load ptr, ptr %var.clean, align 8
  %s.read.len67 = getelementptr inbounds { i64, ptr }, ptr %var.load66, i32 0, i32 0
  %s.read.len68 = load i64, ptr %s.read.len67, align 8
  %s.read.len69 = and i64 %s.read.len68, 281474976710655
  %str.tag70 = lshr i64 %s.read.len68, 48
  %str.immortal71 = icmp eq i64 %str.tag70, 0
  br i1 %str.immortal71, label %str_ok73, label %str_gen_check72

choice.exit65:                                    ; preds = %str_ok73, %choice.then63
  %choice.res81 = phi ptr [ @str.4.struct, %choice.then63 ], [ %str.view, %str_ok73 ]
  ret ptr %choice.res81

str_gen_check72:                                  ; preds = %choice.else64
  %arena.cur75 = call ptr @dva_arena_current()
  %tag.valid76 = call i1 @dva_arena_validate_tag(ptr %arena.cur75, i64 %str.tag70)
  br i1 %tag.valid76, label %str_ok73, label %str_stale74

str_ok73:                                         ; preds = %str_stale74, %str_gen_check72, %choice.else64
  %s.read.data77 = getelementptr inbounds { i64, ptr }, ptr %var.load66, i32 0, i32 1
  %s.read.data78 = load ptr, ptr %s.read.data77, align 8
  %var.load79 = load i64, ptr %var.start, align 8
  %start.is_neg = icmp slt i64 %var.load79, 0
  %rel.start = add i64 %s.read.len69, %var.load79
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load79
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len69
  %final.start = select i1 %start.gt.len, i64 %s.read.len69, i64 %c.start.0
  %end.is_neg = icmp slt i64 %s.read.len69, 0
  %rel.end = add i64 %s.read.len69, %s.read.len69
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %s.read.len69
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len69
  %final.end = select i1 %end.gt.len, i64 %s.read.len69, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data78, i64 %final.start
  %arena.cur80 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur80, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit65

str_stale74:                                      ; preds = %str_gen_check72
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok73
}

define ptr @"path::basename"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  br i1 false, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call ptr @"path::win_basename"(ptr %var.load)
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.p, align 8
  %call.res2 = call ptr @"path::posix_basename"(ptr %var.load1)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %call.res, %choice.then ], [ %call.res2, %choice.else ]
  ret ptr %choice.res
}

define ptr @"path::base"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call ptr @"path::basename"(ptr %var.load)
  ret ptr %call.res
}

define i64 @"path::ext_dot_index"(ptr %0) #1 {
entry:
  %var.idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.27 = alloca i64, align 8
  %loop.idx.27 = alloca i64, align 8
  %"var.dot'" = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
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
  store i64 -1, ptr %"var.dot'", align 8
  %var.load3 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.27, align 8
  br label %loop.header.27

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.27:                                   ; preds = %loop.latch.27, %str_ok
  %counter.load = load i64, ptr %loop.idx.27, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load3
  br i1 %loop.cond, label %loop.body.27, label %loop.exit.nat.27

loop.body.27:                                     ; preds = %loop.header.27
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.27, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load4 = load i64, ptr %var.len, align 8
  %subtmp = sub i64 %var.load4, 1
  %var.load5 = load i64, ptr %var.i, align 8
  %subtmp6 = sub i64 %subtmp, %var.load5
  store i64 %subtmp6, ptr %var.idx, align 8
  %var.load7 = load ptr, ptr %var.b, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %str.tag10 = lshr i64 %s.read.len8, 48
  %str.immortal11 = icmp eq i64 %str.tag10, 0
  br i1 %str.immortal11, label %str_ok13, label %str_gen_check12

loop.exit.nat.27:                                 ; preds = %loop.header.27
  br label %loop.exit.27

loop.latch.27:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.27, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.27, align 8
  br label %loop.header.27

loop.exit.27:                                     ; preds = %loop.exit.nat.27
  %var.load24 = load i64, ptr %"var.dot'", align 8
  ret i64 %var.load24

str_gen_check12:                                  ; preds = %loop.body.27
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag10)
  br i1 %tag.valid16, label %str_ok13, label %str_stale14

str_ok13:                                         ; preds = %str_stale14, %str_gen_check12, %loop.body.27
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %s.read.data17 = load ptr, ptr %s.read.data, align 8
  %var.load18 = load i64, ptr %var.idx, align 8
  %idx.neg = icmp slt i64 %var.load18, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale14:                                      ; preds = %str_gen_check12
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok13

idx_big_check:                                    ; preds = %str_ok13
  %idx.big = icmp sge i64 %var.load18, %s.read.len9
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data17, i64 %var.load18
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp = icmp eq i64 %s.byte.val, 46
  br i1 %cmptmp, label %and.28.then, label %and.28.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok13
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.28.then:                                      ; preds = %idx_ok
  %var.load19 = load i64, ptr %"var.dot'", align 8
  %cmptmp20 = icmp slt i64 %var.load19, 0
  br label %and.28.exit

and.28.else:                                      ; preds = %idx_ok
  br label %and.28.exit

and.28.exit:                                      ; preds = %and.28.else, %and.28.then
  %and.28.phi = phi i1 [ %cmptmp20, %and.28.then ], [ %cmptmp, %and.28.else ]
  br i1 %and.28.phi, label %and.29.then, label %and.29.else

and.29.then:                                      ; preds = %and.28.exit
  %var.load21 = load i64, ptr %var.idx, align 8
  %cmptmp22 = icmp sgt i64 %var.load21, 0
  br label %and.29.exit

and.29.else:                                      ; preds = %and.28.exit
  br label %and.29.exit

and.29.exit:                                      ; preds = %and.29.else, %and.29.then
  %and.29.phi = phi i1 [ %cmptmp22, %and.29.then ], [ %and.28.phi, %and.29.else ]
  br i1 %and.29.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.29.exit
  %var.load23 = load i64, ptr %var.idx, align 8
  store i64 %var.load23, ptr %"var.dot'", align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %and.29.exit
  br label %loop.latch.27
}

define ptr @"path::ext"(ptr %0) #1 {
entry:
  %var.dot = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call ptr @"path::basename"(ptr %var.load)
  store ptr %call.res, ptr %var.b, align 8
  %var.load1 = load ptr, ptr %var.b, align 8
  %call.res2 = call i64 @"path::ext_dot_index"(ptr %var.load1)
  store i64 %call.res2, ptr %var.dot, align 8
  %var.load3 = load i64, ptr %var.dot, align 8
  %cmptmp = icmp slt i64 %var.load3, 0
  br i1 %cmptmp, label %or.30.then, label %or.30.else

or.30.then:                                       ; preds = %entry
  br label %or.30.exit

or.30.else:                                       ; preds = %entry
  %var.load4 = load i64, ptr %var.dot, align 8
  %var.load5 = load ptr, ptr %var.b, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %str.tag = lshr i64 %str.len.query6, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

or.30.exit:                                       ; preds = %str_ok, %or.30.then
  %or.30.phi = phi i1 [ %cmptmp, %or.30.then ], [ %cmptmp8, %str_ok ]
  br i1 %or.30.phi, label %choice.then, label %choice.else

str_gen_check:                                    ; preds = %or.30.else
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %or.30.else
  %subtmp = sub i64 %str.len.query7, 1
  %cmptmp8 = icmp eq i64 %var.load4, %subtmp
  br label %or.30.exit

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %or.30.exit
  br label %choice.exit

choice.else:                                      ; preds = %or.30.exit
  %var.load9 = load ptr, ptr %var.b, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %str.tag12 = lshr i64 %s.read.len10, 48
  %str.immortal13 = icmp eq i64 %str.tag12, 0
  br i1 %str.immortal13, label %str_ok15, label %str_gen_check14

choice.exit:                                      ; preds = %str_ok15, %choice.then
  %choice.res = phi ptr [ @str.4.struct, %choice.then ], [ %str.view, %str_ok15 ]
  ret ptr %choice.res

str_gen_check14:                                  ; preds = %choice.else
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %str.tag12)
  br i1 %tag.valid18, label %str_ok15, label %str_stale16

str_ok15:                                         ; preds = %str_stale16, %str_gen_check14, %choice.else
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.read.data19 = load ptr, ptr %s.read.data, align 8
  %var.load20 = load i64, ptr %var.dot, align 8
  %start.is_neg = icmp slt i64 %var.load20, 0
  %rel.start = add i64 %s.read.len11, %var.load20
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load20
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len11
  %final.start = select i1 %start.gt.len, i64 %s.read.len11, i64 %c.start.0
  %end.is_neg = icmp slt i64 %s.read.len11, 0
  %rel.end = add i64 %s.read.len11, %s.read.len11
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %s.read.len11
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len11
  %final.end = select i1 %end.gt.len, i64 %s.read.len11, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data19, i64 %final.start
  %arena.cur21 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit

str_stale16:                                      ; preds = %str_gen_check14
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok15
}

define ptr @"path::get_ext"(ptr %0) #1 {
entry:
  %var.dot = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call ptr @"path::basename"(ptr %var.load)
  store ptr %call.res, ptr %var.b, align 8
  %var.load1 = load ptr, ptr %var.b, align 8
  %call.res2 = call i64 @"path::ext_dot_index"(ptr %var.load1)
  store i64 %call.res2, ptr %var.dot, align 8
  %var.load3 = load i64, ptr %var.dot, align 8
  %cmptmp = icmp slt i64 %var.load3, 0
  br i1 %cmptmp, label %or.31.then, label %or.31.else

or.31.then:                                       ; preds = %entry
  br label %or.31.exit

or.31.else:                                       ; preds = %entry
  %var.load4 = load i64, ptr %var.dot, align 8
  %var.load5 = load ptr, ptr %var.b, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %str.tag = lshr i64 %str.len.query6, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

or.31.exit:                                       ; preds = %str_ok, %or.31.then
  %or.31.phi = phi i1 [ %cmptmp, %or.31.then ], [ %cmptmp8, %str_ok ]
  br i1 %or.31.phi, label %choice.then, label %choice.else

str_gen_check:                                    ; preds = %or.31.else
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %or.31.else
  %subtmp = sub i64 %str.len.query7, 1
  %cmptmp8 = icmp sge i64 %var.load4, %subtmp
  br label %or.31.exit

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %or.31.exit
  br label %choice.exit

choice.else:                                      ; preds = %or.31.exit
  %var.load9 = load ptr, ptr %var.b, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %str.tag12 = lshr i64 %s.read.len10, 48
  %str.immortal13 = icmp eq i64 %str.tag12, 0
  br i1 %str.immortal13, label %str_ok15, label %str_gen_check14

choice.exit:                                      ; preds = %str_ok15, %choice.then
  %choice.res = phi ptr [ @str.4.struct, %choice.then ], [ %str.view, %str_ok15 ]
  ret ptr %choice.res

str_gen_check14:                                  ; preds = %choice.else
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %str.tag12)
  br i1 %tag.valid18, label %str_ok15, label %str_stale16

str_ok15:                                         ; preds = %str_stale16, %str_gen_check14, %choice.else
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.read.data19 = load ptr, ptr %s.read.data, align 8
  %var.load20 = load i64, ptr %var.dot, align 8
  %addtmp = add i64 %var.load20, 1
  %start.is_neg = icmp slt i64 %addtmp, 0
  %rel.start = add i64 %s.read.len11, %addtmp
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %addtmp
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len11
  %final.start = select i1 %start.gt.len, i64 %s.read.len11, i64 %c.start.0
  %end.is_neg = icmp slt i64 %s.read.len11, 0
  %rel.end = add i64 %s.read.len11, %s.read.len11
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %s.read.len11
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len11
  %final.end = select i1 %end.gt.len, i64 %s.read.len11, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data19, i64 %final.start
  %arena.cur21 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit

str_stale16:                                      ; preds = %str_gen_check14
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok15
}

define ptr @"path::ext_lower"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call ptr @"path::get_ext"(ptr %var.load)
  %call.res1 = call ptr @"str::lower"(ptr %call.res)
  ret ptr %call.res1
}

declare ptr @"str::lower"(ptr) #1

define ptr @"path::stem"(ptr %0) #1 {
entry:
  %var.dot = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call ptr @"path::basename"(ptr %var.load)
  store ptr %call.res, ptr %var.b, align 8
  %var.load1 = load ptr, ptr %var.b, align 8
  %call.res2 = call i64 @"path::ext_dot_index"(ptr %var.load1)
  store i64 %call.res2, ptr %var.dot, align 8
  %var.load3 = load i64, ptr %var.dot, align 8
  %cmptmp = icmp slt i64 %var.load3, 0
  br i1 %cmptmp, label %or.32.then, label %or.32.else

or.32.then:                                       ; preds = %entry
  br label %or.32.exit

or.32.else:                                       ; preds = %entry
  %var.load4 = load i64, ptr %var.dot, align 8
  %var.load5 = load ptr, ptr %var.b, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %str.tag = lshr i64 %str.len.query6, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

or.32.exit:                                       ; preds = %str_ok, %or.32.then
  %or.32.phi = phi i1 [ %cmptmp, %or.32.then ], [ %cmptmp8, %str_ok ]
  br i1 %or.32.phi, label %choice.then, label %choice.else

str_gen_check:                                    ; preds = %or.32.else
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %or.32.else
  %subtmp = sub i64 %str.len.query7, 1
  %cmptmp8 = icmp eq i64 %var.load4, %subtmp
  br label %or.32.exit

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %or.32.exit
  %var.load9 = load ptr, ptr %var.b, align 8
  br label %choice.exit

choice.else:                                      ; preds = %or.32.exit
  %var.load10 = load ptr, ptr %var.b, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %str.tag13 = lshr i64 %s.read.len11, 48
  %str.immortal14 = icmp eq i64 %str.tag13, 0
  br i1 %str.immortal14, label %str_ok16, label %str_gen_check15

choice.exit:                                      ; preds = %str_ok16, %choice.then
  %choice.res = phi ptr [ %var.load9, %choice.then ], [ %str.view, %str_ok16 ]
  ret ptr %choice.res

str_gen_check15:                                  ; preds = %choice.else
  %arena.cur18 = call ptr @dva_arena_current()
  %tag.valid19 = call i1 @dva_arena_validate_tag(ptr %arena.cur18, i64 %str.tag13)
  br i1 %tag.valid19, label %str_ok16, label %str_stale17

str_ok16:                                         ; preds = %str_stale17, %str_gen_check15, %choice.else
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data20 = load ptr, ptr %s.read.data, align 8
  %var.load21 = load i64, ptr %var.dot, align 8
  %rel.start = add i64 %s.read.len12, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len12
  %final.start = select i1 %start.gt.len, i64 %s.read.len12, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load21, 0
  %rel.end = add i64 %s.read.len12, %var.load21
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load21
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len12
  %final.end = select i1 %end.gt.len, i64 %s.read.len12, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data20, i64 %final.start
  %arena.cur22 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit

str_stale17:                                      ; preds = %str_gen_check15
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok16
}

define ptr @"path::with_ext"(ptr %0, ptr %1) #1 {
entry:
  %var.suf = alloca ptr, align 8
  %var.st = alloca ptr, align 8
  %var.par = alloca ptr, align 8
  %var.new_ext = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store ptr %1, ptr %var.new_ext, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call ptr @"path::dirname"(ptr %var.load)
  store ptr %call.res, ptr %var.par, align 8
  %var.load1 = load ptr, ptr %var.p, align 8
  %call.res2 = call ptr @"path::stem"(ptr %var.load1)
  store ptr %call.res2, ptr %var.st, align 8
  %var.load3 = load ptr, ptr %var.new_ext, align 8
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
  %cmptmp = icmp eq i64 %str.len.query5, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  br label %choice.exit

choice.else:                                      ; preds = %str_ok
  %var.load6 = load ptr, ptr %var.new_ext, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %str.tag9 = lshr i64 %s.read.len7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

choice.exit:                                      ; preds = %choice.exit20, %choice.then
  %choice.res50 = phi ptr [ @str.4.struct, %choice.then ], [ %choice.res, %choice.exit20 ]
  store ptr %choice.res50, ptr %var.suf, align 8
  %var.load51 = load ptr, ptr %var.par, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load51, i32 0, i32 0
  %eq.lhs.len52 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len53 = and i64 %eq.lhs.len52, 281474976710655
  %str.tag54 = lshr i64 %eq.lhs.len52, 48
  %str.immortal55 = icmp eq i64 %str.tag54, 0
  br i1 %str.immortal55, label %str_ok57, label %str_gen_check56

str_gen_check11:                                  ; preds = %choice.else
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid15 = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %str.tag9)
  br i1 %tag.valid15, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %choice.else
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

str_stale13:                                      ; preds = %str_gen_check11
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

idx_big_check:                                    ; preds = %str_ok12
  %idx.big = icmp sge i64 0, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp17 = icmp eq i64 %s.byte.val, 46
  br i1 %cmptmp17, label %choice.then18, label %choice.else19

idx_oob:                                          ; preds = %idx_big_check, %str_ok12
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then18:                                    ; preds = %idx_ok
  %var.load21 = load ptr, ptr %var.new_ext, align 8
  br label %choice.exit20

choice.else19:                                    ; preds = %idx_ok
  %var.load22 = load ptr, ptr %var.new_ext, align 8
  %concat.lhs = load i64, ptr @str.3.struct, align 8
  %concat.lhs23 = and i64 %concat.lhs, 281474976710655
  %str.tag24 = lshr i64 %concat.lhs, 48
  %str.immortal25 = icmp eq i64 %str.tag24, 0
  br i1 %str.immortal25, label %str_ok27, label %str_gen_check26

choice.exit20:                                    ; preds = %concat.tot.len46, %choice.then18
  %choice.res = phi ptr [ %var.load21, %choice.then18 ], [ %concat.str, %concat.tot.len46 ]
  br label %choice.exit

str_gen_check26:                                  ; preds = %choice.else19
  %arena.cur29 = call ptr @dva_arena_current()
  %tag.valid30 = call i1 @dva_arena_validate_tag(ptr %arena.cur29, i64 %str.tag24)
  br i1 %tag.valid30, label %str_ok27, label %str_stale28

str_ok27:                                         ; preds = %str_stale28, %str_gen_check26, %choice.else19
  %concat.lhs31 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 0
  %concat.rhs32 = load i64, ptr %concat.rhs, align 8
  %concat.rhs33 = and i64 %concat.rhs32, 281474976710655
  %str.tag34 = lshr i64 %concat.rhs32, 48
  %str.immortal35 = icmp eq i64 %str.tag34, 0
  br i1 %str.immortal35, label %str_ok37, label %str_gen_check36

str_stale28:                                      ; preds = %str_gen_check26
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok27

str_gen_check36:                                  ; preds = %str_ok27
  %arena.cur39 = call ptr @dva_arena_current()
  %tag.valid40 = call i1 @dva_arena_validate_tag(ptr %arena.cur39, i64 %str.tag34)
  br i1 %tag.valid40, label %str_ok37, label %str_stale38

str_ok37:                                         ; preds = %str_stale38, %str_gen_check36, %str_ok27
  %concat.rhs41 = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 1
  %concat.rhs42 = load ptr, ptr %concat.rhs41, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs23, i64 %concat.rhs33)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len43

str_stale38:                                      ; preds = %str_gen_check36
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok37

concat.sum.len43:                                 ; preds = %str_overflow_abort, %str_ok37
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum44 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf45 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf45, label %str_overflow_abort47, label %concat.tot.len46

str_overflow_abort:                               ; preds = %str_ok37
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len43

concat.tot.len46:                                 ; preds = %str_overflow_abort47, %concat.sum.len43
  %arena.cur48 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 %sum44)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs31, i64 %concat.lhs23, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs23
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs42, i64 %concat.rhs33, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur49 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit20

str_overflow_abort47:                             ; preds = %concat.sum.len43
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len46

str_gen_check56:                                  ; preds = %choice.exit
  %arena.cur59 = call ptr @dva_arena_current()
  %tag.valid60 = call i1 @dva_arena_validate_tag(ptr %arena.cur59, i64 %str.tag54)
  br i1 %tag.valid60, label %str_ok57, label %str_stale58

str_ok57:                                         ; preds = %str_stale58, %str_gen_check56, %choice.exit
  %eq.rhs.len = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len61 = and i64 %eq.rhs.len, 281474976710655
  %str.tag62 = lshr i64 %eq.rhs.len, 48
  %str.immortal63 = icmp eq i64 %str.tag62, 0
  br i1 %str.immortal63, label %str_ok65, label %str_gen_check64

str_stale58:                                      ; preds = %str_gen_check56
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok57

str_gen_check64:                                  ; preds = %str_ok57
  %arena.cur67 = call ptr @dva_arena_current()
  %tag.valid68 = call i1 @dva_arena_validate_tag(ptr %arena.cur67, i64 %str.tag62)
  br i1 %tag.valid68, label %str_ok65, label %str_stale66

str_ok65:                                         ; preds = %str_stale66, %str_gen_check64, %str_ok57
  %eq.len = icmp eq i64 %eq.lhs.len53, %eq.rhs.len61
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale66:                                      ; preds = %str_gen_check64
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok65

str.eq.then:                                      ; preds = %str_ok65
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load51, i32 0, i32 1
  %eq.lhs.data69 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data69, ptr %eq.rhs.data, i64 %eq.lhs.len53)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok65
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then70, label %choice.else71

choice.then70:                                    ; preds = %str.eq.merge
  %var.load73 = load ptr, ptr %var.st, align 8
  %var.load74 = load ptr, ptr %var.suf, align 8
  %concat.lhs75 = getelementptr inbounds { i64, ptr }, ptr %var.load73, i32 0, i32 0
  %concat.lhs76 = load i64, ptr %concat.lhs75, align 8
  %concat.lhs77 = and i64 %concat.lhs76, 281474976710655
  %str.tag78 = lshr i64 %concat.lhs76, 48
  %str.immortal79 = icmp eq i64 %str.tag78, 0
  br i1 %str.immortal79, label %str_ok81, label %str_gen_check80

choice.else71:                                    ; preds = %str.eq.merge
  %var.load117 = load ptr, ptr %var.par, align 8
  %var.load118 = load ptr, ptr %var.st, align 8
  %var.load119 = load ptr, ptr %var.suf, align 8
  %concat.lhs120 = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 0
  %concat.lhs121 = load i64, ptr %concat.lhs120, align 8
  %concat.lhs122 = and i64 %concat.lhs121, 281474976710655
  %str.tag123 = lshr i64 %concat.lhs121, 48
  %str.immortal124 = icmp eq i64 %str.tag123, 0
  br i1 %str.immortal124, label %str_ok126, label %str_gen_check125

choice.exit72:                                    ; preds = %concat.tot.len152, %concat.tot.len107
  %choice.res163 = phi ptr [ %concat.str114, %concat.tot.len107 ], [ %call.res162, %concat.tot.len152 ]
  ret ptr %choice.res163

str_gen_check80:                                  ; preds = %choice.then70
  %arena.cur83 = call ptr @dva_arena_current()
  %tag.valid84 = call i1 @dva_arena_validate_tag(ptr %arena.cur83, i64 %str.tag78)
  br i1 %tag.valid84, label %str_ok81, label %str_stale82

str_ok81:                                         ; preds = %str_stale82, %str_gen_check80, %choice.then70
  %concat.lhs85 = getelementptr inbounds { i64, ptr }, ptr %var.load73, i32 0, i32 1
  %concat.lhs86 = load ptr, ptr %concat.lhs85, align 8
  %concat.rhs87 = getelementptr inbounds { i64, ptr }, ptr %var.load74, i32 0, i32 0
  %concat.rhs88 = load i64, ptr %concat.rhs87, align 8
  %concat.rhs89 = and i64 %concat.rhs88, 281474976710655
  %str.tag90 = lshr i64 %concat.rhs88, 48
  %str.immortal91 = icmp eq i64 %str.tag90, 0
  br i1 %str.immortal91, label %str_ok93, label %str_gen_check92

str_stale82:                                      ; preds = %str_gen_check80
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok81

str_gen_check92:                                  ; preds = %str_ok81
  %arena.cur95 = call ptr @dva_arena_current()
  %tag.valid96 = call i1 @dva_arena_validate_tag(ptr %arena.cur95, i64 %str.tag90)
  br i1 %tag.valid96, label %str_ok93, label %str_stale94

str_ok93:                                         ; preds = %str_stale94, %str_gen_check92, %str_ok81
  %concat.rhs97 = getelementptr inbounds { i64, ptr }, ptr %var.load74, i32 0, i32 1
  %concat.rhs98 = load ptr, ptr %concat.rhs97, align 8
  %concat.sum.len99 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs77, i64 %concat.rhs89)
  %sum100 = extractvalue { i64, i1 } %concat.sum.len99, 0
  %ovf101 = extractvalue { i64, i1 } %concat.sum.len99, 1
  br i1 %ovf101, label %str_overflow_abort103, label %concat.sum.len102

str_stale94:                                      ; preds = %str_gen_check92
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok93

concat.sum.len102:                                ; preds = %str_overflow_abort103, %str_ok93
  %concat.tot.len104 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum100, i64 1)
  %sum105 = extractvalue { i64, i1 } %concat.tot.len104, 0
  %ovf106 = extractvalue { i64, i1 } %concat.tot.len104, 1
  br i1 %ovf106, label %str_overflow_abort108, label %concat.tot.len107

str_overflow_abort103:                            ; preds = %str_ok93
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len102

concat.tot.len107:                                ; preds = %str_overflow_abort108, %concat.sum.len102
  %arena.cur109 = call ptr @dva_arena_current()
  %concat.buf110 = call ptr @dva_arena_alloc(ptr %arena.cur109, i64 %sum105)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf110, ptr align 1 %concat.lhs86, i64 %concat.lhs77, i1 false)
  %concat.mid111 = getelementptr i8, ptr %concat.buf110, i64 %concat.lhs77
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid111, ptr align 1 %concat.rhs98, i64 %concat.rhs89, i1 false)
  %concat.nul112 = getelementptr i8, ptr %concat.buf110, i64 %sum100
  store i8 0, ptr %concat.nul112, align 1
  %arena.cur113 = call ptr @dva_arena_current()
  %concat.str114 = call ptr @dva_arena_alloc(ptr %arena.cur113, i64 16)
  %str.build.len.gep115 = getelementptr inbounds { i64, ptr }, ptr %concat.str114, i32 0, i32 0
  store i64 %sum100, ptr %str.build.len.gep115, align 8
  %str.build.data.gep116 = getelementptr inbounds { i64, ptr }, ptr %concat.str114, i32 0, i32 1
  store ptr %concat.buf110, ptr %str.build.data.gep116, align 8
  br label %choice.exit72

str_overflow_abort108:                            ; preds = %concat.sum.len102
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len107

str_gen_check125:                                 ; preds = %choice.else71
  %arena.cur128 = call ptr @dva_arena_current()
  %tag.valid129 = call i1 @dva_arena_validate_tag(ptr %arena.cur128, i64 %str.tag123)
  br i1 %tag.valid129, label %str_ok126, label %str_stale127

str_ok126:                                        ; preds = %str_stale127, %str_gen_check125, %choice.else71
  %concat.lhs130 = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 1
  %concat.lhs131 = load ptr, ptr %concat.lhs130, align 8
  %concat.rhs132 = getelementptr inbounds { i64, ptr }, ptr %var.load119, i32 0, i32 0
  %concat.rhs133 = load i64, ptr %concat.rhs132, align 8
  %concat.rhs134 = and i64 %concat.rhs133, 281474976710655
  %str.tag135 = lshr i64 %concat.rhs133, 48
  %str.immortal136 = icmp eq i64 %str.tag135, 0
  br i1 %str.immortal136, label %str_ok138, label %str_gen_check137

str_stale127:                                     ; preds = %str_gen_check125
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok126

str_gen_check137:                                 ; preds = %str_ok126
  %arena.cur140 = call ptr @dva_arena_current()
  %tag.valid141 = call i1 @dva_arena_validate_tag(ptr %arena.cur140, i64 %str.tag135)
  br i1 %tag.valid141, label %str_ok138, label %str_stale139

str_ok138:                                        ; preds = %str_stale139, %str_gen_check137, %str_ok126
  %concat.rhs142 = getelementptr inbounds { i64, ptr }, ptr %var.load119, i32 0, i32 1
  %concat.rhs143 = load ptr, ptr %concat.rhs142, align 8
  %concat.sum.len144 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs122, i64 %concat.rhs134)
  %sum145 = extractvalue { i64, i1 } %concat.sum.len144, 0
  %ovf146 = extractvalue { i64, i1 } %concat.sum.len144, 1
  br i1 %ovf146, label %str_overflow_abort148, label %concat.sum.len147

str_stale139:                                     ; preds = %str_gen_check137
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok138

concat.sum.len147:                                ; preds = %str_overflow_abort148, %str_ok138
  %concat.tot.len149 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum145, i64 1)
  %sum150 = extractvalue { i64, i1 } %concat.tot.len149, 0
  %ovf151 = extractvalue { i64, i1 } %concat.tot.len149, 1
  br i1 %ovf151, label %str_overflow_abort153, label %concat.tot.len152

str_overflow_abort148:                            ; preds = %str_ok138
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len147

concat.tot.len152:                                ; preds = %str_overflow_abort153, %concat.sum.len147
  %arena.cur154 = call ptr @dva_arena_current()
  %concat.buf155 = call ptr @dva_arena_alloc(ptr %arena.cur154, i64 %sum150)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf155, ptr align 1 %concat.lhs131, i64 %concat.lhs122, i1 false)
  %concat.mid156 = getelementptr i8, ptr %concat.buf155, i64 %concat.lhs122
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid156, ptr align 1 %concat.rhs143, i64 %concat.rhs134, i1 false)
  %concat.nul157 = getelementptr i8, ptr %concat.buf155, i64 %sum145
  store i8 0, ptr %concat.nul157, align 1
  %arena.cur158 = call ptr @dva_arena_current()
  %concat.str159 = call ptr @dva_arena_alloc(ptr %arena.cur158, i64 16)
  %str.build.len.gep160 = getelementptr inbounds { i64, ptr }, ptr %concat.str159, i32 0, i32 0
  store i64 %sum145, ptr %str.build.len.gep160, align 8
  %str.build.data.gep161 = getelementptr inbounds { i64, ptr }, ptr %concat.str159, i32 0, i32 1
  store ptr %concat.buf155, ptr %str.build.data.gep161, align 8
  %call.res162 = call ptr @"path::join"(ptr %var.load117, ptr %concat.str159)
  br label %choice.exit72

str_overflow_abort153:                            ; preds = %concat.sum.len147
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len152
}

define ptr @"path::split"(ptr %0) #1 {
entry:
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.33 = alloca i64, align 8
  %loop.idx.33 = alloca i64, align 8
  %var.cur = alloca ptr, align 8
  %var.out = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
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
  %arena.cur2 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len3

b.buf.len3:                                       ; preds = %str_overflow_abort, %entry
  %arena.cur4 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 32, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.cur, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag = lshr i64 %str.len.query5, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len3

str_gen_check:                                    ; preds = %b.buf.len3
  %arena.cur7 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur7, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.buf.len3
  store i64 0, ptr %loop.idx.33, align 8
  br label %loop.header.33

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.33:                                   ; preds = %loop.latch.33, %str_ok
  %counter.load = load i64, ptr %loop.idx.33, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len.query6
  br i1 %loop.cond, label %loop.body.33, label %loop.exit.nat.33

loop.body.33:                                     ; preds = %loop.header.33
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.33, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load8 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 0
  %s.read.len9 = load i64, ptr %s.read.len, align 8
  %s.read.len10 = and i64 %s.read.len9, 281474976710655
  %str.tag11 = lshr i64 %s.read.len9, 48
  %str.immortal12 = icmp eq i64 %str.tag11, 0
  br i1 %str.immortal12, label %str_ok14, label %str_gen_check13

loop.exit.nat.33:                                 ; preds = %loop.header.33
  br label %loop.exit.33

loop.latch.33:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.33, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.33, align 8
  br label %loop.header.33

loop.exit.33:                                     ; preds = %loop.exit.nat.33
  %var.load56 = load ptr, ptr %var.cur, align 8
  %b.len57 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load56, i32 0, i32 0
  %b.len58 = load i64, ptr %b.len57, align 8
  %cmptmp59 = icmp sgt i64 %b.len58, 0
  br i1 %cmptmp59, label %choice.then60, label %choice.exit61

str_gen_check13:                                  ; preds = %loop.body.33
  %arena.cur16 = call ptr @dva_arena_current()
  %tag.valid17 = call i1 @dva_arena_validate_tag(ptr %arena.cur16, i64 %str.tag11)
  br i1 %tag.valid17, label %str_ok14, label %str_stale15

str_ok14:                                         ; preds = %str_stale15, %str_gen_check13, %loop.body.33
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 1
  %s.read.data18 = load ptr, ptr %s.read.data, align 8
  %var.load19 = load i64, ptr %var.i, align 8
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
  %call.res = call i1 @"path::is_sep"(i64 %var.load20)
  br i1 %call.res, label %choice.then, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok14
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %idx_ok
  %var.load21 = load ptr, ptr %var.cur, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load21, i32 0, i32 0
  %b.len22 = load i64, ptr %b.len, align 8
  %cmptmp = icmp sgt i64 %b.len22, 0
  br i1 %cmptmp, label %choice.then23, label %choice.exit24

choice.else:                                      ; preds = %idx_ok
  %b.load = load ptr, ptr %var.cur, align 8
  %var.load43 = load i64, ptr %var.c, align 8
  %b.b.ge0 = icmp sge i64 %var.load43, 0
  %b.b.le255 = icmp sle i64 %var.load43, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.exit:                                      ; preds = %b.push_done, %choice.exit24
  br label %loop.latch.33

choice.then23:                                    ; preds = %choice.then
  %var.load25 = load ptr, ptr %var.cur, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 0
  %b.freeze.len26 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 1
  %b.freeze.data27 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.exit24:                                    ; preds = %a.store, %choice.then
  br label %choice.exit

b.freeze.check:                                   ; preds = %choice.then23
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data27, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data27, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data27, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len26, 1
  %arena.cur28 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data27, i64 %b.freeze.len26, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len26
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then23
  %b.freeze.data29 = phi ptr [ %b.freeze.data27, %choice.then23 ], [ %b.freeze.data27, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur30 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len26, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data29, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %a.load = load ptr, ptr %var.out, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %b.freeze.done
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
  store ptr %a.create32, ptr %var.out, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %b.freeze.done
  %a.load2 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len38 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap39 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len38, %a.cap39
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data40 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len41 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data40, i64 %a.cur.len41
  %slot.p2i = ptrtoint ptr %builder.freeze to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len41, 1
  %b.len.gep42 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep42, align 8
  br label %choice.exit24

b.byte_ok:                                        ; preds = %b.byte_err, %choice.else
  %b.byte.i8 = trunc i64 %var.load43 to i8
  %b.len44 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len45 = load i64, ptr %b.len44, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap46 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data47 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len45, %b.cap46
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.else
  %5 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap46, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum48 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf49 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf49, label %str_overflow_abort51, label %b.new.buf.len50

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len50
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data53 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len54 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data53, i64 %b.cur.len54
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len54, 1
  %b.nul = getelementptr i8, ptr %b.cur.data53, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep55 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep55, align 8
  br label %choice.exit

b.new.buf.len50:                                  ; preds = %str_overflow_abort51, %b.grow
  %arena.cur52 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 %sum48)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data47, i64 %b.len45, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len45
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort51:                             ; preds = %b.grow
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len50

choice.then60:                                    ; preds = %loop.exit.33
  %var.load62 = load ptr, ptr %var.cur, align 8
  %b.freeze.len63 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load62, i32 0, i32 0
  %b.freeze.len64 = load i64, ptr %b.freeze.len63, align 8
  %b.freeze.data65 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load62, i32 0, i32 1
  %b.freeze.data66 = load ptr, ptr %b.freeze.data65, align 8
  %b.freeze.arena67 = call ptr @dva_arena_current()
  %b.freeze.nc.gep68 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena67, i32 0, i32 1
  %b.freeze.nc69 = load i64, ptr %b.freeze.nc.gep68, align 8
  %b.freeze.has.chunk70 = icmp sgt i64 %b.freeze.nc69, 0
  br i1 %b.freeze.has.chunk70, label %b.freeze.check71, label %b.freeze.done73

choice.exit61:                                    ; preds = %a.store115, %loop.exit.33
  %var.load129 = load ptr, ptr %var.out, align 8
  %a.load130 = load ptr, ptr %var.out, align 8
  %a.null131 = icmp eq ptr %a.load130, null
  br i1 %a.null131, label %a.create132, label %a.after133

b.freeze.check71:                                 ; preds = %choice.then60
  %b.freeze.last.idx74 = sub i64 %b.freeze.nc69, 1
  %b.freeze.chunks.gep75 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena67, i32 0, i32 3
  %b.freeze.chunk.slot76 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep75, i64 0, i64 %b.freeze.last.idx74
  %b.freeze.last.chunk77 = load ptr, ptr %b.freeze.chunk.slot76, align 8
  %b.freeze.off.gep78 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena67, i32 0, i32 2
  %b.freeze.off79 = load i64, ptr %b.freeze.off.gep78, align 8
  %b.freeze.bump80 = getelementptr i8, ptr %b.freeze.last.chunk77, i64 %b.freeze.off79
  %b.freeze.cap.gep81 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena67, i32 0, i32 0
  %b.freeze.cap82 = load i64, ptr %b.freeze.cap.gep81, align 8
  %b.freeze.chunk.end83 = getelementptr i8, ptr %b.freeze.last.chunk77, i64 %b.freeze.cap82
  %b.freeze.ge.chunk84 = icmp uge ptr %b.freeze.data66, %b.freeze.last.chunk77
  %b.freeze.lt.end85 = icmp ult ptr %b.freeze.data66, %b.freeze.chunk.end83
  %b.freeze.in.chunk86 = and i1 %b.freeze.ge.chunk84, %b.freeze.lt.end85
  %b.freeze.ge.bump87 = icmp uge ptr %b.freeze.data66, %b.freeze.bump80
  %b.freeze.reaped88 = and i1 %b.freeze.in.chunk86, %b.freeze.ge.bump87
  br i1 %b.freeze.reaped88, label %b.freeze.copy72, label %b.freeze.done73

b.freeze.copy72:                                  ; preds = %b.freeze.check71
  %b.freeze.alen89 = add i64 %b.freeze.len64, 1
  %arena.cur90 = call ptr @dva_arena_current()
  %b.freeze.fresh91 = call ptr @dva_arena_alloc(ptr %arena.cur90, i64 %b.freeze.alen89)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh91, ptr align 1 %b.freeze.data66, i64 %b.freeze.len64, i1 false)
  %b.freeze.nul92 = getelementptr i8, ptr %b.freeze.fresh91, i64 %b.freeze.len64
  store i8 0, ptr %b.freeze.nul92, align 1
  br label %b.freeze.done73

b.freeze.done73:                                  ; preds = %b.freeze.copy72, %b.freeze.check71, %choice.then60
  %b.freeze.data93 = phi ptr [ %b.freeze.data66, %choice.then60 ], [ %b.freeze.data66, %b.freeze.check71 ], [ %b.freeze.fresh91, %b.freeze.copy72 ]
  %arena.cur94 = call ptr @dva_arena_current()
  %builder.freeze95 = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 16)
  %str.build.len.gep96 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze95, i32 0, i32 0
  store i64 %b.freeze.len64, ptr %str.build.len.gep96, align 8
  %str.build.data.gep97 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze95, i32 0, i32 1
  store ptr %b.freeze.data93, ptr %str.build.data.gep97, align 8
  %b.freeze.rst.len98 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load62, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len98, align 8
  %b.freeze.rst.data99 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load62, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data99, align 8
  %b.freeze.rst.cap100 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load62, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap100, align 8
  %a.load101 = load ptr, ptr %var.out, align 8
  %a.null102 = icmp eq ptr %a.load101, null
  br i1 %a.null102, label %a.create103, label %a.after104

a.create103:                                      ; preds = %b.freeze.done73
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
  store ptr %a.create106, ptr %var.out, align 8
  br label %a.after104

a.after104:                                       ; preds = %a.create103, %b.freeze.done73
  %a.load2112 = load ptr, ptr %var.out, align 8
  br label %a.check113

a.check113:                                       ; preds = %a.after104
  %a.len116 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2112, i32 0, i32 0
  %a.len117 = load i64, ptr %a.len116, align 8
  %a.cap118 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2112, i32 0, i32 2
  %a.cap119 = load i64, ptr %a.cap118, align 8
  %a.needs.grow120 = icmp eq i64 %a.len117, %a.cap119
  br i1 %a.needs.grow120, label %a.grow114, label %a.store115

a.grow114:                                        ; preds = %a.check113
  call void @dva_array_grow(ptr %a.load2112)
  br label %a.store115

a.store115:                                       ; preds = %a.grow114, %a.check113
  %a.cur.data121 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2112, i32 0, i32 1
  %a.cur.data122 = load ptr, ptr %a.cur.data121, align 8
  %a.cur.len123 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2112, i32 0, i32 0
  %a.cur.len124 = load i64, ptr %a.cur.len123, align 8
  %a.elem.gep125 = getelementptr i64, ptr %a.cur.data122, i64 %a.cur.len124
  %slot.p2i126 = ptrtoint ptr %builder.freeze95 to i64
  store i64 %slot.p2i126, ptr %a.elem.gep125, align 8
  %a.next.len127 = add i64 %a.cur.len124, 1
  %b.len.gep128 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2112, i32 0, i32 0
  store i64 %a.next.len127, ptr %b.len.gep128, align 8
  br label %choice.exit61

a.create132:                                      ; preds = %choice.exit61
  %arena.cur134 = call ptr @dva_arena_current()
  %a.create135 = call ptr @dva_arena_alloc(ptr %arena.cur134, i64 24)
  %arena.cur136 = call ptr @dva_arena_current()
  %a.buf137 = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 128)
  %a.len.gep138 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create135, i32 0, i32 0
  store i64 0, ptr %a.len.gep138, align 8
  %a.data.gep139 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create135, i32 0, i32 1
  store ptr %a.buf137, ptr %a.data.gep139, align 8
  %a.cap.gep140 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create135, i32 0, i32 2
  store i64 16, ptr %a.cap.gep140, align 8
  store ptr %a.create135, ptr %var.out, align 8
  br label %a.after133

a.after133:                                       ; preds = %a.create132, %choice.exit61
  %a.load2141 = load ptr, ptr %var.out, align 8
  ret ptr %a.load2141
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

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

define ptr @"path::posix_normalize"(ptr %0) #1 {
entry:
  %var._610 = alloca ptr, align 8
  %var._607 = alloca ptr, align 8
  %var._496 = alloca i64, align 8
  %var._i495 = alloca i64, align 8
  %var.idx = alloca i64, align 8
  %loop.step.40 = alloca i64, align 8
  %loop.idx.40 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var._295 = alloca ptr, align 8
  %var._292 = alloca ptr, align 8
  %var._230 = alloca i64, align 8
  %var._i229 = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.37 = alloca i64, align 8
  %loop.idx.37 = alloca i64, align 8
  %var.kept = alloca ptr, align 8
  %var._182 = alloca ptr, align 8
  %var._179 = alloca ptr, align 8
  %var.n_segs = alloca i64, align 8
  %var.seg = alloca ptr, align 8
  %var.c = alloca i32, align 4
  %var.is_end = alloca i1, align 1
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.34 = alloca i64, align 8
  %loop.idx.34 = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.cur = alloca ptr, align 8
  %var.segs = alloca ptr, align 8
  %var.abs = alloca i1, align 1
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
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
  ret ptr @str.3.struct

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load3 = load ptr, ptr %var.p, align 8
  %call.res = call i1 @"path::posix_is_abs"(ptr %var.load3)
  store i1 %call.res, ptr %var.abs, align 1
  %arena.cur4 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 24)
  %arena.cur5 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.segs, align 8
  %arena.cur6 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
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
  store i64 32, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.cur, align 8
  %var.load9 = load ptr, ptr %var.p, align 8
  %str.len.query10 = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %str.len.query11 = load i64, ptr %str.len.query10, align 8
  %str.len.query12 = and i64 %str.len.query11, 281474976710655
  %str.tag13 = lshr i64 %str.len.query11, 48
  %str.immortal14 = icmp eq i64 %str.tag13, 0
  br i1 %str.immortal14, label %str_ok16, label %str_gen_check15

str_overflow_abort:                               ; preds = %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len7

str_gen_check15:                                  ; preds = %b.buf.len7
  %arena.cur18 = call ptr @dva_arena_current()
  %tag.valid19 = call i1 @dva_arena_validate_tag(ptr %arena.cur18, i64 %str.tag13)
  br i1 %tag.valid19, label %str_ok16, label %str_stale17

str_ok16:                                         ; preds = %str_stale17, %str_gen_check15, %b.buf.len7
  store i64 %str.len.query12, ptr %var.len, align 8
  %var.load20 = load i64, ptr %var.len, align 8
  %addtmp = add i64 %var.load20, 1
  store i64 0, ptr %loop.idx.34, align 8
  br label %loop.header.34

str_stale17:                                      ; preds = %str_gen_check15
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok16

loop.header.34:                                   ; preds = %loop.latch.34, %str_ok16
  %counter.load = load i64, ptr %loop.idx.34, align 8
  %loop.cond = icmp slt i64 %counter.load, %addtmp
  br i1 %loop.cond, label %loop.body.34, label %loop.exit.nat.34

loop.body.34:                                     ; preds = %loop.header.34
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.34, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load21 = load i64, ptr %var.i, align 8
  %var.load22 = load i64, ptr %var.len, align 8
  %cmptmp23 = icmp eq i64 %var.load21, %var.load22
  store i1 %cmptmp23, ptr %var.is_end, align 1
  %var.load24 = load i1, ptr %var.is_end, align 1
  br i1 %var.load24, label %choice.then25, label %choice.else

loop.exit.nat.34:                                 ; preds = %loop.header.34
  br label %loop.exit.34

loop.latch.34:                                    ; preds = %choice.exit43
  %step.val403 = load i64, ptr %loop.step.34, align 8
  %loop.next404 = add i64 %counter.load, %step.val403
  store i64 %loop.next404, ptr %loop.idx.34, align 8
  br label %loop.header.34

loop.exit.34:                                     ; preds = %loop.exit.nat.34
  %var.load405 = load ptr, ptr %var.p, align 8
  %str.len.query406 = getelementptr inbounds { i64, ptr }, ptr %var.load405, i32 0, i32 0
  %str.len.query407 = load i64, ptr %str.len.query406, align 8
  %str.len.query408 = and i64 %str.len.query407, 281474976710655
  %str.tag409 = lshr i64 %str.len.query407, 48
  %str.immortal410 = icmp eq i64 %str.tag409, 0
  br i1 %str.immortal410, label %str_ok412, label %str_gen_check411

choice.then25:                                    ; preds = %loop.body.34
  br label %choice.exit26

choice.else:                                      ; preds = %loop.body.34
  %var.load27 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %s.read.len28 = load i64, ptr %s.read.len, align 8
  %s.read.len29 = and i64 %s.read.len28, 281474976710655
  %str.tag30 = lshr i64 %s.read.len28, 48
  %str.immortal31 = icmp eq i64 %str.tag30, 0
  br i1 %str.immortal31, label %str_ok33, label %str_gen_check32

choice.exit26:                                    ; preds = %idx_ok, %choice.then25
  %choice.res = phi i32 [ 47, %choice.then25 ], [ %coerce.trunc, %idx_ok ]
  store i32 %choice.res, ptr %var.c, align 4
  %var.load39 = load i32, ptr %var.c, align 4
  %coerce.sext = sext i32 %var.load39 to i64
  %cmptmp40 = icmp eq i64 %coerce.sext, 47
  br i1 %cmptmp40, label %choice.then41, label %choice.else42

str_gen_check32:                                  ; preds = %choice.else
  %arena.cur35 = call ptr @dva_arena_current()
  %tag.valid36 = call i1 @dva_arena_validate_tag(ptr %arena.cur35, i64 %str.tag30)
  br i1 %tag.valid36, label %str_ok33, label %str_stale34

str_ok33:                                         ; preds = %str_stale34, %str_gen_check32, %choice.else
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %s.read.data37 = load ptr, ptr %s.read.data, align 8
  %var.load38 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load38, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale34:                                      ; preds = %str_gen_check32
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok33

idx_big_check:                                    ; preds = %str_ok33
  %idx.big = icmp sge i64 %var.load38, %s.read.len29
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data37, i64 %var.load38
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %coerce.trunc = trunc i64 %s.byte.val to i32
  br label %choice.exit26

idx_oob:                                          ; preds = %idx_big_check, %str_ok33
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then41:                                    ; preds = %choice.exit26
  %var.load44 = load ptr, ptr %var.cur, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load44, i32 0, i32 0
  %b.freeze.len45 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load44, i32 0, i32 1
  %b.freeze.data46 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.else42:                                    ; preds = %choice.exit26
  %b.load = load ptr, ptr %var.cur, align 8
  %var.load386 = load i32, ptr %var.c, align 4
  %coerce.sext387 = sext i32 %var.load386 to i64
  %br.cmp1 = icmp slt i64 %coerce.sext387, 128
  %br.cmp2 = icmp slt i64 %coerce.sext387, 2048
  %br.cmp3 = icmp slt i64 %coerce.sext387, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len388 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len388, i64 %br.width)
  %sum389 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf390 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf390, label %str_overflow_abort392, label %b.rn.new.len391

choice.exit43:                                    ; preds = %br.done.38, %choice.exit101
  br label %loop.latch.34

b.freeze.check:                                   ; preds = %choice.then41
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

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then41
  %b.freeze.data48 = phi ptr [ %b.freeze.data46, %choice.then41 ], [ %b.freeze.data46, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
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
  store ptr %builder.freeze, ptr %var.seg, align 8
  %var.load50 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 0
  %eq.lhs.len51 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len52 = and i64 %eq.lhs.len51, 281474976710655
  %str.tag53 = lshr i64 %eq.lhs.len51, 48
  %str.immortal54 = icmp eq i64 %str.tag53, 0
  br i1 %str.immortal54, label %str_ok56, label %str_gen_check55

str_gen_check55:                                  ; preds = %b.freeze.done
  %arena.cur58 = call ptr @dva_arena_current()
  %tag.valid59 = call i1 @dva_arena_validate_tag(ptr %arena.cur58, i64 %str.tag53)
  br i1 %tag.valid59, label %str_ok56, label %str_stale57

str_ok56:                                         ; preds = %str_stale57, %str_gen_check55, %b.freeze.done
  %eq.rhs.len = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len60 = and i64 %eq.rhs.len, 281474976710655
  %str.tag61 = lshr i64 %eq.rhs.len, 48
  %str.immortal62 = icmp eq i64 %str.tag61, 0
  br i1 %str.immortal62, label %str_ok64, label %str_gen_check63

str_stale57:                                      ; preds = %str_gen_check55
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok56

str_gen_check63:                                  ; preds = %str_ok56
  %arena.cur66 = call ptr @dva_arena_current()
  %tag.valid67 = call i1 @dva_arena_validate_tag(ptr %arena.cur66, i64 %str.tag61)
  br i1 %tag.valid67, label %str_ok64, label %str_stale65

str_ok64:                                         ; preds = %str_stale65, %str_gen_check63, %str_ok56
  %eq.len = icmp eq i64 %eq.lhs.len52, %eq.rhs.len60
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale65:                                      ; preds = %str_gen_check63
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok64

str.eq.then:                                      ; preds = %str_ok64
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 1
  %eq.lhs.data68 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data68, ptr %eq.rhs.data, i64 %eq.lhs.len52)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok64
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.35.then, label %and.35.else

and.35.then:                                      ; preds = %str.eq.merge
  %var.load69 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len70 = getelementptr inbounds { i64, ptr }, ptr %var.load69, i32 0, i32 0
  %eq.lhs.len71 = load i64, ptr %eq.lhs.len70, align 8
  %eq.lhs.len72 = and i64 %eq.lhs.len71, 281474976710655
  %str.tag73 = lshr i64 %eq.lhs.len71, 48
  %str.immortal74 = icmp eq i64 %str.tag73, 0
  br i1 %str.immortal74, label %str_ok76, label %str_gen_check75

and.35.else:                                      ; preds = %str.eq.merge
  br label %and.35.exit

and.35.exit:                                      ; preds = %and.35.else, %str.eq.merge92
  %and.35.phi = phi i1 [ %str.neq99, %str.eq.merge92 ], [ %str.neq, %and.35.else ]
  br i1 %and.35.phi, label %choice.then100, label %choice.exit101

str_gen_check75:                                  ; preds = %and.35.then
  %arena.cur78 = call ptr @dva_arena_current()
  %tag.valid79 = call i1 @dva_arena_validate_tag(ptr %arena.cur78, i64 %str.tag73)
  br i1 %tag.valid79, label %str_ok76, label %str_stale77

str_ok76:                                         ; preds = %str_stale77, %str_gen_check75, %and.35.then
  %eq.rhs.len80 = load i64, ptr @str.3.struct, align 8
  %eq.rhs.len81 = and i64 %eq.rhs.len80, 281474976710655
  %str.tag82 = lshr i64 %eq.rhs.len80, 48
  %str.immortal83 = icmp eq i64 %str.tag82, 0
  br i1 %str.immortal83, label %str_ok85, label %str_gen_check84

str_stale77:                                      ; preds = %str_gen_check75
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok76

str_gen_check84:                                  ; preds = %str_ok76
  %arena.cur87 = call ptr @dva_arena_current()
  %tag.valid88 = call i1 @dva_arena_validate_tag(ptr %arena.cur87, i64 %str.tag82)
  br i1 %tag.valid88, label %str_ok85, label %str_stale86

str_ok85:                                         ; preds = %str_stale86, %str_gen_check84, %str_ok76
  %eq.len89 = icmp eq i64 %eq.lhs.len72, %eq.rhs.len81
  br i1 %eq.len89, label %str.eq.then90, label %str.eq.else91

str_stale86:                                      ; preds = %str_gen_check84
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok85

str.eq.then90:                                    ; preds = %str_ok85
  %eq.lhs.data93 = getelementptr inbounds { i64, ptr }, ptr %var.load69, i32 0, i32 1
  %eq.lhs.data94 = load ptr, ptr %eq.lhs.data93, align 8
  %eq.rhs.data95 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp96 = call i32 @memcmp(ptr %eq.lhs.data94, ptr %eq.rhs.data95, i64 %eq.lhs.len72)
  %eq.cmp.zero97 = icmp eq i32 %eq.memcmp96, 0
  br label %str.eq.merge92

str.eq.else91:                                    ; preds = %str_ok85
  br label %str.eq.merge92

str.eq.merge92:                                   ; preds = %str.eq.else91, %str.eq.then90
  %str.eq.result98 = phi i1 [ %eq.cmp.zero97, %str.eq.then90 ], [ false, %str.eq.else91 ]
  %str.neq99 = xor i1 %str.eq.result98, true
  br label %and.35.exit

choice.then100:                                   ; preds = %and.35.exit
  %var.load102 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len103 = getelementptr inbounds { i64, ptr }, ptr %var.load102, i32 0, i32 0
  %eq.lhs.len104 = load i64, ptr %eq.lhs.len103, align 8
  %eq.lhs.len105 = and i64 %eq.lhs.len104, 281474976710655
  %str.tag106 = lshr i64 %eq.lhs.len104, 48
  %str.immortal107 = icmp eq i64 %str.tag106, 0
  br i1 %str.immortal107, label %str_ok109, label %str_gen_check108

choice.exit101:                                   ; preds = %choice.exit134, %and.35.exit
  br label %choice.exit43

str_gen_check108:                                 ; preds = %choice.then100
  %arena.cur111 = call ptr @dva_arena_current()
  %tag.valid112 = call i1 @dva_arena_validate_tag(ptr %arena.cur111, i64 %str.tag106)
  br i1 %tag.valid112, label %str_ok109, label %str_stale110

str_ok109:                                        ; preds = %str_stale110, %str_gen_check108, %choice.then100
  %eq.rhs.len113 = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len114 = and i64 %eq.rhs.len113, 281474976710655
  %str.tag115 = lshr i64 %eq.rhs.len113, 48
  %str.immortal116 = icmp eq i64 %str.tag115, 0
  br i1 %str.immortal116, label %str_ok118, label %str_gen_check117

str_stale110:                                     ; preds = %str_gen_check108
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok109

str_gen_check117:                                 ; preds = %str_ok109
  %arena.cur120 = call ptr @dva_arena_current()
  %tag.valid121 = call i1 @dva_arena_validate_tag(ptr %arena.cur120, i64 %str.tag115)
  br i1 %tag.valid121, label %str_ok118, label %str_stale119

str_ok118:                                        ; preds = %str_stale119, %str_gen_check117, %str_ok109
  %eq.len122 = icmp eq i64 %eq.lhs.len105, %eq.rhs.len114
  br i1 %eq.len122, label %str.eq.then123, label %str.eq.else124

str_stale119:                                     ; preds = %str_gen_check117
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok118

str.eq.then123:                                   ; preds = %str_ok118
  %eq.lhs.data126 = getelementptr inbounds { i64, ptr }, ptr %var.load102, i32 0, i32 1
  %eq.lhs.data127 = load ptr, ptr %eq.lhs.data126, align 8
  %eq.rhs.data128 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp129 = call i32 @memcmp(ptr %eq.lhs.data127, ptr %eq.rhs.data128, i64 %eq.lhs.len105)
  %eq.cmp.zero130 = icmp eq i32 %eq.memcmp129, 0
  br label %str.eq.merge125

str.eq.else124:                                   ; preds = %str_ok118
  br label %str.eq.merge125

str.eq.merge125:                                  ; preds = %str.eq.else124, %str.eq.then123
  %str.eq.result131 = phi i1 [ %eq.cmp.zero130, %str.eq.then123 ], [ false, %str.eq.else124 ]
  br i1 %str.eq.result131, label %choice.then132, label %choice.else133

choice.then132:                                   ; preds = %str.eq.merge125
  %var.load135 = load ptr, ptr %var.segs, align 8
  %a.load = load ptr, ptr %var.segs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else133:                                   ; preds = %str.eq.merge125
  %var.load357 = load ptr, ptr %var.seg, align 8
  %a.load358 = load ptr, ptr %var.segs, align 8
  %a.null359 = icmp eq ptr %a.load358, null
  br i1 %a.null359, label %a.create360, label %a.after361

choice.exit134:                                   ; preds = %a.store372, %choice.exit216
  br label %choice.exit101

a.create:                                         ; preds = %choice.then132
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
  store ptr %a.create137, ptr %var.segs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then132
  %a.load2 = load ptr, ptr %var.segs, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query143 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query143, ptr %var.n_segs, align 8
  %var.load144 = load i64, ptr %var.n_segs, align 8
  %cmptmp145 = icmp sgt i64 %var.load144, 0
  br i1 %cmptmp145, label %and.36.then, label %and.36.else

and.36.then:                                      ; preds = %a.after
  %var.load146 = load ptr, ptr %var.segs, align 8
  %a.load147 = load ptr, ptr %var.segs, align 8
  %a.null148 = icmp eq ptr %a.load147, null
  br i1 %a.null148, label %a.create149, label %a.after150

and.36.else:                                      ; preds = %a.after
  br label %and.36.exit

and.36.exit:                                      ; preds = %and.36.else, %str.eq.merge206
  %and.36.phi = phi i1 [ %str.neq213, %str.eq.merge206 ], [ %cmptmp145, %and.36.else ]
  br i1 %and.36.phi, label %choice.then214, label %choice.else215

a.create149:                                      ; preds = %and.36.then
  %arena.cur151 = call ptr @dva_arena_current()
  %a.create152 = call ptr @dva_arena_alloc(ptr %arena.cur151, i64 24)
  %arena.cur153 = call ptr @dva_arena_current()
  %a.buf154 = call ptr @dva_arena_alloc(ptr %arena.cur153, i64 128)
  %a.len.gep155 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create152, i32 0, i32 0
  store i64 0, ptr %a.len.gep155, align 8
  %a.data.gep156 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create152, i32 0, i32 1
  store ptr %a.buf154, ptr %a.data.gep156, align 8
  %a.cap.gep157 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create152, i32 0, i32 2
  store i64 16, ptr %a.cap.gep157, align 8
  store ptr %a.create152, ptr %var.segs, align 8
  br label %a.after150

a.after150:                                       ; preds = %a.create149, %and.36.then
  %a.load2158 = load ptr, ptr %var.segs, align 8
  %var.load159 = load i64, ptr %var.n_segs, align 8
  %subtmp = sub i64 %var.load159, 1
  %a.rd.nonnull = icmp ne ptr %a.load2158, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after150
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2158, i32 0, i32 0
  %a.rd.len160 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %subtmp, 0
  %a.rd.lt = icmp slt i64 %subtmp, %a.rd.len160
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2158, i32 0, i32 1
  %a.rd.data161 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data161, i64 %subtmp
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after150
  %arena.cur162 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur162, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.7.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 277, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 57, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur163 = call ptr @dva_arena_current()
  %err.alloc164 = call ptr @dva_arena_alloc(ptr %arena.cur163, i64 56)
  %err.code.gep165 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 0
  store i64 4011, ptr %err.code.gep165, align 8
  %err.msg.gep166 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep166, align 8
  %err.file.gep167 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 2
  store ptr @str.7.struct, ptr %err.file.gep167, align 8
  %err.line.gep168 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 3
  store i64 277, ptr %err.line.gep168, align 8
  %err.col.gep169 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 4
  store i64 57, ptr %err.col.gep169, align 8
  %err.ctx.gep170 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 5
  %err.ctx0.gep171 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep170, i32 0, i32 0
  store i64 %subtmp, ptr %err.ctx0.gep171, align 8
  %err.ctx1.gep172 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep170, i32 0, i32 1
  store i64 %a.rd.len160, ptr %err.ctx1.gep172, align 8
  %err.p2i173 = ptrtoint ptr %err.alloc164 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i173, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag174 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag174, label %choice.then175, label %choice.else176

choice.then175:                                   ; preds = %a.rd.done
  %ram.pay178 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay178 to ptr
  store ptr %pay.ptr, ptr %var._179, align 8
  br label %choice.exit177

choice.else176:                                   ; preds = %a.rd.done
  %ram.pay180 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr181 = inttoptr i64 %ram.pay180 to ptr
  store ptr %pay.ptr181, ptr %var._182, align 8
  br label %choice.exit177

choice.exit177:                                   ; preds = %choice.else176, %choice.then175
  %choice.res183 = phi ptr [ %pay.ptr, %choice.then175 ], [ @str.4.struct, %choice.else176 ]
  %eq.lhs.len184 = getelementptr inbounds { i64, ptr }, ptr %choice.res183, i32 0, i32 0
  %eq.lhs.len185 = load i64, ptr %eq.lhs.len184, align 8
  %eq.lhs.len186 = and i64 %eq.lhs.len185, 281474976710655
  %str.tag187 = lshr i64 %eq.lhs.len185, 48
  %str.immortal188 = icmp eq i64 %str.tag187, 0
  br i1 %str.immortal188, label %str_ok190, label %str_gen_check189

str_gen_check189:                                 ; preds = %choice.exit177
  %arena.cur192 = call ptr @dva_arena_current()
  %tag.valid193 = call i1 @dva_arena_validate_tag(ptr %arena.cur192, i64 %str.tag187)
  br i1 %tag.valid193, label %str_ok190, label %str_stale191

str_ok190:                                        ; preds = %str_stale191, %str_gen_check189, %choice.exit177
  %eq.rhs.len194 = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len195 = and i64 %eq.rhs.len194, 281474976710655
  %str.tag196 = lshr i64 %eq.rhs.len194, 48
  %str.immortal197 = icmp eq i64 %str.tag196, 0
  br i1 %str.immortal197, label %str_ok199, label %str_gen_check198

str_stale191:                                     ; preds = %str_gen_check189
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok190

str_gen_check198:                                 ; preds = %str_ok190
  %arena.cur201 = call ptr @dva_arena_current()
  %tag.valid202 = call i1 @dva_arena_validate_tag(ptr %arena.cur201, i64 %str.tag196)
  br i1 %tag.valid202, label %str_ok199, label %str_stale200

str_ok199:                                        ; preds = %str_stale200, %str_gen_check198, %str_ok190
  %eq.len203 = icmp eq i64 %eq.lhs.len186, %eq.rhs.len195
  br i1 %eq.len203, label %str.eq.then204, label %str.eq.else205

str_stale200:                                     ; preds = %str_gen_check198
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok199

str.eq.then204:                                   ; preds = %str_ok199
  %eq.lhs.data207 = getelementptr inbounds { i64, ptr }, ptr %choice.res183, i32 0, i32 1
  %eq.lhs.data208 = load ptr, ptr %eq.lhs.data207, align 8
  %eq.rhs.data209 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp210 = call i32 @memcmp(ptr %eq.lhs.data208, ptr %eq.rhs.data209, i64 %eq.lhs.len186)
  %eq.cmp.zero211 = icmp eq i32 %eq.memcmp210, 0
  br label %str.eq.merge206

str.eq.else205:                                   ; preds = %str_ok199
  br label %str.eq.merge206

str.eq.merge206:                                  ; preds = %str.eq.else205, %str.eq.then204
  %str.eq.result212 = phi i1 [ %eq.cmp.zero211, %str.eq.then204 ], [ false, %str.eq.else205 ]
  %str.neq213 = xor i1 %str.eq.result212, true
  br label %and.36.exit

choice.then214:                                   ; preds = %and.36.exit
  %arena.cur217 = call ptr @dva_arena_current()
  %a.new218 = call ptr @dva_arena_alloc(ptr %arena.cur217, i64 24)
  %arena.cur219 = call ptr @dva_arena_current()
  %a.buf220 = call ptr @dva_arena_alloc(ptr %arena.cur219, i64 128)
  %a.len.gep221 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new218, i32 0, i32 0
  store i64 0, ptr %a.len.gep221, align 8
  %a.data.gep222 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new218, i32 0, i32 1
  store ptr %a.buf220, ptr %a.data.gep222, align 8
  %a.cap.gep223 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new218, i32 0, i32 2
  store i64 16, ptr %a.cap.gep223, align 8
  store ptr %a.new218, ptr %var.kept, align 8
  %var.load224 = load i64, ptr %var.n_segs, align 8
  %subtmp225 = sub i64 %var.load224, 1
  store i64 0, ptr %loop.idx.37, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.37

choice.else215:                                   ; preds = %and.36.exit
  %var.load327 = load i1, ptr %var.abs, align 1
  %nottmp = xor i1 %var.load327, true
  br i1 %nottmp, label %choice.then328, label %choice.exit329

choice.exit216:                                   ; preds = %choice.exit329, %a.after318
  br label %choice.exit134

loop.header.37:                                   ; preds = %loop.latch.37, %choice.then214
  %counter.load226 = load i64, ptr %loop.idx.37, align 8
  %loop.cond227 = icmp slt i64 %counter.load226, %subtmp225
  br i1 %loop.cond227, label %loop.body.37, label %loop.exit.nat.37

loop.body.37:                                     ; preds = %loop.header.37
  %loop.rel.i228 = sub i64 %counter.load226, 0
  store i64 1, ptr %loop.step.37, align 8
  store i64 %loop.rel.i228, ptr %var._i229, align 8
  store i64 %counter.load226, ptr %var._230, align 8
  store i64 %counter.load226, ptr %var.k, align 8
  %var.load231 = load ptr, ptr %var.segs, align 8
  %a.load232 = load ptr, ptr %var.segs, align 8
  %a.null233 = icmp eq ptr %a.load232, null
  br i1 %a.null233, label %a.create234, label %a.after235

loop.exit.nat.37:                                 ; preds = %loop.header.37
  br label %loop.exit.37

loop.latch.37:                                    ; preds = %a.store
  %step.val = load i64, ptr %loop.step.37, align 8
  %loop.next = add i64 %counter.load226, %step.val
  store i64 %loop.next, ptr %loop.idx.37, align 8
  br label %loop.header.37

loop.exit.37:                                     ; preds = %loop.exit.nat.37
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load314 = load ptr, ptr %var.kept, align 8
  %a.load315 = load ptr, ptr %var.kept, align 8
  %a.null316 = icmp eq ptr %a.load315, null
  br i1 %a.null316, label %a.create317, label %a.after318

a.create234:                                      ; preds = %loop.body.37
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
  store ptr %a.create237, ptr %var.segs, align 8
  br label %a.after235

a.after235:                                       ; preds = %a.create234, %loop.body.37
  %a.load2243 = load ptr, ptr %var.segs, align 8
  %var.load244 = load i64, ptr %var.k, align 8
  %a.rd.nonnull245 = icmp ne ptr %a.load2243, null
  br i1 %a.rd.nonnull245, label %a.rd.check246, label %a.rd.err.null248

a.rd.check246:                                    ; preds = %a.after235
  %a.rd.len251 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2243, i32 0, i32 0
  %a.rd.len252 = load i64, ptr %a.rd.len251, align 8
  %a.rd.ge0253 = icmp sge i64 %var.load244, 0
  %a.rd.lt254 = icmp slt i64 %var.load244, %a.rd.len252
  %a.rd.bounds255 = and i1 %a.rd.ge0253, %a.rd.lt254
  br i1 %a.rd.bounds255, label %a.rd.ok247, label %a.rd.err.oob249

a.rd.ok247:                                       ; preds = %a.rd.check246
  %a.rd.data256 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2243, i32 0, i32 1
  %a.rd.data257 = load ptr, ptr %a.rd.data256, align 8
  %a.rd.elem.gep258 = getelementptr i64, ptr %a.rd.data257, i64 %var.load244
  %a.rd.elem259 = load i64, ptr %a.rd.elem.gep258, align 8
  br label %a.rd.done250

a.rd.err.null248:                                 ; preds = %a.after235
  %arena.cur260 = call ptr @dva_arena_current()
  %err.alloc261 = call ptr @dva_arena_alloc(ptr %arena.cur260, i64 56)
  %err.code.gep262 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc261, i32 0, i32 0
  store i64 4011, ptr %err.code.gep262, align 8
  %err.msg.gep263 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc261, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep263, align 8
  %err.file.gep264 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc261, i32 0, i32 2
  store ptr @str.7.struct, ptr %err.file.gep264, align 8
  %err.line.gep265 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc261, i32 0, i32 3
  store i64 280, ptr %err.line.gep265, align 8
  %err.col.gep266 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc261, i32 0, i32 4
  store i64 68, ptr %err.col.gep266, align 8
  %err.ctx.gep267 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc261, i32 0, i32 5
  %err.ctx0.gep268 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep267, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep268, align 8
  %err.ctx1.gep269 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep267, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep269, align 8
  %err.p2i270 = ptrtoint ptr %err.alloc261 to i64
  br label %a.rd.done250

a.rd.err.oob249:                                  ; preds = %a.rd.check246
  %arena.cur271 = call ptr @dva_arena_current()
  %err.alloc272 = call ptr @dva_arena_alloc(ptr %arena.cur271, i64 56)
  %err.code.gep273 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc272, i32 0, i32 0
  store i64 4011, ptr %err.code.gep273, align 8
  %err.msg.gep274 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc272, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep274, align 8
  %err.file.gep275 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc272, i32 0, i32 2
  store ptr @str.7.struct, ptr %err.file.gep275, align 8
  %err.line.gep276 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc272, i32 0, i32 3
  store i64 280, ptr %err.line.gep276, align 8
  %err.col.gep277 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc272, i32 0, i32 4
  store i64 68, ptr %err.col.gep277, align 8
  %err.ctx.gep278 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc272, i32 0, i32 5
  %err.ctx0.gep279 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep278, i32 0, i32 0
  store i64 %var.load244, ptr %err.ctx0.gep279, align 8
  %err.ctx1.gep280 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep278, i32 0, i32 1
  store i64 %a.rd.len252, ptr %err.ctx1.gep280, align 8
  %err.p2i281 = ptrtoint ptr %err.alloc272 to i64
  br label %a.rd.done250

a.rd.done250:                                     ; preds = %a.rd.err.oob249, %a.rd.err.null248, %a.rd.ok247
  %a.rd.tag282 = phi i1 [ true, %a.rd.ok247 ], [ false, %a.rd.err.null248 ], [ false, %a.rd.err.oob249 ]
  %a.rd.pay283 = phi i64 [ %a.rd.elem259, %a.rd.ok247 ], [ %err.p2i270, %a.rd.err.null248 ], [ %err.p2i281, %a.rd.err.oob249 ]
  %ram.tag284 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag282, 0
  %ram.pay285 = insertvalue { i1, i64 } %ram.tag284, i64 %a.rd.pay283, 1
  %ram.tag286 = extractvalue { i1, i64 } %ram.pay285, 0
  br i1 %ram.tag286, label %choice.then287, label %choice.else288

choice.then287:                                   ; preds = %a.rd.done250
  %ram.pay290 = extractvalue { i1, i64 } %ram.pay285, 1
  %pay.ptr291 = inttoptr i64 %ram.pay290 to ptr
  store ptr %pay.ptr291, ptr %var._292, align 8
  br label %choice.exit289

choice.else288:                                   ; preds = %a.rd.done250
  %ram.pay293 = extractvalue { i1, i64 } %ram.pay285, 1
  %pay.ptr294 = inttoptr i64 %ram.pay293 to ptr
  store ptr %pay.ptr294, ptr %var._295, align 8
  br label %choice.exit289

choice.exit289:                                   ; preds = %choice.else288, %choice.then287
  %choice.res296 = phi ptr [ %pay.ptr291, %choice.then287 ], [ @str.4.struct, %choice.else288 ]
  %a.load297 = load ptr, ptr %var.kept, align 8
  %a.null298 = icmp eq ptr %a.load297, null
  br i1 %a.null298, label %a.create299, label %a.after300

a.create299:                                      ; preds = %choice.exit289
  %arena.cur301 = call ptr @dva_arena_current()
  %a.create302 = call ptr @dva_arena_alloc(ptr %arena.cur301, i64 24)
  %arena.cur303 = call ptr @dva_arena_current()
  %a.buf304 = call ptr @dva_arena_alloc(ptr %arena.cur303, i64 128)
  %a.len.gep305 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create302, i32 0, i32 0
  store i64 0, ptr %a.len.gep305, align 8
  %a.data.gep306 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create302, i32 0, i32 1
  store ptr %a.buf304, ptr %a.data.gep306, align 8
  %a.cap.gep307 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create302, i32 0, i32 2
  store i64 16, ptr %a.cap.gep307, align 8
  store ptr %a.create302, ptr %var.kept, align 8
  br label %a.after300

a.after300:                                       ; preds = %a.create299, %choice.exit289
  %a.load2308 = load ptr, ptr %var.kept, align 8
  br label %a.check

a.check:                                          ; preds = %a.after300
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2308, i32 0, i32 0
  %a.len309 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2308, i32 0, i32 2
  %a.cap310 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len309, %a.cap310
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2308)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2308, i32 0, i32 1
  %a.cur.data311 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2308, i32 0, i32 0
  %a.cur.len312 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data311, i64 %a.cur.len312
  %slot.p2i = ptrtoint ptr %choice.res296 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len312, 1
  %b.len.gep313 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2308, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep313, align 8
  br label %loop.latch.37

a.create317:                                      ; preds = %loop.exit.37
  %arena.cur319 = call ptr @dva_arena_current()
  %a.create320 = call ptr @dva_arena_alloc(ptr %arena.cur319, i64 24)
  %arena.cur321 = call ptr @dva_arena_current()
  %a.buf322 = call ptr @dva_arena_alloc(ptr %arena.cur321, i64 128)
  %a.len.gep323 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create320, i32 0, i32 0
  store i64 0, ptr %a.len.gep323, align 8
  %a.data.gep324 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create320, i32 0, i32 1
  store ptr %a.buf322, ptr %a.data.gep324, align 8
  %a.cap.gep325 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create320, i32 0, i32 2
  store i64 16, ptr %a.cap.gep325, align 8
  store ptr %a.create320, ptr %var.kept, align 8
  br label %a.after318

a.after318:                                       ; preds = %a.create317, %loop.exit.37
  %a.load2326 = load ptr, ptr %var.kept, align 8
  store ptr %a.load2326, ptr %var.segs, align 8
  br label %choice.exit216

choice.then328:                                   ; preds = %choice.else215
  %a.load330 = load ptr, ptr %var.segs, align 8
  %a.null331 = icmp eq ptr %a.load330, null
  br i1 %a.null331, label %a.create332, label %a.after333

choice.exit329:                                   ; preds = %a.store344, %choice.else215
  br label %choice.exit216

a.create332:                                      ; preds = %choice.then328
  %arena.cur334 = call ptr @dva_arena_current()
  %a.create335 = call ptr @dva_arena_alloc(ptr %arena.cur334, i64 24)
  %arena.cur336 = call ptr @dva_arena_current()
  %a.buf337 = call ptr @dva_arena_alloc(ptr %arena.cur336, i64 128)
  %a.len.gep338 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create335, i32 0, i32 0
  store i64 0, ptr %a.len.gep338, align 8
  %a.data.gep339 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create335, i32 0, i32 1
  store ptr %a.buf337, ptr %a.data.gep339, align 8
  %a.cap.gep340 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create335, i32 0, i32 2
  store i64 16, ptr %a.cap.gep340, align 8
  store ptr %a.create335, ptr %var.segs, align 8
  br label %a.after333

a.after333:                                       ; preds = %a.create332, %choice.then328
  %a.load2341 = load ptr, ptr %var.segs, align 8
  br label %a.check342

a.check342:                                       ; preds = %a.after333
  %a.len345 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2341, i32 0, i32 0
  %a.len346 = load i64, ptr %a.len345, align 8
  %a.cap347 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2341, i32 0, i32 2
  %a.cap348 = load i64, ptr %a.cap347, align 8
  %a.needs.grow349 = icmp eq i64 %a.len346, %a.cap348
  br i1 %a.needs.grow349, label %a.grow343, label %a.store344

a.grow343:                                        ; preds = %a.check342
  call void @dva_array_grow(ptr %a.load2341)
  br label %a.store344

a.store344:                                       ; preds = %a.grow343, %a.check342
  %a.cur.data350 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2341, i32 0, i32 1
  %a.cur.data351 = load ptr, ptr %a.cur.data350, align 8
  %a.cur.len352 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2341, i32 0, i32 0
  %a.cur.len353 = load i64, ptr %a.cur.len352, align 8
  %a.elem.gep354 = getelementptr i64, ptr %a.cur.data351, i64 %a.cur.len353
  store i64 ptrtoint (ptr @str.5.struct to i64), ptr %a.elem.gep354, align 8
  %a.next.len355 = add i64 %a.cur.len353, 1
  %b.len.gep356 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2341, i32 0, i32 0
  store i64 %a.next.len355, ptr %b.len.gep356, align 8
  br label %choice.exit329

a.create360:                                      ; preds = %choice.else133
  %arena.cur362 = call ptr @dva_arena_current()
  %a.create363 = call ptr @dva_arena_alloc(ptr %arena.cur362, i64 24)
  %arena.cur364 = call ptr @dva_arena_current()
  %a.buf365 = call ptr @dva_arena_alloc(ptr %arena.cur364, i64 128)
  %a.len.gep366 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create363, i32 0, i32 0
  store i64 0, ptr %a.len.gep366, align 8
  %a.data.gep367 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create363, i32 0, i32 1
  store ptr %a.buf365, ptr %a.data.gep367, align 8
  %a.cap.gep368 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create363, i32 0, i32 2
  store i64 16, ptr %a.cap.gep368, align 8
  store ptr %a.create363, ptr %var.segs, align 8
  br label %a.after361

a.after361:                                       ; preds = %a.create360, %choice.else133
  %a.load2369 = load ptr, ptr %var.segs, align 8
  br label %a.check370

a.check370:                                       ; preds = %a.after361
  %a.len373 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2369, i32 0, i32 0
  %a.len374 = load i64, ptr %a.len373, align 8
  %a.cap375 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2369, i32 0, i32 2
  %a.cap376 = load i64, ptr %a.cap375, align 8
  %a.needs.grow377 = icmp eq i64 %a.len374, %a.cap376
  br i1 %a.needs.grow377, label %a.grow371, label %a.store372

a.grow371:                                        ; preds = %a.check370
  call void @dva_array_grow(ptr %a.load2369)
  br label %a.store372

a.store372:                                       ; preds = %a.grow371, %a.check370
  %a.cur.data378 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2369, i32 0, i32 1
  %a.cur.data379 = load ptr, ptr %a.cur.data378, align 8
  %a.cur.len380 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2369, i32 0, i32 0
  %a.cur.len381 = load i64, ptr %a.cur.len380, align 8
  %a.elem.gep382 = getelementptr i64, ptr %a.cur.data379, i64 %a.cur.len381
  %slot.p2i383 = ptrtoint ptr %var.load357 to i64
  store i64 %slot.p2i383, ptr %a.elem.gep382, align 8
  %a.next.len384 = add i64 %a.cur.len381, 1
  %b.len.gep385 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2369, i32 0, i32 0
  store i64 %a.next.len384, ptr %b.len.gep385, align 8
  br label %choice.exit134

b.rn.new.len391:                                  ; preds = %str_overflow_abort392, %choice.else42
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap393 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap393, %sum389
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort392:                            ; preds = %choice.else42
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len391

b.grow2:                                          ; preds = %b.rn.new.len391
  %b.cap2 = mul i64 %b.cap393, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum389
  %b.new.cap = select i1 %b.cap.need, i64 %sum389, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len2394 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data2395 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum396 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf397 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf397, label %str_overflow_abort399, label %b.new.buf.len2398

b.nogrow2:                                        ; preds = %b.rn.new.len391
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2398
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data401 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data401, i64 %b.rn.cur.len388
  br i1 %br.cmp1, label %br.b1.38, label %br.c2.38

b.new.buf.len2398:                                ; preds = %str_overflow_abort399, %b.grow2
  %arena.cur400 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur400, i64 %sum396)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2395, i64 %b.cur.len2394, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2394
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort399:                            ; preds = %b.grow2
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2398

br.b1.38:                                         ; preds = %b.grow_done
  %br.b1.0 = trunc i64 %coerce.sext387 to i8
  store i8 %br.b1.0, ptr %b.rn.dst, align 1
  br label %br.done.38

br.c2.38:                                         ; preds = %b.grow_done
  br i1 %br.cmp2, label %br.b2.38, label %br.c3.38

br.b2.38:                                         ; preds = %br.c2.38
  %br.sh6 = lshr i64 %coerce.sext387, 6
  %br.b2.0 = or i64 %br.sh6, 192
  %br.b2.0t = trunc i64 %br.b2.0 to i8
  %br.m6 = and i64 %coerce.sext387, 63
  %br.b2.1 = or i64 %br.m6, 128
  %br.b2.1t = trunc i64 %br.b2.1 to i8
  store i8 %br.b2.0t, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b2.1t, ptr %br.dst1, align 1
  br label %br.done.38

br.c3.38:                                         ; preds = %br.c2.38
  br i1 %br.cmp3, label %br.b3.38, label %br.b4.38

br.b3.38:                                         ; preds = %br.c3.38
  %br.sh12 = lshr i64 %coerce.sext387, 12
  %br.b3.0 = or i64 %br.sh12, 224
  %br.b3.0t = trunc i64 %br.b3.0 to i8
  %br.sh6.3 = lshr i64 %coerce.sext387, 6
  %br.m6.3 = and i64 %br.sh6.3, 63
  %br.b3.1 = or i64 %br.m6.3, 128
  %br.b3.1t = trunc i64 %br.b3.1 to i8
  %br.mend = and i64 %coerce.sext387, 63
  %br.b3.2 = or i64 %br.mend, 128
  %br.b3.2t = trunc i64 %br.b3.2 to i8
  store i8 %br.b3.0t, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b3.1t, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 %br.b3.2t, ptr %br.dst2.3, align 1
  br label %br.done.38

br.b4.38:                                         ; preds = %br.c3.38
  %br.sh18 = lshr i64 %coerce.sext387, 18
  %br.b4.0 = or i64 %br.sh18, 240
  %br.b4.0t = trunc i64 %br.b4.0 to i8
  %br.sh12.4 = lshr i64 %coerce.sext387, 12
  %br.m12.4 = and i64 %br.sh12.4, 63
  %br.b4.1 = or i64 %br.m12.4, 128
  %br.b4.1t = trunc i64 %br.b4.1 to i8
  %br.sh6.4 = lshr i64 %coerce.sext387, 6
  %br.m6.4 = and i64 %br.sh6.4, 63
  %br.b4.2 = or i64 %br.m6.4, 128
  %br.b4.2t = trunc i64 %br.b4.2 to i8
  %br.mend4 = and i64 %coerce.sext387, 63
  %br.b4.3 = or i64 %br.mend4, 128
  %br.b4.3t = trunc i64 %br.b4.3 to i8
  store i8 %br.b4.0t, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b4.1t, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 %br.b4.2t, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 %br.b4.3t, ptr %br.dst3.4, align 1
  br label %br.done.38

br.done.38:                                       ; preds = %br.b4.38, %br.b3.38, %br.b2.38, %br.b1.38
  %br.nul = getelementptr i8, ptr %b.rn.data401, i64 %sum389
  store i8 0, ptr %br.nul, align 1
  %b.len.gep402 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum389, ptr %b.len.gep402, align 8
  br label %choice.exit43

str_gen_check411:                                 ; preds = %loop.exit.34
  %arena.cur414 = call ptr @dva_arena_current()
  %tag.valid415 = call i1 @dva_arena_validate_tag(ptr %arena.cur414, i64 %str.tag409)
  br i1 %tag.valid415, label %str_ok412, label %str_stale413

str_ok412:                                        ; preds = %str_stale413, %str_gen_check411, %loop.exit.34
  %addtmp416 = add i64 %str.len.query408, 2
  %arena.cur417 = call ptr @dva_arena_current()
  %builder.new418 = call ptr @dva_arena_alloc(ptr %arena.cur417, i64 24)
  %cap.neg = icmp slt i64 %addtmp416, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp416
  %b.data.gep419 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new418, i32 0, i32 1
  %b.len.gep420 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new418, i32 0, i32 0
  %b.cap.gep421 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new418, i32 0, i32 2
  %b.buf.len422 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum423 = extractvalue { i64, i1 } %b.buf.len422, 0
  %ovf424 = extractvalue { i64, i1 } %b.buf.len422, 1
  br i1 %ovf424, label %str_overflow_abort426, label %b.buf.len425

str_stale413:                                     ; preds = %str_gen_check411
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok412

b.buf.len425:                                     ; preds = %str_overflow_abort426, %str_ok412
  %arena.cur427 = call ptr @dva_arena_current()
  %b.buf428 = call ptr @dva_arena_alloc(ptr %arena.cur427, i64 %sum423)
  %b.nul0429 = getelementptr i8, ptr %b.buf428, i64 0
  store i8 0, ptr %b.nul0429, align 1
  store i64 0, ptr %b.len.gep420, align 8
  store ptr %b.buf428, ptr %b.data.gep419, align 8
  store i64 %cap.safe, ptr %b.cap.gep421, align 8
  store ptr %builder.new418, ptr %var.out, align 8
  %var.load430 = load i1, ptr %var.abs, align 1
  br i1 %var.load430, label %choice.then431, label %choice.exit432

str_overflow_abort426:                            ; preds = %str_ok412
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len425

choice.then431:                                   ; preds = %b.buf.len425
  %b.load433 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len434 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load433, i32 0, i32 0
  %b.rn.cur.len435 = load i64, ptr %b.rn.cur.len434, align 8
  %b.rn.new.len436 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len435, i64 1)
  %sum437 = extractvalue { i64, i1 } %b.rn.new.len436, 0
  %ovf438 = extractvalue { i64, i1 } %b.rn.new.len436, 1
  br i1 %ovf438, label %str_overflow_abort440, label %b.rn.new.len439

choice.exit432:                                   ; preds = %br.done.39, %b.buf.len425
  %var.load477 = load ptr, ptr %var.segs, align 8
  %a.load478 = load ptr, ptr %var.segs, align 8
  %a.null479 = icmp eq ptr %a.load478, null
  br i1 %a.null479, label %a.create480, label %a.after481

b.rn.new.len439:                                  ; preds = %str_overflow_abort440, %choice.then431
  %b.cap441 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load433, i32 0, i32 2
  %b.cap442 = load i64, ptr %b.cap441, align 8
  %b.need.grow443 = icmp slt i64 %b.cap442, %sum437
  br i1 %b.need.grow443, label %b.grow2444, label %b.nogrow2445

str_overflow_abort440:                            ; preds = %choice.then431
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len439

b.grow2444:                                       ; preds = %b.rn.new.len439
  %b.cap2447 = mul i64 %b.cap442, 2
  %b.cap.small448 = icmp slt i64 %b.cap2447, 16
  %b.cap.grow449 = select i1 %b.cap.small448, i64 16, i64 %b.cap2447
  %b.cap.need450 = icmp slt i64 %b.cap.grow449, %sum437
  %b.new.cap451 = select i1 %b.cap.need450, i64 %sum437, i64 %b.cap.grow449
  %b.cur.len2452 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load433, i32 0, i32 0
  %b.cur.len2453 = load i64, ptr %b.cur.len2452, align 8
  %b.cur.data2454 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load433, i32 0, i32 1
  %b.cur.data2455 = load ptr, ptr %b.cur.data2454, align 8
  %b.new.buf.len2456 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap451, i64 1)
  %sum457 = extractvalue { i64, i1 } %b.new.buf.len2456, 0
  %ovf458 = extractvalue { i64, i1 } %b.new.buf.len2456, 1
  br i1 %ovf458, label %str_overflow_abort460, label %b.new.buf.len2459

b.nogrow2445:                                     ; preds = %b.rn.new.len439
  br label %b.grow_done446

b.grow_done446:                                   ; preds = %b.nogrow2445, %b.new.buf.len2459
  %b.rn.data466 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load433, i32 0, i32 1
  %b.rn.data467 = load ptr, ptr %b.rn.data466, align 8
  %b.rn.dst468 = getelementptr i8, ptr %b.rn.data467, i64 %b.rn.cur.len435
  br i1 true, label %br.b1.39, label %br.c2.39

b.new.buf.len2459:                                ; preds = %str_overflow_abort460, %b.grow2444
  %arena.cur461 = call ptr @dva_arena_current()
  %b.new.buf2462 = call ptr @dva_arena_alloc(ptr %arena.cur461, i64 %sum457)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2462, ptr align 1 %b.cur.data2455, i64 %b.cur.len2453, i1 false)
  %b.grow2.nul463 = getelementptr i8, ptr %b.new.buf2462, i64 %b.cur.len2453
  store i8 0, ptr %b.grow2.nul463, align 1
  %b.new.data2.gep464 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load433, i32 0, i32 1
  store ptr %b.new.buf2462, ptr %b.new.data2.gep464, align 8
  %b.new.cap2.gep465 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load433, i32 0, i32 2
  store i64 %b.new.cap451, ptr %b.new.cap2.gep465, align 8
  br label %b.grow_done446

str_overflow_abort460:                            ; preds = %b.grow2444
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2459

br.b1.39:                                         ; preds = %b.grow_done446
  store i8 47, ptr %b.rn.dst468, align 1
  br label %br.done.39

br.c2.39:                                         ; preds = %b.grow_done446
  br i1 true, label %br.b2.39, label %br.c3.39

br.b2.39:                                         ; preds = %br.c2.39
  store i8 -64, ptr %b.rn.dst468, align 1
  %br.dst1469 = getelementptr i8, ptr %b.rn.dst468, i64 1
  store i8 -81, ptr %br.dst1469, align 1
  br label %br.done.39

br.c3.39:                                         ; preds = %br.c2.39
  br i1 true, label %br.b3.39, label %br.b4.39

br.b3.39:                                         ; preds = %br.c3.39
  store i8 -32, ptr %b.rn.dst468, align 1
  %br.dst1.3470 = getelementptr i8, ptr %b.rn.dst468, i64 1
  store i8 -128, ptr %br.dst1.3470, align 1
  %br.dst2.3471 = getelementptr i8, ptr %b.rn.dst468, i64 2
  store i8 -81, ptr %br.dst2.3471, align 1
  br label %br.done.39

br.b4.39:                                         ; preds = %br.c3.39
  store i8 -16, ptr %b.rn.dst468, align 1
  %br.dst1.4472 = getelementptr i8, ptr %b.rn.dst468, i64 1
  store i8 -128, ptr %br.dst1.4472, align 1
  %br.dst2.4473 = getelementptr i8, ptr %b.rn.dst468, i64 2
  store i8 -128, ptr %br.dst2.4473, align 1
  %br.dst3.4474 = getelementptr i8, ptr %b.rn.dst468, i64 3
  store i8 -81, ptr %br.dst3.4474, align 1
  br label %br.done.39

br.done.39:                                       ; preds = %br.b4.39, %br.b3.39, %br.b2.39, %br.b1.39
  %br.nul475 = getelementptr i8, ptr %b.rn.data467, i64 %sum437
  store i8 0, ptr %br.nul475, align 1
  %b.len.gep476 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load433, i32 0, i32 0
  store i64 %sum437, ptr %b.len.gep476, align 8
  br label %choice.exit432

a.create480:                                      ; preds = %choice.exit432
  %arena.cur482 = call ptr @dva_arena_current()
  %a.create483 = call ptr @dva_arena_alloc(ptr %arena.cur482, i64 24)
  %arena.cur484 = call ptr @dva_arena_current()
  %a.buf485 = call ptr @dva_arena_alloc(ptr %arena.cur484, i64 128)
  %a.len.gep486 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create483, i32 0, i32 0
  store i64 0, ptr %a.len.gep486, align 8
  %a.data.gep487 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create483, i32 0, i32 1
  store ptr %a.buf485, ptr %a.data.gep487, align 8
  %a.cap.gep488 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create483, i32 0, i32 2
  store i64 16, ptr %a.cap.gep488, align 8
  store ptr %a.create483, ptr %var.segs, align 8
  br label %a.after481

a.after481:                                       ; preds = %a.create480, %choice.exit432
  %a.load2489 = load ptr, ptr %var.segs, align 8
  %a.len.query490 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2489, i32 0, i32 0
  %a.len.query491 = load i64, ptr %a.len.query490, align 8
  store i64 0, ptr %loop.idx.40, align 8
  br label %loop.header.40

loop.header.40:                                   ; preds = %loop.latch.40, %a.after481
  %counter.load492 = load i64, ptr %loop.idx.40, align 8
  %loop.cond493 = icmp slt i64 %counter.load492, %a.len.query491
  br i1 %loop.cond493, label %loop.body.40, label %loop.exit.nat.40

loop.body.40:                                     ; preds = %loop.header.40
  %loop.rel.i494 = sub i64 %counter.load492, 0
  store i64 1, ptr %loop.step.40, align 8
  store i64 %loop.rel.i494, ptr %var._i495, align 8
  store i64 %counter.load492, ptr %var._496, align 8
  store i64 %counter.load492, ptr %var.idx, align 8
  %var.load497 = load i64, ptr %var.idx, align 8
  %cmptmp498 = icmp sgt i64 %var.load497, 0
  br i1 %cmptmp498, label %choice.then499, label %choice.exit500

loop.exit.nat.40:                                 ; preds = %loop.header.40
  br label %loop.exit.40

loop.latch.40:                                    ; preds = %b.grow_done631
  %step.val654 = load i64, ptr %loop.step.40, align 8
  %loop.next655 = add i64 %counter.load492, %step.val654
  store i64 %loop.next655, ptr %loop.idx.40, align 8
  br label %loop.header.40

loop.exit.40:                                     ; preds = %loop.exit.nat.40
  %var.load656 = load ptr, ptr %var.out, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load656, i32 0, i32 0
  %b.len657 = load i64, ptr %b.len, align 8
  %cmptmp658 = icmp eq i64 %b.len657, 0
  br i1 %cmptmp658, label %choice.then659, label %choice.else660

choice.then499:                                   ; preds = %loop.body.40
  %b.load501 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len502 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load501, i32 0, i32 0
  %b.rn.cur.len503 = load i64, ptr %b.rn.cur.len502, align 8
  %b.rn.new.len504 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len503, i64 1)
  %sum505 = extractvalue { i64, i1 } %b.rn.new.len504, 0
  %ovf506 = extractvalue { i64, i1 } %b.rn.new.len504, 1
  br i1 %ovf506, label %str_overflow_abort508, label %b.rn.new.len507

choice.exit500:                                   ; preds = %br.done.41, %loop.body.40
  %b.load545 = load ptr, ptr %var.out, align 8
  %var.load546 = load ptr, ptr %var.segs, align 8
  %a.load547 = load ptr, ptr %var.segs, align 8
  %a.null548 = icmp eq ptr %a.load547, null
  br i1 %a.null548, label %a.create549, label %a.after550

b.rn.new.len507:                                  ; preds = %str_overflow_abort508, %choice.then499
  %b.cap509 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load501, i32 0, i32 2
  %b.cap510 = load i64, ptr %b.cap509, align 8
  %b.need.grow511 = icmp slt i64 %b.cap510, %sum505
  br i1 %b.need.grow511, label %b.grow2512, label %b.nogrow2513

str_overflow_abort508:                            ; preds = %choice.then499
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len507

b.grow2512:                                       ; preds = %b.rn.new.len507
  %b.cap2515 = mul i64 %b.cap510, 2
  %b.cap.small516 = icmp slt i64 %b.cap2515, 16
  %b.cap.grow517 = select i1 %b.cap.small516, i64 16, i64 %b.cap2515
  %b.cap.need518 = icmp slt i64 %b.cap.grow517, %sum505
  %b.new.cap519 = select i1 %b.cap.need518, i64 %sum505, i64 %b.cap.grow517
  %b.cur.len2520 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load501, i32 0, i32 0
  %b.cur.len2521 = load i64, ptr %b.cur.len2520, align 8
  %b.cur.data2522 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load501, i32 0, i32 1
  %b.cur.data2523 = load ptr, ptr %b.cur.data2522, align 8
  %b.new.buf.len2524 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap519, i64 1)
  %sum525 = extractvalue { i64, i1 } %b.new.buf.len2524, 0
  %ovf526 = extractvalue { i64, i1 } %b.new.buf.len2524, 1
  br i1 %ovf526, label %str_overflow_abort528, label %b.new.buf.len2527

b.nogrow2513:                                     ; preds = %b.rn.new.len507
  br label %b.grow_done514

b.grow_done514:                                   ; preds = %b.nogrow2513, %b.new.buf.len2527
  %b.rn.data534 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load501, i32 0, i32 1
  %b.rn.data535 = load ptr, ptr %b.rn.data534, align 8
  %b.rn.dst536 = getelementptr i8, ptr %b.rn.data535, i64 %b.rn.cur.len503
  br i1 true, label %br.b1.41, label %br.c2.41

b.new.buf.len2527:                                ; preds = %str_overflow_abort528, %b.grow2512
  %arena.cur529 = call ptr @dva_arena_current()
  %b.new.buf2530 = call ptr @dva_arena_alloc(ptr %arena.cur529, i64 %sum525)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2530, ptr align 1 %b.cur.data2523, i64 %b.cur.len2521, i1 false)
  %b.grow2.nul531 = getelementptr i8, ptr %b.new.buf2530, i64 %b.cur.len2521
  store i8 0, ptr %b.grow2.nul531, align 1
  %b.new.data2.gep532 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load501, i32 0, i32 1
  store ptr %b.new.buf2530, ptr %b.new.data2.gep532, align 8
  %b.new.cap2.gep533 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load501, i32 0, i32 2
  store i64 %b.new.cap519, ptr %b.new.cap2.gep533, align 8
  br label %b.grow_done514

str_overflow_abort528:                            ; preds = %b.grow2512
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2527

br.b1.41:                                         ; preds = %b.grow_done514
  store i8 47, ptr %b.rn.dst536, align 1
  br label %br.done.41

br.c2.41:                                         ; preds = %b.grow_done514
  br i1 true, label %br.b2.41, label %br.c3.41

br.b2.41:                                         ; preds = %br.c2.41
  store i8 -64, ptr %b.rn.dst536, align 1
  %br.dst1537 = getelementptr i8, ptr %b.rn.dst536, i64 1
  store i8 -81, ptr %br.dst1537, align 1
  br label %br.done.41

br.c3.41:                                         ; preds = %br.c2.41
  br i1 true, label %br.b3.41, label %br.b4.41

br.b3.41:                                         ; preds = %br.c3.41
  store i8 -32, ptr %b.rn.dst536, align 1
  %br.dst1.3538 = getelementptr i8, ptr %b.rn.dst536, i64 1
  store i8 -128, ptr %br.dst1.3538, align 1
  %br.dst2.3539 = getelementptr i8, ptr %b.rn.dst536, i64 2
  store i8 -81, ptr %br.dst2.3539, align 1
  br label %br.done.41

br.b4.41:                                         ; preds = %br.c3.41
  store i8 -16, ptr %b.rn.dst536, align 1
  %br.dst1.4540 = getelementptr i8, ptr %b.rn.dst536, i64 1
  store i8 -128, ptr %br.dst1.4540, align 1
  %br.dst2.4541 = getelementptr i8, ptr %b.rn.dst536, i64 2
  store i8 -128, ptr %br.dst2.4541, align 1
  %br.dst3.4542 = getelementptr i8, ptr %b.rn.dst536, i64 3
  store i8 -81, ptr %br.dst3.4542, align 1
  br label %br.done.41

br.done.41:                                       ; preds = %br.b4.41, %br.b3.41, %br.b2.41, %br.b1.41
  %br.nul543 = getelementptr i8, ptr %b.rn.data535, i64 %sum505
  store i8 0, ptr %br.nul543, align 1
  %b.len.gep544 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load501, i32 0, i32 0
  store i64 %sum505, ptr %b.len.gep544, align 8
  br label %choice.exit500

a.create549:                                      ; preds = %choice.exit500
  %arena.cur551 = call ptr @dva_arena_current()
  %a.create552 = call ptr @dva_arena_alloc(ptr %arena.cur551, i64 24)
  %arena.cur553 = call ptr @dva_arena_current()
  %a.buf554 = call ptr @dva_arena_alloc(ptr %arena.cur553, i64 128)
  %a.len.gep555 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create552, i32 0, i32 0
  store i64 0, ptr %a.len.gep555, align 8
  %a.data.gep556 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create552, i32 0, i32 1
  store ptr %a.buf554, ptr %a.data.gep556, align 8
  %a.cap.gep557 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create552, i32 0, i32 2
  store i64 16, ptr %a.cap.gep557, align 8
  store ptr %a.create552, ptr %var.segs, align 8
  br label %a.after550

a.after550:                                       ; preds = %a.create549, %choice.exit500
  %a.load2558 = load ptr, ptr %var.segs, align 8
  %var.load559 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull560 = icmp ne ptr %a.load2558, null
  br i1 %a.rd.nonnull560, label %a.rd.check561, label %a.rd.err.null563

a.rd.check561:                                    ; preds = %a.after550
  %a.rd.len566 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2558, i32 0, i32 0
  %a.rd.len567 = load i64, ptr %a.rd.len566, align 8
  %a.rd.ge0568 = icmp sge i64 %var.load559, 0
  %a.rd.lt569 = icmp slt i64 %var.load559, %a.rd.len567
  %a.rd.bounds570 = and i1 %a.rd.ge0568, %a.rd.lt569
  br i1 %a.rd.bounds570, label %a.rd.ok562, label %a.rd.err.oob564

a.rd.ok562:                                       ; preds = %a.rd.check561
  %a.rd.data571 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2558, i32 0, i32 1
  %a.rd.data572 = load ptr, ptr %a.rd.data571, align 8
  %a.rd.elem.gep573 = getelementptr i64, ptr %a.rd.data572, i64 %var.load559
  %a.rd.elem574 = load i64, ptr %a.rd.elem.gep573, align 8
  br label %a.rd.done565

a.rd.err.null563:                                 ; preds = %a.after550
  %arena.cur575 = call ptr @dva_arena_current()
  %err.alloc576 = call ptr @dva_arena_alloc(ptr %arena.cur575, i64 56)
  %err.code.gep577 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc576, i32 0, i32 0
  store i64 4011, ptr %err.code.gep577, align 8
  %err.msg.gep578 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc576, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep578, align 8
  %err.file.gep579 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc576, i32 0, i32 2
  store ptr @str.7.struct, ptr %err.file.gep579, align 8
  %err.line.gep580 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc576, i32 0, i32 3
  store i64 290, ptr %err.line.gep580, align 8
  %err.col.gep581 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc576, i32 0, i32 4
  store i64 25, ptr %err.col.gep581, align 8
  %err.ctx.gep582 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc576, i32 0, i32 5
  %err.ctx0.gep583 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep582, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep583, align 8
  %err.ctx1.gep584 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep582, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep584, align 8
  %err.p2i585 = ptrtoint ptr %err.alloc576 to i64
  br label %a.rd.done565

a.rd.err.oob564:                                  ; preds = %a.rd.check561
  %arena.cur586 = call ptr @dva_arena_current()
  %err.alloc587 = call ptr @dva_arena_alloc(ptr %arena.cur586, i64 56)
  %err.code.gep588 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc587, i32 0, i32 0
  store i64 4011, ptr %err.code.gep588, align 8
  %err.msg.gep589 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc587, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep589, align 8
  %err.file.gep590 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc587, i32 0, i32 2
  store ptr @str.7.struct, ptr %err.file.gep590, align 8
  %err.line.gep591 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc587, i32 0, i32 3
  store i64 290, ptr %err.line.gep591, align 8
  %err.col.gep592 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc587, i32 0, i32 4
  store i64 25, ptr %err.col.gep592, align 8
  %err.ctx.gep593 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc587, i32 0, i32 5
  %err.ctx0.gep594 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep593, i32 0, i32 0
  store i64 %var.load559, ptr %err.ctx0.gep594, align 8
  %err.ctx1.gep595 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep593, i32 0, i32 1
  store i64 %a.rd.len567, ptr %err.ctx1.gep595, align 8
  %err.p2i596 = ptrtoint ptr %err.alloc587 to i64
  br label %a.rd.done565

a.rd.done565:                                     ; preds = %a.rd.err.oob564, %a.rd.err.null563, %a.rd.ok562
  %a.rd.tag597 = phi i1 [ true, %a.rd.ok562 ], [ false, %a.rd.err.null563 ], [ false, %a.rd.err.oob564 ]
  %a.rd.pay598 = phi i64 [ %a.rd.elem574, %a.rd.ok562 ], [ %err.p2i585, %a.rd.err.null563 ], [ %err.p2i596, %a.rd.err.oob564 ]
  %ram.tag599 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag597, 0
  %ram.pay600 = insertvalue { i1, i64 } %ram.tag599, i64 %a.rd.pay598, 1
  %ram.tag601 = extractvalue { i1, i64 } %ram.pay600, 0
  br i1 %ram.tag601, label %choice.then602, label %choice.else603

choice.then602:                                   ; preds = %a.rd.done565
  %ram.pay605 = extractvalue { i1, i64 } %ram.pay600, 1
  %pay.ptr606 = inttoptr i64 %ram.pay605 to ptr
  store ptr %pay.ptr606, ptr %var._607, align 8
  br label %choice.exit604

choice.else603:                                   ; preds = %a.rd.done565
  %ram.pay608 = extractvalue { i1, i64 } %ram.pay600, 1
  %pay.ptr609 = inttoptr i64 %ram.pay608 to ptr
  store ptr %pay.ptr609, ptr %var._610, align 8
  br label %choice.exit604

choice.exit604:                                   ; preds = %choice.else603, %choice.then602
  %choice.res611 = phi ptr [ %pay.ptr606, %choice.then602 ], [ @str.4.struct, %choice.else603 ]
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %choice.res611, i32 0, i32 0
  %app.str.len612 = load i64, ptr %app.str.len, align 8
  %app.str.len613 = and i64 %app.str.len612, 281474976710655
  %str.tag614 = lshr i64 %app.str.len612, 48
  %str.immortal615 = icmp eq i64 %str.tag614, 0
  br i1 %str.immortal615, label %str_ok617, label %str_gen_check616

str_gen_check616:                                 ; preds = %choice.exit604
  %arena.cur619 = call ptr @dva_arena_current()
  %tag.valid620 = call i1 @dva_arena_validate_tag(ptr %arena.cur619, i64 %str.tag614)
  br i1 %tag.valid620, label %str_ok617, label %str_stale618

str_ok617:                                        ; preds = %str_stale618, %str_gen_check616, %choice.exit604
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load545, i32 0, i32 0
  %b.app.cur.len621 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len621, i64 %app.str.len613)
  %sum622 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf623 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf623, label %str_overflow_abort625, label %b.app.new.len624

str_stale618:                                     ; preds = %str_gen_check616
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok617

b.app.new.len624:                                 ; preds = %str_overflow_abort625, %str_ok617
  %b.cap626 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load545, i32 0, i32 2
  %b.cap627 = load i64, ptr %b.cap626, align 8
  %b.need.grow628 = icmp slt i64 %b.cap627, %sum622
  br i1 %b.need.grow628, label %b.grow2629, label %b.nogrow2630

str_overflow_abort625:                            ; preds = %str_ok617
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len624

b.grow2629:                                       ; preds = %b.app.new.len624
  %b.cap2632 = mul i64 %b.cap627, 2
  %b.cap.small633 = icmp slt i64 %b.cap2632, 16
  %b.cap.grow634 = select i1 %b.cap.small633, i64 16, i64 %b.cap2632
  %b.cap.need635 = icmp slt i64 %b.cap.grow634, %sum622
  %b.new.cap636 = select i1 %b.cap.need635, i64 %sum622, i64 %b.cap.grow634
  %b.cur.len2637 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load545, i32 0, i32 0
  %b.cur.len2638 = load i64, ptr %b.cur.len2637, align 8
  %b.cur.data2639 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load545, i32 0, i32 1
  %b.cur.data2640 = load ptr, ptr %b.cur.data2639, align 8
  %b.new.buf.len2641 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap636, i64 1)
  %sum642 = extractvalue { i64, i1 } %b.new.buf.len2641, 0
  %ovf643 = extractvalue { i64, i1 } %b.new.buf.len2641, 1
  br i1 %ovf643, label %str_overflow_abort645, label %b.new.buf.len2644

b.nogrow2630:                                     ; preds = %b.app.new.len624
  br label %b.grow_done631

b.grow_done631:                                   ; preds = %b.nogrow2630, %b.new.buf.len2644
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %choice.res611, i32 0, i32 1
  %app.str.data651 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load545, i32 0, i32 1
  %b.app.data652 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data652, i64 %b.app.cur.len621
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data651, i64 %app.str.len613, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data652, i64 %sum622
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep653 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load545, i32 0, i32 0
  store i64 %sum622, ptr %b.len.gep653, align 8
  br label %loop.latch.40

b.new.buf.len2644:                                ; preds = %str_overflow_abort645, %b.grow2629
  %arena.cur646 = call ptr @dva_arena_current()
  %b.new.buf2647 = call ptr @dva_arena_alloc(ptr %arena.cur646, i64 %sum642)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2647, ptr align 1 %b.cur.data2640, i64 %b.cur.len2638, i1 false)
  %b.grow2.nul648 = getelementptr i8, ptr %b.new.buf2647, i64 %b.cur.len2638
  store i8 0, ptr %b.grow2.nul648, align 1
  %b.new.data2.gep649 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load545, i32 0, i32 1
  store ptr %b.new.buf2647, ptr %b.new.data2.gep649, align 8
  %b.new.cap2.gep650 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load545, i32 0, i32 2
  store i64 %b.new.cap636, ptr %b.new.cap2.gep650, align 8
  br label %b.grow_done631

str_overflow_abort645:                            ; preds = %b.grow2629
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2644

choice.then659:                                   ; preds = %loop.exit.40
  br label %choice.exit661

choice.else660:                                   ; preds = %loop.exit.40
  %var.load662 = load ptr, ptr %var.out, align 8
  %b.freeze.len663 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load662, i32 0, i32 0
  %b.freeze.len664 = load i64, ptr %b.freeze.len663, align 8
  %b.freeze.data665 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load662, i32 0, i32 1
  %b.freeze.data666 = load ptr, ptr %b.freeze.data665, align 8
  %b.freeze.arena667 = call ptr @dva_arena_current()
  %b.freeze.nc.gep668 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena667, i32 0, i32 1
  %b.freeze.nc669 = load i64, ptr %b.freeze.nc.gep668, align 8
  %b.freeze.has.chunk670 = icmp sgt i64 %b.freeze.nc669, 0
  br i1 %b.freeze.has.chunk670, label %b.freeze.check671, label %b.freeze.done673

choice.exit661:                                   ; preds = %b.freeze.done673, %choice.then659
  %choice.res701 = phi ptr [ @str.3.struct, %choice.then659 ], [ %builder.freeze695, %b.freeze.done673 ]
  ret ptr %choice.res701

b.freeze.check671:                                ; preds = %choice.else660
  %b.freeze.last.idx674 = sub i64 %b.freeze.nc669, 1
  %b.freeze.chunks.gep675 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena667, i32 0, i32 3
  %b.freeze.chunk.slot676 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep675, i64 0, i64 %b.freeze.last.idx674
  %b.freeze.last.chunk677 = load ptr, ptr %b.freeze.chunk.slot676, align 8
  %b.freeze.off.gep678 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena667, i32 0, i32 2
  %b.freeze.off679 = load i64, ptr %b.freeze.off.gep678, align 8
  %b.freeze.bump680 = getelementptr i8, ptr %b.freeze.last.chunk677, i64 %b.freeze.off679
  %b.freeze.cap.gep681 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena667, i32 0, i32 0
  %b.freeze.cap682 = load i64, ptr %b.freeze.cap.gep681, align 8
  %b.freeze.chunk.end683 = getelementptr i8, ptr %b.freeze.last.chunk677, i64 %b.freeze.cap682
  %b.freeze.ge.chunk684 = icmp uge ptr %b.freeze.data666, %b.freeze.last.chunk677
  %b.freeze.lt.end685 = icmp ult ptr %b.freeze.data666, %b.freeze.chunk.end683
  %b.freeze.in.chunk686 = and i1 %b.freeze.ge.chunk684, %b.freeze.lt.end685
  %b.freeze.ge.bump687 = icmp uge ptr %b.freeze.data666, %b.freeze.bump680
  %b.freeze.reaped688 = and i1 %b.freeze.in.chunk686, %b.freeze.ge.bump687
  br i1 %b.freeze.reaped688, label %b.freeze.copy672, label %b.freeze.done673

b.freeze.copy672:                                 ; preds = %b.freeze.check671
  %b.freeze.alen689 = add i64 %b.freeze.len664, 1
  %arena.cur690 = call ptr @dva_arena_current()
  %b.freeze.fresh691 = call ptr @dva_arena_alloc(ptr %arena.cur690, i64 %b.freeze.alen689)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh691, ptr align 1 %b.freeze.data666, i64 %b.freeze.len664, i1 false)
  %b.freeze.nul692 = getelementptr i8, ptr %b.freeze.fresh691, i64 %b.freeze.len664
  store i8 0, ptr %b.freeze.nul692, align 1
  br label %b.freeze.done673

b.freeze.done673:                                 ; preds = %b.freeze.copy672, %b.freeze.check671, %choice.else660
  %b.freeze.data693 = phi ptr [ %b.freeze.data666, %choice.else660 ], [ %b.freeze.data666, %b.freeze.check671 ], [ %b.freeze.fresh691, %b.freeze.copy672 ]
  %arena.cur694 = call ptr @dva_arena_current()
  %builder.freeze695 = call ptr @dva_arena_alloc(ptr %arena.cur694, i64 16)
  %str.build.len.gep696 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze695, i32 0, i32 0
  store i64 %b.freeze.len664, ptr %str.build.len.gep696, align 8
  %str.build.data.gep697 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze695, i32 0, i32 1
  store ptr %b.freeze.data693, ptr %str.build.data.gep697, align 8
  %b.freeze.rst.len698 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load662, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len698, align 8
  %b.freeze.rst.data699 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load662, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data699, align 8
  %b.freeze.rst.cap700 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load662, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap700, align 8
  br label %choice.exit661
}

define ptr @"path::win_normalize"(ptr %0) #1 {
entry:
  %var._738 = alloca ptr, align 8
  %var._735 = alloca ptr, align 8
  %var._624 = alloca i64, align 8
  %var._i623 = alloca i64, align 8
  %var.idx = alloca i64, align 8
  %loop.step.47 = alloca i64, align 8
  %loop.idx.47 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var._426 = alloca ptr, align 8
  %var._423 = alloca ptr, align 8
  %var._361 = alloca i64, align 8
  %var._i360 = alloca i64, align 8
  %var.m = alloca i64, align 8
  %loop.step.45 = alloca i64, align 8
  %loop.idx.45 = alloca i64, align 8
  %var.kept = alloca ptr, align 8
  %var._313 = alloca ptr, align 8
  %var._310 = alloca ptr, align 8
  %var.n_segs = alloca i64, align 8
  %var.seg = alloca ptr, align 8
  %var.c = alloca i32, align 4
  %var.is_end = alloca i1, align 1
  %var.i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.42 = alloca i64, align 8
  %loop.idx.42 = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.cur = alloca ptr, align 8
  %var.segs = alloca ptr, align 8
  %var.prefix = alloca ptr, align 8
  %var.abs = alloca i1, align 1
  %var.rlen = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
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
  ret ptr @str.3.struct

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load3 = load ptr, ptr %var.p, align 8
  %call.res = call i64 @"path::win_root_len"(ptr %var.load3)
  store i64 %call.res, ptr %var.rlen, align 8
  %var.load4 = load ptr, ptr %var.p, align 8
  %call.res5 = call i1 @"path::win_is_abs"(ptr %var.load4)
  store i1 %call.res5, ptr %var.abs, align 1
  %var.load6 = load i64, ptr %var.rlen, align 8
  %cmptmp7 = icmp eq i64 %var.load6, 3
  br i1 %cmptmp7, label %choice.then8, label %choice.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then8:                                     ; preds = %choice.exit
  %var.load10 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %str.tag13 = lshr i64 %s.read.len11, 48
  %str.immortal14 = icmp eq i64 %str.tag13, 0
  br i1 %str.immortal14, label %str_ok16, label %str_gen_check15

choice.else:                                      ; preds = %choice.exit
  %var.load51 = load i64, ptr %var.rlen, align 8
  %cmptmp52 = icmp eq i64 %var.load51, 2
  br i1 %cmptmp52, label %choice.then53, label %choice.else54

choice.exit9:                                     ; preds = %choice.exit55, %concat.tot.len45
  %choice.res113 = phi ptr [ %concat.str, %concat.tot.len45 ], [ %choice.res112, %choice.exit55 ]
  store ptr %choice.res113, ptr %var.prefix, align 8
  %arena.cur114 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur114, i64 24)
  %arena.cur115 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur115, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.segs, align 8
  %arena.cur116 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum117 = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf118 = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf118, label %str_overflow_abort120, label %b.buf.len119

str_gen_check15:                                  ; preds = %choice.then8
  %arena.cur18 = call ptr @dva_arena_current()
  %tag.valid19 = call i1 @dva_arena_validate_tag(ptr %arena.cur18, i64 %str.tag13)
  br i1 %tag.valid19, label %str_ok16, label %str_stale17

str_ok16:                                         ; preds = %str_stale17, %str_gen_check15, %choice.then8
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data20 = load ptr, ptr %s.read.data, align 8
  %rel.start = add i64 %s.read.len12, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len12
  %final.start = select i1 %start.gt.len, i64 %s.read.len12, i64 %c.start.0
  %rel.end = add i64 %s.read.len12, 2
  %norm.end = select i1 false, i64 %rel.end, i64 2
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len12
  %final.end = select i1 %end.gt.len, i64 %s.read.len12, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data20, i64 %final.start
  %arena.cur21 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %concat.lhs22 = load i64, ptr %concat.lhs, align 8
  %concat.lhs23 = and i64 %concat.lhs22, 281474976710655
  %str.tag24 = lshr i64 %concat.lhs22, 48
  %str.immortal25 = icmp eq i64 %str.tag24, 0
  br i1 %str.immortal25, label %str_ok27, label %str_gen_check26

str_stale17:                                      ; preds = %str_gen_check15
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok16

str_gen_check26:                                  ; preds = %str_ok16
  %arena.cur29 = call ptr @dva_arena_current()
  %tag.valid30 = call i1 @dva_arena_validate_tag(ptr %arena.cur29, i64 %str.tag24)
  br i1 %tag.valid30, label %str_ok27, label %str_stale28

str_ok27:                                         ; preds = %str_stale28, %str_gen_check26, %str_ok16
  %concat.lhs31 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %concat.lhs32 = load ptr, ptr %concat.lhs31, align 8
  %concat.rhs = load i64, ptr @str.2.struct, align 8
  %concat.rhs33 = and i64 %concat.rhs, 281474976710655
  %str.tag34 = lshr i64 %concat.rhs, 48
  %str.immortal35 = icmp eq i64 %str.tag34, 0
  br i1 %str.immortal35, label %str_ok37, label %str_gen_check36

str_stale28:                                      ; preds = %str_gen_check26
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok27

str_gen_check36:                                  ; preds = %str_ok27
  %arena.cur39 = call ptr @dva_arena_current()
  %tag.valid40 = call i1 @dva_arena_validate_tag(ptr %arena.cur39, i64 %str.tag34)
  br i1 %tag.valid40, label %str_ok37, label %str_stale38

str_ok37:                                         ; preds = %str_stale38, %str_gen_check36, %str_ok27
  %concat.rhs41 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs23, i64 %concat.rhs33)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len42

str_stale38:                                      ; preds = %str_gen_check36
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok37

concat.sum.len42:                                 ; preds = %str_overflow_abort, %str_ok37
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum43 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf44 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf44, label %str_overflow_abort46, label %concat.tot.len45

str_overflow_abort:                               ; preds = %str_ok37
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len42

concat.tot.len45:                                 ; preds = %str_overflow_abort46, %concat.sum.len42
  %arena.cur47 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 %sum43)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs32, i64 %concat.lhs23, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs23
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs41, i64 %concat.rhs33, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur48 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 16)
  %str.build.len.gep49 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep49, align 8
  %str.build.data.gep50 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep50, align 8
  br label %choice.exit9

str_overflow_abort46:                             ; preds = %concat.sum.len42
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len45

choice.then53:                                    ; preds = %choice.else
  %var.load56 = load ptr, ptr %var.p, align 8
  %s.read.len57 = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 0
  %s.read.len58 = load i64, ptr %s.read.len57, align 8
  %s.read.len59 = and i64 %s.read.len58, 281474976710655
  %str.tag60 = lshr i64 %s.read.len58, 48
  %str.immortal61 = icmp eq i64 %str.tag60, 0
  br i1 %str.immortal61, label %str_ok63, label %str_gen_check62

choice.else54:                                    ; preds = %choice.else
  %var.load106 = load i64, ptr %var.rlen, align 8
  %cmptmp107 = icmp eq i64 %var.load106, 1
  br i1 %cmptmp107, label %choice.then108, label %choice.else109

choice.exit55:                                    ; preds = %choice.exit110, %choice.exit72
  %choice.res112 = phi ptr [ %choice.res, %choice.exit72 ], [ %choice.res111, %choice.exit110 ]
  br label %choice.exit9

str_gen_check62:                                  ; preds = %choice.then53
  %arena.cur65 = call ptr @dva_arena_current()
  %tag.valid66 = call i1 @dva_arena_validate_tag(ptr %arena.cur65, i64 %str.tag60)
  br i1 %tag.valid66, label %str_ok63, label %str_stale64

str_ok63:                                         ; preds = %str_stale64, %str_gen_check62, %choice.then53
  %s.read.data67 = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 1
  %s.read.data68 = load ptr, ptr %s.read.data67, align 8
  br i1 false, label %idx_oob, label %idx_big_check

str_stale64:                                      ; preds = %str_gen_check62
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok63

idx_big_check:                                    ; preds = %str_ok63
  %idx.big = icmp sge i64 0, %s.read.len59
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data68, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res69 = call i1 @"path::is_win_sep"(i64 %s.byte.val)
  br i1 %call.res69, label %choice.then70, label %choice.else71

idx_oob:                                          ; preds = %idx_big_check, %str_ok63
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then70:                                    ; preds = %idx_ok
  br label %choice.exit72

choice.else71:                                    ; preds = %idx_ok
  %var.load73 = load ptr, ptr %var.p, align 8
  %s.read.len74 = getelementptr inbounds { i64, ptr }, ptr %var.load73, i32 0, i32 0
  %s.read.len75 = load i64, ptr %s.read.len74, align 8
  %s.read.len76 = and i64 %s.read.len75, 281474976710655
  %str.tag77 = lshr i64 %s.read.len75, 48
  %str.immortal78 = icmp eq i64 %str.tag77, 0
  br i1 %str.immortal78, label %str_ok80, label %str_gen_check79

choice.exit72:                                    ; preds = %str_ok80, %choice.then70
  %choice.res = phi ptr [ @str.9.struct, %choice.then70 ], [ %str.view103, %str_ok80 ]
  br label %choice.exit55

str_gen_check79:                                  ; preds = %choice.else71
  %arena.cur82 = call ptr @dva_arena_current()
  %tag.valid83 = call i1 @dva_arena_validate_tag(ptr %arena.cur82, i64 %str.tag77)
  br i1 %tag.valid83, label %str_ok80, label %str_stale81

str_ok80:                                         ; preds = %str_stale81, %str_gen_check79, %choice.else71
  %s.read.data84 = getelementptr inbounds { i64, ptr }, ptr %var.load73, i32 0, i32 1
  %s.read.data85 = load ptr, ptr %s.read.data84, align 8
  %rel.start86 = add i64 %s.read.len76, 0
  %norm.start87 = select i1 false, i64 %rel.start86, i64 0
  %start.lt.088 = icmp slt i64 %norm.start87, 0
  %c.start.089 = select i1 %start.lt.088, i64 0, i64 %norm.start87
  %start.gt.len90 = icmp sgt i64 %c.start.089, %s.read.len76
  %final.start91 = select i1 %start.gt.len90, i64 %s.read.len76, i64 %c.start.089
  %rel.end92 = add i64 %s.read.len76, 2
  %norm.end93 = select i1 false, i64 %rel.end92, i64 2
  %end.lt.094 = icmp slt i64 %norm.end93, 0
  %c.end.095 = select i1 %end.lt.094, i64 0, i64 %norm.end93
  %end.gt.len96 = icmp sgt i64 %c.end.095, %s.read.len76
  %final.end97 = select i1 %end.gt.len96, i64 %s.read.len76, i64 %c.end.095
  %view.empty98 = icmp sle i64 %final.end97, %final.start91
  %view.len.sub99 = sub i64 %final.end97, %final.start91
  %view.len100 = select i1 %view.empty98, i64 0, i64 %view.len.sub99
  %view.data101 = getelementptr i8, ptr %s.read.data85, i64 %final.start91
  %arena.cur102 = call ptr @dva_arena_current()
  %str.view103 = call ptr @dva_arena_alloc(ptr %arena.cur102, i64 16)
  %str.build.len.gep104 = getelementptr inbounds { i64, ptr }, ptr %str.view103, i32 0, i32 0
  store i64 %view.len100, ptr %str.build.len.gep104, align 8
  %str.build.data.gep105 = getelementptr inbounds { i64, ptr }, ptr %str.view103, i32 0, i32 1
  store ptr %view.data101, ptr %str.build.data.gep105, align 8
  br label %choice.exit72

str_stale81:                                      ; preds = %str_gen_check79
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok80

choice.then108:                                   ; preds = %choice.else54
  br label %choice.exit110

choice.else109:                                   ; preds = %choice.else54
  br label %choice.exit110

choice.exit110:                                   ; preds = %choice.else109, %choice.then108
  %choice.res111 = phi ptr [ @str.2.struct, %choice.then108 ], [ @str.4.struct, %choice.else109 ]
  br label %choice.exit55

b.buf.len119:                                     ; preds = %str_overflow_abort120, %choice.exit9
  %arena.cur121 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur121, i64 %sum117)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 32, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.cur, align 8
  %var.load122 = load ptr, ptr %var.p, align 8
  %str.len.query123 = getelementptr inbounds { i64, ptr }, ptr %var.load122, i32 0, i32 0
  %str.len.query124 = load i64, ptr %str.len.query123, align 8
  %str.len.query125 = and i64 %str.len.query124, 281474976710655
  %str.tag126 = lshr i64 %str.len.query124, 48
  %str.immortal127 = icmp eq i64 %str.tag126, 0
  br i1 %str.immortal127, label %str_ok129, label %str_gen_check128

str_overflow_abort120:                            ; preds = %choice.exit9
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len119

str_gen_check128:                                 ; preds = %b.buf.len119
  %arena.cur131 = call ptr @dva_arena_current()
  %tag.valid132 = call i1 @dva_arena_validate_tag(ptr %arena.cur131, i64 %str.tag126)
  br i1 %tag.valid132, label %str_ok129, label %str_stale130

str_ok129:                                        ; preds = %str_stale130, %str_gen_check128, %b.buf.len119
  store i64 %str.len.query125, ptr %var.len, align 8
  %var.load133 = load i64, ptr %var.len, align 8
  %var.load134 = load i64, ptr %var.rlen, align 8
  %subtmp = sub i64 %var.load133, %var.load134
  %addtmp = add i64 %subtmp, 1
  store i64 0, ptr %loop.idx.42, align 8
  br label %loop.header.42

str_stale130:                                     ; preds = %str_gen_check128
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok129

loop.header.42:                                   ; preds = %loop.latch.42, %str_ok129
  %counter.load = load i64, ptr %loop.idx.42, align 8
  %loop.cond = icmp slt i64 %counter.load, %addtmp
  br i1 %loop.cond, label %loop.body.42, label %loop.exit.nat.42

loop.body.42:                                     ; preds = %loop.header.42
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.42, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.k, align 8
  %var.load135 = load i64, ptr %var.rlen, align 8
  %var.load136 = load i64, ptr %var.k, align 8
  %addtmp137 = add i64 %var.load135, %var.load136
  store i64 %addtmp137, ptr %var.i, align 8
  %var.load138 = load i64, ptr %var.i, align 8
  %var.load139 = load i64, ptr %var.len, align 8
  %cmptmp140 = icmp eq i64 %var.load138, %var.load139
  store i1 %cmptmp140, ptr %var.is_end, align 1
  %var.load141 = load i1, ptr %var.is_end, align 1
  br i1 %var.load141, label %choice.then142, label %choice.else143

loop.exit.nat.42:                                 ; preds = %loop.header.42
  br label %loop.exit.42

loop.latch.42:                                    ; preds = %choice.exit171
  %step.val534 = load i64, ptr %loop.step.42, align 8
  %loop.next535 = add i64 %counter.load, %step.val534
  store i64 %loop.next535, ptr %loop.idx.42, align 8
  br label %loop.header.42

loop.exit.42:                                     ; preds = %loop.exit.nat.42
  %var.load536 = load ptr, ptr %var.p, align 8
  %str.len.query537 = getelementptr inbounds { i64, ptr }, ptr %var.load536, i32 0, i32 0
  %str.len.query538 = load i64, ptr %str.len.query537, align 8
  %str.len.query539 = and i64 %str.len.query538, 281474976710655
  %str.tag540 = lshr i64 %str.len.query538, 48
  %str.immortal541 = icmp eq i64 %str.tag540, 0
  br i1 %str.immortal541, label %str_ok543, label %str_gen_check542

choice.then142:                                   ; preds = %loop.body.42
  br label %choice.exit144

choice.else143:                                   ; preds = %loop.body.42
  %var.load145 = load ptr, ptr %var.p, align 8
  %s.read.len146 = getelementptr inbounds { i64, ptr }, ptr %var.load145, i32 0, i32 0
  %s.read.len147 = load i64, ptr %s.read.len146, align 8
  %s.read.len148 = and i64 %s.read.len147, 281474976710655
  %str.tag149 = lshr i64 %s.read.len147, 48
  %str.immortal150 = icmp eq i64 %str.tag149, 0
  br i1 %str.immortal150, label %str_ok152, label %str_gen_check151

choice.exit144:                                   ; preds = %idx_ok160, %choice.then142
  %choice.res166 = phi i32 [ 92, %choice.then142 ], [ %coerce.trunc, %idx_ok160 ]
  store i32 %choice.res166, ptr %var.c, align 4
  %var.load167 = load i32, ptr %var.c, align 4
  %coerce.sext = sext i32 %var.load167 to i64
  %call.res168 = call i1 @"path::is_win_sep"(i64 %coerce.sext)
  br i1 %call.res168, label %choice.then169, label %choice.else170

str_gen_check151:                                 ; preds = %choice.else143
  %arena.cur154 = call ptr @dva_arena_current()
  %tag.valid155 = call i1 @dva_arena_validate_tag(ptr %arena.cur154, i64 %str.tag149)
  br i1 %tag.valid155, label %str_ok152, label %str_stale153

str_ok152:                                        ; preds = %str_stale153, %str_gen_check151, %choice.else143
  %s.read.data156 = getelementptr inbounds { i64, ptr }, ptr %var.load145, i32 0, i32 1
  %s.read.data157 = load ptr, ptr %s.read.data156, align 8
  %var.load158 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load158, 0
  br i1 %idx.neg, label %idx_oob161, label %idx_big_check159

str_stale153:                                     ; preds = %str_gen_check151
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok152

idx_big_check159:                                 ; preds = %str_ok152
  %idx.big162 = icmp sge i64 %var.load158, %s.read.len148
  br i1 %idx.big162, label %idx_oob161, label %idx_ok160

idx_ok160:                                        ; preds = %idx_oob161, %idx_big_check159
  %s.byte.gep163 = getelementptr i8, ptr %s.read.data157, i64 %var.load158
  %s.byte164 = load i8, ptr %s.byte.gep163, align 1
  %s.byte.val165 = zext i8 %s.byte164 to i64
  %coerce.trunc = trunc i64 %s.byte.val165 to i32
  br label %choice.exit144

idx_oob161:                                       ; preds = %idx_big_check159, %str_ok152
  %13 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok160

choice.then169:                                   ; preds = %choice.exit144
  %var.load172 = load ptr, ptr %var.cur, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load172, i32 0, i32 0
  %b.freeze.len173 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load172, i32 0, i32 1
  %b.freeze.data174 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.else170:                                   ; preds = %choice.exit144
  %b.load = load ptr, ptr %var.cur, align 8
  %var.load517 = load i32, ptr %var.c, align 4
  %coerce.sext518 = sext i32 %var.load517 to i64
  %br.cmp1 = icmp slt i64 %coerce.sext518, 128
  %br.cmp2 = icmp slt i64 %coerce.sext518, 2048
  %br.cmp3 = icmp slt i64 %coerce.sext518, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len519 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len519, i64 %br.width)
  %sum520 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf521 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf521, label %str_overflow_abort523, label %b.rn.new.len522

choice.exit171:                                   ; preds = %br.done.46, %choice.exit231
  br label %loop.latch.42

b.freeze.check:                                   ; preds = %choice.then169
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data174, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data174, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data174, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len173, 1
  %arena.cur175 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur175, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data174, i64 %b.freeze.len173, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len173
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then169
  %b.freeze.data176 = phi ptr [ %b.freeze.data174, %choice.then169 ], [ %b.freeze.data174, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur177 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur177, i64 16)
  %str.build.len.gep178 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len173, ptr %str.build.len.gep178, align 8
  %str.build.data.gep179 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data176, ptr %str.build.data.gep179, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load172, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load172, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load172, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.seg, align 8
  %var.load180 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load180, i32 0, i32 0
  %eq.lhs.len181 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len182 = and i64 %eq.lhs.len181, 281474976710655
  %str.tag183 = lshr i64 %eq.lhs.len181, 48
  %str.immortal184 = icmp eq i64 %str.tag183, 0
  br i1 %str.immortal184, label %str_ok186, label %str_gen_check185

str_gen_check185:                                 ; preds = %b.freeze.done
  %arena.cur188 = call ptr @dva_arena_current()
  %tag.valid189 = call i1 @dva_arena_validate_tag(ptr %arena.cur188, i64 %str.tag183)
  br i1 %tag.valid189, label %str_ok186, label %str_stale187

str_ok186:                                        ; preds = %str_stale187, %str_gen_check185, %b.freeze.done
  %eq.rhs.len = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len190 = and i64 %eq.rhs.len, 281474976710655
  %str.tag191 = lshr i64 %eq.rhs.len, 48
  %str.immortal192 = icmp eq i64 %str.tag191, 0
  br i1 %str.immortal192, label %str_ok194, label %str_gen_check193

str_stale187:                                     ; preds = %str_gen_check185
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok186

str_gen_check193:                                 ; preds = %str_ok186
  %arena.cur196 = call ptr @dva_arena_current()
  %tag.valid197 = call i1 @dva_arena_validate_tag(ptr %arena.cur196, i64 %str.tag191)
  br i1 %tag.valid197, label %str_ok194, label %str_stale195

str_ok194:                                        ; preds = %str_stale195, %str_gen_check193, %str_ok186
  %eq.len = icmp eq i64 %eq.lhs.len182, %eq.rhs.len190
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale195:                                     ; preds = %str_gen_check193
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok194

str.eq.then:                                      ; preds = %str_ok194
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load180, i32 0, i32 1
  %eq.lhs.data198 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data198, ptr %eq.rhs.data, i64 %eq.lhs.len182)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok194
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.43.then, label %and.43.else

and.43.then:                                      ; preds = %str.eq.merge
  %var.load199 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len200 = getelementptr inbounds { i64, ptr }, ptr %var.load199, i32 0, i32 0
  %eq.lhs.len201 = load i64, ptr %eq.lhs.len200, align 8
  %eq.lhs.len202 = and i64 %eq.lhs.len201, 281474976710655
  %str.tag203 = lshr i64 %eq.lhs.len201, 48
  %str.immortal204 = icmp eq i64 %str.tag203, 0
  br i1 %str.immortal204, label %str_ok206, label %str_gen_check205

and.43.else:                                      ; preds = %str.eq.merge
  br label %and.43.exit

and.43.exit:                                      ; preds = %and.43.else, %str.eq.merge222
  %and.43.phi = phi i1 [ %str.neq229, %str.eq.merge222 ], [ %str.neq, %and.43.else ]
  br i1 %and.43.phi, label %choice.then230, label %choice.exit231

str_gen_check205:                                 ; preds = %and.43.then
  %arena.cur208 = call ptr @dva_arena_current()
  %tag.valid209 = call i1 @dva_arena_validate_tag(ptr %arena.cur208, i64 %str.tag203)
  br i1 %tag.valid209, label %str_ok206, label %str_stale207

str_ok206:                                        ; preds = %str_stale207, %str_gen_check205, %and.43.then
  %eq.rhs.len210 = load i64, ptr @str.3.struct, align 8
  %eq.rhs.len211 = and i64 %eq.rhs.len210, 281474976710655
  %str.tag212 = lshr i64 %eq.rhs.len210, 48
  %str.immortal213 = icmp eq i64 %str.tag212, 0
  br i1 %str.immortal213, label %str_ok215, label %str_gen_check214

str_stale207:                                     ; preds = %str_gen_check205
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok206

str_gen_check214:                                 ; preds = %str_ok206
  %arena.cur217 = call ptr @dva_arena_current()
  %tag.valid218 = call i1 @dva_arena_validate_tag(ptr %arena.cur217, i64 %str.tag212)
  br i1 %tag.valid218, label %str_ok215, label %str_stale216

str_ok215:                                        ; preds = %str_stale216, %str_gen_check214, %str_ok206
  %eq.len219 = icmp eq i64 %eq.lhs.len202, %eq.rhs.len211
  br i1 %eq.len219, label %str.eq.then220, label %str.eq.else221

str_stale216:                                     ; preds = %str_gen_check214
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok215

str.eq.then220:                                   ; preds = %str_ok215
  %eq.lhs.data223 = getelementptr inbounds { i64, ptr }, ptr %var.load199, i32 0, i32 1
  %eq.lhs.data224 = load ptr, ptr %eq.lhs.data223, align 8
  %eq.rhs.data225 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp226 = call i32 @memcmp(ptr %eq.lhs.data224, ptr %eq.rhs.data225, i64 %eq.lhs.len202)
  %eq.cmp.zero227 = icmp eq i32 %eq.memcmp226, 0
  br label %str.eq.merge222

str.eq.else221:                                   ; preds = %str_ok215
  br label %str.eq.merge222

str.eq.merge222:                                  ; preds = %str.eq.else221, %str.eq.then220
  %str.eq.result228 = phi i1 [ %eq.cmp.zero227, %str.eq.then220 ], [ false, %str.eq.else221 ]
  %str.neq229 = xor i1 %str.eq.result228, true
  br label %and.43.exit

choice.then230:                                   ; preds = %and.43.exit
  %var.load232 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len233 = getelementptr inbounds { i64, ptr }, ptr %var.load232, i32 0, i32 0
  %eq.lhs.len234 = load i64, ptr %eq.lhs.len233, align 8
  %eq.lhs.len235 = and i64 %eq.lhs.len234, 281474976710655
  %str.tag236 = lshr i64 %eq.lhs.len234, 48
  %str.immortal237 = icmp eq i64 %str.tag236, 0
  br i1 %str.immortal237, label %str_ok239, label %str_gen_check238

choice.exit231:                                   ; preds = %choice.exit264, %and.43.exit
  br label %choice.exit171

str_gen_check238:                                 ; preds = %choice.then230
  %arena.cur241 = call ptr @dva_arena_current()
  %tag.valid242 = call i1 @dva_arena_validate_tag(ptr %arena.cur241, i64 %str.tag236)
  br i1 %tag.valid242, label %str_ok239, label %str_stale240

str_ok239:                                        ; preds = %str_stale240, %str_gen_check238, %choice.then230
  %eq.rhs.len243 = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len244 = and i64 %eq.rhs.len243, 281474976710655
  %str.tag245 = lshr i64 %eq.rhs.len243, 48
  %str.immortal246 = icmp eq i64 %str.tag245, 0
  br i1 %str.immortal246, label %str_ok248, label %str_gen_check247

str_stale240:                                     ; preds = %str_gen_check238
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok239

str_gen_check247:                                 ; preds = %str_ok239
  %arena.cur250 = call ptr @dva_arena_current()
  %tag.valid251 = call i1 @dva_arena_validate_tag(ptr %arena.cur250, i64 %str.tag245)
  br i1 %tag.valid251, label %str_ok248, label %str_stale249

str_ok248:                                        ; preds = %str_stale249, %str_gen_check247, %str_ok239
  %eq.len252 = icmp eq i64 %eq.lhs.len235, %eq.rhs.len244
  br i1 %eq.len252, label %str.eq.then253, label %str.eq.else254

str_stale249:                                     ; preds = %str_gen_check247
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok248

str.eq.then253:                                   ; preds = %str_ok248
  %eq.lhs.data256 = getelementptr inbounds { i64, ptr }, ptr %var.load232, i32 0, i32 1
  %eq.lhs.data257 = load ptr, ptr %eq.lhs.data256, align 8
  %eq.rhs.data258 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp259 = call i32 @memcmp(ptr %eq.lhs.data257, ptr %eq.rhs.data258, i64 %eq.lhs.len235)
  %eq.cmp.zero260 = icmp eq i32 %eq.memcmp259, 0
  br label %str.eq.merge255

str.eq.else254:                                   ; preds = %str_ok248
  br label %str.eq.merge255

str.eq.merge255:                                  ; preds = %str.eq.else254, %str.eq.then253
  %str.eq.result261 = phi i1 [ %eq.cmp.zero260, %str.eq.then253 ], [ false, %str.eq.else254 ]
  br i1 %str.eq.result261, label %choice.then262, label %choice.else263

choice.then262:                                   ; preds = %str.eq.merge255
  %var.load265 = load ptr, ptr %var.segs, align 8
  %a.load = load ptr, ptr %var.segs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else263:                                   ; preds = %str.eq.merge255
  %var.load488 = load ptr, ptr %var.seg, align 8
  %a.load489 = load ptr, ptr %var.segs, align 8
  %a.null490 = icmp eq ptr %a.load489, null
  br i1 %a.null490, label %a.create491, label %a.after492

choice.exit264:                                   ; preds = %a.store503, %choice.exit347
  br label %choice.exit231

a.create:                                         ; preds = %choice.then262
  %arena.cur266 = call ptr @dva_arena_current()
  %a.create267 = call ptr @dva_arena_alloc(ptr %arena.cur266, i64 24)
  %arena.cur268 = call ptr @dva_arena_current()
  %a.buf269 = call ptr @dva_arena_alloc(ptr %arena.cur268, i64 128)
  %a.len.gep270 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create267, i32 0, i32 0
  store i64 0, ptr %a.len.gep270, align 8
  %a.data.gep271 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create267, i32 0, i32 1
  store ptr %a.buf269, ptr %a.data.gep271, align 8
  %a.cap.gep272 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create267, i32 0, i32 2
  store i64 16, ptr %a.cap.gep272, align 8
  store ptr %a.create267, ptr %var.segs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then262
  %a.load2 = load ptr, ptr %var.segs, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query273 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query273, ptr %var.n_segs, align 8
  %var.load274 = load i64, ptr %var.n_segs, align 8
  %cmptmp275 = icmp sgt i64 %var.load274, 0
  br i1 %cmptmp275, label %and.44.then, label %and.44.else

and.44.then:                                      ; preds = %a.after
  %var.load276 = load ptr, ptr %var.segs, align 8
  %a.load277 = load ptr, ptr %var.segs, align 8
  %a.null278 = icmp eq ptr %a.load277, null
  br i1 %a.null278, label %a.create279, label %a.after280

and.44.else:                                      ; preds = %a.after
  br label %and.44.exit

and.44.exit:                                      ; preds = %and.44.else, %str.eq.merge337
  %and.44.phi = phi i1 [ %str.neq344, %str.eq.merge337 ], [ %cmptmp275, %and.44.else ]
  br i1 %and.44.phi, label %choice.then345, label %choice.else346

a.create279:                                      ; preds = %and.44.then
  %arena.cur281 = call ptr @dva_arena_current()
  %a.create282 = call ptr @dva_arena_alloc(ptr %arena.cur281, i64 24)
  %arena.cur283 = call ptr @dva_arena_current()
  %a.buf284 = call ptr @dva_arena_alloc(ptr %arena.cur283, i64 128)
  %a.len.gep285 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create282, i32 0, i32 0
  store i64 0, ptr %a.len.gep285, align 8
  %a.data.gep286 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create282, i32 0, i32 1
  store ptr %a.buf284, ptr %a.data.gep286, align 8
  %a.cap.gep287 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create282, i32 0, i32 2
  store i64 16, ptr %a.cap.gep287, align 8
  store ptr %a.create282, ptr %var.segs, align 8
  br label %a.after280

a.after280:                                       ; preds = %a.create279, %and.44.then
  %a.load2288 = load ptr, ptr %var.segs, align 8
  %var.load289 = load i64, ptr %var.n_segs, align 8
  %subtmp290 = sub i64 %var.load289, 1
  %a.rd.nonnull = icmp ne ptr %a.load2288, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after280
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2288, i32 0, i32 0
  %a.rd.len291 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %subtmp290, 0
  %a.rd.lt = icmp slt i64 %subtmp290, %a.rd.len291
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2288, i32 0, i32 1
  %a.rd.data292 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data292, i64 %subtmp290
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after280
  %arena.cur293 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur293, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.7.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 320, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 57, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur294 = call ptr @dva_arena_current()
  %err.alloc295 = call ptr @dva_arena_alloc(ptr %arena.cur294, i64 56)
  %err.code.gep296 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc295, i32 0, i32 0
  store i64 4011, ptr %err.code.gep296, align 8
  %err.msg.gep297 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc295, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep297, align 8
  %err.file.gep298 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc295, i32 0, i32 2
  store ptr @str.7.struct, ptr %err.file.gep298, align 8
  %err.line.gep299 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc295, i32 0, i32 3
  store i64 320, ptr %err.line.gep299, align 8
  %err.col.gep300 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc295, i32 0, i32 4
  store i64 57, ptr %err.col.gep300, align 8
  %err.ctx.gep301 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc295, i32 0, i32 5
  %err.ctx0.gep302 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep301, i32 0, i32 0
  store i64 %subtmp290, ptr %err.ctx0.gep302, align 8
  %err.ctx1.gep303 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep301, i32 0, i32 1
  store i64 %a.rd.len291, ptr %err.ctx1.gep303, align 8
  %err.p2i304 = ptrtoint ptr %err.alloc295 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i304, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag305 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag305, label %choice.then306, label %choice.else307

choice.then306:                                   ; preds = %a.rd.done
  %ram.pay309 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay309 to ptr
  store ptr %pay.ptr, ptr %var._310, align 8
  br label %choice.exit308

choice.else307:                                   ; preds = %a.rd.done
  %ram.pay311 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr312 = inttoptr i64 %ram.pay311 to ptr
  store ptr %pay.ptr312, ptr %var._313, align 8
  br label %choice.exit308

choice.exit308:                                   ; preds = %choice.else307, %choice.then306
  %choice.res314 = phi ptr [ %pay.ptr, %choice.then306 ], [ @str.4.struct, %choice.else307 ]
  %eq.lhs.len315 = getelementptr inbounds { i64, ptr }, ptr %choice.res314, i32 0, i32 0
  %eq.lhs.len316 = load i64, ptr %eq.lhs.len315, align 8
  %eq.lhs.len317 = and i64 %eq.lhs.len316, 281474976710655
  %str.tag318 = lshr i64 %eq.lhs.len316, 48
  %str.immortal319 = icmp eq i64 %str.tag318, 0
  br i1 %str.immortal319, label %str_ok321, label %str_gen_check320

str_gen_check320:                                 ; preds = %choice.exit308
  %arena.cur323 = call ptr @dva_arena_current()
  %tag.valid324 = call i1 @dva_arena_validate_tag(ptr %arena.cur323, i64 %str.tag318)
  br i1 %tag.valid324, label %str_ok321, label %str_stale322

str_ok321:                                        ; preds = %str_stale322, %str_gen_check320, %choice.exit308
  %eq.rhs.len325 = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len326 = and i64 %eq.rhs.len325, 281474976710655
  %str.tag327 = lshr i64 %eq.rhs.len325, 48
  %str.immortal328 = icmp eq i64 %str.tag327, 0
  br i1 %str.immortal328, label %str_ok330, label %str_gen_check329

str_stale322:                                     ; preds = %str_gen_check320
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok321

str_gen_check329:                                 ; preds = %str_ok321
  %arena.cur332 = call ptr @dva_arena_current()
  %tag.valid333 = call i1 @dva_arena_validate_tag(ptr %arena.cur332, i64 %str.tag327)
  br i1 %tag.valid333, label %str_ok330, label %str_stale331

str_ok330:                                        ; preds = %str_stale331, %str_gen_check329, %str_ok321
  %eq.len334 = icmp eq i64 %eq.lhs.len317, %eq.rhs.len326
  br i1 %eq.len334, label %str.eq.then335, label %str.eq.else336

str_stale331:                                     ; preds = %str_gen_check329
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok330

str.eq.then335:                                   ; preds = %str_ok330
  %eq.lhs.data338 = getelementptr inbounds { i64, ptr }, ptr %choice.res314, i32 0, i32 1
  %eq.lhs.data339 = load ptr, ptr %eq.lhs.data338, align 8
  %eq.rhs.data340 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp341 = call i32 @memcmp(ptr %eq.lhs.data339, ptr %eq.rhs.data340, i64 %eq.lhs.len317)
  %eq.cmp.zero342 = icmp eq i32 %eq.memcmp341, 0
  br label %str.eq.merge337

str.eq.else336:                                   ; preds = %str_ok330
  br label %str.eq.merge337

str.eq.merge337:                                  ; preds = %str.eq.else336, %str.eq.then335
  %str.eq.result343 = phi i1 [ %eq.cmp.zero342, %str.eq.then335 ], [ false, %str.eq.else336 ]
  %str.neq344 = xor i1 %str.eq.result343, true
  br label %and.44.exit

choice.then345:                                   ; preds = %and.44.exit
  %arena.cur348 = call ptr @dva_arena_current()
  %a.new349 = call ptr @dva_arena_alloc(ptr %arena.cur348, i64 24)
  %arena.cur350 = call ptr @dva_arena_current()
  %a.buf351 = call ptr @dva_arena_alloc(ptr %arena.cur350, i64 128)
  %a.len.gep352 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new349, i32 0, i32 0
  store i64 0, ptr %a.len.gep352, align 8
  %a.data.gep353 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new349, i32 0, i32 1
  store ptr %a.buf351, ptr %a.data.gep353, align 8
  %a.cap.gep354 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new349, i32 0, i32 2
  store i64 16, ptr %a.cap.gep354, align 8
  store ptr %a.new349, ptr %var.kept, align 8
  %var.load355 = load i64, ptr %var.n_segs, align 8
  %subtmp356 = sub i64 %var.load355, 1
  store i64 0, ptr %loop.idx.45, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.45

choice.else346:                                   ; preds = %and.44.exit
  %var.load458 = load i1, ptr %var.abs, align 1
  %nottmp = xor i1 %var.load458, true
  br i1 %nottmp, label %choice.then459, label %choice.exit460

choice.exit347:                                   ; preds = %choice.exit460, %a.after449
  br label %choice.exit264

loop.header.45:                                   ; preds = %loop.latch.45, %choice.then345
  %counter.load357 = load i64, ptr %loop.idx.45, align 8
  %loop.cond358 = icmp slt i64 %counter.load357, %subtmp356
  br i1 %loop.cond358, label %loop.body.45, label %loop.exit.nat.45

loop.body.45:                                     ; preds = %loop.header.45
  %loop.rel.i359 = sub i64 %counter.load357, 0
  store i64 1, ptr %loop.step.45, align 8
  store i64 %loop.rel.i359, ptr %var._i360, align 8
  store i64 %counter.load357, ptr %var._361, align 8
  store i64 %counter.load357, ptr %var.m, align 8
  %var.load362 = load ptr, ptr %var.segs, align 8
  %a.load363 = load ptr, ptr %var.segs, align 8
  %a.null364 = icmp eq ptr %a.load363, null
  br i1 %a.null364, label %a.create365, label %a.after366

loop.exit.nat.45:                                 ; preds = %loop.header.45
  br label %loop.exit.45

loop.latch.45:                                    ; preds = %a.store
  %step.val = load i64, ptr %loop.step.45, align 8
  %loop.next = add i64 %counter.load357, %step.val
  store i64 %loop.next, ptr %loop.idx.45, align 8
  br label %loop.header.45

loop.exit.45:                                     ; preds = %loop.exit.nat.45
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load445 = load ptr, ptr %var.kept, align 8
  %a.load446 = load ptr, ptr %var.kept, align 8
  %a.null447 = icmp eq ptr %a.load446, null
  br i1 %a.null447, label %a.create448, label %a.after449

a.create365:                                      ; preds = %loop.body.45
  %arena.cur367 = call ptr @dva_arena_current()
  %a.create368 = call ptr @dva_arena_alloc(ptr %arena.cur367, i64 24)
  %arena.cur369 = call ptr @dva_arena_current()
  %a.buf370 = call ptr @dva_arena_alloc(ptr %arena.cur369, i64 128)
  %a.len.gep371 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create368, i32 0, i32 0
  store i64 0, ptr %a.len.gep371, align 8
  %a.data.gep372 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create368, i32 0, i32 1
  store ptr %a.buf370, ptr %a.data.gep372, align 8
  %a.cap.gep373 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create368, i32 0, i32 2
  store i64 16, ptr %a.cap.gep373, align 8
  store ptr %a.create368, ptr %var.segs, align 8
  br label %a.after366

a.after366:                                       ; preds = %a.create365, %loop.body.45
  %a.load2374 = load ptr, ptr %var.segs, align 8
  %var.load375 = load i64, ptr %var.m, align 8
  %a.rd.nonnull376 = icmp ne ptr %a.load2374, null
  br i1 %a.rd.nonnull376, label %a.rd.check377, label %a.rd.err.null379

a.rd.check377:                                    ; preds = %a.after366
  %a.rd.len382 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2374, i32 0, i32 0
  %a.rd.len383 = load i64, ptr %a.rd.len382, align 8
  %a.rd.ge0384 = icmp sge i64 %var.load375, 0
  %a.rd.lt385 = icmp slt i64 %var.load375, %a.rd.len383
  %a.rd.bounds386 = and i1 %a.rd.ge0384, %a.rd.lt385
  br i1 %a.rd.bounds386, label %a.rd.ok378, label %a.rd.err.oob380

a.rd.ok378:                                       ; preds = %a.rd.check377
  %a.rd.data387 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2374, i32 0, i32 1
  %a.rd.data388 = load ptr, ptr %a.rd.data387, align 8
  %a.rd.elem.gep389 = getelementptr i64, ptr %a.rd.data388, i64 %var.load375
  %a.rd.elem390 = load i64, ptr %a.rd.elem.gep389, align 8
  br label %a.rd.done381

a.rd.err.null379:                                 ; preds = %a.after366
  %arena.cur391 = call ptr @dva_arena_current()
  %err.alloc392 = call ptr @dva_arena_alloc(ptr %arena.cur391, i64 56)
  %err.code.gep393 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc392, i32 0, i32 0
  store i64 4011, ptr %err.code.gep393, align 8
  %err.msg.gep394 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc392, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep394, align 8
  %err.file.gep395 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc392, i32 0, i32 2
  store ptr @str.7.struct, ptr %err.file.gep395, align 8
  %err.line.gep396 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc392, i32 0, i32 3
  store i64 323, ptr %err.line.gep396, align 8
  %err.col.gep397 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc392, i32 0, i32 4
  store i64 68, ptr %err.col.gep397, align 8
  %err.ctx.gep398 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc392, i32 0, i32 5
  %err.ctx0.gep399 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep398, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep399, align 8
  %err.ctx1.gep400 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep398, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep400, align 8
  %err.p2i401 = ptrtoint ptr %err.alloc392 to i64
  br label %a.rd.done381

a.rd.err.oob380:                                  ; preds = %a.rd.check377
  %arena.cur402 = call ptr @dva_arena_current()
  %err.alloc403 = call ptr @dva_arena_alloc(ptr %arena.cur402, i64 56)
  %err.code.gep404 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc403, i32 0, i32 0
  store i64 4011, ptr %err.code.gep404, align 8
  %err.msg.gep405 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc403, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep405, align 8
  %err.file.gep406 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc403, i32 0, i32 2
  store ptr @str.7.struct, ptr %err.file.gep406, align 8
  %err.line.gep407 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc403, i32 0, i32 3
  store i64 323, ptr %err.line.gep407, align 8
  %err.col.gep408 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc403, i32 0, i32 4
  store i64 68, ptr %err.col.gep408, align 8
  %err.ctx.gep409 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc403, i32 0, i32 5
  %err.ctx0.gep410 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep409, i32 0, i32 0
  store i64 %var.load375, ptr %err.ctx0.gep410, align 8
  %err.ctx1.gep411 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep409, i32 0, i32 1
  store i64 %a.rd.len383, ptr %err.ctx1.gep411, align 8
  %err.p2i412 = ptrtoint ptr %err.alloc403 to i64
  br label %a.rd.done381

a.rd.done381:                                     ; preds = %a.rd.err.oob380, %a.rd.err.null379, %a.rd.ok378
  %a.rd.tag413 = phi i1 [ true, %a.rd.ok378 ], [ false, %a.rd.err.null379 ], [ false, %a.rd.err.oob380 ]
  %a.rd.pay414 = phi i64 [ %a.rd.elem390, %a.rd.ok378 ], [ %err.p2i401, %a.rd.err.null379 ], [ %err.p2i412, %a.rd.err.oob380 ]
  %ram.tag415 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag413, 0
  %ram.pay416 = insertvalue { i1, i64 } %ram.tag415, i64 %a.rd.pay414, 1
  %ram.tag417 = extractvalue { i1, i64 } %ram.pay416, 0
  br i1 %ram.tag417, label %choice.then418, label %choice.else419

choice.then418:                                   ; preds = %a.rd.done381
  %ram.pay421 = extractvalue { i1, i64 } %ram.pay416, 1
  %pay.ptr422 = inttoptr i64 %ram.pay421 to ptr
  store ptr %pay.ptr422, ptr %var._423, align 8
  br label %choice.exit420

choice.else419:                                   ; preds = %a.rd.done381
  %ram.pay424 = extractvalue { i1, i64 } %ram.pay416, 1
  %pay.ptr425 = inttoptr i64 %ram.pay424 to ptr
  store ptr %pay.ptr425, ptr %var._426, align 8
  br label %choice.exit420

choice.exit420:                                   ; preds = %choice.else419, %choice.then418
  %choice.res427 = phi ptr [ %pay.ptr422, %choice.then418 ], [ @str.4.struct, %choice.else419 ]
  %a.load428 = load ptr, ptr %var.kept, align 8
  %a.null429 = icmp eq ptr %a.load428, null
  br i1 %a.null429, label %a.create430, label %a.after431

a.create430:                                      ; preds = %choice.exit420
  %arena.cur432 = call ptr @dva_arena_current()
  %a.create433 = call ptr @dva_arena_alloc(ptr %arena.cur432, i64 24)
  %arena.cur434 = call ptr @dva_arena_current()
  %a.buf435 = call ptr @dva_arena_alloc(ptr %arena.cur434, i64 128)
  %a.len.gep436 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create433, i32 0, i32 0
  store i64 0, ptr %a.len.gep436, align 8
  %a.data.gep437 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create433, i32 0, i32 1
  store ptr %a.buf435, ptr %a.data.gep437, align 8
  %a.cap.gep438 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create433, i32 0, i32 2
  store i64 16, ptr %a.cap.gep438, align 8
  store ptr %a.create433, ptr %var.kept, align 8
  br label %a.after431

a.after431:                                       ; preds = %a.create430, %choice.exit420
  %a.load2439 = load ptr, ptr %var.kept, align 8
  br label %a.check

a.check:                                          ; preds = %a.after431
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2439, i32 0, i32 0
  %a.len440 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2439, i32 0, i32 2
  %a.cap441 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len440, %a.cap441
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2439)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2439, i32 0, i32 1
  %a.cur.data442 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2439, i32 0, i32 0
  %a.cur.len443 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data442, i64 %a.cur.len443
  %slot.p2i = ptrtoint ptr %choice.res427 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len443, 1
  %b.len.gep444 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2439, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep444, align 8
  br label %loop.latch.45

a.create448:                                      ; preds = %loop.exit.45
  %arena.cur450 = call ptr @dva_arena_current()
  %a.create451 = call ptr @dva_arena_alloc(ptr %arena.cur450, i64 24)
  %arena.cur452 = call ptr @dva_arena_current()
  %a.buf453 = call ptr @dva_arena_alloc(ptr %arena.cur452, i64 128)
  %a.len.gep454 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create451, i32 0, i32 0
  store i64 0, ptr %a.len.gep454, align 8
  %a.data.gep455 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create451, i32 0, i32 1
  store ptr %a.buf453, ptr %a.data.gep455, align 8
  %a.cap.gep456 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create451, i32 0, i32 2
  store i64 16, ptr %a.cap.gep456, align 8
  store ptr %a.create451, ptr %var.kept, align 8
  br label %a.after449

a.after449:                                       ; preds = %a.create448, %loop.exit.45
  %a.load2457 = load ptr, ptr %var.kept, align 8
  store ptr %a.load2457, ptr %var.segs, align 8
  br label %choice.exit347

choice.then459:                                   ; preds = %choice.else346
  %a.load461 = load ptr, ptr %var.segs, align 8
  %a.null462 = icmp eq ptr %a.load461, null
  br i1 %a.null462, label %a.create463, label %a.after464

choice.exit460:                                   ; preds = %a.store475, %choice.else346
  br label %choice.exit347

a.create463:                                      ; preds = %choice.then459
  %arena.cur465 = call ptr @dva_arena_current()
  %a.create466 = call ptr @dva_arena_alloc(ptr %arena.cur465, i64 24)
  %arena.cur467 = call ptr @dva_arena_current()
  %a.buf468 = call ptr @dva_arena_alloc(ptr %arena.cur467, i64 128)
  %a.len.gep469 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create466, i32 0, i32 0
  store i64 0, ptr %a.len.gep469, align 8
  %a.data.gep470 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create466, i32 0, i32 1
  store ptr %a.buf468, ptr %a.data.gep470, align 8
  %a.cap.gep471 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create466, i32 0, i32 2
  store i64 16, ptr %a.cap.gep471, align 8
  store ptr %a.create466, ptr %var.segs, align 8
  br label %a.after464

a.after464:                                       ; preds = %a.create463, %choice.then459
  %a.load2472 = load ptr, ptr %var.segs, align 8
  br label %a.check473

a.check473:                                       ; preds = %a.after464
  %a.len476 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2472, i32 0, i32 0
  %a.len477 = load i64, ptr %a.len476, align 8
  %a.cap478 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2472, i32 0, i32 2
  %a.cap479 = load i64, ptr %a.cap478, align 8
  %a.needs.grow480 = icmp eq i64 %a.len477, %a.cap479
  br i1 %a.needs.grow480, label %a.grow474, label %a.store475

a.grow474:                                        ; preds = %a.check473
  call void @dva_array_grow(ptr %a.load2472)
  br label %a.store475

a.store475:                                       ; preds = %a.grow474, %a.check473
  %a.cur.data481 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2472, i32 0, i32 1
  %a.cur.data482 = load ptr, ptr %a.cur.data481, align 8
  %a.cur.len483 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2472, i32 0, i32 0
  %a.cur.len484 = load i64, ptr %a.cur.len483, align 8
  %a.elem.gep485 = getelementptr i64, ptr %a.cur.data482, i64 %a.cur.len484
  store i64 ptrtoint (ptr @str.5.struct to i64), ptr %a.elem.gep485, align 8
  %a.next.len486 = add i64 %a.cur.len484, 1
  %b.len.gep487 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2472, i32 0, i32 0
  store i64 %a.next.len486, ptr %b.len.gep487, align 8
  br label %choice.exit460

a.create491:                                      ; preds = %choice.else263
  %arena.cur493 = call ptr @dva_arena_current()
  %a.create494 = call ptr @dva_arena_alloc(ptr %arena.cur493, i64 24)
  %arena.cur495 = call ptr @dva_arena_current()
  %a.buf496 = call ptr @dva_arena_alloc(ptr %arena.cur495, i64 128)
  %a.len.gep497 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create494, i32 0, i32 0
  store i64 0, ptr %a.len.gep497, align 8
  %a.data.gep498 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create494, i32 0, i32 1
  store ptr %a.buf496, ptr %a.data.gep498, align 8
  %a.cap.gep499 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create494, i32 0, i32 2
  store i64 16, ptr %a.cap.gep499, align 8
  store ptr %a.create494, ptr %var.segs, align 8
  br label %a.after492

a.after492:                                       ; preds = %a.create491, %choice.else263
  %a.load2500 = load ptr, ptr %var.segs, align 8
  br label %a.check501

a.check501:                                       ; preds = %a.after492
  %a.len504 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2500, i32 0, i32 0
  %a.len505 = load i64, ptr %a.len504, align 8
  %a.cap506 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2500, i32 0, i32 2
  %a.cap507 = load i64, ptr %a.cap506, align 8
  %a.needs.grow508 = icmp eq i64 %a.len505, %a.cap507
  br i1 %a.needs.grow508, label %a.grow502, label %a.store503

a.grow502:                                        ; preds = %a.check501
  call void @dva_array_grow(ptr %a.load2500)
  br label %a.store503

a.store503:                                       ; preds = %a.grow502, %a.check501
  %a.cur.data509 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2500, i32 0, i32 1
  %a.cur.data510 = load ptr, ptr %a.cur.data509, align 8
  %a.cur.len511 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2500, i32 0, i32 0
  %a.cur.len512 = load i64, ptr %a.cur.len511, align 8
  %a.elem.gep513 = getelementptr i64, ptr %a.cur.data510, i64 %a.cur.len512
  %slot.p2i514 = ptrtoint ptr %var.load488 to i64
  store i64 %slot.p2i514, ptr %a.elem.gep513, align 8
  %a.next.len515 = add i64 %a.cur.len512, 1
  %b.len.gep516 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2500, i32 0, i32 0
  store i64 %a.next.len515, ptr %b.len.gep516, align 8
  br label %choice.exit264

b.rn.new.len522:                                  ; preds = %str_overflow_abort523, %choice.else170
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap524 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap524, %sum520
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort523:                            ; preds = %choice.else170
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len522

b.grow2:                                          ; preds = %b.rn.new.len522
  %b.cap2 = mul i64 %b.cap524, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum520
  %b.new.cap = select i1 %b.cap.need, i64 %sum520, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len2525 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data2526 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum527 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf528 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf528, label %str_overflow_abort530, label %b.new.buf.len2529

b.nogrow2:                                        ; preds = %b.rn.new.len522
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2529
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data532 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data532, i64 %b.rn.cur.len519
  br i1 %br.cmp1, label %br.b1.46, label %br.c2.46

b.new.buf.len2529:                                ; preds = %str_overflow_abort530, %b.grow2
  %arena.cur531 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur531, i64 %sum527)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2526, i64 %b.cur.len2525, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2525
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort530:                            ; preds = %b.grow2
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2529

br.b1.46:                                         ; preds = %b.grow_done
  %br.b1.0 = trunc i64 %coerce.sext518 to i8
  store i8 %br.b1.0, ptr %b.rn.dst, align 1
  br label %br.done.46

br.c2.46:                                         ; preds = %b.grow_done
  br i1 %br.cmp2, label %br.b2.46, label %br.c3.46

br.b2.46:                                         ; preds = %br.c2.46
  %br.sh6 = lshr i64 %coerce.sext518, 6
  %br.b2.0 = or i64 %br.sh6, 192
  %br.b2.0t = trunc i64 %br.b2.0 to i8
  %br.m6 = and i64 %coerce.sext518, 63
  %br.b2.1 = or i64 %br.m6, 128
  %br.b2.1t = trunc i64 %br.b2.1 to i8
  store i8 %br.b2.0t, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b2.1t, ptr %br.dst1, align 1
  br label %br.done.46

br.c3.46:                                         ; preds = %br.c2.46
  br i1 %br.cmp3, label %br.b3.46, label %br.b4.46

br.b3.46:                                         ; preds = %br.c3.46
  %br.sh12 = lshr i64 %coerce.sext518, 12
  %br.b3.0 = or i64 %br.sh12, 224
  %br.b3.0t = trunc i64 %br.b3.0 to i8
  %br.sh6.3 = lshr i64 %coerce.sext518, 6
  %br.m6.3 = and i64 %br.sh6.3, 63
  %br.b3.1 = or i64 %br.m6.3, 128
  %br.b3.1t = trunc i64 %br.b3.1 to i8
  %br.mend = and i64 %coerce.sext518, 63
  %br.b3.2 = or i64 %br.mend, 128
  %br.b3.2t = trunc i64 %br.b3.2 to i8
  store i8 %br.b3.0t, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b3.1t, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 %br.b3.2t, ptr %br.dst2.3, align 1
  br label %br.done.46

br.b4.46:                                         ; preds = %br.c3.46
  %br.sh18 = lshr i64 %coerce.sext518, 18
  %br.b4.0 = or i64 %br.sh18, 240
  %br.b4.0t = trunc i64 %br.b4.0 to i8
  %br.sh12.4 = lshr i64 %coerce.sext518, 12
  %br.m12.4 = and i64 %br.sh12.4, 63
  %br.b4.1 = or i64 %br.m12.4, 128
  %br.b4.1t = trunc i64 %br.b4.1 to i8
  %br.sh6.4 = lshr i64 %coerce.sext518, 6
  %br.m6.4 = and i64 %br.sh6.4, 63
  %br.b4.2 = or i64 %br.m6.4, 128
  %br.b4.2t = trunc i64 %br.b4.2 to i8
  %br.mend4 = and i64 %coerce.sext518, 63
  %br.b4.3 = or i64 %br.mend4, 128
  %br.b4.3t = trunc i64 %br.b4.3 to i8
  store i8 %br.b4.0t, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b4.1t, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 %br.b4.2t, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 %br.b4.3t, ptr %br.dst3.4, align 1
  br label %br.done.46

br.done.46:                                       ; preds = %br.b4.46, %br.b3.46, %br.b2.46, %br.b1.46
  %br.nul = getelementptr i8, ptr %b.rn.data532, i64 %sum520
  store i8 0, ptr %br.nul, align 1
  %b.len.gep533 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum520, ptr %b.len.gep533, align 8
  br label %choice.exit171

str_gen_check542:                                 ; preds = %loop.exit.42
  %arena.cur545 = call ptr @dva_arena_current()
  %tag.valid546 = call i1 @dva_arena_validate_tag(ptr %arena.cur545, i64 %str.tag540)
  br i1 %tag.valid546, label %str_ok543, label %str_stale544

str_ok543:                                        ; preds = %str_stale544, %str_gen_check542, %loop.exit.42
  %addtmp547 = add i64 %str.len.query539, 2
  %arena.cur548 = call ptr @dva_arena_current()
  %builder.new549 = call ptr @dva_arena_alloc(ptr %arena.cur548, i64 24)
  %cap.neg = icmp slt i64 %addtmp547, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp547
  %b.data.gep550 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new549, i32 0, i32 1
  %b.len.gep551 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new549, i32 0, i32 0
  %b.cap.gep552 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new549, i32 0, i32 2
  %b.buf.len553 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum554 = extractvalue { i64, i1 } %b.buf.len553, 0
  %ovf555 = extractvalue { i64, i1 } %b.buf.len553, 1
  br i1 %ovf555, label %str_overflow_abort557, label %b.buf.len556

str_stale544:                                     ; preds = %str_gen_check542
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok543

b.buf.len556:                                     ; preds = %str_overflow_abort557, %str_ok543
  %arena.cur558 = call ptr @dva_arena_current()
  %b.buf559 = call ptr @dva_arena_alloc(ptr %arena.cur558, i64 %sum554)
  %b.nul0560 = getelementptr i8, ptr %b.buf559, i64 0
  store i8 0, ptr %b.nul0560, align 1
  store i64 0, ptr %b.len.gep551, align 8
  store ptr %b.buf559, ptr %b.data.gep550, align 8
  store i64 %cap.safe, ptr %b.cap.gep552, align 8
  store ptr %builder.new549, ptr %var.out, align 8
  %b.load561 = load ptr, ptr %var.out, align 8
  %var.load562 = load ptr, ptr %var.prefix, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load562, i32 0, i32 0
  %app.str.len563 = load i64, ptr %app.str.len, align 8
  %app.str.len564 = and i64 %app.str.len563, 281474976710655
  %str.tag565 = lshr i64 %app.str.len563, 48
  %str.immortal566 = icmp eq i64 %str.tag565, 0
  br i1 %str.immortal566, label %str_ok568, label %str_gen_check567

str_overflow_abort557:                            ; preds = %str_ok543
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len556

str_gen_check567:                                 ; preds = %b.buf.len556
  %arena.cur570 = call ptr @dva_arena_current()
  %tag.valid571 = call i1 @dva_arena_validate_tag(ptr %arena.cur570, i64 %str.tag565)
  br i1 %tag.valid571, label %str_ok568, label %str_stale569

str_ok568:                                        ; preds = %str_stale569, %str_gen_check567, %b.buf.len556
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load561, i32 0, i32 0
  %b.app.cur.len572 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len572, i64 %app.str.len564)
  %sum573 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf574 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf574, label %str_overflow_abort576, label %b.app.new.len575

str_stale569:                                     ; preds = %str_gen_check567
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok568

b.app.new.len575:                                 ; preds = %str_overflow_abort576, %str_ok568
  %b.cap577 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load561, i32 0, i32 2
  %b.cap578 = load i64, ptr %b.cap577, align 8
  %b.need.grow579 = icmp slt i64 %b.cap578, %sum573
  br i1 %b.need.grow579, label %b.grow2580, label %b.nogrow2581

str_overflow_abort576:                            ; preds = %str_ok568
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len575

b.grow2580:                                       ; preds = %b.app.new.len575
  %b.cap2583 = mul i64 %b.cap578, 2
  %b.cap.small584 = icmp slt i64 %b.cap2583, 16
  %b.cap.grow585 = select i1 %b.cap.small584, i64 16, i64 %b.cap2583
  %b.cap.need586 = icmp slt i64 %b.cap.grow585, %sum573
  %b.new.cap587 = select i1 %b.cap.need586, i64 %sum573, i64 %b.cap.grow585
  %b.cur.len2588 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load561, i32 0, i32 0
  %b.cur.len2589 = load i64, ptr %b.cur.len2588, align 8
  %b.cur.data2590 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load561, i32 0, i32 1
  %b.cur.data2591 = load ptr, ptr %b.cur.data2590, align 8
  %b.new.buf.len2592 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap587, i64 1)
  %sum593 = extractvalue { i64, i1 } %b.new.buf.len2592, 0
  %ovf594 = extractvalue { i64, i1 } %b.new.buf.len2592, 1
  br i1 %ovf594, label %str_overflow_abort596, label %b.new.buf.len2595

b.nogrow2581:                                     ; preds = %b.app.new.len575
  br label %b.grow_done582

b.grow_done582:                                   ; preds = %b.nogrow2581, %b.new.buf.len2595
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load562, i32 0, i32 1
  %app.str.data602 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load561, i32 0, i32 1
  %b.app.data603 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data603, i64 %b.app.cur.len572
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data602, i64 %app.str.len564, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data603, i64 %sum573
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep604 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load561, i32 0, i32 0
  store i64 %sum573, ptr %b.len.gep604, align 8
  %var.load605 = load ptr, ptr %var.segs, align 8
  %a.load606 = load ptr, ptr %var.segs, align 8
  %a.null607 = icmp eq ptr %a.load606, null
  br i1 %a.null607, label %a.create608, label %a.after609

b.new.buf.len2595:                                ; preds = %str_overflow_abort596, %b.grow2580
  %arena.cur597 = call ptr @dva_arena_current()
  %b.new.buf2598 = call ptr @dva_arena_alloc(ptr %arena.cur597, i64 %sum593)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2598, ptr align 1 %b.cur.data2591, i64 %b.cur.len2589, i1 false)
  %b.grow2.nul599 = getelementptr i8, ptr %b.new.buf2598, i64 %b.cur.len2589
  store i8 0, ptr %b.grow2.nul599, align 1
  %b.new.data2.gep600 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load561, i32 0, i32 1
  store ptr %b.new.buf2598, ptr %b.new.data2.gep600, align 8
  %b.new.cap2.gep601 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load561, i32 0, i32 2
  store i64 %b.new.cap587, ptr %b.new.cap2.gep601, align 8
  br label %b.grow_done582

str_overflow_abort596:                            ; preds = %b.grow2580
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2595

a.create608:                                      ; preds = %b.grow_done582
  %arena.cur610 = call ptr @dva_arena_current()
  %a.create611 = call ptr @dva_arena_alloc(ptr %arena.cur610, i64 24)
  %arena.cur612 = call ptr @dva_arena_current()
  %a.buf613 = call ptr @dva_arena_alloc(ptr %arena.cur612, i64 128)
  %a.len.gep614 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create611, i32 0, i32 0
  store i64 0, ptr %a.len.gep614, align 8
  %a.data.gep615 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create611, i32 0, i32 1
  store ptr %a.buf613, ptr %a.data.gep615, align 8
  %a.cap.gep616 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create611, i32 0, i32 2
  store i64 16, ptr %a.cap.gep616, align 8
  store ptr %a.create611, ptr %var.segs, align 8
  br label %a.after609

a.after609:                                       ; preds = %a.create608, %b.grow_done582
  %a.load2617 = load ptr, ptr %var.segs, align 8
  %a.len.query618 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2617, i32 0, i32 0
  %a.len.query619 = load i64, ptr %a.len.query618, align 8
  store i64 0, ptr %loop.idx.47, align 8
  br label %loop.header.47

loop.header.47:                                   ; preds = %loop.latch.47, %a.after609
  %counter.load620 = load i64, ptr %loop.idx.47, align 8
  %loop.cond621 = icmp slt i64 %counter.load620, %a.len.query619
  br i1 %loop.cond621, label %loop.body.47, label %loop.exit.nat.47

loop.body.47:                                     ; preds = %loop.header.47
  %loop.rel.i622 = sub i64 %counter.load620, 0
  store i64 1, ptr %loop.step.47, align 8
  store i64 %loop.rel.i622, ptr %var._i623, align 8
  store i64 %counter.load620, ptr %var._624, align 8
  store i64 %counter.load620, ptr %var.idx, align 8
  %var.load625 = load i64, ptr %var.idx, align 8
  %cmptmp626 = icmp sgt i64 %var.load625, 0
  br i1 %cmptmp626, label %choice.then627, label %choice.exit628

loop.exit.nat.47:                                 ; preds = %loop.header.47
  br label %loop.exit.47

loop.latch.47:                                    ; preds = %b.grow_done762
  %step.val789 = load i64, ptr %loop.step.47, align 8
  %loop.next790 = add i64 %counter.load620, %step.val789
  store i64 %loop.next790, ptr %loop.idx.47, align 8
  br label %loop.header.47

loop.exit.47:                                     ; preds = %loop.exit.nat.47
  %var.load791 = load ptr, ptr %var.out, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load791, i32 0, i32 0
  %b.len792 = load i64, ptr %b.len, align 8
  %cmptmp793 = icmp eq i64 %b.len792, 0
  br i1 %cmptmp793, label %choice.then794, label %choice.else795

choice.then627:                                   ; preds = %loop.body.47
  %b.load629 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len630 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load629, i32 0, i32 0
  %b.rn.cur.len631 = load i64, ptr %b.rn.cur.len630, align 8
  %b.rn.new.len632 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len631, i64 1)
  %sum633 = extractvalue { i64, i1 } %b.rn.new.len632, 0
  %ovf634 = extractvalue { i64, i1 } %b.rn.new.len632, 1
  br i1 %ovf634, label %str_overflow_abort636, label %b.rn.new.len635

choice.exit628:                                   ; preds = %br.done.48, %loop.body.47
  %b.load673 = load ptr, ptr %var.out, align 8
  %var.load674 = load ptr, ptr %var.segs, align 8
  %a.load675 = load ptr, ptr %var.segs, align 8
  %a.null676 = icmp eq ptr %a.load675, null
  br i1 %a.null676, label %a.create677, label %a.after678

b.rn.new.len635:                                  ; preds = %str_overflow_abort636, %choice.then627
  %b.cap637 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load629, i32 0, i32 2
  %b.cap638 = load i64, ptr %b.cap637, align 8
  %b.need.grow639 = icmp slt i64 %b.cap638, %sum633
  br i1 %b.need.grow639, label %b.grow2640, label %b.nogrow2641

str_overflow_abort636:                            ; preds = %choice.then627
  %29 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len635

b.grow2640:                                       ; preds = %b.rn.new.len635
  %b.cap2643 = mul i64 %b.cap638, 2
  %b.cap.small644 = icmp slt i64 %b.cap2643, 16
  %b.cap.grow645 = select i1 %b.cap.small644, i64 16, i64 %b.cap2643
  %b.cap.need646 = icmp slt i64 %b.cap.grow645, %sum633
  %b.new.cap647 = select i1 %b.cap.need646, i64 %sum633, i64 %b.cap.grow645
  %b.cur.len2648 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load629, i32 0, i32 0
  %b.cur.len2649 = load i64, ptr %b.cur.len2648, align 8
  %b.cur.data2650 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load629, i32 0, i32 1
  %b.cur.data2651 = load ptr, ptr %b.cur.data2650, align 8
  %b.new.buf.len2652 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap647, i64 1)
  %sum653 = extractvalue { i64, i1 } %b.new.buf.len2652, 0
  %ovf654 = extractvalue { i64, i1 } %b.new.buf.len2652, 1
  br i1 %ovf654, label %str_overflow_abort656, label %b.new.buf.len2655

b.nogrow2641:                                     ; preds = %b.rn.new.len635
  br label %b.grow_done642

b.grow_done642:                                   ; preds = %b.nogrow2641, %b.new.buf.len2655
  %b.rn.data662 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load629, i32 0, i32 1
  %b.rn.data663 = load ptr, ptr %b.rn.data662, align 8
  %b.rn.dst664 = getelementptr i8, ptr %b.rn.data663, i64 %b.rn.cur.len631
  br i1 true, label %br.b1.48, label %br.c2.48

b.new.buf.len2655:                                ; preds = %str_overflow_abort656, %b.grow2640
  %arena.cur657 = call ptr @dva_arena_current()
  %b.new.buf2658 = call ptr @dva_arena_alloc(ptr %arena.cur657, i64 %sum653)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2658, ptr align 1 %b.cur.data2651, i64 %b.cur.len2649, i1 false)
  %b.grow2.nul659 = getelementptr i8, ptr %b.new.buf2658, i64 %b.cur.len2649
  store i8 0, ptr %b.grow2.nul659, align 1
  %b.new.data2.gep660 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load629, i32 0, i32 1
  store ptr %b.new.buf2658, ptr %b.new.data2.gep660, align 8
  %b.new.cap2.gep661 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load629, i32 0, i32 2
  store i64 %b.new.cap647, ptr %b.new.cap2.gep661, align 8
  br label %b.grow_done642

str_overflow_abort656:                            ; preds = %b.grow2640
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2655

br.b1.48:                                         ; preds = %b.grow_done642
  store i8 92, ptr %b.rn.dst664, align 1
  br label %br.done.48

br.c2.48:                                         ; preds = %b.grow_done642
  br i1 true, label %br.b2.48, label %br.c3.48

br.b2.48:                                         ; preds = %br.c2.48
  store i8 -63, ptr %b.rn.dst664, align 1
  %br.dst1665 = getelementptr i8, ptr %b.rn.dst664, i64 1
  store i8 -100, ptr %br.dst1665, align 1
  br label %br.done.48

br.c3.48:                                         ; preds = %br.c2.48
  br i1 true, label %br.b3.48, label %br.b4.48

br.b3.48:                                         ; preds = %br.c3.48
  store i8 -32, ptr %b.rn.dst664, align 1
  %br.dst1.3666 = getelementptr i8, ptr %b.rn.dst664, i64 1
  store i8 -127, ptr %br.dst1.3666, align 1
  %br.dst2.3667 = getelementptr i8, ptr %b.rn.dst664, i64 2
  store i8 -100, ptr %br.dst2.3667, align 1
  br label %br.done.48

br.b4.48:                                         ; preds = %br.c3.48
  store i8 -16, ptr %b.rn.dst664, align 1
  %br.dst1.4668 = getelementptr i8, ptr %b.rn.dst664, i64 1
  store i8 -128, ptr %br.dst1.4668, align 1
  %br.dst2.4669 = getelementptr i8, ptr %b.rn.dst664, i64 2
  store i8 -127, ptr %br.dst2.4669, align 1
  %br.dst3.4670 = getelementptr i8, ptr %b.rn.dst664, i64 3
  store i8 -100, ptr %br.dst3.4670, align 1
  br label %br.done.48

br.done.48:                                       ; preds = %br.b4.48, %br.b3.48, %br.b2.48, %br.b1.48
  %br.nul671 = getelementptr i8, ptr %b.rn.data663, i64 %sum633
  store i8 0, ptr %br.nul671, align 1
  %b.len.gep672 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load629, i32 0, i32 0
  store i64 %sum633, ptr %b.len.gep672, align 8
  br label %choice.exit628

a.create677:                                      ; preds = %choice.exit628
  %arena.cur679 = call ptr @dva_arena_current()
  %a.create680 = call ptr @dva_arena_alloc(ptr %arena.cur679, i64 24)
  %arena.cur681 = call ptr @dva_arena_current()
  %a.buf682 = call ptr @dva_arena_alloc(ptr %arena.cur681, i64 128)
  %a.len.gep683 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create680, i32 0, i32 0
  store i64 0, ptr %a.len.gep683, align 8
  %a.data.gep684 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create680, i32 0, i32 1
  store ptr %a.buf682, ptr %a.data.gep684, align 8
  %a.cap.gep685 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create680, i32 0, i32 2
  store i64 16, ptr %a.cap.gep685, align 8
  store ptr %a.create680, ptr %var.segs, align 8
  br label %a.after678

a.after678:                                       ; preds = %a.create677, %choice.exit628
  %a.load2686 = load ptr, ptr %var.segs, align 8
  %var.load687 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull688 = icmp ne ptr %a.load2686, null
  br i1 %a.rd.nonnull688, label %a.rd.check689, label %a.rd.err.null691

a.rd.check689:                                    ; preds = %a.after678
  %a.rd.len694 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2686, i32 0, i32 0
  %a.rd.len695 = load i64, ptr %a.rd.len694, align 8
  %a.rd.ge0696 = icmp sge i64 %var.load687, 0
  %a.rd.lt697 = icmp slt i64 %var.load687, %a.rd.len695
  %a.rd.bounds698 = and i1 %a.rd.ge0696, %a.rd.lt697
  br i1 %a.rd.bounds698, label %a.rd.ok690, label %a.rd.err.oob692

a.rd.ok690:                                       ; preds = %a.rd.check689
  %a.rd.data699 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2686, i32 0, i32 1
  %a.rd.data700 = load ptr, ptr %a.rd.data699, align 8
  %a.rd.elem.gep701 = getelementptr i64, ptr %a.rd.data700, i64 %var.load687
  %a.rd.elem702 = load i64, ptr %a.rd.elem.gep701, align 8
  br label %a.rd.done693

a.rd.err.null691:                                 ; preds = %a.after678
  %arena.cur703 = call ptr @dva_arena_current()
  %err.alloc704 = call ptr @dva_arena_alloc(ptr %arena.cur703, i64 56)
  %err.code.gep705 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc704, i32 0, i32 0
  store i64 4011, ptr %err.code.gep705, align 8
  %err.msg.gep706 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc704, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep706, align 8
  %err.file.gep707 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc704, i32 0, i32 2
  store ptr @str.7.struct, ptr %err.file.gep707, align 8
  %err.line.gep708 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc704, i32 0, i32 3
  store i64 333, ptr %err.line.gep708, align 8
  %err.col.gep709 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc704, i32 0, i32 4
  store i64 25, ptr %err.col.gep709, align 8
  %err.ctx.gep710 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc704, i32 0, i32 5
  %err.ctx0.gep711 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep710, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep711, align 8
  %err.ctx1.gep712 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep710, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep712, align 8
  %err.p2i713 = ptrtoint ptr %err.alloc704 to i64
  br label %a.rd.done693

a.rd.err.oob692:                                  ; preds = %a.rd.check689
  %arena.cur714 = call ptr @dva_arena_current()
  %err.alloc715 = call ptr @dva_arena_alloc(ptr %arena.cur714, i64 56)
  %err.code.gep716 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc715, i32 0, i32 0
  store i64 4011, ptr %err.code.gep716, align 8
  %err.msg.gep717 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc715, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep717, align 8
  %err.file.gep718 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc715, i32 0, i32 2
  store ptr @str.7.struct, ptr %err.file.gep718, align 8
  %err.line.gep719 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc715, i32 0, i32 3
  store i64 333, ptr %err.line.gep719, align 8
  %err.col.gep720 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc715, i32 0, i32 4
  store i64 25, ptr %err.col.gep720, align 8
  %err.ctx.gep721 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc715, i32 0, i32 5
  %err.ctx0.gep722 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep721, i32 0, i32 0
  store i64 %var.load687, ptr %err.ctx0.gep722, align 8
  %err.ctx1.gep723 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep721, i32 0, i32 1
  store i64 %a.rd.len695, ptr %err.ctx1.gep723, align 8
  %err.p2i724 = ptrtoint ptr %err.alloc715 to i64
  br label %a.rd.done693

a.rd.done693:                                     ; preds = %a.rd.err.oob692, %a.rd.err.null691, %a.rd.ok690
  %a.rd.tag725 = phi i1 [ true, %a.rd.ok690 ], [ false, %a.rd.err.null691 ], [ false, %a.rd.err.oob692 ]
  %a.rd.pay726 = phi i64 [ %a.rd.elem702, %a.rd.ok690 ], [ %err.p2i713, %a.rd.err.null691 ], [ %err.p2i724, %a.rd.err.oob692 ]
  %ram.tag727 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag725, 0
  %ram.pay728 = insertvalue { i1, i64 } %ram.tag727, i64 %a.rd.pay726, 1
  %ram.tag729 = extractvalue { i1, i64 } %ram.pay728, 0
  br i1 %ram.tag729, label %choice.then730, label %choice.else731

choice.then730:                                   ; preds = %a.rd.done693
  %ram.pay733 = extractvalue { i1, i64 } %ram.pay728, 1
  %pay.ptr734 = inttoptr i64 %ram.pay733 to ptr
  store ptr %pay.ptr734, ptr %var._735, align 8
  br label %choice.exit732

choice.else731:                                   ; preds = %a.rd.done693
  %ram.pay736 = extractvalue { i1, i64 } %ram.pay728, 1
  %pay.ptr737 = inttoptr i64 %ram.pay736 to ptr
  store ptr %pay.ptr737, ptr %var._738, align 8
  br label %choice.exit732

choice.exit732:                                   ; preds = %choice.else731, %choice.then730
  %choice.res739 = phi ptr [ %pay.ptr734, %choice.then730 ], [ @str.4.struct, %choice.else731 ]
  %app.str.len740 = getelementptr inbounds { i64, ptr }, ptr %choice.res739, i32 0, i32 0
  %app.str.len741 = load i64, ptr %app.str.len740, align 8
  %app.str.len742 = and i64 %app.str.len741, 281474976710655
  %str.tag743 = lshr i64 %app.str.len741, 48
  %str.immortal744 = icmp eq i64 %str.tag743, 0
  br i1 %str.immortal744, label %str_ok746, label %str_gen_check745

str_gen_check745:                                 ; preds = %choice.exit732
  %arena.cur748 = call ptr @dva_arena_current()
  %tag.valid749 = call i1 @dva_arena_validate_tag(ptr %arena.cur748, i64 %str.tag743)
  br i1 %tag.valid749, label %str_ok746, label %str_stale747

str_ok746:                                        ; preds = %str_stale747, %str_gen_check745, %choice.exit732
  %b.app.cur.len750 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load673, i32 0, i32 0
  %b.app.cur.len751 = load i64, ptr %b.app.cur.len750, align 8
  %b.app.new.len752 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len751, i64 %app.str.len742)
  %sum753 = extractvalue { i64, i1 } %b.app.new.len752, 0
  %ovf754 = extractvalue { i64, i1 } %b.app.new.len752, 1
  br i1 %ovf754, label %str_overflow_abort756, label %b.app.new.len755

str_stale747:                                     ; preds = %str_gen_check745
  %31 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok746

b.app.new.len755:                                 ; preds = %str_overflow_abort756, %str_ok746
  %b.cap757 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load673, i32 0, i32 2
  %b.cap758 = load i64, ptr %b.cap757, align 8
  %b.need.grow759 = icmp slt i64 %b.cap758, %sum753
  br i1 %b.need.grow759, label %b.grow2760, label %b.nogrow2761

str_overflow_abort756:                            ; preds = %str_ok746
  %32 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len755

b.grow2760:                                       ; preds = %b.app.new.len755
  %b.cap2763 = mul i64 %b.cap758, 2
  %b.cap.small764 = icmp slt i64 %b.cap2763, 16
  %b.cap.grow765 = select i1 %b.cap.small764, i64 16, i64 %b.cap2763
  %b.cap.need766 = icmp slt i64 %b.cap.grow765, %sum753
  %b.new.cap767 = select i1 %b.cap.need766, i64 %sum753, i64 %b.cap.grow765
  %b.cur.len2768 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load673, i32 0, i32 0
  %b.cur.len2769 = load i64, ptr %b.cur.len2768, align 8
  %b.cur.data2770 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load673, i32 0, i32 1
  %b.cur.data2771 = load ptr, ptr %b.cur.data2770, align 8
  %b.new.buf.len2772 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap767, i64 1)
  %sum773 = extractvalue { i64, i1 } %b.new.buf.len2772, 0
  %ovf774 = extractvalue { i64, i1 } %b.new.buf.len2772, 1
  br i1 %ovf774, label %str_overflow_abort776, label %b.new.buf.len2775

b.nogrow2761:                                     ; preds = %b.app.new.len755
  br label %b.grow_done762

b.grow_done762:                                   ; preds = %b.nogrow2761, %b.new.buf.len2775
  %app.str.data782 = getelementptr inbounds { i64, ptr }, ptr %choice.res739, i32 0, i32 1
  %app.str.data783 = load ptr, ptr %app.str.data782, align 8
  %b.app.data784 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load673, i32 0, i32 1
  %b.app.data785 = load ptr, ptr %b.app.data784, align 8
  %b.app.dst786 = getelementptr i8, ptr %b.app.data785, i64 %b.app.cur.len751
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst786, ptr align 1 %app.str.data783, i64 %app.str.len742, i1 false)
  %b.app.nul787 = getelementptr i8, ptr %b.app.data785, i64 %sum753
  store i8 0, ptr %b.app.nul787, align 1
  %b.len.gep788 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load673, i32 0, i32 0
  store i64 %sum753, ptr %b.len.gep788, align 8
  br label %loop.latch.47

b.new.buf.len2775:                                ; preds = %str_overflow_abort776, %b.grow2760
  %arena.cur777 = call ptr @dva_arena_current()
  %b.new.buf2778 = call ptr @dva_arena_alloc(ptr %arena.cur777, i64 %sum773)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2778, ptr align 1 %b.cur.data2771, i64 %b.cur.len2769, i1 false)
  %b.grow2.nul779 = getelementptr i8, ptr %b.new.buf2778, i64 %b.cur.len2769
  store i8 0, ptr %b.grow2.nul779, align 1
  %b.new.data2.gep780 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load673, i32 0, i32 1
  store ptr %b.new.buf2778, ptr %b.new.data2.gep780, align 8
  %b.new.cap2.gep781 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load673, i32 0, i32 2
  store i64 %b.new.cap767, ptr %b.new.cap2.gep781, align 8
  br label %b.grow_done762

str_overflow_abort776:                            ; preds = %b.grow2760
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2775

choice.then794:                                   ; preds = %loop.exit.47
  br label %choice.exit796

choice.else795:                                   ; preds = %loop.exit.47
  %var.load797 = load ptr, ptr %var.out, align 8
  %b.freeze.len798 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load797, i32 0, i32 0
  %b.freeze.len799 = load i64, ptr %b.freeze.len798, align 8
  %b.freeze.data800 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load797, i32 0, i32 1
  %b.freeze.data801 = load ptr, ptr %b.freeze.data800, align 8
  %b.freeze.arena802 = call ptr @dva_arena_current()
  %b.freeze.nc.gep803 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena802, i32 0, i32 1
  %b.freeze.nc804 = load i64, ptr %b.freeze.nc.gep803, align 8
  %b.freeze.has.chunk805 = icmp sgt i64 %b.freeze.nc804, 0
  br i1 %b.freeze.has.chunk805, label %b.freeze.check806, label %b.freeze.done808

choice.exit796:                                   ; preds = %b.freeze.done808, %choice.then794
  %choice.res836 = phi ptr [ @str.3.struct, %choice.then794 ], [ %builder.freeze830, %b.freeze.done808 ]
  ret ptr %choice.res836

b.freeze.check806:                                ; preds = %choice.else795
  %b.freeze.last.idx809 = sub i64 %b.freeze.nc804, 1
  %b.freeze.chunks.gep810 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena802, i32 0, i32 3
  %b.freeze.chunk.slot811 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep810, i64 0, i64 %b.freeze.last.idx809
  %b.freeze.last.chunk812 = load ptr, ptr %b.freeze.chunk.slot811, align 8
  %b.freeze.off.gep813 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena802, i32 0, i32 2
  %b.freeze.off814 = load i64, ptr %b.freeze.off.gep813, align 8
  %b.freeze.bump815 = getelementptr i8, ptr %b.freeze.last.chunk812, i64 %b.freeze.off814
  %b.freeze.cap.gep816 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena802, i32 0, i32 0
  %b.freeze.cap817 = load i64, ptr %b.freeze.cap.gep816, align 8
  %b.freeze.chunk.end818 = getelementptr i8, ptr %b.freeze.last.chunk812, i64 %b.freeze.cap817
  %b.freeze.ge.chunk819 = icmp uge ptr %b.freeze.data801, %b.freeze.last.chunk812
  %b.freeze.lt.end820 = icmp ult ptr %b.freeze.data801, %b.freeze.chunk.end818
  %b.freeze.in.chunk821 = and i1 %b.freeze.ge.chunk819, %b.freeze.lt.end820
  %b.freeze.ge.bump822 = icmp uge ptr %b.freeze.data801, %b.freeze.bump815
  %b.freeze.reaped823 = and i1 %b.freeze.in.chunk821, %b.freeze.ge.bump822
  br i1 %b.freeze.reaped823, label %b.freeze.copy807, label %b.freeze.done808

b.freeze.copy807:                                 ; preds = %b.freeze.check806
  %b.freeze.alen824 = add i64 %b.freeze.len799, 1
  %arena.cur825 = call ptr @dva_arena_current()
  %b.freeze.fresh826 = call ptr @dva_arena_alloc(ptr %arena.cur825, i64 %b.freeze.alen824)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh826, ptr align 1 %b.freeze.data801, i64 %b.freeze.len799, i1 false)
  %b.freeze.nul827 = getelementptr i8, ptr %b.freeze.fresh826, i64 %b.freeze.len799
  store i8 0, ptr %b.freeze.nul827, align 1
  br label %b.freeze.done808

b.freeze.done808:                                 ; preds = %b.freeze.copy807, %b.freeze.check806, %choice.else795
  %b.freeze.data828 = phi ptr [ %b.freeze.data801, %choice.else795 ], [ %b.freeze.data801, %b.freeze.check806 ], [ %b.freeze.fresh826, %b.freeze.copy807 ]
  %arena.cur829 = call ptr @dva_arena_current()
  %builder.freeze830 = call ptr @dva_arena_alloc(ptr %arena.cur829, i64 16)
  %str.build.len.gep831 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze830, i32 0, i32 0
  store i64 %b.freeze.len799, ptr %str.build.len.gep831, align 8
  %str.build.data.gep832 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze830, i32 0, i32 1
  store ptr %b.freeze.data828, ptr %str.build.data.gep832, align 8
  %b.freeze.rst.len833 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load797, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len833, align 8
  %b.freeze.rst.data834 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load797, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data834, align 8
  %b.freeze.rst.cap835 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load797, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap835, align 8
  br label %choice.exit796
}

define ptr @"path::normalize"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  br i1 false, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call ptr @"path::win_normalize"(ptr %var.load)
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.p, align 8
  %call.res2 = call ptr @"path::posix_normalize"(ptr %var.load1)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %call.res, %choice.then ], [ %call.res2, %choice.else ]
  ret ptr %choice.res
}

define ptr @"path::rel"(ptr %0, ptr %1) #1 {
entry:
  %var.seg = alloca ptr, align 8
  %var._431 = alloca ptr, align 8
  %var._428 = alloca ptr, align 8
  %var._366 = alloca i64, align 8
  %var._i365 = alloca i64, align 8
  %loop.step.52 = alloca i64, align 8
  %loop.idx.52 = alloca i64, align 8
  %var._231 = alloca ptr, align 8
  %var._228 = alloca ptr, align 8
  %var._166 = alloca i64, align 8
  %var._i165 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.51 = alloca i64, align 8
  %loop.idx.51 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var._125 = alloca ptr, align 8
  %var._122 = alloca ptr, align 8
  %var._60 = alloca ptr, align 8
  %var._57 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.49 = alloca i64, align 8
  %loop.idx.49 = alloca i64, align 8
  %"var.common'" = alloca i64, align 8
  %var.ta = alloca ptr, align 8
  %var.fa = alloca ptr, align 8
  %var.to_path = alloca ptr, align 8
  %var.from_dir = alloca ptr, align 8
  store ptr %0, ptr %var.from_dir, align 8
  store ptr %1, ptr %var.to_path, align 8
  %var.load = load ptr, ptr %var.from_dir, align 8
  %call.res = call ptr @"path::split"(ptr %var.load)
  store ptr %call.res, ptr %var.fa, align 8
  %var.load1 = load ptr, ptr %var.to_path, align 8
  %call.res2 = call ptr @"path::split"(ptr %var.load1)
  store ptr %call.res2, ptr %var.ta, align 8
  store i64 0, ptr %"var.common'", align 8
  store i64 0, ptr %loop.idx.49, align 8
  br label %loop.header.49

loop.header.49:                                   ; preds = %loop.latch.49, %entry
  %counter.load = load i64, ptr %loop.idx.49, align 8
  br label %loop.body.49

loop.body.49:                                     ; preds = %loop.header.49
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.49, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load3 = load i64, ptr %"var.common'", align 8
  %var.load4 = load ptr, ptr %var.fa, align 8
  %a.load = load ptr, ptr %var.fa, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

loop.exit.nat.49:                                 ; No predecessors!
  br label %loop.exit.49

loop.latch.49:                                    ; preds = %choice.exit142
  %step.val = load i64, ptr %loop.step.49, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.49, align 8
  br label %loop.header.49

loop.exit.49:                                     ; preds = %choice.then141, %choice.then, %loop.exit.nat.49
  %arena.cur144 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 64, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len145

a.create:                                         ; preds = %loop.body.49
  %arena.cur = call ptr @dva_arena_current()
  %a.create5 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur6 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create5, ptr %var.fa, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %loop.body.49
  %a.load2 = load ptr, ptr %var.fa, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query7 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp sge i64 %var.load3, %a.len.query7
  br i1 %cmptmp, label %or.50.then, label %or.50.else

or.50.then:                                       ; preds = %a.after
  br label %or.50.exit

or.50.else:                                       ; preds = %a.after
  %var.load8 = load i64, ptr %"var.common'", align 8
  %var.load9 = load ptr, ptr %var.ta, align 8
  %a.load10 = load ptr, ptr %var.ta, align 8
  %a.null11 = icmp eq ptr %a.load10, null
  br i1 %a.null11, label %a.create12, label %a.after13

or.50.exit:                                       ; preds = %a.after13, %or.50.then
  %or.50.phi = phi i1 [ %cmptmp, %or.50.then ], [ %cmptmp24, %a.after13 ]
  br i1 %or.50.phi, label %choice.then, label %choice.exit

a.create12:                                       ; preds = %or.50.else
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
  store ptr %a.create15, ptr %var.ta, align 8
  br label %a.after13

a.after13:                                        ; preds = %a.create12, %or.50.else
  %a.load221 = load ptr, ptr %var.ta, align 8
  %a.len.query22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load221, i32 0, i32 0
  %a.len.query23 = load i64, ptr %a.len.query22, align 8
  %cmptmp24 = icmp sge i64 %var.load8, %a.len.query23
  br label %or.50.exit

choice.then:                                      ; preds = %or.50.exit
  br label %loop.exit.49

choice.exit:                                      ; preds = %or.50.exit
  %var.load25 = load ptr, ptr %var.fa, align 8
  %a.load26 = load ptr, ptr %var.fa, align 8
  %a.null27 = icmp eq ptr %a.load26, null
  br i1 %a.null27, label %a.create28, label %a.after29

a.create28:                                       ; preds = %choice.exit
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
  store ptr %a.create31, ptr %var.fa, align 8
  br label %a.after29

a.after29:                                        ; preds = %a.create28, %choice.exit
  %a.load237 = load ptr, ptr %var.fa, align 8
  %var.load38 = load i64, ptr %"var.common'", align 8
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
  store ptr @str.6.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.7.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 347, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 20, ptr %err.col.gep, align 8
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
  store ptr @str.8.struct, ptr %err.msg.gep45, align 8
  %err.file.gep46 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 2
  store ptr @str.7.struct, ptr %err.file.gep46, align 8
  %err.line.gep47 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 3
  store i64 347, ptr %err.line.gep47, align 8
  %err.col.gep48 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 4
  store i64 20, ptr %err.col.gep48, align 8
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
  %ram.tag53 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag53, label %choice.then54, label %choice.else

choice.then54:                                    ; preds = %a.rd.done
  %ram.pay56 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay56 to ptr
  store ptr %pay.ptr, ptr %var._57, align 8
  br label %choice.exit55

choice.else:                                      ; preds = %a.rd.done
  %ram.pay58 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr59 = inttoptr i64 %ram.pay58 to ptr
  store ptr %pay.ptr59, ptr %var._60, align 8
  br label %choice.exit55

choice.exit55:                                    ; preds = %choice.else, %choice.then54
  %choice.res = phi ptr [ %pay.ptr, %choice.then54 ], [ @str.4.struct, %choice.else ]
  %var.load61 = load ptr, ptr %var.ta, align 8
  %a.load62 = load ptr, ptr %var.ta, align 8
  %a.null63 = icmp eq ptr %a.load62, null
  br i1 %a.null63, label %a.create64, label %a.after65

a.create64:                                       ; preds = %choice.exit55
  %arena.cur66 = call ptr @dva_arena_current()
  %a.create67 = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 24)
  %arena.cur68 = call ptr @dva_arena_current()
  %a.buf69 = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 128)
  %a.len.gep70 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create67, i32 0, i32 0
  store i64 0, ptr %a.len.gep70, align 8
  %a.data.gep71 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create67, i32 0, i32 1
  store ptr %a.buf69, ptr %a.data.gep71, align 8
  %a.cap.gep72 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create67, i32 0, i32 2
  store i64 16, ptr %a.cap.gep72, align 8
  store ptr %a.create67, ptr %var.ta, align 8
  br label %a.after65

a.after65:                                        ; preds = %a.create64, %choice.exit55
  %a.load273 = load ptr, ptr %var.ta, align 8
  %var.load74 = load i64, ptr %"var.common'", align 8
  %a.rd.nonnull75 = icmp ne ptr %a.load273, null
  br i1 %a.rd.nonnull75, label %a.rd.check76, label %a.rd.err.null78

a.rd.check76:                                     ; preds = %a.after65
  %a.rd.len81 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load273, i32 0, i32 0
  %a.rd.len82 = load i64, ptr %a.rd.len81, align 8
  %a.rd.ge083 = icmp sge i64 %var.load74, 0
  %a.rd.lt84 = icmp slt i64 %var.load74, %a.rd.len82
  %a.rd.bounds85 = and i1 %a.rd.ge083, %a.rd.lt84
  br i1 %a.rd.bounds85, label %a.rd.ok77, label %a.rd.err.oob79

a.rd.ok77:                                        ; preds = %a.rd.check76
  %a.rd.data86 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load273, i32 0, i32 1
  %a.rd.data87 = load ptr, ptr %a.rd.data86, align 8
  %a.rd.elem.gep88 = getelementptr i64, ptr %a.rd.data87, i64 %var.load74
  %a.rd.elem89 = load i64, ptr %a.rd.elem.gep88, align 8
  br label %a.rd.done80

a.rd.err.null78:                                  ; preds = %a.after65
  %arena.cur90 = call ptr @dva_arena_current()
  %err.alloc91 = call ptr @dva_arena_alloc(ptr %arena.cur90, i64 56)
  %err.code.gep92 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc91, i32 0, i32 0
  store i64 4011, ptr %err.code.gep92, align 8
  %err.msg.gep93 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc91, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep93, align 8
  %err.file.gep94 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc91, i32 0, i32 2
  store ptr @str.7.struct, ptr %err.file.gep94, align 8
  %err.line.gep95 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc91, i32 0, i32 3
  store i64 347, ptr %err.line.gep95, align 8
  %err.col.gep96 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc91, i32 0, i32 4
  store i64 46, ptr %err.col.gep96, align 8
  %err.ctx.gep97 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc91, i32 0, i32 5
  %err.ctx0.gep98 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep97, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep98, align 8
  %err.ctx1.gep99 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep97, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep99, align 8
  %err.p2i100 = ptrtoint ptr %err.alloc91 to i64
  br label %a.rd.done80

a.rd.err.oob79:                                   ; preds = %a.rd.check76
  %arena.cur101 = call ptr @dva_arena_current()
  %err.alloc102 = call ptr @dva_arena_alloc(ptr %arena.cur101, i64 56)
  %err.code.gep103 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc102, i32 0, i32 0
  store i64 4011, ptr %err.code.gep103, align 8
  %err.msg.gep104 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc102, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep104, align 8
  %err.file.gep105 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc102, i32 0, i32 2
  store ptr @str.7.struct, ptr %err.file.gep105, align 8
  %err.line.gep106 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc102, i32 0, i32 3
  store i64 347, ptr %err.line.gep106, align 8
  %err.col.gep107 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc102, i32 0, i32 4
  store i64 46, ptr %err.col.gep107, align 8
  %err.ctx.gep108 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc102, i32 0, i32 5
  %err.ctx0.gep109 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep108, i32 0, i32 0
  store i64 %var.load74, ptr %err.ctx0.gep109, align 8
  %err.ctx1.gep110 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep108, i32 0, i32 1
  store i64 %a.rd.len82, ptr %err.ctx1.gep110, align 8
  %err.p2i111 = ptrtoint ptr %err.alloc102 to i64
  br label %a.rd.done80

a.rd.done80:                                      ; preds = %a.rd.err.oob79, %a.rd.err.null78, %a.rd.ok77
  %a.rd.tag112 = phi i1 [ true, %a.rd.ok77 ], [ false, %a.rd.err.null78 ], [ false, %a.rd.err.oob79 ]
  %a.rd.pay113 = phi i64 [ %a.rd.elem89, %a.rd.ok77 ], [ %err.p2i100, %a.rd.err.null78 ], [ %err.p2i111, %a.rd.err.oob79 ]
  %ram.tag114 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag112, 0
  %ram.pay115 = insertvalue { i1, i64 } %ram.tag114, i64 %a.rd.pay113, 1
  %ram.tag116 = extractvalue { i1, i64 } %ram.pay115, 0
  br i1 %ram.tag116, label %choice.then117, label %choice.else118

choice.then117:                                   ; preds = %a.rd.done80
  %ram.pay120 = extractvalue { i1, i64 } %ram.pay115, 1
  %pay.ptr121 = inttoptr i64 %ram.pay120 to ptr
  store ptr %pay.ptr121, ptr %var._122, align 8
  br label %choice.exit119

choice.else118:                                   ; preds = %a.rd.done80
  %ram.pay123 = extractvalue { i1, i64 } %ram.pay115, 1
  %pay.ptr124 = inttoptr i64 %ram.pay123 to ptr
  store ptr %pay.ptr124, ptr %var._125, align 8
  br label %choice.exit119

choice.exit119:                                   ; preds = %choice.else118, %choice.then117
  %choice.res126 = phi ptr [ %pay.ptr121, %choice.then117 ], [ @str.4.struct, %choice.else118 ]
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 0
  %eq.lhs.len127 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len128 = and i64 %eq.lhs.len127, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len127, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit119
  %arena.cur129 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur129, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit119
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %choice.res126, i32 0, i32 0
  %eq.rhs.len130 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len131 = and i64 %eq.rhs.len130, 281474976710655
  %str.tag132 = lshr i64 %eq.rhs.len130, 48
  %str.immortal133 = icmp eq i64 %str.tag132, 0
  br i1 %str.immortal133, label %str_ok135, label %str_gen_check134

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check134:                                 ; preds = %str_ok
  %arena.cur137 = call ptr @dva_arena_current()
  %tag.valid138 = call i1 @dva_arena_validate_tag(ptr %arena.cur137, i64 %str.tag132)
  br i1 %tag.valid138, label %str_ok135, label %str_stale136

str_ok135:                                        ; preds = %str_stale136, %str_gen_check134, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len128, %eq.rhs.len131
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale136:                                     ; preds = %str_gen_check134
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok135

str.eq.then:                                      ; preds = %str_ok135
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %eq.lhs.data139 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %choice.res126, i32 0, i32 1
  %eq.rhs.data140 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data139, ptr %eq.rhs.data140, i64 %eq.lhs.len128)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok135
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then141, label %choice.exit142

choice.then141:                                   ; preds = %str.eq.merge
  br label %loop.exit.49

choice.exit142:                                   ; preds = %str.eq.merge
  %var.load143 = load i64, ptr %"var.common'", align 8
  %addtmp = add i64 %var.load143, 1
  store i64 %addtmp, ptr %"var.common'", align 8
  br label %loop.latch.49

b.buf.len145:                                     ; preds = %str_overflow_abort, %loop.exit.49
  %arena.cur146 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur146, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 64, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load147 = load i64, ptr %"var.common'", align 8
  %var.load148 = load ptr, ptr %var.fa, align 8
  %a.load149 = load ptr, ptr %var.fa, align 8
  %a.null150 = icmp eq ptr %a.load149, null
  br i1 %a.null150, label %a.create151, label %a.after152

str_overflow_abort:                               ; preds = %loop.exit.49
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len145

a.create151:                                      ; preds = %b.buf.len145
  %arena.cur153 = call ptr @dva_arena_current()
  %a.create154 = call ptr @dva_arena_alloc(ptr %arena.cur153, i64 24)
  %arena.cur155 = call ptr @dva_arena_current()
  %a.buf156 = call ptr @dva_arena_alloc(ptr %arena.cur155, i64 128)
  %a.len.gep157 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create154, i32 0, i32 0
  store i64 0, ptr %a.len.gep157, align 8
  %a.data.gep158 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create154, i32 0, i32 1
  store ptr %a.buf156, ptr %a.data.gep158, align 8
  %a.cap.gep159 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create154, i32 0, i32 2
  store i64 16, ptr %a.cap.gep159, align 8
  store ptr %a.create154, ptr %var.fa, align 8
  br label %a.after152

a.after152:                                       ; preds = %a.create151, %b.buf.len145
  %a.load2160 = load ptr, ptr %var.fa, align 8
  %a.len.query161 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2160, i32 0, i32 0
  %a.len.query162 = load i64, ptr %a.len.query161, align 8
  store i64 %var.load147, ptr %loop.idx.51, align 8
  br label %loop.header.51

loop.header.51:                                   ; preds = %loop.latch.51, %a.after152
  %counter.load163 = load i64, ptr %loop.idx.51, align 8
  %loop.cond = icmp slt i64 %counter.load163, %a.len.query162
  br i1 %loop.cond, label %loop.body.51, label %loop.exit.nat.51

loop.body.51:                                     ; preds = %loop.header.51
  %loop.rel.i164 = sub i64 %counter.load163, %var.load147
  store i64 1, ptr %loop.step.51, align 8
  store i64 %loop.rel.i164, ptr %var._i165, align 8
  store i64 %counter.load163, ptr %var._166, align 8
  store i64 %counter.load163, ptr %var.i, align 8
  %var.load167 = load ptr, ptr %var.fa, align 8
  %a.load168 = load ptr, ptr %var.fa, align 8
  %a.null169 = icmp eq ptr %a.load168, null
  br i1 %a.null169, label %a.create170, label %a.after171

loop.exit.nat.51:                                 ; preds = %loop.header.51
  br label %loop.exit.51

loop.latch.51:                                    ; preds = %choice.exit264
  %step.val344 = load i64, ptr %loop.step.51, align 8
  %loop.next345 = add i64 %counter.load163, %step.val344
  store i64 %loop.next345, ptr %loop.idx.51, align 8
  br label %loop.header.51

loop.exit.51:                                     ; preds = %loop.exit.nat.51
  %var.load346 = load i64, ptr %"var.common'", align 8
  %var.load347 = load ptr, ptr %var.ta, align 8
  %a.load348 = load ptr, ptr %var.ta, align 8
  %a.null349 = icmp eq ptr %a.load348, null
  br i1 %a.null349, label %a.create350, label %a.after351

a.create170:                                      ; preds = %loop.body.51
  %arena.cur172 = call ptr @dva_arena_current()
  %a.create173 = call ptr @dva_arena_alloc(ptr %arena.cur172, i64 24)
  %arena.cur174 = call ptr @dva_arena_current()
  %a.buf175 = call ptr @dva_arena_alloc(ptr %arena.cur174, i64 128)
  %a.len.gep176 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create173, i32 0, i32 0
  store i64 0, ptr %a.len.gep176, align 8
  %a.data.gep177 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create173, i32 0, i32 1
  store ptr %a.buf175, ptr %a.data.gep177, align 8
  %a.cap.gep178 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create173, i32 0, i32 2
  store i64 16, ptr %a.cap.gep178, align 8
  store ptr %a.create173, ptr %var.fa, align 8
  br label %a.after171

a.after171:                                       ; preds = %a.create170, %loop.body.51
  %a.load2179 = load ptr, ptr %var.fa, align 8
  %var.load180 = load i64, ptr %var.i, align 8
  %a.rd.nonnull181 = icmp ne ptr %a.load2179, null
  br i1 %a.rd.nonnull181, label %a.rd.check182, label %a.rd.err.null184

a.rd.check182:                                    ; preds = %a.after171
  %a.rd.len187 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2179, i32 0, i32 0
  %a.rd.len188 = load i64, ptr %a.rd.len187, align 8
  %a.rd.ge0189 = icmp sge i64 %var.load180, 0
  %a.rd.lt190 = icmp slt i64 %var.load180, %a.rd.len188
  %a.rd.bounds191 = and i1 %a.rd.ge0189, %a.rd.lt190
  br i1 %a.rd.bounds191, label %a.rd.ok183, label %a.rd.err.oob185

a.rd.ok183:                                       ; preds = %a.rd.check182
  %a.rd.data192 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2179, i32 0, i32 1
  %a.rd.data193 = load ptr, ptr %a.rd.data192, align 8
  %a.rd.elem.gep194 = getelementptr i64, ptr %a.rd.data193, i64 %var.load180
  %a.rd.elem195 = load i64, ptr %a.rd.elem.gep194, align 8
  br label %a.rd.done186

a.rd.err.null184:                                 ; preds = %a.after171
  %arena.cur196 = call ptr @dva_arena_current()
  %err.alloc197 = call ptr @dva_arena_alloc(ptr %arena.cur196, i64 56)
  %err.code.gep198 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc197, i32 0, i32 0
  store i64 4011, ptr %err.code.gep198, align 8
  %err.msg.gep199 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc197, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep199, align 8
  %err.file.gep200 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc197, i32 0, i32 2
  store ptr @str.7.struct, ptr %err.file.gep200, align 8
  %err.line.gep201 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc197, i32 0, i32 3
  store i64 351, ptr %err.line.gep201, align 8
  %err.col.gep202 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc197, i32 0, i32 4
  store i64 14, ptr %err.col.gep202, align 8
  %err.ctx.gep203 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc197, i32 0, i32 5
  %err.ctx0.gep204 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep203, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep204, align 8
  %err.ctx1.gep205 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep203, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep205, align 8
  %err.p2i206 = ptrtoint ptr %err.alloc197 to i64
  br label %a.rd.done186

a.rd.err.oob185:                                  ; preds = %a.rd.check182
  %arena.cur207 = call ptr @dva_arena_current()
  %err.alloc208 = call ptr @dva_arena_alloc(ptr %arena.cur207, i64 56)
  %err.code.gep209 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc208, i32 0, i32 0
  store i64 4011, ptr %err.code.gep209, align 8
  %err.msg.gep210 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc208, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep210, align 8
  %err.file.gep211 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc208, i32 0, i32 2
  store ptr @str.7.struct, ptr %err.file.gep211, align 8
  %err.line.gep212 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc208, i32 0, i32 3
  store i64 351, ptr %err.line.gep212, align 8
  %err.col.gep213 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc208, i32 0, i32 4
  store i64 14, ptr %err.col.gep213, align 8
  %err.ctx.gep214 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc208, i32 0, i32 5
  %err.ctx0.gep215 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep214, i32 0, i32 0
  store i64 %var.load180, ptr %err.ctx0.gep215, align 8
  %err.ctx1.gep216 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep214, i32 0, i32 1
  store i64 %a.rd.len188, ptr %err.ctx1.gep216, align 8
  %err.p2i217 = ptrtoint ptr %err.alloc208 to i64
  br label %a.rd.done186

a.rd.done186:                                     ; preds = %a.rd.err.oob185, %a.rd.err.null184, %a.rd.ok183
  %a.rd.tag218 = phi i1 [ true, %a.rd.ok183 ], [ false, %a.rd.err.null184 ], [ false, %a.rd.err.oob185 ]
  %a.rd.pay219 = phi i64 [ %a.rd.elem195, %a.rd.ok183 ], [ %err.p2i206, %a.rd.err.null184 ], [ %err.p2i217, %a.rd.err.oob185 ]
  %ram.tag220 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag218, 0
  %ram.pay221 = insertvalue { i1, i64 } %ram.tag220, i64 %a.rd.pay219, 1
  %ram.tag222 = extractvalue { i1, i64 } %ram.pay221, 0
  br i1 %ram.tag222, label %choice.then223, label %choice.else224

choice.then223:                                   ; preds = %a.rd.done186
  %ram.pay226 = extractvalue { i1, i64 } %ram.pay221, 1
  %pay.ptr227 = inttoptr i64 %ram.pay226 to ptr
  store ptr %pay.ptr227, ptr %var._228, align 8
  br label %choice.exit225

choice.else224:                                   ; preds = %a.rd.done186
  %ram.pay229 = extractvalue { i1, i64 } %ram.pay221, 1
  %pay.ptr230 = inttoptr i64 %ram.pay229 to ptr
  store ptr %pay.ptr230, ptr %var._231, align 8
  br label %choice.exit225

choice.exit225:                                   ; preds = %choice.else224, %choice.then223
  %choice.res232 = phi ptr [ %pay.ptr227, %choice.then223 ], [ @str.4.struct, %choice.else224 ]
  %eq.lhs.len233 = getelementptr inbounds { i64, ptr }, ptr %choice.res232, i32 0, i32 0
  %eq.lhs.len234 = load i64, ptr %eq.lhs.len233, align 8
  %eq.lhs.len235 = and i64 %eq.lhs.len234, 281474976710655
  %str.tag236 = lshr i64 %eq.lhs.len234, 48
  %str.immortal237 = icmp eq i64 %str.tag236, 0
  br i1 %str.immortal237, label %str_ok239, label %str_gen_check238

str_gen_check238:                                 ; preds = %choice.exit225
  %arena.cur241 = call ptr @dva_arena_current()
  %tag.valid242 = call i1 @dva_arena_validate_tag(ptr %arena.cur241, i64 %str.tag236)
  br i1 %tag.valid242, label %str_ok239, label %str_stale240

str_ok239:                                        ; preds = %str_stale240, %str_gen_check238, %choice.exit225
  %eq.rhs.len243 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len244 = and i64 %eq.rhs.len243, 281474976710655
  %str.tag245 = lshr i64 %eq.rhs.len243, 48
  %str.immortal246 = icmp eq i64 %str.tag245, 0
  br i1 %str.immortal246, label %str_ok248, label %str_gen_check247

str_stale240:                                     ; preds = %str_gen_check238
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok239

str_gen_check247:                                 ; preds = %str_ok239
  %arena.cur250 = call ptr @dva_arena_current()
  %tag.valid251 = call i1 @dva_arena_validate_tag(ptr %arena.cur250, i64 %str.tag245)
  br i1 %tag.valid251, label %str_ok248, label %str_stale249

str_ok248:                                        ; preds = %str_stale249, %str_gen_check247, %str_ok239
  %eq.len252 = icmp eq i64 %eq.lhs.len235, %eq.rhs.len244
  br i1 %eq.len252, label %str.eq.then253, label %str.eq.else254

str_stale249:                                     ; preds = %str_gen_check247
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok248

str.eq.then253:                                   ; preds = %str_ok248
  %eq.lhs.data256 = getelementptr inbounds { i64, ptr }, ptr %choice.res232, i32 0, i32 1
  %eq.lhs.data257 = load ptr, ptr %eq.lhs.data256, align 8
  %eq.rhs.data258 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp259 = call i32 @memcmp(ptr %eq.lhs.data257, ptr %eq.rhs.data258, i64 %eq.lhs.len235)
  %eq.cmp.zero260 = icmp eq i32 %eq.memcmp259, 0
  br label %str.eq.merge255

str.eq.else254:                                   ; preds = %str_ok248
  br label %str.eq.merge255

str.eq.merge255:                                  ; preds = %str.eq.else254, %str.eq.then253
  %str.eq.result261 = phi i1 [ %eq.cmp.zero260, %str.eq.then253 ], [ false, %str.eq.else254 ]
  %str.neq262 = xor i1 %str.eq.result261, true
  br i1 %str.neq262, label %choice.then263, label %choice.exit264

choice.then263:                                   ; preds = %str.eq.merge255
  %var.load265 = load ptr, ptr %var.b, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load265, i32 0, i32 0
  %b.len266 = load i64, ptr %b.len, align 8
  %cmptmp267 = icmp sgt i64 %b.len266, 0
  br i1 %cmptmp267, label %choice.then268, label %choice.exit269

choice.exit264:                                   ; preds = %b.grow_done318, %str.eq.merge255
  br label %loop.latch.51

choice.then268:                                   ; preds = %choice.then263
  %b.load = load ptr, ptr %var.b, align 8
  %var.load270 = load ptr, ptr @"var.path::SEP_STR", align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load270, i32 0, i32 0
  %app.str.len271 = load i64, ptr %app.str.len, align 8
  %app.str.len272 = and i64 %app.str.len271, 281474976710655
  %str.tag273 = lshr i64 %app.str.len271, 48
  %str.immortal274 = icmp eq i64 %str.tag273, 0
  br i1 %str.immortal274, label %str_ok276, label %str_gen_check275

choice.exit269:                                   ; preds = %b.grow_done, %choice.then263
  %b.load296 = load ptr, ptr %var.b, align 8
  %app.str.len297 = load i64, ptr @str.5.struct, align 8
  %app.str.len298 = and i64 %app.str.len297, 281474976710655
  %str.tag299 = lshr i64 %app.str.len297, 48
  %str.immortal300 = icmp eq i64 %str.tag299, 0
  br i1 %str.immortal300, label %str_ok302, label %str_gen_check301

str_gen_check275:                                 ; preds = %choice.then268
  %arena.cur278 = call ptr @dva_arena_current()
  %tag.valid279 = call i1 @dva_arena_validate_tag(ptr %arena.cur278, i64 %str.tag273)
  br i1 %tag.valid279, label %str_ok276, label %str_stale277

str_ok276:                                        ; preds = %str_stale277, %str_gen_check275, %choice.then268
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len280 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len280, i64 %app.str.len272)
  %sum281 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf282 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf282, label %str_overflow_abort284, label %b.app.new.len283

str_stale277:                                     ; preds = %str_gen_check275
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok276

b.app.new.len283:                                 ; preds = %str_overflow_abort284, %str_ok276
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap285 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap285, %sum281
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort284:                            ; preds = %str_ok276
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len283

b.grow2:                                          ; preds = %b.app.new.len283
  %b.cap2 = mul i64 %b.cap285, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum281
  %b.new.cap = select i1 %b.cap.need, i64 %sum281, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len2286 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data2287 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum288 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf289 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf289, label %str_overflow_abort291, label %b.new.buf.len2290

b.nogrow2:                                        ; preds = %b.app.new.len283
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2290
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load270, i32 0, i32 1
  %app.str.data293 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data294 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data294, i64 %b.app.cur.len280
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data293, i64 %app.str.len272, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data294, i64 %sum281
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep295 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum281, ptr %b.len.gep295, align 8
  br label %choice.exit269

b.new.buf.len2290:                                ; preds = %str_overflow_abort291, %b.grow2
  %arena.cur292 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur292, i64 %sum288)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2287, i64 %b.cur.len2286, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2286
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort291:                            ; preds = %b.grow2
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2290

str_gen_check301:                                 ; preds = %choice.exit269
  %arena.cur304 = call ptr @dva_arena_current()
  %tag.valid305 = call i1 @dva_arena_validate_tag(ptr %arena.cur304, i64 %str.tag299)
  br i1 %tag.valid305, label %str_ok302, label %str_stale303

str_ok302:                                        ; preds = %str_stale303, %str_gen_check301, %choice.exit269
  %b.app.cur.len306 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load296, i32 0, i32 0
  %b.app.cur.len307 = load i64, ptr %b.app.cur.len306, align 8
  %b.app.new.len308 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len307, i64 %app.str.len298)
  %sum309 = extractvalue { i64, i1 } %b.app.new.len308, 0
  %ovf310 = extractvalue { i64, i1 } %b.app.new.len308, 1
  br i1 %ovf310, label %str_overflow_abort312, label %b.app.new.len311

str_stale303:                                     ; preds = %str_gen_check301
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok302

b.app.new.len311:                                 ; preds = %str_overflow_abort312, %str_ok302
  %b.cap313 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load296, i32 0, i32 2
  %b.cap314 = load i64, ptr %b.cap313, align 8
  %b.need.grow315 = icmp slt i64 %b.cap314, %sum309
  br i1 %b.need.grow315, label %b.grow2316, label %b.nogrow2317

str_overflow_abort312:                            ; preds = %str_ok302
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len311

b.grow2316:                                       ; preds = %b.app.new.len311
  %b.cap2319 = mul i64 %b.cap314, 2
  %b.cap.small320 = icmp slt i64 %b.cap2319, 16
  %b.cap.grow321 = select i1 %b.cap.small320, i64 16, i64 %b.cap2319
  %b.cap.need322 = icmp slt i64 %b.cap.grow321, %sum309
  %b.new.cap323 = select i1 %b.cap.need322, i64 %sum309, i64 %b.cap.grow321
  %b.cur.len2324 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load296, i32 0, i32 0
  %b.cur.len2325 = load i64, ptr %b.cur.len2324, align 8
  %b.cur.data2326 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load296, i32 0, i32 1
  %b.cur.data2327 = load ptr, ptr %b.cur.data2326, align 8
  %b.new.buf.len2328 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap323, i64 1)
  %sum329 = extractvalue { i64, i1 } %b.new.buf.len2328, 0
  %ovf330 = extractvalue { i64, i1 } %b.new.buf.len2328, 1
  br i1 %ovf330, label %str_overflow_abort332, label %b.new.buf.len2331

b.nogrow2317:                                     ; preds = %b.app.new.len311
  br label %b.grow_done318

b.grow_done318:                                   ; preds = %b.nogrow2317, %b.new.buf.len2331
  %app.str.data338 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %b.app.data339 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load296, i32 0, i32 1
  %b.app.data340 = load ptr, ptr %b.app.data339, align 8
  %b.app.dst341 = getelementptr i8, ptr %b.app.data340, i64 %b.app.cur.len307
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst341, ptr align 1 %app.str.data338, i64 %app.str.len298, i1 false)
  %b.app.nul342 = getelementptr i8, ptr %b.app.data340, i64 %sum309
  store i8 0, ptr %b.app.nul342, align 1
  %b.len.gep343 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load296, i32 0, i32 0
  store i64 %sum309, ptr %b.len.gep343, align 8
  br label %choice.exit264

b.new.buf.len2331:                                ; preds = %str_overflow_abort332, %b.grow2316
  %arena.cur333 = call ptr @dva_arena_current()
  %b.new.buf2334 = call ptr @dva_arena_alloc(ptr %arena.cur333, i64 %sum329)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2334, ptr align 1 %b.cur.data2327, i64 %b.cur.len2325, i1 false)
  %b.grow2.nul335 = getelementptr i8, ptr %b.new.buf2334, i64 %b.cur.len2325
  store i8 0, ptr %b.grow2.nul335, align 1
  %b.new.data2.gep336 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load296, i32 0, i32 1
  store ptr %b.new.buf2334, ptr %b.new.data2.gep336, align 8
  %b.new.cap2.gep337 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load296, i32 0, i32 2
  store i64 %b.new.cap323, ptr %b.new.cap2.gep337, align 8
  br label %b.grow_done318

str_overflow_abort332:                            ; preds = %b.grow2316
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2331

a.create350:                                      ; preds = %loop.exit.51
  %arena.cur352 = call ptr @dva_arena_current()
  %a.create353 = call ptr @dva_arena_alloc(ptr %arena.cur352, i64 24)
  %arena.cur354 = call ptr @dva_arena_current()
  %a.buf355 = call ptr @dva_arena_alloc(ptr %arena.cur354, i64 128)
  %a.len.gep356 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create353, i32 0, i32 0
  store i64 0, ptr %a.len.gep356, align 8
  %a.data.gep357 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create353, i32 0, i32 1
  store ptr %a.buf355, ptr %a.data.gep357, align 8
  %a.cap.gep358 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create353, i32 0, i32 2
  store i64 16, ptr %a.cap.gep358, align 8
  store ptr %a.create353, ptr %var.ta, align 8
  br label %a.after351

a.after351:                                       ; preds = %a.create350, %loop.exit.51
  %a.load2359 = load ptr, ptr %var.ta, align 8
  %a.len.query360 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2359, i32 0, i32 0
  %a.len.query361 = load i64, ptr %a.len.query360, align 8
  store i64 %var.load346, ptr %loop.idx.52, align 8
  br label %loop.header.52

loop.header.52:                                   ; preds = %loop.latch.52, %a.after351
  %counter.load362 = load i64, ptr %loop.idx.52, align 8
  %loop.cond363 = icmp slt i64 %counter.load362, %a.len.query361
  br i1 %loop.cond363, label %loop.body.52, label %loop.exit.nat.52

loop.body.52:                                     ; preds = %loop.header.52
  %loop.rel.i364 = sub i64 %counter.load362, %var.load346
  store i64 1, ptr %loop.step.52, align 8
  store i64 %loop.rel.i364, ptr %var._i365, align 8
  store i64 %counter.load362, ptr %var._366, align 8
  store i64 %counter.load362, ptr %var.i, align 8
  %var.load367 = load ptr, ptr %var.ta, align 8
  %a.load368 = load ptr, ptr %var.ta, align 8
  %a.null369 = icmp eq ptr %a.load368, null
  br i1 %a.null369, label %a.create370, label %a.after371

loop.exit.nat.52:                                 ; preds = %loop.header.52
  br label %loop.exit.52

loop.latch.52:                                    ; preds = %choice.exit465
  %step.val574 = load i64, ptr %loop.step.52, align 8
  %loop.next575 = add i64 %counter.load362, %step.val574
  store i64 %loop.next575, ptr %loop.idx.52, align 8
  br label %loop.header.52

loop.exit.52:                                     ; preds = %loop.exit.nat.52
  %var.load576 = load ptr, ptr %var.b, align 8
  %b.len577 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load576, i32 0, i32 0
  %b.len578 = load i64, ptr %b.len577, align 8
  %cmptmp579 = icmp eq i64 %b.len578, 0
  br i1 %cmptmp579, label %choice.then580, label %choice.else581

a.create370:                                      ; preds = %loop.body.52
  %arena.cur372 = call ptr @dva_arena_current()
  %a.create373 = call ptr @dva_arena_alloc(ptr %arena.cur372, i64 24)
  %arena.cur374 = call ptr @dva_arena_current()
  %a.buf375 = call ptr @dva_arena_alloc(ptr %arena.cur374, i64 128)
  %a.len.gep376 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create373, i32 0, i32 0
  store i64 0, ptr %a.len.gep376, align 8
  %a.data.gep377 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create373, i32 0, i32 1
  store ptr %a.buf375, ptr %a.data.gep377, align 8
  %a.cap.gep378 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create373, i32 0, i32 2
  store i64 16, ptr %a.cap.gep378, align 8
  store ptr %a.create373, ptr %var.ta, align 8
  br label %a.after371

a.after371:                                       ; preds = %a.create370, %loop.body.52
  %a.load2379 = load ptr, ptr %var.ta, align 8
  %var.load380 = load i64, ptr %var.i, align 8
  %a.rd.nonnull381 = icmp ne ptr %a.load2379, null
  br i1 %a.rd.nonnull381, label %a.rd.check382, label %a.rd.err.null384

a.rd.check382:                                    ; preds = %a.after371
  %a.rd.len387 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2379, i32 0, i32 0
  %a.rd.len388 = load i64, ptr %a.rd.len387, align 8
  %a.rd.ge0389 = icmp sge i64 %var.load380, 0
  %a.rd.lt390 = icmp slt i64 %var.load380, %a.rd.len388
  %a.rd.bounds391 = and i1 %a.rd.ge0389, %a.rd.lt390
  br i1 %a.rd.bounds391, label %a.rd.ok383, label %a.rd.err.oob385

a.rd.ok383:                                       ; preds = %a.rd.check382
  %a.rd.data392 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2379, i32 0, i32 1
  %a.rd.data393 = load ptr, ptr %a.rd.data392, align 8
  %a.rd.elem.gep394 = getelementptr i64, ptr %a.rd.data393, i64 %var.load380
  %a.rd.elem395 = load i64, ptr %a.rd.elem.gep394, align 8
  br label %a.rd.done386

a.rd.err.null384:                                 ; preds = %a.after371
  %arena.cur396 = call ptr @dva_arena_current()
  %err.alloc397 = call ptr @dva_arena_alloc(ptr %arena.cur396, i64 56)
  %err.code.gep398 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc397, i32 0, i32 0
  store i64 4011, ptr %err.code.gep398, align 8
  %err.msg.gep399 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc397, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep399, align 8
  %err.file.gep400 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc397, i32 0, i32 2
  store ptr @str.7.struct, ptr %err.file.gep400, align 8
  %err.line.gep401 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc397, i32 0, i32 3
  store i64 355, ptr %err.line.gep401, align 8
  %err.col.gep402 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc397, i32 0, i32 4
  store i64 19, ptr %err.col.gep402, align 8
  %err.ctx.gep403 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc397, i32 0, i32 5
  %err.ctx0.gep404 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep403, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep404, align 8
  %err.ctx1.gep405 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep403, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep405, align 8
  %err.p2i406 = ptrtoint ptr %err.alloc397 to i64
  br label %a.rd.done386

a.rd.err.oob385:                                  ; preds = %a.rd.check382
  %arena.cur407 = call ptr @dva_arena_current()
  %err.alloc408 = call ptr @dva_arena_alloc(ptr %arena.cur407, i64 56)
  %err.code.gep409 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc408, i32 0, i32 0
  store i64 4011, ptr %err.code.gep409, align 8
  %err.msg.gep410 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc408, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep410, align 8
  %err.file.gep411 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc408, i32 0, i32 2
  store ptr @str.7.struct, ptr %err.file.gep411, align 8
  %err.line.gep412 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc408, i32 0, i32 3
  store i64 355, ptr %err.line.gep412, align 8
  %err.col.gep413 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc408, i32 0, i32 4
  store i64 19, ptr %err.col.gep413, align 8
  %err.ctx.gep414 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc408, i32 0, i32 5
  %err.ctx0.gep415 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep414, i32 0, i32 0
  store i64 %var.load380, ptr %err.ctx0.gep415, align 8
  %err.ctx1.gep416 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep414, i32 0, i32 1
  store i64 %a.rd.len388, ptr %err.ctx1.gep416, align 8
  %err.p2i417 = ptrtoint ptr %err.alloc408 to i64
  br label %a.rd.done386

a.rd.done386:                                     ; preds = %a.rd.err.oob385, %a.rd.err.null384, %a.rd.ok383
  %a.rd.tag418 = phi i1 [ true, %a.rd.ok383 ], [ false, %a.rd.err.null384 ], [ false, %a.rd.err.oob385 ]
  %a.rd.pay419 = phi i64 [ %a.rd.elem395, %a.rd.ok383 ], [ %err.p2i406, %a.rd.err.null384 ], [ %err.p2i417, %a.rd.err.oob385 ]
  %ram.tag420 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag418, 0
  %ram.pay421 = insertvalue { i1, i64 } %ram.tag420, i64 %a.rd.pay419, 1
  %ram.tag422 = extractvalue { i1, i64 } %ram.pay421, 0
  br i1 %ram.tag422, label %choice.then423, label %choice.else424

choice.then423:                                   ; preds = %a.rd.done386
  %ram.pay426 = extractvalue { i1, i64 } %ram.pay421, 1
  %pay.ptr427 = inttoptr i64 %ram.pay426 to ptr
  store ptr %pay.ptr427, ptr %var._428, align 8
  br label %choice.exit425

choice.else424:                                   ; preds = %a.rd.done386
  %ram.pay429 = extractvalue { i1, i64 } %ram.pay421, 1
  %pay.ptr430 = inttoptr i64 %ram.pay429 to ptr
  store ptr %pay.ptr430, ptr %var._431, align 8
  br label %choice.exit425

choice.exit425:                                   ; preds = %choice.else424, %choice.then423
  %choice.res432 = phi ptr [ %pay.ptr427, %choice.then423 ], [ @str.4.struct, %choice.else424 ]
  store ptr %choice.res432, ptr %var.seg, align 8
  %var.load433 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len434 = getelementptr inbounds { i64, ptr }, ptr %var.load433, i32 0, i32 0
  %eq.lhs.len435 = load i64, ptr %eq.lhs.len434, align 8
  %eq.lhs.len436 = and i64 %eq.lhs.len435, 281474976710655
  %str.tag437 = lshr i64 %eq.lhs.len435, 48
  %str.immortal438 = icmp eq i64 %str.tag437, 0
  br i1 %str.immortal438, label %str_ok440, label %str_gen_check439

str_gen_check439:                                 ; preds = %choice.exit425
  %arena.cur442 = call ptr @dva_arena_current()
  %tag.valid443 = call i1 @dva_arena_validate_tag(ptr %arena.cur442, i64 %str.tag437)
  br i1 %tag.valid443, label %str_ok440, label %str_stale441

str_ok440:                                        ; preds = %str_stale441, %str_gen_check439, %choice.exit425
  %eq.rhs.len444 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len445 = and i64 %eq.rhs.len444, 281474976710655
  %str.tag446 = lshr i64 %eq.rhs.len444, 48
  %str.immortal447 = icmp eq i64 %str.tag446, 0
  br i1 %str.immortal447, label %str_ok449, label %str_gen_check448

str_stale441:                                     ; preds = %str_gen_check439
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok440

str_gen_check448:                                 ; preds = %str_ok440
  %arena.cur451 = call ptr @dva_arena_current()
  %tag.valid452 = call i1 @dva_arena_validate_tag(ptr %arena.cur451, i64 %str.tag446)
  br i1 %tag.valid452, label %str_ok449, label %str_stale450

str_ok449:                                        ; preds = %str_stale450, %str_gen_check448, %str_ok440
  %eq.len453 = icmp eq i64 %eq.lhs.len436, %eq.rhs.len445
  br i1 %eq.len453, label %str.eq.then454, label %str.eq.else455

str_stale450:                                     ; preds = %str_gen_check448
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok449

str.eq.then454:                                   ; preds = %str_ok449
  %eq.lhs.data457 = getelementptr inbounds { i64, ptr }, ptr %var.load433, i32 0, i32 1
  %eq.lhs.data458 = load ptr, ptr %eq.lhs.data457, align 8
  %eq.rhs.data459 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp460 = call i32 @memcmp(ptr %eq.lhs.data458, ptr %eq.rhs.data459, i64 %eq.lhs.len436)
  %eq.cmp.zero461 = icmp eq i32 %eq.memcmp460, 0
  br label %str.eq.merge456

str.eq.else455:                                   ; preds = %str_ok449
  br label %str.eq.merge456

str.eq.merge456:                                  ; preds = %str.eq.else455, %str.eq.then454
  %str.eq.result462 = phi i1 [ %eq.cmp.zero461, %str.eq.then454 ], [ false, %str.eq.else455 ]
  %str.neq463 = xor i1 %str.eq.result462, true
  br i1 %str.neq463, label %choice.then464, label %choice.exit465

choice.then464:                                   ; preds = %str.eq.merge456
  %var.load466 = load ptr, ptr %var.b, align 8
  %b.len467 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load466, i32 0, i32 0
  %b.len468 = load i64, ptr %b.len467, align 8
  %cmptmp469 = icmp sgt i64 %b.len468, 0
  br i1 %cmptmp469, label %choice.then470, label %choice.exit471

choice.exit465:                                   ; preds = %b.grow_done547, %str.eq.merge456
  br label %loop.latch.52

choice.then470:                                   ; preds = %choice.then464
  %b.load472 = load ptr, ptr %var.b, align 8
  %var.load473 = load ptr, ptr @"var.path::SEP_STR", align 8
  %app.str.len474 = getelementptr inbounds { i64, ptr }, ptr %var.load473, i32 0, i32 0
  %app.str.len475 = load i64, ptr %app.str.len474, align 8
  %app.str.len476 = and i64 %app.str.len475, 281474976710655
  %str.tag477 = lshr i64 %app.str.len475, 48
  %str.immortal478 = icmp eq i64 %str.tag477, 0
  br i1 %str.immortal478, label %str_ok480, label %str_gen_check479

choice.exit471:                                   ; preds = %b.grow_done496, %choice.then464
  %b.load523 = load ptr, ptr %var.b, align 8
  %var.load524 = load ptr, ptr %var.seg, align 8
  %app.str.len525 = getelementptr inbounds { i64, ptr }, ptr %var.load524, i32 0, i32 0
  %app.str.len526 = load i64, ptr %app.str.len525, align 8
  %app.str.len527 = and i64 %app.str.len526, 281474976710655
  %str.tag528 = lshr i64 %app.str.len526, 48
  %str.immortal529 = icmp eq i64 %str.tag528, 0
  br i1 %str.immortal529, label %str_ok531, label %str_gen_check530

str_gen_check479:                                 ; preds = %choice.then470
  %arena.cur482 = call ptr @dva_arena_current()
  %tag.valid483 = call i1 @dva_arena_validate_tag(ptr %arena.cur482, i64 %str.tag477)
  br i1 %tag.valid483, label %str_ok480, label %str_stale481

str_ok480:                                        ; preds = %str_stale481, %str_gen_check479, %choice.then470
  %b.app.cur.len484 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load472, i32 0, i32 0
  %b.app.cur.len485 = load i64, ptr %b.app.cur.len484, align 8
  %b.app.new.len486 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len485, i64 %app.str.len476)
  %sum487 = extractvalue { i64, i1 } %b.app.new.len486, 0
  %ovf488 = extractvalue { i64, i1 } %b.app.new.len486, 1
  br i1 %ovf488, label %str_overflow_abort490, label %b.app.new.len489

str_stale481:                                     ; preds = %str_gen_check479
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok480

b.app.new.len489:                                 ; preds = %str_overflow_abort490, %str_ok480
  %b.cap491 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load472, i32 0, i32 2
  %b.cap492 = load i64, ptr %b.cap491, align 8
  %b.need.grow493 = icmp slt i64 %b.cap492, %sum487
  br i1 %b.need.grow493, label %b.grow2494, label %b.nogrow2495

str_overflow_abort490:                            ; preds = %str_ok480
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len489

b.grow2494:                                       ; preds = %b.app.new.len489
  %b.cap2497 = mul i64 %b.cap492, 2
  %b.cap.small498 = icmp slt i64 %b.cap2497, 16
  %b.cap.grow499 = select i1 %b.cap.small498, i64 16, i64 %b.cap2497
  %b.cap.need500 = icmp slt i64 %b.cap.grow499, %sum487
  %b.new.cap501 = select i1 %b.cap.need500, i64 %sum487, i64 %b.cap.grow499
  %b.cur.len2502 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load472, i32 0, i32 0
  %b.cur.len2503 = load i64, ptr %b.cur.len2502, align 8
  %b.cur.data2504 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load472, i32 0, i32 1
  %b.cur.data2505 = load ptr, ptr %b.cur.data2504, align 8
  %b.new.buf.len2506 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap501, i64 1)
  %sum507 = extractvalue { i64, i1 } %b.new.buf.len2506, 0
  %ovf508 = extractvalue { i64, i1 } %b.new.buf.len2506, 1
  br i1 %ovf508, label %str_overflow_abort510, label %b.new.buf.len2509

b.nogrow2495:                                     ; preds = %b.app.new.len489
  br label %b.grow_done496

b.grow_done496:                                   ; preds = %b.nogrow2495, %b.new.buf.len2509
  %app.str.data516 = getelementptr inbounds { i64, ptr }, ptr %var.load473, i32 0, i32 1
  %app.str.data517 = load ptr, ptr %app.str.data516, align 8
  %b.app.data518 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load472, i32 0, i32 1
  %b.app.data519 = load ptr, ptr %b.app.data518, align 8
  %b.app.dst520 = getelementptr i8, ptr %b.app.data519, i64 %b.app.cur.len485
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst520, ptr align 1 %app.str.data517, i64 %app.str.len476, i1 false)
  %b.app.nul521 = getelementptr i8, ptr %b.app.data519, i64 %sum487
  store i8 0, ptr %b.app.nul521, align 1
  %b.len.gep522 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load472, i32 0, i32 0
  store i64 %sum487, ptr %b.len.gep522, align 8
  br label %choice.exit471

b.new.buf.len2509:                                ; preds = %str_overflow_abort510, %b.grow2494
  %arena.cur511 = call ptr @dva_arena_current()
  %b.new.buf2512 = call ptr @dva_arena_alloc(ptr %arena.cur511, i64 %sum507)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2512, ptr align 1 %b.cur.data2505, i64 %b.cur.len2503, i1 false)
  %b.grow2.nul513 = getelementptr i8, ptr %b.new.buf2512, i64 %b.cur.len2503
  store i8 0, ptr %b.grow2.nul513, align 1
  %b.new.data2.gep514 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load472, i32 0, i32 1
  store ptr %b.new.buf2512, ptr %b.new.data2.gep514, align 8
  %b.new.cap2.gep515 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load472, i32 0, i32 2
  store i64 %b.new.cap501, ptr %b.new.cap2.gep515, align 8
  br label %b.grow_done496

str_overflow_abort510:                            ; preds = %b.grow2494
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2509

str_gen_check530:                                 ; preds = %choice.exit471
  %arena.cur533 = call ptr @dva_arena_current()
  %tag.valid534 = call i1 @dva_arena_validate_tag(ptr %arena.cur533, i64 %str.tag528)
  br i1 %tag.valid534, label %str_ok531, label %str_stale532

str_ok531:                                        ; preds = %str_stale532, %str_gen_check530, %choice.exit471
  %b.app.cur.len535 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load523, i32 0, i32 0
  %b.app.cur.len536 = load i64, ptr %b.app.cur.len535, align 8
  %b.app.new.len537 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len536, i64 %app.str.len527)
  %sum538 = extractvalue { i64, i1 } %b.app.new.len537, 0
  %ovf539 = extractvalue { i64, i1 } %b.app.new.len537, 1
  br i1 %ovf539, label %str_overflow_abort541, label %b.app.new.len540

str_stale532:                                     ; preds = %str_gen_check530
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok531

b.app.new.len540:                                 ; preds = %str_overflow_abort541, %str_ok531
  %b.cap542 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load523, i32 0, i32 2
  %b.cap543 = load i64, ptr %b.cap542, align 8
  %b.need.grow544 = icmp slt i64 %b.cap543, %sum538
  br i1 %b.need.grow544, label %b.grow2545, label %b.nogrow2546

str_overflow_abort541:                            ; preds = %str_ok531
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len540

b.grow2545:                                       ; preds = %b.app.new.len540
  %b.cap2548 = mul i64 %b.cap543, 2
  %b.cap.small549 = icmp slt i64 %b.cap2548, 16
  %b.cap.grow550 = select i1 %b.cap.small549, i64 16, i64 %b.cap2548
  %b.cap.need551 = icmp slt i64 %b.cap.grow550, %sum538
  %b.new.cap552 = select i1 %b.cap.need551, i64 %sum538, i64 %b.cap.grow550
  %b.cur.len2553 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load523, i32 0, i32 0
  %b.cur.len2554 = load i64, ptr %b.cur.len2553, align 8
  %b.cur.data2555 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load523, i32 0, i32 1
  %b.cur.data2556 = load ptr, ptr %b.cur.data2555, align 8
  %b.new.buf.len2557 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap552, i64 1)
  %sum558 = extractvalue { i64, i1 } %b.new.buf.len2557, 0
  %ovf559 = extractvalue { i64, i1 } %b.new.buf.len2557, 1
  br i1 %ovf559, label %str_overflow_abort561, label %b.new.buf.len2560

b.nogrow2546:                                     ; preds = %b.app.new.len540
  br label %b.grow_done547

b.grow_done547:                                   ; preds = %b.nogrow2546, %b.new.buf.len2560
  %app.str.data567 = getelementptr inbounds { i64, ptr }, ptr %var.load524, i32 0, i32 1
  %app.str.data568 = load ptr, ptr %app.str.data567, align 8
  %b.app.data569 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load523, i32 0, i32 1
  %b.app.data570 = load ptr, ptr %b.app.data569, align 8
  %b.app.dst571 = getelementptr i8, ptr %b.app.data570, i64 %b.app.cur.len536
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst571, ptr align 1 %app.str.data568, i64 %app.str.len527, i1 false)
  %b.app.nul572 = getelementptr i8, ptr %b.app.data570, i64 %sum538
  store i8 0, ptr %b.app.nul572, align 1
  %b.len.gep573 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load523, i32 0, i32 0
  store i64 %sum538, ptr %b.len.gep573, align 8
  br label %choice.exit465

b.new.buf.len2560:                                ; preds = %str_overflow_abort561, %b.grow2545
  %arena.cur562 = call ptr @dva_arena_current()
  %b.new.buf2563 = call ptr @dva_arena_alloc(ptr %arena.cur562, i64 %sum558)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2563, ptr align 1 %b.cur.data2556, i64 %b.cur.len2554, i1 false)
  %b.grow2.nul564 = getelementptr i8, ptr %b.new.buf2563, i64 %b.cur.len2554
  store i8 0, ptr %b.grow2.nul564, align 1
  %b.new.data2.gep565 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load523, i32 0, i32 1
  store ptr %b.new.buf2563, ptr %b.new.data2.gep565, align 8
  %b.new.cap2.gep566 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load523, i32 0, i32 2
  store i64 %b.new.cap552, ptr %b.new.cap2.gep566, align 8
  br label %b.grow_done547

str_overflow_abort561:                            ; preds = %b.grow2545
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2560

choice.then580:                                   ; preds = %loop.exit.52
  br label %choice.exit582

choice.else581:                                   ; preds = %loop.exit.52
  %var.load583 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load583, i32 0, i32 0
  %b.freeze.len584 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load583, i32 0, i32 1
  %b.freeze.data585 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.exit582:                                   ; preds = %b.freeze.done, %choice.then580
  %choice.res589 = phi ptr [ @str.3.struct, %choice.then580 ], [ %builder.freeze, %b.freeze.done ]
  ret ptr %choice.res589

b.freeze.check:                                   ; preds = %choice.else581
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data585, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data585, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data585, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len584, 1
  %arena.cur586 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur586, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data585, i64 %b.freeze.len584, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len584
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.else581
  %b.freeze.data587 = phi ptr [ %b.freeze.data585, %choice.else581 ], [ %b.freeze.data585, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur588 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur588, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len584, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data587, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load583, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load583, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load583, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit582
}

define i1 @"path::has_prefix"(ptr %0, ptr %1) #1 {
entry:
  %var.lp = alloca i64, align 8
  %var.clean_pre = alloca ptr, align 8
  %var.prefix = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store ptr %1, ptr %var.prefix, align 8
  %var.load = load ptr, ptr %var.prefix, align 8
  %call.res = call ptr @"path::strip_trailing_sep"(ptr %var.load)
  store ptr %call.res, ptr %var.clean_pre, align 8
  %var.load1 = load ptr, ptr %var.clean_pre, align 8
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
  store i64 %str.len.query3, ptr %var.lp, align 8
  %var.load4 = load i64, ptr %var.lp, align 8
  %cmptmp = icmp eq i64 %var.load4, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load5 = load ptr, ptr %var.p, align 8
  %var.load6 = load ptr, ptr %var.clean_pre, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len7 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len8 = and i64 %eq.lhs.len7, 281474976710655
  %str.tag9 = lshr i64 %eq.lhs.len7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check11:                                  ; preds = %choice.exit
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid15 = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %str.tag9)
  br i1 %tag.valid15, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %choice.exit
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.rhs.len16 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len17 = and i64 %eq.rhs.len16, 281474976710655
  %str.tag18 = lshr i64 %eq.rhs.len16, 48
  %str.immortal19 = icmp eq i64 %str.tag18, 0
  br i1 %str.immortal19, label %str_ok21, label %str_gen_check20

str_stale13:                                      ; preds = %str_gen_check11
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

str_gen_check20:                                  ; preds = %str_ok12
  %arena.cur23 = call ptr @dva_arena_current()
  %tag.valid24 = call i1 @dva_arena_validate_tag(ptr %arena.cur23, i64 %str.tag18)
  br i1 %tag.valid24, label %str_ok21, label %str_stale22

str_ok21:                                         ; preds = %str_stale22, %str_gen_check20, %str_ok12
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len17
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale22:                                      ; preds = %str_gen_check20
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok21

str.eq.then:                                      ; preds = %str_ok21
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data25 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.rhs.data26 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data25, ptr %eq.rhs.data26, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok21
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %or.53.then, label %or.53.else

or.53.then:                                       ; preds = %str.eq.merge
  br label %or.53.exit

or.53.else:                                       ; preds = %str.eq.merge
  %var.load27 = load ptr, ptr %var.p, align 8
  %str.len.query28 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %str.len.query29 = load i64, ptr %str.len.query28, align 8
  %str.len.query30 = and i64 %str.len.query29, 281474976710655
  %str.tag31 = lshr i64 %str.len.query29, 48
  %str.immortal32 = icmp eq i64 %str.tag31, 0
  br i1 %str.immortal32, label %str_ok34, label %str_gen_check33

or.53.exit:                                       ; preds = %and.55.exit, %or.53.then
  %or.53.phi = phi i1 [ %str.eq.result, %or.53.then ], [ %and.55.phi, %and.55.exit ]
  ret i1 %or.53.phi

str_gen_check33:                                  ; preds = %or.53.else
  %arena.cur36 = call ptr @dva_arena_current()
  %tag.valid37 = call i1 @dva_arena_validate_tag(ptr %arena.cur36, i64 %str.tag31)
  br i1 %tag.valid37, label %str_ok34, label %str_stale35

str_ok34:                                         ; preds = %str_stale35, %str_gen_check33, %or.53.else
  %var.load38 = load i64, ptr %var.lp, align 8
  %cmptmp39 = icmp sgt i64 %str.len.query30, %var.load38
  br i1 %cmptmp39, label %and.54.then, label %and.54.else

str_stale35:                                      ; preds = %str_gen_check33
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok34

and.54.then:                                      ; preds = %str_ok34
  %var.load40 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 0
  %s.read.len41 = load i64, ptr %s.read.len, align 8
  %s.read.len42 = and i64 %s.read.len41, 281474976710655
  %str.tag43 = lshr i64 %s.read.len41, 48
  %str.immortal44 = icmp eq i64 %str.tag43, 0
  br i1 %str.immortal44, label %str_ok46, label %str_gen_check45

and.54.else:                                      ; preds = %str_ok34
  br label %and.54.exit

and.54.exit:                                      ; preds = %and.54.else, %str.eq.merge77
  %and.54.phi = phi i1 [ %str.eq.result84, %str.eq.merge77 ], [ %cmptmp39, %and.54.else ]
  br i1 %and.54.phi, label %and.55.then, label %and.55.else

str_gen_check45:                                  ; preds = %and.54.then
  %arena.cur48 = call ptr @dva_arena_current()
  %tag.valid49 = call i1 @dva_arena_validate_tag(ptr %arena.cur48, i64 %str.tag43)
  br i1 %tag.valid49, label %str_ok46, label %str_stale47

str_ok46:                                         ; preds = %str_stale47, %str_gen_check45, %and.54.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 1
  %s.read.data50 = load ptr, ptr %s.read.data, align 8
  %var.load51 = load i64, ptr %var.lp, align 8
  %rel.start = add i64 %s.read.len42, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len42
  %final.start = select i1 %start.gt.len, i64 %s.read.len42, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load51, 0
  %rel.end = add i64 %s.read.len42, %var.load51
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load51
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len42
  %final.end = select i1 %end.gt.len, i64 %s.read.len42, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data50, i64 %final.start
  %arena.cur52 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %var.load53 = load ptr, ptr %var.clean_pre, align 8
  %eq.lhs.len54 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len55 = load i64, ptr %eq.lhs.len54, align 8
  %eq.lhs.len56 = and i64 %eq.lhs.len55, 281474976710655
  %str.tag57 = lshr i64 %eq.lhs.len55, 48
  %str.immortal58 = icmp eq i64 %str.tag57, 0
  br i1 %str.immortal58, label %str_ok60, label %str_gen_check59

str_stale47:                                      ; preds = %str_gen_check45
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok46

str_gen_check59:                                  ; preds = %str_ok46
  %arena.cur62 = call ptr @dva_arena_current()
  %tag.valid63 = call i1 @dva_arena_validate_tag(ptr %arena.cur62, i64 %str.tag57)
  br i1 %tag.valid63, label %str_ok60, label %str_stale61

str_ok60:                                         ; preds = %str_stale61, %str_gen_check59, %str_ok46
  %eq.rhs.len64 = getelementptr inbounds { i64, ptr }, ptr %var.load53, i32 0, i32 0
  %eq.rhs.len65 = load i64, ptr %eq.rhs.len64, align 8
  %eq.rhs.len66 = and i64 %eq.rhs.len65, 281474976710655
  %str.tag67 = lshr i64 %eq.rhs.len65, 48
  %str.immortal68 = icmp eq i64 %str.tag67, 0
  br i1 %str.immortal68, label %str_ok70, label %str_gen_check69

str_stale61:                                      ; preds = %str_gen_check59
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok60

str_gen_check69:                                  ; preds = %str_ok60
  %arena.cur72 = call ptr @dva_arena_current()
  %tag.valid73 = call i1 @dva_arena_validate_tag(ptr %arena.cur72, i64 %str.tag67)
  br i1 %tag.valid73, label %str_ok70, label %str_stale71

str_ok70:                                         ; preds = %str_stale71, %str_gen_check69, %str_ok60
  %eq.len74 = icmp eq i64 %eq.lhs.len56, %eq.rhs.len66
  br i1 %eq.len74, label %str.eq.then75, label %str.eq.else76

str_stale71:                                      ; preds = %str_gen_check69
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok70

str.eq.then75:                                    ; preds = %str_ok70
  %eq.lhs.data78 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data79 = load ptr, ptr %eq.lhs.data78, align 8
  %eq.rhs.data80 = getelementptr inbounds { i64, ptr }, ptr %var.load53, i32 0, i32 1
  %eq.rhs.data81 = load ptr, ptr %eq.rhs.data80, align 8
  %eq.memcmp82 = call i32 @memcmp(ptr %eq.lhs.data79, ptr %eq.rhs.data81, i64 %eq.lhs.len56)
  %eq.cmp.zero83 = icmp eq i32 %eq.memcmp82, 0
  br label %str.eq.merge77

str.eq.else76:                                    ; preds = %str_ok70
  br label %str.eq.merge77

str.eq.merge77:                                   ; preds = %str.eq.else76, %str.eq.then75
  %str.eq.result84 = phi i1 [ %eq.cmp.zero83, %str.eq.then75 ], [ false, %str.eq.else76 ]
  br label %and.54.exit

and.55.then:                                      ; preds = %and.54.exit
  %var.load85 = load ptr, ptr %var.p, align 8
  %s.read.len86 = getelementptr inbounds { i64, ptr }, ptr %var.load85, i32 0, i32 0
  %s.read.len87 = load i64, ptr %s.read.len86, align 8
  %s.read.len88 = and i64 %s.read.len87, 281474976710655
  %str.tag89 = lshr i64 %s.read.len87, 48
  %str.immortal90 = icmp eq i64 %str.tag89, 0
  br i1 %str.immortal90, label %str_ok92, label %str_gen_check91

and.55.else:                                      ; preds = %and.54.exit
  br label %and.55.exit

and.55.exit:                                      ; preds = %and.55.else, %idx_ok
  %and.55.phi = phi i1 [ %call.res99, %idx_ok ], [ %and.54.phi, %and.55.else ]
  br label %or.53.exit

str_gen_check91:                                  ; preds = %and.55.then
  %arena.cur94 = call ptr @dva_arena_current()
  %tag.valid95 = call i1 @dva_arena_validate_tag(ptr %arena.cur94, i64 %str.tag89)
  br i1 %tag.valid95, label %str_ok92, label %str_stale93

str_ok92:                                         ; preds = %str_stale93, %str_gen_check91, %and.55.then
  %s.read.data96 = getelementptr inbounds { i64, ptr }, ptr %var.load85, i32 0, i32 1
  %s.read.data97 = load ptr, ptr %s.read.data96, align 8
  %var.load98 = load i64, ptr %var.lp, align 8
  %idx.neg = icmp slt i64 %var.load98, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale93:                                      ; preds = %str_gen_check91
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok92

idx_big_check:                                    ; preds = %str_ok92
  %idx.big = icmp sge i64 %var.load98, %s.read.len88
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data97, i64 %var.load98
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res99 = call i1 @"path::is_sep"(i64 %s.byte.val)
  br label %and.55.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok92
  %10 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok
}

define i1 @"path::has_traversal"(ptr %0) #1 {
entry:
  %var.seg_len = alloca i64, align 8
  %var.c = alloca i32, align 4
  %var.is_end = alloca i1, align 1
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.56 = alloca i64, align 8
  %loop.idx.56 = alloca i64, align 8
  %"var.start'" = alloca i64, align 8
  %"var.found'" = alloca i1, align 1
  %var.len = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
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
  store i1 false, ptr %"var.found'", align 1
  store i64 0, ptr %"var.start'", align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %addtmp = add i64 %var.load3, 1
  store i64 0, ptr %loop.idx.56, align 8
  br label %loop.header.56

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.56:                                   ; preds = %loop.latch.56, %str_ok
  %counter.load = load i64, ptr %loop.idx.56, align 8
  %loop.cond = icmp slt i64 %counter.load, %addtmp
  br i1 %loop.cond, label %loop.body.56, label %loop.exit.nat.56

loop.body.56:                                     ; preds = %loop.header.56
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.56, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load4 = load i64, ptr %var.i, align 8
  %var.load5 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load4, %var.load5
  store i1 %cmptmp, ptr %var.is_end, align 1
  %var.load6 = load i1, ptr %var.is_end, align 1
  br i1 %var.load6, label %choice.then, label %choice.else

loop.exit.nat.56:                                 ; preds = %loop.header.56
  br label %loop.exit.56

loop.latch.56:                                    ; preds = %choice.exit21
  %step.val = load i64, ptr %loop.step.56, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.56, align 8
  br label %loop.header.56

loop.exit.56:                                     ; preds = %choice.then73, %loop.exit.nat.56
  %var.load77 = load i1, ptr %"var.found'", align 1
  ret i1 %var.load77

choice.then:                                      ; preds = %loop.body.56
  br label %choice.exit

choice.else:                                      ; preds = %loop.body.56
  %var.load7 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %str.tag10 = lshr i64 %s.read.len8, 48
  %str.immortal11 = icmp eq i64 %str.tag10, 0
  br i1 %str.immortal11, label %str_ok13, label %str_gen_check12

choice.exit:                                      ; preds = %idx_ok, %choice.then
  %choice.res = phi i32 [ 47, %choice.then ], [ %coerce.trunc, %idx_ok ]
  store i32 %choice.res, ptr %var.c, align 4
  %var.load19 = load i32, ptr %var.c, align 4
  %coerce.sext = sext i32 %var.load19 to i64
  %call.res = call i1 @"path::is_win_sep"(i64 %coerce.sext)
  br i1 %call.res, label %choice.then20, label %choice.exit21

str_gen_check12:                                  ; preds = %choice.else
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag10)
  br i1 %tag.valid16, label %str_ok13, label %str_stale14

str_ok13:                                         ; preds = %str_stale14, %str_gen_check12, %choice.else
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %s.read.data17 = load ptr, ptr %s.read.data, align 8
  %var.load18 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load18, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale14:                                      ; preds = %str_gen_check12
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok13

idx_big_check:                                    ; preds = %str_ok13
  %idx.big = icmp sge i64 %var.load18, %s.read.len9
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data17, i64 %var.load18
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %coerce.trunc = trunc i64 %s.byte.val to i32
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok13
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then20:                                    ; preds = %choice.exit
  %var.load22 = load i64, ptr %var.i, align 8
  %var.load23 = load i64, ptr %"var.start'", align 8
  %subtmp = sub i64 %var.load22, %var.load23
  store i64 %subtmp, ptr %var.seg_len, align 8
  %var.load24 = load i64, ptr %var.seg_len, align 8
  %cmptmp25 = icmp eq i64 %var.load24, 2
  br i1 %cmptmp25, label %and.57.then, label %and.57.else

choice.exit21:                                    ; preds = %choice.exit74, %choice.exit
  br label %loop.latch.56

and.57.then:                                      ; preds = %choice.then20
  %var.load26 = load ptr, ptr %var.p, align 8
  %s.read.len27 = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %s.read.len28 = load i64, ptr %s.read.len27, align 8
  %s.read.len29 = and i64 %s.read.len28, 281474976710655
  %str.tag30 = lshr i64 %s.read.len28, 48
  %str.immortal31 = icmp eq i64 %str.tag30, 0
  br i1 %str.immortal31, label %str_ok33, label %str_gen_check32

and.57.else:                                      ; preds = %choice.then20
  br label %and.57.exit

and.57.exit:                                      ; preds = %and.57.else, %idx_ok42
  %and.57.phi = phi i1 [ %cmptmp48, %idx_ok42 ], [ %cmptmp25, %and.57.else ]
  br i1 %and.57.phi, label %and.58.then, label %and.58.else

str_gen_check32:                                  ; preds = %and.57.then
  %arena.cur35 = call ptr @dva_arena_current()
  %tag.valid36 = call i1 @dva_arena_validate_tag(ptr %arena.cur35, i64 %str.tag30)
  br i1 %tag.valid36, label %str_ok33, label %str_stale34

str_ok33:                                         ; preds = %str_stale34, %str_gen_check32, %and.57.then
  %s.read.data37 = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 1
  %s.read.data38 = load ptr, ptr %s.read.data37, align 8
  %var.load39 = load i64, ptr %"var.start'", align 8
  %idx.neg40 = icmp slt i64 %var.load39, 0
  br i1 %idx.neg40, label %idx_oob43, label %idx_big_check41

str_stale34:                                      ; preds = %str_gen_check32
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok33

idx_big_check41:                                  ; preds = %str_ok33
  %idx.big44 = icmp sge i64 %var.load39, %s.read.len29
  br i1 %idx.big44, label %idx_oob43, label %idx_ok42

idx_ok42:                                         ; preds = %idx_oob43, %idx_big_check41
  %s.byte.gep45 = getelementptr i8, ptr %s.read.data38, i64 %var.load39
  %s.byte46 = load i8, ptr %s.byte.gep45, align 1
  %s.byte.val47 = zext i8 %s.byte46 to i64
  %cmptmp48 = icmp eq i64 %s.byte.val47, 46
  br label %and.57.exit

idx_oob43:                                        ; preds = %idx_big_check41, %str_ok33
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok42

and.58.then:                                      ; preds = %and.57.exit
  %var.load49 = load ptr, ptr %var.p, align 8
  %s.read.len50 = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 0
  %s.read.len51 = load i64, ptr %s.read.len50, align 8
  %s.read.len52 = and i64 %s.read.len51, 281474976710655
  %str.tag53 = lshr i64 %s.read.len51, 48
  %str.immortal54 = icmp eq i64 %str.tag53, 0
  br i1 %str.immortal54, label %str_ok56, label %str_gen_check55

and.58.else:                                      ; preds = %and.57.exit
  br label %and.58.exit

and.58.exit:                                      ; preds = %and.58.else, %idx_ok66
  %and.58.phi = phi i1 [ %cmptmp72, %idx_ok66 ], [ %and.57.phi, %and.58.else ]
  br i1 %and.58.phi, label %choice.then73, label %choice.exit74

str_gen_check55:                                  ; preds = %and.58.then
  %arena.cur58 = call ptr @dva_arena_current()
  %tag.valid59 = call i1 @dva_arena_validate_tag(ptr %arena.cur58, i64 %str.tag53)
  br i1 %tag.valid59, label %str_ok56, label %str_stale57

str_ok56:                                         ; preds = %str_stale57, %str_gen_check55, %and.58.then
  %s.read.data60 = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 1
  %s.read.data61 = load ptr, ptr %s.read.data60, align 8
  %var.load62 = load i64, ptr %"var.start'", align 8
  %addtmp63 = add i64 %var.load62, 1
  %idx.neg64 = icmp slt i64 %addtmp63, 0
  br i1 %idx.neg64, label %idx_oob67, label %idx_big_check65

str_stale57:                                      ; preds = %str_gen_check55
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok56

idx_big_check65:                                  ; preds = %str_ok56
  %idx.big68 = icmp sge i64 %addtmp63, %s.read.len52
  br i1 %idx.big68, label %idx_oob67, label %idx_ok66

idx_ok66:                                         ; preds = %idx_oob67, %idx_big_check65
  %s.byte.gep69 = getelementptr i8, ptr %s.read.data61, i64 %addtmp63
  %s.byte70 = load i8, ptr %s.byte.gep69, align 1
  %s.byte.val71 = zext i8 %s.byte70 to i64
  %cmptmp72 = icmp eq i64 %s.byte.val71, 46
  br label %and.58.exit

idx_oob67:                                        ; preds = %idx_big_check65, %str_ok56
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok66

choice.then73:                                    ; preds = %and.58.exit
  store i1 true, ptr %"var.found'", align 1
  br label %loop.exit.56

choice.exit74:                                    ; preds = %and.58.exit
  %var.load75 = load i64, ptr %var.i, align 8
  %addtmp76 = add i64 %var.load75, 1
  store i64 %addtmp76, ptr %"var.start'", align 8
  br label %choice.exit21
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
