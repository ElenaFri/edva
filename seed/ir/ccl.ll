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
@"var.io::STDIN" = external global i64
@"var.io::STDOUT" = external global i64
@"var.io::STDERR" = external global i64
@"var.io::EOF" = external global i64
@"var.io::EINTR" = external global i64
@"var.io::EBADF" = external global i64
@"var.io::EAGAIN" = external global i64
@"var.io::EWOULDBLOCK" = external global i64
@clo.const = internal constant { ptr, ptr } { ptr @"ccl::doc_new", ptr null }
@"var.ccl::doc_new" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"ccl::entry_new_str", ptr null }
@"var.ccl::entry_new_str" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"ccl::entry_new_block", ptr null }
@"var.ccl::entry_new_block" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"ccl::is_space", ptr null }
@"var.ccl::is_space" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.4 = internal constant { ptr, ptr } { ptr @"ccl::trim_left_idx", ptr null }
@"var.ccl::trim_left_idx" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"ccl::trim_right_idx", ptr null }
@"var.ccl::trim_right_idx" = global ptr null
@str.0 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.0 }
@clo.const.6 = internal constant { ptr, ptr } { ptr @"ccl::trim_str", ptr null }
@"var.ccl::trim_str" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"ccl::find_char_idx", ptr null }
@"var.ccl::find_char_idx" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"ccl::find_first_eq", ptr null }
@"var.ccl::find_first_eq" = global ptr null
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@str.1 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.1 }
@str.2 = internal unnamed_addr constant [8 x i8] c"ccl.dva\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.2 }
@str.3 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.3 }
@dva_thread_rec = external thread_local global ptr
@clo.const.9 = internal constant { ptr, ptr } { ptr @"ccl::sort_strings", ptr null }
@"var.ccl::sort_strings" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"ccl::ccl_error", ptr null }
@"var.ccl::ccl_error" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"ccl::has", ptr null }
@"var.ccl::has" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"ccl::count", ptr null }
@"var.ccl::count" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"ccl::get_entry", ptr null }
@"var.ccl::get_entry" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"ccl::get", ptr null }
@"var.ccl::get" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"ccl::get_section", ptr null }
@"var.ccl::get_section" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"ccl::get_list", ptr null }
@"var.ccl::get_list" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"ccl::entries_for", ptr null }
@"var.ccl::entries_for" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"ccl::split_raw_lines", ptr null }
@"var.ccl::split_raw_lines" = global ptr null
@str.4 = internal unnamed_addr constant [3 x i8] c"/=\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.4 }
@str.5 = internal unnamed_addr constant [2 x i8] c"/\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.5 }
@str.6 = internal unnamed_addr constant [33 x i8] c"syntax error: line missing '=': \00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 32, ptr @str.6 }
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.19 = internal constant { ptr, ptr } { ptr @"ccl::parse_block_from", ptr null }
@"var.ccl::parse_block_from" = global ptr null
@str.7 = internal unnamed_addr constant [32 x i8] c"syntax error: unexpected dedent\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 31, ptr @str.7 }
@clo.const.20 = internal constant { ptr, ptr } { ptr @"ccl::parse", ptr null }
@"var.ccl::parse" = global ptr null
@str.8 = internal unnamed_addr constant [19 x i8] c"cannot open file: \00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 18, ptr @str.8 }
@str.9 = internal unnamed_addr constant [19 x i8] c"cannot read file: \00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 18, ptr @str.9 }
@clo.const.21 = internal constant { ptr, ptr } { ptr @"ccl::parse_file", ptr null }
@"var.ccl::parse_file" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"ccl::has_newline", ptr null }
@"var.ccl::has_newline" = global ptr null
@clo.const.23 = internal constant { ptr, ptr } { ptr @"ccl::append_multiline_str", ptr null }
@"var.ccl::append_multiline_str" = global ptr null
@str.10 = internal unnamed_addr constant [4 x i8] c"/= \00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.10 }
@str.11 = internal unnamed_addr constant [2 x i8] c"=\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.11 }
@str.12 = internal unnamed_addr constant [3 x i8] c"= \00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.12 }
@str.13 = internal unnamed_addr constant [3 x i8] c" =\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.13 }
@str.14 = internal unnamed_addr constant [4 x i8] c" = \00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.14 }
@clo.const.24 = internal constant { ptr, ptr } { ptr @"ccl::serialize_doc_indent", ptr null }
@"var.ccl::serialize_doc_indent" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"ccl::to_ccl", ptr null }
@"var.ccl::to_ccl" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"ccl::first_non_comment_entry", ptr null }
@"var.ccl::first_non_comment_entry" = global ptr null
@clo.const.27 = internal constant { ptr, ptr } { ptr @"ccl::non_comment_entries", ptr null }
@"var.ccl::non_comment_entries" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_ccl, ptr null }]

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

define internal void @__dva_global_init_ccl() #1 {
entry:
  store ptr @clo.const, ptr @"var.ccl::doc_new", align 8
  store ptr @clo.const.1, ptr @"var.ccl::entry_new_str", align 8
  store ptr @clo.const.2, ptr @"var.ccl::entry_new_block", align 8
  store ptr @clo.const.3, ptr @"var.ccl::is_space", align 8
  store ptr @clo.const.4, ptr @"var.ccl::trim_left_idx", align 8
  store ptr @clo.const.5, ptr @"var.ccl::trim_right_idx", align 8
  store ptr @clo.const.6, ptr @"var.ccl::trim_str", align 8
  store ptr @clo.const.7, ptr @"var.ccl::find_char_idx", align 8
  store ptr @clo.const.8, ptr @"var.ccl::find_first_eq", align 8
  store ptr @clo.const.9, ptr @"var.ccl::sort_strings", align 8
  store ptr @clo.const.10, ptr @"var.ccl::ccl_error", align 8
  store ptr @clo.const.11, ptr @"var.ccl::has", align 8
  store ptr @clo.const.12, ptr @"var.ccl::count", align 8
  store ptr @clo.const.13, ptr @"var.ccl::get_entry", align 8
  store ptr @clo.const.14, ptr @"var.ccl::get", align 8
  store ptr @clo.const.15, ptr @"var.ccl::get_section", align 8
  store ptr @clo.const.16, ptr @"var.ccl::get_list", align 8
  store ptr @clo.const.17, ptr @"var.ccl::entries_for", align 8
  store ptr @clo.const.18, ptr @"var.ccl::split_raw_lines", align 8
  store ptr @clo.const.19, ptr @"var.ccl::parse_block_from", align 8
  store ptr @clo.const.20, ptr @"var.ccl::parse", align 8
  store ptr @clo.const.21, ptr @"var.ccl::parse_file", align 8
  store ptr @clo.const.22, ptr @"var.ccl::has_newline", align 8
  store ptr @clo.const.23, ptr @"var.ccl::append_multiline_str", align 8
  store ptr @clo.const.24, ptr @"var.ccl::serialize_doc_indent", align 8
  store ptr @clo.const.25, ptr @"var.ccl::to_ccl", align 8
  store ptr @clo.const.26, ptr @"var.ccl::first_non_comment_entry", align 8
  store ptr @clo.const.27, ptr @"var.ccl::non_comment_entries", align 8
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

define ptr @"ccl::doc_new"() #1 {
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
  ret ptr %a.new
}

define ptr @"ccl::entry_new_str"(ptr %0, ptr %1, i64 %2, i64 %3) #1 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.k = alloca ptr, align 8
  store ptr %0, ptr %var.k, align 8
  store ptr %1, ptr %var.s, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.k, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load1 = load ptr, ptr %var.s, align 8
  store ptr %var.load1, ptr %pay.gep, align 8
  %var.load2 = load i64, ptr %var.line, align 8
  %var.load3 = load i64, ptr %var.col, align 8
  %arena.cur4 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load, ptr %rec.fld, align 8
  %rec.fld5 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %enum.alloc, ptr %rec.fld5, align 8
  %rec.fld6 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load2, ptr %rec.fld6, align 8
  %rec.fld7 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load3, ptr %rec.fld7, align 8
  ret ptr %rec.alloc
}

define ptr @"ccl::entry_new_block"(ptr %0, ptr %1, i64 %2, i64 %3) #1 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.doc = alloca ptr, align 8
  %var.k = alloca ptr, align 8
  store ptr %0, ptr %var.k, align 8
  store ptr %1, ptr %var.doc, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.k, align 8
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load1 = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = call ptr @dva_arena_current()
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create3, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  store ptr %a.load2, ptr %pay.gep, align 8
  %var.load5 = load i64, ptr %var.line, align 8
  %var.load6 = load i64, ptr %var.col, align 8
  %arena.cur7 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load, ptr %rec.fld, align 8
  %rec.fld8 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %enum.alloc, ptr %rec.fld8, align 8
  %rec.fld9 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load5, ptr %rec.fld9, align 8
  %rec.fld10 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load6, ptr %rec.fld10, align 8
  ret ptr %rec.alloc
}

define i1 @"ccl::is_space"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %cmptmp = icmp eq i64 %var.load, 32
  br i1 %cmptmp, label %or.72.then, label %or.72.else

or.72.then:                                       ; preds = %entry
  br label %or.72.exit

or.72.else:                                       ; preds = %entry
  %var.load1 = load i64, ptr %var.c, align 8
  %cmptmp2 = icmp eq i64 %var.load1, 9
  br label %or.72.exit

or.72.exit:                                       ; preds = %or.72.else, %or.72.then
  %or.72.phi = phi i1 [ %cmptmp, %or.72.then ], [ %cmptmp2, %or.72.else ]
  ret i1 %or.72.phi
}

define i64 @"ccl::trim_left_idx"(ptr %0, i64 %1) #1 {
entry:
  %var.i = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.i, align 8
  %var.load = load i64, ptr %var.i, align 8
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
  %cmptmp = icmp slt i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %and.73.then, label %and.73.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.73.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

and.73.else:                                      ; preds = %str_ok
  br label %and.73.exit

and.73.exit:                                      ; preds = %and.73.else, %idx_ok
  %and.73.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp, %and.73.else ]
  br i1 %and.73.phi, label %choice.then, label %choice.else

str_gen_check9:                                   ; preds = %and.73.then
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %and.73.then
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
  %call.res = call i1 @"ccl::is_space"(i64 %s.byte.val)
  br label %and.73.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %and.73.exit
  %var.load16 = load ptr, ptr %var.s, align 8
  %var.load17 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load17, 1
  %call.res18 = call i64 @"ccl::trim_left_idx"(ptr %var.load16, i64 %addtmp)
  br label %choice.exit

choice.else:                                      ; preds = %and.73.exit
  %var.load19 = load i64, ptr %var.i, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %call.res18, %choice.then ], [ %var.load19, %choice.else ]
  ret i64 %choice.res
}

define i64 @"ccl::trim_right_idx"(ptr %0, i64 %1) #1 {
entry:
  %var.i = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.i, align 8
  %var.load = load i64, ptr %var.i, align 8
  %cmptmp = icmp sgt i64 %var.load, 0
  br i1 %cmptmp, label %and.74.then, label %and.74.else

and.74.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %s.read.len2 = load i64, ptr %s.read.len, align 8
  %s.read.len3 = and i64 %s.read.len2, 281474976710655
  %str.tag = lshr i64 %s.read.len2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

and.74.else:                                      ; preds = %entry
  br label %and.74.exit

and.74.exit:                                      ; preds = %and.74.else, %or.76.exit
  %and.74.phi = phi i1 [ %or.76.phi, %or.76.exit ], [ %cmptmp, %and.74.else ]
  br i1 %and.74.phi, label %choice.then, label %choice.else

str_gen_check:                                    ; preds = %and.74.then
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %and.74.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %s.read.data4 = load ptr, ptr %s.read.data, align 8
  %var.load5 = load i64, ptr %var.i, align 8
  %subtmp = sub i64 %var.load5, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

idx_big_check:                                    ; preds = %str_ok
  %idx.big = icmp sge i64 %subtmp, %s.read.len3
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data4, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"ccl::is_space"(i64 %s.byte.val)
  br i1 %call.res, label %or.75.then, label %or.75.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

or.75.then:                                       ; preds = %idx_ok
  br label %or.75.exit

or.75.else:                                       ; preds = %idx_ok
  %var.load6 = load ptr, ptr %var.s, align 8
  %s.read.len7 = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len7, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %str.tag10 = lshr i64 %s.read.len8, 48
  %str.immortal11 = icmp eq i64 %str.tag10, 0
  br i1 %str.immortal11, label %str_ok13, label %str_gen_check12

or.75.exit:                                       ; preds = %idx_ok23, %or.75.then
  %or.75.phi = phi i1 [ %call.res, %or.75.then ], [ %cmptmp29, %idx_ok23 ]
  br i1 %or.75.phi, label %or.76.then, label %or.76.else

str_gen_check12:                                  ; preds = %or.75.else
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag10)
  br i1 %tag.valid16, label %str_ok13, label %str_stale14

str_ok13:                                         ; preds = %str_stale14, %str_gen_check12, %or.75.else
  %s.read.data17 = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %s.read.data18 = load ptr, ptr %s.read.data17, align 8
  %var.load19 = load i64, ptr %var.i, align 8
  %subtmp20 = sub i64 %var.load19, 1
  %idx.neg21 = icmp slt i64 %subtmp20, 0
  br i1 %idx.neg21, label %idx_oob24, label %idx_big_check22

str_stale14:                                      ; preds = %str_gen_check12
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok13

idx_big_check22:                                  ; preds = %str_ok13
  %idx.big25 = icmp sge i64 %subtmp20, %s.read.len9
  br i1 %idx.big25, label %idx_oob24, label %idx_ok23

idx_ok23:                                         ; preds = %idx_oob24, %idx_big_check22
  %s.byte.gep26 = getelementptr i8, ptr %s.read.data18, i64 %subtmp20
  %s.byte27 = load i8, ptr %s.byte.gep26, align 1
  %s.byte.val28 = zext i8 %s.byte27 to i64
  %cmptmp29 = icmp eq i64 %s.byte.val28, 13
  br label %or.75.exit

idx_oob24:                                        ; preds = %idx_big_check22, %str_ok13
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok23

or.76.then:                                       ; preds = %or.75.exit
  br label %or.76.exit

or.76.else:                                       ; preds = %or.75.exit
  %var.load30 = load ptr, ptr %var.s, align 8
  %s.read.len31 = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 0
  %s.read.len32 = load i64, ptr %s.read.len31, align 8
  %s.read.len33 = and i64 %s.read.len32, 281474976710655
  %str.tag34 = lshr i64 %s.read.len32, 48
  %str.immortal35 = icmp eq i64 %str.tag34, 0
  br i1 %str.immortal35, label %str_ok37, label %str_gen_check36

or.76.exit:                                       ; preds = %idx_ok47, %or.76.then
  %or.76.phi = phi i1 [ %or.75.phi, %or.76.then ], [ %cmptmp53, %idx_ok47 ]
  br label %and.74.exit

str_gen_check36:                                  ; preds = %or.76.else
  %arena.cur39 = call ptr @dva_arena_current()
  %tag.valid40 = call i1 @dva_arena_validate_tag(ptr %arena.cur39, i64 %str.tag34)
  br i1 %tag.valid40, label %str_ok37, label %str_stale38

str_ok37:                                         ; preds = %str_stale38, %str_gen_check36, %or.76.else
  %s.read.data41 = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 1
  %s.read.data42 = load ptr, ptr %s.read.data41, align 8
  %var.load43 = load i64, ptr %var.i, align 8
  %subtmp44 = sub i64 %var.load43, 1
  %idx.neg45 = icmp slt i64 %subtmp44, 0
  br i1 %idx.neg45, label %idx_oob48, label %idx_big_check46

str_stale38:                                      ; preds = %str_gen_check36
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok37

idx_big_check46:                                  ; preds = %str_ok37
  %idx.big49 = icmp sge i64 %subtmp44, %s.read.len33
  br i1 %idx.big49, label %idx_oob48, label %idx_ok47

idx_ok47:                                         ; preds = %idx_oob48, %idx_big_check46
  %s.byte.gep50 = getelementptr i8, ptr %s.read.data42, i64 %subtmp44
  %s.byte51 = load i8, ptr %s.byte.gep50, align 1
  %s.byte.val52 = zext i8 %s.byte51 to i64
  %cmptmp53 = icmp eq i64 %s.byte.val52, 10
  br label %or.76.exit

idx_oob48:                                        ; preds = %idx_big_check46, %str_ok37
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok47

choice.then:                                      ; preds = %and.74.exit
  %var.load54 = load ptr, ptr %var.s, align 8
  %var.load55 = load i64, ptr %var.i, align 8
  %subtmp56 = sub i64 %var.load55, 1
  %call.res57 = call i64 @"ccl::trim_right_idx"(ptr %var.load54, i64 %subtmp56)
  br label %choice.exit

choice.else:                                      ; preds = %and.74.exit
  %var.load58 = load i64, ptr %var.i, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %call.res57, %choice.then ], [ %var.load58, %choice.else ]
  ret i64 %choice.res
}

define ptr @"ccl::trim_str"(ptr %0) #1 {
entry:
  %var.end = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  br label %choice.exit

choice.else:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.s, align 8
  %call.res = call i64 @"ccl::trim_left_idx"(ptr %var.load4, i64 0)
  store i64 %call.res, ptr %var.start, align 8
  %var.load5 = load i64, ptr %var.start, align 8
  %var.load6 = load i64, ptr %var.len, align 8
  %cmptmp7 = icmp sge i64 %var.load5, %var.load6
  br i1 %cmptmp7, label %choice.then8, label %choice.else9

choice.exit:                                      ; preds = %choice.exit10, %choice.then
  %choice.res35 = phi ptr [ @str.0.struct, %choice.then ], [ %choice.res34, %choice.exit10 ]
  ret ptr %choice.res35

choice.then8:                                     ; preds = %choice.else
  br label %choice.exit10

choice.else9:                                     ; preds = %choice.else
  %var.load11 = load ptr, ptr %var.s, align 8
  %var.load12 = load i64, ptr %var.len, align 8
  %call.res13 = call i64 @"ccl::trim_right_idx"(ptr %var.load11, i64 %var.load12)
  store i64 %call.res13, ptr %var.end, align 8
  %var.load14 = load i64, ptr %var.end, align 8
  %var.load15 = load i64, ptr %var.start, align 8
  %cmptmp16 = icmp sle i64 %var.load14, %var.load15
  br i1 %cmptmp16, label %choice.then17, label %choice.else18

choice.exit10:                                    ; preds = %choice.exit19, %choice.then8
  %choice.res34 = phi ptr [ @str.0.struct, %choice.then8 ], [ %choice.res, %choice.exit19 ]
  br label %choice.exit

choice.then17:                                    ; preds = %choice.else9
  br label %choice.exit19

choice.else18:                                    ; preds = %choice.else9
  %var.load20 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %s.read.len21 = load i64, ptr %s.read.len, align 8
  %s.read.len22 = and i64 %s.read.len21, 281474976710655
  %str.tag23 = lshr i64 %s.read.len21, 48
  %str.immortal24 = icmp eq i64 %str.tag23, 0
  br i1 %str.immortal24, label %str_ok26, label %str_gen_check25

choice.exit19:                                    ; preds = %str_ok26, %choice.then17
  %choice.res = phi ptr [ @str.0.struct, %choice.then17 ], [ %str.view, %str_ok26 ]
  br label %choice.exit10

str_gen_check25:                                  ; preds = %choice.else18
  %arena.cur28 = call ptr @dva_arena_current()
  %tag.valid29 = call i1 @dva_arena_validate_tag(ptr %arena.cur28, i64 %str.tag23)
  br i1 %tag.valid29, label %str_ok26, label %str_stale27

str_ok26:                                         ; preds = %str_stale27, %str_gen_check25, %choice.else18
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %s.read.data30 = load ptr, ptr %s.read.data, align 8
  %var.load31 = load i64, ptr %var.start, align 8
  %var.load32 = load i64, ptr %var.end, align 8
  %start.is_neg = icmp slt i64 %var.load31, 0
  %rel.start = add i64 %s.read.len22, %var.load31
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load31
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len22
  %final.start = select i1 %start.gt.len, i64 %s.read.len22, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load32, 0
  %rel.end = add i64 %s.read.len22, %var.load32
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load32
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len22
  %final.end = select i1 %end.gt.len, i64 %s.read.len22, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data30, i64 %final.start
  %arena.cur33 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit19

str_stale27:                                      ; preds = %str_gen_check25
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok26
}

define i64 @"ccl::find_char_idx"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.i = alloca i64, align 8
  %var.ch = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.ch, align 8
  store i64 %2, ptr %var.i, align 8
  %var.load = load i64, ptr %var.i, align 8
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
  %cmptmp = icmp slt i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %choice.then, label %choice.else

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

choice.else:                                      ; preds = %str_ok
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit20
  %choice.res25 = phi i64 [ %choice.res, %choice.exit20 ], [ -1, %choice.else ]
  ret i64 %choice.res25

str_gen_check9:                                   ; preds = %choice.then
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %choice.then
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
  %var.load16 = load i64, ptr %var.ch, align 8
  %cmptmp17 = icmp eq i64 %s.byte.val, %var.load16
  br i1 %cmptmp17, label %choice.then18, label %choice.else19

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then18:                                    ; preds = %idx_ok
  %var.load21 = load i64, ptr %var.i, align 8
  br label %choice.exit20

choice.else19:                                    ; preds = %idx_ok
  %var.load22 = load ptr, ptr %var.s, align 8
  %var.load23 = load i64, ptr %var.ch, align 8
  %var.load24 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load24, 1
  %call.res = call i64 @"ccl::find_char_idx"(ptr %var.load22, i64 %var.load23, i64 %addtmp)
  br label %choice.exit20

choice.exit20:                                    ; preds = %choice.else19, %choice.then18
  %choice.res = phi i64 [ %var.load21, %choice.then18 ], [ %call.res, %choice.else19 ]
  br label %choice.exit
}

define i64 @"ccl::find_first_eq"(ptr %0) #1 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %call.res = call i64 @"ccl::find_char_idx"(ptr %var.load, i64 61, i64 0)
  ret i64 %call.res
}

define ptr @"ccl::sort_strings"(ptr %0) #1 {
entry:
  %var._299 = alloca ptr, align 8
  %var._298 = alloca ptr, align 8
  %var._297 = alloca ptr, align 8
  %var._218 = alloca ptr, align 8
  %var._217 = alloca ptr, align 8
  %var._216 = alloca ptr, align 8
  %var.prev = alloca ptr, align 8
  %var._166 = alloca ptr, align 8
  %var._163 = alloca ptr, align 8
  %var._97 = alloca i64, align 8
  %var._i96 = alloca i64, align 8
  %loop.step.79 = alloca i64, align 8
  %loop.idx.79 = alloca i64, align 8
  %"var.j'" = alloca i64, align 8
  %var.key = alloca ptr, align 8
  %var._92 = alloca ptr, align 8
  %var._89 = alloca ptr, align 8
  %var._55 = alloca i64, align 8
  %var._i54 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.78 = alloca i64, align 8
  %loop.idx.78 = alloca i64, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %loop.step.77 = alloca i64, align 8
  %loop.idx.77 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var.n = alloca i64, align 8
  %var.arr = alloca ptr, align 8
  store ptr %0, ptr %var.arr, align 8
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
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query3 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query3, ptr %var.n, align 8
  %var.load4 = load i64, ptr %var.n, align 8
  %cmptmp = icmp slt i64 %var.load4, 2
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.after
  %var.load5 = load ptr, ptr %var.arr, align 8
  %a.load6 = load ptr, ptr %var.arr, align 8
  %a.null7 = icmp eq ptr %a.load6, null
  br i1 %a.null7, label %a.create8, label %a.after9

choice.else:                                      ; preds = %a.after
  store ptr null, ptr %var.out, align 8
  %var.load18 = load ptr, ptr %var.arr, align 8
  %a.load19 = load ptr, ptr %var.arr, align 8
  %a.null20 = icmp eq ptr %a.load19, null
  br i1 %a.null20, label %a.create21, label %a.after22

choice.exit:                                      ; preds = %a.after350, %a.after9
  %choice.res359 = phi ptr [ %a.load217, %a.after9 ], [ %a.load2358, %a.after350 ]
  ret ptr %choice.res359

a.create8:                                        ; preds = %choice.then
  %arena.cur10 = call ptr @dva_arena_current()
  %a.create11 = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 24)
  %arena.cur12 = call ptr @dva_arena_current()
  %a.buf13 = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 128)
  %a.len.gep14 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create11, i32 0, i32 0
  store i64 0, ptr %a.len.gep14, align 8
  %a.data.gep15 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create11, i32 0, i32 1
  store ptr %a.buf13, ptr %a.data.gep15, align 8
  %a.cap.gep16 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create11, i32 0, i32 2
  store i64 16, ptr %a.cap.gep16, align 8
  store ptr %a.create11, ptr %var.arr, align 8
  br label %a.after9

a.after9:                                         ; preds = %a.create8, %choice.then
  %a.load217 = load ptr, ptr %var.arr, align 8
  br label %choice.exit

a.create21:                                       ; preds = %choice.else
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
  store ptr %a.create24, ptr %var.arr, align 8
  br label %a.after22

a.after22:                                        ; preds = %a.create21, %choice.else
  %a.load230 = load ptr, ptr %var.arr, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load230, i32 0, i32 0
  %arr.cycle.len31 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load230, i32 0, i32 1
  %arr.cycle.data32 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.77, align 8
  br label %loop.header.77

loop.header.77:                                   ; preds = %loop.latch.77, %a.after22
  %counter.load = load i64, ptr %loop.idx.77, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len31
  br i1 %loop.cond, label %loop.body.77, label %loop.exit.nat.77

loop.body.77:                                     ; preds = %loop.header.77
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.77, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data32, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.s, align 8
  %var.load33 = load ptr, ptr %var.s, align 8
  %a.load34 = load ptr, ptr %var.out, align 8
  %a.null35 = icmp eq ptr %a.load34, null
  br i1 %a.null35, label %a.create36, label %a.after37

loop.exit.nat.77:                                 ; preds = %loop.header.77
  br label %loop.exit.77

loop.latch.77:                                    ; preds = %a.store
  %step.val = load i64, ptr %loop.step.77, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.77, align 8
  br label %loop.header.77

loop.exit.77:                                     ; preds = %loop.exit.nat.77
  %var.load50 = load i64, ptr %var.n, align 8
  store i64 1, ptr %loop.idx.78, align 8
  br label %loop.header.78

a.create36:                                       ; preds = %loop.body.77
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
  store ptr %a.create39, ptr %var.out, align 8
  br label %a.after37

a.after37:                                        ; preds = %a.create36, %loop.body.77
  %a.load245 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after37
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load245, i32 0, i32 0
  %a.len46 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load245, i32 0, i32 2
  %a.cap47 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len46, %a.cap47
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load245)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load245, i32 0, i32 1
  %a.cur.data48 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load245, i32 0, i32 0
  %a.cur.len49 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data48, i64 %a.cur.len49
  %slot.p2i = ptrtoint ptr %var.load33 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len49, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load245, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.77

loop.header.78:                                   ; preds = %loop.latch.78, %loop.exit.77
  %counter.load51 = load i64, ptr %loop.idx.78, align 8
  %loop.cond52 = icmp slt i64 %counter.load51, %var.load50
  br i1 %loop.cond52, label %loop.body.78, label %loop.exit.nat.78

loop.body.78:                                     ; preds = %loop.header.78
  %loop.rel.i53 = sub i64 %counter.load51, 1
  store i64 1, ptr %loop.step.78, align 8
  store i64 %loop.rel.i53, ptr %var._i54, align 8
  store i64 %counter.load51, ptr %var._55, align 8
  store i64 %counter.load51, ptr %var.i, align 8
  %var.load56 = load ptr, ptr %var.out, align 8
  %a.load57 = load ptr, ptr %var.out, align 8
  %a.null58 = icmp eq ptr %a.load57, null
  br i1 %a.null58, label %a.create59, label %a.after60

loop.exit.nat.78:                                 ; preds = %loop.header.78
  br label %loop.exit.78

loop.latch.78:                                    ; preds = %choice.exit296
  %step.val344 = load i64, ptr %loop.step.78, align 8
  %loop.next345 = add i64 %counter.load51, %step.val344
  store i64 %loop.next345, ptr %loop.idx.78, align 8
  br label %loop.header.78

loop.exit.78:                                     ; preds = %loop.exit.nat.78
  %var.load346 = load ptr, ptr %var.out, align 8
  %a.load347 = load ptr, ptr %var.out, align 8
  %a.null348 = icmp eq ptr %a.load347, null
  br i1 %a.null348, label %a.create349, label %a.after350

a.create59:                                       ; preds = %loop.body.78
  %arena.cur61 = call ptr @dva_arena_current()
  %a.create62 = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 24)
  %arena.cur63 = call ptr @dva_arena_current()
  %a.buf64 = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 128)
  %a.len.gep65 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create62, i32 0, i32 0
  store i64 0, ptr %a.len.gep65, align 8
  %a.data.gep66 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create62, i32 0, i32 1
  store ptr %a.buf64, ptr %a.data.gep66, align 8
  %a.cap.gep67 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create62, i32 0, i32 2
  store i64 16, ptr %a.cap.gep67, align 8
  store ptr %a.create62, ptr %var.out, align 8
  br label %a.after60

a.after60:                                        ; preds = %a.create59, %loop.body.78
  %a.load268 = load ptr, ptr %var.out, align 8
  %var.load69 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %a.load268, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after60
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load268, i32 0, i32 0
  %a.rd.len70 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load69, 0
  %a.rd.lt = icmp slt i64 %var.load69, %a.rd.len70
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load268, i32 0, i32 1
  %a.rd.data71 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data71, i64 %var.load69
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after60
  %arena.cur72 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 88, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 23, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur73 = call ptr @dva_arena_current()
  %err.alloc74 = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 56)
  %err.code.gep75 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc74, i32 0, i32 0
  store i64 4011, ptr %err.code.gep75, align 8
  %err.msg.gep76 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc74, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep76, align 8
  %err.file.gep77 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc74, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep77, align 8
  %err.line.gep78 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc74, i32 0, i32 3
  store i64 88, ptr %err.line.gep78, align 8
  %err.col.gep79 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc74, i32 0, i32 4
  store i64 23, ptr %err.col.gep79, align 8
  %err.ctx.gep80 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc74, i32 0, i32 5
  %err.ctx0.gep81 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep80, i32 0, i32 0
  store i64 %var.load69, ptr %err.ctx0.gep81, align 8
  %err.ctx1.gep82 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep80, i32 0, i32 1
  store i64 %a.rd.len70, ptr %err.ctx1.gep82, align 8
  %err.p2i83 = ptrtoint ptr %err.alloc74 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i83, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag84 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag84, label %choice.then85, label %choice.else86

choice.then85:                                    ; preds = %a.rd.done
  %ram.pay88 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay88 to ptr
  store ptr %pay.ptr, ptr %var._89, align 8
  br label %choice.exit87

choice.else86:                                    ; preds = %a.rd.done
  %ram.pay90 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr91 = inttoptr i64 %ram.pay90 to ptr
  store ptr %pay.ptr91, ptr %var._92, align 8
  br label %choice.exit87

choice.exit87:                                    ; preds = %choice.else86, %choice.then85
  %choice.res = phi ptr [ %pay.ptr, %choice.then85 ], [ @str.0.struct, %choice.else86 ]
  store ptr %choice.res, ptr %var.key, align 8
  %var.load93 = load i64, ptr %var.i, align 8
  store i64 %var.load93, ptr %"var.j'", align 8
  store i64 0, ptr %loop.idx.79, align 8
  %cycle.prev.u = load i64, ptr %var._55, align 8
  %cycle.prev.i = load i64, ptr %var._i54, align 8
  br label %loop.header.79

loop.header.79:                                   ; preds = %loop.latch.79, %choice.exit87
  %counter.load94 = load i64, ptr %loop.idx.79, align 8
  br label %loop.body.79

loop.body.79:                                     ; preds = %loop.header.79
  %loop.rel.i95 = sub i64 %counter.load94, 0
  store i64 1, ptr %loop.step.79, align 8
  store i64 %loop.rel.i95, ptr %var._i96, align 8
  store i64 %counter.load94, ptr %var._97, align 8
  %var.load98 = load i64, ptr %"var.j'", align 8
  %cmptmp99 = icmp sle i64 %var.load98, 0
  br i1 %cmptmp99, label %choice.then100, label %choice.exit101

loop.exit.nat.79:                                 ; No predecessors!
  br label %loop.exit.79

loop.latch.79:                                    ; preds = %choice.exit173
  %step.val240 = load i64, ptr %loop.step.79, align 8
  %loop.next241 = add i64 %counter.load94, %step.val240
  store i64 %loop.next241, ptr %loop.idx.79, align 8
  br label %loop.header.79

loop.exit.79:                                     ; preds = %choice.else172, %choice.then100, %loop.exit.nat.79
  store i64 %cycle.prev.u, ptr %var._55, align 8
  store i64 %cycle.prev.i, ptr %var._i54, align 8
  %var.load242 = load ptr, ptr %var.out, align 8
  %a.load243 = load ptr, ptr %var.out, align 8
  %a.null244 = icmp eq ptr %a.load243, null
  br i1 %a.null244, label %a.create245, label %a.after246

choice.then100:                                   ; preds = %loop.body.79
  br label %loop.exit.79

choice.exit101:                                   ; preds = %loop.body.79
  %var.load102 = load ptr, ptr %var.out, align 8
  %a.load103 = load ptr, ptr %var.out, align 8
  %a.null104 = icmp eq ptr %a.load103, null
  br i1 %a.null104, label %a.create105, label %a.after106

a.create105:                                      ; preds = %choice.exit101
  %arena.cur107 = call ptr @dva_arena_current()
  %a.create108 = call ptr @dva_arena_alloc(ptr %arena.cur107, i64 24)
  %arena.cur109 = call ptr @dva_arena_current()
  %a.buf110 = call ptr @dva_arena_alloc(ptr %arena.cur109, i64 128)
  %a.len.gep111 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create108, i32 0, i32 0
  store i64 0, ptr %a.len.gep111, align 8
  %a.data.gep112 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create108, i32 0, i32 1
  store ptr %a.buf110, ptr %a.data.gep112, align 8
  %a.cap.gep113 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create108, i32 0, i32 2
  store i64 16, ptr %a.cap.gep113, align 8
  store ptr %a.create108, ptr %var.out, align 8
  br label %a.after106

a.after106:                                       ; preds = %a.create105, %choice.exit101
  %a.load2114 = load ptr, ptr %var.out, align 8
  %var.load115 = load i64, ptr %"var.j'", align 8
  %subtmp = sub i64 %var.load115, 1
  %a.rd.nonnull116 = icmp ne ptr %a.load2114, null
  br i1 %a.rd.nonnull116, label %a.rd.check117, label %a.rd.err.null119

a.rd.check117:                                    ; preds = %a.after106
  %a.rd.len122 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2114, i32 0, i32 0
  %a.rd.len123 = load i64, ptr %a.rd.len122, align 8
  %a.rd.ge0124 = icmp sge i64 %subtmp, 0
  %a.rd.lt125 = icmp slt i64 %subtmp, %a.rd.len123
  %a.rd.bounds126 = and i1 %a.rd.ge0124, %a.rd.lt125
  br i1 %a.rd.bounds126, label %a.rd.ok118, label %a.rd.err.oob120

a.rd.ok118:                                       ; preds = %a.rd.check117
  %a.rd.data127 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2114, i32 0, i32 1
  %a.rd.data128 = load ptr, ptr %a.rd.data127, align 8
  %a.rd.elem.gep129 = getelementptr i64, ptr %a.rd.data128, i64 %subtmp
  %a.rd.elem130 = load i64, ptr %a.rd.elem.gep129, align 8
  br label %a.rd.done121

a.rd.err.null119:                                 ; preds = %a.after106
  %arena.cur131 = call ptr @dva_arena_current()
  %err.alloc132 = call ptr @dva_arena_alloc(ptr %arena.cur131, i64 56)
  %err.code.gep133 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc132, i32 0, i32 0
  store i64 4011, ptr %err.code.gep133, align 8
  %err.msg.gep134 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc132, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep134, align 8
  %err.file.gep135 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc132, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep135, align 8
  %err.line.gep136 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc132, i32 0, i32 3
  store i64 92, ptr %err.line.gep136, align 8
  %err.col.gep137 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc132, i32 0, i32 4
  store i64 32, ptr %err.col.gep137, align 8
  %err.ctx.gep138 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc132, i32 0, i32 5
  %err.ctx0.gep139 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep138, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep139, align 8
  %err.ctx1.gep140 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep138, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep140, align 8
  %err.p2i141 = ptrtoint ptr %err.alloc132 to i64
  br label %a.rd.done121

a.rd.err.oob120:                                  ; preds = %a.rd.check117
  %arena.cur142 = call ptr @dva_arena_current()
  %err.alloc143 = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 56)
  %err.code.gep144 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 0
  store i64 4011, ptr %err.code.gep144, align 8
  %err.msg.gep145 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep145, align 8
  %err.file.gep146 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep146, align 8
  %err.line.gep147 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 3
  store i64 92, ptr %err.line.gep147, align 8
  %err.col.gep148 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 4
  store i64 32, ptr %err.col.gep148, align 8
  %err.ctx.gep149 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 5
  %err.ctx0.gep150 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep149, i32 0, i32 0
  store i64 %subtmp, ptr %err.ctx0.gep150, align 8
  %err.ctx1.gep151 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep149, i32 0, i32 1
  store i64 %a.rd.len123, ptr %err.ctx1.gep151, align 8
  %err.p2i152 = ptrtoint ptr %err.alloc143 to i64
  br label %a.rd.done121

a.rd.done121:                                     ; preds = %a.rd.err.oob120, %a.rd.err.null119, %a.rd.ok118
  %a.rd.tag153 = phi i1 [ true, %a.rd.ok118 ], [ false, %a.rd.err.null119 ], [ false, %a.rd.err.oob120 ]
  %a.rd.pay154 = phi i64 [ %a.rd.elem130, %a.rd.ok118 ], [ %err.p2i141, %a.rd.err.null119 ], [ %err.p2i152, %a.rd.err.oob120 ]
  %ram.tag155 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag153, 0
  %ram.pay156 = insertvalue { i1, i64 } %ram.tag155, i64 %a.rd.pay154, 1
  %ram.tag157 = extractvalue { i1, i64 } %ram.pay156, 0
  br i1 %ram.tag157, label %choice.then158, label %choice.else159

choice.then158:                                   ; preds = %a.rd.done121
  %ram.pay161 = extractvalue { i1, i64 } %ram.pay156, 1
  %pay.ptr162 = inttoptr i64 %ram.pay161 to ptr
  store ptr %pay.ptr162, ptr %var._163, align 8
  br label %choice.exit160

choice.else159:                                   ; preds = %a.rd.done121
  %ram.pay164 = extractvalue { i1, i64 } %ram.pay156, 1
  %pay.ptr165 = inttoptr i64 %ram.pay164 to ptr
  store ptr %pay.ptr165, ptr %var._166, align 8
  br label %choice.exit160

choice.exit160:                                   ; preds = %choice.else159, %choice.then158
  %choice.res167 = phi ptr [ %pay.ptr162, %choice.then158 ], [ @str.0.struct, %choice.else159 ]
  store ptr %choice.res167, ptr %var.prev, align 8
  %var.load168 = load ptr, ptr %var.prev, align 8
  %var.load169 = load ptr, ptr %var.key, align 8
  %call.res = call i64 @"str::cmp"(ptr %var.load168, ptr %var.load169)
  %cmptmp170 = icmp sgt i64 %call.res, 0
  br i1 %cmptmp170, label %choice.then171, label %choice.else172

choice.then171:                                   ; preds = %choice.exit160
  %var.load174 = load ptr, ptr %var.out, align 8
  %a.load175 = load ptr, ptr %var.out, align 8
  %a.null176 = icmp eq ptr %a.load175, null
  br i1 %a.null176, label %a.create177, label %a.after178

choice.else172:                                   ; preds = %choice.exit160
  br label %loop.exit.79

choice.exit173:                                   ; preds = %choice.exit215
  br label %loop.latch.79

a.create177:                                      ; preds = %choice.then171
  %arena.cur179 = call ptr @dva_arena_current()
  %a.create180 = call ptr @dva_arena_alloc(ptr %arena.cur179, i64 24)
  %arena.cur181 = call ptr @dva_arena_current()
  %a.buf182 = call ptr @dva_arena_alloc(ptr %arena.cur181, i64 128)
  %a.len.gep183 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create180, i32 0, i32 0
  store i64 0, ptr %a.len.gep183, align 8
  %a.data.gep184 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create180, i32 0, i32 1
  store ptr %a.buf182, ptr %a.data.gep184, align 8
  %a.cap.gep185 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create180, i32 0, i32 2
  store i64 16, ptr %a.cap.gep185, align 8
  store ptr %a.create180, ptr %var.out, align 8
  br label %a.after178

a.after178:                                       ; preds = %a.create177, %choice.then171
  %a.load2186 = load ptr, ptr %var.out, align 8
  %var.load187 = load i64, ptr %"var.j'", align 8
  %var.load188 = load ptr, ptr %var.prev, align 8
  %slot.p2i189 = ptrtoint ptr %var.load188 to i64
  %a.wr.nonnull = icmp ne ptr %a.load2186, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after178
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2186, i32 0, i32 0
  %a.wr.len190 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load187, 0
  %a.wr.lt = icmp slt i64 %var.load187, %a.wr.len190
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2186, i32 0, i32 1
  %a.wr.data191 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep192 = getelementptr i64, ptr %a.wr.data191, i64 %var.load187
  store i64 %slot.p2i189, ptr %a.elem.gep192, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after178
  %arena.cur193 = call ptr @dva_arena_current()
  %err.alloc194 = call ptr @dva_arena_alloc(ptr %arena.cur193, i64 56)
  %err.code.gep195 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc194, i32 0, i32 0
  store i64 4011, ptr %err.code.gep195, align 8
  %err.msg.gep196 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc194, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep196, align 8
  %err.file.gep197 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc194, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep197, align 8
  %err.line.gep198 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc194, i32 0, i32 3
  store i64 0, ptr %err.line.gep198, align 8
  %err.col.gep199 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc194, i32 0, i32 4
  store i64 0, ptr %err.col.gep199, align 8
  %err.ctx.gep200 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc194, i32 0, i32 5
  %err.ctx0.gep201 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep200, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep201, align 8
  %err.ctx1.gep202 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep200, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep202, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur203 = call ptr @dva_arena_current()
  %err.alloc204 = call ptr @dva_arena_alloc(ptr %arena.cur203, i64 56)
  %err.code.gep205 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc204, i32 0, i32 0
  store i64 4011, ptr %err.code.gep205, align 8
  %err.msg.gep206 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc204, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep206, align 8
  %err.file.gep207 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc204, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep207, align 8
  %err.line.gep208 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc204, i32 0, i32 3
  store i64 0, ptr %err.line.gep208, align 8
  %err.col.gep209 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc204, i32 0, i32 4
  store i64 0, ptr %err.col.gep209, align 8
  %err.ctx.gep210 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc204, i32 0, i32 5
  %err.ctx0.gep211 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep210, i32 0, i32 0
  store i64 %var.load187, ptr %err.ctx0.gep211, align 8
  %err.ctx1.gep212 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep210, i32 0, i32 1
  store i64 %a.wr.len190, ptr %err.ctx1.gep212, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc194, %a.wr.err.null ], [ %err.alloc204, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then213, label %choice.else214

choice.then213:                                   ; preds = %a.wr.done
  br label %choice.exit215

choice.else214:                                   ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._216, align 8
  store ptr %a.wr.niche, ptr %var._217, align 8
  store ptr %a.wr.niche, ptr %var._218, align 8
  %err.code.gep219 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep219, align 8
  %err.msg.gep220 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep220, align 8
  %err.file.gep221 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep221, align 8
  %err.line.gep222 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep222, align 8
  %err.col.gep223 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep223, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len224 = load i64, ptr %err.msg.len, align 8
  %err.msg.len225 = and i64 %err.msg.len224, 281474976710655
  %str.tag = lshr i64 %err.msg.len224, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit215:                                   ; preds = %err.abort, %choice.then213
  %var.load238 = load i64, ptr %"var.j'", align 8
  %subtmp239 = sub i64 %var.load238, 1
  store i64 %subtmp239, ptr %"var.j'", align 8
  br label %choice.exit173

str_gen_check:                                    ; preds = %choice.else214
  %arena.cur226 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur226, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else214
  %err.msg.len32 = trunc i64 %err.msg.len225 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data227 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len228 = load i64, ptr %err.file.len, align 8
  %err.file.len229 = and i64 %err.file.len228, 281474976710655
  %str.tag230 = lshr i64 %err.file.len228, 48
  %str.immortal231 = icmp eq i64 %str.tag230, 0
  br i1 %str.immortal231, label %str_ok233, label %str_gen_check232

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check232:                                 ; preds = %str_ok
  %arena.cur235 = call ptr @dva_arena_current()
  %tag.valid236 = call i1 @dva_arena_validate_tag(ptr %arena.cur235, i64 %str.tag230)
  br i1 %tag.valid236, label %str_ok233, label %str_stale234

str_ok233:                                        ; preds = %str_stale234, %str_gen_check232, %str_ok
  %err.file.len32 = trunc i64 %err.file.len229 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data237 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale234:                                     ; preds = %str_gen_check232
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok233

err.thread:                                       ; preds = %str_ok233
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok233
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data227, i32 %err.file.len32, ptr %err.file.data237, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit215

a.create245:                                      ; preds = %loop.exit.79
  %arena.cur247 = call ptr @dva_arena_current()
  %a.create248 = call ptr @dva_arena_alloc(ptr %arena.cur247, i64 24)
  %arena.cur249 = call ptr @dva_arena_current()
  %a.buf250 = call ptr @dva_arena_alloc(ptr %arena.cur249, i64 128)
  %a.len.gep251 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create248, i32 0, i32 0
  store i64 0, ptr %a.len.gep251, align 8
  %a.data.gep252 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create248, i32 0, i32 1
  store ptr %a.buf250, ptr %a.data.gep252, align 8
  %a.cap.gep253 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create248, i32 0, i32 2
  store i64 16, ptr %a.cap.gep253, align 8
  store ptr %a.create248, ptr %var.out, align 8
  br label %a.after246

a.after246:                                       ; preds = %a.create245, %loop.exit.79
  %a.load2254 = load ptr, ptr %var.out, align 8
  %var.load255 = load i64, ptr %"var.j'", align 8
  %var.load256 = load ptr, ptr %var.key, align 8
  %slot.p2i257 = ptrtoint ptr %var.load256 to i64
  %a.wr.nonnull258 = icmp ne ptr %a.load2254, null
  br i1 %a.wr.nonnull258, label %a.wr.check259, label %a.wr.err.null261

a.wr.check259:                                    ; preds = %a.after246
  %a.wr.len264 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2254, i32 0, i32 0
  %a.wr.len265 = load i64, ptr %a.wr.len264, align 8
  %a.wr.ge0266 = icmp sge i64 %var.load255, 0
  %a.wr.lt267 = icmp slt i64 %var.load255, %a.wr.len265
  %a.wr.bounds268 = and i1 %a.wr.ge0266, %a.wr.lt267
  br i1 %a.wr.bounds268, label %a.wr.ok260, label %a.wr.err.oob262

a.wr.ok260:                                       ; preds = %a.wr.check259
  %a.wr.data269 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2254, i32 0, i32 1
  %a.wr.data270 = load ptr, ptr %a.wr.data269, align 8
  %a.elem.gep271 = getelementptr i64, ptr %a.wr.data270, i64 %var.load255
  store i64 %slot.p2i257, ptr %a.elem.gep271, align 8
  br label %a.wr.done263

a.wr.err.null261:                                 ; preds = %a.after246
  %arena.cur272 = call ptr @dva_arena_current()
  %err.alloc273 = call ptr @dva_arena_alloc(ptr %arena.cur272, i64 56)
  %err.code.gep274 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc273, i32 0, i32 0
  store i64 4011, ptr %err.code.gep274, align 8
  %err.msg.gep275 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc273, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep275, align 8
  %err.file.gep276 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc273, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep276, align 8
  %err.line.gep277 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc273, i32 0, i32 3
  store i64 0, ptr %err.line.gep277, align 8
  %err.col.gep278 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc273, i32 0, i32 4
  store i64 0, ptr %err.col.gep278, align 8
  %err.ctx.gep279 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc273, i32 0, i32 5
  %err.ctx0.gep280 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep279, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep280, align 8
  %err.ctx1.gep281 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep279, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep281, align 8
  br label %a.wr.done263

a.wr.err.oob262:                                  ; preds = %a.wr.check259
  %arena.cur282 = call ptr @dva_arena_current()
  %err.alloc283 = call ptr @dva_arena_alloc(ptr %arena.cur282, i64 56)
  %err.code.gep284 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc283, i32 0, i32 0
  store i64 4011, ptr %err.code.gep284, align 8
  %err.msg.gep285 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc283, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep285, align 8
  %err.file.gep286 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc283, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep286, align 8
  %err.line.gep287 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc283, i32 0, i32 3
  store i64 0, ptr %err.line.gep287, align 8
  %err.col.gep288 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc283, i32 0, i32 4
  store i64 0, ptr %err.col.gep288, align 8
  %err.ctx.gep289 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc283, i32 0, i32 5
  %err.ctx0.gep290 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep289, i32 0, i32 0
  store i64 %var.load255, ptr %err.ctx0.gep290, align 8
  %err.ctx1.gep291 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep289, i32 0, i32 1
  store i64 %a.wr.len265, ptr %err.ctx1.gep291, align 8
  br label %a.wr.done263

a.wr.done263:                                     ; preds = %a.wr.err.oob262, %a.wr.err.null261, %a.wr.ok260
  %a.wr.niche292 = phi ptr [ null, %a.wr.ok260 ], [ %err.alloc273, %a.wr.err.null261 ], [ %err.alloc283, %a.wr.err.oob262 ]
  %niche.eq.null293 = icmp eq ptr %a.wr.niche292, null
  br i1 %niche.eq.null293, label %choice.then294, label %choice.else295

choice.then294:                                   ; preds = %a.wr.done263
  br label %choice.exit296

choice.else295:                                   ; preds = %a.wr.done263
  store ptr %a.wr.niche292, ptr %var._297, align 8
  store ptr %a.wr.niche292, ptr %var._298, align 8
  store ptr %a.wr.niche292, ptr %var._299, align 8
  %err.code.gep300 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche292, i32 0, i32 0
  %err.code301 = load i64, ptr %err.code.gep300, align 8
  %err.msg.gep302 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche292, i32 0, i32 1
  %err.msg.struct303 = load ptr, ptr %err.msg.gep302, align 8
  %err.file.gep304 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche292, i32 0, i32 2
  %err.file.struct305 = load ptr, ptr %err.file.gep304, align 8
  %err.line.gep306 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche292, i32 0, i32 3
  %err.line307 = load i64, ptr %err.line.gep306, align 8
  %err.col.gep308 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche292, i32 0, i32 4
  %err.col309 = load i64, ptr %err.col.gep308, align 8
  %err.msg.len310 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct303, i32 0, i32 0
  %err.msg.len311 = load i64, ptr %err.msg.len310, align 8
  %err.msg.len312 = and i64 %err.msg.len311, 281474976710655
  %str.tag313 = lshr i64 %err.msg.len311, 48
  %str.immortal314 = icmp eq i64 %str.tag313, 0
  br i1 %str.immortal314, label %str_ok316, label %str_gen_check315

choice.exit296:                                   ; preds = %err.abort343, %choice.then294
  br label %loop.latch.78

str_gen_check315:                                 ; preds = %choice.else295
  %arena.cur318 = call ptr @dva_arena_current()
  %tag.valid319 = call i1 @dva_arena_validate_tag(ptr %arena.cur318, i64 %str.tag313)
  br i1 %tag.valid319, label %str_ok316, label %str_stale317

str_ok316:                                        ; preds = %str_stale317, %str_gen_check315, %choice.else295
  %err.msg.len32320 = trunc i64 %err.msg.len312 to i32
  %err.msg.data321 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct303, i32 0, i32 1
  %err.msg.data322 = load ptr, ptr %err.msg.data321, align 8
  %err.file.len323 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct305, i32 0, i32 0
  %err.file.len324 = load i64, ptr %err.file.len323, align 8
  %err.file.len325 = and i64 %err.file.len324, 281474976710655
  %str.tag326 = lshr i64 %err.file.len324, 48
  %str.immortal327 = icmp eq i64 %str.tag326, 0
  br i1 %str.immortal327, label %str_ok329, label %str_gen_check328

str_stale317:                                     ; preds = %str_gen_check315
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok316

str_gen_check328:                                 ; preds = %str_ok316
  %arena.cur331 = call ptr @dva_arena_current()
  %tag.valid332 = call i1 @dva_arena_validate_tag(ptr %arena.cur331, i64 %str.tag326)
  br i1 %tag.valid332, label %str_ok329, label %str_stale330

str_ok329:                                        ; preds = %str_stale330, %str_gen_check328, %str_ok316
  %err.file.len32333 = trunc i64 %err.file.len325 to i32
  %err.file.data334 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct305, i32 0, i32 1
  %err.file.data335 = load ptr, ptr %err.file.data334, align 8
  %err.thread.rec336 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread337 = icmp ne ptr %err.thread.rec336, null
  br i1 %err.is.thread337, label %err.thread338, label %err.normal339

str_stale330:                                     ; preds = %str_gen_check328
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok329

err.thread338:                                    ; preds = %str_ok329
  %err.haserr.gep340 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec336, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep340, align 8
  %err.err.gep341 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec336, i32 0, i32 7
  store ptr %a.wr.niche292, ptr %err.err.gep341, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal339:                                    ; preds = %str_ok329
  %err.panic.printf342 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code301, i32 %err.msg.len32320, ptr %err.msg.data322, i32 %err.file.len32333, ptr %err.file.data335, i64 %err.line307, i64 %err.col309)
  call void @exit(i32 1)
  unreachable

err.abort343:                                     ; No predecessors!
  br label %choice.exit296

a.create349:                                      ; preds = %loop.exit.78
  %arena.cur351 = call ptr @dva_arena_current()
  %a.create352 = call ptr @dva_arena_alloc(ptr %arena.cur351, i64 24)
  %arena.cur353 = call ptr @dva_arena_current()
  %a.buf354 = call ptr @dva_arena_alloc(ptr %arena.cur353, i64 128)
  %a.len.gep355 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create352, i32 0, i32 0
  store i64 0, ptr %a.len.gep355, align 8
  %a.data.gep356 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create352, i32 0, i32 1
  store ptr %a.buf354, ptr %a.data.gep356, align 8
  %a.cap.gep357 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create352, i32 0, i32 2
  store i64 16, ptr %a.cap.gep357, align 8
  store ptr %a.create352, ptr %var.out, align 8
  br label %a.after350

a.after350:                                       ; preds = %a.create349, %loop.exit.78
  %a.load2358 = load ptr, ptr %var.out, align 8
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i64 @"str::cmp"(ptr, ptr) #1

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define ptr @"ccl::ccl_error"(ptr %0, ptr %1, i64 %2, i64 %3) #1 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.msg = alloca ptr, align 8
  %var.file = alloca ptr, align 8
  store ptr %0, ptr %var.file, align 8
  store ptr %1, ptr %var.msg, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  %arena.cur = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  %var.load = load ptr, ptr %var.msg, align 8
  %var.load1 = load ptr, ptr %var.file, align 8
  %var.load2 = load i64, ptr %var.line, align 8
  %var.load3 = load i64, ptr %var.col, align 8
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 5050, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr %var.load, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr %var.load1, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 %var.load2, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 %var.load3, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %arena.cur4 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld5 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld5, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  ret ptr %err.alloc
}

define i1 @"ccl::has"(ptr %0, ptr %1) #1 {
entry:
  %var.e = alloca ptr, align 8
  %var._37 = alloca ptr, align 8
  %var._34 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.80 = alloca i64, align 8
  %loop.idx.80 = alloca i64, align 8
  %"var.found'" = alloca i1, align 1
  %var.key = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  store ptr %1, ptr %var.key, align 8
  store i1 false, ptr %"var.found'", align 1
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query3 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.80, align 8
  br label %loop.header.80

loop.header.80:                                   ; preds = %loop.latch.80, %a.after
  %counter.load = load i64, ptr %loop.idx.80, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query3
  br i1 %loop.cond, label %loop.body.80, label %loop.exit.nat.80

loop.body.80:                                     ; preds = %loop.header.80
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.80, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load4 = load ptr, ptr %var.doc, align 8
  %a.load5 = load ptr, ptr %var.doc, align 8
  %a.null6 = icmp eq ptr %a.load5, null
  br i1 %a.null6, label %a.create7, label %a.after8

loop.exit.nat.80:                                 ; preds = %loop.header.80
  br label %loop.exit.80

loop.latch.80:                                    ; preds = %choice.exit60
  %step.val = load i64, ptr %loop.step.80, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.80, align 8
  br label %loop.header.80

loop.exit.80:                                     ; preds = %choice.then59, %loop.exit.nat.80
  %var.load61 = load i1, ptr %"var.found'", align 1
  ret i1 %var.load61

a.create7:                                        ; preds = %loop.body.80
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
  store ptr %a.create10, ptr %var.doc, align 8
  br label %a.after8

a.after8:                                         ; preds = %a.create7, %loop.body.80
  %a.load216 = load ptr, ptr %var.doc, align 8
  %var.load17 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %a.load216, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after8
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load216, i32 0, i32 0
  %a.rd.len18 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load17, 0
  %a.rd.lt = icmp slt i64 %var.load17, %a.rd.len18
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load216, i32 0, i32 1
  %a.rd.data19 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data19, i64 %var.load17
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after8
  %arena.cur20 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 113, ptr %err.line.gep, align 8
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
  %arena.cur21 = call ptr @dva_arena_current()
  %err.alloc22 = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 56)
  %err.code.gep23 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 0
  store i64 4011, ptr %err.code.gep23, align 8
  %err.msg.gep24 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep24, align 8
  %err.file.gep25 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep25, align 8
  %err.line.gep26 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 3
  store i64 113, ptr %err.line.gep26, align 8
  %err.col.gep27 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 4
  store i64 18, ptr %err.col.gep27, align 8
  %err.ctx.gep28 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 5
  %err.ctx0.gep29 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep28, i32 0, i32 0
  store i64 %var.load17, ptr %err.ctx0.gep29, align 8
  %err.ctx1.gep30 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep28, i32 0, i32 1
  store i64 %a.rd.len18, ptr %err.ctx1.gep30, align 8
  %err.p2i31 = ptrtoint ptr %err.alloc22 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i31, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag32 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag32, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %ram.pay33 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay33 to ptr
  store ptr %pay.ptr, ptr %var._34, align 8
  br label %choice.exit

choice.else:                                      ; preds = %a.rd.done
  %ram.pay35 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr36 = inttoptr i64 %ram.pay35 to ptr
  store ptr %pay.ptr36, ptr %var._37, align 8
  %arena.cur38 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr @str.0.struct, ptr %pay.gep, align 8
  %arena.cur39 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr @str.0.struct, ptr %rec.fld, align 8
  %rec.fld40 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %enum.alloc, ptr %rec.fld40, align 8
  %rec.fld41 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld41, align 8
  %rec.fld42 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 0, ptr %rec.fld42, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ %rec.alloc, %choice.else ]
  store ptr %choice.res, ptr %var.e, align 8
  %var.load43 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load43, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load44 = load ptr, ptr %var.key, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len45 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len46 = and i64 %eq.lhs.len45, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len45, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit
  %arena.cur47 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur47, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load44, i32 0, i32 0
  %eq.rhs.len48 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len49 = and i64 %eq.rhs.len48, 281474976710655
  %str.tag50 = lshr i64 %eq.rhs.len48, 48
  %str.immortal51 = icmp eq i64 %str.tag50, 0
  br i1 %str.immortal51, label %str_ok53, label %str_gen_check52

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check52:                                  ; preds = %str_ok
  %arena.cur55 = call ptr @dva_arena_current()
  %tag.valid56 = call i1 @dva_arena_validate_tag(ptr %arena.cur55, i64 %str.tag50)
  br i1 %tag.valid56, label %str_ok53, label %str_stale54

str_ok53:                                         ; preds = %str_stale54, %str_gen_check52, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len46, %eq.rhs.len49
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale54:                                      ; preds = %str_gen_check52
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok53

str.eq.then:                                      ; preds = %str_ok53
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data57 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load44, i32 0, i32 1
  %eq.rhs.data58 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data57, ptr %eq.rhs.data58, i64 %eq.lhs.len46)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok53
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then59, label %choice.exit60

choice.then59:                                    ; preds = %str.eq.merge
  store i1 true, ptr %"var.found'", align 1
  br label %loop.exit.80

choice.exit60:                                    ; preds = %str.eq.merge
  br label %loop.latch.80
}

declare i32 @memcmp(ptr, ptr, i64)

define i64 @"ccl::count"(ptr %0, ptr %1) #1 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.81 = alloca i64, align 8
  %loop.idx.81 = alloca i64, align 8
  %"var.c'" = alloca i64, align 8
  %var.key = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  store ptr %1, ptr %var.key, align 8
  store i64 0, ptr %"var.c'", align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len3 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.81, align 8
  br label %loop.header.81

loop.header.81:                                   ; preds = %loop.latch.81, %a.after
  %counter.load = load i64, ptr %loop.idx.81, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.81, label %loop.exit.nat.81

loop.body.81:                                     ; preds = %loop.header.81
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.81, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load5 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load5, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load6 = load ptr, ptr %var.key, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len7 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len8 = and i64 %eq.lhs.len7, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len7, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.81:                                 ; preds = %loop.header.81
  br label %loop.exit.81

loop.latch.81:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.81, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.81, align 8
  br label %loop.header.81

loop.exit.81:                                     ; preds = %loop.exit.nat.81
  %var.load22 = load i64, ptr %"var.c'", align 8
  ret i64 %var.load22

str_gen_check:                                    ; preds = %loop.body.81
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.81
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
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
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
  %var.load21 = load i64, ptr %"var.c'", align 8
  %addtmp = add i64 %var.load21, 1
  store i64 %addtmp, ptr %"var.c'", align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %str.eq.merge
  br label %loop.latch.81
}

define ptr @"ccl::get_entry"(ptr %0, ptr %1) #1 {
entry:
  %var.e = alloca ptr, align 8
  %var._37 = alloca ptr, align 8
  %var._34 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.82 = alloca i64, align 8
  %loop.idx.82 = alloca i64, align 8
  %"var.res'" = alloca ptr, align 8
  %var.key = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  store ptr %1, ptr %var.key, align 8
  store ptr null, ptr %"var.res'", align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query3 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.82, align 8
  br label %loop.header.82

loop.header.82:                                   ; preds = %loop.latch.82, %a.after
  %counter.load = load i64, ptr %loop.idx.82, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query3
  br i1 %loop.cond, label %loop.body.82, label %loop.exit.nat.82

loop.body.82:                                     ; preds = %loop.header.82
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.82, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load4 = load ptr, ptr %var.doc, align 8
  %a.load5 = load ptr, ptr %var.doc, align 8
  %a.null6 = icmp eq ptr %a.load5, null
  br i1 %a.null6, label %a.create7, label %a.after8

loop.exit.nat.82:                                 ; preds = %loop.header.82
  br label %loop.exit.82

loop.latch.82:                                    ; preds = %choice.exit60
  %step.val = load i64, ptr %loop.step.82, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.82, align 8
  br label %loop.header.82

loop.exit.82:                                     ; preds = %choice.then59, %loop.exit.nat.82
  %var.load62 = load ptr, ptr %"var.res'", align 8
  ret ptr %var.load62

a.create7:                                        ; preds = %loop.body.82
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
  store ptr %a.create10, ptr %var.doc, align 8
  br label %a.after8

a.after8:                                         ; preds = %a.create7, %loop.body.82
  %a.load216 = load ptr, ptr %var.doc, align 8
  %var.load17 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %a.load216, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after8
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load216, i32 0, i32 0
  %a.rd.len18 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load17, 0
  %a.rd.lt = icmp slt i64 %var.load17, %a.rd.len18
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load216, i32 0, i32 1
  %a.rd.data19 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data19, i64 %var.load17
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after8
  %arena.cur20 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 130, ptr %err.line.gep, align 8
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
  %arena.cur21 = call ptr @dva_arena_current()
  %err.alloc22 = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 56)
  %err.code.gep23 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 0
  store i64 4011, ptr %err.code.gep23, align 8
  %err.msg.gep24 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep24, align 8
  %err.file.gep25 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep25, align 8
  %err.line.gep26 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 3
  store i64 130, ptr %err.line.gep26, align 8
  %err.col.gep27 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 4
  store i64 18, ptr %err.col.gep27, align 8
  %err.ctx.gep28 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 5
  %err.ctx0.gep29 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep28, i32 0, i32 0
  store i64 %var.load17, ptr %err.ctx0.gep29, align 8
  %err.ctx1.gep30 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep28, i32 0, i32 1
  store i64 %a.rd.len18, ptr %err.ctx1.gep30, align 8
  %err.p2i31 = ptrtoint ptr %err.alloc22 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i31, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag32 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag32, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %ram.pay33 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay33 to ptr
  store ptr %pay.ptr, ptr %var._34, align 8
  br label %choice.exit

choice.else:                                      ; preds = %a.rd.done
  %ram.pay35 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr36 = inttoptr i64 %ram.pay35 to ptr
  store ptr %pay.ptr36, ptr %var._37, align 8
  %arena.cur38 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr @str.0.struct, ptr %pay.gep, align 8
  %arena.cur39 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr @str.0.struct, ptr %rec.fld, align 8
  %rec.fld40 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %enum.alloc, ptr %rec.fld40, align 8
  %rec.fld41 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld41, align 8
  %rec.fld42 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 0, ptr %rec.fld42, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ %rec.alloc, %choice.else ]
  store ptr %choice.res, ptr %var.e, align 8
  %var.load43 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load43, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load44 = load ptr, ptr %var.key, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len45 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len46 = and i64 %eq.lhs.len45, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len45, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit
  %arena.cur47 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur47, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load44, i32 0, i32 0
  %eq.rhs.len48 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len49 = and i64 %eq.rhs.len48, 281474976710655
  %str.tag50 = lshr i64 %eq.rhs.len48, 48
  %str.immortal51 = icmp eq i64 %str.tag50, 0
  br i1 %str.immortal51, label %str_ok53, label %str_gen_check52

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check52:                                  ; preds = %str_ok
  %arena.cur55 = call ptr @dva_arena_current()
  %tag.valid56 = call i1 @dva_arena_validate_tag(ptr %arena.cur55, i64 %str.tag50)
  br i1 %tag.valid56, label %str_ok53, label %str_stale54

str_ok53:                                         ; preds = %str_stale54, %str_gen_check52, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len46, %eq.rhs.len49
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale54:                                      ; preds = %str_gen_check52
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok53

str.eq.then:                                      ; preds = %str_ok53
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data57 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load44, i32 0, i32 1
  %eq.rhs.data58 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data57, ptr %eq.rhs.data58, i64 %eq.lhs.len46)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok53
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then59, label %choice.exit60

choice.then59:                                    ; preds = %str.eq.merge
  %var.load61 = load ptr, ptr %var.e, align 8
  store ptr %var.load61, ptr %"var.res'", align 8
  br label %loop.exit.82

choice.exit60:                                    ; preds = %str.eq.merge
  br label %loop.latch.82
}

define ptr @"ccl::get"(ptr %0, ptr %1) #1 {
entry:
  %var.s = alloca ptr, align 8
  %var._67 = alloca ptr, align 8
  %var.e = alloca ptr, align 8
  %var._37 = alloca ptr, align 8
  %var._34 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.83 = alloca i64, align 8
  %loop.idx.83 = alloca i64, align 8
  %"var.res'" = alloca ptr, align 8
  %var.key = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  store ptr %1, ptr %var.key, align 8
  store ptr null, ptr %"var.res'", align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query3 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.83, align 8
  br label %loop.header.83

loop.header.83:                                   ; preds = %loop.latch.83, %a.after
  %counter.load = load i64, ptr %loop.idx.83, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query3
  br i1 %loop.cond, label %loop.body.83, label %loop.exit.nat.83

loop.body.83:                                     ; preds = %loop.header.83
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.83, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load4 = load ptr, ptr %var.doc, align 8
  %a.load5 = load ptr, ptr %var.doc, align 8
  %a.null6 = icmp eq ptr %a.load5, null
  br i1 %a.null6, label %a.create7, label %a.after8

loop.exit.nat.83:                                 ; preds = %loop.header.83
  br label %loop.exit.83

loop.latch.83:                                    ; preds = %choice.exit60
  %step.val = load i64, ptr %loop.step.83, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.83, align 8
  br label %loop.header.83

loop.exit.83:                                     ; preds = %choice.case, %loop.exit.nat.83
  %var.load69 = load ptr, ptr %"var.res'", align 8
  ret ptr %var.load69

a.create7:                                        ; preds = %loop.body.83
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
  store ptr %a.create10, ptr %var.doc, align 8
  br label %a.after8

a.after8:                                         ; preds = %a.create7, %loop.body.83
  %a.load216 = load ptr, ptr %var.doc, align 8
  %var.load17 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %a.load216, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after8
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load216, i32 0, i32 0
  %a.rd.len18 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load17, 0
  %a.rd.lt = icmp slt i64 %var.load17, %a.rd.len18
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load216, i32 0, i32 1
  %a.rd.data19 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data19, i64 %var.load17
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after8
  %arena.cur20 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 140, ptr %err.line.gep, align 8
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
  %arena.cur21 = call ptr @dva_arena_current()
  %err.alloc22 = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 56)
  %err.code.gep23 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 0
  store i64 4011, ptr %err.code.gep23, align 8
  %err.msg.gep24 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep24, align 8
  %err.file.gep25 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep25, align 8
  %err.line.gep26 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 3
  store i64 140, ptr %err.line.gep26, align 8
  %err.col.gep27 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 4
  store i64 18, ptr %err.col.gep27, align 8
  %err.ctx.gep28 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 5
  %err.ctx0.gep29 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep28, i32 0, i32 0
  store i64 %var.load17, ptr %err.ctx0.gep29, align 8
  %err.ctx1.gep30 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep28, i32 0, i32 1
  store i64 %a.rd.len18, ptr %err.ctx1.gep30, align 8
  %err.p2i31 = ptrtoint ptr %err.alloc22 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i31, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag32 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag32, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %ram.pay33 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay33 to ptr
  store ptr %pay.ptr, ptr %var._34, align 8
  br label %choice.exit

choice.else:                                      ; preds = %a.rd.done
  %ram.pay35 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr36 = inttoptr i64 %ram.pay35 to ptr
  store ptr %pay.ptr36, ptr %var._37, align 8
  %arena.cur38 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr @str.0.struct, ptr %pay.gep, align 8
  %arena.cur39 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr @str.0.struct, ptr %rec.fld, align 8
  %rec.fld40 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %enum.alloc, ptr %rec.fld40, align 8
  %rec.fld41 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld41, align 8
  %rec.fld42 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 0, ptr %rec.fld42, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ %rec.alloc, %choice.else ]
  store ptr %choice.res, ptr %var.e, align 8
  %var.load43 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load43, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load44 = load ptr, ptr %var.key, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len45 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len46 = and i64 %eq.lhs.len45, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len45, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit
  %arena.cur47 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur47, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load44, i32 0, i32 0
  %eq.rhs.len48 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len49 = and i64 %eq.rhs.len48, 281474976710655
  %str.tag50 = lshr i64 %eq.rhs.len48, 48
  %str.immortal51 = icmp eq i64 %str.tag50, 0
  br i1 %str.immortal51, label %str_ok53, label %str_gen_check52

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check52:                                  ; preds = %str_ok
  %arena.cur55 = call ptr @dva_arena_current()
  %tag.valid56 = call i1 @dva_arena_validate_tag(ptr %arena.cur55, i64 %str.tag50)
  br i1 %tag.valid56, label %str_ok53, label %str_stale54

str_ok53:                                         ; preds = %str_stale54, %str_gen_check52, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len46, %eq.rhs.len49
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale54:                                      ; preds = %str_gen_check52
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok53

str.eq.then:                                      ; preds = %str_ok53
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data57 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load44, i32 0, i32 1
  %eq.rhs.data58 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data57, ptr %eq.rhs.data58, i64 %eq.lhs.len46)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok53
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then59, label %choice.exit60

choice.then59:                                    ; preds = %str.eq.merge
  %var.load61 = load ptr, ptr %var.e, align 8
  %fld.gep62 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load61, i32 0, i32 1
  %fld.load63 = load ptr, ptr %fld.gep62, align 8
  %tag.gep65 = getelementptr inbounds { i64, ptr }, ptr %fld.load63, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep65, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit60:                                    ; preds = %choice.exit64, %str.eq.merge
  br label %loop.latch.83

choice.exit64:                                    ; preds = %choice.next
  br label %choice.exit60

choice.case:                                      ; preds = %choice.then59
  %pay.gep66 = getelementptr inbounds { i64, ptr }, ptr %fld.load63, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep66, align 8
  store ptr %payload.ptr, ptr %var._67, align 8
  store ptr %payload.ptr, ptr %var.s, align 8
  %var.load68 = load ptr, ptr %var.s, align 8
  store ptr %var.load68, ptr %"var.res'", align 8
  br label %loop.exit.83

choice.next:                                      ; preds = %choice.then59
  br label %choice.exit64
}

define { i1, i64 } @"ccl::get_section"(ptr %0, ptr %1) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var._67 = alloca ptr, align 8
  %var.e = alloca ptr, align 8
  %var._37 = alloca ptr, align 8
  %var._34 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.84 = alloca i64, align 8
  %loop.idx.84 = alloca i64, align 8
  %"var.res'" = alloca { i1, i64 }, align 8
  %var.key = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  store ptr %1, ptr %var.key, align 8
  store { i1, i64 } zeroinitializer, ptr %"var.res'", align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query3 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.84, align 8
  br label %loop.header.84

loop.header.84:                                   ; preds = %loop.latch.84, %a.after
  %counter.load = load i64, ptr %loop.idx.84, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query3
  br i1 %loop.cond, label %loop.body.84, label %loop.exit.nat.84

loop.body.84:                                     ; preds = %loop.header.84
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.84, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load4 = load ptr, ptr %var.doc, align 8
  %a.load5 = load ptr, ptr %var.doc, align 8
  %a.null6 = icmp eq ptr %a.load5, null
  br i1 %a.null6, label %a.create7, label %a.after8

loop.exit.nat.84:                                 ; preds = %loop.header.84
  br label %loop.exit.84

loop.latch.84:                                    ; preds = %choice.exit60
  %step.val = load i64, ptr %loop.step.84, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.84, align 8
  br label %loop.header.84

loop.exit.84:                                     ; preds = %a.after72, %loop.exit.nat.84
  %var.load82 = load { i1, i64 }, ptr %"var.res'", align 8
  ret { i1, i64 } %var.load82

a.create7:                                        ; preds = %loop.body.84
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
  store ptr %a.create10, ptr %var.doc, align 8
  br label %a.after8

a.after8:                                         ; preds = %a.create7, %loop.body.84
  %a.load216 = load ptr, ptr %var.doc, align 8
  %var.load17 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %a.load216, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after8
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load216, i32 0, i32 0
  %a.rd.len18 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load17, 0
  %a.rd.lt = icmp slt i64 %var.load17, %a.rd.len18
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load216, i32 0, i32 1
  %a.rd.data19 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data19, i64 %var.load17
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after8
  %arena.cur20 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 151, ptr %err.line.gep, align 8
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
  %arena.cur21 = call ptr @dva_arena_current()
  %err.alloc22 = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 56)
  %err.code.gep23 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 0
  store i64 4011, ptr %err.code.gep23, align 8
  %err.msg.gep24 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep24, align 8
  %err.file.gep25 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep25, align 8
  %err.line.gep26 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 3
  store i64 151, ptr %err.line.gep26, align 8
  %err.col.gep27 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 4
  store i64 18, ptr %err.col.gep27, align 8
  %err.ctx.gep28 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc22, i32 0, i32 5
  %err.ctx0.gep29 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep28, i32 0, i32 0
  store i64 %var.load17, ptr %err.ctx0.gep29, align 8
  %err.ctx1.gep30 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep28, i32 0, i32 1
  store i64 %a.rd.len18, ptr %err.ctx1.gep30, align 8
  %err.p2i31 = ptrtoint ptr %err.alloc22 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i31, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag32 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag32, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %ram.pay33 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay33 to ptr
  store ptr %pay.ptr, ptr %var._34, align 8
  br label %choice.exit

choice.else:                                      ; preds = %a.rd.done
  %ram.pay35 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr36 = inttoptr i64 %ram.pay35 to ptr
  store ptr %pay.ptr36, ptr %var._37, align 8
  %arena.cur38 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr @str.0.struct, ptr %pay.gep, align 8
  %arena.cur39 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr @str.0.struct, ptr %rec.fld, align 8
  %rec.fld40 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %enum.alloc, ptr %rec.fld40, align 8
  %rec.fld41 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld41, align 8
  %rec.fld42 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 0, ptr %rec.fld42, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ %rec.alloc, %choice.else ]
  store ptr %choice.res, ptr %var.e, align 8
  %var.load43 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load43, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load44 = load ptr, ptr %var.key, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len45 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len46 = and i64 %eq.lhs.len45, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len45, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit
  %arena.cur47 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur47, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load44, i32 0, i32 0
  %eq.rhs.len48 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len49 = and i64 %eq.rhs.len48, 281474976710655
  %str.tag50 = lshr i64 %eq.rhs.len48, 48
  %str.immortal51 = icmp eq i64 %str.tag50, 0
  br i1 %str.immortal51, label %str_ok53, label %str_gen_check52

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check52:                                  ; preds = %str_ok
  %arena.cur55 = call ptr @dva_arena_current()
  %tag.valid56 = call i1 @dva_arena_validate_tag(ptr %arena.cur55, i64 %str.tag50)
  br i1 %tag.valid56, label %str_ok53, label %str_stale54

str_ok53:                                         ; preds = %str_stale54, %str_gen_check52, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len46, %eq.rhs.len49
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale54:                                      ; preds = %str_gen_check52
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok53

str.eq.then:                                      ; preds = %str_ok53
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data57 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load44, i32 0, i32 1
  %eq.rhs.data58 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data57, ptr %eq.rhs.data58, i64 %eq.lhs.len46)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok53
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then59, label %choice.exit60

choice.then59:                                    ; preds = %str.eq.merge
  %var.load61 = load ptr, ptr %var.e, align 8
  %fld.gep62 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load61, i32 0, i32 1
  %fld.load63 = load ptr, ptr %fld.gep62, align 8
  %tag.gep65 = getelementptr inbounds { i64, ptr }, ptr %fld.load63, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep65, align 8
  %tag.match = icmp eq i64 %tag.id, 1
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit60:                                    ; preds = %choice.exit64, %str.eq.merge
  br label %loop.latch.84

choice.exit64:                                    ; preds = %choice.next
  br label %choice.exit60

choice.case:                                      ; preds = %choice.then59
  %pay.gep66 = getelementptr inbounds { i64, ptr }, ptr %fld.load63, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep66, align 8
  store ptr %payload.ptr, ptr %var._67, align 8
  store ptr %payload.ptr, ptr %var.b, align 8
  %var.load68 = load ptr, ptr %var.b, align 8
  %a.load69 = load ptr, ptr %var.b, align 8
  %a.null70 = icmp eq ptr %a.load69, null
  br i1 %a.null70, label %a.create71, label %a.after72

choice.next:                                      ; preds = %choice.then59
  br label %choice.exit64

a.create71:                                       ; preds = %choice.case
  %arena.cur73 = call ptr @dva_arena_current()
  %a.create74 = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 24)
  %arena.cur75 = call ptr @dva_arena_current()
  %a.buf76 = call ptr @dva_arena_alloc(ptr %arena.cur75, i64 128)
  %a.len.gep77 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create74, i32 0, i32 0
  store i64 0, ptr %a.len.gep77, align 8
  %a.data.gep78 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create74, i32 0, i32 1
  store ptr %a.buf76, ptr %a.data.gep78, align 8
  %a.cap.gep79 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create74, i32 0, i32 2
  store i64 16, ptr %a.cap.gep79, align 8
  store ptr %a.create74, ptr %var.b, align 8
  br label %a.after72

a.after72:                                        ; preds = %a.create71, %choice.case
  %a.load280 = load ptr, ptr %var.b, align 8
  %p.to.i64 = ptrtoint ptr %a.load280 to i64
  %ram.pay81 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  store { i1, i64 } %ram.pay81, ptr %"var.res'", align 8
  br label %loop.exit.84
}

define { i1, i64 } @"ccl::get_list"(ptr %0, ptr %1) #1 {
entry:
  %var.s = alloca ptr, align 8
  %var._39 = alloca ptr, align 8
  %var._19 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.85 = alloca i64, align 8
  %loop.idx.85 = alloca i64, align 8
  %var.res = alloca ptr, align 8
  %var.sec = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.key = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  store ptr %1, ptr %var.key, align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %var.load3 = load ptr, ptr %var.key, align 8
  %call.res = call { i1, i64 } @"ccl::get_section"(ptr %a.load2, ptr %var.load3)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.after
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  br label %choice.exit

choice.else:                                      ; preds = %a.after
  ret { i1, i64 } zeroinitializer

choice.exit:                                      ; preds = %ret.dead, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ null, %ret.dead ]
  store ptr %choice.res, ptr %var.sec, align 8
  store ptr null, ptr %var.res, align 8
  %var.load4 = load ptr, ptr %var.sec, align 8
  %a.load5 = load ptr, ptr %var.sec, align 8
  %a.null6 = icmp eq ptr %a.load5, null
  br i1 %a.null6, label %a.create7, label %a.after8

ret.dead:                                         ; No predecessors!
  br label %choice.exit

a.create7:                                        ; preds = %choice.exit
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
  store ptr %a.create10, ptr %var.sec, align 8
  br label %a.after8

a.after8:                                         ; preds = %a.create7, %choice.exit
  %a.load216 = load ptr, ptr %var.sec, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load216, i32 0, i32 0
  %arr.cycle.len17 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load216, i32 0, i32 1
  %arr.cycle.data18 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.85, align 8
  br label %loop.header.85

loop.header.85:                                   ; preds = %loop.latch.85, %a.after8
  %counter.load = load i64, ptr %loop.idx.85, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len17
  br i1 %loop.cond, label %loop.body.85, label %loop.exit.nat.85

loop.body.85:                                     ; preds = %loop.header.85
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.85, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data18, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._19, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load20 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load20, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len21 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len22 = and i64 %eq.lhs.len21, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len21, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.85:                                 ; preds = %loop.header.85
  br label %loop.exit.85

loop.latch.85:                                    ; preds = %choice.exit34
  %step.val = load i64, ptr %loop.step.85, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.85, align 8
  br label %loop.header.85

loop.exit.85:                                     ; preds = %loop.exit.nat.85
  %var.load57 = load ptr, ptr %var.res, align 8
  %a.load58 = load ptr, ptr %var.res, align 8
  %a.null59 = icmp eq ptr %a.load58, null
  br i1 %a.null59, label %a.create60, label %a.after61

str_gen_check:                                    ; preds = %loop.body.85
  %arena.cur23 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur23, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.85
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len24 = and i64 %eq.rhs.len, 281474976710655
  %str.tag25 = lshr i64 %eq.rhs.len, 48
  %str.immortal26 = icmp eq i64 %str.tag25, 0
  br i1 %str.immortal26, label %str_ok28, label %str_gen_check27

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check27:                                  ; preds = %str_ok
  %arena.cur30 = call ptr @dva_arena_current()
  %tag.valid31 = call i1 @dva_arena_validate_tag(ptr %arena.cur30, i64 %str.tag25)
  br i1 %tag.valid31, label %str_ok28, label %str_stale29

str_ok28:                                         ; preds = %str_stale29, %str_gen_check27, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len22, %eq.rhs.len24
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale29:                                      ; preds = %str_gen_check27
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok28

str.eq.then:                                      ; preds = %str_ok28
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data32 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data32, ptr %eq.rhs.data, i64 %eq.lhs.len22)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok28
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then33, label %choice.exit34

choice.then33:                                    ; preds = %str.eq.merge
  %var.load35 = load ptr, ptr %var.e, align 8
  %fld.gep36 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load35, i32 0, i32 1
  %fld.load37 = load ptr, ptr %fld.gep36, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load37, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit34:                                    ; preds = %choice.exit38, %str.eq.merge
  br label %loop.latch.85

choice.exit38:                                    ; preds = %choice.next, %a.store
  br label %choice.exit34

choice.case:                                      ; preds = %choice.then33
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load37, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._39, align 8
  store ptr %payload.ptr, ptr %var.s, align 8
  %var.load40 = load ptr, ptr %var.s, align 8
  %a.load41 = load ptr, ptr %var.res, align 8
  %a.null42 = icmp eq ptr %a.load41, null
  br i1 %a.null42, label %a.create43, label %a.after44

choice.next:                                      ; preds = %choice.then33
  br label %choice.exit38

a.create43:                                       ; preds = %choice.case
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
  store ptr %a.create46, ptr %var.res, align 8
  br label %a.after44

a.after44:                                        ; preds = %a.create43, %choice.case
  %a.load252 = load ptr, ptr %var.res, align 8
  br label %a.check

a.check:                                          ; preds = %a.after44
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load252, i32 0, i32 0
  %a.len53 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load252, i32 0, i32 2
  %a.cap54 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len53, %a.cap54
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load252)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load252, i32 0, i32 1
  %a.cur.data55 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load252, i32 0, i32 0
  %a.cur.len56 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data55, i64 %a.cur.len56
  %slot.p2i = ptrtoint ptr %var.load40 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len56, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load252, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit38

a.create60:                                       ; preds = %loop.exit.85
  %arena.cur62 = call ptr @dva_arena_current()
  %a.create63 = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 24)
  %arena.cur64 = call ptr @dva_arena_current()
  %a.buf65 = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 128)
  %a.len.gep66 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create63, i32 0, i32 0
  store i64 0, ptr %a.len.gep66, align 8
  %a.data.gep67 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create63, i32 0, i32 1
  store ptr %a.buf65, ptr %a.data.gep67, align 8
  %a.cap.gep68 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create63, i32 0, i32 2
  store i64 16, ptr %a.cap.gep68, align 8
  store ptr %a.create63, ptr %var.res, align 8
  br label %a.after61

a.after61:                                        ; preds = %a.create60, %loop.exit.85
  %a.load269 = load ptr, ptr %var.res, align 8
  %p.to.i64 = ptrtoint ptr %a.load269 to i64
  %ram.pay70 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay70
}

define ptr @"ccl::entries_for"(ptr %0, ptr %1) #1 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.86 = alloca i64, align 8
  %loop.idx.86 = alloca i64, align 8
  %var.res = alloca ptr, align 8
  %var.key = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  store ptr %1, ptr %var.key, align 8
  store ptr null, ptr %var.res, align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len3 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.86, align 8
  br label %loop.header.86

loop.header.86:                                   ; preds = %loop.latch.86, %a.after
  %counter.load = load i64, ptr %loop.idx.86, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.86, label %loop.exit.nat.86

loop.body.86:                                     ; preds = %loop.header.86
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.86, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load5 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load5, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load6 = load ptr, ptr %var.key, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len7 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len8 = and i64 %eq.lhs.len7, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len7, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.86:                                 ; preds = %loop.header.86
  br label %loop.exit.86

loop.latch.86:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.86, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.86, align 8
  br label %loop.header.86

loop.exit.86:                                     ; preds = %loop.exit.nat.86
  %var.load38 = load ptr, ptr %var.res, align 8
  %a.load39 = load ptr, ptr %var.res, align 8
  %a.null40 = icmp eq ptr %a.load39, null
  br i1 %a.null40, label %a.create41, label %a.after42

str_gen_check:                                    ; preds = %loop.body.86
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.86
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
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
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
  %var.load21 = load ptr, ptr %var.e, align 8
  %a.load22 = load ptr, ptr %var.res, align 8
  %a.null23 = icmp eq ptr %a.load22, null
  br i1 %a.null23, label %a.create24, label %a.after25

choice.exit:                                      ; preds = %a.store, %str.eq.merge
  br label %loop.latch.86

a.create24:                                       ; preds = %choice.then
  %arena.cur26 = call ptr @dva_arena_current()
  %a.create27 = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 24)
  %arena.cur28 = call ptr @dva_arena_current()
  %a.buf29 = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 128)
  %a.len.gep30 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create27, i32 0, i32 0
  store i64 0, ptr %a.len.gep30, align 8
  %a.data.gep31 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create27, i32 0, i32 1
  store ptr %a.buf29, ptr %a.data.gep31, align 8
  %a.cap.gep32 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create27, i32 0, i32 2
  store i64 16, ptr %a.cap.gep32, align 8
  store ptr %a.create27, ptr %var.res, align 8
  br label %a.after25

a.after25:                                        ; preds = %a.create24, %choice.then
  %a.load233 = load ptr, ptr %var.res, align 8
  br label %a.check

a.check:                                          ; preds = %a.after25
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load233, i32 0, i32 0
  %a.len34 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load233, i32 0, i32 2
  %a.cap35 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len34, %a.cap35
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load233)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load233, i32 0, i32 1
  %a.cur.data36 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load233, i32 0, i32 0
  %a.cur.len37 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data36, i64 %a.cur.len37
  %slot.p2i = ptrtoint ptr %var.load21 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len37, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load233, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit

a.create41:                                       ; preds = %loop.exit.86
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
  store ptr %a.create44, ptr %var.res, align 8
  br label %a.after42

a.after42:                                        ; preds = %a.create41, %loop.exit.86
  %a.load250 = load ptr, ptr %var.res, align 8
  ret ptr %a.load250
}

define ptr @"ccl::split_raw_lines"(ptr %0) #1 {
entry:
  %var.content249 = alloca ptr, align 8
  %var.ind212 = alloca i64, align 8
  %var.raw209 = alloca ptr, align 8
  %var.line_end171 = alloca i64, align 8
  %var.content = alloca ptr, align 8
  %var.ind = alloca i64, align 8
  %var.raw = alloca ptr, align 8
  %var.line_end = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.87 = alloca i64, align 8
  %loop.idx.87 = alloca i64, align 8
  %"var.line_no'" = alloca i64, align 8
  %"var.cur_start'" = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.lines = alloca ptr, align 8
  %var.src = alloca ptr, align 8
  store ptr %0, ptr %var.src, align 8
  store ptr null, ptr %var.lines, align 8
  %var.load = load ptr, ptr %var.src, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.lines, align 8
  %a.load = load ptr, ptr %var.lines, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else:                                      ; preds = %str_ok
  store i64 0, ptr %"var.cur_start'", align 8
  store i64 1, ptr %"var.line_no'", align 8
  %var.load8 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.87, align 8
  br label %loop.header.87

choice.exit:                                      ; preds = %a.after290, %a.after
  %choice.res299 = phi ptr [ %a.load2, %a.after ], [ %a.load2298, %a.after290 ]
  ret ptr %choice.res299

a.create:                                         ; preds = %choice.then
  %arena.cur5 = call ptr @dva_arena_current()
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 24)
  %arena.cur7 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create6, ptr %var.lines, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.lines, align 8
  br label %choice.exit

loop.header.87:                                   ; preds = %loop.latch.87, %choice.else
  %counter.load = load i64, ptr %loop.idx.87, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load8
  br i1 %loop.cond, label %loop.body.87, label %loop.exit.nat.87

loop.body.87:                                     ; preds = %loop.header.87
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.87, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load9 = load ptr, ptr %var.src, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %str.tag12 = lshr i64 %s.read.len10, 48
  %str.immortal13 = icmp eq i64 %str.tag12, 0
  br i1 %str.immortal13, label %str_ok15, label %str_gen_check14

loop.exit.nat.87:                                 ; preds = %loop.header.87
  br label %loop.exit.87

loop.latch.87:                                    ; preds = %choice.exit24
  %step.val = load i64, ptr %loop.step.87, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.87, align 8
  br label %loop.header.87

loop.exit.87:                                     ; preds = %loop.exit.nat.87
  %var.load135 = load i64, ptr %"var.cur_start'", align 8
  %var.load136 = load i64, ptr %var.len, align 8
  %cmptmp137 = icmp slt i64 %var.load135, %var.load136
  br i1 %cmptmp137, label %choice.then138, label %choice.exit139

str_gen_check14:                                  ; preds = %loop.body.87
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %str.tag12)
  br i1 %tag.valid18, label %str_ok15, label %str_stale16

str_ok15:                                         ; preds = %str_stale16, %str_gen_check14, %loop.body.87
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.read.data19 = load ptr, ptr %s.read.data, align 8
  %var.load20 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load20, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale16:                                      ; preds = %str_gen_check14
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok15

idx_big_check:                                    ; preds = %str_ok15
  %idx.big = icmp sge i64 %var.load20, %s.read.len11
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data19, i64 %var.load20
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load21 = load i64, ptr %var.c, align 8
  %cmptmp22 = icmp eq i64 %var.load21, 10
  br i1 %cmptmp22, label %choice.then23, label %choice.exit24

idx_oob:                                          ; preds = %idx_big_check, %str_ok15
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then23:                                    ; preds = %idx_ok
  %var.load25 = load i64, ptr %var.i, align 8
  %var.load26 = load i64, ptr %"var.cur_start'", align 8
  %cmptmp27 = icmp sgt i64 %var.load25, %var.load26
  br i1 %cmptmp27, label %and.88.then, label %and.88.else

choice.exit24:                                    ; preds = %a.store, %idx_ok
  br label %loop.latch.87

and.88.then:                                      ; preds = %choice.then23
  %var.load28 = load ptr, ptr %var.src, align 8
  %s.read.len29 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %s.read.len30 = load i64, ptr %s.read.len29, align 8
  %s.read.len31 = and i64 %s.read.len30, 281474976710655
  %str.tag32 = lshr i64 %s.read.len30, 48
  %str.immortal33 = icmp eq i64 %str.tag32, 0
  br i1 %str.immortal33, label %str_ok35, label %str_gen_check34

and.88.else:                                      ; preds = %choice.then23
  br label %and.88.exit

and.88.exit:                                      ; preds = %and.88.else, %idx_ok44
  %and.88.phi = phi i1 [ %cmptmp50, %idx_ok44 ], [ %cmptmp27, %and.88.else ]
  br i1 %and.88.phi, label %choice.then51, label %choice.else52

str_gen_check34:                                  ; preds = %and.88.then
  %arena.cur37 = call ptr @dva_arena_current()
  %tag.valid38 = call i1 @dva_arena_validate_tag(ptr %arena.cur37, i64 %str.tag32)
  br i1 %tag.valid38, label %str_ok35, label %str_stale36

str_ok35:                                         ; preds = %str_stale36, %str_gen_check34, %and.88.then
  %s.read.data39 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %s.read.data40 = load ptr, ptr %s.read.data39, align 8
  %var.load41 = load i64, ptr %var.i, align 8
  %subtmp = sub i64 %var.load41, 1
  %idx.neg42 = icmp slt i64 %subtmp, 0
  br i1 %idx.neg42, label %idx_oob45, label %idx_big_check43

str_stale36:                                      ; preds = %str_gen_check34
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok35

idx_big_check43:                                  ; preds = %str_ok35
  %idx.big46 = icmp sge i64 %subtmp, %s.read.len31
  br i1 %idx.big46, label %idx_oob45, label %idx_ok44

idx_ok44:                                         ; preds = %idx_oob45, %idx_big_check43
  %s.byte.gep47 = getelementptr i8, ptr %s.read.data40, i64 %subtmp
  %s.byte48 = load i8, ptr %s.byte.gep47, align 1
  %s.byte.val49 = zext i8 %s.byte48 to i64
  %cmptmp50 = icmp eq i64 %s.byte.val49, 13
  br label %and.88.exit

idx_oob45:                                        ; preds = %idx_big_check43, %str_ok35
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok44

choice.then51:                                    ; preds = %and.88.exit
  %var.load54 = load i64, ptr %var.i, align 8
  %subtmp55 = sub i64 %var.load54, 1
  br label %choice.exit53

choice.else52:                                    ; preds = %and.88.exit
  %var.load56 = load i64, ptr %var.i, align 8
  br label %choice.exit53

choice.exit53:                                    ; preds = %choice.else52, %choice.then51
  %choice.res = phi i64 [ %subtmp55, %choice.then51 ], [ %var.load56, %choice.else52 ]
  store i64 %choice.res, ptr %var.line_end, align 8
  %var.load57 = load ptr, ptr %var.src, align 8
  %s.read.len58 = getelementptr inbounds { i64, ptr }, ptr %var.load57, i32 0, i32 0
  %s.read.len59 = load i64, ptr %s.read.len58, align 8
  %s.read.len60 = and i64 %s.read.len59, 281474976710655
  %str.tag61 = lshr i64 %s.read.len59, 48
  %str.immortal62 = icmp eq i64 %str.tag61, 0
  br i1 %str.immortal62, label %str_ok64, label %str_gen_check63

str_gen_check63:                                  ; preds = %choice.exit53
  %arena.cur66 = call ptr @dva_arena_current()
  %tag.valid67 = call i1 @dva_arena_validate_tag(ptr %arena.cur66, i64 %str.tag61)
  br i1 %tag.valid67, label %str_ok64, label %str_stale65

str_ok64:                                         ; preds = %str_stale65, %str_gen_check63, %choice.exit53
  %s.read.data68 = getelementptr inbounds { i64, ptr }, ptr %var.load57, i32 0, i32 1
  %s.read.data69 = load ptr, ptr %s.read.data68, align 8
  %var.load70 = load i64, ptr %"var.cur_start'", align 8
  %var.load71 = load i64, ptr %var.line_end, align 8
  %start.is_neg = icmp slt i64 %var.load70, 0
  %rel.start = add i64 %s.read.len60, %var.load70
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load70
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len60
  %final.start = select i1 %start.gt.len, i64 %s.read.len60, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load71, 0
  %rel.end = add i64 %s.read.len60, %var.load71
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load71
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len60
  %final.end = select i1 %end.gt.len, i64 %s.read.len60, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data69, i64 %final.start
  %arena.cur72 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %var.raw, align 8
  %var.load73 = load ptr, ptr %var.raw, align 8
  %call.res = call i64 @"ccl::trim_left_idx"(ptr %var.load73, i64 0)
  store i64 %call.res, ptr %var.ind, align 8
  %var.load74 = load ptr, ptr %var.raw, align 8
  %s.read.len75 = getelementptr inbounds { i64, ptr }, ptr %var.load74, i32 0, i32 0
  %s.read.len76 = load i64, ptr %s.read.len75, align 8
  %s.read.len77 = and i64 %s.read.len76, 281474976710655
  %str.tag78 = lshr i64 %s.read.len76, 48
  %str.immortal79 = icmp eq i64 %str.tag78, 0
  br i1 %str.immortal79, label %str_ok81, label %str_gen_check80

str_stale65:                                      ; preds = %str_gen_check63
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok64

str_gen_check80:                                  ; preds = %str_ok64
  %arena.cur83 = call ptr @dva_arena_current()
  %tag.valid84 = call i1 @dva_arena_validate_tag(ptr %arena.cur83, i64 %str.tag78)
  br i1 %tag.valid84, label %str_ok81, label %str_stale82

str_ok81:                                         ; preds = %str_stale82, %str_gen_check80, %str_ok64
  %s.read.data85 = getelementptr inbounds { i64, ptr }, ptr %var.load74, i32 0, i32 1
  %s.read.data86 = load ptr, ptr %s.read.data85, align 8
  %var.load87 = load i64, ptr %var.ind, align 8
  %start.is_neg88 = icmp slt i64 %var.load87, 0
  %rel.start89 = add i64 %s.read.len77, %var.load87
  %norm.start90 = select i1 %start.is_neg88, i64 %rel.start89, i64 %var.load87
  %start.lt.091 = icmp slt i64 %norm.start90, 0
  %c.start.092 = select i1 %start.lt.091, i64 0, i64 %norm.start90
  %start.gt.len93 = icmp sgt i64 %c.start.092, %s.read.len77
  %final.start94 = select i1 %start.gt.len93, i64 %s.read.len77, i64 %c.start.092
  %end.is_neg95 = icmp slt i64 %s.read.len77, 0
  %rel.end96 = add i64 %s.read.len77, %s.read.len77
  %norm.end97 = select i1 %end.is_neg95, i64 %rel.end96, i64 %s.read.len77
  %end.lt.098 = icmp slt i64 %norm.end97, 0
  %c.end.099 = select i1 %end.lt.098, i64 0, i64 %norm.end97
  %end.gt.len100 = icmp sgt i64 %c.end.099, %s.read.len77
  %final.end101 = select i1 %end.gt.len100, i64 %s.read.len77, i64 %c.end.099
  %view.empty102 = icmp sle i64 %final.end101, %final.start94
  %view.len.sub103 = sub i64 %final.end101, %final.start94
  %view.len104 = select i1 %view.empty102, i64 0, i64 %view.len.sub103
  %view.data105 = getelementptr i8, ptr %s.read.data86, i64 %final.start94
  %arena.cur106 = call ptr @dva_arena_current()
  %str.view107 = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 16)
  %str.build.len.gep108 = getelementptr inbounds { i64, ptr }, ptr %str.view107, i32 0, i32 0
  store i64 %view.len104, ptr %str.build.len.gep108, align 8
  %str.build.data.gep109 = getelementptr inbounds { i64, ptr }, ptr %str.view107, i32 0, i32 1
  store ptr %view.data105, ptr %str.build.data.gep109, align 8
  store ptr %str.view107, ptr %var.content, align 8
  %var.load110 = load i64, ptr %"var.line_no'", align 8
  %var.load111 = load i64, ptr %var.ind, align 8
  %var.load112 = load ptr, ptr %var.content, align 8
  %arena.cur113 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur113, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load110, ptr %rec.fld, align 8
  %rec.fld114 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load111, ptr %rec.fld114, align 8
  %rec.fld115 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load112, ptr %rec.fld115, align 8
  %a.load116 = load ptr, ptr %var.lines, align 8
  %a.null117 = icmp eq ptr %a.load116, null
  br i1 %a.null117, label %a.create118, label %a.after119

str_stale82:                                      ; preds = %str_gen_check80
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok81

a.create118:                                      ; preds = %str_ok81
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
  store ptr %a.create121, ptr %var.lines, align 8
  br label %a.after119

a.after119:                                       ; preds = %a.create118, %str_ok81
  %a.load2127 = load ptr, ptr %var.lines, align 8
  br label %a.check

a.check:                                          ; preds = %a.after119
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2127, i32 0, i32 0
  %a.len128 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2127, i32 0, i32 2
  %a.cap129 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len128, %a.cap129
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2127)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2127, i32 0, i32 1
  %a.cur.data130 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2127, i32 0, i32 0
  %a.cur.len131 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data130, i64 %a.cur.len131
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len131, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2127, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load132 = load i64, ptr %"var.line_no'", align 8
  %addtmp = add i64 %var.load132, 1
  store i64 %addtmp, ptr %"var.line_no'", align 8
  %var.load133 = load i64, ptr %var.i, align 8
  %addtmp134 = add i64 %var.load133, 1
  store i64 %addtmp134, ptr %"var.cur_start'", align 8
  br label %choice.exit24

choice.then138:                                   ; preds = %loop.exit.87
  %var.load140 = load ptr, ptr %var.src, align 8
  %s.read.len141 = getelementptr inbounds { i64, ptr }, ptr %var.load140, i32 0, i32 0
  %s.read.len142 = load i64, ptr %s.read.len141, align 8
  %s.read.len143 = and i64 %s.read.len142, 281474976710655
  %str.tag144 = lshr i64 %s.read.len142, 48
  %str.immortal145 = icmp eq i64 %str.tag144, 0
  br i1 %str.immortal145, label %str_ok147, label %str_gen_check146

choice.exit139:                                   ; preds = %a.store272, %loop.exit.87
  %var.load286 = load ptr, ptr %var.lines, align 8
  %a.load287 = load ptr, ptr %var.lines, align 8
  %a.null288 = icmp eq ptr %a.load287, null
  br i1 %a.null288, label %a.create289, label %a.after290

str_gen_check146:                                 ; preds = %choice.then138
  %arena.cur149 = call ptr @dva_arena_current()
  %tag.valid150 = call i1 @dva_arena_validate_tag(ptr %arena.cur149, i64 %str.tag144)
  br i1 %tag.valid150, label %str_ok147, label %str_stale148

str_ok147:                                        ; preds = %str_stale148, %str_gen_check146, %choice.then138
  %s.read.data151 = getelementptr inbounds { i64, ptr }, ptr %var.load140, i32 0, i32 1
  %s.read.data152 = load ptr, ptr %s.read.data151, align 8
  %var.load153 = load i64, ptr %var.len, align 8
  %subtmp154 = sub i64 %var.load153, 1
  %idx.neg155 = icmp slt i64 %subtmp154, 0
  br i1 %idx.neg155, label %idx_oob158, label %idx_big_check156

str_stale148:                                     ; preds = %str_gen_check146
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok147

idx_big_check156:                                 ; preds = %str_ok147
  %idx.big159 = icmp sge i64 %subtmp154, %s.read.len143
  br i1 %idx.big159, label %idx_oob158, label %idx_ok157

idx_ok157:                                        ; preds = %idx_oob158, %idx_big_check156
  %s.byte.gep160 = getelementptr i8, ptr %s.read.data152, i64 %subtmp154
  %s.byte161 = load i8, ptr %s.byte.gep160, align 1
  %s.byte.val162 = zext i8 %s.byte161 to i64
  %cmptmp163 = icmp eq i64 %s.byte.val162, 13
  br i1 %cmptmp163, label %choice.then164, label %choice.else165

idx_oob158:                                       ; preds = %idx_big_check156, %str_ok147
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok157

choice.then164:                                   ; preds = %idx_ok157
  %var.load167 = load i64, ptr %var.len, align 8
  %subtmp168 = sub i64 %var.load167, 1
  br label %choice.exit166

choice.else165:                                   ; preds = %idx_ok157
  %var.load169 = load i64, ptr %var.len, align 8
  br label %choice.exit166

choice.exit166:                                   ; preds = %choice.else165, %choice.then164
  %choice.res170 = phi i64 [ %subtmp168, %choice.then164 ], [ %var.load169, %choice.else165 ]
  store i64 %choice.res170, ptr %var.line_end171, align 8
  %var.load172 = load ptr, ptr %var.src, align 8
  %s.read.len173 = getelementptr inbounds { i64, ptr }, ptr %var.load172, i32 0, i32 0
  %s.read.len174 = load i64, ptr %s.read.len173, align 8
  %s.read.len175 = and i64 %s.read.len174, 281474976710655
  %str.tag176 = lshr i64 %s.read.len174, 48
  %str.immortal177 = icmp eq i64 %str.tag176, 0
  br i1 %str.immortal177, label %str_ok179, label %str_gen_check178

str_gen_check178:                                 ; preds = %choice.exit166
  %arena.cur181 = call ptr @dva_arena_current()
  %tag.valid182 = call i1 @dva_arena_validate_tag(ptr %arena.cur181, i64 %str.tag176)
  br i1 %tag.valid182, label %str_ok179, label %str_stale180

str_ok179:                                        ; preds = %str_stale180, %str_gen_check178, %choice.exit166
  %s.read.data183 = getelementptr inbounds { i64, ptr }, ptr %var.load172, i32 0, i32 1
  %s.read.data184 = load ptr, ptr %s.read.data183, align 8
  %var.load185 = load i64, ptr %"var.cur_start'", align 8
  %var.load186 = load i64, ptr %var.line_end171, align 8
  %start.is_neg187 = icmp slt i64 %var.load185, 0
  %rel.start188 = add i64 %s.read.len175, %var.load185
  %norm.start189 = select i1 %start.is_neg187, i64 %rel.start188, i64 %var.load185
  %start.lt.0190 = icmp slt i64 %norm.start189, 0
  %c.start.0191 = select i1 %start.lt.0190, i64 0, i64 %norm.start189
  %start.gt.len192 = icmp sgt i64 %c.start.0191, %s.read.len175
  %final.start193 = select i1 %start.gt.len192, i64 %s.read.len175, i64 %c.start.0191
  %end.is_neg194 = icmp slt i64 %var.load186, 0
  %rel.end195 = add i64 %s.read.len175, %var.load186
  %norm.end196 = select i1 %end.is_neg194, i64 %rel.end195, i64 %var.load186
  %end.lt.0197 = icmp slt i64 %norm.end196, 0
  %c.end.0198 = select i1 %end.lt.0197, i64 0, i64 %norm.end196
  %end.gt.len199 = icmp sgt i64 %c.end.0198, %s.read.len175
  %final.end200 = select i1 %end.gt.len199, i64 %s.read.len175, i64 %c.end.0198
  %view.empty201 = icmp sle i64 %final.end200, %final.start193
  %view.len.sub202 = sub i64 %final.end200, %final.start193
  %view.len203 = select i1 %view.empty201, i64 0, i64 %view.len.sub202
  %view.data204 = getelementptr i8, ptr %s.read.data184, i64 %final.start193
  %arena.cur205 = call ptr @dva_arena_current()
  %str.view206 = call ptr @dva_arena_alloc(ptr %arena.cur205, i64 16)
  %str.build.len.gep207 = getelementptr inbounds { i64, ptr }, ptr %str.view206, i32 0, i32 0
  store i64 %view.len203, ptr %str.build.len.gep207, align 8
  %str.build.data.gep208 = getelementptr inbounds { i64, ptr }, ptr %str.view206, i32 0, i32 1
  store ptr %view.data204, ptr %str.build.data.gep208, align 8
  store ptr %str.view206, ptr %var.raw209, align 8
  %var.load210 = load ptr, ptr %var.raw209, align 8
  %call.res211 = call i64 @"ccl::trim_left_idx"(ptr %var.load210, i64 0)
  store i64 %call.res211, ptr %var.ind212, align 8
  %var.load213 = load ptr, ptr %var.raw209, align 8
  %s.read.len214 = getelementptr inbounds { i64, ptr }, ptr %var.load213, i32 0, i32 0
  %s.read.len215 = load i64, ptr %s.read.len214, align 8
  %s.read.len216 = and i64 %s.read.len215, 281474976710655
  %str.tag217 = lshr i64 %s.read.len215, 48
  %str.immortal218 = icmp eq i64 %str.tag217, 0
  br i1 %str.immortal218, label %str_ok220, label %str_gen_check219

str_stale180:                                     ; preds = %str_gen_check178
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok179

str_gen_check219:                                 ; preds = %str_ok179
  %arena.cur222 = call ptr @dva_arena_current()
  %tag.valid223 = call i1 @dva_arena_validate_tag(ptr %arena.cur222, i64 %str.tag217)
  br i1 %tag.valid223, label %str_ok220, label %str_stale221

str_ok220:                                        ; preds = %str_stale221, %str_gen_check219, %str_ok179
  %s.read.data224 = getelementptr inbounds { i64, ptr }, ptr %var.load213, i32 0, i32 1
  %s.read.data225 = load ptr, ptr %s.read.data224, align 8
  %var.load226 = load i64, ptr %var.ind212, align 8
  %start.is_neg227 = icmp slt i64 %var.load226, 0
  %rel.start228 = add i64 %s.read.len216, %var.load226
  %norm.start229 = select i1 %start.is_neg227, i64 %rel.start228, i64 %var.load226
  %start.lt.0230 = icmp slt i64 %norm.start229, 0
  %c.start.0231 = select i1 %start.lt.0230, i64 0, i64 %norm.start229
  %start.gt.len232 = icmp sgt i64 %c.start.0231, %s.read.len216
  %final.start233 = select i1 %start.gt.len232, i64 %s.read.len216, i64 %c.start.0231
  %end.is_neg234 = icmp slt i64 %s.read.len216, 0
  %rel.end235 = add i64 %s.read.len216, %s.read.len216
  %norm.end236 = select i1 %end.is_neg234, i64 %rel.end235, i64 %s.read.len216
  %end.lt.0237 = icmp slt i64 %norm.end236, 0
  %c.end.0238 = select i1 %end.lt.0237, i64 0, i64 %norm.end236
  %end.gt.len239 = icmp sgt i64 %c.end.0238, %s.read.len216
  %final.end240 = select i1 %end.gt.len239, i64 %s.read.len216, i64 %c.end.0238
  %view.empty241 = icmp sle i64 %final.end240, %final.start233
  %view.len.sub242 = sub i64 %final.end240, %final.start233
  %view.len243 = select i1 %view.empty241, i64 0, i64 %view.len.sub242
  %view.data244 = getelementptr i8, ptr %s.read.data225, i64 %final.start233
  %arena.cur245 = call ptr @dva_arena_current()
  %str.view246 = call ptr @dva_arena_alloc(ptr %arena.cur245, i64 16)
  %str.build.len.gep247 = getelementptr inbounds { i64, ptr }, ptr %str.view246, i32 0, i32 0
  store i64 %view.len243, ptr %str.build.len.gep247, align 8
  %str.build.data.gep248 = getelementptr inbounds { i64, ptr }, ptr %str.view246, i32 0, i32 1
  store ptr %view.data244, ptr %str.build.data.gep248, align 8
  store ptr %str.view246, ptr %var.content249, align 8
  %var.load250 = load i64, ptr %"var.line_no'", align 8
  %var.load251 = load i64, ptr %var.ind212, align 8
  %var.load252 = load ptr, ptr %var.content249, align 8
  %arena.cur253 = call ptr @dva_arena_current()
  %rec.alloc254 = call ptr @dva_arena_alloc(ptr %arena.cur253, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld255 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc254, i32 0, i32 0
  store i64 %var.load250, ptr %rec.fld255, align 8
  %rec.fld256 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc254, i32 0, i32 1
  store i64 %var.load251, ptr %rec.fld256, align 8
  %rec.fld257 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc254, i32 0, i32 2
  store ptr %var.load252, ptr %rec.fld257, align 8
  %a.load258 = load ptr, ptr %var.lines, align 8
  %a.null259 = icmp eq ptr %a.load258, null
  br i1 %a.null259, label %a.create260, label %a.after261

str_stale221:                                     ; preds = %str_gen_check219
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok220

a.create260:                                      ; preds = %str_ok220
  %arena.cur262 = call ptr @dva_arena_current()
  %a.create263 = call ptr @dva_arena_alloc(ptr %arena.cur262, i64 24)
  %arena.cur264 = call ptr @dva_arena_current()
  %a.buf265 = call ptr @dva_arena_alloc(ptr %arena.cur264, i64 128)
  %a.len.gep266 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create263, i32 0, i32 0
  store i64 0, ptr %a.len.gep266, align 8
  %a.data.gep267 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create263, i32 0, i32 1
  store ptr %a.buf265, ptr %a.data.gep267, align 8
  %a.cap.gep268 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create263, i32 0, i32 2
  store i64 16, ptr %a.cap.gep268, align 8
  store ptr %a.create263, ptr %var.lines, align 8
  br label %a.after261

a.after261:                                       ; preds = %a.create260, %str_ok220
  %a.load2269 = load ptr, ptr %var.lines, align 8
  br label %a.check270

a.check270:                                       ; preds = %a.after261
  %a.len273 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2269, i32 0, i32 0
  %a.len274 = load i64, ptr %a.len273, align 8
  %a.cap275 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2269, i32 0, i32 2
  %a.cap276 = load i64, ptr %a.cap275, align 8
  %a.needs.grow277 = icmp eq i64 %a.len274, %a.cap276
  br i1 %a.needs.grow277, label %a.grow271, label %a.store272

a.grow271:                                        ; preds = %a.check270
  call void @dva_array_grow(ptr %a.load2269)
  br label %a.store272

a.store272:                                       ; preds = %a.grow271, %a.check270
  %a.cur.data278 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2269, i32 0, i32 1
  %a.cur.data279 = load ptr, ptr %a.cur.data278, align 8
  %a.cur.len280 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2269, i32 0, i32 0
  %a.cur.len281 = load i64, ptr %a.cur.len280, align 8
  %a.elem.gep282 = getelementptr i64, ptr %a.cur.data279, i64 %a.cur.len281
  %slot.p2i283 = ptrtoint ptr %rec.alloc254 to i64
  store i64 %slot.p2i283, ptr %a.elem.gep282, align 8
  %a.next.len284 = add i64 %a.cur.len281, 1
  %b.len.gep285 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2269, i32 0, i32 0
  store i64 %a.next.len284, ptr %b.len.gep285, align 8
  br label %choice.exit139

a.create289:                                      ; preds = %choice.exit139
  %arena.cur291 = call ptr @dva_arena_current()
  %a.create292 = call ptr @dva_arena_alloc(ptr %arena.cur291, i64 24)
  %arena.cur293 = call ptr @dva_arena_current()
  %a.buf294 = call ptr @dva_arena_alloc(ptr %arena.cur293, i64 128)
  %a.len.gep295 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create292, i32 0, i32 0
  store i64 0, ptr %a.len.gep295, align 8
  %a.data.gep296 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create292, i32 0, i32 1
  store ptr %a.buf294, ptr %a.data.gep296, align 8
  %a.cap.gep297 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create292, i32 0, i32 2
  store i64 16, ptr %a.cap.gep297, align 8
  store ptr %a.create292, ptr %var.lines, align 8
  br label %a.after290

a.after290:                                       ; preds = %a.create289, %choice.exit139
  %a.load2298 = load ptr, ptr %var.lines, align 8
  br label %choice.exit
}

define { i1, i64 } @"ccl::parse_block_from"(ptr %0, i64 %1, i64 %2, ptr %3) #1 {
entry:
  %var.cl = alloca ptr, align 8
  %var._791 = alloca ptr, align 8
  %var._788 = alloca ptr, align 8
  %var._721 = alloca i64, align 8
  %var._i720 = alloca i64, align 8
  %loop.step.92 = alloca i64, align 8
  %loop.idx.92 = alloca i64, align 8
  %var.tb = alloca ptr, align 8
  %var.e = alloca ptr, align 8
  %var._707 = alloca ptr, align 8
  %var.cres = alloca ptr, align 8
  %var._661 = alloca ptr, align 8
  %var.child_res = alloca { i1, i64 }, align 8
  %var.has_eq = alloca i1, align 1
  %var.cand_line = alloca ptr, align 8
  %var._621 = alloca ptr, align 8
  %var._618 = alloca ptr, align 8
  %var.cand = alloca ptr, align 8
  %var._501 = alloca ptr, align 8
  %var._498 = alloca ptr, align 8
  %var._431 = alloca i64, align 8
  %var._i430 = alloca i64, align 8
  %loop.step.91 = alloca i64, align 8
  %loop.idx.91 = alloca i64, align 8
  %"var.child_ind'" = alloca i64, align 8
  %"var.next_idx'" = alloca i64, align 8
  %var.after_trim = alloca ptr, align 8
  %var.after = alloca ptr, align 8
  %var.k = alloca ptr, align 8
  %var.eq_idx = alloca i64, align 8
  %var.c_val = alloca ptr, align 8
  %var.is_comment = alloca i1, align 1
  %var.pl = alloca ptr, align 8
  %var._52 = alloca ptr, align 8
  %var._49 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.89 = alloca i64, align 8
  %loop.idx.89 = alloca i64, align 8
  %"var.base_indent'" = alloca i64, align 8
  %"var.err_val'" = alloca ptr, align 8
  %"var.has_err'" = alloca i1, align 1
  %var.total = alloca i64, align 8
  %"var.idx'" = alloca i64, align 8
  %var.doc = alloca ptr, align 8
  %var.file = alloca ptr, align 8
  %var.min_indent = alloca i64, align 8
  %var.start_idx = alloca i64, align 8
  %var.lines = alloca ptr, align 8
  store ptr %0, ptr %var.lines, align 8
  store i64 %1, ptr %var.start_idx, align 8
  store i64 %2, ptr %var.min_indent, align 8
  store ptr %3, ptr %var.file, align 8
  %call.res = call ptr @"ccl::doc_new"()
  store ptr %call.res, ptr %var.doc, align 8
  %var.load = load i64, ptr %var.start_idx, align 8
  store i64 %var.load, ptr %"var.idx'", align 8
  %var.load1 = load ptr, ptr %var.lines, align 8
  %a.load = load ptr, ptr %var.lines, align 8
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
  store ptr %a.create2, ptr %var.lines, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.lines, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query4 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query4, ptr %var.total, align 8
  store i1 false, ptr %"var.has_err'", align 1
  %var.load5 = load ptr, ptr %var.file, align 8
  %copy.len = load i64, ptr @str.0.struct, align 8
  %copy.len6 = and i64 %copy.len, 281474976710655
  %str.tag = lshr i64 %copy.len, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %a.after
  %arena.cur7 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur7, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %a.after
  %copy.len8 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %copy.alen = add i64 %copy.len6, 1
  %arena.cur9 = call ptr @dva_arena_current()
  %copy.buf = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 %copy.alen)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %copy.buf, ptr align 1 %copy.len8, i64 %copy.len6, i1 false)
  %copy.nul = getelementptr i8, ptr %copy.buf, i64 %copy.len6
  store i8 0, ptr %copy.nul, align 1
  %arena.cur10 = call ptr @dva_arena_current()
  %copy.str = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 16)
  %str.copy.len.gep = getelementptr inbounds { i64, ptr }, ptr %copy.str, i32 0, i32 0
  store i64 %copy.len6, ptr %str.copy.len.gep, align 8
  %str.copy.data.gep = getelementptr inbounds { i64, ptr }, ptr %copy.str, i32 0, i32 1
  store ptr %copy.buf, ptr %str.copy.data.gep, align 8
  %call.res11 = call ptr @"ccl::ccl_error"(ptr %var.load5, ptr %copy.str, i64 0, i64 0)
  store ptr %call.res11, ptr %"var.err_val'", align 8
  store i64 -1, ptr %"var.base_indent'", align 8
  store i64 0, ptr %loop.idx.89, align 8
  br label %loop.header.89

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.89:                                   ; preds = %loop.latch.89, %str_ok
  %counter.load = load i64, ptr %loop.idx.89, align 8
  br label %loop.body.89

loop.body.89:                                     ; preds = %loop.header.89
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.89, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load12 = load i1, ptr %"var.has_err'", align 1
  br i1 %var.load12, label %choice.then, label %choice.exit

loop.exit.nat.89:                                 ; No predecessors!
  br label %loop.exit.89

loop.latch.89:                                    ; preds = %choice.exit77
  %step.val1016 = load i64, ptr %loop.step.89, align 8
  %loop.next1017 = add i64 %counter.load, %step.val1016
  store i64 %loop.next1017, ptr %loop.idx.89, align 8
  br label %loop.header.89

loop.exit.89:                                     ; preds = %choice.then99, %choice.then91, %choice.then15, %choice.then, %loop.exit.nat.89
  %var.load1018 = load i1, ptr %"var.has_err'", align 1
  br i1 %var.load1018, label %choice.then1019, label %choice.else1020

choice.then:                                      ; preds = %loop.body.89
  br label %loop.exit.89

choice.exit:                                      ; preds = %loop.body.89
  %var.load13 = load i64, ptr %"var.idx'", align 8
  %var.load14 = load i64, ptr %var.total, align 8
  %cmptmp = icmp sge i64 %var.load13, %var.load14
  br i1 %cmptmp, label %choice.then15, label %choice.exit16

choice.then15:                                    ; preds = %choice.exit
  br label %loop.exit.89

choice.exit16:                                    ; preds = %choice.exit
  %var.load17 = load ptr, ptr %var.lines, align 8
  %a.load18 = load ptr, ptr %var.lines, align 8
  %a.null19 = icmp eq ptr %a.load18, null
  br i1 %a.null19, label %a.create20, label %a.after21

a.create20:                                       ; preds = %choice.exit16
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
  store ptr %a.create23, ptr %var.lines, align 8
  br label %a.after21

a.after21:                                        ; preds = %a.create20, %choice.exit16
  %a.load229 = load ptr, ptr %var.lines, align 8
  %var.load30 = load i64, ptr %"var.idx'", align 8
  %a.rd.nonnull = icmp ne ptr %a.load229, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after21
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load229, i32 0, i32 0
  %a.rd.len31 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load30, 0
  %a.rd.lt = icmp slt i64 %var.load30, %a.rd.len31
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load229, i32 0, i32 1
  %a.rd.data32 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data32, i64 %var.load30
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after21
  %arena.cur33 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 223, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 24, ptr %err.col.gep, align 8
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
  store ptr @str.3.struct, ptr %err.msg.gep37, align 8
  %err.file.gep38 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc35, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep38, align 8
  %err.line.gep39 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc35, i32 0, i32 3
  store i64 223, ptr %err.line.gep39, align 8
  %err.col.gep40 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc35, i32 0, i32 4
  store i64 24, ptr %err.col.gep40, align 8
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
  %ram.tag45 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag45, label %choice.then46, label %choice.else

choice.then46:                                    ; preds = %a.rd.done
  %ram.pay48 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay48 to ptr
  store ptr %pay.ptr, ptr %var._49, align 8
  br label %choice.exit47

choice.else:                                      ; preds = %a.rd.done
  %ram.pay50 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr51 = inttoptr i64 %ram.pay50 to ptr
  store ptr %pay.ptr51, ptr %var._52, align 8
  %arena.cur53 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld54 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld54, align 8
  %rec.fld55 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr @str.0.struct, ptr %rec.fld55, align 8
  br label %choice.exit47

choice.exit47:                                    ; preds = %choice.else, %choice.then46
  %choice.res = phi ptr [ %pay.ptr, %choice.then46 ], [ %rec.alloc, %choice.else ]
  store ptr %choice.res, ptr %var.pl, align 8
  %var.load56 = load ptr, ptr %var.pl, align 8
  %fld.gep = getelementptr inbounds { i64, i64, ptr }, ptr %var.load56, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len57 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len58 = and i64 %eq.lhs.len57, 281474976710655
  %str.tag59 = lshr i64 %eq.lhs.len57, 48
  %str.immortal60 = icmp eq i64 %str.tag59, 0
  br i1 %str.immortal60, label %str_ok62, label %str_gen_check61

str_gen_check61:                                  ; preds = %choice.exit47
  %arena.cur64 = call ptr @dva_arena_current()
  %tag.valid65 = call i1 @dva_arena_validate_tag(ptr %arena.cur64, i64 %str.tag59)
  br i1 %tag.valid65, label %str_ok62, label %str_stale63

str_ok62:                                         ; preds = %str_stale63, %str_gen_check61, %choice.exit47
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len66 = and i64 %eq.rhs.len, 281474976710655
  %str.tag67 = lshr i64 %eq.rhs.len, 48
  %str.immortal68 = icmp eq i64 %str.tag67, 0
  br i1 %str.immortal68, label %str_ok70, label %str_gen_check69

str_stale63:                                      ; preds = %str_gen_check61
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok62

str_gen_check69:                                  ; preds = %str_ok62
  %arena.cur72 = call ptr @dva_arena_current()
  %tag.valid73 = call i1 @dva_arena_validate_tag(ptr %arena.cur72, i64 %str.tag67)
  br i1 %tag.valid73, label %str_ok70, label %str_stale71

str_ok70:                                         ; preds = %str_stale71, %str_gen_check69, %str_ok62
  %eq.len = icmp eq i64 %eq.lhs.len58, %eq.rhs.len66
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale71:                                      ; preds = %str_gen_check69
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok70

str.eq.then:                                      ; preds = %str_ok70
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data74 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data74, ptr %eq.rhs.data, i64 %eq.lhs.len58)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok70
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then75, label %choice.else76

choice.then75:                                    ; preds = %str.eq.merge
  %var.load78 = load i64, ptr %"var.idx'", align 8
  %addtmp = add i64 %var.load78, 1
  store i64 %addtmp, ptr %"var.idx'", align 8
  br label %choice.exit77

choice.else76:                                    ; preds = %str.eq.merge
  %var.load79 = load i64, ptr %"var.base_indent'", align 8
  %cmptmp80 = icmp slt i64 %var.load79, 0
  br i1 %cmptmp80, label %choice.then81, label %choice.exit82

choice.exit77:                                    ; preds = %choice.exit93, %choice.then75
  br label %loop.latch.89

choice.then81:                                    ; preds = %choice.else76
  %var.load83 = load ptr, ptr %var.pl, align 8
  %fld.gep84 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load83, i32 0, i32 1
  %fld.load85 = load i64, ptr %fld.gep84, align 8
  store i64 %fld.load85, ptr %"var.base_indent'", align 8
  br label %choice.exit82

choice.exit82:                                    ; preds = %choice.then81, %choice.else76
  %var.load86 = load ptr, ptr %var.pl, align 8
  %fld.gep87 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load86, i32 0, i32 1
  %fld.load88 = load i64, ptr %fld.gep87, align 8
  %var.load89 = load i64, ptr %var.min_indent, align 8
  %cmptmp90 = icmp slt i64 %fld.load88, %var.load89
  br i1 %cmptmp90, label %choice.then91, label %choice.else92

choice.then91:                                    ; preds = %choice.exit82
  br label %loop.exit.89

choice.else92:                                    ; preds = %choice.exit82
  %var.load94 = load ptr, ptr %var.pl, align 8
  %fld.gep95 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load94, i32 0, i32 1
  %fld.load96 = load i64, ptr %fld.gep95, align 8
  %var.load97 = load i64, ptr %"var.base_indent'", align 8
  %cmptmp98 = icmp slt i64 %fld.load96, %var.load97
  br i1 %cmptmp98, label %choice.then99, label %choice.else100

choice.exit93:                                    ; preds = %choice.exit101
  br label %choice.exit77

choice.then99:                                    ; preds = %choice.else92
  br label %loop.exit.89

choice.else100:                                   ; preds = %choice.else92
  %var.load102 = load ptr, ptr %var.pl, align 8
  %fld.gep103 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load102, i32 0, i32 2
  %fld.load104 = load ptr, ptr %fld.gep103, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load104, i32 0, i32 0
  %str.len.query105 = load i64, ptr %str.len.query, align 8
  %str.len.query106 = and i64 %str.len.query105, 281474976710655
  %str.tag107 = lshr i64 %str.len.query105, 48
  %str.immortal108 = icmp eq i64 %str.tag107, 0
  br i1 %str.immortal108, label %str_ok110, label %str_gen_check109

choice.exit101:                                   ; preds = %choice.exit161
  br label %choice.exit93

str_gen_check109:                                 ; preds = %choice.else100
  %arena.cur112 = call ptr @dva_arena_current()
  %tag.valid113 = call i1 @dva_arena_validate_tag(ptr %arena.cur112, i64 %str.tag107)
  br i1 %tag.valid113, label %str_ok110, label %str_stale111

str_ok110:                                        ; preds = %str_stale111, %str_gen_check109, %choice.else100
  %cmptmp114 = icmp sgt i64 %str.len.query106, 1
  br i1 %cmptmp114, label %and.90.then, label %and.90.else

str_stale111:                                     ; preds = %str_gen_check109
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok110

and.90.then:                                      ; preds = %str_ok110
  %var.load115 = load ptr, ptr %var.pl, align 8
  %fld.gep116 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load115, i32 0, i32 2
  %fld.load117 = load ptr, ptr %fld.gep116, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load117, i32 0, i32 0
  %s.read.len118 = load i64, ptr %s.read.len, align 8
  %s.read.len119 = and i64 %s.read.len118, 281474976710655
  %str.tag120 = lshr i64 %s.read.len118, 48
  %str.immortal121 = icmp eq i64 %str.tag120, 0
  br i1 %str.immortal121, label %str_ok123, label %str_gen_check122

and.90.else:                                      ; preds = %str_ok110
  br label %and.90.exit

and.90.exit:                                      ; preds = %and.90.else, %str.eq.merge151
  %and.90.phi = phi i1 [ %str.eq.result157, %str.eq.merge151 ], [ %cmptmp114, %and.90.else ]
  store i1 %and.90.phi, ptr %var.is_comment, align 1
  %var.load158 = load i1, ptr %var.is_comment, align 1
  br i1 %var.load158, label %choice.then159, label %choice.else160

str_gen_check122:                                 ; preds = %and.90.then
  %arena.cur125 = call ptr @dva_arena_current()
  %tag.valid126 = call i1 @dva_arena_validate_tag(ptr %arena.cur125, i64 %str.tag120)
  br i1 %tag.valid126, label %str_ok123, label %str_stale124

str_ok123:                                        ; preds = %str_stale124, %str_gen_check122, %and.90.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load117, i32 0, i32 1
  %s.read.data127 = load ptr, ptr %s.read.data, align 8
  %rel.start = add i64 %s.read.len119, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len119
  %final.start = select i1 %start.gt.len, i64 %s.read.len119, i64 %c.start.0
  %rel.end = add i64 %s.read.len119, 2
  %norm.end = select i1 false, i64 %rel.end, i64 2
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len119
  %final.end = select i1 %end.gt.len, i64 %s.read.len119, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data127, i64 %final.start
  %arena.cur128 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur128, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %eq.lhs.len129 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len130 = load i64, ptr %eq.lhs.len129, align 8
  %eq.lhs.len131 = and i64 %eq.lhs.len130, 281474976710655
  %str.tag132 = lshr i64 %eq.lhs.len130, 48
  %str.immortal133 = icmp eq i64 %str.tag132, 0
  br i1 %str.immortal133, label %str_ok135, label %str_gen_check134

str_stale124:                                     ; preds = %str_gen_check122
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok123

str_gen_check134:                                 ; preds = %str_ok123
  %arena.cur137 = call ptr @dva_arena_current()
  %tag.valid138 = call i1 @dva_arena_validate_tag(ptr %arena.cur137, i64 %str.tag132)
  br i1 %tag.valid138, label %str_ok135, label %str_stale136

str_ok135:                                        ; preds = %str_stale136, %str_gen_check134, %str_ok123
  %eq.rhs.len139 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len140 = and i64 %eq.rhs.len139, 281474976710655
  %str.tag141 = lshr i64 %eq.rhs.len139, 48
  %str.immortal142 = icmp eq i64 %str.tag141, 0
  br i1 %str.immortal142, label %str_ok144, label %str_gen_check143

str_stale136:                                     ; preds = %str_gen_check134
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok135

str_gen_check143:                                 ; preds = %str_ok135
  %arena.cur146 = call ptr @dva_arena_current()
  %tag.valid147 = call i1 @dva_arena_validate_tag(ptr %arena.cur146, i64 %str.tag141)
  br i1 %tag.valid147, label %str_ok144, label %str_stale145

str_ok144:                                        ; preds = %str_stale145, %str_gen_check143, %str_ok135
  %eq.len148 = icmp eq i64 %eq.lhs.len131, %eq.rhs.len140
  br i1 %eq.len148, label %str.eq.then149, label %str.eq.else150

str_stale145:                                     ; preds = %str_gen_check143
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok144

str.eq.then149:                                   ; preds = %str_ok144
  %eq.lhs.data152 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data153 = load ptr, ptr %eq.lhs.data152, align 8
  %eq.rhs.data154 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp155 = call i32 @memcmp(ptr %eq.lhs.data153, ptr %eq.rhs.data154, i64 %eq.lhs.len131)
  %eq.cmp.zero156 = icmp eq i32 %eq.memcmp155, 0
  br label %str.eq.merge151

str.eq.else150:                                   ; preds = %str_ok144
  br label %str.eq.merge151

str.eq.merge151:                                  ; preds = %str.eq.else150, %str.eq.then149
  %str.eq.result157 = phi i1 [ %eq.cmp.zero156, %str.eq.then149 ], [ false, %str.eq.else150 ]
  br label %and.90.exit

choice.then159:                                   ; preds = %and.90.exit
  %var.load162 = load ptr, ptr %var.pl, align 8
  %fld.gep163 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load162, i32 0, i32 2
  %fld.load164 = load ptr, ptr %fld.gep163, align 8
  %s.read.len165 = getelementptr inbounds { i64, ptr }, ptr %fld.load164, i32 0, i32 0
  %s.read.len166 = load i64, ptr %s.read.len165, align 8
  %s.read.len167 = and i64 %s.read.len166, 281474976710655
  %str.tag168 = lshr i64 %s.read.len166, 48
  %str.immortal169 = icmp eq i64 %str.tag168, 0
  br i1 %str.immortal169, label %str_ok171, label %str_gen_check170

choice.else160:                                   ; preds = %and.90.exit
  %var.load225 = load ptr, ptr %var.pl, align 8
  %fld.gep226 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load225, i32 0, i32 2
  %fld.load227 = load ptr, ptr %fld.gep226, align 8
  %call.res228 = call i64 @"ccl::find_first_eq"(ptr %fld.load227)
  store i64 %call.res228, ptr %var.eq_idx, align 8
  %var.load229 = load i64, ptr %var.eq_idx, align 8
  %cmptmp230 = icmp slt i64 %var.load229, 0
  br i1 %cmptmp230, label %choice.then231, label %choice.else232

choice.exit161:                                   ; preds = %choice.exit233, %a.store
  br label %choice.exit101

str_gen_check170:                                 ; preds = %choice.then159
  %arena.cur173 = call ptr @dva_arena_current()
  %tag.valid174 = call i1 @dva_arena_validate_tag(ptr %arena.cur173, i64 %str.tag168)
  br i1 %tag.valid174, label %str_ok171, label %str_stale172

str_ok171:                                        ; preds = %str_stale172, %str_gen_check170, %choice.then159
  %s.read.data175 = getelementptr inbounds { i64, ptr }, ptr %fld.load164, i32 0, i32 1
  %s.read.data176 = load ptr, ptr %s.read.data175, align 8
  %rel.start177 = add i64 %s.read.len167, 2
  %norm.start178 = select i1 false, i64 %rel.start177, i64 2
  %start.lt.0179 = icmp slt i64 %norm.start178, 0
  %c.start.0180 = select i1 %start.lt.0179, i64 0, i64 %norm.start178
  %start.gt.len181 = icmp sgt i64 %c.start.0180, %s.read.len167
  %final.start182 = select i1 %start.gt.len181, i64 %s.read.len167, i64 %c.start.0180
  %end.is_neg = icmp slt i64 %s.read.len167, 0
  %rel.end183 = add i64 %s.read.len167, %s.read.len167
  %norm.end184 = select i1 %end.is_neg, i64 %rel.end183, i64 %s.read.len167
  %end.lt.0185 = icmp slt i64 %norm.end184, 0
  %c.end.0186 = select i1 %end.lt.0185, i64 0, i64 %norm.end184
  %end.gt.len187 = icmp sgt i64 %c.end.0186, %s.read.len167
  %final.end188 = select i1 %end.gt.len187, i64 %s.read.len167, i64 %c.end.0186
  %view.empty189 = icmp sle i64 %final.end188, %final.start182
  %view.len.sub190 = sub i64 %final.end188, %final.start182
  %view.len191 = select i1 %view.empty189, i64 0, i64 %view.len.sub190
  %view.data192 = getelementptr i8, ptr %s.read.data176, i64 %final.start182
  %arena.cur193 = call ptr @dva_arena_current()
  %str.view194 = call ptr @dva_arena_alloc(ptr %arena.cur193, i64 16)
  %str.build.len.gep195 = getelementptr inbounds { i64, ptr }, ptr %str.view194, i32 0, i32 0
  store i64 %view.len191, ptr %str.build.len.gep195, align 8
  %str.build.data.gep196 = getelementptr inbounds { i64, ptr }, ptr %str.view194, i32 0, i32 1
  store ptr %view.data192, ptr %str.build.data.gep196, align 8
  %call.res197 = call ptr @"ccl::trim_str"(ptr %str.view194)
  store ptr %call.res197, ptr %var.c_val, align 8
  %var.load198 = load ptr, ptr %var.c_val, align 8
  %var.load199 = load ptr, ptr %var.pl, align 8
  %fld.gep200 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load199, i32 0, i32 0
  %fld.load201 = load i64, ptr %fld.gep200, align 8
  %var.load202 = load ptr, ptr %var.pl, align 8
  %fld.gep203 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load202, i32 0, i32 1
  %fld.load204 = load i64, ptr %fld.gep203, align 8
  %addtmp205 = add i64 %fld.load204, 1
  %call.res206 = call ptr @"ccl::entry_new_str"(ptr @str.5.struct, ptr %var.load198, i64 %fld.load201, i64 %addtmp205)
  %a.load207 = load ptr, ptr %var.doc, align 8
  %a.null208 = icmp eq ptr %a.load207, null
  br i1 %a.null208, label %a.create209, label %a.after210

str_stale172:                                     ; preds = %str_gen_check170
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok171

a.create209:                                      ; preds = %str_ok171
  %arena.cur211 = call ptr @dva_arena_current()
  %a.create212 = call ptr @dva_arena_alloc(ptr %arena.cur211, i64 24)
  %arena.cur213 = call ptr @dva_arena_current()
  %a.buf214 = call ptr @dva_arena_alloc(ptr %arena.cur213, i64 128)
  %a.len.gep215 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create212, i32 0, i32 0
  store i64 0, ptr %a.len.gep215, align 8
  %a.data.gep216 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create212, i32 0, i32 1
  store ptr %a.buf214, ptr %a.data.gep216, align 8
  %a.cap.gep217 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create212, i32 0, i32 2
  store i64 16, ptr %a.cap.gep217, align 8
  store ptr %a.create212, ptr %var.doc, align 8
  br label %a.after210

a.after210:                                       ; preds = %a.create209, %str_ok171
  %a.load2218 = load ptr, ptr %var.doc, align 8
  br label %a.check

a.check:                                          ; preds = %a.after210
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2218, i32 0, i32 0
  %a.len219 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2218, i32 0, i32 2
  %a.cap220 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len219, %a.cap220
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2218)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2218, i32 0, i32 1
  %a.cur.data221 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2218, i32 0, i32 0
  %a.cur.len222 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data221, i64 %a.cur.len222
  %slot.p2i = ptrtoint ptr %call.res206 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len222, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2218, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load223 = load i64, ptr %"var.idx'", align 8
  %addtmp224 = add i64 %var.load223, 1
  store i64 %addtmp224, ptr %"var.idx'", align 8
  br label %choice.exit161

choice.then231:                                   ; preds = %choice.else160
  store i1 true, ptr %"var.has_err'", align 1
  %var.load234 = load ptr, ptr %var.file, align 8
  %var.load235 = load ptr, ptr %var.pl, align 8
  %fld.gep236 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load235, i32 0, i32 2
  %fld.load237 = load ptr, ptr %fld.gep236, align 8
  %concat.lhs = load i64, ptr @str.6.struct, align 8
  %concat.lhs238 = and i64 %concat.lhs, 281474976710655
  %str.tag239 = lshr i64 %concat.lhs, 48
  %str.immortal240 = icmp eq i64 %str.tag239, 0
  br i1 %str.immortal240, label %str_ok242, label %str_gen_check241

choice.else232:                                   ; preds = %choice.else160
  %var.load275 = load ptr, ptr %var.pl, align 8
  %fld.gep276 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load275, i32 0, i32 2
  %fld.load277 = load ptr, ptr %fld.gep276, align 8
  %s.read.len278 = getelementptr inbounds { i64, ptr }, ptr %fld.load277, i32 0, i32 0
  %s.read.len279 = load i64, ptr %s.read.len278, align 8
  %s.read.len280 = and i64 %s.read.len279, 281474976710655
  %str.tag281 = lshr i64 %s.read.len279, 48
  %str.immortal282 = icmp eq i64 %str.tag281, 0
  br i1 %str.immortal282, label %str_ok284, label %str_gen_check283

choice.exit233:                                   ; preds = %choice.exit385, %concat.tot.len261
  br label %choice.exit161

str_gen_check241:                                 ; preds = %choice.then231
  %arena.cur244 = call ptr @dva_arena_current()
  %tag.valid245 = call i1 @dva_arena_validate_tag(ptr %arena.cur244, i64 %str.tag239)
  br i1 %tag.valid245, label %str_ok242, label %str_stale243

str_ok242:                                        ; preds = %str_stale243, %str_gen_check241, %choice.then231
  %concat.lhs246 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %fld.load237, i32 0, i32 0
  %concat.rhs247 = load i64, ptr %concat.rhs, align 8
  %concat.rhs248 = and i64 %concat.rhs247, 281474976710655
  %str.tag249 = lshr i64 %concat.rhs247, 48
  %str.immortal250 = icmp eq i64 %str.tag249, 0
  br i1 %str.immortal250, label %str_ok252, label %str_gen_check251

str_stale243:                                     ; preds = %str_gen_check241
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok242

str_gen_check251:                                 ; preds = %str_ok242
  %arena.cur254 = call ptr @dva_arena_current()
  %tag.valid255 = call i1 @dva_arena_validate_tag(ptr %arena.cur254, i64 %str.tag249)
  br i1 %tag.valid255, label %str_ok252, label %str_stale253

str_ok252:                                        ; preds = %str_stale253, %str_gen_check251, %str_ok242
  %concat.rhs256 = getelementptr inbounds { i64, ptr }, ptr %fld.load237, i32 0, i32 1
  %concat.rhs257 = load ptr, ptr %concat.rhs256, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs238, i64 %concat.rhs248)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len258

str_stale253:                                     ; preds = %str_gen_check251
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok252

concat.sum.len258:                                ; preds = %str_overflow_abort, %str_ok252
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum259 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf260 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf260, label %str_overflow_abort262, label %concat.tot.len261

str_overflow_abort:                               ; preds = %str_ok252
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len258

concat.tot.len261:                                ; preds = %str_overflow_abort262, %concat.sum.len258
  %arena.cur263 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur263, i64 %sum259)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs246, i64 %concat.lhs238, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs238
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs257, i64 %concat.rhs248, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur264 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur264, i64 16)
  %str.build.len.gep265 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep265, align 8
  %str.build.data.gep266 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep266, align 8
  %var.load267 = load ptr, ptr %var.pl, align 8
  %fld.gep268 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load267, i32 0, i32 0
  %fld.load269 = load i64, ptr %fld.gep268, align 8
  %var.load270 = load ptr, ptr %var.pl, align 8
  %fld.gep271 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load270, i32 0, i32 1
  %fld.load272 = load i64, ptr %fld.gep271, align 8
  %addtmp273 = add i64 %fld.load272, 1
  %call.res274 = call ptr @"ccl::ccl_error"(ptr %var.load234, ptr %concat.str, i64 %fld.load269, i64 %addtmp273)
  store ptr %call.res274, ptr %"var.err_val'", align 8
  br label %choice.exit233

str_overflow_abort262:                            ; preds = %concat.sum.len258
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len261

str_gen_check283:                                 ; preds = %choice.else232
  %arena.cur286 = call ptr @dva_arena_current()
  %tag.valid287 = call i1 @dva_arena_validate_tag(ptr %arena.cur286, i64 %str.tag281)
  br i1 %tag.valid287, label %str_ok284, label %str_stale285

str_ok284:                                        ; preds = %str_stale285, %str_gen_check283, %choice.else232
  %s.read.data288 = getelementptr inbounds { i64, ptr }, ptr %fld.load277, i32 0, i32 1
  %s.read.data289 = load ptr, ptr %s.read.data288, align 8
  %var.load290 = load i64, ptr %var.eq_idx, align 8
  %rel.start291 = add i64 %s.read.len280, 0
  %norm.start292 = select i1 false, i64 %rel.start291, i64 0
  %start.lt.0293 = icmp slt i64 %norm.start292, 0
  %c.start.0294 = select i1 %start.lt.0293, i64 0, i64 %norm.start292
  %start.gt.len295 = icmp sgt i64 %c.start.0294, %s.read.len280
  %final.start296 = select i1 %start.gt.len295, i64 %s.read.len280, i64 %c.start.0294
  %end.is_neg297 = icmp slt i64 %var.load290, 0
  %rel.end298 = add i64 %s.read.len280, %var.load290
  %norm.end299 = select i1 %end.is_neg297, i64 %rel.end298, i64 %var.load290
  %end.lt.0300 = icmp slt i64 %norm.end299, 0
  %c.end.0301 = select i1 %end.lt.0300, i64 0, i64 %norm.end299
  %end.gt.len302 = icmp sgt i64 %c.end.0301, %s.read.len280
  %final.end303 = select i1 %end.gt.len302, i64 %s.read.len280, i64 %c.end.0301
  %view.empty304 = icmp sle i64 %final.end303, %final.start296
  %view.len.sub305 = sub i64 %final.end303, %final.start296
  %view.len306 = select i1 %view.empty304, i64 0, i64 %view.len.sub305
  %view.data307 = getelementptr i8, ptr %s.read.data289, i64 %final.start296
  %arena.cur308 = call ptr @dva_arena_current()
  %str.view309 = call ptr @dva_arena_alloc(ptr %arena.cur308, i64 16)
  %str.build.len.gep310 = getelementptr inbounds { i64, ptr }, ptr %str.view309, i32 0, i32 0
  store i64 %view.len306, ptr %str.build.len.gep310, align 8
  %str.build.data.gep311 = getelementptr inbounds { i64, ptr }, ptr %str.view309, i32 0, i32 1
  store ptr %view.data307, ptr %str.build.data.gep311, align 8
  %call.res312 = call ptr @"ccl::trim_str"(ptr %str.view309)
  store ptr %call.res312, ptr %var.k, align 8
  %var.load313 = load ptr, ptr %var.pl, align 8
  %fld.gep314 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load313, i32 0, i32 2
  %fld.load315 = load ptr, ptr %fld.gep314, align 8
  %s.read.len316 = getelementptr inbounds { i64, ptr }, ptr %fld.load315, i32 0, i32 0
  %s.read.len317 = load i64, ptr %s.read.len316, align 8
  %s.read.len318 = and i64 %s.read.len317, 281474976710655
  %str.tag319 = lshr i64 %s.read.len317, 48
  %str.immortal320 = icmp eq i64 %str.tag319, 0
  br i1 %str.immortal320, label %str_ok322, label %str_gen_check321

str_stale285:                                     ; preds = %str_gen_check283
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok284

str_gen_check321:                                 ; preds = %str_ok284
  %arena.cur324 = call ptr @dva_arena_current()
  %tag.valid325 = call i1 @dva_arena_validate_tag(ptr %arena.cur324, i64 %str.tag319)
  br i1 %tag.valid325, label %str_ok322, label %str_stale323

str_ok322:                                        ; preds = %str_stale323, %str_gen_check321, %str_ok284
  %s.read.data326 = getelementptr inbounds { i64, ptr }, ptr %fld.load315, i32 0, i32 1
  %s.read.data327 = load ptr, ptr %s.read.data326, align 8
  %var.load328 = load i64, ptr %var.eq_idx, align 8
  %addtmp329 = add i64 %var.load328, 1
  %start.is_neg = icmp slt i64 %addtmp329, 0
  %rel.start330 = add i64 %s.read.len318, %addtmp329
  %norm.start331 = select i1 %start.is_neg, i64 %rel.start330, i64 %addtmp329
  %start.lt.0332 = icmp slt i64 %norm.start331, 0
  %c.start.0333 = select i1 %start.lt.0332, i64 0, i64 %norm.start331
  %start.gt.len334 = icmp sgt i64 %c.start.0333, %s.read.len318
  %final.start335 = select i1 %start.gt.len334, i64 %s.read.len318, i64 %c.start.0333
  %end.is_neg336 = icmp slt i64 %s.read.len318, 0
  %rel.end337 = add i64 %s.read.len318, %s.read.len318
  %norm.end338 = select i1 %end.is_neg336, i64 %rel.end337, i64 %s.read.len318
  %end.lt.0339 = icmp slt i64 %norm.end338, 0
  %c.end.0340 = select i1 %end.lt.0339, i64 0, i64 %norm.end338
  %end.gt.len341 = icmp sgt i64 %c.end.0340, %s.read.len318
  %final.end342 = select i1 %end.gt.len341, i64 %s.read.len318, i64 %c.end.0340
  %view.empty343 = icmp sle i64 %final.end342, %final.start335
  %view.len.sub344 = sub i64 %final.end342, %final.start335
  %view.len345 = select i1 %view.empty343, i64 0, i64 %view.len.sub344
  %view.data346 = getelementptr i8, ptr %s.read.data327, i64 %final.start335
  %arena.cur347 = call ptr @dva_arena_current()
  %str.view348 = call ptr @dva_arena_alloc(ptr %arena.cur347, i64 16)
  %str.build.len.gep349 = getelementptr inbounds { i64, ptr }, ptr %str.view348, i32 0, i32 0
  store i64 %view.len345, ptr %str.build.len.gep349, align 8
  %str.build.data.gep350 = getelementptr inbounds { i64, ptr }, ptr %str.view348, i32 0, i32 1
  store ptr %view.data346, ptr %str.build.data.gep350, align 8
  store ptr %str.view348, ptr %var.after, align 8
  %var.load351 = load ptr, ptr %var.after, align 8
  %call.res352 = call ptr @"ccl::trim_str"(ptr %var.load351)
  store ptr %call.res352, ptr %var.after_trim, align 8
  %var.load353 = load ptr, ptr %var.after_trim, align 8
  %eq.lhs.len354 = getelementptr inbounds { i64, ptr }, ptr %var.load353, i32 0, i32 0
  %eq.lhs.len355 = load i64, ptr %eq.lhs.len354, align 8
  %eq.lhs.len356 = and i64 %eq.lhs.len355, 281474976710655
  %str.tag357 = lshr i64 %eq.lhs.len355, 48
  %str.immortal358 = icmp eq i64 %str.tag357, 0
  br i1 %str.immortal358, label %str_ok360, label %str_gen_check359

str_stale323:                                     ; preds = %str_gen_check321
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok322

str_gen_check359:                                 ; preds = %str_ok322
  %arena.cur362 = call ptr @dva_arena_current()
  %tag.valid363 = call i1 @dva_arena_validate_tag(ptr %arena.cur362, i64 %str.tag357)
  br i1 %tag.valid363, label %str_ok360, label %str_stale361

str_ok360:                                        ; preds = %str_stale361, %str_gen_check359, %str_ok322
  %eq.rhs.len364 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len365 = and i64 %eq.rhs.len364, 281474976710655
  %str.tag366 = lshr i64 %eq.rhs.len364, 48
  %str.immortal367 = icmp eq i64 %str.tag366, 0
  br i1 %str.immortal367, label %str_ok369, label %str_gen_check368

str_stale361:                                     ; preds = %str_gen_check359
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok360

str_gen_check368:                                 ; preds = %str_ok360
  %arena.cur371 = call ptr @dva_arena_current()
  %tag.valid372 = call i1 @dva_arena_validate_tag(ptr %arena.cur371, i64 %str.tag366)
  br i1 %tag.valid372, label %str_ok369, label %str_stale370

str_ok369:                                        ; preds = %str_stale370, %str_gen_check368, %str_ok360
  %eq.len373 = icmp eq i64 %eq.lhs.len356, %eq.rhs.len365
  br i1 %eq.len373, label %str.eq.then374, label %str.eq.else375

str_stale370:                                     ; preds = %str_gen_check368
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok369

str.eq.then374:                                   ; preds = %str_ok369
  %eq.lhs.data377 = getelementptr inbounds { i64, ptr }, ptr %var.load353, i32 0, i32 1
  %eq.lhs.data378 = load ptr, ptr %eq.lhs.data377, align 8
  %eq.rhs.data379 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp380 = call i32 @memcmp(ptr %eq.lhs.data378, ptr %eq.rhs.data379, i64 %eq.lhs.len356)
  %eq.cmp.zero381 = icmp eq i32 %eq.memcmp380, 0
  br label %str.eq.merge376

str.eq.else375:                                   ; preds = %str_ok369
  br label %str.eq.merge376

str.eq.merge376:                                  ; preds = %str.eq.else375, %str.eq.then374
  %str.eq.result382 = phi i1 [ %eq.cmp.zero381, %str.eq.then374 ], [ false, %str.eq.else375 ]
  %str.neq = xor i1 %str.eq.result382, true
  br i1 %str.neq, label %choice.then383, label %choice.else384

choice.then383:                                   ; preds = %str.eq.merge376
  %var.load386 = load ptr, ptr %var.k, align 8
  %var.load387 = load ptr, ptr %var.after_trim, align 8
  %var.load388 = load ptr, ptr %var.pl, align 8
  %fld.gep389 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load388, i32 0, i32 0
  %fld.load390 = load i64, ptr %fld.gep389, align 8
  %var.load391 = load ptr, ptr %var.pl, align 8
  %fld.gep392 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load391, i32 0, i32 1
  %fld.load393 = load i64, ptr %fld.gep392, align 8
  %addtmp394 = add i64 %fld.load393, 1
  %call.res395 = call ptr @"ccl::entry_new_str"(ptr %var.load386, ptr %var.load387, i64 %fld.load390, i64 %addtmp394)
  %a.load396 = load ptr, ptr %var.doc, align 8
  %a.null397 = icmp eq ptr %a.load396, null
  br i1 %a.null397, label %a.create398, label %a.after399

choice.else384:                                   ; preds = %str.eq.merge376
  %var.load426 = load i64, ptr %"var.idx'", align 8
  %addtmp427 = add i64 %var.load426, 1
  store i64 %addtmp427, ptr %"var.next_idx'", align 8
  store i64 -1, ptr %"var.child_ind'", align 8
  store i64 0, ptr %loop.idx.91, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.91

choice.exit385:                                   ; preds = %choice.exit556, %a.store410
  br label %choice.exit233

a.create398:                                      ; preds = %choice.then383
  %arena.cur400 = call ptr @dva_arena_current()
  %a.create401 = call ptr @dva_arena_alloc(ptr %arena.cur400, i64 24)
  %arena.cur402 = call ptr @dva_arena_current()
  %a.buf403 = call ptr @dva_arena_alloc(ptr %arena.cur402, i64 128)
  %a.len.gep404 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create401, i32 0, i32 0
  store i64 0, ptr %a.len.gep404, align 8
  %a.data.gep405 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create401, i32 0, i32 1
  store ptr %a.buf403, ptr %a.data.gep405, align 8
  %a.cap.gep406 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create401, i32 0, i32 2
  store i64 16, ptr %a.cap.gep406, align 8
  store ptr %a.create401, ptr %var.doc, align 8
  br label %a.after399

a.after399:                                       ; preds = %a.create398, %choice.then383
  %a.load2407 = load ptr, ptr %var.doc, align 8
  br label %a.check408

a.check408:                                       ; preds = %a.after399
  %a.len411 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2407, i32 0, i32 0
  %a.len412 = load i64, ptr %a.len411, align 8
  %a.cap413 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2407, i32 0, i32 2
  %a.cap414 = load i64, ptr %a.cap413, align 8
  %a.needs.grow415 = icmp eq i64 %a.len412, %a.cap414
  br i1 %a.needs.grow415, label %a.grow409, label %a.store410

a.grow409:                                        ; preds = %a.check408
  call void @dva_array_grow(ptr %a.load2407)
  br label %a.store410

a.store410:                                       ; preds = %a.grow409, %a.check408
  %a.cur.data416 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2407, i32 0, i32 1
  %a.cur.data417 = load ptr, ptr %a.cur.data416, align 8
  %a.cur.len418 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2407, i32 0, i32 0
  %a.cur.len419 = load i64, ptr %a.cur.len418, align 8
  %a.elem.gep420 = getelementptr i64, ptr %a.cur.data417, i64 %a.cur.len419
  %slot.p2i421 = ptrtoint ptr %call.res395 to i64
  store i64 %slot.p2i421, ptr %a.elem.gep420, align 8
  %a.next.len422 = add i64 %a.cur.len419, 1
  %b.len.gep423 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2407, i32 0, i32 0
  store i64 %a.next.len422, ptr %b.len.gep423, align 8
  %var.load424 = load i64, ptr %"var.idx'", align 8
  %addtmp425 = add i64 %var.load424, 1
  store i64 %addtmp425, ptr %"var.idx'", align 8
  br label %choice.exit385

loop.header.91:                                   ; preds = %loop.latch.91, %choice.else384
  %counter.load428 = load i64, ptr %loop.idx.91, align 8
  br label %loop.body.91

loop.body.91:                                     ; preds = %loop.header.91
  %loop.rel.i429 = sub i64 %counter.load428, 0
  store i64 1, ptr %loop.step.91, align 8
  store i64 %loop.rel.i429, ptr %var._i430, align 8
  store i64 %counter.load428, ptr %var._431, align 8
  %var.load432 = load i64, ptr %"var.next_idx'", align 8
  %var.load433 = load i64, ptr %var.total, align 8
  %cmptmp434 = icmp sge i64 %var.load432, %var.load433
  br i1 %cmptmp434, label %choice.then435, label %choice.exit436

loop.exit.nat.91:                                 ; No predecessors!
  br label %loop.exit.91

loop.latch.91:                                    ; preds = %choice.exit543
  %step.val = load i64, ptr %loop.step.91, align 8
  %loop.next = add i64 %counter.load428, %step.val
  store i64 %loop.next, ptr %loop.idx.91, align 8
  br label %loop.header.91

loop.exit.91:                                     ; preds = %choice.then541, %choice.then435, %loop.exit.nat.91
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load549 = load i64, ptr %"var.child_ind'", align 8
  %var.load550 = load ptr, ptr %var.pl, align 8
  %fld.gep551 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load550, i32 0, i32 1
  %fld.load552 = load i64, ptr %fld.gep551, align 8
  %cmptmp553 = icmp sgt i64 %var.load549, %fld.load552
  br i1 %cmptmp553, label %choice.then554, label %choice.else555

choice.then435:                                   ; preds = %loop.body.91
  br label %loop.exit.91

choice.exit436:                                   ; preds = %loop.body.91
  %var.load437 = load ptr, ptr %var.lines, align 8
  %a.load438 = load ptr, ptr %var.lines, align 8
  %a.null439 = icmp eq ptr %a.load438, null
  br i1 %a.null439, label %a.create440, label %a.after441

a.create440:                                      ; preds = %choice.exit436
  %arena.cur442 = call ptr @dva_arena_current()
  %a.create443 = call ptr @dva_arena_alloc(ptr %arena.cur442, i64 24)
  %arena.cur444 = call ptr @dva_arena_current()
  %a.buf445 = call ptr @dva_arena_alloc(ptr %arena.cur444, i64 128)
  %a.len.gep446 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create443, i32 0, i32 0
  store i64 0, ptr %a.len.gep446, align 8
  %a.data.gep447 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create443, i32 0, i32 1
  store ptr %a.buf445, ptr %a.data.gep447, align 8
  %a.cap.gep448 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create443, i32 0, i32 2
  store i64 16, ptr %a.cap.gep448, align 8
  store ptr %a.create443, ptr %var.lines, align 8
  br label %a.after441

a.after441:                                       ; preds = %a.create440, %choice.exit436
  %a.load2449 = load ptr, ptr %var.lines, align 8
  %var.load450 = load i64, ptr %"var.next_idx'", align 8
  %a.rd.nonnull451 = icmp ne ptr %a.load2449, null
  br i1 %a.rd.nonnull451, label %a.rd.check452, label %a.rd.err.null454

a.rd.check452:                                    ; preds = %a.after441
  %a.rd.len457 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2449, i32 0, i32 0
  %a.rd.len458 = load i64, ptr %a.rd.len457, align 8
  %a.rd.ge0459 = icmp sge i64 %var.load450, 0
  %a.rd.lt460 = icmp slt i64 %var.load450, %a.rd.len458
  %a.rd.bounds461 = and i1 %a.rd.ge0459, %a.rd.lt460
  br i1 %a.rd.bounds461, label %a.rd.ok453, label %a.rd.err.oob455

a.rd.ok453:                                       ; preds = %a.rd.check452
  %a.rd.data462 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2449, i32 0, i32 1
  %a.rd.data463 = load ptr, ptr %a.rd.data462, align 8
  %a.rd.elem.gep464 = getelementptr i64, ptr %a.rd.data463, i64 %var.load450
  %a.rd.elem465 = load i64, ptr %a.rd.elem.gep464, align 8
  br label %a.rd.done456

a.rd.err.null454:                                 ; preds = %a.after441
  %arena.cur466 = call ptr @dva_arena_current()
  %err.alloc467 = call ptr @dva_arena_alloc(ptr %arena.cur466, i64 56)
  %err.code.gep468 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc467, i32 0, i32 0
  store i64 4011, ptr %err.code.gep468, align 8
  %err.msg.gep469 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc467, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep469, align 8
  %err.file.gep470 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc467, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep470, align 8
  %err.line.gep471 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc467, i32 0, i32 3
  store i64 265, ptr %err.line.gep471, align 8
  %err.col.gep472 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc467, i32 0, i32 4
  store i64 70, ptr %err.col.gep472, align 8
  %err.ctx.gep473 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc467, i32 0, i32 5
  %err.ctx0.gep474 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep473, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep474, align 8
  %err.ctx1.gep475 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep473, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep475, align 8
  %err.p2i476 = ptrtoint ptr %err.alloc467 to i64
  br label %a.rd.done456

a.rd.err.oob455:                                  ; preds = %a.rd.check452
  %arena.cur477 = call ptr @dva_arena_current()
  %err.alloc478 = call ptr @dva_arena_alloc(ptr %arena.cur477, i64 56)
  %err.code.gep479 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc478, i32 0, i32 0
  store i64 4011, ptr %err.code.gep479, align 8
  %err.msg.gep480 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc478, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep480, align 8
  %err.file.gep481 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc478, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep481, align 8
  %err.line.gep482 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc478, i32 0, i32 3
  store i64 265, ptr %err.line.gep482, align 8
  %err.col.gep483 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc478, i32 0, i32 4
  store i64 70, ptr %err.col.gep483, align 8
  %err.ctx.gep484 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc478, i32 0, i32 5
  %err.ctx0.gep485 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep484, i32 0, i32 0
  store i64 %var.load450, ptr %err.ctx0.gep485, align 8
  %err.ctx1.gep486 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep484, i32 0, i32 1
  store i64 %a.rd.len458, ptr %err.ctx1.gep486, align 8
  %err.p2i487 = ptrtoint ptr %err.alloc478 to i64
  br label %a.rd.done456

a.rd.done456:                                     ; preds = %a.rd.err.oob455, %a.rd.err.null454, %a.rd.ok453
  %a.rd.tag488 = phi i1 [ true, %a.rd.ok453 ], [ false, %a.rd.err.null454 ], [ false, %a.rd.err.oob455 ]
  %a.rd.pay489 = phi i64 [ %a.rd.elem465, %a.rd.ok453 ], [ %err.p2i476, %a.rd.err.null454 ], [ %err.p2i487, %a.rd.err.oob455 ]
  %ram.tag490 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag488, 0
  %ram.pay491 = insertvalue { i1, i64 } %ram.tag490, i64 %a.rd.pay489, 1
  %ram.tag492 = extractvalue { i1, i64 } %ram.pay491, 0
  br i1 %ram.tag492, label %choice.then493, label %choice.else494

choice.then493:                                   ; preds = %a.rd.done456
  %ram.pay496 = extractvalue { i1, i64 } %ram.pay491, 1
  %pay.ptr497 = inttoptr i64 %ram.pay496 to ptr
  store ptr %pay.ptr497, ptr %var._498, align 8
  br label %choice.exit495

choice.else494:                                   ; preds = %a.rd.done456
  %ram.pay499 = extractvalue { i1, i64 } %ram.pay491, 1
  %pay.ptr500 = inttoptr i64 %ram.pay499 to ptr
  store ptr %pay.ptr500, ptr %var._501, align 8
  %arena.cur502 = call ptr @dva_arena_current()
  %rec.alloc503 = call ptr @dva_arena_alloc(ptr %arena.cur502, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld504 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc503, i32 0, i32 0
  store i64 0, ptr %rec.fld504, align 8
  %rec.fld505 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc503, i32 0, i32 1
  store i64 0, ptr %rec.fld505, align 8
  %rec.fld506 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc503, i32 0, i32 2
  store ptr @str.0.struct, ptr %rec.fld506, align 8
  br label %choice.exit495

choice.exit495:                                   ; preds = %choice.else494, %choice.then493
  %choice.res507 = phi ptr [ %pay.ptr497, %choice.then493 ], [ %rec.alloc503, %choice.else494 ]
  store ptr %choice.res507, ptr %var.cand, align 8
  %var.load508 = load ptr, ptr %var.cand, align 8
  %fld.gep509 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load508, i32 0, i32 2
  %fld.load510 = load ptr, ptr %fld.gep509, align 8
  %eq.lhs.len511 = getelementptr inbounds { i64, ptr }, ptr %fld.load510, i32 0, i32 0
  %eq.lhs.len512 = load i64, ptr %eq.lhs.len511, align 8
  %eq.lhs.len513 = and i64 %eq.lhs.len512, 281474976710655
  %str.tag514 = lshr i64 %eq.lhs.len512, 48
  %str.immortal515 = icmp eq i64 %str.tag514, 0
  br i1 %str.immortal515, label %str_ok517, label %str_gen_check516

str_gen_check516:                                 ; preds = %choice.exit495
  %arena.cur519 = call ptr @dva_arena_current()
  %tag.valid520 = call i1 @dva_arena_validate_tag(ptr %arena.cur519, i64 %str.tag514)
  br i1 %tag.valid520, label %str_ok517, label %str_stale518

str_ok517:                                        ; preds = %str_stale518, %str_gen_check516, %choice.exit495
  %eq.rhs.len521 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len522 = and i64 %eq.rhs.len521, 281474976710655
  %str.tag523 = lshr i64 %eq.rhs.len521, 48
  %str.immortal524 = icmp eq i64 %str.tag523, 0
  br i1 %str.immortal524, label %str_ok526, label %str_gen_check525

str_stale518:                                     ; preds = %str_gen_check516
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok517

str_gen_check525:                                 ; preds = %str_ok517
  %arena.cur528 = call ptr @dva_arena_current()
  %tag.valid529 = call i1 @dva_arena_validate_tag(ptr %arena.cur528, i64 %str.tag523)
  br i1 %tag.valid529, label %str_ok526, label %str_stale527

str_ok526:                                        ; preds = %str_stale527, %str_gen_check525, %str_ok517
  %eq.len530 = icmp eq i64 %eq.lhs.len513, %eq.rhs.len522
  br i1 %eq.len530, label %str.eq.then531, label %str.eq.else532

str_stale527:                                     ; preds = %str_gen_check525
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok526

str.eq.then531:                                   ; preds = %str_ok526
  %eq.lhs.data534 = getelementptr inbounds { i64, ptr }, ptr %fld.load510, i32 0, i32 1
  %eq.lhs.data535 = load ptr, ptr %eq.lhs.data534, align 8
  %eq.rhs.data536 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp537 = call i32 @memcmp(ptr %eq.lhs.data535, ptr %eq.rhs.data536, i64 %eq.lhs.len513)
  %eq.cmp.zero538 = icmp eq i32 %eq.memcmp537, 0
  br label %str.eq.merge533

str.eq.else532:                                   ; preds = %str_ok526
  br label %str.eq.merge533

str.eq.merge533:                                  ; preds = %str.eq.else532, %str.eq.then531
  %str.eq.result539 = phi i1 [ %eq.cmp.zero538, %str.eq.then531 ], [ false, %str.eq.else532 ]
  %str.neq540 = xor i1 %str.eq.result539, true
  br i1 %str.neq540, label %choice.then541, label %choice.else542

choice.then541:                                   ; preds = %str.eq.merge533
  %var.load544 = load ptr, ptr %var.cand, align 8
  %fld.gep545 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load544, i32 0, i32 1
  %fld.load546 = load i64, ptr %fld.gep545, align 8
  store i64 %fld.load546, ptr %"var.child_ind'", align 8
  br label %loop.exit.91

choice.else542:                                   ; preds = %str.eq.merge533
  %var.load547 = load i64, ptr %"var.next_idx'", align 8
  %addtmp548 = add i64 %var.load547, 1
  store i64 %addtmp548, ptr %"var.next_idx'", align 8
  br label %choice.exit543

choice.exit543:                                   ; preds = %choice.else542
  br label %loop.latch.91

choice.then554:                                   ; preds = %loop.exit.91
  %var.load557 = load ptr, ptr %var.lines, align 8
  %a.load558 = load ptr, ptr %var.lines, align 8
  %a.null559 = icmp eq ptr %a.load558, null
  br i1 %a.null559, label %a.create560, label %a.after561

choice.else555:                                   ; preds = %loop.exit.91
  %var.load977 = load ptr, ptr %var.k, align 8
  %var.load978 = load ptr, ptr %var.pl, align 8
  %fld.gep979 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load978, i32 0, i32 0
  %fld.load980 = load i64, ptr %fld.gep979, align 8
  %var.load981 = load ptr, ptr %var.pl, align 8
  %fld.gep982 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load981, i32 0, i32 1
  %fld.load983 = load i64, ptr %fld.gep982, align 8
  %addtmp984 = add i64 %fld.load983, 1
  %call.res985 = call ptr @"ccl::entry_new_str"(ptr %var.load977, ptr @str.0.struct, i64 %fld.load980, i64 %addtmp984)
  %a.load986 = load ptr, ptr %var.doc, align 8
  %a.null987 = icmp eq ptr %a.load986, null
  br i1 %a.null987, label %a.create988, label %a.after989

choice.exit556:                                   ; preds = %a.store1000, %choice.exit636
  br label %choice.exit385

a.create560:                                      ; preds = %choice.then554
  %arena.cur562 = call ptr @dva_arena_current()
  %a.create563 = call ptr @dva_arena_alloc(ptr %arena.cur562, i64 24)
  %arena.cur564 = call ptr @dva_arena_current()
  %a.buf565 = call ptr @dva_arena_alloc(ptr %arena.cur564, i64 128)
  %a.len.gep566 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create563, i32 0, i32 0
  store i64 0, ptr %a.len.gep566, align 8
  %a.data.gep567 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create563, i32 0, i32 1
  store ptr %a.buf565, ptr %a.data.gep567, align 8
  %a.cap.gep568 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create563, i32 0, i32 2
  store i64 16, ptr %a.cap.gep568, align 8
  store ptr %a.create563, ptr %var.lines, align 8
  br label %a.after561

a.after561:                                       ; preds = %a.create560, %choice.then554
  %a.load2569 = load ptr, ptr %var.lines, align 8
  %var.load570 = load i64, ptr %"var.next_idx'", align 8
  %a.rd.nonnull571 = icmp ne ptr %a.load2569, null
  br i1 %a.rd.nonnull571, label %a.rd.check572, label %a.rd.err.null574

a.rd.check572:                                    ; preds = %a.after561
  %a.rd.len577 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2569, i32 0, i32 0
  %a.rd.len578 = load i64, ptr %a.rd.len577, align 8
  %a.rd.ge0579 = icmp sge i64 %var.load570, 0
  %a.rd.lt580 = icmp slt i64 %var.load570, %a.rd.len578
  %a.rd.bounds581 = and i1 %a.rd.ge0579, %a.rd.lt580
  br i1 %a.rd.bounds581, label %a.rd.ok573, label %a.rd.err.oob575

a.rd.ok573:                                       ; preds = %a.rd.check572
  %a.rd.data582 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2569, i32 0, i32 1
  %a.rd.data583 = load ptr, ptr %a.rd.data582, align 8
  %a.rd.elem.gep584 = getelementptr i64, ptr %a.rd.data583, i64 %var.load570
  %a.rd.elem585 = load i64, ptr %a.rd.elem.gep584, align 8
  br label %a.rd.done576

a.rd.err.null574:                                 ; preds = %a.after561
  %arena.cur586 = call ptr @dva_arena_current()
  %err.alloc587 = call ptr @dva_arena_alloc(ptr %arena.cur586, i64 56)
  %err.code.gep588 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc587, i32 0, i32 0
  store i64 4011, ptr %err.code.gep588, align 8
  %err.msg.gep589 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc587, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep589, align 8
  %err.file.gep590 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc587, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep590, align 8
  %err.line.gep591 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc587, i32 0, i32 3
  store i64 273, ptr %err.line.gep591, align 8
  %err.col.gep592 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc587, i32 0, i32 4
  store i64 78, ptr %err.col.gep592, align 8
  %err.ctx.gep593 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc587, i32 0, i32 5
  %err.ctx0.gep594 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep593, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep594, align 8
  %err.ctx1.gep595 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep593, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep595, align 8
  %err.p2i596 = ptrtoint ptr %err.alloc587 to i64
  br label %a.rd.done576

a.rd.err.oob575:                                  ; preds = %a.rd.check572
  %arena.cur597 = call ptr @dva_arena_current()
  %err.alloc598 = call ptr @dva_arena_alloc(ptr %arena.cur597, i64 56)
  %err.code.gep599 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc598, i32 0, i32 0
  store i64 4011, ptr %err.code.gep599, align 8
  %err.msg.gep600 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc598, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep600, align 8
  %err.file.gep601 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc598, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep601, align 8
  %err.line.gep602 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc598, i32 0, i32 3
  store i64 273, ptr %err.line.gep602, align 8
  %err.col.gep603 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc598, i32 0, i32 4
  store i64 78, ptr %err.col.gep603, align 8
  %err.ctx.gep604 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc598, i32 0, i32 5
  %err.ctx0.gep605 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep604, i32 0, i32 0
  store i64 %var.load570, ptr %err.ctx0.gep605, align 8
  %err.ctx1.gep606 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep604, i32 0, i32 1
  store i64 %a.rd.len578, ptr %err.ctx1.gep606, align 8
  %err.p2i607 = ptrtoint ptr %err.alloc598 to i64
  br label %a.rd.done576

a.rd.done576:                                     ; preds = %a.rd.err.oob575, %a.rd.err.null574, %a.rd.ok573
  %a.rd.tag608 = phi i1 [ true, %a.rd.ok573 ], [ false, %a.rd.err.null574 ], [ false, %a.rd.err.oob575 ]
  %a.rd.pay609 = phi i64 [ %a.rd.elem585, %a.rd.ok573 ], [ %err.p2i596, %a.rd.err.null574 ], [ %err.p2i607, %a.rd.err.oob575 ]
  %ram.tag610 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag608, 0
  %ram.pay611 = insertvalue { i1, i64 } %ram.tag610, i64 %a.rd.pay609, 1
  %ram.tag612 = extractvalue { i1, i64 } %ram.pay611, 0
  br i1 %ram.tag612, label %choice.then613, label %choice.else614

choice.then613:                                   ; preds = %a.rd.done576
  %ram.pay616 = extractvalue { i1, i64 } %ram.pay611, 1
  %pay.ptr617 = inttoptr i64 %ram.pay616 to ptr
  store ptr %pay.ptr617, ptr %var._618, align 8
  br label %choice.exit615

choice.else614:                                   ; preds = %a.rd.done576
  %ram.pay619 = extractvalue { i1, i64 } %ram.pay611, 1
  %pay.ptr620 = inttoptr i64 %ram.pay619 to ptr
  store ptr %pay.ptr620, ptr %var._621, align 8
  %arena.cur622 = call ptr @dva_arena_current()
  %rec.alloc623 = call ptr @dva_arena_alloc(ptr %arena.cur622, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld624 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc623, i32 0, i32 0
  store i64 0, ptr %rec.fld624, align 8
  %rec.fld625 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc623, i32 0, i32 1
  store i64 0, ptr %rec.fld625, align 8
  %rec.fld626 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc623, i32 0, i32 2
  store ptr @str.0.struct, ptr %rec.fld626, align 8
  br label %choice.exit615

choice.exit615:                                   ; preds = %choice.else614, %choice.then613
  %choice.res627 = phi ptr [ %pay.ptr617, %choice.then613 ], [ %rec.alloc623, %choice.else614 ]
  store ptr %choice.res627, ptr %var.cand_line, align 8
  %var.load628 = load ptr, ptr %var.cand_line, align 8
  %fld.gep629 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load628, i32 0, i32 2
  %fld.load630 = load ptr, ptr %fld.gep629, align 8
  %call.res631 = call i64 @"ccl::find_first_eq"(ptr %fld.load630)
  %cmptmp632 = icmp sge i64 %call.res631, 0
  store i1 %cmptmp632, ptr %var.has_eq, align 1
  %var.load633 = load i1, ptr %var.has_eq, align 1
  br i1 %var.load633, label %choice.then634, label %choice.else635

choice.then634:                                   ; preds = %choice.exit615
  %var.load637 = load ptr, ptr %var.lines, align 8
  %a.load638 = load ptr, ptr %var.lines, align 8
  %a.null639 = icmp eq ptr %a.load638, null
  br i1 %a.null639, label %a.create640, label %a.after641

choice.else635:                                   ; preds = %choice.exit615
  %arena.cur709 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur709, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep710 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 64, i64 1)
  %sum711 = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf712 = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf712, label %str_overflow_abort714, label %b.buf.len713

choice.exit636:                                   ; preds = %a.store962, %choice.exit658
  br label %choice.exit556

a.create640:                                      ; preds = %choice.then634
  %arena.cur642 = call ptr @dva_arena_current()
  %a.create643 = call ptr @dva_arena_alloc(ptr %arena.cur642, i64 24)
  %arena.cur644 = call ptr @dva_arena_current()
  %a.buf645 = call ptr @dva_arena_alloc(ptr %arena.cur644, i64 128)
  %a.len.gep646 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create643, i32 0, i32 0
  store i64 0, ptr %a.len.gep646, align 8
  %a.data.gep647 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create643, i32 0, i32 1
  store ptr %a.buf645, ptr %a.data.gep647, align 8
  %a.cap.gep648 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create643, i32 0, i32 2
  store i64 16, ptr %a.cap.gep648, align 8
  store ptr %a.create643, ptr %var.lines, align 8
  br label %a.after641

a.after641:                                       ; preds = %a.create640, %choice.then634
  %a.load2649 = load ptr, ptr %var.lines, align 8
  %var.load650 = load i64, ptr %"var.next_idx'", align 8
  %var.load651 = load i64, ptr %"var.child_ind'", align 8
  %var.load652 = load ptr, ptr %var.file, align 8
  %call.res653 = call { i1, i64 } @"ccl::parse_block_from"(ptr %a.load2649, i64 %var.load650, i64 %var.load651, ptr %var.load652)
  store { i1, i64 } %call.res653, ptr %var.child_res, align 8
  %var.load654 = load { i1, i64 }, ptr %var.child_res, align 8
  %ram.tag655 = extractvalue { i1, i64 } %var.load654, 0
  br i1 %ram.tag655, label %choice.then656, label %choice.else657

choice.then656:                                   ; preds = %a.after641
  %ram.pay659 = extractvalue { i1, i64 } %var.load654, 1
  %pay.ptr660 = inttoptr i64 %ram.pay659 to ptr
  store ptr %pay.ptr660, ptr %var._661, align 8
  store ptr %pay.ptr660, ptr %var.cres, align 8
  %var.load662 = load ptr, ptr %var.k, align 8
  %var.load663 = load ptr, ptr %var.cres, align 8
  %fld.gep664 = getelementptr inbounds { ptr, i64 }, ptr %var.load663, i32 0, i32 0
  %fld.load665 = load ptr, ptr %fld.gep664, align 8
  %var.load666 = load ptr, ptr %var.pl, align 8
  %fld.gep667 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load666, i32 0, i32 0
  %fld.load668 = load i64, ptr %fld.gep667, align 8
  %var.load669 = load ptr, ptr %var.pl, align 8
  %fld.gep670 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load669, i32 0, i32 1
  %fld.load671 = load i64, ptr %fld.gep670, align 8
  %addtmp672 = add i64 %fld.load671, 1
  %call.res673 = call ptr @"ccl::entry_new_block"(ptr %var.load662, ptr %fld.load665, i64 %fld.load668, i64 %addtmp672)
  %a.load674 = load ptr, ptr %var.doc, align 8
  %a.null675 = icmp eq ptr %a.load674, null
  br i1 %a.null675, label %a.create676, label %a.after677

choice.else657:                                   ; preds = %a.after641
  %ram.pay705 = extractvalue { i1, i64 } %var.load654, 1
  %pay.ptr706 = inttoptr i64 %ram.pay705 to ptr
  store ptr %pay.ptr706, ptr %var._707, align 8
  store ptr %pay.ptr706, ptr %var.e, align 8
  store i1 true, ptr %"var.has_err'", align 1
  %var.load708 = load ptr, ptr %var.e, align 8
  store ptr %var.load708, ptr %"var.err_val'", align 8
  br label %choice.exit658

choice.exit658:                                   ; preds = %choice.else657, %a.store688
  br label %choice.exit636

a.create676:                                      ; preds = %choice.then656
  %arena.cur678 = call ptr @dva_arena_current()
  %a.create679 = call ptr @dva_arena_alloc(ptr %arena.cur678, i64 24)
  %arena.cur680 = call ptr @dva_arena_current()
  %a.buf681 = call ptr @dva_arena_alloc(ptr %arena.cur680, i64 128)
  %a.len.gep682 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create679, i32 0, i32 0
  store i64 0, ptr %a.len.gep682, align 8
  %a.data.gep683 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create679, i32 0, i32 1
  store ptr %a.buf681, ptr %a.data.gep683, align 8
  %a.cap.gep684 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create679, i32 0, i32 2
  store i64 16, ptr %a.cap.gep684, align 8
  store ptr %a.create679, ptr %var.doc, align 8
  br label %a.after677

a.after677:                                       ; preds = %a.create676, %choice.then656
  %a.load2685 = load ptr, ptr %var.doc, align 8
  br label %a.check686

a.check686:                                       ; preds = %a.after677
  %a.len689 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2685, i32 0, i32 0
  %a.len690 = load i64, ptr %a.len689, align 8
  %a.cap691 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2685, i32 0, i32 2
  %a.cap692 = load i64, ptr %a.cap691, align 8
  %a.needs.grow693 = icmp eq i64 %a.len690, %a.cap692
  br i1 %a.needs.grow693, label %a.grow687, label %a.store688

a.grow687:                                        ; preds = %a.check686
  call void @dva_array_grow(ptr %a.load2685)
  br label %a.store688

a.store688:                                       ; preds = %a.grow687, %a.check686
  %a.cur.data694 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2685, i32 0, i32 1
  %a.cur.data695 = load ptr, ptr %a.cur.data694, align 8
  %a.cur.len696 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2685, i32 0, i32 0
  %a.cur.len697 = load i64, ptr %a.cur.len696, align 8
  %a.elem.gep698 = getelementptr i64, ptr %a.cur.data695, i64 %a.cur.len697
  %slot.p2i699 = ptrtoint ptr %call.res673 to i64
  store i64 %slot.p2i699, ptr %a.elem.gep698, align 8
  %a.next.len700 = add i64 %a.cur.len697, 1
  %b.len.gep701 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2685, i32 0, i32 0
  store i64 %a.next.len700, ptr %b.len.gep701, align 8
  %var.load702 = load ptr, ptr %var.cres, align 8
  %fld.gep703 = getelementptr inbounds { ptr, i64 }, ptr %var.load702, i32 0, i32 1
  %fld.load704 = load i64, ptr %fld.gep703, align 8
  store i64 %fld.load704, ptr %"var.idx'", align 8
  br label %choice.exit658

b.buf.len713:                                     ; preds = %str_overflow_abort714, %choice.else635
  %arena.cur715 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur715, i64 %sum711)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep710, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 64, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.tb, align 8
  store i64 0, ptr %loop.idx.92, align 8
  %cycle.prev.u716 = load i64, ptr %var._, align 8
  %cycle.prev.i717 = load i64, ptr %var._i, align 8
  br label %loop.header.92

str_overflow_abort714:                            ; preds = %choice.else635
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len713

loop.header.92:                                   ; preds = %loop.latch.92, %b.buf.len713
  %counter.load718 = load i64, ptr %loop.idx.92, align 8
  br label %loop.body.92

loop.body.92:                                     ; preds = %loop.header.92
  %loop.rel.i719 = sub i64 %counter.load718, 0
  store i64 1, ptr %loop.step.92, align 8
  store i64 %loop.rel.i719, ptr %var._i720, align 8
  store i64 %counter.load718, ptr %var._721, align 8
  %var.load722 = load i64, ptr %"var.next_idx'", align 8
  %var.load723 = load i64, ptr %var.total, align 8
  %cmptmp724 = icmp sge i64 %var.load722, %var.load723
  br i1 %cmptmp724, label %choice.then725, label %choice.exit726

loop.exit.nat.92:                                 ; No predecessors!
  br label %loop.exit.92

loop.latch.92:                                    ; preds = %choice.exit832
  %step.val929 = load i64, ptr %loop.step.92, align 8
  %loop.next930 = add i64 %counter.load718, %step.val929
  store i64 %loop.next930, ptr %loop.idx.92, align 8
  br label %loop.header.92

loop.exit.92:                                     ; preds = %choice.then851, %choice.then725, %loop.exit.nat.92
  store i64 %cycle.prev.u716, ptr %var._, align 8
  store i64 %cycle.prev.i717, ptr %var._i, align 8
  %var.load931 = load ptr, ptr %var.k, align 8
  %var.load932 = load ptr, ptr %var.tb, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load932, i32 0, i32 0
  %b.freeze.len933 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load932, i32 0, i32 1
  %b.freeze.data934 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.then725:                                   ; preds = %loop.body.92
  br label %loop.exit.92

choice.exit726:                                   ; preds = %loop.body.92
  %var.load727 = load ptr, ptr %var.lines, align 8
  %a.load728 = load ptr, ptr %var.lines, align 8
  %a.null729 = icmp eq ptr %a.load728, null
  br i1 %a.null729, label %a.create730, label %a.after731

a.create730:                                      ; preds = %choice.exit726
  %arena.cur732 = call ptr @dva_arena_current()
  %a.create733 = call ptr @dva_arena_alloc(ptr %arena.cur732, i64 24)
  %arena.cur734 = call ptr @dva_arena_current()
  %a.buf735 = call ptr @dva_arena_alloc(ptr %arena.cur734, i64 128)
  %a.len.gep736 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create733, i32 0, i32 0
  store i64 0, ptr %a.len.gep736, align 8
  %a.data.gep737 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create733, i32 0, i32 1
  store ptr %a.buf735, ptr %a.data.gep737, align 8
  %a.cap.gep738 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create733, i32 0, i32 2
  store i64 16, ptr %a.cap.gep738, align 8
  store ptr %a.create733, ptr %var.lines, align 8
  br label %a.after731

a.after731:                                       ; preds = %a.create730, %choice.exit726
  %a.load2739 = load ptr, ptr %var.lines, align 8
  %var.load740 = load i64, ptr %"var.next_idx'", align 8
  %a.rd.nonnull741 = icmp ne ptr %a.load2739, null
  br i1 %a.rd.nonnull741, label %a.rd.check742, label %a.rd.err.null744

a.rd.check742:                                    ; preds = %a.after731
  %a.rd.len747 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2739, i32 0, i32 0
  %a.rd.len748 = load i64, ptr %a.rd.len747, align 8
  %a.rd.ge0749 = icmp sge i64 %var.load740, 0
  %a.rd.lt750 = icmp slt i64 %var.load740, %a.rd.len748
  %a.rd.bounds751 = and i1 %a.rd.ge0749, %a.rd.lt750
  br i1 %a.rd.bounds751, label %a.rd.ok743, label %a.rd.err.oob745

a.rd.ok743:                                       ; preds = %a.rd.check742
  %a.rd.data752 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2739, i32 0, i32 1
  %a.rd.data753 = load ptr, ptr %a.rd.data752, align 8
  %a.rd.elem.gep754 = getelementptr i64, ptr %a.rd.data753, i64 %var.load740
  %a.rd.elem755 = load i64, ptr %a.rd.elem.gep754, align 8
  br label %a.rd.done746

a.rd.err.null744:                                 ; preds = %a.after731
  %arena.cur756 = call ptr @dva_arena_current()
  %err.alloc757 = call ptr @dva_arena_alloc(ptr %arena.cur756, i64 56)
  %err.code.gep758 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc757, i32 0, i32 0
  store i64 4011, ptr %err.code.gep758, align 8
  %err.msg.gep759 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc757, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep759, align 8
  %err.file.gep760 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc757, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep760, align 8
  %err.line.gep761 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc757, i32 0, i32 3
  store i64 293, ptr %err.line.gep761, align 8
  %err.col.gep762 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc757, i32 0, i32 4
  store i64 80, ptr %err.col.gep762, align 8
  %err.ctx.gep763 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc757, i32 0, i32 5
  %err.ctx0.gep764 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep763, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep764, align 8
  %err.ctx1.gep765 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep763, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep765, align 8
  %err.p2i766 = ptrtoint ptr %err.alloc757 to i64
  br label %a.rd.done746

a.rd.err.oob745:                                  ; preds = %a.rd.check742
  %arena.cur767 = call ptr @dva_arena_current()
  %err.alloc768 = call ptr @dva_arena_alloc(ptr %arena.cur767, i64 56)
  %err.code.gep769 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc768, i32 0, i32 0
  store i64 4011, ptr %err.code.gep769, align 8
  %err.msg.gep770 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc768, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep770, align 8
  %err.file.gep771 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc768, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep771, align 8
  %err.line.gep772 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc768, i32 0, i32 3
  store i64 293, ptr %err.line.gep772, align 8
  %err.col.gep773 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc768, i32 0, i32 4
  store i64 80, ptr %err.col.gep773, align 8
  %err.ctx.gep774 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc768, i32 0, i32 5
  %err.ctx0.gep775 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep774, i32 0, i32 0
  store i64 %var.load740, ptr %err.ctx0.gep775, align 8
  %err.ctx1.gep776 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep774, i32 0, i32 1
  store i64 %a.rd.len748, ptr %err.ctx1.gep776, align 8
  %err.p2i777 = ptrtoint ptr %err.alloc768 to i64
  br label %a.rd.done746

a.rd.done746:                                     ; preds = %a.rd.err.oob745, %a.rd.err.null744, %a.rd.ok743
  %a.rd.tag778 = phi i1 [ true, %a.rd.ok743 ], [ false, %a.rd.err.null744 ], [ false, %a.rd.err.oob745 ]
  %a.rd.pay779 = phi i64 [ %a.rd.elem755, %a.rd.ok743 ], [ %err.p2i766, %a.rd.err.null744 ], [ %err.p2i777, %a.rd.err.oob745 ]
  %ram.tag780 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag778, 0
  %ram.pay781 = insertvalue { i1, i64 } %ram.tag780, i64 %a.rd.pay779, 1
  %ram.tag782 = extractvalue { i1, i64 } %ram.pay781, 0
  br i1 %ram.tag782, label %choice.then783, label %choice.else784

choice.then783:                                   ; preds = %a.rd.done746
  %ram.pay786 = extractvalue { i1, i64 } %ram.pay781, 1
  %pay.ptr787 = inttoptr i64 %ram.pay786 to ptr
  store ptr %pay.ptr787, ptr %var._788, align 8
  br label %choice.exit785

choice.else784:                                   ; preds = %a.rd.done746
  %ram.pay789 = extractvalue { i1, i64 } %ram.pay781, 1
  %pay.ptr790 = inttoptr i64 %ram.pay789 to ptr
  store ptr %pay.ptr790, ptr %var._791, align 8
  %arena.cur792 = call ptr @dva_arena_current()
  %rec.alloc793 = call ptr @dva_arena_alloc(ptr %arena.cur792, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld794 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc793, i32 0, i32 0
  store i64 0, ptr %rec.fld794, align 8
  %rec.fld795 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc793, i32 0, i32 1
  store i64 0, ptr %rec.fld795, align 8
  %rec.fld796 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc793, i32 0, i32 2
  store ptr @str.0.struct, ptr %rec.fld796, align 8
  br label %choice.exit785

choice.exit785:                                   ; preds = %choice.else784, %choice.then783
  %choice.res797 = phi ptr [ %pay.ptr787, %choice.then783 ], [ %rec.alloc793, %choice.else784 ]
  store ptr %choice.res797, ptr %var.cl, align 8
  %var.load798 = load ptr, ptr %var.cl, align 8
  %fld.gep799 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load798, i32 0, i32 2
  %fld.load800 = load ptr, ptr %fld.gep799, align 8
  %eq.lhs.len801 = getelementptr inbounds { i64, ptr }, ptr %fld.load800, i32 0, i32 0
  %eq.lhs.len802 = load i64, ptr %eq.lhs.len801, align 8
  %eq.lhs.len803 = and i64 %eq.lhs.len802, 281474976710655
  %str.tag804 = lshr i64 %eq.lhs.len802, 48
  %str.immortal805 = icmp eq i64 %str.tag804, 0
  br i1 %str.immortal805, label %str_ok807, label %str_gen_check806

str_gen_check806:                                 ; preds = %choice.exit785
  %arena.cur809 = call ptr @dva_arena_current()
  %tag.valid810 = call i1 @dva_arena_validate_tag(ptr %arena.cur809, i64 %str.tag804)
  br i1 %tag.valid810, label %str_ok807, label %str_stale808

str_ok807:                                        ; preds = %str_stale808, %str_gen_check806, %choice.exit785
  %eq.rhs.len811 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len812 = and i64 %eq.rhs.len811, 281474976710655
  %str.tag813 = lshr i64 %eq.rhs.len811, 48
  %str.immortal814 = icmp eq i64 %str.tag813, 0
  br i1 %str.immortal814, label %str_ok816, label %str_gen_check815

str_stale808:                                     ; preds = %str_gen_check806
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok807

str_gen_check815:                                 ; preds = %str_ok807
  %arena.cur818 = call ptr @dva_arena_current()
  %tag.valid819 = call i1 @dva_arena_validate_tag(ptr %arena.cur818, i64 %str.tag813)
  br i1 %tag.valid819, label %str_ok816, label %str_stale817

str_ok816:                                        ; preds = %str_stale817, %str_gen_check815, %str_ok807
  %eq.len820 = icmp eq i64 %eq.lhs.len803, %eq.rhs.len812
  br i1 %eq.len820, label %str.eq.then821, label %str.eq.else822

str_stale817:                                     ; preds = %str_gen_check815
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok816

str.eq.then821:                                   ; preds = %str_ok816
  %eq.lhs.data824 = getelementptr inbounds { i64, ptr }, ptr %fld.load800, i32 0, i32 1
  %eq.lhs.data825 = load ptr, ptr %eq.lhs.data824, align 8
  %eq.rhs.data826 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp827 = call i32 @memcmp(ptr %eq.lhs.data825, ptr %eq.rhs.data826, i64 %eq.lhs.len803)
  %eq.cmp.zero828 = icmp eq i32 %eq.memcmp827, 0
  br label %str.eq.merge823

str.eq.else822:                                   ; preds = %str_ok816
  br label %str.eq.merge823

str.eq.merge823:                                  ; preds = %str.eq.else822, %str.eq.then821
  %str.eq.result829 = phi i1 [ %eq.cmp.zero828, %str.eq.then821 ], [ false, %str.eq.else822 ]
  br i1 %str.eq.result829, label %choice.then830, label %choice.else831

choice.then830:                                   ; preds = %str.eq.merge823
  %b.load = load ptr, ptr %var.tb, align 8
  br i1 true, label %b.byte_ok, label %b.byte_err

choice.else831:                                   ; preds = %str.eq.merge823
  %var.load846 = load ptr, ptr %var.cl, align 8
  %fld.gep847 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load846, i32 0, i32 1
  %fld.load848 = load i64, ptr %fld.gep847, align 8
  %var.load849 = load i64, ptr %"var.child_ind'", align 8
  %cmptmp850 = icmp slt i64 %fld.load848, %var.load849
  br i1 %cmptmp850, label %choice.then851, label %choice.else852

choice.exit832:                                   ; preds = %choice.exit853, %b.push_done
  br label %loop.latch.92

b.byte_ok:                                        ; preds = %b.byte_err, %choice.then830
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len833 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap834 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data835 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len833, %b.cap834
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.then830
  %25 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap834, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum836 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf837 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf837, label %str_overflow_abort839, label %b.new.buf.len838

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len838
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data841 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len842 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data841, i64 %b.cur.len842
  store i8 10, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len842, 1
  %b.nul = getelementptr i8, ptr %b.cur.data841, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep843 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep843, align 8
  %var.load844 = load i64, ptr %"var.next_idx'", align 8
  %addtmp845 = add i64 %var.load844, 1
  store i64 %addtmp845, ptr %"var.next_idx'", align 8
  br label %choice.exit832

b.new.buf.len838:                                 ; preds = %str_overflow_abort839, %b.grow
  %arena.cur840 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur840, i64 %sum836)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data835, i64 %b.len833, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len833
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort839:                            ; preds = %b.grow
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len838

choice.then851:                                   ; preds = %choice.else831
  br label %loop.exit.92

choice.else852:                                   ; preds = %choice.else831
  %var.load854 = load ptr, ptr %var.tb, align 8
  %b.len855 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load854, i32 0, i32 0
  %b.len856 = load i64, ptr %b.len855, align 8
  %cmptmp857 = icmp sgt i64 %b.len856, 0
  br i1 %cmptmp857, label %choice.then858, label %choice.exit859

choice.exit853:                                   ; preds = %b.grow_done
  br label %choice.exit832

choice.then858:                                   ; preds = %choice.else852
  %b.load860 = load ptr, ptr %var.tb, align 8
  br i1 true, label %b.byte_ok861, label %b.byte_err862

choice.exit859:                                   ; preds = %b.push_done872, %choice.else852
  %b.load894 = load ptr, ptr %var.tb, align 8
  %var.load895 = load ptr, ptr %var.cl, align 8
  %fld.gep896 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load895, i32 0, i32 2
  %fld.load897 = load ptr, ptr %fld.gep896, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %fld.load897, i32 0, i32 0
  %app.str.len898 = load i64, ptr %app.str.len, align 8
  %app.str.len899 = and i64 %app.str.len898, 281474976710655
  %str.tag900 = lshr i64 %app.str.len898, 48
  %str.immortal901 = icmp eq i64 %str.tag900, 0
  br i1 %str.immortal901, label %str_ok903, label %str_gen_check902

b.byte_ok861:                                     ; preds = %b.byte_err862, %choice.then858
  %b.len863 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load860, i32 0, i32 0
  %b.len864 = load i64, ptr %b.len863, align 8
  %b.cap865 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load860, i32 0, i32 2
  %b.cap866 = load i64, ptr %b.cap865, align 8
  %b.data867 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load860, i32 0, i32 1
  %b.data868 = load ptr, ptr %b.data867, align 8
  %b.needs.grow869 = icmp eq i64 %b.len864, %b.cap866
  br i1 %b.needs.grow869, label %b.grow870, label %b.nogrow871

b.byte_err862:                                    ; preds = %choice.then858
  %27 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok861

b.grow870:                                        ; preds = %b.byte_ok861
  %b.cap2873 = mul i64 %b.cap866, 2
  %b.cap.small874 = icmp slt i64 %b.cap2873, 16
  %b.new.cap875 = select i1 %b.cap.small874, i64 16, i64 %b.cap2873
  %b.new.buf.len876 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap875, i64 1)
  %sum877 = extractvalue { i64, i1 } %b.new.buf.len876, 0
  %ovf878 = extractvalue { i64, i1 } %b.new.buf.len876, 1
  br i1 %ovf878, label %str_overflow_abort880, label %b.new.buf.len879

b.nogrow871:                                      ; preds = %b.byte_ok861
  br label %b.push_done872

b.push_done872:                                   ; preds = %b.nogrow871, %b.new.buf.len879
  %b.cur.data886 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load860, i32 0, i32 1
  %b.cur.data887 = load ptr, ptr %b.cur.data886, align 8
  %b.cur.len888 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load860, i32 0, i32 0
  %b.cur.len889 = load i64, ptr %b.cur.len888, align 8
  %b.byte.gep890 = getelementptr i8, ptr %b.cur.data887, i64 %b.cur.len889
  store i8 10, ptr %b.byte.gep890, align 1
  %b.next.len891 = add i64 %b.cur.len889, 1
  %b.nul892 = getelementptr i8, ptr %b.cur.data887, i64 %b.next.len891
  store i8 0, ptr %b.nul892, align 1
  %b.len.gep893 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load860, i32 0, i32 0
  store i64 %b.next.len891, ptr %b.len.gep893, align 8
  br label %choice.exit859

b.new.buf.len879:                                 ; preds = %str_overflow_abort880, %b.grow870
  %arena.cur881 = call ptr @dva_arena_current()
  %b.new.buf882 = call ptr @dva_arena_alloc(ptr %arena.cur881, i64 %sum877)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf882, ptr align 1 %b.data868, i64 %b.len864, i1 false)
  %b.grow.nul883 = getelementptr i8, ptr %b.new.buf882, i64 %b.len864
  store i8 0, ptr %b.grow.nul883, align 1
  %b.new.data.gep884 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load860, i32 0, i32 1
  store ptr %b.new.buf882, ptr %b.new.data.gep884, align 8
  %b.new.cap.gep885 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load860, i32 0, i32 2
  store i64 %b.new.cap875, ptr %b.new.cap.gep885, align 8
  br label %b.push_done872

str_overflow_abort880:                            ; preds = %b.grow870
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len879

str_gen_check902:                                 ; preds = %choice.exit859
  %arena.cur905 = call ptr @dva_arena_current()
  %tag.valid906 = call i1 @dva_arena_validate_tag(ptr %arena.cur905, i64 %str.tag900)
  br i1 %tag.valid906, label %str_ok903, label %str_stale904

str_ok903:                                        ; preds = %str_stale904, %str_gen_check902, %choice.exit859
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load894, i32 0, i32 0
  %b.app.cur.len907 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len907, i64 %app.str.len899)
  %sum908 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf909 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf909, label %str_overflow_abort911, label %b.app.new.len910

str_stale904:                                     ; preds = %str_gen_check902
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok903

b.app.new.len910:                                 ; preds = %str_overflow_abort911, %str_ok903
  %b.cap912 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load894, i32 0, i32 2
  %b.cap913 = load i64, ptr %b.cap912, align 8
  %b.need.grow = icmp slt i64 %b.cap913, %sum908
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort911:                            ; preds = %str_ok903
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len910

b.grow2:                                          ; preds = %b.app.new.len910
  %b.cap2914 = mul i64 %b.cap913, 2
  %b.cap.small915 = icmp slt i64 %b.cap2914, 16
  %b.cap.grow = select i1 %b.cap.small915, i64 16, i64 %b.cap2914
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum908
  %b.new.cap916 = select i1 %b.cap.need, i64 %sum908, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load894, i32 0, i32 0
  %b.cur.len2917 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load894, i32 0, i32 1
  %b.cur.data2918 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap916, i64 1)
  %sum919 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf920 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf920, label %str_overflow_abort922, label %b.new.buf.len2921

b.nogrow2:                                        ; preds = %b.app.new.len910
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2921
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %fld.load897, i32 0, i32 1
  %app.str.data924 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load894, i32 0, i32 1
  %b.app.data925 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data925, i64 %b.app.cur.len907
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data924, i64 %app.str.len899, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data925, i64 %sum908
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep926 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load894, i32 0, i32 0
  store i64 %sum908, ptr %b.len.gep926, align 8
  %var.load927 = load i64, ptr %"var.next_idx'", align 8
  %addtmp928 = add i64 %var.load927, 1
  store i64 %addtmp928, ptr %"var.next_idx'", align 8
  br label %choice.exit853

b.new.buf.len2921:                                ; preds = %str_overflow_abort922, %b.grow2
  %arena.cur923 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur923, i64 %sum919)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2918, i64 %b.cur.len2917, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2917
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load894, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load894, i32 0, i32 2
  store i64 %b.new.cap916, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort922:                            ; preds = %b.grow2
  %31 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2921

b.freeze.check:                                   ; preds = %loop.exit.92
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data934, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data934, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data934, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len933, 1
  %arena.cur935 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur935, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data934, i64 %b.freeze.len933, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len933
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.92
  %b.freeze.data936 = phi ptr [ %b.freeze.data934, %loop.exit.92 ], [ %b.freeze.data934, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur937 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur937, i64 16)
  %str.build.len.gep938 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len933, ptr %str.build.len.gep938, align 8
  %str.build.data.gep939 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data936, ptr %str.build.data.gep939, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load932, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load932, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load932, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %var.load940 = load ptr, ptr %var.pl, align 8
  %fld.gep941 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load940, i32 0, i32 0
  %fld.load942 = load i64, ptr %fld.gep941, align 8
  %var.load943 = load ptr, ptr %var.pl, align 8
  %fld.gep944 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load943, i32 0, i32 1
  %fld.load945 = load i64, ptr %fld.gep944, align 8
  %addtmp946 = add i64 %fld.load945, 1
  %call.res947 = call ptr @"ccl::entry_new_str"(ptr %var.load931, ptr %builder.freeze, i64 %fld.load942, i64 %addtmp946)
  %a.load948 = load ptr, ptr %var.doc, align 8
  %a.null949 = icmp eq ptr %a.load948, null
  br i1 %a.null949, label %a.create950, label %a.after951

a.create950:                                      ; preds = %b.freeze.done
  %arena.cur952 = call ptr @dva_arena_current()
  %a.create953 = call ptr @dva_arena_alloc(ptr %arena.cur952, i64 24)
  %arena.cur954 = call ptr @dva_arena_current()
  %a.buf955 = call ptr @dva_arena_alloc(ptr %arena.cur954, i64 128)
  %a.len.gep956 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create953, i32 0, i32 0
  store i64 0, ptr %a.len.gep956, align 8
  %a.data.gep957 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create953, i32 0, i32 1
  store ptr %a.buf955, ptr %a.data.gep957, align 8
  %a.cap.gep958 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create953, i32 0, i32 2
  store i64 16, ptr %a.cap.gep958, align 8
  store ptr %a.create953, ptr %var.doc, align 8
  br label %a.after951

a.after951:                                       ; preds = %a.create950, %b.freeze.done
  %a.load2959 = load ptr, ptr %var.doc, align 8
  br label %a.check960

a.check960:                                       ; preds = %a.after951
  %a.len963 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2959, i32 0, i32 0
  %a.len964 = load i64, ptr %a.len963, align 8
  %a.cap965 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2959, i32 0, i32 2
  %a.cap966 = load i64, ptr %a.cap965, align 8
  %a.needs.grow967 = icmp eq i64 %a.len964, %a.cap966
  br i1 %a.needs.grow967, label %a.grow961, label %a.store962

a.grow961:                                        ; preds = %a.check960
  call void @dva_array_grow(ptr %a.load2959)
  br label %a.store962

a.store962:                                       ; preds = %a.grow961, %a.check960
  %a.cur.data968 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2959, i32 0, i32 1
  %a.cur.data969 = load ptr, ptr %a.cur.data968, align 8
  %a.cur.len970 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2959, i32 0, i32 0
  %a.cur.len971 = load i64, ptr %a.cur.len970, align 8
  %a.elem.gep972 = getelementptr i64, ptr %a.cur.data969, i64 %a.cur.len971
  %slot.p2i973 = ptrtoint ptr %call.res947 to i64
  store i64 %slot.p2i973, ptr %a.elem.gep972, align 8
  %a.next.len974 = add i64 %a.cur.len971, 1
  %b.len.gep975 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2959, i32 0, i32 0
  store i64 %a.next.len974, ptr %b.len.gep975, align 8
  %var.load976 = load i64, ptr %"var.next_idx'", align 8
  store i64 %var.load976, ptr %"var.idx'", align 8
  br label %choice.exit636

a.create988:                                      ; preds = %choice.else555
  %arena.cur990 = call ptr @dva_arena_current()
  %a.create991 = call ptr @dva_arena_alloc(ptr %arena.cur990, i64 24)
  %arena.cur992 = call ptr @dva_arena_current()
  %a.buf993 = call ptr @dva_arena_alloc(ptr %arena.cur992, i64 128)
  %a.len.gep994 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create991, i32 0, i32 0
  store i64 0, ptr %a.len.gep994, align 8
  %a.data.gep995 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create991, i32 0, i32 1
  store ptr %a.buf993, ptr %a.data.gep995, align 8
  %a.cap.gep996 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create991, i32 0, i32 2
  store i64 16, ptr %a.cap.gep996, align 8
  store ptr %a.create991, ptr %var.doc, align 8
  br label %a.after989

a.after989:                                       ; preds = %a.create988, %choice.else555
  %a.load2997 = load ptr, ptr %var.doc, align 8
  br label %a.check998

a.check998:                                       ; preds = %a.after989
  %a.len1001 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2997, i32 0, i32 0
  %a.len1002 = load i64, ptr %a.len1001, align 8
  %a.cap1003 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2997, i32 0, i32 2
  %a.cap1004 = load i64, ptr %a.cap1003, align 8
  %a.needs.grow1005 = icmp eq i64 %a.len1002, %a.cap1004
  br i1 %a.needs.grow1005, label %a.grow999, label %a.store1000

a.grow999:                                        ; preds = %a.check998
  call void @dva_array_grow(ptr %a.load2997)
  br label %a.store1000

a.store1000:                                      ; preds = %a.grow999, %a.check998
  %a.cur.data1006 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2997, i32 0, i32 1
  %a.cur.data1007 = load ptr, ptr %a.cur.data1006, align 8
  %a.cur.len1008 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2997, i32 0, i32 0
  %a.cur.len1009 = load i64, ptr %a.cur.len1008, align 8
  %a.elem.gep1010 = getelementptr i64, ptr %a.cur.data1007, i64 %a.cur.len1009
  %slot.p2i1011 = ptrtoint ptr %call.res985 to i64
  store i64 %slot.p2i1011, ptr %a.elem.gep1010, align 8
  %a.next.len1012 = add i64 %a.cur.len1009, 1
  %b.len.gep1013 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2997, i32 0, i32 0
  store i64 %a.next.len1012, ptr %b.len.gep1013, align 8
  %var.load1014 = load i64, ptr %"var.idx'", align 8
  %addtmp1015 = add i64 %var.load1014, 1
  store i64 %addtmp1015, ptr %"var.idx'", align 8
  br label %choice.exit556

choice.then1019:                                  ; preds = %loop.exit.89
  %var.load1022 = load ptr, ptr %"var.err_val'", align 8
  %p.to.i64 = ptrtoint ptr %var.load1022 to i64
  %ram.pay1023 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit1021

choice.else1020:                                  ; preds = %loop.exit.89
  %var.load1024 = load ptr, ptr %var.doc, align 8
  %a.load1025 = load ptr, ptr %var.doc, align 8
  %a.null1026 = icmp eq ptr %a.load1025, null
  br i1 %a.null1026, label %a.create1027, label %a.after1028

choice.exit1021:                                  ; preds = %a.after1028, %choice.then1019
  %choice.res1044 = phi { i1, i64 } [ %ram.pay1023, %choice.then1019 ], [ %ram.pay1043, %a.after1028 ]
  ret { i1, i64 } %choice.res1044

a.create1027:                                     ; preds = %choice.else1020
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
  store ptr %a.create1030, ptr %var.doc, align 8
  br label %a.after1028

a.after1028:                                      ; preds = %a.create1027, %choice.else1020
  %a.load21036 = load ptr, ptr %var.doc, align 8
  %var.load1037 = load i64, ptr %"var.idx'", align 8
  %arena.cur1038 = call ptr @dva_arena_current()
  %rec.alloc1039 = call ptr @dva_arena_alloc(ptr %arena.cur1038, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld1040 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc1039, i32 0, i32 0
  store ptr %a.load21036, ptr %rec.fld1040, align 8
  %rec.fld1041 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc1039, i32 0, i32 1
  store i64 %var.load1037, ptr %rec.fld1041, align 8
  %p.to.i641042 = ptrtoint ptr %rec.alloc1039 to i64
  %ram.pay1043 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i641042, 1
  br label %choice.exit1021
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

define { i1, i64 } @"ccl::parse"(ptr %0, ptr %1) #1 {
entry:
  %var.e = alloca ptr, align 8
  %var._87 = alloca ptr, align 8
  %var.bad = alloca ptr, align 8
  %var._66 = alloca ptr, align 8
  %var._63 = alloca ptr, align 8
  %var.pair = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.res = alloca { i1, i64 }, align 8
  %var.lines = alloca ptr, align 8
  %var.file = alloca ptr, align 8
  %var.src = alloca ptr, align 8
  store ptr %0, ptr %var.src, align 8
  store ptr %1, ptr %var.file, align 8
  %var.load = load ptr, ptr %var.src, align 8
  %call.res = call ptr @"ccl::split_raw_lines"(ptr %var.load)
  store ptr %call.res, ptr %var.lines, align 8
  %var.load1 = load ptr, ptr %var.lines, align 8
  %a.load = load ptr, ptr %var.lines, align 8
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
  store ptr %a.create2, ptr %var.lines, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.lines, align 8
  %var.load4 = load ptr, ptr %var.file, align 8
  %call.res5 = call { i1, i64 } @"ccl::parse_block_from"(ptr %a.load2, i64 0, i64 0, ptr %var.load4)
  store { i1, i64 } %call.res5, ptr %var.res, align 8
  %var.load6 = load { i1, i64 }, ptr %var.res, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load6, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.after
  %ram.pay = extractvalue { i1, i64 } %var.load6, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.pair, align 8
  %var.load7 = load ptr, ptr %var.pair, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load7, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load8 = load ptr, ptr %var.lines, align 8
  %a.load9 = load ptr, ptr %var.lines, align 8
  %a.null10 = icmp eq ptr %a.load9, null
  br i1 %a.null10, label %a.create11, label %a.after12

choice.else:                                      ; preds = %a.after
  %ram.pay85 = extractvalue { i1, i64 } %var.load6, 1
  %pay.ptr86 = inttoptr i64 %ram.pay85 to ptr
  store ptr %pay.ptr86, ptr %var._87, align 8
  store ptr %pay.ptr86, ptr %var.e, align 8
  %var.load88 = load ptr, ptr %var.e, align 8
  %p.to.i6489 = ptrtoint ptr %var.load88 to i64
  %ram.pay90 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6489, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit24
  %choice.res91 = phi { i1, i64 } [ %choice.res84, %choice.exit24 ], [ %ram.pay90, %choice.else ]
  ret { i1, i64 } %choice.res91

a.create11:                                       ; preds = %choice.then
  %arena.cur13 = call ptr @dva_arena_current()
  %a.create14 = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 24)
  %arena.cur15 = call ptr @dva_arena_current()
  %a.buf16 = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 128)
  %a.len.gep17 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create14, i32 0, i32 0
  store i64 0, ptr %a.len.gep17, align 8
  %a.data.gep18 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create14, i32 0, i32 1
  store ptr %a.buf16, ptr %a.data.gep18, align 8
  %a.cap.gep19 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create14, i32 0, i32 2
  store i64 16, ptr %a.cap.gep19, align 8
  store ptr %a.create14, ptr %var.lines, align 8
  br label %a.after12

a.after12:                                        ; preds = %a.create11, %choice.then
  %a.load220 = load ptr, ptr %var.lines, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load220, i32 0, i32 0
  %a.len.query21 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp slt i64 %fld.load, %a.len.query21
  br i1 %cmptmp, label %choice.then22, label %choice.else23

choice.then22:                                    ; preds = %a.after12
  %var.load25 = load ptr, ptr %var.lines, align 8
  %a.load26 = load ptr, ptr %var.lines, align 8
  %a.null27 = icmp eq ptr %a.load26, null
  br i1 %a.null27, label %a.create28, label %a.after29

choice.else23:                                    ; preds = %a.after12
  %var.load79 = load ptr, ptr %var.pair, align 8
  %fld.gep80 = getelementptr inbounds { ptr, i64 }, ptr %var.load79, i32 0, i32 0
  %fld.load81 = load ptr, ptr %fld.gep80, align 8
  %p.to.i6482 = ptrtoint ptr %fld.load81 to i64
  %ram.pay83 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i6482, 1
  br label %choice.exit24

choice.exit24:                                    ; preds = %choice.else23, %choice.exit60
  %choice.res84 = phi { i1, i64 } [ %ram.pay78, %choice.exit60 ], [ %ram.pay83, %choice.else23 ]
  br label %choice.exit

a.create28:                                       ; preds = %choice.then22
  %arena.cur30 = call ptr @dva_arena_current()
  %a.create31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 24)
  %arena.cur32 = call ptr @dva_arena_current()
  %a.buf33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 128)
  %a.len.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 0
  store i64 0, ptr %a.len.gep34, align 8
  %a.data.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 1
  store ptr %a.buf33, ptr %a.data.gep35, align 8
  %a.cap.gep36 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 2
  store i64 16, ptr %a.cap.gep36, align 8
  store ptr %a.create31, ptr %var.lines, align 8
  br label %a.after29

a.after29:                                        ; preds = %a.create28, %choice.then22
  %a.load237 = load ptr, ptr %var.lines, align 8
  %var.load38 = load ptr, ptr %var.pair, align 8
  %fld.gep39 = getelementptr inbounds { ptr, i64 }, ptr %var.load38, i32 0, i32 1
  %fld.load40 = load i64, ptr %fld.gep39, align 8
  %a.rd.nonnull = icmp ne ptr %a.load237, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after29
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load237, i32 0, i32 0
  %a.rd.len41 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %fld.load40, 0
  %a.rd.lt = icmp slt i64 %fld.load40, %a.rd.len41
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load237, i32 0, i32 1
  %a.rd.data42 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data42, i64 %fld.load40
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after29
  %arena.cur43 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 327, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 36, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur44 = call ptr @dva_arena_current()
  %err.alloc45 = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 56)
  %err.code.gep46 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc45, i32 0, i32 0
  store i64 4011, ptr %err.code.gep46, align 8
  %err.msg.gep47 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc45, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep47, align 8
  %err.file.gep48 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc45, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep48, align 8
  %err.line.gep49 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc45, i32 0, i32 3
  store i64 327, ptr %err.line.gep49, align 8
  %err.col.gep50 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc45, i32 0, i32 4
  store i64 36, ptr %err.col.gep50, align 8
  %err.ctx.gep51 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc45, i32 0, i32 5
  %err.ctx0.gep52 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep51, i32 0, i32 0
  store i64 %fld.load40, ptr %err.ctx0.gep52, align 8
  %err.ctx1.gep53 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep51, i32 0, i32 1
  store i64 %a.rd.len41, ptr %err.ctx1.gep53, align 8
  %err.p2i54 = ptrtoint ptr %err.alloc45 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i54, %a.rd.err.oob ]
  %ram.tag55 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay56 = insertvalue { i1, i64 } %ram.tag55, i64 %a.rd.pay, 1
  %ram.tag57 = extractvalue { i1, i64 } %ram.pay56, 0
  br i1 %ram.tag57, label %choice.then58, label %choice.else59

choice.then58:                                    ; preds = %a.rd.done
  %ram.pay61 = extractvalue { i1, i64 } %ram.pay56, 1
  %pay.ptr62 = inttoptr i64 %ram.pay61 to ptr
  store ptr %pay.ptr62, ptr %var._63, align 8
  br label %choice.exit60

choice.else59:                                    ; preds = %a.rd.done
  %ram.pay64 = extractvalue { i1, i64 } %ram.pay56, 1
  %pay.ptr65 = inttoptr i64 %ram.pay64 to ptr
  store ptr %pay.ptr65, ptr %var._66, align 8
  %arena.cur67 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 1, ptr %rec.fld, align 8
  %rec.fld68 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld68, align 8
  %rec.fld69 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr @str.0.struct, ptr %rec.fld69, align 8
  br label %choice.exit60

choice.exit60:                                    ; preds = %choice.else59, %choice.then58
  %choice.res = phi ptr [ %pay.ptr62, %choice.then58 ], [ %rec.alloc, %choice.else59 ]
  store ptr %choice.res, ptr %var.bad, align 8
  %var.load70 = load ptr, ptr %var.file, align 8
  %var.load71 = load ptr, ptr %var.bad, align 8
  %fld.gep72 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load71, i32 0, i32 0
  %fld.load73 = load i64, ptr %fld.gep72, align 8
  %var.load74 = load ptr, ptr %var.bad, align 8
  %fld.gep75 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load74, i32 0, i32 1
  %fld.load76 = load i64, ptr %fld.gep75, align 8
  %addtmp = add i64 %fld.load76, 1
  %call.res77 = call ptr @"ccl::ccl_error"(ptr %var.load70, ptr @str.7.struct, i64 %fld.load73, i64 %addtmp)
  %p.to.i64 = ptrtoint ptr %call.res77 to i64
  %ram.pay78 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit24
}

define { i1, i64 } @"ccl::parse_file"(ptr %0) #1 {
entry:
  %var.content = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.txt = alloca ptr, align 8
  %var.r = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %arg.str.ptr1 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr2 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %arg.str.ptr3 = load i64, ptr %arg.str.ptr2, align 8
  %arg.str.ptr4 = and i64 %arg.str.ptr3, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr3, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr8 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %call.res = call i32 @open(ptr %arg.str.ptr8, i32 0)
  store i32 %call.res, ptr %var.fd, align 4
  %var.load9 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load9, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

nulcopy.len6:                                     ; preds = %str_overflow_abort, %nulcopy
  %arena.cur7 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  %var.load10 = load ptr, ptr %var.path, align 8
  %var.load11 = load ptr, ptr %var.path, align 8
  %concat.lhs = load i64, ptr @str.8.struct, align 8
  %concat.lhs12 = and i64 %concat.lhs, 281474976710655
  %str.tag13 = lshr i64 %concat.lhs, 48
  %str.immortal14 = icmp eq i64 %str.tag13, 0
  br i1 %str.immortal14, label %str_ok16, label %str_gen_check15

choice.else:                                      ; preds = %nulmerge
  %var.load43 = load i64, ptr %var.fd, align 8
  %call.res44 = call ptr @"io::reader"(i64 %var.load43)
  store ptr %call.res44, ptr %var.r, align 8
  %var.load45 = load ptr, ptr %var.r, align 8
  %call.res46 = call ptr @"io::read_all"(ptr %var.load45, i64 1048576)
  store ptr %call.res46, ptr %var.txt, align 8
  %var.load47 = load i64, ptr %var.fd, align 8
  %coerce.trunc = trunc i64 %var.load47 to i32
  %call.res48 = call i32 @close(i32 %coerce.trunc)
  %var.load49 = load ptr, ptr %var.txt, align 8
  %niche.ne.null = icmp ne ptr %var.load49, null
  br i1 %niche.ne.null, label %choice.then50, label %choice.else51

choice.exit:                                      ; preds = %choice.exit52, %concat.tot.len38
  %choice.res101 = phi { i1, i64 } [ %ram.pay, %concat.tot.len38 ], [ %choice.res, %choice.exit52 ]
  ret { i1, i64 } %choice.res101

str_gen_check15:                                  ; preds = %choice.then
  %arena.cur18 = call ptr @dva_arena_current()
  %tag.valid19 = call i1 @dva_arena_validate_tag(ptr %arena.cur18, i64 %str.tag13)
  br i1 %tag.valid19, label %str_ok16, label %str_stale17

str_ok16:                                         ; preds = %str_stale17, %str_gen_check15, %choice.then
  %concat.lhs20 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %concat.rhs21 = load i64, ptr %concat.rhs, align 8
  %concat.rhs22 = and i64 %concat.rhs21, 281474976710655
  %str.tag23 = lshr i64 %concat.rhs21, 48
  %str.immortal24 = icmp eq i64 %str.tag23, 0
  br i1 %str.immortal24, label %str_ok26, label %str_gen_check25

str_stale17:                                      ; preds = %str_gen_check15
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok16

str_gen_check25:                                  ; preds = %str_ok16
  %arena.cur28 = call ptr @dva_arena_current()
  %tag.valid29 = call i1 @dva_arena_validate_tag(ptr %arena.cur28, i64 %str.tag23)
  br i1 %tag.valid29, label %str_ok26, label %str_stale27

str_ok26:                                         ; preds = %str_stale27, %str_gen_check25, %str_ok16
  %concat.rhs30 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 1
  %concat.rhs31 = load ptr, ptr %concat.rhs30, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs12, i64 %concat.rhs22)
  %sum32 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf33 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf33, label %str_overflow_abort35, label %concat.sum.len34

str_stale27:                                      ; preds = %str_gen_check25
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok26

concat.sum.len34:                                 ; preds = %str_overflow_abort35, %str_ok26
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum32, i64 1)
  %sum36 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf37 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf37, label %str_overflow_abort39, label %concat.tot.len38

str_overflow_abort35:                             ; preds = %str_ok26
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len34

concat.tot.len38:                                 ; preds = %str_overflow_abort39, %concat.sum.len34
  %arena.cur40 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 %sum36)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs20, i64 %concat.lhs12, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs31, i64 %concat.rhs22, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum32
  store i8 0, ptr %concat.nul, align 1
  %arena.cur41 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum32, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res42 = call ptr @"ccl::ccl_error"(ptr %var.load10, ptr %concat.str, i64 1, i64 1)
  %p.to.i64 = ptrtoint ptr %call.res42 to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit

str_overflow_abort39:                             ; preds = %concat.sum.len34
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len38

choice.then50:                                    ; preds = %choice.else
  store ptr %var.load49, ptr %var._, align 8
  store ptr %var.load49, ptr %var.content, align 8
  %var.load53 = load ptr, ptr %var.content, align 8
  %var.load54 = load ptr, ptr %var.path, align 8
  %call.res55 = call { i1, i64 } @"ccl::parse"(ptr %var.load53, ptr %var.load54)
  br label %choice.exit52

choice.else51:                                    ; preds = %choice.else
  %var.load56 = load ptr, ptr %var.path, align 8
  %var.load57 = load ptr, ptr %var.path, align 8
  %concat.lhs58 = load i64, ptr @str.9.struct, align 8
  %concat.lhs59 = and i64 %concat.lhs58, 281474976710655
  %str.tag60 = lshr i64 %concat.lhs58, 48
  %str.immortal61 = icmp eq i64 %str.tag60, 0
  br i1 %str.immortal61, label %str_ok63, label %str_gen_check62

choice.exit52:                                    ; preds = %concat.tot.len88, %choice.then50
  %choice.res = phi { i1, i64 } [ %call.res55, %choice.then50 ], [ %ram.pay100, %concat.tot.len88 ]
  br label %choice.exit

str_gen_check62:                                  ; preds = %choice.else51
  %arena.cur65 = call ptr @dva_arena_current()
  %tag.valid66 = call i1 @dva_arena_validate_tag(ptr %arena.cur65, i64 %str.tag60)
  br i1 %tag.valid66, label %str_ok63, label %str_stale64

str_ok63:                                         ; preds = %str_stale64, %str_gen_check62, %choice.else51
  %concat.lhs67 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %concat.rhs68 = getelementptr inbounds { i64, ptr }, ptr %var.load57, i32 0, i32 0
  %concat.rhs69 = load i64, ptr %concat.rhs68, align 8
  %concat.rhs70 = and i64 %concat.rhs69, 281474976710655
  %str.tag71 = lshr i64 %concat.rhs69, 48
  %str.immortal72 = icmp eq i64 %str.tag71, 0
  br i1 %str.immortal72, label %str_ok74, label %str_gen_check73

str_stale64:                                      ; preds = %str_gen_check62
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok63

str_gen_check73:                                  ; preds = %str_ok63
  %arena.cur76 = call ptr @dva_arena_current()
  %tag.valid77 = call i1 @dva_arena_validate_tag(ptr %arena.cur76, i64 %str.tag71)
  br i1 %tag.valid77, label %str_ok74, label %str_stale75

str_ok74:                                         ; preds = %str_stale75, %str_gen_check73, %str_ok63
  %concat.rhs78 = getelementptr inbounds { i64, ptr }, ptr %var.load57, i32 0, i32 1
  %concat.rhs79 = load ptr, ptr %concat.rhs78, align 8
  %concat.sum.len80 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs59, i64 %concat.rhs70)
  %sum81 = extractvalue { i64, i1 } %concat.sum.len80, 0
  %ovf82 = extractvalue { i64, i1 } %concat.sum.len80, 1
  br i1 %ovf82, label %str_overflow_abort84, label %concat.sum.len83

str_stale75:                                      ; preds = %str_gen_check73
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok74

concat.sum.len83:                                 ; preds = %str_overflow_abort84, %str_ok74
  %concat.tot.len85 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum81, i64 1)
  %sum86 = extractvalue { i64, i1 } %concat.tot.len85, 0
  %ovf87 = extractvalue { i64, i1 } %concat.tot.len85, 1
  br i1 %ovf87, label %str_overflow_abort89, label %concat.tot.len88

str_overflow_abort84:                             ; preds = %str_ok74
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len83

concat.tot.len88:                                 ; preds = %str_overflow_abort89, %concat.sum.len83
  %arena.cur90 = call ptr @dva_arena_current()
  %concat.buf91 = call ptr @dva_arena_alloc(ptr %arena.cur90, i64 %sum86)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf91, ptr align 1 %concat.lhs67, i64 %concat.lhs59, i1 false)
  %concat.mid92 = getelementptr i8, ptr %concat.buf91, i64 %concat.lhs59
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid92, ptr align 1 %concat.rhs79, i64 %concat.rhs70, i1 false)
  %concat.nul93 = getelementptr i8, ptr %concat.buf91, i64 %sum81
  store i8 0, ptr %concat.nul93, align 1
  %arena.cur94 = call ptr @dva_arena_current()
  %concat.str95 = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 16)
  %str.build.len.gep96 = getelementptr inbounds { i64, ptr }, ptr %concat.str95, i32 0, i32 0
  store i64 %sum81, ptr %str.build.len.gep96, align 8
  %str.build.data.gep97 = getelementptr inbounds { i64, ptr }, ptr %concat.str95, i32 0, i32 1
  store ptr %concat.buf91, ptr %str.build.data.gep97, align 8
  %call.res98 = call ptr @"ccl::ccl_error"(ptr %var.load56, ptr %concat.str95, i64 1, i64 1)
  %p.to.i6499 = ptrtoint ptr %call.res98 to i64
  %ram.pay100 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6499, 1
  br label %choice.exit52

str_overflow_abort89:                             ; preds = %concat.sum.len83
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len88
}

declare ptr @"io::reader"(i64) #1

declare ptr @"io::read_all"(ptr, i64) #1

define i1 @"ccl::has_newline"(ptr %0) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.ch = alloca i64, align 8
  %loop.step.93 = alloca i64, align 8
  %loop.idx.93 = alloca i64, align 8
  %"var.found'" = alloca i1, align 1
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i1 false, ptr %"var.found'", align 1
  %var.load = load ptr, ptr %var.s, align 8
  %str.len = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len1 = load i64, ptr %str.len, align 8
  %str.len2 = and i64 %str.len1, 281474976710655
  %str.tag = lshr i64 %str.len1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %s.read.data3 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.93, align 8
  br label %loop.header.93

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.93:                                   ; preds = %loop.latch.93, %str_ok
  %counter.load = load i64, ptr %loop.idx.93, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len2
  br i1 %loop.cond, label %loop.body.93, label %loop.exit.nat.93

loop.body.93:                                     ; preds = %loop.header.93
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.93, align 8
  %s.byte.gep = getelementptr i8, ptr %s.read.data3, i64 %counter.load
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %s.byte.val, ptr %var._, align 8
  store i64 %s.byte.val, ptr %var.ch, align 8
  %var.load4 = load i64, ptr %var.ch, align 8
  %cmptmp = icmp eq i64 %var.load4, 10
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.93:                                 ; preds = %loop.header.93
  br label %loop.exit.93

loop.latch.93:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.93, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.93, align 8
  br label %loop.header.93

loop.exit.93:                                     ; preds = %choice.then, %loop.exit.nat.93
  %var.load5 = load i1, ptr %"var.found'", align 1
  ret i1 %var.load5

choice.then:                                      ; preds = %loop.body.93
  store i1 true, ptr %"var.found'", align 1
  br label %loop.exit.93

choice.exit:                                      ; preds = %loop.body.93
  br label %loop.latch.93
}

define void @"ccl::append_multiline_str"(ptr %0, i64 %1, ptr %2) #1 {
entry:
  %var._184 = alloca i64, align 8
  %var._i183 = alloca i64, align 8
  %loop.step.98 = alloca i64, align 8
  %loop.idx.98 = alloca i64, align 8
  %var.last_part = alloca ptr, align 8
  %var._51 = alloca i64, align 8
  %var._i50 = alloca i64, align 8
  %loop.step.95 = alloca i64, align 8
  %loop.idx.95 = alloca i64, align 8
  %var.part = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.94 = alloca i64, align 8
  %loop.idx.94 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %"var.line_start'" = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.child_indent = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.child_indent, align 8
  store ptr %2, ptr %var.b, align 8
  store i64 0, ptr %"var.line_start'", align 8
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
  %var.load3 = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.94, align 8
  br label %loop.header.94

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.94:                                   ; preds = %loop.latch.94, %str_ok
  %counter.load = load i64, ptr %loop.idx.94, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load3
  br i1 %loop.cond, label %loop.body.94, label %loop.exit.nat.94

loop.body.94:                                     ; preds = %loop.header.94
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.94, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load4 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

loop.exit.nat.94:                                 ; preds = %loop.header.94
  br label %loop.exit.94

loop.latch.94:                                    ; preds = %choice.exit
  %step.val124 = load i64, ptr %loop.step.94, align 8
  %loop.next125 = add i64 %counter.load, %step.val124
  store i64 %loop.next125, ptr %loop.idx.94, align 8
  br label %loop.header.94

loop.exit.94:                                     ; preds = %loop.exit.nat.94
  %var.load126 = load ptr, ptr %var.s, align 8
  %s.read.len127 = getelementptr inbounds { i64, ptr }, ptr %var.load126, i32 0, i32 0
  %s.read.len128 = load i64, ptr %s.read.len127, align 8
  %s.read.len129 = and i64 %s.read.len128, 281474976710655
  %str.tag130 = lshr i64 %s.read.len128, 48
  %str.immortal131 = icmp eq i64 %str.tag130, 0
  br i1 %str.immortal131, label %str_ok133, label %str_gen_check132

str_gen_check9:                                   ; preds = %loop.body.94
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %loop.body.94
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
  %cmptmp = icmp eq i64 %s.byte.val, 10
  br i1 %cmptmp, label %choice.then, label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %idx_ok
  %var.load16 = load ptr, ptr %var.s, align 8
  %s.read.len17 = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 0
  %s.read.len18 = load i64, ptr %s.read.len17, align 8
  %s.read.len19 = and i64 %s.read.len18, 281474976710655
  %str.tag20 = lshr i64 %s.read.len18, 48
  %str.immortal21 = icmp eq i64 %str.tag20, 0
  br i1 %str.immortal21, label %str_ok23, label %str_gen_check22

choice.exit:                                      ; preds = %b.push_done, %idx_ok
  br label %loop.latch.94

str_gen_check22:                                  ; preds = %choice.then
  %arena.cur25 = call ptr @dva_arena_current()
  %tag.valid26 = call i1 @dva_arena_validate_tag(ptr %arena.cur25, i64 %str.tag20)
  br i1 %tag.valid26, label %str_ok23, label %str_stale24

str_ok23:                                         ; preds = %str_stale24, %str_gen_check22, %choice.then
  %s.read.data27 = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 1
  %s.read.data28 = load ptr, ptr %s.read.data27, align 8
  %var.load29 = load i64, ptr %"var.line_start'", align 8
  %var.load30 = load i64, ptr %var.i, align 8
  %start.is_neg = icmp slt i64 %var.load29, 0
  %rel.start = add i64 %s.read.len19, %var.load29
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load29
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len19
  %final.start = select i1 %start.gt.len, i64 %s.read.len19, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load30, 0
  %rel.end = add i64 %s.read.len19, %var.load30
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load30
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len19
  %final.end = select i1 %end.gt.len, i64 %s.read.len19, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data28, i64 %final.start
  %arena.cur31 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %var.part, align 8
  %var.load32 = load ptr, ptr %var.part, align 8
  %str.len.query33 = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 0
  %str.len.query34 = load i64, ptr %str.len.query33, align 8
  %str.len.query35 = and i64 %str.len.query34, 281474976710655
  %str.tag36 = lshr i64 %str.len.query34, 48
  %str.immortal37 = icmp eq i64 %str.tag36, 0
  br i1 %str.immortal37, label %str_ok39, label %str_gen_check38

str_stale24:                                      ; preds = %str_gen_check22
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok23

str_gen_check38:                                  ; preds = %str_ok23
  %arena.cur41 = call ptr @dva_arena_current()
  %tag.valid42 = call i1 @dva_arena_validate_tag(ptr %arena.cur41, i64 %str.tag36)
  br i1 %tag.valid42, label %str_ok39, label %str_stale40

str_ok39:                                         ; preds = %str_stale40, %str_gen_check38, %str_ok23
  %cmptmp43 = icmp sgt i64 %str.len.query35, 0
  br i1 %cmptmp43, label %choice.then44, label %choice.exit45

str_stale40:                                      ; preds = %str_gen_check38
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok39

choice.then44:                                    ; preds = %str_ok39
  %var.load46 = load i64, ptr %var.child_indent, align 8
  store i64 0, ptr %loop.idx.95, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.95

choice.exit45:                                    ; preds = %b.grow_done84, %str_ok39
  %b.load107 = load ptr, ptr %var.b, align 8
  br i1 true, label %b.byte_ok, label %b.byte_err

loop.header.95:                                   ; preds = %loop.latch.95, %choice.then44
  %counter.load47 = load i64, ptr %loop.idx.95, align 8
  %loop.cond48 = icmp slt i64 %counter.load47, %var.load46
  br i1 %loop.cond48, label %loop.body.95, label %loop.exit.nat.95

loop.body.95:                                     ; preds = %loop.header.95
  %loop.rel.i49 = sub i64 %counter.load47, 0
  store i64 1, ptr %loop.step.95, align 8
  store i64 %loop.rel.i49, ptr %var._i50, align 8
  store i64 %counter.load47, ptr %var._51, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len52 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len52, i64 1)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len53

loop.exit.nat.95:                                 ; preds = %loop.header.95
  br label %loop.exit.95

loop.latch.95:                                    ; preds = %br.done.96
  %step.val = load i64, ptr %loop.step.95, align 8
  %loop.next = add i64 %counter.load47, %step.val
  store i64 %loop.next, ptr %loop.idx.95, align 8
  br label %loop.header.95

loop.exit.95:                                     ; preds = %loop.exit.nat.95
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %b.load63 = load ptr, ptr %var.b, align 8
  %var.load64 = load ptr, ptr %var.part, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load64, i32 0, i32 0
  %app.str.len65 = load i64, ptr %app.str.len, align 8
  %app.str.len66 = and i64 %app.str.len65, 281474976710655
  %str.tag67 = lshr i64 %app.str.len65, 48
  %str.immortal68 = icmp eq i64 %str.tag67, 0
  br i1 %str.immortal68, label %str_ok70, label %str_gen_check69

b.rn.new.len53:                                   ; preds = %str_overflow_abort, %loop.body.95
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap54 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap54, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %loop.body.95
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len53

b.grow2:                                          ; preds = %b.rn.new.len53
  %b.cap2 = mul i64 %b.cap54, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len255 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data256 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum57 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf58 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf58, label %str_overflow_abort60, label %b.new.buf.len259

b.nogrow2:                                        ; preds = %b.rn.new.len53
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len259
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data62 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data62, i64 %b.rn.cur.len52
  br i1 true, label %br.b1.96, label %br.c2.96

b.new.buf.len259:                                 ; preds = %str_overflow_abort60, %b.grow2
  %arena.cur61 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 %sum57)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data256, i64 %b.cur.len255, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len255
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort60:                             ; preds = %b.grow2
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len259

br.b1.96:                                         ; preds = %b.grow_done
  store i8 32, ptr %b.rn.dst, align 1
  br label %br.done.96

br.c2.96:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.96, label %br.c3.96

br.b2.96:                                         ; preds = %br.c2.96
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -96, ptr %br.dst1, align 1
  br label %br.done.96

br.c3.96:                                         ; preds = %br.c2.96
  br i1 true, label %br.b3.96, label %br.b4.96

br.b3.96:                                         ; preds = %br.c3.96
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -96, ptr %br.dst2.3, align 1
  br label %br.done.96

br.b4.96:                                         ; preds = %br.c3.96
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -96, ptr %br.dst3.4, align 1
  br label %br.done.96

br.done.96:                                       ; preds = %br.b4.96, %br.b3.96, %br.b2.96, %br.b1.96
  %br.nul = getelementptr i8, ptr %b.rn.data62, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %loop.latch.95

str_gen_check69:                                  ; preds = %loop.exit.95
  %arena.cur72 = call ptr @dva_arena_current()
  %tag.valid73 = call i1 @dva_arena_validate_tag(ptr %arena.cur72, i64 %str.tag67)
  br i1 %tag.valid73, label %str_ok70, label %str_stale71

str_ok70:                                         ; preds = %str_stale71, %str_gen_check69, %loop.exit.95
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load63, i32 0, i32 0
  %b.app.cur.len74 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len74, i64 %app.str.len66)
  %sum75 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf76 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf76, label %str_overflow_abort78, label %b.app.new.len77

str_stale71:                                      ; preds = %str_gen_check69
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok70

b.app.new.len77:                                  ; preds = %str_overflow_abort78, %str_ok70
  %b.cap79 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load63, i32 0, i32 2
  %b.cap80 = load i64, ptr %b.cap79, align 8
  %b.need.grow81 = icmp slt i64 %b.cap80, %sum75
  br i1 %b.need.grow81, label %b.grow282, label %b.nogrow283

str_overflow_abort78:                             ; preds = %str_ok70
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len77

b.grow282:                                        ; preds = %b.app.new.len77
  %b.cap285 = mul i64 %b.cap80, 2
  %b.cap.small86 = icmp slt i64 %b.cap285, 16
  %b.cap.grow87 = select i1 %b.cap.small86, i64 16, i64 %b.cap285
  %b.cap.need88 = icmp slt i64 %b.cap.grow87, %sum75
  %b.new.cap89 = select i1 %b.cap.need88, i64 %sum75, i64 %b.cap.grow87
  %b.cur.len290 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load63, i32 0, i32 0
  %b.cur.len291 = load i64, ptr %b.cur.len290, align 8
  %b.cur.data292 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load63, i32 0, i32 1
  %b.cur.data293 = load ptr, ptr %b.cur.data292, align 8
  %b.new.buf.len294 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap89, i64 1)
  %sum95 = extractvalue { i64, i1 } %b.new.buf.len294, 0
  %ovf96 = extractvalue { i64, i1 } %b.new.buf.len294, 1
  br i1 %ovf96, label %str_overflow_abort98, label %b.new.buf.len297

b.nogrow283:                                      ; preds = %b.app.new.len77
  br label %b.grow_done84

b.grow_done84:                                    ; preds = %b.nogrow283, %b.new.buf.len297
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load64, i32 0, i32 1
  %app.str.data104 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load63, i32 0, i32 1
  %b.app.data105 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data105, i64 %b.app.cur.len74
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data104, i64 %app.str.len66, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data105, i64 %sum75
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep106 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load63, i32 0, i32 0
  store i64 %sum75, ptr %b.len.gep106, align 8
  br label %choice.exit45

b.new.buf.len297:                                 ; preds = %str_overflow_abort98, %b.grow282
  %arena.cur99 = call ptr @dva_arena_current()
  %b.new.buf2100 = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 %sum95)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2100, ptr align 1 %b.cur.data293, i64 %b.cur.len291, i1 false)
  %b.grow2.nul101 = getelementptr i8, ptr %b.new.buf2100, i64 %b.cur.len291
  store i8 0, ptr %b.grow2.nul101, align 1
  %b.new.data2.gep102 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load63, i32 0, i32 1
  store ptr %b.new.buf2100, ptr %b.new.data2.gep102, align 8
  %b.new.cap2.gep103 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load63, i32 0, i32 2
  store i64 %b.new.cap89, ptr %b.new.cap2.gep103, align 8
  br label %b.grow_done84

str_overflow_abort98:                             ; preds = %b.grow282
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len297

b.byte_ok:                                        ; preds = %b.byte_err, %choice.exit45
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load107, i32 0, i32 0
  %b.len108 = load i64, ptr %b.len, align 8
  %b.cap109 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load107, i32 0, i32 2
  %b.cap110 = load i64, ptr %b.cap109, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load107, i32 0, i32 1
  %b.data111 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len108, %b.cap110
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.exit45
  %13 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2112 = mul i64 %b.cap110, 2
  %b.cap.small113 = icmp slt i64 %b.cap2112, 16
  %b.new.cap114 = select i1 %b.cap.small113, i64 16, i64 %b.cap2112
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap114, i64 1)
  %sum115 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf116 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf116, label %str_overflow_abort118, label %b.new.buf.len117

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len117
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load107, i32 0, i32 1
  %b.cur.data120 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load107, i32 0, i32 0
  %b.cur.len121 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data120, i64 %b.cur.len121
  store i8 10, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len121, 1
  %b.nul = getelementptr i8, ptr %b.cur.data120, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep122 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load107, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep122, align 8
  %var.load123 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load123, 1
  store i64 %addtmp, ptr %"var.line_start'", align 8
  br label %choice.exit

b.new.buf.len117:                                 ; preds = %str_overflow_abort118, %b.grow
  %arena.cur119 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur119, i64 %sum115)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data111, i64 %b.len108, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len108
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load107, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load107, i32 0, i32 2
  store i64 %b.new.cap114, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort118:                            ; preds = %b.grow
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len117

str_gen_check132:                                 ; preds = %loop.exit.94
  %arena.cur135 = call ptr @dva_arena_current()
  %tag.valid136 = call i1 @dva_arena_validate_tag(ptr %arena.cur135, i64 %str.tag130)
  br i1 %tag.valid136, label %str_ok133, label %str_stale134

str_ok133:                                        ; preds = %str_stale134, %str_gen_check132, %loop.exit.94
  %s.read.data137 = getelementptr inbounds { i64, ptr }, ptr %var.load126, i32 0, i32 1
  %s.read.data138 = load ptr, ptr %s.read.data137, align 8
  %var.load139 = load i64, ptr %"var.line_start'", align 8
  %var.load140 = load i64, ptr %var.n, align 8
  %start.is_neg141 = icmp slt i64 %var.load139, 0
  %rel.start142 = add i64 %s.read.len129, %var.load139
  %norm.start143 = select i1 %start.is_neg141, i64 %rel.start142, i64 %var.load139
  %start.lt.0144 = icmp slt i64 %norm.start143, 0
  %c.start.0145 = select i1 %start.lt.0144, i64 0, i64 %norm.start143
  %start.gt.len146 = icmp sgt i64 %c.start.0145, %s.read.len129
  %final.start147 = select i1 %start.gt.len146, i64 %s.read.len129, i64 %c.start.0145
  %end.is_neg148 = icmp slt i64 %var.load140, 0
  %rel.end149 = add i64 %s.read.len129, %var.load140
  %norm.end150 = select i1 %end.is_neg148, i64 %rel.end149, i64 %var.load140
  %end.lt.0151 = icmp slt i64 %norm.end150, 0
  %c.end.0152 = select i1 %end.lt.0151, i64 0, i64 %norm.end150
  %end.gt.len153 = icmp sgt i64 %c.end.0152, %s.read.len129
  %final.end154 = select i1 %end.gt.len153, i64 %s.read.len129, i64 %c.end.0152
  %view.empty155 = icmp sle i64 %final.end154, %final.start147
  %view.len.sub156 = sub i64 %final.end154, %final.start147
  %view.len157 = select i1 %view.empty155, i64 0, i64 %view.len.sub156
  %view.data158 = getelementptr i8, ptr %s.read.data138, i64 %final.start147
  %arena.cur159 = call ptr @dva_arena_current()
  %str.view160 = call ptr @dva_arena_alloc(ptr %arena.cur159, i64 16)
  %str.build.len.gep161 = getelementptr inbounds { i64, ptr }, ptr %str.view160, i32 0, i32 0
  store i64 %view.len157, ptr %str.build.len.gep161, align 8
  %str.build.data.gep162 = getelementptr inbounds { i64, ptr }, ptr %str.view160, i32 0, i32 1
  store ptr %view.data158, ptr %str.build.data.gep162, align 8
  store ptr %str.view160, ptr %var.last_part, align 8
  %var.load163 = load ptr, ptr %var.last_part, align 8
  %str.len.query164 = getelementptr inbounds { i64, ptr }, ptr %var.load163, i32 0, i32 0
  %str.len.query165 = load i64, ptr %str.len.query164, align 8
  %str.len.query166 = and i64 %str.len.query165, 281474976710655
  %str.tag167 = lshr i64 %str.len.query165, 48
  %str.immortal168 = icmp eq i64 %str.tag167, 0
  br i1 %str.immortal168, label %str_ok170, label %str_gen_check169

str_stale134:                                     ; preds = %str_gen_check132
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok133

str_gen_check169:                                 ; preds = %str_ok133
  %arena.cur172 = call ptr @dva_arena_current()
  %tag.valid173 = call i1 @dva_arena_validate_tag(ptr %arena.cur172, i64 %str.tag167)
  br i1 %tag.valid173, label %str_ok170, label %str_stale171

str_ok170:                                        ; preds = %str_stale171, %str_gen_check169, %str_ok133
  %cmptmp174 = icmp sgt i64 %str.len.query166, 0
  br i1 %cmptmp174, label %or.97.then, label %or.97.else

str_stale171:                                     ; preds = %str_gen_check169
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok170

or.97.then:                                       ; preds = %str_ok170
  br label %or.97.exit

or.97.else:                                       ; preds = %str_ok170
  %var.load175 = load i64, ptr %var.n, align 8
  %cmptmp176 = icmp eq i64 %var.load175, 0
  br label %or.97.exit

or.97.exit:                                       ; preds = %or.97.else, %or.97.then
  %or.97.phi = phi i1 [ %cmptmp174, %or.97.then ], [ %cmptmp176, %or.97.else ]
  br i1 %or.97.phi, label %choice.then177, label %choice.exit178

choice.then177:                                   ; preds = %or.97.exit
  %var.load179 = load i64, ptr %var.child_indent, align 8
  store i64 0, ptr %loop.idx.98, align 8
  br label %loop.header.98

choice.exit178:                                   ; preds = %b.push_done294, %or.97.exit
  ret void

loop.header.98:                                   ; preds = %loop.latch.98, %choice.then177
  %counter.load180 = load i64, ptr %loop.idx.98, align 8
  %loop.cond181 = icmp slt i64 %counter.load180, %var.load179
  br i1 %loop.cond181, label %loop.body.98, label %loop.exit.nat.98

loop.body.98:                                     ; preds = %loop.header.98
  %loop.rel.i182 = sub i64 %counter.load180, 0
  store i64 1, ptr %loop.step.98, align 8
  store i64 %loop.rel.i182, ptr %var._i183, align 8
  store i64 %counter.load180, ptr %var._184, align 8
  %b.load185 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len186 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 0
  %b.rn.cur.len187 = load i64, ptr %b.rn.cur.len186, align 8
  %b.rn.new.len188 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len187, i64 1)
  %sum189 = extractvalue { i64, i1 } %b.rn.new.len188, 0
  %ovf190 = extractvalue { i64, i1 } %b.rn.new.len188, 1
  br i1 %ovf190, label %str_overflow_abort192, label %b.rn.new.len191

loop.exit.nat.98:                                 ; preds = %loop.header.98
  br label %loop.exit.98

loop.latch.98:                                    ; preds = %br.done.99
  %step.val229 = load i64, ptr %loop.step.98, align 8
  %loop.next230 = add i64 %counter.load180, %step.val229
  store i64 %loop.next230, ptr %loop.idx.98, align 8
  br label %loop.header.98

loop.exit.98:                                     ; preds = %loop.exit.nat.98
  %b.load231 = load ptr, ptr %var.b, align 8
  %var.load232 = load ptr, ptr %var.last_part, align 8
  %app.str.len233 = getelementptr inbounds { i64, ptr }, ptr %var.load232, i32 0, i32 0
  %app.str.len234 = load i64, ptr %app.str.len233, align 8
  %app.str.len235 = and i64 %app.str.len234, 281474976710655
  %str.tag236 = lshr i64 %app.str.len234, 48
  %str.immortal237 = icmp eq i64 %str.tag236, 0
  br i1 %str.immortal237, label %str_ok239, label %str_gen_check238

b.rn.new.len191:                                  ; preds = %str_overflow_abort192, %loop.body.98
  %b.cap193 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 2
  %b.cap194 = load i64, ptr %b.cap193, align 8
  %b.need.grow195 = icmp slt i64 %b.cap194, %sum189
  br i1 %b.need.grow195, label %b.grow2196, label %b.nogrow2197

str_overflow_abort192:                            ; preds = %loop.body.98
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len191

b.grow2196:                                       ; preds = %b.rn.new.len191
  %b.cap2199 = mul i64 %b.cap194, 2
  %b.cap.small200 = icmp slt i64 %b.cap2199, 16
  %b.cap.grow201 = select i1 %b.cap.small200, i64 16, i64 %b.cap2199
  %b.cap.need202 = icmp slt i64 %b.cap.grow201, %sum189
  %b.new.cap203 = select i1 %b.cap.need202, i64 %sum189, i64 %b.cap.grow201
  %b.cur.len2204 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 0
  %b.cur.len2205 = load i64, ptr %b.cur.len2204, align 8
  %b.cur.data2206 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 1
  %b.cur.data2207 = load ptr, ptr %b.cur.data2206, align 8
  %b.new.buf.len2208 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap203, i64 1)
  %sum209 = extractvalue { i64, i1 } %b.new.buf.len2208, 0
  %ovf210 = extractvalue { i64, i1 } %b.new.buf.len2208, 1
  br i1 %ovf210, label %str_overflow_abort212, label %b.new.buf.len2211

b.nogrow2197:                                     ; preds = %b.rn.new.len191
  br label %b.grow_done198

b.grow_done198:                                   ; preds = %b.nogrow2197, %b.new.buf.len2211
  %b.rn.data218 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 1
  %b.rn.data219 = load ptr, ptr %b.rn.data218, align 8
  %b.rn.dst220 = getelementptr i8, ptr %b.rn.data219, i64 %b.rn.cur.len187
  br i1 true, label %br.b1.99, label %br.c2.99

b.new.buf.len2211:                                ; preds = %str_overflow_abort212, %b.grow2196
  %arena.cur213 = call ptr @dva_arena_current()
  %b.new.buf2214 = call ptr @dva_arena_alloc(ptr %arena.cur213, i64 %sum209)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2214, ptr align 1 %b.cur.data2207, i64 %b.cur.len2205, i1 false)
  %b.grow2.nul215 = getelementptr i8, ptr %b.new.buf2214, i64 %b.cur.len2205
  store i8 0, ptr %b.grow2.nul215, align 1
  %b.new.data2.gep216 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 1
  store ptr %b.new.buf2214, ptr %b.new.data2.gep216, align 8
  %b.new.cap2.gep217 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 2
  store i64 %b.new.cap203, ptr %b.new.cap2.gep217, align 8
  br label %b.grow_done198

str_overflow_abort212:                            ; preds = %b.grow2196
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2211

br.b1.99:                                         ; preds = %b.grow_done198
  store i8 32, ptr %b.rn.dst220, align 1
  br label %br.done.99

br.c2.99:                                         ; preds = %b.grow_done198
  br i1 true, label %br.b2.99, label %br.c3.99

br.b2.99:                                         ; preds = %br.c2.99
  store i8 -64, ptr %b.rn.dst220, align 1
  %br.dst1221 = getelementptr i8, ptr %b.rn.dst220, i64 1
  store i8 -96, ptr %br.dst1221, align 1
  br label %br.done.99

br.c3.99:                                         ; preds = %br.c2.99
  br i1 true, label %br.b3.99, label %br.b4.99

br.b3.99:                                         ; preds = %br.c3.99
  store i8 -32, ptr %b.rn.dst220, align 1
  %br.dst1.3222 = getelementptr i8, ptr %b.rn.dst220, i64 1
  store i8 -128, ptr %br.dst1.3222, align 1
  %br.dst2.3223 = getelementptr i8, ptr %b.rn.dst220, i64 2
  store i8 -96, ptr %br.dst2.3223, align 1
  br label %br.done.99

br.b4.99:                                         ; preds = %br.c3.99
  store i8 -16, ptr %b.rn.dst220, align 1
  %br.dst1.4224 = getelementptr i8, ptr %b.rn.dst220, i64 1
  store i8 -128, ptr %br.dst1.4224, align 1
  %br.dst2.4225 = getelementptr i8, ptr %b.rn.dst220, i64 2
  store i8 -128, ptr %br.dst2.4225, align 1
  %br.dst3.4226 = getelementptr i8, ptr %b.rn.dst220, i64 3
  store i8 -96, ptr %br.dst3.4226, align 1
  br label %br.done.99

br.done.99:                                       ; preds = %br.b4.99, %br.b3.99, %br.b2.99, %br.b1.99
  %br.nul227 = getelementptr i8, ptr %b.rn.data219, i64 %sum189
  store i8 0, ptr %br.nul227, align 1
  %b.len.gep228 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 0
  store i64 %sum189, ptr %b.len.gep228, align 8
  br label %loop.latch.98

str_gen_check238:                                 ; preds = %loop.exit.98
  %arena.cur241 = call ptr @dva_arena_current()
  %tag.valid242 = call i1 @dva_arena_validate_tag(ptr %arena.cur241, i64 %str.tag236)
  br i1 %tag.valid242, label %str_ok239, label %str_stale240

str_ok239:                                        ; preds = %str_stale240, %str_gen_check238, %loop.exit.98
  %b.app.cur.len243 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 0
  %b.app.cur.len244 = load i64, ptr %b.app.cur.len243, align 8
  %b.app.new.len245 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len244, i64 %app.str.len235)
  %sum246 = extractvalue { i64, i1 } %b.app.new.len245, 0
  %ovf247 = extractvalue { i64, i1 } %b.app.new.len245, 1
  br i1 %ovf247, label %str_overflow_abort249, label %b.app.new.len248

str_stale240:                                     ; preds = %str_gen_check238
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok239

b.app.new.len248:                                 ; preds = %str_overflow_abort249, %str_ok239
  %b.cap250 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 2
  %b.cap251 = load i64, ptr %b.cap250, align 8
  %b.need.grow252 = icmp slt i64 %b.cap251, %sum246
  br i1 %b.need.grow252, label %b.grow2253, label %b.nogrow2254

str_overflow_abort249:                            ; preds = %str_ok239
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len248

b.grow2253:                                       ; preds = %b.app.new.len248
  %b.cap2256 = mul i64 %b.cap251, 2
  %b.cap.small257 = icmp slt i64 %b.cap2256, 16
  %b.cap.grow258 = select i1 %b.cap.small257, i64 16, i64 %b.cap2256
  %b.cap.need259 = icmp slt i64 %b.cap.grow258, %sum246
  %b.new.cap260 = select i1 %b.cap.need259, i64 %sum246, i64 %b.cap.grow258
  %b.cur.len2261 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 0
  %b.cur.len2262 = load i64, ptr %b.cur.len2261, align 8
  %b.cur.data2263 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 1
  %b.cur.data2264 = load ptr, ptr %b.cur.data2263, align 8
  %b.new.buf.len2265 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap260, i64 1)
  %sum266 = extractvalue { i64, i1 } %b.new.buf.len2265, 0
  %ovf267 = extractvalue { i64, i1 } %b.new.buf.len2265, 1
  br i1 %ovf267, label %str_overflow_abort269, label %b.new.buf.len2268

b.nogrow2254:                                     ; preds = %b.app.new.len248
  br label %b.grow_done255

b.grow_done255:                                   ; preds = %b.nogrow2254, %b.new.buf.len2268
  %app.str.data275 = getelementptr inbounds { i64, ptr }, ptr %var.load232, i32 0, i32 1
  %app.str.data276 = load ptr, ptr %app.str.data275, align 8
  %b.app.data277 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 1
  %b.app.data278 = load ptr, ptr %b.app.data277, align 8
  %b.app.dst279 = getelementptr i8, ptr %b.app.data278, i64 %b.app.cur.len244
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst279, ptr align 1 %app.str.data276, i64 %app.str.len235, i1 false)
  %b.app.nul280 = getelementptr i8, ptr %b.app.data278, i64 %sum246
  store i8 0, ptr %b.app.nul280, align 1
  %b.len.gep281 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 0
  store i64 %sum246, ptr %b.len.gep281, align 8
  %b.load282 = load ptr, ptr %var.b, align 8
  br i1 true, label %b.byte_ok283, label %b.byte_err284

b.new.buf.len2268:                                ; preds = %str_overflow_abort269, %b.grow2253
  %arena.cur270 = call ptr @dva_arena_current()
  %b.new.buf2271 = call ptr @dva_arena_alloc(ptr %arena.cur270, i64 %sum266)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2271, ptr align 1 %b.cur.data2264, i64 %b.cur.len2262, i1 false)
  %b.grow2.nul272 = getelementptr i8, ptr %b.new.buf2271, i64 %b.cur.len2262
  store i8 0, ptr %b.grow2.nul272, align 1
  %b.new.data2.gep273 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 1
  store ptr %b.new.buf2271, ptr %b.new.data2.gep273, align 8
  %b.new.cap2.gep274 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 2
  store i64 %b.new.cap260, ptr %b.new.cap2.gep274, align 8
  br label %b.grow_done255

str_overflow_abort269:                            ; preds = %b.grow2253
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2268

b.byte_ok283:                                     ; preds = %b.byte_err284, %b.grow_done255
  %b.len285 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load282, i32 0, i32 0
  %b.len286 = load i64, ptr %b.len285, align 8
  %b.cap287 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load282, i32 0, i32 2
  %b.cap288 = load i64, ptr %b.cap287, align 8
  %b.data289 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load282, i32 0, i32 1
  %b.data290 = load ptr, ptr %b.data289, align 8
  %b.needs.grow291 = icmp eq i64 %b.len286, %b.cap288
  br i1 %b.needs.grow291, label %b.grow292, label %b.nogrow293

b.byte_err284:                                    ; preds = %b.grow_done255
  %22 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok283

b.grow292:                                        ; preds = %b.byte_ok283
  %b.cap2295 = mul i64 %b.cap288, 2
  %b.cap.small296 = icmp slt i64 %b.cap2295, 16
  %b.new.cap297 = select i1 %b.cap.small296, i64 16, i64 %b.cap2295
  %b.new.buf.len298 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap297, i64 1)
  %sum299 = extractvalue { i64, i1 } %b.new.buf.len298, 0
  %ovf300 = extractvalue { i64, i1 } %b.new.buf.len298, 1
  br i1 %ovf300, label %str_overflow_abort302, label %b.new.buf.len301

b.nogrow293:                                      ; preds = %b.byte_ok283
  br label %b.push_done294

b.push_done294:                                   ; preds = %b.nogrow293, %b.new.buf.len301
  %b.cur.data308 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load282, i32 0, i32 1
  %b.cur.data309 = load ptr, ptr %b.cur.data308, align 8
  %b.cur.len310 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load282, i32 0, i32 0
  %b.cur.len311 = load i64, ptr %b.cur.len310, align 8
  %b.byte.gep312 = getelementptr i8, ptr %b.cur.data309, i64 %b.cur.len311
  store i8 10, ptr %b.byte.gep312, align 1
  %b.next.len313 = add i64 %b.cur.len311, 1
  %b.nul314 = getelementptr i8, ptr %b.cur.data309, i64 %b.next.len313
  store i8 0, ptr %b.nul314, align 1
  %b.len.gep315 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load282, i32 0, i32 0
  store i64 %b.next.len313, ptr %b.len.gep315, align 8
  br label %choice.exit178

b.new.buf.len301:                                 ; preds = %str_overflow_abort302, %b.grow292
  %arena.cur303 = call ptr @dva_arena_current()
  %b.new.buf304 = call ptr @dva_arena_alloc(ptr %arena.cur303, i64 %sum299)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf304, ptr align 1 %b.data290, i64 %b.len286, i1 false)
  %b.grow.nul305 = getelementptr i8, ptr %b.new.buf304, i64 %b.len286
  store i8 0, ptr %b.grow.nul305, align 1
  %b.new.data.gep306 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load282, i32 0, i32 1
  store ptr %b.new.buf304, ptr %b.new.data.gep306, align 8
  %b.new.cap.gep307 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load282, i32 0, i32 2
  store i64 %b.new.cap297, ptr %b.new.cap.gep307, align 8
  br label %b.push_done294

str_overflow_abort302:                            ; preds = %b.grow292
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len301
}

define void @"ccl::serialize_doc_indent"(ptr %0, i64 %1, ptr %2) #1 {
entry:
  %var.sub864 = alloca ptr, align 8
  %var._863 = alloca ptr, align 8
  %var.s631 = alloca ptr, align 8
  %var._630 = alloca ptr, align 8
  %var.sub = alloca ptr, align 8
  %var._467 = alloca ptr, align 8
  %var.s237 = alloca ptr, align 8
  %var._236 = alloca ptr, align 8
  %var._155 = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  %var._80 = alloca ptr, align 8
  %var._10 = alloca i64, align 8
  %var._i9 = alloca i64, align 8
  %loop.step.101 = alloca i64, align 8
  %loop.idx.101 = alloca i64, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.100 = alloca i64, align 8
  %loop.idx.100 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.indent = alloca i64, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  store i64 %1, ptr %var.indent, align 8
  store ptr %2, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len3 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.100, align 8
  br label %loop.header.100

loop.header.100:                                  ; preds = %loop.latch.100, %a.after
  %counter.load = load i64, ptr %loop.idx.100, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.100, label %loop.exit.nat.100

loop.body.100:                                    ; preds = %loop.header.100
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.100, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load5 = load i64, ptr %var.indent, align 8
  store i64 0, ptr %loop.idx.101, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.101

loop.exit.nat.100:                                ; preds = %loop.header.100
  br label %loop.exit.100

loop.latch.100:                                   ; preds = %choice.exit
  %step.val963 = load i64, ptr %loop.step.100, align 8
  %loop.next964 = add i64 %counter.load, %step.val963
  store i64 %loop.next964, ptr %loop.idx.100, align 8
  br label %loop.header.100

loop.exit.100:                                    ; preds = %loop.exit.nat.100
  ret void

loop.header.101:                                  ; preds = %loop.latch.101, %loop.body.100
  %counter.load6 = load i64, ptr %loop.idx.101, align 8
  %loop.cond7 = icmp slt i64 %counter.load6, %var.load5
  br i1 %loop.cond7, label %loop.body.101, label %loop.exit.nat.101

loop.body.101:                                    ; preds = %loop.header.101
  %loop.rel.i8 = sub i64 %counter.load6, 0
  store i64 1, ptr %loop.step.101, align 8
  store i64 %loop.rel.i8, ptr %var._i9, align 8
  store i64 %counter.load6, ptr %var._10, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len11 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len11, i64 1)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len12

loop.exit.nat.101:                                ; preds = %loop.header.101
  br label %loop.exit.101

loop.latch.101:                                   ; preds = %br.done.102
  %step.val = load i64, ptr %loop.step.101, align 8
  %loop.next = add i64 %counter.load6, %step.val
  store i64 %loop.next, ptr %loop.idx.101, align 8
  br label %loop.header.101

loop.exit.101:                                    ; preds = %loop.exit.nat.101
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load22 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load22, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len23 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len24 = and i64 %eq.lhs.len23, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len23, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

b.rn.new.len12:                                   ; preds = %str_overflow_abort, %loop.body.101
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap13 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap13, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %loop.body.101
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len12

b.grow2:                                          ; preds = %b.rn.new.len12
  %b.cap2 = mul i64 %b.cap13, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len214 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data215 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum16 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf17 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf17, label %str_overflow_abort19, label %b.new.buf.len218

b.nogrow2:                                        ; preds = %b.rn.new.len12
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len218
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data21 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data21, i64 %b.rn.cur.len11
  br i1 true, label %br.b1.102, label %br.c2.102

b.new.buf.len218:                                 ; preds = %str_overflow_abort19, %b.grow2
  %arena.cur20 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 %sum16)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data215, i64 %b.cur.len214, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len214
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort19:                             ; preds = %b.grow2
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len218

br.b1.102:                                        ; preds = %b.grow_done
  store i8 32, ptr %b.rn.dst, align 1
  br label %br.done.102

br.c2.102:                                        ; preds = %b.grow_done
  br i1 true, label %br.b2.102, label %br.c3.102

br.b2.102:                                        ; preds = %br.c2.102
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -96, ptr %br.dst1, align 1
  br label %br.done.102

br.c3.102:                                        ; preds = %br.c2.102
  br i1 true, label %br.b3.102, label %br.b4.102

br.b3.102:                                        ; preds = %br.c3.102
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -96, ptr %br.dst2.3, align 1
  br label %br.done.102

br.b4.102:                                        ; preds = %br.c3.102
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -96, ptr %br.dst3.4, align 1
  br label %br.done.102

br.done.102:                                      ; preds = %br.b4.102, %br.b3.102, %br.b2.102, %br.b1.102
  %br.nul = getelementptr i8, ptr %b.rn.data21, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %loop.latch.101

str_gen_check:                                    ; preds = %loop.exit.101
  %arena.cur25 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur25, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.exit.101
  %eq.rhs.len = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len26 = and i64 %eq.rhs.len, 281474976710655
  %str.tag27 = lshr i64 %eq.rhs.len, 48
  %str.immortal28 = icmp eq i64 %str.tag27, 0
  br i1 %str.immortal28, label %str_ok30, label %str_gen_check29

str_stale:                                        ; preds = %str_gen_check
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check29:                                  ; preds = %str_ok
  %arena.cur32 = call ptr @dva_arena_current()
  %tag.valid33 = call i1 @dva_arena_validate_tag(ptr %arena.cur32, i64 %str.tag27)
  br i1 %tag.valid33, label %str_ok30, label %str_stale31

str_ok30:                                         ; preds = %str_stale31, %str_gen_check29, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len24, %eq.rhs.len26
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale31:                                      ; preds = %str_gen_check29
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok30

str.eq.then:                                      ; preds = %str_ok30
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data34 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data34, ptr %eq.rhs.data, i64 %eq.lhs.len24)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok30
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  %b.load35 = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.10.struct, align 8
  %app.str.len36 = and i64 %app.str.len, 281474976710655
  %str.tag37 = lshr i64 %app.str.len, 48
  %str.immortal38 = icmp eq i64 %str.tag37, 0
  br i1 %str.immortal38, label %str_ok40, label %str_gen_check39

choice.else:                                      ; preds = %str.eq.merge
  %var.load190 = load ptr, ptr %var.e, align 8
  %fld.gep191 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load190, i32 0, i32 0
  %fld.load192 = load ptr, ptr %fld.gep191, align 8
  %eq.lhs.len193 = getelementptr inbounds { i64, ptr }, ptr %fld.load192, i32 0, i32 0
  %eq.lhs.len194 = load i64, ptr %eq.lhs.len193, align 8
  %eq.lhs.len195 = and i64 %eq.lhs.len194, 281474976710655
  %str.tag196 = lshr i64 %eq.lhs.len194, 48
  %str.immortal197 = icmp eq i64 %str.tag196, 0
  br i1 %str.immortal197, label %str_ok199, label %str_gen_check198

choice.exit:                                      ; preds = %choice.exit224, %choice.exit79
  br label %loop.latch.100

str_gen_check39:                                  ; preds = %choice.then
  %arena.cur42 = call ptr @dva_arena_current()
  %tag.valid43 = call i1 @dva_arena_validate_tag(ptr %arena.cur42, i64 %str.tag37)
  br i1 %tag.valid43, label %str_ok40, label %str_stale41

str_ok40:                                         ; preds = %str_stale41, %str_gen_check39, %choice.then
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 0
  %b.app.cur.len44 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len44, i64 %app.str.len36)
  %sum45 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf46 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf46, label %str_overflow_abort48, label %b.app.new.len47

str_stale41:                                      ; preds = %str_gen_check39
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok40

b.app.new.len47:                                  ; preds = %str_overflow_abort48, %str_ok40
  %b.cap49 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 2
  %b.cap50 = load i64, ptr %b.cap49, align 8
  %b.need.grow51 = icmp slt i64 %b.cap50, %sum45
  br i1 %b.need.grow51, label %b.grow252, label %b.nogrow253

str_overflow_abort48:                             ; preds = %str_ok40
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len47

b.grow252:                                        ; preds = %b.app.new.len47
  %b.cap255 = mul i64 %b.cap50, 2
  %b.cap.small56 = icmp slt i64 %b.cap255, 16
  %b.cap.grow57 = select i1 %b.cap.small56, i64 16, i64 %b.cap255
  %b.cap.need58 = icmp slt i64 %b.cap.grow57, %sum45
  %b.new.cap59 = select i1 %b.cap.need58, i64 %sum45, i64 %b.cap.grow57
  %b.cur.len260 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 0
  %b.cur.len261 = load i64, ptr %b.cur.len260, align 8
  %b.cur.data262 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 1
  %b.cur.data263 = load ptr, ptr %b.cur.data262, align 8
  %b.new.buf.len264 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap59, i64 1)
  %sum65 = extractvalue { i64, i1 } %b.new.buf.len264, 0
  %ovf66 = extractvalue { i64, i1 } %b.new.buf.len264, 1
  br i1 %ovf66, label %str_overflow_abort68, label %b.new.buf.len267

b.nogrow253:                                      ; preds = %b.app.new.len47
  br label %b.grow_done54

b.grow_done54:                                    ; preds = %b.nogrow253, %b.new.buf.len267
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.10.struct, i32 0, i32 1), align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 1
  %b.app.data74 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data74, i64 %b.app.cur.len44
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len36, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data74, i64 %sum45
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep75 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 0
  store i64 %sum45, ptr %b.len.gep75, align 8
  %var.load76 = load ptr, ptr %var.e, align 8
  %fld.gep77 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load76, i32 0, i32 1
  %fld.load78 = load ptr, ptr %fld.gep77, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load78, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

b.new.buf.len267:                                 ; preds = %str_overflow_abort68, %b.grow252
  %arena.cur69 = call ptr @dva_arena_current()
  %b.new.buf270 = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 %sum65)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf270, ptr align 1 %b.cur.data263, i64 %b.cur.len261, i1 false)
  %b.grow2.nul71 = getelementptr i8, ptr %b.new.buf270, i64 %b.cur.len261
  store i8 0, ptr %b.grow2.nul71, align 1
  %b.new.data2.gep72 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 1
  store ptr %b.new.buf270, ptr %b.new.data2.gep72, align 8
  %b.new.cap2.gep73 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 2
  store i64 %b.new.cap59, ptr %b.new.cap2.gep73, align 8
  br label %b.grow_done54

str_overflow_abort68:                             ; preds = %b.grow252
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len267

choice.exit79:                                    ; preds = %choice.next149, %b.push_done168, %b.push_done
  br label %choice.exit

choice.case:                                      ; preds = %b.grow_done54
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load78, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._80, align 8
  store ptr %payload.ptr, ptr %var.s, align 8
  %b.load81 = load ptr, ptr %var.b, align 8
  %var.load82 = load ptr, ptr %var.s, align 8
  %app.str.len83 = getelementptr inbounds { i64, ptr }, ptr %var.load82, i32 0, i32 0
  %app.str.len84 = load i64, ptr %app.str.len83, align 8
  %app.str.len85 = and i64 %app.str.len84, 281474976710655
  %str.tag86 = lshr i64 %app.str.len84, 48
  %str.immortal87 = icmp eq i64 %str.tag86, 0
  br i1 %str.immortal87, label %str_ok89, label %str_gen_check88

choice.next:                                      ; preds = %b.grow_done54
  %tag.gep150 = getelementptr inbounds { i64, ptr }, ptr %fld.load78, i32 0, i32 0
  %tag.id151 = load i64, ptr %tag.gep150, align 8
  %tag.match152 = icmp eq i64 %tag.id151, 1
  br i1 %tag.match152, label %choice.case148, label %choice.next149

str_gen_check88:                                  ; preds = %choice.case
  %arena.cur91 = call ptr @dva_arena_current()
  %tag.valid92 = call i1 @dva_arena_validate_tag(ptr %arena.cur91, i64 %str.tag86)
  br i1 %tag.valid92, label %str_ok89, label %str_stale90

str_ok89:                                         ; preds = %str_stale90, %str_gen_check88, %choice.case
  %b.app.cur.len93 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 0
  %b.app.cur.len94 = load i64, ptr %b.app.cur.len93, align 8
  %b.app.new.len95 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len94, i64 %app.str.len85)
  %sum96 = extractvalue { i64, i1 } %b.app.new.len95, 0
  %ovf97 = extractvalue { i64, i1 } %b.app.new.len95, 1
  br i1 %ovf97, label %str_overflow_abort99, label %b.app.new.len98

str_stale90:                                      ; preds = %str_gen_check88
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok89

b.app.new.len98:                                  ; preds = %str_overflow_abort99, %str_ok89
  %b.cap100 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 2
  %b.cap101 = load i64, ptr %b.cap100, align 8
  %b.need.grow102 = icmp slt i64 %b.cap101, %sum96
  br i1 %b.need.grow102, label %b.grow2103, label %b.nogrow2104

str_overflow_abort99:                             ; preds = %str_ok89
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len98

b.grow2103:                                       ; preds = %b.app.new.len98
  %b.cap2106 = mul i64 %b.cap101, 2
  %b.cap.small107 = icmp slt i64 %b.cap2106, 16
  %b.cap.grow108 = select i1 %b.cap.small107, i64 16, i64 %b.cap2106
  %b.cap.need109 = icmp slt i64 %b.cap.grow108, %sum96
  %b.new.cap110 = select i1 %b.cap.need109, i64 %sum96, i64 %b.cap.grow108
  %b.cur.len2111 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 0
  %b.cur.len2112 = load i64, ptr %b.cur.len2111, align 8
  %b.cur.data2113 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 1
  %b.cur.data2114 = load ptr, ptr %b.cur.data2113, align 8
  %b.new.buf.len2115 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap110, i64 1)
  %sum116 = extractvalue { i64, i1 } %b.new.buf.len2115, 0
  %ovf117 = extractvalue { i64, i1 } %b.new.buf.len2115, 1
  br i1 %ovf117, label %str_overflow_abort119, label %b.new.buf.len2118

b.nogrow2104:                                     ; preds = %b.app.new.len98
  br label %b.grow_done105

b.grow_done105:                                   ; preds = %b.nogrow2104, %b.new.buf.len2118
  %app.str.data125 = getelementptr inbounds { i64, ptr }, ptr %var.load82, i32 0, i32 1
  %app.str.data126 = load ptr, ptr %app.str.data125, align 8
  %b.app.data127 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 1
  %b.app.data128 = load ptr, ptr %b.app.data127, align 8
  %b.app.dst129 = getelementptr i8, ptr %b.app.data128, i64 %b.app.cur.len94
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst129, ptr align 1 %app.str.data126, i64 %app.str.len85, i1 false)
  %b.app.nul130 = getelementptr i8, ptr %b.app.data128, i64 %sum96
  store i8 0, ptr %b.app.nul130, align 1
  %b.len.gep131 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 0
  store i64 %sum96, ptr %b.len.gep131, align 8
  %b.load132 = load ptr, ptr %var.b, align 8
  br i1 true, label %b.byte_ok, label %b.byte_err

b.new.buf.len2118:                                ; preds = %str_overflow_abort119, %b.grow2103
  %arena.cur120 = call ptr @dva_arena_current()
  %b.new.buf2121 = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 %sum116)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2121, ptr align 1 %b.cur.data2114, i64 %b.cur.len2112, i1 false)
  %b.grow2.nul122 = getelementptr i8, ptr %b.new.buf2121, i64 %b.cur.len2112
  store i8 0, ptr %b.grow2.nul122, align 1
  %b.new.data2.gep123 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 1
  store ptr %b.new.buf2121, ptr %b.new.data2.gep123, align 8
  %b.new.cap2.gep124 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 2
  store i64 %b.new.cap110, ptr %b.new.cap2.gep124, align 8
  br label %b.grow_done105

str_overflow_abort119:                            ; preds = %b.grow2103
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2118

b.byte_ok:                                        ; preds = %b.byte_err, %b.grow_done105
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load132, i32 0, i32 0
  %b.len133 = load i64, ptr %b.len, align 8
  %b.cap134 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load132, i32 0, i32 2
  %b.cap135 = load i64, ptr %b.cap134, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load132, i32 0, i32 1
  %b.data136 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len133, %b.cap135
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %b.grow_done105
  %13 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2137 = mul i64 %b.cap135, 2
  %b.cap.small138 = icmp slt i64 %b.cap2137, 16
  %b.new.cap139 = select i1 %b.cap.small138, i64 16, i64 %b.cap2137
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap139, i64 1)
  %sum140 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf141 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf141, label %str_overflow_abort143, label %b.new.buf.len142

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len142
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load132, i32 0, i32 1
  %b.cur.data145 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load132, i32 0, i32 0
  %b.cur.len146 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data145, i64 %b.cur.len146
  store i8 10, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len146, 1
  %b.nul = getelementptr i8, ptr %b.cur.data145, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep147 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load132, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep147, align 8
  br label %choice.exit79

b.new.buf.len142:                                 ; preds = %str_overflow_abort143, %b.grow
  %arena.cur144 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 %sum140)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data136, i64 %b.len133, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len133
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load132, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load132, i32 0, i32 2
  store i64 %b.new.cap139, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort143:                            ; preds = %b.grow
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len142

choice.case148:                                   ; preds = %choice.next
  %pay.gep153 = getelementptr inbounds { i64, ptr }, ptr %fld.load78, i32 0, i32 1
  %payload.ptr154 = load ptr, ptr %pay.gep153, align 8
  store ptr %payload.ptr154, ptr %var._155, align 8
  %b.load156 = load ptr, ptr %var.b, align 8
  br i1 true, label %b.byte_ok157, label %b.byte_err158

choice.next149:                                   ; preds = %choice.next
  br label %choice.exit79

b.byte_ok157:                                     ; preds = %b.byte_err158, %choice.case148
  %b.len159 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load156, i32 0, i32 0
  %b.len160 = load i64, ptr %b.len159, align 8
  %b.cap161 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load156, i32 0, i32 2
  %b.cap162 = load i64, ptr %b.cap161, align 8
  %b.data163 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load156, i32 0, i32 1
  %b.data164 = load ptr, ptr %b.data163, align 8
  %b.needs.grow165 = icmp eq i64 %b.len160, %b.cap162
  br i1 %b.needs.grow165, label %b.grow166, label %b.nogrow167

b.byte_err158:                                    ; preds = %choice.case148
  %15 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok157

b.grow166:                                        ; preds = %b.byte_ok157
  %b.cap2169 = mul i64 %b.cap162, 2
  %b.cap.small170 = icmp slt i64 %b.cap2169, 16
  %b.new.cap171 = select i1 %b.cap.small170, i64 16, i64 %b.cap2169
  %b.new.buf.len172 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap171, i64 1)
  %sum173 = extractvalue { i64, i1 } %b.new.buf.len172, 0
  %ovf174 = extractvalue { i64, i1 } %b.new.buf.len172, 1
  br i1 %ovf174, label %str_overflow_abort176, label %b.new.buf.len175

b.nogrow167:                                      ; preds = %b.byte_ok157
  br label %b.push_done168

b.push_done168:                                   ; preds = %b.nogrow167, %b.new.buf.len175
  %b.cur.data182 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load156, i32 0, i32 1
  %b.cur.data183 = load ptr, ptr %b.cur.data182, align 8
  %b.cur.len184 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load156, i32 0, i32 0
  %b.cur.len185 = load i64, ptr %b.cur.len184, align 8
  %b.byte.gep186 = getelementptr i8, ptr %b.cur.data183, i64 %b.cur.len185
  store i8 10, ptr %b.byte.gep186, align 1
  %b.next.len187 = add i64 %b.cur.len185, 1
  %b.nul188 = getelementptr i8, ptr %b.cur.data183, i64 %b.next.len187
  store i8 0, ptr %b.nul188, align 1
  %b.len.gep189 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load156, i32 0, i32 0
  store i64 %b.next.len187, ptr %b.len.gep189, align 8
  br label %choice.exit79

b.new.buf.len175:                                 ; preds = %str_overflow_abort176, %b.grow166
  %arena.cur177 = call ptr @dva_arena_current()
  %b.new.buf178 = call ptr @dva_arena_alloc(ptr %arena.cur177, i64 %sum173)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf178, ptr align 1 %b.data164, i64 %b.len160, i1 false)
  %b.grow.nul179 = getelementptr i8, ptr %b.new.buf178, i64 %b.len160
  store i8 0, ptr %b.grow.nul179, align 1
  %b.new.data.gep180 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load156, i32 0, i32 1
  store ptr %b.new.buf178, ptr %b.new.data.gep180, align 8
  %b.new.cap.gep181 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load156, i32 0, i32 2
  store i64 %b.new.cap171, ptr %b.new.cap.gep181, align 8
  br label %b.push_done168

str_overflow_abort176:                            ; preds = %b.grow166
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len175

str_gen_check198:                                 ; preds = %choice.else
  %arena.cur201 = call ptr @dva_arena_current()
  %tag.valid202 = call i1 @dva_arena_validate_tag(ptr %arena.cur201, i64 %str.tag196)
  br i1 %tag.valid202, label %str_ok199, label %str_stale200

str_ok199:                                        ; preds = %str_stale200, %str_gen_check198, %choice.else
  %eq.rhs.len203 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len204 = and i64 %eq.rhs.len203, 281474976710655
  %str.tag205 = lshr i64 %eq.rhs.len203, 48
  %str.immortal206 = icmp eq i64 %str.tag205, 0
  br i1 %str.immortal206, label %str_ok208, label %str_gen_check207

str_stale200:                                     ; preds = %str_gen_check198
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok199

str_gen_check207:                                 ; preds = %str_ok199
  %arena.cur210 = call ptr @dva_arena_current()
  %tag.valid211 = call i1 @dva_arena_validate_tag(ptr %arena.cur210, i64 %str.tag205)
  br i1 %tag.valid211, label %str_ok208, label %str_stale209

str_ok208:                                        ; preds = %str_stale209, %str_gen_check207, %str_ok199
  %eq.len212 = icmp eq i64 %eq.lhs.len195, %eq.rhs.len204
  br i1 %eq.len212, label %str.eq.then213, label %str.eq.else214

str_stale209:                                     ; preds = %str_gen_check207
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok208

str.eq.then213:                                   ; preds = %str_ok208
  %eq.lhs.data216 = getelementptr inbounds { i64, ptr }, ptr %fld.load192, i32 0, i32 1
  %eq.lhs.data217 = load ptr, ptr %eq.lhs.data216, align 8
  %eq.rhs.data218 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp219 = call i32 @memcmp(ptr %eq.lhs.data217, ptr %eq.rhs.data218, i64 %eq.lhs.len195)
  %eq.cmp.zero220 = icmp eq i32 %eq.memcmp219, 0
  br label %str.eq.merge215

str.eq.else214:                                   ; preds = %str_ok208
  br label %str.eq.merge215

str.eq.merge215:                                  ; preds = %str.eq.else214, %str.eq.then213
  %str.eq.result221 = phi i1 [ %eq.cmp.zero220, %str.eq.then213 ], [ false, %str.eq.else214 ]
  br i1 %str.eq.result221, label %choice.then222, label %choice.else223

choice.then222:                                   ; preds = %str.eq.merge215
  %var.load225 = load ptr, ptr %var.e, align 8
  %fld.gep226 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load225, i32 0, i32 1
  %fld.load227 = load ptr, ptr %fld.gep226, align 8
  %tag.gep231 = getelementptr inbounds { i64, ptr }, ptr %fld.load227, i32 0, i32 0
  %tag.id232 = load i64, ptr %tag.gep231, align 8
  %tag.match233 = icmp eq i64 %tag.id232, 0
  br i1 %tag.match233, label %choice.case229, label %choice.next230

choice.else223:                                   ; preds = %str.eq.merge215
  %b.load566 = load ptr, ptr %var.b, align 8
  %var.load567 = load ptr, ptr %var.e, align 8
  %fld.gep568 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load567, i32 0, i32 0
  %fld.load569 = load ptr, ptr %fld.gep568, align 8
  %app.str.len570 = getelementptr inbounds { i64, ptr }, ptr %fld.load569, i32 0, i32 0
  %app.str.len571 = load i64, ptr %app.str.len570, align 8
  %app.str.len572 = and i64 %app.str.len571, 281474976710655
  %str.tag573 = lshr i64 %app.str.len571, 48
  %str.immortal574 = icmp eq i64 %str.tag573, 0
  br i1 %str.immortal574, label %str_ok576, label %str_gen_check575

choice.exit224:                                   ; preds = %choice.exit622, %choice.exit228
  br label %choice.exit

choice.exit228:                                   ; preds = %choice.next461, %a.after554, %choice.exit241
  br label %choice.exit224

choice.case229:                                   ; preds = %choice.then222
  %pay.gep234 = getelementptr inbounds { i64, ptr }, ptr %fld.load227, i32 0, i32 1
  %payload.ptr235 = load ptr, ptr %pay.gep234, align 8
  store ptr %payload.ptr235, ptr %var._236, align 8
  store ptr %payload.ptr235, ptr %var.s237, align 8
  %var.load238 = load ptr, ptr %var.s237, align 8
  %call.res = call i1 @"ccl::has_newline"(ptr %var.load238)
  br i1 %call.res, label %choice.then239, label %choice.else240

choice.next230:                                   ; preds = %choice.then222
  %tag.gep462 = getelementptr inbounds { i64, ptr }, ptr %fld.load227, i32 0, i32 0
  %tag.id463 = load i64, ptr %tag.gep462, align 8
  %tag.match464 = icmp eq i64 %tag.id463, 1
  br i1 %tag.match464, label %choice.case460, label %choice.next461

choice.then239:                                   ; preds = %choice.case229
  %b.load242 = load ptr, ptr %var.b, align 8
  %app.str.len243 = load i64, ptr @str.11.struct, align 8
  %app.str.len244 = and i64 %app.str.len243, 281474976710655
  %str.tag245 = lshr i64 %app.str.len243, 48
  %str.immortal246 = icmp eq i64 %str.tag245, 0
  br i1 %str.immortal246, label %str_ok248, label %str_gen_check247

choice.else240:                                   ; preds = %choice.case229
  %b.load327 = load ptr, ptr %var.b, align 8
  %app.str.len328 = load i64, ptr @str.12.struct, align 8
  %app.str.len329 = and i64 %app.str.len328, 281474976710655
  %str.tag330 = lshr i64 %app.str.len328, 48
  %str.immortal331 = icmp eq i64 %str.tag330, 0
  br i1 %str.immortal331, label %str_ok333, label %str_gen_check332

choice.exit241:                                   ; preds = %b.push_done438, %b.push_done302
  br label %choice.exit228

str_gen_check247:                                 ; preds = %choice.then239
  %arena.cur250 = call ptr @dva_arena_current()
  %tag.valid251 = call i1 @dva_arena_validate_tag(ptr %arena.cur250, i64 %str.tag245)
  br i1 %tag.valid251, label %str_ok248, label %str_stale249

str_ok248:                                        ; preds = %str_stale249, %str_gen_check247, %choice.then239
  %b.app.cur.len252 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load242, i32 0, i32 0
  %b.app.cur.len253 = load i64, ptr %b.app.cur.len252, align 8
  %b.app.new.len254 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len253, i64 %app.str.len244)
  %sum255 = extractvalue { i64, i1 } %b.app.new.len254, 0
  %ovf256 = extractvalue { i64, i1 } %b.app.new.len254, 1
  br i1 %ovf256, label %str_overflow_abort258, label %b.app.new.len257

str_stale249:                                     ; preds = %str_gen_check247
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok248

b.app.new.len257:                                 ; preds = %str_overflow_abort258, %str_ok248
  %b.cap259 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load242, i32 0, i32 2
  %b.cap260 = load i64, ptr %b.cap259, align 8
  %b.need.grow261 = icmp slt i64 %b.cap260, %sum255
  br i1 %b.need.grow261, label %b.grow2262, label %b.nogrow2263

str_overflow_abort258:                            ; preds = %str_ok248
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len257

b.grow2262:                                       ; preds = %b.app.new.len257
  %b.cap2265 = mul i64 %b.cap260, 2
  %b.cap.small266 = icmp slt i64 %b.cap2265, 16
  %b.cap.grow267 = select i1 %b.cap.small266, i64 16, i64 %b.cap2265
  %b.cap.need268 = icmp slt i64 %b.cap.grow267, %sum255
  %b.new.cap269 = select i1 %b.cap.need268, i64 %sum255, i64 %b.cap.grow267
  %b.cur.len2270 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load242, i32 0, i32 0
  %b.cur.len2271 = load i64, ptr %b.cur.len2270, align 8
  %b.cur.data2272 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load242, i32 0, i32 1
  %b.cur.data2273 = load ptr, ptr %b.cur.data2272, align 8
  %b.new.buf.len2274 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap269, i64 1)
  %sum275 = extractvalue { i64, i1 } %b.new.buf.len2274, 0
  %ovf276 = extractvalue { i64, i1 } %b.new.buf.len2274, 1
  br i1 %ovf276, label %str_overflow_abort278, label %b.new.buf.len2277

b.nogrow2263:                                     ; preds = %b.app.new.len257
  br label %b.grow_done264

b.grow_done264:                                   ; preds = %b.nogrow2263, %b.new.buf.len2277
  %app.str.data284 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  %b.app.data285 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load242, i32 0, i32 1
  %b.app.data286 = load ptr, ptr %b.app.data285, align 8
  %b.app.dst287 = getelementptr i8, ptr %b.app.data286, i64 %b.app.cur.len253
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst287, ptr align 1 %app.str.data284, i64 %app.str.len244, i1 false)
  %b.app.nul288 = getelementptr i8, ptr %b.app.data286, i64 %sum255
  store i8 0, ptr %b.app.nul288, align 1
  %b.len.gep289 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load242, i32 0, i32 0
  store i64 %sum255, ptr %b.len.gep289, align 8
  %b.load290 = load ptr, ptr %var.b, align 8
  br i1 true, label %b.byte_ok291, label %b.byte_err292

b.new.buf.len2277:                                ; preds = %str_overflow_abort278, %b.grow2262
  %arena.cur279 = call ptr @dva_arena_current()
  %b.new.buf2280 = call ptr @dva_arena_alloc(ptr %arena.cur279, i64 %sum275)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2280, ptr align 1 %b.cur.data2273, i64 %b.cur.len2271, i1 false)
  %b.grow2.nul281 = getelementptr i8, ptr %b.new.buf2280, i64 %b.cur.len2271
  store i8 0, ptr %b.grow2.nul281, align 1
  %b.new.data2.gep282 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load242, i32 0, i32 1
  store ptr %b.new.buf2280, ptr %b.new.data2.gep282, align 8
  %b.new.cap2.gep283 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load242, i32 0, i32 2
  store i64 %b.new.cap269, ptr %b.new.cap2.gep283, align 8
  br label %b.grow_done264

str_overflow_abort278:                            ; preds = %b.grow2262
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2277

b.byte_ok291:                                     ; preds = %b.byte_err292, %b.grow_done264
  %b.len293 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 0
  %b.len294 = load i64, ptr %b.len293, align 8
  %b.cap295 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 2
  %b.cap296 = load i64, ptr %b.cap295, align 8
  %b.data297 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 1
  %b.data298 = load ptr, ptr %b.data297, align 8
  %b.needs.grow299 = icmp eq i64 %b.len294, %b.cap296
  br i1 %b.needs.grow299, label %b.grow300, label %b.nogrow301

b.byte_err292:                                    ; preds = %b.grow_done264
  %22 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok291

b.grow300:                                        ; preds = %b.byte_ok291
  %b.cap2303 = mul i64 %b.cap296, 2
  %b.cap.small304 = icmp slt i64 %b.cap2303, 16
  %b.new.cap305 = select i1 %b.cap.small304, i64 16, i64 %b.cap2303
  %b.new.buf.len306 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap305, i64 1)
  %sum307 = extractvalue { i64, i1 } %b.new.buf.len306, 0
  %ovf308 = extractvalue { i64, i1 } %b.new.buf.len306, 1
  br i1 %ovf308, label %str_overflow_abort310, label %b.new.buf.len309

b.nogrow301:                                      ; preds = %b.byte_ok291
  br label %b.push_done302

b.push_done302:                                   ; preds = %b.nogrow301, %b.new.buf.len309
  %b.cur.data316 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 1
  %b.cur.data317 = load ptr, ptr %b.cur.data316, align 8
  %b.cur.len318 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 0
  %b.cur.len319 = load i64, ptr %b.cur.len318, align 8
  %b.byte.gep320 = getelementptr i8, ptr %b.cur.data317, i64 %b.cur.len319
  store i8 10, ptr %b.byte.gep320, align 1
  %b.next.len321 = add i64 %b.cur.len319, 1
  %b.nul322 = getelementptr i8, ptr %b.cur.data317, i64 %b.next.len321
  store i8 0, ptr %b.nul322, align 1
  %b.len.gep323 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 0
  store i64 %b.next.len321, ptr %b.len.gep323, align 8
  %var.load324 = load ptr, ptr %var.s237, align 8
  %var.load325 = load i64, ptr %var.indent, align 8
  %addtmp = add i64 %var.load325, 2
  %var.load326 = load ptr, ptr %var.b, align 8
  call void @"ccl::append_multiline_str"(ptr %var.load324, i64 %addtmp, ptr %var.load326)
  br label %choice.exit241

b.new.buf.len309:                                 ; preds = %str_overflow_abort310, %b.grow300
  %arena.cur311 = call ptr @dva_arena_current()
  %b.new.buf312 = call ptr @dva_arena_alloc(ptr %arena.cur311, i64 %sum307)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf312, ptr align 1 %b.data298, i64 %b.len294, i1 false)
  %b.grow.nul313 = getelementptr i8, ptr %b.new.buf312, i64 %b.len294
  store i8 0, ptr %b.grow.nul313, align 1
  %b.new.data.gep314 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 1
  store ptr %b.new.buf312, ptr %b.new.data.gep314, align 8
  %b.new.cap.gep315 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 2
  store i64 %b.new.cap305, ptr %b.new.cap.gep315, align 8
  br label %b.push_done302

str_overflow_abort310:                            ; preds = %b.grow300
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len309

str_gen_check332:                                 ; preds = %choice.else240
  %arena.cur335 = call ptr @dva_arena_current()
  %tag.valid336 = call i1 @dva_arena_validate_tag(ptr %arena.cur335, i64 %str.tag330)
  br i1 %tag.valid336, label %str_ok333, label %str_stale334

str_ok333:                                        ; preds = %str_stale334, %str_gen_check332, %choice.else240
  %b.app.cur.len337 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load327, i32 0, i32 0
  %b.app.cur.len338 = load i64, ptr %b.app.cur.len337, align 8
  %b.app.new.len339 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len338, i64 %app.str.len329)
  %sum340 = extractvalue { i64, i1 } %b.app.new.len339, 0
  %ovf341 = extractvalue { i64, i1 } %b.app.new.len339, 1
  br i1 %ovf341, label %str_overflow_abort343, label %b.app.new.len342

str_stale334:                                     ; preds = %str_gen_check332
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok333

b.app.new.len342:                                 ; preds = %str_overflow_abort343, %str_ok333
  %b.cap344 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load327, i32 0, i32 2
  %b.cap345 = load i64, ptr %b.cap344, align 8
  %b.need.grow346 = icmp slt i64 %b.cap345, %sum340
  br i1 %b.need.grow346, label %b.grow2347, label %b.nogrow2348

str_overflow_abort343:                            ; preds = %str_ok333
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len342

b.grow2347:                                       ; preds = %b.app.new.len342
  %b.cap2350 = mul i64 %b.cap345, 2
  %b.cap.small351 = icmp slt i64 %b.cap2350, 16
  %b.cap.grow352 = select i1 %b.cap.small351, i64 16, i64 %b.cap2350
  %b.cap.need353 = icmp slt i64 %b.cap.grow352, %sum340
  %b.new.cap354 = select i1 %b.cap.need353, i64 %sum340, i64 %b.cap.grow352
  %b.cur.len2355 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load327, i32 0, i32 0
  %b.cur.len2356 = load i64, ptr %b.cur.len2355, align 8
  %b.cur.data2357 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load327, i32 0, i32 1
  %b.cur.data2358 = load ptr, ptr %b.cur.data2357, align 8
  %b.new.buf.len2359 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap354, i64 1)
  %sum360 = extractvalue { i64, i1 } %b.new.buf.len2359, 0
  %ovf361 = extractvalue { i64, i1 } %b.new.buf.len2359, 1
  br i1 %ovf361, label %str_overflow_abort363, label %b.new.buf.len2362

b.nogrow2348:                                     ; preds = %b.app.new.len342
  br label %b.grow_done349

b.grow_done349:                                   ; preds = %b.nogrow2348, %b.new.buf.len2362
  %app.str.data369 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.12.struct, i32 0, i32 1), align 8
  %b.app.data370 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load327, i32 0, i32 1
  %b.app.data371 = load ptr, ptr %b.app.data370, align 8
  %b.app.dst372 = getelementptr i8, ptr %b.app.data371, i64 %b.app.cur.len338
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst372, ptr align 1 %app.str.data369, i64 %app.str.len329, i1 false)
  %b.app.nul373 = getelementptr i8, ptr %b.app.data371, i64 %sum340
  store i8 0, ptr %b.app.nul373, align 1
  %b.len.gep374 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load327, i32 0, i32 0
  store i64 %sum340, ptr %b.len.gep374, align 8
  %b.load375 = load ptr, ptr %var.b, align 8
  %var.load376 = load ptr, ptr %var.s237, align 8
  %app.str.len377 = getelementptr inbounds { i64, ptr }, ptr %var.load376, i32 0, i32 0
  %app.str.len378 = load i64, ptr %app.str.len377, align 8
  %app.str.len379 = and i64 %app.str.len378, 281474976710655
  %str.tag380 = lshr i64 %app.str.len378, 48
  %str.immortal381 = icmp eq i64 %str.tag380, 0
  br i1 %str.immortal381, label %str_ok383, label %str_gen_check382

b.new.buf.len2362:                                ; preds = %str_overflow_abort363, %b.grow2347
  %arena.cur364 = call ptr @dva_arena_current()
  %b.new.buf2365 = call ptr @dva_arena_alloc(ptr %arena.cur364, i64 %sum360)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2365, ptr align 1 %b.cur.data2358, i64 %b.cur.len2356, i1 false)
  %b.grow2.nul366 = getelementptr i8, ptr %b.new.buf2365, i64 %b.cur.len2356
  store i8 0, ptr %b.grow2.nul366, align 1
  %b.new.data2.gep367 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load327, i32 0, i32 1
  store ptr %b.new.buf2365, ptr %b.new.data2.gep367, align 8
  %b.new.cap2.gep368 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load327, i32 0, i32 2
  store i64 %b.new.cap354, ptr %b.new.cap2.gep368, align 8
  br label %b.grow_done349

str_overflow_abort363:                            ; preds = %b.grow2347
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2362

str_gen_check382:                                 ; preds = %b.grow_done349
  %arena.cur385 = call ptr @dva_arena_current()
  %tag.valid386 = call i1 @dva_arena_validate_tag(ptr %arena.cur385, i64 %str.tag380)
  br i1 %tag.valid386, label %str_ok383, label %str_stale384

str_ok383:                                        ; preds = %str_stale384, %str_gen_check382, %b.grow_done349
  %b.app.cur.len387 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load375, i32 0, i32 0
  %b.app.cur.len388 = load i64, ptr %b.app.cur.len387, align 8
  %b.app.new.len389 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len388, i64 %app.str.len379)
  %sum390 = extractvalue { i64, i1 } %b.app.new.len389, 0
  %ovf391 = extractvalue { i64, i1 } %b.app.new.len389, 1
  br i1 %ovf391, label %str_overflow_abort393, label %b.app.new.len392

str_stale384:                                     ; preds = %str_gen_check382
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok383

b.app.new.len392:                                 ; preds = %str_overflow_abort393, %str_ok383
  %b.cap394 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load375, i32 0, i32 2
  %b.cap395 = load i64, ptr %b.cap394, align 8
  %b.need.grow396 = icmp slt i64 %b.cap395, %sum390
  br i1 %b.need.grow396, label %b.grow2397, label %b.nogrow2398

str_overflow_abort393:                            ; preds = %str_ok383
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len392

b.grow2397:                                       ; preds = %b.app.new.len392
  %b.cap2400 = mul i64 %b.cap395, 2
  %b.cap.small401 = icmp slt i64 %b.cap2400, 16
  %b.cap.grow402 = select i1 %b.cap.small401, i64 16, i64 %b.cap2400
  %b.cap.need403 = icmp slt i64 %b.cap.grow402, %sum390
  %b.new.cap404 = select i1 %b.cap.need403, i64 %sum390, i64 %b.cap.grow402
  %b.cur.len2405 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load375, i32 0, i32 0
  %b.cur.len2406 = load i64, ptr %b.cur.len2405, align 8
  %b.cur.data2407 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load375, i32 0, i32 1
  %b.cur.data2408 = load ptr, ptr %b.cur.data2407, align 8
  %b.new.buf.len2409 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap404, i64 1)
  %sum410 = extractvalue { i64, i1 } %b.new.buf.len2409, 0
  %ovf411 = extractvalue { i64, i1 } %b.new.buf.len2409, 1
  br i1 %ovf411, label %str_overflow_abort413, label %b.new.buf.len2412

b.nogrow2398:                                     ; preds = %b.app.new.len392
  br label %b.grow_done399

b.grow_done399:                                   ; preds = %b.nogrow2398, %b.new.buf.len2412
  %app.str.data419 = getelementptr inbounds { i64, ptr }, ptr %var.load376, i32 0, i32 1
  %app.str.data420 = load ptr, ptr %app.str.data419, align 8
  %b.app.data421 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load375, i32 0, i32 1
  %b.app.data422 = load ptr, ptr %b.app.data421, align 8
  %b.app.dst423 = getelementptr i8, ptr %b.app.data422, i64 %b.app.cur.len388
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst423, ptr align 1 %app.str.data420, i64 %app.str.len379, i1 false)
  %b.app.nul424 = getelementptr i8, ptr %b.app.data422, i64 %sum390
  store i8 0, ptr %b.app.nul424, align 1
  %b.len.gep425 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load375, i32 0, i32 0
  store i64 %sum390, ptr %b.len.gep425, align 8
  %b.load426 = load ptr, ptr %var.b, align 8
  br i1 true, label %b.byte_ok427, label %b.byte_err428

b.new.buf.len2412:                                ; preds = %str_overflow_abort413, %b.grow2397
  %arena.cur414 = call ptr @dva_arena_current()
  %b.new.buf2415 = call ptr @dva_arena_alloc(ptr %arena.cur414, i64 %sum410)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2415, ptr align 1 %b.cur.data2408, i64 %b.cur.len2406, i1 false)
  %b.grow2.nul416 = getelementptr i8, ptr %b.new.buf2415, i64 %b.cur.len2406
  store i8 0, ptr %b.grow2.nul416, align 1
  %b.new.data2.gep417 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load375, i32 0, i32 1
  store ptr %b.new.buf2415, ptr %b.new.data2.gep417, align 8
  %b.new.cap2.gep418 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load375, i32 0, i32 2
  store i64 %b.new.cap404, ptr %b.new.cap2.gep418, align 8
  br label %b.grow_done399

str_overflow_abort413:                            ; preds = %b.grow2397
  %29 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2412

b.byte_ok427:                                     ; preds = %b.byte_err428, %b.grow_done399
  %b.len429 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load426, i32 0, i32 0
  %b.len430 = load i64, ptr %b.len429, align 8
  %b.cap431 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load426, i32 0, i32 2
  %b.cap432 = load i64, ptr %b.cap431, align 8
  %b.data433 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load426, i32 0, i32 1
  %b.data434 = load ptr, ptr %b.data433, align 8
  %b.needs.grow435 = icmp eq i64 %b.len430, %b.cap432
  br i1 %b.needs.grow435, label %b.grow436, label %b.nogrow437

b.byte_err428:                                    ; preds = %b.grow_done399
  %30 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok427

b.grow436:                                        ; preds = %b.byte_ok427
  %b.cap2439 = mul i64 %b.cap432, 2
  %b.cap.small440 = icmp slt i64 %b.cap2439, 16
  %b.new.cap441 = select i1 %b.cap.small440, i64 16, i64 %b.cap2439
  %b.new.buf.len442 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap441, i64 1)
  %sum443 = extractvalue { i64, i1 } %b.new.buf.len442, 0
  %ovf444 = extractvalue { i64, i1 } %b.new.buf.len442, 1
  br i1 %ovf444, label %str_overflow_abort446, label %b.new.buf.len445

b.nogrow437:                                      ; preds = %b.byte_ok427
  br label %b.push_done438

b.push_done438:                                   ; preds = %b.nogrow437, %b.new.buf.len445
  %b.cur.data452 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load426, i32 0, i32 1
  %b.cur.data453 = load ptr, ptr %b.cur.data452, align 8
  %b.cur.len454 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load426, i32 0, i32 0
  %b.cur.len455 = load i64, ptr %b.cur.len454, align 8
  %b.byte.gep456 = getelementptr i8, ptr %b.cur.data453, i64 %b.cur.len455
  store i8 10, ptr %b.byte.gep456, align 1
  %b.next.len457 = add i64 %b.cur.len455, 1
  %b.nul458 = getelementptr i8, ptr %b.cur.data453, i64 %b.next.len457
  store i8 0, ptr %b.nul458, align 1
  %b.len.gep459 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load426, i32 0, i32 0
  store i64 %b.next.len457, ptr %b.len.gep459, align 8
  br label %choice.exit241

b.new.buf.len445:                                 ; preds = %str_overflow_abort446, %b.grow436
  %arena.cur447 = call ptr @dva_arena_current()
  %b.new.buf448 = call ptr @dva_arena_alloc(ptr %arena.cur447, i64 %sum443)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf448, ptr align 1 %b.data434, i64 %b.len430, i1 false)
  %b.grow.nul449 = getelementptr i8, ptr %b.new.buf448, i64 %b.len430
  store i8 0, ptr %b.grow.nul449, align 1
  %b.new.data.gep450 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load426, i32 0, i32 1
  store ptr %b.new.buf448, ptr %b.new.data.gep450, align 8
  %b.new.cap.gep451 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load426, i32 0, i32 2
  store i64 %b.new.cap441, ptr %b.new.cap.gep451, align 8
  br label %b.push_done438

str_overflow_abort446:                            ; preds = %b.grow436
  %31 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len445

choice.case460:                                   ; preds = %choice.next230
  %pay.gep465 = getelementptr inbounds { i64, ptr }, ptr %fld.load227, i32 0, i32 1
  %payload.ptr466 = load ptr, ptr %pay.gep465, align 8
  store ptr %payload.ptr466, ptr %var._467, align 8
  store ptr %payload.ptr466, ptr %var.sub, align 8
  %b.load468 = load ptr, ptr %var.b, align 8
  %app.str.len469 = load i64, ptr @str.12.struct, align 8
  %app.str.len470 = and i64 %app.str.len469, 281474976710655
  %str.tag471 = lshr i64 %app.str.len469, 48
  %str.immortal472 = icmp eq i64 %str.tag471, 0
  br i1 %str.immortal472, label %str_ok474, label %str_gen_check473

choice.next461:                                   ; preds = %choice.next230
  br label %choice.exit228

str_gen_check473:                                 ; preds = %choice.case460
  %arena.cur476 = call ptr @dva_arena_current()
  %tag.valid477 = call i1 @dva_arena_validate_tag(ptr %arena.cur476, i64 %str.tag471)
  br i1 %tag.valid477, label %str_ok474, label %str_stale475

str_ok474:                                        ; preds = %str_stale475, %str_gen_check473, %choice.case460
  %b.app.cur.len478 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load468, i32 0, i32 0
  %b.app.cur.len479 = load i64, ptr %b.app.cur.len478, align 8
  %b.app.new.len480 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len479, i64 %app.str.len470)
  %sum481 = extractvalue { i64, i1 } %b.app.new.len480, 0
  %ovf482 = extractvalue { i64, i1 } %b.app.new.len480, 1
  br i1 %ovf482, label %str_overflow_abort484, label %b.app.new.len483

str_stale475:                                     ; preds = %str_gen_check473
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok474

b.app.new.len483:                                 ; preds = %str_overflow_abort484, %str_ok474
  %b.cap485 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load468, i32 0, i32 2
  %b.cap486 = load i64, ptr %b.cap485, align 8
  %b.need.grow487 = icmp slt i64 %b.cap486, %sum481
  br i1 %b.need.grow487, label %b.grow2488, label %b.nogrow2489

str_overflow_abort484:                            ; preds = %str_ok474
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len483

b.grow2488:                                       ; preds = %b.app.new.len483
  %b.cap2491 = mul i64 %b.cap486, 2
  %b.cap.small492 = icmp slt i64 %b.cap2491, 16
  %b.cap.grow493 = select i1 %b.cap.small492, i64 16, i64 %b.cap2491
  %b.cap.need494 = icmp slt i64 %b.cap.grow493, %sum481
  %b.new.cap495 = select i1 %b.cap.need494, i64 %sum481, i64 %b.cap.grow493
  %b.cur.len2496 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load468, i32 0, i32 0
  %b.cur.len2497 = load i64, ptr %b.cur.len2496, align 8
  %b.cur.data2498 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load468, i32 0, i32 1
  %b.cur.data2499 = load ptr, ptr %b.cur.data2498, align 8
  %b.new.buf.len2500 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap495, i64 1)
  %sum501 = extractvalue { i64, i1 } %b.new.buf.len2500, 0
  %ovf502 = extractvalue { i64, i1 } %b.new.buf.len2500, 1
  br i1 %ovf502, label %str_overflow_abort504, label %b.new.buf.len2503

b.nogrow2489:                                     ; preds = %b.app.new.len483
  br label %b.grow_done490

b.grow_done490:                                   ; preds = %b.nogrow2489, %b.new.buf.len2503
  %app.str.data510 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.12.struct, i32 0, i32 1), align 8
  %b.app.data511 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load468, i32 0, i32 1
  %b.app.data512 = load ptr, ptr %b.app.data511, align 8
  %b.app.dst513 = getelementptr i8, ptr %b.app.data512, i64 %b.app.cur.len479
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst513, ptr align 1 %app.str.data510, i64 %app.str.len470, i1 false)
  %b.app.nul514 = getelementptr i8, ptr %b.app.data512, i64 %sum481
  store i8 0, ptr %b.app.nul514, align 1
  %b.len.gep515 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load468, i32 0, i32 0
  store i64 %sum481, ptr %b.len.gep515, align 8
  %b.load516 = load ptr, ptr %var.b, align 8
  br i1 true, label %b.byte_ok517, label %b.byte_err518

b.new.buf.len2503:                                ; preds = %str_overflow_abort504, %b.grow2488
  %arena.cur505 = call ptr @dva_arena_current()
  %b.new.buf2506 = call ptr @dva_arena_alloc(ptr %arena.cur505, i64 %sum501)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2506, ptr align 1 %b.cur.data2499, i64 %b.cur.len2497, i1 false)
  %b.grow2.nul507 = getelementptr i8, ptr %b.new.buf2506, i64 %b.cur.len2497
  store i8 0, ptr %b.grow2.nul507, align 1
  %b.new.data2.gep508 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load468, i32 0, i32 1
  store ptr %b.new.buf2506, ptr %b.new.data2.gep508, align 8
  %b.new.cap2.gep509 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load468, i32 0, i32 2
  store i64 %b.new.cap495, ptr %b.new.cap2.gep509, align 8
  br label %b.grow_done490

str_overflow_abort504:                            ; preds = %b.grow2488
  %34 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2503

b.byte_ok517:                                     ; preds = %b.byte_err518, %b.grow_done490
  %b.len519 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load516, i32 0, i32 0
  %b.len520 = load i64, ptr %b.len519, align 8
  %b.cap521 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load516, i32 0, i32 2
  %b.cap522 = load i64, ptr %b.cap521, align 8
  %b.data523 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load516, i32 0, i32 1
  %b.data524 = load ptr, ptr %b.data523, align 8
  %b.needs.grow525 = icmp eq i64 %b.len520, %b.cap522
  br i1 %b.needs.grow525, label %b.grow526, label %b.nogrow527

b.byte_err518:                                    ; preds = %b.grow_done490
  %35 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok517

b.grow526:                                        ; preds = %b.byte_ok517
  %b.cap2529 = mul i64 %b.cap522, 2
  %b.cap.small530 = icmp slt i64 %b.cap2529, 16
  %b.new.cap531 = select i1 %b.cap.small530, i64 16, i64 %b.cap2529
  %b.new.buf.len532 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap531, i64 1)
  %sum533 = extractvalue { i64, i1 } %b.new.buf.len532, 0
  %ovf534 = extractvalue { i64, i1 } %b.new.buf.len532, 1
  br i1 %ovf534, label %str_overflow_abort536, label %b.new.buf.len535

b.nogrow527:                                      ; preds = %b.byte_ok517
  br label %b.push_done528

b.push_done528:                                   ; preds = %b.nogrow527, %b.new.buf.len535
  %b.cur.data542 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load516, i32 0, i32 1
  %b.cur.data543 = load ptr, ptr %b.cur.data542, align 8
  %b.cur.len544 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load516, i32 0, i32 0
  %b.cur.len545 = load i64, ptr %b.cur.len544, align 8
  %b.byte.gep546 = getelementptr i8, ptr %b.cur.data543, i64 %b.cur.len545
  store i8 10, ptr %b.byte.gep546, align 1
  %b.next.len547 = add i64 %b.cur.len545, 1
  %b.nul548 = getelementptr i8, ptr %b.cur.data543, i64 %b.next.len547
  store i8 0, ptr %b.nul548, align 1
  %b.len.gep549 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load516, i32 0, i32 0
  store i64 %b.next.len547, ptr %b.len.gep549, align 8
  %var.load550 = load ptr, ptr %var.sub, align 8
  %a.load551 = load ptr, ptr %var.sub, align 8
  %a.null552 = icmp eq ptr %a.load551, null
  br i1 %a.null552, label %a.create553, label %a.after554

b.new.buf.len535:                                 ; preds = %str_overflow_abort536, %b.grow526
  %arena.cur537 = call ptr @dva_arena_current()
  %b.new.buf538 = call ptr @dva_arena_alloc(ptr %arena.cur537, i64 %sum533)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf538, ptr align 1 %b.data524, i64 %b.len520, i1 false)
  %b.grow.nul539 = getelementptr i8, ptr %b.new.buf538, i64 %b.len520
  store i8 0, ptr %b.grow.nul539, align 1
  %b.new.data.gep540 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load516, i32 0, i32 1
  store ptr %b.new.buf538, ptr %b.new.data.gep540, align 8
  %b.new.cap.gep541 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load516, i32 0, i32 2
  store i64 %b.new.cap531, ptr %b.new.cap.gep541, align 8
  br label %b.push_done528

str_overflow_abort536:                            ; preds = %b.grow526
  %36 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len535

a.create553:                                      ; preds = %b.push_done528
  %arena.cur555 = call ptr @dva_arena_current()
  %a.create556 = call ptr @dva_arena_alloc(ptr %arena.cur555, i64 24)
  %arena.cur557 = call ptr @dva_arena_current()
  %a.buf558 = call ptr @dva_arena_alloc(ptr %arena.cur557, i64 128)
  %a.len.gep559 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create556, i32 0, i32 0
  store i64 0, ptr %a.len.gep559, align 8
  %a.data.gep560 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create556, i32 0, i32 1
  store ptr %a.buf558, ptr %a.data.gep560, align 8
  %a.cap.gep561 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create556, i32 0, i32 2
  store i64 16, ptr %a.cap.gep561, align 8
  store ptr %a.create556, ptr %var.sub, align 8
  br label %a.after554

a.after554:                                       ; preds = %a.create553, %b.push_done528
  %a.load2562 = load ptr, ptr %var.sub, align 8
  %var.load563 = load i64, ptr %var.indent, align 8
  %addtmp564 = add i64 %var.load563, 2
  %var.load565 = load ptr, ptr %var.b, align 8
  call void @"ccl::serialize_doc_indent"(ptr %a.load2562, i64 %addtmp564, ptr %var.load565)
  br label %choice.exit228

str_gen_check575:                                 ; preds = %choice.else223
  %arena.cur578 = call ptr @dva_arena_current()
  %tag.valid579 = call i1 @dva_arena_validate_tag(ptr %arena.cur578, i64 %str.tag573)
  br i1 %tag.valid579, label %str_ok576, label %str_stale577

str_ok576:                                        ; preds = %str_stale577, %str_gen_check575, %choice.else223
  %b.app.cur.len580 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load566, i32 0, i32 0
  %b.app.cur.len581 = load i64, ptr %b.app.cur.len580, align 8
  %b.app.new.len582 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len581, i64 %app.str.len572)
  %sum583 = extractvalue { i64, i1 } %b.app.new.len582, 0
  %ovf584 = extractvalue { i64, i1 } %b.app.new.len582, 1
  br i1 %ovf584, label %str_overflow_abort586, label %b.app.new.len585

str_stale577:                                     ; preds = %str_gen_check575
  %37 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok576

b.app.new.len585:                                 ; preds = %str_overflow_abort586, %str_ok576
  %b.cap587 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load566, i32 0, i32 2
  %b.cap588 = load i64, ptr %b.cap587, align 8
  %b.need.grow589 = icmp slt i64 %b.cap588, %sum583
  br i1 %b.need.grow589, label %b.grow2590, label %b.nogrow2591

str_overflow_abort586:                            ; preds = %str_ok576
  %38 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len585

b.grow2590:                                       ; preds = %b.app.new.len585
  %b.cap2593 = mul i64 %b.cap588, 2
  %b.cap.small594 = icmp slt i64 %b.cap2593, 16
  %b.cap.grow595 = select i1 %b.cap.small594, i64 16, i64 %b.cap2593
  %b.cap.need596 = icmp slt i64 %b.cap.grow595, %sum583
  %b.new.cap597 = select i1 %b.cap.need596, i64 %sum583, i64 %b.cap.grow595
  %b.cur.len2598 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load566, i32 0, i32 0
  %b.cur.len2599 = load i64, ptr %b.cur.len2598, align 8
  %b.cur.data2600 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load566, i32 0, i32 1
  %b.cur.data2601 = load ptr, ptr %b.cur.data2600, align 8
  %b.new.buf.len2602 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap597, i64 1)
  %sum603 = extractvalue { i64, i1 } %b.new.buf.len2602, 0
  %ovf604 = extractvalue { i64, i1 } %b.new.buf.len2602, 1
  br i1 %ovf604, label %str_overflow_abort606, label %b.new.buf.len2605

b.nogrow2591:                                     ; preds = %b.app.new.len585
  br label %b.grow_done592

b.grow_done592:                                   ; preds = %b.nogrow2591, %b.new.buf.len2605
  %app.str.data612 = getelementptr inbounds { i64, ptr }, ptr %fld.load569, i32 0, i32 1
  %app.str.data613 = load ptr, ptr %app.str.data612, align 8
  %b.app.data614 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load566, i32 0, i32 1
  %b.app.data615 = load ptr, ptr %b.app.data614, align 8
  %b.app.dst616 = getelementptr i8, ptr %b.app.data615, i64 %b.app.cur.len581
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst616, ptr align 1 %app.str.data613, i64 %app.str.len572, i1 false)
  %b.app.nul617 = getelementptr i8, ptr %b.app.data615, i64 %sum583
  store i8 0, ptr %b.app.nul617, align 1
  %b.len.gep618 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load566, i32 0, i32 0
  store i64 %sum583, ptr %b.len.gep618, align 8
  %var.load619 = load ptr, ptr %var.e, align 8
  %fld.gep620 = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load619, i32 0, i32 1
  %fld.load621 = load ptr, ptr %fld.gep620, align 8
  %tag.gep625 = getelementptr inbounds { i64, ptr }, ptr %fld.load621, i32 0, i32 0
  %tag.id626 = load i64, ptr %tag.gep625, align 8
  %tag.match627 = icmp eq i64 %tag.id626, 0
  br i1 %tag.match627, label %choice.case623, label %choice.next624

b.new.buf.len2605:                                ; preds = %str_overflow_abort606, %b.grow2590
  %arena.cur607 = call ptr @dva_arena_current()
  %b.new.buf2608 = call ptr @dva_arena_alloc(ptr %arena.cur607, i64 %sum603)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2608, ptr align 1 %b.cur.data2601, i64 %b.cur.len2599, i1 false)
  %b.grow2.nul609 = getelementptr i8, ptr %b.new.buf2608, i64 %b.cur.len2599
  store i8 0, ptr %b.grow2.nul609, align 1
  %b.new.data2.gep610 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load566, i32 0, i32 1
  store ptr %b.new.buf2608, ptr %b.new.data2.gep610, align 8
  %b.new.cap2.gep611 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load566, i32 0, i32 2
  store i64 %b.new.cap597, ptr %b.new.cap2.gep611, align 8
  br label %b.grow_done592

str_overflow_abort606:                            ; preds = %b.grow2590
  %39 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2605

choice.exit622:                                   ; preds = %choice.next857, %a.after951, %choice.exit636
  br label %choice.exit224

choice.case623:                                   ; preds = %b.grow_done592
  %pay.gep628 = getelementptr inbounds { i64, ptr }, ptr %fld.load621, i32 0, i32 1
  %payload.ptr629 = load ptr, ptr %pay.gep628, align 8
  store ptr %payload.ptr629, ptr %var._630, align 8
  store ptr %payload.ptr629, ptr %var.s631, align 8
  %var.load632 = load ptr, ptr %var.s631, align 8
  %call.res633 = call i1 @"ccl::has_newline"(ptr %var.load632)
  br i1 %call.res633, label %choice.then634, label %choice.else635

choice.next624:                                   ; preds = %b.grow_done592
  %tag.gep858 = getelementptr inbounds { i64, ptr }, ptr %fld.load621, i32 0, i32 0
  %tag.id859 = load i64, ptr %tag.gep858, align 8
  %tag.match860 = icmp eq i64 %tag.id859, 1
  br i1 %tag.match860, label %choice.case856, label %choice.next857

choice.then634:                                   ; preds = %choice.case623
  %b.load637 = load ptr, ptr %var.b, align 8
  %app.str.len638 = load i64, ptr @str.13.struct, align 8
  %app.str.len639 = and i64 %app.str.len638, 281474976710655
  %str.tag640 = lshr i64 %app.str.len638, 48
  %str.immortal641 = icmp eq i64 %str.tag640, 0
  br i1 %str.immortal641, label %str_ok643, label %str_gen_check642

choice.else635:                                   ; preds = %choice.case623
  %b.load723 = load ptr, ptr %var.b, align 8
  %app.str.len724 = load i64, ptr @str.14.struct, align 8
  %app.str.len725 = and i64 %app.str.len724, 281474976710655
  %str.tag726 = lshr i64 %app.str.len724, 48
  %str.immortal727 = icmp eq i64 %str.tag726, 0
  br i1 %str.immortal727, label %str_ok729, label %str_gen_check728

choice.exit636:                                   ; preds = %b.push_done834, %b.push_done697
  br label %choice.exit622

str_gen_check642:                                 ; preds = %choice.then634
  %arena.cur645 = call ptr @dva_arena_current()
  %tag.valid646 = call i1 @dva_arena_validate_tag(ptr %arena.cur645, i64 %str.tag640)
  br i1 %tag.valid646, label %str_ok643, label %str_stale644

str_ok643:                                        ; preds = %str_stale644, %str_gen_check642, %choice.then634
  %b.app.cur.len647 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load637, i32 0, i32 0
  %b.app.cur.len648 = load i64, ptr %b.app.cur.len647, align 8
  %b.app.new.len649 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len648, i64 %app.str.len639)
  %sum650 = extractvalue { i64, i1 } %b.app.new.len649, 0
  %ovf651 = extractvalue { i64, i1 } %b.app.new.len649, 1
  br i1 %ovf651, label %str_overflow_abort653, label %b.app.new.len652

str_stale644:                                     ; preds = %str_gen_check642
  %40 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok643

b.app.new.len652:                                 ; preds = %str_overflow_abort653, %str_ok643
  %b.cap654 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load637, i32 0, i32 2
  %b.cap655 = load i64, ptr %b.cap654, align 8
  %b.need.grow656 = icmp slt i64 %b.cap655, %sum650
  br i1 %b.need.grow656, label %b.grow2657, label %b.nogrow2658

str_overflow_abort653:                            ; preds = %str_ok643
  %41 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len652

b.grow2657:                                       ; preds = %b.app.new.len652
  %b.cap2660 = mul i64 %b.cap655, 2
  %b.cap.small661 = icmp slt i64 %b.cap2660, 16
  %b.cap.grow662 = select i1 %b.cap.small661, i64 16, i64 %b.cap2660
  %b.cap.need663 = icmp slt i64 %b.cap.grow662, %sum650
  %b.new.cap664 = select i1 %b.cap.need663, i64 %sum650, i64 %b.cap.grow662
  %b.cur.len2665 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load637, i32 0, i32 0
  %b.cur.len2666 = load i64, ptr %b.cur.len2665, align 8
  %b.cur.data2667 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load637, i32 0, i32 1
  %b.cur.data2668 = load ptr, ptr %b.cur.data2667, align 8
  %b.new.buf.len2669 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap664, i64 1)
  %sum670 = extractvalue { i64, i1 } %b.new.buf.len2669, 0
  %ovf671 = extractvalue { i64, i1 } %b.new.buf.len2669, 1
  br i1 %ovf671, label %str_overflow_abort673, label %b.new.buf.len2672

b.nogrow2658:                                     ; preds = %b.app.new.len652
  br label %b.grow_done659

b.grow_done659:                                   ; preds = %b.nogrow2658, %b.new.buf.len2672
  %app.str.data679 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.13.struct, i32 0, i32 1), align 8
  %b.app.data680 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load637, i32 0, i32 1
  %b.app.data681 = load ptr, ptr %b.app.data680, align 8
  %b.app.dst682 = getelementptr i8, ptr %b.app.data681, i64 %b.app.cur.len648
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst682, ptr align 1 %app.str.data679, i64 %app.str.len639, i1 false)
  %b.app.nul683 = getelementptr i8, ptr %b.app.data681, i64 %sum650
  store i8 0, ptr %b.app.nul683, align 1
  %b.len.gep684 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load637, i32 0, i32 0
  store i64 %sum650, ptr %b.len.gep684, align 8
  %b.load685 = load ptr, ptr %var.b, align 8
  br i1 true, label %b.byte_ok686, label %b.byte_err687

b.new.buf.len2672:                                ; preds = %str_overflow_abort673, %b.grow2657
  %arena.cur674 = call ptr @dva_arena_current()
  %b.new.buf2675 = call ptr @dva_arena_alloc(ptr %arena.cur674, i64 %sum670)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2675, ptr align 1 %b.cur.data2668, i64 %b.cur.len2666, i1 false)
  %b.grow2.nul676 = getelementptr i8, ptr %b.new.buf2675, i64 %b.cur.len2666
  store i8 0, ptr %b.grow2.nul676, align 1
  %b.new.data2.gep677 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load637, i32 0, i32 1
  store ptr %b.new.buf2675, ptr %b.new.data2.gep677, align 8
  %b.new.cap2.gep678 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load637, i32 0, i32 2
  store i64 %b.new.cap664, ptr %b.new.cap2.gep678, align 8
  br label %b.grow_done659

str_overflow_abort673:                            ; preds = %b.grow2657
  %42 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2672

b.byte_ok686:                                     ; preds = %b.byte_err687, %b.grow_done659
  %b.len688 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load685, i32 0, i32 0
  %b.len689 = load i64, ptr %b.len688, align 8
  %b.cap690 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load685, i32 0, i32 2
  %b.cap691 = load i64, ptr %b.cap690, align 8
  %b.data692 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load685, i32 0, i32 1
  %b.data693 = load ptr, ptr %b.data692, align 8
  %b.needs.grow694 = icmp eq i64 %b.len689, %b.cap691
  br i1 %b.needs.grow694, label %b.grow695, label %b.nogrow696

b.byte_err687:                                    ; preds = %b.grow_done659
  %43 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok686

b.grow695:                                        ; preds = %b.byte_ok686
  %b.cap2698 = mul i64 %b.cap691, 2
  %b.cap.small699 = icmp slt i64 %b.cap2698, 16
  %b.new.cap700 = select i1 %b.cap.small699, i64 16, i64 %b.cap2698
  %b.new.buf.len701 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap700, i64 1)
  %sum702 = extractvalue { i64, i1 } %b.new.buf.len701, 0
  %ovf703 = extractvalue { i64, i1 } %b.new.buf.len701, 1
  br i1 %ovf703, label %str_overflow_abort705, label %b.new.buf.len704

b.nogrow696:                                      ; preds = %b.byte_ok686
  br label %b.push_done697

b.push_done697:                                   ; preds = %b.nogrow696, %b.new.buf.len704
  %b.cur.data711 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load685, i32 0, i32 1
  %b.cur.data712 = load ptr, ptr %b.cur.data711, align 8
  %b.cur.len713 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load685, i32 0, i32 0
  %b.cur.len714 = load i64, ptr %b.cur.len713, align 8
  %b.byte.gep715 = getelementptr i8, ptr %b.cur.data712, i64 %b.cur.len714
  store i8 10, ptr %b.byte.gep715, align 1
  %b.next.len716 = add i64 %b.cur.len714, 1
  %b.nul717 = getelementptr i8, ptr %b.cur.data712, i64 %b.next.len716
  store i8 0, ptr %b.nul717, align 1
  %b.len.gep718 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load685, i32 0, i32 0
  store i64 %b.next.len716, ptr %b.len.gep718, align 8
  %var.load719 = load ptr, ptr %var.s631, align 8
  %var.load720 = load i64, ptr %var.indent, align 8
  %addtmp721 = add i64 %var.load720, 2
  %var.load722 = load ptr, ptr %var.b, align 8
  call void @"ccl::append_multiline_str"(ptr %var.load719, i64 %addtmp721, ptr %var.load722)
  br label %choice.exit636

b.new.buf.len704:                                 ; preds = %str_overflow_abort705, %b.grow695
  %arena.cur706 = call ptr @dva_arena_current()
  %b.new.buf707 = call ptr @dva_arena_alloc(ptr %arena.cur706, i64 %sum702)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf707, ptr align 1 %b.data693, i64 %b.len689, i1 false)
  %b.grow.nul708 = getelementptr i8, ptr %b.new.buf707, i64 %b.len689
  store i8 0, ptr %b.grow.nul708, align 1
  %b.new.data.gep709 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load685, i32 0, i32 1
  store ptr %b.new.buf707, ptr %b.new.data.gep709, align 8
  %b.new.cap.gep710 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load685, i32 0, i32 2
  store i64 %b.new.cap700, ptr %b.new.cap.gep710, align 8
  br label %b.push_done697

str_overflow_abort705:                            ; preds = %b.grow695
  %44 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len704

str_gen_check728:                                 ; preds = %choice.else635
  %arena.cur731 = call ptr @dva_arena_current()
  %tag.valid732 = call i1 @dva_arena_validate_tag(ptr %arena.cur731, i64 %str.tag726)
  br i1 %tag.valid732, label %str_ok729, label %str_stale730

str_ok729:                                        ; preds = %str_stale730, %str_gen_check728, %choice.else635
  %b.app.cur.len733 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load723, i32 0, i32 0
  %b.app.cur.len734 = load i64, ptr %b.app.cur.len733, align 8
  %b.app.new.len735 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len734, i64 %app.str.len725)
  %sum736 = extractvalue { i64, i1 } %b.app.new.len735, 0
  %ovf737 = extractvalue { i64, i1 } %b.app.new.len735, 1
  br i1 %ovf737, label %str_overflow_abort739, label %b.app.new.len738

str_stale730:                                     ; preds = %str_gen_check728
  %45 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok729

b.app.new.len738:                                 ; preds = %str_overflow_abort739, %str_ok729
  %b.cap740 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load723, i32 0, i32 2
  %b.cap741 = load i64, ptr %b.cap740, align 8
  %b.need.grow742 = icmp slt i64 %b.cap741, %sum736
  br i1 %b.need.grow742, label %b.grow2743, label %b.nogrow2744

str_overflow_abort739:                            ; preds = %str_ok729
  %46 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len738

b.grow2743:                                       ; preds = %b.app.new.len738
  %b.cap2746 = mul i64 %b.cap741, 2
  %b.cap.small747 = icmp slt i64 %b.cap2746, 16
  %b.cap.grow748 = select i1 %b.cap.small747, i64 16, i64 %b.cap2746
  %b.cap.need749 = icmp slt i64 %b.cap.grow748, %sum736
  %b.new.cap750 = select i1 %b.cap.need749, i64 %sum736, i64 %b.cap.grow748
  %b.cur.len2751 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load723, i32 0, i32 0
  %b.cur.len2752 = load i64, ptr %b.cur.len2751, align 8
  %b.cur.data2753 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load723, i32 0, i32 1
  %b.cur.data2754 = load ptr, ptr %b.cur.data2753, align 8
  %b.new.buf.len2755 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap750, i64 1)
  %sum756 = extractvalue { i64, i1 } %b.new.buf.len2755, 0
  %ovf757 = extractvalue { i64, i1 } %b.new.buf.len2755, 1
  br i1 %ovf757, label %str_overflow_abort759, label %b.new.buf.len2758

b.nogrow2744:                                     ; preds = %b.app.new.len738
  br label %b.grow_done745

b.grow_done745:                                   ; preds = %b.nogrow2744, %b.new.buf.len2758
  %app.str.data765 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  %b.app.data766 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load723, i32 0, i32 1
  %b.app.data767 = load ptr, ptr %b.app.data766, align 8
  %b.app.dst768 = getelementptr i8, ptr %b.app.data767, i64 %b.app.cur.len734
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst768, ptr align 1 %app.str.data765, i64 %app.str.len725, i1 false)
  %b.app.nul769 = getelementptr i8, ptr %b.app.data767, i64 %sum736
  store i8 0, ptr %b.app.nul769, align 1
  %b.len.gep770 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load723, i32 0, i32 0
  store i64 %sum736, ptr %b.len.gep770, align 8
  %b.load771 = load ptr, ptr %var.b, align 8
  %var.load772 = load ptr, ptr %var.s631, align 8
  %app.str.len773 = getelementptr inbounds { i64, ptr }, ptr %var.load772, i32 0, i32 0
  %app.str.len774 = load i64, ptr %app.str.len773, align 8
  %app.str.len775 = and i64 %app.str.len774, 281474976710655
  %str.tag776 = lshr i64 %app.str.len774, 48
  %str.immortal777 = icmp eq i64 %str.tag776, 0
  br i1 %str.immortal777, label %str_ok779, label %str_gen_check778

b.new.buf.len2758:                                ; preds = %str_overflow_abort759, %b.grow2743
  %arena.cur760 = call ptr @dva_arena_current()
  %b.new.buf2761 = call ptr @dva_arena_alloc(ptr %arena.cur760, i64 %sum756)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2761, ptr align 1 %b.cur.data2754, i64 %b.cur.len2752, i1 false)
  %b.grow2.nul762 = getelementptr i8, ptr %b.new.buf2761, i64 %b.cur.len2752
  store i8 0, ptr %b.grow2.nul762, align 1
  %b.new.data2.gep763 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load723, i32 0, i32 1
  store ptr %b.new.buf2761, ptr %b.new.data2.gep763, align 8
  %b.new.cap2.gep764 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load723, i32 0, i32 2
  store i64 %b.new.cap750, ptr %b.new.cap2.gep764, align 8
  br label %b.grow_done745

str_overflow_abort759:                            ; preds = %b.grow2743
  %47 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2758

str_gen_check778:                                 ; preds = %b.grow_done745
  %arena.cur781 = call ptr @dva_arena_current()
  %tag.valid782 = call i1 @dva_arena_validate_tag(ptr %arena.cur781, i64 %str.tag776)
  br i1 %tag.valid782, label %str_ok779, label %str_stale780

str_ok779:                                        ; preds = %str_stale780, %str_gen_check778, %b.grow_done745
  %b.app.cur.len783 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load771, i32 0, i32 0
  %b.app.cur.len784 = load i64, ptr %b.app.cur.len783, align 8
  %b.app.new.len785 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len784, i64 %app.str.len775)
  %sum786 = extractvalue { i64, i1 } %b.app.new.len785, 0
  %ovf787 = extractvalue { i64, i1 } %b.app.new.len785, 1
  br i1 %ovf787, label %str_overflow_abort789, label %b.app.new.len788

str_stale780:                                     ; preds = %str_gen_check778
  %48 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok779

b.app.new.len788:                                 ; preds = %str_overflow_abort789, %str_ok779
  %b.cap790 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load771, i32 0, i32 2
  %b.cap791 = load i64, ptr %b.cap790, align 8
  %b.need.grow792 = icmp slt i64 %b.cap791, %sum786
  br i1 %b.need.grow792, label %b.grow2793, label %b.nogrow2794

str_overflow_abort789:                            ; preds = %str_ok779
  %49 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len788

b.grow2793:                                       ; preds = %b.app.new.len788
  %b.cap2796 = mul i64 %b.cap791, 2
  %b.cap.small797 = icmp slt i64 %b.cap2796, 16
  %b.cap.grow798 = select i1 %b.cap.small797, i64 16, i64 %b.cap2796
  %b.cap.need799 = icmp slt i64 %b.cap.grow798, %sum786
  %b.new.cap800 = select i1 %b.cap.need799, i64 %sum786, i64 %b.cap.grow798
  %b.cur.len2801 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load771, i32 0, i32 0
  %b.cur.len2802 = load i64, ptr %b.cur.len2801, align 8
  %b.cur.data2803 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load771, i32 0, i32 1
  %b.cur.data2804 = load ptr, ptr %b.cur.data2803, align 8
  %b.new.buf.len2805 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap800, i64 1)
  %sum806 = extractvalue { i64, i1 } %b.new.buf.len2805, 0
  %ovf807 = extractvalue { i64, i1 } %b.new.buf.len2805, 1
  br i1 %ovf807, label %str_overflow_abort809, label %b.new.buf.len2808

b.nogrow2794:                                     ; preds = %b.app.new.len788
  br label %b.grow_done795

b.grow_done795:                                   ; preds = %b.nogrow2794, %b.new.buf.len2808
  %app.str.data815 = getelementptr inbounds { i64, ptr }, ptr %var.load772, i32 0, i32 1
  %app.str.data816 = load ptr, ptr %app.str.data815, align 8
  %b.app.data817 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load771, i32 0, i32 1
  %b.app.data818 = load ptr, ptr %b.app.data817, align 8
  %b.app.dst819 = getelementptr i8, ptr %b.app.data818, i64 %b.app.cur.len784
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst819, ptr align 1 %app.str.data816, i64 %app.str.len775, i1 false)
  %b.app.nul820 = getelementptr i8, ptr %b.app.data818, i64 %sum786
  store i8 0, ptr %b.app.nul820, align 1
  %b.len.gep821 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load771, i32 0, i32 0
  store i64 %sum786, ptr %b.len.gep821, align 8
  %b.load822 = load ptr, ptr %var.b, align 8
  br i1 true, label %b.byte_ok823, label %b.byte_err824

b.new.buf.len2808:                                ; preds = %str_overflow_abort809, %b.grow2793
  %arena.cur810 = call ptr @dva_arena_current()
  %b.new.buf2811 = call ptr @dva_arena_alloc(ptr %arena.cur810, i64 %sum806)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2811, ptr align 1 %b.cur.data2804, i64 %b.cur.len2802, i1 false)
  %b.grow2.nul812 = getelementptr i8, ptr %b.new.buf2811, i64 %b.cur.len2802
  store i8 0, ptr %b.grow2.nul812, align 1
  %b.new.data2.gep813 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load771, i32 0, i32 1
  store ptr %b.new.buf2811, ptr %b.new.data2.gep813, align 8
  %b.new.cap2.gep814 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load771, i32 0, i32 2
  store i64 %b.new.cap800, ptr %b.new.cap2.gep814, align 8
  br label %b.grow_done795

str_overflow_abort809:                            ; preds = %b.grow2793
  %50 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2808

b.byte_ok823:                                     ; preds = %b.byte_err824, %b.grow_done795
  %b.len825 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load822, i32 0, i32 0
  %b.len826 = load i64, ptr %b.len825, align 8
  %b.cap827 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load822, i32 0, i32 2
  %b.cap828 = load i64, ptr %b.cap827, align 8
  %b.data829 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load822, i32 0, i32 1
  %b.data830 = load ptr, ptr %b.data829, align 8
  %b.needs.grow831 = icmp eq i64 %b.len826, %b.cap828
  br i1 %b.needs.grow831, label %b.grow832, label %b.nogrow833

b.byte_err824:                                    ; preds = %b.grow_done795
  %51 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok823

b.grow832:                                        ; preds = %b.byte_ok823
  %b.cap2835 = mul i64 %b.cap828, 2
  %b.cap.small836 = icmp slt i64 %b.cap2835, 16
  %b.new.cap837 = select i1 %b.cap.small836, i64 16, i64 %b.cap2835
  %b.new.buf.len838 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap837, i64 1)
  %sum839 = extractvalue { i64, i1 } %b.new.buf.len838, 0
  %ovf840 = extractvalue { i64, i1 } %b.new.buf.len838, 1
  br i1 %ovf840, label %str_overflow_abort842, label %b.new.buf.len841

b.nogrow833:                                      ; preds = %b.byte_ok823
  br label %b.push_done834

b.push_done834:                                   ; preds = %b.nogrow833, %b.new.buf.len841
  %b.cur.data848 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load822, i32 0, i32 1
  %b.cur.data849 = load ptr, ptr %b.cur.data848, align 8
  %b.cur.len850 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load822, i32 0, i32 0
  %b.cur.len851 = load i64, ptr %b.cur.len850, align 8
  %b.byte.gep852 = getelementptr i8, ptr %b.cur.data849, i64 %b.cur.len851
  store i8 10, ptr %b.byte.gep852, align 1
  %b.next.len853 = add i64 %b.cur.len851, 1
  %b.nul854 = getelementptr i8, ptr %b.cur.data849, i64 %b.next.len853
  store i8 0, ptr %b.nul854, align 1
  %b.len.gep855 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load822, i32 0, i32 0
  store i64 %b.next.len853, ptr %b.len.gep855, align 8
  br label %choice.exit636

b.new.buf.len841:                                 ; preds = %str_overflow_abort842, %b.grow832
  %arena.cur843 = call ptr @dva_arena_current()
  %b.new.buf844 = call ptr @dva_arena_alloc(ptr %arena.cur843, i64 %sum839)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf844, ptr align 1 %b.data830, i64 %b.len826, i1 false)
  %b.grow.nul845 = getelementptr i8, ptr %b.new.buf844, i64 %b.len826
  store i8 0, ptr %b.grow.nul845, align 1
  %b.new.data.gep846 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load822, i32 0, i32 1
  store ptr %b.new.buf844, ptr %b.new.data.gep846, align 8
  %b.new.cap.gep847 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load822, i32 0, i32 2
  store i64 %b.new.cap837, ptr %b.new.cap.gep847, align 8
  br label %b.push_done834

str_overflow_abort842:                            ; preds = %b.grow832
  %52 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len841

choice.case856:                                   ; preds = %choice.next624
  %pay.gep861 = getelementptr inbounds { i64, ptr }, ptr %fld.load621, i32 0, i32 1
  %payload.ptr862 = load ptr, ptr %pay.gep861, align 8
  store ptr %payload.ptr862, ptr %var._863, align 8
  store ptr %payload.ptr862, ptr %var.sub864, align 8
  %b.load865 = load ptr, ptr %var.b, align 8
  %app.str.len866 = load i64, ptr @str.14.struct, align 8
  %app.str.len867 = and i64 %app.str.len866, 281474976710655
  %str.tag868 = lshr i64 %app.str.len866, 48
  %str.immortal869 = icmp eq i64 %str.tag868, 0
  br i1 %str.immortal869, label %str_ok871, label %str_gen_check870

choice.next857:                                   ; preds = %choice.next624
  br label %choice.exit622

str_gen_check870:                                 ; preds = %choice.case856
  %arena.cur873 = call ptr @dva_arena_current()
  %tag.valid874 = call i1 @dva_arena_validate_tag(ptr %arena.cur873, i64 %str.tag868)
  br i1 %tag.valid874, label %str_ok871, label %str_stale872

str_ok871:                                        ; preds = %str_stale872, %str_gen_check870, %choice.case856
  %b.app.cur.len875 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load865, i32 0, i32 0
  %b.app.cur.len876 = load i64, ptr %b.app.cur.len875, align 8
  %b.app.new.len877 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len876, i64 %app.str.len867)
  %sum878 = extractvalue { i64, i1 } %b.app.new.len877, 0
  %ovf879 = extractvalue { i64, i1 } %b.app.new.len877, 1
  br i1 %ovf879, label %str_overflow_abort881, label %b.app.new.len880

str_stale872:                                     ; preds = %str_gen_check870
  %53 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok871

b.app.new.len880:                                 ; preds = %str_overflow_abort881, %str_ok871
  %b.cap882 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load865, i32 0, i32 2
  %b.cap883 = load i64, ptr %b.cap882, align 8
  %b.need.grow884 = icmp slt i64 %b.cap883, %sum878
  br i1 %b.need.grow884, label %b.grow2885, label %b.nogrow2886

str_overflow_abort881:                            ; preds = %str_ok871
  %54 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len880

b.grow2885:                                       ; preds = %b.app.new.len880
  %b.cap2888 = mul i64 %b.cap883, 2
  %b.cap.small889 = icmp slt i64 %b.cap2888, 16
  %b.cap.grow890 = select i1 %b.cap.small889, i64 16, i64 %b.cap2888
  %b.cap.need891 = icmp slt i64 %b.cap.grow890, %sum878
  %b.new.cap892 = select i1 %b.cap.need891, i64 %sum878, i64 %b.cap.grow890
  %b.cur.len2893 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load865, i32 0, i32 0
  %b.cur.len2894 = load i64, ptr %b.cur.len2893, align 8
  %b.cur.data2895 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load865, i32 0, i32 1
  %b.cur.data2896 = load ptr, ptr %b.cur.data2895, align 8
  %b.new.buf.len2897 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap892, i64 1)
  %sum898 = extractvalue { i64, i1 } %b.new.buf.len2897, 0
  %ovf899 = extractvalue { i64, i1 } %b.new.buf.len2897, 1
  br i1 %ovf899, label %str_overflow_abort901, label %b.new.buf.len2900

b.nogrow2886:                                     ; preds = %b.app.new.len880
  br label %b.grow_done887

b.grow_done887:                                   ; preds = %b.nogrow2886, %b.new.buf.len2900
  %app.str.data907 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  %b.app.data908 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load865, i32 0, i32 1
  %b.app.data909 = load ptr, ptr %b.app.data908, align 8
  %b.app.dst910 = getelementptr i8, ptr %b.app.data909, i64 %b.app.cur.len876
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst910, ptr align 1 %app.str.data907, i64 %app.str.len867, i1 false)
  %b.app.nul911 = getelementptr i8, ptr %b.app.data909, i64 %sum878
  store i8 0, ptr %b.app.nul911, align 1
  %b.len.gep912 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load865, i32 0, i32 0
  store i64 %sum878, ptr %b.len.gep912, align 8
  %b.load913 = load ptr, ptr %var.b, align 8
  br i1 true, label %b.byte_ok914, label %b.byte_err915

b.new.buf.len2900:                                ; preds = %str_overflow_abort901, %b.grow2885
  %arena.cur902 = call ptr @dva_arena_current()
  %b.new.buf2903 = call ptr @dva_arena_alloc(ptr %arena.cur902, i64 %sum898)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2903, ptr align 1 %b.cur.data2896, i64 %b.cur.len2894, i1 false)
  %b.grow2.nul904 = getelementptr i8, ptr %b.new.buf2903, i64 %b.cur.len2894
  store i8 0, ptr %b.grow2.nul904, align 1
  %b.new.data2.gep905 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load865, i32 0, i32 1
  store ptr %b.new.buf2903, ptr %b.new.data2.gep905, align 8
  %b.new.cap2.gep906 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load865, i32 0, i32 2
  store i64 %b.new.cap892, ptr %b.new.cap2.gep906, align 8
  br label %b.grow_done887

str_overflow_abort901:                            ; preds = %b.grow2885
  %55 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2900

b.byte_ok914:                                     ; preds = %b.byte_err915, %b.grow_done887
  %b.len916 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load913, i32 0, i32 0
  %b.len917 = load i64, ptr %b.len916, align 8
  %b.cap918 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load913, i32 0, i32 2
  %b.cap919 = load i64, ptr %b.cap918, align 8
  %b.data920 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load913, i32 0, i32 1
  %b.data921 = load ptr, ptr %b.data920, align 8
  %b.needs.grow922 = icmp eq i64 %b.len917, %b.cap919
  br i1 %b.needs.grow922, label %b.grow923, label %b.nogrow924

b.byte_err915:                                    ; preds = %b.grow_done887
  %56 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok914

b.grow923:                                        ; preds = %b.byte_ok914
  %b.cap2926 = mul i64 %b.cap919, 2
  %b.cap.small927 = icmp slt i64 %b.cap2926, 16
  %b.new.cap928 = select i1 %b.cap.small927, i64 16, i64 %b.cap2926
  %b.new.buf.len929 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap928, i64 1)
  %sum930 = extractvalue { i64, i1 } %b.new.buf.len929, 0
  %ovf931 = extractvalue { i64, i1 } %b.new.buf.len929, 1
  br i1 %ovf931, label %str_overflow_abort933, label %b.new.buf.len932

b.nogrow924:                                      ; preds = %b.byte_ok914
  br label %b.push_done925

b.push_done925:                                   ; preds = %b.nogrow924, %b.new.buf.len932
  %b.cur.data939 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load913, i32 0, i32 1
  %b.cur.data940 = load ptr, ptr %b.cur.data939, align 8
  %b.cur.len941 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load913, i32 0, i32 0
  %b.cur.len942 = load i64, ptr %b.cur.len941, align 8
  %b.byte.gep943 = getelementptr i8, ptr %b.cur.data940, i64 %b.cur.len942
  store i8 10, ptr %b.byte.gep943, align 1
  %b.next.len944 = add i64 %b.cur.len942, 1
  %b.nul945 = getelementptr i8, ptr %b.cur.data940, i64 %b.next.len944
  store i8 0, ptr %b.nul945, align 1
  %b.len.gep946 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load913, i32 0, i32 0
  store i64 %b.next.len944, ptr %b.len.gep946, align 8
  %var.load947 = load ptr, ptr %var.sub864, align 8
  %a.load948 = load ptr, ptr %var.sub864, align 8
  %a.null949 = icmp eq ptr %a.load948, null
  br i1 %a.null949, label %a.create950, label %a.after951

b.new.buf.len932:                                 ; preds = %str_overflow_abort933, %b.grow923
  %arena.cur934 = call ptr @dva_arena_current()
  %b.new.buf935 = call ptr @dva_arena_alloc(ptr %arena.cur934, i64 %sum930)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf935, ptr align 1 %b.data921, i64 %b.len917, i1 false)
  %b.grow.nul936 = getelementptr i8, ptr %b.new.buf935, i64 %b.len917
  store i8 0, ptr %b.grow.nul936, align 1
  %b.new.data.gep937 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load913, i32 0, i32 1
  store ptr %b.new.buf935, ptr %b.new.data.gep937, align 8
  %b.new.cap.gep938 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load913, i32 0, i32 2
  store i64 %b.new.cap928, ptr %b.new.cap.gep938, align 8
  br label %b.push_done925

str_overflow_abort933:                            ; preds = %b.grow923
  %57 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len932

a.create950:                                      ; preds = %b.push_done925
  %arena.cur952 = call ptr @dva_arena_current()
  %a.create953 = call ptr @dva_arena_alloc(ptr %arena.cur952, i64 24)
  %arena.cur954 = call ptr @dva_arena_current()
  %a.buf955 = call ptr @dva_arena_alloc(ptr %arena.cur954, i64 128)
  %a.len.gep956 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create953, i32 0, i32 0
  store i64 0, ptr %a.len.gep956, align 8
  %a.data.gep957 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create953, i32 0, i32 1
  store ptr %a.buf955, ptr %a.data.gep957, align 8
  %a.cap.gep958 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create953, i32 0, i32 2
  store i64 16, ptr %a.cap.gep958, align 8
  store ptr %a.create953, ptr %var.sub864, align 8
  br label %a.after951

a.after951:                                       ; preds = %a.create950, %b.push_done925
  %a.load2959 = load ptr, ptr %var.sub864, align 8
  %var.load960 = load i64, ptr %var.indent, align 8
  %addtmp961 = add i64 %var.load960, 2
  %var.load962 = load ptr, ptr %var.b, align 8
  call void @"ccl::serialize_doc_indent"(ptr %a.load2959, i64 %addtmp961, ptr %var.load962)
  br label %choice.exit622
}

define ptr @"ccl::to_ccl"(ptr %0) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 512, i64 1)
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
  store i64 512, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

str_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

a.create:                                         ; preds = %b.buf.len1
  %arena.cur3 = call ptr @dva_arena_current()
  %a.create4 = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 24)
  %arena.cur5 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create4, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %b.buf.len1
  %a.load2 = load ptr, ptr %var.doc, align 8
  %var.load6 = load ptr, ptr %var.b, align 8
  call void @"ccl::serialize_doc_indent"(ptr %a.load2, i64 0, ptr %var.load6)
  %var.load7 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load7, i32 0, i32 0
  %b.freeze.len8 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load7, i32 0, i32 1
  %b.freeze.data9 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %a.after
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data9, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data9, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data9, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len8, 1
  %arena.cur10 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data9, i64 %b.freeze.len8, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len8
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %a.after
  %b.freeze.data11 = phi ptr [ %b.freeze.data9, %a.after ], [ %b.freeze.data9, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur12 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len8, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data11, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load7, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load7, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load7, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define ptr @"ccl::first_non_comment_entry"(ptr %0) #1 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.103 = alloca i64, align 8
  %loop.idx.103 = alloca i64, align 8
  %"var.res'" = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  store ptr null, ptr %"var.res'", align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len3 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.103, align 8
  br label %loop.header.103

loop.header.103:                                  ; preds = %loop.latch.103, %a.after
  %counter.load = load i64, ptr %loop.idx.103, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.103, label %loop.exit.nat.103

loop.body.103:                                    ; preds = %loop.header.103
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.103, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load5 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load5, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len6 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len7 = and i64 %eq.lhs.len6, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len6, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.103:                                ; preds = %loop.header.103
  br label %loop.exit.103

loop.latch.103:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.103, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.103, align 8
  br label %loop.header.103

loop.exit.103:                                    ; preds = %choice.then, %loop.exit.nat.103
  %var.load19 = load ptr, ptr %"var.res'", align 8
  ret ptr %var.load19

str_gen_check:                                    ; preds = %loop.body.103
  %arena.cur8 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur8, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.103
  %eq.rhs.len = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len9 = and i64 %eq.rhs.len, 281474976710655
  %str.tag10 = lshr i64 %eq.rhs.len, 48
  %str.immortal11 = icmp eq i64 %str.tag10, 0
  br i1 %str.immortal11, label %str_ok13, label %str_gen_check12

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check12:                                  ; preds = %str_ok
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag10)
  br i1 %tag.valid16, label %str_ok13, label %str_stale14

str_ok13:                                         ; preds = %str_stale14, %str_gen_check12, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len7, %eq.rhs.len9
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale14:                                      ; preds = %str_gen_check12
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok13

str.eq.then:                                      ; preds = %str_ok13
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data17 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data17, ptr %eq.rhs.data, i64 %eq.lhs.len7)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok13
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  %var.load18 = load ptr, ptr %var.e, align 8
  store ptr %var.load18, ptr %"var.res'", align 8
  br label %loop.exit.103

choice.exit:                                      ; preds = %str.eq.merge
  br label %loop.latch.103
}

define ptr @"ccl::non_comment_entries"(ptr %0) #1 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.104 = alloca i64, align 8
  %loop.idx.104 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var.doc = alloca ptr, align 8
  store ptr %0, ptr %var.doc, align 8
  %call.res = call ptr @"ccl::doc_new"()
  store ptr %call.res, ptr %var.out, align 8
  %var.load = load ptr, ptr %var.doc, align 8
  %a.load = load ptr, ptr %var.doc, align 8
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
  store ptr %a.create1, ptr %var.doc, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.doc, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len3 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.104, align 8
  br label %loop.header.104

loop.header.104:                                  ; preds = %loop.latch.104, %a.after
  %counter.load = load i64, ptr %loop.idx.104, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.104, label %loop.exit.nat.104

loop.body.104:                                    ; preds = %loop.header.104
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.104, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load5 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, i64, i64 }, ptr %var.load5, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len6 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len7 = and i64 %eq.lhs.len6, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len6, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.104:                                ; preds = %loop.header.104
  br label %loop.exit.104

loop.latch.104:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.104, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.104, align 8
  br label %loop.header.104

loop.exit.104:                                    ; preds = %loop.exit.nat.104
  %var.load35 = load ptr, ptr %var.out, align 8
  %a.load36 = load ptr, ptr %var.out, align 8
  %a.null37 = icmp eq ptr %a.load36, null
  br i1 %a.null37, label %a.create38, label %a.after39

str_gen_check:                                    ; preds = %loop.body.104
  %arena.cur8 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur8, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.104
  %eq.rhs.len = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len9 = and i64 %eq.rhs.len, 281474976710655
  %str.tag10 = lshr i64 %eq.rhs.len, 48
  %str.immortal11 = icmp eq i64 %str.tag10, 0
  br i1 %str.immortal11, label %str_ok13, label %str_gen_check12

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check12:                                  ; preds = %str_ok
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag10)
  br i1 %tag.valid16, label %str_ok13, label %str_stale14

str_ok13:                                         ; preds = %str_stale14, %str_gen_check12, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len7, %eq.rhs.len9
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale14:                                      ; preds = %str_gen_check12
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok13

str.eq.then:                                      ; preds = %str_ok13
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data17 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data17, ptr %eq.rhs.data, i64 %eq.lhs.len7)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok13
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %str.eq.merge
  %var.load18 = load ptr, ptr %var.e, align 8
  %a.load19 = load ptr, ptr %var.out, align 8
  %a.null20 = icmp eq ptr %a.load19, null
  br i1 %a.null20, label %a.create21, label %a.after22

choice.exit:                                      ; preds = %a.store, %str.eq.merge
  br label %loop.latch.104

a.create21:                                       ; preds = %choice.then
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
  store ptr %a.create24, ptr %var.out, align 8
  br label %a.after22

a.after22:                                        ; preds = %a.create21, %choice.then
  %a.load230 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after22
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load230, i32 0, i32 0
  %a.len31 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load230, i32 0, i32 2
  %a.cap32 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len31, %a.cap32
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load230)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load230, i32 0, i32 1
  %a.cur.data33 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load230, i32 0, i32 0
  %a.cur.len34 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data33, i64 %a.cur.len34
  %slot.p2i = ptrtoint ptr %var.load18 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len34, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load230, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit

a.create38:                                       ; preds = %loop.exit.104
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
  store ptr %a.create41, ptr %var.out, align 8
  br label %a.after39

a.after39:                                        ; preds = %a.create38, %loop.exit.104
  %a.load247 = load ptr, ptr %var.out, align 8
  ret ptr %a.load247
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
