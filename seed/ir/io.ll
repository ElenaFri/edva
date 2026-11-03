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
@"var.io::STDIN" = global i64 0
@"var.io::STDOUT" = global i64 1
@"var.io::STDERR" = global i64 2
@"var.io::EOF" = global i64 0
@"var.io::EINTR" = global i64 4
@"var.io::EBADF" = global i64 9
@"var.io::EAGAIN" = global i64 11
@"var.io::EWOULDBLOCK" = global i64 11
@clo.const = internal constant { ptr, ptr } { ptr @"io::reader", ptr null }
@"var.io::reader" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"io::reader_with_cap", ptr null }
@"var.io::reader_with_cap" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"io::reader_err", ptr null }
@"var.io::reader_err" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"io::reader_eof", ptr null }
@"var.io::reader_eof" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"io::reader_would_block", ptr null }
@"var.io::reader_would_block" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"io::reader_has_err", ptr null }
@"var.io::reader_has_err" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"io::reader_clear", ptr null }
@"var.io::reader_clear" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@clo.const.7 = internal constant { ptr, ptr } { ptr @"io::#clean_addr", ptr null }
@stale_addr_msg = internal unnamed_addr constant [51 x i8] c"E4011: stale Addr dereference after arena restore\0A\00"
@clo.const.8 = internal constant { ptr, ptr } { ptr @"io::write", ptr null }
@"var.io::write" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"io::#show_rune", ptr null }
@"var.io::#show_rune" = global ptr null
@"var.io::#clean_addr" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"io::#writev_all", ptr null }
@"var.io::#writev_all" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"io::#refill", ptr null }
@"var.io::#refill" = global ptr null
@str.0 = internal unnamed_addr constant [2 x i8] c"\0A\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.0 }
@clo.const.12 = internal constant { ptr, ptr } { ptr @"io::outs", ptr null }
@"var.io::outs" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"io::errs", ptr null }
@"var.io::errs" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"io::read", ptr null }
@"var.io::read" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"io::read_all", ptr null }
@"var.io::read_all" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.16 = internal constant { ptr, ptr } { ptr @"io::read_byte", ptr null }
@"var.io::read_byte" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"io::read_until", ptr null }
@"var.io::read_until" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"io::read_line", ptr null }
@"var.io::read_line" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_io, ptr null }]

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

define internal void @__dva_global_init_io() #1 {
entry:
  store i64 0, ptr @"var.io::STDIN", align 8
  store i64 1, ptr @"var.io::STDOUT", align 8
  store i64 2, ptr @"var.io::STDERR", align 8
  store i64 0, ptr @"var.io::EOF", align 8
  store i64 4, ptr @"var.io::EINTR", align 8
  store i64 9, ptr @"var.io::EBADF", align 8
  store i64 11, ptr @"var.io::EAGAIN", align 8
  store i64 11, ptr @"var.io::EWOULDBLOCK", align 8
  store ptr @clo.const, ptr @"var.io::reader", align 8
  store ptr @clo.const.1, ptr @"var.io::reader_with_cap", align 8
  store ptr @clo.const.2, ptr @"var.io::reader_err", align 8
  store ptr @clo.const.3, ptr @"var.io::reader_eof", align 8
  store ptr @clo.const.4, ptr @"var.io::reader_would_block", align 8
  store ptr @clo.const.5, ptr @"var.io::reader_has_err", align 8
  store ptr @clo.const.6, ptr @"var.io::reader_clear", align 8
  store ptr @clo.const.8, ptr @"var.io::write", align 8
  store ptr @clo.const.9, ptr @"var.io::#show_rune", align 8
  store ptr @clo.const.7, ptr @"var.io::#clean_addr", align 8
  store ptr @clo.const.10, ptr @"var.io::#writev_all", align 8
  store ptr @clo.const.11, ptr @"var.io::#refill", align 8
  store ptr @clo.const.12, ptr @"var.io::outs", align 8
  store ptr @clo.const.13, ptr @"var.io::errs", align 8
  store ptr @clo.const.14, ptr @"var.io::read", align 8
  store ptr @clo.const.15, ptr @"var.io::read_all", align 8
  store ptr @clo.const.16, ptr @"var.io::read_byte", align 8
  store ptr @clo.const.17, ptr @"var.io::read_until", align 8
  store ptr @clo.const.18, ptr @"var.io::read_line", align 8
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

define ptr @"io::reader"(i64 %0) #1 {
entry:
  %var.fd = alloca i64, align 8
  store i64 %0, ptr %var.fd, align 8
  %var.load = load i64, ptr %var.fd, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4096, i64 1)
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
  store i64 4096, ptr %b.cap.gep, align 8
  %arena.cur3 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 ptrtoint (ptr getelementptr ({ i64, ptr, i64, i64, i64, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load, ptr %rec.fld, align 8
  %rec.fld4 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %builder.new, ptr %rec.fld4, align 8
  %rec.fld5 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld5, align 8
  %rec.fld6 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i64 4096, ptr %rec.fld6, align 8
  %rec.fld7 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 4
  store i64 0, ptr %rec.fld7, align 8
  %rec.fld8 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 5
  store i1 false, ptr %rec.fld8, align 1
  ret ptr %rec.alloc

str_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1
}

define ptr @"io::reader_with_cap"(i64 %0, i64 %1) #1 {
entry:
  %var.c = alloca i64, align 8
  %var.cap = alloca i64, align 8
  %var.fd = alloca i64, align 8
  store i64 %0, ptr %var.fd, align 8
  store i64 %1, ptr %var.cap, align 8
  %var.load = load i64, ptr %var.cap, align 8
  %cmptmp = icmp sgt i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.cap, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load1, %choice.then ], [ 4096, %choice.else ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %var.load3 = load i64, ptr %var.c, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %cap.neg = icmp slt i64 %var.load3, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load3
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len4

b.buf.len4:                                       ; preds = %str_overflow_abort, %choice.exit
  %arena.cur5 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  %var.load6 = load i64, ptr %var.c, align 8
  %arena.cur7 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 ptrtoint (ptr getelementptr ({ i64, ptr, i64, i64, i64, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load2, ptr %rec.fld, align 8
  %rec.fld8 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %builder.new, ptr %rec.fld8, align 8
  %rec.fld9 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld9, align 8
  %rec.fld10 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load6, ptr %rec.fld10, align 8
  %rec.fld11 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 4
  store i64 0, ptr %rec.fld11, align 8
  %rec.fld12 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 5
  store i1 false, ptr %rec.fld12, align 1
  ret ptr %rec.alloc

str_overflow_abort:                               ; preds = %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len4
}

define i64 @"io::reader_err"(ptr %0) #1 {
entry:
  %var._acc_1 = alloca ptr, align 8
  store ptr %0, ptr %var._acc_1, align 8
  %var.load = load ptr, ptr %var._acc_1, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 4
  %fld.load = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load
}

define i1 @"io::reader_eof"(ptr %0) #1 {
entry:
  %var._acc_2 = alloca ptr, align 8
  store ptr %0, ptr %var._acc_2, align 8
  %var.load = load ptr, ptr %var._acc_2, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 5
  %fld.load = load i1, ptr %fld.gep, align 1
  ret i1 %fld.load
}

define i1 @"io::reader_would_block"(ptr %0) #1 {
entry:
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  %var.load = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 4
  %fld.load = load i64, ptr %fld.gep, align 8
  %val.match = icmp eq i64 %fld.load, 11
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define i1 @"io::reader_has_err"(ptr %0) #1 {
entry:
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  %var.load = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 4
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp ne i64 %fld.load, 0
  ret i1 %cmptmp
}

define void @"io::reader_clear"(ptr %0) #1 {
entry:
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  %var.load = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 4
  store i64 0, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.r, align 8
  %fld.gep2 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load1, i32 0, i32 5
  store i1 false, ptr %fld.gep2, align 1
  ret void
}

define i64 @"io::write"(i64 %0, ptr %1) #1 {
entry:
  %var.errno_val = alloca i32, align 4
  %var.w = alloca i64, align 8
  %var.buf_addr = alloca ptr, align 8
  %var.rem = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.56 = alloca i64, align 8
  %loop.idx.56 = alloca i64, align 8
  %"var.off'" = alloca i64, align 8
  %var.total = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  store i64 %0, ptr %var.fd, align 8
  store ptr %1, ptr %var.s, align 8
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
  store i64 %str.len.query2, ptr %var.total, align 8
  %var.load3 = load i64, ptr %var.total, align 8
  %val.match = icmp eq i64 %var.load3, 0
  br i1 %val.match, label %choice.case, label %choice.next

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.exit:                                      ; preds = %choice.next, %ret.dead
  store i64 0, ptr %"var.off'", align 8
  store i64 0, ptr %loop.idx.56, align 8
  br label %loop.header.56

choice.case:                                      ; preds = %str_ok
  ret i64 0

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.56:                                   ; preds = %loop.latch.56, %choice.exit
  %counter.load = load i64, ptr %loop.idx.56, align 8
  br label %loop.body.56

loop.body.56:                                     ; preds = %loop.header.56
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.56, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load4 = load i64, ptr %"var.off'", align 8
  %var.load5 = load i64, ptr %var.total, align 8
  %cmptmp = icmp sge i64 %var.load4, %var.load5
  br i1 %cmptmp, label %choice.then, label %choice.exit6

loop.exit.nat.56:                                 ; No predecessors!
  br label %loop.exit.56

loop.latch.56:                                    ; preds = %choice.exit17, %choice.then26
  %step.val = load i64, ptr %loop.step.56, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.56, align 8
  br label %loop.header.56

loop.exit.56:                                     ; preds = %choice.case36, %choice.else31, %choice.then, %loop.exit.nat.56
  %var.load42 = load i64, ptr %"var.off'", align 8
  ret i64 %var.load42

choice.then:                                      ; preds = %loop.body.56
  br label %loop.exit.56

choice.exit6:                                     ; preds = %loop.body.56
  %var.load7 = load i64, ptr %var.total, align 8
  %var.load8 = load i64, ptr %"var.off'", align 8
  %subtmp = sub i64 %var.load7, %var.load8
  store i64 %subtmp, ptr %var.rem, align 8
  %var.load9 = load ptr, ptr %var.s, align 8
  %s.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.ptr10 = load ptr, ptr %s.ptr, align 8
  %var.load11 = load i64, ptr %"var.off'", align 8
  %ptr.int.l = ptrtoint ptr %s.ptr10 to i64
  %addtmp = add i64 %ptr.int.l, %var.load11
  %ptr.res = inttoptr i64 %addtmp to ptr
  %call.res = call ptr @"io::#clean_addr"(ptr %ptr.res)
  store ptr %call.res, ptr %var.buf_addr, align 8
  %var.load12 = load i64, ptr %var.fd, align 8
  %var.load13 = load ptr, ptr %var.buf_addr, align 8
  %addr.ffi.int = ptrtoint ptr %var.load13 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load14 = load i64, ptr %var.rem, align 8
  %coerce.trunc = trunc i64 %var.load12 to i32
  %call.res15 = call i64 @write(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 %var.load14)
  store i64 %call.res15, ptr %var.w, align 8
  %var.load16 = load i64, ptr %var.w, align 8
  %cmptmp20 = icmp slt i64 %var.load16, 0
  br i1 %cmptmp20, label %choice.case18, label %choice.next19

choice.exit17:                                    ; preds = %choice.exit35, %choice.exit27
  br label %loop.latch.56

choice.case18:                                    ; preds = %choice.exit6
  %call.res21 = call ptr @__errno_location()
  %raw.int = ptrtoint ptr %call.res21 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

choice.next19:                                    ; preds = %choice.exit6
  %var.load34 = load i64, ptr %var.w, align 8
  %val.match38 = icmp eq i64 %var.load34, 0
  br i1 %val.match38, label %choice.case36, label %choice.next37

addr_gen_check:                                   ; preds = %choice.case18
  %arena.cur22 = call ptr @dva_arena_current()
  %tag.valid23 = call i1 @dva_arena_validate_tag(ptr %arena.cur22, i64 %addr.tag)
  br i1 %tag.valid23, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.case18
  %raw.load = load volatile i32, ptr %raw.clean.ptr, align 4
  store i32 %raw.load, ptr %var.errno_val, align 4
  %var.load24 = load i32, ptr %var.errno_val, align 4
  %coerce.sext = sext i32 %var.load24 to i64
  %cmptmp25 = icmp eq i64 %coerce.sext, 4
  br i1 %cmptmp25, label %choice.then26, label %choice.else

addr_stale:                                       ; preds = %addr_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

choice.then26:                                    ; preds = %addr_ok
  br label %loop.latch.56

choice.else:                                      ; preds = %addr_ok
  %var.load28 = load i64, ptr %"var.off'", align 8
  %cmptmp29 = icmp eq i64 %var.load28, 0
  br i1 %cmptmp29, label %choice.then30, label %choice.else31

choice.exit27:                                    ; preds = %choice.exit32
  br label %choice.exit17

choice.then30:                                    ; preds = %choice.else
  ret i64 -1

choice.else31:                                    ; preds = %choice.else
  br label %loop.exit.56

choice.exit32:                                    ; preds = %ret.dead33
  br label %choice.exit27

ret.dead33:                                       ; No predecessors!
  br label %choice.exit32

choice.exit35:                                    ; preds = %choice.next37
  %var.load39 = load i64, ptr %"var.off'", align 8
  %var.load40 = load i64, ptr %var.w, align 8
  %addtmp41 = add i64 %var.load39, %var.load40
  store i64 %addtmp41, ptr %"var.off'", align 8
  br label %choice.exit17

choice.case36:                                    ; preds = %choice.next19
  br label %loop.exit.56

choice.next37:                                    ; preds = %choice.next19
  br label %choice.exit35
}

define internal ptr @"io::#clean_addr"(ptr %0) #1 {
entry:
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %ptrmask = call ptr @llvm.ptrmask.p0.i64(ptr %var.load, i64 281474976710655)
  ret ptr %ptrmask
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare ptr @llvm.ptrmask.p0.i64(ptr, i64) #0

define internal ptr @"io::#show_rune"(i32 %0) #1 {
entry:
  %var.r = alloca i32, align 4
  store i32 %0, ptr %var.r, align 4
  %var.load = load i32, ptr %var.r, align 4
  %call.res = call ptr @"utf::encode_rune"(i32 %var.load)
  ret ptr %call.res
}

declare ptr @"utf::encode_rune"(i32) #1

define internal i64 @"io::#writev_all"(i64 %0, ptr %1, ptr %2) #1 {
entry:
  %var.errno_val113 = alloca i32, align 4
  %var.w95 = alloca i64, align 8
  %var.p286 = alloca ptr, align 8
  %var.rem2 = alloca i64, align 8
  %var.off2 = alloca i64, align 8
  %var.errno_val = alloca i32, align 4
  %var.w = alloca i64, align 8
  %var.iov = alloca ptr, align 8
  %var.p2 = alloca ptr, align 8
  %var.p1 = alloca ptr, align 8
  %var.rem1 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.57 = alloca i64, align 8
  %loop.idx.57 = alloca i64, align 8
  %"var.off'" = alloca i64, align 8
  %var.total = alloca i64, align 8
  %var.len2 = alloca i64, align 8
  %var.len1 = alloca i64, align 8
  %var.s2 = alloca ptr, align 8
  %var.s1 = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  store i64 %0, ptr %var.fd, align 8
  store ptr %1, ptr %var.s1, align 8
  store ptr %2, ptr %var.s2, align 8
  %var.load = load ptr, ptr %var.s1, align 8
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
  store i64 %str.len.query2, ptr %var.len1, align 8
  %var.load3 = load ptr, ptr %var.s2, align 8
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
  store i64 %str.len.query6, ptr %var.len2, align 8
  %var.load14 = load i64, ptr %var.len1, align 8
  %var.load15 = load i64, ptr %var.len2, align 8
  %addtmp = add i64 %var.load14, %var.load15
  store i64 %addtmp, ptr %var.total, align 8
  %var.load16 = load i64, ptr %var.total, align 8
  %val.match = icmp eq i64 %var.load16, 0
  br i1 %val.match, label %choice.case, label %choice.next

str_stale11:                                      ; preds = %str_gen_check9
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

choice.exit:                                      ; preds = %choice.next, %ret.dead
  store i64 0, ptr %"var.off'", align 8
  store i64 0, ptr %loop.idx.57, align 8
  br label %loop.header.57

choice.case:                                      ; preds = %str_ok10
  ret i64 0

choice.next:                                      ; preds = %str_ok10
  br label %choice.exit

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.57:                                   ; preds = %loop.latch.57, %choice.exit
  %counter.load = load i64, ptr %loop.idx.57, align 8
  br label %loop.body.57

loop.body.57:                                     ; preds = %loop.header.57
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.57, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load17 = load i64, ptr %"var.off'", align 8
  %var.load18 = load i64, ptr %var.total, align 8
  %cmptmp = icmp sge i64 %var.load17, %var.load18
  br i1 %cmptmp, label %choice.then, label %choice.exit19

loop.exit.nat.57:                                 ; No predecessors!
  br label %loop.exit.57

loop.latch.57:                                    ; preds = %choice.exit24, %choice.then117, %choice.then56
  %step.val = load i64, ptr %loop.step.57, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.57, align 8
  br label %loop.header.57

loop.exit.57:                                     ; preds = %choice.case127, %choice.else122, %choice.case66, %choice.else61, %choice.then, %loop.exit.nat.57
  %var.load133 = load i64, ptr %"var.off'", align 8
  ret i64 %var.load133

choice.then:                                      ; preds = %loop.body.57
  br label %loop.exit.57

choice.exit19:                                    ; preds = %loop.body.57
  %var.load20 = load i64, ptr %"var.off'", align 8
  %var.load21 = load i64, ptr %var.len1, align 8
  %cmptmp22 = icmp slt i64 %var.load20, %var.load21
  br i1 %cmptmp22, label %choice.then23, label %choice.else

choice.then23:                                    ; preds = %choice.exit19
  %var.load25 = load i64, ptr %var.len1, align 8
  %var.load26 = load i64, ptr %"var.off'", align 8
  %subtmp = sub i64 %var.load25, %var.load26
  store i64 %subtmp, ptr %var.rem1, align 8
  %var.load27 = load ptr, ptr %var.s1, align 8
  %s.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %s.ptr28 = load ptr, ptr %s.ptr, align 8
  %var.load29 = load i64, ptr %"var.off'", align 8
  %ptr.int.l = ptrtoint ptr %s.ptr28 to i64
  %addtmp30 = add i64 %ptr.int.l, %var.load29
  %ptr.res = inttoptr i64 %addtmp30 to ptr
  %call.res = call ptr @"io::#clean_addr"(ptr %ptr.res)
  store ptr %call.res, ptr %var.p1, align 8
  %var.load31 = load ptr, ptr %var.s2, align 8
  %s.ptr32 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 1
  %s.ptr33 = load ptr, ptr %s.ptr32, align 8
  %call.res34 = call ptr @"io::#clean_addr"(ptr %s.ptr33)
  store ptr %call.res34, ptr %var.p2, align 8
  %var.load35 = load ptr, ptr %var.p1, align 8
  %var.load36 = load i64, ptr %var.rem1, align 8
  %var.load37 = load ptr, ptr %var.p2, align 8
  %var.load38 = load i64, ptr %var.len2, align 8
  %arena.cur39 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load35, ptr %rec.fld, align 8
  %rec.fld40 = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load36, ptr %rec.fld40, align 8
  %rec.fld41 = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load37, ptr %rec.fld41, align 8
  %rec.fld42 = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load38, ptr %rec.fld42, align 8
  store ptr %rec.alloc, ptr %var.iov, align 8
  %var.load43 = load i64, ptr %var.fd, align 8
  %var.load44 = load ptr, ptr %var.iov, align 8
  %addr.ffi.int = ptrtoint ptr %var.load44 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %coerce.trunc = trunc i64 %var.load43 to i32
  %call.res45 = call i64 @writev(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 2)
  store i64 %call.res45, ptr %var.w, align 8
  %var.load46 = load i64, ptr %var.w, align 8
  %cmptmp47 = icmp slt i64 %var.load46, 0
  br i1 %cmptmp47, label %choice.then48, label %choice.else49

choice.else:                                      ; preds = %choice.exit19
  %var.load72 = load i64, ptr %"var.off'", align 8
  %var.load73 = load i64, ptr %var.len1, align 8
  %subtmp74 = sub i64 %var.load72, %var.load73
  store i64 %subtmp74, ptr %var.off2, align 8
  %var.load75 = load i64, ptr %var.len2, align 8
  %var.load76 = load i64, ptr %var.off2, align 8
  %subtmp77 = sub i64 %var.load75, %var.load76
  store i64 %subtmp77, ptr %var.rem2, align 8
  %var.load78 = load ptr, ptr %var.s2, align 8
  %s.ptr79 = getelementptr inbounds { i64, ptr }, ptr %var.load78, i32 0, i32 1
  %s.ptr80 = load ptr, ptr %s.ptr79, align 8
  %var.load81 = load i64, ptr %var.off2, align 8
  %ptr.int.l82 = ptrtoint ptr %s.ptr80 to i64
  %addtmp83 = add i64 %ptr.int.l82, %var.load81
  %ptr.res84 = inttoptr i64 %addtmp83 to ptr
  %call.res85 = call ptr @"io::#clean_addr"(ptr %ptr.res84)
  store ptr %call.res85, ptr %var.p286, align 8
  %var.load87 = load i64, ptr %var.fd, align 8
  %var.load88 = load ptr, ptr %var.p286, align 8
  %addr.ffi.int89 = ptrtoint ptr %var.load88 to i64
  %addr.ffi.masked90 = and i64 %addr.ffi.int89, 281474976710655
  %addr.ffi.clean91 = inttoptr i64 %addr.ffi.masked90 to ptr
  %var.load92 = load i64, ptr %var.rem2, align 8
  %coerce.trunc93 = trunc i64 %var.load87 to i32
  %call.res94 = call i64 @write(i32 %coerce.trunc93, ptr %addr.ffi.clean91, i64 %var.load92)
  store i64 %call.res94, ptr %var.w95, align 8
  %var.load96 = load i64, ptr %var.w95, align 8
  %cmptmp97 = icmp slt i64 %var.load96, 0
  br i1 %cmptmp97, label %choice.then98, label %choice.else99

choice.exit24:                                    ; preds = %choice.exit100, %choice.exit50
  br label %loop.latch.57

choice.then48:                                    ; preds = %choice.then23
  %call.res51 = call ptr @__errno_location()
  %raw.int = ptrtoint ptr %call.res51 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

choice.else49:                                    ; preds = %choice.then23
  %var.load64 = load i64, ptr %var.w, align 8
  %val.match68 = icmp eq i64 %var.load64, 0
  br i1 %val.match68, label %choice.case66, label %choice.next67

choice.exit50:                                    ; preds = %choice.exit65, %choice.exit62
  br label %choice.exit24

addr_gen_check:                                   ; preds = %choice.then48
  %arena.cur52 = call ptr @dva_arena_current()
  %tag.valid53 = call i1 @dva_arena_validate_tag(ptr %arena.cur52, i64 %addr.tag)
  br i1 %tag.valid53, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.then48
  %raw.load = load volatile i32, ptr %raw.clean.ptr, align 4
  store i32 %raw.load, ptr %var.errno_val, align 4
  %var.load54 = load i32, ptr %var.errno_val, align 4
  %coerce.sext = sext i32 %var.load54 to i64
  %cmptmp55 = icmp eq i64 %coerce.sext, 4
  br i1 %cmptmp55, label %choice.then56, label %choice.exit57

addr_stale:                                       ; preds = %addr_gen_check
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

choice.then56:                                    ; preds = %addr_ok
  br label %loop.latch.57

choice.exit57:                                    ; preds = %addr_ok
  %var.load58 = load i64, ptr %"var.off'", align 8
  %cmptmp59 = icmp eq i64 %var.load58, 0
  br i1 %cmptmp59, label %choice.then60, label %choice.else61

choice.then60:                                    ; preds = %choice.exit57
  ret i64 -1

choice.else61:                                    ; preds = %choice.exit57
  br label %loop.exit.57

choice.exit62:                                    ; preds = %ret.dead63
  br label %choice.exit50

ret.dead63:                                       ; No predecessors!
  br label %choice.exit62

choice.exit65:                                    ; preds = %choice.next67
  %var.load69 = load i64, ptr %"var.off'", align 8
  %var.load70 = load i64, ptr %var.w, align 8
  %addtmp71 = add i64 %var.load69, %var.load70
  store i64 %addtmp71, ptr %"var.off'", align 8
  br label %choice.exit50

choice.case66:                                    ; preds = %choice.else49
  br label %loop.exit.57

choice.next67:                                    ; preds = %choice.else49
  br label %choice.exit65

choice.then98:                                    ; preds = %choice.else
  %call.res101 = call ptr @__errno_location()
  %raw.int102 = ptrtoint ptr %call.res101 to i64
  %raw.clean.int103 = and i64 %raw.int102, 281474976710655
  %raw.clean.ptr104 = inttoptr i64 %raw.clean.int103 to ptr
  %addr.tag105 = lshr i64 %raw.int102, 48
  %addr.immortal106 = icmp eq i64 %addr.tag105, 0
  br i1 %addr.immortal106, label %addr_ok108, label %addr_gen_check107

choice.else99:                                    ; preds = %choice.else
  %var.load125 = load i64, ptr %var.w95, align 8
  %val.match129 = icmp eq i64 %var.load125, 0
  br i1 %val.match129, label %choice.case127, label %choice.next128

choice.exit100:                                   ; preds = %choice.exit126, %choice.exit123
  br label %choice.exit24

addr_gen_check107:                                ; preds = %choice.then98
  %arena.cur110 = call ptr @dva_arena_current()
  %tag.valid111 = call i1 @dva_arena_validate_tag(ptr %arena.cur110, i64 %addr.tag105)
  br i1 %tag.valid111, label %addr_ok108, label %addr_stale109

addr_ok108:                                       ; preds = %addr_stale109, %addr_gen_check107, %choice.then98
  %raw.load112 = load volatile i32, ptr %raw.clean.ptr104, align 4
  store i32 %raw.load112, ptr %var.errno_val113, align 4
  %var.load114 = load i32, ptr %var.errno_val113, align 4
  %coerce.sext115 = sext i32 %var.load114 to i64
  %cmptmp116 = icmp eq i64 %coerce.sext115, 4
  br i1 %cmptmp116, label %choice.then117, label %choice.exit118

addr_stale109:                                    ; preds = %addr_gen_check107
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok108

choice.then117:                                   ; preds = %addr_ok108
  br label %loop.latch.57

choice.exit118:                                   ; preds = %addr_ok108
  %var.load119 = load i64, ptr %"var.off'", align 8
  %cmptmp120 = icmp eq i64 %var.load119, 0
  br i1 %cmptmp120, label %choice.then121, label %choice.else122

choice.then121:                                   ; preds = %choice.exit118
  ret i64 -1

choice.else122:                                   ; preds = %choice.exit118
  br label %loop.exit.57

choice.exit123:                                   ; preds = %ret.dead124
  br label %choice.exit100

ret.dead124:                                      ; No predecessors!
  br label %choice.exit123

choice.exit126:                                   ; preds = %choice.next128
  %var.load130 = load i64, ptr %"var.off'", align 8
  %var.load131 = load i64, ptr %var.w95, align 8
  %addtmp132 = add i64 %var.load130, %var.load131
  store i64 %addtmp132, ptr %"var.off'", align 8
  br label %choice.exit100

choice.case127:                                   ; preds = %choice.else99
  br label %loop.exit.57

choice.next128:                                   ; preds = %choice.else99
  br label %choice.exit126
}

define internal i64 @"io::#refill"(ptr %0) #1 {
entry:
  %var.errno_val = alloca i32, align 4
  %var.n = alloca i64, align 8
  %var.cur = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.58 = alloca i64, align 8
  %loop.idx.58 = alloca i64, align 8
  %"var.n'" = alloca i64, align 8
  %var.space = alloca i64, align 8
  %var.read_cap = alloca i64, align 8
  %var.rem = alloca i64, align 8
  %var.buf = alloca ptr, align 8
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  %var.load = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.buf, align 8
  %var.load1 = load ptr, ptr %var.r, align 8
  %fld.gep2 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load1, i32 0, i32 2
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %cmptmp = icmp sgt i64 %fld.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.buf, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 0
  %b.len5 = load i64, ptr %b.len, align 8
  %var.load6 = load ptr, ptr %var.r, align 8
  %fld.gep7 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load6, i32 0, i32 2
  %fld.load8 = load i64, ptr %fld.gep7, align 8
  %subtmp = sub i64 %b.len5, %fld.load8
  store i64 %subtmp, ptr %var.rem, align 8
  %var.load9 = load i64, ptr %var.rem, align 8
  %cmptmp10 = icmp sgt i64 %var.load9, 0
  br i1 %cmptmp10, label %choice.then11, label %choice.exit12

choice.exit:                                      ; preds = %b.len_ok, %entry
  %var.load36 = load ptr, ptr %var.r, align 8
  %fld.gep37 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load36, i32 0, i32 3
  %fld.load38 = load i64, ptr %fld.gep37, align 8
  %cmptmp39 = icmp sgt i64 %fld.load38, 0
  br i1 %cmptmp39, label %choice.then40, label %choice.else

choice.then11:                                    ; preds = %choice.then
  %var.load13 = load ptr, ptr %var.buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load13, i32 0, i32 1
  %b.ptr14 = load ptr, ptr %b.ptr, align 8
  %var.load15 = load ptr, ptr %var.buf, align 8
  %b.ptr16 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load15, i32 0, i32 1
  %b.ptr17 = load ptr, ptr %b.ptr16, align 8
  %var.load18 = load ptr, ptr %var.r, align 8
  %fld.gep19 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load18, i32 0, i32 2
  %fld.load20 = load i64, ptr %fld.gep19, align 8
  %ptr.int.l = ptrtoint ptr %b.ptr17 to i64
  %addtmp = add i64 %ptr.int.l, %fld.load20
  %ptr.res = inttoptr i64 %addtmp to ptr
  %var.load21 = load i64, ptr %var.rem, align 8
  %raw.int = ptrtoint ptr %b.ptr14 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

choice.exit12:                                    ; preds = %addr_ok28, %choice.then
  %var.load32 = load i64, ptr %var.rem, align 8
  %b.load = load ptr, ptr %var.buf, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap33 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load32, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

addr_gen_check:                                   ; preds = %choice.then11
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.then11
  %raw.int22 = ptrtoint ptr %ptr.res to i64
  %raw.clean.int23 = and i64 %raw.int22, 281474976710655
  %raw.clean.ptr24 = inttoptr i64 %raw.clean.int23 to ptr
  %addr.tag25 = lshr i64 %raw.int22, 48
  %addr.immortal26 = icmp eq i64 %addr.tag25, 0
  br i1 %addr.immortal26, label %addr_ok28, label %addr_gen_check27

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check27:                                 ; preds = %addr_ok
  %arena.cur30 = call ptr @dva_arena_current()
  %tag.valid31 = call i1 @dva_arena_validate_tag(ptr %arena.cur30, i64 %addr.tag25)
  br i1 %tag.valid31, label %addr_ok28, label %addr_stale29

addr_ok28:                                        ; preds = %addr_stale29, %addr_gen_check27, %addr_ok
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr24, i64 %var.load21, i1 false)
  br label %choice.exit12

addr_stale29:                                     ; preds = %addr_gen_check27
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok28

b.len_big_check:                                  ; preds = %choice.exit12
  %b.len.big = icmp sgt i64 %var.load32, %b.cap33
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load32, ptr %b.len.gep, align 8
  %var.load34 = load ptr, ptr %var.r, align 8
  %fld.gep35 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load34, i32 0, i32 2
  store i64 0, ptr %fld.gep35, align 8
  br label %choice.exit

b.len_oob:                                        ; preds = %b.len_big_check, %choice.exit12
  %3 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok

choice.then40:                                    ; preds = %choice.exit
  %var.load42 = load ptr, ptr %var.r, align 8
  %fld.gep43 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load42, i32 0, i32 3
  %fld.load44 = load i64, ptr %fld.gep43, align 8
  br label %choice.exit41

choice.else:                                      ; preds = %choice.exit
  br label %choice.exit41

choice.exit41:                                    ; preds = %choice.else, %choice.then40
  %choice.res = phi i64 [ %fld.load44, %choice.then40 ], [ 4096, %choice.else ]
  store i64 %choice.res, ptr %var.read_cap, align 8
  %var.load45 = load i64, ptr %var.read_cap, align 8
  %var.load46 = load ptr, ptr %var.buf, align 8
  %b.len47 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load46, i32 0, i32 0
  %b.len48 = load i64, ptr %b.len47, align 8
  %subtmp49 = sub i64 %var.load45, %b.len48
  store i64 %subtmp49, ptr %var.space, align 8
  %var.load50 = load i64, ptr %var.space, align 8
  %cmptmp51 = icmp sle i64 %var.load50, 0
  br i1 %cmptmp51, label %choice.then52, label %choice.else53

choice.then52:                                    ; preds = %choice.exit41
  br label %choice.exit54

choice.else53:                                    ; preds = %choice.exit41
  store i64 0, ptr %"var.n'", align 8
  store i64 0, ptr %loop.idx.58, align 8
  br label %loop.header.58

choice.exit54:                                    ; preds = %loop.exit.58, %choice.then52
  %choice.res126 = phi i64 [ 0, %choice.then52 ], [ %var.load125, %loop.exit.58 ]
  ret i64 %choice.res126

loop.header.58:                                   ; preds = %loop.latch.58, %choice.else53
  %counter.load = load i64, ptr %loop.idx.58, align 8
  br label %loop.body.58

loop.body.58:                                     ; preds = %loop.header.58
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.58, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load55 = load ptr, ptr %var.buf, align 8
  %b.len56 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load55, i32 0, i32 0
  %b.len57 = load i64, ptr %b.len56, align 8
  store i64 %b.len57, ptr %var.cur, align 8
  %var.load58 = load ptr, ptr %var.r, align 8
  %fld.gep59 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load58, i32 0, i32 0
  %fld.load60 = load i64, ptr %fld.gep59, align 8
  %var.load61 = load ptr, ptr %var.buf, align 8
  %b.ptr62 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load61, i32 0, i32 1
  %b.ptr63 = load ptr, ptr %b.ptr62, align 8
  %var.load64 = load i64, ptr %var.cur, align 8
  %ptr.int.l65 = ptrtoint ptr %b.ptr63 to i64
  %addtmp66 = add i64 %ptr.int.l65, %var.load64
  %ptr.res67 = inttoptr i64 %addtmp66 to ptr
  %addr.ffi.int = ptrtoint ptr %ptr.res67 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load68 = load i64, ptr %var.space, align 8
  %coerce.trunc = trunc i64 %fld.load60 to i32
  %call.res = call i64 @read(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 %var.load68)
  store i64 %call.res, ptr %var.n, align 8
  %var.load69 = load i64, ptr %var.n, align 8
  %cmptmp70 = icmp slt i64 %var.load69, 0
  br i1 %cmptmp70, label %choice.then71, label %choice.else72

loop.exit.nat.58:                                 ; No predecessors!
  br label %loop.exit.58

loop.latch.58:                                    ; preds = %choice.exit73, %choice.then87
  %step.val = load i64, ptr %loop.step.58, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.58, align 8
  br label %loop.header.58

loop.exit.58:                                     ; preds = %b.len_ok118, %choice.then103, %choice.exit95, %loop.exit.nat.58
  %var.load125 = load i64, ptr %"var.n'", align 8
  br label %choice.exit54

choice.then71:                                    ; preds = %loop.body.58
  %call.res74 = call ptr @__errno_location()
  %raw.int75 = ptrtoint ptr %call.res74 to i64
  %raw.clean.int76 = and i64 %raw.int75, 281474976710655
  %raw.clean.ptr77 = inttoptr i64 %raw.clean.int76 to ptr
  %addr.tag78 = lshr i64 %raw.int75, 48
  %addr.immortal79 = icmp eq i64 %addr.tag78, 0
  br i1 %addr.immortal79, label %addr_ok81, label %addr_gen_check80

choice.else72:                                    ; preds = %loop.body.58
  %var.load101 = load i64, ptr %var.n, align 8
  %cmptmp102 = icmp eq i64 %var.load101, 0
  br i1 %cmptmp102, label %choice.then103, label %choice.else104

choice.exit73:                                    ; preds = %choice.exit105
  br label %loop.latch.58

addr_gen_check80:                                 ; preds = %choice.then71
  %arena.cur83 = call ptr @dva_arena_current()
  %tag.valid84 = call i1 @dva_arena_validate_tag(ptr %arena.cur83, i64 %addr.tag78)
  br i1 %tag.valid84, label %addr_ok81, label %addr_stale82

addr_ok81:                                        ; preds = %addr_stale82, %addr_gen_check80, %choice.then71
  %raw.load = load volatile i32, ptr %raw.clean.ptr77, align 4
  store i32 %raw.load, ptr %var.errno_val, align 4
  %var.load85 = load i32, ptr %var.errno_val, align 4
  %coerce.sext = sext i32 %var.load85 to i64
  %cmptmp86 = icmp eq i64 %coerce.sext, 4
  br i1 %cmptmp86, label %choice.then87, label %choice.exit88

addr_stale82:                                     ; preds = %addr_gen_check80
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok81

choice.then87:                                    ; preds = %addr_ok81
  br label %loop.latch.58

choice.exit88:                                    ; preds = %addr_ok81
  %var.load89 = load ptr, ptr %var.r, align 8
  %var.load90 = load i32, ptr %var.errno_val, align 4
  %coerce.sext91 = sext i32 %var.load90 to i64
  %cmptmp92 = icmp eq i64 %coerce.sext91, 11
  br i1 %cmptmp92, label %choice.then93, label %choice.else94

choice.then93:                                    ; preds = %choice.exit88
  br label %choice.exit95

choice.else94:                                    ; preds = %choice.exit88
  %var.load96 = load i32, ptr %var.errno_val, align 4
  %coerce.sext97 = sext i32 %var.load96 to i64
  br label %choice.exit95

choice.exit95:                                    ; preds = %choice.else94, %choice.then93
  %choice.res98 = phi i64 [ 11, %choice.then93 ], [ %coerce.sext97, %choice.else94 ]
  %fld.gep99 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load89, i32 0, i32 4
  store i64 %choice.res98, ptr %fld.gep99, align 8
  %var.load100 = load i64, ptr %var.n, align 8
  store i64 %var.load100, ptr %"var.n'", align 8
  br label %loop.exit.58

choice.then103:                                   ; preds = %choice.else72
  %var.load106 = load ptr, ptr %var.r, align 8
  %fld.gep107 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load106, i32 0, i32 5
  store i1 true, ptr %fld.gep107, align 1
  %var.load108 = load ptr, ptr %var.r, align 8
  %fld.gep109 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load108, i32 0, i32 4
  store i64 0, ptr %fld.gep109, align 8
  store i64 0, ptr %"var.n'", align 8
  br label %loop.exit.58

choice.else104:                                   ; preds = %choice.else72
  %var.load110 = load i64, ptr %var.cur, align 8
  %var.load111 = load i64, ptr %var.n, align 8
  %addtmp112 = add i64 %var.load110, %var.load111
  %b.load113 = load ptr, ptr %var.buf, align 8
  %b.cap114 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load113, i32 0, i32 2
  %b.cap115 = load i64, ptr %b.cap114, align 8
  %b.len.neg116 = icmp slt i64 %addtmp112, 0
  br i1 %b.len.neg116, label %b.len_oob119, label %b.len_big_check117

choice.exit105:                                   ; No predecessors!
  br label %choice.exit73

b.len_big_check117:                               ; preds = %choice.else104
  %b.len.big120 = icmp sgt i64 %addtmp112, %b.cap115
  br i1 %b.len.big120, label %b.len_oob119, label %b.len_ok118

b.len_ok118:                                      ; preds = %b.len_oob119, %b.len_big_check117
  %b.len.gep121 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load113, i32 0, i32 0
  store i64 %addtmp112, ptr %b.len.gep121, align 8
  %var.load122 = load ptr, ptr %var.r, align 8
  %fld.gep123 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load122, i32 0, i32 4
  store i64 0, ptr %fld.gep123, align 8
  %var.load124 = load i64, ptr %var.n, align 8
  store i64 %var.load124, ptr %"var.n'", align 8
  br label %loop.exit.58

b.len_oob119:                                     ; preds = %b.len_big_check117, %choice.else104
  %5 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok118
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

define void @"io::outs"(ptr %0) #1 {
entry:
  %var.nl = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr @str.0.struct, ptr %var.nl, align 8
  %var.load = load i64, ptr @"var.io::STDOUT", align 8
  %var.load1 = load ptr, ptr %var.s, align 8
  %var.load2 = load ptr, ptr %var.nl, align 8
  %call.res = call i64 @"io::#writev_all"(i64 %var.load, ptr %var.load1, ptr %var.load2)
  ret void
}

define void @"io::errs"(ptr %0) #1 {
entry:
  %var.nl = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr @str.0.struct, ptr %var.nl, align 8
  %var.load = load i64, ptr @"var.io::STDERR", align 8
  %var.load1 = load ptr, ptr %var.s, align 8
  %var.load2 = load ptr, ptr %var.nl, align 8
  %call.res = call i64 @"io::#writev_all"(i64 %var.load, ptr %var.load1, ptr %var.load2)
  ret void
}

define ptr @"io::read"(ptr %0, i64 %1) #1 {
entry:
  %var.res = alloca ptr, align 8
  %var.take = alloca i64, align 8
  %var.avail = alloca i64, align 8
  %var.max = alloca i64, align 8
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  store i64 %1, ptr %var.max, align 8
  %var.load = load i64, ptr %var.max, align 8
  %cmptmp = icmp sle i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret ptr null

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load1 = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load1, i32 0, i32 2
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load2 = load ptr, ptr %var.r, align 8
  %fld.gep3 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load2, i32 0, i32 1
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 0
  %b.len5 = load i64, ptr %b.len, align 8
  %cmptmp6 = icmp sge i64 %fld.load, %b.len5
  br i1 %cmptmp6, label %choice.then7, label %choice.exit8

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then7:                                     ; preds = %choice.exit
  %var.load9 = load ptr, ptr %var.r, align 8
  %call.res = call i64 @"io::#refill"(ptr %var.load9)
  br label %choice.exit8

choice.exit8:                                     ; preds = %choice.then7, %choice.exit
  %var.load10 = load ptr, ptr %var.r, align 8
  %fld.gep11 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load10, i32 0, i32 2
  %fld.load12 = load i64, ptr %fld.gep11, align 8
  %var.load13 = load ptr, ptr %var.r, align 8
  %fld.gep14 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load13, i32 0, i32 1
  %fld.load15 = load ptr, ptr %fld.gep14, align 8
  %b.len16 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load15, i32 0, i32 0
  %b.len17 = load i64, ptr %b.len16, align 8
  %cmptmp18 = icmp sge i64 %fld.load12, %b.len17
  br i1 %cmptmp18, label %choice.then19, label %choice.exit20

choice.then19:                                    ; preds = %choice.exit8
  ret ptr null

choice.exit20:                                    ; preds = %ret.dead21, %choice.exit8
  %var.load22 = load ptr, ptr %var.r, align 8
  %fld.gep23 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load22, i32 0, i32 1
  %fld.load24 = load ptr, ptr %fld.gep23, align 8
  %b.len25 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load24, i32 0, i32 0
  %b.len26 = load i64, ptr %b.len25, align 8
  %var.load27 = load ptr, ptr %var.r, align 8
  %fld.gep28 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load27, i32 0, i32 2
  %fld.load29 = load i64, ptr %fld.gep28, align 8
  %subtmp = sub i64 %b.len26, %fld.load29
  store i64 %subtmp, ptr %var.avail, align 8
  %var.load30 = load i64, ptr %var.avail, align 8
  %var.load31 = load i64, ptr %var.max, align 8
  %cmptmp32 = icmp slt i64 %var.load30, %var.load31
  br i1 %cmptmp32, label %choice.then33, label %choice.else

ret.dead21:                                       ; No predecessors!
  br label %choice.exit20

choice.then33:                                    ; preds = %choice.exit20
  %var.load35 = load i64, ptr %var.avail, align 8
  br label %choice.exit34

choice.else:                                      ; preds = %choice.exit20
  %var.load36 = load i64, ptr %var.max, align 8
  br label %choice.exit34

choice.exit34:                                    ; preds = %choice.else, %choice.then33
  %choice.res = phi i64 [ %var.load35, %choice.then33 ], [ %var.load36, %choice.else ]
  store i64 %choice.res, ptr %var.take, align 8
  %var.load37 = load i64, ptr %var.take, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %cap.neg = icmp slt i64 %var.load37, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load37
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len38

b.buf.len38:                                      ; preds = %str_overflow_abort, %choice.exit34
  %arena.cur39 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.res, align 8
  %b.load = load ptr, ptr %var.res, align 8
  %var.load40 = load ptr, ptr %var.r, align 8
  %fld.gep41 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load40, i32 0, i32 1
  %fld.load42 = load ptr, ptr %fld.gep41, align 8
  %b.read.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load42, i32 0, i32 0
  %b.read.len43 = load i64, ptr %b.read.len, align 8
  %b.read.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load42, i32 0, i32 1
  %b.read.data44 = load ptr, ptr %b.read.data, align 8
  %var.load45 = load ptr, ptr %var.r, align 8
  %fld.gep46 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load45, i32 0, i32 2
  %fld.load47 = load i64, ptr %fld.gep46, align 8
  %var.load48 = load ptr, ptr %var.r, align 8
  %fld.gep49 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load48, i32 0, i32 2
  %fld.load50 = load i64, ptr %fld.gep49, align 8
  %var.load51 = load i64, ptr %var.take, align 8
  %addtmp = add i64 %fld.load50, %var.load51
  %start.is_neg = icmp slt i64 %fld.load47, 0
  %rel.start = add i64 %b.read.len43, %fld.load47
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %fld.load47
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %b.read.len43
  %final.start = select i1 %start.gt.len, i64 %b.read.len43, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp, 0
  %rel.end = add i64 %b.read.len43, %addtmp
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %b.read.len43
  %final.end = select i1 %end.gt.len, i64 %b.read.len43, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %b.read.data44, i64 %final.start
  %arena.cur52 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %app.str.len53 = load i64, ptr %app.str.len, align 8
  %app.str.len54 = and i64 %app.str.len53, 281474976710655
  %str.tag = lshr i64 %app.str.len53, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_overflow_abort:                               ; preds = %choice.exit34
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len38

str_gen_check:                                    ; preds = %b.buf.len38
  %arena.cur55 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur55, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.buf.len38
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len56 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len56, i64 %app.str.len54)
  %sum57 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf58 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf58, label %str_overflow_abort60, label %b.app.new.len59

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

b.app.new.len59:                                  ; preds = %str_overflow_abort60, %str_ok
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap61 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap61, %sum57
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort60:                             ; preds = %str_ok
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len59

b.grow2:                                          ; preds = %b.app.new.len59
  %b.cap2 = mul i64 %b.cap61, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum57
  %b.new.cap = select i1 %b.cap.need, i64 %sum57, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len262 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data263 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum64 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf65 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf65, label %str_overflow_abort67, label %b.new.buf.len266

b.nogrow2:                                        ; preds = %b.app.new.len59
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len266
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %app.str.data69 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data70 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data70, i64 %b.app.cur.len56
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data69, i64 %app.str.len54, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data70, i64 %sum57
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep71 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum57, ptr %b.len.gep71, align 8
  %var.load72 = load ptr, ptr %var.r, align 8
  %var.load73 = load ptr, ptr %var.r, align 8
  %fld.gep74 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load73, i32 0, i32 2
  %fld.load75 = load i64, ptr %fld.gep74, align 8
  %var.load76 = load i64, ptr %var.take, align 8
  %addtmp77 = add i64 %fld.load75, %var.load76
  %fld.gep78 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load72, i32 0, i32 2
  store i64 %addtmp77, ptr %fld.gep78, align 8
  %var.load79 = load ptr, ptr %var.res, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load79, i32 0, i32 0
  %b.freeze.len80 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load79, i32 0, i32 1
  %b.freeze.data81 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.new.buf.len266:                                 ; preds = %str_overflow_abort67, %b.grow2
  %arena.cur68 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 %sum64)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data263, i64 %b.cur.len262, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len262
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort67:                             ; preds = %b.grow2
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len266

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data81, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data81, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data81, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len80, 1
  %arena.cur82 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur82, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data81, i64 %b.freeze.len80, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len80
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.grow_done
  %b.freeze.data83 = phi ptr [ %b.freeze.data81, %b.grow_done ], [ %b.freeze.data81, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur84 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur84, i64 16)
  %str.build.len.gep85 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len80, ptr %str.build.len.gep85, align 8
  %str.build.data.gep86 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data83, ptr %str.build.data.gep86, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load79, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load79, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load79, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define ptr @"io::read_all"(ptr %0, i64 %1) #1 {
entry:
  %var.errno_val = alloca i32, align 4
  %var.n = alloca i64, align 8
  %var.cur = alloca i64, align 8
  %var.to_read = alloca i64, align 8
  %var.rem = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.59 = alloca i64, align 8
  %loop.idx.59 = alloca i64, align 8
  %var.chunk = alloca i64, align 8
  %var.take = alloca i64, align 8
  %var.avail = alloca i64, align 8
  %var.res_b = alloca ptr, align 8
  %var.max = alloca i64, align 8
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  store i64 %1, ptr %var.max, align 8
  %var.load = load i64, ptr %var.max, align 8
  %cmptmp = icmp sle i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret ptr null

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load1 = load i64, ptr %var.max, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %cap.neg = icmp slt i64 %var.load1, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load1
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len2

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len2:                                       ; preds = %str_overflow_abort, %choice.exit
  %arena.cur3 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.res_b, align 8
  %var.load4 = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load4, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %b.len5 = load i64, ptr %b.len, align 8
  %var.load6 = load ptr, ptr %var.r, align 8
  %fld.gep7 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load6, i32 0, i32 2
  %fld.load8 = load i64, ptr %fld.gep7, align 8
  %subtmp = sub i64 %b.len5, %fld.load8
  store i64 %subtmp, ptr %var.avail, align 8
  %var.load9 = load i64, ptr %var.avail, align 8
  %cmptmp10 = icmp sgt i64 %var.load9, 0
  br i1 %cmptmp10, label %choice.then11, label %choice.exit12

str_overflow_abort:                               ; preds = %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len2

choice.then11:                                    ; preds = %b.buf.len2
  %var.load13 = load i64, ptr %var.avail, align 8
  %var.load14 = load i64, ptr %var.max, align 8
  %cmptmp15 = icmp slt i64 %var.load13, %var.load14
  br i1 %cmptmp15, label %choice.then16, label %choice.else

choice.exit12:                                    ; preds = %b.grow_done, %b.buf.len2
  store i64 4096, ptr %var.chunk, align 8
  store i64 0, ptr %loop.idx.59, align 8
  br label %loop.header.59

choice.then16:                                    ; preds = %choice.then11
  %var.load18 = load i64, ptr %var.avail, align 8
  br label %choice.exit17

choice.else:                                      ; preds = %choice.then11
  %var.load19 = load i64, ptr %var.max, align 8
  br label %choice.exit17

choice.exit17:                                    ; preds = %choice.else, %choice.then16
  %choice.res = phi i64 [ %var.load18, %choice.then16 ], [ %var.load19, %choice.else ]
  store i64 %choice.res, ptr %var.take, align 8
  %b.load = load ptr, ptr %var.res_b, align 8
  %var.load20 = load ptr, ptr %var.r, align 8
  %fld.gep21 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load20, i32 0, i32 1
  %fld.load22 = load ptr, ptr %fld.gep21, align 8
  %b.read.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load22, i32 0, i32 0
  %b.read.len23 = load i64, ptr %b.read.len, align 8
  %b.read.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load22, i32 0, i32 1
  %b.read.data24 = load ptr, ptr %b.read.data, align 8
  %var.load25 = load ptr, ptr %var.r, align 8
  %fld.gep26 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load25, i32 0, i32 2
  %fld.load27 = load i64, ptr %fld.gep26, align 8
  %var.load28 = load ptr, ptr %var.r, align 8
  %fld.gep29 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load28, i32 0, i32 2
  %fld.load30 = load i64, ptr %fld.gep29, align 8
  %var.load31 = load i64, ptr %var.take, align 8
  %addtmp = add i64 %fld.load30, %var.load31
  %start.is_neg = icmp slt i64 %fld.load27, 0
  %rel.start = add i64 %b.read.len23, %fld.load27
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %fld.load27
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %b.read.len23
  %final.start = select i1 %start.gt.len, i64 %b.read.len23, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp, 0
  %rel.end = add i64 %b.read.len23, %addtmp
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %b.read.len23
  %final.end = select i1 %end.gt.len, i64 %b.read.len23, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %b.read.data24, i64 %final.start
  %arena.cur32 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %app.str.len33 = load i64, ptr %app.str.len, align 8
  %app.str.len34 = and i64 %app.str.len33, 281474976710655
  %str.tag = lshr i64 %app.str.len33, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit17
  %arena.cur35 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur35, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit17
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len36 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len36, i64 %app.str.len34)
  %sum37 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf38 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf38, label %str_overflow_abort40, label %b.app.new.len39

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

b.app.new.len39:                                  ; preds = %str_overflow_abort40, %str_ok
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap41 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap41, %sum37
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort40:                             ; preds = %str_ok
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len39

b.grow2:                                          ; preds = %b.app.new.len39
  %b.cap2 = mul i64 %b.cap41, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum37
  %b.new.cap = select i1 %b.cap.need, i64 %sum37, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len242 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data243 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum44 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf45 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf45, label %str_overflow_abort47, label %b.new.buf.len246

b.nogrow2:                                        ; preds = %b.app.new.len39
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len246
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %app.str.data49 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data50 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data50, i64 %b.app.cur.len36
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data49, i64 %app.str.len34, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data50, i64 %sum37
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum37, ptr %b.len.gep51, align 8
  %var.load52 = load ptr, ptr %var.r, align 8
  %var.load53 = load ptr, ptr %var.r, align 8
  %fld.gep54 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load53, i32 0, i32 2
  %fld.load55 = load i64, ptr %fld.gep54, align 8
  %var.load56 = load i64, ptr %var.take, align 8
  %addtmp57 = add i64 %fld.load55, %var.load56
  %fld.gep58 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load52, i32 0, i32 2
  store i64 %addtmp57, ptr %fld.gep58, align 8
  br label %choice.exit12

b.new.buf.len246:                                 ; preds = %str_overflow_abort47, %b.grow2
  %arena.cur48 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 %sum44)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data243, i64 %b.cur.len242, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len242
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort47:                             ; preds = %b.grow2
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len246

loop.header.59:                                   ; preds = %loop.latch.59, %choice.exit12
  %counter.load = load i64, ptr %loop.idx.59, align 8
  br label %loop.body.59

loop.body.59:                                     ; preds = %loop.header.59
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.59, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load59 = load i64, ptr %var.max, align 8
  %var.load60 = load ptr, ptr %var.res_b, align 8
  %b.len61 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load60, i32 0, i32 0
  %b.len62 = load i64, ptr %b.len61, align 8
  %subtmp63 = sub i64 %var.load59, %b.len62
  store i64 %subtmp63, ptr %var.rem, align 8
  %var.load64 = load i64, ptr %var.rem, align 8
  %cmptmp65 = icmp sle i64 %var.load64, 0
  br i1 %cmptmp65, label %choice.then66, label %choice.exit67

loop.exit.nat.59:                                 ; No predecessors!
  br label %loop.exit.59

loop.latch.59:                                    ; preds = %choice.exit92, %choice.then98
  %step.val = load i64, ptr %loop.step.59, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.59, align 8
  br label %loop.header.59

loop.exit.59:                                     ; preds = %choice.then113, %choice.exit106, %choice.then66, %loop.exit.nat.59
  %var.load129 = load ptr, ptr %var.res_b, align 8
  %b.len130 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load129, i32 0, i32 0
  %b.len131 = load i64, ptr %b.len130, align 8
  %cmptmp132 = icmp eq i64 %b.len131, 0
  br i1 %cmptmp132, label %choice.then133, label %choice.exit134

choice.then66:                                    ; preds = %loop.body.59
  br label %loop.exit.59

choice.exit67:                                    ; preds = %loop.body.59
  %var.load68 = load i64, ptr %var.rem, align 8
  %var.load69 = load i64, ptr %var.chunk, align 8
  %cmptmp70 = icmp slt i64 %var.load68, %var.load69
  br i1 %cmptmp70, label %choice.then71, label %choice.else72

choice.then71:                                    ; preds = %choice.exit67
  %var.load74 = load i64, ptr %var.rem, align 8
  br label %choice.exit73

choice.else72:                                    ; preds = %choice.exit67
  %var.load75 = load i64, ptr %var.chunk, align 8
  br label %choice.exit73

choice.exit73:                                    ; preds = %choice.else72, %choice.then71
  %choice.res76 = phi i64 [ %var.load74, %choice.then71 ], [ %var.load75, %choice.else72 ]
  store i64 %choice.res76, ptr %var.to_read, align 8
  %var.load77 = load ptr, ptr %var.res_b, align 8
  %b.len78 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load77, i32 0, i32 0
  %b.len79 = load i64, ptr %b.len78, align 8
  store i64 %b.len79, ptr %var.cur, align 8
  %var.load80 = load ptr, ptr %var.r, align 8
  %fld.gep81 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load80, i32 0, i32 0
  %fld.load82 = load i64, ptr %fld.gep81, align 8
  %var.load83 = load ptr, ptr %var.res_b, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load83, i32 0, i32 1
  %b.ptr84 = load ptr, ptr %b.ptr, align 8
  %var.load85 = load i64, ptr %var.cur, align 8
  %ptr.int.l = ptrtoint ptr %b.ptr84 to i64
  %addtmp86 = add i64 %ptr.int.l, %var.load85
  %ptr.res = inttoptr i64 %addtmp86 to ptr
  %addr.ffi.int = ptrtoint ptr %ptr.res to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load87 = load i64, ptr %var.to_read, align 8
  %coerce.trunc = trunc i64 %fld.load82 to i32
  %call.res = call i64 @read(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 %var.load87)
  store i64 %call.res, ptr %var.n, align 8
  %var.load88 = load i64, ptr %var.n, align 8
  %cmptmp89 = icmp slt i64 %var.load88, 0
  br i1 %cmptmp89, label %choice.then90, label %choice.else91

choice.then90:                                    ; preds = %choice.exit73
  %call.res93 = call ptr @__errno_location()
  %raw.int = ptrtoint ptr %call.res93 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

choice.else91:                                    ; preds = %choice.exit73
  %var.load111 = load i64, ptr %var.n, align 8
  %cmptmp112 = icmp eq i64 %var.load111, 0
  br i1 %cmptmp112, label %choice.then113, label %choice.else114

choice.exit92:                                    ; preds = %choice.exit115
  br label %loop.latch.59

addr_gen_check:                                   ; preds = %choice.then90
  %arena.cur94 = call ptr @dva_arena_current()
  %tag.valid95 = call i1 @dva_arena_validate_tag(ptr %arena.cur94, i64 %addr.tag)
  br i1 %tag.valid95, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.then90
  %raw.load = load volatile i32, ptr %raw.clean.ptr, align 4
  store i32 %raw.load, ptr %var.errno_val, align 4
  %var.load96 = load i32, ptr %var.errno_val, align 4
  %coerce.sext = sext i32 %var.load96 to i64
  %cmptmp97 = icmp eq i64 %coerce.sext, 4
  br i1 %cmptmp97, label %choice.then98, label %choice.exit99

addr_stale:                                       ; preds = %addr_gen_check
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

choice.then98:                                    ; preds = %addr_ok
  br label %loop.latch.59

choice.exit99:                                    ; preds = %addr_ok
  %var.load100 = load ptr, ptr %var.r, align 8
  %var.load101 = load i32, ptr %var.errno_val, align 4
  %coerce.sext102 = sext i32 %var.load101 to i64
  %cmptmp103 = icmp eq i64 %coerce.sext102, 11
  br i1 %cmptmp103, label %choice.then104, label %choice.else105

choice.then104:                                   ; preds = %choice.exit99
  br label %choice.exit106

choice.else105:                                   ; preds = %choice.exit99
  %var.load107 = load i32, ptr %var.errno_val, align 4
  %coerce.sext108 = sext i32 %var.load107 to i64
  br label %choice.exit106

choice.exit106:                                   ; preds = %choice.else105, %choice.then104
  %choice.res109 = phi i64 [ 11, %choice.then104 ], [ %coerce.sext108, %choice.else105 ]
  %fld.gep110 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load100, i32 0, i32 4
  store i64 %choice.res109, ptr %fld.gep110, align 8
  br label %loop.exit.59

choice.then113:                                   ; preds = %choice.else91
  %var.load116 = load ptr, ptr %var.r, align 8
  %fld.gep117 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load116, i32 0, i32 5
  store i1 true, ptr %fld.gep117, align 1
  %var.load118 = load ptr, ptr %var.r, align 8
  %fld.gep119 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load118, i32 0, i32 4
  store i64 0, ptr %fld.gep119, align 8
  br label %loop.exit.59

choice.else114:                                   ; preds = %choice.else91
  %var.load120 = load ptr, ptr %var.r, align 8
  %fld.gep121 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load120, i32 0, i32 4
  store i64 0, ptr %fld.gep121, align 8
  %var.load122 = load i64, ptr %var.cur, align 8
  %var.load123 = load i64, ptr %var.n, align 8
  %addtmp124 = add i64 %var.load122, %var.load123
  %b.load125 = load ptr, ptr %var.res_b, align 8
  %b.cap126 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load125, i32 0, i32 2
  %b.cap127 = load i64, ptr %b.cap126, align 8
  %b.len.neg = icmp slt i64 %addtmp124, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

choice.exit115:                                   ; preds = %b.len_ok
  br label %choice.exit92

b.len_big_check:                                  ; preds = %choice.else114
  %b.len.big = icmp sgt i64 %addtmp124, %b.cap127
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep128 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load125, i32 0, i32 0
  store i64 %addtmp124, ptr %b.len.gep128, align 8
  br label %choice.exit115

b.len_oob:                                        ; preds = %b.len_big_check, %choice.else114
  %7 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok

choice.then133:                                   ; preds = %loop.exit.59
  ret ptr null

choice.exit134:                                   ; preds = %ret.dead135, %loop.exit.59
  %var.load136 = load ptr, ptr %var.res_b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load136, i32 0, i32 0
  %b.freeze.len137 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load136, i32 0, i32 1
  %b.freeze.data138 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

ret.dead135:                                      ; No predecessors!
  br label %choice.exit134

b.freeze.check:                                   ; preds = %choice.exit134
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data138, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data138, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data138, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len137, 1
  %arena.cur139 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur139, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data138, i64 %b.freeze.len137, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len137
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit134
  %b.freeze.data140 = phi ptr [ %b.freeze.data138, %choice.exit134 ], [ %b.freeze.data138, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur141 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur141, i64 16)
  %str.build.len.gep142 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len137, ptr %str.build.len.gep142, align 8
  %str.build.data.gep143 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data140, ptr %str.build.data.gep143, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load136, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load136, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load136, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define { i1, i64 } @"io::read_byte"(ptr %0) #1 {
entry:
  %var.b = alloca i64, align 8
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  %var.load = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 2
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.r, align 8
  %fld.gep2 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load1, i32 0, i32 1
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load3, i32 0, i32 0
  %b.len4 = load i64, ptr %b.len, align 8
  %cmptmp = icmp sge i64 %fld.load, %b.len4
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load5 = load ptr, ptr %var.r, align 8
  %call.res = call i64 @"io::#refill"(ptr %var.load5)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %entry
  %var.load6 = load ptr, ptr %var.r, align 8
  %fld.gep7 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load6, i32 0, i32 2
  %fld.load8 = load i64, ptr %fld.gep7, align 8
  %var.load9 = load ptr, ptr %var.r, align 8
  %fld.gep10 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load9, i32 0, i32 1
  %fld.load11 = load ptr, ptr %fld.gep10, align 8
  %b.len12 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load11, i32 0, i32 0
  %b.len13 = load i64, ptr %b.len12, align 8
  %cmptmp14 = icmp sge i64 %fld.load8, %b.len13
  br i1 %cmptmp14, label %choice.then15, label %choice.exit16

choice.then15:                                    ; preds = %choice.exit
  ret { i1, i64 } zeroinitializer

choice.exit16:                                    ; preds = %ret.dead, %choice.exit
  %var.load17 = load ptr, ptr %var.r, align 8
  %fld.gep18 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load17, i32 0, i32 1
  %fld.load19 = load ptr, ptr %fld.gep18, align 8
  %b.read.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load19, i32 0, i32 0
  %b.read.len20 = load i64, ptr %b.read.len, align 8
  %b.read.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load19, i32 0, i32 1
  %b.read.data21 = load ptr, ptr %b.read.data, align 8
  %var.load22 = load ptr, ptr %var.r, align 8
  %fld.gep23 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load22, i32 0, i32 2
  %fld.load24 = load i64, ptr %fld.gep23, align 8
  %idx.neg = icmp slt i64 %fld.load24, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit16

idx_big_check:                                    ; preds = %choice.exit16
  %idx.big = icmp sge i64 %fld.load24, %b.read.len20
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %b.read.data21, i64 %fld.load24
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.b, align 8
  %var.load25 = load ptr, ptr %var.r, align 8
  %var.load26 = load ptr, ptr %var.r, align 8
  %fld.gep27 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load26, i32 0, i32 2
  %fld.load28 = load i64, ptr %fld.gep27, align 8
  %addtmp = add i64 %fld.load28, 1
  %fld.gep29 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load25, i32 0, i32 2
  store i64 %addtmp, ptr %fld.gep29, align 8
  %var.load30 = load i64, ptr %var.b, align 8
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load30, 1
  ret { i1, i64 } %ram.pay

idx_oob:                                          ; preds = %idx_big_check, %choice.exit16
  %1 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok
}

define ptr @"io::read_until"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.has_delim = alloca i1, align 1
  %var._46 = alloca i64, align 8
  %var._i45 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.61 = alloca i64, align 8
  %loop.idx.61 = alloca i64, align 8
  %"var.found_idx'" = alloca i64, align 8
  %var.scan_count = alloca i64, align 8
  %var.in_buf = alloca i64, align 8
  %var.rem_budget = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.60 = alloca i64, align 8
  %loop.idx.60 = alloca i64, align 8
  %"var.done'" = alloca i1, align 1
  %var.out = alloca ptr, align 8
  %var.max = alloca i64, align 8
  %var.delim = alloca i64, align 8
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  store i64 %1, ptr %var.delim, align 8
  store i64 %2, ptr %var.max, align 8
  %var.load = load i64, ptr %var.max, align 8
  %cmptmp = icmp sle i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.max, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %cap.neg = icmp slt i64 %var.load1, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load1
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len2

choice.exit:                                      ; preds = %choice.exit261, %choice.then
  %choice.res318 = phi ptr [ null, %choice.then ], [ %choice.res317, %choice.exit261 ]
  ret ptr %choice.res318

b.buf.len2:                                       ; preds = %str_overflow_abort, %choice.else
  %arena.cur3 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.out, align 8
  store i1 false, ptr %"var.done'", align 1
  store i64 0, ptr %loop.idx.60, align 8
  br label %loop.header.60

str_overflow_abort:                               ; preds = %choice.else
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len2

loop.header.60:                                   ; preds = %loop.latch.60, %b.buf.len2
  %counter.load = load i64, ptr %loop.idx.60, align 8
  br label %loop.body.60

loop.body.60:                                     ; preds = %loop.header.60
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.60, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load4 = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load4, i32 0, i32 2
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load5 = load ptr, ptr %var.r, align 8
  %fld.gep6 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load5, i32 0, i32 1
  %fld.load7 = load ptr, ptr %fld.gep6, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load7, i32 0, i32 0
  %b.len8 = load i64, ptr %b.len, align 8
  %cmptmp9 = icmp sge i64 %fld.load, %b.len8
  br i1 %cmptmp9, label %choice.then10, label %choice.exit11

loop.exit.nat.60:                                 ; No predecessors!
  br label %loop.exit.60

loop.latch.60:                                    ; preds = %choice.exit65
  %step.val256 = load i64, ptr %loop.step.60, align 8
  %loop.next257 = add i64 %counter.load, %step.val256
  store i64 %loop.next257, ptr %loop.idx.60, align 8
  br label %loop.header.60

loop.exit.60:                                     ; preds = %choice.exit249, %choice.exit69, %choice.then23, %choice.then15, %loop.exit.nat.60
  %var.load258 = load i1, ptr %"var.done'", align 1
  br i1 %var.load258, label %choice.then259, label %choice.else260

choice.then10:                                    ; preds = %loop.body.60
  %var.load12 = load ptr, ptr %var.r, align 8
  %call.res = call i64 @"io::#refill"(ptr %var.load12)
  store i64 %call.res, ptr %var.n, align 8
  %var.load13 = load i64, ptr %var.n, align 8
  %cmptmp14 = icmp sle i64 %var.load13, 0
  br i1 %cmptmp14, label %choice.then15, label %choice.exit16

choice.exit11:                                    ; preds = %choice.exit16, %loop.body.60
  %var.load17 = load i64, ptr %var.max, align 8
  %var.load18 = load ptr, ptr %var.out, align 8
  %b.len19 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load18, i32 0, i32 0
  %b.len20 = load i64, ptr %b.len19, align 8
  %subtmp = sub i64 %var.load17, %b.len20
  store i64 %subtmp, ptr %var.rem_budget, align 8
  %var.load21 = load i64, ptr %var.rem_budget, align 8
  %cmptmp22 = icmp sle i64 %var.load21, 0
  br i1 %cmptmp22, label %choice.then23, label %choice.exit24

choice.then15:                                    ; preds = %choice.then10
  br label %loop.exit.60

choice.exit16:                                    ; preds = %choice.then10
  br label %choice.exit11

choice.then23:                                    ; preds = %choice.exit11
  store i1 true, ptr %"var.done'", align 1
  br label %loop.exit.60

choice.exit24:                                    ; preds = %choice.exit11
  %var.load25 = load ptr, ptr %var.r, align 8
  %fld.gep26 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load25, i32 0, i32 1
  %fld.load27 = load ptr, ptr %fld.gep26, align 8
  %b.len28 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load27, i32 0, i32 0
  %b.len29 = load i64, ptr %b.len28, align 8
  %var.load30 = load ptr, ptr %var.r, align 8
  %fld.gep31 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load30, i32 0, i32 2
  %fld.load32 = load i64, ptr %fld.gep31, align 8
  %subtmp33 = sub i64 %b.len29, %fld.load32
  store i64 %subtmp33, ptr %var.in_buf, align 8
  %var.load34 = load i64, ptr %var.in_buf, align 8
  %var.load35 = load i64, ptr %var.rem_budget, align 8
  %cmptmp36 = icmp slt i64 %var.load34, %var.load35
  br i1 %cmptmp36, label %choice.then37, label %choice.else38

choice.then37:                                    ; preds = %choice.exit24
  %var.load40 = load i64, ptr %var.in_buf, align 8
  br label %choice.exit39

choice.else38:                                    ; preds = %choice.exit24
  %var.load41 = load i64, ptr %var.rem_budget, align 8
  br label %choice.exit39

choice.exit39:                                    ; preds = %choice.else38, %choice.then37
  %choice.res = phi i64 [ %var.load40, %choice.then37 ], [ %var.load41, %choice.else38 ]
  store i64 %choice.res, ptr %var.scan_count, align 8
  store i64 -1, ptr %"var.found_idx'", align 8
  %var.load42 = load i64, ptr %var.scan_count, align 8
  store i64 0, ptr %loop.idx.61, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.61

loop.header.61:                                   ; preds = %loop.latch.61, %choice.exit39
  %counter.load43 = load i64, ptr %loop.idx.61, align 8
  %loop.cond = icmp slt i64 %counter.load43, %var.load42
  br i1 %loop.cond, label %loop.body.61, label %loop.exit.nat.61

loop.body.61:                                     ; preds = %loop.header.61
  %loop.rel.i44 = sub i64 %counter.load43, 0
  store i64 1, ptr %loop.step.61, align 8
  store i64 %loop.rel.i44, ptr %var._i45, align 8
  store i64 %counter.load43, ptr %var._46, align 8
  store i64 %counter.load43, ptr %var.i, align 8
  %var.load47 = load ptr, ptr %var.r, align 8
  %fld.gep48 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load47, i32 0, i32 1
  %fld.load49 = load ptr, ptr %fld.gep48, align 8
  %b.read.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load49, i32 0, i32 0
  %b.read.len50 = load i64, ptr %b.read.len, align 8
  %b.read.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load49, i32 0, i32 1
  %b.read.data51 = load ptr, ptr %b.read.data, align 8
  %var.load52 = load ptr, ptr %var.r, align 8
  %fld.gep53 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load52, i32 0, i32 2
  %fld.load54 = load i64, ptr %fld.gep53, align 8
  %var.load55 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %fld.load54, %var.load55
  %idx.neg = icmp slt i64 %addtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

loop.exit.nat.61:                                 ; preds = %loop.header.61
  br label %loop.exit.61

loop.latch.61:                                    ; preds = %choice.exit59
  %step.val = load i64, ptr %loop.step.61, align 8
  %loop.next = add i64 %counter.load43, %step.val
  store i64 %loop.next, ptr %loop.idx.61, align 8
  br label %loop.header.61

loop.exit.61:                                     ; preds = %choice.then58, %loop.exit.nat.61
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load61 = load i64, ptr %"var.found_idx'", align 8
  %cmptmp62 = icmp sge i64 %var.load61, 0
  br i1 %cmptmp62, label %choice.then63, label %choice.else64

idx_big_check:                                    ; preds = %loop.body.61
  %idx.big = icmp sge i64 %addtmp, %b.read.len50
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %b.read.data51, i64 %addtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %var.load56 = load i64, ptr %var.delim, align 8
  %cmptmp57 = icmp eq i64 %s.byte.val, %var.load56
  br i1 %cmptmp57, label %choice.then58, label %choice.exit59

idx_oob:                                          ; preds = %idx_big_check, %loop.body.61
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then58:                                    ; preds = %idx_ok
  %var.load60 = load i64, ptr %var.i, align 8
  store i64 %var.load60, ptr %"var.found_idx'", align 8
  br label %loop.exit.61

choice.exit59:                                    ; preds = %idx_ok
  br label %loop.latch.61

choice.then63:                                    ; preds = %loop.exit.61
  %var.load66 = load i64, ptr %"var.found_idx'", align 8
  %cmptmp67 = icmp sgt i64 %var.load66, 0
  br i1 %cmptmp67, label %choice.then68, label %choice.exit69

choice.else64:                                    ; preds = %loop.exit.61
  %var.load113 = load i64, ptr %var.scan_count, align 8
  %cmptmp114 = icmp sgt i64 %var.load113, 0
  br i1 %cmptmp114, label %choice.then115, label %choice.exit116

choice.exit65:                                    ; preds = %choice.exit217
  br label %loop.latch.60

choice.then68:                                    ; preds = %choice.then63
  %b.load = load ptr, ptr %var.out, align 8
  %var.load70 = load ptr, ptr %var.r, align 8
  %fld.gep71 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load70, i32 0, i32 1
  %fld.load72 = load ptr, ptr %fld.gep71, align 8
  %b.read.len73 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load72, i32 0, i32 0
  %b.read.len74 = load i64, ptr %b.read.len73, align 8
  %b.read.data75 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load72, i32 0, i32 1
  %b.read.data76 = load ptr, ptr %b.read.data75, align 8
  %var.load77 = load ptr, ptr %var.r, align 8
  %fld.gep78 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load77, i32 0, i32 2
  %fld.load79 = load i64, ptr %fld.gep78, align 8
  %var.load80 = load ptr, ptr %var.r, align 8
  %fld.gep81 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load80, i32 0, i32 2
  %fld.load82 = load i64, ptr %fld.gep81, align 8
  %var.load83 = load i64, ptr %"var.found_idx'", align 8
  %addtmp84 = add i64 %fld.load82, %var.load83
  %start.is_neg = icmp slt i64 %fld.load79, 0
  %rel.start = add i64 %b.read.len74, %fld.load79
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %fld.load79
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %b.read.len74
  %final.start = select i1 %start.gt.len, i64 %b.read.len74, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp84, 0
  %rel.end = add i64 %b.read.len74, %addtmp84
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp84
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %b.read.len74
  %final.end = select i1 %end.gt.len, i64 %b.read.len74, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %b.read.data76, i64 %final.start
  %arena.cur85 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %app.str.len86 = load i64, ptr %app.str.len, align 8
  %app.str.len87 = and i64 %app.str.len86, 281474976710655
  %str.tag = lshr i64 %app.str.len86, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit69:                                    ; preds = %b.grow_done, %choice.then63
  %var.load105 = load ptr, ptr %var.r, align 8
  %var.load106 = load ptr, ptr %var.r, align 8
  %fld.gep107 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load106, i32 0, i32 2
  %fld.load108 = load i64, ptr %fld.gep107, align 8
  %var.load109 = load i64, ptr %"var.found_idx'", align 8
  %addtmp110 = add i64 %fld.load108, %var.load109
  %addtmp111 = add i64 %addtmp110, 1
  %fld.gep112 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load105, i32 0, i32 2
  store i64 %addtmp111, ptr %fld.gep112, align 8
  store i1 true, ptr %"var.done'", align 1
  br label %loop.exit.60

str_gen_check:                                    ; preds = %choice.then68
  %arena.cur88 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur88, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.then68
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len89 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len89, i64 %app.str.len87)
  %sum90 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf91 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf91, label %str_overflow_abort93, label %b.app.new.len92

str_stale:                                        ; preds = %str_gen_check
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

b.app.new.len92:                                  ; preds = %str_overflow_abort93, %str_ok
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap94 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap94, %sum90
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort93:                             ; preds = %str_ok
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len92

b.grow2:                                          ; preds = %b.app.new.len92
  %b.cap2 = mul i64 %b.cap94, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum90
  %b.new.cap = select i1 %b.cap.need, i64 %sum90, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len295 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data296 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum97 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf98 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf98, label %str_overflow_abort100, label %b.new.buf.len299

b.nogrow2:                                        ; preds = %b.app.new.len92
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len299
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %app.str.data102 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data103 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data103, i64 %b.app.cur.len89
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data102, i64 %app.str.len87, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data103, i64 %sum90
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep104 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum90, ptr %b.len.gep104, align 8
  br label %choice.exit69

b.new.buf.len299:                                 ; preds = %str_overflow_abort100, %b.grow2
  %arena.cur101 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur101, i64 %sum97)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data296, i64 %b.cur.len295, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len295
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort100:                            ; preds = %b.grow2
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len299

choice.then115:                                   ; preds = %choice.else64
  %b.load117 = load ptr, ptr %var.out, align 8
  %var.load118 = load ptr, ptr %var.r, align 8
  %fld.gep119 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load118, i32 0, i32 1
  %fld.load120 = load ptr, ptr %fld.gep119, align 8
  %b.read.len121 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load120, i32 0, i32 0
  %b.read.len122 = load i64, ptr %b.read.len121, align 8
  %b.read.data123 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load120, i32 0, i32 1
  %b.read.data124 = load ptr, ptr %b.read.data123, align 8
  %var.load125 = load ptr, ptr %var.r, align 8
  %fld.gep126 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load125, i32 0, i32 2
  %fld.load127 = load i64, ptr %fld.gep126, align 8
  %var.load128 = load ptr, ptr %var.r, align 8
  %fld.gep129 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load128, i32 0, i32 2
  %fld.load130 = load i64, ptr %fld.gep129, align 8
  %var.load131 = load i64, ptr %var.scan_count, align 8
  %addtmp132 = add i64 %fld.load130, %var.load131
  %start.is_neg133 = icmp slt i64 %fld.load127, 0
  %rel.start134 = add i64 %b.read.len122, %fld.load127
  %norm.start135 = select i1 %start.is_neg133, i64 %rel.start134, i64 %fld.load127
  %start.lt.0136 = icmp slt i64 %norm.start135, 0
  %c.start.0137 = select i1 %start.lt.0136, i64 0, i64 %norm.start135
  %start.gt.len138 = icmp sgt i64 %c.start.0137, %b.read.len122
  %final.start139 = select i1 %start.gt.len138, i64 %b.read.len122, i64 %c.start.0137
  %end.is_neg140 = icmp slt i64 %addtmp132, 0
  %rel.end141 = add i64 %b.read.len122, %addtmp132
  %norm.end142 = select i1 %end.is_neg140, i64 %rel.end141, i64 %addtmp132
  %end.lt.0143 = icmp slt i64 %norm.end142, 0
  %c.end.0144 = select i1 %end.lt.0143, i64 0, i64 %norm.end142
  %end.gt.len145 = icmp sgt i64 %c.end.0144, %b.read.len122
  %final.end146 = select i1 %end.gt.len145, i64 %b.read.len122, i64 %c.end.0144
  %view.empty147 = icmp sle i64 %final.end146, %final.start139
  %view.len.sub148 = sub i64 %final.end146, %final.start139
  %view.len149 = select i1 %view.empty147, i64 0, i64 %view.len.sub148
  %view.data150 = getelementptr i8, ptr %b.read.data124, i64 %final.start139
  %arena.cur151 = call ptr @dva_arena_current()
  %str.view152 = call ptr @dva_arena_alloc(ptr %arena.cur151, i64 16)
  %str.build.len.gep153 = getelementptr inbounds { i64, ptr }, ptr %str.view152, i32 0, i32 0
  store i64 %view.len149, ptr %str.build.len.gep153, align 8
  %str.build.data.gep154 = getelementptr inbounds { i64, ptr }, ptr %str.view152, i32 0, i32 1
  store ptr %view.data150, ptr %str.build.data.gep154, align 8
  %app.str.len155 = getelementptr inbounds { i64, ptr }, ptr %str.view152, i32 0, i32 0
  %app.str.len156 = load i64, ptr %app.str.len155, align 8
  %app.str.len157 = and i64 %app.str.len156, 281474976710655
  %str.tag158 = lshr i64 %app.str.len156, 48
  %str.immortal159 = icmp eq i64 %str.tag158, 0
  br i1 %str.immortal159, label %str_ok161, label %str_gen_check160

choice.exit116:                                   ; preds = %b.grow_done177, %choice.else64
  %var.load204 = load ptr, ptr %var.r, align 8
  %var.load205 = load ptr, ptr %var.r, align 8
  %fld.gep206 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load205, i32 0, i32 2
  %fld.load207 = load i64, ptr %fld.gep206, align 8
  %var.load208 = load i64, ptr %var.scan_count, align 8
  %addtmp209 = add i64 %fld.load207, %var.load208
  %fld.gep210 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load204, i32 0, i32 2
  store i64 %addtmp209, ptr %fld.gep210, align 8
  %var.load211 = load ptr, ptr %var.out, align 8
  %b.len212 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load211, i32 0, i32 0
  %b.len213 = load i64, ptr %b.len212, align 8
  %var.load214 = load i64, ptr %var.max, align 8
  %cmptmp215 = icmp sge i64 %b.len213, %var.load214
  br i1 %cmptmp215, label %choice.then216, label %choice.exit217

str_gen_check160:                                 ; preds = %choice.then115
  %arena.cur163 = call ptr @dva_arena_current()
  %tag.valid164 = call i1 @dva_arena_validate_tag(ptr %arena.cur163, i64 %str.tag158)
  br i1 %tag.valid164, label %str_ok161, label %str_stale162

str_ok161:                                        ; preds = %str_stale162, %str_gen_check160, %choice.then115
  %b.app.cur.len165 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load117, i32 0, i32 0
  %b.app.cur.len166 = load i64, ptr %b.app.cur.len165, align 8
  %b.app.new.len167 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len166, i64 %app.str.len157)
  %sum168 = extractvalue { i64, i1 } %b.app.new.len167, 0
  %ovf169 = extractvalue { i64, i1 } %b.app.new.len167, 1
  br i1 %ovf169, label %str_overflow_abort171, label %b.app.new.len170

str_stale162:                                     ; preds = %str_gen_check160
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok161

b.app.new.len170:                                 ; preds = %str_overflow_abort171, %str_ok161
  %b.cap172 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load117, i32 0, i32 2
  %b.cap173 = load i64, ptr %b.cap172, align 8
  %b.need.grow174 = icmp slt i64 %b.cap173, %sum168
  br i1 %b.need.grow174, label %b.grow2175, label %b.nogrow2176

str_overflow_abort171:                            ; preds = %str_ok161
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len170

b.grow2175:                                       ; preds = %b.app.new.len170
  %b.cap2178 = mul i64 %b.cap173, 2
  %b.cap.small179 = icmp slt i64 %b.cap2178, 16
  %b.cap.grow180 = select i1 %b.cap.small179, i64 16, i64 %b.cap2178
  %b.cap.need181 = icmp slt i64 %b.cap.grow180, %sum168
  %b.new.cap182 = select i1 %b.cap.need181, i64 %sum168, i64 %b.cap.grow180
  %b.cur.len2183 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load117, i32 0, i32 0
  %b.cur.len2184 = load i64, ptr %b.cur.len2183, align 8
  %b.cur.data2185 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load117, i32 0, i32 1
  %b.cur.data2186 = load ptr, ptr %b.cur.data2185, align 8
  %b.new.buf.len2187 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap182, i64 1)
  %sum188 = extractvalue { i64, i1 } %b.new.buf.len2187, 0
  %ovf189 = extractvalue { i64, i1 } %b.new.buf.len2187, 1
  br i1 %ovf189, label %str_overflow_abort191, label %b.new.buf.len2190

b.nogrow2176:                                     ; preds = %b.app.new.len170
  br label %b.grow_done177

b.grow_done177:                                   ; preds = %b.nogrow2176, %b.new.buf.len2190
  %app.str.data197 = getelementptr inbounds { i64, ptr }, ptr %str.view152, i32 0, i32 1
  %app.str.data198 = load ptr, ptr %app.str.data197, align 8
  %b.app.data199 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load117, i32 0, i32 1
  %b.app.data200 = load ptr, ptr %b.app.data199, align 8
  %b.app.dst201 = getelementptr i8, ptr %b.app.data200, i64 %b.app.cur.len166
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst201, ptr align 1 %app.str.data198, i64 %app.str.len157, i1 false)
  %b.app.nul202 = getelementptr i8, ptr %b.app.data200, i64 %sum168
  store i8 0, ptr %b.app.nul202, align 1
  %b.len.gep203 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load117, i32 0, i32 0
  store i64 %sum168, ptr %b.len.gep203, align 8
  br label %choice.exit116

b.new.buf.len2190:                                ; preds = %str_overflow_abort191, %b.grow2175
  %arena.cur192 = call ptr @dva_arena_current()
  %b.new.buf2193 = call ptr @dva_arena_alloc(ptr %arena.cur192, i64 %sum188)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2193, ptr align 1 %b.cur.data2186, i64 %b.cur.len2184, i1 false)
  %b.grow2.nul194 = getelementptr i8, ptr %b.new.buf2193, i64 %b.cur.len2184
  store i8 0, ptr %b.grow2.nul194, align 1
  %b.new.data2.gep195 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load117, i32 0, i32 1
  store ptr %b.new.buf2193, ptr %b.new.data2.gep195, align 8
  %b.new.cap2.gep196 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load117, i32 0, i32 2
  store i64 %b.new.cap182, ptr %b.new.cap2.gep196, align 8
  br label %b.grow_done177

str_overflow_abort191:                            ; preds = %b.grow2175
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2190

choice.then216:                                   ; preds = %choice.exit116
  %var.load218 = load ptr, ptr %var.r, align 8
  %fld.gep219 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load218, i32 0, i32 2
  %fld.load220 = load i64, ptr %fld.gep219, align 8
  %var.load221 = load ptr, ptr %var.r, align 8
  %fld.gep222 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load221, i32 0, i32 1
  %fld.load223 = load ptr, ptr %fld.gep222, align 8
  %b.len224 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load223, i32 0, i32 0
  %b.len225 = load i64, ptr %b.len224, align 8
  %cmptmp226 = icmp slt i64 %fld.load220, %b.len225
  br i1 %cmptmp226, label %and.62.then, label %and.62.else

choice.exit217:                                   ; preds = %choice.exit116
  br label %choice.exit65

and.62.then:                                      ; preds = %choice.then216
  %var.load227 = load ptr, ptr %var.r, align 8
  %fld.gep228 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load227, i32 0, i32 1
  %fld.load229 = load ptr, ptr %fld.gep228, align 8
  %b.read.len230 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load229, i32 0, i32 0
  %b.read.len231 = load i64, ptr %b.read.len230, align 8
  %b.read.data232 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load229, i32 0, i32 1
  %b.read.data233 = load ptr, ptr %b.read.data232, align 8
  %var.load234 = load ptr, ptr %var.r, align 8
  %fld.gep235 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load234, i32 0, i32 2
  %fld.load236 = load i64, ptr %fld.gep235, align 8
  %idx.neg237 = icmp slt i64 %fld.load236, 0
  br i1 %idx.neg237, label %idx_oob240, label %idx_big_check238

and.62.else:                                      ; preds = %choice.then216
  br label %and.62.exit

and.62.exit:                                      ; preds = %and.62.else, %idx_ok239
  %and.62.phi = phi i1 [ %cmptmp246, %idx_ok239 ], [ %cmptmp226, %and.62.else ]
  store i1 %and.62.phi, ptr %var.has_delim, align 1
  %var.load247 = load i1, ptr %var.has_delim, align 1
  br i1 %var.load247, label %choice.then248, label %choice.exit249

idx_big_check238:                                 ; preds = %and.62.then
  %idx.big241 = icmp sge i64 %fld.load236, %b.read.len231
  br i1 %idx.big241, label %idx_oob240, label %idx_ok239

idx_ok239:                                        ; preds = %idx_oob240, %idx_big_check238
  %s.byte.gep242 = getelementptr i8, ptr %b.read.data233, i64 %fld.load236
  %s.byte243 = load i8, ptr %s.byte.gep242, align 1
  %s.byte.val244 = zext i8 %s.byte243 to i64
  %var.load245 = load i64, ptr %var.delim, align 8
  %cmptmp246 = icmp eq i64 %s.byte.val244, %var.load245
  br label %and.62.exit

idx_oob240:                                       ; preds = %idx_big_check238, %and.62.then
  %11 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok239

choice.then248:                                   ; preds = %and.62.exit
  %var.load250 = load ptr, ptr %var.r, align 8
  %var.load251 = load ptr, ptr %var.r, align 8
  %fld.gep252 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load251, i32 0, i32 2
  %fld.load253 = load i64, ptr %fld.gep252, align 8
  %addtmp254 = add i64 %fld.load253, 1
  %fld.gep255 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load250, i32 0, i32 2
  store i64 %addtmp254, ptr %fld.gep255, align 8
  br label %choice.exit249

choice.exit249:                                   ; preds = %choice.then248, %and.62.exit
  store i1 true, ptr %"var.done'", align 1
  br label %loop.exit.60

choice.then259:                                   ; preds = %loop.exit.60
  %var.load262 = load ptr, ptr %var.out, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load262, i32 0, i32 0
  %b.freeze.len263 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load262, i32 0, i32 1
  %b.freeze.data264 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.else260:                                   ; preds = %loop.exit.60
  %var.load270 = load ptr, ptr %var.out, align 8
  %b.len271 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load270, i32 0, i32 0
  %b.len272 = load i64, ptr %b.len271, align 8
  %cmptmp273 = icmp sgt i64 %b.len272, 0
  br i1 %cmptmp273, label %choice.then274, label %choice.else275

choice.exit261:                                   ; preds = %choice.exit276, %b.freeze.done
  %choice.res317 = phi ptr [ %builder.freeze, %b.freeze.done ], [ %choice.res316, %choice.exit276 ]
  br label %choice.exit

b.freeze.check:                                   ; preds = %choice.then259
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data264, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data264, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data264, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len263, 1
  %arena.cur265 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur265, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data264, i64 %b.freeze.len263, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len263
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then259
  %b.freeze.data266 = phi ptr [ %b.freeze.data264, %choice.then259 ], [ %b.freeze.data264, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur267 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur267, i64 16)
  %str.build.len.gep268 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len263, ptr %str.build.len.gep268, align 8
  %str.build.data.gep269 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data266, ptr %str.build.data.gep269, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load262, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load262, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load262, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit261

choice.then274:                                   ; preds = %choice.else260
  %var.load277 = load ptr, ptr %var.out, align 8
  %b.freeze.len278 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load277, i32 0, i32 0
  %b.freeze.len279 = load i64, ptr %b.freeze.len278, align 8
  %b.freeze.data280 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load277, i32 0, i32 1
  %b.freeze.data281 = load ptr, ptr %b.freeze.data280, align 8
  %b.freeze.arena282 = call ptr @dva_arena_current()
  %b.freeze.nc.gep283 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena282, i32 0, i32 1
  %b.freeze.nc284 = load i64, ptr %b.freeze.nc.gep283, align 8
  %b.freeze.has.chunk285 = icmp sgt i64 %b.freeze.nc284, 0
  br i1 %b.freeze.has.chunk285, label %b.freeze.check286, label %b.freeze.done288

choice.else275:                                   ; preds = %choice.else260
  br label %choice.exit276

choice.exit276:                                   ; preds = %choice.else275, %b.freeze.done288
  %choice.res316 = phi ptr [ %builder.freeze310, %b.freeze.done288 ], [ null, %choice.else275 ]
  br label %choice.exit261

b.freeze.check286:                                ; preds = %choice.then274
  %b.freeze.last.idx289 = sub i64 %b.freeze.nc284, 1
  %b.freeze.chunks.gep290 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena282, i32 0, i32 3
  %b.freeze.chunk.slot291 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep290, i64 0, i64 %b.freeze.last.idx289
  %b.freeze.last.chunk292 = load ptr, ptr %b.freeze.chunk.slot291, align 8
  %b.freeze.off.gep293 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena282, i32 0, i32 2
  %b.freeze.off294 = load i64, ptr %b.freeze.off.gep293, align 8
  %b.freeze.bump295 = getelementptr i8, ptr %b.freeze.last.chunk292, i64 %b.freeze.off294
  %b.freeze.cap.gep296 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena282, i32 0, i32 0
  %b.freeze.cap297 = load i64, ptr %b.freeze.cap.gep296, align 8
  %b.freeze.chunk.end298 = getelementptr i8, ptr %b.freeze.last.chunk292, i64 %b.freeze.cap297
  %b.freeze.ge.chunk299 = icmp uge ptr %b.freeze.data281, %b.freeze.last.chunk292
  %b.freeze.lt.end300 = icmp ult ptr %b.freeze.data281, %b.freeze.chunk.end298
  %b.freeze.in.chunk301 = and i1 %b.freeze.ge.chunk299, %b.freeze.lt.end300
  %b.freeze.ge.bump302 = icmp uge ptr %b.freeze.data281, %b.freeze.bump295
  %b.freeze.reaped303 = and i1 %b.freeze.in.chunk301, %b.freeze.ge.bump302
  br i1 %b.freeze.reaped303, label %b.freeze.copy287, label %b.freeze.done288

b.freeze.copy287:                                 ; preds = %b.freeze.check286
  %b.freeze.alen304 = add i64 %b.freeze.len279, 1
  %arena.cur305 = call ptr @dva_arena_current()
  %b.freeze.fresh306 = call ptr @dva_arena_alloc(ptr %arena.cur305, i64 %b.freeze.alen304)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh306, ptr align 1 %b.freeze.data281, i64 %b.freeze.len279, i1 false)
  %b.freeze.nul307 = getelementptr i8, ptr %b.freeze.fresh306, i64 %b.freeze.len279
  store i8 0, ptr %b.freeze.nul307, align 1
  br label %b.freeze.done288

b.freeze.done288:                                 ; preds = %b.freeze.copy287, %b.freeze.check286, %choice.then274
  %b.freeze.data308 = phi ptr [ %b.freeze.data281, %choice.then274 ], [ %b.freeze.data281, %b.freeze.check286 ], [ %b.freeze.fresh306, %b.freeze.copy287 ]
  %arena.cur309 = call ptr @dva_arena_current()
  %builder.freeze310 = call ptr @dva_arena_alloc(ptr %arena.cur309, i64 16)
  %str.build.len.gep311 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze310, i32 0, i32 0
  store i64 %b.freeze.len279, ptr %str.build.len.gep311, align 8
  %str.build.data.gep312 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze310, i32 0, i32 1
  store ptr %b.freeze.data308, ptr %str.build.data.gep312, align 8
  %b.freeze.rst.len313 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load277, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len313, align 8
  %b.freeze.rst.data314 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load277, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data314, align 8
  %b.freeze.rst.cap315 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load277, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap315, align 8
  br label %choice.exit276
}

define ptr @"io::read_line"(ptr %0, i64 %1) #1 {
entry:
  %var.end_idx = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.line = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.res = alloca ptr, align 8
  %var.max = alloca i64, align 8
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  store i64 %1, ptr %var.max, align 8
  %var.load = load ptr, ptr %var.r, align 8
  %var.load1 = load i64, ptr %var.max, align 8
  %call.res = call ptr @"io::read_until"(ptr %var.load, i64 10, i64 %var.load1)
  store ptr %call.res, ptr %var.res, align 8
  %var.load2 = load ptr, ptr %var.res, align 8
  %niche.ne.null = icmp ne ptr %var.load2, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load2, ptr %var._, align 8
  store ptr %var.load2, ptr %var.line, align 8
  %var.load3 = load ptr, ptr %var.line, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query4 = load i64, ptr %str.len.query, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %str.tag = lshr i64 %str.len.query4, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit22
  %choice.res41 = phi ptr [ %choice.res, %choice.exit22 ], [ null, %choice.else ]
  ret ptr %choice.res41

str_gen_check:                                    ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.then
  store i64 %str.len.query5, ptr %var.n, align 8
  %var.load6 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sgt i64 %var.load6, 0
  br i1 %cmptmp, label %and.63.then, label %and.63.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.63.then:                                      ; preds = %str_ok
  %var.load7 = load ptr, ptr %var.line, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %str.tag10 = lshr i64 %s.read.len8, 48
  %str.immortal11 = icmp eq i64 %str.tag10, 0
  br i1 %str.immortal11, label %str_ok13, label %str_gen_check12

and.63.else:                                      ; preds = %str_ok
  br label %and.63.exit

and.63.exit:                                      ; preds = %and.63.else, %idx_ok
  %and.63.phi = phi i1 [ %cmptmp19, %idx_ok ], [ %cmptmp, %and.63.else ]
  br i1 %and.63.phi, label %choice.then20, label %choice.else21

str_gen_check12:                                  ; preds = %and.63.then
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag10)
  br i1 %tag.valid16, label %str_ok13, label %str_stale14

str_ok13:                                         ; preds = %str_stale14, %str_gen_check12, %and.63.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %s.read.data17 = load ptr, ptr %s.read.data, align 8
  %var.load18 = load i64, ptr %var.n, align 8
  %subtmp = sub i64 %var.load18, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale14:                                      ; preds = %str_gen_check12
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok13

idx_big_check:                                    ; preds = %str_ok13
  %idx.big = icmp sge i64 %subtmp, %s.read.len9
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data17, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp19 = icmp eq i64 %s.byte.val, 13
  br label %and.63.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok13
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then20:                                    ; preds = %and.63.exit
  %var.load23 = load i64, ptr %var.n, align 8
  %subtmp24 = sub i64 %var.load23, 1
  store i64 %subtmp24, ptr %var.end_idx, align 8
  %var.load25 = load ptr, ptr %var.line, align 8
  %s.read.len26 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %s.read.len27 = load i64, ptr %s.read.len26, align 8
  %s.read.len28 = and i64 %s.read.len27, 281474976710655
  %str.tag29 = lshr i64 %s.read.len27, 48
  %str.immortal30 = icmp eq i64 %str.tag29, 0
  br i1 %str.immortal30, label %str_ok32, label %str_gen_check31

choice.else21:                                    ; preds = %and.63.exit
  %var.load40 = load ptr, ptr %var.line, align 8
  br label %choice.exit22

choice.exit22:                                    ; preds = %choice.else21, %str_ok32
  %choice.res = phi ptr [ %str.view, %str_ok32 ], [ %var.load40, %choice.else21 ]
  br label %choice.exit

str_gen_check31:                                  ; preds = %choice.then20
  %arena.cur34 = call ptr @dva_arena_current()
  %tag.valid35 = call i1 @dva_arena_validate_tag(ptr %arena.cur34, i64 %str.tag29)
  br i1 %tag.valid35, label %str_ok32, label %str_stale33

str_ok32:                                         ; preds = %str_stale33, %str_gen_check31, %choice.then20
  %s.read.data36 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %s.read.data37 = load ptr, ptr %s.read.data36, align 8
  %var.load38 = load i64, ptr %var.end_idx, align 8
  %rel.start = add i64 %s.read.len28, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len28
  %final.start = select i1 %start.gt.len, i64 %s.read.len28, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load38, 0
  %rel.end = add i64 %s.read.len28, %var.load38
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load38
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len28
  %final.end = select i1 %end.gt.len, i64 %s.read.len28, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data37, i64 %final.start
  %arena.cur39 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit22

str_stale33:                                      ; preds = %str_gen_check31
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok32
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
