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
@stale_addr_msg = internal unnamed_addr constant [51 x i8] c"E4011: stale Addr dereference after arena restore\0A\00"
@clo.const = internal constant { ptr, ptr } { ptr @"mem::copy", ptr null }
@"var.mem::copy" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"mem::move", ptr null }
@"var.mem::move" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"mem::zero", ptr null }
@"var.mem::zero" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"mem::set", ptr null }
@"var.mem::set" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"mem::align_forward", ptr null }
@"var.mem::align_forward" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"mem::is_aligned", ptr null }
@"var.mem::is_aligned" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"mem::arena", ptr null }
@"var.mem::arena" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"mem::arena_default", ptr null }
@"var.mem::arena_default" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"mem::alloc", ptr null }
@"var.mem::alloc" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"mem::reset", ptr null }
@"var.mem::reset" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"mem::destroy", ptr null }
@"var.mem::destroy" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"mem::stats", ptr null }
@"var.mem::stats" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"mem::with", ptr null }
@"var.mem::with" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"mem::pool", ptr null }
@"var.mem::pool" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"mem::pool_count", ptr null }
@"var.mem::pool_count" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"mem::pool_capacity", ptr null }
@"var.mem::pool_capacity" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"mem::pool_alloc", ptr null }
@"var.mem::pool_alloc" = global ptr null
@div_zero_msg = internal unnamed_addr constant [33 x i8] c"E4012: integer division by zero\0A\00"
@div_ovf_msg = internal unnamed_addr constant [56 x i8] c"E4013: signed integer division overflow (INT_MIN / -1)\0A\00"
@clo.const.17 = internal constant { ptr, ptr } { ptr @"mem::pool_free", ptr null }
@"var.mem::pool_free" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"mem::pool_destroy", ptr null }
@"var.mem::pool_destroy" = global ptr null
@clo.const.19 = internal constant { ptr, ptr } { ptr @"mem::pool_for_each", ptr null }
@"var.mem::pool_for_each" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_mem, ptr null }]

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

define internal void @__dva_global_init_mem() #1 {
entry:
  store ptr @clo.const, ptr @"var.mem::copy", align 8
  store ptr @clo.const.1, ptr @"var.mem::move", align 8
  store ptr @clo.const.2, ptr @"var.mem::zero", align 8
  store ptr @clo.const.3, ptr @"var.mem::set", align 8
  store ptr @clo.const.4, ptr @"var.mem::align_forward", align 8
  store ptr @clo.const.5, ptr @"var.mem::is_aligned", align 8
  store ptr @clo.const.6, ptr @"var.mem::arena", align 8
  store ptr @clo.const.7, ptr @"var.mem::arena_default", align 8
  store ptr @clo.const.8, ptr @"var.mem::alloc", align 8
  store ptr @clo.const.9, ptr @"var.mem::reset", align 8
  store ptr @clo.const.10, ptr @"var.mem::destroy", align 8
  store ptr @clo.const.11, ptr @"var.mem::stats", align 8
  store ptr @clo.const.12, ptr @"var.mem::with", align 8
  store ptr @clo.const.13, ptr @"var.mem::pool", align 8
  store ptr @clo.const.14, ptr @"var.mem::pool_count", align 8
  store ptr @clo.const.15, ptr @"var.mem::pool_capacity", align 8
  store ptr @clo.const.16, ptr @"var.mem::pool_alloc", align 8
  store ptr @clo.const.17, ptr @"var.mem::pool_free", align 8
  store ptr @clo.const.18, ptr @"var.mem::pool_destroy", align 8
  store ptr @clo.const.19, ptr @"var.mem::pool_for_each", align 8
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

define ptr @"mem::copy"(ptr %0, ptr %1, i64 %2) #1 {
entry:
  %var.bytes = alloca i64, align 8
  %var.src = alloca ptr, align 8
  %var.dst = alloca ptr, align 8
  store ptr %0, ptr %var.dst, align 8
  store ptr %1, ptr %var.src, align 8
  store i64 %2, ptr %var.bytes, align 8
  %var.load = load ptr, ptr %var.dst, align 8
  %var.load1 = load ptr, ptr %var.src, align 8
  %var.load2 = load i64, ptr %var.bytes, align 8
  %raw.int = ptrtoint ptr %var.load to i64
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
  %raw.int3 = ptrtoint ptr %var.load1 to i64
  %raw.clean.int4 = and i64 %raw.int3, 281474976710655
  %raw.clean.ptr5 = inttoptr i64 %raw.clean.int4 to ptr
  %addr.tag6 = lshr i64 %raw.int3, 48
  %addr.immortal7 = icmp eq i64 %addr.tag6, 0
  br i1 %addr.immortal7, label %addr_ok9, label %addr_gen_check8

addr_stale:                                       ; preds = %addr_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check8:                                  ; preds = %addr_ok
  %arena.cur11 = call ptr @dva_arena_current()
  %tag.valid12 = call i1 @dva_arena_validate_tag(ptr %arena.cur11, i64 %addr.tag6)
  br i1 %tag.valid12, label %addr_ok9, label %addr_stale10

addr_ok9:                                         ; preds = %addr_stale10, %addr_gen_check8, %addr_ok
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr5, i64 %var.load2, i1 false)
  ret ptr %raw.clean.ptr

addr_stale10:                                     ; preds = %addr_gen_check8
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok9
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define ptr @"mem::move"(ptr %0, ptr %1, i64 %2) #1 {
entry:
  %var.bytes = alloca i64, align 8
  %var.src = alloca ptr, align 8
  %var.dst = alloca ptr, align 8
  store ptr %0, ptr %var.dst, align 8
  store ptr %1, ptr %var.src, align 8
  store i64 %2, ptr %var.bytes, align 8
  %var.load = load ptr, ptr %var.dst, align 8
  %var.load1 = load ptr, ptr %var.src, align 8
  %var.load2 = load i64, ptr %var.bytes, align 8
  %raw.int = ptrtoint ptr %var.load to i64
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
  %raw.int3 = ptrtoint ptr %var.load1 to i64
  %raw.clean.int4 = and i64 %raw.int3, 281474976710655
  %raw.clean.ptr5 = inttoptr i64 %raw.clean.int4 to ptr
  %addr.tag6 = lshr i64 %raw.int3, 48
  %addr.immortal7 = icmp eq i64 %addr.tag6, 0
  br i1 %addr.immortal7, label %addr_ok9, label %addr_gen_check8

addr_stale:                                       ; preds = %addr_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check8:                                  ; preds = %addr_ok
  %arena.cur11 = call ptr @dva_arena_current()
  %tag.valid12 = call i1 @dva_arena_validate_tag(ptr %arena.cur11, i64 %addr.tag6)
  br i1 %tag.valid12, label %addr_ok9, label %addr_stale10

addr_ok9:                                         ; preds = %addr_stale10, %addr_gen_check8, %addr_ok
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr5, i64 %var.load2, i1 false)
  ret ptr %raw.clean.ptr

addr_stale10:                                     ; preds = %addr_gen_check8
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok9
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

define ptr @"mem::zero"(ptr %0, i64 %1) #1 {
entry:
  %var.bytes = alloca i64, align 8
  %var.dst = alloca ptr, align 8
  store ptr %0, ptr %var.dst, align 8
  store i64 %1, ptr %var.bytes, align 8
  %var.load = load ptr, ptr %var.dst, align 8
  %var.load1 = load i64, ptr %var.bytes, align 8
  %raw.int = ptrtoint ptr %var.load to i64
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
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr, i8 0, i64 %var.load1, i1 false)
  ret ptr %raw.clean.ptr

addr_stale:                                       ; preds = %addr_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

define ptr @"mem::set"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.bytes = alloca i64, align 8
  %var.val = alloca i64, align 8
  %var.dst = alloca ptr, align 8
  store ptr %0, ptr %var.dst, align 8
  store i64 %1, ptr %var.val, align 8
  store i64 %2, ptr %var.bytes, align 8
  %var.load = load ptr, ptr %var.dst, align 8
  %var.load1 = load i64, ptr %var.val, align 8
  %var.load2 = load i64, ptr %var.bytes, align 8
  %raw.int = ptrtoint ptr %var.load to i64
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
  %coerce.trunc = trunc i64 %var.load1 to i8
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr, i8 %coerce.trunc, i64 %var.load2, i1 false)
  ret ptr %raw.clean.ptr

addr_stale:                                       ; preds = %addr_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok
}

define ptr @"mem::align_forward"(ptr %0, i64 %1) #1 {
entry:
  %var.a = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.align = alloca i64, align 8
  %var.addr = alloca ptr, align 8
  store ptr %0, ptr %var.addr, align 8
  store i64 %1, ptr %var.align, align 8
  %var.load = load ptr, ptr %var.addr, align 8
  %coerce.ptr2int = ptrtoint ptr %var.load to i64
  store i64 %coerce.ptr2int, ptr %var.i, align 8
  %var.load1 = load i64, ptr %var.align, align 8
  %subtmp = sub i64 %var.load1, 1
  store i64 %subtmp, ptr %var.a, align 8
  %var.load2 = load i64, ptr %var.i, align 8
  %var.load3 = load i64, ptr %var.a, align 8
  %addtmp = add i64 %var.load2, %var.load3
  %var.load4 = load i64, ptr %var.a, align 8
  %bitnottmp = xor i64 %var.load4, -1
  %bandtmp = and i64 %addtmp, %bitnottmp
  %cast.int2ptr = inttoptr i64 %bandtmp to ptr
  ret ptr %cast.int2ptr
}

define i1 @"mem::is_aligned"(ptr %0, i64 %1) #1 {
entry:
  %var.a = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.align = alloca i64, align 8
  %var.addr = alloca ptr, align 8
  store ptr %0, ptr %var.addr, align 8
  store i64 %1, ptr %var.align, align 8
  %var.load = load ptr, ptr %var.addr, align 8
  %coerce.ptr2int = ptrtoint ptr %var.load to i64
  store i64 %coerce.ptr2int, ptr %var.i, align 8
  %var.load1 = load i64, ptr %var.align, align 8
  %subtmp = sub i64 %var.load1, 1
  store i64 %subtmp, ptr %var.a, align 8
  %var.load2 = load i64, ptr %var.i, align 8
  %var.load3 = load i64, ptr %var.a, align 8
  %bandtmp = and i64 %var.load2, %var.load3
  %cmptmp = icmp eq i64 %bandtmp, 0
  ret i1 %cmptmp
}

define ptr @"mem::arena"(i64 %0) #1 {
entry:
  %var.raw = alloca ptr, align 8
  %var.sz = alloca i64, align 8
  %var.chunk_size = alloca i64, align 8
  store i64 %0, ptr %var.chunk_size, align 8
  %var.load = load i64, ptr %var.chunk_size, align 8
  %cmptmp = icmp sle i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.chunk_size, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ 67108864, %choice.then ], [ %var.load1, %choice.else ]
  store i64 %choice.res, ptr %var.sz, align 8
  %call.res = call ptr @malloc(i64 131632)
  store ptr %call.res, ptr %var.raw, align 8
  %var.load2 = load ptr, ptr %var.raw, align 8
  %addr.ffi.int = ptrtoint ptr %var.load2 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load3 = load i64, ptr %var.sz, align 8
  call void @dva_arena_init(ptr %addr.ffi.clean, i64 %var.load3)
  %var.load4 = load ptr, ptr %var.raw, align 8
  %var.load5 = load i64, ptr %var.sz, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load4, ptr %rec.fld, align 8
  %rec.fld6 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load5, ptr %rec.fld6, align 8
  ret ptr %rec.alloc
}

define ptr @"mem::arena_default"() #1 {
entry:
  %call.res = call ptr @"mem::arena"(i64 67108864)
  ret ptr %call.res
}

define ptr @"mem::alloc"(ptr %0, i64 %1) #1 {
entry:
  %var.size = alloca i64, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store i64 %1, ptr %var.size, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load1 = load i64, ptr %var.size, align 8
  %call.res = call ptr @dva_arena_alloc(ptr %addr.ffi.clean, i64 %var.load1)
  ret ptr %call.res
}

define void @"mem::reset"(ptr %0) #1 {
entry:
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  call void @dva_arena_restore(ptr %addr.ffi.clean, i64 0)
  ret void
}

define void @"mem::destroy"(ptr %0) #1 {
entry:
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  call void @dva_arena_destroy(ptr %addr.ffi.clean)
  %var.load1 = load ptr, ptr %var.a, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %addr.ffi.int4 = ptrtoint ptr %fld.load3 to i64
  %addr.ffi.masked5 = and i64 %addr.ffi.int4, 281474976710655
  %addr.ffi.clean6 = inttoptr i64 %addr.ffi.masked5 to ptr
  call void @free(ptr %addr.ffi.clean6)
  ret void
}

define ptr @"mem::stats"(ptr %0) #1 {
entry:
  %var.allocated = alloca i64, align 8
  %var.off = alloca i64, align 8
  %var.num_chunks = alloca i64, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %ptr.int.l = ptrtoint ptr %fld.load to i64
  %addtmp = add i64 %ptr.int.l, 8
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
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  store i64 %raw.load, ptr %var.num_chunks, align 8
  %var.load1 = load ptr, ptr %var.a, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %ptr.int.l4 = ptrtoint ptr %fld.load3 to i64
  %addtmp5 = add i64 %ptr.int.l4, 16
  %ptr.res6 = inttoptr i64 %addtmp5 to ptr
  %raw.int7 = ptrtoint ptr %ptr.res6 to i64
  %raw.clean.int8 = and i64 %raw.int7, 281474976710655
  %raw.clean.ptr9 = inttoptr i64 %raw.clean.int8 to ptr
  %addr.tag10 = lshr i64 %raw.int7, 48
  %addr.immortal11 = icmp eq i64 %addr.tag10, 0
  br i1 %addr.immortal11, label %addr_ok13, label %addr_gen_check12

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check12:                                 ; preds = %addr_ok
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %addr.tag10)
  br i1 %tag.valid16, label %addr_ok13, label %addr_stale14

addr_ok13:                                        ; preds = %addr_stale14, %addr_gen_check12, %addr_ok
  %raw.load17 = load volatile i64, ptr %raw.clean.ptr9, align 8
  store i64 %raw.load17, ptr %var.off, align 8
  %var.load18 = load i64, ptr %var.num_chunks, align 8
  %cmptmp = icmp sgt i64 %var.load18, 1
  br i1 %cmptmp, label %choice.then, label %choice.else

addr_stale14:                                     ; preds = %addr_gen_check12
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok13

choice.then:                                      ; preds = %addr_ok13
  %var.load19 = load i64, ptr %var.num_chunks, align 8
  %subtmp = sub i64 %var.load19, 1
  %var.load20 = load ptr, ptr %var.a, align 8
  %fld.gep21 = getelementptr inbounds { ptr, i64 }, ptr %var.load20, i32 0, i32 1
  %fld.load22 = load i64, ptr %fld.gep21, align 8
  %multmp = mul i64 %subtmp, %fld.load22
  %var.load23 = load i64, ptr %var.off, align 8
  %addtmp24 = add i64 %multmp, %var.load23
  br label %choice.exit

choice.else:                                      ; preds = %addr_ok13
  %var.load25 = load i64, ptr %var.off, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %addtmp24, %choice.then ], [ %var.load25, %choice.else ]
  store i64 %choice.res, ptr %var.allocated, align 8
  %var.load26 = load i64, ptr %var.allocated, align 8
  %var.load27 = load i64, ptr %var.num_chunks, align 8
  %var.load28 = load ptr, ptr %var.a, align 8
  %fld.gep29 = getelementptr inbounds { ptr, i64 }, ptr %var.load28, i32 0, i32 1
  %fld.load30 = load i64, ptr %fld.gep29, align 8
  %arena.cur31 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load26, ptr %rec.fld, align 8
  %rec.fld32 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load27, ptr %rec.fld32, align 8
  %rec.fld33 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %fld.load30, ptr %rec.fld33, align 8
  ret ptr %rec.alloc
}

define void @"mem::with"(ptr %0, ptr %1) #1 {
entry:
  %var.prev = alloca ptr, align 8
  %var.action = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.action, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call ptr @dva_arena_set_current(ptr %addr.ffi.clean)
  store ptr %call.res, ptr %var.prev, align 8
  %clo.load = load ptr, ptr %var.action, align 8
  %clo.fn.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.load, i32 0, i32 0
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.load, i32 0, i32 1
  %clo.fn.load = load ptr, ptr %clo.fn.gep, align 8
  %clo.env.load = load ptr, ptr %clo.env.gep, align 8
  %clo.is_cap = icmp ne ptr %clo.env.load, null
  br i1 %clo.is_cap, label %clo.cap, label %clo.plain

clo.cap:                                          ; preds = %entry
  call void %clo.fn.load(ptr %clo.env.load)
  br label %clo.merge

clo.plain:                                        ; preds = %entry
  call void %clo.fn.load()
  br label %clo.merge

clo.merge:                                        ; preds = %clo.plain, %clo.cap
  %var.load1 = load ptr, ptr %var.prev, align 8
  %addr.ffi.int2 = ptrtoint ptr %var.load1 to i64
  %addr.ffi.masked3 = and i64 %addr.ffi.int2, 281474976710655
  %addr.ffi.clean4 = inttoptr i64 %addr.ffi.masked3 to ptr
  %call.res5 = call ptr @dva_arena_set_current(ptr %addr.ffi.clean4)
  ret void
}

define ptr @"mem::pool"(i64 %0, i64 %1) #1 {
entry:
  %var.st_cap = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.17 = alloca i64, align 8
  %loop.idx.17 = alloca i64, align 8
  %var.act = alloca ptr, align 8
  %var.st = alloca ptr, align 8
  %var.fs = alloca ptr, align 8
  %var.buf = alloca ptr, align 8
  %var.total = alloca i64, align 8
  %var.act_sz = alloca i64, align 8
  %var.st_sz = alloca i64, align 8
  %var.fs_sz = alloca i64, align 8
  %var.buf_sz = alloca i64, align 8
  %var.cap = alloca i64, align 8
  %var.es = alloca i64, align 8
  %var.capacity = alloca i64, align 8
  %var.elem_size = alloca i64, align 8
  store i64 %0, ptr %var.elem_size, align 8
  store i64 %1, ptr %var.capacity, align 8
  %var.load = load i64, ptr %var.elem_size, align 8
  %cmptmp = icmp sle i64 %var.load, 8
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.elem_size, align 8
  %addtmp = add i64 %var.load1, 7
  %bandtmp = and i64 %addtmp, -8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ 8, %choice.then ], [ %bandtmp, %choice.else ]
  store i64 %choice.res, ptr %var.es, align 8
  %var.load2 = load i64, ptr %var.capacity, align 8
  %cmptmp3 = icmp sle i64 %var.load2, 0
  br i1 %cmptmp3, label %choice.then4, label %choice.else5

choice.then4:                                     ; preds = %choice.exit
  br label %choice.exit6

choice.else5:                                     ; preds = %choice.exit
  %var.load7 = load i64, ptr %var.capacity, align 8
  br label %choice.exit6

choice.exit6:                                     ; preds = %choice.else5, %choice.then4
  %choice.res8 = phi i64 [ 1, %choice.then4 ], [ %var.load7, %choice.else5 ]
  store i64 %choice.res8, ptr %var.cap, align 8
  %var.load9 = load i64, ptr %var.cap, align 8
  %var.load10 = load i64, ptr %var.es, align 8
  %multmp = mul i64 %var.load9, %var.load10
  store i64 %multmp, ptr %var.buf_sz, align 8
  %var.load11 = load i64, ptr %var.cap, align 8
  %multmp12 = mul i64 %var.load11, 8
  store i64 %multmp12, ptr %var.fs_sz, align 8
  store i64 16, ptr %var.st_sz, align 8
  %var.load13 = load i64, ptr %var.cap, align 8
  store i64 %var.load13, ptr %var.act_sz, align 8
  %var.load14 = load i64, ptr %var.buf_sz, align 8
  %var.load15 = load i64, ptr %var.fs_sz, align 8
  %addtmp16 = add i64 %var.load14, %var.load15
  %var.load17 = load i64, ptr %var.st_sz, align 8
  %addtmp18 = add i64 %addtmp16, %var.load17
  %var.load19 = load i64, ptr %var.act_sz, align 8
  %addtmp20 = add i64 %addtmp18, %var.load19
  store i64 %addtmp20, ptr %var.total, align 8
  %var.load21 = load i64, ptr %var.total, align 8
  %call.res = call ptr @malloc(i64 %var.load21)
  store ptr %call.res, ptr %var.buf, align 8
  %var.load22 = load ptr, ptr %var.buf, align 8
  %var.load23 = load i64, ptr %var.buf_sz, align 8
  %ptr.int.l = ptrtoint ptr %var.load22 to i64
  %addtmp24 = add i64 %ptr.int.l, %var.load23
  %ptr.res = inttoptr i64 %addtmp24 to ptr
  store ptr %ptr.res, ptr %var.fs, align 8
  %var.load25 = load ptr, ptr %var.fs, align 8
  %var.load26 = load i64, ptr %var.fs_sz, align 8
  %ptr.int.l27 = ptrtoint ptr %var.load25 to i64
  %addtmp28 = add i64 %ptr.int.l27, %var.load26
  %ptr.res29 = inttoptr i64 %addtmp28 to ptr
  store ptr %ptr.res29, ptr %var.st, align 8
  %var.load30 = load ptr, ptr %var.st, align 8
  %var.load31 = load i64, ptr %var.st_sz, align 8
  %ptr.int.l32 = ptrtoint ptr %var.load30 to i64
  %addtmp33 = add i64 %ptr.int.l32, %var.load31
  %ptr.res34 = inttoptr i64 %addtmp33 to ptr
  store ptr %ptr.res34, ptr %var.act, align 8
  %var.load35 = load ptr, ptr %var.act, align 8
  %var.load36 = load i64, ptr %var.act_sz, align 8
  %raw.int = ptrtoint ptr %var.load35 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

addr_gen_check:                                   ; preds = %choice.exit6
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.exit6
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr, i8 0, i64 %var.load36, i1 false)
  %var.load37 = load i64, ptr %var.cap, align 8
  store i64 0, ptr %loop.idx.17, align 8
  br label %loop.header.17

addr_stale:                                       ; preds = %addr_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

loop.header.17:                                   ; preds = %loop.latch.17, %addr_ok
  %counter.load = load i64, ptr %loop.idx.17, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load37
  br i1 %loop.cond, label %loop.body.17, label %loop.exit.nat.17

loop.body.17:                                     ; preds = %loop.header.17
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.17, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load38 = load ptr, ptr %var.fs, align 8
  %var.load39 = load i64, ptr %var.i, align 8
  %multmp40 = mul i64 %var.load39, 8
  %ptr.int.l41 = ptrtoint ptr %var.load38 to i64
  %addtmp42 = add i64 %ptr.int.l41, %multmp40
  %ptr.res43 = inttoptr i64 %addtmp42 to ptr
  %var.load44 = load i64, ptr %var.i, align 8
  %raw.int45 = ptrtoint ptr %ptr.res43 to i64
  %raw.clean.int46 = and i64 %raw.int45, 281474976710655
  %raw.clean.ptr47 = inttoptr i64 %raw.clean.int46 to ptr
  %addr.tag48 = lshr i64 %raw.int45, 48
  %addr.immortal49 = icmp eq i64 %addr.tag48, 0
  br i1 %addr.immortal49, label %addr_ok51, label %addr_gen_check50

loop.exit.nat.17:                                 ; preds = %loop.header.17
  br label %loop.exit.17

loop.latch.17:                                    ; preds = %addr_ok51
  %step.val = load i64, ptr %loop.step.17, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.17, align 8
  br label %loop.header.17

loop.exit.17:                                     ; preds = %loop.exit.nat.17
  %var.load55 = load i64, ptr %var.cap, align 8
  store i64 %var.load55, ptr %var.st_cap, align 8
  %var.load56 = load ptr, ptr %var.st, align 8
  %var.load57 = load i64, ptr %var.st_cap, align 8
  %raw.int58 = ptrtoint ptr %var.load56 to i64
  %raw.clean.int59 = and i64 %raw.int58, 281474976710655
  %raw.clean.ptr60 = inttoptr i64 %raw.clean.int59 to ptr
  %addr.tag61 = lshr i64 %raw.int58, 48
  %addr.immortal62 = icmp eq i64 %addr.tag61, 0
  br i1 %addr.immortal62, label %addr_ok64, label %addr_gen_check63

addr_gen_check50:                                 ; preds = %loop.body.17
  %arena.cur53 = call ptr @dva_arena_current()
  %tag.valid54 = call i1 @dva_arena_validate_tag(ptr %arena.cur53, i64 %addr.tag48)
  br i1 %tag.valid54, label %addr_ok51, label %addr_stale52

addr_ok51:                                        ; preds = %addr_stale52, %addr_gen_check50, %loop.body.17
  store i64 %var.load44, ptr %raw.clean.ptr47, align 8
  br label %loop.latch.17

addr_stale52:                                     ; preds = %addr_gen_check50
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok51

addr_gen_check63:                                 ; preds = %loop.exit.17
  %arena.cur66 = call ptr @dva_arena_current()
  %tag.valid67 = call i1 @dva_arena_validate_tag(ptr %arena.cur66, i64 %addr.tag61)
  br i1 %tag.valid67, label %addr_ok64, label %addr_stale65

addr_ok64:                                        ; preds = %addr_stale65, %addr_gen_check63, %loop.exit.17
  store i64 %var.load57, ptr %raw.clean.ptr60, align 8
  %var.load68 = load ptr, ptr %var.st, align 8
  %ptr.int.l69 = ptrtoint ptr %var.load68 to i64
  %addtmp70 = add i64 %ptr.int.l69, 8
  %ptr.res71 = inttoptr i64 %addtmp70 to ptr
  %raw.int72 = ptrtoint ptr %ptr.res71 to i64
  %raw.clean.int73 = and i64 %raw.int72, 281474976710655
  %raw.clean.ptr74 = inttoptr i64 %raw.clean.int73 to ptr
  %addr.tag75 = lshr i64 %raw.int72, 48
  %addr.immortal76 = icmp eq i64 %addr.tag75, 0
  br i1 %addr.immortal76, label %addr_ok78, label %addr_gen_check77

addr_stale65:                                     ; preds = %addr_gen_check63
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok64

addr_gen_check77:                                 ; preds = %addr_ok64
  %arena.cur80 = call ptr @dva_arena_current()
  %tag.valid81 = call i1 @dva_arena_validate_tag(ptr %arena.cur80, i64 %addr.tag75)
  br i1 %tag.valid81, label %addr_ok78, label %addr_stale79

addr_ok78:                                        ; preds = %addr_stale79, %addr_gen_check77, %addr_ok64
  store i64 0, ptr %raw.clean.ptr74, align 8
  %var.load82 = load ptr, ptr %var.buf, align 8
  %var.load83 = load ptr, ptr %var.fs, align 8
  %var.load84 = load ptr, ptr %var.act, align 8
  %var.load85 = load ptr, ptr %var.st, align 8
  %var.load86 = load i64, ptr %var.es, align 8
  %var.load87 = load i64, ptr %var.cap, align 8
  %arena.cur88 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load82, ptr %rec.fld, align 8
  %rec.fld89 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load83, ptr %rec.fld89, align 8
  %rec.fld90 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load84, ptr %rec.fld90, align 8
  %rec.fld91 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store ptr %var.load85, ptr %rec.fld91, align 8
  %rec.fld92 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %var.load86, ptr %rec.fld92, align 8
  %rec.fld93 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %var.load87, ptr %rec.fld93, align 8
  ret ptr %rec.alloc

addr_stale79:                                     ; preds = %addr_gen_check77
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok78
}

define i64 @"mem::pool_count"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load, i32 0, i32 3
  %fld.load = load ptr, ptr %fld.gep, align 8
  %ptr.int.l = ptrtoint ptr %fld.load to i64
  %addtmp = add i64 %ptr.int.l, 8
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
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  ret i64 %raw.load

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok
}

define i64 @"mem::pool_capacity"(ptr %0) #1 {
entry:
  %var._acc_1 = alloca ptr, align 8
  store ptr %0, ptr %var._acc_1, align 8
  %var.load = load ptr, ptr %var._acc_1, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load, i32 0, i32 5
  %fld.load = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load
}

define { i1, i64 } @"mem::pool_alloc"(ptr %0) #1 {
entry:
  %var.cnt = alloca i64, align 8
  %var.idx = alloca i64, align 8
  %var.top_next = alloca i64, align 8
  %var.top = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load, i32 0, i32 3
  %fld.load = load ptr, ptr %fld.gep, align 8
  %raw.int = ptrtoint ptr %fld.load to i64
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
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  store i64 %raw.load, ptr %var.top, align 8
  %var.load1 = load i64, ptr %var.top, align 8
  %cmptmp = icmp eq i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

choice.then:                                      ; preds = %addr_ok
  ret { i1, i64 } zeroinitializer

choice.exit:                                      ; preds = %ret.dead, %addr_ok
  %var.load2 = load i64, ptr %var.top, align 8
  %subtmp = sub i64 %var.load2, 1
  store i64 %subtmp, ptr %var.top_next, align 8
  %var.load3 = load ptr, ptr %var.p, align 8
  %fld.gep4 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load3, i32 0, i32 3
  %fld.load5 = load ptr, ptr %fld.gep4, align 8
  %var.load6 = load i64, ptr %var.top_next, align 8
  %raw.int7 = ptrtoint ptr %fld.load5 to i64
  %raw.clean.int8 = and i64 %raw.int7, 281474976710655
  %raw.clean.ptr9 = inttoptr i64 %raw.clean.int8 to ptr
  %addr.tag10 = lshr i64 %raw.int7, 48
  %addr.immortal11 = icmp eq i64 %addr.tag10, 0
  br i1 %addr.immortal11, label %addr_ok13, label %addr_gen_check12

ret.dead:                                         ; No predecessors!
  br label %choice.exit

addr_gen_check12:                                 ; preds = %choice.exit
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %addr.tag10)
  br i1 %tag.valid16, label %addr_ok13, label %addr_stale14

addr_ok13:                                        ; preds = %addr_stale14, %addr_gen_check12, %choice.exit
  store i64 %var.load6, ptr %raw.clean.ptr9, align 8
  %var.load17 = load ptr, ptr %var.p, align 8
  %fld.gep18 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load17, i32 0, i32 1
  %fld.load19 = load ptr, ptr %fld.gep18, align 8
  %var.load20 = load i64, ptr %var.top_next, align 8
  %multmp = mul i64 %var.load20, 8
  %ptr.int.l = ptrtoint ptr %fld.load19 to i64
  %addtmp = add i64 %ptr.int.l, %multmp
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int21 = ptrtoint ptr %ptr.res to i64
  %raw.clean.int22 = and i64 %raw.int21, 281474976710655
  %raw.clean.ptr23 = inttoptr i64 %raw.clean.int22 to ptr
  %addr.tag24 = lshr i64 %raw.int21, 48
  %addr.immortal25 = icmp eq i64 %addr.tag24, 0
  br i1 %addr.immortal25, label %addr_ok27, label %addr_gen_check26

addr_stale14:                                     ; preds = %addr_gen_check12
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok13

addr_gen_check26:                                 ; preds = %addr_ok13
  %arena.cur29 = call ptr @dva_arena_current()
  %tag.valid30 = call i1 @dva_arena_validate_tag(ptr %arena.cur29, i64 %addr.tag24)
  br i1 %tag.valid30, label %addr_ok27, label %addr_stale28

addr_ok27:                                        ; preds = %addr_stale28, %addr_gen_check26, %addr_ok13
  %raw.load31 = load volatile i64, ptr %raw.clean.ptr23, align 8
  store i64 %raw.load31, ptr %var.idx, align 8
  %var.load32 = load ptr, ptr %var.p, align 8
  %fld.gep33 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load32, i32 0, i32 2
  %fld.load34 = load ptr, ptr %fld.gep33, align 8
  %var.load35 = load i64, ptr %var.idx, align 8
  %ptr.int.l36 = ptrtoint ptr %fld.load34 to i64
  %addtmp37 = add i64 %ptr.int.l36, %var.load35
  %ptr.res38 = inttoptr i64 %addtmp37 to ptr
  %raw.int39 = ptrtoint ptr %ptr.res38 to i64
  %raw.clean.int40 = and i64 %raw.int39, 281474976710655
  %raw.clean.ptr41 = inttoptr i64 %raw.clean.int40 to ptr
  %addr.tag42 = lshr i64 %raw.int39, 48
  %addr.immortal43 = icmp eq i64 %addr.tag42, 0
  br i1 %addr.immortal43, label %addr_ok45, label %addr_gen_check44

addr_stale28:                                     ; preds = %addr_gen_check26
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok27

addr_gen_check44:                                 ; preds = %addr_ok27
  %arena.cur47 = call ptr @dva_arena_current()
  %tag.valid48 = call i1 @dva_arena_validate_tag(ptr %arena.cur47, i64 %addr.tag42)
  br i1 %tag.valid48, label %addr_ok45, label %addr_stale46

addr_ok45:                                        ; preds = %addr_stale46, %addr_gen_check44, %addr_ok27
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr41, i8 1, i64 1, i1 false)
  %var.load49 = load ptr, ptr %var.p, align 8
  %fld.gep50 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load49, i32 0, i32 3
  %fld.load51 = load ptr, ptr %fld.gep50, align 8
  %ptr.int.l52 = ptrtoint ptr %fld.load51 to i64
  %addtmp53 = add i64 %ptr.int.l52, 8
  %ptr.res54 = inttoptr i64 %addtmp53 to ptr
  %raw.int55 = ptrtoint ptr %ptr.res54 to i64
  %raw.clean.int56 = and i64 %raw.int55, 281474976710655
  %raw.clean.ptr57 = inttoptr i64 %raw.clean.int56 to ptr
  %addr.tag58 = lshr i64 %raw.int55, 48
  %addr.immortal59 = icmp eq i64 %addr.tag58, 0
  br i1 %addr.immortal59, label %addr_ok61, label %addr_gen_check60

addr_stale46:                                     ; preds = %addr_gen_check44
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok45

addr_gen_check60:                                 ; preds = %addr_ok45
  %arena.cur63 = call ptr @dva_arena_current()
  %tag.valid64 = call i1 @dva_arena_validate_tag(ptr %arena.cur63, i64 %addr.tag58)
  br i1 %tag.valid64, label %addr_ok61, label %addr_stale62

addr_ok61:                                        ; preds = %addr_stale62, %addr_gen_check60, %addr_ok45
  %raw.load65 = load volatile i64, ptr %raw.clean.ptr57, align 8
  store i64 %raw.load65, ptr %var.cnt, align 8
  %var.load66 = load ptr, ptr %var.p, align 8
  %fld.gep67 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load66, i32 0, i32 3
  %fld.load68 = load ptr, ptr %fld.gep67, align 8
  %ptr.int.l69 = ptrtoint ptr %fld.load68 to i64
  %addtmp70 = add i64 %ptr.int.l69, 8
  %ptr.res71 = inttoptr i64 %addtmp70 to ptr
  %var.load72 = load i64, ptr %var.cnt, align 8
  %addtmp73 = add i64 %var.load72, 1
  %raw.int74 = ptrtoint ptr %ptr.res71 to i64
  %raw.clean.int75 = and i64 %raw.int74, 281474976710655
  %raw.clean.ptr76 = inttoptr i64 %raw.clean.int75 to ptr
  %addr.tag77 = lshr i64 %raw.int74, 48
  %addr.immortal78 = icmp eq i64 %addr.tag77, 0
  br i1 %addr.immortal78, label %addr_ok80, label %addr_gen_check79

addr_stale62:                                     ; preds = %addr_gen_check60
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok61

addr_gen_check79:                                 ; preds = %addr_ok61
  %arena.cur82 = call ptr @dva_arena_current()
  %tag.valid83 = call i1 @dva_arena_validate_tag(ptr %arena.cur82, i64 %addr.tag77)
  br i1 %tag.valid83, label %addr_ok80, label %addr_stale81

addr_ok80:                                        ; preds = %addr_stale81, %addr_gen_check79, %addr_ok61
  store i64 %addtmp73, ptr %raw.clean.ptr76, align 8
  %var.load84 = load ptr, ptr %var.p, align 8
  %fld.gep85 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load84, i32 0, i32 0
  %fld.load86 = load ptr, ptr %fld.gep85, align 8
  %var.load87 = load i64, ptr %var.idx, align 8
  %var.load88 = load ptr, ptr %var.p, align 8
  %fld.gep89 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load88, i32 0, i32 4
  %fld.load90 = load i64, ptr %fld.gep89, align 8
  %multmp91 = mul i64 %var.load87, %fld.load90
  %ptr.int.l92 = ptrtoint ptr %fld.load86 to i64
  %addtmp93 = add i64 %ptr.int.l92, %multmp91
  %ptr.res94 = inttoptr i64 %addtmp93 to ptr
  %p.to.i64 = ptrtoint ptr %ptr.res94 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay

addr_stale81:                                     ; preds = %addr_gen_check79
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok80
}

define i1 @"mem::pool_free"(ptr %0, ptr %1) #1 {
entry:
  %var.cnt = alloca i64, align 8
  %var.top = alloca i64, align 8
  %var.is_act = alloca i8, align 1
  %var.idx = alloca i64, align 8
  %var.off = alloca i64, align 8
  %var.addr = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store ptr %1, ptr %var.addr, align 8
  %var.load = load ptr, ptr %var.addr, align 8
  %coerce.ptr2int = ptrtoint ptr %var.load to i64
  %var.load1 = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %coerce.ptr2int2 = ptrtoint ptr %fld.load to i64
  %subtmp = sub i64 %coerce.ptr2int, %coerce.ptr2int2
  store i64 %subtmp, ptr %var.off, align 8
  %var.load3 = load i64, ptr %var.off, align 8
  %cmptmp = icmp sge i64 %var.load3, 0
  br i1 %cmptmp, label %and.18.then, label %and.18.else

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  %nottmp = xor i1 %choice.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit11

choice.case:                                      ; preds = %and.18.exit
  br label %choice.exit

choice.next:                                      ; preds = %and.18.exit
  br label %choice.exit

and.18.then:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.p, align 8
  %fld.gep5 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load4, i32 0, i32 5
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %var.load7 = load ptr, ptr %var.p, align 8
  %fld.gep8 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load7, i32 0, i32 4
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %multmp = mul i64 %fld.load6, %fld.load9
  %cmptmp10 = icmp slt i64 %var.load3, %multmp
  br label %and.18.exit

and.18.else:                                      ; preds = %entry
  br label %and.18.exit

and.18.exit:                                      ; preds = %and.18.else, %and.18.then
  %and.18.phi = phi i1 [ %cmptmp10, %and.18.then ], [ %cmptmp, %and.18.else ]
  br i1 %and.18.phi, label %choice.case, label %choice.next

choice.then:                                      ; preds = %choice.exit
  ret i1 false

choice.exit11:                                    ; preds = %ret.dead, %choice.exit
  %var.load12 = load i64, ptr %var.off, align 8
  %var.load13 = load ptr, ptr %var.p, align 8
  %fld.gep14 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load13, i32 0, i32 4
  %fld.load15 = load i64, ptr %fld.gep14, align 8
  %div.is.zero = icmp eq i64 %fld.load15, 0
  br i1 %div.is.zero, label %div.zero_abort, label %div.not_zero

ret.dead:                                         ; No predecessors!
  br label %choice.exit11

div.not_zero:                                     ; preds = %div.zero_abort, %choice.exit11
  %div.is.min = icmp eq i64 %var.load12, -9223372036854775808
  %div.is.negone = icmp eq i64 %fld.load15, -1
  %div.is.ovf = and i1 %div.is.min, %div.is.negone
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.exit11
  %2 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %divtmp = sdiv i64 %var.load12, %fld.load15
  store i64 %divtmp, ptr %var.idx, align 8
  %var.load16 = load i64, ptr %var.off, align 8
  %var.load17 = load ptr, ptr %var.p, align 8
  %fld.gep18 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load17, i32 0, i32 4
  %fld.load19 = load i64, ptr %fld.gep18, align 8
  %div.is.zero20 = icmp eq i64 %fld.load19, 0
  br i1 %div.is.zero20, label %div.zero_abort22, label %div.not_zero21

div.ovf_abort:                                    ; preds = %div.not_zero
  %3 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

div.not_zero21:                                   ; preds = %div.zero_abort22, %div.ok
  %div.is.min23 = icmp eq i64 %var.load16, -9223372036854775808
  %div.is.negone24 = icmp eq i64 %fld.load19, -1
  %div.is.ovf25 = and i1 %div.is.min23, %div.is.negone24
  br i1 %div.is.ovf25, label %div.ovf_abort27, label %div.ok26

div.zero_abort22:                                 ; preds = %div.ok
  %4 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero21

div.ok26:                                         ; preds = %div.ovf_abort27, %div.not_zero21
  %modtmp = srem i64 %var.load16, %fld.load19
  %cmptmp28 = icmp ne i64 %modtmp, 0
  br i1 %cmptmp28, label %choice.then29, label %choice.exit30

div.ovf_abort27:                                  ; preds = %div.not_zero21
  %5 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok26

choice.then29:                                    ; preds = %div.ok26
  ret i1 false

choice.exit30:                                    ; preds = %ret.dead31, %div.ok26
  %var.load32 = load ptr, ptr %var.p, align 8
  %fld.gep33 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load32, i32 0, i32 2
  %fld.load34 = load ptr, ptr %fld.gep33, align 8
  %var.load35 = load i64, ptr %var.idx, align 8
  %ptr.int.l = ptrtoint ptr %fld.load34 to i64
  %addtmp = add i64 %ptr.int.l, %var.load35
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

ret.dead31:                                       ; No predecessors!
  br label %choice.exit30

addr_gen_check:                                   ; preds = %choice.exit30
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.exit30
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  store i8 %raw.load, ptr %var.is_act, align 1
  %var.load36 = load i8, ptr %var.is_act, align 1
  %coerce.zext = zext i8 %var.load36 to i64
  %cmptmp37 = icmp eq i64 %coerce.zext, 0
  br i1 %cmptmp37, label %choice.then38, label %choice.exit39

addr_stale:                                       ; preds = %addr_gen_check
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

choice.then38:                                    ; preds = %addr_ok
  ret i1 false

choice.exit39:                                    ; preds = %ret.dead40, %addr_ok
  %var.load41 = load ptr, ptr %var.p, align 8
  %fld.gep42 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load41, i32 0, i32 2
  %fld.load43 = load ptr, ptr %fld.gep42, align 8
  %var.load44 = load i64, ptr %var.idx, align 8
  %ptr.int.l45 = ptrtoint ptr %fld.load43 to i64
  %addtmp46 = add i64 %ptr.int.l45, %var.load44
  %ptr.res47 = inttoptr i64 %addtmp46 to ptr
  %raw.int48 = ptrtoint ptr %ptr.res47 to i64
  %raw.clean.int49 = and i64 %raw.int48, 281474976710655
  %raw.clean.ptr50 = inttoptr i64 %raw.clean.int49 to ptr
  %addr.tag51 = lshr i64 %raw.int48, 48
  %addr.immortal52 = icmp eq i64 %addr.tag51, 0
  br i1 %addr.immortal52, label %addr_ok54, label %addr_gen_check53

ret.dead40:                                       ; No predecessors!
  br label %choice.exit39

addr_gen_check53:                                 ; preds = %choice.exit39
  %arena.cur56 = call ptr @dva_arena_current()
  %tag.valid57 = call i1 @dva_arena_validate_tag(ptr %arena.cur56, i64 %addr.tag51)
  br i1 %tag.valid57, label %addr_ok54, label %addr_stale55

addr_ok54:                                        ; preds = %addr_stale55, %addr_gen_check53, %choice.exit39
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr50, i8 0, i64 1, i1 false)
  %var.load58 = load ptr, ptr %var.p, align 8
  %fld.gep59 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load58, i32 0, i32 3
  %fld.load60 = load ptr, ptr %fld.gep59, align 8
  %raw.int61 = ptrtoint ptr %fld.load60 to i64
  %raw.clean.int62 = and i64 %raw.int61, 281474976710655
  %raw.clean.ptr63 = inttoptr i64 %raw.clean.int62 to ptr
  %addr.tag64 = lshr i64 %raw.int61, 48
  %addr.immortal65 = icmp eq i64 %addr.tag64, 0
  br i1 %addr.immortal65, label %addr_ok67, label %addr_gen_check66

addr_stale55:                                     ; preds = %addr_gen_check53
  %7 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok54

addr_gen_check66:                                 ; preds = %addr_ok54
  %arena.cur69 = call ptr @dva_arena_current()
  %tag.valid70 = call i1 @dva_arena_validate_tag(ptr %arena.cur69, i64 %addr.tag64)
  br i1 %tag.valid70, label %addr_ok67, label %addr_stale68

addr_ok67:                                        ; preds = %addr_stale68, %addr_gen_check66, %addr_ok54
  %raw.load71 = load volatile i64, ptr %raw.clean.ptr63, align 8
  store i64 %raw.load71, ptr %var.top, align 8
  %var.load72 = load ptr, ptr %var.p, align 8
  %fld.gep73 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load72, i32 0, i32 1
  %fld.load74 = load ptr, ptr %fld.gep73, align 8
  %var.load75 = load i64, ptr %var.top, align 8
  %multmp76 = mul i64 %var.load75, 8
  %ptr.int.l77 = ptrtoint ptr %fld.load74 to i64
  %addtmp78 = add i64 %ptr.int.l77, %multmp76
  %ptr.res79 = inttoptr i64 %addtmp78 to ptr
  %var.load80 = load i64, ptr %var.idx, align 8
  %raw.int81 = ptrtoint ptr %ptr.res79 to i64
  %raw.clean.int82 = and i64 %raw.int81, 281474976710655
  %raw.clean.ptr83 = inttoptr i64 %raw.clean.int82 to ptr
  %addr.tag84 = lshr i64 %raw.int81, 48
  %addr.immortal85 = icmp eq i64 %addr.tag84, 0
  br i1 %addr.immortal85, label %addr_ok87, label %addr_gen_check86

addr_stale68:                                     ; preds = %addr_gen_check66
  %8 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok67

addr_gen_check86:                                 ; preds = %addr_ok67
  %arena.cur89 = call ptr @dva_arena_current()
  %tag.valid90 = call i1 @dva_arena_validate_tag(ptr %arena.cur89, i64 %addr.tag84)
  br i1 %tag.valid90, label %addr_ok87, label %addr_stale88

addr_ok87:                                        ; preds = %addr_stale88, %addr_gen_check86, %addr_ok67
  store i64 %var.load80, ptr %raw.clean.ptr83, align 8
  %var.load91 = load ptr, ptr %var.p, align 8
  %fld.gep92 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load91, i32 0, i32 3
  %fld.load93 = load ptr, ptr %fld.gep92, align 8
  %var.load94 = load i64, ptr %var.top, align 8
  %addtmp95 = add i64 %var.load94, 1
  %raw.int96 = ptrtoint ptr %fld.load93 to i64
  %raw.clean.int97 = and i64 %raw.int96, 281474976710655
  %raw.clean.ptr98 = inttoptr i64 %raw.clean.int97 to ptr
  %addr.tag99 = lshr i64 %raw.int96, 48
  %addr.immortal100 = icmp eq i64 %addr.tag99, 0
  br i1 %addr.immortal100, label %addr_ok102, label %addr_gen_check101

addr_stale88:                                     ; preds = %addr_gen_check86
  %9 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok87

addr_gen_check101:                                ; preds = %addr_ok87
  %arena.cur104 = call ptr @dva_arena_current()
  %tag.valid105 = call i1 @dva_arena_validate_tag(ptr %arena.cur104, i64 %addr.tag99)
  br i1 %tag.valid105, label %addr_ok102, label %addr_stale103

addr_ok102:                                       ; preds = %addr_stale103, %addr_gen_check101, %addr_ok87
  store i64 %addtmp95, ptr %raw.clean.ptr98, align 8
  %var.load106 = load ptr, ptr %var.p, align 8
  %fld.gep107 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load106, i32 0, i32 3
  %fld.load108 = load ptr, ptr %fld.gep107, align 8
  %ptr.int.l109 = ptrtoint ptr %fld.load108 to i64
  %addtmp110 = add i64 %ptr.int.l109, 8
  %ptr.res111 = inttoptr i64 %addtmp110 to ptr
  %raw.int112 = ptrtoint ptr %ptr.res111 to i64
  %raw.clean.int113 = and i64 %raw.int112, 281474976710655
  %raw.clean.ptr114 = inttoptr i64 %raw.clean.int113 to ptr
  %addr.tag115 = lshr i64 %raw.int112, 48
  %addr.immortal116 = icmp eq i64 %addr.tag115, 0
  br i1 %addr.immortal116, label %addr_ok118, label %addr_gen_check117

addr_stale103:                                    ; preds = %addr_gen_check101
  %10 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok102

addr_gen_check117:                                ; preds = %addr_ok102
  %arena.cur120 = call ptr @dva_arena_current()
  %tag.valid121 = call i1 @dva_arena_validate_tag(ptr %arena.cur120, i64 %addr.tag115)
  br i1 %tag.valid121, label %addr_ok118, label %addr_stale119

addr_ok118:                                       ; preds = %addr_stale119, %addr_gen_check117, %addr_ok102
  %raw.load122 = load volatile i64, ptr %raw.clean.ptr114, align 8
  store i64 %raw.load122, ptr %var.cnt, align 8
  %var.load123 = load ptr, ptr %var.p, align 8
  %fld.gep124 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load123, i32 0, i32 3
  %fld.load125 = load ptr, ptr %fld.gep124, align 8
  %ptr.int.l126 = ptrtoint ptr %fld.load125 to i64
  %addtmp127 = add i64 %ptr.int.l126, 8
  %ptr.res128 = inttoptr i64 %addtmp127 to ptr
  %var.load129 = load i64, ptr %var.cnt, align 8
  %subtmp130 = sub i64 %var.load129, 1
  %raw.int131 = ptrtoint ptr %ptr.res128 to i64
  %raw.clean.int132 = and i64 %raw.int131, 281474976710655
  %raw.clean.ptr133 = inttoptr i64 %raw.clean.int132 to ptr
  %addr.tag134 = lshr i64 %raw.int131, 48
  %addr.immortal135 = icmp eq i64 %addr.tag134, 0
  br i1 %addr.immortal135, label %addr_ok137, label %addr_gen_check136

addr_stale119:                                    ; preds = %addr_gen_check117
  %11 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok118

addr_gen_check136:                                ; preds = %addr_ok118
  %arena.cur139 = call ptr @dva_arena_current()
  %tag.valid140 = call i1 @dva_arena_validate_tag(ptr %arena.cur139, i64 %addr.tag134)
  br i1 %tag.valid140, label %addr_ok137, label %addr_stale138

addr_ok137:                                       ; preds = %addr_stale138, %addr_gen_check136, %addr_ok118
  store i64 %subtmp130, ptr %raw.clean.ptr133, align 8
  ret i1 true

addr_stale138:                                    ; preds = %addr_gen_check136
  %12 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok137
}

define void @"mem::pool_destroy"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  call void @free(ptr %addr.ffi.clean)
  ret void
}

define void @"mem::pool_for_each"(ptr %0, ptr %1) #1 {
entry:
  %var.is_act = alloca i8, align 1
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.19 = alloca i64, align 8
  %loop.idx.19 = alloca i64, align 8
  %var.f = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store ptr %1, ptr %var.f, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load, i32 0, i32 5
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 0, ptr %loop.idx.19, align 8
  br label %loop.header.19

loop.header.19:                                   ; preds = %loop.latch.19, %entry
  %counter.load = load i64, ptr %loop.idx.19, align 8
  %loop.cond = icmp slt i64 %counter.load, %fld.load
  br i1 %loop.cond, label %loop.body.19, label %loop.exit.nat.19

loop.body.19:                                     ; preds = %loop.header.19
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.19, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load1 = load ptr, ptr %var.p, align 8
  %fld.gep2 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 2
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %var.load4 = load i64, ptr %var.i, align 8
  %ptr.int.l = ptrtoint ptr %fld.load3 to i64
  %addtmp = add i64 %ptr.int.l, %var.load4
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

loop.exit.nat.19:                                 ; preds = %loop.header.19
  br label %loop.exit.19

loop.latch.19:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.19, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.19, align 8
  br label %loop.header.19

loop.exit.19:                                     ; preds = %loop.exit.nat.19
  ret void

addr_gen_check:                                   ; preds = %loop.body.19
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %loop.body.19
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  store i8 %raw.load, ptr %var.is_act, align 1
  %var.load5 = load i8, ptr %var.is_act, align 1
  %coerce.zext = zext i8 %var.load5 to i64
  %cmptmp = icmp ne i64 %coerce.zext, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

addr_stale:                                       ; preds = %addr_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

choice.then:                                      ; preds = %addr_ok
  %clo.load = load ptr, ptr %var.f, align 8
  %clo.fn.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.load, i32 0, i32 0
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.load, i32 0, i32 1
  %clo.fn.load = load ptr, ptr %clo.fn.gep, align 8
  %clo.env.load = load ptr, ptr %clo.env.gep, align 8
  %var.load6 = load ptr, ptr %var.p, align 8
  %fld.gep7 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load6, i32 0, i32 0
  %fld.load8 = load ptr, ptr %fld.gep7, align 8
  %var.load9 = load i64, ptr %var.i, align 8
  %var.load10 = load ptr, ptr %var.p, align 8
  %fld.gep11 = getelementptr inbounds { ptr, ptr, ptr, ptr, i64, i64 }, ptr %var.load10, i32 0, i32 4
  %fld.load12 = load i64, ptr %fld.gep11, align 8
  %multmp = mul i64 %var.load9, %fld.load12
  %ptr.int.l13 = ptrtoint ptr %fld.load8 to i64
  %addtmp14 = add i64 %ptr.int.l13, %multmp
  %ptr.res15 = inttoptr i64 %addtmp14 to ptr
  %clo.is_cap = icmp ne ptr %clo.env.load, null
  br i1 %clo.is_cap, label %clo.cap, label %clo.plain

choice.exit:                                      ; preds = %clo.merge, %addr_ok
  br label %loop.latch.19

clo.cap:                                          ; preds = %choice.then
  call void %clo.fn.load(ptr %clo.env.load, ptr %ptr.res15)
  br label %clo.merge

clo.plain:                                        ; preds = %choice.then
  call void %clo.fn.load(ptr %ptr.res15)
  br label %clo.merge

clo.merge:                                        ; preds = %clo.plain, %clo.cap
  br label %choice.exit
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
