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
@"var.diag::capture_enabled" = external global i1
@"var.diag::captured_diags" = external global ptr
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
@"var.sys::STDIN" = external global i64
@"var.sys::STDOUT" = external global i64
@"var.sys::STDERR" = external global i64
@"var.sys::addr_null" = external global ptr
@"var.time::CLOCK_REALTIME" = external global i64
@"var.time::CLOCK_MONOTONIC" = external global i64
@"var.time::NS_PER_US" = external global i64
@"var.time::NS_PER_MS" = external global i64
@"var.time::NS_PER_SEC" = external global i64
@"var.time::SEC_PER_MIN" = external global i64
@"var.time::SEC_PER_HOUR" = external global i64
@"var.time::SEC_PER_DAY" = external global i64
@"var.lexer::cur_lex_file" = external global ptr
@"var.lexer::cur_lex_failed" = external global i1
@"var.ast::cell_var_names" = external global ptr
@"var.path::SEP" = external global i32
@"var.path::SEP_STR" = external global ptr
@"var.path::LIST_SEP" = external global i32
@"var.path::LIST_SEP_STR" = external global ptr
@"var.path::IS_WIN" = external global i1
@"var.parser::cur_target_triple" = external global ptr
@clo.const = internal constant { ptr, ptr } { ptr @"formatter::is_space_or_tab", ptr null }
@"var.formatter::is_space_or_tab" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.1 = internal constant { ptr, ptr } { ptr @"formatter::scan_line_state", ptr null }
@"var.formatter::scan_line_state" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"formatter::strip_cr_and_trailing_ws", ptr null }
@"var.formatter::strip_cr_and_trailing_ws" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"formatter::strip_cr_only", ptr null }
@"var.formatter::strip_cr_only" = global ptr null
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@clo.const.4 = internal constant { ptr, ptr } { ptr @"formatter::split_source_lines", ptr null }
@"var.formatter::split_source_lines" = global ptr null
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@str.0 = internal unnamed_addr constant [3 x i8] c"/*\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.0 }
@str.1 = internal unnamed_addr constant [4 x i8] c"\22\22\22\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.1 }
@str.2 = internal unnamed_addr constant [3 x i8] c": \00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.2 }
@clo.const.5 = internal constant { ptr, ptr } { ptr @"formatter::format_code_body", ptr null }
@"var.formatter::format_code_body" = global ptr null
@str.3 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.3 }
@clo.const.6 = internal constant { ptr, ptr } { ptr @"formatter::make_spaces", ptr null }
@"var.formatter::make_spaces" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"formatter::strip_leading_ws", ptr null }
@"var.formatter::strip_leading_ws" = global ptr null
@div_zero_msg = internal unnamed_addr constant [33 x i8] c"E4012: integer division by zero\0A\00"
@div_ovf_msg = internal unnamed_addr constant [56 x i8] c"E4013: signed integer division overflow (INT_MIN / -1)\0A\00"
@clo.const.8 = internal constant { ptr, ptr } { ptr @"formatter::all_indents_div3", ptr null }
@"var.formatter::all_indents_div3" = global ptr null
@str.4 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.4 }
@str.5 = internal unnamed_addr constant [14 x i8] c"formatter.dva\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 13, ptr @str.5 }
@str.6 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.6 }
@clo.const.9 = internal constant { ptr, ptr } { ptr @"formatter::find_stack_level", ptr null }
@"var.formatter::find_stack_level" = global ptr null
@dva_thread_rec = external thread_local global ptr
@clo.const.10 = internal constant { ptr, ptr } { ptr @"formatter::format_lines", ptr null }
@"var.formatter::format_lines" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"formatter::format_safe_fallback", ptr null }
@"var.formatter::format_safe_fallback" = global ptr null
@str.7 = internal unnamed_addr constant [2 x i8] c":\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.7 }
@str.8 = internal unnamed_addr constant [4 x i8] c": E\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.8 }
@str.9 = internal unnamed_addr constant [15 x i8] c": syntax error\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 14, ptr @str.9 }
@clo.const.12 = internal constant { ptr, ptr } { ptr @"formatter::parse_ast_signature", ptr null }
@"var.formatter::parse_ast_signature" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"formatter::format_source", ptr null }
@"var.formatter::format_source" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"formatter::sort_names", ptr null }
@"var.formatter::sort_names" = global ptr null
@str.10 = internal unnamed_addr constant [5 x i8] c".dva\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.10 }
@clo.const.15 = internal constant { ptr, ptr } { ptr @"formatter::collect_dva_files", ptr null }
@"var.formatter::collect_dva_files" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"formatter::read_stdin_all", ptr null }
@"var.formatter::read_stdin_all" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"formatter::write_stdout", ptr null }
@"var.formatter::write_stdout" = global ptr null
@str.11 = internal unnamed_addr constant [2 x i8] c"\0A\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.11 }
@clo.const.18 = internal constant { ptr, ptr } { ptr @"formatter::print_line", ptr null }
@"var.formatter::print_line" = global ptr null
@str.12 = internal unnamed_addr constant [46 x i8] c"Usage: edva fmt [options] [file.dva | dir...]\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 45, ptr @str.12 }
@str.13 = internal unnamed_addr constant [9 x i8] c"Options:\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.13 }
@str.14 = internal unnamed_addr constant [70 x i8] c"  --check     Check if files are formatted (exit 1 if changes needed)\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 69, ptr @str.14 }
@str.15 = internal unnamed_addr constant [74 x i8] c"  --stdout    Write formatted output to stdout instead of modifying files\00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 73, ptr @str.15 }
@str.16 = internal unnamed_addr constant [74 x i8] c"  --stdin     Read source from stdin and write formatted output to stdout\00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 73, ptr @str.16 }
@str.17 = internal unnamed_addr constant [49 x i8] c"  -h, --help  Display this help message and exit\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 48, ptr @str.17 }
@clo.const.19 = internal constant { ptr, ptr } { ptr @"formatter::print_fmt_help", ptr null }
@"var.formatter::print_fmt_help" = global ptr null
@str.18 = internal unnamed_addr constant [3 x i8] c"-h\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.18 }
@str.19 = internal unnamed_addr constant [7 x i8] c"--help\00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.19 }
@str.20 = internal unnamed_addr constant [8 x i8] c"--check\00"
@str.20.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.20 }
@str.21 = internal unnamed_addr constant [9 x i8] c"--stdout\00"
@str.21.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.21 }
@str.22 = internal unnamed_addr constant [8 x i8] c"--stdin\00"
@str.22.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.22 }
@str.23 = internal unnamed_addr constant [27 x i8] c"edva fmt: unknown option '\00"
@str.23.struct = internal unnamed_addr constant { i64, ptr } { i64 26, ptr @str.23 }
@str.24 = internal unnamed_addr constant [2 x i8] c"'\00"
@str.24.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.24 }
@str.25 = internal unnamed_addr constant [8 x i8] c"<stdin>\00"
@str.25.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.25 }
@str.26 = internal unnamed_addr constant [2 x i8] c".\00"
@str.26.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.26 }
@str.27 = internal unnamed_addr constant [17 x i8] c"edva fmt: path '\00"
@str.27.struct = internal unnamed_addr constant { i64, ptr } { i64 16, ptr @str.27 }
@str.28 = internal unnamed_addr constant [17 x i8] c"' does not exist\00"
@str.28.struct = internal unnamed_addr constant { i64, ptr } { i64 16, ptr @str.28 }
@str.29 = internal unnamed_addr constant [30 x i8] c"edva fmt: no .dva files found\00"
@str.29.struct = internal unnamed_addr constant { i64, ptr } { i64 29, ptr @str.29 }
@str.30 = internal unnamed_addr constant [28 x i8] c"edva fmt: could not write '\00"
@str.30.struct = internal unnamed_addr constant { i64, ptr } { i64 27, ptr @str.30 }
@str.31 = internal unnamed_addr constant [27 x i8] c"edva fmt: could not read '\00"
@str.31.struct = internal unnamed_addr constant { i64, ptr } { i64 26, ptr @str.31 }
@clo.const.20 = internal constant { ptr, ptr } { ptr @"formatter::main", ptr null }
@"var.formatter::main" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_formatter, ptr null }]

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

define internal void @__dva_global_init_formatter() #1 {
entry:
  store ptr @clo.const, ptr @"var.formatter::is_space_or_tab", align 8
  store ptr @clo.const.1, ptr @"var.formatter::scan_line_state", align 8
  store ptr @clo.const.2, ptr @"var.formatter::strip_cr_and_trailing_ws", align 8
  store ptr @clo.const.3, ptr @"var.formatter::strip_cr_only", align 8
  store ptr @clo.const.4, ptr @"var.formatter::split_source_lines", align 8
  store ptr @clo.const.5, ptr @"var.formatter::format_code_body", align 8
  store ptr @clo.const.6, ptr @"var.formatter::make_spaces", align 8
  store ptr @clo.const.7, ptr @"var.formatter::strip_leading_ws", align 8
  store ptr @clo.const.8, ptr @"var.formatter::all_indents_div3", align 8
  store ptr @clo.const.9, ptr @"var.formatter::find_stack_level", align 8
  store ptr @clo.const.10, ptr @"var.formatter::format_lines", align 8
  store ptr @clo.const.11, ptr @"var.formatter::format_safe_fallback", align 8
  store ptr @clo.const.12, ptr @"var.formatter::parse_ast_signature", align 8
  store ptr @clo.const.13, ptr @"var.formatter::format_source", align 8
  store ptr @clo.const.14, ptr @"var.formatter::sort_names", align 8
  store ptr @clo.const.15, ptr @"var.formatter::collect_dva_files", align 8
  store ptr @clo.const.16, ptr @"var.formatter::read_stdin_all", align 8
  store ptr @clo.const.17, ptr @"var.formatter::write_stdout", align 8
  store ptr @clo.const.18, ptr @"var.formatter::print_line", align 8
  store ptr @clo.const.19, ptr @"var.formatter::print_fmt_help", align 8
  store ptr @clo.const.20, ptr @"var.formatter::main", align 8
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

define i1 @"formatter::is_space_or_tab"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %val.match = icmp eq i64 %var.load, 32
  %val.match1 = icmp eq i64 %var.load, 9
  %case.or = or i1 %val.match, %val.match1
  br i1 %case.or, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define i64 @"formatter::scan_line_state"(ptr %0, i64 %1) #1 {
entry:
  %var.c2 = alloca i64, align 8
  %var.c1 = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.465 = alloca i64, align 8
  %loop.idx.465 = alloca i64, align 8
  %"var.in_rune'" = alloca i1, align 1
  %"var.str_triple'" = alloca i1, align 1
  %"var.in_str'" = alloca i1, align 1
  %"var.i'" = alloca i64, align 8
  %"var.st'" = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.init_state = alloca i64, align 8
  %var.line = alloca ptr, align 8
  store ptr %0, ptr %var.line, align 8
  store i64 %1, ptr %var.init_state, align 8
  %var.load = load ptr, ptr %var.line, align 8
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
  %var.load3 = load i64, ptr %var.init_state, align 8
  store i64 %var.load3, ptr %"var.st'", align 8
  store i64 0, ptr %"var.i'", align 8
  store i1 false, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  store i1 false, ptr %"var.in_rune'", align 1
  store i64 0, ptr %loop.idx.465, align 8
  br label %loop.header.465

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.465:                                  ; preds = %loop.latch.465, %str_ok
  %counter.load = load i64, ptr %loop.idx.465, align 8
  br label %loop.body.465

loop.body.465:                                    ; preds = %loop.header.465
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.465, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load4 = load i64, ptr %"var.i'", align 8
  %var.load5 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load4, %var.load5
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.465:                                ; No predecessors!
  br label %loop.exit.465

loop.latch.465:                                   ; preds = %choice.exit78
  %step.val = load i64, ptr %loop.step.465, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.465, align 8
  br label %loop.header.465

loop.exit.465:                                    ; preds = %choice.then, %loop.exit.nat.465
  %var.load247 = load i1, ptr %"var.in_str'", align 1
  br i1 %var.load247, label %choice.then248, label %choice.else249

choice.then:                                      ; preds = %loop.body.465
  br label %loop.exit.465

choice.exit:                                      ; preds = %loop.body.465
  %var.load6 = load ptr, ptr %var.line, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %str.tag9 = lshr i64 %s.read.len7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

str_gen_check11:                                  ; preds = %choice.exit
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid15 = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %str.tag9)
  br i1 %tag.valid15, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %var.load17 = load i64, ptr %"var.i'", align 8
  %idx.neg = icmp slt i64 %var.load17, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale13:                                      ; preds = %str_gen_check11
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

idx_big_check:                                    ; preds = %str_ok12
  %idx.big = icmp sge i64 %var.load17, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load18 = load i64, ptr %"var.i'", align 8
  %addtmp = add i64 %var.load18, 1
  %var.load19 = load i64, ptr %var.n, align 8
  %cmptmp20 = icmp slt i64 %addtmp, %var.load19
  br i1 %cmptmp20, label %choice.then21, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok12
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then21:                                    ; preds = %idx_ok
  %var.load23 = load ptr, ptr %var.line, align 8
  %s.read.len24 = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 0
  %s.read.len25 = load i64, ptr %s.read.len24, align 8
  %s.read.len26 = and i64 %s.read.len25, 281474976710655
  %str.tag27 = lshr i64 %s.read.len25, 48
  %str.immortal28 = icmp eq i64 %str.tag27, 0
  br i1 %str.immortal28, label %str_ok30, label %str_gen_check29

choice.else:                                      ; preds = %idx_ok
  br label %choice.exit22

choice.exit22:                                    ; preds = %choice.else, %idx_ok40
  %choice.res = phi i64 [ %s.byte.val45, %idx_ok40 ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.c1, align 8
  %var.load46 = load i64, ptr %"var.i'", align 8
  %addtmp47 = add i64 %var.load46, 2
  %var.load48 = load i64, ptr %var.n, align 8
  %cmptmp49 = icmp slt i64 %addtmp47, %var.load48
  br i1 %cmptmp49, label %choice.then50, label %choice.else51

str_gen_check29:                                  ; preds = %choice.then21
  %arena.cur32 = call ptr @dva_arena_current()
  %tag.valid33 = call i1 @dva_arena_validate_tag(ptr %arena.cur32, i64 %str.tag27)
  br i1 %tag.valid33, label %str_ok30, label %str_stale31

str_ok30:                                         ; preds = %str_stale31, %str_gen_check29, %choice.then21
  %s.read.data34 = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 1
  %s.read.data35 = load ptr, ptr %s.read.data34, align 8
  %var.load36 = load i64, ptr %"var.i'", align 8
  %addtmp37 = add i64 %var.load36, 1
  %idx.neg38 = icmp slt i64 %addtmp37, 0
  br i1 %idx.neg38, label %idx_oob41, label %idx_big_check39

str_stale31:                                      ; preds = %str_gen_check29
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok30

idx_big_check39:                                  ; preds = %str_ok30
  %idx.big42 = icmp sge i64 %addtmp37, %s.read.len26
  br i1 %idx.big42, label %idx_oob41, label %idx_ok40

idx_ok40:                                         ; preds = %idx_oob41, %idx_big_check39
  %s.byte.gep43 = getelementptr i8, ptr %s.read.data35, i64 %addtmp37
  %s.byte44 = load i8, ptr %s.byte.gep43, align 1
  %s.byte.val45 = zext i8 %s.byte44 to i64
  br label %choice.exit22

idx_oob41:                                        ; preds = %idx_big_check39, %str_ok30
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok40

choice.then50:                                    ; preds = %choice.exit22
  %var.load53 = load ptr, ptr %var.line, align 8
  %s.read.len54 = getelementptr inbounds { i64, ptr }, ptr %var.load53, i32 0, i32 0
  %s.read.len55 = load i64, ptr %s.read.len54, align 8
  %s.read.len56 = and i64 %s.read.len55, 281474976710655
  %str.tag57 = lshr i64 %s.read.len55, 48
  %str.immortal58 = icmp eq i64 %str.tag57, 0
  br i1 %str.immortal58, label %str_ok60, label %str_gen_check59

choice.else51:                                    ; preds = %choice.exit22
  br label %choice.exit52

choice.exit52:                                    ; preds = %choice.else51, %idx_ok70
  %choice.res76 = phi i64 [ %s.byte.val75, %idx_ok70 ], [ 0, %choice.else51 ]
  store i64 %choice.res76, ptr %var.c2, align 8
  %var.load77 = load i64, ptr %"var.st'", align 8
  %val.match = icmp eq i64 %var.load77, 1
  br i1 %val.match, label %choice.case, label %choice.next

str_gen_check59:                                  ; preds = %choice.then50
  %arena.cur62 = call ptr @dva_arena_current()
  %tag.valid63 = call i1 @dva_arena_validate_tag(ptr %arena.cur62, i64 %str.tag57)
  br i1 %tag.valid63, label %str_ok60, label %str_stale61

str_ok60:                                         ; preds = %str_stale61, %str_gen_check59, %choice.then50
  %s.read.data64 = getelementptr inbounds { i64, ptr }, ptr %var.load53, i32 0, i32 1
  %s.read.data65 = load ptr, ptr %s.read.data64, align 8
  %var.load66 = load i64, ptr %"var.i'", align 8
  %addtmp67 = add i64 %var.load66, 2
  %idx.neg68 = icmp slt i64 %addtmp67, 0
  br i1 %idx.neg68, label %idx_oob71, label %idx_big_check69

str_stale61:                                      ; preds = %str_gen_check59
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok60

idx_big_check69:                                  ; preds = %str_ok60
  %idx.big72 = icmp sge i64 %addtmp67, %s.read.len56
  br i1 %idx.big72, label %idx_oob71, label %idx_ok70

idx_ok70:                                         ; preds = %idx_oob71, %idx_big_check69
  %s.byte.gep73 = getelementptr i8, ptr %s.read.data65, i64 %addtmp67
  %s.byte74 = load i8, ptr %s.byte.gep73, align 1
  %s.byte.val75 = zext i8 %s.byte74 to i64
  br label %choice.exit52

idx_oob71:                                        ; preds = %idx_big_check69, %str_ok60
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok70

choice.exit78:                                    ; preds = %choice.exit135, %choice.exit116, %choice.exit97, %choice.exit85
  br label %loop.latch.465

choice.case:                                      ; preds = %choice.exit52
  %var.load79 = load i64, ptr %var.c, align 8
  %cmptmp80 = icmp eq i64 %var.load79, 42
  br i1 %cmptmp80, label %and.466.then, label %and.466.else

choice.next:                                      ; preds = %choice.exit52
  %val.match92 = icmp eq i64 %var.load77, 2
  br i1 %val.match92, label %choice.case90, label %choice.next91

and.466.then:                                     ; preds = %choice.case
  %var.load81 = load i64, ptr %var.c1, align 8
  %cmptmp82 = icmp eq i64 %var.load81, 47
  br label %and.466.exit

and.466.else:                                     ; preds = %choice.case
  br label %and.466.exit

and.466.exit:                                     ; preds = %and.466.else, %and.466.then
  %and.466.phi = phi i1 [ %cmptmp82, %and.466.then ], [ %cmptmp80, %and.466.else ]
  br i1 %and.466.phi, label %choice.then83, label %choice.else84

choice.then83:                                    ; preds = %and.466.exit
  store i64 0, ptr %"var.st'", align 8
  %var.load86 = load i64, ptr %"var.i'", align 8
  %addtmp87 = add i64 %var.load86, 2
  store i64 %addtmp87, ptr %"var.i'", align 8
  br label %choice.exit85

choice.else84:                                    ; preds = %and.466.exit
  %var.load88 = load i64, ptr %"var.i'", align 8
  %addtmp89 = add i64 %var.load88, 1
  store i64 %addtmp89, ptr %"var.i'", align 8
  br label %choice.exit85

choice.exit85:                                    ; preds = %choice.else84, %choice.then83
  br label %choice.exit78

choice.case90:                                    ; preds = %choice.next
  %var.load93 = load i64, ptr %var.c, align 8
  %cmptmp94 = icmp eq i64 %var.load93, 92
  br i1 %cmptmp94, label %choice.then95, label %choice.else96

choice.next91:                                    ; preds = %choice.next
  %val.match111 = icmp eq i64 %var.load77, 3
  br i1 %val.match111, label %choice.case109, label %choice.next110

choice.then95:                                    ; preds = %choice.case90
  %var.load98 = load i64, ptr %"var.i'", align 8
  %addtmp99 = add i64 %var.load98, 2
  store i64 %addtmp99, ptr %"var.i'", align 8
  br label %choice.exit97

choice.else96:                                    ; preds = %choice.case90
  %var.load100 = load i64, ptr %var.c, align 8
  %cmptmp101 = icmp eq i64 %var.load100, 34
  br i1 %cmptmp101, label %choice.then102, label %choice.else103

choice.exit97:                                    ; preds = %choice.exit104, %choice.then95
  br label %choice.exit78

choice.then102:                                   ; preds = %choice.else96
  store i64 0, ptr %"var.st'", align 8
  %var.load105 = load i64, ptr %"var.i'", align 8
  %addtmp106 = add i64 %var.load105, 1
  store i64 %addtmp106, ptr %"var.i'", align 8
  br label %choice.exit104

choice.else103:                                   ; preds = %choice.else96
  %var.load107 = load i64, ptr %"var.i'", align 8
  %addtmp108 = add i64 %var.load107, 1
  store i64 %addtmp108, ptr %"var.i'", align 8
  br label %choice.exit104

choice.exit104:                                   ; preds = %choice.else103, %choice.then102
  br label %choice.exit97

choice.case109:                                   ; preds = %choice.next91
  %var.load112 = load i64, ptr %var.c, align 8
  %cmptmp113 = icmp eq i64 %var.load112, 92
  br i1 %cmptmp113, label %choice.then114, label %choice.else115

choice.next110:                                   ; preds = %choice.next91
  %var.load132 = load i1, ptr %"var.in_rune'", align 1
  br i1 %var.load132, label %choice.then133, label %choice.else134

choice.then114:                                   ; preds = %choice.case109
  %var.load117 = load i64, ptr %"var.i'", align 8
  %addtmp118 = add i64 %var.load117, 2
  store i64 %addtmp118, ptr %"var.i'", align 8
  br label %choice.exit116

choice.else115:                                   ; preds = %choice.case109
  %var.load119 = load i64, ptr %var.c, align 8
  %cmptmp120 = icmp eq i64 %var.load119, 34
  br i1 %cmptmp120, label %and.467.then, label %and.467.else

choice.exit116:                                   ; preds = %choice.exit127, %choice.then114
  br label %choice.exit78

and.467.then:                                     ; preds = %choice.else115
  %var.load121 = load i64, ptr %var.c1, align 8
  %cmptmp122 = icmp eq i64 %var.load121, 34
  br label %and.467.exit

and.467.else:                                     ; preds = %choice.else115
  br label %and.467.exit

and.467.exit:                                     ; preds = %and.467.else, %and.467.then
  %and.467.phi = phi i1 [ %cmptmp122, %and.467.then ], [ %cmptmp120, %and.467.else ]
  br i1 %and.467.phi, label %and.468.then, label %and.468.else

and.468.then:                                     ; preds = %and.467.exit
  %var.load123 = load i64, ptr %var.c2, align 8
  %cmptmp124 = icmp eq i64 %var.load123, 34
  br label %and.468.exit

and.468.else:                                     ; preds = %and.467.exit
  br label %and.468.exit

and.468.exit:                                     ; preds = %and.468.else, %and.468.then
  %and.468.phi = phi i1 [ %cmptmp124, %and.468.then ], [ %and.467.phi, %and.468.else ]
  br i1 %and.468.phi, label %choice.then125, label %choice.else126

choice.then125:                                   ; preds = %and.468.exit
  store i64 0, ptr %"var.st'", align 8
  %var.load128 = load i64, ptr %"var.i'", align 8
  %addtmp129 = add i64 %var.load128, 3
  store i64 %addtmp129, ptr %"var.i'", align 8
  br label %choice.exit127

choice.else126:                                   ; preds = %and.468.exit
  %var.load130 = load i64, ptr %"var.i'", align 8
  %addtmp131 = add i64 %var.load130, 1
  store i64 %addtmp131, ptr %"var.i'", align 8
  br label %choice.exit127

choice.exit127:                                   ; preds = %choice.else126, %choice.then125
  br label %choice.exit116

choice.then133:                                   ; preds = %choice.next110
  %var.load136 = load i64, ptr %var.c, align 8
  %cmptmp137 = icmp eq i64 %var.load136, 92
  br i1 %cmptmp137, label %choice.then138, label %choice.else139

choice.else134:                                   ; preds = %choice.next110
  %var.load152 = load i1, ptr %"var.in_str'", align 1
  br i1 %var.load152, label %choice.then153, label %choice.else154

choice.exit135:                                   ; preds = %choice.exit155, %choice.exit140
  br label %choice.exit78

choice.then138:                                   ; preds = %choice.then133
  %var.load141 = load i64, ptr %"var.i'", align 8
  %addtmp142 = add i64 %var.load141, 2
  store i64 %addtmp142, ptr %"var.i'", align 8
  br label %choice.exit140

choice.else139:                                   ; preds = %choice.then133
  %var.load143 = load i64, ptr %var.c, align 8
  %cmptmp144 = icmp eq i64 %var.load143, 39
  br i1 %cmptmp144, label %choice.then145, label %choice.else146

choice.exit140:                                   ; preds = %choice.exit147, %choice.then138
  br label %choice.exit135

choice.then145:                                   ; preds = %choice.else139
  store i1 false, ptr %"var.in_rune'", align 1
  %var.load148 = load i64, ptr %"var.i'", align 8
  %addtmp149 = add i64 %var.load148, 1
  store i64 %addtmp149, ptr %"var.i'", align 8
  br label %choice.exit147

choice.else146:                                   ; preds = %choice.else139
  %var.load150 = load i64, ptr %"var.i'", align 8
  %addtmp151 = add i64 %var.load150, 1
  store i64 %addtmp151, ptr %"var.i'", align 8
  br label %choice.exit147

choice.exit147:                                   ; preds = %choice.else146, %choice.then145
  br label %choice.exit140

choice.then153:                                   ; preds = %choice.else134
  %var.load156 = load i64, ptr %var.c, align 8
  %cmptmp157 = icmp eq i64 %var.load156, 92
  br i1 %cmptmp157, label %choice.then158, label %choice.else159

choice.else154:                                   ; preds = %choice.else134
  %var.load189 = load i64, ptr %var.c, align 8
  %cmptmp190 = icmp eq i64 %var.load189, 47
  br i1 %cmptmp190, label %and.471.then, label %and.471.else

choice.exit155:                                   ; preds = %choice.exit195, %choice.exit160
  br label %choice.exit135

choice.then158:                                   ; preds = %choice.then153
  %var.load161 = load i64, ptr %"var.i'", align 8
  %addtmp162 = add i64 %var.load161, 2
  store i64 %addtmp162, ptr %"var.i'", align 8
  br label %choice.exit160

choice.else159:                                   ; preds = %choice.then153
  %var.load163 = load i1, ptr %"var.str_triple'", align 1
  br i1 %var.load163, label %choice.then164, label %choice.else165

choice.exit160:                                   ; preds = %choice.exit166, %choice.then158
  br label %choice.exit155

choice.then164:                                   ; preds = %choice.else159
  %var.load167 = load i64, ptr %var.c, align 8
  %cmptmp168 = icmp eq i64 %var.load167, 34
  br i1 %cmptmp168, label %and.469.then, label %and.469.else

choice.else165:                                   ; preds = %choice.else159
  %var.load180 = load i64, ptr %var.c, align 8
  %cmptmp181 = icmp eq i64 %var.load180, 34
  br i1 %cmptmp181, label %choice.then182, label %choice.else183

choice.exit166:                                   ; preds = %choice.exit184, %choice.exit175
  br label %choice.exit160

and.469.then:                                     ; preds = %choice.then164
  %var.load169 = load i64, ptr %var.c1, align 8
  %cmptmp170 = icmp eq i64 %var.load169, 34
  br label %and.469.exit

and.469.else:                                     ; preds = %choice.then164
  br label %and.469.exit

and.469.exit:                                     ; preds = %and.469.else, %and.469.then
  %and.469.phi = phi i1 [ %cmptmp170, %and.469.then ], [ %cmptmp168, %and.469.else ]
  br i1 %and.469.phi, label %and.470.then, label %and.470.else

and.470.then:                                     ; preds = %and.469.exit
  %var.load171 = load i64, ptr %var.c2, align 8
  %cmptmp172 = icmp eq i64 %var.load171, 34
  br label %and.470.exit

and.470.else:                                     ; preds = %and.469.exit
  br label %and.470.exit

and.470.exit:                                     ; preds = %and.470.else, %and.470.then
  %and.470.phi = phi i1 [ %cmptmp172, %and.470.then ], [ %and.469.phi, %and.470.else ]
  br i1 %and.470.phi, label %choice.then173, label %choice.else174

choice.then173:                                   ; preds = %and.470.exit
  store i1 false, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  %var.load176 = load i64, ptr %"var.i'", align 8
  %addtmp177 = add i64 %var.load176, 3
  store i64 %addtmp177, ptr %"var.i'", align 8
  br label %choice.exit175

choice.else174:                                   ; preds = %and.470.exit
  %var.load178 = load i64, ptr %"var.i'", align 8
  %addtmp179 = add i64 %var.load178, 1
  store i64 %addtmp179, ptr %"var.i'", align 8
  br label %choice.exit175

choice.exit175:                                   ; preds = %choice.else174, %choice.then173
  br label %choice.exit166

choice.then182:                                   ; preds = %choice.else165
  store i1 false, ptr %"var.in_str'", align 1
  %var.load185 = load i64, ptr %"var.i'", align 8
  %addtmp186 = add i64 %var.load185, 1
  store i64 %addtmp186, ptr %"var.i'", align 8
  br label %choice.exit184

choice.else183:                                   ; preds = %choice.else165
  %var.load187 = load i64, ptr %"var.i'", align 8
  %addtmp188 = add i64 %var.load187, 1
  store i64 %addtmp188, ptr %"var.i'", align 8
  br label %choice.exit184

choice.exit184:                                   ; preds = %choice.else183, %choice.then182
  br label %choice.exit166

and.471.then:                                     ; preds = %choice.else154
  %var.load191 = load i64, ptr %var.c1, align 8
  %cmptmp192 = icmp eq i64 %var.load191, 47
  br label %and.471.exit

and.471.else:                                     ; preds = %choice.else154
  br label %and.471.exit

and.471.exit:                                     ; preds = %and.471.else, %and.471.then
  %and.471.phi = phi i1 [ %cmptmp192, %and.471.then ], [ %cmptmp190, %and.471.else ]
  br i1 %and.471.phi, label %choice.then193, label %choice.else194

choice.then193:                                   ; preds = %and.471.exit
  %var.load196 = load i64, ptr %var.n, align 8
  store i64 %var.load196, ptr %"var.i'", align 8
  br label %choice.exit195

choice.else194:                                   ; preds = %and.471.exit
  %var.load197 = load i64, ptr %var.c, align 8
  %cmptmp198 = icmp eq i64 %var.load197, 47
  br i1 %cmptmp198, label %and.472.then, label %and.472.else

choice.exit195:                                   ; preds = %choice.exit203, %choice.then193
  br label %choice.exit155

and.472.then:                                     ; preds = %choice.else194
  %var.load199 = load i64, ptr %var.c1, align 8
  %cmptmp200 = icmp eq i64 %var.load199, 42
  br label %and.472.exit

and.472.else:                                     ; preds = %choice.else194
  br label %and.472.exit

and.472.exit:                                     ; preds = %and.472.else, %and.472.then
  %and.472.phi = phi i1 [ %cmptmp200, %and.472.then ], [ %cmptmp198, %and.472.else ]
  br i1 %and.472.phi, label %choice.then201, label %choice.else202

choice.then201:                                   ; preds = %and.472.exit
  store i64 1, ptr %"var.st'", align 8
  %var.load204 = load i64, ptr %"var.i'", align 8
  %addtmp205 = add i64 %var.load204, 2
  store i64 %addtmp205, ptr %"var.i'", align 8
  br label %choice.exit203

choice.else202:                                   ; preds = %and.472.exit
  %var.load206 = load i64, ptr %var.c, align 8
  %cmptmp207 = icmp eq i64 %var.load206, 39
  br i1 %cmptmp207, label %choice.then208, label %choice.else209

choice.exit203:                                   ; preds = %choice.exit210, %choice.then201
  br label %choice.exit195

choice.then208:                                   ; preds = %choice.else202
  store i1 true, ptr %"var.in_rune'", align 1
  %var.load211 = load i64, ptr %"var.i'", align 8
  %addtmp212 = add i64 %var.load211, 1
  store i64 %addtmp212, ptr %"var.i'", align 8
  br label %choice.exit210

choice.else209:                                   ; preds = %choice.else202
  %var.load213 = load i64, ptr %var.c, align 8
  %cmptmp214 = icmp eq i64 %var.load213, 34
  br i1 %cmptmp214, label %choice.then215, label %choice.else216

choice.exit210:                                   ; preds = %choice.exit217, %choice.then208
  br label %choice.exit203

choice.then215:                                   ; preds = %choice.else209
  %var.load218 = load i64, ptr %var.c1, align 8
  %cmptmp219 = icmp eq i64 %var.load218, 34
  br i1 %cmptmp219, label %and.473.then, label %and.473.else

choice.else216:                                   ; preds = %choice.else209
  %var.load245 = load i64, ptr %"var.i'", align 8
  %addtmp246 = add i64 %var.load245, 1
  store i64 %addtmp246, ptr %"var.i'", align 8
  br label %choice.exit217

choice.exit217:                                   ; preds = %choice.else216, %choice.exit224
  br label %choice.exit210

and.473.then:                                     ; preds = %choice.then215
  %var.load220 = load i64, ptr %var.c2, align 8
  %cmptmp221 = icmp eq i64 %var.load220, 34
  br label %and.473.exit

and.473.else:                                     ; preds = %choice.then215
  br label %and.473.exit

and.473.exit:                                     ; preds = %and.473.else, %and.473.then
  %and.473.phi = phi i1 [ %cmptmp221, %and.473.then ], [ %cmptmp219, %and.473.else ]
  br i1 %and.473.phi, label %choice.then222, label %choice.else223

choice.then222:                                   ; preds = %and.473.exit
  %var.load225 = load i64, ptr %"var.i'", align 8
  %addtmp226 = add i64 %var.load225, 3
  %var.load227 = load i64, ptr %var.n, align 8
  %cmptmp228 = icmp eq i64 %addtmp226, %var.load227
  br i1 %cmptmp228, label %choice.then229, label %choice.else230

choice.else223:                                   ; preds = %and.473.exit
  %var.load235 = load i64, ptr %"var.i'", align 8
  %addtmp236 = add i64 %var.load235, 1
  %var.load237 = load i64, ptr %var.n, align 8
  %cmptmp238 = icmp eq i64 %addtmp236, %var.load237
  br i1 %cmptmp238, label %choice.then239, label %choice.else240

choice.exit224:                                   ; preds = %choice.exit241, %choice.exit231
  br label %choice.exit217

choice.then229:                                   ; preds = %choice.then222
  store i64 3, ptr %"var.st'", align 8
  %var.load232 = load i64, ptr %var.n, align 8
  store i64 %var.load232, ptr %"var.i'", align 8
  br label %choice.exit231

choice.else230:                                   ; preds = %choice.then222
  store i1 true, ptr %"var.in_str'", align 1
  store i1 true, ptr %"var.str_triple'", align 1
  %var.load233 = load i64, ptr %"var.i'", align 8
  %addtmp234 = add i64 %var.load233, 3
  store i64 %addtmp234, ptr %"var.i'", align 8
  br label %choice.exit231

choice.exit231:                                   ; preds = %choice.else230, %choice.then229
  br label %choice.exit224

choice.then239:                                   ; preds = %choice.else223
  store i64 2, ptr %"var.st'", align 8
  %var.load242 = load i64, ptr %var.n, align 8
  store i64 %var.load242, ptr %"var.i'", align 8
  br label %choice.exit241

choice.else240:                                   ; preds = %choice.else223
  store i1 true, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  %var.load243 = load i64, ptr %"var.i'", align 8
  %addtmp244 = add i64 %var.load243, 1
  store i64 %addtmp244, ptr %"var.i'", align 8
  br label %choice.exit241

choice.exit241:                                   ; preds = %choice.else240, %choice.then239
  br label %choice.exit224

choice.then248:                                   ; preds = %loop.exit.465
  %var.load251 = load i1, ptr %"var.str_triple'", align 1
  br i1 %var.load251, label %choice.then252, label %choice.else253

choice.else249:                                   ; preds = %loop.exit.465
  %var.load256 = load i64, ptr %"var.st'", align 8
  br label %choice.exit250

choice.exit250:                                   ; preds = %choice.else249, %choice.exit254
  %choice.res257 = phi i64 [ %choice.res255, %choice.exit254 ], [ %var.load256, %choice.else249 ]
  ret i64 %choice.res257

choice.then252:                                   ; preds = %choice.then248
  br label %choice.exit254

choice.else253:                                   ; preds = %choice.then248
  br label %choice.exit254

choice.exit254:                                   ; preds = %choice.else253, %choice.then252
  %choice.res255 = phi i64 [ 3, %choice.then252 ], [ 2, %choice.else253 ]
  br label %choice.exit250
}

define ptr @"formatter::strip_cr_and_trailing_ws"(ptr %0) #1 {
entry:
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.474 = alloca i64, align 8
  %loop.idx.474 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
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
  store i64 %str.len.query2, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.474, align 8
  br label %loop.header.474

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.474:                                  ; preds = %loop.latch.474, %str_ok
  %counter.load = load i64, ptr %loop.idx.474, align 8
  br label %loop.body.474

loop.body.474:                                    ; preds = %loop.header.474
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.474, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load3 = load i64, ptr %"var.end'", align 8
  %cmptmp = icmp sle i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.474:                                ; No predecessors!
  br label %loop.exit.474

loop.latch.474:                                   ; preds = %choice.exit22
  %step.val = load i64, ptr %loop.step.474, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.474, align 8
  br label %loop.header.474

loop.exit.474:                                    ; preds = %choice.else, %choice.then, %loop.exit.nat.474
  %var.load25 = load ptr, ptr %var.s, align 8
  %s.read.len26 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %s.read.len27 = load i64, ptr %s.read.len26, align 8
  %s.read.len28 = and i64 %s.read.len27, 281474976710655
  %str.tag29 = lshr i64 %s.read.len27, 48
  %str.immortal30 = icmp eq i64 %str.tag29, 0
  br i1 %str.immortal30, label %str_ok32, label %str_gen_check31

choice.then:                                      ; preds = %loop.body.474
  br label %loop.exit.474

choice.exit:                                      ; preds = %loop.body.474
  %var.load4 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %str.tag7 = lshr i64 %s.read.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

str_gen_check9:                                   ; preds = %choice.exit
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  %var.load15 = load i64, ptr %"var.end'", align 8
  %subtmp = sub i64 %var.load15, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale11:                                      ; preds = %str_gen_check9
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

idx_big_check:                                    ; preds = %str_ok10
  %idx.big = icmp sge i64 %subtmp, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data14, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load16 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load16, 32
  %val.match18 = icmp eq i64 %var.load16, 9
  %case.or = or i1 %val.match, %val.match18
  %val.match19 = icmp eq i64 %var.load16, 13
  %case.or20 = or i1 %case.or, %val.match19
  br i1 %case.or20, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %str_ok10
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.exit17:                                    ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %choice.then21, label %choice.else

choice.case:                                      ; preds = %idx_ok
  br label %choice.exit17

choice.next:                                      ; preds = %idx_ok
  br label %choice.exit17

choice.then21:                                    ; preds = %choice.exit17
  %var.load23 = load i64, ptr %"var.end'", align 8
  %subtmp24 = sub i64 %var.load23, 1
  store i64 %subtmp24, ptr %"var.end'", align 8
  br label %choice.exit22

choice.else:                                      ; preds = %choice.exit17
  br label %loop.exit.474

choice.exit22:                                    ; preds = %choice.then21
  br label %loop.latch.474

str_gen_check31:                                  ; preds = %loop.exit.474
  %arena.cur34 = call ptr @dva_arena_current()
  %tag.valid35 = call i1 @dva_arena_validate_tag(ptr %arena.cur34, i64 %str.tag29)
  br i1 %tag.valid35, label %str_ok32, label %str_stale33

str_ok32:                                         ; preds = %str_stale33, %str_gen_check31, %loop.exit.474
  %s.read.data36 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %s.read.data37 = load ptr, ptr %s.read.data36, align 8
  %var.load38 = load i64, ptr %"var.end'", align 8
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
  ret ptr %str.view

str_stale33:                                      ; preds = %str_gen_check31
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok32
}

define ptr @"formatter::strip_cr_only"(ptr %0) #1 {
entry:
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
  %cmptmp = icmp sgt i64 %str.len.query2, 0
  br i1 %cmptmp, label %and.475.then, label %and.475.else

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.475.then:                                     ; preds = %str_ok
  %var.load3 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %s.read.len4 = load i64, ptr %s.read.len, align 8
  %s.read.len5 = and i64 %s.read.len4, 281474976710655
  %str.tag6 = lshr i64 %s.read.len4, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

and.475.else:                                     ; preds = %str_ok
  br label %and.475.exit

and.475.exit:                                     ; preds = %and.475.else, %idx_ok
  %and.475.phi = phi i1 [ %cmptmp25, %idx_ok ], [ %cmptmp, %and.475.else ]
  br i1 %and.475.phi, label %choice.then, label %choice.else

str_gen_check8:                                   ; preds = %and.475.then
  %arena.cur11 = call ptr @dva_arena_current()
  %tag.valid12 = call i1 @dva_arena_validate_tag(ptr %arena.cur11, i64 %str.tag6)
  br i1 %tag.valid12, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %and.475.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  %var.load14 = load ptr, ptr %var.s, align 8
  %str.len.query15 = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %str.len.query16 = load i64, ptr %str.len.query15, align 8
  %str.len.query17 = and i64 %str.len.query16, 281474976710655
  %str.tag18 = lshr i64 %str.len.query16, 48
  %str.immortal19 = icmp eq i64 %str.tag18, 0
  br i1 %str.immortal19, label %str_ok21, label %str_gen_check20

str_stale10:                                      ; preds = %str_gen_check8
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

str_gen_check20:                                  ; preds = %str_ok9
  %arena.cur23 = call ptr @dva_arena_current()
  %tag.valid24 = call i1 @dva_arena_validate_tag(ptr %arena.cur23, i64 %str.tag18)
  br i1 %tag.valid24, label %str_ok21, label %str_stale22

str_ok21:                                         ; preds = %str_stale22, %str_gen_check20, %str_ok9
  %subtmp = sub i64 %str.len.query17, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale22:                                      ; preds = %str_gen_check20
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok21

idx_big_check:                                    ; preds = %str_ok21
  %idx.big = icmp sge i64 %subtmp, %s.read.len5
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data13, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp25 = icmp eq i64 %s.byte.val, 13
  br label %and.475.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok21
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %and.475.exit
  %var.load26 = load ptr, ptr %var.s, align 8
  %s.read.len27 = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %s.read.len28 = load i64, ptr %s.read.len27, align 8
  %s.read.len29 = and i64 %s.read.len28, 281474976710655
  %str.tag30 = lshr i64 %s.read.len28, 48
  %str.immortal31 = icmp eq i64 %str.tag30, 0
  br i1 %str.immortal31, label %str_ok33, label %str_gen_check32

choice.else:                                      ; preds = %and.475.exit
  %var.load52 = load ptr, ptr %var.s, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %str_ok46
  %choice.res = phi ptr [ %str.view, %str_ok46 ], [ %var.load52, %choice.else ]
  ret ptr %choice.res

str_gen_check32:                                  ; preds = %choice.then
  %arena.cur35 = call ptr @dva_arena_current()
  %tag.valid36 = call i1 @dva_arena_validate_tag(ptr %arena.cur35, i64 %str.tag30)
  br i1 %tag.valid36, label %str_ok33, label %str_stale34

str_ok33:                                         ; preds = %str_stale34, %str_gen_check32, %choice.then
  %s.read.data37 = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 1
  %s.read.data38 = load ptr, ptr %s.read.data37, align 8
  %var.load39 = load ptr, ptr %var.s, align 8
  %str.len.query40 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 0
  %str.len.query41 = load i64, ptr %str.len.query40, align 8
  %str.len.query42 = and i64 %str.len.query41, 281474976710655
  %str.tag43 = lshr i64 %str.len.query41, 48
  %str.immortal44 = icmp eq i64 %str.tag43, 0
  br i1 %str.immortal44, label %str_ok46, label %str_gen_check45

str_stale34:                                      ; preds = %str_gen_check32
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok33

str_gen_check45:                                  ; preds = %str_ok33
  %arena.cur48 = call ptr @dva_arena_current()
  %tag.valid49 = call i1 @dva_arena_validate_tag(ptr %arena.cur48, i64 %str.tag43)
  br i1 %tag.valid49, label %str_ok46, label %str_stale47

str_ok46:                                         ; preds = %str_stale47, %str_gen_check45, %str_ok33
  %subtmp50 = sub i64 %str.len.query42, 1
  %rel.start = add i64 %s.read.len29, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len29
  %final.start = select i1 %start.gt.len, i64 %s.read.len29, i64 %c.start.0
  %end.is_neg = icmp slt i64 %subtmp50, 0
  %rel.end = add i64 %s.read.len29, %subtmp50
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %subtmp50
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len29
  %final.end = select i1 %end.gt.len, i64 %s.read.len29, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data38, i64 %final.start
  %arena.cur51 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit

str_stale47:                                      ; preds = %str_gen_check45
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok46
}

define ptr @"formatter::split_source_lines"(ptr %0) #1 {
entry:
  %var.next_st = alloca i64, align 8
  %var.is_comm = alloca i1, align 1
  %var.is_blank = alloca i1, align 1
  %var.eff_indent = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var._89 = alloca i64, align 8
  %var._i88 = alloca i64, align 8
  %loop.step.480 = alloca i64, align 8
  %loop.idx.480 = alloca i64, align 8
  %"var.idx'" = alloca i64, align 8
  %"var.tabs'" = alloca i64, align 8
  %"var.sp'" = alloca i64, align 8
  %var.cleaned = alloca ptr, align 8
  %var.raw_slice = alloca ptr, align 8
  %var._11 = alloca i64, align 8
  %var._i10 = alloca i64, align 8
  %loop.step.477 = alloca i64, align 8
  %loop.idx.477 = alloca i64, align 8
  %var.line_start = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.476 = alloca i64, align 8
  %loop.idx.476 = alloca i64, align 8
  %"var.st'" = alloca i64, align 8
  %"var.pos'" = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.res = alloca ptr, align 8
  %var.src = alloca ptr, align 8
  store ptr %0, ptr %var.src, align 8
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
  store ptr %a.new, ptr %var.res, align 8
  %var.load = load ptr, ptr %var.src, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur4 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur4, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  store i64 %str.len.query3, ptr %var.n, align 8
  store i64 0, ptr %"var.pos'", align 8
  store i64 0, ptr %"var.st'", align 8
  store i64 0, ptr %loop.idx.476, align 8
  br label %loop.header.476

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.476:                                  ; preds = %loop.latch.476, %str_ok
  %counter.load = load i64, ptr %loop.idx.476, align 8
  br label %loop.body.476

loop.body.476:                                    ; preds = %loop.header.476
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.476, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load5 = load i64, ptr %"var.pos'", align 8
  %var.load6 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load5, %var.load6
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.476:                                ; No predecessors!
  br label %loop.exit.476

loop.latch.476:                                   ; preds = %a.store
  %step.val283 = load i64, ptr %loop.step.476, align 8
  %loop.next284 = add i64 %counter.load, %step.val283
  store i64 %loop.next284, ptr %loop.idx.476, align 8
  br label %loop.header.476

loop.exit.476:                                    ; preds = %choice.then, %loop.exit.nat.476
  %var.load285 = load ptr, ptr %var.res, align 8
  %a.load286 = load ptr, ptr %var.res, align 8
  %a.null287 = icmp eq ptr %a.load286, null
  br i1 %a.null287, label %a.create288, label %a.after289

choice.then:                                      ; preds = %loop.body.476
  br label %loop.exit.476

choice.exit:                                      ; preds = %loop.body.476
  %var.load7 = load i64, ptr %"var.pos'", align 8
  store i64 %var.load7, ptr %var.line_start, align 8
  store i64 0, ptr %loop.idx.477, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.477

loop.header.477:                                  ; preds = %loop.latch.477, %choice.exit
  %counter.load8 = load i64, ptr %loop.idx.477, align 8
  br label %loop.body.477

loop.body.477:                                    ; preds = %loop.header.477
  %loop.rel.i9 = sub i64 %counter.load8, 0
  store i64 1, ptr %loop.step.477, align 8
  store i64 %loop.rel.i9, ptr %var._i10, align 8
  store i64 %counter.load8, ptr %var._11, align 8
  %var.load12 = load i64, ptr %"var.pos'", align 8
  %var.load13 = load i64, ptr %var.n, align 8
  %cmptmp14 = icmp sge i64 %var.load12, %var.load13
  br i1 %cmptmp14, label %or.478.then, label %or.478.else

loop.exit.nat.477:                                ; No predecessors!
  br label %loop.exit.477

loop.latch.477:                                   ; preds = %choice.exit29
  %step.val = load i64, ptr %loop.step.477, align 8
  %loop.next = add i64 %counter.load8, %step.val
  store i64 %loop.next, ptr %loop.idx.477, align 8
  br label %loop.header.477

loop.exit.477:                                    ; preds = %choice.then28, %loop.exit.nat.477
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load31 = load ptr, ptr %var.src, align 8
  %s.read.len32 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 0
  %s.read.len33 = load i64, ptr %s.read.len32, align 8
  %s.read.len34 = and i64 %s.read.len33, 281474976710655
  %str.tag35 = lshr i64 %s.read.len33, 48
  %str.immortal36 = icmp eq i64 %str.tag35, 0
  br i1 %str.immortal36, label %str_ok38, label %str_gen_check37

or.478.then:                                      ; preds = %loop.body.477
  br label %or.478.exit

or.478.else:                                      ; preds = %loop.body.477
  %var.load15 = load ptr, ptr %var.src, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 0
  %s.read.len16 = load i64, ptr %s.read.len, align 8
  %s.read.len17 = and i64 %s.read.len16, 281474976710655
  %str.tag18 = lshr i64 %s.read.len16, 48
  %str.immortal19 = icmp eq i64 %str.tag18, 0
  br i1 %str.immortal19, label %str_ok21, label %str_gen_check20

or.478.exit:                                      ; preds = %idx_ok, %or.478.then
  %or.478.phi = phi i1 [ %cmptmp14, %or.478.then ], [ %cmptmp27, %idx_ok ]
  br i1 %or.478.phi, label %choice.then28, label %choice.exit29

str_gen_check20:                                  ; preds = %or.478.else
  %arena.cur23 = call ptr @dva_arena_current()
  %tag.valid24 = call i1 @dva_arena_validate_tag(ptr %arena.cur23, i64 %str.tag18)
  br i1 %tag.valid24, label %str_ok21, label %str_stale22

str_ok21:                                         ; preds = %str_stale22, %str_gen_check20, %or.478.else
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 1
  %s.read.data25 = load ptr, ptr %s.read.data, align 8
  %var.load26 = load i64, ptr %"var.pos'", align 8
  %idx.neg = icmp slt i64 %var.load26, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale22:                                      ; preds = %str_gen_check20
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok21

idx_big_check:                                    ; preds = %str_ok21
  %idx.big = icmp sge i64 %var.load26, %s.read.len17
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data25, i64 %var.load26
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp27 = icmp eq i64 %s.byte.val, 10
  br label %or.478.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok21
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then28:                                    ; preds = %or.478.exit
  br label %loop.exit.477

choice.exit29:                                    ; preds = %or.478.exit
  %var.load30 = load i64, ptr %"var.pos'", align 8
  %addtmp = add i64 %var.load30, 1
  store i64 %addtmp, ptr %"var.pos'", align 8
  br label %loop.latch.477

str_gen_check37:                                  ; preds = %loop.exit.477
  %arena.cur40 = call ptr @dva_arena_current()
  %tag.valid41 = call i1 @dva_arena_validate_tag(ptr %arena.cur40, i64 %str.tag35)
  br i1 %tag.valid41, label %str_ok38, label %str_stale39

str_ok38:                                         ; preds = %str_stale39, %str_gen_check37, %loop.exit.477
  %s.read.data42 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 1
  %s.read.data43 = load ptr, ptr %s.read.data42, align 8
  %var.load44 = load i64, ptr %var.line_start, align 8
  %var.load45 = load i64, ptr %"var.pos'", align 8
  %start.is_neg = icmp slt i64 %var.load44, 0
  %rel.start = add i64 %s.read.len34, %var.load44
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load44
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len34
  %final.start = select i1 %start.gt.len, i64 %s.read.len34, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load45, 0
  %rel.end = add i64 %s.read.len34, %var.load45
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load45
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len34
  %final.end = select i1 %end.gt.len, i64 %s.read.len34, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data43, i64 %final.start
  %arena.cur46 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %var.raw_slice, align 8
  %var.load47 = load i64, ptr %"var.pos'", align 8
  %var.load48 = load i64, ptr %var.n, align 8
  %cmptmp49 = icmp slt i64 %var.load47, %var.load48
  br i1 %cmptmp49, label %and.479.then, label %and.479.else

str_stale39:                                      ; preds = %str_gen_check37
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok38

and.479.then:                                     ; preds = %str_ok38
  %var.load50 = load ptr, ptr %var.src, align 8
  %s.read.len51 = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 0
  %s.read.len52 = load i64, ptr %s.read.len51, align 8
  %s.read.len53 = and i64 %s.read.len52, 281474976710655
  %str.tag54 = lshr i64 %s.read.len52, 48
  %str.immortal55 = icmp eq i64 %str.tag54, 0
  br i1 %str.immortal55, label %str_ok57, label %str_gen_check56

and.479.else:                                     ; preds = %str_ok38
  br label %and.479.exit

and.479.exit:                                     ; preds = %and.479.else, %idx_ok66
  %and.479.phi = phi i1 [ %cmptmp72, %idx_ok66 ], [ %cmptmp49, %and.479.else ]
  br i1 %and.479.phi, label %choice.then73, label %choice.exit74

str_gen_check56:                                  ; preds = %and.479.then
  %arena.cur59 = call ptr @dva_arena_current()
  %tag.valid60 = call i1 @dva_arena_validate_tag(ptr %arena.cur59, i64 %str.tag54)
  br i1 %tag.valid60, label %str_ok57, label %str_stale58

str_ok57:                                         ; preds = %str_stale58, %str_gen_check56, %and.479.then
  %s.read.data61 = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 1
  %s.read.data62 = load ptr, ptr %s.read.data61, align 8
  %var.load63 = load i64, ptr %"var.pos'", align 8
  %idx.neg64 = icmp slt i64 %var.load63, 0
  br i1 %idx.neg64, label %idx_oob67, label %idx_big_check65

str_stale58:                                      ; preds = %str_gen_check56
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok57

idx_big_check65:                                  ; preds = %str_ok57
  %idx.big68 = icmp sge i64 %var.load63, %s.read.len53
  br i1 %idx.big68, label %idx_oob67, label %idx_ok66

idx_ok66:                                         ; preds = %idx_oob67, %idx_big_check65
  %s.byte.gep69 = getelementptr i8, ptr %s.read.data62, i64 %var.load63
  %s.byte70 = load i8, ptr %s.byte.gep69, align 1
  %s.byte.val71 = zext i8 %s.byte70 to i64
  %cmptmp72 = icmp eq i64 %s.byte.val71, 10
  br label %and.479.exit

idx_oob67:                                        ; preds = %idx_big_check65, %str_ok57
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok66

choice.then73:                                    ; preds = %and.479.exit
  %var.load75 = load i64, ptr %"var.pos'", align 8
  %addtmp76 = add i64 %var.load75, 1
  store i64 %addtmp76, ptr %"var.pos'", align 8
  br label %choice.exit74

choice.exit74:                                    ; preds = %choice.then73, %and.479.exit
  %var.load77 = load i64, ptr %"var.st'", align 8
  %cmptmp78 = icmp eq i64 %var.load77, 0
  br i1 %cmptmp78, label %choice.then79, label %choice.else

choice.then79:                                    ; preds = %choice.exit74
  %var.load81 = load ptr, ptr %var.raw_slice, align 8
  %call.res = call ptr @"formatter::strip_cr_and_trailing_ws"(ptr %var.load81)
  br label %choice.exit80

choice.else:                                      ; preds = %choice.exit74
  %var.load82 = load ptr, ptr %var.raw_slice, align 8
  %call.res83 = call ptr @"formatter::strip_cr_only"(ptr %var.load82)
  br label %choice.exit80

choice.exit80:                                    ; preds = %choice.else, %choice.then79
  %choice.res = phi ptr [ %call.res, %choice.then79 ], [ %call.res83, %choice.else ]
  store ptr %choice.res, ptr %var.cleaned, align 8
  store i64 0, ptr %"var.sp'", align 8
  store i64 0, ptr %"var.tabs'", align 8
  store i64 0, ptr %"var.idx'", align 8
  store i64 0, ptr %loop.idx.480, align 8
  %cycle.prev.u84 = load i64, ptr %var._, align 8
  %cycle.prev.i85 = load i64, ptr %var._i, align 8
  br label %loop.header.480

loop.header.480:                                  ; preds = %loop.latch.480, %choice.exit80
  %counter.load86 = load i64, ptr %loop.idx.480, align 8
  br label %loop.body.480

loop.body.480:                                    ; preds = %loop.header.480
  %loop.rel.i87 = sub i64 %counter.load86, 0
  store i64 1, ptr %loop.step.480, align 8
  store i64 %loop.rel.i87, ptr %var._i88, align 8
  store i64 %counter.load86, ptr %var._89, align 8
  %var.load90 = load i64, ptr %"var.idx'", align 8
  %var.load91 = load ptr, ptr %var.cleaned, align 8
  %str.len.query92 = getelementptr inbounds { i64, ptr }, ptr %var.load91, i32 0, i32 0
  %str.len.query93 = load i64, ptr %str.len.query92, align 8
  %str.len.query94 = and i64 %str.len.query93, 281474976710655
  %str.tag95 = lshr i64 %str.len.query93, 48
  %str.immortal96 = icmp eq i64 %str.tag95, 0
  br i1 %str.immortal96, label %str_ok98, label %str_gen_check97

loop.exit.nat.480:                                ; No predecessors!
  br label %loop.exit.480

loop.latch.480:                                   ; preds = %choice.exit131
  %step.val145 = load i64, ptr %loop.step.480, align 8
  %loop.next146 = add i64 %counter.load86, %step.val145
  store i64 %loop.next146, ptr %loop.idx.480, align 8
  br label %loop.header.480

loop.exit.480:                                    ; preds = %choice.else139, %choice.then103, %loop.exit.nat.480
  store i64 %cycle.prev.u84, ptr %var._, align 8
  store i64 %cycle.prev.i85, ptr %var._i, align 8
  %var.load147 = load i64, ptr %"var.sp'", align 8
  %var.load148 = load i64, ptr %"var.tabs'", align 8
  %multmp = mul i64 %var.load148, 3
  %addtmp149 = add i64 %var.load147, %multmp
  store i64 %addtmp149, ptr %var.eff_indent, align 8
  %var.load150 = load i64, ptr %"var.st'", align 8
  %cmptmp151 = icmp eq i64 %var.load150, 0
  br i1 %cmptmp151, label %and.481.then, label %and.481.else

str_gen_check97:                                  ; preds = %loop.body.480
  %arena.cur100 = call ptr @dva_arena_current()
  %tag.valid101 = call i1 @dva_arena_validate_tag(ptr %arena.cur100, i64 %str.tag95)
  br i1 %tag.valid101, label %str_ok98, label %str_stale99

str_ok98:                                         ; preds = %str_stale99, %str_gen_check97, %loop.body.480
  %cmptmp102 = icmp sge i64 %var.load90, %str.len.query94
  br i1 %cmptmp102, label %choice.then103, label %choice.exit104

str_stale99:                                      ; preds = %str_gen_check97
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok98

choice.then103:                                   ; preds = %str_ok98
  br label %loop.exit.480

choice.exit104:                                   ; preds = %str_ok98
  %var.load105 = load ptr, ptr %var.cleaned, align 8
  %s.read.len106 = getelementptr inbounds { i64, ptr }, ptr %var.load105, i32 0, i32 0
  %s.read.len107 = load i64, ptr %s.read.len106, align 8
  %s.read.len108 = and i64 %s.read.len107, 281474976710655
  %str.tag109 = lshr i64 %s.read.len107, 48
  %str.immortal110 = icmp eq i64 %str.tag109, 0
  br i1 %str.immortal110, label %str_ok112, label %str_gen_check111

str_gen_check111:                                 ; preds = %choice.exit104
  %arena.cur114 = call ptr @dva_arena_current()
  %tag.valid115 = call i1 @dva_arena_validate_tag(ptr %arena.cur114, i64 %str.tag109)
  br i1 %tag.valid115, label %str_ok112, label %str_stale113

str_ok112:                                        ; preds = %str_stale113, %str_gen_check111, %choice.exit104
  %s.read.data116 = getelementptr inbounds { i64, ptr }, ptr %var.load105, i32 0, i32 1
  %s.read.data117 = load ptr, ptr %s.read.data116, align 8
  %var.load118 = load i64, ptr %"var.idx'", align 8
  %idx.neg119 = icmp slt i64 %var.load118, 0
  br i1 %idx.neg119, label %idx_oob122, label %idx_big_check120

str_stale113:                                     ; preds = %str_gen_check111
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok112

idx_big_check120:                                 ; preds = %str_ok112
  %idx.big123 = icmp sge i64 %var.load118, %s.read.len108
  br i1 %idx.big123, label %idx_oob122, label %idx_ok121

idx_ok121:                                        ; preds = %idx_oob122, %idx_big_check120
  %s.byte.gep124 = getelementptr i8, ptr %s.read.data117, i64 %var.load118
  %s.byte125 = load i8, ptr %s.byte.gep124, align 1
  %s.byte.val126 = zext i8 %s.byte125 to i64
  store i64 %s.byte.val126, ptr %var.c, align 8
  %var.load127 = load i64, ptr %var.c, align 8
  %cmptmp128 = icmp eq i64 %var.load127, 32
  br i1 %cmptmp128, label %choice.then129, label %choice.else130

idx_oob122:                                       ; preds = %idx_big_check120, %str_ok112
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok121

choice.then129:                                   ; preds = %idx_ok121
  %var.load132 = load i64, ptr %"var.sp'", align 8
  %addtmp133 = add i64 %var.load132, 1
  store i64 %addtmp133, ptr %"var.sp'", align 8
  %var.load134 = load i64, ptr %"var.idx'", align 8
  %addtmp135 = add i64 %var.load134, 1
  store i64 %addtmp135, ptr %"var.idx'", align 8
  br label %choice.exit131

choice.else130:                                   ; preds = %idx_ok121
  %var.load136 = load i64, ptr %var.c, align 8
  %cmptmp137 = icmp eq i64 %var.load136, 9
  br i1 %cmptmp137, label %choice.then138, label %choice.else139

choice.exit131:                                   ; preds = %choice.exit140, %choice.then129
  br label %loop.latch.480

choice.then138:                                   ; preds = %choice.else130
  %var.load141 = load i64, ptr %"var.tabs'", align 8
  %addtmp142 = add i64 %var.load141, 1
  store i64 %addtmp142, ptr %"var.tabs'", align 8
  %var.load143 = load i64, ptr %"var.idx'", align 8
  %addtmp144 = add i64 %var.load143, 1
  store i64 %addtmp144, ptr %"var.idx'", align 8
  br label %choice.exit140

choice.else139:                                   ; preds = %choice.else130
  br label %loop.exit.480

choice.exit140:                                   ; preds = %choice.then138
  br label %choice.exit131

and.481.then:                                     ; preds = %loop.exit.480
  %var.load152 = load i64, ptr %"var.idx'", align 8
  %var.load153 = load ptr, ptr %var.cleaned, align 8
  %str.len.query154 = getelementptr inbounds { i64, ptr }, ptr %var.load153, i32 0, i32 0
  %str.len.query155 = load i64, ptr %str.len.query154, align 8
  %str.len.query156 = and i64 %str.len.query155, 281474976710655
  %str.tag157 = lshr i64 %str.len.query155, 48
  %str.immortal158 = icmp eq i64 %str.tag157, 0
  br i1 %str.immortal158, label %str_ok160, label %str_gen_check159

and.481.else:                                     ; preds = %loop.exit.480
  br label %and.481.exit

and.481.exit:                                     ; preds = %and.481.else, %str_ok160
  %and.481.phi = phi i1 [ %cmptmp164, %str_ok160 ], [ %cmptmp151, %and.481.else ]
  store i1 %and.481.phi, ptr %var.is_blank, align 1
  %var.load165 = load i64, ptr %"var.st'", align 8
  %cmptmp166 = icmp eq i64 %var.load165, 0
  br i1 %cmptmp166, label %and.482.then, label %and.482.else

str_gen_check159:                                 ; preds = %and.481.then
  %arena.cur162 = call ptr @dva_arena_current()
  %tag.valid163 = call i1 @dva_arena_validate_tag(ptr %arena.cur162, i64 %str.tag157)
  br i1 %tag.valid163, label %str_ok160, label %str_stale161

str_ok160:                                        ; preds = %str_stale161, %str_gen_check159, %and.481.then
  %cmptmp164 = icmp eq i64 %var.load152, %str.len.query156
  br label %and.481.exit

str_stale161:                                     ; preds = %str_gen_check159
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok160

and.482.then:                                     ; preds = %and.481.exit
  %var.load167 = load i1, ptr %var.is_blank, align 1
  %nottmp = xor i1 %var.load167, true
  br label %and.482.exit

and.482.else:                                     ; preds = %and.481.exit
  br label %and.482.exit

and.482.exit:                                     ; preds = %and.482.else, %and.482.then
  %and.482.phi = phi i1 [ %nottmp, %and.482.then ], [ %cmptmp166, %and.482.else ]
  br i1 %and.482.phi, label %and.483.then, label %and.483.else

and.483.then:                                     ; preds = %and.482.exit
  %var.load168 = load i64, ptr %"var.idx'", align 8
  %addtmp169 = add i64 %var.load168, 1
  %var.load170 = load ptr, ptr %var.cleaned, align 8
  %str.len.query171 = getelementptr inbounds { i64, ptr }, ptr %var.load170, i32 0, i32 0
  %str.len.query172 = load i64, ptr %str.len.query171, align 8
  %str.len.query173 = and i64 %str.len.query172, 281474976710655
  %str.tag174 = lshr i64 %str.len.query172, 48
  %str.immortal175 = icmp eq i64 %str.tag174, 0
  br i1 %str.immortal175, label %str_ok177, label %str_gen_check176

and.483.else:                                     ; preds = %and.482.exit
  br label %and.483.exit

and.483.exit:                                     ; preds = %and.483.else, %str_ok177
  %and.483.phi = phi i1 [ %cmptmp181, %str_ok177 ], [ %and.482.phi, %and.483.else ]
  br i1 %and.483.phi, label %and.484.then, label %and.484.else

str_gen_check176:                                 ; preds = %and.483.then
  %arena.cur179 = call ptr @dva_arena_current()
  %tag.valid180 = call i1 @dva_arena_validate_tag(ptr %arena.cur179, i64 %str.tag174)
  br i1 %tag.valid180, label %str_ok177, label %str_stale178

str_ok177:                                        ; preds = %str_stale178, %str_gen_check176, %and.483.then
  %cmptmp181 = icmp slt i64 %addtmp169, %str.len.query173
  br label %and.483.exit

str_stale178:                                     ; preds = %str_gen_check176
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok177

and.484.then:                                     ; preds = %and.483.exit
  %var.load182 = load ptr, ptr %var.cleaned, align 8
  %s.read.len183 = getelementptr inbounds { i64, ptr }, ptr %var.load182, i32 0, i32 0
  %s.read.len184 = load i64, ptr %s.read.len183, align 8
  %s.read.len185 = and i64 %s.read.len184, 281474976710655
  %str.tag186 = lshr i64 %s.read.len184, 48
  %str.immortal187 = icmp eq i64 %str.tag186, 0
  br i1 %str.immortal187, label %str_ok189, label %str_gen_check188

and.484.else:                                     ; preds = %and.483.exit
  br label %and.484.exit

and.484.exit:                                     ; preds = %and.484.else, %idx_ok198
  %and.484.phi = phi i1 [ %cmptmp204, %idx_ok198 ], [ %and.483.phi, %and.484.else ]
  br i1 %and.484.phi, label %and.485.then, label %and.485.else

str_gen_check188:                                 ; preds = %and.484.then
  %arena.cur191 = call ptr @dva_arena_current()
  %tag.valid192 = call i1 @dva_arena_validate_tag(ptr %arena.cur191, i64 %str.tag186)
  br i1 %tag.valid192, label %str_ok189, label %str_stale190

str_ok189:                                        ; preds = %str_stale190, %str_gen_check188, %and.484.then
  %s.read.data193 = getelementptr inbounds { i64, ptr }, ptr %var.load182, i32 0, i32 1
  %s.read.data194 = load ptr, ptr %s.read.data193, align 8
  %var.load195 = load i64, ptr %"var.idx'", align 8
  %idx.neg196 = icmp slt i64 %var.load195, 0
  br i1 %idx.neg196, label %idx_oob199, label %idx_big_check197

str_stale190:                                     ; preds = %str_gen_check188
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok189

idx_big_check197:                                 ; preds = %str_ok189
  %idx.big200 = icmp sge i64 %var.load195, %s.read.len185
  br i1 %idx.big200, label %idx_oob199, label %idx_ok198

idx_ok198:                                        ; preds = %idx_oob199, %idx_big_check197
  %s.byte.gep201 = getelementptr i8, ptr %s.read.data194, i64 %var.load195
  %s.byte202 = load i8, ptr %s.byte.gep201, align 1
  %s.byte.val203 = zext i8 %s.byte202 to i64
  %cmptmp204 = icmp eq i64 %s.byte.val203, 47
  br label %and.484.exit

idx_oob199:                                       ; preds = %idx_big_check197, %str_ok189
  %13 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok198

and.485.then:                                     ; preds = %and.484.exit
  %var.load205 = load ptr, ptr %var.cleaned, align 8
  %s.read.len206 = getelementptr inbounds { i64, ptr }, ptr %var.load205, i32 0, i32 0
  %s.read.len207 = load i64, ptr %s.read.len206, align 8
  %s.read.len208 = and i64 %s.read.len207, 281474976710655
  %str.tag209 = lshr i64 %s.read.len207, 48
  %str.immortal210 = icmp eq i64 %str.tag209, 0
  br i1 %str.immortal210, label %str_ok212, label %str_gen_check211

and.485.else:                                     ; preds = %and.484.exit
  br label %and.485.exit

and.485.exit:                                     ; preds = %and.485.else, %or.486.exit
  %and.485.phi = phi i1 [ %or.486.phi, %or.486.exit ], [ %and.484.phi, %and.485.else ]
  store i1 %and.485.phi, ptr %var.is_comm, align 1
  %var.load253 = load ptr, ptr %var.cleaned, align 8
  %var.load254 = load i64, ptr %"var.st'", align 8
  %call.res255 = call i64 @"formatter::scan_line_state"(ptr %var.load253, i64 %var.load254)
  store i64 %call.res255, ptr %var.next_st, align 8
  %var.load256 = load ptr, ptr %var.cleaned, align 8
  %var.load257 = load i64, ptr %"var.st'", align 8
  %var.load258 = load i64, ptr %var.next_st, align 8
  %var.load259 = load i64, ptr %var.eff_indent, align 8
  %var.load260 = load i64, ptr %"var.tabs'", align 8
  %cmptmp261 = icmp sgt i64 %var.load260, 0
  %var.load262 = load i1, ptr %var.is_blank, align 1
  %var.load263 = load i1, ptr %var.is_comm, align 1
  %arena.cur264 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur264, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64, i64, i1, i1, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load256, ptr %rec.fld, align 8
  %rec.fld265 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load257, ptr %rec.fld265, align 8
  %rec.fld266 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load258, ptr %rec.fld266, align 8
  %rec.fld267 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load259, ptr %rec.fld267, align 8
  %rec.fld268 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 4
  store i1 %cmptmp261, ptr %rec.fld268, align 1
  %rec.fld269 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 5
  store i1 %var.load262, ptr %rec.fld269, align 1
  %rec.fld270 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 6
  store i1 %var.load263, ptr %rec.fld270, align 1
  %a.load = load ptr, ptr %var.res, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

str_gen_check211:                                 ; preds = %and.485.then
  %arena.cur214 = call ptr @dva_arena_current()
  %tag.valid215 = call i1 @dva_arena_validate_tag(ptr %arena.cur214, i64 %str.tag209)
  br i1 %tag.valid215, label %str_ok212, label %str_stale213

str_ok212:                                        ; preds = %str_stale213, %str_gen_check211, %and.485.then
  %s.read.data216 = getelementptr inbounds { i64, ptr }, ptr %var.load205, i32 0, i32 1
  %s.read.data217 = load ptr, ptr %s.read.data216, align 8
  %var.load218 = load i64, ptr %"var.idx'", align 8
  %addtmp219 = add i64 %var.load218, 1
  %idx.neg220 = icmp slt i64 %addtmp219, 0
  br i1 %idx.neg220, label %idx_oob223, label %idx_big_check221

str_stale213:                                     ; preds = %str_gen_check211
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok212

idx_big_check221:                                 ; preds = %str_ok212
  %idx.big224 = icmp sge i64 %addtmp219, %s.read.len208
  br i1 %idx.big224, label %idx_oob223, label %idx_ok222

idx_ok222:                                        ; preds = %idx_oob223, %idx_big_check221
  %s.byte.gep225 = getelementptr i8, ptr %s.read.data217, i64 %addtmp219
  %s.byte226 = load i8, ptr %s.byte.gep225, align 1
  %s.byte.val227 = zext i8 %s.byte226 to i64
  %cmptmp228 = icmp eq i64 %s.byte.val227, 47
  br i1 %cmptmp228, label %or.486.then, label %or.486.else

idx_oob223:                                       ; preds = %idx_big_check221, %str_ok212
  %15 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok222

or.486.then:                                      ; preds = %idx_ok222
  br label %or.486.exit

or.486.else:                                      ; preds = %idx_ok222
  %var.load229 = load ptr, ptr %var.cleaned, align 8
  %s.read.len230 = getelementptr inbounds { i64, ptr }, ptr %var.load229, i32 0, i32 0
  %s.read.len231 = load i64, ptr %s.read.len230, align 8
  %s.read.len232 = and i64 %s.read.len231, 281474976710655
  %str.tag233 = lshr i64 %s.read.len231, 48
  %str.immortal234 = icmp eq i64 %str.tag233, 0
  br i1 %str.immortal234, label %str_ok236, label %str_gen_check235

or.486.exit:                                      ; preds = %idx_ok246, %or.486.then
  %or.486.phi = phi i1 [ %cmptmp228, %or.486.then ], [ %cmptmp252, %idx_ok246 ]
  br label %and.485.exit

str_gen_check235:                                 ; preds = %or.486.else
  %arena.cur238 = call ptr @dva_arena_current()
  %tag.valid239 = call i1 @dva_arena_validate_tag(ptr %arena.cur238, i64 %str.tag233)
  br i1 %tag.valid239, label %str_ok236, label %str_stale237

str_ok236:                                        ; preds = %str_stale237, %str_gen_check235, %or.486.else
  %s.read.data240 = getelementptr inbounds { i64, ptr }, ptr %var.load229, i32 0, i32 1
  %s.read.data241 = load ptr, ptr %s.read.data240, align 8
  %var.load242 = load i64, ptr %"var.idx'", align 8
  %addtmp243 = add i64 %var.load242, 1
  %idx.neg244 = icmp slt i64 %addtmp243, 0
  br i1 %idx.neg244, label %idx_oob247, label %idx_big_check245

str_stale237:                                     ; preds = %str_gen_check235
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok236

idx_big_check245:                                 ; preds = %str_ok236
  %idx.big248 = icmp sge i64 %addtmp243, %s.read.len232
  br i1 %idx.big248, label %idx_oob247, label %idx_ok246

idx_ok246:                                        ; preds = %idx_oob247, %idx_big_check245
  %s.byte.gep249 = getelementptr i8, ptr %s.read.data241, i64 %addtmp243
  %s.byte250 = load i8, ptr %s.byte.gep249, align 1
  %s.byte.val251 = zext i8 %s.byte250 to i64
  %cmptmp252 = icmp eq i64 %s.byte.val251, 42
  br label %or.486.exit

idx_oob247:                                       ; preds = %idx_big_check245, %str_ok236
  %17 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok246

a.create:                                         ; preds = %and.485.exit
  %arena.cur271 = call ptr @dva_arena_current()
  %a.create272 = call ptr @dva_arena_alloc(ptr %arena.cur271, i64 24)
  %arena.cur273 = call ptr @dva_arena_current()
  %a.buf274 = call ptr @dva_arena_alloc(ptr %arena.cur273, i64 128)
  %a.len.gep275 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create272, i32 0, i32 0
  store i64 0, ptr %a.len.gep275, align 8
  %a.data.gep276 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create272, i32 0, i32 1
  store ptr %a.buf274, ptr %a.data.gep276, align 8
  %a.cap.gep277 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create272, i32 0, i32 2
  store i64 16, ptr %a.cap.gep277, align 8
  store ptr %a.create272, ptr %var.res, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %and.485.exit
  %a.load2 = load ptr, ptr %var.res, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len278 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap279 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len278, %a.cap279
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data280 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len281 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data280, i64 %a.cur.len281
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len281, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load282 = load i64, ptr %var.next_st, align 8
  store i64 %var.load282, ptr %"var.st'", align 8
  br label %loop.latch.476

a.create288:                                      ; preds = %loop.exit.476
  %arena.cur290 = call ptr @dva_arena_current()
  %a.create291 = call ptr @dva_arena_alloc(ptr %arena.cur290, i64 24)
  %arena.cur292 = call ptr @dva_arena_current()
  %a.buf293 = call ptr @dva_arena_alloc(ptr %arena.cur292, i64 128)
  %a.len.gep294 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create291, i32 0, i32 0
  store i64 0, ptr %a.len.gep294, align 8
  %a.data.gep295 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create291, i32 0, i32 1
  store ptr %a.buf293, ptr %a.data.gep295, align 8
  %a.cap.gep296 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create291, i32 0, i32 2
  store i64 16, ptr %a.cap.gep296, align 8
  store ptr %a.create291, ptr %var.res, align 8
  br label %a.after289

a.after289:                                       ; preds = %a.create288, %loop.exit.476
  %a.load2297 = load ptr, ptr %var.res, align 8
  ret ptr %a.load2297
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

define ptr @"formatter::format_code_body"(ptr %0) #1 {
entry:
  %var.is_annot_colon = alloca i1, align 1
  %var.prev_c = alloca i64, align 8
  %var.need_sp = alloca i1, align 1
  %var.c2 = alloca i64, align 8
  %var.c1 = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.487 = alloca i64, align 8
  %loop.idx.487 = alloca i64, align 8
  %"var.in_blk_comm'" = alloca i1, align 1
  %"var.in_rune'" = alloca i1, align 1
  %"var.str_triple'" = alloca i1, align 1
  %"var.in_str'" = alloca i1, align 1
  %"var.i'" = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.n = alloca i64, align 8
  %var.body = alloca ptr, align 8
  store ptr %0, ptr %var.body, align 8
  %var.load = load ptr, ptr %var.body, align 8
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
  %addtmp = add i64 %var.load3, 16
  %arena.cur4 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 24)
  %cap.neg = icmp slt i64 %addtmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len5

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

b.buf.len5:                                       ; preds = %str_overflow_abort, %str_ok
  %arena.cur6 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  store i64 0, ptr %"var.i'", align 8
  store i1 false, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  store i1 false, ptr %"var.in_rune'", align 1
  store i1 false, ptr %"var.in_blk_comm'", align 1
  store i64 0, ptr %loop.idx.487, align 8
  br label %loop.header.487

str_overflow_abort:                               ; preds = %str_ok
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len5

loop.header.487:                                  ; preds = %loop.latch.487, %b.buf.len5
  %counter.load = load i64, ptr %loop.idx.487, align 8
  br label %loop.body.487

loop.body.487:                                    ; preds = %loop.header.487
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.487, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load7 = load i64, ptr %"var.i'", align 8
  %var.load8 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load7, %var.load8
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.487:                                ; No predecessors!
  br label %loop.exit.487

loop.latch.487:                                   ; preds = %choice.exit84
  %step.val = load i64, ptr %loop.step.487, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.487, align 8
  br label %loop.header.487

loop.exit.487:                                    ; preds = %choice.then, %loop.exit.nat.487
  %var.load967 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load967, i32 0, i32 0
  %b.freeze.len968 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load967, i32 0, i32 1
  %b.freeze.data969 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.then:                                      ; preds = %loop.body.487
  br label %loop.exit.487

choice.exit:                                      ; preds = %loop.body.487
  %var.load9 = load ptr, ptr %var.body, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %str.tag12 = lshr i64 %s.read.len10, 48
  %str.immortal13 = icmp eq i64 %str.tag12, 0
  br i1 %str.immortal13, label %str_ok15, label %str_gen_check14

str_gen_check14:                                  ; preds = %choice.exit
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %str.tag12)
  br i1 %tag.valid18, label %str_ok15, label %str_stale16

str_ok15:                                         ; preds = %str_stale16, %str_gen_check14, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.read.data19 = load ptr, ptr %s.read.data, align 8
  %var.load20 = load i64, ptr %"var.i'", align 8
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
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load21 = load i64, ptr %"var.i'", align 8
  %addtmp22 = add i64 %var.load21, 1
  %var.load23 = load i64, ptr %var.n, align 8
  %cmptmp24 = icmp slt i64 %addtmp22, %var.load23
  br i1 %cmptmp24, label %choice.then25, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %str_ok15
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then25:                                    ; preds = %idx_ok
  %var.load27 = load ptr, ptr %var.body, align 8
  %s.read.len28 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %s.read.len29 = load i64, ptr %s.read.len28, align 8
  %s.read.len30 = and i64 %s.read.len29, 281474976710655
  %str.tag31 = lshr i64 %s.read.len29, 48
  %str.immortal32 = icmp eq i64 %str.tag31, 0
  br i1 %str.immortal32, label %str_ok34, label %str_gen_check33

choice.else:                                      ; preds = %idx_ok
  br label %choice.exit26

choice.exit26:                                    ; preds = %choice.else, %idx_ok44
  %choice.res = phi i64 [ %s.byte.val49, %idx_ok44 ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.c1, align 8
  %var.load50 = load i64, ptr %"var.i'", align 8
  %addtmp51 = add i64 %var.load50, 2
  %var.load52 = load i64, ptr %var.n, align 8
  %cmptmp53 = icmp slt i64 %addtmp51, %var.load52
  br i1 %cmptmp53, label %choice.then54, label %choice.else55

str_gen_check33:                                  ; preds = %choice.then25
  %arena.cur36 = call ptr @dva_arena_current()
  %tag.valid37 = call i1 @dva_arena_validate_tag(ptr %arena.cur36, i64 %str.tag31)
  br i1 %tag.valid37, label %str_ok34, label %str_stale35

str_ok34:                                         ; preds = %str_stale35, %str_gen_check33, %choice.then25
  %s.read.data38 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %s.read.data39 = load ptr, ptr %s.read.data38, align 8
  %var.load40 = load i64, ptr %"var.i'", align 8
  %addtmp41 = add i64 %var.load40, 1
  %idx.neg42 = icmp slt i64 %addtmp41, 0
  br i1 %idx.neg42, label %idx_oob45, label %idx_big_check43

str_stale35:                                      ; preds = %str_gen_check33
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok34

idx_big_check43:                                  ; preds = %str_ok34
  %idx.big46 = icmp sge i64 %addtmp41, %s.read.len30
  br i1 %idx.big46, label %idx_oob45, label %idx_ok44

idx_ok44:                                         ; preds = %idx_oob45, %idx_big_check43
  %s.byte.gep47 = getelementptr i8, ptr %s.read.data39, i64 %addtmp41
  %s.byte48 = load i8, ptr %s.byte.gep47, align 1
  %s.byte.val49 = zext i8 %s.byte48 to i64
  br label %choice.exit26

idx_oob45:                                        ; preds = %idx_big_check43, %str_ok34
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok44

choice.then54:                                    ; preds = %choice.exit26
  %var.load57 = load ptr, ptr %var.body, align 8
  %s.read.len58 = getelementptr inbounds { i64, ptr }, ptr %var.load57, i32 0, i32 0
  %s.read.len59 = load i64, ptr %s.read.len58, align 8
  %s.read.len60 = and i64 %s.read.len59, 281474976710655
  %str.tag61 = lshr i64 %s.read.len59, 48
  %str.immortal62 = icmp eq i64 %str.tag61, 0
  br i1 %str.immortal62, label %str_ok64, label %str_gen_check63

choice.else55:                                    ; preds = %choice.exit26
  br label %choice.exit56

choice.exit56:                                    ; preds = %choice.else55, %idx_ok74
  %choice.res80 = phi i64 [ %s.byte.val79, %idx_ok74 ], [ 0, %choice.else55 ]
  store i64 %choice.res80, ptr %var.c2, align 8
  %var.load81 = load i1, ptr %"var.in_blk_comm'", align 1
  br i1 %var.load81, label %choice.then82, label %choice.else83

str_gen_check63:                                  ; preds = %choice.then54
  %arena.cur66 = call ptr @dva_arena_current()
  %tag.valid67 = call i1 @dva_arena_validate_tag(ptr %arena.cur66, i64 %str.tag61)
  br i1 %tag.valid67, label %str_ok64, label %str_stale65

str_ok64:                                         ; preds = %str_stale65, %str_gen_check63, %choice.then54
  %s.read.data68 = getelementptr inbounds { i64, ptr }, ptr %var.load57, i32 0, i32 1
  %s.read.data69 = load ptr, ptr %s.read.data68, align 8
  %var.load70 = load i64, ptr %"var.i'", align 8
  %addtmp71 = add i64 %var.load70, 2
  %idx.neg72 = icmp slt i64 %addtmp71, 0
  br i1 %idx.neg72, label %idx_oob75, label %idx_big_check73

str_stale65:                                      ; preds = %str_gen_check63
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok64

idx_big_check73:                                  ; preds = %str_ok64
  %idx.big76 = icmp sge i64 %addtmp71, %s.read.len60
  br i1 %idx.big76, label %idx_oob75, label %idx_ok74

idx_ok74:                                         ; preds = %idx_oob75, %idx_big_check73
  %s.byte.gep77 = getelementptr i8, ptr %s.read.data69, i64 %addtmp71
  %s.byte78 = load i8, ptr %s.byte.gep77, align 1
  %s.byte.val79 = zext i8 %s.byte78 to i64
  br label %choice.exit56

idx_oob75:                                        ; preds = %idx_big_check73, %str_ok64
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok74

choice.then82:                                    ; preds = %choice.exit56
  %b.load = load ptr, ptr %var.b, align 8
  %var.load85 = load i64, ptr %var.c, align 8
  %b.b.ge0 = icmp sge i64 %var.load85, 0
  %b.b.le255 = icmp sle i64 %var.load85, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.else83:                                    ; preds = %choice.exit56
  %var.load147 = load i1, ptr %"var.in_rune'", align 1
  br i1 %var.load147, label %choice.then148, label %choice.else149

choice.exit84:                                    ; preds = %choice.exit150, %choice.exit103
  br label %loop.latch.487

b.byte_ok:                                        ; preds = %b.byte_err, %choice.then82
  %b.byte.i8 = trunc i64 %var.load85 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len86 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap87 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data88 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len86, %b.cap87
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.then82
  %9 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap87, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum89 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf90 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf90, label %str_overflow_abort92, label %b.new.buf.len91

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len91
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data94 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len95 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data94, i64 %b.cur.len95
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len95, 1
  %b.nul = getelementptr i8, ptr %b.cur.data94, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep96 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep96, align 8
  %var.load97 = load i64, ptr %var.c, align 8
  %cmptmp98 = icmp eq i64 %var.load97, 42
  br i1 %cmptmp98, label %and.488.then, label %and.488.else

b.new.buf.len91:                                  ; preds = %str_overflow_abort92, %b.grow
  %arena.cur93 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 %sum89)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data88, i64 %b.len86, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len86
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort92:                             ; preds = %b.grow
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len91

and.488.then:                                     ; preds = %b.push_done
  %var.load99 = load i64, ptr %var.c1, align 8
  %cmptmp100 = icmp eq i64 %var.load99, 47
  br label %and.488.exit

and.488.else:                                     ; preds = %b.push_done
  br label %and.488.exit

and.488.exit:                                     ; preds = %and.488.else, %and.488.then
  %and.488.phi = phi i1 [ %cmptmp100, %and.488.then ], [ %cmptmp98, %and.488.else ]
  br i1 %and.488.phi, label %choice.then101, label %choice.else102

choice.then101:                                   ; preds = %and.488.exit
  %b.load104 = load ptr, ptr %var.b, align 8
  %var.load105 = load i64, ptr %var.c1, align 8
  %b.b.ge0106 = icmp sge i64 %var.load105, 0
  %b.b.le255107 = icmp sle i64 %var.load105, 255
  %b.byte.range108 = and i1 %b.b.ge0106, %b.b.le255107
  br i1 %b.byte.range108, label %b.byte_ok109, label %b.byte_err110

choice.else102:                                   ; preds = %and.488.exit
  %var.load145 = load i64, ptr %"var.i'", align 8
  %addtmp146 = add i64 %var.load145, 1
  store i64 %addtmp146, ptr %"var.i'", align 8
  br label %choice.exit103

choice.exit103:                                   ; preds = %choice.else102, %b.push_done121
  br label %choice.exit84

b.byte_ok109:                                     ; preds = %b.byte_err110, %choice.then101
  %b.byte.i8111 = trunc i64 %var.load105 to i8
  %b.len112 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load104, i32 0, i32 0
  %b.len113 = load i64, ptr %b.len112, align 8
  %b.cap114 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load104, i32 0, i32 2
  %b.cap115 = load i64, ptr %b.cap114, align 8
  %b.data116 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load104, i32 0, i32 1
  %b.data117 = load ptr, ptr %b.data116, align 8
  %b.needs.grow118 = icmp eq i64 %b.len113, %b.cap115
  br i1 %b.needs.grow118, label %b.grow119, label %b.nogrow120

b.byte_err110:                                    ; preds = %choice.then101
  %11 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok109

b.grow119:                                        ; preds = %b.byte_ok109
  %b.cap2122 = mul i64 %b.cap115, 2
  %b.cap.small123 = icmp slt i64 %b.cap2122, 16
  %b.new.cap124 = select i1 %b.cap.small123, i64 16, i64 %b.cap2122
  %b.new.buf.len125 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap124, i64 1)
  %sum126 = extractvalue { i64, i1 } %b.new.buf.len125, 0
  %ovf127 = extractvalue { i64, i1 } %b.new.buf.len125, 1
  br i1 %ovf127, label %str_overflow_abort129, label %b.new.buf.len128

b.nogrow120:                                      ; preds = %b.byte_ok109
  br label %b.push_done121

b.push_done121:                                   ; preds = %b.nogrow120, %b.new.buf.len128
  %b.cur.data135 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load104, i32 0, i32 1
  %b.cur.data136 = load ptr, ptr %b.cur.data135, align 8
  %b.cur.len137 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load104, i32 0, i32 0
  %b.cur.len138 = load i64, ptr %b.cur.len137, align 8
  %b.byte.gep139 = getelementptr i8, ptr %b.cur.data136, i64 %b.cur.len138
  store i8 %b.byte.i8111, ptr %b.byte.gep139, align 1
  %b.next.len140 = add i64 %b.cur.len138, 1
  %b.nul141 = getelementptr i8, ptr %b.cur.data136, i64 %b.next.len140
  store i8 0, ptr %b.nul141, align 1
  %b.len.gep142 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load104, i32 0, i32 0
  store i64 %b.next.len140, ptr %b.len.gep142, align 8
  store i1 false, ptr %"var.in_blk_comm'", align 1
  %var.load143 = load i64, ptr %"var.i'", align 8
  %addtmp144 = add i64 %var.load143, 2
  store i64 %addtmp144, ptr %"var.i'", align 8
  br label %choice.exit103

b.new.buf.len128:                                 ; preds = %str_overflow_abort129, %b.grow119
  %arena.cur130 = call ptr @dva_arena_current()
  %b.new.buf131 = call ptr @dva_arena_alloc(ptr %arena.cur130, i64 %sum126)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf131, ptr align 1 %b.data117, i64 %b.len113, i1 false)
  %b.grow.nul132 = getelementptr i8, ptr %b.new.buf131, i64 %b.len113
  store i8 0, ptr %b.grow.nul132, align 1
  %b.new.data.gep133 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load104, i32 0, i32 1
  store ptr %b.new.buf131, ptr %b.new.data.gep133, align 8
  %b.new.cap.gep134 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load104, i32 0, i32 2
  store i64 %b.new.cap124, ptr %b.new.cap.gep134, align 8
  br label %b.push_done121

str_overflow_abort129:                            ; preds = %b.grow119
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len128

choice.then148:                                   ; preds = %choice.else83
  %b.load151 = load ptr, ptr %var.b, align 8
  %var.load152 = load i64, ptr %var.c, align 8
  %b.b.ge0153 = icmp sge i64 %var.load152, 0
  %b.b.le255154 = icmp sle i64 %var.load152, 255
  %b.byte.range155 = and i1 %b.b.ge0153, %b.b.le255154
  br i1 %b.byte.range155, label %b.byte_ok156, label %b.byte_err157

choice.else149:                                   ; preds = %choice.else83
  %var.load246 = load i1, ptr %"var.in_str'", align 1
  br i1 %var.load246, label %choice.then247, label %choice.else248

choice.exit150:                                   ; preds = %choice.exit249, %choice.exit198
  br label %choice.exit84

b.byte_ok156:                                     ; preds = %b.byte_err157, %choice.then148
  %b.byte.i8158 = trunc i64 %var.load152 to i8
  %b.len159 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 0
  %b.len160 = load i64, ptr %b.len159, align 8
  %b.cap161 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 2
  %b.cap162 = load i64, ptr %b.cap161, align 8
  %b.data163 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 1
  %b.data164 = load ptr, ptr %b.data163, align 8
  %b.needs.grow165 = icmp eq i64 %b.len160, %b.cap162
  br i1 %b.needs.grow165, label %b.grow166, label %b.nogrow167

b.byte_err157:                                    ; preds = %choice.then148
  %13 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok156

b.grow166:                                        ; preds = %b.byte_ok156
  %b.cap2169 = mul i64 %b.cap162, 2
  %b.cap.small170 = icmp slt i64 %b.cap2169, 16
  %b.new.cap171 = select i1 %b.cap.small170, i64 16, i64 %b.cap2169
  %b.new.buf.len172 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap171, i64 1)
  %sum173 = extractvalue { i64, i1 } %b.new.buf.len172, 0
  %ovf174 = extractvalue { i64, i1 } %b.new.buf.len172, 1
  br i1 %ovf174, label %str_overflow_abort176, label %b.new.buf.len175

b.nogrow167:                                      ; preds = %b.byte_ok156
  br label %b.push_done168

b.push_done168:                                   ; preds = %b.nogrow167, %b.new.buf.len175
  %b.cur.data182 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 1
  %b.cur.data183 = load ptr, ptr %b.cur.data182, align 8
  %b.cur.len184 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 0
  %b.cur.len185 = load i64, ptr %b.cur.len184, align 8
  %b.byte.gep186 = getelementptr i8, ptr %b.cur.data183, i64 %b.cur.len185
  store i8 %b.byte.i8158, ptr %b.byte.gep186, align 1
  %b.next.len187 = add i64 %b.cur.len185, 1
  %b.nul188 = getelementptr i8, ptr %b.cur.data183, i64 %b.next.len187
  store i8 0, ptr %b.nul188, align 1
  %b.len.gep189 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 0
  store i64 %b.next.len187, ptr %b.len.gep189, align 8
  %var.load190 = load i64, ptr %var.c, align 8
  %cmptmp191 = icmp eq i64 %var.load190, 92
  br i1 %cmptmp191, label %and.489.then, label %and.489.else

b.new.buf.len175:                                 ; preds = %str_overflow_abort176, %b.grow166
  %arena.cur177 = call ptr @dva_arena_current()
  %b.new.buf178 = call ptr @dva_arena_alloc(ptr %arena.cur177, i64 %sum173)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf178, ptr align 1 %b.data164, i64 %b.len160, i1 false)
  %b.grow.nul179 = getelementptr i8, ptr %b.new.buf178, i64 %b.len160
  store i8 0, ptr %b.grow.nul179, align 1
  %b.new.data.gep180 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 1
  store ptr %b.new.buf178, ptr %b.new.data.gep180, align 8
  %b.new.cap.gep181 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 2
  store i64 %b.new.cap171, ptr %b.new.cap.gep181, align 8
  br label %b.push_done168

str_overflow_abort176:                            ; preds = %b.grow166
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len175

and.489.then:                                     ; preds = %b.push_done168
  %var.load192 = load i64, ptr %"var.i'", align 8
  %addtmp193 = add i64 %var.load192, 1
  %var.load194 = load i64, ptr %var.n, align 8
  %cmptmp195 = icmp slt i64 %addtmp193, %var.load194
  br label %and.489.exit

and.489.else:                                     ; preds = %b.push_done168
  br label %and.489.exit

and.489.exit:                                     ; preds = %and.489.else, %and.489.then
  %and.489.phi = phi i1 [ %cmptmp195, %and.489.then ], [ %cmptmp191, %and.489.else ]
  br i1 %and.489.phi, label %choice.then196, label %choice.else197

choice.then196:                                   ; preds = %and.489.exit
  %b.load199 = load ptr, ptr %var.b, align 8
  %var.load200 = load i64, ptr %var.c1, align 8
  %b.b.ge0201 = icmp sge i64 %var.load200, 0
  %b.b.le255202 = icmp sle i64 %var.load200, 255
  %b.byte.range203 = and i1 %b.b.ge0201, %b.b.le255202
  br i1 %b.byte.range203, label %b.byte_ok204, label %b.byte_err205

choice.else197:                                   ; preds = %and.489.exit
  %var.load240 = load i64, ptr %var.c, align 8
  %cmptmp241 = icmp eq i64 %var.load240, 39
  br i1 %cmptmp241, label %choice.then242, label %choice.exit243

choice.exit198:                                   ; preds = %choice.exit243, %b.push_done216
  br label %choice.exit150

b.byte_ok204:                                     ; preds = %b.byte_err205, %choice.then196
  %b.byte.i8206 = trunc i64 %var.load200 to i8
  %b.len207 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 0
  %b.len208 = load i64, ptr %b.len207, align 8
  %b.cap209 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 2
  %b.cap210 = load i64, ptr %b.cap209, align 8
  %b.data211 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 1
  %b.data212 = load ptr, ptr %b.data211, align 8
  %b.needs.grow213 = icmp eq i64 %b.len208, %b.cap210
  br i1 %b.needs.grow213, label %b.grow214, label %b.nogrow215

b.byte_err205:                                    ; preds = %choice.then196
  %15 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok204

b.grow214:                                        ; preds = %b.byte_ok204
  %b.cap2217 = mul i64 %b.cap210, 2
  %b.cap.small218 = icmp slt i64 %b.cap2217, 16
  %b.new.cap219 = select i1 %b.cap.small218, i64 16, i64 %b.cap2217
  %b.new.buf.len220 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap219, i64 1)
  %sum221 = extractvalue { i64, i1 } %b.new.buf.len220, 0
  %ovf222 = extractvalue { i64, i1 } %b.new.buf.len220, 1
  br i1 %ovf222, label %str_overflow_abort224, label %b.new.buf.len223

b.nogrow215:                                      ; preds = %b.byte_ok204
  br label %b.push_done216

b.push_done216:                                   ; preds = %b.nogrow215, %b.new.buf.len223
  %b.cur.data230 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 1
  %b.cur.data231 = load ptr, ptr %b.cur.data230, align 8
  %b.cur.len232 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 0
  %b.cur.len233 = load i64, ptr %b.cur.len232, align 8
  %b.byte.gep234 = getelementptr i8, ptr %b.cur.data231, i64 %b.cur.len233
  store i8 %b.byte.i8206, ptr %b.byte.gep234, align 1
  %b.next.len235 = add i64 %b.cur.len233, 1
  %b.nul236 = getelementptr i8, ptr %b.cur.data231, i64 %b.next.len235
  store i8 0, ptr %b.nul236, align 1
  %b.len.gep237 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 0
  store i64 %b.next.len235, ptr %b.len.gep237, align 8
  %var.load238 = load i64, ptr %"var.i'", align 8
  %addtmp239 = add i64 %var.load238, 2
  store i64 %addtmp239, ptr %"var.i'", align 8
  br label %choice.exit198

b.new.buf.len223:                                 ; preds = %str_overflow_abort224, %b.grow214
  %arena.cur225 = call ptr @dva_arena_current()
  %b.new.buf226 = call ptr @dva_arena_alloc(ptr %arena.cur225, i64 %sum221)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf226, ptr align 1 %b.data212, i64 %b.len208, i1 false)
  %b.grow.nul227 = getelementptr i8, ptr %b.new.buf226, i64 %b.len208
  store i8 0, ptr %b.grow.nul227, align 1
  %b.new.data.gep228 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 1
  store ptr %b.new.buf226, ptr %b.new.data.gep228, align 8
  %b.new.cap.gep229 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 2
  store i64 %b.new.cap219, ptr %b.new.cap.gep229, align 8
  br label %b.push_done216

str_overflow_abort224:                            ; preds = %b.grow214
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len223

choice.then242:                                   ; preds = %choice.else197
  store i1 false, ptr %"var.in_rune'", align 1
  br label %choice.exit243

choice.exit243:                                   ; preds = %choice.then242, %choice.else197
  %var.load244 = load i64, ptr %"var.i'", align 8
  %addtmp245 = add i64 %var.load244, 1
  store i64 %addtmp245, ptr %"var.i'", align 8
  br label %choice.exit198

choice.then247:                                   ; preds = %choice.else149
  %b.load250 = load ptr, ptr %var.b, align 8
  %var.load251 = load i64, ptr %var.c, align 8
  %b.b.ge0252 = icmp sge i64 %var.load251, 0
  %b.b.le255253 = icmp sle i64 %var.load251, 255
  %b.byte.range254 = and i1 %b.b.ge0252, %b.b.le255253
  br i1 %b.byte.range254, label %b.byte_ok255, label %b.byte_err256

choice.else248:                                   ; preds = %choice.else149
  %var.load440 = load i64, ptr %var.c, align 8
  %cmptmp441 = icmp eq i64 %var.load440, 47
  br i1 %cmptmp441, label %and.493.then, label %and.493.else

choice.exit249:                                   ; preds = %choice.exit446, %choice.exit297
  br label %choice.exit150

b.byte_ok255:                                     ; preds = %b.byte_err256, %choice.then247
  %b.byte.i8257 = trunc i64 %var.load251 to i8
  %b.len258 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load250, i32 0, i32 0
  %b.len259 = load i64, ptr %b.len258, align 8
  %b.cap260 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load250, i32 0, i32 2
  %b.cap261 = load i64, ptr %b.cap260, align 8
  %b.data262 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load250, i32 0, i32 1
  %b.data263 = load ptr, ptr %b.data262, align 8
  %b.needs.grow264 = icmp eq i64 %b.len259, %b.cap261
  br i1 %b.needs.grow264, label %b.grow265, label %b.nogrow266

b.byte_err256:                                    ; preds = %choice.then247
  %17 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok255

b.grow265:                                        ; preds = %b.byte_ok255
  %b.cap2268 = mul i64 %b.cap261, 2
  %b.cap.small269 = icmp slt i64 %b.cap2268, 16
  %b.new.cap270 = select i1 %b.cap.small269, i64 16, i64 %b.cap2268
  %b.new.buf.len271 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap270, i64 1)
  %sum272 = extractvalue { i64, i1 } %b.new.buf.len271, 0
  %ovf273 = extractvalue { i64, i1 } %b.new.buf.len271, 1
  br i1 %ovf273, label %str_overflow_abort275, label %b.new.buf.len274

b.nogrow266:                                      ; preds = %b.byte_ok255
  br label %b.push_done267

b.push_done267:                                   ; preds = %b.nogrow266, %b.new.buf.len274
  %b.cur.data281 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load250, i32 0, i32 1
  %b.cur.data282 = load ptr, ptr %b.cur.data281, align 8
  %b.cur.len283 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load250, i32 0, i32 0
  %b.cur.len284 = load i64, ptr %b.cur.len283, align 8
  %b.byte.gep285 = getelementptr i8, ptr %b.cur.data282, i64 %b.cur.len284
  store i8 %b.byte.i8257, ptr %b.byte.gep285, align 1
  %b.next.len286 = add i64 %b.cur.len284, 1
  %b.nul287 = getelementptr i8, ptr %b.cur.data282, i64 %b.next.len286
  store i8 0, ptr %b.nul287, align 1
  %b.len.gep288 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load250, i32 0, i32 0
  store i64 %b.next.len286, ptr %b.len.gep288, align 8
  %var.load289 = load i64, ptr %var.c, align 8
  %cmptmp290 = icmp eq i64 %var.load289, 92
  br i1 %cmptmp290, label %and.490.then, label %and.490.else

b.new.buf.len274:                                 ; preds = %str_overflow_abort275, %b.grow265
  %arena.cur276 = call ptr @dva_arena_current()
  %b.new.buf277 = call ptr @dva_arena_alloc(ptr %arena.cur276, i64 %sum272)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf277, ptr align 1 %b.data263, i64 %b.len259, i1 false)
  %b.grow.nul278 = getelementptr i8, ptr %b.new.buf277, i64 %b.len259
  store i8 0, ptr %b.grow.nul278, align 1
  %b.new.data.gep279 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load250, i32 0, i32 1
  store ptr %b.new.buf277, ptr %b.new.data.gep279, align 8
  %b.new.cap.gep280 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load250, i32 0, i32 2
  store i64 %b.new.cap270, ptr %b.new.cap.gep280, align 8
  br label %b.push_done267

str_overflow_abort275:                            ; preds = %b.grow265
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len274

and.490.then:                                     ; preds = %b.push_done267
  %var.load291 = load i64, ptr %"var.i'", align 8
  %addtmp292 = add i64 %var.load291, 1
  %var.load293 = load i64, ptr %var.n, align 8
  %cmptmp294 = icmp slt i64 %addtmp292, %var.load293
  br label %and.490.exit

and.490.else:                                     ; preds = %b.push_done267
  br label %and.490.exit

and.490.exit:                                     ; preds = %and.490.else, %and.490.then
  %and.490.phi = phi i1 [ %cmptmp294, %and.490.then ], [ %cmptmp290, %and.490.else ]
  br i1 %and.490.phi, label %choice.then295, label %choice.else296

choice.then295:                                   ; preds = %and.490.exit
  %b.load298 = load ptr, ptr %var.b, align 8
  %var.load299 = load i64, ptr %var.c1, align 8
  %b.b.ge0300 = icmp sge i64 %var.load299, 0
  %b.b.le255301 = icmp sle i64 %var.load299, 255
  %b.byte.range302 = and i1 %b.b.ge0300, %b.b.le255301
  br i1 %b.byte.range302, label %b.byte_ok303, label %b.byte_err304

choice.else296:                                   ; preds = %and.490.exit
  %var.load339 = load i1, ptr %"var.str_triple'", align 1
  br i1 %var.load339, label %choice.then340, label %choice.else341

choice.exit297:                                   ; preds = %choice.exit342, %b.push_done315
  br label %choice.exit249

b.byte_ok303:                                     ; preds = %b.byte_err304, %choice.then295
  %b.byte.i8305 = trunc i64 %var.load299 to i8
  %b.len306 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load298, i32 0, i32 0
  %b.len307 = load i64, ptr %b.len306, align 8
  %b.cap308 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load298, i32 0, i32 2
  %b.cap309 = load i64, ptr %b.cap308, align 8
  %b.data310 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load298, i32 0, i32 1
  %b.data311 = load ptr, ptr %b.data310, align 8
  %b.needs.grow312 = icmp eq i64 %b.len307, %b.cap309
  br i1 %b.needs.grow312, label %b.grow313, label %b.nogrow314

b.byte_err304:                                    ; preds = %choice.then295
  %19 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok303

b.grow313:                                        ; preds = %b.byte_ok303
  %b.cap2316 = mul i64 %b.cap309, 2
  %b.cap.small317 = icmp slt i64 %b.cap2316, 16
  %b.new.cap318 = select i1 %b.cap.small317, i64 16, i64 %b.cap2316
  %b.new.buf.len319 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap318, i64 1)
  %sum320 = extractvalue { i64, i1 } %b.new.buf.len319, 0
  %ovf321 = extractvalue { i64, i1 } %b.new.buf.len319, 1
  br i1 %ovf321, label %str_overflow_abort323, label %b.new.buf.len322

b.nogrow314:                                      ; preds = %b.byte_ok303
  br label %b.push_done315

b.push_done315:                                   ; preds = %b.nogrow314, %b.new.buf.len322
  %b.cur.data329 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load298, i32 0, i32 1
  %b.cur.data330 = load ptr, ptr %b.cur.data329, align 8
  %b.cur.len331 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load298, i32 0, i32 0
  %b.cur.len332 = load i64, ptr %b.cur.len331, align 8
  %b.byte.gep333 = getelementptr i8, ptr %b.cur.data330, i64 %b.cur.len332
  store i8 %b.byte.i8305, ptr %b.byte.gep333, align 1
  %b.next.len334 = add i64 %b.cur.len332, 1
  %b.nul335 = getelementptr i8, ptr %b.cur.data330, i64 %b.next.len334
  store i8 0, ptr %b.nul335, align 1
  %b.len.gep336 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load298, i32 0, i32 0
  store i64 %b.next.len334, ptr %b.len.gep336, align 8
  %var.load337 = load i64, ptr %"var.i'", align 8
  %addtmp338 = add i64 %var.load337, 2
  store i64 %addtmp338, ptr %"var.i'", align 8
  br label %choice.exit297

b.new.buf.len322:                                 ; preds = %str_overflow_abort323, %b.grow313
  %arena.cur324 = call ptr @dva_arena_current()
  %b.new.buf325 = call ptr @dva_arena_alloc(ptr %arena.cur324, i64 %sum320)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf325, ptr align 1 %b.data311, i64 %b.len307, i1 false)
  %b.grow.nul326 = getelementptr i8, ptr %b.new.buf325, i64 %b.len307
  store i8 0, ptr %b.grow.nul326, align 1
  %b.new.data.gep327 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load298, i32 0, i32 1
  store ptr %b.new.buf325, ptr %b.new.data.gep327, align 8
  %b.new.cap.gep328 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load298, i32 0, i32 2
  store i64 %b.new.cap318, ptr %b.new.cap.gep328, align 8
  br label %b.push_done315

str_overflow_abort323:                            ; preds = %b.grow313
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len322

choice.then340:                                   ; preds = %choice.else296
  %var.load343 = load i64, ptr %var.c, align 8
  %cmptmp344 = icmp eq i64 %var.load343, 34
  br i1 %cmptmp344, label %and.491.then, label %and.491.else

choice.else341:                                   ; preds = %choice.else296
  %var.load434 = load i64, ptr %var.c, align 8
  %cmptmp435 = icmp eq i64 %var.load434, 34
  br i1 %cmptmp435, label %choice.then436, label %choice.exit437

choice.exit342:                                   ; preds = %choice.exit437, %choice.exit351
  br label %choice.exit297

and.491.then:                                     ; preds = %choice.then340
  %var.load345 = load i64, ptr %var.c1, align 8
  %cmptmp346 = icmp eq i64 %var.load345, 34
  br label %and.491.exit

and.491.else:                                     ; preds = %choice.then340
  br label %and.491.exit

and.491.exit:                                     ; preds = %and.491.else, %and.491.then
  %and.491.phi = phi i1 [ %cmptmp346, %and.491.then ], [ %cmptmp344, %and.491.else ]
  br i1 %and.491.phi, label %and.492.then, label %and.492.else

and.492.then:                                     ; preds = %and.491.exit
  %var.load347 = load i64, ptr %var.c2, align 8
  %cmptmp348 = icmp eq i64 %var.load347, 34
  br label %and.492.exit

and.492.else:                                     ; preds = %and.491.exit
  br label %and.492.exit

and.492.exit:                                     ; preds = %and.492.else, %and.492.then
  %and.492.phi = phi i1 [ %cmptmp348, %and.492.then ], [ %and.491.phi, %and.492.else ]
  br i1 %and.492.phi, label %choice.then349, label %choice.else350

choice.then349:                                   ; preds = %and.492.exit
  %b.load352 = load ptr, ptr %var.b, align 8
  %var.load353 = load i64, ptr %var.c1, align 8
  %b.b.ge0354 = icmp sge i64 %var.load353, 0
  %b.b.le255355 = icmp sle i64 %var.load353, 255
  %b.byte.range356 = and i1 %b.b.ge0354, %b.b.le255355
  br i1 %b.byte.range356, label %b.byte_ok357, label %b.byte_err358

choice.else350:                                   ; preds = %and.492.exit
  %var.load432 = load i64, ptr %"var.i'", align 8
  %addtmp433 = add i64 %var.load432, 1
  store i64 %addtmp433, ptr %"var.i'", align 8
  br label %choice.exit351

choice.exit351:                                   ; preds = %choice.else350, %b.push_done408
  br label %choice.exit342

b.byte_ok357:                                     ; preds = %b.byte_err358, %choice.then349
  %b.byte.i8359 = trunc i64 %var.load353 to i8
  %b.len360 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load352, i32 0, i32 0
  %b.len361 = load i64, ptr %b.len360, align 8
  %b.cap362 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load352, i32 0, i32 2
  %b.cap363 = load i64, ptr %b.cap362, align 8
  %b.data364 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load352, i32 0, i32 1
  %b.data365 = load ptr, ptr %b.data364, align 8
  %b.needs.grow366 = icmp eq i64 %b.len361, %b.cap363
  br i1 %b.needs.grow366, label %b.grow367, label %b.nogrow368

b.byte_err358:                                    ; preds = %choice.then349
  %21 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok357

b.grow367:                                        ; preds = %b.byte_ok357
  %b.cap2370 = mul i64 %b.cap363, 2
  %b.cap.small371 = icmp slt i64 %b.cap2370, 16
  %b.new.cap372 = select i1 %b.cap.small371, i64 16, i64 %b.cap2370
  %b.new.buf.len373 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap372, i64 1)
  %sum374 = extractvalue { i64, i1 } %b.new.buf.len373, 0
  %ovf375 = extractvalue { i64, i1 } %b.new.buf.len373, 1
  br i1 %ovf375, label %str_overflow_abort377, label %b.new.buf.len376

b.nogrow368:                                      ; preds = %b.byte_ok357
  br label %b.push_done369

b.push_done369:                                   ; preds = %b.nogrow368, %b.new.buf.len376
  %b.cur.data383 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load352, i32 0, i32 1
  %b.cur.data384 = load ptr, ptr %b.cur.data383, align 8
  %b.cur.len385 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load352, i32 0, i32 0
  %b.cur.len386 = load i64, ptr %b.cur.len385, align 8
  %b.byte.gep387 = getelementptr i8, ptr %b.cur.data384, i64 %b.cur.len386
  store i8 %b.byte.i8359, ptr %b.byte.gep387, align 1
  %b.next.len388 = add i64 %b.cur.len386, 1
  %b.nul389 = getelementptr i8, ptr %b.cur.data384, i64 %b.next.len388
  store i8 0, ptr %b.nul389, align 1
  %b.len.gep390 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load352, i32 0, i32 0
  store i64 %b.next.len388, ptr %b.len.gep390, align 8
  %b.load391 = load ptr, ptr %var.b, align 8
  %var.load392 = load i64, ptr %var.c2, align 8
  %b.b.ge0393 = icmp sge i64 %var.load392, 0
  %b.b.le255394 = icmp sle i64 %var.load392, 255
  %b.byte.range395 = and i1 %b.b.ge0393, %b.b.le255394
  br i1 %b.byte.range395, label %b.byte_ok396, label %b.byte_err397

b.new.buf.len376:                                 ; preds = %str_overflow_abort377, %b.grow367
  %arena.cur378 = call ptr @dva_arena_current()
  %b.new.buf379 = call ptr @dva_arena_alloc(ptr %arena.cur378, i64 %sum374)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf379, ptr align 1 %b.data365, i64 %b.len361, i1 false)
  %b.grow.nul380 = getelementptr i8, ptr %b.new.buf379, i64 %b.len361
  store i8 0, ptr %b.grow.nul380, align 1
  %b.new.data.gep381 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load352, i32 0, i32 1
  store ptr %b.new.buf379, ptr %b.new.data.gep381, align 8
  %b.new.cap.gep382 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load352, i32 0, i32 2
  store i64 %b.new.cap372, ptr %b.new.cap.gep382, align 8
  br label %b.push_done369

str_overflow_abort377:                            ; preds = %b.grow367
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len376

b.byte_ok396:                                     ; preds = %b.byte_err397, %b.push_done369
  %b.byte.i8398 = trunc i64 %var.load392 to i8
  %b.len399 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 0
  %b.len400 = load i64, ptr %b.len399, align 8
  %b.cap401 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 2
  %b.cap402 = load i64, ptr %b.cap401, align 8
  %b.data403 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 1
  %b.data404 = load ptr, ptr %b.data403, align 8
  %b.needs.grow405 = icmp eq i64 %b.len400, %b.cap402
  br i1 %b.needs.grow405, label %b.grow406, label %b.nogrow407

b.byte_err397:                                    ; preds = %b.push_done369
  %23 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok396

b.grow406:                                        ; preds = %b.byte_ok396
  %b.cap2409 = mul i64 %b.cap402, 2
  %b.cap.small410 = icmp slt i64 %b.cap2409, 16
  %b.new.cap411 = select i1 %b.cap.small410, i64 16, i64 %b.cap2409
  %b.new.buf.len412 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap411, i64 1)
  %sum413 = extractvalue { i64, i1 } %b.new.buf.len412, 0
  %ovf414 = extractvalue { i64, i1 } %b.new.buf.len412, 1
  br i1 %ovf414, label %str_overflow_abort416, label %b.new.buf.len415

b.nogrow407:                                      ; preds = %b.byte_ok396
  br label %b.push_done408

b.push_done408:                                   ; preds = %b.nogrow407, %b.new.buf.len415
  %b.cur.data422 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 1
  %b.cur.data423 = load ptr, ptr %b.cur.data422, align 8
  %b.cur.len424 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 0
  %b.cur.len425 = load i64, ptr %b.cur.len424, align 8
  %b.byte.gep426 = getelementptr i8, ptr %b.cur.data423, i64 %b.cur.len425
  store i8 %b.byte.i8398, ptr %b.byte.gep426, align 1
  %b.next.len427 = add i64 %b.cur.len425, 1
  %b.nul428 = getelementptr i8, ptr %b.cur.data423, i64 %b.next.len427
  store i8 0, ptr %b.nul428, align 1
  %b.len.gep429 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 0
  store i64 %b.next.len427, ptr %b.len.gep429, align 8
  store i1 false, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  %var.load430 = load i64, ptr %"var.i'", align 8
  %addtmp431 = add i64 %var.load430, 3
  store i64 %addtmp431, ptr %"var.i'", align 8
  br label %choice.exit351

b.new.buf.len415:                                 ; preds = %str_overflow_abort416, %b.grow406
  %arena.cur417 = call ptr @dva_arena_current()
  %b.new.buf418 = call ptr @dva_arena_alloc(ptr %arena.cur417, i64 %sum413)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf418, ptr align 1 %b.data404, i64 %b.len400, i1 false)
  %b.grow.nul419 = getelementptr i8, ptr %b.new.buf418, i64 %b.len400
  store i8 0, ptr %b.grow.nul419, align 1
  %b.new.data.gep420 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 1
  store ptr %b.new.buf418, ptr %b.new.data.gep420, align 8
  %b.new.cap.gep421 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 2
  store i64 %b.new.cap411, ptr %b.new.cap.gep421, align 8
  br label %b.push_done408

str_overflow_abort416:                            ; preds = %b.grow406
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len415

choice.then436:                                   ; preds = %choice.else341
  store i1 false, ptr %"var.in_str'", align 1
  br label %choice.exit437

choice.exit437:                                   ; preds = %choice.then436, %choice.else341
  %var.load438 = load i64, ptr %"var.i'", align 8
  %addtmp439 = add i64 %var.load438, 1
  store i64 %addtmp439, ptr %"var.i'", align 8
  br label %choice.exit342

and.493.then:                                     ; preds = %choice.else248
  %var.load442 = load i64, ptr %var.c1, align 8
  %cmptmp443 = icmp eq i64 %var.load442, 47
  br label %and.493.exit

and.493.else:                                     ; preds = %choice.else248
  br label %and.493.exit

and.493.exit:                                     ; preds = %and.493.else, %and.493.then
  %and.493.phi = phi i1 [ %cmptmp443, %and.493.then ], [ %cmptmp441, %and.493.else ]
  br i1 %and.493.phi, label %choice.then444, label %choice.else445

choice.then444:                                   ; preds = %and.493.exit
  %b.load447 = load ptr, ptr %var.b, align 8
  %var.load448 = load ptr, ptr %var.body, align 8
  %s.read.len449 = getelementptr inbounds { i64, ptr }, ptr %var.load448, i32 0, i32 0
  %s.read.len450 = load i64, ptr %s.read.len449, align 8
  %s.read.len451 = and i64 %s.read.len450, 281474976710655
  %str.tag452 = lshr i64 %s.read.len450, 48
  %str.immortal453 = icmp eq i64 %str.tag452, 0
  br i1 %str.immortal453, label %str_ok455, label %str_gen_check454

choice.else445:                                   ; preds = %and.493.exit
  %var.load494 = load i64, ptr %var.c, align 8
  %cmptmp495 = icmp eq i64 %var.load494, 47
  br i1 %cmptmp495, label %and.494.then, label %and.494.else

choice.exit446:                                   ; preds = %choice.exit500, %b.grow_done
  br label %choice.exit249

str_gen_check454:                                 ; preds = %choice.then444
  %arena.cur457 = call ptr @dva_arena_current()
  %tag.valid458 = call i1 @dva_arena_validate_tag(ptr %arena.cur457, i64 %str.tag452)
  br i1 %tag.valid458, label %str_ok455, label %str_stale456

str_ok455:                                        ; preds = %str_stale456, %str_gen_check454, %choice.then444
  %s.read.data459 = getelementptr inbounds { i64, ptr }, ptr %var.load448, i32 0, i32 1
  %s.read.data460 = load ptr, ptr %s.read.data459, align 8
  %var.load461 = load i64, ptr %"var.i'", align 8
  %var.load462 = load i64, ptr %var.n, align 8
  %start.is_neg = icmp slt i64 %var.load461, 0
  %rel.start = add i64 %s.read.len451, %var.load461
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load461
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len451
  %final.start = select i1 %start.gt.len, i64 %s.read.len451, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load462, 0
  %rel.end = add i64 %s.read.len451, %var.load462
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load462
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len451
  %final.end = select i1 %end.gt.len, i64 %s.read.len451, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data460, i64 %final.start
  %arena.cur463 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur463, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %app.str.len464 = load i64, ptr %app.str.len, align 8
  %app.str.len465 = and i64 %app.str.len464, 281474976710655
  %str.tag466 = lshr i64 %app.str.len464, 48
  %str.immortal467 = icmp eq i64 %str.tag466, 0
  br i1 %str.immortal467, label %str_ok469, label %str_gen_check468

str_stale456:                                     ; preds = %str_gen_check454
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok455

str_gen_check468:                                 ; preds = %str_ok455
  %arena.cur471 = call ptr @dva_arena_current()
  %tag.valid472 = call i1 @dva_arena_validate_tag(ptr %arena.cur471, i64 %str.tag466)
  br i1 %tag.valid472, label %str_ok469, label %str_stale470

str_ok469:                                        ; preds = %str_stale470, %str_gen_check468, %str_ok455
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load447, i32 0, i32 0
  %b.app.cur.len473 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len473, i64 %app.str.len465)
  %sum474 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf475 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf475, label %str_overflow_abort477, label %b.app.new.len476

str_stale470:                                     ; preds = %str_gen_check468
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok469

b.app.new.len476:                                 ; preds = %str_overflow_abort477, %str_ok469
  %b.cap478 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load447, i32 0, i32 2
  %b.cap479 = load i64, ptr %b.cap478, align 8
  %b.need.grow = icmp slt i64 %b.cap479, %sum474
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort477:                            ; preds = %str_ok469
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len476

b.grow2:                                          ; preds = %b.app.new.len476
  %b.cap2480 = mul i64 %b.cap479, 2
  %b.cap.small481 = icmp slt i64 %b.cap2480, 16
  %b.cap.grow = select i1 %b.cap.small481, i64 16, i64 %b.cap2480
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum474
  %b.new.cap482 = select i1 %b.cap.need, i64 %sum474, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load447, i32 0, i32 0
  %b.cur.len2483 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load447, i32 0, i32 1
  %b.cur.data2484 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap482, i64 1)
  %sum485 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf486 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf486, label %str_overflow_abort488, label %b.new.buf.len2487

b.nogrow2:                                        ; preds = %b.app.new.len476
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2487
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %app.str.data490 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load447, i32 0, i32 1
  %b.app.data491 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data491, i64 %b.app.cur.len473
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data490, i64 %app.str.len465, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data491, i64 %sum474
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep492 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load447, i32 0, i32 0
  store i64 %sum474, ptr %b.len.gep492, align 8
  %var.load493 = load i64, ptr %var.n, align 8
  store i64 %var.load493, ptr %"var.i'", align 8
  br label %choice.exit446

b.new.buf.len2487:                                ; preds = %str_overflow_abort488, %b.grow2
  %arena.cur489 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur489, i64 %sum485)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2484, i64 %b.cur.len2483, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2483
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load447, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load447, i32 0, i32 2
  store i64 %b.new.cap482, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort488:                            ; preds = %b.grow2
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2487

and.494.then:                                     ; preds = %choice.else445
  %var.load496 = load i64, ptr %var.c1, align 8
  %cmptmp497 = icmp eq i64 %var.load496, 42
  br label %and.494.exit

and.494.else:                                     ; preds = %choice.else445
  br label %and.494.exit

and.494.exit:                                     ; preds = %and.494.else, %and.494.then
  %and.494.phi = phi i1 [ %cmptmp497, %and.494.then ], [ %cmptmp495, %and.494.else ]
  br i1 %and.494.phi, label %choice.then498, label %choice.else499

choice.then498:                                   ; preds = %and.494.exit
  %b.load501 = load ptr, ptr %var.b, align 8
  %app.str.len502 = load i64, ptr @str.0.struct, align 8
  %app.str.len503 = and i64 %app.str.len502, 281474976710655
  %str.tag504 = lshr i64 %app.str.len502, 48
  %str.immortal505 = icmp eq i64 %str.tag504, 0
  br i1 %str.immortal505, label %str_ok507, label %str_gen_check506

choice.else499:                                   ; preds = %and.494.exit
  %var.load551 = load i64, ptr %var.c, align 8
  %cmptmp552 = icmp eq i64 %var.load551, 39
  br i1 %cmptmp552, label %choice.then553, label %choice.else554

choice.exit500:                                   ; preds = %choice.exit555, %b.grow_done523
  br label %choice.exit446

str_gen_check506:                                 ; preds = %choice.then498
  %arena.cur509 = call ptr @dva_arena_current()
  %tag.valid510 = call i1 @dva_arena_validate_tag(ptr %arena.cur509, i64 %str.tag504)
  br i1 %tag.valid510, label %str_ok507, label %str_stale508

str_ok507:                                        ; preds = %str_stale508, %str_gen_check506, %choice.then498
  %b.app.cur.len511 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load501, i32 0, i32 0
  %b.app.cur.len512 = load i64, ptr %b.app.cur.len511, align 8
  %b.app.new.len513 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len512, i64 %app.str.len503)
  %sum514 = extractvalue { i64, i1 } %b.app.new.len513, 0
  %ovf515 = extractvalue { i64, i1 } %b.app.new.len513, 1
  br i1 %ovf515, label %str_overflow_abort517, label %b.app.new.len516

str_stale508:                                     ; preds = %str_gen_check506
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok507

b.app.new.len516:                                 ; preds = %str_overflow_abort517, %str_ok507
  %b.cap518 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load501, i32 0, i32 2
  %b.cap519 = load i64, ptr %b.cap518, align 8
  %b.need.grow520 = icmp slt i64 %b.cap519, %sum514
  br i1 %b.need.grow520, label %b.grow2521, label %b.nogrow2522

str_overflow_abort517:                            ; preds = %str_ok507
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len516

b.grow2521:                                       ; preds = %b.app.new.len516
  %b.cap2524 = mul i64 %b.cap519, 2
  %b.cap.small525 = icmp slt i64 %b.cap2524, 16
  %b.cap.grow526 = select i1 %b.cap.small525, i64 16, i64 %b.cap2524
  %b.cap.need527 = icmp slt i64 %b.cap.grow526, %sum514
  %b.new.cap528 = select i1 %b.cap.need527, i64 %sum514, i64 %b.cap.grow526
  %b.cur.len2529 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load501, i32 0, i32 0
  %b.cur.len2530 = load i64, ptr %b.cur.len2529, align 8
  %b.cur.data2531 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load501, i32 0, i32 1
  %b.cur.data2532 = load ptr, ptr %b.cur.data2531, align 8
  %b.new.buf.len2533 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap528, i64 1)
  %sum534 = extractvalue { i64, i1 } %b.new.buf.len2533, 0
  %ovf535 = extractvalue { i64, i1 } %b.new.buf.len2533, 1
  br i1 %ovf535, label %str_overflow_abort537, label %b.new.buf.len2536

b.nogrow2522:                                     ; preds = %b.app.new.len516
  br label %b.grow_done523

b.grow_done523:                                   ; preds = %b.nogrow2522, %b.new.buf.len2536
  %app.str.data543 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %b.app.data544 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load501, i32 0, i32 1
  %b.app.data545 = load ptr, ptr %b.app.data544, align 8
  %b.app.dst546 = getelementptr i8, ptr %b.app.data545, i64 %b.app.cur.len512
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst546, ptr align 1 %app.str.data543, i64 %app.str.len503, i1 false)
  %b.app.nul547 = getelementptr i8, ptr %b.app.data545, i64 %sum514
  store i8 0, ptr %b.app.nul547, align 1
  %b.len.gep548 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load501, i32 0, i32 0
  store i64 %sum514, ptr %b.len.gep548, align 8
  store i1 true, ptr %"var.in_blk_comm'", align 1
  %var.load549 = load i64, ptr %"var.i'", align 8
  %addtmp550 = add i64 %var.load549, 2
  store i64 %addtmp550, ptr %"var.i'", align 8
  br label %choice.exit500

b.new.buf.len2536:                                ; preds = %str_overflow_abort537, %b.grow2521
  %arena.cur538 = call ptr @dva_arena_current()
  %b.new.buf2539 = call ptr @dva_arena_alloc(ptr %arena.cur538, i64 %sum534)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2539, ptr align 1 %b.cur.data2532, i64 %b.cur.len2530, i1 false)
  %b.grow2.nul540 = getelementptr i8, ptr %b.new.buf2539, i64 %b.cur.len2530
  store i8 0, ptr %b.grow2.nul540, align 1
  %b.new.data2.gep541 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load501, i32 0, i32 1
  store ptr %b.new.buf2539, ptr %b.new.data2.gep541, align 8
  %b.new.cap2.gep542 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load501, i32 0, i32 2
  store i64 %b.new.cap528, ptr %b.new.cap2.gep542, align 8
  br label %b.grow_done523

str_overflow_abort537:                            ; preds = %b.grow2521
  %31 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2536

choice.then553:                                   ; preds = %choice.else499
  %b.load556 = load ptr, ptr %var.b, align 8
  %var.load557 = load i64, ptr %var.c, align 8
  %b.b.ge0558 = icmp sge i64 %var.load557, 0
  %b.b.le255559 = icmp sle i64 %var.load557, 255
  %b.byte.range560 = and i1 %b.b.ge0558, %b.b.le255559
  br i1 %b.byte.range560, label %b.byte_ok561, label %b.byte_err562

choice.else554:                                   ; preds = %choice.else499
  %var.load597 = load i64, ptr %var.c, align 8
  %cmptmp598 = icmp eq i64 %var.load597, 34
  br i1 %cmptmp598, label %choice.then599, label %choice.else600

choice.exit555:                                   ; preds = %choice.exit601, %b.push_done573
  br label %choice.exit500

b.byte_ok561:                                     ; preds = %b.byte_err562, %choice.then553
  %b.byte.i8563 = trunc i64 %var.load557 to i8
  %b.len564 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load556, i32 0, i32 0
  %b.len565 = load i64, ptr %b.len564, align 8
  %b.cap566 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load556, i32 0, i32 2
  %b.cap567 = load i64, ptr %b.cap566, align 8
  %b.data568 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load556, i32 0, i32 1
  %b.data569 = load ptr, ptr %b.data568, align 8
  %b.needs.grow570 = icmp eq i64 %b.len565, %b.cap567
  br i1 %b.needs.grow570, label %b.grow571, label %b.nogrow572

b.byte_err562:                                    ; preds = %choice.then553
  %32 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok561

b.grow571:                                        ; preds = %b.byte_ok561
  %b.cap2574 = mul i64 %b.cap567, 2
  %b.cap.small575 = icmp slt i64 %b.cap2574, 16
  %b.new.cap576 = select i1 %b.cap.small575, i64 16, i64 %b.cap2574
  %b.new.buf.len577 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap576, i64 1)
  %sum578 = extractvalue { i64, i1 } %b.new.buf.len577, 0
  %ovf579 = extractvalue { i64, i1 } %b.new.buf.len577, 1
  br i1 %ovf579, label %str_overflow_abort581, label %b.new.buf.len580

b.nogrow572:                                      ; preds = %b.byte_ok561
  br label %b.push_done573

b.push_done573:                                   ; preds = %b.nogrow572, %b.new.buf.len580
  %b.cur.data587 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load556, i32 0, i32 1
  %b.cur.data588 = load ptr, ptr %b.cur.data587, align 8
  %b.cur.len589 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load556, i32 0, i32 0
  %b.cur.len590 = load i64, ptr %b.cur.len589, align 8
  %b.byte.gep591 = getelementptr i8, ptr %b.cur.data588, i64 %b.cur.len590
  store i8 %b.byte.i8563, ptr %b.byte.gep591, align 1
  %b.next.len592 = add i64 %b.cur.len590, 1
  %b.nul593 = getelementptr i8, ptr %b.cur.data588, i64 %b.next.len592
  store i8 0, ptr %b.nul593, align 1
  %b.len.gep594 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load556, i32 0, i32 0
  store i64 %b.next.len592, ptr %b.len.gep594, align 8
  store i1 true, ptr %"var.in_rune'", align 1
  %var.load595 = load i64, ptr %"var.i'", align 8
  %addtmp596 = add i64 %var.load595, 1
  store i64 %addtmp596, ptr %"var.i'", align 8
  br label %choice.exit555

b.new.buf.len580:                                 ; preds = %str_overflow_abort581, %b.grow571
  %arena.cur582 = call ptr @dva_arena_current()
  %b.new.buf583 = call ptr @dva_arena_alloc(ptr %arena.cur582, i64 %sum578)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf583, ptr align 1 %b.data569, i64 %b.len565, i1 false)
  %b.grow.nul584 = getelementptr i8, ptr %b.new.buf583, i64 %b.len565
  store i8 0, ptr %b.grow.nul584, align 1
  %b.new.data.gep585 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load556, i32 0, i32 1
  store ptr %b.new.buf583, ptr %b.new.data.gep585, align 8
  %b.new.cap.gep586 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load556, i32 0, i32 2
  store i64 %b.new.cap576, ptr %b.new.cap.gep586, align 8
  br label %b.push_done573

str_overflow_abort581:                            ; preds = %b.grow571
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len580

choice.then599:                                   ; preds = %choice.else554
  %var.load602 = load i64, ptr %var.c1, align 8
  %cmptmp603 = icmp eq i64 %var.load602, 34
  br i1 %cmptmp603, label %and.495.then, label %and.495.else

choice.else600:                                   ; preds = %choice.else554
  %var.load700 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load700, 44
  %val.match702 = icmp eq i64 %var.load700, 59
  %case.or = or i1 %val.match, %val.match702
  br i1 %case.or, label %choice.case, label %choice.next

choice.exit601:                                   ; preds = %choice.exit706, %choice.exit608
  br label %choice.exit555

and.495.then:                                     ; preds = %choice.then599
  %var.load604 = load i64, ptr %var.c2, align 8
  %cmptmp605 = icmp eq i64 %var.load604, 34
  br label %and.495.exit

and.495.else:                                     ; preds = %choice.then599
  br label %and.495.exit

and.495.exit:                                     ; preds = %and.495.else, %and.495.then
  %and.495.phi = phi i1 [ %cmptmp605, %and.495.then ], [ %cmptmp603, %and.495.else ]
  br i1 %and.495.phi, label %choice.then606, label %choice.else607

choice.then606:                                   ; preds = %and.495.exit
  %b.load609 = load ptr, ptr %var.b, align 8
  %app.str.len610 = load i64, ptr @str.1.struct, align 8
  %app.str.len611 = and i64 %app.str.len610, 281474976710655
  %str.tag612 = lshr i64 %app.str.len610, 48
  %str.immortal613 = icmp eq i64 %str.tag612, 0
  br i1 %str.immortal613, label %str_ok615, label %str_gen_check614

choice.else607:                                   ; preds = %and.495.exit
  %b.load659 = load ptr, ptr %var.b, align 8
  %var.load660 = load i64, ptr %var.c, align 8
  %b.b.ge0661 = icmp sge i64 %var.load660, 0
  %b.b.le255662 = icmp sle i64 %var.load660, 255
  %b.byte.range663 = and i1 %b.b.ge0661, %b.b.le255662
  br i1 %b.byte.range663, label %b.byte_ok664, label %b.byte_err665

choice.exit608:                                   ; preds = %b.push_done676, %b.grow_done631
  br label %choice.exit601

str_gen_check614:                                 ; preds = %choice.then606
  %arena.cur617 = call ptr @dva_arena_current()
  %tag.valid618 = call i1 @dva_arena_validate_tag(ptr %arena.cur617, i64 %str.tag612)
  br i1 %tag.valid618, label %str_ok615, label %str_stale616

str_ok615:                                        ; preds = %str_stale616, %str_gen_check614, %choice.then606
  %b.app.cur.len619 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load609, i32 0, i32 0
  %b.app.cur.len620 = load i64, ptr %b.app.cur.len619, align 8
  %b.app.new.len621 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len620, i64 %app.str.len611)
  %sum622 = extractvalue { i64, i1 } %b.app.new.len621, 0
  %ovf623 = extractvalue { i64, i1 } %b.app.new.len621, 1
  br i1 %ovf623, label %str_overflow_abort625, label %b.app.new.len624

str_stale616:                                     ; preds = %str_gen_check614
  %34 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok615

b.app.new.len624:                                 ; preds = %str_overflow_abort625, %str_ok615
  %b.cap626 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load609, i32 0, i32 2
  %b.cap627 = load i64, ptr %b.cap626, align 8
  %b.need.grow628 = icmp slt i64 %b.cap627, %sum622
  br i1 %b.need.grow628, label %b.grow2629, label %b.nogrow2630

str_overflow_abort625:                            ; preds = %str_ok615
  %35 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len624

b.grow2629:                                       ; preds = %b.app.new.len624
  %b.cap2632 = mul i64 %b.cap627, 2
  %b.cap.small633 = icmp slt i64 %b.cap2632, 16
  %b.cap.grow634 = select i1 %b.cap.small633, i64 16, i64 %b.cap2632
  %b.cap.need635 = icmp slt i64 %b.cap.grow634, %sum622
  %b.new.cap636 = select i1 %b.cap.need635, i64 %sum622, i64 %b.cap.grow634
  %b.cur.len2637 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load609, i32 0, i32 0
  %b.cur.len2638 = load i64, ptr %b.cur.len2637, align 8
  %b.cur.data2639 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load609, i32 0, i32 1
  %b.cur.data2640 = load ptr, ptr %b.cur.data2639, align 8
  %b.new.buf.len2641 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap636, i64 1)
  %sum642 = extractvalue { i64, i1 } %b.new.buf.len2641, 0
  %ovf643 = extractvalue { i64, i1 } %b.new.buf.len2641, 1
  br i1 %ovf643, label %str_overflow_abort645, label %b.new.buf.len2644

b.nogrow2630:                                     ; preds = %b.app.new.len624
  br label %b.grow_done631

b.grow_done631:                                   ; preds = %b.nogrow2630, %b.new.buf.len2644
  %app.str.data651 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %b.app.data652 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load609, i32 0, i32 1
  %b.app.data653 = load ptr, ptr %b.app.data652, align 8
  %b.app.dst654 = getelementptr i8, ptr %b.app.data653, i64 %b.app.cur.len620
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst654, ptr align 1 %app.str.data651, i64 %app.str.len611, i1 false)
  %b.app.nul655 = getelementptr i8, ptr %b.app.data653, i64 %sum622
  store i8 0, ptr %b.app.nul655, align 1
  %b.len.gep656 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load609, i32 0, i32 0
  store i64 %sum622, ptr %b.len.gep656, align 8
  store i1 true, ptr %"var.in_str'", align 1
  store i1 true, ptr %"var.str_triple'", align 1
  %var.load657 = load i64, ptr %"var.i'", align 8
  %addtmp658 = add i64 %var.load657, 3
  store i64 %addtmp658, ptr %"var.i'", align 8
  br label %choice.exit608

b.new.buf.len2644:                                ; preds = %str_overflow_abort645, %b.grow2629
  %arena.cur646 = call ptr @dva_arena_current()
  %b.new.buf2647 = call ptr @dva_arena_alloc(ptr %arena.cur646, i64 %sum642)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2647, ptr align 1 %b.cur.data2640, i64 %b.cur.len2638, i1 false)
  %b.grow2.nul648 = getelementptr i8, ptr %b.new.buf2647, i64 %b.cur.len2638
  store i8 0, ptr %b.grow2.nul648, align 1
  %b.new.data2.gep649 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load609, i32 0, i32 1
  store ptr %b.new.buf2647, ptr %b.new.data2.gep649, align 8
  %b.new.cap2.gep650 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load609, i32 0, i32 2
  store i64 %b.new.cap636, ptr %b.new.cap2.gep650, align 8
  br label %b.grow_done631

str_overflow_abort645:                            ; preds = %b.grow2629
  %36 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2644

b.byte_ok664:                                     ; preds = %b.byte_err665, %choice.else607
  %b.byte.i8666 = trunc i64 %var.load660 to i8
  %b.len667 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load659, i32 0, i32 0
  %b.len668 = load i64, ptr %b.len667, align 8
  %b.cap669 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load659, i32 0, i32 2
  %b.cap670 = load i64, ptr %b.cap669, align 8
  %b.data671 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load659, i32 0, i32 1
  %b.data672 = load ptr, ptr %b.data671, align 8
  %b.needs.grow673 = icmp eq i64 %b.len668, %b.cap670
  br i1 %b.needs.grow673, label %b.grow674, label %b.nogrow675

b.byte_err665:                                    ; preds = %choice.else607
  %37 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok664

b.grow674:                                        ; preds = %b.byte_ok664
  %b.cap2677 = mul i64 %b.cap670, 2
  %b.cap.small678 = icmp slt i64 %b.cap2677, 16
  %b.new.cap679 = select i1 %b.cap.small678, i64 16, i64 %b.cap2677
  %b.new.buf.len680 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap679, i64 1)
  %sum681 = extractvalue { i64, i1 } %b.new.buf.len680, 0
  %ovf682 = extractvalue { i64, i1 } %b.new.buf.len680, 1
  br i1 %ovf682, label %str_overflow_abort684, label %b.new.buf.len683

b.nogrow675:                                      ; preds = %b.byte_ok664
  br label %b.push_done676

b.push_done676:                                   ; preds = %b.nogrow675, %b.new.buf.len683
  %b.cur.data690 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load659, i32 0, i32 1
  %b.cur.data691 = load ptr, ptr %b.cur.data690, align 8
  %b.cur.len692 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load659, i32 0, i32 0
  %b.cur.len693 = load i64, ptr %b.cur.len692, align 8
  %b.byte.gep694 = getelementptr i8, ptr %b.cur.data691, i64 %b.cur.len693
  store i8 %b.byte.i8666, ptr %b.byte.gep694, align 1
  %b.next.len695 = add i64 %b.cur.len693, 1
  %b.nul696 = getelementptr i8, ptr %b.cur.data691, i64 %b.next.len695
  store i8 0, ptr %b.nul696, align 1
  %b.len.gep697 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load659, i32 0, i32 0
  store i64 %b.next.len695, ptr %b.len.gep697, align 8
  store i1 true, ptr %"var.in_str'", align 1
  store i1 false, ptr %"var.str_triple'", align 1
  %var.load698 = load i64, ptr %"var.i'", align 8
  %addtmp699 = add i64 %var.load698, 1
  store i64 %addtmp699, ptr %"var.i'", align 8
  br label %choice.exit608

b.new.buf.len683:                                 ; preds = %str_overflow_abort684, %b.grow674
  %arena.cur685 = call ptr @dva_arena_current()
  %b.new.buf686 = call ptr @dva_arena_alloc(ptr %arena.cur685, i64 %sum681)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf686, ptr align 1 %b.data672, i64 %b.len668, i1 false)
  %b.grow.nul687 = getelementptr i8, ptr %b.new.buf686, i64 %b.len668
  store i8 0, ptr %b.grow.nul687, align 1
  %b.new.data.gep688 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load659, i32 0, i32 1
  store ptr %b.new.buf686, ptr %b.new.data.gep688, align 8
  %b.new.cap.gep689 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load659, i32 0, i32 2
  store i64 %b.new.cap679, ptr %b.new.cap.gep689, align 8
  br label %b.push_done676

str_overflow_abort684:                            ; preds = %b.grow674
  %38 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len683

choice.exit701:                                   ; preds = %choice.next, %choice.case
  %choice.res703 = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res703, label %choice.then704, label %choice.else705

choice.case:                                      ; preds = %choice.else600
  br label %choice.exit701

choice.next:                                      ; preds = %choice.else600
  br label %choice.exit701

choice.then704:                                   ; preds = %choice.exit701
  %b.load707 = load ptr, ptr %var.b, align 8
  %var.load708 = load i64, ptr %var.c, align 8
  %b.b.ge0709 = icmp sge i64 %var.load708, 0
  %b.b.le255710 = icmp sle i64 %var.load708, 255
  %b.byte.range711 = and i1 %b.b.ge0709, %b.b.le255710
  br i1 %b.byte.range711, label %b.byte_ok712, label %b.byte_err713

choice.else705:                                   ; preds = %choice.exit701
  %var.load806 = load i64, ptr %"var.i'", align 8
  %cmptmp807 = icmp sgt i64 %var.load806, 0
  br i1 %cmptmp807, label %choice.then808, label %choice.else809

choice.exit706:                                   ; preds = %choice.exit875, %choice.exit770
  br label %choice.exit601

b.byte_ok712:                                     ; preds = %b.byte_err713, %choice.then704
  %b.byte.i8714 = trunc i64 %var.load708 to i8
  %b.len715 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load707, i32 0, i32 0
  %b.len716 = load i64, ptr %b.len715, align 8
  %b.cap717 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load707, i32 0, i32 2
  %b.cap718 = load i64, ptr %b.cap717, align 8
  %b.data719 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load707, i32 0, i32 1
  %b.data720 = load ptr, ptr %b.data719, align 8
  %b.needs.grow721 = icmp eq i64 %b.len716, %b.cap718
  br i1 %b.needs.grow721, label %b.grow722, label %b.nogrow723

b.byte_err713:                                    ; preds = %choice.then704
  %39 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok712

b.grow722:                                        ; preds = %b.byte_ok712
  %b.cap2725 = mul i64 %b.cap718, 2
  %b.cap.small726 = icmp slt i64 %b.cap2725, 16
  %b.new.cap727 = select i1 %b.cap.small726, i64 16, i64 %b.cap2725
  %b.new.buf.len728 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap727, i64 1)
  %sum729 = extractvalue { i64, i1 } %b.new.buf.len728, 0
  %ovf730 = extractvalue { i64, i1 } %b.new.buf.len728, 1
  br i1 %ovf730, label %str_overflow_abort732, label %b.new.buf.len731

b.nogrow723:                                      ; preds = %b.byte_ok712
  br label %b.push_done724

b.push_done724:                                   ; preds = %b.nogrow723, %b.new.buf.len731
  %b.cur.data738 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load707, i32 0, i32 1
  %b.cur.data739 = load ptr, ptr %b.cur.data738, align 8
  %b.cur.len740 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load707, i32 0, i32 0
  %b.cur.len741 = load i64, ptr %b.cur.len740, align 8
  %b.byte.gep742 = getelementptr i8, ptr %b.cur.data739, i64 %b.cur.len741
  store i8 %b.byte.i8714, ptr %b.byte.gep742, align 1
  %b.next.len743 = add i64 %b.cur.len741, 1
  %b.nul744 = getelementptr i8, ptr %b.cur.data739, i64 %b.next.len743
  store i8 0, ptr %b.nul744, align 1
  %b.len.gep745 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load707, i32 0, i32 0
  store i64 %b.next.len743, ptr %b.len.gep745, align 8
  %var.load746 = load i64, ptr %"var.i'", align 8
  %addtmp747 = add i64 %var.load746, 1
  %var.load748 = load i64, ptr %var.n, align 8
  %cmptmp749 = icmp slt i64 %addtmp747, %var.load748
  br i1 %cmptmp749, label %and.496.then, label %and.496.else

b.new.buf.len731:                                 ; preds = %str_overflow_abort732, %b.grow722
  %arena.cur733 = call ptr @dva_arena_current()
  %b.new.buf734 = call ptr @dva_arena_alloc(ptr %arena.cur733, i64 %sum729)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf734, ptr align 1 %b.data720, i64 %b.len716, i1 false)
  %b.grow.nul735 = getelementptr i8, ptr %b.new.buf734, i64 %b.len716
  store i8 0, ptr %b.grow.nul735, align 1
  %b.new.data.gep736 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load707, i32 0, i32 1
  store ptr %b.new.buf734, ptr %b.new.data.gep736, align 8
  %b.new.cap.gep737 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load707, i32 0, i32 2
  store i64 %b.new.cap727, ptr %b.new.cap.gep737, align 8
  br label %b.push_done724

str_overflow_abort732:                            ; preds = %b.grow722
  %40 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len731

and.496.then:                                     ; preds = %b.push_done724
  %var.load750 = load i64, ptr %var.c1, align 8
  %val.match754 = icmp eq i64 %var.load750, 32
  %val.match755 = icmp eq i64 %var.load750, 9
  %case.or756 = or i1 %val.match754, %val.match755
  %val.match757 = icmp eq i64 %var.load750, 41
  %case.or758 = or i1 %case.or756, %val.match757
  %val.match759 = icmp eq i64 %var.load750, 93
  %case.or760 = or i1 %case.or758, %val.match759
  %val.match761 = icmp eq i64 %var.load750, 125
  %case.or762 = or i1 %case.or760, %val.match761
  %val.match763 = icmp eq i64 %var.load750, 44
  %case.or764 = or i1 %case.or762, %val.match763
  %val.match765 = icmp eq i64 %var.load750, 59
  %case.or766 = or i1 %case.or764, %val.match765
  br i1 %case.or766, label %choice.case752, label %choice.next753

and.496.else:                                     ; preds = %b.push_done724
  br label %and.496.exit

and.496.exit:                                     ; preds = %and.496.else, %choice.exit751
  %and.496.phi = phi i1 [ %nottmp, %choice.exit751 ], [ %cmptmp749, %and.496.else ]
  store i1 %and.496.phi, ptr %var.need_sp, align 1
  %var.load768 = load i1, ptr %var.need_sp, align 1
  br i1 %var.load768, label %choice.then769, label %choice.exit770

choice.exit751:                                   ; preds = %choice.next753, %choice.case752
  %choice.res767 = phi i1 [ true, %choice.case752 ], [ false, %choice.next753 ]
  %nottmp = xor i1 %choice.res767, true
  br label %and.496.exit

choice.case752:                                   ; preds = %and.496.then
  br label %choice.exit751

choice.next753:                                   ; preds = %and.496.then
  br label %choice.exit751

choice.then769:                                   ; preds = %and.496.exit
  %b.load771 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load771, i32 0, i32 0
  %b.rn.cur.len772 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len772, i64 1)
  %sum773 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf774 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf774, label %str_overflow_abort776, label %b.rn.new.len775

choice.exit770:                                   ; preds = %br.done.497, %and.496.exit
  %var.load804 = load i64, ptr %"var.i'", align 8
  %addtmp805 = add i64 %var.load804, 1
  store i64 %addtmp805, ptr %"var.i'", align 8
  br label %choice.exit706

b.rn.new.len775:                                  ; preds = %str_overflow_abort776, %choice.then769
  %b.cap777 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load771, i32 0, i32 2
  %b.cap778 = load i64, ptr %b.cap777, align 8
  %b.need.grow779 = icmp slt i64 %b.cap778, %sum773
  br i1 %b.need.grow779, label %b.grow2780, label %b.nogrow2781

str_overflow_abort776:                            ; preds = %choice.then769
  %41 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len775

b.grow2780:                                       ; preds = %b.rn.new.len775
  %b.cap2783 = mul i64 %b.cap778, 2
  %b.cap.small784 = icmp slt i64 %b.cap2783, 16
  %b.cap.grow785 = select i1 %b.cap.small784, i64 16, i64 %b.cap2783
  %b.cap.need786 = icmp slt i64 %b.cap.grow785, %sum773
  %b.new.cap787 = select i1 %b.cap.need786, i64 %sum773, i64 %b.cap.grow785
  %b.cur.len2788 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load771, i32 0, i32 0
  %b.cur.len2789 = load i64, ptr %b.cur.len2788, align 8
  %b.cur.data2790 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load771, i32 0, i32 1
  %b.cur.data2791 = load ptr, ptr %b.cur.data2790, align 8
  %b.new.buf.len2792 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap787, i64 1)
  %sum793 = extractvalue { i64, i1 } %b.new.buf.len2792, 0
  %ovf794 = extractvalue { i64, i1 } %b.new.buf.len2792, 1
  br i1 %ovf794, label %str_overflow_abort796, label %b.new.buf.len2795

b.nogrow2781:                                     ; preds = %b.rn.new.len775
  br label %b.grow_done782

b.grow_done782:                                   ; preds = %b.nogrow2781, %b.new.buf.len2795
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load771, i32 0, i32 1
  %b.rn.data802 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data802, i64 %b.rn.cur.len772
  br i1 true, label %br.b1.497, label %br.c2.497

b.new.buf.len2795:                                ; preds = %str_overflow_abort796, %b.grow2780
  %arena.cur797 = call ptr @dva_arena_current()
  %b.new.buf2798 = call ptr @dva_arena_alloc(ptr %arena.cur797, i64 %sum793)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2798, ptr align 1 %b.cur.data2791, i64 %b.cur.len2789, i1 false)
  %b.grow2.nul799 = getelementptr i8, ptr %b.new.buf2798, i64 %b.cur.len2789
  store i8 0, ptr %b.grow2.nul799, align 1
  %b.new.data2.gep800 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load771, i32 0, i32 1
  store ptr %b.new.buf2798, ptr %b.new.data2.gep800, align 8
  %b.new.cap2.gep801 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load771, i32 0, i32 2
  store i64 %b.new.cap787, ptr %b.new.cap2.gep801, align 8
  br label %b.grow_done782

str_overflow_abort796:                            ; preds = %b.grow2780
  %42 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2795

br.b1.497:                                        ; preds = %b.grow_done782
  store i8 32, ptr %b.rn.dst, align 1
  br label %br.done.497

br.c2.497:                                        ; preds = %b.grow_done782
  br i1 true, label %br.b2.497, label %br.c3.497

br.b2.497:                                        ; preds = %br.c2.497
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -96, ptr %br.dst1, align 1
  br label %br.done.497

br.c3.497:                                        ; preds = %br.c2.497
  br i1 true, label %br.b3.497, label %br.b4.497

br.b3.497:                                        ; preds = %br.c3.497
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -96, ptr %br.dst2.3, align 1
  br label %br.done.497

br.b4.497:                                        ; preds = %br.c3.497
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -96, ptr %br.dst3.4, align 1
  br label %br.done.497

br.done.497:                                      ; preds = %br.b4.497, %br.b3.497, %br.b2.497, %br.b1.497
  %br.nul = getelementptr i8, ptr %b.rn.data802, i64 %sum773
  store i8 0, ptr %br.nul, align 1
  %b.len.gep803 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load771, i32 0, i32 0
  store i64 %sum773, ptr %b.len.gep803, align 8
  br label %choice.exit770

choice.then808:                                   ; preds = %choice.else705
  %var.load811 = load ptr, ptr %var.body, align 8
  %s.read.len812 = getelementptr inbounds { i64, ptr }, ptr %var.load811, i32 0, i32 0
  %s.read.len813 = load i64, ptr %s.read.len812, align 8
  %s.read.len814 = and i64 %s.read.len813, 281474976710655
  %str.tag815 = lshr i64 %s.read.len813, 48
  %str.immortal816 = icmp eq i64 %str.tag815, 0
  br i1 %str.immortal816, label %str_ok818, label %str_gen_check817

choice.else809:                                   ; preds = %choice.else705
  br label %choice.exit810

choice.exit810:                                   ; preds = %choice.else809, %idx_ok827
  %choice.res833 = phi i64 [ %s.byte.val832, %idx_ok827 ], [ 0, %choice.else809 ]
  store i64 %choice.res833, ptr %var.prev_c, align 8
  %var.load834 = load i64, ptr %var.c, align 8
  %cmptmp835 = icmp eq i64 %var.load834, 58
  br i1 %cmptmp835, label %and.498.then, label %and.498.else

str_gen_check817:                                 ; preds = %choice.then808
  %arena.cur820 = call ptr @dva_arena_current()
  %tag.valid821 = call i1 @dva_arena_validate_tag(ptr %arena.cur820, i64 %str.tag815)
  br i1 %tag.valid821, label %str_ok818, label %str_stale819

str_ok818:                                        ; preds = %str_stale819, %str_gen_check817, %choice.then808
  %s.read.data822 = getelementptr inbounds { i64, ptr }, ptr %var.load811, i32 0, i32 1
  %s.read.data823 = load ptr, ptr %s.read.data822, align 8
  %var.load824 = load i64, ptr %"var.i'", align 8
  %subtmp = sub i64 %var.load824, 1
  %idx.neg825 = icmp slt i64 %subtmp, 0
  br i1 %idx.neg825, label %idx_oob828, label %idx_big_check826

str_stale819:                                     ; preds = %str_gen_check817
  %43 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok818

idx_big_check826:                                 ; preds = %str_ok818
  %idx.big829 = icmp sge i64 %subtmp, %s.read.len814
  br i1 %idx.big829, label %idx_oob828, label %idx_ok827

idx_ok827:                                        ; preds = %idx_oob828, %idx_big_check826
  %s.byte.gep830 = getelementptr i8, ptr %s.read.data823, i64 %subtmp
  %s.byte831 = load i8, ptr %s.byte.gep830, align 1
  %s.byte.val832 = zext i8 %s.byte831 to i64
  br label %choice.exit810

idx_oob828:                                       ; preds = %idx_big_check826, %str_ok818
  %44 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok827

and.498.then:                                     ; preds = %choice.exit810
  %var.load836 = load i64, ptr %var.prev_c, align 8
  %val.match840 = icmp eq i64 %var.load836, 58
  %val.match841 = icmp eq i64 %var.load836, 45
  %case.or842 = or i1 %val.match840, %val.match841
  %val.match843 = icmp eq i64 %var.load836, 32
  %case.or844 = or i1 %case.or842, %val.match843
  %val.match845 = icmp eq i64 %var.load836, 9
  %case.or846 = or i1 %case.or844, %val.match845
  br i1 %case.or846, label %choice.case838, label %choice.next839

and.498.else:                                     ; preds = %choice.exit810
  br label %and.498.exit

and.498.exit:                                     ; preds = %and.498.else, %choice.exit837
  %and.498.phi = phi i1 [ %nottmp848, %choice.exit837 ], [ %cmptmp835, %and.498.else ]
  br i1 %and.498.phi, label %and.499.then, label %and.499.else

choice.exit837:                                   ; preds = %choice.next839, %choice.case838
  %choice.res847 = phi i1 [ true, %choice.case838 ], [ false, %choice.next839 ]
  %nottmp848 = xor i1 %choice.res847, true
  br label %and.498.exit

choice.case838:                                   ; preds = %and.498.then
  br label %choice.exit837

choice.next839:                                   ; preds = %and.498.then
  br label %choice.exit837

and.499.then:                                     ; preds = %and.498.exit
  %var.load849 = load i64, ptr %var.c1, align 8
  %val.match853 = icmp eq i64 %var.load849, 58
  %val.match854 = icmp eq i64 %var.load849, 61
  %case.or855 = or i1 %val.match853, %val.match854
  %val.match856 = icmp eq i64 %var.load849, 32
  %case.or857 = or i1 %case.or855, %val.match856
  %val.match858 = icmp eq i64 %var.load849, 9
  %case.or859 = or i1 %case.or857, %val.match858
  %val.match860 = icmp eq i64 %var.load849, 41
  %case.or861 = or i1 %case.or859, %val.match860
  %val.match862 = icmp eq i64 %var.load849, 93
  %case.or863 = or i1 %case.or861, %val.match862
  %val.match864 = icmp eq i64 %var.load849, 125
  %case.or865 = or i1 %case.or863, %val.match864
  %val.match866 = icmp eq i64 %var.load849, 44
  %case.or867 = or i1 %case.or865, %val.match866
  %val.match868 = icmp eq i64 %var.load849, 59
  %case.or869 = or i1 %case.or867, %val.match868
  br i1 %case.or869, label %choice.case851, label %choice.next852

and.499.else:                                     ; preds = %and.498.exit
  br label %and.499.exit

and.499.exit:                                     ; preds = %and.499.else, %choice.exit850
  %and.499.phi = phi i1 [ %nottmp871, %choice.exit850 ], [ %and.498.phi, %and.499.else ]
  store i1 %and.499.phi, ptr %var.is_annot_colon, align 1
  %var.load872 = load i1, ptr %var.is_annot_colon, align 1
  br i1 %var.load872, label %choice.then873, label %choice.else874

choice.exit850:                                   ; preds = %choice.next852, %choice.case851
  %choice.res870 = phi i1 [ true, %choice.case851 ], [ false, %choice.next852 ]
  %nottmp871 = xor i1 %choice.res870, true
  br label %and.499.exit

choice.case851:                                   ; preds = %and.499.then
  br label %choice.exit850

choice.next852:                                   ; preds = %and.499.then
  br label %choice.exit850

choice.then873:                                   ; preds = %and.499.exit
  %b.load876 = load ptr, ptr %var.b, align 8
  %app.str.len877 = load i64, ptr @str.2.struct, align 8
  %app.str.len878 = and i64 %app.str.len877, 281474976710655
  %str.tag879 = lshr i64 %app.str.len877, 48
  %str.immortal880 = icmp eq i64 %str.tag879, 0
  br i1 %str.immortal880, label %str_ok882, label %str_gen_check881

choice.else874:                                   ; preds = %and.499.exit
  %b.load926 = load ptr, ptr %var.b, align 8
  %var.load927 = load i64, ptr %var.c, align 8
  %b.b.ge0928 = icmp sge i64 %var.load927, 0
  %b.b.le255929 = icmp sle i64 %var.load927, 255
  %b.byte.range930 = and i1 %b.b.ge0928, %b.b.le255929
  br i1 %b.byte.range930, label %b.byte_ok931, label %b.byte_err932

choice.exit875:                                   ; preds = %b.push_done943, %b.grow_done898
  br label %choice.exit706

str_gen_check881:                                 ; preds = %choice.then873
  %arena.cur884 = call ptr @dva_arena_current()
  %tag.valid885 = call i1 @dva_arena_validate_tag(ptr %arena.cur884, i64 %str.tag879)
  br i1 %tag.valid885, label %str_ok882, label %str_stale883

str_ok882:                                        ; preds = %str_stale883, %str_gen_check881, %choice.then873
  %b.app.cur.len886 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load876, i32 0, i32 0
  %b.app.cur.len887 = load i64, ptr %b.app.cur.len886, align 8
  %b.app.new.len888 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len887, i64 %app.str.len878)
  %sum889 = extractvalue { i64, i1 } %b.app.new.len888, 0
  %ovf890 = extractvalue { i64, i1 } %b.app.new.len888, 1
  br i1 %ovf890, label %str_overflow_abort892, label %b.app.new.len891

str_stale883:                                     ; preds = %str_gen_check881
  %45 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok882

b.app.new.len891:                                 ; preds = %str_overflow_abort892, %str_ok882
  %b.cap893 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load876, i32 0, i32 2
  %b.cap894 = load i64, ptr %b.cap893, align 8
  %b.need.grow895 = icmp slt i64 %b.cap894, %sum889
  br i1 %b.need.grow895, label %b.grow2896, label %b.nogrow2897

str_overflow_abort892:                            ; preds = %str_ok882
  %46 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len891

b.grow2896:                                       ; preds = %b.app.new.len891
  %b.cap2899 = mul i64 %b.cap894, 2
  %b.cap.small900 = icmp slt i64 %b.cap2899, 16
  %b.cap.grow901 = select i1 %b.cap.small900, i64 16, i64 %b.cap2899
  %b.cap.need902 = icmp slt i64 %b.cap.grow901, %sum889
  %b.new.cap903 = select i1 %b.cap.need902, i64 %sum889, i64 %b.cap.grow901
  %b.cur.len2904 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load876, i32 0, i32 0
  %b.cur.len2905 = load i64, ptr %b.cur.len2904, align 8
  %b.cur.data2906 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load876, i32 0, i32 1
  %b.cur.data2907 = load ptr, ptr %b.cur.data2906, align 8
  %b.new.buf.len2908 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap903, i64 1)
  %sum909 = extractvalue { i64, i1 } %b.new.buf.len2908, 0
  %ovf910 = extractvalue { i64, i1 } %b.new.buf.len2908, 1
  br i1 %ovf910, label %str_overflow_abort912, label %b.new.buf.len2911

b.nogrow2897:                                     ; preds = %b.app.new.len891
  br label %b.grow_done898

b.grow_done898:                                   ; preds = %b.nogrow2897, %b.new.buf.len2911
  %app.str.data918 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %b.app.data919 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load876, i32 0, i32 1
  %b.app.data920 = load ptr, ptr %b.app.data919, align 8
  %b.app.dst921 = getelementptr i8, ptr %b.app.data920, i64 %b.app.cur.len887
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst921, ptr align 1 %app.str.data918, i64 %app.str.len878, i1 false)
  %b.app.nul922 = getelementptr i8, ptr %b.app.data920, i64 %sum889
  store i8 0, ptr %b.app.nul922, align 1
  %b.len.gep923 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load876, i32 0, i32 0
  store i64 %sum889, ptr %b.len.gep923, align 8
  %var.load924 = load i64, ptr %"var.i'", align 8
  %addtmp925 = add i64 %var.load924, 1
  store i64 %addtmp925, ptr %"var.i'", align 8
  br label %choice.exit875

b.new.buf.len2911:                                ; preds = %str_overflow_abort912, %b.grow2896
  %arena.cur913 = call ptr @dva_arena_current()
  %b.new.buf2914 = call ptr @dva_arena_alloc(ptr %arena.cur913, i64 %sum909)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2914, ptr align 1 %b.cur.data2907, i64 %b.cur.len2905, i1 false)
  %b.grow2.nul915 = getelementptr i8, ptr %b.new.buf2914, i64 %b.cur.len2905
  store i8 0, ptr %b.grow2.nul915, align 1
  %b.new.data2.gep916 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load876, i32 0, i32 1
  store ptr %b.new.buf2914, ptr %b.new.data2.gep916, align 8
  %b.new.cap2.gep917 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load876, i32 0, i32 2
  store i64 %b.new.cap903, ptr %b.new.cap2.gep917, align 8
  br label %b.grow_done898

str_overflow_abort912:                            ; preds = %b.grow2896
  %47 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2911

b.byte_ok931:                                     ; preds = %b.byte_err932, %choice.else874
  %b.byte.i8933 = trunc i64 %var.load927 to i8
  %b.len934 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load926, i32 0, i32 0
  %b.len935 = load i64, ptr %b.len934, align 8
  %b.cap936 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load926, i32 0, i32 2
  %b.cap937 = load i64, ptr %b.cap936, align 8
  %b.data938 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load926, i32 0, i32 1
  %b.data939 = load ptr, ptr %b.data938, align 8
  %b.needs.grow940 = icmp eq i64 %b.len935, %b.cap937
  br i1 %b.needs.grow940, label %b.grow941, label %b.nogrow942

b.byte_err932:                                    ; preds = %choice.else874
  %48 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok931

b.grow941:                                        ; preds = %b.byte_ok931
  %b.cap2944 = mul i64 %b.cap937, 2
  %b.cap.small945 = icmp slt i64 %b.cap2944, 16
  %b.new.cap946 = select i1 %b.cap.small945, i64 16, i64 %b.cap2944
  %b.new.buf.len947 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap946, i64 1)
  %sum948 = extractvalue { i64, i1 } %b.new.buf.len947, 0
  %ovf949 = extractvalue { i64, i1 } %b.new.buf.len947, 1
  br i1 %ovf949, label %str_overflow_abort951, label %b.new.buf.len950

b.nogrow942:                                      ; preds = %b.byte_ok931
  br label %b.push_done943

b.push_done943:                                   ; preds = %b.nogrow942, %b.new.buf.len950
  %b.cur.data957 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load926, i32 0, i32 1
  %b.cur.data958 = load ptr, ptr %b.cur.data957, align 8
  %b.cur.len959 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load926, i32 0, i32 0
  %b.cur.len960 = load i64, ptr %b.cur.len959, align 8
  %b.byte.gep961 = getelementptr i8, ptr %b.cur.data958, i64 %b.cur.len960
  store i8 %b.byte.i8933, ptr %b.byte.gep961, align 1
  %b.next.len962 = add i64 %b.cur.len960, 1
  %b.nul963 = getelementptr i8, ptr %b.cur.data958, i64 %b.next.len962
  store i8 0, ptr %b.nul963, align 1
  %b.len.gep964 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load926, i32 0, i32 0
  store i64 %b.next.len962, ptr %b.len.gep964, align 8
  %var.load965 = load i64, ptr %"var.i'", align 8
  %addtmp966 = add i64 %var.load965, 1
  store i64 %addtmp966, ptr %"var.i'", align 8
  br label %choice.exit875

b.new.buf.len950:                                 ; preds = %str_overflow_abort951, %b.grow941
  %arena.cur952 = call ptr @dva_arena_current()
  %b.new.buf953 = call ptr @dva_arena_alloc(ptr %arena.cur952, i64 %sum948)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf953, ptr align 1 %b.data939, i64 %b.len935, i1 false)
  %b.grow.nul954 = getelementptr i8, ptr %b.new.buf953, i64 %b.len935
  store i8 0, ptr %b.grow.nul954, align 1
  %b.new.data.gep955 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load926, i32 0, i32 1
  store ptr %b.new.buf953, ptr %b.new.data.gep955, align 8
  %b.new.cap.gep956 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load926, i32 0, i32 2
  store i64 %b.new.cap946, ptr %b.new.cap.gep956, align 8
  br label %b.push_done943

str_overflow_abort951:                            ; preds = %b.grow941
  %49 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len950

b.freeze.check:                                   ; preds = %loop.exit.487
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data969, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data969, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data969, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len968, 1
  %arena.cur970 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur970, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data969, i64 %b.freeze.len968, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len968
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.487
  %b.freeze.data971 = phi ptr [ %b.freeze.data969, %loop.exit.487 ], [ %b.freeze.data969, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur972 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur972, i64 16)
  %str.build.len.gep973 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len968, ptr %str.build.len.gep973, align 8
  %str.build.data.gep974 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data971, ptr %str.build.data.gep974, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load967, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load967, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load967, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

define ptr @"formatter::make_spaces"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.500 = alloca i64, align 8
  %loop.idx.500 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.count = alloca i64, align 8
  store i64 %0, ptr %var.count, align 8
  %var.load = load i64, ptr %var.count, align 8
  %cmptmp = icmp sle i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret ptr @str.3.struct

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load1 = load i64, ptr %var.count, align 8
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
  store ptr %builder.new, ptr %var.b, align 8
  %var.load4 = load i64, ptr %var.count, align 8
  store i64 0, ptr %loop.idx.500, align 8
  br label %loop.header.500

str_overflow_abort:                               ; preds = %choice.exit
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len2

loop.header.500:                                  ; preds = %loop.latch.500, %b.buf.len2
  %counter.load = load i64, ptr %loop.idx.500, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load4
  br i1 %loop.cond, label %loop.body.500, label %loop.exit.nat.500

loop.body.500:                                    ; preds = %loop.header.500
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.500, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len5 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len5, i64 1)
  %sum6 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf7 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf7, label %str_overflow_abort9, label %b.rn.new.len8

loop.exit.nat.500:                                ; preds = %loop.header.500
  br label %loop.exit.500

loop.latch.500:                                   ; preds = %br.done.501
  %step.val = load i64, ptr %loop.step.500, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.500, align 8
  br label %loop.header.500

loop.exit.500:                                    ; preds = %loop.exit.nat.500
  %var.load20 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load20, i32 0, i32 0
  %b.freeze.len21 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load20, i32 0, i32 1
  %b.freeze.data22 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.rn.new.len8:                                    ; preds = %str_overflow_abort9, %loop.body.500
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap10 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap10, %sum6
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort9:                              ; preds = %loop.body.500
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len8

b.grow2:                                          ; preds = %b.rn.new.len8
  %b.cap2 = mul i64 %b.cap10, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum6
  %b.new.cap = select i1 %b.cap.need, i64 %sum6, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len211 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data212 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum13 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf14 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf14, label %str_overflow_abort16, label %b.new.buf.len215

b.nogrow2:                                        ; preds = %b.rn.new.len8
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len215
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data18 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data18, i64 %b.rn.cur.len5
  br i1 true, label %br.b1.501, label %br.c2.501

b.new.buf.len215:                                 ; preds = %str_overflow_abort16, %b.grow2
  %arena.cur17 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 %sum13)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data212, i64 %b.cur.len211, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len211
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort16:                             ; preds = %b.grow2
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len215

br.b1.501:                                        ; preds = %b.grow_done
  store i8 32, ptr %b.rn.dst, align 1
  br label %br.done.501

br.c2.501:                                        ; preds = %b.grow_done
  br i1 true, label %br.b2.501, label %br.c3.501

br.b2.501:                                        ; preds = %br.c2.501
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -96, ptr %br.dst1, align 1
  br label %br.done.501

br.c3.501:                                        ; preds = %br.c2.501
  br i1 true, label %br.b3.501, label %br.b4.501

br.b3.501:                                        ; preds = %br.c3.501
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -96, ptr %br.dst2.3, align 1
  br label %br.done.501

br.b4.501:                                        ; preds = %br.c3.501
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -96, ptr %br.dst3.4, align 1
  br label %br.done.501

br.done.501:                                      ; preds = %br.b4.501, %br.b3.501, %br.b2.501, %br.b1.501
  %br.nul = getelementptr i8, ptr %b.rn.data18, i64 %sum6
  store i8 0, ptr %br.nul, align 1
  %b.len.gep19 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum6, ptr %b.len.gep19, align 8
  br label %loop.latch.500

b.freeze.check:                                   ; preds = %loop.exit.500
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data22, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data22, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data22, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len21, 1
  %arena.cur23 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data22, i64 %b.freeze.len21, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len21
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.500
  %b.freeze.data24 = phi ptr [ %b.freeze.data22, %loop.exit.500 ], [ %b.freeze.data22, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur25 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len21, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data24, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load20, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load20, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load20, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define ptr @"formatter::strip_leading_ws"(ptr %0) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.502 = alloca i64, align 8
  %loop.idx.502 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %"var.i'" = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 0, ptr %"var.i'", align 8
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
  store i64 0, ptr %loop.idx.502, align 8
  br label %loop.header.502

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.502:                                  ; preds = %loop.latch.502, %str_ok
  %counter.load = load i64, ptr %loop.idx.502, align 8
  br label %loop.body.502

loop.body.502:                                    ; preds = %loop.header.502
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.502, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load3 = load i64, ptr %"var.i'", align 8
  %var.load4 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load3, %var.load4
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.502:                                ; No predecessors!
  br label %loop.exit.502

loop.latch.502:                                   ; preds = %choice.exit20
  %step.val = load i64, ptr %loop.step.502, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.502, align 8
  br label %loop.header.502

loop.exit.502:                                    ; preds = %choice.else, %choice.then, %loop.exit.nat.502
  %var.load22 = load ptr, ptr %var.s, align 8
  %s.read.len23 = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 0
  %s.read.len24 = load i64, ptr %s.read.len23, align 8
  %s.read.len25 = and i64 %s.read.len24, 281474976710655
  %str.tag26 = lshr i64 %s.read.len24, 48
  %str.immortal27 = icmp eq i64 %str.tag26, 0
  br i1 %str.immortal27, label %str_ok29, label %str_gen_check28

choice.then:                                      ; preds = %loop.body.502
  br label %loop.exit.502

choice.exit:                                      ; preds = %loop.body.502
  %var.load5 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %s.read.len6 = load i64, ptr %s.read.len, align 8
  %s.read.len7 = and i64 %s.read.len6, 281474976710655
  %str.tag8 = lshr i64 %s.read.len6, 48
  %str.immortal9 = icmp eq i64 %str.tag8, 0
  br i1 %str.immortal9, label %str_ok11, label %str_gen_check10

str_gen_check10:                                  ; preds = %choice.exit
  %arena.cur13 = call ptr @dva_arena_current()
  %tag.valid14 = call i1 @dva_arena_validate_tag(ptr %arena.cur13, i64 %str.tag8)
  br i1 %tag.valid14, label %str_ok11, label %str_stale12

str_ok11:                                         ; preds = %str_stale12, %str_gen_check10, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data, align 8
  %var.load16 = load i64, ptr %"var.i'", align 8
  %idx.neg = icmp slt i64 %var.load16, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale12:                                      ; preds = %str_gen_check10
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok11

idx_big_check:                                    ; preds = %str_ok11
  %idx.big = icmp sge i64 %var.load16, %s.read.len7
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data15, i64 %var.load16
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %val.match = icmp eq i64 %s.byte.val, 32
  %val.match18 = icmp eq i64 %s.byte.val, 9
  %case.or = or i1 %val.match, %val.match18
  br i1 %case.or, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %str_ok11
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.exit17:                                    ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %choice.then19, label %choice.else

choice.case:                                      ; preds = %idx_ok
  br label %choice.exit17

choice.next:                                      ; preds = %idx_ok
  br label %choice.exit17

choice.then19:                                    ; preds = %choice.exit17
  %var.load21 = load i64, ptr %"var.i'", align 8
  %addtmp = add i64 %var.load21, 1
  store i64 %addtmp, ptr %"var.i'", align 8
  br label %choice.exit20

choice.else:                                      ; preds = %choice.exit17
  br label %loop.exit.502

choice.exit20:                                    ; preds = %choice.then19
  br label %loop.latch.502

str_gen_check28:                                  ; preds = %loop.exit.502
  %arena.cur31 = call ptr @dva_arena_current()
  %tag.valid32 = call i1 @dva_arena_validate_tag(ptr %arena.cur31, i64 %str.tag26)
  br i1 %tag.valid32, label %str_ok29, label %str_stale30

str_ok29:                                         ; preds = %str_stale30, %str_gen_check28, %loop.exit.502
  %s.read.data33 = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 1
  %s.read.data34 = load ptr, ptr %s.read.data33, align 8
  %var.load35 = load i64, ptr %"var.i'", align 8
  %var.load36 = load i64, ptr %var.n, align 8
  %start.is_neg = icmp slt i64 %var.load35, 0
  %rel.start = add i64 %s.read.len25, %var.load35
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load35
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len25
  %final.start = select i1 %start.gt.len, i64 %s.read.len25, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load36, 0
  %rel.end = add i64 %s.read.len25, %var.load36
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load36
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len25
  %final.end = select i1 %end.gt.len, i64 %s.read.len25, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data34, i64 %final.start
  %arena.cur37 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  ret ptr %str.view

str_stale30:                                      ; preds = %str_gen_check28
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok29
}

define i1 @"formatter::all_indents_div3"(ptr %0) #1 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.ln = alloca ptr, align 8
  %loop.step.503 = alloca i64, align 8
  %loop.idx.503 = alloca i64, align 8
  %"var.ok'" = alloca i1, align 1
  %var.lines = alloca ptr, align 8
  store ptr %0, ptr %var.lines, align 8
  store i1 true, ptr %"var.ok'", align 1
  %var.load = load ptr, ptr %var.lines, align 8
  %a.load = load ptr, ptr %var.lines, align 8
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
  store ptr %a.create1, ptr %var.lines, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.lines, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len3 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data4 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.503, align 8
  br label %loop.header.503

loop.header.503:                                  ; preds = %loop.latch.503, %a.after
  %counter.load = load i64, ptr %loop.idx.503, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len3
  br i1 %loop.cond, label %loop.body.503, label %loop.exit.nat.503

loop.body.503:                                    ; preds = %loop.header.503
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.503, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data4, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.ln, align 8
  %var.load5 = load ptr, ptr %var.ln, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load5, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp eq i64 %fld.load, 0
  br i1 %cmptmp, label %and.504.then, label %and.504.else

loop.exit.nat.503:                                ; preds = %loop.header.503
  br label %loop.exit.503

loop.latch.503:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.503, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.503, align 8
  br label %loop.header.503

loop.exit.503:                                    ; preds = %choice.then17, %loop.exit.nat.503
  %var.load19 = load i1, ptr %"var.ok'", align 1
  ret i1 %var.load19

and.504.then:                                     ; preds = %loop.body.503
  %var.load6 = load ptr, ptr %var.ln, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load6, i32 0, i32 5
  %fld.load8 = load i1, ptr %fld.gep7, align 1
  %nottmp = xor i1 %fld.load8, true
  br label %and.504.exit

and.504.else:                                     ; preds = %loop.body.503
  br label %and.504.exit

and.504.exit:                                     ; preds = %and.504.else, %and.504.then
  %and.504.phi = phi i1 [ %nottmp, %and.504.then ], [ %cmptmp, %and.504.else ]
  br i1 %and.504.phi, label %and.505.then, label %and.505.else

and.505.then:                                     ; preds = %and.504.exit
  %var.load9 = load ptr, ptr %var.ln, align 8
  %fld.gep10 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load9, i32 0, i32 6
  %fld.load11 = load i1, ptr %fld.gep10, align 1
  %nottmp12 = xor i1 %fld.load11, true
  br label %and.505.exit

and.505.else:                                     ; preds = %and.504.exit
  br label %and.505.exit

and.505.exit:                                     ; preds = %and.505.else, %and.505.then
  %and.505.phi = phi i1 [ %nottmp12, %and.505.then ], [ %and.504.phi, %and.505.else ]
  br i1 %and.505.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.505.exit
  %var.load13 = load ptr, ptr %var.ln, align 8
  %fld.gep14 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load13, i32 0, i32 3
  %fld.load15 = load i64, ptr %fld.gep14, align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

choice.exit:                                      ; preds = %choice.exit18, %and.505.exit
  br label %loop.latch.503

div.not_zero:                                     ; preds = %div.zero_abort, %choice.then
  %div.is.min = icmp eq i64 %fld.load15, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.then
  %1 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %modtmp = srem i64 %fld.load15, 3
  %cmptmp16 = icmp ne i64 %modtmp, 0
  br i1 %cmptmp16, label %choice.then17, label %choice.exit18

div.ovf_abort:                                    ; preds = %div.not_zero
  %2 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

choice.then17:                                    ; preds = %div.ok
  store i1 false, ptr %"var.ok'", align 1
  br label %loop.exit.503

choice.exit18:                                    ; preds = %div.ok
  br label %choice.exit
}

define i64 @"formatter::find_stack_level"(ptr %0, i64 %1, i64 %2) #1 {
entry:
  %var.v = alloca i64, align 8
  %var._26 = alloca ptr, align 8
  %var._24 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.506 = alloca i64, align 8
  %loop.idx.506 = alloca i64, align 8
  %"var.found'" = alloca i64, align 8
  %"var.idx'" = alloca i64, align 8
  %var.raw = alloca i64, align 8
  %var.top = alloca i64, align 8
  %var.stack = alloca ptr, align 8
  store ptr %0, ptr %var.stack, align 8
  store i64 %1, ptr %var.top, align 8
  store i64 %2, ptr %var.raw, align 8
  %var.load = load i64, ptr %var.top, align 8
  %subtmp = sub i64 %var.load, 1
  store i64 %subtmp, ptr %"var.idx'", align 8
  store i64 0, ptr %"var.found'", align 8
  store i64 0, ptr %loop.idx.506, align 8
  br label %loop.header.506

loop.header.506:                                  ; preds = %loop.latch.506, %entry
  %counter.load = load i64, ptr %loop.idx.506, align 8
  br label %loop.body.506

loop.body.506:                                    ; preds = %loop.header.506
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.506, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load1 = load i64, ptr %"var.idx'", align 8
  %cmptmp = icmp slt i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.506:                                ; No predecessors!
  br label %loop.exit.506

loop.latch.506:                                   ; preds = %choice.exit32
  %step.val = load i64, ptr %loop.step.506, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.506, align 8
  br label %loop.header.506

loop.exit.506:                                    ; preds = %choice.then30, %choice.then, %loop.exit.nat.506
  %var.load36 = load i64, ptr %"var.found'", align 8
  ret i64 %var.load36

choice.then:                                      ; preds = %loop.body.506
  br label %loop.exit.506

choice.exit:                                      ; preds = %loop.body.506
  %var.load2 = load ptr, ptr %var.stack, align 8
  %a.load = load ptr, ptr %var.stack, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %choice.exit
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
  store ptr %a.create3, ptr %var.stack, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.exit
  %a.load2 = load ptr, ptr %var.stack, align 8
  %var.load5 = load i64, ptr %"var.idx'", align 8
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
  store ptr @str.4.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.5.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 357, ptr %err.line.gep, align 8
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
  %arena.cur9 = call ptr @dva_arena_current()
  %err.alloc10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 56)
  %err.code.gep11 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 0
  store i64 4011, ptr %err.code.gep11, align 8
  %err.msg.gep12 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep12, align 8
  %err.file.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 2
  store ptr @str.5.struct, ptr %err.file.gep13, align 8
  %err.line.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 3
  store i64 357, ptr %err.line.gep14, align 8
  %err.col.gep15 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 4
  store i64 23, ptr %err.col.gep15, align 8
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
  br i1 %ram.tag20, label %choice.then21, label %choice.else

choice.then21:                                    ; preds = %a.rd.done
  %ram.pay23 = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %ram.pay23, ptr %var._24, align 8
  br label %choice.exit22

choice.else:                                      ; preds = %a.rd.done
  %ram.pay25 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay25 to ptr
  store ptr %pay.ptr, ptr %var._26, align 8
  br label %choice.exit22

choice.exit22:                                    ; preds = %choice.else, %choice.then21
  %choice.res = phi i64 [ %ram.pay23, %choice.then21 ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.v, align 8
  %var.load27 = load i64, ptr %var.v, align 8
  %var.load28 = load i64, ptr %var.raw, align 8
  %cmptmp29 = icmp sle i64 %var.load27, %var.load28
  br i1 %cmptmp29, label %choice.then30, label %choice.else31

choice.then30:                                    ; preds = %choice.exit22
  %var.load33 = load i64, ptr %"var.idx'", align 8
  store i64 %var.load33, ptr %"var.found'", align 8
  br label %loop.exit.506

choice.else31:                                    ; preds = %choice.exit22
  %var.load34 = load i64, ptr %"var.idx'", align 8
  %subtmp35 = sub i64 %var.load34, 1
  store i64 %subtmp35, ptr %"var.idx'", align 8
  br label %choice.exit32

choice.exit32:                                    ; preds = %choice.else31
  br label %loop.latch.506
}

define ptr @"formatter::format_lines"(ptr %0) #1 {
entry:
  %var._770 = alloca i64, align 8
  %var._i769 = alloca i64, align 8
  %loop.step.514 = alloca i64, align 8
  %loop.idx.514 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.res = alloca ptr, align 8
  %var.canon_indent = alloca i64, align 8
  %var._582 = alloca ptr, align 8
  %var._579 = alloca i64, align 8
  %var._515 = alloca i64, align 8
  %var._i514 = alloca i64, align 8
  %loop.step.511 = alloca i64, align 8
  %loop.idx.511 = alloca i64, align 8
  %var._484 = alloca ptr, align 8
  %var._483 = alloca ptr, align 8
  %var._482 = alloca ptr, align 8
  %var.top_raw = alloca i64, align 8
  %var._386 = alloca ptr, align 8
  %var._384 = alloca i64, align 8
  %var.raw = alloca i64, align 8
  %var.c_indent = alloca i64, align 8
  %var.lvl = alloca i64, align 8
  %var.body = alloca ptr, align 8
  %var.max_blanks = alloca i64, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.ln = alloca ptr, align 8
  %loop.step.507 = alloca i64, align 8
  %loop.idx.507 = alloca i64, align 8
  %"var.cur_canon_indent'" = alloca i64, align 8
  %"var.started'" = alloca i1, align 1
  %"var.blank_run'" = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %"var.top'" = alloca i64, align 8
  %var.stack = alloca ptr, align 8
  %var.div3 = alloca i1, align 1
  %var.lines = alloca ptr, align 8
  store ptr %0, ptr %var.lines, align 8
  %var.load = load ptr, ptr %var.lines, align 8
  %a.load = load ptr, ptr %var.lines, align 8
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
  store ptr %a.create1, ptr %var.lines, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.lines, align 8
  %call.res = call i1 @"formatter::all_indents_div3"(ptr %a.load2)
  store i1 %call.res, ptr %var.div3, align 1
  %arena.cur3 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
  %a.buf5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep6 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep6, align 8
  %a.data.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf5, ptr %a.data.gep7, align 8
  %a.cap.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep8, align 8
  store ptr %a.new, ptr %var.stack, align 8
  %a.load9 = load ptr, ptr %var.stack, align 8
  %a.null10 = icmp eq ptr %a.load9, null
  br i1 %a.null10, label %a.create11, label %a.after12

a.create11:                                       ; preds = %a.after
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
  store ptr %a.create14, ptr %var.stack, align 8
  br label %a.after12

a.after12:                                        ; preds = %a.create11, %a.after
  %a.load220 = load ptr, ptr %var.stack, align 8
  br label %a.check

a.check:                                          ; preds = %a.after12
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load220, i32 0, i32 0
  %a.len21 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load220, i32 0, i32 2
  %a.cap22 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len21, %a.cap22
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load220)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load220, i32 0, i32 1
  %a.cur.data23 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load220, i32 0, i32 0
  %a.cur.len24 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data23, i64 %a.cur.len24
  store i64 0, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len24, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load220, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  store i64 1, ptr %"var.top'", align 8
  %arena.cur25 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep26 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4096, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len27

b.buf.len27:                                      ; preds = %str_overflow_abort, %a.store
  %arena.cur28 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep26, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 4096, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.out, align 8
  store i64 0, ptr %"var.blank_run'", align 8
  store i1 false, ptr %"var.started'", align 1
  store i64 0, ptr %"var.cur_canon_indent'", align 8
  %var.load29 = load ptr, ptr %var.lines, align 8
  %a.load30 = load ptr, ptr %var.lines, align 8
  %a.null31 = icmp eq ptr %a.load30, null
  br i1 %a.null31, label %a.create32, label %a.after33

str_overflow_abort:                               ; preds = %a.store
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len27

a.create32:                                       ; preds = %b.buf.len27
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
  store ptr %a.create35, ptr %var.lines, align 8
  br label %a.after33

a.after33:                                        ; preds = %a.create32, %b.buf.len27
  %a.load241 = load ptr, ptr %var.lines, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load241, i32 0, i32 0
  %arr.cycle.len42 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load241, i32 0, i32 1
  %arr.cycle.data43 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.507, align 8
  br label %loop.header.507

loop.header.507:                                  ; preds = %loop.latch.507, %a.after33
  %counter.load = load i64, ptr %loop.idx.507, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len42
  br i1 %loop.cond, label %loop.body.507, label %loop.exit.nat.507

loop.body.507:                                    ; preds = %loop.header.507
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.507, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data43, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.ln, align 8
  %var.load44 = load ptr, ptr %var.ln, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load44, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp ne i64 %fld.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

loop.exit.nat.507:                                ; preds = %loop.header.507
  br label %loop.exit.507

loop.latch.507:                                   ; preds = %choice.exit
  %step.val749 = load i64, ptr %loop.step.507, align 8
  %loop.next750 = add i64 %counter.load, %step.val749
  store i64 %loop.next750, ptr %loop.idx.507, align 8
  br label %loop.header.507

loop.exit.507:                                    ; preds = %loop.exit.nat.507
  %var.load751 = load ptr, ptr %var.out, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load751, i32 0, i32 0
  %b.freeze.len752 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load751, i32 0, i32 1
  %b.freeze.data753 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.then:                                      ; preds = %loop.body.507
  store i1 true, ptr %"var.started'", align 1
  store i64 0, ptr %"var.blank_run'", align 8
  %b.load = load ptr, ptr %var.out, align 8
  %var.load45 = load ptr, ptr %var.ln, align 8
  %fld.gep46 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load45, i32 0, i32 0
  %fld.load47 = load ptr, ptr %fld.gep46, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %fld.load47, i32 0, i32 0
  %app.str.len48 = load i64, ptr %app.str.len, align 8
  %app.str.len49 = and i64 %app.str.len48, 281474976710655
  %str.tag = lshr i64 %app.str.len48, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.else:                                      ; preds = %loop.body.507
  %var.load100 = load ptr, ptr %var.ln, align 8
  %fld.gep101 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load100, i32 0, i32 5
  %fld.load102 = load i1, ptr %fld.gep101, align 1
  br i1 %fld.load102, label %choice.then103, label %choice.else104

choice.exit:                                      ; preds = %choice.exit105, %br.done.508
  br label %loop.latch.507

str_gen_check:                                    ; preds = %choice.then
  %arena.cur50 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur50, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.then
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len51 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len51, i64 %app.str.len49)
  %sum52 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf53 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf53, label %str_overflow_abort55, label %b.app.new.len54

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

b.app.new.len54:                                  ; preds = %str_overflow_abort55, %str_ok
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap56 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap56, %sum52
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort55:                             ; preds = %str_ok
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len54

b.grow2:                                          ; preds = %b.app.new.len54
  %b.cap2 = mul i64 %b.cap56, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum52
  %b.new.cap = select i1 %b.cap.need, i64 %sum52, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len257 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data258 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum59 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf60 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf60, label %str_overflow_abort62, label %b.new.buf.len261

b.nogrow2:                                        ; preds = %b.app.new.len54
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len261
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %fld.load47, i32 0, i32 1
  %app.str.data64 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data65 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data65, i64 %b.app.cur.len51
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data64, i64 %app.str.len49, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data65, i64 %sum52
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep66 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum52, ptr %b.len.gep66, align 8
  %b.load67 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load67, i32 0, i32 0
  %b.rn.cur.len68 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len68, i64 1)
  %sum69 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf70 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf70, label %str_overflow_abort72, label %b.rn.new.len71

b.new.buf.len261:                                 ; preds = %str_overflow_abort62, %b.grow2
  %arena.cur63 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 %sum59)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data258, i64 %b.cur.len257, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len257
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort62:                             ; preds = %b.grow2
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len261

b.rn.new.len71:                                   ; preds = %str_overflow_abort72, %b.grow_done
  %b.cap73 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load67, i32 0, i32 2
  %b.cap74 = load i64, ptr %b.cap73, align 8
  %b.need.grow75 = icmp slt i64 %b.cap74, %sum69
  br i1 %b.need.grow75, label %b.grow276, label %b.nogrow277

str_overflow_abort72:                             ; preds = %b.grow_done
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len71

b.grow276:                                        ; preds = %b.rn.new.len71
  %b.cap279 = mul i64 %b.cap74, 2
  %b.cap.small80 = icmp slt i64 %b.cap279, 16
  %b.cap.grow81 = select i1 %b.cap.small80, i64 16, i64 %b.cap279
  %b.cap.need82 = icmp slt i64 %b.cap.grow81, %sum69
  %b.new.cap83 = select i1 %b.cap.need82, i64 %sum69, i64 %b.cap.grow81
  %b.cur.len284 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load67, i32 0, i32 0
  %b.cur.len285 = load i64, ptr %b.cur.len284, align 8
  %b.cur.data286 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load67, i32 0, i32 1
  %b.cur.data287 = load ptr, ptr %b.cur.data286, align 8
  %b.new.buf.len288 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap83, i64 1)
  %sum89 = extractvalue { i64, i1 } %b.new.buf.len288, 0
  %ovf90 = extractvalue { i64, i1 } %b.new.buf.len288, 1
  br i1 %ovf90, label %str_overflow_abort92, label %b.new.buf.len291

b.nogrow277:                                      ; preds = %b.rn.new.len71
  br label %b.grow_done78

b.grow_done78:                                    ; preds = %b.nogrow277, %b.new.buf.len291
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load67, i32 0, i32 1
  %b.rn.data98 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data98, i64 %b.rn.cur.len68
  br i1 true, label %br.b1.508, label %br.c2.508

b.new.buf.len291:                                 ; preds = %str_overflow_abort92, %b.grow276
  %arena.cur93 = call ptr @dva_arena_current()
  %b.new.buf294 = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 %sum89)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf294, ptr align 1 %b.cur.data287, i64 %b.cur.len285, i1 false)
  %b.grow2.nul95 = getelementptr i8, ptr %b.new.buf294, i64 %b.cur.len285
  store i8 0, ptr %b.grow2.nul95, align 1
  %b.new.data2.gep96 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load67, i32 0, i32 1
  store ptr %b.new.buf294, ptr %b.new.data2.gep96, align 8
  %b.new.cap2.gep97 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load67, i32 0, i32 2
  store i64 %b.new.cap83, ptr %b.new.cap2.gep97, align 8
  br label %b.grow_done78

str_overflow_abort92:                             ; preds = %b.grow276
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len291

br.b1.508:                                        ; preds = %b.grow_done78
  store i8 10, ptr %b.rn.dst, align 1
  br label %br.done.508

br.c2.508:                                        ; preds = %b.grow_done78
  br i1 true, label %br.b2.508, label %br.c3.508

br.b2.508:                                        ; preds = %br.c2.508
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -118, ptr %br.dst1, align 1
  br label %br.done.508

br.c3.508:                                        ; preds = %br.c2.508
  br i1 true, label %br.b3.508, label %br.b4.508

br.b3.508:                                        ; preds = %br.c3.508
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -118, ptr %br.dst2.3, align 1
  br label %br.done.508

br.b4.508:                                        ; preds = %br.c3.508
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -118, ptr %br.dst3.4, align 1
  br label %br.done.508

br.done.508:                                      ; preds = %br.b4.508, %br.b3.508, %br.b2.508, %br.b1.508
  %br.nul = getelementptr i8, ptr %b.rn.data98, i64 %sum69
  store i8 0, ptr %br.nul, align 1
  %b.len.gep99 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load67, i32 0, i32 0
  store i64 %sum69, ptr %b.len.gep99, align 8
  br label %choice.exit

choice.then103:                                   ; preds = %choice.else
  %var.load106 = load i1, ptr %"var.started'", align 1
  br i1 %var.load106, label %choice.then107, label %choice.exit108

choice.else104:                                   ; preds = %choice.else
  store i1 true, ptr %"var.started'", align 1
  store i64 0, ptr %"var.blank_run'", align 8
  %var.load164 = load ptr, ptr %var.ln, align 8
  %fld.gep165 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load164, i32 0, i32 0
  %fld.load166 = load ptr, ptr %fld.gep165, align 8
  %call.res167 = call ptr @"formatter::strip_leading_ws"(ptr %fld.load166)
  store ptr %call.res167, ptr %var.body, align 8
  %var.load168 = load ptr, ptr %var.ln, align 8
  %fld.gep169 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load168, i32 0, i32 6
  %fld.load170 = load i1, ptr %fld.gep169, align 1
  br i1 %fld.load170, label %choice.then171, label %choice.else172

choice.exit105:                                   ; preds = %choice.exit173, %choice.exit108
  br label %choice.exit

choice.then107:                                   ; preds = %choice.then103
  %var.load109 = load i64, ptr %"var.blank_run'", align 8
  %addtmp = add i64 %var.load109, 1
  store i64 %addtmp, ptr %"var.blank_run'", align 8
  %var.load110 = load i64, ptr %"var.cur_canon_indent'", align 8
  %cmptmp111 = icmp eq i64 %var.load110, 0
  br i1 %cmptmp111, label %choice.then112, label %choice.else113

choice.exit108:                                   ; preds = %choice.exit119, %choice.then103
  br label %choice.exit105

choice.then112:                                   ; preds = %choice.then107
  br label %choice.exit114

choice.else113:                                   ; preds = %choice.then107
  br label %choice.exit114

choice.exit114:                                   ; preds = %choice.else113, %choice.then112
  %choice.res = phi i64 [ 2, %choice.then112 ], [ 1, %choice.else113 ]
  store i64 %choice.res, ptr %var.max_blanks, align 8
  %var.load115 = load i64, ptr %"var.blank_run'", align 8
  %var.load116 = load i64, ptr %var.max_blanks, align 8
  %cmptmp117 = icmp sle i64 %var.load115, %var.load116
  br i1 %cmptmp117, label %choice.then118, label %choice.exit119

choice.then118:                                   ; preds = %choice.exit114
  %b.load120 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len121 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load120, i32 0, i32 0
  %b.rn.cur.len122 = load i64, ptr %b.rn.cur.len121, align 8
  %b.rn.new.len123 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len122, i64 1)
  %sum124 = extractvalue { i64, i1 } %b.rn.new.len123, 0
  %ovf125 = extractvalue { i64, i1 } %b.rn.new.len123, 1
  br i1 %ovf125, label %str_overflow_abort127, label %b.rn.new.len126

choice.exit119:                                   ; preds = %br.done.509, %choice.exit114
  br label %choice.exit108

b.rn.new.len126:                                  ; preds = %str_overflow_abort127, %choice.then118
  %b.cap128 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load120, i32 0, i32 2
  %b.cap129 = load i64, ptr %b.cap128, align 8
  %b.need.grow130 = icmp slt i64 %b.cap129, %sum124
  br i1 %b.need.grow130, label %b.grow2131, label %b.nogrow2132

str_overflow_abort127:                            ; preds = %choice.then118
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len126

b.grow2131:                                       ; preds = %b.rn.new.len126
  %b.cap2134 = mul i64 %b.cap129, 2
  %b.cap.small135 = icmp slt i64 %b.cap2134, 16
  %b.cap.grow136 = select i1 %b.cap.small135, i64 16, i64 %b.cap2134
  %b.cap.need137 = icmp slt i64 %b.cap.grow136, %sum124
  %b.new.cap138 = select i1 %b.cap.need137, i64 %sum124, i64 %b.cap.grow136
  %b.cur.len2139 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load120, i32 0, i32 0
  %b.cur.len2140 = load i64, ptr %b.cur.len2139, align 8
  %b.cur.data2141 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load120, i32 0, i32 1
  %b.cur.data2142 = load ptr, ptr %b.cur.data2141, align 8
  %b.new.buf.len2143 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap138, i64 1)
  %sum144 = extractvalue { i64, i1 } %b.new.buf.len2143, 0
  %ovf145 = extractvalue { i64, i1 } %b.new.buf.len2143, 1
  br i1 %ovf145, label %str_overflow_abort147, label %b.new.buf.len2146

b.nogrow2132:                                     ; preds = %b.rn.new.len126
  br label %b.grow_done133

b.grow_done133:                                   ; preds = %b.nogrow2132, %b.new.buf.len2146
  %b.rn.data153 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load120, i32 0, i32 1
  %b.rn.data154 = load ptr, ptr %b.rn.data153, align 8
  %b.rn.dst155 = getelementptr i8, ptr %b.rn.data154, i64 %b.rn.cur.len122
  br i1 true, label %br.b1.509, label %br.c2.509

b.new.buf.len2146:                                ; preds = %str_overflow_abort147, %b.grow2131
  %arena.cur148 = call ptr @dva_arena_current()
  %b.new.buf2149 = call ptr @dva_arena_alloc(ptr %arena.cur148, i64 %sum144)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2149, ptr align 1 %b.cur.data2142, i64 %b.cur.len2140, i1 false)
  %b.grow2.nul150 = getelementptr i8, ptr %b.new.buf2149, i64 %b.cur.len2140
  store i8 0, ptr %b.grow2.nul150, align 1
  %b.new.data2.gep151 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load120, i32 0, i32 1
  store ptr %b.new.buf2149, ptr %b.new.data2.gep151, align 8
  %b.new.cap2.gep152 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load120, i32 0, i32 2
  store i64 %b.new.cap138, ptr %b.new.cap2.gep152, align 8
  br label %b.grow_done133

str_overflow_abort147:                            ; preds = %b.grow2131
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2146

br.b1.509:                                        ; preds = %b.grow_done133
  store i8 10, ptr %b.rn.dst155, align 1
  br label %br.done.509

br.c2.509:                                        ; preds = %b.grow_done133
  br i1 true, label %br.b2.509, label %br.c3.509

br.b2.509:                                        ; preds = %br.c2.509
  store i8 -64, ptr %b.rn.dst155, align 1
  %br.dst1156 = getelementptr i8, ptr %b.rn.dst155, i64 1
  store i8 -118, ptr %br.dst1156, align 1
  br label %br.done.509

br.c3.509:                                        ; preds = %br.c2.509
  br i1 true, label %br.b3.509, label %br.b4.509

br.b3.509:                                        ; preds = %br.c3.509
  store i8 -32, ptr %b.rn.dst155, align 1
  %br.dst1.3157 = getelementptr i8, ptr %b.rn.dst155, i64 1
  store i8 -128, ptr %br.dst1.3157, align 1
  %br.dst2.3158 = getelementptr i8, ptr %b.rn.dst155, i64 2
  store i8 -118, ptr %br.dst2.3158, align 1
  br label %br.done.509

br.b4.509:                                        ; preds = %br.c3.509
  store i8 -16, ptr %b.rn.dst155, align 1
  %br.dst1.4159 = getelementptr i8, ptr %b.rn.dst155, i64 1
  store i8 -128, ptr %br.dst1.4159, align 1
  %br.dst2.4160 = getelementptr i8, ptr %b.rn.dst155, i64 2
  store i8 -128, ptr %br.dst2.4160, align 1
  %br.dst3.4161 = getelementptr i8, ptr %b.rn.dst155, i64 3
  store i8 -118, ptr %br.dst3.4161, align 1
  br label %br.done.509

br.done.509:                                      ; preds = %br.b4.509, %br.b3.509, %br.b2.509, %br.b1.509
  %br.nul162 = getelementptr i8, ptr %b.rn.data154, i64 %sum124
  store i8 0, ptr %br.nul162, align 1
  %b.len.gep163 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load120, i32 0, i32 0
  store i64 %sum124, ptr %b.len.gep163, align 8
  br label %choice.exit119

choice.then171:                                   ; preds = %choice.else104
  %var.load174 = load i1, ptr %var.div3, align 1
  br i1 %var.load174, label %choice.then175, label %choice.else176

choice.else172:                                   ; preds = %choice.else104
  %var.load348 = load ptr, ptr %var.ln, align 8
  %fld.gep349 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load348, i32 0, i32 3
  %fld.load350 = load i64, ptr %fld.gep349, align 8
  store i64 %fld.load350, ptr %var.raw, align 8
  %var.load351 = load ptr, ptr %var.stack, align 8
  %a.load352 = load ptr, ptr %var.stack, align 8
  %a.null353 = icmp eq ptr %a.load352, null
  br i1 %a.null353, label %a.create354, label %a.after355

choice.exit173:                                   ; preds = %br.done.513, %br.done.510
  br label %choice.exit105

choice.then175:                                   ; preds = %choice.then171
  %var.load178 = load ptr, ptr %var.ln, align 8
  %fld.gep179 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load178, i32 0, i32 3
  %fld.load180 = load i64, ptr %fld.gep179, align 8
  br label %choice.exit177

choice.else176:                                   ; preds = %choice.then171
  %var.load181 = load ptr, ptr %var.stack, align 8
  %a.load182 = load ptr, ptr %var.stack, align 8
  %a.null183 = icmp eq ptr %a.load182, null
  br i1 %a.null183, label %a.create184, label %a.after185

choice.exit177:                                   ; preds = %a.after185, %choice.then175
  %choice.res200 = phi i64 [ %fld.load180, %choice.then175 ], [ %multmp, %a.after185 ]
  store i64 %choice.res200, ptr %var.c_indent, align 8
  %b.load201 = load ptr, ptr %var.out, align 8
  %var.load202 = load i64, ptr %var.c_indent, align 8
  %call.res203 = call ptr @"formatter::make_spaces"(i64 %var.load202)
  %app.str.len204 = getelementptr inbounds { i64, ptr }, ptr %call.res203, i32 0, i32 0
  %app.str.len205 = load i64, ptr %app.str.len204, align 8
  %app.str.len206 = and i64 %app.str.len205, 281474976710655
  %str.tag207 = lshr i64 %app.str.len205, 48
  %str.immortal208 = icmp eq i64 %str.tag207, 0
  br i1 %str.immortal208, label %str_ok210, label %str_gen_check209

a.create184:                                      ; preds = %choice.else176
  %arena.cur186 = call ptr @dva_arena_current()
  %a.create187 = call ptr @dva_arena_alloc(ptr %arena.cur186, i64 24)
  %arena.cur188 = call ptr @dva_arena_current()
  %a.buf189 = call ptr @dva_arena_alloc(ptr %arena.cur188, i64 128)
  %a.len.gep190 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create187, i32 0, i32 0
  store i64 0, ptr %a.len.gep190, align 8
  %a.data.gep191 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create187, i32 0, i32 1
  store ptr %a.buf189, ptr %a.data.gep191, align 8
  %a.cap.gep192 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create187, i32 0, i32 2
  store i64 16, ptr %a.cap.gep192, align 8
  store ptr %a.create187, ptr %var.stack, align 8
  br label %a.after185

a.after185:                                       ; preds = %a.create184, %choice.else176
  %a.load2193 = load ptr, ptr %var.stack, align 8
  %var.load194 = load i64, ptr %"var.top'", align 8
  %var.load195 = load ptr, ptr %var.ln, align 8
  %fld.gep196 = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load195, i32 0, i32 3
  %fld.load197 = load i64, ptr %fld.gep196, align 8
  %call.res198 = call i64 @"formatter::find_stack_level"(ptr %a.load2193, i64 %var.load194, i64 %fld.load197)
  store i64 %call.res198, ptr %var.lvl, align 8
  %var.load199 = load i64, ptr %var.lvl, align 8
  %multmp = mul i64 %var.load199, 3
  br label %choice.exit177

str_gen_check209:                                 ; preds = %choice.exit177
  %arena.cur212 = call ptr @dva_arena_current()
  %tag.valid213 = call i1 @dva_arena_validate_tag(ptr %arena.cur212, i64 %str.tag207)
  br i1 %tag.valid213, label %str_ok210, label %str_stale211

str_ok210:                                        ; preds = %str_stale211, %str_gen_check209, %choice.exit177
  %b.app.cur.len214 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load201, i32 0, i32 0
  %b.app.cur.len215 = load i64, ptr %b.app.cur.len214, align 8
  %b.app.new.len216 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len215, i64 %app.str.len206)
  %sum217 = extractvalue { i64, i1 } %b.app.new.len216, 0
  %ovf218 = extractvalue { i64, i1 } %b.app.new.len216, 1
  br i1 %ovf218, label %str_overflow_abort220, label %b.app.new.len219

str_stale211:                                     ; preds = %str_gen_check209
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok210

b.app.new.len219:                                 ; preds = %str_overflow_abort220, %str_ok210
  %b.cap221 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load201, i32 0, i32 2
  %b.cap222 = load i64, ptr %b.cap221, align 8
  %b.need.grow223 = icmp slt i64 %b.cap222, %sum217
  br i1 %b.need.grow223, label %b.grow2224, label %b.nogrow2225

str_overflow_abort220:                            ; preds = %str_ok210
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len219

b.grow2224:                                       ; preds = %b.app.new.len219
  %b.cap2227 = mul i64 %b.cap222, 2
  %b.cap.small228 = icmp slt i64 %b.cap2227, 16
  %b.cap.grow229 = select i1 %b.cap.small228, i64 16, i64 %b.cap2227
  %b.cap.need230 = icmp slt i64 %b.cap.grow229, %sum217
  %b.new.cap231 = select i1 %b.cap.need230, i64 %sum217, i64 %b.cap.grow229
  %b.cur.len2232 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load201, i32 0, i32 0
  %b.cur.len2233 = load i64, ptr %b.cur.len2232, align 8
  %b.cur.data2234 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load201, i32 0, i32 1
  %b.cur.data2235 = load ptr, ptr %b.cur.data2234, align 8
  %b.new.buf.len2236 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap231, i64 1)
  %sum237 = extractvalue { i64, i1 } %b.new.buf.len2236, 0
  %ovf238 = extractvalue { i64, i1 } %b.new.buf.len2236, 1
  br i1 %ovf238, label %str_overflow_abort240, label %b.new.buf.len2239

b.nogrow2225:                                     ; preds = %b.app.new.len219
  br label %b.grow_done226

b.grow_done226:                                   ; preds = %b.nogrow2225, %b.new.buf.len2239
  %app.str.data246 = getelementptr inbounds { i64, ptr }, ptr %call.res203, i32 0, i32 1
  %app.str.data247 = load ptr, ptr %app.str.data246, align 8
  %b.app.data248 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load201, i32 0, i32 1
  %b.app.data249 = load ptr, ptr %b.app.data248, align 8
  %b.app.dst250 = getelementptr i8, ptr %b.app.data249, i64 %b.app.cur.len215
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst250, ptr align 1 %app.str.data247, i64 %app.str.len206, i1 false)
  %b.app.nul251 = getelementptr i8, ptr %b.app.data249, i64 %sum217
  store i8 0, ptr %b.app.nul251, align 1
  %b.len.gep252 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load201, i32 0, i32 0
  store i64 %sum217, ptr %b.len.gep252, align 8
  %b.load253 = load ptr, ptr %var.out, align 8
  %var.load254 = load ptr, ptr %var.body, align 8
  %app.str.len255 = getelementptr inbounds { i64, ptr }, ptr %var.load254, i32 0, i32 0
  %app.str.len256 = load i64, ptr %app.str.len255, align 8
  %app.str.len257 = and i64 %app.str.len256, 281474976710655
  %str.tag258 = lshr i64 %app.str.len256, 48
  %str.immortal259 = icmp eq i64 %str.tag258, 0
  br i1 %str.immortal259, label %str_ok261, label %str_gen_check260

b.new.buf.len2239:                                ; preds = %str_overflow_abort240, %b.grow2224
  %arena.cur241 = call ptr @dva_arena_current()
  %b.new.buf2242 = call ptr @dva_arena_alloc(ptr %arena.cur241, i64 %sum237)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2242, ptr align 1 %b.cur.data2235, i64 %b.cur.len2233, i1 false)
  %b.grow2.nul243 = getelementptr i8, ptr %b.new.buf2242, i64 %b.cur.len2233
  store i8 0, ptr %b.grow2.nul243, align 1
  %b.new.data2.gep244 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load201, i32 0, i32 1
  store ptr %b.new.buf2242, ptr %b.new.data2.gep244, align 8
  %b.new.cap2.gep245 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load201, i32 0, i32 2
  store i64 %b.new.cap231, ptr %b.new.cap2.gep245, align 8
  br label %b.grow_done226

str_overflow_abort240:                            ; preds = %b.grow2224
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2239

str_gen_check260:                                 ; preds = %b.grow_done226
  %arena.cur263 = call ptr @dva_arena_current()
  %tag.valid264 = call i1 @dva_arena_validate_tag(ptr %arena.cur263, i64 %str.tag258)
  br i1 %tag.valid264, label %str_ok261, label %str_stale262

str_ok261:                                        ; preds = %str_stale262, %str_gen_check260, %b.grow_done226
  %b.app.cur.len265 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load253, i32 0, i32 0
  %b.app.cur.len266 = load i64, ptr %b.app.cur.len265, align 8
  %b.app.new.len267 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len266, i64 %app.str.len257)
  %sum268 = extractvalue { i64, i1 } %b.app.new.len267, 0
  %ovf269 = extractvalue { i64, i1 } %b.app.new.len267, 1
  br i1 %ovf269, label %str_overflow_abort271, label %b.app.new.len270

str_stale262:                                     ; preds = %str_gen_check260
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok261

b.app.new.len270:                                 ; preds = %str_overflow_abort271, %str_ok261
  %b.cap272 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load253, i32 0, i32 2
  %b.cap273 = load i64, ptr %b.cap272, align 8
  %b.need.grow274 = icmp slt i64 %b.cap273, %sum268
  br i1 %b.need.grow274, label %b.grow2275, label %b.nogrow2276

str_overflow_abort271:                            ; preds = %str_ok261
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len270

b.grow2275:                                       ; preds = %b.app.new.len270
  %b.cap2278 = mul i64 %b.cap273, 2
  %b.cap.small279 = icmp slt i64 %b.cap2278, 16
  %b.cap.grow280 = select i1 %b.cap.small279, i64 16, i64 %b.cap2278
  %b.cap.need281 = icmp slt i64 %b.cap.grow280, %sum268
  %b.new.cap282 = select i1 %b.cap.need281, i64 %sum268, i64 %b.cap.grow280
  %b.cur.len2283 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load253, i32 0, i32 0
  %b.cur.len2284 = load i64, ptr %b.cur.len2283, align 8
  %b.cur.data2285 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load253, i32 0, i32 1
  %b.cur.data2286 = load ptr, ptr %b.cur.data2285, align 8
  %b.new.buf.len2287 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap282, i64 1)
  %sum288 = extractvalue { i64, i1 } %b.new.buf.len2287, 0
  %ovf289 = extractvalue { i64, i1 } %b.new.buf.len2287, 1
  br i1 %ovf289, label %str_overflow_abort291, label %b.new.buf.len2290

b.nogrow2276:                                     ; preds = %b.app.new.len270
  br label %b.grow_done277

b.grow_done277:                                   ; preds = %b.nogrow2276, %b.new.buf.len2290
  %app.str.data297 = getelementptr inbounds { i64, ptr }, ptr %var.load254, i32 0, i32 1
  %app.str.data298 = load ptr, ptr %app.str.data297, align 8
  %b.app.data299 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load253, i32 0, i32 1
  %b.app.data300 = load ptr, ptr %b.app.data299, align 8
  %b.app.dst301 = getelementptr i8, ptr %b.app.data300, i64 %b.app.cur.len266
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst301, ptr align 1 %app.str.data298, i64 %app.str.len257, i1 false)
  %b.app.nul302 = getelementptr i8, ptr %b.app.data300, i64 %sum268
  store i8 0, ptr %b.app.nul302, align 1
  %b.len.gep303 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load253, i32 0, i32 0
  store i64 %sum268, ptr %b.len.gep303, align 8
  %b.load304 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len305 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load304, i32 0, i32 0
  %b.rn.cur.len306 = load i64, ptr %b.rn.cur.len305, align 8
  %b.rn.new.len307 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len306, i64 1)
  %sum308 = extractvalue { i64, i1 } %b.rn.new.len307, 0
  %ovf309 = extractvalue { i64, i1 } %b.rn.new.len307, 1
  br i1 %ovf309, label %str_overflow_abort311, label %b.rn.new.len310

b.new.buf.len2290:                                ; preds = %str_overflow_abort291, %b.grow2275
  %arena.cur292 = call ptr @dva_arena_current()
  %b.new.buf2293 = call ptr @dva_arena_alloc(ptr %arena.cur292, i64 %sum288)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2293, ptr align 1 %b.cur.data2286, i64 %b.cur.len2284, i1 false)
  %b.grow2.nul294 = getelementptr i8, ptr %b.new.buf2293, i64 %b.cur.len2284
  store i8 0, ptr %b.grow2.nul294, align 1
  %b.new.data2.gep295 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load253, i32 0, i32 1
  store ptr %b.new.buf2293, ptr %b.new.data2.gep295, align 8
  %b.new.cap2.gep296 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load253, i32 0, i32 2
  store i64 %b.new.cap282, ptr %b.new.cap2.gep296, align 8
  br label %b.grow_done277

str_overflow_abort291:                            ; preds = %b.grow2275
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2290

b.rn.new.len310:                                  ; preds = %str_overflow_abort311, %b.grow_done277
  %b.cap312 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load304, i32 0, i32 2
  %b.cap313 = load i64, ptr %b.cap312, align 8
  %b.need.grow314 = icmp slt i64 %b.cap313, %sum308
  br i1 %b.need.grow314, label %b.grow2315, label %b.nogrow2316

str_overflow_abort311:                            ; preds = %b.grow_done277
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len310

b.grow2315:                                       ; preds = %b.rn.new.len310
  %b.cap2318 = mul i64 %b.cap313, 2
  %b.cap.small319 = icmp slt i64 %b.cap2318, 16
  %b.cap.grow320 = select i1 %b.cap.small319, i64 16, i64 %b.cap2318
  %b.cap.need321 = icmp slt i64 %b.cap.grow320, %sum308
  %b.new.cap322 = select i1 %b.cap.need321, i64 %sum308, i64 %b.cap.grow320
  %b.cur.len2323 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load304, i32 0, i32 0
  %b.cur.len2324 = load i64, ptr %b.cur.len2323, align 8
  %b.cur.data2325 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load304, i32 0, i32 1
  %b.cur.data2326 = load ptr, ptr %b.cur.data2325, align 8
  %b.new.buf.len2327 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap322, i64 1)
  %sum328 = extractvalue { i64, i1 } %b.new.buf.len2327, 0
  %ovf329 = extractvalue { i64, i1 } %b.new.buf.len2327, 1
  br i1 %ovf329, label %str_overflow_abort331, label %b.new.buf.len2330

b.nogrow2316:                                     ; preds = %b.rn.new.len310
  br label %b.grow_done317

b.grow_done317:                                   ; preds = %b.nogrow2316, %b.new.buf.len2330
  %b.rn.data337 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load304, i32 0, i32 1
  %b.rn.data338 = load ptr, ptr %b.rn.data337, align 8
  %b.rn.dst339 = getelementptr i8, ptr %b.rn.data338, i64 %b.rn.cur.len306
  br i1 true, label %br.b1.510, label %br.c2.510

b.new.buf.len2330:                                ; preds = %str_overflow_abort331, %b.grow2315
  %arena.cur332 = call ptr @dva_arena_current()
  %b.new.buf2333 = call ptr @dva_arena_alloc(ptr %arena.cur332, i64 %sum328)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2333, ptr align 1 %b.cur.data2326, i64 %b.cur.len2324, i1 false)
  %b.grow2.nul334 = getelementptr i8, ptr %b.new.buf2333, i64 %b.cur.len2324
  store i8 0, ptr %b.grow2.nul334, align 1
  %b.new.data2.gep335 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load304, i32 0, i32 1
  store ptr %b.new.buf2333, ptr %b.new.data2.gep335, align 8
  %b.new.cap2.gep336 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load304, i32 0, i32 2
  store i64 %b.new.cap322, ptr %b.new.cap2.gep336, align 8
  br label %b.grow_done317

str_overflow_abort331:                            ; preds = %b.grow2315
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2330

br.b1.510:                                        ; preds = %b.grow_done317
  store i8 10, ptr %b.rn.dst339, align 1
  br label %br.done.510

br.c2.510:                                        ; preds = %b.grow_done317
  br i1 true, label %br.b2.510, label %br.c3.510

br.b2.510:                                        ; preds = %br.c2.510
  store i8 -64, ptr %b.rn.dst339, align 1
  %br.dst1340 = getelementptr i8, ptr %b.rn.dst339, i64 1
  store i8 -118, ptr %br.dst1340, align 1
  br label %br.done.510

br.c3.510:                                        ; preds = %br.c2.510
  br i1 true, label %br.b3.510, label %br.b4.510

br.b3.510:                                        ; preds = %br.c3.510
  store i8 -32, ptr %b.rn.dst339, align 1
  %br.dst1.3341 = getelementptr i8, ptr %b.rn.dst339, i64 1
  store i8 -128, ptr %br.dst1.3341, align 1
  %br.dst2.3342 = getelementptr i8, ptr %b.rn.dst339, i64 2
  store i8 -118, ptr %br.dst2.3342, align 1
  br label %br.done.510

br.b4.510:                                        ; preds = %br.c3.510
  store i8 -16, ptr %b.rn.dst339, align 1
  %br.dst1.4343 = getelementptr i8, ptr %b.rn.dst339, i64 1
  store i8 -128, ptr %br.dst1.4343, align 1
  %br.dst2.4344 = getelementptr i8, ptr %b.rn.dst339, i64 2
  store i8 -128, ptr %br.dst2.4344, align 1
  %br.dst3.4345 = getelementptr i8, ptr %b.rn.dst339, i64 3
  store i8 -118, ptr %br.dst3.4345, align 1
  br label %br.done.510

br.done.510:                                      ; preds = %br.b4.510, %br.b3.510, %br.b2.510, %br.b1.510
  %br.nul346 = getelementptr i8, ptr %b.rn.data338, i64 %sum308
  store i8 0, ptr %br.nul346, align 1
  %b.len.gep347 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load304, i32 0, i32 0
  store i64 %sum308, ptr %b.len.gep347, align 8
  br label %choice.exit173

a.create354:                                      ; preds = %choice.else172
  %arena.cur356 = call ptr @dva_arena_current()
  %a.create357 = call ptr @dva_arena_alloc(ptr %arena.cur356, i64 24)
  %arena.cur358 = call ptr @dva_arena_current()
  %a.buf359 = call ptr @dva_arena_alloc(ptr %arena.cur358, i64 128)
  %a.len.gep360 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create357, i32 0, i32 0
  store i64 0, ptr %a.len.gep360, align 8
  %a.data.gep361 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create357, i32 0, i32 1
  store ptr %a.buf359, ptr %a.data.gep361, align 8
  %a.cap.gep362 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create357, i32 0, i32 2
  store i64 16, ptr %a.cap.gep362, align 8
  store ptr %a.create357, ptr %var.stack, align 8
  br label %a.after355

a.after355:                                       ; preds = %a.create354, %choice.else172
  %a.load2363 = load ptr, ptr %var.stack, align 8
  %var.load364 = load i64, ptr %"var.top'", align 8
  %subtmp = sub i64 %var.load364, 1
  %a.rd.nonnull = icmp ne ptr %a.load2363, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after355
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2363, i32 0, i32 0
  %a.rd.len365 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %subtmp, 0
  %a.rd.lt = icmp slt i64 %subtmp, %a.rd.len365
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2363, i32 0, i32 1
  %a.rd.data366 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data366, i64 %subtmp
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after355
  %arena.cur367 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur367, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.5.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 408, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 51, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur368 = call ptr @dva_arena_current()
  %err.alloc369 = call ptr @dva_arena_alloc(ptr %arena.cur368, i64 56)
  %err.code.gep370 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc369, i32 0, i32 0
  store i64 4011, ptr %err.code.gep370, align 8
  %err.msg.gep371 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc369, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep371, align 8
  %err.file.gep372 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc369, i32 0, i32 2
  store ptr @str.5.struct, ptr %err.file.gep372, align 8
  %err.line.gep373 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc369, i32 0, i32 3
  store i64 408, ptr %err.line.gep373, align 8
  %err.col.gep374 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc369, i32 0, i32 4
  store i64 51, ptr %err.col.gep374, align 8
  %err.ctx.gep375 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc369, i32 0, i32 5
  %err.ctx0.gep376 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep375, i32 0, i32 0
  store i64 %subtmp, ptr %err.ctx0.gep376, align 8
  %err.ctx1.gep377 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep375, i32 0, i32 1
  store i64 %a.rd.len365, ptr %err.ctx1.gep377, align 8
  %err.p2i378 = ptrtoint ptr %err.alloc369 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i378, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag379 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag379, label %choice.then380, label %choice.else381

choice.then380:                                   ; preds = %a.rd.done
  %ram.pay383 = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %ram.pay383, ptr %var._384, align 8
  br label %choice.exit382

choice.else381:                                   ; preds = %a.rd.done
  %ram.pay385 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay385 to ptr
  store ptr %pay.ptr, ptr %var._386, align 8
  br label %choice.exit382

choice.exit382:                                   ; preds = %choice.else381, %choice.then380
  %choice.res387 = phi i64 [ %ram.pay383, %choice.then380 ], [ 0, %choice.else381 ]
  store i64 %choice.res387, ptr %var.top_raw, align 8
  %var.load388 = load i64, ptr %var.raw, align 8
  %var.load389 = load i64, ptr %var.top_raw, align 8
  %cmptmp390 = icmp sgt i64 %var.load388, %var.load389
  br i1 %cmptmp390, label %choice.then391, label %choice.else392

choice.then391:                                   ; preds = %choice.exit382
  %var.load394 = load i64, ptr %"var.top'", align 8
  %var.load395 = load ptr, ptr %var.stack, align 8
  %a.load396 = load ptr, ptr %var.stack, align 8
  %a.null397 = icmp eq ptr %a.load396, null
  br i1 %a.null397, label %a.create398, label %a.after399

choice.else392:                                   ; preds = %choice.exit382
  store i64 0, ptr %loop.idx.511, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.511

choice.exit393:                                   ; preds = %loop.exit.511, %choice.exit412
  %var.load591 = load i1, ptr %var.div3, align 1
  br i1 %var.load591, label %choice.then592, label %choice.else593

a.create398:                                      ; preds = %choice.then391
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
  store ptr %a.create401, ptr %var.stack, align 8
  br label %a.after399

a.after399:                                       ; preds = %a.create398, %choice.then391
  %a.load2407 = load ptr, ptr %var.stack, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2407, i32 0, i32 0
  %a.len.query408 = load i64, ptr %a.len.query, align 8
  %cmptmp409 = icmp eq i64 %var.load394, %a.len.query408
  br i1 %cmptmp409, label %choice.then410, label %choice.else411

choice.then410:                                   ; preds = %a.after399
  %var.load413 = load i64, ptr %var.raw, align 8
  %a.load414 = load ptr, ptr %var.stack, align 8
  %a.null415 = icmp eq ptr %a.load414, null
  br i1 %a.null415, label %a.create416, label %a.after417

choice.else411:                                   ; preds = %a.after399
  %var.load441 = load ptr, ptr %var.stack, align 8
  %a.load442 = load ptr, ptr %var.stack, align 8
  %a.null443 = icmp eq ptr %a.load442, null
  br i1 %a.null443, label %a.create444, label %a.after445

choice.exit412:                                   ; preds = %choice.exit481, %a.store428
  %var.load510 = load i64, ptr %"var.top'", align 8
  %addtmp511 = add i64 %var.load510, 1
  store i64 %addtmp511, ptr %"var.top'", align 8
  br label %choice.exit393

a.create416:                                      ; preds = %choice.then410
  %arena.cur418 = call ptr @dva_arena_current()
  %a.create419 = call ptr @dva_arena_alloc(ptr %arena.cur418, i64 24)
  %arena.cur420 = call ptr @dva_arena_current()
  %a.buf421 = call ptr @dva_arena_alloc(ptr %arena.cur420, i64 128)
  %a.len.gep422 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create419, i32 0, i32 0
  store i64 0, ptr %a.len.gep422, align 8
  %a.data.gep423 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create419, i32 0, i32 1
  store ptr %a.buf421, ptr %a.data.gep423, align 8
  %a.cap.gep424 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create419, i32 0, i32 2
  store i64 16, ptr %a.cap.gep424, align 8
  store ptr %a.create419, ptr %var.stack, align 8
  br label %a.after417

a.after417:                                       ; preds = %a.create416, %choice.then410
  %a.load2425 = load ptr, ptr %var.stack, align 8
  br label %a.check426

a.check426:                                       ; preds = %a.after417
  %a.len429 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2425, i32 0, i32 0
  %a.len430 = load i64, ptr %a.len429, align 8
  %a.cap431 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2425, i32 0, i32 2
  %a.cap432 = load i64, ptr %a.cap431, align 8
  %a.needs.grow433 = icmp eq i64 %a.len430, %a.cap432
  br i1 %a.needs.grow433, label %a.grow427, label %a.store428

a.grow427:                                        ; preds = %a.check426
  call void @dva_array_grow(ptr %a.load2425)
  br label %a.store428

a.store428:                                       ; preds = %a.grow427, %a.check426
  %a.cur.data434 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2425, i32 0, i32 1
  %a.cur.data435 = load ptr, ptr %a.cur.data434, align 8
  %a.cur.len436 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2425, i32 0, i32 0
  %a.cur.len437 = load i64, ptr %a.cur.len436, align 8
  %a.elem.gep438 = getelementptr i64, ptr %a.cur.data435, i64 %a.cur.len437
  store i64 %var.load413, ptr %a.elem.gep438, align 8
  %a.next.len439 = add i64 %a.cur.len437, 1
  %b.len.gep440 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2425, i32 0, i32 0
  store i64 %a.next.len439, ptr %b.len.gep440, align 8
  br label %choice.exit412

a.create444:                                      ; preds = %choice.else411
  %arena.cur446 = call ptr @dva_arena_current()
  %a.create447 = call ptr @dva_arena_alloc(ptr %arena.cur446, i64 24)
  %arena.cur448 = call ptr @dva_arena_current()
  %a.buf449 = call ptr @dva_arena_alloc(ptr %arena.cur448, i64 128)
  %a.len.gep450 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create447, i32 0, i32 0
  store i64 0, ptr %a.len.gep450, align 8
  %a.data.gep451 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create447, i32 0, i32 1
  store ptr %a.buf449, ptr %a.data.gep451, align 8
  %a.cap.gep452 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create447, i32 0, i32 2
  store i64 16, ptr %a.cap.gep452, align 8
  store ptr %a.create447, ptr %var.stack, align 8
  br label %a.after445

a.after445:                                       ; preds = %a.create444, %choice.else411
  %a.load2453 = load ptr, ptr %var.stack, align 8
  %var.load454 = load i64, ptr %"var.top'", align 8
  %var.load455 = load i64, ptr %var.raw, align 8
  %a.wr.nonnull = icmp ne ptr %a.load2453, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after445
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2453, i32 0, i32 0
  %a.wr.len456 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load454, 0
  %a.wr.lt = icmp slt i64 %var.load454, %a.wr.len456
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2453, i32 0, i32 1
  %a.wr.data457 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep458 = getelementptr i64, ptr %a.wr.data457, i64 %var.load454
  store i64 %var.load455, ptr %a.elem.gep458, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after445
  %arena.cur459 = call ptr @dva_arena_current()
  %err.alloc460 = call ptr @dva_arena_alloc(ptr %arena.cur459, i64 56)
  %err.code.gep461 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc460, i32 0, i32 0
  store i64 4011, ptr %err.code.gep461, align 8
  %err.msg.gep462 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc460, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep462, align 8
  %err.file.gep463 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc460, i32 0, i32 2
  store ptr @str.5.struct, ptr %err.file.gep463, align 8
  %err.line.gep464 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc460, i32 0, i32 3
  store i64 0, ptr %err.line.gep464, align 8
  %err.col.gep465 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc460, i32 0, i32 4
  store i64 0, ptr %err.col.gep465, align 8
  %err.ctx.gep466 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc460, i32 0, i32 5
  %err.ctx0.gep467 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep466, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep467, align 8
  %err.ctx1.gep468 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep466, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep468, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur469 = call ptr @dva_arena_current()
  %err.alloc470 = call ptr @dva_arena_alloc(ptr %arena.cur469, i64 56)
  %err.code.gep471 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc470, i32 0, i32 0
  store i64 4011, ptr %err.code.gep471, align 8
  %err.msg.gep472 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc470, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep472, align 8
  %err.file.gep473 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc470, i32 0, i32 2
  store ptr @str.5.struct, ptr %err.file.gep473, align 8
  %err.line.gep474 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc470, i32 0, i32 3
  store i64 0, ptr %err.line.gep474, align 8
  %err.col.gep475 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc470, i32 0, i32 4
  store i64 0, ptr %err.col.gep475, align 8
  %err.ctx.gep476 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc470, i32 0, i32 5
  %err.ctx0.gep477 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep476, i32 0, i32 0
  store i64 %var.load454, ptr %err.ctx0.gep477, align 8
  %err.ctx1.gep478 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep476, i32 0, i32 1
  store i64 %a.wr.len456, ptr %err.ctx1.gep478, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc460, %a.wr.err.null ], [ %err.alloc470, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then479, label %choice.else480

choice.then479:                                   ; preds = %a.wr.done
  br label %choice.exit481

choice.else480:                                   ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._482, align 8
  store ptr %a.wr.niche, ptr %var._483, align 8
  store ptr %a.wr.niche, ptr %var._484, align 8
  %err.code.gep485 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep485, align 8
  %err.msg.gep486 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep486, align 8
  %err.file.gep487 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep487, align 8
  %err.line.gep488 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep488, align 8
  %err.col.gep489 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep489, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len490 = load i64, ptr %err.msg.len, align 8
  %err.msg.len491 = and i64 %err.msg.len490, 281474976710655
  %str.tag492 = lshr i64 %err.msg.len490, 48
  %str.immortal493 = icmp eq i64 %str.tag492, 0
  br i1 %str.immortal493, label %str_ok495, label %str_gen_check494

choice.exit481:                                   ; preds = %err.abort, %choice.then479
  br label %choice.exit412

str_gen_check494:                                 ; preds = %choice.else480
  %arena.cur497 = call ptr @dva_arena_current()
  %tag.valid498 = call i1 @dva_arena_validate_tag(ptr %arena.cur497, i64 %str.tag492)
  br i1 %tag.valid498, label %str_ok495, label %str_stale496

str_ok495:                                        ; preds = %str_stale496, %str_gen_check494, %choice.else480
  %err.msg.len32 = trunc i64 %err.msg.len491 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data499 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len500 = load i64, ptr %err.file.len, align 8
  %err.file.len501 = and i64 %err.file.len500, 281474976710655
  %str.tag502 = lshr i64 %err.file.len500, 48
  %str.immortal503 = icmp eq i64 %str.tag502, 0
  br i1 %str.immortal503, label %str_ok505, label %str_gen_check504

str_stale496:                                     ; preds = %str_gen_check494
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok495

str_gen_check504:                                 ; preds = %str_ok495
  %arena.cur507 = call ptr @dva_arena_current()
  %tag.valid508 = call i1 @dva_arena_validate_tag(ptr %arena.cur507, i64 %str.tag502)
  br i1 %tag.valid508, label %str_ok505, label %str_stale506

str_ok505:                                        ; preds = %str_stale506, %str_gen_check504, %str_ok495
  %err.file.len32 = trunc i64 %err.file.len501 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data509 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale506:                                     ; preds = %str_gen_check504
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok505

err.thread:                                       ; preds = %str_ok505
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok505
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data499, i32 %err.file.len32, ptr %err.file.data509, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit481

loop.header.511:                                  ; preds = %loop.latch.511, %choice.else392
  %counter.load512 = load i64, ptr %loop.idx.511, align 8
  br label %loop.body.511

loop.body.511:                                    ; preds = %loop.header.511
  %loop.rel.i513 = sub i64 %counter.load512, 0
  store i64 1, ptr %loop.step.511, align 8
  store i64 %loop.rel.i513, ptr %var._i514, align 8
  store i64 %counter.load512, ptr %var._515, align 8
  %var.load516 = load i64, ptr %"var.top'", align 8
  %cmptmp517 = icmp sgt i64 %var.load516, 1
  br i1 %cmptmp517, label %and.512.then, label %and.512.else

loop.exit.nat.511:                                ; No predecessors!
  br label %loop.exit.511

loop.latch.511:                                   ; preds = %choice.exit588
  %step.val = load i64, ptr %loop.step.511, align 8
  %loop.next = add i64 %counter.load512, %step.val
  store i64 %loop.next, ptr %loop.idx.511, align 8
  br label %loop.header.511

loop.exit.511:                                    ; preds = %choice.else587, %loop.exit.nat.511
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  br label %choice.exit393

and.512.then:                                     ; preds = %loop.body.511
  %var.load518 = load ptr, ptr %var.stack, align 8
  %a.load519 = load ptr, ptr %var.stack, align 8
  %a.null520 = icmp eq ptr %a.load519, null
  br i1 %a.null520, label %a.create521, label %a.after522

and.512.else:                                     ; preds = %loop.body.511
  br label %and.512.exit

and.512.exit:                                     ; preds = %and.512.else, %choice.exit577
  %and.512.phi = phi i1 [ %cmptmp585, %choice.exit577 ], [ %cmptmp517, %and.512.else ]
  br i1 %and.512.phi, label %choice.then586, label %choice.else587

a.create521:                                      ; preds = %and.512.then
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
  store ptr %a.create524, ptr %var.stack, align 8
  br label %a.after522

a.after522:                                       ; preds = %a.create521, %and.512.then
  %a.load2530 = load ptr, ptr %var.stack, align 8
  %var.load531 = load i64, ptr %"var.top'", align 8
  %subtmp532 = sub i64 %var.load531, 1
  %a.rd.nonnull533 = icmp ne ptr %a.load2530, null
  br i1 %a.rd.nonnull533, label %a.rd.check534, label %a.rd.err.null536

a.rd.check534:                                    ; preds = %a.after522
  %a.rd.len539 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2530, i32 0, i32 0
  %a.rd.len540 = load i64, ptr %a.rd.len539, align 8
  %a.rd.ge0541 = icmp sge i64 %subtmp532, 0
  %a.rd.lt542 = icmp slt i64 %subtmp532, %a.rd.len540
  %a.rd.bounds543 = and i1 %a.rd.ge0541, %a.rd.lt542
  br i1 %a.rd.bounds543, label %a.rd.ok535, label %a.rd.err.oob537

a.rd.ok535:                                       ; preds = %a.rd.check534
  %a.rd.data544 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2530, i32 0, i32 1
  %a.rd.data545 = load ptr, ptr %a.rd.data544, align 8
  %a.rd.elem.gep546 = getelementptr i64, ptr %a.rd.data545, i64 %subtmp532
  %a.rd.elem547 = load i64, ptr %a.rd.elem.gep546, align 8
  br label %a.rd.done538

a.rd.err.null536:                                 ; preds = %a.after522
  %arena.cur548 = call ptr @dva_arena_current()
  %err.alloc549 = call ptr @dva_arena_alloc(ptr %arena.cur548, i64 56)
  %err.code.gep550 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc549, i32 0, i32 0
  store i64 4011, ptr %err.code.gep550, align 8
  %err.msg.gep551 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc549, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep551, align 8
  %err.file.gep552 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc549, i32 0, i32 2
  store ptr @str.5.struct, ptr %err.file.gep552, align 8
  %err.line.gep553 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc549, i32 0, i32 3
  store i64 417, ptr %err.line.gep553, align 8
  %err.col.gep554 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc549, i32 0, i32 4
  store i64 64, ptr %err.col.gep554, align 8
  %err.ctx.gep555 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc549, i32 0, i32 5
  %err.ctx0.gep556 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep555, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep556, align 8
  %err.ctx1.gep557 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep555, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep557, align 8
  %err.p2i558 = ptrtoint ptr %err.alloc549 to i64
  br label %a.rd.done538

a.rd.err.oob537:                                  ; preds = %a.rd.check534
  %arena.cur559 = call ptr @dva_arena_current()
  %err.alloc560 = call ptr @dva_arena_alloc(ptr %arena.cur559, i64 56)
  %err.code.gep561 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc560, i32 0, i32 0
  store i64 4011, ptr %err.code.gep561, align 8
  %err.msg.gep562 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc560, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep562, align 8
  %err.file.gep563 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc560, i32 0, i32 2
  store ptr @str.5.struct, ptr %err.file.gep563, align 8
  %err.line.gep564 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc560, i32 0, i32 3
  store i64 417, ptr %err.line.gep564, align 8
  %err.col.gep565 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc560, i32 0, i32 4
  store i64 64, ptr %err.col.gep565, align 8
  %err.ctx.gep566 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc560, i32 0, i32 5
  %err.ctx0.gep567 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep566, i32 0, i32 0
  store i64 %subtmp532, ptr %err.ctx0.gep567, align 8
  %err.ctx1.gep568 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep566, i32 0, i32 1
  store i64 %a.rd.len540, ptr %err.ctx1.gep568, align 8
  %err.p2i569 = ptrtoint ptr %err.alloc560 to i64
  br label %a.rd.done538

a.rd.done538:                                     ; preds = %a.rd.err.oob537, %a.rd.err.null536, %a.rd.ok535
  %a.rd.tag570 = phi i1 [ true, %a.rd.ok535 ], [ false, %a.rd.err.null536 ], [ false, %a.rd.err.oob537 ]
  %a.rd.pay571 = phi i64 [ %a.rd.elem547, %a.rd.ok535 ], [ %err.p2i558, %a.rd.err.null536 ], [ %err.p2i569, %a.rd.err.oob537 ]
  %ram.tag572 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag570, 0
  %ram.pay573 = insertvalue { i1, i64 } %ram.tag572, i64 %a.rd.pay571, 1
  %ram.tag574 = extractvalue { i1, i64 } %ram.pay573, 0
  br i1 %ram.tag574, label %choice.then575, label %choice.else576

choice.then575:                                   ; preds = %a.rd.done538
  %ram.pay578 = extractvalue { i1, i64 } %ram.pay573, 1
  store i64 %ram.pay578, ptr %var._579, align 8
  br label %choice.exit577

choice.else576:                                   ; preds = %a.rd.done538
  %ram.pay580 = extractvalue { i1, i64 } %ram.pay573, 1
  %pay.ptr581 = inttoptr i64 %ram.pay580 to ptr
  store ptr %pay.ptr581, ptr %var._582, align 8
  br label %choice.exit577

choice.exit577:                                   ; preds = %choice.else576, %choice.then575
  %choice.res583 = phi i64 [ %ram.pay578, %choice.then575 ], [ 0, %choice.else576 ]
  %var.load584 = load i64, ptr %var.raw, align 8
  %cmptmp585 = icmp sgt i64 %choice.res583, %var.load584
  br label %and.512.exit

choice.then586:                                   ; preds = %and.512.exit
  %var.load589 = load i64, ptr %"var.top'", align 8
  %subtmp590 = sub i64 %var.load589, 1
  store i64 %subtmp590, ptr %"var.top'", align 8
  br label %choice.exit588

choice.else587:                                   ; preds = %and.512.exit
  br label %loop.exit.511

choice.exit588:                                   ; preds = %choice.then586
  br label %loop.latch.511

choice.then592:                                   ; preds = %choice.exit393
  %var.load595 = load i64, ptr %var.raw, align 8
  br label %choice.exit594

choice.else593:                                   ; preds = %choice.exit393
  %var.load596 = load i64, ptr %"var.top'", align 8
  %subtmp597 = sub i64 %var.load596, 1
  %multmp598 = mul i64 %subtmp597, 3
  br label %choice.exit594

choice.exit594:                                   ; preds = %choice.else593, %choice.then592
  %choice.res599 = phi i64 [ %var.load595, %choice.then592 ], [ %multmp598, %choice.else593 ]
  store i64 %choice.res599, ptr %var.canon_indent, align 8
  %var.load600 = load i64, ptr %var.canon_indent, align 8
  store i64 %var.load600, ptr %"var.cur_canon_indent'", align 8
  %b.load601 = load ptr, ptr %var.out, align 8
  %var.load602 = load i64, ptr %var.canon_indent, align 8
  %call.res603 = call ptr @"formatter::make_spaces"(i64 %var.load602)
  %app.str.len604 = getelementptr inbounds { i64, ptr }, ptr %call.res603, i32 0, i32 0
  %app.str.len605 = load i64, ptr %app.str.len604, align 8
  %app.str.len606 = and i64 %app.str.len605, 281474976710655
  %str.tag607 = lshr i64 %app.str.len605, 48
  %str.immortal608 = icmp eq i64 %str.tag607, 0
  br i1 %str.immortal608, label %str_ok610, label %str_gen_check609

str_gen_check609:                                 ; preds = %choice.exit594
  %arena.cur612 = call ptr @dva_arena_current()
  %tag.valid613 = call i1 @dva_arena_validate_tag(ptr %arena.cur612, i64 %str.tag607)
  br i1 %tag.valid613, label %str_ok610, label %str_stale611

str_ok610:                                        ; preds = %str_stale611, %str_gen_check609, %choice.exit594
  %b.app.cur.len614 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load601, i32 0, i32 0
  %b.app.cur.len615 = load i64, ptr %b.app.cur.len614, align 8
  %b.app.new.len616 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len615, i64 %app.str.len606)
  %sum617 = extractvalue { i64, i1 } %b.app.new.len616, 0
  %ovf618 = extractvalue { i64, i1 } %b.app.new.len616, 1
  br i1 %ovf618, label %str_overflow_abort620, label %b.app.new.len619

str_stale611:                                     ; preds = %str_gen_check609
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok610

b.app.new.len619:                                 ; preds = %str_overflow_abort620, %str_ok610
  %b.cap621 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load601, i32 0, i32 2
  %b.cap622 = load i64, ptr %b.cap621, align 8
  %b.need.grow623 = icmp slt i64 %b.cap622, %sum617
  br i1 %b.need.grow623, label %b.grow2624, label %b.nogrow2625

str_overflow_abort620:                            ; preds = %str_ok610
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len619

b.grow2624:                                       ; preds = %b.app.new.len619
  %b.cap2627 = mul i64 %b.cap622, 2
  %b.cap.small628 = icmp slt i64 %b.cap2627, 16
  %b.cap.grow629 = select i1 %b.cap.small628, i64 16, i64 %b.cap2627
  %b.cap.need630 = icmp slt i64 %b.cap.grow629, %sum617
  %b.new.cap631 = select i1 %b.cap.need630, i64 %sum617, i64 %b.cap.grow629
  %b.cur.len2632 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load601, i32 0, i32 0
  %b.cur.len2633 = load i64, ptr %b.cur.len2632, align 8
  %b.cur.data2634 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load601, i32 0, i32 1
  %b.cur.data2635 = load ptr, ptr %b.cur.data2634, align 8
  %b.new.buf.len2636 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap631, i64 1)
  %sum637 = extractvalue { i64, i1 } %b.new.buf.len2636, 0
  %ovf638 = extractvalue { i64, i1 } %b.new.buf.len2636, 1
  br i1 %ovf638, label %str_overflow_abort640, label %b.new.buf.len2639

b.nogrow2625:                                     ; preds = %b.app.new.len619
  br label %b.grow_done626

b.grow_done626:                                   ; preds = %b.nogrow2625, %b.new.buf.len2639
  %app.str.data646 = getelementptr inbounds { i64, ptr }, ptr %call.res603, i32 0, i32 1
  %app.str.data647 = load ptr, ptr %app.str.data646, align 8
  %b.app.data648 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load601, i32 0, i32 1
  %b.app.data649 = load ptr, ptr %b.app.data648, align 8
  %b.app.dst650 = getelementptr i8, ptr %b.app.data649, i64 %b.app.cur.len615
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst650, ptr align 1 %app.str.data647, i64 %app.str.len606, i1 false)
  %b.app.nul651 = getelementptr i8, ptr %b.app.data649, i64 %sum617
  store i8 0, ptr %b.app.nul651, align 1
  %b.len.gep652 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load601, i32 0, i32 0
  store i64 %sum617, ptr %b.len.gep652, align 8
  %b.load653 = load ptr, ptr %var.out, align 8
  %var.load654 = load ptr, ptr %var.body, align 8
  %call.res655 = call ptr @"formatter::format_code_body"(ptr %var.load654)
  %app.str.len656 = getelementptr inbounds { i64, ptr }, ptr %call.res655, i32 0, i32 0
  %app.str.len657 = load i64, ptr %app.str.len656, align 8
  %app.str.len658 = and i64 %app.str.len657, 281474976710655
  %str.tag659 = lshr i64 %app.str.len657, 48
  %str.immortal660 = icmp eq i64 %str.tag659, 0
  br i1 %str.immortal660, label %str_ok662, label %str_gen_check661

b.new.buf.len2639:                                ; preds = %str_overflow_abort640, %b.grow2624
  %arena.cur641 = call ptr @dva_arena_current()
  %b.new.buf2642 = call ptr @dva_arena_alloc(ptr %arena.cur641, i64 %sum637)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2642, ptr align 1 %b.cur.data2635, i64 %b.cur.len2633, i1 false)
  %b.grow2.nul643 = getelementptr i8, ptr %b.new.buf2642, i64 %b.cur.len2633
  store i8 0, ptr %b.grow2.nul643, align 1
  %b.new.data2.gep644 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load601, i32 0, i32 1
  store ptr %b.new.buf2642, ptr %b.new.data2.gep644, align 8
  %b.new.cap2.gep645 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load601, i32 0, i32 2
  store i64 %b.new.cap631, ptr %b.new.cap2.gep645, align 8
  br label %b.grow_done626

str_overflow_abort640:                            ; preds = %b.grow2624
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2639

str_gen_check661:                                 ; preds = %b.grow_done626
  %arena.cur664 = call ptr @dva_arena_current()
  %tag.valid665 = call i1 @dva_arena_validate_tag(ptr %arena.cur664, i64 %str.tag659)
  br i1 %tag.valid665, label %str_ok662, label %str_stale663

str_ok662:                                        ; preds = %str_stale663, %str_gen_check661, %b.grow_done626
  %b.app.cur.len666 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load653, i32 0, i32 0
  %b.app.cur.len667 = load i64, ptr %b.app.cur.len666, align 8
  %b.app.new.len668 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len667, i64 %app.str.len658)
  %sum669 = extractvalue { i64, i1 } %b.app.new.len668, 0
  %ovf670 = extractvalue { i64, i1 } %b.app.new.len668, 1
  br i1 %ovf670, label %str_overflow_abort672, label %b.app.new.len671

str_stale663:                                     ; preds = %str_gen_check661
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok662

b.app.new.len671:                                 ; preds = %str_overflow_abort672, %str_ok662
  %b.cap673 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load653, i32 0, i32 2
  %b.cap674 = load i64, ptr %b.cap673, align 8
  %b.need.grow675 = icmp slt i64 %b.cap674, %sum669
  br i1 %b.need.grow675, label %b.grow2676, label %b.nogrow2677

str_overflow_abort672:                            ; preds = %str_ok662
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len671

b.grow2676:                                       ; preds = %b.app.new.len671
  %b.cap2679 = mul i64 %b.cap674, 2
  %b.cap.small680 = icmp slt i64 %b.cap2679, 16
  %b.cap.grow681 = select i1 %b.cap.small680, i64 16, i64 %b.cap2679
  %b.cap.need682 = icmp slt i64 %b.cap.grow681, %sum669
  %b.new.cap683 = select i1 %b.cap.need682, i64 %sum669, i64 %b.cap.grow681
  %b.cur.len2684 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load653, i32 0, i32 0
  %b.cur.len2685 = load i64, ptr %b.cur.len2684, align 8
  %b.cur.data2686 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load653, i32 0, i32 1
  %b.cur.data2687 = load ptr, ptr %b.cur.data2686, align 8
  %b.new.buf.len2688 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap683, i64 1)
  %sum689 = extractvalue { i64, i1 } %b.new.buf.len2688, 0
  %ovf690 = extractvalue { i64, i1 } %b.new.buf.len2688, 1
  br i1 %ovf690, label %str_overflow_abort692, label %b.new.buf.len2691

b.nogrow2677:                                     ; preds = %b.app.new.len671
  br label %b.grow_done678

b.grow_done678:                                   ; preds = %b.nogrow2677, %b.new.buf.len2691
  %app.str.data698 = getelementptr inbounds { i64, ptr }, ptr %call.res655, i32 0, i32 1
  %app.str.data699 = load ptr, ptr %app.str.data698, align 8
  %b.app.data700 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load653, i32 0, i32 1
  %b.app.data701 = load ptr, ptr %b.app.data700, align 8
  %b.app.dst702 = getelementptr i8, ptr %b.app.data701, i64 %b.app.cur.len667
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst702, ptr align 1 %app.str.data699, i64 %app.str.len658, i1 false)
  %b.app.nul703 = getelementptr i8, ptr %b.app.data701, i64 %sum669
  store i8 0, ptr %b.app.nul703, align 1
  %b.len.gep704 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load653, i32 0, i32 0
  store i64 %sum669, ptr %b.len.gep704, align 8
  %b.load705 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len706 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load705, i32 0, i32 0
  %b.rn.cur.len707 = load i64, ptr %b.rn.cur.len706, align 8
  %b.rn.new.len708 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len707, i64 1)
  %sum709 = extractvalue { i64, i1 } %b.rn.new.len708, 0
  %ovf710 = extractvalue { i64, i1 } %b.rn.new.len708, 1
  br i1 %ovf710, label %str_overflow_abort712, label %b.rn.new.len711

b.new.buf.len2691:                                ; preds = %str_overflow_abort692, %b.grow2676
  %arena.cur693 = call ptr @dva_arena_current()
  %b.new.buf2694 = call ptr @dva_arena_alloc(ptr %arena.cur693, i64 %sum689)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2694, ptr align 1 %b.cur.data2687, i64 %b.cur.len2685, i1 false)
  %b.grow2.nul695 = getelementptr i8, ptr %b.new.buf2694, i64 %b.cur.len2685
  store i8 0, ptr %b.grow2.nul695, align 1
  %b.new.data2.gep696 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load653, i32 0, i32 1
  store ptr %b.new.buf2694, ptr %b.new.data2.gep696, align 8
  %b.new.cap2.gep697 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load653, i32 0, i32 2
  store i64 %b.new.cap683, ptr %b.new.cap2.gep697, align 8
  br label %b.grow_done678

str_overflow_abort692:                            ; preds = %b.grow2676
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2691

b.rn.new.len711:                                  ; preds = %str_overflow_abort712, %b.grow_done678
  %b.cap713 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load705, i32 0, i32 2
  %b.cap714 = load i64, ptr %b.cap713, align 8
  %b.need.grow715 = icmp slt i64 %b.cap714, %sum709
  br i1 %b.need.grow715, label %b.grow2716, label %b.nogrow2717

str_overflow_abort712:                            ; preds = %b.grow_done678
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len711

b.grow2716:                                       ; preds = %b.rn.new.len711
  %b.cap2719 = mul i64 %b.cap714, 2
  %b.cap.small720 = icmp slt i64 %b.cap2719, 16
  %b.cap.grow721 = select i1 %b.cap.small720, i64 16, i64 %b.cap2719
  %b.cap.need722 = icmp slt i64 %b.cap.grow721, %sum709
  %b.new.cap723 = select i1 %b.cap.need722, i64 %sum709, i64 %b.cap.grow721
  %b.cur.len2724 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load705, i32 0, i32 0
  %b.cur.len2725 = load i64, ptr %b.cur.len2724, align 8
  %b.cur.data2726 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load705, i32 0, i32 1
  %b.cur.data2727 = load ptr, ptr %b.cur.data2726, align 8
  %b.new.buf.len2728 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap723, i64 1)
  %sum729 = extractvalue { i64, i1 } %b.new.buf.len2728, 0
  %ovf730 = extractvalue { i64, i1 } %b.new.buf.len2728, 1
  br i1 %ovf730, label %str_overflow_abort732, label %b.new.buf.len2731

b.nogrow2717:                                     ; preds = %b.rn.new.len711
  br label %b.grow_done718

b.grow_done718:                                   ; preds = %b.nogrow2717, %b.new.buf.len2731
  %b.rn.data738 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load705, i32 0, i32 1
  %b.rn.data739 = load ptr, ptr %b.rn.data738, align 8
  %b.rn.dst740 = getelementptr i8, ptr %b.rn.data739, i64 %b.rn.cur.len707
  br i1 true, label %br.b1.513, label %br.c2.513

b.new.buf.len2731:                                ; preds = %str_overflow_abort732, %b.grow2716
  %arena.cur733 = call ptr @dva_arena_current()
  %b.new.buf2734 = call ptr @dva_arena_alloc(ptr %arena.cur733, i64 %sum729)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2734, ptr align 1 %b.cur.data2727, i64 %b.cur.len2725, i1 false)
  %b.grow2.nul735 = getelementptr i8, ptr %b.new.buf2734, i64 %b.cur.len2725
  store i8 0, ptr %b.grow2.nul735, align 1
  %b.new.data2.gep736 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load705, i32 0, i32 1
  store ptr %b.new.buf2734, ptr %b.new.data2.gep736, align 8
  %b.new.cap2.gep737 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load705, i32 0, i32 2
  store i64 %b.new.cap723, ptr %b.new.cap2.gep737, align 8
  br label %b.grow_done718

str_overflow_abort732:                            ; preds = %b.grow2716
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2731

br.b1.513:                                        ; preds = %b.grow_done718
  store i8 10, ptr %b.rn.dst740, align 1
  br label %br.done.513

br.c2.513:                                        ; preds = %b.grow_done718
  br i1 true, label %br.b2.513, label %br.c3.513

br.b2.513:                                        ; preds = %br.c2.513
  store i8 -64, ptr %b.rn.dst740, align 1
  %br.dst1741 = getelementptr i8, ptr %b.rn.dst740, i64 1
  store i8 -118, ptr %br.dst1741, align 1
  br label %br.done.513

br.c3.513:                                        ; preds = %br.c2.513
  br i1 true, label %br.b3.513, label %br.b4.513

br.b3.513:                                        ; preds = %br.c3.513
  store i8 -32, ptr %b.rn.dst740, align 1
  %br.dst1.3742 = getelementptr i8, ptr %b.rn.dst740, i64 1
  store i8 -128, ptr %br.dst1.3742, align 1
  %br.dst2.3743 = getelementptr i8, ptr %b.rn.dst740, i64 2
  store i8 -118, ptr %br.dst2.3743, align 1
  br label %br.done.513

br.b4.513:                                        ; preds = %br.c3.513
  store i8 -16, ptr %b.rn.dst740, align 1
  %br.dst1.4744 = getelementptr i8, ptr %b.rn.dst740, i64 1
  store i8 -128, ptr %br.dst1.4744, align 1
  %br.dst2.4745 = getelementptr i8, ptr %b.rn.dst740, i64 2
  store i8 -128, ptr %br.dst2.4745, align 1
  %br.dst3.4746 = getelementptr i8, ptr %b.rn.dst740, i64 3
  store i8 -118, ptr %br.dst3.4746, align 1
  br label %br.done.513

br.done.513:                                      ; preds = %br.b4.513, %br.b3.513, %br.b2.513, %br.b1.513
  %br.nul747 = getelementptr i8, ptr %b.rn.data739, i64 %sum709
  store i8 0, ptr %br.nul747, align 1
  %b.len.gep748 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load705, i32 0, i32 0
  store i64 %sum709, ptr %b.len.gep748, align 8
  br label %choice.exit173

b.freeze.check:                                   ; preds = %loop.exit.507
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data753, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data753, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data753, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len752, 1
  %arena.cur754 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur754, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data753, i64 %b.freeze.len752, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len752
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.507
  %b.freeze.data755 = phi ptr [ %b.freeze.data753, %loop.exit.507 ], [ %b.freeze.data753, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur756 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur756, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len752, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data755, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load751, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load751, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load751, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.res, align 8
  %var.load757 = load ptr, ptr %var.res, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load757, i32 0, i32 0
  %str.len.query758 = load i64, ptr %str.len.query, align 8
  %str.len.query759 = and i64 %str.len.query758, 281474976710655
  %str.tag760 = lshr i64 %str.len.query758, 48
  %str.immortal761 = icmp eq i64 %str.tag760, 0
  br i1 %str.immortal761, label %str_ok763, label %str_gen_check762

str_gen_check762:                                 ; preds = %b.freeze.done
  %arena.cur765 = call ptr @dva_arena_current()
  %tag.valid766 = call i1 @dva_arena_validate_tag(ptr %arena.cur765, i64 %str.tag760)
  br i1 %tag.valid766, label %str_ok763, label %str_stale764

str_ok763:                                        ; preds = %str_stale764, %str_gen_check762, %b.freeze.done
  store i64 %str.len.query759, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.514, align 8
  br label %loop.header.514

str_stale764:                                     ; preds = %str_gen_check762
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok763

loop.header.514:                                  ; preds = %loop.latch.514, %str_ok763
  %counter.load767 = load i64, ptr %loop.idx.514, align 8
  br label %loop.body.514

loop.body.514:                                    ; preds = %loop.header.514
  %loop.rel.i768 = sub i64 %counter.load767, 0
  store i64 1, ptr %loop.step.514, align 8
  store i64 %loop.rel.i768, ptr %var._i769, align 8
  store i64 %counter.load767, ptr %var._770, align 8
  %var.load771 = load i64, ptr %"var.end'", align 8
  %cmptmp772 = icmp sgt i64 %var.load771, 1
  br i1 %cmptmp772, label %and.515.then, label %and.515.else

loop.exit.nat.514:                                ; No predecessors!
  br label %loop.exit.514

loop.latch.514:                                   ; preds = %choice.exit813
  %step.val816 = load i64, ptr %loop.step.514, align 8
  %loop.next817 = add i64 %counter.load767, %step.val816
  store i64 %loop.next817, ptr %loop.idx.514, align 8
  br label %loop.header.514

loop.exit.514:                                    ; preds = %choice.else812, %loop.exit.nat.514
  %var.load818 = load ptr, ptr %var.res, align 8
  %s.read.len819 = getelementptr inbounds { i64, ptr }, ptr %var.load818, i32 0, i32 0
  %s.read.len820 = load i64, ptr %s.read.len819, align 8
  %s.read.len821 = and i64 %s.read.len820, 281474976710655
  %str.tag822 = lshr i64 %s.read.len820, 48
  %str.immortal823 = icmp eq i64 %str.tag822, 0
  br i1 %str.immortal823, label %str_ok825, label %str_gen_check824

and.515.then:                                     ; preds = %loop.body.514
  %var.load773 = load ptr, ptr %var.res, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load773, i32 0, i32 0
  %s.read.len774 = load i64, ptr %s.read.len, align 8
  %s.read.len775 = and i64 %s.read.len774, 281474976710655
  %str.tag776 = lshr i64 %s.read.len774, 48
  %str.immortal777 = icmp eq i64 %str.tag776, 0
  br i1 %str.immortal777, label %str_ok779, label %str_gen_check778

and.515.else:                                     ; preds = %loop.body.514
  br label %and.515.exit

and.515.exit:                                     ; preds = %and.515.else, %idx_ok
  %and.515.phi = phi i1 [ %cmptmp786, %idx_ok ], [ %cmptmp772, %and.515.else ]
  br i1 %and.515.phi, label %and.516.then, label %and.516.else

str_gen_check778:                                 ; preds = %and.515.then
  %arena.cur781 = call ptr @dva_arena_current()
  %tag.valid782 = call i1 @dva_arena_validate_tag(ptr %arena.cur781, i64 %str.tag776)
  br i1 %tag.valid782, label %str_ok779, label %str_stale780

str_ok779:                                        ; preds = %str_stale780, %str_gen_check778, %and.515.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load773, i32 0, i32 1
  %s.read.data783 = load ptr, ptr %s.read.data, align 8
  %var.load784 = load i64, ptr %"var.end'", align 8
  %subtmp785 = sub i64 %var.load784, 1
  %idx.neg = icmp slt i64 %subtmp785, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale780:                                     ; preds = %str_gen_check778
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok779

idx_big_check:                                    ; preds = %str_ok779
  %idx.big = icmp sge i64 %subtmp785, %s.read.len775
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data783, i64 %subtmp785
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp786 = icmp eq i64 %s.byte.val, 10
  br label %and.515.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok779
  %29 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.516.then:                                     ; preds = %and.515.exit
  %var.load787 = load ptr, ptr %var.res, align 8
  %s.read.len788 = getelementptr inbounds { i64, ptr }, ptr %var.load787, i32 0, i32 0
  %s.read.len789 = load i64, ptr %s.read.len788, align 8
  %s.read.len790 = and i64 %s.read.len789, 281474976710655
  %str.tag791 = lshr i64 %s.read.len789, 48
  %str.immortal792 = icmp eq i64 %str.tag791, 0
  br i1 %str.immortal792, label %str_ok794, label %str_gen_check793

and.516.else:                                     ; preds = %and.515.exit
  br label %and.516.exit

and.516.exit:                                     ; preds = %and.516.else, %idx_ok804
  %and.516.phi = phi i1 [ %cmptmp810, %idx_ok804 ], [ %and.515.phi, %and.516.else ]
  br i1 %and.516.phi, label %choice.then811, label %choice.else812

str_gen_check793:                                 ; preds = %and.516.then
  %arena.cur796 = call ptr @dva_arena_current()
  %tag.valid797 = call i1 @dva_arena_validate_tag(ptr %arena.cur796, i64 %str.tag791)
  br i1 %tag.valid797, label %str_ok794, label %str_stale795

str_ok794:                                        ; preds = %str_stale795, %str_gen_check793, %and.516.then
  %s.read.data798 = getelementptr inbounds { i64, ptr }, ptr %var.load787, i32 0, i32 1
  %s.read.data799 = load ptr, ptr %s.read.data798, align 8
  %var.load800 = load i64, ptr %"var.end'", align 8
  %subtmp801 = sub i64 %var.load800, 2
  %idx.neg802 = icmp slt i64 %subtmp801, 0
  br i1 %idx.neg802, label %idx_oob805, label %idx_big_check803

str_stale795:                                     ; preds = %str_gen_check793
  %30 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok794

idx_big_check803:                                 ; preds = %str_ok794
  %idx.big806 = icmp sge i64 %subtmp801, %s.read.len790
  br i1 %idx.big806, label %idx_oob805, label %idx_ok804

idx_ok804:                                        ; preds = %idx_oob805, %idx_big_check803
  %s.byte.gep807 = getelementptr i8, ptr %s.read.data799, i64 %subtmp801
  %s.byte808 = load i8, ptr %s.byte.gep807, align 1
  %s.byte.val809 = zext i8 %s.byte808 to i64
  %cmptmp810 = icmp eq i64 %s.byte.val809, 10
  br label %and.516.exit

idx_oob805:                                       ; preds = %idx_big_check803, %str_ok794
  %31 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok804

choice.then811:                                   ; preds = %and.516.exit
  %var.load814 = load i64, ptr %"var.end'", align 8
  %subtmp815 = sub i64 %var.load814, 1
  store i64 %subtmp815, ptr %"var.end'", align 8
  br label %choice.exit813

choice.else812:                                   ; preds = %and.516.exit
  br label %loop.exit.514

choice.exit813:                                   ; preds = %choice.then811
  br label %loop.latch.514

str_gen_check824:                                 ; preds = %loop.exit.514
  %arena.cur827 = call ptr @dva_arena_current()
  %tag.valid828 = call i1 @dva_arena_validate_tag(ptr %arena.cur827, i64 %str.tag822)
  br i1 %tag.valid828, label %str_ok825, label %str_stale826

str_ok825:                                        ; preds = %str_stale826, %str_gen_check824, %loop.exit.514
  %s.read.data829 = getelementptr inbounds { i64, ptr }, ptr %var.load818, i32 0, i32 1
  %s.read.data830 = load ptr, ptr %s.read.data829, align 8
  %var.load831 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len821, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len821
  %final.start = select i1 %start.gt.len, i64 %s.read.len821, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load831, 0
  %rel.end = add i64 %s.read.len821, %var.load831
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load831
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len821
  %final.end = select i1 %end.gt.len, i64 %s.read.len821, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data830, i64 %final.start
  %arena.cur832 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur832, i64 16)
  %str.build.len.gep833 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep833, align 8
  %str.build.data.gep834 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep834, align 8
  ret ptr %str.view

str_stale826:                                     ; preds = %str_gen_check824
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok825
}

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define ptr @"formatter::format_safe_fallback"(ptr %0) #1 {
entry:
  %var._80 = alloca i64, align 8
  %var._i79 = alloca i64, align 8
  %loop.step.519 = alloca i64, align 8
  %loop.idx.519 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.res = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.ln = alloca ptr, align 8
  %loop.step.517 = alloca i64, align 8
  %loop.idx.517 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var.lines = alloca ptr, align 8
  store ptr %0, ptr %var.lines, align 8
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
  store ptr %builder.new, ptr %var.out, align 8
  %var.load = load ptr, ptr %var.lines, align 8
  %a.load = load ptr, ptr %var.lines, align 8
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
  store ptr %a.create4, ptr %var.lines, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %b.buf.len1
  %a.load2 = load ptr, ptr %var.lines, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len6 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data7 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.517, align 8
  br label %loop.header.517

loop.header.517:                                  ; preds = %loop.latch.517, %a.after
  %counter.load = load i64, ptr %loop.idx.517, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len6
  br i1 %loop.cond, label %loop.body.517, label %loop.exit.nat.517

loop.body.517:                                    ; preds = %loop.header.517
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.517, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data7, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.ln, align 8
  %b.load = load ptr, ptr %var.out, align 8
  %var.load8 = load ptr, ptr %var.ln, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, i64, i64, i1, i1, i1 }, ptr %var.load8, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %app.str.len9 = load i64, ptr %app.str.len, align 8
  %app.str.len10 = and i64 %app.str.len9, 281474976710655
  %str.tag = lshr i64 %app.str.len9, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.517:                                ; preds = %loop.header.517
  br label %loop.exit.517

loop.latch.517:                                   ; preds = %br.done.518
  %step.val = load i64, ptr %loop.step.517, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.517, align 8
  br label %loop.header.517

loop.exit.517:                                    ; preds = %loop.exit.nat.517
  %var.load61 = load ptr, ptr %var.out, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load61, i32 0, i32 0
  %b.freeze.len62 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load61, i32 0, i32 1
  %b.freeze.data63 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_gen_check:                                    ; preds = %loop.body.517
  %arena.cur11 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur11, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.517
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len12 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len12, i64 %app.str.len10)
  %sum13 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf14 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf14, label %str_overflow_abort16, label %b.app.new.len15

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

b.app.new.len15:                                  ; preds = %str_overflow_abort16, %str_ok
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap17 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap17, %sum13
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort16:                             ; preds = %str_ok
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len15

b.grow2:                                          ; preds = %b.app.new.len15
  %b.cap2 = mul i64 %b.cap17, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum13
  %b.new.cap = select i1 %b.cap.need, i64 %sum13, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len218 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data219 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum20 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf21 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf21, label %str_overflow_abort23, label %b.new.buf.len222

b.nogrow2:                                        ; preds = %b.app.new.len15
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len222
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %app.str.data25 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data26 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data26, i64 %b.app.cur.len12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data25, i64 %app.str.len10, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data26, i64 %sum13
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep27 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum13, ptr %b.len.gep27, align 8
  %b.load28 = load ptr, ptr %var.out, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 0
  %b.rn.cur.len29 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len29, i64 1)
  %sum30 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf31 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf31, label %str_overflow_abort33, label %b.rn.new.len32

b.new.buf.len222:                                 ; preds = %str_overflow_abort23, %b.grow2
  %arena.cur24 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 %sum20)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data219, i64 %b.cur.len218, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len218
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort23:                             ; preds = %b.grow2
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len222

b.rn.new.len32:                                   ; preds = %str_overflow_abort33, %b.grow_done
  %b.cap34 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 2
  %b.cap35 = load i64, ptr %b.cap34, align 8
  %b.need.grow36 = icmp slt i64 %b.cap35, %sum30
  br i1 %b.need.grow36, label %b.grow237, label %b.nogrow238

str_overflow_abort33:                             ; preds = %b.grow_done
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len32

b.grow237:                                        ; preds = %b.rn.new.len32
  %b.cap240 = mul i64 %b.cap35, 2
  %b.cap.small41 = icmp slt i64 %b.cap240, 16
  %b.cap.grow42 = select i1 %b.cap.small41, i64 16, i64 %b.cap240
  %b.cap.need43 = icmp slt i64 %b.cap.grow42, %sum30
  %b.new.cap44 = select i1 %b.cap.need43, i64 %sum30, i64 %b.cap.grow42
  %b.cur.len245 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 0
  %b.cur.len246 = load i64, ptr %b.cur.len245, align 8
  %b.cur.data247 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 1
  %b.cur.data248 = load ptr, ptr %b.cur.data247, align 8
  %b.new.buf.len249 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap44, i64 1)
  %sum50 = extractvalue { i64, i1 } %b.new.buf.len249, 0
  %ovf51 = extractvalue { i64, i1 } %b.new.buf.len249, 1
  br i1 %ovf51, label %str_overflow_abort53, label %b.new.buf.len252

b.nogrow238:                                      ; preds = %b.rn.new.len32
  br label %b.grow_done39

b.grow_done39:                                    ; preds = %b.nogrow238, %b.new.buf.len252
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 1
  %b.rn.data59 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data59, i64 %b.rn.cur.len29
  br i1 true, label %br.b1.518, label %br.c2.518

b.new.buf.len252:                                 ; preds = %str_overflow_abort53, %b.grow237
  %arena.cur54 = call ptr @dva_arena_current()
  %b.new.buf255 = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 %sum50)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf255, ptr align 1 %b.cur.data248, i64 %b.cur.len246, i1 false)
  %b.grow2.nul56 = getelementptr i8, ptr %b.new.buf255, i64 %b.cur.len246
  store i8 0, ptr %b.grow2.nul56, align 1
  %b.new.data2.gep57 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 1
  store ptr %b.new.buf255, ptr %b.new.data2.gep57, align 8
  %b.new.cap2.gep58 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 2
  store i64 %b.new.cap44, ptr %b.new.cap2.gep58, align 8
  br label %b.grow_done39

str_overflow_abort53:                             ; preds = %b.grow237
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len252

br.b1.518:                                        ; preds = %b.grow_done39
  store i8 10, ptr %b.rn.dst, align 1
  br label %br.done.518

br.c2.518:                                        ; preds = %b.grow_done39
  br i1 true, label %br.b2.518, label %br.c3.518

br.b2.518:                                        ; preds = %br.c2.518
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -118, ptr %br.dst1, align 1
  br label %br.done.518

br.c3.518:                                        ; preds = %br.c2.518
  br i1 true, label %br.b3.518, label %br.b4.518

br.b3.518:                                        ; preds = %br.c3.518
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -118, ptr %br.dst2.3, align 1
  br label %br.done.518

br.b4.518:                                        ; preds = %br.c3.518
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -118, ptr %br.dst3.4, align 1
  br label %br.done.518

br.done.518:                                      ; preds = %br.b4.518, %br.b3.518, %br.b2.518, %br.b1.518
  %br.nul = getelementptr i8, ptr %b.rn.data59, i64 %sum30
  store i8 0, ptr %br.nul, align 1
  %b.len.gep60 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 0
  store i64 %sum30, ptr %b.len.gep60, align 8
  br label %loop.latch.517

b.freeze.check:                                   ; preds = %loop.exit.517
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data63, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data63, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data63, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len62, 1
  %arena.cur64 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data63, i64 %b.freeze.len62, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len62
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.517
  %b.freeze.data65 = phi ptr [ %b.freeze.data63, %loop.exit.517 ], [ %b.freeze.data63, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur66 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len62, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data65, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load61, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load61, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load61, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.res, align 8
  %var.load67 = load ptr, ptr %var.res, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load67, i32 0, i32 0
  %str.len.query68 = load i64, ptr %str.len.query, align 8
  %str.len.query69 = and i64 %str.len.query68, 281474976710655
  %str.tag70 = lshr i64 %str.len.query68, 48
  %str.immortal71 = icmp eq i64 %str.tag70, 0
  br i1 %str.immortal71, label %str_ok73, label %str_gen_check72

str_gen_check72:                                  ; preds = %b.freeze.done
  %arena.cur75 = call ptr @dva_arena_current()
  %tag.valid76 = call i1 @dva_arena_validate_tag(ptr %arena.cur75, i64 %str.tag70)
  br i1 %tag.valid76, label %str_ok73, label %str_stale74

str_ok73:                                         ; preds = %str_stale74, %str_gen_check72, %b.freeze.done
  store i64 %str.len.query69, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.519, align 8
  br label %loop.header.519

str_stale74:                                      ; preds = %str_gen_check72
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok73

loop.header.519:                                  ; preds = %loop.latch.519, %str_ok73
  %counter.load77 = load i64, ptr %loop.idx.519, align 8
  br label %loop.body.519

loop.body.519:                                    ; preds = %loop.header.519
  %loop.rel.i78 = sub i64 %counter.load77, 0
  store i64 1, ptr %loop.step.519, align 8
  store i64 %loop.rel.i78, ptr %var._i79, align 8
  store i64 %counter.load77, ptr %var._80, align 8
  %var.load81 = load i64, ptr %"var.end'", align 8
  %cmptmp = icmp sgt i64 %var.load81, 1
  br i1 %cmptmp, label %and.520.then, label %and.520.else

loop.exit.nat.519:                                ; No predecessors!
  br label %loop.exit.519

loop.latch.519:                                   ; preds = %choice.exit
  %step.val121 = load i64, ptr %loop.step.519, align 8
  %loop.next122 = add i64 %counter.load77, %step.val121
  store i64 %loop.next122, ptr %loop.idx.519, align 8
  br label %loop.header.519

loop.exit.519:                                    ; preds = %choice.else, %loop.exit.nat.519
  %var.load123 = load ptr, ptr %var.res, align 8
  %s.read.len124 = getelementptr inbounds { i64, ptr }, ptr %var.load123, i32 0, i32 0
  %s.read.len125 = load i64, ptr %s.read.len124, align 8
  %s.read.len126 = and i64 %s.read.len125, 281474976710655
  %str.tag127 = lshr i64 %s.read.len125, 48
  %str.immortal128 = icmp eq i64 %str.tag127, 0
  br i1 %str.immortal128, label %str_ok130, label %str_gen_check129

and.520.then:                                     ; preds = %loop.body.519
  %var.load82 = load ptr, ptr %var.res, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load82, i32 0, i32 0
  %s.read.len83 = load i64, ptr %s.read.len, align 8
  %s.read.len84 = and i64 %s.read.len83, 281474976710655
  %str.tag85 = lshr i64 %s.read.len83, 48
  %str.immortal86 = icmp eq i64 %str.tag85, 0
  br i1 %str.immortal86, label %str_ok88, label %str_gen_check87

and.520.else:                                     ; preds = %loop.body.519
  br label %and.520.exit

and.520.exit:                                     ; preds = %and.520.else, %idx_ok
  %and.520.phi = phi i1 [ %cmptmp94, %idx_ok ], [ %cmptmp, %and.520.else ]
  br i1 %and.520.phi, label %and.521.then, label %and.521.else

str_gen_check87:                                  ; preds = %and.520.then
  %arena.cur90 = call ptr @dva_arena_current()
  %tag.valid91 = call i1 @dva_arena_validate_tag(ptr %arena.cur90, i64 %str.tag85)
  br i1 %tag.valid91, label %str_ok88, label %str_stale89

str_ok88:                                         ; preds = %str_stale89, %str_gen_check87, %and.520.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load82, i32 0, i32 1
  %s.read.data92 = load ptr, ptr %s.read.data, align 8
  %var.load93 = load i64, ptr %"var.end'", align 8
  %subtmp = sub i64 %var.load93, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale89:                                      ; preds = %str_gen_check87
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok88

idx_big_check:                                    ; preds = %str_ok88
  %idx.big = icmp sge i64 %subtmp, %s.read.len84
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data92, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp94 = icmp eq i64 %s.byte.val, 10
  br label %and.520.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok88
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.521.then:                                     ; preds = %and.520.exit
  %var.load95 = load ptr, ptr %var.res, align 8
  %s.read.len96 = getelementptr inbounds { i64, ptr }, ptr %var.load95, i32 0, i32 0
  %s.read.len97 = load i64, ptr %s.read.len96, align 8
  %s.read.len98 = and i64 %s.read.len97, 281474976710655
  %str.tag99 = lshr i64 %s.read.len97, 48
  %str.immortal100 = icmp eq i64 %str.tag99, 0
  br i1 %str.immortal100, label %str_ok102, label %str_gen_check101

and.521.else:                                     ; preds = %and.520.exit
  br label %and.521.exit

and.521.exit:                                     ; preds = %and.521.else, %idx_ok112
  %and.521.phi = phi i1 [ %cmptmp118, %idx_ok112 ], [ %and.520.phi, %and.521.else ]
  br i1 %and.521.phi, label %choice.then, label %choice.else

str_gen_check101:                                 ; preds = %and.521.then
  %arena.cur104 = call ptr @dva_arena_current()
  %tag.valid105 = call i1 @dva_arena_validate_tag(ptr %arena.cur104, i64 %str.tag99)
  br i1 %tag.valid105, label %str_ok102, label %str_stale103

str_ok102:                                        ; preds = %str_stale103, %str_gen_check101, %and.521.then
  %s.read.data106 = getelementptr inbounds { i64, ptr }, ptr %var.load95, i32 0, i32 1
  %s.read.data107 = load ptr, ptr %s.read.data106, align 8
  %var.load108 = load i64, ptr %"var.end'", align 8
  %subtmp109 = sub i64 %var.load108, 2
  %idx.neg110 = icmp slt i64 %subtmp109, 0
  br i1 %idx.neg110, label %idx_oob113, label %idx_big_check111

str_stale103:                                     ; preds = %str_gen_check101
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok102

idx_big_check111:                                 ; preds = %str_ok102
  %idx.big114 = icmp sge i64 %subtmp109, %s.read.len98
  br i1 %idx.big114, label %idx_oob113, label %idx_ok112

idx_ok112:                                        ; preds = %idx_oob113, %idx_big_check111
  %s.byte.gep115 = getelementptr i8, ptr %s.read.data107, i64 %subtmp109
  %s.byte116 = load i8, ptr %s.byte.gep115, align 1
  %s.byte.val117 = zext i8 %s.byte116 to i64
  %cmptmp118 = icmp eq i64 %s.byte.val117, 10
  br label %and.521.exit

idx_oob113:                                       ; preds = %idx_big_check111, %str_ok102
  %11 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok112

choice.then:                                      ; preds = %and.521.exit
  %var.load119 = load i64, ptr %"var.end'", align 8
  %subtmp120 = sub i64 %var.load119, 1
  store i64 %subtmp120, ptr %"var.end'", align 8
  br label %choice.exit

choice.else:                                      ; preds = %and.521.exit
  br label %loop.exit.519

choice.exit:                                      ; preds = %choice.then
  br label %loop.latch.519

str_gen_check129:                                 ; preds = %loop.exit.519
  %arena.cur132 = call ptr @dva_arena_current()
  %tag.valid133 = call i1 @dva_arena_validate_tag(ptr %arena.cur132, i64 %str.tag127)
  br i1 %tag.valid133, label %str_ok130, label %str_stale131

str_ok130:                                        ; preds = %str_stale131, %str_gen_check129, %loop.exit.519
  %s.read.data134 = getelementptr inbounds { i64, ptr }, ptr %var.load123, i32 0, i32 1
  %s.read.data135 = load ptr, ptr %s.read.data134, align 8
  %var.load136 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len126, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len126
  %final.start = select i1 %start.gt.len, i64 %s.read.len126, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load136, 0
  %rel.end = add i64 %s.read.len126, %var.load136
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load136
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len126
  %final.end = select i1 %end.gt.len, i64 %s.read.len126, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data135, i64 %final.start
  %arena.cur137 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur137, i64 16)
  %str.build.len.gep138 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep138, align 8
  %str.build.data.gep139 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep139, align 8
  ret ptr %str.view

str_stale131:                                     ; preds = %str_gen_check129
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok130
}

define { i1, i64 } @"formatter::parse_ast_signature"(ptr %0, ptr %1) #1 {
entry:
  %var.fn629 = alloca ptr, align 8
  %var.d548 = alloca ptr, align 8
  %var.fn = alloca ptr, align 8
  %var.d = alloca ptr, align 8
  %var.prog = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.diags = alloca ptr, align 8
  %var.prog_res = alloca { i1, i64 }, align 8
  %var.ppr = alloca ptr, align 8
  %var.filename = alloca ptr, align 8
  %var.src = alloca ptr, align 8
  store ptr %0, ptr %var.src, align 8
  store ptr %1, ptr %var.filename, align 8
  call void @"diag::enable_capture"()
  %var.load = load ptr, ptr %var.filename, align 8
  call void @"lexer::lex_set_file"(ptr %var.load)
  %var.load1 = load ptr, ptr %var.src, align 8
  %call.res = call ptr @"parser::parse_init"(ptr %var.load1)
  store ptr %call.res, ptr %var.ppr, align 8
  %var.load2 = load ptr, ptr %var.ppr, align 8
  %var.load3 = load ptr, ptr %var.filename, align 8
  call void @"parser::parser_set_file"(ptr %var.load2, ptr %var.load3)
  %var.load4 = load ptr, ptr %var.ppr, align 8
  %fld.gep = getelementptr inbounds { { ptr, i64, i64, i64, i64, i64, ptr, i64, ptr, i64, i1, ptr, ptr, i64, i64 }, { ptr, i64, i64, i64, i64, i1, i1, ptr }, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, i1, i1, i1, i1, i1, ptr, ptr, ptr, ptr, i64, i64, i1, i1, i1, ptr, i1, ptr, ptr, ptr, ptr }, ptr %var.load4, i32 0, i32 16
  store i1 true, ptr %fld.gep, align 1
  %var.load5 = load ptr, ptr %var.ppr, align 8
  %call.res6 = call { i1, i64 } @"parser::parse_program"(ptr %var.load5)
  store { i1, i64 } %call.res6, ptr %var.prog_res, align 8
  %call.res7 = call ptr @"diag::get_captured"()
  store ptr %call.res7, ptr %var.diags, align 8
  call void @"diag::disable_capture"()
  %var.load8 = load { i1, i64 }, ptr %var.prog_res, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load8, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %var.load8, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.prog, align 8
  %var.load9 = load ptr, ptr %var.diags, align 8
  %a.load = load ptr, ptr %var.diags, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else:                                      ; preds = %entry
  %var.load428 = load ptr, ptr %var.diags, align 8
  %a.load429 = load ptr, ptr %var.diags, align 8
  %a.null430 = icmp eq ptr %a.load429, null
  br i1 %a.null430, label %a.create431, label %a.after432

choice.exit:                                      ; preds = %choice.exit446, %choice.exit15
  %choice.res980 = phi { i1, i64 } [ %choice.res427, %choice.exit15 ], [ %choice.res979, %choice.exit446 ]
  ret { i1, i64 } %choice.res980

a.create:                                         ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %a.create10 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur11 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create10, ptr %var.diags, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.diags, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query12 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp sgt i64 %a.len.query12, 0
  br i1 %cmptmp, label %choice.then13, label %choice.else14

choice.then13:                                    ; preds = %a.after
  %var.load16 = load ptr, ptr %var.diags, align 8
  %a.load17 = load ptr, ptr %var.diags, align 8
  %a.null18 = icmp eq ptr %a.load17, null
  br i1 %a.null18, label %a.create19, label %a.after20

choice.else14:                                    ; preds = %a.after
  %var.load423 = load ptr, ptr %var.prog, align 8
  %call.res424 = call ptr @"show::show_expr"(ptr %var.load423)
  %p.to.i64425 = ptrtoint ptr %call.res424 to i64
  %ram.pay426 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64425, 1
  br label %choice.exit15

choice.exit15:                                    ; preds = %choice.else14, %concat.tot.len412
  %choice.res427 = phi { i1, i64 } [ %ram.pay422, %concat.tot.len412 ], [ %ram.pay426, %choice.else14 ]
  br label %choice.exit

a.create19:                                       ; preds = %choice.then13
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
  store ptr %a.create22, ptr %var.diags, align 8
  br label %a.after20

a.after20:                                        ; preds = %a.create19, %choice.then13
  %a.load228 = load ptr, ptr %var.diags, align 8
  %a.rd.nonnull = icmp ne ptr %a.load228, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after20
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load228, i32 0, i32 0
  %a.rd.len29 = load i64, ptr %a.rd.len, align 8
  %a.rd.lt = icmp slt i64 0, %a.rd.len29
  %a.rd.bounds = and i1 true, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load228, i32 0, i32 1
  %a.rd.data30 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data30, i64 0
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after20
  %arena.cur31 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.5.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 464, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 28, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur32 = call ptr @dva_arena_current()
  %err.alloc33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 56)
  %err.code.gep34 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 0
  store i64 4011, ptr %err.code.gep34, align 8
  %err.msg.gep35 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep35, align 8
  %err.file.gep36 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 2
  store ptr @str.5.struct, ptr %err.file.gep36, align 8
  %err.line.gep37 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 3
  store i64 464, ptr %err.line.gep37, align 8
  %err.col.gep38 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 4
  store i64 28, ptr %err.col.gep38, align 8
  %err.ctx.gep39 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc33, i32 0, i32 5
  %err.ctx0.gep40 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep39, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep40, align 8
  %err.ctx1.gep41 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep39, i32 0, i32 1
  store i64 %a.rd.len29, ptr %err.ctx1.gep41, align 8
  %err.p2i42 = ptrtoint ptr %err.alloc33 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i42, %a.rd.err.oob ]
  %ram.tag43 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay44 = insertvalue { i1, i64 } %ram.tag43, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay44, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.522, label %unwrap.abort.522

unwrap.pos.522:                                   ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay44, 1
  %pay.ptr64 = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr64, ptr %var.d, align 8
  %var.load65 = load ptr, ptr %var.d, align 8
  %fld.gep66 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load65, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep66, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len67 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len68 = and i64 %eq.lhs.len67, 281474976710655
  %str.tag69 = lshr i64 %eq.lhs.len67, 48
  %str.immortal70 = icmp eq i64 %str.tag69, 0
  br i1 %str.immortal70, label %str_ok72, label %str_gen_check71

unwrap.abort.522:                                 ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay44, 1
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

str_gen_check:                                    ; preds = %unwrap.abort.522
  %arena.cur52 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur52, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %unwrap.abort.522
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
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
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
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
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

str_gen_check71:                                  ; preds = %unwrap.pos.522
  %arena.cur74 = call ptr @dva_arena_current()
  %tag.valid75 = call i1 @dva_arena_validate_tag(ptr %arena.cur74, i64 %str.tag69)
  br i1 %tag.valid75, label %str_ok72, label %str_stale73

str_ok72:                                         ; preds = %str_stale73, %str_gen_check71, %unwrap.pos.522
  %eq.rhs.len = load i64, ptr @str.3.struct, align 8
  %eq.rhs.len76 = and i64 %eq.rhs.len, 281474976710655
  %str.tag77 = lshr i64 %eq.rhs.len, 48
  %str.immortal78 = icmp eq i64 %str.tag77, 0
  br i1 %str.immortal78, label %str_ok80, label %str_gen_check79

str_stale73:                                      ; preds = %str_gen_check71
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok72

str_gen_check79:                                  ; preds = %str_ok72
  %arena.cur82 = call ptr @dva_arena_current()
  %tag.valid83 = call i1 @dva_arena_validate_tag(ptr %arena.cur82, i64 %str.tag77)
  br i1 %tag.valid83, label %str_ok80, label %str_stale81

str_ok80:                                         ; preds = %str_stale81, %str_gen_check79, %str_ok72
  %eq.len = icmp eq i64 %eq.lhs.len68, %eq.rhs.len76
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale81:                                      ; preds = %str_gen_check79
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok80

str.eq.then:                                      ; preds = %str_ok80
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data84 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data84, ptr %eq.rhs.data, i64 %eq.lhs.len68)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok80
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then85, label %choice.else86

choice.then85:                                    ; preds = %str.eq.merge
  %var.load88 = load ptr, ptr %var.d, align 8
  %fld.gep89 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load88, i32 0, i32 1
  %fld.load90 = load ptr, ptr %fld.gep89, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %fld.load90, i32 0, i32 0
  %concat.lhs91 = load i64, ptr %concat.lhs, align 8
  %concat.lhs92 = and i64 %concat.lhs91, 281474976710655
  %str.tag93 = lshr i64 %concat.lhs91, 48
  %str.immortal94 = icmp eq i64 %str.tag93, 0
  br i1 %str.immortal94, label %str_ok96, label %str_gen_check95

choice.else86:                                    ; preds = %str.eq.merge
  br label %choice.exit87

choice.exit87:                                    ; preds = %choice.else86, %concat.tot.len114
  %choice.res = phi ptr [ %concat.str, %concat.tot.len114 ], [ @str.3.struct, %choice.else86 ]
  store ptr %choice.res, ptr %var.fn, align 8
  %var.load118 = load ptr, ptr %var.fn, align 8
  %var.load119 = load ptr, ptr %var.d, align 8
  %fld.gep120 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load119, i32 0, i32 2
  %fld.load121 = load i64, ptr %fld.gep120, align 8
  %call.res122 = call ptr @"str::from_int"(i64 %fld.load121)
  %concat.lhs123 = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 0
  %concat.lhs124 = load i64, ptr %concat.lhs123, align 8
  %concat.lhs125 = and i64 %concat.lhs124, 281474976710655
  %str.tag126 = lshr i64 %concat.lhs124, 48
  %str.immortal127 = icmp eq i64 %str.tag126, 0
  br i1 %str.immortal127, label %str_ok129, label %str_gen_check128

str_gen_check95:                                  ; preds = %choice.then85
  %arena.cur98 = call ptr @dva_arena_current()
  %tag.valid99 = call i1 @dva_arena_validate_tag(ptr %arena.cur98, i64 %str.tag93)
  br i1 %tag.valid99, label %str_ok96, label %str_stale97

str_ok96:                                         ; preds = %str_stale97, %str_gen_check95, %choice.then85
  %concat.lhs100 = getelementptr inbounds { i64, ptr }, ptr %fld.load90, i32 0, i32 1
  %concat.lhs101 = load ptr, ptr %concat.lhs100, align 8
  %concat.rhs = load i64, ptr @str.7.struct, align 8
  %concat.rhs102 = and i64 %concat.rhs, 281474976710655
  %str.tag103 = lshr i64 %concat.rhs, 48
  %str.immortal104 = icmp eq i64 %str.tag103, 0
  br i1 %str.immortal104, label %str_ok106, label %str_gen_check105

str_stale97:                                      ; preds = %str_gen_check95
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok96

str_gen_check105:                                 ; preds = %str_ok96
  %arena.cur108 = call ptr @dva_arena_current()
  %tag.valid109 = call i1 @dva_arena_validate_tag(ptr %arena.cur108, i64 %str.tag103)
  br i1 %tag.valid109, label %str_ok106, label %str_stale107

str_ok106:                                        ; preds = %str_stale107, %str_gen_check105, %str_ok96
  %concat.rhs110 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs92, i64 %concat.rhs102)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len111

str_stale107:                                     ; preds = %str_gen_check105
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok106

concat.sum.len111:                                ; preds = %str_overflow_abort, %str_ok106
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum112 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf113 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf113, label %str_overflow_abort115, label %concat.tot.len114

str_overflow_abort:                               ; preds = %str_ok106
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len111

concat.tot.len114:                                ; preds = %str_overflow_abort115, %concat.sum.len111
  %arena.cur116 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 %sum112)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs101, i64 %concat.lhs92, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs92
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs110, i64 %concat.rhs102, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur117 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur117, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit87

str_overflow_abort115:                            ; preds = %concat.sum.len111
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len114

str_gen_check128:                                 ; preds = %choice.exit87
  %arena.cur131 = call ptr @dva_arena_current()
  %tag.valid132 = call i1 @dva_arena_validate_tag(ptr %arena.cur131, i64 %str.tag126)
  br i1 %tag.valid132, label %str_ok129, label %str_stale130

str_ok129:                                        ; preds = %str_stale130, %str_gen_check128, %choice.exit87
  %concat.lhs133 = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 1
  %concat.lhs134 = load ptr, ptr %concat.lhs133, align 8
  %concat.rhs135 = getelementptr inbounds { i64, ptr }, ptr %call.res122, i32 0, i32 0
  %concat.rhs136 = load i64, ptr %concat.rhs135, align 8
  %concat.rhs137 = and i64 %concat.rhs136, 281474976710655
  %str.tag138 = lshr i64 %concat.rhs136, 48
  %str.immortal139 = icmp eq i64 %str.tag138, 0
  br i1 %str.immortal139, label %str_ok141, label %str_gen_check140

str_stale130:                                     ; preds = %str_gen_check128
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok129

str_gen_check140:                                 ; preds = %str_ok129
  %arena.cur143 = call ptr @dva_arena_current()
  %tag.valid144 = call i1 @dva_arena_validate_tag(ptr %arena.cur143, i64 %str.tag138)
  br i1 %tag.valid144, label %str_ok141, label %str_stale142

str_ok141:                                        ; preds = %str_stale142, %str_gen_check140, %str_ok129
  %concat.rhs145 = getelementptr inbounds { i64, ptr }, ptr %call.res122, i32 0, i32 1
  %concat.rhs146 = load ptr, ptr %concat.rhs145, align 8
  %concat.sum.len147 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs125, i64 %concat.rhs137)
  %sum148 = extractvalue { i64, i1 } %concat.sum.len147, 0
  %ovf149 = extractvalue { i64, i1 } %concat.sum.len147, 1
  br i1 %ovf149, label %str_overflow_abort151, label %concat.sum.len150

str_stale142:                                     ; preds = %str_gen_check140
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok141

concat.sum.len150:                                ; preds = %str_overflow_abort151, %str_ok141
  %concat.tot.len152 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum148, i64 1)
  %sum153 = extractvalue { i64, i1 } %concat.tot.len152, 0
  %ovf154 = extractvalue { i64, i1 } %concat.tot.len152, 1
  br i1 %ovf154, label %str_overflow_abort156, label %concat.tot.len155

str_overflow_abort151:                            ; preds = %str_ok141
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len150

concat.tot.len155:                                ; preds = %str_overflow_abort156, %concat.sum.len150
  %arena.cur157 = call ptr @dva_arena_current()
  %concat.buf158 = call ptr @dva_arena_alloc(ptr %arena.cur157, i64 %sum153)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf158, ptr align 1 %concat.lhs134, i64 %concat.lhs125, i1 false)
  %concat.mid159 = getelementptr i8, ptr %concat.buf158, i64 %concat.lhs125
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid159, ptr align 1 %concat.rhs146, i64 %concat.rhs137, i1 false)
  %concat.nul160 = getelementptr i8, ptr %concat.buf158, i64 %sum148
  store i8 0, ptr %concat.nul160, align 1
  %arena.cur161 = call ptr @dva_arena_current()
  %concat.str162 = call ptr @dva_arena_alloc(ptr %arena.cur161, i64 16)
  %str.build.len.gep163 = getelementptr inbounds { i64, ptr }, ptr %concat.str162, i32 0, i32 0
  store i64 %sum148, ptr %str.build.len.gep163, align 8
  %str.build.data.gep164 = getelementptr inbounds { i64, ptr }, ptr %concat.str162, i32 0, i32 1
  store ptr %concat.buf158, ptr %str.build.data.gep164, align 8
  %concat.lhs165 = getelementptr inbounds { i64, ptr }, ptr %concat.str162, i32 0, i32 0
  %concat.lhs166 = load i64, ptr %concat.lhs165, align 8
  %concat.lhs167 = and i64 %concat.lhs166, 281474976710655
  %str.tag168 = lshr i64 %concat.lhs166, 48
  %str.immortal169 = icmp eq i64 %str.tag168, 0
  br i1 %str.immortal169, label %str_ok171, label %str_gen_check170

str_overflow_abort156:                            ; preds = %concat.sum.len150
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len155

str_gen_check170:                                 ; preds = %concat.tot.len155
  %arena.cur173 = call ptr @dva_arena_current()
  %tag.valid174 = call i1 @dva_arena_validate_tag(ptr %arena.cur173, i64 %str.tag168)
  br i1 %tag.valid174, label %str_ok171, label %str_stale172

str_ok171:                                        ; preds = %str_stale172, %str_gen_check170, %concat.tot.len155
  %concat.lhs175 = getelementptr inbounds { i64, ptr }, ptr %concat.str162, i32 0, i32 1
  %concat.lhs176 = load ptr, ptr %concat.lhs175, align 8
  %concat.rhs177 = load i64, ptr @str.7.struct, align 8
  %concat.rhs178 = and i64 %concat.rhs177, 281474976710655
  %str.tag179 = lshr i64 %concat.rhs177, 48
  %str.immortal180 = icmp eq i64 %str.tag179, 0
  br i1 %str.immortal180, label %str_ok182, label %str_gen_check181

str_stale172:                                     ; preds = %str_gen_check170
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok171

str_gen_check181:                                 ; preds = %str_ok171
  %arena.cur184 = call ptr @dva_arena_current()
  %tag.valid185 = call i1 @dva_arena_validate_tag(ptr %arena.cur184, i64 %str.tag179)
  br i1 %tag.valid185, label %str_ok182, label %str_stale183

str_ok182:                                        ; preds = %str_stale183, %str_gen_check181, %str_ok171
  %concat.rhs186 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %concat.sum.len187 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs167, i64 %concat.rhs178)
  %sum188 = extractvalue { i64, i1 } %concat.sum.len187, 0
  %ovf189 = extractvalue { i64, i1 } %concat.sum.len187, 1
  br i1 %ovf189, label %str_overflow_abort191, label %concat.sum.len190

str_stale183:                                     ; preds = %str_gen_check181
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok182

concat.sum.len190:                                ; preds = %str_overflow_abort191, %str_ok182
  %concat.tot.len192 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum188, i64 1)
  %sum193 = extractvalue { i64, i1 } %concat.tot.len192, 0
  %ovf194 = extractvalue { i64, i1 } %concat.tot.len192, 1
  br i1 %ovf194, label %str_overflow_abort196, label %concat.tot.len195

str_overflow_abort191:                            ; preds = %str_ok182
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len190

concat.tot.len195:                                ; preds = %str_overflow_abort196, %concat.sum.len190
  %arena.cur197 = call ptr @dva_arena_current()
  %concat.buf198 = call ptr @dva_arena_alloc(ptr %arena.cur197, i64 %sum193)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf198, ptr align 1 %concat.lhs176, i64 %concat.lhs167, i1 false)
  %concat.mid199 = getelementptr i8, ptr %concat.buf198, i64 %concat.lhs167
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid199, ptr align 1 %concat.rhs186, i64 %concat.rhs178, i1 false)
  %concat.nul200 = getelementptr i8, ptr %concat.buf198, i64 %sum188
  store i8 0, ptr %concat.nul200, align 1
  %arena.cur201 = call ptr @dva_arena_current()
  %concat.str202 = call ptr @dva_arena_alloc(ptr %arena.cur201, i64 16)
  %str.build.len.gep203 = getelementptr inbounds { i64, ptr }, ptr %concat.str202, i32 0, i32 0
  store i64 %sum188, ptr %str.build.len.gep203, align 8
  %str.build.data.gep204 = getelementptr inbounds { i64, ptr }, ptr %concat.str202, i32 0, i32 1
  store ptr %concat.buf198, ptr %str.build.data.gep204, align 8
  %var.load205 = load ptr, ptr %var.d, align 8
  %fld.gep206 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load205, i32 0, i32 3
  %fld.load207 = load i64, ptr %fld.gep206, align 8
  %call.res208 = call ptr @"str::from_int"(i64 %fld.load207)
  %concat.lhs209 = getelementptr inbounds { i64, ptr }, ptr %concat.str202, i32 0, i32 0
  %concat.lhs210 = load i64, ptr %concat.lhs209, align 8
  %concat.lhs211 = and i64 %concat.lhs210, 281474976710655
  %str.tag212 = lshr i64 %concat.lhs210, 48
  %str.immortal213 = icmp eq i64 %str.tag212, 0
  br i1 %str.immortal213, label %str_ok215, label %str_gen_check214

str_overflow_abort196:                            ; preds = %concat.sum.len190
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len195

str_gen_check214:                                 ; preds = %concat.tot.len195
  %arena.cur217 = call ptr @dva_arena_current()
  %tag.valid218 = call i1 @dva_arena_validate_tag(ptr %arena.cur217, i64 %str.tag212)
  br i1 %tag.valid218, label %str_ok215, label %str_stale216

str_ok215:                                        ; preds = %str_stale216, %str_gen_check214, %concat.tot.len195
  %concat.lhs219 = getelementptr inbounds { i64, ptr }, ptr %concat.str202, i32 0, i32 1
  %concat.lhs220 = load ptr, ptr %concat.lhs219, align 8
  %concat.rhs221 = getelementptr inbounds { i64, ptr }, ptr %call.res208, i32 0, i32 0
  %concat.rhs222 = load i64, ptr %concat.rhs221, align 8
  %concat.rhs223 = and i64 %concat.rhs222, 281474976710655
  %str.tag224 = lshr i64 %concat.rhs222, 48
  %str.immortal225 = icmp eq i64 %str.tag224, 0
  br i1 %str.immortal225, label %str_ok227, label %str_gen_check226

str_stale216:                                     ; preds = %str_gen_check214
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok215

str_gen_check226:                                 ; preds = %str_ok215
  %arena.cur229 = call ptr @dva_arena_current()
  %tag.valid230 = call i1 @dva_arena_validate_tag(ptr %arena.cur229, i64 %str.tag224)
  br i1 %tag.valid230, label %str_ok227, label %str_stale228

str_ok227:                                        ; preds = %str_stale228, %str_gen_check226, %str_ok215
  %concat.rhs231 = getelementptr inbounds { i64, ptr }, ptr %call.res208, i32 0, i32 1
  %concat.rhs232 = load ptr, ptr %concat.rhs231, align 8
  %concat.sum.len233 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs211, i64 %concat.rhs223)
  %sum234 = extractvalue { i64, i1 } %concat.sum.len233, 0
  %ovf235 = extractvalue { i64, i1 } %concat.sum.len233, 1
  br i1 %ovf235, label %str_overflow_abort237, label %concat.sum.len236

str_stale228:                                     ; preds = %str_gen_check226
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok227

concat.sum.len236:                                ; preds = %str_overflow_abort237, %str_ok227
  %concat.tot.len238 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum234, i64 1)
  %sum239 = extractvalue { i64, i1 } %concat.tot.len238, 0
  %ovf240 = extractvalue { i64, i1 } %concat.tot.len238, 1
  br i1 %ovf240, label %str_overflow_abort242, label %concat.tot.len241

str_overflow_abort237:                            ; preds = %str_ok227
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len236

concat.tot.len241:                                ; preds = %str_overflow_abort242, %concat.sum.len236
  %arena.cur243 = call ptr @dva_arena_current()
  %concat.buf244 = call ptr @dva_arena_alloc(ptr %arena.cur243, i64 %sum239)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf244, ptr align 1 %concat.lhs220, i64 %concat.lhs211, i1 false)
  %concat.mid245 = getelementptr i8, ptr %concat.buf244, i64 %concat.lhs211
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid245, ptr align 1 %concat.rhs232, i64 %concat.rhs223, i1 false)
  %concat.nul246 = getelementptr i8, ptr %concat.buf244, i64 %sum234
  store i8 0, ptr %concat.nul246, align 1
  %arena.cur247 = call ptr @dva_arena_current()
  %concat.str248 = call ptr @dva_arena_alloc(ptr %arena.cur247, i64 16)
  %str.build.len.gep249 = getelementptr inbounds { i64, ptr }, ptr %concat.str248, i32 0, i32 0
  store i64 %sum234, ptr %str.build.len.gep249, align 8
  %str.build.data.gep250 = getelementptr inbounds { i64, ptr }, ptr %concat.str248, i32 0, i32 1
  store ptr %concat.buf244, ptr %str.build.data.gep250, align 8
  %concat.lhs251 = getelementptr inbounds { i64, ptr }, ptr %concat.str248, i32 0, i32 0
  %concat.lhs252 = load i64, ptr %concat.lhs251, align 8
  %concat.lhs253 = and i64 %concat.lhs252, 281474976710655
  %str.tag254 = lshr i64 %concat.lhs252, 48
  %str.immortal255 = icmp eq i64 %str.tag254, 0
  br i1 %str.immortal255, label %str_ok257, label %str_gen_check256

str_overflow_abort242:                            ; preds = %concat.sum.len236
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len241

str_gen_check256:                                 ; preds = %concat.tot.len241
  %arena.cur259 = call ptr @dva_arena_current()
  %tag.valid260 = call i1 @dva_arena_validate_tag(ptr %arena.cur259, i64 %str.tag254)
  br i1 %tag.valid260, label %str_ok257, label %str_stale258

str_ok257:                                        ; preds = %str_stale258, %str_gen_check256, %concat.tot.len241
  %concat.lhs261 = getelementptr inbounds { i64, ptr }, ptr %concat.str248, i32 0, i32 1
  %concat.lhs262 = load ptr, ptr %concat.lhs261, align 8
  %concat.rhs263 = load i64, ptr @str.8.struct, align 8
  %concat.rhs264 = and i64 %concat.rhs263, 281474976710655
  %str.tag265 = lshr i64 %concat.rhs263, 48
  %str.immortal266 = icmp eq i64 %str.tag265, 0
  br i1 %str.immortal266, label %str_ok268, label %str_gen_check267

str_stale258:                                     ; preds = %str_gen_check256
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok257

str_gen_check267:                                 ; preds = %str_ok257
  %arena.cur270 = call ptr @dva_arena_current()
  %tag.valid271 = call i1 @dva_arena_validate_tag(ptr %arena.cur270, i64 %str.tag265)
  br i1 %tag.valid271, label %str_ok268, label %str_stale269

str_ok268:                                        ; preds = %str_stale269, %str_gen_check267, %str_ok257
  %concat.rhs272 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %concat.sum.len273 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs253, i64 %concat.rhs264)
  %sum274 = extractvalue { i64, i1 } %concat.sum.len273, 0
  %ovf275 = extractvalue { i64, i1 } %concat.sum.len273, 1
  br i1 %ovf275, label %str_overflow_abort277, label %concat.sum.len276

str_stale269:                                     ; preds = %str_gen_check267
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok268

concat.sum.len276:                                ; preds = %str_overflow_abort277, %str_ok268
  %concat.tot.len278 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum274, i64 1)
  %sum279 = extractvalue { i64, i1 } %concat.tot.len278, 0
  %ovf280 = extractvalue { i64, i1 } %concat.tot.len278, 1
  br i1 %ovf280, label %str_overflow_abort282, label %concat.tot.len281

str_overflow_abort277:                            ; preds = %str_ok268
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len276

concat.tot.len281:                                ; preds = %str_overflow_abort282, %concat.sum.len276
  %arena.cur283 = call ptr @dva_arena_current()
  %concat.buf284 = call ptr @dva_arena_alloc(ptr %arena.cur283, i64 %sum279)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf284, ptr align 1 %concat.lhs262, i64 %concat.lhs253, i1 false)
  %concat.mid285 = getelementptr i8, ptr %concat.buf284, i64 %concat.lhs253
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid285, ptr align 1 %concat.rhs272, i64 %concat.rhs264, i1 false)
  %concat.nul286 = getelementptr i8, ptr %concat.buf284, i64 %sum274
  store i8 0, ptr %concat.nul286, align 1
  %arena.cur287 = call ptr @dva_arena_current()
  %concat.str288 = call ptr @dva_arena_alloc(ptr %arena.cur287, i64 16)
  %str.build.len.gep289 = getelementptr inbounds { i64, ptr }, ptr %concat.str288, i32 0, i32 0
  store i64 %sum274, ptr %str.build.len.gep289, align 8
  %str.build.data.gep290 = getelementptr inbounds { i64, ptr }, ptr %concat.str288, i32 0, i32 1
  store ptr %concat.buf284, ptr %str.build.data.gep290, align 8
  %var.load291 = load ptr, ptr %var.d, align 8
  %fld.gep292 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load291, i32 0, i32 0
  %fld.load293 = load i64, ptr %fld.gep292, align 8
  %call.res294 = call ptr @"str::from_int"(i64 %fld.load293)
  %concat.lhs295 = getelementptr inbounds { i64, ptr }, ptr %concat.str288, i32 0, i32 0
  %concat.lhs296 = load i64, ptr %concat.lhs295, align 8
  %concat.lhs297 = and i64 %concat.lhs296, 281474976710655
  %str.tag298 = lshr i64 %concat.lhs296, 48
  %str.immortal299 = icmp eq i64 %str.tag298, 0
  br i1 %str.immortal299, label %str_ok301, label %str_gen_check300

str_overflow_abort282:                            ; preds = %concat.sum.len276
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len281

str_gen_check300:                                 ; preds = %concat.tot.len281
  %arena.cur303 = call ptr @dva_arena_current()
  %tag.valid304 = call i1 @dva_arena_validate_tag(ptr %arena.cur303, i64 %str.tag298)
  br i1 %tag.valid304, label %str_ok301, label %str_stale302

str_ok301:                                        ; preds = %str_stale302, %str_gen_check300, %concat.tot.len281
  %concat.lhs305 = getelementptr inbounds { i64, ptr }, ptr %concat.str288, i32 0, i32 1
  %concat.lhs306 = load ptr, ptr %concat.lhs305, align 8
  %concat.rhs307 = getelementptr inbounds { i64, ptr }, ptr %call.res294, i32 0, i32 0
  %concat.rhs308 = load i64, ptr %concat.rhs307, align 8
  %concat.rhs309 = and i64 %concat.rhs308, 281474976710655
  %str.tag310 = lshr i64 %concat.rhs308, 48
  %str.immortal311 = icmp eq i64 %str.tag310, 0
  br i1 %str.immortal311, label %str_ok313, label %str_gen_check312

str_stale302:                                     ; preds = %str_gen_check300
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok301

str_gen_check312:                                 ; preds = %str_ok301
  %arena.cur315 = call ptr @dva_arena_current()
  %tag.valid316 = call i1 @dva_arena_validate_tag(ptr %arena.cur315, i64 %str.tag310)
  br i1 %tag.valid316, label %str_ok313, label %str_stale314

str_ok313:                                        ; preds = %str_stale314, %str_gen_check312, %str_ok301
  %concat.rhs317 = getelementptr inbounds { i64, ptr }, ptr %call.res294, i32 0, i32 1
  %concat.rhs318 = load ptr, ptr %concat.rhs317, align 8
  %concat.sum.len319 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs297, i64 %concat.rhs309)
  %sum320 = extractvalue { i64, i1 } %concat.sum.len319, 0
  %ovf321 = extractvalue { i64, i1 } %concat.sum.len319, 1
  br i1 %ovf321, label %str_overflow_abort323, label %concat.sum.len322

str_stale314:                                     ; preds = %str_gen_check312
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok313

concat.sum.len322:                                ; preds = %str_overflow_abort323, %str_ok313
  %concat.tot.len324 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum320, i64 1)
  %sum325 = extractvalue { i64, i1 } %concat.tot.len324, 0
  %ovf326 = extractvalue { i64, i1 } %concat.tot.len324, 1
  br i1 %ovf326, label %str_overflow_abort328, label %concat.tot.len327

str_overflow_abort323:                            ; preds = %str_ok313
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len322

concat.tot.len327:                                ; preds = %str_overflow_abort328, %concat.sum.len322
  %arena.cur329 = call ptr @dva_arena_current()
  %concat.buf330 = call ptr @dva_arena_alloc(ptr %arena.cur329, i64 %sum325)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf330, ptr align 1 %concat.lhs306, i64 %concat.lhs297, i1 false)
  %concat.mid331 = getelementptr i8, ptr %concat.buf330, i64 %concat.lhs297
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid331, ptr align 1 %concat.rhs318, i64 %concat.rhs309, i1 false)
  %concat.nul332 = getelementptr i8, ptr %concat.buf330, i64 %sum320
  store i8 0, ptr %concat.nul332, align 1
  %arena.cur333 = call ptr @dva_arena_current()
  %concat.str334 = call ptr @dva_arena_alloc(ptr %arena.cur333, i64 16)
  %str.build.len.gep335 = getelementptr inbounds { i64, ptr }, ptr %concat.str334, i32 0, i32 0
  store i64 %sum320, ptr %str.build.len.gep335, align 8
  %str.build.data.gep336 = getelementptr inbounds { i64, ptr }, ptr %concat.str334, i32 0, i32 1
  store ptr %concat.buf330, ptr %str.build.data.gep336, align 8
  %concat.lhs337 = getelementptr inbounds { i64, ptr }, ptr %concat.str334, i32 0, i32 0
  %concat.lhs338 = load i64, ptr %concat.lhs337, align 8
  %concat.lhs339 = and i64 %concat.lhs338, 281474976710655
  %str.tag340 = lshr i64 %concat.lhs338, 48
  %str.immortal341 = icmp eq i64 %str.tag340, 0
  br i1 %str.immortal341, label %str_ok343, label %str_gen_check342

str_overflow_abort328:                            ; preds = %concat.sum.len322
  %29 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len327

str_gen_check342:                                 ; preds = %concat.tot.len327
  %arena.cur345 = call ptr @dva_arena_current()
  %tag.valid346 = call i1 @dva_arena_validate_tag(ptr %arena.cur345, i64 %str.tag340)
  br i1 %tag.valid346, label %str_ok343, label %str_stale344

str_ok343:                                        ; preds = %str_stale344, %str_gen_check342, %concat.tot.len327
  %concat.lhs347 = getelementptr inbounds { i64, ptr }, ptr %concat.str334, i32 0, i32 1
  %concat.lhs348 = load ptr, ptr %concat.lhs347, align 8
  %concat.rhs349 = load i64, ptr @str.2.struct, align 8
  %concat.rhs350 = and i64 %concat.rhs349, 281474976710655
  %str.tag351 = lshr i64 %concat.rhs349, 48
  %str.immortal352 = icmp eq i64 %str.tag351, 0
  br i1 %str.immortal352, label %str_ok354, label %str_gen_check353

str_stale344:                                     ; preds = %str_gen_check342
  %30 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok343

str_gen_check353:                                 ; preds = %str_ok343
  %arena.cur356 = call ptr @dva_arena_current()
  %tag.valid357 = call i1 @dva_arena_validate_tag(ptr %arena.cur356, i64 %str.tag351)
  br i1 %tag.valid357, label %str_ok354, label %str_stale355

str_ok354:                                        ; preds = %str_stale355, %str_gen_check353, %str_ok343
  %concat.rhs358 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %concat.sum.len359 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs339, i64 %concat.rhs350)
  %sum360 = extractvalue { i64, i1 } %concat.sum.len359, 0
  %ovf361 = extractvalue { i64, i1 } %concat.sum.len359, 1
  br i1 %ovf361, label %str_overflow_abort363, label %concat.sum.len362

str_stale355:                                     ; preds = %str_gen_check353
  %31 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok354

concat.sum.len362:                                ; preds = %str_overflow_abort363, %str_ok354
  %concat.tot.len364 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum360, i64 1)
  %sum365 = extractvalue { i64, i1 } %concat.tot.len364, 0
  %ovf366 = extractvalue { i64, i1 } %concat.tot.len364, 1
  br i1 %ovf366, label %str_overflow_abort368, label %concat.tot.len367

str_overflow_abort363:                            ; preds = %str_ok354
  %32 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len362

concat.tot.len367:                                ; preds = %str_overflow_abort368, %concat.sum.len362
  %arena.cur369 = call ptr @dva_arena_current()
  %concat.buf370 = call ptr @dva_arena_alloc(ptr %arena.cur369, i64 %sum365)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf370, ptr align 1 %concat.lhs348, i64 %concat.lhs339, i1 false)
  %concat.mid371 = getelementptr i8, ptr %concat.buf370, i64 %concat.lhs339
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid371, ptr align 1 %concat.rhs358, i64 %concat.rhs350, i1 false)
  %concat.nul372 = getelementptr i8, ptr %concat.buf370, i64 %sum360
  store i8 0, ptr %concat.nul372, align 1
  %arena.cur373 = call ptr @dva_arena_current()
  %concat.str374 = call ptr @dva_arena_alloc(ptr %arena.cur373, i64 16)
  %str.build.len.gep375 = getelementptr inbounds { i64, ptr }, ptr %concat.str374, i32 0, i32 0
  store i64 %sum360, ptr %str.build.len.gep375, align 8
  %str.build.data.gep376 = getelementptr inbounds { i64, ptr }, ptr %concat.str374, i32 0, i32 1
  store ptr %concat.buf370, ptr %str.build.data.gep376, align 8
  %var.load377 = load ptr, ptr %var.d, align 8
  %fld.gep378 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load377, i32 0, i32 4
  %fld.load379 = load ptr, ptr %fld.gep378, align 8
  %concat.lhs380 = getelementptr inbounds { i64, ptr }, ptr %concat.str374, i32 0, i32 0
  %concat.lhs381 = load i64, ptr %concat.lhs380, align 8
  %concat.lhs382 = and i64 %concat.lhs381, 281474976710655
  %str.tag383 = lshr i64 %concat.lhs381, 48
  %str.immortal384 = icmp eq i64 %str.tag383, 0
  br i1 %str.immortal384, label %str_ok386, label %str_gen_check385

str_overflow_abort368:                            ; preds = %concat.sum.len362
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len367

str_gen_check385:                                 ; preds = %concat.tot.len367
  %arena.cur388 = call ptr @dva_arena_current()
  %tag.valid389 = call i1 @dva_arena_validate_tag(ptr %arena.cur388, i64 %str.tag383)
  br i1 %tag.valid389, label %str_ok386, label %str_stale387

str_ok386:                                        ; preds = %str_stale387, %str_gen_check385, %concat.tot.len367
  %concat.lhs390 = getelementptr inbounds { i64, ptr }, ptr %concat.str374, i32 0, i32 1
  %concat.lhs391 = load ptr, ptr %concat.lhs390, align 8
  %concat.rhs392 = getelementptr inbounds { i64, ptr }, ptr %fld.load379, i32 0, i32 0
  %concat.rhs393 = load i64, ptr %concat.rhs392, align 8
  %concat.rhs394 = and i64 %concat.rhs393, 281474976710655
  %str.tag395 = lshr i64 %concat.rhs393, 48
  %str.immortal396 = icmp eq i64 %str.tag395, 0
  br i1 %str.immortal396, label %str_ok398, label %str_gen_check397

str_stale387:                                     ; preds = %str_gen_check385
  %34 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok386

str_gen_check397:                                 ; preds = %str_ok386
  %arena.cur400 = call ptr @dva_arena_current()
  %tag.valid401 = call i1 @dva_arena_validate_tag(ptr %arena.cur400, i64 %str.tag395)
  br i1 %tag.valid401, label %str_ok398, label %str_stale399

str_ok398:                                        ; preds = %str_stale399, %str_gen_check397, %str_ok386
  %concat.rhs402 = getelementptr inbounds { i64, ptr }, ptr %fld.load379, i32 0, i32 1
  %concat.rhs403 = load ptr, ptr %concat.rhs402, align 8
  %concat.sum.len404 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs382, i64 %concat.rhs394)
  %sum405 = extractvalue { i64, i1 } %concat.sum.len404, 0
  %ovf406 = extractvalue { i64, i1 } %concat.sum.len404, 1
  br i1 %ovf406, label %str_overflow_abort408, label %concat.sum.len407

str_stale399:                                     ; preds = %str_gen_check397
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok398

concat.sum.len407:                                ; preds = %str_overflow_abort408, %str_ok398
  %concat.tot.len409 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum405, i64 1)
  %sum410 = extractvalue { i64, i1 } %concat.tot.len409, 0
  %ovf411 = extractvalue { i64, i1 } %concat.tot.len409, 1
  br i1 %ovf411, label %str_overflow_abort413, label %concat.tot.len412

str_overflow_abort408:                            ; preds = %str_ok398
  %36 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len407

concat.tot.len412:                                ; preds = %str_overflow_abort413, %concat.sum.len407
  %arena.cur414 = call ptr @dva_arena_current()
  %concat.buf415 = call ptr @dva_arena_alloc(ptr %arena.cur414, i64 %sum410)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf415, ptr align 1 %concat.lhs391, i64 %concat.lhs382, i1 false)
  %concat.mid416 = getelementptr i8, ptr %concat.buf415, i64 %concat.lhs382
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid416, ptr align 1 %concat.rhs403, i64 %concat.rhs394, i1 false)
  %concat.nul417 = getelementptr i8, ptr %concat.buf415, i64 %sum405
  store i8 0, ptr %concat.nul417, align 1
  %arena.cur418 = call ptr @dva_arena_current()
  %concat.str419 = call ptr @dva_arena_alloc(ptr %arena.cur418, i64 16)
  %str.build.len.gep420 = getelementptr inbounds { i64, ptr }, ptr %concat.str419, i32 0, i32 0
  store i64 %sum405, ptr %str.build.len.gep420, align 8
  %str.build.data.gep421 = getelementptr inbounds { i64, ptr }, ptr %concat.str419, i32 0, i32 1
  store ptr %concat.buf415, ptr %str.build.data.gep421, align 8
  %p.to.i64 = ptrtoint ptr %concat.str419 to i64
  %ram.pay422 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit15

str_overflow_abort413:                            ; preds = %concat.sum.len407
  %37 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len412

a.create431:                                      ; preds = %choice.else
  %arena.cur433 = call ptr @dva_arena_current()
  %a.create434 = call ptr @dva_arena_alloc(ptr %arena.cur433, i64 24)
  %arena.cur435 = call ptr @dva_arena_current()
  %a.buf436 = call ptr @dva_arena_alloc(ptr %arena.cur435, i64 128)
  %a.len.gep437 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create434, i32 0, i32 0
  store i64 0, ptr %a.len.gep437, align 8
  %a.data.gep438 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create434, i32 0, i32 1
  store ptr %a.buf436, ptr %a.data.gep438, align 8
  %a.cap.gep439 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create434, i32 0, i32 2
  store i64 16, ptr %a.cap.gep439, align 8
  store ptr %a.create434, ptr %var.diags, align 8
  br label %a.after432

a.after432:                                       ; preds = %a.create431, %choice.else
  %a.load2440 = load ptr, ptr %var.diags, align 8
  %a.len.query441 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2440, i32 0, i32 0
  %a.len.query442 = load i64, ptr %a.len.query441, align 8
  %cmptmp443 = icmp sgt i64 %a.len.query442, 0
  br i1 %cmptmp443, label %choice.then444, label %choice.else445

choice.then444:                                   ; preds = %a.after432
  %var.load447 = load ptr, ptr %var.diags, align 8
  %a.load448 = load ptr, ptr %var.diags, align 8
  %a.null449 = icmp eq ptr %a.load448, null
  br i1 %a.null449, label %a.create450, label %a.after451

choice.else445:                                   ; preds = %a.after432
  %var.load936 = load ptr, ptr %var.filename, align 8
  %concat.lhs937 = getelementptr inbounds { i64, ptr }, ptr %var.load936, i32 0, i32 0
  %concat.lhs938 = load i64, ptr %concat.lhs937, align 8
  %concat.lhs939 = and i64 %concat.lhs938, 281474976710655
  %str.tag940 = lshr i64 %concat.lhs938, 48
  %str.immortal941 = icmp eq i64 %str.tag940, 0
  br i1 %str.immortal941, label %str_ok943, label %str_gen_check942

choice.exit446:                                   ; preds = %concat.tot.len967, %concat.tot.len924
  %choice.res979 = phi { i1, i64 } [ %ram.pay935, %concat.tot.len924 ], [ %ram.pay978, %concat.tot.len967 ]
  br label %choice.exit

a.create450:                                      ; preds = %choice.then444
  %arena.cur452 = call ptr @dva_arena_current()
  %a.create453 = call ptr @dva_arena_alloc(ptr %arena.cur452, i64 24)
  %arena.cur454 = call ptr @dva_arena_current()
  %a.buf455 = call ptr @dva_arena_alloc(ptr %arena.cur454, i64 128)
  %a.len.gep456 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create453, i32 0, i32 0
  store i64 0, ptr %a.len.gep456, align 8
  %a.data.gep457 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create453, i32 0, i32 1
  store ptr %a.buf455, ptr %a.data.gep457, align 8
  %a.cap.gep458 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create453, i32 0, i32 2
  store i64 16, ptr %a.cap.gep458, align 8
  store ptr %a.create453, ptr %var.diags, align 8
  br label %a.after451

a.after451:                                       ; preds = %a.create450, %choice.then444
  %a.load2459 = load ptr, ptr %var.diags, align 8
  %a.rd.nonnull460 = icmp ne ptr %a.load2459, null
  br i1 %a.rd.nonnull460, label %a.rd.check461, label %a.rd.err.null463

a.rd.check461:                                    ; preds = %a.after451
  %a.rd.len466 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2459, i32 0, i32 0
  %a.rd.len467 = load i64, ptr %a.rd.len466, align 8
  %a.rd.lt468 = icmp slt i64 0, %a.rd.len467
  %a.rd.bounds469 = and i1 true, %a.rd.lt468
  br i1 %a.rd.bounds469, label %a.rd.ok462, label %a.rd.err.oob464

a.rd.ok462:                                       ; preds = %a.rd.check461
  %a.rd.data470 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2459, i32 0, i32 1
  %a.rd.data471 = load ptr, ptr %a.rd.data470, align 8
  %a.rd.elem.gep472 = getelementptr i64, ptr %a.rd.data471, i64 0
  %a.rd.elem473 = load i64, ptr %a.rd.elem.gep472, align 8
  br label %a.rd.done465

a.rd.err.null463:                                 ; preds = %a.after451
  %arena.cur474 = call ptr @dva_arena_current()
  %err.alloc475 = call ptr @dva_arena_alloc(ptr %arena.cur474, i64 56)
  %err.code.gep476 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc475, i32 0, i32 0
  store i64 4011, ptr %err.code.gep476, align 8
  %err.msg.gep477 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc475, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep477, align 8
  %err.file.gep478 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc475, i32 0, i32 2
  store ptr @str.5.struct, ptr %err.file.gep478, align 8
  %err.line.gep479 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc475, i32 0, i32 3
  store i64 472, ptr %err.line.gep479, align 8
  %err.col.gep480 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc475, i32 0, i32 4
  store i64 28, ptr %err.col.gep480, align 8
  %err.ctx.gep481 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc475, i32 0, i32 5
  %err.ctx0.gep482 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep481, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep482, align 8
  %err.ctx1.gep483 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep481, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep483, align 8
  %err.p2i484 = ptrtoint ptr %err.alloc475 to i64
  br label %a.rd.done465

a.rd.err.oob464:                                  ; preds = %a.rd.check461
  %arena.cur485 = call ptr @dva_arena_current()
  %err.alloc486 = call ptr @dva_arena_alloc(ptr %arena.cur485, i64 56)
  %err.code.gep487 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc486, i32 0, i32 0
  store i64 4011, ptr %err.code.gep487, align 8
  %err.msg.gep488 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc486, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep488, align 8
  %err.file.gep489 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc486, i32 0, i32 2
  store ptr @str.5.struct, ptr %err.file.gep489, align 8
  %err.line.gep490 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc486, i32 0, i32 3
  store i64 472, ptr %err.line.gep490, align 8
  %err.col.gep491 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc486, i32 0, i32 4
  store i64 28, ptr %err.col.gep491, align 8
  %err.ctx.gep492 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc486, i32 0, i32 5
  %err.ctx0.gep493 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep492, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep493, align 8
  %err.ctx1.gep494 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep492, i32 0, i32 1
  store i64 %a.rd.len467, ptr %err.ctx1.gep494, align 8
  %err.p2i495 = ptrtoint ptr %err.alloc486 to i64
  br label %a.rd.done465

a.rd.done465:                                     ; preds = %a.rd.err.oob464, %a.rd.err.null463, %a.rd.ok462
  %a.rd.tag496 = phi i1 [ true, %a.rd.ok462 ], [ false, %a.rd.err.null463 ], [ false, %a.rd.err.oob464 ]
  %a.rd.pay497 = phi i64 [ %a.rd.elem473, %a.rd.ok462 ], [ %err.p2i484, %a.rd.err.null463 ], [ %err.p2i495, %a.rd.err.oob464 ]
  %ram.tag498 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag496, 0
  %ram.pay499 = insertvalue { i1, i64 } %ram.tag498, i64 %a.rd.pay497, 1
  %unwrap.is_pos500 = extractvalue { i1, i64 } %ram.pay499, 0
  br i1 %unwrap.is_pos500, label %unwrap.pos.523, label %unwrap.abort.523

unwrap.pos.523:                                   ; preds = %a.rd.done465
  %unwrap.pay.pos546 = extractvalue { i1, i64 } %ram.pay499, 1
  %pay.ptr547 = inttoptr i64 %unwrap.pay.pos546 to ptr
  store ptr %pay.ptr547, ptr %var.d548, align 8
  %var.load549 = load ptr, ptr %var.d548, align 8
  %fld.gep550 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load549, i32 0, i32 1
  %fld.load551 = load ptr, ptr %fld.gep550, align 8
  %eq.lhs.len552 = getelementptr inbounds { i64, ptr }, ptr %fld.load551, i32 0, i32 0
  %eq.lhs.len553 = load i64, ptr %eq.lhs.len552, align 8
  %eq.lhs.len554 = and i64 %eq.lhs.len553, 281474976710655
  %str.tag555 = lshr i64 %eq.lhs.len553, 48
  %str.immortal556 = icmp eq i64 %str.tag555, 0
  br i1 %str.immortal556, label %str_ok558, label %str_gen_check557

unwrap.abort.523:                                 ; preds = %a.rd.done465
  %unwrap.pay.abort501 = extractvalue { i1, i64 } %ram.pay499, 1
  %err.ptr502 = inttoptr i64 %unwrap.pay.abort501 to ptr
  %err.code.gep503 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr502, i32 0, i32 0
  %err.code504 = load i64, ptr %err.code.gep503, align 8
  %err.msg.gep505 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr502, i32 0, i32 1
  %err.msg.struct506 = load ptr, ptr %err.msg.gep505, align 8
  %err.file.gep507 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr502, i32 0, i32 2
  %err.file.struct508 = load ptr, ptr %err.file.gep507, align 8
  %err.line.gep509 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr502, i32 0, i32 3
  %err.line510 = load i64, ptr %err.line.gep509, align 8
  %err.col.gep511 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr502, i32 0, i32 4
  %err.col512 = load i64, ptr %err.col.gep511, align 8
  %err.msg.len513 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct506, i32 0, i32 0
  %err.msg.len514 = load i64, ptr %err.msg.len513, align 8
  %err.msg.len515 = and i64 %err.msg.len514, 281474976710655
  %str.tag516 = lshr i64 %err.msg.len514, 48
  %str.immortal517 = icmp eq i64 %str.tag516, 0
  br i1 %str.immortal517, label %str_ok519, label %str_gen_check518

str_gen_check518:                                 ; preds = %unwrap.abort.523
  %arena.cur521 = call ptr @dva_arena_current()
  %tag.valid522 = call i1 @dva_arena_validate_tag(ptr %arena.cur521, i64 %str.tag516)
  br i1 %tag.valid522, label %str_ok519, label %str_stale520

str_ok519:                                        ; preds = %str_stale520, %str_gen_check518, %unwrap.abort.523
  %err.msg.len32523 = trunc i64 %err.msg.len515 to i32
  %err.msg.data524 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct506, i32 0, i32 1
  %err.msg.data525 = load ptr, ptr %err.msg.data524, align 8
  %err.file.len526 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct508, i32 0, i32 0
  %err.file.len527 = load i64, ptr %err.file.len526, align 8
  %err.file.len528 = and i64 %err.file.len527, 281474976710655
  %str.tag529 = lshr i64 %err.file.len527, 48
  %str.immortal530 = icmp eq i64 %str.tag529, 0
  br i1 %str.immortal530, label %str_ok532, label %str_gen_check531

str_stale520:                                     ; preds = %str_gen_check518
  %38 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok519

str_gen_check531:                                 ; preds = %str_ok519
  %arena.cur534 = call ptr @dva_arena_current()
  %tag.valid535 = call i1 @dva_arena_validate_tag(ptr %arena.cur534, i64 %str.tag529)
  br i1 %tag.valid535, label %str_ok532, label %str_stale533

str_ok532:                                        ; preds = %str_stale533, %str_gen_check531, %str_ok519
  %err.file.len32536 = trunc i64 %err.file.len528 to i32
  %err.file.data537 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct508, i32 0, i32 1
  %err.file.data538 = load ptr, ptr %err.file.data537, align 8
  %err.thread.rec539 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread540 = icmp ne ptr %err.thread.rec539, null
  br i1 %err.is.thread540, label %err.thread541, label %err.normal542

str_stale533:                                     ; preds = %str_gen_check531
  %39 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok532

err.thread541:                                    ; preds = %str_ok532
  %err.haserr.gep543 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec539, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep543, align 8
  %err.err.gep544 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec539, i32 0, i32 7
  store ptr %err.ptr502, ptr %err.err.gep544, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal542:                                    ; preds = %str_ok532
  %err.panic.printf545 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code504, i32 %err.msg.len32523, ptr %err.msg.data525, i32 %err.file.len32536, ptr %err.file.data538, i64 %err.line510, i64 %err.col512)
  call void @exit(i32 1)
  unreachable

str_gen_check557:                                 ; preds = %unwrap.pos.523
  %arena.cur560 = call ptr @dva_arena_current()
  %tag.valid561 = call i1 @dva_arena_validate_tag(ptr %arena.cur560, i64 %str.tag555)
  br i1 %tag.valid561, label %str_ok558, label %str_stale559

str_ok558:                                        ; preds = %str_stale559, %str_gen_check557, %unwrap.pos.523
  %eq.rhs.len562 = load i64, ptr @str.3.struct, align 8
  %eq.rhs.len563 = and i64 %eq.rhs.len562, 281474976710655
  %str.tag564 = lshr i64 %eq.rhs.len562, 48
  %str.immortal565 = icmp eq i64 %str.tag564, 0
  br i1 %str.immortal565, label %str_ok567, label %str_gen_check566

str_stale559:                                     ; preds = %str_gen_check557
  %40 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok558

str_gen_check566:                                 ; preds = %str_ok558
  %arena.cur569 = call ptr @dva_arena_current()
  %tag.valid570 = call i1 @dva_arena_validate_tag(ptr %arena.cur569, i64 %str.tag564)
  br i1 %tag.valid570, label %str_ok567, label %str_stale568

str_ok567:                                        ; preds = %str_stale568, %str_gen_check566, %str_ok558
  %eq.len571 = icmp eq i64 %eq.lhs.len554, %eq.rhs.len563
  br i1 %eq.len571, label %str.eq.then572, label %str.eq.else573

str_stale568:                                     ; preds = %str_gen_check566
  %41 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok567

str.eq.then572:                                   ; preds = %str_ok567
  %eq.lhs.data575 = getelementptr inbounds { i64, ptr }, ptr %fld.load551, i32 0, i32 1
  %eq.lhs.data576 = load ptr, ptr %eq.lhs.data575, align 8
  %eq.rhs.data577 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp578 = call i32 @memcmp(ptr %eq.lhs.data576, ptr %eq.rhs.data577, i64 %eq.lhs.len554)
  %eq.cmp.zero579 = icmp eq i32 %eq.memcmp578, 0
  br label %str.eq.merge574

str.eq.else573:                                   ; preds = %str_ok567
  br label %str.eq.merge574

str.eq.merge574:                                  ; preds = %str.eq.else573, %str.eq.then572
  %str.eq.result580 = phi i1 [ %eq.cmp.zero579, %str.eq.then572 ], [ false, %str.eq.else573 ]
  %str.neq581 = xor i1 %str.eq.result580, true
  br i1 %str.neq581, label %choice.then582, label %choice.else583

choice.then582:                                   ; preds = %str.eq.merge574
  %var.load585 = load ptr, ptr %var.d548, align 8
  %fld.gep586 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load585, i32 0, i32 1
  %fld.load587 = load ptr, ptr %fld.gep586, align 8
  %concat.lhs588 = getelementptr inbounds { i64, ptr }, ptr %fld.load587, i32 0, i32 0
  %concat.lhs589 = load i64, ptr %concat.lhs588, align 8
  %concat.lhs590 = and i64 %concat.lhs589, 281474976710655
  %str.tag591 = lshr i64 %concat.lhs589, 48
  %str.immortal592 = icmp eq i64 %str.tag591, 0
  br i1 %str.immortal592, label %str_ok594, label %str_gen_check593

choice.else583:                                   ; preds = %str.eq.merge574
  br label %choice.exit584

choice.exit584:                                   ; preds = %choice.else583, %concat.tot.len618
  %choice.res628 = phi ptr [ %concat.str625, %concat.tot.len618 ], [ @str.3.struct, %choice.else583 ]
  store ptr %choice.res628, ptr %var.fn629, align 8
  %var.load630 = load ptr, ptr %var.fn629, align 8
  %var.load631 = load ptr, ptr %var.d548, align 8
  %fld.gep632 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load631, i32 0, i32 2
  %fld.load633 = load i64, ptr %fld.gep632, align 8
  %call.res634 = call ptr @"str::from_int"(i64 %fld.load633)
  %concat.lhs635 = getelementptr inbounds { i64, ptr }, ptr %var.load630, i32 0, i32 0
  %concat.lhs636 = load i64, ptr %concat.lhs635, align 8
  %concat.lhs637 = and i64 %concat.lhs636, 281474976710655
  %str.tag638 = lshr i64 %concat.lhs636, 48
  %str.immortal639 = icmp eq i64 %str.tag638, 0
  br i1 %str.immortal639, label %str_ok641, label %str_gen_check640

str_gen_check593:                                 ; preds = %choice.then582
  %arena.cur596 = call ptr @dva_arena_current()
  %tag.valid597 = call i1 @dva_arena_validate_tag(ptr %arena.cur596, i64 %str.tag591)
  br i1 %tag.valid597, label %str_ok594, label %str_stale595

str_ok594:                                        ; preds = %str_stale595, %str_gen_check593, %choice.then582
  %concat.lhs598 = getelementptr inbounds { i64, ptr }, ptr %fld.load587, i32 0, i32 1
  %concat.lhs599 = load ptr, ptr %concat.lhs598, align 8
  %concat.rhs600 = load i64, ptr @str.7.struct, align 8
  %concat.rhs601 = and i64 %concat.rhs600, 281474976710655
  %str.tag602 = lshr i64 %concat.rhs600, 48
  %str.immortal603 = icmp eq i64 %str.tag602, 0
  br i1 %str.immortal603, label %str_ok605, label %str_gen_check604

str_stale595:                                     ; preds = %str_gen_check593
  %42 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok594

str_gen_check604:                                 ; preds = %str_ok594
  %arena.cur607 = call ptr @dva_arena_current()
  %tag.valid608 = call i1 @dva_arena_validate_tag(ptr %arena.cur607, i64 %str.tag602)
  br i1 %tag.valid608, label %str_ok605, label %str_stale606

str_ok605:                                        ; preds = %str_stale606, %str_gen_check604, %str_ok594
  %concat.rhs609 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %concat.sum.len610 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs590, i64 %concat.rhs601)
  %sum611 = extractvalue { i64, i1 } %concat.sum.len610, 0
  %ovf612 = extractvalue { i64, i1 } %concat.sum.len610, 1
  br i1 %ovf612, label %str_overflow_abort614, label %concat.sum.len613

str_stale606:                                     ; preds = %str_gen_check604
  %43 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok605

concat.sum.len613:                                ; preds = %str_overflow_abort614, %str_ok605
  %concat.tot.len615 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum611, i64 1)
  %sum616 = extractvalue { i64, i1 } %concat.tot.len615, 0
  %ovf617 = extractvalue { i64, i1 } %concat.tot.len615, 1
  br i1 %ovf617, label %str_overflow_abort619, label %concat.tot.len618

str_overflow_abort614:                            ; preds = %str_ok605
  %44 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len613

concat.tot.len618:                                ; preds = %str_overflow_abort619, %concat.sum.len613
  %arena.cur620 = call ptr @dva_arena_current()
  %concat.buf621 = call ptr @dva_arena_alloc(ptr %arena.cur620, i64 %sum616)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf621, ptr align 1 %concat.lhs599, i64 %concat.lhs590, i1 false)
  %concat.mid622 = getelementptr i8, ptr %concat.buf621, i64 %concat.lhs590
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid622, ptr align 1 %concat.rhs609, i64 %concat.rhs601, i1 false)
  %concat.nul623 = getelementptr i8, ptr %concat.buf621, i64 %sum611
  store i8 0, ptr %concat.nul623, align 1
  %arena.cur624 = call ptr @dva_arena_current()
  %concat.str625 = call ptr @dva_arena_alloc(ptr %arena.cur624, i64 16)
  %str.build.len.gep626 = getelementptr inbounds { i64, ptr }, ptr %concat.str625, i32 0, i32 0
  store i64 %sum611, ptr %str.build.len.gep626, align 8
  %str.build.data.gep627 = getelementptr inbounds { i64, ptr }, ptr %concat.str625, i32 0, i32 1
  store ptr %concat.buf621, ptr %str.build.data.gep627, align 8
  br label %choice.exit584

str_overflow_abort619:                            ; preds = %concat.sum.len613
  %45 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len618

str_gen_check640:                                 ; preds = %choice.exit584
  %arena.cur643 = call ptr @dva_arena_current()
  %tag.valid644 = call i1 @dva_arena_validate_tag(ptr %arena.cur643, i64 %str.tag638)
  br i1 %tag.valid644, label %str_ok641, label %str_stale642

str_ok641:                                        ; preds = %str_stale642, %str_gen_check640, %choice.exit584
  %concat.lhs645 = getelementptr inbounds { i64, ptr }, ptr %var.load630, i32 0, i32 1
  %concat.lhs646 = load ptr, ptr %concat.lhs645, align 8
  %concat.rhs647 = getelementptr inbounds { i64, ptr }, ptr %call.res634, i32 0, i32 0
  %concat.rhs648 = load i64, ptr %concat.rhs647, align 8
  %concat.rhs649 = and i64 %concat.rhs648, 281474976710655
  %str.tag650 = lshr i64 %concat.rhs648, 48
  %str.immortal651 = icmp eq i64 %str.tag650, 0
  br i1 %str.immortal651, label %str_ok653, label %str_gen_check652

str_stale642:                                     ; preds = %str_gen_check640
  %46 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok641

str_gen_check652:                                 ; preds = %str_ok641
  %arena.cur655 = call ptr @dva_arena_current()
  %tag.valid656 = call i1 @dva_arena_validate_tag(ptr %arena.cur655, i64 %str.tag650)
  br i1 %tag.valid656, label %str_ok653, label %str_stale654

str_ok653:                                        ; preds = %str_stale654, %str_gen_check652, %str_ok641
  %concat.rhs657 = getelementptr inbounds { i64, ptr }, ptr %call.res634, i32 0, i32 1
  %concat.rhs658 = load ptr, ptr %concat.rhs657, align 8
  %concat.sum.len659 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs637, i64 %concat.rhs649)
  %sum660 = extractvalue { i64, i1 } %concat.sum.len659, 0
  %ovf661 = extractvalue { i64, i1 } %concat.sum.len659, 1
  br i1 %ovf661, label %str_overflow_abort663, label %concat.sum.len662

str_stale654:                                     ; preds = %str_gen_check652
  %47 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok653

concat.sum.len662:                                ; preds = %str_overflow_abort663, %str_ok653
  %concat.tot.len664 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum660, i64 1)
  %sum665 = extractvalue { i64, i1 } %concat.tot.len664, 0
  %ovf666 = extractvalue { i64, i1 } %concat.tot.len664, 1
  br i1 %ovf666, label %str_overflow_abort668, label %concat.tot.len667

str_overflow_abort663:                            ; preds = %str_ok653
  %48 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len662

concat.tot.len667:                                ; preds = %str_overflow_abort668, %concat.sum.len662
  %arena.cur669 = call ptr @dva_arena_current()
  %concat.buf670 = call ptr @dva_arena_alloc(ptr %arena.cur669, i64 %sum665)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf670, ptr align 1 %concat.lhs646, i64 %concat.lhs637, i1 false)
  %concat.mid671 = getelementptr i8, ptr %concat.buf670, i64 %concat.lhs637
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid671, ptr align 1 %concat.rhs658, i64 %concat.rhs649, i1 false)
  %concat.nul672 = getelementptr i8, ptr %concat.buf670, i64 %sum660
  store i8 0, ptr %concat.nul672, align 1
  %arena.cur673 = call ptr @dva_arena_current()
  %concat.str674 = call ptr @dva_arena_alloc(ptr %arena.cur673, i64 16)
  %str.build.len.gep675 = getelementptr inbounds { i64, ptr }, ptr %concat.str674, i32 0, i32 0
  store i64 %sum660, ptr %str.build.len.gep675, align 8
  %str.build.data.gep676 = getelementptr inbounds { i64, ptr }, ptr %concat.str674, i32 0, i32 1
  store ptr %concat.buf670, ptr %str.build.data.gep676, align 8
  %concat.lhs677 = getelementptr inbounds { i64, ptr }, ptr %concat.str674, i32 0, i32 0
  %concat.lhs678 = load i64, ptr %concat.lhs677, align 8
  %concat.lhs679 = and i64 %concat.lhs678, 281474976710655
  %str.tag680 = lshr i64 %concat.lhs678, 48
  %str.immortal681 = icmp eq i64 %str.tag680, 0
  br i1 %str.immortal681, label %str_ok683, label %str_gen_check682

str_overflow_abort668:                            ; preds = %concat.sum.len662
  %49 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len667

str_gen_check682:                                 ; preds = %concat.tot.len667
  %arena.cur685 = call ptr @dva_arena_current()
  %tag.valid686 = call i1 @dva_arena_validate_tag(ptr %arena.cur685, i64 %str.tag680)
  br i1 %tag.valid686, label %str_ok683, label %str_stale684

str_ok683:                                        ; preds = %str_stale684, %str_gen_check682, %concat.tot.len667
  %concat.lhs687 = getelementptr inbounds { i64, ptr }, ptr %concat.str674, i32 0, i32 1
  %concat.lhs688 = load ptr, ptr %concat.lhs687, align 8
  %concat.rhs689 = load i64, ptr @str.7.struct, align 8
  %concat.rhs690 = and i64 %concat.rhs689, 281474976710655
  %str.tag691 = lshr i64 %concat.rhs689, 48
  %str.immortal692 = icmp eq i64 %str.tag691, 0
  br i1 %str.immortal692, label %str_ok694, label %str_gen_check693

str_stale684:                                     ; preds = %str_gen_check682
  %50 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok683

str_gen_check693:                                 ; preds = %str_ok683
  %arena.cur696 = call ptr @dva_arena_current()
  %tag.valid697 = call i1 @dva_arena_validate_tag(ptr %arena.cur696, i64 %str.tag691)
  br i1 %tag.valid697, label %str_ok694, label %str_stale695

str_ok694:                                        ; preds = %str_stale695, %str_gen_check693, %str_ok683
  %concat.rhs698 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %concat.sum.len699 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs679, i64 %concat.rhs690)
  %sum700 = extractvalue { i64, i1 } %concat.sum.len699, 0
  %ovf701 = extractvalue { i64, i1 } %concat.sum.len699, 1
  br i1 %ovf701, label %str_overflow_abort703, label %concat.sum.len702

str_stale695:                                     ; preds = %str_gen_check693
  %51 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok694

concat.sum.len702:                                ; preds = %str_overflow_abort703, %str_ok694
  %concat.tot.len704 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum700, i64 1)
  %sum705 = extractvalue { i64, i1 } %concat.tot.len704, 0
  %ovf706 = extractvalue { i64, i1 } %concat.tot.len704, 1
  br i1 %ovf706, label %str_overflow_abort708, label %concat.tot.len707

str_overflow_abort703:                            ; preds = %str_ok694
  %52 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len702

concat.tot.len707:                                ; preds = %str_overflow_abort708, %concat.sum.len702
  %arena.cur709 = call ptr @dva_arena_current()
  %concat.buf710 = call ptr @dva_arena_alloc(ptr %arena.cur709, i64 %sum705)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf710, ptr align 1 %concat.lhs688, i64 %concat.lhs679, i1 false)
  %concat.mid711 = getelementptr i8, ptr %concat.buf710, i64 %concat.lhs679
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid711, ptr align 1 %concat.rhs698, i64 %concat.rhs690, i1 false)
  %concat.nul712 = getelementptr i8, ptr %concat.buf710, i64 %sum700
  store i8 0, ptr %concat.nul712, align 1
  %arena.cur713 = call ptr @dva_arena_current()
  %concat.str714 = call ptr @dva_arena_alloc(ptr %arena.cur713, i64 16)
  %str.build.len.gep715 = getelementptr inbounds { i64, ptr }, ptr %concat.str714, i32 0, i32 0
  store i64 %sum700, ptr %str.build.len.gep715, align 8
  %str.build.data.gep716 = getelementptr inbounds { i64, ptr }, ptr %concat.str714, i32 0, i32 1
  store ptr %concat.buf710, ptr %str.build.data.gep716, align 8
  %var.load717 = load ptr, ptr %var.d548, align 8
  %fld.gep718 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load717, i32 0, i32 3
  %fld.load719 = load i64, ptr %fld.gep718, align 8
  %call.res720 = call ptr @"str::from_int"(i64 %fld.load719)
  %concat.lhs721 = getelementptr inbounds { i64, ptr }, ptr %concat.str714, i32 0, i32 0
  %concat.lhs722 = load i64, ptr %concat.lhs721, align 8
  %concat.lhs723 = and i64 %concat.lhs722, 281474976710655
  %str.tag724 = lshr i64 %concat.lhs722, 48
  %str.immortal725 = icmp eq i64 %str.tag724, 0
  br i1 %str.immortal725, label %str_ok727, label %str_gen_check726

str_overflow_abort708:                            ; preds = %concat.sum.len702
  %53 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len707

str_gen_check726:                                 ; preds = %concat.tot.len707
  %arena.cur729 = call ptr @dva_arena_current()
  %tag.valid730 = call i1 @dva_arena_validate_tag(ptr %arena.cur729, i64 %str.tag724)
  br i1 %tag.valid730, label %str_ok727, label %str_stale728

str_ok727:                                        ; preds = %str_stale728, %str_gen_check726, %concat.tot.len707
  %concat.lhs731 = getelementptr inbounds { i64, ptr }, ptr %concat.str714, i32 0, i32 1
  %concat.lhs732 = load ptr, ptr %concat.lhs731, align 8
  %concat.rhs733 = getelementptr inbounds { i64, ptr }, ptr %call.res720, i32 0, i32 0
  %concat.rhs734 = load i64, ptr %concat.rhs733, align 8
  %concat.rhs735 = and i64 %concat.rhs734, 281474976710655
  %str.tag736 = lshr i64 %concat.rhs734, 48
  %str.immortal737 = icmp eq i64 %str.tag736, 0
  br i1 %str.immortal737, label %str_ok739, label %str_gen_check738

str_stale728:                                     ; preds = %str_gen_check726
  %54 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok727

str_gen_check738:                                 ; preds = %str_ok727
  %arena.cur741 = call ptr @dva_arena_current()
  %tag.valid742 = call i1 @dva_arena_validate_tag(ptr %arena.cur741, i64 %str.tag736)
  br i1 %tag.valid742, label %str_ok739, label %str_stale740

str_ok739:                                        ; preds = %str_stale740, %str_gen_check738, %str_ok727
  %concat.rhs743 = getelementptr inbounds { i64, ptr }, ptr %call.res720, i32 0, i32 1
  %concat.rhs744 = load ptr, ptr %concat.rhs743, align 8
  %concat.sum.len745 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs723, i64 %concat.rhs735)
  %sum746 = extractvalue { i64, i1 } %concat.sum.len745, 0
  %ovf747 = extractvalue { i64, i1 } %concat.sum.len745, 1
  br i1 %ovf747, label %str_overflow_abort749, label %concat.sum.len748

str_stale740:                                     ; preds = %str_gen_check738
  %55 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok739

concat.sum.len748:                                ; preds = %str_overflow_abort749, %str_ok739
  %concat.tot.len750 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum746, i64 1)
  %sum751 = extractvalue { i64, i1 } %concat.tot.len750, 0
  %ovf752 = extractvalue { i64, i1 } %concat.tot.len750, 1
  br i1 %ovf752, label %str_overflow_abort754, label %concat.tot.len753

str_overflow_abort749:                            ; preds = %str_ok739
  %56 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len748

concat.tot.len753:                                ; preds = %str_overflow_abort754, %concat.sum.len748
  %arena.cur755 = call ptr @dva_arena_current()
  %concat.buf756 = call ptr @dva_arena_alloc(ptr %arena.cur755, i64 %sum751)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf756, ptr align 1 %concat.lhs732, i64 %concat.lhs723, i1 false)
  %concat.mid757 = getelementptr i8, ptr %concat.buf756, i64 %concat.lhs723
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid757, ptr align 1 %concat.rhs744, i64 %concat.rhs735, i1 false)
  %concat.nul758 = getelementptr i8, ptr %concat.buf756, i64 %sum746
  store i8 0, ptr %concat.nul758, align 1
  %arena.cur759 = call ptr @dva_arena_current()
  %concat.str760 = call ptr @dva_arena_alloc(ptr %arena.cur759, i64 16)
  %str.build.len.gep761 = getelementptr inbounds { i64, ptr }, ptr %concat.str760, i32 0, i32 0
  store i64 %sum746, ptr %str.build.len.gep761, align 8
  %str.build.data.gep762 = getelementptr inbounds { i64, ptr }, ptr %concat.str760, i32 0, i32 1
  store ptr %concat.buf756, ptr %str.build.data.gep762, align 8
  %concat.lhs763 = getelementptr inbounds { i64, ptr }, ptr %concat.str760, i32 0, i32 0
  %concat.lhs764 = load i64, ptr %concat.lhs763, align 8
  %concat.lhs765 = and i64 %concat.lhs764, 281474976710655
  %str.tag766 = lshr i64 %concat.lhs764, 48
  %str.immortal767 = icmp eq i64 %str.tag766, 0
  br i1 %str.immortal767, label %str_ok769, label %str_gen_check768

str_overflow_abort754:                            ; preds = %concat.sum.len748
  %57 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len753

str_gen_check768:                                 ; preds = %concat.tot.len753
  %arena.cur771 = call ptr @dva_arena_current()
  %tag.valid772 = call i1 @dva_arena_validate_tag(ptr %arena.cur771, i64 %str.tag766)
  br i1 %tag.valid772, label %str_ok769, label %str_stale770

str_ok769:                                        ; preds = %str_stale770, %str_gen_check768, %concat.tot.len753
  %concat.lhs773 = getelementptr inbounds { i64, ptr }, ptr %concat.str760, i32 0, i32 1
  %concat.lhs774 = load ptr, ptr %concat.lhs773, align 8
  %concat.rhs775 = load i64, ptr @str.8.struct, align 8
  %concat.rhs776 = and i64 %concat.rhs775, 281474976710655
  %str.tag777 = lshr i64 %concat.rhs775, 48
  %str.immortal778 = icmp eq i64 %str.tag777, 0
  br i1 %str.immortal778, label %str_ok780, label %str_gen_check779

str_stale770:                                     ; preds = %str_gen_check768
  %58 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok769

str_gen_check779:                                 ; preds = %str_ok769
  %arena.cur782 = call ptr @dva_arena_current()
  %tag.valid783 = call i1 @dva_arena_validate_tag(ptr %arena.cur782, i64 %str.tag777)
  br i1 %tag.valid783, label %str_ok780, label %str_stale781

str_ok780:                                        ; preds = %str_stale781, %str_gen_check779, %str_ok769
  %concat.rhs784 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %concat.sum.len785 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs765, i64 %concat.rhs776)
  %sum786 = extractvalue { i64, i1 } %concat.sum.len785, 0
  %ovf787 = extractvalue { i64, i1 } %concat.sum.len785, 1
  br i1 %ovf787, label %str_overflow_abort789, label %concat.sum.len788

str_stale781:                                     ; preds = %str_gen_check779
  %59 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok780

concat.sum.len788:                                ; preds = %str_overflow_abort789, %str_ok780
  %concat.tot.len790 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum786, i64 1)
  %sum791 = extractvalue { i64, i1 } %concat.tot.len790, 0
  %ovf792 = extractvalue { i64, i1 } %concat.tot.len790, 1
  br i1 %ovf792, label %str_overflow_abort794, label %concat.tot.len793

str_overflow_abort789:                            ; preds = %str_ok780
  %60 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len788

concat.tot.len793:                                ; preds = %str_overflow_abort794, %concat.sum.len788
  %arena.cur795 = call ptr @dva_arena_current()
  %concat.buf796 = call ptr @dva_arena_alloc(ptr %arena.cur795, i64 %sum791)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf796, ptr align 1 %concat.lhs774, i64 %concat.lhs765, i1 false)
  %concat.mid797 = getelementptr i8, ptr %concat.buf796, i64 %concat.lhs765
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid797, ptr align 1 %concat.rhs784, i64 %concat.rhs776, i1 false)
  %concat.nul798 = getelementptr i8, ptr %concat.buf796, i64 %sum786
  store i8 0, ptr %concat.nul798, align 1
  %arena.cur799 = call ptr @dva_arena_current()
  %concat.str800 = call ptr @dva_arena_alloc(ptr %arena.cur799, i64 16)
  %str.build.len.gep801 = getelementptr inbounds { i64, ptr }, ptr %concat.str800, i32 0, i32 0
  store i64 %sum786, ptr %str.build.len.gep801, align 8
  %str.build.data.gep802 = getelementptr inbounds { i64, ptr }, ptr %concat.str800, i32 0, i32 1
  store ptr %concat.buf796, ptr %str.build.data.gep802, align 8
  %var.load803 = load ptr, ptr %var.d548, align 8
  %fld.gep804 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load803, i32 0, i32 0
  %fld.load805 = load i64, ptr %fld.gep804, align 8
  %call.res806 = call ptr @"str::from_int"(i64 %fld.load805)
  %concat.lhs807 = getelementptr inbounds { i64, ptr }, ptr %concat.str800, i32 0, i32 0
  %concat.lhs808 = load i64, ptr %concat.lhs807, align 8
  %concat.lhs809 = and i64 %concat.lhs808, 281474976710655
  %str.tag810 = lshr i64 %concat.lhs808, 48
  %str.immortal811 = icmp eq i64 %str.tag810, 0
  br i1 %str.immortal811, label %str_ok813, label %str_gen_check812

str_overflow_abort794:                            ; preds = %concat.sum.len788
  %61 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len793

str_gen_check812:                                 ; preds = %concat.tot.len793
  %arena.cur815 = call ptr @dva_arena_current()
  %tag.valid816 = call i1 @dva_arena_validate_tag(ptr %arena.cur815, i64 %str.tag810)
  br i1 %tag.valid816, label %str_ok813, label %str_stale814

str_ok813:                                        ; preds = %str_stale814, %str_gen_check812, %concat.tot.len793
  %concat.lhs817 = getelementptr inbounds { i64, ptr }, ptr %concat.str800, i32 0, i32 1
  %concat.lhs818 = load ptr, ptr %concat.lhs817, align 8
  %concat.rhs819 = getelementptr inbounds { i64, ptr }, ptr %call.res806, i32 0, i32 0
  %concat.rhs820 = load i64, ptr %concat.rhs819, align 8
  %concat.rhs821 = and i64 %concat.rhs820, 281474976710655
  %str.tag822 = lshr i64 %concat.rhs820, 48
  %str.immortal823 = icmp eq i64 %str.tag822, 0
  br i1 %str.immortal823, label %str_ok825, label %str_gen_check824

str_stale814:                                     ; preds = %str_gen_check812
  %62 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok813

str_gen_check824:                                 ; preds = %str_ok813
  %arena.cur827 = call ptr @dva_arena_current()
  %tag.valid828 = call i1 @dva_arena_validate_tag(ptr %arena.cur827, i64 %str.tag822)
  br i1 %tag.valid828, label %str_ok825, label %str_stale826

str_ok825:                                        ; preds = %str_stale826, %str_gen_check824, %str_ok813
  %concat.rhs829 = getelementptr inbounds { i64, ptr }, ptr %call.res806, i32 0, i32 1
  %concat.rhs830 = load ptr, ptr %concat.rhs829, align 8
  %concat.sum.len831 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs809, i64 %concat.rhs821)
  %sum832 = extractvalue { i64, i1 } %concat.sum.len831, 0
  %ovf833 = extractvalue { i64, i1 } %concat.sum.len831, 1
  br i1 %ovf833, label %str_overflow_abort835, label %concat.sum.len834

str_stale826:                                     ; preds = %str_gen_check824
  %63 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok825

concat.sum.len834:                                ; preds = %str_overflow_abort835, %str_ok825
  %concat.tot.len836 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum832, i64 1)
  %sum837 = extractvalue { i64, i1 } %concat.tot.len836, 0
  %ovf838 = extractvalue { i64, i1 } %concat.tot.len836, 1
  br i1 %ovf838, label %str_overflow_abort840, label %concat.tot.len839

str_overflow_abort835:                            ; preds = %str_ok825
  %64 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len834

concat.tot.len839:                                ; preds = %str_overflow_abort840, %concat.sum.len834
  %arena.cur841 = call ptr @dva_arena_current()
  %concat.buf842 = call ptr @dva_arena_alloc(ptr %arena.cur841, i64 %sum837)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf842, ptr align 1 %concat.lhs818, i64 %concat.lhs809, i1 false)
  %concat.mid843 = getelementptr i8, ptr %concat.buf842, i64 %concat.lhs809
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid843, ptr align 1 %concat.rhs830, i64 %concat.rhs821, i1 false)
  %concat.nul844 = getelementptr i8, ptr %concat.buf842, i64 %sum832
  store i8 0, ptr %concat.nul844, align 1
  %arena.cur845 = call ptr @dva_arena_current()
  %concat.str846 = call ptr @dva_arena_alloc(ptr %arena.cur845, i64 16)
  %str.build.len.gep847 = getelementptr inbounds { i64, ptr }, ptr %concat.str846, i32 0, i32 0
  store i64 %sum832, ptr %str.build.len.gep847, align 8
  %str.build.data.gep848 = getelementptr inbounds { i64, ptr }, ptr %concat.str846, i32 0, i32 1
  store ptr %concat.buf842, ptr %str.build.data.gep848, align 8
  %concat.lhs849 = getelementptr inbounds { i64, ptr }, ptr %concat.str846, i32 0, i32 0
  %concat.lhs850 = load i64, ptr %concat.lhs849, align 8
  %concat.lhs851 = and i64 %concat.lhs850, 281474976710655
  %str.tag852 = lshr i64 %concat.lhs850, 48
  %str.immortal853 = icmp eq i64 %str.tag852, 0
  br i1 %str.immortal853, label %str_ok855, label %str_gen_check854

str_overflow_abort840:                            ; preds = %concat.sum.len834
  %65 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len839

str_gen_check854:                                 ; preds = %concat.tot.len839
  %arena.cur857 = call ptr @dva_arena_current()
  %tag.valid858 = call i1 @dva_arena_validate_tag(ptr %arena.cur857, i64 %str.tag852)
  br i1 %tag.valid858, label %str_ok855, label %str_stale856

str_ok855:                                        ; preds = %str_stale856, %str_gen_check854, %concat.tot.len839
  %concat.lhs859 = getelementptr inbounds { i64, ptr }, ptr %concat.str846, i32 0, i32 1
  %concat.lhs860 = load ptr, ptr %concat.lhs859, align 8
  %concat.rhs861 = load i64, ptr @str.2.struct, align 8
  %concat.rhs862 = and i64 %concat.rhs861, 281474976710655
  %str.tag863 = lshr i64 %concat.rhs861, 48
  %str.immortal864 = icmp eq i64 %str.tag863, 0
  br i1 %str.immortal864, label %str_ok866, label %str_gen_check865

str_stale856:                                     ; preds = %str_gen_check854
  %66 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok855

str_gen_check865:                                 ; preds = %str_ok855
  %arena.cur868 = call ptr @dva_arena_current()
  %tag.valid869 = call i1 @dva_arena_validate_tag(ptr %arena.cur868, i64 %str.tag863)
  br i1 %tag.valid869, label %str_ok866, label %str_stale867

str_ok866:                                        ; preds = %str_stale867, %str_gen_check865, %str_ok855
  %concat.rhs870 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %concat.sum.len871 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs851, i64 %concat.rhs862)
  %sum872 = extractvalue { i64, i1 } %concat.sum.len871, 0
  %ovf873 = extractvalue { i64, i1 } %concat.sum.len871, 1
  br i1 %ovf873, label %str_overflow_abort875, label %concat.sum.len874

str_stale867:                                     ; preds = %str_gen_check865
  %67 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok866

concat.sum.len874:                                ; preds = %str_overflow_abort875, %str_ok866
  %concat.tot.len876 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum872, i64 1)
  %sum877 = extractvalue { i64, i1 } %concat.tot.len876, 0
  %ovf878 = extractvalue { i64, i1 } %concat.tot.len876, 1
  br i1 %ovf878, label %str_overflow_abort880, label %concat.tot.len879

str_overflow_abort875:                            ; preds = %str_ok866
  %68 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len874

concat.tot.len879:                                ; preds = %str_overflow_abort880, %concat.sum.len874
  %arena.cur881 = call ptr @dva_arena_current()
  %concat.buf882 = call ptr @dva_arena_alloc(ptr %arena.cur881, i64 %sum877)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf882, ptr align 1 %concat.lhs860, i64 %concat.lhs851, i1 false)
  %concat.mid883 = getelementptr i8, ptr %concat.buf882, i64 %concat.lhs851
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid883, ptr align 1 %concat.rhs870, i64 %concat.rhs862, i1 false)
  %concat.nul884 = getelementptr i8, ptr %concat.buf882, i64 %sum872
  store i8 0, ptr %concat.nul884, align 1
  %arena.cur885 = call ptr @dva_arena_current()
  %concat.str886 = call ptr @dva_arena_alloc(ptr %arena.cur885, i64 16)
  %str.build.len.gep887 = getelementptr inbounds { i64, ptr }, ptr %concat.str886, i32 0, i32 0
  store i64 %sum872, ptr %str.build.len.gep887, align 8
  %str.build.data.gep888 = getelementptr inbounds { i64, ptr }, ptr %concat.str886, i32 0, i32 1
  store ptr %concat.buf882, ptr %str.build.data.gep888, align 8
  %var.load889 = load ptr, ptr %var.d548, align 8
  %fld.gep890 = getelementptr inbounds { i64, ptr, i64, i64, ptr, i1 }, ptr %var.load889, i32 0, i32 4
  %fld.load891 = load ptr, ptr %fld.gep890, align 8
  %concat.lhs892 = getelementptr inbounds { i64, ptr }, ptr %concat.str886, i32 0, i32 0
  %concat.lhs893 = load i64, ptr %concat.lhs892, align 8
  %concat.lhs894 = and i64 %concat.lhs893, 281474976710655
  %str.tag895 = lshr i64 %concat.lhs893, 48
  %str.immortal896 = icmp eq i64 %str.tag895, 0
  br i1 %str.immortal896, label %str_ok898, label %str_gen_check897

str_overflow_abort880:                            ; preds = %concat.sum.len874
  %69 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len879

str_gen_check897:                                 ; preds = %concat.tot.len879
  %arena.cur900 = call ptr @dva_arena_current()
  %tag.valid901 = call i1 @dva_arena_validate_tag(ptr %arena.cur900, i64 %str.tag895)
  br i1 %tag.valid901, label %str_ok898, label %str_stale899

str_ok898:                                        ; preds = %str_stale899, %str_gen_check897, %concat.tot.len879
  %concat.lhs902 = getelementptr inbounds { i64, ptr }, ptr %concat.str886, i32 0, i32 1
  %concat.lhs903 = load ptr, ptr %concat.lhs902, align 8
  %concat.rhs904 = getelementptr inbounds { i64, ptr }, ptr %fld.load891, i32 0, i32 0
  %concat.rhs905 = load i64, ptr %concat.rhs904, align 8
  %concat.rhs906 = and i64 %concat.rhs905, 281474976710655
  %str.tag907 = lshr i64 %concat.rhs905, 48
  %str.immortal908 = icmp eq i64 %str.tag907, 0
  br i1 %str.immortal908, label %str_ok910, label %str_gen_check909

str_stale899:                                     ; preds = %str_gen_check897
  %70 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok898

str_gen_check909:                                 ; preds = %str_ok898
  %arena.cur912 = call ptr @dva_arena_current()
  %tag.valid913 = call i1 @dva_arena_validate_tag(ptr %arena.cur912, i64 %str.tag907)
  br i1 %tag.valid913, label %str_ok910, label %str_stale911

str_ok910:                                        ; preds = %str_stale911, %str_gen_check909, %str_ok898
  %concat.rhs914 = getelementptr inbounds { i64, ptr }, ptr %fld.load891, i32 0, i32 1
  %concat.rhs915 = load ptr, ptr %concat.rhs914, align 8
  %concat.sum.len916 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs894, i64 %concat.rhs906)
  %sum917 = extractvalue { i64, i1 } %concat.sum.len916, 0
  %ovf918 = extractvalue { i64, i1 } %concat.sum.len916, 1
  br i1 %ovf918, label %str_overflow_abort920, label %concat.sum.len919

str_stale911:                                     ; preds = %str_gen_check909
  %71 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok910

concat.sum.len919:                                ; preds = %str_overflow_abort920, %str_ok910
  %concat.tot.len921 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum917, i64 1)
  %sum922 = extractvalue { i64, i1 } %concat.tot.len921, 0
  %ovf923 = extractvalue { i64, i1 } %concat.tot.len921, 1
  br i1 %ovf923, label %str_overflow_abort925, label %concat.tot.len924

str_overflow_abort920:                            ; preds = %str_ok910
  %72 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len919

concat.tot.len924:                                ; preds = %str_overflow_abort925, %concat.sum.len919
  %arena.cur926 = call ptr @dva_arena_current()
  %concat.buf927 = call ptr @dva_arena_alloc(ptr %arena.cur926, i64 %sum922)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf927, ptr align 1 %concat.lhs903, i64 %concat.lhs894, i1 false)
  %concat.mid928 = getelementptr i8, ptr %concat.buf927, i64 %concat.lhs894
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid928, ptr align 1 %concat.rhs915, i64 %concat.rhs906, i1 false)
  %concat.nul929 = getelementptr i8, ptr %concat.buf927, i64 %sum917
  store i8 0, ptr %concat.nul929, align 1
  %arena.cur930 = call ptr @dva_arena_current()
  %concat.str931 = call ptr @dva_arena_alloc(ptr %arena.cur930, i64 16)
  %str.build.len.gep932 = getelementptr inbounds { i64, ptr }, ptr %concat.str931, i32 0, i32 0
  store i64 %sum917, ptr %str.build.len.gep932, align 8
  %str.build.data.gep933 = getelementptr inbounds { i64, ptr }, ptr %concat.str931, i32 0, i32 1
  store ptr %concat.buf927, ptr %str.build.data.gep933, align 8
  %p.to.i64934 = ptrtoint ptr %concat.str931 to i64
  %ram.pay935 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64934, 1
  br label %choice.exit446

str_overflow_abort925:                            ; preds = %concat.sum.len919
  %73 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len924

str_gen_check942:                                 ; preds = %choice.else445
  %arena.cur945 = call ptr @dva_arena_current()
  %tag.valid946 = call i1 @dva_arena_validate_tag(ptr %arena.cur945, i64 %str.tag940)
  br i1 %tag.valid946, label %str_ok943, label %str_stale944

str_ok943:                                        ; preds = %str_stale944, %str_gen_check942, %choice.else445
  %concat.lhs947 = getelementptr inbounds { i64, ptr }, ptr %var.load936, i32 0, i32 1
  %concat.lhs948 = load ptr, ptr %concat.lhs947, align 8
  %concat.rhs949 = load i64, ptr @str.9.struct, align 8
  %concat.rhs950 = and i64 %concat.rhs949, 281474976710655
  %str.tag951 = lshr i64 %concat.rhs949, 48
  %str.immortal952 = icmp eq i64 %str.tag951, 0
  br i1 %str.immortal952, label %str_ok954, label %str_gen_check953

str_stale944:                                     ; preds = %str_gen_check942
  %74 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok943

str_gen_check953:                                 ; preds = %str_ok943
  %arena.cur956 = call ptr @dva_arena_current()
  %tag.valid957 = call i1 @dva_arena_validate_tag(ptr %arena.cur956, i64 %str.tag951)
  br i1 %tag.valid957, label %str_ok954, label %str_stale955

str_ok954:                                        ; preds = %str_stale955, %str_gen_check953, %str_ok943
  %concat.rhs958 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %concat.sum.len959 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs939, i64 %concat.rhs950)
  %sum960 = extractvalue { i64, i1 } %concat.sum.len959, 0
  %ovf961 = extractvalue { i64, i1 } %concat.sum.len959, 1
  br i1 %ovf961, label %str_overflow_abort963, label %concat.sum.len962

str_stale955:                                     ; preds = %str_gen_check953
  %75 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok954

concat.sum.len962:                                ; preds = %str_overflow_abort963, %str_ok954
  %concat.tot.len964 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum960, i64 1)
  %sum965 = extractvalue { i64, i1 } %concat.tot.len964, 0
  %ovf966 = extractvalue { i64, i1 } %concat.tot.len964, 1
  br i1 %ovf966, label %str_overflow_abort968, label %concat.tot.len967

str_overflow_abort963:                            ; preds = %str_ok954
  %76 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len962

concat.tot.len967:                                ; preds = %str_overflow_abort968, %concat.sum.len962
  %arena.cur969 = call ptr @dva_arena_current()
  %concat.buf970 = call ptr @dva_arena_alloc(ptr %arena.cur969, i64 %sum965)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf970, ptr align 1 %concat.lhs948, i64 %concat.lhs939, i1 false)
  %concat.mid971 = getelementptr i8, ptr %concat.buf970, i64 %concat.lhs939
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid971, ptr align 1 %concat.rhs958, i64 %concat.rhs950, i1 false)
  %concat.nul972 = getelementptr i8, ptr %concat.buf970, i64 %sum960
  store i8 0, ptr %concat.nul972, align 1
  %arena.cur973 = call ptr @dva_arena_current()
  %concat.str974 = call ptr @dva_arena_alloc(ptr %arena.cur973, i64 16)
  %str.build.len.gep975 = getelementptr inbounds { i64, ptr }, ptr %concat.str974, i32 0, i32 0
  store i64 %sum960, ptr %str.build.len.gep975, align 8
  %str.build.data.gep976 = getelementptr inbounds { i64, ptr }, ptr %concat.str974, i32 0, i32 1
  store ptr %concat.buf970, ptr %str.build.data.gep976, align 8
  %p.to.i64977 = ptrtoint ptr %concat.str974 to i64
  %ram.pay978 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64977, 1
  br label %choice.exit446

str_overflow_abort968:                            ; preds = %concat.sum.len962
  %77 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len967
}

declare void @"diag::enable_capture"() #1

declare void @"lexer::lex_set_file"(ptr) #1

declare ptr @"parser::parse_init"(ptr) #1

declare void @"parser::parser_set_file"(ptr, ptr) #1

declare { i1, i64 } @"parser::parse_program"(ptr) #1

declare ptr @"diag::get_captured"() #1

declare void @"diag::disable_capture"() #1

declare i32 @memcmp(ptr, ptr, i64)

declare ptr @"str::from_int"(i64) #1

declare ptr @"show::show_expr"(ptr) #1

define { i1, i64 } @"formatter::format_source"(ptr %0, ptr %1) #1 {
entry:
  %var.err = alloca ptr, align 8
  %var._212 = alloca ptr, align 8
  %var._204 = alloca ptr, align 8
  %var.fb_sig158 = alloca ptr, align 8
  %var._157 = alloca ptr, align 8
  %var.fb_sig_res149 = alloca { i1, i64 }, align 8
  %var.fb145 = alloca ptr, align 8
  %var._130 = alloca ptr, align 8
  %var._122 = alloca ptr, align 8
  %var.fb_sig = alloca ptr, align 8
  %var._77 = alloca ptr, align 8
  %var.fb_sig_res = alloca { i1, i64 }, align 8
  %var.fb = alloca ptr, align 8
  %var.cand_sig = alloca ptr, align 8
  %var._25 = alloca ptr, align 8
  %var.cand_sig_res = alloca { i1, i64 }, align 8
  %var.candidate = alloca ptr, align 8
  %var.lines = alloca ptr, align 8
  %var.orig_sig = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.orig_sig_res = alloca { i1, i64 }, align 8
  %var.filename = alloca ptr, align 8
  %var.src = alloca ptr, align 8
  store ptr %0, ptr %var.src, align 8
  store ptr %1, ptr %var.filename, align 8
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
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  ret { i1, i64 } { i1 true, i64 ptrtoint (ptr @str.3.struct to i64) }

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load3 = load ptr, ptr %var.src, align 8
  %var.load4 = load ptr, ptr %var.filename, align 8
  %call.res = call { i1, i64 } @"formatter::parse_ast_signature"(ptr %var.load3, ptr %var.load4)
  store { i1, i64 } %call.res, ptr %var.orig_sig_res, align 8
  %var.load5 = load { i1, i64 }, ptr %var.orig_sig_res, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load5, 0
  br i1 %ram.tag, label %choice.then6, label %choice.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then6:                                     ; preds = %choice.exit
  %ram.pay = extractvalue { i1, i64 } %var.load5, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.orig_sig, align 8
  %var.load8 = load ptr, ptr %var.src, align 8
  %call.res9 = call ptr @"formatter::split_source_lines"(ptr %var.load8)
  store ptr %call.res9, ptr %var.lines, align 8
  %var.load10 = load ptr, ptr %var.lines, align 8
  %a.load = load ptr, ptr %var.lines, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else:                                      ; preds = %choice.exit
  %ram.pay210 = extractvalue { i1, i64 } %var.load5, 1
  %pay.ptr211 = inttoptr i64 %ram.pay210 to ptr
  store ptr %pay.ptr211, ptr %var._212, align 8
  store ptr %pay.ptr211, ptr %var.err, align 8
  %var.load213 = load ptr, ptr %var.err, align 8
  %p.to.i64214 = ptrtoint ptr %var.load213 to i64
  %ram.pay215 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64214, 1
  br label %choice.exit7

choice.exit7:                                     ; preds = %choice.else, %choice.exit22
  %choice.res216 = phi { i1, i64 } [ %choice.res209, %choice.exit22 ], [ %ram.pay215, %choice.else ]
  ret { i1, i64 } %choice.res216

a.create:                                         ; preds = %choice.then6
  %arena.cur11 = call ptr @dva_arena_current()
  %a.create12 = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 24)
  %arena.cur13 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create12, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create12, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create12, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create12, ptr %var.lines, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then6
  %a.load2 = load ptr, ptr %var.lines, align 8
  %call.res14 = call ptr @"formatter::format_lines"(ptr %a.load2)
  store ptr %call.res14, ptr %var.candidate, align 8
  %var.load15 = load ptr, ptr %var.candidate, align 8
  %var.load16 = load ptr, ptr %var.filename, align 8
  %call.res17 = call { i1, i64 } @"formatter::parse_ast_signature"(ptr %var.load15, ptr %var.load16)
  store { i1, i64 } %call.res17, ptr %var.cand_sig_res, align 8
  %var.load18 = load { i1, i64 }, ptr %var.cand_sig_res, align 8
  %ram.tag19 = extractvalue { i1, i64 } %var.load18, 0
  br i1 %ram.tag19, label %choice.then20, label %choice.else21

choice.then20:                                    ; preds = %a.after
  %ram.pay23 = extractvalue { i1, i64 } %var.load18, 1
  %pay.ptr24 = inttoptr i64 %ram.pay23 to ptr
  store ptr %pay.ptr24, ptr %var._25, align 8
  store ptr %pay.ptr24, ptr %var.cand_sig, align 8
  %var.load26 = load ptr, ptr %var.cand_sig, align 8
  %var.load27 = load ptr, ptr %var.orig_sig, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %eq.lhs.len28 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len29 = and i64 %eq.lhs.len28, 281474976710655
  %str.tag30 = lshr i64 %eq.lhs.len28, 48
  %str.immortal31 = icmp eq i64 %str.tag30, 0
  br i1 %str.immortal31, label %str_ok33, label %str_gen_check32

choice.else21:                                    ; preds = %a.after
  %ram.pay128 = extractvalue { i1, i64 } %var.load18, 1
  %pay.ptr129 = inttoptr i64 %ram.pay128 to ptr
  store ptr %pay.ptr129, ptr %var._130, align 8
  %var.load131 = load ptr, ptr %var.lines, align 8
  %a.load132 = load ptr, ptr %var.lines, align 8
  %a.null133 = icmp eq ptr %a.load132, null
  br i1 %a.null133, label %a.create134, label %a.after135

choice.exit22:                                    ; preds = %choice.exit154, %choice.exit50
  %choice.res209 = phi { i1, i64 } [ %choice.res127, %choice.exit50 ], [ %choice.res208, %choice.exit154 ]
  br label %choice.exit7

str_gen_check32:                                  ; preds = %choice.then20
  %arena.cur35 = call ptr @dva_arena_current()
  %tag.valid36 = call i1 @dva_arena_validate_tag(ptr %arena.cur35, i64 %str.tag30)
  br i1 %tag.valid36, label %str_ok33, label %str_stale34

str_ok33:                                         ; preds = %str_stale34, %str_gen_check32, %choice.then20
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %eq.rhs.len37 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len38 = and i64 %eq.rhs.len37, 281474976710655
  %str.tag39 = lshr i64 %eq.rhs.len37, 48
  %str.immortal40 = icmp eq i64 %str.tag39, 0
  br i1 %str.immortal40, label %str_ok42, label %str_gen_check41

str_stale34:                                      ; preds = %str_gen_check32
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok33

str_gen_check41:                                  ; preds = %str_ok33
  %arena.cur44 = call ptr @dva_arena_current()
  %tag.valid45 = call i1 @dva_arena_validate_tag(ptr %arena.cur44, i64 %str.tag39)
  br i1 %tag.valid45, label %str_ok42, label %str_stale43

str_ok42:                                         ; preds = %str_stale43, %str_gen_check41, %str_ok33
  %eq.len = icmp eq i64 %eq.lhs.len29, %eq.rhs.len38
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale43:                                      ; preds = %str_gen_check41
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok42

str.eq.then:                                      ; preds = %str_ok42
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 1
  %eq.lhs.data46 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %eq.rhs.data47 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data46, ptr %eq.rhs.data47, i64 %eq.lhs.len29)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok42
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then48, label %choice.else49

choice.then48:                                    ; preds = %str.eq.merge
  %var.load51 = load ptr, ptr %var.candidate, align 8
  %p.to.i64 = ptrtoint ptr %var.load51 to i64
  %ram.pay52 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit50

choice.else49:                                    ; preds = %str.eq.merge
  %var.load53 = load ptr, ptr %var.lines, align 8
  %a.load54 = load ptr, ptr %var.lines, align 8
  %a.null55 = icmp eq ptr %a.load54, null
  br i1 %a.null55, label %a.create56, label %a.after57

choice.exit50:                                    ; preds = %choice.exit74, %choice.then48
  %choice.res127 = phi { i1, i64 } [ %ram.pay52, %choice.then48 ], [ %choice.res126, %choice.exit74 ]
  br label %choice.exit22

a.create56:                                       ; preds = %choice.else49
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
  store ptr %a.create59, ptr %var.lines, align 8
  br label %a.after57

a.after57:                                        ; preds = %a.create56, %choice.else49
  %a.load265 = load ptr, ptr %var.lines, align 8
  %call.res66 = call ptr @"formatter::format_safe_fallback"(ptr %a.load265)
  store ptr %call.res66, ptr %var.fb, align 8
  %var.load67 = load ptr, ptr %var.fb, align 8
  %var.load68 = load ptr, ptr %var.filename, align 8
  %call.res69 = call { i1, i64 } @"formatter::parse_ast_signature"(ptr %var.load67, ptr %var.load68)
  store { i1, i64 } %call.res69, ptr %var.fb_sig_res, align 8
  %var.load70 = load { i1, i64 }, ptr %var.fb_sig_res, align 8
  %ram.tag71 = extractvalue { i1, i64 } %var.load70, 0
  br i1 %ram.tag71, label %choice.then72, label %choice.else73

choice.then72:                                    ; preds = %a.after57
  %ram.pay75 = extractvalue { i1, i64 } %var.load70, 1
  %pay.ptr76 = inttoptr i64 %ram.pay75 to ptr
  store ptr %pay.ptr76, ptr %var._77, align 8
  store ptr %pay.ptr76, ptr %var.fb_sig, align 8
  %var.load78 = load ptr, ptr %var.fb_sig, align 8
  %var.load79 = load ptr, ptr %var.orig_sig, align 8
  %eq.lhs.len80 = getelementptr inbounds { i64, ptr }, ptr %var.load78, i32 0, i32 0
  %eq.lhs.len81 = load i64, ptr %eq.lhs.len80, align 8
  %eq.lhs.len82 = and i64 %eq.lhs.len81, 281474976710655
  %str.tag83 = lshr i64 %eq.lhs.len81, 48
  %str.immortal84 = icmp eq i64 %str.tag83, 0
  br i1 %str.immortal84, label %str_ok86, label %str_gen_check85

choice.else73:                                    ; preds = %a.after57
  %ram.pay120 = extractvalue { i1, i64 } %var.load70, 1
  %pay.ptr121 = inttoptr i64 %ram.pay120 to ptr
  store ptr %pay.ptr121, ptr %var._122, align 8
  %var.load123 = load ptr, ptr %var.src, align 8
  %p.to.i64124 = ptrtoint ptr %var.load123 to i64
  %ram.pay125 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64124, 1
  br label %choice.exit74

choice.exit74:                                    ; preds = %choice.else73, %choice.exit113
  %choice.res126 = phi { i1, i64 } [ %choice.res, %choice.exit113 ], [ %ram.pay125, %choice.else73 ]
  br label %choice.exit50

str_gen_check85:                                  ; preds = %choice.then72
  %arena.cur88 = call ptr @dva_arena_current()
  %tag.valid89 = call i1 @dva_arena_validate_tag(ptr %arena.cur88, i64 %str.tag83)
  br i1 %tag.valid89, label %str_ok86, label %str_stale87

str_ok86:                                         ; preds = %str_stale87, %str_gen_check85, %choice.then72
  %eq.rhs.len90 = getelementptr inbounds { i64, ptr }, ptr %var.load79, i32 0, i32 0
  %eq.rhs.len91 = load i64, ptr %eq.rhs.len90, align 8
  %eq.rhs.len92 = and i64 %eq.rhs.len91, 281474976710655
  %str.tag93 = lshr i64 %eq.rhs.len91, 48
  %str.immortal94 = icmp eq i64 %str.tag93, 0
  br i1 %str.immortal94, label %str_ok96, label %str_gen_check95

str_stale87:                                      ; preds = %str_gen_check85
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok86

str_gen_check95:                                  ; preds = %str_ok86
  %arena.cur98 = call ptr @dva_arena_current()
  %tag.valid99 = call i1 @dva_arena_validate_tag(ptr %arena.cur98, i64 %str.tag93)
  br i1 %tag.valid99, label %str_ok96, label %str_stale97

str_ok96:                                         ; preds = %str_stale97, %str_gen_check95, %str_ok86
  %eq.len100 = icmp eq i64 %eq.lhs.len82, %eq.rhs.len92
  br i1 %eq.len100, label %str.eq.then101, label %str.eq.else102

str_stale97:                                      ; preds = %str_gen_check95
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok96

str.eq.then101:                                   ; preds = %str_ok96
  %eq.lhs.data104 = getelementptr inbounds { i64, ptr }, ptr %var.load78, i32 0, i32 1
  %eq.lhs.data105 = load ptr, ptr %eq.lhs.data104, align 8
  %eq.rhs.data106 = getelementptr inbounds { i64, ptr }, ptr %var.load79, i32 0, i32 1
  %eq.rhs.data107 = load ptr, ptr %eq.rhs.data106, align 8
  %eq.memcmp108 = call i32 @memcmp(ptr %eq.lhs.data105, ptr %eq.rhs.data107, i64 %eq.lhs.len82)
  %eq.cmp.zero109 = icmp eq i32 %eq.memcmp108, 0
  br label %str.eq.merge103

str.eq.else102:                                   ; preds = %str_ok96
  br label %str.eq.merge103

str.eq.merge103:                                  ; preds = %str.eq.else102, %str.eq.then101
  %str.eq.result110 = phi i1 [ %eq.cmp.zero109, %str.eq.then101 ], [ false, %str.eq.else102 ]
  br i1 %str.eq.result110, label %choice.then111, label %choice.else112

choice.then111:                                   ; preds = %str.eq.merge103
  %var.load114 = load ptr, ptr %var.fb, align 8
  %p.to.i64115 = ptrtoint ptr %var.load114 to i64
  %ram.pay116 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64115, 1
  br label %choice.exit113

choice.else112:                                   ; preds = %str.eq.merge103
  %var.load117 = load ptr, ptr %var.src, align 8
  %p.to.i64118 = ptrtoint ptr %var.load117 to i64
  %ram.pay119 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64118, 1
  br label %choice.exit113

choice.exit113:                                   ; preds = %choice.else112, %choice.then111
  %choice.res = phi { i1, i64 } [ %ram.pay116, %choice.then111 ], [ %ram.pay119, %choice.else112 ]
  br label %choice.exit74

a.create134:                                      ; preds = %choice.else21
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
  store ptr %a.create137, ptr %var.lines, align 8
  br label %a.after135

a.after135:                                       ; preds = %a.create134, %choice.else21
  %a.load2143 = load ptr, ptr %var.lines, align 8
  %call.res144 = call ptr @"formatter::format_safe_fallback"(ptr %a.load2143)
  store ptr %call.res144, ptr %var.fb145, align 8
  %var.load146 = load ptr, ptr %var.fb145, align 8
  %var.load147 = load ptr, ptr %var.filename, align 8
  %call.res148 = call { i1, i64 } @"formatter::parse_ast_signature"(ptr %var.load146, ptr %var.load147)
  store { i1, i64 } %call.res148, ptr %var.fb_sig_res149, align 8
  %var.load150 = load { i1, i64 }, ptr %var.fb_sig_res149, align 8
  %ram.tag151 = extractvalue { i1, i64 } %var.load150, 0
  br i1 %ram.tag151, label %choice.then152, label %choice.else153

choice.then152:                                   ; preds = %a.after135
  %ram.pay155 = extractvalue { i1, i64 } %var.load150, 1
  %pay.ptr156 = inttoptr i64 %ram.pay155 to ptr
  store ptr %pay.ptr156, ptr %var._157, align 8
  store ptr %pay.ptr156, ptr %var.fb_sig158, align 8
  %var.load159 = load ptr, ptr %var.fb_sig158, align 8
  %var.load160 = load ptr, ptr %var.orig_sig, align 8
  %eq.lhs.len161 = getelementptr inbounds { i64, ptr }, ptr %var.load159, i32 0, i32 0
  %eq.lhs.len162 = load i64, ptr %eq.lhs.len161, align 8
  %eq.lhs.len163 = and i64 %eq.lhs.len162, 281474976710655
  %str.tag164 = lshr i64 %eq.lhs.len162, 48
  %str.immortal165 = icmp eq i64 %str.tag164, 0
  br i1 %str.immortal165, label %str_ok167, label %str_gen_check166

choice.else153:                                   ; preds = %a.after135
  %ram.pay202 = extractvalue { i1, i64 } %var.load150, 1
  %pay.ptr203 = inttoptr i64 %ram.pay202 to ptr
  store ptr %pay.ptr203, ptr %var._204, align 8
  %var.load205 = load ptr, ptr %var.src, align 8
  %p.to.i64206 = ptrtoint ptr %var.load205 to i64
  %ram.pay207 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64206, 1
  br label %choice.exit154

choice.exit154:                                   ; preds = %choice.else153, %choice.exit194
  %choice.res208 = phi { i1, i64 } [ %choice.res201, %choice.exit194 ], [ %ram.pay207, %choice.else153 ]
  br label %choice.exit22

str_gen_check166:                                 ; preds = %choice.then152
  %arena.cur169 = call ptr @dva_arena_current()
  %tag.valid170 = call i1 @dva_arena_validate_tag(ptr %arena.cur169, i64 %str.tag164)
  br i1 %tag.valid170, label %str_ok167, label %str_stale168

str_ok167:                                        ; preds = %str_stale168, %str_gen_check166, %choice.then152
  %eq.rhs.len171 = getelementptr inbounds { i64, ptr }, ptr %var.load160, i32 0, i32 0
  %eq.rhs.len172 = load i64, ptr %eq.rhs.len171, align 8
  %eq.rhs.len173 = and i64 %eq.rhs.len172, 281474976710655
  %str.tag174 = lshr i64 %eq.rhs.len172, 48
  %str.immortal175 = icmp eq i64 %str.tag174, 0
  br i1 %str.immortal175, label %str_ok177, label %str_gen_check176

str_stale168:                                     ; preds = %str_gen_check166
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok167

str_gen_check176:                                 ; preds = %str_ok167
  %arena.cur179 = call ptr @dva_arena_current()
  %tag.valid180 = call i1 @dva_arena_validate_tag(ptr %arena.cur179, i64 %str.tag174)
  br i1 %tag.valid180, label %str_ok177, label %str_stale178

str_ok177:                                        ; preds = %str_stale178, %str_gen_check176, %str_ok167
  %eq.len181 = icmp eq i64 %eq.lhs.len163, %eq.rhs.len173
  br i1 %eq.len181, label %str.eq.then182, label %str.eq.else183

str_stale178:                                     ; preds = %str_gen_check176
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok177

str.eq.then182:                                   ; preds = %str_ok177
  %eq.lhs.data185 = getelementptr inbounds { i64, ptr }, ptr %var.load159, i32 0, i32 1
  %eq.lhs.data186 = load ptr, ptr %eq.lhs.data185, align 8
  %eq.rhs.data187 = getelementptr inbounds { i64, ptr }, ptr %var.load160, i32 0, i32 1
  %eq.rhs.data188 = load ptr, ptr %eq.rhs.data187, align 8
  %eq.memcmp189 = call i32 @memcmp(ptr %eq.lhs.data186, ptr %eq.rhs.data188, i64 %eq.lhs.len163)
  %eq.cmp.zero190 = icmp eq i32 %eq.memcmp189, 0
  br label %str.eq.merge184

str.eq.else183:                                   ; preds = %str_ok177
  br label %str.eq.merge184

str.eq.merge184:                                  ; preds = %str.eq.else183, %str.eq.then182
  %str.eq.result191 = phi i1 [ %eq.cmp.zero190, %str.eq.then182 ], [ false, %str.eq.else183 ]
  br i1 %str.eq.result191, label %choice.then192, label %choice.else193

choice.then192:                                   ; preds = %str.eq.merge184
  %var.load195 = load ptr, ptr %var.fb145, align 8
  %p.to.i64196 = ptrtoint ptr %var.load195 to i64
  %ram.pay197 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64196, 1
  br label %choice.exit194

choice.else193:                                   ; preds = %str.eq.merge184
  %var.load198 = load ptr, ptr %var.src, align 8
  %p.to.i64199 = ptrtoint ptr %var.load198 to i64
  %ram.pay200 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64199, 1
  br label %choice.exit194

choice.exit194:                                   ; preds = %choice.else193, %choice.then192
  %choice.res201 = phi { i1, i64 } [ %ram.pay197, %choice.then192 ], [ %ram.pay200, %choice.else193 ]
  br label %choice.exit154
}

define void @"formatter::sort_names"(ptr %0) #1 {
entry:
  %var._235 = alloca ptr, align 8
  %var._234 = alloca ptr, align 8
  %var._233 = alloca ptr, align 8
  %var._157 = alloca ptr, align 8
  %var._156 = alloca ptr, align 8
  %var._155 = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._109 = alloca ptr, align 8
  %var._106 = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  %var._44 = alloca ptr, align 8
  %var._41 = alloca ptr, align 8
  %var._10 = alloca i64, align 8
  %var._i9 = alloca i64, align 8
  %var.j = alloca i64, align 8
  %loop.step.525 = alloca i64, align 8
  %loop.idx.525 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.524 = alloca i64, align 8
  %loop.idx.524 = alloca i64, align 8
  %var.n = alloca i64, align 8
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
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query3 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query3, ptr %var.n, align 8
  %var.load4 = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.524, align 8
  br label %loop.header.524

loop.header.524:                                  ; preds = %loop.latch.524, %a.after
  %counter.load = load i64, ptr %loop.idx.524, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load4
  br i1 %loop.cond, label %loop.body.524, label %loop.exit.nat.524

loop.body.524:                                    ; preds = %loop.header.524
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.524, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load5 = load i64, ptr %var.n, align 8
  %subtmp = sub i64 %var.load5, 1
  store i64 0, ptr %loop.idx.525, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.525

loop.exit.nat.524:                                ; preds = %loop.header.524
  br label %loop.exit.524

loop.latch.524:                                   ; preds = %loop.exit.525
  %step.val280 = load i64, ptr %loop.step.524, align 8
  %loop.next281 = add i64 %counter.load, %step.val280
  store i64 %loop.next281, ptr %loop.idx.524, align 8
  br label %loop.header.524

loop.exit.524:                                    ; preds = %loop.exit.nat.524
  ret void

loop.header.525:                                  ; preds = %loop.latch.525, %loop.body.524
  %counter.load6 = load i64, ptr %loop.idx.525, align 8
  %loop.cond7 = icmp slt i64 %counter.load6, %subtmp
  br i1 %loop.cond7, label %loop.body.525, label %loop.exit.nat.525

loop.body.525:                                    ; preds = %loop.header.525
  %loop.rel.i8 = sub i64 %counter.load6, 0
  store i64 1, ptr %loop.step.525, align 8
  store i64 %loop.rel.i8, ptr %var._i9, align 8
  store i64 %counter.load6, ptr %var._10, align 8
  store i64 %counter.load6, ptr %var.j, align 8
  %var.load11 = load ptr, ptr %var.names, align 8
  %a.load12 = load ptr, ptr %var.names, align 8
  %a.null13 = icmp eq ptr %a.load12, null
  br i1 %a.null13, label %a.create14, label %a.after15

loop.exit.nat.525:                                ; preds = %loop.header.525
  br label %loop.exit.525

loop.latch.525:                                   ; preds = %choice.exit114
  %step.val = load i64, ptr %loop.step.525, align 8
  %loop.next = add i64 %counter.load6, %step.val
  store i64 %loop.next, ptr %loop.idx.525, align 8
  br label %loop.header.525

loop.exit.525:                                    ; preds = %loop.exit.nat.525
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  br label %loop.latch.524

a.create14:                                       ; preds = %loop.body.525
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
  store ptr %a.create17, ptr %var.names, align 8
  br label %a.after15

a.after15:                                        ; preds = %a.create14, %loop.body.525
  %a.load223 = load ptr, ptr %var.names, align 8
  %var.load24 = load i64, ptr %var.j, align 8
  %a.rd.nonnull = icmp ne ptr %a.load223, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after15
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load223, i32 0, i32 0
  %a.rd.len25 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load24, 0
  %a.rd.lt = icmp slt i64 %var.load24, %a.rd.len25
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load223, i32 0, i32 1
  %a.rd.data26 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data26, i64 %var.load24
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after15
  %arena.cur27 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.5.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 513, ptr %err.line.gep, align 8
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
  %arena.cur28 = call ptr @dva_arena_current()
  %err.alloc29 = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 56)
  %err.code.gep30 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 0
  store i64 4011, ptr %err.code.gep30, align 8
  %err.msg.gep31 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep31, align 8
  %err.file.gep32 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 2
  store ptr @str.5.struct, ptr %err.file.gep32, align 8
  %err.line.gep33 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 3
  store i64 513, ptr %err.line.gep33, align 8
  %err.col.gep34 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 4
  store i64 23, ptr %err.col.gep34, align 8
  %err.ctx.gep35 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc29, i32 0, i32 5
  %err.ctx0.gep36 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep35, i32 0, i32 0
  store i64 %var.load24, ptr %err.ctx0.gep36, align 8
  %err.ctx1.gep37 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep35, i32 0, i32 1
  store i64 %a.rd.len25, ptr %err.ctx1.gep37, align 8
  %err.p2i38 = ptrtoint ptr %err.alloc29 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i38, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag39 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag39, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %ram.pay40 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay40 to ptr
  store ptr %pay.ptr, ptr %var._41, align 8
  br label %choice.exit

choice.else:                                      ; preds = %a.rd.done
  %ram.pay42 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr43 = inttoptr i64 %ram.pay42 to ptr
  store ptr %pay.ptr43, ptr %var._44, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ @str.3.struct, %choice.else ]
  store ptr %choice.res, ptr %var.a, align 8
  %var.load45 = load ptr, ptr %var.names, align 8
  %a.load46 = load ptr, ptr %var.names, align 8
  %a.null47 = icmp eq ptr %a.load46, null
  br i1 %a.null47, label %a.create48, label %a.after49

a.create48:                                       ; preds = %choice.exit
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
  store ptr %a.create51, ptr %var.names, align 8
  br label %a.after49

a.after49:                                        ; preds = %a.create48, %choice.exit
  %a.load257 = load ptr, ptr %var.names, align 8
  %var.load58 = load i64, ptr %var.j, align 8
  %addtmp = add i64 %var.load58, 1
  %a.rd.nonnull59 = icmp ne ptr %a.load257, null
  br i1 %a.rd.nonnull59, label %a.rd.check60, label %a.rd.err.null62

a.rd.check60:                                     ; preds = %a.after49
  %a.rd.len65 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 0
  %a.rd.len66 = load i64, ptr %a.rd.len65, align 8
  %a.rd.ge067 = icmp sge i64 %addtmp, 0
  %a.rd.lt68 = icmp slt i64 %addtmp, %a.rd.len66
  %a.rd.bounds69 = and i1 %a.rd.ge067, %a.rd.lt68
  br i1 %a.rd.bounds69, label %a.rd.ok61, label %a.rd.err.oob63

a.rd.ok61:                                        ; preds = %a.rd.check60
  %a.rd.data70 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load257, i32 0, i32 1
  %a.rd.data71 = load ptr, ptr %a.rd.data70, align 8
  %a.rd.elem.gep72 = getelementptr i64, ptr %a.rd.data71, i64 %addtmp
  %a.rd.elem73 = load i64, ptr %a.rd.elem.gep72, align 8
  br label %a.rd.done64

a.rd.err.null62:                                  ; preds = %a.after49
  %arena.cur74 = call ptr @dva_arena_current()
  %err.alloc75 = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 56)
  %err.code.gep76 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 0
  store i64 4011, ptr %err.code.gep76, align 8
  %err.msg.gep77 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep77, align 8
  %err.file.gep78 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 2
  store ptr @str.5.struct, ptr %err.file.gep78, align 8
  %err.line.gep79 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 3
  store i64 514, ptr %err.line.gep79, align 8
  %err.col.gep80 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 4
  store i64 27, ptr %err.col.gep80, align 8
  %err.ctx.gep81 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc75, i32 0, i32 5
  %err.ctx0.gep82 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep81, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep82, align 8
  %err.ctx1.gep83 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep81, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep83, align 8
  %err.p2i84 = ptrtoint ptr %err.alloc75 to i64
  br label %a.rd.done64

a.rd.err.oob63:                                   ; preds = %a.rd.check60
  %arena.cur85 = call ptr @dva_arena_current()
  %err.alloc86 = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 56)
  %err.code.gep87 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc86, i32 0, i32 0
  store i64 4011, ptr %err.code.gep87, align 8
  %err.msg.gep88 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc86, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep88, align 8
  %err.file.gep89 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc86, i32 0, i32 2
  store ptr @str.5.struct, ptr %err.file.gep89, align 8
  %err.line.gep90 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc86, i32 0, i32 3
  store i64 514, ptr %err.line.gep90, align 8
  %err.col.gep91 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc86, i32 0, i32 4
  store i64 27, ptr %err.col.gep91, align 8
  %err.ctx.gep92 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc86, i32 0, i32 5
  %err.ctx0.gep93 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep92, i32 0, i32 0
  store i64 %addtmp, ptr %err.ctx0.gep93, align 8
  %err.ctx1.gep94 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep92, i32 0, i32 1
  store i64 %a.rd.len66, ptr %err.ctx1.gep94, align 8
  %err.p2i95 = ptrtoint ptr %err.alloc86 to i64
  br label %a.rd.done64

a.rd.done64:                                      ; preds = %a.rd.err.oob63, %a.rd.err.null62, %a.rd.ok61
  %a.rd.tag96 = phi i1 [ true, %a.rd.ok61 ], [ false, %a.rd.err.null62 ], [ false, %a.rd.err.oob63 ]
  %a.rd.pay97 = phi i64 [ %a.rd.elem73, %a.rd.ok61 ], [ %err.p2i84, %a.rd.err.null62 ], [ %err.p2i95, %a.rd.err.oob63 ]
  %ram.tag98 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag96, 0
  %ram.pay99 = insertvalue { i1, i64 } %ram.tag98, i64 %a.rd.pay97, 1
  %ram.tag100 = extractvalue { i1, i64 } %ram.pay99, 0
  br i1 %ram.tag100, label %choice.then101, label %choice.else102

choice.then101:                                   ; preds = %a.rd.done64
  %ram.pay104 = extractvalue { i1, i64 } %ram.pay99, 1
  %pay.ptr105 = inttoptr i64 %ram.pay104 to ptr
  store ptr %pay.ptr105, ptr %var._106, align 8
  br label %choice.exit103

choice.else102:                                   ; preds = %a.rd.done64
  %ram.pay107 = extractvalue { i1, i64 } %ram.pay99, 1
  %pay.ptr108 = inttoptr i64 %ram.pay107 to ptr
  store ptr %pay.ptr108, ptr %var._109, align 8
  br label %choice.exit103

choice.exit103:                                   ; preds = %choice.else102, %choice.then101
  %choice.res110 = phi ptr [ %pay.ptr105, %choice.then101 ], [ @str.3.struct, %choice.else102 ]
  store ptr %choice.res110, ptr %var.b, align 8
  %var.load111 = load ptr, ptr %var.a, align 8
  %var.load112 = load ptr, ptr %var.b, align 8
  %call.res = call i64 @"str::cmp"(ptr %var.load111, ptr %var.load112)
  %cmptmp = icmp sgt i64 %call.res, 0
  br i1 %cmptmp, label %choice.then113, label %choice.exit114

choice.then113:                                   ; preds = %choice.exit103
  %var.load115 = load ptr, ptr %var.names, align 8
  %a.load116 = load ptr, ptr %var.names, align 8
  %a.null117 = icmp eq ptr %a.load116, null
  br i1 %a.null117, label %a.create118, label %a.after119

choice.exit114:                                   ; preds = %choice.exit232, %choice.exit103
  br label %loop.latch.525

a.create118:                                      ; preds = %choice.then113
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
  store ptr %a.create121, ptr %var.names, align 8
  br label %a.after119

a.after119:                                       ; preds = %a.create118, %choice.then113
  %a.load2127 = load ptr, ptr %var.names, align 8
  %var.load128 = load i64, ptr %var.j, align 8
  %var.load129 = load ptr, ptr %var.b, align 8
  %slot.p2i = ptrtoint ptr %var.load129 to i64
  %a.wr.nonnull = icmp ne ptr %a.load2127, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after119
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2127, i32 0, i32 0
  %a.wr.len130 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load128, 0
  %a.wr.lt = icmp slt i64 %var.load128, %a.wr.len130
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2127, i32 0, i32 1
  %a.wr.data131 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data131, i64 %var.load128
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after119
  %arena.cur132 = call ptr @dva_arena_current()
  %err.alloc133 = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 56)
  %err.code.gep134 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 0
  store i64 4011, ptr %err.code.gep134, align 8
  %err.msg.gep135 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep135, align 8
  %err.file.gep136 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 2
  store ptr @str.5.struct, ptr %err.file.gep136, align 8
  %err.line.gep137 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 3
  store i64 0, ptr %err.line.gep137, align 8
  %err.col.gep138 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 4
  store i64 0, ptr %err.col.gep138, align 8
  %err.ctx.gep139 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc133, i32 0, i32 5
  %err.ctx0.gep140 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep139, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep140, align 8
  %err.ctx1.gep141 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep139, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep141, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur142 = call ptr @dva_arena_current()
  %err.alloc143 = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 56)
  %err.code.gep144 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 0
  store i64 4011, ptr %err.code.gep144, align 8
  %err.msg.gep145 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep145, align 8
  %err.file.gep146 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 2
  store ptr @str.5.struct, ptr %err.file.gep146, align 8
  %err.line.gep147 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 3
  store i64 0, ptr %err.line.gep147, align 8
  %err.col.gep148 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 4
  store i64 0, ptr %err.col.gep148, align 8
  %err.ctx.gep149 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 5
  %err.ctx0.gep150 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep149, i32 0, i32 0
  store i64 %var.load128, ptr %err.ctx0.gep150, align 8
  %err.ctx1.gep151 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep149, i32 0, i32 1
  store i64 %a.wr.len130, ptr %err.ctx1.gep151, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc133, %a.wr.err.null ], [ %err.alloc143, %a.wr.err.oob ]
  %niche.eq.null = icmp eq ptr %a.wr.niche, null
  br i1 %niche.eq.null, label %choice.then152, label %choice.else153

choice.then152:                                   ; preds = %a.wr.done
  br label %choice.exit154

choice.else153:                                   ; preds = %a.wr.done
  store ptr %a.wr.niche, ptr %var._155, align 8
  store ptr %a.wr.niche, ptr %var._156, align 8
  store ptr %a.wr.niche, ptr %var._157, align 8
  %err.code.gep158 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep158, align 8
  %err.msg.gep159 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep159, align 8
  %err.file.gep160 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep160, align 8
  %err.line.gep161 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep161, align 8
  %err.col.gep162 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep162, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len163 = load i64, ptr %err.msg.len, align 8
  %err.msg.len164 = and i64 %err.msg.len163, 281474976710655
  %str.tag = lshr i64 %err.msg.len163, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit154:                                   ; preds = %err.abort, %choice.then152
  %var.load177 = load ptr, ptr %var.names, align 8
  %a.load178 = load ptr, ptr %var.names, align 8
  %a.null179 = icmp eq ptr %a.load178, null
  br i1 %a.null179, label %a.create180, label %a.after181

str_gen_check:                                    ; preds = %choice.else153
  %arena.cur165 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur165, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else153
  %err.msg.len32 = trunc i64 %err.msg.len164 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data166 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len167 = load i64, ptr %err.file.len, align 8
  %err.file.len168 = and i64 %err.file.len167, 281474976710655
  %str.tag169 = lshr i64 %err.file.len167, 48
  %str.immortal170 = icmp eq i64 %str.tag169, 0
  br i1 %str.immortal170, label %str_ok172, label %str_gen_check171

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check171:                                 ; preds = %str_ok
  %arena.cur174 = call ptr @dva_arena_current()
  %tag.valid175 = call i1 @dva_arena_validate_tag(ptr %arena.cur174, i64 %str.tag169)
  br i1 %tag.valid175, label %str_ok172, label %str_stale173

str_ok172:                                        ; preds = %str_stale173, %str_gen_check171, %str_ok
  %err.file.len32 = trunc i64 %err.file.len168 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data176 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale173:                                     ; preds = %str_gen_check171
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok172

err.thread:                                       ; preds = %str_ok172
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %a.wr.niche, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok172
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data166, i32 %err.file.len32, ptr %err.file.data176, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

err.abort:                                        ; No predecessors!
  br label %choice.exit154

a.create180:                                      ; preds = %choice.exit154
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
  store ptr %a.create183, ptr %var.names, align 8
  br label %a.after181

a.after181:                                       ; preds = %a.create180, %choice.exit154
  %a.load2189 = load ptr, ptr %var.names, align 8
  %var.load190 = load i64, ptr %var.j, align 8
  %addtmp191 = add i64 %var.load190, 1
  %var.load192 = load ptr, ptr %var.a, align 8
  %slot.p2i193 = ptrtoint ptr %var.load192 to i64
  %a.wr.nonnull194 = icmp ne ptr %a.load2189, null
  br i1 %a.wr.nonnull194, label %a.wr.check195, label %a.wr.err.null197

a.wr.check195:                                    ; preds = %a.after181
  %a.wr.len200 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2189, i32 0, i32 0
  %a.wr.len201 = load i64, ptr %a.wr.len200, align 8
  %a.wr.ge0202 = icmp sge i64 %addtmp191, 0
  %a.wr.lt203 = icmp slt i64 %addtmp191, %a.wr.len201
  %a.wr.bounds204 = and i1 %a.wr.ge0202, %a.wr.lt203
  br i1 %a.wr.bounds204, label %a.wr.ok196, label %a.wr.err.oob198

a.wr.ok196:                                       ; preds = %a.wr.check195
  %a.wr.data205 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2189, i32 0, i32 1
  %a.wr.data206 = load ptr, ptr %a.wr.data205, align 8
  %a.elem.gep207 = getelementptr i64, ptr %a.wr.data206, i64 %addtmp191
  store i64 %slot.p2i193, ptr %a.elem.gep207, align 8
  br label %a.wr.done199

a.wr.err.null197:                                 ; preds = %a.after181
  %arena.cur208 = call ptr @dva_arena_current()
  %err.alloc209 = call ptr @dva_arena_alloc(ptr %arena.cur208, i64 56)
  %err.code.gep210 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 0
  store i64 4011, ptr %err.code.gep210, align 8
  %err.msg.gep211 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep211, align 8
  %err.file.gep212 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 2
  store ptr @str.5.struct, ptr %err.file.gep212, align 8
  %err.line.gep213 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 3
  store i64 0, ptr %err.line.gep213, align 8
  %err.col.gep214 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 4
  store i64 0, ptr %err.col.gep214, align 8
  %err.ctx.gep215 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc209, i32 0, i32 5
  %err.ctx0.gep216 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep215, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep216, align 8
  %err.ctx1.gep217 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep215, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep217, align 8
  br label %a.wr.done199

a.wr.err.oob198:                                  ; preds = %a.wr.check195
  %arena.cur218 = call ptr @dva_arena_current()
  %err.alloc219 = call ptr @dva_arena_alloc(ptr %arena.cur218, i64 56)
  %err.code.gep220 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc219, i32 0, i32 0
  store i64 4011, ptr %err.code.gep220, align 8
  %err.msg.gep221 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc219, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep221, align 8
  %err.file.gep222 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc219, i32 0, i32 2
  store ptr @str.5.struct, ptr %err.file.gep222, align 8
  %err.line.gep223 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc219, i32 0, i32 3
  store i64 0, ptr %err.line.gep223, align 8
  %err.col.gep224 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc219, i32 0, i32 4
  store i64 0, ptr %err.col.gep224, align 8
  %err.ctx.gep225 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc219, i32 0, i32 5
  %err.ctx0.gep226 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep225, i32 0, i32 0
  store i64 %addtmp191, ptr %err.ctx0.gep226, align 8
  %err.ctx1.gep227 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep225, i32 0, i32 1
  store i64 %a.wr.len201, ptr %err.ctx1.gep227, align 8
  br label %a.wr.done199

a.wr.done199:                                     ; preds = %a.wr.err.oob198, %a.wr.err.null197, %a.wr.ok196
  %a.wr.niche228 = phi ptr [ null, %a.wr.ok196 ], [ %err.alloc209, %a.wr.err.null197 ], [ %err.alloc219, %a.wr.err.oob198 ]
  %niche.eq.null229 = icmp eq ptr %a.wr.niche228, null
  br i1 %niche.eq.null229, label %choice.then230, label %choice.else231

choice.then230:                                   ; preds = %a.wr.done199
  br label %choice.exit232

choice.else231:                                   ; preds = %a.wr.done199
  store ptr %a.wr.niche228, ptr %var._233, align 8
  store ptr %a.wr.niche228, ptr %var._234, align 8
  store ptr %a.wr.niche228, ptr %var._235, align 8
  %err.code.gep236 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche228, i32 0, i32 0
  %err.code237 = load i64, ptr %err.code.gep236, align 8
  %err.msg.gep238 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche228, i32 0, i32 1
  %err.msg.struct239 = load ptr, ptr %err.msg.gep238, align 8
  %err.file.gep240 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche228, i32 0, i32 2
  %err.file.struct241 = load ptr, ptr %err.file.gep240, align 8
  %err.line.gep242 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche228, i32 0, i32 3
  %err.line243 = load i64, ptr %err.line.gep242, align 8
  %err.col.gep244 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %a.wr.niche228, i32 0, i32 4
  %err.col245 = load i64, ptr %err.col.gep244, align 8
  %err.msg.len246 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct239, i32 0, i32 0
  %err.msg.len247 = load i64, ptr %err.msg.len246, align 8
  %err.msg.len248 = and i64 %err.msg.len247, 281474976710655
  %str.tag249 = lshr i64 %err.msg.len247, 48
  %str.immortal250 = icmp eq i64 %str.tag249, 0
  br i1 %str.immortal250, label %str_ok252, label %str_gen_check251

choice.exit232:                                   ; preds = %err.abort279, %choice.then230
  br label %choice.exit114

str_gen_check251:                                 ; preds = %choice.else231
  %arena.cur254 = call ptr @dva_arena_current()
  %tag.valid255 = call i1 @dva_arena_validate_tag(ptr %arena.cur254, i64 %str.tag249)
  br i1 %tag.valid255, label %str_ok252, label %str_stale253

str_ok252:                                        ; preds = %str_stale253, %str_gen_check251, %choice.else231
  %err.msg.len32256 = trunc i64 %err.msg.len248 to i32
  %err.msg.data257 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct239, i32 0, i32 1
  %err.msg.data258 = load ptr, ptr %err.msg.data257, align 8
  %err.file.len259 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct241, i32 0, i32 0
  %err.file.len260 = load i64, ptr %err.file.len259, align 8
  %err.file.len261 = and i64 %err.file.len260, 281474976710655
  %str.tag262 = lshr i64 %err.file.len260, 48
  %str.immortal263 = icmp eq i64 %str.tag262, 0
  br i1 %str.immortal263, label %str_ok265, label %str_gen_check264

str_stale253:                                     ; preds = %str_gen_check251
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok252

str_gen_check264:                                 ; preds = %str_ok252
  %arena.cur267 = call ptr @dva_arena_current()
  %tag.valid268 = call i1 @dva_arena_validate_tag(ptr %arena.cur267, i64 %str.tag262)
  br i1 %tag.valid268, label %str_ok265, label %str_stale266

str_ok265:                                        ; preds = %str_stale266, %str_gen_check264, %str_ok252
  %err.file.len32269 = trunc i64 %err.file.len261 to i32
  %err.file.data270 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct241, i32 0, i32 1
  %err.file.data271 = load ptr, ptr %err.file.data270, align 8
  %err.thread.rec272 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread273 = icmp ne ptr %err.thread.rec272, null
  br i1 %err.is.thread273, label %err.thread274, label %err.normal275

str_stale266:                                     ; preds = %str_gen_check264
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok265

err.thread274:                                    ; preds = %str_ok265
  %err.haserr.gep276 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec272, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep276, align 8
  %err.err.gep277 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec272, i32 0, i32 7
  store ptr %a.wr.niche228, ptr %err.err.gep277, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal275:                                    ; preds = %str_ok265
  %err.panic.printf278 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code237, i32 %err.msg.len32256, ptr %err.msg.data258, i32 %err.file.len32269, ptr %err.file.data271, i64 %err.line243, i64 %err.col245)
  call void @exit(i32 1)
  unreachable

err.abort279:                                     ; No predecessors!
  br label %choice.exit232
}

declare i64 @"str::cmp"(ptr, ptr) #1

define void @"formatter::collect_dva_files"(ptr %0, ptr %1) #1 {
entry:
  %var.sub = alloca ptr, align 8
  %var._132 = alloca ptr, align 8
  %var._i131 = alloca i64, align 8
  %var.name = alloca ptr, align 8
  %loop.step.527 = alloca i64, align 8
  %loop.idx.527 = alloca i64, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.ent = alloca ptr, align 8
  %loop.step.526 = alloca i64, align 8
  %loop.idx.526 = alloca i64, align 8
  %var.names = alloca ptr, align 8
  %var.entries = alloca ptr, align 8
  %var.out = alloca ptr, align 8
  %var.target = alloca ptr, align 8
  store ptr %0, ptr %var.target, align 8
  store ptr %1, ptr %var.out, align 8
  %var.load = load ptr, ptr %var.target, align 8
  %call.res = call i1 @"fs::is_file"(ptr %var.load)
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.target, align 8
  %call.res2 = call ptr @"fs::ext"(ptr %var.load1)
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %call.res2, i32 0, i32 0
  %eq.lhs.len3 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len4 = and i64 %eq.lhs.len3, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len3, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.else:                                      ; preds = %entry
  %var.load24 = load ptr, ptr %var.target, align 8
  %call.res25 = call i1 @"fs::is_dir"(ptr %var.load24)
  br i1 %call.res25, label %choice.then26, label %choice.exit27

choice.exit:                                      ; preds = %choice.exit27, %choice.exit15
  ret void

str_gen_check:                                    ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.then
  %eq.rhs.len = load i64, ptr @str.10.struct, align 8
  %eq.rhs.len5 = and i64 %eq.rhs.len, 281474976710655
  %str.tag6 = lshr i64 %eq.rhs.len, 48
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
  %eq.len = icmp eq i64 %eq.lhs.len4, %eq.rhs.len5
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale10:                                      ; preds = %str_gen_check8
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

str.eq.then:                                      ; preds = %str_ok9
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %call.res2, i32 0, i32 1
  %eq.lhs.data13 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.10.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data13, ptr %eq.rhs.data, i64 %eq.lhs.len4)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok9
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then14, label %choice.exit15

choice.then14:                                    ; preds = %str.eq.merge
  %var.load16 = load ptr, ptr %var.target, align 8
  %a.load = load ptr, ptr %var.out, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit15:                                    ; preds = %a.store, %str.eq.merge
  br label %choice.exit

a.create:                                         ; preds = %choice.then14
  %arena.cur17 = call ptr @dva_arena_current()
  %a.create18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 24)
  %arena.cur19 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create18, ptr %var.out, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then14
  %a.load2 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len20 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap21 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len20, %a.cap21
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data22 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len23 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data22, i64 %a.cur.len23
  %slot.p2i = ptrtoint ptr %var.load16 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len23, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit15

choice.then26:                                    ; preds = %choice.else
  %var.load28 = load ptr, ptr %var.target, align 8
  %call.res29 = call ptr @"fs::read_dir"(ptr %var.load28)
  store ptr %call.res29, ptr %var.entries, align 8
  %arena.cur30 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 24)
  %arena.cur31 = call ptr @dva_arena_current()
  %a.buf32 = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 128)
  %a.len.gep33 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep33, align 8
  %a.data.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf32, ptr %a.data.gep34, align 8
  %a.cap.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep35, align 8
  store ptr %a.new, ptr %var.names, align 8
  %var.load36 = load ptr, ptr %var.entries, align 8
  %a.load37 = load ptr, ptr %var.entries, align 8
  %a.null38 = icmp eq ptr %a.load37, null
  br i1 %a.null38, label %a.create39, label %a.after40

choice.exit27:                                    ; preds = %loop.exit.527, %choice.else
  br label %choice.exit

a.create39:                                       ; preds = %choice.then26
  %arena.cur41 = call ptr @dva_arena_current()
  %a.create42 = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 24)
  %arena.cur43 = call ptr @dva_arena_current()
  %a.buf44 = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 128)
  %a.len.gep45 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create42, i32 0, i32 0
  store i64 0, ptr %a.len.gep45, align 8
  %a.data.gep46 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create42, i32 0, i32 1
  store ptr %a.buf44, ptr %a.data.gep46, align 8
  %a.cap.gep47 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create42, i32 0, i32 2
  store i64 16, ptr %a.cap.gep47, align 8
  store ptr %a.create42, ptr %var.entries, align 8
  br label %a.after40

a.after40:                                        ; preds = %a.create39, %choice.then26
  %a.load248 = load ptr, ptr %var.entries, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load248, i32 0, i32 0
  %arr.cycle.len49 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load248, i32 0, i32 1
  %arr.cycle.data50 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.526, align 8
  br label %loop.header.526

loop.header.526:                                  ; preds = %loop.latch.526, %a.after40
  %counter.load = load i64, ptr %loop.idx.526, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len49
  br i1 %loop.cond, label %loop.body.526, label %loop.exit.nat.526

loop.body.526:                                    ; preds = %loop.header.526
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.526, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data50, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.ent, align 8
  %var.load51 = load ptr, ptr %var.ent, align 8
  %fld.gep = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %var.load51, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %s.read.len52 = load i64, ptr %s.read.len, align 8
  %s.read.len53 = and i64 %s.read.len52, 281474976710655
  %str.tag54 = lshr i64 %s.read.len52, 48
  %str.immortal55 = icmp eq i64 %str.tag54, 0
  br i1 %str.immortal55, label %str_ok57, label %str_gen_check56

loop.exit.nat.526:                                ; preds = %loop.header.526
  br label %loop.exit.526

loop.latch.526:                                   ; preds = %choice.exit63
  %step.val = load i64, ptr %loop.step.526, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.526, align 8
  br label %loop.header.526

loop.exit.526:                                    ; preds = %loop.exit.nat.526
  %var.load95 = load ptr, ptr %var.names, align 8
  %a.load96 = load ptr, ptr %var.names, align 8
  %a.null97 = icmp eq ptr %a.load96, null
  br i1 %a.null97, label %a.create98, label %a.after99

str_gen_check56:                                  ; preds = %loop.body.526
  %arena.cur59 = call ptr @dva_arena_current()
  %tag.valid60 = call i1 @dva_arena_validate_tag(ptr %arena.cur59, i64 %str.tag54)
  br i1 %tag.valid60, label %str_ok57, label %str_stale58

str_ok57:                                         ; preds = %str_stale58, %str_gen_check56, %loop.body.526
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data61 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

str_stale58:                                      ; preds = %str_gen_check56
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok57

idx_big_check:                                    ; preds = %str_ok57
  %idx.big = icmp sge i64 0, %s.read.len53
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data61, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp = icmp ne i64 %s.byte.val, 46
  br i1 %cmptmp, label %choice.then62, label %choice.exit63

idx_oob:                                          ; preds = %idx_big_check, %str_ok57
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then62:                                    ; preds = %idx_ok
  %var.load64 = load ptr, ptr %var.ent, align 8
  %fld.gep65 = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %var.load64, i32 0, i32 0
  %fld.load66 = load ptr, ptr %fld.gep65, align 8
  %a.load67 = load ptr, ptr %var.names, align 8
  %a.null68 = icmp eq ptr %a.load67, null
  br i1 %a.null68, label %a.create69, label %a.after70

choice.exit63:                                    ; preds = %a.store81, %idx_ok
  br label %loop.latch.526

a.create69:                                       ; preds = %choice.then62
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
  store ptr %a.create72, ptr %var.names, align 8
  br label %a.after70

a.after70:                                        ; preds = %a.create69, %choice.then62
  %a.load278 = load ptr, ptr %var.names, align 8
  br label %a.check79

a.check79:                                        ; preds = %a.after70
  %a.len82 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load278, i32 0, i32 0
  %a.len83 = load i64, ptr %a.len82, align 8
  %a.cap84 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load278, i32 0, i32 2
  %a.cap85 = load i64, ptr %a.cap84, align 8
  %a.needs.grow86 = icmp eq i64 %a.len83, %a.cap85
  br i1 %a.needs.grow86, label %a.grow80, label %a.store81

a.grow80:                                         ; preds = %a.check79
  call void @dva_array_grow(ptr %a.load278)
  br label %a.store81

a.store81:                                        ; preds = %a.grow80, %a.check79
  %a.cur.data87 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load278, i32 0, i32 1
  %a.cur.data88 = load ptr, ptr %a.cur.data87, align 8
  %a.cur.len89 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load278, i32 0, i32 0
  %a.cur.len90 = load i64, ptr %a.cur.len89, align 8
  %a.elem.gep91 = getelementptr i64, ptr %a.cur.data88, i64 %a.cur.len90
  %slot.p2i92 = ptrtoint ptr %fld.load66 to i64
  store i64 %slot.p2i92, ptr %a.elem.gep91, align 8
  %a.next.len93 = add i64 %a.cur.len90, 1
  %b.len.gep94 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load278, i32 0, i32 0
  store i64 %a.next.len93, ptr %b.len.gep94, align 8
  br label %choice.exit63

a.create98:                                       ; preds = %loop.exit.526
  %arena.cur100 = call ptr @dva_arena_current()
  %a.create101 = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 24)
  %arena.cur102 = call ptr @dva_arena_current()
  %a.buf103 = call ptr @dva_arena_alloc(ptr %arena.cur102, i64 128)
  %a.len.gep104 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create101, i32 0, i32 0
  store i64 0, ptr %a.len.gep104, align 8
  %a.data.gep105 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create101, i32 0, i32 1
  store ptr %a.buf103, ptr %a.data.gep105, align 8
  %a.cap.gep106 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create101, i32 0, i32 2
  store i64 16, ptr %a.cap.gep106, align 8
  store ptr %a.create101, ptr %var.names, align 8
  br label %a.after99

a.after99:                                        ; preds = %a.create98, %loop.exit.526
  %a.load2107 = load ptr, ptr %var.names, align 8
  call void @"formatter::sort_names"(ptr %a.load2107)
  %var.load108 = load ptr, ptr %var.names, align 8
  %a.load109 = load ptr, ptr %var.names, align 8
  %a.null110 = icmp eq ptr %a.load109, null
  br i1 %a.null110, label %a.create111, label %a.after112

a.create111:                                      ; preds = %a.after99
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
  store ptr %a.create114, ptr %var.names, align 8
  br label %a.after112

a.after112:                                       ; preds = %a.create111, %a.after99
  %a.load2120 = load ptr, ptr %var.names, align 8
  %arr.cycle.len121 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2120, i32 0, i32 0
  %arr.cycle.len122 = load i64, ptr %arr.cycle.len121, align 8
  %arr.cycle.data123 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2120, i32 0, i32 1
  %arr.cycle.data124 = load ptr, ptr %arr.cycle.data123, align 8
  store i64 0, ptr %loop.idx.527, align 8
  br label %loop.header.527

loop.header.527:                                  ; preds = %loop.latch.527, %a.after112
  %counter.load125 = load i64, ptr %loop.idx.527, align 8
  %loop.cond126 = icmp slt i64 %counter.load125, %arr.cycle.len122
  br i1 %loop.cond126, label %loop.body.527, label %loop.exit.nat.527

loop.body.527:                                    ; preds = %loop.header.527
  %loop.rel.i127 = sub i64 %counter.load125, 0
  store i64 1, ptr %loop.step.527, align 8
  %arr.elem.gep128 = getelementptr i64, ptr %arr.cycle.data124, i64 %counter.load125
  %arr.elem.raw129 = load i64, ptr %arr.elem.gep128, align 8
  %slot.i2p130 = inttoptr i64 %arr.elem.raw129 to ptr
  store i64 %loop.rel.i127, ptr %var._i131, align 8
  store ptr %slot.i2p130, ptr %var._132, align 8
  store ptr %slot.i2p130, ptr %var.name, align 8
  %var.load133 = load ptr, ptr %var.target, align 8
  %var.load134 = load ptr, ptr %var.name, align 8
  %call.res135 = call ptr @"fs::join"(ptr %var.load133, ptr %var.load134)
  store ptr %call.res135, ptr %var.sub, align 8
  %var.load136 = load ptr, ptr %var.sub, align 8
  %var.load137 = load ptr, ptr %var.out, align 8
  %a.load138 = load ptr, ptr %var.out, align 8
  %a.null139 = icmp eq ptr %a.load138, null
  br i1 %a.null139, label %a.create140, label %a.after141

loop.exit.nat.527:                                ; preds = %loop.header.527
  br label %loop.exit.527

loop.latch.527:                                   ; preds = %a.after141
  %step.val150 = load i64, ptr %loop.step.527, align 8
  %loop.next151 = add i64 %counter.load125, %step.val150
  store i64 %loop.next151, ptr %loop.idx.527, align 8
  br label %loop.header.527

loop.exit.527:                                    ; preds = %loop.exit.nat.527
  br label %choice.exit27

a.create140:                                      ; preds = %loop.body.527
  %arena.cur142 = call ptr @dva_arena_current()
  %a.create143 = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 24)
  %arena.cur144 = call ptr @dva_arena_current()
  %a.buf145 = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 128)
  %a.len.gep146 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create143, i32 0, i32 0
  store i64 0, ptr %a.len.gep146, align 8
  %a.data.gep147 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create143, i32 0, i32 1
  store ptr %a.buf145, ptr %a.data.gep147, align 8
  %a.cap.gep148 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create143, i32 0, i32 2
  store i64 16, ptr %a.cap.gep148, align 8
  store ptr %a.create143, ptr %var.out, align 8
  br label %a.after141

a.after141:                                       ; preds = %a.create140, %loop.body.527
  %a.load2149 = load ptr, ptr %var.out, align 8
  call void @"formatter::collect_dva_files"(ptr %var.load136, ptr %a.load2149)
  br label %loop.latch.527
}

declare i1 @"fs::is_file"(ptr) #1

declare ptr @"fs::ext"(ptr) #1

declare i1 @"fs::is_dir"(ptr) #1

declare ptr @"fs::read_dir"(ptr) #1

declare ptr @"fs::join"(ptr, ptr) #1

define ptr @"formatter::read_stdin_all"() #1 {
entry:
  %var.n = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.528 = alloca i64, align 8
  %loop.idx.528 = alloca i64, align 8
  %var.chunk = alloca ptr, align 8
  %var.b = alloca ptr, align 8
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
  store ptr %builder.new, ptr %var.b, align 8
  %arena.cur3 = call ptr @dva_arena_current()
  %builder.new4 = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 24)
  %b.data.gep5 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new4, i32 0, i32 1
  %b.len.gep6 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new4, i32 0, i32 0
  %b.cap.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new4, i32 0, i32 2
  %b.buf.len8 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4096, i64 1)
  %sum9 = extractvalue { i64, i1 } %b.buf.len8, 0
  %ovf10 = extractvalue { i64, i1 } %b.buf.len8, 1
  br i1 %ovf10, label %str_overflow_abort12, label %b.buf.len11

str_overflow_abort:                               ; preds = %entry
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

b.buf.len11:                                      ; preds = %str_overflow_abort12, %b.buf.len1
  %arena.cur13 = call ptr @dva_arena_current()
  %b.buf14 = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 %sum9)
  %b.nul015 = getelementptr i8, ptr %b.buf14, i64 0
  store i8 0, ptr %b.nul015, align 1
  store i64 0, ptr %b.len.gep6, align 8
  store ptr %b.buf14, ptr %b.data.gep5, align 8
  store i64 4096, ptr %b.cap.gep7, align 8
  store ptr %builder.new4, ptr %var.chunk, align 8
  store i64 0, ptr %loop.idx.528, align 8
  br label %loop.header.528

str_overflow_abort12:                             ; preds = %b.buf.len1
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len11

loop.header.528:                                  ; preds = %loop.latch.528, %b.buf.len11
  %counter.load = load i64, ptr %loop.idx.528, align 8
  br label %loop.body.528

loop.body.528:                                    ; preds = %loop.header.528
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.528, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load = load ptr, ptr %var.chunk, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load, i32 0, i32 1
  %b.ptr16 = load ptr, ptr %b.ptr, align 8
  %addr.ffi.int = ptrtoint ptr %b.ptr16 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call i64 @read(i32 0, ptr %addr.ffi.clean, i64 4096)
  store i64 %call.res, ptr %var.n, align 8
  %var.load17 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sle i64 %var.load17, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.528:                                ; No predecessors!
  br label %loop.exit.528

loop.latch.528:                                   ; preds = %b.grow_done
  %step.val = load i64, ptr %loop.step.528, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.528, align 8
  br label %loop.header.528

loop.exit.528:                                    ; preds = %choice.then, %loop.exit.nat.528
  %var.load48 = load ptr, ptr %var.b, align 8
  %b.freeze.len49 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load48, i32 0, i32 0
  %b.freeze.len50 = load i64, ptr %b.freeze.len49, align 8
  %b.freeze.data51 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load48, i32 0, i32 1
  %b.freeze.data52 = load ptr, ptr %b.freeze.data51, align 8
  %b.freeze.arena53 = call ptr @dva_arena_current()
  %b.freeze.nc.gep54 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena53, i32 0, i32 1
  %b.freeze.nc55 = load i64, ptr %b.freeze.nc.gep54, align 8
  %b.freeze.has.chunk56 = icmp sgt i64 %b.freeze.nc55, 0
  br i1 %b.freeze.has.chunk56, label %b.freeze.check57, label %b.freeze.done59

choice.then:                                      ; preds = %loop.body.528
  br label %loop.exit.528

choice.exit:                                      ; preds = %loop.body.528
  %var.load18 = load i64, ptr %var.n, align 8
  %b.load = load ptr, ptr %var.chunk, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap19 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load18, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

b.len_big_check:                                  ; preds = %choice.exit
  %b.len.big = icmp sgt i64 %var.load18, %b.cap19
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load18, ptr %b.len.gep20, align 8
  %b.load21 = load ptr, ptr %var.b, align 8
  %var.load22 = load ptr, ptr %var.chunk, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load22, i32 0, i32 0
  %b.freeze.len23 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load22, i32 0, i32 1
  %b.freeze.data24 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.len_oob:                                        ; preds = %b.len_big_check, %choice.exit
  %2 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data24, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data24, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data24, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len23, 1
  %arena.cur25 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data24, i64 %b.freeze.len23, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len23
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.len_ok
  %b.freeze.data26 = phi ptr [ %b.freeze.data24, %b.len_ok ], [ %b.freeze.data24, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur27 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len23, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data26, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load22, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load22, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load22, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  %app.str.len28 = load i64, ptr %app.str.len, align 8
  %app.str.len29 = and i64 %app.str.len28, 281474976710655
  %str.tag = lshr i64 %app.str.len28, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %b.freeze.done
  %arena.cur30 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur30, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.freeze.done
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load21, i32 0, i32 0
  %b.app.cur.len31 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len31, i64 %app.str.len29)
  %sum32 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf33 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf33, label %str_overflow_abort35, label %b.app.new.len34

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

b.app.new.len34:                                  ; preds = %str_overflow_abort35, %str_ok
  %b.cap36 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load21, i32 0, i32 2
  %b.cap37 = load i64, ptr %b.cap36, align 8
  %b.need.grow = icmp slt i64 %b.cap37, %sum32
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort35:                             ; preds = %str_ok
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len34

b.grow2:                                          ; preds = %b.app.new.len34
  %b.cap2 = mul i64 %b.cap37, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum32
  %b.new.cap = select i1 %b.cap.need, i64 %sum32, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load21, i32 0, i32 0
  %b.cur.len238 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load21, i32 0, i32 1
  %b.cur.data239 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum40 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf41 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf41, label %str_overflow_abort43, label %b.new.buf.len242

b.nogrow2:                                        ; preds = %b.app.new.len34
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len242
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  %app.str.data45 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load21, i32 0, i32 1
  %b.app.data46 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data46, i64 %b.app.cur.len31
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data45, i64 %app.str.len29, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data46, i64 %sum32
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep47 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load21, i32 0, i32 0
  store i64 %sum32, ptr %b.len.gep47, align 8
  br label %loop.latch.528

b.new.buf.len242:                                 ; preds = %str_overflow_abort43, %b.grow2
  %arena.cur44 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 %sum40)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data239, i64 %b.cur.len238, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len238
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load21, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load21, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort43:                             ; preds = %b.grow2
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len242

b.freeze.check57:                                 ; preds = %loop.exit.528
  %b.freeze.last.idx60 = sub i64 %b.freeze.nc55, 1
  %b.freeze.chunks.gep61 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena53, i32 0, i32 3
  %b.freeze.chunk.slot62 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep61, i64 0, i64 %b.freeze.last.idx60
  %b.freeze.last.chunk63 = load ptr, ptr %b.freeze.chunk.slot62, align 8
  %b.freeze.off.gep64 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena53, i32 0, i32 2
  %b.freeze.off65 = load i64, ptr %b.freeze.off.gep64, align 8
  %b.freeze.bump66 = getelementptr i8, ptr %b.freeze.last.chunk63, i64 %b.freeze.off65
  %b.freeze.cap.gep67 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena53, i32 0, i32 0
  %b.freeze.cap68 = load i64, ptr %b.freeze.cap.gep67, align 8
  %b.freeze.chunk.end69 = getelementptr i8, ptr %b.freeze.last.chunk63, i64 %b.freeze.cap68
  %b.freeze.ge.chunk70 = icmp uge ptr %b.freeze.data52, %b.freeze.last.chunk63
  %b.freeze.lt.end71 = icmp ult ptr %b.freeze.data52, %b.freeze.chunk.end69
  %b.freeze.in.chunk72 = and i1 %b.freeze.ge.chunk70, %b.freeze.lt.end71
  %b.freeze.ge.bump73 = icmp uge ptr %b.freeze.data52, %b.freeze.bump66
  %b.freeze.reaped74 = and i1 %b.freeze.in.chunk72, %b.freeze.ge.bump73
  br i1 %b.freeze.reaped74, label %b.freeze.copy58, label %b.freeze.done59

b.freeze.copy58:                                  ; preds = %b.freeze.check57
  %b.freeze.alen75 = add i64 %b.freeze.len50, 1
  %arena.cur76 = call ptr @dva_arena_current()
  %b.freeze.fresh77 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 %b.freeze.alen75)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh77, ptr align 1 %b.freeze.data52, i64 %b.freeze.len50, i1 false)
  %b.freeze.nul78 = getelementptr i8, ptr %b.freeze.fresh77, i64 %b.freeze.len50
  store i8 0, ptr %b.freeze.nul78, align 1
  br label %b.freeze.done59

b.freeze.done59:                                  ; preds = %b.freeze.copy58, %b.freeze.check57, %loop.exit.528
  %b.freeze.data79 = phi ptr [ %b.freeze.data52, %loop.exit.528 ], [ %b.freeze.data52, %b.freeze.check57 ], [ %b.freeze.fresh77, %b.freeze.copy58 ]
  %arena.cur80 = call ptr @dva_arena_current()
  %builder.freeze81 = call ptr @dva_arena_alloc(ptr %arena.cur80, i64 16)
  %str.build.len.gep82 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze81, i32 0, i32 0
  store i64 %b.freeze.len50, ptr %str.build.len.gep82, align 8
  %str.build.data.gep83 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze81, i32 0, i32 1
  store ptr %b.freeze.data79, ptr %str.build.data.gep83, align 8
  %b.freeze.rst.len84 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load48, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len84, align 8
  %b.freeze.rst.data85 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load48, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data85, align 8
  %b.freeze.rst.cap86 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load48, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap86, align 8
  ret ptr %builder.freeze81
}

define void @"formatter::write_stdout"(ptr %0) #1 {
entry:
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
  %cmptmp = icmp sgt i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load3 = load ptr, ptr %var.s, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %arg.str.ptr4 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr5 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %arg.str.ptr6 = load i64, ptr %arg.str.ptr5, align 8
  %arg.str.ptr7 = and i64 %arg.str.ptr6, 281474976710655
  %str.tag8 = lshr i64 %arg.str.ptr6, 48
  %str.immortal9 = icmp eq i64 %str.tag8, 0
  br i1 %str.immortal9, label %str_ok11, label %str_gen_check10

choice.exit:                                      ; preds = %str_ok26, %str_ok
  ret void

str_gen_check10:                                  ; preds = %choice.then
  %arena.cur13 = call ptr @dva_arena_current()
  %tag.valid14 = call i1 @dva_arena_validate_tag(ptr %arena.cur13, i64 %str.tag8)
  br i1 %tag.valid14, label %str_ok11, label %str_stale12

str_ok11:                                         ; preds = %str_stale12, %str_gen_check10, %choice.then
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr4, i64 %arg.str.ptr7
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr15, label %nulcopy

str_stale12:                                      ; preds = %str_gen_check10
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok11

arg.str.ptr15:                                    ; preds = %str_ok11
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok11
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr7, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len16

nulmerge:                                         ; preds = %nulcopy.len16, %arg.str.ptr15
  %arg.str.ptr18 = phi ptr [ %arg.str.ptr4, %arg.str.ptr15 ], [ %nulcopy.buf, %nulcopy.len16 ]
  %var.load19 = load ptr, ptr %var.s, align 8
  %str.len.query20 = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 0
  %str.len.query21 = load i64, ptr %str.len.query20, align 8
  %str.len.query22 = and i64 %str.len.query21, 281474976710655
  %str.tag23 = lshr i64 %str.len.query21, 48
  %str.immortal24 = icmp eq i64 %str.tag23, 0
  br i1 %str.immortal24, label %str_ok26, label %str_gen_check25

nulcopy.len16:                                    ; preds = %str_overflow_abort, %nulcopy
  %arena.cur17 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr4, i64 %arg.str.ptr7, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr7
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len16

str_gen_check25:                                  ; preds = %nulmerge
  %arena.cur28 = call ptr @dva_arena_current()
  %tag.valid29 = call i1 @dva_arena_validate_tag(ptr %arena.cur28, i64 %str.tag23)
  br i1 %tag.valid29, label %str_ok26, label %str_stale27

str_ok26:                                         ; preds = %str_stale27, %str_gen_check25, %nulmerge
  %call.res = call i64 @write(i32 1, ptr %arg.str.ptr18, i64 %str.len.query22)
  br label %choice.exit

str_stale27:                                      ; preds = %str_gen_check25
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok26
}

define void @"formatter::print_line"(ptr %0) #1 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
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
  %concat.rhs = load i64, ptr @str.11.struct, align 8
  %concat.rhs5 = and i64 %concat.rhs, 281474976710655
  %str.tag6 = lshr i64 %concat.rhs, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check8:                                   ; preds = %str_ok
  %arena.cur11 = call ptr @dva_arena_current()
  %tag.valid12 = call i1 @dva_arena_validate_tag(ptr %arena.cur11, i64 %str.tag6)
  br i1 %tag.valid12, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %str_ok
  %concat.rhs13 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs2, i64 %concat.rhs5)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len14

str_stale10:                                      ; preds = %str_gen_check8
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

concat.sum.len14:                                 ; preds = %str_overflow_abort, %str_ok9
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum15 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf16 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf16, label %str_overflow_abort18, label %concat.tot.len17

str_overflow_abort:                               ; preds = %str_ok9
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
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
  call void @"formatter::write_stdout"(ptr %concat.str)
  ret void

str_overflow_abort18:                             ; preds = %concat.sum.len14
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len17
}

define void @"formatter::print_fmt_help"() #1 {
entry:
  call void @"formatter::print_line"(ptr @str.12.struct)
  call void @"formatter::print_line"(ptr @str.3.struct)
  call void @"formatter::print_line"(ptr @str.13.struct)
  call void @"formatter::print_line"(ptr @str.14.struct)
  call void @"formatter::print_line"(ptr @str.15.struct)
  call void @"formatter::print_line"(ptr @str.16.struct)
  call void @"formatter::print_line"(ptr @str.17.struct)
  ret void
}

define i64 @"formatter::main"(i64 %0) #1 {
entry:
  %var.err683 = alloca ptr, align 8
  %var._682 = alloca ptr, align 8
  %var.formatted543 = alloca ptr, align 8
  %var._542 = alloca ptr, align 8
  %var.res534 = alloca { i1, i64 }, align 8
  %var.src530 = alloca ptr, align 8
  %var._529 = alloca ptr, align 8
  %var.src_opt = alloca ptr, align 8
  %var._522 = alloca ptr, align 8
  %var._i521 = alloca i64, align 8
  %var.f = alloca ptr, align 8
  %loop.step.532 = alloca i64, align 8
  %loop.idx.532 = alloca i64, align 8
  %"var.unformatted'" = alloca i64, align 8
  %"var.had_err'" = alloca i1, align 1
  %var._376 = alloca ptr, align 8
  %var._i375 = alloca i64, align 8
  %var.t = alloca ptr, align 8
  %loop.step.531 = alloca i64, align 8
  %loop.idx.531 = alloca i64, align 8
  %var.files = alloca ptr, align 8
  %var.err = alloca ptr, align 8
  %var._304 = alloca ptr, align 8
  %var.formatted = alloca ptr, align 8
  %var._259 = alloca ptr, align 8
  %var.res = alloca { i1, i64 }, align 8
  %var.src = alloca ptr, align 8
  %var.arg = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.529 = alloca i64, align 8
  %loop.idx.529 = alloca i64, align 8
  %"var.i'" = alloca i64, align 8
  %var.targets = alloca ptr, align 8
  %"var.from_stdin'" = alloca i1, align 1
  %"var.to_stdout'" = alloca i1, align 1
  %"var.check_only'" = alloca i1, align 1
  %var.start_idx = alloca i64, align 8
  store i64 %0, ptr %var.start_idx, align 8
  store i1 false, ptr %"var.check_only'", align 1
  store i1 false, ptr %"var.to_stdout'", align 1
  store i1 false, ptr %"var.from_stdin'", align 1
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
  store ptr %a.new, ptr %var.targets, align 8
  %var.load = load i64, ptr %var.start_idx, align 8
  store i64 %var.load, ptr %"var.i'", align 8
  store i64 0, ptr %loop.idx.529, align 8
  br label %loop.header.529

loop.header.529:                                  ; preds = %loop.latch.529, %entry
  %counter.load = load i64, ptr %loop.idx.529, align 8
  br label %loop.body.529

loop.body.529:                                    ; preds = %loop.header.529
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.529, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load2 = load i64, ptr %"var.i'", align 8
  %var.load3 = load i64, ptr @sys_argc_global, align 8
  %cmptmp = icmp sge i64 %var.load2, %var.load3
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.529:                                ; No predecessors!
  br label %loop.exit.529

loop.latch.529:                                   ; preds = %choice.exit6
  %step.val = load i64, ptr %loop.step.529, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.529, align 8
  br label %loop.header.529

loop.exit.529:                                    ; preds = %choice.then, %loop.exit.nat.529
  %var.load248 = load i1, ptr %"var.from_stdin'", align 1
  br i1 %var.load248, label %choice.then249, label %choice.else250

choice.then:                                      ; preds = %loop.body.529
  br label %loop.exit.529

choice.exit:                                      ; preds = %loop.body.529
  %var.load4 = load i64, ptr %"var.i'", align 8
  %call.res = call ptr @"sys::argv_string"(i64 %var.load4)
  store ptr %call.res, ptr %var.arg, align 8
  %var.load5 = load ptr, ptr %var.arg, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len7 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len8 = and i64 %eq.lhs.len7, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len7, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit6:                                     ; preds = %choice.exit165, %choice.case110, %choice.case79, %choice.case48, %ret.dead
  %var.load247 = load i64, ptr %"var.i'", align 8
  %addtmp = add i64 %var.load247, 1
  store i64 %addtmp, ptr %"var.i'", align 8
  br label %loop.latch.529

choice.case:                                      ; preds = %str.eq.merge41
  call void @"formatter::print_fmt_help"()
  ret i64 0

choice.next:                                      ; preds = %str.eq.merge41
  %eq.lhs.len50 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len51 = load i64, ptr %eq.lhs.len50, align 8
  %eq.lhs.len52 = and i64 %eq.lhs.len51, 281474976710655
  %str.tag53 = lshr i64 %eq.lhs.len51, 48
  %str.immortal54 = icmp eq i64 %str.tag53, 0
  br i1 %str.immortal54, label %str_ok56, label %str_gen_check55

str_gen_check:                                    ; preds = %choice.exit
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %eq.rhs.len = load i64, ptr @str.18.struct, align 8
  %eq.rhs.len10 = and i64 %eq.rhs.len, 281474976710655
  %str.tag11 = lshr i64 %eq.rhs.len, 48
  %str.immortal12 = icmp eq i64 %str.tag11, 0
  br i1 %str.immortal12, label %str_ok14, label %str_gen_check13

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check13:                                  ; preds = %str_ok
  %arena.cur16 = call ptr @dva_arena_current()
  %tag.valid17 = call i1 @dva_arena_validate_tag(ptr %arena.cur16, i64 %str.tag11)
  br i1 %tag.valid17, label %str_ok14, label %str_stale15

str_ok14:                                         ; preds = %str_stale15, %str_gen_check13, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len8, %eq.rhs.len10
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale15:                                      ; preds = %str_gen_check13
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok14

str.eq.then:                                      ; preds = %str_ok14
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data18 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.18.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data18, ptr %eq.rhs.data, i64 %eq.lhs.len8)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok14
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %eq.lhs.len19 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len20 = load i64, ptr %eq.lhs.len19, align 8
  %eq.lhs.len21 = and i64 %eq.lhs.len20, 281474976710655
  %str.tag22 = lshr i64 %eq.lhs.len20, 48
  %str.immortal23 = icmp eq i64 %str.tag22, 0
  br i1 %str.immortal23, label %str_ok25, label %str_gen_check24

str_gen_check24:                                  ; preds = %str.eq.merge
  %arena.cur27 = call ptr @dva_arena_current()
  %tag.valid28 = call i1 @dva_arena_validate_tag(ptr %arena.cur27, i64 %str.tag22)
  br i1 %tag.valid28, label %str_ok25, label %str_stale26

str_ok25:                                         ; preds = %str_stale26, %str_gen_check24, %str.eq.merge
  %eq.rhs.len29 = load i64, ptr @str.19.struct, align 8
  %eq.rhs.len30 = and i64 %eq.rhs.len29, 281474976710655
  %str.tag31 = lshr i64 %eq.rhs.len29, 48
  %str.immortal32 = icmp eq i64 %str.tag31, 0
  br i1 %str.immortal32, label %str_ok34, label %str_gen_check33

str_stale26:                                      ; preds = %str_gen_check24
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok25

str_gen_check33:                                  ; preds = %str_ok25
  %arena.cur36 = call ptr @dva_arena_current()
  %tag.valid37 = call i1 @dva_arena_validate_tag(ptr %arena.cur36, i64 %str.tag31)
  br i1 %tag.valid37, label %str_ok34, label %str_stale35

str_ok34:                                         ; preds = %str_stale35, %str_gen_check33, %str_ok25
  %eq.len38 = icmp eq i64 %eq.lhs.len21, %eq.rhs.len30
  br i1 %eq.len38, label %str.eq.then39, label %str.eq.else40

str_stale35:                                      ; preds = %str_gen_check33
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok34

str.eq.then39:                                    ; preds = %str_ok34
  %eq.lhs.data42 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data43 = load ptr, ptr %eq.lhs.data42, align 8
  %eq.rhs.data44 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.19.struct, i32 0, i32 1), align 8
  %eq.memcmp45 = call i32 @memcmp(ptr %eq.lhs.data43, ptr %eq.rhs.data44, i64 %eq.lhs.len21)
  %eq.cmp.zero46 = icmp eq i32 %eq.memcmp45, 0
  br label %str.eq.merge41

str.eq.else40:                                    ; preds = %str_ok34
  br label %str.eq.merge41

str.eq.merge41:                                   ; preds = %str.eq.else40, %str.eq.then39
  %str.eq.result47 = phi i1 [ %eq.cmp.zero46, %str.eq.then39 ], [ false, %str.eq.else40 ]
  %case.or = or i1 %str.eq.result, %str.eq.result47
  br i1 %case.or, label %choice.case, label %choice.next

ret.dead:                                         ; No predecessors!
  br label %choice.exit6

choice.case48:                                    ; preds = %str.eq.merge72
  store i1 true, ptr %"var.check_only'", align 1
  br label %choice.exit6

choice.next49:                                    ; preds = %str.eq.merge72
  %eq.lhs.len81 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len82 = load i64, ptr %eq.lhs.len81, align 8
  %eq.lhs.len83 = and i64 %eq.lhs.len82, 281474976710655
  %str.tag84 = lshr i64 %eq.lhs.len82, 48
  %str.immortal85 = icmp eq i64 %str.tag84, 0
  br i1 %str.immortal85, label %str_ok87, label %str_gen_check86

str_gen_check55:                                  ; preds = %choice.next
  %arena.cur58 = call ptr @dva_arena_current()
  %tag.valid59 = call i1 @dva_arena_validate_tag(ptr %arena.cur58, i64 %str.tag53)
  br i1 %tag.valid59, label %str_ok56, label %str_stale57

str_ok56:                                         ; preds = %str_stale57, %str_gen_check55, %choice.next
  %eq.rhs.len60 = load i64, ptr @str.20.struct, align 8
  %eq.rhs.len61 = and i64 %eq.rhs.len60, 281474976710655
  %str.tag62 = lshr i64 %eq.rhs.len60, 48
  %str.immortal63 = icmp eq i64 %str.tag62, 0
  br i1 %str.immortal63, label %str_ok65, label %str_gen_check64

str_stale57:                                      ; preds = %str_gen_check55
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok56

str_gen_check64:                                  ; preds = %str_ok56
  %arena.cur67 = call ptr @dva_arena_current()
  %tag.valid68 = call i1 @dva_arena_validate_tag(ptr %arena.cur67, i64 %str.tag62)
  br i1 %tag.valid68, label %str_ok65, label %str_stale66

str_ok65:                                         ; preds = %str_stale66, %str_gen_check64, %str_ok56
  %eq.len69 = icmp eq i64 %eq.lhs.len52, %eq.rhs.len61
  br i1 %eq.len69, label %str.eq.then70, label %str.eq.else71

str_stale66:                                      ; preds = %str_gen_check64
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok65

str.eq.then70:                                    ; preds = %str_ok65
  %eq.lhs.data73 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data74 = load ptr, ptr %eq.lhs.data73, align 8
  %eq.rhs.data75 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.20.struct, i32 0, i32 1), align 8
  %eq.memcmp76 = call i32 @memcmp(ptr %eq.lhs.data74, ptr %eq.rhs.data75, i64 %eq.lhs.len52)
  %eq.cmp.zero77 = icmp eq i32 %eq.memcmp76, 0
  br label %str.eq.merge72

str.eq.else71:                                    ; preds = %str_ok65
  br label %str.eq.merge72

str.eq.merge72:                                   ; preds = %str.eq.else71, %str.eq.then70
  %str.eq.result78 = phi i1 [ %eq.cmp.zero77, %str.eq.then70 ], [ false, %str.eq.else71 ]
  br i1 %str.eq.result78, label %choice.case48, label %choice.next49

choice.case79:                                    ; preds = %str.eq.merge103
  store i1 true, ptr %"var.to_stdout'", align 1
  br label %choice.exit6

choice.next80:                                    ; preds = %str.eq.merge103
  %eq.lhs.len112 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len113 = load i64, ptr %eq.lhs.len112, align 8
  %eq.lhs.len114 = and i64 %eq.lhs.len113, 281474976710655
  %str.tag115 = lshr i64 %eq.lhs.len113, 48
  %str.immortal116 = icmp eq i64 %str.tag115, 0
  br i1 %str.immortal116, label %str_ok118, label %str_gen_check117

str_gen_check86:                                  ; preds = %choice.next49
  %arena.cur89 = call ptr @dva_arena_current()
  %tag.valid90 = call i1 @dva_arena_validate_tag(ptr %arena.cur89, i64 %str.tag84)
  br i1 %tag.valid90, label %str_ok87, label %str_stale88

str_ok87:                                         ; preds = %str_stale88, %str_gen_check86, %choice.next49
  %eq.rhs.len91 = load i64, ptr @str.21.struct, align 8
  %eq.rhs.len92 = and i64 %eq.rhs.len91, 281474976710655
  %str.tag93 = lshr i64 %eq.rhs.len91, 48
  %str.immortal94 = icmp eq i64 %str.tag93, 0
  br i1 %str.immortal94, label %str_ok96, label %str_gen_check95

str_stale88:                                      ; preds = %str_gen_check86
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok87

str_gen_check95:                                  ; preds = %str_ok87
  %arena.cur98 = call ptr @dva_arena_current()
  %tag.valid99 = call i1 @dva_arena_validate_tag(ptr %arena.cur98, i64 %str.tag93)
  br i1 %tag.valid99, label %str_ok96, label %str_stale97

str_ok96:                                         ; preds = %str_stale97, %str_gen_check95, %str_ok87
  %eq.len100 = icmp eq i64 %eq.lhs.len83, %eq.rhs.len92
  br i1 %eq.len100, label %str.eq.then101, label %str.eq.else102

str_stale97:                                      ; preds = %str_gen_check95
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok96

str.eq.then101:                                   ; preds = %str_ok96
  %eq.lhs.data104 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data105 = load ptr, ptr %eq.lhs.data104, align 8
  %eq.rhs.data106 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.21.struct, i32 0, i32 1), align 8
  %eq.memcmp107 = call i32 @memcmp(ptr %eq.lhs.data105, ptr %eq.rhs.data106, i64 %eq.lhs.len83)
  %eq.cmp.zero108 = icmp eq i32 %eq.memcmp107, 0
  br label %str.eq.merge103

str.eq.else102:                                   ; preds = %str_ok96
  br label %str.eq.merge103

str.eq.merge103:                                  ; preds = %str.eq.else102, %str.eq.then101
  %str.eq.result109 = phi i1 [ %eq.cmp.zero108, %str.eq.then101 ], [ false, %str.eq.else102 ]
  br i1 %str.eq.result109, label %choice.case79, label %choice.next80

choice.case110:                                   ; preds = %str.eq.merge134
  store i1 true, ptr %"var.from_stdin'", align 1
  br label %choice.exit6

choice.next111:                                   ; preds = %str.eq.merge134
  %var.load141 = load ptr, ptr %var.arg, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load141, i32 0, i32 0
  %str.len.query142 = load i64, ptr %str.len.query, align 8
  %str.len.query143 = and i64 %str.len.query142, 281474976710655
  %str.tag144 = lshr i64 %str.len.query142, 48
  %str.immortal145 = icmp eq i64 %str.tag144, 0
  br i1 %str.immortal145, label %str_ok147, label %str_gen_check146

str_gen_check117:                                 ; preds = %choice.next80
  %arena.cur120 = call ptr @dva_arena_current()
  %tag.valid121 = call i1 @dva_arena_validate_tag(ptr %arena.cur120, i64 %str.tag115)
  br i1 %tag.valid121, label %str_ok118, label %str_stale119

str_ok118:                                        ; preds = %str_stale119, %str_gen_check117, %choice.next80
  %eq.rhs.len122 = load i64, ptr @str.22.struct, align 8
  %eq.rhs.len123 = and i64 %eq.rhs.len122, 281474976710655
  %str.tag124 = lshr i64 %eq.rhs.len122, 48
  %str.immortal125 = icmp eq i64 %str.tag124, 0
  br i1 %str.immortal125, label %str_ok127, label %str_gen_check126

str_stale119:                                     ; preds = %str_gen_check117
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok118

str_gen_check126:                                 ; preds = %str_ok118
  %arena.cur129 = call ptr @dva_arena_current()
  %tag.valid130 = call i1 @dva_arena_validate_tag(ptr %arena.cur129, i64 %str.tag124)
  br i1 %tag.valid130, label %str_ok127, label %str_stale128

str_ok127:                                        ; preds = %str_stale128, %str_gen_check126, %str_ok118
  %eq.len131 = icmp eq i64 %eq.lhs.len114, %eq.rhs.len123
  br i1 %eq.len131, label %str.eq.then132, label %str.eq.else133

str_stale128:                                     ; preds = %str_gen_check126
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok127

str.eq.then132:                                   ; preds = %str_ok127
  %eq.lhs.data135 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data136 = load ptr, ptr %eq.lhs.data135, align 8
  %eq.rhs.data137 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.22.struct, i32 0, i32 1), align 8
  %eq.memcmp138 = call i32 @memcmp(ptr %eq.lhs.data136, ptr %eq.rhs.data137, i64 %eq.lhs.len114)
  %eq.cmp.zero139 = icmp eq i32 %eq.memcmp138, 0
  br label %str.eq.merge134

str.eq.else133:                                   ; preds = %str_ok127
  br label %str.eq.merge134

str.eq.merge134:                                  ; preds = %str.eq.else133, %str.eq.then132
  %str.eq.result140 = phi i1 [ %eq.cmp.zero139, %str.eq.then132 ], [ false, %str.eq.else133 ]
  br i1 %str.eq.result140, label %choice.case110, label %choice.next111

str_gen_check146:                                 ; preds = %choice.next111
  %arena.cur149 = call ptr @dva_arena_current()
  %tag.valid150 = call i1 @dva_arena_validate_tag(ptr %arena.cur149, i64 %str.tag144)
  br i1 %tag.valid150, label %str_ok147, label %str_stale148

str_ok147:                                        ; preds = %str_stale148, %str_gen_check146, %choice.next111
  %cmptmp151 = icmp sgt i64 %str.len.query143, 0
  br i1 %cmptmp151, label %and.530.then, label %and.530.else

str_stale148:                                     ; preds = %str_gen_check146
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok147

and.530.then:                                     ; preds = %str_ok147
  %var.load152 = load ptr, ptr %var.arg, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load152, i32 0, i32 0
  %s.read.len153 = load i64, ptr %s.read.len, align 8
  %s.read.len154 = and i64 %s.read.len153, 281474976710655
  %str.tag155 = lshr i64 %s.read.len153, 48
  %str.immortal156 = icmp eq i64 %str.tag155, 0
  br i1 %str.immortal156, label %str_ok158, label %str_gen_check157

and.530.else:                                     ; preds = %str_ok147
  br label %and.530.exit

and.530.exit:                                     ; preds = %and.530.else, %idx_ok
  %and.530.phi = phi i1 [ %cmptmp163, %idx_ok ], [ %cmptmp151, %and.530.else ]
  br i1 %and.530.phi, label %choice.then164, label %choice.else

str_gen_check157:                                 ; preds = %and.530.then
  %arena.cur160 = call ptr @dva_arena_current()
  %tag.valid161 = call i1 @dva_arena_validate_tag(ptr %arena.cur160, i64 %str.tag155)
  br i1 %tag.valid161, label %str_ok158, label %str_stale159

str_ok158:                                        ; preds = %str_stale159, %str_gen_check157, %and.530.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load152, i32 0, i32 1
  %s.read.data162 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

str_stale159:                                     ; preds = %str_gen_check157
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok158

idx_big_check:                                    ; preds = %str_ok158
  %idx.big = icmp sge i64 0, %s.read.len154
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data162, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp163 = icmp eq i64 %s.byte.val, 45
  br label %and.530.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok158
  %13 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then164:                                   ; preds = %and.530.exit
  %var.load166 = load ptr, ptr %var.arg, align 8
  %concat.lhs = load i64, ptr @str.23.struct, align 8
  %concat.lhs167 = and i64 %concat.lhs, 281474976710655
  %str.tag168 = lshr i64 %concat.lhs, 48
  %str.immortal169 = icmp eq i64 %str.tag168, 0
  br i1 %str.immortal169, label %str_ok171, label %str_gen_check170

choice.else:                                      ; preds = %and.530.exit
  %var.load235 = load ptr, ptr %var.arg, align 8
  %a.load = load ptr, ptr %var.targets, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit165:                                   ; preds = %a.store, %ret.dead234
  br label %choice.exit6

str_gen_check170:                                 ; preds = %choice.then164
  %arena.cur173 = call ptr @dva_arena_current()
  %tag.valid174 = call i1 @dva_arena_validate_tag(ptr %arena.cur173, i64 %str.tag168)
  br i1 %tag.valid174, label %str_ok171, label %str_stale172

str_ok171:                                        ; preds = %str_stale172, %str_gen_check170, %choice.then164
  %concat.lhs175 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.23.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load166, i32 0, i32 0
  %concat.rhs176 = load i64, ptr %concat.rhs, align 8
  %concat.rhs177 = and i64 %concat.rhs176, 281474976710655
  %str.tag178 = lshr i64 %concat.rhs176, 48
  %str.immortal179 = icmp eq i64 %str.tag178, 0
  br i1 %str.immortal179, label %str_ok181, label %str_gen_check180

str_stale172:                                     ; preds = %str_gen_check170
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok171

str_gen_check180:                                 ; preds = %str_ok171
  %arena.cur183 = call ptr @dva_arena_current()
  %tag.valid184 = call i1 @dva_arena_validate_tag(ptr %arena.cur183, i64 %str.tag178)
  br i1 %tag.valid184, label %str_ok181, label %str_stale182

str_ok181:                                        ; preds = %str_stale182, %str_gen_check180, %str_ok171
  %concat.rhs185 = getelementptr inbounds { i64, ptr }, ptr %var.load166, i32 0, i32 1
  %concat.rhs186 = load ptr, ptr %concat.rhs185, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs167, i64 %concat.rhs177)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len187

str_stale182:                                     ; preds = %str_gen_check180
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok181

concat.sum.len187:                                ; preds = %str_overflow_abort, %str_ok181
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum188 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf189 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf189, label %str_overflow_abort191, label %concat.tot.len190

str_overflow_abort:                               ; preds = %str_ok181
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len187

concat.tot.len190:                                ; preds = %str_overflow_abort191, %concat.sum.len187
  %arena.cur192 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur192, i64 %sum188)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs175, i64 %concat.lhs167, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs167
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs186, i64 %concat.rhs177, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur193 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur193, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs194 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs195 = load i64, ptr %concat.lhs194, align 8
  %concat.lhs196 = and i64 %concat.lhs195, 281474976710655
  %str.tag197 = lshr i64 %concat.lhs195, 48
  %str.immortal198 = icmp eq i64 %str.tag197, 0
  br i1 %str.immortal198, label %str_ok200, label %str_gen_check199

str_overflow_abort191:                            ; preds = %concat.sum.len187
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len190

str_gen_check199:                                 ; preds = %concat.tot.len190
  %arena.cur202 = call ptr @dva_arena_current()
  %tag.valid203 = call i1 @dva_arena_validate_tag(ptr %arena.cur202, i64 %str.tag197)
  br i1 %tag.valid203, label %str_ok200, label %str_stale201

str_ok200:                                        ; preds = %str_stale201, %str_gen_check199, %concat.tot.len190
  %concat.lhs204 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs205 = load ptr, ptr %concat.lhs204, align 8
  %concat.rhs206 = load i64, ptr @str.24.struct, align 8
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
  %concat.rhs215 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.24.struct, i32 0, i32 1), align 8
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
  call void @"log::error"(ptr %concat.str231)
  ret i64 1

str_overflow_abort225:                            ; preds = %concat.sum.len219
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len224

ret.dead234:                                      ; No predecessors!
  br label %choice.exit165

a.create:                                         ; preds = %choice.else
  %arena.cur236 = call ptr @dva_arena_current()
  %a.create237 = call ptr @dva_arena_alloc(ptr %arena.cur236, i64 24)
  %arena.cur238 = call ptr @dva_arena_current()
  %a.buf239 = call ptr @dva_arena_alloc(ptr %arena.cur238, i64 128)
  %a.len.gep240 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create237, i32 0, i32 0
  store i64 0, ptr %a.len.gep240, align 8
  %a.data.gep241 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create237, i32 0, i32 1
  store ptr %a.buf239, ptr %a.data.gep241, align 8
  %a.cap.gep242 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create237, i32 0, i32 2
  store i64 16, ptr %a.cap.gep242, align 8
  store ptr %a.create237, ptr %var.targets, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.else
  %a.load2 = load ptr, ptr %var.targets, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len243 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap244 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len243, %a.cap244
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data245 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len246 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data245, i64 %a.cur.len246
  %slot.p2i = ptrtoint ptr %var.load235 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len246, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit165

choice.then249:                                   ; preds = %loop.exit.529
  %call.res252 = call ptr @"formatter::read_stdin_all"()
  store ptr %call.res252, ptr %var.src, align 8
  %var.load253 = load ptr, ptr %var.src, align 8
  %call.res254 = call { i1, i64 } @"formatter::format_source"(ptr %var.load253, ptr @str.25.struct)
  store { i1, i64 } %call.res254, ptr %var.res, align 8
  %var.load255 = load { i1, i64 }, ptr %var.res, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load255, 0
  br i1 %ram.tag, label %choice.then256, label %choice.else257

choice.else250:                                   ; preds = %loop.exit.529
  %var.load307 = load ptr, ptr %var.targets, align 8
  %a.load308 = load ptr, ptr %var.targets, align 8
  %a.null309 = icmp eq ptr %a.load308, null
  br i1 %a.null309, label %a.create310, label %a.after311

choice.exit251:                                   ; preds = %choice.exit497, %choice.exit258
  %choice.res776 = phi i64 [ %choice.res306, %choice.exit258 ], [ %choice.res775, %choice.exit497 ]
  ret i64 %choice.res776

choice.then256:                                   ; preds = %choice.then249
  %ram.pay = extractvalue { i1, i64 } %var.load255, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._259, align 8
  store ptr %pay.ptr, ptr %var.formatted, align 8
  %var.load260 = load i1, ptr %"var.check_only'", align 1
  br i1 %var.load260, label %choice.then261, label %choice.else262

choice.else257:                                   ; preds = %choice.then249
  %ram.pay302 = extractvalue { i1, i64 } %var.load255, 1
  %pay.ptr303 = inttoptr i64 %ram.pay302 to ptr
  store ptr %pay.ptr303, ptr %var._304, align 8
  store ptr %pay.ptr303, ptr %var.err, align 8
  %var.load305 = load ptr, ptr %var.err, align 8
  call void @"log::error"(ptr %var.load305)
  br label %choice.exit258

choice.exit258:                                   ; preds = %choice.else257, %choice.exit263
  %choice.res306 = phi i64 [ %choice.res301, %choice.exit263 ], [ 1, %choice.else257 ]
  br label %choice.exit251

choice.then261:                                   ; preds = %choice.then256
  %var.load264 = load ptr, ptr %var.formatted, align 8
  %var.load265 = load ptr, ptr %var.src, align 8
  %eq.lhs.len266 = getelementptr inbounds { i64, ptr }, ptr %var.load264, i32 0, i32 0
  %eq.lhs.len267 = load i64, ptr %eq.lhs.len266, align 8
  %eq.lhs.len268 = and i64 %eq.lhs.len267, 281474976710655
  %str.tag269 = lshr i64 %eq.lhs.len267, 48
  %str.immortal270 = icmp eq i64 %str.tag269, 0
  br i1 %str.immortal270, label %str_ok272, label %str_gen_check271

choice.else262:                                   ; preds = %choice.then256
  %var.load300 = load ptr, ptr %var.formatted, align 8
  call void @"formatter::write_stdout"(ptr %var.load300)
  br label %choice.exit263

choice.exit263:                                   ; preds = %choice.else262, %choice.exit299
  %choice.res301 = phi i64 [ %choice.res, %choice.exit299 ], [ 0, %choice.else262 ]
  br label %choice.exit258

str_gen_check271:                                 ; preds = %choice.then261
  %arena.cur274 = call ptr @dva_arena_current()
  %tag.valid275 = call i1 @dva_arena_validate_tag(ptr %arena.cur274, i64 %str.tag269)
  br i1 %tag.valid275, label %str_ok272, label %str_stale273

str_ok272:                                        ; preds = %str_stale273, %str_gen_check271, %choice.then261
  %eq.rhs.len276 = getelementptr inbounds { i64, ptr }, ptr %var.load265, i32 0, i32 0
  %eq.rhs.len277 = load i64, ptr %eq.rhs.len276, align 8
  %eq.rhs.len278 = and i64 %eq.rhs.len277, 281474976710655
  %str.tag279 = lshr i64 %eq.rhs.len277, 48
  %str.immortal280 = icmp eq i64 %str.tag279, 0
  br i1 %str.immortal280, label %str_ok282, label %str_gen_check281

str_stale273:                                     ; preds = %str_gen_check271
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok272

str_gen_check281:                                 ; preds = %str_ok272
  %arena.cur284 = call ptr @dva_arena_current()
  %tag.valid285 = call i1 @dva_arena_validate_tag(ptr %arena.cur284, i64 %str.tag279)
  br i1 %tag.valid285, label %str_ok282, label %str_stale283

str_ok282:                                        ; preds = %str_stale283, %str_gen_check281, %str_ok272
  %eq.len286 = icmp eq i64 %eq.lhs.len268, %eq.rhs.len278
  br i1 %eq.len286, label %str.eq.then287, label %str.eq.else288

str_stale283:                                     ; preds = %str_gen_check281
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok282

str.eq.then287:                                   ; preds = %str_ok282
  %eq.lhs.data290 = getelementptr inbounds { i64, ptr }, ptr %var.load264, i32 0, i32 1
  %eq.lhs.data291 = load ptr, ptr %eq.lhs.data290, align 8
  %eq.rhs.data292 = getelementptr inbounds { i64, ptr }, ptr %var.load265, i32 0, i32 1
  %eq.rhs.data293 = load ptr, ptr %eq.rhs.data292, align 8
  %eq.memcmp294 = call i32 @memcmp(ptr %eq.lhs.data291, ptr %eq.rhs.data293, i64 %eq.lhs.len268)
  %eq.cmp.zero295 = icmp eq i32 %eq.memcmp294, 0
  br label %str.eq.merge289

str.eq.else288:                                   ; preds = %str_ok282
  br label %str.eq.merge289

str.eq.merge289:                                  ; preds = %str.eq.else288, %str.eq.then287
  %str.eq.result296 = phi i1 [ %eq.cmp.zero295, %str.eq.then287 ], [ false, %str.eq.else288 ]
  br i1 %str.eq.result296, label %choice.then297, label %choice.else298

choice.then297:                                   ; preds = %str.eq.merge289
  br label %choice.exit299

choice.else298:                                   ; preds = %str.eq.merge289
  br label %choice.exit299

choice.exit299:                                   ; preds = %choice.else298, %choice.then297
  %choice.res = phi i64 [ 0, %choice.then297 ], [ 1, %choice.else298 ]
  br label %choice.exit263

a.create310:                                      ; preds = %choice.else250
  %arena.cur312 = call ptr @dva_arena_current()
  %a.create313 = call ptr @dva_arena_alloc(ptr %arena.cur312, i64 24)
  %arena.cur314 = call ptr @dva_arena_current()
  %a.buf315 = call ptr @dva_arena_alloc(ptr %arena.cur314, i64 128)
  %a.len.gep316 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create313, i32 0, i32 0
  store i64 0, ptr %a.len.gep316, align 8
  %a.data.gep317 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create313, i32 0, i32 1
  store ptr %a.buf315, ptr %a.data.gep317, align 8
  %a.cap.gep318 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create313, i32 0, i32 2
  store i64 16, ptr %a.cap.gep318, align 8
  store ptr %a.create313, ptr %var.targets, align 8
  br label %a.after311

a.after311:                                       ; preds = %a.create310, %choice.else250
  %a.load2319 = load ptr, ptr %var.targets, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2319, i32 0, i32 0
  %a.len.query320 = load i64, ptr %a.len.query, align 8
  %cmptmp321 = icmp eq i64 %a.len.query320, 0
  br i1 %cmptmp321, label %choice.then322, label %choice.exit323

choice.then322:                                   ; preds = %a.after311
  %a.load324 = load ptr, ptr %var.targets, align 8
  %a.null325 = icmp eq ptr %a.load324, null
  br i1 %a.null325, label %a.create326, label %a.after327

choice.exit323:                                   ; preds = %a.store338, %a.after311
  %arena.cur351 = call ptr @dva_arena_current()
  %a.new352 = call ptr @dva_arena_alloc(ptr %arena.cur351, i64 24)
  %arena.cur353 = call ptr @dva_arena_current()
  %a.buf354 = call ptr @dva_arena_alloc(ptr %arena.cur353, i64 128)
  %a.len.gep355 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new352, i32 0, i32 0
  store i64 0, ptr %a.len.gep355, align 8
  %a.data.gep356 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new352, i32 0, i32 1
  store ptr %a.buf354, ptr %a.data.gep356, align 8
  %a.cap.gep357 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new352, i32 0, i32 2
  store i64 16, ptr %a.cap.gep357, align 8
  store ptr %a.new352, ptr %var.files, align 8
  %var.load358 = load ptr, ptr %var.targets, align 8
  %a.load359 = load ptr, ptr %var.targets, align 8
  %a.null360 = icmp eq ptr %a.load359, null
  br i1 %a.null360, label %a.create361, label %a.after362

a.create326:                                      ; preds = %choice.then322
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
  store ptr %a.create329, ptr %var.targets, align 8
  br label %a.after327

a.after327:                                       ; preds = %a.create326, %choice.then322
  %a.load2335 = load ptr, ptr %var.targets, align 8
  br label %a.check336

a.check336:                                       ; preds = %a.after327
  %a.len339 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2335, i32 0, i32 0
  %a.len340 = load i64, ptr %a.len339, align 8
  %a.cap341 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2335, i32 0, i32 2
  %a.cap342 = load i64, ptr %a.cap341, align 8
  %a.needs.grow343 = icmp eq i64 %a.len340, %a.cap342
  br i1 %a.needs.grow343, label %a.grow337, label %a.store338

a.grow337:                                        ; preds = %a.check336
  call void @dva_array_grow(ptr %a.load2335)
  br label %a.store338

a.store338:                                       ; preds = %a.grow337, %a.check336
  %a.cur.data344 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2335, i32 0, i32 1
  %a.cur.data345 = load ptr, ptr %a.cur.data344, align 8
  %a.cur.len346 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2335, i32 0, i32 0
  %a.cur.len347 = load i64, ptr %a.cur.len346, align 8
  %a.elem.gep348 = getelementptr i64, ptr %a.cur.data345, i64 %a.cur.len347
  store i64 ptrtoint (ptr @str.26.struct to i64), ptr %a.elem.gep348, align 8
  %a.next.len349 = add i64 %a.cur.len347, 1
  %b.len.gep350 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2335, i32 0, i32 0
  store i64 %a.next.len349, ptr %b.len.gep350, align 8
  br label %choice.exit323

a.create361:                                      ; preds = %choice.exit323
  %arena.cur363 = call ptr @dva_arena_current()
  %a.create364 = call ptr @dva_arena_alloc(ptr %arena.cur363, i64 24)
  %arena.cur365 = call ptr @dva_arena_current()
  %a.buf366 = call ptr @dva_arena_alloc(ptr %arena.cur365, i64 128)
  %a.len.gep367 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create364, i32 0, i32 0
  store i64 0, ptr %a.len.gep367, align 8
  %a.data.gep368 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create364, i32 0, i32 1
  store ptr %a.buf366, ptr %a.data.gep368, align 8
  %a.cap.gep369 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create364, i32 0, i32 2
  store i64 16, ptr %a.cap.gep369, align 8
  store ptr %a.create364, ptr %var.targets, align 8
  br label %a.after362

a.after362:                                       ; preds = %a.create361, %choice.exit323
  %a.load2370 = load ptr, ptr %var.targets, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2370, i32 0, i32 0
  %arr.cycle.len371 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2370, i32 0, i32 1
  %arr.cycle.data372 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.531, align 8
  br label %loop.header.531

loop.header.531:                                  ; preds = %loop.latch.531, %a.after362
  %counter.load373 = load i64, ptr %loop.idx.531, align 8
  %loop.cond = icmp slt i64 %counter.load373, %arr.cycle.len371
  br i1 %loop.cond, label %loop.body.531, label %loop.exit.nat.531

loop.body.531:                                    ; preds = %loop.header.531
  %loop.rel.i374 = sub i64 %counter.load373, 0
  store i64 1, ptr %loop.step.531, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data372, i64 %counter.load373
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i374, ptr %var._i375, align 8
  store ptr %slot.i2p, ptr %var._376, align 8
  store ptr %slot.i2p, ptr %var.t, align 8
  %var.load377 = load ptr, ptr %var.t, align 8
  %call.res378 = call i1 @"fs::exists"(ptr %var.load377)
  %nottmp = xor i1 %call.res378, true
  br i1 %nottmp, label %choice.then379, label %choice.exit380

loop.exit.nat.531:                                ; preds = %loop.header.531
  br label %loop.exit.531

loop.latch.531:                                   ; preds = %a.after468
  %step.val477 = load i64, ptr %loop.step.531, align 8
  %loop.next478 = add i64 %counter.load373, %step.val477
  store i64 %loop.next478, ptr %loop.idx.531, align 8
  br label %loop.header.531

loop.exit.531:                                    ; preds = %loop.exit.nat.531
  %var.load479 = load ptr, ptr %var.files, align 8
  %a.load480 = load ptr, ptr %var.files, align 8
  %a.null481 = icmp eq ptr %a.load480, null
  br i1 %a.null481, label %a.create482, label %a.after483

choice.then379:                                   ; preds = %loop.body.531
  %var.load381 = load ptr, ptr %var.t, align 8
  %concat.lhs382 = load i64, ptr @str.27.struct, align 8
  %concat.lhs383 = and i64 %concat.lhs382, 281474976710655
  %str.tag384 = lshr i64 %concat.lhs382, 48
  %str.immortal385 = icmp eq i64 %str.tag384, 0
  br i1 %str.immortal385, label %str_ok387, label %str_gen_check386

choice.exit380:                                   ; preds = %ret.dead462, %loop.body.531
  %var.load463 = load ptr, ptr %var.t, align 8
  %var.load464 = load ptr, ptr %var.files, align 8
  %a.load465 = load ptr, ptr %var.files, align 8
  %a.null466 = icmp eq ptr %a.load465, null
  br i1 %a.null466, label %a.create467, label %a.after468

str_gen_check386:                                 ; preds = %choice.then379
  %arena.cur389 = call ptr @dva_arena_current()
  %tag.valid390 = call i1 @dva_arena_validate_tag(ptr %arena.cur389, i64 %str.tag384)
  br i1 %tag.valid390, label %str_ok387, label %str_stale388

str_ok387:                                        ; preds = %str_stale388, %str_gen_check386, %choice.then379
  %concat.lhs391 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.27.struct, i32 0, i32 1), align 8
  %concat.rhs392 = getelementptr inbounds { i64, ptr }, ptr %var.load381, i32 0, i32 0
  %concat.rhs393 = load i64, ptr %concat.rhs392, align 8
  %concat.rhs394 = and i64 %concat.rhs393, 281474976710655
  %str.tag395 = lshr i64 %concat.rhs393, 48
  %str.immortal396 = icmp eq i64 %str.tag395, 0
  br i1 %str.immortal396, label %str_ok398, label %str_gen_check397

str_stale388:                                     ; preds = %str_gen_check386
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok387

str_gen_check397:                                 ; preds = %str_ok387
  %arena.cur400 = call ptr @dva_arena_current()
  %tag.valid401 = call i1 @dva_arena_validate_tag(ptr %arena.cur400, i64 %str.tag395)
  br i1 %tag.valid401, label %str_ok398, label %str_stale399

str_ok398:                                        ; preds = %str_stale399, %str_gen_check397, %str_ok387
  %concat.rhs402 = getelementptr inbounds { i64, ptr }, ptr %var.load381, i32 0, i32 1
  %concat.rhs403 = load ptr, ptr %concat.rhs402, align 8
  %concat.sum.len404 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs383, i64 %concat.rhs394)
  %sum405 = extractvalue { i64, i1 } %concat.sum.len404, 0
  %ovf406 = extractvalue { i64, i1 } %concat.sum.len404, 1
  br i1 %ovf406, label %str_overflow_abort408, label %concat.sum.len407

str_stale399:                                     ; preds = %str_gen_check397
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok398

concat.sum.len407:                                ; preds = %str_overflow_abort408, %str_ok398
  %concat.tot.len409 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum405, i64 1)
  %sum410 = extractvalue { i64, i1 } %concat.tot.len409, 0
  %ovf411 = extractvalue { i64, i1 } %concat.tot.len409, 1
  br i1 %ovf411, label %str_overflow_abort413, label %concat.tot.len412

str_overflow_abort408:                            ; preds = %str_ok398
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len407

concat.tot.len412:                                ; preds = %str_overflow_abort413, %concat.sum.len407
  %arena.cur414 = call ptr @dva_arena_current()
  %concat.buf415 = call ptr @dva_arena_alloc(ptr %arena.cur414, i64 %sum410)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf415, ptr align 1 %concat.lhs391, i64 %concat.lhs383, i1 false)
  %concat.mid416 = getelementptr i8, ptr %concat.buf415, i64 %concat.lhs383
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid416, ptr align 1 %concat.rhs403, i64 %concat.rhs394, i1 false)
  %concat.nul417 = getelementptr i8, ptr %concat.buf415, i64 %sum405
  store i8 0, ptr %concat.nul417, align 1
  %arena.cur418 = call ptr @dva_arena_current()
  %concat.str419 = call ptr @dva_arena_alloc(ptr %arena.cur418, i64 16)
  %str.build.len.gep420 = getelementptr inbounds { i64, ptr }, ptr %concat.str419, i32 0, i32 0
  store i64 %sum405, ptr %str.build.len.gep420, align 8
  %str.build.data.gep421 = getelementptr inbounds { i64, ptr }, ptr %concat.str419, i32 0, i32 1
  store ptr %concat.buf415, ptr %str.build.data.gep421, align 8
  %concat.lhs422 = getelementptr inbounds { i64, ptr }, ptr %concat.str419, i32 0, i32 0
  %concat.lhs423 = load i64, ptr %concat.lhs422, align 8
  %concat.lhs424 = and i64 %concat.lhs423, 281474976710655
  %str.tag425 = lshr i64 %concat.lhs423, 48
  %str.immortal426 = icmp eq i64 %str.tag425, 0
  br i1 %str.immortal426, label %str_ok428, label %str_gen_check427

str_overflow_abort413:                            ; preds = %concat.sum.len407
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len412

str_gen_check427:                                 ; preds = %concat.tot.len412
  %arena.cur430 = call ptr @dva_arena_current()
  %tag.valid431 = call i1 @dva_arena_validate_tag(ptr %arena.cur430, i64 %str.tag425)
  br i1 %tag.valid431, label %str_ok428, label %str_stale429

str_ok428:                                        ; preds = %str_stale429, %str_gen_check427, %concat.tot.len412
  %concat.lhs432 = getelementptr inbounds { i64, ptr }, ptr %concat.str419, i32 0, i32 1
  %concat.lhs433 = load ptr, ptr %concat.lhs432, align 8
  %concat.rhs434 = load i64, ptr @str.28.struct, align 8
  %concat.rhs435 = and i64 %concat.rhs434, 281474976710655
  %str.tag436 = lshr i64 %concat.rhs434, 48
  %str.immortal437 = icmp eq i64 %str.tag436, 0
  br i1 %str.immortal437, label %str_ok439, label %str_gen_check438

str_stale429:                                     ; preds = %str_gen_check427
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok428

str_gen_check438:                                 ; preds = %str_ok428
  %arena.cur441 = call ptr @dva_arena_current()
  %tag.valid442 = call i1 @dva_arena_validate_tag(ptr %arena.cur441, i64 %str.tag436)
  br i1 %tag.valid442, label %str_ok439, label %str_stale440

str_ok439:                                        ; preds = %str_stale440, %str_gen_check438, %str_ok428
  %concat.rhs443 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.28.struct, i32 0, i32 1), align 8
  %concat.sum.len444 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs424, i64 %concat.rhs435)
  %sum445 = extractvalue { i64, i1 } %concat.sum.len444, 0
  %ovf446 = extractvalue { i64, i1 } %concat.sum.len444, 1
  br i1 %ovf446, label %str_overflow_abort448, label %concat.sum.len447

str_stale440:                                     ; preds = %str_gen_check438
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok439

concat.sum.len447:                                ; preds = %str_overflow_abort448, %str_ok439
  %concat.tot.len449 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum445, i64 1)
  %sum450 = extractvalue { i64, i1 } %concat.tot.len449, 0
  %ovf451 = extractvalue { i64, i1 } %concat.tot.len449, 1
  br i1 %ovf451, label %str_overflow_abort453, label %concat.tot.len452

str_overflow_abort448:                            ; preds = %str_ok439
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len447

concat.tot.len452:                                ; preds = %str_overflow_abort453, %concat.sum.len447
  %arena.cur454 = call ptr @dva_arena_current()
  %concat.buf455 = call ptr @dva_arena_alloc(ptr %arena.cur454, i64 %sum450)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf455, ptr align 1 %concat.lhs433, i64 %concat.lhs424, i1 false)
  %concat.mid456 = getelementptr i8, ptr %concat.buf455, i64 %concat.lhs424
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid456, ptr align 1 %concat.rhs443, i64 %concat.rhs435, i1 false)
  %concat.nul457 = getelementptr i8, ptr %concat.buf455, i64 %sum445
  store i8 0, ptr %concat.nul457, align 1
  %arena.cur458 = call ptr @dva_arena_current()
  %concat.str459 = call ptr @dva_arena_alloc(ptr %arena.cur458, i64 16)
  %str.build.len.gep460 = getelementptr inbounds { i64, ptr }, ptr %concat.str459, i32 0, i32 0
  store i64 %sum445, ptr %str.build.len.gep460, align 8
  %str.build.data.gep461 = getelementptr inbounds { i64, ptr }, ptr %concat.str459, i32 0, i32 1
  store ptr %concat.buf455, ptr %str.build.data.gep461, align 8
  call void @"log::error"(ptr %concat.str459)
  ret i64 1

str_overflow_abort453:                            ; preds = %concat.sum.len447
  %31 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len452

ret.dead462:                                      ; No predecessors!
  br label %choice.exit380

a.create467:                                      ; preds = %choice.exit380
  %arena.cur469 = call ptr @dva_arena_current()
  %a.create470 = call ptr @dva_arena_alloc(ptr %arena.cur469, i64 24)
  %arena.cur471 = call ptr @dva_arena_current()
  %a.buf472 = call ptr @dva_arena_alloc(ptr %arena.cur471, i64 128)
  %a.len.gep473 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create470, i32 0, i32 0
  store i64 0, ptr %a.len.gep473, align 8
  %a.data.gep474 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create470, i32 0, i32 1
  store ptr %a.buf472, ptr %a.data.gep474, align 8
  %a.cap.gep475 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create470, i32 0, i32 2
  store i64 16, ptr %a.cap.gep475, align 8
  store ptr %a.create470, ptr %var.files, align 8
  br label %a.after468

a.after468:                                       ; preds = %a.create467, %choice.exit380
  %a.load2476 = load ptr, ptr %var.files, align 8
  call void @"formatter::collect_dva_files"(ptr %var.load463, ptr %a.load2476)
  br label %loop.latch.531

a.create482:                                      ; preds = %loop.exit.531
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
  store ptr %a.create485, ptr %var.files, align 8
  br label %a.after483

a.after483:                                       ; preds = %a.create482, %loop.exit.531
  %a.load2491 = load ptr, ptr %var.files, align 8
  %a.len.query492 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2491, i32 0, i32 0
  %a.len.query493 = load i64, ptr %a.len.query492, align 8
  %cmptmp494 = icmp eq i64 %a.len.query493, 0
  br i1 %cmptmp494, label %choice.then495, label %choice.else496

choice.then495:                                   ; preds = %a.after483
  call void @"log::error"(ptr @str.29.struct)
  br label %choice.exit497

choice.else496:                                   ; preds = %a.after483
  store i1 false, ptr %"var.had_err'", align 1
  store i64 0, ptr %"var.unformatted'", align 8
  %var.load498 = load ptr, ptr %var.files, align 8
  %a.load499 = load ptr, ptr %var.files, align 8
  %a.null500 = icmp eq ptr %a.load499, null
  br i1 %a.null500, label %a.create501, label %a.after502

choice.exit497:                                   ; preds = %choice.exit773, %choice.then495
  %choice.res775 = phi i64 [ 1, %choice.then495 ], [ %choice.res774, %choice.exit773 ]
  br label %choice.exit251

a.create501:                                      ; preds = %choice.else496
  %arena.cur503 = call ptr @dva_arena_current()
  %a.create504 = call ptr @dva_arena_alloc(ptr %arena.cur503, i64 24)
  %arena.cur505 = call ptr @dva_arena_current()
  %a.buf506 = call ptr @dva_arena_alloc(ptr %arena.cur505, i64 128)
  %a.len.gep507 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create504, i32 0, i32 0
  store i64 0, ptr %a.len.gep507, align 8
  %a.data.gep508 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create504, i32 0, i32 1
  store ptr %a.buf506, ptr %a.data.gep508, align 8
  %a.cap.gep509 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create504, i32 0, i32 2
  store i64 16, ptr %a.cap.gep509, align 8
  store ptr %a.create504, ptr %var.files, align 8
  br label %a.after502

a.after502:                                       ; preds = %a.create501, %choice.else496
  %a.load2510 = load ptr, ptr %var.files, align 8
  %arr.cycle.len511 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2510, i32 0, i32 0
  %arr.cycle.len512 = load i64, ptr %arr.cycle.len511, align 8
  %arr.cycle.data513 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2510, i32 0, i32 1
  %arr.cycle.data514 = load ptr, ptr %arr.cycle.data513, align 8
  store i64 0, ptr %loop.idx.532, align 8
  br label %loop.header.532

loop.header.532:                                  ; preds = %loop.latch.532, %a.after502
  %counter.load515 = load i64, ptr %loop.idx.532, align 8
  %loop.cond516 = icmp slt i64 %counter.load515, %arr.cycle.len512
  br i1 %loop.cond516, label %loop.body.532, label %loop.exit.nat.532

loop.body.532:                                    ; preds = %loop.header.532
  %loop.rel.i517 = sub i64 %counter.load515, 0
  store i64 1, ptr %loop.step.532, align 8
  %arr.elem.gep518 = getelementptr i64, ptr %arr.cycle.data514, i64 %counter.load515
  %arr.elem.raw519 = load i64, ptr %arr.elem.gep518, align 8
  %slot.i2p520 = inttoptr i64 %arr.elem.raw519 to ptr
  store i64 %loop.rel.i517, ptr %var._i521, align 8
  store ptr %slot.i2p520, ptr %var._522, align 8
  store ptr %slot.i2p520, ptr %var.f, align 8
  %var.load523 = load ptr, ptr %var.f, align 8
  %call.res524 = call ptr @"fs::read_to_string"(ptr %var.load523)
  store ptr %call.res524, ptr %var.src_opt, align 8
  %var.load525 = load ptr, ptr %var.src_opt, align 8
  %niche.ne.null = icmp ne ptr %var.load525, null
  br i1 %niche.ne.null, label %choice.then526, label %choice.else527

loop.exit.nat.532:                                ; preds = %loop.header.532
  br label %loop.exit.532

loop.latch.532:                                   ; preds = %choice.exit528
  %step.val766 = load i64, ptr %loop.step.532, align 8
  %loop.next767 = add i64 %counter.load515, %step.val766
  store i64 %loop.next767, ptr %loop.idx.532, align 8
  br label %loop.header.532

loop.exit.532:                                    ; preds = %loop.exit.nat.532
  %var.load768 = load i1, ptr %"var.had_err'", align 1
  br i1 %var.load768, label %or.533.then, label %or.533.else

choice.then526:                                   ; preds = %loop.body.532
  store ptr %var.load525, ptr %var._529, align 8
  store ptr %var.load525, ptr %var.src530, align 8
  %var.load531 = load ptr, ptr %var.src530, align 8
  %var.load532 = load ptr, ptr %var.f, align 8
  %call.res533 = call { i1, i64 } @"formatter::format_source"(ptr %var.load531, ptr %var.load532)
  store { i1, i64 } %call.res533, ptr %var.res534, align 8
  %var.load535 = load { i1, i64 }, ptr %var.res534, align 8
  %ram.tag536 = extractvalue { i1, i64 } %var.load535, 0
  br i1 %ram.tag536, label %choice.then537, label %choice.else538

choice.else527:                                   ; preds = %loop.body.532
  %var.load685 = load ptr, ptr %var.f, align 8
  %concat.lhs686 = load i64, ptr @str.31.struct, align 8
  %concat.lhs687 = and i64 %concat.lhs686, 281474976710655
  %str.tag688 = lshr i64 %concat.lhs686, 48
  %str.immortal689 = icmp eq i64 %str.tag688, 0
  br i1 %str.immortal689, label %str_ok691, label %str_gen_check690

choice.exit528:                                   ; preds = %concat.tot.len756, %choice.exit539
  br label %loop.latch.532

choice.then537:                                   ; preds = %choice.then526
  %ram.pay540 = extractvalue { i1, i64 } %var.load535, 1
  %pay.ptr541 = inttoptr i64 %ram.pay540 to ptr
  store ptr %pay.ptr541, ptr %var._542, align 8
  store ptr %pay.ptr541, ptr %var.formatted543, align 8
  %var.load544 = load i1, ptr %"var.to_stdout'", align 1
  br i1 %var.load544, label %choice.then545, label %choice.else546

choice.else538:                                   ; preds = %choice.then526
  %ram.pay680 = extractvalue { i1, i64 } %var.load535, 1
  %pay.ptr681 = inttoptr i64 %ram.pay680 to ptr
  store ptr %pay.ptr681, ptr %var._682, align 8
  store ptr %pay.ptr681, ptr %var.err683, align 8
  %var.load684 = load ptr, ptr %var.err683, align 8
  call void @"log::error"(ptr %var.load684)
  store i1 true, ptr %"var.had_err'", align 1
  br label %choice.exit539

choice.exit539:                                   ; preds = %choice.else538, %choice.exit547
  br label %choice.exit528

choice.then545:                                   ; preds = %choice.then537
  %var.load548 = load ptr, ptr %var.formatted543, align 8
  call void @"formatter::write_stdout"(ptr %var.load548)
  br label %choice.exit547

choice.else546:                                   ; preds = %choice.then537
  %var.load549 = load ptr, ptr %var.formatted543, align 8
  %var.load550 = load ptr, ptr %var.src530, align 8
  %eq.lhs.len551 = getelementptr inbounds { i64, ptr }, ptr %var.load549, i32 0, i32 0
  %eq.lhs.len552 = load i64, ptr %eq.lhs.len551, align 8
  %eq.lhs.len553 = and i64 %eq.lhs.len552, 281474976710655
  %str.tag554 = lshr i64 %eq.lhs.len552, 48
  %str.immortal555 = icmp eq i64 %str.tag554, 0
  br i1 %str.immortal555, label %str_ok557, label %str_gen_check556

choice.exit547:                                   ; preds = %choice.exit583, %choice.then545
  br label %choice.exit539

str_gen_check556:                                 ; preds = %choice.else546
  %arena.cur559 = call ptr @dva_arena_current()
  %tag.valid560 = call i1 @dva_arena_validate_tag(ptr %arena.cur559, i64 %str.tag554)
  br i1 %tag.valid560, label %str_ok557, label %str_stale558

str_ok557:                                        ; preds = %str_stale558, %str_gen_check556, %choice.else546
  %eq.rhs.len561 = getelementptr inbounds { i64, ptr }, ptr %var.load550, i32 0, i32 0
  %eq.rhs.len562 = load i64, ptr %eq.rhs.len561, align 8
  %eq.rhs.len563 = and i64 %eq.rhs.len562, 281474976710655
  %str.tag564 = lshr i64 %eq.rhs.len562, 48
  %str.immortal565 = icmp eq i64 %str.tag564, 0
  br i1 %str.immortal565, label %str_ok567, label %str_gen_check566

str_stale558:                                     ; preds = %str_gen_check556
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok557

str_gen_check566:                                 ; preds = %str_ok557
  %arena.cur569 = call ptr @dva_arena_current()
  %tag.valid570 = call i1 @dva_arena_validate_tag(ptr %arena.cur569, i64 %str.tag564)
  br i1 %tag.valid570, label %str_ok567, label %str_stale568

str_ok567:                                        ; preds = %str_stale568, %str_gen_check566, %str_ok557
  %eq.len571 = icmp eq i64 %eq.lhs.len553, %eq.rhs.len563
  br i1 %eq.len571, label %str.eq.then572, label %str.eq.else573

str_stale568:                                     ; preds = %str_gen_check566
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok567

str.eq.then572:                                   ; preds = %str_ok567
  %eq.lhs.data575 = getelementptr inbounds { i64, ptr }, ptr %var.load549, i32 0, i32 1
  %eq.lhs.data576 = load ptr, ptr %eq.lhs.data575, align 8
  %eq.rhs.data577 = getelementptr inbounds { i64, ptr }, ptr %var.load550, i32 0, i32 1
  %eq.rhs.data578 = load ptr, ptr %eq.rhs.data577, align 8
  %eq.memcmp579 = call i32 @memcmp(ptr %eq.lhs.data576, ptr %eq.rhs.data578, i64 %eq.lhs.len553)
  %eq.cmp.zero580 = icmp eq i32 %eq.memcmp579, 0
  br label %str.eq.merge574

str.eq.else573:                                   ; preds = %str_ok567
  br label %str.eq.merge574

str.eq.merge574:                                  ; preds = %str.eq.else573, %str.eq.then572
  %str.eq.result581 = phi i1 [ %eq.cmp.zero580, %str.eq.then572 ], [ false, %str.eq.else573 ]
  %str.neq = xor i1 %str.eq.result581, true
  br i1 %str.neq, label %choice.then582, label %choice.exit583

choice.then582:                                   ; preds = %str.eq.merge574
  %var.load584 = load i1, ptr %"var.check_only'", align 1
  br i1 %var.load584, label %choice.then585, label %choice.else586

choice.exit583:                                   ; preds = %choice.exit587, %str.eq.merge574
  br label %choice.exit547

choice.then585:                                   ; preds = %choice.then582
  %var.load588 = load ptr, ptr %var.f, align 8
  call void @"formatter::print_line"(ptr %var.load588)
  %var.load589 = load i64, ptr %"var.unformatted'", align 8
  %addtmp590 = add i64 %var.load589, 1
  store i64 %addtmp590, ptr %"var.unformatted'", align 8
  br label %choice.exit587

choice.else586:                                   ; preds = %choice.then582
  %var.load591 = load ptr, ptr %var.f, align 8
  %var.load592 = load ptr, ptr %var.formatted543, align 8
  %call.res593 = call i1 @"fs::write_file"(ptr %var.load591, ptr %var.load592)
  %nottmp594 = xor i1 %call.res593, true
  br i1 %nottmp594, label %choice.then595, label %choice.else596

choice.exit587:                                   ; preds = %choice.exit597, %choice.then585
  br label %choice.exit583

choice.then595:                                   ; preds = %choice.else586
  %var.load598 = load ptr, ptr %var.f, align 8
  %concat.lhs599 = load i64, ptr @str.30.struct, align 8
  %concat.lhs600 = and i64 %concat.lhs599, 281474976710655
  %str.tag601 = lshr i64 %concat.lhs599, 48
  %str.immortal602 = icmp eq i64 %str.tag601, 0
  br i1 %str.immortal602, label %str_ok604, label %str_gen_check603

choice.else596:                                   ; preds = %choice.else586
  %var.load679 = load ptr, ptr %var.f, align 8
  call void @"formatter::print_line"(ptr %var.load679)
  br label %choice.exit597

choice.exit597:                                   ; preds = %choice.else596, %concat.tot.len669
  br label %choice.exit587

str_gen_check603:                                 ; preds = %choice.then595
  %arena.cur606 = call ptr @dva_arena_current()
  %tag.valid607 = call i1 @dva_arena_validate_tag(ptr %arena.cur606, i64 %str.tag601)
  br i1 %tag.valid607, label %str_ok604, label %str_stale605

str_ok604:                                        ; preds = %str_stale605, %str_gen_check603, %choice.then595
  %concat.lhs608 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.30.struct, i32 0, i32 1), align 8
  %concat.rhs609 = getelementptr inbounds { i64, ptr }, ptr %var.load598, i32 0, i32 0
  %concat.rhs610 = load i64, ptr %concat.rhs609, align 8
  %concat.rhs611 = and i64 %concat.rhs610, 281474976710655
  %str.tag612 = lshr i64 %concat.rhs610, 48
  %str.immortal613 = icmp eq i64 %str.tag612, 0
  br i1 %str.immortal613, label %str_ok615, label %str_gen_check614

str_stale605:                                     ; preds = %str_gen_check603
  %34 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok604

str_gen_check614:                                 ; preds = %str_ok604
  %arena.cur617 = call ptr @dva_arena_current()
  %tag.valid618 = call i1 @dva_arena_validate_tag(ptr %arena.cur617, i64 %str.tag612)
  br i1 %tag.valid618, label %str_ok615, label %str_stale616

str_ok615:                                        ; preds = %str_stale616, %str_gen_check614, %str_ok604
  %concat.rhs619 = getelementptr inbounds { i64, ptr }, ptr %var.load598, i32 0, i32 1
  %concat.rhs620 = load ptr, ptr %concat.rhs619, align 8
  %concat.sum.len621 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs600, i64 %concat.rhs611)
  %sum622 = extractvalue { i64, i1 } %concat.sum.len621, 0
  %ovf623 = extractvalue { i64, i1 } %concat.sum.len621, 1
  br i1 %ovf623, label %str_overflow_abort625, label %concat.sum.len624

str_stale616:                                     ; preds = %str_gen_check614
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok615

concat.sum.len624:                                ; preds = %str_overflow_abort625, %str_ok615
  %concat.tot.len626 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum622, i64 1)
  %sum627 = extractvalue { i64, i1 } %concat.tot.len626, 0
  %ovf628 = extractvalue { i64, i1 } %concat.tot.len626, 1
  br i1 %ovf628, label %str_overflow_abort630, label %concat.tot.len629

str_overflow_abort625:                            ; preds = %str_ok615
  %36 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len624

concat.tot.len629:                                ; preds = %str_overflow_abort630, %concat.sum.len624
  %arena.cur631 = call ptr @dva_arena_current()
  %concat.buf632 = call ptr @dva_arena_alloc(ptr %arena.cur631, i64 %sum627)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf632, ptr align 1 %concat.lhs608, i64 %concat.lhs600, i1 false)
  %concat.mid633 = getelementptr i8, ptr %concat.buf632, i64 %concat.lhs600
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid633, ptr align 1 %concat.rhs620, i64 %concat.rhs611, i1 false)
  %concat.nul634 = getelementptr i8, ptr %concat.buf632, i64 %sum622
  store i8 0, ptr %concat.nul634, align 1
  %arena.cur635 = call ptr @dva_arena_current()
  %concat.str636 = call ptr @dva_arena_alloc(ptr %arena.cur635, i64 16)
  %str.build.len.gep637 = getelementptr inbounds { i64, ptr }, ptr %concat.str636, i32 0, i32 0
  store i64 %sum622, ptr %str.build.len.gep637, align 8
  %str.build.data.gep638 = getelementptr inbounds { i64, ptr }, ptr %concat.str636, i32 0, i32 1
  store ptr %concat.buf632, ptr %str.build.data.gep638, align 8
  %concat.lhs639 = getelementptr inbounds { i64, ptr }, ptr %concat.str636, i32 0, i32 0
  %concat.lhs640 = load i64, ptr %concat.lhs639, align 8
  %concat.lhs641 = and i64 %concat.lhs640, 281474976710655
  %str.tag642 = lshr i64 %concat.lhs640, 48
  %str.immortal643 = icmp eq i64 %str.tag642, 0
  br i1 %str.immortal643, label %str_ok645, label %str_gen_check644

str_overflow_abort630:                            ; preds = %concat.sum.len624
  %37 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len629

str_gen_check644:                                 ; preds = %concat.tot.len629
  %arena.cur647 = call ptr @dva_arena_current()
  %tag.valid648 = call i1 @dva_arena_validate_tag(ptr %arena.cur647, i64 %str.tag642)
  br i1 %tag.valid648, label %str_ok645, label %str_stale646

str_ok645:                                        ; preds = %str_stale646, %str_gen_check644, %concat.tot.len629
  %concat.lhs649 = getelementptr inbounds { i64, ptr }, ptr %concat.str636, i32 0, i32 1
  %concat.lhs650 = load ptr, ptr %concat.lhs649, align 8
  %concat.rhs651 = load i64, ptr @str.24.struct, align 8
  %concat.rhs652 = and i64 %concat.rhs651, 281474976710655
  %str.tag653 = lshr i64 %concat.rhs651, 48
  %str.immortal654 = icmp eq i64 %str.tag653, 0
  br i1 %str.immortal654, label %str_ok656, label %str_gen_check655

str_stale646:                                     ; preds = %str_gen_check644
  %38 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok645

str_gen_check655:                                 ; preds = %str_ok645
  %arena.cur658 = call ptr @dva_arena_current()
  %tag.valid659 = call i1 @dva_arena_validate_tag(ptr %arena.cur658, i64 %str.tag653)
  br i1 %tag.valid659, label %str_ok656, label %str_stale657

str_ok656:                                        ; preds = %str_stale657, %str_gen_check655, %str_ok645
  %concat.rhs660 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.24.struct, i32 0, i32 1), align 8
  %concat.sum.len661 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs641, i64 %concat.rhs652)
  %sum662 = extractvalue { i64, i1 } %concat.sum.len661, 0
  %ovf663 = extractvalue { i64, i1 } %concat.sum.len661, 1
  br i1 %ovf663, label %str_overflow_abort665, label %concat.sum.len664

str_stale657:                                     ; preds = %str_gen_check655
  %39 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok656

concat.sum.len664:                                ; preds = %str_overflow_abort665, %str_ok656
  %concat.tot.len666 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum662, i64 1)
  %sum667 = extractvalue { i64, i1 } %concat.tot.len666, 0
  %ovf668 = extractvalue { i64, i1 } %concat.tot.len666, 1
  br i1 %ovf668, label %str_overflow_abort670, label %concat.tot.len669

str_overflow_abort665:                            ; preds = %str_ok656
  %40 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len664

concat.tot.len669:                                ; preds = %str_overflow_abort670, %concat.sum.len664
  %arena.cur671 = call ptr @dva_arena_current()
  %concat.buf672 = call ptr @dva_arena_alloc(ptr %arena.cur671, i64 %sum667)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf672, ptr align 1 %concat.lhs650, i64 %concat.lhs641, i1 false)
  %concat.mid673 = getelementptr i8, ptr %concat.buf672, i64 %concat.lhs641
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid673, ptr align 1 %concat.rhs660, i64 %concat.rhs652, i1 false)
  %concat.nul674 = getelementptr i8, ptr %concat.buf672, i64 %sum662
  store i8 0, ptr %concat.nul674, align 1
  %arena.cur675 = call ptr @dva_arena_current()
  %concat.str676 = call ptr @dva_arena_alloc(ptr %arena.cur675, i64 16)
  %str.build.len.gep677 = getelementptr inbounds { i64, ptr }, ptr %concat.str676, i32 0, i32 0
  store i64 %sum662, ptr %str.build.len.gep677, align 8
  %str.build.data.gep678 = getelementptr inbounds { i64, ptr }, ptr %concat.str676, i32 0, i32 1
  store ptr %concat.buf672, ptr %str.build.data.gep678, align 8
  call void @"log::error"(ptr %concat.str676)
  store i1 true, ptr %"var.had_err'", align 1
  br label %choice.exit597

str_overflow_abort670:                            ; preds = %concat.sum.len664
  %41 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len669

str_gen_check690:                                 ; preds = %choice.else527
  %arena.cur693 = call ptr @dva_arena_current()
  %tag.valid694 = call i1 @dva_arena_validate_tag(ptr %arena.cur693, i64 %str.tag688)
  br i1 %tag.valid694, label %str_ok691, label %str_stale692

str_ok691:                                        ; preds = %str_stale692, %str_gen_check690, %choice.else527
  %concat.lhs695 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.31.struct, i32 0, i32 1), align 8
  %concat.rhs696 = getelementptr inbounds { i64, ptr }, ptr %var.load685, i32 0, i32 0
  %concat.rhs697 = load i64, ptr %concat.rhs696, align 8
  %concat.rhs698 = and i64 %concat.rhs697, 281474976710655
  %str.tag699 = lshr i64 %concat.rhs697, 48
  %str.immortal700 = icmp eq i64 %str.tag699, 0
  br i1 %str.immortal700, label %str_ok702, label %str_gen_check701

str_stale692:                                     ; preds = %str_gen_check690
  %42 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok691

str_gen_check701:                                 ; preds = %str_ok691
  %arena.cur704 = call ptr @dva_arena_current()
  %tag.valid705 = call i1 @dva_arena_validate_tag(ptr %arena.cur704, i64 %str.tag699)
  br i1 %tag.valid705, label %str_ok702, label %str_stale703

str_ok702:                                        ; preds = %str_stale703, %str_gen_check701, %str_ok691
  %concat.rhs706 = getelementptr inbounds { i64, ptr }, ptr %var.load685, i32 0, i32 1
  %concat.rhs707 = load ptr, ptr %concat.rhs706, align 8
  %concat.sum.len708 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs687, i64 %concat.rhs698)
  %sum709 = extractvalue { i64, i1 } %concat.sum.len708, 0
  %ovf710 = extractvalue { i64, i1 } %concat.sum.len708, 1
  br i1 %ovf710, label %str_overflow_abort712, label %concat.sum.len711

str_stale703:                                     ; preds = %str_gen_check701
  %43 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok702

concat.sum.len711:                                ; preds = %str_overflow_abort712, %str_ok702
  %concat.tot.len713 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum709, i64 1)
  %sum714 = extractvalue { i64, i1 } %concat.tot.len713, 0
  %ovf715 = extractvalue { i64, i1 } %concat.tot.len713, 1
  br i1 %ovf715, label %str_overflow_abort717, label %concat.tot.len716

str_overflow_abort712:                            ; preds = %str_ok702
  %44 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len711

concat.tot.len716:                                ; preds = %str_overflow_abort717, %concat.sum.len711
  %arena.cur718 = call ptr @dva_arena_current()
  %concat.buf719 = call ptr @dva_arena_alloc(ptr %arena.cur718, i64 %sum714)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf719, ptr align 1 %concat.lhs695, i64 %concat.lhs687, i1 false)
  %concat.mid720 = getelementptr i8, ptr %concat.buf719, i64 %concat.lhs687
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid720, ptr align 1 %concat.rhs707, i64 %concat.rhs698, i1 false)
  %concat.nul721 = getelementptr i8, ptr %concat.buf719, i64 %sum709
  store i8 0, ptr %concat.nul721, align 1
  %arena.cur722 = call ptr @dva_arena_current()
  %concat.str723 = call ptr @dva_arena_alloc(ptr %arena.cur722, i64 16)
  %str.build.len.gep724 = getelementptr inbounds { i64, ptr }, ptr %concat.str723, i32 0, i32 0
  store i64 %sum709, ptr %str.build.len.gep724, align 8
  %str.build.data.gep725 = getelementptr inbounds { i64, ptr }, ptr %concat.str723, i32 0, i32 1
  store ptr %concat.buf719, ptr %str.build.data.gep725, align 8
  %concat.lhs726 = getelementptr inbounds { i64, ptr }, ptr %concat.str723, i32 0, i32 0
  %concat.lhs727 = load i64, ptr %concat.lhs726, align 8
  %concat.lhs728 = and i64 %concat.lhs727, 281474976710655
  %str.tag729 = lshr i64 %concat.lhs727, 48
  %str.immortal730 = icmp eq i64 %str.tag729, 0
  br i1 %str.immortal730, label %str_ok732, label %str_gen_check731

str_overflow_abort717:                            ; preds = %concat.sum.len711
  %45 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len716

str_gen_check731:                                 ; preds = %concat.tot.len716
  %arena.cur734 = call ptr @dva_arena_current()
  %tag.valid735 = call i1 @dva_arena_validate_tag(ptr %arena.cur734, i64 %str.tag729)
  br i1 %tag.valid735, label %str_ok732, label %str_stale733

str_ok732:                                        ; preds = %str_stale733, %str_gen_check731, %concat.tot.len716
  %concat.lhs736 = getelementptr inbounds { i64, ptr }, ptr %concat.str723, i32 0, i32 1
  %concat.lhs737 = load ptr, ptr %concat.lhs736, align 8
  %concat.rhs738 = load i64, ptr @str.24.struct, align 8
  %concat.rhs739 = and i64 %concat.rhs738, 281474976710655
  %str.tag740 = lshr i64 %concat.rhs738, 48
  %str.immortal741 = icmp eq i64 %str.tag740, 0
  br i1 %str.immortal741, label %str_ok743, label %str_gen_check742

str_stale733:                                     ; preds = %str_gen_check731
  %46 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok732

str_gen_check742:                                 ; preds = %str_ok732
  %arena.cur745 = call ptr @dva_arena_current()
  %tag.valid746 = call i1 @dva_arena_validate_tag(ptr %arena.cur745, i64 %str.tag740)
  br i1 %tag.valid746, label %str_ok743, label %str_stale744

str_ok743:                                        ; preds = %str_stale744, %str_gen_check742, %str_ok732
  %concat.rhs747 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.24.struct, i32 0, i32 1), align 8
  %concat.sum.len748 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs728, i64 %concat.rhs739)
  %sum749 = extractvalue { i64, i1 } %concat.sum.len748, 0
  %ovf750 = extractvalue { i64, i1 } %concat.sum.len748, 1
  br i1 %ovf750, label %str_overflow_abort752, label %concat.sum.len751

str_stale744:                                     ; preds = %str_gen_check742
  %47 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok743

concat.sum.len751:                                ; preds = %str_overflow_abort752, %str_ok743
  %concat.tot.len753 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum749, i64 1)
  %sum754 = extractvalue { i64, i1 } %concat.tot.len753, 0
  %ovf755 = extractvalue { i64, i1 } %concat.tot.len753, 1
  br i1 %ovf755, label %str_overflow_abort757, label %concat.tot.len756

str_overflow_abort752:                            ; preds = %str_ok743
  %48 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len751

concat.tot.len756:                                ; preds = %str_overflow_abort757, %concat.sum.len751
  %arena.cur758 = call ptr @dva_arena_current()
  %concat.buf759 = call ptr @dva_arena_alloc(ptr %arena.cur758, i64 %sum754)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf759, ptr align 1 %concat.lhs737, i64 %concat.lhs728, i1 false)
  %concat.mid760 = getelementptr i8, ptr %concat.buf759, i64 %concat.lhs728
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid760, ptr align 1 %concat.rhs747, i64 %concat.rhs739, i1 false)
  %concat.nul761 = getelementptr i8, ptr %concat.buf759, i64 %sum749
  store i8 0, ptr %concat.nul761, align 1
  %arena.cur762 = call ptr @dva_arena_current()
  %concat.str763 = call ptr @dva_arena_alloc(ptr %arena.cur762, i64 16)
  %str.build.len.gep764 = getelementptr inbounds { i64, ptr }, ptr %concat.str763, i32 0, i32 0
  store i64 %sum749, ptr %str.build.len.gep764, align 8
  %str.build.data.gep765 = getelementptr inbounds { i64, ptr }, ptr %concat.str763, i32 0, i32 1
  store ptr %concat.buf759, ptr %str.build.data.gep765, align 8
  call void @"log::error"(ptr %concat.str763)
  store i1 true, ptr %"var.had_err'", align 1
  br label %choice.exit528

str_overflow_abort757:                            ; preds = %concat.sum.len751
  %49 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len756

or.533.then:                                      ; preds = %loop.exit.532
  br label %or.533.exit

or.533.else:                                      ; preds = %loop.exit.532
  %var.load769 = load i64, ptr %"var.unformatted'", align 8
  %cmptmp770 = icmp sgt i64 %var.load769, 0
  br label %or.533.exit

or.533.exit:                                      ; preds = %or.533.else, %or.533.then
  %or.533.phi = phi i1 [ %var.load768, %or.533.then ], [ %cmptmp770, %or.533.else ]
  br i1 %or.533.phi, label %choice.then771, label %choice.else772

choice.then771:                                   ; preds = %or.533.exit
  br label %choice.exit773

choice.else772:                                   ; preds = %or.533.exit
  br label %choice.exit773

choice.exit773:                                   ; preds = %choice.else772, %choice.then771
  %choice.res774 = phi i64 [ 1, %choice.then771 ], [ 0, %choice.else772 ]
  br label %choice.exit497
}

declare ptr @"sys::argv_string"(i64) #1

declare void @"log::error"(ptr) #1

declare i1 @"fs::exists"(ptr) #1

declare ptr @"fs::read_to_string"(ptr) #1

declare i1 @"fs::write_file"(ptr, ptr) #1

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
