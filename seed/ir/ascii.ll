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
@clo.const = internal constant { ptr, ptr } { ptr @"ascii::is_ascii", ptr null }
@"var.ascii::is_ascii" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"ascii::is_digit", ptr null }
@"var.ascii::is_digit" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"ascii::is_upper", ptr null }
@"var.ascii::is_upper" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"ascii::is_lower", ptr null }
@"var.ascii::is_lower" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"ascii::is_alpha", ptr null }
@"var.ascii::is_alpha" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"ascii::is_alnum", ptr null }
@"var.ascii::is_alnum" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"ascii::is_hex", ptr null }
@"var.ascii::is_hex" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"ascii::to_lower", ptr null }
@"var.ascii::to_lower" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"ascii::to_upper", ptr null }
@"var.ascii::to_upper" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"ascii::hex_value", ptr null }
@"var.ascii::hex_value" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"ascii::hex_digit_lower", ptr null }
@"var.ascii::hex_digit_lower" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"ascii::hex_digit_upper", ptr null }
@"var.ascii::hex_digit_upper" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"ascii::hex_char_lower", ptr null }
@"var.ascii::hex_char_lower" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"ascii::hex_char_upper", ptr null }
@"var.ascii::hex_char_upper" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_ascii, ptr null }]

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

define internal void @__dva_global_init_ascii() #1 {
entry:
  store ptr @clo.const, ptr @"var.ascii::is_ascii", align 8
  store ptr @clo.const.1, ptr @"var.ascii::is_digit", align 8
  store ptr @clo.const.2, ptr @"var.ascii::is_upper", align 8
  store ptr @clo.const.3, ptr @"var.ascii::is_lower", align 8
  store ptr @clo.const.4, ptr @"var.ascii::is_alpha", align 8
  store ptr @clo.const.5, ptr @"var.ascii::is_alnum", align 8
  store ptr @clo.const.6, ptr @"var.ascii::is_hex", align 8
  store ptr @clo.const.7, ptr @"var.ascii::to_lower", align 8
  store ptr @clo.const.8, ptr @"var.ascii::to_upper", align 8
  store ptr @clo.const.9, ptr @"var.ascii::hex_value", align 8
  store ptr @clo.const.10, ptr @"var.ascii::hex_digit_lower", align 8
  store ptr @clo.const.11, ptr @"var.ascii::hex_digit_upper", align 8
  store ptr @clo.const.12, ptr @"var.ascii::hex_char_lower", align 8
  store ptr @clo.const.13, ptr @"var.ascii::hex_char_upper", align 8
  ret void
}

define i1 @"ascii::is_ascii"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %cmptmp = icmp sge i64 %var.load, 0
  br i1 %cmptmp, label %and.3.then, label %and.3.else

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %and.3.exit
  br label %choice.exit

choice.next:                                      ; preds = %and.3.exit
  br label %choice.exit

and.3.then:                                       ; preds = %entry
  %cmptmp1 = icmp sle i64 %var.load, 127
  br label %and.3.exit

and.3.else:                                       ; preds = %entry
  br label %and.3.exit

and.3.exit:                                       ; preds = %and.3.else, %and.3.then
  %and.3.phi = phi i1 [ %cmptmp1, %and.3.then ], [ %cmptmp, %and.3.else ]
  br i1 %and.3.phi, label %choice.case, label %choice.next
}

define i1 @"ascii::is_digit"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %cmptmp = icmp sge i64 %var.load, 48
  br i1 %cmptmp, label %and.4.then, label %and.4.else

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %and.4.exit
  br label %choice.exit

choice.next:                                      ; preds = %and.4.exit
  br label %choice.exit

and.4.then:                                       ; preds = %entry
  %cmptmp1 = icmp sle i64 %var.load, 57
  br label %and.4.exit

and.4.else:                                       ; preds = %entry
  br label %and.4.exit

and.4.exit:                                       ; preds = %and.4.else, %and.4.then
  %and.4.phi = phi i1 [ %cmptmp1, %and.4.then ], [ %cmptmp, %and.4.else ]
  br i1 %and.4.phi, label %choice.case, label %choice.next
}

define i1 @"ascii::is_upper"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %cmptmp = icmp sge i64 %var.load, 65
  br i1 %cmptmp, label %and.5.then, label %and.5.else

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %and.5.exit
  br label %choice.exit

choice.next:                                      ; preds = %and.5.exit
  br label %choice.exit

and.5.then:                                       ; preds = %entry
  %cmptmp1 = icmp sle i64 %var.load, 90
  br label %and.5.exit

and.5.else:                                       ; preds = %entry
  br label %and.5.exit

and.5.exit:                                       ; preds = %and.5.else, %and.5.then
  %and.5.phi = phi i1 [ %cmptmp1, %and.5.then ], [ %cmptmp, %and.5.else ]
  br i1 %and.5.phi, label %choice.case, label %choice.next
}

define i1 @"ascii::is_lower"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %cmptmp = icmp sge i64 %var.load, 97
  br i1 %cmptmp, label %and.6.then, label %and.6.else

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %and.6.exit
  br label %choice.exit

choice.next:                                      ; preds = %and.6.exit
  br label %choice.exit

and.6.then:                                       ; preds = %entry
  %cmptmp1 = icmp sle i64 %var.load, 122
  br label %and.6.exit

and.6.else:                                       ; preds = %entry
  br label %and.6.exit

and.6.exit:                                       ; preds = %and.6.else, %and.6.then
  %and.6.phi = phi i1 [ %cmptmp1, %and.6.then ], [ %cmptmp, %and.6.else ]
  br i1 %and.6.phi, label %choice.case, label %choice.next
}

define i1 @"ascii::is_alpha"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %cmptmp = icmp sge i64 %var.load, 65
  br i1 %cmptmp, label %and.7.then, label %and.7.else

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %and.8.exit
  br label %choice.exit

choice.next:                                      ; preds = %and.8.exit
  br label %choice.exit

and.7.then:                                       ; preds = %entry
  %cmptmp1 = icmp sle i64 %var.load, 90
  br label %and.7.exit

and.7.else:                                       ; preds = %entry
  br label %and.7.exit

and.7.exit:                                       ; preds = %and.7.else, %and.7.then
  %and.7.phi = phi i1 [ %cmptmp1, %and.7.then ], [ %cmptmp, %and.7.else ]
  %cmptmp2 = icmp sge i64 %var.load, 97
  br i1 %cmptmp2, label %and.8.then, label %and.8.else

and.8.then:                                       ; preds = %and.7.exit
  %cmptmp3 = icmp sle i64 %var.load, 122
  br label %and.8.exit

and.8.else:                                       ; preds = %and.7.exit
  br label %and.8.exit

and.8.exit:                                       ; preds = %and.8.else, %and.8.then
  %and.8.phi = phi i1 [ %cmptmp3, %and.8.then ], [ %cmptmp2, %and.8.else ]
  %case.or = or i1 %and.7.phi, %and.8.phi
  br i1 %case.or, label %choice.case, label %choice.next
}

define i1 @"ascii::is_alnum"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %cmptmp = icmp sge i64 %var.load, 48
  br i1 %cmptmp, label %and.9.then, label %and.9.else

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %and.11.exit
  br label %choice.exit

choice.next:                                      ; preds = %and.11.exit
  br label %choice.exit

and.9.then:                                       ; preds = %entry
  %cmptmp1 = icmp sle i64 %var.load, 57
  br label %and.9.exit

and.9.else:                                       ; preds = %entry
  br label %and.9.exit

and.9.exit:                                       ; preds = %and.9.else, %and.9.then
  %and.9.phi = phi i1 [ %cmptmp1, %and.9.then ], [ %cmptmp, %and.9.else ]
  %cmptmp2 = icmp sge i64 %var.load, 65
  br i1 %cmptmp2, label %and.10.then, label %and.10.else

and.10.then:                                      ; preds = %and.9.exit
  %cmptmp3 = icmp sle i64 %var.load, 90
  br label %and.10.exit

and.10.else:                                      ; preds = %and.9.exit
  br label %and.10.exit

and.10.exit:                                      ; preds = %and.10.else, %and.10.then
  %and.10.phi = phi i1 [ %cmptmp3, %and.10.then ], [ %cmptmp2, %and.10.else ]
  %case.or = or i1 %and.9.phi, %and.10.phi
  %cmptmp4 = icmp sge i64 %var.load, 97
  br i1 %cmptmp4, label %and.11.then, label %and.11.else

and.11.then:                                      ; preds = %and.10.exit
  %cmptmp5 = icmp sle i64 %var.load, 122
  br label %and.11.exit

and.11.else:                                      ; preds = %and.10.exit
  br label %and.11.exit

and.11.exit:                                      ; preds = %and.11.else, %and.11.then
  %and.11.phi = phi i1 [ %cmptmp5, %and.11.then ], [ %cmptmp4, %and.11.else ]
  %case.or6 = or i1 %case.or, %and.11.phi
  br i1 %case.or6, label %choice.case, label %choice.next
}

define i1 @"ascii::is_hex"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %cmptmp = icmp sge i64 %var.load, 48
  br i1 %cmptmp, label %and.12.then, label %and.12.else

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %and.14.exit
  br label %choice.exit

choice.next:                                      ; preds = %and.14.exit
  br label %choice.exit

and.12.then:                                      ; preds = %entry
  %cmptmp1 = icmp sle i64 %var.load, 57
  br label %and.12.exit

and.12.else:                                      ; preds = %entry
  br label %and.12.exit

and.12.exit:                                      ; preds = %and.12.else, %and.12.then
  %and.12.phi = phi i1 [ %cmptmp1, %and.12.then ], [ %cmptmp, %and.12.else ]
  %cmptmp2 = icmp sge i64 %var.load, 65
  br i1 %cmptmp2, label %and.13.then, label %and.13.else

and.13.then:                                      ; preds = %and.12.exit
  %cmptmp3 = icmp sle i64 %var.load, 70
  br label %and.13.exit

and.13.else:                                      ; preds = %and.12.exit
  br label %and.13.exit

and.13.exit:                                      ; preds = %and.13.else, %and.13.then
  %and.13.phi = phi i1 [ %cmptmp3, %and.13.then ], [ %cmptmp2, %and.13.else ]
  %case.or = or i1 %and.12.phi, %and.13.phi
  %cmptmp4 = icmp sge i64 %var.load, 97
  br i1 %cmptmp4, label %and.14.then, label %and.14.else

and.14.then:                                      ; preds = %and.13.exit
  %cmptmp5 = icmp sle i64 %var.load, 102
  br label %and.14.exit

and.14.else:                                      ; preds = %and.13.exit
  br label %and.14.exit

and.14.exit:                                      ; preds = %and.14.else, %and.14.then
  %and.14.phi = phi i1 [ %cmptmp5, %and.14.then ], [ %cmptmp4, %and.14.else ]
  %case.or6 = or i1 %case.or, %and.14.phi
  br i1 %case.or6, label %choice.case, label %choice.next
}

define i64 @"ascii::to_lower"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"ascii::is_upper"(i64 %var.load)
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.c, align 8
  %addtmp = add i64 %var.load1, 32
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.c, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %addtmp, %choice.then ], [ %var.load2, %choice.else ]
  ret i64 %choice.res
}

define i64 @"ascii::to_upper"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"ascii::is_lower"(i64 %var.load)
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.c, align 8
  %subtmp = sub i64 %var.load1, 32
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.c, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %subtmp, %choice.then ], [ %var.load2, %choice.else ]
  ret i64 %choice.res
}

define { i1, i64 } @"ascii::hex_value"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %cmptmp = icmp sge i64 %var.load, 48
  br i1 %cmptmp, label %and.15.then, label %and.15.else

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %choice.then, label %choice.else

choice.case:                                      ; preds = %and.15.exit
  br label %choice.exit

choice.next:                                      ; preds = %and.15.exit
  br label %choice.exit

and.15.then:                                      ; preds = %entry
  %cmptmp1 = icmp sle i64 %var.load, 57
  br label %and.15.exit

and.15.else:                                      ; preds = %entry
  br label %and.15.exit

and.15.exit:                                      ; preds = %and.15.else, %and.15.then
  %and.15.phi = phi i1 [ %cmptmp1, %and.15.then ], [ %cmptmp, %and.15.else ]
  br i1 %and.15.phi, label %choice.case, label %choice.next

choice.then:                                      ; preds = %choice.exit
  %var.load3 = load i64, ptr %var.c, align 8
  %subtmp = sub i64 %var.load3, 48
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %subtmp, 1
  br label %choice.exit2

choice.else:                                      ; preds = %choice.exit
  %var.load4 = load i64, ptr %var.c, align 8
  %cmptmp8 = icmp sge i64 %var.load4, 65
  br i1 %cmptmp8, label %and.16.then, label %and.16.else

choice.exit2:                                     ; preds = %choice.exit13, %choice.then
  %choice.res32 = phi { i1, i64 } [ %ram.pay, %choice.then ], [ %choice.res31, %choice.exit13 ]
  ret { i1, i64 } %choice.res32

choice.exit5:                                     ; preds = %choice.next7, %choice.case6
  %choice.res10 = phi i1 [ true, %choice.case6 ], [ false, %choice.next7 ]
  br i1 %choice.res10, label %choice.then11, label %choice.else12

choice.case6:                                     ; preds = %and.16.exit
  br label %choice.exit5

choice.next7:                                     ; preds = %and.16.exit
  br label %choice.exit5

and.16.then:                                      ; preds = %choice.else
  %cmptmp9 = icmp sle i64 %var.load4, 70
  br label %and.16.exit

and.16.else:                                      ; preds = %choice.else
  br label %and.16.exit

and.16.exit:                                      ; preds = %and.16.else, %and.16.then
  %and.16.phi = phi i1 [ %cmptmp9, %and.16.then ], [ %cmptmp8, %and.16.else ]
  br i1 %and.16.phi, label %choice.case6, label %choice.next7

choice.then11:                                    ; preds = %choice.exit5
  %var.load14 = load i64, ptr %var.c, align 8
  %subtmp15 = sub i64 %var.load14, 55
  %ram.pay16 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %subtmp15, 1
  br label %choice.exit13

choice.else12:                                    ; preds = %choice.exit5
  %var.load17 = load i64, ptr %var.c, align 8
  %cmptmp21 = icmp sge i64 %var.load17, 97
  br i1 %cmptmp21, label %and.17.then, label %and.17.else

choice.exit13:                                    ; preds = %choice.exit26, %choice.then11
  %choice.res31 = phi { i1, i64 } [ %ram.pay16, %choice.then11 ], [ %choice.res30, %choice.exit26 ]
  br label %choice.exit2

choice.exit18:                                    ; preds = %choice.next20, %choice.case19
  %choice.res23 = phi i1 [ true, %choice.case19 ], [ false, %choice.next20 ]
  br i1 %choice.res23, label %choice.then24, label %choice.else25

choice.case19:                                    ; preds = %and.17.exit
  br label %choice.exit18

choice.next20:                                    ; preds = %and.17.exit
  br label %choice.exit18

and.17.then:                                      ; preds = %choice.else12
  %cmptmp22 = icmp sle i64 %var.load17, 102
  br label %and.17.exit

and.17.else:                                      ; preds = %choice.else12
  br label %and.17.exit

and.17.exit:                                      ; preds = %and.17.else, %and.17.then
  %and.17.phi = phi i1 [ %cmptmp22, %and.17.then ], [ %cmptmp21, %and.17.else ]
  br i1 %and.17.phi, label %choice.case19, label %choice.next20

choice.then24:                                    ; preds = %choice.exit18
  %var.load27 = load i64, ptr %var.c, align 8
  %subtmp28 = sub i64 %var.load27, 87
  %ram.pay29 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %subtmp28, 1
  br label %choice.exit26

choice.else25:                                    ; preds = %choice.exit18
  br label %choice.exit26

choice.exit26:                                    ; preds = %choice.else25, %choice.then24
  %choice.res30 = phi { i1, i64 } [ %ram.pay29, %choice.then24 ], [ zeroinitializer, %choice.else25 ]
  br label %choice.exit13
}

define { i1, i64 } @"ascii::hex_digit_lower"(i64 %0) #1 {
entry:
  %var.n = alloca i64, align 8
  store i64 %0, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load, 0
  br i1 %cmptmp, label %and.18.then, label %and.18.else

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %choice.then, label %choice.else

choice.case:                                      ; preds = %and.18.exit
  br label %choice.exit

choice.next:                                      ; preds = %and.18.exit
  br label %choice.exit

and.18.then:                                      ; preds = %entry
  %cmptmp1 = icmp sle i64 %var.load, 15
  br label %and.18.exit

and.18.else:                                      ; preds = %entry
  br label %and.18.exit

and.18.exit:                                      ; preds = %and.18.else, %and.18.then
  %and.18.phi = phi i1 [ %cmptmp1, %and.18.then ], [ %cmptmp, %and.18.else ]
  br i1 %and.18.phi, label %choice.case, label %choice.next

choice.then:                                      ; preds = %choice.exit
  %var.load3 = load i64, ptr %var.n, align 8
  %cmptmp4 = icmp slt i64 %var.load3, 10
  br i1 %cmptmp4, label %choice.then5, label %choice.else6

choice.else:                                      ; preds = %choice.exit
  br label %choice.exit2

choice.exit2:                                     ; preds = %choice.else, %choice.exit7
  %choice.res12 = phi { i1, i64 } [ %ram.pay, %choice.exit7 ], [ zeroinitializer, %choice.else ]
  ret { i1, i64 } %choice.res12

choice.then5:                                     ; preds = %choice.then
  %var.load8 = load i64, ptr %var.n, align 8
  %addtmp = add i64 48, %var.load8
  br label %choice.exit7

choice.else6:                                     ; preds = %choice.then
  %var.load9 = load i64, ptr %var.n, align 8
  %addtmp10 = add i64 87, %var.load9
  br label %choice.exit7

choice.exit7:                                     ; preds = %choice.else6, %choice.then5
  %choice.res11 = phi i64 [ %addtmp, %choice.then5 ], [ %addtmp10, %choice.else6 ]
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %choice.res11, 1
  br label %choice.exit2
}

define { i1, i64 } @"ascii::hex_digit_upper"(i64 %0) #1 {
entry:
  %var.n = alloca i64, align 8
  store i64 %0, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load, 0
  br i1 %cmptmp, label %and.19.then, label %and.19.else

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %choice.then, label %choice.else

choice.case:                                      ; preds = %and.19.exit
  br label %choice.exit

choice.next:                                      ; preds = %and.19.exit
  br label %choice.exit

and.19.then:                                      ; preds = %entry
  %cmptmp1 = icmp sle i64 %var.load, 15
  br label %and.19.exit

and.19.else:                                      ; preds = %entry
  br label %and.19.exit

and.19.exit:                                      ; preds = %and.19.else, %and.19.then
  %and.19.phi = phi i1 [ %cmptmp1, %and.19.then ], [ %cmptmp, %and.19.else ]
  br i1 %and.19.phi, label %choice.case, label %choice.next

choice.then:                                      ; preds = %choice.exit
  %var.load3 = load i64, ptr %var.n, align 8
  %cmptmp4 = icmp slt i64 %var.load3, 10
  br i1 %cmptmp4, label %choice.then5, label %choice.else6

choice.else:                                      ; preds = %choice.exit
  br label %choice.exit2

choice.exit2:                                     ; preds = %choice.else, %choice.exit7
  %choice.res12 = phi { i1, i64 } [ %ram.pay, %choice.exit7 ], [ zeroinitializer, %choice.else ]
  ret { i1, i64 } %choice.res12

choice.then5:                                     ; preds = %choice.then
  %var.load8 = load i64, ptr %var.n, align 8
  %addtmp = add i64 48, %var.load8
  br label %choice.exit7

choice.else6:                                     ; preds = %choice.then
  %var.load9 = load i64, ptr %var.n, align 8
  %addtmp10 = add i64 55, %var.load9
  br label %choice.exit7

choice.exit7:                                     ; preds = %choice.else6, %choice.then5
  %choice.res11 = phi i64 [ %addtmp, %choice.then5 ], [ %addtmp10, %choice.else6 ]
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %choice.res11, 1
  br label %choice.exit2
}

define i64 @"ascii::hex_char_lower"(i64 %0) #1 {
entry:
  %var.n = alloca i64, align 8
  store i64 %0, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %cmptmp = icmp slt i64 %var.load, 10
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.n, align 8
  %addtmp = add i64 48, %var.load1
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.n, align 8
  %addtmp3 = add i64 87, %var.load2
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %addtmp, %choice.then ], [ %addtmp3, %choice.else ]
  ret i64 %choice.res
}

define i64 @"ascii::hex_char_upper"(i64 %0) #1 {
entry:
  %var.n = alloca i64, align 8
  store i64 %0, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %cmptmp = icmp slt i64 %var.load, 10
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.n, align 8
  %addtmp = add i64 48, %var.load1
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.n, align 8
  %addtmp3 = add i64 55, %var.load2
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %addtmp, %choice.then ], [ %addtmp3, %choice.else ]
  ret i64 %choice.res
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
