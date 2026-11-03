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
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const = internal constant { ptr, ptr } { ptr @"utf::append_rune", ptr null }
@"var.utf::append_rune" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"utf::append_codepoint", ptr null }
@"var.utf::append_codepoint" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"utf::encode_rune", ptr null }
@"var.utf::encode_rune" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"utf::encode_codepoint", ptr null }
@"var.utf::encode_codepoint" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"utf::seq_len", ptr null }
@"var.utf::seq_len" = global ptr null
@stale_addr_msg = internal unnamed_addr constant [51 x i8] c"E4011: stale Addr dereference after arena restore\0A\00"
@clo.const.5 = internal constant { ptr, ptr } { ptr @"utf::decode_rune_addr", ptr null }
@"var.utf::decode_rune_addr" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.6 = internal constant { ptr, ptr } { ptr @"utf::decode_rune_builder", ptr null }
@"var.utf::decode_rune_builder" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@clo.const.7 = internal constant { ptr, ptr } { ptr @"utf::decode_str_at", ptr null }
@"var.utf::decode_str_at" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_utf, ptr null }]

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

define internal void @__dva_global_init_utf() #1 {
entry:
  store ptr @clo.const, ptr @"var.utf::append_rune", align 8
  store ptr @clo.const.1, ptr @"var.utf::append_codepoint", align 8
  store ptr @clo.const.2, ptr @"var.utf::encode_rune", align 8
  store ptr @clo.const.3, ptr @"var.utf::encode_codepoint", align 8
  store ptr @clo.const.4, ptr @"var.utf::seq_len", align 8
  store ptr @clo.const.5, ptr @"var.utf::decode_rune_addr", align 8
  store ptr @clo.const.6, ptr @"var.utf::decode_rune_builder", align 8
  store ptr @clo.const.7, ptr @"var.utf::decode_str_at", align 8
  ret void
}

define void @"utf::append_rune"(ptr %0, i32 %1) #1 {
entry:
  %var.cp = alloca i64, align 8
  %var.r = alloca i32, align 4
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i32 %1, ptr %var.r, align 4
  %var.load = load i32, ptr %var.r, align 4
  %coerce.sext = sext i32 %var.load to i64
  store i64 %coerce.sext, ptr %var.cp, align 8
  %var.load1 = load i64, ptr %var.cp, align 8
  %cmptmp = icmp slt i64 %var.load1, 128
  br i1 %cmptmp, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %b.push_done363, %b.push_done196, %b.push_done69, %b.push_done
  ret void

choice.case:                                      ; preds = %entry
  %b.load = load ptr, ptr %var.b, align 8
  %var.load2 = load i64, ptr %var.cp, align 8
  %b.b.ge0 = icmp sge i64 %var.load2, 0
  %b.b.le255 = icmp sle i64 %var.load2, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.next:                                      ; preds = %entry
  %cmptmp11 = icmp slt i64 %var.load1, 2048
  br i1 %cmptmp11, label %choice.case9, label %choice.next10

b.byte_ok:                                        ; preds = %b.byte_err, %choice.case
  %b.byte.i8 = trunc i64 %var.load2 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len3 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap4 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data5 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len3, %b.cap4
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.case
  %2 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap4, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.new.buf.len6

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len6
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data7 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len8 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data7, i64 %b.cur.len8
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len8, 1
  %b.nul = getelementptr i8, ptr %b.cur.data7, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep, align 8
  br label %choice.exit

b.new.buf.len6:                                   ; preds = %str_overflow_abort, %b.grow
  %arena.cur = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data5, i64 %b.len3, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len3
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort:                               ; preds = %b.grow
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len6

choice.case9:                                     ; preds = %choice.next
  %b.load12 = load ptr, ptr %var.b, align 8
  %var.load13 = load i64, ptr %var.cp, align 8
  %shrtmp = lshr i64 %var.load13, 6
  %bortmp = or i64 192, %shrtmp
  %b.b.ge014 = icmp sge i64 %bortmp, 0
  %b.b.le25515 = icmp sle i64 %bortmp, 255
  %b.byte.range16 = and i1 %b.b.ge014, %b.b.le25515
  br i1 %b.byte.range16, label %b.byte_ok17, label %b.byte_err18

choice.next10:                                    ; preds = %choice.next
  %cmptmp93 = icmp slt i64 %var.load1, 65536
  br i1 %cmptmp93, label %choice.case91, label %choice.next92

b.byte_ok17:                                      ; preds = %b.byte_err18, %choice.case9
  %b.byte.i819 = trunc i64 %bortmp to i8
  %b.len20 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load12, i32 0, i32 0
  %b.len21 = load i64, ptr %b.len20, align 8
  %b.cap22 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load12, i32 0, i32 2
  %b.cap23 = load i64, ptr %b.cap22, align 8
  %b.data24 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load12, i32 0, i32 1
  %b.data25 = load ptr, ptr %b.data24, align 8
  %b.needs.grow26 = icmp eq i64 %b.len21, %b.cap23
  br i1 %b.needs.grow26, label %b.grow27, label %b.nogrow28

b.byte_err18:                                     ; preds = %choice.case9
  %4 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok17

b.grow27:                                         ; preds = %b.byte_ok17
  %b.cap230 = mul i64 %b.cap23, 2
  %b.cap.small31 = icmp slt i64 %b.cap230, 16
  %b.new.cap32 = select i1 %b.cap.small31, i64 16, i64 %b.cap230
  %b.new.buf.len33 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap32, i64 1)
  %sum34 = extractvalue { i64, i1 } %b.new.buf.len33, 0
  %ovf35 = extractvalue { i64, i1 } %b.new.buf.len33, 1
  br i1 %ovf35, label %str_overflow_abort37, label %b.new.buf.len36

b.nogrow28:                                       ; preds = %b.byte_ok17
  br label %b.push_done29

b.push_done29:                                    ; preds = %b.nogrow28, %b.new.buf.len36
  %b.cur.data43 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load12, i32 0, i32 1
  %b.cur.data44 = load ptr, ptr %b.cur.data43, align 8
  %b.cur.len45 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load12, i32 0, i32 0
  %b.cur.len46 = load i64, ptr %b.cur.len45, align 8
  %b.byte.gep47 = getelementptr i8, ptr %b.cur.data44, i64 %b.cur.len46
  store i8 %b.byte.i819, ptr %b.byte.gep47, align 1
  %b.next.len48 = add i64 %b.cur.len46, 1
  %b.nul49 = getelementptr i8, ptr %b.cur.data44, i64 %b.next.len48
  store i8 0, ptr %b.nul49, align 1
  %b.len.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load12, i32 0, i32 0
  store i64 %b.next.len48, ptr %b.len.gep50, align 8
  %b.load51 = load ptr, ptr %var.b, align 8
  %var.load52 = load i64, ptr %var.cp, align 8
  %bandtmp = and i64 %var.load52, 63
  %bortmp53 = or i64 128, %bandtmp
  %b.b.ge054 = icmp sge i64 %bortmp53, 0
  %b.b.le25555 = icmp sle i64 %bortmp53, 255
  %b.byte.range56 = and i1 %b.b.ge054, %b.b.le25555
  br i1 %b.byte.range56, label %b.byte_ok57, label %b.byte_err58

b.new.buf.len36:                                  ; preds = %str_overflow_abort37, %b.grow27
  %arena.cur38 = call ptr @dva_arena_current()
  %b.new.buf39 = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 %sum34)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf39, ptr align 1 %b.data25, i64 %b.len21, i1 false)
  %b.grow.nul40 = getelementptr i8, ptr %b.new.buf39, i64 %b.len21
  store i8 0, ptr %b.grow.nul40, align 1
  %b.new.data.gep41 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load12, i32 0, i32 1
  store ptr %b.new.buf39, ptr %b.new.data.gep41, align 8
  %b.new.cap.gep42 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load12, i32 0, i32 2
  store i64 %b.new.cap32, ptr %b.new.cap.gep42, align 8
  br label %b.push_done29

str_overflow_abort37:                             ; preds = %b.grow27
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len36

b.byte_ok57:                                      ; preds = %b.byte_err58, %b.push_done29
  %b.byte.i859 = trunc i64 %bortmp53 to i8
  %b.len60 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  %b.len61 = load i64, ptr %b.len60, align 8
  %b.cap62 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 2
  %b.cap63 = load i64, ptr %b.cap62, align 8
  %b.data64 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  %b.data65 = load ptr, ptr %b.data64, align 8
  %b.needs.grow66 = icmp eq i64 %b.len61, %b.cap63
  br i1 %b.needs.grow66, label %b.grow67, label %b.nogrow68

b.byte_err58:                                     ; preds = %b.push_done29
  %6 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok57

b.grow67:                                         ; preds = %b.byte_ok57
  %b.cap270 = mul i64 %b.cap63, 2
  %b.cap.small71 = icmp slt i64 %b.cap270, 16
  %b.new.cap72 = select i1 %b.cap.small71, i64 16, i64 %b.cap270
  %b.new.buf.len73 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap72, i64 1)
  %sum74 = extractvalue { i64, i1 } %b.new.buf.len73, 0
  %ovf75 = extractvalue { i64, i1 } %b.new.buf.len73, 1
  br i1 %ovf75, label %str_overflow_abort77, label %b.new.buf.len76

b.nogrow68:                                       ; preds = %b.byte_ok57
  br label %b.push_done69

b.push_done69:                                    ; preds = %b.nogrow68, %b.new.buf.len76
  %b.cur.data83 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  %b.cur.data84 = load ptr, ptr %b.cur.data83, align 8
  %b.cur.len85 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  %b.cur.len86 = load i64, ptr %b.cur.len85, align 8
  %b.byte.gep87 = getelementptr i8, ptr %b.cur.data84, i64 %b.cur.len86
  store i8 %b.byte.i859, ptr %b.byte.gep87, align 1
  %b.next.len88 = add i64 %b.cur.len86, 1
  %b.nul89 = getelementptr i8, ptr %b.cur.data84, i64 %b.next.len88
  store i8 0, ptr %b.nul89, align 1
  %b.len.gep90 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  store i64 %b.next.len88, ptr %b.len.gep90, align 8
  br label %choice.exit

b.new.buf.len76:                                  ; preds = %str_overflow_abort77, %b.grow67
  %arena.cur78 = call ptr @dva_arena_current()
  %b.new.buf79 = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 %sum74)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf79, ptr align 1 %b.data65, i64 %b.len61, i1 false)
  %b.grow.nul80 = getelementptr i8, ptr %b.new.buf79, i64 %b.len61
  store i8 0, ptr %b.grow.nul80, align 1
  %b.new.data.gep81 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  store ptr %b.new.buf79, ptr %b.new.data.gep81, align 8
  %b.new.cap.gep82 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 2
  store i64 %b.new.cap72, ptr %b.new.cap.gep82, align 8
  br label %b.push_done69

str_overflow_abort77:                             ; preds = %b.grow67
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len76

choice.case91:                                    ; preds = %choice.next10
  %b.load94 = load ptr, ptr %var.b, align 8
  %var.load95 = load i64, ptr %var.cp, align 8
  %shrtmp96 = lshr i64 %var.load95, 12
  %bortmp97 = or i64 224, %shrtmp96
  %b.b.ge098 = icmp sge i64 %bortmp97, 0
  %b.b.le25599 = icmp sle i64 %bortmp97, 255
  %b.byte.range100 = and i1 %b.b.ge098, %b.b.le25599
  br i1 %b.byte.range100, label %b.byte_ok101, label %b.byte_err102

choice.next92:                                    ; preds = %choice.next10
  %b.load218 = load ptr, ptr %var.b, align 8
  %var.load219 = load i64, ptr %var.cp, align 8
  %shrtmp220 = lshr i64 %var.load219, 18
  %bortmp221 = or i64 240, %shrtmp220
  %b.b.ge0222 = icmp sge i64 %bortmp221, 0
  %b.b.le255223 = icmp sle i64 %bortmp221, 255
  %b.byte.range224 = and i1 %b.b.ge0222, %b.b.le255223
  br i1 %b.byte.range224, label %b.byte_ok225, label %b.byte_err226

b.byte_ok101:                                     ; preds = %b.byte_err102, %choice.case91
  %b.byte.i8103 = trunc i64 %bortmp97 to i8
  %b.len104 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 0
  %b.len105 = load i64, ptr %b.len104, align 8
  %b.cap106 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 2
  %b.cap107 = load i64, ptr %b.cap106, align 8
  %b.data108 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 1
  %b.data109 = load ptr, ptr %b.data108, align 8
  %b.needs.grow110 = icmp eq i64 %b.len105, %b.cap107
  br i1 %b.needs.grow110, label %b.grow111, label %b.nogrow112

b.byte_err102:                                    ; preds = %choice.case91
  %8 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok101

b.grow111:                                        ; preds = %b.byte_ok101
  %b.cap2114 = mul i64 %b.cap107, 2
  %b.cap.small115 = icmp slt i64 %b.cap2114, 16
  %b.new.cap116 = select i1 %b.cap.small115, i64 16, i64 %b.cap2114
  %b.new.buf.len117 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap116, i64 1)
  %sum118 = extractvalue { i64, i1 } %b.new.buf.len117, 0
  %ovf119 = extractvalue { i64, i1 } %b.new.buf.len117, 1
  br i1 %ovf119, label %str_overflow_abort121, label %b.new.buf.len120

b.nogrow112:                                      ; preds = %b.byte_ok101
  br label %b.push_done113

b.push_done113:                                   ; preds = %b.nogrow112, %b.new.buf.len120
  %b.cur.data127 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 1
  %b.cur.data128 = load ptr, ptr %b.cur.data127, align 8
  %b.cur.len129 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 0
  %b.cur.len130 = load i64, ptr %b.cur.len129, align 8
  %b.byte.gep131 = getelementptr i8, ptr %b.cur.data128, i64 %b.cur.len130
  store i8 %b.byte.i8103, ptr %b.byte.gep131, align 1
  %b.next.len132 = add i64 %b.cur.len130, 1
  %b.nul133 = getelementptr i8, ptr %b.cur.data128, i64 %b.next.len132
  store i8 0, ptr %b.nul133, align 1
  %b.len.gep134 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 0
  store i64 %b.next.len132, ptr %b.len.gep134, align 8
  %b.load135 = load ptr, ptr %var.b, align 8
  %var.load136 = load i64, ptr %var.cp, align 8
  %shrtmp137 = lshr i64 %var.load136, 6
  %bandtmp138 = and i64 %shrtmp137, 63
  %bortmp139 = or i64 128, %bandtmp138
  %b.b.ge0140 = icmp sge i64 %bortmp139, 0
  %b.b.le255141 = icmp sle i64 %bortmp139, 255
  %b.byte.range142 = and i1 %b.b.ge0140, %b.b.le255141
  br i1 %b.byte.range142, label %b.byte_ok143, label %b.byte_err144

b.new.buf.len120:                                 ; preds = %str_overflow_abort121, %b.grow111
  %arena.cur122 = call ptr @dva_arena_current()
  %b.new.buf123 = call ptr @dva_arena_alloc(ptr %arena.cur122, i64 %sum118)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf123, ptr align 1 %b.data109, i64 %b.len105, i1 false)
  %b.grow.nul124 = getelementptr i8, ptr %b.new.buf123, i64 %b.len105
  store i8 0, ptr %b.grow.nul124, align 1
  %b.new.data.gep125 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 1
  store ptr %b.new.buf123, ptr %b.new.data.gep125, align 8
  %b.new.cap.gep126 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 2
  store i64 %b.new.cap116, ptr %b.new.cap.gep126, align 8
  br label %b.push_done113

str_overflow_abort121:                            ; preds = %b.grow111
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len120

b.byte_ok143:                                     ; preds = %b.byte_err144, %b.push_done113
  %b.byte.i8145 = trunc i64 %bortmp139 to i8
  %b.len146 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load135, i32 0, i32 0
  %b.len147 = load i64, ptr %b.len146, align 8
  %b.cap148 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load135, i32 0, i32 2
  %b.cap149 = load i64, ptr %b.cap148, align 8
  %b.data150 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load135, i32 0, i32 1
  %b.data151 = load ptr, ptr %b.data150, align 8
  %b.needs.grow152 = icmp eq i64 %b.len147, %b.cap149
  br i1 %b.needs.grow152, label %b.grow153, label %b.nogrow154

b.byte_err144:                                    ; preds = %b.push_done113
  %10 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok143

b.grow153:                                        ; preds = %b.byte_ok143
  %b.cap2156 = mul i64 %b.cap149, 2
  %b.cap.small157 = icmp slt i64 %b.cap2156, 16
  %b.new.cap158 = select i1 %b.cap.small157, i64 16, i64 %b.cap2156
  %b.new.buf.len159 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap158, i64 1)
  %sum160 = extractvalue { i64, i1 } %b.new.buf.len159, 0
  %ovf161 = extractvalue { i64, i1 } %b.new.buf.len159, 1
  br i1 %ovf161, label %str_overflow_abort163, label %b.new.buf.len162

b.nogrow154:                                      ; preds = %b.byte_ok143
  br label %b.push_done155

b.push_done155:                                   ; preds = %b.nogrow154, %b.new.buf.len162
  %b.cur.data169 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load135, i32 0, i32 1
  %b.cur.data170 = load ptr, ptr %b.cur.data169, align 8
  %b.cur.len171 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load135, i32 0, i32 0
  %b.cur.len172 = load i64, ptr %b.cur.len171, align 8
  %b.byte.gep173 = getelementptr i8, ptr %b.cur.data170, i64 %b.cur.len172
  store i8 %b.byte.i8145, ptr %b.byte.gep173, align 1
  %b.next.len174 = add i64 %b.cur.len172, 1
  %b.nul175 = getelementptr i8, ptr %b.cur.data170, i64 %b.next.len174
  store i8 0, ptr %b.nul175, align 1
  %b.len.gep176 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load135, i32 0, i32 0
  store i64 %b.next.len174, ptr %b.len.gep176, align 8
  %b.load177 = load ptr, ptr %var.b, align 8
  %var.load178 = load i64, ptr %var.cp, align 8
  %bandtmp179 = and i64 %var.load178, 63
  %bortmp180 = or i64 128, %bandtmp179
  %b.b.ge0181 = icmp sge i64 %bortmp180, 0
  %b.b.le255182 = icmp sle i64 %bortmp180, 255
  %b.byte.range183 = and i1 %b.b.ge0181, %b.b.le255182
  br i1 %b.byte.range183, label %b.byte_ok184, label %b.byte_err185

b.new.buf.len162:                                 ; preds = %str_overflow_abort163, %b.grow153
  %arena.cur164 = call ptr @dva_arena_current()
  %b.new.buf165 = call ptr @dva_arena_alloc(ptr %arena.cur164, i64 %sum160)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf165, ptr align 1 %b.data151, i64 %b.len147, i1 false)
  %b.grow.nul166 = getelementptr i8, ptr %b.new.buf165, i64 %b.len147
  store i8 0, ptr %b.grow.nul166, align 1
  %b.new.data.gep167 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load135, i32 0, i32 1
  store ptr %b.new.buf165, ptr %b.new.data.gep167, align 8
  %b.new.cap.gep168 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load135, i32 0, i32 2
  store i64 %b.new.cap158, ptr %b.new.cap.gep168, align 8
  br label %b.push_done155

str_overflow_abort163:                            ; preds = %b.grow153
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len162

b.byte_ok184:                                     ; preds = %b.byte_err185, %b.push_done155
  %b.byte.i8186 = trunc i64 %bortmp180 to i8
  %b.len187 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load177, i32 0, i32 0
  %b.len188 = load i64, ptr %b.len187, align 8
  %b.cap189 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load177, i32 0, i32 2
  %b.cap190 = load i64, ptr %b.cap189, align 8
  %b.data191 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load177, i32 0, i32 1
  %b.data192 = load ptr, ptr %b.data191, align 8
  %b.needs.grow193 = icmp eq i64 %b.len188, %b.cap190
  br i1 %b.needs.grow193, label %b.grow194, label %b.nogrow195

b.byte_err185:                                    ; preds = %b.push_done155
  %12 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok184

b.grow194:                                        ; preds = %b.byte_ok184
  %b.cap2197 = mul i64 %b.cap190, 2
  %b.cap.small198 = icmp slt i64 %b.cap2197, 16
  %b.new.cap199 = select i1 %b.cap.small198, i64 16, i64 %b.cap2197
  %b.new.buf.len200 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap199, i64 1)
  %sum201 = extractvalue { i64, i1 } %b.new.buf.len200, 0
  %ovf202 = extractvalue { i64, i1 } %b.new.buf.len200, 1
  br i1 %ovf202, label %str_overflow_abort204, label %b.new.buf.len203

b.nogrow195:                                      ; preds = %b.byte_ok184
  br label %b.push_done196

b.push_done196:                                   ; preds = %b.nogrow195, %b.new.buf.len203
  %b.cur.data210 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load177, i32 0, i32 1
  %b.cur.data211 = load ptr, ptr %b.cur.data210, align 8
  %b.cur.len212 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load177, i32 0, i32 0
  %b.cur.len213 = load i64, ptr %b.cur.len212, align 8
  %b.byte.gep214 = getelementptr i8, ptr %b.cur.data211, i64 %b.cur.len213
  store i8 %b.byte.i8186, ptr %b.byte.gep214, align 1
  %b.next.len215 = add i64 %b.cur.len213, 1
  %b.nul216 = getelementptr i8, ptr %b.cur.data211, i64 %b.next.len215
  store i8 0, ptr %b.nul216, align 1
  %b.len.gep217 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load177, i32 0, i32 0
  store i64 %b.next.len215, ptr %b.len.gep217, align 8
  br label %choice.exit

b.new.buf.len203:                                 ; preds = %str_overflow_abort204, %b.grow194
  %arena.cur205 = call ptr @dva_arena_current()
  %b.new.buf206 = call ptr @dva_arena_alloc(ptr %arena.cur205, i64 %sum201)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf206, ptr align 1 %b.data192, i64 %b.len188, i1 false)
  %b.grow.nul207 = getelementptr i8, ptr %b.new.buf206, i64 %b.len188
  store i8 0, ptr %b.grow.nul207, align 1
  %b.new.data.gep208 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load177, i32 0, i32 1
  store ptr %b.new.buf206, ptr %b.new.data.gep208, align 8
  %b.new.cap.gep209 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load177, i32 0, i32 2
  store i64 %b.new.cap199, ptr %b.new.cap.gep209, align 8
  br label %b.push_done196

str_overflow_abort204:                            ; preds = %b.grow194
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len203

b.byte_ok225:                                     ; preds = %b.byte_err226, %choice.next92
  %b.byte.i8227 = trunc i64 %bortmp221 to i8
  %b.len228 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load218, i32 0, i32 0
  %b.len229 = load i64, ptr %b.len228, align 8
  %b.cap231 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load218, i32 0, i32 2
  %b.cap232 = load i64, ptr %b.cap231, align 8
  %b.data233 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load218, i32 0, i32 1
  %b.data234 = load ptr, ptr %b.data233, align 8
  %b.needs.grow235 = icmp eq i64 %b.len229, %b.cap232
  br i1 %b.needs.grow235, label %b.grow236, label %b.nogrow237

b.byte_err226:                                    ; preds = %choice.next92
  %14 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok225

b.grow236:                                        ; preds = %b.byte_ok225
  %b.cap2239 = mul i64 %b.cap232, 2
  %b.cap.small240 = icmp slt i64 %b.cap2239, 16
  %b.new.cap241 = select i1 %b.cap.small240, i64 16, i64 %b.cap2239
  %b.new.buf.len242 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap241, i64 1)
  %sum243 = extractvalue { i64, i1 } %b.new.buf.len242, 0
  %ovf244 = extractvalue { i64, i1 } %b.new.buf.len242, 1
  br i1 %ovf244, label %str_overflow_abort246, label %b.new.buf.len245

b.nogrow237:                                      ; preds = %b.byte_ok225
  br label %b.push_done238

b.push_done238:                                   ; preds = %b.nogrow237, %b.new.buf.len245
  %b.cur.data252 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load218, i32 0, i32 1
  %b.cur.data253 = load ptr, ptr %b.cur.data252, align 8
  %b.cur.len254 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load218, i32 0, i32 0
  %b.cur.len255 = load i64, ptr %b.cur.len254, align 8
  %b.byte.gep256 = getelementptr i8, ptr %b.cur.data253, i64 %b.cur.len255
  store i8 %b.byte.i8227, ptr %b.byte.gep256, align 1
  %b.next.len257 = add i64 %b.cur.len255, 1
  %b.nul258 = getelementptr i8, ptr %b.cur.data253, i64 %b.next.len257
  store i8 0, ptr %b.nul258, align 1
  %b.len.gep259 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load218, i32 0, i32 0
  store i64 %b.next.len257, ptr %b.len.gep259, align 8
  %b.load260 = load ptr, ptr %var.b, align 8
  %var.load261 = load i64, ptr %var.cp, align 8
  %shrtmp262 = lshr i64 %var.load261, 12
  %bandtmp263 = and i64 %shrtmp262, 63
  %bortmp264 = or i64 128, %bandtmp263
  %b.b.ge0265 = icmp sge i64 %bortmp264, 0
  %b.b.le255266 = icmp sle i64 %bortmp264, 255
  %b.byte.range267 = and i1 %b.b.ge0265, %b.b.le255266
  br i1 %b.byte.range267, label %b.byte_ok268, label %b.byte_err269

b.new.buf.len245:                                 ; preds = %str_overflow_abort246, %b.grow236
  %arena.cur247 = call ptr @dva_arena_current()
  %b.new.buf248 = call ptr @dva_arena_alloc(ptr %arena.cur247, i64 %sum243)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf248, ptr align 1 %b.data234, i64 %b.len229, i1 false)
  %b.grow.nul249 = getelementptr i8, ptr %b.new.buf248, i64 %b.len229
  store i8 0, ptr %b.grow.nul249, align 1
  %b.new.data.gep250 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load218, i32 0, i32 1
  store ptr %b.new.buf248, ptr %b.new.data.gep250, align 8
  %b.new.cap.gep251 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load218, i32 0, i32 2
  store i64 %b.new.cap241, ptr %b.new.cap.gep251, align 8
  br label %b.push_done238

str_overflow_abort246:                            ; preds = %b.grow236
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len245

b.byte_ok268:                                     ; preds = %b.byte_err269, %b.push_done238
  %b.byte.i8270 = trunc i64 %bortmp264 to i8
  %b.len271 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load260, i32 0, i32 0
  %b.len272 = load i64, ptr %b.len271, align 8
  %b.cap273 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load260, i32 0, i32 2
  %b.cap274 = load i64, ptr %b.cap273, align 8
  %b.data275 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load260, i32 0, i32 1
  %b.data276 = load ptr, ptr %b.data275, align 8
  %b.needs.grow277 = icmp eq i64 %b.len272, %b.cap274
  br i1 %b.needs.grow277, label %b.grow278, label %b.nogrow279

b.byte_err269:                                    ; preds = %b.push_done238
  %16 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok268

b.grow278:                                        ; preds = %b.byte_ok268
  %b.cap2281 = mul i64 %b.cap274, 2
  %b.cap.small282 = icmp slt i64 %b.cap2281, 16
  %b.new.cap283 = select i1 %b.cap.small282, i64 16, i64 %b.cap2281
  %b.new.buf.len284 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap283, i64 1)
  %sum285 = extractvalue { i64, i1 } %b.new.buf.len284, 0
  %ovf286 = extractvalue { i64, i1 } %b.new.buf.len284, 1
  br i1 %ovf286, label %str_overflow_abort288, label %b.new.buf.len287

b.nogrow279:                                      ; preds = %b.byte_ok268
  br label %b.push_done280

b.push_done280:                                   ; preds = %b.nogrow279, %b.new.buf.len287
  %b.cur.data294 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load260, i32 0, i32 1
  %b.cur.data295 = load ptr, ptr %b.cur.data294, align 8
  %b.cur.len296 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load260, i32 0, i32 0
  %b.cur.len297 = load i64, ptr %b.cur.len296, align 8
  %b.byte.gep298 = getelementptr i8, ptr %b.cur.data295, i64 %b.cur.len297
  store i8 %b.byte.i8270, ptr %b.byte.gep298, align 1
  %b.next.len299 = add i64 %b.cur.len297, 1
  %b.nul300 = getelementptr i8, ptr %b.cur.data295, i64 %b.next.len299
  store i8 0, ptr %b.nul300, align 1
  %b.len.gep301 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load260, i32 0, i32 0
  store i64 %b.next.len299, ptr %b.len.gep301, align 8
  %b.load302 = load ptr, ptr %var.b, align 8
  %var.load303 = load i64, ptr %var.cp, align 8
  %shrtmp304 = lshr i64 %var.load303, 6
  %bandtmp305 = and i64 %shrtmp304, 63
  %bortmp306 = or i64 128, %bandtmp305
  %b.b.ge0307 = icmp sge i64 %bortmp306, 0
  %b.b.le255308 = icmp sle i64 %bortmp306, 255
  %b.byte.range309 = and i1 %b.b.ge0307, %b.b.le255308
  br i1 %b.byte.range309, label %b.byte_ok310, label %b.byte_err311

b.new.buf.len287:                                 ; preds = %str_overflow_abort288, %b.grow278
  %arena.cur289 = call ptr @dva_arena_current()
  %b.new.buf290 = call ptr @dva_arena_alloc(ptr %arena.cur289, i64 %sum285)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf290, ptr align 1 %b.data276, i64 %b.len272, i1 false)
  %b.grow.nul291 = getelementptr i8, ptr %b.new.buf290, i64 %b.len272
  store i8 0, ptr %b.grow.nul291, align 1
  %b.new.data.gep292 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load260, i32 0, i32 1
  store ptr %b.new.buf290, ptr %b.new.data.gep292, align 8
  %b.new.cap.gep293 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load260, i32 0, i32 2
  store i64 %b.new.cap283, ptr %b.new.cap.gep293, align 8
  br label %b.push_done280

str_overflow_abort288:                            ; preds = %b.grow278
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len287

b.byte_ok310:                                     ; preds = %b.byte_err311, %b.push_done280
  %b.byte.i8312 = trunc i64 %bortmp306 to i8
  %b.len313 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load302, i32 0, i32 0
  %b.len314 = load i64, ptr %b.len313, align 8
  %b.cap315 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load302, i32 0, i32 2
  %b.cap316 = load i64, ptr %b.cap315, align 8
  %b.data317 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load302, i32 0, i32 1
  %b.data318 = load ptr, ptr %b.data317, align 8
  %b.needs.grow319 = icmp eq i64 %b.len314, %b.cap316
  br i1 %b.needs.grow319, label %b.grow320, label %b.nogrow321

b.byte_err311:                                    ; preds = %b.push_done280
  %18 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok310

b.grow320:                                        ; preds = %b.byte_ok310
  %b.cap2323 = mul i64 %b.cap316, 2
  %b.cap.small324 = icmp slt i64 %b.cap2323, 16
  %b.new.cap325 = select i1 %b.cap.small324, i64 16, i64 %b.cap2323
  %b.new.buf.len326 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap325, i64 1)
  %sum327 = extractvalue { i64, i1 } %b.new.buf.len326, 0
  %ovf328 = extractvalue { i64, i1 } %b.new.buf.len326, 1
  br i1 %ovf328, label %str_overflow_abort330, label %b.new.buf.len329

b.nogrow321:                                      ; preds = %b.byte_ok310
  br label %b.push_done322

b.push_done322:                                   ; preds = %b.nogrow321, %b.new.buf.len329
  %b.cur.data336 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load302, i32 0, i32 1
  %b.cur.data337 = load ptr, ptr %b.cur.data336, align 8
  %b.cur.len338 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load302, i32 0, i32 0
  %b.cur.len339 = load i64, ptr %b.cur.len338, align 8
  %b.byte.gep340 = getelementptr i8, ptr %b.cur.data337, i64 %b.cur.len339
  store i8 %b.byte.i8312, ptr %b.byte.gep340, align 1
  %b.next.len341 = add i64 %b.cur.len339, 1
  %b.nul342 = getelementptr i8, ptr %b.cur.data337, i64 %b.next.len341
  store i8 0, ptr %b.nul342, align 1
  %b.len.gep343 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load302, i32 0, i32 0
  store i64 %b.next.len341, ptr %b.len.gep343, align 8
  %b.load344 = load ptr, ptr %var.b, align 8
  %var.load345 = load i64, ptr %var.cp, align 8
  %bandtmp346 = and i64 %var.load345, 63
  %bortmp347 = or i64 128, %bandtmp346
  %b.b.ge0348 = icmp sge i64 %bortmp347, 0
  %b.b.le255349 = icmp sle i64 %bortmp347, 255
  %b.byte.range350 = and i1 %b.b.ge0348, %b.b.le255349
  br i1 %b.byte.range350, label %b.byte_ok351, label %b.byte_err352

b.new.buf.len329:                                 ; preds = %str_overflow_abort330, %b.grow320
  %arena.cur331 = call ptr @dva_arena_current()
  %b.new.buf332 = call ptr @dva_arena_alloc(ptr %arena.cur331, i64 %sum327)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf332, ptr align 1 %b.data318, i64 %b.len314, i1 false)
  %b.grow.nul333 = getelementptr i8, ptr %b.new.buf332, i64 %b.len314
  store i8 0, ptr %b.grow.nul333, align 1
  %b.new.data.gep334 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load302, i32 0, i32 1
  store ptr %b.new.buf332, ptr %b.new.data.gep334, align 8
  %b.new.cap.gep335 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load302, i32 0, i32 2
  store i64 %b.new.cap325, ptr %b.new.cap.gep335, align 8
  br label %b.push_done322

str_overflow_abort330:                            ; preds = %b.grow320
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len329

b.byte_ok351:                                     ; preds = %b.byte_err352, %b.push_done322
  %b.byte.i8353 = trunc i64 %bortmp347 to i8
  %b.len354 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load344, i32 0, i32 0
  %b.len355 = load i64, ptr %b.len354, align 8
  %b.cap356 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load344, i32 0, i32 2
  %b.cap357 = load i64, ptr %b.cap356, align 8
  %b.data358 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load344, i32 0, i32 1
  %b.data359 = load ptr, ptr %b.data358, align 8
  %b.needs.grow360 = icmp eq i64 %b.len355, %b.cap357
  br i1 %b.needs.grow360, label %b.grow361, label %b.nogrow362

b.byte_err352:                                    ; preds = %b.push_done322
  %20 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok351

b.grow361:                                        ; preds = %b.byte_ok351
  %b.cap2364 = mul i64 %b.cap357, 2
  %b.cap.small365 = icmp slt i64 %b.cap2364, 16
  %b.new.cap366 = select i1 %b.cap.small365, i64 16, i64 %b.cap2364
  %b.new.buf.len367 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap366, i64 1)
  %sum368 = extractvalue { i64, i1 } %b.new.buf.len367, 0
  %ovf369 = extractvalue { i64, i1 } %b.new.buf.len367, 1
  br i1 %ovf369, label %str_overflow_abort371, label %b.new.buf.len370

b.nogrow362:                                      ; preds = %b.byte_ok351
  br label %b.push_done363

b.push_done363:                                   ; preds = %b.nogrow362, %b.new.buf.len370
  %b.cur.data377 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load344, i32 0, i32 1
  %b.cur.data378 = load ptr, ptr %b.cur.data377, align 8
  %b.cur.len379 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load344, i32 0, i32 0
  %b.cur.len380 = load i64, ptr %b.cur.len379, align 8
  %b.byte.gep381 = getelementptr i8, ptr %b.cur.data378, i64 %b.cur.len380
  store i8 %b.byte.i8353, ptr %b.byte.gep381, align 1
  %b.next.len382 = add i64 %b.cur.len380, 1
  %b.nul383 = getelementptr i8, ptr %b.cur.data378, i64 %b.next.len382
  store i8 0, ptr %b.nul383, align 1
  %b.len.gep384 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load344, i32 0, i32 0
  store i64 %b.next.len382, ptr %b.len.gep384, align 8
  br label %choice.exit

b.new.buf.len370:                                 ; preds = %str_overflow_abort371, %b.grow361
  %arena.cur372 = call ptr @dva_arena_current()
  %b.new.buf373 = call ptr @dva_arena_alloc(ptr %arena.cur372, i64 %sum368)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf373, ptr align 1 %b.data359, i64 %b.len355, i1 false)
  %b.grow.nul374 = getelementptr i8, ptr %b.new.buf373, i64 %b.len355
  store i8 0, ptr %b.grow.nul374, align 1
  %b.new.data.gep375 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load344, i32 0, i32 1
  store ptr %b.new.buf373, ptr %b.new.data.gep375, align 8
  %b.new.cap.gep376 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load344, i32 0, i32 2
  store i64 %b.new.cap366, ptr %b.new.cap.gep376, align 8
  br label %b.push_done363

str_overflow_abort371:                            ; preds = %b.grow361
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len370
}

declare i64 @write(i32, ptr, i64)

declare void @exit(i32)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define void @"utf::append_codepoint"(ptr %0, i64 %1) #1 {
entry:
  %var.cp = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i64 %1, ptr %var.cp, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %var.load1 = load i64, ptr %var.cp, align 8
  %coerce.trunc = trunc i64 %var.load1 to i32
  call void @"utf::append_rune"(ptr %var.load, i32 %coerce.trunc)
  ret void
}

define ptr @"utf::encode_rune"(i32 %0) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var.r = alloca i32, align 4
  store i32 %0, ptr %var.r, align 4
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4, i64 1)
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
  store i64 4, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %var.load3 = load i32, ptr %var.r, align 4
  call void @"utf::append_rune"(ptr %var.load, i32 %var.load3)
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

define ptr @"utf::encode_codepoint"(i64 %0) #1 {
entry:
  %var.cp = alloca i64, align 8
  store i64 %0, ptr %var.cp, align 8
  %var.load = load i64, ptr %var.cp, align 8
  %coerce.trunc = trunc i64 %var.load to i32
  %call.res = call ptr @"utf::encode_rune"(i32 %coerce.trunc)
  ret ptr %call.res
}

define i64 @"utf::seq_len"(i64 %0) #1 {
entry:
  %var.b0 = alloca i64, align 8
  store i64 %0, ptr %var.b0, align 8
  %var.load = load i64, ptr %var.b0, align 8
  %cmptmp = icmp slt i64 %var.load, 128
  br i1 %cmptmp, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next5, %choice.case4, %choice.case1, %choice.case
  %choice.res = phi i64 [ 1, %choice.case ], [ 2, %choice.case1 ], [ 3, %choice.case4 ], [ 4, %choice.next5 ]
  ret i64 %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %cmptmp3 = icmp slt i64 %var.load, 224
  br i1 %cmptmp3, label %choice.case1, label %choice.next2

choice.case1:                                     ; preds = %choice.next
  br label %choice.exit

choice.next2:                                     ; preds = %choice.next
  %cmptmp6 = icmp slt i64 %var.load, 240
  br i1 %cmptmp6, label %choice.case4, label %choice.next5

choice.case4:                                     ; preds = %choice.next2
  br label %choice.exit

choice.next5:                                     ; preds = %choice.next2
  br label %choice.exit
}

define i32 @"utf::decode_rune_addr"(ptr %0, i64 %1) #1 {
entry:
  %var.c155 = alloca i64, align 8
  %var.b3 = alloca i64, align 8
  %var.b2110 = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var.b2 = alloca i64, align 8
  %var.b1 = alloca i64, align 8
  %"var.cp'" = alloca i64, align 8
  %var.b0 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i64 %1, ptr %var.i, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %var.load1 = load i64, ptr %var.i, align 8
  %ptr.int.l = ptrtoint ptr %var.load to i64
  %addtmp = add i64 %ptr.int.l, %var.load1
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

addr_gen_check:                                   ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %entry
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  %coerce.zext = zext i8 %raw.load to i64
  store i64 %coerce.zext, ptr %var.b0, align 8
  %var.load2 = load i64, ptr %var.b0, align 8
  %cmptmp = icmp slt i64 %var.load2, 128
  br i1 %cmptmp, label %choice.then, label %choice.exit

addr_stale:                                       ; preds = %addr_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

choice.then:                                      ; preds = %addr_ok
  %var.load3 = load i64, ptr %var.b0, align 8
  %coerce.trunc = trunc i64 %var.load3 to i32
  ret i32 %coerce.trunc

choice.exit:                                      ; preds = %ret.dead, %addr_ok
  store i64 65533, ptr %"var.cp'", align 8
  %var.load4 = load i64, ptr %var.b0, align 8
  %cmptmp6 = icmp sge i64 %var.load4, 194
  br i1 %cmptmp6, label %and.8.then, label %and.8.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.exit5:                                     ; preds = %choice.next, %choice.exit31
  %var.load166 = load i64, ptr %"var.cp'", align 8
  %coerce.trunc167 = trunc i64 %var.load166 to i32
  ret i32 %coerce.trunc167

choice.case:                                      ; preds = %and.8.exit
  %var.load8 = load ptr, ptr %var.p, align 8
  %var.load9 = load i64, ptr %var.i, align 8
  %ptr.int.l10 = ptrtoint ptr %var.load8 to i64
  %addtmp11 = add i64 %ptr.int.l10, %var.load9
  %ptr.res12 = inttoptr i64 %addtmp11 to ptr
  %ptr.int.l13 = ptrtoint ptr %ptr.res12 to i64
  %addtmp14 = add i64 %ptr.int.l13, 1
  %ptr.res15 = inttoptr i64 %addtmp14 to ptr
  %raw.int16 = ptrtoint ptr %ptr.res15 to i64
  %raw.clean.int17 = and i64 %raw.int16, 281474976710655
  %raw.clean.ptr18 = inttoptr i64 %raw.clean.int17 to ptr
  %addr.tag19 = lshr i64 %raw.int16, 48
  %addr.immortal20 = icmp eq i64 %addr.tag19, 0
  br i1 %addr.immortal20, label %addr_ok22, label %addr_gen_check21

choice.next:                                      ; preds = %and.8.exit
  br label %choice.exit5

and.8.then:                                       ; preds = %choice.exit
  %cmptmp7 = icmp sle i64 %var.load4, 244
  br label %and.8.exit

and.8.else:                                       ; preds = %choice.exit
  br label %and.8.exit

and.8.exit:                                       ; preds = %and.8.else, %and.8.then
  %and.8.phi = phi i1 [ %cmptmp7, %and.8.then ], [ %cmptmp6, %and.8.else ]
  br i1 %and.8.phi, label %choice.case, label %choice.next

addr_gen_check21:                                 ; preds = %choice.case
  %arena.cur24 = call ptr @dva_arena_current()
  %tag.valid25 = call i1 @dva_arena_validate_tag(ptr %arena.cur24, i64 %addr.tag19)
  br i1 %tag.valid25, label %addr_ok22, label %addr_stale23

addr_ok22:                                        ; preds = %addr_stale23, %addr_gen_check21, %choice.case
  %raw.load26 = load volatile i8, ptr %raw.clean.ptr18, align 1
  %coerce.zext27 = zext i8 %raw.load26 to i64
  store i64 %coerce.zext27, ptr %var.b1, align 8
  %var.load28 = load i64, ptr %var.b1, align 8
  %bandtmp = and i64 %var.load28, 192
  %cmptmp29 = icmp eq i64 %bandtmp, 128
  br i1 %cmptmp29, label %choice.then30, label %choice.exit31

addr_stale23:                                     ; preds = %addr_gen_check21
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok22

choice.then30:                                    ; preds = %addr_ok22
  %var.load32 = load i64, ptr %var.b0, align 8
  %cmptmp36 = icmp slt i64 %var.load32, 224
  br i1 %cmptmp36, label %choice.case34, label %choice.next35

choice.exit31:                                    ; preds = %choice.exit33, %addr_ok22
  br label %choice.exit5

choice.exit33:                                    ; preds = %choice.exit115, %choice.exit68, %choice.case34
  br label %choice.exit31

choice.case34:                                    ; preds = %choice.then30
  %var.load37 = load i64, ptr %var.b0, align 8
  %bandtmp38 = and i64 %var.load37, 31
  %shltmp = shl i64 %bandtmp38, 6
  %var.load39 = load i64, ptr %var.b1, align 8
  %bandtmp40 = and i64 %var.load39, 63
  %bortmp = or i64 %shltmp, %bandtmp40
  store i64 %bortmp, ptr %"var.cp'", align 8
  br label %choice.exit33

choice.next35:                                    ; preds = %choice.then30
  %cmptmp43 = icmp slt i64 %var.load32, 240
  br i1 %cmptmp43, label %choice.case41, label %choice.next42

choice.case41:                                    ; preds = %choice.next35
  %var.load44 = load ptr, ptr %var.p, align 8
  %var.load45 = load i64, ptr %var.i, align 8
  %ptr.int.l46 = ptrtoint ptr %var.load44 to i64
  %addtmp47 = add i64 %ptr.int.l46, %var.load45
  %ptr.res48 = inttoptr i64 %addtmp47 to ptr
  %ptr.int.l49 = ptrtoint ptr %ptr.res48 to i64
  %addtmp50 = add i64 %ptr.int.l49, 2
  %ptr.res51 = inttoptr i64 %addtmp50 to ptr
  %raw.int52 = ptrtoint ptr %ptr.res51 to i64
  %raw.clean.int53 = and i64 %raw.int52, 281474976710655
  %raw.clean.ptr54 = inttoptr i64 %raw.clean.int53 to ptr
  %addr.tag55 = lshr i64 %raw.int52, 48
  %addr.immortal56 = icmp eq i64 %addr.tag55, 0
  br i1 %addr.immortal56, label %addr_ok58, label %addr_gen_check57

choice.next42:                                    ; preds = %choice.next35
  %var.load90 = load ptr, ptr %var.p, align 8
  %var.load91 = load i64, ptr %var.i, align 8
  %ptr.int.l92 = ptrtoint ptr %var.load90 to i64
  %addtmp93 = add i64 %ptr.int.l92, %var.load91
  %ptr.res94 = inttoptr i64 %addtmp93 to ptr
  %ptr.int.l95 = ptrtoint ptr %ptr.res94 to i64
  %addtmp96 = add i64 %ptr.int.l95, 2
  %ptr.res97 = inttoptr i64 %addtmp96 to ptr
  %raw.int98 = ptrtoint ptr %ptr.res97 to i64
  %raw.clean.int99 = and i64 %raw.int98, 281474976710655
  %raw.clean.ptr100 = inttoptr i64 %raw.clean.int99 to ptr
  %addr.tag101 = lshr i64 %raw.int98, 48
  %addr.immortal102 = icmp eq i64 %addr.tag101, 0
  br i1 %addr.immortal102, label %addr_ok104, label %addr_gen_check103

addr_gen_check57:                                 ; preds = %choice.case41
  %arena.cur60 = call ptr @dva_arena_current()
  %tag.valid61 = call i1 @dva_arena_validate_tag(ptr %arena.cur60, i64 %addr.tag55)
  br i1 %tag.valid61, label %addr_ok58, label %addr_stale59

addr_ok58:                                        ; preds = %addr_stale59, %addr_gen_check57, %choice.case41
  %raw.load62 = load volatile i8, ptr %raw.clean.ptr54, align 1
  %coerce.zext63 = zext i8 %raw.load62 to i64
  store i64 %coerce.zext63, ptr %var.b2, align 8
  %var.load64 = load i64, ptr %var.b2, align 8
  %bandtmp65 = and i64 %var.load64, 192
  %cmptmp66 = icmp eq i64 %bandtmp65, 128
  br i1 %cmptmp66, label %choice.then67, label %choice.exit68

addr_stale59:                                     ; preds = %addr_gen_check57
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok58

choice.then67:                                    ; preds = %addr_ok58
  %var.load69 = load i64, ptr %var.b0, align 8
  %bandtmp70 = and i64 %var.load69, 15
  %shltmp71 = shl i64 %bandtmp70, 12
  %var.load72 = load i64, ptr %var.b1, align 8
  %bandtmp73 = and i64 %var.load72, 63
  %shltmp74 = shl i64 %bandtmp73, 6
  %bortmp75 = or i64 %shltmp71, %shltmp74
  %var.load76 = load i64, ptr %var.b2, align 8
  %bandtmp77 = and i64 %var.load76, 63
  %bortmp78 = or i64 %bortmp75, %bandtmp77
  store i64 %bortmp78, ptr %var.c, align 8
  %var.load79 = load i64, ptr %var.c, align 8
  %cmptmp80 = icmp sge i64 %var.load79, 2048
  br i1 %cmptmp80, label %and.9.then, label %and.9.else

choice.exit68:                                    ; preds = %choice.exit88, %addr_ok58
  br label %choice.exit33

and.9.then:                                       ; preds = %choice.then67
  %var.load81 = load i64, ptr %var.c, align 8
  %cmptmp85 = icmp sge i64 %var.load81, 55296
  br i1 %cmptmp85, label %and.10.then, label %and.10.else

and.9.else:                                       ; preds = %choice.then67
  br label %and.9.exit

and.9.exit:                                       ; preds = %and.9.else, %choice.exit82
  %and.9.phi = phi i1 [ %nottmp, %choice.exit82 ], [ %cmptmp80, %and.9.else ]
  br i1 %and.9.phi, label %choice.then87, label %choice.exit88

choice.exit82:                                    ; preds = %choice.next84, %choice.case83
  %choice.res = phi i1 [ true, %choice.case83 ], [ false, %choice.next84 ]
  %nottmp = xor i1 %choice.res, true
  br label %and.9.exit

choice.case83:                                    ; preds = %and.10.exit
  br label %choice.exit82

choice.next84:                                    ; preds = %and.10.exit
  br label %choice.exit82

and.10.then:                                      ; preds = %and.9.then
  %cmptmp86 = icmp sle i64 %var.load81, 57343
  br label %and.10.exit

and.10.else:                                      ; preds = %and.9.then
  br label %and.10.exit

and.10.exit:                                      ; preds = %and.10.else, %and.10.then
  %and.10.phi = phi i1 [ %cmptmp86, %and.10.then ], [ %cmptmp85, %and.10.else ]
  br i1 %and.10.phi, label %choice.case83, label %choice.next84

choice.then87:                                    ; preds = %and.9.exit
  %var.load89 = load i64, ptr %var.c, align 8
  store i64 %var.load89, ptr %"var.cp'", align 8
  br label %choice.exit88

choice.exit88:                                    ; preds = %choice.then87, %and.9.exit
  br label %choice.exit68

addr_gen_check103:                                ; preds = %choice.next42
  %arena.cur106 = call ptr @dva_arena_current()
  %tag.valid107 = call i1 @dva_arena_validate_tag(ptr %arena.cur106, i64 %addr.tag101)
  br i1 %tag.valid107, label %addr_ok104, label %addr_stale105

addr_ok104:                                       ; preds = %addr_stale105, %addr_gen_check103, %choice.next42
  %raw.load108 = load volatile i8, ptr %raw.clean.ptr100, align 1
  %coerce.zext109 = zext i8 %raw.load108 to i64
  store i64 %coerce.zext109, ptr %var.b2110, align 8
  %var.load111 = load i64, ptr %var.b2110, align 8
  %bandtmp112 = and i64 %var.load111, 192
  %cmptmp113 = icmp eq i64 %bandtmp112, 128
  br i1 %cmptmp113, label %choice.then114, label %choice.exit115

addr_stale105:                                    ; preds = %addr_gen_check103
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok104

choice.then114:                                   ; preds = %addr_ok104
  %var.load116 = load ptr, ptr %var.p, align 8
  %var.load117 = load i64, ptr %var.i, align 8
  %ptr.int.l118 = ptrtoint ptr %var.load116 to i64
  %addtmp119 = add i64 %ptr.int.l118, %var.load117
  %ptr.res120 = inttoptr i64 %addtmp119 to ptr
  %ptr.int.l121 = ptrtoint ptr %ptr.res120 to i64
  %addtmp122 = add i64 %ptr.int.l121, 3
  %ptr.res123 = inttoptr i64 %addtmp122 to ptr
  %raw.int124 = ptrtoint ptr %ptr.res123 to i64
  %raw.clean.int125 = and i64 %raw.int124, 281474976710655
  %raw.clean.ptr126 = inttoptr i64 %raw.clean.int125 to ptr
  %addr.tag127 = lshr i64 %raw.int124, 48
  %addr.immortal128 = icmp eq i64 %addr.tag127, 0
  br i1 %addr.immortal128, label %addr_ok130, label %addr_gen_check129

choice.exit115:                                   ; preds = %choice.exit140, %addr_ok104
  br label %choice.exit33

addr_gen_check129:                                ; preds = %choice.then114
  %arena.cur132 = call ptr @dva_arena_current()
  %tag.valid133 = call i1 @dva_arena_validate_tag(ptr %arena.cur132, i64 %addr.tag127)
  br i1 %tag.valid133, label %addr_ok130, label %addr_stale131

addr_ok130:                                       ; preds = %addr_stale131, %addr_gen_check129, %choice.then114
  %raw.load134 = load volatile i8, ptr %raw.clean.ptr126, align 1
  %coerce.zext135 = zext i8 %raw.load134 to i64
  store i64 %coerce.zext135, ptr %var.b3, align 8
  %var.load136 = load i64, ptr %var.b3, align 8
  %bandtmp137 = and i64 %var.load136, 192
  %cmptmp138 = icmp eq i64 %bandtmp137, 128
  br i1 %cmptmp138, label %choice.then139, label %choice.exit140

addr_stale131:                                    ; preds = %addr_gen_check129
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok130

choice.then139:                                   ; preds = %addr_ok130
  %var.load141 = load i64, ptr %var.b0, align 8
  %bandtmp142 = and i64 %var.load141, 7
  %shltmp143 = shl i64 %bandtmp142, 18
  %var.load144 = load i64, ptr %var.b1, align 8
  %bandtmp145 = and i64 %var.load144, 63
  %shltmp146 = shl i64 %bandtmp145, 12
  %bortmp147 = or i64 %shltmp143, %shltmp146
  %var.load148 = load i64, ptr %var.b2110, align 8
  %bandtmp149 = and i64 %var.load148, 63
  %shltmp150 = shl i64 %bandtmp149, 6
  %bortmp151 = or i64 %bortmp147, %shltmp150
  %var.load152 = load i64, ptr %var.b3, align 8
  %bandtmp153 = and i64 %var.load152, 63
  %bortmp154 = or i64 %bortmp151, %bandtmp153
  store i64 %bortmp154, ptr %var.c155, align 8
  %var.load156 = load i64, ptr %var.c155, align 8
  %cmptmp160 = icmp sge i64 %var.load156, 65536
  br i1 %cmptmp160, label %and.11.then, label %and.11.else

choice.exit140:                                   ; preds = %choice.exit164, %addr_ok130
  br label %choice.exit115

choice.exit157:                                   ; preds = %choice.next159, %choice.case158
  %choice.res162 = phi i1 [ true, %choice.case158 ], [ false, %choice.next159 ]
  br i1 %choice.res162, label %choice.then163, label %choice.exit164

choice.case158:                                   ; preds = %and.11.exit
  br label %choice.exit157

choice.next159:                                   ; preds = %and.11.exit
  br label %choice.exit157

and.11.then:                                      ; preds = %choice.then139
  %cmptmp161 = icmp sle i64 %var.load156, 1114111
  br label %and.11.exit

and.11.else:                                      ; preds = %choice.then139
  br label %and.11.exit

and.11.exit:                                      ; preds = %and.11.else, %and.11.then
  %and.11.phi = phi i1 [ %cmptmp161, %and.11.then ], [ %cmptmp160, %and.11.else ]
  br i1 %and.11.phi, label %choice.case158, label %choice.next159

choice.then163:                                   ; preds = %choice.exit157
  %var.load165 = load i64, ptr %var.c155, align 8
  store i64 %var.load165, ptr %"var.cp'", align 8
  br label %choice.exit164

choice.exit164:                                   ; preds = %choice.then163, %choice.exit157
  br label %choice.exit140
}

define i32 @"utf::decode_rune_builder"(ptr %0, i64 %1) #1 {
entry:
  %var.need = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i64 %1, ptr %var.i, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load, i32 0, i32 0
  %b.len1 = load i64, ptr %b.len, align 8
  store i64 %b.len1, ptr %var.n, align 8
  %var.load2 = load i64, ptr %var.i, align 8
  %cmptmp = icmp sge i64 %var.load2, 0
  br i1 %cmptmp, label %and.12.then, label %and.12.else

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  %nottmp = xor i1 %choice.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit5

choice.case:                                      ; preds = %and.12.exit
  br label %choice.exit

choice.next:                                      ; preds = %and.12.exit
  br label %choice.exit

and.12.then:                                      ; preds = %entry
  %var.load3 = load i64, ptr %var.n, align 8
  %cmptmp4 = icmp slt i64 %var.load2, %var.load3
  br label %and.12.exit

and.12.else:                                      ; preds = %entry
  br label %and.12.exit

and.12.exit:                                      ; preds = %and.12.else, %and.12.then
  %and.12.phi = phi i1 [ %cmptmp4, %and.12.then ], [ %cmptmp, %and.12.else ]
  br i1 %and.12.phi, label %choice.case, label %choice.next

choice.then:                                      ; preds = %choice.exit
  ret i32 65533

choice.exit5:                                     ; preds = %ret.dead, %choice.exit
  %var.load6 = load ptr, ptr %var.b, align 8
  %b.read.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load6, i32 0, i32 0
  %b.read.len7 = load i64, ptr %b.read.len, align 8
  %b.read.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load6, i32 0, i32 1
  %b.read.data8 = load ptr, ptr %b.read.data, align 8
  %var.load9 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load9, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit5

idx_big_check:                                    ; preds = %choice.exit5
  %idx.big = icmp sge i64 %var.load9, %b.read.len7
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %b.read.data8, i64 %var.load9
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i64 @"utf::seq_len"(i64 %s.byte.val)
  store i64 %call.res, ptr %var.need, align 8
  %var.load10 = load i64, ptr %var.i, align 8
  %var.load11 = load i64, ptr %var.need, align 8
  %addtmp = add i64 %var.load10, %var.load11
  %var.load12 = load i64, ptr %var.n, align 8
  %cmptmp13 = icmp sgt i64 %addtmp, %var.load12
  br i1 %cmptmp13, label %choice.then14, label %choice.exit15

idx_oob:                                          ; preds = %idx_big_check, %choice.exit5
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then14:                                    ; preds = %idx_ok
  ret i32 65533

choice.exit15:                                    ; preds = %ret.dead16, %idx_ok
  %var.load17 = load ptr, ptr %var.b, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load17, i32 0, i32 1
  %b.ptr18 = load ptr, ptr %b.ptr, align 8
  %var.load19 = load i64, ptr %var.i, align 8
  %call.res20 = call i32 @"utf::decode_rune_addr"(ptr %b.ptr18, i64 %var.load19)
  ret i32 %call.res20

ret.dead16:                                       ; No predecessors!
  br label %choice.exit15
}

define ptr @"utf::decode_str_at"(ptr %0, i64 %1) #1 {
entry:
  %var.cp = alloca i64, align 8
  %var.need = alloca i64, align 8
  %var.b0 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.i, align 8
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
  %var.load3 = load i64, ptr %var.i, align 8
  %cmptmp = icmp sge i64 %var.load3, 0
  br i1 %cmptmp, label %and.13.then, label %and.13.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  %nottmp = xor i1 %choice.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit6

choice.case:                                      ; preds = %and.13.exit
  br label %choice.exit

choice.next:                                      ; preds = %and.13.exit
  br label %choice.exit

and.13.then:                                      ; preds = %str_ok
  %var.load4 = load i64, ptr %var.n, align 8
  %cmptmp5 = icmp slt i64 %var.load3, %var.load4
  br label %and.13.exit

and.13.else:                                      ; preds = %str_ok
  br label %and.13.exit

and.13.exit:                                      ; preds = %and.13.else, %and.13.then
  %and.13.phi = phi i1 [ %cmptmp5, %and.13.then ], [ %cmptmp, %and.13.else ]
  br i1 %and.13.phi, label %choice.case, label %choice.next

choice.then:                                      ; preds = %choice.exit
  %arena.cur7 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 -1, ptr %rec.fld, align 8
  %rec.fld8 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 1, ptr %rec.fld8, align 8
  ret ptr %rec.alloc

choice.exit6:                                     ; preds = %ret.dead, %choice.exit
  %var.load9 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %str.tag12 = lshr i64 %s.read.len10, 48
  %str.immortal13 = icmp eq i64 %str.tag12, 0
  br i1 %str.immortal13, label %str_ok15, label %str_gen_check14

ret.dead:                                         ; No predecessors!
  br label %choice.exit6

str_gen_check14:                                  ; preds = %choice.exit6
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %str.tag12)
  br i1 %tag.valid18, label %str_ok15, label %str_stale16

str_ok15:                                         ; preds = %str_stale16, %str_gen_check14, %choice.exit6
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.read.data19 = load ptr, ptr %s.read.data, align 8
  %var.load20 = load i64, ptr %var.i, align 8
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
  store i64 %s.byte.val, ptr %var.b0, align 8
  %var.load21 = load i64, ptr %var.b0, align 8
  %call.res = call i64 @"utf::seq_len"(i64 %var.load21)
  store i64 %call.res, ptr %var.need, align 8
  %var.load22 = load i64, ptr %var.i, align 8
  %var.load23 = load i64, ptr %var.need, align 8
  %addtmp = add i64 %var.load22, %var.load23
  %var.load24 = load i64, ptr %var.n, align 8
  %cmptmp25 = icmp sgt i64 %addtmp, %var.load24
  br i1 %cmptmp25, label %choice.then26, label %choice.exit27

idx_oob:                                          ; preds = %idx_big_check, %str_ok15
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then26:                                    ; preds = %idx_ok
  %arena.cur28 = call ptr @dva_arena_current()
  %rec.alloc29 = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld30 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc29, i32 0, i32 0
  store i64 -1, ptr %rec.fld30, align 8
  %rec.fld31 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc29, i32 0, i32 1
  store i64 1, ptr %rec.fld31, align 8
  ret ptr %rec.alloc29

choice.exit27:                                    ; preds = %ret.dead32, %idx_ok
  %var.load33 = load ptr, ptr %var.s, align 8
  %s.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 1
  %s.ptr34 = load ptr, ptr %s.ptr, align 8
  %var.load35 = load i64, ptr %var.i, align 8
  %call.res36 = call i32 @"utf::decode_rune_addr"(ptr %s.ptr34, i64 %var.load35)
  %coerce.sext = sext i32 %call.res36 to i64
  store i64 %coerce.sext, ptr %var.cp, align 8
  %var.load37 = load i64, ptr %var.cp, align 8
  %cmptmp38 = icmp eq i64 %var.load37, 65533
  br i1 %cmptmp38, label %and.14.then, label %and.14.else

ret.dead32:                                       ; No predecessors!
  br label %choice.exit27

and.14.then:                                      ; preds = %choice.exit27
  %var.load39 = load i64, ptr %var.need, align 8
  %cmptmp40 = icmp ne i64 %var.load39, 3
  br i1 %cmptmp40, label %or.15.then, label %or.15.else

and.14.else:                                      ; preds = %choice.exit27
  br label %and.14.exit

and.14.exit:                                      ; preds = %and.14.else, %or.17.exit
  %and.14.phi = phi i1 [ %or.17.phi, %or.17.exit ], [ %cmptmp38, %and.14.else ]
  br i1 %and.14.phi, label %choice.then91, label %choice.else

or.15.then:                                       ; preds = %and.14.then
  br label %or.15.exit

or.15.else:                                       ; preds = %and.14.then
  %var.load41 = load i64, ptr %var.b0, align 8
  %cmptmp42 = icmp ne i64 %var.load41, 239
  br label %or.15.exit

or.15.exit:                                       ; preds = %or.15.else, %or.15.then
  %or.15.phi = phi i1 [ %cmptmp40, %or.15.then ], [ %cmptmp42, %or.15.else ]
  br i1 %or.15.phi, label %or.16.then, label %or.16.else

or.16.then:                                       ; preds = %or.15.exit
  br label %or.16.exit

or.16.else:                                       ; preds = %or.15.exit
  %var.load43 = load ptr, ptr %var.s, align 8
  %s.read.len44 = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 0
  %s.read.len45 = load i64, ptr %s.read.len44, align 8
  %s.read.len46 = and i64 %s.read.len45, 281474976710655
  %str.tag47 = lshr i64 %s.read.len45, 48
  %str.immortal48 = icmp eq i64 %str.tag47, 0
  br i1 %str.immortal48, label %str_ok50, label %str_gen_check49

or.16.exit:                                       ; preds = %idx_ok60, %or.16.then
  %or.16.phi = phi i1 [ %or.15.phi, %or.16.then ], [ %cmptmp66, %idx_ok60 ]
  br i1 %or.16.phi, label %or.17.then, label %or.17.else

str_gen_check49:                                  ; preds = %or.16.else
  %arena.cur52 = call ptr @dva_arena_current()
  %tag.valid53 = call i1 @dva_arena_validate_tag(ptr %arena.cur52, i64 %str.tag47)
  br i1 %tag.valid53, label %str_ok50, label %str_stale51

str_ok50:                                         ; preds = %str_stale51, %str_gen_check49, %or.16.else
  %s.read.data54 = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 1
  %s.read.data55 = load ptr, ptr %s.read.data54, align 8
  %var.load56 = load i64, ptr %var.i, align 8
  %addtmp57 = add i64 %var.load56, 1
  %idx.neg58 = icmp slt i64 %addtmp57, 0
  br i1 %idx.neg58, label %idx_oob61, label %idx_big_check59

str_stale51:                                      ; preds = %str_gen_check49
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok50

idx_big_check59:                                  ; preds = %str_ok50
  %idx.big62 = icmp sge i64 %addtmp57, %s.read.len46
  br i1 %idx.big62, label %idx_oob61, label %idx_ok60

idx_ok60:                                         ; preds = %idx_oob61, %idx_big_check59
  %s.byte.gep63 = getelementptr i8, ptr %s.read.data55, i64 %addtmp57
  %s.byte64 = load i8, ptr %s.byte.gep63, align 1
  %s.byte.val65 = zext i8 %s.byte64 to i64
  %cmptmp66 = icmp ne i64 %s.byte.val65, 191
  br label %or.16.exit

idx_oob61:                                        ; preds = %idx_big_check59, %str_ok50
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok60

or.17.then:                                       ; preds = %or.16.exit
  br label %or.17.exit

or.17.else:                                       ; preds = %or.16.exit
  %var.load67 = load ptr, ptr %var.s, align 8
  %s.read.len68 = getelementptr inbounds { i64, ptr }, ptr %var.load67, i32 0, i32 0
  %s.read.len69 = load i64, ptr %s.read.len68, align 8
  %s.read.len70 = and i64 %s.read.len69, 281474976710655
  %str.tag71 = lshr i64 %s.read.len69, 48
  %str.immortal72 = icmp eq i64 %str.tag71, 0
  br i1 %str.immortal72, label %str_ok74, label %str_gen_check73

or.17.exit:                                       ; preds = %idx_ok84, %or.17.then
  %or.17.phi = phi i1 [ %or.16.phi, %or.17.then ], [ %cmptmp90, %idx_ok84 ]
  br label %and.14.exit

str_gen_check73:                                  ; preds = %or.17.else
  %arena.cur76 = call ptr @dva_arena_current()
  %tag.valid77 = call i1 @dva_arena_validate_tag(ptr %arena.cur76, i64 %str.tag71)
  br i1 %tag.valid77, label %str_ok74, label %str_stale75

str_ok74:                                         ; preds = %str_stale75, %str_gen_check73, %or.17.else
  %s.read.data78 = getelementptr inbounds { i64, ptr }, ptr %var.load67, i32 0, i32 1
  %s.read.data79 = load ptr, ptr %s.read.data78, align 8
  %var.load80 = load i64, ptr %var.i, align 8
  %addtmp81 = add i64 %var.load80, 2
  %idx.neg82 = icmp slt i64 %addtmp81, 0
  br i1 %idx.neg82, label %idx_oob85, label %idx_big_check83

str_stale75:                                      ; preds = %str_gen_check73
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok74

idx_big_check83:                                  ; preds = %str_ok74
  %idx.big86 = icmp sge i64 %addtmp81, %s.read.len70
  br i1 %idx.big86, label %idx_oob85, label %idx_ok84

idx_ok84:                                         ; preds = %idx_oob85, %idx_big_check83
  %s.byte.gep87 = getelementptr i8, ptr %s.read.data79, i64 %addtmp81
  %s.byte88 = load i8, ptr %s.byte.gep87, align 1
  %s.byte.val89 = zext i8 %s.byte88 to i64
  %cmptmp90 = icmp ne i64 %s.byte.val89, 189
  br label %or.17.exit

idx_oob85:                                        ; preds = %idx_big_check83, %str_ok74
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok84

choice.then91:                                    ; preds = %and.14.exit
  %arena.cur93 = call ptr @dva_arena_current()
  %rec.alloc94 = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld95 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc94, i32 0, i32 0
  store i64 -1, ptr %rec.fld95, align 8
  %rec.fld96 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc94, i32 0, i32 1
  store i64 1, ptr %rec.fld96, align 8
  br label %choice.exit92

choice.else:                                      ; preds = %and.14.exit
  %var.load97 = load i64, ptr %var.cp, align 8
  %var.load98 = load i64, ptr %var.need, align 8
  %arena.cur99 = call ptr @dva_arena_current()
  %rec.alloc100 = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld101 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc100, i32 0, i32 0
  store i64 %var.load97, ptr %rec.fld101, align 8
  %rec.fld102 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc100, i32 0, i32 1
  store i64 %var.load98, ptr %rec.fld102, align 8
  br label %choice.exit92

choice.exit92:                                    ; preds = %choice.else, %choice.then91
  %choice.res103 = phi ptr [ %rec.alloc94, %choice.then91 ], [ %rec.alloc100, %choice.else ]
  ret ptr %choice.res103
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
