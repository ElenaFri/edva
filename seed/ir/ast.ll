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
@clo.const = internal constant { ptr, ptr } { ptr @"ast::mk_rfield_type", ptr null }
@"var.ast::mk_rfield_type" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"ast::mk_rfield_type_default", ptr null }
@"var.ast::mk_rfield_type_default" = global ptr null
@"var.ast::cell_var_names" = global ptr null
@str.0 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.0 }
@str.1 = internal unnamed_addr constant [8 x i8] c"ast.dva\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.1 }
@str.2 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.2 }
@str.3 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.3 }
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@clo.const.2 = internal constant { ptr, ptr } { ptr @"ast::has_cell_name_at", ptr null }
@"var.ast::has_cell_name_at" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"ast::has_cell_name", ptr null }
@"var.ast::has_cell_name" = global ptr null
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@clo.const.4 = internal constant { ptr, ptr } { ptr @"ast::cell_var_add", ptr null }
@"var.ast::cell_var_add" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"ast::is_cell_var", ptr null }
@"var.ast::is_cell_var" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"ast::cell_var_reset", ptr null }
@"var.ast::cell_var_reset" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"ast::str_has_sub_at", ptr null }
@"var.ast::str_has_sub_at" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"ast::str_has_sub", ptr null }
@"var.ast::str_has_sub" = global ptr null
@str.4 = internal unnamed_addr constant [7 x i8] c"darwin\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.4 }
@str.5 = internal unnamed_addr constant [7 x i8] c"macosx\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.5 }
@str.6 = internal unnamed_addr constant [6 x i8] c"apple\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.6 }
@str.7 = internal unnamed_addr constant [6 x i8] c"linux\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.7 }
@str.8 = internal unnamed_addr constant [8 x i8] c"windows\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.8 }
@str.9 = internal unnamed_addr constant [5 x i8] c"msvc\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.9 }
@str.10 = internal unnamed_addr constant [6 x i8] c"mingw\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.10 }
@str.11 = internal unnamed_addr constant [8 x i8] c"freebsd\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.11 }
@str.12 = internal unnamed_addr constant [8 x i8] c"openbsd\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.12 }
@str.13 = internal unnamed_addr constant [7 x i8] c"netbsd\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.13 }
@str.14 = internal unnamed_addr constant [5 x i8] c"wasi\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.14 }
@str.15 = internal unnamed_addr constant [5 x i8] c"wasm\00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.15 }
@str.16 = internal unnamed_addr constant [8 x i8] c"unknown\00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.16 }
@clo.const.9 = internal constant { ptr, ptr } { ptr @"ast::triple_os", ptr null }
@"var.ast::triple_os" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.10 = internal constant { ptr, ptr } { ptr @"ast::triple_first_seg_at", ptr null }
@"var.ast::triple_first_seg_at" = global ptr null
@str.17 = internal unnamed_addr constant [6 x i8] c"arm64\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.17 }
@str.18 = internal unnamed_addr constant [8 x i8] c"aarch64\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.18 }
@str.19 = internal unnamed_addr constant [7 x i8] c"x86_64\00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.19 }
@str.20 = internal unnamed_addr constant [6 x i8] c"amd64\00"
@str.20.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.20 }
@str.21 = internal unnamed_addr constant [5 x i8] c"i386\00"
@str.21.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.21 }
@str.22 = internal unnamed_addr constant [5 x i8] c"i486\00"
@str.22.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.22 }
@str.23 = internal unnamed_addr constant [5 x i8] c"i586\00"
@str.23.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.23 }
@str.24 = internal unnamed_addr constant [5 x i8] c"i686\00"
@str.24.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.24 }
@str.25 = internal unnamed_addr constant [4 x i8] c"x86\00"
@str.25.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.25 }
@clo.const.11 = internal constant { ptr, ptr } { ptr @"ast::triple_arch", ptr null }
@"var.ast::triple_arch" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_ast, ptr null }]

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

define internal void @__dva_global_init_ast() #1 {
entry:
  store ptr @clo.const, ptr @"var.ast::mk_rfield_type", align 8
  store ptr @clo.const.1, ptr @"var.ast::mk_rfield_type_default", align 8
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
  store ptr %a.new, ptr @"var.ast::cell_var_names", align 8
  store ptr @clo.const.2, ptr @"var.ast::has_cell_name_at", align 8
  store ptr @clo.const.3, ptr @"var.ast::has_cell_name", align 8
  store ptr @clo.const.4, ptr @"var.ast::cell_var_add", align 8
  store ptr @clo.const.5, ptr @"var.ast::is_cell_var", align 8
  store ptr @clo.const.6, ptr @"var.ast::cell_var_reset", align 8
  store ptr @clo.const.7, ptr @"var.ast::str_has_sub_at", align 8
  store ptr @clo.const.8, ptr @"var.ast::str_has_sub", align 8
  store ptr @clo.const.9, ptr @"var.ast::triple_os", align 8
  store ptr @clo.const.10, ptr @"var.ast::triple_first_seg_at", align 8
  store ptr @clo.const.11, ptr @"var.ast::triple_arch", align 8
  ret void
}

define ptr @"ast::mk_rfield_type"(ptr %0, ptr %1, ptr %2) #1 {
entry:
  %var.ti = alloca ptr, align 8
  %var.vt = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store ptr %1, ptr %var.vt, align 8
  store ptr %2, ptr %var.ti, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %var.load1 = load ptr, ptr %var.vt, align 8
  %var.load2 = load ptr, ptr %var.ti, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur3 = call ptr @dva_arena_current()
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store i64 0, ptr %enum.pay.alloc, align 8
  store ptr %enum.pay.alloc, ptr %pay.gep, align 8
  %arena.cur4 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load, ptr %rec.fld, align 8
  %rec.fld5 = getelementptr inbounds { ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load1, ptr %rec.fld5, align 8
  %rec.fld6 = getelementptr inbounds { ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load2, ptr %rec.fld6, align 8
  %rec.fld7 = getelementptr inbounds { ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 3
  store i1 false, ptr %rec.fld7, align 1
  %rec.fld8 = getelementptr inbounds { ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 4
  store ptr %enum.alloc, ptr %rec.fld8, align 8
  ret ptr %rec.alloc
}

define ptr @"ast::mk_rfield_type_default"(ptr %0, ptr %1, ptr %2, ptr %3) #1 {
entry:
  %var.def_expr = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.vt = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store ptr %1, ptr %var.vt, align 8
  store ptr %2, ptr %var.ti, align 8
  store ptr %3, ptr %var.def_expr, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %var.load1 = load ptr, ptr %var.vt, align 8
  %var.load2 = load ptr, ptr %var.ti, align 8
  %var.load3 = load ptr, ptr %var.def_expr, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load, ptr %rec.fld, align 8
  %rec.fld4 = getelementptr inbounds { ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load1, ptr %rec.fld4, align 8
  %rec.fld5 = getelementptr inbounds { ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load2, ptr %rec.fld5, align 8
  %rec.fld6 = getelementptr inbounds { ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 3
  store i1 true, ptr %rec.fld6, align 1
  %rec.fld7 = getelementptr inbounds { ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 4
  store ptr %var.load3, ptr %rec.fld7, align 8
  ret ptr %rec.alloc
}

define i1 @"ast::has_cell_name_at"(ptr %0, ptr %1, i64 %2, i64 %3) #1 {
entry:
  %var.v = alloca ptr, align 8
  %var._27 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.n = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.arr = alloca ptr, align 8
  store ptr %0, ptr %var.arr, align 8
  store ptr %1, ptr %var.s, align 8
  store i64 %2, ptr %var.i, align 8
  store i64 %3, ptr %var.n, align 8
  %var.load = load i64, ptr %var.i, align 8
  %var.load1 = load i64, ptr %var.n, align 8
  %cmptmp = icmp eq i64 %var.load, %var.load1
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.arr, align 8
  %a.load = load ptr, ptr %var.arr, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %choice.exit46, %choice.then
  %choice.res64 = phi i1 [ false, %choice.then ], [ %choice.res63, %choice.exit46 ]
  ret i1 %choice.res64

a.create:                                         ; preds = %choice.else
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
  store ptr %a.create3, ptr %var.arr, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.else
  %a.load2 = load ptr, ptr %var.arr, align 8
  %var.load5 = load i64, ptr %var.i, align 8
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
  store ptr @str.0.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 243, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 21, ptr %err.col.gep, align 8
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
  store ptr @str.2.struct, ptr %err.msg.gep12, align 8
  %err.file.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep13, align 8
  %err.line.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 3
  store i64 243, ptr %err.line.gep14, align 8
  %err.col.gep15 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 4
  store i64 21, ptr %err.col.gep15, align 8
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
  br i1 %ram.tag20, label %choice.then21, label %choice.else22

choice.then21:                                    ; preds = %a.rd.done
  %ram.pay24 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay24 to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  br label %choice.exit23

choice.else22:                                    ; preds = %a.rd.done
  %ram.pay25 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr26 = inttoptr i64 %ram.pay25 to ptr
  store ptr %pay.ptr26, ptr %var._27, align 8
  br label %choice.exit23

choice.exit23:                                    ; preds = %choice.else22, %choice.then21
  %choice.res = phi ptr [ %pay.ptr, %choice.then21 ], [ @str.3.struct, %choice.else22 ]
  store ptr %choice.res, ptr %var.v, align 8
  %var.load28 = load ptr, ptr %var.v, align 8
  %var.load29 = load ptr, ptr %var.s, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %eq.lhs.len30 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len31 = and i64 %eq.lhs.len30, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len30, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit23
  %arena.cur32 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur32, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit23
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 0
  %eq.rhs.len33 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len34 = and i64 %eq.rhs.len33, 281474976710655
  %str.tag35 = lshr i64 %eq.rhs.len33, 48
  %str.immortal36 = icmp eq i64 %str.tag35, 0
  br i1 %str.immortal36, label %str_ok38, label %str_gen_check37

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check37:                                  ; preds = %str_ok
  %arena.cur40 = call ptr @dva_arena_current()
  %tag.valid41 = call i1 @dva_arena_validate_tag(ptr %arena.cur40, i64 %str.tag35)
  br i1 %tag.valid41, label %str_ok38, label %str_stale39

str_ok38:                                         ; preds = %str_stale39, %str_gen_check37, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len31, %eq.rhs.len34
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale39:                                      ; preds = %str_gen_check37
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok38

str.eq.then:                                      ; preds = %str_ok38
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %eq.lhs.data42 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 1
  %eq.rhs.data43 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data42, ptr %eq.rhs.data43, i64 %eq.lhs.len31)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok38
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then44, label %choice.else45

choice.then44:                                    ; preds = %str.eq.merge
  br label %choice.exit46

choice.else45:                                    ; preds = %str.eq.merge
  %var.load47 = load ptr, ptr %var.arr, align 8
  %a.load48 = load ptr, ptr %var.arr, align 8
  %a.null49 = icmp eq ptr %a.load48, null
  br i1 %a.null49, label %a.create50, label %a.after51

choice.exit46:                                    ; preds = %a.after51, %choice.then44
  %choice.res63 = phi i1 [ true, %choice.then44 ], [ %call.res, %a.after51 ]
  br label %choice.exit

a.create50:                                       ; preds = %choice.else45
  %arena.cur52 = call ptr @dva_arena_current()
  %a.create53 = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 24)
  %arena.cur54 = call ptr @dva_arena_current()
  %a.buf55 = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 128)
  %a.len.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create53, i32 0, i32 0
  store i64 0, ptr %a.len.gep56, align 8
  %a.data.gep57 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create53, i32 0, i32 1
  store ptr %a.buf55, ptr %a.data.gep57, align 8
  %a.cap.gep58 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create53, i32 0, i32 2
  store i64 16, ptr %a.cap.gep58, align 8
  store ptr %a.create53, ptr %var.arr, align 8
  br label %a.after51

a.after51:                                        ; preds = %a.create50, %choice.else45
  %a.load259 = load ptr, ptr %var.arr, align 8
  %var.load60 = load ptr, ptr %var.s, align 8
  %var.load61 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load61, 1
  %var.load62 = load i64, ptr %var.n, align 8
  %call.res = call i1 @"ast::has_cell_name_at"(ptr %a.load259, ptr %var.load60, i64 %addtmp, i64 %var.load62)
  br label %choice.exit46
}

declare i64 @write(i32, ptr, i64)

declare void @exit(i32)

declare i32 @memcmp(ptr, ptr, i64)

define i1 @"ast::has_cell_name"(ptr %0, ptr %1) #1 {
entry:
  %var.s = alloca ptr, align 8
  %var.arr = alloca ptr, align 8
  store ptr %0, ptr %var.arr, align 8
  store ptr %1, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.arr, align 8
  %a.load = load ptr, ptr %var.arr, align 8
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
  store ptr %a.create1, ptr %var.arr, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.arr, align 8
  %var.load3 = load ptr, ptr %var.s, align 8
  %var.load4 = load ptr, ptr %var.arr, align 8
  %a.load5 = load ptr, ptr %var.arr, align 8
  %a.null6 = icmp eq ptr %a.load5, null
  br i1 %a.null6, label %a.create7, label %a.after8

a.create7:                                        ; preds = %a.after
  %arena.cur9 = call ptr @dva_arena_current()
  %a.create10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 24)
  %arena.cur11 = call ptr @dva_arena_current()
  %a.buf12 = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 128)
  %a.len.gep13 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 0
  store i64 0, ptr %a.len.gep13, align 8
  %a.data.gep14 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 1
  store ptr %a.buf12, ptr %a.data.gep14, align 8
  %a.cap.gep15 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 2
  store i64 16, ptr %a.cap.gep15, align 8
  store ptr %a.create10, ptr %var.arr, align 8
  br label %a.after8

a.after8:                                         ; preds = %a.create7, %a.after
  %a.load216 = load ptr, ptr %var.arr, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load216, i32 0, i32 0
  %a.len.query17 = load i64, ptr %a.len.query, align 8
  %call.res = call i1 @"ast::has_cell_name_at"(ptr %a.load2, ptr %var.load3, i64 0, i64 %a.len.query17)
  ret i1 %call.res
}

define void @"ast::cell_var_add"(ptr %0) #1 {
entry:
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %var.load = load ptr, ptr @"var.ast::cell_var_names", align 8
  %a.load = load ptr, ptr @"var.ast::cell_var_names", align 8
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
  store ptr %a.create1, ptr @"var.ast::cell_var_names", align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr @"var.ast::cell_var_names", align 8
  %var.load3 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"ast::has_cell_name"(ptr %a.load2, ptr %var.load3)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %a.after
  %var.load4 = load ptr, ptr %var.name, align 8
  %copy.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %copy.len5 = load i64, ptr %copy.len, align 8
  %copy.len6 = and i64 %copy.len5, 281474976710655
  %str.tag = lshr i64 %copy.len5, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %a.store, %a.after
  ret void

str_gen_check:                                    ; preds = %choice.then
  %arena.cur7 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur7, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.then
  %copy.len8 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %copy.len9 = load ptr, ptr %copy.len8, align 8
  %copy.alen = add i64 %copy.len6, 1
  %arena.cur10 = call ptr @dva_arena_current()
  %copy.buf = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 %copy.alen)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %copy.buf, ptr align 1 %copy.len9, i64 %copy.len6, i1 false)
  %copy.nul = getelementptr i8, ptr %copy.buf, i64 %copy.len6
  store i8 0, ptr %copy.nul, align 1
  %arena.cur11 = call ptr @dva_arena_current()
  %copy.str = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 16)
  %str.copy.len.gep = getelementptr inbounds { i64, ptr }, ptr %copy.str, i32 0, i32 0
  store i64 %copy.len6, ptr %str.copy.len.gep, align 8
  %str.copy.data.gep = getelementptr inbounds { i64, ptr }, ptr %copy.str, i32 0, i32 1
  store ptr %copy.buf, ptr %str.copy.data.gep, align 8
  %a.load12 = load ptr, ptr @"var.ast::cell_var_names", align 8
  %a.null13 = icmp eq ptr %a.load12, null
  br i1 %a.null13, label %a.create14, label %a.after15

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

a.create14:                                       ; preds = %str_ok
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
  store ptr %a.create17, ptr @"var.ast::cell_var_names", align 8
  br label %a.after15

a.after15:                                        ; preds = %a.create14, %str_ok
  %a.load223 = load ptr, ptr @"var.ast::cell_var_names", align 8
  br label %a.check

a.check:                                          ; preds = %a.after15
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load223, i32 0, i32 0
  %a.len24 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load223, i32 0, i32 2
  %a.cap25 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len24, %a.cap25
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load223)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load223, i32 0, i32 1
  %a.cur.data26 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load223, i32 0, i32 0
  %a.cur.len27 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data26, i64 %a.cur.len27
  %slot.p2i = ptrtoint ptr %copy.str to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len27, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load223, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

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

define i1 @"ast::is_cell_var"(ptr %0) #1 {
entry:
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %var.load = load ptr, ptr @"var.ast::cell_var_names", align 8
  %a.load = load ptr, ptr @"var.ast::cell_var_names", align 8
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
  store ptr %a.create1, ptr @"var.ast::cell_var_names", align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr @"var.ast::cell_var_names", align 8
  %var.load3 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"ast::has_cell_name"(ptr %a.load2, ptr %var.load3)
  ret i1 %call.res
}

define void @"ast::cell_var_reset"() #1 {
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
  store ptr %a.new, ptr @"var.ast::cell_var_names", align 8
  ret void
}

define i1 @"ast::str_has_sub_at"(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4) #1 {
entry:
  %var.m = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.sub = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.sub, align 8
  store i64 %2, ptr %var.i, align 8
  store i64 %3, ptr %var.n, align 8
  store i64 %4, ptr %var.m, align 8
  %var.load = load i64, ptr %var.i, align 8
  %var.load1 = load i64, ptr %var.m, align 8
  %addtmp = add i64 %var.load, %var.load1
  %var.load2 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sgt i64 %addtmp, %var.load2
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %s.read.len4 = load i64, ptr %s.read.len, align 8
  %s.read.len5 = and i64 %s.read.len4, 281474976710655
  %str.tag = lshr i64 %s.read.len4, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.exit35, %choice.then
  %choice.res42 = phi i1 [ false, %choice.then ], [ %choice.res, %choice.exit35 ]
  ret i1 %choice.res42

str_gen_check:                                    ; preds = %choice.else
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %s.read.data6 = load ptr, ptr %s.read.data, align 8
  %var.load7 = load i64, ptr %var.i, align 8
  %var.load8 = load i64, ptr %var.i, align 8
  %var.load9 = load i64, ptr %var.m, align 8
  %addtmp10 = add i64 %var.load8, %var.load9
  %start.is_neg = icmp slt i64 %var.load7, 0
  %rel.start = add i64 %s.read.len5, %var.load7
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load7
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len5
  %final.start = select i1 %start.gt.len, i64 %s.read.len5, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp10, 0
  %rel.end = add i64 %s.read.len5, %addtmp10
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp10
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len5
  %final.end = select i1 %end.gt.len, i64 %s.read.len5, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data6, i64 %final.start
  %arena.cur11 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %var.load12 = load ptr, ptr %var.sub, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len13 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len14 = and i64 %eq.lhs.len13, 281474976710655
  %str.tag15 = lshr i64 %eq.lhs.len13, 48
  %str.immortal16 = icmp eq i64 %str.tag15, 0
  br i1 %str.immortal16, label %str_ok18, label %str_gen_check17

str_stale:                                        ; preds = %str_gen_check
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check17:                                  ; preds = %str_ok
  %arena.cur20 = call ptr @dva_arena_current()
  %tag.valid21 = call i1 @dva_arena_validate_tag(ptr %arena.cur20, i64 %str.tag15)
  br i1 %tag.valid21, label %str_ok18, label %str_stale19

str_ok18:                                         ; preds = %str_stale19, %str_gen_check17, %str_ok
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 0
  %eq.rhs.len22 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len23 = and i64 %eq.rhs.len22, 281474976710655
  %str.tag24 = lshr i64 %eq.rhs.len22, 48
  %str.immortal25 = icmp eq i64 %str.tag24, 0
  br i1 %str.immortal25, label %str_ok27, label %str_gen_check26

str_stale19:                                      ; preds = %str_gen_check17
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok18

str_gen_check26:                                  ; preds = %str_ok18
  %arena.cur29 = call ptr @dva_arena_current()
  %tag.valid30 = call i1 @dva_arena_validate_tag(ptr %arena.cur29, i64 %str.tag24)
  br i1 %tag.valid30, label %str_ok27, label %str_stale28

str_ok27:                                         ; preds = %str_stale28, %str_gen_check26, %str_ok18
  %eq.len = icmp eq i64 %eq.lhs.len14, %eq.rhs.len23
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale28:                                      ; preds = %str_gen_check26
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok27

str.eq.then:                                      ; preds = %str_ok27
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data31 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 1
  %eq.rhs.data32 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data31, ptr %eq.rhs.data32, i64 %eq.lhs.len14)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok27
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then33, label %choice.else34

choice.then33:                                    ; preds = %str.eq.merge
  br label %choice.exit35

choice.else34:                                    ; preds = %str.eq.merge
  %var.load36 = load ptr, ptr %var.s, align 8
  %var.load37 = load ptr, ptr %var.sub, align 8
  %var.load38 = load i64, ptr %var.i, align 8
  %addtmp39 = add i64 %var.load38, 1
  %var.load40 = load i64, ptr %var.n, align 8
  %var.load41 = load i64, ptr %var.m, align 8
  %call.res = call i1 @"ast::str_has_sub_at"(ptr %var.load36, ptr %var.load37, i64 %addtmp39, i64 %var.load40, i64 %var.load41)
  br label %choice.exit35

choice.exit35:                                    ; preds = %choice.else34, %choice.then33
  %choice.res = phi i1 [ true, %choice.then33 ], [ %call.res, %choice.else34 ]
  br label %choice.exit
}

define i1 @"ast::str_has_sub"(ptr %0, ptr %1) #1 {
entry:
  %var.m = alloca i64, align 8
  %var.sub = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.sub, align 8
  %var.load = load ptr, ptr %var.sub, align 8
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
  store i64 %str.len.query2, ptr %var.m, align 8
  %var.load3 = load i64, ptr %var.m, align 8
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
  %var.load5 = load ptr, ptr %var.sub, align 8
  %var.load6 = load ptr, ptr %var.s, align 8
  %str.len.query7 = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %str.len.query8 = load i64, ptr %str.len.query7, align 8
  %str.len.query9 = and i64 %str.len.query8, 281474976710655
  %str.tag10 = lshr i64 %str.len.query8, 48
  %str.immortal11 = icmp eq i64 %str.tag10, 0
  br i1 %str.immortal11, label %str_ok13, label %str_gen_check12

choice.exit:                                      ; preds = %str_ok13, %choice.then
  %choice.res = phi i1 [ true, %choice.then ], [ %call.res, %str_ok13 ]
  ret i1 %choice.res

str_gen_check12:                                  ; preds = %choice.else
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag10)
  br i1 %tag.valid16, label %str_ok13, label %str_stale14

str_ok13:                                         ; preds = %str_stale14, %str_gen_check12, %choice.else
  %var.load17 = load i64, ptr %var.m, align 8
  %call.res = call i1 @"ast::str_has_sub_at"(ptr %var.load4, ptr %var.load5, i64 0, i64 %str.len.query9, i64 %var.load17)
  br label %choice.exit

str_stale14:                                      ; preds = %str_gen_check12
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok13
}

define ptr @"ast::triple_os"(ptr %0) #1 {
entry:
  %var.triple = alloca ptr, align 8
  store ptr %0, ptr %var.triple, align 8
  %var.load = load ptr, ptr %var.triple, align 8
  %call.res = call i1 @"ast::str_has_sub"(ptr %var.load, ptr @str.4.struct)
  br i1 %call.res, label %or.11.then, label %or.11.else

or.11.then:                                       ; preds = %entry
  br label %or.11.exit

or.11.else:                                       ; preds = %entry
  %var.load1 = load ptr, ptr %var.triple, align 8
  %call.res2 = call i1 @"ast::str_has_sub"(ptr %var.load1, ptr @str.5.struct)
  br label %or.11.exit

or.11.exit:                                       ; preds = %or.11.else, %or.11.then
  %or.11.phi = phi i1 [ %call.res, %or.11.then ], [ %call.res2, %or.11.else ]
  br i1 %or.11.phi, label %or.12.then, label %or.12.else

or.12.then:                                       ; preds = %or.11.exit
  br label %or.12.exit

or.12.else:                                       ; preds = %or.11.exit
  %var.load3 = load ptr, ptr %var.triple, align 8
  %call.res4 = call i1 @"ast::str_has_sub"(ptr %var.load3, ptr @str.6.struct)
  br label %or.12.exit

or.12.exit:                                       ; preds = %or.12.else, %or.12.then
  %or.12.phi = phi i1 [ %or.11.phi, %or.12.then ], [ %call.res4, %or.12.else ]
  br i1 %or.12.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %or.12.exit
  br label %choice.exit

choice.else:                                      ; preds = %or.12.exit
  %var.load5 = load ptr, ptr %var.triple, align 8
  %call.res6 = call i1 @"ast::str_has_sub"(ptr %var.load5, ptr @str.7.struct)
  br i1 %call.res6, label %choice.then7, label %choice.else8

choice.exit:                                      ; preds = %choice.exit9, %choice.then
  %choice.res50 = phi ptr [ @str.4.struct, %choice.then ], [ %choice.res49, %choice.exit9 ]
  ret ptr %choice.res50

choice.then7:                                     ; preds = %choice.else
  br label %choice.exit9

choice.else8:                                     ; preds = %choice.else
  %var.load10 = load ptr, ptr %var.triple, align 8
  %call.res11 = call i1 @"ast::str_has_sub"(ptr %var.load10, ptr @str.8.struct)
  br i1 %call.res11, label %or.13.then, label %or.13.else

choice.exit9:                                     ; preds = %choice.exit18, %choice.then7
  %choice.res49 = phi ptr [ @str.7.struct, %choice.then7 ], [ %choice.res48, %choice.exit18 ]
  br label %choice.exit

or.13.then:                                       ; preds = %choice.else8
  br label %or.13.exit

or.13.else:                                       ; preds = %choice.else8
  %var.load12 = load ptr, ptr %var.triple, align 8
  %call.res13 = call i1 @"ast::str_has_sub"(ptr %var.load12, ptr @str.9.struct)
  br label %or.13.exit

or.13.exit:                                       ; preds = %or.13.else, %or.13.then
  %or.13.phi = phi i1 [ %call.res11, %or.13.then ], [ %call.res13, %or.13.else ]
  br i1 %or.13.phi, label %or.14.then, label %or.14.else

or.14.then:                                       ; preds = %or.13.exit
  br label %or.14.exit

or.14.else:                                       ; preds = %or.13.exit
  %var.load14 = load ptr, ptr %var.triple, align 8
  %call.res15 = call i1 @"ast::str_has_sub"(ptr %var.load14, ptr @str.10.struct)
  br label %or.14.exit

or.14.exit:                                       ; preds = %or.14.else, %or.14.then
  %or.14.phi = phi i1 [ %or.13.phi, %or.14.then ], [ %call.res15, %or.14.else ]
  br i1 %or.14.phi, label %choice.then16, label %choice.else17

choice.then16:                                    ; preds = %or.14.exit
  br label %choice.exit18

choice.else17:                                    ; preds = %or.14.exit
  %var.load19 = load ptr, ptr %var.triple, align 8
  %call.res20 = call i1 @"ast::str_has_sub"(ptr %var.load19, ptr @str.11.struct)
  br i1 %call.res20, label %choice.then21, label %choice.else22

choice.exit18:                                    ; preds = %choice.exit23, %choice.then16
  %choice.res48 = phi ptr [ @str.8.struct, %choice.then16 ], [ %choice.res47, %choice.exit23 ]
  br label %choice.exit9

choice.then21:                                    ; preds = %choice.else17
  br label %choice.exit23

choice.else22:                                    ; preds = %choice.else17
  %var.load24 = load ptr, ptr %var.triple, align 8
  %call.res25 = call i1 @"ast::str_has_sub"(ptr %var.load24, ptr @str.12.struct)
  br i1 %call.res25, label %choice.then26, label %choice.else27

choice.exit23:                                    ; preds = %choice.exit28, %choice.then21
  %choice.res47 = phi ptr [ @str.11.struct, %choice.then21 ], [ %choice.res46, %choice.exit28 ]
  br label %choice.exit18

choice.then26:                                    ; preds = %choice.else22
  br label %choice.exit28

choice.else27:                                    ; preds = %choice.else22
  %var.load29 = load ptr, ptr %var.triple, align 8
  %call.res30 = call i1 @"ast::str_has_sub"(ptr %var.load29, ptr @str.13.struct)
  br i1 %call.res30, label %choice.then31, label %choice.else32

choice.exit28:                                    ; preds = %choice.exit33, %choice.then26
  %choice.res46 = phi ptr [ @str.12.struct, %choice.then26 ], [ %choice.res45, %choice.exit33 ]
  br label %choice.exit23

choice.then31:                                    ; preds = %choice.else27
  br label %choice.exit33

choice.else32:                                    ; preds = %choice.else27
  %var.load34 = load ptr, ptr %var.triple, align 8
  %call.res35 = call i1 @"ast::str_has_sub"(ptr %var.load34, ptr @str.14.struct)
  br i1 %call.res35, label %choice.then36, label %choice.else37

choice.exit33:                                    ; preds = %choice.exit38, %choice.then31
  %choice.res45 = phi ptr [ @str.13.struct, %choice.then31 ], [ %choice.res44, %choice.exit38 ]
  br label %choice.exit28

choice.then36:                                    ; preds = %choice.else32
  br label %choice.exit38

choice.else37:                                    ; preds = %choice.else32
  %var.load39 = load ptr, ptr %var.triple, align 8
  %call.res40 = call i1 @"ast::str_has_sub"(ptr %var.load39, ptr @str.15.struct)
  br i1 %call.res40, label %choice.then41, label %choice.else42

choice.exit38:                                    ; preds = %choice.exit43, %choice.then36
  %choice.res44 = phi ptr [ @str.14.struct, %choice.then36 ], [ %choice.res, %choice.exit43 ]
  br label %choice.exit33

choice.then41:                                    ; preds = %choice.else37
  br label %choice.exit43

choice.else42:                                    ; preds = %choice.else37
  br label %choice.exit43

choice.exit43:                                    ; preds = %choice.else42, %choice.then41
  %choice.res = phi ptr [ @str.15.struct, %choice.then41 ], [ @str.16.struct, %choice.else42 ]
  br label %choice.exit38
}

define ptr @"ast::triple_first_seg_at"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.n = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.i, align 8
  store i64 %2, ptr %var.n, align 8
  %var.load = load i64, ptr %var.i, align 8
  %var.load1 = load i64, ptr %var.n, align 8
  %cmptmp = icmp eq i64 %var.load, %var.load1
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.s, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %s.read.len4 = load i64, ptr %s.read.len, align 8
  %s.read.len5 = and i64 %s.read.len4, 281474976710655
  %str.tag = lshr i64 %s.read.len4, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.exit11, %choice.then
  %choice.res30 = phi ptr [ %var.load2, %choice.then ], [ %choice.res, %choice.exit11 ]
  ret ptr %choice.res30

str_gen_check:                                    ; preds = %choice.else
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %s.read.data6 = load ptr, ptr %s.read.data, align 8
  %var.load7 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load7, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

idx_big_check:                                    ; preds = %str_ok
  %idx.big = icmp sge i64 %var.load7, %s.read.len5
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data6, i64 %var.load7
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp8 = icmp eq i64 %s.byte.val, 45
  br i1 %cmptmp8, label %choice.then9, label %choice.else10

idx_oob:                                          ; preds = %idx_big_check, %str_ok
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then9:                                     ; preds = %idx_ok
  %var.load12 = load ptr, ptr %var.s, align 8
  %s.read.len13 = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 0
  %s.read.len14 = load i64, ptr %s.read.len13, align 8
  %s.read.len15 = and i64 %s.read.len14, 281474976710655
  %str.tag16 = lshr i64 %s.read.len14, 48
  %str.immortal17 = icmp eq i64 %str.tag16, 0
  br i1 %str.immortal17, label %str_ok19, label %str_gen_check18

choice.else10:                                    ; preds = %idx_ok
  %var.load27 = load ptr, ptr %var.s, align 8
  %var.load28 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load28, 1
  %var.load29 = load i64, ptr %var.n, align 8
  %call.res = call ptr @"ast::triple_first_seg_at"(ptr %var.load27, i64 %addtmp, i64 %var.load29)
  br label %choice.exit11

choice.exit11:                                    ; preds = %choice.else10, %str_ok19
  %choice.res = phi ptr [ %str.view, %str_ok19 ], [ %call.res, %choice.else10 ]
  br label %choice.exit

str_gen_check18:                                  ; preds = %choice.then9
  %arena.cur21 = call ptr @dva_arena_current()
  %tag.valid22 = call i1 @dva_arena_validate_tag(ptr %arena.cur21, i64 %str.tag16)
  br i1 %tag.valid22, label %str_ok19, label %str_stale20

str_ok19:                                         ; preds = %str_stale20, %str_gen_check18, %choice.then9
  %s.read.data23 = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 1
  %s.read.data24 = load ptr, ptr %s.read.data23, align 8
  %var.load25 = load i64, ptr %var.i, align 8
  %rel.start = add i64 %s.read.len15, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len15
  %final.start = select i1 %start.gt.len, i64 %s.read.len15, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load25, 0
  %rel.end = add i64 %s.read.len15, %var.load25
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load25
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len15
  %final.end = select i1 %end.gt.len, i64 %s.read.len15, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data24, i64 %final.start
  %arena.cur26 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit11

str_stale20:                                      ; preds = %str_gen_check18
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok19
}

define ptr @"ast::triple_arch"(ptr %0) #1 {
entry:
  %var.seg = alloca ptr, align 8
  %var.triple = alloca ptr, align 8
  store ptr %0, ptr %var.triple, align 8
  %var.load = load ptr, ptr %var.triple, align 8
  %var.load1 = load ptr, ptr %var.triple, align 8
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
  %call.res = call ptr @"ast::triple_first_seg_at"(ptr %var.load, i64 0, i64 %str.len.query3)
  store ptr %call.res, ptr %var.seg, align 8
  %var.load4 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len5 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len6 = and i64 %eq.lhs.len5, 281474976710655
  %str.tag7 = lshr i64 %eq.lhs.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.exit:                                      ; preds = %choice.next235, %choice.case234, %choice.case113, %choice.case52, %choice.case
  %choice.res = phi ptr [ @str.18.struct, %choice.case ], [ @str.19.struct, %choice.case52 ], [ @str.25.struct, %choice.case113 ], [ @str.16.struct, %choice.case234 ], [ %var.load265, %choice.next235 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %str.eq.merge45
  br label %choice.exit

choice.next:                                      ; preds = %str.eq.merge45
  %eq.lhs.len54 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len55 = load i64, ptr %eq.lhs.len54, align 8
  %eq.lhs.len56 = and i64 %eq.lhs.len55, 281474976710655
  %str.tag57 = lshr i64 %eq.lhs.len55, 48
  %str.immortal58 = icmp eq i64 %str.tag57, 0
  br i1 %str.immortal58, label %str_ok60, label %str_gen_check59

str_gen_check9:                                   ; preds = %str_ok
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %str_ok
  %eq.rhs.len = load i64, ptr @str.17.struct, align 8
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
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data22 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data22, ptr %eq.rhs.data, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok18
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %eq.lhs.len23 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
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
  %eq.rhs.len33 = load i64, ptr @str.18.struct, align 8
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
  %eq.lhs.data46 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data47 = load ptr, ptr %eq.lhs.data46, align 8
  %eq.rhs.data48 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.18.struct, i32 0, i32 1), align 8
  %eq.memcmp49 = call i32 @memcmp(ptr %eq.lhs.data47, ptr %eq.rhs.data48, i64 %eq.lhs.len25)
  %eq.cmp.zero50 = icmp eq i32 %eq.memcmp49, 0
  br label %str.eq.merge45

str.eq.else44:                                    ; preds = %str_ok38
  br label %str.eq.merge45

str.eq.merge45:                                   ; preds = %str.eq.else44, %str.eq.then43
  %str.eq.result51 = phi i1 [ %eq.cmp.zero50, %str.eq.then43 ], [ false, %str.eq.else44 ]
  %case.or = or i1 %str.eq.result, %str.eq.result51
  br i1 %case.or, label %choice.case, label %choice.next

choice.case52:                                    ; preds = %str.eq.merge105
  br label %choice.exit

choice.next53:                                    ; preds = %str.eq.merge105
  %eq.lhs.len115 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len116 = load i64, ptr %eq.lhs.len115, align 8
  %eq.lhs.len117 = and i64 %eq.lhs.len116, 281474976710655
  %str.tag118 = lshr i64 %eq.lhs.len116, 48
  %str.immortal119 = icmp eq i64 %str.tag118, 0
  br i1 %str.immortal119, label %str_ok121, label %str_gen_check120

str_gen_check59:                                  ; preds = %choice.next
  %arena.cur62 = call ptr @dva_arena_current()
  %tag.valid63 = call i1 @dva_arena_validate_tag(ptr %arena.cur62, i64 %str.tag57)
  br i1 %tag.valid63, label %str_ok60, label %str_stale61

str_ok60:                                         ; preds = %str_stale61, %str_gen_check59, %choice.next
  %eq.rhs.len64 = load i64, ptr @str.19.struct, align 8
  %eq.rhs.len65 = and i64 %eq.rhs.len64, 281474976710655
  %str.tag66 = lshr i64 %eq.rhs.len64, 48
  %str.immortal67 = icmp eq i64 %str.tag66, 0
  br i1 %str.immortal67, label %str_ok69, label %str_gen_check68

str_stale61:                                      ; preds = %str_gen_check59
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok60

str_gen_check68:                                  ; preds = %str_ok60
  %arena.cur71 = call ptr @dva_arena_current()
  %tag.valid72 = call i1 @dva_arena_validate_tag(ptr %arena.cur71, i64 %str.tag66)
  br i1 %tag.valid72, label %str_ok69, label %str_stale70

str_ok69:                                         ; preds = %str_stale70, %str_gen_check68, %str_ok60
  %eq.len73 = icmp eq i64 %eq.lhs.len56, %eq.rhs.len65
  br i1 %eq.len73, label %str.eq.then74, label %str.eq.else75

str_stale70:                                      ; preds = %str_gen_check68
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok69

str.eq.then74:                                    ; preds = %str_ok69
  %eq.lhs.data77 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data78 = load ptr, ptr %eq.lhs.data77, align 8
  %eq.rhs.data79 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.19.struct, i32 0, i32 1), align 8
  %eq.memcmp80 = call i32 @memcmp(ptr %eq.lhs.data78, ptr %eq.rhs.data79, i64 %eq.lhs.len56)
  %eq.cmp.zero81 = icmp eq i32 %eq.memcmp80, 0
  br label %str.eq.merge76

str.eq.else75:                                    ; preds = %str_ok69
  br label %str.eq.merge76

str.eq.merge76:                                   ; preds = %str.eq.else75, %str.eq.then74
  %str.eq.result82 = phi i1 [ %eq.cmp.zero81, %str.eq.then74 ], [ false, %str.eq.else75 ]
  %eq.lhs.len83 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len84 = load i64, ptr %eq.lhs.len83, align 8
  %eq.lhs.len85 = and i64 %eq.lhs.len84, 281474976710655
  %str.tag86 = lshr i64 %eq.lhs.len84, 48
  %str.immortal87 = icmp eq i64 %str.tag86, 0
  br i1 %str.immortal87, label %str_ok89, label %str_gen_check88

str_gen_check88:                                  ; preds = %str.eq.merge76
  %arena.cur91 = call ptr @dva_arena_current()
  %tag.valid92 = call i1 @dva_arena_validate_tag(ptr %arena.cur91, i64 %str.tag86)
  br i1 %tag.valid92, label %str_ok89, label %str_stale90

str_ok89:                                         ; preds = %str_stale90, %str_gen_check88, %str.eq.merge76
  %eq.rhs.len93 = load i64, ptr @str.20.struct, align 8
  %eq.rhs.len94 = and i64 %eq.rhs.len93, 281474976710655
  %str.tag95 = lshr i64 %eq.rhs.len93, 48
  %str.immortal96 = icmp eq i64 %str.tag95, 0
  br i1 %str.immortal96, label %str_ok98, label %str_gen_check97

str_stale90:                                      ; preds = %str_gen_check88
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok89

str_gen_check97:                                  ; preds = %str_ok89
  %arena.cur100 = call ptr @dva_arena_current()
  %tag.valid101 = call i1 @dva_arena_validate_tag(ptr %arena.cur100, i64 %str.tag95)
  br i1 %tag.valid101, label %str_ok98, label %str_stale99

str_ok98:                                         ; preds = %str_stale99, %str_gen_check97, %str_ok89
  %eq.len102 = icmp eq i64 %eq.lhs.len85, %eq.rhs.len94
  br i1 %eq.len102, label %str.eq.then103, label %str.eq.else104

str_stale99:                                      ; preds = %str_gen_check97
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok98

str.eq.then103:                                   ; preds = %str_ok98
  %eq.lhs.data106 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data107 = load ptr, ptr %eq.lhs.data106, align 8
  %eq.rhs.data108 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.20.struct, i32 0, i32 1), align 8
  %eq.memcmp109 = call i32 @memcmp(ptr %eq.lhs.data107, ptr %eq.rhs.data108, i64 %eq.lhs.len85)
  %eq.cmp.zero110 = icmp eq i32 %eq.memcmp109, 0
  br label %str.eq.merge105

str.eq.else104:                                   ; preds = %str_ok98
  br label %str.eq.merge105

str.eq.merge105:                                  ; preds = %str.eq.else104, %str.eq.then103
  %str.eq.result111 = phi i1 [ %eq.cmp.zero110, %str.eq.then103 ], [ false, %str.eq.else104 ]
  %case.or112 = or i1 %str.eq.result82, %str.eq.result111
  br i1 %case.or112, label %choice.case52, label %choice.next53

choice.case113:                                   ; preds = %str.eq.merge226
  br label %choice.exit

choice.next114:                                   ; preds = %str.eq.merge226
  %eq.lhs.len236 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len237 = load i64, ptr %eq.lhs.len236, align 8
  %eq.lhs.len238 = and i64 %eq.lhs.len237, 281474976710655
  %str.tag239 = lshr i64 %eq.lhs.len237, 48
  %str.immortal240 = icmp eq i64 %str.tag239, 0
  br i1 %str.immortal240, label %str_ok242, label %str_gen_check241

str_gen_check120:                                 ; preds = %choice.next53
  %arena.cur123 = call ptr @dva_arena_current()
  %tag.valid124 = call i1 @dva_arena_validate_tag(ptr %arena.cur123, i64 %str.tag118)
  br i1 %tag.valid124, label %str_ok121, label %str_stale122

str_ok121:                                        ; preds = %str_stale122, %str_gen_check120, %choice.next53
  %eq.rhs.len125 = load i64, ptr @str.21.struct, align 8
  %eq.rhs.len126 = and i64 %eq.rhs.len125, 281474976710655
  %str.tag127 = lshr i64 %eq.rhs.len125, 48
  %str.immortal128 = icmp eq i64 %str.tag127, 0
  br i1 %str.immortal128, label %str_ok130, label %str_gen_check129

str_stale122:                                     ; preds = %str_gen_check120
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok121

str_gen_check129:                                 ; preds = %str_ok121
  %arena.cur132 = call ptr @dva_arena_current()
  %tag.valid133 = call i1 @dva_arena_validate_tag(ptr %arena.cur132, i64 %str.tag127)
  br i1 %tag.valid133, label %str_ok130, label %str_stale131

str_ok130:                                        ; preds = %str_stale131, %str_gen_check129, %str_ok121
  %eq.len134 = icmp eq i64 %eq.lhs.len117, %eq.rhs.len126
  br i1 %eq.len134, label %str.eq.then135, label %str.eq.else136

str_stale131:                                     ; preds = %str_gen_check129
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok130

str.eq.then135:                                   ; preds = %str_ok130
  %eq.lhs.data138 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data139 = load ptr, ptr %eq.lhs.data138, align 8
  %eq.rhs.data140 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.21.struct, i32 0, i32 1), align 8
  %eq.memcmp141 = call i32 @memcmp(ptr %eq.lhs.data139, ptr %eq.rhs.data140, i64 %eq.lhs.len117)
  %eq.cmp.zero142 = icmp eq i32 %eq.memcmp141, 0
  br label %str.eq.merge137

str.eq.else136:                                   ; preds = %str_ok130
  br label %str.eq.merge137

str.eq.merge137:                                  ; preds = %str.eq.else136, %str.eq.then135
  %str.eq.result143 = phi i1 [ %eq.cmp.zero142, %str.eq.then135 ], [ false, %str.eq.else136 ]
  %eq.lhs.len144 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len145 = load i64, ptr %eq.lhs.len144, align 8
  %eq.lhs.len146 = and i64 %eq.lhs.len145, 281474976710655
  %str.tag147 = lshr i64 %eq.lhs.len145, 48
  %str.immortal148 = icmp eq i64 %str.tag147, 0
  br i1 %str.immortal148, label %str_ok150, label %str_gen_check149

str_gen_check149:                                 ; preds = %str.eq.merge137
  %arena.cur152 = call ptr @dva_arena_current()
  %tag.valid153 = call i1 @dva_arena_validate_tag(ptr %arena.cur152, i64 %str.tag147)
  br i1 %tag.valid153, label %str_ok150, label %str_stale151

str_ok150:                                        ; preds = %str_stale151, %str_gen_check149, %str.eq.merge137
  %eq.rhs.len154 = load i64, ptr @str.22.struct, align 8
  %eq.rhs.len155 = and i64 %eq.rhs.len154, 281474976710655
  %str.tag156 = lshr i64 %eq.rhs.len154, 48
  %str.immortal157 = icmp eq i64 %str.tag156, 0
  br i1 %str.immortal157, label %str_ok159, label %str_gen_check158

str_stale151:                                     ; preds = %str_gen_check149
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok150

str_gen_check158:                                 ; preds = %str_ok150
  %arena.cur161 = call ptr @dva_arena_current()
  %tag.valid162 = call i1 @dva_arena_validate_tag(ptr %arena.cur161, i64 %str.tag156)
  br i1 %tag.valid162, label %str_ok159, label %str_stale160

str_ok159:                                        ; preds = %str_stale160, %str_gen_check158, %str_ok150
  %eq.len163 = icmp eq i64 %eq.lhs.len146, %eq.rhs.len155
  br i1 %eq.len163, label %str.eq.then164, label %str.eq.else165

str_stale160:                                     ; preds = %str_gen_check158
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok159

str.eq.then164:                                   ; preds = %str_ok159
  %eq.lhs.data167 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data168 = load ptr, ptr %eq.lhs.data167, align 8
  %eq.rhs.data169 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.22.struct, i32 0, i32 1), align 8
  %eq.memcmp170 = call i32 @memcmp(ptr %eq.lhs.data168, ptr %eq.rhs.data169, i64 %eq.lhs.len146)
  %eq.cmp.zero171 = icmp eq i32 %eq.memcmp170, 0
  br label %str.eq.merge166

str.eq.else165:                                   ; preds = %str_ok159
  br label %str.eq.merge166

str.eq.merge166:                                  ; preds = %str.eq.else165, %str.eq.then164
  %str.eq.result172 = phi i1 [ %eq.cmp.zero171, %str.eq.then164 ], [ false, %str.eq.else165 ]
  %case.or173 = or i1 %str.eq.result143, %str.eq.result172
  %eq.lhs.len174 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len175 = load i64, ptr %eq.lhs.len174, align 8
  %eq.lhs.len176 = and i64 %eq.lhs.len175, 281474976710655
  %str.tag177 = lshr i64 %eq.lhs.len175, 48
  %str.immortal178 = icmp eq i64 %str.tag177, 0
  br i1 %str.immortal178, label %str_ok180, label %str_gen_check179

str_gen_check179:                                 ; preds = %str.eq.merge166
  %arena.cur182 = call ptr @dva_arena_current()
  %tag.valid183 = call i1 @dva_arena_validate_tag(ptr %arena.cur182, i64 %str.tag177)
  br i1 %tag.valid183, label %str_ok180, label %str_stale181

str_ok180:                                        ; preds = %str_stale181, %str_gen_check179, %str.eq.merge166
  %eq.rhs.len184 = load i64, ptr @str.23.struct, align 8
  %eq.rhs.len185 = and i64 %eq.rhs.len184, 281474976710655
  %str.tag186 = lshr i64 %eq.rhs.len184, 48
  %str.immortal187 = icmp eq i64 %str.tag186, 0
  br i1 %str.immortal187, label %str_ok189, label %str_gen_check188

str_stale181:                                     ; preds = %str_gen_check179
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok180

str_gen_check188:                                 ; preds = %str_ok180
  %arena.cur191 = call ptr @dva_arena_current()
  %tag.valid192 = call i1 @dva_arena_validate_tag(ptr %arena.cur191, i64 %str.tag186)
  br i1 %tag.valid192, label %str_ok189, label %str_stale190

str_ok189:                                        ; preds = %str_stale190, %str_gen_check188, %str_ok180
  %eq.len193 = icmp eq i64 %eq.lhs.len176, %eq.rhs.len185
  br i1 %eq.len193, label %str.eq.then194, label %str.eq.else195

str_stale190:                                     ; preds = %str_gen_check188
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok189

str.eq.then194:                                   ; preds = %str_ok189
  %eq.lhs.data197 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data198 = load ptr, ptr %eq.lhs.data197, align 8
  %eq.rhs.data199 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.23.struct, i32 0, i32 1), align 8
  %eq.memcmp200 = call i32 @memcmp(ptr %eq.lhs.data198, ptr %eq.rhs.data199, i64 %eq.lhs.len176)
  %eq.cmp.zero201 = icmp eq i32 %eq.memcmp200, 0
  br label %str.eq.merge196

str.eq.else195:                                   ; preds = %str_ok189
  br label %str.eq.merge196

str.eq.merge196:                                  ; preds = %str.eq.else195, %str.eq.then194
  %str.eq.result202 = phi i1 [ %eq.cmp.zero201, %str.eq.then194 ], [ false, %str.eq.else195 ]
  %case.or203 = or i1 %case.or173, %str.eq.result202
  %eq.lhs.len204 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len205 = load i64, ptr %eq.lhs.len204, align 8
  %eq.lhs.len206 = and i64 %eq.lhs.len205, 281474976710655
  %str.tag207 = lshr i64 %eq.lhs.len205, 48
  %str.immortal208 = icmp eq i64 %str.tag207, 0
  br i1 %str.immortal208, label %str_ok210, label %str_gen_check209

str_gen_check209:                                 ; preds = %str.eq.merge196
  %arena.cur212 = call ptr @dva_arena_current()
  %tag.valid213 = call i1 @dva_arena_validate_tag(ptr %arena.cur212, i64 %str.tag207)
  br i1 %tag.valid213, label %str_ok210, label %str_stale211

str_ok210:                                        ; preds = %str_stale211, %str_gen_check209, %str.eq.merge196
  %eq.rhs.len214 = load i64, ptr @str.24.struct, align 8
  %eq.rhs.len215 = and i64 %eq.rhs.len214, 281474976710655
  %str.tag216 = lshr i64 %eq.rhs.len214, 48
  %str.immortal217 = icmp eq i64 %str.tag216, 0
  br i1 %str.immortal217, label %str_ok219, label %str_gen_check218

str_stale211:                                     ; preds = %str_gen_check209
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok210

str_gen_check218:                                 ; preds = %str_ok210
  %arena.cur221 = call ptr @dva_arena_current()
  %tag.valid222 = call i1 @dva_arena_validate_tag(ptr %arena.cur221, i64 %str.tag216)
  br i1 %tag.valid222, label %str_ok219, label %str_stale220

str_ok219:                                        ; preds = %str_stale220, %str_gen_check218, %str_ok210
  %eq.len223 = icmp eq i64 %eq.lhs.len206, %eq.rhs.len215
  br i1 %eq.len223, label %str.eq.then224, label %str.eq.else225

str_stale220:                                     ; preds = %str_gen_check218
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok219

str.eq.then224:                                   ; preds = %str_ok219
  %eq.lhs.data227 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data228 = load ptr, ptr %eq.lhs.data227, align 8
  %eq.rhs.data229 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.24.struct, i32 0, i32 1), align 8
  %eq.memcmp230 = call i32 @memcmp(ptr %eq.lhs.data228, ptr %eq.rhs.data229, i64 %eq.lhs.len206)
  %eq.cmp.zero231 = icmp eq i32 %eq.memcmp230, 0
  br label %str.eq.merge226

str.eq.else225:                                   ; preds = %str_ok219
  br label %str.eq.merge226

str.eq.merge226:                                  ; preds = %str.eq.else225, %str.eq.then224
  %str.eq.result232 = phi i1 [ %eq.cmp.zero231, %str.eq.then224 ], [ false, %str.eq.else225 ]
  %case.or233 = or i1 %case.or203, %str.eq.result232
  br i1 %case.or233, label %choice.case113, label %choice.next114

choice.case234:                                   ; preds = %str.eq.merge258
  br label %choice.exit

choice.next235:                                   ; preds = %str.eq.merge258
  %var.load265 = load ptr, ptr %var.seg, align 8
  br label %choice.exit

str_gen_check241:                                 ; preds = %choice.next114
  %arena.cur244 = call ptr @dva_arena_current()
  %tag.valid245 = call i1 @dva_arena_validate_tag(ptr %arena.cur244, i64 %str.tag239)
  br i1 %tag.valid245, label %str_ok242, label %str_stale243

str_ok242:                                        ; preds = %str_stale243, %str_gen_check241, %choice.next114
  %eq.rhs.len246 = load i64, ptr @str.3.struct, align 8
  %eq.rhs.len247 = and i64 %eq.rhs.len246, 281474976710655
  %str.tag248 = lshr i64 %eq.rhs.len246, 48
  %str.immortal249 = icmp eq i64 %str.tag248, 0
  br i1 %str.immortal249, label %str_ok251, label %str_gen_check250

str_stale243:                                     ; preds = %str_gen_check241
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok242

str_gen_check250:                                 ; preds = %str_ok242
  %arena.cur253 = call ptr @dva_arena_current()
  %tag.valid254 = call i1 @dva_arena_validate_tag(ptr %arena.cur253, i64 %str.tag248)
  br i1 %tag.valid254, label %str_ok251, label %str_stale252

str_ok251:                                        ; preds = %str_stale252, %str_gen_check250, %str_ok242
  %eq.len255 = icmp eq i64 %eq.lhs.len238, %eq.rhs.len247
  br i1 %eq.len255, label %str.eq.then256, label %str.eq.else257

str_stale252:                                     ; preds = %str_gen_check250
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok251

str.eq.then256:                                   ; preds = %str_ok251
  %eq.lhs.data259 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data260 = load ptr, ptr %eq.lhs.data259, align 8
  %eq.rhs.data261 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp262 = call i32 @memcmp(ptr %eq.lhs.data260, ptr %eq.rhs.data261, i64 %eq.lhs.len238)
  %eq.cmp.zero263 = icmp eq i32 %eq.memcmp262, 0
  br label %str.eq.merge258

str.eq.else257:                                   ; preds = %str_ok251
  br label %str.eq.merge258

str.eq.merge258:                                  ; preds = %str.eq.else257, %str.eq.then256
  %str.eq.result264 = phi i1 [ %eq.cmp.zero263, %str.eq.then256 ], [ false, %str.eq.else257 ]
  br i1 %str.eq.result264, label %choice.case234, label %choice.next235
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
