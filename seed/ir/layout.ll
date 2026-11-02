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
@"var.ast::cell_var_names" = external global ptr
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
@str.0 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.0 }
@"var.layout::target_triple" = global ptr null
@clo.const = internal constant { ptr, ptr } { ptr @"layout::set_target_triple", ptr null }
@"var.layout::set_target_triple" = global ptr null
@str.1 = internal unnamed_addr constant [7 x i8] c"wasm32\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.1 }
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str.2 = internal unnamed_addr constant [5 x i8] c"wasm\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.2 }
@str.3 = internal unnamed_addr constant [4 x i8] c"x86\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.3 }
@str.4 = internal unnamed_addr constant [6 x i8] c"armv7\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.4 }
@str.5 = internal unnamed_addr constant [6 x i8] c"armv6\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.5 }
@str.6 = internal unnamed_addr constant [6 x i8] c"thumb\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.6 }
@str.7 = internal unnamed_addr constant [8 x i8] c"riscv32\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.7 }
@str.8 = internal unnamed_addr constant [4 x i8] c"arm\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.8 }
@clo.const.1 = internal constant { ptr, ptr } { ptr @"layout::is_32bit_triple", ptr null }
@"var.layout::is_32bit_triple" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"layout::is_32bit_target", ptr null }
@"var.layout::is_32bit_target" = global ptr null
@div_zero_msg = internal unnamed_addr constant [33 x i8] c"E4012: integer division by zero\0A\00"
@div_ovf_msg = internal unnamed_addr constant [56 x i8] c"E4013: signed integer division overflow (INT_MIN / -1)\0A\00"
@clo.const.3 = internal constant { ptr, ptr } { ptr @"layout::align_up", ptr null }
@"var.layout::align_up" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"layout::compute_prim_layout", ptr null }
@"var.layout::compute_prim_layout" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"layout::is_niche_utype", ptr null }
@"var.layout::is_niche_utype" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"layout::compute_layout", ptr null }
@"var.layout::compute_layout" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_layout, ptr null }]

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

define internal void @__dva_global_init_layout() #1 {
entry:
  store ptr @str.0.struct, ptr @"var.layout::target_triple", align 8
  store ptr @clo.const, ptr @"var.layout::set_target_triple", align 8
  store ptr @clo.const.1, ptr @"var.layout::is_32bit_triple", align 8
  store ptr @clo.const.2, ptr @"var.layout::is_32bit_target", align 8
  store ptr @clo.const.3, ptr @"var.layout::align_up", align 8
  store ptr @clo.const.4, ptr @"var.layout::compute_prim_layout", align 8
  store ptr @clo.const.5, ptr @"var.layout::is_niche_utype", align 8
  store ptr @clo.const.6, ptr @"var.layout::compute_layout", align 8
  ret void
}

define void @"layout::set_target_triple"(ptr %0) #1 {
entry:
  %var.t = alloca ptr, align 8
  store ptr %0, ptr %var.t, align 8
  %var.load = load ptr, ptr %var.t, align 8
  store ptr %var.load, ptr @"var.layout::target_triple", align 8
  ret void
}

define i1 @"layout::is_32bit_triple"(ptr %0) #1 {
entry:
  %var.triple = alloca ptr, align 8
  store ptr %0, ptr %var.triple, align 8
  %var.load = load ptr, ptr %var.triple, align 8
  %call.res = call ptr @"ast::triple_arch"(ptr %var.load)
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %eq.lhs.len1 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %str.eq.merge213
  br label %choice.exit

choice.next:                                      ; preds = %str.eq.merge213
  br label %choice.exit

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %str.tag4 = lshr i64 %eq.rhs.len, 48
  %str.immortal5 = icmp eq i64 %str.tag4, 0
  br i1 %str.immortal5, label %str_ok7, label %str_gen_check6

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check6:                                   ; preds = %str_ok
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid10 = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag4)
  br i1 %tag.valid10, label %str_ok7, label %str_stale8

str_ok7:                                          ; preds = %str_stale8, %str_gen_check6, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale8:                                       ; preds = %str_gen_check6
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok7

str.eq.then:                                      ; preds = %str_ok7
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %eq.lhs.data11 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data11, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok7
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %eq.lhs.len12 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %eq.lhs.len13 = load i64, ptr %eq.lhs.len12, align 8
  %eq.lhs.len14 = and i64 %eq.lhs.len13, 281474976710655
  %str.tag15 = lshr i64 %eq.lhs.len13, 48
  %str.immortal16 = icmp eq i64 %str.tag15, 0
  br i1 %str.immortal16, label %str_ok18, label %str_gen_check17

str_gen_check17:                                  ; preds = %str.eq.merge
  %arena.cur20 = call ptr @dva_arena_current()
  %tag.valid21 = call i1 @dva_arena_validate_tag(ptr %arena.cur20, i64 %str.tag15)
  br i1 %tag.valid21, label %str_ok18, label %str_stale19

str_ok18:                                         ; preds = %str_stale19, %str_gen_check17, %str.eq.merge
  %eq.rhs.len22 = load i64, ptr @str.2.struct, align 8
  %eq.rhs.len23 = and i64 %eq.rhs.len22, 281474976710655
  %str.tag24 = lshr i64 %eq.rhs.len22, 48
  %str.immortal25 = icmp eq i64 %str.tag24, 0
  br i1 %str.immortal25, label %str_ok27, label %str_gen_check26

str_stale19:                                      ; preds = %str_gen_check17
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok18

str_gen_check26:                                  ; preds = %str_ok18
  %arena.cur29 = call ptr @dva_arena_current()
  %tag.valid30 = call i1 @dva_arena_validate_tag(ptr %arena.cur29, i64 %str.tag24)
  br i1 %tag.valid30, label %str_ok27, label %str_stale28

str_ok27:                                         ; preds = %str_stale28, %str_gen_check26, %str_ok18
  %eq.len31 = icmp eq i64 %eq.lhs.len14, %eq.rhs.len23
  br i1 %eq.len31, label %str.eq.then32, label %str.eq.else33

str_stale28:                                      ; preds = %str_gen_check26
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok27

str.eq.then32:                                    ; preds = %str_ok27
  %eq.lhs.data35 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %eq.lhs.data36 = load ptr, ptr %eq.lhs.data35, align 8
  %eq.rhs.data37 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %eq.memcmp38 = call i32 @memcmp(ptr %eq.lhs.data36, ptr %eq.rhs.data37, i64 %eq.lhs.len14)
  %eq.cmp.zero39 = icmp eq i32 %eq.memcmp38, 0
  br label %str.eq.merge34

str.eq.else33:                                    ; preds = %str_ok27
  br label %str.eq.merge34

str.eq.merge34:                                   ; preds = %str.eq.else33, %str.eq.then32
  %str.eq.result40 = phi i1 [ %eq.cmp.zero39, %str.eq.then32 ], [ false, %str.eq.else33 ]
  %case.or = or i1 %str.eq.result, %str.eq.result40
  %eq.lhs.len41 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %eq.lhs.len42 = load i64, ptr %eq.lhs.len41, align 8
  %eq.lhs.len43 = and i64 %eq.lhs.len42, 281474976710655
  %str.tag44 = lshr i64 %eq.lhs.len42, 48
  %str.immortal45 = icmp eq i64 %str.tag44, 0
  br i1 %str.immortal45, label %str_ok47, label %str_gen_check46

str_gen_check46:                                  ; preds = %str.eq.merge34
  %arena.cur49 = call ptr @dva_arena_current()
  %tag.valid50 = call i1 @dva_arena_validate_tag(ptr %arena.cur49, i64 %str.tag44)
  br i1 %tag.valid50, label %str_ok47, label %str_stale48

str_ok47:                                         ; preds = %str_stale48, %str_gen_check46, %str.eq.merge34
  %eq.rhs.len51 = load i64, ptr @str.3.struct, align 8
  %eq.rhs.len52 = and i64 %eq.rhs.len51, 281474976710655
  %str.tag53 = lshr i64 %eq.rhs.len51, 48
  %str.immortal54 = icmp eq i64 %str.tag53, 0
  br i1 %str.immortal54, label %str_ok56, label %str_gen_check55

str_stale48:                                      ; preds = %str_gen_check46
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok47

str_gen_check55:                                  ; preds = %str_ok47
  %arena.cur58 = call ptr @dva_arena_current()
  %tag.valid59 = call i1 @dva_arena_validate_tag(ptr %arena.cur58, i64 %str.tag53)
  br i1 %tag.valid59, label %str_ok56, label %str_stale57

str_ok56:                                         ; preds = %str_stale57, %str_gen_check55, %str_ok47
  %eq.len60 = icmp eq i64 %eq.lhs.len43, %eq.rhs.len52
  br i1 %eq.len60, label %str.eq.then61, label %str.eq.else62

str_stale57:                                      ; preds = %str_gen_check55
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok56

str.eq.then61:                                    ; preds = %str_ok56
  %eq.lhs.data64 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %eq.lhs.data65 = load ptr, ptr %eq.lhs.data64, align 8
  %eq.rhs.data66 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp67 = call i32 @memcmp(ptr %eq.lhs.data65, ptr %eq.rhs.data66, i64 %eq.lhs.len43)
  %eq.cmp.zero68 = icmp eq i32 %eq.memcmp67, 0
  br label %str.eq.merge63

str.eq.else62:                                    ; preds = %str_ok56
  br label %str.eq.merge63

str.eq.merge63:                                   ; preds = %str.eq.else62, %str.eq.then61
  %str.eq.result69 = phi i1 [ %eq.cmp.zero68, %str.eq.then61 ], [ false, %str.eq.else62 ]
  %case.or70 = or i1 %case.or, %str.eq.result69
  %eq.lhs.len71 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %eq.lhs.len72 = load i64, ptr %eq.lhs.len71, align 8
  %eq.lhs.len73 = and i64 %eq.lhs.len72, 281474976710655
  %str.tag74 = lshr i64 %eq.lhs.len72, 48
  %str.immortal75 = icmp eq i64 %str.tag74, 0
  br i1 %str.immortal75, label %str_ok77, label %str_gen_check76

str_gen_check76:                                  ; preds = %str.eq.merge63
  %arena.cur79 = call ptr @dva_arena_current()
  %tag.valid80 = call i1 @dva_arena_validate_tag(ptr %arena.cur79, i64 %str.tag74)
  br i1 %tag.valid80, label %str_ok77, label %str_stale78

str_ok77:                                         ; preds = %str_stale78, %str_gen_check76, %str.eq.merge63
  %eq.rhs.len81 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len82 = and i64 %eq.rhs.len81, 281474976710655
  %str.tag83 = lshr i64 %eq.rhs.len81, 48
  %str.immortal84 = icmp eq i64 %str.tag83, 0
  br i1 %str.immortal84, label %str_ok86, label %str_gen_check85

str_stale78:                                      ; preds = %str_gen_check76
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok77

str_gen_check85:                                  ; preds = %str_ok77
  %arena.cur88 = call ptr @dva_arena_current()
  %tag.valid89 = call i1 @dva_arena_validate_tag(ptr %arena.cur88, i64 %str.tag83)
  br i1 %tag.valid89, label %str_ok86, label %str_stale87

str_ok86:                                         ; preds = %str_stale87, %str_gen_check85, %str_ok77
  %eq.len90 = icmp eq i64 %eq.lhs.len73, %eq.rhs.len82
  br i1 %eq.len90, label %str.eq.then91, label %str.eq.else92

str_stale87:                                      ; preds = %str_gen_check85
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok86

str.eq.then91:                                    ; preds = %str_ok86
  %eq.lhs.data94 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %eq.lhs.data95 = load ptr, ptr %eq.lhs.data94, align 8
  %eq.rhs.data96 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp97 = call i32 @memcmp(ptr %eq.lhs.data95, ptr %eq.rhs.data96, i64 %eq.lhs.len73)
  %eq.cmp.zero98 = icmp eq i32 %eq.memcmp97, 0
  br label %str.eq.merge93

str.eq.else92:                                    ; preds = %str_ok86
  br label %str.eq.merge93

str.eq.merge93:                                   ; preds = %str.eq.else92, %str.eq.then91
  %str.eq.result99 = phi i1 [ %eq.cmp.zero98, %str.eq.then91 ], [ false, %str.eq.else92 ]
  %case.or100 = or i1 %case.or70, %str.eq.result99
  %eq.lhs.len101 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %eq.lhs.len102 = load i64, ptr %eq.lhs.len101, align 8
  %eq.lhs.len103 = and i64 %eq.lhs.len102, 281474976710655
  %str.tag104 = lshr i64 %eq.lhs.len102, 48
  %str.immortal105 = icmp eq i64 %str.tag104, 0
  br i1 %str.immortal105, label %str_ok107, label %str_gen_check106

str_gen_check106:                                 ; preds = %str.eq.merge93
  %arena.cur109 = call ptr @dva_arena_current()
  %tag.valid110 = call i1 @dva_arena_validate_tag(ptr %arena.cur109, i64 %str.tag104)
  br i1 %tag.valid110, label %str_ok107, label %str_stale108

str_ok107:                                        ; preds = %str_stale108, %str_gen_check106, %str.eq.merge93
  %eq.rhs.len111 = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len112 = and i64 %eq.rhs.len111, 281474976710655
  %str.tag113 = lshr i64 %eq.rhs.len111, 48
  %str.immortal114 = icmp eq i64 %str.tag113, 0
  br i1 %str.immortal114, label %str_ok116, label %str_gen_check115

str_stale108:                                     ; preds = %str_gen_check106
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok107

str_gen_check115:                                 ; preds = %str_ok107
  %arena.cur118 = call ptr @dva_arena_current()
  %tag.valid119 = call i1 @dva_arena_validate_tag(ptr %arena.cur118, i64 %str.tag113)
  br i1 %tag.valid119, label %str_ok116, label %str_stale117

str_ok116:                                        ; preds = %str_stale117, %str_gen_check115, %str_ok107
  %eq.len120 = icmp eq i64 %eq.lhs.len103, %eq.rhs.len112
  br i1 %eq.len120, label %str.eq.then121, label %str.eq.else122

str_stale117:                                     ; preds = %str_gen_check115
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok116

str.eq.then121:                                   ; preds = %str_ok116
  %eq.lhs.data124 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %eq.lhs.data125 = load ptr, ptr %eq.lhs.data124, align 8
  %eq.rhs.data126 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp127 = call i32 @memcmp(ptr %eq.lhs.data125, ptr %eq.rhs.data126, i64 %eq.lhs.len103)
  %eq.cmp.zero128 = icmp eq i32 %eq.memcmp127, 0
  br label %str.eq.merge123

str.eq.else122:                                   ; preds = %str_ok116
  br label %str.eq.merge123

str.eq.merge123:                                  ; preds = %str.eq.else122, %str.eq.then121
  %str.eq.result129 = phi i1 [ %eq.cmp.zero128, %str.eq.then121 ], [ false, %str.eq.else122 ]
  %case.or130 = or i1 %case.or100, %str.eq.result129
  %eq.lhs.len131 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %eq.lhs.len132 = load i64, ptr %eq.lhs.len131, align 8
  %eq.lhs.len133 = and i64 %eq.lhs.len132, 281474976710655
  %str.tag134 = lshr i64 %eq.lhs.len132, 48
  %str.immortal135 = icmp eq i64 %str.tag134, 0
  br i1 %str.immortal135, label %str_ok137, label %str_gen_check136

str_gen_check136:                                 ; preds = %str.eq.merge123
  %arena.cur139 = call ptr @dva_arena_current()
  %tag.valid140 = call i1 @dva_arena_validate_tag(ptr %arena.cur139, i64 %str.tag134)
  br i1 %tag.valid140, label %str_ok137, label %str_stale138

str_ok137:                                        ; preds = %str_stale138, %str_gen_check136, %str.eq.merge123
  %eq.rhs.len141 = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len142 = and i64 %eq.rhs.len141, 281474976710655
  %str.tag143 = lshr i64 %eq.rhs.len141, 48
  %str.immortal144 = icmp eq i64 %str.tag143, 0
  br i1 %str.immortal144, label %str_ok146, label %str_gen_check145

str_stale138:                                     ; preds = %str_gen_check136
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok137

str_gen_check145:                                 ; preds = %str_ok137
  %arena.cur148 = call ptr @dva_arena_current()
  %tag.valid149 = call i1 @dva_arena_validate_tag(ptr %arena.cur148, i64 %str.tag143)
  br i1 %tag.valid149, label %str_ok146, label %str_stale147

str_ok146:                                        ; preds = %str_stale147, %str_gen_check145, %str_ok137
  %eq.len150 = icmp eq i64 %eq.lhs.len133, %eq.rhs.len142
  br i1 %eq.len150, label %str.eq.then151, label %str.eq.else152

str_stale147:                                     ; preds = %str_gen_check145
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok146

str.eq.then151:                                   ; preds = %str_ok146
  %eq.lhs.data154 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %eq.lhs.data155 = load ptr, ptr %eq.lhs.data154, align 8
  %eq.rhs.data156 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp157 = call i32 @memcmp(ptr %eq.lhs.data155, ptr %eq.rhs.data156, i64 %eq.lhs.len133)
  %eq.cmp.zero158 = icmp eq i32 %eq.memcmp157, 0
  br label %str.eq.merge153

str.eq.else152:                                   ; preds = %str_ok146
  br label %str.eq.merge153

str.eq.merge153:                                  ; preds = %str.eq.else152, %str.eq.then151
  %str.eq.result159 = phi i1 [ %eq.cmp.zero158, %str.eq.then151 ], [ false, %str.eq.else152 ]
  %case.or160 = or i1 %case.or130, %str.eq.result159
  %eq.lhs.len161 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %eq.lhs.len162 = load i64, ptr %eq.lhs.len161, align 8
  %eq.lhs.len163 = and i64 %eq.lhs.len162, 281474976710655
  %str.tag164 = lshr i64 %eq.lhs.len162, 48
  %str.immortal165 = icmp eq i64 %str.tag164, 0
  br i1 %str.immortal165, label %str_ok167, label %str_gen_check166

str_gen_check166:                                 ; preds = %str.eq.merge153
  %arena.cur169 = call ptr @dva_arena_current()
  %tag.valid170 = call i1 @dva_arena_validate_tag(ptr %arena.cur169, i64 %str.tag164)
  br i1 %tag.valid170, label %str_ok167, label %str_stale168

str_ok167:                                        ; preds = %str_stale168, %str_gen_check166, %str.eq.merge153
  %eq.rhs.len171 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len172 = and i64 %eq.rhs.len171, 281474976710655
  %str.tag173 = lshr i64 %eq.rhs.len171, 48
  %str.immortal174 = icmp eq i64 %str.tag173, 0
  br i1 %str.immortal174, label %str_ok176, label %str_gen_check175

str_stale168:                                     ; preds = %str_gen_check166
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok167

str_gen_check175:                                 ; preds = %str_ok167
  %arena.cur178 = call ptr @dva_arena_current()
  %tag.valid179 = call i1 @dva_arena_validate_tag(ptr %arena.cur178, i64 %str.tag173)
  br i1 %tag.valid179, label %str_ok176, label %str_stale177

str_ok176:                                        ; preds = %str_stale177, %str_gen_check175, %str_ok167
  %eq.len180 = icmp eq i64 %eq.lhs.len163, %eq.rhs.len172
  br i1 %eq.len180, label %str.eq.then181, label %str.eq.else182

str_stale177:                                     ; preds = %str_gen_check175
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok176

str.eq.then181:                                   ; preds = %str_ok176
  %eq.lhs.data184 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %eq.lhs.data185 = load ptr, ptr %eq.lhs.data184, align 8
  %eq.rhs.data186 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp187 = call i32 @memcmp(ptr %eq.lhs.data185, ptr %eq.rhs.data186, i64 %eq.lhs.len163)
  %eq.cmp.zero188 = icmp eq i32 %eq.memcmp187, 0
  br label %str.eq.merge183

str.eq.else182:                                   ; preds = %str_ok176
  br label %str.eq.merge183

str.eq.merge183:                                  ; preds = %str.eq.else182, %str.eq.then181
  %str.eq.result189 = phi i1 [ %eq.cmp.zero188, %str.eq.then181 ], [ false, %str.eq.else182 ]
  %case.or190 = or i1 %case.or160, %str.eq.result189
  %eq.lhs.len191 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %eq.lhs.len192 = load i64, ptr %eq.lhs.len191, align 8
  %eq.lhs.len193 = and i64 %eq.lhs.len192, 281474976710655
  %str.tag194 = lshr i64 %eq.lhs.len192, 48
  %str.immortal195 = icmp eq i64 %str.tag194, 0
  br i1 %str.immortal195, label %str_ok197, label %str_gen_check196

str_gen_check196:                                 ; preds = %str.eq.merge183
  %arena.cur199 = call ptr @dva_arena_current()
  %tag.valid200 = call i1 @dva_arena_validate_tag(ptr %arena.cur199, i64 %str.tag194)
  br i1 %tag.valid200, label %str_ok197, label %str_stale198

str_ok197:                                        ; preds = %str_stale198, %str_gen_check196, %str.eq.merge183
  %eq.rhs.len201 = load i64, ptr @str.8.struct, align 8
  %eq.rhs.len202 = and i64 %eq.rhs.len201, 281474976710655
  %str.tag203 = lshr i64 %eq.rhs.len201, 48
  %str.immortal204 = icmp eq i64 %str.tag203, 0
  br i1 %str.immortal204, label %str_ok206, label %str_gen_check205

str_stale198:                                     ; preds = %str_gen_check196
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok197

str_gen_check205:                                 ; preds = %str_ok197
  %arena.cur208 = call ptr @dva_arena_current()
  %tag.valid209 = call i1 @dva_arena_validate_tag(ptr %arena.cur208, i64 %str.tag203)
  br i1 %tag.valid209, label %str_ok206, label %str_stale207

str_ok206:                                        ; preds = %str_stale207, %str_gen_check205, %str_ok197
  %eq.len210 = icmp eq i64 %eq.lhs.len193, %eq.rhs.len202
  br i1 %eq.len210, label %str.eq.then211, label %str.eq.else212

str_stale207:                                     ; preds = %str_gen_check205
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok206

str.eq.then211:                                   ; preds = %str_ok206
  %eq.lhs.data214 = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %eq.lhs.data215 = load ptr, ptr %eq.lhs.data214, align 8
  %eq.rhs.data216 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %eq.memcmp217 = call i32 @memcmp(ptr %eq.lhs.data215, ptr %eq.rhs.data216, i64 %eq.lhs.len193)
  %eq.cmp.zero218 = icmp eq i32 %eq.memcmp217, 0
  br label %str.eq.merge213

str.eq.else212:                                   ; preds = %str_ok206
  br label %str.eq.merge213

str.eq.merge213:                                  ; preds = %str.eq.else212, %str.eq.then211
  %str.eq.result219 = phi i1 [ %eq.cmp.zero218, %str.eq.then211 ], [ false, %str.eq.else212 ]
  %case.or220 = or i1 %case.or190, %str.eq.result219
  br i1 %case.or220, label %choice.case, label %choice.next
}

declare ptr @"ast::triple_arch"(ptr) #1

declare i64 @write(i32, ptr, i64)

declare void @exit(i32)

declare i32 @memcmp(ptr, ptr, i64)

define i1 @"layout::is_32bit_target"() #1 {
entry:
  %var.load = load ptr, ptr @"var.layout::target_triple", align 8
  %call.res = call i1 @"layout::is_32bit_triple"(ptr %var.load)
  ret i1 %call.res
}

define i64 @"layout::align_up"(i64 %0, i64 %1) #1 {
entry:
  %var.align = alloca i64, align 8
  %var.offset = alloca i64, align 8
  store i64 %0, ptr %var.offset, align 8
  store i64 %1, ptr %var.align, align 8
  %var.load = load i64, ptr %var.align, align 8
  %cmptmp = icmp sle i64 %var.load, 1
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.offset, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.offset, align 8
  %var.load3 = load i64, ptr %var.align, align 8
  %addtmp = add i64 %var.load2, %var.load3
  %subtmp = sub i64 %addtmp, 1
  %var.load4 = load i64, ptr %var.align, align 8
  %div.is.zero = icmp eq i64 %var.load4, 0
  br i1 %div.is.zero, label %div.zero_abort, label %div.not_zero

choice.exit:                                      ; preds = %div.ok, %choice.then
  %choice.res = phi i64 [ %var.load1, %choice.then ], [ %multmp, %div.ok ]
  ret i64 %choice.res

div.not_zero:                                     ; preds = %div.zero_abort, %choice.else
  %div.is.min = icmp eq i64 %subtmp, -9223372036854775808
  %div.is.negone = icmp eq i64 %var.load4, -1
  %div.is.ovf = and i1 %div.is.min, %div.is.negone
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.else
  %2 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %divtmp = sdiv i64 %subtmp, %var.load4
  %var.load5 = load i64, ptr %var.align, align 8
  %multmp = mul i64 %divtmp, %var.load5
  br label %choice.exit

div.ovf_abort:                                    ; preds = %div.not_zero
  %3 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok
}

define ptr @"layout::compute_prim_layout"(ptr %0) #1 {
entry:
  %var.ptr_align = alloca i64, align 8
  %var.ptr_sz = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %call.res = call i1 @"layout::is_32bit_target"()
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ 4, %choice.then ], [ 8, %choice.else ]
  store i64 %choice.res, ptr %var.ptr_sz, align 8
  %call.res1 = call i1 @"layout::is_32bit_target"()
  br i1 %call.res1, label %choice.then2, label %choice.else3

choice.then2:                                     ; preds = %choice.exit
  br label %choice.exit4

choice.else3:                                     ; preds = %choice.exit
  br label %choice.exit4

choice.exit4:                                     ; preds = %choice.else3, %choice.then2
  %choice.res5 = phi i64 [ 4, %choice.then2 ], [ 8, %choice.else3 ]
  store i64 %choice.res5, ptr %var.ptr_align, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit6:                                     ; preds = %choice.next112, %choice.exit119, %choice.case102, %choice.case94, %choice.case88, %choice.case82, %choice.case76, %choice.case68, %choice.case62, %choice.case56, %choice.case50, %choice.case44, %choice.case38, %choice.case32, %choice.case26, %choice.case20, %choice.case14, %choice.case8, %choice.case
  %choice.res126 = phi ptr [ %call.res7, %choice.case ], [ %call.res13, %choice.case8 ], [ %call.res19, %choice.case14 ], [ %call.res25, %choice.case20 ], [ %call.res31, %choice.case26 ], [ %call.res37, %choice.case32 ], [ %call.res43, %choice.case38 ], [ %call.res49, %choice.case44 ], [ %call.res55, %choice.case50 ], [ %call.res61, %choice.case56 ], [ %call.res67, %choice.case62 ], [ %call.res75, %choice.case68 ], [ %call.res81, %choice.case76 ], [ %call.res87, %choice.case82 ], [ %call.res93, %choice.case88 ], [ %call.res101, %choice.case94 ], [ %call.res110, %choice.case102 ], [ %choice.res122, %choice.exit119 ], [ %call.res125, %choice.next112 ]
  ret ptr %choice.res126

choice.case:                                      ; preds = %choice.exit4
  %call.res7 = call ptr @"tast::layout_scalar"(i64 8, i64 8)
  br label %choice.exit6

choice.next:                                      ; preds = %choice.exit4
  %tag.gep10 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id11 = load i64, ptr %tag.gep10, align 8
  %tag.match12 = icmp eq i64 %tag.id11, 1
  br i1 %tag.match12, label %choice.case8, label %choice.next9

choice.case8:                                     ; preds = %choice.next
  %call.res13 = call ptr @"tast::layout_scalar"(i64 1, i64 1)
  br label %choice.exit6

choice.next9:                                     ; preds = %choice.next
  %tag.gep16 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id17 = load i64, ptr %tag.gep16, align 8
  %tag.match18 = icmp eq i64 %tag.id17, 2
  br i1 %tag.match18, label %choice.case14, label %choice.next15

choice.case14:                                    ; preds = %choice.next9
  %call.res19 = call ptr @"tast::layout_scalar"(i64 2, i64 2)
  br label %choice.exit6

choice.next15:                                    ; preds = %choice.next9
  %tag.gep22 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id23 = load i64, ptr %tag.gep22, align 8
  %tag.match24 = icmp eq i64 %tag.id23, 3
  br i1 %tag.match24, label %choice.case20, label %choice.next21

choice.case20:                                    ; preds = %choice.next15
  %call.res25 = call ptr @"tast::layout_scalar"(i64 4, i64 4)
  br label %choice.exit6

choice.next21:                                    ; preds = %choice.next15
  %tag.gep28 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id29 = load i64, ptr %tag.gep28, align 8
  %tag.match30 = icmp eq i64 %tag.id29, 4
  br i1 %tag.match30, label %choice.case26, label %choice.next27

choice.case26:                                    ; preds = %choice.next21
  %call.res31 = call ptr @"tast::layout_scalar"(i64 8, i64 8)
  br label %choice.exit6

choice.next27:                                    ; preds = %choice.next21
  %tag.gep34 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id35 = load i64, ptr %tag.gep34, align 8
  %tag.match36 = icmp eq i64 %tag.id35, 5
  br i1 %tag.match36, label %choice.case32, label %choice.next33

choice.case32:                                    ; preds = %choice.next27
  %call.res37 = call ptr @"tast::layout_scalar"(i64 1, i64 1)
  br label %choice.exit6

choice.next33:                                    ; preds = %choice.next27
  %tag.gep40 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id41 = load i64, ptr %tag.gep40, align 8
  %tag.match42 = icmp eq i64 %tag.id41, 6
  br i1 %tag.match42, label %choice.case38, label %choice.next39

choice.case38:                                    ; preds = %choice.next33
  %call.res43 = call ptr @"tast::layout_scalar"(i64 2, i64 2)
  br label %choice.exit6

choice.next39:                                    ; preds = %choice.next33
  %tag.gep46 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id47 = load i64, ptr %tag.gep46, align 8
  %tag.match48 = icmp eq i64 %tag.id47, 7
  br i1 %tag.match48, label %choice.case44, label %choice.next45

choice.case44:                                    ; preds = %choice.next39
  %call.res49 = call ptr @"tast::layout_scalar"(i64 4, i64 4)
  br label %choice.exit6

choice.next45:                                    ; preds = %choice.next39
  %tag.gep52 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id53 = load i64, ptr %tag.gep52, align 8
  %tag.match54 = icmp eq i64 %tag.id53, 8
  br i1 %tag.match54, label %choice.case50, label %choice.next51

choice.case50:                                    ; preds = %choice.next45
  %call.res55 = call ptr @"tast::layout_scalar"(i64 8, i64 8)
  br label %choice.exit6

choice.next51:                                    ; preds = %choice.next45
  %tag.gep58 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id59 = load i64, ptr %tag.gep58, align 8
  %tag.match60 = icmp eq i64 %tag.id59, 9
  br i1 %tag.match60, label %choice.case56, label %choice.next57

choice.case56:                                    ; preds = %choice.next51
  %call.res61 = call ptr @"tast::layout_scalar"(i64 8, i64 8)
  br label %choice.exit6

choice.next57:                                    ; preds = %choice.next51
  %tag.gep64 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id65 = load i64, ptr %tag.gep64, align 8
  %tag.match66 = icmp eq i64 %tag.id65, 10
  br i1 %tag.match66, label %choice.case62, label %choice.next63

choice.case62:                                    ; preds = %choice.next57
  %call.res67 = call ptr @"tast::layout_scalar"(i64 4, i64 4)
  br label %choice.exit6

choice.next63:                                    ; preds = %choice.next57
  %tag.gep70 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id71 = load i64, ptr %tag.gep70, align 8
  %tag.match72 = icmp eq i64 %tag.id71, 11
  br i1 %tag.match72, label %choice.case68, label %choice.next69

choice.case68:                                    ; preds = %choice.next63
  %var.load73 = load i64, ptr %var.ptr_sz, align 8
  %multmp = mul i64 %var.load73, 2
  %var.load74 = load i64, ptr %var.ptr_align, align 8
  %call.res75 = call ptr @"tast::layout_scalar"(i64 %multmp, i64 %var.load74)
  br label %choice.exit6

choice.next69:                                    ; preds = %choice.next63
  %tag.gep78 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id79 = load i64, ptr %tag.gep78, align 8
  %tag.match80 = icmp eq i64 %tag.id79, 12
  br i1 %tag.match80, label %choice.case76, label %choice.next77

choice.case76:                                    ; preds = %choice.next69
  %call.res81 = call ptr @"tast::layout_scalar"(i64 4, i64 4)
  br label %choice.exit6

choice.next77:                                    ; preds = %choice.next69
  %tag.gep84 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id85 = load i64, ptr %tag.gep84, align 8
  %tag.match86 = icmp eq i64 %tag.id85, 13
  br i1 %tag.match86, label %choice.case82, label %choice.next83

choice.case82:                                    ; preds = %choice.next77
  %call.res87 = call ptr @"tast::layout_scalar"(i64 1, i64 1)
  br label %choice.exit6

choice.next83:                                    ; preds = %choice.next77
  %tag.gep90 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id91 = load i64, ptr %tag.gep90, align 8
  %tag.match92 = icmp eq i64 %tag.id91, 14
  br i1 %tag.match92, label %choice.case88, label %choice.next89

choice.case88:                                    ; preds = %choice.next83
  %call.res93 = call ptr @"tast::layout_void"()
  br label %choice.exit6

choice.next89:                                    ; preds = %choice.next83
  %tag.gep96 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id97 = load i64, ptr %tag.gep96, align 8
  %tag.match98 = icmp eq i64 %tag.id97, 15
  br i1 %tag.match98, label %choice.case94, label %choice.next95

choice.case94:                                    ; preds = %choice.next89
  %var.load99 = load i64, ptr %var.ptr_sz, align 8
  %var.load100 = load i64, ptr %var.ptr_align, align 8
  %call.res101 = call ptr @"tast::layout_scalar"(i64 %var.load99, i64 %var.load100)
  br label %choice.exit6

choice.next95:                                    ; preds = %choice.next89
  %tag.gep104 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id105 = load i64, ptr %tag.gep104, align 8
  %tag.match106 = icmp eq i64 %tag.id105, 16
  br i1 %tag.match106, label %choice.case102, label %choice.next103

choice.case102:                                   ; preds = %choice.next95
  %var.load107 = load i64, ptr %var.ptr_sz, align 8
  %multmp108 = mul i64 %var.load107, 3
  %var.load109 = load i64, ptr %var.ptr_align, align 8
  %call.res110 = call ptr @"tast::layout_scalar"(i64 %multmp108, i64 %var.load109)
  br label %choice.exit6

choice.next103:                                   ; preds = %choice.next95
  %tag.gep113 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id114 = load i64, ptr %tag.gep113, align 8
  %tag.match115 = icmp eq i64 %tag.id114, 17
  br i1 %tag.match115, label %choice.case111, label %choice.next112

choice.case111:                                   ; preds = %choice.next103
  %call.res116 = call i1 @"layout::is_32bit_target"()
  br i1 %call.res116, label %choice.then117, label %choice.else118

choice.next112:                                   ; preds = %choice.next103
  %var.load123 = load i64, ptr %var.ptr_sz, align 8
  %var.load124 = load i64, ptr %var.ptr_align, align 8
  %call.res125 = call ptr @"tast::layout_scalar"(i64 %var.load123, i64 %var.load124)
  br label %choice.exit6

choice.then117:                                   ; preds = %choice.case111
  %call.res120 = call ptr @"tast::layout_aggregate"(i64 48, i64 8)
  br label %choice.exit119

choice.else118:                                   ; preds = %choice.case111
  %call.res121 = call ptr @"tast::layout_aggregate"(i64 56, i64 8)
  br label %choice.exit119

choice.exit119:                                   ; preds = %choice.else118, %choice.then117
  %choice.res122 = phi ptr [ %call.res120, %choice.then117 ], [ %call.res121, %choice.else118 ]
  br label %choice.exit6
}

declare ptr @"tast::layout_scalar"(i64, i64) #1

declare ptr @"tast::layout_void"() #1

declare ptr @"tast::layout_aggregate"(i64, i64) #1

define i1 @"layout::is_niche_utype"(ptr %0, ptr %1) #1 {
entry:
  %var.r = alloca ptr, align 8
  %var._18 = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.c = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.ut, align 8
  %var.load = load ptr, ptr %var.ctx, align 8
  %var.load1 = load ptr, ptr %var.ut, align 8
  %call.res = call ptr @"unify::canon"(ptr %var.load, ptr %var.load1)
  store ptr %call.res, ptr %var.c, align 8
  %var.load2 = load ptr, ptr %var.c, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next12, %a.after, %choice.exit4
  %choice.res23 = phi i1 [ %choice.res, %choice.exit4 ], [ %cmptmp, %a.after ], [ false, %choice.next12 ]
  ret i1 %choice.res23

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.p, align 8
  %var.load3 = load ptr, ptr %var.p, align 8
  %tag.gep7 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %tag.id8 = load i64, ptr %tag.gep7, align 8
  %tag.match9 = icmp eq i64 %tag.id8, 11
  %tag.match10 = icmp eq i64 %tag.id8, 17
  %tag.or = or i1 %tag.match9, %tag.match10
  br i1 %tag.or, label %choice.case5, label %choice.next6

choice.next:                                      ; preds = %entry
  %tag.gep13 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id14 = load i64, ptr %tag.gep13, align 8
  %tag.match15 = icmp eq i64 %tag.id14, 3
  br i1 %tag.match15, label %choice.case11, label %choice.next12

choice.exit4:                                     ; preds = %choice.next6, %choice.case5
  %choice.res = phi i1 [ true, %choice.case5 ], [ false, %choice.next6 ]
  br label %choice.exit

choice.case5:                                     ; preds = %choice.case
  br label %choice.exit4

choice.next6:                                     ; preds = %choice.case
  br label %choice.exit4

choice.case11:                                    ; preds = %choice.next
  %pay.gep16 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr17 = load ptr, ptr %pay.gep16, align 8
  store ptr %payload.ptr17, ptr %var._18, align 8
  store ptr %payload.ptr17, ptr %var.r, align 8
  %var.load19 = load ptr, ptr %var.r, align 8
  %a.load = load ptr, ptr %var.r, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next12:                                    ; preds = %choice.next
  br label %choice.exit

a.create:                                         ; preds = %choice.case11
  %arena.cur = call ptr @dva_arena_current()
  %a.create20 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur21 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create20, ptr %var.r, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case11
  %a.load2 = load ptr, ptr %var.r, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query22 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp sgt i64 %a.len.query22, 0
  br label %choice.exit
}

declare ptr @"unify::canon"(ptr, ptr) #1

define ptr @"layout::compute_layout"(ptr %0, ptr %1) #1 {
entry:
  %var._185 = alloca ptr, align 8
  %var._165 = alloca ptr, align 8
  %var._153 = alloca ptr, align 8
  %var.has_n = alloca i1, align 1
  %var.has_p = alloca i1, align 1
  %var.r79 = alloca ptr, align 8
  %var._78 = alloca ptr, align 8
  %var.fin_size = alloca i64, align 8
  %var.total_size = alloca i64, align 8
  %var.f_align = alloca i64, align 8
  %var.flay = alloca ptr, align 8
  %var._46 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.f = alloca ptr, align 8
  %loop.step.127 = alloca i64, align 8
  %loop.idx.127 = alloca i64, align 8
  %"var.max_align'" = alloca i64, align 8
  %"var.cur_off'" = alloca i64, align 8
  %var.r = alloca ptr, align 8
  %var._39 = alloca ptr, align 8
  %var._24 = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.c = alloca ptr, align 8
  %var.min_rec_sz = alloca i64, align 8
  %var.ptr_align = alloca i64, align 8
  %var.ptr_sz = alloca i64, align 8
  %var.ut = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.ut, align 8
  %call.res = call i1 @"layout::is_32bit_target"()
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ 4, %choice.then ], [ 8, %choice.else ]
  store i64 %choice.res, ptr %var.ptr_sz, align 8
  %call.res1 = call i1 @"layout::is_32bit_target"()
  br i1 %call.res1, label %choice.then2, label %choice.else3

choice.then2:                                     ; preds = %choice.exit
  br label %choice.exit4

choice.else3:                                     ; preds = %choice.exit
  br label %choice.exit4

choice.exit4:                                     ; preds = %choice.else3, %choice.then2
  %choice.res5 = phi i64 [ 4, %choice.then2 ], [ 8, %choice.else3 ]
  store i64 %choice.res5, ptr %var.ptr_align, align 8
  %call.res6 = call i1 @"layout::is_32bit_target"()
  br i1 %call.res6, label %choice.then7, label %choice.else8

choice.then7:                                     ; preds = %choice.exit4
  br label %choice.exit9

choice.else8:                                     ; preds = %choice.exit4
  br label %choice.exit9

choice.exit9:                                     ; preds = %choice.else8, %choice.then7
  %choice.res10 = phi i64 [ 8, %choice.then7 ], [ 16, %choice.else8 ]
  store i64 %choice.res10, ptr %var.min_rec_sz, align 8
  %var.load = load ptr, ptr %var.ctx, align 8
  %var.load11 = load ptr, ptr %var.ut, align 8
  %call.res12 = call ptr @"unify::canon"(ptr %var.load, ptr %var.load11)
  store ptr %call.res12, ptr %var.c, align 8
  %var.load13 = load ptr, ptr %var.c, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit14:                                    ; preds = %choice.next179, %choice.case178, %choice.case158, %choice.case146, %choice.exit92, %loop.exit.127, %choice.case17, %choice.case
  %choice.res201 = phi ptr [ %call.res16, %choice.case ], [ %rec.alloc, %choice.case17 ], [ %call.res70, %loop.exit.127 ], [ %choice.res145, %choice.exit92 ], [ %call.res157, %choice.case146 ], [ %rec.alloc174, %choice.case158 ], [ %rec.alloc194, %choice.case178 ], [ %call.res200, %choice.next179 ]
  ret ptr %choice.res201

choice.case:                                      ; preds = %choice.exit9
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.p, align 8
  %var.load15 = load ptr, ptr %var.p, align 8
  %call.res16 = call ptr @"layout::compute_prim_layout"(ptr %var.load15)
  br label %choice.exit14

choice.next:                                      ; preds = %choice.exit9
  %tag.gep19 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id20 = load i64, ptr %tag.gep19, align 8
  %tag.match21 = icmp eq i64 %tag.id20, 2
  br i1 %tag.match21, label %choice.case17, label %choice.next18

choice.case17:                                    ; preds = %choice.next
  %pay.gep22 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr23 = load ptr, ptr %pay.gep22, align 8
  store ptr %payload.ptr23, ptr %var._24, align 8
  %var.load25 = load i64, ptr %var.ptr_sz, align 8
  %multmp = mul i64 %var.load25, 2
  %var.load26 = load i64, ptr %var.ptr_align, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep27 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 6, ptr %tag.gep27, align 8
  %pay.gep28 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep28, align 8
  %arena.cur29 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %multmp, ptr %rec.fld, align 8
  %rec.fld30 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load26, ptr %rec.fld30, align 8
  %rec.fld31 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %enum.alloc, ptr %rec.fld31, align 8
  br label %choice.exit14

choice.next18:                                    ; preds = %choice.next
  %tag.gep34 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id35 = load i64, ptr %tag.gep34, align 8
  %tag.match36 = icmp eq i64 %tag.id35, 3
  br i1 %tag.match36, label %choice.case32, label %choice.next33

choice.case32:                                    ; preds = %choice.next18
  %pay.gep37 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr38 = load ptr, ptr %pay.gep37, align 8
  store ptr %payload.ptr38, ptr %var._39, align 8
  store ptr %payload.ptr38, ptr %var.r, align 8
  store i64 0, ptr %"var.cur_off'", align 8
  store i64 1, ptr %"var.max_align'", align 8
  %var.load40 = load ptr, ptr %var.r, align 8
  %a.load = load ptr, ptr %var.r, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next33:                                    ; preds = %choice.next18
  %tag.gep73 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id74 = load i64, ptr %tag.gep73, align 8
  %tag.match75 = icmp eq i64 %tag.id74, 4
  br i1 %tag.match75, label %choice.case71, label %choice.next72

a.create:                                         ; preds = %choice.case32
  %arena.cur41 = call ptr @dva_arena_current()
  %a.create42 = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 24)
  %arena.cur43 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create42, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create42, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create42, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create42, ptr %var.r, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case32
  %a.load2 = load ptr, ptr %var.r, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len44 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data45 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.127, align 8
  %cycle.prev.u = load ptr, ptr %var._39, align 8
  br label %loop.header.127

loop.header.127:                                  ; preds = %loop.latch.127, %a.after
  %counter.load = load i64, ptr %loop.idx.127, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len44
  br i1 %loop.cond, label %loop.body.127, label %loop.exit.nat.127

loop.body.127:                                    ; preds = %loop.header.127
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.127, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data45, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._46, align 8
  store ptr %slot.i2p, ptr %var.f, align 8
  %var.load47 = load ptr, ptr %var.ctx, align 8
  %var.load48 = load ptr, ptr %var.f, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load48, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %call.res49 = call ptr @"layout::compute_layout"(ptr %var.load47, ptr %fld.load)
  store ptr %call.res49, ptr %var.flay, align 8
  %var.load50 = load ptr, ptr %var.flay, align 8
  %fld.gep51 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load50, i32 0, i32 1
  %fld.load52 = load i64, ptr %fld.gep51, align 8
  %max = call i64 @llvm.smax.i64(i64 %fld.load52, i64 1)
  store i64 %max, ptr %var.f_align, align 8
  %var.load53 = load i64, ptr %"var.max_align'", align 8
  %var.load54 = load i64, ptr %var.f_align, align 8
  %max55 = call i64 @llvm.smax.i64(i64 %var.load53, i64 %var.load54)
  store i64 %max55, ptr %"var.max_align'", align 8
  %var.load56 = load i64, ptr %"var.cur_off'", align 8
  %var.load57 = load i64, ptr %var.f_align, align 8
  %call.res58 = call i64 @"layout::align_up"(i64 %var.load56, i64 %var.load57)
  %var.load59 = load ptr, ptr %var.flay, align 8
  %fld.gep60 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load59, i32 0, i32 0
  %fld.load61 = load i64, ptr %fld.gep60, align 8
  %addtmp = add i64 %call.res58, %fld.load61
  store i64 %addtmp, ptr %"var.cur_off'", align 8
  br label %loop.latch.127

loop.exit.nat.127:                                ; preds = %loop.header.127
  br label %loop.exit.127

loop.latch.127:                                   ; preds = %loop.body.127
  %step.val = load i64, ptr %loop.step.127, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.127, align 8
  br label %loop.header.127

loop.exit.127:                                    ; preds = %loop.exit.nat.127
  store ptr %cycle.prev.u, ptr %var._39, align 8
  %var.load62 = load i64, ptr %"var.cur_off'", align 8
  %var.load63 = load i64, ptr %"var.max_align'", align 8
  %call.res64 = call i64 @"layout::align_up"(i64 %var.load62, i64 %var.load63)
  store i64 %call.res64, ptr %var.total_size, align 8
  %var.load65 = load i64, ptr %var.total_size, align 8
  %var.load66 = load i64, ptr %var.min_rec_sz, align 8
  %max67 = call i64 @llvm.smax.i64(i64 %var.load65, i64 %var.load66)
  store i64 %max67, ptr %var.fin_size, align 8
  %var.load68 = load i64, ptr %var.fin_size, align 8
  %var.load69 = load i64, ptr %"var.max_align'", align 8
  %call.res70 = call ptr @"tast::layout_aggregate"(i64 %var.load68, i64 %var.load69)
  br label %choice.exit14

choice.case71:                                    ; preds = %choice.next33
  %pay.gep76 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr77 = load ptr, ptr %pay.gep76, align 8
  store ptr %payload.ptr77, ptr %var._78, align 8
  store ptr %payload.ptr77, ptr %var.r79, align 8
  %var.load80 = load ptr, ptr %var.r79, align 8
  %fld.gep81 = getelementptr inbounds { { i1, ptr }, { i1, ptr } }, ptr %var.load80, i32 0, i32 0
  %fld.gep82 = getelementptr inbounds { i1, ptr }, ptr %fld.gep81, i32 0, i32 0
  %fld.load83 = load i1, ptr %fld.gep82, align 1
  store i1 %fld.load83, ptr %var.has_p, align 1
  %var.load84 = load ptr, ptr %var.r79, align 8
  %fld.gep85 = getelementptr inbounds { { i1, ptr }, { i1, ptr } }, ptr %var.load84, i32 0, i32 1
  %fld.gep86 = getelementptr inbounds { i1, ptr }, ptr %fld.gep85, i32 0, i32 0
  %fld.load87 = load i1, ptr %fld.gep86, align 1
  store i1 %fld.load87, ptr %var.has_n, align 1
  %var.load88 = load i1, ptr %var.has_p, align 1
  br i1 %var.load88, label %and.128.then, label %and.128.else

choice.next72:                                    ; preds = %choice.next33
  %tag.gep148 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id149 = load i64, ptr %tag.gep148, align 8
  %tag.match150 = icmp eq i64 %tag.id149, 5
  br i1 %tag.match150, label %choice.case146, label %choice.next147

and.128.then:                                     ; preds = %choice.case71
  %var.load89 = load i1, ptr %var.has_n, align 1
  %nottmp = xor i1 %var.load89, true
  br label %and.128.exit

and.128.else:                                     ; preds = %choice.case71
  br label %and.128.exit

and.128.exit:                                     ; preds = %and.128.else, %and.128.then
  %and.128.phi = phi i1 [ %nottmp, %and.128.then ], [ %var.load88, %and.128.else ]
  br i1 %and.128.phi, label %choice.then90, label %choice.else91

choice.then90:                                    ; preds = %and.128.exit
  %var.load93 = load ptr, ptr %var.ctx, align 8
  %var.load94 = load ptr, ptr %var.r79, align 8
  %fld.gep95 = getelementptr inbounds { { i1, ptr }, { i1, ptr } }, ptr %var.load94, i32 0, i32 0
  %fld.gep96 = getelementptr inbounds { i1, ptr }, ptr %fld.gep95, i32 0, i32 1
  %fld.load97 = load ptr, ptr %fld.gep96, align 8
  %call.res98 = call i1 @"layout::is_niche_utype"(ptr %var.load93, ptr %fld.load97)
  br i1 %call.res98, label %choice.then99, label %choice.else100

choice.else91:                                    ; preds = %and.128.exit
  %var.load110 = load i1, ptr %var.has_p, align 1
  %nottmp111 = xor i1 %var.load110, true
  br i1 %nottmp111, label %and.129.then, label %and.129.else

choice.exit92:                                    ; preds = %choice.exit115, %choice.exit101
  %choice.res145 = phi ptr [ %choice.res109, %choice.exit101 ], [ %choice.res144, %choice.exit115 ]
  br label %choice.exit14

choice.then99:                                    ; preds = %choice.then90
  %var.load102 = load i64, ptr %var.ptr_sz, align 8
  %var.load103 = load i64, ptr %var.ptr_align, align 8
  %call.res104 = call ptr @"tast::layout_scalar"(i64 %var.load102, i64 %var.load103)
  br label %choice.exit101

choice.else100:                                   ; preds = %choice.then90
  %var.load105 = load i64, ptr %var.ptr_sz, align 8
  %multmp106 = mul i64 %var.load105, 2
  %var.load107 = load i64, ptr %var.ptr_align, align 8
  %call.res108 = call ptr @"tast::layout_ram"(i64 %multmp106, i64 %var.load107)
  br label %choice.exit101

choice.exit101:                                   ; preds = %choice.else100, %choice.then99
  %choice.res109 = phi ptr [ %call.res104, %choice.then99 ], [ %call.res108, %choice.else100 ]
  br label %choice.exit92

and.129.then:                                     ; preds = %choice.else91
  %var.load112 = load i1, ptr %var.has_n, align 1
  br label %and.129.exit

and.129.else:                                     ; preds = %choice.else91
  br label %and.129.exit

and.129.exit:                                     ; preds = %and.129.else, %and.129.then
  %and.129.phi = phi i1 [ %var.load112, %and.129.then ], [ %nottmp111, %and.129.else ]
  br i1 %and.129.phi, label %choice.then113, label %choice.else114

choice.then113:                                   ; preds = %and.129.exit
  %var.load116 = load ptr, ptr %var.ctx, align 8
  %var.load117 = load ptr, ptr %var.r79, align 8
  %fld.gep118 = getelementptr inbounds { { i1, ptr }, { i1, ptr } }, ptr %var.load117, i32 0, i32 1
  %fld.gep119 = getelementptr inbounds { i1, ptr }, ptr %fld.gep118, i32 0, i32 1
  %fld.load120 = load ptr, ptr %fld.gep119, align 8
  %call.res121 = call i1 @"layout::is_niche_utype"(ptr %var.load116, ptr %fld.load120)
  br i1 %call.res121, label %choice.then122, label %choice.else123

choice.else114:                                   ; preds = %and.129.exit
  %var.load133 = load i1, ptr %var.has_p, align 1
  br i1 %var.load133, label %or.130.then, label %or.130.else

choice.exit115:                                   ; preds = %choice.exit137, %choice.exit124
  %choice.res144 = phi ptr [ %choice.res132, %choice.exit124 ], [ %choice.res143, %choice.exit137 ]
  br label %choice.exit92

choice.then122:                                   ; preds = %choice.then113
  %var.load125 = load i64, ptr %var.ptr_sz, align 8
  %var.load126 = load i64, ptr %var.ptr_align, align 8
  %call.res127 = call ptr @"tast::layout_scalar"(i64 %var.load125, i64 %var.load126)
  br label %choice.exit124

choice.else123:                                   ; preds = %choice.then113
  %var.load128 = load i64, ptr %var.ptr_sz, align 8
  %multmp129 = mul i64 %var.load128, 2
  %var.load130 = load i64, ptr %var.ptr_align, align 8
  %call.res131 = call ptr @"tast::layout_ram"(i64 %multmp129, i64 %var.load130)
  br label %choice.exit124

choice.exit124:                                   ; preds = %choice.else123, %choice.then122
  %choice.res132 = phi ptr [ %call.res127, %choice.then122 ], [ %call.res131, %choice.else123 ]
  br label %choice.exit115

or.130.then:                                      ; preds = %choice.else114
  br label %or.130.exit

or.130.else:                                      ; preds = %choice.else114
  %var.load134 = load i1, ptr %var.has_n, align 1
  br label %or.130.exit

or.130.exit:                                      ; preds = %or.130.else, %or.130.then
  %or.130.phi = phi i1 [ %var.load133, %or.130.then ], [ %var.load134, %or.130.else ]
  br i1 %or.130.phi, label %choice.then135, label %choice.else136

choice.then135:                                   ; preds = %or.130.exit
  %var.load138 = load i64, ptr %var.ptr_sz, align 8
  %multmp139 = mul i64 %var.load138, 2
  %var.load140 = load i64, ptr %var.ptr_align, align 8
  %call.res141 = call ptr @"tast::layout_ram"(i64 %multmp139, i64 %var.load140)
  br label %choice.exit137

choice.else136:                                   ; preds = %or.130.exit
  %call.res142 = call ptr @"tast::layout_scalar"(i64 1, i64 1)
  br label %choice.exit137

choice.exit137:                                   ; preds = %choice.else136, %choice.then135
  %choice.res143 = phi ptr [ %call.res141, %choice.then135 ], [ %call.res142, %choice.else136 ]
  br label %choice.exit115

choice.case146:                                   ; preds = %choice.next72
  %pay.gep151 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr152 = load ptr, ptr %pay.gep151, align 8
  store ptr %payload.ptr152, ptr %var._153, align 8
  %var.load154 = load i64, ptr %var.ptr_sz, align 8
  %multmp155 = mul i64 %var.load154, 2
  %var.load156 = load i64, ptr %var.ptr_align, align 8
  %call.res157 = call ptr @"tast::layout_aggregate"(i64 %multmp155, i64 %var.load156)
  br label %choice.exit14

choice.next147:                                   ; preds = %choice.next72
  %tag.gep160 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id161 = load i64, ptr %tag.gep160, align 8
  %tag.match162 = icmp eq i64 %tag.id161, 6
  br i1 %tag.match162, label %choice.case158, label %choice.next159

choice.case158:                                   ; preds = %choice.next147
  %pay.gep163 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr164 = load ptr, ptr %pay.gep163, align 8
  store ptr %payload.ptr164, ptr %var._165, align 8
  %var.load166 = load i64, ptr %var.ptr_sz, align 8
  %multmp167 = mul i64 %var.load166, 3
  %var.load168 = load i64, ptr %var.ptr_align, align 8
  %arena.cur169 = call ptr @dva_arena_current()
  %enum.alloc170 = call ptr @dva_arena_alloc(ptr %arena.cur169, i64 16)
  %tag.gep171 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc170, i32 0, i32 0
  store i64 5, ptr %tag.gep171, align 8
  %pay.gep172 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc170, i32 0, i32 1
  store ptr null, ptr %pay.gep172, align 8
  %arena.cur173 = call ptr @dva_arena_current()
  %rec.alloc174 = call ptr @dva_arena_alloc(ptr %arena.cur173, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld175 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc174, i32 0, i32 0
  store i64 %multmp167, ptr %rec.fld175, align 8
  %rec.fld176 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc174, i32 0, i32 1
  store i64 %var.load168, ptr %rec.fld176, align 8
  %rec.fld177 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc174, i32 0, i32 2
  store ptr %enum.alloc170, ptr %rec.fld177, align 8
  br label %choice.exit14

choice.next159:                                   ; preds = %choice.next147
  %tag.gep180 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id181 = load i64, ptr %tag.gep180, align 8
  %tag.match182 = icmp eq i64 %tag.id181, 7
  br i1 %tag.match182, label %choice.case178, label %choice.next179

choice.case178:                                   ; preds = %choice.next159
  %pay.gep183 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr184 = load ptr, ptr %pay.gep183, align 8
  store ptr %payload.ptr184, ptr %var._185, align 8
  %var.load186 = load i64, ptr %var.ptr_sz, align 8
  %multmp187 = mul i64 %var.load186, 2
  %var.load188 = load i64, ptr %var.ptr_align, align 8
  %arena.cur189 = call ptr @dva_arena_current()
  %enum.alloc190 = call ptr @dva_arena_alloc(ptr %arena.cur189, i64 16)
  %tag.gep191 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc190, i32 0, i32 0
  store i64 4, ptr %tag.gep191, align 8
  %pay.gep192 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc190, i32 0, i32 1
  store ptr null, ptr %pay.gep192, align 8
  %arena.cur193 = call ptr @dva_arena_current()
  %rec.alloc194 = call ptr @dva_arena_alloc(ptr %arena.cur193, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld195 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc194, i32 0, i32 0
  store i64 %multmp187, ptr %rec.fld195, align 8
  %rec.fld196 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc194, i32 0, i32 1
  store i64 %var.load188, ptr %rec.fld196, align 8
  %rec.fld197 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc194, i32 0, i32 2
  store ptr %enum.alloc190, ptr %rec.fld197, align 8
  br label %choice.exit14

choice.next179:                                   ; preds = %choice.next159
  %var.load198 = load i64, ptr %var.ptr_sz, align 8
  %var.load199 = load i64, ptr %var.ptr_align, align 8
  %call.res200 = call ptr @"tast::layout_scalar"(i64 %var.load198, i64 %var.load199)
  br label %choice.exit14
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #0

declare ptr @"tast::layout_ram"(i64, i64) #1

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
