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
@clo.const.16 = internal constant { ptr, ptr } { ptr @"io::read_byte", ptr null }
@"var.io::read_byte" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"io::read_until", ptr null }
@"var.io::read_until" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
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
  %loop.step.48 = alloca i64, align 8
  %loop.idx.48 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.48, align 8
  br label %loop.header.48

choice.case:                                      ; preds = %str_ok
  ret i64 0

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.48:                                   ; preds = %loop.latch.48, %choice.exit
  %counter.load = load i64, ptr %loop.idx.48, align 8
  br label %loop.body.48

loop.body.48:                                     ; preds = %loop.header.48
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.48, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load4 = load i64, ptr %"var.off'", align 8
  %var.load5 = load i64, ptr %var.total, align 8
  %cmptmp = icmp sge i64 %var.load4, %var.load5
  br i1 %cmptmp, label %choice.then, label %choice.exit6

loop.exit.nat.48:                                 ; No predecessors!
  br label %loop.exit.48

loop.latch.48:                                    ; preds = %choice.exit17, %choice.then26
  %step.val = load i64, ptr %loop.step.48, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.48, align 8
  br label %loop.header.48

loop.exit.48:                                     ; preds = %choice.case36, %choice.else31, %choice.then, %loop.exit.nat.48
  %var.load42 = load i64, ptr %"var.off'", align 8
  ret i64 %var.load42

choice.then:                                      ; preds = %loop.body.48
  br label %loop.exit.48

choice.exit6:                                     ; preds = %loop.body.48
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
  br label %loop.latch.48

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
  br label %loop.latch.48

choice.else:                                      ; preds = %addr_ok
  %var.load28 = load i64, ptr %"var.off'", align 8
  %cmptmp29 = icmp eq i64 %var.load28, 0
  br i1 %cmptmp29, label %choice.then30, label %choice.else31

choice.exit27:                                    ; preds = %choice.exit32
  br label %choice.exit17

choice.then30:                                    ; preds = %choice.else
  ret i64 -1

choice.else31:                                    ; preds = %choice.else
  br label %loop.exit.48

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
  br label %loop.exit.48

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
  %loop.step.49 = alloca i64, align 8
  %loop.idx.49 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.49, align 8
  br label %loop.header.49

choice.case:                                      ; preds = %str_ok10
  ret i64 0

choice.next:                                      ; preds = %str_ok10
  br label %choice.exit

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.49:                                   ; preds = %loop.latch.49, %choice.exit
  %counter.load = load i64, ptr %loop.idx.49, align 8
  br label %loop.body.49

loop.body.49:                                     ; preds = %loop.header.49
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.49, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load17 = load i64, ptr %"var.off'", align 8
  %var.load18 = load i64, ptr %var.total, align 8
  %cmptmp = icmp sge i64 %var.load17, %var.load18
  br i1 %cmptmp, label %choice.then, label %choice.exit19

loop.exit.nat.49:                                 ; No predecessors!
  br label %loop.exit.49

loop.latch.49:                                    ; preds = %choice.exit24, %choice.then117, %choice.then56
  %step.val = load i64, ptr %loop.step.49, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.49, align 8
  br label %loop.header.49

loop.exit.49:                                     ; preds = %choice.case127, %choice.else122, %choice.case66, %choice.else61, %choice.then, %loop.exit.nat.49
  %var.load133 = load i64, ptr %"var.off'", align 8
  ret i64 %var.load133

choice.then:                                      ; preds = %loop.body.49
  br label %loop.exit.49

choice.exit19:                                    ; preds = %loop.body.49
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
  br label %loop.latch.49

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
  br label %loop.latch.49

choice.exit57:                                    ; preds = %addr_ok
  %var.load58 = load i64, ptr %"var.off'", align 8
  %cmptmp59 = icmp eq i64 %var.load58, 0
  br i1 %cmptmp59, label %choice.then60, label %choice.else61

choice.then60:                                    ; preds = %choice.exit57
  ret i64 -1

choice.else61:                                    ; preds = %choice.exit57
  br label %loop.exit.49

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
  br label %loop.exit.49

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
  br label %loop.latch.49

choice.exit118:                                   ; preds = %addr_ok108
  %var.load119 = load i64, ptr %"var.off'", align 8
  %cmptmp120 = icmp eq i64 %var.load119, 0
  br i1 %cmptmp120, label %choice.then121, label %choice.else122

choice.then121:                                   ; preds = %choice.exit118
  ret i64 -1

choice.else122:                                   ; preds = %choice.exit118
  br label %loop.exit.49

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
  br label %loop.exit.49

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
  %loop.step.50 = alloca i64, align 8
  %loop.idx.50 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.50, align 8
  br label %loop.header.50

choice.exit54:                                    ; preds = %loop.exit.50, %choice.then52
  %choice.res126 = phi i64 [ 0, %choice.then52 ], [ %var.load125, %loop.exit.50 ]
  ret i64 %choice.res126

loop.header.50:                                   ; preds = %loop.latch.50, %choice.else53
  %counter.load = load i64, ptr %loop.idx.50, align 8
  br label %loop.body.50

loop.body.50:                                     ; preds = %loop.header.50
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.50, align 8
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

loop.exit.nat.50:                                 ; No predecessors!
  br label %loop.exit.50

loop.latch.50:                                    ; preds = %choice.exit73, %choice.then87
  %step.val = load i64, ptr %loop.step.50, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.50, align 8
  br label %loop.header.50

loop.exit.50:                                     ; preds = %b.len_ok118, %choice.then103, %choice.exit95, %loop.exit.nat.50
  %var.load125 = load i64, ptr %"var.n'", align 8
  br label %choice.exit54

choice.then71:                                    ; preds = %loop.body.50
  %call.res74 = call ptr @__errno_location()
  %raw.int75 = ptrtoint ptr %call.res74 to i64
  %raw.clean.int76 = and i64 %raw.int75, 281474976710655
  %raw.clean.ptr77 = inttoptr i64 %raw.clean.int76 to ptr
  %addr.tag78 = lshr i64 %raw.int75, 48
  %addr.immortal79 = icmp eq i64 %addr.tag78, 0
  br i1 %addr.immortal79, label %addr_ok81, label %addr_gen_check80

choice.else72:                                    ; preds = %loop.body.50
  %var.load101 = load i64, ptr %var.n, align 8
  %cmptmp102 = icmp eq i64 %var.load101, 0
  br i1 %cmptmp102, label %choice.then103, label %choice.else104

choice.exit73:                                    ; preds = %choice.exit105
  br label %loop.latch.50

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
  br label %loop.latch.50

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
  br label %loop.exit.50

choice.then103:                                   ; preds = %choice.else72
  %var.load106 = load ptr, ptr %var.r, align 8
  %fld.gep107 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load106, i32 0, i32 5
  store i1 true, ptr %fld.gep107, align 1
  %var.load108 = load ptr, ptr %var.r, align 8
  %fld.gep109 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load108, i32 0, i32 4
  store i64 0, ptr %fld.gep109, align 8
  store i64 0, ptr %"var.n'", align 8
  br label %loop.exit.50

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
  br label %loop.exit.50

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
  %var.load40 = load i64, ptr %var.take, align 8
  %cmptmp41 = icmp sgt i64 %var.load40, 0
  br i1 %cmptmp41, label %choice.then42, label %choice.exit43

str_overflow_abort:                               ; preds = %choice.exit34
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len38

choice.then42:                                    ; preds = %b.buf.len38
  %var.load44 = load ptr, ptr %var.res, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load44, i32 0, i32 1
  %b.ptr45 = load ptr, ptr %b.ptr, align 8
  %var.load46 = load ptr, ptr %var.r, align 8
  %fld.gep47 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load46, i32 0, i32 1
  %fld.load48 = load ptr, ptr %fld.gep47, align 8
  %b.ptr49 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load48, i32 0, i32 1
  %b.ptr50 = load ptr, ptr %b.ptr49, align 8
  %var.load51 = load ptr, ptr %var.r, align 8
  %fld.gep52 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load51, i32 0, i32 2
  %fld.load53 = load i64, ptr %fld.gep52, align 8
  %ptr.int.l = ptrtoint ptr %b.ptr50 to i64
  %addtmp = add i64 %ptr.int.l, %fld.load53
  %ptr.res = inttoptr i64 %addtmp to ptr
  %var.load54 = load i64, ptr %var.take, align 8
  %raw.int = ptrtoint ptr %b.ptr45 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

choice.exit43:                                    ; preds = %addr_ok62, %b.buf.len38
  %var.load66 = load i64, ptr %var.take, align 8
  %b.load = load ptr, ptr %var.res, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap67 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load66, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

addr_gen_check:                                   ; preds = %choice.then42
  %arena.cur55 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur55, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.then42
  %raw.int56 = ptrtoint ptr %ptr.res to i64
  %raw.clean.int57 = and i64 %raw.int56, 281474976710655
  %raw.clean.ptr58 = inttoptr i64 %raw.clean.int57 to ptr
  %addr.tag59 = lshr i64 %raw.int56, 48
  %addr.immortal60 = icmp eq i64 %addr.tag59, 0
  br i1 %addr.immortal60, label %addr_ok62, label %addr_gen_check61

addr_stale:                                       ; preds = %addr_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check61:                                 ; preds = %addr_ok
  %arena.cur64 = call ptr @dva_arena_current()
  %tag.valid65 = call i1 @dva_arena_validate_tag(ptr %arena.cur64, i64 %addr.tag59)
  br i1 %tag.valid65, label %addr_ok62, label %addr_stale63

addr_ok62:                                        ; preds = %addr_stale63, %addr_gen_check61, %addr_ok
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr58, i64 %var.load54, i1 false)
  br label %choice.exit43

addr_stale63:                                     ; preds = %addr_gen_check61
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok62

b.len_big_check:                                  ; preds = %choice.exit43
  %b.len.big = icmp sgt i64 %var.load66, %b.cap67
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep68 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load66, ptr %b.len.gep68, align 8
  %var.load69 = load ptr, ptr %var.r, align 8
  %var.load70 = load ptr, ptr %var.r, align 8
  %fld.gep71 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load70, i32 0, i32 2
  %fld.load72 = load i64, ptr %fld.gep71, align 8
  %var.load73 = load i64, ptr %var.take, align 8
  %addtmp74 = add i64 %fld.load72, %var.load73
  %fld.gep75 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load69, i32 0, i32 2
  store i64 %addtmp74, ptr %fld.gep75, align 8
  %var.load76 = load ptr, ptr %var.res, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load76, i32 0, i32 0
  %b.freeze.len77 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load76, i32 0, i32 1
  %b.freeze.data78 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.len_oob:                                        ; preds = %b.len_big_check, %choice.exit43
  %5 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok

b.freeze.check:                                   ; preds = %b.len_ok
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data78, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data78, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data78, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len77, 1
  %arena.cur79 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur79, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data78, i64 %b.freeze.len77, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len77
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.len_ok
  %b.freeze.data80 = phi ptr [ %b.freeze.data78, %b.len_ok ], [ %b.freeze.data78, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur81 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len77, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data80, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load76, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load76, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load76, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define ptr @"io::read_all"(ptr %0, i64 %1) #1 {
entry:
  %var.errno_val = alloca i32, align 4
  %var.n = alloca i64, align 8
  %var.cur82 = alloca i64, align 8
  %var.to_read = alloca i64, align 8
  %var.rem = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.51 = alloca i64, align 8
  %loop.idx.51 = alloca i64, align 8
  %var.chunk = alloca i64, align 8
  %var.cur = alloca i64, align 8
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

choice.exit12:                                    ; preds = %b.len_ok, %b.buf.len2
  store i64 4096, ptr %var.chunk, align 8
  store i64 0, ptr %loop.idx.51, align 8
  br label %loop.header.51

choice.then16:                                    ; preds = %choice.then11
  %var.load18 = load i64, ptr %var.avail, align 8
  br label %choice.exit17

choice.else:                                      ; preds = %choice.then11
  %var.load19 = load i64, ptr %var.max, align 8
  br label %choice.exit17

choice.exit17:                                    ; preds = %choice.else, %choice.then16
  %choice.res = phi i64 [ %var.load18, %choice.then16 ], [ %var.load19, %choice.else ]
  store i64 %choice.res, ptr %var.take, align 8
  %var.load20 = load ptr, ptr %var.res_b, align 8
  %b.len21 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load20, i32 0, i32 0
  %b.len22 = load i64, ptr %b.len21, align 8
  store i64 %b.len22, ptr %var.cur, align 8
  %var.load23 = load ptr, ptr %var.res_b, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load23, i32 0, i32 1
  %b.ptr24 = load ptr, ptr %b.ptr, align 8
  %var.load25 = load i64, ptr %var.cur, align 8
  %ptr.int.l = ptrtoint ptr %b.ptr24 to i64
  %addtmp = add i64 %ptr.int.l, %var.load25
  %ptr.res = inttoptr i64 %addtmp to ptr
  %var.load26 = load ptr, ptr %var.r, align 8
  %fld.gep27 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load26, i32 0, i32 1
  %fld.load28 = load ptr, ptr %fld.gep27, align 8
  %b.ptr29 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load28, i32 0, i32 1
  %b.ptr30 = load ptr, ptr %b.ptr29, align 8
  %var.load31 = load ptr, ptr %var.r, align 8
  %fld.gep32 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load31, i32 0, i32 2
  %fld.load33 = load i64, ptr %fld.gep32, align 8
  %ptr.int.l34 = ptrtoint ptr %b.ptr30 to i64
  %addtmp35 = add i64 %ptr.int.l34, %fld.load33
  %ptr.res36 = inttoptr i64 %addtmp35 to ptr
  %var.load37 = load i64, ptr %var.take, align 8
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

addr_gen_check:                                   ; preds = %choice.exit17
  %arena.cur38 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur38, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.exit17
  %raw.int39 = ptrtoint ptr %ptr.res36 to i64
  %raw.clean.int40 = and i64 %raw.int39, 281474976710655
  %raw.clean.ptr41 = inttoptr i64 %raw.clean.int40 to ptr
  %addr.tag42 = lshr i64 %raw.int39, 48
  %addr.immortal43 = icmp eq i64 %addr.tag42, 0
  br i1 %addr.immortal43, label %addr_ok45, label %addr_gen_check44

addr_stale:                                       ; preds = %addr_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check44:                                 ; preds = %addr_ok
  %arena.cur47 = call ptr @dva_arena_current()
  %tag.valid48 = call i1 @dva_arena_validate_tag(ptr %arena.cur47, i64 %addr.tag42)
  br i1 %tag.valid48, label %addr_ok45, label %addr_stale46

addr_ok45:                                        ; preds = %addr_stale46, %addr_gen_check44, %addr_ok
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr41, i64 %var.load37, i1 false)
  %var.load49 = load i64, ptr %var.cur, align 8
  %var.load50 = load i64, ptr %var.take, align 8
  %addtmp51 = add i64 %var.load49, %var.load50
  %b.load = load ptr, ptr %var.res_b, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap52 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %addtmp51, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

addr_stale46:                                     ; preds = %addr_gen_check44
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok45

b.len_big_check:                                  ; preds = %addr_ok45
  %b.len.big = icmp sgt i64 %addtmp51, %b.cap52
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %addtmp51, ptr %b.len.gep53, align 8
  %var.load54 = load ptr, ptr %var.r, align 8
  %var.load55 = load ptr, ptr %var.r, align 8
  %fld.gep56 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load55, i32 0, i32 2
  %fld.load57 = load i64, ptr %fld.gep56, align 8
  %var.load58 = load i64, ptr %var.take, align 8
  %addtmp59 = add i64 %fld.load57, %var.load58
  %fld.gep60 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load54, i32 0, i32 2
  store i64 %addtmp59, ptr %fld.gep60, align 8
  br label %choice.exit12

b.len_oob:                                        ; preds = %b.len_big_check, %addr_ok45
  %5 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok

loop.header.51:                                   ; preds = %loop.latch.51, %choice.exit12
  %counter.load = load i64, ptr %loop.idx.51, align 8
  br label %loop.body.51

loop.body.51:                                     ; preds = %loop.header.51
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.51, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load61 = load i64, ptr %var.max, align 8
  %var.load62 = load ptr, ptr %var.res_b, align 8
  %b.len63 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load62, i32 0, i32 0
  %b.len64 = load i64, ptr %b.len63, align 8
  %subtmp65 = sub i64 %var.load61, %b.len64
  store i64 %subtmp65, ptr %var.rem, align 8
  %var.load66 = load i64, ptr %var.rem, align 8
  %cmptmp67 = icmp sle i64 %var.load66, 0
  br i1 %cmptmp67, label %choice.then68, label %choice.exit69

loop.exit.nat.51:                                 ; No predecessors!
  br label %loop.exit.51

loop.latch.51:                                    ; preds = %choice.exit98, %choice.then112
  %step.val = load i64, ptr %loop.step.51, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.51, align 8
  br label %loop.header.51

loop.exit.51:                                     ; preds = %choice.then127, %choice.exit120, %choice.then68, %loop.exit.nat.51
  %var.load148 = load ptr, ptr %var.res_b, align 8
  %b.len149 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load148, i32 0, i32 0
  %b.len150 = load i64, ptr %b.len149, align 8
  %cmptmp151 = icmp eq i64 %b.len150, 0
  br i1 %cmptmp151, label %choice.then152, label %choice.exit153

choice.then68:                                    ; preds = %loop.body.51
  br label %loop.exit.51

choice.exit69:                                    ; preds = %loop.body.51
  %var.load70 = load i64, ptr %var.rem, align 8
  %var.load71 = load i64, ptr %var.chunk, align 8
  %cmptmp72 = icmp slt i64 %var.load70, %var.load71
  br i1 %cmptmp72, label %choice.then73, label %choice.else74

choice.then73:                                    ; preds = %choice.exit69
  %var.load76 = load i64, ptr %var.rem, align 8
  br label %choice.exit75

choice.else74:                                    ; preds = %choice.exit69
  %var.load77 = load i64, ptr %var.chunk, align 8
  br label %choice.exit75

choice.exit75:                                    ; preds = %choice.else74, %choice.then73
  %choice.res78 = phi i64 [ %var.load76, %choice.then73 ], [ %var.load77, %choice.else74 ]
  store i64 %choice.res78, ptr %var.to_read, align 8
  %var.load79 = load ptr, ptr %var.res_b, align 8
  %b.len80 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load79, i32 0, i32 0
  %b.len81 = load i64, ptr %b.len80, align 8
  store i64 %b.len81, ptr %var.cur82, align 8
  %var.load83 = load ptr, ptr %var.r, align 8
  %fld.gep84 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load83, i32 0, i32 0
  %fld.load85 = load i64, ptr %fld.gep84, align 8
  %var.load86 = load ptr, ptr %var.res_b, align 8
  %b.ptr87 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load86, i32 0, i32 1
  %b.ptr88 = load ptr, ptr %b.ptr87, align 8
  %var.load89 = load i64, ptr %var.cur82, align 8
  %ptr.int.l90 = ptrtoint ptr %b.ptr88 to i64
  %addtmp91 = add i64 %ptr.int.l90, %var.load89
  %ptr.res92 = inttoptr i64 %addtmp91 to ptr
  %addr.ffi.int = ptrtoint ptr %ptr.res92 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load93 = load i64, ptr %var.to_read, align 8
  %coerce.trunc = trunc i64 %fld.load85 to i32
  %call.res = call i64 @read(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 %var.load93)
  store i64 %call.res, ptr %var.n, align 8
  %var.load94 = load i64, ptr %var.n, align 8
  %cmptmp95 = icmp slt i64 %var.load94, 0
  br i1 %cmptmp95, label %choice.then96, label %choice.else97

choice.then96:                                    ; preds = %choice.exit75
  %call.res99 = call ptr @__errno_location()
  %raw.int100 = ptrtoint ptr %call.res99 to i64
  %raw.clean.int101 = and i64 %raw.int100, 281474976710655
  %raw.clean.ptr102 = inttoptr i64 %raw.clean.int101 to ptr
  %addr.tag103 = lshr i64 %raw.int100, 48
  %addr.immortal104 = icmp eq i64 %addr.tag103, 0
  br i1 %addr.immortal104, label %addr_ok106, label %addr_gen_check105

choice.else97:                                    ; preds = %choice.exit75
  %var.load125 = load i64, ptr %var.n, align 8
  %cmptmp126 = icmp eq i64 %var.load125, 0
  br i1 %cmptmp126, label %choice.then127, label %choice.else128

choice.exit98:                                    ; preds = %choice.exit129
  br label %loop.latch.51

addr_gen_check105:                                ; preds = %choice.then96
  %arena.cur108 = call ptr @dva_arena_current()
  %tag.valid109 = call i1 @dva_arena_validate_tag(ptr %arena.cur108, i64 %addr.tag103)
  br i1 %tag.valid109, label %addr_ok106, label %addr_stale107

addr_ok106:                                       ; preds = %addr_stale107, %addr_gen_check105, %choice.then96
  %raw.load = load volatile i32, ptr %raw.clean.ptr102, align 4
  store i32 %raw.load, ptr %var.errno_val, align 4
  %var.load110 = load i32, ptr %var.errno_val, align 4
  %coerce.sext = sext i32 %var.load110 to i64
  %cmptmp111 = icmp eq i64 %coerce.sext, 4
  br i1 %cmptmp111, label %choice.then112, label %choice.exit113

addr_stale107:                                    ; preds = %addr_gen_check105
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok106

choice.then112:                                   ; preds = %addr_ok106
  br label %loop.latch.51

choice.exit113:                                   ; preds = %addr_ok106
  %var.load114 = load ptr, ptr %var.r, align 8
  %var.load115 = load i32, ptr %var.errno_val, align 4
  %coerce.sext116 = sext i32 %var.load115 to i64
  %cmptmp117 = icmp eq i64 %coerce.sext116, 11
  br i1 %cmptmp117, label %choice.then118, label %choice.else119

choice.then118:                                   ; preds = %choice.exit113
  br label %choice.exit120

choice.else119:                                   ; preds = %choice.exit113
  %var.load121 = load i32, ptr %var.errno_val, align 4
  %coerce.sext122 = sext i32 %var.load121 to i64
  br label %choice.exit120

choice.exit120:                                   ; preds = %choice.else119, %choice.then118
  %choice.res123 = phi i64 [ 11, %choice.then118 ], [ %coerce.sext122, %choice.else119 ]
  %fld.gep124 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load114, i32 0, i32 4
  store i64 %choice.res123, ptr %fld.gep124, align 8
  br label %loop.exit.51

choice.then127:                                   ; preds = %choice.else97
  %var.load130 = load ptr, ptr %var.r, align 8
  %fld.gep131 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load130, i32 0, i32 5
  store i1 true, ptr %fld.gep131, align 1
  %var.load132 = load ptr, ptr %var.r, align 8
  %fld.gep133 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load132, i32 0, i32 4
  store i64 0, ptr %fld.gep133, align 8
  br label %loop.exit.51

choice.else128:                                   ; preds = %choice.else97
  %var.load134 = load ptr, ptr %var.r, align 8
  %fld.gep135 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load134, i32 0, i32 4
  store i64 0, ptr %fld.gep135, align 8
  %var.load136 = load i64, ptr %var.cur82, align 8
  %var.load137 = load i64, ptr %var.n, align 8
  %addtmp138 = add i64 %var.load136, %var.load137
  %b.load139 = load ptr, ptr %var.res_b, align 8
  %b.cap140 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load139, i32 0, i32 2
  %b.cap141 = load i64, ptr %b.cap140, align 8
  %b.len.neg142 = icmp slt i64 %addtmp138, 0
  br i1 %b.len.neg142, label %b.len_oob145, label %b.len_big_check143

choice.exit129:                                   ; preds = %b.len_ok144
  br label %choice.exit98

b.len_big_check143:                               ; preds = %choice.else128
  %b.len.big146 = icmp sgt i64 %addtmp138, %b.cap141
  br i1 %b.len.big146, label %b.len_oob145, label %b.len_ok144

b.len_ok144:                                      ; preds = %b.len_oob145, %b.len_big_check143
  %b.len.gep147 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load139, i32 0, i32 0
  store i64 %addtmp138, ptr %b.len.gep147, align 8
  br label %choice.exit129

b.len_oob145:                                     ; preds = %b.len_big_check143, %choice.else128
  %7 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok144

choice.then152:                                   ; preds = %loop.exit.51
  ret ptr null

choice.exit153:                                   ; preds = %ret.dead154, %loop.exit.51
  %var.load155 = load ptr, ptr %var.res_b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load155, i32 0, i32 0
  %b.freeze.len156 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load155, i32 0, i32 1
  %b.freeze.data157 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

ret.dead154:                                      ; No predecessors!
  br label %choice.exit153

b.freeze.check:                                   ; preds = %choice.exit153
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data157, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data157, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data157, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len156, 1
  %arena.cur158 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur158, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data157, i64 %b.freeze.len156, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len156
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit153
  %b.freeze.data159 = phi ptr [ %b.freeze.data157, %choice.exit153 ], [ %b.freeze.data157, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur160 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur160, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len156, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data159, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load155, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load155, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load155, i32 0, i32 2
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
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load19, i32 0, i32 1
  %b.ptr20 = load ptr, ptr %b.ptr, align 8
  %var.load21 = load ptr, ptr %var.r, align 8
  %fld.gep22 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load21, i32 0, i32 2
  %fld.load23 = load i64, ptr %fld.gep22, align 8
  %ptr.int.l = ptrtoint ptr %b.ptr20 to i64
  %addtmp = add i64 %ptr.int.l, %fld.load23
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit16

addr_gen_check:                                   ; preds = %choice.exit16
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.exit16
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  %coerce.sext = sext i8 %raw.load to i64
  %bandtmp = and i64 %coerce.sext, 255
  store i64 %bandtmp, ptr %var.b, align 8
  %var.load24 = load ptr, ptr %var.r, align 8
  %var.load25 = load ptr, ptr %var.r, align 8
  %fld.gep26 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load25, i32 0, i32 2
  %fld.load27 = load i64, ptr %fld.gep26, align 8
  %addtmp28 = add i64 %fld.load27, 1
  %fld.gep29 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load24, i32 0, i32 2
  store i64 %addtmp28, ptr %fld.gep29, align 8
  %var.load30 = load i64, ptr %var.b, align 8
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load30, 1
  ret { i1, i64 } %ram.pay

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok
}

define ptr @"io::read_until"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.has_delim = alloca i1, align 1
  %var.cur131 = alloca i64, align 8
  %var.cur = alloca i64, align 8
  %var._46 = alloca i64, align 8
  %var._i45 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.53 = alloca i64, align 8
  %loop.idx.53 = alloca i64, align 8
  %"var.found_idx'" = alloca i64, align 8
  %var.scan_count = alloca i64, align 8
  %var.in_buf = alloca i64, align 8
  %var.rem_budget = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.52 = alloca i64, align 8
  %loop.idx.52 = alloca i64, align 8
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

choice.exit:                                      ; preds = %choice.exit250, %choice.then
  %choice.res305 = phi ptr [ null, %choice.then ], [ %choice.res304, %choice.exit250 ]
  ret ptr %choice.res305

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
  store i64 0, ptr %loop.idx.52, align 8
  br label %loop.header.52

str_overflow_abort:                               ; preds = %choice.else
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len2

loop.header.52:                                   ; preds = %loop.latch.52, %b.buf.len2
  %counter.load = load i64, ptr %loop.idx.52, align 8
  br label %loop.body.52

loop.body.52:                                     ; preds = %loop.header.52
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.52, align 8
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

loop.exit.nat.52:                                 ; No predecessors!
  br label %loop.exit.52

loop.latch.52:                                    ; preds = %choice.exit68
  %step.val245 = load i64, ptr %loop.step.52, align 8
  %loop.next246 = add i64 %counter.load, %step.val245
  store i64 %loop.next246, ptr %loop.idx.52, align 8
  br label %loop.header.52

loop.exit.52:                                     ; preds = %choice.exit238, %b.len_ok, %choice.then23, %choice.then15, %loop.exit.nat.52
  %var.load247 = load i1, ptr %"var.done'", align 1
  br i1 %var.load247, label %choice.then248, label %choice.else249

choice.then10:                                    ; preds = %loop.body.52
  %var.load12 = load ptr, ptr %var.r, align 8
  %call.res = call i64 @"io::#refill"(ptr %var.load12)
  store i64 %call.res, ptr %var.n, align 8
  %var.load13 = load i64, ptr %var.n, align 8
  %cmptmp14 = icmp sle i64 %var.load13, 0
  br i1 %cmptmp14, label %choice.then15, label %choice.exit16

choice.exit11:                                    ; preds = %choice.exit16, %loop.body.52
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
  br label %loop.exit.52

choice.exit16:                                    ; preds = %choice.then10
  br label %choice.exit11

choice.then23:                                    ; preds = %choice.exit11
  store i1 true, ptr %"var.done'", align 1
  br label %loop.exit.52

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
  store i64 0, ptr %loop.idx.53, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.53

loop.header.53:                                   ; preds = %loop.latch.53, %choice.exit39
  %counter.load43 = load i64, ptr %loop.idx.53, align 8
  %loop.cond = icmp slt i64 %counter.load43, %var.load42
  br i1 %loop.cond, label %loop.body.53, label %loop.exit.nat.53

loop.body.53:                                     ; preds = %loop.header.53
  %loop.rel.i44 = sub i64 %counter.load43, 0
  store i64 1, ptr %loop.step.53, align 8
  store i64 %loop.rel.i44, ptr %var._i45, align 8
  store i64 %counter.load43, ptr %var._46, align 8
  store i64 %counter.load43, ptr %var.i, align 8
  %var.load47 = load ptr, ptr %var.r, align 8
  %fld.gep48 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load47, i32 0, i32 1
  %fld.load49 = load ptr, ptr %fld.gep48, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load49, i32 0, i32 1
  %b.ptr50 = load ptr, ptr %b.ptr, align 8
  %var.load51 = load ptr, ptr %var.r, align 8
  %fld.gep52 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load51, i32 0, i32 2
  %fld.load53 = load i64, ptr %fld.gep52, align 8
  %ptr.int.l = ptrtoint ptr %b.ptr50 to i64
  %addtmp = add i64 %ptr.int.l, %fld.load53
  %ptr.res = inttoptr i64 %addtmp to ptr
  %var.load54 = load i64, ptr %var.i, align 8
  %ptr.int.l55 = ptrtoint ptr %ptr.res to i64
  %addtmp56 = add i64 %ptr.int.l55, %var.load54
  %ptr.res57 = inttoptr i64 %addtmp56 to ptr
  %raw.int = ptrtoint ptr %ptr.res57 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

loop.exit.nat.53:                                 ; preds = %loop.header.53
  br label %loop.exit.53

loop.latch.53:                                    ; preds = %choice.exit62
  %step.val = load i64, ptr %loop.step.53, align 8
  %loop.next = add i64 %counter.load43, %step.val
  store i64 %loop.next, ptr %loop.idx.53, align 8
  br label %loop.header.53

loop.exit.53:                                     ; preds = %choice.then61, %loop.exit.nat.53
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load64 = load i64, ptr %"var.found_idx'", align 8
  %cmptmp65 = icmp sge i64 %var.load64, 0
  br i1 %cmptmp65, label %choice.then66, label %choice.else67

addr_gen_check:                                   ; preds = %loop.body.53
  %arena.cur58 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur58, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %loop.body.53
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  %coerce.sext = sext i8 %raw.load to i64
  %bandtmp = and i64 %coerce.sext, 255
  %var.load59 = load i64, ptr %var.delim, align 8
  %cmptmp60 = icmp eq i64 %bandtmp, %var.load59
  br i1 %cmptmp60, label %choice.then61, label %choice.exit62

addr_stale:                                       ; preds = %addr_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

choice.then61:                                    ; preds = %addr_ok
  %var.load63 = load i64, ptr %var.i, align 8
  store i64 %var.load63, ptr %"var.found_idx'", align 8
  br label %loop.exit.53

choice.exit62:                                    ; preds = %addr_ok
  br label %loop.latch.53

choice.then66:                                    ; preds = %loop.exit.53
  %var.load69 = load ptr, ptr %var.out, align 8
  %b.len70 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load69, i32 0, i32 0
  %b.len71 = load i64, ptr %b.len70, align 8
  store i64 %b.len71, ptr %var.cur, align 8
  %var.load72 = load i64, ptr %"var.found_idx'", align 8
  %cmptmp73 = icmp sgt i64 %var.load72, 0
  br i1 %cmptmp73, label %choice.then74, label %choice.exit75

choice.else67:                                    ; preds = %loop.exit.53
  %var.load128 = load ptr, ptr %var.out, align 8
  %b.len129 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load128, i32 0, i32 0
  %b.len130 = load i64, ptr %b.len129, align 8
  store i64 %b.len130, ptr %var.cur131, align 8
  %var.load132 = load i64, ptr %var.scan_count, align 8
  %cmptmp133 = icmp sgt i64 %var.load132, 0
  br i1 %cmptmp133, label %choice.then134, label %choice.exit135

choice.exit68:                                    ; preds = %choice.exit200
  br label %loop.latch.52

choice.then74:                                    ; preds = %choice.then66
  %var.load76 = load ptr, ptr %var.out, align 8
  %b.ptr77 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load76, i32 0, i32 1
  %b.ptr78 = load ptr, ptr %b.ptr77, align 8
  %var.load79 = load i64, ptr %var.cur, align 8
  %ptr.int.l80 = ptrtoint ptr %b.ptr78 to i64
  %addtmp81 = add i64 %ptr.int.l80, %var.load79
  %ptr.res82 = inttoptr i64 %addtmp81 to ptr
  %var.load83 = load ptr, ptr %var.r, align 8
  %fld.gep84 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load83, i32 0, i32 1
  %fld.load85 = load ptr, ptr %fld.gep84, align 8
  %b.ptr86 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load85, i32 0, i32 1
  %b.ptr87 = load ptr, ptr %b.ptr86, align 8
  %var.load88 = load ptr, ptr %var.r, align 8
  %fld.gep89 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load88, i32 0, i32 2
  %fld.load90 = load i64, ptr %fld.gep89, align 8
  %ptr.int.l91 = ptrtoint ptr %b.ptr87 to i64
  %addtmp92 = add i64 %ptr.int.l91, %fld.load90
  %ptr.res93 = inttoptr i64 %addtmp92 to ptr
  %var.load94 = load i64, ptr %"var.found_idx'", align 8
  %raw.int95 = ptrtoint ptr %ptr.res82 to i64
  %raw.clean.int96 = and i64 %raw.int95, 281474976710655
  %raw.clean.ptr97 = inttoptr i64 %raw.clean.int96 to ptr
  %addr.tag98 = lshr i64 %raw.int95, 48
  %addr.immortal99 = icmp eq i64 %addr.tag98, 0
  br i1 %addr.immortal99, label %addr_ok101, label %addr_gen_check100

choice.exit75:                                    ; preds = %addr_ok111, %choice.then66
  %var.load115 = load i64, ptr %var.cur, align 8
  %var.load116 = load i64, ptr %"var.found_idx'", align 8
  %addtmp117 = add i64 %var.load115, %var.load116
  %b.load = load ptr, ptr %var.out, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap118 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %addtmp117, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

addr_gen_check100:                                ; preds = %choice.then74
  %arena.cur103 = call ptr @dva_arena_current()
  %tag.valid104 = call i1 @dva_arena_validate_tag(ptr %arena.cur103, i64 %addr.tag98)
  br i1 %tag.valid104, label %addr_ok101, label %addr_stale102

addr_ok101:                                       ; preds = %addr_stale102, %addr_gen_check100, %choice.then74
  %raw.int105 = ptrtoint ptr %ptr.res93 to i64
  %raw.clean.int106 = and i64 %raw.int105, 281474976710655
  %raw.clean.ptr107 = inttoptr i64 %raw.clean.int106 to ptr
  %addr.tag108 = lshr i64 %raw.int105, 48
  %addr.immortal109 = icmp eq i64 %addr.tag108, 0
  br i1 %addr.immortal109, label %addr_ok111, label %addr_gen_check110

addr_stale102:                                    ; preds = %addr_gen_check100
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok101

addr_gen_check110:                                ; preds = %addr_ok101
  %arena.cur113 = call ptr @dva_arena_current()
  %tag.valid114 = call i1 @dva_arena_validate_tag(ptr %arena.cur113, i64 %addr.tag108)
  br i1 %tag.valid114, label %addr_ok111, label %addr_stale112

addr_ok111:                                       ; preds = %addr_stale112, %addr_gen_check110, %addr_ok101
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr97, ptr align 1 %raw.clean.ptr107, i64 %var.load94, i1 false)
  br label %choice.exit75

addr_stale112:                                    ; preds = %addr_gen_check110
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok111

b.len_big_check:                                  ; preds = %choice.exit75
  %b.len.big = icmp sgt i64 %addtmp117, %b.cap118
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep119 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %addtmp117, ptr %b.len.gep119, align 8
  %var.load120 = load ptr, ptr %var.r, align 8
  %var.load121 = load ptr, ptr %var.r, align 8
  %fld.gep122 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load121, i32 0, i32 2
  %fld.load123 = load i64, ptr %fld.gep122, align 8
  %var.load124 = load i64, ptr %"var.found_idx'", align 8
  %addtmp125 = add i64 %fld.load123, %var.load124
  %addtmp126 = add i64 %addtmp125, 1
  %fld.gep127 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load120, i32 0, i32 2
  store i64 %addtmp126, ptr %fld.gep127, align 8
  store i1 true, ptr %"var.done'", align 1
  br label %loop.exit.52

b.len_oob:                                        ; preds = %b.len_big_check, %choice.exit75
  %7 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok

choice.then134:                                   ; preds = %choice.else67
  %var.load136 = load ptr, ptr %var.out, align 8
  %b.ptr137 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load136, i32 0, i32 1
  %b.ptr138 = load ptr, ptr %b.ptr137, align 8
  %var.load139 = load i64, ptr %var.cur131, align 8
  %ptr.int.l140 = ptrtoint ptr %b.ptr138 to i64
  %addtmp141 = add i64 %ptr.int.l140, %var.load139
  %ptr.res142 = inttoptr i64 %addtmp141 to ptr
  %var.load143 = load ptr, ptr %var.r, align 8
  %fld.gep144 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load143, i32 0, i32 1
  %fld.load145 = load ptr, ptr %fld.gep144, align 8
  %b.ptr146 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load145, i32 0, i32 1
  %b.ptr147 = load ptr, ptr %b.ptr146, align 8
  %var.load148 = load ptr, ptr %var.r, align 8
  %fld.gep149 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load148, i32 0, i32 2
  %fld.load150 = load i64, ptr %fld.gep149, align 8
  %ptr.int.l151 = ptrtoint ptr %b.ptr147 to i64
  %addtmp152 = add i64 %ptr.int.l151, %fld.load150
  %ptr.res153 = inttoptr i64 %addtmp152 to ptr
  %var.load154 = load i64, ptr %var.scan_count, align 8
  %raw.int155 = ptrtoint ptr %ptr.res142 to i64
  %raw.clean.int156 = and i64 %raw.int155, 281474976710655
  %raw.clean.ptr157 = inttoptr i64 %raw.clean.int156 to ptr
  %addr.tag158 = lshr i64 %raw.int155, 48
  %addr.immortal159 = icmp eq i64 %addr.tag158, 0
  br i1 %addr.immortal159, label %addr_ok161, label %addr_gen_check160

choice.exit135:                                   ; preds = %addr_ok171, %choice.else67
  %var.load175 = load i64, ptr %var.cur131, align 8
  %var.load176 = load i64, ptr %var.scan_count, align 8
  %addtmp177 = add i64 %var.load175, %var.load176
  %b.load178 = load ptr, ptr %var.out, align 8
  %b.cap179 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 2
  %b.cap180 = load i64, ptr %b.cap179, align 8
  %b.len.neg181 = icmp slt i64 %addtmp177, 0
  br i1 %b.len.neg181, label %b.len_oob184, label %b.len_big_check182

addr_gen_check160:                                ; preds = %choice.then134
  %arena.cur163 = call ptr @dva_arena_current()
  %tag.valid164 = call i1 @dva_arena_validate_tag(ptr %arena.cur163, i64 %addr.tag158)
  br i1 %tag.valid164, label %addr_ok161, label %addr_stale162

addr_ok161:                                       ; preds = %addr_stale162, %addr_gen_check160, %choice.then134
  %raw.int165 = ptrtoint ptr %ptr.res153 to i64
  %raw.clean.int166 = and i64 %raw.int165, 281474976710655
  %raw.clean.ptr167 = inttoptr i64 %raw.clean.int166 to ptr
  %addr.tag168 = lshr i64 %raw.int165, 48
  %addr.immortal169 = icmp eq i64 %addr.tag168, 0
  br i1 %addr.immortal169, label %addr_ok171, label %addr_gen_check170

addr_stale162:                                    ; preds = %addr_gen_check160
  %8 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok161

addr_gen_check170:                                ; preds = %addr_ok161
  %arena.cur173 = call ptr @dva_arena_current()
  %tag.valid174 = call i1 @dva_arena_validate_tag(ptr %arena.cur173, i64 %addr.tag168)
  br i1 %tag.valid174, label %addr_ok171, label %addr_stale172

addr_ok171:                                       ; preds = %addr_stale172, %addr_gen_check170, %addr_ok161
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr157, ptr align 1 %raw.clean.ptr167, i64 %var.load154, i1 false)
  br label %choice.exit135

addr_stale172:                                    ; preds = %addr_gen_check170
  %9 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok171

b.len_big_check182:                               ; preds = %choice.exit135
  %b.len.big185 = icmp sgt i64 %addtmp177, %b.cap180
  br i1 %b.len.big185, label %b.len_oob184, label %b.len_ok183

b.len_ok183:                                      ; preds = %b.len_oob184, %b.len_big_check182
  %b.len.gep186 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 0
  store i64 %addtmp177, ptr %b.len.gep186, align 8
  %var.load187 = load ptr, ptr %var.r, align 8
  %var.load188 = load ptr, ptr %var.r, align 8
  %fld.gep189 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load188, i32 0, i32 2
  %fld.load190 = load i64, ptr %fld.gep189, align 8
  %var.load191 = load i64, ptr %var.scan_count, align 8
  %addtmp192 = add i64 %fld.load190, %var.load191
  %fld.gep193 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load187, i32 0, i32 2
  store i64 %addtmp192, ptr %fld.gep193, align 8
  %var.load194 = load ptr, ptr %var.out, align 8
  %b.len195 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load194, i32 0, i32 0
  %b.len196 = load i64, ptr %b.len195, align 8
  %var.load197 = load i64, ptr %var.max, align 8
  %cmptmp198 = icmp sge i64 %b.len196, %var.load197
  br i1 %cmptmp198, label %choice.then199, label %choice.exit200

b.len_oob184:                                     ; preds = %b.len_big_check182, %choice.exit135
  %10 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok183

choice.then199:                                   ; preds = %b.len_ok183
  %var.load201 = load ptr, ptr %var.r, align 8
  %fld.gep202 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load201, i32 0, i32 2
  %fld.load203 = load i64, ptr %fld.gep202, align 8
  %var.load204 = load ptr, ptr %var.r, align 8
  %fld.gep205 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load204, i32 0, i32 1
  %fld.load206 = load ptr, ptr %fld.gep205, align 8
  %b.len207 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load206, i32 0, i32 0
  %b.len208 = load i64, ptr %b.len207, align 8
  %cmptmp209 = icmp slt i64 %fld.load203, %b.len208
  br i1 %cmptmp209, label %and.54.then, label %and.54.else

choice.exit200:                                   ; preds = %b.len_ok183
  br label %choice.exit68

and.54.then:                                      ; preds = %choice.then199
  %var.load210 = load ptr, ptr %var.r, align 8
  %fld.gep211 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load210, i32 0, i32 1
  %fld.load212 = load ptr, ptr %fld.gep211, align 8
  %b.ptr213 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load212, i32 0, i32 1
  %b.ptr214 = load ptr, ptr %b.ptr213, align 8
  %var.load215 = load ptr, ptr %var.r, align 8
  %fld.gep216 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load215, i32 0, i32 2
  %fld.load217 = load i64, ptr %fld.gep216, align 8
  %ptr.int.l218 = ptrtoint ptr %b.ptr214 to i64
  %addtmp219 = add i64 %ptr.int.l218, %fld.load217
  %ptr.res220 = inttoptr i64 %addtmp219 to ptr
  %raw.int221 = ptrtoint ptr %ptr.res220 to i64
  %raw.clean.int222 = and i64 %raw.int221, 281474976710655
  %raw.clean.ptr223 = inttoptr i64 %raw.clean.int222 to ptr
  %addr.tag224 = lshr i64 %raw.int221, 48
  %addr.immortal225 = icmp eq i64 %addr.tag224, 0
  br i1 %addr.immortal225, label %addr_ok227, label %addr_gen_check226

and.54.else:                                      ; preds = %choice.then199
  br label %and.54.exit

and.54.exit:                                      ; preds = %and.54.else, %addr_ok227
  %and.54.phi = phi i1 [ %cmptmp235, %addr_ok227 ], [ %cmptmp209, %and.54.else ]
  store i1 %and.54.phi, ptr %var.has_delim, align 1
  %var.load236 = load i1, ptr %var.has_delim, align 1
  br i1 %var.load236, label %choice.then237, label %choice.exit238

addr_gen_check226:                                ; preds = %and.54.then
  %arena.cur229 = call ptr @dva_arena_current()
  %tag.valid230 = call i1 @dva_arena_validate_tag(ptr %arena.cur229, i64 %addr.tag224)
  br i1 %tag.valid230, label %addr_ok227, label %addr_stale228

addr_ok227:                                       ; preds = %addr_stale228, %addr_gen_check226, %and.54.then
  %raw.load231 = load volatile i8, ptr %raw.clean.ptr223, align 1
  %coerce.sext232 = sext i8 %raw.load231 to i64
  %bandtmp233 = and i64 %coerce.sext232, 255
  %var.load234 = load i64, ptr %var.delim, align 8
  %cmptmp235 = icmp eq i64 %bandtmp233, %var.load234
  br label %and.54.exit

addr_stale228:                                    ; preds = %addr_gen_check226
  %11 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok227

choice.then237:                                   ; preds = %and.54.exit
  %var.load239 = load ptr, ptr %var.r, align 8
  %var.load240 = load ptr, ptr %var.r, align 8
  %fld.gep241 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load240, i32 0, i32 2
  %fld.load242 = load i64, ptr %fld.gep241, align 8
  %addtmp243 = add i64 %fld.load242, 1
  %fld.gep244 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load239, i32 0, i32 2
  store i64 %addtmp243, ptr %fld.gep244, align 8
  br label %choice.exit238

choice.exit238:                                   ; preds = %choice.then237, %and.54.exit
  store i1 true, ptr %"var.done'", align 1
  br label %loop.exit.52

choice.then248:                                   ; preds = %loop.exit.52
  %var.load251 = load ptr, ptr %var.out, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load251, i32 0, i32 0
  %b.freeze.len252 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load251, i32 0, i32 1
  %b.freeze.data253 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.else249:                                   ; preds = %loop.exit.52
  %var.load257 = load ptr, ptr %var.out, align 8
  %b.len258 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load257, i32 0, i32 0
  %b.len259 = load i64, ptr %b.len258, align 8
  %cmptmp260 = icmp sgt i64 %b.len259, 0
  br i1 %cmptmp260, label %choice.then261, label %choice.else262

choice.exit250:                                   ; preds = %choice.exit263, %b.freeze.done
  %choice.res304 = phi ptr [ %builder.freeze, %b.freeze.done ], [ %choice.res303, %choice.exit263 ]
  br label %choice.exit

b.freeze.check:                                   ; preds = %choice.then248
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data253, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data253, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data253, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len252, 1
  %arena.cur254 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur254, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data253, i64 %b.freeze.len252, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len252
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then248
  %b.freeze.data255 = phi ptr [ %b.freeze.data253, %choice.then248 ], [ %b.freeze.data253, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur256 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur256, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len252, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data255, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load251, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load251, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load251, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit250

choice.then261:                                   ; preds = %choice.else249
  %var.load264 = load ptr, ptr %var.out, align 8
  %b.freeze.len265 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load264, i32 0, i32 0
  %b.freeze.len266 = load i64, ptr %b.freeze.len265, align 8
  %b.freeze.data267 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load264, i32 0, i32 1
  %b.freeze.data268 = load ptr, ptr %b.freeze.data267, align 8
  %b.freeze.arena269 = call ptr @dva_arena_current()
  %b.freeze.nc.gep270 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena269, i32 0, i32 1
  %b.freeze.nc271 = load i64, ptr %b.freeze.nc.gep270, align 8
  %b.freeze.has.chunk272 = icmp sgt i64 %b.freeze.nc271, 0
  br i1 %b.freeze.has.chunk272, label %b.freeze.check273, label %b.freeze.done275

choice.else262:                                   ; preds = %choice.else249
  br label %choice.exit263

choice.exit263:                                   ; preds = %choice.else262, %b.freeze.done275
  %choice.res303 = phi ptr [ %builder.freeze297, %b.freeze.done275 ], [ null, %choice.else262 ]
  br label %choice.exit250

b.freeze.check273:                                ; preds = %choice.then261
  %b.freeze.last.idx276 = sub i64 %b.freeze.nc271, 1
  %b.freeze.chunks.gep277 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena269, i32 0, i32 3
  %b.freeze.chunk.slot278 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep277, i64 0, i64 %b.freeze.last.idx276
  %b.freeze.last.chunk279 = load ptr, ptr %b.freeze.chunk.slot278, align 8
  %b.freeze.off.gep280 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena269, i32 0, i32 2
  %b.freeze.off281 = load i64, ptr %b.freeze.off.gep280, align 8
  %b.freeze.bump282 = getelementptr i8, ptr %b.freeze.last.chunk279, i64 %b.freeze.off281
  %b.freeze.cap.gep283 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena269, i32 0, i32 0
  %b.freeze.cap284 = load i64, ptr %b.freeze.cap.gep283, align 8
  %b.freeze.chunk.end285 = getelementptr i8, ptr %b.freeze.last.chunk279, i64 %b.freeze.cap284
  %b.freeze.ge.chunk286 = icmp uge ptr %b.freeze.data268, %b.freeze.last.chunk279
  %b.freeze.lt.end287 = icmp ult ptr %b.freeze.data268, %b.freeze.chunk.end285
  %b.freeze.in.chunk288 = and i1 %b.freeze.ge.chunk286, %b.freeze.lt.end287
  %b.freeze.ge.bump289 = icmp uge ptr %b.freeze.data268, %b.freeze.bump282
  %b.freeze.reaped290 = and i1 %b.freeze.in.chunk288, %b.freeze.ge.bump289
  br i1 %b.freeze.reaped290, label %b.freeze.copy274, label %b.freeze.done275

b.freeze.copy274:                                 ; preds = %b.freeze.check273
  %b.freeze.alen291 = add i64 %b.freeze.len266, 1
  %arena.cur292 = call ptr @dva_arena_current()
  %b.freeze.fresh293 = call ptr @dva_arena_alloc(ptr %arena.cur292, i64 %b.freeze.alen291)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh293, ptr align 1 %b.freeze.data268, i64 %b.freeze.len266, i1 false)
  %b.freeze.nul294 = getelementptr i8, ptr %b.freeze.fresh293, i64 %b.freeze.len266
  store i8 0, ptr %b.freeze.nul294, align 1
  br label %b.freeze.done275

b.freeze.done275:                                 ; preds = %b.freeze.copy274, %b.freeze.check273, %choice.then261
  %b.freeze.data295 = phi ptr [ %b.freeze.data268, %choice.then261 ], [ %b.freeze.data268, %b.freeze.check273 ], [ %b.freeze.fresh293, %b.freeze.copy274 ]
  %arena.cur296 = call ptr @dva_arena_current()
  %builder.freeze297 = call ptr @dva_arena_alloc(ptr %arena.cur296, i64 16)
  %str.build.len.gep298 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze297, i32 0, i32 0
  store i64 %b.freeze.len266, ptr %str.build.len.gep298, align 8
  %str.build.data.gep299 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze297, i32 0, i32 1
  store ptr %b.freeze.data295, ptr %str.build.data.gep299, align 8
  %b.freeze.rst.len300 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load264, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len300, align 8
  %b.freeze.rst.data301 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load264, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data301, align 8
  %b.freeze.rst.cap302 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load264, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap302, align 8
  br label %choice.exit263
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
  br i1 %cmptmp, label %and.55.then, label %and.55.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.55.then:                                      ; preds = %str_ok
  %var.load7 = load ptr, ptr %var.line, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %str.tag10 = lshr i64 %s.read.len8, 48
  %str.immortal11 = icmp eq i64 %str.tag10, 0
  br i1 %str.immortal11, label %str_ok13, label %str_gen_check12

and.55.else:                                      ; preds = %str_ok
  br label %and.55.exit

and.55.exit:                                      ; preds = %and.55.else, %idx_ok
  %and.55.phi = phi i1 [ %cmptmp19, %idx_ok ], [ %cmptmp, %and.55.else ]
  br i1 %and.55.phi, label %choice.then20, label %choice.else21

str_gen_check12:                                  ; preds = %and.55.then
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag10)
  br i1 %tag.valid16, label %str_ok13, label %str_stale14

str_ok13:                                         ; preds = %str_stale14, %str_gen_check12, %and.55.then
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
  br label %and.55.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok13
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then20:                                    ; preds = %and.55.exit
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

choice.else21:                                    ; preds = %and.55.exit
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
