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
@"var.main::empty_fndef" = external global ptr
@"var.stmt::empty_fndef" = external global ptr
@"var.match::empty_fndef" = external global ptr
@"var.expr::empty_fndef" = external global ptr
@"var.runtime::empty_fndef" = external global ptr
@"var.types::codegen_layout" = external global ptr
@"var.ast::cell_var_names" = external global ptr
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
@"var.path::SEP" = external global i32
@"var.path::SEP_STR" = external global ptr
@"var.path::LIST_SEP" = external global i32
@"var.path::LIST_SEP_STR" = external global ptr
@"var.path::IS_WIN" = external global i1
@"var.time::CLOCK_REALTIME" = external global i64
@"var.time::CLOCK_MONOTONIC" = external global i64
@"var.time::NS_PER_US" = external global i64
@"var.time::NS_PER_MS" = external global i64
@"var.time::NS_PER_SEC" = external global i64
@"var.time::SEC_PER_MIN" = external global i64
@"var.time::SEC_PER_HOUR" = external global i64
@"var.time::SEC_PER_DAY" = external global i64
@"var.types::empty_fndef" = external global ptr
@"var.types::g" = external global ptr
@clo.const = internal constant { ptr, ptr } { ptr @"codegen::default_codegen_opts", ptr null }
@"var.codegen::default_codegen_opts" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"codegen::decl_bare_name", ptr null }
@"var.codegen::decl_bare_name" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"codegen::codegen_typed_program_opts", ptr null }
@"var.codegen::codegen_typed_program_opts" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_codegen, ptr null }]

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

define internal void @__dva_global_init_codegen() #1 {
entry:
  store ptr @clo.const, ptr @"var.codegen::default_codegen_opts", align 8
  store ptr @clo.const.1, ptr @"var.codegen::decl_bare_name", align 8
  store ptr @clo.const.2, ptr @"var.codegen::codegen_typed_program_opts", align 8
  ret void
}

declare ptr @LLVMModuleCreateWithName(ptr)

declare void @LLVMDisposeModule(ptr)

declare i64 @LLVMPrintModuleToFile(ptr, ptr, ptr)

declare void @LLVMDisposeMessage(ptr)

declare i64 @LLVMVerifyModule(ptr, i64, ptr)

declare ptr @LLVMCreateBuilder()

declare void @LLVMDisposeBuilder(ptr)

declare ptr @LLVMVoidType()

declare ptr @LLVMInt64Type()

declare ptr @LLVMInt32Type()

declare ptr @LLVMInt16Type()

declare ptr @LLVMInt8Type()

declare ptr @LLVMInt1Type()

declare ptr @LLVMDoubleType()

declare ptr @LLVMFloatType()

declare ptr @LLVMPointerType(ptr, i64)

declare ptr @LLVMArrayType(ptr, i64)

declare ptr @LLVMStructType(ptr, i64, i64)

declare ptr @LLVMStructGetTypeAtIndex(ptr, i64)

declare i64 @LLVMCountStructElementTypes(ptr)

declare ptr @LLVMSizeOf(ptr)

declare ptr @LLVMFunctionType(ptr, ptr, i64, i64)

declare ptr @LLVMAddFunction(ptr, ptr, ptr)

declare ptr @LLVMGetParam(ptr, i64)

declare i64 @LLVMCountParams(ptr)

declare ptr @LLVMGetNamedFunction(ptr, ptr)

declare ptr @LLVMAppendBasicBlock(ptr, ptr)

declare void @LLVMPositionBuilderAtEnd(ptr, ptr)

declare ptr @LLVMConstNull(ptr)

declare ptr @LLVMConstInt(ptr, i64, i64)

declare i64 @LLVMIsConstant(ptr)

declare i64 @LLVMConstIntGetZExtValue(ptr)

declare ptr @LLVMConstReal(ptr, double)

declare ptr @LLVMConstString(ptr, i64, i64)

declare ptr @LLVMConstGEP2(ptr, ptr, ptr, i64)

declare ptr @LLVMConstStruct(ptr, i64, i64)

declare ptr @LLVMConstArray2(ptr, ptr, i64)

declare ptr @LLVMConstPtrToInt(ptr, ptr)

declare ptr @LLVMConstPointerCast(ptr, ptr)

declare ptr @LLVMConstAdd(ptr, ptr)

declare ptr @LLVMAddGlobal(ptr, ptr, ptr)

declare ptr @LLVMGetNamedGlobal(ptr, ptr)

declare void @LLVMSetInitializer(ptr, ptr)

declare void @LLVMSetGlobalConstant(ptr, i64)

declare void @LLVMSetUnnamedAddr(ptr, i64)

declare void @LLVMSetLinkage(ptr, i64)

declare void @LLVMSetSection(ptr, ptr)

declare void @LLVMSetThreadLocal(ptr, i64)

declare ptr @LLVMBuildAlloca(ptr, ptr, ptr)

declare ptr @LLVMBuildStore(ptr, ptr, ptr)

declare void @LLVMSetAlignment(ptr, i64)

declare ptr @LLVMConstVector(ptr, i64)

declare ptr @LLVMBuildInsertElement(ptr, ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildExtractElement(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildShuffleVector(ptr, ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildLoad2(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildGEP2(ptr, ptr, ptr, ptr, i64, ptr)

declare ptr @LLVMBuildStructGEP2(ptr, ptr, ptr, i64, ptr)

declare ptr @LLVMBuildCall2(ptr, ptr, ptr, ptr, i64, ptr)

declare ptr @LLVMBuildAdd(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildSub(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildMul(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildSDiv(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildUDiv(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildSRem(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildURem(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildFAdd(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildFSub(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildFMul(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildFDiv(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildFRem(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildICmp(ptr, i64, ptr, ptr, ptr)

declare ptr @LLVMBuildAnd(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildOr(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildXor(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildShl(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildLShr(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildFCmp(ptr, i64, ptr, ptr, ptr)

declare i64 @LLVMCanValueUseFastMathFlags(ptr)

declare i64 @LLVMGetFastMathFlags(ptr)

declare void @LLVMSetFastMathFlags(ptr, i64)

declare ptr @LLVMBuildSIToFP(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildUIToFP(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildFPToSI(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildFPToUI(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildFPTrunc(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildFPExt(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildSelect(ptr, ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildBr(ptr, ptr)

declare ptr @LLVMBuildCondBr(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildPhi(ptr, ptr, ptr)

declare void @LLVMAddIncoming(ptr, ptr, ptr, i64)

declare ptr @LLVMBuildSwitch(ptr, ptr, ptr, i64)

declare void @LLVMAddCase(ptr, ptr, ptr)

declare ptr @LLVMGetInsertBlock(ptr)

declare ptr @LLVMGetBasicBlockParent(ptr)

declare ptr @LLVMGetBasicBlockTerminator(ptr)

declare ptr @LLVMBuildRet(ptr, ptr)

declare ptr @LLVMBuildRetVoid(ptr)

declare ptr @LLVMBuildUnreachable(ptr)

declare ptr @LLVMBuildSExt(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildZExt(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildPointerCast(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildIntToPtr(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildPtrToInt(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildTrunc(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildBitCast(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildMemCpy(ptr, ptr, i64, ptr, i64, ptr, i64)

declare ptr @LLVMBuildMemMove(ptr, ptr, i64, ptr, i64, ptr, i64)

declare ptr @LLVMBuildMemSet(ptr, ptr, ptr, ptr, i64)

declare ptr @LLVMBuildExtractValue(ptr, ptr, i64, ptr)

declare ptr @LLVMBuildInsertValue(ptr, ptr, ptr, i64, ptr)

declare ptr @LLVMTypeOf(ptr)

declare void @LLVMSetVolatile(ptr, i64)

declare i64 @LLVMGetIntTypeWidth(ptr)

declare ptr @LLVMBuildNot(ptr, ptr, ptr)

declare ptr @LLVMBuildNeg(ptr, ptr, ptr)

declare ptr @LLVMBuildFNeg(ptr, ptr, ptr)

declare i64 @LLVMGetTypeKind(ptr)

declare ptr @LLVMGetEntryBasicBlock(ptr)

declare ptr @LLVMGetFirstInstruction(ptr)

declare void @LLVMPositionBuilderBefore(ptr, ptr)

declare void @LLVMDisposeTargetData(ptr)

declare i64 @LLVMABISizeOfType(ptr, ptr)

declare i64 @LLVMABIAlignmentOfType(ptr, ptr)

declare void @LLVMSetDataLayout(ptr, ptr)

declare void @LLVMSetTarget(ptr, ptr)

declare ptr @LLVMGetDefaultTargetTriple()

declare i64 @LLVMGetTargetFromTriple(ptr, ptr, ptr)

declare ptr @LLVMCreateTargetMachine(ptr, ptr, ptr, ptr, i64, i64, i64)

declare void @LLVMDisposeTargetMachine(ptr)

declare ptr @LLVMCreateTargetDataLayout(ptr)

declare ptr @LLVMCopyStringRepOfTargetData(ptr)

declare void @LLVMInitializeAArch64Target()

declare void @LLVMInitializeAArch64TargetInfo()

declare void @LLVMInitializeAArch64TargetMC()

declare void @LLVMInitializeAMDGPUTarget()

declare void @LLVMInitializeAMDGPUTargetInfo()

declare void @LLVMInitializeAMDGPUTargetMC()

declare void @LLVMInitializeARMTarget()

declare void @LLVMInitializeARMTargetInfo()

declare void @LLVMInitializeARMTargetMC()

declare void @LLVMInitializeAVRTarget()

declare void @LLVMInitializeAVRTargetInfo()

declare void @LLVMInitializeAVRTargetMC()

declare void @LLVMInitializeBPFTarget()

declare void @LLVMInitializeBPFTargetInfo()

declare void @LLVMInitializeBPFTargetMC()

declare void @LLVMInitializeHexagonTarget()

declare void @LLVMInitializeHexagonTargetInfo()

declare void @LLVMInitializeHexagonTargetMC()

declare void @LLVMInitializeLanaiTarget()

declare void @LLVMInitializeLanaiTargetInfo()

declare void @LLVMInitializeLanaiTargetMC()

declare void @LLVMInitializeLoongArchTarget()

declare void @LLVMInitializeLoongArchTargetInfo()

declare void @LLVMInitializeLoongArchTargetMC()

declare void @LLVMInitializeMipsTarget()

declare void @LLVMInitializeMipsTargetInfo()

declare void @LLVMInitializeMipsTargetMC()

declare void @LLVMInitializeMSP430Target()

declare void @LLVMInitializeMSP430TargetInfo()

declare void @LLVMInitializeMSP430TargetMC()

declare void @LLVMInitializeNVPTXTarget()

declare void @LLVMInitializeNVPTXTargetInfo()

declare void @LLVMInitializeNVPTXTargetMC()

declare void @LLVMInitializePowerPCTarget()

declare void @LLVMInitializePowerPCTargetInfo()

declare void @LLVMInitializePowerPCTargetMC()

declare void @LLVMInitializeRISCVTarget()

declare void @LLVMInitializeRISCVTargetInfo()

declare void @LLVMInitializeRISCVTargetMC()

declare void @LLVMInitializeSparcTarget()

declare void @LLVMInitializeSparcTargetInfo()

declare void @LLVMInitializeSparcTargetMC()

declare void @LLVMInitializeSystemZTarget()

declare void @LLVMInitializeSystemZTargetInfo()

declare void @LLVMInitializeSystemZTargetMC()

declare void @LLVMInitializeVETarget()

declare void @LLVMInitializeVETargetInfo()

declare void @LLVMInitializeVETargetMC()

declare void @LLVMInitializeWebAssemblyTarget()

declare void @LLVMInitializeWebAssemblyTargetInfo()

declare void @LLVMInitializeWebAssemblyTargetMC()

declare void @LLVMInitializeX86Target()

declare void @LLVMInitializeX86TargetInfo()

declare void @LLVMInitializeX86TargetMC()

declare void @LLVMInitializeXCoreTarget()

declare void @LLVMInitializeXCoreTargetInfo()

declare void @LLVMInitializeXCoreTargetMC()

declare void @LLVMInitializeAArch64AsmPrinter()

declare void @LLVMInitializeAMDGPUAsmPrinter()

declare void @LLVMInitializeARMAsmPrinter()

declare void @LLVMInitializeAVRAsmPrinter()

declare void @LLVMInitializeBPFAsmPrinter()

declare void @LLVMInitializeHexagonAsmPrinter()

declare void @LLVMInitializeLanaiAsmPrinter()

declare void @LLVMInitializeLoongArchAsmPrinter()

declare void @LLVMInitializeMipsAsmPrinter()

declare void @LLVMInitializeMSP430AsmPrinter()

declare void @LLVMInitializeNVPTXAsmPrinter()

declare void @LLVMInitializePowerPCAsmPrinter()

declare void @LLVMInitializeRISCVAsmPrinter()

declare void @LLVMInitializeSparcAsmPrinter()

declare void @LLVMInitializeSystemZAsmPrinter()

declare void @LLVMInitializeVEAsmPrinter()

declare void @LLVMInitializeWebAssemblyAsmPrinter()

declare void @LLVMInitializeX86AsmPrinter()

declare void @LLVMInitializeXCoreAsmPrinter()

declare ptr @LLVMOrcCreateLLJITBuilder()

declare void @LLVMOrcDisposeLLJITBuilder(ptr)

declare ptr @LLVMOrcCreateLLJIT(ptr, ptr)

declare ptr @LLVMOrcDisposeLLJIT(ptr)

declare ptr @LLVMOrcLLJITGetMainJITDylib(ptr)

declare ptr @LLVMOrcLLJITAddLLVMIRModule(ptr, ptr, ptr)

declare ptr @LLVMOrcLLJITLookup(ptr, ptr, ptr)

declare ptr @LLVMOrcCreateNewThreadSafeContext()

declare void @LLVMOrcDisposeThreadSafeContext(ptr)

declare ptr @LLVMOrcCreateNewThreadSafeModule(ptr, ptr)

declare void @LLVMOrcDisposeThreadSafeModule(ptr)

declare ptr @LLVMOrcCreateDynamicLibrarySearchGeneratorForProcess(ptr, i64, ptr, ptr)

declare void @LLVMOrcJITDylibAddGenerator(ptr, ptr)

declare ptr @LLVMGetErrorMessage(ptr)

declare void @LLVMDisposeErrorMessage(ptr)

declare void @LLVMConsumeError(ptr)

declare ptr @LLVMGetGlobalContext()

declare ptr @LLVMCreateStringAttribute(ptr, ptr, i64, ptr, i64)

declare void @LLVMAddAttributeAtIndex(ptr, i64, ptr)

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

define ptr @"codegen::default_codegen_opts"() #1 {
entry:
  %call.res = call ptr @"types::default_codegen_opts"()
  ret ptr %call.res
}

declare ptr @"types::default_codegen_opts"() #1

define ptr @"codegen::decl_bare_name"(ptr %0, i64 %1) #1 {
entry:
  %var.i = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.i, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %var.load1 = load i64, ptr %var.i, align 8
  %call.res = call ptr @"types::decl_bare_name"(ptr %var.load, i64 %var.load1)
  ret ptr %call.res
}

declare ptr @"types::decl_bare_name"(ptr, i64) #1

define i64 @"codegen::codegen_typed_program_opts"(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5) #1 {
entry:
  %var.opts = alloca ptr, align 8
  %var.src_file = alloca ptr, align 8
  %var.exports = alloca ptr, align 8
  %var.out_path = alloca ptr, align 8
  %var.raw = alloca ptr, align 8
  %var.prog = alloca ptr, align 8
  store ptr %0, ptr %var.prog, align 8
  store ptr %1, ptr %var.raw, align 8
  store ptr %2, ptr %var.out_path, align 8
  store ptr %3, ptr %var.exports, align 8
  store ptr %4, ptr %var.src_file, align 8
  store ptr %5, ptr %var.opts, align 8
  %var.load = load ptr, ptr %var.prog, align 8
  %a.load = load ptr, ptr %var.prog, align 8
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
  store ptr %a.create1, ptr %var.prog, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.prog, align 8
  %var.load3 = load ptr, ptr %var.raw, align 8
  %var.load4 = load ptr, ptr %var.out_path, align 8
  %var.load5 = load ptr, ptr %var.exports, align 8
  %a.load6 = load ptr, ptr %var.exports, align 8
  %a.null7 = icmp eq ptr %a.load6, null
  br i1 %a.null7, label %a.create8, label %a.after9

a.create8:                                        ; preds = %a.after
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
  store ptr %a.create11, ptr %var.exports, align 8
  br label %a.after9

a.after9:                                         ; preds = %a.create8, %a.after
  %a.load217 = load ptr, ptr %var.exports, align 8
  %var.load18 = load ptr, ptr %var.src_file, align 8
  %var.load19 = load ptr, ptr %var.opts, align 8
  %call.res = call i64 @"main::codegen_typed_program_opts"(ptr %a.load2, ptr %var.load3, ptr %var.load4, ptr %a.load217, ptr %var.load18, ptr %var.load19)
  ret i64 %call.res
}

declare i64 @"main::codegen_typed_program_opts"(ptr, ptr, ptr, ptr, ptr, ptr) #1

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
