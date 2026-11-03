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
@"var.path::SEP" = external global i32
@"var.path::SEP_STR" = external global ptr
@"var.path::LIST_SEP" = external global i32
@"var.path::LIST_SEP_STR" = external global ptr
@"var.path::IS_WIN" = external global i1
@"var.sys::STDIN" = external global i64
@"var.sys::STDOUT" = external global i64
@"var.sys::STDERR" = external global i64
@"var.sys::addr_null" = external global ptr
@clo.const = internal constant { ptr, ptr } { ptr @"fs::empty_stat", ptr null }
@"var.fs::empty_stat" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"fs::empty_statvfs", ptr null }
@"var.fs::empty_statvfs" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"fs::is_abs", ptr null }
@"var.fs::is_abs" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"fs::join", ptr null }
@"var.fs::join" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"fs::parent", ptr null }
@"var.fs::parent" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"fs::basename", ptr null }
@"var.fs::basename" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"fs::ext", ptr null }
@"var.fs::ext" = global ptr null
@str.0 = internal unnamed_addr constant [2 x i8] c".\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.0 }
@clo.const.7 = internal constant { ptr, ptr } { ptr @"fs::cwd", ptr null }
@"var.fs::cwd" = global ptr null
@str.1 = internal unnamed_addr constant [5 x i8] c"HOME\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.1 }
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str.2 = internal unnamed_addr constant [2 x i8] c"/\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.2 }
@clo.const.8 = internal constant { ptr, ptr } { ptr @"fs::home", ptr null }
@"var.fs::home" = global ptr null
@str.3 = internal unnamed_addr constant [2 x i8] c"~\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.3 }
@str.4 = internal unnamed_addr constant [3 x i8] c"~/\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.4 }
@clo.const.9 = internal constant { ptr, ptr } { ptr @"fs::resolve", ptr null }
@"var.fs::resolve" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"fs::join_path", ptr null }
@"var.fs::join_path" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"fs::parent_path", ptr null }
@"var.fs::parent_path" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"fs::resolve_path", ptr null }
@"var.fs::resolve_path" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"fs::get_home", ptr null }
@"var.fs::get_home" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"fs::get_ext", ptr null }
@"var.fs::get_ext" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"fs::stat_mode", ptr null }
@"var.fs::stat_mode" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"fs::stat_size", ptr null }
@"var.fs::stat_size" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"fs::stat_mtime_sec", ptr null }
@"var.fs::stat_mtime_sec" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"fs::stat_mtime_nsec", ptr null }
@"var.fs::stat_mtime_nsec" = global ptr null
@clo.const.19 = internal constant { ptr, ptr } { ptr @"fs::stat_atime_sec", ptr null }
@"var.fs::stat_atime_sec" = global ptr null
@clo.const.20 = internal constant { ptr, ptr } { ptr @"fs::make_metadata", ptr null }
@"var.fs::make_metadata" = global ptr null
@clo.const.21 = internal constant { ptr, ptr } { ptr @"fs::stat", ptr null }
@"var.fs::stat" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"fs::lstat_meta", ptr null }
@"var.fs::lstat_meta" = global ptr null
@clo.const.23 = internal constant { ptr, ptr } { ptr @"fs::exists", ptr null }
@"var.fs::exists" = global ptr null
@clo.const.24 = internal constant { ptr, ptr } { ptr @"fs::is_file", ptr null }
@"var.fs::is_file" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"fs::is_dir", ptr null }
@"var.fs::is_dir" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"fs::is_symlink", ptr null }
@"var.fs::is_symlink" = global ptr null
@clo.const.27 = internal constant { ptr, ptr } { ptr @"fs::mtime", ptr null }
@"var.fs::mtime" = global ptr null
@clo.const.28 = internal constant { ptr, ptr } { ptr @"fs::mtime_ns", ptr null }
@"var.fs::mtime_ns" = global ptr null
@clo.const.29 = internal constant { ptr, ptr } { ptr @"fs::size", ptr null }
@"var.fs::size" = global ptr null
@clo.const.30 = internal constant { ptr, ptr } { ptr @"fs::readlink_path", ptr null }
@"var.fs::readlink_path" = global ptr null
@clo.const.31 = internal constant { ptr, ptr } { ptr @"fs::path_exists", ptr null }
@"var.fs::path_exists" = global ptr null
@clo.const.32 = internal constant { ptr, ptr } { ptr @"fs::path_mtime", ptr null }
@"var.fs::path_mtime" = global ptr null
@str.5 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.5 }
@clo.const.33 = internal constant { ptr, ptr } { ptr @"fs::read_symlink", ptr null }
@"var.fs::read_symlink" = global ptr null
@str.6 = internal unnamed_addr constant [3 x i8] c"..\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.6 }
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@clo.const.34 = internal constant { ptr, ptr } { ptr @"fs::read_dir", ptr null }
@"var.fs::read_dir" = global ptr null
@clo.const.35 = internal constant { ptr, ptr } { ptr @"fs::open_wronly_creat_trunc", ptr null }
@"var.fs::open_wronly_creat_trunc" = global ptr null
@clo.const.36 = internal constant { ptr, ptr } { ptr @"fs::read_to_string", ptr null }
@"var.fs::read_to_string" = global ptr null
@clo.const.37 = internal constant { ptr, ptr } { ptr @"fs::write_file", ptr null }
@"var.fs::write_file" = global ptr null
@clo.const.38 = internal constant { ptr, ptr } { ptr @"fs::copy_file", ptr null }
@"var.fs::copy_file" = global ptr null
@clo.const.39 = internal constant { ptr, ptr } { ptr @"fs::rename_path", ptr null }
@"var.fs::rename_path" = global ptr null
@clo.const.40 = internal constant { ptr, ptr } { ptr @"fs::create_file", ptr null }
@"var.fs::create_file" = global ptr null
@clo.const.41 = internal constant { ptr, ptr } { ptr @"fs::create_dir", ptr null }
@"var.fs::create_dir" = global ptr null
@clo.const.42 = internal constant { ptr, ptr } { ptr @"fs::create_dir_all", ptr null }
@"var.fs::create_dir_all" = global ptr null
@clo.const.43 = internal constant { ptr, ptr } { ptr @"fs::remove", ptr null }
@"var.fs::remove" = global ptr null
@clo.const.44 = internal constant { ptr, ptr } { ptr @"fs::delete_entry", ptr null }
@"var.fs::delete_entry" = global ptr null
@clo.const.45 = internal constant { ptr, ptr } { ptr @"fs::write_text_file", ptr null }
@"var.fs::write_text_file" = global ptr null
@clo.const.46 = internal constant { ptr, ptr } { ptr @"fs::remove_all", ptr null }
@"var.fs::remove_all" = global ptr null
@clo.const.47 = internal constant { ptr, ptr } { ptr @"fs::space", ptr null }
@"var.fs::space" = global ptr null
@div_zero_msg = internal unnamed_addr constant [33 x i8] c"E4012: integer division by zero\0A\00"
@div_ovf_msg = internal unnamed_addr constant [56 x i8] c"E4013: signed integer division overflow (INT_MIN / -1)\0A\00"
@clo.const.48 = internal constant { ptr, ptr } { ptr @"fs::get_fs_stats", ptr null }
@"var.fs::get_fs_stats" = global ptr null
@str.7 = internal unnamed_addr constant [4 x i8] c"DIR\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.7 }
@dva_fmt_i64 = internal unnamed_addr constant [5 x i8] c"%lld\00"
@str.8 = internal unnamed_addr constant [3 x i8] c" B\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.8 }
@str.9 = internal unnamed_addr constant [4 x i8] c" KB\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.9 }
@str.10 = internal unnamed_addr constant [4 x i8] c" MB\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.10 }
@str.11 = internal unnamed_addr constant [4 x i8] c" GB\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.11 }
@clo.const.49 = internal constant { ptr, ptr } { ptr @"fs::format_size", ptr null }
@"var.fs::format_size" = global ptr null
@clo.const.50 = internal constant { ptr, ptr } { ptr @"fs::format_perms", ptr null }
@"var.fs::format_perms" = global ptr null
@str.12 = internal unnamed_addr constant [2 x i8] c"-\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.12 }
@str.13 = internal unnamed_addr constant [15 x i8] c"%Y-%m-%d %H:%M\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 14, ptr @str.13 }
@clo.const.51 = internal constant { ptr, ptr } { ptr @"fs::format_time", ptr null }
@"var.fs::format_time" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.52 = internal constant { ptr, ptr } { ptr @"fs::format_number", ptr null }
@"var.fs::format_number" = global ptr null
@dva_fmt_u64 = internal unnamed_addr constant [5 x i8] c"%llu\00"
@str.14 = internal unnamed_addr constant [2 x i8] c"0\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.14 }
@clo.const.53 = internal constant { ptr, ptr } { ptr @"fs::octal_perms", ptr null }
@"var.fs::octal_perms" = global ptr null
@str.15 = internal unnamed_addr constant [3 x i8] c" (\00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.15 }
@str.16 = internal unnamed_addr constant [2 x i8] c")\00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.16 }
@clo.const.54 = internal constant { ptr, ptr } { ptr @"fs::auto_rename_path", ptr null }
@"var.fs::auto_rename_path" = global ptr null
@clo.const.55 = internal constant { ptr, ptr } { ptr @"fs::cmp_entries", ptr null }
@"var.fs::cmp_entries" = global ptr null
@str.17 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.17 }
@str.18 = internal unnamed_addr constant [7 x i8] c"fs.dva\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.18 }
@str.19 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.19 }
@dva_thread_rec = external thread_local global ptr
@clo.const.56 = internal constant { ptr, ptr } { ptr @"fs::list_dir", ptr null }
@clo.const.57 = internal constant { ptr, ptr } { ptr @"fs::list_dir_simple", ptr null }
@"var.fs::list_dir_simple" = global ptr null
@"var.fs::list_dir" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_fs, ptr null }]

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

define internal void @__dva_global_init_fs() #1 {
entry:
  store ptr @clo.const, ptr @"var.fs::empty_stat", align 8
  store ptr @clo.const.1, ptr @"var.fs::empty_statvfs", align 8
  store ptr @clo.const.2, ptr @"var.fs::is_abs", align 8
  store ptr @clo.const.3, ptr @"var.fs::join", align 8
  store ptr @clo.const.4, ptr @"var.fs::parent", align 8
  store ptr @clo.const.5, ptr @"var.fs::basename", align 8
  store ptr @clo.const.6, ptr @"var.fs::ext", align 8
  store ptr @clo.const.7, ptr @"var.fs::cwd", align 8
  store ptr @clo.const.8, ptr @"var.fs::home", align 8
  store ptr @clo.const.9, ptr @"var.fs::resolve", align 8
  store ptr @clo.const.10, ptr @"var.fs::join_path", align 8
  store ptr @clo.const.11, ptr @"var.fs::parent_path", align 8
  store ptr @clo.const.12, ptr @"var.fs::resolve_path", align 8
  store ptr @clo.const.13, ptr @"var.fs::get_home", align 8
  store ptr @clo.const.14, ptr @"var.fs::get_ext", align 8
  store ptr @clo.const.15, ptr @"var.fs::stat_mode", align 8
  store ptr @clo.const.16, ptr @"var.fs::stat_size", align 8
  store ptr @clo.const.17, ptr @"var.fs::stat_mtime_sec", align 8
  store ptr @clo.const.18, ptr @"var.fs::stat_mtime_nsec", align 8
  store ptr @clo.const.19, ptr @"var.fs::stat_atime_sec", align 8
  store ptr @clo.const.20, ptr @"var.fs::make_metadata", align 8
  store ptr @clo.const.21, ptr @"var.fs::stat", align 8
  store ptr @clo.const.22, ptr @"var.fs::lstat_meta", align 8
  store ptr @clo.const.23, ptr @"var.fs::exists", align 8
  store ptr @clo.const.24, ptr @"var.fs::is_file", align 8
  store ptr @clo.const.25, ptr @"var.fs::is_dir", align 8
  store ptr @clo.const.26, ptr @"var.fs::is_symlink", align 8
  store ptr @clo.const.27, ptr @"var.fs::mtime", align 8
  store ptr @clo.const.28, ptr @"var.fs::mtime_ns", align 8
  store ptr @clo.const.29, ptr @"var.fs::size", align 8
  store ptr @clo.const.30, ptr @"var.fs::readlink_path", align 8
  store ptr @clo.const.31, ptr @"var.fs::path_exists", align 8
  store ptr @clo.const.32, ptr @"var.fs::path_mtime", align 8
  store ptr @clo.const.33, ptr @"var.fs::read_symlink", align 8
  store ptr @clo.const.34, ptr @"var.fs::read_dir", align 8
  store ptr @clo.const.35, ptr @"var.fs::open_wronly_creat_trunc", align 8
  store ptr @clo.const.36, ptr @"var.fs::read_to_string", align 8
  store ptr @clo.const.37, ptr @"var.fs::write_file", align 8
  store ptr @clo.const.38, ptr @"var.fs::copy_file", align 8
  store ptr @clo.const.39, ptr @"var.fs::rename_path", align 8
  store ptr @clo.const.40, ptr @"var.fs::create_file", align 8
  store ptr @clo.const.41, ptr @"var.fs::create_dir", align 8
  store ptr @clo.const.42, ptr @"var.fs::create_dir_all", align 8
  store ptr @clo.const.43, ptr @"var.fs::remove", align 8
  store ptr @clo.const.44, ptr @"var.fs::delete_entry", align 8
  store ptr @clo.const.45, ptr @"var.fs::write_text_file", align 8
  store ptr @clo.const.46, ptr @"var.fs::remove_all", align 8
  store ptr @clo.const.47, ptr @"var.fs::space", align 8
  store ptr @clo.const.48, ptr @"var.fs::get_fs_stats", align 8
  store ptr @clo.const.49, ptr @"var.fs::format_size", align 8
  store ptr @clo.const.50, ptr @"var.fs::format_perms", align 8
  store ptr @clo.const.51, ptr @"var.fs::format_time", align 8
  store ptr @clo.const.52, ptr @"var.fs::format_number", align 8
  store ptr @clo.const.53, ptr @"var.fs::octal_perms", align 8
  store ptr @clo.const.54, ptr @"var.fs::auto_rename_path", align 8
  store ptr @clo.const.55, ptr @"var.fs::cmp_entries", align 8
  store ptr @clo.const.57, ptr @"var.fs::list_dir_simple", align 8
  store ptr @clo.const.56, ptr @"var.fs::list_dir", align 8
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

declare i64 @lstat(ptr, ptr)

declare i64 @readlink(ptr, ptr, i64)

declare i64 @mkdir(ptr, i64)

declare i64 @rmdir(ptr)

declare i64 @statvfs(ptr, ptr)

declare ptr @getcwd(ptr, i64)

declare ptr @getenv(ptr)

declare ptr @localtime_r(ptr, ptr)

declare i64 @strftime(ptr, i64, ptr, ptr)

define ptr @"fs::empty_stat"() #1 {
entry:
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  %rec.fld2 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld2, align 8
  %rec.fld3 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 3
  store i32 0, ptr %rec.fld3, align 4
  %rec.fld4 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 4
  store i32 0, ptr %rec.fld4, align 4
  %rec.fld5 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 5
  store i32 0, ptr %rec.fld5, align 4
  %rec.fld6 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 6
  store i32 0, ptr %rec.fld6, align 4
  %rec.fld7 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 7
  store i64 0, ptr %rec.fld7, align 8
  %rec.fld8 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 8
  store i64 0, ptr %rec.fld8, align 8
  %rec.fld9 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 9
  store i64 0, ptr %rec.fld9, align 8
  %rec.fld10 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 10
  store i64 0, ptr %rec.fld10, align 8
  %rec.fld11 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 11
  store i64 0, ptr %rec.fld11, align 8
  %rec.fld12 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 12
  store i64 0, ptr %rec.fld12, align 8
  %rec.fld13 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 13
  store i64 0, ptr %rec.fld13, align 8
  %rec.fld14 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 14
  store i64 0, ptr %rec.fld14, align 8
  %rec.fld15 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 15
  store i64 0, ptr %rec.fld15, align 8
  %rec.fld16 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 16
  store i64 0, ptr %rec.fld16, align 8
  %rec.fld17 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 17
  store i64 0, ptr %rec.fld17, align 8
  %rec.fld18 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 18
  store i64 0, ptr %rec.fld18, align 8
  %rec.fld19 = getelementptr inbounds <{ i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>, ptr %rec.alloc, i32 0, i32 19
  store i64 0, ptr %rec.fld19, align 8
  ret ptr %rec.alloc
}

define ptr @"fs::empty_statvfs"() #1 {
entry:
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  %rec.fld2 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld2, align 8
  %rec.fld3 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 3
  store i64 0, ptr %rec.fld3, align 8
  %rec.fld4 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 4
  store i64 0, ptr %rec.fld4, align 8
  %rec.fld5 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 5
  store i64 0, ptr %rec.fld5, align 8
  %rec.fld6 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 6
  store i64 0, ptr %rec.fld6, align 8
  %rec.fld7 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 7
  store i64 0, ptr %rec.fld7, align 8
  %rec.fld8 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 8
  store i64 0, ptr %rec.fld8, align 8
  %rec.fld9 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 9
  store i64 0, ptr %rec.fld9, align 8
  %rec.fld10 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 10
  store i64 0, ptr %rec.fld10, align 8
  %rec.fld11 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 11
  store i32 0, ptr %rec.fld11, align 4
  %rec.fld12 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 12
  store i32 0, ptr %rec.fld12, align 4
  %rec.fld13 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 13
  store i32 0, ptr %rec.fld13, align 4
  %rec.fld14 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 14
  store i32 0, ptr %rec.fld14, align 4
  %rec.fld15 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 15
  store i32 0, ptr %rec.fld15, align 4
  %rec.fld16 = getelementptr inbounds <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }>, ptr %rec.alloc, i32 0, i32 16
  store i32 0, ptr %rec.fld16, align 4
  ret ptr %rec.alloc
}

define i1 @"fs::is_abs"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call i1 @"path::is_abs"(ptr %var.load)
  ret i1 %call.res
}

declare i1 @"path::is_abs"(ptr) #1

define ptr @"fs::join"(ptr %0, ptr %1) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %var.load1 = load ptr, ptr %var.b, align 8
  %call.res = call ptr @"path::join"(ptr %var.load, ptr %var.load1)
  ret ptr %call.res
}

declare ptr @"path::join"(ptr, ptr) #1

define ptr @"fs::parent"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call ptr @"path::parent"(ptr %var.load)
  ret ptr %call.res
}

declare ptr @"path::parent"(ptr) #1

define ptr @"fs::basename"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call ptr @"path::basename"(ptr %var.load)
  ret ptr %call.res
}

declare ptr @"path::basename"(ptr) #1

define ptr @"fs::ext"(ptr %0) #1 {
entry:
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %call.res = call ptr @"path::ext"(ptr %var.load)
  ret ptr %call.res
}

declare ptr @"path::ext"(ptr) #1

define ptr @"fs::cwd"() #1 {
entry:
  %var.res = alloca ptr, align 8
  %var.buf = alloca ptr, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1024, i64 1)
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
  store i64 1024, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.buf, align 8
  %var.load = load ptr, ptr %var.buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load, i32 0, i32 1
  %b.ptr3 = load ptr, ptr %b.ptr, align 8
  %addr.ffi.int = ptrtoint ptr %b.ptr3 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call ptr @getcwd(ptr %addr.ffi.clean, i64 1024)
  store ptr %call.res, ptr %var.res, align 8
  %var.load4 = load ptr, ptr %var.res, align 8
  %var.load5 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load4 to i64
  %ptr.int.r = ptrtoint ptr %var.load5 to i64
  %cmptmp = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp, label %choice.then, label %choice.else

str_overflow_abort:                               ; preds = %entry
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

choice.then:                                      ; preds = %b.buf.len1
  br label %choice.exit

choice.else:                                      ; preds = %b.buf.len1
  %var.load6 = load ptr, ptr %var.res, align 8
  %call.res7 = call ptr @"sys::c_str"(ptr %var.load6)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.0.struct, %choice.then ], [ %call.res7, %choice.else ]
  ret ptr %choice.res
}

declare ptr @"sys::c_str"(ptr) #1

define ptr @"fs::home"() #1 {
entry:
  %var.h = alloca ptr, align 8
  %arg.str.ptr = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %arg.str.ptr1 = load i64, ptr @str.1.struct, align 8
  %arg.str.ptr2 = and i64 %arg.str.ptr1, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr, i64 %arg.str.ptr2
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr3, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr3:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr2, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len4

nulmerge:                                         ; preds = %nulcopy.len4, %arg.str.ptr3
  %arg.str.ptr6 = phi ptr [ %arg.str.ptr, %arg.str.ptr3 ], [ %nulcopy.buf, %nulcopy.len4 ]
  %call.res = call ptr @getenv(ptr %arg.str.ptr6)
  store ptr %call.res, ptr %var.h, align 8
  %var.load = load ptr, ptr %var.h, align 8
  %var.load7 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load to i64
  %ptr.int.r = ptrtoint ptr %var.load7 to i64
  %cmptmp = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp, label %choice.then, label %choice.else

nulcopy.len4:                                     ; preds = %str_overflow_abort, %nulcopy
  %arena.cur5 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr, i64 %arg.str.ptr2, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr2
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len4

choice.then:                                      ; preds = %nulmerge
  br label %choice.exit

choice.else:                                      ; preds = %nulmerge
  %var.load8 = load ptr, ptr %var.h, align 8
  %call.res9 = call ptr @"sys::c_str"(ptr %var.load8)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.2.struct, %choice.then ], [ %call.res9, %choice.else ]
  ret ptr %choice.res
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define ptr @"fs::resolve"(ptr %0) #1 {
entry:
  %var.s = alloca ptr, align 8
  %var.real = alloca ptr, align 8
  %var.full = alloca ptr, align 8
  %var.len = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
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
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %call.res = call ptr @"fs::cwd"()
  ret ptr %call.res

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.p, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len5 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len6 = and i64 %eq.lhs.len5, 281474976710655
  %str.tag7 = lshr i64 %eq.lhs.len5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check9:                                   ; preds = %choice.exit
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %choice.exit
  %eq.rhs.len = load i64, ptr @str.3.struct, align 8
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
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data22, ptr %eq.rhs.data, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok18
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then23, label %choice.exit24

choice.then23:                                    ; preds = %str.eq.merge
  %call.res25 = call ptr @"fs::home"()
  ret ptr %call.res25

choice.exit24:                                    ; preds = %ret.dead26, %str.eq.merge
  %var.load27 = load i64, ptr %var.len, align 8
  %cmptmp28 = icmp sge i64 %var.load27, 2
  br i1 %cmptmp28, label %and.63.then, label %and.63.else

ret.dead26:                                       ; No predecessors!
  br label %choice.exit24

and.63.then:                                      ; preds = %choice.exit24
  %var.load29 = load ptr, ptr %var.p, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 0
  %s.read.len30 = load i64, ptr %s.read.len, align 8
  %s.read.len31 = and i64 %s.read.len30, 281474976710655
  %str.tag32 = lshr i64 %s.read.len30, 48
  %str.immortal33 = icmp eq i64 %str.tag32, 0
  br i1 %str.immortal33, label %str_ok35, label %str_gen_check34

and.63.else:                                      ; preds = %choice.exit24
  br label %and.63.exit

and.63.exit:                                      ; preds = %and.63.else, %str.eq.merge63
  %and.63.phi = phi i1 [ %str.eq.result69, %str.eq.merge63 ], [ %cmptmp28, %and.63.else ]
  br i1 %and.63.phi, label %choice.then70, label %choice.exit71

str_gen_check34:                                  ; preds = %and.63.then
  %arena.cur37 = call ptr @dva_arena_current()
  %tag.valid38 = call i1 @dva_arena_validate_tag(ptr %arena.cur37, i64 %str.tag32)
  br i1 %tag.valid38, label %str_ok35, label %str_stale36

str_ok35:                                         ; preds = %str_stale36, %str_gen_check34, %and.63.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 1
  %s.read.data39 = load ptr, ptr %s.read.data, align 8
  %rel.start = add i64 %s.read.len31, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len31
  %final.start = select i1 %start.gt.len, i64 %s.read.len31, i64 %c.start.0
  %rel.end = add i64 %s.read.len31, 2
  %norm.end = select i1 false, i64 %rel.end, i64 2
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len31
  %final.end = select i1 %end.gt.len, i64 %s.read.len31, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data39, i64 %final.start
  %arena.cur40 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %eq.lhs.len41 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len42 = load i64, ptr %eq.lhs.len41, align 8
  %eq.lhs.len43 = and i64 %eq.lhs.len42, 281474976710655
  %str.tag44 = lshr i64 %eq.lhs.len42, 48
  %str.immortal45 = icmp eq i64 %str.tag44, 0
  br i1 %str.immortal45, label %str_ok47, label %str_gen_check46

str_stale36:                                      ; preds = %str_gen_check34
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok35

str_gen_check46:                                  ; preds = %str_ok35
  %arena.cur49 = call ptr @dva_arena_current()
  %tag.valid50 = call i1 @dva_arena_validate_tag(ptr %arena.cur49, i64 %str.tag44)
  br i1 %tag.valid50, label %str_ok47, label %str_stale48

str_ok47:                                         ; preds = %str_stale48, %str_gen_check46, %str_ok35
  %eq.rhs.len51 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len52 = and i64 %eq.rhs.len51, 281474976710655
  %str.tag53 = lshr i64 %eq.rhs.len51, 48
  %str.immortal54 = icmp eq i64 %str.tag53, 0
  br i1 %str.immortal54, label %str_ok56, label %str_gen_check55

str_stale48:                                      ; preds = %str_gen_check46
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok47

str_gen_check55:                                  ; preds = %str_ok47
  %arena.cur58 = call ptr @dva_arena_current()
  %tag.valid59 = call i1 @dva_arena_validate_tag(ptr %arena.cur58, i64 %str.tag53)
  br i1 %tag.valid59, label %str_ok56, label %str_stale57

str_ok56:                                         ; preds = %str_stale57, %str_gen_check55, %str_ok47
  %eq.len60 = icmp eq i64 %eq.lhs.len43, %eq.rhs.len52
  br i1 %eq.len60, label %str.eq.then61, label %str.eq.else62

str_stale57:                                      ; preds = %str_gen_check55
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok56

str.eq.then61:                                    ; preds = %str_ok56
  %eq.lhs.data64 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data65 = load ptr, ptr %eq.lhs.data64, align 8
  %eq.rhs.data66 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp67 = call i32 @memcmp(ptr %eq.lhs.data65, ptr %eq.rhs.data66, i64 %eq.lhs.len43)
  %eq.cmp.zero68 = icmp eq i32 %eq.memcmp67, 0
  br label %str.eq.merge63

str.eq.else62:                                    ; preds = %str_ok56
  br label %str.eq.merge63

str.eq.merge63:                                   ; preds = %str.eq.else62, %str.eq.then61
  %str.eq.result69 = phi i1 [ %eq.cmp.zero68, %str.eq.then61 ], [ false, %str.eq.else62 ]
  br label %and.63.exit

choice.then70:                                    ; preds = %and.63.exit
  %call.res72 = call ptr @"fs::home"()
  %var.load73 = load ptr, ptr %var.p, align 8
  %s.read.len74 = getelementptr inbounds { i64, ptr }, ptr %var.load73, i32 0, i32 0
  %s.read.len75 = load i64, ptr %s.read.len74, align 8
  %s.read.len76 = and i64 %s.read.len75, 281474976710655
  %str.tag77 = lshr i64 %s.read.len75, 48
  %str.immortal78 = icmp eq i64 %str.tag77, 0
  br i1 %str.immortal78, label %str_ok80, label %str_gen_check79

choice.exit71:                                    ; preds = %ret.dead107, %and.63.exit
  %var.load108 = load ptr, ptr %var.p, align 8
  %call.res109 = call i1 @"path::is_abs"(ptr %var.load108)
  br i1 %call.res109, label %choice.then110, label %choice.else

str_gen_check79:                                  ; preds = %choice.then70
  %arena.cur82 = call ptr @dva_arena_current()
  %tag.valid83 = call i1 @dva_arena_validate_tag(ptr %arena.cur82, i64 %str.tag77)
  br i1 %tag.valid83, label %str_ok80, label %str_stale81

str_ok80:                                         ; preds = %str_stale81, %str_gen_check79, %choice.then70
  %s.read.data84 = getelementptr inbounds { i64, ptr }, ptr %var.load73, i32 0, i32 1
  %s.read.data85 = load ptr, ptr %s.read.data84, align 8
  %rel.start86 = add i64 %s.read.len76, 2
  %norm.start87 = select i1 false, i64 %rel.start86, i64 2
  %start.lt.088 = icmp slt i64 %norm.start87, 0
  %c.start.089 = select i1 %start.lt.088, i64 0, i64 %norm.start87
  %start.gt.len90 = icmp sgt i64 %c.start.089, %s.read.len76
  %final.start91 = select i1 %start.gt.len90, i64 %s.read.len76, i64 %c.start.089
  %end.is_neg = icmp slt i64 %s.read.len76, 0
  %rel.end92 = add i64 %s.read.len76, %s.read.len76
  %norm.end93 = select i1 %end.is_neg, i64 %rel.end92, i64 %s.read.len76
  %end.lt.094 = icmp slt i64 %norm.end93, 0
  %c.end.095 = select i1 %end.lt.094, i64 0, i64 %norm.end93
  %end.gt.len96 = icmp sgt i64 %c.end.095, %s.read.len76
  %final.end97 = select i1 %end.gt.len96, i64 %s.read.len76, i64 %c.end.095
  %view.empty98 = icmp sle i64 %final.end97, %final.start91
  %view.len.sub99 = sub i64 %final.end97, %final.start91
  %view.len100 = select i1 %view.empty98, i64 0, i64 %view.len.sub99
  %view.data101 = getelementptr i8, ptr %s.read.data85, i64 %final.start91
  %arena.cur102 = call ptr @dva_arena_current()
  %str.view103 = call ptr @dva_arena_alloc(ptr %arena.cur102, i64 16)
  %str.build.len.gep104 = getelementptr inbounds { i64, ptr }, ptr %str.view103, i32 0, i32 0
  store i64 %view.len100, ptr %str.build.len.gep104, align 8
  %str.build.data.gep105 = getelementptr inbounds { i64, ptr }, ptr %str.view103, i32 0, i32 1
  store ptr %view.data101, ptr %str.build.data.gep105, align 8
  %call.res106 = call ptr @"path::join"(ptr %call.res72, ptr %str.view103)
  ret ptr %call.res106

str_stale81:                                      ; preds = %str_gen_check79
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok80

ret.dead107:                                      ; No predecessors!
  br label %choice.exit71

choice.then110:                                   ; preds = %choice.exit71
  %var.load112 = load ptr, ptr %var.p, align 8
  br label %choice.exit111

choice.else:                                      ; preds = %choice.exit71
  %call.res113 = call ptr @"fs::cwd"()
  %var.load114 = load ptr, ptr %var.p, align 8
  %call.res115 = call ptr @"path::join"(ptr %call.res113, ptr %var.load114)
  br label %choice.exit111

choice.exit111:                                   ; preds = %choice.else, %choice.then110
  %choice.res = phi ptr [ %var.load112, %choice.then110 ], [ %call.res115, %choice.else ]
  store ptr %choice.res, ptr %var.full, align 8
  %var.load116 = load ptr, ptr %var.full, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load116, i32 0, i32 1
  %arg.str.ptr117 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr118 = getelementptr inbounds { i64, ptr }, ptr %var.load116, i32 0, i32 0
  %arg.str.ptr119 = load i64, ptr %arg.str.ptr118, align 8
  %arg.str.ptr120 = and i64 %arg.str.ptr119, 281474976710655
  %str.tag121 = lshr i64 %arg.str.ptr119, 48
  %str.immortal122 = icmp eq i64 %str.tag121, 0
  br i1 %str.immortal122, label %str_ok124, label %str_gen_check123

str_gen_check123:                                 ; preds = %choice.exit111
  %arena.cur126 = call ptr @dva_arena_current()
  %tag.valid127 = call i1 @dva_arena_validate_tag(ptr %arena.cur126, i64 %str.tag121)
  br i1 %tag.valid127, label %str_ok124, label %str_stale125

str_ok124:                                        ; preds = %str_stale125, %str_gen_check123, %choice.exit111
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr117, i64 %arg.str.ptr120
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr128, label %nulcopy

str_stale125:                                     ; preds = %str_gen_check123
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok124

arg.str.ptr128:                                   ; preds = %str_ok124
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok124
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr120, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len129

nulmerge:                                         ; preds = %nulcopy.len129, %arg.str.ptr128
  %arg.str.ptr131 = phi ptr [ %arg.str.ptr117, %arg.str.ptr128 ], [ %nulcopy.buf, %nulcopy.len129 ]
  %var.load132 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int = ptrtoint ptr %var.load132 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res133 = call ptr @realpath(ptr %arg.str.ptr131, ptr %addr.ffi.clean)
  store ptr %call.res133, ptr %var.real, align 8
  %var.load134 = load ptr, ptr %var.real, align 8
  %var.load135 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load134 to i64
  %ptr.int.r = ptrtoint ptr %var.load135 to i64
  %cmptmp136 = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp136, label %choice.then137, label %choice.else138

nulcopy.len129:                                   ; preds = %str_overflow_abort, %nulcopy
  %arena.cur130 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur130, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr117, i64 %arg.str.ptr120, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr120
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len129

choice.then137:                                   ; preds = %nulmerge
  %var.load140 = load ptr, ptr %var.full, align 8
  br label %choice.exit139

choice.else138:                                   ; preds = %nulmerge
  %var.load141 = load ptr, ptr %var.real, align 8
  %call.res142 = call ptr @"sys::c_str"(ptr %var.load141)
  store ptr %call.res142, ptr %var.s, align 8
  %var.load143 = load ptr, ptr %var.real, align 8
  %addr.ffi.int144 = ptrtoint ptr %var.load143 to i64
  %addr.ffi.masked145 = and i64 %addr.ffi.int144, 281474976710655
  %addr.ffi.clean146 = inttoptr i64 %addr.ffi.masked145 to ptr
  call void @free(ptr %addr.ffi.clean146)
  %var.load147 = load ptr, ptr %var.s, align 8
  br label %choice.exit139

choice.exit139:                                   ; preds = %choice.else138, %choice.then137
  %choice.res148 = phi ptr [ %var.load140, %choice.then137 ], [ %var.load147, %choice.else138 ]
  ret ptr %choice.res148
}

declare i32 @memcmp(ptr, ptr, i64)

define ptr @"fs::join_path"(ptr %0, ptr %1) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %var.load1 = load ptr, ptr %var.b, align 8
  %call.res = call ptr @"path::join"(ptr %var.load, ptr %var.load1)
  ret ptr %call.res
}

define ptr @"fs::parent_path"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call ptr @"path::parent"(ptr %var.load)
  ret ptr %call.res
}

define ptr @"fs::resolve_path"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call ptr @"fs::resolve"(ptr %var.load)
  ret ptr %call.res
}

define ptr @"fs::get_home"() #1 {
entry:
  %call.res = call ptr @"fs::home"()
  ret ptr %call.res
}

define ptr @"fs::get_ext"(ptr %0) #1 {
entry:
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %call.res = call ptr @"path::get_ext"(ptr %var.load)
  ret ptr %call.res
}

declare ptr @"path::get_ext"(ptr) #1

define i64 @"fs::stat_mode"(ptr %0) #1 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 3
  %fld.load = load i32, ptr %fld.gep, align 4
  %coerce.zext = zext i32 %fld.load to i64
  ret i64 %coerce.zext
}

define i64 @"fs::stat_size"(ptr %0) #1 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 8
  %fld.load = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load
}

define i64 @"fs::stat_mtime_sec"(ptr %0) #1 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 13
  %fld.load = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load
}

define i64 @"fs::stat_mtime_nsec"(ptr %0) #1 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 14
  %fld.load = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load
}

define i64 @"fs::stat_atime_sec"(ptr %0) #1 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 11
  %fld.load = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load
}

define ptr @"fs::make_metadata"(ptr %0, i1 %1) #1 {
entry:
  %var.is_x = alloca i1, align 1
  %var.pb = alloca i16, align 2
  %var.is_l = alloca i1, align 1
  %var.is_reg = alloca i1, align 1
  %var.is_d = alloca i1, align 1
  %var.fmt = alloca i64, align 8
  %var.fm = alloca i16, align 2
  %var.m = alloca i64, align 8
  %var.is_link = alloca i1, align 1
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i1 %1, ptr %var.is_link, align 1
  %var.load = load ptr, ptr %var.s, align 8
  %call.res = call i64 @"fs::stat_mode"(ptr %var.load)
  store i64 %call.res, ptr %var.m, align 8
  %var.load1 = load i64, ptr %var.m, align 8
  %coerce.trunc = trunc i64 %var.load1 to i16
  store i16 %coerce.trunc, ptr %var.fm, align 2
  %var.load2 = load i16, ptr %var.fm, align 2
  %bf.load = load i16, ptr %var.fm, align 2
  %bf.shr = lshr i16 %bf.load, 12
  %bf.mask = and i16 %bf.shr, 15
  %bf.ext = zext i16 %bf.mask to i64
  store i64 %bf.ext, ptr %var.fmt, align 8
  %var.load3 = load i16, ptr %var.fmt, align 2
  %coerce.zext = zext i16 %var.load3 to i64
  %cmptmp = icmp eq i64 %coerce.zext, 4
  store i1 %cmptmp, ptr %var.is_d, align 1
  %var.load4 = load i16, ptr %var.fmt, align 2
  %coerce.zext5 = zext i16 %var.load4 to i64
  %cmptmp6 = icmp eq i64 %coerce.zext5, 8
  store i1 %cmptmp6, ptr %var.is_reg, align 1
  %var.load7 = load i1, ptr %var.is_link, align 1
  br i1 %var.load7, label %or.64.then, label %or.64.else

or.64.then:                                       ; preds = %entry
  br label %or.64.exit

or.64.else:                                       ; preds = %entry
  %var.load8 = load i16, ptr %var.fmt, align 2
  %coerce.zext9 = zext i16 %var.load8 to i64
  %cmptmp10 = icmp eq i64 %coerce.zext9, 10
  br label %or.64.exit

or.64.exit:                                       ; preds = %or.64.else, %or.64.then
  %or.64.phi = phi i1 [ %var.load7, %or.64.then ], [ %cmptmp10, %or.64.else ]
  store i1 %or.64.phi, ptr %var.is_l, align 1
  %var.load11 = load i64, ptr %var.m, align 8
  %coerce.trunc12 = trunc i64 %var.load11 to i16
  store i16 %coerce.trunc12, ptr %var.pb, align 2
  %var.load13 = load i16, ptr %var.pb, align 2
  %bf.load14 = load i16, ptr %var.pb, align 2
  %bf.shr15 = lshr i16 %bf.load14, 6
  %bf.mask16 = and i16 %bf.shr15, 1
  %bf.flag = trunc i16 %bf.mask16 to i1
  br i1 %bf.flag, label %or.65.then, label %or.65.else

or.65.then:                                       ; preds = %or.64.exit
  br label %or.65.exit

or.65.else:                                       ; preds = %or.64.exit
  %var.load17 = load i16, ptr %var.pb, align 2
  %bf.load18 = load i16, ptr %var.pb, align 2
  %bf.shr19 = lshr i16 %bf.load18, 3
  %bf.mask20 = and i16 %bf.shr19, 1
  %bf.flag21 = trunc i16 %bf.mask20 to i1
  br label %or.65.exit

or.65.exit:                                       ; preds = %or.65.else, %or.65.then
  %or.65.phi = phi i1 [ %bf.flag, %or.65.then ], [ %bf.flag21, %or.65.else ]
  br i1 %or.65.phi, label %or.66.then, label %or.66.else

or.66.then:                                       ; preds = %or.65.exit
  br label %or.66.exit

or.66.else:                                       ; preds = %or.65.exit
  %var.load22 = load i16, ptr %var.pb, align 2
  %bf.load23 = load i16, ptr %var.pb, align 2
  %bf.mask24 = and i16 %bf.load23, 1
  %bf.flag25 = trunc i16 %bf.mask24 to i1
  br label %or.66.exit

or.66.exit:                                       ; preds = %or.66.else, %or.66.then
  %or.66.phi = phi i1 [ %or.65.phi, %or.66.then ], [ %bf.flag25, %or.66.else ]
  br i1 %or.66.phi, label %and.67.then, label %and.67.else

and.67.then:                                      ; preds = %or.66.exit
  %var.load26 = load i1, ptr %var.is_d, align 1
  %nottmp = xor i1 %var.load26, true
  br label %and.67.exit

and.67.else:                                      ; preds = %or.66.exit
  br label %and.67.exit

and.67.exit:                                      ; preds = %and.67.else, %and.67.then
  %and.67.phi = phi i1 [ %nottmp, %and.67.then ], [ %or.66.phi, %and.67.else ]
  store i1 %and.67.phi, ptr %var.is_x, align 1
  %var.load27 = load ptr, ptr %var.s, align 8
  %call.res28 = call i64 @"fs::stat_size"(ptr %var.load27)
  %var.load29 = load i64, ptr %var.m, align 8
  %var.load30 = load ptr, ptr %var.s, align 8
  %call.res31 = call i64 @"fs::stat_mtime_sec"(ptr %var.load30)
  %var.load32 = load ptr, ptr %var.s, align 8
  %call.res33 = call i64 @"fs::stat_mtime_nsec"(ptr %var.load32)
  %var.load34 = load ptr, ptr %var.s, align 8
  %call.res35 = call i64 @"fs::stat_atime_sec"(ptr %var.load34)
  %var.load36 = load i1, ptr %var.is_d, align 1
  %var.load37 = load i1, ptr %var.is_reg, align 1
  %var.load38 = load i1, ptr %var.is_l, align 1
  %var.load39 = load i1, ptr %var.is_x, align 1
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %call.res28, ptr %rec.fld, align 8
  %rec.fld40 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load29, ptr %rec.fld40, align 8
  %rec.fld41 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %call.res31, ptr %rec.fld41, align 8
  %rec.fld42 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %call.res33, ptr %rec.fld42, align 8
  %rec.fld43 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %call.res35, ptr %rec.fld43, align 8
  %rec.fld44 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 5
  store i1 %var.load36, ptr %rec.fld44, align 1
  %rec.fld45 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 6
  store i1 %var.load37, ptr %rec.fld45, align 1
  %rec.fld46 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 7
  store i1 %var.load38, ptr %rec.fld46, align 1
  %rec.fld47 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 8
  store i1 %var.load39, ptr %rec.fld47, align 1
  ret ptr %rec.alloc
}

define ptr @"fs::stat"(ptr %0) #1 {
entry:
  %var.rc = alloca i64, align 8
  %"var.s'" = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %call.res = call ptr @"fs::empty_stat"()
  store ptr %call.res, ptr %"var.s'", align 8
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
  %var.load9 = load ptr, ptr %"var.s'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load9 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res10 = call i64 @stat(ptr %arg.str.ptr8, ptr %addr.ffi.clean)
  store i64 %call.res10, ptr %var.rc, align 8
  %var.load11 = load i64, ptr %var.rc, align 8
  %cmptmp = icmp ne i64 %var.load11, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

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
  ret ptr null

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load12 = load ptr, ptr %"var.s'", align 8
  %call.res13 = call ptr @"fs::make_metadata"(ptr %var.load12, i1 false)
  ret ptr %call.res13

ret.dead:                                         ; No predecessors!
  br label %choice.exit
}

define ptr @"fs::lstat_meta"(ptr %0) #1 {
entry:
  %var.is_link = alloca i1, align 1
  %var.fm = alloca i16, align 2
  %var.m = alloca i64, align 8
  %var.rc = alloca i64, align 8
  %"var.s'" = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %call.res = call ptr @"fs::empty_stat"()
  store ptr %call.res, ptr %"var.s'", align 8
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
  %var.load9 = load ptr, ptr %"var.s'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load9 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res10 = call i64 @lstat(ptr %arg.str.ptr8, ptr %addr.ffi.clean)
  store i64 %call.res10, ptr %var.rc, align 8
  %var.load11 = load i64, ptr %var.rc, align 8
  %cmptmp = icmp ne i64 %var.load11, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

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
  ret ptr null

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load12 = load ptr, ptr %"var.s'", align 8
  %call.res13 = call i64 @"fs::stat_mode"(ptr %var.load12)
  store i64 %call.res13, ptr %var.m, align 8
  %var.load14 = load i64, ptr %var.m, align 8
  %coerce.trunc = trunc i64 %var.load14 to i16
  store i16 %coerce.trunc, ptr %var.fm, align 2
  %var.load15 = load i16, ptr %var.fm, align 2
  %bf.load = load i16, ptr %var.fm, align 2
  %bf.shr = lshr i16 %bf.load, 12
  %bf.mask = and i16 %bf.shr, 15
  %bf.ext = zext i16 %bf.mask to i64
  %cmptmp16 = icmp eq i64 %bf.ext, 10
  store i1 %cmptmp16, ptr %var.is_link, align 1
  %var.load17 = load ptr, ptr %"var.s'", align 8
  %var.load18 = load i1, ptr %var.is_link, align 1
  %call.res19 = call ptr @"fs::make_metadata"(ptr %var.load17, i1 %var.load18)
  ret ptr %call.res19

ret.dead:                                         ; No predecessors!
  br label %choice.exit
}

define i1 @"fs::exists"(ptr %0) #1 {
entry:
  %"var.s'" = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %call.res = call ptr @"fs::empty_stat"()
  store ptr %call.res, ptr %"var.s'", align 8
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
  %var.load9 = load ptr, ptr %"var.s'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load9 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res10 = call i64 @stat(ptr %arg.str.ptr8, ptr %addr.ffi.clean)
  %cmptmp = icmp eq i64 %call.res10, 0
  ret i1 %cmptmp

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
}

define i1 @"fs::is_file"(ptr %0) #1 {
entry:
  %var.info = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %call.res = call ptr @"fs::stat"(ptr %var.load)
  store ptr %call.res, ptr %var.m, align 8
  %var.load1 = load ptr, ptr %var.m, align 8
  %niche.ne.null = icmp ne ptr %var.load1, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load1, ptr %var._, align 8
  store ptr %var.load1, ptr %var.info, align 8
  %var.load2 = load ptr, ptr %var.info, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load2, i32 0, i32 6
  %fld.load = load i1, ptr %fld.gep, align 1
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i1 [ %fld.load, %choice.then ], [ false, %choice.else ]
  ret i1 %choice.res
}

define i1 @"fs::is_dir"(ptr %0) #1 {
entry:
  %var.info = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %call.res = call ptr @"fs::stat"(ptr %var.load)
  store ptr %call.res, ptr %var.m, align 8
  %var.load1 = load ptr, ptr %var.m, align 8
  %niche.ne.null = icmp ne ptr %var.load1, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load1, ptr %var._, align 8
  store ptr %var.load1, ptr %var.info, align 8
  %var.load2 = load ptr, ptr %var.info, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load2, i32 0, i32 5
  %fld.load = load i1, ptr %fld.gep, align 1
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i1 [ %fld.load, %choice.then ], [ false, %choice.else ]
  ret i1 %choice.res
}

define i1 @"fs::is_symlink"(ptr %0) #1 {
entry:
  %var.info = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %call.res = call ptr @"fs::lstat_meta"(ptr %var.load)
  store ptr %call.res, ptr %var.m, align 8
  %var.load1 = load ptr, ptr %var.m, align 8
  %niche.ne.null = icmp ne ptr %var.load1, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load1, ptr %var._, align 8
  store ptr %var.load1, ptr %var.info, align 8
  %var.load2 = load ptr, ptr %var.info, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load2, i32 0, i32 7
  %fld.load = load i1, ptr %fld.gep, align 1
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i1 [ %fld.load, %choice.then ], [ false, %choice.else ]
  ret i1 %choice.res
}

define i64 @"fs::mtime"(ptr %0) #1 {
entry:
  %var.info = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %call.res = call ptr @"fs::stat"(ptr %var.load)
  store ptr %call.res, ptr %var.m, align 8
  %var.load1 = load ptr, ptr %var.m, align 8
  %niche.ne.null = icmp ne ptr %var.load1, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load1, ptr %var._, align 8
  store ptr %var.load1, ptr %var.info, align 8
  %var.load2 = load ptr, ptr %var.info, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load2, i32 0, i32 2
  %fld.load = load i64, ptr %fld.gep, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %fld.load, %choice.then ], [ 0, %choice.else ]
  ret i64 %choice.res
}

define i64 @"fs::mtime_ns"(ptr %0) #1 {
entry:
  %"var.s'" = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %call.res = call ptr @"fs::empty_stat"()
  store ptr %call.res, ptr %"var.s'", align 8
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
  %var.load9 = load ptr, ptr %"var.s'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load9 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res10 = call i64 @stat(ptr %arg.str.ptr8, ptr %addr.ffi.clean)
  %cmptmp = icmp eq i64 %call.res10, 0
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
  %var.load11 = load ptr, ptr %"var.s'", align 8
  %call.res12 = call i64 @"fs::stat_mtime_sec"(ptr %var.load11)
  %multmp = mul i64 %call.res12, 1000000000
  %var.load13 = load ptr, ptr %"var.s'", align 8
  %call.res14 = call i64 @"fs::stat_mtime_nsec"(ptr %var.load13)
  %addtmp = add i64 %multmp, %call.res14
  br label %choice.exit

choice.else:                                      ; preds = %nulmerge
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %addtmp, %choice.then ], [ -1, %choice.else ]
  ret i64 %choice.res
}

define i64 @"fs::size"(ptr %0) #1 {
entry:
  %var.info = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %call.res = call ptr @"fs::stat"(ptr %var.load)
  store ptr %call.res, ptr %var.m, align 8
  %var.load1 = load ptr, ptr %var.m, align 8
  %niche.ne.null = icmp ne ptr %var.load1, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load1, ptr %var._, align 8
  store ptr %var.load1, ptr %var.info, align 8
  %var.load2 = load ptr, ptr %var.info, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load2, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %fld.load, %choice.then ], [ 0, %choice.else ]
  ret i64 %choice.res
}

define ptr @"fs::readlink_path"(ptr %0) #1 {
entry:
  %var.n = alloca i64, align 8
  %var.buf = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1024, i64 1)
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
  store i64 1024, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.buf, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %arg.str.ptr3 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr4 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %arg.str.ptr5 = load i64, ptr %arg.str.ptr4, align 8
  %arg.str.ptr6 = and i64 %arg.str.ptr5, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr5, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

str_gen_check:                                    ; preds = %b.buf.len1
  %arena.cur7 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur7, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.buf.len1
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr3, i64 %arg.str.ptr6
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr8, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr8:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr6, i64 1)
  %sum9 = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf10 = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf10, label %str_overflow_abort12, label %nulcopy.len11

nulmerge:                                         ; preds = %nulcopy.len11, %arg.str.ptr8
  %arg.str.ptr14 = phi ptr [ %arg.str.ptr3, %arg.str.ptr8 ], [ %nulcopy.buf, %nulcopy.len11 ]
  %var.load15 = load ptr, ptr %var.buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load15, i32 0, i32 1
  %b.ptr16 = load ptr, ptr %b.ptr, align 8
  %addr.ffi.int = ptrtoint ptr %b.ptr16 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call i64 @readlink(ptr %arg.str.ptr14, ptr %addr.ffi.clean, i64 1024)
  store i64 %call.res, ptr %var.n, align 8
  %var.load17 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sle i64 %var.load17, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len11:                                    ; preds = %str_overflow_abort12, %nulcopy
  %arena.cur13 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 %sum9)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr3, i64 %arg.str.ptr6, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr6
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort12:                             ; preds = %nulcopy
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len11

choice.then:                                      ; preds = %nulmerge
  ret ptr null

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load18 = load i64, ptr %var.n, align 8
  %b.load = load ptr, ptr %var.buf, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap19 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load18, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.len_big_check:                                  ; preds = %choice.exit
  %b.len.big = icmp sgt i64 %var.load18, %b.cap19
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load18, ptr %b.len.gep20, align 8
  %var.load21 = load ptr, ptr %var.buf, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load21, i32 0, i32 0
  %b.freeze.len22 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load21, i32 0, i32 1
  %b.freeze.data23 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.len_oob:                                        ; preds = %b.len_big_check, %choice.exit
  %4 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data23, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data23, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data23, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len22, 1
  %arena.cur24 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data23, i64 %b.freeze.len22, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len22
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.len_ok
  %b.freeze.data25 = phi ptr [ %b.freeze.data23, %b.len_ok ], [ %b.freeze.data23, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur26 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len22, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data25, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load21, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load21, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load21, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

define i1 @"fs::path_exists"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call i1 @"fs::exists"(ptr %var.load)
  ret i1 %call.res
}

define i64 @"fs::path_mtime"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call i64 @"fs::mtime"(ptr %var.load)
  ret i64 %call.res
}

define ptr @"fs::read_symlink"(ptr %0) #1 {
entry:
  %var.s = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call ptr @"fs::readlink_path"(ptr %var.load)
  %niche.ne.null = icmp ne ptr %call.res, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %call.res, ptr %var._, align 8
  store ptr %call.res, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.s, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %var.load1, %choice.then ], [ @str.5.struct, %choice.else ]
  ret ptr %choice.res
}

define ptr @"fs::read_dir"(ptr %0) #1 {
entry:
  %var.mi = alloca ptr, align 8
  %var._104 = alloca ptr, align 8
  %var.meta = alloca ptr, align 8
  %var.sub_p = alloca ptr, align 8
  %var.is_l = alloca i1, align 1
  %var.is_f = alloca i1, align 1
  %var.is_d = alloca i1, align 1
  %var.dt = alloca i64, align 8
  %var.dp_ent = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var.ent = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.68 = alloca i64, align 8
  %loop.idx.68 = alloca i64, align 8
  %var.dp = alloca ptr, align 8
  %var.res = alloca ptr, align 8
  %var.dir_path = alloca ptr, align 8
  store ptr %0, ptr %var.dir_path, align 8
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
  %var.load = load ptr, ptr %var.dir_path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %arg.str.ptr2 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr3 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %arg.str.ptr4 = load i64, ptr %arg.str.ptr3, align 8
  %arg.str.ptr5 = and i64 %arg.str.ptr4, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr4, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur6 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur6, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr2, i64 %arg.str.ptr5
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr7, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr7:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr5, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len8

nulmerge:                                         ; preds = %nulcopy.len8, %arg.str.ptr7
  %arg.str.ptr10 = phi ptr [ %arg.str.ptr2, %arg.str.ptr7 ], [ %nulcopy.buf, %nulcopy.len8 ]
  %call.res = call ptr @opendir(ptr %arg.str.ptr10)
  store ptr %call.res, ptr %var.dp, align 8
  %var.load11 = load ptr, ptr %var.dp, align 8
  %var.load12 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load11 to i64
  %ptr.int.r = ptrtoint ptr %var.load12 to i64
  %cmptmp = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len8:                                     ; preds = %str_overflow_abort, %nulcopy
  %arena.cur9 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr2, i64 %arg.str.ptr5, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr5
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len8

choice.then:                                      ; preds = %nulmerge
  %var.load13 = load ptr, ptr %var.res, align 8
  %a.load = load ptr, ptr %var.res, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  store i64 0, ptr %loop.idx.68, align 8
  br label %loop.header.68

a.create:                                         ; preds = %choice.then
  %arena.cur14 = call ptr @dva_arena_current()
  %a.create15 = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 24)
  %arena.cur16 = call ptr @dva_arena_current()
  %a.buf17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 128)
  %a.len.gep18 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 0
  store i64 0, ptr %a.len.gep18, align 8
  %a.data.gep19 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 1
  store ptr %a.buf17, ptr %a.data.gep19, align 8
  %a.cap.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 2
  store i64 16, ptr %a.cap.gep20, align 8
  store ptr %a.create15, ptr %var.res, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.res, align 8
  ret ptr %a.load2

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.68:                                   ; preds = %loop.latch.68, %choice.exit
  %counter.load = load i64, ptr %loop.idx.68, align 8
  br label %loop.body.68

loop.body.68:                                     ; preds = %loop.header.68
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.68, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load21 = load ptr, ptr %var.dp, align 8
  %addr.ffi.int = ptrtoint ptr %var.load21 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res22 = call ptr @readdir(ptr %addr.ffi.clean)
  store ptr %call.res22, ptr %var.ent, align 8
  %var.load23 = load ptr, ptr %var.ent, align 8
  %var.load24 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l25 = ptrtoint ptr %var.load23 to i64
  %ptr.int.r26 = ptrtoint ptr %var.load24 to i64
  %cmptmp27 = icmp eq i64 %ptr.int.l25, %ptr.int.r26
  br i1 %cmptmp27, label %choice.then28, label %choice.exit29

loop.exit.nat.68:                                 ; No predecessors!
  br label %loop.exit.68

loop.latch.68:                                    ; preds = %a.store, %choice.then82
  %step.val = load i64, ptr %loop.step.68, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.68, align 8
  br label %loop.header.68

loop.exit.68:                                     ; preds = %choice.then28, %loop.exit.nat.68
  %var.load138 = load ptr, ptr %var.dp, align 8
  %addr.ffi.int139 = ptrtoint ptr %var.load138 to i64
  %addr.ffi.masked140 = and i64 %addr.ffi.int139, 281474976710655
  %addr.ffi.clean141 = inttoptr i64 %addr.ffi.masked140 to ptr
  %call.res142 = call i64 @closedir(ptr %addr.ffi.clean141)
  %var.load143 = load ptr, ptr %var.res, align 8
  %a.load144 = load ptr, ptr %var.res, align 8
  %a.null145 = icmp eq ptr %a.load144, null
  br i1 %a.null145, label %a.create146, label %a.after147

choice.then28:                                    ; preds = %loop.body.68
  br label %loop.exit.68

choice.exit29:                                    ; preds = %loop.body.68
  %var.load30 = load ptr, ptr %var.ent, align 8
  %ptr.int.l31 = ptrtoint ptr %var.load30 to i64
  %addtmp = add i64 %ptr.int.l31, 19
  %ptr.res = inttoptr i64 %addtmp to ptr
  %call.res32 = call ptr @"sys::c_str"(ptr %ptr.res)
  store ptr %call.res32, ptr %var.name, align 8
  %var.load33 = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 0
  %eq.lhs.len34 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len35 = and i64 %eq.lhs.len34, 281474976710655
  %str.tag36 = lshr i64 %eq.lhs.len34, 48
  %str.immortal37 = icmp eq i64 %str.tag36, 0
  br i1 %str.immortal37, label %str_ok39, label %str_gen_check38

str_gen_check38:                                  ; preds = %choice.exit29
  %arena.cur41 = call ptr @dva_arena_current()
  %tag.valid42 = call i1 @dva_arena_validate_tag(ptr %arena.cur41, i64 %str.tag36)
  br i1 %tag.valid42, label %str_ok39, label %str_stale40

str_ok39:                                         ; preds = %str_stale40, %str_gen_check38, %choice.exit29
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len43 = and i64 %eq.rhs.len, 281474976710655
  %str.tag44 = lshr i64 %eq.rhs.len, 48
  %str.immortal45 = icmp eq i64 %str.tag44, 0
  br i1 %str.immortal45, label %str_ok47, label %str_gen_check46

str_stale40:                                      ; preds = %str_gen_check38
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok39

str_gen_check46:                                  ; preds = %str_ok39
  %arena.cur49 = call ptr @dva_arena_current()
  %tag.valid50 = call i1 @dva_arena_validate_tag(ptr %arena.cur49, i64 %str.tag44)
  br i1 %tag.valid50, label %str_ok47, label %str_stale48

str_ok47:                                         ; preds = %str_stale48, %str_gen_check46, %str_ok39
  %eq.len = icmp eq i64 %eq.lhs.len35, %eq.rhs.len43
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale48:                                      ; preds = %str_gen_check46
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok47

str.eq.then:                                      ; preds = %str_ok47
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 1
  %eq.lhs.data51 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data51, ptr %eq.rhs.data, i64 %eq.lhs.len35)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok47
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %or.69.then, label %or.69.else

or.69.then:                                       ; preds = %str.eq.merge
  br label %or.69.exit

or.69.else:                                       ; preds = %str.eq.merge
  %var.load52 = load ptr, ptr %var.name, align 8
  %eq.lhs.len53 = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 0
  %eq.lhs.len54 = load i64, ptr %eq.lhs.len53, align 8
  %eq.lhs.len55 = and i64 %eq.lhs.len54, 281474976710655
  %str.tag56 = lshr i64 %eq.lhs.len54, 48
  %str.immortal57 = icmp eq i64 %str.tag56, 0
  br i1 %str.immortal57, label %str_ok59, label %str_gen_check58

or.69.exit:                                       ; preds = %str.eq.merge75, %or.69.then
  %or.69.phi = phi i1 [ %str.eq.result, %or.69.then ], [ %str.eq.result81, %str.eq.merge75 ]
  br i1 %or.69.phi, label %choice.then82, label %choice.exit83

str_gen_check58:                                  ; preds = %or.69.else
  %arena.cur61 = call ptr @dva_arena_current()
  %tag.valid62 = call i1 @dva_arena_validate_tag(ptr %arena.cur61, i64 %str.tag56)
  br i1 %tag.valid62, label %str_ok59, label %str_stale60

str_ok59:                                         ; preds = %str_stale60, %str_gen_check58, %or.69.else
  %eq.rhs.len63 = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len64 = and i64 %eq.rhs.len63, 281474976710655
  %str.tag65 = lshr i64 %eq.rhs.len63, 48
  %str.immortal66 = icmp eq i64 %str.tag65, 0
  br i1 %str.immortal66, label %str_ok68, label %str_gen_check67

str_stale60:                                      ; preds = %str_gen_check58
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok59

str_gen_check67:                                  ; preds = %str_ok59
  %arena.cur70 = call ptr @dva_arena_current()
  %tag.valid71 = call i1 @dva_arena_validate_tag(ptr %arena.cur70, i64 %str.tag65)
  br i1 %tag.valid71, label %str_ok68, label %str_stale69

str_ok68:                                         ; preds = %str_stale69, %str_gen_check67, %str_ok59
  %eq.len72 = icmp eq i64 %eq.lhs.len55, %eq.rhs.len64
  br i1 %eq.len72, label %str.eq.then73, label %str.eq.else74

str_stale69:                                      ; preds = %str_gen_check67
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok68

str.eq.then73:                                    ; preds = %str_ok68
  %eq.lhs.data76 = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 1
  %eq.lhs.data77 = load ptr, ptr %eq.lhs.data76, align 8
  %eq.rhs.data78 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp79 = call i32 @memcmp(ptr %eq.lhs.data77, ptr %eq.rhs.data78, i64 %eq.lhs.len55)
  %eq.cmp.zero80 = icmp eq i32 %eq.memcmp79, 0
  br label %str.eq.merge75

str.eq.else74:                                    ; preds = %str_ok68
  br label %str.eq.merge75

str.eq.merge75:                                   ; preds = %str.eq.else74, %str.eq.then73
  %str.eq.result81 = phi i1 [ %eq.cmp.zero80, %str.eq.then73 ], [ false, %str.eq.else74 ]
  br label %or.69.exit

choice.then82:                                    ; preds = %or.69.exit
  br label %loop.latch.68

choice.exit83:                                    ; preds = %or.69.exit
  %var.load84 = load ptr, ptr %var.ent, align 8
  store ptr %var.load84, ptr %var.dp_ent, align 8
  %var.load85 = load ptr, ptr %var.dp_ent, align 8
  %fld.gep = getelementptr inbounds <{ i64, i64, i16, i8 }>, ptr %var.load85, i32 0, i32 3
  %fld.load = load i8, ptr %fld.gep, align 1
  %coerce.zext = zext i8 %fld.load to i64
  store i64 %coerce.zext, ptr %var.dt, align 8
  %var.load86 = load i64, ptr %var.dt, align 8
  %cmptmp87 = icmp eq i64 %var.load86, 4
  store i1 %cmptmp87, ptr %var.is_d, align 1
  %var.load88 = load i64, ptr %var.dt, align 8
  %cmptmp89 = icmp eq i64 %var.load88, 8
  store i1 %cmptmp89, ptr %var.is_f, align 1
  %var.load90 = load i64, ptr %var.dt, align 8
  %cmptmp91 = icmp eq i64 %var.load90, 10
  store i1 %cmptmp91, ptr %var.is_l, align 1
  %var.load92 = load i64, ptr %var.dt, align 8
  %cmptmp93 = icmp eq i64 %var.load92, 0
  br i1 %cmptmp93, label %choice.then94, label %choice.exit95

choice.then94:                                    ; preds = %choice.exit83
  %var.load96 = load ptr, ptr %var.dir_path, align 8
  %var.load97 = load ptr, ptr %var.name, align 8
  %call.res98 = call ptr @"fs::join"(ptr %var.load96, ptr %var.load97)
  store ptr %call.res98, ptr %var.sub_p, align 8
  %var.load99 = load ptr, ptr %var.sub_p, align 8
  %call.res100 = call ptr @"fs::lstat_meta"(ptr %var.load99)
  store ptr %call.res100, ptr %var.meta, align 8
  %var.load101 = load ptr, ptr %var.meta, align 8
  %niche.ne.null = icmp ne ptr %var.load101, null
  br i1 %niche.ne.null, label %choice.then102, label %choice.exit103

choice.exit95:                                    ; preds = %choice.exit103, %choice.exit83
  %var.load114 = load ptr, ptr %var.name, align 8
  %var.load115 = load i1, ptr %var.is_d, align 1
  %var.load116 = load i1, ptr %var.is_f, align 1
  %var.load117 = load i1, ptr %var.is_l, align 1
  %arena.cur118 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur118, i64 ptrtoint (ptr getelementptr ({ ptr, i1, i1, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load114, ptr %rec.fld, align 8
  %rec.fld119 = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i1 %var.load115, ptr %rec.fld119, align 1
  %rec.fld120 = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i1 %var.load116, ptr %rec.fld120, align 1
  %rec.fld121 = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i1 %var.load117, ptr %rec.fld121, align 1
  %a.load122 = load ptr, ptr %var.res, align 8
  %a.null123 = icmp eq ptr %a.load122, null
  br i1 %a.null123, label %a.create124, label %a.after125

choice.then102:                                   ; preds = %choice.then94
  store ptr %var.load101, ptr %var._104, align 8
  store ptr %var.load101, ptr %var.mi, align 8
  %var.load105 = load ptr, ptr %var.mi, align 8
  %fld.gep106 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load105, i32 0, i32 5
  %fld.load107 = load i1, ptr %fld.gep106, align 1
  store i1 %fld.load107, ptr %var.is_d, align 1
  %var.load108 = load ptr, ptr %var.mi, align 8
  %fld.gep109 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load108, i32 0, i32 6
  %fld.load110 = load i1, ptr %fld.gep109, align 1
  store i1 %fld.load110, ptr %var.is_f, align 1
  %var.load111 = load ptr, ptr %var.mi, align 8
  %fld.gep112 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load111, i32 0, i32 7
  %fld.load113 = load i1, ptr %fld.gep112, align 1
  store i1 %fld.load113, ptr %var.is_l, align 1
  br label %choice.exit103

choice.exit103:                                   ; preds = %choice.then102, %choice.then94
  br label %choice.exit95

a.create124:                                      ; preds = %choice.exit95
  %arena.cur126 = call ptr @dva_arena_current()
  %a.create127 = call ptr @dva_arena_alloc(ptr %arena.cur126, i64 24)
  %arena.cur128 = call ptr @dva_arena_current()
  %a.buf129 = call ptr @dva_arena_alloc(ptr %arena.cur128, i64 128)
  %a.len.gep130 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create127, i32 0, i32 0
  store i64 0, ptr %a.len.gep130, align 8
  %a.data.gep131 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create127, i32 0, i32 1
  store ptr %a.buf129, ptr %a.data.gep131, align 8
  %a.cap.gep132 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create127, i32 0, i32 2
  store i64 16, ptr %a.cap.gep132, align 8
  store ptr %a.create127, ptr %var.res, align 8
  br label %a.after125

a.after125:                                       ; preds = %a.create124, %choice.exit95
  %a.load2133 = load ptr, ptr %var.res, align 8
  br label %a.check

a.check:                                          ; preds = %a.after125
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2133, i32 0, i32 0
  %a.len134 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2133, i32 0, i32 2
  %a.cap135 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len134, %a.cap135
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2133)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2133, i32 0, i32 1
  %a.cur.data136 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2133, i32 0, i32 0
  %a.cur.len137 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data136, i64 %a.cur.len137
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len137, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2133, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.68

a.create146:                                      ; preds = %loop.exit.68
  %arena.cur148 = call ptr @dva_arena_current()
  %a.create149 = call ptr @dva_arena_alloc(ptr %arena.cur148, i64 24)
  %arena.cur150 = call ptr @dva_arena_current()
  %a.buf151 = call ptr @dva_arena_alloc(ptr %arena.cur150, i64 128)
  %a.len.gep152 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create149, i32 0, i32 0
  store i64 0, ptr %a.len.gep152, align 8
  %a.data.gep153 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create149, i32 0, i32 1
  store ptr %a.buf151, ptr %a.data.gep153, align 8
  %a.cap.gep154 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create149, i32 0, i32 2
  store i64 16, ptr %a.cap.gep154, align 8
  store ptr %a.create149, ptr %var.res, align 8
  br label %a.after147

a.after147:                                       ; preds = %a.create146, %loop.exit.68
  %a.load2155 = load ptr, ptr %var.res, align 8
  ret ptr %a.load2155
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

define i64 @"fs::open_wronly_creat_trunc"() #1 {
entry:
  ret i64 577
}

define ptr @"fs::read_to_string"(ptr %0) #1 {
entry:
  %var.n92 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.70 = alloca i64, align 8
  %loop.idx.70 = alloca i64, align 8
  %"var.read_err'" = alloca i1, align 1
  %var.chunk = alloca ptr, align 8
  %"var.b'" = alloca ptr, align 8
  %var.n = alloca i64, align 8
  %var.buf = alloca ptr, align 8
  %var.sz = alloca i64, align 8
  %var.rc = alloca i64, align 8
  %"var.s'" = alloca ptr, align 8
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
  br i1 %cmptmp, label %choice.then, label %choice.exit

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
  ret ptr null

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %call.res10 = call ptr @"fs::empty_stat"()
  store ptr %call.res10, ptr %"var.s'", align 8
  %var.load11 = load i64, ptr %var.fd, align 8
  %var.load12 = load ptr, ptr %"var.s'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load12 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %coerce.trunc = trunc i64 %var.load11 to i32
  %call.res13 = call i64 @fstat(i32 %coerce.trunc, ptr %addr.ffi.clean)
  store i64 %call.res13, ptr %var.rc, align 8
  %var.load14 = load i64, ptr %var.rc, align 8
  %cmptmp15 = icmp eq i64 %var.load14, 0
  br i1 %cmptmp15, label %choice.then16, label %choice.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then16:                                    ; preds = %choice.exit
  %var.load18 = load ptr, ptr %"var.s'", align 8
  %call.res19 = call i64 @"fs::stat_size"(ptr %var.load18)
  %max = call i64 @llvm.smax.i64(i64 %call.res19, i64 0)
  br label %choice.exit17

choice.else:                                      ; preds = %choice.exit
  br label %choice.exit17

choice.exit17:                                    ; preds = %choice.else, %choice.then16
  %choice.res = phi i64 [ %max, %choice.then16 ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.sz, align 8
  %var.load20 = load i64, ptr %var.sz, align 8
  %cmptmp21 = icmp sgt i64 %var.load20, 0
  br i1 %cmptmp21, label %choice.then22, label %choice.else23

choice.then22:                                    ; preds = %choice.exit17
  %var.load25 = load i64, ptr %var.sz, align 8
  %arena.cur26 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 24)
  %cap.neg = icmp slt i64 %var.load25, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load25
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum27 = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf28 = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf28, label %str_overflow_abort30, label %b.buf.len29

choice.else23:                                    ; preds = %choice.exit17
  %copy.len = load i64, ptr @str.5.struct, align 8
  %copy.len59 = and i64 %copy.len, 281474976710655
  %str.tag60 = lshr i64 %copy.len, 48
  %str.immortal61 = icmp eq i64 %str.tag60, 0
  br i1 %str.immortal61, label %str_ok63, label %str_gen_check62

choice.exit24:                                    ; preds = %choice.exit191, %choice.exit45
  %choice.res194 = phi ptr [ %choice.res58, %choice.exit45 ], [ %choice.res193, %choice.exit191 ]
  ret ptr %choice.res194

b.buf.len29:                                      ; preds = %str_overflow_abort30, %choice.then22
  %arena.cur31 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 %sum27)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.buf, align 8
  %var.load32 = load i64, ptr %var.fd, align 8
  %var.load33 = load ptr, ptr %var.buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load33, i32 0, i32 1
  %b.ptr34 = load ptr, ptr %b.ptr, align 8
  %addr.ffi.int35 = ptrtoint ptr %b.ptr34 to i64
  %addr.ffi.masked36 = and i64 %addr.ffi.int35, 281474976710655
  %addr.ffi.clean37 = inttoptr i64 %addr.ffi.masked36 to ptr
  %var.load38 = load i64, ptr %var.sz, align 8
  %coerce.trunc39 = trunc i64 %var.load32 to i32
  %call.res40 = call i64 @read(i32 %coerce.trunc39, ptr %addr.ffi.clean37, i64 %var.load38)
  store i64 %call.res40, ptr %var.n, align 8
  %var.load41 = load i64, ptr %var.fd, align 8
  %coerce.trunc42 = trunc i64 %var.load41 to i32
  %call.res43 = call i32 @close(i32 %coerce.trunc42)
  %var.load44 = load i64, ptr %var.n, align 8
  %cmptmp46 = icmp slt i64 %var.load44, 0
  br i1 %cmptmp46, label %choice.case, label %choice.next

str_overflow_abort30:                             ; preds = %choice.then22
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len29

choice.exit45:                                    ; preds = %b.freeze.done, %choice.case47, %choice.case
  %choice.res58 = phi ptr [ null, %choice.case ], [ @str.5.struct, %choice.case47 ], [ %builder.freeze, %b.freeze.done ]
  br label %choice.exit24

choice.case:                                      ; preds = %b.buf.len29
  br label %choice.exit45

choice.next:                                      ; preds = %b.buf.len29
  %val.match = icmp eq i64 %var.load44, 0
  br i1 %val.match, label %choice.case47, label %choice.next48

choice.case47:                                    ; preds = %choice.next
  br label %choice.exit45

choice.next48:                                    ; preds = %choice.next
  %var.load49 = load i64, ptr %var.n, align 8
  %b.load = load ptr, ptr %var.buf, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap50 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load49, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

b.len_big_check:                                  ; preds = %choice.next48
  %b.len.big = icmp sgt i64 %var.load49, %b.cap50
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load49, ptr %b.len.gep51, align 8
  %var.load52 = load ptr, ptr %var.buf, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load52, i32 0, i32 0
  %b.freeze.len53 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load52, i32 0, i32 1
  %b.freeze.data54 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.len_oob:                                        ; preds = %b.len_big_check, %choice.next48
  %4 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data54, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data54, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data54, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len53, 1
  %arena.cur55 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data54, i64 %b.freeze.len53, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len53
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.len_ok
  %b.freeze.data56 = phi ptr [ %b.freeze.data54, %b.len_ok ], [ %b.freeze.data54, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur57 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len53, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data56, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load52, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load52, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load52, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit45

str_gen_check62:                                  ; preds = %choice.else23
  %arena.cur65 = call ptr @dva_arena_current()
  %tag.valid66 = call i1 @dva_arena_validate_tag(ptr %arena.cur65, i64 %str.tag60)
  br i1 %tag.valid66, label %str_ok63, label %str_stale64

str_ok63:                                         ; preds = %str_stale64, %str_gen_check62, %choice.else23
  %copy.len67 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %copy.alen = add i64 %copy.len59, 1
  %arena.cur68 = call ptr @dva_arena_current()
  %copy.buf = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 %copy.alen)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %copy.buf, ptr align 1 %copy.len67, i64 %copy.len59, i1 false)
  %copy.nul = getelementptr i8, ptr %copy.buf, i64 %copy.len59
  store i8 0, ptr %copy.nul, align 1
  %arena.cur69 = call ptr @dva_arena_current()
  %copy.str = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 16)
  %str.copy.len.gep = getelementptr inbounds { i64, ptr }, ptr %copy.str, i32 0, i32 0
  store i64 %copy.len59, ptr %str.copy.len.gep, align 8
  %str.copy.data.gep = getelementptr inbounds { i64, ptr }, ptr %copy.str, i32 0, i32 1
  store ptr %copy.buf, ptr %str.copy.data.gep, align 8
  store ptr %copy.str, ptr %"var.b'", align 8
  %arena.cur70 = call ptr @dva_arena_current()
  %builder.new71 = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 24)
  %b.data.gep72 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new71, i32 0, i32 1
  %b.len.gep73 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new71, i32 0, i32 0
  %b.cap.gep74 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new71, i32 0, i32 2
  %b.buf.len75 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4096, i64 1)
  %sum76 = extractvalue { i64, i1 } %b.buf.len75, 0
  %ovf77 = extractvalue { i64, i1 } %b.buf.len75, 1
  br i1 %ovf77, label %str_overflow_abort79, label %b.buf.len78

str_stale64:                                      ; preds = %str_gen_check62
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok63

b.buf.len78:                                      ; preds = %str_overflow_abort79, %str_ok63
  %arena.cur80 = call ptr @dva_arena_current()
  %b.buf81 = call ptr @dva_arena_alloc(ptr %arena.cur80, i64 %sum76)
  %b.nul082 = getelementptr i8, ptr %b.buf81, i64 0
  store i8 0, ptr %b.nul082, align 1
  store i64 0, ptr %b.len.gep73, align 8
  store ptr %b.buf81, ptr %b.data.gep72, align 8
  store i64 4096, ptr %b.cap.gep74, align 8
  store ptr %builder.new71, ptr %var.chunk, align 8
  store i1 false, ptr %"var.read_err'", align 1
  store i64 0, ptr %loop.idx.70, align 8
  br label %loop.header.70

str_overflow_abort79:                             ; preds = %str_ok63
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len78

loop.header.70:                                   ; preds = %loop.latch.70, %b.buf.len78
  %counter.load = load i64, ptr %loop.idx.70, align 8
  br label %loop.body.70

loop.body.70:                                     ; preds = %loop.header.70
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.70, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load83 = load i64, ptr %var.fd, align 8
  %var.load84 = load ptr, ptr %var.chunk, align 8
  %b.ptr85 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load84, i32 0, i32 1
  %b.ptr86 = load ptr, ptr %b.ptr85, align 8
  %addr.ffi.int87 = ptrtoint ptr %b.ptr86 to i64
  %addr.ffi.masked88 = and i64 %addr.ffi.int87, 281474976710655
  %addr.ffi.clean89 = inttoptr i64 %addr.ffi.masked88 to ptr
  %coerce.trunc90 = trunc i64 %var.load83 to i32
  %call.res91 = call i64 @read(i32 %coerce.trunc90, ptr %addr.ffi.clean89, i64 4096)
  store i64 %call.res91, ptr %var.n92, align 8
  %var.load93 = load i64, ptr %var.n92, align 8
  %cmptmp94 = icmp slt i64 %var.load93, 0
  br i1 %cmptmp94, label %choice.then95, label %choice.exit96

loop.exit.nat.70:                                 ; No predecessors!
  br label %loop.exit.70

loop.latch.70:                                    ; preds = %concat.tot.len179
  %step.val = load i64, ptr %loop.step.70, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.70, align 8
  br label %loop.header.70

loop.exit.70:                                     ; preds = %choice.then99, %choice.then95, %loop.exit.nat.70
  %var.load185 = load i64, ptr %var.fd, align 8
  %coerce.trunc186 = trunc i64 %var.load185 to i32
  %call.res187 = call i32 @close(i32 %coerce.trunc186)
  %var.load188 = load i1, ptr %"var.read_err'", align 1
  br i1 %var.load188, label %choice.then189, label %choice.else190

choice.then95:                                    ; preds = %loop.body.70
  store i1 true, ptr %"var.read_err'", align 1
  br label %loop.exit.70

choice.exit96:                                    ; preds = %loop.body.70
  %var.load97 = load i64, ptr %var.n92, align 8
  %cmptmp98 = icmp eq i64 %var.load97, 0
  br i1 %cmptmp98, label %choice.then99, label %choice.exit100

choice.then99:                                    ; preds = %choice.exit96
  br label %loop.exit.70

choice.exit100:                                   ; preds = %choice.exit96
  %var.load101 = load i64, ptr %var.n92, align 8
  %b.load102 = load ptr, ptr %var.chunk, align 8
  %b.cap103 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 2
  %b.cap104 = load i64, ptr %b.cap103, align 8
  %b.len.neg105 = icmp slt i64 %var.load101, 0
  br i1 %b.len.neg105, label %b.len_oob108, label %b.len_big_check106

b.len_big_check106:                               ; preds = %choice.exit100
  %b.len.big109 = icmp sgt i64 %var.load101, %b.cap104
  br i1 %b.len.big109, label %b.len_oob108, label %b.len_ok107

b.len_ok107:                                      ; preds = %b.len_oob108, %b.len_big_check106
  %b.len.gep110 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 0
  store i64 %var.load101, ptr %b.len.gep110, align 8
  %var.load111 = load ptr, ptr %"var.b'", align 8
  %var.load112 = load ptr, ptr %var.chunk, align 8
  %b.freeze.len113 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load112, i32 0, i32 0
  %b.freeze.len114 = load i64, ptr %b.freeze.len113, align 8
  %b.freeze.data115 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load112, i32 0, i32 1
  %b.freeze.data116 = load ptr, ptr %b.freeze.data115, align 8
  %b.freeze.arena117 = call ptr @dva_arena_current()
  %b.freeze.nc.gep118 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena117, i32 0, i32 1
  %b.freeze.nc119 = load i64, ptr %b.freeze.nc.gep118, align 8
  %b.freeze.has.chunk120 = icmp sgt i64 %b.freeze.nc119, 0
  br i1 %b.freeze.has.chunk120, label %b.freeze.check121, label %b.freeze.done123

b.len_oob108:                                     ; preds = %b.len_big_check106, %choice.exit100
  %7 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok107

b.freeze.check121:                                ; preds = %b.len_ok107
  %b.freeze.last.idx124 = sub i64 %b.freeze.nc119, 1
  %b.freeze.chunks.gep125 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena117, i32 0, i32 3
  %b.freeze.chunk.slot126 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep125, i64 0, i64 %b.freeze.last.idx124
  %b.freeze.last.chunk127 = load ptr, ptr %b.freeze.chunk.slot126, align 8
  %b.freeze.off.gep128 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena117, i32 0, i32 2
  %b.freeze.off129 = load i64, ptr %b.freeze.off.gep128, align 8
  %b.freeze.bump130 = getelementptr i8, ptr %b.freeze.last.chunk127, i64 %b.freeze.off129
  %b.freeze.cap.gep131 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena117, i32 0, i32 0
  %b.freeze.cap132 = load i64, ptr %b.freeze.cap.gep131, align 8
  %b.freeze.chunk.end133 = getelementptr i8, ptr %b.freeze.last.chunk127, i64 %b.freeze.cap132
  %b.freeze.ge.chunk134 = icmp uge ptr %b.freeze.data116, %b.freeze.last.chunk127
  %b.freeze.lt.end135 = icmp ult ptr %b.freeze.data116, %b.freeze.chunk.end133
  %b.freeze.in.chunk136 = and i1 %b.freeze.ge.chunk134, %b.freeze.lt.end135
  %b.freeze.ge.bump137 = icmp uge ptr %b.freeze.data116, %b.freeze.bump130
  %b.freeze.reaped138 = and i1 %b.freeze.in.chunk136, %b.freeze.ge.bump137
  br i1 %b.freeze.reaped138, label %b.freeze.copy122, label %b.freeze.done123

b.freeze.copy122:                                 ; preds = %b.freeze.check121
  %b.freeze.alen139 = add i64 %b.freeze.len114, 1
  %arena.cur140 = call ptr @dva_arena_current()
  %b.freeze.fresh141 = call ptr @dva_arena_alloc(ptr %arena.cur140, i64 %b.freeze.alen139)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh141, ptr align 1 %b.freeze.data116, i64 %b.freeze.len114, i1 false)
  %b.freeze.nul142 = getelementptr i8, ptr %b.freeze.fresh141, i64 %b.freeze.len114
  store i8 0, ptr %b.freeze.nul142, align 1
  br label %b.freeze.done123

b.freeze.done123:                                 ; preds = %b.freeze.copy122, %b.freeze.check121, %b.len_ok107
  %b.freeze.data143 = phi ptr [ %b.freeze.data116, %b.len_ok107 ], [ %b.freeze.data116, %b.freeze.check121 ], [ %b.freeze.fresh141, %b.freeze.copy122 ]
  %arena.cur144 = call ptr @dva_arena_current()
  %builder.freeze145 = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 16)
  %str.build.len.gep146 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze145, i32 0, i32 0
  store i64 %b.freeze.len114, ptr %str.build.len.gep146, align 8
  %str.build.data.gep147 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze145, i32 0, i32 1
  store ptr %b.freeze.data143, ptr %str.build.data.gep147, align 8
  %b.freeze.rst.len148 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load112, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len148, align 8
  %b.freeze.rst.data149 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load112, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data149, align 8
  %b.freeze.rst.cap150 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load112, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap150, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load111, i32 0, i32 0
  %concat.lhs151 = load i64, ptr %concat.lhs, align 8
  %concat.lhs152 = and i64 %concat.lhs151, 281474976710655
  %str.tag153 = lshr i64 %concat.lhs151, 48
  %str.immortal154 = icmp eq i64 %str.tag153, 0
  br i1 %str.immortal154, label %str_ok156, label %str_gen_check155

str_gen_check155:                                 ; preds = %b.freeze.done123
  %arena.cur158 = call ptr @dva_arena_current()
  %tag.valid159 = call i1 @dva_arena_validate_tag(ptr %arena.cur158, i64 %str.tag153)
  br i1 %tag.valid159, label %str_ok156, label %str_stale157

str_ok156:                                        ; preds = %str_stale157, %str_gen_check155, %b.freeze.done123
  %concat.lhs160 = getelementptr inbounds { i64, ptr }, ptr %var.load111, i32 0, i32 1
  %concat.lhs161 = load ptr, ptr %concat.lhs160, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %builder.freeze145, i32 0, i32 0
  %concat.rhs162 = load i64, ptr %concat.rhs, align 8
  %concat.rhs163 = and i64 %concat.rhs162, 281474976710655
  %str.tag164 = lshr i64 %concat.rhs162, 48
  %str.immortal165 = icmp eq i64 %str.tag164, 0
  br i1 %str.immortal165, label %str_ok167, label %str_gen_check166

str_stale157:                                     ; preds = %str_gen_check155
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok156

str_gen_check166:                                 ; preds = %str_ok156
  %arena.cur169 = call ptr @dva_arena_current()
  %tag.valid170 = call i1 @dva_arena_validate_tag(ptr %arena.cur169, i64 %str.tag164)
  br i1 %tag.valid170, label %str_ok167, label %str_stale168

str_ok167:                                        ; preds = %str_stale168, %str_gen_check166, %str_ok156
  %concat.rhs171 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze145, i32 0, i32 1
  %concat.rhs172 = load ptr, ptr %concat.rhs171, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs152, i64 %concat.rhs163)
  %sum173 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf174 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf174, label %str_overflow_abort176, label %concat.sum.len175

str_stale168:                                     ; preds = %str_gen_check166
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok167

concat.sum.len175:                                ; preds = %str_overflow_abort176, %str_ok167
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum173, i64 1)
  %sum177 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf178 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf178, label %str_overflow_abort180, label %concat.tot.len179

str_overflow_abort176:                            ; preds = %str_ok167
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len175

concat.tot.len179:                                ; preds = %str_overflow_abort180, %concat.sum.len175
  %arena.cur181 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur181, i64 %sum177)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs161, i64 %concat.lhs152, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs152
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs172, i64 %concat.rhs163, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum173
  store i8 0, ptr %concat.nul, align 1
  %arena.cur182 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 16)
  %str.build.len.gep183 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum173, ptr %str.build.len.gep183, align 8
  %str.build.data.gep184 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep184, align 8
  store ptr %concat.str, ptr %"var.b'", align 8
  br label %loop.latch.70

str_overflow_abort180:                            ; preds = %concat.sum.len175
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len179

choice.then189:                                   ; preds = %loop.exit.70
  br label %choice.exit191

choice.else190:                                   ; preds = %loop.exit.70
  %var.load192 = load ptr, ptr %"var.b'", align 8
  br label %choice.exit191

choice.exit191:                                   ; preds = %choice.else190, %choice.then189
  %choice.res193 = phi ptr [ null, %choice.then189 ], [ %var.load192, %choice.else190 ]
  br label %choice.exit24
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #0

define i1 @"fs::write_file"(ptr %0, ptr %1) #1 {
entry:
  %var.rc = alloca i64, align 8
  %var.w = alloca i64, align 8
  %var.v = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.71 = alloca i64, align 8
  %loop.idx.71 = alloca i64, align 8
  %"var.ok'" = alloca i1, align 1
  %"var.off'" = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var.content = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  store ptr %1, ptr %var.content, align 8
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
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
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
  %call.res = call i64 @"fs::open_wronly_creat_trunc"()
  %coerce.trunc = trunc i64 %call.res to i32
  %call.res9 = call i32 @open(ptr %arg.str.ptr8, i32 %coerce.trunc, i64 420)
  store i32 %call.res9, ptr %var.fd, align 4
  %var.load10 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load10, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len6:                                     ; preds = %str_overflow_abort, %nulcopy
  %arena.cur7 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load11 = load ptr, ptr %var.content, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %str.len.query12 = load i64, ptr %str.len.query, align 8
  %str.len.query13 = and i64 %str.len.query12, 281474976710655
  %str.tag14 = lshr i64 %str.len.query12, 48
  %str.immortal15 = icmp eq i64 %str.tag14, 0
  br i1 %str.immortal15, label %str_ok17, label %str_gen_check16

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check16:                                  ; preds = %choice.exit
  %arena.cur19 = call ptr @dva_arena_current()
  %tag.valid20 = call i1 @dva_arena_validate_tag(ptr %arena.cur19, i64 %str.tag14)
  br i1 %tag.valid20, label %str_ok17, label %str_stale18

str_ok17:                                         ; preds = %str_stale18, %str_gen_check16, %choice.exit
  store i64 %str.len.query13, ptr %var.len, align 8
  store i64 0, ptr %"var.off'", align 8
  store i1 true, ptr %"var.ok'", align 1
  store i64 0, ptr %loop.idx.71, align 8
  br label %loop.header.71

str_stale18:                                      ; preds = %str_gen_check16
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok17

loop.header.71:                                   ; preds = %loop.latch.71, %str_ok17
  %counter.load = load i64, ptr %loop.idx.71, align 8
  br label %loop.body.71

loop.body.71:                                     ; preds = %loop.header.71
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.71, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load21 = load i64, ptr %"var.off'", align 8
  %var.load22 = load i64, ptr %var.len, align 8
  %cmptmp23 = icmp sge i64 %var.load21, %var.load22
  br i1 %cmptmp23, label %choice.then24, label %choice.exit25

loop.exit.nat.71:                                 ; No predecessors!
  br label %loop.exit.71

loop.latch.71:                                    ; preds = %choice.exit85
  %step.val = load i64, ptr %loop.step.71, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.71, align 8
  br label %loop.header.71

loop.exit.71:                                     ; preds = %choice.then84, %choice.then24, %loop.exit.nat.71
  %var.load88 = load i64, ptr %var.fd, align 8
  %coerce.trunc89 = trunc i64 %var.load88 to i32
  %call.res90 = call i32 @close(i32 %coerce.trunc89)
  store i32 %call.res90, ptr %var.rc, align 4
  %var.load91 = load i1, ptr %"var.ok'", align 1
  br i1 %var.load91, label %and.72.then, label %and.72.else

choice.then24:                                    ; preds = %loop.body.71
  br label %loop.exit.71

choice.exit25:                                    ; preds = %loop.body.71
  %var.load26 = load ptr, ptr %var.content, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %s.read.len27 = load i64, ptr %s.read.len, align 8
  %s.read.len28 = and i64 %s.read.len27, 281474976710655
  %str.tag29 = lshr i64 %s.read.len27, 48
  %str.immortal30 = icmp eq i64 %str.tag29, 0
  br i1 %str.immortal30, label %str_ok32, label %str_gen_check31

str_gen_check31:                                  ; preds = %choice.exit25
  %arena.cur34 = call ptr @dva_arena_current()
  %tag.valid35 = call i1 @dva_arena_validate_tag(ptr %arena.cur34, i64 %str.tag29)
  br i1 %tag.valid35, label %str_ok32, label %str_stale33

str_ok32:                                         ; preds = %str_stale33, %str_gen_check31, %choice.exit25
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 1
  %s.read.data36 = load ptr, ptr %s.read.data, align 8
  %var.load37 = load i64, ptr %"var.off'", align 8
  %var.load38 = load i64, ptr %var.len, align 8
  %start.is_neg = icmp slt i64 %var.load37, 0
  %rel.start = add i64 %s.read.len28, %var.load37
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load37
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
  %view.data = getelementptr i8, ptr %s.read.data36, i64 %final.start
  %arena.cur39 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %var.v, align 8
  %var.load40 = load i64, ptr %var.fd, align 8
  %var.load41 = load ptr, ptr %var.v, align 8
  %arg.str.ptr42 = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 1
  %arg.str.ptr43 = load ptr, ptr %arg.str.ptr42, align 8
  %arg.str.ptr44 = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 0
  %arg.str.ptr45 = load i64, ptr %arg.str.ptr44, align 8
  %arg.str.ptr46 = and i64 %arg.str.ptr45, 281474976710655
  %str.tag47 = lshr i64 %arg.str.ptr45, 48
  %str.immortal48 = icmp eq i64 %str.tag47, 0
  br i1 %str.immortal48, label %str_ok50, label %str_gen_check49

str_stale33:                                      ; preds = %str_gen_check31
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok32

str_gen_check49:                                  ; preds = %str_ok32
  %arena.cur52 = call ptr @dva_arena_current()
  %tag.valid53 = call i1 @dva_arena_validate_tag(ptr %arena.cur52, i64 %str.tag47)
  br i1 %tag.valid53, label %str_ok50, label %str_stale51

str_ok50:                                         ; preds = %str_stale51, %str_gen_check49, %str_ok32
  %nulcheck.gep54 = getelementptr i8, ptr %arg.str.ptr43, i64 %arg.str.ptr46
  %nulcheck.byte55 = load i8, ptr %nulcheck.gep54, align 1
  %nulcheck56 = icmp eq i8 %nulcheck.byte55, 0
  br i1 %nulcheck56, label %arg.str.ptr57, label %nulcopy58

str_stale51:                                      ; preds = %str_gen_check49
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok50

arg.str.ptr57:                                    ; preds = %str_ok50
  br label %nulmerge59

nulcopy58:                                        ; preds = %str_ok50
  %nulcopy.len60 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr46, i64 1)
  %sum61 = extractvalue { i64, i1 } %nulcopy.len60, 0
  %ovf62 = extractvalue { i64, i1 } %nulcopy.len60, 1
  br i1 %ovf62, label %str_overflow_abort64, label %nulcopy.len63

nulmerge59:                                       ; preds = %nulcopy.len63, %arg.str.ptr57
  %arg.str.ptr68 = phi ptr [ %arg.str.ptr43, %arg.str.ptr57 ], [ %nulcopy.buf66, %nulcopy.len63 ]
  %var.load69 = load ptr, ptr %var.v, align 8
  %str.len.query70 = getelementptr inbounds { i64, ptr }, ptr %var.load69, i32 0, i32 0
  %str.len.query71 = load i64, ptr %str.len.query70, align 8
  %str.len.query72 = and i64 %str.len.query71, 281474976710655
  %str.tag73 = lshr i64 %str.len.query71, 48
  %str.immortal74 = icmp eq i64 %str.tag73, 0
  br i1 %str.immortal74, label %str_ok76, label %str_gen_check75

nulcopy.len63:                                    ; preds = %str_overflow_abort64, %nulcopy58
  %arena.cur65 = call ptr @dva_arena_current()
  %nulcopy.buf66 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 %sum61)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf66, ptr align 1 %arg.str.ptr43, i64 %arg.str.ptr46, i1 false)
  %nulcopy.nul67 = getelementptr i8, ptr %nulcopy.buf66, i64 %arg.str.ptr46
  store i8 0, ptr %nulcopy.nul67, align 1
  br label %nulmerge59

str_overflow_abort64:                             ; preds = %nulcopy58
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len63

str_gen_check75:                                  ; preds = %nulmerge59
  %arena.cur78 = call ptr @dva_arena_current()
  %tag.valid79 = call i1 @dva_arena_validate_tag(ptr %arena.cur78, i64 %str.tag73)
  br i1 %tag.valid79, label %str_ok76, label %str_stale77

str_ok76:                                         ; preds = %str_stale77, %str_gen_check75, %nulmerge59
  %coerce.trunc80 = trunc i64 %var.load40 to i32
  %call.res81 = call i64 @write(i32 %coerce.trunc80, ptr %arg.str.ptr68, i64 %str.len.query72)
  store i64 %call.res81, ptr %var.w, align 8
  %var.load82 = load i64, ptr %var.w, align 8
  %cmptmp83 = icmp sle i64 %var.load82, 0
  br i1 %cmptmp83, label %choice.then84, label %choice.else

str_stale77:                                      ; preds = %str_gen_check75
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok76

choice.then84:                                    ; preds = %str_ok76
  store i1 false, ptr %"var.ok'", align 1
  br label %loop.exit.71

choice.else:                                      ; preds = %str_ok76
  %var.load86 = load i64, ptr %"var.off'", align 8
  %var.load87 = load i64, ptr %var.w, align 8
  %addtmp = add i64 %var.load86, %var.load87
  store i64 %addtmp, ptr %"var.off'", align 8
  br label %choice.exit85

choice.exit85:                                    ; preds = %choice.else
  br label %loop.latch.71

and.72.then:                                      ; preds = %loop.exit.71
  %var.load92 = load i64, ptr %var.rc, align 8
  %cmptmp93 = icmp eq i64 %var.load92, 0
  br label %and.72.exit

and.72.else:                                      ; preds = %loop.exit.71
  br label %and.72.exit

and.72.exit:                                      ; preds = %and.72.else, %and.72.then
  %and.72.phi = phi i1 [ %cmptmp93, %and.72.then ], [ %var.load91, %and.72.else ]
  ret i1 %and.72.phi
}

define i1 @"fs::copy_file"(ptr %0, ptr %1) #1 {
entry:
  %var.w = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.73 = alloca i64, align 8
  %loop.idx.73 = alloca i64, align 8
  %"var.ok'" = alloca i1, align 1
  %var.buf = alloca ptr, align 8
  %var.d_fd = alloca i64, align 8
  %var.s_fd = alloca i64, align 8
  %var.dst_path = alloca ptr, align 8
  %var.src_path = alloca ptr, align 8
  store ptr %0, ptr %var.src_path, align 8
  store ptr %1, ptr %var.dst_path, align 8
  %var.load = load ptr, ptr %var.src_path, align 8
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
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
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
  store i32 %call.res, ptr %var.s_fd, align 4
  %var.load9 = load i64, ptr %var.s_fd, align 8
  %cmptmp = icmp slt i64 %var.load9, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

nulcopy.len6:                                     ; preds = %str_overflow_abort, %nulcopy
  %arena.cur7 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load10 = load ptr, ptr %var.dst_path, align 8
  %arg.str.ptr11 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %arg.str.ptr12 = load ptr, ptr %arg.str.ptr11, align 8
  %arg.str.ptr13 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %arg.str.ptr14 = load i64, ptr %arg.str.ptr13, align 8
  %arg.str.ptr15 = and i64 %arg.str.ptr14, 281474976710655
  %str.tag16 = lshr i64 %arg.str.ptr14, 48
  %str.immortal17 = icmp eq i64 %str.tag16, 0
  br i1 %str.immortal17, label %str_ok19, label %str_gen_check18

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check18:                                  ; preds = %choice.exit
  %arena.cur21 = call ptr @dva_arena_current()
  %tag.valid22 = call i1 @dva_arena_validate_tag(ptr %arena.cur21, i64 %str.tag16)
  br i1 %tag.valid22, label %str_ok19, label %str_stale20

str_ok19:                                         ; preds = %str_stale20, %str_gen_check18, %choice.exit
  %nulcheck.gep23 = getelementptr i8, ptr %arg.str.ptr12, i64 %arg.str.ptr15
  %nulcheck.byte24 = load i8, ptr %nulcheck.gep23, align 1
  %nulcheck25 = icmp eq i8 %nulcheck.byte24, 0
  br i1 %nulcheck25, label %arg.str.ptr26, label %nulcopy27

str_stale20:                                      ; preds = %str_gen_check18
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok19

arg.str.ptr26:                                    ; preds = %str_ok19
  br label %nulmerge28

nulcopy27:                                        ; preds = %str_ok19
  %nulcopy.len29 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr15, i64 1)
  %sum30 = extractvalue { i64, i1 } %nulcopy.len29, 0
  %ovf31 = extractvalue { i64, i1 } %nulcopy.len29, 1
  br i1 %ovf31, label %str_overflow_abort33, label %nulcopy.len32

nulmerge28:                                       ; preds = %nulcopy.len32, %arg.str.ptr26
  %arg.str.ptr37 = phi ptr [ %arg.str.ptr12, %arg.str.ptr26 ], [ %nulcopy.buf35, %nulcopy.len32 ]
  %call.res38 = call i64 @"fs::open_wronly_creat_trunc"()
  %coerce.trunc = trunc i64 %call.res38 to i32
  %call.res39 = call i32 @open(ptr %arg.str.ptr37, i32 %coerce.trunc, i64 420)
  store i32 %call.res39, ptr %var.d_fd, align 4
  %var.load40 = load i64, ptr %var.d_fd, align 8
  %cmptmp41 = icmp slt i64 %var.load40, 0
  br i1 %cmptmp41, label %choice.then42, label %choice.exit43

nulcopy.len32:                                    ; preds = %str_overflow_abort33, %nulcopy27
  %arena.cur34 = call ptr @dva_arena_current()
  %nulcopy.buf35 = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 %sum30)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf35, ptr align 1 %arg.str.ptr12, i64 %arg.str.ptr15, i1 false)
  %nulcopy.nul36 = getelementptr i8, ptr %nulcopy.buf35, i64 %arg.str.ptr15
  store i8 0, ptr %nulcopy.nul36, align 1
  br label %nulmerge28

str_overflow_abort33:                             ; preds = %nulcopy27
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len32

choice.then42:                                    ; preds = %nulmerge28
  %var.load44 = load i64, ptr %var.s_fd, align 8
  %coerce.trunc45 = trunc i64 %var.load44 to i32
  %call.res46 = call i32 @close(i32 %coerce.trunc45)
  ret i1 false

choice.exit43:                                    ; preds = %ret.dead47, %nulmerge28
  %arena.cur48 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 16384, i64 1)
  %sum49 = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf50 = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf50, label %str_overflow_abort52, label %b.buf.len51

ret.dead47:                                       ; No predecessors!
  br label %choice.exit43

b.buf.len51:                                      ; preds = %str_overflow_abort52, %choice.exit43
  %arena.cur53 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 %sum49)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 16384, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.buf, align 8
  store i1 true, ptr %"var.ok'", align 1
  store i64 0, ptr %loop.idx.73, align 8
  br label %loop.header.73

str_overflow_abort52:                             ; preds = %choice.exit43
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len51

loop.header.73:                                   ; preds = %loop.latch.73, %b.buf.len51
  %counter.load = load i64, ptr %loop.idx.73, align 8
  br label %loop.body.73

loop.body.73:                                     ; preds = %loop.header.73
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.73, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load54 = load i64, ptr %var.s_fd, align 8
  %var.load55 = load ptr, ptr %var.buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load55, i32 0, i32 1
  %b.ptr56 = load ptr, ptr %b.ptr, align 8
  %addr.ffi.int = ptrtoint ptr %b.ptr56 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %coerce.trunc57 = trunc i64 %var.load54 to i32
  %call.res58 = call i64 @read(i32 %coerce.trunc57, ptr %addr.ffi.clean, i64 16384)
  store i64 %call.res58, ptr %var.n, align 8
  %var.load59 = load i64, ptr %var.n, align 8
  %cmptmp60 = icmp sle i64 %var.load59, 0
  br i1 %cmptmp60, label %choice.then61, label %choice.exit62

loop.exit.nat.73:                                 ; No predecessors!
  br label %loop.exit.73

loop.latch.73:                                    ; preds = %choice.exit77
  %step.val = load i64, ptr %loop.step.73, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.73, align 8
  br label %loop.header.73

loop.exit.73:                                     ; preds = %choice.then76, %choice.then61, %loop.exit.nat.73
  %var.load78 = load i64, ptr %var.s_fd, align 8
  %coerce.trunc79 = trunc i64 %var.load78 to i32
  %call.res80 = call i32 @close(i32 %coerce.trunc79)
  %var.load81 = load i64, ptr %var.d_fd, align 8
  %coerce.trunc82 = trunc i64 %var.load81 to i32
  %call.res83 = call i32 @close(i32 %coerce.trunc82)
  %var.load84 = load i1, ptr %"var.ok'", align 1
  ret i1 %var.load84

choice.then61:                                    ; preds = %loop.body.73
  br label %loop.exit.73

choice.exit62:                                    ; preds = %loop.body.73
  %var.load63 = load i64, ptr %var.d_fd, align 8
  %var.load64 = load ptr, ptr %var.buf, align 8
  %b.ptr65 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load64, i32 0, i32 1
  %b.ptr66 = load ptr, ptr %b.ptr65, align 8
  %addr.ffi.int67 = ptrtoint ptr %b.ptr66 to i64
  %addr.ffi.masked68 = and i64 %addr.ffi.int67, 281474976710655
  %addr.ffi.clean69 = inttoptr i64 %addr.ffi.masked68 to ptr
  %var.load70 = load i64, ptr %var.n, align 8
  %coerce.trunc71 = trunc i64 %var.load63 to i32
  %call.res72 = call i64 @write(i32 %coerce.trunc71, ptr %addr.ffi.clean69, i64 %var.load70)
  store i64 %call.res72, ptr %var.w, align 8
  %var.load73 = load i64, ptr %var.w, align 8
  %var.load74 = load i64, ptr %var.n, align 8
  %cmptmp75 = icmp ne i64 %var.load73, %var.load74
  br i1 %cmptmp75, label %choice.then76, label %choice.exit77

choice.then76:                                    ; preds = %choice.exit62
  store i1 false, ptr %"var.ok'", align 1
  br label %loop.exit.73

choice.exit77:                                    ; preds = %choice.exit62
  br label %loop.latch.73
}

define i1 @"fs::rename_path"(ptr %0, ptr %1) #1 {
entry:
  %var.new_p = alloca ptr, align 8
  %var.old_p = alloca ptr, align 8
  store ptr %0, ptr %var.old_p, align 8
  store ptr %1, ptr %var.new_p, align 8
  %var.load = load ptr, ptr %var.old_p, align 8
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
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
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
  %var.load9 = load ptr, ptr %var.new_p, align 8
  %arg.str.ptr10 = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %arg.str.ptr11 = load ptr, ptr %arg.str.ptr10, align 8
  %arg.str.ptr12 = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %arg.str.ptr13 = load i64, ptr %arg.str.ptr12, align 8
  %arg.str.ptr14 = and i64 %arg.str.ptr13, 281474976710655
  %str.tag15 = lshr i64 %arg.str.ptr13, 48
  %str.immortal16 = icmp eq i64 %str.tag15, 0
  br i1 %str.immortal16, label %str_ok18, label %str_gen_check17

nulcopy.len6:                                     ; preds = %str_overflow_abort, %nulcopy
  %arena.cur7 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len6

str_gen_check17:                                  ; preds = %nulmerge
  %arena.cur20 = call ptr @dva_arena_current()
  %tag.valid21 = call i1 @dva_arena_validate_tag(ptr %arena.cur20, i64 %str.tag15)
  br i1 %tag.valid21, label %str_ok18, label %str_stale19

str_ok18:                                         ; preds = %str_stale19, %str_gen_check17, %nulmerge
  %nulcheck.gep22 = getelementptr i8, ptr %arg.str.ptr11, i64 %arg.str.ptr14
  %nulcheck.byte23 = load i8, ptr %nulcheck.gep22, align 1
  %nulcheck24 = icmp eq i8 %nulcheck.byte23, 0
  br i1 %nulcheck24, label %arg.str.ptr25, label %nulcopy26

str_stale19:                                      ; preds = %str_gen_check17
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok18

arg.str.ptr25:                                    ; preds = %str_ok18
  br label %nulmerge27

nulcopy26:                                        ; preds = %str_ok18
  %nulcopy.len28 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr14, i64 1)
  %sum29 = extractvalue { i64, i1 } %nulcopy.len28, 0
  %ovf30 = extractvalue { i64, i1 } %nulcopy.len28, 1
  br i1 %ovf30, label %str_overflow_abort32, label %nulcopy.len31

nulmerge27:                                       ; preds = %nulcopy.len31, %arg.str.ptr25
  %arg.str.ptr36 = phi ptr [ %arg.str.ptr11, %arg.str.ptr25 ], [ %nulcopy.buf34, %nulcopy.len31 ]
  %call.res = call i64 @rename(ptr %arg.str.ptr8, ptr %arg.str.ptr36)
  %cmptmp = icmp eq i64 %call.res, 0
  ret i1 %cmptmp

nulcopy.len31:                                    ; preds = %str_overflow_abort32, %nulcopy26
  %arena.cur33 = call ptr @dva_arena_current()
  %nulcopy.buf34 = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 %sum29)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf34, ptr align 1 %arg.str.ptr11, i64 %arg.str.ptr14, i1 false)
  %nulcopy.nul35 = getelementptr i8, ptr %nulcopy.buf34, i64 %arg.str.ptr14
  store i8 0, ptr %nulcopy.nul35, align 1
  br label %nulmerge27

str_overflow_abort32:                             ; preds = %nulcopy26
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len31
}

define i1 @"fs::create_file"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call i1 @"fs::write_file"(ptr %var.load, ptr @str.5.struct)
  ret i1 %call.res
}

define i1 @"fs::create_dir"(ptr %0) #1 {
entry:
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
  %call.res = call i64 @mkdir(ptr %arg.str.ptr8, i64 493)
  %cmptmp = icmp eq i64 %call.res, 0
  ret i1 %cmptmp

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
}

define i1 @"fs::create_dir_all"(ptr %0) #1 {
entry:
  %var.ok = alloca i1, align 1
  %var.p = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %call.res = call i1 @"fs::is_dir"(ptr %var.load)
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.path, align 8
  %call.res2 = call ptr @"fs::parent"(ptr %var.load1)
  store ptr %call.res2, ptr %var.p, align 8
  %var.load3 = load ptr, ptr %var.p, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %eq.lhs.len4 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len5 = and i64 %eq.lhs.len4, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len4, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.exit52, %choice.then
  %choice.res = phi i1 [ true, %choice.then ], [ %call.res60, %choice.exit52 ]
  ret i1 %choice.res

str_gen_check:                                    ; preds = %choice.else
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else
  %eq.rhs.len = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len6 = and i64 %eq.rhs.len, 281474976710655
  %str.tag7 = lshr i64 %eq.rhs.len, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check9:                                   ; preds = %str_ok
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len5, %eq.rhs.len6
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale11:                                      ; preds = %str_gen_check9
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

str.eq.then:                                      ; preds = %str_ok10
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %eq.lhs.data14 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data14, ptr %eq.rhs.data, i64 %eq.lhs.len5)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok10
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %and.74.then, label %and.74.else

and.74.then:                                      ; preds = %str.eq.merge
  %var.load15 = load ptr, ptr %var.p, align 8
  %var.load16 = load ptr, ptr %var.path, align 8
  %eq.lhs.len17 = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 0
  %eq.lhs.len18 = load i64, ptr %eq.lhs.len17, align 8
  %eq.lhs.len19 = and i64 %eq.lhs.len18, 281474976710655
  %str.tag20 = lshr i64 %eq.lhs.len18, 48
  %str.immortal21 = icmp eq i64 %str.tag20, 0
  br i1 %str.immortal21, label %str_ok23, label %str_gen_check22

and.74.else:                                      ; preds = %str.eq.merge
  br label %and.74.exit

and.74.exit:                                      ; preds = %and.74.else, %str.eq.merge40
  %and.74.phi = phi i1 [ %str.neq48, %str.eq.merge40 ], [ %str.neq, %and.74.else ]
  br i1 %and.74.phi, label %and.75.then, label %and.75.else

str_gen_check22:                                  ; preds = %and.74.then
  %arena.cur25 = call ptr @dva_arena_current()
  %tag.valid26 = call i1 @dva_arena_validate_tag(ptr %arena.cur25, i64 %str.tag20)
  br i1 %tag.valid26, label %str_ok23, label %str_stale24

str_ok23:                                         ; preds = %str_stale24, %str_gen_check22, %and.74.then
  %eq.rhs.len27 = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 0
  %eq.rhs.len28 = load i64, ptr %eq.rhs.len27, align 8
  %eq.rhs.len29 = and i64 %eq.rhs.len28, 281474976710655
  %str.tag30 = lshr i64 %eq.rhs.len28, 48
  %str.immortal31 = icmp eq i64 %str.tag30, 0
  br i1 %str.immortal31, label %str_ok33, label %str_gen_check32

str_stale24:                                      ; preds = %str_gen_check22
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok23

str_gen_check32:                                  ; preds = %str_ok23
  %arena.cur35 = call ptr @dva_arena_current()
  %tag.valid36 = call i1 @dva_arena_validate_tag(ptr %arena.cur35, i64 %str.tag30)
  br i1 %tag.valid36, label %str_ok33, label %str_stale34

str_ok33:                                         ; preds = %str_stale34, %str_gen_check32, %str_ok23
  %eq.len37 = icmp eq i64 %eq.lhs.len19, %eq.rhs.len29
  br i1 %eq.len37, label %str.eq.then38, label %str.eq.else39

str_stale34:                                      ; preds = %str_gen_check32
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok33

str.eq.then38:                                    ; preds = %str_ok33
  %eq.lhs.data41 = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 1
  %eq.lhs.data42 = load ptr, ptr %eq.lhs.data41, align 8
  %eq.rhs.data43 = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 1
  %eq.rhs.data44 = load ptr, ptr %eq.rhs.data43, align 8
  %eq.memcmp45 = call i32 @memcmp(ptr %eq.lhs.data42, ptr %eq.rhs.data44, i64 %eq.lhs.len19)
  %eq.cmp.zero46 = icmp eq i32 %eq.memcmp45, 0
  br label %str.eq.merge40

str.eq.else39:                                    ; preds = %str_ok33
  br label %str.eq.merge40

str.eq.merge40:                                   ; preds = %str.eq.else39, %str.eq.then38
  %str.eq.result47 = phi i1 [ %eq.cmp.zero46, %str.eq.then38 ], [ false, %str.eq.else39 ]
  %str.neq48 = xor i1 %str.eq.result47, true
  br label %and.74.exit

and.75.then:                                      ; preds = %and.74.exit
  %var.load49 = load ptr, ptr %var.p, align 8
  %call.res50 = call i1 @"fs::is_dir"(ptr %var.load49)
  %nottmp = xor i1 %call.res50, true
  br label %and.75.exit

and.75.else:                                      ; preds = %and.74.exit
  br label %and.75.exit

and.75.exit:                                      ; preds = %and.75.else, %and.75.then
  %and.75.phi = phi i1 [ %nottmp, %and.75.then ], [ %and.74.phi, %and.75.else ]
  br i1 %and.75.phi, label %choice.then51, label %choice.exit52

choice.then51:                                    ; preds = %and.75.exit
  %var.load53 = load ptr, ptr %var.p, align 8
  %call.res54 = call i1 @"fs::create_dir_all"(ptr %var.load53)
  store i1 %call.res54, ptr %var.ok, align 1
  %var.load55 = load i1, ptr %var.ok, align 1
  %nottmp56 = xor i1 %var.load55, true
  br i1 %nottmp56, label %choice.then57, label %choice.exit58

choice.exit52:                                    ; preds = %choice.exit58, %and.75.exit
  %var.load59 = load ptr, ptr %var.path, align 8
  %call.res60 = call i1 @"fs::create_dir"(ptr %var.load59)
  br label %choice.exit

choice.then57:                                    ; preds = %choice.then51
  ret i1 false

choice.exit58:                                    ; preds = %ret.dead, %choice.then51
  br label %choice.exit52

ret.dead:                                         ; No predecessors!
  br label %choice.exit58
}

define i1 @"fs::remove"(ptr %0) #1 {
entry:
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %call.res = call i1 @"fs::is_dir"(ptr %var.load)
  br i1 %call.res, label %and.76.then, label %and.76.else

and.76.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.path, align 8
  %call.res2 = call i1 @"fs::is_symlink"(ptr %var.load1)
  %nottmp = xor i1 %call.res2, true
  br label %and.76.exit

and.76.else:                                      ; preds = %entry
  br label %and.76.exit

and.76.exit:                                      ; preds = %and.76.else, %and.76.then
  %and.76.phi = phi i1 [ %nottmp, %and.76.then ], [ %call.res, %and.76.else ]
  br i1 %and.76.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.76.exit
  %var.load3 = load ptr, ptr %var.path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %arg.str.ptr4 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr5 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %arg.str.ptr6 = load i64, ptr %arg.str.ptr5, align 8
  %arg.str.ptr7 = and i64 %arg.str.ptr6, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr6, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.else:                                      ; preds = %and.76.exit
  %var.load13 = load ptr, ptr %var.path, align 8
  %arg.str.ptr14 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %arg.str.ptr15 = load ptr, ptr %arg.str.ptr14, align 8
  %arg.str.ptr16 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %arg.str.ptr17 = load i64, ptr %arg.str.ptr16, align 8
  %arg.str.ptr18 = and i64 %arg.str.ptr17, 281474976710655
  %str.tag19 = lshr i64 %arg.str.ptr17, 48
  %str.immortal20 = icmp eq i64 %str.tag19, 0
  br i1 %str.immortal20, label %str_ok22, label %str_gen_check21

choice.exit:                                      ; preds = %nulmerge31, %nulmerge
  %choice.res = phi i1 [ %cmptmp, %nulmerge ], [ %cmptmp42, %nulmerge31 ]
  ret i1 %choice.res

str_gen_check:                                    ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.then
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr4, i64 %arg.str.ptr7
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr8, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr8:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr7, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len9

nulmerge:                                         ; preds = %nulcopy.len9, %arg.str.ptr8
  %arg.str.ptr11 = phi ptr [ %arg.str.ptr4, %arg.str.ptr8 ], [ %nulcopy.buf, %nulcopy.len9 ]
  %call.res12 = call i64 @rmdir(ptr %arg.str.ptr11)
  %cmptmp = icmp eq i64 %call.res12, 0
  br label %choice.exit

nulcopy.len9:                                     ; preds = %str_overflow_abort, %nulcopy
  %arena.cur10 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr4, i64 %arg.str.ptr7, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr7
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len9

str_gen_check21:                                  ; preds = %choice.else
  %arena.cur24 = call ptr @dva_arena_current()
  %tag.valid25 = call i1 @dva_arena_validate_tag(ptr %arena.cur24, i64 %str.tag19)
  br i1 %tag.valid25, label %str_ok22, label %str_stale23

str_ok22:                                         ; preds = %str_stale23, %str_gen_check21, %choice.else
  %nulcheck.gep26 = getelementptr i8, ptr %arg.str.ptr15, i64 %arg.str.ptr18
  %nulcheck.byte27 = load i8, ptr %nulcheck.gep26, align 1
  %nulcheck28 = icmp eq i8 %nulcheck.byte27, 0
  br i1 %nulcheck28, label %arg.str.ptr29, label %nulcopy30

str_stale23:                                      ; preds = %str_gen_check21
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok22

arg.str.ptr29:                                    ; preds = %str_ok22
  br label %nulmerge31

nulcopy30:                                        ; preds = %str_ok22
  %nulcopy.len32 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr18, i64 1)
  %sum33 = extractvalue { i64, i1 } %nulcopy.len32, 0
  %ovf34 = extractvalue { i64, i1 } %nulcopy.len32, 1
  br i1 %ovf34, label %str_overflow_abort36, label %nulcopy.len35

nulmerge31:                                       ; preds = %nulcopy.len35, %arg.str.ptr29
  %arg.str.ptr40 = phi ptr [ %arg.str.ptr15, %arg.str.ptr29 ], [ %nulcopy.buf38, %nulcopy.len35 ]
  %call.res41 = call i64 @unlink(ptr %arg.str.ptr40)
  %cmptmp42 = icmp eq i64 %call.res41, 0
  br label %choice.exit

nulcopy.len35:                                    ; preds = %str_overflow_abort36, %nulcopy30
  %arena.cur37 = call ptr @dva_arena_current()
  %nulcopy.buf38 = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 %sum33)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf38, ptr align 1 %arg.str.ptr15, i64 %arg.str.ptr18, i1 false)
  %nulcopy.nul39 = getelementptr i8, ptr %nulcopy.buf38, i64 %arg.str.ptr18
  store i8 0, ptr %nulcopy.nul39, align 1
  br label %nulmerge31

str_overflow_abort36:                             ; preds = %nulcopy30
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len35
}

define i1 @"fs::delete_entry"(ptr %0, i1 %1) #1 {
entry:
  %var.is_d = alloca i1, align 1
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i1 %1, ptr %var.is_d, align 1
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call i1 @"fs::remove"(ptr %var.load)
  ret i1 %call.res
}

define i1 @"fs::write_text_file"(ptr %0, ptr %1) #1 {
entry:
  %var.content = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  store ptr %1, ptr %var.content, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %var.load1 = load ptr, ptr %var.content, align 8
  %call.res = call i1 @"fs::write_file"(ptr %var.load, ptr %var.load1)
  ret i1 %call.res
}

define i1 @"fs::remove_all"(ptr %0) #1 {
entry:
  %var.sub_ok = alloca i1, align 1
  %var.sub = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.79 = alloca i64, align 8
  %loop.idx.79 = alloca i64, align 8
  %"var.all_ok'" = alloca i1, align 1
  %var.ents = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %call.res = call i1 @"fs::exists"(ptr %var.load)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %and.77.then, label %and.77.else

and.77.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.path, align 8
  %call.res2 = call i1 @"fs::is_symlink"(ptr %var.load1)
  %nottmp3 = xor i1 %call.res2, true
  br label %and.77.exit

and.77.else:                                      ; preds = %entry
  br label %and.77.exit

and.77.exit:                                      ; preds = %and.77.else, %and.77.then
  %and.77.phi = phi i1 [ %nottmp3, %and.77.then ], [ %nottmp, %and.77.else ]
  br i1 %and.77.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.77.exit
  br label %choice.exit

choice.else:                                      ; preds = %and.77.exit
  %var.load4 = load ptr, ptr %var.path, align 8
  %call.res5 = call i1 @"fs::is_dir"(ptr %var.load4)
  br i1 %call.res5, label %and.78.then, label %and.78.else

choice.exit:                                      ; preds = %choice.exit11, %choice.then
  %choice.res73 = phi i1 [ true, %choice.then ], [ %choice.res, %choice.exit11 ]
  ret i1 %choice.res73

and.78.then:                                      ; preds = %choice.else
  %var.load6 = load ptr, ptr %var.path, align 8
  %call.res7 = call i1 @"fs::is_symlink"(ptr %var.load6)
  %nottmp8 = xor i1 %call.res7, true
  br label %and.78.exit

and.78.else:                                      ; preds = %choice.else
  br label %and.78.exit

and.78.exit:                                      ; preds = %and.78.else, %and.78.then
  %and.78.phi = phi i1 [ %nottmp8, %and.78.then ], [ %call.res5, %and.78.else ]
  br i1 %and.78.phi, label %choice.then9, label %choice.else10

choice.then9:                                     ; preds = %and.78.exit
  %var.load12 = load ptr, ptr %var.path, align 8
  %call.res13 = call ptr @"fs::read_dir"(ptr %var.load12)
  store ptr %call.res13, ptr %var.ents, align 8
  store i1 true, ptr %"var.all_ok'", align 1
  %var.load14 = load ptr, ptr %var.ents, align 8
  %a.load = load ptr, ptr %var.ents, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else10:                                    ; preds = %and.78.exit
  %var.load43 = load ptr, ptr %var.path, align 8
  %arg.str.ptr44 = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 1
  %arg.str.ptr45 = load ptr, ptr %arg.str.ptr44, align 8
  %arg.str.ptr46 = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 0
  %arg.str.ptr47 = load i64, ptr %arg.str.ptr46, align 8
  %arg.str.ptr48 = and i64 %arg.str.ptr47, 281474976710655
  %str.tag49 = lshr i64 %arg.str.ptr47, 48
  %str.immortal50 = icmp eq i64 %str.tag49, 0
  br i1 %str.immortal50, label %str_ok52, label %str_gen_check51

choice.exit11:                                    ; preds = %nulmerge61, %nulmerge
  %choice.res = phi i1 [ %cmptmp, %nulmerge ], [ %cmptmp72, %nulmerge61 ]
  br label %choice.exit

a.create:                                         ; preds = %choice.then9
  %arena.cur = call ptr @dva_arena_current()
  %a.create15 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur16 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create15, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create15, ptr %var.ents, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then9
  %a.load2 = load ptr, ptr %var.ents, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len17 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data18 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.79, align 8
  br label %loop.header.79

loop.header.79:                                   ; preds = %loop.latch.79, %a.after
  %counter.load = load i64, ptr %loop.idx.79, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len17
  br i1 %loop.cond, label %loop.body.79, label %loop.exit.nat.79

loop.body.79:                                     ; preds = %loop.header.79
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.79, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data18, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load19 = load ptr, ptr %var.path, align 8
  %var.load20 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %var.load20, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %call.res21 = call ptr @"fs::join"(ptr %var.load19, ptr %fld.load)
  store ptr %call.res21, ptr %var.sub, align 8
  %var.load22 = load ptr, ptr %var.sub, align 8
  %call.res23 = call i1 @"fs::remove_all"(ptr %var.load22)
  store i1 %call.res23, ptr %var.sub_ok, align 1
  %var.load24 = load i1, ptr %var.sub_ok, align 1
  %nottmp25 = xor i1 %var.load24, true
  br i1 %nottmp25, label %choice.then26, label %choice.exit27

loop.exit.nat.79:                                 ; preds = %loop.header.79
  br label %loop.exit.79

loop.latch.79:                                    ; preds = %choice.exit27
  %step.val = load i64, ptr %loop.step.79, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.79, align 8
  br label %loop.header.79

loop.exit.79:                                     ; preds = %loop.exit.nat.79
  %var.load28 = load i1, ptr %"var.all_ok'", align 1
  %nottmp29 = xor i1 %var.load28, true
  br i1 %nottmp29, label %choice.then30, label %choice.exit31

choice.then26:                                    ; preds = %loop.body.79
  store i1 false, ptr %"var.all_ok'", align 1
  br label %choice.exit27

choice.exit27:                                    ; preds = %choice.then26, %loop.body.79
  br label %loop.latch.79

choice.then30:                                    ; preds = %loop.exit.79
  ret i1 false

choice.exit31:                                    ; preds = %ret.dead, %loop.exit.79
  %var.load32 = load ptr, ptr %var.path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 1
  %arg.str.ptr33 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr34 = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 0
  %arg.str.ptr35 = load i64, ptr %arg.str.ptr34, align 8
  %arg.str.ptr36 = and i64 %arg.str.ptr35, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr35, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit31

str_gen_check:                                    ; preds = %choice.exit31
  %arena.cur37 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur37, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit31
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr33, i64 %arg.str.ptr36
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr38, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr38:                                    ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr36, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len39

nulmerge:                                         ; preds = %nulcopy.len39, %arg.str.ptr38
  %arg.str.ptr41 = phi ptr [ %arg.str.ptr33, %arg.str.ptr38 ], [ %nulcopy.buf, %nulcopy.len39 ]
  %call.res42 = call i64 @rmdir(ptr %arg.str.ptr41)
  %cmptmp = icmp eq i64 %call.res42, 0
  br label %choice.exit11

nulcopy.len39:                                    ; preds = %str_overflow_abort, %nulcopy
  %arena.cur40 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr33, i64 %arg.str.ptr36, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr36
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len39

str_gen_check51:                                  ; preds = %choice.else10
  %arena.cur54 = call ptr @dva_arena_current()
  %tag.valid55 = call i1 @dva_arena_validate_tag(ptr %arena.cur54, i64 %str.tag49)
  br i1 %tag.valid55, label %str_ok52, label %str_stale53

str_ok52:                                         ; preds = %str_stale53, %str_gen_check51, %choice.else10
  %nulcheck.gep56 = getelementptr i8, ptr %arg.str.ptr45, i64 %arg.str.ptr48
  %nulcheck.byte57 = load i8, ptr %nulcheck.gep56, align 1
  %nulcheck58 = icmp eq i8 %nulcheck.byte57, 0
  br i1 %nulcheck58, label %arg.str.ptr59, label %nulcopy60

str_stale53:                                      ; preds = %str_gen_check51
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok52

arg.str.ptr59:                                    ; preds = %str_ok52
  br label %nulmerge61

nulcopy60:                                        ; preds = %str_ok52
  %nulcopy.len62 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr48, i64 1)
  %sum63 = extractvalue { i64, i1 } %nulcopy.len62, 0
  %ovf64 = extractvalue { i64, i1 } %nulcopy.len62, 1
  br i1 %ovf64, label %str_overflow_abort66, label %nulcopy.len65

nulmerge61:                                       ; preds = %nulcopy.len65, %arg.str.ptr59
  %arg.str.ptr70 = phi ptr [ %arg.str.ptr45, %arg.str.ptr59 ], [ %nulcopy.buf68, %nulcopy.len65 ]
  %call.res71 = call i64 @unlink(ptr %arg.str.ptr70)
  %cmptmp72 = icmp eq i64 %call.res71, 0
  br label %choice.exit11

nulcopy.len65:                                    ; preds = %str_overflow_abort66, %nulcopy60
  %arena.cur67 = call ptr @dva_arena_current()
  %nulcopy.buf68 = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 %sum63)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf68, ptr align 1 %arg.str.ptr45, i64 %arg.str.ptr48, i1 false)
  %nulcopy.nul69 = getelementptr i8, ptr %nulcopy.buf68, i64 %arg.str.ptr48
  store i8 0, ptr %nulcopy.nul69, align 1
  br label %nulmerge61

str_overflow_abort66:                             ; preds = %nulcopy60
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len65
}

define ptr @"fs::space"(ptr %0) #1 {
entry:
  %var.avail = alloca i64, align 8
  %var.free = alloca i64, align 8
  %var.total = alloca i64, align 8
  %var.bavail = alloca i64, align 8
  %var.bfree = alloca i64, align 8
  %var.blocks = alloca i64, align 8
  %"var.eff_frsize'" = alloca i64, align 8
  %var.frsize = alloca i64, align 8
  %var.rc = alloca i64, align 8
  %"var.st'" = alloca ptr, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %call.res = call ptr @"fs::empty_statvfs"()
  store ptr %call.res, ptr %"var.st'", align 8
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
  %var.load9 = load ptr, ptr %"var.st'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load9 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res10 = call i64 @statvfs(ptr %arg.str.ptr8, ptr %addr.ffi.clean)
  store i64 %call.res10, ptr %var.rc, align 8
  %var.load11 = load i64, ptr %var.rc, align 8
  %cmptmp = icmp ne i64 %var.load11, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

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
  ret ptr null

choice.exit:                                      ; preds = %ret.dead, %nulmerge
  %var.load12 = load ptr, ptr %"var.st'", align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }, ptr %var.load12, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.frsize, align 8
  %var.load13 = load i64, ptr %var.frsize, align 8
  %cmptmp14 = icmp eq i64 %var.load13, 0
  br i1 %cmptmp14, label %choice.then15, label %choice.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then15:                                    ; preds = %choice.exit
  %var.load17 = load ptr, ptr %"var.st'", align 8
  %fld.gep18 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }, ptr %var.load17, i32 0, i32 0
  %fld.load19 = load i64, ptr %fld.gep18, align 8
  br label %choice.exit16

choice.else:                                      ; preds = %choice.exit
  %var.load20 = load i64, ptr %var.frsize, align 8
  br label %choice.exit16

choice.exit16:                                    ; preds = %choice.else, %choice.then15
  %choice.res = phi i64 [ %fld.load19, %choice.then15 ], [ %var.load20, %choice.else ]
  store i64 %choice.res, ptr %"var.eff_frsize'", align 8
  %var.load21 = load i64, ptr %"var.eff_frsize'", align 8
  %cmptmp22 = icmp eq i64 %var.load21, 0
  br i1 %cmptmp22, label %choice.then23, label %choice.else24

choice.then23:                                    ; preds = %choice.exit16
  br label %choice.exit25

choice.else24:                                    ; preds = %choice.exit16
  %var.load26 = load i64, ptr %"var.eff_frsize'", align 8
  br label %choice.exit25

choice.exit25:                                    ; preds = %choice.else24, %choice.then23
  %choice.res27 = phi i64 [ 4096, %choice.then23 ], [ %var.load26, %choice.else24 ]
  store i64 %choice.res27, ptr %"var.eff_frsize'", align 8
  %var.load28 = load ptr, ptr %"var.st'", align 8
  %fld.gep29 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }, ptr %var.load28, i32 0, i32 2
  %fld.load30 = load i64, ptr %fld.gep29, align 8
  store i64 %fld.load30, ptr %var.blocks, align 8
  %var.load31 = load ptr, ptr %"var.st'", align 8
  %fld.gep32 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }, ptr %var.load31, i32 0, i32 3
  %fld.load33 = load i64, ptr %fld.gep32, align 8
  store i64 %fld.load33, ptr %var.bfree, align 8
  %var.load34 = load ptr, ptr %"var.st'", align 8
  %fld.gep35 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }, ptr %var.load34, i32 0, i32 4
  %fld.load36 = load i64, ptr %fld.gep35, align 8
  store i64 %fld.load36, ptr %var.bavail, align 8
  %var.load37 = load i64, ptr %var.blocks, align 8
  %var.load38 = load i64, ptr %"var.eff_frsize'", align 8
  %multmp = mul i64 %var.load37, %var.load38
  store i64 %multmp, ptr %var.total, align 8
  %var.load39 = load i64, ptr %var.bfree, align 8
  %var.load40 = load i64, ptr %"var.eff_frsize'", align 8
  %multmp41 = mul i64 %var.load39, %var.load40
  store i64 %multmp41, ptr %var.free, align 8
  %var.load42 = load i64, ptr %var.bavail, align 8
  %var.load43 = load i64, ptr %"var.eff_frsize'", align 8
  %multmp44 = mul i64 %var.load42, %var.load43
  store i64 %multmp44, ptr %var.avail, align 8
  %var.load45 = load i64, ptr %var.total, align 8
  %var.load46 = load i64, ptr %var.free, align 8
  %var.load47 = load i64, ptr %var.avail, align 8
  %arena.cur48 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load45, ptr %rec.fld, align 8
  %rec.fld49 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load46, ptr %rec.fld49, align 8
  %rec.fld50 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load47, ptr %rec.fld50, align 8
  ret ptr %rec.alloc
}

define ptr @"fs::get_fs_stats"(ptr %0) #1 {
entry:
  %var.pct = alloca i64, align 8
  %var.used_gb = alloca i64, align 8
  %var.free_gb = alloca i64, align 8
  %var.total_gb = alloca i64, align 8
  %var.used_bytes = alloca i64, align 8
  %var.free_bytes = alloca i64, align 8
  %var.total_bytes = alloca i64, align 8
  %var.gb_div = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.sp = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %call.res = call ptr @"fs::space"(ptr %var.load)
  store ptr %call.res, ptr %var.sp, align 8
  %var.load1 = load ptr, ptr %var.sp, align 8
  %niche.ne.null = icmp ne ptr %var.load1, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load1, ptr %var._, align 8
  store ptr %var.load1, ptr %var.s, align 8
  store i64 1073741824, ptr %var.gb_div, align 8
  %var.load2 = load ptr, ptr %var.s, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64 }, ptr %var.load2, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.total_bytes, align 8
  %var.load3 = load ptr, ptr %var.s, align 8
  %fld.gep4 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load3, i32 0, i32 2
  %fld.load5 = load i64, ptr %fld.gep4, align 8
  store i64 %fld.load5, ptr %var.free_bytes, align 8
  %var.load6 = load i64, ptr %var.total_bytes, align 8
  %var.load7 = load i64, ptr %var.free_bytes, align 8
  %cmptmp = icmp sgt i64 %var.load6, %var.load7
  br i1 %cmptmp, label %choice.then8, label %choice.else9

choice.else:                                      ; preds = %entry
  %arena.cur61 = call ptr @dva_arena_current()
  %rec.alloc62 = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld63 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc62, i32 0, i32 0
  store i64 0, ptr %rec.fld63, align 8
  %rec.fld64 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc62, i32 0, i32 1
  store i64 0, ptr %rec.fld64, align 8
  %rec.fld65 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc62, i32 0, i32 2
  store i64 0, ptr %rec.fld65, align 8
  %rec.fld66 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc62, i32 0, i32 3
  store i64 0, ptr %rec.fld66, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit41
  %choice.res67 = phi ptr [ %rec.alloc, %choice.exit41 ], [ %rec.alloc62, %choice.else ]
  ret ptr %choice.res67

choice.then8:                                     ; preds = %choice.then
  %var.load11 = load i64, ptr %var.total_bytes, align 8
  %var.load12 = load i64, ptr %var.free_bytes, align 8
  %subtmp = sub i64 %var.load11, %var.load12
  br label %choice.exit10

choice.else9:                                     ; preds = %choice.then
  br label %choice.exit10

choice.exit10:                                    ; preds = %choice.else9, %choice.then8
  %choice.res = phi i64 [ %subtmp, %choice.then8 ], [ 0, %choice.else9 ]
  store i64 %choice.res, ptr %var.used_bytes, align 8
  %var.load13 = load i64, ptr %var.total_bytes, align 8
  %var.load14 = load i64, ptr %var.gb_div, align 8
  %div.is.zero = icmp eq i64 %var.load14, 0
  br i1 %div.is.zero, label %div.zero_abort, label %div.not_zero

div.not_zero:                                     ; preds = %div.zero_abort, %choice.exit10
  %div.is.min = icmp eq i64 %var.load13, -9223372036854775808
  %div.is.negone = icmp eq i64 %var.load14, -1
  %div.is.ovf = and i1 %div.is.min, %div.is.negone
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.exit10
  %1 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %divtmp = sdiv i64 %var.load13, %var.load14
  store i64 %divtmp, ptr %var.total_gb, align 8
  %var.load15 = load i64, ptr %var.free_bytes, align 8
  %var.load16 = load i64, ptr %var.gb_div, align 8
  %div.is.zero17 = icmp eq i64 %var.load16, 0
  br i1 %div.is.zero17, label %div.zero_abort19, label %div.not_zero18

div.ovf_abort:                                    ; preds = %div.not_zero
  %2 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

div.not_zero18:                                   ; preds = %div.zero_abort19, %div.ok
  %div.is.min20 = icmp eq i64 %var.load15, -9223372036854775808
  %div.is.negone21 = icmp eq i64 %var.load16, -1
  %div.is.ovf22 = and i1 %div.is.min20, %div.is.negone21
  br i1 %div.is.ovf22, label %div.ovf_abort24, label %div.ok23

div.zero_abort19:                                 ; preds = %div.ok
  %3 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero18

div.ok23:                                         ; preds = %div.ovf_abort24, %div.not_zero18
  %divtmp25 = sdiv i64 %var.load15, %var.load16
  store i64 %divtmp25, ptr %var.free_gb, align 8
  %var.load26 = load i64, ptr %var.used_bytes, align 8
  %var.load27 = load i64, ptr %var.gb_div, align 8
  %div.is.zero28 = icmp eq i64 %var.load27, 0
  br i1 %div.is.zero28, label %div.zero_abort30, label %div.not_zero29

div.ovf_abort24:                                  ; preds = %div.not_zero18
  %4 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok23

div.not_zero29:                                   ; preds = %div.zero_abort30, %div.ok23
  %div.is.min31 = icmp eq i64 %var.load26, -9223372036854775808
  %div.is.negone32 = icmp eq i64 %var.load27, -1
  %div.is.ovf33 = and i1 %div.is.min31, %div.is.negone32
  br i1 %div.is.ovf33, label %div.ovf_abort35, label %div.ok34

div.zero_abort30:                                 ; preds = %div.ok23
  %5 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero29

div.ok34:                                         ; preds = %div.ovf_abort35, %div.not_zero29
  %divtmp36 = sdiv i64 %var.load26, %var.load27
  store i64 %divtmp36, ptr %var.used_gb, align 8
  %var.load37 = load i64, ptr %var.total_bytes, align 8
  %cmptmp38 = icmp sgt i64 %var.load37, 0
  br i1 %cmptmp38, label %choice.then39, label %choice.else40

div.ovf_abort35:                                  ; preds = %div.not_zero29
  %6 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok34

choice.then39:                                    ; preds = %div.ok34
  %var.load42 = load i64, ptr %var.used_bytes, align 8
  %multmp = mul i64 %var.load42, 100
  %var.load43 = load i64, ptr %var.total_bytes, align 8
  %div.is.zero44 = icmp eq i64 %var.load43, 0
  br i1 %div.is.zero44, label %div.zero_abort46, label %div.not_zero45

choice.else40:                                    ; preds = %div.ok34
  br label %choice.exit41

choice.exit41:                                    ; preds = %choice.else40, %div.ok50
  %choice.res53 = phi i64 [ %divtmp52, %div.ok50 ], [ 0, %choice.else40 ]
  store i64 %choice.res53, ptr %var.pct, align 8
  %var.load54 = load i64, ptr %var.used_gb, align 8
  %var.load55 = load i64, ptr %var.total_gb, align 8
  %var.load56 = load i64, ptr %var.pct, align 8
  %var.load57 = load i64, ptr %var.free_gb, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load54, ptr %rec.fld, align 8
  %rec.fld58 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load55, ptr %rec.fld58, align 8
  %rec.fld59 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load56, ptr %rec.fld59, align 8
  %rec.fld60 = getelementptr inbounds { i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load57, ptr %rec.fld60, align 8
  br label %choice.exit

div.not_zero45:                                   ; preds = %div.zero_abort46, %choice.then39
  %div.is.min47 = icmp eq i64 %multmp, -9223372036854775808
  %div.is.negone48 = icmp eq i64 %var.load43, -1
  %div.is.ovf49 = and i1 %div.is.min47, %div.is.negone48
  br i1 %div.is.ovf49, label %div.ovf_abort51, label %div.ok50

div.zero_abort46:                                 ; preds = %choice.then39
  %7 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero45

div.ok50:                                         ; preds = %div.ovf_abort51, %div.not_zero45
  %divtmp52 = sdiv i64 %multmp, %var.load43
  br label %choice.exit41

div.ovf_abort51:                                  ; preds = %div.not_zero45
  %8 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok50
}

define ptr @"fs::format_size"(i64 %0, i1 %1) #1 {
entry:
  %var.is_d = alloca i1, align 1
  %var.sz = alloca i64, align 8
  store i64 %0, ptr %var.sz, align 8
  store i1 %1, ptr %var.is_d, align 1
  %var.load = load i1, ptr %var.is_d, align 1
  br i1 %var.load, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret ptr @str.7.struct

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load1 = load i64, ptr %var.sz, align 8
  %cmptmp = icmp slt i64 %var.load1, 1024
  br i1 %cmptmp, label %choice.case, label %choice.next

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.exit2:                                     ; preds = %concat.tot.len345, %concat.tot.len249, %concat.tot.len150, %concat.tot.len58
  %choice.res = phi ptr [ %concat.str65, %concat.tot.len58 ], [ %concat.str157, %concat.tot.len150 ], [ %concat.str256, %concat.tot.len249 ], [ %concat.str352, %concat.tot.len345 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %choice.exit
  %var.load3 = load i64, ptr %var.sz, align 8
  %arena.cur = call ptr @dva_arena_current()
  %to_str.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 32)
  %to_str.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf, i64 32, ptr @dva_fmt_i64, i64 %var.load3)
  %to_str.len = zext i32 %to_str.n to i64
  %arena.cur4 = call ptr @dva_arena_current()
  %to_str.res = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 0
  store i64 %to_str.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 1
  store ptr %to_str.buf, ptr %str.build.data.gep, align 8
  %concat.lhs = load i64, ptr @str.5.struct, align 8
  %concat.lhs5 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.next:                                      ; preds = %choice.exit
  %cmptmp70 = icmp slt i64 %var.load1, 1048576
  br i1 %cmptmp70, label %choice.case68, label %choice.next69

str_gen_check:                                    ; preds = %choice.case
  %arena.cur6 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur6, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.case
  %concat.lhs7 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 0
  %concat.rhs8 = load i64, ptr %concat.rhs, align 8
  %concat.rhs9 = and i64 %concat.rhs8, 281474976710655
  %str.tag10 = lshr i64 %concat.rhs8, 48
  %str.immortal11 = icmp eq i64 %str.tag10, 0
  br i1 %str.immortal11, label %str_ok13, label %str_gen_check12

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check12:                                  ; preds = %str_ok
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag10)
  br i1 %tag.valid16, label %str_ok13, label %str_stale14

str_ok13:                                         ; preds = %str_stale14, %str_gen_check12, %str_ok
  %concat.rhs17 = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 1
  %concat.rhs18 = load ptr, ptr %concat.rhs17, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs5, i64 %concat.rhs9)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len19

str_stale14:                                      ; preds = %str_gen_check12
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok13

concat.sum.len19:                                 ; preds = %str_overflow_abort, %str_ok13
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum20 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf21 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf21, label %str_overflow_abort23, label %concat.tot.len22

str_overflow_abort:                               ; preds = %str_ok13
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len19

concat.tot.len22:                                 ; preds = %str_overflow_abort23, %concat.sum.len19
  %arena.cur24 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 %sum20)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs7, i64 %concat.lhs5, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs18, i64 %concat.rhs9, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur25 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 16)
  %str.build.len.gep26 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep26, align 8
  %str.build.data.gep27 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep27, align 8
  %concat.lhs28 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs29 = load i64, ptr %concat.lhs28, align 8
  %concat.lhs30 = and i64 %concat.lhs29, 281474976710655
  %str.tag31 = lshr i64 %concat.lhs29, 48
  %str.immortal32 = icmp eq i64 %str.tag31, 0
  br i1 %str.immortal32, label %str_ok34, label %str_gen_check33

str_overflow_abort23:                             ; preds = %concat.sum.len19
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len22

str_gen_check33:                                  ; preds = %concat.tot.len22
  %arena.cur36 = call ptr @dva_arena_current()
  %tag.valid37 = call i1 @dva_arena_validate_tag(ptr %arena.cur36, i64 %str.tag31)
  br i1 %tag.valid37, label %str_ok34, label %str_stale35

str_ok34:                                         ; preds = %str_stale35, %str_gen_check33, %concat.tot.len22
  %concat.lhs38 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs39 = load ptr, ptr %concat.lhs38, align 8
  %concat.rhs40 = load i64, ptr @str.8.struct, align 8
  %concat.rhs41 = and i64 %concat.rhs40, 281474976710655
  %str.tag42 = lshr i64 %concat.rhs40, 48
  %str.immortal43 = icmp eq i64 %str.tag42, 0
  br i1 %str.immortal43, label %str_ok45, label %str_gen_check44

str_stale35:                                      ; preds = %str_gen_check33
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok34

str_gen_check44:                                  ; preds = %str_ok34
  %arena.cur47 = call ptr @dva_arena_current()
  %tag.valid48 = call i1 @dva_arena_validate_tag(ptr %arena.cur47, i64 %str.tag42)
  br i1 %tag.valid48, label %str_ok45, label %str_stale46

str_ok45:                                         ; preds = %str_stale46, %str_gen_check44, %str_ok34
  %concat.rhs49 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %concat.sum.len50 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs30, i64 %concat.rhs41)
  %sum51 = extractvalue { i64, i1 } %concat.sum.len50, 0
  %ovf52 = extractvalue { i64, i1 } %concat.sum.len50, 1
  br i1 %ovf52, label %str_overflow_abort54, label %concat.sum.len53

str_stale46:                                      ; preds = %str_gen_check44
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok45

concat.sum.len53:                                 ; preds = %str_overflow_abort54, %str_ok45
  %concat.tot.len55 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum51, i64 1)
  %sum56 = extractvalue { i64, i1 } %concat.tot.len55, 0
  %ovf57 = extractvalue { i64, i1 } %concat.tot.len55, 1
  br i1 %ovf57, label %str_overflow_abort59, label %concat.tot.len58

str_overflow_abort54:                             ; preds = %str_ok45
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len53

concat.tot.len58:                                 ; preds = %str_overflow_abort59, %concat.sum.len53
  %arena.cur60 = call ptr @dva_arena_current()
  %concat.buf61 = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 %sum56)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf61, ptr align 1 %concat.lhs39, i64 %concat.lhs30, i1 false)
  %concat.mid62 = getelementptr i8, ptr %concat.buf61, i64 %concat.lhs30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid62, ptr align 1 %concat.rhs49, i64 %concat.rhs41, i1 false)
  %concat.nul63 = getelementptr i8, ptr %concat.buf61, i64 %sum51
  store i8 0, ptr %concat.nul63, align 1
  %arena.cur64 = call ptr @dva_arena_current()
  %concat.str65 = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 16)
  %str.build.len.gep66 = getelementptr inbounds { i64, ptr }, ptr %concat.str65, i32 0, i32 0
  store i64 %sum51, ptr %str.build.len.gep66, align 8
  %str.build.data.gep67 = getelementptr inbounds { i64, ptr }, ptr %concat.str65, i32 0, i32 1
  store ptr %concat.buf61, ptr %str.build.data.gep67, align 8
  br label %choice.exit2

str_overflow_abort59:                             ; preds = %concat.sum.len53
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len58

choice.case68:                                    ; preds = %choice.next
  %var.load71 = load i64, ptr %var.sz, align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

choice.next69:                                    ; preds = %choice.next
  %cmptmp162 = icmp slt i64 %var.load1, 1073741824
  br i1 %cmptmp162, label %choice.case160, label %choice.next161

div.not_zero:                                     ; preds = %div.zero_abort, %choice.case68
  %div.is.min = icmp eq i64 %var.load71, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.case68
  %10 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %divtmp = sdiv i64 %var.load71, 1024
  %arena.cur72 = call ptr @dva_arena_current()
  %to_str.buf73 = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 32)
  %to_str.n74 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf73, i64 32, ptr @dva_fmt_i64, i64 %divtmp)
  %to_str.len75 = zext i32 %to_str.n74 to i64
  %arena.cur76 = call ptr @dva_arena_current()
  %to_str.res77 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 16)
  %str.build.len.gep78 = getelementptr inbounds { i64, ptr }, ptr %to_str.res77, i32 0, i32 0
  store i64 %to_str.len75, ptr %str.build.len.gep78, align 8
  %str.build.data.gep79 = getelementptr inbounds { i64, ptr }, ptr %to_str.res77, i32 0, i32 1
  store ptr %to_str.buf73, ptr %str.build.data.gep79, align 8
  %concat.lhs80 = load i64, ptr @str.5.struct, align 8
  %concat.lhs81 = and i64 %concat.lhs80, 281474976710655
  %str.tag82 = lshr i64 %concat.lhs80, 48
  %str.immortal83 = icmp eq i64 %str.tag82, 0
  br i1 %str.immortal83, label %str_ok85, label %str_gen_check84

div.ovf_abort:                                    ; preds = %div.not_zero
  %11 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

str_gen_check84:                                  ; preds = %div.ok
  %arena.cur87 = call ptr @dva_arena_current()
  %tag.valid88 = call i1 @dva_arena_validate_tag(ptr %arena.cur87, i64 %str.tag82)
  br i1 %tag.valid88, label %str_ok85, label %str_stale86

str_ok85:                                         ; preds = %str_stale86, %str_gen_check84, %div.ok
  %concat.lhs89 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %concat.rhs90 = getelementptr inbounds { i64, ptr }, ptr %to_str.res77, i32 0, i32 0
  %concat.rhs91 = load i64, ptr %concat.rhs90, align 8
  %concat.rhs92 = and i64 %concat.rhs91, 281474976710655
  %str.tag93 = lshr i64 %concat.rhs91, 48
  %str.immortal94 = icmp eq i64 %str.tag93, 0
  br i1 %str.immortal94, label %str_ok96, label %str_gen_check95

str_stale86:                                      ; preds = %str_gen_check84
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok85

str_gen_check95:                                  ; preds = %str_ok85
  %arena.cur98 = call ptr @dva_arena_current()
  %tag.valid99 = call i1 @dva_arena_validate_tag(ptr %arena.cur98, i64 %str.tag93)
  br i1 %tag.valid99, label %str_ok96, label %str_stale97

str_ok96:                                         ; preds = %str_stale97, %str_gen_check95, %str_ok85
  %concat.rhs100 = getelementptr inbounds { i64, ptr }, ptr %to_str.res77, i32 0, i32 1
  %concat.rhs101 = load ptr, ptr %concat.rhs100, align 8
  %concat.sum.len102 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs81, i64 %concat.rhs92)
  %sum103 = extractvalue { i64, i1 } %concat.sum.len102, 0
  %ovf104 = extractvalue { i64, i1 } %concat.sum.len102, 1
  br i1 %ovf104, label %str_overflow_abort106, label %concat.sum.len105

str_stale97:                                      ; preds = %str_gen_check95
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok96

concat.sum.len105:                                ; preds = %str_overflow_abort106, %str_ok96
  %concat.tot.len107 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum103, i64 1)
  %sum108 = extractvalue { i64, i1 } %concat.tot.len107, 0
  %ovf109 = extractvalue { i64, i1 } %concat.tot.len107, 1
  br i1 %ovf109, label %str_overflow_abort111, label %concat.tot.len110

str_overflow_abort106:                            ; preds = %str_ok96
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len105

concat.tot.len110:                                ; preds = %str_overflow_abort111, %concat.sum.len105
  %arena.cur112 = call ptr @dva_arena_current()
  %concat.buf113 = call ptr @dva_arena_alloc(ptr %arena.cur112, i64 %sum108)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf113, ptr align 1 %concat.lhs89, i64 %concat.lhs81, i1 false)
  %concat.mid114 = getelementptr i8, ptr %concat.buf113, i64 %concat.lhs81
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid114, ptr align 1 %concat.rhs101, i64 %concat.rhs92, i1 false)
  %concat.nul115 = getelementptr i8, ptr %concat.buf113, i64 %sum103
  store i8 0, ptr %concat.nul115, align 1
  %arena.cur116 = call ptr @dva_arena_current()
  %concat.str117 = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 16)
  %str.build.len.gep118 = getelementptr inbounds { i64, ptr }, ptr %concat.str117, i32 0, i32 0
  store i64 %sum103, ptr %str.build.len.gep118, align 8
  %str.build.data.gep119 = getelementptr inbounds { i64, ptr }, ptr %concat.str117, i32 0, i32 1
  store ptr %concat.buf113, ptr %str.build.data.gep119, align 8
  %concat.lhs120 = getelementptr inbounds { i64, ptr }, ptr %concat.str117, i32 0, i32 0
  %concat.lhs121 = load i64, ptr %concat.lhs120, align 8
  %concat.lhs122 = and i64 %concat.lhs121, 281474976710655
  %str.tag123 = lshr i64 %concat.lhs121, 48
  %str.immortal124 = icmp eq i64 %str.tag123, 0
  br i1 %str.immortal124, label %str_ok126, label %str_gen_check125

str_overflow_abort111:                            ; preds = %concat.sum.len105
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len110

str_gen_check125:                                 ; preds = %concat.tot.len110
  %arena.cur128 = call ptr @dva_arena_current()
  %tag.valid129 = call i1 @dva_arena_validate_tag(ptr %arena.cur128, i64 %str.tag123)
  br i1 %tag.valid129, label %str_ok126, label %str_stale127

str_ok126:                                        ; preds = %str_stale127, %str_gen_check125, %concat.tot.len110
  %concat.lhs130 = getelementptr inbounds { i64, ptr }, ptr %concat.str117, i32 0, i32 1
  %concat.lhs131 = load ptr, ptr %concat.lhs130, align 8
  %concat.rhs132 = load i64, ptr @str.9.struct, align 8
  %concat.rhs133 = and i64 %concat.rhs132, 281474976710655
  %str.tag134 = lshr i64 %concat.rhs132, 48
  %str.immortal135 = icmp eq i64 %str.tag134, 0
  br i1 %str.immortal135, label %str_ok137, label %str_gen_check136

str_stale127:                                     ; preds = %str_gen_check125
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok126

str_gen_check136:                                 ; preds = %str_ok126
  %arena.cur139 = call ptr @dva_arena_current()
  %tag.valid140 = call i1 @dva_arena_validate_tag(ptr %arena.cur139, i64 %str.tag134)
  br i1 %tag.valid140, label %str_ok137, label %str_stale138

str_ok137:                                        ; preds = %str_stale138, %str_gen_check136, %str_ok126
  %concat.rhs141 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.9.struct, i32 0, i32 1), align 8
  %concat.sum.len142 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs122, i64 %concat.rhs133)
  %sum143 = extractvalue { i64, i1 } %concat.sum.len142, 0
  %ovf144 = extractvalue { i64, i1 } %concat.sum.len142, 1
  br i1 %ovf144, label %str_overflow_abort146, label %concat.sum.len145

str_stale138:                                     ; preds = %str_gen_check136
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok137

concat.sum.len145:                                ; preds = %str_overflow_abort146, %str_ok137
  %concat.tot.len147 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum143, i64 1)
  %sum148 = extractvalue { i64, i1 } %concat.tot.len147, 0
  %ovf149 = extractvalue { i64, i1 } %concat.tot.len147, 1
  br i1 %ovf149, label %str_overflow_abort151, label %concat.tot.len150

str_overflow_abort146:                            ; preds = %str_ok137
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len145

concat.tot.len150:                                ; preds = %str_overflow_abort151, %concat.sum.len145
  %arena.cur152 = call ptr @dva_arena_current()
  %concat.buf153 = call ptr @dva_arena_alloc(ptr %arena.cur152, i64 %sum148)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf153, ptr align 1 %concat.lhs131, i64 %concat.lhs122, i1 false)
  %concat.mid154 = getelementptr i8, ptr %concat.buf153, i64 %concat.lhs122
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid154, ptr align 1 %concat.rhs141, i64 %concat.rhs133, i1 false)
  %concat.nul155 = getelementptr i8, ptr %concat.buf153, i64 %sum143
  store i8 0, ptr %concat.nul155, align 1
  %arena.cur156 = call ptr @dva_arena_current()
  %concat.str157 = call ptr @dva_arena_alloc(ptr %arena.cur156, i64 16)
  %str.build.len.gep158 = getelementptr inbounds { i64, ptr }, ptr %concat.str157, i32 0, i32 0
  store i64 %sum143, ptr %str.build.len.gep158, align 8
  %str.build.data.gep159 = getelementptr inbounds { i64, ptr }, ptr %concat.str157, i32 0, i32 1
  store ptr %concat.buf153, ptr %str.build.data.gep159, align 8
  br label %choice.exit2

str_overflow_abort151:                            ; preds = %concat.sum.len145
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len150

choice.case160:                                   ; preds = %choice.next69
  %var.load163 = load i64, ptr %var.sz, align 8
  br i1 false, label %div.zero_abort165, label %div.not_zero164

choice.next161:                                   ; preds = %choice.next69
  %var.load259 = load i64, ptr %var.sz, align 8
  br i1 false, label %div.zero_abort261, label %div.not_zero260

div.not_zero164:                                  ; preds = %div.zero_abort165, %choice.case160
  %div.is.min166 = icmp eq i64 %var.load163, -9223372036854775808
  %div.is.ovf167 = and i1 %div.is.min166, false
  br i1 %div.is.ovf167, label %div.ovf_abort169, label %div.ok168

div.zero_abort165:                                ; preds = %choice.case160
  %20 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero164

div.ok168:                                        ; preds = %div.ovf_abort169, %div.not_zero164
  %divtmp170 = sdiv i64 %var.load163, 1048576
  %arena.cur171 = call ptr @dva_arena_current()
  %to_str.buf172 = call ptr @dva_arena_alloc(ptr %arena.cur171, i64 32)
  %to_str.n173 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf172, i64 32, ptr @dva_fmt_i64, i64 %divtmp170)
  %to_str.len174 = zext i32 %to_str.n173 to i64
  %arena.cur175 = call ptr @dva_arena_current()
  %to_str.res176 = call ptr @dva_arena_alloc(ptr %arena.cur175, i64 16)
  %str.build.len.gep177 = getelementptr inbounds { i64, ptr }, ptr %to_str.res176, i32 0, i32 0
  store i64 %to_str.len174, ptr %str.build.len.gep177, align 8
  %str.build.data.gep178 = getelementptr inbounds { i64, ptr }, ptr %to_str.res176, i32 0, i32 1
  store ptr %to_str.buf172, ptr %str.build.data.gep178, align 8
  %concat.lhs179 = load i64, ptr @str.5.struct, align 8
  %concat.lhs180 = and i64 %concat.lhs179, 281474976710655
  %str.tag181 = lshr i64 %concat.lhs179, 48
  %str.immortal182 = icmp eq i64 %str.tag181, 0
  br i1 %str.immortal182, label %str_ok184, label %str_gen_check183

div.ovf_abort169:                                 ; preds = %div.not_zero164
  %21 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok168

str_gen_check183:                                 ; preds = %div.ok168
  %arena.cur186 = call ptr @dva_arena_current()
  %tag.valid187 = call i1 @dva_arena_validate_tag(ptr %arena.cur186, i64 %str.tag181)
  br i1 %tag.valid187, label %str_ok184, label %str_stale185

str_ok184:                                        ; preds = %str_stale185, %str_gen_check183, %div.ok168
  %concat.lhs188 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %concat.rhs189 = getelementptr inbounds { i64, ptr }, ptr %to_str.res176, i32 0, i32 0
  %concat.rhs190 = load i64, ptr %concat.rhs189, align 8
  %concat.rhs191 = and i64 %concat.rhs190, 281474976710655
  %str.tag192 = lshr i64 %concat.rhs190, 48
  %str.immortal193 = icmp eq i64 %str.tag192, 0
  br i1 %str.immortal193, label %str_ok195, label %str_gen_check194

str_stale185:                                     ; preds = %str_gen_check183
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok184

str_gen_check194:                                 ; preds = %str_ok184
  %arena.cur197 = call ptr @dva_arena_current()
  %tag.valid198 = call i1 @dva_arena_validate_tag(ptr %arena.cur197, i64 %str.tag192)
  br i1 %tag.valid198, label %str_ok195, label %str_stale196

str_ok195:                                        ; preds = %str_stale196, %str_gen_check194, %str_ok184
  %concat.rhs199 = getelementptr inbounds { i64, ptr }, ptr %to_str.res176, i32 0, i32 1
  %concat.rhs200 = load ptr, ptr %concat.rhs199, align 8
  %concat.sum.len201 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs180, i64 %concat.rhs191)
  %sum202 = extractvalue { i64, i1 } %concat.sum.len201, 0
  %ovf203 = extractvalue { i64, i1 } %concat.sum.len201, 1
  br i1 %ovf203, label %str_overflow_abort205, label %concat.sum.len204

str_stale196:                                     ; preds = %str_gen_check194
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok195

concat.sum.len204:                                ; preds = %str_overflow_abort205, %str_ok195
  %concat.tot.len206 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum202, i64 1)
  %sum207 = extractvalue { i64, i1 } %concat.tot.len206, 0
  %ovf208 = extractvalue { i64, i1 } %concat.tot.len206, 1
  br i1 %ovf208, label %str_overflow_abort210, label %concat.tot.len209

str_overflow_abort205:                            ; preds = %str_ok195
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len204

concat.tot.len209:                                ; preds = %str_overflow_abort210, %concat.sum.len204
  %arena.cur211 = call ptr @dva_arena_current()
  %concat.buf212 = call ptr @dva_arena_alloc(ptr %arena.cur211, i64 %sum207)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf212, ptr align 1 %concat.lhs188, i64 %concat.lhs180, i1 false)
  %concat.mid213 = getelementptr i8, ptr %concat.buf212, i64 %concat.lhs180
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid213, ptr align 1 %concat.rhs200, i64 %concat.rhs191, i1 false)
  %concat.nul214 = getelementptr i8, ptr %concat.buf212, i64 %sum202
  store i8 0, ptr %concat.nul214, align 1
  %arena.cur215 = call ptr @dva_arena_current()
  %concat.str216 = call ptr @dva_arena_alloc(ptr %arena.cur215, i64 16)
  %str.build.len.gep217 = getelementptr inbounds { i64, ptr }, ptr %concat.str216, i32 0, i32 0
  store i64 %sum202, ptr %str.build.len.gep217, align 8
  %str.build.data.gep218 = getelementptr inbounds { i64, ptr }, ptr %concat.str216, i32 0, i32 1
  store ptr %concat.buf212, ptr %str.build.data.gep218, align 8
  %concat.lhs219 = getelementptr inbounds { i64, ptr }, ptr %concat.str216, i32 0, i32 0
  %concat.lhs220 = load i64, ptr %concat.lhs219, align 8
  %concat.lhs221 = and i64 %concat.lhs220, 281474976710655
  %str.tag222 = lshr i64 %concat.lhs220, 48
  %str.immortal223 = icmp eq i64 %str.tag222, 0
  br i1 %str.immortal223, label %str_ok225, label %str_gen_check224

str_overflow_abort210:                            ; preds = %concat.sum.len204
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len209

str_gen_check224:                                 ; preds = %concat.tot.len209
  %arena.cur227 = call ptr @dva_arena_current()
  %tag.valid228 = call i1 @dva_arena_validate_tag(ptr %arena.cur227, i64 %str.tag222)
  br i1 %tag.valid228, label %str_ok225, label %str_stale226

str_ok225:                                        ; preds = %str_stale226, %str_gen_check224, %concat.tot.len209
  %concat.lhs229 = getelementptr inbounds { i64, ptr }, ptr %concat.str216, i32 0, i32 1
  %concat.lhs230 = load ptr, ptr %concat.lhs229, align 8
  %concat.rhs231 = load i64, ptr @str.10.struct, align 8
  %concat.rhs232 = and i64 %concat.rhs231, 281474976710655
  %str.tag233 = lshr i64 %concat.rhs231, 48
  %str.immortal234 = icmp eq i64 %str.tag233, 0
  br i1 %str.immortal234, label %str_ok236, label %str_gen_check235

str_stale226:                                     ; preds = %str_gen_check224
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok225

str_gen_check235:                                 ; preds = %str_ok225
  %arena.cur238 = call ptr @dva_arena_current()
  %tag.valid239 = call i1 @dva_arena_validate_tag(ptr %arena.cur238, i64 %str.tag233)
  br i1 %tag.valid239, label %str_ok236, label %str_stale237

str_ok236:                                        ; preds = %str_stale237, %str_gen_check235, %str_ok225
  %concat.rhs240 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.10.struct, i32 0, i32 1), align 8
  %concat.sum.len241 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs221, i64 %concat.rhs232)
  %sum242 = extractvalue { i64, i1 } %concat.sum.len241, 0
  %ovf243 = extractvalue { i64, i1 } %concat.sum.len241, 1
  br i1 %ovf243, label %str_overflow_abort245, label %concat.sum.len244

str_stale237:                                     ; preds = %str_gen_check235
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok236

concat.sum.len244:                                ; preds = %str_overflow_abort245, %str_ok236
  %concat.tot.len246 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum242, i64 1)
  %sum247 = extractvalue { i64, i1 } %concat.tot.len246, 0
  %ovf248 = extractvalue { i64, i1 } %concat.tot.len246, 1
  br i1 %ovf248, label %str_overflow_abort250, label %concat.tot.len249

str_overflow_abort245:                            ; preds = %str_ok236
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len244

concat.tot.len249:                                ; preds = %str_overflow_abort250, %concat.sum.len244
  %arena.cur251 = call ptr @dva_arena_current()
  %concat.buf252 = call ptr @dva_arena_alloc(ptr %arena.cur251, i64 %sum247)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf252, ptr align 1 %concat.lhs230, i64 %concat.lhs221, i1 false)
  %concat.mid253 = getelementptr i8, ptr %concat.buf252, i64 %concat.lhs221
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid253, ptr align 1 %concat.rhs240, i64 %concat.rhs232, i1 false)
  %concat.nul254 = getelementptr i8, ptr %concat.buf252, i64 %sum242
  store i8 0, ptr %concat.nul254, align 1
  %arena.cur255 = call ptr @dva_arena_current()
  %concat.str256 = call ptr @dva_arena_alloc(ptr %arena.cur255, i64 16)
  %str.build.len.gep257 = getelementptr inbounds { i64, ptr }, ptr %concat.str256, i32 0, i32 0
  store i64 %sum242, ptr %str.build.len.gep257, align 8
  %str.build.data.gep258 = getelementptr inbounds { i64, ptr }, ptr %concat.str256, i32 0, i32 1
  store ptr %concat.buf252, ptr %str.build.data.gep258, align 8
  br label %choice.exit2

str_overflow_abort250:                            ; preds = %concat.sum.len244
  %29 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len249

div.not_zero260:                                  ; preds = %div.zero_abort261, %choice.next161
  %div.is.min262 = icmp eq i64 %var.load259, -9223372036854775808
  %div.is.ovf263 = and i1 %div.is.min262, false
  br i1 %div.is.ovf263, label %div.ovf_abort265, label %div.ok264

div.zero_abort261:                                ; preds = %choice.next161
  %30 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero260

div.ok264:                                        ; preds = %div.ovf_abort265, %div.not_zero260
  %divtmp266 = sdiv i64 %var.load259, 1073741824
  %arena.cur267 = call ptr @dva_arena_current()
  %to_str.buf268 = call ptr @dva_arena_alloc(ptr %arena.cur267, i64 32)
  %to_str.n269 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf268, i64 32, ptr @dva_fmt_i64, i64 %divtmp266)
  %to_str.len270 = zext i32 %to_str.n269 to i64
  %arena.cur271 = call ptr @dva_arena_current()
  %to_str.res272 = call ptr @dva_arena_alloc(ptr %arena.cur271, i64 16)
  %str.build.len.gep273 = getelementptr inbounds { i64, ptr }, ptr %to_str.res272, i32 0, i32 0
  store i64 %to_str.len270, ptr %str.build.len.gep273, align 8
  %str.build.data.gep274 = getelementptr inbounds { i64, ptr }, ptr %to_str.res272, i32 0, i32 1
  store ptr %to_str.buf268, ptr %str.build.data.gep274, align 8
  %concat.lhs275 = load i64, ptr @str.5.struct, align 8
  %concat.lhs276 = and i64 %concat.lhs275, 281474976710655
  %str.tag277 = lshr i64 %concat.lhs275, 48
  %str.immortal278 = icmp eq i64 %str.tag277, 0
  br i1 %str.immortal278, label %str_ok280, label %str_gen_check279

div.ovf_abort265:                                 ; preds = %div.not_zero260
  %31 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok264

str_gen_check279:                                 ; preds = %div.ok264
  %arena.cur282 = call ptr @dva_arena_current()
  %tag.valid283 = call i1 @dva_arena_validate_tag(ptr %arena.cur282, i64 %str.tag277)
  br i1 %tag.valid283, label %str_ok280, label %str_stale281

str_ok280:                                        ; preds = %str_stale281, %str_gen_check279, %div.ok264
  %concat.lhs284 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %concat.rhs285 = getelementptr inbounds { i64, ptr }, ptr %to_str.res272, i32 0, i32 0
  %concat.rhs286 = load i64, ptr %concat.rhs285, align 8
  %concat.rhs287 = and i64 %concat.rhs286, 281474976710655
  %str.tag288 = lshr i64 %concat.rhs286, 48
  %str.immortal289 = icmp eq i64 %str.tag288, 0
  br i1 %str.immortal289, label %str_ok291, label %str_gen_check290

str_stale281:                                     ; preds = %str_gen_check279
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok280

str_gen_check290:                                 ; preds = %str_ok280
  %arena.cur293 = call ptr @dva_arena_current()
  %tag.valid294 = call i1 @dva_arena_validate_tag(ptr %arena.cur293, i64 %str.tag288)
  br i1 %tag.valid294, label %str_ok291, label %str_stale292

str_ok291:                                        ; preds = %str_stale292, %str_gen_check290, %str_ok280
  %concat.rhs295 = getelementptr inbounds { i64, ptr }, ptr %to_str.res272, i32 0, i32 1
  %concat.rhs296 = load ptr, ptr %concat.rhs295, align 8
  %concat.sum.len297 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs276, i64 %concat.rhs287)
  %sum298 = extractvalue { i64, i1 } %concat.sum.len297, 0
  %ovf299 = extractvalue { i64, i1 } %concat.sum.len297, 1
  br i1 %ovf299, label %str_overflow_abort301, label %concat.sum.len300

str_stale292:                                     ; preds = %str_gen_check290
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok291

concat.sum.len300:                                ; preds = %str_overflow_abort301, %str_ok291
  %concat.tot.len302 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum298, i64 1)
  %sum303 = extractvalue { i64, i1 } %concat.tot.len302, 0
  %ovf304 = extractvalue { i64, i1 } %concat.tot.len302, 1
  br i1 %ovf304, label %str_overflow_abort306, label %concat.tot.len305

str_overflow_abort301:                            ; preds = %str_ok291
  %34 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len300

concat.tot.len305:                                ; preds = %str_overflow_abort306, %concat.sum.len300
  %arena.cur307 = call ptr @dva_arena_current()
  %concat.buf308 = call ptr @dva_arena_alloc(ptr %arena.cur307, i64 %sum303)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf308, ptr align 1 %concat.lhs284, i64 %concat.lhs276, i1 false)
  %concat.mid309 = getelementptr i8, ptr %concat.buf308, i64 %concat.lhs276
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid309, ptr align 1 %concat.rhs296, i64 %concat.rhs287, i1 false)
  %concat.nul310 = getelementptr i8, ptr %concat.buf308, i64 %sum298
  store i8 0, ptr %concat.nul310, align 1
  %arena.cur311 = call ptr @dva_arena_current()
  %concat.str312 = call ptr @dva_arena_alloc(ptr %arena.cur311, i64 16)
  %str.build.len.gep313 = getelementptr inbounds { i64, ptr }, ptr %concat.str312, i32 0, i32 0
  store i64 %sum298, ptr %str.build.len.gep313, align 8
  %str.build.data.gep314 = getelementptr inbounds { i64, ptr }, ptr %concat.str312, i32 0, i32 1
  store ptr %concat.buf308, ptr %str.build.data.gep314, align 8
  %concat.lhs315 = getelementptr inbounds { i64, ptr }, ptr %concat.str312, i32 0, i32 0
  %concat.lhs316 = load i64, ptr %concat.lhs315, align 8
  %concat.lhs317 = and i64 %concat.lhs316, 281474976710655
  %str.tag318 = lshr i64 %concat.lhs316, 48
  %str.immortal319 = icmp eq i64 %str.tag318, 0
  br i1 %str.immortal319, label %str_ok321, label %str_gen_check320

str_overflow_abort306:                            ; preds = %concat.sum.len300
  %35 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len305

str_gen_check320:                                 ; preds = %concat.tot.len305
  %arena.cur323 = call ptr @dva_arena_current()
  %tag.valid324 = call i1 @dva_arena_validate_tag(ptr %arena.cur323, i64 %str.tag318)
  br i1 %tag.valid324, label %str_ok321, label %str_stale322

str_ok321:                                        ; preds = %str_stale322, %str_gen_check320, %concat.tot.len305
  %concat.lhs325 = getelementptr inbounds { i64, ptr }, ptr %concat.str312, i32 0, i32 1
  %concat.lhs326 = load ptr, ptr %concat.lhs325, align 8
  %concat.rhs327 = load i64, ptr @str.11.struct, align 8
  %concat.rhs328 = and i64 %concat.rhs327, 281474976710655
  %str.tag329 = lshr i64 %concat.rhs327, 48
  %str.immortal330 = icmp eq i64 %str.tag329, 0
  br i1 %str.immortal330, label %str_ok332, label %str_gen_check331

str_stale322:                                     ; preds = %str_gen_check320
  %36 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok321

str_gen_check331:                                 ; preds = %str_ok321
  %arena.cur334 = call ptr @dva_arena_current()
  %tag.valid335 = call i1 @dva_arena_validate_tag(ptr %arena.cur334, i64 %str.tag329)
  br i1 %tag.valid335, label %str_ok332, label %str_stale333

str_ok332:                                        ; preds = %str_stale333, %str_gen_check331, %str_ok321
  %concat.rhs336 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.11.struct, i32 0, i32 1), align 8
  %concat.sum.len337 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs317, i64 %concat.rhs328)
  %sum338 = extractvalue { i64, i1 } %concat.sum.len337, 0
  %ovf339 = extractvalue { i64, i1 } %concat.sum.len337, 1
  br i1 %ovf339, label %str_overflow_abort341, label %concat.sum.len340

str_stale333:                                     ; preds = %str_gen_check331
  %37 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok332

concat.sum.len340:                                ; preds = %str_overflow_abort341, %str_ok332
  %concat.tot.len342 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum338, i64 1)
  %sum343 = extractvalue { i64, i1 } %concat.tot.len342, 0
  %ovf344 = extractvalue { i64, i1 } %concat.tot.len342, 1
  br i1 %ovf344, label %str_overflow_abort346, label %concat.tot.len345

str_overflow_abort341:                            ; preds = %str_ok332
  %38 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len340

concat.tot.len345:                                ; preds = %str_overflow_abort346, %concat.sum.len340
  %arena.cur347 = call ptr @dva_arena_current()
  %concat.buf348 = call ptr @dva_arena_alloc(ptr %arena.cur347, i64 %sum343)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf348, ptr align 1 %concat.lhs326, i64 %concat.lhs317, i1 false)
  %concat.mid349 = getelementptr i8, ptr %concat.buf348, i64 %concat.lhs317
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid349, ptr align 1 %concat.rhs336, i64 %concat.rhs328, i1 false)
  %concat.nul350 = getelementptr i8, ptr %concat.buf348, i64 %sum338
  store i8 0, ptr %concat.nul350, align 1
  %arena.cur351 = call ptr @dva_arena_current()
  %concat.str352 = call ptr @dva_arena_alloc(ptr %arena.cur351, i64 16)
  %str.build.len.gep353 = getelementptr inbounds { i64, ptr }, ptr %concat.str352, i32 0, i32 0
  store i64 %sum338, ptr %str.build.len.gep353, align 8
  %str.build.data.gep354 = getelementptr inbounds { i64, ptr }, ptr %concat.str352, i32 0, i32 1
  store ptr %concat.buf348, ptr %str.build.data.gep354, align 8
  br label %choice.exit2

str_overflow_abort346:                            ; preds = %concat.sum.len340
  %39 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len345
}

declare i32 @snprintf(ptr, i64, ptr, ...)

define ptr @"fs::format_perms"(i64 %0, i1 %1) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var.pb = alloca i16, align 2
  %var.is_d = alloca i1, align 1
  %var.mode = alloca i64, align 8
  store i64 %0, ptr %var.mode, align 8
  store i1 %1, ptr %var.is_d, align 1
  %var.load = load i64, ptr %var.mode, align 8
  %coerce.trunc = trunc i64 %var.load to i16
  store i16 %coerce.trunc, ptr %var.pb, align 2
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 16, i64 1)
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
  store i64 16, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load3 = load i1, ptr %var.is_d, align 1
  br i1 %var.load3, label %choice.then, label %choice.else

str_overflow_abort:                               ; preds = %entry
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

choice.then:                                      ; preds = %b.buf.len1
  br label %choice.exit

choice.else:                                      ; preds = %b.buf.len1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i32 [ 100, %choice.then ], [ 45, %choice.else ]
  %coerce.sext = sext i32 %choice.res to i64
  %br.cmp1 = icmp slt i64 %coerce.sext, 128
  %br.cmp2 = icmp slt i64 %coerce.sext, 2048
  %br.cmp3 = icmp slt i64 %coerce.sext, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len4 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len4, i64 %br.width)
  %sum5 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf6 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf6, label %str_overflow_abort8, label %b.rn.new.len7

b.rn.new.len7:                                    ; preds = %str_overflow_abort8, %choice.exit
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap9 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap9, %sum5
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort8:                              ; preds = %choice.exit
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len7

b.grow2:                                          ; preds = %b.rn.new.len7
  %b.cap2 = mul i64 %b.cap9, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum5
  %b.new.cap = select i1 %b.cap.need, i64 %sum5, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len210 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data211 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum12 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf13 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf13, label %str_overflow_abort15, label %b.new.buf.len214

b.nogrow2:                                        ; preds = %b.rn.new.len7
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len214
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data17 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data17, i64 %b.rn.cur.len4
  br i1 %br.cmp1, label %br.b1.80, label %br.c2.80

b.new.buf.len214:                                 ; preds = %str_overflow_abort15, %b.grow2
  %arena.cur16 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 %sum12)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data211, i64 %b.cur.len210, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len210
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort15:                             ; preds = %b.grow2
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len214

br.b1.80:                                         ; preds = %b.grow_done
  %br.b1.0 = trunc i64 %coerce.sext to i8
  store i8 %br.b1.0, ptr %b.rn.dst, align 1
  br label %br.done.80

br.c2.80:                                         ; preds = %b.grow_done
  br i1 %br.cmp2, label %br.b2.80, label %br.c3.80

br.b2.80:                                         ; preds = %br.c2.80
  %br.sh6 = lshr i64 %coerce.sext, 6
  %br.b2.0 = or i64 %br.sh6, 192
  %br.b2.0t = trunc i64 %br.b2.0 to i8
  %br.m6 = and i64 %coerce.sext, 63
  %br.b2.1 = or i64 %br.m6, 128
  %br.b2.1t = trunc i64 %br.b2.1 to i8
  store i8 %br.b2.0t, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b2.1t, ptr %br.dst1, align 1
  br label %br.done.80

br.c3.80:                                         ; preds = %br.c2.80
  br i1 %br.cmp3, label %br.b3.80, label %br.b4.80

br.b3.80:                                         ; preds = %br.c3.80
  %br.sh12 = lshr i64 %coerce.sext, 12
  %br.b3.0 = or i64 %br.sh12, 224
  %br.b3.0t = trunc i64 %br.b3.0 to i8
  %br.sh6.3 = lshr i64 %coerce.sext, 6
  %br.m6.3 = and i64 %br.sh6.3, 63
  %br.b3.1 = or i64 %br.m6.3, 128
  %br.b3.1t = trunc i64 %br.b3.1 to i8
  %br.mend = and i64 %coerce.sext, 63
  %br.b3.2 = or i64 %br.mend, 128
  %br.b3.2t = trunc i64 %br.b3.2 to i8
  store i8 %br.b3.0t, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b3.1t, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 %br.b3.2t, ptr %br.dst2.3, align 1
  br label %br.done.80

br.b4.80:                                         ; preds = %br.c3.80
  %br.sh18 = lshr i64 %coerce.sext, 18
  %br.b4.0 = or i64 %br.sh18, 240
  %br.b4.0t = trunc i64 %br.b4.0 to i8
  %br.sh12.4 = lshr i64 %coerce.sext, 12
  %br.m12.4 = and i64 %br.sh12.4, 63
  %br.b4.1 = or i64 %br.m12.4, 128
  %br.b4.1t = trunc i64 %br.b4.1 to i8
  %br.sh6.4 = lshr i64 %coerce.sext, 6
  %br.m6.4 = and i64 %br.sh6.4, 63
  %br.b4.2 = or i64 %br.m6.4, 128
  %br.b4.2t = trunc i64 %br.b4.2 to i8
  %br.mend4 = and i64 %coerce.sext, 63
  %br.b4.3 = or i64 %br.mend4, 128
  %br.b4.3t = trunc i64 %br.b4.3 to i8
  store i8 %br.b4.0t, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b4.1t, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 %br.b4.2t, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 %br.b4.3t, ptr %br.dst3.4, align 1
  br label %br.done.80

br.done.80:                                       ; preds = %br.b4.80, %br.b3.80, %br.b2.80, %br.b1.80
  %br.nul = getelementptr i8, ptr %b.rn.data17, i64 %sum5
  store i8 0, ptr %br.nul, align 1
  %b.len.gep18 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum5, ptr %b.len.gep18, align 8
  %b.load19 = load ptr, ptr %var.b, align 8
  %var.load20 = load i16, ptr %var.pb, align 2
  %bf.load = load i16, ptr %var.pb, align 2
  %bf.shr = lshr i16 %bf.load, 8
  %bf.mask = and i16 %bf.shr, 1
  %bf.flag = trunc i16 %bf.mask to i1
  br i1 %bf.flag, label %choice.then21, label %choice.else22

choice.then21:                                    ; preds = %br.done.80
  br label %choice.exit23

choice.else22:                                    ; preds = %br.done.80
  br label %choice.exit23

choice.exit23:                                    ; preds = %choice.else22, %choice.then21
  %choice.res24 = phi i32 [ 114, %choice.then21 ], [ 45, %choice.else22 ]
  %coerce.sext25 = sext i32 %choice.res24 to i64
  %br.cmp126 = icmp slt i64 %coerce.sext25, 128
  %br.cmp227 = icmp slt i64 %coerce.sext25, 2048
  %br.cmp328 = icmp slt i64 %coerce.sext25, 65536
  %br.w329 = select i1 %br.cmp328, i64 3, i64 4
  %br.w230 = select i1 %br.cmp227, i64 2, i64 %br.w329
  %br.width31 = select i1 %br.cmp126, i64 1, i64 %br.w230
  %b.rn.cur.len32 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load19, i32 0, i32 0
  %b.rn.cur.len33 = load i64, ptr %b.rn.cur.len32, align 8
  %b.rn.new.len34 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len33, i64 %br.width31)
  %sum35 = extractvalue { i64, i1 } %b.rn.new.len34, 0
  %ovf36 = extractvalue { i64, i1 } %b.rn.new.len34, 1
  br i1 %ovf36, label %str_overflow_abort38, label %b.rn.new.len37

b.rn.new.len37:                                   ; preds = %str_overflow_abort38, %choice.exit23
  %b.cap39 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load19, i32 0, i32 2
  %b.cap40 = load i64, ptr %b.cap39, align 8
  %b.need.grow41 = icmp slt i64 %b.cap40, %sum35
  br i1 %b.need.grow41, label %b.grow242, label %b.nogrow243

str_overflow_abort38:                             ; preds = %choice.exit23
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len37

b.grow242:                                        ; preds = %b.rn.new.len37
  %b.cap245 = mul i64 %b.cap40, 2
  %b.cap.small46 = icmp slt i64 %b.cap245, 16
  %b.cap.grow47 = select i1 %b.cap.small46, i64 16, i64 %b.cap245
  %b.cap.need48 = icmp slt i64 %b.cap.grow47, %sum35
  %b.new.cap49 = select i1 %b.cap.need48, i64 %sum35, i64 %b.cap.grow47
  %b.cur.len250 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load19, i32 0, i32 0
  %b.cur.len251 = load i64, ptr %b.cur.len250, align 8
  %b.cur.data252 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load19, i32 0, i32 1
  %b.cur.data253 = load ptr, ptr %b.cur.data252, align 8
  %b.new.buf.len254 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap49, i64 1)
  %sum55 = extractvalue { i64, i1 } %b.new.buf.len254, 0
  %ovf56 = extractvalue { i64, i1 } %b.new.buf.len254, 1
  br i1 %ovf56, label %str_overflow_abort58, label %b.new.buf.len257

b.nogrow243:                                      ; preds = %b.rn.new.len37
  br label %b.grow_done44

b.grow_done44:                                    ; preds = %b.nogrow243, %b.new.buf.len257
  %b.rn.data64 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load19, i32 0, i32 1
  %b.rn.data65 = load ptr, ptr %b.rn.data64, align 8
  %b.rn.dst66 = getelementptr i8, ptr %b.rn.data65, i64 %b.rn.cur.len33
  br i1 %br.cmp126, label %br.b1.81, label %br.c2.81

b.new.buf.len257:                                 ; preds = %str_overflow_abort58, %b.grow242
  %arena.cur59 = call ptr @dva_arena_current()
  %b.new.buf260 = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 %sum55)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf260, ptr align 1 %b.cur.data253, i64 %b.cur.len251, i1 false)
  %b.grow2.nul61 = getelementptr i8, ptr %b.new.buf260, i64 %b.cur.len251
  store i8 0, ptr %b.grow2.nul61, align 1
  %b.new.data2.gep62 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load19, i32 0, i32 1
  store ptr %b.new.buf260, ptr %b.new.data2.gep62, align 8
  %b.new.cap2.gep63 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load19, i32 0, i32 2
  store i64 %b.new.cap49, ptr %b.new.cap2.gep63, align 8
  br label %b.grow_done44

str_overflow_abort58:                             ; preds = %b.grow242
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len257

br.b1.81:                                         ; preds = %b.grow_done44
  %br.b1.067 = trunc i64 %coerce.sext25 to i8
  store i8 %br.b1.067, ptr %b.rn.dst66, align 1
  br label %br.done.81

br.c2.81:                                         ; preds = %b.grow_done44
  br i1 %br.cmp227, label %br.b2.81, label %br.c3.81

br.b2.81:                                         ; preds = %br.c2.81
  %br.sh668 = lshr i64 %coerce.sext25, 6
  %br.b2.069 = or i64 %br.sh668, 192
  %br.b2.0t70 = trunc i64 %br.b2.069 to i8
  %br.m671 = and i64 %coerce.sext25, 63
  %br.b2.172 = or i64 %br.m671, 128
  %br.b2.1t73 = trunc i64 %br.b2.172 to i8
  store i8 %br.b2.0t70, ptr %b.rn.dst66, align 1
  %br.dst174 = getelementptr i8, ptr %b.rn.dst66, i64 1
  store i8 %br.b2.1t73, ptr %br.dst174, align 1
  br label %br.done.81

br.c3.81:                                         ; preds = %br.c2.81
  br i1 %br.cmp328, label %br.b3.81, label %br.b4.81

br.b3.81:                                         ; preds = %br.c3.81
  %br.sh1275 = lshr i64 %coerce.sext25, 12
  %br.b3.076 = or i64 %br.sh1275, 224
  %br.b3.0t77 = trunc i64 %br.b3.076 to i8
  %br.sh6.378 = lshr i64 %coerce.sext25, 6
  %br.m6.379 = and i64 %br.sh6.378, 63
  %br.b3.180 = or i64 %br.m6.379, 128
  %br.b3.1t81 = trunc i64 %br.b3.180 to i8
  %br.mend82 = and i64 %coerce.sext25, 63
  %br.b3.283 = or i64 %br.mend82, 128
  %br.b3.2t84 = trunc i64 %br.b3.283 to i8
  store i8 %br.b3.0t77, ptr %b.rn.dst66, align 1
  %br.dst1.385 = getelementptr i8, ptr %b.rn.dst66, i64 1
  store i8 %br.b3.1t81, ptr %br.dst1.385, align 1
  %br.dst2.386 = getelementptr i8, ptr %b.rn.dst66, i64 2
  store i8 %br.b3.2t84, ptr %br.dst2.386, align 1
  br label %br.done.81

br.b4.81:                                         ; preds = %br.c3.81
  %br.sh1887 = lshr i64 %coerce.sext25, 18
  %br.b4.088 = or i64 %br.sh1887, 240
  %br.b4.0t89 = trunc i64 %br.b4.088 to i8
  %br.sh12.490 = lshr i64 %coerce.sext25, 12
  %br.m12.491 = and i64 %br.sh12.490, 63
  %br.b4.192 = or i64 %br.m12.491, 128
  %br.b4.1t93 = trunc i64 %br.b4.192 to i8
  %br.sh6.494 = lshr i64 %coerce.sext25, 6
  %br.m6.495 = and i64 %br.sh6.494, 63
  %br.b4.296 = or i64 %br.m6.495, 128
  %br.b4.2t97 = trunc i64 %br.b4.296 to i8
  %br.mend498 = and i64 %coerce.sext25, 63
  %br.b4.399 = or i64 %br.mend498, 128
  %br.b4.3t100 = trunc i64 %br.b4.399 to i8
  store i8 %br.b4.0t89, ptr %b.rn.dst66, align 1
  %br.dst1.4101 = getelementptr i8, ptr %b.rn.dst66, i64 1
  store i8 %br.b4.1t93, ptr %br.dst1.4101, align 1
  %br.dst2.4102 = getelementptr i8, ptr %b.rn.dst66, i64 2
  store i8 %br.b4.2t97, ptr %br.dst2.4102, align 1
  %br.dst3.4103 = getelementptr i8, ptr %b.rn.dst66, i64 3
  store i8 %br.b4.3t100, ptr %br.dst3.4103, align 1
  br label %br.done.81

br.done.81:                                       ; preds = %br.b4.81, %br.b3.81, %br.b2.81, %br.b1.81
  %br.nul104 = getelementptr i8, ptr %b.rn.data65, i64 %sum35
  store i8 0, ptr %br.nul104, align 1
  %b.len.gep105 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load19, i32 0, i32 0
  store i64 %sum35, ptr %b.len.gep105, align 8
  %b.load106 = load ptr, ptr %var.b, align 8
  %var.load107 = load i16, ptr %var.pb, align 2
  %bf.load108 = load i16, ptr %var.pb, align 2
  %bf.shr109 = lshr i16 %bf.load108, 7
  %bf.mask110 = and i16 %bf.shr109, 1
  %bf.flag111 = trunc i16 %bf.mask110 to i1
  br i1 %bf.flag111, label %choice.then112, label %choice.else113

choice.then112:                                   ; preds = %br.done.81
  br label %choice.exit114

choice.else113:                                   ; preds = %br.done.81
  br label %choice.exit114

choice.exit114:                                   ; preds = %choice.else113, %choice.then112
  %choice.res115 = phi i32 [ 119, %choice.then112 ], [ 45, %choice.else113 ]
  %coerce.sext116 = sext i32 %choice.res115 to i64
  %br.cmp1117 = icmp slt i64 %coerce.sext116, 128
  %br.cmp2118 = icmp slt i64 %coerce.sext116, 2048
  %br.cmp3119 = icmp slt i64 %coerce.sext116, 65536
  %br.w3120 = select i1 %br.cmp3119, i64 3, i64 4
  %br.w2121 = select i1 %br.cmp2118, i64 2, i64 %br.w3120
  %br.width122 = select i1 %br.cmp1117, i64 1, i64 %br.w2121
  %b.rn.cur.len123 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load106, i32 0, i32 0
  %b.rn.cur.len124 = load i64, ptr %b.rn.cur.len123, align 8
  %b.rn.new.len125 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len124, i64 %br.width122)
  %sum126 = extractvalue { i64, i1 } %b.rn.new.len125, 0
  %ovf127 = extractvalue { i64, i1 } %b.rn.new.len125, 1
  br i1 %ovf127, label %str_overflow_abort129, label %b.rn.new.len128

b.rn.new.len128:                                  ; preds = %str_overflow_abort129, %choice.exit114
  %b.cap130 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load106, i32 0, i32 2
  %b.cap131 = load i64, ptr %b.cap130, align 8
  %b.need.grow132 = icmp slt i64 %b.cap131, %sum126
  br i1 %b.need.grow132, label %b.grow2133, label %b.nogrow2134

str_overflow_abort129:                            ; preds = %choice.exit114
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len128

b.grow2133:                                       ; preds = %b.rn.new.len128
  %b.cap2136 = mul i64 %b.cap131, 2
  %b.cap.small137 = icmp slt i64 %b.cap2136, 16
  %b.cap.grow138 = select i1 %b.cap.small137, i64 16, i64 %b.cap2136
  %b.cap.need139 = icmp slt i64 %b.cap.grow138, %sum126
  %b.new.cap140 = select i1 %b.cap.need139, i64 %sum126, i64 %b.cap.grow138
  %b.cur.len2141 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load106, i32 0, i32 0
  %b.cur.len2142 = load i64, ptr %b.cur.len2141, align 8
  %b.cur.data2143 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load106, i32 0, i32 1
  %b.cur.data2144 = load ptr, ptr %b.cur.data2143, align 8
  %b.new.buf.len2145 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap140, i64 1)
  %sum146 = extractvalue { i64, i1 } %b.new.buf.len2145, 0
  %ovf147 = extractvalue { i64, i1 } %b.new.buf.len2145, 1
  br i1 %ovf147, label %str_overflow_abort149, label %b.new.buf.len2148

b.nogrow2134:                                     ; preds = %b.rn.new.len128
  br label %b.grow_done135

b.grow_done135:                                   ; preds = %b.nogrow2134, %b.new.buf.len2148
  %b.rn.data155 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load106, i32 0, i32 1
  %b.rn.data156 = load ptr, ptr %b.rn.data155, align 8
  %b.rn.dst157 = getelementptr i8, ptr %b.rn.data156, i64 %b.rn.cur.len124
  br i1 %br.cmp1117, label %br.b1.82, label %br.c2.82

b.new.buf.len2148:                                ; preds = %str_overflow_abort149, %b.grow2133
  %arena.cur150 = call ptr @dva_arena_current()
  %b.new.buf2151 = call ptr @dva_arena_alloc(ptr %arena.cur150, i64 %sum146)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2151, ptr align 1 %b.cur.data2144, i64 %b.cur.len2142, i1 false)
  %b.grow2.nul152 = getelementptr i8, ptr %b.new.buf2151, i64 %b.cur.len2142
  store i8 0, ptr %b.grow2.nul152, align 1
  %b.new.data2.gep153 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load106, i32 0, i32 1
  store ptr %b.new.buf2151, ptr %b.new.data2.gep153, align 8
  %b.new.cap2.gep154 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load106, i32 0, i32 2
  store i64 %b.new.cap140, ptr %b.new.cap2.gep154, align 8
  br label %b.grow_done135

str_overflow_abort149:                            ; preds = %b.grow2133
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2148

br.b1.82:                                         ; preds = %b.grow_done135
  %br.b1.0158 = trunc i64 %coerce.sext116 to i8
  store i8 %br.b1.0158, ptr %b.rn.dst157, align 1
  br label %br.done.82

br.c2.82:                                         ; preds = %b.grow_done135
  br i1 %br.cmp2118, label %br.b2.82, label %br.c3.82

br.b2.82:                                         ; preds = %br.c2.82
  %br.sh6159 = lshr i64 %coerce.sext116, 6
  %br.b2.0160 = or i64 %br.sh6159, 192
  %br.b2.0t161 = trunc i64 %br.b2.0160 to i8
  %br.m6162 = and i64 %coerce.sext116, 63
  %br.b2.1163 = or i64 %br.m6162, 128
  %br.b2.1t164 = trunc i64 %br.b2.1163 to i8
  store i8 %br.b2.0t161, ptr %b.rn.dst157, align 1
  %br.dst1165 = getelementptr i8, ptr %b.rn.dst157, i64 1
  store i8 %br.b2.1t164, ptr %br.dst1165, align 1
  br label %br.done.82

br.c3.82:                                         ; preds = %br.c2.82
  br i1 %br.cmp3119, label %br.b3.82, label %br.b4.82

br.b3.82:                                         ; preds = %br.c3.82
  %br.sh12166 = lshr i64 %coerce.sext116, 12
  %br.b3.0167 = or i64 %br.sh12166, 224
  %br.b3.0t168 = trunc i64 %br.b3.0167 to i8
  %br.sh6.3169 = lshr i64 %coerce.sext116, 6
  %br.m6.3170 = and i64 %br.sh6.3169, 63
  %br.b3.1171 = or i64 %br.m6.3170, 128
  %br.b3.1t172 = trunc i64 %br.b3.1171 to i8
  %br.mend173 = and i64 %coerce.sext116, 63
  %br.b3.2174 = or i64 %br.mend173, 128
  %br.b3.2t175 = trunc i64 %br.b3.2174 to i8
  store i8 %br.b3.0t168, ptr %b.rn.dst157, align 1
  %br.dst1.3176 = getelementptr i8, ptr %b.rn.dst157, i64 1
  store i8 %br.b3.1t172, ptr %br.dst1.3176, align 1
  %br.dst2.3177 = getelementptr i8, ptr %b.rn.dst157, i64 2
  store i8 %br.b3.2t175, ptr %br.dst2.3177, align 1
  br label %br.done.82

br.b4.82:                                         ; preds = %br.c3.82
  %br.sh18178 = lshr i64 %coerce.sext116, 18
  %br.b4.0179 = or i64 %br.sh18178, 240
  %br.b4.0t180 = trunc i64 %br.b4.0179 to i8
  %br.sh12.4181 = lshr i64 %coerce.sext116, 12
  %br.m12.4182 = and i64 %br.sh12.4181, 63
  %br.b4.1183 = or i64 %br.m12.4182, 128
  %br.b4.1t184 = trunc i64 %br.b4.1183 to i8
  %br.sh6.4185 = lshr i64 %coerce.sext116, 6
  %br.m6.4186 = and i64 %br.sh6.4185, 63
  %br.b4.2187 = or i64 %br.m6.4186, 128
  %br.b4.2t188 = trunc i64 %br.b4.2187 to i8
  %br.mend4189 = and i64 %coerce.sext116, 63
  %br.b4.3190 = or i64 %br.mend4189, 128
  %br.b4.3t191 = trunc i64 %br.b4.3190 to i8
  store i8 %br.b4.0t180, ptr %b.rn.dst157, align 1
  %br.dst1.4192 = getelementptr i8, ptr %b.rn.dst157, i64 1
  store i8 %br.b4.1t184, ptr %br.dst1.4192, align 1
  %br.dst2.4193 = getelementptr i8, ptr %b.rn.dst157, i64 2
  store i8 %br.b4.2t188, ptr %br.dst2.4193, align 1
  %br.dst3.4194 = getelementptr i8, ptr %b.rn.dst157, i64 3
  store i8 %br.b4.3t191, ptr %br.dst3.4194, align 1
  br label %br.done.82

br.done.82:                                       ; preds = %br.b4.82, %br.b3.82, %br.b2.82, %br.b1.82
  %br.nul195 = getelementptr i8, ptr %b.rn.data156, i64 %sum126
  store i8 0, ptr %br.nul195, align 1
  %b.len.gep196 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load106, i32 0, i32 0
  store i64 %sum126, ptr %b.len.gep196, align 8
  %b.load197 = load ptr, ptr %var.b, align 8
  %var.load198 = load i16, ptr %var.pb, align 2
  %bf.load199 = load i16, ptr %var.pb, align 2
  %bf.shr200 = lshr i16 %bf.load199, 6
  %bf.mask201 = and i16 %bf.shr200, 1
  %bf.flag202 = trunc i16 %bf.mask201 to i1
  br i1 %bf.flag202, label %choice.then203, label %choice.else204

choice.then203:                                   ; preds = %br.done.82
  br label %choice.exit205

choice.else204:                                   ; preds = %br.done.82
  br label %choice.exit205

choice.exit205:                                   ; preds = %choice.else204, %choice.then203
  %choice.res206 = phi i32 [ 120, %choice.then203 ], [ 45, %choice.else204 ]
  %coerce.sext207 = sext i32 %choice.res206 to i64
  %br.cmp1208 = icmp slt i64 %coerce.sext207, 128
  %br.cmp2209 = icmp slt i64 %coerce.sext207, 2048
  %br.cmp3210 = icmp slt i64 %coerce.sext207, 65536
  %br.w3211 = select i1 %br.cmp3210, i64 3, i64 4
  %br.w2212 = select i1 %br.cmp2209, i64 2, i64 %br.w3211
  %br.width213 = select i1 %br.cmp1208, i64 1, i64 %br.w2212
  %b.rn.cur.len214 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load197, i32 0, i32 0
  %b.rn.cur.len215 = load i64, ptr %b.rn.cur.len214, align 8
  %b.rn.new.len216 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len215, i64 %br.width213)
  %sum217 = extractvalue { i64, i1 } %b.rn.new.len216, 0
  %ovf218 = extractvalue { i64, i1 } %b.rn.new.len216, 1
  br i1 %ovf218, label %str_overflow_abort220, label %b.rn.new.len219

b.rn.new.len219:                                  ; preds = %str_overflow_abort220, %choice.exit205
  %b.cap221 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load197, i32 0, i32 2
  %b.cap222 = load i64, ptr %b.cap221, align 8
  %b.need.grow223 = icmp slt i64 %b.cap222, %sum217
  br i1 %b.need.grow223, label %b.grow2224, label %b.nogrow2225

str_overflow_abort220:                            ; preds = %choice.exit205
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len219

b.grow2224:                                       ; preds = %b.rn.new.len219
  %b.cap2227 = mul i64 %b.cap222, 2
  %b.cap.small228 = icmp slt i64 %b.cap2227, 16
  %b.cap.grow229 = select i1 %b.cap.small228, i64 16, i64 %b.cap2227
  %b.cap.need230 = icmp slt i64 %b.cap.grow229, %sum217
  %b.new.cap231 = select i1 %b.cap.need230, i64 %sum217, i64 %b.cap.grow229
  %b.cur.len2232 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load197, i32 0, i32 0
  %b.cur.len2233 = load i64, ptr %b.cur.len2232, align 8
  %b.cur.data2234 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load197, i32 0, i32 1
  %b.cur.data2235 = load ptr, ptr %b.cur.data2234, align 8
  %b.new.buf.len2236 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap231, i64 1)
  %sum237 = extractvalue { i64, i1 } %b.new.buf.len2236, 0
  %ovf238 = extractvalue { i64, i1 } %b.new.buf.len2236, 1
  br i1 %ovf238, label %str_overflow_abort240, label %b.new.buf.len2239

b.nogrow2225:                                     ; preds = %b.rn.new.len219
  br label %b.grow_done226

b.grow_done226:                                   ; preds = %b.nogrow2225, %b.new.buf.len2239
  %b.rn.data246 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load197, i32 0, i32 1
  %b.rn.data247 = load ptr, ptr %b.rn.data246, align 8
  %b.rn.dst248 = getelementptr i8, ptr %b.rn.data247, i64 %b.rn.cur.len215
  br i1 %br.cmp1208, label %br.b1.83, label %br.c2.83

b.new.buf.len2239:                                ; preds = %str_overflow_abort240, %b.grow2224
  %arena.cur241 = call ptr @dva_arena_current()
  %b.new.buf2242 = call ptr @dva_arena_alloc(ptr %arena.cur241, i64 %sum237)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2242, ptr align 1 %b.cur.data2235, i64 %b.cur.len2233, i1 false)
  %b.grow2.nul243 = getelementptr i8, ptr %b.new.buf2242, i64 %b.cur.len2233
  store i8 0, ptr %b.grow2.nul243, align 1
  %b.new.data2.gep244 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load197, i32 0, i32 1
  store ptr %b.new.buf2242, ptr %b.new.data2.gep244, align 8
  %b.new.cap2.gep245 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load197, i32 0, i32 2
  store i64 %b.new.cap231, ptr %b.new.cap2.gep245, align 8
  br label %b.grow_done226

str_overflow_abort240:                            ; preds = %b.grow2224
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2239

br.b1.83:                                         ; preds = %b.grow_done226
  %br.b1.0249 = trunc i64 %coerce.sext207 to i8
  store i8 %br.b1.0249, ptr %b.rn.dst248, align 1
  br label %br.done.83

br.c2.83:                                         ; preds = %b.grow_done226
  br i1 %br.cmp2209, label %br.b2.83, label %br.c3.83

br.b2.83:                                         ; preds = %br.c2.83
  %br.sh6250 = lshr i64 %coerce.sext207, 6
  %br.b2.0251 = or i64 %br.sh6250, 192
  %br.b2.0t252 = trunc i64 %br.b2.0251 to i8
  %br.m6253 = and i64 %coerce.sext207, 63
  %br.b2.1254 = or i64 %br.m6253, 128
  %br.b2.1t255 = trunc i64 %br.b2.1254 to i8
  store i8 %br.b2.0t252, ptr %b.rn.dst248, align 1
  %br.dst1256 = getelementptr i8, ptr %b.rn.dst248, i64 1
  store i8 %br.b2.1t255, ptr %br.dst1256, align 1
  br label %br.done.83

br.c3.83:                                         ; preds = %br.c2.83
  br i1 %br.cmp3210, label %br.b3.83, label %br.b4.83

br.b3.83:                                         ; preds = %br.c3.83
  %br.sh12257 = lshr i64 %coerce.sext207, 12
  %br.b3.0258 = or i64 %br.sh12257, 224
  %br.b3.0t259 = trunc i64 %br.b3.0258 to i8
  %br.sh6.3260 = lshr i64 %coerce.sext207, 6
  %br.m6.3261 = and i64 %br.sh6.3260, 63
  %br.b3.1262 = or i64 %br.m6.3261, 128
  %br.b3.1t263 = trunc i64 %br.b3.1262 to i8
  %br.mend264 = and i64 %coerce.sext207, 63
  %br.b3.2265 = or i64 %br.mend264, 128
  %br.b3.2t266 = trunc i64 %br.b3.2265 to i8
  store i8 %br.b3.0t259, ptr %b.rn.dst248, align 1
  %br.dst1.3267 = getelementptr i8, ptr %b.rn.dst248, i64 1
  store i8 %br.b3.1t263, ptr %br.dst1.3267, align 1
  %br.dst2.3268 = getelementptr i8, ptr %b.rn.dst248, i64 2
  store i8 %br.b3.2t266, ptr %br.dst2.3268, align 1
  br label %br.done.83

br.b4.83:                                         ; preds = %br.c3.83
  %br.sh18269 = lshr i64 %coerce.sext207, 18
  %br.b4.0270 = or i64 %br.sh18269, 240
  %br.b4.0t271 = trunc i64 %br.b4.0270 to i8
  %br.sh12.4272 = lshr i64 %coerce.sext207, 12
  %br.m12.4273 = and i64 %br.sh12.4272, 63
  %br.b4.1274 = or i64 %br.m12.4273, 128
  %br.b4.1t275 = trunc i64 %br.b4.1274 to i8
  %br.sh6.4276 = lshr i64 %coerce.sext207, 6
  %br.m6.4277 = and i64 %br.sh6.4276, 63
  %br.b4.2278 = or i64 %br.m6.4277, 128
  %br.b4.2t279 = trunc i64 %br.b4.2278 to i8
  %br.mend4280 = and i64 %coerce.sext207, 63
  %br.b4.3281 = or i64 %br.mend4280, 128
  %br.b4.3t282 = trunc i64 %br.b4.3281 to i8
  store i8 %br.b4.0t271, ptr %b.rn.dst248, align 1
  %br.dst1.4283 = getelementptr i8, ptr %b.rn.dst248, i64 1
  store i8 %br.b4.1t275, ptr %br.dst1.4283, align 1
  %br.dst2.4284 = getelementptr i8, ptr %b.rn.dst248, i64 2
  store i8 %br.b4.2t279, ptr %br.dst2.4284, align 1
  %br.dst3.4285 = getelementptr i8, ptr %b.rn.dst248, i64 3
  store i8 %br.b4.3t282, ptr %br.dst3.4285, align 1
  br label %br.done.83

br.done.83:                                       ; preds = %br.b4.83, %br.b3.83, %br.b2.83, %br.b1.83
  %br.nul286 = getelementptr i8, ptr %b.rn.data247, i64 %sum217
  store i8 0, ptr %br.nul286, align 1
  %b.len.gep287 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load197, i32 0, i32 0
  store i64 %sum217, ptr %b.len.gep287, align 8
  %b.load288 = load ptr, ptr %var.b, align 8
  %var.load289 = load i16, ptr %var.pb, align 2
  %bf.load290 = load i16, ptr %var.pb, align 2
  %bf.shr291 = lshr i16 %bf.load290, 5
  %bf.mask292 = and i16 %bf.shr291, 1
  %bf.flag293 = trunc i16 %bf.mask292 to i1
  br i1 %bf.flag293, label %choice.then294, label %choice.else295

choice.then294:                                   ; preds = %br.done.83
  br label %choice.exit296

choice.else295:                                   ; preds = %br.done.83
  br label %choice.exit296

choice.exit296:                                   ; preds = %choice.else295, %choice.then294
  %choice.res297 = phi i32 [ 114, %choice.then294 ], [ 45, %choice.else295 ]
  %coerce.sext298 = sext i32 %choice.res297 to i64
  %br.cmp1299 = icmp slt i64 %coerce.sext298, 128
  %br.cmp2300 = icmp slt i64 %coerce.sext298, 2048
  %br.cmp3301 = icmp slt i64 %coerce.sext298, 65536
  %br.w3302 = select i1 %br.cmp3301, i64 3, i64 4
  %br.w2303 = select i1 %br.cmp2300, i64 2, i64 %br.w3302
  %br.width304 = select i1 %br.cmp1299, i64 1, i64 %br.w2303
  %b.rn.cur.len305 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load288, i32 0, i32 0
  %b.rn.cur.len306 = load i64, ptr %b.rn.cur.len305, align 8
  %b.rn.new.len307 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len306, i64 %br.width304)
  %sum308 = extractvalue { i64, i1 } %b.rn.new.len307, 0
  %ovf309 = extractvalue { i64, i1 } %b.rn.new.len307, 1
  br i1 %ovf309, label %str_overflow_abort311, label %b.rn.new.len310

b.rn.new.len310:                                  ; preds = %str_overflow_abort311, %choice.exit296
  %b.cap312 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load288, i32 0, i32 2
  %b.cap313 = load i64, ptr %b.cap312, align 8
  %b.need.grow314 = icmp slt i64 %b.cap313, %sum308
  br i1 %b.need.grow314, label %b.grow2315, label %b.nogrow2316

str_overflow_abort311:                            ; preds = %choice.exit296
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len310

b.grow2315:                                       ; preds = %b.rn.new.len310
  %b.cap2318 = mul i64 %b.cap313, 2
  %b.cap.small319 = icmp slt i64 %b.cap2318, 16
  %b.cap.grow320 = select i1 %b.cap.small319, i64 16, i64 %b.cap2318
  %b.cap.need321 = icmp slt i64 %b.cap.grow320, %sum308
  %b.new.cap322 = select i1 %b.cap.need321, i64 %sum308, i64 %b.cap.grow320
  %b.cur.len2323 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load288, i32 0, i32 0
  %b.cur.len2324 = load i64, ptr %b.cur.len2323, align 8
  %b.cur.data2325 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load288, i32 0, i32 1
  %b.cur.data2326 = load ptr, ptr %b.cur.data2325, align 8
  %b.new.buf.len2327 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap322, i64 1)
  %sum328 = extractvalue { i64, i1 } %b.new.buf.len2327, 0
  %ovf329 = extractvalue { i64, i1 } %b.new.buf.len2327, 1
  br i1 %ovf329, label %str_overflow_abort331, label %b.new.buf.len2330

b.nogrow2316:                                     ; preds = %b.rn.new.len310
  br label %b.grow_done317

b.grow_done317:                                   ; preds = %b.nogrow2316, %b.new.buf.len2330
  %b.rn.data337 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load288, i32 0, i32 1
  %b.rn.data338 = load ptr, ptr %b.rn.data337, align 8
  %b.rn.dst339 = getelementptr i8, ptr %b.rn.data338, i64 %b.rn.cur.len306
  br i1 %br.cmp1299, label %br.b1.84, label %br.c2.84

b.new.buf.len2330:                                ; preds = %str_overflow_abort331, %b.grow2315
  %arena.cur332 = call ptr @dva_arena_current()
  %b.new.buf2333 = call ptr @dva_arena_alloc(ptr %arena.cur332, i64 %sum328)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2333, ptr align 1 %b.cur.data2326, i64 %b.cur.len2324, i1 false)
  %b.grow2.nul334 = getelementptr i8, ptr %b.new.buf2333, i64 %b.cur.len2324
  store i8 0, ptr %b.grow2.nul334, align 1
  %b.new.data2.gep335 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load288, i32 0, i32 1
  store ptr %b.new.buf2333, ptr %b.new.data2.gep335, align 8
  %b.new.cap2.gep336 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load288, i32 0, i32 2
  store i64 %b.new.cap322, ptr %b.new.cap2.gep336, align 8
  br label %b.grow_done317

str_overflow_abort331:                            ; preds = %b.grow2315
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2330

br.b1.84:                                         ; preds = %b.grow_done317
  %br.b1.0340 = trunc i64 %coerce.sext298 to i8
  store i8 %br.b1.0340, ptr %b.rn.dst339, align 1
  br label %br.done.84

br.c2.84:                                         ; preds = %b.grow_done317
  br i1 %br.cmp2300, label %br.b2.84, label %br.c3.84

br.b2.84:                                         ; preds = %br.c2.84
  %br.sh6341 = lshr i64 %coerce.sext298, 6
  %br.b2.0342 = or i64 %br.sh6341, 192
  %br.b2.0t343 = trunc i64 %br.b2.0342 to i8
  %br.m6344 = and i64 %coerce.sext298, 63
  %br.b2.1345 = or i64 %br.m6344, 128
  %br.b2.1t346 = trunc i64 %br.b2.1345 to i8
  store i8 %br.b2.0t343, ptr %b.rn.dst339, align 1
  %br.dst1347 = getelementptr i8, ptr %b.rn.dst339, i64 1
  store i8 %br.b2.1t346, ptr %br.dst1347, align 1
  br label %br.done.84

br.c3.84:                                         ; preds = %br.c2.84
  br i1 %br.cmp3301, label %br.b3.84, label %br.b4.84

br.b3.84:                                         ; preds = %br.c3.84
  %br.sh12348 = lshr i64 %coerce.sext298, 12
  %br.b3.0349 = or i64 %br.sh12348, 224
  %br.b3.0t350 = trunc i64 %br.b3.0349 to i8
  %br.sh6.3351 = lshr i64 %coerce.sext298, 6
  %br.m6.3352 = and i64 %br.sh6.3351, 63
  %br.b3.1353 = or i64 %br.m6.3352, 128
  %br.b3.1t354 = trunc i64 %br.b3.1353 to i8
  %br.mend355 = and i64 %coerce.sext298, 63
  %br.b3.2356 = or i64 %br.mend355, 128
  %br.b3.2t357 = trunc i64 %br.b3.2356 to i8
  store i8 %br.b3.0t350, ptr %b.rn.dst339, align 1
  %br.dst1.3358 = getelementptr i8, ptr %b.rn.dst339, i64 1
  store i8 %br.b3.1t354, ptr %br.dst1.3358, align 1
  %br.dst2.3359 = getelementptr i8, ptr %b.rn.dst339, i64 2
  store i8 %br.b3.2t357, ptr %br.dst2.3359, align 1
  br label %br.done.84

br.b4.84:                                         ; preds = %br.c3.84
  %br.sh18360 = lshr i64 %coerce.sext298, 18
  %br.b4.0361 = or i64 %br.sh18360, 240
  %br.b4.0t362 = trunc i64 %br.b4.0361 to i8
  %br.sh12.4363 = lshr i64 %coerce.sext298, 12
  %br.m12.4364 = and i64 %br.sh12.4363, 63
  %br.b4.1365 = or i64 %br.m12.4364, 128
  %br.b4.1t366 = trunc i64 %br.b4.1365 to i8
  %br.sh6.4367 = lshr i64 %coerce.sext298, 6
  %br.m6.4368 = and i64 %br.sh6.4367, 63
  %br.b4.2369 = or i64 %br.m6.4368, 128
  %br.b4.2t370 = trunc i64 %br.b4.2369 to i8
  %br.mend4371 = and i64 %coerce.sext298, 63
  %br.b4.3372 = or i64 %br.mend4371, 128
  %br.b4.3t373 = trunc i64 %br.b4.3372 to i8
  store i8 %br.b4.0t362, ptr %b.rn.dst339, align 1
  %br.dst1.4374 = getelementptr i8, ptr %b.rn.dst339, i64 1
  store i8 %br.b4.1t366, ptr %br.dst1.4374, align 1
  %br.dst2.4375 = getelementptr i8, ptr %b.rn.dst339, i64 2
  store i8 %br.b4.2t370, ptr %br.dst2.4375, align 1
  %br.dst3.4376 = getelementptr i8, ptr %b.rn.dst339, i64 3
  store i8 %br.b4.3t373, ptr %br.dst3.4376, align 1
  br label %br.done.84

br.done.84:                                       ; preds = %br.b4.84, %br.b3.84, %br.b2.84, %br.b1.84
  %br.nul377 = getelementptr i8, ptr %b.rn.data338, i64 %sum308
  store i8 0, ptr %br.nul377, align 1
  %b.len.gep378 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load288, i32 0, i32 0
  store i64 %sum308, ptr %b.len.gep378, align 8
  %b.load379 = load ptr, ptr %var.b, align 8
  %var.load380 = load i16, ptr %var.pb, align 2
  %bf.load381 = load i16, ptr %var.pb, align 2
  %bf.shr382 = lshr i16 %bf.load381, 4
  %bf.mask383 = and i16 %bf.shr382, 1
  %bf.flag384 = trunc i16 %bf.mask383 to i1
  br i1 %bf.flag384, label %choice.then385, label %choice.else386

choice.then385:                                   ; preds = %br.done.84
  br label %choice.exit387

choice.else386:                                   ; preds = %br.done.84
  br label %choice.exit387

choice.exit387:                                   ; preds = %choice.else386, %choice.then385
  %choice.res388 = phi i32 [ 119, %choice.then385 ], [ 45, %choice.else386 ]
  %coerce.sext389 = sext i32 %choice.res388 to i64
  %br.cmp1390 = icmp slt i64 %coerce.sext389, 128
  %br.cmp2391 = icmp slt i64 %coerce.sext389, 2048
  %br.cmp3392 = icmp slt i64 %coerce.sext389, 65536
  %br.w3393 = select i1 %br.cmp3392, i64 3, i64 4
  %br.w2394 = select i1 %br.cmp2391, i64 2, i64 %br.w3393
  %br.width395 = select i1 %br.cmp1390, i64 1, i64 %br.w2394
  %b.rn.cur.len396 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load379, i32 0, i32 0
  %b.rn.cur.len397 = load i64, ptr %b.rn.cur.len396, align 8
  %b.rn.new.len398 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len397, i64 %br.width395)
  %sum399 = extractvalue { i64, i1 } %b.rn.new.len398, 0
  %ovf400 = extractvalue { i64, i1 } %b.rn.new.len398, 1
  br i1 %ovf400, label %str_overflow_abort402, label %b.rn.new.len401

b.rn.new.len401:                                  ; preds = %str_overflow_abort402, %choice.exit387
  %b.cap403 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load379, i32 0, i32 2
  %b.cap404 = load i64, ptr %b.cap403, align 8
  %b.need.grow405 = icmp slt i64 %b.cap404, %sum399
  br i1 %b.need.grow405, label %b.grow2406, label %b.nogrow2407

str_overflow_abort402:                            ; preds = %choice.exit387
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len401

b.grow2406:                                       ; preds = %b.rn.new.len401
  %b.cap2409 = mul i64 %b.cap404, 2
  %b.cap.small410 = icmp slt i64 %b.cap2409, 16
  %b.cap.grow411 = select i1 %b.cap.small410, i64 16, i64 %b.cap2409
  %b.cap.need412 = icmp slt i64 %b.cap.grow411, %sum399
  %b.new.cap413 = select i1 %b.cap.need412, i64 %sum399, i64 %b.cap.grow411
  %b.cur.len2414 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load379, i32 0, i32 0
  %b.cur.len2415 = load i64, ptr %b.cur.len2414, align 8
  %b.cur.data2416 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load379, i32 0, i32 1
  %b.cur.data2417 = load ptr, ptr %b.cur.data2416, align 8
  %b.new.buf.len2418 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap413, i64 1)
  %sum419 = extractvalue { i64, i1 } %b.new.buf.len2418, 0
  %ovf420 = extractvalue { i64, i1 } %b.new.buf.len2418, 1
  br i1 %ovf420, label %str_overflow_abort422, label %b.new.buf.len2421

b.nogrow2407:                                     ; preds = %b.rn.new.len401
  br label %b.grow_done408

b.grow_done408:                                   ; preds = %b.nogrow2407, %b.new.buf.len2421
  %b.rn.data428 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load379, i32 0, i32 1
  %b.rn.data429 = load ptr, ptr %b.rn.data428, align 8
  %b.rn.dst430 = getelementptr i8, ptr %b.rn.data429, i64 %b.rn.cur.len397
  br i1 %br.cmp1390, label %br.b1.85, label %br.c2.85

b.new.buf.len2421:                                ; preds = %str_overflow_abort422, %b.grow2406
  %arena.cur423 = call ptr @dva_arena_current()
  %b.new.buf2424 = call ptr @dva_arena_alloc(ptr %arena.cur423, i64 %sum419)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2424, ptr align 1 %b.cur.data2417, i64 %b.cur.len2415, i1 false)
  %b.grow2.nul425 = getelementptr i8, ptr %b.new.buf2424, i64 %b.cur.len2415
  store i8 0, ptr %b.grow2.nul425, align 1
  %b.new.data2.gep426 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load379, i32 0, i32 1
  store ptr %b.new.buf2424, ptr %b.new.data2.gep426, align 8
  %b.new.cap2.gep427 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load379, i32 0, i32 2
  store i64 %b.new.cap413, ptr %b.new.cap2.gep427, align 8
  br label %b.grow_done408

str_overflow_abort422:                            ; preds = %b.grow2406
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2421

br.b1.85:                                         ; preds = %b.grow_done408
  %br.b1.0431 = trunc i64 %coerce.sext389 to i8
  store i8 %br.b1.0431, ptr %b.rn.dst430, align 1
  br label %br.done.85

br.c2.85:                                         ; preds = %b.grow_done408
  br i1 %br.cmp2391, label %br.b2.85, label %br.c3.85

br.b2.85:                                         ; preds = %br.c2.85
  %br.sh6432 = lshr i64 %coerce.sext389, 6
  %br.b2.0433 = or i64 %br.sh6432, 192
  %br.b2.0t434 = trunc i64 %br.b2.0433 to i8
  %br.m6435 = and i64 %coerce.sext389, 63
  %br.b2.1436 = or i64 %br.m6435, 128
  %br.b2.1t437 = trunc i64 %br.b2.1436 to i8
  store i8 %br.b2.0t434, ptr %b.rn.dst430, align 1
  %br.dst1438 = getelementptr i8, ptr %b.rn.dst430, i64 1
  store i8 %br.b2.1t437, ptr %br.dst1438, align 1
  br label %br.done.85

br.c3.85:                                         ; preds = %br.c2.85
  br i1 %br.cmp3392, label %br.b3.85, label %br.b4.85

br.b3.85:                                         ; preds = %br.c3.85
  %br.sh12439 = lshr i64 %coerce.sext389, 12
  %br.b3.0440 = or i64 %br.sh12439, 224
  %br.b3.0t441 = trunc i64 %br.b3.0440 to i8
  %br.sh6.3442 = lshr i64 %coerce.sext389, 6
  %br.m6.3443 = and i64 %br.sh6.3442, 63
  %br.b3.1444 = or i64 %br.m6.3443, 128
  %br.b3.1t445 = trunc i64 %br.b3.1444 to i8
  %br.mend446 = and i64 %coerce.sext389, 63
  %br.b3.2447 = or i64 %br.mend446, 128
  %br.b3.2t448 = trunc i64 %br.b3.2447 to i8
  store i8 %br.b3.0t441, ptr %b.rn.dst430, align 1
  %br.dst1.3449 = getelementptr i8, ptr %b.rn.dst430, i64 1
  store i8 %br.b3.1t445, ptr %br.dst1.3449, align 1
  %br.dst2.3450 = getelementptr i8, ptr %b.rn.dst430, i64 2
  store i8 %br.b3.2t448, ptr %br.dst2.3450, align 1
  br label %br.done.85

br.b4.85:                                         ; preds = %br.c3.85
  %br.sh18451 = lshr i64 %coerce.sext389, 18
  %br.b4.0452 = or i64 %br.sh18451, 240
  %br.b4.0t453 = trunc i64 %br.b4.0452 to i8
  %br.sh12.4454 = lshr i64 %coerce.sext389, 12
  %br.m12.4455 = and i64 %br.sh12.4454, 63
  %br.b4.1456 = or i64 %br.m12.4455, 128
  %br.b4.1t457 = trunc i64 %br.b4.1456 to i8
  %br.sh6.4458 = lshr i64 %coerce.sext389, 6
  %br.m6.4459 = and i64 %br.sh6.4458, 63
  %br.b4.2460 = or i64 %br.m6.4459, 128
  %br.b4.2t461 = trunc i64 %br.b4.2460 to i8
  %br.mend4462 = and i64 %coerce.sext389, 63
  %br.b4.3463 = or i64 %br.mend4462, 128
  %br.b4.3t464 = trunc i64 %br.b4.3463 to i8
  store i8 %br.b4.0t453, ptr %b.rn.dst430, align 1
  %br.dst1.4465 = getelementptr i8, ptr %b.rn.dst430, i64 1
  store i8 %br.b4.1t457, ptr %br.dst1.4465, align 1
  %br.dst2.4466 = getelementptr i8, ptr %b.rn.dst430, i64 2
  store i8 %br.b4.2t461, ptr %br.dst2.4466, align 1
  %br.dst3.4467 = getelementptr i8, ptr %b.rn.dst430, i64 3
  store i8 %br.b4.3t464, ptr %br.dst3.4467, align 1
  br label %br.done.85

br.done.85:                                       ; preds = %br.b4.85, %br.b3.85, %br.b2.85, %br.b1.85
  %br.nul468 = getelementptr i8, ptr %b.rn.data429, i64 %sum399
  store i8 0, ptr %br.nul468, align 1
  %b.len.gep469 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load379, i32 0, i32 0
  store i64 %sum399, ptr %b.len.gep469, align 8
  %b.load470 = load ptr, ptr %var.b, align 8
  %var.load471 = load i16, ptr %var.pb, align 2
  %bf.load472 = load i16, ptr %var.pb, align 2
  %bf.shr473 = lshr i16 %bf.load472, 3
  %bf.mask474 = and i16 %bf.shr473, 1
  %bf.flag475 = trunc i16 %bf.mask474 to i1
  br i1 %bf.flag475, label %choice.then476, label %choice.else477

choice.then476:                                   ; preds = %br.done.85
  br label %choice.exit478

choice.else477:                                   ; preds = %br.done.85
  br label %choice.exit478

choice.exit478:                                   ; preds = %choice.else477, %choice.then476
  %choice.res479 = phi i32 [ 120, %choice.then476 ], [ 45, %choice.else477 ]
  %coerce.sext480 = sext i32 %choice.res479 to i64
  %br.cmp1481 = icmp slt i64 %coerce.sext480, 128
  %br.cmp2482 = icmp slt i64 %coerce.sext480, 2048
  %br.cmp3483 = icmp slt i64 %coerce.sext480, 65536
  %br.w3484 = select i1 %br.cmp3483, i64 3, i64 4
  %br.w2485 = select i1 %br.cmp2482, i64 2, i64 %br.w3484
  %br.width486 = select i1 %br.cmp1481, i64 1, i64 %br.w2485
  %b.rn.cur.len487 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load470, i32 0, i32 0
  %b.rn.cur.len488 = load i64, ptr %b.rn.cur.len487, align 8
  %b.rn.new.len489 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len488, i64 %br.width486)
  %sum490 = extractvalue { i64, i1 } %b.rn.new.len489, 0
  %ovf491 = extractvalue { i64, i1 } %b.rn.new.len489, 1
  br i1 %ovf491, label %str_overflow_abort493, label %b.rn.new.len492

b.rn.new.len492:                                  ; preds = %str_overflow_abort493, %choice.exit478
  %b.cap494 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load470, i32 0, i32 2
  %b.cap495 = load i64, ptr %b.cap494, align 8
  %b.need.grow496 = icmp slt i64 %b.cap495, %sum490
  br i1 %b.need.grow496, label %b.grow2497, label %b.nogrow2498

str_overflow_abort493:                            ; preds = %choice.exit478
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len492

b.grow2497:                                       ; preds = %b.rn.new.len492
  %b.cap2500 = mul i64 %b.cap495, 2
  %b.cap.small501 = icmp slt i64 %b.cap2500, 16
  %b.cap.grow502 = select i1 %b.cap.small501, i64 16, i64 %b.cap2500
  %b.cap.need503 = icmp slt i64 %b.cap.grow502, %sum490
  %b.new.cap504 = select i1 %b.cap.need503, i64 %sum490, i64 %b.cap.grow502
  %b.cur.len2505 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load470, i32 0, i32 0
  %b.cur.len2506 = load i64, ptr %b.cur.len2505, align 8
  %b.cur.data2507 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load470, i32 0, i32 1
  %b.cur.data2508 = load ptr, ptr %b.cur.data2507, align 8
  %b.new.buf.len2509 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap504, i64 1)
  %sum510 = extractvalue { i64, i1 } %b.new.buf.len2509, 0
  %ovf511 = extractvalue { i64, i1 } %b.new.buf.len2509, 1
  br i1 %ovf511, label %str_overflow_abort513, label %b.new.buf.len2512

b.nogrow2498:                                     ; preds = %b.rn.new.len492
  br label %b.grow_done499

b.grow_done499:                                   ; preds = %b.nogrow2498, %b.new.buf.len2512
  %b.rn.data519 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load470, i32 0, i32 1
  %b.rn.data520 = load ptr, ptr %b.rn.data519, align 8
  %b.rn.dst521 = getelementptr i8, ptr %b.rn.data520, i64 %b.rn.cur.len488
  br i1 %br.cmp1481, label %br.b1.86, label %br.c2.86

b.new.buf.len2512:                                ; preds = %str_overflow_abort513, %b.grow2497
  %arena.cur514 = call ptr @dva_arena_current()
  %b.new.buf2515 = call ptr @dva_arena_alloc(ptr %arena.cur514, i64 %sum510)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2515, ptr align 1 %b.cur.data2508, i64 %b.cur.len2506, i1 false)
  %b.grow2.nul516 = getelementptr i8, ptr %b.new.buf2515, i64 %b.cur.len2506
  store i8 0, ptr %b.grow2.nul516, align 1
  %b.new.data2.gep517 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load470, i32 0, i32 1
  store ptr %b.new.buf2515, ptr %b.new.data2.gep517, align 8
  %b.new.cap2.gep518 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load470, i32 0, i32 2
  store i64 %b.new.cap504, ptr %b.new.cap2.gep518, align 8
  br label %b.grow_done499

str_overflow_abort513:                            ; preds = %b.grow2497
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2512

br.b1.86:                                         ; preds = %b.grow_done499
  %br.b1.0522 = trunc i64 %coerce.sext480 to i8
  store i8 %br.b1.0522, ptr %b.rn.dst521, align 1
  br label %br.done.86

br.c2.86:                                         ; preds = %b.grow_done499
  br i1 %br.cmp2482, label %br.b2.86, label %br.c3.86

br.b2.86:                                         ; preds = %br.c2.86
  %br.sh6523 = lshr i64 %coerce.sext480, 6
  %br.b2.0524 = or i64 %br.sh6523, 192
  %br.b2.0t525 = trunc i64 %br.b2.0524 to i8
  %br.m6526 = and i64 %coerce.sext480, 63
  %br.b2.1527 = or i64 %br.m6526, 128
  %br.b2.1t528 = trunc i64 %br.b2.1527 to i8
  store i8 %br.b2.0t525, ptr %b.rn.dst521, align 1
  %br.dst1529 = getelementptr i8, ptr %b.rn.dst521, i64 1
  store i8 %br.b2.1t528, ptr %br.dst1529, align 1
  br label %br.done.86

br.c3.86:                                         ; preds = %br.c2.86
  br i1 %br.cmp3483, label %br.b3.86, label %br.b4.86

br.b3.86:                                         ; preds = %br.c3.86
  %br.sh12530 = lshr i64 %coerce.sext480, 12
  %br.b3.0531 = or i64 %br.sh12530, 224
  %br.b3.0t532 = trunc i64 %br.b3.0531 to i8
  %br.sh6.3533 = lshr i64 %coerce.sext480, 6
  %br.m6.3534 = and i64 %br.sh6.3533, 63
  %br.b3.1535 = or i64 %br.m6.3534, 128
  %br.b3.1t536 = trunc i64 %br.b3.1535 to i8
  %br.mend537 = and i64 %coerce.sext480, 63
  %br.b3.2538 = or i64 %br.mend537, 128
  %br.b3.2t539 = trunc i64 %br.b3.2538 to i8
  store i8 %br.b3.0t532, ptr %b.rn.dst521, align 1
  %br.dst1.3540 = getelementptr i8, ptr %b.rn.dst521, i64 1
  store i8 %br.b3.1t536, ptr %br.dst1.3540, align 1
  %br.dst2.3541 = getelementptr i8, ptr %b.rn.dst521, i64 2
  store i8 %br.b3.2t539, ptr %br.dst2.3541, align 1
  br label %br.done.86

br.b4.86:                                         ; preds = %br.c3.86
  %br.sh18542 = lshr i64 %coerce.sext480, 18
  %br.b4.0543 = or i64 %br.sh18542, 240
  %br.b4.0t544 = trunc i64 %br.b4.0543 to i8
  %br.sh12.4545 = lshr i64 %coerce.sext480, 12
  %br.m12.4546 = and i64 %br.sh12.4545, 63
  %br.b4.1547 = or i64 %br.m12.4546, 128
  %br.b4.1t548 = trunc i64 %br.b4.1547 to i8
  %br.sh6.4549 = lshr i64 %coerce.sext480, 6
  %br.m6.4550 = and i64 %br.sh6.4549, 63
  %br.b4.2551 = or i64 %br.m6.4550, 128
  %br.b4.2t552 = trunc i64 %br.b4.2551 to i8
  %br.mend4553 = and i64 %coerce.sext480, 63
  %br.b4.3554 = or i64 %br.mend4553, 128
  %br.b4.3t555 = trunc i64 %br.b4.3554 to i8
  store i8 %br.b4.0t544, ptr %b.rn.dst521, align 1
  %br.dst1.4556 = getelementptr i8, ptr %b.rn.dst521, i64 1
  store i8 %br.b4.1t548, ptr %br.dst1.4556, align 1
  %br.dst2.4557 = getelementptr i8, ptr %b.rn.dst521, i64 2
  store i8 %br.b4.2t552, ptr %br.dst2.4557, align 1
  %br.dst3.4558 = getelementptr i8, ptr %b.rn.dst521, i64 3
  store i8 %br.b4.3t555, ptr %br.dst3.4558, align 1
  br label %br.done.86

br.done.86:                                       ; preds = %br.b4.86, %br.b3.86, %br.b2.86, %br.b1.86
  %br.nul559 = getelementptr i8, ptr %b.rn.data520, i64 %sum490
  store i8 0, ptr %br.nul559, align 1
  %b.len.gep560 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load470, i32 0, i32 0
  store i64 %sum490, ptr %b.len.gep560, align 8
  %b.load561 = load ptr, ptr %var.b, align 8
  %var.load562 = load i16, ptr %var.pb, align 2
  %bf.load563 = load i16, ptr %var.pb, align 2
  %bf.shr564 = lshr i16 %bf.load563, 2
  %bf.mask565 = and i16 %bf.shr564, 1
  %bf.flag566 = trunc i16 %bf.mask565 to i1
  br i1 %bf.flag566, label %choice.then567, label %choice.else568

choice.then567:                                   ; preds = %br.done.86
  br label %choice.exit569

choice.else568:                                   ; preds = %br.done.86
  br label %choice.exit569

choice.exit569:                                   ; preds = %choice.else568, %choice.then567
  %choice.res570 = phi i32 [ 114, %choice.then567 ], [ 45, %choice.else568 ]
  %coerce.sext571 = sext i32 %choice.res570 to i64
  %br.cmp1572 = icmp slt i64 %coerce.sext571, 128
  %br.cmp2573 = icmp slt i64 %coerce.sext571, 2048
  %br.cmp3574 = icmp slt i64 %coerce.sext571, 65536
  %br.w3575 = select i1 %br.cmp3574, i64 3, i64 4
  %br.w2576 = select i1 %br.cmp2573, i64 2, i64 %br.w3575
  %br.width577 = select i1 %br.cmp1572, i64 1, i64 %br.w2576
  %b.rn.cur.len578 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load561, i32 0, i32 0
  %b.rn.cur.len579 = load i64, ptr %b.rn.cur.len578, align 8
  %b.rn.new.len580 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len579, i64 %br.width577)
  %sum581 = extractvalue { i64, i1 } %b.rn.new.len580, 0
  %ovf582 = extractvalue { i64, i1 } %b.rn.new.len580, 1
  br i1 %ovf582, label %str_overflow_abort584, label %b.rn.new.len583

b.rn.new.len583:                                  ; preds = %str_overflow_abort584, %choice.exit569
  %b.cap585 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load561, i32 0, i32 2
  %b.cap586 = load i64, ptr %b.cap585, align 8
  %b.need.grow587 = icmp slt i64 %b.cap586, %sum581
  br i1 %b.need.grow587, label %b.grow2588, label %b.nogrow2589

str_overflow_abort584:                            ; preds = %choice.exit569
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len583

b.grow2588:                                       ; preds = %b.rn.new.len583
  %b.cap2591 = mul i64 %b.cap586, 2
  %b.cap.small592 = icmp slt i64 %b.cap2591, 16
  %b.cap.grow593 = select i1 %b.cap.small592, i64 16, i64 %b.cap2591
  %b.cap.need594 = icmp slt i64 %b.cap.grow593, %sum581
  %b.new.cap595 = select i1 %b.cap.need594, i64 %sum581, i64 %b.cap.grow593
  %b.cur.len2596 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load561, i32 0, i32 0
  %b.cur.len2597 = load i64, ptr %b.cur.len2596, align 8
  %b.cur.data2598 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load561, i32 0, i32 1
  %b.cur.data2599 = load ptr, ptr %b.cur.data2598, align 8
  %b.new.buf.len2600 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap595, i64 1)
  %sum601 = extractvalue { i64, i1 } %b.new.buf.len2600, 0
  %ovf602 = extractvalue { i64, i1 } %b.new.buf.len2600, 1
  br i1 %ovf602, label %str_overflow_abort604, label %b.new.buf.len2603

b.nogrow2589:                                     ; preds = %b.rn.new.len583
  br label %b.grow_done590

b.grow_done590:                                   ; preds = %b.nogrow2589, %b.new.buf.len2603
  %b.rn.data610 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load561, i32 0, i32 1
  %b.rn.data611 = load ptr, ptr %b.rn.data610, align 8
  %b.rn.dst612 = getelementptr i8, ptr %b.rn.data611, i64 %b.rn.cur.len579
  br i1 %br.cmp1572, label %br.b1.87, label %br.c2.87

b.new.buf.len2603:                                ; preds = %str_overflow_abort604, %b.grow2588
  %arena.cur605 = call ptr @dva_arena_current()
  %b.new.buf2606 = call ptr @dva_arena_alloc(ptr %arena.cur605, i64 %sum601)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2606, ptr align 1 %b.cur.data2599, i64 %b.cur.len2597, i1 false)
  %b.grow2.nul607 = getelementptr i8, ptr %b.new.buf2606, i64 %b.cur.len2597
  store i8 0, ptr %b.grow2.nul607, align 1
  %b.new.data2.gep608 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load561, i32 0, i32 1
  store ptr %b.new.buf2606, ptr %b.new.data2.gep608, align 8
  %b.new.cap2.gep609 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load561, i32 0, i32 2
  store i64 %b.new.cap595, ptr %b.new.cap2.gep609, align 8
  br label %b.grow_done590

str_overflow_abort604:                            ; preds = %b.grow2588
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2603

br.b1.87:                                         ; preds = %b.grow_done590
  %br.b1.0613 = trunc i64 %coerce.sext571 to i8
  store i8 %br.b1.0613, ptr %b.rn.dst612, align 1
  br label %br.done.87

br.c2.87:                                         ; preds = %b.grow_done590
  br i1 %br.cmp2573, label %br.b2.87, label %br.c3.87

br.b2.87:                                         ; preds = %br.c2.87
  %br.sh6614 = lshr i64 %coerce.sext571, 6
  %br.b2.0615 = or i64 %br.sh6614, 192
  %br.b2.0t616 = trunc i64 %br.b2.0615 to i8
  %br.m6617 = and i64 %coerce.sext571, 63
  %br.b2.1618 = or i64 %br.m6617, 128
  %br.b2.1t619 = trunc i64 %br.b2.1618 to i8
  store i8 %br.b2.0t616, ptr %b.rn.dst612, align 1
  %br.dst1620 = getelementptr i8, ptr %b.rn.dst612, i64 1
  store i8 %br.b2.1t619, ptr %br.dst1620, align 1
  br label %br.done.87

br.c3.87:                                         ; preds = %br.c2.87
  br i1 %br.cmp3574, label %br.b3.87, label %br.b4.87

br.b3.87:                                         ; preds = %br.c3.87
  %br.sh12621 = lshr i64 %coerce.sext571, 12
  %br.b3.0622 = or i64 %br.sh12621, 224
  %br.b3.0t623 = trunc i64 %br.b3.0622 to i8
  %br.sh6.3624 = lshr i64 %coerce.sext571, 6
  %br.m6.3625 = and i64 %br.sh6.3624, 63
  %br.b3.1626 = or i64 %br.m6.3625, 128
  %br.b3.1t627 = trunc i64 %br.b3.1626 to i8
  %br.mend628 = and i64 %coerce.sext571, 63
  %br.b3.2629 = or i64 %br.mend628, 128
  %br.b3.2t630 = trunc i64 %br.b3.2629 to i8
  store i8 %br.b3.0t623, ptr %b.rn.dst612, align 1
  %br.dst1.3631 = getelementptr i8, ptr %b.rn.dst612, i64 1
  store i8 %br.b3.1t627, ptr %br.dst1.3631, align 1
  %br.dst2.3632 = getelementptr i8, ptr %b.rn.dst612, i64 2
  store i8 %br.b3.2t630, ptr %br.dst2.3632, align 1
  br label %br.done.87

br.b4.87:                                         ; preds = %br.c3.87
  %br.sh18633 = lshr i64 %coerce.sext571, 18
  %br.b4.0634 = or i64 %br.sh18633, 240
  %br.b4.0t635 = trunc i64 %br.b4.0634 to i8
  %br.sh12.4636 = lshr i64 %coerce.sext571, 12
  %br.m12.4637 = and i64 %br.sh12.4636, 63
  %br.b4.1638 = or i64 %br.m12.4637, 128
  %br.b4.1t639 = trunc i64 %br.b4.1638 to i8
  %br.sh6.4640 = lshr i64 %coerce.sext571, 6
  %br.m6.4641 = and i64 %br.sh6.4640, 63
  %br.b4.2642 = or i64 %br.m6.4641, 128
  %br.b4.2t643 = trunc i64 %br.b4.2642 to i8
  %br.mend4644 = and i64 %coerce.sext571, 63
  %br.b4.3645 = or i64 %br.mend4644, 128
  %br.b4.3t646 = trunc i64 %br.b4.3645 to i8
  store i8 %br.b4.0t635, ptr %b.rn.dst612, align 1
  %br.dst1.4647 = getelementptr i8, ptr %b.rn.dst612, i64 1
  store i8 %br.b4.1t639, ptr %br.dst1.4647, align 1
  %br.dst2.4648 = getelementptr i8, ptr %b.rn.dst612, i64 2
  store i8 %br.b4.2t643, ptr %br.dst2.4648, align 1
  %br.dst3.4649 = getelementptr i8, ptr %b.rn.dst612, i64 3
  store i8 %br.b4.3t646, ptr %br.dst3.4649, align 1
  br label %br.done.87

br.done.87:                                       ; preds = %br.b4.87, %br.b3.87, %br.b2.87, %br.b1.87
  %br.nul650 = getelementptr i8, ptr %b.rn.data611, i64 %sum581
  store i8 0, ptr %br.nul650, align 1
  %b.len.gep651 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load561, i32 0, i32 0
  store i64 %sum581, ptr %b.len.gep651, align 8
  %b.load652 = load ptr, ptr %var.b, align 8
  %var.load653 = load i16, ptr %var.pb, align 2
  %bf.load654 = load i16, ptr %var.pb, align 2
  %bf.shr655 = lshr i16 %bf.load654, 1
  %bf.mask656 = and i16 %bf.shr655, 1
  %bf.flag657 = trunc i16 %bf.mask656 to i1
  br i1 %bf.flag657, label %choice.then658, label %choice.else659

choice.then658:                                   ; preds = %br.done.87
  br label %choice.exit660

choice.else659:                                   ; preds = %br.done.87
  br label %choice.exit660

choice.exit660:                                   ; preds = %choice.else659, %choice.then658
  %choice.res661 = phi i32 [ 119, %choice.then658 ], [ 45, %choice.else659 ]
  %coerce.sext662 = sext i32 %choice.res661 to i64
  %br.cmp1663 = icmp slt i64 %coerce.sext662, 128
  %br.cmp2664 = icmp slt i64 %coerce.sext662, 2048
  %br.cmp3665 = icmp slt i64 %coerce.sext662, 65536
  %br.w3666 = select i1 %br.cmp3665, i64 3, i64 4
  %br.w2667 = select i1 %br.cmp2664, i64 2, i64 %br.w3666
  %br.width668 = select i1 %br.cmp1663, i64 1, i64 %br.w2667
  %b.rn.cur.len669 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load652, i32 0, i32 0
  %b.rn.cur.len670 = load i64, ptr %b.rn.cur.len669, align 8
  %b.rn.new.len671 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len670, i64 %br.width668)
  %sum672 = extractvalue { i64, i1 } %b.rn.new.len671, 0
  %ovf673 = extractvalue { i64, i1 } %b.rn.new.len671, 1
  br i1 %ovf673, label %str_overflow_abort675, label %b.rn.new.len674

b.rn.new.len674:                                  ; preds = %str_overflow_abort675, %choice.exit660
  %b.cap676 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load652, i32 0, i32 2
  %b.cap677 = load i64, ptr %b.cap676, align 8
  %b.need.grow678 = icmp slt i64 %b.cap677, %sum672
  br i1 %b.need.grow678, label %b.grow2679, label %b.nogrow2680

str_overflow_abort675:                            ; preds = %choice.exit660
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len674

b.grow2679:                                       ; preds = %b.rn.new.len674
  %b.cap2682 = mul i64 %b.cap677, 2
  %b.cap.small683 = icmp slt i64 %b.cap2682, 16
  %b.cap.grow684 = select i1 %b.cap.small683, i64 16, i64 %b.cap2682
  %b.cap.need685 = icmp slt i64 %b.cap.grow684, %sum672
  %b.new.cap686 = select i1 %b.cap.need685, i64 %sum672, i64 %b.cap.grow684
  %b.cur.len2687 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load652, i32 0, i32 0
  %b.cur.len2688 = load i64, ptr %b.cur.len2687, align 8
  %b.cur.data2689 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load652, i32 0, i32 1
  %b.cur.data2690 = load ptr, ptr %b.cur.data2689, align 8
  %b.new.buf.len2691 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap686, i64 1)
  %sum692 = extractvalue { i64, i1 } %b.new.buf.len2691, 0
  %ovf693 = extractvalue { i64, i1 } %b.new.buf.len2691, 1
  br i1 %ovf693, label %str_overflow_abort695, label %b.new.buf.len2694

b.nogrow2680:                                     ; preds = %b.rn.new.len674
  br label %b.grow_done681

b.grow_done681:                                   ; preds = %b.nogrow2680, %b.new.buf.len2694
  %b.rn.data701 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load652, i32 0, i32 1
  %b.rn.data702 = load ptr, ptr %b.rn.data701, align 8
  %b.rn.dst703 = getelementptr i8, ptr %b.rn.data702, i64 %b.rn.cur.len670
  br i1 %br.cmp1663, label %br.b1.88, label %br.c2.88

b.new.buf.len2694:                                ; preds = %str_overflow_abort695, %b.grow2679
  %arena.cur696 = call ptr @dva_arena_current()
  %b.new.buf2697 = call ptr @dva_arena_alloc(ptr %arena.cur696, i64 %sum692)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2697, ptr align 1 %b.cur.data2690, i64 %b.cur.len2688, i1 false)
  %b.grow2.nul698 = getelementptr i8, ptr %b.new.buf2697, i64 %b.cur.len2688
  store i8 0, ptr %b.grow2.nul698, align 1
  %b.new.data2.gep699 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load652, i32 0, i32 1
  store ptr %b.new.buf2697, ptr %b.new.data2.gep699, align 8
  %b.new.cap2.gep700 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load652, i32 0, i32 2
  store i64 %b.new.cap686, ptr %b.new.cap2.gep700, align 8
  br label %b.grow_done681

str_overflow_abort695:                            ; preds = %b.grow2679
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2694

br.b1.88:                                         ; preds = %b.grow_done681
  %br.b1.0704 = trunc i64 %coerce.sext662 to i8
  store i8 %br.b1.0704, ptr %b.rn.dst703, align 1
  br label %br.done.88

br.c2.88:                                         ; preds = %b.grow_done681
  br i1 %br.cmp2664, label %br.b2.88, label %br.c3.88

br.b2.88:                                         ; preds = %br.c2.88
  %br.sh6705 = lshr i64 %coerce.sext662, 6
  %br.b2.0706 = or i64 %br.sh6705, 192
  %br.b2.0t707 = trunc i64 %br.b2.0706 to i8
  %br.m6708 = and i64 %coerce.sext662, 63
  %br.b2.1709 = or i64 %br.m6708, 128
  %br.b2.1t710 = trunc i64 %br.b2.1709 to i8
  store i8 %br.b2.0t707, ptr %b.rn.dst703, align 1
  %br.dst1711 = getelementptr i8, ptr %b.rn.dst703, i64 1
  store i8 %br.b2.1t710, ptr %br.dst1711, align 1
  br label %br.done.88

br.c3.88:                                         ; preds = %br.c2.88
  br i1 %br.cmp3665, label %br.b3.88, label %br.b4.88

br.b3.88:                                         ; preds = %br.c3.88
  %br.sh12712 = lshr i64 %coerce.sext662, 12
  %br.b3.0713 = or i64 %br.sh12712, 224
  %br.b3.0t714 = trunc i64 %br.b3.0713 to i8
  %br.sh6.3715 = lshr i64 %coerce.sext662, 6
  %br.m6.3716 = and i64 %br.sh6.3715, 63
  %br.b3.1717 = or i64 %br.m6.3716, 128
  %br.b3.1t718 = trunc i64 %br.b3.1717 to i8
  %br.mend719 = and i64 %coerce.sext662, 63
  %br.b3.2720 = or i64 %br.mend719, 128
  %br.b3.2t721 = trunc i64 %br.b3.2720 to i8
  store i8 %br.b3.0t714, ptr %b.rn.dst703, align 1
  %br.dst1.3722 = getelementptr i8, ptr %b.rn.dst703, i64 1
  store i8 %br.b3.1t718, ptr %br.dst1.3722, align 1
  %br.dst2.3723 = getelementptr i8, ptr %b.rn.dst703, i64 2
  store i8 %br.b3.2t721, ptr %br.dst2.3723, align 1
  br label %br.done.88

br.b4.88:                                         ; preds = %br.c3.88
  %br.sh18724 = lshr i64 %coerce.sext662, 18
  %br.b4.0725 = or i64 %br.sh18724, 240
  %br.b4.0t726 = trunc i64 %br.b4.0725 to i8
  %br.sh12.4727 = lshr i64 %coerce.sext662, 12
  %br.m12.4728 = and i64 %br.sh12.4727, 63
  %br.b4.1729 = or i64 %br.m12.4728, 128
  %br.b4.1t730 = trunc i64 %br.b4.1729 to i8
  %br.sh6.4731 = lshr i64 %coerce.sext662, 6
  %br.m6.4732 = and i64 %br.sh6.4731, 63
  %br.b4.2733 = or i64 %br.m6.4732, 128
  %br.b4.2t734 = trunc i64 %br.b4.2733 to i8
  %br.mend4735 = and i64 %coerce.sext662, 63
  %br.b4.3736 = or i64 %br.mend4735, 128
  %br.b4.3t737 = trunc i64 %br.b4.3736 to i8
  store i8 %br.b4.0t726, ptr %b.rn.dst703, align 1
  %br.dst1.4738 = getelementptr i8, ptr %b.rn.dst703, i64 1
  store i8 %br.b4.1t730, ptr %br.dst1.4738, align 1
  %br.dst2.4739 = getelementptr i8, ptr %b.rn.dst703, i64 2
  store i8 %br.b4.2t734, ptr %br.dst2.4739, align 1
  %br.dst3.4740 = getelementptr i8, ptr %b.rn.dst703, i64 3
  store i8 %br.b4.3t737, ptr %br.dst3.4740, align 1
  br label %br.done.88

br.done.88:                                       ; preds = %br.b4.88, %br.b3.88, %br.b2.88, %br.b1.88
  %br.nul741 = getelementptr i8, ptr %b.rn.data702, i64 %sum672
  store i8 0, ptr %br.nul741, align 1
  %b.len.gep742 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load652, i32 0, i32 0
  store i64 %sum672, ptr %b.len.gep742, align 8
  %b.load743 = load ptr, ptr %var.b, align 8
  %var.load744 = load i16, ptr %var.pb, align 2
  %bf.load745 = load i16, ptr %var.pb, align 2
  %bf.mask746 = and i16 %bf.load745, 1
  %bf.flag747 = trunc i16 %bf.mask746 to i1
  br i1 %bf.flag747, label %choice.then748, label %choice.else749

choice.then748:                                   ; preds = %br.done.88
  br label %choice.exit750

choice.else749:                                   ; preds = %br.done.88
  br label %choice.exit750

choice.exit750:                                   ; preds = %choice.else749, %choice.then748
  %choice.res751 = phi i32 [ 120, %choice.then748 ], [ 45, %choice.else749 ]
  %coerce.sext752 = sext i32 %choice.res751 to i64
  %br.cmp1753 = icmp slt i64 %coerce.sext752, 128
  %br.cmp2754 = icmp slt i64 %coerce.sext752, 2048
  %br.cmp3755 = icmp slt i64 %coerce.sext752, 65536
  %br.w3756 = select i1 %br.cmp3755, i64 3, i64 4
  %br.w2757 = select i1 %br.cmp2754, i64 2, i64 %br.w3756
  %br.width758 = select i1 %br.cmp1753, i64 1, i64 %br.w2757
  %b.rn.cur.len759 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load743, i32 0, i32 0
  %b.rn.cur.len760 = load i64, ptr %b.rn.cur.len759, align 8
  %b.rn.new.len761 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len760, i64 %br.width758)
  %sum762 = extractvalue { i64, i1 } %b.rn.new.len761, 0
  %ovf763 = extractvalue { i64, i1 } %b.rn.new.len761, 1
  br i1 %ovf763, label %str_overflow_abort765, label %b.rn.new.len764

b.rn.new.len764:                                  ; preds = %str_overflow_abort765, %choice.exit750
  %b.cap766 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load743, i32 0, i32 2
  %b.cap767 = load i64, ptr %b.cap766, align 8
  %b.need.grow768 = icmp slt i64 %b.cap767, %sum762
  br i1 %b.need.grow768, label %b.grow2769, label %b.nogrow2770

str_overflow_abort765:                            ; preds = %choice.exit750
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len764

b.grow2769:                                       ; preds = %b.rn.new.len764
  %b.cap2772 = mul i64 %b.cap767, 2
  %b.cap.small773 = icmp slt i64 %b.cap2772, 16
  %b.cap.grow774 = select i1 %b.cap.small773, i64 16, i64 %b.cap2772
  %b.cap.need775 = icmp slt i64 %b.cap.grow774, %sum762
  %b.new.cap776 = select i1 %b.cap.need775, i64 %sum762, i64 %b.cap.grow774
  %b.cur.len2777 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load743, i32 0, i32 0
  %b.cur.len2778 = load i64, ptr %b.cur.len2777, align 8
  %b.cur.data2779 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load743, i32 0, i32 1
  %b.cur.data2780 = load ptr, ptr %b.cur.data2779, align 8
  %b.new.buf.len2781 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap776, i64 1)
  %sum782 = extractvalue { i64, i1 } %b.new.buf.len2781, 0
  %ovf783 = extractvalue { i64, i1 } %b.new.buf.len2781, 1
  br i1 %ovf783, label %str_overflow_abort785, label %b.new.buf.len2784

b.nogrow2770:                                     ; preds = %b.rn.new.len764
  br label %b.grow_done771

b.grow_done771:                                   ; preds = %b.nogrow2770, %b.new.buf.len2784
  %b.rn.data791 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load743, i32 0, i32 1
  %b.rn.data792 = load ptr, ptr %b.rn.data791, align 8
  %b.rn.dst793 = getelementptr i8, ptr %b.rn.data792, i64 %b.rn.cur.len760
  br i1 %br.cmp1753, label %br.b1.89, label %br.c2.89

b.new.buf.len2784:                                ; preds = %str_overflow_abort785, %b.grow2769
  %arena.cur786 = call ptr @dva_arena_current()
  %b.new.buf2787 = call ptr @dva_arena_alloc(ptr %arena.cur786, i64 %sum782)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2787, ptr align 1 %b.cur.data2780, i64 %b.cur.len2778, i1 false)
  %b.grow2.nul788 = getelementptr i8, ptr %b.new.buf2787, i64 %b.cur.len2778
  store i8 0, ptr %b.grow2.nul788, align 1
  %b.new.data2.gep789 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load743, i32 0, i32 1
  store ptr %b.new.buf2787, ptr %b.new.data2.gep789, align 8
  %b.new.cap2.gep790 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load743, i32 0, i32 2
  store i64 %b.new.cap776, ptr %b.new.cap2.gep790, align 8
  br label %b.grow_done771

str_overflow_abort785:                            ; preds = %b.grow2769
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2784

br.b1.89:                                         ; preds = %b.grow_done771
  %br.b1.0794 = trunc i64 %coerce.sext752 to i8
  store i8 %br.b1.0794, ptr %b.rn.dst793, align 1
  br label %br.done.89

br.c2.89:                                         ; preds = %b.grow_done771
  br i1 %br.cmp2754, label %br.b2.89, label %br.c3.89

br.b2.89:                                         ; preds = %br.c2.89
  %br.sh6795 = lshr i64 %coerce.sext752, 6
  %br.b2.0796 = or i64 %br.sh6795, 192
  %br.b2.0t797 = trunc i64 %br.b2.0796 to i8
  %br.m6798 = and i64 %coerce.sext752, 63
  %br.b2.1799 = or i64 %br.m6798, 128
  %br.b2.1t800 = trunc i64 %br.b2.1799 to i8
  store i8 %br.b2.0t797, ptr %b.rn.dst793, align 1
  %br.dst1801 = getelementptr i8, ptr %b.rn.dst793, i64 1
  store i8 %br.b2.1t800, ptr %br.dst1801, align 1
  br label %br.done.89

br.c3.89:                                         ; preds = %br.c2.89
  br i1 %br.cmp3755, label %br.b3.89, label %br.b4.89

br.b3.89:                                         ; preds = %br.c3.89
  %br.sh12802 = lshr i64 %coerce.sext752, 12
  %br.b3.0803 = or i64 %br.sh12802, 224
  %br.b3.0t804 = trunc i64 %br.b3.0803 to i8
  %br.sh6.3805 = lshr i64 %coerce.sext752, 6
  %br.m6.3806 = and i64 %br.sh6.3805, 63
  %br.b3.1807 = or i64 %br.m6.3806, 128
  %br.b3.1t808 = trunc i64 %br.b3.1807 to i8
  %br.mend809 = and i64 %coerce.sext752, 63
  %br.b3.2810 = or i64 %br.mend809, 128
  %br.b3.2t811 = trunc i64 %br.b3.2810 to i8
  store i8 %br.b3.0t804, ptr %b.rn.dst793, align 1
  %br.dst1.3812 = getelementptr i8, ptr %b.rn.dst793, i64 1
  store i8 %br.b3.1t808, ptr %br.dst1.3812, align 1
  %br.dst2.3813 = getelementptr i8, ptr %b.rn.dst793, i64 2
  store i8 %br.b3.2t811, ptr %br.dst2.3813, align 1
  br label %br.done.89

br.b4.89:                                         ; preds = %br.c3.89
  %br.sh18814 = lshr i64 %coerce.sext752, 18
  %br.b4.0815 = or i64 %br.sh18814, 240
  %br.b4.0t816 = trunc i64 %br.b4.0815 to i8
  %br.sh12.4817 = lshr i64 %coerce.sext752, 12
  %br.m12.4818 = and i64 %br.sh12.4817, 63
  %br.b4.1819 = or i64 %br.m12.4818, 128
  %br.b4.1t820 = trunc i64 %br.b4.1819 to i8
  %br.sh6.4821 = lshr i64 %coerce.sext752, 6
  %br.m6.4822 = and i64 %br.sh6.4821, 63
  %br.b4.2823 = or i64 %br.m6.4822, 128
  %br.b4.2t824 = trunc i64 %br.b4.2823 to i8
  %br.mend4825 = and i64 %coerce.sext752, 63
  %br.b4.3826 = or i64 %br.mend4825, 128
  %br.b4.3t827 = trunc i64 %br.b4.3826 to i8
  store i8 %br.b4.0t816, ptr %b.rn.dst793, align 1
  %br.dst1.4828 = getelementptr i8, ptr %b.rn.dst793, i64 1
  store i8 %br.b4.1t820, ptr %br.dst1.4828, align 1
  %br.dst2.4829 = getelementptr i8, ptr %b.rn.dst793, i64 2
  store i8 %br.b4.2t824, ptr %br.dst2.4829, align 1
  %br.dst3.4830 = getelementptr i8, ptr %b.rn.dst793, i64 3
  store i8 %br.b4.3t827, ptr %br.dst3.4830, align 1
  br label %br.done.89

br.done.89:                                       ; preds = %br.b4.89, %br.b3.89, %br.b2.89, %br.b1.89
  %br.nul831 = getelementptr i8, ptr %b.rn.data792, i64 %sum762
  store i8 0, ptr %br.nul831, align 1
  %b.len.gep832 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load743, i32 0, i32 0
  store i64 %sum762, ptr %b.len.gep832, align 8
  %var.load833 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load833, i32 0, i32 0
  %b.freeze.len834 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load833, i32 0, i32 1
  %b.freeze.data835 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %br.done.89
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data835, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data835, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data835, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len834, 1
  %arena.cur836 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur836, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data835, i64 %b.freeze.len834, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len834
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %br.done.89
  %b.freeze.data837 = phi ptr [ %b.freeze.data835, %br.done.89 ], [ %b.freeze.data835, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur838 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur838, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len834, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data837, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load833, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load833, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load833, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define ptr @"fs::format_time"(i64 %0) #1 {
entry:
  %var.len = alloca i64, align 8
  %var.out_buf = alloca ptr, align 8
  %var.res = alloca ptr, align 8
  %var.tm_buf = alloca ptr, align 8
  %var.t_val = alloca i64, align 8
  %var.ts = alloca i64, align 8
  store i64 %0, ptr %var.ts, align 8
  %var.load = load i64, ptr %var.ts, align 8
  %cmptmp = icmp eq i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret ptr @str.12.struct

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load1 = load i64, ptr %var.ts, align 8
  store i64 %var.load1, ptr %var.t_val, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 64, i64 1)
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
  store i64 64, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.tm_buf, align 8
  %var.load4 = load i64, ptr %var.t_val, align 8
  %addr.ffi.int = ptrtoint ptr %var.t_val to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load5 = load ptr, ptr %var.tm_buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load5, i32 0, i32 1
  %b.ptr6 = load ptr, ptr %b.ptr, align 8
  %addr.ffi.int7 = ptrtoint ptr %b.ptr6 to i64
  %addr.ffi.masked8 = and i64 %addr.ffi.int7, 281474976710655
  %addr.ffi.clean9 = inttoptr i64 %addr.ffi.masked8 to ptr
  %call.res = call ptr @localtime_r(ptr %addr.ffi.clean, ptr %addr.ffi.clean9)
  store ptr %call.res, ptr %var.res, align 8
  %var.load10 = load ptr, ptr %var.res, align 8
  %var.load11 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load10 to i64
  %ptr.int.r = ptrtoint ptr %var.load11 to i64
  %cmptmp12 = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp12, label %choice.then13, label %choice.exit14

str_overflow_abort:                               ; preds = %choice.exit
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len2

choice.then13:                                    ; preds = %b.buf.len2
  ret ptr @str.12.struct

choice.exit14:                                    ; preds = %ret.dead15, %b.buf.len2
  %arena.cur16 = call ptr @dva_arena_current()
  %builder.new17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 24)
  %b.data.gep18 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new17, i32 0, i32 1
  %b.len.gep19 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new17, i32 0, i32 0
  %b.cap.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new17, i32 0, i32 2
  %b.buf.len21 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 64, i64 1)
  %sum22 = extractvalue { i64, i1 } %b.buf.len21, 0
  %ovf23 = extractvalue { i64, i1 } %b.buf.len21, 1
  br i1 %ovf23, label %str_overflow_abort25, label %b.buf.len24

ret.dead15:                                       ; No predecessors!
  br label %choice.exit14

b.buf.len24:                                      ; preds = %str_overflow_abort25, %choice.exit14
  %arena.cur26 = call ptr @dva_arena_current()
  %b.buf27 = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 %sum22)
  %b.nul028 = getelementptr i8, ptr %b.buf27, i64 0
  store i8 0, ptr %b.nul028, align 1
  store i64 0, ptr %b.len.gep19, align 8
  store ptr %b.buf27, ptr %b.data.gep18, align 8
  store i64 64, ptr %b.cap.gep20, align 8
  store ptr %builder.new17, ptr %var.out_buf, align 8
  %var.load29 = load ptr, ptr %var.out_buf, align 8
  %b.ptr30 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load29, i32 0, i32 1
  %b.ptr31 = load ptr, ptr %b.ptr30, align 8
  %addr.ffi.int32 = ptrtoint ptr %b.ptr31 to i64
  %addr.ffi.masked33 = and i64 %addr.ffi.int32, 281474976710655
  %addr.ffi.clean34 = inttoptr i64 %addr.ffi.masked33 to ptr
  %arg.str.ptr = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.13.struct, i32 0, i32 1), align 8
  %arg.str.ptr35 = load i64, ptr @str.13.struct, align 8
  %arg.str.ptr36 = and i64 %arg.str.ptr35, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr35, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_overflow_abort25:                             ; preds = %choice.exit14
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len24

str_gen_check:                                    ; preds = %b.buf.len24
  %arena.cur37 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur37, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.buf.len24
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr, i64 %arg.str.ptr36
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr38, label %nulcopy

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

arg.str.ptr38:                                    ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr36, i64 1)
  %sum39 = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf40 = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf40, label %str_overflow_abort42, label %nulcopy.len41

nulmerge:                                         ; preds = %nulcopy.len41, %arg.str.ptr38
  %arg.str.ptr44 = phi ptr [ %arg.str.ptr, %arg.str.ptr38 ], [ %nulcopy.buf, %nulcopy.len41 ]
  %var.load45 = load ptr, ptr %var.tm_buf, align 8
  %b.ptr46 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load45, i32 0, i32 1
  %b.ptr47 = load ptr, ptr %b.ptr46, align 8
  %addr.ffi.int48 = ptrtoint ptr %b.ptr47 to i64
  %addr.ffi.masked49 = and i64 %addr.ffi.int48, 281474976710655
  %addr.ffi.clean50 = inttoptr i64 %addr.ffi.masked49 to ptr
  %call.res51 = call i64 @strftime(ptr %addr.ffi.clean34, i64 64, ptr %arg.str.ptr44, ptr %addr.ffi.clean50)
  store i64 %call.res51, ptr %var.len, align 8
  %var.load52 = load i64, ptr %var.len, align 8
  %cmptmp53 = icmp sle i64 %var.load52, 0
  br i1 %cmptmp53, label %choice.then54, label %choice.exit55

nulcopy.len41:                                    ; preds = %str_overflow_abort42, %nulcopy
  %arena.cur43 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 %sum39)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr, i64 %arg.str.ptr36, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr36
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort42:                             ; preds = %nulcopy
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %nulcopy.len41

choice.then54:                                    ; preds = %nulmerge
  ret ptr @str.12.struct

choice.exit55:                                    ; preds = %ret.dead56, %nulmerge
  %var.load57 = load i64, ptr %var.len, align 8
  %b.load = load ptr, ptr %var.out_buf, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap58 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load57, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

ret.dead56:                                       ; No predecessors!
  br label %choice.exit55

b.len_big_check:                                  ; preds = %choice.exit55
  %b.len.big = icmp sgt i64 %var.load57, %b.cap58
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep59 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load57, ptr %b.len.gep59, align 8
  %var.load60 = load ptr, ptr %var.out_buf, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load60, i32 0, i32 0
  %b.freeze.len61 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load60, i32 0, i32 1
  %b.freeze.data62 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.len_oob:                                        ; preds = %b.len_big_check, %choice.exit55
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data62, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data62, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data62, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len61, 1
  %arena.cur63 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data62, i64 %b.freeze.len61, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len61
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.len_ok
  %b.freeze.data64 = phi ptr [ %b.freeze.data62, %b.len_ok ], [ %b.freeze.data62, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur65 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len61, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data64, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load60, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load60, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load60, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define ptr @"fs::format_number"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.92 = alloca i64, align 8
  %loop.idx.92 = alloca i64, align 8
  %"var.rem'" = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.len = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.is_neg = alloca i1, align 1
  %var.s_full = alloca ptr, align 8
  %var.n = alloca i64, align 8
  store i64 %0, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %arena.cur = call ptr @dva_arena_current()
  %to_str.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 32)
  %to_str.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf, i64 32, ptr @dva_fmt_i64, i64 %var.load)
  %to_str.len = zext i32 %to_str.n to i64
  %arena.cur1 = call ptr @dva_arena_current()
  %to_str.res = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 0
  store i64 %to_str.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 1
  store ptr %to_str.buf, ptr %str.build.data.gep, align 8
  store ptr %to_str.res, ptr %var.s_full, align 8
  %var.load2 = load ptr, ptr %var.s_full, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %str.len.query3 = load i64, ptr %str.len.query, align 8
  %str.len.query4 = and i64 %str.len.query3, 281474976710655
  %str.tag = lshr i64 %str.len.query3, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur5 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur5, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp sgt i64 %str.len.query4, 0
  br i1 %cmptmp, label %and.90.then, label %and.90.else

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.90.then:                                      ; preds = %str_ok
  %var.load6 = load ptr, ptr %var.s_full, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %str.tag9 = lshr i64 %s.read.len7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

and.90.else:                                      ; preds = %str_ok
  br label %and.90.exit

and.90.exit:                                      ; preds = %and.90.else, %idx_ok
  %and.90.phi = phi i1 [ %cmptmp17, %idx_ok ], [ %cmptmp, %and.90.else ]
  store i1 %and.90.phi, ptr %var.is_neg, align 1
  %var.load18 = load i1, ptr %var.is_neg, align 1
  br i1 %var.load18, label %choice.then, label %choice.else

str_gen_check11:                                  ; preds = %and.90.then
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid15 = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %str.tag9)
  br i1 %tag.valid15, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %and.90.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

str_stale13:                                      ; preds = %str_gen_check11
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

idx_big_check:                                    ; preds = %str_ok12
  %idx.big = icmp sge i64 0, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp17 = icmp eq i64 %s.byte.val, 45
  br label %and.90.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok12
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %and.90.exit
  %var.load19 = load ptr, ptr %var.s_full, align 8
  %s.read.len20 = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 0
  %s.read.len21 = load i64, ptr %s.read.len20, align 8
  %s.read.len22 = and i64 %s.read.len21, 281474976710655
  %str.tag23 = lshr i64 %s.read.len21, 48
  %str.immortal24 = icmp eq i64 %str.tag23, 0
  br i1 %str.immortal24, label %str_ok26, label %str_gen_check25

choice.else:                                      ; preds = %and.90.exit
  %var.load35 = load ptr, ptr %var.s_full, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %str_ok26
  %choice.res = phi ptr [ %str.view, %str_ok26 ], [ %var.load35, %choice.else ]
  store ptr %choice.res, ptr %var.s, align 8
  %var.load36 = load ptr, ptr %var.s, align 8
  %str.len.query37 = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 0
  %str.len.query38 = load i64, ptr %str.len.query37, align 8
  %str.len.query39 = and i64 %str.len.query38, 281474976710655
  %str.tag40 = lshr i64 %str.len.query38, 48
  %str.immortal41 = icmp eq i64 %str.tag40, 0
  br i1 %str.immortal41, label %str_ok43, label %str_gen_check42

str_gen_check25:                                  ; preds = %choice.then
  %arena.cur28 = call ptr @dva_arena_current()
  %tag.valid29 = call i1 @dva_arena_validate_tag(ptr %arena.cur28, i64 %str.tag23)
  br i1 %tag.valid29, label %str_ok26, label %str_stale27

str_ok26:                                         ; preds = %str_stale27, %str_gen_check25, %choice.then
  %s.read.data30 = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 1
  %s.read.data31 = load ptr, ptr %s.read.data30, align 8
  %rel.start = add i64 %s.read.len22, 1
  %norm.start = select i1 false, i64 %rel.start, i64 1
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len22
  %final.start = select i1 %start.gt.len, i64 %s.read.len22, i64 %c.start.0
  %end.is_neg = icmp slt i64 %s.read.len22, 0
  %rel.end = add i64 %s.read.len22, %s.read.len22
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %s.read.len22
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len22
  %final.end = select i1 %end.gt.len, i64 %s.read.len22, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data31, i64 %final.start
  %arena.cur32 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 16)
  %str.build.len.gep33 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep33, align 8
  %str.build.data.gep34 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep34, align 8
  br label %choice.exit

str_stale27:                                      ; preds = %str_gen_check25
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok26

str_gen_check42:                                  ; preds = %choice.exit
  %arena.cur45 = call ptr @dva_arena_current()
  %tag.valid46 = call i1 @dva_arena_validate_tag(ptr %arena.cur45, i64 %str.tag40)
  br i1 %tag.valid46, label %str_ok43, label %str_stale44

str_ok43:                                         ; preds = %str_stale44, %str_gen_check42, %choice.exit
  store i64 %str.len.query39, ptr %var.len, align 8
  %var.load47 = load i64, ptr %var.len, align 8
  %cmptmp48 = icmp slt i64 %var.load47, 4
  br i1 %cmptmp48, label %choice.then49, label %choice.exit50

str_stale44:                                      ; preds = %str_gen_check42
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok43

choice.then49:                                    ; preds = %str_ok43
  %var.load51 = load ptr, ptr %var.s_full, align 8
  ret ptr %var.load51

choice.exit50:                                    ; preds = %ret.dead, %str_ok43
  %arena.cur52 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len53

ret.dead:                                         ; No predecessors!
  br label %choice.exit50

b.buf.len53:                                      ; preds = %str_overflow_abort, %choice.exit50
  %arena.cur54 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 32, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load55 = load i1, ptr %var.is_neg, align 1
  br i1 %var.load55, label %choice.then56, label %choice.exit57

str_overflow_abort:                               ; preds = %choice.exit50
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len53

choice.then56:                                    ; preds = %b.buf.len53
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len58 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len58, i64 1)
  %sum59 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf60 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf60, label %str_overflow_abort62, label %b.rn.new.len61

choice.exit57:                                    ; preds = %br.done.91, %b.buf.len53
  %var.load73 = load i64, ptr %var.len, align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

b.rn.new.len61:                                   ; preds = %str_overflow_abort62, %choice.then56
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap63 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap63, %sum59
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort62:                             ; preds = %choice.then56
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len61

b.grow2:                                          ; preds = %b.rn.new.len61
  %b.cap2 = mul i64 %b.cap63, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum59
  %b.new.cap = select i1 %b.cap.need, i64 %sum59, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len264 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data265 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum66 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf67 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf67, label %str_overflow_abort69, label %b.new.buf.len268

b.nogrow2:                                        ; preds = %b.rn.new.len61
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len268
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data71 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data71, i64 %b.rn.cur.len58
  br i1 true, label %br.b1.91, label %br.c2.91

b.new.buf.len268:                                 ; preds = %str_overflow_abort69, %b.grow2
  %arena.cur70 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 %sum66)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data265, i64 %b.cur.len264, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len264
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort69:                             ; preds = %b.grow2
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len268

br.b1.91:                                         ; preds = %b.grow_done
  store i8 45, ptr %b.rn.dst, align 1
  br label %br.done.91

br.c2.91:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.91, label %br.c3.91

br.b2.91:                                         ; preds = %br.c2.91
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -83, ptr %br.dst1, align 1
  br label %br.done.91

br.c3.91:                                         ; preds = %br.c2.91
  br i1 true, label %br.b3.91, label %br.b4.91

br.b3.91:                                         ; preds = %br.c3.91
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -83, ptr %br.dst2.3, align 1
  br label %br.done.91

br.b4.91:                                         ; preds = %br.c3.91
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -83, ptr %br.dst3.4, align 1
  br label %br.done.91

br.done.91:                                       ; preds = %br.b4.91, %br.b3.91, %br.b2.91, %br.b1.91
  %br.nul = getelementptr i8, ptr %b.rn.data71, i64 %sum59
  store i8 0, ptr %br.nul, align 1
  %b.len.gep72 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum59, ptr %b.len.gep72, align 8
  br label %choice.exit57

div.not_zero:                                     ; preds = %div.zero_abort, %choice.exit57
  %div.is.min = icmp eq i64 %var.load73, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.exit57
  %9 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %modtmp = srem i64 %var.load73, 3
  store i64 %modtmp, ptr %"var.rem'", align 8
  %var.load74 = load i64, ptr %"var.rem'", align 8
  %cmptmp75 = icmp eq i64 %var.load74, 0
  br i1 %cmptmp75, label %choice.then76, label %choice.exit77

div.ovf_abort:                                    ; preds = %div.not_zero
  %10 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

choice.then76:                                    ; preds = %div.ok
  store i64 3, ptr %"var.rem'", align 8
  br label %choice.exit77

choice.exit77:                                    ; preds = %choice.then76, %div.ok
  %var.load78 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.92, align 8
  br label %loop.header.92

loop.header.92:                                   ; preds = %loop.latch.92, %choice.exit77
  %counter.load = load i64, ptr %loop.idx.92, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load78
  br i1 %loop.cond, label %loop.body.92, label %loop.exit.nat.92

loop.body.92:                                     ; preds = %loop.header.92
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.92, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load79 = load i64, ptr %var.i, align 8
  %cmptmp80 = icmp sgt i64 %var.load79, 0
  br i1 %cmptmp80, label %and.93.then, label %and.93.else

loop.exit.nat.92:                                 ; preds = %loop.header.92
  br label %loop.exit.92

loop.latch.92:                                    ; preds = %b.push_done
  %step.val = load i64, ptr %loop.step.92, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.92, align 8
  br label %loop.header.92

loop.exit.92:                                     ; preds = %loop.exit.nat.92
  %var.load174 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load174, i32 0, i32 0
  %b.freeze.len175 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load174, i32 0, i32 1
  %b.freeze.data176 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

and.93.then:                                      ; preds = %loop.body.92
  %var.load81 = load i64, ptr %var.i, align 8
  %var.load82 = load i64, ptr %"var.rem'", align 8
  %subtmp = sub i64 %var.load81, %var.load82
  br i1 false, label %div.zero_abort84, label %div.not_zero83

and.93.else:                                      ; preds = %loop.body.92
  br label %and.93.exit

and.93.exit:                                      ; preds = %and.93.else, %div.ok87
  %and.93.phi = phi i1 [ %cmptmp90, %div.ok87 ], [ %cmptmp80, %and.93.else ]
  br i1 %and.93.phi, label %choice.then91, label %choice.exit92

div.not_zero83:                                   ; preds = %div.zero_abort84, %and.93.then
  %div.is.min85 = icmp eq i64 %subtmp, -9223372036854775808
  %div.is.ovf86 = and i1 %div.is.min85, false
  br i1 %div.is.ovf86, label %div.ovf_abort88, label %div.ok87

div.zero_abort84:                                 ; preds = %and.93.then
  %11 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero83

div.ok87:                                         ; preds = %div.ovf_abort88, %div.not_zero83
  %modtmp89 = srem i64 %subtmp, 3
  %cmptmp90 = icmp eq i64 %modtmp89, 0
  br label %and.93.exit

div.ovf_abort88:                                  ; preds = %div.not_zero83
  %12 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok87

choice.then91:                                    ; preds = %and.93.exit
  %b.load93 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len94 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load93, i32 0, i32 0
  %b.rn.cur.len95 = load i64, ptr %b.rn.cur.len94, align 8
  %b.rn.new.len96 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len95, i64 1)
  %sum97 = extractvalue { i64, i1 } %b.rn.new.len96, 0
  %ovf98 = extractvalue { i64, i1 } %b.rn.new.len96, 1
  br i1 %ovf98, label %str_overflow_abort100, label %b.rn.new.len99

choice.exit92:                                    ; preds = %br.done.94, %and.93.exit
  %b.load137 = load ptr, ptr %var.b, align 8
  %var.load138 = load ptr, ptr %var.s, align 8
  %s.read.len139 = getelementptr inbounds { i64, ptr }, ptr %var.load138, i32 0, i32 0
  %s.read.len140 = load i64, ptr %s.read.len139, align 8
  %s.read.len141 = and i64 %s.read.len140, 281474976710655
  %str.tag142 = lshr i64 %s.read.len140, 48
  %str.immortal143 = icmp eq i64 %str.tag142, 0
  br i1 %str.immortal143, label %str_ok145, label %str_gen_check144

b.rn.new.len99:                                   ; preds = %str_overflow_abort100, %choice.then91
  %b.cap101 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load93, i32 0, i32 2
  %b.cap102 = load i64, ptr %b.cap101, align 8
  %b.need.grow103 = icmp slt i64 %b.cap102, %sum97
  br i1 %b.need.grow103, label %b.grow2104, label %b.nogrow2105

str_overflow_abort100:                            ; preds = %choice.then91
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len99

b.grow2104:                                       ; preds = %b.rn.new.len99
  %b.cap2107 = mul i64 %b.cap102, 2
  %b.cap.small108 = icmp slt i64 %b.cap2107, 16
  %b.cap.grow109 = select i1 %b.cap.small108, i64 16, i64 %b.cap2107
  %b.cap.need110 = icmp slt i64 %b.cap.grow109, %sum97
  %b.new.cap111 = select i1 %b.cap.need110, i64 %sum97, i64 %b.cap.grow109
  %b.cur.len2112 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load93, i32 0, i32 0
  %b.cur.len2113 = load i64, ptr %b.cur.len2112, align 8
  %b.cur.data2114 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load93, i32 0, i32 1
  %b.cur.data2115 = load ptr, ptr %b.cur.data2114, align 8
  %b.new.buf.len2116 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap111, i64 1)
  %sum117 = extractvalue { i64, i1 } %b.new.buf.len2116, 0
  %ovf118 = extractvalue { i64, i1 } %b.new.buf.len2116, 1
  br i1 %ovf118, label %str_overflow_abort120, label %b.new.buf.len2119

b.nogrow2105:                                     ; preds = %b.rn.new.len99
  br label %b.grow_done106

b.grow_done106:                                   ; preds = %b.nogrow2105, %b.new.buf.len2119
  %b.rn.data126 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load93, i32 0, i32 1
  %b.rn.data127 = load ptr, ptr %b.rn.data126, align 8
  %b.rn.dst128 = getelementptr i8, ptr %b.rn.data127, i64 %b.rn.cur.len95
  br i1 true, label %br.b1.94, label %br.c2.94

b.new.buf.len2119:                                ; preds = %str_overflow_abort120, %b.grow2104
  %arena.cur121 = call ptr @dva_arena_current()
  %b.new.buf2122 = call ptr @dva_arena_alloc(ptr %arena.cur121, i64 %sum117)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2122, ptr align 1 %b.cur.data2115, i64 %b.cur.len2113, i1 false)
  %b.grow2.nul123 = getelementptr i8, ptr %b.new.buf2122, i64 %b.cur.len2113
  store i8 0, ptr %b.grow2.nul123, align 1
  %b.new.data2.gep124 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load93, i32 0, i32 1
  store ptr %b.new.buf2122, ptr %b.new.data2.gep124, align 8
  %b.new.cap2.gep125 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load93, i32 0, i32 2
  store i64 %b.new.cap111, ptr %b.new.cap2.gep125, align 8
  br label %b.grow_done106

str_overflow_abort120:                            ; preds = %b.grow2104
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2119

br.b1.94:                                         ; preds = %b.grow_done106
  store i8 44, ptr %b.rn.dst128, align 1
  br label %br.done.94

br.c2.94:                                         ; preds = %b.grow_done106
  br i1 true, label %br.b2.94, label %br.c3.94

br.b2.94:                                         ; preds = %br.c2.94
  store i8 -64, ptr %b.rn.dst128, align 1
  %br.dst1129 = getelementptr i8, ptr %b.rn.dst128, i64 1
  store i8 -84, ptr %br.dst1129, align 1
  br label %br.done.94

br.c3.94:                                         ; preds = %br.c2.94
  br i1 true, label %br.b3.94, label %br.b4.94

br.b3.94:                                         ; preds = %br.c3.94
  store i8 -32, ptr %b.rn.dst128, align 1
  %br.dst1.3130 = getelementptr i8, ptr %b.rn.dst128, i64 1
  store i8 -128, ptr %br.dst1.3130, align 1
  %br.dst2.3131 = getelementptr i8, ptr %b.rn.dst128, i64 2
  store i8 -84, ptr %br.dst2.3131, align 1
  br label %br.done.94

br.b4.94:                                         ; preds = %br.c3.94
  store i8 -16, ptr %b.rn.dst128, align 1
  %br.dst1.4132 = getelementptr i8, ptr %b.rn.dst128, i64 1
  store i8 -128, ptr %br.dst1.4132, align 1
  %br.dst2.4133 = getelementptr i8, ptr %b.rn.dst128, i64 2
  store i8 -128, ptr %br.dst2.4133, align 1
  %br.dst3.4134 = getelementptr i8, ptr %b.rn.dst128, i64 3
  store i8 -84, ptr %br.dst3.4134, align 1
  br label %br.done.94

br.done.94:                                       ; preds = %br.b4.94, %br.b3.94, %br.b2.94, %br.b1.94
  %br.nul135 = getelementptr i8, ptr %b.rn.data127, i64 %sum97
  store i8 0, ptr %br.nul135, align 1
  %b.len.gep136 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load93, i32 0, i32 0
  store i64 %sum97, ptr %b.len.gep136, align 8
  br label %choice.exit92

str_gen_check144:                                 ; preds = %choice.exit92
  %arena.cur147 = call ptr @dva_arena_current()
  %tag.valid148 = call i1 @dva_arena_validate_tag(ptr %arena.cur147, i64 %str.tag142)
  br i1 %tag.valid148, label %str_ok145, label %str_stale146

str_ok145:                                        ; preds = %str_stale146, %str_gen_check144, %choice.exit92
  %s.read.data149 = getelementptr inbounds { i64, ptr }, ptr %var.load138, i32 0, i32 1
  %s.read.data150 = load ptr, ptr %s.read.data149, align 8
  %var.load151 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load151, 0
  br i1 %idx.neg, label %idx_oob154, label %idx_big_check152

str_stale146:                                     ; preds = %str_gen_check144
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok145

idx_big_check152:                                 ; preds = %str_ok145
  %idx.big155 = icmp sge i64 %var.load151, %s.read.len141
  br i1 %idx.big155, label %idx_oob154, label %idx_ok153

idx_ok153:                                        ; preds = %idx_oob154, %idx_big_check152
  %s.byte.gep156 = getelementptr i8, ptr %s.read.data150, i64 %var.load151
  %s.byte157 = load i8, ptr %s.byte.gep156, align 1
  %s.byte.val158 = zext i8 %s.byte157 to i64
  %b.b.ge0 = icmp sge i64 %s.byte.val158, 0
  %b.b.le255 = icmp sle i64 %s.byte.val158, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

idx_oob154:                                       ; preds = %idx_big_check152, %str_ok145
  %16 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok153

b.byte_ok:                                        ; preds = %b.byte_err, %idx_ok153
  %b.byte.i8 = trunc i64 %s.byte.val158 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load137, i32 0, i32 0
  %b.len159 = load i64, ptr %b.len, align 8
  %b.cap160 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load137, i32 0, i32 2
  %b.cap161 = load i64, ptr %b.cap160, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load137, i32 0, i32 1
  %b.data162 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len159, %b.cap161
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %idx_ok153
  %17 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2163 = mul i64 %b.cap161, 2
  %b.cap.small164 = icmp slt i64 %b.cap2163, 16
  %b.new.cap165 = select i1 %b.cap.small164, i64 16, i64 %b.cap2163
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap165, i64 1)
  %sum166 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf167 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf167, label %str_overflow_abort169, label %b.new.buf.len168

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len168
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load137, i32 0, i32 1
  %b.cur.data171 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load137, i32 0, i32 0
  %b.cur.len172 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data171, i64 %b.cur.len172
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len172, 1
  %b.nul = getelementptr i8, ptr %b.cur.data171, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep173 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load137, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep173, align 8
  br label %loop.latch.92

b.new.buf.len168:                                 ; preds = %str_overflow_abort169, %b.grow
  %arena.cur170 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur170, i64 %sum166)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data162, i64 %b.len159, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len159
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load137, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load137, i32 0, i32 2
  store i64 %b.new.cap165, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort169:                            ; preds = %b.grow
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len168

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data176, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data176, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data176, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len175, 1
  %arena.cur177 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur177, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data176, i64 %b.freeze.len175, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len175
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.92
  %b.freeze.data178 = phi ptr [ %b.freeze.data176, %loop.exit.92 ], [ %b.freeze.data176, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur179 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur179, i64 16)
  %str.build.len.gep180 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len175, ptr %str.build.len.gep180, align 8
  %str.build.data.gep181 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data178, ptr %str.build.data.gep181, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load174, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load174, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load174, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define ptr @"fs::octal_perms"(i64 %0) #1 {
entry:
  %var.o = alloca i64, align 8
  %var.g = alloca i64, align 8
  %var.u = alloca i64, align 8
  %var.s = alloca i64, align 8
  %var.fm = alloca i16, align 2
  %var.mode = alloca i64, align 8
  store i64 %0, ptr %var.mode, align 8
  %var.load = load i64, ptr %var.mode, align 8
  %coerce.trunc = trunc i64 %var.load to i16
  store i16 %coerce.trunc, ptr %var.fm, align 2
  %var.load1 = load i16, ptr %var.fm, align 2
  %bf.load = load i16, ptr %var.fm, align 2
  %bf.shr = lshr i16 %bf.load, 9
  %bf.mask = and i16 %bf.shr, 7
  %bf.ext = zext i16 %bf.mask to i64
  store i64 %bf.ext, ptr %var.s, align 8
  %var.load2 = load i16, ptr %var.fm, align 2
  %bf.load3 = load i16, ptr %var.fm, align 2
  %bf.shr4 = lshr i16 %bf.load3, 6
  %bf.mask5 = and i16 %bf.shr4, 7
  %bf.ext6 = zext i16 %bf.mask5 to i64
  store i64 %bf.ext6, ptr %var.u, align 8
  %var.load7 = load i16, ptr %var.fm, align 2
  %bf.load8 = load i16, ptr %var.fm, align 2
  %bf.shr9 = lshr i16 %bf.load8, 3
  %bf.mask10 = and i16 %bf.shr9, 7
  %bf.ext11 = zext i16 %bf.mask10 to i64
  store i64 %bf.ext11, ptr %var.g, align 8
  %var.load12 = load i16, ptr %var.fm, align 2
  %bf.load13 = load i16, ptr %var.fm, align 2
  %bf.mask14 = and i16 %bf.load13, 7
  %bf.ext15 = zext i16 %bf.mask14 to i64
  store i64 %bf.ext15, ptr %var.o, align 8
  %var.load16 = load i16, ptr %var.s, align 2
  %coerce.zext = zext i16 %var.load16 to i64
  %cmptmp = icmp ugt i64 %coerce.zext, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load17 = load i16, ptr %var.s, align 2
  %arena.cur = call ptr @dva_arena_current()
  %to_str.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 32)
  %coerce.zext18 = zext i16 %var.load17 to i64
  %to_str.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf, i64 32, ptr @dva_fmt_u64, i64 %coerce.zext18)
  %to_str.len = zext i32 %to_str.n to i64
  %arena.cur19 = call ptr @dva_arena_current()
  %to_str.res = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 0
  store i64 %to_str.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 1
  store ptr %to_str.buf, ptr %str.build.data.gep, align 8
  %concat.lhs = load i64, ptr @str.5.struct, align 8
  %concat.lhs20 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.else:                                      ; preds = %entry
  %concat.lhs199 = load i64, ptr @str.5.struct, align 8
  %concat.lhs200 = and i64 %concat.lhs199, 281474976710655
  %str.tag201 = lshr i64 %concat.lhs199, 48
  %str.immortal202 = icmp eq i64 %str.tag201, 0
  br i1 %str.immortal202, label %str_ok204, label %str_gen_check203

choice.exit:                                      ; preds = %concat.tot.len383, %concat.tot.len189
  %choice.res = phi ptr [ %concat.str196, %concat.tot.len189 ], [ %concat.str390, %concat.tot.len383 ]
  ret ptr %choice.res

str_gen_check:                                    ; preds = %choice.then
  %arena.cur21 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur21, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.then
  %concat.lhs22 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 0
  %concat.rhs23 = load i64, ptr %concat.rhs, align 8
  %concat.rhs24 = and i64 %concat.rhs23, 281474976710655
  %str.tag25 = lshr i64 %concat.rhs23, 48
  %str.immortal26 = icmp eq i64 %str.tag25, 0
  br i1 %str.immortal26, label %str_ok28, label %str_gen_check27

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check27:                                  ; preds = %str_ok
  %arena.cur30 = call ptr @dva_arena_current()
  %tag.valid31 = call i1 @dva_arena_validate_tag(ptr %arena.cur30, i64 %str.tag25)
  br i1 %tag.valid31, label %str_ok28, label %str_stale29

str_ok28:                                         ; preds = %str_stale29, %str_gen_check27, %str_ok
  %concat.rhs32 = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 1
  %concat.rhs33 = load ptr, ptr %concat.rhs32, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs20, i64 %concat.rhs24)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len34

str_stale29:                                      ; preds = %str_gen_check27
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok28

concat.sum.len34:                                 ; preds = %str_overflow_abort, %str_ok28
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum35 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf36 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf36, label %str_overflow_abort38, label %concat.tot.len37

str_overflow_abort:                               ; preds = %str_ok28
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len34

concat.tot.len37:                                 ; preds = %str_overflow_abort38, %concat.sum.len34
  %arena.cur39 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 %sum35)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs22, i64 %concat.lhs20, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs33, i64 %concat.rhs24, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur40 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 16)
  %str.build.len.gep41 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep41, align 8
  %str.build.data.gep42 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep42, align 8
  %var.load43 = load i16, ptr %var.u, align 2
  %arena.cur44 = call ptr @dva_arena_current()
  %to_str.buf45 = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 32)
  %coerce.zext46 = zext i16 %var.load43 to i64
  %to_str.n47 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf45, i64 32, ptr @dva_fmt_u64, i64 %coerce.zext46)
  %to_str.len48 = zext i32 %to_str.n47 to i64
  %arena.cur49 = call ptr @dva_arena_current()
  %to_str.res50 = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 16)
  %str.build.len.gep51 = getelementptr inbounds { i64, ptr }, ptr %to_str.res50, i32 0, i32 0
  store i64 %to_str.len48, ptr %str.build.len.gep51, align 8
  %str.build.data.gep52 = getelementptr inbounds { i64, ptr }, ptr %to_str.res50, i32 0, i32 1
  store ptr %to_str.buf45, ptr %str.build.data.gep52, align 8
  %concat.lhs53 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs54 = load i64, ptr %concat.lhs53, align 8
  %concat.lhs55 = and i64 %concat.lhs54, 281474976710655
  %str.tag56 = lshr i64 %concat.lhs54, 48
  %str.immortal57 = icmp eq i64 %str.tag56, 0
  br i1 %str.immortal57, label %str_ok59, label %str_gen_check58

str_overflow_abort38:                             ; preds = %concat.sum.len34
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len37

str_gen_check58:                                  ; preds = %concat.tot.len37
  %arena.cur61 = call ptr @dva_arena_current()
  %tag.valid62 = call i1 @dva_arena_validate_tag(ptr %arena.cur61, i64 %str.tag56)
  br i1 %tag.valid62, label %str_ok59, label %str_stale60

str_ok59:                                         ; preds = %str_stale60, %str_gen_check58, %concat.tot.len37
  %concat.lhs63 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs64 = load ptr, ptr %concat.lhs63, align 8
  %concat.rhs65 = getelementptr inbounds { i64, ptr }, ptr %to_str.res50, i32 0, i32 0
  %concat.rhs66 = load i64, ptr %concat.rhs65, align 8
  %concat.rhs67 = and i64 %concat.rhs66, 281474976710655
  %str.tag68 = lshr i64 %concat.rhs66, 48
  %str.immortal69 = icmp eq i64 %str.tag68, 0
  br i1 %str.immortal69, label %str_ok71, label %str_gen_check70

str_stale60:                                      ; preds = %str_gen_check58
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok59

str_gen_check70:                                  ; preds = %str_ok59
  %arena.cur73 = call ptr @dva_arena_current()
  %tag.valid74 = call i1 @dva_arena_validate_tag(ptr %arena.cur73, i64 %str.tag68)
  br i1 %tag.valid74, label %str_ok71, label %str_stale72

str_ok71:                                         ; preds = %str_stale72, %str_gen_check70, %str_ok59
  %concat.rhs75 = getelementptr inbounds { i64, ptr }, ptr %to_str.res50, i32 0, i32 1
  %concat.rhs76 = load ptr, ptr %concat.rhs75, align 8
  %concat.sum.len77 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs55, i64 %concat.rhs67)
  %sum78 = extractvalue { i64, i1 } %concat.sum.len77, 0
  %ovf79 = extractvalue { i64, i1 } %concat.sum.len77, 1
  br i1 %ovf79, label %str_overflow_abort81, label %concat.sum.len80

str_stale72:                                      ; preds = %str_gen_check70
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok71

concat.sum.len80:                                 ; preds = %str_overflow_abort81, %str_ok71
  %concat.tot.len82 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum78, i64 1)
  %sum83 = extractvalue { i64, i1 } %concat.tot.len82, 0
  %ovf84 = extractvalue { i64, i1 } %concat.tot.len82, 1
  br i1 %ovf84, label %str_overflow_abort86, label %concat.tot.len85

str_overflow_abort81:                             ; preds = %str_ok71
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
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
  %var.load95 = load i16, ptr %var.g, align 2
  %arena.cur96 = call ptr @dva_arena_current()
  %to_str.buf97 = call ptr @dva_arena_alloc(ptr %arena.cur96, i64 32)
  %coerce.zext98 = zext i16 %var.load95 to i64
  %to_str.n99 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf97, i64 32, ptr @dva_fmt_u64, i64 %coerce.zext98)
  %to_str.len100 = zext i32 %to_str.n99 to i64
  %arena.cur101 = call ptr @dva_arena_current()
  %to_str.res102 = call ptr @dva_arena_alloc(ptr %arena.cur101, i64 16)
  %str.build.len.gep103 = getelementptr inbounds { i64, ptr }, ptr %to_str.res102, i32 0, i32 0
  store i64 %to_str.len100, ptr %str.build.len.gep103, align 8
  %str.build.data.gep104 = getelementptr inbounds { i64, ptr }, ptr %to_str.res102, i32 0, i32 1
  store ptr %to_str.buf97, ptr %str.build.data.gep104, align 8
  %concat.lhs105 = getelementptr inbounds { i64, ptr }, ptr %concat.str92, i32 0, i32 0
  %concat.lhs106 = load i64, ptr %concat.lhs105, align 8
  %concat.lhs107 = and i64 %concat.lhs106, 281474976710655
  %str.tag108 = lshr i64 %concat.lhs106, 48
  %str.immortal109 = icmp eq i64 %str.tag108, 0
  br i1 %str.immortal109, label %str_ok111, label %str_gen_check110

str_overflow_abort86:                             ; preds = %concat.sum.len80
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len85

str_gen_check110:                                 ; preds = %concat.tot.len85
  %arena.cur113 = call ptr @dva_arena_current()
  %tag.valid114 = call i1 @dva_arena_validate_tag(ptr %arena.cur113, i64 %str.tag108)
  br i1 %tag.valid114, label %str_ok111, label %str_stale112

str_ok111:                                        ; preds = %str_stale112, %str_gen_check110, %concat.tot.len85
  %concat.lhs115 = getelementptr inbounds { i64, ptr }, ptr %concat.str92, i32 0, i32 1
  %concat.lhs116 = load ptr, ptr %concat.lhs115, align 8
  %concat.rhs117 = getelementptr inbounds { i64, ptr }, ptr %to_str.res102, i32 0, i32 0
  %concat.rhs118 = load i64, ptr %concat.rhs117, align 8
  %concat.rhs119 = and i64 %concat.rhs118, 281474976710655
  %str.tag120 = lshr i64 %concat.rhs118, 48
  %str.immortal121 = icmp eq i64 %str.tag120, 0
  br i1 %str.immortal121, label %str_ok123, label %str_gen_check122

str_stale112:                                     ; preds = %str_gen_check110
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok111

str_gen_check122:                                 ; preds = %str_ok111
  %arena.cur125 = call ptr @dva_arena_current()
  %tag.valid126 = call i1 @dva_arena_validate_tag(ptr %arena.cur125, i64 %str.tag120)
  br i1 %tag.valid126, label %str_ok123, label %str_stale124

str_ok123:                                        ; preds = %str_stale124, %str_gen_check122, %str_ok111
  %concat.rhs127 = getelementptr inbounds { i64, ptr }, ptr %to_str.res102, i32 0, i32 1
  %concat.rhs128 = load ptr, ptr %concat.rhs127, align 8
  %concat.sum.len129 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs107, i64 %concat.rhs119)
  %sum130 = extractvalue { i64, i1 } %concat.sum.len129, 0
  %ovf131 = extractvalue { i64, i1 } %concat.sum.len129, 1
  br i1 %ovf131, label %str_overflow_abort133, label %concat.sum.len132

str_stale124:                                     ; preds = %str_gen_check122
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok123

concat.sum.len132:                                ; preds = %str_overflow_abort133, %str_ok123
  %concat.tot.len134 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum130, i64 1)
  %sum135 = extractvalue { i64, i1 } %concat.tot.len134, 0
  %ovf136 = extractvalue { i64, i1 } %concat.tot.len134, 1
  br i1 %ovf136, label %str_overflow_abort138, label %concat.tot.len137

str_overflow_abort133:                            ; preds = %str_ok123
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len132

concat.tot.len137:                                ; preds = %str_overflow_abort138, %concat.sum.len132
  %arena.cur139 = call ptr @dva_arena_current()
  %concat.buf140 = call ptr @dva_arena_alloc(ptr %arena.cur139, i64 %sum135)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf140, ptr align 1 %concat.lhs116, i64 %concat.lhs107, i1 false)
  %concat.mid141 = getelementptr i8, ptr %concat.buf140, i64 %concat.lhs107
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid141, ptr align 1 %concat.rhs128, i64 %concat.rhs119, i1 false)
  %concat.nul142 = getelementptr i8, ptr %concat.buf140, i64 %sum130
  store i8 0, ptr %concat.nul142, align 1
  %arena.cur143 = call ptr @dva_arena_current()
  %concat.str144 = call ptr @dva_arena_alloc(ptr %arena.cur143, i64 16)
  %str.build.len.gep145 = getelementptr inbounds { i64, ptr }, ptr %concat.str144, i32 0, i32 0
  store i64 %sum130, ptr %str.build.len.gep145, align 8
  %str.build.data.gep146 = getelementptr inbounds { i64, ptr }, ptr %concat.str144, i32 0, i32 1
  store ptr %concat.buf140, ptr %str.build.data.gep146, align 8
  %var.load147 = load i16, ptr %var.o, align 2
  %arena.cur148 = call ptr @dva_arena_current()
  %to_str.buf149 = call ptr @dva_arena_alloc(ptr %arena.cur148, i64 32)
  %coerce.zext150 = zext i16 %var.load147 to i64
  %to_str.n151 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf149, i64 32, ptr @dva_fmt_u64, i64 %coerce.zext150)
  %to_str.len152 = zext i32 %to_str.n151 to i64
  %arena.cur153 = call ptr @dva_arena_current()
  %to_str.res154 = call ptr @dva_arena_alloc(ptr %arena.cur153, i64 16)
  %str.build.len.gep155 = getelementptr inbounds { i64, ptr }, ptr %to_str.res154, i32 0, i32 0
  store i64 %to_str.len152, ptr %str.build.len.gep155, align 8
  %str.build.data.gep156 = getelementptr inbounds { i64, ptr }, ptr %to_str.res154, i32 0, i32 1
  store ptr %to_str.buf149, ptr %str.build.data.gep156, align 8
  %concat.lhs157 = getelementptr inbounds { i64, ptr }, ptr %concat.str144, i32 0, i32 0
  %concat.lhs158 = load i64, ptr %concat.lhs157, align 8
  %concat.lhs159 = and i64 %concat.lhs158, 281474976710655
  %str.tag160 = lshr i64 %concat.lhs158, 48
  %str.immortal161 = icmp eq i64 %str.tag160, 0
  br i1 %str.immortal161, label %str_ok163, label %str_gen_check162

str_overflow_abort138:                            ; preds = %concat.sum.len132
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len137

str_gen_check162:                                 ; preds = %concat.tot.len137
  %arena.cur165 = call ptr @dva_arena_current()
  %tag.valid166 = call i1 @dva_arena_validate_tag(ptr %arena.cur165, i64 %str.tag160)
  br i1 %tag.valid166, label %str_ok163, label %str_stale164

str_ok163:                                        ; preds = %str_stale164, %str_gen_check162, %concat.tot.len137
  %concat.lhs167 = getelementptr inbounds { i64, ptr }, ptr %concat.str144, i32 0, i32 1
  %concat.lhs168 = load ptr, ptr %concat.lhs167, align 8
  %concat.rhs169 = getelementptr inbounds { i64, ptr }, ptr %to_str.res154, i32 0, i32 0
  %concat.rhs170 = load i64, ptr %concat.rhs169, align 8
  %concat.rhs171 = and i64 %concat.rhs170, 281474976710655
  %str.tag172 = lshr i64 %concat.rhs170, 48
  %str.immortal173 = icmp eq i64 %str.tag172, 0
  br i1 %str.immortal173, label %str_ok175, label %str_gen_check174

str_stale164:                                     ; preds = %str_gen_check162
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok163

str_gen_check174:                                 ; preds = %str_ok163
  %arena.cur177 = call ptr @dva_arena_current()
  %tag.valid178 = call i1 @dva_arena_validate_tag(ptr %arena.cur177, i64 %str.tag172)
  br i1 %tag.valid178, label %str_ok175, label %str_stale176

str_ok175:                                        ; preds = %str_stale176, %str_gen_check174, %str_ok163
  %concat.rhs179 = getelementptr inbounds { i64, ptr }, ptr %to_str.res154, i32 0, i32 1
  %concat.rhs180 = load ptr, ptr %concat.rhs179, align 8
  %concat.sum.len181 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs159, i64 %concat.rhs171)
  %sum182 = extractvalue { i64, i1 } %concat.sum.len181, 0
  %ovf183 = extractvalue { i64, i1 } %concat.sum.len181, 1
  br i1 %ovf183, label %str_overflow_abort185, label %concat.sum.len184

str_stale176:                                     ; preds = %str_gen_check174
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok175

concat.sum.len184:                                ; preds = %str_overflow_abort185, %str_ok175
  %concat.tot.len186 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum182, i64 1)
  %sum187 = extractvalue { i64, i1 } %concat.tot.len186, 0
  %ovf188 = extractvalue { i64, i1 } %concat.tot.len186, 1
  br i1 %ovf188, label %str_overflow_abort190, label %concat.tot.len189

str_overflow_abort185:                            ; preds = %str_ok175
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len184

concat.tot.len189:                                ; preds = %str_overflow_abort190, %concat.sum.len184
  %arena.cur191 = call ptr @dva_arena_current()
  %concat.buf192 = call ptr @dva_arena_alloc(ptr %arena.cur191, i64 %sum187)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf192, ptr align 1 %concat.lhs168, i64 %concat.lhs159, i1 false)
  %concat.mid193 = getelementptr i8, ptr %concat.buf192, i64 %concat.lhs159
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid193, ptr align 1 %concat.rhs180, i64 %concat.rhs171, i1 false)
  %concat.nul194 = getelementptr i8, ptr %concat.buf192, i64 %sum182
  store i8 0, ptr %concat.nul194, align 1
  %arena.cur195 = call ptr @dva_arena_current()
  %concat.str196 = call ptr @dva_arena_alloc(ptr %arena.cur195, i64 16)
  %str.build.len.gep197 = getelementptr inbounds { i64, ptr }, ptr %concat.str196, i32 0, i32 0
  store i64 %sum182, ptr %str.build.len.gep197, align 8
  %str.build.data.gep198 = getelementptr inbounds { i64, ptr }, ptr %concat.str196, i32 0, i32 1
  store ptr %concat.buf192, ptr %str.build.data.gep198, align 8
  br label %choice.exit

str_overflow_abort190:                            ; preds = %concat.sum.len184
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len189

str_gen_check203:                                 ; preds = %choice.else
  %arena.cur206 = call ptr @dva_arena_current()
  %tag.valid207 = call i1 @dva_arena_validate_tag(ptr %arena.cur206, i64 %str.tag201)
  br i1 %tag.valid207, label %str_ok204, label %str_stale205

str_ok204:                                        ; preds = %str_stale205, %str_gen_check203, %choice.else
  %concat.lhs208 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %concat.rhs209 = load i64, ptr @str.14.struct, align 8
  %concat.rhs210 = and i64 %concat.rhs209, 281474976710655
  %str.tag211 = lshr i64 %concat.rhs209, 48
  %str.immortal212 = icmp eq i64 %str.tag211, 0
  br i1 %str.immortal212, label %str_ok214, label %str_gen_check213

str_stale205:                                     ; preds = %str_gen_check203
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok204

str_gen_check213:                                 ; preds = %str_ok204
  %arena.cur216 = call ptr @dva_arena_current()
  %tag.valid217 = call i1 @dva_arena_validate_tag(ptr %arena.cur216, i64 %str.tag211)
  br i1 %tag.valid217, label %str_ok214, label %str_stale215

str_ok214:                                        ; preds = %str_stale215, %str_gen_check213, %str_ok204
  %concat.rhs218 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  %concat.sum.len219 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs200, i64 %concat.rhs210)
  %sum220 = extractvalue { i64, i1 } %concat.sum.len219, 0
  %ovf221 = extractvalue { i64, i1 } %concat.sum.len219, 1
  br i1 %ovf221, label %str_overflow_abort223, label %concat.sum.len222

str_stale215:                                     ; preds = %str_gen_check213
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok214

concat.sum.len222:                                ; preds = %str_overflow_abort223, %str_ok214
  %concat.tot.len224 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum220, i64 1)
  %sum225 = extractvalue { i64, i1 } %concat.tot.len224, 0
  %ovf226 = extractvalue { i64, i1 } %concat.tot.len224, 1
  br i1 %ovf226, label %str_overflow_abort228, label %concat.tot.len227

str_overflow_abort223:                            ; preds = %str_ok214
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len222

concat.tot.len227:                                ; preds = %str_overflow_abort228, %concat.sum.len222
  %arena.cur229 = call ptr @dva_arena_current()
  %concat.buf230 = call ptr @dva_arena_alloc(ptr %arena.cur229, i64 %sum225)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf230, ptr align 1 %concat.lhs208, i64 %concat.lhs200, i1 false)
  %concat.mid231 = getelementptr i8, ptr %concat.buf230, i64 %concat.lhs200
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid231, ptr align 1 %concat.rhs218, i64 %concat.rhs210, i1 false)
  %concat.nul232 = getelementptr i8, ptr %concat.buf230, i64 %sum220
  store i8 0, ptr %concat.nul232, align 1
  %arena.cur233 = call ptr @dva_arena_current()
  %concat.str234 = call ptr @dva_arena_alloc(ptr %arena.cur233, i64 16)
  %str.build.len.gep235 = getelementptr inbounds { i64, ptr }, ptr %concat.str234, i32 0, i32 0
  store i64 %sum220, ptr %str.build.len.gep235, align 8
  %str.build.data.gep236 = getelementptr inbounds { i64, ptr }, ptr %concat.str234, i32 0, i32 1
  store ptr %concat.buf230, ptr %str.build.data.gep236, align 8
  %var.load237 = load i16, ptr %var.u, align 2
  %arena.cur238 = call ptr @dva_arena_current()
  %to_str.buf239 = call ptr @dva_arena_alloc(ptr %arena.cur238, i64 32)
  %coerce.zext240 = zext i16 %var.load237 to i64
  %to_str.n241 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf239, i64 32, ptr @dva_fmt_u64, i64 %coerce.zext240)
  %to_str.len242 = zext i32 %to_str.n241 to i64
  %arena.cur243 = call ptr @dva_arena_current()
  %to_str.res244 = call ptr @dva_arena_alloc(ptr %arena.cur243, i64 16)
  %str.build.len.gep245 = getelementptr inbounds { i64, ptr }, ptr %to_str.res244, i32 0, i32 0
  store i64 %to_str.len242, ptr %str.build.len.gep245, align 8
  %str.build.data.gep246 = getelementptr inbounds { i64, ptr }, ptr %to_str.res244, i32 0, i32 1
  store ptr %to_str.buf239, ptr %str.build.data.gep246, align 8
  %concat.lhs247 = getelementptr inbounds { i64, ptr }, ptr %concat.str234, i32 0, i32 0
  %concat.lhs248 = load i64, ptr %concat.lhs247, align 8
  %concat.lhs249 = and i64 %concat.lhs248, 281474976710655
  %str.tag250 = lshr i64 %concat.lhs248, 48
  %str.immortal251 = icmp eq i64 %str.tag250, 0
  br i1 %str.immortal251, label %str_ok253, label %str_gen_check252

str_overflow_abort228:                            ; preds = %concat.sum.len222
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len227

str_gen_check252:                                 ; preds = %concat.tot.len227
  %arena.cur255 = call ptr @dva_arena_current()
  %tag.valid256 = call i1 @dva_arena_validate_tag(ptr %arena.cur255, i64 %str.tag250)
  br i1 %tag.valid256, label %str_ok253, label %str_stale254

str_ok253:                                        ; preds = %str_stale254, %str_gen_check252, %concat.tot.len227
  %concat.lhs257 = getelementptr inbounds { i64, ptr }, ptr %concat.str234, i32 0, i32 1
  %concat.lhs258 = load ptr, ptr %concat.lhs257, align 8
  %concat.rhs259 = getelementptr inbounds { i64, ptr }, ptr %to_str.res244, i32 0, i32 0
  %concat.rhs260 = load i64, ptr %concat.rhs259, align 8
  %concat.rhs261 = and i64 %concat.rhs260, 281474976710655
  %str.tag262 = lshr i64 %concat.rhs260, 48
  %str.immortal263 = icmp eq i64 %str.tag262, 0
  br i1 %str.immortal263, label %str_ok265, label %str_gen_check264

str_stale254:                                     ; preds = %str_gen_check252
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok253

str_gen_check264:                                 ; preds = %str_ok253
  %arena.cur267 = call ptr @dva_arena_current()
  %tag.valid268 = call i1 @dva_arena_validate_tag(ptr %arena.cur267, i64 %str.tag262)
  br i1 %tag.valid268, label %str_ok265, label %str_stale266

str_ok265:                                        ; preds = %str_stale266, %str_gen_check264, %str_ok253
  %concat.rhs269 = getelementptr inbounds { i64, ptr }, ptr %to_str.res244, i32 0, i32 1
  %concat.rhs270 = load ptr, ptr %concat.rhs269, align 8
  %concat.sum.len271 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs249, i64 %concat.rhs261)
  %sum272 = extractvalue { i64, i1 } %concat.sum.len271, 0
  %ovf273 = extractvalue { i64, i1 } %concat.sum.len271, 1
  br i1 %ovf273, label %str_overflow_abort275, label %concat.sum.len274

str_stale266:                                     ; preds = %str_gen_check264
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok265

concat.sum.len274:                                ; preds = %str_overflow_abort275, %str_ok265
  %concat.tot.len276 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum272, i64 1)
  %sum277 = extractvalue { i64, i1 } %concat.tot.len276, 0
  %ovf278 = extractvalue { i64, i1 } %concat.tot.len276, 1
  br i1 %ovf278, label %str_overflow_abort280, label %concat.tot.len279

str_overflow_abort275:                            ; preds = %str_ok265
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len274

concat.tot.len279:                                ; preds = %str_overflow_abort280, %concat.sum.len274
  %arena.cur281 = call ptr @dva_arena_current()
  %concat.buf282 = call ptr @dva_arena_alloc(ptr %arena.cur281, i64 %sum277)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf282, ptr align 1 %concat.lhs258, i64 %concat.lhs249, i1 false)
  %concat.mid283 = getelementptr i8, ptr %concat.buf282, i64 %concat.lhs249
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid283, ptr align 1 %concat.rhs270, i64 %concat.rhs261, i1 false)
  %concat.nul284 = getelementptr i8, ptr %concat.buf282, i64 %sum272
  store i8 0, ptr %concat.nul284, align 1
  %arena.cur285 = call ptr @dva_arena_current()
  %concat.str286 = call ptr @dva_arena_alloc(ptr %arena.cur285, i64 16)
  %str.build.len.gep287 = getelementptr inbounds { i64, ptr }, ptr %concat.str286, i32 0, i32 0
  store i64 %sum272, ptr %str.build.len.gep287, align 8
  %str.build.data.gep288 = getelementptr inbounds { i64, ptr }, ptr %concat.str286, i32 0, i32 1
  store ptr %concat.buf282, ptr %str.build.data.gep288, align 8
  %var.load289 = load i16, ptr %var.g, align 2
  %arena.cur290 = call ptr @dva_arena_current()
  %to_str.buf291 = call ptr @dva_arena_alloc(ptr %arena.cur290, i64 32)
  %coerce.zext292 = zext i16 %var.load289 to i64
  %to_str.n293 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf291, i64 32, ptr @dva_fmt_u64, i64 %coerce.zext292)
  %to_str.len294 = zext i32 %to_str.n293 to i64
  %arena.cur295 = call ptr @dva_arena_current()
  %to_str.res296 = call ptr @dva_arena_alloc(ptr %arena.cur295, i64 16)
  %str.build.len.gep297 = getelementptr inbounds { i64, ptr }, ptr %to_str.res296, i32 0, i32 0
  store i64 %to_str.len294, ptr %str.build.len.gep297, align 8
  %str.build.data.gep298 = getelementptr inbounds { i64, ptr }, ptr %to_str.res296, i32 0, i32 1
  store ptr %to_str.buf291, ptr %str.build.data.gep298, align 8
  %concat.lhs299 = getelementptr inbounds { i64, ptr }, ptr %concat.str286, i32 0, i32 0
  %concat.lhs300 = load i64, ptr %concat.lhs299, align 8
  %concat.lhs301 = and i64 %concat.lhs300, 281474976710655
  %str.tag302 = lshr i64 %concat.lhs300, 48
  %str.immortal303 = icmp eq i64 %str.tag302, 0
  br i1 %str.immortal303, label %str_ok305, label %str_gen_check304

str_overflow_abort280:                            ; preds = %concat.sum.len274
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len279

str_gen_check304:                                 ; preds = %concat.tot.len279
  %arena.cur307 = call ptr @dva_arena_current()
  %tag.valid308 = call i1 @dva_arena_validate_tag(ptr %arena.cur307, i64 %str.tag302)
  br i1 %tag.valid308, label %str_ok305, label %str_stale306

str_ok305:                                        ; preds = %str_stale306, %str_gen_check304, %concat.tot.len279
  %concat.lhs309 = getelementptr inbounds { i64, ptr }, ptr %concat.str286, i32 0, i32 1
  %concat.lhs310 = load ptr, ptr %concat.lhs309, align 8
  %concat.rhs311 = getelementptr inbounds { i64, ptr }, ptr %to_str.res296, i32 0, i32 0
  %concat.rhs312 = load i64, ptr %concat.rhs311, align 8
  %concat.rhs313 = and i64 %concat.rhs312, 281474976710655
  %str.tag314 = lshr i64 %concat.rhs312, 48
  %str.immortal315 = icmp eq i64 %str.tag314, 0
  br i1 %str.immortal315, label %str_ok317, label %str_gen_check316

str_stale306:                                     ; preds = %str_gen_check304
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok305

str_gen_check316:                                 ; preds = %str_ok305
  %arena.cur319 = call ptr @dva_arena_current()
  %tag.valid320 = call i1 @dva_arena_validate_tag(ptr %arena.cur319, i64 %str.tag314)
  br i1 %tag.valid320, label %str_ok317, label %str_stale318

str_ok317:                                        ; preds = %str_stale318, %str_gen_check316, %str_ok305
  %concat.rhs321 = getelementptr inbounds { i64, ptr }, ptr %to_str.res296, i32 0, i32 1
  %concat.rhs322 = load ptr, ptr %concat.rhs321, align 8
  %concat.sum.len323 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs301, i64 %concat.rhs313)
  %sum324 = extractvalue { i64, i1 } %concat.sum.len323, 0
  %ovf325 = extractvalue { i64, i1 } %concat.sum.len323, 1
  br i1 %ovf325, label %str_overflow_abort327, label %concat.sum.len326

str_stale318:                                     ; preds = %str_gen_check316
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok317

concat.sum.len326:                                ; preds = %str_overflow_abort327, %str_ok317
  %concat.tot.len328 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum324, i64 1)
  %sum329 = extractvalue { i64, i1 } %concat.tot.len328, 0
  %ovf330 = extractvalue { i64, i1 } %concat.tot.len328, 1
  br i1 %ovf330, label %str_overflow_abort332, label %concat.tot.len331

str_overflow_abort327:                            ; preds = %str_ok317
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len326

concat.tot.len331:                                ; preds = %str_overflow_abort332, %concat.sum.len326
  %arena.cur333 = call ptr @dva_arena_current()
  %concat.buf334 = call ptr @dva_arena_alloc(ptr %arena.cur333, i64 %sum329)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf334, ptr align 1 %concat.lhs310, i64 %concat.lhs301, i1 false)
  %concat.mid335 = getelementptr i8, ptr %concat.buf334, i64 %concat.lhs301
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid335, ptr align 1 %concat.rhs322, i64 %concat.rhs313, i1 false)
  %concat.nul336 = getelementptr i8, ptr %concat.buf334, i64 %sum324
  store i8 0, ptr %concat.nul336, align 1
  %arena.cur337 = call ptr @dva_arena_current()
  %concat.str338 = call ptr @dva_arena_alloc(ptr %arena.cur337, i64 16)
  %str.build.len.gep339 = getelementptr inbounds { i64, ptr }, ptr %concat.str338, i32 0, i32 0
  store i64 %sum324, ptr %str.build.len.gep339, align 8
  %str.build.data.gep340 = getelementptr inbounds { i64, ptr }, ptr %concat.str338, i32 0, i32 1
  store ptr %concat.buf334, ptr %str.build.data.gep340, align 8
  %var.load341 = load i16, ptr %var.o, align 2
  %arena.cur342 = call ptr @dva_arena_current()
  %to_str.buf343 = call ptr @dva_arena_alloc(ptr %arena.cur342, i64 32)
  %coerce.zext344 = zext i16 %var.load341 to i64
  %to_str.n345 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf343, i64 32, ptr @dva_fmt_u64, i64 %coerce.zext344)
  %to_str.len346 = zext i32 %to_str.n345 to i64
  %arena.cur347 = call ptr @dva_arena_current()
  %to_str.res348 = call ptr @dva_arena_alloc(ptr %arena.cur347, i64 16)
  %str.build.len.gep349 = getelementptr inbounds { i64, ptr }, ptr %to_str.res348, i32 0, i32 0
  store i64 %to_str.len346, ptr %str.build.len.gep349, align 8
  %str.build.data.gep350 = getelementptr inbounds { i64, ptr }, ptr %to_str.res348, i32 0, i32 1
  store ptr %to_str.buf343, ptr %str.build.data.gep350, align 8
  %concat.lhs351 = getelementptr inbounds { i64, ptr }, ptr %concat.str338, i32 0, i32 0
  %concat.lhs352 = load i64, ptr %concat.lhs351, align 8
  %concat.lhs353 = and i64 %concat.lhs352, 281474976710655
  %str.tag354 = lshr i64 %concat.lhs352, 48
  %str.immortal355 = icmp eq i64 %str.tag354, 0
  br i1 %str.immortal355, label %str_ok357, label %str_gen_check356

str_overflow_abort332:                            ; preds = %concat.sum.len326
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len331

str_gen_check356:                                 ; preds = %concat.tot.len331
  %arena.cur359 = call ptr @dva_arena_current()
  %tag.valid360 = call i1 @dva_arena_validate_tag(ptr %arena.cur359, i64 %str.tag354)
  br i1 %tag.valid360, label %str_ok357, label %str_stale358

str_ok357:                                        ; preds = %str_stale358, %str_gen_check356, %concat.tot.len331
  %concat.lhs361 = getelementptr inbounds { i64, ptr }, ptr %concat.str338, i32 0, i32 1
  %concat.lhs362 = load ptr, ptr %concat.lhs361, align 8
  %concat.rhs363 = getelementptr inbounds { i64, ptr }, ptr %to_str.res348, i32 0, i32 0
  %concat.rhs364 = load i64, ptr %concat.rhs363, align 8
  %concat.rhs365 = and i64 %concat.rhs364, 281474976710655
  %str.tag366 = lshr i64 %concat.rhs364, 48
  %str.immortal367 = icmp eq i64 %str.tag366, 0
  br i1 %str.immortal367, label %str_ok369, label %str_gen_check368

str_stale358:                                     ; preds = %str_gen_check356
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok357

str_gen_check368:                                 ; preds = %str_ok357
  %arena.cur371 = call ptr @dva_arena_current()
  %tag.valid372 = call i1 @dva_arena_validate_tag(ptr %arena.cur371, i64 %str.tag366)
  br i1 %tag.valid372, label %str_ok369, label %str_stale370

str_ok369:                                        ; preds = %str_stale370, %str_gen_check368, %str_ok357
  %concat.rhs373 = getelementptr inbounds { i64, ptr }, ptr %to_str.res348, i32 0, i32 1
  %concat.rhs374 = load ptr, ptr %concat.rhs373, align 8
  %concat.sum.len375 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs353, i64 %concat.rhs365)
  %sum376 = extractvalue { i64, i1 } %concat.sum.len375, 0
  %ovf377 = extractvalue { i64, i1 } %concat.sum.len375, 1
  br i1 %ovf377, label %str_overflow_abort379, label %concat.sum.len378

str_stale370:                                     ; preds = %str_gen_check368
  %30 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok369

concat.sum.len378:                                ; preds = %str_overflow_abort379, %str_ok369
  %concat.tot.len380 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum376, i64 1)
  %sum381 = extractvalue { i64, i1 } %concat.tot.len380, 0
  %ovf382 = extractvalue { i64, i1 } %concat.tot.len380, 1
  br i1 %ovf382, label %str_overflow_abort384, label %concat.tot.len383

str_overflow_abort379:                            ; preds = %str_ok369
  %31 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len378

concat.tot.len383:                                ; preds = %str_overflow_abort384, %concat.sum.len378
  %arena.cur385 = call ptr @dva_arena_current()
  %concat.buf386 = call ptr @dva_arena_alloc(ptr %arena.cur385, i64 %sum381)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf386, ptr align 1 %concat.lhs362, i64 %concat.lhs353, i1 false)
  %concat.mid387 = getelementptr i8, ptr %concat.buf386, i64 %concat.lhs353
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid387, ptr align 1 %concat.rhs374, i64 %concat.rhs365, i1 false)
  %concat.nul388 = getelementptr i8, ptr %concat.buf386, i64 %sum376
  store i8 0, ptr %concat.nul388, align 1
  %arena.cur389 = call ptr @dva_arena_current()
  %concat.str390 = call ptr @dva_arena_alloc(ptr %arena.cur389, i64 16)
  %str.build.len.gep391 = getelementptr inbounds { i64, ptr }, ptr %concat.str390, i32 0, i32 0
  store i64 %sum376, ptr %str.build.len.gep391, align 8
  %str.build.data.gep392 = getelementptr inbounds { i64, ptr }, ptr %concat.str390, i32 0, i32 1
  store ptr %concat.buf386, ptr %str.build.data.gep392, align 8
  br label %choice.exit

str_overflow_abort384:                            ; preds = %concat.sum.len378
  %32 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len383
}

define ptr @"fs::auto_rename_path"(ptr %0) #1 {
entry:
  %var.cand = alloca ptr, align 8
  %var.cand_name = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.num = alloca i64, align 8
  %loop.step.95 = alloca i64, align 8
  %loop.idx.95 = alloca i64, align 8
  %"var.cand_path'" = alloca ptr, align 8
  %var.ext_part = alloca ptr, align 8
  %var.base_name = alloca ptr, align 8
  %var.dir_part = alloca ptr, align 8
  %var.full_p = alloca ptr, align 8
  store ptr %0, ptr %var.full_p, align 8
  %var.load = load ptr, ptr %var.full_p, align 8
  %call.res = call ptr @"path::dirname"(ptr %var.load)
  store ptr %call.res, ptr %var.dir_part, align 8
  %var.load1 = load ptr, ptr %var.full_p, align 8
  %call.res2 = call ptr @"path::stem"(ptr %var.load1)
  store ptr %call.res2, ptr %var.base_name, align 8
  %var.load3 = load ptr, ptr %var.full_p, align 8
  %call.res4 = call ptr @"path::ext"(ptr %var.load3)
  store ptr %call.res4, ptr %var.ext_part, align 8
  %var.load5 = load ptr, ptr %var.full_p, align 8
  store ptr %var.load5, ptr %"var.cand_path'", align 8
  store i64 1, ptr %loop.idx.95, align 8
  br label %loop.header.95

loop.header.95:                                   ; preds = %loop.latch.95, %entry
  %counter.load = load i64, ptr %loop.idx.95, align 8
  %loop.cond = icmp slt i64 %counter.load, 1000
  br i1 %loop.cond, label %loop.body.95, label %loop.exit.nat.95

loop.body.95:                                     ; preds = %loop.header.95
  %loop.rel.i = sub i64 %counter.load, 1
  store i64 1, ptr %loop.step.95, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.num, align 8
  %var.load6 = load ptr, ptr %var.base_name, align 8
  %concat.lhs = load i64, ptr @str.5.struct, align 8
  %concat.lhs7 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.95:                                 ; preds = %loop.header.95
  br label %loop.exit.95

loop.latch.95:                                    ; preds = %choice.exit223
  %step.val = load i64, ptr %loop.step.95, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.95, align 8
  br label %loop.header.95

loop.exit.95:                                     ; preds = %choice.then222, %loop.exit.nat.95
  %var.load225 = load ptr, ptr %"var.cand_path'", align 8
  ret ptr %var.load225

str_gen_check:                                    ; preds = %loop.body.95
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.95
  %concat.lhs8 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %concat.rhs9 = load i64, ptr %concat.rhs, align 8
  %concat.rhs10 = and i64 %concat.rhs9, 281474976710655
  %str.tag11 = lshr i64 %concat.rhs9, 48
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
  %concat.rhs18 = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %concat.rhs19 = load ptr, ptr %concat.rhs18, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs7, i64 %concat.rhs10)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len20

str_stale15:                                      ; preds = %str_gen_check13
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok14

concat.sum.len20:                                 ; preds = %str_overflow_abort, %str_ok14
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum21 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf22 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf22, label %str_overflow_abort24, label %concat.tot.len23

str_overflow_abort:                               ; preds = %str_ok14
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len20

concat.tot.len23:                                 ; preds = %str_overflow_abort24, %concat.sum.len20
  %arena.cur25 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 %sum21)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs8, i64 %concat.lhs7, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs19, i64 %concat.rhs10, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur26 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %concat.lhs27 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %concat.lhs28 = load i64, ptr %concat.lhs27, align 8
  %concat.lhs29 = and i64 %concat.lhs28, 281474976710655
  %str.tag30 = lshr i64 %concat.lhs28, 48
  %str.immortal31 = icmp eq i64 %str.tag30, 0
  br i1 %str.immortal31, label %str_ok33, label %str_gen_check32

str_overflow_abort24:                             ; preds = %concat.sum.len20
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len23

str_gen_check32:                                  ; preds = %concat.tot.len23
  %arena.cur35 = call ptr @dva_arena_current()
  %tag.valid36 = call i1 @dva_arena_validate_tag(ptr %arena.cur35, i64 %str.tag30)
  br i1 %tag.valid36, label %str_ok33, label %str_stale34

str_ok33:                                         ; preds = %str_stale34, %str_gen_check32, %concat.tot.len23
  %concat.lhs37 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  %concat.lhs38 = load ptr, ptr %concat.lhs37, align 8
  %concat.rhs39 = load i64, ptr @str.15.struct, align 8
  %concat.rhs40 = and i64 %concat.rhs39, 281474976710655
  %str.tag41 = lshr i64 %concat.rhs39, 48
  %str.immortal42 = icmp eq i64 %str.tag41, 0
  br i1 %str.immortal42, label %str_ok44, label %str_gen_check43

str_stale34:                                      ; preds = %str_gen_check32
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok33

str_gen_check43:                                  ; preds = %str_ok33
  %arena.cur46 = call ptr @dva_arena_current()
  %tag.valid47 = call i1 @dva_arena_validate_tag(ptr %arena.cur46, i64 %str.tag41)
  br i1 %tag.valid47, label %str_ok44, label %str_stale45

str_ok44:                                         ; preds = %str_stale45, %str_gen_check43, %str_ok33
  %concat.rhs48 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.15.struct, i32 0, i32 1), align 8
  %concat.sum.len49 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs29, i64 %concat.rhs40)
  %sum50 = extractvalue { i64, i1 } %concat.sum.len49, 0
  %ovf51 = extractvalue { i64, i1 } %concat.sum.len49, 1
  br i1 %ovf51, label %str_overflow_abort53, label %concat.sum.len52

str_stale45:                                      ; preds = %str_gen_check43
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok44

concat.sum.len52:                                 ; preds = %str_overflow_abort53, %str_ok44
  %concat.tot.len54 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum50, i64 1)
  %sum55 = extractvalue { i64, i1 } %concat.tot.len54, 0
  %ovf56 = extractvalue { i64, i1 } %concat.tot.len54, 1
  br i1 %ovf56, label %str_overflow_abort58, label %concat.tot.len57

str_overflow_abort53:                             ; preds = %str_ok44
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len52

concat.tot.len57:                                 ; preds = %str_overflow_abort58, %concat.sum.len52
  %arena.cur59 = call ptr @dva_arena_current()
  %concat.buf60 = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 %sum55)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf60, ptr align 1 %concat.lhs38, i64 %concat.lhs29, i1 false)
  %concat.mid61 = getelementptr i8, ptr %concat.buf60, i64 %concat.lhs29
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid61, ptr align 1 %concat.rhs48, i64 %concat.rhs40, i1 false)
  %concat.nul62 = getelementptr i8, ptr %concat.buf60, i64 %sum50
  store i8 0, ptr %concat.nul62, align 1
  %arena.cur63 = call ptr @dva_arena_current()
  %concat.str64 = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 16)
  %str.build.len.gep65 = getelementptr inbounds { i64, ptr }, ptr %concat.str64, i32 0, i32 0
  store i64 %sum50, ptr %str.build.len.gep65, align 8
  %str.build.data.gep66 = getelementptr inbounds { i64, ptr }, ptr %concat.str64, i32 0, i32 1
  store ptr %concat.buf60, ptr %str.build.data.gep66, align 8
  %var.load67 = load i64, ptr %var.num, align 8
  %arena.cur68 = call ptr @dva_arena_current()
  %to_str.buf = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 32)
  %to_str.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %to_str.buf, i64 32, ptr @dva_fmt_i64, i64 %var.load67)
  %to_str.len = zext i32 %to_str.n to i64
  %arena.cur69 = call ptr @dva_arena_current()
  %to_str.res = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 16)
  %str.build.len.gep70 = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 0
  store i64 %to_str.len, ptr %str.build.len.gep70, align 8
  %str.build.data.gep71 = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 1
  store ptr %to_str.buf, ptr %str.build.data.gep71, align 8
  %concat.lhs72 = getelementptr inbounds { i64, ptr }, ptr %concat.str64, i32 0, i32 0
  %concat.lhs73 = load i64, ptr %concat.lhs72, align 8
  %concat.lhs74 = and i64 %concat.lhs73, 281474976710655
  %str.tag75 = lshr i64 %concat.lhs73, 48
  %str.immortal76 = icmp eq i64 %str.tag75, 0
  br i1 %str.immortal76, label %str_ok78, label %str_gen_check77

str_overflow_abort58:                             ; preds = %concat.sum.len52
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len57

str_gen_check77:                                  ; preds = %concat.tot.len57
  %arena.cur80 = call ptr @dva_arena_current()
  %tag.valid81 = call i1 @dva_arena_validate_tag(ptr %arena.cur80, i64 %str.tag75)
  br i1 %tag.valid81, label %str_ok78, label %str_stale79

str_ok78:                                         ; preds = %str_stale79, %str_gen_check77, %concat.tot.len57
  %concat.lhs82 = getelementptr inbounds { i64, ptr }, ptr %concat.str64, i32 0, i32 1
  %concat.lhs83 = load ptr, ptr %concat.lhs82, align 8
  %concat.rhs84 = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 0
  %concat.rhs85 = load i64, ptr %concat.rhs84, align 8
  %concat.rhs86 = and i64 %concat.rhs85, 281474976710655
  %str.tag87 = lshr i64 %concat.rhs85, 48
  %str.immortal88 = icmp eq i64 %str.tag87, 0
  br i1 %str.immortal88, label %str_ok90, label %str_gen_check89

str_stale79:                                      ; preds = %str_gen_check77
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok78

str_gen_check89:                                  ; preds = %str_ok78
  %arena.cur92 = call ptr @dva_arena_current()
  %tag.valid93 = call i1 @dva_arena_validate_tag(ptr %arena.cur92, i64 %str.tag87)
  br i1 %tag.valid93, label %str_ok90, label %str_stale91

str_ok90:                                         ; preds = %str_stale91, %str_gen_check89, %str_ok78
  %concat.rhs94 = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 1
  %concat.rhs95 = load ptr, ptr %concat.rhs94, align 8
  %concat.sum.len96 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs74, i64 %concat.rhs86)
  %sum97 = extractvalue { i64, i1 } %concat.sum.len96, 0
  %ovf98 = extractvalue { i64, i1 } %concat.sum.len96, 1
  br i1 %ovf98, label %str_overflow_abort100, label %concat.sum.len99

str_stale91:                                      ; preds = %str_gen_check89
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok90

concat.sum.len99:                                 ; preds = %str_overflow_abort100, %str_ok90
  %concat.tot.len101 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum97, i64 1)
  %sum102 = extractvalue { i64, i1 } %concat.tot.len101, 0
  %ovf103 = extractvalue { i64, i1 } %concat.tot.len101, 1
  br i1 %ovf103, label %str_overflow_abort105, label %concat.tot.len104

str_overflow_abort100:                            ; preds = %str_ok90
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len99

concat.tot.len104:                                ; preds = %str_overflow_abort105, %concat.sum.len99
  %arena.cur106 = call ptr @dva_arena_current()
  %concat.buf107 = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 %sum102)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf107, ptr align 1 %concat.lhs83, i64 %concat.lhs74, i1 false)
  %concat.mid108 = getelementptr i8, ptr %concat.buf107, i64 %concat.lhs74
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid108, ptr align 1 %concat.rhs95, i64 %concat.rhs86, i1 false)
  %concat.nul109 = getelementptr i8, ptr %concat.buf107, i64 %sum97
  store i8 0, ptr %concat.nul109, align 1
  %arena.cur110 = call ptr @dva_arena_current()
  %concat.str111 = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 16)
  %str.build.len.gep112 = getelementptr inbounds { i64, ptr }, ptr %concat.str111, i32 0, i32 0
  store i64 %sum97, ptr %str.build.len.gep112, align 8
  %str.build.data.gep113 = getelementptr inbounds { i64, ptr }, ptr %concat.str111, i32 0, i32 1
  store ptr %concat.buf107, ptr %str.build.data.gep113, align 8
  %concat.lhs114 = getelementptr inbounds { i64, ptr }, ptr %concat.str111, i32 0, i32 0
  %concat.lhs115 = load i64, ptr %concat.lhs114, align 8
  %concat.lhs116 = and i64 %concat.lhs115, 281474976710655
  %str.tag117 = lshr i64 %concat.lhs115, 48
  %str.immortal118 = icmp eq i64 %str.tag117, 0
  br i1 %str.immortal118, label %str_ok120, label %str_gen_check119

str_overflow_abort105:                            ; preds = %concat.sum.len99
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len104

str_gen_check119:                                 ; preds = %concat.tot.len104
  %arena.cur122 = call ptr @dva_arena_current()
  %tag.valid123 = call i1 @dva_arena_validate_tag(ptr %arena.cur122, i64 %str.tag117)
  br i1 %tag.valid123, label %str_ok120, label %str_stale121

str_ok120:                                        ; preds = %str_stale121, %str_gen_check119, %concat.tot.len104
  %concat.lhs124 = getelementptr inbounds { i64, ptr }, ptr %concat.str111, i32 0, i32 1
  %concat.lhs125 = load ptr, ptr %concat.lhs124, align 8
  %concat.rhs126 = load i64, ptr @str.16.struct, align 8
  %concat.rhs127 = and i64 %concat.rhs126, 281474976710655
  %str.tag128 = lshr i64 %concat.rhs126, 48
  %str.immortal129 = icmp eq i64 %str.tag128, 0
  br i1 %str.immortal129, label %str_ok131, label %str_gen_check130

str_stale121:                                     ; preds = %str_gen_check119
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok120

str_gen_check130:                                 ; preds = %str_ok120
  %arena.cur133 = call ptr @dva_arena_current()
  %tag.valid134 = call i1 @dva_arena_validate_tag(ptr %arena.cur133, i64 %str.tag128)
  br i1 %tag.valid134, label %str_ok131, label %str_stale132

str_ok131:                                        ; preds = %str_stale132, %str_gen_check130, %str_ok120
  %concat.rhs135 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %concat.sum.len136 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs116, i64 %concat.rhs127)
  %sum137 = extractvalue { i64, i1 } %concat.sum.len136, 0
  %ovf138 = extractvalue { i64, i1 } %concat.sum.len136, 1
  br i1 %ovf138, label %str_overflow_abort140, label %concat.sum.len139

str_stale132:                                     ; preds = %str_gen_check130
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok131

concat.sum.len139:                                ; preds = %str_overflow_abort140, %str_ok131
  %concat.tot.len141 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum137, i64 1)
  %sum142 = extractvalue { i64, i1 } %concat.tot.len141, 0
  %ovf143 = extractvalue { i64, i1 } %concat.tot.len141, 1
  br i1 %ovf143, label %str_overflow_abort145, label %concat.tot.len144

str_overflow_abort140:                            ; preds = %str_ok131
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len139

concat.tot.len144:                                ; preds = %str_overflow_abort145, %concat.sum.len139
  %arena.cur146 = call ptr @dva_arena_current()
  %concat.buf147 = call ptr @dva_arena_alloc(ptr %arena.cur146, i64 %sum142)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf147, ptr align 1 %concat.lhs125, i64 %concat.lhs116, i1 false)
  %concat.mid148 = getelementptr i8, ptr %concat.buf147, i64 %concat.lhs116
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid148, ptr align 1 %concat.rhs135, i64 %concat.rhs127, i1 false)
  %concat.nul149 = getelementptr i8, ptr %concat.buf147, i64 %sum137
  store i8 0, ptr %concat.nul149, align 1
  %arena.cur150 = call ptr @dva_arena_current()
  %concat.str151 = call ptr @dva_arena_alloc(ptr %arena.cur150, i64 16)
  %str.build.len.gep152 = getelementptr inbounds { i64, ptr }, ptr %concat.str151, i32 0, i32 0
  store i64 %sum137, ptr %str.build.len.gep152, align 8
  %str.build.data.gep153 = getelementptr inbounds { i64, ptr }, ptr %concat.str151, i32 0, i32 1
  store ptr %concat.buf147, ptr %str.build.data.gep153, align 8
  %var.load154 = load ptr, ptr %var.ext_part, align 8
  %concat.lhs155 = getelementptr inbounds { i64, ptr }, ptr %concat.str151, i32 0, i32 0
  %concat.lhs156 = load i64, ptr %concat.lhs155, align 8
  %concat.lhs157 = and i64 %concat.lhs156, 281474976710655
  %str.tag158 = lshr i64 %concat.lhs156, 48
  %str.immortal159 = icmp eq i64 %str.tag158, 0
  br i1 %str.immortal159, label %str_ok161, label %str_gen_check160

str_overflow_abort145:                            ; preds = %concat.sum.len139
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len144

str_gen_check160:                                 ; preds = %concat.tot.len144
  %arena.cur163 = call ptr @dva_arena_current()
  %tag.valid164 = call i1 @dva_arena_validate_tag(ptr %arena.cur163, i64 %str.tag158)
  br i1 %tag.valid164, label %str_ok161, label %str_stale162

str_ok161:                                        ; preds = %str_stale162, %str_gen_check160, %concat.tot.len144
  %concat.lhs165 = getelementptr inbounds { i64, ptr }, ptr %concat.str151, i32 0, i32 1
  %concat.lhs166 = load ptr, ptr %concat.lhs165, align 8
  %concat.rhs167 = getelementptr inbounds { i64, ptr }, ptr %var.load154, i32 0, i32 0
  %concat.rhs168 = load i64, ptr %concat.rhs167, align 8
  %concat.rhs169 = and i64 %concat.rhs168, 281474976710655
  %str.tag170 = lshr i64 %concat.rhs168, 48
  %str.immortal171 = icmp eq i64 %str.tag170, 0
  br i1 %str.immortal171, label %str_ok173, label %str_gen_check172

str_stale162:                                     ; preds = %str_gen_check160
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok161

str_gen_check172:                                 ; preds = %str_ok161
  %arena.cur175 = call ptr @dva_arena_current()
  %tag.valid176 = call i1 @dva_arena_validate_tag(ptr %arena.cur175, i64 %str.tag170)
  br i1 %tag.valid176, label %str_ok173, label %str_stale174

str_ok173:                                        ; preds = %str_stale174, %str_gen_check172, %str_ok161
  %concat.rhs177 = getelementptr inbounds { i64, ptr }, ptr %var.load154, i32 0, i32 1
  %concat.rhs178 = load ptr, ptr %concat.rhs177, align 8
  %concat.sum.len179 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs157, i64 %concat.rhs169)
  %sum180 = extractvalue { i64, i1 } %concat.sum.len179, 0
  %ovf181 = extractvalue { i64, i1 } %concat.sum.len179, 1
  br i1 %ovf181, label %str_overflow_abort183, label %concat.sum.len182

str_stale174:                                     ; preds = %str_gen_check172
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok173

concat.sum.len182:                                ; preds = %str_overflow_abort183, %str_ok173
  %concat.tot.len184 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum180, i64 1)
  %sum185 = extractvalue { i64, i1 } %concat.tot.len184, 0
  %ovf186 = extractvalue { i64, i1 } %concat.tot.len184, 1
  br i1 %ovf186, label %str_overflow_abort188, label %concat.tot.len187

str_overflow_abort183:                            ; preds = %str_ok173
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len182

concat.tot.len187:                                ; preds = %str_overflow_abort188, %concat.sum.len182
  %arena.cur189 = call ptr @dva_arena_current()
  %concat.buf190 = call ptr @dva_arena_alloc(ptr %arena.cur189, i64 %sum185)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf190, ptr align 1 %concat.lhs166, i64 %concat.lhs157, i1 false)
  %concat.mid191 = getelementptr i8, ptr %concat.buf190, i64 %concat.lhs157
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid191, ptr align 1 %concat.rhs178, i64 %concat.rhs169, i1 false)
  %concat.nul192 = getelementptr i8, ptr %concat.buf190, i64 %sum180
  store i8 0, ptr %concat.nul192, align 1
  %arena.cur193 = call ptr @dva_arena_current()
  %concat.str194 = call ptr @dva_arena_alloc(ptr %arena.cur193, i64 16)
  %str.build.len.gep195 = getelementptr inbounds { i64, ptr }, ptr %concat.str194, i32 0, i32 0
  store i64 %sum180, ptr %str.build.len.gep195, align 8
  %str.build.data.gep196 = getelementptr inbounds { i64, ptr }, ptr %concat.str194, i32 0, i32 1
  store ptr %concat.buf190, ptr %str.build.data.gep196, align 8
  store ptr %concat.str194, ptr %var.cand_name, align 8
  %var.load197 = load ptr, ptr %var.dir_part, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load197, i32 0, i32 0
  %eq.lhs.len198 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len199 = and i64 %eq.lhs.len198, 281474976710655
  %str.tag200 = lshr i64 %eq.lhs.len198, 48
  %str.immortal201 = icmp eq i64 %str.tag200, 0
  br i1 %str.immortal201, label %str_ok203, label %str_gen_check202

str_overflow_abort188:                            ; preds = %concat.sum.len182
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len187

str_gen_check202:                                 ; preds = %concat.tot.len187
  %arena.cur205 = call ptr @dva_arena_current()
  %tag.valid206 = call i1 @dva_arena_validate_tag(ptr %arena.cur205, i64 %str.tag200)
  br i1 %tag.valid206, label %str_ok203, label %str_stale204

str_ok203:                                        ; preds = %str_stale204, %str_gen_check202, %concat.tot.len187
  %eq.rhs.len = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len207 = and i64 %eq.rhs.len, 281474976710655
  %str.tag208 = lshr i64 %eq.rhs.len, 48
  %str.immortal209 = icmp eq i64 %str.tag208, 0
  br i1 %str.immortal209, label %str_ok211, label %str_gen_check210

str_stale204:                                     ; preds = %str_gen_check202
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok203

str_gen_check210:                                 ; preds = %str_ok203
  %arena.cur213 = call ptr @dva_arena_current()
  %tag.valid214 = call i1 @dva_arena_validate_tag(ptr %arena.cur213, i64 %str.tag208)
  br i1 %tag.valid214, label %str_ok211, label %str_stale212

str_ok211:                                        ; preds = %str_stale212, %str_gen_check210, %str_ok203
  %eq.len = icmp eq i64 %eq.lhs.len199, %eq.rhs.len207
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale212:                                     ; preds = %str_gen_check210
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok211

str.eq.then:                                      ; preds = %str_ok211
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load197, i32 0, i32 1
  %eq.lhs.data215 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data215, ptr %eq.rhs.data, i64 %eq.lhs.len199)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok211
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.merge
  %var.load216 = load ptr, ptr %var.dir_part, align 8
  %var.load217 = load ptr, ptr %var.cand_name, align 8
  %call.res218 = call ptr @"path::join"(ptr %var.load216, ptr %var.load217)
  br label %choice.exit

choice.else:                                      ; preds = %str.eq.merge
  %var.load219 = load ptr, ptr %var.cand_name, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %call.res218, %choice.then ], [ %var.load219, %choice.else ]
  store ptr %choice.res, ptr %var.cand, align 8
  %var.load220 = load ptr, ptr %var.cand, align 8
  %call.res221 = call i1 @"fs::exists"(ptr %var.load220)
  %nottmp = xor i1 %call.res221, true
  br i1 %nottmp, label %choice.then222, label %choice.exit223

choice.then222:                                   ; preds = %choice.exit
  %var.load224 = load ptr, ptr %var.cand, align 8
  store ptr %var.load224, ptr %"var.cand_path'", align 8
  br label %loop.exit.95

choice.exit223:                                   ; preds = %choice.exit
  br label %loop.latch.95
}

declare ptr @"path::dirname"(ptr) #1

declare ptr @"path::stem"(ptr) #1

define i64 @"fs::cmp_entries"(ptr %0, ptr %1, i64 %2, i1 %3) #1 {
entry:
  %var.cmp_ext = alloca i64, align 8
  %var.ext2 = alloca ptr, align 8
  %var.ext1 = alloca ptr, align 8
  %"var.res'" = alloca i64, align 8
  %var.rev = alloca i1, align 1
  %var.mode = alloca i64, align 8
  %var.e2 = alloca ptr, align 8
  %var.e1 = alloca ptr, align 8
  store ptr %0, ptr %var.e1, align 8
  store ptr %1, ptr %var.e2, align 8
  store i64 %2, ptr %var.mode, align 8
  store i1 %3, ptr %var.rev, align 1
  store i64 0, ptr %"var.res'", align 8
  %var.load = load i64, ptr %var.mode, align 8
  %val.match = icmp eq i64 %var.load, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next66, %choice.exit83, %choice.exit45, %choice.exit14, %choice.case
  %var.load100 = load i1, ptr %var.rev, align 1
  br i1 %var.load100, label %choice.then101, label %choice.else102

choice.case:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.e1, align 8
  %fld.gep = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load2 = load ptr, ptr %var.e2, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load2, i32 0, i32 0
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %call.res = call i64 @"str::cmp"(ptr %fld.load, ptr %fld.load4)
  store i64 %call.res, ptr %"var.res'", align 8
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %val.match7 = icmp eq i64 %var.load, 1
  br i1 %val.match7, label %choice.case5, label %choice.next6

choice.case5:                                     ; preds = %choice.next
  %var.load8 = load ptr, ptr %var.e1, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load8, i32 0, i32 3
  %fld.load10 = load i64, ptr %fld.gep9, align 8
  %var.load11 = load ptr, ptr %var.e2, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load11, i32 0, i32 3
  %fld.load13 = load i64, ptr %fld.gep12, align 8
  %cmptmp = icmp slt i64 %fld.load10, %fld.load13
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.next6:                                     ; preds = %choice.next
  %val.match35 = icmp eq i64 %var.load, 2
  br i1 %val.match35, label %choice.case33, label %choice.next34

choice.then:                                      ; preds = %choice.case5
  br label %choice.exit14

choice.else:                                      ; preds = %choice.case5
  %var.load15 = load ptr, ptr %var.e1, align 8
  %fld.gep16 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load15, i32 0, i32 3
  %fld.load17 = load i64, ptr %fld.gep16, align 8
  %var.load18 = load ptr, ptr %var.e2, align 8
  %fld.gep19 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load18, i32 0, i32 3
  %fld.load20 = load i64, ptr %fld.gep19, align 8
  %cmptmp21 = icmp sgt i64 %fld.load17, %fld.load20
  br i1 %cmptmp21, label %choice.then22, label %choice.else23

choice.exit14:                                    ; preds = %choice.exit24, %choice.then
  %choice.res32 = phi i64 [ -1, %choice.then ], [ %choice.res, %choice.exit24 ]
  store i64 %choice.res32, ptr %"var.res'", align 8
  br label %choice.exit

choice.then22:                                    ; preds = %choice.else
  br label %choice.exit24

choice.else23:                                    ; preds = %choice.else
  %var.load25 = load ptr, ptr %var.e1, align 8
  %fld.gep26 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load25, i32 0, i32 0
  %fld.load27 = load ptr, ptr %fld.gep26, align 8
  %var.load28 = load ptr, ptr %var.e2, align 8
  %fld.gep29 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load28, i32 0, i32 0
  %fld.load30 = load ptr, ptr %fld.gep29, align 8
  %call.res31 = call i64 @"str::cmp"(ptr %fld.load27, ptr %fld.load30)
  br label %choice.exit24

choice.exit24:                                    ; preds = %choice.else23, %choice.then22
  %choice.res = phi i64 [ 1, %choice.then22 ], [ %call.res31, %choice.else23 ]
  br label %choice.exit14

choice.case33:                                    ; preds = %choice.next6
  %var.load36 = load ptr, ptr %var.e1, align 8
  %fld.gep37 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load36, i32 0, i32 6
  %fld.load38 = load i64, ptr %fld.gep37, align 8
  %var.load39 = load ptr, ptr %var.e2, align 8
  %fld.gep40 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load39, i32 0, i32 6
  %fld.load41 = load i64, ptr %fld.gep40, align 8
  %cmptmp42 = icmp slt i64 %fld.load38, %fld.load41
  br i1 %cmptmp42, label %choice.then43, label %choice.else44

choice.next34:                                    ; preds = %choice.next6
  %val.match67 = icmp eq i64 %var.load, 3
  br i1 %val.match67, label %choice.case65, label %choice.next66

choice.then43:                                    ; preds = %choice.case33
  br label %choice.exit45

choice.else44:                                    ; preds = %choice.case33
  %var.load46 = load ptr, ptr %var.e1, align 8
  %fld.gep47 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load46, i32 0, i32 6
  %fld.load48 = load i64, ptr %fld.gep47, align 8
  %var.load49 = load ptr, ptr %var.e2, align 8
  %fld.gep50 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load49, i32 0, i32 6
  %fld.load51 = load i64, ptr %fld.gep50, align 8
  %cmptmp52 = icmp sgt i64 %fld.load48, %fld.load51
  br i1 %cmptmp52, label %choice.then53, label %choice.else54

choice.exit45:                                    ; preds = %choice.exit55, %choice.then43
  %choice.res64 = phi i64 [ -1, %choice.then43 ], [ %choice.res63, %choice.exit55 ]
  store i64 %choice.res64, ptr %"var.res'", align 8
  br label %choice.exit

choice.then53:                                    ; preds = %choice.else44
  br label %choice.exit55

choice.else54:                                    ; preds = %choice.else44
  %var.load56 = load ptr, ptr %var.e1, align 8
  %fld.gep57 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load56, i32 0, i32 0
  %fld.load58 = load ptr, ptr %fld.gep57, align 8
  %var.load59 = load ptr, ptr %var.e2, align 8
  %fld.gep60 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load59, i32 0, i32 0
  %fld.load61 = load ptr, ptr %fld.gep60, align 8
  %call.res62 = call i64 @"str::cmp"(ptr %fld.load58, ptr %fld.load61)
  br label %choice.exit55

choice.exit55:                                    ; preds = %choice.else54, %choice.then53
  %choice.res63 = phi i64 [ 1, %choice.then53 ], [ %call.res62, %choice.else54 ]
  br label %choice.exit45

choice.case65:                                    ; preds = %choice.next34
  %var.load68 = load ptr, ptr %var.e1, align 8
  %fld.gep69 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load68, i32 0, i32 0
  %fld.load70 = load ptr, ptr %fld.gep69, align 8
  %call.res71 = call ptr @"fs::ext"(ptr %fld.load70)
  store ptr %call.res71, ptr %var.ext1, align 8
  %var.load72 = load ptr, ptr %var.e2, align 8
  %fld.gep73 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load72, i32 0, i32 0
  %fld.load74 = load ptr, ptr %fld.gep73, align 8
  %call.res75 = call ptr @"fs::ext"(ptr %fld.load74)
  store ptr %call.res75, ptr %var.ext2, align 8
  %var.load76 = load ptr, ptr %var.ext1, align 8
  %var.load77 = load ptr, ptr %var.ext2, align 8
  %call.res78 = call i64 @"str::cmp"(ptr %var.load76, ptr %var.load77)
  store i64 %call.res78, ptr %var.cmp_ext, align 8
  %var.load79 = load i64, ptr %var.cmp_ext, align 8
  %cmptmp80 = icmp ne i64 %var.load79, 0
  br i1 %cmptmp80, label %choice.then81, label %choice.else82

choice.next66:                                    ; preds = %choice.next34
  %var.load93 = load ptr, ptr %var.e1, align 8
  %fld.gep94 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load93, i32 0, i32 0
  %fld.load95 = load ptr, ptr %fld.gep94, align 8
  %var.load96 = load ptr, ptr %var.e2, align 8
  %fld.gep97 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load96, i32 0, i32 0
  %fld.load98 = load ptr, ptr %fld.gep97, align 8
  %call.res99 = call i64 @"str::cmp"(ptr %fld.load95, ptr %fld.load98)
  store i64 %call.res99, ptr %"var.res'", align 8
  br label %choice.exit

choice.then81:                                    ; preds = %choice.case65
  %var.load84 = load i64, ptr %var.cmp_ext, align 8
  br label %choice.exit83

choice.else82:                                    ; preds = %choice.case65
  %var.load85 = load ptr, ptr %var.e1, align 8
  %fld.gep86 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load85, i32 0, i32 0
  %fld.load87 = load ptr, ptr %fld.gep86, align 8
  %var.load88 = load ptr, ptr %var.e2, align 8
  %fld.gep89 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %var.load88, i32 0, i32 0
  %fld.load90 = load ptr, ptr %fld.gep89, align 8
  %call.res91 = call i64 @"str::cmp"(ptr %fld.load87, ptr %fld.load90)
  br label %choice.exit83

choice.exit83:                                    ; preds = %choice.else82, %choice.then81
  %choice.res92 = phi i64 [ %var.load84, %choice.then81 ], [ %call.res91, %choice.else82 ]
  store i64 %choice.res92, ptr %"var.res'", align 8
  br label %choice.exit

choice.then101:                                   ; preds = %choice.exit
  %var.load104 = load i64, ptr %"var.res'", align 8
  %negtmp = sub i64 0, %var.load104
  br label %choice.exit103

choice.else102:                                   ; preds = %choice.exit
  %var.load105 = load i64, ptr %"var.res'", align 8
  br label %choice.exit103

choice.exit103:                                   ; preds = %choice.else102, %choice.then101
  %choice.res106 = phi i64 [ %negtmp, %choice.then101 ], [ %var.load105, %choice.else102 ]
  ret i64 %choice.res106
}

declare i64 @"str::cmp"(ptr, ptr) #1

define ptr @"fs::list_dir_simple"(ptr %0) #1 {
entry:
  %var.dir_path = alloca ptr, align 8
  store ptr %0, ptr %var.dir_path, align 8
  %var.load = load ptr, ptr %var.dir_path, align 8
  %call.res = call ptr @"fs::list_dir"(ptr %var.load, i1 false, i64 0, i1 false)
  ret ptr %call.res
}

define ptr @"fs::list_dir"(ptr %0, i1 %1, i64 %2, i1 %3) #1 {
entry:
  %var._860 = alloca ptr, align 8
  %var._i859 = alloca i64, align 8
  %var.file_item = alloca ptr, align 8
  %loop.step.108 = alloca i64, align 8
  %loop.idx.108 = alloca i64, align 8
  %var._804 = alloca ptr, align 8
  %var._i803 = alloca i64, align 8
  %var.dir_item = alloca ptr, align 8
  %loop.step.107 = alloca i64, align 8
  %loop.idx.107 = alloca i64, align 8
  %var.f2 = alloca ptr, align 8
  %var.f1 = alloca ptr, align 8
  %var._457 = alloca i64, align 8
  %var._i456 = alloca i64, align 8
  %var.j450 = alloca i64, align 8
  %loop.step.104 = alloca i64, align 8
  %loop.idx.104 = alloca i64, align 8
  %var._447 = alloca i64, align 8
  %var._i446 = alloca i64, align 8
  %loop.step.103 = alloca i64, align 8
  %loop.idx.103 = alloca i64, align 8
  %var.nf = alloca i64, align 8
  %var.d2 = alloca ptr, align 8
  %var.d1 = alloca ptr, align 8
  %var._167 = alloca i64, align 8
  %var._i166 = alloca i64, align 8
  %var.j = alloca i64, align 8
  %loop.step.100 = alloca i64, align 8
  %loop.idx.100 = alloca i64, align 8
  %var._161 = alloca i64, align 8
  %var._i160 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.99 = alloca i64, align 8
  %loop.idx.99 = alloca i64, align 8
  %var.nd = alloca i64, align 8
  %var.entry = alloca ptr, align 8
  %var.perms = alloca ptr, align 8
  %var.fmt_sz = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var._55 = alloca ptr, align 8
  %"var.mode'" = alloca i64, align 8
  %"var.mtime'" = alloca i64, align 8
  %"var.size'" = alloca i64, align 8
  %"var.is_x'" = alloca i1, align 1
  %"var.is_d'" = alloca i1, align 1
  %var.meta = alloca ptr, align 8
  %var.full_path = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.96 = alloca i64, align 8
  %loop.idx.96 = alloca i64, align 8
  %var.file_list = alloca ptr, align 8
  %var.dirs = alloca ptr, align 8
  %var.entries = alloca ptr, align 8
  %var.res = alloca ptr, align 8
  %var.sort_rev = alloca i1, align 1
  %var.sort_mode = alloca i64, align 8
  %var.show_hidden = alloca i1, align 1
  %var.dir_path = alloca ptr, align 8
  store ptr %0, ptr %var.dir_path, align 8
  store i1 %1, ptr %var.show_hidden, align 1
  store i64 %2, ptr %var.sort_mode, align 8
  store i1 %3, ptr %var.sort_rev, align 1
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
  %var.load = load ptr, ptr %var.dir_path, align 8
  %call.res = call ptr @"fs::read_dir"(ptr %var.load)
  store ptr %call.res, ptr %var.entries, align 8
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
  store ptr %a.new3, ptr %var.dirs, align 8
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
  store ptr %a.new10, ptr %var.file_list, align 8
  %var.load16 = load ptr, ptr %var.entries, align 8
  %a.load = load ptr, ptr %var.entries, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
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
  store ptr %a.create18, ptr %var.entries, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.entries, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len24 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data25 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.96, align 8
  br label %loop.header.96

loop.header.96:                                   ; preds = %loop.latch.96, %a.after
  %counter.load = load i64, ptr %loop.idx.96, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len24
  br i1 %loop.cond, label %loop.body.96, label %loop.exit.nat.96

loop.body.96:                                     ; preds = %loop.header.96
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.96, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data25, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load26 = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %var.load26, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.name, align 8
  %var.load27 = load i1, ptr %var.show_hidden, align 1
  %nottmp = xor i1 %var.load27, true
  br i1 %nottmp, label %and.97.then, label %and.97.else

loop.exit.nat.96:                                 ; preds = %loop.header.96
  br label %loop.exit.96

loop.latch.96:                                    ; preds = %choice.exit95, %choice.then
  %step.val = load i64, ptr %loop.step.96, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.96, align 8
  br label %loop.header.96

loop.exit.96:                                     ; preds = %loop.exit.nat.96
  %var.load142 = load ptr, ptr %var.dirs, align 8
  %a.load143 = load ptr, ptr %var.dirs, align 8
  %a.null144 = icmp eq ptr %a.load143, null
  br i1 %a.null144, label %a.create145, label %a.after146

and.97.then:                                      ; preds = %loop.body.96
  %var.load28 = load ptr, ptr %var.name, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %str.len.query29 = load i64, ptr %str.len.query, align 8
  %str.len.query30 = and i64 %str.len.query29, 281474976710655
  %str.tag = lshr i64 %str.len.query29, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

and.97.else:                                      ; preds = %loop.body.96
  br label %and.97.exit

and.97.exit:                                      ; preds = %and.97.else, %str_ok
  %and.97.phi = phi i1 [ %cmptmp, %str_ok ], [ %nottmp, %and.97.else ]
  br i1 %and.97.phi, label %and.98.then, label %and.98.else

str_gen_check:                                    ; preds = %and.97.then
  %arena.cur31 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur31, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %and.97.then
  %cmptmp = icmp sgt i64 %str.len.query30, 0
  br label %and.97.exit

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.98.then:                                      ; preds = %and.97.exit
  %var.load32 = load ptr, ptr %var.name, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 0
  %s.read.len33 = load i64, ptr %s.read.len, align 8
  %s.read.len34 = and i64 %s.read.len33, 281474976710655
  %str.tag35 = lshr i64 %s.read.len33, 48
  %str.immortal36 = icmp eq i64 %str.tag35, 0
  br i1 %str.immortal36, label %str_ok38, label %str_gen_check37

and.98.else:                                      ; preds = %and.97.exit
  br label %and.98.exit

and.98.exit:                                      ; preds = %and.98.else, %idx_ok
  %and.98.phi = phi i1 [ %cmptmp43, %idx_ok ], [ %and.97.phi, %and.98.else ]
  br i1 %and.98.phi, label %choice.then, label %choice.exit

str_gen_check37:                                  ; preds = %and.98.then
  %arena.cur40 = call ptr @dva_arena_current()
  %tag.valid41 = call i1 @dva_arena_validate_tag(ptr %arena.cur40, i64 %str.tag35)
  br i1 %tag.valid41, label %str_ok38, label %str_stale39

str_ok38:                                         ; preds = %str_stale39, %str_gen_check37, %and.98.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 1
  %s.read.data42 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

str_stale39:                                      ; preds = %str_gen_check37
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok38

idx_big_check:                                    ; preds = %str_ok38
  %idx.big = icmp sge i64 0, %s.read.len34
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data42, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp43 = icmp eq i64 %s.byte.val, 46
  br label %and.98.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok38
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %and.98.exit
  br label %loop.latch.96

choice.exit:                                      ; preds = %and.98.exit
  %var.load44 = load ptr, ptr %var.dir_path, align 8
  %var.load45 = load ptr, ptr %var.name, align 8
  %call.res46 = call ptr @"fs::join"(ptr %var.load44, ptr %var.load45)
  store ptr %call.res46, ptr %var.full_path, align 8
  %var.load47 = load ptr, ptr %var.full_path, align 8
  %call.res48 = call ptr @"fs::stat"(ptr %var.load47)
  store ptr %call.res48, ptr %var.meta, align 8
  %var.load49 = load ptr, ptr %var.e, align 8
  %fld.gep50 = getelementptr inbounds { ptr, i1, i1, i1 }, ptr %var.load49, i32 0, i32 1
  %fld.load51 = load i1, ptr %fld.gep50, align 1
  store i1 %fld.load51, ptr %"var.is_d'", align 1
  store i1 false, ptr %"var.is_x'", align 1
  store i64 0, ptr %"var.size'", align 8
  store i64 0, ptr %"var.mtime'", align 8
  store i64 0, ptr %"var.mode'", align 8
  %var.load52 = load ptr, ptr %var.meta, align 8
  %niche.ne.null = icmp ne ptr %var.load52, null
  br i1 %niche.ne.null, label %choice.then53, label %choice.exit54

choice.then53:                                    ; preds = %choice.exit
  store ptr %var.load52, ptr %var._55, align 8
  store ptr %var.load52, ptr %var.m, align 8
  %var.load56 = load ptr, ptr %var.m, align 8
  %fld.gep57 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load56, i32 0, i32 0
  %fld.load58 = load i64, ptr %fld.gep57, align 8
  store i64 %fld.load58, ptr %"var.size'", align 8
  %var.load59 = load ptr, ptr %var.m, align 8
  %fld.gep60 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load59, i32 0, i32 2
  %fld.load61 = load i64, ptr %fld.gep60, align 8
  store i64 %fld.load61, ptr %"var.mtime'", align 8
  %var.load62 = load ptr, ptr %var.m, align 8
  %fld.gep63 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load62, i32 0, i32 1
  %fld.load64 = load i64, ptr %fld.gep63, align 8
  store i64 %fld.load64, ptr %"var.mode'", align 8
  %var.load65 = load ptr, ptr %var.m, align 8
  %fld.gep66 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load65, i32 0, i32 5
  %fld.load67 = load i1, ptr %fld.gep66, align 1
  store i1 %fld.load67, ptr %"var.is_d'", align 1
  %var.load68 = load ptr, ptr %var.m, align 8
  %fld.gep69 = getelementptr inbounds { i64, i64, i64, i64, i64, i1, i1, i1, i1 }, ptr %var.load68, i32 0, i32 8
  %fld.load70 = load i1, ptr %fld.gep69, align 1
  store i1 %fld.load70, ptr %"var.is_x'", align 1
  br label %choice.exit54

choice.exit54:                                    ; preds = %choice.then53, %choice.exit
  %var.load71 = load i64, ptr %"var.size'", align 8
  %var.load72 = load i1, ptr %"var.is_d'", align 1
  %call.res73 = call ptr @"fs::format_size"(i64 %var.load71, i1 %var.load72)
  store ptr %call.res73, ptr %var.fmt_sz, align 8
  %var.load74 = load i64, ptr %"var.mode'", align 8
  %var.load75 = load i1, ptr %"var.is_d'", align 1
  %call.res76 = call ptr @"fs::format_perms"(i64 %var.load74, i1 %var.load75)
  store ptr %call.res76, ptr %var.perms, align 8
  %var.load77 = load ptr, ptr %var.name, align 8
  %var.load78 = load i1, ptr %"var.is_d'", align 1
  %var.load79 = load i1, ptr %"var.is_x'", align 1
  %var.load80 = load i64, ptr %"var.size'", align 8
  %var.load81 = load ptr, ptr %var.fmt_sz, align 8
  %var.load82 = load ptr, ptr %var.perms, align 8
  %var.load83 = load i64, ptr %"var.mtime'", align 8
  %var.load84 = load i64, ptr %"var.mode'", align 8
  %arena.cur85 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 ptrtoint (ptr getelementptr ({ ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load77, ptr %rec.fld, align 8
  %rec.fld86 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i1 %var.load78, ptr %rec.fld86, align 1
  %rec.fld87 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i1 %var.load79, ptr %rec.fld87, align 1
  %rec.fld88 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load80, ptr %rec.fld88, align 8
  %rec.fld89 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store ptr %var.load81, ptr %rec.fld89, align 8
  %rec.fld90 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store ptr %var.load82, ptr %rec.fld90, align 8
  %rec.fld91 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 6
  store i64 %var.load83, ptr %rec.fld91, align 8
  %rec.fld92 = getelementptr inbounds { ptr, i1, i1, i64, ptr, ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 7
  store i64 %var.load84, ptr %rec.fld92, align 8
  store ptr %rec.alloc, ptr %var.entry, align 8
  %var.load93 = load i1, ptr %"var.is_d'", align 1
  br i1 %var.load93, label %choice.then94, label %choice.else

choice.then94:                                    ; preds = %choice.exit54
  %var.load96 = load ptr, ptr %var.entry, align 8
  %a.load97 = load ptr, ptr %var.dirs, align 8
  %a.null98 = icmp eq ptr %a.load97, null
  br i1 %a.null98, label %a.create99, label %a.after100

choice.else:                                      ; preds = %choice.exit54
  %var.load113 = load ptr, ptr %var.entry, align 8
  %a.load114 = load ptr, ptr %var.file_list, align 8
  %a.null115 = icmp eq ptr %a.load114, null
  br i1 %a.null115, label %a.create116, label %a.after117

choice.exit95:                                    ; preds = %a.store128, %a.store
  br label %loop.latch.96

a.create99:                                       ; preds = %choice.then94
  %arena.cur101 = call ptr @dva_arena_current()
  %a.create102 = call ptr @dva_arena_alloc(ptr %arena.cur101, i64 24)
  %arena.cur103 = call ptr @dva_arena_current()
  %a.buf104 = call ptr @dva_arena_alloc(ptr %arena.cur103, i64 128)
  %a.len.gep105 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create102, i32 0, i32 0
  store i64 0, ptr %a.len.gep105, align 8
  %a.data.gep106 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create102, i32 0, i32 1
  store ptr %a.buf104, ptr %a.data.gep106, align 8
  %a.cap.gep107 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create102, i32 0, i32 2
  store i64 16, ptr %a.cap.gep107, align 8
  store ptr %a.create102, ptr %var.dirs, align 8
  br label %a.after100

a.after100:                                       ; preds = %a.create99, %choice.then94
  %a.load2108 = load ptr, ptr %var.dirs, align 8
  br label %a.check

a.check:                                          ; preds = %a.after100
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2108, i32 0, i32 0
  %a.len109 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2108, i32 0, i32 2
  %a.cap110 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len109, %a.cap110
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2108)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2108, i32 0, i32 1
  %a.cur.data111 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2108, i32 0, i32 0
  %a.cur.len112 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data111, i64 %a.cur.len112
  %slot.p2i = ptrtoint ptr %var.load96 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len112, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2108, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit95

a.create116:                                      ; preds = %choice.else
  %arena.cur118 = call ptr @dva_arena_current()
  %a.create119 = call ptr @dva_arena_alloc(ptr %arena.cur118, i64 24)
  %arena.cur120 = call ptr @dva_arena_current()
  %a.buf121 = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 128)
  %a.len.gep122 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create119, i32 0, i32 0
  store i64 0, ptr %a.len.gep122, align 8
  %a.data.gep123 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create119, i32 0, i32 1
  store ptr %a.buf121, ptr %a.data.gep123, align 8
  %a.cap.gep124 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create119, i32 0, i32 2
  store i64 16, ptr %a.cap.gep124, align 8
  store ptr %a.create119, ptr %var.file_list, align 8
  br label %a.after117

a.after117:                                       ; preds = %a.create116, %choice.else
  %a.load2125 = load ptr, ptr %var.file_list, align 8
  br label %a.check126

a.check126:                                       ; preds = %a.after117
  %a.len129 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2125, i32 0, i32 0
  %a.len130 = load i64, ptr %a.len129, align 8
  %a.cap131 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2125, i32 0, i32 2
  %a.cap132 = load i64, ptr %a.cap131, align 8
  %a.needs.grow133 = icmp eq i64 %a.len130, %a.cap132
  br i1 %a.needs.grow133, label %a.grow127, label %a.store128

a.grow127:                                        ; preds = %a.check126
  call void @dva_array_grow(ptr %a.load2125)
  br label %a.store128

a.store128:                                       ; preds = %a.grow127, %a.check126
  %a.cur.data134 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2125, i32 0, i32 1
  %a.cur.data135 = load ptr, ptr %a.cur.data134, align 8
  %a.cur.len136 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2125, i32 0, i32 0
  %a.cur.len137 = load i64, ptr %a.cur.len136, align 8
  %a.elem.gep138 = getelementptr i64, ptr %a.cur.data135, i64 %a.cur.len137
  %slot.p2i139 = ptrtoint ptr %var.load113 to i64
  store i64 %slot.p2i139, ptr %a.elem.gep138, align 8
  %a.next.len140 = add i64 %a.cur.len137, 1
  %b.len.gep141 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2125, i32 0, i32 0
  store i64 %a.next.len140, ptr %b.len.gep141, align 8
  br label %choice.exit95

a.create145:                                      ; preds = %loop.exit.96
  %arena.cur147 = call ptr @dva_arena_current()
  %a.create148 = call ptr @dva_arena_alloc(ptr %arena.cur147, i64 24)
  %arena.cur149 = call ptr @dva_arena_current()
  %a.buf150 = call ptr @dva_arena_alloc(ptr %arena.cur149, i64 128)
  %a.len.gep151 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create148, i32 0, i32 0
  store i64 0, ptr %a.len.gep151, align 8
  %a.data.gep152 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create148, i32 0, i32 1
  store ptr %a.buf150, ptr %a.data.gep152, align 8
  %a.cap.gep153 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create148, i32 0, i32 2
  store i64 16, ptr %a.cap.gep153, align 8
  store ptr %a.create148, ptr %var.dirs, align 8
  br label %a.after146

a.after146:                                       ; preds = %a.create145, %loop.exit.96
  %a.load2154 = load ptr, ptr %var.dirs, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2154, i32 0, i32 0
  %a.len.query155 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query155, ptr %var.nd, align 8
  %var.load156 = load i64, ptr %var.nd, align 8
  store i64 0, ptr %loop.idx.99, align 8
  br label %loop.header.99

loop.header.99:                                   ; preds = %loop.latch.99, %a.after146
  %counter.load157 = load i64, ptr %loop.idx.99, align 8
  %loop.cond158 = icmp slt i64 %counter.load157, %var.load156
  br i1 %loop.cond158, label %loop.body.99, label %loop.exit.nat.99

loop.body.99:                                     ; preds = %loop.header.99
  %loop.rel.i159 = sub i64 %counter.load157, 0
  store i64 1, ptr %loop.step.99, align 8
  store i64 %loop.rel.i159, ptr %var._i160, align 8
  store i64 %counter.load157, ptr %var._161, align 8
  store i64 %counter.load157, ptr %var.i, align 8
  %var.load162 = load i64, ptr %var.nd, align 8
  %subtmp = sub i64 %var.load162, 1
  store i64 0, ptr %loop.idx.100, align 8
  %cycle.prev.u = load i64, ptr %var._161, align 8
  %cycle.prev.i = load i64, ptr %var._i160, align 8
  br label %loop.header.100

loop.exit.nat.99:                                 ; preds = %loop.header.99
  br label %loop.exit.99

loop.latch.99:                                    ; preds = %loop.exit.100
  %step.val425 = load i64, ptr %loop.step.99, align 8
  %loop.next426 = add i64 %counter.load157, %step.val425
  store i64 %loop.next426, ptr %loop.idx.99, align 8
  br label %loop.header.99

loop.exit.99:                                     ; preds = %loop.exit.nat.99
  %var.load427 = load ptr, ptr %var.file_list, align 8
  %a.load428 = load ptr, ptr %var.file_list, align 8
  %a.null429 = icmp eq ptr %a.load428, null
  br i1 %a.null429, label %a.create430, label %a.after431

loop.header.100:                                  ; preds = %loop.latch.100, %loop.body.99
  %counter.load163 = load i64, ptr %loop.idx.100, align 8
  %loop.cond164 = icmp slt i64 %counter.load163, %subtmp
  br i1 %loop.cond164, label %loop.body.100, label %loop.exit.nat.100

loop.body.100:                                    ; preds = %loop.header.100
  %loop.rel.i165 = sub i64 %counter.load163, 0
  store i64 1, ptr %loop.step.100, align 8
  store i64 %loop.rel.i165, ptr %var._i166, align 8
  store i64 %counter.load163, ptr %var._167, align 8
  store i64 %counter.load163, ptr %var.j, align 8
  %var.load168 = load ptr, ptr %var.dirs, align 8
  %a.load169 = load ptr, ptr %var.dirs, align 8
  %a.null170 = icmp eq ptr %a.load169, null
  br i1 %a.null170, label %a.create171, label %a.after172

loop.exit.nat.100:                                ; preds = %loop.header.100
  br label %loop.exit.100

loop.latch.100:                                   ; preds = %choice.exit331
  %step.val423 = load i64, ptr %loop.step.100, align 8
  %loop.next424 = add i64 %counter.load163, %step.val423
  store i64 %loop.next424, ptr %loop.idx.100, align 8
  br label %loop.header.100

loop.exit.100:                                    ; preds = %loop.exit.nat.100
  store i64 %cycle.prev.u, ptr %var._161, align 8
  store i64 %cycle.prev.i, ptr %var._i160, align 8
  br label %loop.latch.99

a.create171:                                      ; preds = %loop.body.100
  %arena.cur173 = call ptr @dva_arena_current()
  %a.create174 = call ptr @dva_arena_alloc(ptr %arena.cur173, i64 24)
  %arena.cur175 = call ptr @dva_arena_current()
  %a.buf176 = call ptr @dva_arena_alloc(ptr %arena.cur175, i64 128)
  %a.len.gep177 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create174, i32 0, i32 0
  store i64 0, ptr %a.len.gep177, align 8
  %a.data.gep178 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create174, i32 0, i32 1
  store ptr %a.buf176, ptr %a.data.gep178, align 8
  %a.cap.gep179 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create174, i32 0, i32 2
  store i64 16, ptr %a.cap.gep179, align 8
  store ptr %a.create174, ptr %var.dirs, align 8
  br label %a.after172

a.after172:                                       ; preds = %a.create171, %loop.body.100
  %a.load2180 = load ptr, ptr %var.dirs, align 8
  %var.load181 = load i64, ptr %var.j, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2180, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after172
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2180, i32 0, i32 0
  %a.rd.len182 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load181, 0
  %a.rd.lt = icmp slt i64 %var.load181, %a.rd.len182
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2180, i32 0, i32 1
  %a.rd.data183 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data183, i64 %var.load181
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after172
  %arena.cur184 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur184, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.17.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 701, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 22, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur185 = call ptr @dva_arena_current()
  %err.alloc186 = call ptr @dva_arena_alloc(ptr %arena.cur185, i64 56)
  %err.code.gep187 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc186, i32 0, i32 0
  store i64 4011, ptr %err.code.gep187, align 8
  %err.msg.gep188 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc186, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep188, align 8
  %err.file.gep189 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc186, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep189, align 8
  %err.line.gep190 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc186, i32 0, i32 3
  store i64 701, ptr %err.line.gep190, align 8
  %err.col.gep191 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc186, i32 0, i32 4
  store i64 22, ptr %err.col.gep191, align 8
  %err.ctx.gep192 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc186, i32 0, i32 5
  %err.ctx0.gep193 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep192, i32 0, i32 0
  store i64 %var.load181, ptr %err.ctx0.gep193, align 8
  %err.ctx1.gep194 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep192, i32 0, i32 1
  store i64 %a.rd.len182, ptr %err.ctx1.gep194, align 8
  %err.p2i195 = ptrtoint ptr %err.alloc186 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i195, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.101, label %unwrap.abort.101

unwrap.pos.101:                                   ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.d1, align 8
  %var.load221 = load ptr, ptr %var.dirs, align 8
  %a.load222 = load ptr, ptr %var.dirs, align 8
  %a.null223 = icmp eq ptr %a.load222, null
  br i1 %a.null223, label %a.create224, label %a.after225

unwrap.abort.101:                                 ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep196 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep196, align 8
  %err.msg.gep197 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep197, align 8
  %err.file.gep198 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep198, align 8
  %err.line.gep199 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep199, align 8
  %err.col.gep200 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep200, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len201 = load i64, ptr %err.msg.len, align 8
  %err.msg.len202 = and i64 %err.msg.len201, 281474976710655
  %str.tag203 = lshr i64 %err.msg.len201, 48
  %str.immortal204 = icmp eq i64 %str.tag203, 0
  br i1 %str.immortal204, label %str_ok206, label %str_gen_check205

str_gen_check205:                                 ; preds = %unwrap.abort.101
  %arena.cur208 = call ptr @dva_arena_current()
  %tag.valid209 = call i1 @dva_arena_validate_tag(ptr %arena.cur208, i64 %str.tag203)
  br i1 %tag.valid209, label %str_ok206, label %str_stale207

str_ok206:                                        ; preds = %str_stale207, %str_gen_check205, %unwrap.abort.101
  %err.msg.len32 = trunc i64 %err.msg.len202 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data210 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len211 = load i64, ptr %err.file.len, align 8
  %err.file.len212 = and i64 %err.file.len211, 281474976710655
  %str.tag213 = lshr i64 %err.file.len211, 48
  %str.immortal214 = icmp eq i64 %str.tag213, 0
  br i1 %str.immortal214, label %str_ok216, label %str_gen_check215

str_stale207:                                     ; preds = %str_gen_check205
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok206

str_gen_check215:                                 ; preds = %str_ok206
  %arena.cur218 = call ptr @dva_arena_current()
  %tag.valid219 = call i1 @dva_arena_validate_tag(ptr %arena.cur218, i64 %str.tag213)
  br i1 %tag.valid219, label %str_ok216, label %str_stale217

str_ok216:                                        ; preds = %str_stale217, %str_gen_check215, %str_ok206
  %err.file.len32 = trunc i64 %err.file.len212 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data220 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale217:                                     ; preds = %str_gen_check215
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok216

err.thread:                                       ; preds = %str_ok216
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok216
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data210, i32 %err.file.len32, ptr %err.file.data220, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create224:                                      ; preds = %unwrap.pos.101
  %arena.cur226 = call ptr @dva_arena_current()
  %a.create227 = call ptr @dva_arena_alloc(ptr %arena.cur226, i64 24)
  %arena.cur228 = call ptr @dva_arena_current()
  %a.buf229 = call ptr @dva_arena_alloc(ptr %arena.cur228, i64 128)
  %a.len.gep230 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create227, i32 0, i32 0
  store i64 0, ptr %a.len.gep230, align 8
  %a.data.gep231 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create227, i32 0, i32 1
  store ptr %a.buf229, ptr %a.data.gep231, align 8
  %a.cap.gep232 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create227, i32 0, i32 2
  store i64 16, ptr %a.cap.gep232, align 8
  store ptr %a.create227, ptr %var.dirs, align 8
  br label %a.after225

a.after225:                                       ; preds = %a.create224, %unwrap.pos.101
  %a.load2233 = load ptr, ptr %var.dirs, align 8
  %var.load234 = load i64, ptr %var.j, align 8
  %addtmp = add i64 %var.load234, 1
  %a.rd.nonnull235 = icmp ne ptr %a.load2233, null
  br i1 %a.rd.nonnull235, label %a.rd.check236, label %a.rd.err.null238

a.rd.check236:                                    ; preds = %a.after225
  %a.rd.len241 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2233, i32 0, i32 0
  %a.rd.len242 = load i64, ptr %a.rd.len241, align 8
  %a.rd.ge0243 = icmp sge i64 %addtmp, 0
  %a.rd.lt244 = icmp slt i64 %addtmp, %a.rd.len242
  %a.rd.bounds245 = and i1 %a.rd.ge0243, %a.rd.lt244
  br i1 %a.rd.bounds245, label %a.rd.ok237, label %a.rd.err.oob239

a.rd.ok237:                                       ; preds = %a.rd.check236
  %a.rd.data246 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2233, i32 0, i32 1
  %a.rd.data247 = load ptr, ptr %a.rd.data246, align 8
  %a.rd.elem.gep248 = getelementptr i64, ptr %a.rd.data247, i64 %addtmp
  %a.rd.elem249 = load i64, ptr %a.rd.elem.gep248, align 8
  br label %a.rd.done240

a.rd.err.null238:                                 ; preds = %a.after225
  %arena.cur250 = call ptr @dva_arena_current()
  %err.alloc251 = call ptr @dva_arena_alloc(ptr %arena.cur250, i64 56)
  %err.code.gep252 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc251, i32 0, i32 0
  store i64 4011, ptr %err.code.gep252, align 8
  %err.msg.gep253 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc251, i32 0, i32 1
  store ptr @str.17.struct, ptr %err.msg.gep253, align 8
  %err.file.gep254 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc251, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep254, align 8
  %err.line.gep255 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc251, i32 0, i32 3
  store i64 702, ptr %err.line.gep255, align 8
  %err.col.gep256 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc251, i32 0, i32 4
  store i64 26, ptr %err.col.gep256, align 8
  %err.ctx.gep257 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc251, i32 0, i32 5
  %err.ctx0.gep258 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep257, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep258, align 8
  %err.ctx1.gep259 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep257, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep259, align 8
  %err.p2i260 = ptrtoint ptr %err.alloc251 to i64
  br label %a.rd.done240

a.rd.err.oob239:                                  ; preds = %a.rd.check236
  %arena.cur261 = call ptr @dva_arena_current()
  %err.alloc262 = call ptr @dva_arena_alloc(ptr %arena.cur261, i64 56)
  %err.code.gep263 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc262, i32 0, i32 0
  store i64 4011, ptr %err.code.gep263, align 8
  %err.msg.gep264 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc262, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep264, align 8
  %err.file.gep265 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc262, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep265, align 8
  %err.line.gep266 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc262, i32 0, i32 3
  store i64 702, ptr %err.line.gep266, align 8
  %err.col.gep267 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc262, i32 0, i32 4
  store i64 26, ptr %err.col.gep267, align 8
  %err.ctx.gep268 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc262, i32 0, i32 5
  %err.ctx0.gep269 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep268, i32 0, i32 0
  store i64 %addtmp, ptr %err.ctx0.gep269, align 8
  %err.ctx1.gep270 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep268, i32 0, i32 1
  store i64 %a.rd.len242, ptr %err.ctx1.gep270, align 8
  %err.p2i271 = ptrtoint ptr %err.alloc262 to i64
  br label %a.rd.done240

a.rd.done240:                                     ; preds = %a.rd.err.oob239, %a.rd.err.null238, %a.rd.ok237
  %a.rd.tag272 = phi i1 [ true, %a.rd.ok237 ], [ false, %a.rd.err.null238 ], [ false, %a.rd.err.oob239 ]
  %a.rd.pay273 = phi i64 [ %a.rd.elem249, %a.rd.ok237 ], [ %err.p2i260, %a.rd.err.null238 ], [ %err.p2i271, %a.rd.err.oob239 ]
  %ram.tag274 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag272, 0
  %ram.pay275 = insertvalue { i1, i64 } %ram.tag274, i64 %a.rd.pay273, 1
  %unwrap.is_pos276 = extractvalue { i1, i64 } %ram.pay275, 0
  br i1 %unwrap.is_pos276, label %unwrap.pos.102, label %unwrap.abort.102

unwrap.pos.102:                                   ; preds = %a.rd.done240
  %unwrap.pay.pos322 = extractvalue { i1, i64 } %ram.pay275, 1
  %pay.ptr323 = inttoptr i64 %unwrap.pay.pos322 to ptr
  store ptr %pay.ptr323, ptr %var.d2, align 8
  %var.load324 = load ptr, ptr %var.d1, align 8
  %var.load325 = load ptr, ptr %var.d2, align 8
  %var.load326 = load i64, ptr %var.sort_mode, align 8
  %var.load327 = load i1, ptr %var.sort_rev, align 1
  %call.res328 = call i64 @"fs::cmp_entries"(ptr %var.load324, ptr %var.load325, i64 %var.load326, i1 %var.load327)
  %cmptmp329 = icmp sgt i64 %call.res328, 0
  br i1 %cmptmp329, label %choice.then330, label %choice.exit331

unwrap.abort.102:                                 ; preds = %a.rd.done240
  %unwrap.pay.abort277 = extractvalue { i1, i64 } %ram.pay275, 1
  %err.ptr278 = inttoptr i64 %unwrap.pay.abort277 to ptr
  %err.code.gep279 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr278, i32 0, i32 0
  %err.code280 = load i64, ptr %err.code.gep279, align 8
  %err.msg.gep281 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr278, i32 0, i32 1
  %err.msg.struct282 = load ptr, ptr %err.msg.gep281, align 8
  %err.file.gep283 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr278, i32 0, i32 2
  %err.file.struct284 = load ptr, ptr %err.file.gep283, align 8
  %err.line.gep285 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr278, i32 0, i32 3
  %err.line286 = load i64, ptr %err.line.gep285, align 8
  %err.col.gep287 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr278, i32 0, i32 4
  %err.col288 = load i64, ptr %err.col.gep287, align 8
  %err.msg.len289 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct282, i32 0, i32 0
  %err.msg.len290 = load i64, ptr %err.msg.len289, align 8
  %err.msg.len291 = and i64 %err.msg.len290, 281474976710655
  %str.tag292 = lshr i64 %err.msg.len290, 48
  %str.immortal293 = icmp eq i64 %str.tag292, 0
  br i1 %str.immortal293, label %str_ok295, label %str_gen_check294

str_gen_check294:                                 ; preds = %unwrap.abort.102
  %arena.cur297 = call ptr @dva_arena_current()
  %tag.valid298 = call i1 @dva_arena_validate_tag(ptr %arena.cur297, i64 %str.tag292)
  br i1 %tag.valid298, label %str_ok295, label %str_stale296

str_ok295:                                        ; preds = %str_stale296, %str_gen_check294, %unwrap.abort.102
  %err.msg.len32299 = trunc i64 %err.msg.len291 to i32
  %err.msg.data300 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct282, i32 0, i32 1
  %err.msg.data301 = load ptr, ptr %err.msg.data300, align 8
  %err.file.len302 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct284, i32 0, i32 0
  %err.file.len303 = load i64, ptr %err.file.len302, align 8
  %err.file.len304 = and i64 %err.file.len303, 281474976710655
  %str.tag305 = lshr i64 %err.file.len303, 48
  %str.immortal306 = icmp eq i64 %str.tag305, 0
  br i1 %str.immortal306, label %str_ok308, label %str_gen_check307

str_stale296:                                     ; preds = %str_gen_check294
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok295

str_gen_check307:                                 ; preds = %str_ok295
  %arena.cur310 = call ptr @dva_arena_current()
  %tag.valid311 = call i1 @dva_arena_validate_tag(ptr %arena.cur310, i64 %str.tag305)
  br i1 %tag.valid311, label %str_ok308, label %str_stale309

str_ok308:                                        ; preds = %str_stale309, %str_gen_check307, %str_ok295
  %err.file.len32312 = trunc i64 %err.file.len304 to i32
  %err.file.data313 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct284, i32 0, i32 1
  %err.file.data314 = load ptr, ptr %err.file.data313, align 8
  %err.thread.rec315 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread316 = icmp ne ptr %err.thread.rec315, null
  br i1 %err.is.thread316, label %err.thread317, label %err.normal318

str_stale309:                                     ; preds = %str_gen_check307
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok308

err.thread317:                                    ; preds = %str_ok308
  %err.haserr.gep319 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec315, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep319, align 8
  %err.err.gep320 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec315, i32 0, i32 7
  store ptr %err.ptr278, ptr %err.err.gep320, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal318:                                    ; preds = %str_ok308
  %err.panic.printf321 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code280, i32 %err.msg.len32299, ptr %err.msg.data301, i32 %err.file.len32312, ptr %err.file.data314, i64 %err.line286, i64 %err.col288)
  call void @exit(i32 1)
  unreachable

choice.then330:                                   ; preds = %unwrap.pos.102
  %var.load332 = load ptr, ptr %var.dirs, align 8
  %a.load333 = load ptr, ptr %var.dirs, align 8
  %a.null334 = icmp eq ptr %a.load333, null
  br i1 %a.null334, label %a.create335, label %a.after336

choice.exit331:                                   ; preds = %a.wr.done393, %unwrap.pos.102
  br label %loop.latch.100

a.create335:                                      ; preds = %choice.then330
  %arena.cur337 = call ptr @dva_arena_current()
  %a.create338 = call ptr @dva_arena_alloc(ptr %arena.cur337, i64 24)
  %arena.cur339 = call ptr @dva_arena_current()
  %a.buf340 = call ptr @dva_arena_alloc(ptr %arena.cur339, i64 128)
  %a.len.gep341 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create338, i32 0, i32 0
  store i64 0, ptr %a.len.gep341, align 8
  %a.data.gep342 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create338, i32 0, i32 1
  store ptr %a.buf340, ptr %a.data.gep342, align 8
  %a.cap.gep343 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create338, i32 0, i32 2
  store i64 16, ptr %a.cap.gep343, align 8
  store ptr %a.create338, ptr %var.dirs, align 8
  br label %a.after336

a.after336:                                       ; preds = %a.create335, %choice.then330
  %a.load2344 = load ptr, ptr %var.dirs, align 8
  %var.load345 = load i64, ptr %var.j, align 8
  %var.load346 = load ptr, ptr %var.d2, align 8
  %slot.p2i347 = ptrtoint ptr %var.load346 to i64
  %a.wr.nonnull = icmp ne ptr %a.load2344, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

a.wr.check:                                       ; preds = %a.after336
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2344, i32 0, i32 0
  %a.wr.len348 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load345, 0
  %a.wr.lt = icmp slt i64 %var.load345, %a.wr.len348
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2344, i32 0, i32 1
  %a.wr.data349 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep350 = getelementptr i64, ptr %a.wr.data349, i64 %var.load345
  store i64 %slot.p2i347, ptr %a.elem.gep350, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %a.after336
  %arena.cur351 = call ptr @dva_arena_current()
  %err.alloc352 = call ptr @dva_arena_alloc(ptr %arena.cur351, i64 56)
  %err.code.gep353 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc352, i32 0, i32 0
  store i64 4011, ptr %err.code.gep353, align 8
  %err.msg.gep354 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc352, i32 0, i32 1
  store ptr @str.17.struct, ptr %err.msg.gep354, align 8
  %err.file.gep355 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc352, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep355, align 8
  %err.line.gep356 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc352, i32 0, i32 3
  store i64 0, ptr %err.line.gep356, align 8
  %err.col.gep357 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc352, i32 0, i32 4
  store i64 0, ptr %err.col.gep357, align 8
  %err.ctx.gep358 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc352, i32 0, i32 5
  %err.ctx0.gep359 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep358, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep359, align 8
  %err.ctx1.gep360 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep358, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep360, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur361 = call ptr @dva_arena_current()
  %err.alloc362 = call ptr @dva_arena_alloc(ptr %arena.cur361, i64 56)
  %err.code.gep363 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc362, i32 0, i32 0
  store i64 4011, ptr %err.code.gep363, align 8
  %err.msg.gep364 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc362, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep364, align 8
  %err.file.gep365 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc362, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep365, align 8
  %err.line.gep366 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc362, i32 0, i32 3
  store i64 0, ptr %err.line.gep366, align 8
  %err.col.gep367 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc362, i32 0, i32 4
  store i64 0, ptr %err.col.gep367, align 8
  %err.ctx.gep368 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc362, i32 0, i32 5
  %err.ctx0.gep369 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep368, i32 0, i32 0
  store i64 %var.load345, ptr %err.ctx0.gep369, align 8
  %err.ctx1.gep370 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep368, i32 0, i32 1
  store i64 %a.wr.len348, ptr %err.ctx1.gep370, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc352, %a.wr.err.null ], [ %err.alloc362, %a.wr.err.oob ]
  %var.load371 = load ptr, ptr %var.dirs, align 8
  %a.load372 = load ptr, ptr %var.dirs, align 8
  %a.null373 = icmp eq ptr %a.load372, null
  br i1 %a.null373, label %a.create374, label %a.after375

a.create374:                                      ; preds = %a.wr.done
  %arena.cur376 = call ptr @dva_arena_current()
  %a.create377 = call ptr @dva_arena_alloc(ptr %arena.cur376, i64 24)
  %arena.cur378 = call ptr @dva_arena_current()
  %a.buf379 = call ptr @dva_arena_alloc(ptr %arena.cur378, i64 128)
  %a.len.gep380 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create377, i32 0, i32 0
  store i64 0, ptr %a.len.gep380, align 8
  %a.data.gep381 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create377, i32 0, i32 1
  store ptr %a.buf379, ptr %a.data.gep381, align 8
  %a.cap.gep382 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create377, i32 0, i32 2
  store i64 16, ptr %a.cap.gep382, align 8
  store ptr %a.create377, ptr %var.dirs, align 8
  br label %a.after375

a.after375:                                       ; preds = %a.create374, %a.wr.done
  %a.load2383 = load ptr, ptr %var.dirs, align 8
  %var.load384 = load i64, ptr %var.j, align 8
  %addtmp385 = add i64 %var.load384, 1
  %var.load386 = load ptr, ptr %var.d1, align 8
  %slot.p2i387 = ptrtoint ptr %var.load386 to i64
  %a.wr.nonnull388 = icmp ne ptr %a.load2383, null
  br i1 %a.wr.nonnull388, label %a.wr.check389, label %a.wr.err.null391

a.wr.check389:                                    ; preds = %a.after375
  %a.wr.len394 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2383, i32 0, i32 0
  %a.wr.len395 = load i64, ptr %a.wr.len394, align 8
  %a.wr.ge0396 = icmp sge i64 %addtmp385, 0
  %a.wr.lt397 = icmp slt i64 %addtmp385, %a.wr.len395
  %a.wr.bounds398 = and i1 %a.wr.ge0396, %a.wr.lt397
  br i1 %a.wr.bounds398, label %a.wr.ok390, label %a.wr.err.oob392

a.wr.ok390:                                       ; preds = %a.wr.check389
  %a.wr.data399 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2383, i32 0, i32 1
  %a.wr.data400 = load ptr, ptr %a.wr.data399, align 8
  %a.elem.gep401 = getelementptr i64, ptr %a.wr.data400, i64 %addtmp385
  store i64 %slot.p2i387, ptr %a.elem.gep401, align 8
  br label %a.wr.done393

a.wr.err.null391:                                 ; preds = %a.after375
  %arena.cur402 = call ptr @dva_arena_current()
  %err.alloc403 = call ptr @dva_arena_alloc(ptr %arena.cur402, i64 56)
  %err.code.gep404 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc403, i32 0, i32 0
  store i64 4011, ptr %err.code.gep404, align 8
  %err.msg.gep405 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc403, i32 0, i32 1
  store ptr @str.17.struct, ptr %err.msg.gep405, align 8
  %err.file.gep406 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc403, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep406, align 8
  %err.line.gep407 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc403, i32 0, i32 3
  store i64 0, ptr %err.line.gep407, align 8
  %err.col.gep408 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc403, i32 0, i32 4
  store i64 0, ptr %err.col.gep408, align 8
  %err.ctx.gep409 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc403, i32 0, i32 5
  %err.ctx0.gep410 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep409, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep410, align 8
  %err.ctx1.gep411 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep409, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep411, align 8
  br label %a.wr.done393

a.wr.err.oob392:                                  ; preds = %a.wr.check389
  %arena.cur412 = call ptr @dva_arena_current()
  %err.alloc413 = call ptr @dva_arena_alloc(ptr %arena.cur412, i64 56)
  %err.code.gep414 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc413, i32 0, i32 0
  store i64 4011, ptr %err.code.gep414, align 8
  %err.msg.gep415 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc413, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep415, align 8
  %err.file.gep416 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc413, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep416, align 8
  %err.line.gep417 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc413, i32 0, i32 3
  store i64 0, ptr %err.line.gep417, align 8
  %err.col.gep418 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc413, i32 0, i32 4
  store i64 0, ptr %err.col.gep418, align 8
  %err.ctx.gep419 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc413, i32 0, i32 5
  %err.ctx0.gep420 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep419, i32 0, i32 0
  store i64 %addtmp385, ptr %err.ctx0.gep420, align 8
  %err.ctx1.gep421 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep419, i32 0, i32 1
  store i64 %a.wr.len395, ptr %err.ctx1.gep421, align 8
  br label %a.wr.done393

a.wr.done393:                                     ; preds = %a.wr.err.oob392, %a.wr.err.null391, %a.wr.ok390
  %a.wr.niche422 = phi ptr [ null, %a.wr.ok390 ], [ %err.alloc403, %a.wr.err.null391 ], [ %err.alloc413, %a.wr.err.oob392 ]
  br label %choice.exit331

a.create430:                                      ; preds = %loop.exit.99
  %arena.cur432 = call ptr @dva_arena_current()
  %a.create433 = call ptr @dva_arena_alloc(ptr %arena.cur432, i64 24)
  %arena.cur434 = call ptr @dva_arena_current()
  %a.buf435 = call ptr @dva_arena_alloc(ptr %arena.cur434, i64 128)
  %a.len.gep436 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create433, i32 0, i32 0
  store i64 0, ptr %a.len.gep436, align 8
  %a.data.gep437 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create433, i32 0, i32 1
  store ptr %a.buf435, ptr %a.data.gep437, align 8
  %a.cap.gep438 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create433, i32 0, i32 2
  store i64 16, ptr %a.cap.gep438, align 8
  store ptr %a.create433, ptr %var.file_list, align 8
  br label %a.after431

a.after431:                                       ; preds = %a.create430, %loop.exit.99
  %a.load2439 = load ptr, ptr %var.file_list, align 8
  %a.len.query440 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2439, i32 0, i32 0
  %a.len.query441 = load i64, ptr %a.len.query440, align 8
  store i64 %a.len.query441, ptr %var.nf, align 8
  %var.load442 = load i64, ptr %var.nf, align 8
  store i64 0, ptr %loop.idx.103, align 8
  br label %loop.header.103

loop.header.103:                                  ; preds = %loop.latch.103, %a.after431
  %counter.load443 = load i64, ptr %loop.idx.103, align 8
  %loop.cond444 = icmp slt i64 %counter.load443, %var.load442
  br i1 %loop.cond444, label %loop.body.103, label %loop.exit.nat.103

loop.body.103:                                    ; preds = %loop.header.103
  %loop.rel.i445 = sub i64 %counter.load443, 0
  store i64 1, ptr %loop.step.103, align 8
  store i64 %loop.rel.i445, ptr %var._i446, align 8
  store i64 %counter.load443, ptr %var._447, align 8
  store i64 %counter.load443, ptr %var.i, align 8
  %var.load448 = load i64, ptr %var.nf, align 8
  %subtmp449 = sub i64 %var.load448, 1
  store i64 0, ptr %loop.idx.104, align 8
  %cycle.prev.u451 = load i64, ptr %var._447, align 8
  %cycle.prev.i452 = load i64, ptr %var._i446, align 8
  br label %loop.header.104

loop.exit.nat.103:                                ; preds = %loop.header.103
  br label %loop.exit.103

loop.latch.103:                                   ; preds = %loop.exit.104
  %step.val778 = load i64, ptr %loop.step.103, align 8
  %loop.next779 = add i64 %counter.load443, %step.val778
  store i64 %loop.next779, ptr %loop.idx.103, align 8
  br label %loop.header.103

loop.exit.103:                                    ; preds = %loop.exit.nat.103
  %var.load780 = load ptr, ptr %var.dirs, align 8
  %a.load781 = load ptr, ptr %var.dirs, align 8
  %a.null782 = icmp eq ptr %a.load781, null
  br i1 %a.null782, label %a.create783, label %a.after784

loop.header.104:                                  ; preds = %loop.latch.104, %loop.body.103
  %counter.load453 = load i64, ptr %loop.idx.104, align 8
  %loop.cond454 = icmp slt i64 %counter.load453, %subtmp449
  br i1 %loop.cond454, label %loop.body.104, label %loop.exit.nat.104

loop.body.104:                                    ; preds = %loop.header.104
  %loop.rel.i455 = sub i64 %counter.load453, 0
  store i64 1, ptr %loop.step.104, align 8
  store i64 %loop.rel.i455, ptr %var._i456, align 8
  store i64 %counter.load453, ptr %var._457, align 8
  store i64 %counter.load453, ptr %var.j450, align 8
  %var.load458 = load ptr, ptr %var.file_list, align 8
  %a.load459 = load ptr, ptr %var.file_list, align 8
  %a.null460 = icmp eq ptr %a.load459, null
  br i1 %a.null460, label %a.create461, label %a.after462

loop.exit.nat.104:                                ; preds = %loop.header.104
  br label %loop.exit.104

loop.latch.104:                                   ; preds = %choice.exit672
  %step.val776 = load i64, ptr %loop.step.104, align 8
  %loop.next777 = add i64 %counter.load453, %step.val776
  store i64 %loop.next777, ptr %loop.idx.104, align 8
  br label %loop.header.104

loop.exit.104:                                    ; preds = %loop.exit.nat.104
  store i64 %cycle.prev.u451, ptr %var._447, align 8
  store i64 %cycle.prev.i452, ptr %var._i446, align 8
  br label %loop.latch.103

a.create461:                                      ; preds = %loop.body.104
  %arena.cur463 = call ptr @dva_arena_current()
  %a.create464 = call ptr @dva_arena_alloc(ptr %arena.cur463, i64 24)
  %arena.cur465 = call ptr @dva_arena_current()
  %a.buf466 = call ptr @dva_arena_alloc(ptr %arena.cur465, i64 128)
  %a.len.gep467 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create464, i32 0, i32 0
  store i64 0, ptr %a.len.gep467, align 8
  %a.data.gep468 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create464, i32 0, i32 1
  store ptr %a.buf466, ptr %a.data.gep468, align 8
  %a.cap.gep469 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create464, i32 0, i32 2
  store i64 16, ptr %a.cap.gep469, align 8
  store ptr %a.create464, ptr %var.file_list, align 8
  br label %a.after462

a.after462:                                       ; preds = %a.create461, %loop.body.104
  %a.load2470 = load ptr, ptr %var.file_list, align 8
  %var.load471 = load i64, ptr %var.j450, align 8
  %a.rd.nonnull472 = icmp ne ptr %a.load2470, null
  br i1 %a.rd.nonnull472, label %a.rd.check473, label %a.rd.err.null475

a.rd.check473:                                    ; preds = %a.after462
  %a.rd.len478 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2470, i32 0, i32 0
  %a.rd.len479 = load i64, ptr %a.rd.len478, align 8
  %a.rd.ge0480 = icmp sge i64 %var.load471, 0
  %a.rd.lt481 = icmp slt i64 %var.load471, %a.rd.len479
  %a.rd.bounds482 = and i1 %a.rd.ge0480, %a.rd.lt481
  br i1 %a.rd.bounds482, label %a.rd.ok474, label %a.rd.err.oob476

a.rd.ok474:                                       ; preds = %a.rd.check473
  %a.rd.data483 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2470, i32 0, i32 1
  %a.rd.data484 = load ptr, ptr %a.rd.data483, align 8
  %a.rd.elem.gep485 = getelementptr i64, ptr %a.rd.data484, i64 %var.load471
  %a.rd.elem486 = load i64, ptr %a.rd.elem.gep485, align 8
  br label %a.rd.done477

a.rd.err.null475:                                 ; preds = %a.after462
  %arena.cur487 = call ptr @dva_arena_current()
  %err.alloc488 = call ptr @dva_arena_alloc(ptr %arena.cur487, i64 56)
  %err.code.gep489 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc488, i32 0, i32 0
  store i64 4011, ptr %err.code.gep489, align 8
  %err.msg.gep490 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc488, i32 0, i32 1
  store ptr @str.17.struct, ptr %err.msg.gep490, align 8
  %err.file.gep491 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc488, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep491, align 8
  %err.line.gep492 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc488, i32 0, i32 3
  store i64 711, ptr %err.line.gep492, align 8
  %err.col.gep493 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc488, i32 0, i32 4
  store i64 27, ptr %err.col.gep493, align 8
  %err.ctx.gep494 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc488, i32 0, i32 5
  %err.ctx0.gep495 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep494, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep495, align 8
  %err.ctx1.gep496 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep494, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep496, align 8
  %err.p2i497 = ptrtoint ptr %err.alloc488 to i64
  br label %a.rd.done477

a.rd.err.oob476:                                  ; preds = %a.rd.check473
  %arena.cur498 = call ptr @dva_arena_current()
  %err.alloc499 = call ptr @dva_arena_alloc(ptr %arena.cur498, i64 56)
  %err.code.gep500 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc499, i32 0, i32 0
  store i64 4011, ptr %err.code.gep500, align 8
  %err.msg.gep501 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc499, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep501, align 8
  %err.file.gep502 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc499, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep502, align 8
  %err.line.gep503 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc499, i32 0, i32 3
  store i64 711, ptr %err.line.gep503, align 8
  %err.col.gep504 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc499, i32 0, i32 4
  store i64 27, ptr %err.col.gep504, align 8
  %err.ctx.gep505 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc499, i32 0, i32 5
  %err.ctx0.gep506 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep505, i32 0, i32 0
  store i64 %var.load471, ptr %err.ctx0.gep506, align 8
  %err.ctx1.gep507 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep505, i32 0, i32 1
  store i64 %a.rd.len479, ptr %err.ctx1.gep507, align 8
  %err.p2i508 = ptrtoint ptr %err.alloc499 to i64
  br label %a.rd.done477

a.rd.done477:                                     ; preds = %a.rd.err.oob476, %a.rd.err.null475, %a.rd.ok474
  %a.rd.tag509 = phi i1 [ true, %a.rd.ok474 ], [ false, %a.rd.err.null475 ], [ false, %a.rd.err.oob476 ]
  %a.rd.pay510 = phi i64 [ %a.rd.elem486, %a.rd.ok474 ], [ %err.p2i497, %a.rd.err.null475 ], [ %err.p2i508, %a.rd.err.oob476 ]
  %ram.tag511 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag509, 0
  %ram.pay512 = insertvalue { i1, i64 } %ram.tag511, i64 %a.rd.pay510, 1
  %unwrap.is_pos513 = extractvalue { i1, i64 } %ram.pay512, 0
  br i1 %unwrap.is_pos513, label %unwrap.pos.105, label %unwrap.abort.105

unwrap.pos.105:                                   ; preds = %a.rd.done477
  %unwrap.pay.pos559 = extractvalue { i1, i64 } %ram.pay512, 1
  %pay.ptr560 = inttoptr i64 %unwrap.pay.pos559 to ptr
  store ptr %pay.ptr560, ptr %var.f1, align 8
  %var.load561 = load ptr, ptr %var.file_list, align 8
  %a.load562 = load ptr, ptr %var.file_list, align 8
  %a.null563 = icmp eq ptr %a.load562, null
  br i1 %a.null563, label %a.create564, label %a.after565

unwrap.abort.105:                                 ; preds = %a.rd.done477
  %unwrap.pay.abort514 = extractvalue { i1, i64 } %ram.pay512, 1
  %err.ptr515 = inttoptr i64 %unwrap.pay.abort514 to ptr
  %err.code.gep516 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr515, i32 0, i32 0
  %err.code517 = load i64, ptr %err.code.gep516, align 8
  %err.msg.gep518 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr515, i32 0, i32 1
  %err.msg.struct519 = load ptr, ptr %err.msg.gep518, align 8
  %err.file.gep520 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr515, i32 0, i32 2
  %err.file.struct521 = load ptr, ptr %err.file.gep520, align 8
  %err.line.gep522 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr515, i32 0, i32 3
  %err.line523 = load i64, ptr %err.line.gep522, align 8
  %err.col.gep524 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr515, i32 0, i32 4
  %err.col525 = load i64, ptr %err.col.gep524, align 8
  %err.msg.len526 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct519, i32 0, i32 0
  %err.msg.len527 = load i64, ptr %err.msg.len526, align 8
  %err.msg.len528 = and i64 %err.msg.len527, 281474976710655
  %str.tag529 = lshr i64 %err.msg.len527, 48
  %str.immortal530 = icmp eq i64 %str.tag529, 0
  br i1 %str.immortal530, label %str_ok532, label %str_gen_check531

str_gen_check531:                                 ; preds = %unwrap.abort.105
  %arena.cur534 = call ptr @dva_arena_current()
  %tag.valid535 = call i1 @dva_arena_validate_tag(ptr %arena.cur534, i64 %str.tag529)
  br i1 %tag.valid535, label %str_ok532, label %str_stale533

str_ok532:                                        ; preds = %str_stale533, %str_gen_check531, %unwrap.abort.105
  %err.msg.len32536 = trunc i64 %err.msg.len528 to i32
  %err.msg.data537 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct519, i32 0, i32 1
  %err.msg.data538 = load ptr, ptr %err.msg.data537, align 8
  %err.file.len539 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct521, i32 0, i32 0
  %err.file.len540 = load i64, ptr %err.file.len539, align 8
  %err.file.len541 = and i64 %err.file.len540, 281474976710655
  %str.tag542 = lshr i64 %err.file.len540, 48
  %str.immortal543 = icmp eq i64 %str.tag542, 0
  br i1 %str.immortal543, label %str_ok545, label %str_gen_check544

str_stale533:                                     ; preds = %str_gen_check531
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok532

str_gen_check544:                                 ; preds = %str_ok532
  %arena.cur547 = call ptr @dva_arena_current()
  %tag.valid548 = call i1 @dva_arena_validate_tag(ptr %arena.cur547, i64 %str.tag542)
  br i1 %tag.valid548, label %str_ok545, label %str_stale546

str_ok545:                                        ; preds = %str_stale546, %str_gen_check544, %str_ok532
  %err.file.len32549 = trunc i64 %err.file.len541 to i32
  %err.file.data550 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct521, i32 0, i32 1
  %err.file.data551 = load ptr, ptr %err.file.data550, align 8
  %err.thread.rec552 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread553 = icmp ne ptr %err.thread.rec552, null
  br i1 %err.is.thread553, label %err.thread554, label %err.normal555

str_stale546:                                     ; preds = %str_gen_check544
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok545

err.thread554:                                    ; preds = %str_ok545
  %err.haserr.gep556 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec552, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep556, align 8
  %err.err.gep557 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec552, i32 0, i32 7
  store ptr %err.ptr515, ptr %err.err.gep557, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal555:                                    ; preds = %str_ok545
  %err.panic.printf558 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code517, i32 %err.msg.len32536, ptr %err.msg.data538, i32 %err.file.len32549, ptr %err.file.data551, i64 %err.line523, i64 %err.col525)
  call void @exit(i32 1)
  unreachable

a.create564:                                      ; preds = %unwrap.pos.105
  %arena.cur566 = call ptr @dva_arena_current()
  %a.create567 = call ptr @dva_arena_alloc(ptr %arena.cur566, i64 24)
  %arena.cur568 = call ptr @dva_arena_current()
  %a.buf569 = call ptr @dva_arena_alloc(ptr %arena.cur568, i64 128)
  %a.len.gep570 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create567, i32 0, i32 0
  store i64 0, ptr %a.len.gep570, align 8
  %a.data.gep571 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create567, i32 0, i32 1
  store ptr %a.buf569, ptr %a.data.gep571, align 8
  %a.cap.gep572 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create567, i32 0, i32 2
  store i64 16, ptr %a.cap.gep572, align 8
  store ptr %a.create567, ptr %var.file_list, align 8
  br label %a.after565

a.after565:                                       ; preds = %a.create564, %unwrap.pos.105
  %a.load2573 = load ptr, ptr %var.file_list, align 8
  %var.load574 = load i64, ptr %var.j450, align 8
  %addtmp575 = add i64 %var.load574, 1
  %a.rd.nonnull576 = icmp ne ptr %a.load2573, null
  br i1 %a.rd.nonnull576, label %a.rd.check577, label %a.rd.err.null579

a.rd.check577:                                    ; preds = %a.after565
  %a.rd.len582 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2573, i32 0, i32 0
  %a.rd.len583 = load i64, ptr %a.rd.len582, align 8
  %a.rd.ge0584 = icmp sge i64 %addtmp575, 0
  %a.rd.lt585 = icmp slt i64 %addtmp575, %a.rd.len583
  %a.rd.bounds586 = and i1 %a.rd.ge0584, %a.rd.lt585
  br i1 %a.rd.bounds586, label %a.rd.ok578, label %a.rd.err.oob580

a.rd.ok578:                                       ; preds = %a.rd.check577
  %a.rd.data587 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2573, i32 0, i32 1
  %a.rd.data588 = load ptr, ptr %a.rd.data587, align 8
  %a.rd.elem.gep589 = getelementptr i64, ptr %a.rd.data588, i64 %addtmp575
  %a.rd.elem590 = load i64, ptr %a.rd.elem.gep589, align 8
  br label %a.rd.done581

a.rd.err.null579:                                 ; preds = %a.after565
  %arena.cur591 = call ptr @dva_arena_current()
  %err.alloc592 = call ptr @dva_arena_alloc(ptr %arena.cur591, i64 56)
  %err.code.gep593 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc592, i32 0, i32 0
  store i64 4011, ptr %err.code.gep593, align 8
  %err.msg.gep594 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc592, i32 0, i32 1
  store ptr @str.17.struct, ptr %err.msg.gep594, align 8
  %err.file.gep595 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc592, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep595, align 8
  %err.line.gep596 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc592, i32 0, i32 3
  store i64 712, ptr %err.line.gep596, align 8
  %err.col.gep597 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc592, i32 0, i32 4
  store i64 31, ptr %err.col.gep597, align 8
  %err.ctx.gep598 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc592, i32 0, i32 5
  %err.ctx0.gep599 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep598, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep599, align 8
  %err.ctx1.gep600 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep598, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep600, align 8
  %err.p2i601 = ptrtoint ptr %err.alloc592 to i64
  br label %a.rd.done581

a.rd.err.oob580:                                  ; preds = %a.rd.check577
  %arena.cur602 = call ptr @dva_arena_current()
  %err.alloc603 = call ptr @dva_arena_alloc(ptr %arena.cur602, i64 56)
  %err.code.gep604 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc603, i32 0, i32 0
  store i64 4011, ptr %err.code.gep604, align 8
  %err.msg.gep605 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc603, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep605, align 8
  %err.file.gep606 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc603, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep606, align 8
  %err.line.gep607 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc603, i32 0, i32 3
  store i64 712, ptr %err.line.gep607, align 8
  %err.col.gep608 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc603, i32 0, i32 4
  store i64 31, ptr %err.col.gep608, align 8
  %err.ctx.gep609 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc603, i32 0, i32 5
  %err.ctx0.gep610 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep609, i32 0, i32 0
  store i64 %addtmp575, ptr %err.ctx0.gep610, align 8
  %err.ctx1.gep611 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep609, i32 0, i32 1
  store i64 %a.rd.len583, ptr %err.ctx1.gep611, align 8
  %err.p2i612 = ptrtoint ptr %err.alloc603 to i64
  br label %a.rd.done581

a.rd.done581:                                     ; preds = %a.rd.err.oob580, %a.rd.err.null579, %a.rd.ok578
  %a.rd.tag613 = phi i1 [ true, %a.rd.ok578 ], [ false, %a.rd.err.null579 ], [ false, %a.rd.err.oob580 ]
  %a.rd.pay614 = phi i64 [ %a.rd.elem590, %a.rd.ok578 ], [ %err.p2i601, %a.rd.err.null579 ], [ %err.p2i612, %a.rd.err.oob580 ]
  %ram.tag615 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag613, 0
  %ram.pay616 = insertvalue { i1, i64 } %ram.tag615, i64 %a.rd.pay614, 1
  %unwrap.is_pos617 = extractvalue { i1, i64 } %ram.pay616, 0
  br i1 %unwrap.is_pos617, label %unwrap.pos.106, label %unwrap.abort.106

unwrap.pos.106:                                   ; preds = %a.rd.done581
  %unwrap.pay.pos663 = extractvalue { i1, i64 } %ram.pay616, 1
  %pay.ptr664 = inttoptr i64 %unwrap.pay.pos663 to ptr
  store ptr %pay.ptr664, ptr %var.f2, align 8
  %var.load665 = load ptr, ptr %var.f1, align 8
  %var.load666 = load ptr, ptr %var.f2, align 8
  %var.load667 = load i64, ptr %var.sort_mode, align 8
  %var.load668 = load i1, ptr %var.sort_rev, align 1
  %call.res669 = call i64 @"fs::cmp_entries"(ptr %var.load665, ptr %var.load666, i64 %var.load667, i1 %var.load668)
  %cmptmp670 = icmp sgt i64 %call.res669, 0
  br i1 %cmptmp670, label %choice.then671, label %choice.exit672

unwrap.abort.106:                                 ; preds = %a.rd.done581
  %unwrap.pay.abort618 = extractvalue { i1, i64 } %ram.pay616, 1
  %err.ptr619 = inttoptr i64 %unwrap.pay.abort618 to ptr
  %err.code.gep620 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr619, i32 0, i32 0
  %err.code621 = load i64, ptr %err.code.gep620, align 8
  %err.msg.gep622 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr619, i32 0, i32 1
  %err.msg.struct623 = load ptr, ptr %err.msg.gep622, align 8
  %err.file.gep624 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr619, i32 0, i32 2
  %err.file.struct625 = load ptr, ptr %err.file.gep624, align 8
  %err.line.gep626 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr619, i32 0, i32 3
  %err.line627 = load i64, ptr %err.line.gep626, align 8
  %err.col.gep628 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr619, i32 0, i32 4
  %err.col629 = load i64, ptr %err.col.gep628, align 8
  %err.msg.len630 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct623, i32 0, i32 0
  %err.msg.len631 = load i64, ptr %err.msg.len630, align 8
  %err.msg.len632 = and i64 %err.msg.len631, 281474976710655
  %str.tag633 = lshr i64 %err.msg.len631, 48
  %str.immortal634 = icmp eq i64 %str.tag633, 0
  br i1 %str.immortal634, label %str_ok636, label %str_gen_check635

str_gen_check635:                                 ; preds = %unwrap.abort.106
  %arena.cur638 = call ptr @dva_arena_current()
  %tag.valid639 = call i1 @dva_arena_validate_tag(ptr %arena.cur638, i64 %str.tag633)
  br i1 %tag.valid639, label %str_ok636, label %str_stale637

str_ok636:                                        ; preds = %str_stale637, %str_gen_check635, %unwrap.abort.106
  %err.msg.len32640 = trunc i64 %err.msg.len632 to i32
  %err.msg.data641 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct623, i32 0, i32 1
  %err.msg.data642 = load ptr, ptr %err.msg.data641, align 8
  %err.file.len643 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct625, i32 0, i32 0
  %err.file.len644 = load i64, ptr %err.file.len643, align 8
  %err.file.len645 = and i64 %err.file.len644, 281474976710655
  %str.tag646 = lshr i64 %err.file.len644, 48
  %str.immortal647 = icmp eq i64 %str.tag646, 0
  br i1 %str.immortal647, label %str_ok649, label %str_gen_check648

str_stale637:                                     ; preds = %str_gen_check635
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok636

str_gen_check648:                                 ; preds = %str_ok636
  %arena.cur651 = call ptr @dva_arena_current()
  %tag.valid652 = call i1 @dva_arena_validate_tag(ptr %arena.cur651, i64 %str.tag646)
  br i1 %tag.valid652, label %str_ok649, label %str_stale650

str_ok649:                                        ; preds = %str_stale650, %str_gen_check648, %str_ok636
  %err.file.len32653 = trunc i64 %err.file.len645 to i32
  %err.file.data654 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct625, i32 0, i32 1
  %err.file.data655 = load ptr, ptr %err.file.data654, align 8
  %err.thread.rec656 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread657 = icmp ne ptr %err.thread.rec656, null
  br i1 %err.is.thread657, label %err.thread658, label %err.normal659

str_stale650:                                     ; preds = %str_gen_check648
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok649

err.thread658:                                    ; preds = %str_ok649
  %err.haserr.gep660 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec656, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep660, align 8
  %err.err.gep661 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec656, i32 0, i32 7
  store ptr %err.ptr619, ptr %err.err.gep661, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal659:                                    ; preds = %str_ok649
  %err.panic.printf662 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code621, i32 %err.msg.len32640, ptr %err.msg.data642, i32 %err.file.len32653, ptr %err.file.data655, i64 %err.line627, i64 %err.col629)
  call void @exit(i32 1)
  unreachable

choice.then671:                                   ; preds = %unwrap.pos.106
  %var.load673 = load ptr, ptr %var.file_list, align 8
  %a.load674 = load ptr, ptr %var.file_list, align 8
  %a.null675 = icmp eq ptr %a.load674, null
  br i1 %a.null675, label %a.create676, label %a.after677

choice.exit672:                                   ; preds = %a.wr.done746, %unwrap.pos.106
  br label %loop.latch.104

a.create676:                                      ; preds = %choice.then671
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
  store ptr %a.create679, ptr %var.file_list, align 8
  br label %a.after677

a.after677:                                       ; preds = %a.create676, %choice.then671
  %a.load2685 = load ptr, ptr %var.file_list, align 8
  %var.load686 = load i64, ptr %var.j450, align 8
  %var.load687 = load ptr, ptr %var.f2, align 8
  %slot.p2i688 = ptrtoint ptr %var.load687 to i64
  %a.wr.nonnull689 = icmp ne ptr %a.load2685, null
  br i1 %a.wr.nonnull689, label %a.wr.check690, label %a.wr.err.null692

a.wr.check690:                                    ; preds = %a.after677
  %a.wr.len695 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2685, i32 0, i32 0
  %a.wr.len696 = load i64, ptr %a.wr.len695, align 8
  %a.wr.ge0697 = icmp sge i64 %var.load686, 0
  %a.wr.lt698 = icmp slt i64 %var.load686, %a.wr.len696
  %a.wr.bounds699 = and i1 %a.wr.ge0697, %a.wr.lt698
  br i1 %a.wr.bounds699, label %a.wr.ok691, label %a.wr.err.oob693

a.wr.ok691:                                       ; preds = %a.wr.check690
  %a.wr.data700 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2685, i32 0, i32 1
  %a.wr.data701 = load ptr, ptr %a.wr.data700, align 8
  %a.elem.gep702 = getelementptr i64, ptr %a.wr.data701, i64 %var.load686
  store i64 %slot.p2i688, ptr %a.elem.gep702, align 8
  br label %a.wr.done694

a.wr.err.null692:                                 ; preds = %a.after677
  %arena.cur703 = call ptr @dva_arena_current()
  %err.alloc704 = call ptr @dva_arena_alloc(ptr %arena.cur703, i64 56)
  %err.code.gep705 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc704, i32 0, i32 0
  store i64 4011, ptr %err.code.gep705, align 8
  %err.msg.gep706 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc704, i32 0, i32 1
  store ptr @str.17.struct, ptr %err.msg.gep706, align 8
  %err.file.gep707 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc704, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep707, align 8
  %err.line.gep708 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc704, i32 0, i32 3
  store i64 0, ptr %err.line.gep708, align 8
  %err.col.gep709 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc704, i32 0, i32 4
  store i64 0, ptr %err.col.gep709, align 8
  %err.ctx.gep710 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc704, i32 0, i32 5
  %err.ctx0.gep711 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep710, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep711, align 8
  %err.ctx1.gep712 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep710, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep712, align 8
  br label %a.wr.done694

a.wr.err.oob693:                                  ; preds = %a.wr.check690
  %arena.cur713 = call ptr @dva_arena_current()
  %err.alloc714 = call ptr @dva_arena_alloc(ptr %arena.cur713, i64 56)
  %err.code.gep715 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc714, i32 0, i32 0
  store i64 4011, ptr %err.code.gep715, align 8
  %err.msg.gep716 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc714, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep716, align 8
  %err.file.gep717 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc714, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep717, align 8
  %err.line.gep718 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc714, i32 0, i32 3
  store i64 0, ptr %err.line.gep718, align 8
  %err.col.gep719 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc714, i32 0, i32 4
  store i64 0, ptr %err.col.gep719, align 8
  %err.ctx.gep720 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc714, i32 0, i32 5
  %err.ctx0.gep721 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep720, i32 0, i32 0
  store i64 %var.load686, ptr %err.ctx0.gep721, align 8
  %err.ctx1.gep722 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep720, i32 0, i32 1
  store i64 %a.wr.len696, ptr %err.ctx1.gep722, align 8
  br label %a.wr.done694

a.wr.done694:                                     ; preds = %a.wr.err.oob693, %a.wr.err.null692, %a.wr.ok691
  %a.wr.niche723 = phi ptr [ null, %a.wr.ok691 ], [ %err.alloc704, %a.wr.err.null692 ], [ %err.alloc714, %a.wr.err.oob693 ]
  %var.load724 = load ptr, ptr %var.file_list, align 8
  %a.load725 = load ptr, ptr %var.file_list, align 8
  %a.null726 = icmp eq ptr %a.load725, null
  br i1 %a.null726, label %a.create727, label %a.after728

a.create727:                                      ; preds = %a.wr.done694
  %arena.cur729 = call ptr @dva_arena_current()
  %a.create730 = call ptr @dva_arena_alloc(ptr %arena.cur729, i64 24)
  %arena.cur731 = call ptr @dva_arena_current()
  %a.buf732 = call ptr @dva_arena_alloc(ptr %arena.cur731, i64 128)
  %a.len.gep733 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create730, i32 0, i32 0
  store i64 0, ptr %a.len.gep733, align 8
  %a.data.gep734 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create730, i32 0, i32 1
  store ptr %a.buf732, ptr %a.data.gep734, align 8
  %a.cap.gep735 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create730, i32 0, i32 2
  store i64 16, ptr %a.cap.gep735, align 8
  store ptr %a.create730, ptr %var.file_list, align 8
  br label %a.after728

a.after728:                                       ; preds = %a.create727, %a.wr.done694
  %a.load2736 = load ptr, ptr %var.file_list, align 8
  %var.load737 = load i64, ptr %var.j450, align 8
  %addtmp738 = add i64 %var.load737, 1
  %var.load739 = load ptr, ptr %var.f1, align 8
  %slot.p2i740 = ptrtoint ptr %var.load739 to i64
  %a.wr.nonnull741 = icmp ne ptr %a.load2736, null
  br i1 %a.wr.nonnull741, label %a.wr.check742, label %a.wr.err.null744

a.wr.check742:                                    ; preds = %a.after728
  %a.wr.len747 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2736, i32 0, i32 0
  %a.wr.len748 = load i64, ptr %a.wr.len747, align 8
  %a.wr.ge0749 = icmp sge i64 %addtmp738, 0
  %a.wr.lt750 = icmp slt i64 %addtmp738, %a.wr.len748
  %a.wr.bounds751 = and i1 %a.wr.ge0749, %a.wr.lt750
  br i1 %a.wr.bounds751, label %a.wr.ok743, label %a.wr.err.oob745

a.wr.ok743:                                       ; preds = %a.wr.check742
  %a.wr.data752 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2736, i32 0, i32 1
  %a.wr.data753 = load ptr, ptr %a.wr.data752, align 8
  %a.elem.gep754 = getelementptr i64, ptr %a.wr.data753, i64 %addtmp738
  store i64 %slot.p2i740, ptr %a.elem.gep754, align 8
  br label %a.wr.done746

a.wr.err.null744:                                 ; preds = %a.after728
  %arena.cur755 = call ptr @dva_arena_current()
  %err.alloc756 = call ptr @dva_arena_alloc(ptr %arena.cur755, i64 56)
  %err.code.gep757 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc756, i32 0, i32 0
  store i64 4011, ptr %err.code.gep757, align 8
  %err.msg.gep758 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc756, i32 0, i32 1
  store ptr @str.17.struct, ptr %err.msg.gep758, align 8
  %err.file.gep759 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc756, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep759, align 8
  %err.line.gep760 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc756, i32 0, i32 3
  store i64 0, ptr %err.line.gep760, align 8
  %err.col.gep761 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc756, i32 0, i32 4
  store i64 0, ptr %err.col.gep761, align 8
  %err.ctx.gep762 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc756, i32 0, i32 5
  %err.ctx0.gep763 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep762, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep763, align 8
  %err.ctx1.gep764 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep762, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep764, align 8
  br label %a.wr.done746

a.wr.err.oob745:                                  ; preds = %a.wr.check742
  %arena.cur765 = call ptr @dva_arena_current()
  %err.alloc766 = call ptr @dva_arena_alloc(ptr %arena.cur765, i64 56)
  %err.code.gep767 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc766, i32 0, i32 0
  store i64 4011, ptr %err.code.gep767, align 8
  %err.msg.gep768 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc766, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep768, align 8
  %err.file.gep769 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc766, i32 0, i32 2
  store ptr @str.18.struct, ptr %err.file.gep769, align 8
  %err.line.gep770 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc766, i32 0, i32 3
  store i64 0, ptr %err.line.gep770, align 8
  %err.col.gep771 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc766, i32 0, i32 4
  store i64 0, ptr %err.col.gep771, align 8
  %err.ctx.gep772 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc766, i32 0, i32 5
  %err.ctx0.gep773 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep772, i32 0, i32 0
  store i64 %addtmp738, ptr %err.ctx0.gep773, align 8
  %err.ctx1.gep774 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep772, i32 0, i32 1
  store i64 %a.wr.len748, ptr %err.ctx1.gep774, align 8
  br label %a.wr.done746

a.wr.done746:                                     ; preds = %a.wr.err.oob745, %a.wr.err.null744, %a.wr.ok743
  %a.wr.niche775 = phi ptr [ null, %a.wr.ok743 ], [ %err.alloc756, %a.wr.err.null744 ], [ %err.alloc766, %a.wr.err.oob745 ]
  br label %choice.exit672

a.create783:                                      ; preds = %loop.exit.103
  %arena.cur785 = call ptr @dva_arena_current()
  %a.create786 = call ptr @dva_arena_alloc(ptr %arena.cur785, i64 24)
  %arena.cur787 = call ptr @dva_arena_current()
  %a.buf788 = call ptr @dva_arena_alloc(ptr %arena.cur787, i64 128)
  %a.len.gep789 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create786, i32 0, i32 0
  store i64 0, ptr %a.len.gep789, align 8
  %a.data.gep790 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create786, i32 0, i32 1
  store ptr %a.buf788, ptr %a.data.gep790, align 8
  %a.cap.gep791 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create786, i32 0, i32 2
  store i64 16, ptr %a.cap.gep791, align 8
  store ptr %a.create786, ptr %var.dirs, align 8
  br label %a.after784

a.after784:                                       ; preds = %a.create783, %loop.exit.103
  %a.load2792 = load ptr, ptr %var.dirs, align 8
  %arr.cycle.len793 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2792, i32 0, i32 0
  %arr.cycle.len794 = load i64, ptr %arr.cycle.len793, align 8
  %arr.cycle.data795 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2792, i32 0, i32 1
  %arr.cycle.data796 = load ptr, ptr %arr.cycle.data795, align 8
  store i64 0, ptr %loop.idx.107, align 8
  br label %loop.header.107

loop.header.107:                                  ; preds = %loop.latch.107, %a.after784
  %counter.load797 = load i64, ptr %loop.idx.107, align 8
  %loop.cond798 = icmp slt i64 %counter.load797, %arr.cycle.len794
  br i1 %loop.cond798, label %loop.body.107, label %loop.exit.nat.107

loop.body.107:                                    ; preds = %loop.header.107
  %loop.rel.i799 = sub i64 %counter.load797, 0
  store i64 1, ptr %loop.step.107, align 8
  %arr.elem.gep800 = getelementptr i64, ptr %arr.cycle.data796, i64 %counter.load797
  %arr.elem.raw801 = load i64, ptr %arr.elem.gep800, align 8
  %slot.i2p802 = inttoptr i64 %arr.elem.raw801 to ptr
  store i64 %loop.rel.i799, ptr %var._i803, align 8
  store ptr %slot.i2p802, ptr %var._804, align 8
  store ptr %slot.i2p802, ptr %var.dir_item, align 8
  %var.load805 = load ptr, ptr %var.dir_item, align 8
  %a.load806 = load ptr, ptr %var.res, align 8
  %a.null807 = icmp eq ptr %a.load806, null
  br i1 %a.null807, label %a.create808, label %a.after809

loop.exit.nat.107:                                ; preds = %loop.header.107
  br label %loop.exit.107

loop.latch.107:                                   ; preds = %a.store820
  %step.val834 = load i64, ptr %loop.step.107, align 8
  %loop.next835 = add i64 %counter.load797, %step.val834
  store i64 %loop.next835, ptr %loop.idx.107, align 8
  br label %loop.header.107

loop.exit.107:                                    ; preds = %loop.exit.nat.107
  %var.load836 = load ptr, ptr %var.file_list, align 8
  %a.load837 = load ptr, ptr %var.file_list, align 8
  %a.null838 = icmp eq ptr %a.load837, null
  br i1 %a.null838, label %a.create839, label %a.after840

a.create808:                                      ; preds = %loop.body.107
  %arena.cur810 = call ptr @dva_arena_current()
  %a.create811 = call ptr @dva_arena_alloc(ptr %arena.cur810, i64 24)
  %arena.cur812 = call ptr @dva_arena_current()
  %a.buf813 = call ptr @dva_arena_alloc(ptr %arena.cur812, i64 128)
  %a.len.gep814 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create811, i32 0, i32 0
  store i64 0, ptr %a.len.gep814, align 8
  %a.data.gep815 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create811, i32 0, i32 1
  store ptr %a.buf813, ptr %a.data.gep815, align 8
  %a.cap.gep816 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create811, i32 0, i32 2
  store i64 16, ptr %a.cap.gep816, align 8
  store ptr %a.create811, ptr %var.res, align 8
  br label %a.after809

a.after809:                                       ; preds = %a.create808, %loop.body.107
  %a.load2817 = load ptr, ptr %var.res, align 8
  br label %a.check818

a.check818:                                       ; preds = %a.after809
  %a.len821 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2817, i32 0, i32 0
  %a.len822 = load i64, ptr %a.len821, align 8
  %a.cap823 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2817, i32 0, i32 2
  %a.cap824 = load i64, ptr %a.cap823, align 8
  %a.needs.grow825 = icmp eq i64 %a.len822, %a.cap824
  br i1 %a.needs.grow825, label %a.grow819, label %a.store820

a.grow819:                                        ; preds = %a.check818
  call void @dva_array_grow(ptr %a.load2817)
  br label %a.store820

a.store820:                                       ; preds = %a.grow819, %a.check818
  %a.cur.data826 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2817, i32 0, i32 1
  %a.cur.data827 = load ptr, ptr %a.cur.data826, align 8
  %a.cur.len828 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2817, i32 0, i32 0
  %a.cur.len829 = load i64, ptr %a.cur.len828, align 8
  %a.elem.gep830 = getelementptr i64, ptr %a.cur.data827, i64 %a.cur.len829
  %slot.p2i831 = ptrtoint ptr %var.load805 to i64
  store i64 %slot.p2i831, ptr %a.elem.gep830, align 8
  %a.next.len832 = add i64 %a.cur.len829, 1
  %b.len.gep833 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2817, i32 0, i32 0
  store i64 %a.next.len832, ptr %b.len.gep833, align 8
  br label %loop.latch.107

a.create839:                                      ; preds = %loop.exit.107
  %arena.cur841 = call ptr @dva_arena_current()
  %a.create842 = call ptr @dva_arena_alloc(ptr %arena.cur841, i64 24)
  %arena.cur843 = call ptr @dva_arena_current()
  %a.buf844 = call ptr @dva_arena_alloc(ptr %arena.cur843, i64 128)
  %a.len.gep845 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create842, i32 0, i32 0
  store i64 0, ptr %a.len.gep845, align 8
  %a.data.gep846 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create842, i32 0, i32 1
  store ptr %a.buf844, ptr %a.data.gep846, align 8
  %a.cap.gep847 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create842, i32 0, i32 2
  store i64 16, ptr %a.cap.gep847, align 8
  store ptr %a.create842, ptr %var.file_list, align 8
  br label %a.after840

a.after840:                                       ; preds = %a.create839, %loop.exit.107
  %a.load2848 = load ptr, ptr %var.file_list, align 8
  %arr.cycle.len849 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2848, i32 0, i32 0
  %arr.cycle.len850 = load i64, ptr %arr.cycle.len849, align 8
  %arr.cycle.data851 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2848, i32 0, i32 1
  %arr.cycle.data852 = load ptr, ptr %arr.cycle.data851, align 8
  store i64 0, ptr %loop.idx.108, align 8
  br label %loop.header.108

loop.header.108:                                  ; preds = %loop.latch.108, %a.after840
  %counter.load853 = load i64, ptr %loop.idx.108, align 8
  %loop.cond854 = icmp slt i64 %counter.load853, %arr.cycle.len850
  br i1 %loop.cond854, label %loop.body.108, label %loop.exit.nat.108

loop.body.108:                                    ; preds = %loop.header.108
  %loop.rel.i855 = sub i64 %counter.load853, 0
  store i64 1, ptr %loop.step.108, align 8
  %arr.elem.gep856 = getelementptr i64, ptr %arr.cycle.data852, i64 %counter.load853
  %arr.elem.raw857 = load i64, ptr %arr.elem.gep856, align 8
  %slot.i2p858 = inttoptr i64 %arr.elem.raw857 to ptr
  store i64 %loop.rel.i855, ptr %var._i859, align 8
  store ptr %slot.i2p858, ptr %var._860, align 8
  store ptr %slot.i2p858, ptr %var.file_item, align 8
  %var.load861 = load ptr, ptr %var.file_item, align 8
  %a.load862 = load ptr, ptr %var.res, align 8
  %a.null863 = icmp eq ptr %a.load862, null
  br i1 %a.null863, label %a.create864, label %a.after865

loop.exit.nat.108:                                ; preds = %loop.header.108
  br label %loop.exit.108

loop.latch.108:                                   ; preds = %a.store876
  %step.val890 = load i64, ptr %loop.step.108, align 8
  %loop.next891 = add i64 %counter.load853, %step.val890
  store i64 %loop.next891, ptr %loop.idx.108, align 8
  br label %loop.header.108

loop.exit.108:                                    ; preds = %loop.exit.nat.108
  %var.load892 = load ptr, ptr %var.res, align 8
  %a.load893 = load ptr, ptr %var.res, align 8
  %a.null894 = icmp eq ptr %a.load893, null
  br i1 %a.null894, label %a.create895, label %a.after896

a.create864:                                      ; preds = %loop.body.108
  %arena.cur866 = call ptr @dva_arena_current()
  %a.create867 = call ptr @dva_arena_alloc(ptr %arena.cur866, i64 24)
  %arena.cur868 = call ptr @dva_arena_current()
  %a.buf869 = call ptr @dva_arena_alloc(ptr %arena.cur868, i64 128)
  %a.len.gep870 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create867, i32 0, i32 0
  store i64 0, ptr %a.len.gep870, align 8
  %a.data.gep871 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create867, i32 0, i32 1
  store ptr %a.buf869, ptr %a.data.gep871, align 8
  %a.cap.gep872 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create867, i32 0, i32 2
  store i64 16, ptr %a.cap.gep872, align 8
  store ptr %a.create867, ptr %var.res, align 8
  br label %a.after865

a.after865:                                       ; preds = %a.create864, %loop.body.108
  %a.load2873 = load ptr, ptr %var.res, align 8
  br label %a.check874

a.check874:                                       ; preds = %a.after865
  %a.len877 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2873, i32 0, i32 0
  %a.len878 = load i64, ptr %a.len877, align 8
  %a.cap879 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2873, i32 0, i32 2
  %a.cap880 = load i64, ptr %a.cap879, align 8
  %a.needs.grow881 = icmp eq i64 %a.len878, %a.cap880
  br i1 %a.needs.grow881, label %a.grow875, label %a.store876

a.grow875:                                        ; preds = %a.check874
  call void @dva_array_grow(ptr %a.load2873)
  br label %a.store876

a.store876:                                       ; preds = %a.grow875, %a.check874
  %a.cur.data882 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2873, i32 0, i32 1
  %a.cur.data883 = load ptr, ptr %a.cur.data882, align 8
  %a.cur.len884 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2873, i32 0, i32 0
  %a.cur.len885 = load i64, ptr %a.cur.len884, align 8
  %a.elem.gep886 = getelementptr i64, ptr %a.cur.data883, i64 %a.cur.len885
  %slot.p2i887 = ptrtoint ptr %var.load861 to i64
  store i64 %slot.p2i887, ptr %a.elem.gep886, align 8
  %a.next.len888 = add i64 %a.cur.len885, 1
  %b.len.gep889 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2873, i32 0, i32 0
  store i64 %a.next.len888, ptr %b.len.gep889, align 8
  br label %loop.latch.108

a.create895:                                      ; preds = %loop.exit.108
  %arena.cur897 = call ptr @dva_arena_current()
  %a.create898 = call ptr @dva_arena_alloc(ptr %arena.cur897, i64 24)
  %arena.cur899 = call ptr @dva_arena_current()
  %a.buf900 = call ptr @dva_arena_alloc(ptr %arena.cur899, i64 128)
  %a.len.gep901 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create898, i32 0, i32 0
  store i64 0, ptr %a.len.gep901, align 8
  %a.data.gep902 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create898, i32 0, i32 1
  store ptr %a.buf900, ptr %a.data.gep902, align 8
  %a.cap.gep903 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create898, i32 0, i32 2
  store i64 16, ptr %a.cap.gep903, align 8
  store ptr %a.create898, ptr %var.res, align 8
  br label %a.after896

a.after896:                                       ; preds = %a.create895, %loop.exit.108
  %a.load2904 = load ptr, ptr %var.res, align 8
  ret ptr %a.load2904
}

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
