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
@str.0 = internal unnamed_addr constant [6 x i8] c"<fwd>\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.0 }
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@clo.const = internal constant { ptr, ptr } { ptr @"dep_graph::is_fwd_assign", ptr null }
@"var.dep_graph::is_fwd_assign" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"dep_graph::copy_names", ptr null }
@"var.dep_graph::copy_names" = global ptr null
@str.1 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.1 }
@str.2 = internal unnamed_addr constant [14 x i8] c"dep_graph.dva\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 13, ptr @str.2 }
@str.3 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.3 }
@str.4 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.4 }
@clo.const.2 = internal constant { ptr, ptr } { ptr @"dep_graph::has_name_at", ptr null }
@"var.dep_graph::has_name_at" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"dep_graph::has_name", ptr null }
@"var.dep_graph::has_name" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.4 = internal constant { ptr, ptr } { ptr @"dep_graph::name_is_qualified", ptr null }
@"var.dep_graph::name_is_qualified" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"dep_graph::decl_module_find", ptr null }
@"var.dep_graph::decl_module_find" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"dep_graph::decl_module", ptr null }
@"var.dep_graph::decl_module" = global ptr null
@str.5 = internal unnamed_addr constant [3 x i8] c"::\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.5 }
@str.6 = internal unnamed_addr constant [4 x i8] c"::#\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.6 }
@clo.const.7 = internal constant { ptr, ptr } { ptr @"dep_graph::resolve_dep_ref", ptr null }
@"var.dep_graph::resolve_dep_ref" = global ptr null
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@str.7 = internal unnamed_addr constant [8 x i8] c"default\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.7 }
@clo.const.8 = internal constant { ptr, ptr } { ptr @"dep_graph::collect_expr_refs", ptr null }
@"var.dep_graph::collect_expr_refs" = global ptr null
@str.8 = internal unnamed_addr constant [14 x i8] c"key not found\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 13, ptr @str.8 }
@dva_thread_rec = external thread_local global ptr
@clo.const.9 = internal constant { ptr, ptr } { ptr @"dep_graph::find_node_idx", ptr null }
@"var.dep_graph::find_node_idx" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"dep_graph::node_has_dep", ptr null }
@"var.dep_graph::node_has_dep" = global ptr null
@str.9 = internal unnamed_addr constant [5 x i8] c"@ct0\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.9 }
@clo.const.11 = internal constant { ptr, ptr } { ptr @"dep_graph::is_generic_sig", ptr null }
@"var.dep_graph::is_generic_sig" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"dep_graph::build_dep_graph", ptr null }
@"var.dep_graph::build_dep_graph" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"dep_graph::init_tarjan_state", ptr null }
@"var.dep_graph::init_tarjan_state" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"dep_graph::push_stack", ptr null }
@"var.dep_graph::push_stack" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"dep_graph::pop_stack", ptr null }
@"var.dep_graph::pop_stack" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"dep_graph::tarjan_dfs", ptr null }
@"var.dep_graph::tarjan_dfs" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"dep_graph::tarjan_scc", ptr null }
@"var.dep_graph::tarjan_scc" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_dep_graph, ptr null }]

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

define internal void @__dva_global_init_dep_graph() #1 {
entry:
  store ptr @clo.const, ptr @"var.dep_graph::is_fwd_assign", align 8
  store ptr @clo.const.1, ptr @"var.dep_graph::copy_names", align 8
  store ptr @clo.const.2, ptr @"var.dep_graph::has_name_at", align 8
  store ptr @clo.const.3, ptr @"var.dep_graph::has_name", align 8
  store ptr @clo.const.4, ptr @"var.dep_graph::name_is_qualified", align 8
  store ptr @clo.const.5, ptr @"var.dep_graph::decl_module_find", align 8
  store ptr @clo.const.6, ptr @"var.dep_graph::decl_module", align 8
  store ptr @clo.const.7, ptr @"var.dep_graph::resolve_dep_ref", align 8
  store ptr @clo.const.8, ptr @"var.dep_graph::collect_expr_refs", align 8
  store ptr @clo.const.9, ptr @"var.dep_graph::find_node_idx", align 8
  store ptr @clo.const.10, ptr @"var.dep_graph::node_has_dep", align 8
  store ptr @clo.const.11, ptr @"var.dep_graph::is_generic_sig", align 8
  store ptr @clo.const.12, ptr @"var.dep_graph::build_dep_graph", align 8
  store ptr @clo.const.13, ptr @"var.dep_graph::init_tarjan_state", align 8
  store ptr @clo.const.14, ptr @"var.dep_graph::push_stack", align 8
  store ptr @clo.const.15, ptr @"var.dep_graph::pop_stack", align 8
  store ptr @clo.const.16, ptr @"var.dep_graph::tarjan_dfs", align 8
  store ptr @clo.const.17, ptr @"var.dep_graph::tarjan_scc", align 8
  ret void
}

define i1 @"dep_graph::is_fwd_assign"(ptr %0) #1 {
entry:
  %var.v = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 5
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 3
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %str.eq.merge
  %choice.res = phi i1 [ %str.eq.result, %str.eq.merge ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.v, align 8
  %var.load1 = load ptr, ptr %var.v, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %eq.lhs.len2 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len3 = and i64 %eq.lhs.len2, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.next:                                      ; preds = %entry
  br label %choice.exit

str_gen_check:                                    ; preds = %choice.case
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.case
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
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
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data12, ptr %eq.rhs.data, i64 %eq.lhs.len3)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok8
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %choice.exit
}

declare i64 @write(i32, ptr, i64)

declare void @exit(i32)

declare i32 @memcmp(ptr, ptr, i64)

define ptr @"dep_graph::copy_names"(ptr %0) #1 {
entry:
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
  %a.copy.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.copy.len3 = load i64, ptr %a.copy.len, align 8
  %a.copy.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.copy.cap4 = load i64, ptr %a.copy.cap, align 8
  %a.copy.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.copy.data5 = load ptr, ptr %a.copy.data, align 8
  %arena.cur6 = call ptr @dva_arena_current()
  %a.copy = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 24)
  %a.copy.buflen = add i64 %a.copy.cap4, 1
  %a.copy.bufsize = mul i64 %a.copy.buflen, 8
  %arena.cur7 = call ptr @dva_arena_current()
  %a.copy.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %a.copy.bufsize)
  %a.copy.copylen = mul i64 %a.copy.len3, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.copy.buf, ptr align 1 %a.copy.data5, i64 %a.copy.copylen, i1 false)
  %a.copy.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy, i32 0, i32 0
  store i64 %a.copy.len3, ptr %a.copy.len.gep, align 8
  %a.copy.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy, i32 0, i32 1
  store ptr %a.copy.buf, ptr %a.copy.data.gep, align 8
  %a.copy.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.copy, i32 0, i32 2
  store i64 %a.copy.cap4, ptr %a.copy.cap.gep, align 8
  ret ptr %a.copy
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define i1 @"dep_graph::has_name_at"(ptr %0, ptr %1, i64 %2, i64 %3) #1 {
entry:
  %var._27 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.n = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.names = alloca ptr, align 8
  store ptr %0, ptr %var.names, align 8
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
  %var.load2 = load ptr, ptr %var.names, align 8
  %a.load = load ptr, ptr %var.names, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %choice.exit45, %choice.then
  %choice.res63 = phi i1 [ false, %choice.then ], [ %choice.res62, %choice.exit45 ]
  ret i1 %choice.res63

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
  store ptr %a.create3, ptr %var.names, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.else
  %a.load2 = load ptr, ptr %var.names, align 8
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
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 42, ptr %err.line.gep, align 8
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
  %arena.cur9 = call ptr @dva_arena_current()
  %err.alloc10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 56)
  %err.code.gep11 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 0
  store i64 4011, ptr %err.code.gep11, align 8
  %err.msg.gep12 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep12, align 8
  %err.file.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep13, align 8
  %err.line.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 3
  store i64 42, ptr %err.line.gep14, align 8
  %err.col.gep15 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 4
  store i64 20, ptr %err.col.gep15, align 8
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
  %choice.res = phi ptr [ %pay.ptr, %choice.then21 ], [ @str.4.struct, %choice.else22 ]
  %var.load28 = load ptr, ptr %var.s, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 0
  %eq.lhs.len29 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len30 = and i64 %eq.lhs.len29, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len29, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit23
  %arena.cur31 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur31, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit23
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %eq.rhs.len32 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len33 = and i64 %eq.rhs.len32, 281474976710655
  %str.tag34 = lshr i64 %eq.rhs.len32, 48
  %str.immortal35 = icmp eq i64 %str.tag34, 0
  br i1 %str.immortal35, label %str_ok37, label %str_gen_check36

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check36:                                  ; preds = %str_ok
  %arena.cur39 = call ptr @dva_arena_current()
  %tag.valid40 = call i1 @dva_arena_validate_tag(ptr %arena.cur39, i64 %str.tag34)
  br i1 %tag.valid40, label %str_ok37, label %str_stale38

str_ok37:                                         ; preds = %str_stale38, %str_gen_check36, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len30, %eq.rhs.len33
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale38:                                      ; preds = %str_gen_check36
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok37

str.eq.then:                                      ; preds = %str_ok37
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %eq.lhs.data41 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %eq.rhs.data42 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data41, ptr %eq.rhs.data42, i64 %eq.lhs.len30)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok37
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then43, label %choice.else44

choice.then43:                                    ; preds = %str.eq.merge
  br label %choice.exit45

choice.else44:                                    ; preds = %str.eq.merge
  %var.load46 = load ptr, ptr %var.names, align 8
  %a.load47 = load ptr, ptr %var.names, align 8
  %a.null48 = icmp eq ptr %a.load47, null
  br i1 %a.null48, label %a.create49, label %a.after50

choice.exit45:                                    ; preds = %a.after50, %choice.then43
  %choice.res62 = phi i1 [ true, %choice.then43 ], [ %call.res, %a.after50 ]
  br label %choice.exit

a.create49:                                       ; preds = %choice.else44
  %arena.cur51 = call ptr @dva_arena_current()
  %a.create52 = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 24)
  %arena.cur53 = call ptr @dva_arena_current()
  %a.buf54 = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 128)
  %a.len.gep55 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create52, i32 0, i32 0
  store i64 0, ptr %a.len.gep55, align 8
  %a.data.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create52, i32 0, i32 1
  store ptr %a.buf54, ptr %a.data.gep56, align 8
  %a.cap.gep57 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create52, i32 0, i32 2
  store i64 16, ptr %a.cap.gep57, align 8
  store ptr %a.create52, ptr %var.names, align 8
  br label %a.after50

a.after50:                                        ; preds = %a.create49, %choice.else44
  %a.load258 = load ptr, ptr %var.names, align 8
  %var.load59 = load ptr, ptr %var.s, align 8
  %var.load60 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load60, 1
  %var.load61 = load i64, ptr %var.n, align 8
  %call.res = call i1 @"dep_graph::has_name_at"(ptr %a.load258, ptr %var.load59, i64 %addtmp, i64 %var.load61)
  br label %choice.exit45
}

define i1 @"dep_graph::has_name"(ptr %0, ptr %1) #1 {
entry:
  %var.s = alloca ptr, align 8
  %var.names = alloca ptr, align 8
  store ptr %0, ptr %var.names, align 8
  store ptr %1, ptr %var.s, align 8
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
  %var.load3 = load ptr, ptr %var.s, align 8
  %var.load4 = load ptr, ptr %var.names, align 8
  %a.load5 = load ptr, ptr %var.names, align 8
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
  store ptr %a.create10, ptr %var.names, align 8
  br label %a.after8

a.after8:                                         ; preds = %a.create7, %a.after
  %a.load216 = load ptr, ptr %var.names, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load216, i32 0, i32 0
  %a.len.query17 = load i64, ptr %a.len.query, align 8
  %call.res = call i1 @"dep_graph::has_name_at"(ptr %a.load2, ptr %var.load3, i64 0, i64 %a.len.query17)
  ret i1 %call.res
}

define i1 @"dep_graph::name_is_qualified"(ptr %0, i64 %1) #1 {
entry:
  %var.i = alloca i64, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store i64 %1, ptr %var.i, align 8
  %var.load = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load, 1
  %var.load1 = load ptr, ptr %var.name, align 8
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
  br i1 %cmptmp, label %and.28.then, label %and.28.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.28.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

and.28.else:                                      ; preds = %str_ok
  br label %and.28.exit

and.28.exit:                                      ; preds = %and.28.else, %idx_ok
  %and.28.phi = phi i1 [ %cmptmp16, %idx_ok ], [ %cmptmp, %and.28.else ]
  br i1 %and.28.phi, label %choice.then, label %choice.else

str_gen_check9:                                   ; preds = %and.28.then
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %and.28.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  %var.load15 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load15, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale11:                                      ; preds = %str_gen_check9
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

idx_big_check:                                    ; preds = %str_ok10
  %idx.big = icmp sge i64 %var.load15, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data14, i64 %var.load15
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp16 = icmp ne i64 %s.byte.val, 36
  br label %and.28.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %and.28.exit
  %var.load17 = load ptr, ptr %var.name, align 8
  %s.read.len18 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len18, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %str.tag21 = lshr i64 %s.read.len19, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

choice.else:                                      ; preds = %and.28.exit
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit66
  %choice.res70 = phi i1 [ %choice.res, %choice.exit66 ], [ false, %choice.else ]
  ret i1 %choice.res70

str_gen_check23:                                  ; preds = %choice.then
  %arena.cur26 = call ptr @dva_arena_current()
  %tag.valid27 = call i1 @dva_arena_validate_tag(ptr %arena.cur26, i64 %str.tag21)
  br i1 %tag.valid27, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %choice.then
  %s.read.data28 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data28, align 8
  %var.load30 = load i64, ptr %var.i, align 8
  %idx.neg31 = icmp slt i64 %var.load30, 0
  br i1 %idx.neg31, label %idx_oob34, label %idx_big_check32

str_stale25:                                      ; preds = %str_gen_check23
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok24

idx_big_check32:                                  ; preds = %str_ok24
  %idx.big35 = icmp sge i64 %var.load30, %s.read.len20
  br i1 %idx.big35, label %idx_oob34, label %idx_ok33

idx_ok33:                                         ; preds = %idx_oob34, %idx_big_check32
  %s.byte.gep36 = getelementptr i8, ptr %s.read.data29, i64 %var.load30
  %s.byte37 = load i8, ptr %s.byte.gep36, align 1
  %s.byte.val38 = zext i8 %s.byte37 to i64
  %cmptmp39 = icmp eq i64 %s.byte.val38, 58
  br i1 %cmptmp39, label %and.29.then, label %and.29.else

idx_oob34:                                        ; preds = %idx_big_check32, %str_ok24
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok33

and.29.then:                                      ; preds = %idx_ok33
  %var.load40 = load ptr, ptr %var.name, align 8
  %s.read.len41 = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 0
  %s.read.len42 = load i64, ptr %s.read.len41, align 8
  %s.read.len43 = and i64 %s.read.len42, 281474976710655
  %str.tag44 = lshr i64 %s.read.len42, 48
  %str.immortal45 = icmp eq i64 %str.tag44, 0
  br i1 %str.immortal45, label %str_ok47, label %str_gen_check46

and.29.else:                                      ; preds = %idx_ok33
  br label %and.29.exit

and.29.exit:                                      ; preds = %and.29.else, %idx_ok57
  %and.29.phi = phi i1 [ %cmptmp63, %idx_ok57 ], [ %cmptmp39, %and.29.else ]
  br i1 %and.29.phi, label %choice.then64, label %choice.else65

str_gen_check46:                                  ; preds = %and.29.then
  %arena.cur49 = call ptr @dva_arena_current()
  %tag.valid50 = call i1 @dva_arena_validate_tag(ptr %arena.cur49, i64 %str.tag44)
  br i1 %tag.valid50, label %str_ok47, label %str_stale48

str_ok47:                                         ; preds = %str_stale48, %str_gen_check46, %and.29.then
  %s.read.data51 = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 1
  %s.read.data52 = load ptr, ptr %s.read.data51, align 8
  %var.load53 = load i64, ptr %var.i, align 8
  %addtmp54 = add i64 %var.load53, 1
  %idx.neg55 = icmp slt i64 %addtmp54, 0
  br i1 %idx.neg55, label %idx_oob58, label %idx_big_check56

str_stale48:                                      ; preds = %str_gen_check46
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok47

idx_big_check56:                                  ; preds = %str_ok47
  %idx.big59 = icmp sge i64 %addtmp54, %s.read.len43
  br i1 %idx.big59, label %idx_oob58, label %idx_ok57

idx_ok57:                                         ; preds = %idx_oob58, %idx_big_check56
  %s.byte.gep60 = getelementptr i8, ptr %s.read.data52, i64 %addtmp54
  %s.byte61 = load i8, ptr %s.byte.gep60, align 1
  %s.byte.val62 = zext i8 %s.byte61 to i64
  %cmptmp63 = icmp eq i64 %s.byte.val62, 58
  br label %and.29.exit

idx_oob58:                                        ; preds = %idx_big_check56, %str_ok47
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok57

choice.then64:                                    ; preds = %and.29.exit
  br label %choice.exit66

choice.else65:                                    ; preds = %and.29.exit
  %var.load67 = load ptr, ptr %var.name, align 8
  %var.load68 = load i64, ptr %var.i, align 8
  %addtmp69 = add i64 %var.load68, 1
  %call.res = call i1 @"dep_graph::name_is_qualified"(ptr %var.load67, i64 %addtmp69)
  br label %choice.exit66

choice.exit66:                                    ; preds = %choice.else65, %choice.then64
  %choice.res = phi i1 [ true, %choice.then64 ], [ %call.res, %choice.else65 ]
  br label %choice.exit
}

define i64 @"dep_graph::decl_module_find"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.last = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store i64 %1, ptr %var.i, align 8
  store i64 %2, ptr %var.last, align 8
  %var.load = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load, 1
  %var.load1 = load ptr, ptr %var.name, align 8
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
  br i1 %cmptmp, label %and.30.then, label %and.30.else

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.30.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

and.30.else:                                      ; preds = %str_ok
  br label %and.30.exit

and.30.exit:                                      ; preds = %and.30.else, %idx_ok
  %and.30.phi = phi i1 [ %cmptmp16, %idx_ok ], [ %cmptmp, %and.30.else ]
  br i1 %and.30.phi, label %choice.then, label %choice.else

str_gen_check9:                                   ; preds = %and.30.then
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %and.30.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  %var.load15 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load15, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale11:                                      ; preds = %str_gen_check9
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

idx_big_check:                                    ; preds = %str_ok10
  %idx.big = icmp sge i64 %var.load15, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data14, i64 %var.load15
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp16 = icmp ne i64 %s.byte.val, 36
  br label %and.30.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %and.30.exit
  %var.load17 = load ptr, ptr %var.name, align 8
  %s.read.len18 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len18, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %str.tag21 = lshr i64 %s.read.len19, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

choice.else:                                      ; preds = %and.30.exit
  %var.load76 = load i64, ptr %var.last, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit66
  %choice.res77 = phi i64 [ %choice.res, %choice.exit66 ], [ %var.load76, %choice.else ]
  ret i64 %choice.res77

str_gen_check23:                                  ; preds = %choice.then
  %arena.cur26 = call ptr @dva_arena_current()
  %tag.valid27 = call i1 @dva_arena_validate_tag(ptr %arena.cur26, i64 %str.tag21)
  br i1 %tag.valid27, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %choice.then
  %s.read.data28 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data28, align 8
  %var.load30 = load i64, ptr %var.i, align 8
  %idx.neg31 = icmp slt i64 %var.load30, 0
  br i1 %idx.neg31, label %idx_oob34, label %idx_big_check32

str_stale25:                                      ; preds = %str_gen_check23
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok24

idx_big_check32:                                  ; preds = %str_ok24
  %idx.big35 = icmp sge i64 %var.load30, %s.read.len20
  br i1 %idx.big35, label %idx_oob34, label %idx_ok33

idx_ok33:                                         ; preds = %idx_oob34, %idx_big_check32
  %s.byte.gep36 = getelementptr i8, ptr %s.read.data29, i64 %var.load30
  %s.byte37 = load i8, ptr %s.byte.gep36, align 1
  %s.byte.val38 = zext i8 %s.byte37 to i64
  %cmptmp39 = icmp eq i64 %s.byte.val38, 58
  br i1 %cmptmp39, label %and.31.then, label %and.31.else

idx_oob34:                                        ; preds = %idx_big_check32, %str_ok24
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok33

and.31.then:                                      ; preds = %idx_ok33
  %var.load40 = load ptr, ptr %var.name, align 8
  %s.read.len41 = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 0
  %s.read.len42 = load i64, ptr %s.read.len41, align 8
  %s.read.len43 = and i64 %s.read.len42, 281474976710655
  %str.tag44 = lshr i64 %s.read.len42, 48
  %str.immortal45 = icmp eq i64 %str.tag44, 0
  br i1 %str.immortal45, label %str_ok47, label %str_gen_check46

and.31.else:                                      ; preds = %idx_ok33
  br label %and.31.exit

and.31.exit:                                      ; preds = %and.31.else, %idx_ok57
  %and.31.phi = phi i1 [ %cmptmp63, %idx_ok57 ], [ %cmptmp39, %and.31.else ]
  br i1 %and.31.phi, label %choice.then64, label %choice.else65

str_gen_check46:                                  ; preds = %and.31.then
  %arena.cur49 = call ptr @dva_arena_current()
  %tag.valid50 = call i1 @dva_arena_validate_tag(ptr %arena.cur49, i64 %str.tag44)
  br i1 %tag.valid50, label %str_ok47, label %str_stale48

str_ok47:                                         ; preds = %str_stale48, %str_gen_check46, %and.31.then
  %s.read.data51 = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 1
  %s.read.data52 = load ptr, ptr %s.read.data51, align 8
  %var.load53 = load i64, ptr %var.i, align 8
  %addtmp54 = add i64 %var.load53, 1
  %idx.neg55 = icmp slt i64 %addtmp54, 0
  br i1 %idx.neg55, label %idx_oob58, label %idx_big_check56

str_stale48:                                      ; preds = %str_gen_check46
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok47

idx_big_check56:                                  ; preds = %str_ok47
  %idx.big59 = icmp sge i64 %addtmp54, %s.read.len43
  br i1 %idx.big59, label %idx_oob58, label %idx_ok57

idx_ok57:                                         ; preds = %idx_oob58, %idx_big_check56
  %s.byte.gep60 = getelementptr i8, ptr %s.read.data52, i64 %addtmp54
  %s.byte61 = load i8, ptr %s.byte.gep60, align 1
  %s.byte.val62 = zext i8 %s.byte61 to i64
  %cmptmp63 = icmp eq i64 %s.byte.val62, 58
  br label %and.31.exit

idx_oob58:                                        ; preds = %idx_big_check56, %str_ok47
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok57

choice.then64:                                    ; preds = %and.31.exit
  %var.load67 = load ptr, ptr %var.name, align 8
  %var.load68 = load i64, ptr %var.i, align 8
  %addtmp69 = add i64 %var.load68, 2
  %var.load70 = load i64, ptr %var.i, align 8
  %call.res = call i64 @"dep_graph::decl_module_find"(ptr %var.load67, i64 %addtmp69, i64 %var.load70)
  br label %choice.exit66

choice.else65:                                    ; preds = %and.31.exit
  %var.load71 = load ptr, ptr %var.name, align 8
  %var.load72 = load i64, ptr %var.i, align 8
  %addtmp73 = add i64 %var.load72, 1
  %var.load74 = load i64, ptr %var.last, align 8
  %call.res75 = call i64 @"dep_graph::decl_module_find"(ptr %var.load71, i64 %addtmp73, i64 %var.load74)
  br label %choice.exit66

choice.exit66:                                    ; preds = %choice.else65, %choice.then64
  %choice.res = phi i64 [ %call.res, %choice.then64 ], [ %call.res75, %choice.else65 ]
  br label %choice.exit
}

define ptr @"dep_graph::decl_module"(ptr %0, i64 %1) #1 {
entry:
  %var.last = alloca i64, align 8
  %var.ignored = alloca i64, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store i64 %1, ptr %var.ignored, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %call.res = call i64 @"dep_graph::decl_module_find"(ptr %var.load, i64 0, i64 -1)
  store i64 %call.res, ptr %var.last, align 8
  %var.load1 = load i64, ptr %var.last, align 8
  %cmptmp = icmp slt i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %s.read.len3 = load i64, ptr %s.read.len, align 8
  %s.read.len4 = and i64 %s.read.len3, 281474976710655
  %str.tag = lshr i64 %s.read.len3, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %str_ok, %choice.then
  %choice.res = phi ptr [ @str.4.struct, %choice.then ], [ %str.view, %str_ok ]
  ret ptr %choice.res

str_gen_check:                                    ; preds = %choice.else
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %s.read.data5 = load ptr, ptr %s.read.data, align 8
  %var.load6 = load i64, ptr %var.last, align 8
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
  br label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok
}

define ptr @"dep_graph::resolve_dep_ref"(ptr %0, ptr %1, ptr %2) #1 {
entry:
  %var.ref = alloca ptr, align 8
  %var.mod = alloca ptr, align 8
  %var.defs = alloca ptr, align 8
  store ptr %0, ptr %var.defs, align 8
  store ptr %1, ptr %var.mod, align 8
  store ptr %2, ptr %var.ref, align 8
  %var.load = load ptr, ptr %var.defs, align 8
  %var.load1 = load ptr, ptr %var.ref, align 8
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load, i32 0, i32 1
  %m.cap2 = load i64, ptr %m.cap, align 8
  %m.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load, i32 0, i32 2
  %m.keys3 = load ptr, ptr %m.keys, align 8
  %m.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load, i32 0, i32 4
  %m.states4 = load ptr, ptr %m.states, align 8
  %mk.data = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %mk.data5 = load ptr, ptr %mk.data, align 8
  %mk.len = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %mk.len6 = load i64, ptr %mk.len, align 8
  %mk.len7 = and i64 %mk.len6, 281474976710655
  %str.tag = lshr i64 %mk.len6, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %hash.str = call i64 @dva_hash_string(ptr %mk.data5, i64 %mk.len7)
  %m.capm1 = sub i64 %m.cap2, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.mem.loop

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

m.mem.loop:                                       ; preds = %m.mem.next, %str_ok
  %m.mem.idx = phi i64 [ %m.idx0, %str_ok ], [ %m.mem.idx.next, %m.mem.next ]
  %m.mem.probe8 = phi i64 [ 0, %str_ok ], [ %m.mem.probe.next, %m.mem.next ]
  %m.mem.reached = icmp eq i64 %m.mem.probe8, %m.cap2
  %m.mem.state.gep = getelementptr i8, ptr %m.states4, i64 %m.mem.idx
  %m.mem.state = load i8, ptr %m.mem.state.gep, align 1
  %m.mem.is.empty = icmp eq i8 %m.mem.state, 0
  %m.mem.stop = or i1 %m.mem.is.empty, %m.mem.reached
  br i1 %m.mem.stop, label %m.mem.miss, label %m.mem.probe

m.mem.probe:                                      ; preds = %m.mem.loop
  %m.mem.is.tomb = icmp eq i8 %m.mem.state, 2
  br i1 %m.mem.is.tomb, label %m.mem.next, label %m.mem.found

m.mem.found:                                      ; preds = %m.mem.probe
  %m.mem.key.slot = getelementptr ptr, ptr %m.keys3, i64 %m.mem.idx
  %mk.stored = load ptr, ptr %m.mem.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen9 = load i64, ptr %mk.slen, align 8
  %mk.slen10 = and i64 %mk.slen9, 281474976710655
  %str.tag11 = lshr i64 %mk.slen9, 48
  %str.immortal12 = icmp eq i64 %str.tag11, 0
  br i1 %str.immortal12, label %str_ok14, label %str_gen_check13

m.mem.next:                                       ; preds = %mk.eq.merge, %m.mem.probe
  %m.mem.idx.add = add i64 %m.mem.idx, 1
  %m.mem.idx.next = and i64 %m.mem.idx.add, %m.capm1
  %m.mem.probe.next = add i64 %m.mem.probe8, 1
  br label %m.mem.loop

m.mem.miss:                                       ; preds = %m.mem.loop
  br label %m.mem.done

m.mem.done:                                       ; preds = %m.mem.miss, %m.mem.hit
  %m.mem.res = phi i1 [ true, %m.mem.hit ], [ false, %m.mem.miss ]
  br i1 %m.mem.res, label %choice.then, label %choice.else

str_gen_check13:                                  ; preds = %m.mem.found
  %arena.cur16 = call ptr @dva_arena_current()
  %tag.valid17 = call i1 @dva_arena_validate_tag(ptr %arena.cur16, i64 %str.tag11)
  br i1 %tag.valid17, label %str_ok14, label %str_stale15

str_ok14:                                         ; preds = %str_stale15, %str_gen_check13, %m.mem.found
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %mk.nlen18 = load i64, ptr %mk.nlen, align 8
  %mk.nlen19 = and i64 %mk.nlen18, 281474976710655
  %str.tag20 = lshr i64 %mk.nlen18, 48
  %str.immortal21 = icmp eq i64 %str.tag20, 0
  br i1 %str.immortal21, label %str_ok23, label %str_gen_check22

str_stale15:                                      ; preds = %str_gen_check13
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok14

str_gen_check22:                                  ; preds = %str_ok14
  %arena.cur25 = call ptr @dva_arena_current()
  %tag.valid26 = call i1 @dva_arena_validate_tag(ptr %arena.cur25, i64 %str.tag20)
  br i1 %tag.valid26, label %str_ok23, label %str_stale24

str_ok23:                                         ; preds = %str_stale24, %str_gen_check22, %str_ok14
  %mk.lenseq = icmp eq i64 %mk.slen10, %mk.nlen19
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

str_stale24:                                      ; preds = %str_gen_check22
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok23

mk.eq.then:                                       ; preds = %str_ok23
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata27 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %mk.ndata28 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata27, ptr %mk.ndata28, i64 %mk.nlen19)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %str_ok23
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.mem.hit, label %m.mem.next

m.mem.hit:                                        ; preds = %mk.eq.merge
  br label %m.mem.done

choice.then:                                      ; preds = %m.mem.done
  %var.load29 = load ptr, ptr %var.ref, align 8
  br label %choice.exit

choice.else:                                      ; preds = %m.mem.done
  %var.load30 = load ptr, ptr %var.mod, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 0
  %eq.lhs.len31 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len32 = and i64 %eq.lhs.len31, 281474976710655
  %str.tag33 = lshr i64 %eq.lhs.len31, 48
  %str.immortal34 = icmp eq i64 %str.tag33, 0
  br i1 %str.immortal34, label %str_ok36, label %str_gen_check35

choice.exit:                                      ; preds = %choice.exit52, %choice.then
  %choice.res532 = phi ptr [ %var.load29, %choice.then ], [ %choice.res531, %choice.exit52 ]
  ret ptr %choice.res532

str_gen_check35:                                  ; preds = %choice.else
  %arena.cur38 = call ptr @dva_arena_current()
  %tag.valid39 = call i1 @dva_arena_validate_tag(ptr %arena.cur38, i64 %str.tag33)
  br i1 %tag.valid39, label %str_ok36, label %str_stale37

str_ok36:                                         ; preds = %str_stale37, %str_gen_check35, %choice.else
  %eq.rhs.len = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len40 = and i64 %eq.rhs.len, 281474976710655
  %str.tag41 = lshr i64 %eq.rhs.len, 48
  %str.immortal42 = icmp eq i64 %str.tag41, 0
  br i1 %str.immortal42, label %str_ok44, label %str_gen_check43

str_stale37:                                      ; preds = %str_gen_check35
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok36

str_gen_check43:                                  ; preds = %str_ok36
  %arena.cur46 = call ptr @dva_arena_current()
  %tag.valid47 = call i1 @dva_arena_validate_tag(ptr %arena.cur46, i64 %str.tag41)
  br i1 %tag.valid47, label %str_ok44, label %str_stale45

str_ok44:                                         ; preds = %str_stale45, %str_gen_check43, %str_ok36
  %eq.len = icmp eq i64 %eq.lhs.len32, %eq.rhs.len40
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale45:                                      ; preds = %str_gen_check43
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok44

str.eq.then:                                      ; preds = %str_ok44
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 1
  %eq.lhs.data48 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data48, ptr %eq.rhs.data, i64 %eq.lhs.len32)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok44
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.32.then, label %and.32.else

and.32.then:                                      ; preds = %str.eq.merge
  %var.load49 = load ptr, ptr %var.ref, align 8
  %call.res = call i1 @"dep_graph::name_is_qualified"(ptr %var.load49, i64 0)
  %nottmp = xor i1 %call.res, true
  br label %and.32.exit

and.32.else:                                      ; preds = %str.eq.merge
  br label %and.32.exit

and.32.exit:                                      ; preds = %and.32.else, %and.32.then
  %and.32.phi = phi i1 [ %nottmp, %and.32.then ], [ %str.neq, %and.32.else ]
  br i1 %and.32.phi, label %choice.then50, label %choice.else51

choice.then50:                                    ; preds = %and.32.exit
  %var.load53 = load ptr, ptr %var.defs, align 8
  %var.load54 = load ptr, ptr %var.mod, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 0
  %concat.lhs55 = load i64, ptr %concat.lhs, align 8
  %concat.lhs56 = and i64 %concat.lhs55, 281474976710655
  %str.tag57 = lshr i64 %concat.lhs55, 48
  %str.immortal58 = icmp eq i64 %str.tag57, 0
  br i1 %str.immortal58, label %str_ok60, label %str_gen_check59

choice.else51:                                    ; preds = %and.32.exit
  br label %choice.exit52

choice.exit52:                                    ; preds = %choice.else51, %choice.exit200
  %choice.res531 = phi ptr [ %choice.res530, %choice.exit200 ], [ @str.4.struct, %choice.else51 ]
  br label %choice.exit

str_gen_check59:                                  ; preds = %choice.then50
  %arena.cur62 = call ptr @dva_arena_current()
  %tag.valid63 = call i1 @dva_arena_validate_tag(ptr %arena.cur62, i64 %str.tag57)
  br i1 %tag.valid63, label %str_ok60, label %str_stale61

str_ok60:                                         ; preds = %str_stale61, %str_gen_check59, %choice.then50
  %concat.lhs64 = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 1
  %concat.lhs65 = load ptr, ptr %concat.lhs64, align 8
  %concat.rhs = load i64, ptr @str.5.struct, align 8
  %concat.rhs66 = and i64 %concat.rhs, 281474976710655
  %str.tag67 = lshr i64 %concat.rhs, 48
  %str.immortal68 = icmp eq i64 %str.tag67, 0
  br i1 %str.immortal68, label %str_ok70, label %str_gen_check69

str_stale61:                                      ; preds = %str_gen_check59
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok60

str_gen_check69:                                  ; preds = %str_ok60
  %arena.cur72 = call ptr @dva_arena_current()
  %tag.valid73 = call i1 @dva_arena_validate_tag(ptr %arena.cur72, i64 %str.tag67)
  br i1 %tag.valid73, label %str_ok70, label %str_stale71

str_ok70:                                         ; preds = %str_stale71, %str_gen_check69, %str_ok60
  %concat.rhs74 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs56, i64 %concat.rhs66)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len75

str_stale71:                                      ; preds = %str_gen_check69
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok70

concat.sum.len75:                                 ; preds = %str_overflow_abort, %str_ok70
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum76 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf77 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf77, label %str_overflow_abort79, label %concat.tot.len78

str_overflow_abort:                               ; preds = %str_ok70
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len75

concat.tot.len78:                                 ; preds = %str_overflow_abort79, %concat.sum.len75
  %arena.cur80 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur80, i64 %sum76)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs65, i64 %concat.lhs56, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs56
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs74, i64 %concat.rhs66, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur81 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load82 = load ptr, ptr %var.ref, align 8
  %concat.lhs83 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs84 = load i64, ptr %concat.lhs83, align 8
  %concat.lhs85 = and i64 %concat.lhs84, 281474976710655
  %str.tag86 = lshr i64 %concat.lhs84, 48
  %str.immortal87 = icmp eq i64 %str.tag86, 0
  br i1 %str.immortal87, label %str_ok89, label %str_gen_check88

str_overflow_abort79:                             ; preds = %concat.sum.len75
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len78

str_gen_check88:                                  ; preds = %concat.tot.len78
  %arena.cur91 = call ptr @dva_arena_current()
  %tag.valid92 = call i1 @dva_arena_validate_tag(ptr %arena.cur91, i64 %str.tag86)
  br i1 %tag.valid92, label %str_ok89, label %str_stale90

str_ok89:                                         ; preds = %str_stale90, %str_gen_check88, %concat.tot.len78
  %concat.lhs93 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs94 = load ptr, ptr %concat.lhs93, align 8
  %concat.rhs95 = getelementptr inbounds { i64, ptr }, ptr %var.load82, i32 0, i32 0
  %concat.rhs96 = load i64, ptr %concat.rhs95, align 8
  %concat.rhs97 = and i64 %concat.rhs96, 281474976710655
  %str.tag98 = lshr i64 %concat.rhs96, 48
  %str.immortal99 = icmp eq i64 %str.tag98, 0
  br i1 %str.immortal99, label %str_ok101, label %str_gen_check100

str_stale90:                                      ; preds = %str_gen_check88
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok89

str_gen_check100:                                 ; preds = %str_ok89
  %arena.cur103 = call ptr @dva_arena_current()
  %tag.valid104 = call i1 @dva_arena_validate_tag(ptr %arena.cur103, i64 %str.tag98)
  br i1 %tag.valid104, label %str_ok101, label %str_stale102

str_ok101:                                        ; preds = %str_stale102, %str_gen_check100, %str_ok89
  %concat.rhs105 = getelementptr inbounds { i64, ptr }, ptr %var.load82, i32 0, i32 1
  %concat.rhs106 = load ptr, ptr %concat.rhs105, align 8
  %concat.sum.len107 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs85, i64 %concat.rhs97)
  %sum108 = extractvalue { i64, i1 } %concat.sum.len107, 0
  %ovf109 = extractvalue { i64, i1 } %concat.sum.len107, 1
  br i1 %ovf109, label %str_overflow_abort111, label %concat.sum.len110

str_stale102:                                     ; preds = %str_gen_check100
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok101

concat.sum.len110:                                ; preds = %str_overflow_abort111, %str_ok101
  %concat.tot.len112 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum108, i64 1)
  %sum113 = extractvalue { i64, i1 } %concat.tot.len112, 0
  %ovf114 = extractvalue { i64, i1 } %concat.tot.len112, 1
  br i1 %ovf114, label %str_overflow_abort116, label %concat.tot.len115

str_overflow_abort111:                            ; preds = %str_ok101
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len110

concat.tot.len115:                                ; preds = %str_overflow_abort116, %concat.sum.len110
  %arena.cur117 = call ptr @dva_arena_current()
  %concat.buf118 = call ptr @dva_arena_alloc(ptr %arena.cur117, i64 %sum113)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf118, ptr align 1 %concat.lhs94, i64 %concat.lhs85, i1 false)
  %concat.mid119 = getelementptr i8, ptr %concat.buf118, i64 %concat.lhs85
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid119, ptr align 1 %concat.rhs106, i64 %concat.rhs97, i1 false)
  %concat.nul120 = getelementptr i8, ptr %concat.buf118, i64 %sum108
  store i8 0, ptr %concat.nul120, align 1
  %arena.cur121 = call ptr @dva_arena_current()
  %concat.str122 = call ptr @dva_arena_alloc(ptr %arena.cur121, i64 16)
  %str.build.len.gep123 = getelementptr inbounds { i64, ptr }, ptr %concat.str122, i32 0, i32 0
  store i64 %sum108, ptr %str.build.len.gep123, align 8
  %str.build.data.gep124 = getelementptr inbounds { i64, ptr }, ptr %concat.str122, i32 0, i32 1
  store ptr %concat.buf118, ptr %str.build.data.gep124, align 8
  %m.cap125 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load53, i32 0, i32 1
  %m.cap126 = load i64, ptr %m.cap125, align 8
  %m.keys127 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load53, i32 0, i32 2
  %m.keys128 = load ptr, ptr %m.keys127, align 8
  %m.states129 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load53, i32 0, i32 4
  %m.states130 = load ptr, ptr %m.states129, align 8
  %mk.data131 = getelementptr inbounds { i64, ptr }, ptr %concat.str122, i32 0, i32 1
  %mk.data132 = load ptr, ptr %mk.data131, align 8
  %mk.len133 = getelementptr inbounds { i64, ptr }, ptr %concat.str122, i32 0, i32 0
  %mk.len134 = load i64, ptr %mk.len133, align 8
  %mk.len135 = and i64 %mk.len134, 281474976710655
  %str.tag136 = lshr i64 %mk.len134, 48
  %str.immortal137 = icmp eq i64 %str.tag136, 0
  br i1 %str.immortal137, label %str_ok139, label %str_gen_check138

str_overflow_abort116:                            ; preds = %concat.sum.len110
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len115

str_gen_check138:                                 ; preds = %concat.tot.len115
  %arena.cur141 = call ptr @dva_arena_current()
  %tag.valid142 = call i1 @dva_arena_validate_tag(ptr %arena.cur141, i64 %str.tag136)
  br i1 %tag.valid142, label %str_ok139, label %str_stale140

str_ok139:                                        ; preds = %str_stale140, %str_gen_check138, %concat.tot.len115
  %hash.str143 = call i64 @dva_hash_string(ptr %mk.data132, i64 %mk.len135)
  %m.capm1144 = sub i64 %m.cap126, 1
  %m.idx0145 = and i64 %hash.str143, %m.capm1144
  br label %m.mem.loop146

str_stale140:                                     ; preds = %str_gen_check138
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok139

m.mem.loop146:                                    ; preds = %m.mem.next149, %str_ok139
  %m.mem.idx152 = phi i64 [ %m.idx0145, %str_ok139 ], [ %m.mem.idx.next195, %m.mem.next149 ]
  %m.mem.probe153 = phi i64 [ 0, %str_ok139 ], [ %m.mem.probe.next196, %m.mem.next149 ]
  %m.mem.reached154 = icmp eq i64 %m.mem.probe153, %m.cap126
  %m.mem.state.gep155 = getelementptr i8, ptr %m.states130, i64 %m.mem.idx152
  %m.mem.state156 = load i8, ptr %m.mem.state.gep155, align 1
  %m.mem.is.empty157 = icmp eq i8 %m.mem.state156, 0
  %m.mem.stop158 = or i1 %m.mem.is.empty157, %m.mem.reached154
  br i1 %m.mem.stop158, label %m.mem.miss150, label %m.mem.probe147

m.mem.probe147:                                   ; preds = %m.mem.loop146
  %m.mem.is.tomb159 = icmp eq i8 %m.mem.state156, 2
  br i1 %m.mem.is.tomb159, label %m.mem.next149, label %m.mem.found148

m.mem.found148:                                   ; preds = %m.mem.probe147
  %m.mem.key.slot160 = getelementptr ptr, ptr %m.keys128, i64 %m.mem.idx152
  %mk.stored161 = load ptr, ptr %m.mem.key.slot160, align 8
  %mk.slen162 = getelementptr inbounds { i64, ptr }, ptr %mk.stored161, i32 0, i32 0
  %mk.slen163 = load i64, ptr %mk.slen162, align 8
  %mk.slen164 = and i64 %mk.slen163, 281474976710655
  %str.tag165 = lshr i64 %mk.slen163, 48
  %str.immortal166 = icmp eq i64 %str.tag165, 0
  br i1 %str.immortal166, label %str_ok168, label %str_gen_check167

m.mem.next149:                                    ; preds = %mk.eq.merge185, %m.mem.probe147
  %m.mem.idx.add194 = add i64 %m.mem.idx152, 1
  %m.mem.idx.next195 = and i64 %m.mem.idx.add194, %m.capm1144
  %m.mem.probe.next196 = add i64 %m.mem.probe153, 1
  br label %m.mem.loop146

m.mem.miss150:                                    ; preds = %m.mem.loop146
  br label %m.mem.done151

m.mem.done151:                                    ; preds = %m.mem.miss150, %m.mem.hit193
  %m.mem.res197 = phi i1 [ true, %m.mem.hit193 ], [ false, %m.mem.miss150 ]
  br i1 %m.mem.res197, label %choice.then198, label %choice.else199

str_gen_check167:                                 ; preds = %m.mem.found148
  %arena.cur170 = call ptr @dva_arena_current()
  %tag.valid171 = call i1 @dva_arena_validate_tag(ptr %arena.cur170, i64 %str.tag165)
  br i1 %tag.valid171, label %str_ok168, label %str_stale169

str_ok168:                                        ; preds = %str_stale169, %str_gen_check167, %m.mem.found148
  %mk.nlen172 = getelementptr inbounds { i64, ptr }, ptr %concat.str122, i32 0, i32 0
  %mk.nlen173 = load i64, ptr %mk.nlen172, align 8
  %mk.nlen174 = and i64 %mk.nlen173, 281474976710655
  %str.tag175 = lshr i64 %mk.nlen173, 48
  %str.immortal176 = icmp eq i64 %str.tag175, 0
  br i1 %str.immortal176, label %str_ok178, label %str_gen_check177

str_stale169:                                     ; preds = %str_gen_check167
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok168

str_gen_check177:                                 ; preds = %str_ok168
  %arena.cur180 = call ptr @dva_arena_current()
  %tag.valid181 = call i1 @dva_arena_validate_tag(ptr %arena.cur180, i64 %str.tag175)
  br i1 %tag.valid181, label %str_ok178, label %str_stale179

str_ok178:                                        ; preds = %str_stale179, %str_gen_check177, %str_ok168
  %mk.lenseq182 = icmp eq i64 %mk.slen164, %mk.nlen174
  br i1 %mk.lenseq182, label %mk.eq.then183, label %mk.eq.else184

str_stale179:                                     ; preds = %str_gen_check177
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok178

mk.eq.then183:                                    ; preds = %str_ok178
  %mk.sdata186 = getelementptr inbounds { i64, ptr }, ptr %mk.stored161, i32 0, i32 1
  %mk.sdata187 = load ptr, ptr %mk.sdata186, align 8
  %mk.ndata188 = getelementptr inbounds { i64, ptr }, ptr %concat.str122, i32 0, i32 1
  %mk.ndata189 = load ptr, ptr %mk.ndata188, align 8
  %mk.memcmp190 = call i32 @memcmp(ptr %mk.sdata187, ptr %mk.ndata189, i64 %mk.nlen174)
  %mk.cmpeq191 = icmp eq i32 %mk.memcmp190, 0
  br label %mk.eq.merge185

mk.eq.else184:                                    ; preds = %str_ok178
  br label %mk.eq.merge185

mk.eq.merge185:                                   ; preds = %mk.eq.else184, %mk.eq.then183
  %mk.eq192 = phi i1 [ %mk.cmpeq191, %mk.eq.then183 ], [ false, %mk.eq.else184 ]
  br i1 %mk.eq192, label %m.mem.hit193, label %m.mem.next149

m.mem.hit193:                                     ; preds = %mk.eq.merge185
  br label %m.mem.done151

choice.then198:                                   ; preds = %m.mem.done151
  %var.load201 = load ptr, ptr %var.mod, align 8
  %concat.lhs202 = getelementptr inbounds { i64, ptr }, ptr %var.load201, i32 0, i32 0
  %concat.lhs203 = load i64, ptr %concat.lhs202, align 8
  %concat.lhs204 = and i64 %concat.lhs203, 281474976710655
  %str.tag205 = lshr i64 %concat.lhs203, 48
  %str.immortal206 = icmp eq i64 %str.tag205, 0
  br i1 %str.immortal206, label %str_ok208, label %str_gen_check207

choice.else199:                                   ; preds = %m.mem.done151
  %var.load285 = load ptr, ptr %var.defs, align 8
  %var.load286 = load ptr, ptr %var.mod, align 8
  %concat.lhs287 = getelementptr inbounds { i64, ptr }, ptr %var.load286, i32 0, i32 0
  %concat.lhs288 = load i64, ptr %concat.lhs287, align 8
  %concat.lhs289 = and i64 %concat.lhs288, 281474976710655
  %str.tag290 = lshr i64 %concat.lhs288, 48
  %str.immortal291 = icmp eq i64 %str.tag290, 0
  br i1 %str.immortal291, label %str_ok293, label %str_gen_check292

choice.exit200:                                   ; preds = %choice.exit445, %concat.tot.len275
  %choice.res530 = phi ptr [ %concat.str282, %concat.tot.len275 ], [ %choice.res, %choice.exit445 ]
  br label %choice.exit52

str_gen_check207:                                 ; preds = %choice.then198
  %arena.cur210 = call ptr @dva_arena_current()
  %tag.valid211 = call i1 @dva_arena_validate_tag(ptr %arena.cur210, i64 %str.tag205)
  br i1 %tag.valid211, label %str_ok208, label %str_stale209

str_ok208:                                        ; preds = %str_stale209, %str_gen_check207, %choice.then198
  %concat.lhs212 = getelementptr inbounds { i64, ptr }, ptr %var.load201, i32 0, i32 1
  %concat.lhs213 = load ptr, ptr %concat.lhs212, align 8
  %concat.rhs214 = load i64, ptr @str.5.struct, align 8
  %concat.rhs215 = and i64 %concat.rhs214, 281474976710655
  %str.tag216 = lshr i64 %concat.rhs214, 48
  %str.immortal217 = icmp eq i64 %str.tag216, 0
  br i1 %str.immortal217, label %str_ok219, label %str_gen_check218

str_stale209:                                     ; preds = %str_gen_check207
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok208

str_gen_check218:                                 ; preds = %str_ok208
  %arena.cur221 = call ptr @dva_arena_current()
  %tag.valid222 = call i1 @dva_arena_validate_tag(ptr %arena.cur221, i64 %str.tag216)
  br i1 %tag.valid222, label %str_ok219, label %str_stale220

str_ok219:                                        ; preds = %str_stale220, %str_gen_check218, %str_ok208
  %concat.rhs223 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %concat.sum.len224 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs204, i64 %concat.rhs215)
  %sum225 = extractvalue { i64, i1 } %concat.sum.len224, 0
  %ovf226 = extractvalue { i64, i1 } %concat.sum.len224, 1
  br i1 %ovf226, label %str_overflow_abort228, label %concat.sum.len227

str_stale220:                                     ; preds = %str_gen_check218
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok219

concat.sum.len227:                                ; preds = %str_overflow_abort228, %str_ok219
  %concat.tot.len229 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum225, i64 1)
  %sum230 = extractvalue { i64, i1 } %concat.tot.len229, 0
  %ovf231 = extractvalue { i64, i1 } %concat.tot.len229, 1
  br i1 %ovf231, label %str_overflow_abort233, label %concat.tot.len232

str_overflow_abort228:                            ; preds = %str_ok219
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len227

concat.tot.len232:                                ; preds = %str_overflow_abort233, %concat.sum.len227
  %arena.cur234 = call ptr @dva_arena_current()
  %concat.buf235 = call ptr @dva_arena_alloc(ptr %arena.cur234, i64 %sum230)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf235, ptr align 1 %concat.lhs213, i64 %concat.lhs204, i1 false)
  %concat.mid236 = getelementptr i8, ptr %concat.buf235, i64 %concat.lhs204
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid236, ptr align 1 %concat.rhs223, i64 %concat.rhs215, i1 false)
  %concat.nul237 = getelementptr i8, ptr %concat.buf235, i64 %sum225
  store i8 0, ptr %concat.nul237, align 1
  %arena.cur238 = call ptr @dva_arena_current()
  %concat.str239 = call ptr @dva_arena_alloc(ptr %arena.cur238, i64 16)
  %str.build.len.gep240 = getelementptr inbounds { i64, ptr }, ptr %concat.str239, i32 0, i32 0
  store i64 %sum225, ptr %str.build.len.gep240, align 8
  %str.build.data.gep241 = getelementptr inbounds { i64, ptr }, ptr %concat.str239, i32 0, i32 1
  store ptr %concat.buf235, ptr %str.build.data.gep241, align 8
  %var.load242 = load ptr, ptr %var.ref, align 8
  %concat.lhs243 = getelementptr inbounds { i64, ptr }, ptr %concat.str239, i32 0, i32 0
  %concat.lhs244 = load i64, ptr %concat.lhs243, align 8
  %concat.lhs245 = and i64 %concat.lhs244, 281474976710655
  %str.tag246 = lshr i64 %concat.lhs244, 48
  %str.immortal247 = icmp eq i64 %str.tag246, 0
  br i1 %str.immortal247, label %str_ok249, label %str_gen_check248

str_overflow_abort233:                            ; preds = %concat.sum.len227
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len232

str_gen_check248:                                 ; preds = %concat.tot.len232
  %arena.cur251 = call ptr @dva_arena_current()
  %tag.valid252 = call i1 @dva_arena_validate_tag(ptr %arena.cur251, i64 %str.tag246)
  br i1 %tag.valid252, label %str_ok249, label %str_stale250

str_ok249:                                        ; preds = %str_stale250, %str_gen_check248, %concat.tot.len232
  %concat.lhs253 = getelementptr inbounds { i64, ptr }, ptr %concat.str239, i32 0, i32 1
  %concat.lhs254 = load ptr, ptr %concat.lhs253, align 8
  %concat.rhs255 = getelementptr inbounds { i64, ptr }, ptr %var.load242, i32 0, i32 0
  %concat.rhs256 = load i64, ptr %concat.rhs255, align 8
  %concat.rhs257 = and i64 %concat.rhs256, 281474976710655
  %str.tag258 = lshr i64 %concat.rhs256, 48
  %str.immortal259 = icmp eq i64 %str.tag258, 0
  br i1 %str.immortal259, label %str_ok261, label %str_gen_check260

str_stale250:                                     ; preds = %str_gen_check248
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok249

str_gen_check260:                                 ; preds = %str_ok249
  %arena.cur263 = call ptr @dva_arena_current()
  %tag.valid264 = call i1 @dva_arena_validate_tag(ptr %arena.cur263, i64 %str.tag258)
  br i1 %tag.valid264, label %str_ok261, label %str_stale262

str_ok261:                                        ; preds = %str_stale262, %str_gen_check260, %str_ok249
  %concat.rhs265 = getelementptr inbounds { i64, ptr }, ptr %var.load242, i32 0, i32 1
  %concat.rhs266 = load ptr, ptr %concat.rhs265, align 8
  %concat.sum.len267 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs245, i64 %concat.rhs257)
  %sum268 = extractvalue { i64, i1 } %concat.sum.len267, 0
  %ovf269 = extractvalue { i64, i1 } %concat.sum.len267, 1
  br i1 %ovf269, label %str_overflow_abort271, label %concat.sum.len270

str_stale262:                                     ; preds = %str_gen_check260
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok261

concat.sum.len270:                                ; preds = %str_overflow_abort271, %str_ok261
  %concat.tot.len272 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum268, i64 1)
  %sum273 = extractvalue { i64, i1 } %concat.tot.len272, 0
  %ovf274 = extractvalue { i64, i1 } %concat.tot.len272, 1
  br i1 %ovf274, label %str_overflow_abort276, label %concat.tot.len275

str_overflow_abort271:                            ; preds = %str_ok261
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len270

concat.tot.len275:                                ; preds = %str_overflow_abort276, %concat.sum.len270
  %arena.cur277 = call ptr @dva_arena_current()
  %concat.buf278 = call ptr @dva_arena_alloc(ptr %arena.cur277, i64 %sum273)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf278, ptr align 1 %concat.lhs254, i64 %concat.lhs245, i1 false)
  %concat.mid279 = getelementptr i8, ptr %concat.buf278, i64 %concat.lhs245
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid279, ptr align 1 %concat.rhs266, i64 %concat.rhs257, i1 false)
  %concat.nul280 = getelementptr i8, ptr %concat.buf278, i64 %sum268
  store i8 0, ptr %concat.nul280, align 1
  %arena.cur281 = call ptr @dva_arena_current()
  %concat.str282 = call ptr @dva_arena_alloc(ptr %arena.cur281, i64 16)
  %str.build.len.gep283 = getelementptr inbounds { i64, ptr }, ptr %concat.str282, i32 0, i32 0
  store i64 %sum268, ptr %str.build.len.gep283, align 8
  %str.build.data.gep284 = getelementptr inbounds { i64, ptr }, ptr %concat.str282, i32 0, i32 1
  store ptr %concat.buf278, ptr %str.build.data.gep284, align 8
  br label %choice.exit200

str_overflow_abort276:                            ; preds = %concat.sum.len270
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len275

str_gen_check292:                                 ; preds = %choice.else199
  %arena.cur295 = call ptr @dva_arena_current()
  %tag.valid296 = call i1 @dva_arena_validate_tag(ptr %arena.cur295, i64 %str.tag290)
  br i1 %tag.valid296, label %str_ok293, label %str_stale294

str_ok293:                                        ; preds = %str_stale294, %str_gen_check292, %choice.else199
  %concat.lhs297 = getelementptr inbounds { i64, ptr }, ptr %var.load286, i32 0, i32 1
  %concat.lhs298 = load ptr, ptr %concat.lhs297, align 8
  %concat.rhs299 = load i64, ptr @str.6.struct, align 8
  %concat.rhs300 = and i64 %concat.rhs299, 281474976710655
  %str.tag301 = lshr i64 %concat.rhs299, 48
  %str.immortal302 = icmp eq i64 %str.tag301, 0
  br i1 %str.immortal302, label %str_ok304, label %str_gen_check303

str_stale294:                                     ; preds = %str_gen_check292
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok293

str_gen_check303:                                 ; preds = %str_ok293
  %arena.cur306 = call ptr @dva_arena_current()
  %tag.valid307 = call i1 @dva_arena_validate_tag(ptr %arena.cur306, i64 %str.tag301)
  br i1 %tag.valid307, label %str_ok304, label %str_stale305

str_ok304:                                        ; preds = %str_stale305, %str_gen_check303, %str_ok293
  %concat.rhs308 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %concat.sum.len309 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs289, i64 %concat.rhs300)
  %sum310 = extractvalue { i64, i1 } %concat.sum.len309, 0
  %ovf311 = extractvalue { i64, i1 } %concat.sum.len309, 1
  br i1 %ovf311, label %str_overflow_abort313, label %concat.sum.len312

str_stale305:                                     ; preds = %str_gen_check303
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok304

concat.sum.len312:                                ; preds = %str_overflow_abort313, %str_ok304
  %concat.tot.len314 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum310, i64 1)
  %sum315 = extractvalue { i64, i1 } %concat.tot.len314, 0
  %ovf316 = extractvalue { i64, i1 } %concat.tot.len314, 1
  br i1 %ovf316, label %str_overflow_abort318, label %concat.tot.len317

str_overflow_abort313:                            ; preds = %str_ok304
  %29 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len312

concat.tot.len317:                                ; preds = %str_overflow_abort318, %concat.sum.len312
  %arena.cur319 = call ptr @dva_arena_current()
  %concat.buf320 = call ptr @dva_arena_alloc(ptr %arena.cur319, i64 %sum315)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf320, ptr align 1 %concat.lhs298, i64 %concat.lhs289, i1 false)
  %concat.mid321 = getelementptr i8, ptr %concat.buf320, i64 %concat.lhs289
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid321, ptr align 1 %concat.rhs308, i64 %concat.rhs300, i1 false)
  %concat.nul322 = getelementptr i8, ptr %concat.buf320, i64 %sum310
  store i8 0, ptr %concat.nul322, align 1
  %arena.cur323 = call ptr @dva_arena_current()
  %concat.str324 = call ptr @dva_arena_alloc(ptr %arena.cur323, i64 16)
  %str.build.len.gep325 = getelementptr inbounds { i64, ptr }, ptr %concat.str324, i32 0, i32 0
  store i64 %sum310, ptr %str.build.len.gep325, align 8
  %str.build.data.gep326 = getelementptr inbounds { i64, ptr }, ptr %concat.str324, i32 0, i32 1
  store ptr %concat.buf320, ptr %str.build.data.gep326, align 8
  %var.load327 = load ptr, ptr %var.ref, align 8
  %concat.lhs328 = getelementptr inbounds { i64, ptr }, ptr %concat.str324, i32 0, i32 0
  %concat.lhs329 = load i64, ptr %concat.lhs328, align 8
  %concat.lhs330 = and i64 %concat.lhs329, 281474976710655
  %str.tag331 = lshr i64 %concat.lhs329, 48
  %str.immortal332 = icmp eq i64 %str.tag331, 0
  br i1 %str.immortal332, label %str_ok334, label %str_gen_check333

str_overflow_abort318:                            ; preds = %concat.sum.len312
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len317

str_gen_check333:                                 ; preds = %concat.tot.len317
  %arena.cur336 = call ptr @dva_arena_current()
  %tag.valid337 = call i1 @dva_arena_validate_tag(ptr %arena.cur336, i64 %str.tag331)
  br i1 %tag.valid337, label %str_ok334, label %str_stale335

str_ok334:                                        ; preds = %str_stale335, %str_gen_check333, %concat.tot.len317
  %concat.lhs338 = getelementptr inbounds { i64, ptr }, ptr %concat.str324, i32 0, i32 1
  %concat.lhs339 = load ptr, ptr %concat.lhs338, align 8
  %concat.rhs340 = getelementptr inbounds { i64, ptr }, ptr %var.load327, i32 0, i32 0
  %concat.rhs341 = load i64, ptr %concat.rhs340, align 8
  %concat.rhs342 = and i64 %concat.rhs341, 281474976710655
  %str.tag343 = lshr i64 %concat.rhs341, 48
  %str.immortal344 = icmp eq i64 %str.tag343, 0
  br i1 %str.immortal344, label %str_ok346, label %str_gen_check345

str_stale335:                                     ; preds = %str_gen_check333
  %31 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok334

str_gen_check345:                                 ; preds = %str_ok334
  %arena.cur348 = call ptr @dva_arena_current()
  %tag.valid349 = call i1 @dva_arena_validate_tag(ptr %arena.cur348, i64 %str.tag343)
  br i1 %tag.valid349, label %str_ok346, label %str_stale347

str_ok346:                                        ; preds = %str_stale347, %str_gen_check345, %str_ok334
  %concat.rhs350 = getelementptr inbounds { i64, ptr }, ptr %var.load327, i32 0, i32 1
  %concat.rhs351 = load ptr, ptr %concat.rhs350, align 8
  %concat.sum.len352 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs330, i64 %concat.rhs342)
  %sum353 = extractvalue { i64, i1 } %concat.sum.len352, 0
  %ovf354 = extractvalue { i64, i1 } %concat.sum.len352, 1
  br i1 %ovf354, label %str_overflow_abort356, label %concat.sum.len355

str_stale347:                                     ; preds = %str_gen_check345
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok346

concat.sum.len355:                                ; preds = %str_overflow_abort356, %str_ok346
  %concat.tot.len357 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum353, i64 1)
  %sum358 = extractvalue { i64, i1 } %concat.tot.len357, 0
  %ovf359 = extractvalue { i64, i1 } %concat.tot.len357, 1
  br i1 %ovf359, label %str_overflow_abort361, label %concat.tot.len360

str_overflow_abort356:                            ; preds = %str_ok346
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len355

concat.tot.len360:                                ; preds = %str_overflow_abort361, %concat.sum.len355
  %arena.cur362 = call ptr @dva_arena_current()
  %concat.buf363 = call ptr @dva_arena_alloc(ptr %arena.cur362, i64 %sum358)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf363, ptr align 1 %concat.lhs339, i64 %concat.lhs330, i1 false)
  %concat.mid364 = getelementptr i8, ptr %concat.buf363, i64 %concat.lhs330
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid364, ptr align 1 %concat.rhs351, i64 %concat.rhs342, i1 false)
  %concat.nul365 = getelementptr i8, ptr %concat.buf363, i64 %sum353
  store i8 0, ptr %concat.nul365, align 1
  %arena.cur366 = call ptr @dva_arena_current()
  %concat.str367 = call ptr @dva_arena_alloc(ptr %arena.cur366, i64 16)
  %str.build.len.gep368 = getelementptr inbounds { i64, ptr }, ptr %concat.str367, i32 0, i32 0
  store i64 %sum353, ptr %str.build.len.gep368, align 8
  %str.build.data.gep369 = getelementptr inbounds { i64, ptr }, ptr %concat.str367, i32 0, i32 1
  store ptr %concat.buf363, ptr %str.build.data.gep369, align 8
  %m.cap370 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load285, i32 0, i32 1
  %m.cap371 = load i64, ptr %m.cap370, align 8
  %m.keys372 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load285, i32 0, i32 2
  %m.keys373 = load ptr, ptr %m.keys372, align 8
  %m.states374 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load285, i32 0, i32 4
  %m.states375 = load ptr, ptr %m.states374, align 8
  %mk.data376 = getelementptr inbounds { i64, ptr }, ptr %concat.str367, i32 0, i32 1
  %mk.data377 = load ptr, ptr %mk.data376, align 8
  %mk.len378 = getelementptr inbounds { i64, ptr }, ptr %concat.str367, i32 0, i32 0
  %mk.len379 = load i64, ptr %mk.len378, align 8
  %mk.len380 = and i64 %mk.len379, 281474976710655
  %str.tag381 = lshr i64 %mk.len379, 48
  %str.immortal382 = icmp eq i64 %str.tag381, 0
  br i1 %str.immortal382, label %str_ok384, label %str_gen_check383

str_overflow_abort361:                            ; preds = %concat.sum.len355
  %34 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len360

str_gen_check383:                                 ; preds = %concat.tot.len360
  %arena.cur386 = call ptr @dva_arena_current()
  %tag.valid387 = call i1 @dva_arena_validate_tag(ptr %arena.cur386, i64 %str.tag381)
  br i1 %tag.valid387, label %str_ok384, label %str_stale385

str_ok384:                                        ; preds = %str_stale385, %str_gen_check383, %concat.tot.len360
  %hash.str388 = call i64 @dva_hash_string(ptr %mk.data377, i64 %mk.len380)
  %m.capm1389 = sub i64 %m.cap371, 1
  %m.idx0390 = and i64 %hash.str388, %m.capm1389
  br label %m.mem.loop391

str_stale385:                                     ; preds = %str_gen_check383
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok384

m.mem.loop391:                                    ; preds = %m.mem.next394, %str_ok384
  %m.mem.idx397 = phi i64 [ %m.idx0390, %str_ok384 ], [ %m.mem.idx.next440, %m.mem.next394 ]
  %m.mem.probe398 = phi i64 [ 0, %str_ok384 ], [ %m.mem.probe.next441, %m.mem.next394 ]
  %m.mem.reached399 = icmp eq i64 %m.mem.probe398, %m.cap371
  %m.mem.state.gep400 = getelementptr i8, ptr %m.states375, i64 %m.mem.idx397
  %m.mem.state401 = load i8, ptr %m.mem.state.gep400, align 1
  %m.mem.is.empty402 = icmp eq i8 %m.mem.state401, 0
  %m.mem.stop403 = or i1 %m.mem.is.empty402, %m.mem.reached399
  br i1 %m.mem.stop403, label %m.mem.miss395, label %m.mem.probe392

m.mem.probe392:                                   ; preds = %m.mem.loop391
  %m.mem.is.tomb404 = icmp eq i8 %m.mem.state401, 2
  br i1 %m.mem.is.tomb404, label %m.mem.next394, label %m.mem.found393

m.mem.found393:                                   ; preds = %m.mem.probe392
  %m.mem.key.slot405 = getelementptr ptr, ptr %m.keys373, i64 %m.mem.idx397
  %mk.stored406 = load ptr, ptr %m.mem.key.slot405, align 8
  %mk.slen407 = getelementptr inbounds { i64, ptr }, ptr %mk.stored406, i32 0, i32 0
  %mk.slen408 = load i64, ptr %mk.slen407, align 8
  %mk.slen409 = and i64 %mk.slen408, 281474976710655
  %str.tag410 = lshr i64 %mk.slen408, 48
  %str.immortal411 = icmp eq i64 %str.tag410, 0
  br i1 %str.immortal411, label %str_ok413, label %str_gen_check412

m.mem.next394:                                    ; preds = %mk.eq.merge430, %m.mem.probe392
  %m.mem.idx.add439 = add i64 %m.mem.idx397, 1
  %m.mem.idx.next440 = and i64 %m.mem.idx.add439, %m.capm1389
  %m.mem.probe.next441 = add i64 %m.mem.probe398, 1
  br label %m.mem.loop391

m.mem.miss395:                                    ; preds = %m.mem.loop391
  br label %m.mem.done396

m.mem.done396:                                    ; preds = %m.mem.miss395, %m.mem.hit438
  %m.mem.res442 = phi i1 [ true, %m.mem.hit438 ], [ false, %m.mem.miss395 ]
  br i1 %m.mem.res442, label %choice.then443, label %choice.else444

str_gen_check412:                                 ; preds = %m.mem.found393
  %arena.cur415 = call ptr @dva_arena_current()
  %tag.valid416 = call i1 @dva_arena_validate_tag(ptr %arena.cur415, i64 %str.tag410)
  br i1 %tag.valid416, label %str_ok413, label %str_stale414

str_ok413:                                        ; preds = %str_stale414, %str_gen_check412, %m.mem.found393
  %mk.nlen417 = getelementptr inbounds { i64, ptr }, ptr %concat.str367, i32 0, i32 0
  %mk.nlen418 = load i64, ptr %mk.nlen417, align 8
  %mk.nlen419 = and i64 %mk.nlen418, 281474976710655
  %str.tag420 = lshr i64 %mk.nlen418, 48
  %str.immortal421 = icmp eq i64 %str.tag420, 0
  br i1 %str.immortal421, label %str_ok423, label %str_gen_check422

str_stale414:                                     ; preds = %str_gen_check412
  %36 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok413

str_gen_check422:                                 ; preds = %str_ok413
  %arena.cur425 = call ptr @dva_arena_current()
  %tag.valid426 = call i1 @dva_arena_validate_tag(ptr %arena.cur425, i64 %str.tag420)
  br i1 %tag.valid426, label %str_ok423, label %str_stale424

str_ok423:                                        ; preds = %str_stale424, %str_gen_check422, %str_ok413
  %mk.lenseq427 = icmp eq i64 %mk.slen409, %mk.nlen419
  br i1 %mk.lenseq427, label %mk.eq.then428, label %mk.eq.else429

str_stale424:                                     ; preds = %str_gen_check422
  %37 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok423

mk.eq.then428:                                    ; preds = %str_ok423
  %mk.sdata431 = getelementptr inbounds { i64, ptr }, ptr %mk.stored406, i32 0, i32 1
  %mk.sdata432 = load ptr, ptr %mk.sdata431, align 8
  %mk.ndata433 = getelementptr inbounds { i64, ptr }, ptr %concat.str367, i32 0, i32 1
  %mk.ndata434 = load ptr, ptr %mk.ndata433, align 8
  %mk.memcmp435 = call i32 @memcmp(ptr %mk.sdata432, ptr %mk.ndata434, i64 %mk.nlen419)
  %mk.cmpeq436 = icmp eq i32 %mk.memcmp435, 0
  br label %mk.eq.merge430

mk.eq.else429:                                    ; preds = %str_ok423
  br label %mk.eq.merge430

mk.eq.merge430:                                   ; preds = %mk.eq.else429, %mk.eq.then428
  %mk.eq437 = phi i1 [ %mk.cmpeq436, %mk.eq.then428 ], [ false, %mk.eq.else429 ]
  br i1 %mk.eq437, label %m.mem.hit438, label %m.mem.next394

m.mem.hit438:                                     ; preds = %mk.eq.merge430
  br label %m.mem.done396

choice.then443:                                   ; preds = %m.mem.done396
  %var.load446 = load ptr, ptr %var.mod, align 8
  %concat.lhs447 = getelementptr inbounds { i64, ptr }, ptr %var.load446, i32 0, i32 0
  %concat.lhs448 = load i64, ptr %concat.lhs447, align 8
  %concat.lhs449 = and i64 %concat.lhs448, 281474976710655
  %str.tag450 = lshr i64 %concat.lhs448, 48
  %str.immortal451 = icmp eq i64 %str.tag450, 0
  br i1 %str.immortal451, label %str_ok453, label %str_gen_check452

choice.else444:                                   ; preds = %m.mem.done396
  br label %choice.exit445

choice.exit445:                                   ; preds = %choice.else444, %concat.tot.len520
  %choice.res = phi ptr [ %concat.str527, %concat.tot.len520 ], [ @str.4.struct, %choice.else444 ]
  br label %choice.exit200

str_gen_check452:                                 ; preds = %choice.then443
  %arena.cur455 = call ptr @dva_arena_current()
  %tag.valid456 = call i1 @dva_arena_validate_tag(ptr %arena.cur455, i64 %str.tag450)
  br i1 %tag.valid456, label %str_ok453, label %str_stale454

str_ok453:                                        ; preds = %str_stale454, %str_gen_check452, %choice.then443
  %concat.lhs457 = getelementptr inbounds { i64, ptr }, ptr %var.load446, i32 0, i32 1
  %concat.lhs458 = load ptr, ptr %concat.lhs457, align 8
  %concat.rhs459 = load i64, ptr @str.6.struct, align 8
  %concat.rhs460 = and i64 %concat.rhs459, 281474976710655
  %str.tag461 = lshr i64 %concat.rhs459, 48
  %str.immortal462 = icmp eq i64 %str.tag461, 0
  br i1 %str.immortal462, label %str_ok464, label %str_gen_check463

str_stale454:                                     ; preds = %str_gen_check452
  %38 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok453

str_gen_check463:                                 ; preds = %str_ok453
  %arena.cur466 = call ptr @dva_arena_current()
  %tag.valid467 = call i1 @dva_arena_validate_tag(ptr %arena.cur466, i64 %str.tag461)
  br i1 %tag.valid467, label %str_ok464, label %str_stale465

str_ok464:                                        ; preds = %str_stale465, %str_gen_check463, %str_ok453
  %concat.rhs468 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %concat.sum.len469 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs449, i64 %concat.rhs460)
  %sum470 = extractvalue { i64, i1 } %concat.sum.len469, 0
  %ovf471 = extractvalue { i64, i1 } %concat.sum.len469, 1
  br i1 %ovf471, label %str_overflow_abort473, label %concat.sum.len472

str_stale465:                                     ; preds = %str_gen_check463
  %39 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok464

concat.sum.len472:                                ; preds = %str_overflow_abort473, %str_ok464
  %concat.tot.len474 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum470, i64 1)
  %sum475 = extractvalue { i64, i1 } %concat.tot.len474, 0
  %ovf476 = extractvalue { i64, i1 } %concat.tot.len474, 1
  br i1 %ovf476, label %str_overflow_abort478, label %concat.tot.len477

str_overflow_abort473:                            ; preds = %str_ok464
  %40 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len472

concat.tot.len477:                                ; preds = %str_overflow_abort478, %concat.sum.len472
  %arena.cur479 = call ptr @dva_arena_current()
  %concat.buf480 = call ptr @dva_arena_alloc(ptr %arena.cur479, i64 %sum475)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf480, ptr align 1 %concat.lhs458, i64 %concat.lhs449, i1 false)
  %concat.mid481 = getelementptr i8, ptr %concat.buf480, i64 %concat.lhs449
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid481, ptr align 1 %concat.rhs468, i64 %concat.rhs460, i1 false)
  %concat.nul482 = getelementptr i8, ptr %concat.buf480, i64 %sum470
  store i8 0, ptr %concat.nul482, align 1
  %arena.cur483 = call ptr @dva_arena_current()
  %concat.str484 = call ptr @dva_arena_alloc(ptr %arena.cur483, i64 16)
  %str.build.len.gep485 = getelementptr inbounds { i64, ptr }, ptr %concat.str484, i32 0, i32 0
  store i64 %sum470, ptr %str.build.len.gep485, align 8
  %str.build.data.gep486 = getelementptr inbounds { i64, ptr }, ptr %concat.str484, i32 0, i32 1
  store ptr %concat.buf480, ptr %str.build.data.gep486, align 8
  %var.load487 = load ptr, ptr %var.ref, align 8
  %concat.lhs488 = getelementptr inbounds { i64, ptr }, ptr %concat.str484, i32 0, i32 0
  %concat.lhs489 = load i64, ptr %concat.lhs488, align 8
  %concat.lhs490 = and i64 %concat.lhs489, 281474976710655
  %str.tag491 = lshr i64 %concat.lhs489, 48
  %str.immortal492 = icmp eq i64 %str.tag491, 0
  br i1 %str.immortal492, label %str_ok494, label %str_gen_check493

str_overflow_abort478:                            ; preds = %concat.sum.len472
  %41 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len477

str_gen_check493:                                 ; preds = %concat.tot.len477
  %arena.cur496 = call ptr @dva_arena_current()
  %tag.valid497 = call i1 @dva_arena_validate_tag(ptr %arena.cur496, i64 %str.tag491)
  br i1 %tag.valid497, label %str_ok494, label %str_stale495

str_ok494:                                        ; preds = %str_stale495, %str_gen_check493, %concat.tot.len477
  %concat.lhs498 = getelementptr inbounds { i64, ptr }, ptr %concat.str484, i32 0, i32 1
  %concat.lhs499 = load ptr, ptr %concat.lhs498, align 8
  %concat.rhs500 = getelementptr inbounds { i64, ptr }, ptr %var.load487, i32 0, i32 0
  %concat.rhs501 = load i64, ptr %concat.rhs500, align 8
  %concat.rhs502 = and i64 %concat.rhs501, 281474976710655
  %str.tag503 = lshr i64 %concat.rhs501, 48
  %str.immortal504 = icmp eq i64 %str.tag503, 0
  br i1 %str.immortal504, label %str_ok506, label %str_gen_check505

str_stale495:                                     ; preds = %str_gen_check493
  %42 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok494

str_gen_check505:                                 ; preds = %str_ok494
  %arena.cur508 = call ptr @dva_arena_current()
  %tag.valid509 = call i1 @dva_arena_validate_tag(ptr %arena.cur508, i64 %str.tag503)
  br i1 %tag.valid509, label %str_ok506, label %str_stale507

str_ok506:                                        ; preds = %str_stale507, %str_gen_check505, %str_ok494
  %concat.rhs510 = getelementptr inbounds { i64, ptr }, ptr %var.load487, i32 0, i32 1
  %concat.rhs511 = load ptr, ptr %concat.rhs510, align 8
  %concat.sum.len512 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs490, i64 %concat.rhs502)
  %sum513 = extractvalue { i64, i1 } %concat.sum.len512, 0
  %ovf514 = extractvalue { i64, i1 } %concat.sum.len512, 1
  br i1 %ovf514, label %str_overflow_abort516, label %concat.sum.len515

str_stale507:                                     ; preds = %str_gen_check505
  %43 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok506

concat.sum.len515:                                ; preds = %str_overflow_abort516, %str_ok506
  %concat.tot.len517 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum513, i64 1)
  %sum518 = extractvalue { i64, i1 } %concat.tot.len517, 0
  %ovf519 = extractvalue { i64, i1 } %concat.tot.len517, 1
  br i1 %ovf519, label %str_overflow_abort521, label %concat.tot.len520

str_overflow_abort516:                            ; preds = %str_ok506
  %44 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len515

concat.tot.len520:                                ; preds = %str_overflow_abort521, %concat.sum.len515
  %arena.cur522 = call ptr @dva_arena_current()
  %concat.buf523 = call ptr @dva_arena_alloc(ptr %arena.cur522, i64 %sum518)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf523, ptr align 1 %concat.lhs499, i64 %concat.lhs490, i1 false)
  %concat.mid524 = getelementptr i8, ptr %concat.buf523, i64 %concat.lhs490
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid524, ptr align 1 %concat.rhs511, i64 %concat.rhs502, i1 false)
  %concat.nul525 = getelementptr i8, ptr %concat.buf523, i64 %sum513
  store i8 0, ptr %concat.nul525, align 1
  %arena.cur526 = call ptr @dva_arena_current()
  %concat.str527 = call ptr @dva_arena_alloc(ptr %arena.cur526, i64 16)
  %str.build.len.gep528 = getelementptr inbounds { i64, ptr }, ptr %concat.str527, i32 0, i32 0
  store i64 %sum513, ptr %str.build.len.gep528, align 8
  %str.build.data.gep529 = getelementptr inbounds { i64, ptr }, ptr %concat.str527, i32 0, i32 1
  store ptr %concat.buf523, ptr %str.build.data.gep529, align 8
  br label %choice.exit445

str_overflow_abort521:                            ; preds = %concat.sum.len515
  %45 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len520
}

define void @"dep_graph::collect_expr_refs"(ptr %0, ptr %1, ptr %2) #1 {
entry:
  %var.rm = alloca ptr, align 8
  %var._1957 = alloca ptr, align 8
  %var._1889 = alloca ptr, align 8
  %var._i1888 = alloca i64, align 8
  %var.p1880 = alloca ptr, align 8
  %loop.step.46 = alloca i64, align 8
  %loop.idx.46 = alloca i64, align 8
  %var.m1862 = alloca ptr, align 8
  %var._1861 = alloca ptr, align 8
  %var.r1819 = alloca ptr, align 8
  %var._1818 = alloca ptr, align 8
  %var.ud = alloca ptr, align 8
  %var._1781 = alloca ptr, align 8
  %var.ex = alloca ptr, align 8
  %var._1746 = alloca ptr, align 8
  %var.jn = alloca ptr, align 8
  %var._1711 = alloca ptr, align 8
  %var.sp = alloca ptr, align 8
  %var._1673 = alloca ptr, align 8
  %var.ct = alloca ptr, align 8
  %var._1638 = alloca ptr, align 8
  %var.tc = alloca ptr, align 8
  %var._1601 = alloca ptr, align 8
  %var.bc = alloca ptr, align 8
  %var._1566 = alloca ptr, align 8
  %var.cp = alloca ptr, align 8
  %var._1531 = alloca ptr, align 8
  %var._1494 = alloca ptr, align 8
  %var._i1493 = alloca i64, align 8
  %var.varg = alloca ptr, align 8
  %loop.step.45 = alloca i64, align 8
  %loop.idx.45 = alloca i64, align 8
  %var.v1478 = alloca ptr, align 8
  %var._1477 = alloca ptr, align 8
  %var.na = alloca ptr, align 8
  %var._1440 = alloca ptr, align 8
  %var.v1337 = alloca ptr, align 8
  %var._1336 = alloca ptr, align 8
  %var.r = alloca ptr, align 8
  %var._1285 = alloca ptr, align 8
  %var.ce = alloca ptr, align 8
  %var._1219 = alloca ptr, align 8
  %var.cy = alloca ptr, align 8
  %var._1153 = alloca ptr, align 8
  %var.a1087 = alloca ptr, align 8
  %var._1086 = alloca ptr, align 8
  %var.ka = alloca ptr, align 8
  %var._1020 = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var._954 = alloca ptr, align 8
  %var._915 = alloca ptr, align 8
  %var._i914 = alloca i64, align 8
  %var.fld = alloca ptr, align 8
  %loop.step.43 = alloca i64, align 8
  %loop.idx.43 = alloca i64, align 8
  %var.re = alloca ptr, align 8
  %var._899 = alloca ptr, align 8
  %var._860 = alloca ptr, align 8
  %var._i859 = alloca i64, align 8
  %var.cv = alloca ptr, align 8
  %loop.step.42 = alloca i64, align 8
  %loop.idx.42 = alloca i64, align 8
  %var._721 = alloca ptr, align 8
  %var._i720 = alloca i64, align 8
  %var.bv = alloca ptr, align 8
  %loop.step.41 = alloca i64, align 8
  %loop.idx.41 = alloca i64, align 8
  %var.br_locals = alloca ptr, align 8
  %var._691 = alloca ptr, align 8
  %var._i690 = alloca i64, align 8
  %var.br = alloca ptr, align 8
  %loop.step.40 = alloca i64, align 8
  %loop.idx.40 = alloca i64, align 8
  %var.ch = alloca ptr, align 8
  %var._646 = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  %var._514 = alloca ptr, align 8
  %var._504 = alloca ptr, align 8
  %var._i503 = alloca i64, align 8
  %var.st = alloca ptr, align 8
  %loop.step.39 = alloca i64, align 8
  %loop.idx.39 = alloca i64, align 8
  %var.blk_locals = alloca ptr, align 8
  %var.be = alloca ptr, align 8
  %var._464 = alloca ptr, align 8
  %var._363 = alloca ptr, align 8
  %var._i362 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.38 = alloca i64, align 8
  %loop.idx.38 = alloca i64, align 8
  %var.fn_locals = alloca ptr, align 8
  %var.fe = alloca ptr, align 8
  %var._333 = alloca ptr, align 8
  %var.u = alloca ptr, align 8
  %var._296 = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._229 = alloca ptr, align 8
  %var._194 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.arg = alloca ptr, align 8
  %loop.step.37 = alloca i64, align 8
  %loop.idx.37 = alloca i64, align 8
  %var.c = alloca ptr, align 8
  %var._59 = alloca ptr, align 8
  %var.v = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.refs = alloca ptr, align 8
  %var.locals = alloca ptr, align 8
  %var.e = alloca ptr, align 8
  store ptr %0, ptr %var.e, align 8
  store ptr %1, ptr %var.locals, align 8
  store ptr %2, ptr %var.refs, align 8
  %var.load = load ptr, ptr %var.e, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 3
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next1951, %a.after1978, %loop.exit.46, %choice.exit1824, %a.after1802, %a.after1765, %a.after1730, %a.after1695, %a.after1657, %a.after1622, %a.after1585, %a.after1550, %loop.exit.45, %a.after1461, %choice.exit1324, %a.after1269, %a.after1203, %a.after1137, %a.after1070, %a.after1004, %loop.exit.43, %loop.exit.40, %loop.exit.39, %a.after448, %a.after317, %a.after280, %loop.exit.37, %choice.exit34
  ret void

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.v, align 8
  %var.load1 = load ptr, ptr %var.v, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %eq.lhs.len2 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len3 = and i64 %eq.lhs.len2, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.next:                                      ; preds = %entry
  %tag.gep54 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id55 = load i64, ptr %tag.gep54, align 8
  %tag.match56 = icmp eq i64 %tag.id55, 9
  br i1 %tag.match56, label %choice.case52, label %choice.next53

str_gen_check:                                    ; preds = %choice.case
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.case
  %eq.rhs.len = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len4 = and i64 %eq.rhs.len, 281474976710655
  %str.tag5 = lshr i64 %eq.rhs.len, 48
  %str.immortal6 = icmp eq i64 %str.tag5, 0
  br i1 %str.immortal6, label %str_ok8, label %str_gen_check7

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
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
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok8

str.eq.then:                                      ; preds = %str_ok8
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %eq.lhs.data12 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data12, ptr %eq.rhs.data, i64 %eq.lhs.len3)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok8
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.33.then, label %and.33.else

and.33.then:                                      ; preds = %str.eq.merge
  %var.load13 = load ptr, ptr %var.locals, align 8
  %a.load = load ptr, ptr %var.locals, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

and.33.else:                                      ; preds = %str.eq.merge
  br label %and.33.exit

and.33.exit:                                      ; preds = %and.33.else, %a.after
  %and.33.phi = phi i1 [ %nottmp, %a.after ], [ %str.neq, %and.33.else ]
  br i1 %and.33.phi, label %and.34.then, label %and.34.else

a.create:                                         ; preds = %and.33.then
  %arena.cur14 = call ptr @dva_arena_current()
  %a.create15 = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 24)
  %arena.cur16 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create15, ptr %var.locals, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %and.33.then
  %a.load2 = load ptr, ptr %var.locals, align 8
  %var.load17 = load ptr, ptr %var.v, align 8
  %call.res = call i1 @"dep_graph::has_name"(ptr %a.load2, ptr %var.load17)
  %nottmp = xor i1 %call.res, true
  br label %and.33.exit

and.34.then:                                      ; preds = %and.33.exit
  %var.load18 = load ptr, ptr %var.refs, align 8
  %a.load19 = load ptr, ptr %var.refs, align 8
  %a.null20 = icmp eq ptr %a.load19, null
  br i1 %a.null20, label %a.create21, label %a.after22

and.34.else:                                      ; preds = %and.33.exit
  br label %and.34.exit

and.34.exit:                                      ; preds = %and.34.else, %a.after22
  %and.34.phi = phi i1 [ %nottmp33, %a.after22 ], [ %and.33.phi, %and.34.else ]
  br i1 %and.34.phi, label %choice.then, label %choice.exit34

a.create21:                                       ; preds = %and.34.then
  %arena.cur23 = call ptr @dva_arena_current()
  %a.create24 = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 24)
  %arena.cur25 = call ptr @dva_arena_current()
  %a.buf26 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 128)
  %a.len.gep27 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create24, i32 0, i32 0
  store i64 0, ptr %a.len.gep27, align 8
  %a.data.gep28 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create24, i32 0, i32 1
  store ptr %a.buf26, ptr %a.data.gep28, align 8
  %a.cap.gep29 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create24, i32 0, i32 2
  store i64 16, ptr %a.cap.gep29, align 8
  store ptr %a.create24, ptr %var.refs, align 8
  br label %a.after22

a.after22:                                        ; preds = %a.create21, %and.34.then
  %a.load230 = load ptr, ptr %var.refs, align 8
  %var.load31 = load ptr, ptr %var.v, align 8
  %call.res32 = call i1 @"dep_graph::has_name"(ptr %a.load230, ptr %var.load31)
  %nottmp33 = xor i1 %call.res32, true
  br label %and.34.exit

choice.then:                                      ; preds = %and.34.exit
  %var.load35 = load ptr, ptr %var.v, align 8
  %a.load36 = load ptr, ptr %var.refs, align 8
  %a.null37 = icmp eq ptr %a.load36, null
  br i1 %a.null37, label %a.create38, label %a.after39

choice.exit34:                                    ; preds = %a.store, %and.34.exit
  br label %choice.exit

a.create38:                                       ; preds = %choice.then
  %arena.cur40 = call ptr @dva_arena_current()
  %a.create41 = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 24)
  %arena.cur42 = call ptr @dva_arena_current()
  %a.buf43 = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 128)
  %a.len.gep44 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create41, i32 0, i32 0
  store i64 0, ptr %a.len.gep44, align 8
  %a.data.gep45 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create41, i32 0, i32 1
  store ptr %a.buf43, ptr %a.data.gep45, align 8
  %a.cap.gep46 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create41, i32 0, i32 2
  store i64 16, ptr %a.cap.gep46, align 8
  store ptr %a.create41, ptr %var.refs, align 8
  br label %a.after39

a.after39:                                        ; preds = %a.create38, %choice.then
  %a.load247 = load ptr, ptr %var.refs, align 8
  br label %a.check

a.check:                                          ; preds = %a.after39
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load247, i32 0, i32 0
  %a.len48 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load247, i32 0, i32 2
  %a.cap49 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len48, %a.cap49
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load247)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load247, i32 0, i32 1
  %a.cur.data50 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load247, i32 0, i32 0
  %a.cur.len51 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data50, i64 %a.cur.len51
  %slot.p2i = ptrtoint ptr %var.load35 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len51, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load247, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit34

choice.case52:                                    ; preds = %choice.next
  %pay.gep57 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr58 = load ptr, ptr %pay.gep57, align 8
  store ptr %payload.ptr58, ptr %var._59, align 8
  store ptr %payload.ptr58, ptr %var.c, align 8
  %var.load60 = load ptr, ptr %var.c, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load60, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len61 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len62 = load i64, ptr %eq.lhs.len61, align 8
  %eq.lhs.len63 = and i64 %eq.lhs.len62, 281474976710655
  %str.tag64 = lshr i64 %eq.lhs.len62, 48
  %str.immortal65 = icmp eq i64 %str.tag64, 0
  br i1 %str.immortal65, label %str_ok67, label %str_gen_check66

choice.next53:                                    ; preds = %choice.next
  %tag.gep224 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id225 = load i64, ptr %tag.gep224, align 8
  %tag.match226 = icmp eq i64 %tag.id225, 5
  br i1 %tag.match226, label %choice.case222, label %choice.next223

str_gen_check66:                                  ; preds = %choice.case52
  %arena.cur69 = call ptr @dva_arena_current()
  %tag.valid70 = call i1 @dva_arena_validate_tag(ptr %arena.cur69, i64 %str.tag64)
  br i1 %tag.valid70, label %str_ok67, label %str_stale68

str_ok67:                                         ; preds = %str_stale68, %str_gen_check66, %choice.case52
  %eq.rhs.len71 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len72 = and i64 %eq.rhs.len71, 281474976710655
  %str.tag73 = lshr i64 %eq.rhs.len71, 48
  %str.immortal74 = icmp eq i64 %str.tag73, 0
  br i1 %str.immortal74, label %str_ok76, label %str_gen_check75

str_stale68:                                      ; preds = %str_gen_check66
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok67

str_gen_check75:                                  ; preds = %str_ok67
  %arena.cur78 = call ptr @dva_arena_current()
  %tag.valid79 = call i1 @dva_arena_validate_tag(ptr %arena.cur78, i64 %str.tag73)
  br i1 %tag.valid79, label %str_ok76, label %str_stale77

str_ok76:                                         ; preds = %str_stale77, %str_gen_check75, %str_ok67
  %eq.len80 = icmp eq i64 %eq.lhs.len63, %eq.rhs.len72
  br i1 %eq.len80, label %str.eq.then81, label %str.eq.else82

str_stale77:                                      ; preds = %str_gen_check75
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok76

str.eq.then81:                                    ; preds = %str_ok76
  %eq.lhs.data84 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data85 = load ptr, ptr %eq.lhs.data84, align 8
  %eq.rhs.data86 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp87 = call i32 @memcmp(ptr %eq.lhs.data85, ptr %eq.rhs.data86, i64 %eq.lhs.len63)
  %eq.cmp.zero88 = icmp eq i32 %eq.memcmp87, 0
  br label %str.eq.merge83

str.eq.else82:                                    ; preds = %str_ok76
  br label %str.eq.merge83

str.eq.merge83:                                   ; preds = %str.eq.else82, %str.eq.then81
  %str.eq.result89 = phi i1 [ %eq.cmp.zero88, %str.eq.then81 ], [ false, %str.eq.else82 ]
  %str.neq90 = xor i1 %str.eq.result89, true
  br i1 %str.neq90, label %and.35.then, label %and.35.else

and.35.then:                                      ; preds = %str.eq.merge83
  %var.load91 = load ptr, ptr %var.locals, align 8
  %a.load92 = load ptr, ptr %var.locals, align 8
  %a.null93 = icmp eq ptr %a.load92, null
  br i1 %a.null93, label %a.create94, label %a.after95

and.35.else:                                      ; preds = %str.eq.merge83
  br label %and.35.exit

and.35.exit:                                      ; preds = %and.35.else, %a.after95
  %and.35.phi = phi i1 [ %nottmp108, %a.after95 ], [ %str.neq90, %and.35.else ]
  br i1 %and.35.phi, label %and.36.then, label %and.36.else

a.create94:                                       ; preds = %and.35.then
  %arena.cur96 = call ptr @dva_arena_current()
  %a.create97 = call ptr @dva_arena_alloc(ptr %arena.cur96, i64 24)
  %arena.cur98 = call ptr @dva_arena_current()
  %a.buf99 = call ptr @dva_arena_alloc(ptr %arena.cur98, i64 128)
  %a.len.gep100 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create97, i32 0, i32 0
  store i64 0, ptr %a.len.gep100, align 8
  %a.data.gep101 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create97, i32 0, i32 1
  store ptr %a.buf99, ptr %a.data.gep101, align 8
  %a.cap.gep102 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create97, i32 0, i32 2
  store i64 16, ptr %a.cap.gep102, align 8
  store ptr %a.create97, ptr %var.locals, align 8
  br label %a.after95

a.after95:                                        ; preds = %a.create94, %and.35.then
  %a.load2103 = load ptr, ptr %var.locals, align 8
  %var.load104 = load ptr, ptr %var.c, align 8
  %fld.gep105 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load104, i32 0, i32 0
  %fld.load106 = load ptr, ptr %fld.gep105, align 8
  %call.res107 = call i1 @"dep_graph::has_name"(ptr %a.load2103, ptr %fld.load106)
  %nottmp108 = xor i1 %call.res107, true
  br label %and.35.exit

and.36.then:                                      ; preds = %and.35.exit
  %var.load109 = load ptr, ptr %var.refs, align 8
  %a.load110 = load ptr, ptr %var.refs, align 8
  %a.null111 = icmp eq ptr %a.load110, null
  br i1 %a.null111, label %a.create112, label %a.after113

and.36.else:                                      ; preds = %and.35.exit
  br label %and.36.exit

and.36.exit:                                      ; preds = %and.36.else, %a.after113
  %and.36.phi = phi i1 [ %nottmp126, %a.after113 ], [ %and.35.phi, %and.36.else ]
  br i1 %and.36.phi, label %choice.then127, label %choice.exit128

a.create112:                                      ; preds = %and.36.then
  %arena.cur114 = call ptr @dva_arena_current()
  %a.create115 = call ptr @dva_arena_alloc(ptr %arena.cur114, i64 24)
  %arena.cur116 = call ptr @dva_arena_current()
  %a.buf117 = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 128)
  %a.len.gep118 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create115, i32 0, i32 0
  store i64 0, ptr %a.len.gep118, align 8
  %a.data.gep119 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create115, i32 0, i32 1
  store ptr %a.buf117, ptr %a.data.gep119, align 8
  %a.cap.gep120 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create115, i32 0, i32 2
  store i64 16, ptr %a.cap.gep120, align 8
  store ptr %a.create115, ptr %var.refs, align 8
  br label %a.after113

a.after113:                                       ; preds = %a.create112, %and.36.then
  %a.load2121 = load ptr, ptr %var.refs, align 8
  %var.load122 = load ptr, ptr %var.c, align 8
  %fld.gep123 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load122, i32 0, i32 0
  %fld.load124 = load ptr, ptr %fld.gep123, align 8
  %call.res125 = call i1 @"dep_graph::has_name"(ptr %a.load2121, ptr %fld.load124)
  %nottmp126 = xor i1 %call.res125, true
  br label %and.36.exit

choice.then127:                                   ; preds = %and.36.exit
  %var.load129 = load ptr, ptr %var.c, align 8
  %fld.gep130 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load129, i32 0, i32 0
  %fld.load131 = load ptr, ptr %fld.gep130, align 8
  %a.load132 = load ptr, ptr %var.refs, align 8
  %a.null133 = icmp eq ptr %a.load132, null
  br i1 %a.null133, label %a.create134, label %a.after135

choice.exit128:                                   ; preds = %a.store146, %and.36.exit
  %var.load160 = load ptr, ptr %var.c, align 8
  %fld.gep161 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load160, i32 0, i32 1
  %fld.load162 = load ptr, ptr %fld.gep161, align 8
  %var.load163 = load ptr, ptr %var.locals, align 8
  %a.load164 = load ptr, ptr %var.locals, align 8
  %a.null165 = icmp eq ptr %a.load164, null
  br i1 %a.null165, label %a.create166, label %a.after167

a.create134:                                      ; preds = %choice.then127
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
  store ptr %a.create137, ptr %var.refs, align 8
  br label %a.after135

a.after135:                                       ; preds = %a.create134, %choice.then127
  %a.load2143 = load ptr, ptr %var.refs, align 8
  br label %a.check144

a.check144:                                       ; preds = %a.after135
  %a.len147 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2143, i32 0, i32 0
  %a.len148 = load i64, ptr %a.len147, align 8
  %a.cap149 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2143, i32 0, i32 2
  %a.cap150 = load i64, ptr %a.cap149, align 8
  %a.needs.grow151 = icmp eq i64 %a.len148, %a.cap150
  br i1 %a.needs.grow151, label %a.grow145, label %a.store146

a.grow145:                                        ; preds = %a.check144
  call void @dva_array_grow(ptr %a.load2143)
  br label %a.store146

a.store146:                                       ; preds = %a.grow145, %a.check144
  %a.cur.data152 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2143, i32 0, i32 1
  %a.cur.data153 = load ptr, ptr %a.cur.data152, align 8
  %a.cur.len154 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2143, i32 0, i32 0
  %a.cur.len155 = load i64, ptr %a.cur.len154, align 8
  %a.elem.gep156 = getelementptr i64, ptr %a.cur.data153, i64 %a.cur.len155
  %slot.p2i157 = ptrtoint ptr %fld.load131 to i64
  store i64 %slot.p2i157, ptr %a.elem.gep156, align 8
  %a.next.len158 = add i64 %a.cur.len155, 1
  %b.len.gep159 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2143, i32 0, i32 0
  store i64 %a.next.len158, ptr %b.len.gep159, align 8
  br label %choice.exit128

a.create166:                                      ; preds = %choice.exit128
  %arena.cur168 = call ptr @dva_arena_current()
  %a.create169 = call ptr @dva_arena_alloc(ptr %arena.cur168, i64 24)
  %arena.cur170 = call ptr @dva_arena_current()
  %a.buf171 = call ptr @dva_arena_alloc(ptr %arena.cur170, i64 128)
  %a.len.gep172 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create169, i32 0, i32 0
  store i64 0, ptr %a.len.gep172, align 8
  %a.data.gep173 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create169, i32 0, i32 1
  store ptr %a.buf171, ptr %a.data.gep173, align 8
  %a.cap.gep174 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create169, i32 0, i32 2
  store i64 16, ptr %a.cap.gep174, align 8
  store ptr %a.create169, ptr %var.locals, align 8
  br label %a.after167

a.after167:                                       ; preds = %a.create166, %choice.exit128
  %a.load2175 = load ptr, ptr %var.locals, align 8
  %var.load176 = load ptr, ptr %var.refs, align 8
  %a.load177 = load ptr, ptr %var.refs, align 8
  %a.null178 = icmp eq ptr %a.load177, null
  br i1 %a.null178, label %a.create179, label %a.after180

a.create179:                                      ; preds = %a.after167
  %arena.cur181 = call ptr @dva_arena_current()
  %a.create182 = call ptr @dva_arena_alloc(ptr %arena.cur181, i64 24)
  %arena.cur183 = call ptr @dva_arena_current()
  %a.buf184 = call ptr @dva_arena_alloc(ptr %arena.cur183, i64 128)
  %a.len.gep185 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create182, i32 0, i32 0
  store i64 0, ptr %a.len.gep185, align 8
  %a.data.gep186 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create182, i32 0, i32 1
  store ptr %a.buf184, ptr %a.data.gep186, align 8
  %a.cap.gep187 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create182, i32 0, i32 2
  store i64 16, ptr %a.cap.gep187, align 8
  store ptr %a.create182, ptr %var.refs, align 8
  br label %a.after180

a.after180:                                       ; preds = %a.create179, %a.after167
  %a.load2188 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load162, ptr %a.load2175, ptr %a.load2188)
  %var.load189 = load ptr, ptr %var.c, align 8
  %fld.gep190 = getelementptr inbounds { ptr, ptr, ptr, i64, i64 }, ptr %var.load189, i32 0, i32 2
  %fld.load191 = load ptr, ptr %fld.gep190, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load191, i32 0, i32 0
  %arr.cycle.len192 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load191, i32 0, i32 1
  %arr.cycle.data193 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.37, align 8
  %cycle.prev.u = load ptr, ptr %var._59, align 8
  br label %loop.header.37

loop.header.37:                                   ; preds = %loop.latch.37, %a.after180
  %counter.load = load i64, ptr %loop.idx.37, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len192
  br i1 %loop.cond, label %loop.body.37, label %loop.exit.nat.37

loop.body.37:                                     ; preds = %loop.header.37
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.37, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data193, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._194, align 8
  store ptr %slot.i2p, ptr %var.arg, align 8
  %var.load195 = load ptr, ptr %var.arg, align 8
  %var.load196 = load ptr, ptr %var.locals, align 8
  %a.load197 = load ptr, ptr %var.locals, align 8
  %a.null198 = icmp eq ptr %a.load197, null
  br i1 %a.null198, label %a.create199, label %a.after200

loop.exit.nat.37:                                 ; preds = %loop.header.37
  br label %loop.exit.37

loop.latch.37:                                    ; preds = %a.after213
  %step.val = load i64, ptr %loop.step.37, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.37, align 8
  br label %loop.header.37

loop.exit.37:                                     ; preds = %loop.exit.nat.37
  store ptr %cycle.prev.u, ptr %var._59, align 8
  br label %choice.exit

a.create199:                                      ; preds = %loop.body.37
  %arena.cur201 = call ptr @dva_arena_current()
  %a.create202 = call ptr @dva_arena_alloc(ptr %arena.cur201, i64 24)
  %arena.cur203 = call ptr @dva_arena_current()
  %a.buf204 = call ptr @dva_arena_alloc(ptr %arena.cur203, i64 128)
  %a.len.gep205 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create202, i32 0, i32 0
  store i64 0, ptr %a.len.gep205, align 8
  %a.data.gep206 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create202, i32 0, i32 1
  store ptr %a.buf204, ptr %a.data.gep206, align 8
  %a.cap.gep207 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create202, i32 0, i32 2
  store i64 16, ptr %a.cap.gep207, align 8
  store ptr %a.create202, ptr %var.locals, align 8
  br label %a.after200

a.after200:                                       ; preds = %a.create199, %loop.body.37
  %a.load2208 = load ptr, ptr %var.locals, align 8
  %var.load209 = load ptr, ptr %var.refs, align 8
  %a.load210 = load ptr, ptr %var.refs, align 8
  %a.null211 = icmp eq ptr %a.load210, null
  br i1 %a.null211, label %a.create212, label %a.after213

a.create212:                                      ; preds = %a.after200
  %arena.cur214 = call ptr @dva_arena_current()
  %a.create215 = call ptr @dva_arena_alloc(ptr %arena.cur214, i64 24)
  %arena.cur216 = call ptr @dva_arena_current()
  %a.buf217 = call ptr @dva_arena_alloc(ptr %arena.cur216, i64 128)
  %a.len.gep218 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create215, i32 0, i32 0
  store i64 0, ptr %a.len.gep218, align 8
  %a.data.gep219 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create215, i32 0, i32 1
  store ptr %a.buf217, ptr %a.data.gep219, align 8
  %a.cap.gep220 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create215, i32 0, i32 2
  store i64 16, ptr %a.cap.gep220, align 8
  store ptr %a.create215, ptr %var.refs, align 8
  br label %a.after213

a.after213:                                       ; preds = %a.create212, %a.after200
  %a.load2221 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load195, ptr %a.load2208, ptr %a.load2221)
  br label %loop.latch.37

choice.case222:                                   ; preds = %choice.next53
  %pay.gep227 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr228 = load ptr, ptr %pay.gep227, align 8
  store ptr %payload.ptr228, ptr %var._229, align 8
  store ptr %payload.ptr228, ptr %var.b, align 8
  %var.load230 = load ptr, ptr %var.b, align 8
  %fld.gep231 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load230, i32 0, i32 1
  %fld.load232 = load ptr, ptr %fld.gep231, align 8
  %var.load233 = load ptr, ptr %var.locals, align 8
  %a.load234 = load ptr, ptr %var.locals, align 8
  %a.null235 = icmp eq ptr %a.load234, null
  br i1 %a.null235, label %a.create236, label %a.after237

choice.next223:                                   ; preds = %choice.next53
  %tag.gep291 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id292 = load i64, ptr %tag.gep291, align 8
  %tag.match293 = icmp eq i64 %tag.id292, 24
  br i1 %tag.match293, label %choice.case289, label %choice.next290

a.create236:                                      ; preds = %choice.case222
  %arena.cur238 = call ptr @dva_arena_current()
  %a.create239 = call ptr @dva_arena_alloc(ptr %arena.cur238, i64 24)
  %arena.cur240 = call ptr @dva_arena_current()
  %a.buf241 = call ptr @dva_arena_alloc(ptr %arena.cur240, i64 128)
  %a.len.gep242 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create239, i32 0, i32 0
  store i64 0, ptr %a.len.gep242, align 8
  %a.data.gep243 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create239, i32 0, i32 1
  store ptr %a.buf241, ptr %a.data.gep243, align 8
  %a.cap.gep244 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create239, i32 0, i32 2
  store i64 16, ptr %a.cap.gep244, align 8
  store ptr %a.create239, ptr %var.locals, align 8
  br label %a.after237

a.after237:                                       ; preds = %a.create236, %choice.case222
  %a.load2245 = load ptr, ptr %var.locals, align 8
  %var.load246 = load ptr, ptr %var.refs, align 8
  %a.load248 = load ptr, ptr %var.refs, align 8
  %a.null249 = icmp eq ptr %a.load248, null
  br i1 %a.null249, label %a.create250, label %a.after251

a.create250:                                      ; preds = %a.after237
  %arena.cur252 = call ptr @dva_arena_current()
  %a.create253 = call ptr @dva_arena_alloc(ptr %arena.cur252, i64 24)
  %arena.cur254 = call ptr @dva_arena_current()
  %a.buf255 = call ptr @dva_arena_alloc(ptr %arena.cur254, i64 128)
  %a.len.gep256 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create253, i32 0, i32 0
  store i64 0, ptr %a.len.gep256, align 8
  %a.data.gep257 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create253, i32 0, i32 1
  store ptr %a.buf255, ptr %a.data.gep257, align 8
  %a.cap.gep258 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create253, i32 0, i32 2
  store i64 16, ptr %a.cap.gep258, align 8
  store ptr %a.create253, ptr %var.refs, align 8
  br label %a.after251

a.after251:                                       ; preds = %a.create250, %a.after237
  %a.load2259 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load232, ptr %a.load2245, ptr %a.load2259)
  %var.load260 = load ptr, ptr %var.b, align 8
  %fld.gep261 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load260, i32 0, i32 2
  %fld.load262 = load ptr, ptr %fld.gep261, align 8
  %var.load263 = load ptr, ptr %var.locals, align 8
  %a.load264 = load ptr, ptr %var.locals, align 8
  %a.null265 = icmp eq ptr %a.load264, null
  br i1 %a.null265, label %a.create266, label %a.after267

a.create266:                                      ; preds = %a.after251
  %arena.cur268 = call ptr @dva_arena_current()
  %a.create269 = call ptr @dva_arena_alloc(ptr %arena.cur268, i64 24)
  %arena.cur270 = call ptr @dva_arena_current()
  %a.buf271 = call ptr @dva_arena_alloc(ptr %arena.cur270, i64 128)
  %a.len.gep272 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create269, i32 0, i32 0
  store i64 0, ptr %a.len.gep272, align 8
  %a.data.gep273 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create269, i32 0, i32 1
  store ptr %a.buf271, ptr %a.data.gep273, align 8
  %a.cap.gep274 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create269, i32 0, i32 2
  store i64 16, ptr %a.cap.gep274, align 8
  store ptr %a.create269, ptr %var.locals, align 8
  br label %a.after267

a.after267:                                       ; preds = %a.create266, %a.after251
  %a.load2275 = load ptr, ptr %var.locals, align 8
  %var.load276 = load ptr, ptr %var.refs, align 8
  %a.load277 = load ptr, ptr %var.refs, align 8
  %a.null278 = icmp eq ptr %a.load277, null
  br i1 %a.null278, label %a.create279, label %a.after280

a.create279:                                      ; preds = %a.after267
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
  store ptr %a.create282, ptr %var.refs, align 8
  br label %a.after280

a.after280:                                       ; preds = %a.create279, %a.after267
  %a.load2288 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load262, ptr %a.load2275, ptr %a.load2288)
  br label %choice.exit

choice.case289:                                   ; preds = %choice.next223
  %pay.gep294 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr295 = load ptr, ptr %pay.gep294, align 8
  store ptr %payload.ptr295, ptr %var._296, align 8
  store ptr %payload.ptr295, ptr %var.u, align 8
  %var.load297 = load ptr, ptr %var.u, align 8
  %fld.gep298 = getelementptr inbounds { ptr, ptr }, ptr %var.load297, i32 0, i32 1
  %fld.load299 = load ptr, ptr %fld.gep298, align 8
  %var.load300 = load ptr, ptr %var.locals, align 8
  %a.load301 = load ptr, ptr %var.locals, align 8
  %a.null302 = icmp eq ptr %a.load301, null
  br i1 %a.null302, label %a.create303, label %a.after304

choice.next290:                                   ; preds = %choice.next223
  %tag.gep328 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id329 = load i64, ptr %tag.gep328, align 8
  %tag.match330 = icmp eq i64 %tag.id329, 14
  br i1 %tag.match330, label %choice.case326, label %choice.next327

a.create303:                                      ; preds = %choice.case289
  %arena.cur305 = call ptr @dva_arena_current()
  %a.create306 = call ptr @dva_arena_alloc(ptr %arena.cur305, i64 24)
  %arena.cur307 = call ptr @dva_arena_current()
  %a.buf308 = call ptr @dva_arena_alloc(ptr %arena.cur307, i64 128)
  %a.len.gep309 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create306, i32 0, i32 0
  store i64 0, ptr %a.len.gep309, align 8
  %a.data.gep310 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create306, i32 0, i32 1
  store ptr %a.buf308, ptr %a.data.gep310, align 8
  %a.cap.gep311 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create306, i32 0, i32 2
  store i64 16, ptr %a.cap.gep311, align 8
  store ptr %a.create306, ptr %var.locals, align 8
  br label %a.after304

a.after304:                                       ; preds = %a.create303, %choice.case289
  %a.load2312 = load ptr, ptr %var.locals, align 8
  %var.load313 = load ptr, ptr %var.refs, align 8
  %a.load314 = load ptr, ptr %var.refs, align 8
  %a.null315 = icmp eq ptr %a.load314, null
  br i1 %a.null315, label %a.create316, label %a.after317

a.create316:                                      ; preds = %a.after304
  %arena.cur318 = call ptr @dva_arena_current()
  %a.create319 = call ptr @dva_arena_alloc(ptr %arena.cur318, i64 24)
  %arena.cur320 = call ptr @dva_arena_current()
  %a.buf321 = call ptr @dva_arena_alloc(ptr %arena.cur320, i64 128)
  %a.len.gep322 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create319, i32 0, i32 0
  store i64 0, ptr %a.len.gep322, align 8
  %a.data.gep323 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create319, i32 0, i32 1
  store ptr %a.buf321, ptr %a.data.gep323, align 8
  %a.cap.gep324 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create319, i32 0, i32 2
  store i64 16, ptr %a.cap.gep324, align 8
  store ptr %a.create319, ptr %var.refs, align 8
  br label %a.after317

a.after317:                                       ; preds = %a.create316, %a.after304
  %a.load2325 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load299, ptr %a.load2312, ptr %a.load2325)
  br label %choice.exit

choice.case326:                                   ; preds = %choice.next290
  %pay.gep331 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr332 = load ptr, ptr %pay.gep331, align 8
  store ptr %payload.ptr332, ptr %var._333, align 8
  store ptr %payload.ptr332, ptr %var.fe, align 8
  %var.load334 = load ptr, ptr %var.locals, align 8
  %a.load335 = load ptr, ptr %var.locals, align 8
  %a.null336 = icmp eq ptr %a.load335, null
  br i1 %a.null336, label %a.create337, label %a.after338

choice.next327:                                   ; preds = %choice.next290
  %tag.gep459 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id460 = load i64, ptr %tag.gep459, align 8
  %tag.match461 = icmp eq i64 %tag.id460, 8
  br i1 %tag.match461, label %choice.case457, label %choice.next458

a.create337:                                      ; preds = %choice.case326
  %arena.cur339 = call ptr @dva_arena_current()
  %a.create340 = call ptr @dva_arena_alloc(ptr %arena.cur339, i64 24)
  %arena.cur341 = call ptr @dva_arena_current()
  %a.buf342 = call ptr @dva_arena_alloc(ptr %arena.cur341, i64 128)
  %a.len.gep343 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create340, i32 0, i32 0
  store i64 0, ptr %a.len.gep343, align 8
  %a.data.gep344 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create340, i32 0, i32 1
  store ptr %a.buf342, ptr %a.data.gep344, align 8
  %a.cap.gep345 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create340, i32 0, i32 2
  store i64 16, ptr %a.cap.gep345, align 8
  store ptr %a.create340, ptr %var.locals, align 8
  br label %a.after338

a.after338:                                       ; preds = %a.create337, %choice.case326
  %a.load2346 = load ptr, ptr %var.locals, align 8
  %call.res347 = call ptr @"dep_graph::copy_names"(ptr %a.load2346)
  store ptr %call.res347, ptr %var.fn_locals, align 8
  %var.load348 = load ptr, ptr %var.fe, align 8
  %fld.gep349 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load348, i32 0, i32 0
  %fld.load350 = load ptr, ptr %fld.gep349, align 8
  %arr.cycle.len351 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load350, i32 0, i32 0
  %arr.cycle.len352 = load i64, ptr %arr.cycle.len351, align 8
  %arr.cycle.data353 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load350, i32 0, i32 1
  %arr.cycle.data354 = load ptr, ptr %arr.cycle.data353, align 8
  store i64 0, ptr %loop.idx.38, align 8
  %cycle.prev.u355 = load ptr, ptr %var._333, align 8
  br label %loop.header.38

loop.header.38:                                   ; preds = %loop.latch.38, %a.after338
  %counter.load356 = load i64, ptr %loop.idx.38, align 8
  %loop.cond357 = icmp slt i64 %counter.load356, %arr.cycle.len352
  br i1 %loop.cond357, label %loop.body.38, label %loop.exit.nat.38

loop.body.38:                                     ; preds = %loop.header.38
  %loop.rel.i358 = sub i64 %counter.load356, 0
  store i64 1, ptr %loop.step.38, align 8
  %arr.elem.gep359 = getelementptr i64, ptr %arr.cycle.data354, i64 %counter.load356
  %arr.elem.raw360 = load i64, ptr %arr.elem.gep359, align 8
  %slot.i2p361 = inttoptr i64 %arr.elem.raw360 to ptr
  store i64 %loop.rel.i358, ptr %var._i362, align 8
  store ptr %slot.i2p361, ptr %var._363, align 8
  store ptr %slot.i2p361, ptr %var.p, align 8
  %var.load364 = load ptr, ptr %var.p, align 8
  %eq.lhs.len365 = getelementptr inbounds { i64, ptr }, ptr %var.load364, i32 0, i32 0
  %eq.lhs.len366 = load i64, ptr %eq.lhs.len365, align 8
  %eq.lhs.len367 = and i64 %eq.lhs.len366, 281474976710655
  %str.tag368 = lshr i64 %eq.lhs.len366, 48
  %str.immortal369 = icmp eq i64 %str.tag368, 0
  br i1 %str.immortal369, label %str_ok371, label %str_gen_check370

loop.exit.nat.38:                                 ; preds = %loop.header.38
  br label %loop.exit.38

loop.latch.38:                                    ; preds = %choice.exit396
  %step.val426 = load i64, ptr %loop.step.38, align 8
  %loop.next427 = add i64 %counter.load356, %step.val426
  store i64 %loop.next427, ptr %loop.idx.38, align 8
  br label %loop.header.38

loop.exit.38:                                     ; preds = %loop.exit.nat.38
  store ptr %cycle.prev.u355, ptr %var._333, align 8
  %var.load428 = load ptr, ptr %var.fe, align 8
  %fld.gep429 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load428, i32 0, i32 2
  %fld.load430 = load ptr, ptr %fld.gep429, align 8
  %var.load431 = load ptr, ptr %var.fn_locals, align 8
  %a.load432 = load ptr, ptr %var.fn_locals, align 8
  %a.null433 = icmp eq ptr %a.load432, null
  br i1 %a.null433, label %a.create434, label %a.after435

str_gen_check370:                                 ; preds = %loop.body.38
  %arena.cur373 = call ptr @dva_arena_current()
  %tag.valid374 = call i1 @dva_arena_validate_tag(ptr %arena.cur373, i64 %str.tag368)
  br i1 %tag.valid374, label %str_ok371, label %str_stale372

str_ok371:                                        ; preds = %str_stale372, %str_gen_check370, %loop.body.38
  %eq.rhs.len375 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len376 = and i64 %eq.rhs.len375, 281474976710655
  %str.tag377 = lshr i64 %eq.rhs.len375, 48
  %str.immortal378 = icmp eq i64 %str.tag377, 0
  br i1 %str.immortal378, label %str_ok380, label %str_gen_check379

str_stale372:                                     ; preds = %str_gen_check370
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok371

str_gen_check379:                                 ; preds = %str_ok371
  %arena.cur382 = call ptr @dva_arena_current()
  %tag.valid383 = call i1 @dva_arena_validate_tag(ptr %arena.cur382, i64 %str.tag377)
  br i1 %tag.valid383, label %str_ok380, label %str_stale381

str_ok380:                                        ; preds = %str_stale381, %str_gen_check379, %str_ok371
  %eq.len384 = icmp eq i64 %eq.lhs.len367, %eq.rhs.len376
  br i1 %eq.len384, label %str.eq.then385, label %str.eq.else386

str_stale381:                                     ; preds = %str_gen_check379
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok380

str.eq.then385:                                   ; preds = %str_ok380
  %eq.lhs.data388 = getelementptr inbounds { i64, ptr }, ptr %var.load364, i32 0, i32 1
  %eq.lhs.data389 = load ptr, ptr %eq.lhs.data388, align 8
  %eq.rhs.data390 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp391 = call i32 @memcmp(ptr %eq.lhs.data389, ptr %eq.rhs.data390, i64 %eq.lhs.len367)
  %eq.cmp.zero392 = icmp eq i32 %eq.memcmp391, 0
  br label %str.eq.merge387

str.eq.else386:                                   ; preds = %str_ok380
  br label %str.eq.merge387

str.eq.merge387:                                  ; preds = %str.eq.else386, %str.eq.then385
  %str.eq.result393 = phi i1 [ %eq.cmp.zero392, %str.eq.then385 ], [ false, %str.eq.else386 ]
  %str.neq394 = xor i1 %str.eq.result393, true
  br i1 %str.neq394, label %choice.then395, label %choice.exit396

choice.then395:                                   ; preds = %str.eq.merge387
  %var.load397 = load ptr, ptr %var.p, align 8
  %a.load398 = load ptr, ptr %var.fn_locals, align 8
  %a.null399 = icmp eq ptr %a.load398, null
  br i1 %a.null399, label %a.create400, label %a.after401

choice.exit396:                                   ; preds = %a.store412, %str.eq.merge387
  br label %loop.latch.38

a.create400:                                      ; preds = %choice.then395
  %arena.cur402 = call ptr @dva_arena_current()
  %a.create403 = call ptr @dva_arena_alloc(ptr %arena.cur402, i64 24)
  %arena.cur404 = call ptr @dva_arena_current()
  %a.buf405 = call ptr @dva_arena_alloc(ptr %arena.cur404, i64 128)
  %a.len.gep406 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create403, i32 0, i32 0
  store i64 0, ptr %a.len.gep406, align 8
  %a.data.gep407 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create403, i32 0, i32 1
  store ptr %a.buf405, ptr %a.data.gep407, align 8
  %a.cap.gep408 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create403, i32 0, i32 2
  store i64 16, ptr %a.cap.gep408, align 8
  store ptr %a.create403, ptr %var.fn_locals, align 8
  br label %a.after401

a.after401:                                       ; preds = %a.create400, %choice.then395
  %a.load2409 = load ptr, ptr %var.fn_locals, align 8
  br label %a.check410

a.check410:                                       ; preds = %a.after401
  %a.len413 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2409, i32 0, i32 0
  %a.len414 = load i64, ptr %a.len413, align 8
  %a.cap415 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2409, i32 0, i32 2
  %a.cap416 = load i64, ptr %a.cap415, align 8
  %a.needs.grow417 = icmp eq i64 %a.len414, %a.cap416
  br i1 %a.needs.grow417, label %a.grow411, label %a.store412

a.grow411:                                        ; preds = %a.check410
  call void @dva_array_grow(ptr %a.load2409)
  br label %a.store412

a.store412:                                       ; preds = %a.grow411, %a.check410
  %a.cur.data418 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2409, i32 0, i32 1
  %a.cur.data419 = load ptr, ptr %a.cur.data418, align 8
  %a.cur.len420 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2409, i32 0, i32 0
  %a.cur.len421 = load i64, ptr %a.cur.len420, align 8
  %a.elem.gep422 = getelementptr i64, ptr %a.cur.data419, i64 %a.cur.len421
  %slot.p2i423 = ptrtoint ptr %var.load397 to i64
  store i64 %slot.p2i423, ptr %a.elem.gep422, align 8
  %a.next.len424 = add i64 %a.cur.len421, 1
  %b.len.gep425 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2409, i32 0, i32 0
  store i64 %a.next.len424, ptr %b.len.gep425, align 8
  br label %choice.exit396

a.create434:                                      ; preds = %loop.exit.38
  %arena.cur436 = call ptr @dva_arena_current()
  %a.create437 = call ptr @dva_arena_alloc(ptr %arena.cur436, i64 24)
  %arena.cur438 = call ptr @dva_arena_current()
  %a.buf439 = call ptr @dva_arena_alloc(ptr %arena.cur438, i64 128)
  %a.len.gep440 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create437, i32 0, i32 0
  store i64 0, ptr %a.len.gep440, align 8
  %a.data.gep441 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create437, i32 0, i32 1
  store ptr %a.buf439, ptr %a.data.gep441, align 8
  %a.cap.gep442 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create437, i32 0, i32 2
  store i64 16, ptr %a.cap.gep442, align 8
  store ptr %a.create437, ptr %var.fn_locals, align 8
  br label %a.after435

a.after435:                                       ; preds = %a.create434, %loop.exit.38
  %a.load2443 = load ptr, ptr %var.fn_locals, align 8
  %var.load444 = load ptr, ptr %var.refs, align 8
  %a.load445 = load ptr, ptr %var.refs, align 8
  %a.null446 = icmp eq ptr %a.load445, null
  br i1 %a.null446, label %a.create447, label %a.after448

a.create447:                                      ; preds = %a.after435
  %arena.cur449 = call ptr @dva_arena_current()
  %a.create450 = call ptr @dva_arena_alloc(ptr %arena.cur449, i64 24)
  %arena.cur451 = call ptr @dva_arena_current()
  %a.buf452 = call ptr @dva_arena_alloc(ptr %arena.cur451, i64 128)
  %a.len.gep453 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create450, i32 0, i32 0
  store i64 0, ptr %a.len.gep453, align 8
  %a.data.gep454 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create450, i32 0, i32 1
  store ptr %a.buf452, ptr %a.data.gep454, align 8
  %a.cap.gep455 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create450, i32 0, i32 2
  store i64 16, ptr %a.cap.gep455, align 8
  store ptr %a.create450, ptr %var.refs, align 8
  br label %a.after448

a.after448:                                       ; preds = %a.create447, %a.after435
  %a.load2456 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load430, ptr %a.load2443, ptr %a.load2456)
  br label %choice.exit

choice.case457:                                   ; preds = %choice.next327
  %pay.gep462 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr463 = load ptr, ptr %pay.gep462, align 8
  store ptr %payload.ptr463, ptr %var._464, align 8
  store ptr %payload.ptr463, ptr %var.be, align 8
  %var.load465 = load ptr, ptr %var.locals, align 8
  %a.load466 = load ptr, ptr %var.locals, align 8
  %a.null467 = icmp eq ptr %a.load466, null
  br i1 %a.null467, label %a.create468, label %a.after469

choice.next458:                                   ; preds = %choice.next327
  %tag.gep641 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id642 = load i64, ptr %tag.gep641, align 8
  %tag.match643 = icmp eq i64 %tag.id642, 7
  br i1 %tag.match643, label %choice.case639, label %choice.next640

a.create468:                                      ; preds = %choice.case457
  %arena.cur470 = call ptr @dva_arena_current()
  %a.create471 = call ptr @dva_arena_alloc(ptr %arena.cur470, i64 24)
  %arena.cur472 = call ptr @dva_arena_current()
  %a.buf473 = call ptr @dva_arena_alloc(ptr %arena.cur472, i64 128)
  %a.len.gep474 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create471, i32 0, i32 0
  store i64 0, ptr %a.len.gep474, align 8
  %a.data.gep475 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create471, i32 0, i32 1
  store ptr %a.buf473, ptr %a.data.gep475, align 8
  %a.cap.gep476 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create471, i32 0, i32 2
  store i64 16, ptr %a.cap.gep476, align 8
  store ptr %a.create471, ptr %var.locals, align 8
  br label %a.after469

a.after469:                                       ; preds = %a.create468, %choice.case457
  %a.load2477 = load ptr, ptr %var.locals, align 8
  %call.res478 = call ptr @"dep_graph::copy_names"(ptr %a.load2477)
  store ptr %call.res478, ptr %var.blk_locals, align 8
  %var.load479 = load ptr, ptr %var.be, align 8
  %a.load480 = load ptr, ptr %var.be, align 8
  %a.null481 = icmp eq ptr %a.load480, null
  br i1 %a.null481, label %a.create482, label %a.after483

a.create482:                                      ; preds = %a.after469
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
  store ptr %a.create485, ptr %var.be, align 8
  br label %a.after483

a.after483:                                       ; preds = %a.create482, %a.after469
  %a.load2491 = load ptr, ptr %var.be, align 8
  %arr.cycle.len492 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2491, i32 0, i32 0
  %arr.cycle.len493 = load i64, ptr %arr.cycle.len492, align 8
  %arr.cycle.data494 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2491, i32 0, i32 1
  %arr.cycle.data495 = load ptr, ptr %arr.cycle.data494, align 8
  store i64 0, ptr %loop.idx.39, align 8
  %cycle.prev.u496 = load ptr, ptr %var._464, align 8
  br label %loop.header.39

loop.header.39:                                   ; preds = %loop.latch.39, %a.after483
  %counter.load497 = load i64, ptr %loop.idx.39, align 8
  %loop.cond498 = icmp slt i64 %counter.load497, %arr.cycle.len493
  br i1 %loop.cond498, label %loop.body.39, label %loop.exit.nat.39

loop.body.39:                                     ; preds = %loop.header.39
  %loop.rel.i499 = sub i64 %counter.load497, 0
  store i64 1, ptr %loop.step.39, align 8
  %arr.elem.gep500 = getelementptr i64, ptr %arr.cycle.data495, i64 %counter.load497
  %arr.elem.raw501 = load i64, ptr %arr.elem.gep500, align 8
  %slot.i2p502 = inttoptr i64 %arr.elem.raw501 to ptr
  store i64 %loop.rel.i499, ptr %var._i503, align 8
  store ptr %slot.i2p502, ptr %var._504, align 8
  store ptr %slot.i2p502, ptr %var.st, align 8
  %var.load505 = load ptr, ptr %var.st, align 8
  %tag.gep509 = getelementptr inbounds { i64, ptr }, ptr %var.load505, i32 0, i32 0
  %tag.id510 = load i64, ptr %tag.gep509, align 8
  %tag.match511 = icmp eq i64 %tag.id510, 6
  br i1 %tag.match511, label %choice.case507, label %choice.next508

loop.exit.nat.39:                                 ; preds = %loop.header.39
  br label %loop.exit.39

loop.latch.39:                                    ; preds = %choice.exit506
  %step.val637 = load i64, ptr %loop.step.39, align 8
  %loop.next638 = add i64 %counter.load497, %step.val637
  store i64 %loop.next638, ptr %loop.idx.39, align 8
  br label %loop.header.39

loop.exit.39:                                     ; preds = %loop.exit.nat.39
  store ptr %cycle.prev.u496, ptr %var._464, align 8
  br label %choice.exit

choice.exit506:                                   ; preds = %a.after628, %choice.exit578
  br label %loop.latch.39

choice.case507:                                   ; preds = %loop.body.39
  %pay.gep512 = getelementptr inbounds { i64, ptr }, ptr %var.load505, i32 0, i32 1
  %payload.ptr513 = load ptr, ptr %pay.gep512, align 8
  store ptr %payload.ptr513, ptr %var._514, align 8
  store ptr %payload.ptr513, ptr %var.a, align 8
  %var.load515 = load ptr, ptr %var.a, align 8
  %fld.gep516 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load515, i32 0, i32 5
  %fld.load517 = load ptr, ptr %fld.gep516, align 8
  %var.load518 = load ptr, ptr %var.blk_locals, align 8
  %a.load519 = load ptr, ptr %var.blk_locals, align 8
  %a.null520 = icmp eq ptr %a.load519, null
  br i1 %a.null520, label %a.create521, label %a.after522

choice.next508:                                   ; preds = %loop.body.39
  %var.load610 = load ptr, ptr %var.st, align 8
  %var.load611 = load ptr, ptr %var.blk_locals, align 8
  %a.load612 = load ptr, ptr %var.blk_locals, align 8
  %a.null613 = icmp eq ptr %a.load612, null
  br i1 %a.null613, label %a.create614, label %a.after615

a.create521:                                      ; preds = %choice.case507
  %arena.cur523 = call ptr @dva_arena_current()
  %a.create524 = call ptr @dva_arena_alloc(ptr %arena.cur523, i64 24)
  %arena.cur525 = call ptr @dva_arena_current()
  %a.buf526 = call ptr @dva_arena_alloc(ptr %arena.cur525, i64 128)
  %a.len.gep527 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create524, i32 0, i32 0
  store i64 0, ptr %a.len.gep527, align 8
  %a.data.gep528 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create524, i32 0, i32 1
  store ptr %a.buf526, ptr %a.data.gep528, align 8
  %a.cap.gep529 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create524, i32 0, i32 2
  store i64 16, ptr %a.cap.gep529, align 8
  store ptr %a.create524, ptr %var.blk_locals, align 8
  br label %a.after522

a.after522:                                       ; preds = %a.create521, %choice.case507
  %a.load2530 = load ptr, ptr %var.blk_locals, align 8
  %var.load531 = load ptr, ptr %var.refs, align 8
  %a.load532 = load ptr, ptr %var.refs, align 8
  %a.null533 = icmp eq ptr %a.load532, null
  br i1 %a.null533, label %a.create534, label %a.after535

a.create534:                                      ; preds = %a.after522
  %arena.cur536 = call ptr @dva_arena_current()
  %a.create537 = call ptr @dva_arena_alloc(ptr %arena.cur536, i64 24)
  %arena.cur538 = call ptr @dva_arena_current()
  %a.buf539 = call ptr @dva_arena_alloc(ptr %arena.cur538, i64 128)
  %a.len.gep540 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create537, i32 0, i32 0
  store i64 0, ptr %a.len.gep540, align 8
  %a.data.gep541 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create537, i32 0, i32 1
  store ptr %a.buf539, ptr %a.data.gep541, align 8
  %a.cap.gep542 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create537, i32 0, i32 2
  store i64 16, ptr %a.cap.gep542, align 8
  store ptr %a.create537, ptr %var.refs, align 8
  br label %a.after535

a.after535:                                       ; preds = %a.create534, %a.after522
  %a.load2543 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load517, ptr %a.load2530, ptr %a.load2543)
  %var.load544 = load ptr, ptr %var.a, align 8
  %fld.gep545 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load544, i32 0, i32 0
  %fld.load546 = load ptr, ptr %fld.gep545, align 8
  %eq.lhs.len547 = getelementptr inbounds { i64, ptr }, ptr %fld.load546, i32 0, i32 0
  %eq.lhs.len548 = load i64, ptr %eq.lhs.len547, align 8
  %eq.lhs.len549 = and i64 %eq.lhs.len548, 281474976710655
  %str.tag550 = lshr i64 %eq.lhs.len548, 48
  %str.immortal551 = icmp eq i64 %str.tag550, 0
  br i1 %str.immortal551, label %str_ok553, label %str_gen_check552

str_gen_check552:                                 ; preds = %a.after535
  %arena.cur555 = call ptr @dva_arena_current()
  %tag.valid556 = call i1 @dva_arena_validate_tag(ptr %arena.cur555, i64 %str.tag550)
  br i1 %tag.valid556, label %str_ok553, label %str_stale554

str_ok553:                                        ; preds = %str_stale554, %str_gen_check552, %a.after535
  %eq.rhs.len557 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len558 = and i64 %eq.rhs.len557, 281474976710655
  %str.tag559 = lshr i64 %eq.rhs.len557, 48
  %str.immortal560 = icmp eq i64 %str.tag559, 0
  br i1 %str.immortal560, label %str_ok562, label %str_gen_check561

str_stale554:                                     ; preds = %str_gen_check552
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok553

str_gen_check561:                                 ; preds = %str_ok553
  %arena.cur564 = call ptr @dva_arena_current()
  %tag.valid565 = call i1 @dva_arena_validate_tag(ptr %arena.cur564, i64 %str.tag559)
  br i1 %tag.valid565, label %str_ok562, label %str_stale563

str_ok562:                                        ; preds = %str_stale563, %str_gen_check561, %str_ok553
  %eq.len566 = icmp eq i64 %eq.lhs.len549, %eq.rhs.len558
  br i1 %eq.len566, label %str.eq.then567, label %str.eq.else568

str_stale563:                                     ; preds = %str_gen_check561
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok562

str.eq.then567:                                   ; preds = %str_ok562
  %eq.lhs.data570 = getelementptr inbounds { i64, ptr }, ptr %fld.load546, i32 0, i32 1
  %eq.lhs.data571 = load ptr, ptr %eq.lhs.data570, align 8
  %eq.rhs.data572 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp573 = call i32 @memcmp(ptr %eq.lhs.data571, ptr %eq.rhs.data572, i64 %eq.lhs.len549)
  %eq.cmp.zero574 = icmp eq i32 %eq.memcmp573, 0
  br label %str.eq.merge569

str.eq.else568:                                   ; preds = %str_ok562
  br label %str.eq.merge569

str.eq.merge569:                                  ; preds = %str.eq.else568, %str.eq.then567
  %str.eq.result575 = phi i1 [ %eq.cmp.zero574, %str.eq.then567 ], [ false, %str.eq.else568 ]
  %str.neq576 = xor i1 %str.eq.result575, true
  br i1 %str.neq576, label %choice.then577, label %choice.exit578

choice.then577:                                   ; preds = %str.eq.merge569
  %var.load579 = load ptr, ptr %var.a, align 8
  %fld.gep580 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load579, i32 0, i32 0
  %fld.load581 = load ptr, ptr %fld.gep580, align 8
  %a.load582 = load ptr, ptr %var.blk_locals, align 8
  %a.null583 = icmp eq ptr %a.load582, null
  br i1 %a.null583, label %a.create584, label %a.after585

choice.exit578:                                   ; preds = %a.store596, %str.eq.merge569
  br label %choice.exit506

a.create584:                                      ; preds = %choice.then577
  %arena.cur586 = call ptr @dva_arena_current()
  %a.create587 = call ptr @dva_arena_alloc(ptr %arena.cur586, i64 24)
  %arena.cur588 = call ptr @dva_arena_current()
  %a.buf589 = call ptr @dva_arena_alloc(ptr %arena.cur588, i64 128)
  %a.len.gep590 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create587, i32 0, i32 0
  store i64 0, ptr %a.len.gep590, align 8
  %a.data.gep591 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create587, i32 0, i32 1
  store ptr %a.buf589, ptr %a.data.gep591, align 8
  %a.cap.gep592 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create587, i32 0, i32 2
  store i64 16, ptr %a.cap.gep592, align 8
  store ptr %a.create587, ptr %var.blk_locals, align 8
  br label %a.after585

a.after585:                                       ; preds = %a.create584, %choice.then577
  %a.load2593 = load ptr, ptr %var.blk_locals, align 8
  br label %a.check594

a.check594:                                       ; preds = %a.after585
  %a.len597 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2593, i32 0, i32 0
  %a.len598 = load i64, ptr %a.len597, align 8
  %a.cap599 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2593, i32 0, i32 2
  %a.cap600 = load i64, ptr %a.cap599, align 8
  %a.needs.grow601 = icmp eq i64 %a.len598, %a.cap600
  br i1 %a.needs.grow601, label %a.grow595, label %a.store596

a.grow595:                                        ; preds = %a.check594
  call void @dva_array_grow(ptr %a.load2593)
  br label %a.store596

a.store596:                                       ; preds = %a.grow595, %a.check594
  %a.cur.data602 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2593, i32 0, i32 1
  %a.cur.data603 = load ptr, ptr %a.cur.data602, align 8
  %a.cur.len604 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2593, i32 0, i32 0
  %a.cur.len605 = load i64, ptr %a.cur.len604, align 8
  %a.elem.gep606 = getelementptr i64, ptr %a.cur.data603, i64 %a.cur.len605
  %slot.p2i607 = ptrtoint ptr %fld.load581 to i64
  store i64 %slot.p2i607, ptr %a.elem.gep606, align 8
  %a.next.len608 = add i64 %a.cur.len605, 1
  %b.len.gep609 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2593, i32 0, i32 0
  store i64 %a.next.len608, ptr %b.len.gep609, align 8
  br label %choice.exit578

a.create614:                                      ; preds = %choice.next508
  %arena.cur616 = call ptr @dva_arena_current()
  %a.create617 = call ptr @dva_arena_alloc(ptr %arena.cur616, i64 24)
  %arena.cur618 = call ptr @dva_arena_current()
  %a.buf619 = call ptr @dva_arena_alloc(ptr %arena.cur618, i64 128)
  %a.len.gep620 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create617, i32 0, i32 0
  store i64 0, ptr %a.len.gep620, align 8
  %a.data.gep621 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create617, i32 0, i32 1
  store ptr %a.buf619, ptr %a.data.gep621, align 8
  %a.cap.gep622 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create617, i32 0, i32 2
  store i64 16, ptr %a.cap.gep622, align 8
  store ptr %a.create617, ptr %var.blk_locals, align 8
  br label %a.after615

a.after615:                                       ; preds = %a.create614, %choice.next508
  %a.load2623 = load ptr, ptr %var.blk_locals, align 8
  %var.load624 = load ptr, ptr %var.refs, align 8
  %a.load625 = load ptr, ptr %var.refs, align 8
  %a.null626 = icmp eq ptr %a.load625, null
  br i1 %a.null626, label %a.create627, label %a.after628

a.create627:                                      ; preds = %a.after615
  %arena.cur629 = call ptr @dva_arena_current()
  %a.create630 = call ptr @dva_arena_alloc(ptr %arena.cur629, i64 24)
  %arena.cur631 = call ptr @dva_arena_current()
  %a.buf632 = call ptr @dva_arena_alloc(ptr %arena.cur631, i64 128)
  %a.len.gep633 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create630, i32 0, i32 0
  store i64 0, ptr %a.len.gep633, align 8
  %a.data.gep634 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create630, i32 0, i32 1
  store ptr %a.buf632, ptr %a.data.gep634, align 8
  %a.cap.gep635 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create630, i32 0, i32 2
  store i64 16, ptr %a.cap.gep635, align 8
  store ptr %a.create630, ptr %var.refs, align 8
  br label %a.after628

a.after628:                                       ; preds = %a.create627, %a.after615
  %a.load2636 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load610, ptr %a.load2623, ptr %a.load2636)
  br label %choice.exit506

choice.case639:                                   ; preds = %choice.next458
  %pay.gep644 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr645 = load ptr, ptr %pay.gep644, align 8
  store ptr %payload.ptr645, ptr %var._646, align 8
  store ptr %payload.ptr645, ptr %var.ch, align 8
  %var.load647 = load ptr, ptr %var.ch, align 8
  %fld.gep648 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load647, i32 0, i32 0
  %fld.load649 = load ptr, ptr %fld.gep648, align 8
  %var.load650 = load ptr, ptr %var.locals, align 8
  %a.load651 = load ptr, ptr %var.locals, align 8
  %a.null652 = icmp eq ptr %a.load651, null
  br i1 %a.null652, label %a.create653, label %a.after654

choice.next640:                                   ; preds = %choice.next458
  %tag.gep894 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id895 = load i64, ptr %tag.gep894, align 8
  %tag.match896 = icmp eq i64 %tag.id895, 15
  br i1 %tag.match896, label %choice.case892, label %choice.next893

a.create653:                                      ; preds = %choice.case639
  %arena.cur655 = call ptr @dva_arena_current()
  %a.create656 = call ptr @dva_arena_alloc(ptr %arena.cur655, i64 24)
  %arena.cur657 = call ptr @dva_arena_current()
  %a.buf658 = call ptr @dva_arena_alloc(ptr %arena.cur657, i64 128)
  %a.len.gep659 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create656, i32 0, i32 0
  store i64 0, ptr %a.len.gep659, align 8
  %a.data.gep660 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create656, i32 0, i32 1
  store ptr %a.buf658, ptr %a.data.gep660, align 8
  %a.cap.gep661 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create656, i32 0, i32 2
  store i64 16, ptr %a.cap.gep661, align 8
  store ptr %a.create656, ptr %var.locals, align 8
  br label %a.after654

a.after654:                                       ; preds = %a.create653, %choice.case639
  %a.load2662 = load ptr, ptr %var.locals, align 8
  %var.load663 = load ptr, ptr %var.refs, align 8
  %a.load664 = load ptr, ptr %var.refs, align 8
  %a.null665 = icmp eq ptr %a.load664, null
  br i1 %a.null665, label %a.create666, label %a.after667

a.create666:                                      ; preds = %a.after654
  %arena.cur668 = call ptr @dva_arena_current()
  %a.create669 = call ptr @dva_arena_alloc(ptr %arena.cur668, i64 24)
  %arena.cur670 = call ptr @dva_arena_current()
  %a.buf671 = call ptr @dva_arena_alloc(ptr %arena.cur670, i64 128)
  %a.len.gep672 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create669, i32 0, i32 0
  store i64 0, ptr %a.len.gep672, align 8
  %a.data.gep673 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create669, i32 0, i32 1
  store ptr %a.buf671, ptr %a.data.gep673, align 8
  %a.cap.gep674 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create669, i32 0, i32 2
  store i64 16, ptr %a.cap.gep674, align 8
  store ptr %a.create669, ptr %var.refs, align 8
  br label %a.after667

a.after667:                                       ; preds = %a.create666, %a.after654
  %a.load2675 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load649, ptr %a.load2662, ptr %a.load2675)
  %var.load676 = load ptr, ptr %var.ch, align 8
  %fld.gep677 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load676, i32 0, i32 2
  %fld.load678 = load ptr, ptr %fld.gep677, align 8
  %arr.cycle.len679 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load678, i32 0, i32 0
  %arr.cycle.len680 = load i64, ptr %arr.cycle.len679, align 8
  %arr.cycle.data681 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load678, i32 0, i32 1
  %arr.cycle.data682 = load ptr, ptr %arr.cycle.data681, align 8
  store i64 0, ptr %loop.idx.40, align 8
  %cycle.prev.u683 = load ptr, ptr %var._646, align 8
  br label %loop.header.40

loop.header.40:                                   ; preds = %loop.latch.40, %a.after667
  %counter.load684 = load i64, ptr %loop.idx.40, align 8
  %loop.cond685 = icmp slt i64 %counter.load684, %arr.cycle.len680
  br i1 %loop.cond685, label %loop.body.40, label %loop.exit.nat.40

loop.body.40:                                     ; preds = %loop.header.40
  %loop.rel.i686 = sub i64 %counter.load684, 0
  store i64 1, ptr %loop.step.40, align 8
  %arr.elem.gep687 = getelementptr i64, ptr %arr.cycle.data682, i64 %counter.load684
  %arr.elem.raw688 = load i64, ptr %arr.elem.gep687, align 8
  %slot.i2p689 = inttoptr i64 %arr.elem.raw688 to ptr
  store i64 %loop.rel.i686, ptr %var._i690, align 8
  store ptr %slot.i2p689, ptr %var._691, align 8
  store ptr %slot.i2p689, ptr %var.br, align 8
  %var.load692 = load ptr, ptr %var.locals, align 8
  %a.load693 = load ptr, ptr %var.locals, align 8
  %a.null694 = icmp eq ptr %a.load693, null
  br i1 %a.null694, label %a.create695, label %a.after696

loop.exit.nat.40:                                 ; preds = %loop.header.40
  br label %loop.exit.40

loop.latch.40:                                    ; preds = %loop.exit.42
  %step.val890 = load i64, ptr %loop.step.40, align 8
  %loop.next891 = add i64 %counter.load684, %step.val890
  store i64 %loop.next891, ptr %loop.idx.40, align 8
  br label %loop.header.40

loop.exit.40:                                     ; preds = %loop.exit.nat.40
  store ptr %cycle.prev.u683, ptr %var._646, align 8
  br label %choice.exit

a.create695:                                      ; preds = %loop.body.40
  %arena.cur697 = call ptr @dva_arena_current()
  %a.create698 = call ptr @dva_arena_alloc(ptr %arena.cur697, i64 24)
  %arena.cur699 = call ptr @dva_arena_current()
  %a.buf700 = call ptr @dva_arena_alloc(ptr %arena.cur699, i64 128)
  %a.len.gep701 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create698, i32 0, i32 0
  store i64 0, ptr %a.len.gep701, align 8
  %a.data.gep702 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create698, i32 0, i32 1
  store ptr %a.buf700, ptr %a.data.gep702, align 8
  %a.cap.gep703 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create698, i32 0, i32 2
  store i64 16, ptr %a.cap.gep703, align 8
  store ptr %a.create698, ptr %var.locals, align 8
  br label %a.after696

a.after696:                                       ; preds = %a.create695, %loop.body.40
  %a.load2704 = load ptr, ptr %var.locals, align 8
  %call.res705 = call ptr @"dep_graph::copy_names"(ptr %a.load2704)
  store ptr %call.res705, ptr %var.br_locals, align 8
  %var.load706 = load ptr, ptr %var.br, align 8
  %fld.gep707 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load706, i32 0, i32 4
  %fld.load708 = load ptr, ptr %fld.gep707, align 8
  %arr.cycle.len709 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load708, i32 0, i32 0
  %arr.cycle.len710 = load i64, ptr %arr.cycle.len709, align 8
  %arr.cycle.data711 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load708, i32 0, i32 1
  %arr.cycle.data712 = load ptr, ptr %arr.cycle.data711, align 8
  store i64 0, ptr %loop.idx.41, align 8
  %cycle.prev.u713 = load ptr, ptr %var._691, align 8
  %cycle.prev.i = load i64, ptr %var._i690, align 8
  br label %loop.header.41

loop.header.41:                                   ; preds = %loop.latch.41, %a.after696
  %counter.load714 = load i64, ptr %loop.idx.41, align 8
  %loop.cond715 = icmp slt i64 %counter.load714, %arr.cycle.len710
  br i1 %loop.cond715, label %loop.body.41, label %loop.exit.nat.41

loop.body.41:                                     ; preds = %loop.header.41
  %loop.rel.i716 = sub i64 %counter.load714, 0
  store i64 1, ptr %loop.step.41, align 8
  %arr.elem.gep717 = getelementptr i64, ptr %arr.cycle.data712, i64 %counter.load714
  %arr.elem.raw718 = load i64, ptr %arr.elem.gep717, align 8
  %slot.i2p719 = inttoptr i64 %arr.elem.raw718 to ptr
  store i64 %loop.rel.i716, ptr %var._i720, align 8
  store ptr %slot.i2p719, ptr %var._721, align 8
  store ptr %slot.i2p719, ptr %var.bv, align 8
  %var.load722 = load ptr, ptr %var.bv, align 8
  %eq.lhs.len723 = getelementptr inbounds { i64, ptr }, ptr %var.load722, i32 0, i32 0
  %eq.lhs.len724 = load i64, ptr %eq.lhs.len723, align 8
  %eq.lhs.len725 = and i64 %eq.lhs.len724, 281474976710655
  %str.tag726 = lshr i64 %eq.lhs.len724, 48
  %str.immortal727 = icmp eq i64 %str.tag726, 0
  br i1 %str.immortal727, label %str_ok729, label %str_gen_check728

loop.exit.nat.41:                                 ; preds = %loop.header.41
  br label %loop.exit.41

loop.latch.41:                                    ; preds = %choice.exit754
  %step.val784 = load i64, ptr %loop.step.41, align 8
  %loop.next785 = add i64 %counter.load714, %step.val784
  store i64 %loop.next785, ptr %loop.idx.41, align 8
  br label %loop.header.41

loop.exit.41:                                     ; preds = %loop.exit.nat.41
  store ptr %cycle.prev.u713, ptr %var._691, align 8
  store i64 %cycle.prev.i, ptr %var._i690, align 8
  %var.load786 = load ptr, ptr %var.br, align 8
  %fld.gep787 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load786, i32 0, i32 6
  %fld.load788 = load ptr, ptr %fld.gep787, align 8
  %var.load789 = load ptr, ptr %var.br_locals, align 8
  %a.load790 = load ptr, ptr %var.br_locals, align 8
  %a.null791 = icmp eq ptr %a.load790, null
  br i1 %a.null791, label %a.create792, label %a.after793

str_gen_check728:                                 ; preds = %loop.body.41
  %arena.cur731 = call ptr @dva_arena_current()
  %tag.valid732 = call i1 @dva_arena_validate_tag(ptr %arena.cur731, i64 %str.tag726)
  br i1 %tag.valid732, label %str_ok729, label %str_stale730

str_ok729:                                        ; preds = %str_stale730, %str_gen_check728, %loop.body.41
  %eq.rhs.len733 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len734 = and i64 %eq.rhs.len733, 281474976710655
  %str.tag735 = lshr i64 %eq.rhs.len733, 48
  %str.immortal736 = icmp eq i64 %str.tag735, 0
  br i1 %str.immortal736, label %str_ok738, label %str_gen_check737

str_stale730:                                     ; preds = %str_gen_check728
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok729

str_gen_check737:                                 ; preds = %str_ok729
  %arena.cur740 = call ptr @dva_arena_current()
  %tag.valid741 = call i1 @dva_arena_validate_tag(ptr %arena.cur740, i64 %str.tag735)
  br i1 %tag.valid741, label %str_ok738, label %str_stale739

str_ok738:                                        ; preds = %str_stale739, %str_gen_check737, %str_ok729
  %eq.len742 = icmp eq i64 %eq.lhs.len725, %eq.rhs.len734
  br i1 %eq.len742, label %str.eq.then743, label %str.eq.else744

str_stale739:                                     ; preds = %str_gen_check737
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok738

str.eq.then743:                                   ; preds = %str_ok738
  %eq.lhs.data746 = getelementptr inbounds { i64, ptr }, ptr %var.load722, i32 0, i32 1
  %eq.lhs.data747 = load ptr, ptr %eq.lhs.data746, align 8
  %eq.rhs.data748 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp749 = call i32 @memcmp(ptr %eq.lhs.data747, ptr %eq.rhs.data748, i64 %eq.lhs.len725)
  %eq.cmp.zero750 = icmp eq i32 %eq.memcmp749, 0
  br label %str.eq.merge745

str.eq.else744:                                   ; preds = %str_ok738
  br label %str.eq.merge745

str.eq.merge745:                                  ; preds = %str.eq.else744, %str.eq.then743
  %str.eq.result751 = phi i1 [ %eq.cmp.zero750, %str.eq.then743 ], [ false, %str.eq.else744 ]
  %str.neq752 = xor i1 %str.eq.result751, true
  br i1 %str.neq752, label %choice.then753, label %choice.exit754

choice.then753:                                   ; preds = %str.eq.merge745
  %var.load755 = load ptr, ptr %var.bv, align 8
  %a.load756 = load ptr, ptr %var.br_locals, align 8
  %a.null757 = icmp eq ptr %a.load756, null
  br i1 %a.null757, label %a.create758, label %a.after759

choice.exit754:                                   ; preds = %a.store770, %str.eq.merge745
  br label %loop.latch.41

a.create758:                                      ; preds = %choice.then753
  %arena.cur760 = call ptr @dva_arena_current()
  %a.create761 = call ptr @dva_arena_alloc(ptr %arena.cur760, i64 24)
  %arena.cur762 = call ptr @dva_arena_current()
  %a.buf763 = call ptr @dva_arena_alloc(ptr %arena.cur762, i64 128)
  %a.len.gep764 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create761, i32 0, i32 0
  store i64 0, ptr %a.len.gep764, align 8
  %a.data.gep765 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create761, i32 0, i32 1
  store ptr %a.buf763, ptr %a.data.gep765, align 8
  %a.cap.gep766 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create761, i32 0, i32 2
  store i64 16, ptr %a.cap.gep766, align 8
  store ptr %a.create761, ptr %var.br_locals, align 8
  br label %a.after759

a.after759:                                       ; preds = %a.create758, %choice.then753
  %a.load2767 = load ptr, ptr %var.br_locals, align 8
  br label %a.check768

a.check768:                                       ; preds = %a.after759
  %a.len771 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2767, i32 0, i32 0
  %a.len772 = load i64, ptr %a.len771, align 8
  %a.cap773 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2767, i32 0, i32 2
  %a.cap774 = load i64, ptr %a.cap773, align 8
  %a.needs.grow775 = icmp eq i64 %a.len772, %a.cap774
  br i1 %a.needs.grow775, label %a.grow769, label %a.store770

a.grow769:                                        ; preds = %a.check768
  call void @dva_array_grow(ptr %a.load2767)
  br label %a.store770

a.store770:                                       ; preds = %a.grow769, %a.check768
  %a.cur.data776 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2767, i32 0, i32 1
  %a.cur.data777 = load ptr, ptr %a.cur.data776, align 8
  %a.cur.len778 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2767, i32 0, i32 0
  %a.cur.len779 = load i64, ptr %a.cur.len778, align 8
  %a.elem.gep780 = getelementptr i64, ptr %a.cur.data777, i64 %a.cur.len779
  %slot.p2i781 = ptrtoint ptr %var.load755 to i64
  store i64 %slot.p2i781, ptr %a.elem.gep780, align 8
  %a.next.len782 = add i64 %a.cur.len779, 1
  %b.len.gep783 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2767, i32 0, i32 0
  store i64 %a.next.len782, ptr %b.len.gep783, align 8
  br label %choice.exit754

a.create792:                                      ; preds = %loop.exit.41
  %arena.cur794 = call ptr @dva_arena_current()
  %a.create795 = call ptr @dva_arena_alloc(ptr %arena.cur794, i64 24)
  %arena.cur796 = call ptr @dva_arena_current()
  %a.buf797 = call ptr @dva_arena_alloc(ptr %arena.cur796, i64 128)
  %a.len.gep798 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create795, i32 0, i32 0
  store i64 0, ptr %a.len.gep798, align 8
  %a.data.gep799 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create795, i32 0, i32 1
  store ptr %a.buf797, ptr %a.data.gep799, align 8
  %a.cap.gep800 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create795, i32 0, i32 2
  store i64 16, ptr %a.cap.gep800, align 8
  store ptr %a.create795, ptr %var.br_locals, align 8
  br label %a.after793

a.after793:                                       ; preds = %a.create792, %loop.exit.41
  %a.load2801 = load ptr, ptr %var.br_locals, align 8
  %var.load802 = load ptr, ptr %var.refs, align 8
  %a.load803 = load ptr, ptr %var.refs, align 8
  %a.null804 = icmp eq ptr %a.load803, null
  br i1 %a.null804, label %a.create805, label %a.after806

a.create805:                                      ; preds = %a.after793
  %arena.cur807 = call ptr @dva_arena_current()
  %a.create808 = call ptr @dva_arena_alloc(ptr %arena.cur807, i64 24)
  %arena.cur809 = call ptr @dva_arena_current()
  %a.buf810 = call ptr @dva_arena_alloc(ptr %arena.cur809, i64 128)
  %a.len.gep811 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create808, i32 0, i32 0
  store i64 0, ptr %a.len.gep811, align 8
  %a.data.gep812 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create808, i32 0, i32 1
  store ptr %a.buf810, ptr %a.data.gep812, align 8
  %a.cap.gep813 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create808, i32 0, i32 2
  store i64 16, ptr %a.cap.gep813, align 8
  store ptr %a.create808, ptr %var.refs, align 8
  br label %a.after806

a.after806:                                       ; preds = %a.create805, %a.after793
  %a.load2814 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load788, ptr %a.load2801, ptr %a.load2814)
  %var.load815 = load ptr, ptr %var.br, align 8
  %fld.gep816 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load815, i32 0, i32 2
  %fld.load817 = load ptr, ptr %fld.gep816, align 8
  %var.load818 = load ptr, ptr %var.br_locals, align 8
  %a.load819 = load ptr, ptr %var.br_locals, align 8
  %a.null820 = icmp eq ptr %a.load819, null
  br i1 %a.null820, label %a.create821, label %a.after822

a.create821:                                      ; preds = %a.after806
  %arena.cur823 = call ptr @dva_arena_current()
  %a.create824 = call ptr @dva_arena_alloc(ptr %arena.cur823, i64 24)
  %arena.cur825 = call ptr @dva_arena_current()
  %a.buf826 = call ptr @dva_arena_alloc(ptr %arena.cur825, i64 128)
  %a.len.gep827 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create824, i32 0, i32 0
  store i64 0, ptr %a.len.gep827, align 8
  %a.data.gep828 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create824, i32 0, i32 1
  store ptr %a.buf826, ptr %a.data.gep828, align 8
  %a.cap.gep829 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create824, i32 0, i32 2
  store i64 16, ptr %a.cap.gep829, align 8
  store ptr %a.create824, ptr %var.br_locals, align 8
  br label %a.after822

a.after822:                                       ; preds = %a.create821, %a.after806
  %a.load2830 = load ptr, ptr %var.br_locals, align 8
  %var.load831 = load ptr, ptr %var.refs, align 8
  %a.load832 = load ptr, ptr %var.refs, align 8
  %a.null833 = icmp eq ptr %a.load832, null
  br i1 %a.null833, label %a.create834, label %a.after835

a.create834:                                      ; preds = %a.after822
  %arena.cur836 = call ptr @dva_arena_current()
  %a.create837 = call ptr @dva_arena_alloc(ptr %arena.cur836, i64 24)
  %arena.cur838 = call ptr @dva_arena_current()
  %a.buf839 = call ptr @dva_arena_alloc(ptr %arena.cur838, i64 128)
  %a.len.gep840 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create837, i32 0, i32 0
  store i64 0, ptr %a.len.gep840, align 8
  %a.data.gep841 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create837, i32 0, i32 1
  store ptr %a.buf839, ptr %a.data.gep841, align 8
  %a.cap.gep842 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create837, i32 0, i32 2
  store i64 16, ptr %a.cap.gep842, align 8
  store ptr %a.create837, ptr %var.refs, align 8
  br label %a.after835

a.after835:                                       ; preds = %a.create834, %a.after822
  %a.load2843 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load817, ptr %a.load2830, ptr %a.load2843)
  %var.load844 = load ptr, ptr %var.br, align 8
  %fld.gep845 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr }, ptr %var.load844, i32 0, i32 1
  %fld.load846 = load ptr, ptr %fld.gep845, align 8
  %arr.cycle.len847 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load846, i32 0, i32 0
  %arr.cycle.len848 = load i64, ptr %arr.cycle.len847, align 8
  %arr.cycle.data849 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load846, i32 0, i32 1
  %arr.cycle.data850 = load ptr, ptr %arr.cycle.data849, align 8
  store i64 0, ptr %loop.idx.42, align 8
  %cycle.prev.u851 = load ptr, ptr %var._691, align 8
  %cycle.prev.i852 = load i64, ptr %var._i690, align 8
  br label %loop.header.42

loop.header.42:                                   ; preds = %loop.latch.42, %a.after835
  %counter.load853 = load i64, ptr %loop.idx.42, align 8
  %loop.cond854 = icmp slt i64 %counter.load853, %arr.cycle.len848
  br i1 %loop.cond854, label %loop.body.42, label %loop.exit.nat.42

loop.body.42:                                     ; preds = %loop.header.42
  %loop.rel.i855 = sub i64 %counter.load853, 0
  store i64 1, ptr %loop.step.42, align 8
  %arr.elem.gep856 = getelementptr i64, ptr %arr.cycle.data850, i64 %counter.load853
  %arr.elem.raw857 = load i64, ptr %arr.elem.gep856, align 8
  %slot.i2p858 = inttoptr i64 %arr.elem.raw857 to ptr
  store i64 %loop.rel.i855, ptr %var._i859, align 8
  store ptr %slot.i2p858, ptr %var._860, align 8
  store ptr %slot.i2p858, ptr %var.cv, align 8
  %var.load861 = load ptr, ptr %var.cv, align 8
  %var.load862 = load ptr, ptr %var.br_locals, align 8
  %a.load863 = load ptr, ptr %var.br_locals, align 8
  %a.null864 = icmp eq ptr %a.load863, null
  br i1 %a.null864, label %a.create865, label %a.after866

loop.exit.nat.42:                                 ; preds = %loop.header.42
  br label %loop.exit.42

loop.latch.42:                                    ; preds = %a.after879
  %step.val888 = load i64, ptr %loop.step.42, align 8
  %loop.next889 = add i64 %counter.load853, %step.val888
  store i64 %loop.next889, ptr %loop.idx.42, align 8
  br label %loop.header.42

loop.exit.42:                                     ; preds = %loop.exit.nat.42
  store ptr %cycle.prev.u851, ptr %var._691, align 8
  store i64 %cycle.prev.i852, ptr %var._i690, align 8
  br label %loop.latch.40

a.create865:                                      ; preds = %loop.body.42
  %arena.cur867 = call ptr @dva_arena_current()
  %a.create868 = call ptr @dva_arena_alloc(ptr %arena.cur867, i64 24)
  %arena.cur869 = call ptr @dva_arena_current()
  %a.buf870 = call ptr @dva_arena_alloc(ptr %arena.cur869, i64 128)
  %a.len.gep871 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create868, i32 0, i32 0
  store i64 0, ptr %a.len.gep871, align 8
  %a.data.gep872 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create868, i32 0, i32 1
  store ptr %a.buf870, ptr %a.data.gep872, align 8
  %a.cap.gep873 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create868, i32 0, i32 2
  store i64 16, ptr %a.cap.gep873, align 8
  store ptr %a.create868, ptr %var.br_locals, align 8
  br label %a.after866

a.after866:                                       ; preds = %a.create865, %loop.body.42
  %a.load2874 = load ptr, ptr %var.br_locals, align 8
  %var.load875 = load ptr, ptr %var.refs, align 8
  %a.load876 = load ptr, ptr %var.refs, align 8
  %a.null877 = icmp eq ptr %a.load876, null
  br i1 %a.null877, label %a.create878, label %a.after879

a.create878:                                      ; preds = %a.after866
  %arena.cur880 = call ptr @dva_arena_current()
  %a.create881 = call ptr @dva_arena_alloc(ptr %arena.cur880, i64 24)
  %arena.cur882 = call ptr @dva_arena_current()
  %a.buf883 = call ptr @dva_arena_alloc(ptr %arena.cur882, i64 128)
  %a.len.gep884 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create881, i32 0, i32 0
  store i64 0, ptr %a.len.gep884, align 8
  %a.data.gep885 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create881, i32 0, i32 1
  store ptr %a.buf883, ptr %a.data.gep885, align 8
  %a.cap.gep886 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create881, i32 0, i32 2
  store i64 16, ptr %a.cap.gep886, align 8
  store ptr %a.create881, ptr %var.refs, align 8
  br label %a.after879

a.after879:                                       ; preds = %a.create878, %a.after866
  %a.load2887 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load861, ptr %a.load2874, ptr %a.load2887)
  br label %loop.latch.42

choice.case892:                                   ; preds = %choice.next640
  %pay.gep897 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr898 = load ptr, ptr %pay.gep897, align 8
  store ptr %payload.ptr898, ptr %var._899, align 8
  store ptr %payload.ptr898, ptr %var.re, align 8
  %var.load900 = load ptr, ptr %var.re, align 8
  %fld.gep901 = getelementptr inbounds { ptr, i1 }, ptr %var.load900, i32 0, i32 0
  %fld.load902 = load ptr, ptr %fld.gep901, align 8
  %arr.cycle.len903 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load902, i32 0, i32 0
  %arr.cycle.len904 = load i64, ptr %arr.cycle.len903, align 8
  %arr.cycle.data905 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load902, i32 0, i32 1
  %arr.cycle.data906 = load ptr, ptr %arr.cycle.data905, align 8
  store i64 0, ptr %loop.idx.43, align 8
  %cycle.prev.u907 = load ptr, ptr %var._899, align 8
  br label %loop.header.43

choice.next893:                                   ; preds = %choice.next640
  %tag.gep949 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id950 = load i64, ptr %tag.gep949, align 8
  %tag.match951 = icmp eq i64 %tag.id950, 16
  br i1 %tag.match951, label %choice.case947, label %choice.next948

loop.header.43:                                   ; preds = %loop.latch.43, %choice.case892
  %counter.load908 = load i64, ptr %loop.idx.43, align 8
  %loop.cond909 = icmp slt i64 %counter.load908, %arr.cycle.len904
  br i1 %loop.cond909, label %loop.body.43, label %loop.exit.nat.43

loop.body.43:                                     ; preds = %loop.header.43
  %loop.rel.i910 = sub i64 %counter.load908, 0
  store i64 1, ptr %loop.step.43, align 8
  %arr.elem.gep911 = getelementptr i64, ptr %arr.cycle.data906, i64 %counter.load908
  %arr.elem.raw912 = load i64, ptr %arr.elem.gep911, align 8
  %slot.i2p913 = inttoptr i64 %arr.elem.raw912 to ptr
  store i64 %loop.rel.i910, ptr %var._i914, align 8
  store ptr %slot.i2p913, ptr %var._915, align 8
  store ptr %slot.i2p913, ptr %var.fld, align 8
  %var.load916 = load ptr, ptr %var.fld, align 8
  %fld.gep917 = getelementptr inbounds { i1, ptr, ptr }, ptr %var.load916, i32 0, i32 2
  %fld.load918 = load ptr, ptr %fld.gep917, align 8
  %var.load919 = load ptr, ptr %var.locals, align 8
  %a.load920 = load ptr, ptr %var.locals, align 8
  %a.null921 = icmp eq ptr %a.load920, null
  br i1 %a.null921, label %a.create922, label %a.after923

loop.exit.nat.43:                                 ; preds = %loop.header.43
  br label %loop.exit.43

loop.latch.43:                                    ; preds = %a.after936
  %step.val945 = load i64, ptr %loop.step.43, align 8
  %loop.next946 = add i64 %counter.load908, %step.val945
  store i64 %loop.next946, ptr %loop.idx.43, align 8
  br label %loop.header.43

loop.exit.43:                                     ; preds = %loop.exit.nat.43
  store ptr %cycle.prev.u907, ptr %var._899, align 8
  br label %choice.exit

a.create922:                                      ; preds = %loop.body.43
  %arena.cur924 = call ptr @dva_arena_current()
  %a.create925 = call ptr @dva_arena_alloc(ptr %arena.cur924, i64 24)
  %arena.cur926 = call ptr @dva_arena_current()
  %a.buf927 = call ptr @dva_arena_alloc(ptr %arena.cur926, i64 128)
  %a.len.gep928 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create925, i32 0, i32 0
  store i64 0, ptr %a.len.gep928, align 8
  %a.data.gep929 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create925, i32 0, i32 1
  store ptr %a.buf927, ptr %a.data.gep929, align 8
  %a.cap.gep930 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create925, i32 0, i32 2
  store i64 16, ptr %a.cap.gep930, align 8
  store ptr %a.create925, ptr %var.locals, align 8
  br label %a.after923

a.after923:                                       ; preds = %a.create922, %loop.body.43
  %a.load2931 = load ptr, ptr %var.locals, align 8
  %var.load932 = load ptr, ptr %var.refs, align 8
  %a.load933 = load ptr, ptr %var.refs, align 8
  %a.null934 = icmp eq ptr %a.load933, null
  br i1 %a.null934, label %a.create935, label %a.after936

a.create935:                                      ; preds = %a.after923
  %arena.cur937 = call ptr @dva_arena_current()
  %a.create938 = call ptr @dva_arena_alloc(ptr %arena.cur937, i64 24)
  %arena.cur939 = call ptr @dva_arena_current()
  %a.buf940 = call ptr @dva_arena_alloc(ptr %arena.cur939, i64 128)
  %a.len.gep941 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create938, i32 0, i32 0
  store i64 0, ptr %a.len.gep941, align 8
  %a.data.gep942 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create938, i32 0, i32 1
  store ptr %a.buf940, ptr %a.data.gep942, align 8
  %a.cap.gep943 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create938, i32 0, i32 2
  store i64 16, ptr %a.cap.gep943, align 8
  store ptr %a.create938, ptr %var.refs, align 8
  br label %a.after936

a.after936:                                       ; preds = %a.create935, %a.after923
  %a.load2944 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load918, ptr %a.load2931, ptr %a.load2944)
  br label %loop.latch.43

choice.case947:                                   ; preds = %choice.next893
  %pay.gep952 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr953 = load ptr, ptr %pay.gep952, align 8
  store ptr %payload.ptr953, ptr %var._954, align 8
  store ptr %payload.ptr953, ptr %var.m, align 8
  %var.load955 = load ptr, ptr %var.m, align 8
  %fld.gep956 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load955, i32 0, i32 0
  %fld.load957 = load ptr, ptr %fld.gep956, align 8
  %var.load958 = load ptr, ptr %var.locals, align 8
  %a.load959 = load ptr, ptr %var.locals, align 8
  %a.null960 = icmp eq ptr %a.load959, null
  br i1 %a.null960, label %a.create961, label %a.after962

choice.next948:                                   ; preds = %choice.next893
  %tag.gep1015 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1016 = load i64, ptr %tag.gep1015, align 8
  %tag.match1017 = icmp eq i64 %tag.id1016, 17
  br i1 %tag.match1017, label %choice.case1013, label %choice.next1014

a.create961:                                      ; preds = %choice.case947
  %arena.cur963 = call ptr @dva_arena_current()
  %a.create964 = call ptr @dva_arena_alloc(ptr %arena.cur963, i64 24)
  %arena.cur965 = call ptr @dva_arena_current()
  %a.buf966 = call ptr @dva_arena_alloc(ptr %arena.cur965, i64 128)
  %a.len.gep967 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create964, i32 0, i32 0
  store i64 0, ptr %a.len.gep967, align 8
  %a.data.gep968 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create964, i32 0, i32 1
  store ptr %a.buf966, ptr %a.data.gep968, align 8
  %a.cap.gep969 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create964, i32 0, i32 2
  store i64 16, ptr %a.cap.gep969, align 8
  store ptr %a.create964, ptr %var.locals, align 8
  br label %a.after962

a.after962:                                       ; preds = %a.create961, %choice.case947
  %a.load2970 = load ptr, ptr %var.locals, align 8
  %var.load971 = load ptr, ptr %var.refs, align 8
  %a.load972 = load ptr, ptr %var.refs, align 8
  %a.null973 = icmp eq ptr %a.load972, null
  br i1 %a.null973, label %a.create974, label %a.after975

a.create974:                                      ; preds = %a.after962
  %arena.cur976 = call ptr @dva_arena_current()
  %a.create977 = call ptr @dva_arena_alloc(ptr %arena.cur976, i64 24)
  %arena.cur978 = call ptr @dva_arena_current()
  %a.buf979 = call ptr @dva_arena_alloc(ptr %arena.cur978, i64 128)
  %a.len.gep980 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create977, i32 0, i32 0
  store i64 0, ptr %a.len.gep980, align 8
  %a.data.gep981 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create977, i32 0, i32 1
  store ptr %a.buf979, ptr %a.data.gep981, align 8
  %a.cap.gep982 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create977, i32 0, i32 2
  store i64 16, ptr %a.cap.gep982, align 8
  store ptr %a.create977, ptr %var.refs, align 8
  br label %a.after975

a.after975:                                       ; preds = %a.create974, %a.after962
  %a.load2983 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load957, ptr %a.load2970, ptr %a.load2983)
  %var.load984 = load ptr, ptr %var.m, align 8
  %fld.gep985 = getelementptr inbounds { ptr, ptr, i1, ptr, i64, i64 }, ptr %var.load984, i32 0, i32 3
  %fld.load986 = load ptr, ptr %fld.gep985, align 8
  %var.load987 = load ptr, ptr %var.locals, align 8
  %a.load988 = load ptr, ptr %var.locals, align 8
  %a.null989 = icmp eq ptr %a.load988, null
  br i1 %a.null989, label %a.create990, label %a.after991

a.create990:                                      ; preds = %a.after975
  %arena.cur992 = call ptr @dva_arena_current()
  %a.create993 = call ptr @dva_arena_alloc(ptr %arena.cur992, i64 24)
  %arena.cur994 = call ptr @dva_arena_current()
  %a.buf995 = call ptr @dva_arena_alloc(ptr %arena.cur994, i64 128)
  %a.len.gep996 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create993, i32 0, i32 0
  store i64 0, ptr %a.len.gep996, align 8
  %a.data.gep997 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create993, i32 0, i32 1
  store ptr %a.buf995, ptr %a.data.gep997, align 8
  %a.cap.gep998 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create993, i32 0, i32 2
  store i64 16, ptr %a.cap.gep998, align 8
  store ptr %a.create993, ptr %var.locals, align 8
  br label %a.after991

a.after991:                                       ; preds = %a.create990, %a.after975
  %a.load2999 = load ptr, ptr %var.locals, align 8
  %var.load1000 = load ptr, ptr %var.refs, align 8
  %a.load1001 = load ptr, ptr %var.refs, align 8
  %a.null1002 = icmp eq ptr %a.load1001, null
  br i1 %a.null1002, label %a.create1003, label %a.after1004

a.create1003:                                     ; preds = %a.after991
  %arena.cur1005 = call ptr @dva_arena_current()
  %a.create1006 = call ptr @dva_arena_alloc(ptr %arena.cur1005, i64 24)
  %arena.cur1007 = call ptr @dva_arena_current()
  %a.buf1008 = call ptr @dva_arena_alloc(ptr %arena.cur1007, i64 128)
  %a.len.gep1009 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1006, i32 0, i32 0
  store i64 0, ptr %a.len.gep1009, align 8
  %a.data.gep1010 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1006, i32 0, i32 1
  store ptr %a.buf1008, ptr %a.data.gep1010, align 8
  %a.cap.gep1011 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1006, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1011, align 8
  store ptr %a.create1006, ptr %var.refs, align 8
  br label %a.after1004

a.after1004:                                      ; preds = %a.create1003, %a.after991
  %a.load21012 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load986, ptr %a.load2999, ptr %a.load21012)
  br label %choice.exit

choice.case1013:                                  ; preds = %choice.next948
  %pay.gep1018 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1019 = load ptr, ptr %pay.gep1018, align 8
  store ptr %payload.ptr1019, ptr %var._1020, align 8
  store ptr %payload.ptr1019, ptr %var.ka, align 8
  %var.load1021 = load ptr, ptr %var.ka, align 8
  %fld.gep1022 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1021, i32 0, i32 0
  %fld.load1023 = load ptr, ptr %fld.gep1022, align 8
  %var.load1024 = load ptr, ptr %var.locals, align 8
  %a.load1025 = load ptr, ptr %var.locals, align 8
  %a.null1026 = icmp eq ptr %a.load1025, null
  br i1 %a.null1026, label %a.create1027, label %a.after1028

choice.next1014:                                  ; preds = %choice.next948
  %tag.gep1081 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1082 = load i64, ptr %tag.gep1081, align 8
  %tag.match1083 = icmp eq i64 %tag.id1082, 6
  br i1 %tag.match1083, label %choice.case1079, label %choice.next1080

a.create1027:                                     ; preds = %choice.case1013
  %arena.cur1029 = call ptr @dva_arena_current()
  %a.create1030 = call ptr @dva_arena_alloc(ptr %arena.cur1029, i64 24)
  %arena.cur1031 = call ptr @dva_arena_current()
  %a.buf1032 = call ptr @dva_arena_alloc(ptr %arena.cur1031, i64 128)
  %a.len.gep1033 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1030, i32 0, i32 0
  store i64 0, ptr %a.len.gep1033, align 8
  %a.data.gep1034 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1030, i32 0, i32 1
  store ptr %a.buf1032, ptr %a.data.gep1034, align 8
  %a.cap.gep1035 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1030, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1035, align 8
  store ptr %a.create1030, ptr %var.locals, align 8
  br label %a.after1028

a.after1028:                                      ; preds = %a.create1027, %choice.case1013
  %a.load21036 = load ptr, ptr %var.locals, align 8
  %var.load1037 = load ptr, ptr %var.refs, align 8
  %a.load1038 = load ptr, ptr %var.refs, align 8
  %a.null1039 = icmp eq ptr %a.load1038, null
  br i1 %a.null1039, label %a.create1040, label %a.after1041

a.create1040:                                     ; preds = %a.after1028
  %arena.cur1042 = call ptr @dva_arena_current()
  %a.create1043 = call ptr @dva_arena_alloc(ptr %arena.cur1042, i64 24)
  %arena.cur1044 = call ptr @dva_arena_current()
  %a.buf1045 = call ptr @dva_arena_alloc(ptr %arena.cur1044, i64 128)
  %a.len.gep1046 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1043, i32 0, i32 0
  store i64 0, ptr %a.len.gep1046, align 8
  %a.data.gep1047 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1043, i32 0, i32 1
  store ptr %a.buf1045, ptr %a.data.gep1047, align 8
  %a.cap.gep1048 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1043, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1048, align 8
  store ptr %a.create1043, ptr %var.refs, align 8
  br label %a.after1041

a.after1041:                                      ; preds = %a.create1040, %a.after1028
  %a.load21049 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1023, ptr %a.load21036, ptr %a.load21049)
  %var.load1050 = load ptr, ptr %var.ka, align 8
  %fld.gep1051 = getelementptr inbounds { ptr, ptr, i1, i1, i64, i64 }, ptr %var.load1050, i32 0, i32 1
  %fld.load1052 = load ptr, ptr %fld.gep1051, align 8
  %var.load1053 = load ptr, ptr %var.locals, align 8
  %a.load1054 = load ptr, ptr %var.locals, align 8
  %a.null1055 = icmp eq ptr %a.load1054, null
  br i1 %a.null1055, label %a.create1056, label %a.after1057

a.create1056:                                     ; preds = %a.after1041
  %arena.cur1058 = call ptr @dva_arena_current()
  %a.create1059 = call ptr @dva_arena_alloc(ptr %arena.cur1058, i64 24)
  %arena.cur1060 = call ptr @dva_arena_current()
  %a.buf1061 = call ptr @dva_arena_alloc(ptr %arena.cur1060, i64 128)
  %a.len.gep1062 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1059, i32 0, i32 0
  store i64 0, ptr %a.len.gep1062, align 8
  %a.data.gep1063 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1059, i32 0, i32 1
  store ptr %a.buf1061, ptr %a.data.gep1063, align 8
  %a.cap.gep1064 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1059, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1064, align 8
  store ptr %a.create1059, ptr %var.locals, align 8
  br label %a.after1057

a.after1057:                                      ; preds = %a.create1056, %a.after1041
  %a.load21065 = load ptr, ptr %var.locals, align 8
  %var.load1066 = load ptr, ptr %var.refs, align 8
  %a.load1067 = load ptr, ptr %var.refs, align 8
  %a.null1068 = icmp eq ptr %a.load1067, null
  br i1 %a.null1068, label %a.create1069, label %a.after1070

a.create1069:                                     ; preds = %a.after1057
  %arena.cur1071 = call ptr @dva_arena_current()
  %a.create1072 = call ptr @dva_arena_alloc(ptr %arena.cur1071, i64 24)
  %arena.cur1073 = call ptr @dva_arena_current()
  %a.buf1074 = call ptr @dva_arena_alloc(ptr %arena.cur1073, i64 128)
  %a.len.gep1075 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1072, i32 0, i32 0
  store i64 0, ptr %a.len.gep1075, align 8
  %a.data.gep1076 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1072, i32 0, i32 1
  store ptr %a.buf1074, ptr %a.data.gep1076, align 8
  %a.cap.gep1077 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1072, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1077, align 8
  store ptr %a.create1072, ptr %var.refs, align 8
  br label %a.after1070

a.after1070:                                      ; preds = %a.create1069, %a.after1057
  %a.load21078 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1052, ptr %a.load21065, ptr %a.load21078)
  br label %choice.exit

choice.case1079:                                  ; preds = %choice.next1014
  %pay.gep1084 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1085 = load ptr, ptr %pay.gep1084, align 8
  store ptr %payload.ptr1085, ptr %var._1086, align 8
  store ptr %payload.ptr1085, ptr %var.a1087, align 8
  %var.load1088 = load ptr, ptr %var.a1087, align 8
  %fld.gep1089 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1088, i32 0, i32 5
  %fld.load1090 = load ptr, ptr %fld.gep1089, align 8
  %var.load1091 = load ptr, ptr %var.locals, align 8
  %a.load1092 = load ptr, ptr %var.locals, align 8
  %a.null1093 = icmp eq ptr %a.load1092, null
  br i1 %a.null1093, label %a.create1094, label %a.after1095

choice.next1080:                                  ; preds = %choice.next1014
  %tag.gep1148 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1149 = load i64, ptr %tag.gep1148, align 8
  %tag.match1150 = icmp eq i64 %tag.id1149, 12
  br i1 %tag.match1150, label %choice.case1146, label %choice.next1147

a.create1094:                                     ; preds = %choice.case1079
  %arena.cur1096 = call ptr @dva_arena_current()
  %a.create1097 = call ptr @dva_arena_alloc(ptr %arena.cur1096, i64 24)
  %arena.cur1098 = call ptr @dva_arena_current()
  %a.buf1099 = call ptr @dva_arena_alloc(ptr %arena.cur1098, i64 128)
  %a.len.gep1100 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1097, i32 0, i32 0
  store i64 0, ptr %a.len.gep1100, align 8
  %a.data.gep1101 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1097, i32 0, i32 1
  store ptr %a.buf1099, ptr %a.data.gep1101, align 8
  %a.cap.gep1102 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1097, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1102, align 8
  store ptr %a.create1097, ptr %var.locals, align 8
  br label %a.after1095

a.after1095:                                      ; preds = %a.create1094, %choice.case1079
  %a.load21103 = load ptr, ptr %var.locals, align 8
  %var.load1104 = load ptr, ptr %var.refs, align 8
  %a.load1105 = load ptr, ptr %var.refs, align 8
  %a.null1106 = icmp eq ptr %a.load1105, null
  br i1 %a.null1106, label %a.create1107, label %a.after1108

a.create1107:                                     ; preds = %a.after1095
  %arena.cur1109 = call ptr @dva_arena_current()
  %a.create1110 = call ptr @dva_arena_alloc(ptr %arena.cur1109, i64 24)
  %arena.cur1111 = call ptr @dva_arena_current()
  %a.buf1112 = call ptr @dva_arena_alloc(ptr %arena.cur1111, i64 128)
  %a.len.gep1113 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1110, i32 0, i32 0
  store i64 0, ptr %a.len.gep1113, align 8
  %a.data.gep1114 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1110, i32 0, i32 1
  store ptr %a.buf1112, ptr %a.data.gep1114, align 8
  %a.cap.gep1115 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1110, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1115, align 8
  store ptr %a.create1110, ptr %var.refs, align 8
  br label %a.after1108

a.after1108:                                      ; preds = %a.create1107, %a.after1095
  %a.load21116 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1090, ptr %a.load21103, ptr %a.load21116)
  %var.load1117 = load ptr, ptr %var.a1087, align 8
  %fld.gep1118 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load1117, i32 0, i32 6
  %fld.load1119 = load ptr, ptr %fld.gep1118, align 8
  %var.load1120 = load ptr, ptr %var.locals, align 8
  %a.load1121 = load ptr, ptr %var.locals, align 8
  %a.null1122 = icmp eq ptr %a.load1121, null
  br i1 %a.null1122, label %a.create1123, label %a.after1124

a.create1123:                                     ; preds = %a.after1108
  %arena.cur1125 = call ptr @dva_arena_current()
  %a.create1126 = call ptr @dva_arena_alloc(ptr %arena.cur1125, i64 24)
  %arena.cur1127 = call ptr @dva_arena_current()
  %a.buf1128 = call ptr @dva_arena_alloc(ptr %arena.cur1127, i64 128)
  %a.len.gep1129 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1126, i32 0, i32 0
  store i64 0, ptr %a.len.gep1129, align 8
  %a.data.gep1130 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1126, i32 0, i32 1
  store ptr %a.buf1128, ptr %a.data.gep1130, align 8
  %a.cap.gep1131 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1126, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1131, align 8
  store ptr %a.create1126, ptr %var.locals, align 8
  br label %a.after1124

a.after1124:                                      ; preds = %a.create1123, %a.after1108
  %a.load21132 = load ptr, ptr %var.locals, align 8
  %var.load1133 = load ptr, ptr %var.refs, align 8
  %a.load1134 = load ptr, ptr %var.refs, align 8
  %a.null1135 = icmp eq ptr %a.load1134, null
  br i1 %a.null1135, label %a.create1136, label %a.after1137

a.create1136:                                     ; preds = %a.after1124
  %arena.cur1138 = call ptr @dva_arena_current()
  %a.create1139 = call ptr @dva_arena_alloc(ptr %arena.cur1138, i64 24)
  %arena.cur1140 = call ptr @dva_arena_current()
  %a.buf1141 = call ptr @dva_arena_alloc(ptr %arena.cur1140, i64 128)
  %a.len.gep1142 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1139, i32 0, i32 0
  store i64 0, ptr %a.len.gep1142, align 8
  %a.data.gep1143 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1139, i32 0, i32 1
  store ptr %a.buf1141, ptr %a.data.gep1143, align 8
  %a.cap.gep1144 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1139, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1144, align 8
  store ptr %a.create1139, ptr %var.refs, align 8
  br label %a.after1137

a.after1137:                                      ; preds = %a.create1136, %a.after1124
  %a.load21145 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1119, ptr %a.load21132, ptr %a.load21145)
  br label %choice.exit

choice.case1146:                                  ; preds = %choice.next1080
  %pay.gep1151 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1152 = load ptr, ptr %pay.gep1151, align 8
  store ptr %payload.ptr1152, ptr %var._1153, align 8
  store ptr %payload.ptr1152, ptr %var.cy, align 8
  %var.load1154 = load ptr, ptr %var.cy, align 8
  %fld.gep1155 = getelementptr inbounds { ptr, ptr, i1 }, ptr %var.load1154, i32 0, i32 0
  %fld.load1156 = load ptr, ptr %fld.gep1155, align 8
  %var.load1157 = load ptr, ptr %var.locals, align 8
  %a.load1158 = load ptr, ptr %var.locals, align 8
  %a.null1159 = icmp eq ptr %a.load1158, null
  br i1 %a.null1159, label %a.create1160, label %a.after1161

choice.next1147:                                  ; preds = %choice.next1080
  %tag.gep1214 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1215 = load i64, ptr %tag.gep1214, align 8
  %tag.match1216 = icmp eq i64 %tag.id1215, 11
  br i1 %tag.match1216, label %choice.case1212, label %choice.next1213

a.create1160:                                     ; preds = %choice.case1146
  %arena.cur1162 = call ptr @dva_arena_current()
  %a.create1163 = call ptr @dva_arena_alloc(ptr %arena.cur1162, i64 24)
  %arena.cur1164 = call ptr @dva_arena_current()
  %a.buf1165 = call ptr @dva_arena_alloc(ptr %arena.cur1164, i64 128)
  %a.len.gep1166 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1163, i32 0, i32 0
  store i64 0, ptr %a.len.gep1166, align 8
  %a.data.gep1167 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1163, i32 0, i32 1
  store ptr %a.buf1165, ptr %a.data.gep1167, align 8
  %a.cap.gep1168 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1163, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1168, align 8
  store ptr %a.create1163, ptr %var.locals, align 8
  br label %a.after1161

a.after1161:                                      ; preds = %a.create1160, %choice.case1146
  %a.load21169 = load ptr, ptr %var.locals, align 8
  %var.load1170 = load ptr, ptr %var.refs, align 8
  %a.load1171 = load ptr, ptr %var.refs, align 8
  %a.null1172 = icmp eq ptr %a.load1171, null
  br i1 %a.null1172, label %a.create1173, label %a.after1174

a.create1173:                                     ; preds = %a.after1161
  %arena.cur1175 = call ptr @dva_arena_current()
  %a.create1176 = call ptr @dva_arena_alloc(ptr %arena.cur1175, i64 24)
  %arena.cur1177 = call ptr @dva_arena_current()
  %a.buf1178 = call ptr @dva_arena_alloc(ptr %arena.cur1177, i64 128)
  %a.len.gep1179 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1176, i32 0, i32 0
  store i64 0, ptr %a.len.gep1179, align 8
  %a.data.gep1180 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1176, i32 0, i32 1
  store ptr %a.buf1178, ptr %a.data.gep1180, align 8
  %a.cap.gep1181 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1176, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1181, align 8
  store ptr %a.create1176, ptr %var.refs, align 8
  br label %a.after1174

a.after1174:                                      ; preds = %a.create1173, %a.after1161
  %a.load21182 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1156, ptr %a.load21169, ptr %a.load21182)
  %var.load1183 = load ptr, ptr %var.cy, align 8
  %fld.gep1184 = getelementptr inbounds { ptr, ptr, i1 }, ptr %var.load1183, i32 0, i32 1
  %fld.load1185 = load ptr, ptr %fld.gep1184, align 8
  %var.load1186 = load ptr, ptr %var.locals, align 8
  %a.load1187 = load ptr, ptr %var.locals, align 8
  %a.null1188 = icmp eq ptr %a.load1187, null
  br i1 %a.null1188, label %a.create1189, label %a.after1190

a.create1189:                                     ; preds = %a.after1174
  %arena.cur1191 = call ptr @dva_arena_current()
  %a.create1192 = call ptr @dva_arena_alloc(ptr %arena.cur1191, i64 24)
  %arena.cur1193 = call ptr @dva_arena_current()
  %a.buf1194 = call ptr @dva_arena_alloc(ptr %arena.cur1193, i64 128)
  %a.len.gep1195 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1192, i32 0, i32 0
  store i64 0, ptr %a.len.gep1195, align 8
  %a.data.gep1196 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1192, i32 0, i32 1
  store ptr %a.buf1194, ptr %a.data.gep1196, align 8
  %a.cap.gep1197 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1192, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1197, align 8
  store ptr %a.create1192, ptr %var.locals, align 8
  br label %a.after1190

a.after1190:                                      ; preds = %a.create1189, %a.after1174
  %a.load21198 = load ptr, ptr %var.locals, align 8
  %var.load1199 = load ptr, ptr %var.refs, align 8
  %a.load1200 = load ptr, ptr %var.refs, align 8
  %a.null1201 = icmp eq ptr %a.load1200, null
  br i1 %a.null1201, label %a.create1202, label %a.after1203

a.create1202:                                     ; preds = %a.after1190
  %arena.cur1204 = call ptr @dva_arena_current()
  %a.create1205 = call ptr @dva_arena_alloc(ptr %arena.cur1204, i64 24)
  %arena.cur1206 = call ptr @dva_arena_current()
  %a.buf1207 = call ptr @dva_arena_alloc(ptr %arena.cur1206, i64 128)
  %a.len.gep1208 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1205, i32 0, i32 0
  store i64 0, ptr %a.len.gep1208, align 8
  %a.data.gep1209 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1205, i32 0, i32 1
  store ptr %a.buf1207, ptr %a.data.gep1209, align 8
  %a.cap.gep1210 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1205, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1210, align 8
  store ptr %a.create1205, ptr %var.refs, align 8
  br label %a.after1203

a.after1203:                                      ; preds = %a.create1202, %a.after1190
  %a.load21211 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1185, ptr %a.load21198, ptr %a.load21211)
  br label %choice.exit

choice.case1212:                                  ; preds = %choice.next1147
  %pay.gep1217 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1218 = load ptr, ptr %pay.gep1217, align 8
  store ptr %payload.ptr1218, ptr %var._1219, align 8
  store ptr %payload.ptr1218, ptr %var.ce, align 8
  %var.load1220 = load ptr, ptr %var.ce, align 8
  %fld.gep1221 = getelementptr inbounds { ptr, ptr }, ptr %var.load1220, i32 0, i32 0
  %fld.load1222 = load ptr, ptr %fld.gep1221, align 8
  %var.load1223 = load ptr, ptr %var.locals, align 8
  %a.load1224 = load ptr, ptr %var.locals, align 8
  %a.null1225 = icmp eq ptr %a.load1224, null
  br i1 %a.null1225, label %a.create1226, label %a.after1227

choice.next1213:                                  ; preds = %choice.next1147
  %tag.gep1280 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1281 = load i64, ptr %tag.gep1280, align 8
  %tag.match1282 = icmp eq i64 %tag.id1281, 13
  br i1 %tag.match1282, label %choice.case1278, label %choice.next1279

a.create1226:                                     ; preds = %choice.case1212
  %arena.cur1228 = call ptr @dva_arena_current()
  %a.create1229 = call ptr @dva_arena_alloc(ptr %arena.cur1228, i64 24)
  %arena.cur1230 = call ptr @dva_arena_current()
  %a.buf1231 = call ptr @dva_arena_alloc(ptr %arena.cur1230, i64 128)
  %a.len.gep1232 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1229, i32 0, i32 0
  store i64 0, ptr %a.len.gep1232, align 8
  %a.data.gep1233 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1229, i32 0, i32 1
  store ptr %a.buf1231, ptr %a.data.gep1233, align 8
  %a.cap.gep1234 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1229, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1234, align 8
  store ptr %a.create1229, ptr %var.locals, align 8
  br label %a.after1227

a.after1227:                                      ; preds = %a.create1226, %choice.case1212
  %a.load21235 = load ptr, ptr %var.locals, align 8
  %var.load1236 = load ptr, ptr %var.refs, align 8
  %a.load1237 = load ptr, ptr %var.refs, align 8
  %a.null1238 = icmp eq ptr %a.load1237, null
  br i1 %a.null1238, label %a.create1239, label %a.after1240

a.create1239:                                     ; preds = %a.after1227
  %arena.cur1241 = call ptr @dva_arena_current()
  %a.create1242 = call ptr @dva_arena_alloc(ptr %arena.cur1241, i64 24)
  %arena.cur1243 = call ptr @dva_arena_current()
  %a.buf1244 = call ptr @dva_arena_alloc(ptr %arena.cur1243, i64 128)
  %a.len.gep1245 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1242, i32 0, i32 0
  store i64 0, ptr %a.len.gep1245, align 8
  %a.data.gep1246 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1242, i32 0, i32 1
  store ptr %a.buf1244, ptr %a.data.gep1246, align 8
  %a.cap.gep1247 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1242, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1247, align 8
  store ptr %a.create1242, ptr %var.refs, align 8
  br label %a.after1240

a.after1240:                                      ; preds = %a.create1239, %a.after1227
  %a.load21248 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1222, ptr %a.load21235, ptr %a.load21248)
  %var.load1249 = load ptr, ptr %var.ce, align 8
  %fld.gep1250 = getelementptr inbounds { ptr, ptr }, ptr %var.load1249, i32 0, i32 1
  %fld.load1251 = load ptr, ptr %fld.gep1250, align 8
  %var.load1252 = load ptr, ptr %var.locals, align 8
  %a.load1253 = load ptr, ptr %var.locals, align 8
  %a.null1254 = icmp eq ptr %a.load1253, null
  br i1 %a.null1254, label %a.create1255, label %a.after1256

a.create1255:                                     ; preds = %a.after1240
  %arena.cur1257 = call ptr @dva_arena_current()
  %a.create1258 = call ptr @dva_arena_alloc(ptr %arena.cur1257, i64 24)
  %arena.cur1259 = call ptr @dva_arena_current()
  %a.buf1260 = call ptr @dva_arena_alloc(ptr %arena.cur1259, i64 128)
  %a.len.gep1261 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1258, i32 0, i32 0
  store i64 0, ptr %a.len.gep1261, align 8
  %a.data.gep1262 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1258, i32 0, i32 1
  store ptr %a.buf1260, ptr %a.data.gep1262, align 8
  %a.cap.gep1263 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1258, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1263, align 8
  store ptr %a.create1258, ptr %var.locals, align 8
  br label %a.after1256

a.after1256:                                      ; preds = %a.create1255, %a.after1240
  %a.load21264 = load ptr, ptr %var.locals, align 8
  %var.load1265 = load ptr, ptr %var.refs, align 8
  %a.load1266 = load ptr, ptr %var.refs, align 8
  %a.null1267 = icmp eq ptr %a.load1266, null
  br i1 %a.null1267, label %a.create1268, label %a.after1269

a.create1268:                                     ; preds = %a.after1256
  %arena.cur1270 = call ptr @dva_arena_current()
  %a.create1271 = call ptr @dva_arena_alloc(ptr %arena.cur1270, i64 24)
  %arena.cur1272 = call ptr @dva_arena_current()
  %a.buf1273 = call ptr @dva_arena_alloc(ptr %arena.cur1272, i64 128)
  %a.len.gep1274 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1271, i32 0, i32 0
  store i64 0, ptr %a.len.gep1274, align 8
  %a.data.gep1275 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1271, i32 0, i32 1
  store ptr %a.buf1273, ptr %a.data.gep1275, align 8
  %a.cap.gep1276 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1271, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1276, align 8
  store ptr %a.create1271, ptr %var.refs, align 8
  br label %a.after1269

a.after1269:                                      ; preds = %a.create1268, %a.after1256
  %a.load21277 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1251, ptr %a.load21264, ptr %a.load21277)
  br label %choice.exit

choice.case1278:                                  ; preds = %choice.next1213
  %pay.gep1283 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1284 = load ptr, ptr %pay.gep1283, align 8
  store ptr %payload.ptr1284, ptr %var._1285, align 8
  store ptr %payload.ptr1284, ptr %var.r, align 8
  %var.load1286 = load ptr, ptr %var.r, align 8
  %fld.gep1287 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1286, i32 0, i32 0
  %fld.load1288 = load i1, ptr %fld.gep1287, align 1
  br i1 %fld.load1288, label %choice.then1289, label %choice.exit1290

choice.next1279:                                  ; preds = %choice.next1213
  %tag.gep1435 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1436 = load i64, ptr %tag.gep1435, align 8
  %tag.match1437 = icmp eq i64 %tag.id1436, 36
  br i1 %tag.match1437, label %choice.case1433, label %choice.next1434

choice.then1289:                                  ; preds = %choice.case1278
  %var.load1291 = load ptr, ptr %var.r, align 8
  %fld.gep1292 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1291, i32 0, i32 2
  %fld.load1293 = load ptr, ptr %fld.gep1292, align 8
  %var.load1294 = load ptr, ptr %var.locals, align 8
  %a.load1295 = load ptr, ptr %var.locals, align 8
  %a.null1296 = icmp eq ptr %a.load1295, null
  br i1 %a.null1296, label %a.create1297, label %a.after1298

choice.exit1290:                                  ; preds = %a.after1311, %choice.case1278
  %var.load1320 = load ptr, ptr %var.r, align 8
  %fld.gep1321 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1320, i32 0, i32 1
  %fld.load1322 = load i1, ptr %fld.gep1321, align 1
  br i1 %fld.load1322, label %choice.then1323, label %choice.exit1324

a.create1297:                                     ; preds = %choice.then1289
  %arena.cur1299 = call ptr @dva_arena_current()
  %a.create1300 = call ptr @dva_arena_alloc(ptr %arena.cur1299, i64 24)
  %arena.cur1301 = call ptr @dva_arena_current()
  %a.buf1302 = call ptr @dva_arena_alloc(ptr %arena.cur1301, i64 128)
  %a.len.gep1303 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1300, i32 0, i32 0
  store i64 0, ptr %a.len.gep1303, align 8
  %a.data.gep1304 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1300, i32 0, i32 1
  store ptr %a.buf1302, ptr %a.data.gep1304, align 8
  %a.cap.gep1305 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1300, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1305, align 8
  store ptr %a.create1300, ptr %var.locals, align 8
  br label %a.after1298

a.after1298:                                      ; preds = %a.create1297, %choice.then1289
  %a.load21306 = load ptr, ptr %var.locals, align 8
  %var.load1307 = load ptr, ptr %var.refs, align 8
  %a.load1308 = load ptr, ptr %var.refs, align 8
  %a.null1309 = icmp eq ptr %a.load1308, null
  br i1 %a.null1309, label %a.create1310, label %a.after1311

a.create1310:                                     ; preds = %a.after1298
  %arena.cur1312 = call ptr @dva_arena_current()
  %a.create1313 = call ptr @dva_arena_alloc(ptr %arena.cur1312, i64 24)
  %arena.cur1314 = call ptr @dva_arena_current()
  %a.buf1315 = call ptr @dva_arena_alloc(ptr %arena.cur1314, i64 128)
  %a.len.gep1316 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1313, i32 0, i32 0
  store i64 0, ptr %a.len.gep1316, align 8
  %a.data.gep1317 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1313, i32 0, i32 1
  store ptr %a.buf1315, ptr %a.data.gep1317, align 8
  %a.cap.gep1318 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1313, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1318, align 8
  store ptr %a.create1313, ptr %var.refs, align 8
  br label %a.after1311

a.after1311:                                      ; preds = %a.create1310, %a.after1298
  %a.load21319 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1293, ptr %a.load21306, ptr %a.load21319)
  br label %choice.exit1290

choice.then1323:                                  ; preds = %choice.exit1290
  %var.load1325 = load ptr, ptr %var.r, align 8
  %fld.gep1326 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1325, i32 0, i32 3
  %fld.load1327 = load ptr, ptr %fld.gep1326, align 8
  %tag.gep1331 = getelementptr inbounds { i64, ptr }, ptr %fld.load1327, i32 0, i32 0
  %tag.id1332 = load i64, ptr %tag.gep1331, align 8
  %tag.match1333 = icmp eq i64 %tag.id1332, 3
  br i1 %tag.match1333, label %choice.case1329, label %choice.next1330

choice.exit1324:                                  ; preds = %choice.exit1328, %choice.exit1290
  br label %choice.exit

choice.exit1328:                                  ; preds = %a.after1424, %choice.exit1374
  br label %choice.exit1324

choice.case1329:                                  ; preds = %choice.then1323
  %pay.gep1334 = getelementptr inbounds { i64, ptr }, ptr %fld.load1327, i32 0, i32 1
  %payload.ptr1335 = load ptr, ptr %pay.gep1334, align 8
  store ptr %payload.ptr1335, ptr %var._1336, align 8
  store ptr %payload.ptr1335, ptr %var.v1337, align 8
  %var.load1338 = load ptr, ptr %var.v1337, align 8
  %eq.lhs.len1339 = getelementptr inbounds { i64, ptr }, ptr %var.load1338, i32 0, i32 0
  %eq.lhs.len1340 = load i64, ptr %eq.lhs.len1339, align 8
  %eq.lhs.len1341 = and i64 %eq.lhs.len1340, 281474976710655
  %str.tag1342 = lshr i64 %eq.lhs.len1340, 48
  %str.immortal1343 = icmp eq i64 %str.tag1342, 0
  br i1 %str.immortal1343, label %str_ok1345, label %str_gen_check1344

choice.next1330:                                  ; preds = %choice.then1323
  %var.load1404 = load ptr, ptr %var.r, align 8
  %fld.gep1405 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1404, i32 0, i32 3
  %fld.load1406 = load ptr, ptr %fld.gep1405, align 8
  %var.load1407 = load ptr, ptr %var.locals, align 8
  %a.load1408 = load ptr, ptr %var.locals, align 8
  %a.null1409 = icmp eq ptr %a.load1408, null
  br i1 %a.null1409, label %a.create1410, label %a.after1411

str_gen_check1344:                                ; preds = %choice.case1329
  %arena.cur1347 = call ptr @dva_arena_current()
  %tag.valid1348 = call i1 @dva_arena_validate_tag(ptr %arena.cur1347, i64 %str.tag1342)
  br i1 %tag.valid1348, label %str_ok1345, label %str_stale1346

str_ok1345:                                       ; preds = %str_stale1346, %str_gen_check1344, %choice.case1329
  %eq.rhs.len1349 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len1350 = and i64 %eq.rhs.len1349, 281474976710655
  %str.tag1351 = lshr i64 %eq.rhs.len1349, 48
  %str.immortal1352 = icmp eq i64 %str.tag1351, 0
  br i1 %str.immortal1352, label %str_ok1354, label %str_gen_check1353

str_stale1346:                                    ; preds = %str_gen_check1344
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1345

str_gen_check1353:                                ; preds = %str_ok1345
  %arena.cur1356 = call ptr @dva_arena_current()
  %tag.valid1357 = call i1 @dva_arena_validate_tag(ptr %arena.cur1356, i64 %str.tag1351)
  br i1 %tag.valid1357, label %str_ok1354, label %str_stale1355

str_ok1354:                                       ; preds = %str_stale1355, %str_gen_check1353, %str_ok1345
  %eq.len1358 = icmp eq i64 %eq.lhs.len1341, %eq.rhs.len1350
  br i1 %eq.len1358, label %str.eq.then1359, label %str.eq.else1360

str_stale1355:                                    ; preds = %str_gen_check1353
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1354

str.eq.then1359:                                  ; preds = %str_ok1354
  %eq.lhs.data1362 = getelementptr inbounds { i64, ptr }, ptr %var.load1338, i32 0, i32 1
  %eq.lhs.data1363 = load ptr, ptr %eq.lhs.data1362, align 8
  %eq.rhs.data1364 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp1365 = call i32 @memcmp(ptr %eq.lhs.data1363, ptr %eq.rhs.data1364, i64 %eq.lhs.len1341)
  %eq.cmp.zero1366 = icmp eq i32 %eq.memcmp1365, 0
  br label %str.eq.merge1361

str.eq.else1360:                                  ; preds = %str_ok1354
  br label %str.eq.merge1361

str.eq.merge1361:                                 ; preds = %str.eq.else1360, %str.eq.then1359
  %str.eq.result1367 = phi i1 [ %eq.cmp.zero1366, %str.eq.then1359 ], [ false, %str.eq.else1360 ]
  br i1 %str.eq.result1367, label %and.44.then, label %and.44.else

and.44.then:                                      ; preds = %str.eq.merge1361
  %var.load1368 = load ptr, ptr %var.r, align 8
  %fld.gep1369 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1368, i32 0, i32 0
  %fld.load1370 = load i1, ptr %fld.gep1369, align 1
  %nottmp1371 = xor i1 %fld.load1370, true
  br label %and.44.exit

and.44.else:                                      ; preds = %str.eq.merge1361
  br label %and.44.exit

and.44.exit:                                      ; preds = %and.44.else, %and.44.then
  %and.44.phi = phi i1 [ %nottmp1371, %and.44.then ], [ %str.eq.result1367, %and.44.else ]
  %nottmp1372 = xor i1 %and.44.phi, true
  br i1 %nottmp1372, label %choice.then1373, label %choice.exit1374

choice.then1373:                                  ; preds = %and.44.exit
  %var.load1375 = load ptr, ptr %var.r, align 8
  %fld.gep1376 = getelementptr inbounds { i1, i1, ptr, ptr, i1 }, ptr %var.load1375, i32 0, i32 3
  %fld.load1377 = load ptr, ptr %fld.gep1376, align 8
  %var.load1378 = load ptr, ptr %var.locals, align 8
  %a.load1379 = load ptr, ptr %var.locals, align 8
  %a.null1380 = icmp eq ptr %a.load1379, null
  br i1 %a.null1380, label %a.create1381, label %a.after1382

choice.exit1374:                                  ; preds = %a.after1395, %and.44.exit
  br label %choice.exit1328

a.create1381:                                     ; preds = %choice.then1373
  %arena.cur1383 = call ptr @dva_arena_current()
  %a.create1384 = call ptr @dva_arena_alloc(ptr %arena.cur1383, i64 24)
  %arena.cur1385 = call ptr @dva_arena_current()
  %a.buf1386 = call ptr @dva_arena_alloc(ptr %arena.cur1385, i64 128)
  %a.len.gep1387 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1384, i32 0, i32 0
  store i64 0, ptr %a.len.gep1387, align 8
  %a.data.gep1388 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1384, i32 0, i32 1
  store ptr %a.buf1386, ptr %a.data.gep1388, align 8
  %a.cap.gep1389 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1384, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1389, align 8
  store ptr %a.create1384, ptr %var.locals, align 8
  br label %a.after1382

a.after1382:                                      ; preds = %a.create1381, %choice.then1373
  %a.load21390 = load ptr, ptr %var.locals, align 8
  %var.load1391 = load ptr, ptr %var.refs, align 8
  %a.load1392 = load ptr, ptr %var.refs, align 8
  %a.null1393 = icmp eq ptr %a.load1392, null
  br i1 %a.null1393, label %a.create1394, label %a.after1395

a.create1394:                                     ; preds = %a.after1382
  %arena.cur1396 = call ptr @dva_arena_current()
  %a.create1397 = call ptr @dva_arena_alloc(ptr %arena.cur1396, i64 24)
  %arena.cur1398 = call ptr @dva_arena_current()
  %a.buf1399 = call ptr @dva_arena_alloc(ptr %arena.cur1398, i64 128)
  %a.len.gep1400 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1397, i32 0, i32 0
  store i64 0, ptr %a.len.gep1400, align 8
  %a.data.gep1401 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1397, i32 0, i32 1
  store ptr %a.buf1399, ptr %a.data.gep1401, align 8
  %a.cap.gep1402 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1397, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1402, align 8
  store ptr %a.create1397, ptr %var.refs, align 8
  br label %a.after1395

a.after1395:                                      ; preds = %a.create1394, %a.after1382
  %a.load21403 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1377, ptr %a.load21390, ptr %a.load21403)
  br label %choice.exit1374

a.create1410:                                     ; preds = %choice.next1330
  %arena.cur1412 = call ptr @dva_arena_current()
  %a.create1413 = call ptr @dva_arena_alloc(ptr %arena.cur1412, i64 24)
  %arena.cur1414 = call ptr @dva_arena_current()
  %a.buf1415 = call ptr @dva_arena_alloc(ptr %arena.cur1414, i64 128)
  %a.len.gep1416 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1413, i32 0, i32 0
  store i64 0, ptr %a.len.gep1416, align 8
  %a.data.gep1417 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1413, i32 0, i32 1
  store ptr %a.buf1415, ptr %a.data.gep1417, align 8
  %a.cap.gep1418 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1413, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1418, align 8
  store ptr %a.create1413, ptr %var.locals, align 8
  br label %a.after1411

a.after1411:                                      ; preds = %a.create1410, %choice.next1330
  %a.load21419 = load ptr, ptr %var.locals, align 8
  %var.load1420 = load ptr, ptr %var.refs, align 8
  %a.load1421 = load ptr, ptr %var.refs, align 8
  %a.null1422 = icmp eq ptr %a.load1421, null
  br i1 %a.null1422, label %a.create1423, label %a.after1424

a.create1423:                                     ; preds = %a.after1411
  %arena.cur1425 = call ptr @dva_arena_current()
  %a.create1426 = call ptr @dva_arena_alloc(ptr %arena.cur1425, i64 24)
  %arena.cur1427 = call ptr @dva_arena_current()
  %a.buf1428 = call ptr @dva_arena_alloc(ptr %arena.cur1427, i64 128)
  %a.len.gep1429 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1426, i32 0, i32 0
  store i64 0, ptr %a.len.gep1429, align 8
  %a.data.gep1430 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1426, i32 0, i32 1
  store ptr %a.buf1428, ptr %a.data.gep1430, align 8
  %a.cap.gep1431 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1426, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1431, align 8
  store ptr %a.create1426, ptr %var.refs, align 8
  br label %a.after1424

a.after1424:                                      ; preds = %a.create1423, %a.after1411
  %a.load21432 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1406, ptr %a.load21419, ptr %a.load21432)
  br label %choice.exit1328

choice.case1433:                                  ; preds = %choice.next1279
  %pay.gep1438 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1439 = load ptr, ptr %pay.gep1438, align 8
  store ptr %payload.ptr1439, ptr %var._1440, align 8
  store ptr %payload.ptr1439, ptr %var.na, align 8
  %var.load1441 = load ptr, ptr %var.na, align 8
  %fld.gep1442 = getelementptr inbounds { ptr, ptr }, ptr %var.load1441, i32 0, i32 1
  %fld.load1443 = load ptr, ptr %fld.gep1442, align 8
  %var.load1444 = load ptr, ptr %var.locals, align 8
  %a.load1445 = load ptr, ptr %var.locals, align 8
  %a.null1446 = icmp eq ptr %a.load1445, null
  br i1 %a.null1446, label %a.create1447, label %a.after1448

choice.next1434:                                  ; preds = %choice.next1279
  %tag.gep1472 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1473 = load i64, ptr %tag.gep1472, align 8
  %tag.match1474 = icmp eq i64 %tag.id1473, 18
  br i1 %tag.match1474, label %choice.case1470, label %choice.next1471

a.create1447:                                     ; preds = %choice.case1433
  %arena.cur1449 = call ptr @dva_arena_current()
  %a.create1450 = call ptr @dva_arena_alloc(ptr %arena.cur1449, i64 24)
  %arena.cur1451 = call ptr @dva_arena_current()
  %a.buf1452 = call ptr @dva_arena_alloc(ptr %arena.cur1451, i64 128)
  %a.len.gep1453 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1450, i32 0, i32 0
  store i64 0, ptr %a.len.gep1453, align 8
  %a.data.gep1454 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1450, i32 0, i32 1
  store ptr %a.buf1452, ptr %a.data.gep1454, align 8
  %a.cap.gep1455 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1450, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1455, align 8
  store ptr %a.create1450, ptr %var.locals, align 8
  br label %a.after1448

a.after1448:                                      ; preds = %a.create1447, %choice.case1433
  %a.load21456 = load ptr, ptr %var.locals, align 8
  %var.load1457 = load ptr, ptr %var.refs, align 8
  %a.load1458 = load ptr, ptr %var.refs, align 8
  %a.null1459 = icmp eq ptr %a.load1458, null
  br i1 %a.null1459, label %a.create1460, label %a.after1461

a.create1460:                                     ; preds = %a.after1448
  %arena.cur1462 = call ptr @dva_arena_current()
  %a.create1463 = call ptr @dva_arena_alloc(ptr %arena.cur1462, i64 24)
  %arena.cur1464 = call ptr @dva_arena_current()
  %a.buf1465 = call ptr @dva_arena_alloc(ptr %arena.cur1464, i64 128)
  %a.len.gep1466 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1463, i32 0, i32 0
  store i64 0, ptr %a.len.gep1466, align 8
  %a.data.gep1467 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1463, i32 0, i32 1
  store ptr %a.buf1465, ptr %a.data.gep1467, align 8
  %a.cap.gep1468 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1463, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1468, align 8
  store ptr %a.create1463, ptr %var.refs, align 8
  br label %a.after1461

a.after1461:                                      ; preds = %a.create1460, %a.after1448
  %a.load21469 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1443, ptr %a.load21456, ptr %a.load21469)
  br label %choice.exit

choice.case1470:                                  ; preds = %choice.next1434
  %pay.gep1475 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1476 = load ptr, ptr %pay.gep1475, align 8
  store ptr %payload.ptr1476, ptr %var._1477, align 8
  store ptr %payload.ptr1476, ptr %var.v1478, align 8
  %var.load1479 = load ptr, ptr %var.v1478, align 8
  %fld.gep1480 = getelementptr inbounds { ptr, ptr }, ptr %var.load1479, i32 0, i32 1
  %fld.load1481 = load ptr, ptr %fld.gep1480, align 8
  %arr.cycle.len1482 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1481, i32 0, i32 0
  %arr.cycle.len1483 = load i64, ptr %arr.cycle.len1482, align 8
  %arr.cycle.data1484 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1481, i32 0, i32 1
  %arr.cycle.data1485 = load ptr, ptr %arr.cycle.data1484, align 8
  store i64 0, ptr %loop.idx.45, align 8
  %cycle.prev.u1486 = load ptr, ptr %var._1477, align 8
  br label %loop.header.45

choice.next1471:                                  ; preds = %choice.next1434
  %tag.gep1526 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1527 = load i64, ptr %tag.gep1526, align 8
  %tag.match1528 = icmp eq i64 %tag.id1527, 25
  br i1 %tag.match1528, label %choice.case1524, label %choice.next1525

loop.header.45:                                   ; preds = %loop.latch.45, %choice.case1470
  %counter.load1487 = load i64, ptr %loop.idx.45, align 8
  %loop.cond1488 = icmp slt i64 %counter.load1487, %arr.cycle.len1483
  br i1 %loop.cond1488, label %loop.body.45, label %loop.exit.nat.45

loop.body.45:                                     ; preds = %loop.header.45
  %loop.rel.i1489 = sub i64 %counter.load1487, 0
  store i64 1, ptr %loop.step.45, align 8
  %arr.elem.gep1490 = getelementptr i64, ptr %arr.cycle.data1485, i64 %counter.load1487
  %arr.elem.raw1491 = load i64, ptr %arr.elem.gep1490, align 8
  %slot.i2p1492 = inttoptr i64 %arr.elem.raw1491 to ptr
  store i64 %loop.rel.i1489, ptr %var._i1493, align 8
  store ptr %slot.i2p1492, ptr %var._1494, align 8
  store ptr %slot.i2p1492, ptr %var.varg, align 8
  %var.load1495 = load ptr, ptr %var.varg, align 8
  %var.load1496 = load ptr, ptr %var.locals, align 8
  %a.load1497 = load ptr, ptr %var.locals, align 8
  %a.null1498 = icmp eq ptr %a.load1497, null
  br i1 %a.null1498, label %a.create1499, label %a.after1500

loop.exit.nat.45:                                 ; preds = %loop.header.45
  br label %loop.exit.45

loop.latch.45:                                    ; preds = %a.after1513
  %step.val1522 = load i64, ptr %loop.step.45, align 8
  %loop.next1523 = add i64 %counter.load1487, %step.val1522
  store i64 %loop.next1523, ptr %loop.idx.45, align 8
  br label %loop.header.45

loop.exit.45:                                     ; preds = %loop.exit.nat.45
  store ptr %cycle.prev.u1486, ptr %var._1477, align 8
  br label %choice.exit

a.create1499:                                     ; preds = %loop.body.45
  %arena.cur1501 = call ptr @dva_arena_current()
  %a.create1502 = call ptr @dva_arena_alloc(ptr %arena.cur1501, i64 24)
  %arena.cur1503 = call ptr @dva_arena_current()
  %a.buf1504 = call ptr @dva_arena_alloc(ptr %arena.cur1503, i64 128)
  %a.len.gep1505 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1502, i32 0, i32 0
  store i64 0, ptr %a.len.gep1505, align 8
  %a.data.gep1506 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1502, i32 0, i32 1
  store ptr %a.buf1504, ptr %a.data.gep1506, align 8
  %a.cap.gep1507 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1502, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1507, align 8
  store ptr %a.create1502, ptr %var.locals, align 8
  br label %a.after1500

a.after1500:                                      ; preds = %a.create1499, %loop.body.45
  %a.load21508 = load ptr, ptr %var.locals, align 8
  %var.load1509 = load ptr, ptr %var.refs, align 8
  %a.load1510 = load ptr, ptr %var.refs, align 8
  %a.null1511 = icmp eq ptr %a.load1510, null
  br i1 %a.null1511, label %a.create1512, label %a.after1513

a.create1512:                                     ; preds = %a.after1500
  %arena.cur1514 = call ptr @dva_arena_current()
  %a.create1515 = call ptr @dva_arena_alloc(ptr %arena.cur1514, i64 24)
  %arena.cur1516 = call ptr @dva_arena_current()
  %a.buf1517 = call ptr @dva_arena_alloc(ptr %arena.cur1516, i64 128)
  %a.len.gep1518 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1515, i32 0, i32 0
  store i64 0, ptr %a.len.gep1518, align 8
  %a.data.gep1519 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1515, i32 0, i32 1
  store ptr %a.buf1517, ptr %a.data.gep1519, align 8
  %a.cap.gep1520 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1515, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1520, align 8
  store ptr %a.create1515, ptr %var.refs, align 8
  br label %a.after1513

a.after1513:                                      ; preds = %a.create1512, %a.after1500
  %a.load21521 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1495, ptr %a.load21508, ptr %a.load21521)
  br label %loop.latch.45

choice.case1524:                                  ; preds = %choice.next1471
  %pay.gep1529 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1530 = load ptr, ptr %pay.gep1529, align 8
  store ptr %payload.ptr1530, ptr %var._1531, align 8
  store ptr %payload.ptr1530, ptr %var.cp, align 8
  %var.load1532 = load ptr, ptr %var.cp, align 8
  %var.load1533 = load ptr, ptr %var.locals, align 8
  %a.load1534 = load ptr, ptr %var.locals, align 8
  %a.null1535 = icmp eq ptr %a.load1534, null
  br i1 %a.null1535, label %a.create1536, label %a.after1537

choice.next1525:                                  ; preds = %choice.next1471
  %tag.gep1561 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1562 = load i64, ptr %tag.gep1561, align 8
  %tag.match1563 = icmp eq i64 %tag.id1562, 27
  br i1 %tag.match1563, label %choice.case1559, label %choice.next1560

a.create1536:                                     ; preds = %choice.case1524
  %arena.cur1538 = call ptr @dva_arena_current()
  %a.create1539 = call ptr @dva_arena_alloc(ptr %arena.cur1538, i64 24)
  %arena.cur1540 = call ptr @dva_arena_current()
  %a.buf1541 = call ptr @dva_arena_alloc(ptr %arena.cur1540, i64 128)
  %a.len.gep1542 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1539, i32 0, i32 0
  store i64 0, ptr %a.len.gep1542, align 8
  %a.data.gep1543 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1539, i32 0, i32 1
  store ptr %a.buf1541, ptr %a.data.gep1543, align 8
  %a.cap.gep1544 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1539, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1544, align 8
  store ptr %a.create1539, ptr %var.locals, align 8
  br label %a.after1537

a.after1537:                                      ; preds = %a.create1536, %choice.case1524
  %a.load21545 = load ptr, ptr %var.locals, align 8
  %var.load1546 = load ptr, ptr %var.refs, align 8
  %a.load1547 = load ptr, ptr %var.refs, align 8
  %a.null1548 = icmp eq ptr %a.load1547, null
  br i1 %a.null1548, label %a.create1549, label %a.after1550

a.create1549:                                     ; preds = %a.after1537
  %arena.cur1551 = call ptr @dva_arena_current()
  %a.create1552 = call ptr @dva_arena_alloc(ptr %arena.cur1551, i64 24)
  %arena.cur1553 = call ptr @dva_arena_current()
  %a.buf1554 = call ptr @dva_arena_alloc(ptr %arena.cur1553, i64 128)
  %a.len.gep1555 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1552, i32 0, i32 0
  store i64 0, ptr %a.len.gep1555, align 8
  %a.data.gep1556 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1552, i32 0, i32 1
  store ptr %a.buf1554, ptr %a.data.gep1556, align 8
  %a.cap.gep1557 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1552, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1557, align 8
  store ptr %a.create1552, ptr %var.refs, align 8
  br label %a.after1550

a.after1550:                                      ; preds = %a.create1549, %a.after1537
  %a.load21558 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1532, ptr %a.load21545, ptr %a.load21558)
  br label %choice.exit

choice.case1559:                                  ; preds = %choice.next1525
  %pay.gep1564 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1565 = load ptr, ptr %pay.gep1564, align 8
  store ptr %payload.ptr1565, ptr %var._1566, align 8
  store ptr %payload.ptr1565, ptr %var.bc, align 8
  %var.load1567 = load ptr, ptr %var.bc, align 8
  %var.load1568 = load ptr, ptr %var.locals, align 8
  %a.load1569 = load ptr, ptr %var.locals, align 8
  %a.null1570 = icmp eq ptr %a.load1569, null
  br i1 %a.null1570, label %a.create1571, label %a.after1572

choice.next1560:                                  ; preds = %choice.next1525
  %tag.gep1596 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1597 = load i64, ptr %tag.gep1596, align 8
  %tag.match1598 = icmp eq i64 %tag.id1597, 22
  br i1 %tag.match1598, label %choice.case1594, label %choice.next1595

a.create1571:                                     ; preds = %choice.case1559
  %arena.cur1573 = call ptr @dva_arena_current()
  %a.create1574 = call ptr @dva_arena_alloc(ptr %arena.cur1573, i64 24)
  %arena.cur1575 = call ptr @dva_arena_current()
  %a.buf1576 = call ptr @dva_arena_alloc(ptr %arena.cur1575, i64 128)
  %a.len.gep1577 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1574, i32 0, i32 0
  store i64 0, ptr %a.len.gep1577, align 8
  %a.data.gep1578 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1574, i32 0, i32 1
  store ptr %a.buf1576, ptr %a.data.gep1578, align 8
  %a.cap.gep1579 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1574, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1579, align 8
  store ptr %a.create1574, ptr %var.locals, align 8
  br label %a.after1572

a.after1572:                                      ; preds = %a.create1571, %choice.case1559
  %a.load21580 = load ptr, ptr %var.locals, align 8
  %var.load1581 = load ptr, ptr %var.refs, align 8
  %a.load1582 = load ptr, ptr %var.refs, align 8
  %a.null1583 = icmp eq ptr %a.load1582, null
  br i1 %a.null1583, label %a.create1584, label %a.after1585

a.create1584:                                     ; preds = %a.after1572
  %arena.cur1586 = call ptr @dva_arena_current()
  %a.create1587 = call ptr @dva_arena_alloc(ptr %arena.cur1586, i64 24)
  %arena.cur1588 = call ptr @dva_arena_current()
  %a.buf1589 = call ptr @dva_arena_alloc(ptr %arena.cur1588, i64 128)
  %a.len.gep1590 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1587, i32 0, i32 0
  store i64 0, ptr %a.len.gep1590, align 8
  %a.data.gep1591 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1587, i32 0, i32 1
  store ptr %a.buf1589, ptr %a.data.gep1591, align 8
  %a.cap.gep1592 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1587, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1592, align 8
  store ptr %a.create1587, ptr %var.refs, align 8
  br label %a.after1585

a.after1585:                                      ; preds = %a.create1584, %a.after1572
  %a.load21593 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1567, ptr %a.load21580, ptr %a.load21593)
  br label %choice.exit

choice.case1594:                                  ; preds = %choice.next1560
  %pay.gep1599 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1600 = load ptr, ptr %pay.gep1599, align 8
  store ptr %payload.ptr1600, ptr %var._1601, align 8
  store ptr %payload.ptr1600, ptr %var.tc, align 8
  %var.load1602 = load ptr, ptr %var.tc, align 8
  %fld.gep1603 = getelementptr inbounds { ptr, ptr }, ptr %var.load1602, i32 0, i32 1
  %fld.load1604 = load ptr, ptr %fld.gep1603, align 8
  %var.load1605 = load ptr, ptr %var.locals, align 8
  %a.load1606 = load ptr, ptr %var.locals, align 8
  %a.null1607 = icmp eq ptr %a.load1606, null
  br i1 %a.null1607, label %a.create1608, label %a.after1609

choice.next1595:                                  ; preds = %choice.next1560
  %tag.gep1633 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1634 = load i64, ptr %tag.gep1633, align 8
  %tag.match1635 = icmp eq i64 %tag.id1634, 30
  br i1 %tag.match1635, label %choice.case1631, label %choice.next1632

a.create1608:                                     ; preds = %choice.case1594
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
  store ptr %a.create1611, ptr %var.locals, align 8
  br label %a.after1609

a.after1609:                                      ; preds = %a.create1608, %choice.case1594
  %a.load21617 = load ptr, ptr %var.locals, align 8
  %var.load1618 = load ptr, ptr %var.refs, align 8
  %a.load1619 = load ptr, ptr %var.refs, align 8
  %a.null1620 = icmp eq ptr %a.load1619, null
  br i1 %a.null1620, label %a.create1621, label %a.after1622

a.create1621:                                     ; preds = %a.after1609
  %arena.cur1623 = call ptr @dva_arena_current()
  %a.create1624 = call ptr @dva_arena_alloc(ptr %arena.cur1623, i64 24)
  %arena.cur1625 = call ptr @dva_arena_current()
  %a.buf1626 = call ptr @dva_arena_alloc(ptr %arena.cur1625, i64 128)
  %a.len.gep1627 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1624, i32 0, i32 0
  store i64 0, ptr %a.len.gep1627, align 8
  %a.data.gep1628 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1624, i32 0, i32 1
  store ptr %a.buf1626, ptr %a.data.gep1628, align 8
  %a.cap.gep1629 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1624, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1629, align 8
  store ptr %a.create1624, ptr %var.refs, align 8
  br label %a.after1622

a.after1622:                                      ; preds = %a.create1621, %a.after1609
  %a.load21630 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1604, ptr %a.load21617, ptr %a.load21630)
  br label %choice.exit

choice.case1631:                                  ; preds = %choice.next1595
  %pay.gep1636 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1637 = load ptr, ptr %pay.gep1636, align 8
  store ptr %payload.ptr1637, ptr %var._1638, align 8
  store ptr %payload.ptr1637, ptr %var.ct, align 8
  %var.load1639 = load ptr, ptr %var.ct, align 8
  %var.load1640 = load ptr, ptr %var.locals, align 8
  %a.load1641 = load ptr, ptr %var.locals, align 8
  %a.null1642 = icmp eq ptr %a.load1641, null
  br i1 %a.null1642, label %a.create1643, label %a.after1644

choice.next1632:                                  ; preds = %choice.next1595
  %tag.gep1668 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1669 = load i64, ptr %tag.gep1668, align 8
  %tag.match1670 = icmp eq i64 %tag.id1669, 31
  br i1 %tag.match1670, label %choice.case1666, label %choice.next1667

a.create1643:                                     ; preds = %choice.case1631
  %arena.cur1645 = call ptr @dva_arena_current()
  %a.create1646 = call ptr @dva_arena_alloc(ptr %arena.cur1645, i64 24)
  %arena.cur1647 = call ptr @dva_arena_current()
  %a.buf1648 = call ptr @dva_arena_alloc(ptr %arena.cur1647, i64 128)
  %a.len.gep1649 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1646, i32 0, i32 0
  store i64 0, ptr %a.len.gep1649, align 8
  %a.data.gep1650 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1646, i32 0, i32 1
  store ptr %a.buf1648, ptr %a.data.gep1650, align 8
  %a.cap.gep1651 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1646, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1651, align 8
  store ptr %a.create1646, ptr %var.locals, align 8
  br label %a.after1644

a.after1644:                                      ; preds = %a.create1643, %choice.case1631
  %a.load21652 = load ptr, ptr %var.locals, align 8
  %var.load1653 = load ptr, ptr %var.refs, align 8
  %a.load1654 = load ptr, ptr %var.refs, align 8
  %a.null1655 = icmp eq ptr %a.load1654, null
  br i1 %a.null1655, label %a.create1656, label %a.after1657

a.create1656:                                     ; preds = %a.after1644
  %arena.cur1658 = call ptr @dva_arena_current()
  %a.create1659 = call ptr @dva_arena_alloc(ptr %arena.cur1658, i64 24)
  %arena.cur1660 = call ptr @dva_arena_current()
  %a.buf1661 = call ptr @dva_arena_alloc(ptr %arena.cur1660, i64 128)
  %a.len.gep1662 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1659, i32 0, i32 0
  store i64 0, ptr %a.len.gep1662, align 8
  %a.data.gep1663 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1659, i32 0, i32 1
  store ptr %a.buf1661, ptr %a.data.gep1663, align 8
  %a.cap.gep1664 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1659, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1664, align 8
  store ptr %a.create1659, ptr %var.refs, align 8
  br label %a.after1657

a.after1657:                                      ; preds = %a.create1656, %a.after1644
  %a.load21665 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1639, ptr %a.load21652, ptr %a.load21665)
  br label %choice.exit

choice.case1666:                                  ; preds = %choice.next1632
  %pay.gep1671 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1672 = load ptr, ptr %pay.gep1671, align 8
  store ptr %payload.ptr1672, ptr %var._1673, align 8
  store ptr %payload.ptr1672, ptr %var.sp, align 8
  %arena.cur1674 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur1674, i64 16)
  %tag.gep1675 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 9, ptr %tag.gep1675, align 8
  %pay.gep1676 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load1677 = load ptr, ptr %var.sp, align 8
  store ptr %var.load1677, ptr %pay.gep1676, align 8
  %var.load1678 = load ptr, ptr %var.locals, align 8
  %a.load1679 = load ptr, ptr %var.locals, align 8
  %a.null1680 = icmp eq ptr %a.load1679, null
  br i1 %a.null1680, label %a.create1681, label %a.after1682

choice.next1667:                                  ; preds = %choice.next1632
  %tag.gep1706 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1707 = load i64, ptr %tag.gep1706, align 8
  %tag.match1708 = icmp eq i64 %tag.id1707, 32
  br i1 %tag.match1708, label %choice.case1704, label %choice.next1705

a.create1681:                                     ; preds = %choice.case1666
  %arena.cur1683 = call ptr @dva_arena_current()
  %a.create1684 = call ptr @dva_arena_alloc(ptr %arena.cur1683, i64 24)
  %arena.cur1685 = call ptr @dva_arena_current()
  %a.buf1686 = call ptr @dva_arena_alloc(ptr %arena.cur1685, i64 128)
  %a.len.gep1687 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1684, i32 0, i32 0
  store i64 0, ptr %a.len.gep1687, align 8
  %a.data.gep1688 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1684, i32 0, i32 1
  store ptr %a.buf1686, ptr %a.data.gep1688, align 8
  %a.cap.gep1689 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1684, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1689, align 8
  store ptr %a.create1684, ptr %var.locals, align 8
  br label %a.after1682

a.after1682:                                      ; preds = %a.create1681, %choice.case1666
  %a.load21690 = load ptr, ptr %var.locals, align 8
  %var.load1691 = load ptr, ptr %var.refs, align 8
  %a.load1692 = load ptr, ptr %var.refs, align 8
  %a.null1693 = icmp eq ptr %a.load1692, null
  br i1 %a.null1693, label %a.create1694, label %a.after1695

a.create1694:                                     ; preds = %a.after1682
  %arena.cur1696 = call ptr @dva_arena_current()
  %a.create1697 = call ptr @dva_arena_alloc(ptr %arena.cur1696, i64 24)
  %arena.cur1698 = call ptr @dva_arena_current()
  %a.buf1699 = call ptr @dva_arena_alloc(ptr %arena.cur1698, i64 128)
  %a.len.gep1700 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1697, i32 0, i32 0
  store i64 0, ptr %a.len.gep1700, align 8
  %a.data.gep1701 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1697, i32 0, i32 1
  store ptr %a.buf1699, ptr %a.data.gep1701, align 8
  %a.cap.gep1702 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1697, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1702, align 8
  store ptr %a.create1697, ptr %var.refs, align 8
  br label %a.after1695

a.after1695:                                      ; preds = %a.create1694, %a.after1682
  %a.load21703 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %enum.alloc, ptr %a.load21690, ptr %a.load21703)
  br label %choice.exit

choice.case1704:                                  ; preds = %choice.next1667
  %pay.gep1709 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1710 = load ptr, ptr %pay.gep1709, align 8
  store ptr %payload.ptr1710, ptr %var._1711, align 8
  store ptr %payload.ptr1710, ptr %var.jn, align 8
  %var.load1712 = load ptr, ptr %var.jn, align 8
  %var.load1713 = load ptr, ptr %var.locals, align 8
  %a.load1714 = load ptr, ptr %var.locals, align 8
  %a.null1715 = icmp eq ptr %a.load1714, null
  br i1 %a.null1715, label %a.create1716, label %a.after1717

choice.next1705:                                  ; preds = %choice.next1667
  %tag.gep1741 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1742 = load i64, ptr %tag.gep1741, align 8
  %tag.match1743 = icmp eq i64 %tag.id1742, 33
  br i1 %tag.match1743, label %choice.case1739, label %choice.next1740

a.create1716:                                     ; preds = %choice.case1704
  %arena.cur1718 = call ptr @dva_arena_current()
  %a.create1719 = call ptr @dva_arena_alloc(ptr %arena.cur1718, i64 24)
  %arena.cur1720 = call ptr @dva_arena_current()
  %a.buf1721 = call ptr @dva_arena_alloc(ptr %arena.cur1720, i64 128)
  %a.len.gep1722 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1719, i32 0, i32 0
  store i64 0, ptr %a.len.gep1722, align 8
  %a.data.gep1723 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1719, i32 0, i32 1
  store ptr %a.buf1721, ptr %a.data.gep1723, align 8
  %a.cap.gep1724 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1719, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1724, align 8
  store ptr %a.create1719, ptr %var.locals, align 8
  br label %a.after1717

a.after1717:                                      ; preds = %a.create1716, %choice.case1704
  %a.load21725 = load ptr, ptr %var.locals, align 8
  %var.load1726 = load ptr, ptr %var.refs, align 8
  %a.load1727 = load ptr, ptr %var.refs, align 8
  %a.null1728 = icmp eq ptr %a.load1727, null
  br i1 %a.null1728, label %a.create1729, label %a.after1730

a.create1729:                                     ; preds = %a.after1717
  %arena.cur1731 = call ptr @dva_arena_current()
  %a.create1732 = call ptr @dva_arena_alloc(ptr %arena.cur1731, i64 24)
  %arena.cur1733 = call ptr @dva_arena_current()
  %a.buf1734 = call ptr @dva_arena_alloc(ptr %arena.cur1733, i64 128)
  %a.len.gep1735 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1732, i32 0, i32 0
  store i64 0, ptr %a.len.gep1735, align 8
  %a.data.gep1736 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1732, i32 0, i32 1
  store ptr %a.buf1734, ptr %a.data.gep1736, align 8
  %a.cap.gep1737 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1732, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1737, align 8
  store ptr %a.create1732, ptr %var.refs, align 8
  br label %a.after1730

a.after1730:                                      ; preds = %a.create1729, %a.after1717
  %a.load21738 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1712, ptr %a.load21725, ptr %a.load21738)
  br label %choice.exit

choice.case1739:                                  ; preds = %choice.next1705
  %pay.gep1744 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1745 = load ptr, ptr %pay.gep1744, align 8
  store ptr %payload.ptr1745, ptr %var._1746, align 8
  store ptr %payload.ptr1745, ptr %var.ex, align 8
  %var.load1747 = load ptr, ptr %var.ex, align 8
  %var.load1748 = load ptr, ptr %var.locals, align 8
  %a.load1749 = load ptr, ptr %var.locals, align 8
  %a.null1750 = icmp eq ptr %a.load1749, null
  br i1 %a.null1750, label %a.create1751, label %a.after1752

choice.next1740:                                  ; preds = %choice.next1705
  %tag.gep1776 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1777 = load i64, ptr %tag.gep1776, align 8
  %tag.match1778 = icmp eq i64 %tag.id1777, 38
  br i1 %tag.match1778, label %choice.case1774, label %choice.next1775

a.create1751:                                     ; preds = %choice.case1739
  %arena.cur1753 = call ptr @dva_arena_current()
  %a.create1754 = call ptr @dva_arena_alloc(ptr %arena.cur1753, i64 24)
  %arena.cur1755 = call ptr @dva_arena_current()
  %a.buf1756 = call ptr @dva_arena_alloc(ptr %arena.cur1755, i64 128)
  %a.len.gep1757 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1754, i32 0, i32 0
  store i64 0, ptr %a.len.gep1757, align 8
  %a.data.gep1758 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1754, i32 0, i32 1
  store ptr %a.buf1756, ptr %a.data.gep1758, align 8
  %a.cap.gep1759 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1754, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1759, align 8
  store ptr %a.create1754, ptr %var.locals, align 8
  br label %a.after1752

a.after1752:                                      ; preds = %a.create1751, %choice.case1739
  %a.load21760 = load ptr, ptr %var.locals, align 8
  %var.load1761 = load ptr, ptr %var.refs, align 8
  %a.load1762 = load ptr, ptr %var.refs, align 8
  %a.null1763 = icmp eq ptr %a.load1762, null
  br i1 %a.null1763, label %a.create1764, label %a.after1765

a.create1764:                                     ; preds = %a.after1752
  %arena.cur1766 = call ptr @dva_arena_current()
  %a.create1767 = call ptr @dva_arena_alloc(ptr %arena.cur1766, i64 24)
  %arena.cur1768 = call ptr @dva_arena_current()
  %a.buf1769 = call ptr @dva_arena_alloc(ptr %arena.cur1768, i64 128)
  %a.len.gep1770 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1767, i32 0, i32 0
  store i64 0, ptr %a.len.gep1770, align 8
  %a.data.gep1771 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1767, i32 0, i32 1
  store ptr %a.buf1769, ptr %a.data.gep1771, align 8
  %a.cap.gep1772 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1767, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1772, align 8
  store ptr %a.create1767, ptr %var.refs, align 8
  br label %a.after1765

a.after1765:                                      ; preds = %a.create1764, %a.after1752
  %a.load21773 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %var.load1747, ptr %a.load21760, ptr %a.load21773)
  br label %choice.exit

choice.case1774:                                  ; preds = %choice.next1740
  %pay.gep1779 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1780 = load ptr, ptr %pay.gep1779, align 8
  store ptr %payload.ptr1780, ptr %var._1781, align 8
  store ptr %payload.ptr1780, ptr %var.ud, align 8
  %var.load1782 = load ptr, ptr %var.ud, align 8
  %fld.gep1783 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1782, i32 0, i32 1
  %fld.load1784 = load ptr, ptr %fld.gep1783, align 8
  %var.load1785 = load ptr, ptr %var.locals, align 8
  %a.load1786 = load ptr, ptr %var.locals, align 8
  %a.null1787 = icmp eq ptr %a.load1786, null
  br i1 %a.null1787, label %a.create1788, label %a.after1789

choice.next1775:                                  ; preds = %choice.next1740
  %tag.gep1813 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1814 = load i64, ptr %tag.gep1813, align 8
  %tag.match1815 = icmp eq i64 %tag.id1814, 37
  br i1 %tag.match1815, label %choice.case1811, label %choice.next1812

a.create1788:                                     ; preds = %choice.case1774
  %arena.cur1790 = call ptr @dva_arena_current()
  %a.create1791 = call ptr @dva_arena_alloc(ptr %arena.cur1790, i64 24)
  %arena.cur1792 = call ptr @dva_arena_current()
  %a.buf1793 = call ptr @dva_arena_alloc(ptr %arena.cur1792, i64 128)
  %a.len.gep1794 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1791, i32 0, i32 0
  store i64 0, ptr %a.len.gep1794, align 8
  %a.data.gep1795 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1791, i32 0, i32 1
  store ptr %a.buf1793, ptr %a.data.gep1795, align 8
  %a.cap.gep1796 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1791, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1796, align 8
  store ptr %a.create1791, ptr %var.locals, align 8
  br label %a.after1789

a.after1789:                                      ; preds = %a.create1788, %choice.case1774
  %a.load21797 = load ptr, ptr %var.locals, align 8
  %var.load1798 = load ptr, ptr %var.refs, align 8
  %a.load1799 = load ptr, ptr %var.refs, align 8
  %a.null1800 = icmp eq ptr %a.load1799, null
  br i1 %a.null1800, label %a.create1801, label %a.after1802

a.create1801:                                     ; preds = %a.after1789
  %arena.cur1803 = call ptr @dva_arena_current()
  %a.create1804 = call ptr @dva_arena_alloc(ptr %arena.cur1803, i64 24)
  %arena.cur1805 = call ptr @dva_arena_current()
  %a.buf1806 = call ptr @dva_arena_alloc(ptr %arena.cur1805, i64 128)
  %a.len.gep1807 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1804, i32 0, i32 0
  store i64 0, ptr %a.len.gep1807, align 8
  %a.data.gep1808 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1804, i32 0, i32 1
  store ptr %a.buf1806, ptr %a.data.gep1808, align 8
  %a.cap.gep1809 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1804, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1809, align 8
  store ptr %a.create1804, ptr %var.refs, align 8
  br label %a.after1802

a.after1802:                                      ; preds = %a.create1801, %a.after1789
  %a.load21810 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1784, ptr %a.load21797, ptr %a.load21810)
  br label %choice.exit

choice.case1811:                                  ; preds = %choice.next1775
  %pay.gep1816 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1817 = load ptr, ptr %pay.gep1816, align 8
  store ptr %payload.ptr1817, ptr %var._1818, align 8
  store ptr %payload.ptr1817, ptr %var.r1819, align 8
  %var.load1820 = load ptr, ptr %var.r1819, align 8
  %fld.gep1821 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1820, i32 0, i32 0
  %fld.load1822 = load i1, ptr %fld.gep1821, align 1
  br i1 %fld.load1822, label %choice.then1823, label %choice.exit1824

choice.next1812:                                  ; preds = %choice.next1775
  %tag.gep1856 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1857 = load i64, ptr %tag.gep1856, align 8
  %tag.match1858 = icmp eq i64 %tag.id1857, 29
  br i1 %tag.match1858, label %choice.case1854, label %choice.next1855

choice.then1823:                                  ; preds = %choice.case1811
  %var.load1825 = load ptr, ptr %var.r1819, align 8
  %fld.gep1826 = getelementptr inbounds { i1, ptr, i64, i64 }, ptr %var.load1825, i32 0, i32 1
  %fld.load1827 = load ptr, ptr %fld.gep1826, align 8
  %var.load1828 = load ptr, ptr %var.locals, align 8
  %a.load1829 = load ptr, ptr %var.locals, align 8
  %a.null1830 = icmp eq ptr %a.load1829, null
  br i1 %a.null1830, label %a.create1831, label %a.after1832

choice.exit1824:                                  ; preds = %a.after1845, %choice.case1811
  br label %choice.exit

a.create1831:                                     ; preds = %choice.then1823
  %arena.cur1833 = call ptr @dva_arena_current()
  %a.create1834 = call ptr @dva_arena_alloc(ptr %arena.cur1833, i64 24)
  %arena.cur1835 = call ptr @dva_arena_current()
  %a.buf1836 = call ptr @dva_arena_alloc(ptr %arena.cur1835, i64 128)
  %a.len.gep1837 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1834, i32 0, i32 0
  store i64 0, ptr %a.len.gep1837, align 8
  %a.data.gep1838 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1834, i32 0, i32 1
  store ptr %a.buf1836, ptr %a.data.gep1838, align 8
  %a.cap.gep1839 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1834, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1839, align 8
  store ptr %a.create1834, ptr %var.locals, align 8
  br label %a.after1832

a.after1832:                                      ; preds = %a.create1831, %choice.then1823
  %a.load21840 = load ptr, ptr %var.locals, align 8
  %var.load1841 = load ptr, ptr %var.refs, align 8
  %a.load1842 = load ptr, ptr %var.refs, align 8
  %a.null1843 = icmp eq ptr %a.load1842, null
  br i1 %a.null1843, label %a.create1844, label %a.after1845

a.create1844:                                     ; preds = %a.after1832
  %arena.cur1846 = call ptr @dva_arena_current()
  %a.create1847 = call ptr @dva_arena_alloc(ptr %arena.cur1846, i64 24)
  %arena.cur1848 = call ptr @dva_arena_current()
  %a.buf1849 = call ptr @dva_arena_alloc(ptr %arena.cur1848, i64 128)
  %a.len.gep1850 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1847, i32 0, i32 0
  store i64 0, ptr %a.len.gep1850, align 8
  %a.data.gep1851 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1847, i32 0, i32 1
  store ptr %a.buf1849, ptr %a.data.gep1851, align 8
  %a.cap.gep1852 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1847, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1852, align 8
  store ptr %a.create1847, ptr %var.refs, align 8
  br label %a.after1845

a.after1845:                                      ; preds = %a.create1844, %a.after1832
  %a.load21853 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1827, ptr %a.load21840, ptr %a.load21853)
  br label %choice.exit1824

choice.case1854:                                  ; preds = %choice.next1812
  %pay.gep1859 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1860 = load ptr, ptr %pay.gep1859, align 8
  store ptr %payload.ptr1860, ptr %var._1861, align 8
  store ptr %payload.ptr1860, ptr %var.m1862, align 8
  %var.load1863 = load ptr, ptr %var.m1862, align 8
  %a.load1864 = load ptr, ptr %var.m1862, align 8
  %a.null1865 = icmp eq ptr %a.load1864, null
  br i1 %a.null1865, label %a.create1866, label %a.after1867

choice.next1855:                                  ; preds = %choice.next1812
  %tag.gep1952 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id1953 = load i64, ptr %tag.gep1952, align 8
  %tag.match1954 = icmp eq i64 %tag.id1953, 19
  br i1 %tag.match1954, label %choice.case1950, label %choice.next1951

a.create1866:                                     ; preds = %choice.case1854
  %arena.cur1868 = call ptr @dva_arena_current()
  %a.create1869 = call ptr @dva_arena_alloc(ptr %arena.cur1868, i64 24)
  %arena.cur1870 = call ptr @dva_arena_current()
  %a.buf1871 = call ptr @dva_arena_alloc(ptr %arena.cur1870, i64 128)
  %a.len.gep1872 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1869, i32 0, i32 0
  store i64 0, ptr %a.len.gep1872, align 8
  %a.data.gep1873 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1869, i32 0, i32 1
  store ptr %a.buf1871, ptr %a.data.gep1873, align 8
  %a.cap.gep1874 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1869, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1874, align 8
  store ptr %a.create1869, ptr %var.m1862, align 8
  br label %a.after1867

a.after1867:                                      ; preds = %a.create1866, %choice.case1854
  %a.load21875 = load ptr, ptr %var.m1862, align 8
  %arr.cycle.len1876 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21875, i32 0, i32 0
  %arr.cycle.len1877 = load i64, ptr %arr.cycle.len1876, align 8
  %arr.cycle.data1878 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21875, i32 0, i32 1
  %arr.cycle.data1879 = load ptr, ptr %arr.cycle.data1878, align 8
  store i64 0, ptr %loop.idx.46, align 8
  %cycle.prev.u1881 = load ptr, ptr %var._1861, align 8
  br label %loop.header.46

loop.header.46:                                   ; preds = %loop.latch.46, %a.after1867
  %counter.load1882 = load i64, ptr %loop.idx.46, align 8
  %loop.cond1883 = icmp slt i64 %counter.load1882, %arr.cycle.len1877
  br i1 %loop.cond1883, label %loop.body.46, label %loop.exit.nat.46

loop.body.46:                                     ; preds = %loop.header.46
  %loop.rel.i1884 = sub i64 %counter.load1882, 0
  store i64 1, ptr %loop.step.46, align 8
  %arr.elem.gep1885 = getelementptr i64, ptr %arr.cycle.data1879, i64 %counter.load1882
  %arr.elem.raw1886 = load i64, ptr %arr.elem.gep1885, align 8
  %slot.i2p1887 = inttoptr i64 %arr.elem.raw1886 to ptr
  store i64 %loop.rel.i1884, ptr %var._i1888, align 8
  store ptr %slot.i2p1887, ptr %var._1889, align 8
  store ptr %slot.i2p1887, ptr %var.p1880, align 8
  %var.load1890 = load ptr, ptr %var.p1880, align 8
  %fld.gep1891 = getelementptr inbounds { ptr, ptr }, ptr %var.load1890, i32 0, i32 0
  %fld.load1892 = load ptr, ptr %fld.gep1891, align 8
  %var.load1893 = load ptr, ptr %var.locals, align 8
  %a.load1894 = load ptr, ptr %var.locals, align 8
  %a.null1895 = icmp eq ptr %a.load1894, null
  br i1 %a.null1895, label %a.create1896, label %a.after1897

loop.exit.nat.46:                                 ; preds = %loop.header.46
  br label %loop.exit.46

loop.latch.46:                                    ; preds = %a.after1939
  %step.val1948 = load i64, ptr %loop.step.46, align 8
  %loop.next1949 = add i64 %counter.load1882, %step.val1948
  store i64 %loop.next1949, ptr %loop.idx.46, align 8
  br label %loop.header.46

loop.exit.46:                                     ; preds = %loop.exit.nat.46
  store ptr %cycle.prev.u1881, ptr %var._1861, align 8
  br label %choice.exit

a.create1896:                                     ; preds = %loop.body.46
  %arena.cur1898 = call ptr @dva_arena_current()
  %a.create1899 = call ptr @dva_arena_alloc(ptr %arena.cur1898, i64 24)
  %arena.cur1900 = call ptr @dva_arena_current()
  %a.buf1901 = call ptr @dva_arena_alloc(ptr %arena.cur1900, i64 128)
  %a.len.gep1902 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1899, i32 0, i32 0
  store i64 0, ptr %a.len.gep1902, align 8
  %a.data.gep1903 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1899, i32 0, i32 1
  store ptr %a.buf1901, ptr %a.data.gep1903, align 8
  %a.cap.gep1904 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1899, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1904, align 8
  store ptr %a.create1899, ptr %var.locals, align 8
  br label %a.after1897

a.after1897:                                      ; preds = %a.create1896, %loop.body.46
  %a.load21905 = load ptr, ptr %var.locals, align 8
  %var.load1906 = load ptr, ptr %var.refs, align 8
  %a.load1907 = load ptr, ptr %var.refs, align 8
  %a.null1908 = icmp eq ptr %a.load1907, null
  br i1 %a.null1908, label %a.create1909, label %a.after1910

a.create1909:                                     ; preds = %a.after1897
  %arena.cur1911 = call ptr @dva_arena_current()
  %a.create1912 = call ptr @dva_arena_alloc(ptr %arena.cur1911, i64 24)
  %arena.cur1913 = call ptr @dva_arena_current()
  %a.buf1914 = call ptr @dva_arena_alloc(ptr %arena.cur1913, i64 128)
  %a.len.gep1915 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1912, i32 0, i32 0
  store i64 0, ptr %a.len.gep1915, align 8
  %a.data.gep1916 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1912, i32 0, i32 1
  store ptr %a.buf1914, ptr %a.data.gep1916, align 8
  %a.cap.gep1917 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1912, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1917, align 8
  store ptr %a.create1912, ptr %var.refs, align 8
  br label %a.after1910

a.after1910:                                      ; preds = %a.create1909, %a.after1897
  %a.load21918 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1892, ptr %a.load21905, ptr %a.load21918)
  %var.load1919 = load ptr, ptr %var.p1880, align 8
  %fld.gep1920 = getelementptr inbounds { ptr, ptr }, ptr %var.load1919, i32 0, i32 1
  %fld.load1921 = load ptr, ptr %fld.gep1920, align 8
  %var.load1922 = load ptr, ptr %var.locals, align 8
  %a.load1923 = load ptr, ptr %var.locals, align 8
  %a.null1924 = icmp eq ptr %a.load1923, null
  br i1 %a.null1924, label %a.create1925, label %a.after1926

a.create1925:                                     ; preds = %a.after1910
  %arena.cur1927 = call ptr @dva_arena_current()
  %a.create1928 = call ptr @dva_arena_alloc(ptr %arena.cur1927, i64 24)
  %arena.cur1929 = call ptr @dva_arena_current()
  %a.buf1930 = call ptr @dva_arena_alloc(ptr %arena.cur1929, i64 128)
  %a.len.gep1931 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1928, i32 0, i32 0
  store i64 0, ptr %a.len.gep1931, align 8
  %a.data.gep1932 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1928, i32 0, i32 1
  store ptr %a.buf1930, ptr %a.data.gep1932, align 8
  %a.cap.gep1933 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1928, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1933, align 8
  store ptr %a.create1928, ptr %var.locals, align 8
  br label %a.after1926

a.after1926:                                      ; preds = %a.create1925, %a.after1910
  %a.load21934 = load ptr, ptr %var.locals, align 8
  %var.load1935 = load ptr, ptr %var.refs, align 8
  %a.load1936 = load ptr, ptr %var.refs, align 8
  %a.null1937 = icmp eq ptr %a.load1936, null
  br i1 %a.null1937, label %a.create1938, label %a.after1939

a.create1938:                                     ; preds = %a.after1926
  %arena.cur1940 = call ptr @dva_arena_current()
  %a.create1941 = call ptr @dva_arena_alloc(ptr %arena.cur1940, i64 24)
  %arena.cur1942 = call ptr @dva_arena_current()
  %a.buf1943 = call ptr @dva_arena_alloc(ptr %arena.cur1942, i64 128)
  %a.len.gep1944 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1941, i32 0, i32 0
  store i64 0, ptr %a.len.gep1944, align 8
  %a.data.gep1945 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1941, i32 0, i32 1
  store ptr %a.buf1943, ptr %a.data.gep1945, align 8
  %a.cap.gep1946 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1941, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1946, align 8
  store ptr %a.create1941, ptr %var.refs, align 8
  br label %a.after1939

a.after1939:                                      ; preds = %a.create1938, %a.after1926
  %a.load21947 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1921, ptr %a.load21934, ptr %a.load21947)
  br label %loop.latch.46

choice.case1950:                                  ; preds = %choice.next1855
  %pay.gep1955 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr1956 = load ptr, ptr %pay.gep1955, align 8
  store ptr %payload.ptr1956, ptr %var._1957, align 8
  store ptr %payload.ptr1956, ptr %var.rm, align 8
  %var.load1958 = load ptr, ptr %var.rm, align 8
  %fld.gep1959 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load1958, i32 0, i32 0
  %fld.load1960 = load ptr, ptr %fld.gep1959, align 8
  %var.load1961 = load ptr, ptr %var.locals, align 8
  %a.load1962 = load ptr, ptr %var.locals, align 8
  %a.null1963 = icmp eq ptr %a.load1962, null
  br i1 %a.null1963, label %a.create1964, label %a.after1965

choice.next1951:                                  ; preds = %choice.next1855
  br label %choice.exit

a.create1964:                                     ; preds = %choice.case1950
  %arena.cur1966 = call ptr @dva_arena_current()
  %a.create1967 = call ptr @dva_arena_alloc(ptr %arena.cur1966, i64 24)
  %arena.cur1968 = call ptr @dva_arena_current()
  %a.buf1969 = call ptr @dva_arena_alloc(ptr %arena.cur1968, i64 128)
  %a.len.gep1970 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1967, i32 0, i32 0
  store i64 0, ptr %a.len.gep1970, align 8
  %a.data.gep1971 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1967, i32 0, i32 1
  store ptr %a.buf1969, ptr %a.data.gep1971, align 8
  %a.cap.gep1972 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1967, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1972, align 8
  store ptr %a.create1967, ptr %var.locals, align 8
  br label %a.after1965

a.after1965:                                      ; preds = %a.create1964, %choice.case1950
  %a.load21973 = load ptr, ptr %var.locals, align 8
  %var.load1974 = load ptr, ptr %var.refs, align 8
  %a.load1975 = load ptr, ptr %var.refs, align 8
  %a.null1976 = icmp eq ptr %a.load1975, null
  br i1 %a.null1976, label %a.create1977, label %a.after1978

a.create1977:                                     ; preds = %a.after1965
  %arena.cur1979 = call ptr @dva_arena_current()
  %a.create1980 = call ptr @dva_arena_alloc(ptr %arena.cur1979, i64 24)
  %arena.cur1981 = call ptr @dva_arena_current()
  %a.buf1982 = call ptr @dva_arena_alloc(ptr %arena.cur1981, i64 128)
  %a.len.gep1983 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1980, i32 0, i32 0
  store i64 0, ptr %a.len.gep1983, align 8
  %a.data.gep1984 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1980, i32 0, i32 1
  store ptr %a.buf1982, ptr %a.data.gep1984, align 8
  %a.cap.gep1985 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1980, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1985, align 8
  store ptr %a.create1980, ptr %var.refs, align 8
  br label %a.after1978

a.after1978:                                      ; preds = %a.create1977, %a.after1965
  %a.load21986 = load ptr, ptr %var.refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load1960, ptr %a.load21973, ptr %a.load21986)
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

define i64 @"dep_graph::find_node_idx"(ptr %0, ptr %1) #1 {
entry:
  %var.idx = alloca i64, align 8
  %var._96 = alloca ptr, align 8
  %var._95 = alloca ptr, align 8
  %var._94 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var.indices = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.graph = alloca ptr, align 8
  store ptr %0, ptr %var.graph, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.graph, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.indices, align 8
  %var.load1 = load ptr, ptr %var.indices, align 8
  %var.load2 = load ptr, ptr %var.name, align 8
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %m.cap3 = load i64, ptr %m.cap, align 8
  %m.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 2
  %m.keys4 = load ptr, ptr %m.keys, align 8
  %m.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 4
  %m.states5 = load ptr, ptr %m.states, align 8
  %mk.data = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.data6 = load ptr, ptr %mk.data, align 8
  %mk.len = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.len7 = load i64, ptr %mk.len, align 8
  %mk.len8 = and i64 %mk.len7, 281474976710655
  %str.tag = lshr i64 %mk.len7, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %hash.str = call i64 @dva_hash_string(ptr %mk.data6, i64 %mk.len8)
  %m.capm1 = sub i64 %m.cap3, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.mem.loop

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

m.mem.loop:                                       ; preds = %m.mem.next, %str_ok
  %m.mem.idx = phi i64 [ %m.idx0, %str_ok ], [ %m.mem.idx.next, %m.mem.next ]
  %m.mem.probe9 = phi i64 [ 0, %str_ok ], [ %m.mem.probe.next, %m.mem.next ]
  %m.mem.reached = icmp eq i64 %m.mem.probe9, %m.cap3
  %m.mem.state.gep = getelementptr i8, ptr %m.states5, i64 %m.mem.idx
  %m.mem.state = load i8, ptr %m.mem.state.gep, align 1
  %m.mem.is.empty = icmp eq i8 %m.mem.state, 0
  %m.mem.stop = or i1 %m.mem.is.empty, %m.mem.reached
  br i1 %m.mem.stop, label %m.mem.miss, label %m.mem.probe

m.mem.probe:                                      ; preds = %m.mem.loop
  %m.mem.is.tomb = icmp eq i8 %m.mem.state, 2
  br i1 %m.mem.is.tomb, label %m.mem.next, label %m.mem.found

m.mem.found:                                      ; preds = %m.mem.probe
  %m.mem.key.slot = getelementptr ptr, ptr %m.keys4, i64 %m.mem.idx
  %mk.stored = load ptr, ptr %m.mem.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen10 = load i64, ptr %mk.slen, align 8
  %mk.slen11 = and i64 %mk.slen10, 281474976710655
  %str.tag12 = lshr i64 %mk.slen10, 48
  %str.immortal13 = icmp eq i64 %str.tag12, 0
  br i1 %str.immortal13, label %str_ok15, label %str_gen_check14

m.mem.next:                                       ; preds = %mk.eq.merge, %m.mem.probe
  %m.mem.idx.add = add i64 %m.mem.idx, 1
  %m.mem.idx.next = and i64 %m.mem.idx.add, %m.capm1
  %m.mem.probe.next = add i64 %m.mem.probe9, 1
  br label %m.mem.loop

m.mem.miss:                                       ; preds = %m.mem.loop
  br label %m.mem.done

m.mem.done:                                       ; preds = %m.mem.miss, %m.mem.hit
  %m.mem.res = phi i1 [ true, %m.mem.hit ], [ false, %m.mem.miss ]
  br i1 %m.mem.res, label %choice.then, label %choice.else

str_gen_check14:                                  ; preds = %m.mem.found
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %str.tag12)
  br i1 %tag.valid18, label %str_ok15, label %str_stale16

str_ok15:                                         ; preds = %str_stale16, %str_gen_check14, %m.mem.found
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.nlen19 = load i64, ptr %mk.nlen, align 8
  %mk.nlen20 = and i64 %mk.nlen19, 281474976710655
  %str.tag21 = lshr i64 %mk.nlen19, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

str_stale16:                                      ; preds = %str_gen_check14
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok15

str_gen_check23:                                  ; preds = %str_ok15
  %arena.cur26 = call ptr @dva_arena_current()
  %tag.valid27 = call i1 @dva_arena_validate_tag(ptr %arena.cur26, i64 %str.tag21)
  br i1 %tag.valid27, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %str_ok15
  %mk.lenseq = icmp eq i64 %mk.slen11, %mk.nlen20
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

str_stale25:                                      ; preds = %str_gen_check23
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok24

mk.eq.then:                                       ; preds = %str_ok24
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata28 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.ndata29 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata28, ptr %mk.ndata29, i64 %mk.nlen20)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %str_ok24
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.mem.hit, label %m.mem.next

m.mem.hit:                                        ; preds = %mk.eq.merge
  br label %m.mem.done

choice.then:                                      ; preds = %m.mem.done
  %var.load30 = load ptr, ptr %var.indices, align 8
  %var.load31 = load ptr, ptr %var.name, align 8
  %m.cap32 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load30, i32 0, i32 1
  %m.cap33 = load i64, ptr %m.cap32, align 8
  %m.keys34 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load30, i32 0, i32 2
  %m.keys35 = load ptr, ptr %m.keys34, align 8
  %m.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load30, i32 0, i32 3
  %m.vals36 = load ptr, ptr %m.vals, align 8
  %m.states37 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load30, i32 0, i32 4
  %m.states38 = load ptr, ptr %m.states37, align 8
  %mk.data39 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 1
  %mk.data40 = load ptr, ptr %mk.data39, align 8
  %mk.len41 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 0
  %mk.len42 = load i64, ptr %mk.len41, align 8
  %mk.len43 = and i64 %mk.len42, 281474976710655
  %str.tag44 = lshr i64 %mk.len42, 48
  %str.immortal45 = icmp eq i64 %str.tag44, 0
  br i1 %str.immortal45, label %str_ok47, label %str_gen_check46

choice.else:                                      ; preds = %m.mem.done
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit91
  %choice.res123 = phi i64 [ %var.load122, %choice.exit91 ], [ -1, %choice.else ]
  ret i64 %choice.res123

str_gen_check46:                                  ; preds = %choice.then
  %arena.cur49 = call ptr @dva_arena_current()
  %tag.valid50 = call i1 @dva_arena_validate_tag(ptr %arena.cur49, i64 %str.tag44)
  br i1 %tag.valid50, label %str_ok47, label %str_stale48

str_ok47:                                         ; preds = %str_stale48, %str_gen_check46, %choice.then
  %hash.str51 = call i64 @dva_hash_string(ptr %mk.data40, i64 %mk.len43)
  %m.capm152 = sub i64 %m.cap33, 1
  %m.idx053 = and i64 %hash.str51, %m.capm152
  br label %m.rd.loop

str_stale48:                                      ; preds = %str_gen_check46
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok47

m.rd.loop:                                        ; preds = %m.rd.next, %str_ok47
  %m.rd.idx = phi i64 [ %m.idx053, %str_ok47 ], [ %m.rd.idx.next, %m.rd.next ]
  %m.rd.probe54 = phi i64 [ 0, %str_ok47 ], [ %m.rd.probe.next, %m.rd.next ]
  %m.rd.reached = icmp eq i64 %m.rd.probe54, %m.cap33
  %m.rd.state.gep = getelementptr i8, ptr %m.states38, i64 %m.rd.idx
  %m.rd.state = load i8, ptr %m.rd.state.gep, align 1
  %m.rd.is.empty = icmp eq i8 %m.rd.state, 0
  %m.rd.stop = or i1 %m.rd.is.empty, %m.rd.reached
  br i1 %m.rd.stop, label %m.rd.miss, label %m.rd.probe

m.rd.probe:                                       ; preds = %m.rd.loop
  %m.rd.is.tomb = icmp eq i8 %m.rd.state, 2
  br i1 %m.rd.is.tomb, label %m.rd.next, label %m.rd.found

m.rd.found:                                       ; preds = %m.rd.probe
  %m.rd.key.slot = getelementptr ptr, ptr %m.keys35, i64 %m.rd.idx
  %mk.stored55 = load ptr, ptr %m.rd.key.slot, align 8
  %mk.slen56 = getelementptr inbounds { i64, ptr }, ptr %mk.stored55, i32 0, i32 0
  %mk.slen57 = load i64, ptr %mk.slen56, align 8
  %mk.slen58 = and i64 %mk.slen57, 281474976710655
  %str.tag59 = lshr i64 %mk.slen57, 48
  %str.immortal60 = icmp eq i64 %str.tag59, 0
  br i1 %str.immortal60, label %str_ok62, label %str_gen_check61

m.rd.next:                                        ; preds = %mk.eq.merge79, %m.rd.probe
  %m.rd.idx.add = add i64 %m.rd.idx, 1
  %m.rd.idx.next = and i64 %m.rd.idx.add, %m.capm152
  %m.rd.probe.next = add i64 %m.rd.probe54, 1
  br label %m.rd.loop

m.rd.miss:                                        ; preds = %m.rd.loop
  %arena.cur87 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4013, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %m.rd.done

m.rd.done:                                        ; preds = %m.rd.miss, %m.rd.hit
  %m.rd.tag = phi i1 [ true, %m.rd.hit ], [ false, %m.rd.miss ]
  %m.rd.pay = phi i64 [ %m.rd.val, %m.rd.hit ], [ %err.p2i, %m.rd.miss ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %m.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %m.rd.pay, 1
  %ram.tag88 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag88, label %choice.then89, label %choice.else90

str_gen_check61:                                  ; preds = %m.rd.found
  %arena.cur64 = call ptr @dva_arena_current()
  %tag.valid65 = call i1 @dva_arena_validate_tag(ptr %arena.cur64, i64 %str.tag59)
  br i1 %tag.valid65, label %str_ok62, label %str_stale63

str_ok62:                                         ; preds = %str_stale63, %str_gen_check61, %m.rd.found
  %mk.nlen66 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 0
  %mk.nlen67 = load i64, ptr %mk.nlen66, align 8
  %mk.nlen68 = and i64 %mk.nlen67, 281474976710655
  %str.tag69 = lshr i64 %mk.nlen67, 48
  %str.immortal70 = icmp eq i64 %str.tag69, 0
  br i1 %str.immortal70, label %str_ok72, label %str_gen_check71

str_stale63:                                      ; preds = %str_gen_check61
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok62

str_gen_check71:                                  ; preds = %str_ok62
  %arena.cur74 = call ptr @dva_arena_current()
  %tag.valid75 = call i1 @dva_arena_validate_tag(ptr %arena.cur74, i64 %str.tag69)
  br i1 %tag.valid75, label %str_ok72, label %str_stale73

str_ok72:                                         ; preds = %str_stale73, %str_gen_check71, %str_ok62
  %mk.lenseq76 = icmp eq i64 %mk.slen58, %mk.nlen68
  br i1 %mk.lenseq76, label %mk.eq.then77, label %mk.eq.else78

str_stale73:                                      ; preds = %str_gen_check71
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok72

mk.eq.then77:                                     ; preds = %str_ok72
  %mk.sdata80 = getelementptr inbounds { i64, ptr }, ptr %mk.stored55, i32 0, i32 1
  %mk.sdata81 = load ptr, ptr %mk.sdata80, align 8
  %mk.ndata82 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 1
  %mk.ndata83 = load ptr, ptr %mk.ndata82, align 8
  %mk.memcmp84 = call i32 @memcmp(ptr %mk.sdata81, ptr %mk.ndata83, i64 %mk.nlen68)
  %mk.cmpeq85 = icmp eq i32 %mk.memcmp84, 0
  br label %mk.eq.merge79

mk.eq.else78:                                     ; preds = %str_ok72
  br label %mk.eq.merge79

mk.eq.merge79:                                    ; preds = %mk.eq.else78, %mk.eq.then77
  %mk.eq86 = phi i1 [ %mk.cmpeq85, %mk.eq.then77 ], [ false, %mk.eq.else78 ]
  br i1 %mk.eq86, label %m.rd.hit, label %m.rd.next

m.rd.hit:                                         ; preds = %mk.eq.merge79
  %m.rd.val.slot = getelementptr i64, ptr %m.vals36, i64 %m.rd.idx
  %m.rd.val = load i64, ptr %m.rd.val.slot, align 8
  br label %m.rd.done

choice.then89:                                    ; preds = %m.rd.done
  %ram.pay92 = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %ram.pay92, ptr %var._, align 8
  br label %choice.exit91

choice.else90:                                    ; preds = %m.rd.done
  %ram.pay93 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay93 to ptr
  store ptr %pay.ptr, ptr %var._94, align 8
  store ptr %pay.ptr, ptr %var._95, align 8
  store ptr %pay.ptr, ptr %var._96, align 8
  %err.code.gep97 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep97, align 8
  %err.msg.gep98 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep98, align 8
  %err.file.gep99 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep99, align 8
  %err.line.gep100 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep100, align 8
  %err.col.gep101 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep101, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len102 = load i64, ptr %err.msg.len, align 8
  %err.msg.len103 = and i64 %err.msg.len102, 281474976710655
  %str.tag104 = lshr i64 %err.msg.len102, 48
  %str.immortal105 = icmp eq i64 %str.tag104, 0
  br i1 %str.immortal105, label %str_ok107, label %str_gen_check106

choice.exit91:                                    ; preds = %err.abort, %choice.then89
  %choice.res = phi i64 [ %ram.pay92, %choice.then89 ], [ 0, %err.abort ]
  store i64 %choice.res, ptr %var.idx, align 8
  %var.load122 = load i64, ptr %var.idx, align 8
  br label %choice.exit

str_gen_check106:                                 ; preds = %choice.else90
  %arena.cur109 = call ptr @dva_arena_current()
  %tag.valid110 = call i1 @dva_arena_validate_tag(ptr %arena.cur109, i64 %str.tag104)
  br i1 %tag.valid110, label %str_ok107, label %str_stale108

str_ok107:                                        ; preds = %str_stale108, %str_gen_check106, %choice.else90
  %err.msg.len32 = trunc i64 %err.msg.len103 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data111 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len112 = load i64, ptr %err.file.len, align 8
  %err.file.len113 = and i64 %err.file.len112, 281474976710655
  %str.tag114 = lshr i64 %err.file.len112, 48
  %str.immortal115 = icmp eq i64 %str.tag114, 0
  br i1 %str.immortal115, label %str_ok117, label %str_gen_check116

str_stale108:                                     ; preds = %str_gen_check106
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok107

str_gen_check116:                                 ; preds = %str_ok107
  %arena.cur119 = call ptr @dva_arena_current()
  %tag.valid120 = call i1 @dva_arena_validate_tag(ptr %arena.cur119, i64 %str.tag114)
  br i1 %tag.valid120, label %str_ok117, label %str_stale118

str_ok117:                                        ; preds = %str_stale118, %str_gen_check116, %str_ok107
  %err.file.len32 = trunc i64 %err.file.len113 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data121 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale118:                                     ; preds = %str_gen_check116
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok117

err.thread:                                       ; preds = %str_ok117
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %pay.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok117
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data111, i32 %err.file.len32, ptr %err.file.data121, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit91
}

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define i1 @"dep_graph::node_has_dep"(ptr %0, ptr %1) #1 {
entry:
  %var.name = alloca ptr, align 8
  %var.node = alloca ptr, align 8
  store ptr %0, ptr %var.node, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.node, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"dep_graph::has_name"(ptr %fld.load, ptr %var.load1)
  ret i1 %call.res
}

define i1 @"dep_graph::is_generic_sig"(ptr %0) #1 {
entry:
  %var.is_ti = alloca i1, align 1
  %var.f = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.is_ct = alloca i1, align 1
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 7
  %fld.load = load ptr, ptr %fld.gep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
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
  %cmptmp = icmp sgt i64 %str.len.query2, 4
  br i1 %cmptmp, label %and.47.then, label %and.47.else

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.47.then:                                      ; preds = %str_ok
  %var.load3 = load ptr, ptr %var.a, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load3, i32 0, i32 7
  %fld.load5 = load ptr, ptr %fld.gep4, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load5, i32 0, i32 0
  %s.read.len6 = load i64, ptr %s.read.len, align 8
  %s.read.len7 = and i64 %s.read.len6, 281474976710655
  %str.tag8 = lshr i64 %s.read.len6, 48
  %str.immortal9 = icmp eq i64 %str.tag8, 0
  br i1 %str.immortal9, label %str_ok11, label %str_gen_check10

and.47.else:                                      ; preds = %str_ok
  br label %and.47.exit

and.47.exit:                                      ; preds = %and.47.else, %str.eq.merge
  %and.47.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.47.else ]
  store i1 %and.47.phi, ptr %var.is_ct, align 1
  %var.load35 = load ptr, ptr %var.a, align 8
  %fld.gep36 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load35, i32 0, i32 8
  %fld.load37 = load ptr, ptr %fld.gep36, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load37, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 8
  br i1 %tag.match, label %choice.case, label %choice.next

str_gen_check10:                                  ; preds = %and.47.then
  %arena.cur13 = call ptr @dva_arena_current()
  %tag.valid14 = call i1 @dva_arena_validate_tag(ptr %arena.cur13, i64 %str.tag8)
  br i1 %tag.valid14, label %str_ok11, label %str_stale12

str_ok11:                                         ; preds = %str_stale12, %str_gen_check10, %and.47.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load5, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data, align 8
  %rel.start = add i64 %s.read.len7, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len7
  %final.start = select i1 %start.gt.len, i64 %s.read.len7, i64 %c.start.0
  %rel.end = add i64 %s.read.len7, 4
  %norm.end = select i1 false, i64 %rel.end, i64 4
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len7
  %final.end = select i1 %end.gt.len, i64 %s.read.len7, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data15, i64 %final.start
  %arena.cur16 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len17 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len18 = and i64 %eq.lhs.len17, 281474976710655
  %str.tag19 = lshr i64 %eq.lhs.len17, 48
  %str.immortal20 = icmp eq i64 %str.tag19, 0
  br i1 %str.immortal20, label %str_ok22, label %str_gen_check21

str_stale12:                                      ; preds = %str_gen_check10
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok11

str_gen_check21:                                  ; preds = %str_ok11
  %arena.cur24 = call ptr @dva_arena_current()
  %tag.valid25 = call i1 @dva_arena_validate_tag(ptr %arena.cur24, i64 %str.tag19)
  br i1 %tag.valid25, label %str_ok22, label %str_stale23

str_ok22:                                         ; preds = %str_stale23, %str_gen_check21, %str_ok11
  %eq.rhs.len = load i64, ptr @str.9.struct, align 8
  %eq.rhs.len26 = and i64 %eq.rhs.len, 281474976710655
  %str.tag27 = lshr i64 %eq.rhs.len, 48
  %str.immortal28 = icmp eq i64 %str.tag27, 0
  br i1 %str.immortal28, label %str_ok30, label %str_gen_check29

str_stale23:                                      ; preds = %str_gen_check21
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok22

str_gen_check29:                                  ; preds = %str_ok22
  %arena.cur32 = call ptr @dva_arena_current()
  %tag.valid33 = call i1 @dva_arena_validate_tag(ptr %arena.cur32, i64 %str.tag27)
  br i1 %tag.valid33, label %str_ok30, label %str_stale31

str_ok30:                                         ; preds = %str_stale31, %str_gen_check29, %str_ok22
  %eq.len = icmp eq i64 %eq.lhs.len18, %eq.rhs.len26
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale31:                                      ; preds = %str_gen_check29
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok30

str.eq.then:                                      ; preds = %str_ok30
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data34 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data34, ptr %eq.rhs.data, i64 %eq.lhs.len18)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok30
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.47.exit

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ %cmptmp42, %choice.case ], [ false, %choice.next ]
  store i1 %choice.res, ptr %var.is_ti, align 1
  %var.load43 = load i1, ptr %var.is_ct, align 1
  br i1 %var.load43, label %or.48.then, label %or.48.else

choice.case:                                      ; preds = %and.47.exit
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load37, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.f, align 8
  %var.load38 = load ptr, ptr %var.f, align 8
  %fld.gep39 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr }, ptr %var.load38, i32 0, i32 4
  %fld.load40 = load ptr, ptr %fld.gep39, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load40, i32 0, i32 0
  %a.len.query41 = load i64, ptr %a.len.query, align 8
  %cmptmp42 = icmp sgt i64 %a.len.query41, 0
  br label %choice.exit

choice.next:                                      ; preds = %and.47.exit
  br label %choice.exit

or.48.then:                                       ; preds = %choice.exit
  br label %or.48.exit

or.48.else:                                       ; preds = %choice.exit
  %var.load44 = load i1, ptr %var.is_ti, align 1
  br label %or.48.exit

or.48.exit:                                       ; preds = %or.48.else, %or.48.then
  %or.48.phi = phi i1 [ %var.load43, %or.48.then ], [ %var.load44, %or.48.else ]
  ret i1 %or.48.phi
}

define ptr @"dep_graph::build_dep_graph"(ptr %0) #1 {
entry:
  %var.known = alloca i1, align 1
  %var.node_indices = alloca ptr, align 8
  %var.target_ref = alloca ptr, align 8
  %var._1036 = alloca ptr, align 8
  %var._i1035 = alloca i64, align 8
  %var.ref_name = alloca ptr, align 8
  %loop.step.62 = alloca i64, align 8
  %loop.idx.62 = alloca i64, align 8
  %var.mod2 = alloca ptr, align 8
  %var.filtered_deps = alloca ptr, align 8
  %var.raw_refs = alloca ptr, align 8
  %var.name2 = alloca ptr, align 8
  %var.is_gen2 = alloca i1, align 1
  %var.is_fwd2 = alloca i1, align 1
  %var.a2 = alloca ptr, align 8
  %var._846 = alloca ptr, align 8
  %var._836 = alloca ptr, align 8
  %var._i835 = alloca i64, align 8
  %var.j = alloca i64, align 8
  %var.st2 = alloca ptr, align 8
  %loop.step.57 = alloca i64, align 8
  %loop.idx.57 = alloca i64, align 8
  %var.name1 = alloca ptr, align 8
  %var.is_gen1 = alloca i1, align 1
  %var.is_fwd1 = alloca i1, align 1
  %var.a1 = alloca ptr, align 8
  %var._367 = alloca ptr, align 8
  %var._357 = alloca ptr, align 8
  %var._i356 = alloca i64, align 8
  %var.st1 = alloca ptr, align 8
  %loop.step.52 = alloca i64, align 8
  %loop.idx.52 = alloca i64, align 8
  %var.def_names = alloca ptr, align 8
  %var.is_gen = alloca i1, align 1
  %var.is_fe = alloca i1, align 1
  %var.fek = alloca ptr, align 8
  %var._49 = alloca ptr, align 8
  %var.ak = alloca ptr, align 8
  %var._39 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.stk = alloca ptr, align 8
  %loop.step.49 = alloca i64, align 8
  %loop.idx.49 = alloca i64, align 8
  %var.gen_names = alloca ptr, align 8
  %var.graph = alloca ptr, align 8
  %var.nodes = alloca ptr, align 8
  %var.stmts = alloca ptr, align 8
  store ptr %0, ptr %var.stmts, align 8
  store ptr null, ptr %var.nodes, align 8
  %var.load = load ptr, ptr %var.nodes, align 8
  %a.load = load ptr, ptr %var.nodes, align 8
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
  store ptr %a.create1, ptr %var.nodes, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.nodes, align 8
  %arena.cur3 = call ptr @dva_arena_current()
  %m.new = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 48)
  %arena.cur4 = call ptr @dva_arena_current()
  %m.keys = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 64)
  %arena.cur5 = call ptr @dva_arena_current()
  %m.vals = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 64)
  %arena.cur6 = call ptr @dva_arena_current()
  %m.states = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 8)
  call void @llvm.memset.p0.i64(ptr align 1 %m.states, i8 0, i64 8, i1 false)
  %m.count.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new, i32 0, i32 0
  store i64 0, ptr %m.count.gep, align 8
  %m.cap.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new, i32 0, i32 1
  store i64 8, ptr %m.cap.gep, align 8
  %m.keys.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new, i32 0, i32 2
  store ptr %m.keys, ptr %m.keys.gep, align 8
  %m.vals.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new, i32 0, i32 3
  store ptr %m.vals, ptr %m.vals.gep, align 8
  %m.states.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new, i32 0, i32 4
  store ptr %m.states, ptr %m.states.gep, align 8
  %m.tombs.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep, align 8
  %arena.cur7 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load2, ptr %rec.fld, align 8
  %rec.fld8 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %m.new, ptr %rec.fld8, align 8
  store ptr %rec.alloc, ptr %var.graph, align 8
  %arena.cur9 = call ptr @dva_arena_current()
  %m.new10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 48)
  %arena.cur11 = call ptr @dva_arena_current()
  %m.keys12 = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 64)
  %arena.cur13 = call ptr @dva_arena_current()
  %m.vals14 = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 64)
  %arena.cur15 = call ptr @dva_arena_current()
  %m.states16 = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 8)
  call void @llvm.memset.p0.i64(ptr align 1 %m.states16, i8 0, i64 8, i1 false)
  %m.count.gep17 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new10, i32 0, i32 0
  store i64 0, ptr %m.count.gep17, align 8
  %m.cap.gep18 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new10, i32 0, i32 1
  store i64 8, ptr %m.cap.gep18, align 8
  %m.keys.gep19 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new10, i32 0, i32 2
  store ptr %m.keys12, ptr %m.keys.gep19, align 8
  %m.vals.gep20 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new10, i32 0, i32 3
  store ptr %m.vals14, ptr %m.vals.gep20, align 8
  %m.states.gep21 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new10, i32 0, i32 4
  store ptr %m.states16, ptr %m.states.gep21, align 8
  %m.tombs.gep22 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new10, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep22, align 8
  store ptr %m.new10, ptr %var.gen_names, align 8
  %var.load23 = load ptr, ptr %var.stmts, align 8
  %a.load24 = load ptr, ptr %var.stmts, align 8
  %a.null25 = icmp eq ptr %a.load24, null
  br i1 %a.null25, label %a.create26, label %a.after27

a.create26:                                       ; preds = %a.after
  %arena.cur28 = call ptr @dva_arena_current()
  %a.create29 = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 24)
  %arena.cur30 = call ptr @dva_arena_current()
  %a.buf31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 128)
  %a.len.gep32 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create29, i32 0, i32 0
  store i64 0, ptr %a.len.gep32, align 8
  %a.data.gep33 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create29, i32 0, i32 1
  store ptr %a.buf31, ptr %a.data.gep33, align 8
  %a.cap.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create29, i32 0, i32 2
  store i64 16, ptr %a.cap.gep34, align 8
  store ptr %a.create29, ptr %var.stmts, align 8
  br label %a.after27

a.after27:                                        ; preds = %a.create26, %a.after
  %a.load235 = load ptr, ptr %var.stmts, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load235, i32 0, i32 0
  %arr.cycle.len36 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load235, i32 0, i32 1
  %arr.cycle.data37 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.49, align 8
  br label %loop.header.49

loop.header.49:                                   ; preds = %loop.latch.49, %a.after27
  %counter.load = load i64, ptr %loop.idx.49, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len36
  br i1 %loop.cond, label %loop.body.49, label %loop.exit.nat.49

loop.body.49:                                     ; preds = %loop.header.49
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.49, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data37, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.stk, align 8
  %var.load38 = load ptr, ptr %var.stk, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 6
  br i1 %tag.match, label %choice.case, label %choice.next

loop.exit.nat.49:                                 ; preds = %loop.header.49
  br label %loop.exit.49

loop.latch.49:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.49, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.49, align 8
  br label %loop.header.49

loop.exit.49:                                     ; preds = %loop.exit.nat.49
  %arena.cur319 = call ptr @dva_arena_current()
  %m.new320 = call ptr @dva_arena_alloc(ptr %arena.cur319, i64 48)
  %arena.cur321 = call ptr @dva_arena_current()
  %m.keys322 = call ptr @dva_arena_alloc(ptr %arena.cur321, i64 64)
  %arena.cur323 = call ptr @dva_arena_current()
  %m.vals324 = call ptr @dva_arena_alloc(ptr %arena.cur323, i64 64)
  %arena.cur325 = call ptr @dva_arena_current()
  %m.states326 = call ptr @dva_arena_alloc(ptr %arena.cur325, i64 8)
  call void @llvm.memset.p0.i64(ptr align 1 %m.states326, i8 0, i64 8, i1 false)
  %m.count.gep327 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new320, i32 0, i32 0
  store i64 0, ptr %m.count.gep327, align 8
  %m.cap.gep328 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new320, i32 0, i32 1
  store i64 8, ptr %m.cap.gep328, align 8
  %m.keys.gep329 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new320, i32 0, i32 2
  store ptr %m.keys322, ptr %m.keys.gep329, align 8
  %m.vals.gep330 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new320, i32 0, i32 3
  store ptr %m.vals324, ptr %m.vals.gep330, align 8
  %m.states.gep331 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new320, i32 0, i32 4
  store ptr %m.states326, ptr %m.states.gep331, align 8
  %m.tombs.gep332 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new320, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep332, align 8
  store ptr %m.new320, ptr %var.def_names, align 8
  %var.load333 = load ptr, ptr %var.stmts, align 8
  %a.load334 = load ptr, ptr %var.stmts, align 8
  %a.null335 = icmp eq ptr %a.load334, null
  br i1 %a.null335, label %a.create336, label %a.after337

choice.exit:                                      ; preds = %choice.next, %choice.exit72
  br label %loop.latch.49

choice.case:                                      ; preds = %loop.body.49
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._39, align 8
  store ptr %payload.ptr, ptr %var.ak, align 8
  %var.load40 = load ptr, ptr %var.ak, align 8
  %fld.gep = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load40, i32 0, i32 5
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep44 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id45 = load i64, ptr %tag.gep44, align 8
  %tag.match46 = icmp eq i64 %tag.id45, 14
  br i1 %tag.match46, label %choice.case42, label %choice.next43

choice.next:                                      ; preds = %loop.body.49
  br label %choice.exit

choice.exit41:                                    ; preds = %choice.next43, %choice.case42
  %choice.res = phi i1 [ %cmptmp, %choice.case42 ], [ false, %choice.next43 ]
  store i1 %choice.res, ptr %var.is_fe, align 1
  %var.load54 = load ptr, ptr %var.ak, align 8
  %call.res = call i1 @"dep_graph::is_generic_sig"(ptr %var.load54)
  br i1 %call.res, label %or.50.then, label %or.50.else

choice.case42:                                    ; preds = %choice.case
  %pay.gep47 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr48 = load ptr, ptr %pay.gep47, align 8
  store ptr %payload.ptr48, ptr %var._49, align 8
  store ptr %payload.ptr48, ptr %var.fek, align 8
  %var.load50 = load ptr, ptr %var.fek, align 8
  %fld.gep51 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load50, i32 0, i32 1
  %fld.load52 = load ptr, ptr %fld.gep51, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load52, i32 0, i32 0
  %a.len.query53 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp sgt i64 %a.len.query53, 0
  br label %choice.exit41

choice.next43:                                    ; preds = %choice.case
  br label %choice.exit41

or.50.then:                                       ; preds = %choice.exit41
  br label %or.50.exit

or.50.else:                                       ; preds = %choice.exit41
  %var.load55 = load i1, ptr %var.is_fe, align 1
  br label %or.50.exit

or.50.exit:                                       ; preds = %or.50.else, %or.50.then
  %or.50.phi = phi i1 [ %call.res, %or.50.then ], [ %var.load55, %or.50.else ]
  store i1 %or.50.phi, ptr %var.is_gen, align 1
  %var.load56 = load i1, ptr %var.is_gen, align 1
  br i1 %var.load56, label %and.51.then, label %and.51.else

and.51.then:                                      ; preds = %or.50.exit
  %var.load57 = load ptr, ptr %var.ak, align 8
  %fld.gep58 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load57, i32 0, i32 0
  %fld.load59 = load ptr, ptr %fld.gep58, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load59, i32 0, i32 0
  %eq.lhs.len60 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len61 = and i64 %eq.lhs.len60, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len60, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

and.51.else:                                      ; preds = %or.50.exit
  br label %and.51.exit

and.51.exit:                                      ; preds = %and.51.else, %str.eq.merge
  %and.51.phi = phi i1 [ %str.neq, %str.eq.merge ], [ %var.load56, %and.51.else ]
  br i1 %and.51.phi, label %choice.then, label %choice.exit72

str_gen_check:                                    ; preds = %and.51.then
  %arena.cur62 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur62, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %and.51.then
  %eq.rhs.len = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len63 = and i64 %eq.rhs.len, 281474976710655
  %str.tag64 = lshr i64 %eq.rhs.len, 48
  %str.immortal65 = icmp eq i64 %str.tag64, 0
  br i1 %str.immortal65, label %str_ok67, label %str_gen_check66

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check66:                                  ; preds = %str_ok
  %arena.cur69 = call ptr @dva_arena_current()
  %tag.valid70 = call i1 @dva_arena_validate_tag(ptr %arena.cur69, i64 %str.tag64)
  br i1 %tag.valid70, label %str_ok67, label %str_stale68

str_ok67:                                         ; preds = %str_stale68, %str_gen_check66, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len61, %eq.rhs.len63
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale68:                                      ; preds = %str_gen_check66
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok67

str.eq.then:                                      ; preds = %str_ok67
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load59, i32 0, i32 1
  %eq.lhs.data71 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data71, ptr %eq.rhs.data, i64 %eq.lhs.len61)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok67
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br label %and.51.exit

choice.then:                                      ; preds = %and.51.exit
  %var.load73 = load ptr, ptr %var.gen_names, align 8
  %var.load74 = load ptr, ptr %var.ak, align 8
  %fld.gep75 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load74, i32 0, i32 0
  %fld.load76 = load ptr, ptr %fld.gep75, align 8
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 1
  %m.cap77 = load i64, ptr %m.cap, align 8
  %m.keys78 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 2
  %m.keys79 = load ptr, ptr %m.keys78, align 8
  %m.vals80 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 3
  %m.vals81 = load ptr, ptr %m.vals80, align 8
  %m.states82 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 4
  %m.states83 = load ptr, ptr %m.states82, align 8
  %mk.data = getelementptr inbounds { i64, ptr }, ptr %fld.load76, i32 0, i32 1
  %mk.data84 = load ptr, ptr %mk.data, align 8
  %mk.len = getelementptr inbounds { i64, ptr }, ptr %fld.load76, i32 0, i32 0
  %mk.len85 = load i64, ptr %mk.len, align 8
  %mk.len86 = and i64 %mk.len85, 281474976710655
  %str.tag87 = lshr i64 %mk.len85, 48
  %str.immortal88 = icmp eq i64 %str.tag87, 0
  br i1 %str.immortal88, label %str_ok90, label %str_gen_check89

choice.exit72:                                    ; preds = %m.done, %and.51.exit
  br label %choice.exit

str_gen_check89:                                  ; preds = %choice.then
  %arena.cur92 = call ptr @dva_arena_current()
  %tag.valid93 = call i1 @dva_arena_validate_tag(ptr %arena.cur92, i64 %str.tag87)
  br i1 %tag.valid93, label %str_ok90, label %str_stale91

str_ok90:                                         ; preds = %str_stale91, %str_gen_check89, %choice.then
  %hash.str = call i64 @dva_hash_string(ptr %mk.data84, i64 %mk.len86)
  %m.capm1 = sub i64 %m.cap77, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.loop

str_stale91:                                      ; preds = %str_gen_check89
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok90

m.loop:                                           ; preds = %m.next, %str_ok90
  %m.idx = phi i64 [ %m.idx0, %str_ok90 ], [ %m.idx.next, %m.next ]
  %m.tomb94 = phi i64 [ -1, %str_ok90 ], [ %m.next.tomb, %m.next ]
  %m.probe = phi i64 [ 0, %str_ok90 ], [ %m.probe.next, %m.next ]
  %m.reached.cap = icmp eq i64 %m.probe, %m.cap77
  %m.state.gep = getelementptr i8, ptr %m.states83, i64 %m.idx
  %m.state = load i8, ptr %m.state.gep, align 1
  %m.is.empty = icmp eq i8 %m.state, 0
  %m.stop = or i1 %m.is.empty, %m.reached.cap
  br i1 %m.stop, label %m.empty, label %m.check.tomb

m.check.tomb:                                     ; preds = %m.loop
  %m.is.tomb = icmp eq i8 %m.state, 2
  br i1 %m.is.tomb, label %m.tomb, label %m.found

m.tomb:                                           ; preds = %m.check.tomb
  %m.has.tomb = icmp ne i64 %m.tomb94, -1
  %m.tomb.sel = select i1 %m.has.tomb, i64 %m.tomb94, i64 %m.idx
  br label %m.next

m.found:                                          ; preds = %m.check.tomb
  %m.key.slot = getelementptr ptr, ptr %m.keys79, i64 %m.idx
  %mk.stored = load ptr, ptr %m.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen95 = load i64, ptr %mk.slen, align 8
  %mk.slen96 = and i64 %mk.slen95, 281474976710655
  %str.tag97 = lshr i64 %mk.slen95, 48
  %str.immortal98 = icmp eq i64 %str.tag97, 0
  br i1 %str.immortal98, label %str_ok100, label %str_gen_check99

m.overwrite:                                      ; preds = %mk.eq.merge
  %m.val.slot = getelementptr i64, ptr %m.vals81, i64 %m.idx
  store i64 1, ptr %m.val.slot, align 8
  br label %m.done

m.next:                                           ; preds = %mk.eq.merge, %m.tomb
  %m.next.tomb = phi i64 [ %m.tomb.sel, %m.tomb ], [ %m.tomb94, %mk.eq.merge ]
  %m.idx.add = add i64 %m.idx, 1
  %m.idx.next = and i64 %m.idx.add, %m.capm1
  %m.probe.next = add i64 %m.probe, 1
  br label %m.loop

m.empty:                                          ; preds = %m.loop
  %m.grow.cnt.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 0
  %m.grow.cnt = load i64, ptr %m.grow.cnt.p, align 8
  %m.grow.tm.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 5
  %m.grow.tm = load i64, ptr %m.grow.tm.p, align 8
  %m.occupied = add i64 %m.grow.cnt, %m.grow.tm
  %m.c.plus = add i64 %m.occupied, 1
  %m.c.lhs = mul i64 %m.c.plus, 4
  %m.c.rhs = mul i64 %m.cap77, 3
  %m.need.grow = icmp sgt i64 %m.c.lhs, %m.c.rhs
  br i1 %m.need.grow, label %m.grow, label %m.ins.slot

m.done:                                           ; preds = %m.ins.slot, %m.done243, %m.overwrite
  br label %choice.exit72

str_gen_check99:                                  ; preds = %m.found
  %arena.cur102 = call ptr @dva_arena_current()
  %tag.valid103 = call i1 @dva_arena_validate_tag(ptr %arena.cur102, i64 %str.tag97)
  br i1 %tag.valid103, label %str_ok100, label %str_stale101

str_ok100:                                        ; preds = %str_stale101, %str_gen_check99, %m.found
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %fld.load76, i32 0, i32 0
  %mk.nlen104 = load i64, ptr %mk.nlen, align 8
  %mk.nlen105 = and i64 %mk.nlen104, 281474976710655
  %str.tag106 = lshr i64 %mk.nlen104, 48
  %str.immortal107 = icmp eq i64 %str.tag106, 0
  br i1 %str.immortal107, label %str_ok109, label %str_gen_check108

str_stale101:                                     ; preds = %str_gen_check99
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok100

str_gen_check108:                                 ; preds = %str_ok100
  %arena.cur111 = call ptr @dva_arena_current()
  %tag.valid112 = call i1 @dva_arena_validate_tag(ptr %arena.cur111, i64 %str.tag106)
  br i1 %tag.valid112, label %str_ok109, label %str_stale110

str_ok109:                                        ; preds = %str_stale110, %str_gen_check108, %str_ok100
  %mk.lenseq = icmp eq i64 %mk.slen96, %mk.nlen105
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

str_stale110:                                     ; preds = %str_gen_check108
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok109

mk.eq.then:                                       ; preds = %str_ok109
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata113 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %fld.load76, i32 0, i32 1
  %mk.ndata114 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata113, ptr %mk.ndata114, i64 %mk.nlen105)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %str_ok109
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.overwrite, label %m.next

m.grow:                                           ; preds = %m.empty
  %m.old.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 1
  %m.old.cap115 = load i64, ptr %m.old.cap, align 8
  %m.old.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 2
  %m.old.keys116 = load ptr, ptr %m.old.keys, align 8
  %m.old.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 3
  %m.old.vals117 = load ptr, ptr %m.old.vals, align 8
  %m.old.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 4
  %m.old.states118 = load ptr, ptr %m.old.states, align 8
  %m.double.cap = mul i64 %m.old.cap115, 2
  %m.live.cnt = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 0
  %m.live.cnt119 = load i64, ptr %m.live.cnt, align 8
  %m.live.x2 = mul i64 %m.live.cnt119, 2
  %m.should.double = icmp sgt i64 %m.live.x2, %m.old.cap115
  %m.new.cap = select i1 %m.should.double, i64 %m.double.cap, i64 %m.old.cap115
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur120 = call ptr @dva_arena_current()
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 %m.gk.bytes)
  %m.gv.bytes = mul i64 %m.new.cap, 8
  %arena.cur121 = call ptr @dva_arena_current()
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur121, i64 %m.gv.bytes)
  %arena.cur122 = call ptr @dva_arena_current()
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur122, i64 %m.new.cap)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs, i8 0, i64 %m.new.cap, i1 false)
  %m.cap.gep123 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 1
  store i64 %m.new.cap, ptr %m.cap.gep123, align 8
  %m.keys.gep124 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 2
  store ptr %m.gk, ptr %m.keys.gep124, align 8
  %m.vals.gep125 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 3
  store ptr %m.gv, ptr %m.vals.gep125, align 8
  %m.states.gep126 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 4
  store ptr %m.gs, ptr %m.states.gep126, align 8
  %m.count.gep127 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 0
  store i64 0, ptr %m.count.gep127, align 8
  %m.tombs.gep128 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep128, align 8
  br label %m.re.loop

m.ins.slot:                                       ; preds = %m.empty
  %m.use.tomb306 = icmp ne i64 %m.tomb94, -1
  %m.ins.idx307 = select i1 %m.use.tomb306, i64 %m.tomb94, i64 %m.idx
  %m.key.slot308 = getelementptr ptr, ptr %m.keys79, i64 %m.ins.idx307
  store ptr %fld.load76, ptr %m.key.slot308, align 8
  %m.val.slot309 = getelementptr i64, ptr %m.vals81, i64 %m.ins.idx307
  store i64 1, ptr %m.val.slot309, align 8
  %m.ins.state.slot310 = getelementptr i8, ptr %m.states83, i64 %m.ins.idx307
  store i8 1, ptr %m.ins.state.slot310, align 1
  %m.count311 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 0
  %m.count312 = load i64, ptr %m.count311, align 8
  %m.count.next313 = add i64 %m.count312, 1
  %m.count.gep314 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 0
  store i64 %m.count.next313, ptr %m.count.gep314, align 8
  %m.ins.tombs.p315 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 5
  %m.ins.tombs316 = load i64, ptr %m.ins.tombs.p315, align 8
  %m.tomb.dec317 = select i1 %m.use.tomb306, i64 1, i64 0
  %m.ins.tombs.next318 = sub i64 %m.ins.tombs316, %m.tomb.dec317
  store i64 %m.ins.tombs.next318, ptr %m.ins.tombs.p315, align 8
  br label %m.done

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap115
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states118, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.done159, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  %m.cap213 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 1
  %m.cap214 = load i64, ptr %m.cap213, align 8
  %m.keys215 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 2
  %m.keys216 = load ptr, ptr %m.keys215, align 8
  %m.vals217 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 3
  %m.vals218 = load ptr, ptr %m.vals217, align 8
  %m.states219 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 4
  %m.states220 = load ptr, ptr %m.states219, align 8
  %mk.data221 = getelementptr inbounds { i64, ptr }, ptr %fld.load76, i32 0, i32 1
  %mk.data222 = load ptr, ptr %mk.data221, align 8
  %mk.len223 = getelementptr inbounds { i64, ptr }, ptr %fld.load76, i32 0, i32 0
  %mk.len224 = load i64, ptr %mk.len223, align 8
  %mk.len225 = and i64 %mk.len224, 281474976710655
  %str.tag226 = lshr i64 %mk.len224, 48
  %str.immortal227 = icmp eq i64 %str.tag226, 0
  br i1 %str.immortal227, label %str_ok229, label %str_gen_check228

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr ptr, ptr %m.old.keys116, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals117, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap129 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 1
  %m.cap130 = load i64, ptr %m.cap129, align 8
  %m.keys131 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 2
  %m.keys132 = load ptr, ptr %m.keys131, align 8
  %m.vals133 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 3
  %m.vals134 = load ptr, ptr %m.vals133, align 8
  %m.states135 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 4
  %m.states136 = load ptr, ptr %m.states135, align 8
  %mk.data137 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data138 = load ptr, ptr %mk.data137, align 8
  %mk.len139 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.len140 = load i64, ptr %mk.len139, align 8
  %mk.len141 = and i64 %mk.len140, 281474976710655
  %str.tag142 = lshr i64 %mk.len140, 48
  %str.immortal143 = icmp eq i64 %str.tag142, 0
  br i1 %str.immortal143, label %str_ok145, label %str_gen_check144

str_gen_check144:                                 ; preds = %m.re.ins
  %arena.cur147 = call ptr @dva_arena_current()
  %tag.valid148 = call i1 @dva_arena_validate_tag(ptr %arena.cur147, i64 %str.tag142)
  br i1 %tag.valid148, label %str_ok145, label %str_stale146

str_ok145:                                        ; preds = %str_stale146, %str_gen_check144, %m.re.ins
  %hash.str149 = call i64 @dva_hash_string(ptr %mk.data138, i64 %mk.len141)
  %m.capm1150 = sub i64 %m.cap130, 1
  %m.idx0151 = and i64 %hash.str149, %m.capm1150
  br label %m.loop152

str_stale146:                                     ; preds = %str_gen_check144
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok145

m.loop152:                                        ; preds = %m.next157, %str_ok145
  %m.idx160 = phi i64 [ %m.idx0151, %str_ok145 ], [ %m.idx.next207, %m.next157 ]
  %m.tomb161 = phi i64 [ -1, %str_ok145 ], [ %m.next.tomb205, %m.next157 ]
  %m.probe162 = phi i64 [ 0, %str_ok145 ], [ %m.probe.next208, %m.next157 ]
  %m.reached.cap163 = icmp eq i64 %m.probe162, %m.cap130
  %m.state.gep164 = getelementptr i8, ptr %m.states136, i64 %m.idx160
  %m.state165 = load i8, ptr %m.state.gep164, align 1
  %m.is.empty166 = icmp eq i8 %m.state165, 0
  %m.stop167 = or i1 %m.is.empty166, %m.reached.cap163
  br i1 %m.stop167, label %m.empty158, label %m.check.tomb153

m.check.tomb153:                                  ; preds = %m.loop152
  %m.is.tomb168 = icmp eq i8 %m.state165, 2
  br i1 %m.is.tomb168, label %m.tomb154, label %m.found155

m.tomb154:                                        ; preds = %m.check.tomb153
  %m.has.tomb169 = icmp ne i64 %m.tomb161, -1
  %m.tomb.sel170 = select i1 %m.has.tomb169, i64 %m.tomb161, i64 %m.idx160
  br label %m.next157

m.found155:                                       ; preds = %m.check.tomb153
  %m.key.slot171 = getelementptr ptr, ptr %m.keys132, i64 %m.idx160
  %mk.stored172 = load ptr, ptr %m.key.slot171, align 8
  %mk.slen173 = getelementptr inbounds { i64, ptr }, ptr %mk.stored172, i32 0, i32 0
  %mk.slen174 = load i64, ptr %mk.slen173, align 8
  %mk.slen175 = and i64 %mk.slen174, 281474976710655
  %str.tag176 = lshr i64 %mk.slen174, 48
  %str.immortal177 = icmp eq i64 %str.tag176, 0
  br i1 %str.immortal177, label %str_ok179, label %str_gen_check178

m.overwrite156:                                   ; preds = %mk.eq.merge196
  %m.val.slot204 = getelementptr i64, ptr %m.vals134, i64 %m.idx160
  store i64 %m.re.val, ptr %m.val.slot204, align 8
  br label %m.done159

m.next157:                                        ; preds = %mk.eq.merge196, %m.tomb154
  %m.next.tomb205 = phi i64 [ %m.tomb.sel170, %m.tomb154 ], [ %m.tomb161, %mk.eq.merge196 ]
  %m.idx.add206 = add i64 %m.idx160, 1
  %m.idx.next207 = and i64 %m.idx.add206, %m.capm1150
  %m.probe.next208 = add i64 %m.probe162, 1
  br label %m.loop152

m.empty158:                                       ; preds = %m.loop152
  %m.use.tomb = icmp ne i64 %m.tomb161, -1
  %m.ins.idx = select i1 %m.use.tomb, i64 %m.tomb161, i64 %m.idx160
  %m.key.slot209 = getelementptr ptr, ptr %m.keys132, i64 %m.ins.idx
  store ptr %m.re.key, ptr %m.key.slot209, align 8
  %m.val.slot210 = getelementptr i64, ptr %m.vals134, i64 %m.ins.idx
  store i64 %m.re.val, ptr %m.val.slot210, align 8
  %m.ins.state.slot = getelementptr i8, ptr %m.states136, i64 %m.ins.idx
  store i8 1, ptr %m.ins.state.slot, align 1
  %m.count = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 0
  %m.count211 = load i64, ptr %m.count, align 8
  %m.count.next = add i64 %m.count211, 1
  %m.count.gep212 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 0
  store i64 %m.count.next, ptr %m.count.gep212, align 8
  %m.ins.tombs.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 5
  %m.ins.tombs = load i64, ptr %m.ins.tombs.p, align 8
  %m.tomb.dec = select i1 %m.use.tomb, i64 1, i64 0
  %m.ins.tombs.next = sub i64 %m.ins.tombs, %m.tomb.dec
  store i64 %m.ins.tombs.next, ptr %m.ins.tombs.p, align 8
  br label %m.done159

m.done159:                                        ; preds = %m.empty158, %m.overwrite156
  br label %m.re.cont

str_gen_check178:                                 ; preds = %m.found155
  %arena.cur181 = call ptr @dva_arena_current()
  %tag.valid182 = call i1 @dva_arena_validate_tag(ptr %arena.cur181, i64 %str.tag176)
  br i1 %tag.valid182, label %str_ok179, label %str_stale180

str_ok179:                                        ; preds = %str_stale180, %str_gen_check178, %m.found155
  %mk.nlen183 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.nlen184 = load i64, ptr %mk.nlen183, align 8
  %mk.nlen185 = and i64 %mk.nlen184, 281474976710655
  %str.tag186 = lshr i64 %mk.nlen184, 48
  %str.immortal187 = icmp eq i64 %str.tag186, 0
  br i1 %str.immortal187, label %str_ok189, label %str_gen_check188

str_stale180:                                     ; preds = %str_gen_check178
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok179

str_gen_check188:                                 ; preds = %str_ok179
  %arena.cur191 = call ptr @dva_arena_current()
  %tag.valid192 = call i1 @dva_arena_validate_tag(ptr %arena.cur191, i64 %str.tag186)
  br i1 %tag.valid192, label %str_ok189, label %str_stale190

str_ok189:                                        ; preds = %str_stale190, %str_gen_check188, %str_ok179
  %mk.lenseq193 = icmp eq i64 %mk.slen175, %mk.nlen185
  br i1 %mk.lenseq193, label %mk.eq.then194, label %mk.eq.else195

str_stale190:                                     ; preds = %str_gen_check188
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok189

mk.eq.then194:                                    ; preds = %str_ok189
  %mk.sdata197 = getelementptr inbounds { i64, ptr }, ptr %mk.stored172, i32 0, i32 1
  %mk.sdata198 = load ptr, ptr %mk.sdata197, align 8
  %mk.ndata199 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.ndata200 = load ptr, ptr %mk.ndata199, align 8
  %mk.memcmp201 = call i32 @memcmp(ptr %mk.sdata198, ptr %mk.ndata200, i64 %mk.nlen185)
  %mk.cmpeq202 = icmp eq i32 %mk.memcmp201, 0
  br label %mk.eq.merge196

mk.eq.else195:                                    ; preds = %str_ok189
  br label %mk.eq.merge196

mk.eq.merge196:                                   ; preds = %mk.eq.else195, %mk.eq.then194
  %mk.eq203 = phi i1 [ %mk.cmpeq202, %mk.eq.then194 ], [ false, %mk.eq.else195 ]
  br i1 %mk.eq203, label %m.overwrite156, label %m.next157

str_gen_check228:                                 ; preds = %m.re.done
  %arena.cur231 = call ptr @dva_arena_current()
  %tag.valid232 = call i1 @dva_arena_validate_tag(ptr %arena.cur231, i64 %str.tag226)
  br i1 %tag.valid232, label %str_ok229, label %str_stale230

str_ok229:                                        ; preds = %str_stale230, %str_gen_check228, %m.re.done
  %hash.str233 = call i64 @dva_hash_string(ptr %mk.data222, i64 %mk.len225)
  %m.capm1234 = sub i64 %m.cap214, 1
  %m.idx0235 = and i64 %hash.str233, %m.capm1234
  br label %m.loop236

str_stale230:                                     ; preds = %str_gen_check228
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok229

m.loop236:                                        ; preds = %m.next241, %str_ok229
  %m.idx244 = phi i64 [ %m.idx0235, %str_ok229 ], [ %m.idx.next291, %m.next241 ]
  %m.tomb245 = phi i64 [ -1, %str_ok229 ], [ %m.next.tomb289, %m.next241 ]
  %m.probe246 = phi i64 [ 0, %str_ok229 ], [ %m.probe.next292, %m.next241 ]
  %m.reached.cap247 = icmp eq i64 %m.probe246, %m.cap214
  %m.state.gep248 = getelementptr i8, ptr %m.states220, i64 %m.idx244
  %m.state249 = load i8, ptr %m.state.gep248, align 1
  %m.is.empty250 = icmp eq i8 %m.state249, 0
  %m.stop251 = or i1 %m.is.empty250, %m.reached.cap247
  br i1 %m.stop251, label %m.empty242, label %m.check.tomb237

m.check.tomb237:                                  ; preds = %m.loop236
  %m.is.tomb252 = icmp eq i8 %m.state249, 2
  br i1 %m.is.tomb252, label %m.tomb238, label %m.found239

m.tomb238:                                        ; preds = %m.check.tomb237
  %m.has.tomb253 = icmp ne i64 %m.tomb245, -1
  %m.tomb.sel254 = select i1 %m.has.tomb253, i64 %m.tomb245, i64 %m.idx244
  br label %m.next241

m.found239:                                       ; preds = %m.check.tomb237
  %m.key.slot255 = getelementptr ptr, ptr %m.keys216, i64 %m.idx244
  %mk.stored256 = load ptr, ptr %m.key.slot255, align 8
  %mk.slen257 = getelementptr inbounds { i64, ptr }, ptr %mk.stored256, i32 0, i32 0
  %mk.slen258 = load i64, ptr %mk.slen257, align 8
  %mk.slen259 = and i64 %mk.slen258, 281474976710655
  %str.tag260 = lshr i64 %mk.slen258, 48
  %str.immortal261 = icmp eq i64 %str.tag260, 0
  br i1 %str.immortal261, label %str_ok263, label %str_gen_check262

m.overwrite240:                                   ; preds = %mk.eq.merge280
  %m.val.slot288 = getelementptr i64, ptr %m.vals218, i64 %m.idx244
  store i64 1, ptr %m.val.slot288, align 8
  br label %m.done243

m.next241:                                        ; preds = %mk.eq.merge280, %m.tomb238
  %m.next.tomb289 = phi i64 [ %m.tomb.sel254, %m.tomb238 ], [ %m.tomb245, %mk.eq.merge280 ]
  %m.idx.add290 = add i64 %m.idx244, 1
  %m.idx.next291 = and i64 %m.idx.add290, %m.capm1234
  %m.probe.next292 = add i64 %m.probe246, 1
  br label %m.loop236

m.empty242:                                       ; preds = %m.loop236
  %m.use.tomb293 = icmp ne i64 %m.tomb245, -1
  %m.ins.idx294 = select i1 %m.use.tomb293, i64 %m.tomb245, i64 %m.idx244
  %m.key.slot295 = getelementptr ptr, ptr %m.keys216, i64 %m.ins.idx294
  store ptr %fld.load76, ptr %m.key.slot295, align 8
  %m.val.slot296 = getelementptr i64, ptr %m.vals218, i64 %m.ins.idx294
  store i64 1, ptr %m.val.slot296, align 8
  %m.ins.state.slot297 = getelementptr i8, ptr %m.states220, i64 %m.ins.idx294
  store i8 1, ptr %m.ins.state.slot297, align 1
  %m.count298 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 0
  %m.count299 = load i64, ptr %m.count298, align 8
  %m.count.next300 = add i64 %m.count299, 1
  %m.count.gep301 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 0
  store i64 %m.count.next300, ptr %m.count.gep301, align 8
  %m.ins.tombs.p302 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load73, i32 0, i32 5
  %m.ins.tombs303 = load i64, ptr %m.ins.tombs.p302, align 8
  %m.tomb.dec304 = select i1 %m.use.tomb293, i64 1, i64 0
  %m.ins.tombs.next305 = sub i64 %m.ins.tombs303, %m.tomb.dec304
  store i64 %m.ins.tombs.next305, ptr %m.ins.tombs.p302, align 8
  br label %m.done243

m.done243:                                        ; preds = %m.empty242, %m.overwrite240
  br label %m.done

str_gen_check262:                                 ; preds = %m.found239
  %arena.cur265 = call ptr @dva_arena_current()
  %tag.valid266 = call i1 @dva_arena_validate_tag(ptr %arena.cur265, i64 %str.tag260)
  br i1 %tag.valid266, label %str_ok263, label %str_stale264

str_ok263:                                        ; preds = %str_stale264, %str_gen_check262, %m.found239
  %mk.nlen267 = getelementptr inbounds { i64, ptr }, ptr %fld.load76, i32 0, i32 0
  %mk.nlen268 = load i64, ptr %mk.nlen267, align 8
  %mk.nlen269 = and i64 %mk.nlen268, 281474976710655
  %str.tag270 = lshr i64 %mk.nlen268, 48
  %str.immortal271 = icmp eq i64 %str.tag270, 0
  br i1 %str.immortal271, label %str_ok273, label %str_gen_check272

str_stale264:                                     ; preds = %str_gen_check262
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok263

str_gen_check272:                                 ; preds = %str_ok263
  %arena.cur275 = call ptr @dva_arena_current()
  %tag.valid276 = call i1 @dva_arena_validate_tag(ptr %arena.cur275, i64 %str.tag270)
  br i1 %tag.valid276, label %str_ok273, label %str_stale274

str_ok273:                                        ; preds = %str_stale274, %str_gen_check272, %str_ok263
  %mk.lenseq277 = icmp eq i64 %mk.slen259, %mk.nlen269
  br i1 %mk.lenseq277, label %mk.eq.then278, label %mk.eq.else279

str_stale274:                                     ; preds = %str_gen_check272
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok273

mk.eq.then278:                                    ; preds = %str_ok273
  %mk.sdata281 = getelementptr inbounds { i64, ptr }, ptr %mk.stored256, i32 0, i32 1
  %mk.sdata282 = load ptr, ptr %mk.sdata281, align 8
  %mk.ndata283 = getelementptr inbounds { i64, ptr }, ptr %fld.load76, i32 0, i32 1
  %mk.ndata284 = load ptr, ptr %mk.ndata283, align 8
  %mk.memcmp285 = call i32 @memcmp(ptr %mk.sdata282, ptr %mk.ndata284, i64 %mk.nlen269)
  %mk.cmpeq286 = icmp eq i32 %mk.memcmp285, 0
  br label %mk.eq.merge280

mk.eq.else279:                                    ; preds = %str_ok273
  br label %mk.eq.merge280

mk.eq.merge280:                                   ; preds = %mk.eq.else279, %mk.eq.then278
  %mk.eq287 = phi i1 [ %mk.cmpeq286, %mk.eq.then278 ], [ false, %mk.eq.else279 ]
  br i1 %mk.eq287, label %m.overwrite240, label %m.next241

a.create336:                                      ; preds = %loop.exit.49
  %arena.cur338 = call ptr @dva_arena_current()
  %a.create339 = call ptr @dva_arena_alloc(ptr %arena.cur338, i64 24)
  %arena.cur340 = call ptr @dva_arena_current()
  %a.buf341 = call ptr @dva_arena_alloc(ptr %arena.cur340, i64 128)
  %a.len.gep342 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create339, i32 0, i32 0
  store i64 0, ptr %a.len.gep342, align 8
  %a.data.gep343 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create339, i32 0, i32 1
  store ptr %a.buf341, ptr %a.data.gep343, align 8
  %a.cap.gep344 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create339, i32 0, i32 2
  store i64 16, ptr %a.cap.gep344, align 8
  store ptr %a.create339, ptr %var.stmts, align 8
  br label %a.after337

a.after337:                                       ; preds = %a.create336, %loop.exit.49
  %a.load2345 = load ptr, ptr %var.stmts, align 8
  %arr.cycle.len346 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2345, i32 0, i32 0
  %arr.cycle.len347 = load i64, ptr %arr.cycle.len346, align 8
  %arr.cycle.data348 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2345, i32 0, i32 1
  %arr.cycle.data349 = load ptr, ptr %arr.cycle.data348, align 8
  store i64 0, ptr %loop.idx.52, align 8
  br label %loop.header.52

loop.header.52:                                   ; preds = %loop.latch.52, %a.after337
  %counter.load350 = load i64, ptr %loop.idx.52, align 8
  %loop.cond351 = icmp slt i64 %counter.load350, %arr.cycle.len347
  br i1 %loop.cond351, label %loop.body.52, label %loop.exit.nat.52

loop.body.52:                                     ; preds = %loop.header.52
  %loop.rel.i352 = sub i64 %counter.load350, 0
  store i64 1, ptr %loop.step.52, align 8
  %arr.elem.gep353 = getelementptr i64, ptr %arr.cycle.data349, i64 %counter.load350
  %arr.elem.raw354 = load i64, ptr %arr.elem.gep353, align 8
  %slot.i2p355 = inttoptr i64 %arr.elem.raw354 to ptr
  store i64 %loop.rel.i352, ptr %var._i356, align 8
  store ptr %slot.i2p355, ptr %var._357, align 8
  store ptr %slot.i2p355, ptr %var.st1, align 8
  %var.load358 = load ptr, ptr %var.st1, align 8
  %tag.gep362 = getelementptr inbounds { i64, ptr }, ptr %var.load358, i32 0, i32 0
  %tag.id363 = load i64, ptr %tag.gep362, align 8
  %tag.match364 = icmp eq i64 %tag.id363, 6
  br i1 %tag.match364, label %choice.case360, label %choice.next361

loop.exit.nat.52:                                 ; preds = %loop.header.52
  br label %loop.exit.52

loop.latch.52:                                    ; preds = %choice.exit359
  %step.val810 = load i64, ptr %loop.step.52, align 8
  %loop.next811 = add i64 %counter.load350, %step.val810
  store i64 %loop.next811, ptr %loop.idx.52, align 8
  br label %loop.header.52

loop.exit.52:                                     ; preds = %loop.exit.nat.52
  %var.load812 = load ptr, ptr %var.stmts, align 8
  %a.load813 = load ptr, ptr %var.stmts, align 8
  %a.null814 = icmp eq ptr %a.load813, null
  br i1 %a.null814, label %a.create815, label %a.after816

choice.exit359:                                   ; preds = %choice.next361, %choice.exit474
  br label %loop.latch.52

choice.case360:                                   ; preds = %loop.body.52
  %pay.gep365 = getelementptr inbounds { i64, ptr }, ptr %var.load358, i32 0, i32 1
  %payload.ptr366 = load ptr, ptr %pay.gep365, align 8
  store ptr %payload.ptr366, ptr %var._367, align 8
  store ptr %payload.ptr366, ptr %var.a1, align 8
  %var.load368 = load ptr, ptr %var.a1, align 8
  %call.res369 = call i1 @"dep_graph::is_fwd_assign"(ptr %var.load368)
  store i1 %call.res369, ptr %var.is_fwd1, align 1
  %var.load370 = load ptr, ptr %var.gen_names, align 8
  %var.load371 = load ptr, ptr %var.a1, align 8
  %fld.gep372 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load371, i32 0, i32 0
  %fld.load373 = load ptr, ptr %fld.gep372, align 8
  %m.cap374 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load370, i32 0, i32 1
  %m.cap375 = load i64, ptr %m.cap374, align 8
  %m.keys376 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load370, i32 0, i32 2
  %m.keys377 = load ptr, ptr %m.keys376, align 8
  %m.states378 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load370, i32 0, i32 4
  %m.states379 = load ptr, ptr %m.states378, align 8
  %mk.data380 = getelementptr inbounds { i64, ptr }, ptr %fld.load373, i32 0, i32 1
  %mk.data381 = load ptr, ptr %mk.data380, align 8
  %mk.len382 = getelementptr inbounds { i64, ptr }, ptr %fld.load373, i32 0, i32 0
  %mk.len383 = load i64, ptr %mk.len382, align 8
  %mk.len384 = and i64 %mk.len383, 281474976710655
  %str.tag385 = lshr i64 %mk.len383, 48
  %str.immortal386 = icmp eq i64 %str.tag385, 0
  br i1 %str.immortal386, label %str_ok388, label %str_gen_check387

choice.next361:                                   ; preds = %loop.body.52
  br label %choice.exit359

str_gen_check387:                                 ; preds = %choice.case360
  %arena.cur390 = call ptr @dva_arena_current()
  %tag.valid391 = call i1 @dva_arena_validate_tag(ptr %arena.cur390, i64 %str.tag385)
  br i1 %tag.valid391, label %str_ok388, label %str_stale389

str_ok388:                                        ; preds = %str_stale389, %str_gen_check387, %choice.case360
  %hash.str392 = call i64 @dva_hash_string(ptr %mk.data381, i64 %mk.len384)
  %m.capm1393 = sub i64 %m.cap375, 1
  %m.idx0394 = and i64 %hash.str392, %m.capm1393
  br label %m.mem.loop

str_stale389:                                     ; preds = %str_gen_check387
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok388

m.mem.loop:                                       ; preds = %m.mem.next, %str_ok388
  %m.mem.idx = phi i64 [ %m.idx0394, %str_ok388 ], [ %m.mem.idx.next, %m.mem.next ]
  %m.mem.probe395 = phi i64 [ 0, %str_ok388 ], [ %m.mem.probe.next, %m.mem.next ]
  %m.mem.reached = icmp eq i64 %m.mem.probe395, %m.cap375
  %m.mem.state.gep = getelementptr i8, ptr %m.states379, i64 %m.mem.idx
  %m.mem.state = load i8, ptr %m.mem.state.gep, align 1
  %m.mem.is.empty = icmp eq i8 %m.mem.state, 0
  %m.mem.stop = or i1 %m.mem.is.empty, %m.mem.reached
  br i1 %m.mem.stop, label %m.mem.miss, label %m.mem.probe

m.mem.probe:                                      ; preds = %m.mem.loop
  %m.mem.is.tomb = icmp eq i8 %m.mem.state, 2
  br i1 %m.mem.is.tomb, label %m.mem.next, label %m.mem.found

m.mem.found:                                      ; preds = %m.mem.probe
  %m.mem.key.slot = getelementptr ptr, ptr %m.keys377, i64 %m.mem.idx
  %mk.stored396 = load ptr, ptr %m.mem.key.slot, align 8
  %mk.slen397 = getelementptr inbounds { i64, ptr }, ptr %mk.stored396, i32 0, i32 0
  %mk.slen398 = load i64, ptr %mk.slen397, align 8
  %mk.slen399 = and i64 %mk.slen398, 281474976710655
  %str.tag400 = lshr i64 %mk.slen398, 48
  %str.immortal401 = icmp eq i64 %str.tag400, 0
  br i1 %str.immortal401, label %str_ok403, label %str_gen_check402

m.mem.next:                                       ; preds = %mk.eq.merge420, %m.mem.probe
  %m.mem.idx.add = add i64 %m.mem.idx, 1
  %m.mem.idx.next = and i64 %m.mem.idx.add, %m.capm1393
  %m.mem.probe.next = add i64 %m.mem.probe395, 1
  br label %m.mem.loop

m.mem.miss:                                       ; preds = %m.mem.loop
  br label %m.mem.done

m.mem.done:                                       ; preds = %m.mem.miss, %m.mem.hit
  %m.mem.res = phi i1 [ true, %m.mem.hit ], [ false, %m.mem.miss ]
  store i1 %m.mem.res, ptr %var.is_gen1, align 1
  %var.load428 = load ptr, ptr %var.a1, align 8
  %fld.gep429 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load428, i32 0, i32 0
  %fld.load430 = load ptr, ptr %fld.gep429, align 8
  store ptr %fld.load430, ptr %var.name1, align 8
  %var.load431 = load i1, ptr %var.is_fwd1, align 1
  %nottmp = xor i1 %var.load431, true
  br i1 %nottmp, label %and.53.then, label %and.53.else

str_gen_check402:                                 ; preds = %m.mem.found
  %arena.cur405 = call ptr @dva_arena_current()
  %tag.valid406 = call i1 @dva_arena_validate_tag(ptr %arena.cur405, i64 %str.tag400)
  br i1 %tag.valid406, label %str_ok403, label %str_stale404

str_ok403:                                        ; preds = %str_stale404, %str_gen_check402, %m.mem.found
  %mk.nlen407 = getelementptr inbounds { i64, ptr }, ptr %fld.load373, i32 0, i32 0
  %mk.nlen408 = load i64, ptr %mk.nlen407, align 8
  %mk.nlen409 = and i64 %mk.nlen408, 281474976710655
  %str.tag410 = lshr i64 %mk.nlen408, 48
  %str.immortal411 = icmp eq i64 %str.tag410, 0
  br i1 %str.immortal411, label %str_ok413, label %str_gen_check412

str_stale404:                                     ; preds = %str_gen_check402
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok403

str_gen_check412:                                 ; preds = %str_ok403
  %arena.cur415 = call ptr @dva_arena_current()
  %tag.valid416 = call i1 @dva_arena_validate_tag(ptr %arena.cur415, i64 %str.tag410)
  br i1 %tag.valid416, label %str_ok413, label %str_stale414

str_ok413:                                        ; preds = %str_stale414, %str_gen_check412, %str_ok403
  %mk.lenseq417 = icmp eq i64 %mk.slen399, %mk.nlen409
  br i1 %mk.lenseq417, label %mk.eq.then418, label %mk.eq.else419

str_stale414:                                     ; preds = %str_gen_check412
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok413

mk.eq.then418:                                    ; preds = %str_ok413
  %mk.sdata421 = getelementptr inbounds { i64, ptr }, ptr %mk.stored396, i32 0, i32 1
  %mk.sdata422 = load ptr, ptr %mk.sdata421, align 8
  %mk.ndata423 = getelementptr inbounds { i64, ptr }, ptr %fld.load373, i32 0, i32 1
  %mk.ndata424 = load ptr, ptr %mk.ndata423, align 8
  %mk.memcmp425 = call i32 @memcmp(ptr %mk.sdata422, ptr %mk.ndata424, i64 %mk.nlen409)
  %mk.cmpeq426 = icmp eq i32 %mk.memcmp425, 0
  br label %mk.eq.merge420

mk.eq.else419:                                    ; preds = %str_ok413
  br label %mk.eq.merge420

mk.eq.merge420:                                   ; preds = %mk.eq.else419, %mk.eq.then418
  %mk.eq427 = phi i1 [ %mk.cmpeq426, %mk.eq.then418 ], [ false, %mk.eq.else419 ]
  br i1 %mk.eq427, label %m.mem.hit, label %m.mem.next

m.mem.hit:                                        ; preds = %mk.eq.merge420
  br label %m.mem.done

and.53.then:                                      ; preds = %m.mem.done
  %var.load432 = load i1, ptr %var.is_gen1, align 1
  %nottmp433 = xor i1 %var.load432, true
  br label %and.53.exit

and.53.else:                                      ; preds = %m.mem.done
  br label %and.53.exit

and.53.exit:                                      ; preds = %and.53.else, %and.53.then
  %and.53.phi = phi i1 [ %nottmp433, %and.53.then ], [ %nottmp, %and.53.else ]
  br i1 %and.53.phi, label %and.54.then, label %and.54.else

and.54.then:                                      ; preds = %and.53.exit
  %var.load434 = load ptr, ptr %var.a1, align 8
  %fld.gep435 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load434, i32 0, i32 2
  %fld.load436 = load i1, ptr %fld.gep435, align 1
  %nottmp437 = xor i1 %fld.load436, true
  br label %and.54.exit

and.54.else:                                      ; preds = %and.53.exit
  br label %and.54.exit

and.54.exit:                                      ; preds = %and.54.else, %and.54.then
  %and.54.phi = phi i1 [ %nottmp437, %and.54.then ], [ %and.53.phi, %and.54.else ]
  br i1 %and.54.phi, label %and.55.then, label %and.55.else

and.55.then:                                      ; preds = %and.54.exit
  %var.load438 = load ptr, ptr %var.a1, align 8
  %fld.gep439 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load438, i32 0, i32 4
  %fld.load440 = load i1, ptr %fld.gep439, align 1
  %nottmp441 = xor i1 %fld.load440, true
  br label %and.55.exit

and.55.else:                                      ; preds = %and.54.exit
  br label %and.55.exit

and.55.exit:                                      ; preds = %and.55.else, %and.55.then
  %and.55.phi = phi i1 [ %nottmp441, %and.55.then ], [ %and.54.phi, %and.55.else ]
  br i1 %and.55.phi, label %and.56.then, label %and.56.else

and.56.then:                                      ; preds = %and.55.exit
  %var.load442 = load ptr, ptr %var.name1, align 8
  %eq.lhs.len443 = getelementptr inbounds { i64, ptr }, ptr %var.load442, i32 0, i32 0
  %eq.lhs.len444 = load i64, ptr %eq.lhs.len443, align 8
  %eq.lhs.len445 = and i64 %eq.lhs.len444, 281474976710655
  %str.tag446 = lshr i64 %eq.lhs.len444, 48
  %str.immortal447 = icmp eq i64 %str.tag446, 0
  br i1 %str.immortal447, label %str_ok449, label %str_gen_check448

and.56.else:                                      ; preds = %and.55.exit
  br label %and.56.exit

and.56.exit:                                      ; preds = %and.56.else, %str.eq.merge465
  %and.56.phi = phi i1 [ %str.neq472, %str.eq.merge465 ], [ %and.55.phi, %and.56.else ]
  br i1 %and.56.phi, label %choice.then473, label %choice.exit474

str_gen_check448:                                 ; preds = %and.56.then
  %arena.cur451 = call ptr @dva_arena_current()
  %tag.valid452 = call i1 @dva_arena_validate_tag(ptr %arena.cur451, i64 %str.tag446)
  br i1 %tag.valid452, label %str_ok449, label %str_stale450

str_ok449:                                        ; preds = %str_stale450, %str_gen_check448, %and.56.then
  %eq.rhs.len453 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len454 = and i64 %eq.rhs.len453, 281474976710655
  %str.tag455 = lshr i64 %eq.rhs.len453, 48
  %str.immortal456 = icmp eq i64 %str.tag455, 0
  br i1 %str.immortal456, label %str_ok458, label %str_gen_check457

str_stale450:                                     ; preds = %str_gen_check448
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok449

str_gen_check457:                                 ; preds = %str_ok449
  %arena.cur460 = call ptr @dva_arena_current()
  %tag.valid461 = call i1 @dva_arena_validate_tag(ptr %arena.cur460, i64 %str.tag455)
  br i1 %tag.valid461, label %str_ok458, label %str_stale459

str_ok458:                                        ; preds = %str_stale459, %str_gen_check457, %str_ok449
  %eq.len462 = icmp eq i64 %eq.lhs.len445, %eq.rhs.len454
  br i1 %eq.len462, label %str.eq.then463, label %str.eq.else464

str_stale459:                                     ; preds = %str_gen_check457
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok458

str.eq.then463:                                   ; preds = %str_ok458
  %eq.lhs.data466 = getelementptr inbounds { i64, ptr }, ptr %var.load442, i32 0, i32 1
  %eq.lhs.data467 = load ptr, ptr %eq.lhs.data466, align 8
  %eq.rhs.data468 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp469 = call i32 @memcmp(ptr %eq.lhs.data467, ptr %eq.rhs.data468, i64 %eq.lhs.len445)
  %eq.cmp.zero470 = icmp eq i32 %eq.memcmp469, 0
  br label %str.eq.merge465

str.eq.else464:                                   ; preds = %str_ok458
  br label %str.eq.merge465

str.eq.merge465:                                  ; preds = %str.eq.else464, %str.eq.then463
  %str.eq.result471 = phi i1 [ %eq.cmp.zero470, %str.eq.then463 ], [ false, %str.eq.else464 ]
  %str.neq472 = xor i1 %str.eq.result471, true
  br label %and.56.exit

choice.then473:                                   ; preds = %and.56.exit
  %var.load475 = load ptr, ptr %var.def_names, align 8
  %var.load476 = load ptr, ptr %var.name1, align 8
  %m.cap477 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 1
  %m.cap478 = load i64, ptr %m.cap477, align 8
  %m.keys479 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 2
  %m.keys480 = load ptr, ptr %m.keys479, align 8
  %m.vals481 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 3
  %m.vals482 = load ptr, ptr %m.vals481, align 8
  %m.states483 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 4
  %m.states484 = load ptr, ptr %m.states483, align 8
  %mk.data485 = getelementptr inbounds { i64, ptr }, ptr %var.load476, i32 0, i32 1
  %mk.data486 = load ptr, ptr %mk.data485, align 8
  %mk.len487 = getelementptr inbounds { i64, ptr }, ptr %var.load476, i32 0, i32 0
  %mk.len488 = load i64, ptr %mk.len487, align 8
  %mk.len489 = and i64 %mk.len488, 281474976710655
  %str.tag490 = lshr i64 %mk.len488, 48
  %str.immortal491 = icmp eq i64 %str.tag490, 0
  br i1 %str.immortal491, label %str_ok493, label %str_gen_check492

choice.exit474:                                   ; preds = %m.done507, %and.56.exit
  br label %choice.exit359

str_gen_check492:                                 ; preds = %choice.then473
  %arena.cur495 = call ptr @dva_arena_current()
  %tag.valid496 = call i1 @dva_arena_validate_tag(ptr %arena.cur495, i64 %str.tag490)
  br i1 %tag.valid496, label %str_ok493, label %str_stale494

str_ok493:                                        ; preds = %str_stale494, %str_gen_check492, %choice.then473
  %hash.str497 = call i64 @dva_hash_string(ptr %mk.data486, i64 %mk.len489)
  %m.capm1498 = sub i64 %m.cap478, 1
  %m.idx0499 = and i64 %hash.str497, %m.capm1498
  br label %m.loop500

str_stale494:                                     ; preds = %str_gen_check492
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok493

m.loop500:                                        ; preds = %m.next505, %str_ok493
  %m.idx508 = phi i64 [ %m.idx0499, %str_ok493 ], [ %m.idx.next555, %m.next505 ]
  %m.tomb509 = phi i64 [ -1, %str_ok493 ], [ %m.next.tomb553, %m.next505 ]
  %m.probe510 = phi i64 [ 0, %str_ok493 ], [ %m.probe.next556, %m.next505 ]
  %m.reached.cap511 = icmp eq i64 %m.probe510, %m.cap478
  %m.state.gep512 = getelementptr i8, ptr %m.states484, i64 %m.idx508
  %m.state513 = load i8, ptr %m.state.gep512, align 1
  %m.is.empty514 = icmp eq i8 %m.state513, 0
  %m.stop515 = or i1 %m.is.empty514, %m.reached.cap511
  br i1 %m.stop515, label %m.empty506, label %m.check.tomb501

m.check.tomb501:                                  ; preds = %m.loop500
  %m.is.tomb516 = icmp eq i8 %m.state513, 2
  br i1 %m.is.tomb516, label %m.tomb502, label %m.found503

m.tomb502:                                        ; preds = %m.check.tomb501
  %m.has.tomb517 = icmp ne i64 %m.tomb509, -1
  %m.tomb.sel518 = select i1 %m.has.tomb517, i64 %m.tomb509, i64 %m.idx508
  br label %m.next505

m.found503:                                       ; preds = %m.check.tomb501
  %m.key.slot519 = getelementptr ptr, ptr %m.keys480, i64 %m.idx508
  %mk.stored520 = load ptr, ptr %m.key.slot519, align 8
  %mk.slen521 = getelementptr inbounds { i64, ptr }, ptr %mk.stored520, i32 0, i32 0
  %mk.slen522 = load i64, ptr %mk.slen521, align 8
  %mk.slen523 = and i64 %mk.slen522, 281474976710655
  %str.tag524 = lshr i64 %mk.slen522, 48
  %str.immortal525 = icmp eq i64 %str.tag524, 0
  br i1 %str.immortal525, label %str_ok527, label %str_gen_check526

m.overwrite504:                                   ; preds = %mk.eq.merge544
  %m.val.slot552 = getelementptr i64, ptr %m.vals482, i64 %m.idx508
  store i64 1, ptr %m.val.slot552, align 8
  br label %m.done507

m.next505:                                        ; preds = %mk.eq.merge544, %m.tomb502
  %m.next.tomb553 = phi i64 [ %m.tomb.sel518, %m.tomb502 ], [ %m.tomb509, %mk.eq.merge544 ]
  %m.idx.add554 = add i64 %m.idx508, 1
  %m.idx.next555 = and i64 %m.idx.add554, %m.capm1498
  %m.probe.next556 = add i64 %m.probe510, 1
  br label %m.loop500

m.empty506:                                       ; preds = %m.loop500
  %m.grow.cnt.p557 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 0
  %m.grow.cnt558 = load i64, ptr %m.grow.cnt.p557, align 8
  %m.grow.tm.p559 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 5
  %m.grow.tm560 = load i64, ptr %m.grow.tm.p559, align 8
  %m.occupied561 = add i64 %m.grow.cnt558, %m.grow.tm560
  %m.c.plus562 = add i64 %m.occupied561, 1
  %m.c.lhs563 = mul i64 %m.c.plus562, 4
  %m.c.rhs564 = mul i64 %m.cap478, 3
  %m.need.grow565 = icmp sgt i64 %m.c.lhs563, %m.c.rhs564
  br i1 %m.need.grow565, label %m.grow566, label %m.ins.slot567

m.done507:                                        ; preds = %m.ins.slot567, %m.done734, %m.overwrite504
  br label %choice.exit474

str_gen_check526:                                 ; preds = %m.found503
  %arena.cur529 = call ptr @dva_arena_current()
  %tag.valid530 = call i1 @dva_arena_validate_tag(ptr %arena.cur529, i64 %str.tag524)
  br i1 %tag.valid530, label %str_ok527, label %str_stale528

str_ok527:                                        ; preds = %str_stale528, %str_gen_check526, %m.found503
  %mk.nlen531 = getelementptr inbounds { i64, ptr }, ptr %var.load476, i32 0, i32 0
  %mk.nlen532 = load i64, ptr %mk.nlen531, align 8
  %mk.nlen533 = and i64 %mk.nlen532, 281474976710655
  %str.tag534 = lshr i64 %mk.nlen532, 48
  %str.immortal535 = icmp eq i64 %str.tag534, 0
  br i1 %str.immortal535, label %str_ok537, label %str_gen_check536

str_stale528:                                     ; preds = %str_gen_check526
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok527

str_gen_check536:                                 ; preds = %str_ok527
  %arena.cur539 = call ptr @dva_arena_current()
  %tag.valid540 = call i1 @dva_arena_validate_tag(ptr %arena.cur539, i64 %str.tag534)
  br i1 %tag.valid540, label %str_ok537, label %str_stale538

str_ok537:                                        ; preds = %str_stale538, %str_gen_check536, %str_ok527
  %mk.lenseq541 = icmp eq i64 %mk.slen523, %mk.nlen533
  br i1 %mk.lenseq541, label %mk.eq.then542, label %mk.eq.else543

str_stale538:                                     ; preds = %str_gen_check536
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok537

mk.eq.then542:                                    ; preds = %str_ok537
  %mk.sdata545 = getelementptr inbounds { i64, ptr }, ptr %mk.stored520, i32 0, i32 1
  %mk.sdata546 = load ptr, ptr %mk.sdata545, align 8
  %mk.ndata547 = getelementptr inbounds { i64, ptr }, ptr %var.load476, i32 0, i32 1
  %mk.ndata548 = load ptr, ptr %mk.ndata547, align 8
  %mk.memcmp549 = call i32 @memcmp(ptr %mk.sdata546, ptr %mk.ndata548, i64 %mk.nlen533)
  %mk.cmpeq550 = icmp eq i32 %mk.memcmp549, 0
  br label %mk.eq.merge544

mk.eq.else543:                                    ; preds = %str_ok537
  br label %mk.eq.merge544

mk.eq.merge544:                                   ; preds = %mk.eq.else543, %mk.eq.then542
  %mk.eq551 = phi i1 [ %mk.cmpeq550, %mk.eq.then542 ], [ false, %mk.eq.else543 ]
  br i1 %mk.eq551, label %m.overwrite504, label %m.next505

m.grow566:                                        ; preds = %m.empty506
  %m.old.cap568 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 1
  %m.old.cap569 = load i64, ptr %m.old.cap568, align 8
  %m.old.keys570 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 2
  %m.old.keys571 = load ptr, ptr %m.old.keys570, align 8
  %m.old.vals572 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 3
  %m.old.vals573 = load ptr, ptr %m.old.vals572, align 8
  %m.old.states574 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 4
  %m.old.states575 = load ptr, ptr %m.old.states574, align 8
  %m.double.cap576 = mul i64 %m.old.cap569, 2
  %m.live.cnt577 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 0
  %m.live.cnt578 = load i64, ptr %m.live.cnt577, align 8
  %m.live.x2579 = mul i64 %m.live.cnt578, 2
  %m.should.double580 = icmp sgt i64 %m.live.x2579, %m.old.cap569
  %m.new.cap581 = select i1 %m.should.double580, i64 %m.double.cap576, i64 %m.old.cap569
  %m.gk.bytes582 = mul i64 %m.new.cap581, 8
  %arena.cur583 = call ptr @dva_arena_current()
  %m.gk584 = call ptr @dva_arena_alloc(ptr %arena.cur583, i64 %m.gk.bytes582)
  %m.gv.bytes585 = mul i64 %m.new.cap581, 8
  %arena.cur586 = call ptr @dva_arena_current()
  %m.gv587 = call ptr @dva_arena_alloc(ptr %arena.cur586, i64 %m.gv.bytes585)
  %arena.cur588 = call ptr @dva_arena_current()
  %m.gs589 = call ptr @dva_arena_alloc(ptr %arena.cur588, i64 %m.new.cap581)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs589, i8 0, i64 %m.new.cap581, i1 false)
  %m.cap.gep590 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 1
  store i64 %m.new.cap581, ptr %m.cap.gep590, align 8
  %m.keys.gep591 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 2
  store ptr %m.gk584, ptr %m.keys.gep591, align 8
  %m.vals.gep592 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 3
  store ptr %m.gv587, ptr %m.vals.gep592, align 8
  %m.states.gep593 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 4
  store ptr %m.gs589, ptr %m.states.gep593, align 8
  %m.count.gep594 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 0
  store i64 0, ptr %m.count.gep594, align 8
  %m.tombs.gep595 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep595, align 8
  br label %m.re.loop596

m.ins.slot567:                                    ; preds = %m.empty506
  %m.use.tomb797 = icmp ne i64 %m.tomb509, -1
  %m.ins.idx798 = select i1 %m.use.tomb797, i64 %m.tomb509, i64 %m.idx508
  %m.key.slot799 = getelementptr ptr, ptr %m.keys480, i64 %m.ins.idx798
  store ptr %var.load476, ptr %m.key.slot799, align 8
  %m.val.slot800 = getelementptr i64, ptr %m.vals482, i64 %m.ins.idx798
  store i64 1, ptr %m.val.slot800, align 8
  %m.ins.state.slot801 = getelementptr i8, ptr %m.states484, i64 %m.ins.idx798
  store i8 1, ptr %m.ins.state.slot801, align 1
  %m.count802 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 0
  %m.count803 = load i64, ptr %m.count802, align 8
  %m.count.next804 = add i64 %m.count803, 1
  %m.count.gep805 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 0
  store i64 %m.count.next804, ptr %m.count.gep805, align 8
  %m.ins.tombs.p806 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 5
  %m.ins.tombs807 = load i64, ptr %m.ins.tombs.p806, align 8
  %m.tomb.dec808 = select i1 %m.use.tomb797, i64 1, i64 0
  %m.ins.tombs.next809 = sub i64 %m.ins.tombs807, %m.tomb.dec808
  store i64 %m.ins.tombs.next809, ptr %m.ins.tombs.p806, align 8
  br label %m.done507

m.re.loop596:                                     ; preds = %m.re.cont598, %m.grow566
  %m.re.i600 = phi i64 [ 0, %m.grow566 ], [ %m.re.i.next703, %m.re.cont598 ]
  %m.re.lt601 = icmp slt i64 %m.re.i600, %m.old.cap569
  br i1 %m.re.lt601, label %m.re.body597, label %m.re.done599

m.re.body597:                                     ; preds = %m.re.loop596
  %m.re.state.gep602 = getelementptr i8, ptr %m.old.states575, i64 %m.re.i600
  %m.re.state603 = load i8, ptr %m.re.state.gep602, align 1
  %m.re.occ604 = icmp eq i8 %m.re.state603, 1
  br i1 %m.re.occ604, label %m.re.ins605, label %m.re.cont598

m.re.cont598:                                     ; preds = %m.done640, %m.re.body597
  %m.re.i.next703 = add i64 %m.re.i600, 1
  br label %m.re.loop596

m.re.done599:                                     ; preds = %m.re.loop596
  %m.cap704 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 1
  %m.cap705 = load i64, ptr %m.cap704, align 8
  %m.keys706 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 2
  %m.keys707 = load ptr, ptr %m.keys706, align 8
  %m.vals708 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 3
  %m.vals709 = load ptr, ptr %m.vals708, align 8
  %m.states710 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 4
  %m.states711 = load ptr, ptr %m.states710, align 8
  %mk.data712 = getelementptr inbounds { i64, ptr }, ptr %var.load476, i32 0, i32 1
  %mk.data713 = load ptr, ptr %mk.data712, align 8
  %mk.len714 = getelementptr inbounds { i64, ptr }, ptr %var.load476, i32 0, i32 0
  %mk.len715 = load i64, ptr %mk.len714, align 8
  %mk.len716 = and i64 %mk.len715, 281474976710655
  %str.tag717 = lshr i64 %mk.len715, 48
  %str.immortal718 = icmp eq i64 %str.tag717, 0
  br i1 %str.immortal718, label %str_ok720, label %str_gen_check719

m.re.ins605:                                      ; preds = %m.re.body597
  %m.re.key.slot606 = getelementptr ptr, ptr %m.old.keys571, i64 %m.re.i600
  %m.re.val.slot607 = getelementptr i64, ptr %m.old.vals573, i64 %m.re.i600
  %m.re.key608 = load ptr, ptr %m.re.key.slot606, align 8
  %m.re.val609 = load i64, ptr %m.re.val.slot607, align 8
  %m.cap610 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 1
  %m.cap611 = load i64, ptr %m.cap610, align 8
  %m.keys612 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 2
  %m.keys613 = load ptr, ptr %m.keys612, align 8
  %m.vals614 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 3
  %m.vals615 = load ptr, ptr %m.vals614, align 8
  %m.states616 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 4
  %m.states617 = load ptr, ptr %m.states616, align 8
  %mk.data618 = getelementptr inbounds { i64, ptr }, ptr %m.re.key608, i32 0, i32 1
  %mk.data619 = load ptr, ptr %mk.data618, align 8
  %mk.len620 = getelementptr inbounds { i64, ptr }, ptr %m.re.key608, i32 0, i32 0
  %mk.len621 = load i64, ptr %mk.len620, align 8
  %mk.len622 = and i64 %mk.len621, 281474976710655
  %str.tag623 = lshr i64 %mk.len621, 48
  %str.immortal624 = icmp eq i64 %str.tag623, 0
  br i1 %str.immortal624, label %str_ok626, label %str_gen_check625

str_gen_check625:                                 ; preds = %m.re.ins605
  %arena.cur628 = call ptr @dva_arena_current()
  %tag.valid629 = call i1 @dva_arena_validate_tag(ptr %arena.cur628, i64 %str.tag623)
  br i1 %tag.valid629, label %str_ok626, label %str_stale627

str_ok626:                                        ; preds = %str_stale627, %str_gen_check625, %m.re.ins605
  %hash.str630 = call i64 @dva_hash_string(ptr %mk.data619, i64 %mk.len622)
  %m.capm1631 = sub i64 %m.cap611, 1
  %m.idx0632 = and i64 %hash.str630, %m.capm1631
  br label %m.loop633

str_stale627:                                     ; preds = %str_gen_check625
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok626

m.loop633:                                        ; preds = %m.next638, %str_ok626
  %m.idx641 = phi i64 [ %m.idx0632, %str_ok626 ], [ %m.idx.next688, %m.next638 ]
  %m.tomb642 = phi i64 [ -1, %str_ok626 ], [ %m.next.tomb686, %m.next638 ]
  %m.probe643 = phi i64 [ 0, %str_ok626 ], [ %m.probe.next689, %m.next638 ]
  %m.reached.cap644 = icmp eq i64 %m.probe643, %m.cap611
  %m.state.gep645 = getelementptr i8, ptr %m.states617, i64 %m.idx641
  %m.state646 = load i8, ptr %m.state.gep645, align 1
  %m.is.empty647 = icmp eq i8 %m.state646, 0
  %m.stop648 = or i1 %m.is.empty647, %m.reached.cap644
  br i1 %m.stop648, label %m.empty639, label %m.check.tomb634

m.check.tomb634:                                  ; preds = %m.loop633
  %m.is.tomb649 = icmp eq i8 %m.state646, 2
  br i1 %m.is.tomb649, label %m.tomb635, label %m.found636

m.tomb635:                                        ; preds = %m.check.tomb634
  %m.has.tomb650 = icmp ne i64 %m.tomb642, -1
  %m.tomb.sel651 = select i1 %m.has.tomb650, i64 %m.tomb642, i64 %m.idx641
  br label %m.next638

m.found636:                                       ; preds = %m.check.tomb634
  %m.key.slot652 = getelementptr ptr, ptr %m.keys613, i64 %m.idx641
  %mk.stored653 = load ptr, ptr %m.key.slot652, align 8
  %mk.slen654 = getelementptr inbounds { i64, ptr }, ptr %mk.stored653, i32 0, i32 0
  %mk.slen655 = load i64, ptr %mk.slen654, align 8
  %mk.slen656 = and i64 %mk.slen655, 281474976710655
  %str.tag657 = lshr i64 %mk.slen655, 48
  %str.immortal658 = icmp eq i64 %str.tag657, 0
  br i1 %str.immortal658, label %str_ok660, label %str_gen_check659

m.overwrite637:                                   ; preds = %mk.eq.merge677
  %m.val.slot685 = getelementptr i64, ptr %m.vals615, i64 %m.idx641
  store i64 %m.re.val609, ptr %m.val.slot685, align 8
  br label %m.done640

m.next638:                                        ; preds = %mk.eq.merge677, %m.tomb635
  %m.next.tomb686 = phi i64 [ %m.tomb.sel651, %m.tomb635 ], [ %m.tomb642, %mk.eq.merge677 ]
  %m.idx.add687 = add i64 %m.idx641, 1
  %m.idx.next688 = and i64 %m.idx.add687, %m.capm1631
  %m.probe.next689 = add i64 %m.probe643, 1
  br label %m.loop633

m.empty639:                                       ; preds = %m.loop633
  %m.use.tomb690 = icmp ne i64 %m.tomb642, -1
  %m.ins.idx691 = select i1 %m.use.tomb690, i64 %m.tomb642, i64 %m.idx641
  %m.key.slot692 = getelementptr ptr, ptr %m.keys613, i64 %m.ins.idx691
  store ptr %m.re.key608, ptr %m.key.slot692, align 8
  %m.val.slot693 = getelementptr i64, ptr %m.vals615, i64 %m.ins.idx691
  store i64 %m.re.val609, ptr %m.val.slot693, align 8
  %m.ins.state.slot694 = getelementptr i8, ptr %m.states617, i64 %m.ins.idx691
  store i8 1, ptr %m.ins.state.slot694, align 1
  %m.count695 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 0
  %m.count696 = load i64, ptr %m.count695, align 8
  %m.count.next697 = add i64 %m.count696, 1
  %m.count.gep698 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 0
  store i64 %m.count.next697, ptr %m.count.gep698, align 8
  %m.ins.tombs.p699 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 5
  %m.ins.tombs700 = load i64, ptr %m.ins.tombs.p699, align 8
  %m.tomb.dec701 = select i1 %m.use.tomb690, i64 1, i64 0
  %m.ins.tombs.next702 = sub i64 %m.ins.tombs700, %m.tomb.dec701
  store i64 %m.ins.tombs.next702, ptr %m.ins.tombs.p699, align 8
  br label %m.done640

m.done640:                                        ; preds = %m.empty639, %m.overwrite637
  br label %m.re.cont598

str_gen_check659:                                 ; preds = %m.found636
  %arena.cur662 = call ptr @dva_arena_current()
  %tag.valid663 = call i1 @dva_arena_validate_tag(ptr %arena.cur662, i64 %str.tag657)
  br i1 %tag.valid663, label %str_ok660, label %str_stale661

str_ok660:                                        ; preds = %str_stale661, %str_gen_check659, %m.found636
  %mk.nlen664 = getelementptr inbounds { i64, ptr }, ptr %m.re.key608, i32 0, i32 0
  %mk.nlen665 = load i64, ptr %mk.nlen664, align 8
  %mk.nlen666 = and i64 %mk.nlen665, 281474976710655
  %str.tag667 = lshr i64 %mk.nlen665, 48
  %str.immortal668 = icmp eq i64 %str.tag667, 0
  br i1 %str.immortal668, label %str_ok670, label %str_gen_check669

str_stale661:                                     ; preds = %str_gen_check659
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok660

str_gen_check669:                                 ; preds = %str_ok660
  %arena.cur672 = call ptr @dva_arena_current()
  %tag.valid673 = call i1 @dva_arena_validate_tag(ptr %arena.cur672, i64 %str.tag667)
  br i1 %tag.valid673, label %str_ok670, label %str_stale671

str_ok670:                                        ; preds = %str_stale671, %str_gen_check669, %str_ok660
  %mk.lenseq674 = icmp eq i64 %mk.slen656, %mk.nlen666
  br i1 %mk.lenseq674, label %mk.eq.then675, label %mk.eq.else676

str_stale671:                                     ; preds = %str_gen_check669
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok670

mk.eq.then675:                                    ; preds = %str_ok670
  %mk.sdata678 = getelementptr inbounds { i64, ptr }, ptr %mk.stored653, i32 0, i32 1
  %mk.sdata679 = load ptr, ptr %mk.sdata678, align 8
  %mk.ndata680 = getelementptr inbounds { i64, ptr }, ptr %m.re.key608, i32 0, i32 1
  %mk.ndata681 = load ptr, ptr %mk.ndata680, align 8
  %mk.memcmp682 = call i32 @memcmp(ptr %mk.sdata679, ptr %mk.ndata681, i64 %mk.nlen666)
  %mk.cmpeq683 = icmp eq i32 %mk.memcmp682, 0
  br label %mk.eq.merge677

mk.eq.else676:                                    ; preds = %str_ok670
  br label %mk.eq.merge677

mk.eq.merge677:                                   ; preds = %mk.eq.else676, %mk.eq.then675
  %mk.eq684 = phi i1 [ %mk.cmpeq683, %mk.eq.then675 ], [ false, %mk.eq.else676 ]
  br i1 %mk.eq684, label %m.overwrite637, label %m.next638

str_gen_check719:                                 ; preds = %m.re.done599
  %arena.cur722 = call ptr @dva_arena_current()
  %tag.valid723 = call i1 @dva_arena_validate_tag(ptr %arena.cur722, i64 %str.tag717)
  br i1 %tag.valid723, label %str_ok720, label %str_stale721

str_ok720:                                        ; preds = %str_stale721, %str_gen_check719, %m.re.done599
  %hash.str724 = call i64 @dva_hash_string(ptr %mk.data713, i64 %mk.len716)
  %m.capm1725 = sub i64 %m.cap705, 1
  %m.idx0726 = and i64 %hash.str724, %m.capm1725
  br label %m.loop727

str_stale721:                                     ; preds = %str_gen_check719
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok720

m.loop727:                                        ; preds = %m.next732, %str_ok720
  %m.idx735 = phi i64 [ %m.idx0726, %str_ok720 ], [ %m.idx.next782, %m.next732 ]
  %m.tomb736 = phi i64 [ -1, %str_ok720 ], [ %m.next.tomb780, %m.next732 ]
  %m.probe737 = phi i64 [ 0, %str_ok720 ], [ %m.probe.next783, %m.next732 ]
  %m.reached.cap738 = icmp eq i64 %m.probe737, %m.cap705
  %m.state.gep739 = getelementptr i8, ptr %m.states711, i64 %m.idx735
  %m.state740 = load i8, ptr %m.state.gep739, align 1
  %m.is.empty741 = icmp eq i8 %m.state740, 0
  %m.stop742 = or i1 %m.is.empty741, %m.reached.cap738
  br i1 %m.stop742, label %m.empty733, label %m.check.tomb728

m.check.tomb728:                                  ; preds = %m.loop727
  %m.is.tomb743 = icmp eq i8 %m.state740, 2
  br i1 %m.is.tomb743, label %m.tomb729, label %m.found730

m.tomb729:                                        ; preds = %m.check.tomb728
  %m.has.tomb744 = icmp ne i64 %m.tomb736, -1
  %m.tomb.sel745 = select i1 %m.has.tomb744, i64 %m.tomb736, i64 %m.idx735
  br label %m.next732

m.found730:                                       ; preds = %m.check.tomb728
  %m.key.slot746 = getelementptr ptr, ptr %m.keys707, i64 %m.idx735
  %mk.stored747 = load ptr, ptr %m.key.slot746, align 8
  %mk.slen748 = getelementptr inbounds { i64, ptr }, ptr %mk.stored747, i32 0, i32 0
  %mk.slen749 = load i64, ptr %mk.slen748, align 8
  %mk.slen750 = and i64 %mk.slen749, 281474976710655
  %str.tag751 = lshr i64 %mk.slen749, 48
  %str.immortal752 = icmp eq i64 %str.tag751, 0
  br i1 %str.immortal752, label %str_ok754, label %str_gen_check753

m.overwrite731:                                   ; preds = %mk.eq.merge771
  %m.val.slot779 = getelementptr i64, ptr %m.vals709, i64 %m.idx735
  store i64 1, ptr %m.val.slot779, align 8
  br label %m.done734

m.next732:                                        ; preds = %mk.eq.merge771, %m.tomb729
  %m.next.tomb780 = phi i64 [ %m.tomb.sel745, %m.tomb729 ], [ %m.tomb736, %mk.eq.merge771 ]
  %m.idx.add781 = add i64 %m.idx735, 1
  %m.idx.next782 = and i64 %m.idx.add781, %m.capm1725
  %m.probe.next783 = add i64 %m.probe737, 1
  br label %m.loop727

m.empty733:                                       ; preds = %m.loop727
  %m.use.tomb784 = icmp ne i64 %m.tomb736, -1
  %m.ins.idx785 = select i1 %m.use.tomb784, i64 %m.tomb736, i64 %m.idx735
  %m.key.slot786 = getelementptr ptr, ptr %m.keys707, i64 %m.ins.idx785
  store ptr %var.load476, ptr %m.key.slot786, align 8
  %m.val.slot787 = getelementptr i64, ptr %m.vals709, i64 %m.ins.idx785
  store i64 1, ptr %m.val.slot787, align 8
  %m.ins.state.slot788 = getelementptr i8, ptr %m.states711, i64 %m.ins.idx785
  store i8 1, ptr %m.ins.state.slot788, align 1
  %m.count789 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 0
  %m.count790 = load i64, ptr %m.count789, align 8
  %m.count.next791 = add i64 %m.count790, 1
  %m.count.gep792 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 0
  store i64 %m.count.next791, ptr %m.count.gep792, align 8
  %m.ins.tombs.p793 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load475, i32 0, i32 5
  %m.ins.tombs794 = load i64, ptr %m.ins.tombs.p793, align 8
  %m.tomb.dec795 = select i1 %m.use.tomb784, i64 1, i64 0
  %m.ins.tombs.next796 = sub i64 %m.ins.tombs794, %m.tomb.dec795
  store i64 %m.ins.tombs.next796, ptr %m.ins.tombs.p793, align 8
  br label %m.done734

m.done734:                                        ; preds = %m.empty733, %m.overwrite731
  br label %m.done507

str_gen_check753:                                 ; preds = %m.found730
  %arena.cur756 = call ptr @dva_arena_current()
  %tag.valid757 = call i1 @dva_arena_validate_tag(ptr %arena.cur756, i64 %str.tag751)
  br i1 %tag.valid757, label %str_ok754, label %str_stale755

str_ok754:                                        ; preds = %str_stale755, %str_gen_check753, %m.found730
  %mk.nlen758 = getelementptr inbounds { i64, ptr }, ptr %var.load476, i32 0, i32 0
  %mk.nlen759 = load i64, ptr %mk.nlen758, align 8
  %mk.nlen760 = and i64 %mk.nlen759, 281474976710655
  %str.tag761 = lshr i64 %mk.nlen759, 48
  %str.immortal762 = icmp eq i64 %str.tag761, 0
  br i1 %str.immortal762, label %str_ok764, label %str_gen_check763

str_stale755:                                     ; preds = %str_gen_check753
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok754

str_gen_check763:                                 ; preds = %str_ok754
  %arena.cur766 = call ptr @dva_arena_current()
  %tag.valid767 = call i1 @dva_arena_validate_tag(ptr %arena.cur766, i64 %str.tag761)
  br i1 %tag.valid767, label %str_ok764, label %str_stale765

str_ok764:                                        ; preds = %str_stale765, %str_gen_check763, %str_ok754
  %mk.lenseq768 = icmp eq i64 %mk.slen750, %mk.nlen760
  br i1 %mk.lenseq768, label %mk.eq.then769, label %mk.eq.else770

str_stale765:                                     ; preds = %str_gen_check763
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok764

mk.eq.then769:                                    ; preds = %str_ok764
  %mk.sdata772 = getelementptr inbounds { i64, ptr }, ptr %mk.stored747, i32 0, i32 1
  %mk.sdata773 = load ptr, ptr %mk.sdata772, align 8
  %mk.ndata774 = getelementptr inbounds { i64, ptr }, ptr %var.load476, i32 0, i32 1
  %mk.ndata775 = load ptr, ptr %mk.ndata774, align 8
  %mk.memcmp776 = call i32 @memcmp(ptr %mk.sdata773, ptr %mk.ndata775, i64 %mk.nlen760)
  %mk.cmpeq777 = icmp eq i32 %mk.memcmp776, 0
  br label %mk.eq.merge771

mk.eq.else770:                                    ; preds = %str_ok764
  br label %mk.eq.merge771

mk.eq.merge771:                                   ; preds = %mk.eq.else770, %mk.eq.then769
  %mk.eq778 = phi i1 [ %mk.cmpeq777, %mk.eq.then769 ], [ false, %mk.eq.else770 ]
  br i1 %mk.eq778, label %m.overwrite731, label %m.next732

a.create815:                                      ; preds = %loop.exit.52
  %arena.cur817 = call ptr @dva_arena_current()
  %a.create818 = call ptr @dva_arena_alloc(ptr %arena.cur817, i64 24)
  %arena.cur819 = call ptr @dva_arena_current()
  %a.buf820 = call ptr @dva_arena_alloc(ptr %arena.cur819, i64 128)
  %a.len.gep821 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create818, i32 0, i32 0
  store i64 0, ptr %a.len.gep821, align 8
  %a.data.gep822 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create818, i32 0, i32 1
  store ptr %a.buf820, ptr %a.data.gep822, align 8
  %a.cap.gep823 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create818, i32 0, i32 2
  store i64 16, ptr %a.cap.gep823, align 8
  store ptr %a.create818, ptr %var.stmts, align 8
  br label %a.after816

a.after816:                                       ; preds = %a.create815, %loop.exit.52
  %a.load2824 = load ptr, ptr %var.stmts, align 8
  %arr.cycle.len825 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2824, i32 0, i32 0
  %arr.cycle.len826 = load i64, ptr %arr.cycle.len825, align 8
  %arr.cycle.data827 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2824, i32 0, i32 1
  %arr.cycle.data828 = load ptr, ptr %arr.cycle.data827, align 8
  store i64 0, ptr %loop.idx.57, align 8
  store i64 0, ptr %var.j, align 8
  br label %loop.header.57

loop.header.57:                                   ; preds = %loop.latch.57, %a.after816
  %counter.load829 = load i64, ptr %loop.idx.57, align 8
  %loop.cond830 = icmp slt i64 %counter.load829, %arr.cycle.len826
  br i1 %loop.cond830, label %loop.body.57, label %loop.exit.nat.57

loop.body.57:                                     ; preds = %loop.header.57
  %loop.rel.i831 = sub i64 %counter.load829, 0
  store i64 1, ptr %loop.step.57, align 8
  %arr.elem.gep832 = getelementptr i64, ptr %arr.cycle.data828, i64 %counter.load829
  %arr.elem.raw833 = load i64, ptr %arr.elem.gep832, align 8
  %slot.i2p834 = inttoptr i64 %arr.elem.raw833 to ptr
  store i64 %loop.rel.i831, ptr %var._i835, align 8
  store ptr %slot.i2p834, ptr %var._836, align 8
  store ptr %slot.i2p834, ptr %var.st2, align 8
  store i64 %loop.rel.i831, ptr %var.j, align 8
  %var.load837 = load ptr, ptr %var.st2, align 8
  %tag.gep841 = getelementptr inbounds { i64, ptr }, ptr %var.load837, i32 0, i32 0
  %tag.id842 = load i64, ptr %tag.gep841, align 8
  %tag.match843 = icmp eq i64 %tag.id842, 6
  br i1 %tag.match843, label %choice.case839, label %choice.next840

loop.exit.nat.57:                                 ; preds = %loop.header.57
  %loop.rel.end = sub i64 %counter.load829, 0
  store i64 %loop.rel.end, ptr %var.j, align 8
  br label %loop.exit.57

loop.latch.57:                                    ; preds = %choice.exit838
  %step.val1569 = load i64, ptr %loop.step.57, align 8
  %loop.next1570 = add i64 %counter.load829, %step.val1569
  store i64 %loop.next1570, ptr %loop.idx.57, align 8
  br label %loop.header.57

loop.exit.57:                                     ; preds = %loop.exit.nat.57
  %var.load1571 = load ptr, ptr %var.graph, align 8
  ret ptr %var.load1571

choice.exit838:                                   ; preds = %choice.next840, %choice.exit973
  br label %loop.latch.57

choice.case839:                                   ; preds = %loop.body.57
  %pay.gep844 = getelementptr inbounds { i64, ptr }, ptr %var.load837, i32 0, i32 1
  %payload.ptr845 = load ptr, ptr %pay.gep844, align 8
  store ptr %payload.ptr845, ptr %var._846, align 8
  store ptr %payload.ptr845, ptr %var.a2, align 8
  %var.load847 = load ptr, ptr %var.a2, align 8
  %call.res848 = call i1 @"dep_graph::is_fwd_assign"(ptr %var.load847)
  store i1 %call.res848, ptr %var.is_fwd2, align 1
  %var.load849 = load ptr, ptr %var.gen_names, align 8
  %var.load850 = load ptr, ptr %var.a2, align 8
  %fld.gep851 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load850, i32 0, i32 0
  %fld.load852 = load ptr, ptr %fld.gep851, align 8
  %m.cap853 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load849, i32 0, i32 1
  %m.cap854 = load i64, ptr %m.cap853, align 8
  %m.keys855 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load849, i32 0, i32 2
  %m.keys856 = load ptr, ptr %m.keys855, align 8
  %m.states857 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load849, i32 0, i32 4
  %m.states858 = load ptr, ptr %m.states857, align 8
  %mk.data859 = getelementptr inbounds { i64, ptr }, ptr %fld.load852, i32 0, i32 1
  %mk.data860 = load ptr, ptr %mk.data859, align 8
  %mk.len861 = getelementptr inbounds { i64, ptr }, ptr %fld.load852, i32 0, i32 0
  %mk.len862 = load i64, ptr %mk.len861, align 8
  %mk.len863 = and i64 %mk.len862, 281474976710655
  %str.tag864 = lshr i64 %mk.len862, 48
  %str.immortal865 = icmp eq i64 %str.tag864, 0
  br i1 %str.immortal865, label %str_ok867, label %str_gen_check866

choice.next840:                                   ; preds = %loop.body.57
  br label %choice.exit838

str_gen_check866:                                 ; preds = %choice.case839
  %arena.cur869 = call ptr @dva_arena_current()
  %tag.valid870 = call i1 @dva_arena_validate_tag(ptr %arena.cur869, i64 %str.tag864)
  br i1 %tag.valid870, label %str_ok867, label %str_stale868

str_ok867:                                        ; preds = %str_stale868, %str_gen_check866, %choice.case839
  %hash.str871 = call i64 @dva_hash_string(ptr %mk.data860, i64 %mk.len863)
  %m.capm1872 = sub i64 %m.cap854, 1
  %m.idx0873 = and i64 %hash.str871, %m.capm1872
  br label %m.mem.loop874

str_stale868:                                     ; preds = %str_gen_check866
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok867

m.mem.loop874:                                    ; preds = %m.mem.next877, %str_ok867
  %m.mem.idx880 = phi i64 [ %m.idx0873, %str_ok867 ], [ %m.mem.idx.next923, %m.mem.next877 ]
  %m.mem.probe881 = phi i64 [ 0, %str_ok867 ], [ %m.mem.probe.next924, %m.mem.next877 ]
  %m.mem.reached882 = icmp eq i64 %m.mem.probe881, %m.cap854
  %m.mem.state.gep883 = getelementptr i8, ptr %m.states858, i64 %m.mem.idx880
  %m.mem.state884 = load i8, ptr %m.mem.state.gep883, align 1
  %m.mem.is.empty885 = icmp eq i8 %m.mem.state884, 0
  %m.mem.stop886 = or i1 %m.mem.is.empty885, %m.mem.reached882
  br i1 %m.mem.stop886, label %m.mem.miss878, label %m.mem.probe875

m.mem.probe875:                                   ; preds = %m.mem.loop874
  %m.mem.is.tomb887 = icmp eq i8 %m.mem.state884, 2
  br i1 %m.mem.is.tomb887, label %m.mem.next877, label %m.mem.found876

m.mem.found876:                                   ; preds = %m.mem.probe875
  %m.mem.key.slot888 = getelementptr ptr, ptr %m.keys856, i64 %m.mem.idx880
  %mk.stored889 = load ptr, ptr %m.mem.key.slot888, align 8
  %mk.slen890 = getelementptr inbounds { i64, ptr }, ptr %mk.stored889, i32 0, i32 0
  %mk.slen891 = load i64, ptr %mk.slen890, align 8
  %mk.slen892 = and i64 %mk.slen891, 281474976710655
  %str.tag893 = lshr i64 %mk.slen891, 48
  %str.immortal894 = icmp eq i64 %str.tag893, 0
  br i1 %str.immortal894, label %str_ok896, label %str_gen_check895

m.mem.next877:                                    ; preds = %mk.eq.merge913, %m.mem.probe875
  %m.mem.idx.add922 = add i64 %m.mem.idx880, 1
  %m.mem.idx.next923 = and i64 %m.mem.idx.add922, %m.capm1872
  %m.mem.probe.next924 = add i64 %m.mem.probe881, 1
  br label %m.mem.loop874

m.mem.miss878:                                    ; preds = %m.mem.loop874
  br label %m.mem.done879

m.mem.done879:                                    ; preds = %m.mem.miss878, %m.mem.hit921
  %m.mem.res925 = phi i1 [ true, %m.mem.hit921 ], [ false, %m.mem.miss878 ]
  store i1 %m.mem.res925, ptr %var.is_gen2, align 1
  %var.load926 = load ptr, ptr %var.a2, align 8
  %fld.gep927 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load926, i32 0, i32 0
  %fld.load928 = load ptr, ptr %fld.gep927, align 8
  store ptr %fld.load928, ptr %var.name2, align 8
  %var.load929 = load i1, ptr %var.is_fwd2, align 1
  %nottmp930 = xor i1 %var.load929, true
  br i1 %nottmp930, label %and.58.then, label %and.58.else

str_gen_check895:                                 ; preds = %m.mem.found876
  %arena.cur898 = call ptr @dva_arena_current()
  %tag.valid899 = call i1 @dva_arena_validate_tag(ptr %arena.cur898, i64 %str.tag893)
  br i1 %tag.valid899, label %str_ok896, label %str_stale897

str_ok896:                                        ; preds = %str_stale897, %str_gen_check895, %m.mem.found876
  %mk.nlen900 = getelementptr inbounds { i64, ptr }, ptr %fld.load852, i32 0, i32 0
  %mk.nlen901 = load i64, ptr %mk.nlen900, align 8
  %mk.nlen902 = and i64 %mk.nlen901, 281474976710655
  %str.tag903 = lshr i64 %mk.nlen901, 48
  %str.immortal904 = icmp eq i64 %str.tag903, 0
  br i1 %str.immortal904, label %str_ok906, label %str_gen_check905

str_stale897:                                     ; preds = %str_gen_check895
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok896

str_gen_check905:                                 ; preds = %str_ok896
  %arena.cur908 = call ptr @dva_arena_current()
  %tag.valid909 = call i1 @dva_arena_validate_tag(ptr %arena.cur908, i64 %str.tag903)
  br i1 %tag.valid909, label %str_ok906, label %str_stale907

str_ok906:                                        ; preds = %str_stale907, %str_gen_check905, %str_ok896
  %mk.lenseq910 = icmp eq i64 %mk.slen892, %mk.nlen902
  br i1 %mk.lenseq910, label %mk.eq.then911, label %mk.eq.else912

str_stale907:                                     ; preds = %str_gen_check905
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok906

mk.eq.then911:                                    ; preds = %str_ok906
  %mk.sdata914 = getelementptr inbounds { i64, ptr }, ptr %mk.stored889, i32 0, i32 1
  %mk.sdata915 = load ptr, ptr %mk.sdata914, align 8
  %mk.ndata916 = getelementptr inbounds { i64, ptr }, ptr %fld.load852, i32 0, i32 1
  %mk.ndata917 = load ptr, ptr %mk.ndata916, align 8
  %mk.memcmp918 = call i32 @memcmp(ptr %mk.sdata915, ptr %mk.ndata917, i64 %mk.nlen902)
  %mk.cmpeq919 = icmp eq i32 %mk.memcmp918, 0
  br label %mk.eq.merge913

mk.eq.else912:                                    ; preds = %str_ok906
  br label %mk.eq.merge913

mk.eq.merge913:                                   ; preds = %mk.eq.else912, %mk.eq.then911
  %mk.eq920 = phi i1 [ %mk.cmpeq919, %mk.eq.then911 ], [ false, %mk.eq.else912 ]
  br i1 %mk.eq920, label %m.mem.hit921, label %m.mem.next877

m.mem.hit921:                                     ; preds = %mk.eq.merge913
  br label %m.mem.done879

and.58.then:                                      ; preds = %m.mem.done879
  %var.load931 = load i1, ptr %var.is_gen2, align 1
  %nottmp932 = xor i1 %var.load931, true
  br label %and.58.exit

and.58.else:                                      ; preds = %m.mem.done879
  br label %and.58.exit

and.58.exit:                                      ; preds = %and.58.else, %and.58.then
  %and.58.phi = phi i1 [ %nottmp932, %and.58.then ], [ %nottmp930, %and.58.else ]
  br i1 %and.58.phi, label %and.59.then, label %and.59.else

and.59.then:                                      ; preds = %and.58.exit
  %var.load933 = load ptr, ptr %var.a2, align 8
  %fld.gep934 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load933, i32 0, i32 2
  %fld.load935 = load i1, ptr %fld.gep934, align 1
  %nottmp936 = xor i1 %fld.load935, true
  br label %and.59.exit

and.59.else:                                      ; preds = %and.58.exit
  br label %and.59.exit

and.59.exit:                                      ; preds = %and.59.else, %and.59.then
  %and.59.phi = phi i1 [ %nottmp936, %and.59.then ], [ %and.58.phi, %and.59.else ]
  br i1 %and.59.phi, label %and.60.then, label %and.60.else

and.60.then:                                      ; preds = %and.59.exit
  %var.load937 = load ptr, ptr %var.a2, align 8
  %fld.gep938 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load937, i32 0, i32 4
  %fld.load939 = load i1, ptr %fld.gep938, align 1
  %nottmp940 = xor i1 %fld.load939, true
  br label %and.60.exit

and.60.else:                                      ; preds = %and.59.exit
  br label %and.60.exit

and.60.exit:                                      ; preds = %and.60.else, %and.60.then
  %and.60.phi = phi i1 [ %nottmp940, %and.60.then ], [ %and.59.phi, %and.60.else ]
  br i1 %and.60.phi, label %and.61.then, label %and.61.else

and.61.then:                                      ; preds = %and.60.exit
  %var.load941 = load ptr, ptr %var.name2, align 8
  %eq.lhs.len942 = getelementptr inbounds { i64, ptr }, ptr %var.load941, i32 0, i32 0
  %eq.lhs.len943 = load i64, ptr %eq.lhs.len942, align 8
  %eq.lhs.len944 = and i64 %eq.lhs.len943, 281474976710655
  %str.tag945 = lshr i64 %eq.lhs.len943, 48
  %str.immortal946 = icmp eq i64 %str.tag945, 0
  br i1 %str.immortal946, label %str_ok948, label %str_gen_check947

and.61.else:                                      ; preds = %and.60.exit
  br label %and.61.exit

and.61.exit:                                      ; preds = %and.61.else, %str.eq.merge964
  %and.61.phi = phi i1 [ %str.neq971, %str.eq.merge964 ], [ %and.60.phi, %and.61.else ]
  br i1 %and.61.phi, label %choice.then972, label %choice.exit973

str_gen_check947:                                 ; preds = %and.61.then
  %arena.cur950 = call ptr @dva_arena_current()
  %tag.valid951 = call i1 @dva_arena_validate_tag(ptr %arena.cur950, i64 %str.tag945)
  br i1 %tag.valid951, label %str_ok948, label %str_stale949

str_ok948:                                        ; preds = %str_stale949, %str_gen_check947, %and.61.then
  %eq.rhs.len952 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len953 = and i64 %eq.rhs.len952, 281474976710655
  %str.tag954 = lshr i64 %eq.rhs.len952, 48
  %str.immortal955 = icmp eq i64 %str.tag954, 0
  br i1 %str.immortal955, label %str_ok957, label %str_gen_check956

str_stale949:                                     ; preds = %str_gen_check947
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok948

str_gen_check956:                                 ; preds = %str_ok948
  %arena.cur959 = call ptr @dva_arena_current()
  %tag.valid960 = call i1 @dva_arena_validate_tag(ptr %arena.cur959, i64 %str.tag954)
  br i1 %tag.valid960, label %str_ok957, label %str_stale958

str_ok957:                                        ; preds = %str_stale958, %str_gen_check956, %str_ok948
  %eq.len961 = icmp eq i64 %eq.lhs.len944, %eq.rhs.len953
  br i1 %eq.len961, label %str.eq.then962, label %str.eq.else963

str_stale958:                                     ; preds = %str_gen_check956
  %30 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok957

str.eq.then962:                                   ; preds = %str_ok957
  %eq.lhs.data965 = getelementptr inbounds { i64, ptr }, ptr %var.load941, i32 0, i32 1
  %eq.lhs.data966 = load ptr, ptr %eq.lhs.data965, align 8
  %eq.rhs.data967 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp968 = call i32 @memcmp(ptr %eq.lhs.data966, ptr %eq.rhs.data967, i64 %eq.lhs.len944)
  %eq.cmp.zero969 = icmp eq i32 %eq.memcmp968, 0
  br label %str.eq.merge964

str.eq.else963:                                   ; preds = %str_ok957
  br label %str.eq.merge964

str.eq.merge964:                                  ; preds = %str.eq.else963, %str.eq.then962
  %str.eq.result970 = phi i1 [ %eq.cmp.zero969, %str.eq.then962 ], [ false, %str.eq.else963 ]
  %str.neq971 = xor i1 %str.eq.result970, true
  br label %and.61.exit

choice.then972:                                   ; preds = %and.61.exit
  %arena.cur974 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur974, i64 24)
  %arena.cur975 = call ptr @dva_arena_current()
  %a.buf976 = call ptr @dva_arena_alloc(ptr %arena.cur975, i64 128)
  %a.len.gep977 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep977, align 8
  %a.data.gep978 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf976, ptr %a.data.gep978, align 8
  %a.cap.gep979 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep979, align 8
  store ptr %a.new, ptr %var.raw_refs, align 8
  %var.load980 = load ptr, ptr %var.a2, align 8
  %fld.gep981 = getelementptr inbounds { ptr, i1, i1, i1, i1, ptr, ptr, ptr, ptr }, ptr %var.load980, i32 0, i32 5
  %fld.load982 = load ptr, ptr %fld.gep981, align 8
  %arena.cur983 = call ptr @dva_arena_current()
  %a.new984 = call ptr @dva_arena_alloc(ptr %arena.cur983, i64 24)
  %arena.cur985 = call ptr @dva_arena_current()
  %a.buf986 = call ptr @dva_arena_alloc(ptr %arena.cur985, i64 128)
  %a.len.gep987 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new984, i32 0, i32 0
  store i64 0, ptr %a.len.gep987, align 8
  %a.data.gep988 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new984, i32 0, i32 1
  store ptr %a.buf986, ptr %a.data.gep988, align 8
  %a.cap.gep989 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new984, i32 0, i32 2
  store i64 16, ptr %a.cap.gep989, align 8
  %var.load990 = load ptr, ptr %var.raw_refs, align 8
  %a.load991 = load ptr, ptr %var.raw_refs, align 8
  %a.null992 = icmp eq ptr %a.load991, null
  br i1 %a.null992, label %a.create993, label %a.after994

choice.exit973:                                   ; preds = %a.store1555, %and.61.exit
  br label %choice.exit838

a.create993:                                      ; preds = %choice.then972
  %arena.cur995 = call ptr @dva_arena_current()
  %a.create996 = call ptr @dva_arena_alloc(ptr %arena.cur995, i64 24)
  %arena.cur997 = call ptr @dva_arena_current()
  %a.buf998 = call ptr @dva_arena_alloc(ptr %arena.cur997, i64 128)
  %a.len.gep999 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create996, i32 0, i32 0
  store i64 0, ptr %a.len.gep999, align 8
  %a.data.gep1000 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create996, i32 0, i32 1
  store ptr %a.buf998, ptr %a.data.gep1000, align 8
  %a.cap.gep1001 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create996, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1001, align 8
  store ptr %a.create996, ptr %var.raw_refs, align 8
  br label %a.after994

a.after994:                                       ; preds = %a.create993, %choice.then972
  %a.load21002 = load ptr, ptr %var.raw_refs, align 8
  call void @"dep_graph::collect_expr_refs"(ptr %fld.load982, ptr %a.new984, ptr %a.load21002)
  %arena.cur1003 = call ptr @dva_arena_current()
  %a.new1004 = call ptr @dva_arena_alloc(ptr %arena.cur1003, i64 24)
  %arena.cur1005 = call ptr @dva_arena_current()
  %a.buf1006 = call ptr @dva_arena_alloc(ptr %arena.cur1005, i64 128)
  %a.len.gep1007 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1004, i32 0, i32 0
  store i64 0, ptr %a.len.gep1007, align 8
  %a.data.gep1008 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1004, i32 0, i32 1
  store ptr %a.buf1006, ptr %a.data.gep1008, align 8
  %a.cap.gep1009 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new1004, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1009, align 8
  store ptr %a.new1004, ptr %var.filtered_deps, align 8
  %var.load1010 = load ptr, ptr %var.name2, align 8
  %call.res1011 = call ptr @"dep_graph::decl_module"(ptr %var.load1010, i64 0)
  store ptr %call.res1011, ptr %var.mod2, align 8
  %var.load1012 = load ptr, ptr %var.raw_refs, align 8
  %a.load1013 = load ptr, ptr %var.raw_refs, align 8
  %a.null1014 = icmp eq ptr %a.load1013, null
  br i1 %a.null1014, label %a.create1015, label %a.after1016

a.create1015:                                     ; preds = %a.after994
  %arena.cur1017 = call ptr @dva_arena_current()
  %a.create1018 = call ptr @dva_arena_alloc(ptr %arena.cur1017, i64 24)
  %arena.cur1019 = call ptr @dva_arena_current()
  %a.buf1020 = call ptr @dva_arena_alloc(ptr %arena.cur1019, i64 128)
  %a.len.gep1021 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1018, i32 0, i32 0
  store i64 0, ptr %a.len.gep1021, align 8
  %a.data.gep1022 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1018, i32 0, i32 1
  store ptr %a.buf1020, ptr %a.data.gep1022, align 8
  %a.cap.gep1023 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1018, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1023, align 8
  store ptr %a.create1018, ptr %var.raw_refs, align 8
  br label %a.after1016

a.after1016:                                      ; preds = %a.create1015, %a.after994
  %a.load21024 = load ptr, ptr %var.raw_refs, align 8
  %arr.cycle.len1025 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21024, i32 0, i32 0
  %arr.cycle.len1026 = load i64, ptr %arr.cycle.len1025, align 8
  %arr.cycle.data1027 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21024, i32 0, i32 1
  %arr.cycle.data1028 = load ptr, ptr %arr.cycle.data1027, align 8
  store i64 0, ptr %loop.idx.62, align 8
  %cycle.prev.u = load ptr, ptr %var._846, align 8
  %cycle.prev.i = load i64, ptr %var._i835, align 8
  br label %loop.header.62

loop.header.62:                                   ; preds = %loop.latch.62, %a.after1016
  %counter.load1029 = load i64, ptr %loop.idx.62, align 8
  %loop.cond1030 = icmp slt i64 %counter.load1029, %arr.cycle.len1026
  br i1 %loop.cond1030, label %loop.body.62, label %loop.exit.nat.62

loop.body.62:                                     ; preds = %loop.header.62
  %loop.rel.i1031 = sub i64 %counter.load1029, 0
  store i64 1, ptr %loop.step.62, align 8
  %arr.elem.gep1032 = getelementptr i64, ptr %arr.cycle.data1028, i64 %counter.load1029
  %arr.elem.raw1033 = load i64, ptr %arr.elem.gep1032, align 8
  %slot.i2p1034 = inttoptr i64 %arr.elem.raw1033 to ptr
  store i64 %loop.rel.i1031, ptr %var._i1035, align 8
  store ptr %slot.i2p1034, ptr %var._1036, align 8
  store ptr %slot.i2p1034, ptr %var.ref_name, align 8
  %var.load1037 = load ptr, ptr %var.def_names, align 8
  %var.load1038 = load ptr, ptr %var.mod2, align 8
  %var.load1039 = load ptr, ptr %var.ref_name, align 8
  %call.res1040 = call ptr @"dep_graph::resolve_dep_ref"(ptr %var.load1037, ptr %var.load1038, ptr %var.load1039)
  store ptr %call.res1040, ptr %var.target_ref, align 8
  %var.load1041 = load ptr, ptr %var.target_ref, align 8
  %eq.lhs.len1042 = getelementptr inbounds { i64, ptr }, ptr %var.load1041, i32 0, i32 0
  %eq.lhs.len1043 = load i64, ptr %eq.lhs.len1042, align 8
  %eq.lhs.len1044 = and i64 %eq.lhs.len1043, 281474976710655
  %str.tag1045 = lshr i64 %eq.lhs.len1043, 48
  %str.immortal1046 = icmp eq i64 %str.tag1045, 0
  br i1 %str.immortal1046, label %str_ok1048, label %str_gen_check1047

loop.exit.nat.62:                                 ; preds = %loop.header.62
  br label %loop.exit.62

loop.latch.62:                                    ; preds = %choice.exit1089
  %step.val1107 = load i64, ptr %loop.step.62, align 8
  %loop.next1108 = add i64 %counter.load1029, %step.val1107
  store i64 %loop.next1108, ptr %loop.idx.62, align 8
  br label %loop.header.62

loop.exit.62:                                     ; preds = %loop.exit.nat.62
  store ptr %cycle.prev.u, ptr %var._846, align 8
  store i64 %cycle.prev.i, ptr %var._i835, align 8
  %var.load1109 = load ptr, ptr %var.graph, align 8
  %fld.gep1110 = getelementptr inbounds { ptr, ptr }, ptr %var.load1109, i32 0, i32 1
  %fld.load1111 = load ptr, ptr %fld.gep1110, align 8
  store ptr %fld.load1111, ptr %var.node_indices, align 8
  %var.load1112 = load ptr, ptr %var.node_indices, align 8
  %var.load1113 = load ptr, ptr %var.name2, align 8
  %m.cap1114 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1112, i32 0, i32 1
  %m.cap1115 = load i64, ptr %m.cap1114, align 8
  %m.keys1116 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1112, i32 0, i32 2
  %m.keys1117 = load ptr, ptr %m.keys1116, align 8
  %m.states1118 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1112, i32 0, i32 4
  %m.states1119 = load ptr, ptr %m.states1118, align 8
  %mk.data1120 = getelementptr inbounds { i64, ptr }, ptr %var.load1113, i32 0, i32 1
  %mk.data1121 = load ptr, ptr %mk.data1120, align 8
  %mk.len1122 = getelementptr inbounds { i64, ptr }, ptr %var.load1113, i32 0, i32 0
  %mk.len1123 = load i64, ptr %mk.len1122, align 8
  %mk.len1124 = and i64 %mk.len1123, 281474976710655
  %str.tag1125 = lshr i64 %mk.len1123, 48
  %str.immortal1126 = icmp eq i64 %str.tag1125, 0
  br i1 %str.immortal1126, label %str_ok1128, label %str_gen_check1127

str_gen_check1047:                                ; preds = %loop.body.62
  %arena.cur1050 = call ptr @dva_arena_current()
  %tag.valid1051 = call i1 @dva_arena_validate_tag(ptr %arena.cur1050, i64 %str.tag1045)
  br i1 %tag.valid1051, label %str_ok1048, label %str_stale1049

str_ok1048:                                       ; preds = %str_stale1049, %str_gen_check1047, %loop.body.62
  %eq.rhs.len1052 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len1053 = and i64 %eq.rhs.len1052, 281474976710655
  %str.tag1054 = lshr i64 %eq.rhs.len1052, 48
  %str.immortal1055 = icmp eq i64 %str.tag1054, 0
  br i1 %str.immortal1055, label %str_ok1057, label %str_gen_check1056

str_stale1049:                                    ; preds = %str_gen_check1047
  %31 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1048

str_gen_check1056:                                ; preds = %str_ok1048
  %arena.cur1059 = call ptr @dva_arena_current()
  %tag.valid1060 = call i1 @dva_arena_validate_tag(ptr %arena.cur1059, i64 %str.tag1054)
  br i1 %tag.valid1060, label %str_ok1057, label %str_stale1058

str_ok1057:                                       ; preds = %str_stale1058, %str_gen_check1056, %str_ok1048
  %eq.len1061 = icmp eq i64 %eq.lhs.len1044, %eq.rhs.len1053
  br i1 %eq.len1061, label %str.eq.then1062, label %str.eq.else1063

str_stale1058:                                    ; preds = %str_gen_check1056
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1057

str.eq.then1062:                                  ; preds = %str_ok1057
  %eq.lhs.data1065 = getelementptr inbounds { i64, ptr }, ptr %var.load1041, i32 0, i32 1
  %eq.lhs.data1066 = load ptr, ptr %eq.lhs.data1065, align 8
  %eq.rhs.data1067 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp1068 = call i32 @memcmp(ptr %eq.lhs.data1066, ptr %eq.rhs.data1067, i64 %eq.lhs.len1044)
  %eq.cmp.zero1069 = icmp eq i32 %eq.memcmp1068, 0
  br label %str.eq.merge1064

str.eq.else1063:                                  ; preds = %str_ok1057
  br label %str.eq.merge1064

str.eq.merge1064:                                 ; preds = %str.eq.else1063, %str.eq.then1062
  %str.eq.result1070 = phi i1 [ %eq.cmp.zero1069, %str.eq.then1062 ], [ false, %str.eq.else1063 ]
  %str.neq1071 = xor i1 %str.eq.result1070, true
  br i1 %str.neq1071, label %and.63.then, label %and.63.else

and.63.then:                                      ; preds = %str.eq.merge1064
  %var.load1072 = load ptr, ptr %var.filtered_deps, align 8
  %a.load1073 = load ptr, ptr %var.filtered_deps, align 8
  %a.null1074 = icmp eq ptr %a.load1073, null
  br i1 %a.null1074, label %a.create1075, label %a.after1076

and.63.else:                                      ; preds = %str.eq.merge1064
  br label %and.63.exit

and.63.exit:                                      ; preds = %and.63.else, %a.after1076
  %and.63.phi = phi i1 [ %nottmp1087, %a.after1076 ], [ %str.neq1071, %and.63.else ]
  br i1 %and.63.phi, label %choice.then1088, label %choice.exit1089

a.create1075:                                     ; preds = %and.63.then
  %arena.cur1077 = call ptr @dva_arena_current()
  %a.create1078 = call ptr @dva_arena_alloc(ptr %arena.cur1077, i64 24)
  %arena.cur1079 = call ptr @dva_arena_current()
  %a.buf1080 = call ptr @dva_arena_alloc(ptr %arena.cur1079, i64 128)
  %a.len.gep1081 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1078, i32 0, i32 0
  store i64 0, ptr %a.len.gep1081, align 8
  %a.data.gep1082 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1078, i32 0, i32 1
  store ptr %a.buf1080, ptr %a.data.gep1082, align 8
  %a.cap.gep1083 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1078, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1083, align 8
  store ptr %a.create1078, ptr %var.filtered_deps, align 8
  br label %a.after1076

a.after1076:                                      ; preds = %a.create1075, %and.63.then
  %a.load21084 = load ptr, ptr %var.filtered_deps, align 8
  %var.load1085 = load ptr, ptr %var.target_ref, align 8
  %call.res1086 = call i1 @"dep_graph::has_name"(ptr %a.load21084, ptr %var.load1085)
  %nottmp1087 = xor i1 %call.res1086, true
  br label %and.63.exit

choice.then1088:                                  ; preds = %and.63.exit
  %var.load1090 = load ptr, ptr %var.target_ref, align 8
  %a.load1091 = load ptr, ptr %var.filtered_deps, align 8
  %a.null1092 = icmp eq ptr %a.load1091, null
  br i1 %a.null1092, label %a.create1093, label %a.after1094

choice.exit1089:                                  ; preds = %a.store, %and.63.exit
  br label %loop.latch.62

a.create1093:                                     ; preds = %choice.then1088
  %arena.cur1095 = call ptr @dva_arena_current()
  %a.create1096 = call ptr @dva_arena_alloc(ptr %arena.cur1095, i64 24)
  %arena.cur1097 = call ptr @dva_arena_current()
  %a.buf1098 = call ptr @dva_arena_alloc(ptr %arena.cur1097, i64 128)
  %a.len.gep1099 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1096, i32 0, i32 0
  store i64 0, ptr %a.len.gep1099, align 8
  %a.data.gep1100 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1096, i32 0, i32 1
  store ptr %a.buf1098, ptr %a.data.gep1100, align 8
  %a.cap.gep1101 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1096, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1101, align 8
  store ptr %a.create1096, ptr %var.filtered_deps, align 8
  br label %a.after1094

a.after1094:                                      ; preds = %a.create1093, %choice.then1088
  %a.load21102 = load ptr, ptr %var.filtered_deps, align 8
  br label %a.check

a.check:                                          ; preds = %a.after1094
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21102, i32 0, i32 0
  %a.len1103 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21102, i32 0, i32 2
  %a.cap1104 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len1103, %a.cap1104
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load21102)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21102, i32 0, i32 1
  %a.cur.data1105 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21102, i32 0, i32 0
  %a.cur.len1106 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data1105, i64 %a.cur.len1106
  %slot.p2i = ptrtoint ptr %var.load1090 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len1106, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21102, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit1089

str_gen_check1127:                                ; preds = %loop.exit.62
  %arena.cur1130 = call ptr @dva_arena_current()
  %tag.valid1131 = call i1 @dva_arena_validate_tag(ptr %arena.cur1130, i64 %str.tag1125)
  br i1 %tag.valid1131, label %str_ok1128, label %str_stale1129

str_ok1128:                                       ; preds = %str_stale1129, %str_gen_check1127, %loop.exit.62
  %hash.str1132 = call i64 @dva_hash_string(ptr %mk.data1121, i64 %mk.len1124)
  %m.capm11133 = sub i64 %m.cap1115, 1
  %m.idx01134 = and i64 %hash.str1132, %m.capm11133
  br label %m.mem.loop1135

str_stale1129:                                    ; preds = %str_gen_check1127
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1128

m.mem.loop1135:                                   ; preds = %m.mem.next1138, %str_ok1128
  %m.mem.idx1141 = phi i64 [ %m.idx01134, %str_ok1128 ], [ %m.mem.idx.next1184, %m.mem.next1138 ]
  %m.mem.probe1142 = phi i64 [ 0, %str_ok1128 ], [ %m.mem.probe.next1185, %m.mem.next1138 ]
  %m.mem.reached1143 = icmp eq i64 %m.mem.probe1142, %m.cap1115
  %m.mem.state.gep1144 = getelementptr i8, ptr %m.states1119, i64 %m.mem.idx1141
  %m.mem.state1145 = load i8, ptr %m.mem.state.gep1144, align 1
  %m.mem.is.empty1146 = icmp eq i8 %m.mem.state1145, 0
  %m.mem.stop1147 = or i1 %m.mem.is.empty1146, %m.mem.reached1143
  br i1 %m.mem.stop1147, label %m.mem.miss1139, label %m.mem.probe1136

m.mem.probe1136:                                  ; preds = %m.mem.loop1135
  %m.mem.is.tomb1148 = icmp eq i8 %m.mem.state1145, 2
  br i1 %m.mem.is.tomb1148, label %m.mem.next1138, label %m.mem.found1137

m.mem.found1137:                                  ; preds = %m.mem.probe1136
  %m.mem.key.slot1149 = getelementptr ptr, ptr %m.keys1117, i64 %m.mem.idx1141
  %mk.stored1150 = load ptr, ptr %m.mem.key.slot1149, align 8
  %mk.slen1151 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1150, i32 0, i32 0
  %mk.slen1152 = load i64, ptr %mk.slen1151, align 8
  %mk.slen1153 = and i64 %mk.slen1152, 281474976710655
  %str.tag1154 = lshr i64 %mk.slen1152, 48
  %str.immortal1155 = icmp eq i64 %str.tag1154, 0
  br i1 %str.immortal1155, label %str_ok1157, label %str_gen_check1156

m.mem.next1138:                                   ; preds = %mk.eq.merge1174, %m.mem.probe1136
  %m.mem.idx.add1183 = add i64 %m.mem.idx1141, 1
  %m.mem.idx.next1184 = and i64 %m.mem.idx.add1183, %m.capm11133
  %m.mem.probe.next1185 = add i64 %m.mem.probe1142, 1
  br label %m.mem.loop1135

m.mem.miss1139:                                   ; preds = %m.mem.loop1135
  br label %m.mem.done1140

m.mem.done1140:                                   ; preds = %m.mem.miss1139, %m.mem.hit1182
  %m.mem.res1186 = phi i1 [ true, %m.mem.hit1182 ], [ false, %m.mem.miss1139 ]
  store i1 %m.mem.res1186, ptr %var.known, align 1
  %var.load1187 = load i1, ptr %var.known, align 1
  %nottmp1188 = xor i1 %var.load1187, true
  br i1 %nottmp1188, label %choice.then1189, label %choice.exit1190

str_gen_check1156:                                ; preds = %m.mem.found1137
  %arena.cur1159 = call ptr @dva_arena_current()
  %tag.valid1160 = call i1 @dva_arena_validate_tag(ptr %arena.cur1159, i64 %str.tag1154)
  br i1 %tag.valid1160, label %str_ok1157, label %str_stale1158

str_ok1157:                                       ; preds = %str_stale1158, %str_gen_check1156, %m.mem.found1137
  %mk.nlen1161 = getelementptr inbounds { i64, ptr }, ptr %var.load1113, i32 0, i32 0
  %mk.nlen1162 = load i64, ptr %mk.nlen1161, align 8
  %mk.nlen1163 = and i64 %mk.nlen1162, 281474976710655
  %str.tag1164 = lshr i64 %mk.nlen1162, 48
  %str.immortal1165 = icmp eq i64 %str.tag1164, 0
  br i1 %str.immortal1165, label %str_ok1167, label %str_gen_check1166

str_stale1158:                                    ; preds = %str_gen_check1156
  %34 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1157

str_gen_check1166:                                ; preds = %str_ok1157
  %arena.cur1169 = call ptr @dva_arena_current()
  %tag.valid1170 = call i1 @dva_arena_validate_tag(ptr %arena.cur1169, i64 %str.tag1164)
  br i1 %tag.valid1170, label %str_ok1167, label %str_stale1168

str_ok1167:                                       ; preds = %str_stale1168, %str_gen_check1166, %str_ok1157
  %mk.lenseq1171 = icmp eq i64 %mk.slen1153, %mk.nlen1163
  br i1 %mk.lenseq1171, label %mk.eq.then1172, label %mk.eq.else1173

str_stale1168:                                    ; preds = %str_gen_check1166
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1167

mk.eq.then1172:                                   ; preds = %str_ok1167
  %mk.sdata1175 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1150, i32 0, i32 1
  %mk.sdata1176 = load ptr, ptr %mk.sdata1175, align 8
  %mk.ndata1177 = getelementptr inbounds { i64, ptr }, ptr %var.load1113, i32 0, i32 1
  %mk.ndata1178 = load ptr, ptr %mk.ndata1177, align 8
  %mk.memcmp1179 = call i32 @memcmp(ptr %mk.sdata1176, ptr %mk.ndata1178, i64 %mk.nlen1163)
  %mk.cmpeq1180 = icmp eq i32 %mk.memcmp1179, 0
  br label %mk.eq.merge1174

mk.eq.else1173:                                   ; preds = %str_ok1167
  br label %mk.eq.merge1174

mk.eq.merge1174:                                  ; preds = %mk.eq.else1173, %mk.eq.then1172
  %mk.eq1181 = phi i1 [ %mk.cmpeq1180, %mk.eq.then1172 ], [ false, %mk.eq.else1173 ]
  br i1 %mk.eq1181, label %m.mem.hit1182, label %m.mem.next1138

m.mem.hit1182:                                    ; preds = %mk.eq.merge1174
  br label %m.mem.done1140

choice.then1189:                                  ; preds = %m.mem.done1140
  %var.load1191 = load ptr, ptr %var.node_indices, align 8
  %var.load1192 = load ptr, ptr %var.name2, align 8
  %var.load1193 = load ptr, ptr %var.graph, align 8
  %fld.gep1194 = getelementptr inbounds { ptr, ptr }, ptr %var.load1193, i32 0, i32 0
  %fld.load1195 = load ptr, ptr %fld.gep1194, align 8
  %a.len.query1196 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1195, i32 0, i32 0
  %a.len.query1197 = load i64, ptr %a.len.query1196, align 8
  %m.cap1198 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 1
  %m.cap1199 = load i64, ptr %m.cap1198, align 8
  %m.keys1200 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 2
  %m.keys1201 = load ptr, ptr %m.keys1200, align 8
  %m.vals1202 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 3
  %m.vals1203 = load ptr, ptr %m.vals1202, align 8
  %m.states1204 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 4
  %m.states1205 = load ptr, ptr %m.states1204, align 8
  %mk.data1206 = getelementptr inbounds { i64, ptr }, ptr %var.load1192, i32 0, i32 1
  %mk.data1207 = load ptr, ptr %mk.data1206, align 8
  %mk.len1208 = getelementptr inbounds { i64, ptr }, ptr %var.load1192, i32 0, i32 0
  %mk.len1209 = load i64, ptr %mk.len1208, align 8
  %mk.len1210 = and i64 %mk.len1209, 281474976710655
  %str.tag1211 = lshr i64 %mk.len1209, 48
  %str.immortal1212 = icmp eq i64 %str.tag1211, 0
  br i1 %str.immortal1212, label %str_ok1214, label %str_gen_check1213

choice.exit1190:                                  ; preds = %m.done1228, %m.mem.done1140
  %var.load1531 = load ptr, ptr %var.graph, align 8
  %var.load1532 = load ptr, ptr %var.name2, align 8
  %var.load1533 = load ptr, ptr %var.filtered_deps, align 8
  %a.load1534 = load ptr, ptr %var.filtered_deps, align 8
  %a.null1535 = icmp eq ptr %a.load1534, null
  br i1 %a.null1535, label %a.create1536, label %a.after1537

str_gen_check1213:                                ; preds = %choice.then1189
  %arena.cur1216 = call ptr @dva_arena_current()
  %tag.valid1217 = call i1 @dva_arena_validate_tag(ptr %arena.cur1216, i64 %str.tag1211)
  br i1 %tag.valid1217, label %str_ok1214, label %str_stale1215

str_ok1214:                                       ; preds = %str_stale1215, %str_gen_check1213, %choice.then1189
  %hash.str1218 = call i64 @dva_hash_string(ptr %mk.data1207, i64 %mk.len1210)
  %m.capm11219 = sub i64 %m.cap1199, 1
  %m.idx01220 = and i64 %hash.str1218, %m.capm11219
  br label %m.loop1221

str_stale1215:                                    ; preds = %str_gen_check1213
  %36 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1214

m.loop1221:                                       ; preds = %m.next1226, %str_ok1214
  %m.idx1229 = phi i64 [ %m.idx01220, %str_ok1214 ], [ %m.idx.next1276, %m.next1226 ]
  %m.tomb1230 = phi i64 [ -1, %str_ok1214 ], [ %m.next.tomb1274, %m.next1226 ]
  %m.probe1231 = phi i64 [ 0, %str_ok1214 ], [ %m.probe.next1277, %m.next1226 ]
  %m.reached.cap1232 = icmp eq i64 %m.probe1231, %m.cap1199
  %m.state.gep1233 = getelementptr i8, ptr %m.states1205, i64 %m.idx1229
  %m.state1234 = load i8, ptr %m.state.gep1233, align 1
  %m.is.empty1235 = icmp eq i8 %m.state1234, 0
  %m.stop1236 = or i1 %m.is.empty1235, %m.reached.cap1232
  br i1 %m.stop1236, label %m.empty1227, label %m.check.tomb1222

m.check.tomb1222:                                 ; preds = %m.loop1221
  %m.is.tomb1237 = icmp eq i8 %m.state1234, 2
  br i1 %m.is.tomb1237, label %m.tomb1223, label %m.found1224

m.tomb1223:                                       ; preds = %m.check.tomb1222
  %m.has.tomb1238 = icmp ne i64 %m.tomb1230, -1
  %m.tomb.sel1239 = select i1 %m.has.tomb1238, i64 %m.tomb1230, i64 %m.idx1229
  br label %m.next1226

m.found1224:                                      ; preds = %m.check.tomb1222
  %m.key.slot1240 = getelementptr ptr, ptr %m.keys1201, i64 %m.idx1229
  %mk.stored1241 = load ptr, ptr %m.key.slot1240, align 8
  %mk.slen1242 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1241, i32 0, i32 0
  %mk.slen1243 = load i64, ptr %mk.slen1242, align 8
  %mk.slen1244 = and i64 %mk.slen1243, 281474976710655
  %str.tag1245 = lshr i64 %mk.slen1243, 48
  %str.immortal1246 = icmp eq i64 %str.tag1245, 0
  br i1 %str.immortal1246, label %str_ok1248, label %str_gen_check1247

m.overwrite1225:                                  ; preds = %mk.eq.merge1265
  %m.val.slot1273 = getelementptr i64, ptr %m.vals1203, i64 %m.idx1229
  store i64 %a.len.query1197, ptr %m.val.slot1273, align 8
  br label %m.done1228

m.next1226:                                       ; preds = %mk.eq.merge1265, %m.tomb1223
  %m.next.tomb1274 = phi i64 [ %m.tomb.sel1239, %m.tomb1223 ], [ %m.tomb1230, %mk.eq.merge1265 ]
  %m.idx.add1275 = add i64 %m.idx1229, 1
  %m.idx.next1276 = and i64 %m.idx.add1275, %m.capm11219
  %m.probe.next1277 = add i64 %m.probe1231, 1
  br label %m.loop1221

m.empty1227:                                      ; preds = %m.loop1221
  %m.grow.cnt.p1278 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 0
  %m.grow.cnt1279 = load i64, ptr %m.grow.cnt.p1278, align 8
  %m.grow.tm.p1280 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 5
  %m.grow.tm1281 = load i64, ptr %m.grow.tm.p1280, align 8
  %m.occupied1282 = add i64 %m.grow.cnt1279, %m.grow.tm1281
  %m.c.plus1283 = add i64 %m.occupied1282, 1
  %m.c.lhs1284 = mul i64 %m.c.plus1283, 4
  %m.c.rhs1285 = mul i64 %m.cap1199, 3
  %m.need.grow1286 = icmp sgt i64 %m.c.lhs1284, %m.c.rhs1285
  br i1 %m.need.grow1286, label %m.grow1287, label %m.ins.slot1288

m.done1228:                                       ; preds = %m.ins.slot1288, %m.done1455, %m.overwrite1225
  br label %choice.exit1190

str_gen_check1247:                                ; preds = %m.found1224
  %arena.cur1250 = call ptr @dva_arena_current()
  %tag.valid1251 = call i1 @dva_arena_validate_tag(ptr %arena.cur1250, i64 %str.tag1245)
  br i1 %tag.valid1251, label %str_ok1248, label %str_stale1249

str_ok1248:                                       ; preds = %str_stale1249, %str_gen_check1247, %m.found1224
  %mk.nlen1252 = getelementptr inbounds { i64, ptr }, ptr %var.load1192, i32 0, i32 0
  %mk.nlen1253 = load i64, ptr %mk.nlen1252, align 8
  %mk.nlen1254 = and i64 %mk.nlen1253, 281474976710655
  %str.tag1255 = lshr i64 %mk.nlen1253, 48
  %str.immortal1256 = icmp eq i64 %str.tag1255, 0
  br i1 %str.immortal1256, label %str_ok1258, label %str_gen_check1257

str_stale1249:                                    ; preds = %str_gen_check1247
  %37 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1248

str_gen_check1257:                                ; preds = %str_ok1248
  %arena.cur1260 = call ptr @dva_arena_current()
  %tag.valid1261 = call i1 @dva_arena_validate_tag(ptr %arena.cur1260, i64 %str.tag1255)
  br i1 %tag.valid1261, label %str_ok1258, label %str_stale1259

str_ok1258:                                       ; preds = %str_stale1259, %str_gen_check1257, %str_ok1248
  %mk.lenseq1262 = icmp eq i64 %mk.slen1244, %mk.nlen1254
  br i1 %mk.lenseq1262, label %mk.eq.then1263, label %mk.eq.else1264

str_stale1259:                                    ; preds = %str_gen_check1257
  %38 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1258

mk.eq.then1263:                                   ; preds = %str_ok1258
  %mk.sdata1266 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1241, i32 0, i32 1
  %mk.sdata1267 = load ptr, ptr %mk.sdata1266, align 8
  %mk.ndata1268 = getelementptr inbounds { i64, ptr }, ptr %var.load1192, i32 0, i32 1
  %mk.ndata1269 = load ptr, ptr %mk.ndata1268, align 8
  %mk.memcmp1270 = call i32 @memcmp(ptr %mk.sdata1267, ptr %mk.ndata1269, i64 %mk.nlen1254)
  %mk.cmpeq1271 = icmp eq i32 %mk.memcmp1270, 0
  br label %mk.eq.merge1265

mk.eq.else1264:                                   ; preds = %str_ok1258
  br label %mk.eq.merge1265

mk.eq.merge1265:                                  ; preds = %mk.eq.else1264, %mk.eq.then1263
  %mk.eq1272 = phi i1 [ %mk.cmpeq1271, %mk.eq.then1263 ], [ false, %mk.eq.else1264 ]
  br i1 %mk.eq1272, label %m.overwrite1225, label %m.next1226

m.grow1287:                                       ; preds = %m.empty1227
  %m.old.cap1289 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 1
  %m.old.cap1290 = load i64, ptr %m.old.cap1289, align 8
  %m.old.keys1291 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 2
  %m.old.keys1292 = load ptr, ptr %m.old.keys1291, align 8
  %m.old.vals1293 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 3
  %m.old.vals1294 = load ptr, ptr %m.old.vals1293, align 8
  %m.old.states1295 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 4
  %m.old.states1296 = load ptr, ptr %m.old.states1295, align 8
  %m.double.cap1297 = mul i64 %m.old.cap1290, 2
  %m.live.cnt1298 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 0
  %m.live.cnt1299 = load i64, ptr %m.live.cnt1298, align 8
  %m.live.x21300 = mul i64 %m.live.cnt1299, 2
  %m.should.double1301 = icmp sgt i64 %m.live.x21300, %m.old.cap1290
  %m.new.cap1302 = select i1 %m.should.double1301, i64 %m.double.cap1297, i64 %m.old.cap1290
  %m.gk.bytes1303 = mul i64 %m.new.cap1302, 8
  %arena.cur1304 = call ptr @dva_arena_current()
  %m.gk1305 = call ptr @dva_arena_alloc(ptr %arena.cur1304, i64 %m.gk.bytes1303)
  %m.gv.bytes1306 = mul i64 %m.new.cap1302, 8
  %arena.cur1307 = call ptr @dva_arena_current()
  %m.gv1308 = call ptr @dva_arena_alloc(ptr %arena.cur1307, i64 %m.gv.bytes1306)
  %arena.cur1309 = call ptr @dva_arena_current()
  %m.gs1310 = call ptr @dva_arena_alloc(ptr %arena.cur1309, i64 %m.new.cap1302)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs1310, i8 0, i64 %m.new.cap1302, i1 false)
  %m.cap.gep1311 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 1
  store i64 %m.new.cap1302, ptr %m.cap.gep1311, align 8
  %m.keys.gep1312 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 2
  store ptr %m.gk1305, ptr %m.keys.gep1312, align 8
  %m.vals.gep1313 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 3
  store ptr %m.gv1308, ptr %m.vals.gep1313, align 8
  %m.states.gep1314 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 4
  store ptr %m.gs1310, ptr %m.states.gep1314, align 8
  %m.count.gep1315 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 0
  store i64 0, ptr %m.count.gep1315, align 8
  %m.tombs.gep1316 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep1316, align 8
  br label %m.re.loop1317

m.ins.slot1288:                                   ; preds = %m.empty1227
  %m.use.tomb1518 = icmp ne i64 %m.tomb1230, -1
  %m.ins.idx1519 = select i1 %m.use.tomb1518, i64 %m.tomb1230, i64 %m.idx1229
  %m.key.slot1520 = getelementptr ptr, ptr %m.keys1201, i64 %m.ins.idx1519
  store ptr %var.load1192, ptr %m.key.slot1520, align 8
  %m.val.slot1521 = getelementptr i64, ptr %m.vals1203, i64 %m.ins.idx1519
  store i64 %a.len.query1197, ptr %m.val.slot1521, align 8
  %m.ins.state.slot1522 = getelementptr i8, ptr %m.states1205, i64 %m.ins.idx1519
  store i8 1, ptr %m.ins.state.slot1522, align 1
  %m.count1523 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 0
  %m.count1524 = load i64, ptr %m.count1523, align 8
  %m.count.next1525 = add i64 %m.count1524, 1
  %m.count.gep1526 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 0
  store i64 %m.count.next1525, ptr %m.count.gep1526, align 8
  %m.ins.tombs.p1527 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 5
  %m.ins.tombs1528 = load i64, ptr %m.ins.tombs.p1527, align 8
  %m.tomb.dec1529 = select i1 %m.use.tomb1518, i64 1, i64 0
  %m.ins.tombs.next1530 = sub i64 %m.ins.tombs1528, %m.tomb.dec1529
  store i64 %m.ins.tombs.next1530, ptr %m.ins.tombs.p1527, align 8
  br label %m.done1228

m.re.loop1317:                                    ; preds = %m.re.cont1319, %m.grow1287
  %m.re.i1321 = phi i64 [ 0, %m.grow1287 ], [ %m.re.i.next1424, %m.re.cont1319 ]
  %m.re.lt1322 = icmp slt i64 %m.re.i1321, %m.old.cap1290
  br i1 %m.re.lt1322, label %m.re.body1318, label %m.re.done1320

m.re.body1318:                                    ; preds = %m.re.loop1317
  %m.re.state.gep1323 = getelementptr i8, ptr %m.old.states1296, i64 %m.re.i1321
  %m.re.state1324 = load i8, ptr %m.re.state.gep1323, align 1
  %m.re.occ1325 = icmp eq i8 %m.re.state1324, 1
  br i1 %m.re.occ1325, label %m.re.ins1326, label %m.re.cont1319

m.re.cont1319:                                    ; preds = %m.done1361, %m.re.body1318
  %m.re.i.next1424 = add i64 %m.re.i1321, 1
  br label %m.re.loop1317

m.re.done1320:                                    ; preds = %m.re.loop1317
  %m.cap1425 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 1
  %m.cap1426 = load i64, ptr %m.cap1425, align 8
  %m.keys1427 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 2
  %m.keys1428 = load ptr, ptr %m.keys1427, align 8
  %m.vals1429 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 3
  %m.vals1430 = load ptr, ptr %m.vals1429, align 8
  %m.states1431 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 4
  %m.states1432 = load ptr, ptr %m.states1431, align 8
  %mk.data1433 = getelementptr inbounds { i64, ptr }, ptr %var.load1192, i32 0, i32 1
  %mk.data1434 = load ptr, ptr %mk.data1433, align 8
  %mk.len1435 = getelementptr inbounds { i64, ptr }, ptr %var.load1192, i32 0, i32 0
  %mk.len1436 = load i64, ptr %mk.len1435, align 8
  %mk.len1437 = and i64 %mk.len1436, 281474976710655
  %str.tag1438 = lshr i64 %mk.len1436, 48
  %str.immortal1439 = icmp eq i64 %str.tag1438, 0
  br i1 %str.immortal1439, label %str_ok1441, label %str_gen_check1440

m.re.ins1326:                                     ; preds = %m.re.body1318
  %m.re.key.slot1327 = getelementptr ptr, ptr %m.old.keys1292, i64 %m.re.i1321
  %m.re.val.slot1328 = getelementptr i64, ptr %m.old.vals1294, i64 %m.re.i1321
  %m.re.key1329 = load ptr, ptr %m.re.key.slot1327, align 8
  %m.re.val1330 = load i64, ptr %m.re.val.slot1328, align 8
  %m.cap1331 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 1
  %m.cap1332 = load i64, ptr %m.cap1331, align 8
  %m.keys1333 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 2
  %m.keys1334 = load ptr, ptr %m.keys1333, align 8
  %m.vals1335 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 3
  %m.vals1336 = load ptr, ptr %m.vals1335, align 8
  %m.states1337 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 4
  %m.states1338 = load ptr, ptr %m.states1337, align 8
  %mk.data1339 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1329, i32 0, i32 1
  %mk.data1340 = load ptr, ptr %mk.data1339, align 8
  %mk.len1341 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1329, i32 0, i32 0
  %mk.len1342 = load i64, ptr %mk.len1341, align 8
  %mk.len1343 = and i64 %mk.len1342, 281474976710655
  %str.tag1344 = lshr i64 %mk.len1342, 48
  %str.immortal1345 = icmp eq i64 %str.tag1344, 0
  br i1 %str.immortal1345, label %str_ok1347, label %str_gen_check1346

str_gen_check1346:                                ; preds = %m.re.ins1326
  %arena.cur1349 = call ptr @dva_arena_current()
  %tag.valid1350 = call i1 @dva_arena_validate_tag(ptr %arena.cur1349, i64 %str.tag1344)
  br i1 %tag.valid1350, label %str_ok1347, label %str_stale1348

str_ok1347:                                       ; preds = %str_stale1348, %str_gen_check1346, %m.re.ins1326
  %hash.str1351 = call i64 @dva_hash_string(ptr %mk.data1340, i64 %mk.len1343)
  %m.capm11352 = sub i64 %m.cap1332, 1
  %m.idx01353 = and i64 %hash.str1351, %m.capm11352
  br label %m.loop1354

str_stale1348:                                    ; preds = %str_gen_check1346
  %39 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1347

m.loop1354:                                       ; preds = %m.next1359, %str_ok1347
  %m.idx1362 = phi i64 [ %m.idx01353, %str_ok1347 ], [ %m.idx.next1409, %m.next1359 ]
  %m.tomb1363 = phi i64 [ -1, %str_ok1347 ], [ %m.next.tomb1407, %m.next1359 ]
  %m.probe1364 = phi i64 [ 0, %str_ok1347 ], [ %m.probe.next1410, %m.next1359 ]
  %m.reached.cap1365 = icmp eq i64 %m.probe1364, %m.cap1332
  %m.state.gep1366 = getelementptr i8, ptr %m.states1338, i64 %m.idx1362
  %m.state1367 = load i8, ptr %m.state.gep1366, align 1
  %m.is.empty1368 = icmp eq i8 %m.state1367, 0
  %m.stop1369 = or i1 %m.is.empty1368, %m.reached.cap1365
  br i1 %m.stop1369, label %m.empty1360, label %m.check.tomb1355

m.check.tomb1355:                                 ; preds = %m.loop1354
  %m.is.tomb1370 = icmp eq i8 %m.state1367, 2
  br i1 %m.is.tomb1370, label %m.tomb1356, label %m.found1357

m.tomb1356:                                       ; preds = %m.check.tomb1355
  %m.has.tomb1371 = icmp ne i64 %m.tomb1363, -1
  %m.tomb.sel1372 = select i1 %m.has.tomb1371, i64 %m.tomb1363, i64 %m.idx1362
  br label %m.next1359

m.found1357:                                      ; preds = %m.check.tomb1355
  %m.key.slot1373 = getelementptr ptr, ptr %m.keys1334, i64 %m.idx1362
  %mk.stored1374 = load ptr, ptr %m.key.slot1373, align 8
  %mk.slen1375 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1374, i32 0, i32 0
  %mk.slen1376 = load i64, ptr %mk.slen1375, align 8
  %mk.slen1377 = and i64 %mk.slen1376, 281474976710655
  %str.tag1378 = lshr i64 %mk.slen1376, 48
  %str.immortal1379 = icmp eq i64 %str.tag1378, 0
  br i1 %str.immortal1379, label %str_ok1381, label %str_gen_check1380

m.overwrite1358:                                  ; preds = %mk.eq.merge1398
  %m.val.slot1406 = getelementptr i64, ptr %m.vals1336, i64 %m.idx1362
  store i64 %m.re.val1330, ptr %m.val.slot1406, align 8
  br label %m.done1361

m.next1359:                                       ; preds = %mk.eq.merge1398, %m.tomb1356
  %m.next.tomb1407 = phi i64 [ %m.tomb.sel1372, %m.tomb1356 ], [ %m.tomb1363, %mk.eq.merge1398 ]
  %m.idx.add1408 = add i64 %m.idx1362, 1
  %m.idx.next1409 = and i64 %m.idx.add1408, %m.capm11352
  %m.probe.next1410 = add i64 %m.probe1364, 1
  br label %m.loop1354

m.empty1360:                                      ; preds = %m.loop1354
  %m.use.tomb1411 = icmp ne i64 %m.tomb1363, -1
  %m.ins.idx1412 = select i1 %m.use.tomb1411, i64 %m.tomb1363, i64 %m.idx1362
  %m.key.slot1413 = getelementptr ptr, ptr %m.keys1334, i64 %m.ins.idx1412
  store ptr %m.re.key1329, ptr %m.key.slot1413, align 8
  %m.val.slot1414 = getelementptr i64, ptr %m.vals1336, i64 %m.ins.idx1412
  store i64 %m.re.val1330, ptr %m.val.slot1414, align 8
  %m.ins.state.slot1415 = getelementptr i8, ptr %m.states1338, i64 %m.ins.idx1412
  store i8 1, ptr %m.ins.state.slot1415, align 1
  %m.count1416 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 0
  %m.count1417 = load i64, ptr %m.count1416, align 8
  %m.count.next1418 = add i64 %m.count1417, 1
  %m.count.gep1419 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 0
  store i64 %m.count.next1418, ptr %m.count.gep1419, align 8
  %m.ins.tombs.p1420 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 5
  %m.ins.tombs1421 = load i64, ptr %m.ins.tombs.p1420, align 8
  %m.tomb.dec1422 = select i1 %m.use.tomb1411, i64 1, i64 0
  %m.ins.tombs.next1423 = sub i64 %m.ins.tombs1421, %m.tomb.dec1422
  store i64 %m.ins.tombs.next1423, ptr %m.ins.tombs.p1420, align 8
  br label %m.done1361

m.done1361:                                       ; preds = %m.empty1360, %m.overwrite1358
  br label %m.re.cont1319

str_gen_check1380:                                ; preds = %m.found1357
  %arena.cur1383 = call ptr @dva_arena_current()
  %tag.valid1384 = call i1 @dva_arena_validate_tag(ptr %arena.cur1383, i64 %str.tag1378)
  br i1 %tag.valid1384, label %str_ok1381, label %str_stale1382

str_ok1381:                                       ; preds = %str_stale1382, %str_gen_check1380, %m.found1357
  %mk.nlen1385 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1329, i32 0, i32 0
  %mk.nlen1386 = load i64, ptr %mk.nlen1385, align 8
  %mk.nlen1387 = and i64 %mk.nlen1386, 281474976710655
  %str.tag1388 = lshr i64 %mk.nlen1386, 48
  %str.immortal1389 = icmp eq i64 %str.tag1388, 0
  br i1 %str.immortal1389, label %str_ok1391, label %str_gen_check1390

str_stale1382:                                    ; preds = %str_gen_check1380
  %40 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1381

str_gen_check1390:                                ; preds = %str_ok1381
  %arena.cur1393 = call ptr @dva_arena_current()
  %tag.valid1394 = call i1 @dva_arena_validate_tag(ptr %arena.cur1393, i64 %str.tag1388)
  br i1 %tag.valid1394, label %str_ok1391, label %str_stale1392

str_ok1391:                                       ; preds = %str_stale1392, %str_gen_check1390, %str_ok1381
  %mk.lenseq1395 = icmp eq i64 %mk.slen1377, %mk.nlen1387
  br i1 %mk.lenseq1395, label %mk.eq.then1396, label %mk.eq.else1397

str_stale1392:                                    ; preds = %str_gen_check1390
  %41 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1391

mk.eq.then1396:                                   ; preds = %str_ok1391
  %mk.sdata1399 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1374, i32 0, i32 1
  %mk.sdata1400 = load ptr, ptr %mk.sdata1399, align 8
  %mk.ndata1401 = getelementptr inbounds { i64, ptr }, ptr %m.re.key1329, i32 0, i32 1
  %mk.ndata1402 = load ptr, ptr %mk.ndata1401, align 8
  %mk.memcmp1403 = call i32 @memcmp(ptr %mk.sdata1400, ptr %mk.ndata1402, i64 %mk.nlen1387)
  %mk.cmpeq1404 = icmp eq i32 %mk.memcmp1403, 0
  br label %mk.eq.merge1398

mk.eq.else1397:                                   ; preds = %str_ok1391
  br label %mk.eq.merge1398

mk.eq.merge1398:                                  ; preds = %mk.eq.else1397, %mk.eq.then1396
  %mk.eq1405 = phi i1 [ %mk.cmpeq1404, %mk.eq.then1396 ], [ false, %mk.eq.else1397 ]
  br i1 %mk.eq1405, label %m.overwrite1358, label %m.next1359

str_gen_check1440:                                ; preds = %m.re.done1320
  %arena.cur1443 = call ptr @dva_arena_current()
  %tag.valid1444 = call i1 @dva_arena_validate_tag(ptr %arena.cur1443, i64 %str.tag1438)
  br i1 %tag.valid1444, label %str_ok1441, label %str_stale1442

str_ok1441:                                       ; preds = %str_stale1442, %str_gen_check1440, %m.re.done1320
  %hash.str1445 = call i64 @dva_hash_string(ptr %mk.data1434, i64 %mk.len1437)
  %m.capm11446 = sub i64 %m.cap1426, 1
  %m.idx01447 = and i64 %hash.str1445, %m.capm11446
  br label %m.loop1448

str_stale1442:                                    ; preds = %str_gen_check1440
  %42 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1441

m.loop1448:                                       ; preds = %m.next1453, %str_ok1441
  %m.idx1456 = phi i64 [ %m.idx01447, %str_ok1441 ], [ %m.idx.next1503, %m.next1453 ]
  %m.tomb1457 = phi i64 [ -1, %str_ok1441 ], [ %m.next.tomb1501, %m.next1453 ]
  %m.probe1458 = phi i64 [ 0, %str_ok1441 ], [ %m.probe.next1504, %m.next1453 ]
  %m.reached.cap1459 = icmp eq i64 %m.probe1458, %m.cap1426
  %m.state.gep1460 = getelementptr i8, ptr %m.states1432, i64 %m.idx1456
  %m.state1461 = load i8, ptr %m.state.gep1460, align 1
  %m.is.empty1462 = icmp eq i8 %m.state1461, 0
  %m.stop1463 = or i1 %m.is.empty1462, %m.reached.cap1459
  br i1 %m.stop1463, label %m.empty1454, label %m.check.tomb1449

m.check.tomb1449:                                 ; preds = %m.loop1448
  %m.is.tomb1464 = icmp eq i8 %m.state1461, 2
  br i1 %m.is.tomb1464, label %m.tomb1450, label %m.found1451

m.tomb1450:                                       ; preds = %m.check.tomb1449
  %m.has.tomb1465 = icmp ne i64 %m.tomb1457, -1
  %m.tomb.sel1466 = select i1 %m.has.tomb1465, i64 %m.tomb1457, i64 %m.idx1456
  br label %m.next1453

m.found1451:                                      ; preds = %m.check.tomb1449
  %m.key.slot1467 = getelementptr ptr, ptr %m.keys1428, i64 %m.idx1456
  %mk.stored1468 = load ptr, ptr %m.key.slot1467, align 8
  %mk.slen1469 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1468, i32 0, i32 0
  %mk.slen1470 = load i64, ptr %mk.slen1469, align 8
  %mk.slen1471 = and i64 %mk.slen1470, 281474976710655
  %str.tag1472 = lshr i64 %mk.slen1470, 48
  %str.immortal1473 = icmp eq i64 %str.tag1472, 0
  br i1 %str.immortal1473, label %str_ok1475, label %str_gen_check1474

m.overwrite1452:                                  ; preds = %mk.eq.merge1492
  %m.val.slot1500 = getelementptr i64, ptr %m.vals1430, i64 %m.idx1456
  store i64 %a.len.query1197, ptr %m.val.slot1500, align 8
  br label %m.done1455

m.next1453:                                       ; preds = %mk.eq.merge1492, %m.tomb1450
  %m.next.tomb1501 = phi i64 [ %m.tomb.sel1466, %m.tomb1450 ], [ %m.tomb1457, %mk.eq.merge1492 ]
  %m.idx.add1502 = add i64 %m.idx1456, 1
  %m.idx.next1503 = and i64 %m.idx.add1502, %m.capm11446
  %m.probe.next1504 = add i64 %m.probe1458, 1
  br label %m.loop1448

m.empty1454:                                      ; preds = %m.loop1448
  %m.use.tomb1505 = icmp ne i64 %m.tomb1457, -1
  %m.ins.idx1506 = select i1 %m.use.tomb1505, i64 %m.tomb1457, i64 %m.idx1456
  %m.key.slot1507 = getelementptr ptr, ptr %m.keys1428, i64 %m.ins.idx1506
  store ptr %var.load1192, ptr %m.key.slot1507, align 8
  %m.val.slot1508 = getelementptr i64, ptr %m.vals1430, i64 %m.ins.idx1506
  store i64 %a.len.query1197, ptr %m.val.slot1508, align 8
  %m.ins.state.slot1509 = getelementptr i8, ptr %m.states1432, i64 %m.ins.idx1506
  store i8 1, ptr %m.ins.state.slot1509, align 1
  %m.count1510 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 0
  %m.count1511 = load i64, ptr %m.count1510, align 8
  %m.count.next1512 = add i64 %m.count1511, 1
  %m.count.gep1513 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 0
  store i64 %m.count.next1512, ptr %m.count.gep1513, align 8
  %m.ins.tombs.p1514 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1191, i32 0, i32 5
  %m.ins.tombs1515 = load i64, ptr %m.ins.tombs.p1514, align 8
  %m.tomb.dec1516 = select i1 %m.use.tomb1505, i64 1, i64 0
  %m.ins.tombs.next1517 = sub i64 %m.ins.tombs1515, %m.tomb.dec1516
  store i64 %m.ins.tombs.next1517, ptr %m.ins.tombs.p1514, align 8
  br label %m.done1455

m.done1455:                                       ; preds = %m.empty1454, %m.overwrite1452
  br label %m.done1228

str_gen_check1474:                                ; preds = %m.found1451
  %arena.cur1477 = call ptr @dva_arena_current()
  %tag.valid1478 = call i1 @dva_arena_validate_tag(ptr %arena.cur1477, i64 %str.tag1472)
  br i1 %tag.valid1478, label %str_ok1475, label %str_stale1476

str_ok1475:                                       ; preds = %str_stale1476, %str_gen_check1474, %m.found1451
  %mk.nlen1479 = getelementptr inbounds { i64, ptr }, ptr %var.load1192, i32 0, i32 0
  %mk.nlen1480 = load i64, ptr %mk.nlen1479, align 8
  %mk.nlen1481 = and i64 %mk.nlen1480, 281474976710655
  %str.tag1482 = lshr i64 %mk.nlen1480, 48
  %str.immortal1483 = icmp eq i64 %str.tag1482, 0
  br i1 %str.immortal1483, label %str_ok1485, label %str_gen_check1484

str_stale1476:                                    ; preds = %str_gen_check1474
  %43 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1475

str_gen_check1484:                                ; preds = %str_ok1475
  %arena.cur1487 = call ptr @dva_arena_current()
  %tag.valid1488 = call i1 @dva_arena_validate_tag(ptr %arena.cur1487, i64 %str.tag1482)
  br i1 %tag.valid1488, label %str_ok1485, label %str_stale1486

str_ok1485:                                       ; preds = %str_stale1486, %str_gen_check1484, %str_ok1475
  %mk.lenseq1489 = icmp eq i64 %mk.slen1471, %mk.nlen1481
  br i1 %mk.lenseq1489, label %mk.eq.then1490, label %mk.eq.else1491

str_stale1486:                                    ; preds = %str_gen_check1484
  %44 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1485

mk.eq.then1490:                                   ; preds = %str_ok1485
  %mk.sdata1493 = getelementptr inbounds { i64, ptr }, ptr %mk.stored1468, i32 0, i32 1
  %mk.sdata1494 = load ptr, ptr %mk.sdata1493, align 8
  %mk.ndata1495 = getelementptr inbounds { i64, ptr }, ptr %var.load1192, i32 0, i32 1
  %mk.ndata1496 = load ptr, ptr %mk.ndata1495, align 8
  %mk.memcmp1497 = call i32 @memcmp(ptr %mk.sdata1494, ptr %mk.ndata1496, i64 %mk.nlen1481)
  %mk.cmpeq1498 = icmp eq i32 %mk.memcmp1497, 0
  br label %mk.eq.merge1492

mk.eq.else1491:                                   ; preds = %str_ok1485
  br label %mk.eq.merge1492

mk.eq.merge1492:                                  ; preds = %mk.eq.else1491, %mk.eq.then1490
  %mk.eq1499 = phi i1 [ %mk.cmpeq1498, %mk.eq.then1490 ], [ false, %mk.eq.else1491 ]
  br i1 %mk.eq1499, label %m.overwrite1452, label %m.next1453

a.create1536:                                     ; preds = %choice.exit1190
  %arena.cur1538 = call ptr @dva_arena_current()
  %a.create1539 = call ptr @dva_arena_alloc(ptr %arena.cur1538, i64 24)
  %arena.cur1540 = call ptr @dva_arena_current()
  %a.buf1541 = call ptr @dva_arena_alloc(ptr %arena.cur1540, i64 128)
  %a.len.gep1542 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1539, i32 0, i32 0
  store i64 0, ptr %a.len.gep1542, align 8
  %a.data.gep1543 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1539, i32 0, i32 1
  store ptr %a.buf1541, ptr %a.data.gep1543, align 8
  %a.cap.gep1544 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1539, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1544, align 8
  store ptr %a.create1539, ptr %var.filtered_deps, align 8
  br label %a.after1537

a.after1537:                                      ; preds = %a.create1536, %choice.exit1190
  %a.load21545 = load ptr, ptr %var.filtered_deps, align 8
  %var.load1546 = load i64, ptr %var.j, align 8
  %arena.cur1547 = call ptr @dva_arena_current()
  %rec.alloc1548 = call ptr @dva_arena_alloc(ptr %arena.cur1547, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld1549 = getelementptr inbounds { ptr, ptr, i64 }, ptr %rec.alloc1548, i32 0, i32 0
  store ptr %var.load1532, ptr %rec.fld1549, align 8
  %rec.fld1550 = getelementptr inbounds { ptr, ptr, i64 }, ptr %rec.alloc1548, i32 0, i32 1
  store ptr %a.load21545, ptr %rec.fld1550, align 8
  %rec.fld1551 = getelementptr inbounds { ptr, ptr, i64 }, ptr %rec.alloc1548, i32 0, i32 2
  store i64 %var.load1546, ptr %rec.fld1551, align 8
  %fld.gep1552 = getelementptr inbounds { ptr, ptr }, ptr %var.load1531, i32 0, i32 0
  %a.fld.load = load ptr, ptr %fld.gep1552, align 8
  br label %a.check1553

a.check1553:                                      ; preds = %a.after1537
  %a.len1556 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.len1557 = load i64, ptr %a.len1556, align 8
  %a.cap1558 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 2
  %a.cap1559 = load i64, ptr %a.cap1558, align 8
  %a.needs.grow1560 = icmp eq i64 %a.len1557, %a.cap1559
  br i1 %a.needs.grow1560, label %a.grow1554, label %a.store1555

a.grow1554:                                       ; preds = %a.check1553
  call void @dva_array_grow(ptr %a.fld.load)
  br label %a.store1555

a.store1555:                                      ; preds = %a.grow1554, %a.check1553
  %a.cur.data1561 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 1
  %a.cur.data1562 = load ptr, ptr %a.cur.data1561, align 8
  %a.cur.len1563 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.cur.len1564 = load i64, ptr %a.cur.len1563, align 8
  %a.elem.gep1565 = getelementptr i64, ptr %a.cur.data1562, i64 %a.cur.len1564
  %slot.p2i1566 = ptrtoint ptr %rec.alloc1548 to i64
  store i64 %slot.p2i1566, ptr %a.elem.gep1565, align 8
  %a.next.len1567 = add i64 %a.cur.len1564, 1
  %b.len.gep1568 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  store i64 %a.next.len1567, ptr %b.len.gep1568, align 8
  br label %choice.exit973
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

define ptr @"dep_graph::init_tarjan_state"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.64 = alloca i64, align 8
  %loop.idx.64 = alloca i64, align 8
  %var.sccs = alloca ptr, align 8
  %var.counter = alloca ptr, align 8
  %var.stack_ptr = alloca ptr, align 8
  %var.stack = alloca ptr, align 8
  %var.on_stack = alloca ptr, align 8
  %var.lowlinks = alloca ptr, align 8
  %var.indices = alloca ptr, align 8
  %var.n = alloca i64, align 8
  store i64 %0, ptr %var.n, align 8
  store ptr null, ptr %var.indices, align 8
  store ptr null, ptr %var.lowlinks, align 8
  store ptr null, ptr %var.on_stack, align 8
  store ptr null, ptr %var.stack, align 8
  store ptr null, ptr %var.stack_ptr, align 8
  %a.load = load ptr, ptr %var.stack_ptr, align 8
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
  store ptr %a.create1, ptr %var.stack_ptr, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.stack_ptr, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len3 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap4 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len3, %a.cap4
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data5 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len6 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data5, i64 %a.cur.len6
  store i64 0, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len6, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  store ptr null, ptr %var.counter, align 8
  %a.load7 = load ptr, ptr %var.counter, align 8
  %a.null8 = icmp eq ptr %a.load7, null
  br i1 %a.null8, label %a.create9, label %a.after10

a.create9:                                        ; preds = %a.store
  %arena.cur11 = call ptr @dva_arena_current()
  %a.create12 = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 24)
  %arena.cur13 = call ptr @dva_arena_current()
  %a.buf14 = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 128)
  %a.len.gep15 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create12, i32 0, i32 0
  store i64 0, ptr %a.len.gep15, align 8
  %a.data.gep16 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create12, i32 0, i32 1
  store ptr %a.buf14, ptr %a.data.gep16, align 8
  %a.cap.gep17 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create12, i32 0, i32 2
  store i64 16, ptr %a.cap.gep17, align 8
  store ptr %a.create12, ptr %var.counter, align 8
  br label %a.after10

a.after10:                                        ; preds = %a.create9, %a.store
  %a.load218 = load ptr, ptr %var.counter, align 8
  br label %a.check19

a.check19:                                        ; preds = %a.after10
  %a.len22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load218, i32 0, i32 0
  %a.len23 = load i64, ptr %a.len22, align 8
  %a.cap24 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load218, i32 0, i32 2
  %a.cap25 = load i64, ptr %a.cap24, align 8
  %a.needs.grow26 = icmp eq i64 %a.len23, %a.cap25
  br i1 %a.needs.grow26, label %a.grow20, label %a.store21

a.grow20:                                         ; preds = %a.check19
  call void @dva_array_grow(ptr %a.load218)
  br label %a.store21

a.store21:                                        ; preds = %a.grow20, %a.check19
  %a.cur.data27 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load218, i32 0, i32 1
  %a.cur.data28 = load ptr, ptr %a.cur.data27, align 8
  %a.cur.len29 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load218, i32 0, i32 0
  %a.cur.len30 = load i64, ptr %a.cur.len29, align 8
  %a.elem.gep31 = getelementptr i64, ptr %a.cur.data28, i64 %a.cur.len30
  store i64 0, ptr %a.elem.gep31, align 8
  %a.next.len32 = add i64 %a.cur.len30, 1
  %b.len.gep33 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load218, i32 0, i32 0
  store i64 %a.next.len32, ptr %b.len.gep33, align 8
  store ptr null, ptr %var.sccs, align 8
  %var.load = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.64, align 8
  br label %loop.header.64

loop.header.64:                                   ; preds = %loop.latch.64, %a.store21
  %counter.load = load i64, ptr %loop.idx.64, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load
  br i1 %loop.cond, label %loop.body.64, label %loop.exit.nat.64

loop.body.64:                                     ; preds = %loop.header.64
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.64, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %a.load34 = load ptr, ptr %var.indices, align 8
  %a.null35 = icmp eq ptr %a.load34, null
  br i1 %a.null35, label %a.create36, label %a.after37

loop.exit.nat.64:                                 ; preds = %loop.header.64
  br label %loop.exit.64

loop.latch.64:                                    ; preds = %a.store102
  %step.val = load i64, ptr %loop.step.64, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.64, align 8
  br label %loop.header.64

loop.exit.64:                                     ; preds = %loop.exit.nat.64
  %var.load115 = load ptr, ptr %var.indices, align 8
  %a.load116 = load ptr, ptr %var.indices, align 8
  %a.null117 = icmp eq ptr %a.load116, null
  br i1 %a.null117, label %a.create118, label %a.after119

a.create36:                                       ; preds = %loop.body.64
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
  store ptr %a.create39, ptr %var.indices, align 8
  br label %a.after37

a.after37:                                        ; preds = %a.create36, %loop.body.64
  %a.load245 = load ptr, ptr %var.indices, align 8
  br label %a.check46

a.check46:                                        ; preds = %a.after37
  %a.len49 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load245, i32 0, i32 0
  %a.len50 = load i64, ptr %a.len49, align 8
  %a.cap51 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load245, i32 0, i32 2
  %a.cap52 = load i64, ptr %a.cap51, align 8
  %a.needs.grow53 = icmp eq i64 %a.len50, %a.cap52
  br i1 %a.needs.grow53, label %a.grow47, label %a.store48

a.grow47:                                         ; preds = %a.check46
  call void @dva_array_grow(ptr %a.load245)
  br label %a.store48

a.store48:                                        ; preds = %a.grow47, %a.check46
  %a.cur.data54 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load245, i32 0, i32 1
  %a.cur.data55 = load ptr, ptr %a.cur.data54, align 8
  %a.cur.len56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load245, i32 0, i32 0
  %a.cur.len57 = load i64, ptr %a.cur.len56, align 8
  %a.elem.gep58 = getelementptr i64, ptr %a.cur.data55, i64 %a.cur.len57
  store i64 -1, ptr %a.elem.gep58, align 8
  %a.next.len59 = add i64 %a.cur.len57, 1
  %b.len.gep60 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load245, i32 0, i32 0
  store i64 %a.next.len59, ptr %b.len.gep60, align 8
  %a.load61 = load ptr, ptr %var.lowlinks, align 8
  %a.null62 = icmp eq ptr %a.load61, null
  br i1 %a.null62, label %a.create63, label %a.after64

a.create63:                                       ; preds = %a.store48
  %arena.cur65 = call ptr @dva_arena_current()
  %a.create66 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 24)
  %arena.cur67 = call ptr @dva_arena_current()
  %a.buf68 = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 128)
  %a.len.gep69 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create66, i32 0, i32 0
  store i64 0, ptr %a.len.gep69, align 8
  %a.data.gep70 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create66, i32 0, i32 1
  store ptr %a.buf68, ptr %a.data.gep70, align 8
  %a.cap.gep71 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create66, i32 0, i32 2
  store i64 16, ptr %a.cap.gep71, align 8
  store ptr %a.create66, ptr %var.lowlinks, align 8
  br label %a.after64

a.after64:                                        ; preds = %a.create63, %a.store48
  %a.load272 = load ptr, ptr %var.lowlinks, align 8
  br label %a.check73

a.check73:                                        ; preds = %a.after64
  %a.len76 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load272, i32 0, i32 0
  %a.len77 = load i64, ptr %a.len76, align 8
  %a.cap78 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load272, i32 0, i32 2
  %a.cap79 = load i64, ptr %a.cap78, align 8
  %a.needs.grow80 = icmp eq i64 %a.len77, %a.cap79
  br i1 %a.needs.grow80, label %a.grow74, label %a.store75

a.grow74:                                         ; preds = %a.check73
  call void @dva_array_grow(ptr %a.load272)
  br label %a.store75

a.store75:                                        ; preds = %a.grow74, %a.check73
  %a.cur.data81 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load272, i32 0, i32 1
  %a.cur.data82 = load ptr, ptr %a.cur.data81, align 8
  %a.cur.len83 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load272, i32 0, i32 0
  %a.cur.len84 = load i64, ptr %a.cur.len83, align 8
  %a.elem.gep85 = getelementptr i64, ptr %a.cur.data82, i64 %a.cur.len84
  store i64 0, ptr %a.elem.gep85, align 8
  %a.next.len86 = add i64 %a.cur.len84, 1
  %b.len.gep87 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load272, i32 0, i32 0
  store i64 %a.next.len86, ptr %b.len.gep87, align 8
  %a.load88 = load ptr, ptr %var.on_stack, align 8
  %a.null89 = icmp eq ptr %a.load88, null
  br i1 %a.null89, label %a.create90, label %a.after91

a.create90:                                       ; preds = %a.store75
  %arena.cur92 = call ptr @dva_arena_current()
  %a.create93 = call ptr @dva_arena_alloc(ptr %arena.cur92, i64 24)
  %arena.cur94 = call ptr @dva_arena_current()
  %a.buf95 = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 128)
  %a.len.gep96 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create93, i32 0, i32 0
  store i64 0, ptr %a.len.gep96, align 8
  %a.data.gep97 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create93, i32 0, i32 1
  store ptr %a.buf95, ptr %a.data.gep97, align 8
  %a.cap.gep98 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create93, i32 0, i32 2
  store i64 16, ptr %a.cap.gep98, align 8
  store ptr %a.create93, ptr %var.on_stack, align 8
  br label %a.after91

a.after91:                                        ; preds = %a.create90, %a.store75
  %a.load299 = load ptr, ptr %var.on_stack, align 8
  br label %a.check100

a.check100:                                       ; preds = %a.after91
  %a.len103 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load299, i32 0, i32 0
  %a.len104 = load i64, ptr %a.len103, align 8
  %a.cap105 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load299, i32 0, i32 2
  %a.cap106 = load i64, ptr %a.cap105, align 8
  %a.needs.grow107 = icmp eq i64 %a.len104, %a.cap106
  br i1 %a.needs.grow107, label %a.grow101, label %a.store102

a.grow101:                                        ; preds = %a.check100
  call void @dva_array_grow(ptr %a.load299)
  br label %a.store102

a.store102:                                       ; preds = %a.grow101, %a.check100
  %a.cur.data108 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load299, i32 0, i32 1
  %a.cur.data109 = load ptr, ptr %a.cur.data108, align 8
  %a.cur.len110 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load299, i32 0, i32 0
  %a.cur.len111 = load i64, ptr %a.cur.len110, align 8
  %a.elem.gep112 = getelementptr i64, ptr %a.cur.data109, i64 %a.cur.len111
  store i64 0, ptr %a.elem.gep112, align 8
  %a.next.len113 = add i64 %a.cur.len111, 1
  %b.len.gep114 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load299, i32 0, i32 0
  store i64 %a.next.len113, ptr %b.len.gep114, align 8
  br label %loop.latch.64

a.create118:                                      ; preds = %loop.exit.64
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
  store ptr %a.create121, ptr %var.indices, align 8
  br label %a.after119

a.after119:                                       ; preds = %a.create118, %loop.exit.64
  %a.load2127 = load ptr, ptr %var.indices, align 8
  %var.load128 = load ptr, ptr %var.lowlinks, align 8
  %a.load129 = load ptr, ptr %var.lowlinks, align 8
  %a.null130 = icmp eq ptr %a.load129, null
  br i1 %a.null130, label %a.create131, label %a.after132

a.create131:                                      ; preds = %a.after119
  %arena.cur133 = call ptr @dva_arena_current()
  %a.create134 = call ptr @dva_arena_alloc(ptr %arena.cur133, i64 24)
  %arena.cur135 = call ptr @dva_arena_current()
  %a.buf136 = call ptr @dva_arena_alloc(ptr %arena.cur135, i64 128)
  %a.len.gep137 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create134, i32 0, i32 0
  store i64 0, ptr %a.len.gep137, align 8
  %a.data.gep138 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create134, i32 0, i32 1
  store ptr %a.buf136, ptr %a.data.gep138, align 8
  %a.cap.gep139 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create134, i32 0, i32 2
  store i64 16, ptr %a.cap.gep139, align 8
  store ptr %a.create134, ptr %var.lowlinks, align 8
  br label %a.after132

a.after132:                                       ; preds = %a.create131, %a.after119
  %a.load2140 = load ptr, ptr %var.lowlinks, align 8
  %var.load141 = load ptr, ptr %var.on_stack, align 8
  %a.load142 = load ptr, ptr %var.on_stack, align 8
  %a.null143 = icmp eq ptr %a.load142, null
  br i1 %a.null143, label %a.create144, label %a.after145

a.create144:                                      ; preds = %a.after132
  %arena.cur146 = call ptr @dva_arena_current()
  %a.create147 = call ptr @dva_arena_alloc(ptr %arena.cur146, i64 24)
  %arena.cur148 = call ptr @dva_arena_current()
  %a.buf149 = call ptr @dva_arena_alloc(ptr %arena.cur148, i64 128)
  %a.len.gep150 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create147, i32 0, i32 0
  store i64 0, ptr %a.len.gep150, align 8
  %a.data.gep151 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create147, i32 0, i32 1
  store ptr %a.buf149, ptr %a.data.gep151, align 8
  %a.cap.gep152 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create147, i32 0, i32 2
  store i64 16, ptr %a.cap.gep152, align 8
  store ptr %a.create147, ptr %var.on_stack, align 8
  br label %a.after145

a.after145:                                       ; preds = %a.create144, %a.after132
  %a.load2153 = load ptr, ptr %var.on_stack, align 8
  %var.load154 = load ptr, ptr %var.stack, align 8
  %a.load155 = load ptr, ptr %var.stack, align 8
  %a.null156 = icmp eq ptr %a.load155, null
  br i1 %a.null156, label %a.create157, label %a.after158

a.create157:                                      ; preds = %a.after145
  %arena.cur159 = call ptr @dva_arena_current()
  %a.create160 = call ptr @dva_arena_alloc(ptr %arena.cur159, i64 24)
  %arena.cur161 = call ptr @dva_arena_current()
  %a.buf162 = call ptr @dva_arena_alloc(ptr %arena.cur161, i64 128)
  %a.len.gep163 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create160, i32 0, i32 0
  store i64 0, ptr %a.len.gep163, align 8
  %a.data.gep164 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create160, i32 0, i32 1
  store ptr %a.buf162, ptr %a.data.gep164, align 8
  %a.cap.gep165 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create160, i32 0, i32 2
  store i64 16, ptr %a.cap.gep165, align 8
  store ptr %a.create160, ptr %var.stack, align 8
  br label %a.after158

a.after158:                                       ; preds = %a.create157, %a.after145
  %a.load2166 = load ptr, ptr %var.stack, align 8
  %var.load167 = load ptr, ptr %var.stack_ptr, align 8
  %a.load168 = load ptr, ptr %var.stack_ptr, align 8
  %a.null169 = icmp eq ptr %a.load168, null
  br i1 %a.null169, label %a.create170, label %a.after171

a.create170:                                      ; preds = %a.after158
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
  store ptr %a.create173, ptr %var.stack_ptr, align 8
  br label %a.after171

a.after171:                                       ; preds = %a.create170, %a.after158
  %a.load2179 = load ptr, ptr %var.stack_ptr, align 8
  %var.load180 = load ptr, ptr %var.counter, align 8
  %a.load181 = load ptr, ptr %var.counter, align 8
  %a.null182 = icmp eq ptr %a.load181, null
  br i1 %a.null182, label %a.create183, label %a.after184

a.create183:                                      ; preds = %a.after171
  %arena.cur185 = call ptr @dva_arena_current()
  %a.create186 = call ptr @dva_arena_alloc(ptr %arena.cur185, i64 24)
  %arena.cur187 = call ptr @dva_arena_current()
  %a.buf188 = call ptr @dva_arena_alloc(ptr %arena.cur187, i64 128)
  %a.len.gep189 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create186, i32 0, i32 0
  store i64 0, ptr %a.len.gep189, align 8
  %a.data.gep190 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create186, i32 0, i32 1
  store ptr %a.buf188, ptr %a.data.gep190, align 8
  %a.cap.gep191 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create186, i32 0, i32 2
  store i64 16, ptr %a.cap.gep191, align 8
  store ptr %a.create186, ptr %var.counter, align 8
  br label %a.after184

a.after184:                                       ; preds = %a.create183, %a.after171
  %a.load2192 = load ptr, ptr %var.counter, align 8
  %var.load193 = load ptr, ptr %var.sccs, align 8
  %a.load194 = load ptr, ptr %var.sccs, align 8
  %a.null195 = icmp eq ptr %a.load194, null
  br i1 %a.null195, label %a.create196, label %a.after197

a.create196:                                      ; preds = %a.after184
  %arena.cur198 = call ptr @dva_arena_current()
  %a.create199 = call ptr @dva_arena_alloc(ptr %arena.cur198, i64 24)
  %arena.cur200 = call ptr @dva_arena_current()
  %a.buf201 = call ptr @dva_arena_alloc(ptr %arena.cur200, i64 128)
  %a.len.gep202 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create199, i32 0, i32 0
  store i64 0, ptr %a.len.gep202, align 8
  %a.data.gep203 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create199, i32 0, i32 1
  store ptr %a.buf201, ptr %a.data.gep203, align 8
  %a.cap.gep204 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create199, i32 0, i32 2
  store i64 16, ptr %a.cap.gep204, align 8
  store ptr %a.create199, ptr %var.sccs, align 8
  br label %a.after197

a.after197:                                       ; preds = %a.create196, %a.after184
  %a.load2205 = load ptr, ptr %var.sccs, align 8
  %arena.cur206 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur206, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load2127, ptr %rec.fld, align 8
  %rec.fld207 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %a.load2140, ptr %rec.fld207, align 8
  %rec.fld208 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.load2153, ptr %rec.fld208, align 8
  %rec.fld209 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 3
  store ptr %a.load2166, ptr %rec.fld209, align 8
  %rec.fld210 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 4
  store ptr %a.load2179, ptr %rec.fld210, align 8
  %rec.fld211 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 5
  store ptr %a.load2192, ptr %rec.fld211, align 8
  %rec.fld212 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 6
  store ptr %a.load2205, ptr %rec.fld212, align 8
  ret ptr %rec.alloc
}

define void @"dep_graph::push_stack"(ptr %0, i64 %1) #1 {
entry:
  %var._212 = alloca ptr, align 8
  %var._211 = alloca ptr, align 8
  %var._210 = alloca ptr, align 8
  %var._96 = alloca ptr, align 8
  %var._95 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.stk = alloca ptr, align 8
  %var.sp = alloca i64, align 8
  %var.s_ptr = alloca ptr, align 8
  %var.u = alloca i64, align 8
  %var.state = alloca ptr, align 8
  store ptr %0, ptr %var.state, align 8
  store i64 %1, ptr %var.u, align 8
  %var.load = load ptr, ptr %var.state, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 4
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.s_ptr, align 8
  %var.load1 = load ptr, ptr %var.s_ptr, align 8
  %a.load = load ptr, ptr %var.s_ptr, align 8
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
  store ptr %a.create2, ptr %var.s_ptr, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.s_ptr, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.rd.len4 = load i64, ptr %a.rd.len, align 8
  %a.rd.lt = icmp slt i64 0, %a.rd.len4
  %a.rd.bounds = and i1 true, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.rd.data5 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data5, i64 0
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after
  %arena.cur6 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 267, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 17, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur7 = call ptr @dva_arena_current()
  %err.alloc8 = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 56)
  %err.code.gep9 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 0
  store i64 4011, ptr %err.code.gep9, align 8
  %err.msg.gep10 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep10, align 8
  %err.file.gep11 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep11, align 8
  %err.line.gep12 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 3
  store i64 267, ptr %err.line.gep12, align 8
  %err.col.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 4
  store i64 17, ptr %err.col.gep13, align 8
  %err.ctx.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 5
  %err.ctx0.gep15 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep14, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep15, align 8
  %err.ctx1.gep16 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep14, i32 0, i32 1
  store i64 %a.rd.len4, ptr %err.ctx1.gep16, align 8
  %err.p2i17 = ptrtoint ptr %err.alloc8 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i17, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.65, label %unwrap.abort.65

unwrap.pos.65:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %unwrap.pay.pos, ptr %var.sp, align 8
  %var.load37 = load ptr, ptr %var.state, align 8
  %fld.gep38 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load37, i32 0, i32 3
  %fld.load39 = load ptr, ptr %fld.gep38, align 8
  store ptr %fld.load39, ptr %var.stk, align 8
  %var.load40 = load i64, ptr %var.sp, align 8
  %var.load41 = load ptr, ptr %var.stk, align 8
  %a.load42 = load ptr, ptr %var.stk, align 8
  %a.null43 = icmp eq ptr %a.load42, null
  br i1 %a.null43, label %a.create44, label %a.after45

unwrap.abort.65:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep18 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep18, align 8
  %err.msg.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep19, align 8
  %err.file.gep20 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep20, align 8
  %err.line.gep21 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep21, align 8
  %err.col.gep22 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep22, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len23 = load i64, ptr %err.msg.len, align 8
  %err.msg.len24 = and i64 %err.msg.len23, 281474976710655
  %str.tag = lshr i64 %err.msg.len23, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %unwrap.abort.65
  %arena.cur25 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur25, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %unwrap.abort.65
  %err.msg.len32 = trunc i64 %err.msg.len24 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data26 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len27 = load i64, ptr %err.file.len, align 8
  %err.file.len28 = and i64 %err.file.len27, 281474976710655
  %str.tag29 = lshr i64 %err.file.len27, 48
  %str.immortal30 = icmp eq i64 %str.tag29, 0
  br i1 %str.immortal30, label %str_ok32, label %str_gen_check31

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check31:                                  ; preds = %str_ok
  %arena.cur34 = call ptr @dva_arena_current()
  %tag.valid35 = call i1 @dva_arena_validate_tag(ptr %arena.cur34, i64 %str.tag29)
  br i1 %tag.valid35, label %str_ok32, label %str_stale33

str_ok32:                                         ; preds = %str_stale33, %str_gen_check31, %str_ok
  %err.file.len32 = trunc i64 %err.file.len28 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data36 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale33:                                      ; preds = %str_gen_check31
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok32

err.thread:                                       ; preds = %str_ok32
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok32
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data26, i32 %err.file.len32, ptr %err.file.data36, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create44:                                       ; preds = %unwrap.pos.65
  %arena.cur46 = call ptr @dva_arena_current()
  %a.create47 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 24)
  %arena.cur48 = call ptr @dva_arena_current()
  %a.buf49 = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 128)
  %a.len.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create47, i32 0, i32 0
  store i64 0, ptr %a.len.gep50, align 8
  %a.data.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create47, i32 0, i32 1
  store ptr %a.buf49, ptr %a.data.gep51, align 8
  %a.cap.gep52 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create47, i32 0, i32 2
  store i64 16, ptr %a.cap.gep52, align 8
  store ptr %a.create47, ptr %var.stk, align 8
  br label %a.after45

a.after45:                                        ; preds = %a.create44, %unwrap.pos.65
  %a.load253 = load ptr, ptr %var.stk, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load253, i32 0, i32 0
  %a.len.query54 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp slt i64 %var.load40, %a.len.query54
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.after45
  %var.load55 = load ptr, ptr %var.stk, align 8
  %a.load56 = load ptr, ptr %var.stk, align 8
  %a.null57 = icmp eq ptr %a.load56, null
  br i1 %a.null57, label %a.create58, label %a.after59

choice.else:                                      ; preds = %a.after45
  %var.load140 = load i64, ptr %var.u, align 8
  %a.load141 = load ptr, ptr %var.stk, align 8
  %a.null142 = icmp eq ptr %a.load141, null
  br i1 %a.null142, label %a.create143, label %a.after144

choice.exit:                                      ; preds = %a.store, %choice.exit94
  %var.load158 = load ptr, ptr %var.s_ptr, align 8
  %a.load159 = load ptr, ptr %var.s_ptr, align 8
  %a.null160 = icmp eq ptr %a.load159, null
  br i1 %a.null160, label %a.create161, label %a.after162

a.create58:                                       ; preds = %choice.then
  %arena.cur60 = call ptr @dva_arena_current()
  %a.create61 = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 24)
  %arena.cur62 = call ptr @dva_arena_current()
  %a.buf63 = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 128)
  %a.len.gep64 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create61, i32 0, i32 0
  store i64 0, ptr %a.len.gep64, align 8
  %a.data.gep65 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create61, i32 0, i32 1
  store ptr %a.buf63, ptr %a.data.gep65, align 8
  %a.cap.gep66 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create61, i32 0, i32 2
  store i64 16, ptr %a.cap.gep66, align 8
  store ptr %a.create61, ptr %var.stk, align 8
  br label %a.after59

a.after59:                                        ; preds = %a.create58, %choice.then
  %a.load267 = load ptr, ptr %var.stk, align 8
  %var.load68 = load i64, ptr %var.sp, align 8
  %var.load69 = load i64, ptr %var.u, align 8
  %a.wr.nonnull = icmp ne ptr %a.load267, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after59
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load267, i32 0, i32 0
  %a.wr.len70 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load68, 0
  %a.wr.lt = icmp slt i64 %var.load68, %a.wr.len70
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load267, i32 0, i32 1
  %a.wr.data71 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data71, i64 %var.load68
  store i64 %var.load69, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after59
  %arena.cur72 = call ptr @dva_arena_current()
  %err.alloc73 = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 56)
  %err.code.gep74 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc73, i32 0, i32 0
  store i64 4011, ptr %err.code.gep74, align 8
  %err.msg.gep75 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc73, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep75, align 8
  %err.file.gep76 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc73, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep76, align 8
  %err.line.gep77 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc73, i32 0, i32 3
  store i64 0, ptr %err.line.gep77, align 8
  %err.col.gep78 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc73, i32 0, i32 4
  store i64 0, ptr %err.col.gep78, align 8
  %err.ctx.gep79 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc73, i32 0, i32 5
  %err.ctx0.gep80 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep79, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep80, align 8
  %err.ctx1.gep81 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep79, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep81, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur82 = call ptr @dva_arena_current()
  %err.alloc83 = call ptr @dva_arena_alloc(ptr %arena.cur82, i64 56)
  %err.code.gep84 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc83, i32 0, i32 0
  store i64 4011, ptr %err.code.gep84, align 8
  %err.msg.gep85 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc83, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep85, align 8
  %err.file.gep86 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc83, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep86, align 8
  %err.line.gep87 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc83, i32 0, i32 3
  store i64 0, ptr %err.line.gep87, align 8
  %err.col.gep88 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc83, i32 0, i32 4
  store i64 0, ptr %err.col.gep88, align 8
  %err.ctx.gep89 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc83, i32 0, i32 5
  %err.ctx0.gep90 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep89, i32 0, i32 0
  store i64 %var.load68, ptr %err.ctx0.gep90, align 8
  %err.ctx1.gep91 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep89, i32 0, i32 1
  store i64 %a.wr.len70, ptr %err.ctx1.gep91, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc73, %a.wr.err.null ], [ %err.alloc83, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then92, label %choice.else93

choice.then92:                                    ; preds = %a.wr.done
  br label %choice.exit94

choice.else93:                                    ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._, align 8
  store ptr %a.wr.niche, ptr %var._95, align 8
  store ptr %a.wr.niche, ptr %var._96, align 8
  %err.code.gep97 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code98 = load i64, ptr %err.code.gep97, align 8
  %err.msg.gep99 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct100 = load ptr, ptr %err.msg.gep99, align 8
  %err.file.gep101 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct102 = load ptr, ptr %err.file.gep101, align 8
  %err.line.gep103 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line104 = load i64, ptr %err.line.gep103, align 8
  %err.col.gep105 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col106 = load i64, ptr %err.col.gep105, align 8
  %err.msg.len107 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct100, i32 0, i32 0
  %err.msg.len108 = load i64, ptr %err.msg.len107, align 8
  %err.msg.len109 = and i64 %err.msg.len108, 281474976710655
  %str.tag110 = lshr i64 %err.msg.len108, 48
  %str.immortal111 = icmp eq i64 %str.tag110, 0
  br i1 %str.immortal111, label %str_ok113, label %str_gen_check112

choice.exit94:                                    ; preds = %err.abort, %choice.then92
  br label %choice.exit

str_gen_check112:                                 ; preds = %choice.else93
  %arena.cur115 = call ptr @dva_arena_current()
  %tag.valid116 = call i1 @dva_arena_validate_tag(ptr %arena.cur115, i64 %str.tag110)
  br i1 %tag.valid116, label %str_ok113, label %str_stale114

str_ok113:                                        ; preds = %str_stale114, %str_gen_check112, %choice.else93
  %err.msg.len32117 = trunc i64 %err.msg.len109 to i32
  %err.msg.data118 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct100, i32 0, i32 1
  %err.msg.data119 = load ptr, ptr %err.msg.data118, align 8
  %err.file.len120 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct102, i32 0, i32 0
  %err.file.len121 = load i64, ptr %err.file.len120, align 8
  %err.file.len122 = and i64 %err.file.len121, 281474976710655
  %str.tag123 = lshr i64 %err.file.len121, 48
  %str.immortal124 = icmp eq i64 %str.tag123, 0
  br i1 %str.immortal124, label %str_ok126, label %str_gen_check125

str_stale114:                                     ; preds = %str_gen_check112
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok113

str_gen_check125:                                 ; preds = %str_ok113
  %arena.cur128 = call ptr @dva_arena_current()
  %tag.valid129 = call i1 @dva_arena_validate_tag(ptr %arena.cur128, i64 %str.tag123)
  br i1 %tag.valid129, label %str_ok126, label %str_stale127

str_ok126:                                        ; preds = %str_stale127, %str_gen_check125, %str_ok113
  %err.file.len32130 = trunc i64 %err.file.len122 to i32
  %err.file.data131 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct102, i32 0, i32 1
  %err.file.data132 = load ptr, ptr %err.file.data131, align 8
  %err.thread.rec133 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread134 = icmp ne ptr %err.thread.rec133, null
  br i1 %err.is.thread134, label %err.thread135, label %err.normal136

str_stale127:                                     ; preds = %str_gen_check125
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok126

err.thread135:                                    ; preds = %str_ok126
  %err.haserr.gep137 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec133, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep137, align 8
  %err.err.gep138 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec133, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep138, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal136:                                    ; preds = %str_ok126
  %err.panic.printf139 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code98, i32 %err.msg.len32117, ptr %err.msg.data119, i32 %err.file.len32130, ptr %err.file.data132, i64 %err.line104, i64 %err.col106)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit94

a.create143:                                      ; preds = %choice.else
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
  store ptr %a.create146, ptr %var.stk, align 8
  br label %a.after144

a.after144:                                       ; preds = %a.create143, %choice.else
  %a.load2152 = load ptr, ptr %var.stk, align 8
  br label %a.check

a.check:                                          ; preds = %a.after144
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2152, i32 0, i32 0
  %a.len153 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2152, i32 0, i32 2
  %a.cap154 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len153, %a.cap154
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2152)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2152, i32 0, i32 1
  %a.cur.data155 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2152, i32 0, i32 0
  %a.cur.len156 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep157 = getelementptr i64, ptr %a.cur.data155, i64 %a.cur.len156
  store i64 %var.load140, ptr %a.elem.gep157, align 8
  %a.next.len = add i64 %a.cur.len156, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2152, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit

a.create161:                                      ; preds = %choice.exit
  %arena.cur163 = call ptr @dva_arena_current()
  %a.create164 = call ptr @dva_arena_alloc(ptr %arena.cur163, i64 24)
  %arena.cur165 = call ptr @dva_arena_current()
  %a.buf166 = call ptr @dva_arena_alloc(ptr %arena.cur165, i64 128)
  %a.len.gep167 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create164, i32 0, i32 0
  store i64 0, ptr %a.len.gep167, align 8
  %a.data.gep168 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create164, i32 0, i32 1
  store ptr %a.buf166, ptr %a.data.gep168, align 8
  %a.cap.gep169 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create164, i32 0, i32 2
  store i64 16, ptr %a.cap.gep169, align 8
  store ptr %a.create164, ptr %var.s_ptr, align 8
  br label %a.after162

a.after162:                                       ; preds = %a.create161, %choice.exit
  %a.load2170 = load ptr, ptr %var.s_ptr, align 8
  %var.load171 = load i64, ptr %var.sp, align 8
  %addtmp = add i64 %var.load171, 1
  %a.wr.nonnull172 = icmp ne ptr %a.load2170, null
  br i1 %a.wr.nonnull172, label %a.wr.check173, label %a.wr.err.null175

a.wr.check173:                                    ; preds = %a.after162
  %a.wr.len178 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2170, i32 0, i32 0
  %a.wr.len179 = load i64, ptr %a.wr.len178, align 8
  %a.wr.lt180 = icmp slt i64 0, %a.wr.len179
  %a.wr.bounds181 = and i1 true, %a.wr.lt180
  br i1 %a.wr.bounds181, label %a.wr.ok174, label %a.wr.err.oob176

a.wr.ok174:                                       ; preds = %a.wr.check173
  %a.wr.data182 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2170, i32 0, i32 1
  %a.wr.data183 = load ptr, ptr %a.wr.data182, align 8
  %a.elem.gep184 = getelementptr i64, ptr %a.wr.data183, i64 0
  store i64 %addtmp, ptr %a.elem.gep184, align 8
  br label %a.wr.done177

a.wr.err.null175:                                 ; preds = %a.after162
  %arena.cur185 = call ptr @dva_arena_current()
  %err.alloc186 = call ptr @dva_arena_alloc(ptr %arena.cur185, i64 56)
  %err.code.gep187 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc186, i32 0, i32 0
  store i64 4011, ptr %err.code.gep187, align 8
  %err.msg.gep188 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc186, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep188, align 8
  %err.file.gep189 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc186, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep189, align 8
  %err.line.gep190 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc186, i32 0, i32 3
  store i64 0, ptr %err.line.gep190, align 8
  %err.col.gep191 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc186, i32 0, i32 4
  store i64 0, ptr %err.col.gep191, align 8
  %err.ctx.gep192 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc186, i32 0, i32 5
  %err.ctx0.gep193 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep192, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep193, align 8
  %err.ctx1.gep194 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep192, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep194, align 8
  br label %a.wr.done177

a.wr.err.oob176:                                  ; preds = %a.wr.check173
  %arena.cur195 = call ptr @dva_arena_current()
  %err.alloc196 = call ptr @dva_arena_alloc(ptr %arena.cur195, i64 56)
  %err.code.gep197 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc196, i32 0, i32 0
  store i64 4011, ptr %err.code.gep197, align 8
  %err.msg.gep198 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc196, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep198, align 8
  %err.file.gep199 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc196, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep199, align 8
  %err.line.gep200 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc196, i32 0, i32 3
  store i64 0, ptr %err.line.gep200, align 8
  %err.col.gep201 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc196, i32 0, i32 4
  store i64 0, ptr %err.col.gep201, align 8
  %err.ctx.gep202 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc196, i32 0, i32 5
  %err.ctx0.gep203 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep202, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep203, align 8
  %err.ctx1.gep204 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep202, i32 0, i32 1
  store i64 %a.wr.len179, ptr %err.ctx1.gep204, align 8
  br label %a.wr.done177

a.wr.done177:                                     ; preds = %a.wr.err.oob176, %a.wr.err.null175, %a.wr.ok174
  %a.wr.niche205 = phi ptr [ null, %a.wr.ok174 ], [ %err.alloc186, %a.wr.err.null175 ], [ %err.alloc196, %a.wr.err.oob176 ]
  %niche.eq.null206 = icmp eq ptr %a.wr.niche205, null
  br i1 %niche.eq.null206, label %choice.then207, label %choice.else208

choice.then207:                                   ; preds = %a.wr.done177
  br label %choice.exit209

choice.else208:                                   ; preds = %a.wr.done177
  store ptr %a.wr.niche205, ptr %var._210, align 8
  store ptr %a.wr.niche205, ptr %var._211, align 8
  store ptr %a.wr.niche205, ptr %var._212, align 8
  %err.code.gep213 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche205, i32 0, i32 0
  %err.code214 = load i64, ptr %err.code.gep213, align 8
  %err.msg.gep215 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche205, i32 0, i32 1
  %err.msg.struct216 = load ptr, ptr %err.msg.gep215, align 8
  %err.file.gep217 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche205, i32 0, i32 2
  %err.file.struct218 = load ptr, ptr %err.file.gep217, align 8
  %err.line.gep219 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche205, i32 0, i32 3
  %err.line220 = load i64, ptr %err.line.gep219, align 8
  %err.col.gep221 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche205, i32 0, i32 4
  %err.col222 = load i64, ptr %err.col.gep221, align 8
  %err.msg.len223 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct216, i32 0, i32 0
  %err.msg.len224 = load i64, ptr %err.msg.len223, align 8
  %err.msg.len225 = and i64 %err.msg.len224, 281474976710655
  %str.tag226 = lshr i64 %err.msg.len224, 48
  %str.immortal227 = icmp eq i64 %str.tag226, 0
  br i1 %str.immortal227, label %str_ok229, label %str_gen_check228

choice.exit209:                                   ; preds = %err.abort256, %choice.then207
  ret void

str_gen_check228:                                 ; preds = %choice.else208
  %arena.cur231 = call ptr @dva_arena_current()
  %tag.valid232 = call i1 @dva_arena_validate_tag(ptr %arena.cur231, i64 %str.tag226)
  br i1 %tag.valid232, label %str_ok229, label %str_stale230

str_ok229:                                        ; preds = %str_stale230, %str_gen_check228, %choice.else208
  %err.msg.len32233 = trunc i64 %err.msg.len225 to i32
  %err.msg.data234 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct216, i32 0, i32 1
  %err.msg.data235 = load ptr, ptr %err.msg.data234, align 8
  %err.file.len236 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct218, i32 0, i32 0
  %err.file.len237 = load i64, ptr %err.file.len236, align 8
  %err.file.len238 = and i64 %err.file.len237, 281474976710655
  %str.tag239 = lshr i64 %err.file.len237, 48
  %str.immortal240 = icmp eq i64 %str.tag239, 0
  br i1 %str.immortal240, label %str_ok242, label %str_gen_check241

str_stale230:                                     ; preds = %str_gen_check228
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok229

str_gen_check241:                                 ; preds = %str_ok229
  %arena.cur244 = call ptr @dva_arena_current()
  %tag.valid245 = call i1 @dva_arena_validate_tag(ptr %arena.cur244, i64 %str.tag239)
  br i1 %tag.valid245, label %str_ok242, label %str_stale243

str_ok242:                                        ; preds = %str_stale243, %str_gen_check241, %str_ok229
  %err.file.len32246 = trunc i64 %err.file.len238 to i32
  %err.file.data247 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct218, i32 0, i32 1
  %err.file.data248 = load ptr, ptr %err.file.data247, align 8
  %err.thread.rec249 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread250 = icmp ne ptr %err.thread.rec249, null
  br i1 %err.is.thread250, label %err.thread251, label %err.normal252

str_stale243:                                     ; preds = %str_gen_check241
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok242

err.thread251:                                    ; preds = %str_ok242
  %err.haserr.gep253 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec249, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep253, align 8
  %err.err.gep254 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec249, i32 0, i32 7
  store ptr %a.wr.niche205, ptr %err.err.gep254, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal252:                                    ; preds = %str_ok242
  %err.panic.printf255 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code214, i32 %err.msg.len32233, ptr %err.msg.data235, i32 %err.file.len32246, ptr %err.file.data248, i64 %err.line220, i64 %err.col222)
  call void @exit(i32 1)
  unreachable

err.abort256:                                     ; No predecessors!
  br label %choice.exit209
}

define i64 @"dep_graph::pop_stack"(ptr %0) #1 {
entry:
  %var.stk = alloca ptr, align 8
  %var._79 = alloca ptr, align 8
  %var._78 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.new_sp = alloca i64, align 8
  %var.sp = alloca i64, align 8
  %var.s_ptr = alloca ptr, align 8
  %var.state = alloca ptr, align 8
  store ptr %0, ptr %var.state, align 8
  %var.load = load ptr, ptr %var.state, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 4
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.s_ptr, align 8
  %var.load1 = load ptr, ptr %var.s_ptr, align 8
  %a.load = load ptr, ptr %var.s_ptr, align 8
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
  store ptr %a.create2, ptr %var.s_ptr, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.s_ptr, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.rd.len4 = load i64, ptr %a.rd.len, align 8
  %a.rd.lt = icmp slt i64 0, %a.rd.len4
  %a.rd.bounds = and i1 true, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.rd.data5 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data5, i64 0
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after
  %arena.cur6 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 278, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 17, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur7 = call ptr @dva_arena_current()
  %err.alloc8 = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 56)
  %err.code.gep9 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 0
  store i64 4011, ptr %err.code.gep9, align 8
  %err.msg.gep10 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep10, align 8
  %err.file.gep11 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep11, align 8
  %err.line.gep12 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 3
  store i64 278, ptr %err.line.gep12, align 8
  %err.col.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 4
  store i64 17, ptr %err.col.gep13, align 8
  %err.ctx.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc8, i32 0, i32 5
  %err.ctx0.gep15 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep14, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep15, align 8
  %err.ctx1.gep16 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep14, i32 0, i32 1
  store i64 %a.rd.len4, ptr %err.ctx1.gep16, align 8
  %err.p2i17 = ptrtoint ptr %err.alloc8 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i17, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.66, label %unwrap.abort.66

unwrap.pos.66:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %unwrap.pay.pos, ptr %var.sp, align 8
  %var.load37 = load i64, ptr %var.sp, align 8
  %cmptmp = icmp sgt i64 %var.load37, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

unwrap.abort.66:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep18 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep18, align 8
  %err.msg.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep19, align 8
  %err.file.gep20 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep20, align 8
  %err.line.gep21 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep21, align 8
  %err.col.gep22 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep22, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len23 = load i64, ptr %err.msg.len, align 8
  %err.msg.len24 = and i64 %err.msg.len23, 281474976710655
  %str.tag = lshr i64 %err.msg.len23, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %unwrap.abort.66
  %arena.cur25 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur25, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %unwrap.abort.66
  %err.msg.len32 = trunc i64 %err.msg.len24 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data26 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len27 = load i64, ptr %err.file.len, align 8
  %err.file.len28 = and i64 %err.file.len27, 281474976710655
  %str.tag29 = lshr i64 %err.file.len27, 48
  %str.immortal30 = icmp eq i64 %str.tag29, 0
  br i1 %str.immortal30, label %str_ok32, label %str_gen_check31

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check31:                                  ; preds = %str_ok
  %arena.cur34 = call ptr @dva_arena_current()
  %tag.valid35 = call i1 @dva_arena_validate_tag(ptr %arena.cur34, i64 %str.tag29)
  br i1 %tag.valid35, label %str_ok32, label %str_stale33

str_ok32:                                         ; preds = %str_stale33, %str_gen_check31, %str_ok
  %err.file.len32 = trunc i64 %err.file.len28 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data36 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale33:                                      ; preds = %str_gen_check31
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok32

err.thread:                                       ; preds = %str_ok32
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok32
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data26, i32 %err.file.len32, ptr %err.file.data36, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

choice.then:                                      ; preds = %unwrap.pos.66
  %var.load38 = load i64, ptr %var.sp, align 8
  %subtmp = sub i64 %var.load38, 1
  br label %choice.exit

choice.else:                                      ; preds = %unwrap.pos.66
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %subtmp, %choice.then ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.new_sp, align 8
  %var.load39 = load ptr, ptr %var.s_ptr, align 8
  %a.load40 = load ptr, ptr %var.s_ptr, align 8
  %a.null41 = icmp eq ptr %a.load40, null
  br i1 %a.null41, label %a.create42, label %a.after43

a.create42:                                       ; preds = %choice.exit
  %arena.cur44 = call ptr @dva_arena_current()
  %a.create45 = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 24)
  %arena.cur46 = call ptr @dva_arena_current()
  %a.buf47 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 128)
  %a.len.gep48 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 0
  store i64 0, ptr %a.len.gep48, align 8
  %a.data.gep49 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 1
  store ptr %a.buf47, ptr %a.data.gep49, align 8
  %a.cap.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 2
  store i64 16, ptr %a.cap.gep50, align 8
  store ptr %a.create45, ptr %var.s_ptr, align 8
  br label %a.after43

a.after43:                                        ; preds = %a.create42, %choice.exit
  %a.load251 = load ptr, ptr %var.s_ptr, align 8
  %var.load52 = load i64, ptr %var.new_sp, align 8
  %a.wr.nonnull = icmp ne ptr %a.load251, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after43
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load251, i32 0, i32 0
  %a.wr.len53 = load i64, ptr %a.wr.len, align 8
  %a.wr.lt = icmp slt i64 0, %a.wr.len53
  %a.wr.bounds = and i1 true, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load251, i32 0, i32 1
  %a.wr.data54 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data54, i64 0
  store i64 %var.load52, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after43
  %arena.cur55 = call ptr @dva_arena_current()
  %err.alloc56 = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 56)
  %err.code.gep57 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc56, i32 0, i32 0
  store i64 4011, ptr %err.code.gep57, align 8
  %err.msg.gep58 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc56, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep58, align 8
  %err.file.gep59 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc56, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep59, align 8
  %err.line.gep60 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc56, i32 0, i32 3
  store i64 0, ptr %err.line.gep60, align 8
  %err.col.gep61 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc56, i32 0, i32 4
  store i64 0, ptr %err.col.gep61, align 8
  %err.ctx.gep62 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc56, i32 0, i32 5
  %err.ctx0.gep63 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep62, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep63, align 8
  %err.ctx1.gep64 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep62, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep64, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur65 = call ptr @dva_arena_current()
  %err.alloc66 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 56)
  %err.code.gep67 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc66, i32 0, i32 0
  store i64 4011, ptr %err.code.gep67, align 8
  %err.msg.gep68 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc66, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep68, align 8
  %err.file.gep69 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc66, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep69, align 8
  %err.line.gep70 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc66, i32 0, i32 3
  store i64 0, ptr %err.line.gep70, align 8
  %err.col.gep71 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc66, i32 0, i32 4
  store i64 0, ptr %err.col.gep71, align 8
  %err.ctx.gep72 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc66, i32 0, i32 5
  %err.ctx0.gep73 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep72, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep73, align 8
  %err.ctx1.gep74 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep72, i32 0, i32 1
  store i64 %a.wr.len53, ptr %err.ctx1.gep74, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc56, %a.wr.err.null ], [ %err.alloc66, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then75, label %choice.else76

choice.then75:                                    ; preds = %a.wr.done
  br label %choice.exit77

choice.else76:                                    ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._, align 8
  store ptr %a.wr.niche, ptr %var._78, align 8
  store ptr %a.wr.niche, ptr %var._79, align 8
  %err.code.gep80 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code81 = load i64, ptr %err.code.gep80, align 8
  %err.msg.gep82 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct83 = load ptr, ptr %err.msg.gep82, align 8
  %err.file.gep84 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct85 = load ptr, ptr %err.file.gep84, align 8
  %err.line.gep86 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line87 = load i64, ptr %err.line.gep86, align 8
  %err.col.gep88 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col89 = load i64, ptr %err.col.gep88, align 8
  %err.msg.len90 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct83, i32 0, i32 0
  %err.msg.len91 = load i64, ptr %err.msg.len90, align 8
  %err.msg.len92 = and i64 %err.msg.len91, 281474976710655
  %str.tag93 = lshr i64 %err.msg.len91, 48
  %str.immortal94 = icmp eq i64 %str.tag93, 0
  br i1 %str.immortal94, label %str_ok96, label %str_gen_check95

choice.exit77:                                    ; preds = %err.abort, %choice.then75
  %var.load123 = load ptr, ptr %var.state, align 8
  %fld.gep124 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load123, i32 0, i32 3
  %fld.load125 = load ptr, ptr %fld.gep124, align 8
  store ptr %fld.load125, ptr %var.stk, align 8
  %var.load126 = load ptr, ptr %var.stk, align 8
  %a.load127 = load ptr, ptr %var.stk, align 8
  %a.null128 = icmp eq ptr %a.load127, null
  br i1 %a.null128, label %a.create129, label %a.after130

str_gen_check95:                                  ; preds = %choice.else76
  %arena.cur98 = call ptr @dva_arena_current()
  %tag.valid99 = call i1 @dva_arena_validate_tag(ptr %arena.cur98, i64 %str.tag93)
  br i1 %tag.valid99, label %str_ok96, label %str_stale97

str_ok96:                                         ; preds = %str_stale97, %str_gen_check95, %choice.else76
  %err.msg.len32100 = trunc i64 %err.msg.len92 to i32
  %err.msg.data101 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct83, i32 0, i32 1
  %err.msg.data102 = load ptr, ptr %err.msg.data101, align 8
  %err.file.len103 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct85, i32 0, i32 0
  %err.file.len104 = load i64, ptr %err.file.len103, align 8
  %err.file.len105 = and i64 %err.file.len104, 281474976710655
  %str.tag106 = lshr i64 %err.file.len104, 48
  %str.immortal107 = icmp eq i64 %str.tag106, 0
  br i1 %str.immortal107, label %str_ok109, label %str_gen_check108

str_stale97:                                      ; preds = %str_gen_check95
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok96

str_gen_check108:                                 ; preds = %str_ok96
  %arena.cur111 = call ptr @dva_arena_current()
  %tag.valid112 = call i1 @dva_arena_validate_tag(ptr %arena.cur111, i64 %str.tag106)
  br i1 %tag.valid112, label %str_ok109, label %str_stale110

str_ok109:                                        ; preds = %str_stale110, %str_gen_check108, %str_ok96
  %err.file.len32113 = trunc i64 %err.file.len105 to i32
  %err.file.data114 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct85, i32 0, i32 1
  %err.file.data115 = load ptr, ptr %err.file.data114, align 8
  %err.thread.rec116 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread117 = icmp ne ptr %err.thread.rec116, null
  br i1 %err.is.thread117, label %err.thread118, label %err.normal119

str_stale110:                                     ; preds = %str_gen_check108
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok109

err.thread118:                                    ; preds = %str_ok109
  %err.haserr.gep120 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec116, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep120, align 8
  %err.err.gep121 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec116, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep121, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal119:                                    ; preds = %str_ok109
  %err.panic.printf122 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code81, i32 %err.msg.len32100, ptr %err.msg.data102, i32 %err.file.len32113, ptr %err.file.data115, i64 %err.line87, i64 %err.col89)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit77

a.create129:                                      ; preds = %choice.exit77
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
  store ptr %a.create132, ptr %var.stk, align 8
  br label %a.after130

a.after130:                                       ; preds = %a.create129, %choice.exit77
  %a.load2138 = load ptr, ptr %var.stk, align 8
  %var.load139 = load i64, ptr %var.new_sp, align 8
  %a.rd.nonnull140 = icmp ne ptr %a.load2138, null
  br i1 %a.rd.nonnull140, label %a.rd.check141, label %a.rd.err.null143

a.rd.check141:                                    ; preds = %a.after130
  %a.rd.len146 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2138, i32 0, i32 0
  %a.rd.len147 = load i64, ptr %a.rd.len146, align 8
  %a.rd.ge0 = icmp sge i64 %var.load139, 0
  %a.rd.lt148 = icmp slt i64 %var.load139, %a.rd.len147
  %a.rd.bounds149 = and i1 %a.rd.ge0, %a.rd.lt148
  br i1 %a.rd.bounds149, label %a.rd.ok142, label %a.rd.err.oob144

a.rd.ok142:                                       ; preds = %a.rd.check141
  %a.rd.data150 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2138, i32 0, i32 1
  %a.rd.data151 = load ptr, ptr %a.rd.data150, align 8
  %a.rd.elem.gep152 = getelementptr i64, ptr %a.rd.data151, i64 %var.load139
  %a.rd.elem153 = load i64, ptr %a.rd.elem.gep152, align 8
  br label %a.rd.done145

a.rd.err.null143:                                 ; preds = %a.after130
  %arena.cur154 = call ptr @dva_arena_current()
  %err.alloc155 = call ptr @dva_arena_alloc(ptr %arena.cur154, i64 56)
  %err.code.gep156 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc155, i32 0, i32 0
  store i64 4011, ptr %err.code.gep156, align 8
  %err.msg.gep157 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc155, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep157, align 8
  %err.file.gep158 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc155, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep158, align 8
  %err.line.gep159 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc155, i32 0, i32 3
  store i64 282, ptr %err.line.gep159, align 8
  %err.col.gep160 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc155, i32 0, i32 4
  store i64 15, ptr %err.col.gep160, align 8
  %err.ctx.gep161 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc155, i32 0, i32 5
  %err.ctx0.gep162 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep161, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep162, align 8
  %err.ctx1.gep163 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep161, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep163, align 8
  %err.p2i164 = ptrtoint ptr %err.alloc155 to i64
  br label %a.rd.done145

a.rd.err.oob144:                                  ; preds = %a.rd.check141
  %arena.cur165 = call ptr @dva_arena_current()
  %err.alloc166 = call ptr @dva_arena_alloc(ptr %arena.cur165, i64 56)
  %err.code.gep167 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc166, i32 0, i32 0
  store i64 4011, ptr %err.code.gep167, align 8
  %err.msg.gep168 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc166, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep168, align 8
  %err.file.gep169 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc166, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep169, align 8
  %err.line.gep170 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc166, i32 0, i32 3
  store i64 282, ptr %err.line.gep170, align 8
  %err.col.gep171 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc166, i32 0, i32 4
  store i64 15, ptr %err.col.gep171, align 8
  %err.ctx.gep172 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc166, i32 0, i32 5
  %err.ctx0.gep173 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep172, i32 0, i32 0
  store i64 %var.load139, ptr %err.ctx0.gep173, align 8
  %err.ctx1.gep174 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep172, i32 0, i32 1
  store i64 %a.rd.len147, ptr %err.ctx1.gep174, align 8
  %err.p2i175 = ptrtoint ptr %err.alloc166 to i64
  br label %a.rd.done145

a.rd.done145:                                     ; preds = %a.rd.err.oob144, %a.rd.err.null143, %a.rd.ok142
  %a.rd.tag176 = phi i1 [ true, %a.rd.ok142 ], [ false, %a.rd.err.null143 ], [ false, %a.rd.err.oob144 ]
  %a.rd.pay177 = phi i64 [ %a.rd.elem153, %a.rd.ok142 ], [ %err.p2i164, %a.rd.err.null143 ], [ %err.p2i175, %a.rd.err.oob144 ]
  %ram.tag178 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag176, 0
  %ram.pay179 = insertvalue { i1, i64 } %ram.tag178, i64 %a.rd.pay177, 1
  %unwrap.is_pos180 = extractvalue { i1, i64 } %ram.pay179, 0
  br i1 %unwrap.is_pos180, label %unwrap.pos.67, label %unwrap.abort.67

unwrap.pos.67:                                    ; preds = %a.rd.done145
  %unwrap.pay.pos226 = extractvalue { i1, i64 } %ram.pay179, 1
  ret i64 %unwrap.pay.pos226

unwrap.abort.67:                                  ; preds = %a.rd.done145
  %unwrap.pay.abort181 = extractvalue { i1, i64 } %ram.pay179, 1
  %err.ptr182 = inttoptr i64 %unwrap.pay.abort181 to ptr
  %err.code.gep183 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr182, i32 0, i32 0
  %err.code184 = load i64, ptr %err.code.gep183, align 8
  %err.msg.gep185 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr182, i32 0, i32 1
  %err.msg.struct186 = load ptr, ptr %err.msg.gep185, align 8
  %err.file.gep187 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr182, i32 0, i32 2
  %err.file.struct188 = load ptr, ptr %err.file.gep187, align 8
  %err.line.gep189 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr182, i32 0, i32 3
  %err.line190 = load i64, ptr %err.line.gep189, align 8
  %err.col.gep191 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr182, i32 0, i32 4
  %err.col192 = load i64, ptr %err.col.gep191, align 8
  %err.msg.len193 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct186, i32 0, i32 0
  %err.msg.len194 = load i64, ptr %err.msg.len193, align 8
  %err.msg.len195 = and i64 %err.msg.len194, 281474976710655
  %str.tag196 = lshr i64 %err.msg.len194, 48
  %str.immortal197 = icmp eq i64 %str.tag196, 0
  br i1 %str.immortal197, label %str_ok199, label %str_gen_check198

str_gen_check198:                                 ; preds = %unwrap.abort.67
  %arena.cur201 = call ptr @dva_arena_current()
  %tag.valid202 = call i1 @dva_arena_validate_tag(ptr %arena.cur201, i64 %str.tag196)
  br i1 %tag.valid202, label %str_ok199, label %str_stale200

str_ok199:                                        ; preds = %str_stale200, %str_gen_check198, %unwrap.abort.67
  %err.msg.len32203 = trunc i64 %err.msg.len195 to i32
  %err.msg.data204 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct186, i32 0, i32 1
  %err.msg.data205 = load ptr, ptr %err.msg.data204, align 8
  %err.file.len206 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct188, i32 0, i32 0
  %err.file.len207 = load i64, ptr %err.file.len206, align 8
  %err.file.len208 = and i64 %err.file.len207, 281474976710655
  %str.tag209 = lshr i64 %err.file.len207, 48
  %str.immortal210 = icmp eq i64 %str.tag209, 0
  br i1 %str.immortal210, label %str_ok212, label %str_gen_check211

str_stale200:                                     ; preds = %str_gen_check198
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok199

str_gen_check211:                                 ; preds = %str_ok199
  %arena.cur214 = call ptr @dva_arena_current()
  %tag.valid215 = call i1 @dva_arena_validate_tag(ptr %arena.cur214, i64 %str.tag209)
  br i1 %tag.valid215, label %str_ok212, label %str_stale213

str_ok212:                                        ; preds = %str_stale213, %str_gen_check211, %str_ok199
  %err.file.len32216 = trunc i64 %err.file.len208 to i32
  %err.file.data217 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct188, i32 0, i32 1
  %err.file.data218 = load ptr, ptr %err.file.data217, align 8
  %err.thread.rec219 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread220 = icmp ne ptr %err.thread.rec219, null
  br i1 %err.is.thread220, label %err.thread221, label %err.normal222

str_stale213:                                     ; preds = %str_gen_check211
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok212

err.thread221:                                    ; preds = %str_ok212
  %err.haserr.gep223 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec219, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep223, align 8
  %err.err.gep224 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec219, i32 0, i32 7
  store ptr %err.ptr182, ptr %err.err.gep224, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal222:                                    ; preds = %str_ok212
  %err.panic.printf225 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code184, i32 %err.msg.len32203, ptr %err.msg.data205, i32 %err.file.len32216, ptr %err.file.data218, i64 %err.line190, i64 %err.col192)
  call void @exit(i32 1)
  unreachable
}

define void @"dep_graph::tarjan_dfs"(ptr %0, ptr %1, i64 %2) #1 {
entry:
  %var.is_rec = alloca i1, align 1
  %var.w_node = alloca ptr, align 8
  %var._1670 = alloca ptr, align 8
  %var._1669 = alloca ptr, align 8
  %var._1668 = alloca ptr, align 8
  %var.w = alloca i64, align 8
  %var.sp = alloca i64, align 8
  %var.s_ptr = alloca ptr, align 8
  %var._1505 = alloca i64, align 8
  %var._i1504 = alloca i64, align 8
  %loop.step.77 = alloca i64, align 8
  %loop.idx.77 = alloca i64, align 8
  %var.is_self_rec = alloca i1, align 1
  %var.scc_names = alloca ptr, align 8
  %var.idx_u = alloca i64, align 8
  %var.low_u = alloca i64, align 8
  %var._1237 = alloca ptr, align 8
  %var._1236 = alloca ptr, align 8
  %var._1235 = alloca ptr, align 8
  %var.v_on = alloca i1, align 1
  %var._972 = alloca ptr, align 8
  %var._969 = alloca i1, align 1
  %var._864 = alloca ptr, align 8
  %var._863 = alloca ptr, align 8
  %var._862 = alloca ptr, align 8
  %var.v_idx = alloca i64, align 8
  %var._596 = alloca ptr, align 8
  %var._593 = alloca i64, align 8
  %var.v = alloca i64, align 8
  %var._527 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.d_name = alloca ptr, align 8
  %loop.step.70 = alloca i64, align 8
  %loop.idx.70 = alloca i64, align 8
  %var.u_node = alloca ptr, align 8
  %var._386 = alloca ptr, align 8
  %var._385 = alloca ptr, align 8
  %var._384 = alloca ptr, align 8
  %var._284 = alloca ptr, align 8
  %var._283 = alloca ptr, align 8
  %var._282 = alloca ptr, align 8
  %var._185 = alloca ptr, align 8
  %var._184 = alloca ptr, align 8
  %var._183 = alloca ptr, align 8
  %var._85 = alloca ptr, align 8
  %var._84 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.cnt = alloca i64, align 8
  %var.s_cnt = alloca ptr, align 8
  %var.ons = alloca ptr, align 8
  %var.lows = alloca ptr, align 8
  %var.idxs = alloca ptr, align 8
  %var.u = alloca i64, align 8
  %var.state = alloca ptr, align 8
  %var.graph = alloca ptr, align 8
  store ptr %0, ptr %var.graph, align 8
  store ptr %1, ptr %var.state, align 8
  store i64 %2, ptr %var.u, align 8
  %var.load = load ptr, ptr %var.state, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.idxs, align 8
  %var.load1 = load ptr, ptr %var.state, align 8
  %fld.gep2 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load1, i32 0, i32 1
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  store ptr %fld.load3, ptr %var.lows, align 8
  %var.load4 = load ptr, ptr %var.state, align 8
  %fld.gep5 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load4, i32 0, i32 2
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  store ptr %fld.load6, ptr %var.ons, align 8
  %var.load7 = load ptr, ptr %var.state, align 8
  %fld.gep8 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load7, i32 0, i32 5
  %fld.load9 = load ptr, ptr %fld.gep8, align 8
  store ptr %fld.load9, ptr %var.s_cnt, align 8
  %var.load10 = load ptr, ptr %var.s_cnt, align 8
  %a.load = load ptr, ptr %var.s_cnt, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %a.create11 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur12 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create11, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create11, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create11, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create11, ptr %var.s_cnt, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.s_cnt, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.rd.len13 = load i64, ptr %a.rd.len, align 8
  %a.rd.lt = icmp slt i64 0, %a.rd.len13
  %a.rd.bounds = and i1 true, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.rd.data14 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data14, i64 0
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after
  %arena.cur15 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 290, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 18, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur16 = call ptr @dva_arena_current()
  %err.alloc17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 56)
  %err.code.gep18 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc17, i32 0, i32 0
  store i64 4011, ptr %err.code.gep18, align 8
  %err.msg.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc17, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep19, align 8
  %err.file.gep20 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc17, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep20, align 8
  %err.line.gep21 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc17, i32 0, i32 3
  store i64 290, ptr %err.line.gep21, align 8
  %err.col.gep22 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc17, i32 0, i32 4
  store i64 18, ptr %err.col.gep22, align 8
  %err.ctx.gep23 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc17, i32 0, i32 5
  %err.ctx0.gep24 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep23, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep24, align 8
  %err.ctx1.gep25 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep23, i32 0, i32 1
  store i64 %a.rd.len13, ptr %err.ctx1.gep25, align 8
  %err.p2i26 = ptrtoint ptr %err.alloc17 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i26, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.68, label %unwrap.abort.68

unwrap.pos.68:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %unwrap.pay.pos, ptr %var.cnt, align 8
  %var.load47 = load ptr, ptr %var.idxs, align 8
  %a.load48 = load ptr, ptr %var.idxs, align 8
  %a.null49 = icmp eq ptr %a.load48, null
  br i1 %a.null49, label %a.create50, label %a.after51

unwrap.abort.68:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep27 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep27, align 8
  %err.msg.gep28 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep28, align 8
  %err.file.gep29 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep29, align 8
  %err.line.gep30 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep30, align 8
  %err.col.gep31 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep31, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len32 = load i64, ptr %err.msg.len, align 8
  %err.msg.len33 = and i64 %err.msg.len32, 281474976710655
  %str.tag = lshr i64 %err.msg.len32, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %unwrap.abort.68
  %arena.cur34 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur34, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %unwrap.abort.68
  %err.msg.len3235 = trunc i64 %err.msg.len33 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data36 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len37 = load i64, ptr %err.file.len, align 8
  %err.file.len38 = and i64 %err.file.len37, 281474976710655
  %str.tag39 = lshr i64 %err.file.len37, 48
  %str.immortal40 = icmp eq i64 %str.tag39, 0
  br i1 %str.immortal40, label %str_ok42, label %str_gen_check41

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check41:                                  ; preds = %str_ok
  %arena.cur44 = call ptr @dva_arena_current()
  %tag.valid45 = call i1 @dva_arena_validate_tag(ptr %arena.cur44, i64 %str.tag39)
  br i1 %tag.valid45, label %str_ok42, label %str_stale43

str_ok42:                                         ; preds = %str_stale43, %str_gen_check41, %str_ok
  %err.file.len32 = trunc i64 %err.file.len38 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data46 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale43:                                      ; preds = %str_gen_check41
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok42

err.thread:                                       ; preds = %str_ok42
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok42
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len3235, ptr %err.msg.data36, i32 %err.file.len32, ptr %err.file.data46, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create50:                                       ; preds = %unwrap.pos.68
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
  store ptr %a.create53, ptr %var.idxs, align 8
  br label %a.after51

a.after51:                                        ; preds = %a.create50, %unwrap.pos.68
  %a.load259 = load ptr, ptr %var.idxs, align 8
  %var.load60 = load i64, ptr %var.u, align 8
  %var.load61 = load i64, ptr %var.cnt, align 8
  %a.wr.nonnull = icmp ne ptr %a.load259, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after51
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load259, i32 0, i32 0
  %a.wr.len62 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load60, 0
  %a.wr.lt = icmp slt i64 %var.load60, %a.wr.len62
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load259, i32 0, i32 1
  %a.wr.data63 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data63, i64 %var.load60
  store i64 %var.load61, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after51
  %arena.cur64 = call ptr @dva_arena_current()
  %err.alloc65 = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 56)
  %err.code.gep66 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc65, i32 0, i32 0
  store i64 4011, ptr %err.code.gep66, align 8
  %err.msg.gep67 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc65, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep67, align 8
  %err.file.gep68 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc65, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep68, align 8
  %err.line.gep69 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc65, i32 0, i32 3
  store i64 0, ptr %err.line.gep69, align 8
  %err.col.gep70 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc65, i32 0, i32 4
  store i64 0, ptr %err.col.gep70, align 8
  %err.ctx.gep71 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc65, i32 0, i32 5
  %err.ctx0.gep72 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep71, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep72, align 8
  %err.ctx1.gep73 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep71, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep73, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur74 = call ptr @dva_arena_current()
  %err.alloc75 = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 56)
  %err.code.gep76 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 0
  store i64 4011, ptr %err.code.gep76, align 8
  %err.msg.gep77 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep77, align 8
  %err.file.gep78 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep78, align 8
  %err.line.gep79 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 3
  store i64 0, ptr %err.line.gep79, align 8
  %err.col.gep80 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 4
  store i64 0, ptr %err.col.gep80, align 8
  %err.ctx.gep81 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 5
  %err.ctx0.gep82 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep81, i32 0, i32 0
  store i64 %var.load60, ptr %err.ctx0.gep82, align 8
  %err.ctx1.gep83 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep81, i32 0, i32 1
  store i64 %a.wr.len62, ptr %err.ctx1.gep83, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc65, %a.wr.err.null ], [ %err.alloc75, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.wr.done
  br label %choice.exit

choice.else:                                      ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._, align 8
  store ptr %a.wr.niche, ptr %var._84, align 8
  store ptr %a.wr.niche, ptr %var._85, align 8
  %err.code.gep86 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code87 = load i64, ptr %err.code.gep86, align 8
  %err.msg.gep88 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct89 = load ptr, ptr %err.msg.gep88, align 8
  %err.file.gep90 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct91 = load ptr, ptr %err.file.gep90, align 8
  %err.line.gep92 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line93 = load i64, ptr %err.line.gep92, align 8
  %err.col.gep94 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col95 = load i64, ptr %err.col.gep94, align 8
  %err.msg.len96 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct89, i32 0, i32 0
  %err.msg.len97 = load i64, ptr %err.msg.len96, align 8
  %err.msg.len98 = and i64 %err.msg.len97, 281474976710655
  %str.tag99 = lshr i64 %err.msg.len97, 48
  %str.immortal100 = icmp eq i64 %str.tag99, 0
  br i1 %str.immortal100, label %str_ok102, label %str_gen_check101

choice.exit:                                      ; preds = %err.abort, %choice.then
  %var.load129 = load ptr, ptr %var.lows, align 8
  %a.load130 = load ptr, ptr %var.lows, align 8
  %a.null131 = icmp eq ptr %a.load130, null
  br i1 %a.null131, label %a.create132, label %a.after133

str_gen_check101:                                 ; preds = %choice.else
  %arena.cur104 = call ptr @dva_arena_current()
  %tag.valid105 = call i1 @dva_arena_validate_tag(ptr %arena.cur104, i64 %str.tag99)
  br i1 %tag.valid105, label %str_ok102, label %str_stale103

str_ok102:                                        ; preds = %str_stale103, %str_gen_check101, %choice.else
  %err.msg.len32106 = trunc i64 %err.msg.len98 to i32
  %err.msg.data107 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct89, i32 0, i32 1
  %err.msg.data108 = load ptr, ptr %err.msg.data107, align 8
  %err.file.len109 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct91, i32 0, i32 0
  %err.file.len110 = load i64, ptr %err.file.len109, align 8
  %err.file.len111 = and i64 %err.file.len110, 281474976710655
  %str.tag112 = lshr i64 %err.file.len110, 48
  %str.immortal113 = icmp eq i64 %str.tag112, 0
  br i1 %str.immortal113, label %str_ok115, label %str_gen_check114

str_stale103:                                     ; preds = %str_gen_check101
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok102

str_gen_check114:                                 ; preds = %str_ok102
  %arena.cur117 = call ptr @dva_arena_current()
  %tag.valid118 = call i1 @dva_arena_validate_tag(ptr %arena.cur117, i64 %str.tag112)
  br i1 %tag.valid118, label %str_ok115, label %str_stale116

str_ok115:                                        ; preds = %str_stale116, %str_gen_check114, %str_ok102
  %err.file.len32119 = trunc i64 %err.file.len111 to i32
  %err.file.data120 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct91, i32 0, i32 1
  %err.file.data121 = load ptr, ptr %err.file.data120, align 8
  %err.thread.rec122 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread123 = icmp ne ptr %err.thread.rec122, null
  br i1 %err.is.thread123, label %err.thread124, label %err.normal125

str_stale116:                                     ; preds = %str_gen_check114
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok115

err.thread124:                                    ; preds = %str_ok115
  %err.haserr.gep126 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec122, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep126, align 8
  %err.err.gep127 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec122, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep127, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal125:                                    ; preds = %str_ok115
  %err.panic.printf128 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code87, i32 %err.msg.len32106, ptr %err.msg.data108, i32 %err.file.len32119, ptr %err.file.data121, i64 %err.line93, i64 %err.col95)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit

a.create132:                                      ; preds = %choice.exit
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
  store ptr %a.create135, ptr %var.lows, align 8
  br label %a.after133

a.after133:                                       ; preds = %a.create132, %choice.exit
  %a.load2141 = load ptr, ptr %var.lows, align 8
  %var.load142 = load i64, ptr %var.u, align 8
  %var.load143 = load i64, ptr %var.cnt, align 8
  %a.wr.nonnull144 = icmp ne ptr %a.load2141, null
  br i1 %a.wr.nonnull144, label %a.wr.check145, label %a.wr.err.null147

a.wr.check145:                                    ; preds = %a.after133
  %a.wr.len150 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2141, i32 0, i32 0
  %a.wr.len151 = load i64, ptr %a.wr.len150, align 8
  %a.wr.ge0152 = icmp sge i64 %var.load142, 0
  %a.wr.lt153 = icmp slt i64 %var.load142, %a.wr.len151
  %a.wr.bounds154 = and i1 %a.wr.ge0152, %a.wr.lt153
  br i1 %a.wr.bounds154, label %a.wr.ok146, label %a.wr.err.oob148

a.wr.ok146:                                       ; preds = %a.wr.check145
  %a.wr.data155 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2141, i32 0, i32 1
  %a.wr.data156 = load ptr, ptr %a.wr.data155, align 8
  %a.elem.gep157 = getelementptr i64, ptr %a.wr.data156, i64 %var.load142
  store i64 %var.load143, ptr %a.elem.gep157, align 8
  br label %a.wr.done149

a.wr.err.null147:                                 ; preds = %a.after133
  %arena.cur158 = call ptr @dva_arena_current()
  %err.alloc159 = call ptr @dva_arena_alloc(ptr %arena.cur158, i64 56)
  %err.code.gep160 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc159, i32 0, i32 0
  store i64 4011, ptr %err.code.gep160, align 8
  %err.msg.gep161 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc159, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep161, align 8
  %err.file.gep162 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc159, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep162, align 8
  %err.line.gep163 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc159, i32 0, i32 3
  store i64 0, ptr %err.line.gep163, align 8
  %err.col.gep164 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc159, i32 0, i32 4
  store i64 0, ptr %err.col.gep164, align 8
  %err.ctx.gep165 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc159, i32 0, i32 5
  %err.ctx0.gep166 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep165, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep166, align 8
  %err.ctx1.gep167 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep165, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep167, align 8
  br label %a.wr.done149

a.wr.err.oob148:                                  ; preds = %a.wr.check145
  %arena.cur168 = call ptr @dva_arena_current()
  %err.alloc169 = call ptr @dva_arena_alloc(ptr %arena.cur168, i64 56)
  %err.code.gep170 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc169, i32 0, i32 0
  store i64 4011, ptr %err.code.gep170, align 8
  %err.msg.gep171 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc169, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep171, align 8
  %err.file.gep172 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc169, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep172, align 8
  %err.line.gep173 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc169, i32 0, i32 3
  store i64 0, ptr %err.line.gep173, align 8
  %err.col.gep174 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc169, i32 0, i32 4
  store i64 0, ptr %err.col.gep174, align 8
  %err.ctx.gep175 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc169, i32 0, i32 5
  %err.ctx0.gep176 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep175, i32 0, i32 0
  store i64 %var.load142, ptr %err.ctx0.gep176, align 8
  %err.ctx1.gep177 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep175, i32 0, i32 1
  store i64 %a.wr.len151, ptr %err.ctx1.gep177, align 8
  br label %a.wr.done149

a.wr.done149:                                     ; preds = %a.wr.err.oob148, %a.wr.err.null147, %a.wr.ok146
  %a.wr.niche178 = phi ptr [ null, %a.wr.ok146 ], [ %err.alloc159, %a.wr.err.null147 ], [ %err.alloc169, %a.wr.err.oob148 ]
  %niche.eq.null179 = icmp eq ptr %a.wr.niche178, null
  br i1 %niche.eq.null179, label %choice.then180, label %choice.else181

choice.then180:                                   ; preds = %a.wr.done149
  br label %choice.exit182

choice.else181:                                   ; preds = %a.wr.done149
  store ptr %a.wr.niche178, ptr %var._183, align 8
  store ptr %a.wr.niche178, ptr %var._184, align 8
  store ptr %a.wr.niche178, ptr %var._185, align 8
  %err.code.gep186 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche178, i32 0, i32 0
  %err.code187 = load i64, ptr %err.code.gep186, align 8
  %err.msg.gep188 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche178, i32 0, i32 1
  %err.msg.struct189 = load ptr, ptr %err.msg.gep188, align 8
  %err.file.gep190 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche178, i32 0, i32 2
  %err.file.struct191 = load ptr, ptr %err.file.gep190, align 8
  %err.line.gep192 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche178, i32 0, i32 3
  %err.line193 = load i64, ptr %err.line.gep192, align 8
  %err.col.gep194 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche178, i32 0, i32 4
  %err.col195 = load i64, ptr %err.col.gep194, align 8
  %err.msg.len196 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct189, i32 0, i32 0
  %err.msg.len197 = load i64, ptr %err.msg.len196, align 8
  %err.msg.len198 = and i64 %err.msg.len197, 281474976710655
  %str.tag199 = lshr i64 %err.msg.len197, 48
  %str.immortal200 = icmp eq i64 %str.tag199, 0
  br i1 %str.immortal200, label %str_ok202, label %str_gen_check201

choice.exit182:                                   ; preds = %err.abort229, %choice.then180
  %var.load230 = load ptr, ptr %var.s_cnt, align 8
  %a.load231 = load ptr, ptr %var.s_cnt, align 8
  %a.null232 = icmp eq ptr %a.load231, null
  br i1 %a.null232, label %a.create233, label %a.after234

str_gen_check201:                                 ; preds = %choice.else181
  %arena.cur204 = call ptr @dva_arena_current()
  %tag.valid205 = call i1 @dva_arena_validate_tag(ptr %arena.cur204, i64 %str.tag199)
  br i1 %tag.valid205, label %str_ok202, label %str_stale203

str_ok202:                                        ; preds = %str_stale203, %str_gen_check201, %choice.else181
  %err.msg.len32206 = trunc i64 %err.msg.len198 to i32
  %err.msg.data207 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct189, i32 0, i32 1
  %err.msg.data208 = load ptr, ptr %err.msg.data207, align 8
  %err.file.len209 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct191, i32 0, i32 0
  %err.file.len210 = load i64, ptr %err.file.len209, align 8
  %err.file.len211 = and i64 %err.file.len210, 281474976710655
  %str.tag212 = lshr i64 %err.file.len210, 48
  %str.immortal213 = icmp eq i64 %str.tag212, 0
  br i1 %str.immortal213, label %str_ok215, label %str_gen_check214

str_stale203:                                     ; preds = %str_gen_check201
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok202

str_gen_check214:                                 ; preds = %str_ok202
  %arena.cur217 = call ptr @dva_arena_current()
  %tag.valid218 = call i1 @dva_arena_validate_tag(ptr %arena.cur217, i64 %str.tag212)
  br i1 %tag.valid218, label %str_ok215, label %str_stale216

str_ok215:                                        ; preds = %str_stale216, %str_gen_check214, %str_ok202
  %err.file.len32219 = trunc i64 %err.file.len211 to i32
  %err.file.data220 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct191, i32 0, i32 1
  %err.file.data221 = load ptr, ptr %err.file.data220, align 8
  %err.thread.rec222 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread223 = icmp ne ptr %err.thread.rec222, null
  br i1 %err.is.thread223, label %err.thread224, label %err.normal225

str_stale216:                                     ; preds = %str_gen_check214
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok215

err.thread224:                                    ; preds = %str_ok215
  %err.haserr.gep226 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec222, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep226, align 8
  %err.err.gep227 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec222, i32 0, i32 7
  store ptr %a.wr.niche178, ptr %err.err.gep227, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal225:                                    ; preds = %str_ok215
  %err.panic.printf228 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code187, i32 %err.msg.len32206, ptr %err.msg.data208, i32 %err.file.len32219, ptr %err.file.data221, i64 %err.line193, i64 %err.col195)
  call void @exit(i32 1)
  unreachable

err.abort229:                                     ; No predecessors!
  br label %choice.exit182

a.create233:                                      ; preds = %choice.exit182
  %arena.cur235 = call ptr @dva_arena_current()
  %a.create236 = call ptr @dva_arena_alloc(ptr %arena.cur235, i64 24)
  %arena.cur237 = call ptr @dva_arena_current()
  %a.buf238 = call ptr @dva_arena_alloc(ptr %arena.cur237, i64 128)
  %a.len.gep239 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create236, i32 0, i32 0
  store i64 0, ptr %a.len.gep239, align 8
  %a.data.gep240 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create236, i32 0, i32 1
  store ptr %a.buf238, ptr %a.data.gep240, align 8
  %a.cap.gep241 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create236, i32 0, i32 2
  store i64 16, ptr %a.cap.gep241, align 8
  store ptr %a.create236, ptr %var.s_cnt, align 8
  br label %a.after234

a.after234:                                       ; preds = %a.create233, %choice.exit182
  %a.load2242 = load ptr, ptr %var.s_cnt, align 8
  %var.load243 = load i64, ptr %var.cnt, align 8
  %addtmp = add i64 %var.load243, 1
  %a.wr.nonnull244 = icmp ne ptr %a.load2242, null
  br i1 %a.wr.nonnull244, label %a.wr.check245, label %a.wr.err.null247

a.wr.check245:                                    ; preds = %a.after234
  %a.wr.len250 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2242, i32 0, i32 0
  %a.wr.len251 = load i64, ptr %a.wr.len250, align 8
  %a.wr.lt252 = icmp slt i64 0, %a.wr.len251
  %a.wr.bounds253 = and i1 true, %a.wr.lt252
  br i1 %a.wr.bounds253, label %a.wr.ok246, label %a.wr.err.oob248

a.wr.ok246:                                       ; preds = %a.wr.check245
  %a.wr.data254 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2242, i32 0, i32 1
  %a.wr.data255 = load ptr, ptr %a.wr.data254, align 8
  %a.elem.gep256 = getelementptr i64, ptr %a.wr.data255, i64 0
  store i64 %addtmp, ptr %a.elem.gep256, align 8
  br label %a.wr.done249

a.wr.err.null247:                                 ; preds = %a.after234
  %arena.cur257 = call ptr @dva_arena_current()
  %err.alloc258 = call ptr @dva_arena_alloc(ptr %arena.cur257, i64 56)
  %err.code.gep259 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc258, i32 0, i32 0
  store i64 4011, ptr %err.code.gep259, align 8
  %err.msg.gep260 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc258, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep260, align 8
  %err.file.gep261 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc258, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep261, align 8
  %err.line.gep262 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc258, i32 0, i32 3
  store i64 0, ptr %err.line.gep262, align 8
  %err.col.gep263 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc258, i32 0, i32 4
  store i64 0, ptr %err.col.gep263, align 8
  %err.ctx.gep264 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc258, i32 0, i32 5
  %err.ctx0.gep265 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep264, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep265, align 8
  %err.ctx1.gep266 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep264, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep266, align 8
  br label %a.wr.done249

a.wr.err.oob248:                                  ; preds = %a.wr.check245
  %arena.cur267 = call ptr @dva_arena_current()
  %err.alloc268 = call ptr @dva_arena_alloc(ptr %arena.cur267, i64 56)
  %err.code.gep269 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc268, i32 0, i32 0
  store i64 4011, ptr %err.code.gep269, align 8
  %err.msg.gep270 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc268, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep270, align 8
  %err.file.gep271 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc268, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep271, align 8
  %err.line.gep272 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc268, i32 0, i32 3
  store i64 0, ptr %err.line.gep272, align 8
  %err.col.gep273 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc268, i32 0, i32 4
  store i64 0, ptr %err.col.gep273, align 8
  %err.ctx.gep274 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc268, i32 0, i32 5
  %err.ctx0.gep275 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep274, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep275, align 8
  %err.ctx1.gep276 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep274, i32 0, i32 1
  store i64 %a.wr.len251, ptr %err.ctx1.gep276, align 8
  br label %a.wr.done249

a.wr.done249:                                     ; preds = %a.wr.err.oob248, %a.wr.err.null247, %a.wr.ok246
  %a.wr.niche277 = phi ptr [ null, %a.wr.ok246 ], [ %err.alloc258, %a.wr.err.null247 ], [ %err.alloc268, %a.wr.err.oob248 ]
  %niche.eq.null278 = icmp eq ptr %a.wr.niche277, null
  br i1 %niche.eq.null278, label %choice.then279, label %choice.else280

choice.then279:                                   ; preds = %a.wr.done249
  br label %choice.exit281

choice.else280:                                   ; preds = %a.wr.done249
  store ptr %a.wr.niche277, ptr %var._282, align 8
  store ptr %a.wr.niche277, ptr %var._283, align 8
  store ptr %a.wr.niche277, ptr %var._284, align 8
  %err.code.gep285 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche277, i32 0, i32 0
  %err.code286 = load i64, ptr %err.code.gep285, align 8
  %err.msg.gep287 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche277, i32 0, i32 1
  %err.msg.struct288 = load ptr, ptr %err.msg.gep287, align 8
  %err.file.gep289 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche277, i32 0, i32 2
  %err.file.struct290 = load ptr, ptr %err.file.gep289, align 8
  %err.line.gep291 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche277, i32 0, i32 3
  %err.line292 = load i64, ptr %err.line.gep291, align 8
  %err.col.gep293 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche277, i32 0, i32 4
  %err.col294 = load i64, ptr %err.col.gep293, align 8
  %err.msg.len295 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct288, i32 0, i32 0
  %err.msg.len296 = load i64, ptr %err.msg.len295, align 8
  %err.msg.len297 = and i64 %err.msg.len296, 281474976710655
  %str.tag298 = lshr i64 %err.msg.len296, 48
  %str.immortal299 = icmp eq i64 %str.tag298, 0
  br i1 %str.immortal299, label %str_ok301, label %str_gen_check300

choice.exit281:                                   ; preds = %err.abort328, %choice.then279
  %var.load329 = load ptr, ptr %var.state, align 8
  %var.load330 = load i64, ptr %var.u, align 8
  call void @"dep_graph::push_stack"(ptr %var.load329, i64 %var.load330)
  %var.load331 = load ptr, ptr %var.ons, align 8
  %a.load332 = load ptr, ptr %var.ons, align 8
  %a.null333 = icmp eq ptr %a.load332, null
  br i1 %a.null333, label %a.create334, label %a.after335

str_gen_check300:                                 ; preds = %choice.else280
  %arena.cur303 = call ptr @dva_arena_current()
  %tag.valid304 = call i1 @dva_arena_validate_tag(ptr %arena.cur303, i64 %str.tag298)
  br i1 %tag.valid304, label %str_ok301, label %str_stale302

str_ok301:                                        ; preds = %str_stale302, %str_gen_check300, %choice.else280
  %err.msg.len32305 = trunc i64 %err.msg.len297 to i32
  %err.msg.data306 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct288, i32 0, i32 1
  %err.msg.data307 = load ptr, ptr %err.msg.data306, align 8
  %err.file.len308 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct290, i32 0, i32 0
  %err.file.len309 = load i64, ptr %err.file.len308, align 8
  %err.file.len310 = and i64 %err.file.len309, 281474976710655
  %str.tag311 = lshr i64 %err.file.len309, 48
  %str.immortal312 = icmp eq i64 %str.tag311, 0
  br i1 %str.immortal312, label %str_ok314, label %str_gen_check313

str_stale302:                                     ; preds = %str_gen_check300
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok301

str_gen_check313:                                 ; preds = %str_ok301
  %arena.cur316 = call ptr @dva_arena_current()
  %tag.valid317 = call i1 @dva_arena_validate_tag(ptr %arena.cur316, i64 %str.tag311)
  br i1 %tag.valid317, label %str_ok314, label %str_stale315

str_ok314:                                        ; preds = %str_stale315, %str_gen_check313, %str_ok301
  %err.file.len32318 = trunc i64 %err.file.len310 to i32
  %err.file.data319 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct290, i32 0, i32 1
  %err.file.data320 = load ptr, ptr %err.file.data319, align 8
  %err.thread.rec321 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread322 = icmp ne ptr %err.thread.rec321, null
  br i1 %err.is.thread322, label %err.thread323, label %err.normal324

str_stale315:                                     ; preds = %str_gen_check313
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok314

err.thread323:                                    ; preds = %str_ok314
  %err.haserr.gep325 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec321, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep325, align 8
  %err.err.gep326 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec321, i32 0, i32 7
  store ptr %a.wr.niche277, ptr %err.err.gep326, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal324:                                    ; preds = %str_ok314
  %err.panic.printf327 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code286, i32 %err.msg.len32305, ptr %err.msg.data307, i32 %err.file.len32318, ptr %err.file.data320, i64 %err.line292, i64 %err.col294)
  call void @exit(i32 1)
  unreachable

err.abort328:                                     ; No predecessors!
  br label %choice.exit281

a.create334:                                      ; preds = %choice.exit281
  %arena.cur336 = call ptr @dva_arena_current()
  %a.create337 = call ptr @dva_arena_alloc(ptr %arena.cur336, i64 24)
  %arena.cur338 = call ptr @dva_arena_current()
  %a.buf339 = call ptr @dva_arena_alloc(ptr %arena.cur338, i64 128)
  %a.len.gep340 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create337, i32 0, i32 0
  store i64 0, ptr %a.len.gep340, align 8
  %a.data.gep341 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create337, i32 0, i32 1
  store ptr %a.buf339, ptr %a.data.gep341, align 8
  %a.cap.gep342 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create337, i32 0, i32 2
  store i64 16, ptr %a.cap.gep342, align 8
  store ptr %a.create337, ptr %var.ons, align 8
  br label %a.after335

a.after335:                                       ; preds = %a.create334, %choice.exit281
  %a.load2343 = load ptr, ptr %var.ons, align 8
  %var.load344 = load i64, ptr %var.u, align 8
  %a.wr.nonnull345 = icmp ne ptr %a.load2343, null
  br i1 %a.wr.nonnull345, label %a.wr.check346, label %a.wr.err.null348

a.wr.check346:                                    ; preds = %a.after335
  %a.wr.len351 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2343, i32 0, i32 0
  %a.wr.len352 = load i64, ptr %a.wr.len351, align 8
  %a.wr.ge0353 = icmp sge i64 %var.load344, 0
  %a.wr.lt354 = icmp slt i64 %var.load344, %a.wr.len352
  %a.wr.bounds355 = and i1 %a.wr.ge0353, %a.wr.lt354
  br i1 %a.wr.bounds355, label %a.wr.ok347, label %a.wr.err.oob349

a.wr.ok347:                                       ; preds = %a.wr.check346
  %a.wr.data356 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2343, i32 0, i32 1
  %a.wr.data357 = load ptr, ptr %a.wr.data356, align 8
  %a.elem.gep358 = getelementptr i64, ptr %a.wr.data357, i64 %var.load344
  store i64 1, ptr %a.elem.gep358, align 8
  br label %a.wr.done350

a.wr.err.null348:                                 ; preds = %a.after335
  %arena.cur359 = call ptr @dva_arena_current()
  %err.alloc360 = call ptr @dva_arena_alloc(ptr %arena.cur359, i64 56)
  %err.code.gep361 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc360, i32 0, i32 0
  store i64 4011, ptr %err.code.gep361, align 8
  %err.msg.gep362 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc360, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep362, align 8
  %err.file.gep363 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc360, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep363, align 8
  %err.line.gep364 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc360, i32 0, i32 3
  store i64 0, ptr %err.line.gep364, align 8
  %err.col.gep365 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc360, i32 0, i32 4
  store i64 0, ptr %err.col.gep365, align 8
  %err.ctx.gep366 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc360, i32 0, i32 5
  %err.ctx0.gep367 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep366, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep367, align 8
  %err.ctx1.gep368 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep366, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep368, align 8
  br label %a.wr.done350

a.wr.err.oob349:                                  ; preds = %a.wr.check346
  %arena.cur369 = call ptr @dva_arena_current()
  %err.alloc370 = call ptr @dva_arena_alloc(ptr %arena.cur369, i64 56)
  %err.code.gep371 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc370, i32 0, i32 0
  store i64 4011, ptr %err.code.gep371, align 8
  %err.msg.gep372 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc370, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep372, align 8
  %err.file.gep373 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc370, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep373, align 8
  %err.line.gep374 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc370, i32 0, i32 3
  store i64 0, ptr %err.line.gep374, align 8
  %err.col.gep375 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc370, i32 0, i32 4
  store i64 0, ptr %err.col.gep375, align 8
  %err.ctx.gep376 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc370, i32 0, i32 5
  %err.ctx0.gep377 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep376, i32 0, i32 0
  store i64 %var.load344, ptr %err.ctx0.gep377, align 8
  %err.ctx1.gep378 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep376, i32 0, i32 1
  store i64 %a.wr.len352, ptr %err.ctx1.gep378, align 8
  br label %a.wr.done350

a.wr.done350:                                     ; preds = %a.wr.err.oob349, %a.wr.err.null348, %a.wr.ok347
  %a.wr.niche379 = phi ptr [ null, %a.wr.ok347 ], [ %err.alloc360, %a.wr.err.null348 ], [ %err.alloc370, %a.wr.err.oob349 ]
  %niche.eq.null380 = icmp eq ptr %a.wr.niche379, null
  br i1 %niche.eq.null380, label %choice.then381, label %choice.else382

choice.then381:                                   ; preds = %a.wr.done350
  br label %choice.exit383

choice.else382:                                   ; preds = %a.wr.done350
  store ptr %a.wr.niche379, ptr %var._384, align 8
  store ptr %a.wr.niche379, ptr %var._385, align 8
  store ptr %a.wr.niche379, ptr %var._386, align 8
  %err.code.gep387 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche379, i32 0, i32 0
  %err.code388 = load i64, ptr %err.code.gep387, align 8
  %err.msg.gep389 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche379, i32 0, i32 1
  %err.msg.struct390 = load ptr, ptr %err.msg.gep389, align 8
  %err.file.gep391 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche379, i32 0, i32 2
  %err.file.struct392 = load ptr, ptr %err.file.gep391, align 8
  %err.line.gep393 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche379, i32 0, i32 3
  %err.line394 = load i64, ptr %err.line.gep393, align 8
  %err.col.gep395 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche379, i32 0, i32 4
  %err.col396 = load i64, ptr %err.col.gep395, align 8
  %err.msg.len397 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct390, i32 0, i32 0
  %err.msg.len398 = load i64, ptr %err.msg.len397, align 8
  %err.msg.len399 = and i64 %err.msg.len398, 281474976710655
  %str.tag400 = lshr i64 %err.msg.len398, 48
  %str.immortal401 = icmp eq i64 %str.tag400, 0
  br i1 %str.immortal401, label %str_ok403, label %str_gen_check402

choice.exit383:                                   ; preds = %err.abort430, %choice.then381
  %var.load431 = load ptr, ptr %var.graph, align 8
  %fld.gep432 = getelementptr inbounds { ptr, ptr }, ptr %var.load431, i32 0, i32 0
  %fld.load433 = load ptr, ptr %fld.gep432, align 8
  %var.load434 = load i64, ptr %var.u, align 8
  %a.rd.nonnull435 = icmp ne ptr %fld.load433, null
  br i1 %a.rd.nonnull435, label %a.rd.check436, label %a.rd.err.null438

str_gen_check402:                                 ; preds = %choice.else382
  %arena.cur405 = call ptr @dva_arena_current()
  %tag.valid406 = call i1 @dva_arena_validate_tag(ptr %arena.cur405, i64 %str.tag400)
  br i1 %tag.valid406, label %str_ok403, label %str_stale404

str_ok403:                                        ; preds = %str_stale404, %str_gen_check402, %choice.else382
  %err.msg.len32407 = trunc i64 %err.msg.len399 to i32
  %err.msg.data408 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct390, i32 0, i32 1
  %err.msg.data409 = load ptr, ptr %err.msg.data408, align 8
  %err.file.len410 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct392, i32 0, i32 0
  %err.file.len411 = load i64, ptr %err.file.len410, align 8
  %err.file.len412 = and i64 %err.file.len411, 281474976710655
  %str.tag413 = lshr i64 %err.file.len411, 48
  %str.immortal414 = icmp eq i64 %str.tag413, 0
  br i1 %str.immortal414, label %str_ok416, label %str_gen_check415

str_stale404:                                     ; preds = %str_gen_check402
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok403

str_gen_check415:                                 ; preds = %str_ok403
  %arena.cur418 = call ptr @dva_arena_current()
  %tag.valid419 = call i1 @dva_arena_validate_tag(ptr %arena.cur418, i64 %str.tag413)
  br i1 %tag.valid419, label %str_ok416, label %str_stale417

str_ok416:                                        ; preds = %str_stale417, %str_gen_check415, %str_ok403
  %err.file.len32420 = trunc i64 %err.file.len412 to i32
  %err.file.data421 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct392, i32 0, i32 1
  %err.file.data422 = load ptr, ptr %err.file.data421, align 8
  %err.thread.rec423 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread424 = icmp ne ptr %err.thread.rec423, null
  br i1 %err.is.thread424, label %err.thread425, label %err.normal426

str_stale417:                                     ; preds = %str_gen_check415
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok416

err.thread425:                                    ; preds = %str_ok416
  %err.haserr.gep427 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec423, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep427, align 8
  %err.err.gep428 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec423, i32 0, i32 7
  store ptr %a.wr.niche379, ptr %err.err.gep428, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal426:                                    ; preds = %str_ok416
  %err.panic.printf429 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code388, i32 %err.msg.len32407, ptr %err.msg.data409, i32 %err.file.len32420, ptr %err.file.data422, i64 %err.line394, i64 %err.col396)
  call void @exit(i32 1)
  unreachable

err.abort430:                                     ; No predecessors!
  br label %choice.exit383

a.rd.check436:                                    ; preds = %choice.exit383
  %a.rd.len441 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load433, i32 0, i32 0
  %a.rd.len442 = load i64, ptr %a.rd.len441, align 8
  %a.rd.ge0 = icmp sge i64 %var.load434, 0
  %a.rd.lt443 = icmp slt i64 %var.load434, %a.rd.len442
  %a.rd.bounds444 = and i1 %a.rd.ge0, %a.rd.lt443
  br i1 %a.rd.bounds444, label %a.rd.ok437, label %a.rd.err.oob439

a.rd.ok437:                                       ; preds = %a.rd.check436
  %a.rd.data445 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load433, i32 0, i32 1
  %a.rd.data446 = load ptr, ptr %a.rd.data445, align 8
  %a.rd.elem.gep447 = getelementptr i64, ptr %a.rd.data446, i64 %var.load434
  %a.rd.elem448 = load i64, ptr %a.rd.elem.gep447, align 8
  br label %a.rd.done440

a.rd.err.null438:                                 ; preds = %choice.exit383
  %arena.cur449 = call ptr @dva_arena_current()
  %err.alloc450 = call ptr @dva_arena_alloc(ptr %arena.cur449, i64 56)
  %err.code.gep451 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc450, i32 0, i32 0
  store i64 4011, ptr %err.code.gep451, align 8
  %err.msg.gep452 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc450, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep452, align 8
  %err.file.gep453 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc450, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep453, align 8
  %err.line.gep454 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc450, i32 0, i32 3
  store i64 0, ptr %err.line.gep454, align 8
  %err.col.gep455 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc450, i32 0, i32 4
  store i64 0, ptr %err.col.gep455, align 8
  %err.ctx.gep456 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc450, i32 0, i32 5
  %err.ctx0.gep457 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep456, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep457, align 8
  %err.ctx1.gep458 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep456, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep458, align 8
  %err.p2i459 = ptrtoint ptr %err.alloc450 to i64
  br label %a.rd.done440

a.rd.err.oob439:                                  ; preds = %a.rd.check436
  %arena.cur460 = call ptr @dva_arena_current()
  %err.alloc461 = call ptr @dva_arena_alloc(ptr %arena.cur460, i64 56)
  %err.code.gep462 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc461, i32 0, i32 0
  store i64 4011, ptr %err.code.gep462, align 8
  %err.msg.gep463 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc461, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep463, align 8
  %err.file.gep464 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc461, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep464, align 8
  %err.line.gep465 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc461, i32 0, i32 3
  store i64 0, ptr %err.line.gep465, align 8
  %err.col.gep466 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc461, i32 0, i32 4
  store i64 0, ptr %err.col.gep466, align 8
  %err.ctx.gep467 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc461, i32 0, i32 5
  %err.ctx0.gep468 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep467, i32 0, i32 0
  store i64 %var.load434, ptr %err.ctx0.gep468, align 8
  %err.ctx1.gep469 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep467, i32 0, i32 1
  store i64 %a.rd.len442, ptr %err.ctx1.gep469, align 8
  %err.p2i470 = ptrtoint ptr %err.alloc461 to i64
  br label %a.rd.done440

a.rd.done440:                                     ; preds = %a.rd.err.oob439, %a.rd.err.null438, %a.rd.ok437
  %a.rd.tag471 = phi i1 [ true, %a.rd.ok437 ], [ false, %a.rd.err.null438 ], [ false, %a.rd.err.oob439 ]
  %a.rd.pay472 = phi i64 [ %a.rd.elem448, %a.rd.ok437 ], [ %err.p2i459, %a.rd.err.null438 ], [ %err.p2i470, %a.rd.err.oob439 ]
  %ram.tag473 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag471, 0
  %ram.pay474 = insertvalue { i1, i64 } %ram.tag473, i64 %a.rd.pay472, 1
  %unwrap.is_pos475 = extractvalue { i1, i64 } %ram.pay474, 0
  br i1 %unwrap.is_pos475, label %unwrap.pos.69, label %unwrap.abort.69

unwrap.pos.69:                                    ; preds = %a.rd.done440
  %unwrap.pay.pos521 = extractvalue { i1, i64 } %ram.pay474, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos521 to ptr
  store ptr %pay.ptr, ptr %var.u_node, align 8
  %var.load522 = load ptr, ptr %var.u_node, align 8
  %fld.gep523 = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load522, i32 0, i32 1
  %fld.load524 = load ptr, ptr %fld.gep523, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load524, i32 0, i32 0
  %arr.cycle.len525 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load524, i32 0, i32 1
  %arr.cycle.data526 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.70, align 8
  br label %loop.header.70

unwrap.abort.69:                                  ; preds = %a.rd.done440
  %unwrap.pay.abort476 = extractvalue { i1, i64 } %ram.pay474, 1
  %err.ptr477 = inttoptr i64 %unwrap.pay.abort476 to ptr
  %err.code.gep478 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr477, i32 0, i32 0
  %err.code479 = load i64, ptr %err.code.gep478, align 8
  %err.msg.gep480 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr477, i32 0, i32 1
  %err.msg.struct481 = load ptr, ptr %err.msg.gep480, align 8
  %err.file.gep482 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr477, i32 0, i32 2
  %err.file.struct483 = load ptr, ptr %err.file.gep482, align 8
  %err.line.gep484 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr477, i32 0, i32 3
  %err.line485 = load i64, ptr %err.line.gep484, align 8
  %err.col.gep486 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr477, i32 0, i32 4
  %err.col487 = load i64, ptr %err.col.gep486, align 8
  %err.msg.len488 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct481, i32 0, i32 0
  %err.msg.len489 = load i64, ptr %err.msg.len488, align 8
  %err.msg.len490 = and i64 %err.msg.len489, 281474976710655
  %str.tag491 = lshr i64 %err.msg.len489, 48
  %str.immortal492 = icmp eq i64 %str.tag491, 0
  br i1 %str.immortal492, label %str_ok494, label %str_gen_check493

str_gen_check493:                                 ; preds = %unwrap.abort.69
  %arena.cur496 = call ptr @dva_arena_current()
  %tag.valid497 = call i1 @dva_arena_validate_tag(ptr %arena.cur496, i64 %str.tag491)
  br i1 %tag.valid497, label %str_ok494, label %str_stale495

str_ok494:                                        ; preds = %str_stale495, %str_gen_check493, %unwrap.abort.69
  %err.msg.len32498 = trunc i64 %err.msg.len490 to i32
  %err.msg.data499 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct481, i32 0, i32 1
  %err.msg.data500 = load ptr, ptr %err.msg.data499, align 8
  %err.file.len501 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct483, i32 0, i32 0
  %err.file.len502 = load i64, ptr %err.file.len501, align 8
  %err.file.len503 = and i64 %err.file.len502, 281474976710655
  %str.tag504 = lshr i64 %err.file.len502, 48
  %str.immortal505 = icmp eq i64 %str.tag504, 0
  br i1 %str.immortal505, label %str_ok507, label %str_gen_check506

str_stale495:                                     ; preds = %str_gen_check493
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok494

str_gen_check506:                                 ; preds = %str_ok494
  %arena.cur509 = call ptr @dva_arena_current()
  %tag.valid510 = call i1 @dva_arena_validate_tag(ptr %arena.cur509, i64 %str.tag504)
  br i1 %tag.valid510, label %str_ok507, label %str_stale508

str_ok507:                                        ; preds = %str_stale508, %str_gen_check506, %str_ok494
  %err.file.len32511 = trunc i64 %err.file.len503 to i32
  %err.file.data512 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct483, i32 0, i32 1
  %err.file.data513 = load ptr, ptr %err.file.data512, align 8
  %err.thread.rec514 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread515 = icmp ne ptr %err.thread.rec514, null
  br i1 %err.is.thread515, label %err.thread516, label %err.normal517

str_stale508:                                     ; preds = %str_gen_check506
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok507

err.thread516:                                    ; preds = %str_ok507
  %err.haserr.gep518 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec514, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep518, align 8
  %err.err.gep519 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec514, i32 0, i32 7
  store ptr %err.ptr477, ptr %err.err.gep519, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal517:                                    ; preds = %str_ok507
  %err.panic.printf520 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code479, i32 %err.msg.len32498, ptr %err.msg.data500, i32 %err.file.len32511, ptr %err.file.data513, i64 %err.line485, i64 %err.col487)
  call void @exit(i32 1)
  unreachable

loop.header.70:                                   ; preds = %loop.latch.70, %unwrap.pos.69
  %counter.load = load i64, ptr %loop.idx.70, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len525
  br i1 %loop.cond, label %loop.body.70, label %loop.exit.nat.70

loop.body.70:                                     ; preds = %loop.header.70
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.70, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data526, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._527, align 8
  store ptr %slot.i2p, ptr %var.d_name, align 8
  %var.load528 = load ptr, ptr %var.graph, align 8
  %var.load529 = load ptr, ptr %var.d_name, align 8
  %call.res = call i64 @"dep_graph::find_node_idx"(ptr %var.load528, ptr %var.load529)
  store i64 %call.res, ptr %var.v, align 8
  %var.load530 = load i64, ptr %var.v, align 8
  %cmptmp = icmp sge i64 %var.load530, 0
  br i1 %cmptmp, label %choice.then531, label %choice.exit532

loop.exit.nat.70:                                 ; preds = %loop.header.70
  br label %loop.exit.70

loop.latch.70:                                    ; preds = %choice.exit532
  %step.val = load i64, ptr %loop.step.70, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.70, align 8
  br label %loop.header.70

loop.exit.70:                                     ; preds = %loop.exit.nat.70
  %var.load1282 = load ptr, ptr %var.lows, align 8
  %a.load1283 = load ptr, ptr %var.lows, align 8
  %a.null1284 = icmp eq ptr %a.load1283, null
  br i1 %a.null1284, label %a.create1285, label %a.after1286

choice.then531:                                   ; preds = %loop.body.70
  %var.load533 = load ptr, ptr %var.idxs, align 8
  %a.load534 = load ptr, ptr %var.idxs, align 8
  %a.null535 = icmp eq ptr %a.load534, null
  br i1 %a.null535, label %a.create536, label %a.after537

choice.exit532:                                   ; preds = %choice.exit601, %loop.body.70
  br label %loop.latch.70

a.create536:                                      ; preds = %choice.then531
  %arena.cur538 = call ptr @dva_arena_current()
  %a.create539 = call ptr @dva_arena_alloc(ptr %arena.cur538, i64 24)
  %arena.cur540 = call ptr @dva_arena_current()
  %a.buf541 = call ptr @dva_arena_alloc(ptr %arena.cur540, i64 128)
  %a.len.gep542 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create539, i32 0, i32 0
  store i64 0, ptr %a.len.gep542, align 8
  %a.data.gep543 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create539, i32 0, i32 1
  store ptr %a.buf541, ptr %a.data.gep543, align 8
  %a.cap.gep544 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create539, i32 0, i32 2
  store i64 16, ptr %a.cap.gep544, align 8
  store ptr %a.create539, ptr %var.idxs, align 8
  br label %a.after537

a.after537:                                       ; preds = %a.create536, %choice.then531
  %a.load2545 = load ptr, ptr %var.idxs, align 8
  %var.load546 = load i64, ptr %var.v, align 8
  %a.rd.nonnull547 = icmp ne ptr %a.load2545, null
  br i1 %a.rd.nonnull547, label %a.rd.check548, label %a.rd.err.null550

a.rd.check548:                                    ; preds = %a.after537
  %a.rd.len553 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2545, i32 0, i32 0
  %a.rd.len554 = load i64, ptr %a.rd.len553, align 8
  %a.rd.ge0555 = icmp sge i64 %var.load546, 0
  %a.rd.lt556 = icmp slt i64 %var.load546, %a.rd.len554
  %a.rd.bounds557 = and i1 %a.rd.ge0555, %a.rd.lt556
  br i1 %a.rd.bounds557, label %a.rd.ok549, label %a.rd.err.oob551

a.rd.ok549:                                       ; preds = %a.rd.check548
  %a.rd.data558 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2545, i32 0, i32 1
  %a.rd.data559 = load ptr, ptr %a.rd.data558, align 8
  %a.rd.elem.gep560 = getelementptr i64, ptr %a.rd.data559, i64 %var.load546
  %a.rd.elem561 = load i64, ptr %a.rd.elem.gep560, align 8
  br label %a.rd.done552

a.rd.err.null550:                                 ; preds = %a.after537
  %arena.cur562 = call ptr @dva_arena_current()
  %err.alloc563 = call ptr @dva_arena_alloc(ptr %arena.cur562, i64 56)
  %err.code.gep564 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc563, i32 0, i32 0
  store i64 4011, ptr %err.code.gep564, align 8
  %err.msg.gep565 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc563, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep565, align 8
  %err.file.gep566 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc563, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep566, align 8
  %err.line.gep567 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc563, i32 0, i32 3
  store i64 302, ptr %err.line.gep567, align 8
  %err.col.gep568 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc563, i32 0, i32 4
  store i64 29, ptr %err.col.gep568, align 8
  %err.ctx.gep569 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc563, i32 0, i32 5
  %err.ctx0.gep570 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep569, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep570, align 8
  %err.ctx1.gep571 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep569, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep571, align 8
  %err.p2i572 = ptrtoint ptr %err.alloc563 to i64
  br label %a.rd.done552

a.rd.err.oob551:                                  ; preds = %a.rd.check548
  %arena.cur573 = call ptr @dva_arena_current()
  %err.alloc574 = call ptr @dva_arena_alloc(ptr %arena.cur573, i64 56)
  %err.code.gep575 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc574, i32 0, i32 0
  store i64 4011, ptr %err.code.gep575, align 8
  %err.msg.gep576 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc574, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep576, align 8
  %err.file.gep577 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc574, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep577, align 8
  %err.line.gep578 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc574, i32 0, i32 3
  store i64 302, ptr %err.line.gep578, align 8
  %err.col.gep579 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc574, i32 0, i32 4
  store i64 29, ptr %err.col.gep579, align 8
  %err.ctx.gep580 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc574, i32 0, i32 5
  %err.ctx0.gep581 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep580, i32 0, i32 0
  store i64 %var.load546, ptr %err.ctx0.gep581, align 8
  %err.ctx1.gep582 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep580, i32 0, i32 1
  store i64 %a.rd.len554, ptr %err.ctx1.gep582, align 8
  %err.p2i583 = ptrtoint ptr %err.alloc574 to i64
  br label %a.rd.done552

a.rd.done552:                                     ; preds = %a.rd.err.oob551, %a.rd.err.null550, %a.rd.ok549
  %a.rd.tag584 = phi i1 [ true, %a.rd.ok549 ], [ false, %a.rd.err.null550 ], [ false, %a.rd.err.oob551 ]
  %a.rd.pay585 = phi i64 [ %a.rd.elem561, %a.rd.ok549 ], [ %err.p2i572, %a.rd.err.null550 ], [ %err.p2i583, %a.rd.err.oob551 ]
  %ram.tag586 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag584, 0
  %ram.pay587 = insertvalue { i1, i64 } %ram.tag586, i64 %a.rd.pay585, 1
  %ram.tag588 = extractvalue { i1, i64 } %ram.pay587, 0
  br i1 %ram.tag588, label %choice.then589, label %choice.else590

choice.then589:                                   ; preds = %a.rd.done552
  %ram.pay592 = extractvalue { i1, i64 } %ram.pay587, 1
  store i64 %ram.pay592, ptr %var._593, align 8
  br label %choice.exit591

choice.else590:                                   ; preds = %a.rd.done552
  %ram.pay594 = extractvalue { i1, i64 } %ram.pay587, 1
  %pay.ptr595 = inttoptr i64 %ram.pay594 to ptr
  store ptr %pay.ptr595, ptr %var._596, align 8
  br label %choice.exit591

choice.exit591:                                   ; preds = %choice.else590, %choice.then589
  %choice.res = phi i64 [ %ram.pay592, %choice.then589 ], [ -1, %choice.else590 ]
  store i64 %choice.res, ptr %var.v_idx, align 8
  %var.load597 = load i64, ptr %var.v_idx, align 8
  %cmptmp598 = icmp slt i64 %var.load597, 0
  br i1 %cmptmp598, label %choice.then599, label %choice.else600

choice.then599:                                   ; preds = %choice.exit591
  %var.load602 = load ptr, ptr %var.graph, align 8
  %var.load603 = load ptr, ptr %var.state, align 8
  %var.load604 = load i64, ptr %var.v, align 8
  call void @"dep_graph::tarjan_dfs"(ptr %var.load602, ptr %var.load603, i64 %var.load604)
  %var.load605 = load ptr, ptr %var.lows, align 8
  %a.load606 = load ptr, ptr %var.lows, align 8
  %a.null607 = icmp eq ptr %a.load606, null
  br i1 %a.null607, label %a.create608, label %a.after609

choice.else600:                                   ; preds = %choice.exit591
  %var.load909 = load ptr, ptr %var.ons, align 8
  %a.load910 = load ptr, ptr %var.ons, align 8
  %a.null911 = icmp eq ptr %a.load910, null
  br i1 %a.null911, label %a.create912, label %a.after913

choice.exit601:                                   ; preds = %choice.exit976, %choice.exit861
  br label %choice.exit532

a.create608:                                      ; preds = %choice.then599
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
  store ptr %a.create611, ptr %var.lows, align 8
  br label %a.after609

a.after609:                                       ; preds = %a.create608, %choice.then599
  %a.load2617 = load ptr, ptr %var.lows, align 8
  %var.load618 = load i64, ptr %var.u, align 8
  %var.load619 = load ptr, ptr %var.lows, align 8
  %a.load620 = load ptr, ptr %var.lows, align 8
  %a.null621 = icmp eq ptr %a.load620, null
  br i1 %a.null621, label %a.create622, label %a.after623

a.create622:                                      ; preds = %a.after609
  %arena.cur624 = call ptr @dva_arena_current()
  %a.create625 = call ptr @dva_arena_alloc(ptr %arena.cur624, i64 24)
  %arena.cur626 = call ptr @dva_arena_current()
  %a.buf627 = call ptr @dva_arena_alloc(ptr %arena.cur626, i64 128)
  %a.len.gep628 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create625, i32 0, i32 0
  store i64 0, ptr %a.len.gep628, align 8
  %a.data.gep629 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create625, i32 0, i32 1
  store ptr %a.buf627, ptr %a.data.gep629, align 8
  %a.cap.gep630 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create625, i32 0, i32 2
  store i64 16, ptr %a.cap.gep630, align 8
  store ptr %a.create625, ptr %var.lows, align 8
  br label %a.after623

a.after623:                                       ; preds = %a.create622, %a.after609
  %a.load2631 = load ptr, ptr %var.lows, align 8
  %var.load632 = load i64, ptr %var.u, align 8
  %a.rd.nonnull633 = icmp ne ptr %a.load2631, null
  br i1 %a.rd.nonnull633, label %a.rd.check634, label %a.rd.err.null636

a.rd.check634:                                    ; preds = %a.after623
  %a.rd.len639 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2631, i32 0, i32 0
  %a.rd.len640 = load i64, ptr %a.rd.len639, align 8
  %a.rd.ge0641 = icmp sge i64 %var.load632, 0
  %a.rd.lt642 = icmp slt i64 %var.load632, %a.rd.len640
  %a.rd.bounds643 = and i1 %a.rd.ge0641, %a.rd.lt642
  br i1 %a.rd.bounds643, label %a.rd.ok635, label %a.rd.err.oob637

a.rd.ok635:                                       ; preds = %a.rd.check634
  %a.rd.data644 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2631, i32 0, i32 1
  %a.rd.data645 = load ptr, ptr %a.rd.data644, align 8
  %a.rd.elem.gep646 = getelementptr i64, ptr %a.rd.data645, i64 %var.load632
  %a.rd.elem647 = load i64, ptr %a.rd.elem.gep646, align 8
  br label %a.rd.done638

a.rd.err.null636:                                 ; preds = %a.after623
  %arena.cur648 = call ptr @dva_arena_current()
  %err.alloc649 = call ptr @dva_arena_alloc(ptr %arena.cur648, i64 56)
  %err.code.gep650 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc649, i32 0, i32 0
  store i64 4011, ptr %err.code.gep650, align 8
  %err.msg.gep651 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc649, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep651, align 8
  %err.file.gep652 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc649, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep652, align 8
  %err.line.gep653 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc649, i32 0, i32 3
  store i64 306, ptr %err.line.gep653, align 8
  %err.col.gep654 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc649, i32 0, i32 4
  store i64 41, ptr %err.col.gep654, align 8
  %err.ctx.gep655 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc649, i32 0, i32 5
  %err.ctx0.gep656 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep655, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep656, align 8
  %err.ctx1.gep657 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep655, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep657, align 8
  %err.p2i658 = ptrtoint ptr %err.alloc649 to i64
  br label %a.rd.done638

a.rd.err.oob637:                                  ; preds = %a.rd.check634
  %arena.cur659 = call ptr @dva_arena_current()
  %err.alloc660 = call ptr @dva_arena_alloc(ptr %arena.cur659, i64 56)
  %err.code.gep661 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc660, i32 0, i32 0
  store i64 4011, ptr %err.code.gep661, align 8
  %err.msg.gep662 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc660, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep662, align 8
  %err.file.gep663 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc660, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep663, align 8
  %err.line.gep664 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc660, i32 0, i32 3
  store i64 306, ptr %err.line.gep664, align 8
  %err.col.gep665 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc660, i32 0, i32 4
  store i64 41, ptr %err.col.gep665, align 8
  %err.ctx.gep666 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc660, i32 0, i32 5
  %err.ctx0.gep667 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep666, i32 0, i32 0
  store i64 %var.load632, ptr %err.ctx0.gep667, align 8
  %err.ctx1.gep668 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep666, i32 0, i32 1
  store i64 %a.rd.len640, ptr %err.ctx1.gep668, align 8
  %err.p2i669 = ptrtoint ptr %err.alloc660 to i64
  br label %a.rd.done638

a.rd.done638:                                     ; preds = %a.rd.err.oob637, %a.rd.err.null636, %a.rd.ok635
  %a.rd.tag670 = phi i1 [ true, %a.rd.ok635 ], [ false, %a.rd.err.null636 ], [ false, %a.rd.err.oob637 ]
  %a.rd.pay671 = phi i64 [ %a.rd.elem647, %a.rd.ok635 ], [ %err.p2i658, %a.rd.err.null636 ], [ %err.p2i669, %a.rd.err.oob637 ]
  %ram.tag672 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag670, 0
  %ram.pay673 = insertvalue { i1, i64 } %ram.tag672, i64 %a.rd.pay671, 1
  %unwrap.is_pos674 = extractvalue { i1, i64 } %ram.pay673, 0
  br i1 %unwrap.is_pos674, label %unwrap.pos.71, label %unwrap.abort.71

unwrap.pos.71:                                    ; preds = %a.rd.done638
  %unwrap.pay.pos720 = extractvalue { i1, i64 } %ram.pay673, 1
  %var.load721 = load ptr, ptr %var.lows, align 8
  %a.load722 = load ptr, ptr %var.lows, align 8
  %a.null723 = icmp eq ptr %a.load722, null
  br i1 %a.null723, label %a.create724, label %a.after725

unwrap.abort.71:                                  ; preds = %a.rd.done638
  %unwrap.pay.abort675 = extractvalue { i1, i64 } %ram.pay673, 1
  %err.ptr676 = inttoptr i64 %unwrap.pay.abort675 to ptr
  %err.code.gep677 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr676, i32 0, i32 0
  %err.code678 = load i64, ptr %err.code.gep677, align 8
  %err.msg.gep679 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr676, i32 0, i32 1
  %err.msg.struct680 = load ptr, ptr %err.msg.gep679, align 8
  %err.file.gep681 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr676, i32 0, i32 2
  %err.file.struct682 = load ptr, ptr %err.file.gep681, align 8
  %err.line.gep683 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr676, i32 0, i32 3
  %err.line684 = load i64, ptr %err.line.gep683, align 8
  %err.col.gep685 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr676, i32 0, i32 4
  %err.col686 = load i64, ptr %err.col.gep685, align 8
  %err.msg.len687 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct680, i32 0, i32 0
  %err.msg.len688 = load i64, ptr %err.msg.len687, align 8
  %err.msg.len689 = and i64 %err.msg.len688, 281474976710655
  %str.tag690 = lshr i64 %err.msg.len688, 48
  %str.immortal691 = icmp eq i64 %str.tag690, 0
  br i1 %str.immortal691, label %str_ok693, label %str_gen_check692

str_gen_check692:                                 ; preds = %unwrap.abort.71
  %arena.cur695 = call ptr @dva_arena_current()
  %tag.valid696 = call i1 @dva_arena_validate_tag(ptr %arena.cur695, i64 %str.tag690)
  br i1 %tag.valid696, label %str_ok693, label %str_stale694

str_ok693:                                        ; preds = %str_stale694, %str_gen_check692, %unwrap.abort.71
  %err.msg.len32697 = trunc i64 %err.msg.len689 to i32
  %err.msg.data698 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct680, i32 0, i32 1
  %err.msg.data699 = load ptr, ptr %err.msg.data698, align 8
  %err.file.len700 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct682, i32 0, i32 0
  %err.file.len701 = load i64, ptr %err.file.len700, align 8
  %err.file.len702 = and i64 %err.file.len701, 281474976710655
  %str.tag703 = lshr i64 %err.file.len701, 48
  %str.immortal704 = icmp eq i64 %str.tag703, 0
  br i1 %str.immortal704, label %str_ok706, label %str_gen_check705

str_stale694:                                     ; preds = %str_gen_check692
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok693

str_gen_check705:                                 ; preds = %str_ok693
  %arena.cur708 = call ptr @dva_arena_current()
  %tag.valid709 = call i1 @dva_arena_validate_tag(ptr %arena.cur708, i64 %str.tag703)
  br i1 %tag.valid709, label %str_ok706, label %str_stale707

str_ok706:                                        ; preds = %str_stale707, %str_gen_check705, %str_ok693
  %err.file.len32710 = trunc i64 %err.file.len702 to i32
  %err.file.data711 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct682, i32 0, i32 1
  %err.file.data712 = load ptr, ptr %err.file.data711, align 8
  %err.thread.rec713 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread714 = icmp ne ptr %err.thread.rec713, null
  br i1 %err.is.thread714, label %err.thread715, label %err.normal716

str_stale707:                                     ; preds = %str_gen_check705
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok706

err.thread715:                                    ; preds = %str_ok706
  %err.haserr.gep717 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec713, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep717, align 8
  %err.err.gep718 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec713, i32 0, i32 7
  store ptr %err.ptr676, ptr %err.err.gep718, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal716:                                    ; preds = %str_ok706
  %err.panic.printf719 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code678, i32 %err.msg.len32697, ptr %err.msg.data699, i32 %err.file.len32710, ptr %err.file.data712, i64 %err.line684, i64 %err.col686)
  call void @exit(i32 1)
  unreachable

a.create724:                                      ; preds = %unwrap.pos.71
  %arena.cur726 = call ptr @dva_arena_current()
  %a.create727 = call ptr @dva_arena_alloc(ptr %arena.cur726, i64 24)
  %arena.cur728 = call ptr @dva_arena_current()
  %a.buf729 = call ptr @dva_arena_alloc(ptr %arena.cur728, i64 128)
  %a.len.gep730 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create727, i32 0, i32 0
  store i64 0, ptr %a.len.gep730, align 8
  %a.data.gep731 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create727, i32 0, i32 1
  store ptr %a.buf729, ptr %a.data.gep731, align 8
  %a.cap.gep732 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create727, i32 0, i32 2
  store i64 16, ptr %a.cap.gep732, align 8
  store ptr %a.create727, ptr %var.lows, align 8
  br label %a.after725

a.after725:                                       ; preds = %a.create724, %unwrap.pos.71
  %a.load2733 = load ptr, ptr %var.lows, align 8
  %var.load734 = load i64, ptr %var.v, align 8
  %a.rd.nonnull735 = icmp ne ptr %a.load2733, null
  br i1 %a.rd.nonnull735, label %a.rd.check736, label %a.rd.err.null738

a.rd.check736:                                    ; preds = %a.after725
  %a.rd.len741 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2733, i32 0, i32 0
  %a.rd.len742 = load i64, ptr %a.rd.len741, align 8
  %a.rd.ge0743 = icmp sge i64 %var.load734, 0
  %a.rd.lt744 = icmp slt i64 %var.load734, %a.rd.len742
  %a.rd.bounds745 = and i1 %a.rd.ge0743, %a.rd.lt744
  br i1 %a.rd.bounds745, label %a.rd.ok737, label %a.rd.err.oob739

a.rd.ok737:                                       ; preds = %a.rd.check736
  %a.rd.data746 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2733, i32 0, i32 1
  %a.rd.data747 = load ptr, ptr %a.rd.data746, align 8
  %a.rd.elem.gep748 = getelementptr i64, ptr %a.rd.data747, i64 %var.load734
  %a.rd.elem749 = load i64, ptr %a.rd.elem.gep748, align 8
  br label %a.rd.done740

a.rd.err.null738:                                 ; preds = %a.after725
  %arena.cur750 = call ptr @dva_arena_current()
  %err.alloc751 = call ptr @dva_arena_alloc(ptr %arena.cur750, i64 56)
  %err.code.gep752 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc751, i32 0, i32 0
  store i64 4011, ptr %err.code.gep752, align 8
  %err.msg.gep753 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc751, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep753, align 8
  %err.file.gep754 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc751, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep754, align 8
  %err.line.gep755 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc751, i32 0, i32 3
  store i64 306, ptr %err.line.gep755, align 8
  %err.col.gep756 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc751, i32 0, i32 4
  store i64 52, ptr %err.col.gep756, align 8
  %err.ctx.gep757 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc751, i32 0, i32 5
  %err.ctx0.gep758 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep757, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep758, align 8
  %err.ctx1.gep759 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep757, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep759, align 8
  %err.p2i760 = ptrtoint ptr %err.alloc751 to i64
  br label %a.rd.done740

a.rd.err.oob739:                                  ; preds = %a.rd.check736
  %arena.cur761 = call ptr @dva_arena_current()
  %err.alloc762 = call ptr @dva_arena_alloc(ptr %arena.cur761, i64 56)
  %err.code.gep763 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc762, i32 0, i32 0
  store i64 4011, ptr %err.code.gep763, align 8
  %err.msg.gep764 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc762, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep764, align 8
  %err.file.gep765 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc762, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep765, align 8
  %err.line.gep766 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc762, i32 0, i32 3
  store i64 306, ptr %err.line.gep766, align 8
  %err.col.gep767 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc762, i32 0, i32 4
  store i64 52, ptr %err.col.gep767, align 8
  %err.ctx.gep768 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc762, i32 0, i32 5
  %err.ctx0.gep769 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep768, i32 0, i32 0
  store i64 %var.load734, ptr %err.ctx0.gep769, align 8
  %err.ctx1.gep770 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep768, i32 0, i32 1
  store i64 %a.rd.len742, ptr %err.ctx1.gep770, align 8
  %err.p2i771 = ptrtoint ptr %err.alloc762 to i64
  br label %a.rd.done740

a.rd.done740:                                     ; preds = %a.rd.err.oob739, %a.rd.err.null738, %a.rd.ok737
  %a.rd.tag772 = phi i1 [ true, %a.rd.ok737 ], [ false, %a.rd.err.null738 ], [ false, %a.rd.err.oob739 ]
  %a.rd.pay773 = phi i64 [ %a.rd.elem749, %a.rd.ok737 ], [ %err.p2i760, %a.rd.err.null738 ], [ %err.p2i771, %a.rd.err.oob739 ]
  %ram.tag774 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag772, 0
  %ram.pay775 = insertvalue { i1, i64 } %ram.tag774, i64 %a.rd.pay773, 1
  %unwrap.is_pos776 = extractvalue { i1, i64 } %ram.pay775, 0
  br i1 %unwrap.is_pos776, label %unwrap.pos.72, label %unwrap.abort.72

unwrap.pos.72:                                    ; preds = %a.rd.done740
  %unwrap.pay.pos822 = extractvalue { i1, i64 } %ram.pay775, 1
  %min = call i64 @llvm.smin.i64(i64 %unwrap.pay.pos720, i64 %unwrap.pay.pos822)
  %a.wr.nonnull823 = icmp ne ptr %a.load2617, null
  br i1 %a.wr.nonnull823, label %a.wr.check824, label %a.wr.err.null826

unwrap.abort.72:                                  ; preds = %a.rd.done740
  %unwrap.pay.abort777 = extractvalue { i1, i64 } %ram.pay775, 1
  %err.ptr778 = inttoptr i64 %unwrap.pay.abort777 to ptr
  %err.code.gep779 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr778, i32 0, i32 0
  %err.code780 = load i64, ptr %err.code.gep779, align 8
  %err.msg.gep781 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr778, i32 0, i32 1
  %err.msg.struct782 = load ptr, ptr %err.msg.gep781, align 8
  %err.file.gep783 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr778, i32 0, i32 2
  %err.file.struct784 = load ptr, ptr %err.file.gep783, align 8
  %err.line.gep785 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr778, i32 0, i32 3
  %err.line786 = load i64, ptr %err.line.gep785, align 8
  %err.col.gep787 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr778, i32 0, i32 4
  %err.col788 = load i64, ptr %err.col.gep787, align 8
  %err.msg.len789 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct782, i32 0, i32 0
  %err.msg.len790 = load i64, ptr %err.msg.len789, align 8
  %err.msg.len791 = and i64 %err.msg.len790, 281474976710655
  %str.tag792 = lshr i64 %err.msg.len790, 48
  %str.immortal793 = icmp eq i64 %str.tag792, 0
  br i1 %str.immortal793, label %str_ok795, label %str_gen_check794

str_gen_check794:                                 ; preds = %unwrap.abort.72
  %arena.cur797 = call ptr @dva_arena_current()
  %tag.valid798 = call i1 @dva_arena_validate_tag(ptr %arena.cur797, i64 %str.tag792)
  br i1 %tag.valid798, label %str_ok795, label %str_stale796

str_ok795:                                        ; preds = %str_stale796, %str_gen_check794, %unwrap.abort.72
  %err.msg.len32799 = trunc i64 %err.msg.len791 to i32
  %err.msg.data800 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct782, i32 0, i32 1
  %err.msg.data801 = load ptr, ptr %err.msg.data800, align 8
  %err.file.len802 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct784, i32 0, i32 0
  %err.file.len803 = load i64, ptr %err.file.len802, align 8
  %err.file.len804 = and i64 %err.file.len803, 281474976710655
  %str.tag805 = lshr i64 %err.file.len803, 48
  %str.immortal806 = icmp eq i64 %str.tag805, 0
  br i1 %str.immortal806, label %str_ok808, label %str_gen_check807

str_stale796:                                     ; preds = %str_gen_check794
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok795

str_gen_check807:                                 ; preds = %str_ok795
  %arena.cur810 = call ptr @dva_arena_current()
  %tag.valid811 = call i1 @dva_arena_validate_tag(ptr %arena.cur810, i64 %str.tag805)
  br i1 %tag.valid811, label %str_ok808, label %str_stale809

str_ok808:                                        ; preds = %str_stale809, %str_gen_check807, %str_ok795
  %err.file.len32812 = trunc i64 %err.file.len804 to i32
  %err.file.data813 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct784, i32 0, i32 1
  %err.file.data814 = load ptr, ptr %err.file.data813, align 8
  %err.thread.rec815 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread816 = icmp ne ptr %err.thread.rec815, null
  br i1 %err.is.thread816, label %err.thread817, label %err.normal818

str_stale809:                                     ; preds = %str_gen_check807
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok808

err.thread817:                                    ; preds = %str_ok808
  %err.haserr.gep819 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec815, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep819, align 8
  %err.err.gep820 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec815, i32 0, i32 7
  store ptr %err.ptr778, ptr %err.err.gep820, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal818:                                    ; preds = %str_ok808
  %err.panic.printf821 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code780, i32 %err.msg.len32799, ptr %err.msg.data801, i32 %err.file.len32812, ptr %err.file.data814, i64 %err.line786, i64 %err.col788)
  call void @exit(i32 1)
  unreachable

a.wr.check824:                                    ; preds = %unwrap.pos.72
  %a.wr.len829 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2617, i32 0, i32 0
  %a.wr.len830 = load i64, ptr %a.wr.len829, align 8
  %a.wr.ge0831 = icmp sge i64 %var.load618, 0
  %a.wr.lt832 = icmp slt i64 %var.load618, %a.wr.len830
  %a.wr.bounds833 = and i1 %a.wr.ge0831, %a.wr.lt832
  br i1 %a.wr.bounds833, label %a.wr.ok825, label %a.wr.err.oob827

a.wr.ok825:                                       ; preds = %a.wr.check824
  %a.wr.data834 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2617, i32 0, i32 1
  %a.wr.data835 = load ptr, ptr %a.wr.data834, align 8
  %a.elem.gep836 = getelementptr i64, ptr %a.wr.data835, i64 %var.load618
  store i64 %min, ptr %a.elem.gep836, align 8
  br label %a.wr.done828

a.wr.err.null826:                                 ; preds = %unwrap.pos.72
  %arena.cur837 = call ptr @dva_arena_current()
  %err.alloc838 = call ptr @dva_arena_alloc(ptr %arena.cur837, i64 56)
  %err.code.gep839 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc838, i32 0, i32 0
  store i64 4011, ptr %err.code.gep839, align 8
  %err.msg.gep840 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc838, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep840, align 8
  %err.file.gep841 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc838, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep841, align 8
  %err.line.gep842 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc838, i32 0, i32 3
  store i64 0, ptr %err.line.gep842, align 8
  %err.col.gep843 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc838, i32 0, i32 4
  store i64 0, ptr %err.col.gep843, align 8
  %err.ctx.gep844 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc838, i32 0, i32 5
  %err.ctx0.gep845 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep844, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep845, align 8
  %err.ctx1.gep846 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep844, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep846, align 8
  br label %a.wr.done828

a.wr.err.oob827:                                  ; preds = %a.wr.check824
  %arena.cur847 = call ptr @dva_arena_current()
  %err.alloc848 = call ptr @dva_arena_alloc(ptr %arena.cur847, i64 56)
  %err.code.gep849 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc848, i32 0, i32 0
  store i64 4011, ptr %err.code.gep849, align 8
  %err.msg.gep850 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc848, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep850, align 8
  %err.file.gep851 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc848, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep851, align 8
  %err.line.gep852 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc848, i32 0, i32 3
  store i64 0, ptr %err.line.gep852, align 8
  %err.col.gep853 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc848, i32 0, i32 4
  store i64 0, ptr %err.col.gep853, align 8
  %err.ctx.gep854 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc848, i32 0, i32 5
  %err.ctx0.gep855 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep854, i32 0, i32 0
  store i64 %var.load618, ptr %err.ctx0.gep855, align 8
  %err.ctx1.gep856 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep854, i32 0, i32 1
  store i64 %a.wr.len830, ptr %err.ctx1.gep856, align 8
  br label %a.wr.done828

a.wr.done828:                                     ; preds = %a.wr.err.oob827, %a.wr.err.null826, %a.wr.ok825
  %a.wr.niche857 = phi ptr [ null, %a.wr.ok825 ], [ %err.alloc838, %a.wr.err.null826 ], [ %err.alloc848, %a.wr.err.oob827 ]
  %niche.eq.null858 = icmp eq ptr %a.wr.niche857, null
  br i1 %niche.eq.null858, label %choice.then859, label %choice.else860

choice.then859:                                   ; preds = %a.wr.done828
  br label %choice.exit861

choice.else860:                                   ; preds = %a.wr.done828
  store ptr %a.wr.niche857, ptr %var._862, align 8
  store ptr %a.wr.niche857, ptr %var._863, align 8
  store ptr %a.wr.niche857, ptr %var._864, align 8
  %err.code.gep865 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche857, i32 0, i32 0
  %err.code866 = load i64, ptr %err.code.gep865, align 8
  %err.msg.gep867 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche857, i32 0, i32 1
  %err.msg.struct868 = load ptr, ptr %err.msg.gep867, align 8
  %err.file.gep869 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche857, i32 0, i32 2
  %err.file.struct870 = load ptr, ptr %err.file.gep869, align 8
  %err.line.gep871 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche857, i32 0, i32 3
  %err.line872 = load i64, ptr %err.line.gep871, align 8
  %err.col.gep873 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche857, i32 0, i32 4
  %err.col874 = load i64, ptr %err.col.gep873, align 8
  %err.msg.len875 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct868, i32 0, i32 0
  %err.msg.len876 = load i64, ptr %err.msg.len875, align 8
  %err.msg.len877 = and i64 %err.msg.len876, 281474976710655
  %str.tag878 = lshr i64 %err.msg.len876, 48
  %str.immortal879 = icmp eq i64 %str.tag878, 0
  br i1 %str.immortal879, label %str_ok881, label %str_gen_check880

choice.exit861:                                   ; preds = %err.abort908, %choice.then859
  br label %choice.exit601

str_gen_check880:                                 ; preds = %choice.else860
  %arena.cur883 = call ptr @dva_arena_current()
  %tag.valid884 = call i1 @dva_arena_validate_tag(ptr %arena.cur883, i64 %str.tag878)
  br i1 %tag.valid884, label %str_ok881, label %str_stale882

str_ok881:                                        ; preds = %str_stale882, %str_gen_check880, %choice.else860
  %err.msg.len32885 = trunc i64 %err.msg.len877 to i32
  %err.msg.data886 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct868, i32 0, i32 1
  %err.msg.data887 = load ptr, ptr %err.msg.data886, align 8
  %err.file.len888 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct870, i32 0, i32 0
  %err.file.len889 = load i64, ptr %err.file.len888, align 8
  %err.file.len890 = and i64 %err.file.len889, 281474976710655
  %str.tag891 = lshr i64 %err.file.len889, 48
  %str.immortal892 = icmp eq i64 %str.tag891, 0
  br i1 %str.immortal892, label %str_ok894, label %str_gen_check893

str_stale882:                                     ; preds = %str_gen_check880
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok881

str_gen_check893:                                 ; preds = %str_ok881
  %arena.cur896 = call ptr @dva_arena_current()
  %tag.valid897 = call i1 @dva_arena_validate_tag(ptr %arena.cur896, i64 %str.tag891)
  br i1 %tag.valid897, label %str_ok894, label %str_stale895

str_ok894:                                        ; preds = %str_stale895, %str_gen_check893, %str_ok881
  %err.file.len32898 = trunc i64 %err.file.len890 to i32
  %err.file.data899 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct870, i32 0, i32 1
  %err.file.data900 = load ptr, ptr %err.file.data899, align 8
  %err.thread.rec901 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread902 = icmp ne ptr %err.thread.rec901, null
  br i1 %err.is.thread902, label %err.thread903, label %err.normal904

str_stale895:                                     ; preds = %str_gen_check893
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok894

err.thread903:                                    ; preds = %str_ok894
  %err.haserr.gep905 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec901, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep905, align 8
  %err.err.gep906 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec901, i32 0, i32 7
  store ptr %a.wr.niche857, ptr %err.err.gep906, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal904:                                    ; preds = %str_ok894
  %err.panic.printf907 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code866, i32 %err.msg.len32885, ptr %err.msg.data887, i32 %err.file.len32898, ptr %err.file.data900, i64 %err.line872, i64 %err.col874)
  call void @exit(i32 1)
  unreachable

err.abort908:                                     ; No predecessors!
  br label %choice.exit861

a.create912:                                      ; preds = %choice.else600
  %arena.cur914 = call ptr @dva_arena_current()
  %a.create915 = call ptr @dva_arena_alloc(ptr %arena.cur914, i64 24)
  %arena.cur916 = call ptr @dva_arena_current()
  %a.buf917 = call ptr @dva_arena_alloc(ptr %arena.cur916, i64 128)
  %a.len.gep918 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create915, i32 0, i32 0
  store i64 0, ptr %a.len.gep918, align 8
  %a.data.gep919 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create915, i32 0, i32 1
  store ptr %a.buf917, ptr %a.data.gep919, align 8
  %a.cap.gep920 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create915, i32 0, i32 2
  store i64 16, ptr %a.cap.gep920, align 8
  store ptr %a.create915, ptr %var.ons, align 8
  br label %a.after913

a.after913:                                       ; preds = %a.create912, %choice.else600
  %a.load2921 = load ptr, ptr %var.ons, align 8
  %var.load922 = load i64, ptr %var.v, align 8
  %a.rd.nonnull923 = icmp ne ptr %a.load2921, null
  br i1 %a.rd.nonnull923, label %a.rd.check924, label %a.rd.err.null926

a.rd.check924:                                    ; preds = %a.after913
  %a.rd.len929 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2921, i32 0, i32 0
  %a.rd.len930 = load i64, ptr %a.rd.len929, align 8
  %a.rd.ge0931 = icmp sge i64 %var.load922, 0
  %a.rd.lt932 = icmp slt i64 %var.load922, %a.rd.len930
  %a.rd.bounds933 = and i1 %a.rd.ge0931, %a.rd.lt932
  br i1 %a.rd.bounds933, label %a.rd.ok925, label %a.rd.err.oob927

a.rd.ok925:                                       ; preds = %a.rd.check924
  %a.rd.data934 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2921, i32 0, i32 1
  %a.rd.data935 = load ptr, ptr %a.rd.data934, align 8
  %a.rd.elem.gep936 = getelementptr i64, ptr %a.rd.data935, i64 %var.load922
  %a.rd.elem937 = load i64, ptr %a.rd.elem.gep936, align 8
  br label %a.rd.done928

a.rd.err.null926:                                 ; preds = %a.after913
  %arena.cur938 = call ptr @dva_arena_current()
  %err.alloc939 = call ptr @dva_arena_alloc(ptr %arena.cur938, i64 56)
  %err.code.gep940 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc939, i32 0, i32 0
  store i64 4011, ptr %err.code.gep940, align 8
  %err.msg.gep941 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc939, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep941, align 8
  %err.file.gep942 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc939, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep942, align 8
  %err.line.gep943 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc939, i32 0, i32 3
  store i64 308, ptr %err.line.gep943, align 8
  %err.col.gep944 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc939, i32 0, i32 4
  store i64 33, ptr %err.col.gep944, align 8
  %err.ctx.gep945 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc939, i32 0, i32 5
  %err.ctx0.gep946 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep945, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep946, align 8
  %err.ctx1.gep947 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep945, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep947, align 8
  %err.p2i948 = ptrtoint ptr %err.alloc939 to i64
  br label %a.rd.done928

a.rd.err.oob927:                                  ; preds = %a.rd.check924
  %arena.cur949 = call ptr @dva_arena_current()
  %err.alloc950 = call ptr @dva_arena_alloc(ptr %arena.cur949, i64 56)
  %err.code.gep951 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc950, i32 0, i32 0
  store i64 4011, ptr %err.code.gep951, align 8
  %err.msg.gep952 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc950, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep952, align 8
  %err.file.gep953 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc950, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep953, align 8
  %err.line.gep954 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc950, i32 0, i32 3
  store i64 308, ptr %err.line.gep954, align 8
  %err.col.gep955 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc950, i32 0, i32 4
  store i64 33, ptr %err.col.gep955, align 8
  %err.ctx.gep956 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc950, i32 0, i32 5
  %err.ctx0.gep957 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep956, i32 0, i32 0
  store i64 %var.load922, ptr %err.ctx0.gep957, align 8
  %err.ctx1.gep958 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep956, i32 0, i32 1
  store i64 %a.rd.len930, ptr %err.ctx1.gep958, align 8
  %err.p2i959 = ptrtoint ptr %err.alloc950 to i64
  br label %a.rd.done928

a.rd.done928:                                     ; preds = %a.rd.err.oob927, %a.rd.err.null926, %a.rd.ok925
  %a.rd.tag960 = phi i1 [ true, %a.rd.ok925 ], [ false, %a.rd.err.null926 ], [ false, %a.rd.err.oob927 ]
  %a.rd.pay961 = phi i64 [ %a.rd.elem937, %a.rd.ok925 ], [ %err.p2i948, %a.rd.err.null926 ], [ %err.p2i959, %a.rd.err.oob927 ]
  %ram.tag962 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag960, 0
  %ram.pay963 = insertvalue { i1, i64 } %ram.tag962, i64 %a.rd.pay961, 1
  %ram.tag964 = extractvalue { i1, i64 } %ram.pay963, 0
  br i1 %ram.tag964, label %choice.then965, label %choice.else966

choice.then965:                                   ; preds = %a.rd.done928
  %ram.pay968 = extractvalue { i1, i64 } %ram.pay963, 1
  %pay.flag = trunc i64 %ram.pay968 to i1
  store i1 %pay.flag, ptr %var._969, align 1
  br label %choice.exit967

choice.else966:                                   ; preds = %a.rd.done928
  %ram.pay970 = extractvalue { i1, i64 } %ram.pay963, 1
  %pay.ptr971 = inttoptr i64 %ram.pay970 to ptr
  store ptr %pay.ptr971, ptr %var._972, align 8
  br label %choice.exit967

choice.exit967:                                   ; preds = %choice.else966, %choice.then965
  %choice.res973 = phi i1 [ %pay.flag, %choice.then965 ], [ false, %choice.else966 ]
  store i1 %choice.res973, ptr %var.v_on, align 1
  %var.load974 = load i1, ptr %var.v_on, align 1
  br i1 %var.load974, label %choice.then975, label %choice.exit976

choice.then975:                                   ; preds = %choice.exit967
  %var.load977 = load ptr, ptr %var.lows, align 8
  %a.load978 = load ptr, ptr %var.lows, align 8
  %a.null979 = icmp eq ptr %a.load978, null
  br i1 %a.null979, label %a.create980, label %a.after981

choice.exit976:                                   ; preds = %choice.exit1234, %choice.exit967
  br label %choice.exit601

a.create980:                                      ; preds = %choice.then975
  %arena.cur982 = call ptr @dva_arena_current()
  %a.create983 = call ptr @dva_arena_alloc(ptr %arena.cur982, i64 24)
  %arena.cur984 = call ptr @dva_arena_current()
  %a.buf985 = call ptr @dva_arena_alloc(ptr %arena.cur984, i64 128)
  %a.len.gep986 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create983, i32 0, i32 0
  store i64 0, ptr %a.len.gep986, align 8
  %a.data.gep987 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create983, i32 0, i32 1
  store ptr %a.buf985, ptr %a.data.gep987, align 8
  %a.cap.gep988 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create983, i32 0, i32 2
  store i64 16, ptr %a.cap.gep988, align 8
  store ptr %a.create983, ptr %var.lows, align 8
  br label %a.after981

a.after981:                                       ; preds = %a.create980, %choice.then975
  %a.load2989 = load ptr, ptr %var.lows, align 8
  %var.load990 = load i64, ptr %var.u, align 8
  %var.load991 = load ptr, ptr %var.lows, align 8
  %a.load992 = load ptr, ptr %var.lows, align 8
  %a.null993 = icmp eq ptr %a.load992, null
  br i1 %a.null993, label %a.create994, label %a.after995

a.create994:                                      ; preds = %a.after981
  %arena.cur996 = call ptr @dva_arena_current()
  %a.create997 = call ptr @dva_arena_alloc(ptr %arena.cur996, i64 24)
  %arena.cur998 = call ptr @dva_arena_current()
  %a.buf999 = call ptr @dva_arena_alloc(ptr %arena.cur998, i64 128)
  %a.len.gep1000 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create997, i32 0, i32 0
  store i64 0, ptr %a.len.gep1000, align 8
  %a.data.gep1001 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create997, i32 0, i32 1
  store ptr %a.buf999, ptr %a.data.gep1001, align 8
  %a.cap.gep1002 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create997, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1002, align 8
  store ptr %a.create997, ptr %var.lows, align 8
  br label %a.after995

a.after995:                                       ; preds = %a.create994, %a.after981
  %a.load21003 = load ptr, ptr %var.lows, align 8
  %var.load1004 = load i64, ptr %var.u, align 8
  %a.rd.nonnull1005 = icmp ne ptr %a.load21003, null
  br i1 %a.rd.nonnull1005, label %a.rd.check1006, label %a.rd.err.null1008

a.rd.check1006:                                   ; preds = %a.after995
  %a.rd.len1011 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21003, i32 0, i32 0
  %a.rd.len1012 = load i64, ptr %a.rd.len1011, align 8
  %a.rd.ge01013 = icmp sge i64 %var.load1004, 0
  %a.rd.lt1014 = icmp slt i64 %var.load1004, %a.rd.len1012
  %a.rd.bounds1015 = and i1 %a.rd.ge01013, %a.rd.lt1014
  br i1 %a.rd.bounds1015, label %a.rd.ok1007, label %a.rd.err.oob1009

a.rd.ok1007:                                      ; preds = %a.rd.check1006
  %a.rd.data1016 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21003, i32 0, i32 1
  %a.rd.data1017 = load ptr, ptr %a.rd.data1016, align 8
  %a.rd.elem.gep1018 = getelementptr i64, ptr %a.rd.data1017, i64 %var.load1004
  %a.rd.elem1019 = load i64, ptr %a.rd.elem.gep1018, align 8
  br label %a.rd.done1010

a.rd.err.null1008:                                ; preds = %a.after995
  %arena.cur1020 = call ptr @dva_arena_current()
  %err.alloc1021 = call ptr @dva_arena_alloc(ptr %arena.cur1020, i64 56)
  %err.code.gep1022 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1021, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1022, align 8
  %err.msg.gep1023 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1021, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1023, align 8
  %err.file.gep1024 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1021, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1024, align 8
  %err.line.gep1025 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1021, i32 0, i32 3
  store i64 311, ptr %err.line.gep1025, align 8
  %err.col.gep1026 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1021, i32 0, i32 4
  store i64 47, ptr %err.col.gep1026, align 8
  %err.ctx.gep1027 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1021, i32 0, i32 5
  %err.ctx0.gep1028 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1027, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1028, align 8
  %err.ctx1.gep1029 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1027, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1029, align 8
  %err.p2i1030 = ptrtoint ptr %err.alloc1021 to i64
  br label %a.rd.done1010

a.rd.err.oob1009:                                 ; preds = %a.rd.check1006
  %arena.cur1031 = call ptr @dva_arena_current()
  %err.alloc1032 = call ptr @dva_arena_alloc(ptr %arena.cur1031, i64 56)
  %err.code.gep1033 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1032, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1033, align 8
  %err.msg.gep1034 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1032, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1034, align 8
  %err.file.gep1035 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1032, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1035, align 8
  %err.line.gep1036 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1032, i32 0, i32 3
  store i64 311, ptr %err.line.gep1036, align 8
  %err.col.gep1037 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1032, i32 0, i32 4
  store i64 47, ptr %err.col.gep1037, align 8
  %err.ctx.gep1038 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1032, i32 0, i32 5
  %err.ctx0.gep1039 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1038, i32 0, i32 0
  store i64 %var.load1004, ptr %err.ctx0.gep1039, align 8
  %err.ctx1.gep1040 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1038, i32 0, i32 1
  store i64 %a.rd.len1012, ptr %err.ctx1.gep1040, align 8
  %err.p2i1041 = ptrtoint ptr %err.alloc1032 to i64
  br label %a.rd.done1010

a.rd.done1010:                                    ; preds = %a.rd.err.oob1009, %a.rd.err.null1008, %a.rd.ok1007
  %a.rd.tag1042 = phi i1 [ true, %a.rd.ok1007 ], [ false, %a.rd.err.null1008 ], [ false, %a.rd.err.oob1009 ]
  %a.rd.pay1043 = phi i64 [ %a.rd.elem1019, %a.rd.ok1007 ], [ %err.p2i1030, %a.rd.err.null1008 ], [ %err.p2i1041, %a.rd.err.oob1009 ]
  %ram.tag1044 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1042, 0
  %ram.pay1045 = insertvalue { i1, i64 } %ram.tag1044, i64 %a.rd.pay1043, 1
  %unwrap.is_pos1046 = extractvalue { i1, i64 } %ram.pay1045, 0
  br i1 %unwrap.is_pos1046, label %unwrap.pos.73, label %unwrap.abort.73

unwrap.pos.73:                                    ; preds = %a.rd.done1010
  %unwrap.pay.pos1092 = extractvalue { i1, i64 } %ram.pay1045, 1
  %var.load1093 = load ptr, ptr %var.idxs, align 8
  %a.load1094 = load ptr, ptr %var.idxs, align 8
  %a.null1095 = icmp eq ptr %a.load1094, null
  br i1 %a.null1095, label %a.create1096, label %a.after1097

unwrap.abort.73:                                  ; preds = %a.rd.done1010
  %unwrap.pay.abort1047 = extractvalue { i1, i64 } %ram.pay1045, 1
  %err.ptr1048 = inttoptr i64 %unwrap.pay.abort1047 to ptr
  %err.code.gep1049 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1048, i32 0, i32 0
  %err.code1050 = load i64, ptr %err.code.gep1049, align 8
  %err.msg.gep1051 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1048, i32 0, i32 1
  %err.msg.struct1052 = load ptr, ptr %err.msg.gep1051, align 8
  %err.file.gep1053 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1048, i32 0, i32 2
  %err.file.struct1054 = load ptr, ptr %err.file.gep1053, align 8
  %err.line.gep1055 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1048, i32 0, i32 3
  %err.line1056 = load i64, ptr %err.line.gep1055, align 8
  %err.col.gep1057 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1048, i32 0, i32 4
  %err.col1058 = load i64, ptr %err.col.gep1057, align 8
  %err.msg.len1059 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1052, i32 0, i32 0
  %err.msg.len1060 = load i64, ptr %err.msg.len1059, align 8
  %err.msg.len1061 = and i64 %err.msg.len1060, 281474976710655
  %str.tag1062 = lshr i64 %err.msg.len1060, 48
  %str.immortal1063 = icmp eq i64 %str.tag1062, 0
  br i1 %str.immortal1063, label %str_ok1065, label %str_gen_check1064

str_gen_check1064:                                ; preds = %unwrap.abort.73
  %arena.cur1067 = call ptr @dva_arena_current()
  %tag.valid1068 = call i1 @dva_arena_validate_tag(ptr %arena.cur1067, i64 %str.tag1062)
  br i1 %tag.valid1068, label %str_ok1065, label %str_stale1066

str_ok1065:                                       ; preds = %str_stale1066, %str_gen_check1064, %unwrap.abort.73
  %err.msg.len321069 = trunc i64 %err.msg.len1061 to i32
  %err.msg.data1070 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1052, i32 0, i32 1
  %err.msg.data1071 = load ptr, ptr %err.msg.data1070, align 8
  %err.file.len1072 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1054, i32 0, i32 0
  %err.file.len1073 = load i64, ptr %err.file.len1072, align 8
  %err.file.len1074 = and i64 %err.file.len1073, 281474976710655
  %str.tag1075 = lshr i64 %err.file.len1073, 48
  %str.immortal1076 = icmp eq i64 %str.tag1075, 0
  br i1 %str.immortal1076, label %str_ok1078, label %str_gen_check1077

str_stale1066:                                    ; preds = %str_gen_check1064
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1065

str_gen_check1077:                                ; preds = %str_ok1065
  %arena.cur1080 = call ptr @dva_arena_current()
  %tag.valid1081 = call i1 @dva_arena_validate_tag(ptr %arena.cur1080, i64 %str.tag1075)
  br i1 %tag.valid1081, label %str_ok1078, label %str_stale1079

str_ok1078:                                       ; preds = %str_stale1079, %str_gen_check1077, %str_ok1065
  %err.file.len321082 = trunc i64 %err.file.len1074 to i32
  %err.file.data1083 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1054, i32 0, i32 1
  %err.file.data1084 = load ptr, ptr %err.file.data1083, align 8
  %err.thread.rec1085 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1086 = icmp ne ptr %err.thread.rec1085, null
  br i1 %err.is.thread1086, label %err.thread1087, label %err.normal1088

str_stale1079:                                    ; preds = %str_gen_check1077
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1078

err.thread1087:                                   ; preds = %str_ok1078
  %err.haserr.gep1089 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1085, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1089, align 8
  %err.err.gep1090 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1085, i32 0, i32 7
  store ptr %err.ptr1048, ptr %err.err.gep1090, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1088:                                   ; preds = %str_ok1078
  %err.panic.printf1091 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1050, i32 %err.msg.len321069, ptr %err.msg.data1071, i32 %err.file.len321082, ptr %err.file.data1084, i64 %err.line1056, i64 %err.col1058)
  call void @exit(i32 1)
  unreachable

a.create1096:                                     ; preds = %unwrap.pos.73
  %arena.cur1098 = call ptr @dva_arena_current()
  %a.create1099 = call ptr @dva_arena_alloc(ptr %arena.cur1098, i64 24)
  %arena.cur1100 = call ptr @dva_arena_current()
  %a.buf1101 = call ptr @dva_arena_alloc(ptr %arena.cur1100, i64 128)
  %a.len.gep1102 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1099, i32 0, i32 0
  store i64 0, ptr %a.len.gep1102, align 8
  %a.data.gep1103 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1099, i32 0, i32 1
  store ptr %a.buf1101, ptr %a.data.gep1103, align 8
  %a.cap.gep1104 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1099, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1104, align 8
  store ptr %a.create1099, ptr %var.idxs, align 8
  br label %a.after1097

a.after1097:                                      ; preds = %a.create1096, %unwrap.pos.73
  %a.load21105 = load ptr, ptr %var.idxs, align 8
  %var.load1106 = load i64, ptr %var.v, align 8
  %a.rd.nonnull1107 = icmp ne ptr %a.load21105, null
  br i1 %a.rd.nonnull1107, label %a.rd.check1108, label %a.rd.err.null1110

a.rd.check1108:                                   ; preds = %a.after1097
  %a.rd.len1113 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21105, i32 0, i32 0
  %a.rd.len1114 = load i64, ptr %a.rd.len1113, align 8
  %a.rd.ge01115 = icmp sge i64 %var.load1106, 0
  %a.rd.lt1116 = icmp slt i64 %var.load1106, %a.rd.len1114
  %a.rd.bounds1117 = and i1 %a.rd.ge01115, %a.rd.lt1116
  br i1 %a.rd.bounds1117, label %a.rd.ok1109, label %a.rd.err.oob1111

a.rd.ok1109:                                      ; preds = %a.rd.check1108
  %a.rd.data1118 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21105, i32 0, i32 1
  %a.rd.data1119 = load ptr, ptr %a.rd.data1118, align 8
  %a.rd.elem.gep1120 = getelementptr i64, ptr %a.rd.data1119, i64 %var.load1106
  %a.rd.elem1121 = load i64, ptr %a.rd.elem.gep1120, align 8
  br label %a.rd.done1112

a.rd.err.null1110:                                ; preds = %a.after1097
  %arena.cur1122 = call ptr @dva_arena_current()
  %err.alloc1123 = call ptr @dva_arena_alloc(ptr %arena.cur1122, i64 56)
  %err.code.gep1124 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1123, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1124, align 8
  %err.msg.gep1125 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1123, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1125, align 8
  %err.file.gep1126 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1123, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1126, align 8
  %err.line.gep1127 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1123, i32 0, i32 3
  store i64 311, ptr %err.line.gep1127, align 8
  %err.col.gep1128 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1123, i32 0, i32 4
  store i64 58, ptr %err.col.gep1128, align 8
  %err.ctx.gep1129 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1123, i32 0, i32 5
  %err.ctx0.gep1130 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1129, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1130, align 8
  %err.ctx1.gep1131 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1129, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1131, align 8
  %err.p2i1132 = ptrtoint ptr %err.alloc1123 to i64
  br label %a.rd.done1112

a.rd.err.oob1111:                                 ; preds = %a.rd.check1108
  %arena.cur1133 = call ptr @dva_arena_current()
  %err.alloc1134 = call ptr @dva_arena_alloc(ptr %arena.cur1133, i64 56)
  %err.code.gep1135 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1134, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1135, align 8
  %err.msg.gep1136 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1134, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1136, align 8
  %err.file.gep1137 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1134, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1137, align 8
  %err.line.gep1138 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1134, i32 0, i32 3
  store i64 311, ptr %err.line.gep1138, align 8
  %err.col.gep1139 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1134, i32 0, i32 4
  store i64 58, ptr %err.col.gep1139, align 8
  %err.ctx.gep1140 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1134, i32 0, i32 5
  %err.ctx0.gep1141 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1140, i32 0, i32 0
  store i64 %var.load1106, ptr %err.ctx0.gep1141, align 8
  %err.ctx1.gep1142 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1140, i32 0, i32 1
  store i64 %a.rd.len1114, ptr %err.ctx1.gep1142, align 8
  %err.p2i1143 = ptrtoint ptr %err.alloc1134 to i64
  br label %a.rd.done1112

a.rd.done1112:                                    ; preds = %a.rd.err.oob1111, %a.rd.err.null1110, %a.rd.ok1109
  %a.rd.tag1144 = phi i1 [ true, %a.rd.ok1109 ], [ false, %a.rd.err.null1110 ], [ false, %a.rd.err.oob1111 ]
  %a.rd.pay1145 = phi i64 [ %a.rd.elem1121, %a.rd.ok1109 ], [ %err.p2i1132, %a.rd.err.null1110 ], [ %err.p2i1143, %a.rd.err.oob1111 ]
  %ram.tag1146 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1144, 0
  %ram.pay1147 = insertvalue { i1, i64 } %ram.tag1146, i64 %a.rd.pay1145, 1
  %unwrap.is_pos1148 = extractvalue { i1, i64 } %ram.pay1147, 0
  br i1 %unwrap.is_pos1148, label %unwrap.pos.74, label %unwrap.abort.74

unwrap.pos.74:                                    ; preds = %a.rd.done1112
  %unwrap.pay.pos1194 = extractvalue { i1, i64 } %ram.pay1147, 1
  %min1195 = call i64 @llvm.smin.i64(i64 %unwrap.pay.pos1092, i64 %unwrap.pay.pos1194)
  %a.wr.nonnull1196 = icmp ne ptr %a.load2989, null
  br i1 %a.wr.nonnull1196, label %a.wr.check1197, label %a.wr.err.null1199

unwrap.abort.74:                                  ; preds = %a.rd.done1112
  %unwrap.pay.abort1149 = extractvalue { i1, i64 } %ram.pay1147, 1
  %err.ptr1150 = inttoptr i64 %unwrap.pay.abort1149 to ptr
  %err.code.gep1151 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1150, i32 0, i32 0
  %err.code1152 = load i64, ptr %err.code.gep1151, align 8
  %err.msg.gep1153 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1150, i32 0, i32 1
  %err.msg.struct1154 = load ptr, ptr %err.msg.gep1153, align 8
  %err.file.gep1155 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1150, i32 0, i32 2
  %err.file.struct1156 = load ptr, ptr %err.file.gep1155, align 8
  %err.line.gep1157 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1150, i32 0, i32 3
  %err.line1158 = load i64, ptr %err.line.gep1157, align 8
  %err.col.gep1159 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1150, i32 0, i32 4
  %err.col1160 = load i64, ptr %err.col.gep1159, align 8
  %err.msg.len1161 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1154, i32 0, i32 0
  %err.msg.len1162 = load i64, ptr %err.msg.len1161, align 8
  %err.msg.len1163 = and i64 %err.msg.len1162, 281474976710655
  %str.tag1164 = lshr i64 %err.msg.len1162, 48
  %str.immortal1165 = icmp eq i64 %str.tag1164, 0
  br i1 %str.immortal1165, label %str_ok1167, label %str_gen_check1166

str_gen_check1166:                                ; preds = %unwrap.abort.74
  %arena.cur1169 = call ptr @dva_arena_current()
  %tag.valid1170 = call i1 @dva_arena_validate_tag(ptr %arena.cur1169, i64 %str.tag1164)
  br i1 %tag.valid1170, label %str_ok1167, label %str_stale1168

str_ok1167:                                       ; preds = %str_stale1168, %str_gen_check1166, %unwrap.abort.74
  %err.msg.len321171 = trunc i64 %err.msg.len1163 to i32
  %err.msg.data1172 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1154, i32 0, i32 1
  %err.msg.data1173 = load ptr, ptr %err.msg.data1172, align 8
  %err.file.len1174 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1156, i32 0, i32 0
  %err.file.len1175 = load i64, ptr %err.file.len1174, align 8
  %err.file.len1176 = and i64 %err.file.len1175, 281474976710655
  %str.tag1177 = lshr i64 %err.file.len1175, 48
  %str.immortal1178 = icmp eq i64 %str.tag1177, 0
  br i1 %str.immortal1178, label %str_ok1180, label %str_gen_check1179

str_stale1168:                                    ; preds = %str_gen_check1166
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1167

str_gen_check1179:                                ; preds = %str_ok1167
  %arena.cur1182 = call ptr @dva_arena_current()
  %tag.valid1183 = call i1 @dva_arena_validate_tag(ptr %arena.cur1182, i64 %str.tag1177)
  br i1 %tag.valid1183, label %str_ok1180, label %str_stale1181

str_ok1180:                                       ; preds = %str_stale1181, %str_gen_check1179, %str_ok1167
  %err.file.len321184 = trunc i64 %err.file.len1176 to i32
  %err.file.data1185 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1156, i32 0, i32 1
  %err.file.data1186 = load ptr, ptr %err.file.data1185, align 8
  %err.thread.rec1187 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1188 = icmp ne ptr %err.thread.rec1187, null
  br i1 %err.is.thread1188, label %err.thread1189, label %err.normal1190

str_stale1181:                                    ; preds = %str_gen_check1179
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1180

err.thread1189:                                   ; preds = %str_ok1180
  %err.haserr.gep1191 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1187, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1191, align 8
  %err.err.gep1192 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1187, i32 0, i32 7
  store ptr %err.ptr1150, ptr %err.err.gep1192, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1190:                                   ; preds = %str_ok1180
  %err.panic.printf1193 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1152, i32 %err.msg.len321171, ptr %err.msg.data1173, i32 %err.file.len321184, ptr %err.file.data1186, i64 %err.line1158, i64 %err.col1160)
  call void @exit(i32 1)
  unreachable

a.wr.check1197:                                   ; preds = %unwrap.pos.74
  %a.wr.len1202 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2989, i32 0, i32 0
  %a.wr.len1203 = load i64, ptr %a.wr.len1202, align 8
  %a.wr.ge01204 = icmp sge i64 %var.load990, 0
  %a.wr.lt1205 = icmp slt i64 %var.load990, %a.wr.len1203
  %a.wr.bounds1206 = and i1 %a.wr.ge01204, %a.wr.lt1205
  br i1 %a.wr.bounds1206, label %a.wr.ok1198, label %a.wr.err.oob1200

a.wr.ok1198:                                      ; preds = %a.wr.check1197
  %a.wr.data1207 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2989, i32 0, i32 1
  %a.wr.data1208 = load ptr, ptr %a.wr.data1207, align 8
  %a.elem.gep1209 = getelementptr i64, ptr %a.wr.data1208, i64 %var.load990
  store i64 %min1195, ptr %a.elem.gep1209, align 8
  br label %a.wr.done1201

a.wr.err.null1199:                                ; preds = %unwrap.pos.74
  %arena.cur1210 = call ptr @dva_arena_current()
  %err.alloc1211 = call ptr @dva_arena_alloc(ptr %arena.cur1210, i64 56)
  %err.code.gep1212 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1211, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1212, align 8
  %err.msg.gep1213 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1211, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1213, align 8
  %err.file.gep1214 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1211, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1214, align 8
  %err.line.gep1215 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1211, i32 0, i32 3
  store i64 0, ptr %err.line.gep1215, align 8
  %err.col.gep1216 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1211, i32 0, i32 4
  store i64 0, ptr %err.col.gep1216, align 8
  %err.ctx.gep1217 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1211, i32 0, i32 5
  %err.ctx0.gep1218 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1217, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1218, align 8
  %err.ctx1.gep1219 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1217, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1219, align 8
  br label %a.wr.done1201

a.wr.err.oob1200:                                 ; preds = %a.wr.check1197
  %arena.cur1220 = call ptr @dva_arena_current()
  %err.alloc1221 = call ptr @dva_arena_alloc(ptr %arena.cur1220, i64 56)
  %err.code.gep1222 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1221, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1222, align 8
  %err.msg.gep1223 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1221, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1223, align 8
  %err.file.gep1224 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1221, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1224, align 8
  %err.line.gep1225 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1221, i32 0, i32 3
  store i64 0, ptr %err.line.gep1225, align 8
  %err.col.gep1226 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1221, i32 0, i32 4
  store i64 0, ptr %err.col.gep1226, align 8
  %err.ctx.gep1227 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1221, i32 0, i32 5
  %err.ctx0.gep1228 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1227, i32 0, i32 0
  store i64 %var.load990, ptr %err.ctx0.gep1228, align 8
  %err.ctx1.gep1229 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1227, i32 0, i32 1
  store i64 %a.wr.len1203, ptr %err.ctx1.gep1229, align 8
  br label %a.wr.done1201

a.wr.done1201:                                    ; preds = %a.wr.err.oob1200, %a.wr.err.null1199, %a.wr.ok1198
  %a.wr.niche1230 = phi ptr [ null, %a.wr.ok1198 ], [ %err.alloc1211, %a.wr.err.null1199 ], [ %err.alloc1221, %a.wr.err.oob1200 ]
  %niche.eq.null1231 = icmp eq ptr %a.wr.niche1230, null
  br i1 %niche.eq.null1231, label %choice.then1232, label %choice.else1233

choice.then1232:                                  ; preds = %a.wr.done1201
  br label %choice.exit1234

choice.else1233:                                  ; preds = %a.wr.done1201
  store ptr %a.wr.niche1230, ptr %var._1235, align 8
  store ptr %a.wr.niche1230, ptr %var._1236, align 8
  store ptr %a.wr.niche1230, ptr %var._1237, align 8
  %err.code.gep1238 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1230, i32 0, i32 0
  %err.code1239 = load i64, ptr %err.code.gep1238, align 8
  %err.msg.gep1240 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1230, i32 0, i32 1
  %err.msg.struct1241 = load ptr, ptr %err.msg.gep1240, align 8
  %err.file.gep1242 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1230, i32 0, i32 2
  %err.file.struct1243 = load ptr, ptr %err.file.gep1242, align 8
  %err.line.gep1244 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1230, i32 0, i32 3
  %err.line1245 = load i64, ptr %err.line.gep1244, align 8
  %err.col.gep1246 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1230, i32 0, i32 4
  %err.col1247 = load i64, ptr %err.col.gep1246, align 8
  %err.msg.len1248 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1241, i32 0, i32 0
  %err.msg.len1249 = load i64, ptr %err.msg.len1248, align 8
  %err.msg.len1250 = and i64 %err.msg.len1249, 281474976710655
  %str.tag1251 = lshr i64 %err.msg.len1249, 48
  %str.immortal1252 = icmp eq i64 %str.tag1251, 0
  br i1 %str.immortal1252, label %str_ok1254, label %str_gen_check1253

choice.exit1234:                                  ; preds = %err.abort1281, %choice.then1232
  br label %choice.exit976

str_gen_check1253:                                ; preds = %choice.else1233
  %arena.cur1256 = call ptr @dva_arena_current()
  %tag.valid1257 = call i1 @dva_arena_validate_tag(ptr %arena.cur1256, i64 %str.tag1251)
  br i1 %tag.valid1257, label %str_ok1254, label %str_stale1255

str_ok1254:                                       ; preds = %str_stale1255, %str_gen_check1253, %choice.else1233
  %err.msg.len321258 = trunc i64 %err.msg.len1250 to i32
  %err.msg.data1259 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1241, i32 0, i32 1
  %err.msg.data1260 = load ptr, ptr %err.msg.data1259, align 8
  %err.file.len1261 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1243, i32 0, i32 0
  %err.file.len1262 = load i64, ptr %err.file.len1261, align 8
  %err.file.len1263 = and i64 %err.file.len1262, 281474976710655
  %str.tag1264 = lshr i64 %err.file.len1262, 48
  %str.immortal1265 = icmp eq i64 %str.tag1264, 0
  br i1 %str.immortal1265, label %str_ok1267, label %str_gen_check1266

str_stale1255:                                    ; preds = %str_gen_check1253
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1254

str_gen_check1266:                                ; preds = %str_ok1254
  %arena.cur1269 = call ptr @dva_arena_current()
  %tag.valid1270 = call i1 @dva_arena_validate_tag(ptr %arena.cur1269, i64 %str.tag1264)
  br i1 %tag.valid1270, label %str_ok1267, label %str_stale1268

str_ok1267:                                       ; preds = %str_stale1268, %str_gen_check1266, %str_ok1254
  %err.file.len321271 = trunc i64 %err.file.len1263 to i32
  %err.file.data1272 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1243, i32 0, i32 1
  %err.file.data1273 = load ptr, ptr %err.file.data1272, align 8
  %err.thread.rec1274 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1275 = icmp ne ptr %err.thread.rec1274, null
  br i1 %err.is.thread1275, label %err.thread1276, label %err.normal1277

str_stale1268:                                    ; preds = %str_gen_check1266
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1267

err.thread1276:                                   ; preds = %str_ok1267
  %err.haserr.gep1278 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1274, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1278, align 8
  %err.err.gep1279 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1274, i32 0, i32 7
  store ptr %a.wr.niche1230, ptr %err.err.gep1279, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1277:                                   ; preds = %str_ok1267
  %err.panic.printf1280 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1239, i32 %err.msg.len321258, ptr %err.msg.data1260, i32 %err.file.len321271, ptr %err.file.data1273, i64 %err.line1245, i64 %err.col1247)
  call void @exit(i32 1)
  unreachable

err.abort1281:                                    ; No predecessors!
  br label %choice.exit1234

a.create1285:                                     ; preds = %loop.exit.70
  %arena.cur1287 = call ptr @dva_arena_current()
  %a.create1288 = call ptr @dva_arena_alloc(ptr %arena.cur1287, i64 24)
  %arena.cur1289 = call ptr @dva_arena_current()
  %a.buf1290 = call ptr @dva_arena_alloc(ptr %arena.cur1289, i64 128)
  %a.len.gep1291 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1288, i32 0, i32 0
  store i64 0, ptr %a.len.gep1291, align 8
  %a.data.gep1292 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1288, i32 0, i32 1
  store ptr %a.buf1290, ptr %a.data.gep1292, align 8
  %a.cap.gep1293 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1288, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1293, align 8
  store ptr %a.create1288, ptr %var.lows, align 8
  br label %a.after1286

a.after1286:                                      ; preds = %a.create1285, %loop.exit.70
  %a.load21294 = load ptr, ptr %var.lows, align 8
  %var.load1295 = load i64, ptr %var.u, align 8
  %a.rd.nonnull1296 = icmp ne ptr %a.load21294, null
  br i1 %a.rd.nonnull1296, label %a.rd.check1297, label %a.rd.err.null1299

a.rd.check1297:                                   ; preds = %a.after1286
  %a.rd.len1302 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21294, i32 0, i32 0
  %a.rd.len1303 = load i64, ptr %a.rd.len1302, align 8
  %a.rd.ge01304 = icmp sge i64 %var.load1295, 0
  %a.rd.lt1305 = icmp slt i64 %var.load1295, %a.rd.len1303
  %a.rd.bounds1306 = and i1 %a.rd.ge01304, %a.rd.lt1305
  br i1 %a.rd.bounds1306, label %a.rd.ok1298, label %a.rd.err.oob1300

a.rd.ok1298:                                      ; preds = %a.rd.check1297
  %a.rd.data1307 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21294, i32 0, i32 1
  %a.rd.data1308 = load ptr, ptr %a.rd.data1307, align 8
  %a.rd.elem.gep1309 = getelementptr i64, ptr %a.rd.data1308, i64 %var.load1295
  %a.rd.elem1310 = load i64, ptr %a.rd.elem.gep1309, align 8
  br label %a.rd.done1301

a.rd.err.null1299:                                ; preds = %a.after1286
  %arena.cur1311 = call ptr @dva_arena_current()
  %err.alloc1312 = call ptr @dva_arena_alloc(ptr %arena.cur1311, i64 56)
  %err.code.gep1313 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1312, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1313, align 8
  %err.msg.gep1314 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1312, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1314, align 8
  %err.file.gep1315 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1312, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1315, align 8
  %err.line.gep1316 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1312, i32 0, i32 3
  store i64 313, ptr %err.line.gep1316, align 8
  %err.col.gep1317 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1312, i32 0, i32 4
  store i64 19, ptr %err.col.gep1317, align 8
  %err.ctx.gep1318 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1312, i32 0, i32 5
  %err.ctx0.gep1319 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1318, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1319, align 8
  %err.ctx1.gep1320 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1318, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1320, align 8
  %err.p2i1321 = ptrtoint ptr %err.alloc1312 to i64
  br label %a.rd.done1301

a.rd.err.oob1300:                                 ; preds = %a.rd.check1297
  %arena.cur1322 = call ptr @dva_arena_current()
  %err.alloc1323 = call ptr @dva_arena_alloc(ptr %arena.cur1322, i64 56)
  %err.code.gep1324 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1323, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1324, align 8
  %err.msg.gep1325 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1323, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1325, align 8
  %err.file.gep1326 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1323, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1326, align 8
  %err.line.gep1327 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1323, i32 0, i32 3
  store i64 313, ptr %err.line.gep1327, align 8
  %err.col.gep1328 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1323, i32 0, i32 4
  store i64 19, ptr %err.col.gep1328, align 8
  %err.ctx.gep1329 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1323, i32 0, i32 5
  %err.ctx0.gep1330 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1329, i32 0, i32 0
  store i64 %var.load1295, ptr %err.ctx0.gep1330, align 8
  %err.ctx1.gep1331 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1329, i32 0, i32 1
  store i64 %a.rd.len1303, ptr %err.ctx1.gep1331, align 8
  %err.p2i1332 = ptrtoint ptr %err.alloc1323 to i64
  br label %a.rd.done1301

a.rd.done1301:                                    ; preds = %a.rd.err.oob1300, %a.rd.err.null1299, %a.rd.ok1298
  %a.rd.tag1333 = phi i1 [ true, %a.rd.ok1298 ], [ false, %a.rd.err.null1299 ], [ false, %a.rd.err.oob1300 ]
  %a.rd.pay1334 = phi i64 [ %a.rd.elem1310, %a.rd.ok1298 ], [ %err.p2i1321, %a.rd.err.null1299 ], [ %err.p2i1332, %a.rd.err.oob1300 ]
  %ram.tag1335 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1333, 0
  %ram.pay1336 = insertvalue { i1, i64 } %ram.tag1335, i64 %a.rd.pay1334, 1
  %unwrap.is_pos1337 = extractvalue { i1, i64 } %ram.pay1336, 0
  br i1 %unwrap.is_pos1337, label %unwrap.pos.75, label %unwrap.abort.75

unwrap.pos.75:                                    ; preds = %a.rd.done1301
  %unwrap.pay.pos1383 = extractvalue { i1, i64 } %ram.pay1336, 1
  store i64 %unwrap.pay.pos1383, ptr %var.low_u, align 8
  %var.load1384 = load ptr, ptr %var.idxs, align 8
  %a.load1385 = load ptr, ptr %var.idxs, align 8
  %a.null1386 = icmp eq ptr %a.load1385, null
  br i1 %a.null1386, label %a.create1387, label %a.after1388

unwrap.abort.75:                                  ; preds = %a.rd.done1301
  %unwrap.pay.abort1338 = extractvalue { i1, i64 } %ram.pay1336, 1
  %err.ptr1339 = inttoptr i64 %unwrap.pay.abort1338 to ptr
  %err.code.gep1340 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1339, i32 0, i32 0
  %err.code1341 = load i64, ptr %err.code.gep1340, align 8
  %err.msg.gep1342 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1339, i32 0, i32 1
  %err.msg.struct1343 = load ptr, ptr %err.msg.gep1342, align 8
  %err.file.gep1344 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1339, i32 0, i32 2
  %err.file.struct1345 = load ptr, ptr %err.file.gep1344, align 8
  %err.line.gep1346 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1339, i32 0, i32 3
  %err.line1347 = load i64, ptr %err.line.gep1346, align 8
  %err.col.gep1348 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1339, i32 0, i32 4
  %err.col1349 = load i64, ptr %err.col.gep1348, align 8
  %err.msg.len1350 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1343, i32 0, i32 0
  %err.msg.len1351 = load i64, ptr %err.msg.len1350, align 8
  %err.msg.len1352 = and i64 %err.msg.len1351, 281474976710655
  %str.tag1353 = lshr i64 %err.msg.len1351, 48
  %str.immortal1354 = icmp eq i64 %str.tag1353, 0
  br i1 %str.immortal1354, label %str_ok1356, label %str_gen_check1355

str_gen_check1355:                                ; preds = %unwrap.abort.75
  %arena.cur1358 = call ptr @dva_arena_current()
  %tag.valid1359 = call i1 @dva_arena_validate_tag(ptr %arena.cur1358, i64 %str.tag1353)
  br i1 %tag.valid1359, label %str_ok1356, label %str_stale1357

str_ok1356:                                       ; preds = %str_stale1357, %str_gen_check1355, %unwrap.abort.75
  %err.msg.len321360 = trunc i64 %err.msg.len1352 to i32
  %err.msg.data1361 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1343, i32 0, i32 1
  %err.msg.data1362 = load ptr, ptr %err.msg.data1361, align 8
  %err.file.len1363 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1345, i32 0, i32 0
  %err.file.len1364 = load i64, ptr %err.file.len1363, align 8
  %err.file.len1365 = and i64 %err.file.len1364, 281474976710655
  %str.tag1366 = lshr i64 %err.file.len1364, 48
  %str.immortal1367 = icmp eq i64 %str.tag1366, 0
  br i1 %str.immortal1367, label %str_ok1369, label %str_gen_check1368

str_stale1357:                                    ; preds = %str_gen_check1355
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1356

str_gen_check1368:                                ; preds = %str_ok1356
  %arena.cur1371 = call ptr @dva_arena_current()
  %tag.valid1372 = call i1 @dva_arena_validate_tag(ptr %arena.cur1371, i64 %str.tag1366)
  br i1 %tag.valid1372, label %str_ok1369, label %str_stale1370

str_ok1369:                                       ; preds = %str_stale1370, %str_gen_check1368, %str_ok1356
  %err.file.len321373 = trunc i64 %err.file.len1365 to i32
  %err.file.data1374 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1345, i32 0, i32 1
  %err.file.data1375 = load ptr, ptr %err.file.data1374, align 8
  %err.thread.rec1376 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1377 = icmp ne ptr %err.thread.rec1376, null
  br i1 %err.is.thread1377, label %err.thread1378, label %err.normal1379

str_stale1370:                                    ; preds = %str_gen_check1368
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1369

err.thread1378:                                   ; preds = %str_ok1369
  %err.haserr.gep1380 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1376, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1380, align 8
  %err.err.gep1381 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1376, i32 0, i32 7
  store ptr %err.ptr1339, ptr %err.err.gep1381, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1379:                                   ; preds = %str_ok1369
  %err.panic.printf1382 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1341, i32 %err.msg.len321360, ptr %err.msg.data1362, i32 %err.file.len321373, ptr %err.file.data1375, i64 %err.line1347, i64 %err.col1349)
  call void @exit(i32 1)
  unreachable

a.create1387:                                     ; preds = %unwrap.pos.75
  %arena.cur1389 = call ptr @dva_arena_current()
  %a.create1390 = call ptr @dva_arena_alloc(ptr %arena.cur1389, i64 24)
  %arena.cur1391 = call ptr @dva_arena_current()
  %a.buf1392 = call ptr @dva_arena_alloc(ptr %arena.cur1391, i64 128)
  %a.len.gep1393 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1390, i32 0, i32 0
  store i64 0, ptr %a.len.gep1393, align 8
  %a.data.gep1394 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1390, i32 0, i32 1
  store ptr %a.buf1392, ptr %a.data.gep1394, align 8
  %a.cap.gep1395 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1390, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1395, align 8
  store ptr %a.create1390, ptr %var.idxs, align 8
  br label %a.after1388

a.after1388:                                      ; preds = %a.create1387, %unwrap.pos.75
  %a.load21396 = load ptr, ptr %var.idxs, align 8
  %var.load1397 = load i64, ptr %var.u, align 8
  %a.rd.nonnull1398 = icmp ne ptr %a.load21396, null
  br i1 %a.rd.nonnull1398, label %a.rd.check1399, label %a.rd.err.null1401

a.rd.check1399:                                   ; preds = %a.after1388
  %a.rd.len1404 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21396, i32 0, i32 0
  %a.rd.len1405 = load i64, ptr %a.rd.len1404, align 8
  %a.rd.ge01406 = icmp sge i64 %var.load1397, 0
  %a.rd.lt1407 = icmp slt i64 %var.load1397, %a.rd.len1405
  %a.rd.bounds1408 = and i1 %a.rd.ge01406, %a.rd.lt1407
  br i1 %a.rd.bounds1408, label %a.rd.ok1400, label %a.rd.err.oob1402

a.rd.ok1400:                                      ; preds = %a.rd.check1399
  %a.rd.data1409 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21396, i32 0, i32 1
  %a.rd.data1410 = load ptr, ptr %a.rd.data1409, align 8
  %a.rd.elem.gep1411 = getelementptr i64, ptr %a.rd.data1410, i64 %var.load1397
  %a.rd.elem1412 = load i64, ptr %a.rd.elem.gep1411, align 8
  br label %a.rd.done1403

a.rd.err.null1401:                                ; preds = %a.after1388
  %arena.cur1413 = call ptr @dva_arena_current()
  %err.alloc1414 = call ptr @dva_arena_alloc(ptr %arena.cur1413, i64 56)
  %err.code.gep1415 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1414, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1415, align 8
  %err.msg.gep1416 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1414, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1416, align 8
  %err.file.gep1417 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1414, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1417, align 8
  %err.line.gep1418 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1414, i32 0, i32 3
  store i64 314, ptr %err.line.gep1418, align 8
  %err.col.gep1419 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1414, i32 0, i32 4
  store i64 19, ptr %err.col.gep1419, align 8
  %err.ctx.gep1420 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1414, i32 0, i32 5
  %err.ctx0.gep1421 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1420, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1421, align 8
  %err.ctx1.gep1422 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1420, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1422, align 8
  %err.p2i1423 = ptrtoint ptr %err.alloc1414 to i64
  br label %a.rd.done1403

a.rd.err.oob1402:                                 ; preds = %a.rd.check1399
  %arena.cur1424 = call ptr @dva_arena_current()
  %err.alloc1425 = call ptr @dva_arena_alloc(ptr %arena.cur1424, i64 56)
  %err.code.gep1426 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1425, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1426, align 8
  %err.msg.gep1427 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1425, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1427, align 8
  %err.file.gep1428 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1425, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1428, align 8
  %err.line.gep1429 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1425, i32 0, i32 3
  store i64 314, ptr %err.line.gep1429, align 8
  %err.col.gep1430 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1425, i32 0, i32 4
  store i64 19, ptr %err.col.gep1430, align 8
  %err.ctx.gep1431 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1425, i32 0, i32 5
  %err.ctx0.gep1432 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1431, i32 0, i32 0
  store i64 %var.load1397, ptr %err.ctx0.gep1432, align 8
  %err.ctx1.gep1433 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1431, i32 0, i32 1
  store i64 %a.rd.len1405, ptr %err.ctx1.gep1433, align 8
  %err.p2i1434 = ptrtoint ptr %err.alloc1425 to i64
  br label %a.rd.done1403

a.rd.done1403:                                    ; preds = %a.rd.err.oob1402, %a.rd.err.null1401, %a.rd.ok1400
  %a.rd.tag1435 = phi i1 [ true, %a.rd.ok1400 ], [ false, %a.rd.err.null1401 ], [ false, %a.rd.err.oob1402 ]
  %a.rd.pay1436 = phi i64 [ %a.rd.elem1412, %a.rd.ok1400 ], [ %err.p2i1423, %a.rd.err.null1401 ], [ %err.p2i1434, %a.rd.err.oob1402 ]
  %ram.tag1437 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1435, 0
  %ram.pay1438 = insertvalue { i1, i64 } %ram.tag1437, i64 %a.rd.pay1436, 1
  %unwrap.is_pos1439 = extractvalue { i1, i64 } %ram.pay1438, 0
  br i1 %unwrap.is_pos1439, label %unwrap.pos.76, label %unwrap.abort.76

unwrap.pos.76:                                    ; preds = %a.rd.done1403
  %unwrap.pay.pos1485 = extractvalue { i1, i64 } %ram.pay1438, 1
  store i64 %unwrap.pay.pos1485, ptr %var.idx_u, align 8
  %var.load1486 = load i64, ptr %var.low_u, align 8
  %var.load1487 = load i64, ptr %var.idx_u, align 8
  %cmptmp1488 = icmp eq i64 %var.load1486, %var.load1487
  br i1 %cmptmp1488, label %choice.then1489, label %choice.exit1490

unwrap.abort.76:                                  ; preds = %a.rd.done1403
  %unwrap.pay.abort1440 = extractvalue { i1, i64 } %ram.pay1438, 1
  %err.ptr1441 = inttoptr i64 %unwrap.pay.abort1440 to ptr
  %err.code.gep1442 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1441, i32 0, i32 0
  %err.code1443 = load i64, ptr %err.code.gep1442, align 8
  %err.msg.gep1444 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1441, i32 0, i32 1
  %err.msg.struct1445 = load ptr, ptr %err.msg.gep1444, align 8
  %err.file.gep1446 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1441, i32 0, i32 2
  %err.file.struct1447 = load ptr, ptr %err.file.gep1446, align 8
  %err.line.gep1448 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1441, i32 0, i32 3
  %err.line1449 = load i64, ptr %err.line.gep1448, align 8
  %err.col.gep1450 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1441, i32 0, i32 4
  %err.col1451 = load i64, ptr %err.col.gep1450, align 8
  %err.msg.len1452 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1445, i32 0, i32 0
  %err.msg.len1453 = load i64, ptr %err.msg.len1452, align 8
  %err.msg.len1454 = and i64 %err.msg.len1453, 281474976710655
  %str.tag1455 = lshr i64 %err.msg.len1453, 48
  %str.immortal1456 = icmp eq i64 %str.tag1455, 0
  br i1 %str.immortal1456, label %str_ok1458, label %str_gen_check1457

str_gen_check1457:                                ; preds = %unwrap.abort.76
  %arena.cur1460 = call ptr @dva_arena_current()
  %tag.valid1461 = call i1 @dva_arena_validate_tag(ptr %arena.cur1460, i64 %str.tag1455)
  br i1 %tag.valid1461, label %str_ok1458, label %str_stale1459

str_ok1458:                                       ; preds = %str_stale1459, %str_gen_check1457, %unwrap.abort.76
  %err.msg.len321462 = trunc i64 %err.msg.len1454 to i32
  %err.msg.data1463 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1445, i32 0, i32 1
  %err.msg.data1464 = load ptr, ptr %err.msg.data1463, align 8
  %err.file.len1465 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1447, i32 0, i32 0
  %err.file.len1466 = load i64, ptr %err.file.len1465, align 8
  %err.file.len1467 = and i64 %err.file.len1466, 281474976710655
  %str.tag1468 = lshr i64 %err.file.len1466, 48
  %str.immortal1469 = icmp eq i64 %str.tag1468, 0
  br i1 %str.immortal1469, label %str_ok1471, label %str_gen_check1470

str_stale1459:                                    ; preds = %str_gen_check1457
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1458

str_gen_check1470:                                ; preds = %str_ok1458
  %arena.cur1473 = call ptr @dva_arena_current()
  %tag.valid1474 = call i1 @dva_arena_validate_tag(ptr %arena.cur1473, i64 %str.tag1468)
  br i1 %tag.valid1474, label %str_ok1471, label %str_stale1472

str_ok1471:                                       ; preds = %str_stale1472, %str_gen_check1470, %str_ok1458
  %err.file.len321475 = trunc i64 %err.file.len1467 to i32
  %err.file.data1476 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1447, i32 0, i32 1
  %err.file.data1477 = load ptr, ptr %err.file.data1476, align 8
  %err.thread.rec1478 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1479 = icmp ne ptr %err.thread.rec1478, null
  br i1 %err.is.thread1479, label %err.thread1480, label %err.normal1481

str_stale1472:                                    ; preds = %str_gen_check1470
  %30 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1471

err.thread1480:                                   ; preds = %str_ok1471
  %err.haserr.gep1482 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1478, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1482, align 8
  %err.err.gep1483 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1478, i32 0, i32 7
  store ptr %err.ptr1441, ptr %err.err.gep1483, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1481:                                   ; preds = %str_ok1471
  %err.panic.printf1484 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1443, i32 %err.msg.len321462, ptr %err.msg.data1464, i32 %err.file.len321475, ptr %err.file.data1477, i64 %err.line1449, i64 %err.col1451)
  call void @exit(i32 1)
  unreachable

choice.then1489:                                  ; preds = %unwrap.pos.76
  %arena.cur1491 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur1491, i64 24)
  %arena.cur1492 = call ptr @dva_arena_current()
  %a.buf1493 = call ptr @dva_arena_alloc(ptr %arena.cur1492, i64 128)
  %a.len.gep1494 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep1494, align 8
  %a.data.gep1495 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf1493, ptr %a.data.gep1495, align 8
  %a.cap.gep1496 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1496, align 8
  store ptr %a.new, ptr %var.scc_names, align 8
  %var.load1497 = load ptr, ptr %var.u_node, align 8
  %var.load1498 = load ptr, ptr %var.u_node, align 8
  %fld.gep1499 = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load1498, i32 0, i32 0
  %fld.load1500 = load ptr, ptr %fld.gep1499, align 8
  %call.res1501 = call i1 @"dep_graph::node_has_dep"(ptr %var.load1497, ptr %fld.load1500)
  store i1 %call.res1501, ptr %var.is_self_rec, align 1
  store i64 0, ptr %loop.idx.77, align 8
  br label %loop.header.77

choice.exit1490:                                  ; preds = %a.store1871, %unwrap.pos.76
  ret void

loop.header.77:                                   ; preds = %loop.latch.77, %choice.then1489
  %counter.load1502 = load i64, ptr %loop.idx.77, align 8
  br label %loop.body.77

loop.body.77:                                     ; preds = %loop.header.77
  %loop.rel.i1503 = sub i64 %counter.load1502, 0
  store i64 1, ptr %loop.step.77, align 8
  store i64 %loop.rel.i1503, ptr %var._i1504, align 8
  store i64 %counter.load1502, ptr %var._1505, align 8
  %var.load1506 = load ptr, ptr %var.state, align 8
  %fld.gep1507 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load1506, i32 0, i32 4
  %fld.load1508 = load ptr, ptr %fld.gep1507, align 8
  store ptr %fld.load1508, ptr %var.s_ptr, align 8
  %var.load1509 = load ptr, ptr %var.s_ptr, align 8
  %a.load1510 = load ptr, ptr %var.s_ptr, align 8
  %a.null1511 = icmp eq ptr %a.load1510, null
  br i1 %a.null1511, label %a.create1512, label %a.after1513

loop.exit.nat.77:                                 ; No predecessors!
  br label %loop.exit.77

loop.latch.77:                                    ; preds = %choice.exit1832
  %step.val1833 = load i64, ptr %loop.step.77, align 8
  %loop.next1834 = add i64 %counter.load1502, %step.val1833
  store i64 %loop.next1834, ptr %loop.idx.77, align 8
  br label %loop.header.77

loop.exit.77:                                     ; preds = %choice.then1831, %choice.then1611, %loop.exit.nat.77
  %var.load1835 = load ptr, ptr %var.scc_names, align 8
  %a.load1836 = load ptr, ptr %var.scc_names, align 8
  %a.null1837 = icmp eq ptr %a.load1836, null
  br i1 %a.null1837, label %a.create1838, label %a.after1839

a.create1512:                                     ; preds = %loop.body.77
  %arena.cur1514 = call ptr @dva_arena_current()
  %a.create1515 = call ptr @dva_arena_alloc(ptr %arena.cur1514, i64 24)
  %arena.cur1516 = call ptr @dva_arena_current()
  %a.buf1517 = call ptr @dva_arena_alloc(ptr %arena.cur1516, i64 128)
  %a.len.gep1518 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1515, i32 0, i32 0
  store i64 0, ptr %a.len.gep1518, align 8
  %a.data.gep1519 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1515, i32 0, i32 1
  store ptr %a.buf1517, ptr %a.data.gep1519, align 8
  %a.cap.gep1520 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1515, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1520, align 8
  store ptr %a.create1515, ptr %var.s_ptr, align 8
  br label %a.after1513

a.after1513:                                      ; preds = %a.create1512, %loop.body.77
  %a.load21521 = load ptr, ptr %var.s_ptr, align 8
  %a.rd.nonnull1522 = icmp ne ptr %a.load21521, null
  br i1 %a.rd.nonnull1522, label %a.rd.check1523, label %a.rd.err.null1525

a.rd.check1523:                                   ; preds = %a.after1513
  %a.rd.len1528 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21521, i32 0, i32 0
  %a.rd.len1529 = load i64, ptr %a.rd.len1528, align 8
  %a.rd.lt1530 = icmp slt i64 0, %a.rd.len1529
  %a.rd.bounds1531 = and i1 true, %a.rd.lt1530
  br i1 %a.rd.bounds1531, label %a.rd.ok1524, label %a.rd.err.oob1526

a.rd.ok1524:                                      ; preds = %a.rd.check1523
  %a.rd.data1532 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21521, i32 0, i32 1
  %a.rd.data1533 = load ptr, ptr %a.rd.data1532, align 8
  %a.rd.elem.gep1534 = getelementptr i64, ptr %a.rd.data1533, i64 0
  %a.rd.elem1535 = load i64, ptr %a.rd.elem.gep1534, align 8
  br label %a.rd.done1527

a.rd.err.null1525:                                ; preds = %a.after1513
  %arena.cur1536 = call ptr @dva_arena_current()
  %err.alloc1537 = call ptr @dva_arena_alloc(ptr %arena.cur1536, i64 56)
  %err.code.gep1538 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1537, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1538, align 8
  %err.msg.gep1539 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1537, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1539, align 8
  %err.file.gep1540 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1537, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1540, align 8
  %err.line.gep1541 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1537, i32 0, i32 3
  store i64 321, ptr %err.line.gep1541, align 8
  %err.col.gep1542 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1537, i32 0, i32 4
  store i64 26, ptr %err.col.gep1542, align 8
  %err.ctx.gep1543 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1537, i32 0, i32 5
  %err.ctx0.gep1544 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1543, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1544, align 8
  %err.ctx1.gep1545 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1543, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1545, align 8
  %err.p2i1546 = ptrtoint ptr %err.alloc1537 to i64
  br label %a.rd.done1527

a.rd.err.oob1526:                                 ; preds = %a.rd.check1523
  %arena.cur1547 = call ptr @dva_arena_current()
  %err.alloc1548 = call ptr @dva_arena_alloc(ptr %arena.cur1547, i64 56)
  %err.code.gep1549 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1548, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1549, align 8
  %err.msg.gep1550 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1548, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1550, align 8
  %err.file.gep1551 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1548, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1551, align 8
  %err.line.gep1552 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1548, i32 0, i32 3
  store i64 321, ptr %err.line.gep1552, align 8
  %err.col.gep1553 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1548, i32 0, i32 4
  store i64 26, ptr %err.col.gep1553, align 8
  %err.ctx.gep1554 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1548, i32 0, i32 5
  %err.ctx0.gep1555 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1554, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1555, align 8
  %err.ctx1.gep1556 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1554, i32 0, i32 1
  store i64 %a.rd.len1529, ptr %err.ctx1.gep1556, align 8
  %err.p2i1557 = ptrtoint ptr %err.alloc1548 to i64
  br label %a.rd.done1527

a.rd.done1527:                                    ; preds = %a.rd.err.oob1526, %a.rd.err.null1525, %a.rd.ok1524
  %a.rd.tag1558 = phi i1 [ true, %a.rd.ok1524 ], [ false, %a.rd.err.null1525 ], [ false, %a.rd.err.oob1526 ]
  %a.rd.pay1559 = phi i64 [ %a.rd.elem1535, %a.rd.ok1524 ], [ %err.p2i1546, %a.rd.err.null1525 ], [ %err.p2i1557, %a.rd.err.oob1526 ]
  %ram.tag1560 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1558, 0
  %ram.pay1561 = insertvalue { i1, i64 } %ram.tag1560, i64 %a.rd.pay1559, 1
  %unwrap.is_pos1562 = extractvalue { i1, i64 } %ram.pay1561, 0
  br i1 %unwrap.is_pos1562, label %unwrap.pos.78, label %unwrap.abort.78

unwrap.pos.78:                                    ; preds = %a.rd.done1527
  %unwrap.pay.pos1608 = extractvalue { i1, i64 } %ram.pay1561, 1
  store i64 %unwrap.pay.pos1608, ptr %var.sp, align 8
  %var.load1609 = load i64, ptr %var.sp, align 8
  %cmptmp1610 = icmp eq i64 %var.load1609, 0
  br i1 %cmptmp1610, label %choice.then1611, label %choice.exit1612

unwrap.abort.78:                                  ; preds = %a.rd.done1527
  %unwrap.pay.abort1563 = extractvalue { i1, i64 } %ram.pay1561, 1
  %err.ptr1564 = inttoptr i64 %unwrap.pay.abort1563 to ptr
  %err.code.gep1565 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1564, i32 0, i32 0
  %err.code1566 = load i64, ptr %err.code.gep1565, align 8
  %err.msg.gep1567 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1564, i32 0, i32 1
  %err.msg.struct1568 = load ptr, ptr %err.msg.gep1567, align 8
  %err.file.gep1569 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1564, i32 0, i32 2
  %err.file.struct1570 = load ptr, ptr %err.file.gep1569, align 8
  %err.line.gep1571 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1564, i32 0, i32 3
  %err.line1572 = load i64, ptr %err.line.gep1571, align 8
  %err.col.gep1573 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1564, i32 0, i32 4
  %err.col1574 = load i64, ptr %err.col.gep1573, align 8
  %err.msg.len1575 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1568, i32 0, i32 0
  %err.msg.len1576 = load i64, ptr %err.msg.len1575, align 8
  %err.msg.len1577 = and i64 %err.msg.len1576, 281474976710655
  %str.tag1578 = lshr i64 %err.msg.len1576, 48
  %str.immortal1579 = icmp eq i64 %str.tag1578, 0
  br i1 %str.immortal1579, label %str_ok1581, label %str_gen_check1580

str_gen_check1580:                                ; preds = %unwrap.abort.78
  %arena.cur1583 = call ptr @dva_arena_current()
  %tag.valid1584 = call i1 @dva_arena_validate_tag(ptr %arena.cur1583, i64 %str.tag1578)
  br i1 %tag.valid1584, label %str_ok1581, label %str_stale1582

str_ok1581:                                       ; preds = %str_stale1582, %str_gen_check1580, %unwrap.abort.78
  %err.msg.len321585 = trunc i64 %err.msg.len1577 to i32
  %err.msg.data1586 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1568, i32 0, i32 1
  %err.msg.data1587 = load ptr, ptr %err.msg.data1586, align 8
  %err.file.len1588 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1570, i32 0, i32 0
  %err.file.len1589 = load i64, ptr %err.file.len1588, align 8
  %err.file.len1590 = and i64 %err.file.len1589, 281474976710655
  %str.tag1591 = lshr i64 %err.file.len1589, 48
  %str.immortal1592 = icmp eq i64 %str.tag1591, 0
  br i1 %str.immortal1592, label %str_ok1594, label %str_gen_check1593

str_stale1582:                                    ; preds = %str_gen_check1580
  %31 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1581

str_gen_check1593:                                ; preds = %str_ok1581
  %arena.cur1596 = call ptr @dva_arena_current()
  %tag.valid1597 = call i1 @dva_arena_validate_tag(ptr %arena.cur1596, i64 %str.tag1591)
  br i1 %tag.valid1597, label %str_ok1594, label %str_stale1595

str_ok1594:                                       ; preds = %str_stale1595, %str_gen_check1593, %str_ok1581
  %err.file.len321598 = trunc i64 %err.file.len1590 to i32
  %err.file.data1599 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1570, i32 0, i32 1
  %err.file.data1600 = load ptr, ptr %err.file.data1599, align 8
  %err.thread.rec1601 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1602 = icmp ne ptr %err.thread.rec1601, null
  br i1 %err.is.thread1602, label %err.thread1603, label %err.normal1604

str_stale1595:                                    ; preds = %str_gen_check1593
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1594

err.thread1603:                                   ; preds = %str_ok1594
  %err.haserr.gep1605 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1601, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1605, align 8
  %err.err.gep1606 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1601, i32 0, i32 7
  store ptr %err.ptr1564, ptr %err.err.gep1606, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1604:                                   ; preds = %str_ok1594
  %err.panic.printf1607 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1566, i32 %err.msg.len321585, ptr %err.msg.data1587, i32 %err.file.len321598, ptr %err.file.data1600, i64 %err.line1572, i64 %err.col1574)
  call void @exit(i32 1)
  unreachable

choice.then1611:                                  ; preds = %unwrap.pos.78
  br label %loop.exit.77

choice.exit1612:                                  ; preds = %unwrap.pos.78
  %var.load1613 = load ptr, ptr %var.state, align 8
  %call.res1614 = call i64 @"dep_graph::pop_stack"(ptr %var.load1613)
  store i64 %call.res1614, ptr %var.w, align 8
  %var.load1615 = load ptr, ptr %var.ons, align 8
  %a.load1616 = load ptr, ptr %var.ons, align 8
  %a.null1617 = icmp eq ptr %a.load1616, null
  br i1 %a.null1617, label %a.create1618, label %a.after1619

a.create1618:                                     ; preds = %choice.exit1612
  %arena.cur1620 = call ptr @dva_arena_current()
  %a.create1621 = call ptr @dva_arena_alloc(ptr %arena.cur1620, i64 24)
  %arena.cur1622 = call ptr @dva_arena_current()
  %a.buf1623 = call ptr @dva_arena_alloc(ptr %arena.cur1622, i64 128)
  %a.len.gep1624 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1621, i32 0, i32 0
  store i64 0, ptr %a.len.gep1624, align 8
  %a.data.gep1625 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1621, i32 0, i32 1
  store ptr %a.buf1623, ptr %a.data.gep1625, align 8
  %a.cap.gep1626 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1621, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1626, align 8
  store ptr %a.create1621, ptr %var.ons, align 8
  br label %a.after1619

a.after1619:                                      ; preds = %a.create1618, %choice.exit1612
  %a.load21627 = load ptr, ptr %var.ons, align 8
  %var.load1628 = load i64, ptr %var.w, align 8
  %a.wr.nonnull1629 = icmp ne ptr %a.load21627, null
  br i1 %a.wr.nonnull1629, label %a.wr.check1630, label %a.wr.err.null1632

a.wr.check1630:                                   ; preds = %a.after1619
  %a.wr.len1635 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21627, i32 0, i32 0
  %a.wr.len1636 = load i64, ptr %a.wr.len1635, align 8
  %a.wr.ge01637 = icmp sge i64 %var.load1628, 0
  %a.wr.lt1638 = icmp slt i64 %var.load1628, %a.wr.len1636
  %a.wr.bounds1639 = and i1 %a.wr.ge01637, %a.wr.lt1638
  br i1 %a.wr.bounds1639, label %a.wr.ok1631, label %a.wr.err.oob1633

a.wr.ok1631:                                      ; preds = %a.wr.check1630
  %a.wr.data1640 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21627, i32 0, i32 1
  %a.wr.data1641 = load ptr, ptr %a.wr.data1640, align 8
  %a.elem.gep1642 = getelementptr i64, ptr %a.wr.data1641, i64 %var.load1628
  store i64 0, ptr %a.elem.gep1642, align 8
  br label %a.wr.done1634

a.wr.err.null1632:                                ; preds = %a.after1619
  %arena.cur1643 = call ptr @dva_arena_current()
  %err.alloc1644 = call ptr @dva_arena_alloc(ptr %arena.cur1643, i64 56)
  %err.code.gep1645 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1644, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1645, align 8
  %err.msg.gep1646 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1644, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1646, align 8
  %err.file.gep1647 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1644, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1647, align 8
  %err.line.gep1648 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1644, i32 0, i32 3
  store i64 0, ptr %err.line.gep1648, align 8
  %err.col.gep1649 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1644, i32 0, i32 4
  store i64 0, ptr %err.col.gep1649, align 8
  %err.ctx.gep1650 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1644, i32 0, i32 5
  %err.ctx0.gep1651 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1650, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1651, align 8
  %err.ctx1.gep1652 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1650, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1652, align 8
  br label %a.wr.done1634

a.wr.err.oob1633:                                 ; preds = %a.wr.check1630
  %arena.cur1653 = call ptr @dva_arena_current()
  %err.alloc1654 = call ptr @dva_arena_alloc(ptr %arena.cur1653, i64 56)
  %err.code.gep1655 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1654, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1655, align 8
  %err.msg.gep1656 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1654, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1656, align 8
  %err.file.gep1657 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1654, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1657, align 8
  %err.line.gep1658 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1654, i32 0, i32 3
  store i64 0, ptr %err.line.gep1658, align 8
  %err.col.gep1659 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1654, i32 0, i32 4
  store i64 0, ptr %err.col.gep1659, align 8
  %err.ctx.gep1660 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1654, i32 0, i32 5
  %err.ctx0.gep1661 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1660, i32 0, i32 0
  store i64 %var.load1628, ptr %err.ctx0.gep1661, align 8
  %err.ctx1.gep1662 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1660, i32 0, i32 1
  store i64 %a.wr.len1636, ptr %err.ctx1.gep1662, align 8
  br label %a.wr.done1634

a.wr.done1634:                                    ; preds = %a.wr.err.oob1633, %a.wr.err.null1632, %a.wr.ok1631
  %a.wr.niche1663 = phi ptr [ null, %a.wr.ok1631 ], [ %err.alloc1644, %a.wr.err.null1632 ], [ %err.alloc1654, %a.wr.err.oob1633 ]
  %niche.eq.null1664 = icmp eq ptr %a.wr.niche1663, null
  br i1 %niche.eq.null1664, label %choice.then1665, label %choice.else1666

choice.then1665:                                  ; preds = %a.wr.done1634
  br label %choice.exit1667

choice.else1666:                                  ; preds = %a.wr.done1634
  store ptr %a.wr.niche1663, ptr %var._1668, align 8
  store ptr %a.wr.niche1663, ptr %var._1669, align 8
  store ptr %a.wr.niche1663, ptr %var._1670, align 8
  %err.code.gep1671 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1663, i32 0, i32 0
  %err.code1672 = load i64, ptr %err.code.gep1671, align 8
  %err.msg.gep1673 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1663, i32 0, i32 1
  %err.msg.struct1674 = load ptr, ptr %err.msg.gep1673, align 8
  %err.file.gep1675 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1663, i32 0, i32 2
  %err.file.struct1676 = load ptr, ptr %err.file.gep1675, align 8
  %err.line.gep1677 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1663, i32 0, i32 3
  %err.line1678 = load i64, ptr %err.line.gep1677, align 8
  %err.col.gep1679 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche1663, i32 0, i32 4
  %err.col1680 = load i64, ptr %err.col.gep1679, align 8
  %err.msg.len1681 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1674, i32 0, i32 0
  %err.msg.len1682 = load i64, ptr %err.msg.len1681, align 8
  %err.msg.len1683 = and i64 %err.msg.len1682, 281474976710655
  %str.tag1684 = lshr i64 %err.msg.len1682, 48
  %str.immortal1685 = icmp eq i64 %str.tag1684, 0
  br i1 %str.immortal1685, label %str_ok1687, label %str_gen_check1686

choice.exit1667:                                  ; preds = %err.abort1714, %choice.then1665
  %var.load1715 = load ptr, ptr %var.graph, align 8
  %fld.gep1716 = getelementptr inbounds { ptr, ptr }, ptr %var.load1715, i32 0, i32 0
  %fld.load1717 = load ptr, ptr %fld.gep1716, align 8
  %var.load1718 = load i64, ptr %var.w, align 8
  %a.rd.nonnull1719 = icmp ne ptr %fld.load1717, null
  br i1 %a.rd.nonnull1719, label %a.rd.check1720, label %a.rd.err.null1722

str_gen_check1686:                                ; preds = %choice.else1666
  %arena.cur1689 = call ptr @dva_arena_current()
  %tag.valid1690 = call i1 @dva_arena_validate_tag(ptr %arena.cur1689, i64 %str.tag1684)
  br i1 %tag.valid1690, label %str_ok1687, label %str_stale1688

str_ok1687:                                       ; preds = %str_stale1688, %str_gen_check1686, %choice.else1666
  %err.msg.len321691 = trunc i64 %err.msg.len1683 to i32
  %err.msg.data1692 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1674, i32 0, i32 1
  %err.msg.data1693 = load ptr, ptr %err.msg.data1692, align 8
  %err.file.len1694 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1676, i32 0, i32 0
  %err.file.len1695 = load i64, ptr %err.file.len1694, align 8
  %err.file.len1696 = and i64 %err.file.len1695, 281474976710655
  %str.tag1697 = lshr i64 %err.file.len1695, 48
  %str.immortal1698 = icmp eq i64 %str.tag1697, 0
  br i1 %str.immortal1698, label %str_ok1700, label %str_gen_check1699

str_stale1688:                                    ; preds = %str_gen_check1686
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1687

str_gen_check1699:                                ; preds = %str_ok1687
  %arena.cur1702 = call ptr @dva_arena_current()
  %tag.valid1703 = call i1 @dva_arena_validate_tag(ptr %arena.cur1702, i64 %str.tag1697)
  br i1 %tag.valid1703, label %str_ok1700, label %str_stale1701

str_ok1700:                                       ; preds = %str_stale1701, %str_gen_check1699, %str_ok1687
  %err.file.len321704 = trunc i64 %err.file.len1696 to i32
  %err.file.data1705 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct1676, i32 0, i32 1
  %err.file.data1706 = load ptr, ptr %err.file.data1705, align 8
  %err.thread.rec1707 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread1708 = icmp ne ptr %err.thread.rec1707, null
  br i1 %err.is.thread1708, label %err.thread1709, label %err.normal1710

str_stale1701:                                    ; preds = %str_gen_check1699
  %34 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1700

err.thread1709:                                   ; preds = %str_ok1700
  %err.haserr.gep1711 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1707, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1711, align 8
  %err.err.gep1712 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1707, i32 0, i32 7
  store ptr %a.wr.niche1663, ptr %err.err.gep1712, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1710:                                   ; preds = %str_ok1700
  %err.panic.printf1713 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1672, i32 %err.msg.len321691, ptr %err.msg.data1693, i32 %err.file.len321704, ptr %err.file.data1706, i64 %err.line1678, i64 %err.col1680)
  call void @exit(i32 1)
  unreachable

err.abort1714:                                    ; No predecessors!
  br label %choice.exit1667

a.rd.check1720:                                   ; preds = %choice.exit1667
  %a.rd.len1725 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1717, i32 0, i32 0
  %a.rd.len1726 = load i64, ptr %a.rd.len1725, align 8
  %a.rd.ge01727 = icmp sge i64 %var.load1718, 0
  %a.rd.lt1728 = icmp slt i64 %var.load1718, %a.rd.len1726
  %a.rd.bounds1729 = and i1 %a.rd.ge01727, %a.rd.lt1728
  br i1 %a.rd.bounds1729, label %a.rd.ok1721, label %a.rd.err.oob1723

a.rd.ok1721:                                      ; preds = %a.rd.check1720
  %a.rd.data1730 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load1717, i32 0, i32 1
  %a.rd.data1731 = load ptr, ptr %a.rd.data1730, align 8
  %a.rd.elem.gep1732 = getelementptr i64, ptr %a.rd.data1731, i64 %var.load1718
  %a.rd.elem1733 = load i64, ptr %a.rd.elem.gep1732, align 8
  br label %a.rd.done1724

a.rd.err.null1722:                                ; preds = %choice.exit1667
  %arena.cur1734 = call ptr @dva_arena_current()
  %err.alloc1735 = call ptr @dva_arena_alloc(ptr %arena.cur1734, i64 56)
  %err.code.gep1736 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1735, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1736, align 8
  %err.msg.gep1737 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1735, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep1737, align 8
  %err.file.gep1738 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1735, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1738, align 8
  %err.line.gep1739 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1735, i32 0, i32 3
  store i64 0, ptr %err.line.gep1739, align 8
  %err.col.gep1740 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1735, i32 0, i32 4
  store i64 0, ptr %err.col.gep1740, align 8
  %err.ctx.gep1741 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1735, i32 0, i32 5
  %err.ctx0.gep1742 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1741, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep1742, align 8
  %err.ctx1.gep1743 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1741, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep1743, align 8
  %err.p2i1744 = ptrtoint ptr %err.alloc1735 to i64
  br label %a.rd.done1724

a.rd.err.oob1723:                                 ; preds = %a.rd.check1720
  %arena.cur1745 = call ptr @dva_arena_current()
  %err.alloc1746 = call ptr @dva_arena_alloc(ptr %arena.cur1745, i64 56)
  %err.code.gep1747 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1746, i32 0, i32 0
  store i64 4011, ptr %err.code.gep1747, align 8
  %err.msg.gep1748 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1746, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep1748, align 8
  %err.file.gep1749 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1746, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep1749, align 8
  %err.line.gep1750 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1746, i32 0, i32 3
  store i64 0, ptr %err.line.gep1750, align 8
  %err.col.gep1751 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1746, i32 0, i32 4
  store i64 0, ptr %err.col.gep1751, align 8
  %err.ctx.gep1752 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc1746, i32 0, i32 5
  %err.ctx0.gep1753 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1752, i32 0, i32 0
  store i64 %var.load1718, ptr %err.ctx0.gep1753, align 8
  %err.ctx1.gep1754 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep1752, i32 0, i32 1
  store i64 %a.rd.len1726, ptr %err.ctx1.gep1754, align 8
  %err.p2i1755 = ptrtoint ptr %err.alloc1746 to i64
  br label %a.rd.done1724

a.rd.done1724:                                    ; preds = %a.rd.err.oob1723, %a.rd.err.null1722, %a.rd.ok1721
  %a.rd.tag1756 = phi i1 [ true, %a.rd.ok1721 ], [ false, %a.rd.err.null1722 ], [ false, %a.rd.err.oob1723 ]
  %a.rd.pay1757 = phi i64 [ %a.rd.elem1733, %a.rd.ok1721 ], [ %err.p2i1744, %a.rd.err.null1722 ], [ %err.p2i1755, %a.rd.err.oob1723 ]
  %ram.tag1758 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag1756, 0
  %ram.pay1759 = insertvalue { i1, i64 } %ram.tag1758, i64 %a.rd.pay1757, 1
  %unwrap.is_pos1760 = extractvalue { i1, i64 } %ram.pay1759, 0
  br i1 %unwrap.is_pos1760, label %unwrap.pos.79, label %unwrap.abort.79

unwrap.pos.79:                                    ; preds = %a.rd.done1724
  %unwrap.pay.pos1806 = extractvalue { i1, i64 } %ram.pay1759, 1
  %pay.ptr1807 = inttoptr i64 %unwrap.pay.pos1806 to ptr
  store ptr %pay.ptr1807, ptr %var.w_node, align 8
  %var.load1808 = load ptr, ptr %var.w_node, align 8
  %fld.gep1809 = getelementptr inbounds { ptr, ptr, i64 }, ptr %var.load1808, i32 0, i32 0
  %fld.load1810 = load ptr, ptr %fld.gep1809, align 8
  %a.load1811 = load ptr, ptr %var.scc_names, align 8
  %a.null1812 = icmp eq ptr %a.load1811, null
  br i1 %a.null1812, label %a.create1813, label %a.after1814

unwrap.abort.79:                                  ; preds = %a.rd.done1724
  %unwrap.pay.abort1761 = extractvalue { i1, i64 } %ram.pay1759, 1
  %err.ptr1762 = inttoptr i64 %unwrap.pay.abort1761 to ptr
  %err.code.gep1763 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1762, i32 0, i32 0
  %err.code1764 = load i64, ptr %err.code.gep1763, align 8
  %err.msg.gep1765 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1762, i32 0, i32 1
  %err.msg.struct1766 = load ptr, ptr %err.msg.gep1765, align 8
  %err.file.gep1767 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1762, i32 0, i32 2
  %err.file.struct1768 = load ptr, ptr %err.file.gep1767, align 8
  %err.line.gep1769 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1762, i32 0, i32 3
  %err.line1770 = load i64, ptr %err.line.gep1769, align 8
  %err.col.gep1771 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr1762, i32 0, i32 4
  %err.col1772 = load i64, ptr %err.col.gep1771, align 8
  %err.msg.len1773 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct1766, i32 0, i32 0
  %err.msg.len1774 = load i64, ptr %err.msg.len1773, align 8
  %err.msg.len1775 = and i64 %err.msg.len1774, 281474976710655
  %str.tag1776 = lshr i64 %err.msg.len1774, 48
  %str.immortal1777 = icmp eq i64 %str.tag1776, 0
  br i1 %str.immortal1777, label %str_ok1779, label %str_gen_check1778

str_gen_check1778:                                ; preds = %unwrap.abort.79
  %arena.cur1781 = call ptr @dva_arena_current()
  %tag.valid1782 = call i1 @dva_arena_validate_tag(ptr %arena.cur1781, i64 %str.tag1776)
  br i1 %tag.valid1782, label %str_ok1779, label %str_stale1780

str_ok1779:                                       ; preds = %str_stale1780, %str_gen_check1778, %unwrap.abort.79
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
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
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
  %36 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1792

err.thread1801:                                   ; preds = %str_ok1792
  %err.haserr.gep1803 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1799, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep1803, align 8
  %err.err.gep1804 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec1799, i32 0, i32 7
  store ptr %err.ptr1762, ptr %err.err.gep1804, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal1802:                                   ; preds = %str_ok1792
  %err.panic.printf1805 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code1764, i32 %err.msg.len321783, ptr %err.msg.data1785, i32 %err.file.len321796, ptr %err.file.data1798, i64 %err.line1770, i64 %err.col1772)
  call void @exit(i32 1)
  unreachable

a.create1813:                                     ; preds = %unwrap.pos.79
  %arena.cur1815 = call ptr @dva_arena_current()
  %a.create1816 = call ptr @dva_arena_alloc(ptr %arena.cur1815, i64 24)
  %arena.cur1817 = call ptr @dva_arena_current()
  %a.buf1818 = call ptr @dva_arena_alloc(ptr %arena.cur1817, i64 128)
  %a.len.gep1819 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1816, i32 0, i32 0
  store i64 0, ptr %a.len.gep1819, align 8
  %a.data.gep1820 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1816, i32 0, i32 1
  store ptr %a.buf1818, ptr %a.data.gep1820, align 8
  %a.cap.gep1821 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1816, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1821, align 8
  store ptr %a.create1816, ptr %var.scc_names, align 8
  br label %a.after1814

a.after1814:                                      ; preds = %a.create1813, %unwrap.pos.79
  %a.load21822 = load ptr, ptr %var.scc_names, align 8
  br label %a.check

a.check:                                          ; preds = %a.after1814
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21822, i32 0, i32 0
  %a.len1823 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21822, i32 0, i32 2
  %a.cap1824 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len1823, %a.cap1824
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load21822)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21822, i32 0, i32 1
  %a.cur.data1825 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21822, i32 0, i32 0
  %a.cur.len1826 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep1827 = getelementptr i64, ptr %a.cur.data1825, i64 %a.cur.len1826
  %slot.p2i = ptrtoint ptr %fld.load1810 to i64
  store i64 %slot.p2i, ptr %a.elem.gep1827, align 8
  %a.next.len = add i64 %a.cur.len1826, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21822, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load1828 = load i64, ptr %var.w, align 8
  %var.load1829 = load i64, ptr %var.u, align 8
  %cmptmp1830 = icmp eq i64 %var.load1828, %var.load1829
  br i1 %cmptmp1830, label %choice.then1831, label %choice.exit1832

choice.then1831:                                  ; preds = %a.store
  br label %loop.exit.77

choice.exit1832:                                  ; preds = %a.store
  br label %loop.latch.77

a.create1838:                                     ; preds = %loop.exit.77
  %arena.cur1840 = call ptr @dva_arena_current()
  %a.create1841 = call ptr @dva_arena_alloc(ptr %arena.cur1840, i64 24)
  %arena.cur1842 = call ptr @dva_arena_current()
  %a.buf1843 = call ptr @dva_arena_alloc(ptr %arena.cur1842, i64 128)
  %a.len.gep1844 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1841, i32 0, i32 0
  store i64 0, ptr %a.len.gep1844, align 8
  %a.data.gep1845 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1841, i32 0, i32 1
  store ptr %a.buf1843, ptr %a.data.gep1845, align 8
  %a.cap.gep1846 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1841, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1846, align 8
  store ptr %a.create1841, ptr %var.scc_names, align 8
  br label %a.after1839

a.after1839:                                      ; preds = %a.create1838, %loop.exit.77
  %a.load21847 = load ptr, ptr %var.scc_names, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load21847, i32 0, i32 0
  %a.len.query1848 = load i64, ptr %a.len.query, align 8
  %cmptmp1849 = icmp sgt i64 %a.len.query1848, 1
  br i1 %cmptmp1849, label %or.80.then, label %or.80.else

or.80.then:                                       ; preds = %a.after1839
  br label %or.80.exit

or.80.else:                                       ; preds = %a.after1839
  %var.load1850 = load i1, ptr %var.is_self_rec, align 1
  br label %or.80.exit

or.80.exit:                                       ; preds = %or.80.else, %or.80.then
  %or.80.phi = phi i1 [ %cmptmp1849, %or.80.then ], [ %var.load1850, %or.80.else ]
  store i1 %or.80.phi, ptr %var.is_rec, align 1
  %var.load1851 = load ptr, ptr %var.state, align 8
  %var.load1852 = load ptr, ptr %var.scc_names, align 8
  %a.load1853 = load ptr, ptr %var.scc_names, align 8
  %a.null1854 = icmp eq ptr %a.load1853, null
  br i1 %a.null1854, label %a.create1855, label %a.after1856

a.create1855:                                     ; preds = %or.80.exit
  %arena.cur1857 = call ptr @dva_arena_current()
  %a.create1858 = call ptr @dva_arena_alloc(ptr %arena.cur1857, i64 24)
  %arena.cur1859 = call ptr @dva_arena_current()
  %a.buf1860 = call ptr @dva_arena_alloc(ptr %arena.cur1859, i64 128)
  %a.len.gep1861 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1858, i32 0, i32 0
  store i64 0, ptr %a.len.gep1861, align 8
  %a.data.gep1862 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1858, i32 0, i32 1
  store ptr %a.buf1860, ptr %a.data.gep1862, align 8
  %a.cap.gep1863 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1858, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1863, align 8
  store ptr %a.create1858, ptr %var.scc_names, align 8
  br label %a.after1856

a.after1856:                                      ; preds = %a.create1855, %or.80.exit
  %a.load21864 = load ptr, ptr %var.scc_names, align 8
  %var.load1865 = load i1, ptr %var.is_rec, align 1
  %arena.cur1866 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur1866, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load21864, ptr %rec.fld, align 8
  %rec.fld1867 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i1 %var.load1865, ptr %rec.fld1867, align 1
  %fld.gep1868 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load1851, i32 0, i32 6
  %a.fld.load = load ptr, ptr %fld.gep1868, align 8
  br label %a.check1869

a.check1869:                                      ; preds = %a.after1856
  %a.len1872 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.len1873 = load i64, ptr %a.len1872, align 8
  %a.cap1874 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 2
  %a.cap1875 = load i64, ptr %a.cap1874, align 8
  %a.needs.grow1876 = icmp eq i64 %a.len1873, %a.cap1875
  br i1 %a.needs.grow1876, label %a.grow1870, label %a.store1871

a.grow1870:                                       ; preds = %a.check1869
  call void @dva_array_grow(ptr %a.fld.load)
  br label %a.store1871

a.store1871:                                      ; preds = %a.grow1870, %a.check1869
  %a.cur.data1877 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 1
  %a.cur.data1878 = load ptr, ptr %a.cur.data1877, align 8
  %a.cur.len1879 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.cur.len1880 = load i64, ptr %a.cur.len1879, align 8
  %a.elem.gep1881 = getelementptr i64, ptr %a.cur.data1878, i64 %a.cur.len1880
  %slot.p2i1882 = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i1882, ptr %a.elem.gep1881, align 8
  %a.next.len1883 = add i64 %a.cur.len1880, 1
  %b.len.gep1884 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  store i64 %a.next.len1883, ptr %b.len.gep1884, align 8
  br label %choice.exit1490
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #0

define ptr @"dep_graph::tarjan_scc"(ptr %0) #1 {
entry:
  %var.idx = alloca i64, align 8
  %var._29 = alloca ptr, align 8
  %var._27 = alloca i64, align 8
  %var.idxs = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.81 = alloca i64, align 8
  %loop.idx.81 = alloca i64, align 8
  %var.state = alloca ptr, align 8
  %var.n = alloca i64, align 8
  %var.graph = alloca ptr, align 8
  store ptr %0, ptr %var.graph, align 8
  %var.load = load ptr, ptr %var.graph, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %a.len.query1 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query1, ptr %var.n, align 8
  %var.load2 = load i64, ptr %var.n, align 8
  %call.res = call ptr @"dep_graph::init_tarjan_state"(i64 %var.load2)
  store ptr %call.res, ptr %var.state, align 8
  %var.load3 = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.81, align 8
  br label %loop.header.81

loop.header.81:                                   ; preds = %loop.latch.81, %entry
  %counter.load = load i64, ptr %loop.idx.81, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load3
  br i1 %loop.cond, label %loop.body.81, label %loop.exit.nat.81

loop.body.81:                                     ; preds = %loop.header.81
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.81, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load4 = load ptr, ptr %var.state, align 8
  %fld.gep5 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load4, i32 0, i32 0
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  store ptr %fld.load6, ptr %var.idxs, align 8
  %var.load7 = load ptr, ptr %var.idxs, align 8
  %a.load = load ptr, ptr %var.idxs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

loop.exit.nat.81:                                 ; preds = %loop.header.81
  br label %loop.exit.81

loop.latch.81:                                    ; preds = %choice.exit32
  %step.val = load i64, ptr %loop.step.81, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.81, align 8
  br label %loop.header.81

loop.exit.81:                                     ; preds = %loop.exit.nat.81
  %var.load36 = load ptr, ptr %var.state, align 8
  %fld.gep37 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr %var.load36, i32 0, i32 6
  %fld.load38 = load ptr, ptr %fld.gep37, align 8
  ret ptr %fld.load38

a.create:                                         ; preds = %loop.body.81
  %arena.cur = call ptr @dva_arena_current()
  %a.create8 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur9 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create8, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create8, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create8, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create8, ptr %var.idxs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %loop.body.81
  %a.load2 = load ptr, ptr %var.idxs, align 8
  %var.load10 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.rd.len11 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load10, 0
  %a.rd.lt = icmp slt i64 %var.load10, %a.rd.len11
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.rd.data12 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data12, i64 %var.load10
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after
  %arena.cur13 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 337, ptr %err.line.gep, align 8
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
  %arena.cur14 = call ptr @dva_arena_current()
  %err.alloc15 = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 56)
  %err.code.gep16 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc15, i32 0, i32 0
  store i64 4011, ptr %err.code.gep16, align 8
  %err.msg.gep17 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc15, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep17, align 8
  %err.file.gep18 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc15, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep18, align 8
  %err.line.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc15, i32 0, i32 3
  store i64 337, ptr %err.line.gep19, align 8
  %err.col.gep20 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc15, i32 0, i32 4
  store i64 21, ptr %err.col.gep20, align 8
  %err.ctx.gep21 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc15, i32 0, i32 5
  %err.ctx0.gep22 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep21, i32 0, i32 0
  store i64 %var.load10, ptr %err.ctx0.gep22, align 8
  %err.ctx1.gep23 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep21, i32 0, i32 1
  store i64 %a.rd.len11, ptr %err.ctx1.gep23, align 8
  %err.p2i24 = ptrtoint ptr %err.alloc15 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i24, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag25 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag25, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %ram.pay26 = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %ram.pay26, ptr %var._27, align 8
  br label %choice.exit

choice.else:                                      ; preds = %a.rd.done
  %ram.pay28 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay28 to ptr
  store ptr %pay.ptr, ptr %var._29, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %ram.pay26, %choice.then ], [ -1, %choice.else ]
  store i64 %choice.res, ptr %var.idx, align 8
  %var.load30 = load i64, ptr %var.idx, align 8
  %cmptmp = icmp slt i64 %var.load30, 0
  br i1 %cmptmp, label %choice.then31, label %choice.exit32

choice.then31:                                    ; preds = %choice.exit
  %var.load33 = load ptr, ptr %var.graph, align 8
  %var.load34 = load ptr, ptr %var.state, align 8
  %var.load35 = load i64, ptr %var.i, align 8
  call void @"dep_graph::tarjan_dfs"(ptr %var.load33, ptr %var.load34, i64 %var.load35)
  br label %choice.exit32

choice.exit32:                                    ; preds = %choice.then31, %choice.exit
  br label %loop.latch.81
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
