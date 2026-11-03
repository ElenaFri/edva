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
@clo.const = internal constant { ptr, ptr } { ptr @"type_env::empty_scope", ptr null }
@"var.type_env::empty_scope" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"type_env::new_init", ptr null }
@"var.type_env::new_init" = global ptr null
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@str.0 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.0 }
@str.1 = internal unnamed_addr constant [5 x i8] c"none\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.1 }
@clo.const.2 = internal constant { ptr, ptr } { ptr @"type_env::new_env", ptr null }
@"var.type_env::new_env" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@clo.const.3 = internal constant { ptr, ptr } { ptr @"type_env::cache_fn_body", ptr null }
@"var.type_env::cache_fn_body" = global ptr null
@str.2 = internal unnamed_addr constant [14 x i8] c"key not found\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 13, ptr @str.2 }
@str.3 = internal unnamed_addr constant [13 x i8] c"type_env.dva\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 12, ptr @str.3 }
@dva_thread_rec = external thread_local global ptr
@clo.const.4 = internal constant { ptr, ptr } { ptr @"type_env::lookup_fn_body", ptr null }
@"var.type_env::lookup_fn_body" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"type_env::mark_generic_binding", ptr null }
@"var.type_env::mark_generic_binding" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"type_env::is_generic_binding", ptr null }
@"var.type_env::is_generic_binding" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"type_env::mark_global_var", ptr null }
@"var.type_env::mark_global_var" = global ptr null
@str.4 = internal unnamed_addr constant [3 x i8] c"::\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.4 }
@clo.const.8 = internal constant { ptr, ptr } { ptr @"type_env::is_marked_global", ptr null }
@"var.type_env::is_marked_global" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"type_env::enter_scope", ptr null }
@"var.type_env::enter_scope" = global ptr null
@str.5 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.5 }
@str.6 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.6 }
@clo.const.10 = internal constant { ptr, ptr } { ptr @"type_env::leave_scope", ptr null }
@"var.type_env::leave_scope" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"type_env::bind_local", ptr null }
@"var.type_env::bind_local" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"type_env::unbind_local", ptr null }
@"var.type_env::unbind_local" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"type_env::bind_global", ptr null }
@"var.type_env::bind_global" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.14 = internal constant { ptr, ptr } { ptr @"type_env::name_is_qualified", ptr null }
@"var.type_env::name_is_qualified" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"type_env::decl_module_find", ptr null }
@"var.type_env::decl_module_find" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"type_env::decl_module", ptr null }
@"var.type_env::decl_module" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"type_env::set_current_module", ptr null }
@"var.type_env::set_current_module" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"type_env::lookup_scope", ptr null }
@clo.const.19 = internal constant { ptr, ptr } { ptr @"type_env::lookup_local_exact", ptr null }
@"var.type_env::lookup_local_exact" = global ptr null
@"var.type_env::lookup_scope" = global ptr null
@str.7 = internal unnamed_addr constant [4 x i8] c"::#\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.7 }
@clo.const.20 = internal constant { ptr, ptr } { ptr @"type_env::lookup_local", ptr null }
@"var.type_env::lookup_local" = global ptr null
@clo.const.21 = internal constant { ptr, ptr } { ptr @"type_env::lookup_binding_exact", ptr null }
@"var.type_env::lookup_binding_exact" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"type_env::lookup_binding", ptr null }
@"var.type_env::lookup_binding" = global ptr null
@clo.const.23 = internal constant { ptr, ptr } { ptr @"type_env::find_last_dot", ptr null }
@"var.type_env::find_last_dot" = global ptr null
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.24 = internal constant { ptr, ptr } { ptr @"type_env::drop_last_dot", ptr null }
@"var.type_env::drop_last_dot" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"type_env::init_has_name", ptr null }
@"var.type_env::init_has_name" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"type_env::init_mark_tracked", ptr null }
@"var.type_env::init_mark_tracked" = global ptr null
@clo.const.27 = internal constant { ptr, ptr } { ptr @"type_env::init_is_tracked", ptr null }
@"var.type_env::init_is_tracked" = global ptr null
@clo.const.28 = internal constant { ptr, ptr } { ptr @"type_env::init_mark_whole", ptr null }
@"var.type_env::init_mark_whole" = global ptr null
@clo.const.29 = internal constant { ptr, ptr } { ptr @"type_env::init_is_whole", ptr null }
@"var.type_env::init_is_whole" = global ptr null
@clo.const.30 = internal constant { ptr, ptr } { ptr @"type_env::init_mark_written", ptr null }
@"var.type_env::init_mark_written" = global ptr null
@clo.const.31 = internal constant { ptr, ptr } { ptr @"type_env::init_is_ok_walk", ptr null }
@"var.type_env::init_is_ok_walk" = global ptr null
@str.8 = internal unnamed_addr constant [2 x i8] c".\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.8 }
@clo.const.32 = internal constant { ptr, ptr } { ptr @"type_env::init_has_subpath", ptr null }
@"var.type_env::init_has_subpath" = global ptr null
@clo.const.33 = internal constant { ptr, ptr } { ptr @"type_env::init_is_ok", ptr null }
@"var.type_env::init_is_ok" = global ptr null
@clo.const.34 = internal constant { ptr, ptr } { ptr @"type_env::init_snapshot", ptr null }
@"var.type_env::init_snapshot" = global ptr null
@clo.const.35 = internal constant { ptr, ptr } { ptr @"type_env::init_snapshot_of", ptr null }
@"var.type_env::init_snapshot_of" = global ptr null
@clo.const.36 = internal constant { ptr, ptr } { ptr @"type_env::init_restore", ptr null }
@"var.type_env::init_restore" = global ptr null
@clo.const.37 = internal constant { ptr, ptr } { ptr @"type_env::init_merge_two", ptr null }
@"var.type_env::init_merge_two" = global ptr null
@clo.const.38 = internal constant { ptr, ptr } { ptr @"type_env::init_is_fully_init", ptr null }
@"var.type_env::init_is_fully_init" = global ptr null
@clo.const.39 = internal constant { ptr, ptr } { ptr @"type_env::bind_generic", ptr null }
@"var.type_env::bind_generic" = global ptr null
@clo.const.40 = internal constant { ptr, ptr } { ptr @"type_env::lookup_generic_exact", ptr null }
@"var.type_env::lookup_generic_exact" = global ptr null
@clo.const.41 = internal constant { ptr, ptr } { ptr @"type_env::lookup_generic", ptr null }
@"var.type_env::lookup_generic" = global ptr null
@clo.const.42 = internal constant { ptr, ptr } { ptr @"type_env::bind_user_type", ptr null }
@"var.type_env::bind_user_type" = global ptr null
@clo.const.43 = internal constant { ptr, ptr } { ptr @"type_env::lookup_user_type_exact", ptr null }
@"var.type_env::lookup_user_type_exact" = global ptr null
@clo.const.44 = internal constant { ptr, ptr } { ptr @"type_env::lookup_user_type", ptr null }
@"var.type_env::lookup_user_type" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_type_env, ptr null }]

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

define internal void @__dva_global_init_type_env() #1 {
entry:
  store ptr @clo.const, ptr @"var.type_env::empty_scope", align 8
  store ptr @clo.const.1, ptr @"var.type_env::new_init", align 8
  store ptr @clo.const.2, ptr @"var.type_env::new_env", align 8
  store ptr @clo.const.3, ptr @"var.type_env::cache_fn_body", align 8
  store ptr @clo.const.4, ptr @"var.type_env::lookup_fn_body", align 8
  store ptr @clo.const.5, ptr @"var.type_env::mark_generic_binding", align 8
  store ptr @clo.const.6, ptr @"var.type_env::is_generic_binding", align 8
  store ptr @clo.const.7, ptr @"var.type_env::mark_global_var", align 8
  store ptr @clo.const.8, ptr @"var.type_env::is_marked_global", align 8
  store ptr @clo.const.9, ptr @"var.type_env::enter_scope", align 8
  store ptr @clo.const.10, ptr @"var.type_env::leave_scope", align 8
  store ptr @clo.const.11, ptr @"var.type_env::bind_local", align 8
  store ptr @clo.const.12, ptr @"var.type_env::unbind_local", align 8
  store ptr @clo.const.13, ptr @"var.type_env::bind_global", align 8
  store ptr @clo.const.14, ptr @"var.type_env::name_is_qualified", align 8
  store ptr @clo.const.15, ptr @"var.type_env::decl_module_find", align 8
  store ptr @clo.const.16, ptr @"var.type_env::decl_module", align 8
  store ptr @clo.const.17, ptr @"var.type_env::set_current_module", align 8
  store ptr @clo.const.19, ptr @"var.type_env::lookup_local_exact", align 8
  store ptr @clo.const.18, ptr @"var.type_env::lookup_scope", align 8
  store ptr @clo.const.20, ptr @"var.type_env::lookup_local", align 8
  store ptr @clo.const.21, ptr @"var.type_env::lookup_binding_exact", align 8
  store ptr @clo.const.22, ptr @"var.type_env::lookup_binding", align 8
  store ptr @clo.const.23, ptr @"var.type_env::find_last_dot", align 8
  store ptr @clo.const.24, ptr @"var.type_env::drop_last_dot", align 8
  store ptr @clo.const.25, ptr @"var.type_env::init_has_name", align 8
  store ptr @clo.const.26, ptr @"var.type_env::init_mark_tracked", align 8
  store ptr @clo.const.27, ptr @"var.type_env::init_is_tracked", align 8
  store ptr @clo.const.28, ptr @"var.type_env::init_mark_whole", align 8
  store ptr @clo.const.29, ptr @"var.type_env::init_is_whole", align 8
  store ptr @clo.const.30, ptr @"var.type_env::init_mark_written", align 8
  store ptr @clo.const.31, ptr @"var.type_env::init_is_ok_walk", align 8
  store ptr @clo.const.32, ptr @"var.type_env::init_has_subpath", align 8
  store ptr @clo.const.33, ptr @"var.type_env::init_is_ok", align 8
  store ptr @clo.const.34, ptr @"var.type_env::init_snapshot", align 8
  store ptr @clo.const.35, ptr @"var.type_env::init_snapshot_of", align 8
  store ptr @clo.const.36, ptr @"var.type_env::init_restore", align 8
  store ptr @clo.const.37, ptr @"var.type_env::init_merge_two", align 8
  store ptr @clo.const.38, ptr @"var.type_env::init_is_fully_init", align 8
  store ptr @clo.const.39, ptr @"var.type_env::bind_generic", align 8
  store ptr @clo.const.40, ptr @"var.type_env::lookup_generic_exact", align 8
  store ptr @clo.const.41, ptr @"var.type_env::lookup_generic", align 8
  store ptr @clo.const.42, ptr @"var.type_env::bind_user_type", align 8
  store ptr @clo.const.43, ptr @"var.type_env::lookup_user_type_exact", align 8
  store ptr @clo.const.44, ptr @"var.type_env::lookup_user_type", align 8
  ret void
}

define ptr @"type_env::empty_scope"() #1 {
entry:
  %var.b = alloca ptr, align 8
  store ptr null, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %a.load = load ptr, ptr %var.b, align 8
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
  store ptr %a.create1, ptr %var.b, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.b, align 8
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
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load2, ptr %rec.fld, align 8
  %rec.fld8 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 -1, ptr %rec.fld8, align 8
  %rec.fld9 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %m.new, ptr %rec.fld9, align 8
  ret ptr %rec.alloc
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

define ptr @"type_env::new_init"() #1 {
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
  %arena.cur2 = call ptr @dva_arena_current()
  %a.new3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
  %a.buf5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep6 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new3, i32 0, i32 0
  store i64 0, ptr %a.len.gep6, align 8
  %a.data.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new3, i32 0, i32 1
  store ptr %a.buf5, ptr %a.data.gep7, align 8
  %a.cap.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep8, align 8
  %arena.cur9 = call ptr @dva_arena_current()
  %a.new10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 24)
  %arena.cur11 = call ptr @dva_arena_current()
  %a.buf12 = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 128)
  %a.len.gep13 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new10, i32 0, i32 0
  store i64 0, ptr %a.len.gep13, align 8
  %a.data.gep14 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new10, i32 0, i32 1
  store ptr %a.buf12, ptr %a.data.gep14, align 8
  %a.cap.gep15 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new10, i32 0, i32 2
  store i64 16, ptr %a.cap.gep15, align 8
  %arena.cur16 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.new, ptr %rec.fld, align 8
  %rec.fld17 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %a.new3, ptr %rec.fld17, align 8
  %rec.fld18 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.new10, ptr %rec.fld18, align 8
  ret ptr %rec.alloc
}

define ptr @"type_env::new_env"() #1 {
entry:
  %var.user_types = alloca ptr, align 8
  %var.generics = alloca ptr, align 8
  %var.globals = alloca ptr, align 8
  %var.scopes = alloca ptr, align 8
  %var.root_scope = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  store ptr null, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %a.load = load ptr, ptr %var.b, align 8
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
  store ptr %a.create1, ptr %var.b, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.b, align 8
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
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load2, ptr %rec.fld, align 8
  %rec.fld8 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 -1, ptr %rec.fld8, align 8
  %rec.fld9 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %m.new, ptr %rec.fld9, align 8
  store ptr %rec.alloc, ptr %var.root_scope, align 8
  store ptr null, ptr %var.scopes, align 8
  %var.load10 = load ptr, ptr %var.root_scope, align 8
  %a.load11 = load ptr, ptr %var.scopes, align 8
  %a.null12 = icmp eq ptr %a.load11, null
  br i1 %a.null12, label %a.create13, label %a.after14

a.create13:                                       ; preds = %a.after
  %arena.cur15 = call ptr @dva_arena_current()
  %a.create16 = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 24)
  %arena.cur17 = call ptr @dva_arena_current()
  %a.buf18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 128)
  %a.len.gep19 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create16, i32 0, i32 0
  store i64 0, ptr %a.len.gep19, align 8
  %a.data.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create16, i32 0, i32 1
  store ptr %a.buf18, ptr %a.data.gep20, align 8
  %a.cap.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create16, i32 0, i32 2
  store i64 16, ptr %a.cap.gep21, align 8
  store ptr %a.create16, ptr %var.scopes, align 8
  br label %a.after14

a.after14:                                        ; preds = %a.create13, %a.after
  %a.load222 = load ptr, ptr %var.scopes, align 8
  br label %a.check

a.check:                                          ; preds = %a.after14
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load222, i32 0, i32 0
  %a.len23 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load222, i32 0, i32 2
  %a.cap24 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len23, %a.cap24
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load222)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load222, i32 0, i32 1
  %a.cur.data25 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load222, i32 0, i32 0
  %a.cur.len26 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data25, i64 %a.cur.len26
  %slot.p2i = ptrtoint ptr %var.load10 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len26, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load222, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  store ptr null, ptr %var.globals, align 8
  store ptr null, ptr %var.generics, align 8
  store ptr null, ptr %var.user_types, align 8
  %var.load27 = load ptr, ptr %var.scopes, align 8
  %a.load28 = load ptr, ptr %var.scopes, align 8
  %a.null29 = icmp eq ptr %a.load28, null
  br i1 %a.null29, label %a.create30, label %a.after31

a.create30:                                       ; preds = %a.store
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
  store ptr %a.create33, ptr %var.scopes, align 8
  br label %a.after31

a.after31:                                        ; preds = %a.create30, %a.store
  %a.load239 = load ptr, ptr %var.scopes, align 8
  %var.load40 = load ptr, ptr %var.globals, align 8
  %a.load41 = load ptr, ptr %var.globals, align 8
  %a.null42 = icmp eq ptr %a.load41, null
  br i1 %a.null42, label %a.create43, label %a.after44

a.create43:                                       ; preds = %a.after31
  %arena.cur45 = call ptr @dva_arena_current()
  %a.create46 = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 24)
  %arena.cur47 = call ptr @dva_arena_current()
  %a.buf48 = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 128)
  %a.len.gep49 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create46, i32 0, i32 0
  store i64 0, ptr %a.len.gep49, align 8
  %a.data.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create46, i32 0, i32 1
  store ptr %a.buf48, ptr %a.data.gep50, align 8
  %a.cap.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create46, i32 0, i32 2
  store i64 16, ptr %a.cap.gep51, align 8
  store ptr %a.create46, ptr %var.globals, align 8
  br label %a.after44

a.after44:                                        ; preds = %a.create43, %a.after31
  %a.load252 = load ptr, ptr %var.globals, align 8
  %call.res = call ptr @"type_env::new_init"()
  %var.load53 = load ptr, ptr %var.generics, align 8
  %a.load54 = load ptr, ptr %var.generics, align 8
  %a.null55 = icmp eq ptr %a.load54, null
  br i1 %a.null55, label %a.create56, label %a.after57

a.create56:                                       ; preds = %a.after44
  %arena.cur58 = call ptr @dva_arena_current()
  %a.create59 = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 24)
  %arena.cur60 = call ptr @dva_arena_current()
  %a.buf61 = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 128)
  %a.len.gep62 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create59, i32 0, i32 0
  store i64 0, ptr %a.len.gep62, align 8
  %a.data.gep63 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create59, i32 0, i32 1
  store ptr %a.buf61, ptr %a.data.gep63, align 8
  %a.cap.gep64 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create59, i32 0, i32 2
  store i64 16, ptr %a.cap.gep64, align 8
  store ptr %a.create59, ptr %var.generics, align 8
  br label %a.after57

a.after57:                                        ; preds = %a.create56, %a.after44
  %a.load265 = load ptr, ptr %var.generics, align 8
  %var.load66 = load ptr, ptr %var.user_types, align 8
  %a.load67 = load ptr, ptr %var.user_types, align 8
  %a.null68 = icmp eq ptr %a.load67, null
  br i1 %a.null68, label %a.create69, label %a.after70

a.create69:                                       ; preds = %a.after57
  %arena.cur71 = call ptr @dva_arena_current()
  %a.create72 = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 24)
  %arena.cur73 = call ptr @dva_arena_current()
  %a.buf74 = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 128)
  %a.len.gep75 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create72, i32 0, i32 0
  store i64 0, ptr %a.len.gep75, align 8
  %a.data.gep76 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create72, i32 0, i32 1
  store ptr %a.buf74, ptr %a.data.gep76, align 8
  %a.cap.gep77 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create72, i32 0, i32 2
  store i64 16, ptr %a.cap.gep77, align 8
  store ptr %a.create72, ptr %var.user_types, align 8
  br label %a.after70

a.after70:                                        ; preds = %a.create69, %a.after57
  %a.load278 = load ptr, ptr %var.user_types, align 8
  %arena.cur79 = call ptr @dva_arena_current()
  %m.new80 = call ptr @dva_arena_alloc(ptr %arena.cur79, i64 48)
  %arena.cur81 = call ptr @dva_arena_current()
  %m.keys82 = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 64)
  %arena.cur83 = call ptr @dva_arena_current()
  %m.vals84 = call ptr @dva_arena_alloc(ptr %arena.cur83, i64 64)
  %arena.cur85 = call ptr @dva_arena_current()
  %m.states86 = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 8)
  call void @llvm.memset.p0.i64(ptr align 1 %m.states86, i8 0, i64 8, i1 false)
  %m.count.gep87 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new80, i32 0, i32 0
  store i64 0, ptr %m.count.gep87, align 8
  %m.cap.gep88 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new80, i32 0, i32 1
  store i64 8, ptr %m.cap.gep88, align 8
  %m.keys.gep89 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new80, i32 0, i32 2
  store ptr %m.keys82, ptr %m.keys.gep89, align 8
  %m.vals.gep90 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new80, i32 0, i32 3
  store ptr %m.vals84, ptr %m.vals.gep90, align 8
  %m.states.gep91 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new80, i32 0, i32 4
  store ptr %m.states86, ptr %m.states.gep91, align 8
  %m.tombs.gep92 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new80, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep92, align 8
  %arena.cur93 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 24)
  %arena.cur94 = call ptr @dva_arena_current()
  %a.buf95 = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 128)
  %a.len.gep96 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep96, align 8
  %a.data.gep97 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf95, ptr %a.data.gep97, align 8
  %a.cap.gep98 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep98, align 8
  %arena.cur99 = call ptr @dva_arena_current()
  %a.new100 = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 24)
  %arena.cur101 = call ptr @dva_arena_current()
  %a.buf102 = call ptr @dva_arena_alloc(ptr %arena.cur101, i64 128)
  %a.len.gep103 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new100, i32 0, i32 0
  store i64 0, ptr %a.len.gep103, align 8
  %a.data.gep104 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new100, i32 0, i32 1
  store ptr %a.buf102, ptr %a.data.gep104, align 8
  %a.cap.gep105 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new100, i32 0, i32 2
  store i64 16, ptr %a.cap.gep105, align 8
  %arena.cur106 = call ptr @dva_arena_current()
  %rec.alloc107 = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr null, i32 1) to i64))
  %rec.fld108 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 0
  store ptr %a.load239, ptr %rec.fld108, align 8
  %rec.fld109 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 1
  store i64 0, ptr %rec.fld109, align 8
  %rec.fld110 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 2
  store i64 0, ptr %rec.fld110, align 8
  %rec.fld111 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 3
  store ptr %a.load252, ptr %rec.fld111, align 8
  %rec.fld112 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld112, ptr align 1 %call.res, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld113 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 5
  store ptr %a.load265, ptr %rec.fld113, align 8
  %rec.fld114 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 6
  store ptr %a.load278, ptr %rec.fld114, align 8
  %rec.fld115 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 7
  store ptr %m.new80, ptr %rec.fld115, align 8
  %rec.fld116 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 8
  store ptr @str.0.struct, ptr %rec.fld116, align 8
  %rec.fld117 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 9
  store i1 false, ptr %rec.fld117, align 1
  %rec.fld118 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 10
  store i1 false, ptr %rec.fld118, align 1
  %rec.fld119 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 11
  store i1 false, ptr %rec.fld119, align 1
  %rec.fld120 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 12
  store i1 false, ptr %rec.fld120, align 1
  %rec.fld121 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 13
  store ptr %a.new, ptr %rec.fld121, align 8
  %rec.fld122 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 14
  store ptr %a.new100, ptr %rec.fld122, align 8
  %rec.fld123 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 15
  store { i1, i64 } zeroinitializer, ptr %rec.fld123, align 8
  %rec.fld124 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %rec.alloc107, i32 0, i32 16
  store ptr @str.1.struct, ptr %rec.fld124, align 8
  ret ptr %rec.alloc107
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

declare i64 @write(i32, ptr, i64)

declare void @exit(i32)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

define void @"type_env::cache_fn_body"(ptr %0, ptr %1, ptr %2) #1 {
entry:
  %var.bodies = alloca ptr, align 8
  %var.body = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  store ptr %2, ptr %var.body, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 7
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.bodies, align 8
  %var.load1 = load ptr, ptr %var.bodies, align 8
  %var.load2 = load ptr, ptr %var.name, align 8
  %var.load3 = load ptr, ptr %var.body, align 8
  %slot.p2i = ptrtoint ptr %var.load3 to i64
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %m.cap4 = load i64, ptr %m.cap, align 8
  %m.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 2
  %m.keys5 = load ptr, ptr %m.keys, align 8
  %m.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 3
  %m.vals6 = load ptr, ptr %m.vals, align 8
  %m.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 4
  %m.states7 = load ptr, ptr %m.states, align 8
  %mk.data = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.data8 = load ptr, ptr %mk.data, align 8
  %mk.len = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.len9 = load i64, ptr %mk.len, align 8
  %mk.len10 = and i64 %mk.len9, 281474976710655
  %str.tag = lshr i64 %mk.len9, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %hash.str = call i64 @dva_hash_string(ptr %mk.data8, i64 %mk.len10)
  %m.capm1 = sub i64 %m.cap4, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.loop

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

m.loop:                                           ; preds = %m.next, %str_ok
  %m.idx = phi i64 [ %m.idx0, %str_ok ], [ %m.idx.next, %m.next ]
  %m.tomb11 = phi i64 [ -1, %str_ok ], [ %m.next.tomb, %m.next ]
  %m.probe = phi i64 [ 0, %str_ok ], [ %m.probe.next, %m.next ]
  %m.reached.cap = icmp eq i64 %m.probe, %m.cap4
  %m.state.gep = getelementptr i8, ptr %m.states7, i64 %m.idx
  %m.state = load i8, ptr %m.state.gep, align 1
  %m.is.empty = icmp eq i8 %m.state, 0
  %m.stop = or i1 %m.is.empty, %m.reached.cap
  br i1 %m.stop, label %m.empty, label %m.check.tomb

m.check.tomb:                                     ; preds = %m.loop
  %m.is.tomb = icmp eq i8 %m.state, 2
  br i1 %m.is.tomb, label %m.tomb, label %m.found

m.tomb:                                           ; preds = %m.check.tomb
  %m.has.tomb = icmp ne i64 %m.tomb11, -1
  %m.tomb.sel = select i1 %m.has.tomb, i64 %m.tomb11, i64 %m.idx
  br label %m.next

m.found:                                          ; preds = %m.check.tomb
  %m.key.slot = getelementptr ptr, ptr %m.keys5, i64 %m.idx
  %mk.stored = load ptr, ptr %m.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen12 = load i64, ptr %mk.slen, align 8
  %mk.slen13 = and i64 %mk.slen12, 281474976710655
  %str.tag14 = lshr i64 %mk.slen12, 48
  %str.immortal15 = icmp eq i64 %str.tag14, 0
  br i1 %str.immortal15, label %str_ok17, label %str_gen_check16

m.overwrite:                                      ; preds = %mk.eq.merge
  %m.val.slot = getelementptr i64, ptr %m.vals6, i64 %m.idx
  store i64 %slot.p2i, ptr %m.val.slot, align 8
  br label %m.done

m.next:                                           ; preds = %mk.eq.merge, %m.tomb
  %m.next.tomb = phi i64 [ %m.tomb.sel, %m.tomb ], [ %m.tomb11, %mk.eq.merge ]
  %m.idx.add = add i64 %m.idx, 1
  %m.idx.next = and i64 %m.idx.add, %m.capm1
  %m.probe.next = add i64 %m.probe, 1
  br label %m.loop

m.empty:                                          ; preds = %m.loop
  %m.grow.cnt.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %m.grow.cnt = load i64, ptr %m.grow.cnt.p, align 8
  %m.grow.tm.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 5
  %m.grow.tm = load i64, ptr %m.grow.tm.p, align 8
  %m.occupied = add i64 %m.grow.cnt, %m.grow.tm
  %m.c.plus = add i64 %m.occupied, 1
  %m.c.lhs = mul i64 %m.c.plus, 4
  %m.c.rhs = mul i64 %m.cap4, 3
  %m.need.grow = icmp sgt i64 %m.c.lhs, %m.c.rhs
  br i1 %m.need.grow, label %m.grow, label %m.ins.slot

m.done:                                           ; preds = %m.ins.slot, %m.done154, %m.overwrite
  ret void

str_gen_check16:                                  ; preds = %m.found
  %arena.cur19 = call ptr @dva_arena_current()
  %tag.valid20 = call i1 @dva_arena_validate_tag(ptr %arena.cur19, i64 %str.tag14)
  br i1 %tag.valid20, label %str_ok17, label %str_stale18

str_ok17:                                         ; preds = %str_stale18, %str_gen_check16, %m.found
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.nlen21 = load i64, ptr %mk.nlen, align 8
  %mk.nlen22 = and i64 %mk.nlen21, 281474976710655
  %str.tag23 = lshr i64 %mk.nlen21, 48
  %str.immortal24 = icmp eq i64 %str.tag23, 0
  br i1 %str.immortal24, label %str_ok26, label %str_gen_check25

str_stale18:                                      ; preds = %str_gen_check16
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok17

str_gen_check25:                                  ; preds = %str_ok17
  %arena.cur28 = call ptr @dva_arena_current()
  %tag.valid29 = call i1 @dva_arena_validate_tag(ptr %arena.cur28, i64 %str.tag23)
  br i1 %tag.valid29, label %str_ok26, label %str_stale27

str_ok26:                                         ; preds = %str_stale27, %str_gen_check25, %str_ok17
  %mk.lenseq = icmp eq i64 %mk.slen13, %mk.nlen22
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

str_stale27:                                      ; preds = %str_gen_check25
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok26

mk.eq.then:                                       ; preds = %str_ok26
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata30 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.ndata31 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata30, ptr %mk.ndata31, i64 %mk.nlen22)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %str_ok26
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.overwrite, label %m.next

m.grow:                                           ; preds = %m.empty
  %m.old.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %m.old.cap32 = load i64, ptr %m.old.cap, align 8
  %m.old.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 2
  %m.old.keys33 = load ptr, ptr %m.old.keys, align 8
  %m.old.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 3
  %m.old.vals34 = load ptr, ptr %m.old.vals, align 8
  %m.old.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 4
  %m.old.states35 = load ptr, ptr %m.old.states, align 8
  %m.double.cap = mul i64 %m.old.cap32, 2
  %m.live.cnt = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %m.live.cnt36 = load i64, ptr %m.live.cnt, align 8
  %m.live.x2 = mul i64 %m.live.cnt36, 2
  %m.should.double = icmp sgt i64 %m.live.x2, %m.old.cap32
  %m.new.cap = select i1 %m.should.double, i64 %m.double.cap, i64 %m.old.cap32
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur37 = call ptr @dva_arena_current()
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 %m.gk.bytes)
  %m.gv.bytes = mul i64 %m.new.cap, 8
  %arena.cur38 = call ptr @dva_arena_current()
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 %m.gv.bytes)
  %arena.cur39 = call ptr @dva_arena_current()
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 %m.new.cap)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs, i8 0, i64 %m.new.cap, i1 false)
  %m.cap.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 1
  store i64 %m.new.cap, ptr %m.cap.gep, align 8
  %m.keys.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 2
  store ptr %m.gk, ptr %m.keys.gep, align 8
  %m.vals.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 3
  store ptr %m.gv, ptr %m.vals.gep, align 8
  %m.states.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 4
  store ptr %m.gs, ptr %m.states.gep, align 8
  %m.count.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  store i64 0, ptr %m.count.gep, align 8
  %m.tombs.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep, align 8
  br label %m.re.loop

m.ins.slot:                                       ; preds = %m.empty
  %m.use.tomb217 = icmp ne i64 %m.tomb11, -1
  %m.ins.idx218 = select i1 %m.use.tomb217, i64 %m.tomb11, i64 %m.idx
  %m.key.slot219 = getelementptr ptr, ptr %m.keys5, i64 %m.ins.idx218
  store ptr %var.load2, ptr %m.key.slot219, align 8
  %m.val.slot220 = getelementptr i64, ptr %m.vals6, i64 %m.ins.idx218
  store i64 %slot.p2i, ptr %m.val.slot220, align 8
  %m.ins.state.slot221 = getelementptr i8, ptr %m.states7, i64 %m.ins.idx218
  store i8 1, ptr %m.ins.state.slot221, align 1
  %m.count222 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %m.count223 = load i64, ptr %m.count222, align 8
  %m.count.next224 = add i64 %m.count223, 1
  %m.count.gep225 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  store i64 %m.count.next224, ptr %m.count.gep225, align 8
  %m.ins.tombs.p226 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 5
  %m.ins.tombs227 = load i64, ptr %m.ins.tombs.p226, align 8
  %m.tomb.dec228 = select i1 %m.use.tomb217, i64 1, i64 0
  %m.ins.tombs.next229 = sub i64 %m.ins.tombs227, %m.tomb.dec228
  store i64 %m.ins.tombs.next229, ptr %m.ins.tombs.p226, align 8
  br label %m.done

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap32
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states35, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.done70, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  %m.cap124 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %m.cap125 = load i64, ptr %m.cap124, align 8
  %m.keys126 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 2
  %m.keys127 = load ptr, ptr %m.keys126, align 8
  %m.vals128 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 3
  %m.vals129 = load ptr, ptr %m.vals128, align 8
  %m.states130 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 4
  %m.states131 = load ptr, ptr %m.states130, align 8
  %mk.data132 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.data133 = load ptr, ptr %mk.data132, align 8
  %mk.len134 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.len135 = load i64, ptr %mk.len134, align 8
  %mk.len136 = and i64 %mk.len135, 281474976710655
  %str.tag137 = lshr i64 %mk.len135, 48
  %str.immortal138 = icmp eq i64 %str.tag137, 0
  br i1 %str.immortal138, label %str_ok140, label %str_gen_check139

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr ptr, ptr %m.old.keys33, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals34, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap40 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %m.cap41 = load i64, ptr %m.cap40, align 8
  %m.keys42 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 2
  %m.keys43 = load ptr, ptr %m.keys42, align 8
  %m.vals44 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 3
  %m.vals45 = load ptr, ptr %m.vals44, align 8
  %m.states46 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 4
  %m.states47 = load ptr, ptr %m.states46, align 8
  %mk.data48 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data49 = load ptr, ptr %mk.data48, align 8
  %mk.len50 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.len51 = load i64, ptr %mk.len50, align 8
  %mk.len52 = and i64 %mk.len51, 281474976710655
  %str.tag53 = lshr i64 %mk.len51, 48
  %str.immortal54 = icmp eq i64 %str.tag53, 0
  br i1 %str.immortal54, label %str_ok56, label %str_gen_check55

str_gen_check55:                                  ; preds = %m.re.ins
  %arena.cur58 = call ptr @dva_arena_current()
  %tag.valid59 = call i1 @dva_arena_validate_tag(ptr %arena.cur58, i64 %str.tag53)
  br i1 %tag.valid59, label %str_ok56, label %str_stale57

str_ok56:                                         ; preds = %str_stale57, %str_gen_check55, %m.re.ins
  %hash.str60 = call i64 @dva_hash_string(ptr %mk.data49, i64 %mk.len52)
  %m.capm161 = sub i64 %m.cap41, 1
  %m.idx062 = and i64 %hash.str60, %m.capm161
  br label %m.loop63

str_stale57:                                      ; preds = %str_gen_check55
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok56

m.loop63:                                         ; preds = %m.next68, %str_ok56
  %m.idx71 = phi i64 [ %m.idx062, %str_ok56 ], [ %m.idx.next118, %m.next68 ]
  %m.tomb72 = phi i64 [ -1, %str_ok56 ], [ %m.next.tomb116, %m.next68 ]
  %m.probe73 = phi i64 [ 0, %str_ok56 ], [ %m.probe.next119, %m.next68 ]
  %m.reached.cap74 = icmp eq i64 %m.probe73, %m.cap41
  %m.state.gep75 = getelementptr i8, ptr %m.states47, i64 %m.idx71
  %m.state76 = load i8, ptr %m.state.gep75, align 1
  %m.is.empty77 = icmp eq i8 %m.state76, 0
  %m.stop78 = or i1 %m.is.empty77, %m.reached.cap74
  br i1 %m.stop78, label %m.empty69, label %m.check.tomb64

m.check.tomb64:                                   ; preds = %m.loop63
  %m.is.tomb79 = icmp eq i8 %m.state76, 2
  br i1 %m.is.tomb79, label %m.tomb65, label %m.found66

m.tomb65:                                         ; preds = %m.check.tomb64
  %m.has.tomb80 = icmp ne i64 %m.tomb72, -1
  %m.tomb.sel81 = select i1 %m.has.tomb80, i64 %m.tomb72, i64 %m.idx71
  br label %m.next68

m.found66:                                        ; preds = %m.check.tomb64
  %m.key.slot82 = getelementptr ptr, ptr %m.keys43, i64 %m.idx71
  %mk.stored83 = load ptr, ptr %m.key.slot82, align 8
  %mk.slen84 = getelementptr inbounds { i64, ptr }, ptr %mk.stored83, i32 0, i32 0
  %mk.slen85 = load i64, ptr %mk.slen84, align 8
  %mk.slen86 = and i64 %mk.slen85, 281474976710655
  %str.tag87 = lshr i64 %mk.slen85, 48
  %str.immortal88 = icmp eq i64 %str.tag87, 0
  br i1 %str.immortal88, label %str_ok90, label %str_gen_check89

m.overwrite67:                                    ; preds = %mk.eq.merge107
  %m.val.slot115 = getelementptr i64, ptr %m.vals45, i64 %m.idx71
  store i64 %m.re.val, ptr %m.val.slot115, align 8
  br label %m.done70

m.next68:                                         ; preds = %mk.eq.merge107, %m.tomb65
  %m.next.tomb116 = phi i64 [ %m.tomb.sel81, %m.tomb65 ], [ %m.tomb72, %mk.eq.merge107 ]
  %m.idx.add117 = add i64 %m.idx71, 1
  %m.idx.next118 = and i64 %m.idx.add117, %m.capm161
  %m.probe.next119 = add i64 %m.probe73, 1
  br label %m.loop63

m.empty69:                                        ; preds = %m.loop63
  %m.use.tomb = icmp ne i64 %m.tomb72, -1
  %m.ins.idx = select i1 %m.use.tomb, i64 %m.tomb72, i64 %m.idx71
  %m.key.slot120 = getelementptr ptr, ptr %m.keys43, i64 %m.ins.idx
  store ptr %m.re.key, ptr %m.key.slot120, align 8
  %m.val.slot121 = getelementptr i64, ptr %m.vals45, i64 %m.ins.idx
  store i64 %m.re.val, ptr %m.val.slot121, align 8
  %m.ins.state.slot = getelementptr i8, ptr %m.states47, i64 %m.ins.idx
  store i8 1, ptr %m.ins.state.slot, align 1
  %m.count = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %m.count122 = load i64, ptr %m.count, align 8
  %m.count.next = add i64 %m.count122, 1
  %m.count.gep123 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  store i64 %m.count.next, ptr %m.count.gep123, align 8
  %m.ins.tombs.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 5
  %m.ins.tombs = load i64, ptr %m.ins.tombs.p, align 8
  %m.tomb.dec = select i1 %m.use.tomb, i64 1, i64 0
  %m.ins.tombs.next = sub i64 %m.ins.tombs, %m.tomb.dec
  store i64 %m.ins.tombs.next, ptr %m.ins.tombs.p, align 8
  br label %m.done70

m.done70:                                         ; preds = %m.empty69, %m.overwrite67
  br label %m.re.cont

str_gen_check89:                                  ; preds = %m.found66
  %arena.cur92 = call ptr @dva_arena_current()
  %tag.valid93 = call i1 @dva_arena_validate_tag(ptr %arena.cur92, i64 %str.tag87)
  br i1 %tag.valid93, label %str_ok90, label %str_stale91

str_ok90:                                         ; preds = %str_stale91, %str_gen_check89, %m.found66
  %mk.nlen94 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.nlen95 = load i64, ptr %mk.nlen94, align 8
  %mk.nlen96 = and i64 %mk.nlen95, 281474976710655
  %str.tag97 = lshr i64 %mk.nlen95, 48
  %str.immortal98 = icmp eq i64 %str.tag97, 0
  br i1 %str.immortal98, label %str_ok100, label %str_gen_check99

str_stale91:                                      ; preds = %str_gen_check89
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok90

str_gen_check99:                                  ; preds = %str_ok90
  %arena.cur102 = call ptr @dva_arena_current()
  %tag.valid103 = call i1 @dva_arena_validate_tag(ptr %arena.cur102, i64 %str.tag97)
  br i1 %tag.valid103, label %str_ok100, label %str_stale101

str_ok100:                                        ; preds = %str_stale101, %str_gen_check99, %str_ok90
  %mk.lenseq104 = icmp eq i64 %mk.slen86, %mk.nlen96
  br i1 %mk.lenseq104, label %mk.eq.then105, label %mk.eq.else106

str_stale101:                                     ; preds = %str_gen_check99
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok100

mk.eq.then105:                                    ; preds = %str_ok100
  %mk.sdata108 = getelementptr inbounds { i64, ptr }, ptr %mk.stored83, i32 0, i32 1
  %mk.sdata109 = load ptr, ptr %mk.sdata108, align 8
  %mk.ndata110 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.ndata111 = load ptr, ptr %mk.ndata110, align 8
  %mk.memcmp112 = call i32 @memcmp(ptr %mk.sdata109, ptr %mk.ndata111, i64 %mk.nlen96)
  %mk.cmpeq113 = icmp eq i32 %mk.memcmp112, 0
  br label %mk.eq.merge107

mk.eq.else106:                                    ; preds = %str_ok100
  br label %mk.eq.merge107

mk.eq.merge107:                                   ; preds = %mk.eq.else106, %mk.eq.then105
  %mk.eq114 = phi i1 [ %mk.cmpeq113, %mk.eq.then105 ], [ false, %mk.eq.else106 ]
  br i1 %mk.eq114, label %m.overwrite67, label %m.next68

str_gen_check139:                                 ; preds = %m.re.done
  %arena.cur142 = call ptr @dva_arena_current()
  %tag.valid143 = call i1 @dva_arena_validate_tag(ptr %arena.cur142, i64 %str.tag137)
  br i1 %tag.valid143, label %str_ok140, label %str_stale141

str_ok140:                                        ; preds = %str_stale141, %str_gen_check139, %m.re.done
  %hash.str144 = call i64 @dva_hash_string(ptr %mk.data133, i64 %mk.len136)
  %m.capm1145 = sub i64 %m.cap125, 1
  %m.idx0146 = and i64 %hash.str144, %m.capm1145
  br label %m.loop147

str_stale141:                                     ; preds = %str_gen_check139
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok140

m.loop147:                                        ; preds = %m.next152, %str_ok140
  %m.idx155 = phi i64 [ %m.idx0146, %str_ok140 ], [ %m.idx.next202, %m.next152 ]
  %m.tomb156 = phi i64 [ -1, %str_ok140 ], [ %m.next.tomb200, %m.next152 ]
  %m.probe157 = phi i64 [ 0, %str_ok140 ], [ %m.probe.next203, %m.next152 ]
  %m.reached.cap158 = icmp eq i64 %m.probe157, %m.cap125
  %m.state.gep159 = getelementptr i8, ptr %m.states131, i64 %m.idx155
  %m.state160 = load i8, ptr %m.state.gep159, align 1
  %m.is.empty161 = icmp eq i8 %m.state160, 0
  %m.stop162 = or i1 %m.is.empty161, %m.reached.cap158
  br i1 %m.stop162, label %m.empty153, label %m.check.tomb148

m.check.tomb148:                                  ; preds = %m.loop147
  %m.is.tomb163 = icmp eq i8 %m.state160, 2
  br i1 %m.is.tomb163, label %m.tomb149, label %m.found150

m.tomb149:                                        ; preds = %m.check.tomb148
  %m.has.tomb164 = icmp ne i64 %m.tomb156, -1
  %m.tomb.sel165 = select i1 %m.has.tomb164, i64 %m.tomb156, i64 %m.idx155
  br label %m.next152

m.found150:                                       ; preds = %m.check.tomb148
  %m.key.slot166 = getelementptr ptr, ptr %m.keys127, i64 %m.idx155
  %mk.stored167 = load ptr, ptr %m.key.slot166, align 8
  %mk.slen168 = getelementptr inbounds { i64, ptr }, ptr %mk.stored167, i32 0, i32 0
  %mk.slen169 = load i64, ptr %mk.slen168, align 8
  %mk.slen170 = and i64 %mk.slen169, 281474976710655
  %str.tag171 = lshr i64 %mk.slen169, 48
  %str.immortal172 = icmp eq i64 %str.tag171, 0
  br i1 %str.immortal172, label %str_ok174, label %str_gen_check173

m.overwrite151:                                   ; preds = %mk.eq.merge191
  %m.val.slot199 = getelementptr i64, ptr %m.vals129, i64 %m.idx155
  store i64 %slot.p2i, ptr %m.val.slot199, align 8
  br label %m.done154

m.next152:                                        ; preds = %mk.eq.merge191, %m.tomb149
  %m.next.tomb200 = phi i64 [ %m.tomb.sel165, %m.tomb149 ], [ %m.tomb156, %mk.eq.merge191 ]
  %m.idx.add201 = add i64 %m.idx155, 1
  %m.idx.next202 = and i64 %m.idx.add201, %m.capm1145
  %m.probe.next203 = add i64 %m.probe157, 1
  br label %m.loop147

m.empty153:                                       ; preds = %m.loop147
  %m.use.tomb204 = icmp ne i64 %m.tomb156, -1
  %m.ins.idx205 = select i1 %m.use.tomb204, i64 %m.tomb156, i64 %m.idx155
  %m.key.slot206 = getelementptr ptr, ptr %m.keys127, i64 %m.ins.idx205
  store ptr %var.load2, ptr %m.key.slot206, align 8
  %m.val.slot207 = getelementptr i64, ptr %m.vals129, i64 %m.ins.idx205
  store i64 %slot.p2i, ptr %m.val.slot207, align 8
  %m.ins.state.slot208 = getelementptr i8, ptr %m.states131, i64 %m.ins.idx205
  store i8 1, ptr %m.ins.state.slot208, align 1
  %m.count209 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %m.count210 = load i64, ptr %m.count209, align 8
  %m.count.next211 = add i64 %m.count210, 1
  %m.count.gep212 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 0
  store i64 %m.count.next211, ptr %m.count.gep212, align 8
  %m.ins.tombs.p213 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load1, i32 0, i32 5
  %m.ins.tombs214 = load i64, ptr %m.ins.tombs.p213, align 8
  %m.tomb.dec215 = select i1 %m.use.tomb204, i64 1, i64 0
  %m.ins.tombs.next216 = sub i64 %m.ins.tombs214, %m.tomb.dec215
  store i64 %m.ins.tombs.next216, ptr %m.ins.tombs.p213, align 8
  br label %m.done154

m.done154:                                        ; preds = %m.empty153, %m.overwrite151
  br label %m.done

str_gen_check173:                                 ; preds = %m.found150
  %arena.cur176 = call ptr @dva_arena_current()
  %tag.valid177 = call i1 @dva_arena_validate_tag(ptr %arena.cur176, i64 %str.tag171)
  br i1 %tag.valid177, label %str_ok174, label %str_stale175

str_ok174:                                        ; preds = %str_stale175, %str_gen_check173, %m.found150
  %mk.nlen178 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %mk.nlen179 = load i64, ptr %mk.nlen178, align 8
  %mk.nlen180 = and i64 %mk.nlen179, 281474976710655
  %str.tag181 = lshr i64 %mk.nlen179, 48
  %str.immortal182 = icmp eq i64 %str.tag181, 0
  br i1 %str.immortal182, label %str_ok184, label %str_gen_check183

str_stale175:                                     ; preds = %str_gen_check173
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok174

str_gen_check183:                                 ; preds = %str_ok174
  %arena.cur186 = call ptr @dva_arena_current()
  %tag.valid187 = call i1 @dva_arena_validate_tag(ptr %arena.cur186, i64 %str.tag181)
  br i1 %tag.valid187, label %str_ok184, label %str_stale185

str_ok184:                                        ; preds = %str_stale185, %str_gen_check183, %str_ok174
  %mk.lenseq188 = icmp eq i64 %mk.slen170, %mk.nlen180
  br i1 %mk.lenseq188, label %mk.eq.then189, label %mk.eq.else190

str_stale185:                                     ; preds = %str_gen_check183
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok184

mk.eq.then189:                                    ; preds = %str_ok184
  %mk.sdata192 = getelementptr inbounds { i64, ptr }, ptr %mk.stored167, i32 0, i32 1
  %mk.sdata193 = load ptr, ptr %mk.sdata192, align 8
  %mk.ndata194 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %mk.ndata195 = load ptr, ptr %mk.ndata194, align 8
  %mk.memcmp196 = call i32 @memcmp(ptr %mk.sdata193, ptr %mk.ndata195, i64 %mk.nlen180)
  %mk.cmpeq197 = icmp eq i32 %mk.memcmp196, 0
  br label %mk.eq.merge191

mk.eq.else190:                                    ; preds = %str_ok184
  br label %mk.eq.merge191

mk.eq.merge191:                                   ; preds = %mk.eq.else190, %mk.eq.then189
  %mk.eq198 = phi i1 [ %mk.cmpeq197, %mk.eq.then189 ], [ false, %mk.eq.else190 ]
  br i1 %mk.eq198, label %m.overwrite151, label %m.next152
}

declare i32 @memcmp(ptr, ptr, i64)

define ptr @"type_env::lookup_fn_body"(ptr %0, ptr %1) #1 {
entry:
  %var.body = alloca ptr, align 8
  %var._97 = alloca ptr, align 8
  %var._96 = alloca ptr, align 8
  %var._95 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.bodies = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 7
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.bodies, align 8
  %var.load1 = load ptr, ptr %var.bodies, align 8
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
  %var.load30 = load ptr, ptr %var.bodies, align 8
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
  %choice.res124 = phi ptr [ %var.load123, %choice.exit91 ], [ null, %choice.else ]
  ret ptr %choice.res124

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
  store ptr @str.2.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
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
  %m.rd.pay = phi i64 [ %m.rd.p2i, %m.rd.hit ], [ %err.p2i, %m.rd.miss ]
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
  %m.rd.val.slot = getelementptr ptr, ptr %m.vals36, i64 %m.rd.idx
  %m.rd.val = load ptr, ptr %m.rd.val.slot, align 8
  %m.rd.p2i = ptrtoint ptr %m.rd.val to i64
  br label %m.rd.done

choice.then89:                                    ; preds = %m.rd.done
  %ram.pay92 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay92 to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  br label %choice.exit91

choice.else90:                                    ; preds = %m.rd.done
  %ram.pay93 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr94 = inttoptr i64 %ram.pay93 to ptr
  store ptr %pay.ptr94, ptr %var._95, align 8
  store ptr %pay.ptr94, ptr %var._96, align 8
  store ptr %pay.ptr94, ptr %var._97, align 8
  %err.code.gep98 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr94, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep98, align 8
  %err.msg.gep99 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr94, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep99, align 8
  %err.file.gep100 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr94, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep100, align 8
  %err.line.gep101 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr94, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep101, align 8
  %err.col.gep102 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %pay.ptr94, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep102, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len103 = load i64, ptr %err.msg.len, align 8
  %err.msg.len104 = and i64 %err.msg.len103, 281474976710655
  %str.tag105 = lshr i64 %err.msg.len103, 48
  %str.immortal106 = icmp eq i64 %str.tag105, 0
  br i1 %str.immortal106, label %str_ok108, label %str_gen_check107

choice.exit91:                                    ; preds = %err.abort, %choice.then89
  %choice.res = phi ptr [ %pay.ptr, %choice.then89 ], [ null, %err.abort ]
  store ptr %choice.res, ptr %var.body, align 8
  %var.load123 = load ptr, ptr %var.body, align 8
  br label %choice.exit

str_gen_check107:                                 ; preds = %choice.else90
  %arena.cur110 = call ptr @dva_arena_current()
  %tag.valid111 = call i1 @dva_arena_validate_tag(ptr %arena.cur110, i64 %str.tag105)
  br i1 %tag.valid111, label %str_ok108, label %str_stale109

str_ok108:                                        ; preds = %str_stale109, %str_gen_check107, %choice.else90
  %err.msg.len32 = trunc i64 %err.msg.len104 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data112 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len113 = load i64, ptr %err.file.len, align 8
  %err.file.len114 = and i64 %err.file.len113, 281474976710655
  %str.tag115 = lshr i64 %err.file.len113, 48
  %str.immortal116 = icmp eq i64 %str.tag115, 0
  br i1 %str.immortal116, label %str_ok118, label %str_gen_check117

str_stale109:                                     ; preds = %str_gen_check107
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok108

str_gen_check117:                                 ; preds = %str_ok108
  %arena.cur120 = call ptr @dva_arena_current()
  %tag.valid121 = call i1 @dva_arena_validate_tag(ptr %arena.cur120, i64 %str.tag115)
  br i1 %tag.valid121, label %str_ok118, label %str_stale119

str_ok118:                                        ; preds = %str_stale119, %str_gen_check117, %str_ok108
  %err.file.len32 = trunc i64 %err.file.len114 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data122 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale119:                                     ; preds = %str_gen_check117
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok118

err.thread:                                       ; preds = %str_ok118
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %pay.ptr94, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok118
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data112, i32 %err.file.len32, ptr %err.file.data122, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit91
}

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define void @"type_env::mark_generic_binding"(ptr %0, ptr %1) #1 {
entry:
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 13
  %a.fld.load = load ptr, ptr %fld.gep, align 8
  br label %a.check

a.check:                                          ; preds = %entry
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.len2 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 2
  %a.cap3 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len2, %a.cap3
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.fld.load)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 1
  %a.cur.data4 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.cur.len5 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data4, i64 %a.cur.len5
  %slot.p2i = ptrtoint ptr %var.load1 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len5, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  ret void
}

define i1 @"type_env::is_generic_binding"(ptr %0, ptr %1) #1 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.n = alloca ptr, align 8
  %loop.step.154 = alloca i64, align 8
  %loop.idx.154 = alloca i64, align 8
  %"var.found'" = alloca i1, align 1
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  store i1 false, ptr %"var.found'", align 1
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 13
  %fld.load = load ptr, ptr %fld.gep, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %arr.cycle.len1 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 1
  %arr.cycle.data2 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.154, align 8
  br label %loop.header.154

loop.header.154:                                  ; preds = %loop.latch.154, %entry
  %counter.load = load i64, ptr %loop.idx.154, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len1
  br i1 %loop.cond, label %loop.body.154, label %loop.exit.nat.154

loop.body.154:                                    ; preds = %loop.header.154
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.154, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data2, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.n, align 8
  %var.load3 = load ptr, ptr %var.n, align 8
  %var.load4 = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len5 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len6 = and i64 %eq.lhs.len5, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len5, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.154:                                ; preds = %loop.header.154
  br label %loop.exit.154

loop.latch.154:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.154, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.154, align 8
  br label %loop.header.154

loop.exit.154:                                    ; preds = %choice.then, %loop.exit.nat.154
  %var.load18 = load i1, ptr %"var.found'", align 1
  ret i1 %var.load18

str_gen_check:                                    ; preds = %loop.body.154
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.154
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
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
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
  br i1 %str.eq.result, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  store i1 true, ptr %"var.found'", align 1
  br label %loop.exit.154

choice.exit:                                      ; preds = %str.eq.merge
  br label %loop.latch.154
}

define void @"type_env::mark_global_var"(ptr %0, ptr %1) #1 {
entry:
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 14
  %a.fld.load = load ptr, ptr %fld.gep, align 8
  br label %a.check

a.check:                                          ; preds = %entry
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.len2 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 2
  %a.cap3 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len2, %a.cap3
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.fld.load)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 1
  %a.cur.data4 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.cur.len5 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data4, i64 %a.cur.len5
  %slot.p2i = ptrtoint ptr %var.load1 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len5, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  ret void
}

define i1 @"type_env::is_marked_global"(ptr %0, ptr %1) #1 {
entry:
  %var.match = alloca i1, align 1
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.n = alloca ptr, align 8
  %loop.step.155 = alloca i64, align 8
  %loop.idx.155 = alloca i64, align 8
  %var.qname = alloca ptr, align 8
  %"var.found'" = alloca i1, align 1
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  store i1 false, ptr %"var.found'", align 1
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len1 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %str.tag4 = lshr i64 %eq.rhs.len, 48
  %str.immortal5 = icmp eq i64 %str.tag4, 0
  br i1 %str.immortal5, label %str_ok7, label %str_gen_check6

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
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
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok7

str.eq.then:                                      ; preds = %str_ok7
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data11 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data11, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok7
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  %var.load12 = load ptr, ptr %var.env, align 8
  %fld.gep13 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load12, i32 0, i32 8
  %fld.load14 = load ptr, ptr %fld.gep13, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %fld.load14, i32 0, i32 0
  %concat.lhs15 = load i64, ptr %concat.lhs, align 8
  %concat.lhs16 = and i64 %concat.lhs15, 281474976710655
  %str.tag17 = lshr i64 %concat.lhs15, 48
  %str.immortal18 = icmp eq i64 %str.tag17, 0
  br i1 %str.immortal18, label %str_ok20, label %str_gen_check19

choice.else:                                      ; preds = %str.eq.merge
  %var.load85 = load ptr, ptr %var.name, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %concat.tot.len75
  %choice.res = phi ptr [ %concat.str82, %concat.tot.len75 ], [ %var.load85, %choice.else ]
  store ptr %choice.res, ptr %var.qname, align 8
  %var.load86 = load ptr, ptr %var.env, align 8
  %fld.gep87 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load86, i32 0, i32 14
  %fld.load88 = load ptr, ptr %fld.gep87, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load88, i32 0, i32 0
  %arr.cycle.len89 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load88, i32 0, i32 1
  %arr.cycle.data90 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.155, align 8
  br label %loop.header.155

str_gen_check19:                                  ; preds = %choice.then
  %arena.cur22 = call ptr @dva_arena_current()
  %tag.valid23 = call i1 @dva_arena_validate_tag(ptr %arena.cur22, i64 %str.tag17)
  br i1 %tag.valid23, label %str_ok20, label %str_stale21

str_ok20:                                         ; preds = %str_stale21, %str_gen_check19, %choice.then
  %concat.lhs24 = getelementptr inbounds { i64, ptr }, ptr %fld.load14, i32 0, i32 1
  %concat.lhs25 = load ptr, ptr %concat.lhs24, align 8
  %concat.rhs = load i64, ptr @str.4.struct, align 8
  %concat.rhs26 = and i64 %concat.rhs, 281474976710655
  %str.tag27 = lshr i64 %concat.rhs, 48
  %str.immortal28 = icmp eq i64 %str.tag27, 0
  br i1 %str.immortal28, label %str_ok30, label %str_gen_check29

str_stale21:                                      ; preds = %str_gen_check19
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok20

str_gen_check29:                                  ; preds = %str_ok20
  %arena.cur32 = call ptr @dva_arena_current()
  %tag.valid33 = call i1 @dva_arena_validate_tag(ptr %arena.cur32, i64 %str.tag27)
  br i1 %tag.valid33, label %str_ok30, label %str_stale31

str_ok30:                                         ; preds = %str_stale31, %str_gen_check29, %str_ok20
  %concat.rhs34 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs16, i64 %concat.rhs26)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len35

str_stale31:                                      ; preds = %str_gen_check29
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok30

concat.sum.len35:                                 ; preds = %str_overflow_abort, %str_ok30
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum36 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf37 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf37, label %str_overflow_abort39, label %concat.tot.len38

str_overflow_abort:                               ; preds = %str_ok30
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len35

concat.tot.len38:                                 ; preds = %str_overflow_abort39, %concat.sum.len35
  %arena.cur40 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 %sum36)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs25, i64 %concat.lhs16, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs34, i64 %concat.rhs26, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur41 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load42 = load ptr, ptr %var.name, align 8
  %concat.lhs43 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs44 = load i64, ptr %concat.lhs43, align 8
  %concat.lhs45 = and i64 %concat.lhs44, 281474976710655
  %str.tag46 = lshr i64 %concat.lhs44, 48
  %str.immortal47 = icmp eq i64 %str.tag46, 0
  br i1 %str.immortal47, label %str_ok49, label %str_gen_check48

str_overflow_abort39:                             ; preds = %concat.sum.len35
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len38

str_gen_check48:                                  ; preds = %concat.tot.len38
  %arena.cur51 = call ptr @dva_arena_current()
  %tag.valid52 = call i1 @dva_arena_validate_tag(ptr %arena.cur51, i64 %str.tag46)
  br i1 %tag.valid52, label %str_ok49, label %str_stale50

str_ok49:                                         ; preds = %str_stale50, %str_gen_check48, %concat.tot.len38
  %concat.lhs53 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs54 = load ptr, ptr %concat.lhs53, align 8
  %concat.rhs55 = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 0
  %concat.rhs56 = load i64, ptr %concat.rhs55, align 8
  %concat.rhs57 = and i64 %concat.rhs56, 281474976710655
  %str.tag58 = lshr i64 %concat.rhs56, 48
  %str.immortal59 = icmp eq i64 %str.tag58, 0
  br i1 %str.immortal59, label %str_ok61, label %str_gen_check60

str_stale50:                                      ; preds = %str_gen_check48
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok49

str_gen_check60:                                  ; preds = %str_ok49
  %arena.cur63 = call ptr @dva_arena_current()
  %tag.valid64 = call i1 @dva_arena_validate_tag(ptr %arena.cur63, i64 %str.tag58)
  br i1 %tag.valid64, label %str_ok61, label %str_stale62

str_ok61:                                         ; preds = %str_stale62, %str_gen_check60, %str_ok49
  %concat.rhs65 = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 1
  %concat.rhs66 = load ptr, ptr %concat.rhs65, align 8
  %concat.sum.len67 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs45, i64 %concat.rhs57)
  %sum68 = extractvalue { i64, i1 } %concat.sum.len67, 0
  %ovf69 = extractvalue { i64, i1 } %concat.sum.len67, 1
  br i1 %ovf69, label %str_overflow_abort71, label %concat.sum.len70

str_stale62:                                      ; preds = %str_gen_check60
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok61

concat.sum.len70:                                 ; preds = %str_overflow_abort71, %str_ok61
  %concat.tot.len72 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum68, i64 1)
  %sum73 = extractvalue { i64, i1 } %concat.tot.len72, 0
  %ovf74 = extractvalue { i64, i1 } %concat.tot.len72, 1
  br i1 %ovf74, label %str_overflow_abort76, label %concat.tot.len75

str_overflow_abort71:                             ; preds = %str_ok61
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len70

concat.tot.len75:                                 ; preds = %str_overflow_abort76, %concat.sum.len70
  %arena.cur77 = call ptr @dva_arena_current()
  %concat.buf78 = call ptr @dva_arena_alloc(ptr %arena.cur77, i64 %sum73)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf78, ptr align 1 %concat.lhs54, i64 %concat.lhs45, i1 false)
  %concat.mid79 = getelementptr i8, ptr %concat.buf78, i64 %concat.lhs45
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid79, ptr align 1 %concat.rhs66, i64 %concat.rhs57, i1 false)
  %concat.nul80 = getelementptr i8, ptr %concat.buf78, i64 %sum68
  store i8 0, ptr %concat.nul80, align 1
  %arena.cur81 = call ptr @dva_arena_current()
  %concat.str82 = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 16)
  %str.build.len.gep83 = getelementptr inbounds { i64, ptr }, ptr %concat.str82, i32 0, i32 0
  store i64 %sum68, ptr %str.build.len.gep83, align 8
  %str.build.data.gep84 = getelementptr inbounds { i64, ptr }, ptr %concat.str82, i32 0, i32 1
  store ptr %concat.buf78, ptr %str.build.data.gep84, align 8
  br label %choice.exit

str_overflow_abort76:                             ; preds = %concat.sum.len70
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len75

loop.header.155:                                  ; preds = %loop.latch.155, %choice.exit
  %counter.load = load i64, ptr %loop.idx.155, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len89
  br i1 %loop.cond, label %loop.body.155, label %loop.exit.nat.155

loop.body.155:                                    ; preds = %loop.header.155
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.155, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data90, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.n, align 8
  %var.load91 = load ptr, ptr %var.n, align 8
  %var.load92 = load ptr, ptr %var.name, align 8
  %eq.lhs.len93 = getelementptr inbounds { i64, ptr }, ptr %var.load91, i32 0, i32 0
  %eq.lhs.len94 = load i64, ptr %eq.lhs.len93, align 8
  %eq.lhs.len95 = and i64 %eq.lhs.len94, 281474976710655
  %str.tag96 = lshr i64 %eq.lhs.len94, 48
  %str.immortal97 = icmp eq i64 %str.tag96, 0
  br i1 %str.immortal97, label %str_ok99, label %str_gen_check98

loop.exit.nat.155:                                ; preds = %loop.header.155
  br label %loop.exit.155

loop.latch.155:                                   ; preds = %choice.exit310
  %step.val = load i64, ptr %loop.step.155, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.155, align 8
  br label %loop.header.155

loop.exit.155:                                    ; preds = %choice.then309, %loop.exit.nat.155
  %var.load311 = load i1, ptr %"var.found'", align 1
  ret i1 %var.load311

str_gen_check98:                                  ; preds = %loop.body.155
  %arena.cur101 = call ptr @dva_arena_current()
  %tag.valid102 = call i1 @dva_arena_validate_tag(ptr %arena.cur101, i64 %str.tag96)
  br i1 %tag.valid102, label %str_ok99, label %str_stale100

str_ok99:                                         ; preds = %str_stale100, %str_gen_check98, %loop.body.155
  %eq.rhs.len103 = getelementptr inbounds { i64, ptr }, ptr %var.load92, i32 0, i32 0
  %eq.rhs.len104 = load i64, ptr %eq.rhs.len103, align 8
  %eq.rhs.len105 = and i64 %eq.rhs.len104, 281474976710655
  %str.tag106 = lshr i64 %eq.rhs.len104, 48
  %str.immortal107 = icmp eq i64 %str.tag106, 0
  br i1 %str.immortal107, label %str_ok109, label %str_gen_check108

str_stale100:                                     ; preds = %str_gen_check98
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok99

str_gen_check108:                                 ; preds = %str_ok99
  %arena.cur111 = call ptr @dva_arena_current()
  %tag.valid112 = call i1 @dva_arena_validate_tag(ptr %arena.cur111, i64 %str.tag106)
  br i1 %tag.valid112, label %str_ok109, label %str_stale110

str_ok109:                                        ; preds = %str_stale110, %str_gen_check108, %str_ok99
  %eq.len113 = icmp eq i64 %eq.lhs.len95, %eq.rhs.len105
  br i1 %eq.len113, label %str.eq.then114, label %str.eq.else115

str_stale110:                                     ; preds = %str_gen_check108
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok109

str.eq.then114:                                   ; preds = %str_ok109
  %eq.lhs.data117 = getelementptr inbounds { i64, ptr }, ptr %var.load91, i32 0, i32 1
  %eq.lhs.data118 = load ptr, ptr %eq.lhs.data117, align 8
  %eq.rhs.data119 = getelementptr inbounds { i64, ptr }, ptr %var.load92, i32 0, i32 1
  %eq.rhs.data120 = load ptr, ptr %eq.rhs.data119, align 8
  %eq.memcmp121 = call i32 @memcmp(ptr %eq.lhs.data118, ptr %eq.rhs.data120, i64 %eq.lhs.len95)
  %eq.cmp.zero122 = icmp eq i32 %eq.memcmp121, 0
  br label %str.eq.merge116

str.eq.else115:                                   ; preds = %str_ok109
  br label %str.eq.merge116

str.eq.merge116:                                  ; preds = %str.eq.else115, %str.eq.then114
  %str.eq.result123 = phi i1 [ %eq.cmp.zero122, %str.eq.then114 ], [ false, %str.eq.else115 ]
  br i1 %str.eq.result123, label %or.156.then, label %or.156.else

or.156.then:                                      ; preds = %str.eq.merge116
  br label %or.156.exit

or.156.else:                                      ; preds = %str.eq.merge116
  %var.load124 = load ptr, ptr %var.n, align 8
  %var.load125 = load ptr, ptr %var.qname, align 8
  %eq.lhs.len126 = getelementptr inbounds { i64, ptr }, ptr %var.load124, i32 0, i32 0
  %eq.lhs.len127 = load i64, ptr %eq.lhs.len126, align 8
  %eq.lhs.len128 = and i64 %eq.lhs.len127, 281474976710655
  %str.tag129 = lshr i64 %eq.lhs.len127, 48
  %str.immortal130 = icmp eq i64 %str.tag129, 0
  br i1 %str.immortal130, label %str_ok132, label %str_gen_check131

or.156.exit:                                      ; preds = %str.eq.merge149, %or.156.then
  %or.156.phi = phi i1 [ %str.eq.result123, %or.156.then ], [ %str.eq.result156, %str.eq.merge149 ]
  br i1 %or.156.phi, label %or.157.then, label %or.157.else

str_gen_check131:                                 ; preds = %or.156.else
  %arena.cur134 = call ptr @dva_arena_current()
  %tag.valid135 = call i1 @dva_arena_validate_tag(ptr %arena.cur134, i64 %str.tag129)
  br i1 %tag.valid135, label %str_ok132, label %str_stale133

str_ok132:                                        ; preds = %str_stale133, %str_gen_check131, %or.156.else
  %eq.rhs.len136 = getelementptr inbounds { i64, ptr }, ptr %var.load125, i32 0, i32 0
  %eq.rhs.len137 = load i64, ptr %eq.rhs.len136, align 8
  %eq.rhs.len138 = and i64 %eq.rhs.len137, 281474976710655
  %str.tag139 = lshr i64 %eq.rhs.len137, 48
  %str.immortal140 = icmp eq i64 %str.tag139, 0
  br i1 %str.immortal140, label %str_ok142, label %str_gen_check141

str_stale133:                                     ; preds = %str_gen_check131
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok132

str_gen_check141:                                 ; preds = %str_ok132
  %arena.cur144 = call ptr @dva_arena_current()
  %tag.valid145 = call i1 @dva_arena_validate_tag(ptr %arena.cur144, i64 %str.tag139)
  br i1 %tag.valid145, label %str_ok142, label %str_stale143

str_ok142:                                        ; preds = %str_stale143, %str_gen_check141, %str_ok132
  %eq.len146 = icmp eq i64 %eq.lhs.len128, %eq.rhs.len138
  br i1 %eq.len146, label %str.eq.then147, label %str.eq.else148

str_stale143:                                     ; preds = %str_gen_check141
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok142

str.eq.then147:                                   ; preds = %str_ok142
  %eq.lhs.data150 = getelementptr inbounds { i64, ptr }, ptr %var.load124, i32 0, i32 1
  %eq.lhs.data151 = load ptr, ptr %eq.lhs.data150, align 8
  %eq.rhs.data152 = getelementptr inbounds { i64, ptr }, ptr %var.load125, i32 0, i32 1
  %eq.rhs.data153 = load ptr, ptr %eq.rhs.data152, align 8
  %eq.memcmp154 = call i32 @memcmp(ptr %eq.lhs.data151, ptr %eq.rhs.data153, i64 %eq.lhs.len128)
  %eq.cmp.zero155 = icmp eq i32 %eq.memcmp154, 0
  br label %str.eq.merge149

str.eq.else148:                                   ; preds = %str_ok142
  br label %str.eq.merge149

str.eq.merge149:                                  ; preds = %str.eq.else148, %str.eq.then147
  %str.eq.result156 = phi i1 [ %eq.cmp.zero155, %str.eq.then147 ], [ false, %str.eq.else148 ]
  br label %or.156.exit

or.157.then:                                      ; preds = %or.156.exit
  br label %or.157.exit

or.157.else:                                      ; preds = %or.156.exit
  %var.load157 = load ptr, ptr %var.env, align 8
  %fld.gep158 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load157, i32 0, i32 8
  %fld.load159 = load ptr, ptr %fld.gep158, align 8
  %eq.lhs.len160 = getelementptr inbounds { i64, ptr }, ptr %fld.load159, i32 0, i32 0
  %eq.lhs.len161 = load i64, ptr %eq.lhs.len160, align 8
  %eq.lhs.len162 = and i64 %eq.lhs.len161, 281474976710655
  %str.tag163 = lshr i64 %eq.lhs.len161, 48
  %str.immortal164 = icmp eq i64 %str.tag163, 0
  br i1 %str.immortal164, label %str_ok166, label %str_gen_check165

or.157.exit:                                      ; preds = %and.158.exit, %or.157.then
  %or.157.phi = phi i1 [ %or.156.phi, %or.157.then ], [ %and.158.phi, %and.158.exit ]
  store i1 %or.157.phi, ptr %var.match, align 1
  %var.load308 = load i1, ptr %var.match, align 1
  br i1 %var.load308, label %choice.then309, label %choice.exit310

str_gen_check165:                                 ; preds = %or.157.else
  %arena.cur168 = call ptr @dva_arena_current()
  %tag.valid169 = call i1 @dva_arena_validate_tag(ptr %arena.cur168, i64 %str.tag163)
  br i1 %tag.valid169, label %str_ok166, label %str_stale167

str_ok166:                                        ; preds = %str_stale167, %str_gen_check165, %or.157.else
  %eq.rhs.len170 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len171 = and i64 %eq.rhs.len170, 281474976710655
  %str.tag172 = lshr i64 %eq.rhs.len170, 48
  %str.immortal173 = icmp eq i64 %str.tag172, 0
  br i1 %str.immortal173, label %str_ok175, label %str_gen_check174

str_stale167:                                     ; preds = %str_gen_check165
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok166

str_gen_check174:                                 ; preds = %str_ok166
  %arena.cur177 = call ptr @dva_arena_current()
  %tag.valid178 = call i1 @dva_arena_validate_tag(ptr %arena.cur177, i64 %str.tag172)
  br i1 %tag.valid178, label %str_ok175, label %str_stale176

str_ok175:                                        ; preds = %str_stale176, %str_gen_check174, %str_ok166
  %eq.len179 = icmp eq i64 %eq.lhs.len162, %eq.rhs.len171
  br i1 %eq.len179, label %str.eq.then180, label %str.eq.else181

str_stale176:                                     ; preds = %str_gen_check174
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok175

str.eq.then180:                                   ; preds = %str_ok175
  %eq.lhs.data183 = getelementptr inbounds { i64, ptr }, ptr %fld.load159, i32 0, i32 1
  %eq.lhs.data184 = load ptr, ptr %eq.lhs.data183, align 8
  %eq.rhs.data185 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp186 = call i32 @memcmp(ptr %eq.lhs.data184, ptr %eq.rhs.data185, i64 %eq.lhs.len162)
  %eq.cmp.zero187 = icmp eq i32 %eq.memcmp186, 0
  br label %str.eq.merge182

str.eq.else181:                                   ; preds = %str_ok175
  br label %str.eq.merge182

str.eq.merge182:                                  ; preds = %str.eq.else181, %str.eq.then180
  %str.eq.result188 = phi i1 [ %eq.cmp.zero187, %str.eq.then180 ], [ false, %str.eq.else181 ]
  %str.neq189 = xor i1 %str.eq.result188, true
  br i1 %str.neq189, label %and.158.then, label %and.158.else

and.158.then:                                     ; preds = %str.eq.merge182
  %var.load190 = load ptr, ptr %var.name, align 8
  %var.load191 = load ptr, ptr %var.env, align 8
  %fld.gep192 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load191, i32 0, i32 8
  %fld.load193 = load ptr, ptr %fld.gep192, align 8
  %concat.lhs194 = getelementptr inbounds { i64, ptr }, ptr %fld.load193, i32 0, i32 0
  %concat.lhs195 = load i64, ptr %concat.lhs194, align 8
  %concat.lhs196 = and i64 %concat.lhs195, 281474976710655
  %str.tag197 = lshr i64 %concat.lhs195, 48
  %str.immortal198 = icmp eq i64 %str.tag197, 0
  br i1 %str.immortal198, label %str_ok200, label %str_gen_check199

and.158.else:                                     ; preds = %str.eq.merge182
  br label %and.158.exit

and.158.exit:                                     ; preds = %and.158.else, %str.eq.merge300
  %and.158.phi = phi i1 [ %str.eq.result307, %str.eq.merge300 ], [ %str.neq189, %and.158.else ]
  br label %or.157.exit

str_gen_check199:                                 ; preds = %and.158.then
  %arena.cur202 = call ptr @dva_arena_current()
  %tag.valid203 = call i1 @dva_arena_validate_tag(ptr %arena.cur202, i64 %str.tag197)
  br i1 %tag.valid203, label %str_ok200, label %str_stale201

str_ok200:                                        ; preds = %str_stale201, %str_gen_check199, %and.158.then
  %concat.lhs204 = getelementptr inbounds { i64, ptr }, ptr %fld.load193, i32 0, i32 1
  %concat.lhs205 = load ptr, ptr %concat.lhs204, align 8
  %concat.rhs206 = load i64, ptr @str.4.struct, align 8
  %concat.rhs207 = and i64 %concat.rhs206, 281474976710655
  %str.tag208 = lshr i64 %concat.rhs206, 48
  %str.immortal209 = icmp eq i64 %str.tag208, 0
  br i1 %str.immortal209, label %str_ok211, label %str_gen_check210

str_stale201:                                     ; preds = %str_gen_check199
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok200

str_gen_check210:                                 ; preds = %str_ok200
  %arena.cur213 = call ptr @dva_arena_current()
  %tag.valid214 = call i1 @dva_arena_validate_tag(ptr %arena.cur213, i64 %str.tag208)
  br i1 %tag.valid214, label %str_ok211, label %str_stale212

str_ok211:                                        ; preds = %str_stale212, %str_gen_check210, %str_ok200
  %concat.rhs215 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %concat.sum.len216 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs196, i64 %concat.rhs207)
  %sum217 = extractvalue { i64, i1 } %concat.sum.len216, 0
  %ovf218 = extractvalue { i64, i1 } %concat.sum.len216, 1
  br i1 %ovf218, label %str_overflow_abort220, label %concat.sum.len219

str_stale212:                                     ; preds = %str_gen_check210
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok211

concat.sum.len219:                                ; preds = %str_overflow_abort220, %str_ok211
  %concat.tot.len221 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum217, i64 1)
  %sum222 = extractvalue { i64, i1 } %concat.tot.len221, 0
  %ovf223 = extractvalue { i64, i1 } %concat.tot.len221, 1
  br i1 %ovf223, label %str_overflow_abort225, label %concat.tot.len224

str_overflow_abort220:                            ; preds = %str_ok211
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len219

concat.tot.len224:                                ; preds = %str_overflow_abort225, %concat.sum.len219
  %arena.cur226 = call ptr @dva_arena_current()
  %concat.buf227 = call ptr @dva_arena_alloc(ptr %arena.cur226, i64 %sum222)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf227, ptr align 1 %concat.lhs205, i64 %concat.lhs196, i1 false)
  %concat.mid228 = getelementptr i8, ptr %concat.buf227, i64 %concat.lhs196
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid228, ptr align 1 %concat.rhs215, i64 %concat.rhs207, i1 false)
  %concat.nul229 = getelementptr i8, ptr %concat.buf227, i64 %sum217
  store i8 0, ptr %concat.nul229, align 1
  %arena.cur230 = call ptr @dva_arena_current()
  %concat.str231 = call ptr @dva_arena_alloc(ptr %arena.cur230, i64 16)
  %str.build.len.gep232 = getelementptr inbounds { i64, ptr }, ptr %concat.str231, i32 0, i32 0
  store i64 %sum217, ptr %str.build.len.gep232, align 8
  %str.build.data.gep233 = getelementptr inbounds { i64, ptr }, ptr %concat.str231, i32 0, i32 1
  store ptr %concat.buf227, ptr %str.build.data.gep233, align 8
  %var.load234 = load ptr, ptr %var.n, align 8
  %concat.lhs235 = getelementptr inbounds { i64, ptr }, ptr %concat.str231, i32 0, i32 0
  %concat.lhs236 = load i64, ptr %concat.lhs235, align 8
  %concat.lhs237 = and i64 %concat.lhs236, 281474976710655
  %str.tag238 = lshr i64 %concat.lhs236, 48
  %str.immortal239 = icmp eq i64 %str.tag238, 0
  br i1 %str.immortal239, label %str_ok241, label %str_gen_check240

str_overflow_abort225:                            ; preds = %concat.sum.len219
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len224

str_gen_check240:                                 ; preds = %concat.tot.len224
  %arena.cur243 = call ptr @dva_arena_current()
  %tag.valid244 = call i1 @dva_arena_validate_tag(ptr %arena.cur243, i64 %str.tag238)
  br i1 %tag.valid244, label %str_ok241, label %str_stale242

str_ok241:                                        ; preds = %str_stale242, %str_gen_check240, %concat.tot.len224
  %concat.lhs245 = getelementptr inbounds { i64, ptr }, ptr %concat.str231, i32 0, i32 1
  %concat.lhs246 = load ptr, ptr %concat.lhs245, align 8
  %concat.rhs247 = getelementptr inbounds { i64, ptr }, ptr %var.load234, i32 0, i32 0
  %concat.rhs248 = load i64, ptr %concat.rhs247, align 8
  %concat.rhs249 = and i64 %concat.rhs248, 281474976710655
  %str.tag250 = lshr i64 %concat.rhs248, 48
  %str.immortal251 = icmp eq i64 %str.tag250, 0
  br i1 %str.immortal251, label %str_ok253, label %str_gen_check252

str_stale242:                                     ; preds = %str_gen_check240
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok241

str_gen_check252:                                 ; preds = %str_ok241
  %arena.cur255 = call ptr @dva_arena_current()
  %tag.valid256 = call i1 @dva_arena_validate_tag(ptr %arena.cur255, i64 %str.tag250)
  br i1 %tag.valid256, label %str_ok253, label %str_stale254

str_ok253:                                        ; preds = %str_stale254, %str_gen_check252, %str_ok241
  %concat.rhs257 = getelementptr inbounds { i64, ptr }, ptr %var.load234, i32 0, i32 1
  %concat.rhs258 = load ptr, ptr %concat.rhs257, align 8
  %concat.sum.len259 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs237, i64 %concat.rhs249)
  %sum260 = extractvalue { i64, i1 } %concat.sum.len259, 0
  %ovf261 = extractvalue { i64, i1 } %concat.sum.len259, 1
  br i1 %ovf261, label %str_overflow_abort263, label %concat.sum.len262

str_stale254:                                     ; preds = %str_gen_check252
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok253

concat.sum.len262:                                ; preds = %str_overflow_abort263, %str_ok253
  %concat.tot.len264 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum260, i64 1)
  %sum265 = extractvalue { i64, i1 } %concat.tot.len264, 0
  %ovf266 = extractvalue { i64, i1 } %concat.tot.len264, 1
  br i1 %ovf266, label %str_overflow_abort268, label %concat.tot.len267

str_overflow_abort263:                            ; preds = %str_ok253
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len262

concat.tot.len267:                                ; preds = %str_overflow_abort268, %concat.sum.len262
  %arena.cur269 = call ptr @dva_arena_current()
  %concat.buf270 = call ptr @dva_arena_alloc(ptr %arena.cur269, i64 %sum265)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf270, ptr align 1 %concat.lhs246, i64 %concat.lhs237, i1 false)
  %concat.mid271 = getelementptr i8, ptr %concat.buf270, i64 %concat.lhs237
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid271, ptr align 1 %concat.rhs258, i64 %concat.rhs249, i1 false)
  %concat.nul272 = getelementptr i8, ptr %concat.buf270, i64 %sum260
  store i8 0, ptr %concat.nul272, align 1
  %arena.cur273 = call ptr @dva_arena_current()
  %concat.str274 = call ptr @dva_arena_alloc(ptr %arena.cur273, i64 16)
  %str.build.len.gep275 = getelementptr inbounds { i64, ptr }, ptr %concat.str274, i32 0, i32 0
  store i64 %sum260, ptr %str.build.len.gep275, align 8
  %str.build.data.gep276 = getelementptr inbounds { i64, ptr }, ptr %concat.str274, i32 0, i32 1
  store ptr %concat.buf270, ptr %str.build.data.gep276, align 8
  %eq.lhs.len277 = getelementptr inbounds { i64, ptr }, ptr %var.load190, i32 0, i32 0
  %eq.lhs.len278 = load i64, ptr %eq.lhs.len277, align 8
  %eq.lhs.len279 = and i64 %eq.lhs.len278, 281474976710655
  %str.tag280 = lshr i64 %eq.lhs.len278, 48
  %str.immortal281 = icmp eq i64 %str.tag280, 0
  br i1 %str.immortal281, label %str_ok283, label %str_gen_check282

str_overflow_abort268:                            ; preds = %concat.sum.len262
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len267

str_gen_check282:                                 ; preds = %concat.tot.len267
  %arena.cur285 = call ptr @dva_arena_current()
  %tag.valid286 = call i1 @dva_arena_validate_tag(ptr %arena.cur285, i64 %str.tag280)
  br i1 %tag.valid286, label %str_ok283, label %str_stale284

str_ok283:                                        ; preds = %str_stale284, %str_gen_check282, %concat.tot.len267
  %eq.rhs.len287 = getelementptr inbounds { i64, ptr }, ptr %concat.str274, i32 0, i32 0
  %eq.rhs.len288 = load i64, ptr %eq.rhs.len287, align 8
  %eq.rhs.len289 = and i64 %eq.rhs.len288, 281474976710655
  %str.tag290 = lshr i64 %eq.rhs.len288, 48
  %str.immortal291 = icmp eq i64 %str.tag290, 0
  br i1 %str.immortal291, label %str_ok293, label %str_gen_check292

str_stale284:                                     ; preds = %str_gen_check282
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok283

str_gen_check292:                                 ; preds = %str_ok283
  %arena.cur295 = call ptr @dva_arena_current()
  %tag.valid296 = call i1 @dva_arena_validate_tag(ptr %arena.cur295, i64 %str.tag290)
  br i1 %tag.valid296, label %str_ok293, label %str_stale294

str_ok293:                                        ; preds = %str_stale294, %str_gen_check292, %str_ok283
  %eq.len297 = icmp eq i64 %eq.lhs.len279, %eq.rhs.len289
  br i1 %eq.len297, label %str.eq.then298, label %str.eq.else299

str_stale294:                                     ; preds = %str_gen_check292
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok293

str.eq.then298:                                   ; preds = %str_ok293
  %eq.lhs.data301 = getelementptr inbounds { i64, ptr }, ptr %var.load190, i32 0, i32 1
  %eq.lhs.data302 = load ptr, ptr %eq.lhs.data301, align 8
  %eq.rhs.data303 = getelementptr inbounds { i64, ptr }, ptr %concat.str274, i32 0, i32 1
  %eq.rhs.data304 = load ptr, ptr %eq.rhs.data303, align 8
  %eq.memcmp305 = call i32 @memcmp(ptr %eq.lhs.data302, ptr %eq.rhs.data304, i64 %eq.lhs.len279)
  %eq.cmp.zero306 = icmp eq i32 %eq.memcmp305, 0
  br label %str.eq.merge300

str.eq.else299:                                   ; preds = %str_ok293
  br label %str.eq.merge300

str.eq.merge300:                                  ; preds = %str.eq.else299, %str.eq.then298
  %str.eq.result307 = phi i1 [ %eq.cmp.zero306, %str.eq.then298 ], [ false, %str.eq.else299 ]
  br label %and.158.exit

choice.then309:                                   ; preds = %or.157.exit
  store i1 true, ptr %"var.found'", align 1
  br label %loop.exit.155

choice.exit310:                                   ; preds = %or.157.exit
  br label %loop.latch.155
}

define void @"type_env::enter_scope"(ptr %0) #1 {
entry:
  %var.new_idx = alloca i64, align 8
  %var.scs = alloca ptr, align 8
  %var.new_scope = alloca ptr, align 8
  %var.bnds = alloca ptr, align 8
  %var.parent_idx = alloca i64, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.parent_idx, align 8
  store ptr null, ptr %var.bnds, align 8
  %var.load1 = load ptr, ptr %var.bnds, align 8
  %a.load = load ptr, ptr %var.bnds, align 8
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
  store ptr %a.create2, ptr %var.bnds, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.bnds, align 8
  %var.load4 = load i64, ptr %var.parent_idx, align 8
  %arena.cur5 = call ptr @dva_arena_current()
  %m.new = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 48)
  %arena.cur6 = call ptr @dva_arena_current()
  %m.keys = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 64)
  %arena.cur7 = call ptr @dva_arena_current()
  %m.vals = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 64)
  %arena.cur8 = call ptr @dva_arena_current()
  %m.states = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 8)
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
  %arena.cur9 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load2, ptr %rec.fld, align 8
  %rec.fld10 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load4, ptr %rec.fld10, align 8
  %rec.fld11 = getelementptr inbounds { ptr, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %m.new, ptr %rec.fld11, align 8
  store ptr %rec.alloc, ptr %var.new_scope, align 8
  %var.load12 = load ptr, ptr %var.env, align 8
  %fld.gep13 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load12, i32 0, i32 0
  %fld.load14 = load ptr, ptr %fld.gep13, align 8
  store ptr %fld.load14, ptr %var.scs, align 8
  %var.load15 = load ptr, ptr %var.scs, align 8
  %a.load16 = load ptr, ptr %var.scs, align 8
  %a.null17 = icmp eq ptr %a.load16, null
  br i1 %a.null17, label %a.create18, label %a.after19

a.create18:                                       ; preds = %a.after
  %arena.cur20 = call ptr @dva_arena_current()
  %a.create21 = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 24)
  %arena.cur22 = call ptr @dva_arena_current()
  %a.buf23 = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 128)
  %a.len.gep24 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create21, i32 0, i32 0
  store i64 0, ptr %a.len.gep24, align 8
  %a.data.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create21, i32 0, i32 1
  store ptr %a.buf23, ptr %a.data.gep25, align 8
  %a.cap.gep26 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create21, i32 0, i32 2
  store i64 16, ptr %a.cap.gep26, align 8
  store ptr %a.create21, ptr %var.scs, align 8
  br label %a.after19

a.after19:                                        ; preds = %a.create18, %a.after
  %a.load227 = load ptr, ptr %var.scs, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load227, i32 0, i32 0
  %a.len.query28 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query28, ptr %var.new_idx, align 8
  %var.load29 = load ptr, ptr %var.new_scope, align 8
  %a.load30 = load ptr, ptr %var.scs, align 8
  %a.null31 = icmp eq ptr %a.load30, null
  br i1 %a.null31, label %a.create32, label %a.after33

a.create32:                                       ; preds = %a.after19
  %arena.cur34 = call ptr @dva_arena_current()
  %a.create35 = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 24)
  %arena.cur36 = call ptr @dva_arena_current()
  %a.buf37 = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 128)
  %a.len.gep38 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create35, i32 0, i32 0
  store i64 0, ptr %a.len.gep38, align 8
  %a.data.gep39 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create35, i32 0, i32 1
  store ptr %a.buf37, ptr %a.data.gep39, align 8
  %a.cap.gep40 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create35, i32 0, i32 2
  store i64 16, ptr %a.cap.gep40, align 8
  store ptr %a.create35, ptr %var.scs, align 8
  br label %a.after33

a.after33:                                        ; preds = %a.create32, %a.after19
  %a.load241 = load ptr, ptr %var.scs, align 8
  br label %a.check

a.check:                                          ; preds = %a.after33
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load241, i32 0, i32 0
  %a.len42 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load241, i32 0, i32 2
  %a.cap43 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len42, %a.cap43
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load241)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load241, i32 0, i32 1
  %a.cur.data44 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load241, i32 0, i32 0
  %a.cur.len45 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data44, i64 %a.cur.len45
  %slot.p2i = ptrtoint ptr %var.load29 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len45, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load241, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load46 = load ptr, ptr %var.env, align 8
  %var.load47 = load ptr, ptr %var.scs, align 8
  %a.load48 = load ptr, ptr %var.scs, align 8
  %a.null49 = icmp eq ptr %a.load48, null
  br i1 %a.null49, label %a.create50, label %a.after51

a.create50:                                       ; preds = %a.store
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
  store ptr %a.create53, ptr %var.scs, align 8
  br label %a.after51

a.after51:                                        ; preds = %a.create50, %a.store
  %a.load259 = load ptr, ptr %var.scs, align 8
  %fld.gep60 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load46, i32 0, i32 0
  store ptr %a.load259, ptr %fld.gep60, align 8
  %var.load61 = load ptr, ptr %var.env, align 8
  %var.load62 = load i64, ptr %var.new_idx, align 8
  %fld.gep63 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load61, i32 0, i32 1
  store i64 %var.load62, ptr %fld.gep63, align 8
  %var.load64 = load ptr, ptr %var.env, align 8
  %var.load65 = load ptr, ptr %var.env, align 8
  %fld.gep66 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load65, i32 0, i32 2
  %fld.load67 = load i64, ptr %fld.gep66, align 8
  %addtmp = add i64 %fld.load67, 1
  %fld.gep68 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load64, i32 0, i32 2
  store i64 %addtmp, ptr %fld.gep68, align 8
  ret void
}

define void @"type_env::leave_scope"(ptr %0) #1 {
entry:
  %var.cur_sc = alloca ptr, align 8
  %var._29 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.scs = alloca ptr, align 8
  %var.cur_idx = alloca i64, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.cur_idx, align 8
  %var.load1 = load i64, ptr %var.cur_idx, align 8
  %cmptmp = icmp sge i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load2, i32 0, i32 0
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  store ptr %fld.load4, ptr %var.scs, align 8
  %var.load5 = load ptr, ptr %var.scs, align 8
  %a.load = load ptr, ptr %var.scs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %choice.exit41, %entry
  ret void

a.create:                                         ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur7 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create6, ptr %var.scs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.scs, align 8
  %var.load8 = load i64, ptr %var.cur_idx, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.rd.len9 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load8, 0
  %a.rd.lt = icmp slt i64 %var.load8, %a.rd.len9
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.rd.data10 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data10, i64 %var.load8
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after
  %arena.cur11 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 147, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 32, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur12 = call ptr @dva_arena_current()
  %err.alloc13 = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 56)
  %err.code.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 0
  store i64 4011, ptr %err.code.gep14, align 8
  %err.msg.gep15 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep15, align 8
  %err.file.gep16 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep16, align 8
  %err.line.gep17 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 3
  store i64 147, ptr %err.line.gep17, align 8
  %err.col.gep18 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 4
  store i64 32, ptr %err.col.gep18, align 8
  %err.ctx.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 5
  %err.ctx0.gep20 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep19, i32 0, i32 0
  store i64 %var.load8, ptr %err.ctx0.gep20, align 8
  %err.ctx1.gep21 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep19, i32 0, i32 1
  store i64 %a.rd.len9, ptr %err.ctx1.gep21, align 8
  %err.p2i22 = ptrtoint ptr %err.alloc13 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i22, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag23 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag23, label %choice.then24, label %choice.else

choice.then24:                                    ; preds = %a.rd.done
  %ram.pay26 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay26 to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  br label %choice.exit25

choice.else:                                      ; preds = %a.rd.done
  %ram.pay27 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr28 = inttoptr i64 %ram.pay27 to ptr
  store ptr %pay.ptr28, ptr %var._29, align 8
  %call.res = call ptr @"type_env::empty_scope"()
  br label %choice.exit25

choice.exit25:                                    ; preds = %choice.else, %choice.then24
  %choice.res = phi ptr [ %pay.ptr, %choice.then24 ], [ %call.res, %choice.else ]
  store ptr %choice.res, ptr %var.cur_sc, align 8
  %var.load30 = load ptr, ptr %var.env, align 8
  %var.load31 = load ptr, ptr %var.cur_sc, align 8
  %fld.gep32 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load31, i32 0, i32 1
  %fld.load33 = load i64, ptr %fld.gep32, align 8
  %fld.gep34 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load30, i32 0, i32 1
  store i64 %fld.load33, ptr %fld.gep34, align 8
  %var.load35 = load ptr, ptr %var.env, align 8
  %fld.gep36 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load35, i32 0, i32 2
  %fld.load37 = load i64, ptr %fld.gep36, align 8
  %cmptmp38 = icmp sgt i64 %fld.load37, 0
  br i1 %cmptmp38, label %choice.then39, label %choice.else40

choice.then39:                                    ; preds = %choice.exit25
  %var.load42 = load ptr, ptr %var.env, align 8
  %var.load43 = load ptr, ptr %var.env, align 8
  %fld.gep44 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load43, i32 0, i32 2
  %fld.load45 = load i64, ptr %fld.gep44, align 8
  %subtmp = sub i64 %fld.load45, 1
  %fld.gep46 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load42, i32 0, i32 2
  store i64 %subtmp, ptr %fld.gep46, align 8
  br label %choice.exit41

choice.else40:                                    ; preds = %choice.exit25
  %var.load47 = load ptr, ptr %var.env, align 8
  %fld.gep48 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load47, i32 0, i32 2
  store i64 0, ptr %fld.gep48, align 8
  br label %choice.exit41

choice.exit41:                                    ; preds = %choice.else40, %choice.then39
  br label %choice.exit
}

define void @"type_env::bind_local"(ptr %0, ptr %1, ptr %2, ptr %3, i1 %4) #1 {
entry:
  %var._367 = alloca ptr, align 8
  %var._366 = alloca ptr, align 8
  %var._365 = alloca ptr, align 8
  %var.indices = alloca ptr, align 8
  %var.bnds = alloca ptr, align 8
  %var.cur_sc = alloca ptr, align 8
  %var._29 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.scs = alloca ptr, align 8
  %var.cur_idx = alloca i64, align 8
  %var.is_mut = alloca i1, align 1
  %var.ti = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  store ptr %2, ptr %var.ut, align 8
  store ptr %3, ptr %var.ti, align 8
  store i1 %4, ptr %var.is_mut, align 1
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.cur_idx, align 8
  %var.load1 = load i64, ptr %var.cur_idx, align 8
  %cmptmp = icmp sge i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load2, i32 0, i32 0
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  store ptr %fld.load4, ptr %var.scs, align 8
  %var.load5 = load ptr, ptr %var.scs, align 8
  %a.load = load ptr, ptr %var.scs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %a.after398, %entry
  ret void

a.create:                                         ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur7 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create6, ptr %var.scs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.scs, align 8
  %var.load8 = load i64, ptr %var.cur_idx, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.rd.len9 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load8, 0
  %a.rd.lt = icmp slt i64 %var.load8, %a.rd.len9
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.rd.data10 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data10, i64 %var.load8
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after
  %arena.cur11 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 159, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 32, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur12 = call ptr @dva_arena_current()
  %err.alloc13 = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 56)
  %err.code.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 0
  store i64 4011, ptr %err.code.gep14, align 8
  %err.msg.gep15 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep15, align 8
  %err.file.gep16 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep16, align 8
  %err.line.gep17 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 3
  store i64 159, ptr %err.line.gep17, align 8
  %err.col.gep18 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 4
  store i64 32, ptr %err.col.gep18, align 8
  %err.ctx.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 5
  %err.ctx0.gep20 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep19, i32 0, i32 0
  store i64 %var.load8, ptr %err.ctx0.gep20, align 8
  %err.ctx1.gep21 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep19, i32 0, i32 1
  store i64 %a.rd.len9, ptr %err.ctx1.gep21, align 8
  %err.p2i22 = ptrtoint ptr %err.alloc13 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i22, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag23 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag23, label %choice.then24, label %choice.else

choice.then24:                                    ; preds = %a.rd.done
  %ram.pay26 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay26 to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  br label %choice.exit25

choice.else:                                      ; preds = %a.rd.done
  %ram.pay27 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr28 = inttoptr i64 %ram.pay27 to ptr
  store ptr %pay.ptr28, ptr %var._29, align 8
  %call.res = call ptr @"type_env::empty_scope"()
  br label %choice.exit25

choice.exit25:                                    ; preds = %choice.else, %choice.then24
  %choice.res = phi ptr [ %pay.ptr, %choice.then24 ], [ %call.res, %choice.else ]
  store ptr %choice.res, ptr %var.cur_sc, align 8
  %var.load30 = load ptr, ptr %var.cur_sc, align 8
  %fld.gep31 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load30, i32 0, i32 0
  %fld.load32 = load ptr, ptr %fld.gep31, align 8
  store ptr %fld.load32, ptr %var.bnds, align 8
  %var.load33 = load ptr, ptr %var.cur_sc, align 8
  %fld.gep34 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load33, i32 0, i32 2
  %fld.load35 = load ptr, ptr %fld.gep34, align 8
  store ptr %fld.load35, ptr %var.indices, align 8
  %var.load36 = load ptr, ptr %var.indices, align 8
  %var.load37 = load ptr, ptr %var.name, align 8
  %var.load38 = load ptr, ptr %var.bnds, align 8
  %a.load39 = load ptr, ptr %var.bnds, align 8
  %a.null40 = icmp eq ptr %a.load39, null
  br i1 %a.null40, label %a.create41, label %a.after42

a.create41:                                       ; preds = %choice.exit25
  %arena.cur43 = call ptr @dva_arena_current()
  %a.create44 = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 24)
  %arena.cur45 = call ptr @dva_arena_current()
  %a.buf46 = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 128)
  %a.len.gep47 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create44, i32 0, i32 0
  store i64 0, ptr %a.len.gep47, align 8
  %a.data.gep48 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create44, i32 0, i32 1
  store ptr %a.buf46, ptr %a.data.gep48, align 8
  %a.cap.gep49 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create44, i32 0, i32 2
  store i64 16, ptr %a.cap.gep49, align 8
  store ptr %a.create44, ptr %var.bnds, align 8
  br label %a.after42

a.after42:                                        ; preds = %a.create41, %choice.exit25
  %a.load250 = load ptr, ptr %var.bnds, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load250, i32 0, i32 0
  %a.len.query51 = load i64, ptr %a.len.query, align 8
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 1
  %m.cap52 = load i64, ptr %m.cap, align 8
  %m.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 2
  %m.keys53 = load ptr, ptr %m.keys, align 8
  %m.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 3
  %m.vals54 = load ptr, ptr %m.vals, align 8
  %m.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 4
  %m.states55 = load ptr, ptr %m.states, align 8
  %mk.data = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %mk.data56 = load ptr, ptr %mk.data, align 8
  %mk.len = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %mk.len57 = load i64, ptr %mk.len, align 8
  %mk.len58 = and i64 %mk.len57, 281474976710655
  %str.tag = lshr i64 %mk.len57, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %a.after42
  %arena.cur59 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur59, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %a.after42
  %hash.str = call i64 @dva_hash_string(ptr %mk.data56, i64 %mk.len58)
  %m.capm1 = sub i64 %m.cap52, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.loop

str_stale:                                        ; preds = %str_gen_check
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

m.loop:                                           ; preds = %m.next, %str_ok
  %m.idx = phi i64 [ %m.idx0, %str_ok ], [ %m.idx.next, %m.next ]
  %m.tomb60 = phi i64 [ -1, %str_ok ], [ %m.next.tomb, %m.next ]
  %m.probe = phi i64 [ 0, %str_ok ], [ %m.probe.next, %m.next ]
  %m.reached.cap = icmp eq i64 %m.probe, %m.cap52
  %m.state.gep = getelementptr i8, ptr %m.states55, i64 %m.idx
  %m.state = load i8, ptr %m.state.gep, align 1
  %m.is.empty = icmp eq i8 %m.state, 0
  %m.stop = or i1 %m.is.empty, %m.reached.cap
  br i1 %m.stop, label %m.empty, label %m.check.tomb

m.check.tomb:                                     ; preds = %m.loop
  %m.is.tomb = icmp eq i8 %m.state, 2
  br i1 %m.is.tomb, label %m.tomb, label %m.found

m.tomb:                                           ; preds = %m.check.tomb
  %m.has.tomb = icmp ne i64 %m.tomb60, -1
  %m.tomb.sel = select i1 %m.has.tomb, i64 %m.tomb60, i64 %m.idx
  br label %m.next

m.found:                                          ; preds = %m.check.tomb
  %m.key.slot = getelementptr ptr, ptr %m.keys53, i64 %m.idx
  %mk.stored = load ptr, ptr %m.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen61 = load i64, ptr %mk.slen, align 8
  %mk.slen62 = and i64 %mk.slen61, 281474976710655
  %str.tag63 = lshr i64 %mk.slen61, 48
  %str.immortal64 = icmp eq i64 %str.tag63, 0
  br i1 %str.immortal64, label %str_ok66, label %str_gen_check65

m.overwrite:                                      ; preds = %mk.eq.merge
  %m.val.slot = getelementptr i64, ptr %m.vals54, i64 %m.idx
  store i64 %a.len.query51, ptr %m.val.slot, align 8
  br label %m.done

m.next:                                           ; preds = %mk.eq.merge, %m.tomb
  %m.next.tomb = phi i64 [ %m.tomb.sel, %m.tomb ], [ %m.tomb60, %mk.eq.merge ]
  %m.idx.add = add i64 %m.idx, 1
  %m.idx.next = and i64 %m.idx.add, %m.capm1
  %m.probe.next = add i64 %m.probe, 1
  br label %m.loop

m.empty:                                          ; preds = %m.loop
  %m.grow.cnt.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  %m.grow.cnt = load i64, ptr %m.grow.cnt.p, align 8
  %m.grow.tm.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 5
  %m.grow.tm = load i64, ptr %m.grow.tm.p, align 8
  %m.occupied = add i64 %m.grow.cnt, %m.grow.tm
  %m.c.plus = add i64 %m.occupied, 1
  %m.c.lhs = mul i64 %m.c.plus, 4
  %m.c.rhs = mul i64 %m.cap52, 3
  %m.need.grow = icmp sgt i64 %m.c.lhs, %m.c.rhs
  br i1 %m.need.grow, label %m.grow, label %m.ins.slot

m.done:                                           ; preds = %m.ins.slot, %m.done203, %m.overwrite
  %var.load279 = load ptr, ptr %var.name, align 8
  %var.load280 = load ptr, ptr %var.ut, align 8
  %var.load281 = load ptr, ptr %var.ti, align 8
  %var.load282 = load i1, ptr %var.is_mut, align 1
  %var.load283 = load ptr, ptr %var.env, align 8
  %fld.gep284 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load283, i32 0, i32 2
  %fld.load285 = load i64, ptr %fld.gep284, align 8
  %arena.cur286 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur286, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i1, i1, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load279, ptr %rec.fld, align 8
  %rec.fld287 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load280, ptr %rec.fld287, align 8
  %rec.fld288 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load281, ptr %rec.fld288, align 8
  %rec.fld289 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i1 %var.load282, ptr %rec.fld289, align 1
  %rec.fld290 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i1 false, ptr %rec.fld290, align 1
  %rec.fld291 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %fld.load285, ptr %rec.fld291, align 8
  %a.load292 = load ptr, ptr %var.bnds, align 8
  %a.null293 = icmp eq ptr %a.load292, null
  br i1 %a.null293, label %a.create294, label %a.after295

str_gen_check65:                                  ; preds = %m.found
  %arena.cur68 = call ptr @dva_arena_current()
  %tag.valid69 = call i1 @dva_arena_validate_tag(ptr %arena.cur68, i64 %str.tag63)
  br i1 %tag.valid69, label %str_ok66, label %str_stale67

str_ok66:                                         ; preds = %str_stale67, %str_gen_check65, %m.found
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %mk.nlen70 = load i64, ptr %mk.nlen, align 8
  %mk.nlen71 = and i64 %mk.nlen70, 281474976710655
  %str.tag72 = lshr i64 %mk.nlen70, 48
  %str.immortal73 = icmp eq i64 %str.tag72, 0
  br i1 %str.immortal73, label %str_ok75, label %str_gen_check74

str_stale67:                                      ; preds = %str_gen_check65
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok66

str_gen_check74:                                  ; preds = %str_ok66
  %arena.cur77 = call ptr @dva_arena_current()
  %tag.valid78 = call i1 @dva_arena_validate_tag(ptr %arena.cur77, i64 %str.tag72)
  br i1 %tag.valid78, label %str_ok75, label %str_stale76

str_ok75:                                         ; preds = %str_stale76, %str_gen_check74, %str_ok66
  %mk.lenseq = icmp eq i64 %mk.slen62, %mk.nlen71
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

str_stale76:                                      ; preds = %str_gen_check74
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok75

mk.eq.then:                                       ; preds = %str_ok75
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata79 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %mk.ndata80 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata79, ptr %mk.ndata80, i64 %mk.nlen71)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %str_ok75
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.overwrite, label %m.next

m.grow:                                           ; preds = %m.empty
  %m.old.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 1
  %m.old.cap81 = load i64, ptr %m.old.cap, align 8
  %m.old.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 2
  %m.old.keys82 = load ptr, ptr %m.old.keys, align 8
  %m.old.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 3
  %m.old.vals83 = load ptr, ptr %m.old.vals, align 8
  %m.old.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 4
  %m.old.states84 = load ptr, ptr %m.old.states, align 8
  %m.double.cap = mul i64 %m.old.cap81, 2
  %m.live.cnt = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  %m.live.cnt85 = load i64, ptr %m.live.cnt, align 8
  %m.live.x2 = mul i64 %m.live.cnt85, 2
  %m.should.double = icmp sgt i64 %m.live.x2, %m.old.cap81
  %m.new.cap = select i1 %m.should.double, i64 %m.double.cap, i64 %m.old.cap81
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur86 = call ptr @dva_arena_current()
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur86, i64 %m.gk.bytes)
  %m.gv.bytes = mul i64 %m.new.cap, 8
  %arena.cur87 = call ptr @dva_arena_current()
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 %m.gv.bytes)
  %arena.cur88 = call ptr @dva_arena_current()
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 %m.new.cap)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs, i8 0, i64 %m.new.cap, i1 false)
  %m.cap.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 1
  store i64 %m.new.cap, ptr %m.cap.gep, align 8
  %m.keys.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 2
  store ptr %m.gk, ptr %m.keys.gep, align 8
  %m.vals.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 3
  store ptr %m.gv, ptr %m.vals.gep, align 8
  %m.states.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 4
  store ptr %m.gs, ptr %m.states.gep, align 8
  %m.count.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  store i64 0, ptr %m.count.gep, align 8
  %m.tombs.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep, align 8
  br label %m.re.loop

m.ins.slot:                                       ; preds = %m.empty
  %m.use.tomb266 = icmp ne i64 %m.tomb60, -1
  %m.ins.idx267 = select i1 %m.use.tomb266, i64 %m.tomb60, i64 %m.idx
  %m.key.slot268 = getelementptr ptr, ptr %m.keys53, i64 %m.ins.idx267
  store ptr %var.load37, ptr %m.key.slot268, align 8
  %m.val.slot269 = getelementptr i64, ptr %m.vals54, i64 %m.ins.idx267
  store i64 %a.len.query51, ptr %m.val.slot269, align 8
  %m.ins.state.slot270 = getelementptr i8, ptr %m.states55, i64 %m.ins.idx267
  store i8 1, ptr %m.ins.state.slot270, align 1
  %m.count271 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  %m.count272 = load i64, ptr %m.count271, align 8
  %m.count.next273 = add i64 %m.count272, 1
  %m.count.gep274 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  store i64 %m.count.next273, ptr %m.count.gep274, align 8
  %m.ins.tombs.p275 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 5
  %m.ins.tombs276 = load i64, ptr %m.ins.tombs.p275, align 8
  %m.tomb.dec277 = select i1 %m.use.tomb266, i64 1, i64 0
  %m.ins.tombs.next278 = sub i64 %m.ins.tombs276, %m.tomb.dec277
  store i64 %m.ins.tombs.next278, ptr %m.ins.tombs.p275, align 8
  br label %m.done

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap81
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states84, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.done119, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  %m.cap173 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 1
  %m.cap174 = load i64, ptr %m.cap173, align 8
  %m.keys175 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 2
  %m.keys176 = load ptr, ptr %m.keys175, align 8
  %m.vals177 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 3
  %m.vals178 = load ptr, ptr %m.vals177, align 8
  %m.states179 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 4
  %m.states180 = load ptr, ptr %m.states179, align 8
  %mk.data181 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %mk.data182 = load ptr, ptr %mk.data181, align 8
  %mk.len183 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %mk.len184 = load i64, ptr %mk.len183, align 8
  %mk.len185 = and i64 %mk.len184, 281474976710655
  %str.tag186 = lshr i64 %mk.len184, 48
  %str.immortal187 = icmp eq i64 %str.tag186, 0
  br i1 %str.immortal187, label %str_ok189, label %str_gen_check188

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr ptr, ptr %m.old.keys82, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals83, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap89 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 1
  %m.cap90 = load i64, ptr %m.cap89, align 8
  %m.keys91 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 2
  %m.keys92 = load ptr, ptr %m.keys91, align 8
  %m.vals93 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 3
  %m.vals94 = load ptr, ptr %m.vals93, align 8
  %m.states95 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 4
  %m.states96 = load ptr, ptr %m.states95, align 8
  %mk.data97 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data98 = load ptr, ptr %mk.data97, align 8
  %mk.len99 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.len100 = load i64, ptr %mk.len99, align 8
  %mk.len101 = and i64 %mk.len100, 281474976710655
  %str.tag102 = lshr i64 %mk.len100, 48
  %str.immortal103 = icmp eq i64 %str.tag102, 0
  br i1 %str.immortal103, label %str_ok105, label %str_gen_check104

str_gen_check104:                                 ; preds = %m.re.ins
  %arena.cur107 = call ptr @dva_arena_current()
  %tag.valid108 = call i1 @dva_arena_validate_tag(ptr %arena.cur107, i64 %str.tag102)
  br i1 %tag.valid108, label %str_ok105, label %str_stale106

str_ok105:                                        ; preds = %str_stale106, %str_gen_check104, %m.re.ins
  %hash.str109 = call i64 @dva_hash_string(ptr %mk.data98, i64 %mk.len101)
  %m.capm1110 = sub i64 %m.cap90, 1
  %m.idx0111 = and i64 %hash.str109, %m.capm1110
  br label %m.loop112

str_stale106:                                     ; preds = %str_gen_check104
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok105

m.loop112:                                        ; preds = %m.next117, %str_ok105
  %m.idx120 = phi i64 [ %m.idx0111, %str_ok105 ], [ %m.idx.next167, %m.next117 ]
  %m.tomb121 = phi i64 [ -1, %str_ok105 ], [ %m.next.tomb165, %m.next117 ]
  %m.probe122 = phi i64 [ 0, %str_ok105 ], [ %m.probe.next168, %m.next117 ]
  %m.reached.cap123 = icmp eq i64 %m.probe122, %m.cap90
  %m.state.gep124 = getelementptr i8, ptr %m.states96, i64 %m.idx120
  %m.state125 = load i8, ptr %m.state.gep124, align 1
  %m.is.empty126 = icmp eq i8 %m.state125, 0
  %m.stop127 = or i1 %m.is.empty126, %m.reached.cap123
  br i1 %m.stop127, label %m.empty118, label %m.check.tomb113

m.check.tomb113:                                  ; preds = %m.loop112
  %m.is.tomb128 = icmp eq i8 %m.state125, 2
  br i1 %m.is.tomb128, label %m.tomb114, label %m.found115

m.tomb114:                                        ; preds = %m.check.tomb113
  %m.has.tomb129 = icmp ne i64 %m.tomb121, -1
  %m.tomb.sel130 = select i1 %m.has.tomb129, i64 %m.tomb121, i64 %m.idx120
  br label %m.next117

m.found115:                                       ; preds = %m.check.tomb113
  %m.key.slot131 = getelementptr ptr, ptr %m.keys92, i64 %m.idx120
  %mk.stored132 = load ptr, ptr %m.key.slot131, align 8
  %mk.slen133 = getelementptr inbounds { i64, ptr }, ptr %mk.stored132, i32 0, i32 0
  %mk.slen134 = load i64, ptr %mk.slen133, align 8
  %mk.slen135 = and i64 %mk.slen134, 281474976710655
  %str.tag136 = lshr i64 %mk.slen134, 48
  %str.immortal137 = icmp eq i64 %str.tag136, 0
  br i1 %str.immortal137, label %str_ok139, label %str_gen_check138

m.overwrite116:                                   ; preds = %mk.eq.merge156
  %m.val.slot164 = getelementptr i64, ptr %m.vals94, i64 %m.idx120
  store i64 %m.re.val, ptr %m.val.slot164, align 8
  br label %m.done119

m.next117:                                        ; preds = %mk.eq.merge156, %m.tomb114
  %m.next.tomb165 = phi i64 [ %m.tomb.sel130, %m.tomb114 ], [ %m.tomb121, %mk.eq.merge156 ]
  %m.idx.add166 = add i64 %m.idx120, 1
  %m.idx.next167 = and i64 %m.idx.add166, %m.capm1110
  %m.probe.next168 = add i64 %m.probe122, 1
  br label %m.loop112

m.empty118:                                       ; preds = %m.loop112
  %m.use.tomb = icmp ne i64 %m.tomb121, -1
  %m.ins.idx = select i1 %m.use.tomb, i64 %m.tomb121, i64 %m.idx120
  %m.key.slot169 = getelementptr ptr, ptr %m.keys92, i64 %m.ins.idx
  store ptr %m.re.key, ptr %m.key.slot169, align 8
  %m.val.slot170 = getelementptr i64, ptr %m.vals94, i64 %m.ins.idx
  store i64 %m.re.val, ptr %m.val.slot170, align 8
  %m.ins.state.slot = getelementptr i8, ptr %m.states96, i64 %m.ins.idx
  store i8 1, ptr %m.ins.state.slot, align 1
  %m.count = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  %m.count171 = load i64, ptr %m.count, align 8
  %m.count.next = add i64 %m.count171, 1
  %m.count.gep172 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  store i64 %m.count.next, ptr %m.count.gep172, align 8
  %m.ins.tombs.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 5
  %m.ins.tombs = load i64, ptr %m.ins.tombs.p, align 8
  %m.tomb.dec = select i1 %m.use.tomb, i64 1, i64 0
  %m.ins.tombs.next = sub i64 %m.ins.tombs, %m.tomb.dec
  store i64 %m.ins.tombs.next, ptr %m.ins.tombs.p, align 8
  br label %m.done119

m.done119:                                        ; preds = %m.empty118, %m.overwrite116
  br label %m.re.cont

str_gen_check138:                                 ; preds = %m.found115
  %arena.cur141 = call ptr @dva_arena_current()
  %tag.valid142 = call i1 @dva_arena_validate_tag(ptr %arena.cur141, i64 %str.tag136)
  br i1 %tag.valid142, label %str_ok139, label %str_stale140

str_ok139:                                        ; preds = %str_stale140, %str_gen_check138, %m.found115
  %mk.nlen143 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.nlen144 = load i64, ptr %mk.nlen143, align 8
  %mk.nlen145 = and i64 %mk.nlen144, 281474976710655
  %str.tag146 = lshr i64 %mk.nlen144, 48
  %str.immortal147 = icmp eq i64 %str.tag146, 0
  br i1 %str.immortal147, label %str_ok149, label %str_gen_check148

str_stale140:                                     ; preds = %str_gen_check138
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok139

str_gen_check148:                                 ; preds = %str_ok139
  %arena.cur151 = call ptr @dva_arena_current()
  %tag.valid152 = call i1 @dva_arena_validate_tag(ptr %arena.cur151, i64 %str.tag146)
  br i1 %tag.valid152, label %str_ok149, label %str_stale150

str_ok149:                                        ; preds = %str_stale150, %str_gen_check148, %str_ok139
  %mk.lenseq153 = icmp eq i64 %mk.slen135, %mk.nlen145
  br i1 %mk.lenseq153, label %mk.eq.then154, label %mk.eq.else155

str_stale150:                                     ; preds = %str_gen_check148
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok149

mk.eq.then154:                                    ; preds = %str_ok149
  %mk.sdata157 = getelementptr inbounds { i64, ptr }, ptr %mk.stored132, i32 0, i32 1
  %mk.sdata158 = load ptr, ptr %mk.sdata157, align 8
  %mk.ndata159 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.ndata160 = load ptr, ptr %mk.ndata159, align 8
  %mk.memcmp161 = call i32 @memcmp(ptr %mk.sdata158, ptr %mk.ndata160, i64 %mk.nlen145)
  %mk.cmpeq162 = icmp eq i32 %mk.memcmp161, 0
  br label %mk.eq.merge156

mk.eq.else155:                                    ; preds = %str_ok149
  br label %mk.eq.merge156

mk.eq.merge156:                                   ; preds = %mk.eq.else155, %mk.eq.then154
  %mk.eq163 = phi i1 [ %mk.cmpeq162, %mk.eq.then154 ], [ false, %mk.eq.else155 ]
  br i1 %mk.eq163, label %m.overwrite116, label %m.next117

str_gen_check188:                                 ; preds = %m.re.done
  %arena.cur191 = call ptr @dva_arena_current()
  %tag.valid192 = call i1 @dva_arena_validate_tag(ptr %arena.cur191, i64 %str.tag186)
  br i1 %tag.valid192, label %str_ok189, label %str_stale190

str_ok189:                                        ; preds = %str_stale190, %str_gen_check188, %m.re.done
  %hash.str193 = call i64 @dva_hash_string(ptr %mk.data182, i64 %mk.len185)
  %m.capm1194 = sub i64 %m.cap174, 1
  %m.idx0195 = and i64 %hash.str193, %m.capm1194
  br label %m.loop196

str_stale190:                                     ; preds = %str_gen_check188
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok189

m.loop196:                                        ; preds = %m.next201, %str_ok189
  %m.idx204 = phi i64 [ %m.idx0195, %str_ok189 ], [ %m.idx.next251, %m.next201 ]
  %m.tomb205 = phi i64 [ -1, %str_ok189 ], [ %m.next.tomb249, %m.next201 ]
  %m.probe206 = phi i64 [ 0, %str_ok189 ], [ %m.probe.next252, %m.next201 ]
  %m.reached.cap207 = icmp eq i64 %m.probe206, %m.cap174
  %m.state.gep208 = getelementptr i8, ptr %m.states180, i64 %m.idx204
  %m.state209 = load i8, ptr %m.state.gep208, align 1
  %m.is.empty210 = icmp eq i8 %m.state209, 0
  %m.stop211 = or i1 %m.is.empty210, %m.reached.cap207
  br i1 %m.stop211, label %m.empty202, label %m.check.tomb197

m.check.tomb197:                                  ; preds = %m.loop196
  %m.is.tomb212 = icmp eq i8 %m.state209, 2
  br i1 %m.is.tomb212, label %m.tomb198, label %m.found199

m.tomb198:                                        ; preds = %m.check.tomb197
  %m.has.tomb213 = icmp ne i64 %m.tomb205, -1
  %m.tomb.sel214 = select i1 %m.has.tomb213, i64 %m.tomb205, i64 %m.idx204
  br label %m.next201

m.found199:                                       ; preds = %m.check.tomb197
  %m.key.slot215 = getelementptr ptr, ptr %m.keys176, i64 %m.idx204
  %mk.stored216 = load ptr, ptr %m.key.slot215, align 8
  %mk.slen217 = getelementptr inbounds { i64, ptr }, ptr %mk.stored216, i32 0, i32 0
  %mk.slen218 = load i64, ptr %mk.slen217, align 8
  %mk.slen219 = and i64 %mk.slen218, 281474976710655
  %str.tag220 = lshr i64 %mk.slen218, 48
  %str.immortal221 = icmp eq i64 %str.tag220, 0
  br i1 %str.immortal221, label %str_ok223, label %str_gen_check222

m.overwrite200:                                   ; preds = %mk.eq.merge240
  %m.val.slot248 = getelementptr i64, ptr %m.vals178, i64 %m.idx204
  store i64 %a.len.query51, ptr %m.val.slot248, align 8
  br label %m.done203

m.next201:                                        ; preds = %mk.eq.merge240, %m.tomb198
  %m.next.tomb249 = phi i64 [ %m.tomb.sel214, %m.tomb198 ], [ %m.tomb205, %mk.eq.merge240 ]
  %m.idx.add250 = add i64 %m.idx204, 1
  %m.idx.next251 = and i64 %m.idx.add250, %m.capm1194
  %m.probe.next252 = add i64 %m.probe206, 1
  br label %m.loop196

m.empty202:                                       ; preds = %m.loop196
  %m.use.tomb253 = icmp ne i64 %m.tomb205, -1
  %m.ins.idx254 = select i1 %m.use.tomb253, i64 %m.tomb205, i64 %m.idx204
  %m.key.slot255 = getelementptr ptr, ptr %m.keys176, i64 %m.ins.idx254
  store ptr %var.load37, ptr %m.key.slot255, align 8
  %m.val.slot256 = getelementptr i64, ptr %m.vals178, i64 %m.ins.idx254
  store i64 %a.len.query51, ptr %m.val.slot256, align 8
  %m.ins.state.slot257 = getelementptr i8, ptr %m.states180, i64 %m.ins.idx254
  store i8 1, ptr %m.ins.state.slot257, align 1
  %m.count258 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  %m.count259 = load i64, ptr %m.count258, align 8
  %m.count.next260 = add i64 %m.count259, 1
  %m.count.gep261 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 0
  store i64 %m.count.next260, ptr %m.count.gep261, align 8
  %m.ins.tombs.p262 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load36, i32 0, i32 5
  %m.ins.tombs263 = load i64, ptr %m.ins.tombs.p262, align 8
  %m.tomb.dec264 = select i1 %m.use.tomb253, i64 1, i64 0
  %m.ins.tombs.next265 = sub i64 %m.ins.tombs263, %m.tomb.dec264
  store i64 %m.ins.tombs.next265, ptr %m.ins.tombs.p262, align 8
  br label %m.done203

m.done203:                                        ; preds = %m.empty202, %m.overwrite200
  br label %m.done

str_gen_check222:                                 ; preds = %m.found199
  %arena.cur225 = call ptr @dva_arena_current()
  %tag.valid226 = call i1 @dva_arena_validate_tag(ptr %arena.cur225, i64 %str.tag220)
  br i1 %tag.valid226, label %str_ok223, label %str_stale224

str_ok223:                                        ; preds = %str_stale224, %str_gen_check222, %m.found199
  %mk.nlen227 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %mk.nlen228 = load i64, ptr %mk.nlen227, align 8
  %mk.nlen229 = and i64 %mk.nlen228, 281474976710655
  %str.tag230 = lshr i64 %mk.nlen228, 48
  %str.immortal231 = icmp eq i64 %str.tag230, 0
  br i1 %str.immortal231, label %str_ok233, label %str_gen_check232

str_stale224:                                     ; preds = %str_gen_check222
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok223

str_gen_check232:                                 ; preds = %str_ok223
  %arena.cur235 = call ptr @dva_arena_current()
  %tag.valid236 = call i1 @dva_arena_validate_tag(ptr %arena.cur235, i64 %str.tag230)
  br i1 %tag.valid236, label %str_ok233, label %str_stale234

str_ok233:                                        ; preds = %str_stale234, %str_gen_check232, %str_ok223
  %mk.lenseq237 = icmp eq i64 %mk.slen219, %mk.nlen229
  br i1 %mk.lenseq237, label %mk.eq.then238, label %mk.eq.else239

str_stale234:                                     ; preds = %str_gen_check232
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok233

mk.eq.then238:                                    ; preds = %str_ok233
  %mk.sdata241 = getelementptr inbounds { i64, ptr }, ptr %mk.stored216, i32 0, i32 1
  %mk.sdata242 = load ptr, ptr %mk.sdata241, align 8
  %mk.ndata243 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %mk.ndata244 = load ptr, ptr %mk.ndata243, align 8
  %mk.memcmp245 = call i32 @memcmp(ptr %mk.sdata242, ptr %mk.ndata244, i64 %mk.nlen229)
  %mk.cmpeq246 = icmp eq i32 %mk.memcmp245, 0
  br label %mk.eq.merge240

mk.eq.else239:                                    ; preds = %str_ok233
  br label %mk.eq.merge240

mk.eq.merge240:                                   ; preds = %mk.eq.else239, %mk.eq.then238
  %mk.eq247 = phi i1 [ %mk.cmpeq246, %mk.eq.then238 ], [ false, %mk.eq.else239 ]
  br i1 %mk.eq247, label %m.overwrite200, label %m.next201

a.create294:                                      ; preds = %m.done
  %arena.cur296 = call ptr @dva_arena_current()
  %a.create297 = call ptr @dva_arena_alloc(ptr %arena.cur296, i64 24)
  %arena.cur298 = call ptr @dva_arena_current()
  %a.buf299 = call ptr @dva_arena_alloc(ptr %arena.cur298, i64 128)
  %a.len.gep300 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create297, i32 0, i32 0
  store i64 0, ptr %a.len.gep300, align 8
  %a.data.gep301 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create297, i32 0, i32 1
  store ptr %a.buf299, ptr %a.data.gep301, align 8
  %a.cap.gep302 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create297, i32 0, i32 2
  store i64 16, ptr %a.cap.gep302, align 8
  store ptr %a.create297, ptr %var.bnds, align 8
  br label %a.after295

a.after295:                                       ; preds = %a.create294, %m.done
  %a.load2303 = load ptr, ptr %var.bnds, align 8
  br label %a.check

a.check:                                          ; preds = %a.after295
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2303, i32 0, i32 0
  %a.len304 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2303, i32 0, i32 2
  %a.cap305 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len304, %a.cap305
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2303)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2303, i32 0, i32 1
  %a.cur.data306 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2303, i32 0, i32 0
  %a.cur.len307 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data306, i64 %a.cur.len307
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len307, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2303, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load308 = load ptr, ptr %var.cur_sc, align 8
  %var.load309 = load ptr, ptr %var.bnds, align 8
  %a.load310 = load ptr, ptr %var.bnds, align 8
  %a.null311 = icmp eq ptr %a.load310, null
  br i1 %a.null311, label %a.create312, label %a.after313

a.create312:                                      ; preds = %a.store
  %arena.cur314 = call ptr @dva_arena_current()
  %a.create315 = call ptr @dva_arena_alloc(ptr %arena.cur314, i64 24)
  %arena.cur316 = call ptr @dva_arena_current()
  %a.buf317 = call ptr @dva_arena_alloc(ptr %arena.cur316, i64 128)
  %a.len.gep318 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create315, i32 0, i32 0
  store i64 0, ptr %a.len.gep318, align 8
  %a.data.gep319 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create315, i32 0, i32 1
  store ptr %a.buf317, ptr %a.data.gep319, align 8
  %a.cap.gep320 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create315, i32 0, i32 2
  store i64 16, ptr %a.cap.gep320, align 8
  store ptr %a.create315, ptr %var.bnds, align 8
  br label %a.after313

a.after313:                                       ; preds = %a.create312, %a.store
  %a.load2321 = load ptr, ptr %var.bnds, align 8
  %fld.gep322 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load308, i32 0, i32 0
  store ptr %a.load2321, ptr %fld.gep322, align 8
  %var.load323 = load ptr, ptr %var.scs, align 8
  %a.load324 = load ptr, ptr %var.scs, align 8
  %a.null325 = icmp eq ptr %a.load324, null
  br i1 %a.null325, label %a.create326, label %a.after327

a.create326:                                      ; preds = %a.after313
  %arena.cur328 = call ptr @dva_arena_current()
  %a.create329 = call ptr @dva_arena_alloc(ptr %arena.cur328, i64 24)
  %arena.cur330 = call ptr @dva_arena_current()
  %a.buf331 = call ptr @dva_arena_alloc(ptr %arena.cur330, i64 128)
  %a.len.gep332 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create329, i32 0, i32 0
  store i64 0, ptr %a.len.gep332, align 8
  %a.data.gep333 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create329, i32 0, i32 1
  store ptr %a.buf331, ptr %a.data.gep333, align 8
  %a.cap.gep334 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create329, i32 0, i32 2
  store i64 16, ptr %a.cap.gep334, align 8
  store ptr %a.create329, ptr %var.scs, align 8
  br label %a.after327

a.after327:                                       ; preds = %a.create326, %a.after313
  %a.load2335 = load ptr, ptr %var.scs, align 8
  %var.load336 = load i64, ptr %var.cur_idx, align 8
  %var.load337 = load ptr, ptr %var.cur_sc, align 8
  %slot.p2i338 = ptrtoint ptr %var.load337 to i64
  %a.wr.nonnull = icmp ne ptr %a.load2335, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after327
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2335, i32 0, i32 0
  %a.wr.len339 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load336, 0
  %a.wr.lt = icmp slt i64 %var.load336, %a.wr.len339
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2335, i32 0, i32 1
  %a.wr.data340 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep341 = getelementptr i64, ptr %a.wr.data340, i64 %var.load336
  store i64 %slot.p2i338, ptr %a.elem.gep341, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after327
  %arena.cur342 = call ptr @dva_arena_current()
  %err.alloc343 = call ptr @dva_arena_alloc(ptr %arena.cur342, i64 56)
  %err.code.gep344 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc343, i32 0, i32 0
  store i64 4011, ptr %err.code.gep344, align 8
  %err.msg.gep345 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc343, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep345, align 8
  %err.file.gep346 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc343, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep346, align 8
  %err.line.gep347 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc343, i32 0, i32 3
  store i64 0, ptr %err.line.gep347, align 8
  %err.col.gep348 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc343, i32 0, i32 4
  store i64 0, ptr %err.col.gep348, align 8
  %err.ctx.gep349 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc343, i32 0, i32 5
  %err.ctx0.gep350 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep349, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep350, align 8
  %err.ctx1.gep351 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep349, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep351, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur352 = call ptr @dva_arena_current()
  %err.alloc353 = call ptr @dva_arena_alloc(ptr %arena.cur352, i64 56)
  %err.code.gep354 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc353, i32 0, i32 0
  store i64 4011, ptr %err.code.gep354, align 8
  %err.msg.gep355 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc353, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep355, align 8
  %err.file.gep356 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc353, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep356, align 8
  %err.line.gep357 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc353, i32 0, i32 3
  store i64 0, ptr %err.line.gep357, align 8
  %err.col.gep358 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc353, i32 0, i32 4
  store i64 0, ptr %err.col.gep358, align 8
  %err.ctx.gep359 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc353, i32 0, i32 5
  %err.ctx0.gep360 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep359, i32 0, i32 0
  store i64 %var.load336, ptr %err.ctx0.gep360, align 8
  %err.ctx1.gep361 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep359, i32 0, i32 1
  store i64 %a.wr.len339, ptr %err.ctx1.gep361, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc343, %a.wr.err.null ], [ %err.alloc353, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then362, label %choice.else363

choice.then362:                                   ; preds = %a.wr.done
  br label %choice.exit364

choice.else363:                                   ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._365, align 8
  store ptr %a.wr.niche, ptr %var._366, align 8
  store ptr %a.wr.niche, ptr %var._367, align 8
  %err.code.gep368 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep368, align 8
  %err.msg.gep369 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep369, align 8
  %err.file.gep370 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep370, align 8
  %err.line.gep371 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep371, align 8
  %err.col.gep372 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep372, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len373 = load i64, ptr %err.msg.len, align 8
  %err.msg.len374 = and i64 %err.msg.len373, 281474976710655
  %str.tag375 = lshr i64 %err.msg.len373, 48
  %str.immortal376 = icmp eq i64 %str.tag375, 0
  br i1 %str.immortal376, label %str_ok378, label %str_gen_check377

choice.exit364:                                   ; preds = %err.abort, %choice.then362
  %var.load393 = load ptr, ptr %var.env, align 8
  %var.load394 = load ptr, ptr %var.scs, align 8
  %a.load395 = load ptr, ptr %var.scs, align 8
  %a.null396 = icmp eq ptr %a.load395, null
  br i1 %a.null396, label %a.create397, label %a.after398

str_gen_check377:                                 ; preds = %choice.else363
  %arena.cur380 = call ptr @dva_arena_current()
  %tag.valid381 = call i1 @dva_arena_validate_tag(ptr %arena.cur380, i64 %str.tag375)
  br i1 %tag.valid381, label %str_ok378, label %str_stale379

str_ok378:                                        ; preds = %str_stale379, %str_gen_check377, %choice.else363
  %err.msg.len32 = trunc i64 %err.msg.len374 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data382 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len383 = load i64, ptr %err.file.len, align 8
  %err.file.len384 = and i64 %err.file.len383, 281474976710655
  %str.tag385 = lshr i64 %err.file.len383, 48
  %str.immortal386 = icmp eq i64 %str.tag385, 0
  br i1 %str.immortal386, label %str_ok388, label %str_gen_check387

str_stale379:                                     ; preds = %str_gen_check377
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok378

str_gen_check387:                                 ; preds = %str_ok378
  %arena.cur390 = call ptr @dva_arena_current()
  %tag.valid391 = call i1 @dva_arena_validate_tag(ptr %arena.cur390, i64 %str.tag385)
  br i1 %tag.valid391, label %str_ok388, label %str_stale389

str_ok388:                                        ; preds = %str_stale389, %str_gen_check387, %str_ok378
  %err.file.len32 = trunc i64 %err.file.len384 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data392 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale389:                                     ; preds = %str_gen_check387
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok388

err.thread:                                       ; preds = %str_ok388
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok388
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data382, i32 %err.file.len32, ptr %err.file.data392, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit364

a.create397:                                      ; preds = %choice.exit364
  %arena.cur399 = call ptr @dva_arena_current()
  %a.create400 = call ptr @dva_arena_alloc(ptr %arena.cur399, i64 24)
  %arena.cur401 = call ptr @dva_arena_current()
  %a.buf402 = call ptr @dva_arena_alloc(ptr %arena.cur401, i64 128)
  %a.len.gep403 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create400, i32 0, i32 0
  store i64 0, ptr %a.len.gep403, align 8
  %a.data.gep404 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create400, i32 0, i32 1
  store ptr %a.buf402, ptr %a.data.gep404, align 8
  %a.cap.gep405 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create400, i32 0, i32 2
  store i64 16, ptr %a.cap.gep405, align 8
  store ptr %a.create400, ptr %var.scs, align 8
  br label %a.after398

a.after398:                                       ; preds = %a.create397, %choice.exit364
  %a.load2406 = load ptr, ptr %var.scs, align 8
  %fld.gep407 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load393, i32 0, i32 0
  store ptr %a.load2406, ptr %fld.gep407, align 8
  br label %choice.exit
}

define void @"type_env::unbind_local"(ptr %0, ptr %1) #1 {
entry:
  %var._304 = alloca ptr, align 8
  %var._303 = alloca ptr, align 8
  %var._302 = alloca ptr, align 8
  %var.indices = alloca ptr, align 8
  %var.cur_sc = alloca ptr, align 8
  %var._29 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.scs = alloca ptr, align 8
  %var.cur_idx = alloca i64, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.cur_idx, align 8
  %var.load1 = load i64, ptr %var.cur_idx, align 8
  %cmptmp = icmp sge i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load2, i32 0, i32 0
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  store ptr %fld.load4, ptr %var.scs, align 8
  %var.load5 = load ptr, ptr %var.scs, align 8
  %a.load = load ptr, ptr %var.scs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %a.after335, %entry
  ret void

a.create:                                         ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur7 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create6, ptr %var.scs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.scs, align 8
  %var.load8 = load i64, ptr %var.cur_idx, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.rd.len9 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load8, 0
  %a.rd.lt = icmp slt i64 %var.load8, %a.rd.len9
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.rd.data10 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data10, i64 %var.load8
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after
  %arena.cur11 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 174, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 32, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur12 = call ptr @dva_arena_current()
  %err.alloc13 = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 56)
  %err.code.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 0
  store i64 4011, ptr %err.code.gep14, align 8
  %err.msg.gep15 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep15, align 8
  %err.file.gep16 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep16, align 8
  %err.line.gep17 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 3
  store i64 174, ptr %err.line.gep17, align 8
  %err.col.gep18 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 4
  store i64 32, ptr %err.col.gep18, align 8
  %err.ctx.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 5
  %err.ctx0.gep20 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep19, i32 0, i32 0
  store i64 %var.load8, ptr %err.ctx0.gep20, align 8
  %err.ctx1.gep21 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep19, i32 0, i32 1
  store i64 %a.rd.len9, ptr %err.ctx1.gep21, align 8
  %err.p2i22 = ptrtoint ptr %err.alloc13 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i22, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag23 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag23, label %choice.then24, label %choice.else

choice.then24:                                    ; preds = %a.rd.done
  %ram.pay26 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay26 to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  br label %choice.exit25

choice.else:                                      ; preds = %a.rd.done
  %ram.pay27 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr28 = inttoptr i64 %ram.pay27 to ptr
  store ptr %pay.ptr28, ptr %var._29, align 8
  %call.res = call ptr @"type_env::empty_scope"()
  br label %choice.exit25

choice.exit25:                                    ; preds = %choice.else, %choice.then24
  %choice.res = phi ptr [ %pay.ptr, %choice.then24 ], [ %call.res, %choice.else ]
  store ptr %choice.res, ptr %var.cur_sc, align 8
  %var.load30 = load ptr, ptr %var.cur_sc, align 8
  %fld.gep31 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load30, i32 0, i32 2
  %fld.load32 = load ptr, ptr %fld.gep31, align 8
  store ptr %fld.load32, ptr %var.indices, align 8
  %var.load33 = load ptr, ptr %var.indices, align 8
  %var.load34 = load ptr, ptr %var.name, align 8
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 1
  %m.cap35 = load i64, ptr %m.cap, align 8
  %m.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 2
  %m.keys36 = load ptr, ptr %m.keys, align 8
  %m.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 3
  %m.vals37 = load ptr, ptr %m.vals, align 8
  %m.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 4
  %m.states38 = load ptr, ptr %m.states, align 8
  %mk.data = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %mk.data39 = load ptr, ptr %mk.data, align 8
  %mk.len = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %mk.len40 = load i64, ptr %mk.len, align 8
  %mk.len41 = and i64 %mk.len40, 281474976710655
  %str.tag = lshr i64 %mk.len40, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit25
  %arena.cur42 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur42, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit25
  %hash.str = call i64 @dva_hash_string(ptr %mk.data39, i64 %mk.len41)
  %m.capm1 = sub i64 %m.cap35, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.loop

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

m.loop:                                           ; preds = %m.next, %str_ok
  %m.idx = phi i64 [ %m.idx0, %str_ok ], [ %m.idx.next, %m.next ]
  %m.tomb43 = phi i64 [ -1, %str_ok ], [ %m.next.tomb, %m.next ]
  %m.probe = phi i64 [ 0, %str_ok ], [ %m.probe.next, %m.next ]
  %m.reached.cap = icmp eq i64 %m.probe, %m.cap35
  %m.state.gep = getelementptr i8, ptr %m.states38, i64 %m.idx
  %m.state = load i8, ptr %m.state.gep, align 1
  %m.is.empty = icmp eq i8 %m.state, 0
  %m.stop = or i1 %m.is.empty, %m.reached.cap
  br i1 %m.stop, label %m.empty, label %m.check.tomb

m.check.tomb:                                     ; preds = %m.loop
  %m.is.tomb = icmp eq i8 %m.state, 2
  br i1 %m.is.tomb, label %m.tomb, label %m.found

m.tomb:                                           ; preds = %m.check.tomb
  %m.has.tomb = icmp ne i64 %m.tomb43, -1
  %m.tomb.sel = select i1 %m.has.tomb, i64 %m.tomb43, i64 %m.idx
  br label %m.next

m.found:                                          ; preds = %m.check.tomb
  %m.key.slot = getelementptr ptr, ptr %m.keys36, i64 %m.idx
  %mk.stored = load ptr, ptr %m.key.slot, align 8
  %mk.slen = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 0
  %mk.slen44 = load i64, ptr %mk.slen, align 8
  %mk.slen45 = and i64 %mk.slen44, 281474976710655
  %str.tag46 = lshr i64 %mk.slen44, 48
  %str.immortal47 = icmp eq i64 %str.tag46, 0
  br i1 %str.immortal47, label %str_ok49, label %str_gen_check48

m.overwrite:                                      ; preds = %mk.eq.merge
  %m.val.slot = getelementptr i64, ptr %m.vals37, i64 %m.idx
  store i64 -1, ptr %m.val.slot, align 8
  br label %m.done

m.next:                                           ; preds = %mk.eq.merge, %m.tomb
  %m.next.tomb = phi i64 [ %m.tomb.sel, %m.tomb ], [ %m.tomb43, %mk.eq.merge ]
  %m.idx.add = add i64 %m.idx, 1
  %m.idx.next = and i64 %m.idx.add, %m.capm1
  %m.probe.next = add i64 %m.probe, 1
  br label %m.loop

m.empty:                                          ; preds = %m.loop
  %m.grow.cnt.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  %m.grow.cnt = load i64, ptr %m.grow.cnt.p, align 8
  %m.grow.tm.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 5
  %m.grow.tm = load i64, ptr %m.grow.tm.p, align 8
  %m.occupied = add i64 %m.grow.cnt, %m.grow.tm
  %m.c.plus = add i64 %m.occupied, 1
  %m.c.lhs = mul i64 %m.c.plus, 4
  %m.c.rhs = mul i64 %m.cap35, 3
  %m.need.grow = icmp sgt i64 %m.c.lhs, %m.c.rhs
  br i1 %m.need.grow, label %m.grow, label %m.ins.slot

m.done:                                           ; preds = %m.ins.slot, %m.done186, %m.overwrite
  %var.load262 = load ptr, ptr %var.scs, align 8
  %a.load263 = load ptr, ptr %var.scs, align 8
  %a.null264 = icmp eq ptr %a.load263, null
  br i1 %a.null264, label %a.create265, label %a.after266

str_gen_check48:                                  ; preds = %m.found
  %arena.cur51 = call ptr @dva_arena_current()
  %tag.valid52 = call i1 @dva_arena_validate_tag(ptr %arena.cur51, i64 %str.tag46)
  br i1 %tag.valid52, label %str_ok49, label %str_stale50

str_ok49:                                         ; preds = %str_stale50, %str_gen_check48, %m.found
  %mk.nlen = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %mk.nlen53 = load i64, ptr %mk.nlen, align 8
  %mk.nlen54 = and i64 %mk.nlen53, 281474976710655
  %str.tag55 = lshr i64 %mk.nlen53, 48
  %str.immortal56 = icmp eq i64 %str.tag55, 0
  br i1 %str.immortal56, label %str_ok58, label %str_gen_check57

str_stale50:                                      ; preds = %str_gen_check48
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok49

str_gen_check57:                                  ; preds = %str_ok49
  %arena.cur60 = call ptr @dva_arena_current()
  %tag.valid61 = call i1 @dva_arena_validate_tag(ptr %arena.cur60, i64 %str.tag55)
  br i1 %tag.valid61, label %str_ok58, label %str_stale59

str_ok58:                                         ; preds = %str_stale59, %str_gen_check57, %str_ok49
  %mk.lenseq = icmp eq i64 %mk.slen45, %mk.nlen54
  br i1 %mk.lenseq, label %mk.eq.then, label %mk.eq.else

str_stale59:                                      ; preds = %str_gen_check57
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok58

mk.eq.then:                                       ; preds = %str_ok58
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata62 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %mk.ndata63 = load ptr, ptr %mk.ndata, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata62, ptr %mk.ndata63, i64 %mk.nlen54)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br label %mk.eq.merge

mk.eq.else:                                       ; preds = %str_ok58
  br label %mk.eq.merge

mk.eq.merge:                                      ; preds = %mk.eq.else, %mk.eq.then
  %mk.eq = phi i1 [ %mk.cmpeq, %mk.eq.then ], [ false, %mk.eq.else ]
  br i1 %mk.eq, label %m.overwrite, label %m.next

m.grow:                                           ; preds = %m.empty
  %m.old.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 1
  %m.old.cap64 = load i64, ptr %m.old.cap, align 8
  %m.old.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 2
  %m.old.keys65 = load ptr, ptr %m.old.keys, align 8
  %m.old.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 3
  %m.old.vals66 = load ptr, ptr %m.old.vals, align 8
  %m.old.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 4
  %m.old.states67 = load ptr, ptr %m.old.states, align 8
  %m.double.cap = mul i64 %m.old.cap64, 2
  %m.live.cnt = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  %m.live.cnt68 = load i64, ptr %m.live.cnt, align 8
  %m.live.x2 = mul i64 %m.live.cnt68, 2
  %m.should.double = icmp sgt i64 %m.live.x2, %m.old.cap64
  %m.new.cap = select i1 %m.should.double, i64 %m.double.cap, i64 %m.old.cap64
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur69 = call ptr @dva_arena_current()
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 %m.gk.bytes)
  %m.gv.bytes = mul i64 %m.new.cap, 8
  %arena.cur70 = call ptr @dva_arena_current()
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 %m.gv.bytes)
  %arena.cur71 = call ptr @dva_arena_current()
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 %m.new.cap)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs, i8 0, i64 %m.new.cap, i1 false)
  %m.cap.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 1
  store i64 %m.new.cap, ptr %m.cap.gep, align 8
  %m.keys.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 2
  store ptr %m.gk, ptr %m.keys.gep, align 8
  %m.vals.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 3
  store ptr %m.gv, ptr %m.vals.gep, align 8
  %m.states.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 4
  store ptr %m.gs, ptr %m.states.gep, align 8
  %m.count.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  store i64 0, ptr %m.count.gep, align 8
  %m.tombs.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep, align 8
  br label %m.re.loop

m.ins.slot:                                       ; preds = %m.empty
  %m.use.tomb249 = icmp ne i64 %m.tomb43, -1
  %m.ins.idx250 = select i1 %m.use.tomb249, i64 %m.tomb43, i64 %m.idx
  %m.key.slot251 = getelementptr ptr, ptr %m.keys36, i64 %m.ins.idx250
  store ptr %var.load34, ptr %m.key.slot251, align 8
  %m.val.slot252 = getelementptr i64, ptr %m.vals37, i64 %m.ins.idx250
  store i64 -1, ptr %m.val.slot252, align 8
  %m.ins.state.slot253 = getelementptr i8, ptr %m.states38, i64 %m.ins.idx250
  store i8 1, ptr %m.ins.state.slot253, align 1
  %m.count254 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  %m.count255 = load i64, ptr %m.count254, align 8
  %m.count.next256 = add i64 %m.count255, 1
  %m.count.gep257 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  store i64 %m.count.next256, ptr %m.count.gep257, align 8
  %m.ins.tombs.p258 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 5
  %m.ins.tombs259 = load i64, ptr %m.ins.tombs.p258, align 8
  %m.tomb.dec260 = select i1 %m.use.tomb249, i64 1, i64 0
  %m.ins.tombs.next261 = sub i64 %m.ins.tombs259, %m.tomb.dec260
  store i64 %m.ins.tombs.next261, ptr %m.ins.tombs.p258, align 8
  br label %m.done

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap64
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states67, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.done102, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  %m.cap156 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 1
  %m.cap157 = load i64, ptr %m.cap156, align 8
  %m.keys158 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 2
  %m.keys159 = load ptr, ptr %m.keys158, align 8
  %m.vals160 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 3
  %m.vals161 = load ptr, ptr %m.vals160, align 8
  %m.states162 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 4
  %m.states163 = load ptr, ptr %m.states162, align 8
  %mk.data164 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %mk.data165 = load ptr, ptr %mk.data164, align 8
  %mk.len166 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %mk.len167 = load i64, ptr %mk.len166, align 8
  %mk.len168 = and i64 %mk.len167, 281474976710655
  %str.tag169 = lshr i64 %mk.len167, 48
  %str.immortal170 = icmp eq i64 %str.tag169, 0
  br i1 %str.immortal170, label %str_ok172, label %str_gen_check171

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr ptr, ptr %m.old.keys65, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals66, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap72 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 1
  %m.cap73 = load i64, ptr %m.cap72, align 8
  %m.keys74 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 2
  %m.keys75 = load ptr, ptr %m.keys74, align 8
  %m.vals76 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 3
  %m.vals77 = load ptr, ptr %m.vals76, align 8
  %m.states78 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 4
  %m.states79 = load ptr, ptr %m.states78, align 8
  %mk.data80 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data81 = load ptr, ptr %mk.data80, align 8
  %mk.len82 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.len83 = load i64, ptr %mk.len82, align 8
  %mk.len84 = and i64 %mk.len83, 281474976710655
  %str.tag85 = lshr i64 %mk.len83, 48
  %str.immortal86 = icmp eq i64 %str.tag85, 0
  br i1 %str.immortal86, label %str_ok88, label %str_gen_check87

str_gen_check87:                                  ; preds = %m.re.ins
  %arena.cur90 = call ptr @dva_arena_current()
  %tag.valid91 = call i1 @dva_arena_validate_tag(ptr %arena.cur90, i64 %str.tag85)
  br i1 %tag.valid91, label %str_ok88, label %str_stale89

str_ok88:                                         ; preds = %str_stale89, %str_gen_check87, %m.re.ins
  %hash.str92 = call i64 @dva_hash_string(ptr %mk.data81, i64 %mk.len84)
  %m.capm193 = sub i64 %m.cap73, 1
  %m.idx094 = and i64 %hash.str92, %m.capm193
  br label %m.loop95

str_stale89:                                      ; preds = %str_gen_check87
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok88

m.loop95:                                         ; preds = %m.next100, %str_ok88
  %m.idx103 = phi i64 [ %m.idx094, %str_ok88 ], [ %m.idx.next150, %m.next100 ]
  %m.tomb104 = phi i64 [ -1, %str_ok88 ], [ %m.next.tomb148, %m.next100 ]
  %m.probe105 = phi i64 [ 0, %str_ok88 ], [ %m.probe.next151, %m.next100 ]
  %m.reached.cap106 = icmp eq i64 %m.probe105, %m.cap73
  %m.state.gep107 = getelementptr i8, ptr %m.states79, i64 %m.idx103
  %m.state108 = load i8, ptr %m.state.gep107, align 1
  %m.is.empty109 = icmp eq i8 %m.state108, 0
  %m.stop110 = or i1 %m.is.empty109, %m.reached.cap106
  br i1 %m.stop110, label %m.empty101, label %m.check.tomb96

m.check.tomb96:                                   ; preds = %m.loop95
  %m.is.tomb111 = icmp eq i8 %m.state108, 2
  br i1 %m.is.tomb111, label %m.tomb97, label %m.found98

m.tomb97:                                         ; preds = %m.check.tomb96
  %m.has.tomb112 = icmp ne i64 %m.tomb104, -1
  %m.tomb.sel113 = select i1 %m.has.tomb112, i64 %m.tomb104, i64 %m.idx103
  br label %m.next100

m.found98:                                        ; preds = %m.check.tomb96
  %m.key.slot114 = getelementptr ptr, ptr %m.keys75, i64 %m.idx103
  %mk.stored115 = load ptr, ptr %m.key.slot114, align 8
  %mk.slen116 = getelementptr inbounds { i64, ptr }, ptr %mk.stored115, i32 0, i32 0
  %mk.slen117 = load i64, ptr %mk.slen116, align 8
  %mk.slen118 = and i64 %mk.slen117, 281474976710655
  %str.tag119 = lshr i64 %mk.slen117, 48
  %str.immortal120 = icmp eq i64 %str.tag119, 0
  br i1 %str.immortal120, label %str_ok122, label %str_gen_check121

m.overwrite99:                                    ; preds = %mk.eq.merge139
  %m.val.slot147 = getelementptr i64, ptr %m.vals77, i64 %m.idx103
  store i64 %m.re.val, ptr %m.val.slot147, align 8
  br label %m.done102

m.next100:                                        ; preds = %mk.eq.merge139, %m.tomb97
  %m.next.tomb148 = phi i64 [ %m.tomb.sel113, %m.tomb97 ], [ %m.tomb104, %mk.eq.merge139 ]
  %m.idx.add149 = add i64 %m.idx103, 1
  %m.idx.next150 = and i64 %m.idx.add149, %m.capm193
  %m.probe.next151 = add i64 %m.probe105, 1
  br label %m.loop95

m.empty101:                                       ; preds = %m.loop95
  %m.use.tomb = icmp ne i64 %m.tomb104, -1
  %m.ins.idx = select i1 %m.use.tomb, i64 %m.tomb104, i64 %m.idx103
  %m.key.slot152 = getelementptr ptr, ptr %m.keys75, i64 %m.ins.idx
  store ptr %m.re.key, ptr %m.key.slot152, align 8
  %m.val.slot153 = getelementptr i64, ptr %m.vals77, i64 %m.ins.idx
  store i64 %m.re.val, ptr %m.val.slot153, align 8
  %m.ins.state.slot = getelementptr i8, ptr %m.states79, i64 %m.ins.idx
  store i8 1, ptr %m.ins.state.slot, align 1
  %m.count = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  %m.count154 = load i64, ptr %m.count, align 8
  %m.count.next = add i64 %m.count154, 1
  %m.count.gep155 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  store i64 %m.count.next, ptr %m.count.gep155, align 8
  %m.ins.tombs.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 5
  %m.ins.tombs = load i64, ptr %m.ins.tombs.p, align 8
  %m.tomb.dec = select i1 %m.use.tomb, i64 1, i64 0
  %m.ins.tombs.next = sub i64 %m.ins.tombs, %m.tomb.dec
  store i64 %m.ins.tombs.next, ptr %m.ins.tombs.p, align 8
  br label %m.done102

m.done102:                                        ; preds = %m.empty101, %m.overwrite99
  br label %m.re.cont

str_gen_check121:                                 ; preds = %m.found98
  %arena.cur124 = call ptr @dva_arena_current()
  %tag.valid125 = call i1 @dva_arena_validate_tag(ptr %arena.cur124, i64 %str.tag119)
  br i1 %tag.valid125, label %str_ok122, label %str_stale123

str_ok122:                                        ; preds = %str_stale123, %str_gen_check121, %m.found98
  %mk.nlen126 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 0
  %mk.nlen127 = load i64, ptr %mk.nlen126, align 8
  %mk.nlen128 = and i64 %mk.nlen127, 281474976710655
  %str.tag129 = lshr i64 %mk.nlen127, 48
  %str.immortal130 = icmp eq i64 %str.tag129, 0
  br i1 %str.immortal130, label %str_ok132, label %str_gen_check131

str_stale123:                                     ; preds = %str_gen_check121
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok122

str_gen_check131:                                 ; preds = %str_ok122
  %arena.cur134 = call ptr @dva_arena_current()
  %tag.valid135 = call i1 @dva_arena_validate_tag(ptr %arena.cur134, i64 %str.tag129)
  br i1 %tag.valid135, label %str_ok132, label %str_stale133

str_ok132:                                        ; preds = %str_stale133, %str_gen_check131, %str_ok122
  %mk.lenseq136 = icmp eq i64 %mk.slen118, %mk.nlen128
  br i1 %mk.lenseq136, label %mk.eq.then137, label %mk.eq.else138

str_stale133:                                     ; preds = %str_gen_check131
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok132

mk.eq.then137:                                    ; preds = %str_ok132
  %mk.sdata140 = getelementptr inbounds { i64, ptr }, ptr %mk.stored115, i32 0, i32 1
  %mk.sdata141 = load ptr, ptr %mk.sdata140, align 8
  %mk.ndata142 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.ndata143 = load ptr, ptr %mk.ndata142, align 8
  %mk.memcmp144 = call i32 @memcmp(ptr %mk.sdata141, ptr %mk.ndata143, i64 %mk.nlen128)
  %mk.cmpeq145 = icmp eq i32 %mk.memcmp144, 0
  br label %mk.eq.merge139

mk.eq.else138:                                    ; preds = %str_ok132
  br label %mk.eq.merge139

mk.eq.merge139:                                   ; preds = %mk.eq.else138, %mk.eq.then137
  %mk.eq146 = phi i1 [ %mk.cmpeq145, %mk.eq.then137 ], [ false, %mk.eq.else138 ]
  br i1 %mk.eq146, label %m.overwrite99, label %m.next100

str_gen_check171:                                 ; preds = %m.re.done
  %arena.cur174 = call ptr @dva_arena_current()
  %tag.valid175 = call i1 @dva_arena_validate_tag(ptr %arena.cur174, i64 %str.tag169)
  br i1 %tag.valid175, label %str_ok172, label %str_stale173

str_ok172:                                        ; preds = %str_stale173, %str_gen_check171, %m.re.done
  %hash.str176 = call i64 @dva_hash_string(ptr %mk.data165, i64 %mk.len168)
  %m.capm1177 = sub i64 %m.cap157, 1
  %m.idx0178 = and i64 %hash.str176, %m.capm1177
  br label %m.loop179

str_stale173:                                     ; preds = %str_gen_check171
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok172

m.loop179:                                        ; preds = %m.next184, %str_ok172
  %m.idx187 = phi i64 [ %m.idx0178, %str_ok172 ], [ %m.idx.next234, %m.next184 ]
  %m.tomb188 = phi i64 [ -1, %str_ok172 ], [ %m.next.tomb232, %m.next184 ]
  %m.probe189 = phi i64 [ 0, %str_ok172 ], [ %m.probe.next235, %m.next184 ]
  %m.reached.cap190 = icmp eq i64 %m.probe189, %m.cap157
  %m.state.gep191 = getelementptr i8, ptr %m.states163, i64 %m.idx187
  %m.state192 = load i8, ptr %m.state.gep191, align 1
  %m.is.empty193 = icmp eq i8 %m.state192, 0
  %m.stop194 = or i1 %m.is.empty193, %m.reached.cap190
  br i1 %m.stop194, label %m.empty185, label %m.check.tomb180

m.check.tomb180:                                  ; preds = %m.loop179
  %m.is.tomb195 = icmp eq i8 %m.state192, 2
  br i1 %m.is.tomb195, label %m.tomb181, label %m.found182

m.tomb181:                                        ; preds = %m.check.tomb180
  %m.has.tomb196 = icmp ne i64 %m.tomb188, -1
  %m.tomb.sel197 = select i1 %m.has.tomb196, i64 %m.tomb188, i64 %m.idx187
  br label %m.next184

m.found182:                                       ; preds = %m.check.tomb180
  %m.key.slot198 = getelementptr ptr, ptr %m.keys159, i64 %m.idx187
  %mk.stored199 = load ptr, ptr %m.key.slot198, align 8
  %mk.slen200 = getelementptr inbounds { i64, ptr }, ptr %mk.stored199, i32 0, i32 0
  %mk.slen201 = load i64, ptr %mk.slen200, align 8
  %mk.slen202 = and i64 %mk.slen201, 281474976710655
  %str.tag203 = lshr i64 %mk.slen201, 48
  %str.immortal204 = icmp eq i64 %str.tag203, 0
  br i1 %str.immortal204, label %str_ok206, label %str_gen_check205

m.overwrite183:                                   ; preds = %mk.eq.merge223
  %m.val.slot231 = getelementptr i64, ptr %m.vals161, i64 %m.idx187
  store i64 -1, ptr %m.val.slot231, align 8
  br label %m.done186

m.next184:                                        ; preds = %mk.eq.merge223, %m.tomb181
  %m.next.tomb232 = phi i64 [ %m.tomb.sel197, %m.tomb181 ], [ %m.tomb188, %mk.eq.merge223 ]
  %m.idx.add233 = add i64 %m.idx187, 1
  %m.idx.next234 = and i64 %m.idx.add233, %m.capm1177
  %m.probe.next235 = add i64 %m.probe189, 1
  br label %m.loop179

m.empty185:                                       ; preds = %m.loop179
  %m.use.tomb236 = icmp ne i64 %m.tomb188, -1
  %m.ins.idx237 = select i1 %m.use.tomb236, i64 %m.tomb188, i64 %m.idx187
  %m.key.slot238 = getelementptr ptr, ptr %m.keys159, i64 %m.ins.idx237
  store ptr %var.load34, ptr %m.key.slot238, align 8
  %m.val.slot239 = getelementptr i64, ptr %m.vals161, i64 %m.ins.idx237
  store i64 -1, ptr %m.val.slot239, align 8
  %m.ins.state.slot240 = getelementptr i8, ptr %m.states163, i64 %m.ins.idx237
  store i8 1, ptr %m.ins.state.slot240, align 1
  %m.count241 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  %m.count242 = load i64, ptr %m.count241, align 8
  %m.count.next243 = add i64 %m.count242, 1
  %m.count.gep244 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 0
  store i64 %m.count.next243, ptr %m.count.gep244, align 8
  %m.ins.tombs.p245 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %var.load33, i32 0, i32 5
  %m.ins.tombs246 = load i64, ptr %m.ins.tombs.p245, align 8
  %m.tomb.dec247 = select i1 %m.use.tomb236, i64 1, i64 0
  %m.ins.tombs.next248 = sub i64 %m.ins.tombs246, %m.tomb.dec247
  store i64 %m.ins.tombs.next248, ptr %m.ins.tombs.p245, align 8
  br label %m.done186

m.done186:                                        ; preds = %m.empty185, %m.overwrite183
  br label %m.done

str_gen_check205:                                 ; preds = %m.found182
  %arena.cur208 = call ptr @dva_arena_current()
  %tag.valid209 = call i1 @dva_arena_validate_tag(ptr %arena.cur208, i64 %str.tag203)
  br i1 %tag.valid209, label %str_ok206, label %str_stale207

str_ok206:                                        ; preds = %str_stale207, %str_gen_check205, %m.found182
  %mk.nlen210 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %mk.nlen211 = load i64, ptr %mk.nlen210, align 8
  %mk.nlen212 = and i64 %mk.nlen211, 281474976710655
  %str.tag213 = lshr i64 %mk.nlen211, 48
  %str.immortal214 = icmp eq i64 %str.tag213, 0
  br i1 %str.immortal214, label %str_ok216, label %str_gen_check215

str_stale207:                                     ; preds = %str_gen_check205
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok206

str_gen_check215:                                 ; preds = %str_ok206
  %arena.cur218 = call ptr @dva_arena_current()
  %tag.valid219 = call i1 @dva_arena_validate_tag(ptr %arena.cur218, i64 %str.tag213)
  br i1 %tag.valid219, label %str_ok216, label %str_stale217

str_ok216:                                        ; preds = %str_stale217, %str_gen_check215, %str_ok206
  %mk.lenseq220 = icmp eq i64 %mk.slen202, %mk.nlen212
  br i1 %mk.lenseq220, label %mk.eq.then221, label %mk.eq.else222

str_stale217:                                     ; preds = %str_gen_check215
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok216

mk.eq.then221:                                    ; preds = %str_ok216
  %mk.sdata224 = getelementptr inbounds { i64, ptr }, ptr %mk.stored199, i32 0, i32 1
  %mk.sdata225 = load ptr, ptr %mk.sdata224, align 8
  %mk.ndata226 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %mk.ndata227 = load ptr, ptr %mk.ndata226, align 8
  %mk.memcmp228 = call i32 @memcmp(ptr %mk.sdata225, ptr %mk.ndata227, i64 %mk.nlen212)
  %mk.cmpeq229 = icmp eq i32 %mk.memcmp228, 0
  br label %mk.eq.merge223

mk.eq.else222:                                    ; preds = %str_ok216
  br label %mk.eq.merge223

mk.eq.merge223:                                   ; preds = %mk.eq.else222, %mk.eq.then221
  %mk.eq230 = phi i1 [ %mk.cmpeq229, %mk.eq.then221 ], [ false, %mk.eq.else222 ]
  br i1 %mk.eq230, label %m.overwrite183, label %m.next184

a.create265:                                      ; preds = %m.done
  %arena.cur267 = call ptr @dva_arena_current()
  %a.create268 = call ptr @dva_arena_alloc(ptr %arena.cur267, i64 24)
  %arena.cur269 = call ptr @dva_arena_current()
  %a.buf270 = call ptr @dva_arena_alloc(ptr %arena.cur269, i64 128)
  %a.len.gep271 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create268, i32 0, i32 0
  store i64 0, ptr %a.len.gep271, align 8
  %a.data.gep272 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create268, i32 0, i32 1
  store ptr %a.buf270, ptr %a.data.gep272, align 8
  %a.cap.gep273 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create268, i32 0, i32 2
  store i64 16, ptr %a.cap.gep273, align 8
  store ptr %a.create268, ptr %var.scs, align 8
  br label %a.after266

a.after266:                                       ; preds = %a.create265, %m.done
  %a.load2274 = load ptr, ptr %var.scs, align 8
  %var.load275 = load i64, ptr %var.cur_idx, align 8
  %var.load276 = load ptr, ptr %var.cur_sc, align 8
  %slot.p2i = ptrtoint ptr %var.load276 to i64
  %a.wr.nonnull = icmp ne ptr %a.load2274, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after266
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2274, i32 0, i32 0
  %a.wr.len277 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load275, 0
  %a.wr.lt = icmp slt i64 %var.load275, %a.wr.len277
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2274, i32 0, i32 1
  %a.wr.data278 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data278, i64 %var.load275
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after266
  %arena.cur279 = call ptr @dva_arena_current()
  %err.alloc280 = call ptr @dva_arena_alloc(ptr %arena.cur279, i64 56)
  %err.code.gep281 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc280, i32 0, i32 0
  store i64 4011, ptr %err.code.gep281, align 8
  %err.msg.gep282 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc280, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep282, align 8
  %err.file.gep283 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc280, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep283, align 8
  %err.line.gep284 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc280, i32 0, i32 3
  store i64 0, ptr %err.line.gep284, align 8
  %err.col.gep285 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc280, i32 0, i32 4
  store i64 0, ptr %err.col.gep285, align 8
  %err.ctx.gep286 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc280, i32 0, i32 5
  %err.ctx0.gep287 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep286, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep287, align 8
  %err.ctx1.gep288 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep286, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep288, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur289 = call ptr @dva_arena_current()
  %err.alloc290 = call ptr @dva_arena_alloc(ptr %arena.cur289, i64 56)
  %err.code.gep291 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc290, i32 0, i32 0
  store i64 4011, ptr %err.code.gep291, align 8
  %err.msg.gep292 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc290, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep292, align 8
  %err.file.gep293 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc290, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep293, align 8
  %err.line.gep294 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc290, i32 0, i32 3
  store i64 0, ptr %err.line.gep294, align 8
  %err.col.gep295 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc290, i32 0, i32 4
  store i64 0, ptr %err.col.gep295, align 8
  %err.ctx.gep296 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc290, i32 0, i32 5
  %err.ctx0.gep297 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep296, i32 0, i32 0
  store i64 %var.load275, ptr %err.ctx0.gep297, align 8
  %err.ctx1.gep298 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep296, i32 0, i32 1
  store i64 %a.wr.len277, ptr %err.ctx1.gep298, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc280, %a.wr.err.null ], [ %err.alloc290, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then299, label %choice.else300

choice.then299:                                   ; preds = %a.wr.done
  br label %choice.exit301

choice.else300:                                   ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._302, align 8
  store ptr %a.wr.niche, ptr %var._303, align 8
  store ptr %a.wr.niche, ptr %var._304, align 8
  %err.code.gep305 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep305, align 8
  %err.msg.gep306 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep306, align 8
  %err.file.gep307 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep307, align 8
  %err.line.gep308 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep308, align 8
  %err.col.gep309 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep309, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len310 = load i64, ptr %err.msg.len, align 8
  %err.msg.len311 = and i64 %err.msg.len310, 281474976710655
  %str.tag312 = lshr i64 %err.msg.len310, 48
  %str.immortal313 = icmp eq i64 %str.tag312, 0
  br i1 %str.immortal313, label %str_ok315, label %str_gen_check314

choice.exit301:                                   ; preds = %err.abort, %choice.then299
  %var.load330 = load ptr, ptr %var.env, align 8
  %var.load331 = load ptr, ptr %var.scs, align 8
  %a.load332 = load ptr, ptr %var.scs, align 8
  %a.null333 = icmp eq ptr %a.load332, null
  br i1 %a.null333, label %a.create334, label %a.after335

str_gen_check314:                                 ; preds = %choice.else300
  %arena.cur317 = call ptr @dva_arena_current()
  %tag.valid318 = call i1 @dva_arena_validate_tag(ptr %arena.cur317, i64 %str.tag312)
  br i1 %tag.valid318, label %str_ok315, label %str_stale316

str_ok315:                                        ; preds = %str_stale316, %str_gen_check314, %choice.else300
  %err.msg.len32 = trunc i64 %err.msg.len311 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data319 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len320 = load i64, ptr %err.file.len, align 8
  %err.file.len321 = and i64 %err.file.len320, 281474976710655
  %str.tag322 = lshr i64 %err.file.len320, 48
  %str.immortal323 = icmp eq i64 %str.tag322, 0
  br i1 %str.immortal323, label %str_ok325, label %str_gen_check324

str_stale316:                                     ; preds = %str_gen_check314
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok315

str_gen_check324:                                 ; preds = %str_ok315
  %arena.cur327 = call ptr @dva_arena_current()
  %tag.valid328 = call i1 @dva_arena_validate_tag(ptr %arena.cur327, i64 %str.tag322)
  br i1 %tag.valid328, label %str_ok325, label %str_stale326

str_ok325:                                        ; preds = %str_stale326, %str_gen_check324, %str_ok315
  %err.file.len32 = trunc i64 %err.file.len321 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data329 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale326:                                     ; preds = %str_gen_check324
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok325

err.thread:                                       ; preds = %str_ok325
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok325
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data319, i32 %err.file.len32, ptr %err.file.data329, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit301

a.create334:                                      ; preds = %choice.exit301
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
  store ptr %a.create337, ptr %var.scs, align 8
  br label %a.after335

a.after335:                                       ; preds = %a.create334, %choice.exit301
  %a.load2343 = load ptr, ptr %var.scs, align 8
  %fld.gep344 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load330, i32 0, i32 0
  store ptr %a.load2343, ptr %fld.gep344, align 8
  br label %choice.exit
}

define void @"type_env::bind_global"(ptr %0, ptr %1, ptr %2, ptr %3) #1 {
entry:
  %var.gls = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  store ptr %2, ptr %var.ut, align 8
  store ptr %3, ptr %var.ti, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 3
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.gls, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %var.load2 = load ptr, ptr %var.ut, align 8
  %var.load3 = load ptr, ptr %var.ti, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i1, i1, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load1, ptr %rec.fld, align 8
  %rec.fld4 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load2, ptr %rec.fld4, align 8
  %rec.fld5 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load3, ptr %rec.fld5, align 8
  %rec.fld6 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i1 false, ptr %rec.fld6, align 1
  %rec.fld7 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i1 true, ptr %rec.fld7, align 1
  %rec.fld8 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 0, ptr %rec.fld8, align 8
  %a.load = load ptr, ptr %var.gls, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur9 = call ptr @dva_arena_current()
  %a.create10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 24)
  %arena.cur11 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create10, ptr %var.gls, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.gls, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len12 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap13 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len12, %a.cap13
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data14 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len15 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data14, i64 %a.cur.len15
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len15, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load16 = load ptr, ptr %var.env, align 8
  %var.load17 = load ptr, ptr %var.gls, align 8
  %a.load18 = load ptr, ptr %var.gls, align 8
  %a.null19 = icmp eq ptr %a.load18, null
  br i1 %a.null19, label %a.create20, label %a.after21

a.create20:                                       ; preds = %a.store
  %arena.cur22 = call ptr @dva_arena_current()
  %a.create23 = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 24)
  %arena.cur24 = call ptr @dva_arena_current()
  %a.buf25 = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 128)
  %a.len.gep26 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create23, i32 0, i32 0
  store i64 0, ptr %a.len.gep26, align 8
  %a.data.gep27 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create23, i32 0, i32 1
  store ptr %a.buf25, ptr %a.data.gep27, align 8
  %a.cap.gep28 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create23, i32 0, i32 2
  store i64 16, ptr %a.cap.gep28, align 8
  store ptr %a.create23, ptr %var.gls, align 8
  br label %a.after21

a.after21:                                        ; preds = %a.create20, %a.store
  %a.load229 = load ptr, ptr %var.gls, align 8
  %fld.gep30 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load16, i32 0, i32 3
  store ptr %a.load229, ptr %fld.gep30, align 8
  ret void
}

define i1 @"type_env::name_is_qualified"(ptr %0, i64 %1) #1 {
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
  br i1 %cmptmp, label %and.159.then, label %and.159.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.159.then:                                     ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

and.159.else:                                     ; preds = %str_ok
  br label %and.159.exit

and.159.exit:                                     ; preds = %and.159.else, %idx_ok
  %and.159.phi = phi i1 [ %cmptmp16, %idx_ok ], [ %cmptmp, %and.159.else ]
  br i1 %and.159.phi, label %choice.then, label %choice.else

str_gen_check9:                                   ; preds = %and.159.then
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %and.159.then
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
  br label %and.159.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %and.159.exit
  %var.load17 = load ptr, ptr %var.name, align 8
  %s.read.len18 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len18, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %str.tag21 = lshr i64 %s.read.len19, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

choice.else:                                      ; preds = %and.159.exit
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
  br i1 %cmptmp39, label %and.160.then, label %and.160.else

idx_oob34:                                        ; preds = %idx_big_check32, %str_ok24
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok33

and.160.then:                                     ; preds = %idx_ok33
  %var.load40 = load ptr, ptr %var.name, align 8
  %s.read.len41 = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 0
  %s.read.len42 = load i64, ptr %s.read.len41, align 8
  %s.read.len43 = and i64 %s.read.len42, 281474976710655
  %str.tag44 = lshr i64 %s.read.len42, 48
  %str.immortal45 = icmp eq i64 %str.tag44, 0
  br i1 %str.immortal45, label %str_ok47, label %str_gen_check46

and.160.else:                                     ; preds = %idx_ok33
  br label %and.160.exit

and.160.exit:                                     ; preds = %and.160.else, %idx_ok57
  %and.160.phi = phi i1 [ %cmptmp63, %idx_ok57 ], [ %cmptmp39, %and.160.else ]
  br i1 %and.160.phi, label %choice.then64, label %choice.else65

str_gen_check46:                                  ; preds = %and.160.then
  %arena.cur49 = call ptr @dva_arena_current()
  %tag.valid50 = call i1 @dva_arena_validate_tag(ptr %arena.cur49, i64 %str.tag44)
  br i1 %tag.valid50, label %str_ok47, label %str_stale48

str_ok47:                                         ; preds = %str_stale48, %str_gen_check46, %and.160.then
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
  br label %and.160.exit

idx_oob58:                                        ; preds = %idx_big_check56, %str_ok47
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok57

choice.then64:                                    ; preds = %and.160.exit
  br label %choice.exit66

choice.else65:                                    ; preds = %and.160.exit
  %var.load67 = load ptr, ptr %var.name, align 8
  %var.load68 = load i64, ptr %var.i, align 8
  %addtmp69 = add i64 %var.load68, 1
  %call.res = call i1 @"type_env::name_is_qualified"(ptr %var.load67, i64 %addtmp69)
  br label %choice.exit66

choice.exit66:                                    ; preds = %choice.else65, %choice.then64
  %choice.res = phi i1 [ true, %choice.then64 ], [ %call.res, %choice.else65 ]
  br label %choice.exit
}

define i64 @"type_env::decl_module_find"(ptr %0, i64 %1, i64 %2) #1 {
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
  br i1 %cmptmp, label %and.161.then, label %and.161.else

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.161.then:                                     ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

and.161.else:                                     ; preds = %str_ok
  br label %and.161.exit

and.161.exit:                                     ; preds = %and.161.else, %idx_ok
  %and.161.phi = phi i1 [ %cmptmp16, %idx_ok ], [ %cmptmp, %and.161.else ]
  br i1 %and.161.phi, label %choice.then, label %choice.else

str_gen_check9:                                   ; preds = %and.161.then
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %and.161.then
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
  br label %and.161.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %and.161.exit
  %var.load17 = load ptr, ptr %var.name, align 8
  %s.read.len18 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len18, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %str.tag21 = lshr i64 %s.read.len19, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

choice.else:                                      ; preds = %and.161.exit
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
  br i1 %cmptmp39, label %and.162.then, label %and.162.else

idx_oob34:                                        ; preds = %idx_big_check32, %str_ok24
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok33

and.162.then:                                     ; preds = %idx_ok33
  %var.load40 = load ptr, ptr %var.name, align 8
  %s.read.len41 = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 0
  %s.read.len42 = load i64, ptr %s.read.len41, align 8
  %s.read.len43 = and i64 %s.read.len42, 281474976710655
  %str.tag44 = lshr i64 %s.read.len42, 48
  %str.immortal45 = icmp eq i64 %str.tag44, 0
  br i1 %str.immortal45, label %str_ok47, label %str_gen_check46

and.162.else:                                     ; preds = %idx_ok33
  br label %and.162.exit

and.162.exit:                                     ; preds = %and.162.else, %idx_ok57
  %and.162.phi = phi i1 [ %cmptmp63, %idx_ok57 ], [ %cmptmp39, %and.162.else ]
  br i1 %and.162.phi, label %choice.then64, label %choice.else65

str_gen_check46:                                  ; preds = %and.162.then
  %arena.cur49 = call ptr @dva_arena_current()
  %tag.valid50 = call i1 @dva_arena_validate_tag(ptr %arena.cur49, i64 %str.tag44)
  br i1 %tag.valid50, label %str_ok47, label %str_stale48

str_ok47:                                         ; preds = %str_stale48, %str_gen_check46, %and.162.then
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
  br label %and.162.exit

idx_oob58:                                        ; preds = %idx_big_check56, %str_ok47
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok57

choice.then64:                                    ; preds = %and.162.exit
  %var.load67 = load ptr, ptr %var.name, align 8
  %var.load68 = load i64, ptr %var.i, align 8
  %addtmp69 = add i64 %var.load68, 2
  %var.load70 = load i64, ptr %var.i, align 8
  %call.res = call i64 @"type_env::decl_module_find"(ptr %var.load67, i64 %addtmp69, i64 %var.load70)
  br label %choice.exit66

choice.else65:                                    ; preds = %and.162.exit
  %var.load71 = load ptr, ptr %var.name, align 8
  %var.load72 = load i64, ptr %var.i, align 8
  %addtmp73 = add i64 %var.load72, 1
  %var.load74 = load i64, ptr %var.last, align 8
  %call.res75 = call i64 @"type_env::decl_module_find"(ptr %var.load71, i64 %addtmp73, i64 %var.load74)
  br label %choice.exit66

choice.exit66:                                    ; preds = %choice.else65, %choice.then64
  %choice.res = phi i64 [ %call.res, %choice.then64 ], [ %call.res75, %choice.else65 ]
  br label %choice.exit
}

define ptr @"type_env::decl_module"(ptr %0, i64 %1) #1 {
entry:
  %var.last = alloca i64, align 8
  %var.ignored = alloca i64, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store i64 %1, ptr %var.ignored, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %call.res = call i64 @"type_env::decl_module_find"(ptr %var.load, i64 0, i64 -1)
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
  %choice.res = phi ptr [ @str.0.struct, %choice.then ], [ %str.view, %str_ok ]
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

define void @"type_env::set_current_module"(ptr %0, ptr %1) #1 {
entry:
  %var.mod_name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.mod_name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.mod_name, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 8
  store ptr %var.load1, ptr %fld.gep, align 8
  ret void
}

define ptr @"type_env::lookup_local_exact"(ptr %0, ptr %1) #1 {
entry:
  %var.cur_sc = alloca ptr, align 8
  %var._30 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.scs = alloca ptr, align 8
  %var.cur_idx = alloca i64, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.cur_idx, align 8
  %var.load1 = load i64, ptr %var.cur_idx, align 8
  %cmptmp = icmp slt i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load2, i32 0, i32 0
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  store ptr %fld.load4, ptr %var.scs, align 8
  %var.load5 = load ptr, ptr %var.scs, align 8
  %a.load = load ptr, ptr %var.scs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %choice.exit26, %choice.then
  %choice.res34 = phi ptr [ null, %choice.then ], [ %call.res33, %choice.exit26 ]
  ret ptr %choice.res34

a.create:                                         ; preds = %choice.else
  %arena.cur = call ptr @dva_arena_current()
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur7 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create6, ptr %var.scs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.else
  %a.load2 = load ptr, ptr %var.scs, align 8
  %var.load8 = load i64, ptr %var.cur_idx, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.rd.len9 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load8, 0
  %a.rd.lt = icmp slt i64 %var.load8, %a.rd.len9
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.rd.data10 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data10, i64 %var.load8
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after
  %arena.cur11 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 220, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 32, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur12 = call ptr @dva_arena_current()
  %err.alloc13 = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 56)
  %err.code.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 0
  store i64 4011, ptr %err.code.gep14, align 8
  %err.msg.gep15 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep15, align 8
  %err.file.gep16 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep16, align 8
  %err.line.gep17 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 3
  store i64 220, ptr %err.line.gep17, align 8
  %err.col.gep18 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 4
  store i64 32, ptr %err.col.gep18, align 8
  %err.ctx.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 5
  %err.ctx0.gep20 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep19, i32 0, i32 0
  store i64 %var.load8, ptr %err.ctx0.gep20, align 8
  %err.ctx1.gep21 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep19, i32 0, i32 1
  store i64 %a.rd.len9, ptr %err.ctx1.gep21, align 8
  %err.p2i22 = ptrtoint ptr %err.alloc13 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i22, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag23 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag23, label %choice.then24, label %choice.else25

choice.then24:                                    ; preds = %a.rd.done
  %ram.pay27 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay27 to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  br label %choice.exit26

choice.else25:                                    ; preds = %a.rd.done
  %ram.pay28 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr29 = inttoptr i64 %ram.pay28 to ptr
  store ptr %pay.ptr29, ptr %var._30, align 8
  %call.res = call ptr @"type_env::empty_scope"()
  br label %choice.exit26

choice.exit26:                                    ; preds = %choice.else25, %choice.then24
  %choice.res = phi ptr [ %pay.ptr, %choice.then24 ], [ %call.res, %choice.else25 ]
  store ptr %choice.res, ptr %var.cur_sc, align 8
  %var.load31 = load ptr, ptr %var.cur_sc, align 8
  %var.load32 = load ptr, ptr %var.name, align 8
  %call.res33 = call ptr @"type_env::lookup_scope"(ptr %var.load31, ptr %var.load32)
  br label %choice.exit
}

define ptr @"type_env::lookup_scope"(ptr %0, ptr %1) #1 {
entry:
  %var._166 = alloca ptr, align 8
  %var.binding = alloca ptr, align 8
  %var._162 = alloca ptr, align 8
  %var.idx = alloca i64, align 8
  %var._96 = alloca ptr, align 8
  %var._95 = alloca ptr, align 8
  %var._94 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var.indices = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.scope = alloca ptr, align 8
  store ptr %0, ptr %var.scope, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.scope, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load, i32 0, i32 2
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

choice.exit:                                      ; preds = %choice.else, %choice.exit125
  %choice.res169 = phi ptr [ %choice.res168, %choice.exit125 ], [ null, %choice.else ]
  ret ptr %choice.res169

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
  store ptr @str.2.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
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
  %cmptmp = icmp slt i64 %var.load122, 0
  br i1 %cmptmp, label %choice.then123, label %choice.else124

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

choice.then123:                                   ; preds = %choice.exit91
  br label %choice.exit125

choice.else124:                                   ; preds = %choice.exit91
  %var.load126 = load ptr, ptr %var.scope, align 8
  %fld.gep127 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load126, i32 0, i32 0
  %fld.load128 = load ptr, ptr %fld.gep127, align 8
  %var.load129 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load128, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

choice.exit125:                                   ; preds = %choice.exit159, %choice.then123
  %choice.res168 = phi ptr [ null, %choice.then123 ], [ %choice.res167, %choice.exit159 ]
  br label %choice.exit

a.rd.check:                                       ; preds = %choice.else124
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load128, i32 0, i32 0
  %a.rd.len130 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load129, 0
  %a.rd.lt = icmp slt i64 %var.load129, %a.rd.len130
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load128, i32 0, i32 1
  %a.rd.data131 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data131, i64 %var.load129
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %choice.else124
  %arena.cur132 = call ptr @dva_arena_current()
  %err.alloc133 = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 56)
  %err.code.gep134 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 0
  store i64 4011, ptr %err.code.gep134, align 8
  %err.msg.gep135 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep135, align 8
  %err.file.gep136 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep136, align 8
  %err.line.gep137 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 3
  store i64 0, ptr %err.line.gep137, align 8
  %err.col.gep138 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 4
  store i64 0, ptr %err.col.gep138, align 8
  %err.ctx.gep139 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 5
  %err.ctx0.gep140 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep139, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep140, align 8
  %err.ctx1.gep141 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep139, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep141, align 8
  %err.p2i142 = ptrtoint ptr %err.alloc133 to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur143 = call ptr @dva_arena_current()
  %err.alloc144 = call ptr @dva_arena_alloc(ptr %arena.cur143, i64 56)
  %err.code.gep145 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 0
  store i64 4011, ptr %err.code.gep145, align 8
  %err.msg.gep146 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep146, align 8
  %err.file.gep147 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep147, align 8
  %err.line.gep148 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 3
  store i64 0, ptr %err.line.gep148, align 8
  %err.col.gep149 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 4
  store i64 0, ptr %err.col.gep149, align 8
  %err.ctx.gep150 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 5
  %err.ctx0.gep151 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep150, i32 0, i32 0
  store i64 %var.load129, ptr %err.ctx0.gep151, align 8
  %err.ctx1.gep152 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep150, i32 0, i32 1
  store i64 %a.rd.len130, ptr %err.ctx1.gep152, align 8
  %err.p2i153 = ptrtoint ptr %err.alloc144 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i142, %a.rd.err.null ], [ %err.p2i153, %a.rd.err.oob ]
  %ram.tag154 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay155 = insertvalue { i1, i64 } %ram.tag154, i64 %a.rd.pay, 1
  %ram.tag156 = extractvalue { i1, i64 } %ram.pay155, 0
  br i1 %ram.tag156, label %choice.then157, label %choice.else158

choice.then157:                                   ; preds = %a.rd.done
  %ram.pay160 = extractvalue { i1, i64 } %ram.pay155, 1
  %pay.ptr161 = inttoptr i64 %ram.pay160 to ptr
  store ptr %pay.ptr161, ptr %var._162, align 8
  store ptr %pay.ptr161, ptr %var.binding, align 8
  %var.load163 = load ptr, ptr %var.binding, align 8
  br label %choice.exit159

choice.else158:                                   ; preds = %a.rd.done
  %ram.pay164 = extractvalue { i1, i64 } %ram.pay155, 1
  %pay.ptr165 = inttoptr i64 %ram.pay164 to ptr
  store ptr %pay.ptr165, ptr %var._166, align 8
  br label %choice.exit159

choice.exit159:                                   ; preds = %choice.else158, %choice.then157
  %choice.res167 = phi ptr [ %var.load163, %choice.then157 ], [ null, %choice.else158 ]
  br label %choice.exit125
}

define ptr @"type_env::lookup_local"(ptr %0, ptr %1) #1 {
entry:
  %var.p = alloca ptr, align 8
  %var._101 = alloca ptr, align 8
  %var.pub = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.exact = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %call.res = call ptr @"type_env::lookup_local_exact"(ptr %var.load, ptr %var.load1)
  store ptr %call.res, ptr %var.exact, align 8
  %var.load2 = load ptr, ptr %var.exact, align 8
  %niche.ne.null = icmp ne ptr %var.load2, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load2, ptr %var._, align 8
  store ptr %var.load2, ptr %var.b, align 8
  %var.load3 = load ptr, ptr %var.b, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load4, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len5 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len6 = and i64 %eq.lhs.len5, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len5, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.exit20, %choice.then
  %choice.res192 = phi ptr [ %var.load3, %choice.then ], [ %choice.res191, %choice.exit20 ]
  ret ptr %choice.res192

str_gen_check:                                    ; preds = %choice.else
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len7 = and i64 %eq.rhs.len, 281474976710655
  %str.tag8 = lshr i64 %eq.rhs.len, 48
  %str.immortal9 = icmp eq i64 %str.tag8, 0
  br i1 %str.immortal9, label %str_ok11, label %str_gen_check10

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check10:                                  ; preds = %str_ok
  %arena.cur13 = call ptr @dva_arena_current()
  %tag.valid14 = call i1 @dva_arena_validate_tag(ptr %arena.cur13, i64 %str.tag8)
  br i1 %tag.valid14, label %str_ok11, label %str_stale12

str_ok11:                                         ; preds = %str_stale12, %str_gen_check10, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len6, %eq.rhs.len7
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale12:                                      ; preds = %str_gen_check10
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok11

str.eq.then:                                      ; preds = %str_ok11
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data15 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data15, ptr %eq.rhs.data, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok11
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.163.then, label %and.163.else

and.163.then:                                     ; preds = %str.eq.merge
  %var.load16 = load ptr, ptr %var.name, align 8
  %call.res17 = call i1 @"type_env::name_is_qualified"(ptr %var.load16, i64 0)
  %nottmp = xor i1 %call.res17, true
  br label %and.163.exit

and.163.else:                                     ; preds = %str.eq.merge
  br label %and.163.exit

and.163.exit:                                     ; preds = %and.163.else, %and.163.then
  %and.163.phi = phi i1 [ %nottmp, %and.163.then ], [ %str.neq, %and.163.else ]
  br i1 %and.163.phi, label %choice.then18, label %choice.else19

choice.then18:                                    ; preds = %and.163.exit
  %var.load21 = load ptr, ptr %var.env, align 8
  %var.load22 = load ptr, ptr %var.env, align 8
  %fld.gep23 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load22, i32 0, i32 8
  %fld.load24 = load ptr, ptr %fld.gep23, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %fld.load24, i32 0, i32 0
  %concat.lhs25 = load i64, ptr %concat.lhs, align 8
  %concat.lhs26 = and i64 %concat.lhs25, 281474976710655
  %str.tag27 = lshr i64 %concat.lhs25, 48
  %str.immortal28 = icmp eq i64 %str.tag27, 0
  br i1 %str.immortal28, label %str_ok30, label %str_gen_check29

choice.else19:                                    ; preds = %and.163.exit
  br label %choice.exit20

choice.exit20:                                    ; preds = %choice.else19, %choice.exit100
  %choice.res191 = phi ptr [ %choice.res, %choice.exit100 ], [ null, %choice.else19 ]
  br label %choice.exit

str_gen_check29:                                  ; preds = %choice.then18
  %arena.cur32 = call ptr @dva_arena_current()
  %tag.valid33 = call i1 @dva_arena_validate_tag(ptr %arena.cur32, i64 %str.tag27)
  br i1 %tag.valid33, label %str_ok30, label %str_stale31

str_ok30:                                         ; preds = %str_stale31, %str_gen_check29, %choice.then18
  %concat.lhs34 = getelementptr inbounds { i64, ptr }, ptr %fld.load24, i32 0, i32 1
  %concat.lhs35 = load ptr, ptr %concat.lhs34, align 8
  %concat.rhs = load i64, ptr @str.4.struct, align 8
  %concat.rhs36 = and i64 %concat.rhs, 281474976710655
  %str.tag37 = lshr i64 %concat.rhs, 48
  %str.immortal38 = icmp eq i64 %str.tag37, 0
  br i1 %str.immortal38, label %str_ok40, label %str_gen_check39

str_stale31:                                      ; preds = %str_gen_check29
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok30

str_gen_check39:                                  ; preds = %str_ok30
  %arena.cur42 = call ptr @dva_arena_current()
  %tag.valid43 = call i1 @dva_arena_validate_tag(ptr %arena.cur42, i64 %str.tag37)
  br i1 %tag.valid43, label %str_ok40, label %str_stale41

str_ok40:                                         ; preds = %str_stale41, %str_gen_check39, %str_ok30
  %concat.rhs44 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs26, i64 %concat.rhs36)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len45

str_stale41:                                      ; preds = %str_gen_check39
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok40

concat.sum.len45:                                 ; preds = %str_overflow_abort, %str_ok40
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum46 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf47 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf47, label %str_overflow_abort49, label %concat.tot.len48

str_overflow_abort:                               ; preds = %str_ok40
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len45

concat.tot.len48:                                 ; preds = %str_overflow_abort49, %concat.sum.len45
  %arena.cur50 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 %sum46)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs35, i64 %concat.lhs26, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs44, i64 %concat.rhs36, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur51 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load52 = load ptr, ptr %var.name, align 8
  %concat.lhs53 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs54 = load i64, ptr %concat.lhs53, align 8
  %concat.lhs55 = and i64 %concat.lhs54, 281474976710655
  %str.tag56 = lshr i64 %concat.lhs54, 48
  %str.immortal57 = icmp eq i64 %str.tag56, 0
  br i1 %str.immortal57, label %str_ok59, label %str_gen_check58

str_overflow_abort49:                             ; preds = %concat.sum.len45
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len48

str_gen_check58:                                  ; preds = %concat.tot.len48
  %arena.cur61 = call ptr @dva_arena_current()
  %tag.valid62 = call i1 @dva_arena_validate_tag(ptr %arena.cur61, i64 %str.tag56)
  br i1 %tag.valid62, label %str_ok59, label %str_stale60

str_ok59:                                         ; preds = %str_stale60, %str_gen_check58, %concat.tot.len48
  %concat.lhs63 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs64 = load ptr, ptr %concat.lhs63, align 8
  %concat.rhs65 = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 0
  %concat.rhs66 = load i64, ptr %concat.rhs65, align 8
  %concat.rhs67 = and i64 %concat.rhs66, 281474976710655
  %str.tag68 = lshr i64 %concat.rhs66, 48
  %str.immortal69 = icmp eq i64 %str.tag68, 0
  br i1 %str.immortal69, label %str_ok71, label %str_gen_check70

str_stale60:                                      ; preds = %str_gen_check58
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok59

str_gen_check70:                                  ; preds = %str_ok59
  %arena.cur73 = call ptr @dva_arena_current()
  %tag.valid74 = call i1 @dva_arena_validate_tag(ptr %arena.cur73, i64 %str.tag68)
  br i1 %tag.valid74, label %str_ok71, label %str_stale72

str_ok71:                                         ; preds = %str_stale72, %str_gen_check70, %str_ok59
  %concat.rhs75 = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 1
  %concat.rhs76 = load ptr, ptr %concat.rhs75, align 8
  %concat.sum.len77 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs55, i64 %concat.rhs67)
  %sum78 = extractvalue { i64, i1 } %concat.sum.len77, 0
  %ovf79 = extractvalue { i64, i1 } %concat.sum.len77, 1
  br i1 %ovf79, label %str_overflow_abort81, label %concat.sum.len80

str_stale72:                                      ; preds = %str_gen_check70
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok71

concat.sum.len80:                                 ; preds = %str_overflow_abort81, %str_ok71
  %concat.tot.len82 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum78, i64 1)
  %sum83 = extractvalue { i64, i1 } %concat.tot.len82, 0
  %ovf84 = extractvalue { i64, i1 } %concat.tot.len82, 1
  br i1 %ovf84, label %str_overflow_abort86, label %concat.tot.len85

str_overflow_abort81:                             ; preds = %str_ok71
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len80

concat.tot.len85:                                 ; preds = %str_overflow_abort86, %concat.sum.len80
  %arena.cur87 = call ptr @dva_arena_current()
  %concat.buf88 = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 %sum83)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf88, ptr align 1 %concat.lhs64, i64 %concat.lhs55, i1 false)
  %concat.mid89 = getelementptr i8, ptr %concat.buf88, i64 %concat.lhs55
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid89, ptr align 1 %concat.rhs76, i64 %concat.rhs67, i1 false)
  %concat.nul90 = getelementptr i8, ptr %concat.buf88, i64 %sum78
  store i8 0, ptr %concat.nul90, align 1
  %arena.cur91 = call ptr @dva_arena_current()
  %concat.str92 = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 16)
  %str.build.len.gep93 = getelementptr inbounds { i64, ptr }, ptr %concat.str92, i32 0, i32 0
  store i64 %sum78, ptr %str.build.len.gep93, align 8
  %str.build.data.gep94 = getelementptr inbounds { i64, ptr }, ptr %concat.str92, i32 0, i32 1
  store ptr %concat.buf88, ptr %str.build.data.gep94, align 8
  %call.res95 = call ptr @"type_env::lookup_local_exact"(ptr %var.load21, ptr %concat.str92)
  store ptr %call.res95, ptr %var.pub, align 8
  %var.load96 = load ptr, ptr %var.pub, align 8
  %niche.ne.null97 = icmp ne ptr %var.load96, null
  br i1 %niche.ne.null97, label %choice.then98, label %choice.else99

str_overflow_abort86:                             ; preds = %concat.sum.len80
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len85

choice.then98:                                    ; preds = %concat.tot.len85
  store ptr %var.load96, ptr %var._101, align 8
  store ptr %var.load96, ptr %var.p, align 8
  %var.load102 = load ptr, ptr %var.p, align 8
  br label %choice.exit100

choice.else99:                                    ; preds = %concat.tot.len85
  %var.load103 = load ptr, ptr %var.env, align 8
  %var.load104 = load ptr, ptr %var.env, align 8
  %fld.gep105 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load104, i32 0, i32 8
  %fld.load106 = load ptr, ptr %fld.gep105, align 8
  %concat.lhs107 = getelementptr inbounds { i64, ptr }, ptr %fld.load106, i32 0, i32 0
  %concat.lhs108 = load i64, ptr %concat.lhs107, align 8
  %concat.lhs109 = and i64 %concat.lhs108, 281474976710655
  %str.tag110 = lshr i64 %concat.lhs108, 48
  %str.immortal111 = icmp eq i64 %str.tag110, 0
  br i1 %str.immortal111, label %str_ok113, label %str_gen_check112

choice.exit100:                                   ; preds = %concat.tot.len180, %choice.then98
  %choice.res = phi ptr [ %var.load102, %choice.then98 ], [ %call.res190, %concat.tot.len180 ]
  br label %choice.exit20

str_gen_check112:                                 ; preds = %choice.else99
  %arena.cur115 = call ptr @dva_arena_current()
  %tag.valid116 = call i1 @dva_arena_validate_tag(ptr %arena.cur115, i64 %str.tag110)
  br i1 %tag.valid116, label %str_ok113, label %str_stale114

str_ok113:                                        ; preds = %str_stale114, %str_gen_check112, %choice.else99
  %concat.lhs117 = getelementptr inbounds { i64, ptr }, ptr %fld.load106, i32 0, i32 1
  %concat.lhs118 = load ptr, ptr %concat.lhs117, align 8
  %concat.rhs119 = load i64, ptr @str.7.struct, align 8
  %concat.rhs120 = and i64 %concat.rhs119, 281474976710655
  %str.tag121 = lshr i64 %concat.rhs119, 48
  %str.immortal122 = icmp eq i64 %str.tag121, 0
  br i1 %str.immortal122, label %str_ok124, label %str_gen_check123

str_stale114:                                     ; preds = %str_gen_check112
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok113

str_gen_check123:                                 ; preds = %str_ok113
  %arena.cur126 = call ptr @dva_arena_current()
  %tag.valid127 = call i1 @dva_arena_validate_tag(ptr %arena.cur126, i64 %str.tag121)
  br i1 %tag.valid127, label %str_ok124, label %str_stale125

str_ok124:                                        ; preds = %str_stale125, %str_gen_check123, %str_ok113
  %concat.rhs128 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %concat.sum.len129 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs109, i64 %concat.rhs120)
  %sum130 = extractvalue { i64, i1 } %concat.sum.len129, 0
  %ovf131 = extractvalue { i64, i1 } %concat.sum.len129, 1
  br i1 %ovf131, label %str_overflow_abort133, label %concat.sum.len132

str_stale125:                                     ; preds = %str_gen_check123
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok124

concat.sum.len132:                                ; preds = %str_overflow_abort133, %str_ok124
  %concat.tot.len134 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum130, i64 1)
  %sum135 = extractvalue { i64, i1 } %concat.tot.len134, 0
  %ovf136 = extractvalue { i64, i1 } %concat.tot.len134, 1
  br i1 %ovf136, label %str_overflow_abort138, label %concat.tot.len137

str_overflow_abort133:                            ; preds = %str_ok124
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len132

concat.tot.len137:                                ; preds = %str_overflow_abort138, %concat.sum.len132
  %arena.cur139 = call ptr @dva_arena_current()
  %concat.buf140 = call ptr @dva_arena_alloc(ptr %arena.cur139, i64 %sum135)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf140, ptr align 1 %concat.lhs118, i64 %concat.lhs109, i1 false)
  %concat.mid141 = getelementptr i8, ptr %concat.buf140, i64 %concat.lhs109
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid141, ptr align 1 %concat.rhs128, i64 %concat.rhs120, i1 false)
  %concat.nul142 = getelementptr i8, ptr %concat.buf140, i64 %sum130
  store i8 0, ptr %concat.nul142, align 1
  %arena.cur143 = call ptr @dva_arena_current()
  %concat.str144 = call ptr @dva_arena_alloc(ptr %arena.cur143, i64 16)
  %str.build.len.gep145 = getelementptr inbounds { i64, ptr }, ptr %concat.str144, i32 0, i32 0
  store i64 %sum130, ptr %str.build.len.gep145, align 8
  %str.build.data.gep146 = getelementptr inbounds { i64, ptr }, ptr %concat.str144, i32 0, i32 1
  store ptr %concat.buf140, ptr %str.build.data.gep146, align 8
  %var.load147 = load ptr, ptr %var.name, align 8
  %concat.lhs148 = getelementptr inbounds { i64, ptr }, ptr %concat.str144, i32 0, i32 0
  %concat.lhs149 = load i64, ptr %concat.lhs148, align 8
  %concat.lhs150 = and i64 %concat.lhs149, 281474976710655
  %str.tag151 = lshr i64 %concat.lhs149, 48
  %str.immortal152 = icmp eq i64 %str.tag151, 0
  br i1 %str.immortal152, label %str_ok154, label %str_gen_check153

str_overflow_abort138:                            ; preds = %concat.sum.len132
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len137

str_gen_check153:                                 ; preds = %concat.tot.len137
  %arena.cur156 = call ptr @dva_arena_current()
  %tag.valid157 = call i1 @dva_arena_validate_tag(ptr %arena.cur156, i64 %str.tag151)
  br i1 %tag.valid157, label %str_ok154, label %str_stale155

str_ok154:                                        ; preds = %str_stale155, %str_gen_check153, %concat.tot.len137
  %concat.lhs158 = getelementptr inbounds { i64, ptr }, ptr %concat.str144, i32 0, i32 1
  %concat.lhs159 = load ptr, ptr %concat.lhs158, align 8
  %concat.rhs160 = getelementptr inbounds { i64, ptr }, ptr %var.load147, i32 0, i32 0
  %concat.rhs161 = load i64, ptr %concat.rhs160, align 8
  %concat.rhs162 = and i64 %concat.rhs161, 281474976710655
  %str.tag163 = lshr i64 %concat.rhs161, 48
  %str.immortal164 = icmp eq i64 %str.tag163, 0
  br i1 %str.immortal164, label %str_ok166, label %str_gen_check165

str_stale155:                                     ; preds = %str_gen_check153
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok154

str_gen_check165:                                 ; preds = %str_ok154
  %arena.cur168 = call ptr @dva_arena_current()
  %tag.valid169 = call i1 @dva_arena_validate_tag(ptr %arena.cur168, i64 %str.tag163)
  br i1 %tag.valid169, label %str_ok166, label %str_stale167

str_ok166:                                        ; preds = %str_stale167, %str_gen_check165, %str_ok154
  %concat.rhs170 = getelementptr inbounds { i64, ptr }, ptr %var.load147, i32 0, i32 1
  %concat.rhs171 = load ptr, ptr %concat.rhs170, align 8
  %concat.sum.len172 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs150, i64 %concat.rhs162)
  %sum173 = extractvalue { i64, i1 } %concat.sum.len172, 0
  %ovf174 = extractvalue { i64, i1 } %concat.sum.len172, 1
  br i1 %ovf174, label %str_overflow_abort176, label %concat.sum.len175

str_stale167:                                     ; preds = %str_gen_check165
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok166

concat.sum.len175:                                ; preds = %str_overflow_abort176, %str_ok166
  %concat.tot.len177 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum173, i64 1)
  %sum178 = extractvalue { i64, i1 } %concat.tot.len177, 0
  %ovf179 = extractvalue { i64, i1 } %concat.tot.len177, 1
  br i1 %ovf179, label %str_overflow_abort181, label %concat.tot.len180

str_overflow_abort176:                            ; preds = %str_ok166
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len175

concat.tot.len180:                                ; preds = %str_overflow_abort181, %concat.sum.len175
  %arena.cur182 = call ptr @dva_arena_current()
  %concat.buf183 = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 %sum178)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf183, ptr align 1 %concat.lhs159, i64 %concat.lhs150, i1 false)
  %concat.mid184 = getelementptr i8, ptr %concat.buf183, i64 %concat.lhs150
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid184, ptr align 1 %concat.rhs171, i64 %concat.rhs162, i1 false)
  %concat.nul185 = getelementptr i8, ptr %concat.buf183, i64 %sum173
  store i8 0, ptr %concat.nul185, align 1
  %arena.cur186 = call ptr @dva_arena_current()
  %concat.str187 = call ptr @dva_arena_alloc(ptr %arena.cur186, i64 16)
  %str.build.len.gep188 = getelementptr inbounds { i64, ptr }, ptr %concat.str187, i32 0, i32 0
  store i64 %sum173, ptr %str.build.len.gep188, align 8
  %str.build.data.gep189 = getelementptr inbounds { i64, ptr }, ptr %concat.str187, i32 0, i32 1
  store ptr %concat.buf183, ptr %str.build.data.gep189, align 8
  %call.res190 = call ptr @"type_env::lookup_local_exact"(ptr %var.load103, ptr %concat.str187)
  br label %choice.exit100

str_overflow_abort181:                            ; preds = %concat.sum.len175
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len180
}

define ptr @"type_env::lookup_binding_exact"(ptr %0, ptr %1) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var.i = alloca i64, align 8
  %var._90 = alloca i64, align 8
  %var._i89 = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.165 = alloca i64, align 8
  %loop.idx.165 = alloca i64, align 8
  %"var.g_found'" = alloca ptr, align 8
  %var.gls = alloca ptr, align 8
  %var._66 = alloca ptr, align 8
  %var.binding = alloca ptr, align 8
  %var._52 = alloca ptr, align 8
  %var.sc = alloca ptr, align 8
  %var._46 = alloca ptr, align 8
  %var._43 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.164 = alloca i64, align 8
  %loop.idx.164 = alloca i64, align 8
  %var.max_iters = alloca i64, align 8
  %var.scs = alloca ptr, align 8
  %"var.found'" = alloca ptr, align 8
  %"var.curr'" = alloca i64, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %"var.curr'", align 8
  store ptr null, ptr %"var.found'", align 8
  %var.load1 = load ptr, ptr %var.env, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load1, i32 0, i32 0
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  store ptr %fld.load3, ptr %var.scs, align 8
  %var.load4 = load ptr, ptr %var.scs, align 8
  %a.load = load ptr, ptr %var.scs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
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
  store ptr %a.create5, ptr %var.scs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.scs, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query7 = load i64, ptr %a.len.query, align 8
  %addtmp = add i64 %a.len.query7, 1
  store i64 %addtmp, ptr %var.max_iters, align 8
  %var.load8 = load i64, ptr %var.max_iters, align 8
  store i64 0, ptr %loop.idx.164, align 8
  br label %loop.header.164

loop.header.164:                                  ; preds = %loop.latch.164, %a.after
  %counter.load = load i64, ptr %loop.idx.164, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load8
  br i1 %loop.cond, label %loop.body.164, label %loop.exit.nat.164

loop.body.164:                                    ; preds = %loop.header.164
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.164, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load9 = load i64, ptr %"var.curr'", align 8
  %cmptmp = icmp slt i64 %var.load9, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

loop.exit.nat.164:                                ; preds = %loop.header.164
  br label %loop.exit.164

loop.latch.164:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.164, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.164, align 8
  br label %loop.header.164

loop.exit.164:                                    ; preds = %choice.then, %loop.exit.nat.164
  %var.load61 = load ptr, ptr %"var.found'", align 8
  %niche.ne.null62 = icmp ne ptr %var.load61, null
  br i1 %niche.ne.null62, label %choice.then63, label %choice.else64

choice.then:                                      ; preds = %loop.body.164
  br label %loop.exit.164

choice.else:                                      ; preds = %loop.body.164
  %var.load10 = load ptr, ptr %var.scs, align 8
  %a.load11 = load ptr, ptr %var.scs, align 8
  %a.null12 = icmp eq ptr %a.load11, null
  br i1 %a.null12, label %a.create13, label %a.after14

choice.exit:                                      ; preds = %choice.exit57
  br label %loop.latch.164

a.create13:                                       ; preds = %choice.else
  %arena.cur15 = call ptr @dva_arena_current()
  %a.create16 = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 24)
  %arena.cur17 = call ptr @dva_arena_current()
  %a.buf18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 128)
  %a.len.gep19 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create16, i32 0, i32 0
  store i64 0, ptr %a.len.gep19, align 8
  %a.data.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create16, i32 0, i32 1
  store ptr %a.buf18, ptr %a.data.gep20, align 8
  %a.cap.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create16, i32 0, i32 2
  store i64 16, ptr %a.cap.gep21, align 8
  store ptr %a.create16, ptr %var.scs, align 8
  br label %a.after14

a.after14:                                        ; preds = %a.create13, %choice.else
  %a.load222 = load ptr, ptr %var.scs, align 8
  %var.load23 = load i64, ptr %"var.curr'", align 8
  %a.rd.nonnull = icmp ne ptr %a.load222, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after14
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load222, i32 0, i32 0
  %a.rd.len24 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load23, 0
  %a.rd.lt = icmp slt i64 %var.load23, %a.rd.len24
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load222, i32 0, i32 1
  %a.rd.data25 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data25, i64 %var.load23
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after14
  %arena.cur26 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 261, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 29, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur27 = call ptr @dva_arena_current()
  %err.alloc28 = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 56)
  %err.code.gep29 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc28, i32 0, i32 0
  store i64 4011, ptr %err.code.gep29, align 8
  %err.msg.gep30 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc28, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep30, align 8
  %err.file.gep31 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc28, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep31, align 8
  %err.line.gep32 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc28, i32 0, i32 3
  store i64 261, ptr %err.line.gep32, align 8
  %err.col.gep33 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc28, i32 0, i32 4
  store i64 29, ptr %err.col.gep33, align 8
  %err.ctx.gep34 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc28, i32 0, i32 5
  %err.ctx0.gep35 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep34, i32 0, i32 0
  store i64 %var.load23, ptr %err.ctx0.gep35, align 8
  %err.ctx1.gep36 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep34, i32 0, i32 1
  store i64 %a.rd.len24, ptr %err.ctx1.gep36, align 8
  %err.p2i37 = ptrtoint ptr %err.alloc28 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i37, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag38 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag38, label %choice.then39, label %choice.else40

choice.then39:                                    ; preds = %a.rd.done
  %ram.pay42 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay42 to ptr
  store ptr %pay.ptr, ptr %var._43, align 8
  br label %choice.exit41

choice.else40:                                    ; preds = %a.rd.done
  %ram.pay44 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr45 = inttoptr i64 %ram.pay44 to ptr
  store ptr %pay.ptr45, ptr %var._46, align 8
  %call.res = call ptr @"type_env::empty_scope"()
  br label %choice.exit41

choice.exit41:                                    ; preds = %choice.else40, %choice.then39
  %choice.res = phi ptr [ %pay.ptr, %choice.then39 ], [ %call.res, %choice.else40 ]
  store ptr %choice.res, ptr %var.sc, align 8
  %var.load47 = load ptr, ptr %var.sc, align 8
  %var.load48 = load ptr, ptr %var.name, align 8
  %call.res49 = call ptr @"type_env::lookup_scope"(ptr %var.load47, ptr %var.load48)
  %niche.ne.null = icmp ne ptr %call.res49, null
  br i1 %niche.ne.null, label %choice.then50, label %choice.exit51

choice.then50:                                    ; preds = %choice.exit41
  store ptr %call.res49, ptr %var._52, align 8
  store ptr %call.res49, ptr %var.binding, align 8
  %var.load53 = load ptr, ptr %var.binding, align 8
  store ptr %var.load53, ptr %"var.found'", align 8
  store i64 -1, ptr %"var.curr'", align 8
  br label %choice.exit51

choice.exit51:                                    ; preds = %choice.then50, %choice.exit41
  %var.load54 = load i64, ptr %"var.curr'", align 8
  %cmptmp55 = icmp sge i64 %var.load54, 0
  br i1 %cmptmp55, label %choice.then56, label %choice.exit57

choice.then56:                                    ; preds = %choice.exit51
  %var.load58 = load ptr, ptr %var.sc, align 8
  %fld.gep59 = getelementptr inbounds { ptr, i64, ptr }, ptr %var.load58, i32 0, i32 1
  %fld.load60 = load i64, ptr %fld.gep59, align 8
  store i64 %fld.load60, ptr %"var.curr'", align 8
  br label %choice.exit57

choice.exit57:                                    ; preds = %choice.then56, %choice.exit51
  br label %choice.exit

choice.then63:                                    ; preds = %loop.exit.164
  store ptr %var.load61, ptr %var._66, align 8
  %var.load67 = load ptr, ptr %"var.found'", align 8
  br label %choice.exit65

choice.else64:                                    ; preds = %loop.exit.164
  %var.load68 = load ptr, ptr %var.env, align 8
  %fld.gep69 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load68, i32 0, i32 3
  %fld.load70 = load ptr, ptr %fld.gep69, align 8
  store ptr %fld.load70, ptr %var.gls, align 8
  store ptr null, ptr %"var.g_found'", align 8
  %var.load71 = load ptr, ptr %var.gls, align 8
  %a.load72 = load ptr, ptr %var.gls, align 8
  %a.null73 = icmp eq ptr %a.load72, null
  br i1 %a.null73, label %a.create74, label %a.after75

choice.exit65:                                    ; preds = %loop.exit.165, %choice.then63
  %choice.res213 = phi ptr [ %var.load67, %choice.then63 ], [ %var.load212, %loop.exit.165 ]
  ret ptr %choice.res213

a.create74:                                       ; preds = %choice.else64
  %arena.cur76 = call ptr @dva_arena_current()
  %a.create77 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 24)
  %arena.cur78 = call ptr @dva_arena_current()
  %a.buf79 = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 128)
  %a.len.gep80 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create77, i32 0, i32 0
  store i64 0, ptr %a.len.gep80, align 8
  %a.data.gep81 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create77, i32 0, i32 1
  store ptr %a.buf79, ptr %a.data.gep81, align 8
  %a.cap.gep82 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create77, i32 0, i32 2
  store i64 16, ptr %a.cap.gep82, align 8
  store ptr %a.create77, ptr %var.gls, align 8
  br label %a.after75

a.after75:                                        ; preds = %a.create74, %choice.else64
  %a.load283 = load ptr, ptr %var.gls, align 8
  %a.len.query84 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load283, i32 0, i32 0
  %a.len.query85 = load i64, ptr %a.len.query84, align 8
  store i64 0, ptr %loop.idx.165, align 8
  br label %loop.header.165

loop.header.165:                                  ; preds = %loop.latch.165, %a.after75
  %counter.load86 = load i64, ptr %loop.idx.165, align 8
  %loop.cond87 = icmp slt i64 %counter.load86, %a.len.query85
  br i1 %loop.cond87, label %loop.body.165, label %loop.exit.nat.165

loop.body.165:                                    ; preds = %loop.header.165
  %loop.rel.i88 = sub i64 %counter.load86, 0
  store i64 1, ptr %loop.step.165, align 8
  store i64 %loop.rel.i88, ptr %var._i89, align 8
  store i64 %counter.load86, ptr %var._90, align 8
  store i64 %counter.load86, ptr %var.k, align 8
  %var.load91 = load ptr, ptr %var.gls, align 8
  %a.load92 = load ptr, ptr %var.gls, align 8
  %a.null93 = icmp eq ptr %a.load92, null
  br i1 %a.null93, label %a.create94, label %a.after95

loop.exit.nat.165:                                ; preds = %loop.header.165
  br label %loop.exit.165

loop.latch.165:                                   ; preds = %choice.exit208
  %step.val210 = load i64, ptr %loop.step.165, align 8
  %loop.next211 = add i64 %counter.load86, %step.val210
  store i64 %loop.next211, ptr %loop.idx.165, align 8
  br label %loop.header.165

loop.exit.165:                                    ; preds = %choice.then207, %loop.exit.nat.165
  %var.load212 = load ptr, ptr %"var.g_found'", align 8
  br label %choice.exit65

a.create94:                                       ; preds = %loop.body.165
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
  store ptr %a.create97, ptr %var.gls, align 8
  br label %a.after95

a.after95:                                        ; preds = %a.create94, %loop.body.165
  %a.load2103 = load ptr, ptr %var.gls, align 8
  %a.len.query104 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2103, i32 0, i32 0
  %a.len.query105 = load i64, ptr %a.len.query104, align 8
  %subtmp = sub i64 %a.len.query105, 1
  %var.load106 = load i64, ptr %var.k, align 8
  %subtmp107 = sub i64 %subtmp, %var.load106
  store i64 %subtmp107, ptr %var.i, align 8
  %var.load108 = load ptr, ptr %var.gls, align 8
  %a.load109 = load ptr, ptr %var.gls, align 8
  %a.null110 = icmp eq ptr %a.load109, null
  br i1 %a.null110, label %a.create111, label %a.after112

a.create111:                                      ; preds = %a.after95
  %arena.cur113 = call ptr @dva_arena_current()
  %a.create114 = call ptr @dva_arena_alloc(ptr %arena.cur113, i64 24)
  %arena.cur115 = call ptr @dva_arena_current()
  %a.buf116 = call ptr @dva_arena_alloc(ptr %arena.cur115, i64 128)
  %a.len.gep117 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create114, i32 0, i32 0
  store i64 0, ptr %a.len.gep117, align 8
  %a.data.gep118 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create114, i32 0, i32 1
  store ptr %a.buf116, ptr %a.data.gep118, align 8
  %a.cap.gep119 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create114, i32 0, i32 2
  store i64 16, ptr %a.cap.gep119, align 8
  store ptr %a.create114, ptr %var.gls, align 8
  br label %a.after112

a.after112:                                       ; preds = %a.create111, %a.after95
  %a.load2120 = load ptr, ptr %var.gls, align 8
  %var.load121 = load i64, ptr %var.i, align 8
  %a.rd.nonnull122 = icmp ne ptr %a.load2120, null
  br i1 %a.rd.nonnull122, label %a.rd.check123, label %a.rd.err.null125

a.rd.check123:                                    ; preds = %a.after112
  %a.rd.len128 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2120, i32 0, i32 0
  %a.rd.len129 = load i64, ptr %a.rd.len128, align 8
  %a.rd.ge0130 = icmp sge i64 %var.load121, 0
  %a.rd.lt131 = icmp slt i64 %var.load121, %a.rd.len129
  %a.rd.bounds132 = and i1 %a.rd.ge0130, %a.rd.lt131
  br i1 %a.rd.bounds132, label %a.rd.ok124, label %a.rd.err.oob126

a.rd.ok124:                                       ; preds = %a.rd.check123
  %a.rd.data133 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2120, i32 0, i32 1
  %a.rd.data134 = load ptr, ptr %a.rd.data133, align 8
  %a.rd.elem.gep135 = getelementptr i64, ptr %a.rd.data134, i64 %var.load121
  %a.rd.elem136 = load i64, ptr %a.rd.elem.gep135, align 8
  br label %a.rd.done127

a.rd.err.null125:                                 ; preds = %a.after112
  %arena.cur137 = call ptr @dva_arena_current()
  %err.alloc138 = call ptr @dva_arena_alloc(ptr %arena.cur137, i64 56)
  %err.code.gep139 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc138, i32 0, i32 0
  store i64 4011, ptr %err.code.gep139, align 8
  %err.msg.gep140 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc138, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep140, align 8
  %err.file.gep141 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc138, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep141, align 8
  %err.line.gep142 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc138, i32 0, i32 3
  store i64 275, ptr %err.line.gep142, align 8
  %err.col.gep143 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc138, i32 0, i32 4
  store i64 23, ptr %err.col.gep143, align 8
  %err.ctx.gep144 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc138, i32 0, i32 5
  %err.ctx0.gep145 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep144, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep145, align 8
  %err.ctx1.gep146 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep144, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep146, align 8
  %err.p2i147 = ptrtoint ptr %err.alloc138 to i64
  br label %a.rd.done127

a.rd.err.oob126:                                  ; preds = %a.rd.check123
  %arena.cur148 = call ptr @dva_arena_current()
  %err.alloc149 = call ptr @dva_arena_alloc(ptr %arena.cur148, i64 56)
  %err.code.gep150 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 0
  store i64 4011, ptr %err.code.gep150, align 8
  %err.msg.gep151 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep151, align 8
  %err.file.gep152 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep152, align 8
  %err.line.gep153 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 3
  store i64 275, ptr %err.line.gep153, align 8
  %err.col.gep154 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 4
  store i64 23, ptr %err.col.gep154, align 8
  %err.ctx.gep155 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 5
  %err.ctx0.gep156 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep155, i32 0, i32 0
  store i64 %var.load121, ptr %err.ctx0.gep156, align 8
  %err.ctx1.gep157 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep155, i32 0, i32 1
  store i64 %a.rd.len129, ptr %err.ctx1.gep157, align 8
  %err.p2i158 = ptrtoint ptr %err.alloc149 to i64
  br label %a.rd.done127

a.rd.done127:                                     ; preds = %a.rd.err.oob126, %a.rd.err.null125, %a.rd.ok124
  %a.rd.tag159 = phi i1 [ true, %a.rd.ok124 ], [ false, %a.rd.err.null125 ], [ false, %a.rd.err.oob126 ]
  %a.rd.pay160 = phi i64 [ %a.rd.elem136, %a.rd.ok124 ], [ %err.p2i147, %a.rd.err.null125 ], [ %err.p2i158, %a.rd.err.oob126 ]
  %ram.tag161 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag159, 0
  %ram.pay162 = insertvalue { i1, i64 } %ram.tag161, i64 %a.rd.pay160, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay162, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.166, label %unwrap.abort.166

unwrap.pos.166:                                   ; preds = %a.rd.done127
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay162, 1
  %pay.ptr182 = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr182, ptr %var.b, align 8
  %var.load183 = load ptr, ptr %var.b, align 8
  %fld.gep184 = getelementptr inbounds { ptr, ptr, ptr, i1, i1, i64 }, ptr %var.load183, i32 0, i32 0
  %fld.load185 = load ptr, ptr %fld.gep184, align 8
  %var.load186 = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load185, i32 0, i32 0
  %eq.lhs.len187 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len188 = and i64 %eq.lhs.len187, 281474976710655
  %str.tag189 = lshr i64 %eq.lhs.len187, 48
  %str.immortal190 = icmp eq i64 %str.tag189, 0
  br i1 %str.immortal190, label %str_ok192, label %str_gen_check191

unwrap.abort.166:                                 ; preds = %a.rd.done127
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay162, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep163 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep163, align 8
  %err.msg.gep164 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep164, align 8
  %err.file.gep165 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep165, align 8
  %err.line.gep166 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep166, align 8
  %err.col.gep167 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep167, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len168 = load i64, ptr %err.msg.len, align 8
  %err.msg.len169 = and i64 %err.msg.len168, 281474976710655
  %str.tag = lshr i64 %err.msg.len168, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %unwrap.abort.166
  %arena.cur170 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur170, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %unwrap.abort.166
  %err.msg.len32 = trunc i64 %err.msg.len169 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data171 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len172 = load i64, ptr %err.file.len, align 8
  %err.file.len173 = and i64 %err.file.len172, 281474976710655
  %str.tag174 = lshr i64 %err.file.len172, 48
  %str.immortal175 = icmp eq i64 %str.tag174, 0
  br i1 %str.immortal175, label %str_ok177, label %str_gen_check176

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check176:                                 ; preds = %str_ok
  %arena.cur179 = call ptr @dva_arena_current()
  %tag.valid180 = call i1 @dva_arena_validate_tag(ptr %arena.cur179, i64 %str.tag174)
  br i1 %tag.valid180, label %str_ok177, label %str_stale178

str_ok177:                                        ; preds = %str_stale178, %str_gen_check176, %str_ok
  %err.file.len32 = trunc i64 %err.file.len173 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data181 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale178:                                     ; preds = %str_gen_check176
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok177

err.thread:                                       ; preds = %str_ok177
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok177
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data171, i32 %err.file.len32, ptr %err.file.data181, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

str_gen_check191:                                 ; preds = %unwrap.pos.166
  %arena.cur194 = call ptr @dva_arena_current()
  %tag.valid195 = call i1 @dva_arena_validate_tag(ptr %arena.cur194, i64 %str.tag189)
  br i1 %tag.valid195, label %str_ok192, label %str_stale193

str_ok192:                                        ; preds = %str_stale193, %str_gen_check191, %unwrap.pos.166
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load186, i32 0, i32 0
  %eq.rhs.len196 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len197 = and i64 %eq.rhs.len196, 281474976710655
  %str.tag198 = lshr i64 %eq.rhs.len196, 48
  %str.immortal199 = icmp eq i64 %str.tag198, 0
  br i1 %str.immortal199, label %str_ok201, label %str_gen_check200

str_stale193:                                     ; preds = %str_gen_check191
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok192

str_gen_check200:                                 ; preds = %str_ok192
  %arena.cur203 = call ptr @dva_arena_current()
  %tag.valid204 = call i1 @dva_arena_validate_tag(ptr %arena.cur203, i64 %str.tag198)
  br i1 %tag.valid204, label %str_ok201, label %str_stale202

str_ok201:                                        ; preds = %str_stale202, %str_gen_check200, %str_ok192
  %eq.len = icmp eq i64 %eq.lhs.len188, %eq.rhs.len197
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale202:                                     ; preds = %str_gen_check200
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok201

str.eq.then:                                      ; preds = %str_ok201
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load185, i32 0, i32 1
  %eq.lhs.data205 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load186, i32 0, i32 1
  %eq.rhs.data206 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data205, ptr %eq.rhs.data206, i64 %eq.lhs.len188)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok201
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then207, label %choice.exit208

choice.then207:                                   ; preds = %str.eq.merge
  %var.load209 = load ptr, ptr %var.b, align 8
  store ptr %var.load209, ptr %"var.g_found'", align 8
  br label %loop.exit.165

choice.exit208:                                   ; preds = %str.eq.merge
  br label %loop.latch.165
}

define ptr @"type_env::lookup_binding"(ptr %0, ptr %1) #1 {
entry:
  %var.p = alloca ptr, align 8
  %var._100 = alloca ptr, align 8
  %var.pub = alloca ptr, align 8
  %var.qname = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.exact = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %call.res = call ptr @"type_env::lookup_binding_exact"(ptr %var.load, ptr %var.load1)
  store ptr %call.res, ptr %var.exact, align 8
  %var.load2 = load ptr, ptr %var.exact, align 8
  %niche.ne.null = icmp ne ptr %var.load2, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load2, ptr %var._, align 8
  store ptr %var.load2, ptr %var.b, align 8
  %var.load3 = load ptr, ptr %var.b, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load4, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len5 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len6 = and i64 %eq.lhs.len5, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len5, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.exit18, %choice.then
  %choice.res191 = phi ptr [ %var.load3, %choice.then ], [ %choice.res190, %choice.exit18 ]
  ret ptr %choice.res191

str_gen_check:                                    ; preds = %choice.else
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len7 = and i64 %eq.rhs.len, 281474976710655
  %str.tag8 = lshr i64 %eq.rhs.len, 48
  %str.immortal9 = icmp eq i64 %str.tag8, 0
  br i1 %str.immortal9, label %str_ok11, label %str_gen_check10

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check10:                                  ; preds = %str_ok
  %arena.cur13 = call ptr @dva_arena_current()
  %tag.valid14 = call i1 @dva_arena_validate_tag(ptr %arena.cur13, i64 %str.tag8)
  br i1 %tag.valid14, label %str_ok11, label %str_stale12

str_ok11:                                         ; preds = %str_stale12, %str_gen_check10, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len6, %eq.rhs.len7
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale12:                                      ; preds = %str_gen_check10
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok11

str.eq.then:                                      ; preds = %str_ok11
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data15 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data15, ptr %eq.rhs.data, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok11
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then16, label %choice.else17

choice.then16:                                    ; preds = %str.eq.merge
  %var.load19 = load ptr, ptr %var.env, align 8
  %fld.gep20 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load19, i32 0, i32 8
  %fld.load21 = load ptr, ptr %fld.gep20, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %fld.load21, i32 0, i32 0
  %concat.lhs22 = load i64, ptr %concat.lhs, align 8
  %concat.lhs23 = and i64 %concat.lhs22, 281474976710655
  %str.tag24 = lshr i64 %concat.lhs22, 48
  %str.immortal25 = icmp eq i64 %str.tag24, 0
  br i1 %str.immortal25, label %str_ok27, label %str_gen_check26

choice.else17:                                    ; preds = %str.eq.merge
  br label %choice.exit18

choice.exit18:                                    ; preds = %choice.else17, %choice.exit99
  %choice.res190 = phi ptr [ %choice.res, %choice.exit99 ], [ null, %choice.else17 ]
  br label %choice.exit

str_gen_check26:                                  ; preds = %choice.then16
  %arena.cur29 = call ptr @dva_arena_current()
  %tag.valid30 = call i1 @dva_arena_validate_tag(ptr %arena.cur29, i64 %str.tag24)
  br i1 %tag.valid30, label %str_ok27, label %str_stale28

str_ok27:                                         ; preds = %str_stale28, %str_gen_check26, %choice.then16
  %concat.lhs31 = getelementptr inbounds { i64, ptr }, ptr %fld.load21, i32 0, i32 1
  %concat.lhs32 = load ptr, ptr %concat.lhs31, align 8
  %concat.rhs = load i64, ptr @str.4.struct, align 8
  %concat.rhs33 = and i64 %concat.rhs, 281474976710655
  %str.tag34 = lshr i64 %concat.rhs, 48
  %str.immortal35 = icmp eq i64 %str.tag34, 0
  br i1 %str.immortal35, label %str_ok37, label %str_gen_check36

str_stale28:                                      ; preds = %str_gen_check26
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok27

str_gen_check36:                                  ; preds = %str_ok27
  %arena.cur39 = call ptr @dva_arena_current()
  %tag.valid40 = call i1 @dva_arena_validate_tag(ptr %arena.cur39, i64 %str.tag34)
  br i1 %tag.valid40, label %str_ok37, label %str_stale38

str_ok37:                                         ; preds = %str_stale38, %str_gen_check36, %str_ok27
  %concat.rhs41 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs23, i64 %concat.rhs33)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len42

str_stale38:                                      ; preds = %str_gen_check36
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok37

concat.sum.len42:                                 ; preds = %str_overflow_abort, %str_ok37
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum43 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf44 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf44, label %str_overflow_abort46, label %concat.tot.len45

str_overflow_abort:                               ; preds = %str_ok37
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
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
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load49 = load ptr, ptr %var.name, align 8
  %concat.lhs50 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs51 = load i64, ptr %concat.lhs50, align 8
  %concat.lhs52 = and i64 %concat.lhs51, 281474976710655
  %str.tag53 = lshr i64 %concat.lhs51, 48
  %str.immortal54 = icmp eq i64 %str.tag53, 0
  br i1 %str.immortal54, label %str_ok56, label %str_gen_check55

str_overflow_abort46:                             ; preds = %concat.sum.len42
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len45

str_gen_check55:                                  ; preds = %concat.tot.len45
  %arena.cur58 = call ptr @dva_arena_current()
  %tag.valid59 = call i1 @dva_arena_validate_tag(ptr %arena.cur58, i64 %str.tag53)
  br i1 %tag.valid59, label %str_ok56, label %str_stale57

str_ok56:                                         ; preds = %str_stale57, %str_gen_check55, %concat.tot.len45
  %concat.lhs60 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs61 = load ptr, ptr %concat.lhs60, align 8
  %concat.rhs62 = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 0
  %concat.rhs63 = load i64, ptr %concat.rhs62, align 8
  %concat.rhs64 = and i64 %concat.rhs63, 281474976710655
  %str.tag65 = lshr i64 %concat.rhs63, 48
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
  %concat.rhs72 = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 1
  %concat.rhs73 = load ptr, ptr %concat.rhs72, align 8
  %concat.sum.len74 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs52, i64 %concat.rhs64)
  %sum75 = extractvalue { i64, i1 } %concat.sum.len74, 0
  %ovf76 = extractvalue { i64, i1 } %concat.sum.len74, 1
  br i1 %ovf76, label %str_overflow_abort78, label %concat.sum.len77

str_stale69:                                      ; preds = %str_gen_check67
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok68

concat.sum.len77:                                 ; preds = %str_overflow_abort78, %str_ok68
  %concat.tot.len79 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum75, i64 1)
  %sum80 = extractvalue { i64, i1 } %concat.tot.len79, 0
  %ovf81 = extractvalue { i64, i1 } %concat.tot.len79, 1
  br i1 %ovf81, label %str_overflow_abort83, label %concat.tot.len82

str_overflow_abort78:                             ; preds = %str_ok68
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len77

concat.tot.len82:                                 ; preds = %str_overflow_abort83, %concat.sum.len77
  %arena.cur84 = call ptr @dva_arena_current()
  %concat.buf85 = call ptr @dva_arena_alloc(ptr %arena.cur84, i64 %sum80)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf85, ptr align 1 %concat.lhs61, i64 %concat.lhs52, i1 false)
  %concat.mid86 = getelementptr i8, ptr %concat.buf85, i64 %concat.lhs52
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid86, ptr align 1 %concat.rhs73, i64 %concat.rhs64, i1 false)
  %concat.nul87 = getelementptr i8, ptr %concat.buf85, i64 %sum75
  store i8 0, ptr %concat.nul87, align 1
  %arena.cur88 = call ptr @dva_arena_current()
  %concat.str89 = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 16)
  %str.build.len.gep90 = getelementptr inbounds { i64, ptr }, ptr %concat.str89, i32 0, i32 0
  store i64 %sum75, ptr %str.build.len.gep90, align 8
  %str.build.data.gep91 = getelementptr inbounds { i64, ptr }, ptr %concat.str89, i32 0, i32 1
  store ptr %concat.buf85, ptr %str.build.data.gep91, align 8
  store ptr %concat.str89, ptr %var.qname, align 8
  %var.load92 = load ptr, ptr %var.env, align 8
  %var.load93 = load ptr, ptr %var.qname, align 8
  %call.res94 = call ptr @"type_env::lookup_binding_exact"(ptr %var.load92, ptr %var.load93)
  store ptr %call.res94, ptr %var.pub, align 8
  %var.load95 = load ptr, ptr %var.pub, align 8
  %niche.ne.null96 = icmp ne ptr %var.load95, null
  br i1 %niche.ne.null96, label %choice.then97, label %choice.else98

str_overflow_abort83:                             ; preds = %concat.sum.len77
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len82

choice.then97:                                    ; preds = %concat.tot.len82
  store ptr %var.load95, ptr %var._100, align 8
  store ptr %var.load95, ptr %var.p, align 8
  %var.load101 = load ptr, ptr %var.p, align 8
  br label %choice.exit99

choice.else98:                                    ; preds = %concat.tot.len82
  %var.load102 = load ptr, ptr %var.env, align 8
  %var.load103 = load ptr, ptr %var.env, align 8
  %fld.gep104 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load103, i32 0, i32 8
  %fld.load105 = load ptr, ptr %fld.gep104, align 8
  %concat.lhs106 = getelementptr inbounds { i64, ptr }, ptr %fld.load105, i32 0, i32 0
  %concat.lhs107 = load i64, ptr %concat.lhs106, align 8
  %concat.lhs108 = and i64 %concat.lhs107, 281474976710655
  %str.tag109 = lshr i64 %concat.lhs107, 48
  %str.immortal110 = icmp eq i64 %str.tag109, 0
  br i1 %str.immortal110, label %str_ok112, label %str_gen_check111

choice.exit99:                                    ; preds = %concat.tot.len179, %choice.then97
  %choice.res = phi ptr [ %var.load101, %choice.then97 ], [ %call.res189, %concat.tot.len179 ]
  br label %choice.exit18

str_gen_check111:                                 ; preds = %choice.else98
  %arena.cur114 = call ptr @dva_arena_current()
  %tag.valid115 = call i1 @dva_arena_validate_tag(ptr %arena.cur114, i64 %str.tag109)
  br i1 %tag.valid115, label %str_ok112, label %str_stale113

str_ok112:                                        ; preds = %str_stale113, %str_gen_check111, %choice.else98
  %concat.lhs116 = getelementptr inbounds { i64, ptr }, ptr %fld.load105, i32 0, i32 1
  %concat.lhs117 = load ptr, ptr %concat.lhs116, align 8
  %concat.rhs118 = load i64, ptr @str.7.struct, align 8
  %concat.rhs119 = and i64 %concat.rhs118, 281474976710655
  %str.tag120 = lshr i64 %concat.rhs118, 48
  %str.immortal121 = icmp eq i64 %str.tag120, 0
  br i1 %str.immortal121, label %str_ok123, label %str_gen_check122

str_stale113:                                     ; preds = %str_gen_check111
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok112

str_gen_check122:                                 ; preds = %str_ok112
  %arena.cur125 = call ptr @dva_arena_current()
  %tag.valid126 = call i1 @dva_arena_validate_tag(ptr %arena.cur125, i64 %str.tag120)
  br i1 %tag.valid126, label %str_ok123, label %str_stale124

str_ok123:                                        ; preds = %str_stale124, %str_gen_check122, %str_ok112
  %concat.rhs127 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %concat.sum.len128 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs108, i64 %concat.rhs119)
  %sum129 = extractvalue { i64, i1 } %concat.sum.len128, 0
  %ovf130 = extractvalue { i64, i1 } %concat.sum.len128, 1
  br i1 %ovf130, label %str_overflow_abort132, label %concat.sum.len131

str_stale124:                                     ; preds = %str_gen_check122
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok123

concat.sum.len131:                                ; preds = %str_overflow_abort132, %str_ok123
  %concat.tot.len133 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum129, i64 1)
  %sum134 = extractvalue { i64, i1 } %concat.tot.len133, 0
  %ovf135 = extractvalue { i64, i1 } %concat.tot.len133, 1
  br i1 %ovf135, label %str_overflow_abort137, label %concat.tot.len136

str_overflow_abort132:                            ; preds = %str_ok123
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len131

concat.tot.len136:                                ; preds = %str_overflow_abort137, %concat.sum.len131
  %arena.cur138 = call ptr @dva_arena_current()
  %concat.buf139 = call ptr @dva_arena_alloc(ptr %arena.cur138, i64 %sum134)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf139, ptr align 1 %concat.lhs117, i64 %concat.lhs108, i1 false)
  %concat.mid140 = getelementptr i8, ptr %concat.buf139, i64 %concat.lhs108
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid140, ptr align 1 %concat.rhs127, i64 %concat.rhs119, i1 false)
  %concat.nul141 = getelementptr i8, ptr %concat.buf139, i64 %sum129
  store i8 0, ptr %concat.nul141, align 1
  %arena.cur142 = call ptr @dva_arena_current()
  %concat.str143 = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 16)
  %str.build.len.gep144 = getelementptr inbounds { i64, ptr }, ptr %concat.str143, i32 0, i32 0
  store i64 %sum129, ptr %str.build.len.gep144, align 8
  %str.build.data.gep145 = getelementptr inbounds { i64, ptr }, ptr %concat.str143, i32 0, i32 1
  store ptr %concat.buf139, ptr %str.build.data.gep145, align 8
  %var.load146 = load ptr, ptr %var.name, align 8
  %concat.lhs147 = getelementptr inbounds { i64, ptr }, ptr %concat.str143, i32 0, i32 0
  %concat.lhs148 = load i64, ptr %concat.lhs147, align 8
  %concat.lhs149 = and i64 %concat.lhs148, 281474976710655
  %str.tag150 = lshr i64 %concat.lhs148, 48
  %str.immortal151 = icmp eq i64 %str.tag150, 0
  br i1 %str.immortal151, label %str_ok153, label %str_gen_check152

str_overflow_abort137:                            ; preds = %concat.sum.len131
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len136

str_gen_check152:                                 ; preds = %concat.tot.len136
  %arena.cur155 = call ptr @dva_arena_current()
  %tag.valid156 = call i1 @dva_arena_validate_tag(ptr %arena.cur155, i64 %str.tag150)
  br i1 %tag.valid156, label %str_ok153, label %str_stale154

str_ok153:                                        ; preds = %str_stale154, %str_gen_check152, %concat.tot.len136
  %concat.lhs157 = getelementptr inbounds { i64, ptr }, ptr %concat.str143, i32 0, i32 1
  %concat.lhs158 = load ptr, ptr %concat.lhs157, align 8
  %concat.rhs159 = getelementptr inbounds { i64, ptr }, ptr %var.load146, i32 0, i32 0
  %concat.rhs160 = load i64, ptr %concat.rhs159, align 8
  %concat.rhs161 = and i64 %concat.rhs160, 281474976710655
  %str.tag162 = lshr i64 %concat.rhs160, 48
  %str.immortal163 = icmp eq i64 %str.tag162, 0
  br i1 %str.immortal163, label %str_ok165, label %str_gen_check164

str_stale154:                                     ; preds = %str_gen_check152
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok153

str_gen_check164:                                 ; preds = %str_ok153
  %arena.cur167 = call ptr @dva_arena_current()
  %tag.valid168 = call i1 @dva_arena_validate_tag(ptr %arena.cur167, i64 %str.tag162)
  br i1 %tag.valid168, label %str_ok165, label %str_stale166

str_ok165:                                        ; preds = %str_stale166, %str_gen_check164, %str_ok153
  %concat.rhs169 = getelementptr inbounds { i64, ptr }, ptr %var.load146, i32 0, i32 1
  %concat.rhs170 = load ptr, ptr %concat.rhs169, align 8
  %concat.sum.len171 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs149, i64 %concat.rhs161)
  %sum172 = extractvalue { i64, i1 } %concat.sum.len171, 0
  %ovf173 = extractvalue { i64, i1 } %concat.sum.len171, 1
  br i1 %ovf173, label %str_overflow_abort175, label %concat.sum.len174

str_stale166:                                     ; preds = %str_gen_check164
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok165

concat.sum.len174:                                ; preds = %str_overflow_abort175, %str_ok165
  %concat.tot.len176 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum172, i64 1)
  %sum177 = extractvalue { i64, i1 } %concat.tot.len176, 0
  %ovf178 = extractvalue { i64, i1 } %concat.tot.len176, 1
  br i1 %ovf178, label %str_overflow_abort180, label %concat.tot.len179

str_overflow_abort175:                            ; preds = %str_ok165
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len174

concat.tot.len179:                                ; preds = %str_overflow_abort180, %concat.sum.len174
  %arena.cur181 = call ptr @dva_arena_current()
  %concat.buf182 = call ptr @dva_arena_alloc(ptr %arena.cur181, i64 %sum177)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf182, ptr align 1 %concat.lhs158, i64 %concat.lhs149, i1 false)
  %concat.mid183 = getelementptr i8, ptr %concat.buf182, i64 %concat.lhs149
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid183, ptr align 1 %concat.rhs170, i64 %concat.rhs161, i1 false)
  %concat.nul184 = getelementptr i8, ptr %concat.buf182, i64 %sum172
  store i8 0, ptr %concat.nul184, align 1
  %arena.cur185 = call ptr @dva_arena_current()
  %concat.str186 = call ptr @dva_arena_alloc(ptr %arena.cur185, i64 16)
  %str.build.len.gep187 = getelementptr inbounds { i64, ptr }, ptr %concat.str186, i32 0, i32 0
  store i64 %sum172, ptr %str.build.len.gep187, align 8
  %str.build.data.gep188 = getelementptr inbounds { i64, ptr }, ptr %concat.str186, i32 0, i32 1
  store ptr %concat.buf182, ptr %str.build.data.gep188, align 8
  %call.res189 = call ptr @"type_env::lookup_binding_exact"(ptr %var.load102, ptr %concat.str186)
  br label %choice.exit99

str_overflow_abort180:                            ; preds = %concat.sum.len174
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len179
}

define { i1, i64 } @"type_env::find_last_dot"(ptr %0, i64 %1) #1 {
entry:
  %var.i = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.i, align 8
  %var.load = load i64, ptr %var.i, align 8
  %cmptmp = icmp slt i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret { i1, i64 } zeroinitializer

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load1 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %s.read.len2 = load i64, ptr %s.read.len, align 8
  %s.read.len3 = and i64 %s.read.len2, 281474976710655
  %str.tag = lshr i64 %s.read.len2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check:                                    ; preds = %choice.exit
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %s.read.data4 = load ptr, ptr %s.read.data, align 8
  %var.load5 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load5, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

idx_big_check:                                    ; preds = %str_ok
  %idx.big = icmp sge i64 %var.load5, %s.read.len3
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data4, i64 %var.load5
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp6 = icmp eq i64 %s.byte.val, 46
  br i1 %cmptmp6, label %choice.then7, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then7:                                     ; preds = %idx_ok
  %var.load9 = load i64, ptr %var.i, align 8
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load9, 1
  br label %choice.exit8

choice.else:                                      ; preds = %idx_ok
  %var.load10 = load ptr, ptr %var.s, align 8
  %var.load11 = load i64, ptr %var.i, align 8
  %subtmp = sub i64 %var.load11, 1
  %call.res = call { i1, i64 } @"type_env::find_last_dot"(ptr %var.load10, i64 %subtmp)
  br label %choice.exit8

choice.exit8:                                     ; preds = %choice.else, %choice.then7
  %choice.res = phi { i1, i64 } [ %ram.pay, %choice.then7 ], [ %call.res, %choice.else ]
  ret { i1, i64 } %choice.res
}

define ptr @"type_env::drop_last_dot"(ptr %0) #1 {
entry:
  %var._13 = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.167 = alloca i64, align 8
  %loop.idx.167 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.cut = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
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
  %subtmp = sub i64 %str.len.query3, 1
  %call.res = call { i1, i64 } @"type_env::find_last_dot"(ptr %var.load, i64 %subtmp)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._, align 8
  br label %choice.exit

choice.else:                                      ; preds = %str_ok
  ret ptr @str.0.struct

choice.exit:                                      ; preds = %ret.dead, %choice.then
  %choice.res = phi i64 [ %ram.pay, %choice.then ], [ 0, %ret.dead ]
  store i64 %choice.res, ptr %var.cut, align 8
  %var.load4 = load i64, ptr %var.cut, align 8
  %cmptmp = icmp sle i64 %var.load4, 0
  br i1 %cmptmp, label %choice.then5, label %choice.exit6

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then5:                                     ; preds = %choice.exit
  ret ptr @str.0.struct

choice.exit6:                                     ; preds = %ret.dead7, %choice.exit
  %var.load8 = load i64, ptr %var.cut, align 8
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

ret.dead7:                                        ; No predecessors!
  br label %choice.exit6

b.buf.len10:                                      ; preds = %str_overflow_abort, %choice.exit6
  %arena.cur11 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load12 = load i64, ptr %var.cut, align 8
  store i64 0, ptr %loop.idx.167, align 8
  br label %loop.header.167

str_overflow_abort:                               ; preds = %choice.exit6
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len10

loop.header.167:                                  ; preds = %loop.latch.167, %b.buf.len10
  %counter.load = load i64, ptr %loop.idx.167, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load12
  br i1 %loop.cond, label %loop.body.167, label %loop.exit.nat.167

loop.body.167:                                    ; preds = %loop.header.167
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.167, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._13, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load14 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %s.read.len15 = load i64, ptr %s.read.len, align 8
  %s.read.len16 = and i64 %s.read.len15, 281474976710655
  %str.tag17 = lshr i64 %s.read.len15, 48
  %str.immortal18 = icmp eq i64 %str.tag17, 0
  br i1 %str.immortal18, label %str_ok20, label %str_gen_check19

loop.exit.nat.167:                                ; preds = %loop.header.167
  br label %loop.exit.167

loop.latch.167:                                   ; preds = %b.push_done
  %step.val = load i64, ptr %loop.step.167, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.167, align 8
  br label %loop.header.167

loop.exit.167:                                    ; preds = %loop.exit.nat.167
  %var.load37 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load37, i32 0, i32 0
  %b.freeze.len38 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load37, i32 0, i32 1
  %b.freeze.data39 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_gen_check19:                                  ; preds = %loop.body.167
  %arena.cur22 = call ptr @dva_arena_current()
  %tag.valid23 = call i1 @dva_arena_validate_tag(ptr %arena.cur22, i64 %str.tag17)
  br i1 %tag.valid23, label %str_ok20, label %str_stale21

str_ok20:                                         ; preds = %str_stale21, %str_gen_check19, %loop.body.167
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
  %b.b.ge0 = icmp sge i64 %s.byte.val, 0
  %b.b.le255 = icmp sle i64 %s.byte.val, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

idx_oob:                                          ; preds = %idx_big_check, %str_ok20
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

b.byte_ok:                                        ; preds = %b.byte_err, %idx_ok
  %b.byte.i8 = trunc i64 %s.byte.val to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len26 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap27 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data28 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len26, %b.cap27
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %idx_ok
  %5 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap27, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum29 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf30 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf30, label %str_overflow_abort32, label %b.new.buf.len31

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len31
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data34 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len35 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data34, i64 %b.cur.len35
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len35, 1
  %b.nul = getelementptr i8, ptr %b.cur.data34, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep36 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep36, align 8
  br label %loop.latch.167

b.new.buf.len31:                                  ; preds = %str_overflow_abort32, %b.grow
  %arena.cur33 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 %sum29)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data28, i64 %b.len26, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len26
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort32:                             ; preds = %b.grow
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len31

b.freeze.check:                                   ; preds = %loop.exit.167
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data39, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data39, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data39, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len38, 1
  %arena.cur40 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data39, i64 %b.freeze.len38, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len38
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.167
  %b.freeze.data41 = phi ptr [ %b.freeze.data39, %loop.exit.167 ], [ %b.freeze.data39, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur42 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len38, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data41, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load37, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load37, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load37, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

define i1 @"type_env::init_has_name"(ptr %0, ptr %1) #1 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.n = alloca ptr, align 8
  %loop.step.168 = alloca i64, align 8
  %loop.idx.168 = alloca i64, align 8
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
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len3 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.168, align 8
  br label %loop.header.168

loop.header.168:                                  ; preds = %loop.latch.168, %a.after
  %counter.load = load i64, ptr %loop.idx.168, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.168, label %loop.exit.nat.168

loop.body.168:                                    ; preds = %loop.header.168
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.168, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.n, align 8
  %var.load5 = load ptr, ptr %var.n, align 8
  %var.load6 = load ptr, ptr %var.s, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len7 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len8 = and i64 %eq.lhs.len7, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len7, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.168:                                ; preds = %loop.header.168
  br label %loop.exit.168

loop.latch.168:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.168, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.168, align 8
  br label %loop.header.168

loop.exit.168:                                    ; preds = %loop.exit.nat.168
  ret i1 false

str_gen_check:                                    ; preds = %loop.body.168
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.168
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %eq.rhs.len10 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len11 = and i64 %eq.rhs.len10, 281474976710655
  %str.tag12 = lshr i64 %eq.rhs.len10, 48
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
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len11
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale16:                                      ; preds = %str_gen_check14
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok15

str.eq.then:                                      ; preds = %str_ok15
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data19 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %eq.rhs.data20 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data19, ptr %eq.rhs.data20, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok15
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  ret i1 true

choice.exit:                                      ; preds = %ret.dead, %str.eq.merge
  br label %loop.latch.168

ret.dead:                                         ; No predecessors!
  br label %choice.exit
}

define void @"type_env::init_mark_tracked"(ptr %0, ptr %1) #1 {
entry:
  %var.tr = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 4
  %fld.gep1 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep1, align 8
  %var.load2 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load2)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.env, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load3, i32 0, i32 4
  %fld.gep5 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep4, i32 0, i32 0
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  store ptr %fld.load6, ptr %var.tr, align 8
  %var.load7 = load ptr, ptr %var.name, align 8
  %a.load = load ptr, ptr %var.tr, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %a.after19, %entry
  ret void

a.create:                                         ; preds = %choice.then
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
  store ptr %a.create8, ptr %var.tr, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.tr, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len10 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap11 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len10, %a.cap11
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data12 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len13 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data12, i64 %a.cur.len13
  %slot.p2i = ptrtoint ptr %var.load7 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len13, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load14 = load ptr, ptr %var.env, align 8
  %var.load15 = load ptr, ptr %var.tr, align 8
  %a.load16 = load ptr, ptr %var.tr, align 8
  %a.null17 = icmp eq ptr %a.load16, null
  br i1 %a.null17, label %a.create18, label %a.after19

a.create18:                                       ; preds = %a.store
  %arena.cur20 = call ptr @dva_arena_current()
  %a.create21 = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 24)
  %arena.cur22 = call ptr @dva_arena_current()
  %a.buf23 = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 128)
  %a.len.gep24 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create21, i32 0, i32 0
  store i64 0, ptr %a.len.gep24, align 8
  %a.data.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create21, i32 0, i32 1
  store ptr %a.buf23, ptr %a.data.gep25, align 8
  %a.cap.gep26 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create21, i32 0, i32 2
  store i64 16, ptr %a.cap.gep26, align 8
  store ptr %a.create21, ptr %var.tr, align 8
  br label %a.after19

a.after19:                                        ; preds = %a.create18, %a.store
  %a.load227 = load ptr, ptr %var.tr, align 8
  %var.load28 = load ptr, ptr %var.env, align 8
  %fld.gep29 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load28, i32 0, i32 4
  %fld.gep30 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep29, i32 0, i32 1
  %fld.load31 = load ptr, ptr %fld.gep30, align 8
  %var.load32 = load ptr, ptr %var.env, align 8
  %fld.gep33 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load32, i32 0, i32 4
  %fld.gep34 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep33, i32 0, i32 2
  %fld.load35 = load ptr, ptr %fld.gep34, align 8
  %arena.cur36 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load227, ptr %rec.fld, align 8
  %rec.fld37 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %fld.load31, ptr %rec.fld37, align 8
  %rec.fld38 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %fld.load35, ptr %rec.fld38, align 8
  %fld.gep39 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load14, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %fld.gep39, ptr align 1 %rec.alloc, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64), i1 false)
  br label %choice.exit
}

define i1 @"type_env::init_is_tracked"(ptr %0, ptr %1) #1 {
entry:
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 4
  %fld.gep1 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep1, align 8
  %var.load2 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load2)
  ret i1 %call.res
}

define void @"type_env::init_mark_whole"(ptr %0, ptr %1) #1 {
entry:
  %var.wh = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 4
  %fld.gep1 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep1, align 8
  %var.load2 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load2)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.env, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load3, i32 0, i32 4
  %fld.gep5 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep4, i32 0, i32 1
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  store ptr %fld.load6, ptr %var.wh, align 8
  %var.load7 = load ptr, ptr %var.name, align 8
  %a.load = load ptr, ptr %var.wh, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %a.after23, %entry
  ret void

a.create:                                         ; preds = %choice.then
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
  store ptr %a.create8, ptr %var.wh, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.wh, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len10 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap11 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len10, %a.cap11
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data12 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len13 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data12, i64 %a.cur.len13
  %slot.p2i = ptrtoint ptr %var.load7 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len13, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load14 = load ptr, ptr %var.env, align 8
  %var.load15 = load ptr, ptr %var.env, align 8
  %fld.gep16 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load15, i32 0, i32 4
  %fld.gep17 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep16, i32 0, i32 0
  %fld.load18 = load ptr, ptr %fld.gep17, align 8
  %var.load19 = load ptr, ptr %var.wh, align 8
  %a.load20 = load ptr, ptr %var.wh, align 8
  %a.null21 = icmp eq ptr %a.load20, null
  br i1 %a.null21, label %a.create22, label %a.after23

a.create22:                                       ; preds = %a.store
  %arena.cur24 = call ptr @dva_arena_current()
  %a.create25 = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 24)
  %arena.cur26 = call ptr @dva_arena_current()
  %a.buf27 = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 128)
  %a.len.gep28 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create25, i32 0, i32 0
  store i64 0, ptr %a.len.gep28, align 8
  %a.data.gep29 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create25, i32 0, i32 1
  store ptr %a.buf27, ptr %a.data.gep29, align 8
  %a.cap.gep30 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create25, i32 0, i32 2
  store i64 16, ptr %a.cap.gep30, align 8
  store ptr %a.create25, ptr %var.wh, align 8
  br label %a.after23

a.after23:                                        ; preds = %a.create22, %a.store
  %a.load231 = load ptr, ptr %var.wh, align 8
  %var.load32 = load ptr, ptr %var.env, align 8
  %fld.gep33 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load32, i32 0, i32 4
  %fld.gep34 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep33, i32 0, i32 2
  %fld.load35 = load ptr, ptr %fld.gep34, align 8
  %arena.cur36 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %fld.load18, ptr %rec.fld, align 8
  %rec.fld37 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %a.load231, ptr %rec.fld37, align 8
  %rec.fld38 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %fld.load35, ptr %rec.fld38, align 8
  %fld.gep39 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load14, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %fld.gep39, ptr align 1 %rec.alloc, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64), i1 false)
  br label %choice.exit
}

define i1 @"type_env::init_is_whole"(ptr %0, ptr %1) #1 {
entry:
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 4
  %fld.gep1 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep1, align 8
  %var.load2 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load2)
  ret i1 %call.res
}

define void @"type_env::init_mark_written"(ptr %0, ptr %1) #1 {
entry:
  %var.wr = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 4
  %fld.gep1 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep1, align 8
  %var.load2 = load ptr, ptr %var.path, align 8
  %call.res = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load2)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.env, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load3, i32 0, i32 4
  %fld.gep5 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep4, i32 0, i32 2
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  store ptr %fld.load6, ptr %var.wr, align 8
  %var.load7 = load ptr, ptr %var.path, align 8
  %a.load = load ptr, ptr %var.wr, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %a.after27, %entry
  ret void

a.create:                                         ; preds = %choice.then
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
  store ptr %a.create8, ptr %var.wr, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.wr, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len10 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap11 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len10, %a.cap11
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data12 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len13 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data12, i64 %a.cur.len13
  %slot.p2i = ptrtoint ptr %var.load7 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len13, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load14 = load ptr, ptr %var.env, align 8
  %var.load15 = load ptr, ptr %var.env, align 8
  %fld.gep16 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load15, i32 0, i32 4
  %fld.gep17 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep16, i32 0, i32 0
  %fld.load18 = load ptr, ptr %fld.gep17, align 8
  %var.load19 = load ptr, ptr %var.env, align 8
  %fld.gep20 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load19, i32 0, i32 4
  %fld.gep21 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep20, i32 0, i32 1
  %fld.load22 = load ptr, ptr %fld.gep21, align 8
  %var.load23 = load ptr, ptr %var.wr, align 8
  %a.load24 = load ptr, ptr %var.wr, align 8
  %a.null25 = icmp eq ptr %a.load24, null
  br i1 %a.null25, label %a.create26, label %a.after27

a.create26:                                       ; preds = %a.store
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
  store ptr %a.create29, ptr %var.wr, align 8
  br label %a.after27

a.after27:                                        ; preds = %a.create26, %a.store
  %a.load235 = load ptr, ptr %var.wr, align 8
  %arena.cur36 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %fld.load18, ptr %rec.fld, align 8
  %rec.fld37 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %fld.load22, ptr %rec.fld37, align 8
  %rec.fld38 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.load235, ptr %rec.fld38, align 8
  %fld.gep39 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load14, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %fld.gep39, ptr align 1 %rec.alloc, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64), i1 false)
  br label %choice.exit
}

define i1 @"type_env::init_is_ok_walk"(ptr %0, ptr %1) #1 {
entry:
  %var.p = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %eq.lhs.len1 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %str.tag4 = lshr i64 %eq.rhs.len, 48
  %str.immortal5 = icmp eq i64 %str.tag4, 0
  br i1 %str.immortal5, label %str_ok7, label %str_gen_check6

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
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
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok7

str.eq.then:                                      ; preds = %str_ok7
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %eq.lhs.data11 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data11, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok7
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  br label %choice.exit

choice.else:                                      ; preds = %str.eq.merge
  %var.load12 = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load12, i32 0, i32 4
  %fld.gep13 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep13, align 8
  %var.load14 = load ptr, ptr %var.p, align 8
  %call.res = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load14)
  br i1 %call.res, label %choice.then15, label %choice.else16

choice.exit:                                      ; preds = %choice.exit17, %choice.then
  %choice.res22 = phi i1 [ false, %choice.then ], [ %choice.res, %choice.exit17 ]
  ret i1 %choice.res22

choice.then15:                                    ; preds = %choice.else
  br label %choice.exit17

choice.else16:                                    ; preds = %choice.else
  %var.load18 = load ptr, ptr %var.env, align 8
  %var.load19 = load ptr, ptr %var.p, align 8
  %call.res20 = call ptr @"type_env::drop_last_dot"(ptr %var.load19)
  %call.res21 = call i1 @"type_env::init_is_ok_walk"(ptr %var.load18, ptr %call.res20)
  br label %choice.exit17

choice.exit17:                                    ; preds = %choice.else16, %choice.then15
  %choice.res = phi i1 [ true, %choice.then15 ], [ %call.res21, %choice.else16 ]
  br label %choice.exit
}

define i1 @"type_env::init_has_subpath"(ptr %0, ptr %1) #1 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.w = alloca ptr, align 8
  %loop.step.169 = alloca i64, align 8
  %loop.idx.169 = alloca i64, align 8
  %"var.has'" = alloca i1, align 1
  %var.plen = alloca i64, align 8
  %var.prefix = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  %var.written = alloca ptr, align 8
  store ptr %0, ptr %var.written, align 8
  store ptr %1, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.lhs1 = load i64, ptr %concat.lhs, align 8
  %concat.lhs2 = and i64 %concat.lhs1, 281474976710655
  %str.tag = lshr i64 %concat.lhs1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs3 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.lhs4 = load ptr, ptr %concat.lhs3, align 8
  %concat.rhs = load i64, ptr @str.8.struct, align 8
  %concat.rhs5 = and i64 %concat.rhs, 281474976710655
  %str.tag6 = lshr i64 %concat.rhs, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check8:                                   ; preds = %str_ok
  %arena.cur11 = call ptr @dva_arena_current()
  %tag.valid12 = call i1 @dva_arena_validate_tag(ptr %arena.cur11, i64 %str.tag6)
  br i1 %tag.valid12, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %str_ok
  %concat.rhs13 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs2, i64 %concat.rhs5)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len14

str_stale10:                                      ; preds = %str_gen_check8
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

concat.sum.len14:                                 ; preds = %str_overflow_abort, %str_ok9
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum15 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf16 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf16, label %str_overflow_abort18, label %concat.tot.len17

str_overflow_abort:                               ; preds = %str_ok9
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len14

concat.tot.len17:                                 ; preds = %str_overflow_abort18, %concat.sum.len14
  %arena.cur19 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 %sum15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs4, i64 %concat.lhs2, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs13, i64 %concat.rhs5, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur20 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.prefix, align 8
  %var.load21 = load ptr, ptr %var.prefix, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 0
  %str.len.query22 = load i64, ptr %str.len.query, align 8
  %str.len.query23 = and i64 %str.len.query22, 281474976710655
  %str.tag24 = lshr i64 %str.len.query22, 48
  %str.immortal25 = icmp eq i64 %str.tag24, 0
  br i1 %str.immortal25, label %str_ok27, label %str_gen_check26

str_overflow_abort18:                             ; preds = %concat.sum.len14
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len17

str_gen_check26:                                  ; preds = %concat.tot.len17
  %arena.cur29 = call ptr @dva_arena_current()
  %tag.valid30 = call i1 @dva_arena_validate_tag(ptr %arena.cur29, i64 %str.tag24)
  br i1 %tag.valid30, label %str_ok27, label %str_stale28

str_ok27:                                         ; preds = %str_stale28, %str_gen_check26, %concat.tot.len17
  store i64 %str.len.query23, ptr %var.plen, align 8
  store i1 false, ptr %"var.has'", align 1
  %var.load31 = load ptr, ptr %var.written, align 8
  %a.load = load ptr, ptr %var.written, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

str_stale28:                                      ; preds = %str_gen_check26
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok27

a.create:                                         ; preds = %str_ok27
  %arena.cur32 = call ptr @dva_arena_current()
  %a.create33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 24)
  %arena.cur34 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create33, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create33, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create33, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create33, ptr %var.written, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %str_ok27
  %a.load2 = load ptr, ptr %var.written, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len35 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data36 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.169, align 8
  br label %loop.header.169

loop.header.169:                                  ; preds = %loop.latch.169, %a.after
  %counter.load = load i64, ptr %loop.idx.169, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len35
  br i1 %loop.cond, label %loop.body.169, label %loop.exit.nat.169

loop.body.169:                                    ; preds = %loop.header.169
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.169, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data36, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.w, align 8
  %var.load37 = load ptr, ptr %var.w, align 8
  %str.len.query38 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %str.len.query39 = load i64, ptr %str.len.query38, align 8
  %str.len.query40 = and i64 %str.len.query39, 281474976710655
  %str.tag41 = lshr i64 %str.len.query39, 48
  %str.immortal42 = icmp eq i64 %str.tag41, 0
  br i1 %str.immortal42, label %str_ok44, label %str_gen_check43

loop.exit.nat.169:                                ; preds = %loop.header.169
  br label %loop.exit.169

loop.latch.169:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.169, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.169, align 8
  br label %loop.header.169

loop.exit.169:                                    ; preds = %choice.then, %loop.exit.nat.169
  %var.load85 = load i1, ptr %"var.has'", align 1
  ret i1 %var.load85

str_gen_check43:                                  ; preds = %loop.body.169
  %arena.cur46 = call ptr @dva_arena_current()
  %tag.valid47 = call i1 @dva_arena_validate_tag(ptr %arena.cur46, i64 %str.tag41)
  br i1 %tag.valid47, label %str_ok44, label %str_stale45

str_ok44:                                         ; preds = %str_stale45, %str_gen_check43, %loop.body.169
  %var.load48 = load i64, ptr %var.plen, align 8
  %cmptmp = icmp sgt i64 %str.len.query40, %var.load48
  br i1 %cmptmp, label %and.170.then, label %and.170.else

str_stale45:                                      ; preds = %str_gen_check43
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok44

and.170.then:                                     ; preds = %str_ok44
  %var.load49 = load ptr, ptr %var.w, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 0
  %s.read.len50 = load i64, ptr %s.read.len, align 8
  %s.read.len51 = and i64 %s.read.len50, 281474976710655
  %str.tag52 = lshr i64 %s.read.len50, 48
  %str.immortal53 = icmp eq i64 %str.tag52, 0
  br i1 %str.immortal53, label %str_ok55, label %str_gen_check54

and.170.else:                                     ; preds = %str_ok44
  br label %and.170.exit

and.170.exit:                                     ; preds = %and.170.else, %str.eq.merge
  %and.170.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.170.else ]
  br i1 %and.170.phi, label %choice.then, label %choice.exit

str_gen_check54:                                  ; preds = %and.170.then
  %arena.cur57 = call ptr @dva_arena_current()
  %tag.valid58 = call i1 @dva_arena_validate_tag(ptr %arena.cur57, i64 %str.tag52)
  br i1 %tag.valid58, label %str_ok55, label %str_stale56

str_ok55:                                         ; preds = %str_stale56, %str_gen_check54, %and.170.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 1
  %s.read.data59 = load ptr, ptr %s.read.data, align 8
  %var.load60 = load i64, ptr %var.plen, align 8
  %rel.start = add i64 %s.read.len51, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len51
  %final.start = select i1 %start.gt.len, i64 %s.read.len51, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load60, 0
  %rel.end = add i64 %s.read.len51, %var.load60
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load60
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len51
  %final.end = select i1 %end.gt.len, i64 %s.read.len51, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data59, i64 %final.start
  %arena.cur61 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 16)
  %str.build.len.gep62 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep62, align 8
  %str.build.data.gep63 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep63, align 8
  %var.load64 = load ptr, ptr %var.prefix, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len65 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len66 = and i64 %eq.lhs.len65, 281474976710655
  %str.tag67 = lshr i64 %eq.lhs.len65, 48
  %str.immortal68 = icmp eq i64 %str.tag67, 0
  br i1 %str.immortal68, label %str_ok70, label %str_gen_check69

str_stale56:                                      ; preds = %str_gen_check54
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok55

str_gen_check69:                                  ; preds = %str_ok55
  %arena.cur72 = call ptr @dva_arena_current()
  %tag.valid73 = call i1 @dva_arena_validate_tag(ptr %arena.cur72, i64 %str.tag67)
  br i1 %tag.valid73, label %str_ok70, label %str_stale71

str_ok70:                                         ; preds = %str_stale71, %str_gen_check69, %str_ok55
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load64, i32 0, i32 0
  %eq.rhs.len74 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len75 = and i64 %eq.rhs.len74, 281474976710655
  %str.tag76 = lshr i64 %eq.rhs.len74, 48
  %str.immortal77 = icmp eq i64 %str.tag76, 0
  br i1 %str.immortal77, label %str_ok79, label %str_gen_check78

str_stale71:                                      ; preds = %str_gen_check69
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok70

str_gen_check78:                                  ; preds = %str_ok70
  %arena.cur81 = call ptr @dva_arena_current()
  %tag.valid82 = call i1 @dva_arena_validate_tag(ptr %arena.cur81, i64 %str.tag76)
  br i1 %tag.valid82, label %str_ok79, label %str_stale80

str_ok79:                                         ; preds = %str_stale80, %str_gen_check78, %str_ok70
  %eq.len = icmp eq i64 %eq.lhs.len66, %eq.rhs.len75
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale80:                                      ; preds = %str_gen_check78
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok79

str.eq.then:                                      ; preds = %str_ok79
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data83 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load64, i32 0, i32 1
  %eq.rhs.data84 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data83, ptr %eq.rhs.data84, i64 %eq.lhs.len66)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok79
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.170.exit

choice.then:                                      ; preds = %and.170.exit
  store i1 true, ptr %"var.has'", align 1
  br label %loop.exit.169

choice.exit:                                      ; preds = %and.170.exit
  br label %loop.latch.169
}

define i1 @"type_env::init_is_ok"(ptr %0, ptr %1) #1 {
entry:
  %var.path = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.path, align 8
  %call.res = call i1 @"type_env::init_is_ok_walk"(ptr %var.load, ptr %var.load1)
  br i1 %call.res, label %or.171.then, label %or.171.else

or.171.then:                                      ; preds = %entry
  br label %or.171.exit

or.171.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load2, i32 0, i32 4
  %fld.gep3 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep3, align 8
  %var.load4 = load ptr, ptr %var.path, align 8
  %call.res5 = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load4)
  br label %or.171.exit

or.171.exit:                                      ; preds = %or.171.else, %or.171.then
  %or.171.phi = phi i1 [ %call.res, %or.171.then ], [ %call.res5, %or.171.else ]
  br i1 %or.171.phi, label %or.172.then, label %or.172.else

or.172.then:                                      ; preds = %or.171.exit
  br label %or.172.exit

or.172.else:                                      ; preds = %or.171.exit
  %var.load6 = load ptr, ptr %var.env, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load6, i32 0, i32 4
  %fld.gep8 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep7, i32 0, i32 2
  %fld.load9 = load ptr, ptr %fld.gep8, align 8
  %var.load10 = load ptr, ptr %var.path, align 8
  %call.res11 = call i1 @"type_env::init_has_subpath"(ptr %fld.load9, ptr %var.load10)
  br label %or.172.exit

or.172.exit:                                      ; preds = %or.172.else, %or.172.then
  %or.172.phi = phi i1 [ %or.171.phi, %or.172.then ], [ %call.res11, %or.172.else ]
  ret i1 %or.172.phi
}

define ptr @"type_env::init_snapshot"(ptr %0) #1 {
entry:
  %var._93 = alloca ptr, align 8
  %var._i92 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.175 = alloca i64, align 8
  %loop.idx.175 = alloca i64, align 8
  %var.wr = alloca ptr, align 8
  %var._39 = alloca ptr, align 8
  %var._i38 = alloca i64, align 8
  %var.w = alloca ptr, align 8
  %loop.step.174 = alloca i64, align 8
  %loop.idx.174 = alloca i64, align 8
  %var.wh = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.t = alloca ptr, align 8
  %loop.step.173 = alloca i64, align 8
  %loop.idx.173 = alloca i64, align 8
  %var.tr = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
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
  store ptr %a.new, ptr %var.tr, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 4
  %fld.gep2 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep2, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %arr.cycle.len3 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.173, align 8
  br label %loop.header.173

loop.header.173:                                  ; preds = %loop.latch.173, %entry
  %counter.load = load i64, ptr %loop.idx.173, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.173, label %loop.exit.nat.173

loop.body.173:                                    ; preds = %loop.header.173
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.173, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.t, align 8
  %var.load5 = load ptr, ptr %var.t, align 8
  %a.load = load ptr, ptr %var.tr, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

loop.exit.nat.173:                                ; preds = %loop.header.173
  br label %loop.exit.173

loop.latch.173:                                   ; preds = %a.store
  %step.val = load i64, ptr %loop.step.173, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.173, align 8
  br label %loop.header.173

loop.exit.173:                                    ; preds = %loop.exit.nat.173
  %arena.cur17 = call ptr @dva_arena_current()
  %a.new18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 24)
  %arena.cur19 = call ptr @dva_arena_current()
  %a.buf20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 128)
  %a.len.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new18, i32 0, i32 0
  store i64 0, ptr %a.len.gep21, align 8
  %a.data.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new18, i32 0, i32 1
  store ptr %a.buf20, ptr %a.data.gep22, align 8
  %a.cap.gep23 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new18, i32 0, i32 2
  store i64 16, ptr %a.cap.gep23, align 8
  store ptr %a.new18, ptr %var.wh, align 8
  %var.load24 = load ptr, ptr %var.env, align 8
  %fld.gep25 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load24, i32 0, i32 4
  %fld.gep26 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep25, i32 0, i32 1
  %fld.load27 = load ptr, ptr %fld.gep26, align 8
  %arr.cycle.len28 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load27, i32 0, i32 0
  %arr.cycle.len29 = load i64, ptr %arr.cycle.len28, align 8
  %arr.cycle.data30 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load27, i32 0, i32 1
  %arr.cycle.data31 = load ptr, ptr %arr.cycle.data30, align 8
  store i64 0, ptr %loop.idx.174, align 8
  br label %loop.header.174

a.create:                                         ; preds = %loop.body.173
  %arena.cur6 = call ptr @dva_arena_current()
  %a.create7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 24)
  %arena.cur8 = call ptr @dva_arena_current()
  %a.buf9 = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 128)
  %a.len.gep10 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create7, i32 0, i32 0
  store i64 0, ptr %a.len.gep10, align 8
  %a.data.gep11 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create7, i32 0, i32 1
  store ptr %a.buf9, ptr %a.data.gep11, align 8
  %a.cap.gep12 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create7, i32 0, i32 2
  store i64 16, ptr %a.cap.gep12, align 8
  store ptr %a.create7, ptr %var.tr, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %loop.body.173
  %a.load2 = load ptr, ptr %var.tr, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len13 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap14 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len13, %a.cap14
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data15 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len16 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data15, i64 %a.cur.len16
  %slot.p2i = ptrtoint ptr %var.load5 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len16, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.173

loop.header.174:                                  ; preds = %loop.latch.174, %loop.exit.173
  %counter.load32 = load i64, ptr %loop.idx.174, align 8
  %loop.cond33 = icmp slt i64 %counter.load32, %arr.cycle.len29
  br i1 %loop.cond33, label %loop.body.174, label %loop.exit.nat.174

loop.body.174:                                    ; preds = %loop.header.174
  %loop.rel.i34 = sub i64 %counter.load32, 0
  store i64 1, ptr %loop.step.174, align 8
  %arr.elem.gep35 = getelementptr i64, ptr %arr.cycle.data31, i64 %counter.load32
  %arr.elem.raw36 = load i64, ptr %arr.elem.gep35, align 8
  %slot.i2p37 = inttoptr i64 %arr.elem.raw36 to ptr
  store i64 %loop.rel.i34, ptr %var._i38, align 8
  store ptr %slot.i2p37, ptr %var._39, align 8
  store ptr %slot.i2p37, ptr %var.w, align 8
  %var.load40 = load ptr, ptr %var.w, align 8
  %a.load41 = load ptr, ptr %var.wh, align 8
  %a.null42 = icmp eq ptr %a.load41, null
  br i1 %a.null42, label %a.create43, label %a.after44

loop.exit.nat.174:                                ; preds = %loop.header.174
  br label %loop.exit.174

loop.latch.174:                                   ; preds = %a.store55
  %step.val69 = load i64, ptr %loop.step.174, align 8
  %loop.next70 = add i64 %counter.load32, %step.val69
  store i64 %loop.next70, ptr %loop.idx.174, align 8
  br label %loop.header.174

loop.exit.174:                                    ; preds = %loop.exit.nat.174
  %arena.cur71 = call ptr @dva_arena_current()
  %a.new72 = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 24)
  %arena.cur73 = call ptr @dva_arena_current()
  %a.buf74 = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 128)
  %a.len.gep75 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new72, i32 0, i32 0
  store i64 0, ptr %a.len.gep75, align 8
  %a.data.gep76 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new72, i32 0, i32 1
  store ptr %a.buf74, ptr %a.data.gep76, align 8
  %a.cap.gep77 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new72, i32 0, i32 2
  store i64 16, ptr %a.cap.gep77, align 8
  store ptr %a.new72, ptr %var.wr, align 8
  %var.load78 = load ptr, ptr %var.env, align 8
  %fld.gep79 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load78, i32 0, i32 4
  %fld.gep80 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep79, i32 0, i32 2
  %fld.load81 = load ptr, ptr %fld.gep80, align 8
  %arr.cycle.len82 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load81, i32 0, i32 0
  %arr.cycle.len83 = load i64, ptr %arr.cycle.len82, align 8
  %arr.cycle.data84 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load81, i32 0, i32 1
  %arr.cycle.data85 = load ptr, ptr %arr.cycle.data84, align 8
  store i64 0, ptr %loop.idx.175, align 8
  br label %loop.header.175

a.create43:                                       ; preds = %loop.body.174
  %arena.cur45 = call ptr @dva_arena_current()
  %a.create46 = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 24)
  %arena.cur47 = call ptr @dva_arena_current()
  %a.buf48 = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 128)
  %a.len.gep49 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create46, i32 0, i32 0
  store i64 0, ptr %a.len.gep49, align 8
  %a.data.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create46, i32 0, i32 1
  store ptr %a.buf48, ptr %a.data.gep50, align 8
  %a.cap.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create46, i32 0, i32 2
  store i64 16, ptr %a.cap.gep51, align 8
  store ptr %a.create46, ptr %var.wh, align 8
  br label %a.after44

a.after44:                                        ; preds = %a.create43, %loop.body.174
  %a.load252 = load ptr, ptr %var.wh, align 8
  br label %a.check53

a.check53:                                        ; preds = %a.after44
  %a.len56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load252, i32 0, i32 0
  %a.len57 = load i64, ptr %a.len56, align 8
  %a.cap58 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load252, i32 0, i32 2
  %a.cap59 = load i64, ptr %a.cap58, align 8
  %a.needs.grow60 = icmp eq i64 %a.len57, %a.cap59
  br i1 %a.needs.grow60, label %a.grow54, label %a.store55

a.grow54:                                         ; preds = %a.check53
  call void @dva_array_grow(ptr %a.load252)
  br label %a.store55

a.store55:                                        ; preds = %a.grow54, %a.check53
  %a.cur.data61 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load252, i32 0, i32 1
  %a.cur.data62 = load ptr, ptr %a.cur.data61, align 8
  %a.cur.len63 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load252, i32 0, i32 0
  %a.cur.len64 = load i64, ptr %a.cur.len63, align 8
  %a.elem.gep65 = getelementptr i64, ptr %a.cur.data62, i64 %a.cur.len64
  %slot.p2i66 = ptrtoint ptr %var.load40 to i64
  store i64 %slot.p2i66, ptr %a.elem.gep65, align 8
  %a.next.len67 = add i64 %a.cur.len64, 1
  %b.len.gep68 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load252, i32 0, i32 0
  store i64 %a.next.len67, ptr %b.len.gep68, align 8
  br label %loop.latch.174

loop.header.175:                                  ; preds = %loop.latch.175, %loop.exit.174
  %counter.load86 = load i64, ptr %loop.idx.175, align 8
  %loop.cond87 = icmp slt i64 %counter.load86, %arr.cycle.len83
  br i1 %loop.cond87, label %loop.body.175, label %loop.exit.nat.175

loop.body.175:                                    ; preds = %loop.header.175
  %loop.rel.i88 = sub i64 %counter.load86, 0
  store i64 1, ptr %loop.step.175, align 8
  %arr.elem.gep89 = getelementptr i64, ptr %arr.cycle.data85, i64 %counter.load86
  %arr.elem.raw90 = load i64, ptr %arr.elem.gep89, align 8
  %slot.i2p91 = inttoptr i64 %arr.elem.raw90 to ptr
  store i64 %loop.rel.i88, ptr %var._i92, align 8
  store ptr %slot.i2p91, ptr %var._93, align 8
  store ptr %slot.i2p91, ptr %var.p, align 8
  %var.load94 = load ptr, ptr %var.p, align 8
  %a.load95 = load ptr, ptr %var.wr, align 8
  %a.null96 = icmp eq ptr %a.load95, null
  br i1 %a.null96, label %a.create97, label %a.after98

loop.exit.nat.175:                                ; preds = %loop.header.175
  br label %loop.exit.175

loop.latch.175:                                   ; preds = %a.store109
  %step.val123 = load i64, ptr %loop.step.175, align 8
  %loop.next124 = add i64 %counter.load86, %step.val123
  store i64 %loop.next124, ptr %loop.idx.175, align 8
  br label %loop.header.175

loop.exit.175:                                    ; preds = %loop.exit.nat.175
  %var.load125 = load ptr, ptr %var.tr, align 8
  %a.load126 = load ptr, ptr %var.tr, align 8
  %a.null127 = icmp eq ptr %a.load126, null
  br i1 %a.null127, label %a.create128, label %a.after129

a.create97:                                       ; preds = %loop.body.175
  %arena.cur99 = call ptr @dva_arena_current()
  %a.create100 = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 24)
  %arena.cur101 = call ptr @dva_arena_current()
  %a.buf102 = call ptr @dva_arena_alloc(ptr %arena.cur101, i64 128)
  %a.len.gep103 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create100, i32 0, i32 0
  store i64 0, ptr %a.len.gep103, align 8
  %a.data.gep104 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create100, i32 0, i32 1
  store ptr %a.buf102, ptr %a.data.gep104, align 8
  %a.cap.gep105 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create100, i32 0, i32 2
  store i64 16, ptr %a.cap.gep105, align 8
  store ptr %a.create100, ptr %var.wr, align 8
  br label %a.after98

a.after98:                                        ; preds = %a.create97, %loop.body.175
  %a.load2106 = load ptr, ptr %var.wr, align 8
  br label %a.check107

a.check107:                                       ; preds = %a.after98
  %a.len110 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2106, i32 0, i32 0
  %a.len111 = load i64, ptr %a.len110, align 8
  %a.cap112 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2106, i32 0, i32 2
  %a.cap113 = load i64, ptr %a.cap112, align 8
  %a.needs.grow114 = icmp eq i64 %a.len111, %a.cap113
  br i1 %a.needs.grow114, label %a.grow108, label %a.store109

a.grow108:                                        ; preds = %a.check107
  call void @dva_array_grow(ptr %a.load2106)
  br label %a.store109

a.store109:                                       ; preds = %a.grow108, %a.check107
  %a.cur.data115 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2106, i32 0, i32 1
  %a.cur.data116 = load ptr, ptr %a.cur.data115, align 8
  %a.cur.len117 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2106, i32 0, i32 0
  %a.cur.len118 = load i64, ptr %a.cur.len117, align 8
  %a.elem.gep119 = getelementptr i64, ptr %a.cur.data116, i64 %a.cur.len118
  %slot.p2i120 = ptrtoint ptr %var.load94 to i64
  store i64 %slot.p2i120, ptr %a.elem.gep119, align 8
  %a.next.len121 = add i64 %a.cur.len118, 1
  %b.len.gep122 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2106, i32 0, i32 0
  store i64 %a.next.len121, ptr %b.len.gep122, align 8
  br label %loop.latch.175

a.create128:                                      ; preds = %loop.exit.175
  %arena.cur130 = call ptr @dva_arena_current()
  %a.create131 = call ptr @dva_arena_alloc(ptr %arena.cur130, i64 24)
  %arena.cur132 = call ptr @dva_arena_current()
  %a.buf133 = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 128)
  %a.len.gep134 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create131, i32 0, i32 0
  store i64 0, ptr %a.len.gep134, align 8
  %a.data.gep135 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create131, i32 0, i32 1
  store ptr %a.buf133, ptr %a.data.gep135, align 8
  %a.cap.gep136 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create131, i32 0, i32 2
  store i64 16, ptr %a.cap.gep136, align 8
  store ptr %a.create131, ptr %var.tr, align 8
  br label %a.after129

a.after129:                                       ; preds = %a.create128, %loop.exit.175
  %a.load2137 = load ptr, ptr %var.tr, align 8
  %var.load138 = load ptr, ptr %var.wh, align 8
  %a.load139 = load ptr, ptr %var.wh, align 8
  %a.null140 = icmp eq ptr %a.load139, null
  br i1 %a.null140, label %a.create141, label %a.after142

a.create141:                                      ; preds = %a.after129
  %arena.cur143 = call ptr @dva_arena_current()
  %a.create144 = call ptr @dva_arena_alloc(ptr %arena.cur143, i64 24)
  %arena.cur145 = call ptr @dva_arena_current()
  %a.buf146 = call ptr @dva_arena_alloc(ptr %arena.cur145, i64 128)
  %a.len.gep147 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create144, i32 0, i32 0
  store i64 0, ptr %a.len.gep147, align 8
  %a.data.gep148 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create144, i32 0, i32 1
  store ptr %a.buf146, ptr %a.data.gep148, align 8
  %a.cap.gep149 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create144, i32 0, i32 2
  store i64 16, ptr %a.cap.gep149, align 8
  store ptr %a.create144, ptr %var.wh, align 8
  br label %a.after142

a.after142:                                       ; preds = %a.create141, %a.after129
  %a.load2150 = load ptr, ptr %var.wh, align 8
  %var.load151 = load ptr, ptr %var.wr, align 8
  %a.load152 = load ptr, ptr %var.wr, align 8
  %a.null153 = icmp eq ptr %a.load152, null
  br i1 %a.null153, label %a.create154, label %a.after155

a.create154:                                      ; preds = %a.after142
  %arena.cur156 = call ptr @dva_arena_current()
  %a.create157 = call ptr @dva_arena_alloc(ptr %arena.cur156, i64 24)
  %arena.cur158 = call ptr @dva_arena_current()
  %a.buf159 = call ptr @dva_arena_alloc(ptr %arena.cur158, i64 128)
  %a.len.gep160 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create157, i32 0, i32 0
  store i64 0, ptr %a.len.gep160, align 8
  %a.data.gep161 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create157, i32 0, i32 1
  store ptr %a.buf159, ptr %a.data.gep161, align 8
  %a.cap.gep162 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create157, i32 0, i32 2
  store i64 16, ptr %a.cap.gep162, align 8
  store ptr %a.create157, ptr %var.wr, align 8
  br label %a.after155

a.after155:                                       ; preds = %a.create154, %a.after142
  %a.load2163 = load ptr, ptr %var.wr, align 8
  %arena.cur164 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur164, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load2137, ptr %rec.fld, align 8
  %rec.fld165 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %a.load2150, ptr %rec.fld165, align 8
  %rec.fld166 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.load2163, ptr %rec.fld166, align 8
  ret ptr %rec.alloc
}

define ptr @"type_env::init_snapshot_of"(ptr %0) #1 {
entry:
  %var._90 = alloca ptr, align 8
  %var._i89 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.178 = alloca i64, align 8
  %loop.idx.178 = alloca i64, align 8
  %var.wr = alloca ptr, align 8
  %var._37 = alloca ptr, align 8
  %var._i36 = alloca i64, align 8
  %var.w = alloca ptr, align 8
  %loop.step.177 = alloca i64, align 8
  %loop.idx.177 = alloca i64, align 8
  %var.wh = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.t = alloca ptr, align 8
  %loop.step.176 = alloca i64, align 8
  %loop.idx.176 = alloca i64, align 8
  %var.tr = alloca ptr, align 8
  %var.fi = alloca ptr, align 8
  store ptr %0, ptr %var.fi, align 8
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
  store ptr %a.new, ptr %var.tr, align 8
  %var.load = load ptr, ptr %var.fi, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %arr.cycle.len2 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 1
  %arr.cycle.data3 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.176, align 8
  br label %loop.header.176

loop.header.176:                                  ; preds = %loop.latch.176, %entry
  %counter.load = load i64, ptr %loop.idx.176, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len2
  br i1 %loop.cond, label %loop.body.176, label %loop.exit.nat.176

loop.body.176:                                    ; preds = %loop.header.176
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.176, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data3, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.t, align 8
  %var.load4 = load ptr, ptr %var.t, align 8
  %a.load = load ptr, ptr %var.tr, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

loop.exit.nat.176:                                ; preds = %loop.header.176
  br label %loop.exit.176

loop.latch.176:                                   ; preds = %a.store
  %step.val = load i64, ptr %loop.step.176, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.176, align 8
  br label %loop.header.176

loop.exit.176:                                    ; preds = %loop.exit.nat.176
  %arena.cur16 = call ptr @dva_arena_current()
  %a.new17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 24)
  %arena.cur18 = call ptr @dva_arena_current()
  %a.buf19 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 128)
  %a.len.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new17, i32 0, i32 0
  store i64 0, ptr %a.len.gep20, align 8
  %a.data.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new17, i32 0, i32 1
  store ptr %a.buf19, ptr %a.data.gep21, align 8
  %a.cap.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new17, i32 0, i32 2
  store i64 16, ptr %a.cap.gep22, align 8
  store ptr %a.new17, ptr %var.wh, align 8
  %var.load23 = load ptr, ptr %var.fi, align 8
  %fld.gep24 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load23, i32 0, i32 1
  %fld.load25 = load ptr, ptr %fld.gep24, align 8
  %arr.cycle.len26 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load25, i32 0, i32 0
  %arr.cycle.len27 = load i64, ptr %arr.cycle.len26, align 8
  %arr.cycle.data28 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load25, i32 0, i32 1
  %arr.cycle.data29 = load ptr, ptr %arr.cycle.data28, align 8
  store i64 0, ptr %loop.idx.177, align 8
  br label %loop.header.177

a.create:                                         ; preds = %loop.body.176
  %arena.cur5 = call ptr @dva_arena_current()
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 24)
  %arena.cur7 = call ptr @dva_arena_current()
  %a.buf8 = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 128)
  %a.len.gep9 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 0
  store i64 0, ptr %a.len.gep9, align 8
  %a.data.gep10 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 1
  store ptr %a.buf8, ptr %a.data.gep10, align 8
  %a.cap.gep11 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 2
  store i64 16, ptr %a.cap.gep11, align 8
  store ptr %a.create6, ptr %var.tr, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %loop.body.176
  %a.load2 = load ptr, ptr %var.tr, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len12 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap13 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len12, %a.cap13
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data14 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len15 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data14, i64 %a.cur.len15
  %slot.p2i = ptrtoint ptr %var.load4 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len15, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.176

loop.header.177:                                  ; preds = %loop.latch.177, %loop.exit.176
  %counter.load30 = load i64, ptr %loop.idx.177, align 8
  %loop.cond31 = icmp slt i64 %counter.load30, %arr.cycle.len27
  br i1 %loop.cond31, label %loop.body.177, label %loop.exit.nat.177

loop.body.177:                                    ; preds = %loop.header.177
  %loop.rel.i32 = sub i64 %counter.load30, 0
  store i64 1, ptr %loop.step.177, align 8
  %arr.elem.gep33 = getelementptr i64, ptr %arr.cycle.data29, i64 %counter.load30
  %arr.elem.raw34 = load i64, ptr %arr.elem.gep33, align 8
  %slot.i2p35 = inttoptr i64 %arr.elem.raw34 to ptr
  store i64 %loop.rel.i32, ptr %var._i36, align 8
  store ptr %slot.i2p35, ptr %var._37, align 8
  store ptr %slot.i2p35, ptr %var.w, align 8
  %var.load38 = load ptr, ptr %var.w, align 8
  %a.load39 = load ptr, ptr %var.wh, align 8
  %a.null40 = icmp eq ptr %a.load39, null
  br i1 %a.null40, label %a.create41, label %a.after42

loop.exit.nat.177:                                ; preds = %loop.header.177
  br label %loop.exit.177

loop.latch.177:                                   ; preds = %a.store53
  %step.val67 = load i64, ptr %loop.step.177, align 8
  %loop.next68 = add i64 %counter.load30, %step.val67
  store i64 %loop.next68, ptr %loop.idx.177, align 8
  br label %loop.header.177

loop.exit.177:                                    ; preds = %loop.exit.nat.177
  %arena.cur69 = call ptr @dva_arena_current()
  %a.new70 = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 24)
  %arena.cur71 = call ptr @dva_arena_current()
  %a.buf72 = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 128)
  %a.len.gep73 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new70, i32 0, i32 0
  store i64 0, ptr %a.len.gep73, align 8
  %a.data.gep74 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new70, i32 0, i32 1
  store ptr %a.buf72, ptr %a.data.gep74, align 8
  %a.cap.gep75 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new70, i32 0, i32 2
  store i64 16, ptr %a.cap.gep75, align 8
  store ptr %a.new70, ptr %var.wr, align 8
  %var.load76 = load ptr, ptr %var.fi, align 8
  %fld.gep77 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load76, i32 0, i32 2
  %fld.load78 = load ptr, ptr %fld.gep77, align 8
  %arr.cycle.len79 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load78, i32 0, i32 0
  %arr.cycle.len80 = load i64, ptr %arr.cycle.len79, align 8
  %arr.cycle.data81 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load78, i32 0, i32 1
  %arr.cycle.data82 = load ptr, ptr %arr.cycle.data81, align 8
  store i64 0, ptr %loop.idx.178, align 8
  br label %loop.header.178

a.create41:                                       ; preds = %loop.body.177
  %arena.cur43 = call ptr @dva_arena_current()
  %a.create44 = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 24)
  %arena.cur45 = call ptr @dva_arena_current()
  %a.buf46 = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 128)
  %a.len.gep47 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create44, i32 0, i32 0
  store i64 0, ptr %a.len.gep47, align 8
  %a.data.gep48 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create44, i32 0, i32 1
  store ptr %a.buf46, ptr %a.data.gep48, align 8
  %a.cap.gep49 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create44, i32 0, i32 2
  store i64 16, ptr %a.cap.gep49, align 8
  store ptr %a.create44, ptr %var.wh, align 8
  br label %a.after42

a.after42:                                        ; preds = %a.create41, %loop.body.177
  %a.load250 = load ptr, ptr %var.wh, align 8
  br label %a.check51

a.check51:                                        ; preds = %a.after42
  %a.len54 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load250, i32 0, i32 0
  %a.len55 = load i64, ptr %a.len54, align 8
  %a.cap56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load250, i32 0, i32 2
  %a.cap57 = load i64, ptr %a.cap56, align 8
  %a.needs.grow58 = icmp eq i64 %a.len55, %a.cap57
  br i1 %a.needs.grow58, label %a.grow52, label %a.store53

a.grow52:                                         ; preds = %a.check51
  call void @dva_array_grow(ptr %a.load250)
  br label %a.store53

a.store53:                                        ; preds = %a.grow52, %a.check51
  %a.cur.data59 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load250, i32 0, i32 1
  %a.cur.data60 = load ptr, ptr %a.cur.data59, align 8
  %a.cur.len61 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load250, i32 0, i32 0
  %a.cur.len62 = load i64, ptr %a.cur.len61, align 8
  %a.elem.gep63 = getelementptr i64, ptr %a.cur.data60, i64 %a.cur.len62
  %slot.p2i64 = ptrtoint ptr %var.load38 to i64
  store i64 %slot.p2i64, ptr %a.elem.gep63, align 8
  %a.next.len65 = add i64 %a.cur.len62, 1
  %b.len.gep66 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load250, i32 0, i32 0
  store i64 %a.next.len65, ptr %b.len.gep66, align 8
  br label %loop.latch.177

loop.header.178:                                  ; preds = %loop.latch.178, %loop.exit.177
  %counter.load83 = load i64, ptr %loop.idx.178, align 8
  %loop.cond84 = icmp slt i64 %counter.load83, %arr.cycle.len80
  br i1 %loop.cond84, label %loop.body.178, label %loop.exit.nat.178

loop.body.178:                                    ; preds = %loop.header.178
  %loop.rel.i85 = sub i64 %counter.load83, 0
  store i64 1, ptr %loop.step.178, align 8
  %arr.elem.gep86 = getelementptr i64, ptr %arr.cycle.data82, i64 %counter.load83
  %arr.elem.raw87 = load i64, ptr %arr.elem.gep86, align 8
  %slot.i2p88 = inttoptr i64 %arr.elem.raw87 to ptr
  store i64 %loop.rel.i85, ptr %var._i89, align 8
  store ptr %slot.i2p88, ptr %var._90, align 8
  store ptr %slot.i2p88, ptr %var.p, align 8
  %var.load91 = load ptr, ptr %var.p, align 8
  %a.load92 = load ptr, ptr %var.wr, align 8
  %a.null93 = icmp eq ptr %a.load92, null
  br i1 %a.null93, label %a.create94, label %a.after95

loop.exit.nat.178:                                ; preds = %loop.header.178
  br label %loop.exit.178

loop.latch.178:                                   ; preds = %a.store106
  %step.val120 = load i64, ptr %loop.step.178, align 8
  %loop.next121 = add i64 %counter.load83, %step.val120
  store i64 %loop.next121, ptr %loop.idx.178, align 8
  br label %loop.header.178

loop.exit.178:                                    ; preds = %loop.exit.nat.178
  %var.load122 = load ptr, ptr %var.tr, align 8
  %a.load123 = load ptr, ptr %var.tr, align 8
  %a.null124 = icmp eq ptr %a.load123, null
  br i1 %a.null124, label %a.create125, label %a.after126

a.create94:                                       ; preds = %loop.body.178
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
  store ptr %a.create97, ptr %var.wr, align 8
  br label %a.after95

a.after95:                                        ; preds = %a.create94, %loop.body.178
  %a.load2103 = load ptr, ptr %var.wr, align 8
  br label %a.check104

a.check104:                                       ; preds = %a.after95
  %a.len107 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2103, i32 0, i32 0
  %a.len108 = load i64, ptr %a.len107, align 8
  %a.cap109 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2103, i32 0, i32 2
  %a.cap110 = load i64, ptr %a.cap109, align 8
  %a.needs.grow111 = icmp eq i64 %a.len108, %a.cap110
  br i1 %a.needs.grow111, label %a.grow105, label %a.store106

a.grow105:                                        ; preds = %a.check104
  call void @dva_array_grow(ptr %a.load2103)
  br label %a.store106

a.store106:                                       ; preds = %a.grow105, %a.check104
  %a.cur.data112 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2103, i32 0, i32 1
  %a.cur.data113 = load ptr, ptr %a.cur.data112, align 8
  %a.cur.len114 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2103, i32 0, i32 0
  %a.cur.len115 = load i64, ptr %a.cur.len114, align 8
  %a.elem.gep116 = getelementptr i64, ptr %a.cur.data113, i64 %a.cur.len115
  %slot.p2i117 = ptrtoint ptr %var.load91 to i64
  store i64 %slot.p2i117, ptr %a.elem.gep116, align 8
  %a.next.len118 = add i64 %a.cur.len115, 1
  %b.len.gep119 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2103, i32 0, i32 0
  store i64 %a.next.len118, ptr %b.len.gep119, align 8
  br label %loop.latch.178

a.create125:                                      ; preds = %loop.exit.178
  %arena.cur127 = call ptr @dva_arena_current()
  %a.create128 = call ptr @dva_arena_alloc(ptr %arena.cur127, i64 24)
  %arena.cur129 = call ptr @dva_arena_current()
  %a.buf130 = call ptr @dva_arena_alloc(ptr %arena.cur129, i64 128)
  %a.len.gep131 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create128, i32 0, i32 0
  store i64 0, ptr %a.len.gep131, align 8
  %a.data.gep132 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create128, i32 0, i32 1
  store ptr %a.buf130, ptr %a.data.gep132, align 8
  %a.cap.gep133 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create128, i32 0, i32 2
  store i64 16, ptr %a.cap.gep133, align 8
  store ptr %a.create128, ptr %var.tr, align 8
  br label %a.after126

a.after126:                                       ; preds = %a.create125, %loop.exit.178
  %a.load2134 = load ptr, ptr %var.tr, align 8
  %var.load135 = load ptr, ptr %var.wh, align 8
  %a.load136 = load ptr, ptr %var.wh, align 8
  %a.null137 = icmp eq ptr %a.load136, null
  br i1 %a.null137, label %a.create138, label %a.after139

a.create138:                                      ; preds = %a.after126
  %arena.cur140 = call ptr @dva_arena_current()
  %a.create141 = call ptr @dva_arena_alloc(ptr %arena.cur140, i64 24)
  %arena.cur142 = call ptr @dva_arena_current()
  %a.buf143 = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 128)
  %a.len.gep144 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create141, i32 0, i32 0
  store i64 0, ptr %a.len.gep144, align 8
  %a.data.gep145 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create141, i32 0, i32 1
  store ptr %a.buf143, ptr %a.data.gep145, align 8
  %a.cap.gep146 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create141, i32 0, i32 2
  store i64 16, ptr %a.cap.gep146, align 8
  store ptr %a.create141, ptr %var.wh, align 8
  br label %a.after139

a.after139:                                       ; preds = %a.create138, %a.after126
  %a.load2147 = load ptr, ptr %var.wh, align 8
  %var.load148 = load ptr, ptr %var.wr, align 8
  %a.load149 = load ptr, ptr %var.wr, align 8
  %a.null150 = icmp eq ptr %a.load149, null
  br i1 %a.null150, label %a.create151, label %a.after152

a.create151:                                      ; preds = %a.after139
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
  store ptr %a.create154, ptr %var.wr, align 8
  br label %a.after152

a.after152:                                       ; preds = %a.create151, %a.after139
  %a.load2160 = load ptr, ptr %var.wr, align 8
  %arena.cur161 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur161, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load2134, ptr %rec.fld, align 8
  %rec.fld162 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %a.load2147, ptr %rec.fld162, align 8
  %rec.fld163 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.load2160, ptr %rec.fld163, align 8
  ret ptr %rec.alloc
}

define void @"type_env::init_restore"(ptr %0, ptr %1) #1 {
entry:
  %var.snap = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.snap, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.snap, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %fld.gep, ptr align 1 %var.load1, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64), i1 false)
  ret void
}

define ptr @"type_env::init_merge_two"(ptr %0, ptr %1) #1 {
entry:
  %var._157 = alloca ptr, align 8
  %var._i156 = alloca i64, align 8
  %var.path = alloca ptr, align 8
  %loop.step.182 = alloca i64, align 8
  %loop.idx.182 = alloca i64, align 8
  %var.wr = alloca ptr, align 8
  %var._97 = alloca ptr, align 8
  %var._i96 = alloca i64, align 8
  %var.name = alloca ptr, align 8
  %loop.step.181 = alloca i64, align 8
  %loop.idx.181 = alloca i64, align 8
  %var.wh = alloca ptr, align 8
  %var._30 = alloca ptr, align 8
  %var._i29 = alloca i64, align 8
  %var.t2 = alloca ptr, align 8
  %loop.step.180 = alloca i64, align 8
  %loop.idx.180 = alloca i64, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.t = alloca ptr, align 8
  %loop.step.179 = alloca i64, align 8
  %loop.idx.179 = alloca i64, align 8
  %var.tr = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.b, align 8
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
  store ptr %a.new, ptr %var.tr, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %arr.cycle.len2 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 1
  %arr.cycle.data3 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.179, align 8
  br label %loop.header.179

loop.header.179:                                  ; preds = %loop.latch.179, %entry
  %counter.load = load i64, ptr %loop.idx.179, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len2
  br i1 %loop.cond, label %loop.body.179, label %loop.exit.nat.179

loop.body.179:                                    ; preds = %loop.header.179
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.179, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data3, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.t, align 8
  %var.load4 = load ptr, ptr %var.t, align 8
  %a.load = load ptr, ptr %var.tr, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

loop.exit.nat.179:                                ; preds = %loop.header.179
  br label %loop.exit.179

loop.latch.179:                                   ; preds = %a.store
  %step.val = load i64, ptr %loop.step.179, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.179, align 8
  br label %loop.header.179

loop.exit.179:                                    ; preds = %loop.exit.nat.179
  %var.load16 = load ptr, ptr %var.b, align 8
  %fld.gep17 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load16, i32 0, i32 0
  %fld.load18 = load ptr, ptr %fld.gep17, align 8
  %arr.cycle.len19 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load18, i32 0, i32 0
  %arr.cycle.len20 = load i64, ptr %arr.cycle.len19, align 8
  %arr.cycle.data21 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load18, i32 0, i32 1
  %arr.cycle.data22 = load ptr, ptr %arr.cycle.data21, align 8
  store i64 0, ptr %loop.idx.180, align 8
  br label %loop.header.180

a.create:                                         ; preds = %loop.body.179
  %arena.cur5 = call ptr @dva_arena_current()
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 24)
  %arena.cur7 = call ptr @dva_arena_current()
  %a.buf8 = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 128)
  %a.len.gep9 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 0
  store i64 0, ptr %a.len.gep9, align 8
  %a.data.gep10 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 1
  store ptr %a.buf8, ptr %a.data.gep10, align 8
  %a.cap.gep11 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 2
  store i64 16, ptr %a.cap.gep11, align 8
  store ptr %a.create6, ptr %var.tr, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %loop.body.179
  %a.load2 = load ptr, ptr %var.tr, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len12 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap13 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len12, %a.cap13
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data14 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len15 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data14, i64 %a.cur.len15
  %slot.p2i = ptrtoint ptr %var.load4 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len15, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.179

loop.header.180:                                  ; preds = %loop.latch.180, %loop.exit.179
  %counter.load23 = load i64, ptr %loop.idx.180, align 8
  %loop.cond24 = icmp slt i64 %counter.load23, %arr.cycle.len20
  br i1 %loop.cond24, label %loop.body.180, label %loop.exit.nat.180

loop.body.180:                                    ; preds = %loop.header.180
  %loop.rel.i25 = sub i64 %counter.load23, 0
  store i64 1, ptr %loop.step.180, align 8
  %arr.elem.gep26 = getelementptr i64, ptr %arr.cycle.data22, i64 %counter.load23
  %arr.elem.raw27 = load i64, ptr %arr.elem.gep26, align 8
  %slot.i2p28 = inttoptr i64 %arr.elem.raw27 to ptr
  store i64 %loop.rel.i25, ptr %var._i29, align 8
  store ptr %slot.i2p28, ptr %var._30, align 8
  store ptr %slot.i2p28, ptr %var.t2, align 8
  %var.load31 = load ptr, ptr %var.tr, align 8
  %a.load32 = load ptr, ptr %var.tr, align 8
  %a.null33 = icmp eq ptr %a.load32, null
  br i1 %a.null33, label %a.create34, label %a.after35

loop.exit.nat.180:                                ; preds = %loop.header.180
  br label %loop.exit.180

loop.latch.180:                                   ; preds = %choice.exit
  %step.val74 = load i64, ptr %loop.step.180, align 8
  %loop.next75 = add i64 %counter.load23, %step.val74
  store i64 %loop.next75, ptr %loop.idx.180, align 8
  br label %loop.header.180

loop.exit.180:                                    ; preds = %loop.exit.nat.180
  %arena.cur76 = call ptr @dva_arena_current()
  %a.new77 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 24)
  %arena.cur78 = call ptr @dva_arena_current()
  %a.buf79 = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 128)
  %a.len.gep80 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new77, i32 0, i32 0
  store i64 0, ptr %a.len.gep80, align 8
  %a.data.gep81 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new77, i32 0, i32 1
  store ptr %a.buf79, ptr %a.data.gep81, align 8
  %a.cap.gep82 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new77, i32 0, i32 2
  store i64 16, ptr %a.cap.gep82, align 8
  store ptr %a.new77, ptr %var.wh, align 8
  %var.load83 = load ptr, ptr %var.a, align 8
  %fld.gep84 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load83, i32 0, i32 1
  %fld.load85 = load ptr, ptr %fld.gep84, align 8
  %arr.cycle.len86 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load85, i32 0, i32 0
  %arr.cycle.len87 = load i64, ptr %arr.cycle.len86, align 8
  %arr.cycle.data88 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load85, i32 0, i32 1
  %arr.cycle.data89 = load ptr, ptr %arr.cycle.data88, align 8
  store i64 0, ptr %loop.idx.181, align 8
  br label %loop.header.181

a.create34:                                       ; preds = %loop.body.180
  %arena.cur36 = call ptr @dva_arena_current()
  %a.create37 = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 24)
  %arena.cur38 = call ptr @dva_arena_current()
  %a.buf39 = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 128)
  %a.len.gep40 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create37, i32 0, i32 0
  store i64 0, ptr %a.len.gep40, align 8
  %a.data.gep41 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create37, i32 0, i32 1
  store ptr %a.buf39, ptr %a.data.gep41, align 8
  %a.cap.gep42 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create37, i32 0, i32 2
  store i64 16, ptr %a.cap.gep42, align 8
  store ptr %a.create37, ptr %var.tr, align 8
  br label %a.after35

a.after35:                                        ; preds = %a.create34, %loop.body.180
  %a.load243 = load ptr, ptr %var.tr, align 8
  %var.load44 = load ptr, ptr %var.t2, align 8
  %call.res = call i1 @"type_env::init_has_name"(ptr %a.load243, ptr %var.load44)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %a.after35
  %var.load45 = load ptr, ptr %var.t2, align 8
  %a.load46 = load ptr, ptr %var.tr, align 8
  %a.null47 = icmp eq ptr %a.load46, null
  br i1 %a.null47, label %a.create48, label %a.after49

choice.exit:                                      ; preds = %a.store60, %a.after35
  br label %loop.latch.180

a.create48:                                       ; preds = %choice.then
  %arena.cur50 = call ptr @dva_arena_current()
  %a.create51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 24)
  %arena.cur52 = call ptr @dva_arena_current()
  %a.buf53 = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 128)
  %a.len.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create51, i32 0, i32 0
  store i64 0, ptr %a.len.gep54, align 8
  %a.data.gep55 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create51, i32 0, i32 1
  store ptr %a.buf53, ptr %a.data.gep55, align 8
  %a.cap.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create51, i32 0, i32 2
  store i64 16, ptr %a.cap.gep56, align 8
  store ptr %a.create51, ptr %var.tr, align 8
  br label %a.after49

a.after49:                                        ; preds = %a.create48, %choice.then
  %a.load257 = load ptr, ptr %var.tr, align 8
  br label %a.check58

a.check58:                                        ; preds = %a.after49
  %a.len61 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 0
  %a.len62 = load i64, ptr %a.len61, align 8
  %a.cap63 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 2
  %a.cap64 = load i64, ptr %a.cap63, align 8
  %a.needs.grow65 = icmp eq i64 %a.len62, %a.cap64
  br i1 %a.needs.grow65, label %a.grow59, label %a.store60

a.grow59:                                         ; preds = %a.check58
  call void @dva_array_grow(ptr %a.load257)
  br label %a.store60

a.store60:                                        ; preds = %a.grow59, %a.check58
  %a.cur.data66 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 1
  %a.cur.data67 = load ptr, ptr %a.cur.data66, align 8
  %a.cur.len68 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 0
  %a.cur.len69 = load i64, ptr %a.cur.len68, align 8
  %a.elem.gep70 = getelementptr i64, ptr %a.cur.data67, i64 %a.cur.len69
  %slot.p2i71 = ptrtoint ptr %var.load45 to i64
  store i64 %slot.p2i71, ptr %a.elem.gep70, align 8
  %a.next.len72 = add i64 %a.cur.len69, 1
  %b.len.gep73 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 0
  store i64 %a.next.len72, ptr %b.len.gep73, align 8
  br label %choice.exit

loop.header.181:                                  ; preds = %loop.latch.181, %loop.exit.180
  %counter.load90 = load i64, ptr %loop.idx.181, align 8
  %loop.cond91 = icmp slt i64 %counter.load90, %arr.cycle.len87
  br i1 %loop.cond91, label %loop.body.181, label %loop.exit.nat.181

loop.body.181:                                    ; preds = %loop.header.181
  %loop.rel.i92 = sub i64 %counter.load90, 0
  store i64 1, ptr %loop.step.181, align 8
  %arr.elem.gep93 = getelementptr i64, ptr %arr.cycle.data89, i64 %counter.load90
  %arr.elem.raw94 = load i64, ptr %arr.elem.gep93, align 8
  %slot.i2p95 = inttoptr i64 %arr.elem.raw94 to ptr
  store i64 %loop.rel.i92, ptr %var._i96, align 8
  store ptr %slot.i2p95, ptr %var._97, align 8
  store ptr %slot.i2p95, ptr %var.name, align 8
  %var.load98 = load ptr, ptr %var.b, align 8
  %fld.gep99 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load98, i32 0, i32 1
  %fld.load100 = load ptr, ptr %fld.gep99, align 8
  %var.load101 = load ptr, ptr %var.name, align 8
  %call.res102 = call i1 @"type_env::init_has_name"(ptr %fld.load100, ptr %var.load101)
  br i1 %call.res102, label %choice.then103, label %choice.exit104

loop.exit.nat.181:                                ; preds = %loop.header.181
  br label %loop.exit.181

loop.latch.181:                                   ; preds = %choice.exit104
  %step.val134 = load i64, ptr %loop.step.181, align 8
  %loop.next135 = add i64 %counter.load90, %step.val134
  store i64 %loop.next135, ptr %loop.idx.181, align 8
  br label %loop.header.181

loop.exit.181:                                    ; preds = %loop.exit.nat.181
  %arena.cur136 = call ptr @dva_arena_current()
  %a.new137 = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 24)
  %arena.cur138 = call ptr @dva_arena_current()
  %a.buf139 = call ptr @dva_arena_alloc(ptr %arena.cur138, i64 128)
  %a.len.gep140 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new137, i32 0, i32 0
  store i64 0, ptr %a.len.gep140, align 8
  %a.data.gep141 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new137, i32 0, i32 1
  store ptr %a.buf139, ptr %a.data.gep141, align 8
  %a.cap.gep142 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new137, i32 0, i32 2
  store i64 16, ptr %a.cap.gep142, align 8
  store ptr %a.new137, ptr %var.wr, align 8
  %var.load143 = load ptr, ptr %var.a, align 8
  %fld.gep144 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load143, i32 0, i32 2
  %fld.load145 = load ptr, ptr %fld.gep144, align 8
  %arr.cycle.len146 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load145, i32 0, i32 0
  %arr.cycle.len147 = load i64, ptr %arr.cycle.len146, align 8
  %arr.cycle.data148 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load145, i32 0, i32 1
  %arr.cycle.data149 = load ptr, ptr %arr.cycle.data148, align 8
  store i64 0, ptr %loop.idx.182, align 8
  br label %loop.header.182

choice.then103:                                   ; preds = %loop.body.181
  %var.load105 = load ptr, ptr %var.name, align 8
  %a.load106 = load ptr, ptr %var.wh, align 8
  %a.null107 = icmp eq ptr %a.load106, null
  br i1 %a.null107, label %a.create108, label %a.after109

choice.exit104:                                   ; preds = %a.store120, %loop.body.181
  br label %loop.latch.181

a.create108:                                      ; preds = %choice.then103
  %arena.cur110 = call ptr @dva_arena_current()
  %a.create111 = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 24)
  %arena.cur112 = call ptr @dva_arena_current()
  %a.buf113 = call ptr @dva_arena_alloc(ptr %arena.cur112, i64 128)
  %a.len.gep114 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create111, i32 0, i32 0
  store i64 0, ptr %a.len.gep114, align 8
  %a.data.gep115 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create111, i32 0, i32 1
  store ptr %a.buf113, ptr %a.data.gep115, align 8
  %a.cap.gep116 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create111, i32 0, i32 2
  store i64 16, ptr %a.cap.gep116, align 8
  store ptr %a.create111, ptr %var.wh, align 8
  br label %a.after109

a.after109:                                       ; preds = %a.create108, %choice.then103
  %a.load2117 = load ptr, ptr %var.wh, align 8
  br label %a.check118

a.check118:                                       ; preds = %a.after109
  %a.len121 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2117, i32 0, i32 0
  %a.len122 = load i64, ptr %a.len121, align 8
  %a.cap123 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2117, i32 0, i32 2
  %a.cap124 = load i64, ptr %a.cap123, align 8
  %a.needs.grow125 = icmp eq i64 %a.len122, %a.cap124
  br i1 %a.needs.grow125, label %a.grow119, label %a.store120

a.grow119:                                        ; preds = %a.check118
  call void @dva_array_grow(ptr %a.load2117)
  br label %a.store120

a.store120:                                       ; preds = %a.grow119, %a.check118
  %a.cur.data126 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2117, i32 0, i32 1
  %a.cur.data127 = load ptr, ptr %a.cur.data126, align 8
  %a.cur.len128 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2117, i32 0, i32 0
  %a.cur.len129 = load i64, ptr %a.cur.len128, align 8
  %a.elem.gep130 = getelementptr i64, ptr %a.cur.data127, i64 %a.cur.len129
  %slot.p2i131 = ptrtoint ptr %var.load105 to i64
  store i64 %slot.p2i131, ptr %a.elem.gep130, align 8
  %a.next.len132 = add i64 %a.cur.len129, 1
  %b.len.gep133 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2117, i32 0, i32 0
  store i64 %a.next.len132, ptr %b.len.gep133, align 8
  br label %choice.exit104

loop.header.182:                                  ; preds = %loop.latch.182, %loop.exit.181
  %counter.load150 = load i64, ptr %loop.idx.182, align 8
  %loop.cond151 = icmp slt i64 %counter.load150, %arr.cycle.len147
  br i1 %loop.cond151, label %loop.body.182, label %loop.exit.nat.182

loop.body.182:                                    ; preds = %loop.header.182
  %loop.rel.i152 = sub i64 %counter.load150, 0
  store i64 1, ptr %loop.step.182, align 8
  %arr.elem.gep153 = getelementptr i64, ptr %arr.cycle.data149, i64 %counter.load150
  %arr.elem.raw154 = load i64, ptr %arr.elem.gep153, align 8
  %slot.i2p155 = inttoptr i64 %arr.elem.raw154 to ptr
  store i64 %loop.rel.i152, ptr %var._i156, align 8
  store ptr %slot.i2p155, ptr %var._157, align 8
  store ptr %slot.i2p155, ptr %var.path, align 8
  %var.load158 = load ptr, ptr %var.b, align 8
  %fld.gep159 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load158, i32 0, i32 2
  %fld.load160 = load ptr, ptr %fld.gep159, align 8
  %var.load161 = load ptr, ptr %var.path, align 8
  %call.res162 = call i1 @"type_env::init_has_name"(ptr %fld.load160, ptr %var.load161)
  br i1 %call.res162, label %choice.then163, label %choice.exit164

loop.exit.nat.182:                                ; preds = %loop.header.182
  br label %loop.exit.182

loop.latch.182:                                   ; preds = %choice.exit164
  %step.val194 = load i64, ptr %loop.step.182, align 8
  %loop.next195 = add i64 %counter.load150, %step.val194
  store i64 %loop.next195, ptr %loop.idx.182, align 8
  br label %loop.header.182

loop.exit.182:                                    ; preds = %loop.exit.nat.182
  %var.load196 = load ptr, ptr %var.tr, align 8
  %a.load197 = load ptr, ptr %var.tr, align 8
  %a.null198 = icmp eq ptr %a.load197, null
  br i1 %a.null198, label %a.create199, label %a.after200

choice.then163:                                   ; preds = %loop.body.182
  %var.load165 = load ptr, ptr %var.path, align 8
  %a.load166 = load ptr, ptr %var.wr, align 8
  %a.null167 = icmp eq ptr %a.load166, null
  br i1 %a.null167, label %a.create168, label %a.after169

choice.exit164:                                   ; preds = %a.store180, %loop.body.182
  br label %loop.latch.182

a.create168:                                      ; preds = %choice.then163
  %arena.cur170 = call ptr @dva_arena_current()
  %a.create171 = call ptr @dva_arena_alloc(ptr %arena.cur170, i64 24)
  %arena.cur172 = call ptr @dva_arena_current()
  %a.buf173 = call ptr @dva_arena_alloc(ptr %arena.cur172, i64 128)
  %a.len.gep174 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create171, i32 0, i32 0
  store i64 0, ptr %a.len.gep174, align 8
  %a.data.gep175 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create171, i32 0, i32 1
  store ptr %a.buf173, ptr %a.data.gep175, align 8
  %a.cap.gep176 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create171, i32 0, i32 2
  store i64 16, ptr %a.cap.gep176, align 8
  store ptr %a.create171, ptr %var.wr, align 8
  br label %a.after169

a.after169:                                       ; preds = %a.create168, %choice.then163
  %a.load2177 = load ptr, ptr %var.wr, align 8
  br label %a.check178

a.check178:                                       ; preds = %a.after169
  %a.len181 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2177, i32 0, i32 0
  %a.len182 = load i64, ptr %a.len181, align 8
  %a.cap183 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2177, i32 0, i32 2
  %a.cap184 = load i64, ptr %a.cap183, align 8
  %a.needs.grow185 = icmp eq i64 %a.len182, %a.cap184
  br i1 %a.needs.grow185, label %a.grow179, label %a.store180

a.grow179:                                        ; preds = %a.check178
  call void @dva_array_grow(ptr %a.load2177)
  br label %a.store180

a.store180:                                       ; preds = %a.grow179, %a.check178
  %a.cur.data186 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2177, i32 0, i32 1
  %a.cur.data187 = load ptr, ptr %a.cur.data186, align 8
  %a.cur.len188 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2177, i32 0, i32 0
  %a.cur.len189 = load i64, ptr %a.cur.len188, align 8
  %a.elem.gep190 = getelementptr i64, ptr %a.cur.data187, i64 %a.cur.len189
  %slot.p2i191 = ptrtoint ptr %var.load165 to i64
  store i64 %slot.p2i191, ptr %a.elem.gep190, align 8
  %a.next.len192 = add i64 %a.cur.len189, 1
  %b.len.gep193 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2177, i32 0, i32 0
  store i64 %a.next.len192, ptr %b.len.gep193, align 8
  br label %choice.exit164

a.create199:                                      ; preds = %loop.exit.182
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
  store ptr %a.create202, ptr %var.tr, align 8
  br label %a.after200

a.after200:                                       ; preds = %a.create199, %loop.exit.182
  %a.load2208 = load ptr, ptr %var.tr, align 8
  %var.load209 = load ptr, ptr %var.wh, align 8
  %a.load210 = load ptr, ptr %var.wh, align 8
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
  store ptr %a.create215, ptr %var.wh, align 8
  br label %a.after213

a.after213:                                       ; preds = %a.create212, %a.after200
  %a.load2221 = load ptr, ptr %var.wh, align 8
  %var.load222 = load ptr, ptr %var.wr, align 8
  %a.load223 = load ptr, ptr %var.wr, align 8
  %a.null224 = icmp eq ptr %a.load223, null
  br i1 %a.null224, label %a.create225, label %a.after226

a.create225:                                      ; preds = %a.after213
  %arena.cur227 = call ptr @dva_arena_current()
  %a.create228 = call ptr @dva_arena_alloc(ptr %arena.cur227, i64 24)
  %arena.cur229 = call ptr @dva_arena_current()
  %a.buf230 = call ptr @dva_arena_alloc(ptr %arena.cur229, i64 128)
  %a.len.gep231 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create228, i32 0, i32 0
  store i64 0, ptr %a.len.gep231, align 8
  %a.data.gep232 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create228, i32 0, i32 1
  store ptr %a.buf230, ptr %a.data.gep232, align 8
  %a.cap.gep233 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create228, i32 0, i32 2
  store i64 16, ptr %a.cap.gep233, align 8
  store ptr %a.create228, ptr %var.wr, align 8
  br label %a.after226

a.after226:                                       ; preds = %a.create225, %a.after213
  %a.load2234 = load ptr, ptr %var.wr, align 8
  %arena.cur235 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur235, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %a.load2208, ptr %rec.fld, align 8
  %rec.fld236 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %a.load2221, ptr %rec.fld236, align 8
  %rec.fld237 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.load2234, ptr %rec.fld237, align 8
  ret ptr %rec.alloc
}

define i1 @"type_env::init_is_fully_init"(ptr %0, ptr %1, ptr %2) #1 {
entry:
  %var.path = alloca ptr, align 8
  %var._13 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.f = alloca ptr, align 8
  %loop.step.184 = alloca i64, align 8
  %loop.idx.184 = alloca i64, align 8
  %"var.all_wr'" = alloca i1, align 1
  %var.flds = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  store ptr %2, ptr %var.ut, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"type_env::init_is_tracked"(ptr %var.load, ptr %var.load1)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %or.183.then, label %or.183.else

or.183.then:                                      ; preds = %entry
  br label %or.183.exit

or.183.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load2, i32 0, i32 4
  %fld.gep3 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep3, align 8
  %var.load4 = load ptr, ptr %var.name, align 8
  %call.res5 = call i1 @"type_env::init_has_name"(ptr %fld.load, ptr %var.load4)
  br label %or.183.exit

or.183.exit:                                      ; preds = %or.183.else, %or.183.then
  %or.183.phi = phi i1 [ %nottmp, %or.183.then ], [ %call.res5, %or.183.else ]
  br i1 %or.183.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %or.183.exit
  br label %choice.exit

choice.else:                                      ; preds = %or.183.exit
  %var.load6 = load ptr, ptr %var.ut, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 3
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.exit7, %choice.then
  %choice.res123 = phi i1 [ true, %choice.then ], [ %choice.res, %choice.exit7 ]
  ret i1 %choice.res123

choice.exit7:                                     ; preds = %or.185.exit, %loop.exit.184
  %choice.res = phi i1 [ %var.load113, %loop.exit.184 ], [ %or.185.phi, %or.185.exit ]
  br label %choice.exit

choice.case:                                      ; preds = %choice.else
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.flds, align 8
  store i1 true, ptr %"var.all_wr'", align 1
  %var.load8 = load ptr, ptr %var.flds, align 8
  %a.load = load ptr, ptr %var.flds, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next:                                      ; preds = %choice.else
  %var.load114 = load ptr, ptr %var.env, align 8
  %var.load115 = load ptr, ptr %var.name, align 8
  %call.res116 = call i1 @"type_env::init_is_ok_walk"(ptr %var.load114, ptr %var.load115)
  br i1 %call.res116, label %or.185.then, label %or.185.else

a.create:                                         ; preds = %choice.case
  %arena.cur = call ptr @dva_arena_current()
  %a.create9 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur10 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create9, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create9, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create9, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create9, ptr %var.flds, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case
  %a.load2 = load ptr, ptr %var.flds, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len11 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data12 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.184, align 8
  %cycle.prev.u = load ptr, ptr %var._, align 8
  br label %loop.header.184

loop.header.184:                                  ; preds = %loop.latch.184, %a.after
  %counter.load = load i64, ptr %loop.idx.184, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len11
  br i1 %loop.cond, label %loop.body.184, label %loop.exit.nat.184

loop.body.184:                                    ; preds = %loop.header.184
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.184, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data12, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._13, align 8
  store ptr %slot.i2p, ptr %var.f, align 8
  %var.load14 = load ptr, ptr %var.f, align 8
  %fld.gep15 = getelementptr inbounds { ptr, ptr }, ptr %var.load14, i32 0, i32 0
  %fld.load16 = load ptr, ptr %fld.gep15, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 0
  %eq.lhs.len17 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len18 = and i64 %eq.lhs.len17, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len17, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.184:                                ; preds = %loop.header.184
  br label %loop.exit.184

loop.latch.184:                                   ; preds = %choice.exit30
  %step.val = load i64, ptr %loop.step.184, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.184, align 8
  br label %loop.header.184

loop.exit.184:                                    ; preds = %choice.then111, %loop.exit.nat.184
  store ptr %cycle.prev.u, ptr %var._, align 8
  %var.load113 = load i1, ptr %"var.all_wr'", align 1
  br label %choice.exit7

str_gen_check:                                    ; preds = %loop.body.184
  %arena.cur19 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur19, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.184
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len20 = and i64 %eq.rhs.len, 281474976710655
  %str.tag21 = lshr i64 %eq.rhs.len, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check23:                                  ; preds = %str_ok
  %arena.cur26 = call ptr @dva_arena_current()
  %tag.valid27 = call i1 @dva_arena_validate_tag(ptr %arena.cur26, i64 %str.tag21)
  br i1 %tag.valid27, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len18, %eq.rhs.len20
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale25:                                      ; preds = %str_gen_check23
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok24

str.eq.then:                                      ; preds = %str_ok24
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 1
  %eq.lhs.data28 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data28, ptr %eq.rhs.data, i64 %eq.lhs.len18)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok24
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then29, label %choice.exit30

choice.then29:                                    ; preds = %str.eq.merge
  %var.load31 = load ptr, ptr %var.name, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 0
  %concat.lhs32 = load i64, ptr %concat.lhs, align 8
  %concat.lhs33 = and i64 %concat.lhs32, 281474976710655
  %str.tag34 = lshr i64 %concat.lhs32, 48
  %str.immortal35 = icmp eq i64 %str.tag34, 0
  br i1 %str.immortal35, label %str_ok37, label %str_gen_check36

choice.exit30:                                    ; preds = %choice.exit112, %str.eq.merge
  br label %loop.latch.184

str_gen_check36:                                  ; preds = %choice.then29
  %arena.cur39 = call ptr @dva_arena_current()
  %tag.valid40 = call i1 @dva_arena_validate_tag(ptr %arena.cur39, i64 %str.tag34)
  br i1 %tag.valid40, label %str_ok37, label %str_stale38

str_ok37:                                         ; preds = %str_stale38, %str_gen_check36, %choice.then29
  %concat.lhs41 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 1
  %concat.lhs42 = load ptr, ptr %concat.lhs41, align 8
  %concat.rhs = load i64, ptr @str.8.struct, align 8
  %concat.rhs43 = and i64 %concat.rhs, 281474976710655
  %str.tag44 = lshr i64 %concat.rhs, 48
  %str.immortal45 = icmp eq i64 %str.tag44, 0
  br i1 %str.immortal45, label %str_ok47, label %str_gen_check46

str_stale38:                                      ; preds = %str_gen_check36
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok37

str_gen_check46:                                  ; preds = %str_ok37
  %arena.cur49 = call ptr @dva_arena_current()
  %tag.valid50 = call i1 @dva_arena_validate_tag(ptr %arena.cur49, i64 %str.tag44)
  br i1 %tag.valid50, label %str_ok47, label %str_stale48

str_ok47:                                         ; preds = %str_stale48, %str_gen_check46, %str_ok37
  %concat.rhs51 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs33, i64 %concat.rhs43)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len52

str_stale48:                                      ; preds = %str_gen_check46
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok47

concat.sum.len52:                                 ; preds = %str_overflow_abort, %str_ok47
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum53 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf54 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf54, label %str_overflow_abort56, label %concat.tot.len55

str_overflow_abort:                               ; preds = %str_ok47
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len52

concat.tot.len55:                                 ; preds = %str_overflow_abort56, %concat.sum.len52
  %arena.cur57 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 %sum53)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs42, i64 %concat.lhs33, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs33
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs51, i64 %concat.rhs43, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur58 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load59 = load ptr, ptr %var.f, align 8
  %fld.gep60 = getelementptr inbounds { ptr, ptr }, ptr %var.load59, i32 0, i32 0
  %fld.load61 = load ptr, ptr %fld.gep60, align 8
  %concat.lhs62 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs63 = load i64, ptr %concat.lhs62, align 8
  %concat.lhs64 = and i64 %concat.lhs63, 281474976710655
  %str.tag65 = lshr i64 %concat.lhs63, 48
  %str.immortal66 = icmp eq i64 %str.tag65, 0
  br i1 %str.immortal66, label %str_ok68, label %str_gen_check67

str_overflow_abort56:                             ; preds = %concat.sum.len52
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len55

str_gen_check67:                                  ; preds = %concat.tot.len55
  %arena.cur70 = call ptr @dva_arena_current()
  %tag.valid71 = call i1 @dva_arena_validate_tag(ptr %arena.cur70, i64 %str.tag65)
  br i1 %tag.valid71, label %str_ok68, label %str_stale69

str_ok68:                                         ; preds = %str_stale69, %str_gen_check67, %concat.tot.len55
  %concat.lhs72 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs73 = load ptr, ptr %concat.lhs72, align 8
  %concat.rhs74 = getelementptr inbounds { i64, ptr }, ptr %fld.load61, i32 0, i32 0
  %concat.rhs75 = load i64, ptr %concat.rhs74, align 8
  %concat.rhs76 = and i64 %concat.rhs75, 281474976710655
  %str.tag77 = lshr i64 %concat.rhs75, 48
  %str.immortal78 = icmp eq i64 %str.tag77, 0
  br i1 %str.immortal78, label %str_ok80, label %str_gen_check79

str_stale69:                                      ; preds = %str_gen_check67
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok68

str_gen_check79:                                  ; preds = %str_ok68
  %arena.cur82 = call ptr @dva_arena_current()
  %tag.valid83 = call i1 @dva_arena_validate_tag(ptr %arena.cur82, i64 %str.tag77)
  br i1 %tag.valid83, label %str_ok80, label %str_stale81

str_ok80:                                         ; preds = %str_stale81, %str_gen_check79, %str_ok68
  %concat.rhs84 = getelementptr inbounds { i64, ptr }, ptr %fld.load61, i32 0, i32 1
  %concat.rhs85 = load ptr, ptr %concat.rhs84, align 8
  %concat.sum.len86 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs64, i64 %concat.rhs76)
  %sum87 = extractvalue { i64, i1 } %concat.sum.len86, 0
  %ovf88 = extractvalue { i64, i1 } %concat.sum.len86, 1
  br i1 %ovf88, label %str_overflow_abort90, label %concat.sum.len89

str_stale81:                                      ; preds = %str_gen_check79
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok80

concat.sum.len89:                                 ; preds = %str_overflow_abort90, %str_ok80
  %concat.tot.len91 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum87, i64 1)
  %sum92 = extractvalue { i64, i1 } %concat.tot.len91, 0
  %ovf93 = extractvalue { i64, i1 } %concat.tot.len91, 1
  br i1 %ovf93, label %str_overflow_abort95, label %concat.tot.len94

str_overflow_abort90:                             ; preds = %str_ok80
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len89

concat.tot.len94:                                 ; preds = %str_overflow_abort95, %concat.sum.len89
  %arena.cur96 = call ptr @dva_arena_current()
  %concat.buf97 = call ptr @dva_arena_alloc(ptr %arena.cur96, i64 %sum92)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf97, ptr align 1 %concat.lhs73, i64 %concat.lhs64, i1 false)
  %concat.mid98 = getelementptr i8, ptr %concat.buf97, i64 %concat.lhs64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid98, ptr align 1 %concat.rhs85, i64 %concat.rhs76, i1 false)
  %concat.nul99 = getelementptr i8, ptr %concat.buf97, i64 %sum87
  store i8 0, ptr %concat.nul99, align 1
  %arena.cur100 = call ptr @dva_arena_current()
  %concat.str101 = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 16)
  %str.build.len.gep102 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 0
  store i64 %sum87, ptr %str.build.len.gep102, align 8
  %str.build.data.gep103 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 1
  store ptr %concat.buf97, ptr %str.build.data.gep103, align 8
  store ptr %concat.str101, ptr %var.path, align 8
  %var.load104 = load ptr, ptr %var.env, align 8
  %fld.gep105 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load104, i32 0, i32 4
  %fld.gep106 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep105, i32 0, i32 2
  %fld.load107 = load ptr, ptr %fld.gep106, align 8
  %var.load108 = load ptr, ptr %var.path, align 8
  %call.res109 = call i1 @"type_env::init_has_name"(ptr %fld.load107, ptr %var.load108)
  %nottmp110 = xor i1 %call.res109, true
  br i1 %nottmp110, label %choice.then111, label %choice.exit112

str_overflow_abort95:                             ; preds = %concat.sum.len89
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len94

choice.then111:                                   ; preds = %concat.tot.len94
  store i1 false, ptr %"var.all_wr'", align 1
  br label %loop.exit.184

choice.exit112:                                   ; preds = %concat.tot.len94
  br label %choice.exit30

or.185.then:                                      ; preds = %choice.next
  br label %or.185.exit

or.185.else:                                      ; preds = %choice.next
  %var.load117 = load ptr, ptr %var.env, align 8
  %fld.gep118 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load117, i32 0, i32 4
  %fld.gep119 = getelementptr inbounds { ptr, ptr, ptr }, ptr %fld.gep118, i32 0, i32 2
  %fld.load120 = load ptr, ptr %fld.gep119, align 8
  %var.load121 = load ptr, ptr %var.name, align 8
  %call.res122 = call i1 @"type_env::init_has_name"(ptr %fld.load120, ptr %var.load121)
  br label %or.185.exit

or.185.exit:                                      ; preds = %or.185.else, %or.185.then
  %or.185.phi = phi i1 [ %call.res116, %or.185.then ], [ %call.res122, %or.185.else ]
  br label %choice.exit7
}

define void @"type_env::bind_generic"(ptr %0, ptr %1, ptr %2) #1 {
entry:
  %var.gens = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  store ptr %2, ptr %var.ti, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 5
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.gens, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %var.load2 = load ptr, ptr %var.ti, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load1, ptr %rec.fld, align 8
  %rec.fld3 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load2, ptr %rec.fld3, align 8
  %a.load = load ptr, ptr %var.gens, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
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
  store ptr %a.create5, ptr %var.gens, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.gens, align 8
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
  %var.load11 = load ptr, ptr %var.env, align 8
  %var.load12 = load ptr, ptr %var.gens, align 8
  %a.load13 = load ptr, ptr %var.gens, align 8
  %a.null14 = icmp eq ptr %a.load13, null
  br i1 %a.null14, label %a.create15, label %a.after16

a.create15:                                       ; preds = %a.store
  %arena.cur17 = call ptr @dva_arena_current()
  %a.create18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 24)
  %arena.cur19 = call ptr @dva_arena_current()
  %a.buf20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 128)
  %a.len.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 0
  store i64 0, ptr %a.len.gep21, align 8
  %a.data.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 1
  store ptr %a.buf20, ptr %a.data.gep22, align 8
  %a.cap.gep23 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 2
  store i64 16, ptr %a.cap.gep23, align 8
  store ptr %a.create18, ptr %var.gens, align 8
  br label %a.after16

a.after16:                                        ; preds = %a.create15, %a.store
  %a.load224 = load ptr, ptr %var.gens, align 8
  %fld.gep25 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load11, i32 0, i32 5
  store ptr %a.load224, ptr %fld.gep25, align 8
  ret void
}

define { i1, i64 } @"type_env::lookup_generic_exact"(ptr %0, ptr %1) #1 {
entry:
  %var.g = alloca ptr, align 8
  %var.i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.186 = alloca i64, align 8
  %loop.idx.186 = alloca i64, align 8
  %"var.res'" = alloca { i1, i64 }, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  store { i1, i64 } zeroinitializer, ptr %"var.res'", align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 5
  %fld.load = load ptr, ptr %fld.gep, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %a.len.query1 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.186, align 8
  br label %loop.header.186

loop.header.186:                                  ; preds = %loop.latch.186, %entry
  %counter.load = load i64, ptr %loop.idx.186, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query1
  br i1 %loop.cond, label %loop.body.186, label %loop.exit.nat.186

loop.body.186:                                    ; preds = %loop.header.186
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.186, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.k, align 8
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load2, i32 0, i32 5
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %a.len.query5 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 0
  %a.len.query6 = load i64, ptr %a.len.query5, align 8
  %subtmp = sub i64 %a.len.query6, 1
  %var.load7 = load i64, ptr %var.k, align 8
  %subtmp8 = sub i64 %subtmp, %var.load7
  store i64 %subtmp8, ptr %var.i, align 8
  %var.load9 = load ptr, ptr %var.env, align 8
  %fld.gep10 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load9, i32 0, i32 5
  %fld.load11 = load ptr, ptr %fld.gep10, align 8
  %var.load12 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load11, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

loop.exit.nat.186:                                ; preds = %loop.header.186
  br label %loop.exit.186

loop.latch.186:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.186, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.186, align 8
  br label %loop.header.186

loop.exit.186:                                    ; preds = %choice.then, %loop.exit.nat.186
  %var.load74 = load { i1, i64 }, ptr %"var.res'", align 8
  ret { i1, i64 } %var.load74

a.rd.check:                                       ; preds = %loop.body.186
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load11, i32 0, i32 0
  %a.rd.len13 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load12, 0
  %a.rd.lt = icmp slt i64 %var.load12, %a.rd.len13
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load11, i32 0, i32 1
  %a.rd.data14 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data14, i64 %var.load12
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %loop.body.186
  %arena.cur = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
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
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur15 = call ptr @dva_arena_current()
  %err.alloc16 = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 56)
  %err.code.gep17 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc16, i32 0, i32 0
  store i64 4011, ptr %err.code.gep17, align 8
  %err.msg.gep18 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc16, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep18, align 8
  %err.file.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc16, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep19, align 8
  %err.line.gep20 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc16, i32 0, i32 3
  store i64 0, ptr %err.line.gep20, align 8
  %err.col.gep21 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc16, i32 0, i32 4
  store i64 0, ptr %err.col.gep21, align 8
  %err.ctx.gep22 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc16, i32 0, i32 5
  %err.ctx0.gep23 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep22, i32 0, i32 0
  store i64 %var.load12, ptr %err.ctx0.gep23, align 8
  %err.ctx1.gep24 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep22, i32 0, i32 1
  store i64 %a.rd.len13, ptr %err.ctx1.gep24, align 8
  %err.p2i25 = ptrtoint ptr %err.alloc16 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i25, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.187, label %unwrap.abort.187

unwrap.pos.187:                                   ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.g, align 8
  %var.load46 = load ptr, ptr %var.g, align 8
  %fld.gep47 = getelementptr inbounds { ptr, ptr }, ptr %var.load46, i32 0, i32 0
  %fld.load48 = load ptr, ptr %fld.gep47, align 8
  %var.load49 = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load48, i32 0, i32 0
  %eq.lhs.len50 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len51 = and i64 %eq.lhs.len50, 281474976710655
  %str.tag52 = lshr i64 %eq.lhs.len50, 48
  %str.immortal53 = icmp eq i64 %str.tag52, 0
  br i1 %str.immortal53, label %str_ok55, label %str_gen_check54

unwrap.abort.187:                                 ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep26 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep26, align 8
  %err.msg.gep27 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep27, align 8
  %err.file.gep28 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep28, align 8
  %err.line.gep29 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep29, align 8
  %err.col.gep30 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep30, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len31 = load i64, ptr %err.msg.len, align 8
  %err.msg.len32 = and i64 %err.msg.len31, 281474976710655
  %str.tag = lshr i64 %err.msg.len31, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %unwrap.abort.187
  %arena.cur33 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur33, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %unwrap.abort.187
  %err.msg.len3234 = trunc i64 %err.msg.len32 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data35 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len36 = load i64, ptr %err.file.len, align 8
  %err.file.len37 = and i64 %err.file.len36, 281474976710655
  %str.tag38 = lshr i64 %err.file.len36, 48
  %str.immortal39 = icmp eq i64 %str.tag38, 0
  br i1 %str.immortal39, label %str_ok41, label %str_gen_check40

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check40:                                  ; preds = %str_ok
  %arena.cur43 = call ptr @dva_arena_current()
  %tag.valid44 = call i1 @dva_arena_validate_tag(ptr %arena.cur43, i64 %str.tag38)
  br i1 %tag.valid44, label %str_ok41, label %str_stale42

str_ok41:                                         ; preds = %str_stale42, %str_gen_check40, %str_ok
  %err.file.len32 = trunc i64 %err.file.len37 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data45 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale42:                                      ; preds = %str_gen_check40
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok41

err.thread:                                       ; preds = %str_ok41
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok41
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len3234, ptr %err.msg.data35, i32 %err.file.len32, ptr %err.file.data45, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

str_gen_check54:                                  ; preds = %unwrap.pos.187
  %arena.cur57 = call ptr @dva_arena_current()
  %tag.valid58 = call i1 @dva_arena_validate_tag(ptr %arena.cur57, i64 %str.tag52)
  br i1 %tag.valid58, label %str_ok55, label %str_stale56

str_ok55:                                         ; preds = %str_stale56, %str_gen_check54, %unwrap.pos.187
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 0
  %eq.rhs.len59 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len60 = and i64 %eq.rhs.len59, 281474976710655
  %str.tag61 = lshr i64 %eq.rhs.len59, 48
  %str.immortal62 = icmp eq i64 %str.tag61, 0
  br i1 %str.immortal62, label %str_ok64, label %str_gen_check63

str_stale56:                                      ; preds = %str_gen_check54
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok55

str_gen_check63:                                  ; preds = %str_ok55
  %arena.cur66 = call ptr @dva_arena_current()
  %tag.valid67 = call i1 @dva_arena_validate_tag(ptr %arena.cur66, i64 %str.tag61)
  br i1 %tag.valid67, label %str_ok64, label %str_stale65

str_ok64:                                         ; preds = %str_stale65, %str_gen_check63, %str_ok55
  %eq.len = icmp eq i64 %eq.lhs.len51, %eq.rhs.len60
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale65:                                      ; preds = %str_gen_check63
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok64

str.eq.then:                                      ; preds = %str_ok64
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load48, i32 0, i32 1
  %eq.lhs.data68 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 1
  %eq.rhs.data69 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data68, ptr %eq.rhs.data69, i64 %eq.lhs.len51)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok64
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  %var.load70 = load ptr, ptr %var.g, align 8
  %fld.gep71 = getelementptr inbounds { ptr, ptr }, ptr %var.load70, i32 0, i32 1
  %fld.load72 = load ptr, ptr %fld.gep71, align 8
  %p.to.i64 = ptrtoint ptr %fld.load72 to i64
  %ram.pay73 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  store { i1, i64 } %ram.pay73, ptr %"var.res'", align 8
  br label %loop.exit.186

choice.exit:                                      ; preds = %str.eq.merge
  br label %loop.latch.186
}

define { i1, i64 } @"type_env::lookup_generic"(ptr %0, ptr %1) #1 {
entry:
  %var.p = alloca ptr, align 8
  %var._104 = alloca ptr, align 8
  %var.pub = alloca { i1, i64 }, align 8
  %var.ti = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.exact = alloca { i1, i64 }, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %call.res = call { i1, i64 } @"type_env::lookup_generic_exact"(ptr %var.load, ptr %var.load1)
  store { i1, i64 } %call.res, ptr %var.exact, align 8
  %var.load2 = load { i1, i64 }, ptr %var.exact, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load2, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %var.load2, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.ti, align 8
  %var.load3 = load ptr, ptr %var.ti, align 8
  %p.to.i64 = ptrtoint ptr %var.load3 to i64
  %ram.pay4 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load5 = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load5, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len6 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len7 = and i64 %eq.lhs.len6, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len6, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.exit21, %choice.then
  %choice.res197 = phi { i1, i64 } [ %ram.pay4, %choice.then ], [ %choice.res196, %choice.exit21 ]
  ret { i1, i64 } %choice.res197

str_gen_check:                                    ; preds = %choice.else
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len8 = and i64 %eq.rhs.len, 281474976710655
  %str.tag9 = lshr i64 %eq.rhs.len, 48
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
  %eq.len = icmp eq i64 %eq.lhs.len7, %eq.rhs.len8
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale13:                                      ; preds = %str_gen_check11
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

str.eq.then:                                      ; preds = %str_ok12
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data16 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data16, ptr %eq.rhs.data, i64 %eq.lhs.len7)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok12
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.188.then, label %and.188.else

and.188.then:                                     ; preds = %str.eq.merge
  %var.load17 = load ptr, ptr %var.name, align 8
  %call.res18 = call i1 @"type_env::name_is_qualified"(ptr %var.load17, i64 0)
  %nottmp = xor i1 %call.res18, true
  br label %and.188.exit

and.188.else:                                     ; preds = %str.eq.merge
  br label %and.188.exit

and.188.exit:                                     ; preds = %and.188.else, %and.188.then
  %and.188.phi = phi i1 [ %nottmp, %and.188.then ], [ %str.neq, %and.188.else ]
  br i1 %and.188.phi, label %choice.then19, label %choice.else20

choice.then19:                                    ; preds = %and.188.exit
  %var.load22 = load ptr, ptr %var.env, align 8
  %var.load23 = load ptr, ptr %var.env, align 8
  %fld.gep24 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load23, i32 0, i32 8
  %fld.load25 = load ptr, ptr %fld.gep24, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %fld.load25, i32 0, i32 0
  %concat.lhs26 = load i64, ptr %concat.lhs, align 8
  %concat.lhs27 = and i64 %concat.lhs26, 281474976710655
  %str.tag28 = lshr i64 %concat.lhs26, 48
  %str.immortal29 = icmp eq i64 %str.tag28, 0
  br i1 %str.immortal29, label %str_ok31, label %str_gen_check30

choice.else20:                                    ; preds = %and.188.exit
  br label %choice.exit21

choice.exit21:                                    ; preds = %choice.else20, %choice.exit101
  %choice.res196 = phi { i1, i64 } [ %choice.res, %choice.exit101 ], [ zeroinitializer, %choice.else20 ]
  br label %choice.exit

str_gen_check30:                                  ; preds = %choice.then19
  %arena.cur33 = call ptr @dva_arena_current()
  %tag.valid34 = call i1 @dva_arena_validate_tag(ptr %arena.cur33, i64 %str.tag28)
  br i1 %tag.valid34, label %str_ok31, label %str_stale32

str_ok31:                                         ; preds = %str_stale32, %str_gen_check30, %choice.then19
  %concat.lhs35 = getelementptr inbounds { i64, ptr }, ptr %fld.load25, i32 0, i32 1
  %concat.lhs36 = load ptr, ptr %concat.lhs35, align 8
  %concat.rhs = load i64, ptr @str.4.struct, align 8
  %concat.rhs37 = and i64 %concat.rhs, 281474976710655
  %str.tag38 = lshr i64 %concat.rhs, 48
  %str.immortal39 = icmp eq i64 %str.tag38, 0
  br i1 %str.immortal39, label %str_ok41, label %str_gen_check40

str_stale32:                                      ; preds = %str_gen_check30
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok31

str_gen_check40:                                  ; preds = %str_ok31
  %arena.cur43 = call ptr @dva_arena_current()
  %tag.valid44 = call i1 @dva_arena_validate_tag(ptr %arena.cur43, i64 %str.tag38)
  br i1 %tag.valid44, label %str_ok41, label %str_stale42

str_ok41:                                         ; preds = %str_stale42, %str_gen_check40, %str_ok31
  %concat.rhs45 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs27, i64 %concat.rhs37)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len46

str_stale42:                                      ; preds = %str_gen_check40
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok41

concat.sum.len46:                                 ; preds = %str_overflow_abort, %str_ok41
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum47 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf48 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf48, label %str_overflow_abort50, label %concat.tot.len49

str_overflow_abort:                               ; preds = %str_ok41
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len46

concat.tot.len49:                                 ; preds = %str_overflow_abort50, %concat.sum.len46
  %arena.cur51 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 %sum47)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs36, i64 %concat.lhs27, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs27
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs45, i64 %concat.rhs37, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur52 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load53 = load ptr, ptr %var.name, align 8
  %concat.lhs54 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs55 = load i64, ptr %concat.lhs54, align 8
  %concat.lhs56 = and i64 %concat.lhs55, 281474976710655
  %str.tag57 = lshr i64 %concat.lhs55, 48
  %str.immortal58 = icmp eq i64 %str.tag57, 0
  br i1 %str.immortal58, label %str_ok60, label %str_gen_check59

str_overflow_abort50:                             ; preds = %concat.sum.len46
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len49

str_gen_check59:                                  ; preds = %concat.tot.len49
  %arena.cur62 = call ptr @dva_arena_current()
  %tag.valid63 = call i1 @dva_arena_validate_tag(ptr %arena.cur62, i64 %str.tag57)
  br i1 %tag.valid63, label %str_ok60, label %str_stale61

str_ok60:                                         ; preds = %str_stale61, %str_gen_check59, %concat.tot.len49
  %concat.lhs64 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs65 = load ptr, ptr %concat.lhs64, align 8
  %concat.rhs66 = getelementptr inbounds { i64, ptr }, ptr %var.load53, i32 0, i32 0
  %concat.rhs67 = load i64, ptr %concat.rhs66, align 8
  %concat.rhs68 = and i64 %concat.rhs67, 281474976710655
  %str.tag69 = lshr i64 %concat.rhs67, 48
  %str.immortal70 = icmp eq i64 %str.tag69, 0
  br i1 %str.immortal70, label %str_ok72, label %str_gen_check71

str_stale61:                                      ; preds = %str_gen_check59
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok60

str_gen_check71:                                  ; preds = %str_ok60
  %arena.cur74 = call ptr @dva_arena_current()
  %tag.valid75 = call i1 @dva_arena_validate_tag(ptr %arena.cur74, i64 %str.tag69)
  br i1 %tag.valid75, label %str_ok72, label %str_stale73

str_ok72:                                         ; preds = %str_stale73, %str_gen_check71, %str_ok60
  %concat.rhs76 = getelementptr inbounds { i64, ptr }, ptr %var.load53, i32 0, i32 1
  %concat.rhs77 = load ptr, ptr %concat.rhs76, align 8
  %concat.sum.len78 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs56, i64 %concat.rhs68)
  %sum79 = extractvalue { i64, i1 } %concat.sum.len78, 0
  %ovf80 = extractvalue { i64, i1 } %concat.sum.len78, 1
  br i1 %ovf80, label %str_overflow_abort82, label %concat.sum.len81

str_stale73:                                      ; preds = %str_gen_check71
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok72

concat.sum.len81:                                 ; preds = %str_overflow_abort82, %str_ok72
  %concat.tot.len83 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum79, i64 1)
  %sum84 = extractvalue { i64, i1 } %concat.tot.len83, 0
  %ovf85 = extractvalue { i64, i1 } %concat.tot.len83, 1
  br i1 %ovf85, label %str_overflow_abort87, label %concat.tot.len86

str_overflow_abort82:                             ; preds = %str_ok72
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len81

concat.tot.len86:                                 ; preds = %str_overflow_abort87, %concat.sum.len81
  %arena.cur88 = call ptr @dva_arena_current()
  %concat.buf89 = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 %sum84)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf89, ptr align 1 %concat.lhs65, i64 %concat.lhs56, i1 false)
  %concat.mid90 = getelementptr i8, ptr %concat.buf89, i64 %concat.lhs56
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid90, ptr align 1 %concat.rhs77, i64 %concat.rhs68, i1 false)
  %concat.nul91 = getelementptr i8, ptr %concat.buf89, i64 %sum79
  store i8 0, ptr %concat.nul91, align 1
  %arena.cur92 = call ptr @dva_arena_current()
  %concat.str93 = call ptr @dva_arena_alloc(ptr %arena.cur92, i64 16)
  %str.build.len.gep94 = getelementptr inbounds { i64, ptr }, ptr %concat.str93, i32 0, i32 0
  store i64 %sum79, ptr %str.build.len.gep94, align 8
  %str.build.data.gep95 = getelementptr inbounds { i64, ptr }, ptr %concat.str93, i32 0, i32 1
  store ptr %concat.buf89, ptr %str.build.data.gep95, align 8
  %call.res96 = call { i1, i64 } @"type_env::lookup_generic_exact"(ptr %var.load22, ptr %concat.str93)
  store { i1, i64 } %call.res96, ptr %var.pub, align 8
  %var.load97 = load { i1, i64 }, ptr %var.pub, align 8
  %ram.tag98 = extractvalue { i1, i64 } %var.load97, 0
  br i1 %ram.tag98, label %choice.then99, label %choice.else100

str_overflow_abort87:                             ; preds = %concat.sum.len81
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len86

choice.then99:                                    ; preds = %concat.tot.len86
  %ram.pay102 = extractvalue { i1, i64 } %var.load97, 1
  %pay.ptr103 = inttoptr i64 %ram.pay102 to ptr
  store ptr %pay.ptr103, ptr %var._104, align 8
  store ptr %pay.ptr103, ptr %var.p, align 8
  %var.load105 = load ptr, ptr %var.p, align 8
  %p.to.i64106 = ptrtoint ptr %var.load105 to i64
  %ram.pay107 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64106, 1
  br label %choice.exit101

choice.else100:                                   ; preds = %concat.tot.len86
  %var.load108 = load ptr, ptr %var.env, align 8
  %var.load109 = load ptr, ptr %var.env, align 8
  %fld.gep110 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load109, i32 0, i32 8
  %fld.load111 = load ptr, ptr %fld.gep110, align 8
  %concat.lhs112 = getelementptr inbounds { i64, ptr }, ptr %fld.load111, i32 0, i32 0
  %concat.lhs113 = load i64, ptr %concat.lhs112, align 8
  %concat.lhs114 = and i64 %concat.lhs113, 281474976710655
  %str.tag115 = lshr i64 %concat.lhs113, 48
  %str.immortal116 = icmp eq i64 %str.tag115, 0
  br i1 %str.immortal116, label %str_ok118, label %str_gen_check117

choice.exit101:                                   ; preds = %concat.tot.len185, %choice.then99
  %choice.res = phi { i1, i64 } [ %ram.pay107, %choice.then99 ], [ %call.res195, %concat.tot.len185 ]
  br label %choice.exit21

str_gen_check117:                                 ; preds = %choice.else100
  %arena.cur120 = call ptr @dva_arena_current()
  %tag.valid121 = call i1 @dva_arena_validate_tag(ptr %arena.cur120, i64 %str.tag115)
  br i1 %tag.valid121, label %str_ok118, label %str_stale119

str_ok118:                                        ; preds = %str_stale119, %str_gen_check117, %choice.else100
  %concat.lhs122 = getelementptr inbounds { i64, ptr }, ptr %fld.load111, i32 0, i32 1
  %concat.lhs123 = load ptr, ptr %concat.lhs122, align 8
  %concat.rhs124 = load i64, ptr @str.7.struct, align 8
  %concat.rhs125 = and i64 %concat.rhs124, 281474976710655
  %str.tag126 = lshr i64 %concat.rhs124, 48
  %str.immortal127 = icmp eq i64 %str.tag126, 0
  br i1 %str.immortal127, label %str_ok129, label %str_gen_check128

str_stale119:                                     ; preds = %str_gen_check117
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok118

str_gen_check128:                                 ; preds = %str_ok118
  %arena.cur131 = call ptr @dva_arena_current()
  %tag.valid132 = call i1 @dva_arena_validate_tag(ptr %arena.cur131, i64 %str.tag126)
  br i1 %tag.valid132, label %str_ok129, label %str_stale130

str_ok129:                                        ; preds = %str_stale130, %str_gen_check128, %str_ok118
  %concat.rhs133 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %concat.sum.len134 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs114, i64 %concat.rhs125)
  %sum135 = extractvalue { i64, i1 } %concat.sum.len134, 0
  %ovf136 = extractvalue { i64, i1 } %concat.sum.len134, 1
  br i1 %ovf136, label %str_overflow_abort138, label %concat.sum.len137

str_stale130:                                     ; preds = %str_gen_check128
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok129

concat.sum.len137:                                ; preds = %str_overflow_abort138, %str_ok129
  %concat.tot.len139 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum135, i64 1)
  %sum140 = extractvalue { i64, i1 } %concat.tot.len139, 0
  %ovf141 = extractvalue { i64, i1 } %concat.tot.len139, 1
  br i1 %ovf141, label %str_overflow_abort143, label %concat.tot.len142

str_overflow_abort138:                            ; preds = %str_ok129
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len137

concat.tot.len142:                                ; preds = %str_overflow_abort143, %concat.sum.len137
  %arena.cur144 = call ptr @dva_arena_current()
  %concat.buf145 = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 %sum140)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf145, ptr align 1 %concat.lhs123, i64 %concat.lhs114, i1 false)
  %concat.mid146 = getelementptr i8, ptr %concat.buf145, i64 %concat.lhs114
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid146, ptr align 1 %concat.rhs133, i64 %concat.rhs125, i1 false)
  %concat.nul147 = getelementptr i8, ptr %concat.buf145, i64 %sum135
  store i8 0, ptr %concat.nul147, align 1
  %arena.cur148 = call ptr @dva_arena_current()
  %concat.str149 = call ptr @dva_arena_alloc(ptr %arena.cur148, i64 16)
  %str.build.len.gep150 = getelementptr inbounds { i64, ptr }, ptr %concat.str149, i32 0, i32 0
  store i64 %sum135, ptr %str.build.len.gep150, align 8
  %str.build.data.gep151 = getelementptr inbounds { i64, ptr }, ptr %concat.str149, i32 0, i32 1
  store ptr %concat.buf145, ptr %str.build.data.gep151, align 8
  %var.load152 = load ptr, ptr %var.name, align 8
  %concat.lhs153 = getelementptr inbounds { i64, ptr }, ptr %concat.str149, i32 0, i32 0
  %concat.lhs154 = load i64, ptr %concat.lhs153, align 8
  %concat.lhs155 = and i64 %concat.lhs154, 281474976710655
  %str.tag156 = lshr i64 %concat.lhs154, 48
  %str.immortal157 = icmp eq i64 %str.tag156, 0
  br i1 %str.immortal157, label %str_ok159, label %str_gen_check158

str_overflow_abort143:                            ; preds = %concat.sum.len137
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len142

str_gen_check158:                                 ; preds = %concat.tot.len142
  %arena.cur161 = call ptr @dva_arena_current()
  %tag.valid162 = call i1 @dva_arena_validate_tag(ptr %arena.cur161, i64 %str.tag156)
  br i1 %tag.valid162, label %str_ok159, label %str_stale160

str_ok159:                                        ; preds = %str_stale160, %str_gen_check158, %concat.tot.len142
  %concat.lhs163 = getelementptr inbounds { i64, ptr }, ptr %concat.str149, i32 0, i32 1
  %concat.lhs164 = load ptr, ptr %concat.lhs163, align 8
  %concat.rhs165 = getelementptr inbounds { i64, ptr }, ptr %var.load152, i32 0, i32 0
  %concat.rhs166 = load i64, ptr %concat.rhs165, align 8
  %concat.rhs167 = and i64 %concat.rhs166, 281474976710655
  %str.tag168 = lshr i64 %concat.rhs166, 48
  %str.immortal169 = icmp eq i64 %str.tag168, 0
  br i1 %str.immortal169, label %str_ok171, label %str_gen_check170

str_stale160:                                     ; preds = %str_gen_check158
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok159

str_gen_check170:                                 ; preds = %str_ok159
  %arena.cur173 = call ptr @dva_arena_current()
  %tag.valid174 = call i1 @dva_arena_validate_tag(ptr %arena.cur173, i64 %str.tag168)
  br i1 %tag.valid174, label %str_ok171, label %str_stale172

str_ok171:                                        ; preds = %str_stale172, %str_gen_check170, %str_ok159
  %concat.rhs175 = getelementptr inbounds { i64, ptr }, ptr %var.load152, i32 0, i32 1
  %concat.rhs176 = load ptr, ptr %concat.rhs175, align 8
  %concat.sum.len177 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs155, i64 %concat.rhs167)
  %sum178 = extractvalue { i64, i1 } %concat.sum.len177, 0
  %ovf179 = extractvalue { i64, i1 } %concat.sum.len177, 1
  br i1 %ovf179, label %str_overflow_abort181, label %concat.sum.len180

str_stale172:                                     ; preds = %str_gen_check170
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok171

concat.sum.len180:                                ; preds = %str_overflow_abort181, %str_ok171
  %concat.tot.len182 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum178, i64 1)
  %sum183 = extractvalue { i64, i1 } %concat.tot.len182, 0
  %ovf184 = extractvalue { i64, i1 } %concat.tot.len182, 1
  br i1 %ovf184, label %str_overflow_abort186, label %concat.tot.len185

str_overflow_abort181:                            ; preds = %str_ok171
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len180

concat.tot.len185:                                ; preds = %str_overflow_abort186, %concat.sum.len180
  %arena.cur187 = call ptr @dva_arena_current()
  %concat.buf188 = call ptr @dva_arena_alloc(ptr %arena.cur187, i64 %sum183)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf188, ptr align 1 %concat.lhs164, i64 %concat.lhs155, i1 false)
  %concat.mid189 = getelementptr i8, ptr %concat.buf188, i64 %concat.lhs155
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid189, ptr align 1 %concat.rhs176, i64 %concat.rhs167, i1 false)
  %concat.nul190 = getelementptr i8, ptr %concat.buf188, i64 %sum178
  store i8 0, ptr %concat.nul190, align 1
  %arena.cur191 = call ptr @dva_arena_current()
  %concat.str192 = call ptr @dva_arena_alloc(ptr %arena.cur191, i64 16)
  %str.build.len.gep193 = getelementptr inbounds { i64, ptr }, ptr %concat.str192, i32 0, i32 0
  store i64 %sum178, ptr %str.build.len.gep193, align 8
  %str.build.data.gep194 = getelementptr inbounds { i64, ptr }, ptr %concat.str192, i32 0, i32 1
  store ptr %concat.buf188, ptr %str.build.data.gep194, align 8
  %call.res195 = call { i1, i64 } @"type_env::lookup_generic_exact"(ptr %var.load108, ptr %concat.str192)
  br label %choice.exit101

str_overflow_abort186:                            ; preds = %concat.sum.len180
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len185
}

define void @"type_env::bind_user_type"(ptr %0, ptr %1, ptr %2, ptr %3) #1 {
entry:
  %var.uts = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  store ptr %2, ptr %var.ti, align 8
  store ptr %3, ptr %var.ut, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 6
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.uts, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %var.load2 = load ptr, ptr %var.ti, align 8
  %var.load3 = load ptr, ptr %var.ut, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load1, ptr %rec.fld, align 8
  %rec.fld4 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load2, ptr %rec.fld4, align 8
  %rec.fld5 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load3, ptr %rec.fld5, align 8
  %a.load = load ptr, ptr %var.uts, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur6 = call ptr @dva_arena_current()
  %a.create7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 24)
  %arena.cur8 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create7, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create7, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create7, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create7, ptr %var.uts, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.uts, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len9 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap10 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len9, %a.cap10
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data11 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len12 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data11, i64 %a.cur.len12
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len12, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load13 = load ptr, ptr %var.env, align 8
  %var.load14 = load ptr, ptr %var.uts, align 8
  %a.load15 = load ptr, ptr %var.uts, align 8
  %a.null16 = icmp eq ptr %a.load15, null
  br i1 %a.null16, label %a.create17, label %a.after18

a.create17:                                       ; preds = %a.store
  %arena.cur19 = call ptr @dva_arena_current()
  %a.create20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 24)
  %arena.cur21 = call ptr @dva_arena_current()
  %a.buf22 = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 128)
  %a.len.gep23 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 0
  store i64 0, ptr %a.len.gep23, align 8
  %a.data.gep24 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 1
  store ptr %a.buf22, ptr %a.data.gep24, align 8
  %a.cap.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create20, i32 0, i32 2
  store i64 16, ptr %a.cap.gep25, align 8
  store ptr %a.create20, ptr %var.uts, align 8
  br label %a.after18

a.after18:                                        ; preds = %a.create17, %a.store
  %a.load226 = load ptr, ptr %var.uts, align 8
  %fld.gep27 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load13, i32 0, i32 6
  store ptr %a.load226, ptr %fld.gep27, align 8
  ret void
}

define ptr @"type_env::lookup_user_type_exact"(ptr %0, ptr %1) #1 {
entry:
  %var.u = alloca ptr, align 8
  %var.i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.189 = alloca i64, align 8
  %loop.idx.189 = alloca i64, align 8
  %"var.res'" = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  store ptr null, ptr %"var.res'", align 8
  %var.load = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load, i32 0, i32 6
  %fld.load = load ptr, ptr %fld.gep, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %a.len.query1 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.189, align 8
  br label %loop.header.189

loop.header.189:                                  ; preds = %loop.latch.189, %entry
  %counter.load = load i64, ptr %loop.idx.189, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query1
  br i1 %loop.cond, label %loop.body.189, label %loop.exit.nat.189

loop.body.189:                                    ; preds = %loop.header.189
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.189, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.k, align 8
  %var.load2 = load ptr, ptr %var.env, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load2, i32 0, i32 6
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %a.len.query5 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 0
  %a.len.query6 = load i64, ptr %a.len.query5, align 8
  %subtmp = sub i64 %a.len.query6, 1
  %var.load7 = load i64, ptr %var.k, align 8
  %subtmp8 = sub i64 %subtmp, %var.load7
  store i64 %subtmp8, ptr %var.i, align 8
  %var.load9 = load ptr, ptr %var.env, align 8
  %fld.gep10 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load9, i32 0, i32 6
  %fld.load11 = load ptr, ptr %fld.gep10, align 8
  %var.load12 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load11, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

loop.exit.nat.189:                                ; preds = %loop.header.189
  br label %loop.exit.189

loop.latch.189:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.189, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.189, align 8
  br label %loop.header.189

loop.exit.189:                                    ; preds = %choice.then, %loop.exit.nat.189
  %var.load71 = load ptr, ptr %"var.res'", align 8
  ret ptr %var.load71

a.rd.check:                                       ; preds = %loop.body.189
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load11, i32 0, i32 0
  %a.rd.len13 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load12, 0
  %a.rd.lt = icmp slt i64 %var.load12, %a.rd.len13
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load11, i32 0, i32 1
  %a.rd.data14 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data14, i64 %var.load12
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %loop.body.189
  %arena.cur = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
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
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur15 = call ptr @dva_arena_current()
  %err.alloc16 = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 56)
  %err.code.gep17 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc16, i32 0, i32 0
  store i64 4011, ptr %err.code.gep17, align 8
  %err.msg.gep18 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc16, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep18, align 8
  %err.file.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc16, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep19, align 8
  %err.line.gep20 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc16, i32 0, i32 3
  store i64 0, ptr %err.line.gep20, align 8
  %err.col.gep21 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc16, i32 0, i32 4
  store i64 0, ptr %err.col.gep21, align 8
  %err.ctx.gep22 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc16, i32 0, i32 5
  %err.ctx0.gep23 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep22, i32 0, i32 0
  store i64 %var.load12, ptr %err.ctx0.gep23, align 8
  %err.ctx1.gep24 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep22, i32 0, i32 1
  store i64 %a.rd.len13, ptr %err.ctx1.gep24, align 8
  %err.p2i25 = ptrtoint ptr %err.alloc16 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i25, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.190, label %unwrap.abort.190

unwrap.pos.190:                                   ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.u, align 8
  %var.load46 = load ptr, ptr %var.u, align 8
  %fld.gep47 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load46, i32 0, i32 0
  %fld.load48 = load ptr, ptr %fld.gep47, align 8
  %var.load49 = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load48, i32 0, i32 0
  %eq.lhs.len50 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len51 = and i64 %eq.lhs.len50, 281474976710655
  %str.tag52 = lshr i64 %eq.lhs.len50, 48
  %str.immortal53 = icmp eq i64 %str.tag52, 0
  br i1 %str.immortal53, label %str_ok55, label %str_gen_check54

unwrap.abort.190:                                 ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep26 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep26, align 8
  %err.msg.gep27 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep27, align 8
  %err.file.gep28 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep28, align 8
  %err.line.gep29 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep29, align 8
  %err.col.gep30 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep30, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len31 = load i64, ptr %err.msg.len, align 8
  %err.msg.len32 = and i64 %err.msg.len31, 281474976710655
  %str.tag = lshr i64 %err.msg.len31, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %unwrap.abort.190
  %arena.cur33 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur33, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %unwrap.abort.190
  %err.msg.len3234 = trunc i64 %err.msg.len32 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data35 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len36 = load i64, ptr %err.file.len, align 8
  %err.file.len37 = and i64 %err.file.len36, 281474976710655
  %str.tag38 = lshr i64 %err.file.len36, 48
  %str.immortal39 = icmp eq i64 %str.tag38, 0
  br i1 %str.immortal39, label %str_ok41, label %str_gen_check40

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check40:                                  ; preds = %str_ok
  %arena.cur43 = call ptr @dva_arena_current()
  %tag.valid44 = call i1 @dva_arena_validate_tag(ptr %arena.cur43, i64 %str.tag38)
  br i1 %tag.valid44, label %str_ok41, label %str_stale42

str_ok41:                                         ; preds = %str_stale42, %str_gen_check40, %str_ok
  %err.file.len32 = trunc i64 %err.file.len37 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data45 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale42:                                      ; preds = %str_gen_check40
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok41

err.thread:                                       ; preds = %str_ok41
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok41
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len3234, ptr %err.msg.data35, i32 %err.file.len32, ptr %err.file.data45, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

str_gen_check54:                                  ; preds = %unwrap.pos.190
  %arena.cur57 = call ptr @dva_arena_current()
  %tag.valid58 = call i1 @dva_arena_validate_tag(ptr %arena.cur57, i64 %str.tag52)
  br i1 %tag.valid58, label %str_ok55, label %str_stale56

str_ok55:                                         ; preds = %str_stale56, %str_gen_check54, %unwrap.pos.190
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 0
  %eq.rhs.len59 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len60 = and i64 %eq.rhs.len59, 281474976710655
  %str.tag61 = lshr i64 %eq.rhs.len59, 48
  %str.immortal62 = icmp eq i64 %str.tag61, 0
  br i1 %str.immortal62, label %str_ok64, label %str_gen_check63

str_stale56:                                      ; preds = %str_gen_check54
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok55

str_gen_check63:                                  ; preds = %str_ok55
  %arena.cur66 = call ptr @dva_arena_current()
  %tag.valid67 = call i1 @dva_arena_validate_tag(ptr %arena.cur66, i64 %str.tag61)
  br i1 %tag.valid67, label %str_ok64, label %str_stale65

str_ok64:                                         ; preds = %str_stale65, %str_gen_check63, %str_ok55
  %eq.len = icmp eq i64 %eq.lhs.len51, %eq.rhs.len60
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale65:                                      ; preds = %str_gen_check63
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok64

str.eq.then:                                      ; preds = %str_ok64
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load48, i32 0, i32 1
  %eq.lhs.data68 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 1
  %eq.rhs.data69 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data68, ptr %eq.rhs.data69, i64 %eq.lhs.len51)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok64
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  %var.load70 = load ptr, ptr %var.u, align 8
  store ptr %var.load70, ptr %"var.res'", align 8
  br label %loop.exit.189

choice.exit:                                      ; preds = %str.eq.merge
  br label %loop.latch.189
}

define ptr @"type_env::lookup_user_type"(ptr %0, ptr %1) #1 {
entry:
  %var.p = alloca ptr, align 8
  %var._101 = alloca ptr, align 8
  %var.pub = alloca ptr, align 8
  %var.u = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.exact = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.env = alloca ptr, align 8
  store ptr %0, ptr %var.env, align 8
  store ptr %1, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.env, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
  %call.res = call ptr @"type_env::lookup_user_type_exact"(ptr %var.load, ptr %var.load1)
  store ptr %call.res, ptr %var.exact, align 8
  %var.load2 = load ptr, ptr %var.exact, align 8
  %niche.ne.null = icmp ne ptr %var.load2, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load2, ptr %var._, align 8
  store ptr %var.load2, ptr %var.u, align 8
  %var.load3 = load ptr, ptr %var.u, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.env, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load4, i32 0, i32 8
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len5 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len6 = and i64 %eq.lhs.len5, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len5, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.exit20, %choice.then
  %choice.res192 = phi ptr [ %var.load3, %choice.then ], [ %choice.res191, %choice.exit20 ]
  ret ptr %choice.res192

str_gen_check:                                    ; preds = %choice.else
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len7 = and i64 %eq.rhs.len, 281474976710655
  %str.tag8 = lshr i64 %eq.rhs.len, 48
  %str.immortal9 = icmp eq i64 %str.tag8, 0
  br i1 %str.immortal9, label %str_ok11, label %str_gen_check10

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check10:                                  ; preds = %str_ok
  %arena.cur13 = call ptr @dva_arena_current()
  %tag.valid14 = call i1 @dva_arena_validate_tag(ptr %arena.cur13, i64 %str.tag8)
  br i1 %tag.valid14, label %str_ok11, label %str_stale12

str_ok11:                                         ; preds = %str_stale12, %str_gen_check10, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len6, %eq.rhs.len7
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale12:                                      ; preds = %str_gen_check10
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok11

str.eq.then:                                      ; preds = %str_ok11
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data15 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data15, ptr %eq.rhs.data, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok11
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.191.then, label %and.191.else

and.191.then:                                     ; preds = %str.eq.merge
  %var.load16 = load ptr, ptr %var.name, align 8
  %call.res17 = call i1 @"type_env::name_is_qualified"(ptr %var.load16, i64 0)
  %nottmp = xor i1 %call.res17, true
  br label %and.191.exit

and.191.else:                                     ; preds = %str.eq.merge
  br label %and.191.exit

and.191.exit:                                     ; preds = %and.191.else, %and.191.then
  %and.191.phi = phi i1 [ %nottmp, %and.191.then ], [ %str.neq, %and.191.else ]
  br i1 %and.191.phi, label %choice.then18, label %choice.else19

choice.then18:                                    ; preds = %and.191.exit
  %var.load21 = load ptr, ptr %var.env, align 8
  %var.load22 = load ptr, ptr %var.env, align 8
  %fld.gep23 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load22, i32 0, i32 8
  %fld.load24 = load ptr, ptr %fld.gep23, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %fld.load24, i32 0, i32 0
  %concat.lhs25 = load i64, ptr %concat.lhs, align 8
  %concat.lhs26 = and i64 %concat.lhs25, 281474976710655
  %str.tag27 = lshr i64 %concat.lhs25, 48
  %str.immortal28 = icmp eq i64 %str.tag27, 0
  br i1 %str.immortal28, label %str_ok30, label %str_gen_check29

choice.else19:                                    ; preds = %and.191.exit
  br label %choice.exit20

choice.exit20:                                    ; preds = %choice.else19, %choice.exit100
  %choice.res191 = phi ptr [ %choice.res, %choice.exit100 ], [ null, %choice.else19 ]
  br label %choice.exit

str_gen_check29:                                  ; preds = %choice.then18
  %arena.cur32 = call ptr @dva_arena_current()
  %tag.valid33 = call i1 @dva_arena_validate_tag(ptr %arena.cur32, i64 %str.tag27)
  br i1 %tag.valid33, label %str_ok30, label %str_stale31

str_ok30:                                         ; preds = %str_stale31, %str_gen_check29, %choice.then18
  %concat.lhs34 = getelementptr inbounds { i64, ptr }, ptr %fld.load24, i32 0, i32 1
  %concat.lhs35 = load ptr, ptr %concat.lhs34, align 8
  %concat.rhs = load i64, ptr @str.4.struct, align 8
  %concat.rhs36 = and i64 %concat.rhs, 281474976710655
  %str.tag37 = lshr i64 %concat.rhs, 48
  %str.immortal38 = icmp eq i64 %str.tag37, 0
  br i1 %str.immortal38, label %str_ok40, label %str_gen_check39

str_stale31:                                      ; preds = %str_gen_check29
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok30

str_gen_check39:                                  ; preds = %str_ok30
  %arena.cur42 = call ptr @dva_arena_current()
  %tag.valid43 = call i1 @dva_arena_validate_tag(ptr %arena.cur42, i64 %str.tag37)
  br i1 %tag.valid43, label %str_ok40, label %str_stale41

str_ok40:                                         ; preds = %str_stale41, %str_gen_check39, %str_ok30
  %concat.rhs44 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs26, i64 %concat.rhs36)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len45

str_stale41:                                      ; preds = %str_gen_check39
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok40

concat.sum.len45:                                 ; preds = %str_overflow_abort, %str_ok40
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum46 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf47 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf47, label %str_overflow_abort49, label %concat.tot.len48

str_overflow_abort:                               ; preds = %str_ok40
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len45

concat.tot.len48:                                 ; preds = %str_overflow_abort49, %concat.sum.len45
  %arena.cur50 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 %sum46)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs35, i64 %concat.lhs26, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs44, i64 %concat.rhs36, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur51 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load52 = load ptr, ptr %var.name, align 8
  %concat.lhs53 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs54 = load i64, ptr %concat.lhs53, align 8
  %concat.lhs55 = and i64 %concat.lhs54, 281474976710655
  %str.tag56 = lshr i64 %concat.lhs54, 48
  %str.immortal57 = icmp eq i64 %str.tag56, 0
  br i1 %str.immortal57, label %str_ok59, label %str_gen_check58

str_overflow_abort49:                             ; preds = %concat.sum.len45
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len48

str_gen_check58:                                  ; preds = %concat.tot.len48
  %arena.cur61 = call ptr @dva_arena_current()
  %tag.valid62 = call i1 @dva_arena_validate_tag(ptr %arena.cur61, i64 %str.tag56)
  br i1 %tag.valid62, label %str_ok59, label %str_stale60

str_ok59:                                         ; preds = %str_stale60, %str_gen_check58, %concat.tot.len48
  %concat.lhs63 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs64 = load ptr, ptr %concat.lhs63, align 8
  %concat.rhs65 = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 0
  %concat.rhs66 = load i64, ptr %concat.rhs65, align 8
  %concat.rhs67 = and i64 %concat.rhs66, 281474976710655
  %str.tag68 = lshr i64 %concat.rhs66, 48
  %str.immortal69 = icmp eq i64 %str.tag68, 0
  br i1 %str.immortal69, label %str_ok71, label %str_gen_check70

str_stale60:                                      ; preds = %str_gen_check58
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok59

str_gen_check70:                                  ; preds = %str_ok59
  %arena.cur73 = call ptr @dva_arena_current()
  %tag.valid74 = call i1 @dva_arena_validate_tag(ptr %arena.cur73, i64 %str.tag68)
  br i1 %tag.valid74, label %str_ok71, label %str_stale72

str_ok71:                                         ; preds = %str_stale72, %str_gen_check70, %str_ok59
  %concat.rhs75 = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 1
  %concat.rhs76 = load ptr, ptr %concat.rhs75, align 8
  %concat.sum.len77 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs55, i64 %concat.rhs67)
  %sum78 = extractvalue { i64, i1 } %concat.sum.len77, 0
  %ovf79 = extractvalue { i64, i1 } %concat.sum.len77, 1
  br i1 %ovf79, label %str_overflow_abort81, label %concat.sum.len80

str_stale72:                                      ; preds = %str_gen_check70
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok71

concat.sum.len80:                                 ; preds = %str_overflow_abort81, %str_ok71
  %concat.tot.len82 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum78, i64 1)
  %sum83 = extractvalue { i64, i1 } %concat.tot.len82, 0
  %ovf84 = extractvalue { i64, i1 } %concat.tot.len82, 1
  br i1 %ovf84, label %str_overflow_abort86, label %concat.tot.len85

str_overflow_abort81:                             ; preds = %str_ok71
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len80

concat.tot.len85:                                 ; preds = %str_overflow_abort86, %concat.sum.len80
  %arena.cur87 = call ptr @dva_arena_current()
  %concat.buf88 = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 %sum83)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf88, ptr align 1 %concat.lhs64, i64 %concat.lhs55, i1 false)
  %concat.mid89 = getelementptr i8, ptr %concat.buf88, i64 %concat.lhs55
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid89, ptr align 1 %concat.rhs76, i64 %concat.rhs67, i1 false)
  %concat.nul90 = getelementptr i8, ptr %concat.buf88, i64 %sum78
  store i8 0, ptr %concat.nul90, align 1
  %arena.cur91 = call ptr @dva_arena_current()
  %concat.str92 = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 16)
  %str.build.len.gep93 = getelementptr inbounds { i64, ptr }, ptr %concat.str92, i32 0, i32 0
  store i64 %sum78, ptr %str.build.len.gep93, align 8
  %str.build.data.gep94 = getelementptr inbounds { i64, ptr }, ptr %concat.str92, i32 0, i32 1
  store ptr %concat.buf88, ptr %str.build.data.gep94, align 8
  %call.res95 = call ptr @"type_env::lookup_user_type_exact"(ptr %var.load21, ptr %concat.str92)
  store ptr %call.res95, ptr %var.pub, align 8
  %var.load96 = load ptr, ptr %var.pub, align 8
  %niche.ne.null97 = icmp ne ptr %var.load96, null
  br i1 %niche.ne.null97, label %choice.then98, label %choice.else99

str_overflow_abort86:                             ; preds = %concat.sum.len80
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len85

choice.then98:                                    ; preds = %concat.tot.len85
  store ptr %var.load96, ptr %var._101, align 8
  store ptr %var.load96, ptr %var.p, align 8
  %var.load102 = load ptr, ptr %var.p, align 8
  br label %choice.exit100

choice.else99:                                    ; preds = %concat.tot.len85
  %var.load103 = load ptr, ptr %var.env, align 8
  %var.load104 = load ptr, ptr %var.env, align 8
  %fld.gep105 = getelementptr inbounds { ptr, i64, i64, ptr, { ptr, ptr, ptr }, ptr, ptr, ptr, ptr, i1, i1, i1, i1, ptr, ptr, { i1, i64 }, ptr }, ptr %var.load104, i32 0, i32 8
  %fld.load106 = load ptr, ptr %fld.gep105, align 8
  %concat.lhs107 = getelementptr inbounds { i64, ptr }, ptr %fld.load106, i32 0, i32 0
  %concat.lhs108 = load i64, ptr %concat.lhs107, align 8
  %concat.lhs109 = and i64 %concat.lhs108, 281474976710655
  %str.tag110 = lshr i64 %concat.lhs108, 48
  %str.immortal111 = icmp eq i64 %str.tag110, 0
  br i1 %str.immortal111, label %str_ok113, label %str_gen_check112

choice.exit100:                                   ; preds = %concat.tot.len180, %choice.then98
  %choice.res = phi ptr [ %var.load102, %choice.then98 ], [ %call.res190, %concat.tot.len180 ]
  br label %choice.exit20

str_gen_check112:                                 ; preds = %choice.else99
  %arena.cur115 = call ptr @dva_arena_current()
  %tag.valid116 = call i1 @dva_arena_validate_tag(ptr %arena.cur115, i64 %str.tag110)
  br i1 %tag.valid116, label %str_ok113, label %str_stale114

str_ok113:                                        ; preds = %str_stale114, %str_gen_check112, %choice.else99
  %concat.lhs117 = getelementptr inbounds { i64, ptr }, ptr %fld.load106, i32 0, i32 1
  %concat.lhs118 = load ptr, ptr %concat.lhs117, align 8
  %concat.rhs119 = load i64, ptr @str.7.struct, align 8
  %concat.rhs120 = and i64 %concat.rhs119, 281474976710655
  %str.tag121 = lshr i64 %concat.rhs119, 48
  %str.immortal122 = icmp eq i64 %str.tag121, 0
  br i1 %str.immortal122, label %str_ok124, label %str_gen_check123

str_stale114:                                     ; preds = %str_gen_check112
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok113

str_gen_check123:                                 ; preds = %str_ok113
  %arena.cur126 = call ptr @dva_arena_current()
  %tag.valid127 = call i1 @dva_arena_validate_tag(ptr %arena.cur126, i64 %str.tag121)
  br i1 %tag.valid127, label %str_ok124, label %str_stale125

str_ok124:                                        ; preds = %str_stale125, %str_gen_check123, %str_ok113
  %concat.rhs128 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %concat.sum.len129 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs109, i64 %concat.rhs120)
  %sum130 = extractvalue { i64, i1 } %concat.sum.len129, 0
  %ovf131 = extractvalue { i64, i1 } %concat.sum.len129, 1
  br i1 %ovf131, label %str_overflow_abort133, label %concat.sum.len132

str_stale125:                                     ; preds = %str_gen_check123
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok124

concat.sum.len132:                                ; preds = %str_overflow_abort133, %str_ok124
  %concat.tot.len134 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum130, i64 1)
  %sum135 = extractvalue { i64, i1 } %concat.tot.len134, 0
  %ovf136 = extractvalue { i64, i1 } %concat.tot.len134, 1
  br i1 %ovf136, label %str_overflow_abort138, label %concat.tot.len137

str_overflow_abort133:                            ; preds = %str_ok124
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len132

concat.tot.len137:                                ; preds = %str_overflow_abort138, %concat.sum.len132
  %arena.cur139 = call ptr @dva_arena_current()
  %concat.buf140 = call ptr @dva_arena_alloc(ptr %arena.cur139, i64 %sum135)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf140, ptr align 1 %concat.lhs118, i64 %concat.lhs109, i1 false)
  %concat.mid141 = getelementptr i8, ptr %concat.buf140, i64 %concat.lhs109
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid141, ptr align 1 %concat.rhs128, i64 %concat.rhs120, i1 false)
  %concat.nul142 = getelementptr i8, ptr %concat.buf140, i64 %sum130
  store i8 0, ptr %concat.nul142, align 1
  %arena.cur143 = call ptr @dva_arena_current()
  %concat.str144 = call ptr @dva_arena_alloc(ptr %arena.cur143, i64 16)
  %str.build.len.gep145 = getelementptr inbounds { i64, ptr }, ptr %concat.str144, i32 0, i32 0
  store i64 %sum130, ptr %str.build.len.gep145, align 8
  %str.build.data.gep146 = getelementptr inbounds { i64, ptr }, ptr %concat.str144, i32 0, i32 1
  store ptr %concat.buf140, ptr %str.build.data.gep146, align 8
  %var.load147 = load ptr, ptr %var.name, align 8
  %concat.lhs148 = getelementptr inbounds { i64, ptr }, ptr %concat.str144, i32 0, i32 0
  %concat.lhs149 = load i64, ptr %concat.lhs148, align 8
  %concat.lhs150 = and i64 %concat.lhs149, 281474976710655
  %str.tag151 = lshr i64 %concat.lhs149, 48
  %str.immortal152 = icmp eq i64 %str.tag151, 0
  br i1 %str.immortal152, label %str_ok154, label %str_gen_check153

str_overflow_abort138:                            ; preds = %concat.sum.len132
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len137

str_gen_check153:                                 ; preds = %concat.tot.len137
  %arena.cur156 = call ptr @dva_arena_current()
  %tag.valid157 = call i1 @dva_arena_validate_tag(ptr %arena.cur156, i64 %str.tag151)
  br i1 %tag.valid157, label %str_ok154, label %str_stale155

str_ok154:                                        ; preds = %str_stale155, %str_gen_check153, %concat.tot.len137
  %concat.lhs158 = getelementptr inbounds { i64, ptr }, ptr %concat.str144, i32 0, i32 1
  %concat.lhs159 = load ptr, ptr %concat.lhs158, align 8
  %concat.rhs160 = getelementptr inbounds { i64, ptr }, ptr %var.load147, i32 0, i32 0
  %concat.rhs161 = load i64, ptr %concat.rhs160, align 8
  %concat.rhs162 = and i64 %concat.rhs161, 281474976710655
  %str.tag163 = lshr i64 %concat.rhs161, 48
  %str.immortal164 = icmp eq i64 %str.tag163, 0
  br i1 %str.immortal164, label %str_ok166, label %str_gen_check165

str_stale155:                                     ; preds = %str_gen_check153
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok154

str_gen_check165:                                 ; preds = %str_ok154
  %arena.cur168 = call ptr @dva_arena_current()
  %tag.valid169 = call i1 @dva_arena_validate_tag(ptr %arena.cur168, i64 %str.tag163)
  br i1 %tag.valid169, label %str_ok166, label %str_stale167

str_ok166:                                        ; preds = %str_stale167, %str_gen_check165, %str_ok154
  %concat.rhs170 = getelementptr inbounds { i64, ptr }, ptr %var.load147, i32 0, i32 1
  %concat.rhs171 = load ptr, ptr %concat.rhs170, align 8
  %concat.sum.len172 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs150, i64 %concat.rhs162)
  %sum173 = extractvalue { i64, i1 } %concat.sum.len172, 0
  %ovf174 = extractvalue { i64, i1 } %concat.sum.len172, 1
  br i1 %ovf174, label %str_overflow_abort176, label %concat.sum.len175

str_stale167:                                     ; preds = %str_gen_check165
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok166

concat.sum.len175:                                ; preds = %str_overflow_abort176, %str_ok166
  %concat.tot.len177 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum173, i64 1)
  %sum178 = extractvalue { i64, i1 } %concat.tot.len177, 0
  %ovf179 = extractvalue { i64, i1 } %concat.tot.len177, 1
  br i1 %ovf179, label %str_overflow_abort181, label %concat.tot.len180

str_overflow_abort176:                            ; preds = %str_ok166
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len175

concat.tot.len180:                                ; preds = %str_overflow_abort181, %concat.sum.len175
  %arena.cur182 = call ptr @dva_arena_current()
  %concat.buf183 = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 %sum178)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf183, ptr align 1 %concat.lhs159, i64 %concat.lhs150, i1 false)
  %concat.mid184 = getelementptr i8, ptr %concat.buf183, i64 %concat.lhs150
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid184, ptr align 1 %concat.rhs171, i64 %concat.rhs162, i1 false)
  %concat.nul185 = getelementptr i8, ptr %concat.buf183, i64 %sum173
  store i8 0, ptr %concat.nul185, align 1
  %arena.cur186 = call ptr @dva_arena_current()
  %concat.str187 = call ptr @dva_arena_alloc(ptr %arena.cur186, i64 16)
  %str.build.len.gep188 = getelementptr inbounds { i64, ptr }, ptr %concat.str187, i32 0, i32 0
  store i64 %sum173, ptr %str.build.len.gep188, align 8
  %str.build.data.gep189 = getelementptr inbounds { i64, ptr }, ptr %concat.str187, i32 0, i32 1
  store ptr %concat.buf183, ptr %str.build.data.gep189, align 8
  %call.res190 = call ptr @"type_env::lookup_user_type_exact"(ptr %var.load103, ptr %concat.str187)
  br label %choice.exit100

str_overflow_abort181:                            ; preds = %concat.sum.len175
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len180
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
