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
@"var.event::READ" = global i64 1
@"var.event::WRITE" = global i64 2
@"var.event::PRI" = global i64 4
@"var.event::ERR" = global i64 8
@"var.event::HUP" = global i64 16
@"var.event::RDHUP" = global i64 8192
@"var.event::CTL_ADD" = global i64 1
@"var.event::CTL_DEL" = global i64 2
@"var.event::CTL_MOD" = global i64 3
@clo.const = internal constant { ptr, ptr } { ptr @"event::new_with_cap", ptr null }
@clo.const.1 = internal constant { ptr, ptr } { ptr @"event::new", ptr null }
@"var.event::new" = global ptr null
@"var.event::new_with_cap" = global ptr null
@str.0 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.0 }
@str.1 = internal unnamed_addr constant [10 x i8] c"event.dva\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 9, ptr @str.1 }
@str.2 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.2 }
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@dva_thread_rec = external thread_local global ptr
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@clo.const.2 = internal constant { ptr, ptr } { ptr @"event::add", ptr null }
@"var.event::add" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"event::add_fd", ptr null }
@"var.event::add_fd" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"event::mod", ptr null }
@"var.event::mod" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"event::mod_fd", ptr null }
@"var.event::mod_fd" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"event::del", ptr null }
@"var.event::del" = global ptr null
@stale_addr_msg = internal unnamed_addr constant [51 x i8] c"E4011: stale Addr dereference after arena restore\0A\00"
@clo.const.7 = internal constant { ptr, ptr } { ptr @"event::wait", ptr null }
@"var.event::wait" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"event::close", ptr null }
@"var.event::close" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"event::is_read", ptr null }
@"var.event::is_read" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"event::is_write", ptr null }
@"var.event::is_write" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"event::is_err", ptr null }
@"var.event::is_err" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"event::is_hup", ptr null }
@"var.event::is_hup" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"event::poll_in", ptr null }
@"var.event::poll_in" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"event::poll_out", ptr null }
@"var.event::poll_out" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_event, ptr null }]

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

define internal void @__dva_global_init_event() #1 {
entry:
  store i64 1, ptr @"var.event::READ", align 8
  store i64 2, ptr @"var.event::WRITE", align 8
  store i64 4, ptr @"var.event::PRI", align 8
  store i64 8, ptr @"var.event::ERR", align 8
  store i64 16, ptr @"var.event::HUP", align 8
  store i64 8192, ptr @"var.event::RDHUP", align 8
  store i64 1, ptr @"var.event::CTL_ADD", align 8
  store i64 2, ptr @"var.event::CTL_DEL", align 8
  store i64 3, ptr @"var.event::CTL_MOD", align 8
  store ptr @clo.const.1, ptr @"var.event::new", align 8
  store ptr @clo.const, ptr @"var.event::new_with_cap", align 8
  store ptr @clo.const.2, ptr @"var.event::add", align 8
  store ptr @clo.const.3, ptr @"var.event::add_fd", align 8
  store ptr @clo.const.4, ptr @"var.event::mod", align 8
  store ptr @clo.const.5, ptr @"var.event::mod_fd", align 8
  store ptr @clo.const.6, ptr @"var.event::del", align 8
  store ptr @clo.const.7, ptr @"var.event::wait", align 8
  store ptr @clo.const.8, ptr @"var.event::close", align 8
  store ptr @clo.const.9, ptr @"var.event::is_read", align 8
  store ptr @clo.const.10, ptr @"var.event::is_write", align 8
  store ptr @clo.const.11, ptr @"var.event::is_err", align 8
  store ptr @clo.const.12, ptr @"var.event::is_hup", align 8
  store ptr @clo.const.13, ptr @"var.event::poll_in", align 8
  store ptr @clo.const.14, ptr @"var.event::poll_out", align 8
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

define { i1, i64 } @"event::new"() #1 {
entry:
  %call.res = call { i1, i64 } @"event::new_with_cap"(i64 64)
  ret { i1, i64 } %call.res
}

define { i1, i64 } @"event::new_with_cap"(i64 %0) #1 {
entry:
  %var.cap = alloca i64, align 8
  %var.max_ev = alloca i64, align 8
  store i64 %0, ptr %var.max_ev, align 8
  %var.load = load i64, ptr %var.max_ev, align 8
  %cmptmp = icmp sgt i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.max_ev, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load1, %choice.then ], [ 64, %choice.else ]
  store i64 %choice.res, ptr %var.cap, align 8
  %var.load2 = load i64, ptr %var.cap, align 8
  %arena.cur = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur3 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %arena.cur4 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 ptrtoint (ptr getelementptr ({ i64, i1, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i1, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld5 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i1 false, ptr %rec.fld5, align 1
  %rec.fld6 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load2, ptr %rec.fld6, align 8
  %rec.fld7 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %rec.alloc, i32 0, i32 3
  store ptr %a.new, ptr %rec.fld7, align 8
  %p.to.i64 = ptrtoint ptr %rec.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay
}

define i1 @"event::add"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %var.e = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.18 = alloca i64, align 8
  %loop.idx.18 = alloca i64, align 8
  %"var.free_slot'" = alloca i64, align 8
  %"var.dup'" = alloca i1, align 1
  %var.user_data = alloca i64, align 8
  %var.mask = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i64 %1, ptr %var.fd, align 8
  store i64 %2, ptr %var.mask, align 8
  store i64 %3, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  br i1 %fld.load, label %or.17.then, label %or.17.else

or.17.then:                                       ; preds = %entry
  br label %or.17.exit

or.17.else:                                       ; preds = %entry
  %var.load1 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load1, 0
  br label %or.17.exit

or.17.exit:                                       ; preds = %or.17.else, %or.17.then
  %or.17.phi = phi i1 [ %fld.load, %or.17.then ], [ %cmptmp, %or.17.else ]
  br i1 %or.17.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %or.17.exit
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %or.17.exit
  store i1 false, ptr %"var.dup'", align 1
  store i64 -1, ptr %"var.free_slot'", align 8
  %var.load2 = load ptr, ptr %var.p, align 8
  %fld.gep3 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load2, i32 0, i32 3
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 0
  %a.len.query5 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.18, align 8
  br label %loop.header.18

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.18:                                   ; preds = %loop.latch.18, %choice.exit
  %counter.load = load i64, ptr %loop.idx.18, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query5
  br i1 %loop.cond, label %loop.body.18, label %loop.exit.nat.18

loop.body.18:                                     ; preds = %loop.header.18
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.18, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load6 = load ptr, ptr %var.p, align 8
  %fld.gep7 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load6, i32 0, i32 3
  %fld.load8 = load ptr, ptr %fld.gep7, align 8
  %var.load9 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load8, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

loop.exit.nat.18:                                 ; preds = %loop.header.18
  br label %loop.exit.18

loop.latch.18:                                    ; preds = %choice.exit57
  %step.val = load i64, ptr %loop.step.18, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.18, align 8
  br label %loop.header.18

loop.exit.18:                                     ; preds = %loop.exit.nat.18
  %var.load59 = load i1, ptr %"var.dup'", align 1
  br i1 %var.load59, label %choice.then60, label %choice.exit61

a.rd.check:                                       ; preds = %loop.body.18
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load8, i32 0, i32 0
  %a.rd.len10 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load9, 0
  %a.rd.lt = icmp slt i64 %var.load9, %a.rd.len10
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load8, i32 0, i32 1
  %a.rd.data11 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data11, i64 %var.load9
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %loop.body.18
  %arena.cur = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep, align 8
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
  %arena.cur12 = call ptr @dva_arena_current()
  %err.alloc13 = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 56)
  %err.code.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 0
  store i64 4011, ptr %err.code.gep14, align 8
  %err.msg.gep15 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep15, align 8
  %err.file.gep16 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep16, align 8
  %err.line.gep17 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 3
  store i64 0, ptr %err.line.gep17, align 8
  %err.col.gep18 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 4
  store i64 0, ptr %err.col.gep18, align 8
  %err.ctx.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 5
  %err.ctx0.gep20 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep19, i32 0, i32 0
  store i64 %var.load9, ptr %err.ctx0.gep20, align 8
  %err.ctx1.gep21 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep19, i32 0, i32 1
  store i64 %a.rd.len10, ptr %err.ctx1.gep21, align 8
  %err.p2i22 = ptrtoint ptr %err.alloc13 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i22, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.19, label %unwrap.abort.19

unwrap.pos.19:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.e, align 8
  %var.load43 = load ptr, ptr %var.e, align 8
  %fld.gep44 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load43, i32 0, i32 0
  %fld.load45 = load i64, ptr %fld.gep44, align 8
  %var.load46 = load i64, ptr %var.fd, align 8
  %cmptmp47 = icmp eq i64 %fld.load45, %var.load46
  br i1 %cmptmp47, label %choice.then48, label %choice.exit49

unwrap.abort.19:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep23 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep23, align 8
  %err.msg.gep24 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep24, align 8
  %err.file.gep25 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep25, align 8
  %err.line.gep26 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep26, align 8
  %err.col.gep27 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep27, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len28 = load i64, ptr %err.msg.len, align 8
  %err.msg.len29 = and i64 %err.msg.len28, 281474976710655
  %str.tag = lshr i64 %err.msg.len28, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %unwrap.abort.19
  %arena.cur30 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur30, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %unwrap.abort.19
  %err.msg.len32 = trunc i64 %err.msg.len29 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data31 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len32 = load i64, ptr %err.file.len, align 8
  %err.file.len33 = and i64 %err.file.len32, 281474976710655
  %str.tag34 = lshr i64 %err.file.len32, 48
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
  %err.file.len3241 = trunc i64 %err.file.len33 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data42 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale38:                                      ; preds = %str_gen_check36
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok37

err.thread:                                       ; preds = %str_ok37
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok37
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data31, i32 %err.file.len3241, ptr %err.file.data42, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

choice.then48:                                    ; preds = %unwrap.pos.19
  store i1 true, ptr %"var.dup'", align 1
  br label %choice.exit49

choice.exit49:                                    ; preds = %choice.then48, %unwrap.pos.19
  %var.load50 = load ptr, ptr %var.e, align 8
  %fld.gep51 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load50, i32 0, i32 0
  %fld.load52 = load i64, ptr %fld.gep51, align 8
  %cmptmp53 = icmp slt i64 %fld.load52, 0
  br i1 %cmptmp53, label %and.20.then, label %and.20.else

and.20.then:                                      ; preds = %choice.exit49
  %var.load54 = load i64, ptr %"var.free_slot'", align 8
  %cmptmp55 = icmp slt i64 %var.load54, 0
  br label %and.20.exit

and.20.else:                                      ; preds = %choice.exit49
  br label %and.20.exit

and.20.exit:                                      ; preds = %and.20.else, %and.20.then
  %and.20.phi = phi i1 [ %cmptmp55, %and.20.then ], [ %cmptmp53, %and.20.else ]
  br i1 %and.20.phi, label %choice.then56, label %choice.exit57

choice.then56:                                    ; preds = %and.20.exit
  %var.load58 = load i64, ptr %var.i, align 8
  store i64 %var.load58, ptr %"var.free_slot'", align 8
  br label %choice.exit57

choice.exit57:                                    ; preds = %choice.then56, %and.20.exit
  br label %loop.latch.18

choice.then60:                                    ; preds = %loop.exit.18
  ret i1 false

choice.exit61:                                    ; preds = %ret.dead62, %loop.exit.18
  %var.load63 = load i64, ptr %"var.free_slot'", align 8
  %cmptmp64 = icmp sge i64 %var.load63, 0
  br i1 %cmptmp64, label %choice.then65, label %choice.else

ret.dead62:                                       ; No predecessors!
  br label %choice.exit61

choice.then65:                                    ; preds = %choice.exit61
  %var.load67 = load ptr, ptr %var.p, align 8
  %fld.gep68 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load67, i32 0, i32 3
  %fld.load69 = load ptr, ptr %fld.gep68, align 8
  %var.load70 = load i64, ptr %"var.free_slot'", align 8
  %var.load71 = load i64, ptr %var.fd, align 8
  %var.load72 = load i64, ptr %var.mask, align 8
  %var.load73 = load i64, ptr %var.user_data, align 8
  %arena.cur74 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load71, ptr %rec.fld, align 8
  %rec.fld75 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load72, ptr %rec.fld75, align 8
  %rec.fld76 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load73, ptr %rec.fld76, align 8
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  %a.wr.nonnull = icmp ne ptr %fld.load69, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

choice.else:                                      ; preds = %choice.exit61
  %var.load99 = load ptr, ptr %var.p, align 8
  %fld.gep100 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load99, i32 0, i32 3
  %fld.load101 = load ptr, ptr %fld.gep100, align 8
  %a.len.query102 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load101, i32 0, i32 0
  %a.len.query103 = load i64, ptr %a.len.query102, align 8
  %var.load104 = load ptr, ptr %var.p, align 8
  %fld.gep105 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load104, i32 0, i32 2
  %fld.load106 = load i64, ptr %fld.gep105, align 8
  %cmptmp107 = icmp slt i64 %a.len.query103, %fld.load106
  br i1 %cmptmp107, label %choice.then108, label %choice.else109

choice.exit66:                                    ; preds = %choice.exit110, %a.wr.done
  %choice.res127 = phi i1 [ true, %a.wr.done ], [ %choice.res, %choice.exit110 ]
  ret i1 %choice.res127

a.wr.check:                                       ; preds = %choice.then65
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load69, i32 0, i32 0
  %a.wr.len77 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load70, 0
  %a.wr.lt = icmp slt i64 %var.load70, %a.wr.len77
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load69, i32 0, i32 1
  %a.wr.data78 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data78, i64 %var.load70
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %choice.then65
  %arena.cur79 = call ptr @dva_arena_current()
  %err.alloc80 = call ptr @dva_arena_alloc(ptr %arena.cur79, i64 56)
  %err.code.gep81 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc80, i32 0, i32 0
  store i64 4011, ptr %err.code.gep81, align 8
  %err.msg.gep82 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc80, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep82, align 8
  %err.file.gep83 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc80, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep83, align 8
  %err.line.gep84 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc80, i32 0, i32 3
  store i64 0, ptr %err.line.gep84, align 8
  %err.col.gep85 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc80, i32 0, i32 4
  store i64 0, ptr %err.col.gep85, align 8
  %err.ctx.gep86 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc80, i32 0, i32 5
  %err.ctx0.gep87 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep86, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep87, align 8
  %err.ctx1.gep88 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep86, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep88, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur89 = call ptr @dva_arena_current()
  %err.alloc90 = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 56)
  %err.code.gep91 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc90, i32 0, i32 0
  store i64 4011, ptr %err.code.gep91, align 8
  %err.msg.gep92 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc90, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep92, align 8
  %err.file.gep93 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc90, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep93, align 8
  %err.line.gep94 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc90, i32 0, i32 3
  store i64 0, ptr %err.line.gep94, align 8
  %err.col.gep95 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc90, i32 0, i32 4
  store i64 0, ptr %err.col.gep95, align 8
  %err.ctx.gep96 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc90, i32 0, i32 5
  %err.ctx0.gep97 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep96, i32 0, i32 0
  store i64 %var.load70, ptr %err.ctx0.gep97, align 8
  %err.ctx1.gep98 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep96, i32 0, i32 1
  store i64 %a.wr.len77, ptr %err.ctx1.gep98, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc80, %a.wr.err.null ], [ %err.alloc90, %a.wr.err.oob ]
  br label %choice.exit66

choice.then108:                                   ; preds = %choice.else
  %var.load111 = load ptr, ptr %var.p, align 8
  %var.load112 = load i64, ptr %var.fd, align 8
  %var.load113 = load i64, ptr %var.mask, align 8
  %var.load114 = load i64, ptr %var.user_data, align 8
  %arena.cur115 = call ptr @dva_arena_current()
  %rec.alloc116 = call ptr @dva_arena_alloc(ptr %arena.cur115, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld117 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc116, i32 0, i32 0
  store i64 %var.load112, ptr %rec.fld117, align 8
  %rec.fld118 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc116, i32 0, i32 1
  store i64 %var.load113, ptr %rec.fld118, align 8
  %rec.fld119 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc116, i32 0, i32 2
  store i64 %var.load114, ptr %rec.fld119, align 8
  %fld.gep120 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load111, i32 0, i32 3
  %a.fld.load = load ptr, ptr %fld.gep120, align 8
  br label %a.check

choice.else109:                                   ; preds = %choice.else
  br label %choice.exit110

choice.exit110:                                   ; preds = %choice.else109, %a.store
  %choice.res = phi i1 [ true, %a.store ], [ false, %choice.else109 ]
  br label %choice.exit66

a.check:                                          ; preds = %choice.then108
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.len121 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 2
  %a.cap122 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len121, %a.cap122
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.fld.load)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 1
  %a.cur.data123 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.cur.len124 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep125 = getelementptr i64, ptr %a.cur.data123, i64 %a.cur.len124
  %slot.p2i126 = ptrtoint ptr %rec.alloc116 to i64
  store i64 %slot.p2i126, ptr %a.elem.gep125, align 8
  %a.next.len = add i64 %a.cur.len124, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit110
}

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define i1 @"event::add_fd"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.mask = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i64 %1, ptr %var.fd, align 8
  store i64 %2, ptr %var.mask, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %var.load1 = load i64, ptr %var.fd, align 8
  %var.load2 = load i64, ptr %var.mask, align 8
  %var.load3 = load i64, ptr %var.fd, align 8
  %call.res = call i1 @"event::add"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 %var.load3)
  ret i1 %call.res
}

define i1 @"event::mod"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %var.e = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.22 = alloca i64, align 8
  %loop.idx.22 = alloca i64, align 8
  %"var.found'" = alloca i1, align 1
  %var.user_data = alloca i64, align 8
  %var.mask = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i64 %1, ptr %var.fd, align 8
  store i64 %2, ptr %var.mask, align 8
  store i64 %3, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  br i1 %fld.load, label %or.21.then, label %or.21.else

or.21.then:                                       ; preds = %entry
  br label %or.21.exit

or.21.else:                                       ; preds = %entry
  %var.load1 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load1, 0
  br label %or.21.exit

or.21.exit:                                       ; preds = %or.21.else, %or.21.then
  %or.21.phi = phi i1 [ %fld.load, %or.21.then ], [ %cmptmp, %or.21.else ]
  br i1 %or.21.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %or.21.exit
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %or.21.exit
  store i1 false, ptr %"var.found'", align 1
  %var.load2 = load ptr, ptr %var.p, align 8
  %fld.gep3 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load2, i32 0, i32 3
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 0
  %a.len.query5 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.22, align 8
  br label %loop.header.22

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.22:                                   ; preds = %loop.latch.22, %choice.exit
  %counter.load = load i64, ptr %loop.idx.22, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query5
  br i1 %loop.cond, label %loop.body.22, label %loop.exit.nat.22

loop.body.22:                                     ; preds = %loop.header.22
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.22, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load6 = load ptr, ptr %var.p, align 8
  %fld.gep7 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load6, i32 0, i32 3
  %fld.load8 = load ptr, ptr %fld.gep7, align 8
  %var.load9 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load8, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

loop.exit.nat.22:                                 ; preds = %loop.header.22
  br label %loop.exit.22

loop.latch.22:                                    ; preds = %choice.exit49
  %step.val = load i64, ptr %loop.step.22, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.22, align 8
  br label %loop.header.22

loop.exit.22:                                     ; preds = %a.wr.done, %loop.exit.nat.22
  %var.load82 = load i1, ptr %"var.found'", align 1
  ret i1 %var.load82

a.rd.check:                                       ; preds = %loop.body.22
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load8, i32 0, i32 0
  %a.rd.len10 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load9, 0
  %a.rd.lt = icmp slt i64 %var.load9, %a.rd.len10
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load8, i32 0, i32 1
  %a.rd.data11 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data11, i64 %var.load9
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %loop.body.22
  %arena.cur = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep, align 8
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
  %arena.cur12 = call ptr @dva_arena_current()
  %err.alloc13 = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 56)
  %err.code.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 0
  store i64 4011, ptr %err.code.gep14, align 8
  %err.msg.gep15 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep15, align 8
  %err.file.gep16 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep16, align 8
  %err.line.gep17 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 3
  store i64 0, ptr %err.line.gep17, align 8
  %err.col.gep18 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 4
  store i64 0, ptr %err.col.gep18, align 8
  %err.ctx.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 5
  %err.ctx0.gep20 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep19, i32 0, i32 0
  store i64 %var.load9, ptr %err.ctx0.gep20, align 8
  %err.ctx1.gep21 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep19, i32 0, i32 1
  store i64 %a.rd.len10, ptr %err.ctx1.gep21, align 8
  %err.p2i22 = ptrtoint ptr %err.alloc13 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i22, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.23, label %unwrap.abort.23

unwrap.pos.23:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.e, align 8
  %var.load43 = load ptr, ptr %var.e, align 8
  %fld.gep44 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load43, i32 0, i32 0
  %fld.load45 = load i64, ptr %fld.gep44, align 8
  %var.load46 = load i64, ptr %var.fd, align 8
  %cmptmp47 = icmp eq i64 %fld.load45, %var.load46
  br i1 %cmptmp47, label %choice.then48, label %choice.exit49

unwrap.abort.23:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep23 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep23, align 8
  %err.msg.gep24 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep24, align 8
  %err.file.gep25 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep25, align 8
  %err.line.gep26 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep26, align 8
  %err.col.gep27 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep27, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len28 = load i64, ptr %err.msg.len, align 8
  %err.msg.len29 = and i64 %err.msg.len28, 281474976710655
  %str.tag = lshr i64 %err.msg.len28, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %unwrap.abort.23
  %arena.cur30 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur30, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %unwrap.abort.23
  %err.msg.len32 = trunc i64 %err.msg.len29 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data31 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len32 = load i64, ptr %err.file.len, align 8
  %err.file.len33 = and i64 %err.file.len32, 281474976710655
  %str.tag34 = lshr i64 %err.file.len32, 48
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
  %err.file.len3241 = trunc i64 %err.file.len33 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data42 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale38:                                      ; preds = %str_gen_check36
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok37

err.thread:                                       ; preds = %str_ok37
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok37
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data31, i32 %err.file.len3241, ptr %err.file.data42, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

choice.then48:                                    ; preds = %unwrap.pos.23
  %var.load50 = load ptr, ptr %var.p, align 8
  %fld.gep51 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load50, i32 0, i32 3
  %fld.load52 = load ptr, ptr %fld.gep51, align 8
  %var.load53 = load i64, ptr %var.i, align 8
  %var.load54 = load i64, ptr %var.fd, align 8
  %var.load55 = load i64, ptr %var.mask, align 8
  %var.load56 = load i64, ptr %var.user_data, align 8
  %arena.cur57 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load54, ptr %rec.fld, align 8
  %rec.fld58 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load55, ptr %rec.fld58, align 8
  %rec.fld59 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load56, ptr %rec.fld59, align 8
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  %a.wr.nonnull = icmp ne ptr %fld.load52, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

choice.exit49:                                    ; preds = %unwrap.pos.23
  br label %loop.latch.22

a.wr.check:                                       ; preds = %choice.then48
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load52, i32 0, i32 0
  %a.wr.len60 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load53, 0
  %a.wr.lt = icmp slt i64 %var.load53, %a.wr.len60
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load52, i32 0, i32 1
  %a.wr.data61 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data61, i64 %var.load53
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %choice.then48
  %arena.cur62 = call ptr @dva_arena_current()
  %err.alloc63 = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 56)
  %err.code.gep64 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc63, i32 0, i32 0
  store i64 4011, ptr %err.code.gep64, align 8
  %err.msg.gep65 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc63, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep65, align 8
  %err.file.gep66 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc63, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep66, align 8
  %err.line.gep67 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc63, i32 0, i32 3
  store i64 0, ptr %err.line.gep67, align 8
  %err.col.gep68 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc63, i32 0, i32 4
  store i64 0, ptr %err.col.gep68, align 8
  %err.ctx.gep69 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc63, i32 0, i32 5
  %err.ctx0.gep70 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep69, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep70, align 8
  %err.ctx1.gep71 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep69, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep71, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur72 = call ptr @dva_arena_current()
  %err.alloc73 = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 56)
  %err.code.gep74 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc73, i32 0, i32 0
  store i64 4011, ptr %err.code.gep74, align 8
  %err.msg.gep75 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc73, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep75, align 8
  %err.file.gep76 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc73, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep76, align 8
  %err.line.gep77 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc73, i32 0, i32 3
  store i64 0, ptr %err.line.gep77, align 8
  %err.col.gep78 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc73, i32 0, i32 4
  store i64 0, ptr %err.col.gep78, align 8
  %err.ctx.gep79 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc73, i32 0, i32 5
  %err.ctx0.gep80 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep79, i32 0, i32 0
  store i64 %var.load53, ptr %err.ctx0.gep80, align 8
  %err.ctx1.gep81 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep79, i32 0, i32 1
  store i64 %a.wr.len60, ptr %err.ctx1.gep81, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc63, %a.wr.err.null ], [ %err.alloc73, %a.wr.err.oob ]
  store i1 true, ptr %"var.found'", align 1
  br label %loop.exit.22
}

define i1 @"event::mod_fd"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.mask = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i64 %1, ptr %var.fd, align 8
  store i64 %2, ptr %var.mask, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %var.load1 = load i64, ptr %var.fd, align 8
  %var.load2 = load i64, ptr %var.mask, align 8
  %var.load3 = load i64, ptr %var.fd, align 8
  %call.res = call i1 @"event::mod"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 %var.load3)
  ret i1 %call.res
}

define i1 @"event::del"(ptr %0, i64 %1) #1 {
entry:
  %var.e = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.25 = alloca i64, align 8
  %loop.idx.25 = alloca i64, align 8
  %"var.found'" = alloca i1, align 1
  %var.fd = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i64 %1, ptr %var.fd, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  br i1 %fld.load, label %or.24.then, label %or.24.else

or.24.then:                                       ; preds = %entry
  br label %or.24.exit

or.24.else:                                       ; preds = %entry
  %var.load1 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load1, 0
  br label %or.24.exit

or.24.exit:                                       ; preds = %or.24.else, %or.24.then
  %or.24.phi = phi i1 [ %fld.load, %or.24.then ], [ %cmptmp, %or.24.else ]
  br i1 %or.24.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %or.24.exit
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %or.24.exit
  store i1 false, ptr %"var.found'", align 1
  %var.load2 = load ptr, ptr %var.p, align 8
  %fld.gep3 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load2, i32 0, i32 3
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 0
  %a.len.query5 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.25, align 8
  br label %loop.header.25

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.25:                                   ; preds = %loop.latch.25, %choice.exit
  %counter.load = load i64, ptr %loop.idx.25, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query5
  br i1 %loop.cond, label %loop.body.25, label %loop.exit.nat.25

loop.body.25:                                     ; preds = %loop.header.25
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.25, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load6 = load ptr, ptr %var.p, align 8
  %fld.gep7 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load6, i32 0, i32 3
  %fld.load8 = load ptr, ptr %fld.gep7, align 8
  %var.load9 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load8, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

loop.exit.nat.25:                                 ; preds = %loop.header.25
  br label %loop.exit.25

loop.latch.25:                                    ; preds = %choice.exit49
  %step.val = load i64, ptr %loop.step.25, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.25, align 8
  br label %loop.header.25

loop.exit.25:                                     ; preds = %a.wr.done, %loop.exit.nat.25
  %var.load79 = load i1, ptr %"var.found'", align 1
  ret i1 %var.load79

a.rd.check:                                       ; preds = %loop.body.25
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load8, i32 0, i32 0
  %a.rd.len10 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load9, 0
  %a.rd.lt = icmp slt i64 %var.load9, %a.rd.len10
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load8, i32 0, i32 1
  %a.rd.data11 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data11, i64 %var.load9
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %loop.body.25
  %arena.cur = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep, align 8
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
  %arena.cur12 = call ptr @dva_arena_current()
  %err.alloc13 = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 56)
  %err.code.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 0
  store i64 4011, ptr %err.code.gep14, align 8
  %err.msg.gep15 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep15, align 8
  %err.file.gep16 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep16, align 8
  %err.line.gep17 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 3
  store i64 0, ptr %err.line.gep17, align 8
  %err.col.gep18 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 4
  store i64 0, ptr %err.col.gep18, align 8
  %err.ctx.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 5
  %err.ctx0.gep20 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep19, i32 0, i32 0
  store i64 %var.load9, ptr %err.ctx0.gep20, align 8
  %err.ctx1.gep21 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep19, i32 0, i32 1
  store i64 %a.rd.len10, ptr %err.ctx1.gep21, align 8
  %err.p2i22 = ptrtoint ptr %err.alloc13 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i22, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.26, label %unwrap.abort.26

unwrap.pos.26:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.e, align 8
  %var.load43 = load ptr, ptr %var.e, align 8
  %fld.gep44 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load43, i32 0, i32 0
  %fld.load45 = load i64, ptr %fld.gep44, align 8
  %var.load46 = load i64, ptr %var.fd, align 8
  %cmptmp47 = icmp eq i64 %fld.load45, %var.load46
  br i1 %cmptmp47, label %choice.then48, label %choice.exit49

unwrap.abort.26:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep23 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep23, align 8
  %err.msg.gep24 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep24, align 8
  %err.file.gep25 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep25, align 8
  %err.line.gep26 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep26, align 8
  %err.col.gep27 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep27, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len28 = load i64, ptr %err.msg.len, align 8
  %err.msg.len29 = and i64 %err.msg.len28, 281474976710655
  %str.tag = lshr i64 %err.msg.len28, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %unwrap.abort.26
  %arena.cur30 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur30, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %unwrap.abort.26
  %err.msg.len32 = trunc i64 %err.msg.len29 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data31 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len32 = load i64, ptr %err.file.len, align 8
  %err.file.len33 = and i64 %err.file.len32, 281474976710655
  %str.tag34 = lshr i64 %err.file.len32, 48
  %str.immortal35 = icmp eq i64 %str.tag34, 0
  br i1 %str.immortal35, label %str_ok37, label %str_gen_check36

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check36:                                  ; preds = %str_ok
  %arena.cur39 = call ptr @dva_arena_current()
  %tag.valid40 = call i1 @dva_arena_validate_tag(ptr %arena.cur39, i64 %str.tag34)
  br i1 %tag.valid40, label %str_ok37, label %str_stale38

str_ok37:                                         ; preds = %str_stale38, %str_gen_check36, %str_ok
  %err.file.len3241 = trunc i64 %err.file.len33 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data42 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale38:                                      ; preds = %str_gen_check36
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok37

err.thread:                                       ; preds = %str_ok37
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok37
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data31, i32 %err.file.len3241, ptr %err.file.data42, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

choice.then48:                                    ; preds = %unwrap.pos.26
  %var.load50 = load ptr, ptr %var.p, align 8
  %fld.gep51 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load50, i32 0, i32 3
  %fld.load52 = load ptr, ptr %fld.gep51, align 8
  %var.load53 = load i64, ptr %var.i, align 8
  %arena.cur54 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 -1, ptr %rec.fld, align 8
  %rec.fld55 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld55, align 8
  %rec.fld56 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld56, align 8
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  %a.wr.nonnull = icmp ne ptr %fld.load52, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

choice.exit49:                                    ; preds = %unwrap.pos.26
  br label %loop.latch.25

a.wr.check:                                       ; preds = %choice.then48
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load52, i32 0, i32 0
  %a.wr.len57 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load53, 0
  %a.wr.lt = icmp slt i64 %var.load53, %a.wr.len57
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load52, i32 0, i32 1
  %a.wr.data58 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data58, i64 %var.load53
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %choice.then48
  %arena.cur59 = call ptr @dva_arena_current()
  %err.alloc60 = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 56)
  %err.code.gep61 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc60, i32 0, i32 0
  store i64 4011, ptr %err.code.gep61, align 8
  %err.msg.gep62 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc60, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep62, align 8
  %err.file.gep63 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc60, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep63, align 8
  %err.line.gep64 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc60, i32 0, i32 3
  store i64 0, ptr %err.line.gep64, align 8
  %err.col.gep65 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc60, i32 0, i32 4
  store i64 0, ptr %err.col.gep65, align 8
  %err.ctx.gep66 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc60, i32 0, i32 5
  %err.ctx0.gep67 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep66, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep67, align 8
  %err.ctx1.gep68 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep66, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep68, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur69 = call ptr @dva_arena_current()
  %err.alloc70 = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 56)
  %err.code.gep71 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc70, i32 0, i32 0
  store i64 4011, ptr %err.code.gep71, align 8
  %err.msg.gep72 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc70, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep72, align 8
  %err.file.gep73 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc70, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep73, align 8
  %err.line.gep74 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc70, i32 0, i32 3
  store i64 0, ptr %err.line.gep74, align 8
  %err.col.gep75 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc70, i32 0, i32 4
  store i64 0, ptr %err.col.gep75, align 8
  %err.ctx.gep76 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc70, i32 0, i32 5
  %err.ctx0.gep77 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep76, i32 0, i32 0
  store i64 %var.load53, ptr %err.ctx0.gep77, align 8
  %err.ctx1.gep78 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep76, i32 0, i32 1
  store i64 %a.wr.len57, ptr %err.ctx1.gep78, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc60, %a.wr.err.null ], [ %err.alloc70, %a.wr.err.oob ]
  store i1 true, ptr %"var.found'", align 1
  br label %loop.exit.25
}

define ptr @"event::wait"(ptr %0, i64 %1) #1 {
entry:
  %var.ev_mask = alloca i64, align 8
  %var.ev = alloca ptr, align 8
  %var.slot = alloca i64, align 8
  %var.rev = alloca i64, align 8
  %var._197 = alloca i64, align 8
  %var._i196 = alloca i64, align 8
  %var.k192 = alloca i64, align 8
  %loop.step.29 = alloca i64, align 8
  %loop.idx.29 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.k = alloca i64, align 8
  %var.pmask = alloca i64, align 8
  %var.emask = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.27 = alloca i64, align 8
  %loop.idx.27 = alloca i64, align 8
  %"var.nfds'" = alloca i64, align 8
  %var.idxs = alloca ptr, align 8
  %var.pfds = alloca ptr, align 8
  %"var.res'" = alloca ptr, align 8
  %var.timeout_ms = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i64 %1, ptr %var.timeout_ms, align 8
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
  store ptr %a.new, ptr %"var.res'", align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  br i1 %fld.load, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %"var.res'", align 8
  %a.load = load ptr, ptr %"var.res'", align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load10 = load ptr, ptr %var.p, align 8
  %fld.gep11 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load10, i32 0, i32 2
  %fld.load12 = load i64, ptr %fld.gep11, align 8
  %multmp = mul i64 %fld.load12, 8
  %arena.cur13 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 24)
  %cap.neg = icmp slt i64 %multmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %multmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len14

a.create:                                         ; preds = %choice.then
  %arena.cur3 = call ptr @dva_arena_current()
  %a.create4 = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 24)
  %arena.cur5 = call ptr @dva_arena_current()
  %a.buf6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 128)
  %a.len.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 0
  store i64 0, ptr %a.len.gep7, align 8
  %a.data.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 1
  store ptr %a.buf6, ptr %a.data.gep8, align 8
  %a.cap.gep9 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 2
  store i64 16, ptr %a.cap.gep9, align 8
  store ptr %a.create4, ptr %"var.res'", align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %"var.res'", align 8
  ret ptr %a.load2

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len14:                                      ; preds = %str_overflow_abort, %choice.exit
  %arena.cur15 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.pfds, align 8
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
  store ptr %a.new17, ptr %var.idxs, align 8
  store i64 0, ptr %"var.nfds'", align 8
  %var.load23 = load ptr, ptr %var.p, align 8
  %fld.gep24 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load23, i32 0, i32 3
  %fld.load25 = load ptr, ptr %fld.gep24, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load25, i32 0, i32 0
  %a.len.query26 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.27, align 8
  br label %loop.header.27

str_overflow_abort:                               ; preds = %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len14

loop.header.27:                                   ; preds = %loop.latch.27, %b.buf.len14
  %counter.load = load i64, ptr %loop.idx.27, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query26
  br i1 %loop.cond, label %loop.body.27, label %loop.exit.nat.27

loop.body.27:                                     ; preds = %loop.header.27
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.27, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load27 = load ptr, ptr %var.p, align 8
  %fld.gep28 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load27, i32 0, i32 3
  %fld.load29 = load ptr, ptr %fld.gep28, align 8
  %var.load30 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load29, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

loop.exit.nat.27:                                 ; preds = %loop.header.27
  br label %loop.exit.27

loop.latch.27:                                    ; preds = %choice.exit68
  %step.val = load i64, ptr %loop.step.27, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.27, align 8
  br label %loop.header.27

loop.exit.27:                                     ; preds = %loop.exit.nat.27
  %var.load168 = load ptr, ptr %var.pfds, align 8
  %b.ptr169 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load168, i32 0, i32 1
  %b.ptr170 = load ptr, ptr %b.ptr169, align 8
  %addr.ffi.int = ptrtoint ptr %b.ptr170 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load171 = load i64, ptr %"var.nfds'", align 8
  %var.load172 = load i64, ptr %var.timeout_ms, align 8
  %call.res = call i64 @poll(ptr %addr.ffi.clean, i64 %var.load171, i64 %var.load172)
  store i64 %call.res, ptr %var.n, align 8
  %var.load173 = load i64, ptr %var.n, align 8
  %cmptmp174 = icmp sle i64 %var.load173, 0
  br i1 %cmptmp174, label %choice.then175, label %choice.exit176

a.rd.check:                                       ; preds = %loop.body.27
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load29, i32 0, i32 0
  %a.rd.len31 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load30, 0
  %a.rd.lt = icmp slt i64 %var.load30, %a.rd.len31
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load29, i32 0, i32 1
  %a.rd.data32 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data32, i64 %var.load30
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %loop.body.27
  %arena.cur33 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep, align 8
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
  %arena.cur34 = call ptr @dva_arena_current()
  %err.alloc35 = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 56)
  %err.code.gep36 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc35, i32 0, i32 0
  store i64 4011, ptr %err.code.gep36, align 8
  %err.msg.gep37 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc35, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep37, align 8
  %err.file.gep38 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc35, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep38, align 8
  %err.line.gep39 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc35, i32 0, i32 3
  store i64 0, ptr %err.line.gep39, align 8
  %err.col.gep40 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc35, i32 0, i32 4
  store i64 0, ptr %err.col.gep40, align 8
  %err.ctx.gep41 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc35, i32 0, i32 5
  %err.ctx0.gep42 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep41, i32 0, i32 0
  store i64 %var.load30, ptr %err.ctx0.gep42, align 8
  %err.ctx1.gep43 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep41, i32 0, i32 1
  store i64 %a.rd.len31, ptr %err.ctx1.gep43, align 8
  %err.p2i44 = ptrtoint ptr %err.alloc35 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i44, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.28, label %unwrap.abort.28

unwrap.pos.28:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.e, align 8
  %var.load64 = load ptr, ptr %var.e, align 8
  %fld.gep65 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load64, i32 0, i32 0
  %fld.load66 = load i64, ptr %fld.gep65, align 8
  %cmptmp = icmp sge i64 %fld.load66, 0
  br i1 %cmptmp, label %choice.then67, label %choice.exit68

unwrap.abort.28:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep45 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep45, align 8
  %err.msg.gep46 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep46, align 8
  %err.file.gep47 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep47, align 8
  %err.line.gep48 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep48, align 8
  %err.col.gep49 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep49, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len50 = load i64, ptr %err.msg.len, align 8
  %err.msg.len51 = and i64 %err.msg.len50, 281474976710655
  %str.tag = lshr i64 %err.msg.len50, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %unwrap.abort.28
  %arena.cur52 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur52, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %unwrap.abort.28
  %err.msg.len32 = trunc i64 %err.msg.len51 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data53 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len54 = load i64, ptr %err.file.len, align 8
  %err.file.len55 = and i64 %err.file.len54, 281474976710655
  %str.tag56 = lshr i64 %err.file.len54, 48
  %str.immortal57 = icmp eq i64 %str.tag56, 0
  br i1 %str.immortal57, label %str_ok59, label %str_gen_check58

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check58:                                  ; preds = %str_ok
  %arena.cur61 = call ptr @dva_arena_current()
  %tag.valid62 = call i1 @dva_arena_validate_tag(ptr %arena.cur61, i64 %str.tag56)
  br i1 %tag.valid62, label %str_ok59, label %str_stale60

str_ok59:                                         ; preds = %str_stale60, %str_gen_check58, %str_ok
  %err.file.len32 = trunc i64 %err.file.len55 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data63 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale60:                                      ; preds = %str_gen_check58
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok59

err.thread:                                       ; preds = %str_ok59
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok59
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data53, i32 %err.file.len32, ptr %err.file.data63, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

choice.then67:                                    ; preds = %unwrap.pos.28
  %var.load69 = load ptr, ptr %var.e, align 8
  %fld.gep70 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load69, i32 0, i32 1
  %fld.load71 = load i64, ptr %fld.gep70, align 8
  store i64 %fld.load71, ptr %var.emask, align 8
  %var.load72 = load i64, ptr %var.emask, align 8
  %var.load73 = load i64, ptr @"var.event::READ", align 8
  %bandtmp = and i64 %var.load72, %var.load73
  %cmptmp74 = icmp ne i64 %bandtmp, 0
  br i1 %cmptmp74, label %choice.then75, label %choice.else

choice.exit68:                                    ; preds = %a.store, %unwrap.pos.28
  br label %loop.latch.27

choice.then75:                                    ; preds = %choice.then67
  br label %choice.exit76

choice.else:                                      ; preds = %choice.then67
  br label %choice.exit76

choice.exit76:                                    ; preds = %choice.else, %choice.then75
  %choice.res = phi i64 [ 1, %choice.then75 ], [ 0, %choice.else ]
  %var.load77 = load i64, ptr %var.emask, align 8
  %var.load78 = load i64, ptr @"var.event::WRITE", align 8
  %bandtmp79 = and i64 %var.load77, %var.load78
  %cmptmp80 = icmp ne i64 %bandtmp79, 0
  br i1 %cmptmp80, label %choice.then81, label %choice.else82

choice.then81:                                    ; preds = %choice.exit76
  br label %choice.exit83

choice.else82:                                    ; preds = %choice.exit76
  br label %choice.exit83

choice.exit83:                                    ; preds = %choice.else82, %choice.then81
  %choice.res84 = phi i64 [ 4, %choice.then81 ], [ 0, %choice.else82 ]
  %bortmp = or i64 %choice.res, %choice.res84
  %var.load85 = load i64, ptr %var.emask, align 8
  %var.load86 = load i64, ptr @"var.event::PRI", align 8
  %bandtmp87 = and i64 %var.load85, %var.load86
  %cmptmp88 = icmp ne i64 %bandtmp87, 0
  br i1 %cmptmp88, label %choice.then89, label %choice.else90

choice.then89:                                    ; preds = %choice.exit83
  br label %choice.exit91

choice.else90:                                    ; preds = %choice.exit83
  br label %choice.exit91

choice.exit91:                                    ; preds = %choice.else90, %choice.then89
  %choice.res92 = phi i64 [ 2, %choice.then89 ], [ 0, %choice.else90 ]
  %bortmp93 = or i64 %bortmp, %choice.res92
  store i64 %bortmp93, ptr %var.pmask, align 8
  %var.load94 = load i64, ptr %"var.nfds'", align 8
  store i64 %var.load94, ptr %var.k, align 8
  %var.load95 = load ptr, ptr %var.pfds, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load95, i32 0, i32 1
  %b.ptr96 = load ptr, ptr %b.ptr, align 8
  %var.load97 = load i64, ptr %var.k, align 8
  %multmp98 = mul i64 %var.load97, 8
  %ptr.int.l = ptrtoint ptr %b.ptr96 to i64
  %addtmp = add i64 %ptr.int.l, %multmp98
  %ptr.res = inttoptr i64 %addtmp to ptr
  %var.load99 = load ptr, ptr %var.e, align 8
  %fld.gep100 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load99, i32 0, i32 0
  %fld.load101 = load i64, ptr %fld.gep100, align 8
  %coerce.trunc = trunc i64 %fld.load101 to i32
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

addr_gen_check:                                   ; preds = %choice.exit91
  %arena.cur102 = call ptr @dva_arena_current()
  %tag.valid103 = call i1 @dva_arena_validate_tag(ptr %arena.cur102, i64 %addr.tag)
  br i1 %tag.valid103, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.exit91
  store i32 %coerce.trunc, ptr %raw.clean.ptr, align 4
  %var.load104 = load ptr, ptr %var.pfds, align 8
  %b.ptr105 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load104, i32 0, i32 1
  %b.ptr106 = load ptr, ptr %b.ptr105, align 8
  %var.load107 = load i64, ptr %var.k, align 8
  %multmp108 = mul i64 %var.load107, 8
  %ptr.int.l109 = ptrtoint ptr %b.ptr106 to i64
  %addtmp110 = add i64 %ptr.int.l109, %multmp108
  %ptr.res111 = inttoptr i64 %addtmp110 to ptr
  %ptr.int.l112 = ptrtoint ptr %ptr.res111 to i64
  %addtmp113 = add i64 %ptr.int.l112, 4
  %ptr.res114 = inttoptr i64 %addtmp113 to ptr
  %var.load115 = load i64, ptr %var.pmask, align 8
  %coerce.trunc116 = trunc i64 %var.load115 to i16
  %raw.int117 = ptrtoint ptr %ptr.res114 to i64
  %raw.clean.int118 = and i64 %raw.int117, 281474976710655
  %raw.clean.ptr119 = inttoptr i64 %raw.clean.int118 to ptr
  %addr.tag120 = lshr i64 %raw.int117, 48
  %addr.immortal121 = icmp eq i64 %addr.tag120, 0
  br i1 %addr.immortal121, label %addr_ok123, label %addr_gen_check122

addr_stale:                                       ; preds = %addr_gen_check
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check122:                                ; preds = %addr_ok
  %arena.cur125 = call ptr @dva_arena_current()
  %tag.valid126 = call i1 @dva_arena_validate_tag(ptr %arena.cur125, i64 %addr.tag120)
  br i1 %tag.valid126, label %addr_ok123, label %addr_stale124

addr_ok123:                                       ; preds = %addr_stale124, %addr_gen_check122, %addr_ok
  store i16 %coerce.trunc116, ptr %raw.clean.ptr119, align 2
  %var.load127 = load ptr, ptr %var.pfds, align 8
  %b.ptr128 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load127, i32 0, i32 1
  %b.ptr129 = load ptr, ptr %b.ptr128, align 8
  %var.load130 = load i64, ptr %var.k, align 8
  %multmp131 = mul i64 %var.load130, 8
  %ptr.int.l132 = ptrtoint ptr %b.ptr129 to i64
  %addtmp133 = add i64 %ptr.int.l132, %multmp131
  %ptr.res134 = inttoptr i64 %addtmp133 to ptr
  %ptr.int.l135 = ptrtoint ptr %ptr.res134 to i64
  %addtmp136 = add i64 %ptr.int.l135, 6
  %ptr.res137 = inttoptr i64 %addtmp136 to ptr
  %raw.int138 = ptrtoint ptr %ptr.res137 to i64
  %raw.clean.int139 = and i64 %raw.int138, 281474976710655
  %raw.clean.ptr140 = inttoptr i64 %raw.clean.int139 to ptr
  %addr.tag141 = lshr i64 %raw.int138, 48
  %addr.immortal142 = icmp eq i64 %addr.tag141, 0
  br i1 %addr.immortal142, label %addr_ok144, label %addr_gen_check143

addr_stale124:                                    ; preds = %addr_gen_check122
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok123

addr_gen_check143:                                ; preds = %addr_ok123
  %arena.cur146 = call ptr @dva_arena_current()
  %tag.valid147 = call i1 @dva_arena_validate_tag(ptr %arena.cur146, i64 %addr.tag141)
  br i1 %tag.valid147, label %addr_ok144, label %addr_stale145

addr_ok144:                                       ; preds = %addr_stale145, %addr_gen_check143, %addr_ok123
  store i16 0, ptr %raw.clean.ptr140, align 2
  %var.load148 = load i64, ptr %var.i, align 8
  %a.load149 = load ptr, ptr %var.idxs, align 8
  %a.null150 = icmp eq ptr %a.load149, null
  br i1 %a.null150, label %a.create151, label %a.after152

addr_stale145:                                    ; preds = %addr_gen_check143
  %7 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok144

a.create151:                                      ; preds = %addr_ok144
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
  store ptr %a.create154, ptr %var.idxs, align 8
  br label %a.after152

a.after152:                                       ; preds = %a.create151, %addr_ok144
  %a.load2160 = load ptr, ptr %var.idxs, align 8
  br label %a.check

a.check:                                          ; preds = %a.after152
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2160, i32 0, i32 0
  %a.len161 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2160, i32 0, i32 2
  %a.cap162 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len161, %a.cap162
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2160)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2160, i32 0, i32 1
  %a.cur.data163 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2160, i32 0, i32 0
  %a.cur.len164 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data163, i64 %a.cur.len164
  store i64 %var.load148, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len164, 1
  %b.len.gep165 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2160, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep165, align 8
  %var.load166 = load i64, ptr %"var.nfds'", align 8
  %addtmp167 = add i64 %var.load166, 1
  store i64 %addtmp167, ptr %"var.nfds'", align 8
  br label %choice.exit68

choice.then175:                                   ; preds = %loop.exit.27
  %var.load177 = load ptr, ptr %"var.res'", align 8
  %a.load178 = load ptr, ptr %"var.res'", align 8
  %a.null179 = icmp eq ptr %a.load178, null
  br i1 %a.null179, label %a.create180, label %a.after181

choice.exit176:                                   ; preds = %ret.dead190, %loop.exit.27
  %var.load191 = load i64, ptr %"var.nfds'", align 8
  store i64 0, ptr %loop.idx.29, align 8
  br label %loop.header.29

a.create180:                                      ; preds = %choice.then175
  %arena.cur182 = call ptr @dva_arena_current()
  %a.create183 = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 24)
  %arena.cur184 = call ptr @dva_arena_current()
  %a.buf185 = call ptr @dva_arena_alloc(ptr %arena.cur184, i64 128)
  %a.len.gep186 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create183, i32 0, i32 0
  store i64 0, ptr %a.len.gep186, align 8
  %a.data.gep187 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create183, i32 0, i32 1
  store ptr %a.buf185, ptr %a.data.gep187, align 8
  %a.cap.gep188 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create183, i32 0, i32 2
  store i64 16, ptr %a.cap.gep188, align 8
  store ptr %a.create183, ptr %"var.res'", align 8
  br label %a.after181

a.after181:                                       ; preds = %a.create180, %choice.then175
  %a.load2189 = load ptr, ptr %"var.res'", align 8
  ret ptr %a.load2189

ret.dead190:                                      ; No predecessors!
  br label %choice.exit176

loop.header.29:                                   ; preds = %loop.latch.29, %choice.exit176
  %counter.load193 = load i64, ptr %loop.idx.29, align 8
  %loop.cond194 = icmp slt i64 %counter.load193, %var.load191
  br i1 %loop.cond194, label %loop.body.29, label %loop.exit.nat.29

loop.body.29:                                     ; preds = %loop.header.29
  %loop.rel.i195 = sub i64 %counter.load193, 0
  store i64 1, ptr %loop.step.29, align 8
  store i64 %loop.rel.i195, ptr %var._i196, align 8
  store i64 %counter.load193, ptr %var._197, align 8
  store i64 %counter.load193, ptr %var.k192, align 8
  %var.load198 = load ptr, ptr %var.pfds, align 8
  %b.ptr199 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load198, i32 0, i32 1
  %b.ptr200 = load ptr, ptr %b.ptr199, align 8
  %var.load201 = load i64, ptr %var.k192, align 8
  %multmp202 = mul i64 %var.load201, 8
  %ptr.int.l203 = ptrtoint ptr %b.ptr200 to i64
  %addtmp204 = add i64 %ptr.int.l203, %multmp202
  %ptr.res205 = inttoptr i64 %addtmp204 to ptr
  %ptr.int.l206 = ptrtoint ptr %ptr.res205 to i64
  %addtmp207 = add i64 %ptr.int.l206, 6
  %ptr.res208 = inttoptr i64 %addtmp207 to ptr
  %raw.int209 = ptrtoint ptr %ptr.res208 to i64
  %raw.clean.int210 = and i64 %raw.int209, 281474976710655
  %raw.clean.ptr211 = inttoptr i64 %raw.clean.int210 to ptr
  %addr.tag212 = lshr i64 %raw.int209, 48
  %addr.immortal213 = icmp eq i64 %addr.tag212, 0
  br i1 %addr.immortal213, label %addr_ok215, label %addr_gen_check214

loop.exit.nat.29:                                 ; preds = %loop.header.29
  br label %loop.exit.29

loop.latch.29:                                    ; preds = %choice.exit223
  %step.val500 = load i64, ptr %loop.step.29, align 8
  %loop.next501 = add i64 %counter.load193, %step.val500
  store i64 %loop.next501, ptr %loop.idx.29, align 8
  br label %loop.header.29

loop.exit.29:                                     ; preds = %loop.exit.nat.29
  %var.load502 = load ptr, ptr %"var.res'", align 8
  %a.load503 = load ptr, ptr %"var.res'", align 8
  %a.null504 = icmp eq ptr %a.load503, null
  br i1 %a.null504, label %a.create505, label %a.after506

addr_gen_check214:                                ; preds = %loop.body.29
  %arena.cur217 = call ptr @dva_arena_current()
  %tag.valid218 = call i1 @dva_arena_validate_tag(ptr %arena.cur217, i64 %addr.tag212)
  br i1 %tag.valid218, label %addr_ok215, label %addr_stale216

addr_ok215:                                       ; preds = %addr_stale216, %addr_gen_check214, %loop.body.29
  %raw.load = load volatile i16, ptr %raw.clean.ptr211, align 2
  %coerce.sext = sext i16 %raw.load to i64
  %bandtmp219 = and i64 %coerce.sext, 65535
  store i64 %bandtmp219, ptr %var.rev, align 8
  %var.load220 = load i64, ptr %var.rev, align 8
  %cmptmp221 = icmp ne i64 %var.load220, 0
  br i1 %cmptmp221, label %choice.then222, label %choice.exit223

addr_stale216:                                    ; preds = %addr_gen_check214
  %8 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok215

choice.then222:                                   ; preds = %addr_ok215
  %var.load224 = load ptr, ptr %var.idxs, align 8
  %a.load225 = load ptr, ptr %var.idxs, align 8
  %a.null226 = icmp eq ptr %a.load225, null
  br i1 %a.null226, label %a.create227, label %a.after228

choice.exit223:                                   ; preds = %a.store487, %addr_ok215
  br label %loop.latch.29

a.create227:                                      ; preds = %choice.then222
  %arena.cur229 = call ptr @dva_arena_current()
  %a.create230 = call ptr @dva_arena_alloc(ptr %arena.cur229, i64 24)
  %arena.cur231 = call ptr @dva_arena_current()
  %a.buf232 = call ptr @dva_arena_alloc(ptr %arena.cur231, i64 128)
  %a.len.gep233 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create230, i32 0, i32 0
  store i64 0, ptr %a.len.gep233, align 8
  %a.data.gep234 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create230, i32 0, i32 1
  store ptr %a.buf232, ptr %a.data.gep234, align 8
  %a.cap.gep235 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create230, i32 0, i32 2
  store i64 16, ptr %a.cap.gep235, align 8
  store ptr %a.create230, ptr %var.idxs, align 8
  br label %a.after228

a.after228:                                       ; preds = %a.create227, %choice.then222
  %a.load2236 = load ptr, ptr %var.idxs, align 8
  %var.load237 = load i64, ptr %var.k192, align 8
  %a.rd.nonnull238 = icmp ne ptr %a.load2236, null
  br i1 %a.rd.nonnull238, label %a.rd.check239, label %a.rd.err.null241

a.rd.check239:                                    ; preds = %a.after228
  %a.rd.len244 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2236, i32 0, i32 0
  %a.rd.len245 = load i64, ptr %a.rd.len244, align 8
  %a.rd.ge0246 = icmp sge i64 %var.load237, 0
  %a.rd.lt247 = icmp slt i64 %var.load237, %a.rd.len245
  %a.rd.bounds248 = and i1 %a.rd.ge0246, %a.rd.lt247
  br i1 %a.rd.bounds248, label %a.rd.ok240, label %a.rd.err.oob242

a.rd.ok240:                                       ; preds = %a.rd.check239
  %a.rd.data249 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2236, i32 0, i32 1
  %a.rd.data250 = load ptr, ptr %a.rd.data249, align 8
  %a.rd.elem.gep251 = getelementptr i64, ptr %a.rd.data250, i64 %var.load237
  %a.rd.elem252 = load i64, ptr %a.rd.elem.gep251, align 8
  br label %a.rd.done243

a.rd.err.null241:                                 ; preds = %a.after228
  %arena.cur253 = call ptr @dva_arena_current()
  %err.alloc254 = call ptr @dva_arena_alloc(ptr %arena.cur253, i64 56)
  %err.code.gep255 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc254, i32 0, i32 0
  store i64 4011, ptr %err.code.gep255, align 8
  %err.msg.gep256 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc254, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep256, align 8
  %err.file.gep257 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc254, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep257, align 8
  %err.line.gep258 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc254, i32 0, i32 3
  store i64 148, ptr %err.line.gep258, align 8
  %err.col.gep259 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc254, i32 0, i32 4
  store i64 30, ptr %err.col.gep259, align 8
  %err.ctx.gep260 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc254, i32 0, i32 5
  %err.ctx0.gep261 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep260, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep261, align 8
  %err.ctx1.gep262 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep260, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep262, align 8
  %err.p2i263 = ptrtoint ptr %err.alloc254 to i64
  br label %a.rd.done243

a.rd.err.oob242:                                  ; preds = %a.rd.check239
  %arena.cur264 = call ptr @dva_arena_current()
  %err.alloc265 = call ptr @dva_arena_alloc(ptr %arena.cur264, i64 56)
  %err.code.gep266 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc265, i32 0, i32 0
  store i64 4011, ptr %err.code.gep266, align 8
  %err.msg.gep267 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc265, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep267, align 8
  %err.file.gep268 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc265, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep268, align 8
  %err.line.gep269 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc265, i32 0, i32 3
  store i64 148, ptr %err.line.gep269, align 8
  %err.col.gep270 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc265, i32 0, i32 4
  store i64 30, ptr %err.col.gep270, align 8
  %err.ctx.gep271 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc265, i32 0, i32 5
  %err.ctx0.gep272 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep271, i32 0, i32 0
  store i64 %var.load237, ptr %err.ctx0.gep272, align 8
  %err.ctx1.gep273 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep271, i32 0, i32 1
  store i64 %a.rd.len245, ptr %err.ctx1.gep273, align 8
  %err.p2i274 = ptrtoint ptr %err.alloc265 to i64
  br label %a.rd.done243

a.rd.done243:                                     ; preds = %a.rd.err.oob242, %a.rd.err.null241, %a.rd.ok240
  %a.rd.tag275 = phi i1 [ true, %a.rd.ok240 ], [ false, %a.rd.err.null241 ], [ false, %a.rd.err.oob242 ]
  %a.rd.pay276 = phi i64 [ %a.rd.elem252, %a.rd.ok240 ], [ %err.p2i263, %a.rd.err.null241 ], [ %err.p2i274, %a.rd.err.oob242 ]
  %ram.tag277 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag275, 0
  %ram.pay278 = insertvalue { i1, i64 } %ram.tag277, i64 %a.rd.pay276, 1
  %unwrap.is_pos279 = extractvalue { i1, i64 } %ram.pay278, 0
  br i1 %unwrap.is_pos279, label %unwrap.pos.30, label %unwrap.abort.30

unwrap.pos.30:                                    ; preds = %a.rd.done243
  %unwrap.pay.pos325 = extractvalue { i1, i64 } %ram.pay278, 1
  store i64 %unwrap.pay.pos325, ptr %var.slot, align 8
  %var.load326 = load ptr, ptr %var.p, align 8
  %fld.gep327 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load326, i32 0, i32 3
  %fld.load328 = load ptr, ptr %fld.gep327, align 8
  %var.load329 = load i64, ptr %var.slot, align 8
  %a.rd.nonnull330 = icmp ne ptr %fld.load328, null
  br i1 %a.rd.nonnull330, label %a.rd.check331, label %a.rd.err.null333

unwrap.abort.30:                                  ; preds = %a.rd.done243
  %unwrap.pay.abort280 = extractvalue { i1, i64 } %ram.pay278, 1
  %err.ptr281 = inttoptr i64 %unwrap.pay.abort280 to ptr
  %err.code.gep282 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr281, i32 0, i32 0
  %err.code283 = load i64, ptr %err.code.gep282, align 8
  %err.msg.gep284 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr281, i32 0, i32 1
  %err.msg.struct285 = load ptr, ptr %err.msg.gep284, align 8
  %err.file.gep286 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr281, i32 0, i32 2
  %err.file.struct287 = load ptr, ptr %err.file.gep286, align 8
  %err.line.gep288 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr281, i32 0, i32 3
  %err.line289 = load i64, ptr %err.line.gep288, align 8
  %err.col.gep290 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr281, i32 0, i32 4
  %err.col291 = load i64, ptr %err.col.gep290, align 8
  %err.msg.len292 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct285, i32 0, i32 0
  %err.msg.len293 = load i64, ptr %err.msg.len292, align 8
  %err.msg.len294 = and i64 %err.msg.len293, 281474976710655
  %str.tag295 = lshr i64 %err.msg.len293, 48
  %str.immortal296 = icmp eq i64 %str.tag295, 0
  br i1 %str.immortal296, label %str_ok298, label %str_gen_check297

str_gen_check297:                                 ; preds = %unwrap.abort.30
  %arena.cur300 = call ptr @dva_arena_current()
  %tag.valid301 = call i1 @dva_arena_validate_tag(ptr %arena.cur300, i64 %str.tag295)
  br i1 %tag.valid301, label %str_ok298, label %str_stale299

str_ok298:                                        ; preds = %str_stale299, %str_gen_check297, %unwrap.abort.30
  %err.msg.len32302 = trunc i64 %err.msg.len294 to i32
  %err.msg.data303 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct285, i32 0, i32 1
  %err.msg.data304 = load ptr, ptr %err.msg.data303, align 8
  %err.file.len305 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct287, i32 0, i32 0
  %err.file.len306 = load i64, ptr %err.file.len305, align 8
  %err.file.len307 = and i64 %err.file.len306, 281474976710655
  %str.tag308 = lshr i64 %err.file.len306, 48
  %str.immortal309 = icmp eq i64 %str.tag308, 0
  br i1 %str.immortal309, label %str_ok311, label %str_gen_check310

str_stale299:                                     ; preds = %str_gen_check297
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok298

str_gen_check310:                                 ; preds = %str_ok298
  %arena.cur313 = call ptr @dva_arena_current()
  %tag.valid314 = call i1 @dva_arena_validate_tag(ptr %arena.cur313, i64 %str.tag308)
  br i1 %tag.valid314, label %str_ok311, label %str_stale312

str_ok311:                                        ; preds = %str_stale312, %str_gen_check310, %str_ok298
  %err.file.len32315 = trunc i64 %err.file.len307 to i32
  %err.file.data316 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct287, i32 0, i32 1
  %err.file.data317 = load ptr, ptr %err.file.data316, align 8
  %err.thread.rec318 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread319 = icmp ne ptr %err.thread.rec318, null
  br i1 %err.is.thread319, label %err.thread320, label %err.normal321

str_stale312:                                     ; preds = %str_gen_check310
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok311

err.thread320:                                    ; preds = %str_ok311
  %err.haserr.gep322 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec318, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep322, align 8
  %err.err.gep323 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec318, i32 0, i32 7
  store ptr %err.ptr281, ptr %err.err.gep323, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal321:                                    ; preds = %str_ok311
  %err.panic.printf324 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code283, i32 %err.msg.len32302, ptr %err.msg.data304, i32 %err.file.len32315, ptr %err.file.data317, i64 %err.line289, i64 %err.col291)
  call void @exit(i32 1)
  unreachable

a.rd.check331:                                    ; preds = %unwrap.pos.30
  %a.rd.len336 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load328, i32 0, i32 0
  %a.rd.len337 = load i64, ptr %a.rd.len336, align 8
  %a.rd.ge0338 = icmp sge i64 %var.load329, 0
  %a.rd.lt339 = icmp slt i64 %var.load329, %a.rd.len337
  %a.rd.bounds340 = and i1 %a.rd.ge0338, %a.rd.lt339
  br i1 %a.rd.bounds340, label %a.rd.ok332, label %a.rd.err.oob334

a.rd.ok332:                                       ; preds = %a.rd.check331
  %a.rd.data341 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load328, i32 0, i32 1
  %a.rd.data342 = load ptr, ptr %a.rd.data341, align 8
  %a.rd.elem.gep343 = getelementptr i64, ptr %a.rd.data342, i64 %var.load329
  %a.rd.elem344 = load i64, ptr %a.rd.elem.gep343, align 8
  br label %a.rd.done335

a.rd.err.null333:                                 ; preds = %unwrap.pos.30
  %arena.cur345 = call ptr @dva_arena_current()
  %err.alloc346 = call ptr @dva_arena_alloc(ptr %arena.cur345, i64 56)
  %err.code.gep347 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc346, i32 0, i32 0
  store i64 4011, ptr %err.code.gep347, align 8
  %err.msg.gep348 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc346, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep348, align 8
  %err.file.gep349 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc346, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep349, align 8
  %err.line.gep350 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc346, i32 0, i32 3
  store i64 0, ptr %err.line.gep350, align 8
  %err.col.gep351 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc346, i32 0, i32 4
  store i64 0, ptr %err.col.gep351, align 8
  %err.ctx.gep352 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc346, i32 0, i32 5
  %err.ctx0.gep353 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep352, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep353, align 8
  %err.ctx1.gep354 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep352, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep354, align 8
  %err.p2i355 = ptrtoint ptr %err.alloc346 to i64
  br label %a.rd.done335

a.rd.err.oob334:                                  ; preds = %a.rd.check331
  %arena.cur356 = call ptr @dva_arena_current()
  %err.alloc357 = call ptr @dva_arena_alloc(ptr %arena.cur356, i64 56)
  %err.code.gep358 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc357, i32 0, i32 0
  store i64 4011, ptr %err.code.gep358, align 8
  %err.msg.gep359 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc357, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep359, align 8
  %err.file.gep360 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc357, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep360, align 8
  %err.line.gep361 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc357, i32 0, i32 3
  store i64 0, ptr %err.line.gep361, align 8
  %err.col.gep362 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc357, i32 0, i32 4
  store i64 0, ptr %err.col.gep362, align 8
  %err.ctx.gep363 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc357, i32 0, i32 5
  %err.ctx0.gep364 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep363, i32 0, i32 0
  store i64 %var.load329, ptr %err.ctx0.gep364, align 8
  %err.ctx1.gep365 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep363, i32 0, i32 1
  store i64 %a.rd.len337, ptr %err.ctx1.gep365, align 8
  %err.p2i366 = ptrtoint ptr %err.alloc357 to i64
  br label %a.rd.done335

a.rd.done335:                                     ; preds = %a.rd.err.oob334, %a.rd.err.null333, %a.rd.ok332
  %a.rd.tag367 = phi i1 [ true, %a.rd.ok332 ], [ false, %a.rd.err.null333 ], [ false, %a.rd.err.oob334 ]
  %a.rd.pay368 = phi i64 [ %a.rd.elem344, %a.rd.ok332 ], [ %err.p2i355, %a.rd.err.null333 ], [ %err.p2i366, %a.rd.err.oob334 ]
  %ram.tag369 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag367, 0
  %ram.pay370 = insertvalue { i1, i64 } %ram.tag369, i64 %a.rd.pay368, 1
  %unwrap.is_pos371 = extractvalue { i1, i64 } %ram.pay370, 0
  br i1 %unwrap.is_pos371, label %unwrap.pos.31, label %unwrap.abort.31

unwrap.pos.31:                                    ; preds = %a.rd.done335
  %unwrap.pay.pos417 = extractvalue { i1, i64 } %ram.pay370, 1
  %pay.ptr418 = inttoptr i64 %unwrap.pay.pos417 to ptr
  store ptr %pay.ptr418, ptr %var.ev, align 8
  %var.load419 = load i64, ptr %var.rev, align 8
  %bandtmp420 = and i64 %var.load419, 1
  %cmptmp421 = icmp ne i64 %bandtmp420, 0
  br i1 %cmptmp421, label %choice.then422, label %choice.else423

unwrap.abort.31:                                  ; preds = %a.rd.done335
  %unwrap.pay.abort372 = extractvalue { i1, i64 } %ram.pay370, 1
  %err.ptr373 = inttoptr i64 %unwrap.pay.abort372 to ptr
  %err.code.gep374 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr373, i32 0, i32 0
  %err.code375 = load i64, ptr %err.code.gep374, align 8
  %err.msg.gep376 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr373, i32 0, i32 1
  %err.msg.struct377 = load ptr, ptr %err.msg.gep376, align 8
  %err.file.gep378 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr373, i32 0, i32 2
  %err.file.struct379 = load ptr, ptr %err.file.gep378, align 8
  %err.line.gep380 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr373, i32 0, i32 3
  %err.line381 = load i64, ptr %err.line.gep380, align 8
  %err.col.gep382 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr373, i32 0, i32 4
  %err.col383 = load i64, ptr %err.col.gep382, align 8
  %err.msg.len384 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct377, i32 0, i32 0
  %err.msg.len385 = load i64, ptr %err.msg.len384, align 8
  %err.msg.len386 = and i64 %err.msg.len385, 281474976710655
  %str.tag387 = lshr i64 %err.msg.len385, 48
  %str.immortal388 = icmp eq i64 %str.tag387, 0
  br i1 %str.immortal388, label %str_ok390, label %str_gen_check389

str_gen_check389:                                 ; preds = %unwrap.abort.31
  %arena.cur392 = call ptr @dva_arena_current()
  %tag.valid393 = call i1 @dva_arena_validate_tag(ptr %arena.cur392, i64 %str.tag387)
  br i1 %tag.valid393, label %str_ok390, label %str_stale391

str_ok390:                                        ; preds = %str_stale391, %str_gen_check389, %unwrap.abort.31
  %err.msg.len32394 = trunc i64 %err.msg.len386 to i32
  %err.msg.data395 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct377, i32 0, i32 1
  %err.msg.data396 = load ptr, ptr %err.msg.data395, align 8
  %err.file.len397 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct379, i32 0, i32 0
  %err.file.len398 = load i64, ptr %err.file.len397, align 8
  %err.file.len399 = and i64 %err.file.len398, 281474976710655
  %str.tag400 = lshr i64 %err.file.len398, 48
  %str.immortal401 = icmp eq i64 %str.tag400, 0
  br i1 %str.immortal401, label %str_ok403, label %str_gen_check402

str_stale391:                                     ; preds = %str_gen_check389
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok390

str_gen_check402:                                 ; preds = %str_ok390
  %arena.cur405 = call ptr @dva_arena_current()
  %tag.valid406 = call i1 @dva_arena_validate_tag(ptr %arena.cur405, i64 %str.tag400)
  br i1 %tag.valid406, label %str_ok403, label %str_stale404

str_ok403:                                        ; preds = %str_stale404, %str_gen_check402, %str_ok390
  %err.file.len32407 = trunc i64 %err.file.len399 to i32
  %err.file.data408 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct379, i32 0, i32 1
  %err.file.data409 = load ptr, ptr %err.file.data408, align 8
  %err.thread.rec410 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread411 = icmp ne ptr %err.thread.rec410, null
  br i1 %err.is.thread411, label %err.thread412, label %err.normal413

str_stale404:                                     ; preds = %str_gen_check402
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok403

err.thread412:                                    ; preds = %str_ok403
  %err.haserr.gep414 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec410, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep414, align 8
  %err.err.gep415 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec410, i32 0, i32 7
  store ptr %err.ptr373, ptr %err.err.gep415, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal413:                                    ; preds = %str_ok403
  %err.panic.printf416 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code375, i32 %err.msg.len32394, ptr %err.msg.data396, i32 %err.file.len32407, ptr %err.file.data409, i64 %err.line381, i64 %err.col383)
  call void @exit(i32 1)
  unreachable

choice.then422:                                   ; preds = %unwrap.pos.31
  %var.load425 = load i64, ptr @"var.event::READ", align 8
  br label %choice.exit424

choice.else423:                                   ; preds = %unwrap.pos.31
  br label %choice.exit424

choice.exit424:                                   ; preds = %choice.else423, %choice.then422
  %choice.res426 = phi i64 [ %var.load425, %choice.then422 ], [ 0, %choice.else423 ]
  %var.load427 = load i64, ptr %var.rev, align 8
  %bandtmp428 = and i64 %var.load427, 4
  %cmptmp429 = icmp ne i64 %bandtmp428, 0
  br i1 %cmptmp429, label %choice.then430, label %choice.else431

choice.then430:                                   ; preds = %choice.exit424
  %var.load433 = load i64, ptr @"var.event::WRITE", align 8
  br label %choice.exit432

choice.else431:                                   ; preds = %choice.exit424
  br label %choice.exit432

choice.exit432:                                   ; preds = %choice.else431, %choice.then430
  %choice.res434 = phi i64 [ %var.load433, %choice.then430 ], [ 0, %choice.else431 ]
  %bortmp435 = or i64 %choice.res426, %choice.res434
  %var.load436 = load i64, ptr %var.rev, align 8
  %bandtmp437 = and i64 %var.load436, 2
  %cmptmp438 = icmp ne i64 %bandtmp437, 0
  br i1 %cmptmp438, label %choice.then439, label %choice.else440

choice.then439:                                   ; preds = %choice.exit432
  %var.load442 = load i64, ptr @"var.event::PRI", align 8
  br label %choice.exit441

choice.else440:                                   ; preds = %choice.exit432
  br label %choice.exit441

choice.exit441:                                   ; preds = %choice.else440, %choice.then439
  %choice.res443 = phi i64 [ %var.load442, %choice.then439 ], [ 0, %choice.else440 ]
  %bortmp444 = or i64 %bortmp435, %choice.res443
  %var.load445 = load i64, ptr %var.rev, align 8
  %bandtmp446 = and i64 %var.load445, 8
  %cmptmp447 = icmp ne i64 %bandtmp446, 0
  br i1 %cmptmp447, label %choice.then448, label %choice.else449

choice.then448:                                   ; preds = %choice.exit441
  %var.load451 = load i64, ptr @"var.event::ERR", align 8
  br label %choice.exit450

choice.else449:                                   ; preds = %choice.exit441
  br label %choice.exit450

choice.exit450:                                   ; preds = %choice.else449, %choice.then448
  %choice.res452 = phi i64 [ %var.load451, %choice.then448 ], [ 0, %choice.else449 ]
  %bortmp453 = or i64 %bortmp444, %choice.res452
  %var.load454 = load i64, ptr %var.rev, align 8
  %bandtmp455 = and i64 %var.load454, 16
  %cmptmp456 = icmp ne i64 %bandtmp455, 0
  br i1 %cmptmp456, label %choice.then457, label %choice.else458

choice.then457:                                   ; preds = %choice.exit450
  %var.load460 = load i64, ptr @"var.event::HUP", align 8
  br label %choice.exit459

choice.else458:                                   ; preds = %choice.exit450
  br label %choice.exit459

choice.exit459:                                   ; preds = %choice.else458, %choice.then457
  %choice.res461 = phi i64 [ %var.load460, %choice.then457 ], [ 0, %choice.else458 ]
  %bortmp462 = or i64 %bortmp453, %choice.res461
  store i64 %bortmp462, ptr %var.ev_mask, align 8
  %var.load463 = load ptr, ptr %var.ev, align 8
  %fld.gep464 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load463, i32 0, i32 0
  %fld.load465 = load i64, ptr %fld.gep464, align 8
  %var.load466 = load i64, ptr %var.ev_mask, align 8
  %var.load467 = load ptr, ptr %var.ev, align 8
  %fld.gep468 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load467, i32 0, i32 2
  %fld.load469 = load i64, ptr %fld.gep468, align 8
  %arena.cur470 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur470, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %fld.load465, ptr %rec.fld, align 8
  %rec.fld471 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load466, ptr %rec.fld471, align 8
  %rec.fld472 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %fld.load469, ptr %rec.fld472, align 8
  %a.load473 = load ptr, ptr %"var.res'", align 8
  %a.null474 = icmp eq ptr %a.load473, null
  br i1 %a.null474, label %a.create475, label %a.after476

a.create475:                                      ; preds = %choice.exit459
  %arena.cur477 = call ptr @dva_arena_current()
  %a.create478 = call ptr @dva_arena_alloc(ptr %arena.cur477, i64 24)
  %arena.cur479 = call ptr @dva_arena_current()
  %a.buf480 = call ptr @dva_arena_alloc(ptr %arena.cur479, i64 128)
  %a.len.gep481 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create478, i32 0, i32 0
  store i64 0, ptr %a.len.gep481, align 8
  %a.data.gep482 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create478, i32 0, i32 1
  store ptr %a.buf480, ptr %a.data.gep482, align 8
  %a.cap.gep483 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create478, i32 0, i32 2
  store i64 16, ptr %a.cap.gep483, align 8
  store ptr %a.create478, ptr %"var.res'", align 8
  br label %a.after476

a.after476:                                       ; preds = %a.create475, %choice.exit459
  %a.load2484 = load ptr, ptr %"var.res'", align 8
  br label %a.check485

a.check485:                                       ; preds = %a.after476
  %a.len488 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2484, i32 0, i32 0
  %a.len489 = load i64, ptr %a.len488, align 8
  %a.cap490 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2484, i32 0, i32 2
  %a.cap491 = load i64, ptr %a.cap490, align 8
  %a.needs.grow492 = icmp eq i64 %a.len489, %a.cap491
  br i1 %a.needs.grow492, label %a.grow486, label %a.store487

a.grow486:                                        ; preds = %a.check485
  call void @dva_array_grow(ptr %a.load2484)
  br label %a.store487

a.store487:                                       ; preds = %a.grow486, %a.check485
  %a.cur.data493 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2484, i32 0, i32 1
  %a.cur.data494 = load ptr, ptr %a.cur.data493, align 8
  %a.cur.len495 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2484, i32 0, i32 0
  %a.cur.len496 = load i64, ptr %a.cur.len495, align 8
  %a.elem.gep497 = getelementptr i64, ptr %a.cur.data494, i64 %a.cur.len496
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep497, align 8
  %a.next.len498 = add i64 %a.cur.len496, 1
  %b.len.gep499 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2484, i32 0, i32 0
  store i64 %a.next.len498, ptr %b.len.gep499, align 8
  br label %choice.exit223

a.create505:                                      ; preds = %loop.exit.29
  %arena.cur507 = call ptr @dva_arena_current()
  %a.create508 = call ptr @dva_arena_alloc(ptr %arena.cur507, i64 24)
  %arena.cur509 = call ptr @dva_arena_current()
  %a.buf510 = call ptr @dva_arena_alloc(ptr %arena.cur509, i64 128)
  %a.len.gep511 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create508, i32 0, i32 0
  store i64 0, ptr %a.len.gep511, align 8
  %a.data.gep512 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create508, i32 0, i32 1
  store ptr %a.buf510, ptr %a.data.gep512, align 8
  %a.cap.gep513 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create508, i32 0, i32 2
  store i64 16, ptr %a.cap.gep513, align 8
  store ptr %a.create508, ptr %"var.res'", align 8
  br label %a.after506

a.after506:                                       ; preds = %a.create505, %loop.exit.29
  %a.load2514 = load ptr, ptr %"var.res'", align 8
  ret ptr %a.load2514
}

define void @"event::close"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  %nottmp = xor i1 %fld.load, true
  br i1 %nottmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.p, align 8
  %fld.gep2 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load1, i32 0, i32 1
  store i1 true, ptr %fld.gep2, align 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %entry
  ret void
}

define i1 @"event::is_read"(ptr %0) #1 {
entry:
  %var.ev = alloca ptr, align 8
  store ptr %0, ptr %var.ev, align 8
  %var.load = load ptr, ptr %var.ev, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load1 = load i64, ptr @"var.event::READ", align 8
  %bandtmp = and i64 %fld.load, %var.load1
  %cmptmp = icmp ne i64 %bandtmp, 0
  ret i1 %cmptmp
}

define i1 @"event::is_write"(ptr %0) #1 {
entry:
  %var.ev = alloca ptr, align 8
  store ptr %0, ptr %var.ev, align 8
  %var.load = load ptr, ptr %var.ev, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load1 = load i64, ptr @"var.event::WRITE", align 8
  %bandtmp = and i64 %fld.load, %var.load1
  %cmptmp = icmp ne i64 %bandtmp, 0
  ret i1 %cmptmp
}

define i1 @"event::is_err"(ptr %0) #1 {
entry:
  %var.ev = alloca ptr, align 8
  store ptr %0, ptr %var.ev, align 8
  %var.load = load ptr, ptr %var.ev, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load1 = load i64, ptr @"var.event::ERR", align 8
  %bandtmp = and i64 %fld.load, %var.load1
  %cmptmp = icmp ne i64 %bandtmp, 0
  ret i1 %cmptmp
}

define i1 @"event::is_hup"(ptr %0) #1 {
entry:
  %var.ev = alloca ptr, align 8
  store ptr %0, ptr %var.ev, align 8
  %var.load = load ptr, ptr %var.ev, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load1 = load i64, ptr @"var.event::HUP", align 8
  %var.load2 = load i64, ptr @"var.event::RDHUP", align 8
  %bortmp = or i64 %var.load1, %var.load2
  %bandtmp = and i64 %fld.load, %bortmp
  %cmptmp = icmp ne i64 %bandtmp, 0
  ret i1 %cmptmp
}

define i1 @"event::poll_in"(i64 %0, i64 %1) #1 {
entry:
  %var.timeout_ms = alloca i64, align 8
  %var.fd = alloca i64, align 8
  store i64 %0, ptr %var.fd, align 8
  store i64 %1, ptr %var.timeout_ms, align 8
  %var.load = load i64, ptr %var.fd, align 8
  %var.load1 = load i64, ptr %var.timeout_ms, align 8
  %call.res = call i1 @"sys::poll_in"(i64 %var.load, i64 %var.load1)
  ret i1 %call.res
}

declare i1 @"sys::poll_in"(i64, i64) #1

define i1 @"event::poll_out"(i64 %0, i64 %1) #1 {
entry:
  %var.timeout_ms = alloca i64, align 8
  %var.fd = alloca i64, align 8
  store i64 %0, ptr %var.fd, align 8
  store i64 %1, ptr %var.timeout_ms, align 8
  %var.load = load i64, ptr %var.fd, align 8
  %var.load1 = load i64, ptr %var.timeout_ms, align 8
  %call.res = call i1 @"sys::poll_out"(i64 %var.load, i64 %var.load1)
  ret i1 %call.res
}

declare i1 @"sys::poll_out"(i64, i64) #1

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
