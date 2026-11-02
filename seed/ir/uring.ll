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
@sys_argc_global = external global i64
@sys_argv_global = external global ptr
@"var.sys::STDIN" = external global i64
@"var.sys::STDOUT" = external global i64
@"var.sys::STDERR" = external global i64
@"var.sys::addr_null" = external global ptr
@"var.uring::SYS_IO_URING_SETUP" = global i64 425
@"var.uring::SYS_IO_URING_ENTER" = global i64 426
@"var.uring::SYS_IO_URING_REGISTER" = global i64 427
@"var.uring::IORING_SETUP_IOPOLL" = global i64 1
@"var.uring::IORING_SETUP_SQPOLL" = global i64 2
@"var.uring::IORING_SETUP_SQ_AFF" = global i64 4
@"var.uring::IORING_SETUP_CQSIZE" = global i64 8
@"var.uring::IORING_SETUP_CLAMP" = global i64 16
@"var.uring::IORING_SETUP_ATTACH_WQ" = global i64 32
@"var.uring::IORING_SETUP_R_DISABLED" = global i64 64
@"var.uring::IORING_SETUP_SUBMIT_ALL" = global i64 128
@"var.uring::IORING_ENTER_GETEVENTS" = global i64 1
@"var.uring::IORING_ENTER_SQ_WAKEUP" = global i64 2
@"var.uring::IORING_ENTER_SQ_WAIT" = global i64 4
@"var.uring::IORING_ENTER_EXT_ARG" = global i64 8
@"var.uring::IORING_ENTER_REGISTERED_RING" = global i64 16
@"var.uring::IORING_OFF_SQ_RING" = global i64 0
@"var.uring::IORING_OFF_CQ_RING" = global i64 134217728
@"var.uring::IORING_OFF_SQES" = global i64 268435456
@"var.uring::OP_NOP" = global i64 0
@"var.uring::OP_READV" = global i64 1
@"var.uring::OP_WRITEV" = global i64 2
@"var.uring::OP_FSYNC" = global i64 3
@"var.uring::OP_POLL_ADD" = global i64 6
@"var.uring::OP_POLL_REMOVE" = global i64 7
@"var.uring::OP_TIMEOUT" = global i64 11
@"var.uring::OP_TIMEOUT_REMOVE" = global i64 12
@"var.uring::OP_ACCEPT" = global i64 13
@"var.uring::OP_ASYNC_CANCEL" = global i64 14
@"var.uring::OP_CONNECT" = global i64 16
@"var.uring::OP_CLOSE" = global i64 19
@"var.uring::OP_READ" = global i64 22
@"var.uring::OP_WRITE" = global i64 23
@"var.uring::OP_SEND" = global i64 26
@"var.uring::OP_RECV" = global i64 27
@"var.uring::OP_SHUTDOWN" = global i64 34
@"var.uring::PROT_READ" = global i64 1
@"var.uring::PROT_WRITE" = global i64 2
@"var.uring::MAP_SHARED" = global i64 1
@"var.uring::MAP_POPULATE" = global i64 32768
@str.0 = internal unnamed_addr constant [22 x i8] c"io_uring_setup failed\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 21, ptr @str.0 }
@stale_addr_msg = internal unnamed_addr constant [51 x i8] c"E4011: stale Addr dereference after arena restore\0A\00"
@str.1 = internal unnamed_addr constant [20 x i8] c"mmap SQ ring failed\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 19, ptr @str.1 }
@str.2 = internal unnamed_addr constant [22 x i8] c"mmap SQE array failed\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 21, ptr @str.2 }
@str.3 = internal unnamed_addr constant [20 x i8] c"mmap CQ ring failed\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 19, ptr @str.3 }
@clo.const = internal constant { ptr, ptr } { ptr @"uring::new", ptr null }
@"var.uring::new" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"uring::prep_sqe_flags", ptr null }
@clo.const.2 = internal constant { ptr, ptr } { ptr @"uring::prep_sqe", ptr null }
@"var.uring::prep_sqe" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"uring::prep_nop", ptr null }
@"var.uring::prep_nop" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"uring::prep_read", ptr null }
@"var.uring::prep_read" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"uring::prep_read_at", ptr null }
@"var.uring::prep_read_at" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"uring::prep_write", ptr null }
@"var.uring::prep_write" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"uring::prep_write_at", ptr null }
@"var.uring::prep_write_at" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"uring::prep_close", ptr null }
@"var.uring::prep_close" = global ptr null
@"var.uring::prep_sqe_flags" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"uring::prep_recv", ptr null }
@"var.uring::prep_recv" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"uring::prep_send", ptr null }
@"var.uring::prep_send" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"uring::prep_accept", ptr null }
@"var.uring::prep_accept" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"uring::prep_cancel", ptr null }
@"var.uring::prep_cancel" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"uring::prep_timeout", ptr null }
@"var.uring::prep_timeout" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"uring::prep_poll_add", ptr null }
@"var.uring::prep_poll_add" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"uring::sq_space", ptr null }
@"var.uring::sq_space" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"uring::submit_and_wait", ptr null }
@"var.uring::submit_and_wait" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"uring::submit", ptr null }
@"var.uring::submit" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"uring::peek_cqe", ptr null }
@"var.uring::peek_cqe" = global ptr null
@str.4 = internal unnamed_addr constant [22 x i8] c"io_uring_enter failed\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 21, ptr @str.4 }
@str.5 = internal unnamed_addr constant [19 x i8] c"no cqe after enter\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 18, ptr @str.5 }
@clo.const.19 = internal constant { ptr, ptr } { ptr @"uring::wait_cqe", ptr null }
@"var.uring::wait_cqe" = global ptr null
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@clo.const.20 = internal constant { ptr, ptr } { ptr @"uring::reap", ptr null }
@"var.uring::reap" = global ptr null
@clo.const.21 = internal constant { ptr, ptr } { ptr @"uring::close", ptr null }
@"var.uring::close" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_uring, ptr null }]

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

define internal void @__dva_global_init_uring() #1 {
entry:
  store i64 425, ptr @"var.uring::SYS_IO_URING_SETUP", align 8
  store i64 426, ptr @"var.uring::SYS_IO_URING_ENTER", align 8
  store i64 427, ptr @"var.uring::SYS_IO_URING_REGISTER", align 8
  store i64 1, ptr @"var.uring::IORING_SETUP_IOPOLL", align 8
  store i64 2, ptr @"var.uring::IORING_SETUP_SQPOLL", align 8
  store i64 4, ptr @"var.uring::IORING_SETUP_SQ_AFF", align 8
  store i64 8, ptr @"var.uring::IORING_SETUP_CQSIZE", align 8
  store i64 16, ptr @"var.uring::IORING_SETUP_CLAMP", align 8
  store i64 32, ptr @"var.uring::IORING_SETUP_ATTACH_WQ", align 8
  store i64 64, ptr @"var.uring::IORING_SETUP_R_DISABLED", align 8
  store i64 128, ptr @"var.uring::IORING_SETUP_SUBMIT_ALL", align 8
  store i64 1, ptr @"var.uring::IORING_ENTER_GETEVENTS", align 8
  store i64 2, ptr @"var.uring::IORING_ENTER_SQ_WAKEUP", align 8
  store i64 4, ptr @"var.uring::IORING_ENTER_SQ_WAIT", align 8
  store i64 8, ptr @"var.uring::IORING_ENTER_EXT_ARG", align 8
  store i64 16, ptr @"var.uring::IORING_ENTER_REGISTERED_RING", align 8
  store i64 0, ptr @"var.uring::IORING_OFF_SQ_RING", align 8
  store i64 134217728, ptr @"var.uring::IORING_OFF_CQ_RING", align 8
  store i64 268435456, ptr @"var.uring::IORING_OFF_SQES", align 8
  store i64 0, ptr @"var.uring::OP_NOP", align 8
  store i64 1, ptr @"var.uring::OP_READV", align 8
  store i64 2, ptr @"var.uring::OP_WRITEV", align 8
  store i64 3, ptr @"var.uring::OP_FSYNC", align 8
  store i64 6, ptr @"var.uring::OP_POLL_ADD", align 8
  store i64 7, ptr @"var.uring::OP_POLL_REMOVE", align 8
  store i64 11, ptr @"var.uring::OP_TIMEOUT", align 8
  store i64 12, ptr @"var.uring::OP_TIMEOUT_REMOVE", align 8
  store i64 13, ptr @"var.uring::OP_ACCEPT", align 8
  store i64 14, ptr @"var.uring::OP_ASYNC_CANCEL", align 8
  store i64 16, ptr @"var.uring::OP_CONNECT", align 8
  store i64 19, ptr @"var.uring::OP_CLOSE", align 8
  store i64 22, ptr @"var.uring::OP_READ", align 8
  store i64 23, ptr @"var.uring::OP_WRITE", align 8
  store i64 26, ptr @"var.uring::OP_SEND", align 8
  store i64 27, ptr @"var.uring::OP_RECV", align 8
  store i64 34, ptr @"var.uring::OP_SHUTDOWN", align 8
  store i64 1, ptr @"var.uring::PROT_READ", align 8
  store i64 2, ptr @"var.uring::PROT_WRITE", align 8
  store i64 1, ptr @"var.uring::MAP_SHARED", align 8
  store i64 32768, ptr @"var.uring::MAP_POPULATE", align 8
  store ptr @clo.const, ptr @"var.uring::new", align 8
  store ptr @clo.const.2, ptr @"var.uring::prep_sqe", align 8
  store ptr @clo.const.3, ptr @"var.uring::prep_nop", align 8
  store ptr @clo.const.4, ptr @"var.uring::prep_read", align 8
  store ptr @clo.const.5, ptr @"var.uring::prep_read_at", align 8
  store ptr @clo.const.6, ptr @"var.uring::prep_write", align 8
  store ptr @clo.const.7, ptr @"var.uring::prep_write_at", align 8
  store ptr @clo.const.8, ptr @"var.uring::prep_close", align 8
  store ptr @clo.const.1, ptr @"var.uring::prep_sqe_flags", align 8
  store ptr @clo.const.9, ptr @"var.uring::prep_recv", align 8
  store ptr @clo.const.10, ptr @"var.uring::prep_send", align 8
  store ptr @clo.const.11, ptr @"var.uring::prep_accept", align 8
  store ptr @clo.const.12, ptr @"var.uring::prep_cancel", align 8
  store ptr @clo.const.13, ptr @"var.uring::prep_timeout", align 8
  store ptr @clo.const.14, ptr @"var.uring::prep_poll_add", align 8
  store ptr @clo.const.15, ptr @"var.uring::sq_space", align 8
  store ptr @clo.const.16, ptr @"var.uring::submit_and_wait", align 8
  store ptr @clo.const.17, ptr @"var.uring::submit", align 8
  store ptr @clo.const.18, ptr @"var.uring::peek_cqe", align 8
  store ptr @clo.const.19, ptr @"var.uring::wait_cqe", align 8
  store ptr @clo.const.20, ptr @"var.uring::reap", align 8
  store ptr @clo.const.21, ptr @"var.uring::close", align 8
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

define { i1, i64 } @"uring::new"(i64 %0) #1 {
entry:
  %var.cq_ptr = alloca ptr, align 8
  %var.cq_sz = alloca i64, align 8
  %var.sqes_ptr = alloca ptr, align 8
  %var.sqes_sz = alloca i64, align 8
  %var.sq_ptr = alloca ptr, align 8
  %var.sq_sz = alloca i64, align 8
  %var.cq_entries = alloca i64, align 8
  %var.sq_entries = alloca i64, align 8
  %var.params = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  %var.paddr = alloca ptr, align 8
  %var.pbuf = alloca ptr, align 8
  %var.entries = alloca i64, align 8
  store i64 %0, ptr %var.entries, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  %rec.fld2 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld2, align 8
  %rec.fld3 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 0, ptr %rec.fld3, align 8
  %rec.fld4 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 0, ptr %rec.fld4, align 8
  %rec.fld5 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 0, ptr %rec.fld5, align 8
  %rec.fld6 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 6
  store i64 0, ptr %rec.fld6, align 8
  %rec.fld7 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 7
  store i64 0, ptr %rec.fld7, align 8
  %rec.fld8 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 8
  store i64 0, ptr %rec.fld8, align 8
  %rec.fld9 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 9
  store i64 0, ptr %rec.fld9, align 8
  %rec.fld10 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 10
  store i64 0, ptr %rec.fld10, align 8
  %rec.fld11 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 11
  store i64 0, ptr %rec.fld11, align 8
  %rec.fld12 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 12
  store i64 0, ptr %rec.fld12, align 8
  %rec.fld13 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 13
  store i64 0, ptr %rec.fld13, align 8
  %rec.fld14 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 14
  store i64 0, ptr %rec.fld14, align 8
  %rec.fld15 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 15
  store i64 0, ptr %rec.fld15, align 8
  store ptr %rec.alloc, ptr %var.pbuf, align 8
  %var.load = load ptr, ptr %var.pbuf, align 8
  store ptr %var.load, ptr %var.paddr, align 8
  %var.load16 = load i64, ptr @"var.uring::SYS_IO_URING_SETUP", align 8
  %var.load17 = load i64, ptr %var.entries, align 8
  %cast.int2ptr = inttoptr i64 %var.load17 to ptr
  %addr.ffi.int = ptrtoint ptr %cast.int2ptr to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load18 = load ptr, ptr %var.paddr, align 8
  %addr.ffi.int19 = ptrtoint ptr %var.load18 to i64
  %addr.ffi.masked20 = and i64 %addr.ffi.int19, 281474976710655
  %addr.ffi.clean21 = inttoptr i64 %addr.ffi.masked20 to ptr
  %var.load22 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int23 = ptrtoint ptr %var.load22 to i64
  %addr.ffi.masked24 = and i64 %addr.ffi.int23, 281474976710655
  %addr.ffi.clean25 = inttoptr i64 %addr.ffi.masked24 to ptr
  %var.load26 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int27 = ptrtoint ptr %var.load26 to i64
  %addr.ffi.masked28 = and i64 %addr.ffi.int27, 281474976710655
  %addr.ffi.clean29 = inttoptr i64 %addr.ffi.masked28 to ptr
  %var.load30 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int31 = ptrtoint ptr %var.load30 to i64
  %addr.ffi.masked32 = and i64 %addr.ffi.int31, 281474976710655
  %addr.ffi.clean33 = inttoptr i64 %addr.ffi.masked32 to ptr
  %var.load34 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int35 = ptrtoint ptr %var.load34 to i64
  %addr.ffi.masked36 = and i64 %addr.ffi.int35, 281474976710655
  %addr.ffi.clean37 = inttoptr i64 %addr.ffi.masked36 to ptr
  %call.res = call i64 @syscall(i64 %var.load16, ptr %addr.ffi.clean, ptr %addr.ffi.clean21, ptr %addr.ffi.clean25, ptr %addr.ffi.clean29, ptr %addr.ffi.clean33, ptr %addr.ffi.clean37)
  store i64 %call.res, ptr %var.fd, align 8
  %var.load38 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load38, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret { i1, i64 } { i1 false, i64 ptrtoint (ptr @str.0.struct to i64) }

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load39 = load ptr, ptr %var.paddr, align 8
  %raw.int = ptrtoint ptr %var.load39 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

addr_gen_check:                                   ; preds = %choice.exit
  %arena.cur40 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur40, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.exit
  store ptr %raw.clean.ptr, ptr %var.params, align 8
  %var.load41 = load ptr, ptr %var.params, align 8
  %fld.gep = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load41, i32 0, i32 0
  %fld.load = load i32, ptr %fld.gep, align 4
  %coerce.zext = zext i32 %fld.load to i64
  store i64 %coerce.zext, ptr %var.sq_entries, align 8
  %var.load42 = load ptr, ptr %var.params, align 8
  %fld.gep43 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load42, i32 0, i32 1
  %fld.load44 = load i32, ptr %fld.gep43, align 4
  %coerce.zext45 = zext i32 %fld.load44 to i64
  store i64 %coerce.zext45, ptr %var.cq_entries, align 8
  %var.load46 = load ptr, ptr %var.params, align 8
  %fld.gep47 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load46, i32 0, i32 16
  %fld.load48 = load i32, ptr %fld.gep47, align 4
  %coerce.zext49 = zext i32 %fld.load48 to i64
  %var.load50 = load i64, ptr %var.sq_entries, align 8
  %multmp = mul i64 %var.load50, 4
  %addtmp = add i64 %coerce.zext49, %multmp
  store i64 %addtmp, ptr %var.sq_sz, align 8
  %var.load51 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int52 = ptrtoint ptr %var.load51 to i64
  %addr.ffi.masked53 = and i64 %addr.ffi.int52, 281474976710655
  %addr.ffi.clean54 = inttoptr i64 %addr.ffi.masked53 to ptr
  %var.load55 = load i64, ptr %var.sq_sz, align 8
  %var.load56 = load i64, ptr @"var.uring::PROT_READ", align 8
  %var.load57 = load i64, ptr @"var.uring::PROT_WRITE", align 8
  %bortmp = or i64 %var.load56, %var.load57
  %var.load58 = load i64, ptr @"var.uring::MAP_SHARED", align 8
  %var.load59 = load i64, ptr @"var.uring::MAP_POPULATE", align 8
  %bortmp60 = or i64 %var.load58, %var.load59
  %var.load61 = load i64, ptr %var.fd, align 8
  %var.load62 = load i64, ptr @"var.uring::IORING_OFF_SQ_RING", align 8
  %coerce.trunc = trunc i64 %var.load61 to i32
  %call.res63 = call ptr @mmap(ptr %addr.ffi.clean54, i64 %var.load55, i64 %bortmp, i64 %bortmp60, i32 %coerce.trunc, i64 %var.load62)
  store ptr %call.res63, ptr %var.sq_ptr, align 8
  %var.load64 = load ptr, ptr %var.sq_ptr, align 8
  %coerce.ptr2int = ptrtoint ptr %var.load64 to i64
  %cmptmp65 = icmp eq i64 %coerce.ptr2int, -1
  br i1 %cmptmp65, label %choice.then66, label %choice.exit67

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

choice.then66:                                    ; preds = %addr_ok
  %var.load68 = load i64, ptr %var.fd, align 8
  %coerce.trunc69 = trunc i64 %var.load68 to i32
  %call.res70 = call i32 @close(i32 %coerce.trunc69)
  ret { i1, i64 } { i1 false, i64 ptrtoint (ptr @str.1.struct to i64) }

choice.exit67:                                    ; preds = %ret.dead71, %addr_ok
  %var.load72 = load i64, ptr %var.sq_entries, align 8
  %multmp73 = mul i64 %var.load72, 64
  store i64 %multmp73, ptr %var.sqes_sz, align 8
  %var.load74 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int75 = ptrtoint ptr %var.load74 to i64
  %addr.ffi.masked76 = and i64 %addr.ffi.int75, 281474976710655
  %addr.ffi.clean77 = inttoptr i64 %addr.ffi.masked76 to ptr
  %var.load78 = load i64, ptr %var.sqes_sz, align 8
  %var.load79 = load i64, ptr @"var.uring::PROT_READ", align 8
  %var.load80 = load i64, ptr @"var.uring::PROT_WRITE", align 8
  %bortmp81 = or i64 %var.load79, %var.load80
  %var.load82 = load i64, ptr @"var.uring::MAP_SHARED", align 8
  %var.load83 = load i64, ptr @"var.uring::MAP_POPULATE", align 8
  %bortmp84 = or i64 %var.load82, %var.load83
  %var.load85 = load i64, ptr %var.fd, align 8
  %var.load86 = load i64, ptr @"var.uring::IORING_OFF_SQES", align 8
  %coerce.trunc87 = trunc i64 %var.load85 to i32
  %call.res88 = call ptr @mmap(ptr %addr.ffi.clean77, i64 %var.load78, i64 %bortmp81, i64 %bortmp84, i32 %coerce.trunc87, i64 %var.load86)
  store ptr %call.res88, ptr %var.sqes_ptr, align 8
  %var.load89 = load ptr, ptr %var.sqes_ptr, align 8
  %coerce.ptr2int90 = ptrtoint ptr %var.load89 to i64
  %cmptmp91 = icmp eq i64 %coerce.ptr2int90, -1
  br i1 %cmptmp91, label %choice.then92, label %choice.exit93

ret.dead71:                                       ; No predecessors!
  br label %choice.exit67

choice.then92:                                    ; preds = %choice.exit67
  %var.load94 = load ptr, ptr %var.sq_ptr, align 8
  %addr.ffi.int95 = ptrtoint ptr %var.load94 to i64
  %addr.ffi.masked96 = and i64 %addr.ffi.int95, 281474976710655
  %addr.ffi.clean97 = inttoptr i64 %addr.ffi.masked96 to ptr
  %var.load98 = load i64, ptr %var.sq_sz, align 8
  %call.res99 = call i64 @munmap(ptr %addr.ffi.clean97, i64 %var.load98)
  %var.load100 = load i64, ptr %var.fd, align 8
  %coerce.trunc101 = trunc i64 %var.load100 to i32
  %call.res102 = call i32 @close(i32 %coerce.trunc101)
  ret { i1, i64 } { i1 false, i64 ptrtoint (ptr @str.2.struct to i64) }

choice.exit93:                                    ; preds = %ret.dead103, %choice.exit67
  %var.load104 = load ptr, ptr %var.params, align 8
  %fld.gep105 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load104, i32 0, i32 25
  %fld.load106 = load i32, ptr %fld.gep105, align 4
  %coerce.zext107 = zext i32 %fld.load106 to i64
  %var.load108 = load i64, ptr %var.cq_entries, align 8
  %multmp109 = mul i64 %var.load108, 16
  %addtmp110 = add i64 %coerce.zext107, %multmp109
  store i64 %addtmp110, ptr %var.cq_sz, align 8
  %var.load111 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int112 = ptrtoint ptr %var.load111 to i64
  %addr.ffi.masked113 = and i64 %addr.ffi.int112, 281474976710655
  %addr.ffi.clean114 = inttoptr i64 %addr.ffi.masked113 to ptr
  %var.load115 = load i64, ptr %var.cq_sz, align 8
  %var.load116 = load i64, ptr @"var.uring::PROT_READ", align 8
  %var.load117 = load i64, ptr @"var.uring::PROT_WRITE", align 8
  %bortmp118 = or i64 %var.load116, %var.load117
  %var.load119 = load i64, ptr @"var.uring::MAP_SHARED", align 8
  %var.load120 = load i64, ptr @"var.uring::MAP_POPULATE", align 8
  %bortmp121 = or i64 %var.load119, %var.load120
  %var.load122 = load i64, ptr %var.fd, align 8
  %var.load123 = load i64, ptr @"var.uring::IORING_OFF_CQ_RING", align 8
  %coerce.trunc124 = trunc i64 %var.load122 to i32
  %call.res125 = call ptr @mmap(ptr %addr.ffi.clean114, i64 %var.load115, i64 %bortmp118, i64 %bortmp121, i32 %coerce.trunc124, i64 %var.load123)
  store ptr %call.res125, ptr %var.cq_ptr, align 8
  %var.load126 = load ptr, ptr %var.cq_ptr, align 8
  %coerce.ptr2int127 = ptrtoint ptr %var.load126 to i64
  %cmptmp128 = icmp eq i64 %coerce.ptr2int127, -1
  br i1 %cmptmp128, label %choice.then129, label %choice.exit130

ret.dead103:                                      ; No predecessors!
  br label %choice.exit93

choice.then129:                                   ; preds = %choice.exit93
  %var.load131 = load ptr, ptr %var.sqes_ptr, align 8
  %addr.ffi.int132 = ptrtoint ptr %var.load131 to i64
  %addr.ffi.masked133 = and i64 %addr.ffi.int132, 281474976710655
  %addr.ffi.clean134 = inttoptr i64 %addr.ffi.masked133 to ptr
  %var.load135 = load i64, ptr %var.sqes_sz, align 8
  %call.res136 = call i64 @munmap(ptr %addr.ffi.clean134, i64 %var.load135)
  %var.load137 = load ptr, ptr %var.sq_ptr, align 8
  %addr.ffi.int138 = ptrtoint ptr %var.load137 to i64
  %addr.ffi.masked139 = and i64 %addr.ffi.int138, 281474976710655
  %addr.ffi.clean140 = inttoptr i64 %addr.ffi.masked139 to ptr
  %var.load141 = load i64, ptr %var.sq_sz, align 8
  %call.res142 = call i64 @munmap(ptr %addr.ffi.clean140, i64 %var.load141)
  %var.load143 = load i64, ptr %var.fd, align 8
  %coerce.trunc144 = trunc i64 %var.load143 to i32
  %call.res145 = call i32 @close(i32 %coerce.trunc144)
  ret { i1, i64 } { i1 false, i64 ptrtoint (ptr @str.3.struct to i64) }

choice.exit130:                                   ; preds = %ret.dead146, %choice.exit93
  %var.load147 = load i64, ptr %var.fd, align 8
  %var.load148 = load ptr, ptr %var.sq_ptr, align 8
  %var.load149 = load i64, ptr %var.sq_sz, align 8
  %var.load150 = load ptr, ptr %var.sqes_ptr, align 8
  %var.load151 = load i64, ptr %var.sqes_sz, align 8
  %var.load152 = load ptr, ptr %var.cq_ptr, align 8
  %var.load153 = load i64, ptr %var.cq_sz, align 8
  %var.load154 = load ptr, ptr %var.params, align 8
  %fld.gep155 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load154, i32 0, i32 10
  %fld.load156 = load i32, ptr %fld.gep155, align 4
  %coerce.zext157 = zext i32 %fld.load156 to i64
  %var.load158 = load ptr, ptr %var.params, align 8
  %fld.gep159 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load158, i32 0, i32 11
  %fld.load160 = load i32, ptr %fld.gep159, align 4
  %coerce.zext161 = zext i32 %fld.load160 to i64
  %var.load162 = load ptr, ptr %var.params, align 8
  %fld.gep163 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load162, i32 0, i32 12
  %fld.load164 = load i32, ptr %fld.gep163, align 4
  %coerce.zext165 = zext i32 %fld.load164 to i64
  %var.load166 = load ptr, ptr %var.params, align 8
  %fld.gep167 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load166, i32 0, i32 16
  %fld.load168 = load i32, ptr %fld.gep167, align 4
  %coerce.zext169 = zext i32 %fld.load168 to i64
  %var.load170 = load ptr, ptr %var.params, align 8
  %fld.gep171 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load170, i32 0, i32 20
  %fld.load172 = load i32, ptr %fld.gep171, align 4
  %coerce.zext173 = zext i32 %fld.load172 to i64
  %var.load174 = load ptr, ptr %var.params, align 8
  %fld.gep175 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load174, i32 0, i32 21
  %fld.load176 = load i32, ptr %fld.gep175, align 4
  %coerce.zext177 = zext i32 %fld.load176 to i64
  %var.load178 = load ptr, ptr %var.params, align 8
  %fld.gep179 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load178, i32 0, i32 22
  %fld.load180 = load i32, ptr %fld.gep179, align 4
  %coerce.zext181 = zext i32 %fld.load180 to i64
  %var.load182 = load ptr, ptr %var.params, align 8
  %fld.gep183 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load182, i32 0, i32 25
  %fld.load184 = load i32, ptr %fld.gep183, align 4
  %coerce.zext185 = zext i32 %fld.load184 to i64
  %var.load186 = load i64, ptr %var.sq_entries, align 8
  %var.load187 = load i64, ptr %var.cq_entries, align 8
  %arena.cur188 = call ptr @dva_arena_current()
  %rec.alloc189 = call ptr @dva_arena_alloc(ptr %arena.cur188, i64 ptrtoint (ptr getelementptr ({ i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld190 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 0
  store i64 %var.load147, ptr %rec.fld190, align 8
  %rec.fld191 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 1
  store ptr %var.load148, ptr %rec.fld191, align 8
  %rec.fld192 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 2
  store i64 %var.load149, ptr %rec.fld192, align 8
  %rec.fld193 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 3
  store ptr %var.load150, ptr %rec.fld193, align 8
  %rec.fld194 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 4
  store i64 %var.load151, ptr %rec.fld194, align 8
  %rec.fld195 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 5
  store ptr %var.load152, ptr %rec.fld195, align 8
  %rec.fld196 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 6
  store i64 %var.load153, ptr %rec.fld196, align 8
  %rec.fld197 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 7
  store i64 %coerce.zext157, ptr %rec.fld197, align 8
  %rec.fld198 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 8
  store i64 %coerce.zext161, ptr %rec.fld198, align 8
  %rec.fld199 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 9
  store i64 %coerce.zext165, ptr %rec.fld199, align 8
  %rec.fld200 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 10
  store i64 %coerce.zext169, ptr %rec.fld200, align 8
  %rec.fld201 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 11
  store i64 %coerce.zext173, ptr %rec.fld201, align 8
  %rec.fld202 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 12
  store i64 %coerce.zext177, ptr %rec.fld202, align 8
  %rec.fld203 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 13
  store i64 %coerce.zext181, ptr %rec.fld203, align 8
  %rec.fld204 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 14
  store i64 %coerce.zext185, ptr %rec.fld204, align 8
  %rec.fld205 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 15
  store i64 %var.load186, ptr %rec.fld205, align 8
  %rec.fld206 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 16
  store i64 %var.load187, ptr %rec.fld206, align 8
  %p.to.i64 = ptrtoint ptr %rec.alloc189 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay

ret.dead146:                                      ; No predecessors!
  br label %choice.exit130
}

define i1 @"uring::prep_sqe"(ptr %0, i64 %1, i64 %2, i64 %3, ptr %4, i64 %5, i64 %6) #1 {
entry:
  %var.user_data = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.addr = alloca ptr, align 8
  %var.off = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var.op = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.op, align 8
  store i64 %2, ptr %var.fd, align 8
  store i64 %3, ptr %var.off, align 8
  store ptr %4, ptr %var.addr, align 8
  store i64 %5, ptr %var.len, align 8
  store i64 %6, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr %var.op, align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %var.load3 = load i64, ptr %var.off, align 8
  %var.load4 = load ptr, ptr %var.addr, align 8
  %var.load5 = load i64, ptr %var.len, align 8
  %var.load6 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe_flags"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 %var.load3, ptr %var.load4, i64 %var.load5, i64 0, i64 %var.load6)
  ret i1 %call.res
}

define i1 @"uring::prep_sqe_flags"(ptr %0, i64 %1, i64 %2, i64 %3, ptr %4, i64 %5, i64 %6, i64 %7) #1 {
entry:
  %var.target_addr = alloca ptr, align 8
  %var.sqe_dest = alloca ptr, align 8
  %var.idx = alloca i64, align 8
  %var.mask = alloca i32, align 4
  %var.used = alloca i64, align 8
  %var.tail = alloca i32, align 4
  %var.head = alloca i32, align 4
  %var.user_data = alloca i64, align 8
  %var.op_flags = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.addr = alloca ptr, align 8
  %var.off = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var.op = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.op, align 8
  store i64 %2, ptr %var.fd, align 8
  store i64 %3, ptr %var.off, align 8
  store ptr %4, ptr %var.addr, align 8
  store i64 %5, ptr %var.len, align 8
  store i64 %6, ptr %var.op_flags, align 8
  store i64 %7, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.ring, align 8
  %fld.gep2 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load1, i32 0, i32 7
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %ptr.int.l = ptrtoint ptr %fld.load to i64
  %addtmp = add i64 %ptr.int.l, %fld.load3
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
  %raw.load = load volatile i32, ptr %raw.clean.ptr, align 4
  store i32 %raw.load, ptr %var.head, align 4
  %var.load4 = load ptr, ptr %var.ring, align 8
  %fld.gep5 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %var.load7 = load ptr, ptr %var.ring, align 8
  %fld.gep8 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load7, i32 0, i32 8
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %ptr.int.l10 = ptrtoint ptr %fld.load6 to i64
  %addtmp11 = add i64 %ptr.int.l10, %fld.load9
  %ptr.res12 = inttoptr i64 %addtmp11 to ptr
  %raw.int13 = ptrtoint ptr %ptr.res12 to i64
  %raw.clean.int14 = and i64 %raw.int13, 281474976710655
  %raw.clean.ptr15 = inttoptr i64 %raw.clean.int14 to ptr
  %addr.tag16 = lshr i64 %raw.int13, 48
  %addr.immortal17 = icmp eq i64 %addr.tag16, 0
  br i1 %addr.immortal17, label %addr_ok19, label %addr_gen_check18

addr_stale:                                       ; preds = %addr_gen_check
  %8 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check18:                                 ; preds = %addr_ok
  %arena.cur21 = call ptr @dva_arena_current()
  %tag.valid22 = call i1 @dva_arena_validate_tag(ptr %arena.cur21, i64 %addr.tag16)
  br i1 %tag.valid22, label %addr_ok19, label %addr_stale20

addr_ok19:                                        ; preds = %addr_stale20, %addr_gen_check18, %addr_ok
  %raw.load23 = load volatile i32, ptr %raw.clean.ptr15, align 4
  store i32 %raw.load23, ptr %var.tail, align 4
  %var.load24 = load i32, ptr %var.tail, align 4
  %var.load25 = load i32, ptr %var.head, align 4
  %subtmp = sub i32 %var.load24, %var.load25
  %coerce.zext = zext i32 %subtmp to i64
  store i64 %coerce.zext, ptr %var.used, align 8
  %var.load26 = load i64, ptr %var.used, align 8
  %var.load27 = load ptr, ptr %var.ring, align 8
  %fld.gep28 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load27, i32 0, i32 15
  %fld.load29 = load i64, ptr %fld.gep28, align 8
  %cmptmp = icmp sge i64 %var.load26, %fld.load29
  br i1 %cmptmp, label %choice.then, label %choice.exit

addr_stale20:                                     ; preds = %addr_gen_check18
  %9 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok19

choice.then:                                      ; preds = %addr_ok19
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %addr_ok19
  %var.load30 = load ptr, ptr %var.ring, align 8
  %fld.gep31 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load30, i32 0, i32 1
  %fld.load32 = load ptr, ptr %fld.gep31, align 8
  %var.load33 = load ptr, ptr %var.ring, align 8
  %fld.gep34 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load33, i32 0, i32 9
  %fld.load35 = load i64, ptr %fld.gep34, align 8
  %ptr.int.l36 = ptrtoint ptr %fld.load32 to i64
  %addtmp37 = add i64 %ptr.int.l36, %fld.load35
  %ptr.res38 = inttoptr i64 %addtmp37 to ptr
  %raw.int39 = ptrtoint ptr %ptr.res38 to i64
  %raw.clean.int40 = and i64 %raw.int39, 281474976710655
  %raw.clean.ptr41 = inttoptr i64 %raw.clean.int40 to ptr
  %addr.tag42 = lshr i64 %raw.int39, 48
  %addr.immortal43 = icmp eq i64 %addr.tag42, 0
  br i1 %addr.immortal43, label %addr_ok45, label %addr_gen_check44

ret.dead:                                         ; No predecessors!
  br label %choice.exit

addr_gen_check44:                                 ; preds = %choice.exit
  %arena.cur47 = call ptr @dva_arena_current()
  %tag.valid48 = call i1 @dva_arena_validate_tag(ptr %arena.cur47, i64 %addr.tag42)
  br i1 %tag.valid48, label %addr_ok45, label %addr_stale46

addr_ok45:                                        ; preds = %addr_stale46, %addr_gen_check44, %choice.exit
  %raw.load49 = load volatile i32, ptr %raw.clean.ptr41, align 4
  store i32 %raw.load49, ptr %var.mask, align 4
  %var.load50 = load i32, ptr %var.tail, align 4
  %var.load51 = load i32, ptr %var.mask, align 4
  %bandtmp = and i32 %var.load50, %var.load51
  %coerce.zext52 = zext i32 %bandtmp to i64
  store i64 %coerce.zext52, ptr %var.idx, align 8
  %var.load53 = load ptr, ptr %var.ring, align 8
  %fld.gep54 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load53, i32 0, i32 3
  %fld.load55 = load ptr, ptr %fld.gep54, align 8
  %var.load56 = load i64, ptr %var.idx, align 8
  %multmp = mul i64 %var.load56, 64
  %ptr.int.l57 = ptrtoint ptr %fld.load55 to i64
  %addtmp58 = add i64 %ptr.int.l57, %multmp
  %ptr.res59 = inttoptr i64 %addtmp58 to ptr
  store ptr %ptr.res59, ptr %var.sqe_dest, align 8
  %var.load60 = load i64, ptr %var.op, align 8
  %var.load61 = load i64, ptr @"var.uring::OP_ASYNC_CANCEL", align 8
  %cmptmp62 = icmp eq i64 %var.load60, %var.load61
  br i1 %cmptmp62, label %choice.then63, label %choice.else

addr_stale46:                                     ; preds = %addr_gen_check44
  %10 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok45

choice.then63:                                    ; preds = %addr_ok45
  %var.load65 = load ptr, ptr %var.addr, align 8
  br label %choice.exit64

choice.else:                                      ; preds = %addr_ok45
  %var.load66 = load ptr, ptr %var.addr, align 8
  %ptrmask = call ptr @llvm.ptrmask.p0.i64(ptr %var.load66, i64 281474976710655)
  br label %choice.exit64

choice.exit64:                                    ; preds = %choice.else, %choice.then63
  %choice.res = phi ptr [ %var.load65, %choice.then63 ], [ %ptrmask, %choice.else ]
  store ptr %choice.res, ptr %var.target_addr, align 8
  %var.load67 = load ptr, ptr %var.sqe_dest, align 8
  %raw.int68 = ptrtoint ptr %var.load67 to i64
  %raw.clean.int69 = and i64 %raw.int68, 281474976710655
  %raw.clean.ptr70 = inttoptr i64 %raw.clean.int69 to ptr
  %addr.tag71 = lshr i64 %raw.int68, 48
  %addr.immortal72 = icmp eq i64 %addr.tag71, 0
  br i1 %addr.immortal72, label %addr_ok74, label %addr_gen_check73

addr_gen_check73:                                 ; preds = %choice.exit64
  %arena.cur76 = call ptr @dva_arena_current()
  %tag.valid77 = call i1 @dva_arena_validate_tag(ptr %arena.cur76, i64 %addr.tag71)
  br i1 %tag.valid77, label %addr_ok74, label %addr_stale75

addr_ok74:                                        ; preds = %addr_stale75, %addr_gen_check73, %choice.exit64
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr70, i8 0, i64 64, i1 false)
  %var.load78 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l79 = ptrtoint ptr %var.load78 to i64
  %addtmp80 = add i64 %ptr.int.l79, 0
  %ptr.res81 = inttoptr i64 %addtmp80 to ptr
  %var.load82 = load i64, ptr %var.op, align 8
  %coerce.trunc = trunc i64 %var.load82 to i8
  %raw.int83 = ptrtoint ptr %ptr.res81 to i64
  %raw.clean.int84 = and i64 %raw.int83, 281474976710655
  %raw.clean.ptr85 = inttoptr i64 %raw.clean.int84 to ptr
  %addr.tag86 = lshr i64 %raw.int83, 48
  %addr.immortal87 = icmp eq i64 %addr.tag86, 0
  br i1 %addr.immortal87, label %addr_ok89, label %addr_gen_check88

addr_stale75:                                     ; preds = %addr_gen_check73
  %11 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok74

addr_gen_check88:                                 ; preds = %addr_ok74
  %arena.cur91 = call ptr @dva_arena_current()
  %tag.valid92 = call i1 @dva_arena_validate_tag(ptr %arena.cur91, i64 %addr.tag86)
  br i1 %tag.valid92, label %addr_ok89, label %addr_stale90

addr_ok89:                                        ; preds = %addr_stale90, %addr_gen_check88, %addr_ok74
  store i8 %coerce.trunc, ptr %raw.clean.ptr85, align 1
  %var.load93 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l94 = ptrtoint ptr %var.load93 to i64
  %addtmp95 = add i64 %ptr.int.l94, 4
  %ptr.res96 = inttoptr i64 %addtmp95 to ptr
  %var.load97 = load i64, ptr %var.fd, align 8
  %coerce.trunc98 = trunc i64 %var.load97 to i32
  %raw.int99 = ptrtoint ptr %ptr.res96 to i64
  %raw.clean.int100 = and i64 %raw.int99, 281474976710655
  %raw.clean.ptr101 = inttoptr i64 %raw.clean.int100 to ptr
  %addr.tag102 = lshr i64 %raw.int99, 48
  %addr.immortal103 = icmp eq i64 %addr.tag102, 0
  br i1 %addr.immortal103, label %addr_ok105, label %addr_gen_check104

addr_stale90:                                     ; preds = %addr_gen_check88
  %12 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok89

addr_gen_check104:                                ; preds = %addr_ok89
  %arena.cur107 = call ptr @dva_arena_current()
  %tag.valid108 = call i1 @dva_arena_validate_tag(ptr %arena.cur107, i64 %addr.tag102)
  br i1 %tag.valid108, label %addr_ok105, label %addr_stale106

addr_ok105:                                       ; preds = %addr_stale106, %addr_gen_check104, %addr_ok89
  store i32 %coerce.trunc98, ptr %raw.clean.ptr101, align 4
  %var.load109 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l110 = ptrtoint ptr %var.load109 to i64
  %addtmp111 = add i64 %ptr.int.l110, 8
  %ptr.res112 = inttoptr i64 %addtmp111 to ptr
  %var.load113 = load i64, ptr %var.off, align 8
  %raw.int114 = ptrtoint ptr %ptr.res112 to i64
  %raw.clean.int115 = and i64 %raw.int114, 281474976710655
  %raw.clean.ptr116 = inttoptr i64 %raw.clean.int115 to ptr
  %addr.tag117 = lshr i64 %raw.int114, 48
  %addr.immortal118 = icmp eq i64 %addr.tag117, 0
  br i1 %addr.immortal118, label %addr_ok120, label %addr_gen_check119

addr_stale106:                                    ; preds = %addr_gen_check104
  %13 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok105

addr_gen_check119:                                ; preds = %addr_ok105
  %arena.cur122 = call ptr @dva_arena_current()
  %tag.valid123 = call i1 @dva_arena_validate_tag(ptr %arena.cur122, i64 %addr.tag117)
  br i1 %tag.valid123, label %addr_ok120, label %addr_stale121

addr_ok120:                                       ; preds = %addr_stale121, %addr_gen_check119, %addr_ok105
  store i64 %var.load113, ptr %raw.clean.ptr116, align 8
  %var.load124 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l125 = ptrtoint ptr %var.load124 to i64
  %addtmp126 = add i64 %ptr.int.l125, 16
  %ptr.res127 = inttoptr i64 %addtmp126 to ptr
  %var.load128 = load ptr, ptr %var.target_addr, align 8
  %raw.int129 = ptrtoint ptr %ptr.res127 to i64
  %raw.clean.int130 = and i64 %raw.int129, 281474976710655
  %raw.clean.ptr131 = inttoptr i64 %raw.clean.int130 to ptr
  %addr.tag132 = lshr i64 %raw.int129, 48
  %addr.immortal133 = icmp eq i64 %addr.tag132, 0
  br i1 %addr.immortal133, label %addr_ok135, label %addr_gen_check134

addr_stale121:                                    ; preds = %addr_gen_check119
  %14 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok120

addr_gen_check134:                                ; preds = %addr_ok120
  %arena.cur137 = call ptr @dva_arena_current()
  %tag.valid138 = call i1 @dva_arena_validate_tag(ptr %arena.cur137, i64 %addr.tag132)
  br i1 %tag.valid138, label %addr_ok135, label %addr_stale136

addr_ok135:                                       ; preds = %addr_stale136, %addr_gen_check134, %addr_ok120
  store ptr %var.load128, ptr %raw.clean.ptr131, align 8
  %var.load139 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l140 = ptrtoint ptr %var.load139 to i64
  %addtmp141 = add i64 %ptr.int.l140, 24
  %ptr.res142 = inttoptr i64 %addtmp141 to ptr
  %var.load143 = load i64, ptr %var.len, align 8
  %coerce.trunc144 = trunc i64 %var.load143 to i32
  %raw.int145 = ptrtoint ptr %ptr.res142 to i64
  %raw.clean.int146 = and i64 %raw.int145, 281474976710655
  %raw.clean.ptr147 = inttoptr i64 %raw.clean.int146 to ptr
  %addr.tag148 = lshr i64 %raw.int145, 48
  %addr.immortal149 = icmp eq i64 %addr.tag148, 0
  br i1 %addr.immortal149, label %addr_ok151, label %addr_gen_check150

addr_stale136:                                    ; preds = %addr_gen_check134
  %15 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok135

addr_gen_check150:                                ; preds = %addr_ok135
  %arena.cur153 = call ptr @dva_arena_current()
  %tag.valid154 = call i1 @dva_arena_validate_tag(ptr %arena.cur153, i64 %addr.tag148)
  br i1 %tag.valid154, label %addr_ok151, label %addr_stale152

addr_ok151:                                       ; preds = %addr_stale152, %addr_gen_check150, %addr_ok135
  store i32 %coerce.trunc144, ptr %raw.clean.ptr147, align 4
  %var.load155 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l156 = ptrtoint ptr %var.load155 to i64
  %addtmp157 = add i64 %ptr.int.l156, 28
  %ptr.res158 = inttoptr i64 %addtmp157 to ptr
  %var.load159 = load i64, ptr %var.op_flags, align 8
  %coerce.trunc160 = trunc i64 %var.load159 to i32
  %raw.int161 = ptrtoint ptr %ptr.res158 to i64
  %raw.clean.int162 = and i64 %raw.int161, 281474976710655
  %raw.clean.ptr163 = inttoptr i64 %raw.clean.int162 to ptr
  %addr.tag164 = lshr i64 %raw.int161, 48
  %addr.immortal165 = icmp eq i64 %addr.tag164, 0
  br i1 %addr.immortal165, label %addr_ok167, label %addr_gen_check166

addr_stale152:                                    ; preds = %addr_gen_check150
  %16 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok151

addr_gen_check166:                                ; preds = %addr_ok151
  %arena.cur169 = call ptr @dva_arena_current()
  %tag.valid170 = call i1 @dva_arena_validate_tag(ptr %arena.cur169, i64 %addr.tag164)
  br i1 %tag.valid170, label %addr_ok167, label %addr_stale168

addr_ok167:                                       ; preds = %addr_stale168, %addr_gen_check166, %addr_ok151
  store i32 %coerce.trunc160, ptr %raw.clean.ptr163, align 4
  %var.load171 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l172 = ptrtoint ptr %var.load171 to i64
  %addtmp173 = add i64 %ptr.int.l172, 32
  %ptr.res174 = inttoptr i64 %addtmp173 to ptr
  %var.load175 = load i64, ptr %var.user_data, align 8
  %raw.int176 = ptrtoint ptr %ptr.res174 to i64
  %raw.clean.int177 = and i64 %raw.int176, 281474976710655
  %raw.clean.ptr178 = inttoptr i64 %raw.clean.int177 to ptr
  %addr.tag179 = lshr i64 %raw.int176, 48
  %addr.immortal180 = icmp eq i64 %addr.tag179, 0
  br i1 %addr.immortal180, label %addr_ok182, label %addr_gen_check181

addr_stale168:                                    ; preds = %addr_gen_check166
  %17 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok167

addr_gen_check181:                                ; preds = %addr_ok167
  %arena.cur184 = call ptr @dva_arena_current()
  %tag.valid185 = call i1 @dva_arena_validate_tag(ptr %arena.cur184, i64 %addr.tag179)
  br i1 %tag.valid185, label %addr_ok182, label %addr_stale183

addr_ok182:                                       ; preds = %addr_stale183, %addr_gen_check181, %addr_ok167
  store i64 %var.load175, ptr %raw.clean.ptr178, align 8
  %var.load186 = load ptr, ptr %var.ring, align 8
  %fld.gep187 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load186, i32 0, i32 1
  %fld.load188 = load ptr, ptr %fld.gep187, align 8
  %var.load189 = load ptr, ptr %var.ring, align 8
  %fld.gep190 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load189, i32 0, i32 10
  %fld.load191 = load i64, ptr %fld.gep190, align 8
  %ptr.int.l192 = ptrtoint ptr %fld.load188 to i64
  %addtmp193 = add i64 %ptr.int.l192, %fld.load191
  %ptr.res194 = inttoptr i64 %addtmp193 to ptr
  %var.load195 = load i64, ptr %var.idx, align 8
  %multmp196 = mul i64 %var.load195, 4
  %ptr.int.l197 = ptrtoint ptr %ptr.res194 to i64
  %addtmp198 = add i64 %ptr.int.l197, %multmp196
  %ptr.res199 = inttoptr i64 %addtmp198 to ptr
  %var.load200 = load i64, ptr %var.idx, align 8
  %coerce.trunc201 = trunc i64 %var.load200 to i32
  %raw.int202 = ptrtoint ptr %ptr.res199 to i64
  %raw.clean.int203 = and i64 %raw.int202, 281474976710655
  %raw.clean.ptr204 = inttoptr i64 %raw.clean.int203 to ptr
  %addr.tag205 = lshr i64 %raw.int202, 48
  %addr.immortal206 = icmp eq i64 %addr.tag205, 0
  br i1 %addr.immortal206, label %addr_ok208, label %addr_gen_check207

addr_stale183:                                    ; preds = %addr_gen_check181
  %18 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok182

addr_gen_check207:                                ; preds = %addr_ok182
  %arena.cur210 = call ptr @dva_arena_current()
  %tag.valid211 = call i1 @dva_arena_validate_tag(ptr %arena.cur210, i64 %addr.tag205)
  br i1 %tag.valid211, label %addr_ok208, label %addr_stale209

addr_ok208:                                       ; preds = %addr_stale209, %addr_gen_check207, %addr_ok182
  store i32 %coerce.trunc201, ptr %raw.clean.ptr204, align 4
  %var.load212 = load ptr, ptr %var.ring, align 8
  %fld.gep213 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load212, i32 0, i32 1
  %fld.load214 = load ptr, ptr %fld.gep213, align 8
  %var.load215 = load ptr, ptr %var.ring, align 8
  %fld.gep216 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load215, i32 0, i32 8
  %fld.load217 = load i64, ptr %fld.gep216, align 8
  %ptr.int.l218 = ptrtoint ptr %fld.load214 to i64
  %addtmp219 = add i64 %ptr.int.l218, %fld.load217
  %ptr.res220 = inttoptr i64 %addtmp219 to ptr
  %var.load221 = load i32, ptr %var.tail, align 4
  %addtmp222 = add i32 %var.load221, 1
  %raw.int223 = ptrtoint ptr %ptr.res220 to i64
  %raw.clean.int224 = and i64 %raw.int223, 281474976710655
  %raw.clean.ptr225 = inttoptr i64 %raw.clean.int224 to ptr
  %addr.tag226 = lshr i64 %raw.int223, 48
  %addr.immortal227 = icmp eq i64 %addr.tag226, 0
  br i1 %addr.immortal227, label %addr_ok229, label %addr_gen_check228

addr_stale209:                                    ; preds = %addr_gen_check207
  %19 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok208

addr_gen_check228:                                ; preds = %addr_ok208
  %arena.cur231 = call ptr @dva_arena_current()
  %tag.valid232 = call i1 @dva_arena_validate_tag(ptr %arena.cur231, i64 %addr.tag226)
  br i1 %tag.valid232, label %addr_ok229, label %addr_stale230

addr_ok229:                                       ; preds = %addr_stale230, %addr_gen_check228, %addr_ok208
  store i32 %addtmp222, ptr %raw.clean.ptr225, align 4
  ret i1 true

addr_stale230:                                    ; preds = %addr_gen_check228
  %20 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok229
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare ptr @llvm.ptrmask.p0.i64(ptr, i64) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

define i1 @"uring::prep_nop"(ptr %0, i64 %1) #1 {
entry:
  %var.user_data = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_NOP", align 8
  %var.load2 = load ptr, ptr @"var.sys::addr_null", align 8
  %var.load3 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 0, i64 0, ptr %var.load2, i64 0, i64 %var.load3)
  ret i1 %call.res
}

define i1 @"uring::prep_read"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4) #1 {
entry:
  %var.user_data = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.buf = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.fd, align 8
  store ptr %2, ptr %var.buf, align 8
  store i64 %3, ptr %var.len, align 8
  store i64 %4, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_READ", align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %var.load3 = load ptr, ptr %var.buf, align 8
  %var.load4 = load i64, ptr %var.len, align 8
  %var.load5 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 -1, ptr %var.load3, i64 %var.load4, i64 %var.load5)
  ret i1 %call.res
}

define i1 @"uring::prep_read_at"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4, i64 %5) #1 {
entry:
  %var.user_data = alloca i64, align 8
  %var.off = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.buf = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.fd, align 8
  store ptr %2, ptr %var.buf, align 8
  store i64 %3, ptr %var.len, align 8
  store i64 %4, ptr %var.off, align 8
  store i64 %5, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_READ", align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %var.load3 = load i64, ptr %var.off, align 8
  %var.load4 = load ptr, ptr %var.buf, align 8
  %var.load5 = load i64, ptr %var.len, align 8
  %var.load6 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 %var.load3, ptr %var.load4, i64 %var.load5, i64 %var.load6)
  ret i1 %call.res
}

define i1 @"uring::prep_write"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4) #1 {
entry:
  %var.user_data = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.buf = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.fd, align 8
  store ptr %2, ptr %var.buf, align 8
  store i64 %3, ptr %var.len, align 8
  store i64 %4, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_WRITE", align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %var.load3 = load ptr, ptr %var.buf, align 8
  %var.load4 = load i64, ptr %var.len, align 8
  %var.load5 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 -1, ptr %var.load3, i64 %var.load4, i64 %var.load5)
  ret i1 %call.res
}

define i1 @"uring::prep_write_at"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4, i64 %5) #1 {
entry:
  %var.user_data = alloca i64, align 8
  %var.off = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.buf = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.fd, align 8
  store ptr %2, ptr %var.buf, align 8
  store i64 %3, ptr %var.len, align 8
  store i64 %4, ptr %var.off, align 8
  store i64 %5, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_WRITE", align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %var.load3 = load i64, ptr %var.off, align 8
  %var.load4 = load ptr, ptr %var.buf, align 8
  %var.load5 = load i64, ptr %var.len, align 8
  %var.load6 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 %var.load3, ptr %var.load4, i64 %var.load5, i64 %var.load6)
  ret i1 %call.res
}

define i1 @"uring::prep_close"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.user_data = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.fd, align 8
  store i64 %2, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_CLOSE", align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %var.load3 = load ptr, ptr @"var.sys::addr_null", align 8
  %var.load4 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 0, ptr %var.load3, i64 0, i64 %var.load4)
  ret i1 %call.res
}

define i1 @"uring::prep_recv"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4, i64 %5) #1 {
entry:
  %var.user_data = alloca i64, align 8
  %var.flags = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.buf = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.fd, align 8
  store ptr %2, ptr %var.buf, align 8
  store i64 %3, ptr %var.len, align 8
  store i64 %4, ptr %var.flags, align 8
  store i64 %5, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_RECV", align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %var.load3 = load ptr, ptr %var.buf, align 8
  %var.load4 = load i64, ptr %var.len, align 8
  %var.load5 = load i64, ptr %var.flags, align 8
  %var.load6 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe_flags"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 0, ptr %var.load3, i64 %var.load4, i64 %var.load5, i64 %var.load6)
  ret i1 %call.res
}

define i1 @"uring::prep_send"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4, i64 %5) #1 {
entry:
  %var.user_data = alloca i64, align 8
  %var.flags = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.buf = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.fd, align 8
  store ptr %2, ptr %var.buf, align 8
  store i64 %3, ptr %var.len, align 8
  store i64 %4, ptr %var.flags, align 8
  store i64 %5, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_SEND", align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %var.load3 = load ptr, ptr %var.buf, align 8
  %var.load4 = load i64, ptr %var.len, align 8
  %var.load5 = load i64, ptr %var.flags, align 8
  %var.load6 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe_flags"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 0, ptr %var.load3, i64 %var.load4, i64 %var.load5, i64 %var.load6)
  ret i1 %call.res
}

define i1 @"uring::prep_accept"(ptr %0, i64 %1, ptr %2, ptr %3, i64 %4, i64 %5) #1 {
entry:
  %var.user_data = alloca i64, align 8
  %var.flags = alloca i64, align 8
  %var.addrlen_ptr = alloca ptr, align 8
  %var.addr = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.fd, align 8
  store ptr %2, ptr %var.addr, align 8
  store ptr %3, ptr %var.addrlen_ptr, align 8
  store i64 %4, ptr %var.flags, align 8
  store i64 %5, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_ACCEPT", align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %var.load3 = load ptr, ptr %var.addrlen_ptr, align 8
  %coerce.ptr2int = ptrtoint ptr %var.load3 to i64
  %var.load4 = load ptr, ptr %var.addr, align 8
  %var.load5 = load i64, ptr %var.flags, align 8
  %var.load6 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe_flags"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 %coerce.ptr2int, ptr %var.load4, i64 0, i64 %var.load5, i64 %var.load6)
  ret i1 %call.res
}

define i1 @"uring::prep_cancel"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.user_data = alloca i64, align 8
  %var.target_user_data = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.target_user_data, align 8
  store i64 %2, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_ASYNC_CANCEL", align 8
  %var.load2 = load i64, ptr %var.target_user_data, align 8
  %cast.int2ptr = inttoptr i64 %var.load2 to ptr
  %var.load3 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe_flags"(ptr %var.load, i64 %var.load1, i64 -1, i64 0, ptr %cast.int2ptr, i64 0, i64 0, i64 %var.load3)
  ret i1 %call.res
}

define i1 @"uring::prep_timeout"(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4) #1 {
entry:
  %var.user_data = alloca i64, align 8
  %var.flags = alloca i64, align 8
  %var.count = alloca i64, align 8
  %var.ts_ptr = alloca ptr, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store ptr %1, ptr %var.ts_ptr, align 8
  store i64 %2, ptr %var.count, align 8
  store i64 %3, ptr %var.flags, align 8
  store i64 %4, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_TIMEOUT", align 8
  %var.load2 = load i64, ptr %var.count, align 8
  %var.load3 = load ptr, ptr %var.ts_ptr, align 8
  %var.load4 = load i64, ptr %var.flags, align 8
  %var.load5 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe_flags"(ptr %var.load, i64 %var.load1, i64 -1, i64 %var.load2, ptr %var.load3, i64 1, i64 %var.load4, i64 %var.load5)
  ret i1 %call.res
}

define i1 @"uring::prep_poll_add"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %var.user_data = alloca i64, align 8
  %var.poll_mask = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.fd, align 8
  store i64 %2, ptr %var.poll_mask, align 8
  store i64 %3, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_POLL_ADD", align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %var.load3 = load ptr, ptr @"var.sys::addr_null", align 8
  %var.load4 = load i64, ptr %var.poll_mask, align 8
  %var.load5 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe_flags"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 0, ptr %var.load3, i64 0, i64 %var.load4, i64 %var.load5)
  ret i1 %call.res
}

define i64 @"uring::sq_space"(ptr %0) #1 {
entry:
  %var.used = alloca i64, align 8
  %var.tail = alloca i32, align 4
  %var.head = alloca i32, align 4
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.ring, align 8
  %fld.gep2 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load1, i32 0, i32 7
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %ptr.int.l = ptrtoint ptr %fld.load to i64
  %addtmp = add i64 %ptr.int.l, %fld.load3
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
  %raw.load = load volatile i32, ptr %raw.clean.ptr, align 4
  store i32 %raw.load, ptr %var.head, align 4
  %var.load4 = load ptr, ptr %var.ring, align 8
  %fld.gep5 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %var.load7 = load ptr, ptr %var.ring, align 8
  %fld.gep8 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load7, i32 0, i32 8
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %ptr.int.l10 = ptrtoint ptr %fld.load6 to i64
  %addtmp11 = add i64 %ptr.int.l10, %fld.load9
  %ptr.res12 = inttoptr i64 %addtmp11 to ptr
  %raw.int13 = ptrtoint ptr %ptr.res12 to i64
  %raw.clean.int14 = and i64 %raw.int13, 281474976710655
  %raw.clean.ptr15 = inttoptr i64 %raw.clean.int14 to ptr
  %addr.tag16 = lshr i64 %raw.int13, 48
  %addr.immortal17 = icmp eq i64 %addr.tag16, 0
  br i1 %addr.immortal17, label %addr_ok19, label %addr_gen_check18

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check18:                                 ; preds = %addr_ok
  %arena.cur21 = call ptr @dva_arena_current()
  %tag.valid22 = call i1 @dva_arena_validate_tag(ptr %arena.cur21, i64 %addr.tag16)
  br i1 %tag.valid22, label %addr_ok19, label %addr_stale20

addr_ok19:                                        ; preds = %addr_stale20, %addr_gen_check18, %addr_ok
  %raw.load23 = load volatile i32, ptr %raw.clean.ptr15, align 4
  store i32 %raw.load23, ptr %var.tail, align 4
  %var.load24 = load i32, ptr %var.tail, align 4
  %var.load25 = load i32, ptr %var.head, align 4
  %subtmp = sub i32 %var.load24, %var.load25
  %coerce.zext = zext i32 %subtmp to i64
  %bandtmp = and i64 %coerce.zext, 4294967295
  store i64 %bandtmp, ptr %var.used, align 8
  %var.load26 = load ptr, ptr %var.ring, align 8
  %fld.gep27 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load26, i32 0, i32 15
  %fld.load28 = load i64, ptr %fld.gep27, align 8
  %var.load29 = load i64, ptr %var.used, align 8
  %subtmp30 = sub i64 %fld.load28, %var.load29
  ret i64 %subtmp30

addr_stale20:                                     ; preds = %addr_gen_check18
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok19
}

define i64 @"uring::submit_and_wait"(ptr %0, i64 %1) #1 {
entry:
  %var.flags = alloca i64, align 8
  %var.to_submit = alloca i64, align 8
  %var.tail = alloca i32, align 4
  %var.head = alloca i32, align 4
  %var.wait_nr = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.wait_nr, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.ring, align 8
  %fld.gep2 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load1, i32 0, i32 7
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %ptr.int.l = ptrtoint ptr %fld.load to i64
  %addtmp = add i64 %ptr.int.l, %fld.load3
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
  %raw.load = load volatile i32, ptr %raw.clean.ptr, align 4
  store i32 %raw.load, ptr %var.head, align 4
  %var.load4 = load ptr, ptr %var.ring, align 8
  %fld.gep5 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %var.load7 = load ptr, ptr %var.ring, align 8
  %fld.gep8 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load7, i32 0, i32 8
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %ptr.int.l10 = ptrtoint ptr %fld.load6 to i64
  %addtmp11 = add i64 %ptr.int.l10, %fld.load9
  %ptr.res12 = inttoptr i64 %addtmp11 to ptr
  %raw.int13 = ptrtoint ptr %ptr.res12 to i64
  %raw.clean.int14 = and i64 %raw.int13, 281474976710655
  %raw.clean.ptr15 = inttoptr i64 %raw.clean.int14 to ptr
  %addr.tag16 = lshr i64 %raw.int13, 48
  %addr.immortal17 = icmp eq i64 %addr.tag16, 0
  br i1 %addr.immortal17, label %addr_ok19, label %addr_gen_check18

addr_stale:                                       ; preds = %addr_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check18:                                 ; preds = %addr_ok
  %arena.cur21 = call ptr @dva_arena_current()
  %tag.valid22 = call i1 @dva_arena_validate_tag(ptr %arena.cur21, i64 %addr.tag16)
  br i1 %tag.valid22, label %addr_ok19, label %addr_stale20

addr_ok19:                                        ; preds = %addr_stale20, %addr_gen_check18, %addr_ok
  %raw.load23 = load volatile i32, ptr %raw.clean.ptr15, align 4
  store i32 %raw.load23, ptr %var.tail, align 4
  %var.load24 = load i32, ptr %var.tail, align 4
  %var.load25 = load i32, ptr %var.head, align 4
  %subtmp = sub i32 %var.load24, %var.load25
  %coerce.zext = zext i32 %subtmp to i64
  %bandtmp = and i64 %coerce.zext, 4294967295
  store i64 %bandtmp, ptr %var.to_submit, align 8
  %var.load26 = load i64, ptr %var.wait_nr, align 8
  %cmptmp = icmp sgt i64 %var.load26, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

addr_stale20:                                     ; preds = %addr_gen_check18
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok19

choice.then:                                      ; preds = %addr_ok19
  %var.load27 = load i64, ptr @"var.uring::IORING_ENTER_GETEVENTS", align 8
  br label %choice.exit

choice.else:                                      ; preds = %addr_ok19
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load27, %choice.then ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.flags, align 8
  %var.load28 = load i64, ptr @"var.uring::SYS_IO_URING_ENTER", align 8
  %var.load29 = load ptr, ptr %var.ring, align 8
  %fld.gep30 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load29, i32 0, i32 0
  %fld.load31 = load i64, ptr %fld.gep30, align 8
  %cast.int2ptr = inttoptr i64 %fld.load31 to ptr
  %addr.ffi.int = ptrtoint ptr %cast.int2ptr to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load32 = load i64, ptr %var.to_submit, align 8
  %cast.int2ptr33 = inttoptr i64 %var.load32 to ptr
  %addr.ffi.int34 = ptrtoint ptr %cast.int2ptr33 to i64
  %addr.ffi.masked35 = and i64 %addr.ffi.int34, 281474976710655
  %addr.ffi.clean36 = inttoptr i64 %addr.ffi.masked35 to ptr
  %var.load37 = load i64, ptr %var.wait_nr, align 8
  %cast.int2ptr38 = inttoptr i64 %var.load37 to ptr
  %addr.ffi.int39 = ptrtoint ptr %cast.int2ptr38 to i64
  %addr.ffi.masked40 = and i64 %addr.ffi.int39, 281474976710655
  %addr.ffi.clean41 = inttoptr i64 %addr.ffi.masked40 to ptr
  %var.load42 = load i64, ptr %var.flags, align 8
  %cast.int2ptr43 = inttoptr i64 %var.load42 to ptr
  %addr.ffi.int44 = ptrtoint ptr %cast.int2ptr43 to i64
  %addr.ffi.masked45 = and i64 %addr.ffi.int44, 281474976710655
  %addr.ffi.clean46 = inttoptr i64 %addr.ffi.masked45 to ptr
  %var.load47 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int48 = ptrtoint ptr %var.load47 to i64
  %addr.ffi.masked49 = and i64 %addr.ffi.int48, 281474976710655
  %addr.ffi.clean50 = inttoptr i64 %addr.ffi.masked49 to ptr
  %var.load51 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int52 = ptrtoint ptr %var.load51 to i64
  %addr.ffi.masked53 = and i64 %addr.ffi.int52, 281474976710655
  %addr.ffi.clean54 = inttoptr i64 %addr.ffi.masked53 to ptr
  %call.res = call i64 @syscall(i64 %var.load28, ptr %addr.ffi.clean, ptr %addr.ffi.clean36, ptr %addr.ffi.clean41, ptr %addr.ffi.clean46, ptr %addr.ffi.clean50, ptr %addr.ffi.clean54)
  ret i64 %call.res
}

define i64 @"uring::submit"(ptr %0) #1 {
entry:
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %call.res = call i64 @"uring::submit_and_wait"(ptr %var.load, i64 0)
  ret i64 %call.res
}

define ptr @"uring::peek_cqe"(ptr %0) #1 {
entry:
  %var.cqe = alloca ptr, align 8
  %var.cqe_ptr = alloca ptr, align 8
  %var.idx = alloca i64, align 8
  %var.mask = alloca i32, align 4
  %var.tail = alloca i32, align 4
  %var.head = alloca i32, align 4
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 5
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.ring, align 8
  %fld.gep2 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load1, i32 0, i32 11
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %ptr.int.l = ptrtoint ptr %fld.load to i64
  %addtmp = add i64 %ptr.int.l, %fld.load3
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
  %raw.load = load volatile i32, ptr %raw.clean.ptr, align 4
  store i32 %raw.load, ptr %var.head, align 4
  %var.load4 = load ptr, ptr %var.ring, align 8
  %fld.gep5 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load4, i32 0, i32 5
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %var.load7 = load ptr, ptr %var.ring, align 8
  %fld.gep8 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load7, i32 0, i32 12
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %ptr.int.l10 = ptrtoint ptr %fld.load6 to i64
  %addtmp11 = add i64 %ptr.int.l10, %fld.load9
  %ptr.res12 = inttoptr i64 %addtmp11 to ptr
  %raw.int13 = ptrtoint ptr %ptr.res12 to i64
  %raw.clean.int14 = and i64 %raw.int13, 281474976710655
  %raw.clean.ptr15 = inttoptr i64 %raw.clean.int14 to ptr
  %addr.tag16 = lshr i64 %raw.int13, 48
  %addr.immortal17 = icmp eq i64 %addr.tag16, 0
  br i1 %addr.immortal17, label %addr_ok19, label %addr_gen_check18

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check18:                                 ; preds = %addr_ok
  %arena.cur21 = call ptr @dva_arena_current()
  %tag.valid22 = call i1 @dva_arena_validate_tag(ptr %arena.cur21, i64 %addr.tag16)
  br i1 %tag.valid22, label %addr_ok19, label %addr_stale20

addr_ok19:                                        ; preds = %addr_stale20, %addr_gen_check18, %addr_ok
  %raw.load23 = load volatile i32, ptr %raw.clean.ptr15, align 4
  store i32 %raw.load23, ptr %var.tail, align 4
  %var.load24 = load i32, ptr %var.head, align 4
  %var.load25 = load i32, ptr %var.tail, align 4
  %coerce.zext = zext i32 %var.load24 to i64
  %coerce.zext26 = zext i32 %var.load25 to i64
  %cmptmp = icmp ne i64 %coerce.zext, %coerce.zext26
  br i1 %cmptmp, label %choice.then, label %choice.else

addr_stale20:                                     ; preds = %addr_gen_check18
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok19

choice.then:                                      ; preds = %addr_ok19
  %var.load27 = load ptr, ptr %var.ring, align 8
  %fld.gep28 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load27, i32 0, i32 5
  %fld.load29 = load ptr, ptr %fld.gep28, align 8
  %var.load30 = load ptr, ptr %var.ring, align 8
  %fld.gep31 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load30, i32 0, i32 13
  %fld.load32 = load i64, ptr %fld.gep31, align 8
  %ptr.int.l33 = ptrtoint ptr %fld.load29 to i64
  %addtmp34 = add i64 %ptr.int.l33, %fld.load32
  %ptr.res35 = inttoptr i64 %addtmp34 to ptr
  %raw.int36 = ptrtoint ptr %ptr.res35 to i64
  %raw.clean.int37 = and i64 %raw.int36, 281474976710655
  %raw.clean.ptr38 = inttoptr i64 %raw.clean.int37 to ptr
  %addr.tag39 = lshr i64 %raw.int36, 48
  %addr.immortal40 = icmp eq i64 %addr.tag39, 0
  br i1 %addr.immortal40, label %addr_ok42, label %addr_gen_check41

choice.else:                                      ; preds = %addr_ok19
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %addr_ok126
  %choice.res = phi ptr [ %var.load130, %addr_ok126 ], [ null, %choice.else ]
  ret ptr %choice.res

addr_gen_check41:                                 ; preds = %choice.then
  %arena.cur44 = call ptr @dva_arena_current()
  %tag.valid45 = call i1 @dva_arena_validate_tag(ptr %arena.cur44, i64 %addr.tag39)
  br i1 %tag.valid45, label %addr_ok42, label %addr_stale43

addr_ok42:                                        ; preds = %addr_stale43, %addr_gen_check41, %choice.then
  %raw.load46 = load volatile i32, ptr %raw.clean.ptr38, align 4
  store i32 %raw.load46, ptr %var.mask, align 4
  %var.load47 = load i32, ptr %var.head, align 4
  %var.load48 = load i32, ptr %var.mask, align 4
  %bandtmp = and i32 %var.load47, %var.load48
  %coerce.zext49 = zext i32 %bandtmp to i64
  store i64 %coerce.zext49, ptr %var.idx, align 8
  %var.load50 = load ptr, ptr %var.ring, align 8
  %fld.gep51 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load50, i32 0, i32 5
  %fld.load52 = load ptr, ptr %fld.gep51, align 8
  %var.load53 = load ptr, ptr %var.ring, align 8
  %fld.gep54 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load53, i32 0, i32 14
  %fld.load55 = load i64, ptr %fld.gep54, align 8
  %ptr.int.l56 = ptrtoint ptr %fld.load52 to i64
  %addtmp57 = add i64 %ptr.int.l56, %fld.load55
  %ptr.res58 = inttoptr i64 %addtmp57 to ptr
  %var.load59 = load i64, ptr %var.idx, align 8
  %multmp = mul i64 %var.load59, 16
  %ptr.int.l60 = ptrtoint ptr %ptr.res58 to i64
  %addtmp61 = add i64 %ptr.int.l60, %multmp
  %ptr.res62 = inttoptr i64 %addtmp61 to ptr
  store ptr %ptr.res62, ptr %var.cqe_ptr, align 8
  %var.load63 = load ptr, ptr %var.cqe_ptr, align 8
  %raw.int64 = ptrtoint ptr %var.load63 to i64
  %raw.clean.int65 = and i64 %raw.int64, 281474976710655
  %raw.clean.ptr66 = inttoptr i64 %raw.clean.int65 to ptr
  %addr.tag67 = lshr i64 %raw.int64, 48
  %addr.immortal68 = icmp eq i64 %addr.tag67, 0
  br i1 %addr.immortal68, label %addr_ok70, label %addr_gen_check69

addr_stale43:                                     ; preds = %addr_gen_check41
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok42

addr_gen_check69:                                 ; preds = %addr_ok42
  %arena.cur72 = call ptr @dva_arena_current()
  %tag.valid73 = call i1 @dva_arena_validate_tag(ptr %arena.cur72, i64 %addr.tag67)
  br i1 %tag.valid73, label %addr_ok70, label %addr_stale71

addr_ok70:                                        ; preds = %addr_stale71, %addr_gen_check69, %addr_ok42
  %raw.load74 = load volatile i64, ptr %raw.clean.ptr66, align 8
  %var.load75 = load ptr, ptr %var.cqe_ptr, align 8
  %ptr.int.l76 = ptrtoint ptr %var.load75 to i64
  %addtmp77 = add i64 %ptr.int.l76, 8
  %ptr.res78 = inttoptr i64 %addtmp77 to ptr
  %raw.int79 = ptrtoint ptr %ptr.res78 to i64
  %raw.clean.int80 = and i64 %raw.int79, 281474976710655
  %raw.clean.ptr81 = inttoptr i64 %raw.clean.int80 to ptr
  %addr.tag82 = lshr i64 %raw.int79, 48
  %addr.immortal83 = icmp eq i64 %addr.tag82, 0
  br i1 %addr.immortal83, label %addr_ok85, label %addr_gen_check84

addr_stale71:                                     ; preds = %addr_gen_check69
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok70

addr_gen_check84:                                 ; preds = %addr_ok70
  %arena.cur87 = call ptr @dva_arena_current()
  %tag.valid88 = call i1 @dva_arena_validate_tag(ptr %arena.cur87, i64 %addr.tag82)
  br i1 %tag.valid88, label %addr_ok85, label %addr_stale86

addr_ok85:                                        ; preds = %addr_stale86, %addr_gen_check84, %addr_ok70
  %raw.load89 = load volatile i32, ptr %raw.clean.ptr81, align 4
  %coerce.sext = sext i32 %raw.load89 to i64
  %var.load90 = load ptr, ptr %var.cqe_ptr, align 8
  %ptr.int.l91 = ptrtoint ptr %var.load90 to i64
  %addtmp92 = add i64 %ptr.int.l91, 12
  %ptr.res93 = inttoptr i64 %addtmp92 to ptr
  %raw.int94 = ptrtoint ptr %ptr.res93 to i64
  %raw.clean.int95 = and i64 %raw.int94, 281474976710655
  %raw.clean.ptr96 = inttoptr i64 %raw.clean.int95 to ptr
  %addr.tag97 = lshr i64 %raw.int94, 48
  %addr.immortal98 = icmp eq i64 %addr.tag97, 0
  br i1 %addr.immortal98, label %addr_ok100, label %addr_gen_check99

addr_stale86:                                     ; preds = %addr_gen_check84
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok85

addr_gen_check99:                                 ; preds = %addr_ok85
  %arena.cur102 = call ptr @dva_arena_current()
  %tag.valid103 = call i1 @dva_arena_validate_tag(ptr %arena.cur102, i64 %addr.tag97)
  br i1 %tag.valid103, label %addr_ok100, label %addr_stale101

addr_ok100:                                       ; preds = %addr_stale101, %addr_gen_check99, %addr_ok85
  %raw.load104 = load volatile i32, ptr %raw.clean.ptr96, align 4
  %coerce.zext105 = zext i32 %raw.load104 to i64
  %arena.cur106 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %raw.load74, ptr %rec.fld, align 8
  %rec.fld107 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %coerce.sext, ptr %rec.fld107, align 8
  %rec.fld108 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %coerce.zext105, ptr %rec.fld108, align 8
  store ptr %rec.alloc, ptr %var.cqe, align 8
  %var.load109 = load ptr, ptr %var.ring, align 8
  %fld.gep110 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load109, i32 0, i32 5
  %fld.load111 = load ptr, ptr %fld.gep110, align 8
  %var.load112 = load ptr, ptr %var.ring, align 8
  %fld.gep113 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load112, i32 0, i32 11
  %fld.load114 = load i64, ptr %fld.gep113, align 8
  %ptr.int.l115 = ptrtoint ptr %fld.load111 to i64
  %addtmp116 = add i64 %ptr.int.l115, %fld.load114
  %ptr.res117 = inttoptr i64 %addtmp116 to ptr
  %var.load118 = load i32, ptr %var.head, align 4
  %addtmp119 = add i32 %var.load118, 1
  %raw.int120 = ptrtoint ptr %ptr.res117 to i64
  %raw.clean.int121 = and i64 %raw.int120, 281474976710655
  %raw.clean.ptr122 = inttoptr i64 %raw.clean.int121 to ptr
  %addr.tag123 = lshr i64 %raw.int120, 48
  %addr.immortal124 = icmp eq i64 %addr.tag123, 0
  br i1 %addr.immortal124, label %addr_ok126, label %addr_gen_check125

addr_stale101:                                    ; preds = %addr_gen_check99
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok100

addr_gen_check125:                                ; preds = %addr_ok100
  %arena.cur128 = call ptr @dva_arena_current()
  %tag.valid129 = call i1 @dva_arena_validate_tag(ptr %arena.cur128, i64 %addr.tag123)
  br i1 %tag.valid129, label %addr_ok126, label %addr_stale127

addr_ok126:                                       ; preds = %addr_stale127, %addr_gen_check125, %addr_ok100
  store i32 %addtmp119, ptr %raw.clean.ptr122, align 4
  %var.load130 = load ptr, ptr %var.cqe, align 8
  br label %choice.exit

addr_stale127:                                    ; preds = %addr_gen_check125
  %7 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok126
}

define { i1, i64 } @"uring::wait_cqe"(ptr %0) #1 {
entry:
  %var.cqe2 = alloca ptr, align 8
  %var._16 = alloca ptr, align 8
  %var.c2 = alloca ptr, align 8
  %var.ret = alloca i64, align 8
  %var.cqe = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.cqe_opt = alloca ptr, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %call.res = call ptr @"uring::peek_cqe"(ptr %var.load)
  store ptr %call.res, ptr %var.cqe_opt, align 8
  %var.load1 = load ptr, ptr %var.cqe_opt, align 8
  %niche.ne.null = icmp ne ptr %var.load1, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load1, ptr %var._, align 8
  store ptr %var.load1, ptr %var.cqe, align 8
  %var.load2 = load ptr, ptr %var.cqe, align 8
  %p.to.i64 = ptrtoint ptr %var.load2 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.ring, align 8
  %call.res4 = call i64 @"uring::submit_and_wait"(ptr %var.load3, i64 1)
  store i64 %call.res4, ptr %var.ret, align 8
  %var.load5 = load i64, ptr %var.ret, align 8
  %cmptmp = icmp slt i64 %var.load5, 0
  br i1 %cmptmp, label %choice.then6, label %choice.else7

choice.exit:                                      ; preds = %choice.exit8, %choice.then
  %choice.res21 = phi { i1, i64 } [ %ram.pay, %choice.then ], [ %choice.res20, %choice.exit8 ]
  ret { i1, i64 } %choice.res21

choice.then6:                                     ; preds = %choice.else
  br label %choice.exit8

choice.else7:                                     ; preds = %choice.else
  %var.load9 = load ptr, ptr %var.ring, align 8
  %call.res10 = call ptr @"uring::peek_cqe"(ptr %var.load9)
  store ptr %call.res10, ptr %var.c2, align 8
  %var.load11 = load ptr, ptr %var.c2, align 8
  %niche.ne.null12 = icmp ne ptr %var.load11, null
  br i1 %niche.ne.null12, label %choice.then13, label %choice.else14

choice.exit8:                                     ; preds = %choice.exit15, %choice.then6
  %choice.res20 = phi { i1, i64 } [ { i1 false, i64 ptrtoint (ptr @str.4.struct to i64) }, %choice.then6 ], [ %choice.res, %choice.exit15 ]
  br label %choice.exit

choice.then13:                                    ; preds = %choice.else7
  store ptr %var.load11, ptr %var._16, align 8
  store ptr %var.load11, ptr %var.cqe2, align 8
  %var.load17 = load ptr, ptr %var.cqe2, align 8
  %p.to.i6418 = ptrtoint ptr %var.load17 to i64
  %ram.pay19 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i6418, 1
  br label %choice.exit15

choice.else14:                                    ; preds = %choice.else7
  br label %choice.exit15

choice.exit15:                                    ; preds = %choice.else14, %choice.then13
  %choice.res = phi { i1, i64 } [ %ram.pay19, %choice.then13 ], [ { i1 false, i64 ptrtoint (ptr @str.5.struct to i64) }, %choice.else14 ]
  br label %choice.exit8
}

define ptr @"uring::reap"(ptr %0) #1 {
entry:
  %var.c = alloca ptr, align 8
  %var._3 = alloca ptr, align 8
  %var.opt = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.25 = alloca i64, align 8
  %loop.idx.25 = alloca i64, align 8
  %"var.cqes'" = alloca ptr, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
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
  store ptr %a.new, ptr %"var.cqes'", align 8
  store i64 0, ptr %loop.idx.25, align 8
  br label %loop.header.25

loop.header.25:                                   ; preds = %loop.latch.25, %entry
  %counter.load = load i64, ptr %loop.idx.25, align 8
  br label %loop.body.25

loop.body.25:                                     ; preds = %loop.header.25
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.25, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %call.res = call ptr @"uring::peek_cqe"(ptr %var.load)
  store ptr %call.res, ptr %var.opt, align 8
  %var.load2 = load ptr, ptr %var.opt, align 8
  %niche.ne.null = icmp ne ptr %var.load2, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

loop.exit.nat.25:                                 ; No predecessors!
  br label %loop.exit.25

loop.latch.25:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.25, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.25, align 8
  br label %loop.header.25

loop.exit.25:                                     ; preds = %choice.else, %loop.exit.nat.25
  %var.load16 = load ptr, ptr %"var.cqes'", align 8
  %a.load17 = load ptr, ptr %"var.cqes'", align 8
  %a.null18 = icmp eq ptr %a.load17, null
  br i1 %a.null18, label %a.create19, label %a.after20

choice.then:                                      ; preds = %loop.body.25
  store ptr %var.load2, ptr %var._3, align 8
  store ptr %var.load2, ptr %var.c, align 8
  %var.load4 = load ptr, ptr %var.c, align 8
  %a.load = load ptr, ptr %"var.cqes'", align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else:                                      ; preds = %loop.body.25
  br label %loop.exit.25

choice.exit:                                      ; preds = %a.store
  br label %loop.latch.25

a.create:                                         ; preds = %choice.then
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
  store ptr %a.create6, ptr %"var.cqes'", align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %"var.cqes'", align 8
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
  br label %choice.exit

a.create19:                                       ; preds = %loop.exit.25
  %arena.cur21 = call ptr @dva_arena_current()
  %a.create22 = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 24)
  %arena.cur23 = call ptr @dva_arena_current()
  %a.buf24 = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 128)
  %a.len.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 0
  store i64 0, ptr %a.len.gep25, align 8
  %a.data.gep26 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 1
  store ptr %a.buf24, ptr %a.data.gep26, align 8
  %a.cap.gep27 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 2
  store i64 16, ptr %a.cap.gep27, align 8
  store ptr %a.create22, ptr %"var.cqes'", align 8
  br label %a.after20

a.after20:                                        ; preds = %a.create19, %loop.exit.25
  %a.load228 = load ptr, ptr %"var.cqes'", align 8
  ret ptr %a.load228
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

define void @"uring::close"(ptr %0) #1 {
entry:
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load1 = load ptr, ptr %var.ring, align 8
  %fld.gep2 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load1, i32 0, i32 2
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %call.res = call i64 @munmap(ptr %addr.ffi.clean, i64 %fld.load3)
  %var.load4 = load ptr, ptr %var.ring, align 8
  %fld.gep5 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load4, i32 0, i32 3
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %addr.ffi.int7 = ptrtoint ptr %fld.load6 to i64
  %addr.ffi.masked8 = and i64 %addr.ffi.int7, 281474976710655
  %addr.ffi.clean9 = inttoptr i64 %addr.ffi.masked8 to ptr
  %var.load10 = load ptr, ptr %var.ring, align 8
  %fld.gep11 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load10, i32 0, i32 4
  %fld.load12 = load i64, ptr %fld.gep11, align 8
  %call.res13 = call i64 @munmap(ptr %addr.ffi.clean9, i64 %fld.load12)
  %var.load14 = load ptr, ptr %var.ring, align 8
  %fld.gep15 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load14, i32 0, i32 5
  %fld.load16 = load ptr, ptr %fld.gep15, align 8
  %addr.ffi.int17 = ptrtoint ptr %fld.load16 to i64
  %addr.ffi.masked18 = and i64 %addr.ffi.int17, 281474976710655
  %addr.ffi.clean19 = inttoptr i64 %addr.ffi.masked18 to ptr
  %var.load20 = load ptr, ptr %var.ring, align 8
  %fld.gep21 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load20, i32 0, i32 6
  %fld.load22 = load i64, ptr %fld.gep21, align 8
  %call.res23 = call i64 @munmap(ptr %addr.ffi.clean19, i64 %fld.load22)
  %var.load24 = load ptr, ptr %var.ring, align 8
  %fld.gep25 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load24, i32 0, i32 0
  %fld.load26 = load i64, ptr %fld.gep25, align 8
  %coerce.trunc = trunc i64 %fld.load26 to i32
  %call.res27 = call i32 @close(i32 %coerce.trunc)
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
