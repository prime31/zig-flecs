pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_longlong;
pub const __uint64_t = c_ulonglong;
pub const __darwin_intptr_t = c_long;
pub const __darwin_natural_t = c_uint;
pub const __darwin_ct_rune_t = c_int;
const union_unnamed_1 = extern union {
    __mbstate8: [128]u8,
    _mbstateL: c_longlong,
};
pub const __mbstate_t = union_unnamed_1;
pub const __darwin_mbstate_t = __mbstate_t;
pub const __darwin_ptrdiff_t = c_long;
pub const __darwin_size_t = c_ulong;
pub const __darwin_va_list = __builtin_va_list;
pub const __darwin_wchar_t = c_int;
pub const __darwin_rune_t = __darwin_wchar_t;
pub const __darwin_wint_t = c_int;
pub const __darwin_clock_t = c_ulong;
pub const __darwin_socklen_t = __uint32_t;
pub const __darwin_ssize_t = c_long;
pub const __darwin_time_t = c_long;
pub const __darwin_blkcnt_t = __int64_t;
pub const __darwin_blksize_t = __int32_t;
pub const __darwin_dev_t = __int32_t;
pub const __darwin_fsblkcnt_t = c_uint;
pub const __darwin_fsfilcnt_t = c_uint;
pub const __darwin_gid_t = __uint32_t;
pub const __darwin_id_t = __uint32_t;
pub const __darwin_ino64_t = __uint64_t;
pub const __darwin_ino_t = __darwin_ino64_t;
pub const __darwin_mach_port_name_t = __darwin_natural_t;
pub const __darwin_mach_port_t = __darwin_mach_port_name_t;
pub const __darwin_mode_t = __uint16_t;
pub const __darwin_off_t = __int64_t;
pub const __darwin_pid_t = __int32_t;
pub const __darwin_sigset_t = __uint32_t;
pub const __darwin_suseconds_t = __int32_t;
pub const __darwin_uid_t = __uint32_t;
pub const __darwin_useconds_t = __uint32_t;
pub const __darwin_uuid_t = [16]u8;
pub const __darwin_uuid_string_t = [37]u8;
pub const struct___darwin_pthread_handler_rec = extern struct {
    __routine: ?fn (?*c_void) callconv(.C) void,
    __arg: ?*c_void,
    __next: [*c]struct___darwin_pthread_handler_rec,
};
pub const struct__opaque_pthread_attr_t = extern struct {
    __sig: c_long,
    __opaque: [56]u8,
};
pub const struct__opaque_pthread_cond_t = extern struct {
    __sig: c_long,
    __opaque: [40]u8,
};
pub const struct__opaque_pthread_condattr_t = extern struct {
    __sig: c_long,
    __opaque: [8]u8,
};
pub const struct__opaque_pthread_mutex_t = extern struct {
    __sig: c_long,
    __opaque: [56]u8,
};
pub const struct__opaque_pthread_mutexattr_t = extern struct {
    __sig: c_long,
    __opaque: [8]u8,
};
pub const struct__opaque_pthread_once_t = extern struct {
    __sig: c_long,
    __opaque: [8]u8,
};
pub const struct__opaque_pthread_rwlock_t = extern struct {
    __sig: c_long,
    __opaque: [192]u8,
};
pub const struct__opaque_pthread_rwlockattr_t = extern struct {
    __sig: c_long,
    __opaque: [16]u8,
};
pub const struct__opaque_pthread_t = extern struct {
    __sig: c_long,
    __cleanup_stack: [*c]struct___darwin_pthread_handler_rec,
    __opaque: [8176]u8,
};
pub const __darwin_pthread_attr_t = struct__opaque_pthread_attr_t;
pub const __darwin_pthread_cond_t = struct__opaque_pthread_cond_t;
pub const __darwin_pthread_condattr_t = struct__opaque_pthread_condattr_t;
pub const __darwin_pthread_key_t = c_ulong;
pub const __darwin_pthread_mutex_t = struct__opaque_pthread_mutex_t;
pub const __darwin_pthread_mutexattr_t = struct__opaque_pthread_mutexattr_t;
pub const __darwin_pthread_once_t = struct__opaque_pthread_once_t;
pub const __darwin_pthread_rwlock_t = struct__opaque_pthread_rwlock_t;
pub const __darwin_pthread_rwlockattr_t = struct__opaque_pthread_rwlockattr_t;
pub const __darwin_pthread_t = [*c]struct__opaque_pthread_t;
pub const __darwin_nl_item = c_int;
pub const __darwin_wctrans_t = c_int;
pub const __darwin_wctype_t = __uint32_t;
pub const u_int8_t = u8;
pub const u_int16_t = c_ushort;
pub const u_int32_t = c_uint;
pub const u_int64_t = c_ulonglong;
pub const register_t = i64;
pub const user_addr_t = u_int64_t;
pub const user_size_t = u_int64_t;
pub const user_ssize_t = i64;
pub const user_long_t = i64;
pub const user_ulong_t = u_int64_t;
pub const user_time_t = i64;
pub const user_off_t = i64;
pub const syscall_arg_t = u_int64_t;
pub const clock_t = __darwin_clock_t;
pub const time_t = __darwin_time_t;
pub const struct_timespec = extern struct {
    tv_sec: __darwin_time_t,
    tv_nsec: c_long,
};
pub const struct_tm = extern struct {
    tm_sec: c_int,
    tm_min: c_int,
    tm_hour: c_int,
    tm_mday: c_int,
    tm_mon: c_int,
    tm_year: c_int,
    tm_wday: c_int,
    tm_yday: c_int,
    tm_isdst: c_int,
    tm_gmtoff: c_long,
    tm_zone: [*c]u8,
};
pub extern var tzname: [*c][*c]u8;
pub extern var getdate_err: c_int;
pub extern var timezone: c_long;
pub extern var daylight: c_int;
pub extern fn asctime([*c]const struct_tm) [*c]u8;
pub extern fn clock() clock_t;
pub extern fn ctime([*c]const time_t) [*c]u8;
pub extern fn difftime(time_t, time_t) f64;
pub extern fn getdate([*c]const u8) [*c]struct_tm;
pub extern fn gmtime([*c]const time_t) [*c]struct_tm;
pub extern fn localtime([*c]const time_t) [*c]struct_tm;
pub extern fn mktime([*c]struct_tm) time_t;
pub extern fn strftime(noalias [*c]u8, usize, noalias [*c]const u8, noalias [*c]const struct_tm) usize;
pub extern fn strptime(noalias [*c]const u8, noalias [*c]const u8, noalias [*c]struct_tm) [*c]u8;
pub extern fn time([*c]time_t) time_t;
pub extern fn tzset() void;
pub extern fn asctime_r(noalias [*c]const struct_tm, noalias [*c]u8) [*c]u8;
pub extern fn ctime_r([*c]const time_t, [*c]u8) [*c]u8;
pub extern fn gmtime_r(noalias [*c]const time_t, noalias [*c]struct_tm) [*c]struct_tm;
pub extern fn localtime_r(noalias [*c]const time_t, noalias [*c]struct_tm) [*c]struct_tm;
pub extern fn posix2time(time_t) time_t;
pub extern fn tzsetwall() void;
pub extern fn time2posix(time_t) time_t;
pub extern fn timelocal([*c]struct_tm) time_t;
pub extern fn timegm([*c]struct_tm) time_t;
pub extern fn nanosleep(__rqtp: [*c]const struct_timespec, __rmtp: [*c]struct_timespec) c_int;
pub const _CLOCK_REALTIME = @enumToInt(enum_unnamed_2._CLOCK_REALTIME);
pub const _CLOCK_MONOTONIC = @enumToInt(enum_unnamed_2._CLOCK_MONOTONIC);
pub const _CLOCK_MONOTONIC_RAW = @enumToInt(enum_unnamed_2._CLOCK_MONOTONIC_RAW);
pub const _CLOCK_MONOTONIC_RAW_APPROX = @enumToInt(enum_unnamed_2._CLOCK_MONOTONIC_RAW_APPROX);
pub const _CLOCK_UPTIME_RAW = @enumToInt(enum_unnamed_2._CLOCK_UPTIME_RAW);
pub const _CLOCK_UPTIME_RAW_APPROX = @enumToInt(enum_unnamed_2._CLOCK_UPTIME_RAW_APPROX);
pub const _CLOCK_PROCESS_CPUTIME_ID = @enumToInt(enum_unnamed_2._CLOCK_PROCESS_CPUTIME_ID);
pub const _CLOCK_THREAD_CPUTIME_ID = @enumToInt(enum_unnamed_2._CLOCK_THREAD_CPUTIME_ID);
const enum_unnamed_2 = extern enum(c_int) {
    _CLOCK_REALTIME = 0,
    _CLOCK_MONOTONIC = 6,
    _CLOCK_MONOTONIC_RAW = 4,
    _CLOCK_MONOTONIC_RAW_APPROX = 5,
    _CLOCK_UPTIME_RAW = 8,
    _CLOCK_UPTIME_RAW_APPROX = 9,
    _CLOCK_PROCESS_CPUTIME_ID = 12,
    _CLOCK_THREAD_CPUTIME_ID = 16,
    _,
};
pub const clockid_t = enum_unnamed_2;
pub extern fn clock_getres(__clock_id: clockid_t, __res: [*c]struct_timespec) c_int;
pub extern fn clock_gettime(__clock_id: clockid_t, __tp: [*c]struct_timespec) c_int;
pub extern fn clock_gettime_nsec_np(__clock_id: clockid_t) __uint64_t;
pub extern fn clock_settime(__clock_id: clockid_t, __tp: [*c]const struct_timespec) c_int;
pub extern fn timespec_get(ts: [*c]struct_timespec, base: c_int) c_int;
pub const P_ALL = @enumToInt(enum_unnamed_3.P_ALL);
pub const P_PID = @enumToInt(enum_unnamed_3.P_PID);
pub const P_PGID = @enumToInt(enum_unnamed_3.P_PGID);
const enum_unnamed_3 = extern enum(c_int) {
    P_ALL,
    P_PID,
    P_PGID,
    _,
};
pub const idtype_t = enum_unnamed_3;
pub const pid_t = __darwin_pid_t;
pub const id_t = __darwin_id_t;
pub const sig_atomic_t = c_int;
pub const struct___darwin_i386_thread_state = extern struct {
    __eax: c_uint,
    __ebx: c_uint,
    __ecx: c_uint,
    __edx: c_uint,
    __edi: c_uint,
    __esi: c_uint,
    __ebp: c_uint,
    __esp: c_uint,
    __ss: c_uint,
    __eflags: c_uint,
    __eip: c_uint,
    __cs: c_uint,
    __ds: c_uint,
    __es: c_uint,
    __fs: c_uint,
    __gs: c_uint,
};
pub const struct___darwin_fp_control = @Type(.Opaque); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h:94:21: warning: struct demoted to opaque type - has bitfield
pub const __darwin_fp_control_t = struct___darwin_fp_control;
pub const struct___darwin_fp_status = @Type(.Opaque); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h:152:21: warning: struct demoted to opaque type - has bitfield
pub const __darwin_fp_status_t = struct___darwin_fp_status;
pub const struct___darwin_mmst_reg = extern struct {
    __mmst_reg: [10]u8,
    __mmst_rsrv: [6]u8,
};
pub const struct___darwin_xmm_reg = extern struct {
    __xmm_reg: [16]u8,
};
pub const struct___darwin_ymm_reg = extern struct {
    __ymm_reg: [32]u8,
};
pub const struct___darwin_zmm_reg = extern struct {
    __zmm_reg: [64]u8,
};
pub const struct___darwin_opmask_reg = extern struct {
    __opmask_reg: [8]u8,
};
pub const struct___darwin_i386_float_state = extern struct {
    __fpu_reserved: [2]c_int,
    __fpu_fcw: struct___darwin_fp_control,
    __fpu_fsw: struct___darwin_fp_status,
    __fpu_ftw: __uint8_t,
    __fpu_rsrv1: __uint8_t,
    __fpu_fop: __uint16_t,
    __fpu_ip: __uint32_t,
    __fpu_cs: __uint16_t,
    __fpu_rsrv2: __uint16_t,
    __fpu_dp: __uint32_t,
    __fpu_ds: __uint16_t,
    __fpu_rsrv3: __uint16_t,
    __fpu_mxcsr: __uint32_t,
    __fpu_mxcsrmask: __uint32_t,
    __fpu_stmm0: struct___darwin_mmst_reg,
    __fpu_stmm1: struct___darwin_mmst_reg,
    __fpu_stmm2: struct___darwin_mmst_reg,
    __fpu_stmm3: struct___darwin_mmst_reg,
    __fpu_stmm4: struct___darwin_mmst_reg,
    __fpu_stmm5: struct___darwin_mmst_reg,
    __fpu_stmm6: struct___darwin_mmst_reg,
    __fpu_stmm7: struct___darwin_mmst_reg,
    __fpu_xmm0: struct___darwin_xmm_reg,
    __fpu_xmm1: struct___darwin_xmm_reg,
    __fpu_xmm2: struct___darwin_xmm_reg,
    __fpu_xmm3: struct___darwin_xmm_reg,
    __fpu_xmm4: struct___darwin_xmm_reg,
    __fpu_xmm5: struct___darwin_xmm_reg,
    __fpu_xmm6: struct___darwin_xmm_reg,
    __fpu_xmm7: struct___darwin_xmm_reg,
    __fpu_rsrv4: [224]u8,
    __fpu_reserved1: c_int,
};
pub const struct___darwin_i386_avx_state = extern struct {
    __fpu_reserved: [2]c_int,
    __fpu_fcw: struct___darwin_fp_control,
    __fpu_fsw: struct___darwin_fp_status,
    __fpu_ftw: __uint8_t,
    __fpu_rsrv1: __uint8_t,
    __fpu_fop: __uint16_t,
    __fpu_ip: __uint32_t,
    __fpu_cs: __uint16_t,
    __fpu_rsrv2: __uint16_t,
    __fpu_dp: __uint32_t,
    __fpu_ds: __uint16_t,
    __fpu_rsrv3: __uint16_t,
    __fpu_mxcsr: __uint32_t,
    __fpu_mxcsrmask: __uint32_t,
    __fpu_stmm0: struct___darwin_mmst_reg,
    __fpu_stmm1: struct___darwin_mmst_reg,
    __fpu_stmm2: struct___darwin_mmst_reg,
    __fpu_stmm3: struct___darwin_mmst_reg,
    __fpu_stmm4: struct___darwin_mmst_reg,
    __fpu_stmm5: struct___darwin_mmst_reg,
    __fpu_stmm6: struct___darwin_mmst_reg,
    __fpu_stmm7: struct___darwin_mmst_reg,
    __fpu_xmm0: struct___darwin_xmm_reg,
    __fpu_xmm1: struct___darwin_xmm_reg,
    __fpu_xmm2: struct___darwin_xmm_reg,
    __fpu_xmm3: struct___darwin_xmm_reg,
    __fpu_xmm4: struct___darwin_xmm_reg,
    __fpu_xmm5: struct___darwin_xmm_reg,
    __fpu_xmm6: struct___darwin_xmm_reg,
    __fpu_xmm7: struct___darwin_xmm_reg,
    __fpu_rsrv4: [224]u8,
    __fpu_reserved1: c_int,
    __avx_reserved1: [64]u8,
    __fpu_ymmh0: struct___darwin_xmm_reg,
    __fpu_ymmh1: struct___darwin_xmm_reg,
    __fpu_ymmh2: struct___darwin_xmm_reg,
    __fpu_ymmh3: struct___darwin_xmm_reg,
    __fpu_ymmh4: struct___darwin_xmm_reg,
    __fpu_ymmh5: struct___darwin_xmm_reg,
    __fpu_ymmh6: struct___darwin_xmm_reg,
    __fpu_ymmh7: struct___darwin_xmm_reg,
};
pub const struct___darwin_i386_avx512_state = extern struct {
    __fpu_reserved: [2]c_int,
    __fpu_fcw: struct___darwin_fp_control,
    __fpu_fsw: struct___darwin_fp_status,
    __fpu_ftw: __uint8_t,
    __fpu_rsrv1: __uint8_t,
    __fpu_fop: __uint16_t,
    __fpu_ip: __uint32_t,
    __fpu_cs: __uint16_t,
    __fpu_rsrv2: __uint16_t,
    __fpu_dp: __uint32_t,
    __fpu_ds: __uint16_t,
    __fpu_rsrv3: __uint16_t,
    __fpu_mxcsr: __uint32_t,
    __fpu_mxcsrmask: __uint32_t,
    __fpu_stmm0: struct___darwin_mmst_reg,
    __fpu_stmm1: struct___darwin_mmst_reg,
    __fpu_stmm2: struct___darwin_mmst_reg,
    __fpu_stmm3: struct___darwin_mmst_reg,
    __fpu_stmm4: struct___darwin_mmst_reg,
    __fpu_stmm5: struct___darwin_mmst_reg,
    __fpu_stmm6: struct___darwin_mmst_reg,
    __fpu_stmm7: struct___darwin_mmst_reg,
    __fpu_xmm0: struct___darwin_xmm_reg,
    __fpu_xmm1: struct___darwin_xmm_reg,
    __fpu_xmm2: struct___darwin_xmm_reg,
    __fpu_xmm3: struct___darwin_xmm_reg,
    __fpu_xmm4: struct___darwin_xmm_reg,
    __fpu_xmm5: struct___darwin_xmm_reg,
    __fpu_xmm6: struct___darwin_xmm_reg,
    __fpu_xmm7: struct___darwin_xmm_reg,
    __fpu_rsrv4: [224]u8,
    __fpu_reserved1: c_int,
    __avx_reserved1: [64]u8,
    __fpu_ymmh0: struct___darwin_xmm_reg,
    __fpu_ymmh1: struct___darwin_xmm_reg,
    __fpu_ymmh2: struct___darwin_xmm_reg,
    __fpu_ymmh3: struct___darwin_xmm_reg,
    __fpu_ymmh4: struct___darwin_xmm_reg,
    __fpu_ymmh5: struct___darwin_xmm_reg,
    __fpu_ymmh6: struct___darwin_xmm_reg,
    __fpu_ymmh7: struct___darwin_xmm_reg,
    __fpu_k0: struct___darwin_opmask_reg,
    __fpu_k1: struct___darwin_opmask_reg,
    __fpu_k2: struct___darwin_opmask_reg,
    __fpu_k3: struct___darwin_opmask_reg,
    __fpu_k4: struct___darwin_opmask_reg,
    __fpu_k5: struct___darwin_opmask_reg,
    __fpu_k6: struct___darwin_opmask_reg,
    __fpu_k7: struct___darwin_opmask_reg,
    __fpu_zmmh0: struct___darwin_ymm_reg,
    __fpu_zmmh1: struct___darwin_ymm_reg,
    __fpu_zmmh2: struct___darwin_ymm_reg,
    __fpu_zmmh3: struct___darwin_ymm_reg,
    __fpu_zmmh4: struct___darwin_ymm_reg,
    __fpu_zmmh5: struct___darwin_ymm_reg,
    __fpu_zmmh6: struct___darwin_ymm_reg,
    __fpu_zmmh7: struct___darwin_ymm_reg,
};
pub const struct___darwin_i386_exception_state = extern struct {
    __trapno: __uint16_t,
    __cpu: __uint16_t,
    __err: __uint32_t,
    __faultvaddr: __uint32_t,
};
pub const struct___darwin_x86_debug_state32 = extern struct {
    __dr0: c_uint,
    __dr1: c_uint,
    __dr2: c_uint,
    __dr3: c_uint,
    __dr4: c_uint,
    __dr5: c_uint,
    __dr6: c_uint,
    __dr7: c_uint,
};
pub const struct___x86_pagein_state = extern struct {
    __pagein_error: c_int,
};
pub const struct___darwin_x86_thread_state64 = extern struct {
    __rax: __uint64_t,
    __rbx: __uint64_t,
    __rcx: __uint64_t,
    __rdx: __uint64_t,
    __rdi: __uint64_t,
    __rsi: __uint64_t,
    __rbp: __uint64_t,
    __rsp: __uint64_t,
    __r8: __uint64_t,
    __r9: __uint64_t,
    __r10: __uint64_t,
    __r11: __uint64_t,
    __r12: __uint64_t,
    __r13: __uint64_t,
    __r14: __uint64_t,
    __r15: __uint64_t,
    __rip: __uint64_t,
    __rflags: __uint64_t,
    __cs: __uint64_t,
    __fs: __uint64_t,
    __gs: __uint64_t,
};
pub const struct___darwin_x86_thread_full_state64 = extern struct {
    __ss64: struct___darwin_x86_thread_state64,
    __ds: __uint64_t,
    __es: __uint64_t,
    __ss: __uint64_t,
    __gsbase: __uint64_t,
};
pub const struct___darwin_x86_float_state64 = extern struct {
    __fpu_reserved: [2]c_int,
    __fpu_fcw: struct___darwin_fp_control,
    __fpu_fsw: struct___darwin_fp_status,
    __fpu_ftw: __uint8_t,
    __fpu_rsrv1: __uint8_t,
    __fpu_fop: __uint16_t,
    __fpu_ip: __uint32_t,
    __fpu_cs: __uint16_t,
    __fpu_rsrv2: __uint16_t,
    __fpu_dp: __uint32_t,
    __fpu_ds: __uint16_t,
    __fpu_rsrv3: __uint16_t,
    __fpu_mxcsr: __uint32_t,
    __fpu_mxcsrmask: __uint32_t,
    __fpu_stmm0: struct___darwin_mmst_reg,
    __fpu_stmm1: struct___darwin_mmst_reg,
    __fpu_stmm2: struct___darwin_mmst_reg,
    __fpu_stmm3: struct___darwin_mmst_reg,
    __fpu_stmm4: struct___darwin_mmst_reg,
    __fpu_stmm5: struct___darwin_mmst_reg,
    __fpu_stmm6: struct___darwin_mmst_reg,
    __fpu_stmm7: struct___darwin_mmst_reg,
    __fpu_xmm0: struct___darwin_xmm_reg,
    __fpu_xmm1: struct___darwin_xmm_reg,
    __fpu_xmm2: struct___darwin_xmm_reg,
    __fpu_xmm3: struct___darwin_xmm_reg,
    __fpu_xmm4: struct___darwin_xmm_reg,
    __fpu_xmm5: struct___darwin_xmm_reg,
    __fpu_xmm6: struct___darwin_xmm_reg,
    __fpu_xmm7: struct___darwin_xmm_reg,
    __fpu_xmm8: struct___darwin_xmm_reg,
    __fpu_xmm9: struct___darwin_xmm_reg,
    __fpu_xmm10: struct___darwin_xmm_reg,
    __fpu_xmm11: struct___darwin_xmm_reg,
    __fpu_xmm12: struct___darwin_xmm_reg,
    __fpu_xmm13: struct___darwin_xmm_reg,
    __fpu_xmm14: struct___darwin_xmm_reg,
    __fpu_xmm15: struct___darwin_xmm_reg,
    __fpu_rsrv4: [96]u8,
    __fpu_reserved1: c_int,
};
pub const struct___darwin_x86_avx_state64 = extern struct {
    __fpu_reserved: [2]c_int,
    __fpu_fcw: struct___darwin_fp_control,
    __fpu_fsw: struct___darwin_fp_status,
    __fpu_ftw: __uint8_t,
    __fpu_rsrv1: __uint8_t,
    __fpu_fop: __uint16_t,
    __fpu_ip: __uint32_t,
    __fpu_cs: __uint16_t,
    __fpu_rsrv2: __uint16_t,
    __fpu_dp: __uint32_t,
    __fpu_ds: __uint16_t,
    __fpu_rsrv3: __uint16_t,
    __fpu_mxcsr: __uint32_t,
    __fpu_mxcsrmask: __uint32_t,
    __fpu_stmm0: struct___darwin_mmst_reg,
    __fpu_stmm1: struct___darwin_mmst_reg,
    __fpu_stmm2: struct___darwin_mmst_reg,
    __fpu_stmm3: struct___darwin_mmst_reg,
    __fpu_stmm4: struct___darwin_mmst_reg,
    __fpu_stmm5: struct___darwin_mmst_reg,
    __fpu_stmm6: struct___darwin_mmst_reg,
    __fpu_stmm7: struct___darwin_mmst_reg,
    __fpu_xmm0: struct___darwin_xmm_reg,
    __fpu_xmm1: struct___darwin_xmm_reg,
    __fpu_xmm2: struct___darwin_xmm_reg,
    __fpu_xmm3: struct___darwin_xmm_reg,
    __fpu_xmm4: struct___darwin_xmm_reg,
    __fpu_xmm5: struct___darwin_xmm_reg,
    __fpu_xmm6: struct___darwin_xmm_reg,
    __fpu_xmm7: struct___darwin_xmm_reg,
    __fpu_xmm8: struct___darwin_xmm_reg,
    __fpu_xmm9: struct___darwin_xmm_reg,
    __fpu_xmm10: struct___darwin_xmm_reg,
    __fpu_xmm11: struct___darwin_xmm_reg,
    __fpu_xmm12: struct___darwin_xmm_reg,
    __fpu_xmm13: struct___darwin_xmm_reg,
    __fpu_xmm14: struct___darwin_xmm_reg,
    __fpu_xmm15: struct___darwin_xmm_reg,
    __fpu_rsrv4: [96]u8,
    __fpu_reserved1: c_int,
    __avx_reserved1: [64]u8,
    __fpu_ymmh0: struct___darwin_xmm_reg,
    __fpu_ymmh1: struct___darwin_xmm_reg,
    __fpu_ymmh2: struct___darwin_xmm_reg,
    __fpu_ymmh3: struct___darwin_xmm_reg,
    __fpu_ymmh4: struct___darwin_xmm_reg,
    __fpu_ymmh5: struct___darwin_xmm_reg,
    __fpu_ymmh6: struct___darwin_xmm_reg,
    __fpu_ymmh7: struct___darwin_xmm_reg,
    __fpu_ymmh8: struct___darwin_xmm_reg,
    __fpu_ymmh9: struct___darwin_xmm_reg,
    __fpu_ymmh10: struct___darwin_xmm_reg,
    __fpu_ymmh11: struct___darwin_xmm_reg,
    __fpu_ymmh12: struct___darwin_xmm_reg,
    __fpu_ymmh13: struct___darwin_xmm_reg,
    __fpu_ymmh14: struct___darwin_xmm_reg,
    __fpu_ymmh15: struct___darwin_xmm_reg,
};
pub const struct___darwin_x86_avx512_state64 = extern struct {
    __fpu_reserved: [2]c_int,
    __fpu_fcw: struct___darwin_fp_control,
    __fpu_fsw: struct___darwin_fp_status,
    __fpu_ftw: __uint8_t,
    __fpu_rsrv1: __uint8_t,
    __fpu_fop: __uint16_t,
    __fpu_ip: __uint32_t,
    __fpu_cs: __uint16_t,
    __fpu_rsrv2: __uint16_t,
    __fpu_dp: __uint32_t,
    __fpu_ds: __uint16_t,
    __fpu_rsrv3: __uint16_t,
    __fpu_mxcsr: __uint32_t,
    __fpu_mxcsrmask: __uint32_t,
    __fpu_stmm0: struct___darwin_mmst_reg,
    __fpu_stmm1: struct___darwin_mmst_reg,
    __fpu_stmm2: struct___darwin_mmst_reg,
    __fpu_stmm3: struct___darwin_mmst_reg,
    __fpu_stmm4: struct___darwin_mmst_reg,
    __fpu_stmm5: struct___darwin_mmst_reg,
    __fpu_stmm6: struct___darwin_mmst_reg,
    __fpu_stmm7: struct___darwin_mmst_reg,
    __fpu_xmm0: struct___darwin_xmm_reg,
    __fpu_xmm1: struct___darwin_xmm_reg,
    __fpu_xmm2: struct___darwin_xmm_reg,
    __fpu_xmm3: struct___darwin_xmm_reg,
    __fpu_xmm4: struct___darwin_xmm_reg,
    __fpu_xmm5: struct___darwin_xmm_reg,
    __fpu_xmm6: struct___darwin_xmm_reg,
    __fpu_xmm7: struct___darwin_xmm_reg,
    __fpu_xmm8: struct___darwin_xmm_reg,
    __fpu_xmm9: struct___darwin_xmm_reg,
    __fpu_xmm10: struct___darwin_xmm_reg,
    __fpu_xmm11: struct___darwin_xmm_reg,
    __fpu_xmm12: struct___darwin_xmm_reg,
    __fpu_xmm13: struct___darwin_xmm_reg,
    __fpu_xmm14: struct___darwin_xmm_reg,
    __fpu_xmm15: struct___darwin_xmm_reg,
    __fpu_rsrv4: [96]u8,
    __fpu_reserved1: c_int,
    __avx_reserved1: [64]u8,
    __fpu_ymmh0: struct___darwin_xmm_reg,
    __fpu_ymmh1: struct___darwin_xmm_reg,
    __fpu_ymmh2: struct___darwin_xmm_reg,
    __fpu_ymmh3: struct___darwin_xmm_reg,
    __fpu_ymmh4: struct___darwin_xmm_reg,
    __fpu_ymmh5: struct___darwin_xmm_reg,
    __fpu_ymmh6: struct___darwin_xmm_reg,
    __fpu_ymmh7: struct___darwin_xmm_reg,
    __fpu_ymmh8: struct___darwin_xmm_reg,
    __fpu_ymmh9: struct___darwin_xmm_reg,
    __fpu_ymmh10: struct___darwin_xmm_reg,
    __fpu_ymmh11: struct___darwin_xmm_reg,
    __fpu_ymmh12: struct___darwin_xmm_reg,
    __fpu_ymmh13: struct___darwin_xmm_reg,
    __fpu_ymmh14: struct___darwin_xmm_reg,
    __fpu_ymmh15: struct___darwin_xmm_reg,
    __fpu_k0: struct___darwin_opmask_reg,
    __fpu_k1: struct___darwin_opmask_reg,
    __fpu_k2: struct___darwin_opmask_reg,
    __fpu_k3: struct___darwin_opmask_reg,
    __fpu_k4: struct___darwin_opmask_reg,
    __fpu_k5: struct___darwin_opmask_reg,
    __fpu_k6: struct___darwin_opmask_reg,
    __fpu_k7: struct___darwin_opmask_reg,
    __fpu_zmmh0: struct___darwin_ymm_reg,
    __fpu_zmmh1: struct___darwin_ymm_reg,
    __fpu_zmmh2: struct___darwin_ymm_reg,
    __fpu_zmmh3: struct___darwin_ymm_reg,
    __fpu_zmmh4: struct___darwin_ymm_reg,
    __fpu_zmmh5: struct___darwin_ymm_reg,
    __fpu_zmmh6: struct___darwin_ymm_reg,
    __fpu_zmmh7: struct___darwin_ymm_reg,
    __fpu_zmmh8: struct___darwin_ymm_reg,
    __fpu_zmmh9: struct___darwin_ymm_reg,
    __fpu_zmmh10: struct___darwin_ymm_reg,
    __fpu_zmmh11: struct___darwin_ymm_reg,
    __fpu_zmmh12: struct___darwin_ymm_reg,
    __fpu_zmmh13: struct___darwin_ymm_reg,
    __fpu_zmmh14: struct___darwin_ymm_reg,
    __fpu_zmmh15: struct___darwin_ymm_reg,
    __fpu_zmm16: struct___darwin_zmm_reg,
    __fpu_zmm17: struct___darwin_zmm_reg,
    __fpu_zmm18: struct___darwin_zmm_reg,
    __fpu_zmm19: struct___darwin_zmm_reg,
    __fpu_zmm20: struct___darwin_zmm_reg,
    __fpu_zmm21: struct___darwin_zmm_reg,
    __fpu_zmm22: struct___darwin_zmm_reg,
    __fpu_zmm23: struct___darwin_zmm_reg,
    __fpu_zmm24: struct___darwin_zmm_reg,
    __fpu_zmm25: struct___darwin_zmm_reg,
    __fpu_zmm26: struct___darwin_zmm_reg,
    __fpu_zmm27: struct___darwin_zmm_reg,
    __fpu_zmm28: struct___darwin_zmm_reg,
    __fpu_zmm29: struct___darwin_zmm_reg,
    __fpu_zmm30: struct___darwin_zmm_reg,
    __fpu_zmm31: struct___darwin_zmm_reg,
};
pub const struct___darwin_x86_exception_state64 = extern struct {
    __trapno: __uint16_t,
    __cpu: __uint16_t,
    __err: __uint32_t,
    __faultvaddr: __uint64_t,
};
pub const struct___darwin_x86_debug_state64 = extern struct {
    __dr0: __uint64_t,
    __dr1: __uint64_t,
    __dr2: __uint64_t,
    __dr3: __uint64_t,
    __dr4: __uint64_t,
    __dr5: __uint64_t,
    __dr6: __uint64_t,
    __dr7: __uint64_t,
};
pub const struct___darwin_x86_cpmu_state64 = extern struct {
    __ctrs: [16]__uint64_t,
};
pub const struct___darwin_mcontext32 = extern struct {
    __es: struct___darwin_i386_exception_state,
    __ss: struct___darwin_i386_thread_state,
    __fs: struct___darwin_i386_float_state,
};
pub const struct___darwin_mcontext_avx32 = extern struct {
    __es: struct___darwin_i386_exception_state,
    __ss: struct___darwin_i386_thread_state,
    __fs: struct___darwin_i386_avx_state,
};
pub const struct___darwin_mcontext_avx512_32 = extern struct {
    __es: struct___darwin_i386_exception_state,
    __ss: struct___darwin_i386_thread_state,
    __fs: struct___darwin_i386_avx512_state,
};
pub const struct___darwin_mcontext64 = extern struct {
    __es: struct___darwin_x86_exception_state64,
    __ss: struct___darwin_x86_thread_state64,
    __fs: struct___darwin_x86_float_state64,
};
pub const struct___darwin_mcontext64_full = extern struct {
    __es: struct___darwin_x86_exception_state64,
    __ss: struct___darwin_x86_thread_full_state64,
    __fs: struct___darwin_x86_float_state64,
};
pub const struct___darwin_mcontext_avx64 = extern struct {
    __es: struct___darwin_x86_exception_state64,
    __ss: struct___darwin_x86_thread_state64,
    __fs: struct___darwin_x86_avx_state64,
};
pub const struct___darwin_mcontext_avx64_full = extern struct {
    __es: struct___darwin_x86_exception_state64,
    __ss: struct___darwin_x86_thread_full_state64,
    __fs: struct___darwin_x86_avx_state64,
};
pub const struct___darwin_mcontext_avx512_64 = extern struct {
    __es: struct___darwin_x86_exception_state64,
    __ss: struct___darwin_x86_thread_state64,
    __fs: struct___darwin_x86_avx512_state64,
};
pub const struct___darwin_mcontext_avx512_64_full = extern struct {
    __es: struct___darwin_x86_exception_state64,
    __ss: struct___darwin_x86_thread_full_state64,
    __fs: struct___darwin_x86_avx512_state64,
};
pub const mcontext_t = [*c]struct___darwin_mcontext64;
pub const pthread_attr_t = __darwin_pthread_attr_t;
pub const struct___darwin_sigaltstack = extern struct {
    ss_sp: ?*c_void,
    ss_size: __darwin_size_t,
    ss_flags: c_int,
};
pub const stack_t = struct___darwin_sigaltstack;
pub const struct___darwin_ucontext = extern struct {
    uc_onstack: c_int,
    uc_sigmask: __darwin_sigset_t,
    uc_stack: struct___darwin_sigaltstack,
    uc_link: [*c]struct___darwin_ucontext,
    uc_mcsize: __darwin_size_t,
    uc_mcontext: [*c]struct___darwin_mcontext64,
};
pub const ucontext_t = struct___darwin_ucontext;
pub const sigset_t = __darwin_sigset_t;
pub const uid_t = __darwin_uid_t;
pub const union_sigval = extern union {
    sival_int: c_int,
    sival_ptr: ?*c_void,
};
pub const struct_sigevent = extern struct {
    sigev_notify: c_int,
    sigev_signo: c_int,
    sigev_value: union_sigval,
    sigev_notify_function: ?fn (union_sigval) callconv(.C) void,
    sigev_notify_attributes: [*c]pthread_attr_t,
};
pub const struct___siginfo = extern struct {
    si_signo: c_int,
    si_errno: c_int,
    si_code: c_int,
    si_pid: pid_t,
    si_uid: uid_t,
    si_status: c_int,
    si_addr: ?*c_void,
    si_value: union_sigval,
    si_band: c_long,
    __pad: [7]c_ulong,
};
pub const siginfo_t = struct___siginfo;
pub const union___sigaction_u = extern union {
    __sa_handler: ?fn (c_int) callconv(.C) void,
    __sa_sigaction: ?fn (c_int, [*c]struct___siginfo, ?*c_void) callconv(.C) void,
};
pub const struct___sigaction = extern struct {
    __sigaction_u: union___sigaction_u,
    sa_tramp: ?fn (?*c_void, c_int, c_int, [*c]siginfo_t, ?*c_void) callconv(.C) void,
    sa_mask: sigset_t,
    sa_flags: c_int,
};
pub const struct_sigaction = extern struct {
    __sigaction_u: union___sigaction_u,
    sa_mask: sigset_t,
    sa_flags: c_int,
};
pub const sig_t = ?fn (c_int) callconv(.C) void;
pub const struct_sigvec = extern struct {
    sv_handler: ?fn (c_int) callconv(.C) void,
    sv_mask: c_int,
    sv_flags: c_int,
};
pub const struct_sigstack = extern struct {
    ss_sp: [*c]u8,
    ss_onstack: c_int,
};
pub extern fn signal(c_int, ?fn (c_int) callconv(.C) void) ?fn (c_int) callconv(.C) void;
pub const int_least8_t = i8;
pub const int_least16_t = i16;
pub const int_least32_t = i32;
pub const int_least64_t = i64;
pub const uint_least8_t = u8;
pub const uint_least16_t = u16;
pub const uint_least32_t = u32;
pub const uint_least64_t = u64;
pub const int_fast8_t = i8;
pub const int_fast16_t = i16;
pub const int_fast32_t = i32;
pub const int_fast64_t = i64;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = u16;
pub const uint_fast32_t = u32;
pub const uint_fast64_t = u64;
pub const intmax_t = c_long;
pub const uintmax_t = c_ulong;
pub const struct_timeval = extern struct {
    tv_sec: __darwin_time_t,
    tv_usec: __darwin_suseconds_t,
};
pub const rlim_t = __uint64_t;
pub const struct_rusage = extern struct {
    ru_utime: struct_timeval,
    ru_stime: struct_timeval,
    ru_maxrss: c_long,
    ru_ixrss: c_long,
    ru_idrss: c_long,
    ru_isrss: c_long,
    ru_minflt: c_long,
    ru_majflt: c_long,
    ru_nswap: c_long,
    ru_inblock: c_long,
    ru_oublock: c_long,
    ru_msgsnd: c_long,
    ru_msgrcv: c_long,
    ru_nsignals: c_long,
    ru_nvcsw: c_long,
    ru_nivcsw: c_long,
};
pub const rusage_info_t = ?*c_void;
pub const struct_rusage_info_v0 = extern struct {
    ri_uuid: [16]u8,
    ri_user_time: u64,
    ri_system_time: u64,
    ri_pkg_idle_wkups: u64,
    ri_interrupt_wkups: u64,
    ri_pageins: u64,
    ri_wired_size: u64,
    ri_resident_size: u64,
    ri_phys_footprint: u64,
    ri_proc_start_abstime: u64,
    ri_proc_exit_abstime: u64,
};
pub const struct_rusage_info_v1 = extern struct {
    ri_uuid: [16]u8,
    ri_user_time: u64,
    ri_system_time: u64,
    ri_pkg_idle_wkups: u64,
    ri_interrupt_wkups: u64,
    ri_pageins: u64,
    ri_wired_size: u64,
    ri_resident_size: u64,
    ri_phys_footprint: u64,
    ri_proc_start_abstime: u64,
    ri_proc_exit_abstime: u64,
    ri_child_user_time: u64,
    ri_child_system_time: u64,
    ri_child_pkg_idle_wkups: u64,
    ri_child_interrupt_wkups: u64,
    ri_child_pageins: u64,
    ri_child_elapsed_abstime: u64,
};
pub const struct_rusage_info_v2 = extern struct {
    ri_uuid: [16]u8,
    ri_user_time: u64,
    ri_system_time: u64,
    ri_pkg_idle_wkups: u64,
    ri_interrupt_wkups: u64,
    ri_pageins: u64,
    ri_wired_size: u64,
    ri_resident_size: u64,
    ri_phys_footprint: u64,
    ri_proc_start_abstime: u64,
    ri_proc_exit_abstime: u64,
    ri_child_user_time: u64,
    ri_child_system_time: u64,
    ri_child_pkg_idle_wkups: u64,
    ri_child_interrupt_wkups: u64,
    ri_child_pageins: u64,
    ri_child_elapsed_abstime: u64,
    ri_diskio_bytesread: u64,
    ri_diskio_byteswritten: u64,
};
pub const struct_rusage_info_v3 = extern struct {
    ri_uuid: [16]u8,
    ri_user_time: u64,
    ri_system_time: u64,
    ri_pkg_idle_wkups: u64,
    ri_interrupt_wkups: u64,
    ri_pageins: u64,
    ri_wired_size: u64,
    ri_resident_size: u64,
    ri_phys_footprint: u64,
    ri_proc_start_abstime: u64,
    ri_proc_exit_abstime: u64,
    ri_child_user_time: u64,
    ri_child_system_time: u64,
    ri_child_pkg_idle_wkups: u64,
    ri_child_interrupt_wkups: u64,
    ri_child_pageins: u64,
    ri_child_elapsed_abstime: u64,
    ri_diskio_bytesread: u64,
    ri_diskio_byteswritten: u64,
    ri_cpu_time_qos_default: u64,
    ri_cpu_time_qos_maintenance: u64,
    ri_cpu_time_qos_background: u64,
    ri_cpu_time_qos_utility: u64,
    ri_cpu_time_qos_legacy: u64,
    ri_cpu_time_qos_user_initiated: u64,
    ri_cpu_time_qos_user_interactive: u64,
    ri_billed_system_time: u64,
    ri_serviced_system_time: u64,
};
pub const struct_rusage_info_v4 = extern struct {
    ri_uuid: [16]u8,
    ri_user_time: u64,
    ri_system_time: u64,
    ri_pkg_idle_wkups: u64,
    ri_interrupt_wkups: u64,
    ri_pageins: u64,
    ri_wired_size: u64,
    ri_resident_size: u64,
    ri_phys_footprint: u64,
    ri_proc_start_abstime: u64,
    ri_proc_exit_abstime: u64,
    ri_child_user_time: u64,
    ri_child_system_time: u64,
    ri_child_pkg_idle_wkups: u64,
    ri_child_interrupt_wkups: u64,
    ri_child_pageins: u64,
    ri_child_elapsed_abstime: u64,
    ri_diskio_bytesread: u64,
    ri_diskio_byteswritten: u64,
    ri_cpu_time_qos_default: u64,
    ri_cpu_time_qos_maintenance: u64,
    ri_cpu_time_qos_background: u64,
    ri_cpu_time_qos_utility: u64,
    ri_cpu_time_qos_legacy: u64,
    ri_cpu_time_qos_user_initiated: u64,
    ri_cpu_time_qos_user_interactive: u64,
    ri_billed_system_time: u64,
    ri_serviced_system_time: u64,
    ri_logical_writes: u64,
    ri_lifetime_max_phys_footprint: u64,
    ri_instructions: u64,
    ri_cycles: u64,
    ri_billed_energy: u64,
    ri_serviced_energy: u64,
    ri_interval_max_phys_footprint: u64,
    ri_runnable_time: u64,
};
pub const rusage_info_current = struct_rusage_info_v4;
pub const struct_rlimit = extern struct {
    rlim_cur: rlim_t,
    rlim_max: rlim_t,
};
pub const struct_proc_rlimit_control_wakeupmon = extern struct {
    wm_flags: u32,
    wm_rate: i32,
};
pub extern fn getpriority(c_int, id_t) c_int;
pub extern fn getiopolicy_np(c_int, c_int) c_int;
pub extern fn getrlimit(c_int, [*c]struct_rlimit) c_int;
pub extern fn getrusage(c_int, [*c]struct_rusage) c_int;
pub extern fn setpriority(c_int, id_t, c_int) c_int;
pub extern fn setiopolicy_np(c_int, c_int, c_int) c_int;
pub extern fn setrlimit(c_int, [*c]const struct_rlimit) c_int;
pub fn _OSSwapInt16(arg__data: __uint16_t) callconv(.C) __uint16_t {
    var _data = arg__data;
    return @bitCast(__uint16_t, @truncate(c_short, ((@bitCast(c_int, @as(c_uint, _data)) << @intCast(@import("std").math.Log2Int(c_int), 8)) | (@bitCast(c_int, @as(c_uint, _data)) >> @intCast(@import("std").math.Log2Int(c_int), 8)))));
} // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/libkern/i386/_OSByteOrder.h:60:9: warning: TODO implement translation of CastKind BuiltinFnToFnPtr
pub const _OSSwapInt32 = @compileError("unable to translate function"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/libkern/i386/_OSByteOrder.h:55:1
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/libkern/i386/_OSByteOrder.h:74:9: warning: TODO implement translation of CastKind BuiltinFnToFnPtr
pub const _OSSwapInt64 = @compileError("unable to translate function"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/libkern/i386/_OSByteOrder.h:70:1
const struct_unnamed_4 = @Type(.Opaque); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/wait.h:201:19: warning: struct demoted to opaque type - has bitfield
const struct_unnamed_5 = @Type(.Opaque); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/wait.h:220:19: warning: struct demoted to opaque type - has bitfield
pub const union_wait = extern union {
    w_status: c_int,
    w_T: struct_unnamed_4,
    w_S: struct_unnamed_5,
};
pub extern fn wait([*c]c_int) pid_t;
pub extern fn waitpid(pid_t, [*c]c_int, c_int) pid_t;
pub extern fn waitid(idtype_t, id_t, [*c]siginfo_t, c_int) c_int;
pub extern fn wait3([*c]c_int, c_int, [*c]struct_rusage) pid_t;
pub extern fn wait4(pid_t, [*c]c_int, c_int, [*c]struct_rusage) pid_t;
pub extern fn alloca(c_ulong) ?*c_void;
pub const ct_rune_t = __darwin_ct_rune_t;
pub const rune_t = __darwin_rune_t;
pub const wchar_t = __darwin_wchar_t;
const struct_unnamed_6 = extern struct {
    quot: c_int,
    rem: c_int,
};
pub const div_t = struct_unnamed_6;
const struct_unnamed_7 = extern struct {
    quot: c_long,
    rem: c_long,
};
pub const ldiv_t = struct_unnamed_7;
const struct_unnamed_8 = extern struct {
    quot: c_longlong,
    rem: c_longlong,
};
pub const lldiv_t = struct_unnamed_8;
pub extern var __mb_cur_max: c_int;
pub extern fn malloc(__size: c_ulong) ?*c_void;
pub extern fn calloc(__count: c_ulong, __size: c_ulong) ?*c_void;
pub extern fn free(?*c_void) void;
pub extern fn realloc(__ptr: ?*c_void, __size: c_ulong) ?*c_void;
pub extern fn valloc(usize) ?*c_void;
pub extern fn aligned_alloc(__alignment: usize, __size: usize) ?*c_void;
pub extern fn posix_memalign(__memptr: [*c]?*c_void, __alignment: usize, __size: usize) c_int;
pub extern fn abort() noreturn;
pub extern fn abs(c_int) c_int;
pub extern fn atexit(?fn () callconv(.C) void) c_int;
pub extern fn atof([*c]const u8) f64;
pub extern fn atoi([*c]const u8) c_int;
pub extern fn atol([*c]const u8) c_long;
pub extern fn atoll([*c]const u8) c_longlong;
pub extern fn bsearch(__key: ?*const c_void, __base: ?*const c_void, __nel: usize, __width: usize, __compar: ?fn (?*const c_void, ?*const c_void) callconv(.C) c_int) ?*c_void;
pub extern fn div(c_int, c_int) div_t;
pub extern fn exit(c_int) noreturn;
pub extern fn getenv([*c]const u8) [*c]u8;
pub extern fn labs(c_long) c_long;
pub extern fn ldiv(c_long, c_long) ldiv_t;
pub extern fn llabs(c_longlong) c_longlong;
pub extern fn lldiv(c_longlong, c_longlong) lldiv_t;
pub extern fn mblen(__s: [*c]const u8, __n: usize) c_int;
pub extern fn mbstowcs(noalias [*c]wchar_t, noalias [*c]const u8, usize) usize;
pub extern fn mbtowc(noalias [*c]wchar_t, noalias [*c]const u8, usize) c_int;
pub extern fn qsort(__base: ?*c_void, __nel: usize, __width: usize, __compar: ?fn (?*const c_void, ?*const c_void) callconv(.C) c_int) void;
pub extern fn rand() c_int;
pub extern fn srand(c_uint) void;
pub extern fn strtod([*c]const u8, [*c][*c]u8) f64;
pub extern fn strtof([*c]const u8, [*c][*c]u8) f32;
pub extern fn strtol(__str: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_long;
pub extern fn strtold([*c]const u8, [*c][*c]u8) c_longdouble;
pub extern fn strtoll(__str: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtoul(__str: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulong;
pub extern fn strtoull(__str: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn system([*c]const u8) c_int;
pub extern fn wcstombs(noalias [*c]u8, noalias [*c]const wchar_t, usize) usize;
pub extern fn wctomb([*c]u8, wchar_t) c_int;
pub extern fn _Exit(c_int) noreturn;
pub extern fn a64l([*c]const u8) c_long;
pub extern fn drand48() f64;
pub extern fn ecvt(f64, c_int, noalias [*c]c_int, noalias [*c]c_int) [*c]u8;
pub extern fn erand48([*c]c_ushort) f64;
pub extern fn fcvt(f64, c_int, noalias [*c]c_int, noalias [*c]c_int) [*c]u8;
pub extern fn gcvt(f64, c_int, [*c]u8) [*c]u8;
pub extern fn getsubopt([*c][*c]u8, [*c]const [*c]u8, [*c][*c]u8) c_int;
pub extern fn grantpt(c_int) c_int;
pub extern fn initstate(c_uint, [*c]u8, usize) [*c]u8;
pub extern fn jrand48([*c]c_ushort) c_long;
pub extern fn l64a(c_long) [*c]u8;
pub extern fn lcong48([*c]c_ushort) void;
pub extern fn lrand48() c_long;
pub extern fn mktemp([*c]u8) [*c]u8;
pub extern fn mkstemp([*c]u8) c_int;
pub extern fn mrand48() c_long;
pub extern fn nrand48([*c]c_ushort) c_long;
pub extern fn posix_openpt(c_int) c_int;
pub extern fn ptsname(c_int) [*c]u8;
pub extern fn ptsname_r(fildes: c_int, buffer: [*c]u8, buflen: usize) c_int;
pub extern fn putenv([*c]u8) c_int;
pub extern fn random() c_long;
pub extern fn rand_r([*c]c_uint) c_int;
pub extern fn realpath(noalias [*c]const u8, noalias [*c]u8) [*c]u8;
pub extern fn seed48([*c]c_ushort) [*c]c_ushort;
pub extern fn setenv(__name: [*c]const u8, __value: [*c]const u8, __overwrite: c_int) c_int;
pub extern fn setkey([*c]const u8) void;
pub extern fn setstate([*c]const u8) [*c]u8;
pub extern fn srand48(c_long) void;
pub extern fn srandom(c_uint) void;
pub extern fn unlockpt(c_int) c_int;
pub extern fn unsetenv([*c]const u8) c_int;
pub const dev_t = __darwin_dev_t;
pub const mode_t = __darwin_mode_t;
pub extern fn arc4random() u32;
pub extern fn arc4random_addrandom([*c]u8, c_int) void;
pub extern fn arc4random_buf(__buf: ?*c_void, __nbytes: usize) void;
pub extern fn arc4random_stir() void;
pub extern fn arc4random_uniform(__upper_bound: u32) u32; // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h:275:6: warning: unsupported type: 'BlockPointer'
pub const atexit_b = @compileError("unable to resolve prototype of function"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h:275:6
// /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h:276:7: warning: unsupported type: 'BlockPointer'
pub const bsearch_b = @compileError("unable to resolve prototype of function"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h:276:7
pub extern fn cgetcap([*c]u8, [*c]const u8, c_int) [*c]u8;
pub extern fn cgetclose() c_int;
pub extern fn cgetent([*c][*c]u8, [*c][*c]u8, [*c]const u8) c_int;
pub extern fn cgetfirst([*c][*c]u8, [*c][*c]u8) c_int;
pub extern fn cgetmatch([*c]const u8, [*c]const u8) c_int;
pub extern fn cgetnext([*c][*c]u8, [*c][*c]u8) c_int;
pub extern fn cgetnum([*c]u8, [*c]const u8, [*c]c_long) c_int;
pub extern fn cgetset([*c]const u8) c_int;
pub extern fn cgetstr([*c]u8, [*c]const u8, [*c][*c]u8) c_int;
pub extern fn cgetustr([*c]u8, [*c]const u8, [*c][*c]u8) c_int;
pub extern fn daemon(c_int, c_int) c_int;
pub extern fn devname(dev_t, mode_t) [*c]u8;
pub extern fn devname_r(dev_t, mode_t, buf: [*c]u8, len: c_int) [*c]u8;
pub extern fn getbsize([*c]c_int, [*c]c_long) [*c]u8;
pub extern fn getloadavg([*c]f64, c_int) c_int;
pub extern fn getprogname() [*c]const u8;
pub extern fn setprogname([*c]const u8) void;
pub extern fn heapsort(__base: ?*c_void, __nel: usize, __width: usize, __compar: ?fn (?*const c_void, ?*const c_void) callconv(.C) c_int) c_int; // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h:312:6: warning: unsupported type: 'BlockPointer'
pub const heapsort_b = @compileError("unable to resolve prototype of function"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h:312:6
pub extern fn mergesort(__base: ?*c_void, __nel: usize, __width: usize, __compar: ?fn (?*const c_void, ?*const c_void) callconv(.C) c_int) c_int; // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h:319:6: warning: unsupported type: 'BlockPointer'
pub const mergesort_b = @compileError("unable to resolve prototype of function"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h:319:6
pub extern fn psort(__base: ?*c_void, __nel: usize, __width: usize, __compar: ?fn (?*const c_void, ?*const c_void) callconv(.C) c_int) void; // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h:327:7: warning: unsupported type: 'BlockPointer'
pub const psort_b = @compileError("unable to resolve prototype of function"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h:327:7
pub extern fn psort_r(__base: ?*c_void, __nel: usize, __width: usize, ?*c_void, __compar: ?fn (?*c_void, ?*const c_void, ?*const c_void) callconv(.C) c_int) void; // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h:335:7: warning: unsupported type: 'BlockPointer'
pub const qsort_b = @compileError("unable to resolve prototype of function"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h:335:7
pub extern fn qsort_r(__base: ?*c_void, __nel: usize, __width: usize, ?*c_void, __compar: ?fn (?*c_void, ?*const c_void, ?*const c_void) callconv(.C) c_int) void;
pub extern fn radixsort(__base: [*c][*c]const u8, __nel: c_int, __table: [*c]const u8, __endbyte: c_uint) c_int;
pub extern fn rpmatch([*c]const u8) c_int;
pub extern fn sradixsort(__base: [*c][*c]const u8, __nel: c_int, __table: [*c]const u8, __endbyte: c_uint) c_int;
pub extern fn sranddev() void;
pub extern fn srandomdev() void;
pub extern fn reallocf(__ptr: ?*c_void, __size: usize) ?*c_void;
pub extern fn strtoq(__str: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtouq(__str: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern var suboptarg: [*c]u8;
pub extern fn __assert_rtn([*c]const u8, [*c]const u8, c_int, [*c]const u8) noreturn;
pub const bool_9 = u8;
pub const va_list = __builtin_va_list;
pub const __gnuc_va_list = __builtin_va_list;
pub const struct_ecs_time_t = extern struct {
    sec: i32,
    nanosec: i32,
};
pub const ecs_time_t = struct_ecs_time_t;
pub extern var ecs_os_api_malloc_count: u64;
pub extern var ecs_os_api_realloc_count: u64;
pub extern var ecs_os_api_calloc_count: u64;
pub extern var ecs_os_api_free_count: u64;
pub const ecs_os_thread_t = usize;
pub const ecs_os_cond_t = usize;
pub const ecs_os_mutex_t = usize;
pub const ecs_os_dl_t = usize;
pub const ecs_os_proc_t = ?fn () callconv(.C) void;
pub const ecs_os_api_malloc_t = ?fn (usize) callconv(.C) ?*c_void;
pub const ecs_os_api_free_t = ?fn (?*c_void) callconv(.C) void;
pub const ecs_os_api_realloc_t = ?fn (?*c_void, usize) callconv(.C) ?*c_void;
pub const ecs_os_api_calloc_t = ?fn (usize, usize) callconv(.C) ?*c_void;
pub const ecs_os_api_strdup_t = ?fn ([*c]const u8) callconv(.C) [*c]u8;
pub const ecs_os_thread_callback_t = ?fn (?*c_void) callconv(.C) ?*c_void;
pub const ecs_os_api_thread_new_t = ?fn (ecs_os_thread_callback_t, ?*c_void) callconv(.C) ecs_os_thread_t;
pub const ecs_os_api_thread_join_t = ?fn (ecs_os_thread_t) callconv(.C) ?*c_void;
pub const ecs_os_api_ainc_t = ?fn ([*c]i32) callconv(.C) c_int;
pub const ecs_os_api_mutex_new_t = ?fn () callconv(.C) ecs_os_mutex_t;
pub const ecs_os_api_mutex_lock_t = ?fn (ecs_os_mutex_t) callconv(.C) void;
pub const ecs_os_api_mutex_unlock_t = ?fn (ecs_os_mutex_t) callconv(.C) void;
pub const ecs_os_api_mutex_free_t = ?fn (ecs_os_mutex_t) callconv(.C) void;
pub const ecs_os_api_cond_new_t = ?fn () callconv(.C) ecs_os_cond_t;
pub const ecs_os_api_cond_free_t = ?fn (ecs_os_cond_t) callconv(.C) void;
pub const ecs_os_api_cond_signal_t = ?fn (ecs_os_cond_t) callconv(.C) void;
pub const ecs_os_api_cond_broadcast_t = ?fn (ecs_os_cond_t) callconv(.C) void;
pub const ecs_os_api_cond_wait_t = ?fn (ecs_os_cond_t, ecs_os_mutex_t) callconv(.C) void;
pub const ecs_os_api_sleep_t = ?fn (i32, i32) callconv(.C) void;
pub const ecs_os_api_get_time_t = ?fn ([*c]ecs_time_t) callconv(.C) void;
pub const struct___va_list_tag = extern struct {
    gp_offset: c_uint,
    fp_offset: c_uint,
    overflow_arg_area: ?*c_void,
    reg_save_area: ?*c_void,
};
pub const ecs_os_api_log_t = ?fn ([*c]const u8, [*c]struct___va_list_tag) callconv(.C) void;
pub const ecs_os_api_abort_t = ?fn () callconv(.C) void;
pub const ecs_os_api_dlopen_t = ?fn ([*c]const u8) callconv(.C) ecs_os_dl_t;
pub const ecs_os_api_dlproc_t = ?fn (ecs_os_dl_t, [*c]const u8) callconv(.C) ecs_os_proc_t;
pub const ecs_os_api_dlclose_t = ?fn (ecs_os_dl_t) callconv(.C) void;
pub const ecs_os_api_module_to_dl_t = ?fn ([*c]const u8) callconv(.C) [*c]u8;
pub const struct_ecs_os_api_t = extern struct {
    malloc: ecs_os_api_malloc_t,
    realloc: ecs_os_api_realloc_t,
    calloc: ecs_os_api_calloc_t,
    free: ecs_os_api_free_t,
    strdup: ecs_os_api_strdup_t,
    thread_new: ecs_os_api_thread_new_t,
    thread_join: ecs_os_api_thread_join_t,
    ainc: ecs_os_api_ainc_t,
    adec: ecs_os_api_ainc_t,
    mutex_new: ecs_os_api_mutex_new_t,
    mutex_free: ecs_os_api_mutex_free_t,
    mutex_lock: ecs_os_api_mutex_lock_t,
    mutex_unlock: ecs_os_api_mutex_lock_t,
    cond_new: ecs_os_api_cond_new_t,
    cond_free: ecs_os_api_cond_free_t,
    cond_signal: ecs_os_api_cond_signal_t,
    cond_broadcast: ecs_os_api_cond_broadcast_t,
    cond_wait: ecs_os_api_cond_wait_t,
    sleep: ecs_os_api_sleep_t,
    get_time: ecs_os_api_get_time_t,
    log: ecs_os_api_log_t,
    log_error: ecs_os_api_log_t,
    log_debug: ecs_os_api_log_t,
    log_warning: ecs_os_api_log_t,
    abort: ecs_os_api_abort_t,
    dlopen: ecs_os_api_dlopen_t,
    dlproc: ecs_os_api_dlproc_t,
    dlclose: ecs_os_api_dlclose_t,
    module_to_dl: ecs_os_api_module_to_dl_t,
};
pub const ecs_os_api_t = struct_ecs_os_api_t;
pub extern var ecs_os_api: ecs_os_api_t;
pub extern fn ecs_os_set_api(os_api: [*c]ecs_os_api_t) void;
pub extern fn ecs_os_set_api_defaults() void;
pub extern fn ecs_os_log(fmt: [*c]const u8, ...) void;
pub extern fn ecs_os_warn(fmt: [*c]const u8, ...) void;
pub extern fn ecs_os_err(fmt: [*c]const u8, ...) void;
pub extern fn ecs_os_dbg(fmt: [*c]const u8, ...) void;
pub extern fn ecs_os_enable_dbg(enable: bool_9) void;
pub extern fn ecs_os_dbg_enabled() bool_9;
pub extern fn ecs_sleepf(t: f64) void;
pub extern fn ecs_time_measure(start: [*c]ecs_time_t) f64;
pub extern fn ecs_time_sub(t1: ecs_time_t, t2: ecs_time_t) ecs_time_t;
pub extern fn ecs_time_to_double(t: ecs_time_t) f64;
pub extern fn ecs_os_memdup(src: ?*const c_void, size: usize) ?*c_void;
pub const struct_ecs_vector_t = extern struct {
    count: i32,
    size: i32,
    elem_size: usize,
};
pub const ecs_vector_t = struct_ecs_vector_t;
pub const ecs_comparator_t = ?fn (?*const c_void, ?*const c_void) callconv(.C) c_int;
pub extern fn _ecs_vector_new(elem_size: usize, offset: i16, elem_count: i32) [*c]ecs_vector_t;
pub extern fn _ecs_vector_from_array(elem_size: usize, offset: i16, elem_count: i32, array: ?*c_void) [*c]ecs_vector_t;
pub extern fn ecs_vector_free(vector: [*c]ecs_vector_t) void;
pub extern fn ecs_vector_clear(vector: [*c]ecs_vector_t) void;
pub extern fn _ecs_vector_add(array_inout: [*c][*c]ecs_vector_t, elem_size: usize, offset: i16) ?*c_void;
pub extern fn _ecs_vector_addn(array_inout: [*c][*c]ecs_vector_t, elem_size: usize, offset: i16, elem_count: i32) ?*c_void;
pub extern fn _ecs_vector_get(vector: [*c]const ecs_vector_t, elem_size: usize, offset: i16, index: i32) ?*c_void;
pub extern fn _ecs_vector_last(vector: [*c]const ecs_vector_t, elem_size: usize, offset: i16) ?*c_void;
pub extern fn _ecs_vector_remove(vector: [*c]ecs_vector_t, elem_size: usize, offset: i16, elem: ?*c_void) i32;
pub extern fn ecs_vector_remove_last(vector: [*c]ecs_vector_t) void;
pub extern fn _ecs_vector_pop(vector: [*c]ecs_vector_t, elem_size: usize, offset: i16, value: ?*c_void) bool_9;
pub extern fn _ecs_vector_move_index(dst: [*c][*c]ecs_vector_t, src: [*c]ecs_vector_t, elem_size: usize, offset: i16, index: i32) i32;
pub extern fn _ecs_vector_remove_index(vector: [*c]ecs_vector_t, elem_size: usize, offset: i16, index: i32) i32;
pub extern fn _ecs_vector_reclaim(vector: [*c][*c]ecs_vector_t, elem_size: usize, offset: i16) void;
pub extern fn _ecs_vector_grow(vector: [*c][*c]ecs_vector_t, elem_size: usize, offset: i16, elem_count: i32) i32;
pub extern fn _ecs_vector_set_size(vector: [*c][*c]ecs_vector_t, elem_size: usize, offset: i16, elem_count: i32) i32;
pub extern fn _ecs_vector_set_count(vector: [*c][*c]ecs_vector_t, elem_size: usize, offset: i16, elem_count: i32) i32;
pub extern fn _ecs_vector_set_min_size(array_inout: [*c][*c]ecs_vector_t, elem_size: usize, offset: i16, elem_count: i32) i32;
pub extern fn _ecs_vector_set_min_count(vector_inout: [*c][*c]ecs_vector_t, elem_size: usize, offset: i16, elem_count: i32) i32;
pub extern fn ecs_vector_count(vector: [*c]const ecs_vector_t) i32;
pub extern fn ecs_vector_size(vector: [*c]const ecs_vector_t) i32;
pub extern fn _ecs_vector_first(vector: [*c]const ecs_vector_t, elem_size: usize, offset: i16) ?*c_void;
pub extern fn _ecs_vector_sort(vector: [*c]ecs_vector_t, elem_size: usize, offset: i16, compare_action: ecs_comparator_t) void;
pub extern fn _ecs_vector_memory(vector: [*c]const ecs_vector_t, elem_size: usize, offset: i16, allocd: [*c]i32, used: [*c]i32) void;
pub extern fn _ecs_vector_copy(src: [*c]const ecs_vector_t, elem_size: usize, offset: i16) [*c]ecs_vector_t;
pub const struct_ecs_ringbuf_t = @Type(.Opaque);
pub const ecs_ringbuf_t = struct_ecs_ringbuf_t;
pub extern fn _ecs_ringbuf_new(elem_size: usize, offset: i16, elem_count: i32) ?*ecs_ringbuf_t;
pub extern fn _ecs_ringbuf_push(buffer: ?*ecs_ringbuf_t, elem_size: usize, offset: i16) ?*c_void;
pub extern fn _ecs_ringbuf_get(buffer: ?*ecs_ringbuf_t, elem_size: usize, offset: i16, index: i32) ?*c_void;
pub extern fn _ecs_ringbuf_last(buffer: ?*ecs_ringbuf_t, elem_size: usize, offset: i16) ?*c_void;
pub extern fn ecs_ringbuf_index(buffer: ?*ecs_ringbuf_t) i32;
pub extern fn ecs_ringbuf_count(buffer: ?*ecs_ringbuf_t) i32;
pub extern fn ecs_ringbuf_free(buffer: ?*ecs_ringbuf_t) void;
pub const struct_ecs_sparse_t = @Type(.Opaque);
pub const ecs_sparse_t = struct_ecs_sparse_t;
pub extern fn _ecs_sparse_new(elem_size: usize, element_count: i32) ?*ecs_sparse_t;
pub extern fn ecs_sparse_free(sparse: ?*ecs_sparse_t) void;
pub extern fn ecs_sparse_clear(sparse: ?*ecs_sparse_t) void;
pub extern fn _ecs_sparse_add(sparse: ?*ecs_sparse_t, elem_size: usize) ?*c_void;
pub extern fn _ecs_sparse_recycle(sparse: ?*ecs_sparse_t, elem_size: usize, sparse_index_out: [*c]i32) ?*c_void;
pub extern fn _ecs_sparse_remove(sparse: ?*ecs_sparse_t, elem_size: usize, index: i32) ?*c_void;
pub extern fn _ecs_sparse_get(sparse: ?*const ecs_sparse_t, elem_size: usize, index: i32) ?*c_void;
pub extern fn ecs_sparse_count(sparse: ?*const ecs_sparse_t) i32;
pub extern fn ecs_sparse_size(sparse: ?*const ecs_sparse_t) i32;
pub extern fn _ecs_sparse_get_sparse(sparse: ?*const ecs_sparse_t, elem_size: usize, index: i32) ?*c_void;
pub extern fn _ecs_sparse_get_or_set_sparse(sparse: ?*ecs_sparse_t, elem_size: usize, index: i32, is_new: [*c]bool_9) ?*c_void;
pub extern fn ecs_sparse_indices(sparse: ?*const ecs_sparse_t) [*c]const i32;
pub extern fn ecs_sparse_unused_indices(sparse: ?*const ecs_sparse_t) [*c]const i32;
pub extern fn ecs_sparse_unused_count(sparse: ?*const ecs_sparse_t) i32;
pub extern fn ecs_sparse_set_size(sparse: ?*ecs_sparse_t, elem_count: i32) void;
pub extern fn ecs_sparse_grow(sparse: ?*ecs_sparse_t, count: i32) void;
pub extern fn ecs_sparse_copy(src: ?*const ecs_sparse_t) ?*ecs_sparse_t;
pub extern fn ecs_sparse_memory(sparse: ?*ecs_sparse_t, allocd: [*c]i32, used: [*c]i32) void;
pub const struct_ecs_map_t = @Type(.Opaque);
pub const ecs_map_t = struct_ecs_map_t;
pub const struct_ecs_bucket_t = @Type(.Opaque);
pub const ecs_bucket_t = struct_ecs_bucket_t;
pub const ecs_map_key_t = u64;
pub const struct_ecs_map_iter_t = extern struct {
    map: ?*const ecs_map_t,
    bucket: ?*ecs_bucket_t,
    bucket_index: i32,
    element_index: i32,
    payload: ?*c_void,
};
pub const ecs_map_iter_t = struct_ecs_map_iter_t;
pub extern fn _ecs_map_new(elem_size: usize, alignment: usize, elem_count: i32) ?*ecs_map_t;
pub extern fn _ecs_map_get(map: ?*const ecs_map_t, elem_size: usize, key: ecs_map_key_t) ?*c_void;
pub extern fn _ecs_map_has(map: ?*const ecs_map_t, elem_size: usize, key: ecs_map_key_t, payload: ?*c_void) bool_9;
pub extern fn _ecs_map_get_ptr(map: ?*const ecs_map_t, key: ecs_map_key_t) ?*c_void;
pub extern fn _ecs_map_set(map: ?*ecs_map_t, elem_size: usize, key: ecs_map_key_t, payload: ?*const c_void) void;
pub extern fn ecs_map_free(map: ?*ecs_map_t) void;
pub extern fn ecs_map_remove(map: ?*ecs_map_t, key: ecs_map_key_t) void;
pub extern fn ecs_map_clear(map: ?*ecs_map_t) void;
pub extern fn ecs_map_count(map: ?*const ecs_map_t) i32;
pub extern fn ecs_map_bucket_count(map: ?*const ecs_map_t) i32;
pub extern fn ecs_map_iter(map: ?*const ecs_map_t) ecs_map_iter_t;
pub extern fn _ecs_map_next(iter: [*c]ecs_map_iter_t, elem_size: usize, key: [*c]ecs_map_key_t) ?*c_void;
pub extern fn _ecs_map_next_ptr(iter: [*c]ecs_map_iter_t, key: [*c]ecs_map_key_t) ?*c_void;
pub extern fn ecs_map_grow(map: ?*ecs_map_t, elem_count: i32) void;
pub extern fn ecs_map_set_size(map: ?*ecs_map_t, elem_count: i32) void;
pub extern fn ecs_map_memory(map: ?*ecs_map_t, allocd: [*c]i32, used: [*c]i32) void;
pub extern fn ecs_map_copy(map: ?*const ecs_map_t) ?*ecs_map_t;
pub const struct_ecs_strbuf_element = extern struct {
    buffer_embedded: bool_9,
    pos: i32,
    buf: [*c]u8,
    next: [*c]struct_ecs_strbuf_element,
};
pub const ecs_strbuf_element = struct_ecs_strbuf_element;
pub const struct_ecs_strbuf_element_embedded = extern struct {
    super: ecs_strbuf_element,
    buf: [512]u8,
};
pub const ecs_strbuf_element_embedded = struct_ecs_strbuf_element_embedded;
pub const struct_ecs_strbuf_element_str = extern struct {
    super: ecs_strbuf_element,
    alloc_str: [*c]u8,
};
pub const ecs_strbuf_element_str = struct_ecs_strbuf_element_str;
pub const struct_ecs_strbuf_list_elem = extern struct {
    count: i32,
    separator: [*c]const u8,
};
pub const ecs_strbuf_list_elem = struct_ecs_strbuf_list_elem;
pub const struct_ecs_strbuf_t = extern struct {
    buf: [*c]u8,
    max: i32,
    size: i32,
    elementCount: i32,
    firstElement: ecs_strbuf_element_embedded,
    current: [*c]ecs_strbuf_element,
    list_stack: [32]ecs_strbuf_list_elem,
    list_sp: i32,
};
pub const ecs_strbuf_t = struct_ecs_strbuf_t;
pub extern fn ecs_strbuf_append(buffer: [*c]ecs_strbuf_t, fmt: [*c]const u8, ...) bool_9;
pub extern fn ecs_strbuf_vappend(buffer: [*c]ecs_strbuf_t, fmt: [*c]const u8, args: [*c]struct___va_list_tag) bool_9;
pub extern fn ecs_strbuf_appendstr(buffer: [*c]ecs_strbuf_t, str: [*c]const u8) bool_9;
pub extern fn ecs_strbuf_mergebuff(dst_buffer: [*c]ecs_strbuf_t, src_buffer: [*c]ecs_strbuf_t) bool_9;
pub extern fn ecs_strbuf_appendstr_zerocpy(buffer: [*c]ecs_strbuf_t, str: [*c]u8) bool_9;
pub extern fn ecs_strbuf_appendstr_zerocpy_const(buffer: [*c]ecs_strbuf_t, str: [*c]const u8) bool_9;
pub extern fn ecs_strbuf_appendstrn(buffer: [*c]ecs_strbuf_t, str: [*c]const u8, n: i32) bool_9;
pub extern fn ecs_strbuf_get(buffer: [*c]ecs_strbuf_t) [*c]u8;
pub extern fn ecs_strbuf_reset(buffer: [*c]ecs_strbuf_t) void;
pub extern fn ecs_strbuf_list_push(buffer: [*c]ecs_strbuf_t, list_open: [*c]const u8, separator: [*c]const u8) void;
pub extern fn ecs_strbuf_list_pop(buffer: [*c]ecs_strbuf_t, list_close: [*c]const u8) void;
pub extern fn ecs_strbuf_list_next(buffer: [*c]ecs_strbuf_t) void;
pub extern fn ecs_strbuf_list_append(buffer: [*c]ecs_strbuf_t, fmt: [*c]const u8, ...) bool_9;
pub extern fn ecs_strbuf_list_appendstr(buffer: [*c]ecs_strbuf_t, str: [*c]const u8) bool_9;
pub const ecs_entity_t = u64;
pub const ecs_type_t = [*c]const ecs_vector_t;
pub const struct_ecs_world_t = @Type(.Opaque);
pub const ecs_world_t = struct_ecs_world_t;
pub const struct_ecs_snapshot_t = @Type(.Opaque);
pub const ecs_snapshot_t = struct_ecs_snapshot_t;
pub const struct_ecs_query_t = @Type(.Opaque);
pub const ecs_query_t = struct_ecs_query_t;
const union_unnamed_10 = extern union {
    parent: ecs_scope_iter_t,
    filter: ecs_filter_iter_t,
    query: ecs_query_iter_t,
};
pub const struct_ecs_iter_t = extern struct {
    world: ?*ecs_world_t,
    system: ecs_entity_t,
    columns: [*c]i32,
    table_count: i32,
    inactive_table_count: i32,
    column_count: u16,
    table: ?*ecs_table_t,
    table_columns: ?*c_void,
    query: ?*ecs_query_t,
    references: ?*ecs_reference_t,
    components: [*c]ecs_entity_t,
    entities: [*c]ecs_entity_t,
    param: ?*c_void,
    delta_time: f32,
    delta_system_time: f32,
    world_time: f32,
    frame_offset: i32,
    table_offset: i32,
    offset: i32,
    count: i32,
    total_count: i32,
    triggered_by: [*c]ecs_entities_t,
    interrupted_by: ecs_entity_t,
    iter: union_unnamed_10,
};
pub const ecs_iter_t = struct_ecs_iter_t;
pub const struct_ecs_ref_t = extern struct {
    table: ?*c_void,
    row: i32,
    size: i32,
    stage: ?*ecs_stage_t,
    record: ?*ecs_record_t,
    ptr: ?*const c_void,
};
pub const ecs_ref_t = struct_ecs_ref_t;
pub const EcsMatchDefault = @enumToInt(enum_ecs_match_kind_t.EcsMatchDefault);
pub const EcsMatchAll = @enumToInt(enum_ecs_match_kind_t.EcsMatchAll);
pub const EcsMatchAny = @enumToInt(enum_ecs_match_kind_t.EcsMatchAny);
pub const EcsMatchExact = @enumToInt(enum_ecs_match_kind_t.EcsMatchExact);
pub const enum_ecs_match_kind_t = extern enum(c_int) {
    EcsMatchDefault = 0,
    EcsMatchAll = 1,
    EcsMatchAny = 2,
    EcsMatchExact = 3,
    _,
};
pub const ecs_match_kind_t = enum_ecs_match_kind_t;
pub const struct_ecs_filter_t = extern struct {
    include: ecs_type_t,
    exclude: ecs_type_t,
    include_kind: ecs_match_kind_t,
    exclude_kind: ecs_match_kind_t,
};
pub const ecs_filter_t = struct_ecs_filter_t;
pub const struct_ecs_world_info_t = extern struct {
    last_component_id: ecs_entity_t,
    last_id: ecs_entity_t,
    min_id: ecs_entity_t,
    max_id: ecs_entity_t,
    delta_time: f32,
    target_fps: f32,
    frame_time_total: f64,
    system_time_total: f64,
    merge_time_total: f64,
    world_time_total: f64,
    frame_count_total: i32,
    merge_count_total: i32,
    pipeline_build_count_total: i32,
    systems_ran_frame: i32,
};
pub const ecs_world_info_t = struct_ecs_world_info_t;
pub const ecs_iter_action_t = ?fn (*ecs_iter_t) callconv(.C) void;
pub const ecs_compare_action_t = ?fn (ecs_entity_t, ?*c_void, ecs_entity_t, ?*c_void) callconv(.C) c_int;
pub const ecs_rank_type_action_t = ?fn (?*ecs_world_t, ecs_entity_t, ecs_type_t) callconv(.C) i32;
pub const ecs_module_action_t = ?fn (?*ecs_world_t, c_int) callconv(.C) void;
pub const ecs_fini_action_t = ?fn (?*ecs_world_t, ?*c_void) callconv(.C) void;
pub const struct_ecs_stage_t = @Type(.Opaque);
pub const ecs_stage_t = struct_ecs_stage_t;
pub const struct_ecs_table_t = @Type(.Opaque);
pub const ecs_table_t = struct_ecs_table_t;
pub const struct_ecs_record_t = @Type(.Opaque);
pub const ecs_record_t = struct_ecs_record_t;
pub const struct_ecs_reference_t = @Type(.Opaque);
pub const ecs_reference_t = struct_ecs_reference_t;
pub const struct_ecs_entities_t = extern struct {
    array: [*c]ecs_entity_t,
    count: i32,
};
pub const ecs_entities_t = struct_ecs_entities_t;
pub const struct_ecs_scope_iter_t = extern struct {
    tables: [*c]ecs_vector_t,
    index: i32,
};
pub const ecs_scope_iter_t = struct_ecs_scope_iter_t;
pub const struct_ecs_filter_iter_t = extern struct {
    filter: ecs_filter_t,
    tables: ?*ecs_sparse_t,
    index: i32,
};
pub const ecs_filter_iter_t = struct_ecs_filter_iter_t;
pub const struct_ecs_query_iter_t = extern struct {
    query: ?*ecs_query_t,
    offset: i32,
    limit: i32,
    remaining: i32,
    index: i32,
};
pub const ecs_query_iter_t = struct_ecs_query_iter_t;
pub const ecs_xtor_t = ?fn (?*ecs_world_t, ecs_entity_t, [*c]const ecs_entity_t, ?*c_void, usize, i32, ?*c_void) callconv(.C) void;
pub const ecs_copy_t = ?fn (?*ecs_world_t, ecs_entity_t, [*c]const ecs_entity_t, [*c]const ecs_entity_t, ?*c_void, ?*const c_void, usize, i32, ?*c_void) callconv(.C) void;
pub const ecs_move_t = ?fn (?*ecs_world_t, ecs_entity_t, [*c]const ecs_entity_t, [*c]const ecs_entity_t, ?*c_void, ?*c_void, usize, i32, ?*c_void) callconv(.C) void;
pub extern var FLECS__TEcsComponent: ecs_type_t;
pub extern var FLECS__TEcsComponentLifecycle: ecs_type_t;
pub extern var FLECS__TEcsType: ecs_type_t;
pub extern var FLECS__TEcsName: ecs_type_t;
pub const struct_ecs_column_t = @Type(.Opaque);
pub const ecs_column_t = struct_ecs_column_t;
pub const struct_ecs_data_t = @Type(.Opaque);
pub const ecs_data_t = struct_ecs_data_t;
pub const EcsStreamHeader = @enumToInt(enum_ecs_blob_header_kind_t.EcsStreamHeader);
pub const EcsTableSegment = @enumToInt(enum_ecs_blob_header_kind_t.EcsTableSegment);
pub const EcsFooterSegment = @enumToInt(enum_ecs_blob_header_kind_t.EcsFooterSegment);
pub const EcsTableHeader = @enumToInt(enum_ecs_blob_header_kind_t.EcsTableHeader);
pub const EcsTableTypeSize = @enumToInt(enum_ecs_blob_header_kind_t.EcsTableTypeSize);
pub const EcsTableType = @enumToInt(enum_ecs_blob_header_kind_t.EcsTableType);
pub const EcsTableSize = @enumToInt(enum_ecs_blob_header_kind_t.EcsTableSize);
pub const EcsTableColumn = @enumToInt(enum_ecs_blob_header_kind_t.EcsTableColumn);
pub const EcsTableColumnHeader = @enumToInt(enum_ecs_blob_header_kind_t.EcsTableColumnHeader);
pub const EcsTableColumnSize = @enumToInt(enum_ecs_blob_header_kind_t.EcsTableColumnSize);
pub const EcsTableColumnData = @enumToInt(enum_ecs_blob_header_kind_t.EcsTableColumnData);
pub const EcsTableColumnNameHeader = @enumToInt(enum_ecs_blob_header_kind_t.EcsTableColumnNameHeader);
pub const EcsTableColumnNameLength = @enumToInt(enum_ecs_blob_header_kind_t.EcsTableColumnNameLength);
pub const EcsTableColumnName = @enumToInt(enum_ecs_blob_header_kind_t.EcsTableColumnName);
pub const EcsStreamFooter = @enumToInt(enum_ecs_blob_header_kind_t.EcsStreamFooter);
pub const enum_ecs_blob_header_kind_t = extern enum(c_int) {
    EcsStreamHeader,
    EcsTableSegment,
    EcsFooterSegment,
    EcsTableHeader,
    EcsTableTypeSize,
    EcsTableType,
    EcsTableSize,
    EcsTableColumn,
    EcsTableColumnHeader,
    EcsTableColumnSize,
    EcsTableColumnData,
    EcsTableColumnNameHeader,
    EcsTableColumnNameLength,
    EcsTableColumnName,
    EcsStreamFooter,
    _,
};
pub const ecs_blob_header_kind_t = enum_ecs_blob_header_kind_t;
pub const struct_ecs_table_reader_t = extern struct {
    state: ecs_blob_header_kind_t,
    table_index: i32,
    table: ?*ecs_table_t,
    data: ?*ecs_data_t,
    type_written: usize,
    type: ecs_type_t,
    column_vector: [*c]ecs_vector_t,
    column_index: i32,
    total_columns: i32,
    column_data: ?*c_void,
    column_size: usize,
    column_alignment: usize,
    column_written: usize,
    row_index: i32,
    row_count: i32,
    name: [*c]const u8,
    name_len: usize,
    name_written: usize,
};
pub const ecs_table_reader_t = struct_ecs_table_reader_t;
pub const struct_ecs_reader_t = extern struct {
    world: ?*ecs_world_t,
    state: ecs_blob_header_kind_t,
    tables: ?*ecs_sparse_t,
    table: ecs_table_reader_t,
};
pub const ecs_reader_t = struct_ecs_reader_t;
pub const struct_ecs_name_writer_t = extern struct {
    name: [*c]u8,
    written: i32,
    len: i32,
    max_len: i32,
};
pub const ecs_name_writer_t = struct_ecs_name_writer_t;
pub const struct_ecs_table_writer_t = extern struct {
    state: ecs_blob_header_kind_t,
    table: ?*ecs_table_t,
    column_vector: [*c]ecs_vector_t,
    type_count: i32,
    type_max_count: i32,
    type_written: usize,
    type_array: [*c]ecs_entity_t,
    column_index: i32,
    column_size: usize,
    column_alignment: usize,
    column_written: usize,
    column_data: ?*c_void,
    row_count: i32,
    row_index: i32,
    name: ecs_name_writer_t,
};
pub const ecs_table_writer_t = struct_ecs_table_writer_t;
pub const struct_ecs_writer_t = extern struct {
    world: ?*ecs_world_t,
    state: ecs_blob_header_kind_t,
    table: ecs_table_writer_t,
    @"error": c_int,
};
pub const ecs_writer_t = struct_ecs_writer_t;
pub extern fn ecs_new_entity(world: ?*ecs_world_t, e: ecs_entity_t, id: [*c]const u8, components: [*c]const u8) ecs_entity_t;
pub extern fn ecs_new_component(world: ?*ecs_world_t, e: ecs_entity_t, id: [*c]const u8, size: usize, alignment: usize) ecs_entity_t;
pub extern fn ecs_new_module(world: ?*ecs_world_t, e: ecs_entity_t, name: [*c]const u8, size: usize, alignment: usize) ecs_entity_t;
pub extern fn ecs_new_type(world: ?*ecs_world_t, e: ecs_entity_t, id: [*c]const u8, components: [*c]const u8) ecs_entity_t;
pub extern fn ecs_new_prefab(world: ?*ecs_world_t, e: ecs_entity_t, id: [*c]const u8, sig: [*c]const u8) ecs_entity_t;
pub extern fn ecs_new_system(world: ?*ecs_world_t, e: ecs_entity_t, name: [*c]const u8, phase: ecs_entity_t, signature: [*c]const u8, action: ecs_iter_action_t) ecs_entity_t;
pub extern fn ecs_new_trigger(world: ?*ecs_world_t, e: ecs_entity_t, name: [*c]const u8, kind: ecs_entity_t, component: [*c]const u8, action: ecs_iter_action_t) ecs_entity_t;
pub extern fn ecs_new_pipeline(world: ?*ecs_world_t, e: ecs_entity_t, name: [*c]const u8, expr: [*c]const u8) ecs_entity_t;
pub extern fn ecs_module_path_from_c(c_name: [*c]const u8) [*c]u8;
pub const EcsInOut = @enumToInt(enum_ecs_sig_inout_kind_t.EcsInOut);
pub const EcsIn = @enumToInt(enum_ecs_sig_inout_kind_t.EcsIn);
pub const EcsOut = @enumToInt(enum_ecs_sig_inout_kind_t.EcsOut);
pub const enum_ecs_sig_inout_kind_t = extern enum(c_int) {
    EcsInOut,
    EcsIn,
    EcsOut,
    _,
};
pub const ecs_sig_inout_kind_t = enum_ecs_sig_inout_kind_t;
pub const EcsFromSelf = @enumToInt(enum_ecs_sig_from_kind_t.EcsFromSelf);
pub const EcsFromOwned = @enumToInt(enum_ecs_sig_from_kind_t.EcsFromOwned);
pub const EcsFromShared = @enumToInt(enum_ecs_sig_from_kind_t.EcsFromShared);
pub const EcsFromParent = @enumToInt(enum_ecs_sig_from_kind_t.EcsFromParent);
pub const EcsFromSystem = @enumToInt(enum_ecs_sig_from_kind_t.EcsFromSystem);
pub const EcsFromEmpty = @enumToInt(enum_ecs_sig_from_kind_t.EcsFromEmpty);
pub const EcsFromEntity = @enumToInt(enum_ecs_sig_from_kind_t.EcsFromEntity);
pub const EcsCascade = @enumToInt(enum_ecs_sig_from_kind_t.EcsCascade);
pub const enum_ecs_sig_from_kind_t = extern enum(c_int) {
    EcsFromSelf,
    EcsFromOwned,
    EcsFromShared,
    EcsFromParent,
    EcsFromSystem,
    EcsFromEmpty,
    EcsFromEntity,
    EcsCascade,
    _,
};
pub const ecs_sig_from_kind_t = enum_ecs_sig_from_kind_t;
pub const EcsOperAnd = @enumToInt(enum_ecs_sig_oper_kind_t.EcsOperAnd);
pub const EcsOperOr = @enumToInt(enum_ecs_sig_oper_kind_t.EcsOperOr);
pub const EcsOperNot = @enumToInt(enum_ecs_sig_oper_kind_t.EcsOperNot);
pub const EcsOperOptional = @enumToInt(enum_ecs_sig_oper_kind_t.EcsOperOptional);
pub const EcsOperLast = @enumToInt(enum_ecs_sig_oper_kind_t.EcsOperLast);
pub const enum_ecs_sig_oper_kind_t = extern enum(c_int) {
    EcsOperAnd = 0,
    EcsOperOr = 1,
    EcsOperNot = 2,
    EcsOperOptional = 3,
    EcsOperLast = 4,
    _,
};
pub const ecs_sig_oper_kind_t = enum_ecs_sig_oper_kind_t;
const union_unnamed_11 = extern union {
    type: [*c]ecs_vector_t,
    component: ecs_entity_t,
};
pub const struct_ecs_sig_column_t = extern struct {
    from_kind: ecs_sig_from_kind_t,
    oper_kind: ecs_sig_oper_kind_t,
    inout_kind: ecs_sig_inout_kind_t,
    is: union_unnamed_11,
    source: ecs_entity_t,
};
pub const ecs_sig_column_t = struct_ecs_sig_column_t;
pub const struct_ecs_sig_t = extern struct {
    name: [*c]const u8,
    expr: [*c]u8,
    columns: [*c]ecs_vector_t,
};
pub const ecs_sig_t = struct_ecs_sig_t;
pub extern fn ecs_sig_add(sig: [*c]ecs_sig_t, from_kind: ecs_sig_from_kind_t, oper_kind: ecs_sig_oper_kind_t, access_kind: ecs_sig_inout_kind_t, component: ecs_entity_t, source: ecs_entity_t) c_int;
pub extern fn ecs_query_new_w_sig(world: ?*ecs_world_t, system: ecs_entity_t, sig: [*c]ecs_sig_t) ?*ecs_query_t;
pub extern fn ecs_strerror(error_code: i32) [*c]const u8;
pub extern fn _ecs_abort(error_code: i32, param: [*c]const u8, file: [*c]const u8, line: i32) void;
pub extern fn _ecs_assert(condition: bool_9, error_code: i32, param: [*c]const u8, condition_str: [*c]const u8, file: [*c]const u8, line: i32) void;
pub extern fn _ecs_parser_error(name: [*c]const u8, expr: [*c]const u8, column: c_int, fmt: [*c]const u8, ...) void;
pub extern fn _ecs_trace(level: c_int, file: [*c]const u8, line: i32, fmt: [*c]const u8, ...) void;
pub extern fn ecs_trace_push() void;
pub extern fn ecs_trace_pop() void;
pub extern fn ecs_type_from_entity(world: ?*ecs_world_t, entity: ecs_entity_t) ecs_type_t;
pub extern fn ecs_type_to_entity(world: ?*ecs_world_t, type: ecs_type_t) ecs_entity_t;
pub extern fn ecs_type_str(world: ?*ecs_world_t, type: ecs_type_t) [*c]u8;
pub extern fn ecs_type_from_str(world: ?*ecs_world_t, expr: [*c]const u8) ecs_type_t;
pub extern fn ecs_type_find(world: ?*ecs_world_t, array: [*c]ecs_entity_t, count: i32) ecs_type_t;
pub extern fn ecs_type_merge(world: ?*ecs_world_t, type: ecs_type_t, type_add: ecs_type_t, type_remove: ecs_type_t) ecs_type_t;
pub extern fn ecs_type_add(world: ?*ecs_world_t, type: ecs_type_t, entity: ecs_entity_t) ecs_type_t;
pub extern fn ecs_type_remove(world: ?*ecs_world_t, type: ecs_type_t, entity: ecs_entity_t) ecs_type_t;
pub extern fn ecs_type_has_entity(world: ?*ecs_world_t, type: ecs_type_t, entity: ecs_entity_t) bool_9;
pub extern fn ecs_type_has_type(world: ?*ecs_world_t, type: ecs_type_t, has: ecs_type_t) bool_9;
pub extern fn ecs_type_owns_entity(world: ?*ecs_world_t, type: ecs_type_t, entity: ecs_entity_t, owned: bool_9) bool_9;
pub extern fn ecs_type_owns_type(world: ?*ecs_world_t, type: ecs_type_t, has: ecs_type_t, owned: bool_9) bool_9;
pub extern fn ecs_type_get_entity_for_xor(world: ?*ecs_world_t, type: ecs_type_t, xor_tag: ecs_entity_t) ecs_entity_t;
pub extern fn ecs_type_index_of(type: ecs_type_t, component: ecs_entity_t) i16;
pub const struct_EcsName = extern struct {
    value: [*c]const u8,
    symbol: [*c]const u8,
    alloc_value: [*c]u8,
};
pub const EcsName = struct_EcsName;
pub const struct_EcsComponent = extern struct {
    size: usize,
    alignment: usize,
};
pub const EcsComponent = struct_EcsComponent;
pub const struct_EcsType = extern struct {
    type: ecs_type_t,
    normalized: ecs_type_t,
};
pub const EcsType = struct_EcsType;
pub const struct_EcsComponentLifecycle = extern struct {
    ctor: ecs_xtor_t,
    dtor: ecs_xtor_t,
    copy: ecs_copy_t,
    move: ecs_move_t,
    ctx: ?*c_void,
};
pub const EcsComponentLifecycle = struct_EcsComponentLifecycle;
pub extern fn ecs_init() ?*ecs_world_t;
pub extern fn ecs_mini() ?*ecs_world_t;
pub extern fn ecs_init_w_args(argc: c_int, argv: [*c][*c]u8) ?*ecs_world_t;
pub extern fn ecs_fini(world: ?*ecs_world_t) c_int;
pub extern fn ecs_atfini(world: ?*ecs_world_t, action: ecs_fini_action_t, ctx: ?*c_void) void;
pub extern fn ecs_set_component_actions(world: ?*ecs_world_t, component: ecs_entity_t, actions: [*c]EcsComponentLifecycle) void;
pub extern fn ecs_set_context(world: ?*ecs_world_t, ctx: ?*c_void) void;
pub extern fn ecs_get_context(world: ?*ecs_world_t) ?*c_void;
pub extern fn ecs_get_world_info(world: ?*ecs_world_t) [*c]const ecs_world_info_t;
pub extern fn ecs_dim(world: ?*ecs_world_t, entity_count: i32) void;
pub extern fn ecs_dim_type(world: ?*ecs_world_t, type: ecs_type_t, entity_count: i32) void;
pub extern fn ecs_set_entity_range(world: ?*ecs_world_t, id_start: ecs_entity_t, id_end: ecs_entity_t) void;
pub extern fn ecs_enable_range_check(world: ?*ecs_world_t, enable: bool_9) bool_9;
pub extern fn ecs_enable_locking(world: ?*ecs_world_t, enable: bool_9) bool_9;
pub extern fn ecs_lock(world: ?*ecs_world_t) void;
pub extern fn ecs_unlock(world: ?*ecs_world_t) void;
pub extern fn ecs_tracing_enable(enabled: bool_9) void;
pub extern fn ecs_new_w_entity(world: ?*ecs_world_t, entity: ecs_entity_t) ecs_entity_t;
pub extern fn ecs_new_w_type(world: ?*ecs_world_t, type: ecs_type_t) ecs_entity_t;
pub extern fn ecs_bulk_new_w_entity(world: ?*ecs_world_t, entity: ecs_entity_t, count: i32) ecs_entity_t;
pub extern fn ecs_bulk_new_w_type(world: ?*ecs_world_t, type: ecs_type_t, count: i32, data: [*c]?*c_void) ecs_entity_t;
pub extern fn ecs_add_entity(world: ?*ecs_world_t, entity: ecs_entity_t, entity_add: ecs_entity_t) void;
pub extern fn ecs_add_type(world: ?*ecs_world_t, entity: ecs_entity_t, type: ecs_type_t) void;
pub extern fn ecs_bulk_add_entity(world: ?*ecs_world_t, entity_add: ecs_entity_t, filter: [*c]const ecs_filter_t) void;
pub extern fn ecs_bulk_add_type(world: ?*ecs_world_t, type: ecs_type_t, filter: [*c]const ecs_filter_t) void;
pub extern fn ecs_remove_entity(world: ?*ecs_world_t, entity: ecs_entity_t, entity_remove: ecs_entity_t) void;
pub extern fn ecs_remove_type(world: ?*ecs_world_t, entity: ecs_entity_t, type: ecs_type_t) void;
pub extern fn ecs_bulk_remove_entity(world: ?*ecs_world_t, entity_remove: ecs_entity_t, filter: [*c]const ecs_filter_t) void;
pub extern fn ecs_bulk_remove_type(world: ?*ecs_world_t, type: ecs_type_t, filter: [*c]const ecs_filter_t) void;
pub extern fn ecs_add_remove_entity(world: ?*ecs_world_t, entity: ecs_entity_t, to_add: ecs_entity_t, to_remove: ecs_entity_t) void;
pub extern fn ecs_add_remove_type(world: ?*ecs_world_t, entity: ecs_entity_t, to_add: ecs_type_t, to_remove: ecs_type_t) void;
pub extern fn ecs_bulk_add_remove_type(world: ?*ecs_world_t, to_add: ecs_type_t, to_remove: ecs_type_t, filter: [*c]const ecs_filter_t) void;
pub extern fn ecs_delete(world: ?*ecs_world_t, entity: ecs_entity_t) void;
pub extern fn ecs_bulk_delete(world: ?*ecs_world_t, filter: [*c]const ecs_filter_t) void;
pub extern fn ecs_clone(world: ?*ecs_world_t, dst: ecs_entity_t, src: ecs_entity_t, copy_value: bool_9) ecs_entity_t;
pub extern fn ecs_get_w_entity(world: ?*ecs_world_t, entity: ecs_entity_t, component: ecs_entity_t) ?*const c_void;
pub extern fn ecs_get_ref_w_entity(world: ?*ecs_world_t, ref: [*c]ecs_ref_t, entity: ecs_entity_t, component: ecs_entity_t) ?*const c_void;
pub extern fn ecs_get_mut_w_entity(world: ?*ecs_world_t, entity: ecs_entity_t, component: ecs_entity_t, is_added: [*c]bool_9) ?*c_void;
pub extern fn ecs_modified_w_entity(world: ?*ecs_world_t, entity: ecs_entity_t, component: ecs_entity_t) void;
pub extern fn ecs_set_ptr_w_entity(world: ?*ecs_world_t, entity: ecs_entity_t, component: ecs_entity_t, size: usize, ptr: ?*const c_void) ecs_entity_t;
pub extern fn ecs_has_entity(world: ?*ecs_world_t, entity: ecs_entity_t, to_check: ecs_entity_t) bool_9;
pub extern fn ecs_has_type(world: ?*ecs_world_t, entity: ecs_entity_t, type: ecs_type_t) bool_9;
pub extern fn ecs_get_type(world: ?*ecs_world_t, entity: ecs_entity_t) ecs_type_t;
pub extern fn ecs_get_name(world: ?*ecs_world_t, entity: ecs_entity_t) [*c]const u8;
pub extern fn ecs_get_parent_w_entity(world: ?*ecs_world_t, entity: ecs_entity_t, component: ecs_entity_t) ecs_entity_t;
pub extern fn ecs_enable(world: ?*ecs_world_t, entity: ecs_entity_t, enabled: bool_9) void;
pub extern fn ecs_filter_iter(world: ?*ecs_world_t, filter: [*c]const ecs_filter_t) ecs_iter_t;
pub extern fn ecs_snapshot_filter_iter(world: ?*ecs_world_t, snapshot: ?*const ecs_snapshot_t, filter: [*c]const ecs_filter_t) ecs_iter_t;
pub extern fn ecs_filter_next(iter: [*c]ecs_iter_t) bool_9;
pub extern fn ecs_query_new(world: ?*ecs_world_t, sig: [*c]const u8) ?*ecs_query_t;
pub extern fn ecs_query_free(query: ?*ecs_query_t) void;
pub extern fn ecs_query_iter(query: ?*ecs_query_t) ecs_iter_t;
pub extern fn ecs_query_iter_page(query: ?*ecs_query_t, offset: i32, limit: i32) ecs_iter_t;
pub extern fn ecs_query_next(iter: [*c]ecs_iter_t) bool_9;
pub extern fn ecs_query_next_worker(it: [*c]ecs_iter_t, current: i32, total: i32) bool_9;
pub extern fn ecs_query_sort(world: ?*ecs_world_t, query: ?*ecs_query_t, sort_component: ecs_entity_t, compare: ecs_compare_action_t) void;
pub extern fn ecs_query_sort_types(world: ?*ecs_world_t, query: ?*ecs_query_t, monitor_component: ecs_entity_t, rank_action: ecs_rank_type_action_t) void;
pub extern fn ecs_count_entity(world: ?*ecs_world_t, entity: ecs_entity_t) i32;
pub extern fn ecs_count_type(world: ?*ecs_world_t, type: ecs_type_t) i32;
pub extern fn ecs_count_w_filter(world: ?*ecs_world_t, filter: [*c]const ecs_filter_t) i32;
pub extern fn ecs_lookup(world: ?*ecs_world_t, name: [*c]const u8) ecs_entity_t;
pub extern fn ecs_lookup_child(world: ?*ecs_world_t, parent: ecs_entity_t, name: [*c]const u8) ecs_entity_t;
pub extern fn ecs_lookup_path_w_sep(world: ?*ecs_world_t, parent: ecs_entity_t, path: [*c]const u8, sep: [*c]const u8, prefix: [*c]const u8) ecs_entity_t;
pub extern fn ecs_get_path_w_sep(world: ?*ecs_world_t, parent: ecs_entity_t, child: ecs_entity_t, component: ecs_entity_t, sep: [*c]u8, prefix: [*c]u8) [*c]u8;
pub extern fn ecs_new_from_path_w_sep(world: ?*ecs_world_t, parent: ecs_entity_t, path: [*c]const u8, sep: [*c]const u8, prefix: [*c]const u8) ecs_entity_t;
pub extern fn ecs_scope_iter(world: ?*ecs_world_t, parent: ecs_entity_t) ecs_iter_t;
pub extern fn ecs_scope_next(it: [*c]ecs_iter_t) bool_9;
pub extern fn ecs_set_scope(world: ?*ecs_world_t, scope: ecs_entity_t) ecs_entity_t;
pub extern fn ecs_get_scope(world: ?*ecs_world_t) ecs_entity_t;
pub extern fn ecs_set_name_prefix(world: ?*ecs_world_t, prefix: [*c]const u8) [*c]const u8;
pub extern fn ecs_column_w_size(it: [*c]const ecs_iter_t, size: usize, column: i32) ?*c_void;
pub extern fn ecs_is_owned(it: [*c]const ecs_iter_t, column: i32) bool_9;
pub extern fn ecs_element_w_size(it: [*c]const ecs_iter_t, size: usize, column: i32, row: i32) ?*c_void;
pub extern fn ecs_column_source(it: [*c]const ecs_iter_t, column: i32) ecs_entity_t;
pub extern fn ecs_column_entity(it: [*c]const ecs_iter_t, column: i32) ecs_entity_t;
pub extern fn ecs_column_type(it: [*c]const ecs_iter_t, column: i32) ecs_type_t;
pub extern fn ecs_is_readonly(it: [*c]const ecs_iter_t, column: i32) bool_9;
pub extern fn ecs_iter_type(it: [*c]const ecs_iter_t) ecs_type_t;
pub extern fn ecs_table_column(it: [*c]const ecs_iter_t, column: i32) ?*c_void;
pub extern fn ecs_import(world: ?*ecs_world_t, module: ecs_module_action_t, module_name: [*c]const u8, flags: c_int, handles_out: ?*c_void, handles_size: usize) ecs_entity_t;
pub extern fn ecs_import_from_library(world: ?*ecs_world_t, library_name: [*c]const u8, module_name: [*c]const u8, flags: c_int) ecs_entity_t;
pub extern fn ecs_staging_begin(world: ?*ecs_world_t) bool_9;
pub extern fn ecs_staging_end(world: ?*ecs_world_t, is_staged: bool_9) bool_9;
pub extern fn ecs_merge(world: ?*ecs_world_t) void;
pub extern fn ecs_set_automerge(world: ?*ecs_world_t, auto_merge: bool_9) void;
pub extern fn ecs_enable_admin(world: ?*ecs_world_t, port: u16) c_int;
pub extern fn ecs_enable_console(world: ?*ecs_world_t) c_int;
pub extern var FLECS__TEcsTrigger: ecs_type_t;
pub extern var FLECS__TEcsModule: ecs_type_t;
pub extern var FLECS__TEcsSystem: ecs_type_t;
pub extern var FLECS__TEcsTickSource: ecs_type_t;
pub extern var FLECS__TEcsSignatureExpr: ecs_type_t;
pub extern var FLECS__TEcsSignature: ecs_type_t;
pub extern var FLECS__TEcsQuery: ecs_type_t;
pub extern var FLECS__TEcsIterAction: ecs_type_t;
pub extern var FLECS__TEcsContext: ecs_type_t;
pub const struct_EcsTickSource = extern struct {
    tick: bool_9,
    time_elapsed: f32,
};
pub const EcsTickSource = struct_EcsTickSource;
pub const struct_EcsSignatureExpr = extern struct {
    expr: [*c]const u8,
};
pub const EcsSignatureExpr = struct_EcsSignatureExpr;
pub const struct_EcsSignature = extern struct {
    signature: ecs_sig_t,
};
pub const EcsSignature = struct_EcsSignature;
pub const struct_EcsQuery = extern struct {
    query: ?*ecs_query_t,
};
pub const EcsQuery = struct_EcsQuery;
pub const struct_EcsTrigger = extern struct {
    kind: ecs_entity_t,
    action: ecs_iter_action_t,
    component: ecs_entity_t,
    self: ecs_entity_t,
    ctx: ?*c_void,
};
pub const EcsTrigger = struct_EcsTrigger;
pub const struct_EcsIterAction = extern struct {
    action: ecs_iter_action_t,
};
pub const EcsIterAction = struct_EcsIterAction;
pub const struct_EcsContext = extern struct {
    ctx: ?*const c_void,
};
pub const EcsContext = struct_EcsContext;
pub extern fn ecs_run(world: ?*ecs_world_t, system: ecs_entity_t, delta_time: f32, param: ?*c_void) ecs_entity_t;
pub extern fn ecs_run_w_filter(world: ?*ecs_world_t, system: ecs_entity_t, delta_time: f32, offset: i32, limit: i32, filter: [*c]const ecs_filter_t, param: ?*c_void) ecs_entity_t;
pub const EcsSystemStatusNone = @enumToInt(enum_ecs_system_status_t.EcsSystemStatusNone);
pub const EcsSystemEnabled = @enumToInt(enum_ecs_system_status_t.EcsSystemEnabled);
pub const EcsSystemDisabled = @enumToInt(enum_ecs_system_status_t.EcsSystemDisabled);
pub const EcsSystemActivated = @enumToInt(enum_ecs_system_status_t.EcsSystemActivated);
pub const EcsSystemDeactivated = @enumToInt(enum_ecs_system_status_t.EcsSystemDeactivated);
pub const enum_ecs_system_status_t = extern enum(c_int) {
    EcsSystemStatusNone = 0,
    EcsSystemEnabled = 1,
    EcsSystemDisabled = 2,
    EcsSystemActivated = 3,
    EcsSystemDeactivated = 4,
    _,
};
pub const ecs_system_status_t = enum_ecs_system_status_t;
pub const ecs_system_status_action_t = ?fn (?*ecs_world_t, ecs_entity_t, ecs_system_status_t, ?*c_void) callconv(.C) void;
pub extern fn ecs_set_system_status_action(world: ?*ecs_world_t, system: ecs_entity_t, action: ecs_system_status_action_t, ctx: ?*const c_void) void;
pub const struct_FlecsSystems = extern struct {
    dummy: i32,
};
pub const FlecsSystems = struct_FlecsSystems;
pub extern fn FlecsSystemsImport(world: ?*ecs_world_t, flags: c_int) void;
pub extern fn ecs_set_pipeline(world: ?*ecs_world_t, pipeline: ecs_entity_t) void;
pub extern fn ecs_get_pipeline(world: ?*ecs_world_t) ecs_entity_t;
pub extern fn ecs_progress(world: ?*ecs_world_t, delta_time: f32) bool_9;
pub extern fn ecs_set_target_fps(world: ?*ecs_world_t, fps: f32) void;
pub extern fn ecs_quit(world: ?*ecs_world_t) void;
pub extern fn ecs_deactivate_systems(world: ?*ecs_world_t) void;
pub extern fn ecs_set_threads(world: ?*ecs_world_t, threads: i32) void;
pub extern fn ecs_get_threads(world: ?*ecs_world_t) i32;
pub extern fn ecs_get_thread_index(world: ?*ecs_world_t) u16;
pub const struct_FlecsPipeline = extern struct {
    dummy: i32,
};
pub const FlecsPipeline = struct_FlecsPipeline;
pub extern fn FlecsPipelineImport(world: ?*ecs_world_t, flags: c_int) void;
pub extern var FLECS__TEcsTimer: ecs_type_t;
pub extern var FLECS__TEcsRateFilter: ecs_type_t;
pub const struct_EcsTimer = extern struct {
    timeout: f32,
    time: f32,
    fired_count: i32,
    active: bool_9,
    single_shot: bool_9,
};
pub const EcsTimer = struct_EcsTimer;
pub const struct_EcsRateFilter = extern struct {
    src: ecs_entity_t,
    rate: i32,
    tick_count: i32,
    time_elapsed: f32,
};
pub const EcsRateFilter = struct_EcsRateFilter;
pub extern fn ecs_set_timeout(world: ?*ecs_world_t, timer: ecs_entity_t, timeout: f32) ecs_entity_t;
pub extern fn ecs_get_timeout(world: ?*ecs_world_t, timer: ecs_entity_t) f32;
pub extern fn ecs_set_interval(world: ?*ecs_world_t, timer: ecs_entity_t, interval: f32) ecs_entity_t;
pub extern fn ecs_get_interval(world: ?*ecs_world_t, timer: ecs_entity_t) f32;
pub extern fn ecs_start_timer(world: ?*ecs_world_t, timer: ecs_entity_t) void;
pub extern fn ecs_stop_timer(world: ?*ecs_world_t, timer: ecs_entity_t) void;
pub extern fn ecs_set_rate_filter(world: ?*ecs_world_t, filter: ecs_entity_t, rate: i32, source: ecs_entity_t) ecs_entity_t;
pub extern fn ecs_set_tick_source(world: ?*ecs_world_t, system: ecs_entity_t, tick_source: ecs_entity_t) void;
pub const struct_FlecsTimers = extern struct {
    dummy: i32,
};
pub const FlecsTimers = struct_FlecsTimers;
pub extern fn FlecsTimersImport(world: ?*ecs_world_t, flags: c_int) void;
pub extern fn ecs_snapshot_take(world: ?*ecs_world_t, filter: [*c]const ecs_filter_t) ?*ecs_snapshot_t;
pub extern fn ecs_snapshot_restore(world: ?*ecs_world_t, snapshot: ?*ecs_snapshot_t) void;
pub extern fn ecs_snapshot_copy(world: ?*ecs_world_t, snapshot: ?*const ecs_snapshot_t, filter: [*c]const ecs_filter_t) ?*ecs_snapshot_t;
pub extern fn ecs_snapshot_free(world: ?*ecs_world_t, snapshot: ?*ecs_snapshot_t) void;
pub extern fn ecs_reader_init(world: ?*ecs_world_t) ecs_reader_t;
pub extern fn ecs_snapshot_reader_init(world: ?*ecs_world_t, snapshot: ?*const ecs_snapshot_t) ecs_reader_t;
pub extern fn ecs_reader_read(buffer: [*c]u8, size: usize, reader: [*c]ecs_reader_t) usize;
pub extern fn ecs_writer_init(world: ?*ecs_world_t) ecs_writer_t;
pub extern fn ecs_writer_write(buffer: [*c]const u8, size: usize, writer: [*c]ecs_writer_t) c_int;
pub const __INTMAX_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):64:9
pub const __UINTMAX_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):68:9
pub const __PTRDIFF_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):75:9
pub const __INTPTR_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):79:9
pub const __SIZE_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):83:9
pub const __CHAR16_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_short"); // (no file):95:9
pub const __CHAR32_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):96:9
pub const __UINTPTR_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):98:9
pub const __INT8_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_signed"); // (no file):148:9
pub const __INT64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):160:9
pub const __UINT8_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_char"); // (no file):164:9
pub const __UINT16_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_short"); // (no file):172:9
pub const __UINT32_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):180:9
pub const __UINT64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):188:9
pub const __INT_LEAST8_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_signed"); // (no file):196:9
pub const __UINT_LEAST8_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_char"); // (no file):200:9
pub const __UINT_LEAST16_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_short"); // (no file):210:9
pub const __UINT_LEAST32_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):220:9
pub const __INT_LEAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):226:9
pub const __UINT_LEAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):230:9
pub const __INT_FAST8_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_signed"); // (no file):236:9
pub const __UINT_FAST8_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_char"); // (no file):240:9
pub const __UINT_FAST16_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_short"); // (no file):250:9
pub const __UINT_FAST32_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):260:9
pub const __INT_FAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):266:9
pub const __UINT_FAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_long"); // (no file):270:9
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token .HashHash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:113:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token .Hash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:114:9
pub const __const = @compileError("unable to translate C expr: unexpected token .Keyword_const"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:116:9
pub const __signed = @compileError("unable to translate C expr: unexpected token .Keyword_signed"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:117:9
pub const __volatile = @compileError("unable to translate C expr: unexpected token .Keyword_volatile"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:118:9
pub const __kpi_deprecated = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:202:9
pub const __restrict = @compileError("unable to translate C expr: unexpected token .Keyword_restrict"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:222:9
pub const __swift_unavailable = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:288:9
pub const __header_inline = @compileError("unable to translate C expr: unexpected token .Keyword_inline"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:322:10
pub const __IDSTRING = @compileError("unable to translate C expr: unexpected token .Keyword_static"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:379:9
pub const __FBSDID = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:399:9
pub const __DECONST = @compileError("unable to translate C expr: unexpected token .Keyword_const"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:403:9
pub const __DEVOLATILE = @compileError("unable to translate C expr: unexpected token .Keyword_volatile"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:407:9
pub const __DEQUALIFY = @compileError("unable to translate C expr: unexpected token .Keyword_const"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:411:9
pub const __alloc_size = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:429:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:35:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:41:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:47:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:53:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:59:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:65:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:71:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:77:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:83:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_3 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:89:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:95:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:101:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:107:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:113:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:119:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:125:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:131:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:137:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:143:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_3 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:149:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_4 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:155:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:161:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:167:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:173:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_3 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:179:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:185:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:191:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:197:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_3 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:203:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:209:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:215:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:221:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_3 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:227:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_4 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:233:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:239:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:245:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:251:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_3 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:257:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_4 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:263:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_0 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:269:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:275:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_2 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:281:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_3 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:287:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_4 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:293:9
pub const __DARWIN_ALIAS_STARTING_MAC___MAC_10_15_1 = @compileError("unable to translate C expr: unexpected token .Nl"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:485:9
pub const __DARWIN_ALIAS_STARTING = @compileError("unable to translate C expr: unexpected token .HashHash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:635:9
pub const __POSIX_C_DEPRECATED = @compileError("unable to translate C expr: unexpected token .HashHash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:698:9
pub const __compiler_barrier = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:812:9
pub const __enum_decl = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:836:9
pub const __enum_closed_decl = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:838:9
pub const __options_decl = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:840:9
pub const __options_closed_decl = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:842:9
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2919:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2920:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2921:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2923:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2927:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2929:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2934:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2938:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2939:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2941:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2945:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2947:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2951:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2953:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2958:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2962:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2963:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2965:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2969:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2971:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2975:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2977:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2982:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2987:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2991:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2993:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2997:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:2999:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3003:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3005:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_5 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3009:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_5_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3011:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_6 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3015:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_6_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3017:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3021:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_7_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3023:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3027:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3029:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3033:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3035:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3039:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3040:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3041:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3042:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3043:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3044:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3046:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3050:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3052:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3057:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3061:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3062:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3064:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3068:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3070:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3074:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3076:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3081:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3085:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3086:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3088:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3092:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3094:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3098:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3100:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3105:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3109:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3110:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3112:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3116:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3118:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3122:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3124:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_5 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3128:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_5_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3130:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_6 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3134:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_6_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3136:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3140:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_7_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3142:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3146:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3148:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3152:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3154:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3158:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3159:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3160:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3161:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3162:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3163:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3165:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3169:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3171:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3176:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3180:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3181:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3183:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3187:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3189:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3193:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3195:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3200:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3204:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3205:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3207:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3211:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3213:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3217:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3219:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3224:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3228:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3229:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3231:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3235:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3237:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_5 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3241:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_5_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3243:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_6 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3247:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_6_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3249:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3253:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_7_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3255:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3259:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3261:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3265:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3267:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3271:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3272:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3273:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3274:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3275:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3276:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3278:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3282:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3284:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3289:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3293:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3294:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3296:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3300:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3302:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3306:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3308:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3313:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3317:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3318:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3320:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3324:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3326:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3330:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3332:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3337:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3341:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3342:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3344:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_5 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3348:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_5_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3350:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_6 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3354:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_6_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3356:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3360:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_7_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3362:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3366:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3368:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3372:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3374:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3378:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3379:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3380:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEPRECATED__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3381:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3382:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3383:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3384:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3386:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3390:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3392:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3397:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3401:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3402:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3404:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3408:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3410:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3414:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3416:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3421:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3425:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3426:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3428:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3432:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3434:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3438:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3440:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3445:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_5 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3449:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_5_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3451:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_6 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3455:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_6_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3457:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3461:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_7_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3463:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3467:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3469:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3473:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3475:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3479:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3480:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3481:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3482:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3483:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3484:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3486:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3490:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3492:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3497:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3501:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3502:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3504:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3508:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3510:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3514:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3516:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3521:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3525:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3526:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3528:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3532:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3534:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3538:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3540:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3545:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3549:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_6 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3550:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_6_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3552:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3556:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_7_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3558:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3562:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3564:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3568:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3570:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3574:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3575:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3576:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3577:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3578:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3579:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3581:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3585:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3587:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3592:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3596:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3597:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3599:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3603:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3605:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3609:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3611:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3616:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3620:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3621:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3623:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3627:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3629:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3633:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3635:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3640:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_13_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3644:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3645:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_7_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3647:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3651:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3653:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3657:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3659:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3663:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3664:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3665:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3666:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3667:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3668:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3670:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3674:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3676:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3681:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3685:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3686:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3688:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3692:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3694:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3698:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3700:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3705:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3709:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3710:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3712:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3716:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3718:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3722:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3724:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3729:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3733:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3734:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3736:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3740:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3742:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3746:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3747:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3748:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3749:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3750:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3751:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3753:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3757:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3759:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3764:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3768:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3769:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3771:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3775:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3777:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3781:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3783:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3788:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3792:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3793:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3795:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3799:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3801:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3805:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3807:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3812:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3816:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_14 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3817:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3818:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3820:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3824:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3825:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3826:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_0 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3827:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_0_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3829:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3833:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3834:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3835:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3837:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3841:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3843:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3848:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3852:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3853:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3855:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3859:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3861:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3865:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3867:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3872:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3876:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3877:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3879:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3883:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3885:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3889:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3891:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3896:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3900:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3902:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3906:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3908:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3912:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3914:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3918:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3920:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_5 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3924:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_5_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3926:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_6 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3930:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_6_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3932:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_7 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3936:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_7_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3938:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_8 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3942:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_8_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3944:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_9 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3948:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_9_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3950:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_13_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3955:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3959:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3960:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3961:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3962:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3963:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3964:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3966:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3970:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3972:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3976:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3977:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3979:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3983:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3985:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3989:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3991:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:3996:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4000:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4001:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4003:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4007:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4009:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4013:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4015:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4020:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4024:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4025:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4026:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4027:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4029:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4033:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4034:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4036:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4040:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4042:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4046:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4048:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4053:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4057:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4058:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4060:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4064:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4066:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4070:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4072:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4077:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4081:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4082:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4083:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4084:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4085:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4087:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4091:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4093:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4098:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4102:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4103:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4105:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4109:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4111:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4115:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4117:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4122:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4126:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4127:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4129:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4133:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4135:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4139:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4141:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4146:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4150:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4152:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4156:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4157:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4158:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4159:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4160:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4161:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4163:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4167:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4169:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4173:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4175:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4179:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4180:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4182:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4186:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4188:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4192:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4194:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4199:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4203:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4204:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4205:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4206:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4208:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4212:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4214:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4218:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4219:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4221:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4225:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4227:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4231:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4233:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4238:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4242:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4243:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4244:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4245:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4247:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4251:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4252:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4254:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4258:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4260:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4264:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4266:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4271:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4275:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4276:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4277:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4278:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4279:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4281:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_3 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4285:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_3_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4287:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4291:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4293:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4298:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4302:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4303:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4305:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4309:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4311:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4315:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4317:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4322:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4326:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4327:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4328:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4329:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4330:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4332:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4336:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4338:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4342:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4344:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4348:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4349:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4350:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4351:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4353:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4357:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4359:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4363:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4364:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4365:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4366:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4368:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4372:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4373:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4374:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4375:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_1_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4377:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_2 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4381:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_2_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4383:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4387:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_4_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4389:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4394:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4398:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4400:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4404:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_14 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4405:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_NA = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4406:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_NA_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4407:21
pub const __AVAILABILITY_INTERNAL__MAC_10_13 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4408:21
pub const __AVAILABILITY_INTERNAL__MAC_10_13_4 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4409:21
pub const __AVAILABILITY_INTERNAL__MAC_10_14 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4410:21
pub const __AVAILABILITY_INTERNAL__MAC_10_14_DEP__MAC_10_14 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4411:21
pub const __AVAILABILITY_INTERNAL__MAC_10_15 = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4412:21
pub const __API_AVAILABLE_PLATFORM_macos = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4442:13
pub const __API_AVAILABLE_PLATFORM_macosx = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4443:13
pub const __API_AVAILABLE_PLATFORM_ios = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4444:13
pub const __API_AVAILABLE_PLATFORM_watchos = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4445:13
pub const __API_AVAILABLE_PLATFORM_tvos = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4446:13
pub const __API_AVAILABLE_PLATFORM_macCatalyst = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4448:13
pub const __API_AVAILABLE_PLATFORM_uikitformac = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4451:14
pub const __API_AVAILABLE_PLATFORM_driverkit = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4453:13
pub const __API_A = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4457:17
pub const __API_AVAILABLE_GET_MACRO = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4472:13
pub const __API_APPLY_TO = @compileError("unable to translate C expr: unexpected token .Keyword_enum"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4474:13
pub const __API_RANGE_STRINGIFY2 = @compileError("unable to translate C expr: unexpected token .Hash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4476:13
pub const __API_A_BEGIN = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4478:13
pub const __API_AVAILABLE_BEGIN_GET_MACRO = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4487:13
pub const __API_DEPRECATED_PLATFORM_macos = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4490:13
pub const __API_DEPRECATED_PLATFORM_macosx = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4491:13
pub const __API_DEPRECATED_PLATFORM_ios = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4492:13
pub const __API_DEPRECATED_PLATFORM_watchos = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4493:13
pub const __API_DEPRECATED_PLATFORM_tvos = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4494:13
pub const __API_DEPRECATED_PLATFORM_macCatalyst = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4496:13
pub const __API_DEPRECATED_PLATFORM_uikitformac = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4499:14
pub const __API_DEPRECATED_PLATFORM_driverkit = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4501:13
pub const __API_D = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4505:17
pub const __API_DEPRECATED_MSG_GET_MACRO = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4520:13
pub const __API_D_BEGIN = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4522:13
pub const __API_DEPRECATED_BEGIN_MSG_GET_MACRO = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4531:13
pub const __API_R = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4534:17
pub const __API_DEPRECATED_REP_GET_MACRO = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4546:13
pub const __API_R_BEGIN = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4549:17
pub const __API_DEPRECATED_BEGIN_REP_GET_MACRO = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4561:13
pub const __API_U = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4586:17
pub const __API_UNAVAILABLE_GET_MACRO = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4601:13
pub const __API_U_BEGIN = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4603:13
pub const __API_UNAVAILABLE_BEGIN_GET_MACRO = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4612:13
pub const __swift_compiler_version_at_least = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4661:13
pub const __SPI_AVAILABLE = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:4669:11
pub const __OSX_AVAILABLE_STARTING = @compileError("unable to translate C expr: unexpected token .HashHash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:293:17
pub const __OSX_AVAILABLE_BUT_DEPRECATED = @compileError("unable to translate C expr: unexpected token .HashHash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:294:17
pub const __OSX_AVAILABLE_BUT_DEPRECATED_MSG = @compileError("unable to translate C expr: unexpected token .HashHash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:296:17
pub const __OS_AVAILABILITY_MSG = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:320:13
pub const __OSX_AVAILABLE = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:356:13
pub const __OSX_DEPRECATED = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:357:13
pub const __IOS_AVAILABLE = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:379:13
pub const __IOS_DEPRECATED = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:380:13
pub const __TVOS_AVAILABLE = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:406:13
pub const __TVOS_DEPRECATED = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:407:13
pub const __WATCHOS_AVAILABLE = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:433:13
pub const __WATCHOS_DEPRECATED = @compileError("unable to translate C expr: expected ',' or ')'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:434:13
pub const __API_AVAILABLE = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:502:13
pub const __API_AVAILABLE_BEGIN = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:504:13
pub const __API_DEPRECATED = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:523:13
pub const __API_DEPRECATED_WITH_REPLACEMENT = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:524:13
pub const __API_DEPRECATED_BEGIN = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:526:13
pub const __API_DEPRECATED_WITH_REPLACEMENT_BEGIN = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:529:13
pub const __API_UNAVAILABLE = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:540:13
pub const __API_UNAVAILABLE_BEGIN = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:542:13
pub const __SPI_DEPRECATED = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:596:11
pub const __SPI_DEPRECATED_WITH_REPLACEMENT = @compileError("unable to translate C expr: expected identifier"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h:600:11
pub const _STRUCT_TIMESPEC = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timespec.h:29:9
pub const SIG_DFL = @compileError("unable to translate C expr: unexpected token .RParen"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h:131:9
pub const SIG_IGN = @compileError("unable to translate C expr: unexpected token .RParen"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h:132:9
pub const SIG_HOLD = @compileError("unable to translate C expr: unexpected token .RParen"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h:133:9
pub const SIG_ERR = @compileError("unable to translate C expr: unexpected token .RParen"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h:134:9
pub const _STRUCT_X86_THREAD_STATE32 = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h:45:9
pub const _STRUCT_FP_CONTROL = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h:91:9
pub const _STRUCT_FP_STATUS = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h:149:9
pub const _STRUCT_MMST_REG = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h:193:9
pub const _STRUCT_XMM_REG = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h:212:9
pub const _STRUCT_YMM_REG = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h:228:9
pub const _STRUCT_ZMM_REG = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h:244:9
pub const _STRUCT_OPMASK_REG = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h:258:9
pub const _STRUCT_X86_FLOAT_STATE32 = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h:280:9
pub const _STRUCT_X86_AVX_STATE32 = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h:317:9
pub const _STRUCT_X86_AVX512_STATE32 = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h:363:9
pub const _STRUCT_X86_EXCEPTION_STATE32 = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h:574:9
pub const _STRUCT_X86_DEBUG_STATE32 = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h:594:9
pub const _STRUCT_X86_PAGEIN_STATE = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h:621:9
pub const _STRUCT_X86_THREAD_STATE64 = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h:632:9
pub const _STRUCT_X86_THREAD_FULL_STATE64 = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h:690:9
pub const _STRUCT_X86_FLOAT_STATE64 = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h:713:9
pub const _STRUCT_X86_AVX_STATE64 = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h:764:9
pub const _STRUCT_X86_AVX512_STATE64 = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h:832:9
pub const _STRUCT_X86_EXCEPTION_STATE64 = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h:1171:9
pub const _STRUCT_X86_DEBUG_STATE64 = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h:1191:9
pub const _STRUCT_X86_CPMU_STATE64 = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h:1219:9
pub const _STRUCT_MCONTEXT32 = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_mcontext.h:38:9
pub const _STRUCT_MCONTEXT_AVX32 = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_mcontext.h:46:9
pub const _STRUCT_MCONTEXT_AVX512_32 = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_mcontext.h:55:9
pub const _STRUCT_MCONTEXT64 = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_mcontext.h:96:9
pub const _STRUCT_MCONTEXT64_FULL = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_mcontext.h:104:9
pub const _STRUCT_MCONTEXT_AVX64 = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_mcontext.h:112:9
pub const _STRUCT_MCONTEXT_AVX64_FULL = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_mcontext.h:120:9
pub const _STRUCT_MCONTEXT_AVX512_64 = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_mcontext.h:129:9
pub const _STRUCT_MCONTEXT_AVX512_64_FULL = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_mcontext.h:137:9
pub const _STRUCT_SIGALTSTACK = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_sigaltstack.h:35:9
pub const _STRUCT_UCONTEXT = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ucontext.h:33:9
pub const INT64_C = @compileError("unable to translate C expr: expected ')'' instead got: HashHash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h:65:9
pub const UINT32_C = @compileError("unable to translate C expr: expected ')'' instead got: HashHash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h:69:9
pub const UINT64_C = @compileError("unable to translate C expr: expected ')'' instead got: HashHash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h:70:9
pub const INTMAX_C = @compileError("unable to translate C expr: expected ')'' instead got: HashHash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h:73:9
pub const UINTMAX_C = @compileError("unable to translate C expr: expected ')'' instead got: HashHash"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h:74:9
pub const _STRUCT_TIMEVAL = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timeval.h:29:9
pub const __DARWIN_OS_INLINE = @compileError("unable to translate C expr: unexpected token .Keyword_static"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/libkern/i386/_OSByteOrder.h:34:17
pub const __DARWIN_OSSwapInt16 = @compileError("unable to translate C expr: expected ':'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/libkern/_OSByteOrder.h:71:9
pub const __DARWIN_OSSwapInt32 = @compileError("unable to translate C expr: expected ':'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/libkern/_OSByteOrder.h:74:9
pub const __DARWIN_OSSwapInt64 = @compileError("unable to translate C expr: expected ':'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/libkern/_OSByteOrder.h:77:9
pub const NTOHL = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:143:9
pub const NTOHS = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:144:9
pub const NTOHLL = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:145:9
pub const HTONL = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:146:9
pub const HTONS = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:147:9
pub const HTONLL = @compileError("unable to translate C expr: unexpected token .Equal"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:148:9
pub const __assert = @compileError("unable to translate C expr: unexpected token .Keyword_const"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/assert.h:87:9
pub const assert = @compileError("unable to translate C expr: expected ':'"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/assert.h:92:9
pub const static_assert = @compileError("unable to translate C expr: unexpected token .Keyword_static_assert"); // /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/assert.h:107:9
pub const ECS_ALIGNOF = @compileError("unable to translate C expr: unexpected token .Keyword_struct"); // /Users/desaro/zig-flecs/flecs/include/flecs/support/api_defines.h:51:9
pub const ecs_type = @compileError("unable to translate C expr: unexpected token .HashHash"); // /Users/desaro/zig-flecs/flecs/include/flecs/support/api_defines.h:91:9
pub const ecs_entity = @compileError("unable to translate C expr: unexpected token .HashHash"); // /Users/desaro/zig-flecs/flecs/include/flecs/support/api_defines.h:94:9
pub const ecs_module = @compileError("unable to translate C expr: unexpected token .HashHash"); // /Users/desaro/zig-flecs/flecs/include/flecs/support/api_defines.h:97:9
pub const ecs_module_ptr = @compileError("unable to translate C expr: unexpected token .HashHash"); // /Users/desaro/zig-flecs/flecs/include/flecs/support/api_defines.h:100:9
pub const ecs_iter_action = @compileError("unable to translate C expr: unexpected token .HashHash"); // /Users/desaro/zig-flecs/flecs/include/flecs/support/api_defines.h:103:9
pub const ECS_XTOR_IMPL = @compileError("unable to translate C expr: expected identifier"); // /Users/desaro/zig-flecs/flecs/include/flecs/support/api_defines.h:111:9
pub const ECS_COPY_IMPL = @compileError("unable to translate C expr: expected identifier"); // /Users/desaro/zig-flecs/flecs/include/flecs/support/api_defines.h:131:9
pub const ECS_MOVE_IMPL = @compileError("unable to translate C expr: expected identifier"); // /Users/desaro/zig-flecs/flecs/include/flecs/support/api_defines.h:157:9
pub const ecs_os_malloc = @compileError("unable to translate C expr: unexpected token .Semicolon"); // /Users/desaro/zig-flecs/flecs/include/flecs/utils/os_api.h:221:9
pub const ecs_os_free = @compileError("unable to translate C expr: unexpected token .Semicolon"); // /Users/desaro/zig-flecs/flecs/include/flecs/utils/os_api.h:222:9
pub const ecs_os_alloca = @compileError("unable to translate C expr: unexpected token .Keyword_sizeof"); // /Users/desaro/zig-flecs/flecs/include/flecs/utils/os_api.h:231:9
pub const ecs_os_mutex_new = @compileError("unable to translate C expr: expected identifier"); // /Users/desaro/zig-flecs/flecs/include/flecs/utils/os_api.h:244:9
pub const ecs_os_cond_new = @compileError("unable to translate C expr: expected identifier"); // /Users/desaro/zig-flecs/flecs/include/flecs/utils/os_api.h:250:9
pub const ecs_os_abort = @compileError("unable to translate C expr: expected identifier"); // /Users/desaro/zig-flecs/flecs/include/flecs/utils/os_api.h:280:9
pub const ECS_VECTOR_U = @compileError("unable to translate C expr: unexpected token .Keyword_sizeof"); // /Users/desaro/zig-flecs/flecs/include/flecs/utils/vector.h:18:9
pub const ECS_VECTOR_T = @compileError("unable to translate C expr: unexpected token .Keyword_sizeof"); // /Users/desaro/zig-flecs/flecs/include/flecs/utils/vector.h:19:9
pub const ecs_vector_each = @compileError("unable to translate C expr: expected identifier"); // /Users/desaro/zig-flecs/flecs/include/flecs/utils/vector.h:272:9
pub const ecs_sparse_new = @compileError("unable to translate C expr: unexpected token .Keyword_sizeof"); // /Users/desaro/zig-flecs/flecs/include/flecs/utils/sparse.h:15:9
pub const ecs_sparse_add = @compileError("unable to translate C expr: unexpected token .Keyword_sizeof"); // /Users/desaro/zig-flecs/flecs/include/flecs/utils/sparse.h:31:9
pub const ecs_sparse_recycle = @compileError("unable to translate C expr: unexpected token .Keyword_sizeof"); // /Users/desaro/zig-flecs/flecs/include/flecs/utils/sparse.h:40:9
pub const ecs_sparse_remove = @compileError("unable to translate C expr: unexpected token .Keyword_sizeof"); // /Users/desaro/zig-flecs/flecs/include/flecs/utils/sparse.h:49:9
pub const ecs_sparse_get = @compileError("unable to translate C expr: unexpected token .Keyword_sizeof"); // /Users/desaro/zig-flecs/flecs/include/flecs/utils/sparse.h:58:9
pub const ecs_sparse_get_sparse = @compileError("unable to translate C expr: unexpected token .Keyword_sizeof"); // /Users/desaro/zig-flecs/flecs/include/flecs/utils/sparse.h:75:9
pub const ecs_sparse_get_or_set_sparse = @compileError("unable to translate C expr: unexpected token .Keyword_sizeof"); // /Users/desaro/zig-flecs/flecs/include/flecs/utils/sparse.h:85:9
pub const ecs_sparse_each = @compileError("unable to translate C expr: expected identifier"); // /Users/desaro/zig-flecs/flecs/include/flecs/utils/sparse.h:120:9
pub const ecs_map_new = @compileError("unable to translate C expr: unexpected token .Keyword_sizeof"); // /Users/desaro/zig-flecs/flecs/include/flecs/utils/map.h:26:9
pub const ecs_map_get = @compileError("unable to translate C expr: unexpected token .Keyword_sizeof"); // /Users/desaro/zig-flecs/flecs/include/flecs/utils/map.h:35:9
pub const ecs_map_has = @compileError("unable to translate C expr: unexpected token .Keyword_sizeof"); // /Users/desaro/zig-flecs/flecs/include/flecs/utils/map.h:45:9
pub const ecs_map_set = @compileError("unable to translate C expr: unexpected token .Keyword_sizeof"); // /Users/desaro/zig-flecs/flecs/include/flecs/utils/map.h:63:9
pub const ecs_map_next = @compileError("unable to translate C expr: unexpected token .Keyword_sizeof"); // /Users/desaro/zig-flecs/flecs/include/flecs/utils/map.h:97:9
pub const ecs_map_each = @compileError("unable to translate C expr: expected identifier"); // /Users/desaro/zig-flecs/flecs/include/flecs/utils/map.h:128:9
pub const ECS_STRBUF_INIT = @compileError("unable to translate C expr: unexpected token .LBrace"); // /Users/desaro/zig-flecs/flecs/include/flecs/utils/strbuf.h:8:9
pub const ECS_ENTITY_MASK = @compileError("unable to translate C expr: expected ')'' instead got: Tilde"); // /Users/desaro/zig-flecs/flecs/include/flecs/support/api_support.h:151:9
pub const ecs_abort = @compileError("unable to translate C expr: unexpected token .Semicolon"); // /Users/desaro/zig-flecs/flecs/include/flecs/support/api_support.h:329:9
pub const ecs_parser_error = @compileError("unable to translate C expr: expected identifier"); // /Users/desaro/zig-flecs/flecs/include/flecs/support/api_support.h:330:9
pub const ecs_assert = @compileError("unable to translate C expr: unexpected token .Hash"); // /Users/desaro/zig-flecs/flecs/include/flecs/support/api_support.h:335:9
pub const ecs_trace = @compileError("unable to translate C expr: expected identifier"); // /Users/desaro/zig-flecs/flecs/include/flecs/support/api_support.h:347:9
pub const ecs_trace_1 = @compileError("unable to translate C expr: expected identifier"); // /Users/desaro/zig-flecs/flecs/include/flecs/support/api_support.h:366:9
pub const ecs_trace_2 = @compileError("unable to translate C expr: expected identifier"); // /Users/desaro/zig-flecs/flecs/include/flecs/support/api_support.h:367:9
pub const ecs_trace_3 = @compileError("unable to translate C expr: expected identifier"); // /Users/desaro/zig-flecs/flecs/include/flecs/support/api_support.h:368:9
pub const ECS_SET_COMPONENT = @compileError("unable to translate C expr: unexpected token .Keyword_if"); // /Users/desaro/zig-flecs/flecs/include/flecs/support/api_support.h:438:9
pub const ECS_SET_ENTITY = @compileError("unable to translate C expr: unexpected token .Keyword_if"); // /Users/desaro/zig-flecs/flecs/include/flecs/support/api_support.h:443:9
pub const ECS_ENTITY = @compileError("unable to translate C expr: expected identifier"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:277:9
pub const ECS_PREFAB = @compileError("unable to translate C expr: expected identifier"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:285:9
pub const ECS_COMPONENT = @compileError("unable to translate C expr: unexpected token .Equal"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:293:9
pub const ECS_TAG = @compileError("unable to translate C expr: unexpected token .Semicolon"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:303:9
pub const ECS_TYPE = @compileError("unable to translate C expr: expected identifier"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:312:9
pub const ECS_CTOR = @compileError("unable to translate C expr: expected identifier"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:322:9
pub const ECS_DTOR = @compileError("unable to translate C expr: expected identifier"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:329:9
pub const ECS_COPY = @compileError("unable to translate C expr: expected identifier"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:336:9
pub const ECS_MOVE = @compileError("unable to translate C expr: expected identifier"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:343:9
pub const ecs_ctor = @compileError("unable to translate C expr: unexpected token .HashHash"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:347:9
pub const ecs_dtor = @compileError("unable to translate C expr: unexpected token .HashHash"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:348:9
pub const ecs_copy = @compileError("unable to translate C expr: unexpected token .HashHash"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:349:9
pub const ecs_move = @compileError("unable to translate C expr: unexpected token .HashHash"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:350:9
pub const ecs_get = @compileError("unable to translate C expr: unexpected token .Keyword_const"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:1000:9
pub const ecs_get_ref = @compileError("unable to translate C expr: unexpected token .Keyword_const"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:1032:9
pub const ecs_set_ptr = @compileError("unable to translate C expr: unexpected token .Keyword_sizeof"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:1130:9
pub const ecs_set = @compileError("unable to translate C expr: expected identifier"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:1146:9
pub const ecs_column = @compileError("unable to translate C expr: unexpected token .Keyword_sizeof"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:1849:9
pub const ecs_element = @compileError("unable to translate C expr: unexpected token .Keyword_sizeof"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:1901:9
pub const ECS_COLUMN = @compileError("unable to translate C expr: unexpected token .Equal"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:1992:9
pub const ECS_CONST_COLUMN = @compileError("unable to translate C expr: unexpected token .Keyword_const"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:2001:9
pub const ECS_COLUMN_COMPONENT = @compileError("unable to translate C expr: unexpected token .Equal"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:2005:9
pub const ECS_COLUMN_ENTITY = @compileError("unable to translate C expr: unexpected token .Equal"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:2012:9
pub const ECS_IMPORT_COLUMN = @compileError("unable to translate C expr: unexpected token .Equal"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:2019:9
pub const ECS_MODULE = @compileError("unable to translate C expr: unexpected token .Equal"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:2090:9
pub const ECS_IMPORT = @compileError("unable to translate C expr: unexpected token .Semicolon"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:2112:9
pub const ECS_DECLARE_COMPONENT = @compileError("unable to translate C expr: unexpected token .Semicolon"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:2124:9
pub const ECS_DECLARE_ENTITY = @compileError("unable to translate C expr: unexpected token .Semicolon"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:2129:9
pub const ECS_IMPORT_COMPONENT = @compileError("unable to translate C expr: unexpected token .Equal"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:2140:9
pub const ECS_IMPORT_ENTITY = @compileError("unable to translate C expr: unexpected token .Equal"); // /Users/desaro/zig-flecs/flecs/include/flecs.h:2147:9
pub const ECS_SYSTEM = @compileError("unable to translate C expr: expected identifier"); // /Users/desaro/zig-flecs/flecs/include/flecs/modules/systems.h:110:9
pub const ECS_TRIGGER = @compileError("unable to translate C expr: unexpected token .HashHash"); // /Users/desaro/zig-flecs/flecs/include/flecs/modules/systems.h:116:9
pub const FlecsSystemsImportHandles = @compileError("unable to translate C expr: unexpected token .Nl"); // /Users/desaro/zig-flecs/flecs/include/flecs/modules/systems.h:247:9
pub const ECS_PIPELINE = @compileError("unable to translate C expr: expected identifier"); // /Users/desaro/zig-flecs/flecs/include/flecs/modules/pipeline.h:17:9
pub const FlecsPipelineImportHandles = @compileError("unable to translate C expr: unexpected token .Nl"); // /Users/desaro/zig-flecs/flecs/include/flecs/modules/pipeline.h:136:9
pub const FlecsTimersImportHandles = @compileError("unable to translate C expr: unexpected token .Nl"); // /Users/desaro/zig-flecs/flecs/include/flecs/modules/timers.h:200:9
pub const __SIZEOF_WCHAR_T__ = 4;
pub const SIGTTIN = 21;
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_6(x: var) @TypeOf(x) {
    return x;
}
pub inline fn ecs_bulk_remove(world: var, type_1: var, filter: var) @TypeOf(ecs_bulk_remove_type(world, ecs_type(type_1), filter)) {
    return ecs_bulk_remove_type(world, ecs_type(type_1), filter);
}
pub const __FINITE_MATH_ONLY__ = 0;
pub const __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION_DEP__IPHONE_COMPAT_VERSION = __attribute__(availability(ios, unavailable));
pub const FLECS__TNULL = 0;
pub const __UINT_LEAST64_FMTX__ = "llX";
pub const __tune_corei7__ = 1;
pub const RLIMIT_STACK = 3;
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT64_FMTX__ = "llX";
pub inline fn va_start(ap: var, param: var) @TypeOf(__builtin_va_start(ap, param)) {
    return __builtin_va_start(ap, param);
}
pub const __SSE4_2__ = 1;
pub const SIGXCPU = 24;
pub const FLECS__EEcsComponent = 1;
pub const __SIG_ATOMIC_MAX__ = 2147483647;
pub inline fn __API_UNAVAILABLE1(x: var) @TypeOf(__API_U(x)) {
    return __API_U(x);
}
pub const FLECS__EEcsPipelineQuery = 13;
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __INT_FAST32_FMTd__ = "d";
pub const __STDC_UTF_16__ = 1;
pub const __LDBL_HAS_DENORM__ = 1;
pub const __INTMAX_FMTi__ = "li";
pub const __IPHONE_7_0 = 70000;
pub const __FMA__ = 1;
pub const ECS_COLUMN_INDEX_OUT_OF_RANGE = 19;
pub const __IPHONE_8_3 = 80300;
pub const __API_DEPRECATED_WITH_REPLACEMENT_END = _Pragma("clang attribute pop");
pub const __UINT_FAST32_FMTo__ = "o";
pub const PDP_ENDIAN = __DARWIN_PDP_ENDIAN;
pub const __UINT32_MAX__ = @as(c_uint, 4294967295);
pub const __MAC_10_2 = 1020;
pub const SIGHUP = 1;
pub const _NO_CRT_STDIO_INLINE = 1;
pub inline fn __API_DEPRECATED_REP8(rep: var, x: var, y: var, z: var, t: var, b: var, m: var, d: var) @TypeOf(__API_DEPRECATED_REP7(rep, x, y, z, t, b, m) ++ __API_R(rep, d)) {
    return __API_DEPRECATED_REP7(rep, x, y, z, t, b, m) ++ __API_R(rep, d);
}
pub const __INT_MAX__ = 2147483647;
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const EcsHidden = ECS_HI_COMPONENT_ID + 2;
pub const __IPHONE_8_2 = 80200;
pub inline fn ecs_os_get_time(time_out: var) @TypeOf(ecs_os_api.get_time(time_out)) {
    return ecs_os_api.get_time(time_out);
}
pub const __SIZEOF_INT128__ = 16;
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __API_UNAVAILABLE_END = _Pragma("clang attribute pop");
pub inline fn ECS_OFFSET(o: var, offset: var) @TypeOf((if (@typeInfo(@TypeOf((if (@typeInfo(@TypeOf(o)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), o)) else if (@typeInfo(@TypeOf(o)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, o) else @as(uintptr_t, o)) + (if (@typeInfo(@TypeOf(offset)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), offset)) else if (@typeInfo(@TypeOf(offset)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, offset) else @as(uintptr_t, offset)))) == .Pointer) @ptrCast(?*c_void, @alignCast(@alignOf(?*c_void.Child), (if (@typeInfo(@TypeOf(o)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), o)) else if (@typeInfo(@TypeOf(o)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, o) else @as(uintptr_t, o)) + (if (@typeInfo(@TypeOf(offset)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), offset)) else if (@typeInfo(@TypeOf(offset)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, offset) else @as(uintptr_t, offset)))) else if (@typeInfo(@TypeOf((if (@typeInfo(@TypeOf(o)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), o)) else if (@typeInfo(@TypeOf(o)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, o) else @as(uintptr_t, o)) + (if (@typeInfo(@TypeOf(offset)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), offset)) else if (@typeInfo(@TypeOf(offset)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, offset) else @as(uintptr_t, offset)))) == .Int and @typeInfo(?*c_void) == .Pointer) @intToPtr(?*c_void, (if (@typeInfo(@TypeOf(o)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), o)) else if (@typeInfo(@TypeOf(o)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, o) else @as(uintptr_t, o)) + (if (@typeInfo(@TypeOf(offset)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), offset)) else if (@typeInfo(@TypeOf(offset)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, offset) else @as(uintptr_t, offset))) else @as(?*c_void, (if (@typeInfo(@TypeOf(o)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), o)) else if (@typeInfo(@TypeOf(o)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, o) else @as(uintptr_t, o)) + (if (@typeInfo(@TypeOf(offset)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), offset)) else if (@typeInfo(@TypeOf(offset)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, offset) else @as(uintptr_t, offset))))) {
    return (if (@typeInfo(@TypeOf((if (@typeInfo(@TypeOf(o)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), o)) else if (@typeInfo(@TypeOf(o)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, o) else @as(uintptr_t, o)) + (if (@typeInfo(@TypeOf(offset)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), offset)) else if (@typeInfo(@TypeOf(offset)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, offset) else @as(uintptr_t, offset)))) == .Pointer) @ptrCast(?*c_void, @alignCast(@alignOf(?*c_void.Child), (if (@typeInfo(@TypeOf(o)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), o)) else if (@typeInfo(@TypeOf(o)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, o) else @as(uintptr_t, o)) + (if (@typeInfo(@TypeOf(offset)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), offset)) else if (@typeInfo(@TypeOf(offset)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, offset) else @as(uintptr_t, offset)))) else if (@typeInfo(@TypeOf((if (@typeInfo(@TypeOf(o)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), o)) else if (@typeInfo(@TypeOf(o)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, o) else @as(uintptr_t, o)) + (if (@typeInfo(@TypeOf(offset)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), offset)) else if (@typeInfo(@TypeOf(offset)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, offset) else @as(uintptr_t, offset)))) == .Int and @typeInfo(?*c_void) == .Pointer) @intToPtr(?*c_void, (if (@typeInfo(@TypeOf(o)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), o)) else if (@typeInfo(@TypeOf(o)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, o) else @as(uintptr_t, o)) + (if (@typeInfo(@TypeOf(offset)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), offset)) else if (@typeInfo(@TypeOf(offset)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, offset) else @as(uintptr_t, offset))) else @as(?*c_void, (if (@typeInfo(@TypeOf(o)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), o)) else if (@typeInfo(@TypeOf(o)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, o) else @as(uintptr_t, o)) + (if (@typeInfo(@TypeOf(offset)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), offset)) else if (@typeInfo(@TypeOf(offset)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, offset) else @as(uintptr_t, offset))));
}
pub const __INT_LEAST32_MAX__ = 2147483647;
pub const __INT_FAST16_FMTd__ = "hd";
pub const __UINT_LEAST64_FMTu__ = "llu";
pub inline fn __API_DEPRECATED_MSG5(msg: var, x: var, y: var, z: var, t: var) @TypeOf(__API_DEPRECATED_MSG4(msg, x, y, z) ++ __API_D(msg, t)) {
    return __API_DEPRECATED_MSG4(msg, x, y, z) ++ __API_D(msg, t);
}
pub const TIME_UTC = 1;
pub const PRIO_DARWIN_NONUI = 0x1001;
pub const __UINT8_FMTu__ = "hhu";
pub const __INT_FAST16_MAX__ = 32767;
pub inline fn ECS_TYPE_VAR(type_1: var) @TypeOf(ecs_type_t ++ ecs_type(type_1)) {
    return ecs_type_t ++ ecs_type(type_1);
}
pub const ECS_XOR = (if (@typeInfo(ecs_entity_t) == .Pointer) @intToPtr(ecs_entity_t, 1 << 59) else @as(ecs_entity_t, 1 << 59));
pub const WNOWAIT = 0x00000020;
pub const RUSAGE_INFO_V2 = 2;
pub inline fn ecs_vector_first_t(vector: var, size: var, alignment: var) @TypeOf(_ecs_vector_first(vector, ECS_VECTOR_U(size, alignment))) {
    return _ecs_vector_first(vector, ECS_VECTOR_U(size, alignment));
}
pub const __INVPCID__ = 1;
pub const __SIZE_FMTx__ = "lx";
pub const __UINT8_FMTX__ = "hhX";
pub inline fn __DARWIN_OSSwapConstInt16(x: var) @TypeOf((if (@typeInfo(@TypeOf((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint16_t, @alignCast(@alignOf(__uint16_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint16_t) == .Pointer) @intToPtr(__uint16_t, x) else @as(__uint16_t, x)) & 0xff00) >> 8) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint16_t, @alignCast(@alignOf(__uint16_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint16_t) == .Pointer) @intToPtr(__uint16_t, x) else @as(__uint16_t, x)) & 0x00ff) << 8))) == .Pointer) @ptrCast(__uint16_t, @alignCast(@alignOf(__uint16_t.Child), (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint16_t, @alignCast(@alignOf(__uint16_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint16_t) == .Pointer) @intToPtr(__uint16_t, x) else @as(__uint16_t, x)) & 0xff00) >> 8) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint16_t, @alignCast(@alignOf(__uint16_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint16_t) == .Pointer) @intToPtr(__uint16_t, x) else @as(__uint16_t, x)) & 0x00ff) << 8))) else if (@typeInfo(@TypeOf((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint16_t, @alignCast(@alignOf(__uint16_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint16_t) == .Pointer) @intToPtr(__uint16_t, x) else @as(__uint16_t, x)) & 0xff00) >> 8) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint16_t, @alignCast(@alignOf(__uint16_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint16_t) == .Pointer) @intToPtr(__uint16_t, x) else @as(__uint16_t, x)) & 0x00ff) << 8))) == .Int and @typeInfo(__uint16_t) == .Pointer) @intToPtr(__uint16_t, (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint16_t, @alignCast(@alignOf(__uint16_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint16_t) == .Pointer) @intToPtr(__uint16_t, x) else @as(__uint16_t, x)) & 0xff00) >> 8) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint16_t, @alignCast(@alignOf(__uint16_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint16_t) == .Pointer) @intToPtr(__uint16_t, x) else @as(__uint16_t, x)) & 0x00ff) << 8)) else @as(__uint16_t, (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint16_t, @alignCast(@alignOf(__uint16_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint16_t) == .Pointer) @intToPtr(__uint16_t, x) else @as(__uint16_t, x)) & 0xff00) >> 8) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint16_t, @alignCast(@alignOf(__uint16_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint16_t) == .Pointer) @intToPtr(__uint16_t, x) else @as(__uint16_t, x)) & 0x00ff) << 8)))) {
    return (if (@typeInfo(@TypeOf((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint16_t, @alignCast(@alignOf(__uint16_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint16_t) == .Pointer) @intToPtr(__uint16_t, x) else @as(__uint16_t, x)) & 0xff00) >> 8) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint16_t, @alignCast(@alignOf(__uint16_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint16_t) == .Pointer) @intToPtr(__uint16_t, x) else @as(__uint16_t, x)) & 0x00ff) << 8))) == .Pointer) @ptrCast(__uint16_t, @alignCast(@alignOf(__uint16_t.Child), (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint16_t, @alignCast(@alignOf(__uint16_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint16_t) == .Pointer) @intToPtr(__uint16_t, x) else @as(__uint16_t, x)) & 0xff00) >> 8) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint16_t, @alignCast(@alignOf(__uint16_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint16_t) == .Pointer) @intToPtr(__uint16_t, x) else @as(__uint16_t, x)) & 0x00ff) << 8))) else if (@typeInfo(@TypeOf((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint16_t, @alignCast(@alignOf(__uint16_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint16_t) == .Pointer) @intToPtr(__uint16_t, x) else @as(__uint16_t, x)) & 0xff00) >> 8) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint16_t, @alignCast(@alignOf(__uint16_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint16_t) == .Pointer) @intToPtr(__uint16_t, x) else @as(__uint16_t, x)) & 0x00ff) << 8))) == .Int and @typeInfo(__uint16_t) == .Pointer) @intToPtr(__uint16_t, (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint16_t, @alignCast(@alignOf(__uint16_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint16_t) == .Pointer) @intToPtr(__uint16_t, x) else @as(__uint16_t, x)) & 0xff00) >> 8) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint16_t, @alignCast(@alignOf(__uint16_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint16_t) == .Pointer) @intToPtr(__uint16_t, x) else @as(__uint16_t, x)) & 0x00ff) << 8)) else @as(__uint16_t, (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint16_t, @alignCast(@alignOf(__uint16_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint16_t) == .Pointer) @intToPtr(__uint16_t, x) else @as(__uint16_t, x)) & 0xff00) >> 8) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint16_t, @alignCast(@alignOf(__uint16_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint16_t) == .Pointer) @intToPtr(__uint16_t, x) else @as(__uint16_t, x)) & 0x00ff) << 8)));
}
pub inline fn WIFSIGNALED(x: var) @TypeOf(_WSTATUS(x) != @boolToInt((_WSTOPPED != 0) and (_WSTATUS(x) != 0))) {
    return _WSTATUS(x) != @boolToInt((_WSTOPPED != 0) and (_WSTATUS(x) != 0));
}
pub const __MAC_OS_X_VERSION_MIN_REQUIRED = __ENVIRONMENT_MAC_OS_X_VERSION_MIN_REQUIRED__;
pub const ECS_INVALID_HANDLE = 1;
pub const INT_FAST32_MAX = INT32_MAX;
pub inline fn __API_UNAVAILABLE7(x: var, y: var, z: var, t: var, b: var, m: var, d: var) @TypeOf(__API_UNAVAILABLE6(x, y, z, t, b, m) ++ __API_U(d)) {
    return __API_UNAVAILABLE6(x, y, z, t, b, m) ++ __API_U(d);
}
pub const __CLFLUSHOPT__ = 1;
pub inline fn __API_DEPRECATED_BEGIN_REP2(rep: var, a: var) @TypeOf(__API_R_BEGIN(rep, a)) {
    return __API_R_BEGIN(rep, a);
}
pub const RLIMIT_CORE = 4;
pub const __enum_options = __attribute__(__flag_enum__);
pub inline fn ecs_vector_sort(vector: var, T: var, compare_action: var) @TypeOf(_ecs_vector_sort(vector, ECS_VECTOR_T(T), compare_action)) {
    return _ecs_vector_sort(vector, ECS_VECTOR_T(T), compare_action);
}
pub inline fn __API_DEPRECATED_BEGIN_REP8(rep: var, a: var, b: var, c: var, d: var, e: var, f: var, g: var) @TypeOf(__API_R_BEGIN(rep, a) ++ (__API_R_BEGIN(rep, b) ++ (__API_R_BEGIN(rep, c) ++ (__API_R_BEGIN(rep, d) ++ (__API_R_BEGIN(rep, e) ++ (__API_R_BEGIN(rep, f) ++ __API_R_BEGIN(rep, g))))))) {
    return __API_R_BEGIN(rep, a) ++ (__API_R_BEGIN(rep, b) ++ (__API_R_BEGIN(rep, c) ++ (__API_R_BEGIN(rep, d) ++ (__API_R_BEGIN(rep, e) ++ (__API_R_BEGIN(rep, f) ++ __API_R_BEGIN(rep, g))))));
}
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const SS_ONSTACK = 0x0001;
pub const __UINT_FAST8_FMTu__ = "hhu";
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_4(x: var) @TypeOf(x) {
    return x;
}
pub const __DBL_HAS_DENORM__ = 1;
pub const __INT_LEAST64_FMTd__ = "lld";
pub const __SSSE3__ = 1;
pub const __MAC_10_10_3 = 101003;
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __IPHONE_13_0 = 130000;
pub const SIGKILL = 9;
pub inline fn ecs_vector_remove_index_t(vector: var, size: var, alignment: var, index: var) @TypeOf(_ecs_vector_remove_index(vector, ECS_VECTOR_U(size, alignment), index)) {
    return _ecs_vector_remove_index(vector, ECS_VECTOR_U(size, alignment), index);
}
pub const __header_always_inline = __header_inline ++ __attribute__(__always_inline__);
pub const __MAC_10_14 = 101400;
pub const __UINT_FAST16_FMTu__ = "hu";
pub const SEGV_MAPERR = 1;
pub inline fn __API_DEPRECATED_BEGIN_MSG8(msg: var, a: var, b: var, c: var, d: var, e: var, f: var, g: var) @TypeOf(__API_D_BEGIN(msg, a) ++ (__API_D_BEGIN(msg, b) ++ (__API_D_BEGIN(msg, c) ++ (__API_D_BEGIN(msg, d) ++ (__API_D_BEGIN(msg, e) ++ (__API_D_BEGIN(msg, f) ++ __API_D_BEGIN(msg, g))))))) {
    return __API_D_BEGIN(msg, a) ++ (__API_D_BEGIN(msg, b) ++ (__API_D_BEGIN(msg, c) ++ (__API_D_BEGIN(msg, d) ++ (__API_D_BEGIN(msg, e) ++ (__API_D_BEGIN(msg, f) ++ __API_D_BEGIN(msg, g))))));
}
pub const SIGTTOU = 22;
pub const __TVOS_12_3 = 120300;
pub const RLIMIT_AS = 5;
pub inline fn ecs_map_next_ptr(iter: var, T: var, key: var) @TypeOf((if (@typeInfo(@TypeOf(_ecs_map_next_ptr(iter, key))) == .Pointer) @ptrCast(T, @alignCast(@alignOf(T.Child), _ecs_map_next_ptr(iter, key))) else if (@typeInfo(@TypeOf(_ecs_map_next_ptr(iter, key))) == .Int and @typeInfo(T) == .Pointer) @intToPtr(T, _ecs_map_next_ptr(iter, key)) else @as(T, _ecs_map_next_ptr(iter, key)))) {
    return (if (@typeInfo(@TypeOf(_ecs_map_next_ptr(iter, key))) == .Pointer) @ptrCast(T, @alignCast(@alignOf(T.Child), _ecs_map_next_ptr(iter, key))) else if (@typeInfo(@TypeOf(_ecs_map_next_ptr(iter, key))) == .Int and @typeInfo(T) == .Pointer) @intToPtr(T, _ecs_map_next_ptr(iter, key)) else @as(T, _ecs_map_next_ptr(iter, key)));
}
pub inline fn ecs_lookup_fullpath(world: var, path: var) @TypeOf(ecs_lookup_path_w_sep(world, 0, path, ".", NULL)) {
    return ecs_lookup_path_w_sep(world, 0, path, ".", NULL);
}
pub const __SSP_STRONG__ = 2;
pub const WCHAR_MAX = __WCHAR_MAX__;
pub const __clang_patchlevel__ = 0;
pub const __UINT64_FMTu__ = "llu";
pub inline fn __API_UNAVAILABLE6(x: var, y: var, z: var, t: var, b: var, m: var) @TypeOf(__API_UNAVAILABLE5(x, y, z, t, b) ++ __API_U(m)) {
    return __API_UNAVAILABLE5(x, y, z, t, b) ++ __API_U(m);
}
pub const FP_CHOP = 3;
pub const SIGTERM = 15;
pub const __API_DEPRECATED_END = _Pragma("clang attribute pop");
pub const EXIT_SUCCESS = 0;
pub const FLECS__EEcsSignature = 9;
pub const INT_FAST32_MIN = INT32_MIN;
pub inline fn ecs_modified(world: var, entity: var, component: var) @TypeOf(ecs_modified_w_entity(world, entity, ecs_entity(component))) {
    return ecs_modified_w_entity(world, entity, ecs_entity(component));
}
pub const IOPOL_TYPE_VFS_MATERIALIZE_DATALESS_FILES = 3;
pub const __LDBL_DIG__ = 18;
pub const CLD_CONTINUED = 6;
pub const __OPENCL_MEMORY_SCOPE_DEVICE = 2;
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __DARWIN_ONLY_64_BIT_INO_T = 0;
pub inline fn __API_DEPRECATED_MSG3(msg: var, x: var, y: var) @TypeOf(__API_D(msg, x) ++ __API_D(msg, y)) {
    return __API_D(msg, x) ++ __API_D(msg, y);
}
pub inline fn __API_UNAVAILABLE3(x: var, y: var, z: var) @TypeOf(__API_UNAVAILABLE2(x, y) ++ __API_U(z)) {
    return __API_UNAVAILABLE2(x, y) ++ __API_U(z);
}
pub const __MMX__ = 1;
pub const BIG_ENDIAN = __DARWIN_BIG_ENDIAN;
pub const SIGINT = 2;
pub const __SIZEOF_WINT_T__ = 4;
pub const FPE_FLTSUB = 6;
pub const __DARWIN_C_LEVEL = __DARWIN_C_FULL;
pub inline fn __API_UNAVAILABLE5(x: var, y: var, z: var, t: var, b: var) @TypeOf(__API_UNAVAILABLE4(x, y, z, t) ++ __API_U(b)) {
    return __API_UNAVAILABLE4(x, y, z, t) ++ __API_U(b);
}
pub const EcsOnUpdate = ECS_HI_COMPONENT_ID + 17;
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = 2;
pub const ECS_INVALID_FROM_WORKER = 26;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = 1;
pub const __LITTLE_ENDIAN__ = 1;
pub const ECS_UNKNOWN_TYPE_ID = 8;
pub const __UINTMAX_C_SUFFIX__ = UL;
pub const __TVOS_PROHIBITED = __OS_AVAILABILITY(tvos, unavailable);
pub inline fn __API_UNAVAILABLE4(x: var, y: var, z: var, t: var) @TypeOf(__API_UNAVAILABLE3(x, y, z) ++ __API_U(t)) {
    return __API_UNAVAILABLE3(x, y, z) ++ __API_U(t);
}
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = 0;
pub const IOPOL_MATERIALIZE_DATALESS_FILES_ON = 2;
pub const __VERSION__ = "Clang 10.0.0 ";
pub const __DBL_HAS_INFINITY__ = 1;
pub const __INT_LEAST16_MAX__ = 32767;
pub const __GNUC_MINOR__ = 2;
pub const __WATCHOS_UNAVAILABLE = __OS_AVAILABILITY(watchos, unavailable);
pub const __corei7 = 1;
pub const __LDBL_HAS_QUIET_NAN__ = 1;
pub const SIG_SETMASK = 3;
pub const __UINT_FAST32_FMTu__ = "u";
pub const INT_LEAST16_MAX = INT16_MAX;
pub const WCHAR_MIN = -WCHAR_MAX - 1;
pub const w_termsig = w_T.w_Termsig;
pub const EcsOnStore = ECS_HI_COMPONENT_ID + 21;
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const ECS_COLUMN_IS_NOT_SHARED = 20;
pub const ECS_COLUMN_TYPE_MISMATCH = 23;
pub inline fn __DARWIN_1050ALIAS_C(sym: var) @TypeOf(__asm("_" ++ (__STRING(sym) ++ (__DARWIN_SUF_1050 ++ (__DARWIN_SUF_NON_CANCELABLE ++ __DARWIN_SUF_UNIX03))))) {
    return __asm("_" ++ (__STRING(sym) ++ (__DARWIN_SUF_1050 ++ (__DARWIN_SUF_NON_CANCELABLE ++ __DARWIN_SUF_UNIX03))));
}
pub const __pic__ = 2;
pub const __RTM__ = 1;
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_8(x: var) @TypeOf(x) {
    return x;
}
pub const __FLT_HAS_INFINITY__ = 1;
pub inline fn __CAST_AWAY_QUALIFIER(variable: var, qualifier: var, type_1: var) @TypeOf((if (@typeInfo(@TypeOf(c_long)) == .Pointer) @ptrCast(type_1, @alignCast(@alignOf(type_1.Child), c_long)) else if (@typeInfo(@TypeOf(c_long)) == .Int and @typeInfo(type_1) == .Pointer) @intToPtr(type_1, c_long) else @as(type_1, c_long))(variable)) {
    return (if (@typeInfo(@TypeOf(c_long)) == .Pointer) @ptrCast(type_1, @alignCast(@alignOf(type_1.Child), c_long)) else if (@typeInfo(@TypeOf(c_long)) == .Int and @typeInfo(type_1) == .Pointer) @intToPtr(type_1, c_long) else @as(type_1, c_long))(variable);
}
pub inline fn ecs_new_from_fullpath(world: var, path: var) @TypeOf(ecs_new_from_path_w_sep(world, 0, path, ".", NULL)) {
    return ecs_new_from_path_w_sep(world, 0, path, ".", NULL);
}
pub const UINT_FAST32_MAX = UINT32_MAX;
pub inline fn W_STOPCODE(sig: var) @TypeOf(sig << (8 | _WSTOPPED)) {
    return sig << (8 | _WSTOPPED);
}
pub const EcsInactive = ECS_HI_COMPONENT_ID + 5;
pub const __PTHREAD_MUTEX_SIZE__ = 56;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = 1;
pub const __MAC_10_12_2 = 101202;
pub inline fn __va_copy(d: var, s: var) @TypeOf(__builtin_va_copy(d, s)) {
    return __builtin_va_copy(d, s);
}
pub const __ADX__ = 1;
pub const EcsFirstUserEntityId = ECS_HI_COMPONENT_ID + 32;
pub const RLIMIT_WAKEUPS_MONITOR = 0x1;
pub const __API_UNAVAILABLE_PLATFORM_ios = blk: {
    _ = ios;
    break :blk unavailable;
};
pub const IOPOL_STANDARD = 5;
pub const _DARWIN_FEATURE_64_BIT_INODE = 1;
pub inline fn __API_AVAILABLE_BEGIN1(a: var) @TypeOf(__API_A_BEGIN(a)) {
    return __API_A_BEGIN(a);
}
pub const INT8_MAX = 127;
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __MAC_10_12 = 101200;
pub const __IPHONE_13_4 = 130400;
pub const sa_handler = __sigaction_u.__sa_handler;
pub const __UINT_LEAST32_MAX__ = @as(c_uint, 4294967295);
pub const ECS_INVALID_COMPONENT_ALIGNMENT = 16;
pub const UINT_FAST8_MAX = UINT8_MAX;
pub inline fn ecs_os_dlclose(lib: var) @TypeOf(ecs_os_api.dlclose(lib)) {
    return ecs_os_api.dlclose(lib);
}
pub const __TVOS_13_0 = 130000;
pub const ECS_DESERIALIZE_COMPONENT_ID_CONFLICT = 38;
pub const _WSTOPPED = 0o0177;
pub inline fn ecs_add_remove(world: var, entity: var, to_add: var, to_remove: var) @TypeOf(ecs_add_remove_type(world, entity, ecs_type(to_add), ecs_type(to_remove))) {
    return ecs_add_remove_type(world, entity, ecs_type(to_add), ecs_type(to_remove));
}
pub inline fn __DARWIN_OSSwapConstInt64(x: var) @TypeOf((if (@typeInfo(@TypeOf((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0xff00000000000000)) >> 56) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00ff000000000000)) >> 40) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x0000ff0000000000)) >> 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x000000ff00000000)) >> 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00000000ff000000)) << 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x0000000000ff0000)) << 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x000000000000ff00)) << 40) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00000000000000ff)) << 56))))))))) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0xff00000000000000)) >> 56) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00ff000000000000)) >> 40) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x0000ff0000000000)) >> 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x000000ff00000000)) >> 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00000000ff000000)) << 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x0000000000ff0000)) << 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x000000000000ff00)) << 40) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00000000000000ff)) << 56))))))))) else if (@typeInfo(@TypeOf((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0xff00000000000000)) >> 56) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00ff000000000000)) >> 40) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x0000ff0000000000)) >> 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x000000ff00000000)) >> 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00000000ff000000)) << 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x0000000000ff0000)) << 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x000000000000ff00)) << 40) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00000000000000ff)) << 56))))))))) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0xff00000000000000)) >> 56) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00ff000000000000)) >> 40) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x0000ff0000000000)) >> 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x000000ff00000000)) >> 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00000000ff000000)) << 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x0000000000ff0000)) << 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x000000000000ff00)) << 40) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00000000000000ff)) << 56)))))))) else @as(__uint64_t, (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0xff00000000000000)) >> 56) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00ff000000000000)) >> 40) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x0000ff0000000000)) >> 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x000000ff00000000)) >> 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00000000ff000000)) << 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x0000000000ff0000)) << 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x000000000000ff00)) << 40) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00000000000000ff)) << 56)))))))))) {
    return (if (@typeInfo(@TypeOf((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0xff00000000000000)) >> 56) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00ff000000000000)) >> 40) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x0000ff0000000000)) >> 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x000000ff00000000)) >> 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00000000ff000000)) << 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x0000000000ff0000)) << 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x000000000000ff00)) << 40) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00000000000000ff)) << 56))))))))) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0xff00000000000000)) >> 56) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00ff000000000000)) >> 40) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x0000ff0000000000)) >> 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x000000ff00000000)) >> 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00000000ff000000)) << 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x0000000000ff0000)) << 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x000000000000ff00)) << 40) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00000000000000ff)) << 56))))))))) else if (@typeInfo(@TypeOf((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0xff00000000000000)) >> 56) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00ff000000000000)) >> 40) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x0000ff0000000000)) >> 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x000000ff00000000)) >> 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00000000ff000000)) << 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x0000000000ff0000)) << 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x000000000000ff00)) << 40) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00000000000000ff)) << 56))))))))) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0xff00000000000000)) >> 56) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00ff000000000000)) >> 40) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x0000ff0000000000)) >> 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x000000ff00000000)) >> 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00000000ff000000)) << 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x0000000000ff0000)) << 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x000000000000ff00)) << 40) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00000000000000ff)) << 56)))))))) else @as(__uint64_t, (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0xff00000000000000)) >> 56) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00ff000000000000)) >> 40) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x0000ff0000000000)) >> 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x000000ff00000000)) >> 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00000000ff000000)) << 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x0000000000ff0000)) << 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x000000000000ff00)) << 40) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint64_t, @alignCast(@alignOf(__uint64_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, x) else @as(__uint64_t, x)) & @as(c_ulonglong, 0x00000000000000ff)) << 56)))))))));
}
pub const __nullable = _Nullable;
pub const __IPHONE_9_0 = 90000;
pub inline fn ecs_map_get_ptr(map: var, T: var, key: var) @TypeOf((if (@typeInfo(@TypeOf(_ecs_map_get_ptr(map, key))) == .Pointer) @ptrCast(T, @alignCast(@alignOf(T.Child), _ecs_map_get_ptr(map, key))) else if (@typeInfo(@TypeOf(_ecs_map_get_ptr(map, key))) == .Int and @typeInfo(T) == .Pointer) @intToPtr(T, _ecs_map_get_ptr(map, key)) else @as(T, _ecs_map_get_ptr(map, key)))) {
    return (if (@typeInfo(@TypeOf(_ecs_map_get_ptr(map, key))) == .Pointer) @ptrCast(T, @alignCast(@alignOf(T.Child), _ecs_map_get_ptr(map, key))) else if (@typeInfo(@TypeOf(_ecs_map_get_ptr(map, key))) == .Int and @typeInfo(T) == .Pointer) @intToPtr(T, _ecs_map_get_ptr(map, key)) else @as(T, _ecs_map_get_ptr(map, key)));
}
pub const __clang_version__ = "10.0.0 ";
pub inline fn __API_DEPRECATED_REP2(rep: var, x: var) @TypeOf(__API_R(rep, x)) {
    return __API_R(rep, x);
}
pub inline fn _ecs_os_alloca(size: var, count: var) @TypeOf(alloca(size * count)) {
    return alloca(size * count);
}
pub const SA_NOCLDSTOP = 0x0008;
pub const __INTMAX_FMTd__ = "ld";
pub const IOPOL_MATERIALIZE_DATALESS_FILES_OFF = 1;
pub const __SEG_FS = 1;
pub const __UINT_FAST8_FMTo__ = "hho";
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_5(x: var) @TypeOf(x) {
    return x;
}
pub const SIGURG = 16;
pub inline fn ecs_add(world: var, entity: var, component: var) @TypeOf(ecs_add_type(world, entity, ecs_type(component))) {
    return ecs_add_type(world, entity, ecs_type(component));
}
pub inline fn ECS_ENTITY_VAR(type_1: var) @TypeOf(ecs_entity_t ++ ecs_entity(type_1)) {
    return ecs_entity_t ++ ecs_entity(type_1);
}
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __OSX_UNAVAILABLE = __OS_AVAILABILITY(macosx, unavailable);
pub const __AVAILABILITY_INTERNAL__MAC_NA = __attribute__(availability(macosx, unavailable));
pub const __DARWIN_NON_CANCELABLE = 0;
pub const SIG_BLOCK = 1;
pub const SV_INTERRUPT = SA_RESTART;
pub const ECS_OUT_OF_RANGE = 28;
pub const __INT_LEAST32_FMTi__ = "i";
pub const ECS_MISSING_OS_API = 32;
pub const FLECS__EEcsComponentLifecycle = 2;
pub const __WCHAR_WIDTH__ = 32;
pub const __UINT16_FMTX__ = "hX";
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const FLECS__EEcsContext = 12;
pub const POLL_MSG = 3;
pub const __API_UNAVAILABLE_PLATFORM_tvos = blk: {
    _ = tvos;
    break :blk unavailable;
};
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __APPLE_CC__ = 6000;
pub const ECS_COLUMN_HAS_NO_DATA = 22;
pub const __deprecated = __attribute__(__deprecated__);
pub const __IPHONE_10_1 = 100100;
pub const __SSE3__ = 1;
pub inline fn ecs_vector_move_index(dst: var, src: var, T: var, index: var) @TypeOf(_ecs_vector_move_index(dst, src, ECS_VECTOR_T(T), index)) {
    return _ecs_vector_move_index(dst, src, ECS_VECTOR_T(T), index);
}
pub const __WATCHOS_2_0 = 20000;
pub const ILL_BADSTK = 8;
pub inline fn __AVAILABILITY_INTERNAL__MAC_NA_DEP__MAC_NA_MSG(_msg: var) @TypeOf(__attribute__(availability(macosx, unavailable))) {
    return __attribute__(availability(macosx, unavailable));
}
pub const FLECS__EEcsQuery = 10;
pub const INT32_MAX = 2147483647;
pub const INT_FAST8_MAX = INT8_MAX;
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_FAST64_FMTu__ = "llu";
pub const INT16_MIN = -32768;
pub const __WATCHOS_3_1 = 30100;
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const __SSE2__ = 1;
pub const EcsFirstUserComponentId = 32;
pub inline fn ecs_vector_get(vector: var, T: var, index: var) @TypeOf((if (@typeInfo(@TypeOf(_ecs_vector_get(vector, ECS_VECTOR_T(T), index))) == .Pointer) @ptrCast([*c]T, @alignCast(@alignOf([*c]T.Child), _ecs_vector_get(vector, ECS_VECTOR_T(T), index))) else if (@typeInfo(@TypeOf(_ecs_vector_get(vector, ECS_VECTOR_T(T), index))) == .Int and @typeInfo([*c]T) == .Pointer) @intToPtr([*c]T, _ecs_vector_get(vector, ECS_VECTOR_T(T), index)) else @as([*c]T, _ecs_vector_get(vector, ECS_VECTOR_T(T), index)))) {
    return (if (@typeInfo(@TypeOf(_ecs_vector_get(vector, ECS_VECTOR_T(T), index))) == .Pointer) @ptrCast([*c]T, @alignCast(@alignOf([*c]T.Child), _ecs_vector_get(vector, ECS_VECTOR_T(T), index))) else if (@typeInfo(@TypeOf(_ecs_vector_get(vector, ECS_VECTOR_T(T), index))) == .Int and @typeInfo([*c]T) == .Pointer) @intToPtr([*c]T, _ecs_vector_get(vector, ECS_VECTOR_T(T), index)) else @as([*c]T, _ecs_vector_get(vector, ECS_VECTOR_T(T), index)));
}
pub const __STDC__ = 1;
pub const __block = __attribute__(__blocks__(byref));
pub const __AVAILABILITY_INTERNAL_DEPRECATED = __attribute__(deprecated);
pub const __API_UNAVAILABLE_PLATFORM_macos = blk: {
    _ = macos;
    break :blk unavailable;
};
pub inline fn ecs_vector_memory(vector: var, T: var, allocd: var, used: var) @TypeOf(_ecs_vector_memory(vector, ECS_VECTOR_T(T), allocd, used)) {
    return _ecs_vector_memory(vector, ECS_VECTOR_T(T), allocd, used);
}
pub inline fn __DARWIN_1050(sym: var) @TypeOf(__asm("_" ++ (__STRING(sym) ++ __DARWIN_SUF_1050))) {
    return __asm("_" ++ (__STRING(sym) ++ __DARWIN_SUF_1050));
}
pub const __LONG_MAX__ = @as(c_long, 9223372036854775807);
pub const EcsWorld = ECS_HI_COMPONENT_ID + 25;
pub const SIGEV_NONE = 0;
pub const __DARWIN_SUF_EXTSN = "$DARWIN_EXTSN";
pub const __FSGSBASE__ = 1;
pub const __MAC_10_11_2 = 101102;
pub const __DYNAMIC__ = 1;
pub inline fn __deprecated_msg(_msg: var) @TypeOf(__attribute__(__deprecated__(_msg))) {
    return __attribute__(__deprecated__(_msg));
}
pub inline fn __API_DEPRECATED_BEGIN_REP6(rep: var, a: var, b: var, c: var, d: var, e: var) @TypeOf(__API_R_BEGIN(rep, a) ++ (__API_R_BEGIN(rep, b) ++ (__API_R_BEGIN(rep, c) ++ (__API_R_BEGIN(rep, d) ++ __API_R_BEGIN(rep, e))))) {
    return __API_R_BEGIN(rep, a) ++ (__API_R_BEGIN(rep, b) ++ (__API_R_BEGIN(rep, c) ++ (__API_R_BEGIN(rep, d) ++ __API_R_BEGIN(rep, e))));
}
pub const __INTPTR_MAX__ = @as(c_long, 9223372036854775807);
pub inline fn __API_AVAILABLE5(x: var, y: var, z: var, t: var, b: var) @TypeOf(__API_A(x) ++ (__API_A(y) ++ (__API_A(z) ++ (__API_A(t) ++ __API_A(b))))) {
    return __API_A(x) ++ (__API_A(y) ++ (__API_A(z) ++ (__API_A(t) ++ __API_A(b))));
}
pub inline fn __DARWIN_1050ALIAS_I(sym: var) @TypeOf(__asm("_" ++ (__STRING(sym) ++ (__DARWIN_SUF_1050 ++ (__DARWIN_SUF_64_BIT_INO_T ++ __DARWIN_SUF_UNIX03))))) {
    return __asm("_" ++ (__STRING(sym) ++ (__DARWIN_SUF_1050 ++ (__DARWIN_SUF_64_BIT_INO_T ++ __DARWIN_SUF_UNIX03))));
}
pub const __INTMAX_WIDTH__ = 64;
pub const EcsPostFrame = ECS_HI_COMPONENT_ID + 22;
pub inline fn ecs_owns(world: var, entity: var, type_1: var, owned: var) @TypeOf(ecs_type_owns_type(world, ecs_get_type(world, entity), ecs_type(type_1), owned)) {
    return ecs_type_owns_type(world, ecs_get_type(world, entity), ecs_type(type_1), owned);
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_6(x: var) @TypeOf(x) {
    return x;
}
pub const __IPHONE_4_1 = 40100;
pub const SA_USERTRAMP = 0x0100;
pub const SIGTSTP = 18;
pub const __IPHONE_4_3 = 40300;
pub const FLECS__EEcsType = 3;
pub const RLIM_SAVED_CUR = RLIM_INFINITY;
pub inline fn ecs_bulk_new(world: var, component: var, count: var) @TypeOf(ecs_bulk_new_w_type(world, ecs_type(component), count, NULL)) {
    return ecs_bulk_new_w_type(world, ecs_type(component), count, NULL);
}
pub const __cold = __attribute__(__cold__);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const POLL_ERR = 4;
pub const __x86_64 = 1;
pub const __DARWIN_BIG_ENDIAN = 4321;
pub const __INT8_FMTd__ = "hhd";
pub const __TVOS_13_4 = 130400;
pub const _DARWIN_FEATURE_ONLY_UNIX_CONFORMANCE = 1;
pub const __UINTMAX_WIDTH__ = 64;
pub const __UINT8_MAX__ = 255;
pub inline fn __OS_AVAILABILITY(_target: var, _availability: var) @TypeOf(__attribute__(availability(_target, _availability))) {
    return __attribute__(availability(_target, _availability));
}
pub const __DBL_HAS_QUIET_NAN__ = 1;
pub const __WATCHOS_4_0 = 40000;
pub const __clang_minor__ = 0;
pub const __WATCHOS_4_1 = 40100;
pub inline fn ECS_EXPORT_ENTITY(type_1: var) @TypeOf(ECS_SET_ENTITY(type_1)) {
    return ECS_SET_ENTITY(type_1);
}
pub const RLIMIT_FOOTPRINT_INTERVAL = 0x4;
pub inline fn __API_DEPRECATED_REP7(rep: var, x: var, y: var, z: var, t: var, b: var, m: var) @TypeOf(__API_DEPRECATED_REP6(rep, x, y, z, t, b) ++ __API_R(rep, m)) {
    return __API_DEPRECATED_REP6(rep, x, y, z, t, b) ++ __API_R(rep, m);
}
pub const __LDBL_DECIMAL_DIG__ = 21;
pub inline fn ecs_get_parent(world: var, entity: var, component: var) @TypeOf(ecs_get_parent_w_entity(world, entity, ecs_entity(component))) {
    return ecs_get_parent_w_entity(world, entity, ecs_entity(component));
}
pub const __SSE4_1__ = 1;
pub inline fn htonll(x: var) @TypeOf(__DARWIN_OSSwapInt64(x)) {
    return __DARWIN_OSSwapInt64(x);
}
pub const EcsPipeline = ECS_HI_COMPONENT_ID + 8;
pub const __WCHAR_TYPE__ = c_int;
pub const __INT_FAST64_FMTd__ = "lld";
pub const ECS_MORE_THAN_ONE_PREFAB = 13;
pub const _STRUCT_MCONTEXT = _STRUCT_MCONTEXT64;
pub const ECS_INVALID_REACTIVE_SIGNATURE = 41;
pub const INT_LEAST64_MIN = INT64_MIN;
pub inline fn WTERMSIG(x: var) @TypeOf(_WSTATUS(x)) {
    return _WSTATUS(x);
}
pub const EcsPostUpdate = ECS_HI_COMPONENT_ID + 19;
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub inline fn ecs_vector_from_array(T: var, elem_count: var, array: var) @TypeOf(_ecs_vector_from_array(ECS_VECTOR_T(T), elem_count, array)) {
    return _ecs_vector_from_array(ECS_VECTOR_T(T), elem_count, array);
}
pub const RLIMIT_MEMLOCK = 6;
pub const IOPOL_APPLICATION = IOPOL_STANDARD;
pub const __INT16_FMTi__ = "hi";
pub const WSTOPPED = 0x00000008;
pub const __LDBL_MIN_EXP__ = -16381;
pub const __PRFCHW__ = 1;
pub const __UINTMAX_FMTu__ = "lu";
pub inline fn __API_DEPRECATED_BEGIN_REP5(rep: var, a: var, b: var, c: var, d: var) @TypeOf(__API_R_BEGIN(rep, a) ++ (__API_R_BEGIN(rep, b) ++ (__API_R_BEGIN(rep, c) ++ __API_R_BEGIN(rep, d)))) {
    return __API_R_BEGIN(rep, a) ++ (__API_R_BEGIN(rep, b) ++ (__API_R_BEGIN(rep, c) ++ __API_R_BEGIN(rep, d)));
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_1(x: var) @TypeOf(x) {
    return x;
}
pub inline fn __API_DEPRECATED_BEGIN_MSG4(msg: var, a: var, b: var, c: var) @TypeOf(__API_D_BEGIN(msg, a) ++ (__API_D_BEGIN(msg, b) ++ __API_D_BEGIN(msg, c))) {
    return __API_D_BEGIN(msg, a) ++ (__API_D_BEGIN(msg, b) ++ __API_D_BEGIN(msg, c));
}
pub const ECS_HI_COMPONENT_ID = 256;
pub const __UINT32_FMTu__ = "u";
pub const SIGFPE = 8;
pub const ECS_TYPE_NOT_AN_ENTITY = 9;
pub const PRIO_DARWIN_THREAD = 3;
pub inline fn __DARWIN_1050INODE64(sym: var) @TypeOf(__asm("_" ++ (__STRING(sym) ++ (__DARWIN_SUF_1050 ++ __DARWIN_SUF_64_BIT_INO_T)))) {
    return __asm("_" ++ (__STRING(sym) ++ (__DARWIN_SUF_1050 ++ __DARWIN_SUF_64_BIT_INO_T)));
}
pub const LITTLE_ENDIAN = __DARWIN_LITTLE_ENDIAN;
pub const __amd64__ = 1;
pub const CLD_EXITED = 1;
pub const SIGSTKSZ = 131072;
pub const SIGVTALRM = 26;
pub const __null_unspecified = _Null_unspecified;
pub const SIGXFSZ = 25;
pub const __INT64_C_SUFFIX__ = LL;
pub inline fn INT16_C(v: var) @TypeOf(v) {
    return v;
}
pub const __CLANG_ATOMIC_INT_LOCK_FREE = 2;
pub const SIGBUS = 10;
pub const __MAC_10_12_4 = 101204;
pub const RLIM_NLIMITS = 9;
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_3(x: var) @TypeOf(x) {
    return x;
}
pub const FPE_FLTINV = 5;
pub const SI_QUEUE = 0x10002;
pub inline fn ecs_new(world: var, type_1: var) @TypeOf(ecs_new_w_type(world, ecs_type(type_1))) {
    return ecs_new_w_type(world, ecs_type(type_1));
}
pub inline fn ecs_os_dlproc(lib: var, procname: var) @TypeOf(ecs_os_api.dlproc(lib, procname)) {
    return ecs_os_api.dlproc(lib, procname);
}
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = 2;
pub const PRIO_USER = 2;
pub inline fn __P(protos: var) @TypeOf(protos) {
    return protos;
}
pub inline fn __RCSID(s: var) @TypeOf(__IDSTRING(rcsid, s)) {
    return __IDSTRING(rcsid, s);
}
pub const __STDC_WANT_LIB_EXT1__ = 1;
pub const __UINT64_FMTx__ = "llx";
pub inline fn __API_DEPRECATED_MSG4(msg: var, x: var, y: var, z: var) @TypeOf(__API_DEPRECATED_MSG3(msg, x, y) ++ __API_D(msg, z)) {
    return __API_DEPRECATED_MSG3(msg, x, y) ++ __API_D(msg, z);
}
pub const __IPHONE_8_4 = 80400;
pub const __GNUC__ = 4;
pub const ECS_STRBUF_MAX_LIST_DEPTH = 32;
pub const __INT_FAST32_FMTi__ = "i";
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = 2;
pub inline fn __AVAILABILITY_INTERNAL__IPHONE_NA_DEP__IPHONE_NA_MSG(_msg: var) @TypeOf(__attribute__(availability(ios, unavailable))) {
    return __attribute__(availability(ios, unavailable));
}
pub inline fn __API_UNAVAILABLE_BEGIN2(a: var, b: var) @TypeOf(__API_U_BEGIN(a) ++ __API_U_BEGIN(b)) {
    return __API_U_BEGIN(a) ++ __API_U_BEGIN(b);
}
pub inline fn ecs_vector_set_count(vector: var, T: var, elem_count: var) @TypeOf(_ecs_vector_set_count(vector, ECS_VECTOR_T(T), elem_count)) {
    return _ecs_vector_set_count(vector, ECS_VECTOR_T(T), elem_count);
}
pub const __TVOS_12_0 = 120000;
pub const __seg_gs = __attribute__(address_space(256));
pub inline fn ntohll(x: var) @TypeOf(__DARWIN_OSSwapInt64(x)) {
    return __DARWIN_OSSwapInt64(x);
}
pub const FLECS__EEcsTrigger = 4;
pub const ECS_INVALID_PREFAB_CHILD_TYPE = 34;
pub const __IPHONE_8_1 = 80100;
pub const __UINT64_FMTo__ = "llo";
pub inline fn ecs_ringbuf_push(buffer: var, T: var) @TypeOf((if (@typeInfo(@TypeOf(_ecs_ringbuf_push(buffer, ECS_VECTOR_T(T)))) == .Pointer) @ptrCast([*c]T, @alignCast(@alignOf([*c]T.Child), _ecs_ringbuf_push(buffer, ECS_VECTOR_T(T)))) else if (@typeInfo(@TypeOf(_ecs_ringbuf_push(buffer, ECS_VECTOR_T(T)))) == .Int and @typeInfo([*c]T) == .Pointer) @intToPtr([*c]T, _ecs_ringbuf_push(buffer, ECS_VECTOR_T(T))) else @as([*c]T, _ecs_ringbuf_push(buffer, ECS_VECTOR_T(T))))) {
    return (if (@typeInfo(@TypeOf(_ecs_ringbuf_push(buffer, ECS_VECTOR_T(T)))) == .Pointer) @ptrCast([*c]T, @alignCast(@alignOf([*c]T.Child), _ecs_ringbuf_push(buffer, ECS_VECTOR_T(T)))) else if (@typeInfo(@TypeOf(_ecs_ringbuf_push(buffer, ECS_VECTOR_T(T)))) == .Int and @typeInfo([*c]T) == .Pointer) @intToPtr([*c]T, _ecs_ringbuf_push(buffer, ECS_VECTOR_T(T))) else @as([*c]T, _ecs_ringbuf_push(buffer, ECS_VECTOR_T(T))));
}
pub const __UINT_FAST16_FMTx__ = "hx";
pub const WNOHANG = 0x00000001;
pub const ECS_TYPE_TOO_LARGE = 33;
pub const TRAP_TRACE = 2;
pub const RUSAGE_CHILDREN = -1;
pub const __abortlike = __dead2 ++ (__cold ++ __not_tail_called);
pub const FPE_NOOP = 0;
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_7(x: var) @TypeOf(x) {
    return x;
}
pub const ECS_INCONSISTENT_COMPONENT_NAME = 42;
pub inline fn INT32_C(v: var) @TypeOf(v) {
    return v;
}
pub const __STDC_UTF_32__ = 1;
pub const FLECS__EEcsIterAction = 11;
pub const __IPHONE_2_1 = 20100;
pub const __IPHONE_11_2 = 110200;
pub const EcsOnAdd = ECS_HI_COMPONENT_ID + 9;
pub const ECS_NO_OUT_COLUMNS = 36;
pub const __MAC_10_4 = 1040;
pub inline fn ecs_ringbuf_last(buffer: var, T: var) @TypeOf((if (@typeInfo(@TypeOf(_ecs_ringbuf_last(buffer, ECS_VECTOR_T(T)))) == .Pointer) @ptrCast([*c]T, @alignCast(@alignOf([*c]T.Child), _ecs_ringbuf_last(buffer, ECS_VECTOR_T(T)))) else if (@typeInfo(@TypeOf(_ecs_ringbuf_last(buffer, ECS_VECTOR_T(T)))) == .Int and @typeInfo([*c]T) == .Pointer) @intToPtr([*c]T, _ecs_ringbuf_last(buffer, ECS_VECTOR_T(T))) else @as([*c]T, _ecs_ringbuf_last(buffer, ECS_VECTOR_T(T))))) {
    return (if (@typeInfo(@TypeOf(_ecs_ringbuf_last(buffer, ECS_VECTOR_T(T)))) == .Pointer) @ptrCast([*c]T, @alignCast(@alignOf([*c]T.Child), _ecs_ringbuf_last(buffer, ECS_VECTOR_T(T)))) else if (@typeInfo(@TypeOf(_ecs_ringbuf_last(buffer, ECS_VECTOR_T(T)))) == .Int and @typeInfo([*c]T) == .Pointer) @intToPtr([*c]T, _ecs_ringbuf_last(buffer, ECS_VECTOR_T(T))) else @as([*c]T, _ecs_ringbuf_last(buffer, ECS_VECTOR_T(T))));
}
pub const __MAC_10_15_4 = 101504;
pub const SA_USERSPACE_MASK = SA_ONSTACK | (SA_RESTART | (SA_RESETHAND | (SA_NOCLDSTOP | (SA_NODEFER | (SA_NOCLDWAIT | SA_SIGINFO)))));
pub const __IPHONE_11_0 = 110000;
pub inline fn ecs_os_thread_join(thread: var) @TypeOf(ecs_os_api.thread_join(thread)) {
    return ecs_os_api.thread_join(thread);
}
pub const __WATCHOS_6_2 = 60200;
pub const __TVOS_13_3 = 130300;
pub inline fn __API_AVAILABLE4(x: var, y: var, z: var, t: var) @TypeOf(__API_A(x) ++ (__API_A(y) ++ (__API_A(z) ++ __API_A(t)))) {
    return __API_A(x) ++ (__API_A(y) ++ (__API_A(z) ++ __API_A(t)));
}
pub const IOPOL_TYPE_DISK = 0;
pub inline fn ecs_get_mut(world: var, entity: var, component: var, is_added: var) @TypeOf((if (@typeInfo(@TypeOf(ecs_get_mut_w_entity(world, entity, ecs_entity(component), is_added))) == .Pointer) @ptrCast([*c]component, @alignCast(@alignOf([*c]component.Child), ecs_get_mut_w_entity(world, entity, ecs_entity(component), is_added))) else if (@typeInfo(@TypeOf(ecs_get_mut_w_entity(world, entity, ecs_entity(component), is_added))) == .Int and @typeInfo([*c]component) == .Pointer) @intToPtr([*c]component, ecs_get_mut_w_entity(world, entity, ecs_entity(component), is_added)) else @as([*c]component, ecs_get_mut_w_entity(world, entity, ecs_entity(component), is_added)))) {
    return (if (@typeInfo(@TypeOf(ecs_get_mut_w_entity(world, entity, ecs_entity(component), is_added))) == .Pointer) @ptrCast([*c]component, @alignCast(@alignOf([*c]component.Child), ecs_get_mut_w_entity(world, entity, ecs_entity(component), is_added))) else if (@typeInfo(@TypeOf(ecs_get_mut_w_entity(world, entity, ecs_entity(component), is_added))) == .Int and @typeInfo([*c]component) == .Pointer) @intToPtr([*c]component, ecs_get_mut_w_entity(world, entity, ecs_entity(component), is_added)) else @as([*c]component, ecs_get_mut_w_entity(world, entity, ecs_entity(component), is_added)));
}
pub const UINT32_MAX = @as(c_uint, 4294967295);
pub const __UINT16_FMTu__ = "hu";
pub inline fn ecs_vector_pop(vector: var, T: var, value: var) @TypeOf(_ecs_vector_pop(vector, ECS_VECTOR_T(T), value)) {
    return _ecs_vector_pop(vector, ECS_VECTOR_T(T), value);
}
pub const INT_LEAST8_MIN = INT8_MIN;
pub const __GNUC_STDC_INLINE__ = 1;
pub inline fn ecs_vector_set_size(vector: var, T: var, elem_count: var) @TypeOf(_ecs_vector_set_size(vector, ECS_VECTOR_T(T), elem_count)) {
    return _ecs_vector_set_size(vector, ECS_VECTOR_T(T), elem_count);
}
pub const __DBL_DIG__ = 15;
pub const __DARWIN_C_ANSI = @as(c_long, 0o010000);
pub inline fn __API_DEPRECATED_MSG6(msg: var, x: var, y: var, z: var, t: var, b: var) @TypeOf(__API_DEPRECATED_MSG5(msg, x, y, z, t) ++ __API_D(msg, b)) {
    return __API_DEPRECATED_MSG5(msg, x, y, z, t) ++ __API_D(msg, b);
}
pub const __TVOS_10_0_1 = 100001;
pub inline fn va_copy(dest: var, src: var) @TypeOf(__builtin_va_copy(dest, src)) {
    return __builtin_va_copy(dest, src);
}
pub inline fn ecs_vector_set_size_t(vector: var, size: var, alignment: var, elem_count: var) @TypeOf(_ecs_vector_set_size(vector, ECS_VECTOR_U(size, alignment), elem_count)) {
    return _ecs_vector_set_size(vector, ECS_VECTOR_U(size, alignment), elem_count);
}
pub inline fn ecs_vector_copy(src: var, T: var) @TypeOf(_ecs_vector_copy(src, ECS_VECTOR_T(T))) {
    return _ecs_vector_copy(src, ECS_VECTOR_T(T));
}
pub const __IPHONE_6_1 = 60100;
pub const __INT32_FMTd__ = "d";
pub const RLIM_INFINITY = (if (@typeInfo(__uint64_t) == .Pointer) @intToPtr(__uint64_t, 1 << 63) else @as(__uint64_t, 1 << 63)) - 1;
pub const __INT_LEAST32_FMTd__ = "d";
pub const __WATCHOS_4_2 = 40200;
pub const ECS_UNRESOLVED_IDENTIFIER = 27;
pub const __MAC_OS_X_VERSION_MAX_ALLOWED = __MAC_10_15;
pub const WCOREFLAG = 0o0200;
pub const __FLT_DIG__ = 6;
pub const __USER_LABEL_PREFIX__ = _;
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_4(x: var) @TypeOf(x) {
    return x;
}
pub const __INTPTR_FMTi__ = "li";
pub const __IPHONE_5_0 = 50000;
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const IOPOL_SCOPE_PROCESS = 0;
pub const __DARWIN_PDP_ENDIAN = 3412;
pub const __TVOS_10_2 = 100200;
pub inline fn ecs_vector_get_t(vector: var, size: var, alignment: var, index: var) @TypeOf(_ecs_vector_get(vector, ECS_VECTOR_U(size, alignment), index)) {
    return _ecs_vector_get(vector, ECS_VECTOR_U(size, alignment), index);
}
pub const __SIZEOF_LONG_LONG__ = 8;
pub const INT_LEAST64_MAX = INT64_MAX;
pub const __result_use_check = __attribute__(__warn_unused_result__);
pub inline fn __API_AVAILABLE3(x: var, y: var, z: var) @TypeOf(__API_A(x) ++ (__API_A(y) ++ __API_A(z))) {
    return __API_A(x) ++ (__API_A(y) ++ __API_A(z));
}
pub inline fn ecs_vector_remove_index(vector: var, T: var, index: var) @TypeOf(_ecs_vector_remove_index(vector, ECS_VECTOR_T(T), index)) {
    return _ecs_vector_remove_index(vector, ECS_VECTOR_T(T), index);
}
pub const __INT32_TYPE__ = c_int;
pub inline fn ecs_os_adec(value: var) @TypeOf(ecs_os_api.adec(value)) {
    return ecs_os_api.adec(value);
}
pub const __WINT_TYPE__ = c_int;
pub const __UINTPTR_FMTX__ = "lX";
pub const __SIZEOF_LONG_DOUBLE__ = 16;
pub const __DBL_MIN_EXP__ = -1021;
pub const __INT_FAST64_FMTi__ = "lli";
pub const __INT64_FMTi__ = "lli";
pub inline fn ecs_os_cond_free(cond: var) @TypeOf(ecs_os_api.cond_free(cond)) {
    return ecs_os_api.cond_free(cond);
}
pub inline fn __API_DEPRECATED_BEGIN_MSG2(msg: var, a: var) @TypeOf(__API_D_BEGIN(msg, a)) {
    return __API_D_BEGIN(msg, a);
}
pub const ECS_TYPE_FLAG_START = ECS_CHILDOF;
pub const __PTHREAD_ONCE_SIZE__ = 8;
pub const __MAC_10_10_2 = 101002;
pub const __DARWIN_C_FULL = @as(c_long, 900000);
pub const __IOS_UNAVAILABLE = __OS_AVAILABILITY(ios, unavailable);
pub const SIGSTOP = 17;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION = __attribute__(availability(ios, unavailable));
pub inline fn __API_DEPRECATED_REP5(rep: var, x: var, y: var, z: var, t: var) @TypeOf(__API_DEPRECATED_REP4(rep, x, y, z) ++ __API_R(rep, t)) {
    return __API_DEPRECATED_REP4(rep, x, y, z) ++ __API_R(rep, t);
}
pub const SIG_UNBLOCK = 2;
pub const __PTHREAD_RWLOCKATTR_SIZE__ = 16;
pub const __API_UNAVAILABLE_PLATFORM_macCatalyst = blk: {
    _ = macCatalyst;
    break :blk unavailable;
};
pub const CLD_DUMPED = 3;
pub const __IPHONE_7_1 = 70100;
pub const ILL_ILLTRP = 2;
pub const __PTHREAD_MUTEXATTR_SIZE__ = 8;
pub const __API_TO_BE_DEPRECATED = 100000;
pub const RLIMIT_NPROC = 7;
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_3(x: var) @TypeOf(x) {
    return x;
}
pub const __TVOS_11_0 = 110000;
pub const __DRIVERKIT_19_0 = 190000;
pub const __IPHONE_4_0 = 40000;
pub const __LDBL_HAS_INFINITY__ = 1;
pub inline fn ecs_vector_set_count_t(vector: var, size: var, alignment: var, elem_count: var) @TypeOf(_ecs_vector_set_count(vector, ECS_VECTOR_U(size, alignment), elem_count)) {
    return _ecs_vector_set_count(vector, ECS_VECTOR_U(size, alignment), elem_count);
}
pub const __enum_closed = __attribute__(__enum_extensibility__(closed));
pub inline fn ecs_os_calloc(num: var, size: var) @TypeOf(ecs_os_api.calloc(num, size)) {
    return ecs_os_api.calloc(num, size);
}
pub inline fn WEXITSTATUS(x: var) @TypeOf((_W_INT(x) >> 8) & 0x000000ff) {
    return (_W_INT(x) >> 8) & 0x000000ff;
}
pub const __nonnull = _Nonnull;
pub const __UINT_LEAST32_FMTX__ = "X";
pub const ECS_OUT_OF_MEMORY = 17;
pub const FLECS__EEcsTickSource = 7;
pub inline fn __strfmonlike(fmtarg: var, firstvararg: var) @TypeOf(__attribute__(__format__(__strfmon__, fmtarg, firstvararg))) {
    return __attribute__(__format__(__strfmon__, fmtarg, firstvararg));
}
pub const FPE_INTOVF = 8;
pub const __SSE_MATH__ = 1;
pub const __DBL_EPSILON__ = 2.2204460492503131e-16;
pub const SIGEV_SIGNAL = 1;
pub inline fn ecs_os_mutex_lock(mutex: var) @TypeOf(ecs_os_api.mutex_lock(mutex)) {
    return ecs_os_api.mutex_lock(mutex);
}
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = 2;
pub const @"false" = 0;
pub const _DARWIN_FEATURE_UNIX_CONFORMANCE = 3;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub inline fn _WSTATUS(x: var) @TypeOf(_W_INT(x) & 0o0177) {
    return _W_INT(x) & 0o0177;
}
pub const SIGCHLD = 20;
pub const __IPHONE_3_0 = 30000;
pub const MB_CUR_MAX = __mb_cur_max;
pub inline fn __API_AVAILABLE_BEGIN6(a: var, b: var, c: var, d: var, e: var, f: var) @TypeOf(__API_A_BEGIN(a) ++ (__API_A_BEGIN(b) ++ (__API_A_BEGIN(c) ++ (__API_A_BEGIN(d) ++ (__API_A_BEGIN(e) ++ __API_A_BEGIN(f)))))) {
    return __API_A_BEGIN(a) ++ (__API_A_BEGIN(b) ++ (__API_A_BEGIN(c) ++ (__API_A_BEGIN(d) ++ (__API_A_BEGIN(e) ++ __API_A_BEGIN(f)))));
}
pub const RLIMIT_RSS = RLIMIT_AS;
pub inline fn __API_UNAVAILABLE_BEGIN7(a: var, b: var, c: var, d: var, e: var, f: var) @TypeOf(__API_U_BEGIN(a) ++ (__API_U_BEGIN(b) ++ (__API_U_BEGIN(c) ++ (__API_U_BEGIN(d) ++ (__API_U_BEGIN(e) ++ (__API_U_BEGIN(f) ++ __API_U_BEGIN(g))))))) {
    return __API_U_BEGIN(a) ++ (__API_U_BEGIN(b) ++ (__API_U_BEGIN(c) ++ (__API_U_BEGIN(d) ++ (__API_U_BEGIN(e) ++ (__API_U_BEGIN(f) ++ __API_U_BEGIN(g))))));
}
pub const __INT16_TYPE__ = c_short;
pub const __PCLMUL__ = 1;
pub const SA_NODEFER = 0x0010;
pub const ECS_INSTANCEOF = (if (@typeInfo(ecs_entity_t) == .Pointer) @intToPtr(ecs_entity_t, 1 << 63) else @as(ecs_entity_t, 1 << 63));
pub const CLOCK_UPTIME_RAW_APPROX = _CLOCK_UPTIME_RAW_APPROX;
pub const RUSAGE_SELF = 0;
pub const __UINTPTR_FMTx__ = "lx";
pub inline fn WIFEXITED(x: var) @TypeOf(_WSTATUS(x) == 0) {
    return _WSTATUS(x) == 0;
}
pub const PRIO_PROCESS = 0;
pub const __enum_open = __attribute__(__enum_extensibility__(open));
pub const ECS_COLUMN_IS_NOT_SET = 29;
pub const FPE_FLTUND = 3;
pub const BUS_ADRALN = 1;
pub const __AES__ = 1;
pub const __FLT_RADIX__ = 2;
pub const __amd64 = 1;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const IOPOL_SCOPE_DARWIN_BG = 2;
pub inline fn ecs_lookup_path(world: var, parent: var, path: var) @TypeOf(ecs_lookup_path_w_sep(world, parent, path, ".", NULL)) {
    return ecs_lookup_path_w_sep(world, parent, path, ".", NULL);
}
pub const FLECS__EEcsSystem = 5;
pub inline fn W_EXITCODE(ret: var, sig: var) @TypeOf(ret << (8 | sig)) {
    return ret << (8 | sig);
}
pub inline fn __AVAILABILITY_INTERNAL_DEPRECATED_MSG(_msg: var) @TypeOf(__attribute__(deprecated(_msg))) {
    return __attribute__(deprecated(_msg));
}
pub const __UINTPTR_FMTo__ = "lo";
pub const __IPHONE_11_4 = 110400;
pub const __INT32_MAX__ = 2147483647;
pub const POLL_HUP = 6;
pub const CLOCK_MONOTONIC = _CLOCK_MONOTONIC;
pub const __INTPTR_FMTd__ = "ld";
pub inline fn va_arg(ap: var, type_1: var) @TypeOf(__builtin_va_arg(ap, type_1)) {
    return __builtin_va_arg(ap, type_1);
}
pub const __INT_FAST32_MAX__ = 2147483647;
pub const SIGUSR2 = 31;
pub inline fn __DARWIN_EXTSN_C(sym: var) @TypeOf(__asm("_" ++ (__STRING(sym) ++ (__DARWIN_SUF_EXTSN ++ __DARWIN_SUF_NON_CANCELABLE)))) {
    return __asm("_" ++ (__STRING(sym) ++ (__DARWIN_SUF_EXTSN ++ __DARWIN_SUF_NON_CANCELABLE)));
}
pub const __MAC_10_11_4 = 101104;
pub const __not_tail_called = __attribute__(__not_tail_called__);
pub const __IPHONE_13_1 = 130100;
pub inline fn ecs_os_thread_new(callback: var, param: var) @TypeOf(ecs_os_api.thread_new(callback, param)) {
    return ecs_os_api.thread_new(callback, param);
}
pub inline fn __API_DEPRECATED_BEGIN_MSG5(msg: var, a: var, b: var, c: var, d: var) @TypeOf(__API_D_BEGIN(msg, a) ++ (__API_D_BEGIN(msg, b) ++ (__API_D_BEGIN(msg, c) ++ __API_D_BEGIN(msg, d)))) {
    return __API_D_BEGIN(msg, a) ++ (__API_D_BEGIN(msg, b) ++ (__API_D_BEGIN(msg, c) ++ __API_D_BEGIN(msg, d)));
}
pub const __INT32_FMTi__ = "i";
pub inline fn ecs_vector_add_t(vector: var, size: var, alignment: var) @TypeOf(_ecs_vector_add(vector, ECS_VECTOR_U(size, alignment))) {
    return _ecs_vector_add(vector, ECS_VECTOR_U(size, alignment));
}
pub inline fn ntohl(x: var) @TypeOf(__DARWIN_OSSwapInt32(x)) {
    return __DARWIN_OSSwapInt32(x);
}
pub const __GCC_ATOMIC_INT_LOCK_FREE = 2;
pub const __MOVBE__ = 1;
pub const __INT_LEAST32_TYPE__ = c_int;
pub const UINT_LEAST16_MAX = UINT16_MAX;
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = 2;
pub inline fn __API_DEPRECATED_BEGIN_MSG7(msg: var, a: var, b: var, c: var, d: var, e: var, f: var) @TypeOf(__API_D_BEGIN(msg, a) ++ (__API_D_BEGIN(msg, b) ++ (__API_D_BEGIN(msg, c) ++ (__API_D_BEGIN(msg, d) ++ (__API_D_BEGIN(msg, e) ++ __API_D_BEGIN(msg, f)))))) {
    return __API_D_BEGIN(msg, a) ++ (__API_D_BEGIN(msg, b) ++ (__API_D_BEGIN(msg, c) ++ (__API_D_BEGIN(msg, d) ++ (__API_D_BEGIN(msg, e) ++ __API_D_BEGIN(msg, f)))));
}
pub const __SIZE_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const WAKEMON_ENABLE = 0x01;
pub const SIGIO = 23;
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const __BLOCKS__ = 1;
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = 2;
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINTPTR_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __MAC_10_9 = 1090;
pub const EcsPreStore = ECS_HI_COMPONENT_ID + 20;
pub const __PTRDIFF_FMTd__ = "ld";
pub const PRIO_PGRP = 1;
pub const SEGV_NOOP = 0;
pub const SA_RESETHAND = 0x0004;
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = 2;
pub const ILL_PRVOPC = 3;
pub const __WCHAR_MAX__ = 2147483647;
pub const __ATOMIC_SEQ_CST = 5;
pub inline fn UINT8_C(v: var) @TypeOf(v) {
    return v;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_2(x: var) @TypeOf(x) {
    return x;
}
pub const SA_RESTART = 0x0002;
pub const RSIZE_MAX = SIZE_MAX >> 1;
pub const __used = __attribute__(__used__);
pub const ECS_INTERNAL_ERROR = 12;
pub const IOPOL_MATERIALIZE_DATALESS_FILES_DEFAULT = 0;
pub const CLOCK_MONOTONIC_RAW_APPROX = _CLOCK_MONOTONIC_RAW_APPROX;
pub const RLIMIT_CPU_USAGE_MONITOR = 0x2;
pub const __MAC_10_11_3 = 101103;
pub const IOPOL_IMPORTANT = 1;
pub inline fn ntohs(x: var) @TypeOf(__DARWIN_OSSwapInt16(x)) {
    return __DARWIN_OSSwapInt16(x);
}
pub const _QUAD_HIGHWORD = 1;
pub const UINTMAX_MAX = UINTMAX_C(18446744073709551615);
pub const ECS_NOT = (if (@typeInfo(ecs_entity_t) == .Pointer) @intToPtr(ecs_entity_t, 1 << 58) else @as(ecs_entity_t, 1 << 58));
pub const __x86_64__ = 1;
pub inline fn ecs_bulk_add_remove(world: var, to_add: var, to_remove: var, filter: var) @TypeOf(ecs_bulk_add_remove_type(world, ecs_type(to_add), ecs_type(to_remove), filter)) {
    return ecs_bulk_add_remove_type(world, ecs_type(to_add), ecs_type(to_remove), filter);
}
pub const BUS_NOOP = 0;
pub const __BMI__ = 1;
pub inline fn sigmask(m: var) @TypeOf(1 << (m - 1)) {
    return 1 << (m - 1);
}
pub const __FLT_MANT_DIG__ = 24;
pub const __DARWIN_SUF_1050 = "$1050";
pub const IOPOL_PASSIVE = 2;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZEOF_DOUBLE__ = 8;
pub const WAKEMON_DISABLE = 0x02;
pub inline fn __DARWIN_ALIAS_C(sym: var) @TypeOf(__asm("_" ++ (__STRING(sym) ++ (__DARWIN_SUF_NON_CANCELABLE ++ __DARWIN_SUF_UNIX03)))) {
    return __asm("_" ++ (__STRING(sym) ++ (__DARWIN_SUF_NON_CANCELABLE ++ __DARWIN_SUF_UNIX03)));
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_3(x: var) @TypeOf(x) {
    return x;
}
pub const __IPHONE_3_1 = 30100;
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_2(x: var) @TypeOf(x) {
    return x;
}
pub const __PTHREAD_CONDATTR_SIZE__ = 8;
pub const ECS_TYPE_FLAG_MASK = (if (@typeInfo(@TypeOf(ECS_INSTANCEOF | (ECS_CHILDOF | (ECS_AND | (ECS_OR | (ECS_XOR | ECS_NOT)))))) == .Pointer) @ptrCast(ecs_entity_t, @alignCast(@alignOf(ecs_entity_t.Child), ECS_INSTANCEOF | (ECS_CHILDOF | (ECS_AND | (ECS_OR | (ECS_XOR | ECS_NOT)))))) else if (@typeInfo(@TypeOf(ECS_INSTANCEOF | (ECS_CHILDOF | (ECS_AND | (ECS_OR | (ECS_XOR | ECS_NOT)))))) == .Int and @typeInfo(ecs_entity_t) == .Pointer) @intToPtr(ecs_entity_t, ECS_INSTANCEOF | (ECS_CHILDOF | (ECS_AND | (ECS_OR | (ECS_XOR | ECS_NOT))))) else @as(ecs_entity_t, ECS_INSTANCEOF | (ECS_CHILDOF | (ECS_AND | (ECS_OR | (ECS_XOR | ECS_NOT))))));
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const SIGPROF = 27;
pub const __WATCHOS_4_3 = 40300;
pub inline fn ecs_owns_entity(world: var, entity: var, has: var, owned: var) @TypeOf(ecs_type_owns_entity(world, ecs_get_type(world, entity), has, owned)) {
    return ecs_type_owns_entity(world, ecs_get_type(world, entity), has, owned);
}
pub const __SEG_GS = 1;
pub const INT_FAST64_MAX = INT64_MAX;
pub const __SIZEOF_FLOAT__ = 4;
pub const __INT_FAST8_MAX__ = 127;
pub inline fn __API_DEPRECATED_REP6(rep: var, x: var, y: var, z: var, t: var, b: var) @TypeOf(__API_DEPRECATED_REP5(rep, x, y, z, t) ++ __API_R(rep, b)) {
    return __API_DEPRECATED_REP5(rep, x, y, z, t) ++ __API_R(rep, b);
}
pub const __MAC_10_6 = 1060;
pub const __MAC_10_14_4 = 101404;
pub inline fn __SCCSID(s: var) @TypeOf(__IDSTRING(sccsid, s)) {
    return __IDSTRING(sccsid, s);
}
pub const __OBJC_BOOL_IS_BOOL = 0;
pub const __IPHONE_9_2 = 90200;
pub inline fn CAST_USER_ADDR_T(a_ptr: var) @TypeOf((if (@typeInfo(@TypeOf((if (@typeInfo(@TypeOf(a_ptr)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), a_ptr)) else if (@typeInfo(@TypeOf(a_ptr)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, a_ptr) else @as(uintptr_t, a_ptr)))) == .Pointer) @ptrCast(user_addr_t, @alignCast(@alignOf(user_addr_t.Child), (if (@typeInfo(@TypeOf(a_ptr)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), a_ptr)) else if (@typeInfo(@TypeOf(a_ptr)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, a_ptr) else @as(uintptr_t, a_ptr)))) else if (@typeInfo(@TypeOf((if (@typeInfo(@TypeOf(a_ptr)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), a_ptr)) else if (@typeInfo(@TypeOf(a_ptr)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, a_ptr) else @as(uintptr_t, a_ptr)))) == .Int and @typeInfo(user_addr_t) == .Pointer) @intToPtr(user_addr_t, (if (@typeInfo(@TypeOf(a_ptr)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), a_ptr)) else if (@typeInfo(@TypeOf(a_ptr)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, a_ptr) else @as(uintptr_t, a_ptr))) else @as(user_addr_t, (if (@typeInfo(@TypeOf(a_ptr)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), a_ptr)) else if (@typeInfo(@TypeOf(a_ptr)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, a_ptr) else @as(uintptr_t, a_ptr))))) {
    return (if (@typeInfo(@TypeOf((if (@typeInfo(@TypeOf(a_ptr)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), a_ptr)) else if (@typeInfo(@TypeOf(a_ptr)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, a_ptr) else @as(uintptr_t, a_ptr)))) == .Pointer) @ptrCast(user_addr_t, @alignCast(@alignOf(user_addr_t.Child), (if (@typeInfo(@TypeOf(a_ptr)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), a_ptr)) else if (@typeInfo(@TypeOf(a_ptr)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, a_ptr) else @as(uintptr_t, a_ptr)))) else if (@typeInfo(@TypeOf((if (@typeInfo(@TypeOf(a_ptr)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), a_ptr)) else if (@typeInfo(@TypeOf(a_ptr)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, a_ptr) else @as(uintptr_t, a_ptr)))) == .Int and @typeInfo(user_addr_t) == .Pointer) @intToPtr(user_addr_t, (if (@typeInfo(@TypeOf(a_ptr)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), a_ptr)) else if (@typeInfo(@TypeOf(a_ptr)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, a_ptr) else @as(uintptr_t, a_ptr))) else @as(user_addr_t, (if (@typeInfo(@TypeOf(a_ptr)) == .Pointer) @ptrCast(uintptr_t, @alignCast(@alignOf(uintptr_t.Child), a_ptr)) else if (@typeInfo(@TypeOf(a_ptr)) == .Int and @typeInfo(uintptr_t) == .Pointer) @intToPtr(uintptr_t, a_ptr) else @as(uintptr_t, a_ptr))));
}
pub const CLD_STOPPED = 5;
pub const WAIT_ANY = -1;
pub const __SSE__ = 1;
pub inline fn __SWIFT_UNAVAILABLE_MSG(_msg: var) @TypeOf(__OS_AVAILABILITY_MSG(swift, unavailable, _msg)) {
    return __OS_AVAILABILITY_MSG(swift, unavailable, _msg);
}
pub const EcsPostLoad = ECS_HI_COMPONENT_ID + 15;
pub const CPUMON_MAKE_FATAL = 0x1000;
pub const ECS_INVALID_TYPE_EXPRESSION = 5;
pub inline fn __API_AVAILABLE_BEGIN3(a: var, b: var, c: var) @TypeOf(__API_A_BEGIN(a) ++ (__API_A_BEGIN(b) ++ __API_A_BEGIN(c))) {
    return __API_A_BEGIN(a) ++ (__API_A_BEGIN(b) ++ __API_A_BEGIN(c));
}
pub const __NO_MATH_INLINES = 1;
pub const ILL_ILLOPC = 1;
pub const __DARWIN_WCHAR_MAX = __WCHAR_MAX__;
pub const SA_64REGSET = 0x0200;
pub const __UINT_FAST16_MAX__ = 65535;
pub const __TVOS_11_1 = 110100;
pub const __ATOMIC_ACQUIRE = 2;
pub const SV_ONSTACK = SA_ONSTACK;
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub inline fn ecs_vector_remove(vector: var, T: var, index: var) @TypeOf(_ecs_vector_remove(vector, ECS_VECTOR_T(T), index)) {
    return _ecs_vector_remove(vector, ECS_VECTOR_T(T), index);
}
pub const __APPLE__ = 1;
pub const FP_PREC_64B = 3;
pub const INT_FAST8_MIN = INT8_MIN;
pub inline fn __API_UNAVAILABLE_BEGIN4(a: var, b: var, c: var, d: var) @TypeOf(__API_U_BEGIN(a) ++ (__API_U_BEGIN(b) ++ (__API_U_BEGIN(c) ++ __API_U_BEGIN(d)))) {
    return __API_U_BEGIN(a) ++ (__API_U_BEGIN(b) ++ (__API_U_BEGIN(c) ++ __API_U_BEGIN(d)));
}
pub const RUSAGE_INFO_V3 = 3;
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_2(x: var) @TypeOf(x) {
    return x;
}
pub const __IPHONE_13_3 = 130300;
pub const __TVOS_12_2 = 120200;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = 1;
pub const SI_ASYNCIO = 0x10004;
pub const FPE_FLTRES = 4;
pub const SIGABRT = 6;
pub const EcsPrefab = ECS_HI_COMPONENT_ID + 1;
pub const __DBL_MIN_10_EXP__ = -307;
pub const __PTHREAD_SIZE__ = 8176;
pub const POLL_PRI = 5;
pub const IOPOL_ATIME_UPDATES_DEFAULT = 0;
pub const __DBL_DENORM_MIN__ = 4.9406564584124654e-324;
pub const sa_sigaction = __sigaction_u.__sa_sigaction;
pub const __IPHONE_4_2 = 40200;
pub const __LP64__ = 1;
pub const EcsDisabled = ECS_HI_COMPONENT_ID + 3;
pub const __ORDER_PDP_ENDIAN__ = 3412;
pub inline fn __API_AVAILABLE1(x: var) @TypeOf(__API_A(x)) {
    return __API_A(x);
}
pub const __LDBL_MIN_10_EXP__ = -4931;
pub const __LDBL_MAX_10_EXP__ = 4932;
pub const __DBL_MAX_10_EXP__ = 308;
pub const __PTRDIFF_FMTi__ = "li";
pub const WAIT_MYPGRP = 0;
pub const EcsMonitor = ECS_HI_COMPONENT_ID + 7;
pub const EcsOnLoad = ECS_HI_COMPONENT_ID + 14;
pub inline fn __DARWIN_ALIAS(sym: var) @TypeOf(__asm("_" ++ (__STRING(sym) ++ __DARWIN_SUF_UNIX03))) {
    return __asm("_" ++ (__STRING(sym) ++ __DARWIN_SUF_UNIX03));
}
pub const __MAC_10_7 = 1070;
pub const __SIZEOF_LONG__ = 8;
pub const __FLT_MIN_EXP__ = -125;
pub const EcsDisabledIntern = ECS_HI_COMPONENT_ID + 4;
pub const __AVAILABILITY_INTERNAL__MAC_NA_DEP__MAC_NA = __attribute__(availability(macosx, unavailable));
pub const ILL_PRVREG = 6;
pub const RLIMIT_FSIZE = 1;
pub const INT_FAST16_MAX = INT16_MAX;
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DARWIN_ONLY_VERS_1050 = 0;
pub const __FLT_EVAL_METHOD__ = 0;
pub const __UINTMAX_FMTx__ = "lx";
pub const __code_model_small_ = 1;
pub const RLIMIT_NOFILE = 8;
pub const _LP64 = 1;
pub const __FLT_MAX_EXP__ = 128;
pub const UINT8_MAX = 255;
pub inline fn ECS_EXPORT_COMPONENT(type_1: var) @TypeOf(ECS_SET_COMPONENT(type_1)) {
    return ECS_SET_COMPONENT(type_1);
}
pub inline fn __DARWIN_ALIAS_I(sym: var) @TypeOf(__asm("_" ++ (__STRING(sym) ++ (__DARWIN_SUF_64_BIT_INO_T ++ __DARWIN_SUF_UNIX03)))) {
    return __asm("_" ++ (__STRING(sym) ++ (__DARWIN_SUF_64_BIT_INO_T ++ __DARWIN_SUF_UNIX03)));
}
pub const __WATCHOS_2_1 = 20100;
pub const PRIO_MAX = 20;
pub const FP_RND_UP = 2;
pub const SIZE_MAX = UINTPTR_MAX;
pub const __STDC_NO_THREADS__ = 1;
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __DARWIN_SUF_64_BIT_INO_T = "$INODE64";
pub const __UINT_FAST32_FMTX__ = "X";
pub inline fn ecs_os_module_to_dl(lib: var) @TypeOf(ecs_os_api.module_to_dl(lib)) {
    return ecs_os_api.module_to_dl(lib);
}
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __LZCNT__ = 1;
pub const __MAC_10_13_4 = 101304;
pub const __API_UNAVAILABLE_PLATFORM_driverkit = blk: {
    _ = driverkit;
    break :blk unavailable;
};
pub inline fn ecs_new_from_path(world: var, parent: var, path: var) @TypeOf(ecs_new_from_path_w_sep(world, parent, path, ".", NULL)) {
    return ecs_new_from_path_w_sep(world, parent, path, ".", NULL);
}
pub const __WATCHOS_2_2 = 20200;
pub const RUSAGE_INFO_CURRENT = RUSAGE_INFO_V4;
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_9(x: var) @TypeOf(x) {
    return x;
}
pub const __MAC_10_1 = 1010;
pub const UINT_FAST64_MAX = UINT64_MAX;
pub inline fn ecs_os_strdup(str: var) @TypeOf(ecs_os_api.strdup(str)) {
    return ecs_os_api.strdup(str);
}
pub const SIGIOT = SIGABRT;
pub const WUNTRACED = 0x00000002;
pub inline fn WSTOPSIG(x: var) @TypeOf(_W_INT(x) >> 8) {
    return _W_INT(x) >> 8;
}
pub const __SIZEOF_SHORT__ = 2;
pub const w_stopval = w_S.w_Stopval;
pub const ECS_2D = 2;
pub inline fn ecs_bulk_add(world: var, type_1: var, filter: var) @TypeOf(ecs_bulk_add_type(world, ecs_type(type_1), filter)) {
    return ecs_bulk_add_type(world, ecs_type(type_1), filter);
}
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __sort_noescape = __attribute__(__noescape__);
pub const EcsFlecsCore = ECS_HI_COMPONENT_ID + 24;
pub inline fn __OSX_EXTENSION_UNAVAILABLE(_msg: var) @TypeOf(__OS_AVAILABILITY_MSG(macosx_app_extension, unavailable, _msg)) {
    return __OS_AVAILABILITY_MSG(macosx_app_extension, unavailable, _msg);
}
pub const RUSAGE_INFO_V4 = 4;
pub const __INTMAX_C_SUFFIX__ = L;
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const SIGSEGV = 11;
pub const FLECS__EEcsRateFilter = 15;
pub const __WATCHOS_5_2 = 50200;
pub const POLL_IN = 1;
pub const __TVOS_9_2 = 90200;
pub const __TVOS_12_1 = 120100;
pub const NSIG = __DARWIN_NSIG;
pub const INT16_MAX = 32767;
pub inline fn ecs_vector_addn(vector: var, T: var, elem_count: var) @TypeOf((if (@typeInfo(@TypeOf(_ecs_vector_addn(vector, ECS_VECTOR_T(T), elem_count))) == .Pointer) @ptrCast([*c]T, @alignCast(@alignOf([*c]T.Child), _ecs_vector_addn(vector, ECS_VECTOR_T(T), elem_count))) else if (@typeInfo(@TypeOf(_ecs_vector_addn(vector, ECS_VECTOR_T(T), elem_count))) == .Int and @typeInfo([*c]T) == .Pointer) @intToPtr([*c]T, _ecs_vector_addn(vector, ECS_VECTOR_T(T), elem_count)) else @as([*c]T, _ecs_vector_addn(vector, ECS_VECTOR_T(T), elem_count)))) {
    return (if (@typeInfo(@TypeOf(_ecs_vector_addn(vector, ECS_VECTOR_T(T), elem_count))) == .Pointer) @ptrCast([*c]T, @alignCast(@alignOf([*c]T.Child), _ecs_vector_addn(vector, ECS_VECTOR_T(T), elem_count))) else if (@typeInfo(@TypeOf(_ecs_vector_addn(vector, ECS_VECTOR_T(T), elem_count))) == .Int and @typeInfo([*c]T) == .Pointer) @intToPtr([*c]T, _ecs_vector_addn(vector, ECS_VECTOR_T(T), elem_count)) else @as([*c]T, _ecs_vector_addn(vector, ECS_VECTOR_T(T), elem_count)));
}
pub const __SCHAR_MAX__ = 127;
pub const __IOS_PROHIBITED = __OS_AVAILABILITY(ios, unavailable);
pub const SIGTRAP = 5;
pub const __UINT32_FMTx__ = "x";
pub const WINT_MIN = INT32_MIN;
pub const __UINT8_FMTx__ = "hhx";
pub const __disable_tail_calls = __attribute__(__disable_tail_calls__);
pub inline fn ecs_remove(world: var, entity: var, type_1: var) @TypeOf(ecs_remove_type(world, entity, ecs_type(type_1))) {
    return ecs_remove_type(world, entity, ecs_type(type_1));
}
pub const __UINT_LEAST64_FMTx__ = "llx";
pub const ILL_COPROC = 7;
pub const __IPHONE_5_1 = 50100;
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __AVAILABILITY_INTERNAL__IPHONE_NA__IPHONE_NA = __attribute__(availability(ios, unavailable));
pub const INT64_MIN = -INT64_MAX - 1;
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const FPE_FLTDIV = 1;
pub const __clang__ = 1;
pub const __DARWIN_NULL = (if (@typeInfo(?*c_void) == .Pointer) @intToPtr(?*c_void, 0) else @as(?*c_void, 0));
pub const FP_STATE_BYTES = 512;
pub const ECS_DESERIALIZE_COMPONENT_SIZE_CONFLICT = 39;
pub const __UINTPTR_FMTu__ = "lu";
pub const BADSIG = SIG_ERR;
pub const SA_SIGINFO = 0x0040;
pub inline fn ecs_os_realloc(ptr: var, size: var) @TypeOf(ecs_os_api.realloc(ptr, size)) {
    return ecs_os_api.realloc(ptr, size);
}
pub const __INT_FAST32_TYPE__ = c_int;
pub const __IPHONE_2_0 = 20000;
pub const UINTPTR_MAX = @as(c_ulong, 18446744073709551615);
pub const __UINT16_FMTx__ = "hx";
pub const BUS_OBJERR = 3;
pub const __IPHONE_12_0 = 120000;
pub const WAKEMON_GET_PARAMS = 0x04;
pub inline fn __DARWIN_NOCANCEL(sym: var) @TypeOf(__asm("_" ++ (__STRING(sym) ++ __DARWIN_SUF_NON_CANCELABLE))) {
    return __asm("_" ++ (__STRING(sym) ++ __DARWIN_SUF_NON_CANCELABLE));
}
pub const __WATCHOS_1_0 = 10000;
pub const __FLT_MIN_10_EXP__ = -37;
pub inline fn __printflike(fmtarg: var, firstvararg: var) @TypeOf(__attribute__(__format__(__printf__, fmtarg, firstvararg))) {
    return __attribute__(__format__(__printf__, fmtarg, firstvararg));
}
pub const __UINT_LEAST16_FMTX__ = "hX";
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_4(x: var) @TypeOf(x) {
    return x;
}
pub const SIGEMT = 7;
pub const __WATCHOS_5_0 = 50000;
pub const __GNUC_VA_LIST = 1;
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZEOF_POINTER__ = 8;
pub const __SIZE_FMTX__ = "lX";
pub const WAKEMON_SET_DEFAULTS = 0x08;
pub const SIGSYS = 12;
pub const ILL_ILLOPN = 4;
pub const __INT16_FMTd__ = "hd";
pub const __MAC_10_14_1 = 101401;
pub const EcsOnDemand = ECS_HI_COMPONENT_ID + 6;
pub const __ATOMIC_RELEASE = 3;
pub inline fn __DARWIN_EXTSN(sym: var) @TypeOf(__asm("_" ++ (__STRING(sym) ++ __DARWIN_SUF_EXTSN))) {
    return __asm("_" ++ (__STRING(sym) ++ __DARWIN_SUF_EXTSN));
}
pub const __UINT_FAST64_FMTX__ = "llX";
pub const WINT_MAX = INT32_MAX;
pub const __IPHONE_13_2 = 130200;
pub const INT_FAST16_MIN = INT16_MIN;
pub inline fn __printf0like(fmtarg: var, firstvararg: var) @TypeOf(__attribute__(__format__(__printf0__, fmtarg, firstvararg))) {
    return __attribute__(__format__(__printf0__, fmtarg, firstvararg));
}
pub const TRAP_BRKPT = 1;
pub const INT32_MIN = -INT32_MAX - 1;
pub const ECS_OR = (if (@typeInfo(ecs_entity_t) == .Pointer) @intToPtr(ecs_entity_t, 1 << 60) else @as(ecs_entity_t, 1 << 60));
pub const __TVOS_9_0 = 90000;
pub const PRIO_DARWIN_PROCESS = 4;
pub const __WINT_WIDTH__ = 32;
pub inline fn __API_DEPRECATED_MSG8(msg: var, x: var, y: var, z: var, t: var, b: var, m: var, d: var) @TypeOf(__API_DEPRECATED_MSG7(msg, x, y, z, t, b, m) ++ __API_D(msg, d)) {
    return __API_DEPRECATED_MSG7(msg, x, y, z, t, b, m) ++ __API_D(msg, d);
}
pub const __DARWIN_NSIG = 32;
pub const ECS_UNSUPPORTED = 35;
pub inline fn __API_DEPRECATED_BEGIN_REP7(rep: var, a: var, b: var, c: var, d: var, e: var, f: var) @TypeOf(__API_R_BEGIN(rep, a) ++ (__API_R_BEGIN(rep, b) ++ (__API_R_BEGIN(rep, c) ++ (__API_R_BEGIN(rep, d) ++ (__API_R_BEGIN(rep, e) ++ __API_R_BEGIN(rep, f)))))) {
    return __API_R_BEGIN(rep, a) ++ (__API_R_BEGIN(rep, b) ++ (__API_R_BEGIN(rep, c) ++ (__API_R_BEGIN(rep, d) ++ (__API_R_BEGIN(rep, e) ++ __API_R_BEGIN(rep, f)))));
}
pub const __FLT_MAX_10_EXP__ = 38;
pub const __GCC_ATOMIC_LONG_LOCK_FREE = 2;
pub inline fn __swift_unavailable_on(osx_msg: var, ios_msg: var) @TypeOf(__swift_unavailable(osx_msg)) {
    return __swift_unavailable(osx_msg);
}
pub const _DEBUG = 1;
pub const _I386_SIGNAL_H_ = 1;
pub const __UINTPTR_WIDTH__ = 64;
pub const ECS_UNKNOWN_COMPONENT_ID = 7;
pub const SI_MESGQ = 0x10005;
pub const INTMAX_MIN = -INTMAX_MAX - 1;
pub const __DARWIN_LITTLE_ENDIAN = 1234;
pub const SEGV_ACCERR = 2;
pub const ECS_THREAD_ERROR = 31;
pub const PTRDIFF_MIN = INTMAX_MIN;
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_4(x: var) @TypeOf(x) {
    return x;
}
pub const IOPOL_THROTTLE = 3;
pub const EcsOnSet = ECS_HI_COMPONENT_ID + 11;
pub const __MACH__ = 1;
pub const INT64_MAX = @as(c_longlong, 9223372036854775807);
pub const __MAC_10_11 = 101100;
pub const SV_SIGINFO = SA_SIGINFO;
pub const __GNUC_PATCHLEVEL__ = 1;
pub inline fn __IOS_EXTENSION_UNAVAILABLE(_msg: var) @TypeOf(__OS_AVAILABILITY_MSG(ios_app_extension, unavailable, _msg)) {
    return __OS_AVAILABILITY_MSG(ios_app_extension, unavailable, _msg);
}
pub const PRIO_DARWIN_BG = 0x1000;
pub const IOPOL_TYPE_VFS_ATIME_UPDATES = 2;
pub const ECS_DESERIALIZE_FORMAT_ERROR = 40;
pub inline fn ecs_os_mutex_unlock(mutex: var) @TypeOf(ecs_os_api.mutex_unlock(mutex)) {
    return ecs_os_api.mutex_unlock(mutex);
}
pub inline fn ecs_vector_set_min_size(vector: var, T: var, size: var) @TypeOf(_ecs_vector_set_min_size(vector, ECS_VECTOR_T(T), size)) {
    return _ecs_vector_set_min_size(vector, ECS_VECTOR_T(T), size);
}
pub const __dead2 = __attribute__(__noreturn__);
pub const __DARWIN_NO_LONG_LONG = 0;
pub const __INT64_FMTd__ = "lld";
pub const __unavailable = __attribute__(__unavailable__);
pub const POLL_OUT = 2;
pub const __UINT16_MAX__ = 65535;
pub const __ATOMIC_RELAXED = 0;
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10(x: var) @TypeOf(x) {
    return x;
}
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = 2;
pub const _RLIMIT_POSIX_FLAG = 0x1000;
pub const __MAC_10_0 = 1000;
pub const __IPHONE_10_3 = 100300;
pub inline fn __API_DEPRECATED_MSG7(msg: var, x: var, y: var, z: var, t: var, b: var, m: var) @TypeOf(__API_DEPRECATED_MSG6(msg, x, y, z, t, b) ++ __API_D(msg, m)) {
    return __API_DEPRECATED_MSG6(msg, x, y, z, t, b) ++ __API_D(msg, m);
}
pub const __INT_FAST16_TYPE__ = c_short;
pub const __MAC_10_13 = 101300;
pub const FOOTPRINT_INTERVAL_RESET = 0x1;
pub const __UINT64_C_SUFFIX__ = ULL;
pub inline fn __API_AVAILABLE_BEGIN4(a: var, b: var, c: var, d: var) @TypeOf(__API_A_BEGIN(a) ++ (__API_A_BEGIN(b) ++ (__API_A_BEGIN(c) ++ __API_A_BEGIN(d)))) {
    return __API_A_BEGIN(a) ++ (__API_A_BEGIN(b) ++ (__API_A_BEGIN(c) ++ __API_A_BEGIN(d)));
}
pub const FLECS__EEcsTimer = 14;
pub const __DBL_MAX__ = 1.7976931348623157e+308;
pub const __CHAR_BIT__ = 8;
pub const __DBL_DECIMAL_DIG__ = 17;
pub const CLOCK_UPTIME_RAW = _CLOCK_UPTIME_RAW;
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __MAC_10_5 = 1050;
pub const EcsPreUpdate = ECS_HI_COMPONENT_ID + 16;
pub const __TVOS_11_2 = 110200;
pub const __ORDER_BIG_ENDIAN__ = 4321;
pub const FP_RND_DOWN = 1;
pub const SV_RESETHAND = SA_RESETHAND;
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const EcsLastInternalComponentId = ecs_entity(EcsSystem);
pub const __TVOS_10_0 = 100000;
pub const __IPHONE_11_3 = 110300;
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = 2;
pub const FP_PREC_24B = 0;
pub inline fn ecs_os_ainc(value: var) @TypeOf(ecs_os_api.ainc(value)) {
    return ecs_os_api.ainc(value);
}
pub const __MAC_10_13_1 = 101301;
pub inline fn __API_AVAILABLE6(x: var, y: var, z: var, t: var, b: var, m: var) @TypeOf(__API_A(x) ++ (__API_A(y) ++ (__API_A(z) ++ (__API_A(t) ++ (__API_A(b) ++ __API_A(m)))))) {
    return __API_A(x) ++ (__API_A(y) ++ (__API_A(z) ++ (__API_A(t) ++ (__API_A(b) ++ __API_A(m)))));
}
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const w_retcode = w_T.w_Retcode;
pub const __ENVIRONMENT_MAC_OS_X_VERSION_MIN_REQUIRED__ = 101500;
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = 2;
pub const __INTMAX_MAX__ = @as(c_long, 9223372036854775807);
pub inline fn ecs_vector_add(vector: var, T: var) @TypeOf((if (@typeInfo(@TypeOf(_ecs_vector_add(vector, ECS_VECTOR_T(T)))) == .Pointer) @ptrCast([*c]T, @alignCast(@alignOf([*c]T.Child), _ecs_vector_add(vector, ECS_VECTOR_T(T)))) else if (@typeInfo(@TypeOf(_ecs_vector_add(vector, ECS_VECTOR_T(T)))) == .Int and @typeInfo([*c]T) == .Pointer) @intToPtr([*c]T, _ecs_vector_add(vector, ECS_VECTOR_T(T))) else @as([*c]T, _ecs_vector_add(vector, ECS_VECTOR_T(T))))) {
    return (if (@typeInfo(@TypeOf(_ecs_vector_add(vector, ECS_VECTOR_T(T)))) == .Pointer) @ptrCast([*c]T, @alignCast(@alignOf([*c]T.Child), _ecs_vector_add(vector, ECS_VECTOR_T(T)))) else if (@typeInfo(@TypeOf(_ecs_vector_add(vector, ECS_VECTOR_T(T)))) == .Int and @typeInfo([*c]T) == .Pointer) @intToPtr([*c]T, _ecs_vector_add(vector, ECS_VECTOR_T(T))) else @as([*c]T, _ecs_vector_add(vector, ECS_VECTOR_T(T))));
}
pub const WAKEMON_MAKE_FATAL = 0x10;
pub const @"true" = !@"false";
pub inline fn ecs_vector_first(vector: var, T: var) @TypeOf((if (@typeInfo(@TypeOf(_ecs_vector_first(vector, ECS_VECTOR_T(T)))) == .Pointer) @ptrCast([*c]T, @alignCast(@alignOf([*c]T.Child), _ecs_vector_first(vector, ECS_VECTOR_T(T)))) else if (@typeInfo(@TypeOf(_ecs_vector_first(vector, ECS_VECTOR_T(T)))) == .Int and @typeInfo([*c]T) == .Pointer) @intToPtr([*c]T, _ecs_vector_first(vector, ECS_VECTOR_T(T))) else @as([*c]T, _ecs_vector_first(vector, ECS_VECTOR_T(T))))) {
    return (if (@typeInfo(@TypeOf(_ecs_vector_first(vector, ECS_VECTOR_T(T)))) == .Pointer) @ptrCast([*c]T, @alignCast(@alignOf([*c]T.Child), _ecs_vector_first(vector, ECS_VECTOR_T(T)))) else if (@typeInfo(@TypeOf(_ecs_vector_first(vector, ECS_VECTOR_T(T)))) == .Int and @typeInfo([*c]T) == .Pointer) @intToPtr([*c]T, _ecs_vector_first(vector, ECS_VECTOR_T(T))) else @as([*c]T, _ecs_vector_first(vector, ECS_VECTOR_T(T))));
}
pub const __DBL_MIN__ = 2.2250738585072014e-308;
pub const __PRAGMA_REDEFINE_EXTNAME = 1;
pub const ECS_COLUMN_ACCESS_VIOLATION = 37;
pub const SIGQUIT = 3;
pub const __WATCHOS_3_2 = 30200;
pub const __IPHONE_6_0 = 60000;
pub inline fn __API_AVAILABLE_BEGIN5(a: var, b: var, c: var, d: var, e: var) @TypeOf(__API_A_BEGIN(a) ++ (__API_A_BEGIN(b) ++ (__API_A_BEGIN(c) ++ (__API_A_BEGIN(d) ++ __API_A_BEGIN(e))))) {
    return __API_A_BEGIN(a) ++ (__API_A_BEGIN(b) ++ (__API_A_BEGIN(c) ++ (__API_A_BEGIN(d) ++ __API_A_BEGIN(e))));
}
pub inline fn ecs_os_mutex_free(mutex: var) @TypeOf(ecs_os_api.mutex_free(mutex)) {
    return ecs_os_api.mutex_free(mutex);
}
pub inline fn ECS_MAX(a: var, b: var) @TypeOf(if (a > b) a else b) {
    return if (a > b) a else b;
}
pub const ECS_TYPE_CONSTRAINT_VIOLATION = 43;
pub const __RDRND__ = 1;
pub const ECS_3D = 3;
pub const __seg_fs = __attribute__(address_space(257));
pub const __TVOS_10_1 = 100100;
pub const __XSAVEOPT__ = 1;
pub const ru_last = ru_nivcsw;
pub inline fn WCOREDUMP(x: var) @TypeOf(_W_INT(x) & WCOREFLAG) {
    return _W_INT(x) & WCOREFLAG;
}
pub const __API_AVAILABLE_END = _Pragma("clang attribute pop");
pub inline fn __DARWIN_OSSwapConstInt32(x: var) @TypeOf((if (@typeInfo(@TypeOf((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0xff000000) >> 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x00ff0000) >> 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x0000ff00) << 8) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x000000ff) << 24))))) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0xff000000) >> 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x00ff0000) >> 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x0000ff00) << 8) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x000000ff) << 24))))) else if (@typeInfo(@TypeOf((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0xff000000) >> 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x00ff0000) >> 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x0000ff00) << 8) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x000000ff) << 24))))) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0xff000000) >> 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x00ff0000) >> 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x0000ff00) << 8) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x000000ff) << 24)))) else @as(__uint32_t, (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0xff000000) >> 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x00ff0000) >> 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x0000ff00) << 8) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x000000ff) << 24)))))) {
    return (if (@typeInfo(@TypeOf((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0xff000000) >> 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x00ff0000) >> 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x0000ff00) << 8) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x000000ff) << 24))))) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0xff000000) >> 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x00ff0000) >> 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x0000ff00) << 8) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x000000ff) << 24))))) else if (@typeInfo(@TypeOf((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0xff000000) >> 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x00ff0000) >> 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x0000ff00) << 8) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x000000ff) << 24))))) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0xff000000) >> 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x00ff0000) >> 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x0000ff00) << 8) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x000000ff) << 24)))) else @as(__uint32_t, (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0xff000000) >> 24) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x00ff0000) >> 8) | ((((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x0000ff00) << 8) | (((if (@typeInfo(@TypeOf(x)) == .Pointer) @ptrCast(__uint32_t, @alignCast(@alignOf(__uint32_t.Child), x)) else if (@typeInfo(@TypeOf(x)) == .Int and @typeInfo(__uint32_t) == .Pointer) @intToPtr(__uint32_t, x) else @as(__uint32_t, x)) & 0x000000ff) << 24)))));
}
pub const ECS_REFLECTION = 1;
pub const __UINTMAX_FMTX__ = "lX";
pub inline fn ecs_os_cond_wait(cond: var, mutex: var) @TypeOf(ecs_os_api.cond_wait(cond, mutex)) {
    return ecs_os_api.cond_wait(cond, mutex);
}
pub const SIGUSR1 = 30;
pub const __WATCHOS_3_1_1 = 30101;
pub const SIGALRM = 14;
pub const __AVX2__ = 1;
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __XNU_PRIVATE_EXTERN = __attribute__(visibility("hidden"));
pub const __TVOS_13_2 = 130200;
pub inline fn __API_DEPRECATED_MSG2(msg: var, x: var) @TypeOf(__API_D(msg, x)) {
    return __API_D(msg, x);
}
pub inline fn __API_DEPRECATED_BEGIN_REP3(rep: var, a: var, b: var) @TypeOf(__API_R_BEGIN(rep, a) ++ __API_R_BEGIN(rep, b)) {
    return __API_R_BEGIN(rep, a) ++ __API_R_BEGIN(rep, b);
}
pub const INTPTR_MIN = -INTPTR_MAX - 1;
pub const UINT64_MAX = @as(c_ulonglong, 18446744073709551615);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = 1;
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13(x: var) @TypeOf(x) {
    return x;
}
pub const __SIG_ATOMIC_WIDTH__ = 32;
pub const __OPTIMIZE__ = 1;
pub const __DARWIN_VERS_1050 = 1;
pub const __PTHREAD_RWLOCK_SIZE__ = 192;
pub inline fn __API_UNAVAILABLE_BEGIN3(a: var, b: var, c: var) @TypeOf(__API_U_BEGIN(a) ++ (__API_U_BEGIN(b) ++ __API_U_BEGIN(c))) {
    return __API_U_BEGIN(a) ++ (__API_U_BEGIN(b) ++ __API_U_BEGIN(c));
}
pub const __DARWIN_BYTE_ORDER = __DARWIN_LITTLE_ENDIAN;
pub const BUS_ADRERR = 2;
pub const __MAC_10_8 = 1080;
pub inline fn htons(x: var) @TypeOf(__DARWIN_OSSwapInt16(x)) {
    return __DARWIN_OSSwapInt16(x);
}
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub inline fn ecs_os_cond_broadcast(cond: var) @TypeOf(ecs_os_api.cond_broadcast(cond)) {
    return ecs_os_api.cond_broadcast(cond);
}
pub inline fn ecs_os_sleep(sec: var, nanosec: var) @TypeOf(ecs_os_api.sleep(sec, nanosec)) {
    return ecs_os_api.sleep(sec, nanosec);
}
pub const EcsPreFrame = ECS_HI_COMPONENT_ID + 13;
pub const IOPOL_VFS_STATFS_FORCE_NO_DATA_VOLUME = 1;
pub inline fn _W_INT(w: var) @TypeOf([*c]c_int & w.*) {
    return [*c]c_int & w.*;
}
pub const __IPHONE_12_1 = 120100;
pub const SIGEV_THREAD = 3;
pub inline fn ecs_os_cond_signal(cond: var) @TypeOf(ecs_os_api.cond_signal(cond)) {
    return ecs_os_api.cond_signal(cond);
}
pub const _QUAD_LOWWORD = 0;
pub inline fn __strftimelike(fmtarg: var) @TypeOf(__attribute__(__format__(__strftime__, fmtarg, 0))) {
    return __attribute__(__format__(__strftime__, fmtarg, 0));
}
pub inline fn WIFCONTINUED(x: var) @TypeOf(_WSTATUS(x) == @boolToInt((_WSTOPPED != 0) and (WSTOPSIG(x) == 0x13))) {
    return _WSTATUS(x) == @boolToInt((_WSTOPPED != 0) and (WSTOPSIG(x) == 0x13));
}
pub const __SSE2_MATH__ = 1;
pub const CLOCK_PROCESS_CPUTIME_ID = _CLOCK_PROCESS_CPUTIME_ID;
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_4(x: var) @TypeOf(x) {
    return x;
}
pub const __SGX__ = 1;
pub inline fn ecs_vector_grow(vector: var, T: var, size: var) @TypeOf(_ecs_vector_grow(vector, ECS_VECTOR_T(T), size)) {
    return _ecs_vector_grow(vector, ECS_VECTOR_T(T), size);
}
pub const ECS_STRBUF_ELEMENT_SIZE = 511;
pub inline fn ecs_vector_reclaim(vector: var, T: var) @TypeOf(_ecs_vector_reclaim(vector, ECS_VECTOR_T(T))) {
    return _ecs_vector_reclaim(vector, ECS_VECTOR_T(T));
}
pub const __POPCNT__ = 1;
pub const __POINTER_WIDTH__ = 64;
pub const __ATOMIC_ACQ_REL = 4;
pub const __DARWIN_ONLY_UNIX_CONFORMANCE = 1;
pub const __UINT_LEAST32_FMTx__ = "x";
pub const FP_PREC_53B = 2;
pub const ECS_INVALID_PARAMETER = 2;
pub const SA_ONSTACK = 0x0001;
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_0(x: var) @TypeOf(x) {
    return x;
}
pub const __STDC_HOSTED__ = 1;
pub inline fn __API_AVAILABLE7(x: var, y: var, z: var, t: var, b: var, m: var, d: var) @TypeOf(__API_A(x) ++ (__API_A(y) ++ (__API_A(z) ++ (__API_A(t) ++ (__API_A(b) ++ (__API_A(m) ++ __API_A(d))))))) {
    return __API_A(x) ++ (__API_A(y) ++ (__API_A(z) ++ (__API_A(t) ++ (__API_A(b) ++ (__API_A(m) ++ __API_A(d))))));
}
pub const __PIC__ = 2;
pub inline fn __DARWIN_INODE64(sym: var) @TypeOf(__asm("_" ++ (__STRING(sym) ++ __DARWIN_SUF_64_BIT_INO_T))) {
    return __asm("_" ++ (__STRING(sym) ++ __DARWIN_SUF_64_BIT_INO_T));
}
pub const __FXSR__ = 1;
pub inline fn __API_AVAILABLE_BEGIN2(a: var, b: var) @TypeOf(__API_A_BEGIN(a) ++ __API_A_BEGIN(b)) {
    return __API_A_BEGIN(a) ++ __API_A_BEGIN(b);
}
pub const ILL_ILLADR = 5;
pub const EcsOnRemove = ECS_HI_COMPONENT_ID + 10;
pub inline fn __alloca(size: var) @TypeOf(__builtin_alloca(size)) {
    return __builtin_alloca(size);
}
pub const FP_RND_NEAR = 0;
pub const ru_first = ru_ixrss;
pub const __API_UNAVAILABLE_PLATFORM_macosx = blk: {
    _ = macosx;
    break :blk unavailable;
};
pub const CLOCK_THREAD_CPUTIME_ID = _CLOCK_THREAD_CPUTIME_ID;
pub const ECS_INVALID_COMPONENT_ID = 3;
pub const UINT_FAST16_MAX = UINT16_MAX;
pub const SIGINFO = 29;
pub inline fn __PROJECT_VERSION(s: var) @TypeOf(__IDSTRING(project_version, s)) {
    return __IDSTRING(project_version, s);
}
pub const __UINT_LEAST64_FMTo__ = "llo";
pub const MINSIGSTKSZ = 32768;
pub inline fn __API_DEPRECATED_BEGIN_MSG3(msg: var, a: var, b: var) @TypeOf(__API_D_BEGIN(msg, a) ++ __API_D_BEGIN(msg, b)) {
    return __API_D_BEGIN(msg, a) ++ __API_D_BEGIN(msg, b);
}
pub const __ENABLE_LEGACY_MAC_AVAILABILITY = 1;
pub const RLIM_SAVED_MAX = RLIM_INFINITY;
pub const __PTRDIFF_WIDTH__ = 64;
pub inline fn WIFSTOPPED(x: var) @TypeOf(_WSTATUS(x) == @boolToInt((_WSTOPPED != 0) and (WSTOPSIG(x) != 0x13))) {
    return _WSTATUS(x) == @boolToInt((_WSTOPPED != 0) and (WSTOPSIG(x) != 0x13));
}
pub const __SIZE_WIDTH__ = 64;
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const sv_onstack = sv_flags;
pub inline fn ecs_ringbuf_get(buffer: var, T: var, index: var) @TypeOf((if (@typeInfo(@TypeOf(_ecs_ringbuf_get(buffer, ECS_VECTOR_T(T), index))) == .Pointer) @ptrCast([*c]T, @alignCast(@alignOf([*c]T.Child), _ecs_ringbuf_get(buffer, ECS_VECTOR_T(T), index))) else if (@typeInfo(@TypeOf(_ecs_ringbuf_get(buffer, ECS_VECTOR_T(T), index))) == .Int and @typeInfo([*c]T) == .Pointer) @intToPtr([*c]T, _ecs_ringbuf_get(buffer, ECS_VECTOR_T(T), index)) else @as([*c]T, _ecs_ringbuf_get(buffer, ECS_VECTOR_T(T), index)))) {
    return (if (@typeInfo(@TypeOf(_ecs_ringbuf_get(buffer, ECS_VECTOR_T(T), index))) == .Pointer) @ptrCast([*c]T, @alignCast(@alignOf([*c]T.Child), _ecs_ringbuf_get(buffer, ECS_VECTOR_T(T), index))) else if (@typeInfo(@TypeOf(_ecs_ringbuf_get(buffer, ECS_VECTOR_T(T), index))) == .Int and @typeInfo([*c]T) == .Pointer) @intToPtr([*c]T, _ecs_ringbuf_get(buffer, ECS_VECTOR_T(T), index)) else @as([*c]T, _ecs_ringbuf_get(buffer, ECS_VECTOR_T(T), index)));
}
pub const __UINTMAX_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __DARWIN_WEOF = __darwin_wint_t - 1;
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __SIZEOF_PTRDIFF_T__ = 8;
pub inline fn ecs_vector_copy_t(src: var, size: var, alignment: var) @TypeOf(_ecs_vector_copy(src, ECS_VECTOR_U(size, alignment))) {
    return _ecs_vector_copy(src, ECS_VECTOR_U(size, alignment));
}
pub const CLOCKS_PER_SEC = 1000000;
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const CLD_NOOP = 0;
pub const __WATCHOS_3_0 = 30000;
pub const __DBL_MANT_DIG__ = 53;
pub inline fn ecs_vector_addn_t(vector: var, size: var, alignment: var, elem_count: var) @TypeOf(_ecs_vector_addn(vector, ECS_VECTOR_U(size, alignment), elem_count)) {
    return _ecs_vector_addn(vector, ECS_VECTOR_U(size, alignment), elem_count);
}
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const __INT_LEAST64_FMTi__ = "lli";
pub const __weak = __attribute__(objc_gc(weak));
pub const __UINT32_FMTX__ = "X";
pub const RUSAGE_INFO_V0 = 0;
pub const __SHRT_MAX__ = 32767;
pub const __ATOMIC_CONSUME = 1;
pub const __MAC_10_15_1 = 101501;
pub const __API_UNAVAILABLE_PLATFORM_watchos = blk: {
    _ = watchos;
    break :blk unavailable;
};
pub const ECS_UNRESOLVED_REFERENCE = 30;
pub const __UINT_FAST16_FMTX__ = "hX";
pub inline fn ecs_vector_memory_t(vector: var, size: var, alignment: var, allocd: var, used: var) @TypeOf(_ecs_vector_memory(vector, ECS_VECTOR_U(size, alignment), allocd, used)) {
    return _ecs_vector_memory(vector, ECS_VECTOR_U(size, alignment), allocd, used);
}
pub const ECS_INVALID_WHILE_ITERATING = 25;
pub const __INT_FAST16_FMTi__ = "hi";
pub const __INT8_MAX__ = 127;
pub const __FLT_DECIMAL_DIG__ = 9;
pub inline fn ecs_count(world: var, type_1: var) @TypeOf(ecs_count_type(world, ecs_type(type_1))) {
    return ecs_count_type(world, ecs_type(type_1));
}
pub const IOPOL_DEFAULT = 0;
pub const __UINT8_FMTo__ = "hho";
pub inline fn __API_RANGE_STRINGIFY(x: var) @TypeOf(__API_RANGE_STRINGIFY2(x)) {
    return __API_RANGE_STRINGIFY2(x);
}
pub const __FLT_HAS_DENORM__ = 1;
pub const IOPOL_UTILITY = 4;
pub inline fn ecs_vector_new_t(size: var, alignment: var, elem_count: var) @TypeOf(_ecs_vector_new(ECS_VECTOR_U(size, alignment), elem_count)) {
    return _ecs_vector_new(ECS_VECTOR_U(size, alignment), elem_count);
}
pub const __TVOS_UNAVAILABLE = __OS_AVAILABILITY(tvos, unavailable);
pub const FLECS__T0 = 0;
pub const __UINT32_FMTo__ = "o";
pub const __UINT_FAST64_FMTo__ = "llo";
pub const USER_ADDR_NULL = (if (@typeInfo(user_addr_t) == .Pointer) @intToPtr(user_addr_t, 0) else @as(user_addr_t, 0));
pub const __GXX_ABI_VERSION = 1002;
pub const IOPOL_ATIME_UPDATES_OFF = 1;
pub const INTMAX_MAX = INTMAX_C(9223372036854775807);
pub const EcsFlecs = ECS_HI_COMPONENT_ID + 23;
pub const __IPHONE_12_2 = 120200;
pub const INT_LEAST16_MIN = INT16_MIN;
pub inline fn ecs_get_path(world: var, parent: var, child: var) @TypeOf(ecs_get_path_w_sep(world, parent, child, 0, ".", NULL)) {
    return ecs_get_path_w_sep(world, parent, child, 0, ".", NULL);
}
pub const SIGWINCH = 28;
pub const SIGPIPE = 13;
pub const RAND_MAX = 0x7fffffff;
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = 3;
pub const __INT8_FMTi__ = "hhi";
pub inline fn __OS_EXTENSION_UNAVAILABLE(_msg: var) @TypeOf(__OSX_EXTENSION_UNAVAILABLE(_msg) ++ __IOS_EXTENSION_UNAVAILABLE(_msg)) {
    return __OSX_EXTENSION_UNAVAILABLE(_msg) ++ __IOS_EXTENSION_UNAVAILABLE(_msg);
}
pub const FPE_INTDIV = 7;
pub inline fn htonl(x: var) @TypeOf(__DARWIN_OSSwapInt32(x)) {
    return __DARWIN_OSSwapInt32(x);
}
pub const __unreachable_ok_pop = _Pragma("clang diagnostic pop");
pub const ECS_INVALID_EXPRESSION = 4;
pub const IOPOL_SCOPE_THREAD = 1;
pub const __MAC_10_13_2 = 101302;
pub const __IPHONE_9_1 = 90100;
pub const RLIMIT_THREAD_CPULIMITS = 0x3;
pub const CLOCK_REALTIME = _CLOCK_REALTIME;
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = 1;
pub const ECS_ALREADY_DEFINED = 14;
pub const __clang_major__ = 10;
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = 4;
pub inline fn __COPYRIGHT(s: var) @TypeOf(__IDSTRING(copyright, s)) {
    return __IDSTRING(copyright, s);
}
pub const __INT16_MAX__ = 32767;
pub const BYTE_ORDER = __DARWIN_BYTE_ORDER;
pub const __SWIFT_UNAVAILABLE = __OS_AVAILABILITY(swift, unavailable);
pub const ECS_MISSING_SYSTEM_CONTEXT = 10;
pub inline fn __API_UNAVAILABLE_PLATFORM_uikitformac(x: var) @TypeOf(unavailable) {
    return blk: {
        _ = uikitformac;
        break :blk unavailable;
    };
}
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = 2;
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_2(x: var) @TypeOf(x) {
    return x;
}
pub const __MAC_10_3 = 1030;
pub const EXIT_FAILURE = 1;
pub const __AVAILABILITY_INTERNAL__IPHONE_NA_DEP__IPHONE_NA = __attribute__(availability(ios, unavailable));
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_1(x: var) @TypeOf(x) {
    return x;
}
pub const __UINT16_FMTo__ = "ho";
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_2(x: var) @TypeOf(x) {
    return x;
}
pub const __PTHREAD_COND_SIZE__ = 40;
pub inline fn ecs_vector_set_min_count(vector: var, T: var, size: var) @TypeOf(_ecs_vector_set_min_count(vector, ECS_VECTOR_T(T), size)) {
    return _ecs_vector_set_min_count(vector, ECS_VECTOR_T(T), size);
}
pub const __IPHONE_3_2 = 30200;
pub const __CLOCK_AVAILABILITY = __OSX_AVAILABLE(10.12) ++ (__IOS_AVAILABLE(10.0) ++ (__TVOS_AVAILABLE(10.0) ++ __WATCHOS_AVAILABLE(3.0)));
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST64_FMTx__ = "llx";
pub const __pure2 = __attribute__(__const__);
pub const ILL_NOOP = 0;
pub inline fn ecs_os_dlopen(libname: var) @TypeOf(ecs_os_api.dlopen(libname)) {
    return ecs_os_api.dlopen(libname);
}
pub const INTPTR_MAX = @as(c_long, 9223372036854775807);
pub const __XSAVES__ = 1;
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15(x: var) @TypeOf(x) {
    return x;
}
pub const __UINT_LEAST8_MAX__ = 255;
pub const __MAC_10_10 = 101000;
pub inline fn __API_UNAVAILABLE_BEGIN1(a: var) @TypeOf(__API_U_BEGIN(a)) {
    return __API_U_BEGIN(a);
}
pub inline fn __API_UNAVAILABLE_BEGIN5(a: var, b: var, c: var, d: var, e: var) @TypeOf(__API_U_BEGIN(a) ++ (__API_U_BEGIN(b) ++ (__API_U_BEGIN(c) ++ (__API_U_BEGIN(d) ++ __API_U_BEGIN(e))))) {
    return __API_U_BEGIN(a) ++ (__API_U_BEGIN(b) ++ (__API_U_BEGIN(c) ++ (__API_U_BEGIN(d) ++ __API_U_BEGIN(e))));
}
pub inline fn __API_DEPRECATED_BEGIN_MSG6(msg: var, a: var, b: var, c: var, d: var, e: var) @TypeOf(__API_D_BEGIN(msg, a) ++ (__API_D_BEGIN(msg, b) ++ (__API_D_BEGIN(msg, c) ++ (__API_D_BEGIN(msg, d) ++ __API_D_BEGIN(msg, e))))) {
    return __API_D_BEGIN(msg, a) ++ (__API_D_BEGIN(msg, b) ++ (__API_D_BEGIN(msg, c) ++ (__API_D_BEGIN(msg, d) ++ __API_D_BEGIN(msg, e))));
}
pub const UINT16_MAX = 65535;
pub const FLECS__EEcsName = 6;
pub const RLIMIT_DATA = 2;
pub const __IPHONE_10_2 = 100200;
pub const __MAC_10_12_1 = 101201;
pub const SIGILL = 4;
pub inline fn __API_DEPRECATED_REP3(rep: var, x: var, y: var) @TypeOf(__API_R(rep, x) ++ __API_R(rep, y)) {
    return __API_R(rep, x) ++ __API_R(rep, y);
}
pub inline fn ecs_ringbuf_new(T: var, elem_count: var) @TypeOf(_ecs_ringbuf_new(ECS_VECTOR_T(T), elem_count)) {
    return _ecs_ringbuf_new(ECS_VECTOR_T(T), elem_count);
}
pub const INT_FAST64_MIN = INT64_MIN;
pub const __unreachable_ok_push = _Pragma("clang diagnostic push") ++ _Pragma("clang diagnostic ignored \"-Wunreachable-code\"");
pub const __WORDSIZE = 64;
pub const SS_DISABLE = 0x0004;
pub const __UINT_LEAST16_MAX__ = 65535;
pub const FPE_FLTOVF = 2;
pub const __CONSTANT_CFSTRINGS__ = 1;
pub const IOPOL_NORMAL = IOPOL_IMPORTANT;
pub const EcsSingleton = (if (@typeInfo(@TypeOf(ECS_ENTITY_MASK)) == .Pointer) @ptrCast(ecs_entity_t, @alignCast(@alignOf(ecs_entity_t.Child), ECS_ENTITY_MASK)) else if (@typeInfo(@TypeOf(ECS_ENTITY_MASK)) == .Int and @typeInfo(ecs_entity_t) == .Pointer) @intToPtr(ecs_entity_t, ECS_ENTITY_MASK) else @as(ecs_entity_t, ECS_ENTITY_MASK)) - 1;
pub const __llvm__ = 1;
pub inline fn __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION_DEP__IPHONE_COMPAT_VERSION_MSG(_msg: var) @TypeOf(__attribute__(availability(ios, unavailable))) {
    return __attribute__(availability(ios, unavailable));
}
pub const WEXITED = 0x00000004;
pub const ECS_INVALID_COMPONENT_SIZE = 15;
pub inline fn __API_DEPRECATED_BEGIN_REP4(rep: var, a: var, b: var, c: var) @TypeOf(__API_R_BEGIN(rep, a) ++ (__API_R_BEGIN(rep, b) ++ __API_R_BEGIN(rep, c))) {
    return __API_R_BEGIN(rep, a) ++ (__API_R_BEGIN(rep, b) ++ __API_R_BEGIN(rep, c));
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_5(x: var) @TypeOf(x) {
    return x;
}
pub const __DBL_MAX_EXP__ = 1024;
pub inline fn __scanflike(fmtarg: var, firstvararg: var) @TypeOf(__attribute__(__format__(__scanf__, fmtarg, firstvararg))) {
    return __attribute__(__format__(__scanf__, fmtarg, firstvararg));
}
pub inline fn __API_UNAVAILABLE_BEGIN6(a: var, b: var, c: var, d: var, e: var, f: var) @TypeOf(__API_U_BEGIN(a) ++ (__API_U_BEGIN(b) ++ (__API_U_BEGIN(c) ++ (__API_U_BEGIN(d) ++ (__API_U_BEGIN(e) ++ __API_U_BEGIN(f)))))) {
    return __API_U_BEGIN(a) ++ (__API_U_BEGIN(b) ++ (__API_U_BEGIN(c) ++ (__API_U_BEGIN(d) ++ (__API_U_BEGIN(e) ++ __API_U_BEGIN(f)))));
}
pub const ECS_CHILDOF = (if (@typeInfo(ecs_entity_t) == .Pointer) @intToPtr(ecs_entity_t, 1 << 62) else @as(ecs_entity_t, 1 << 62));
pub const SV_NODEFER = SA_NODEFER;
pub const ECS_NOT_A_COMPONENT = 11;
pub const __GCC_ASM_FLAG_OUTPUTS__ = 1;
pub const __DARWIN_UNIX03 = 1;
pub const ECS_INVALID_WHILE_MERGING = 24;
pub const EcsModule = ECS_HI_COMPONENT_ID + 0;
pub const __PTRDIFF_MAX__ = @as(c_long, 9223372036854775807);
pub const EcsOnValidate = ECS_HI_COMPONENT_ID + 18;
pub const __ORDER_LITTLE_ENDIAN__ = 1234;
pub const CLOCK_MONOTONIC_RAW = _CLOCK_MONOTONIC_RAW;
pub inline fn ecs_vector_last(vector: var, T: var) @TypeOf(_ecs_vector_last(vector, ECS_VECTOR_T(T))) {
    return _ecs_vector_last(vector, ECS_VECTOR_T(T));
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11(x: var) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_1(x: var) @TypeOf(x) {
    return x;
}
pub const w_coredump = w_T.w_Coredump;
pub const __LDBL_MAX_EXP__ = 16384;
pub const __UINT_FAST32_MAX__ = @as(c_uint, 4294967295);
pub const w_stopsig = w_S.w_Stopsig;
pub const __MAC_10_15 = 101500;
pub const __DARWIN_WCHAR_MIN = -0x7fffffff - 1;
pub const __IPHONE_11_1 = 110100;
pub const WCONTINUED = 0x00000010;
pub const __WINT_MAX__ = 2147483647;
pub const __unused = __attribute__(__unused__);
pub const __IPHONE_2_2 = 20200;
pub inline fn ecs_vector_new(T: var, elem_count: var) @TypeOf(_ecs_vector_new(ECS_VECTOR_T(T), elem_count)) {
    return _ecs_vector_new(ECS_VECTOR_T(T), elem_count);
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_1(x: var) @TypeOf(x) {
    return x;
}
pub const __PTHREAD_ATTR_SIZE__ = 56;
pub const __IPHONE_10_0 = 100000;
pub const IOPOL_VFS_STATFS_NO_DATA_VOLUME_DEFAULT = 0;
pub const __INTPTR_WIDTH__ = 64;
pub inline fn __deprecated_enum_msg(_msg: var) @TypeOf(__deprecated_msg(_msg)) {
    return __deprecated_msg(_msg);
}
pub const __XSAVE__ = 1;
pub const RUSAGE_INFO_V1 = 1;
pub const __WATCHOS_PROHIBITED = __OS_AVAILABILITY(watchos, unavailable);
pub const __IPHONE_9_3 = 90300;
pub const _FORTIFY_SOURCE = 2;
pub const SI_TIMER = 0x10003;
pub const __AVAILABILITY_INTERNAL__IPHONE_NA = __attribute__(availability(ios, unavailable));
pub const PRIO_MIN = -20;
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const SA_NOCLDWAIT = 0x0020;
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __RDSEED__ = 1;
pub const SIGCONT = 19;
pub inline fn UINT16_C(v: var) @TypeOf(v) {
    return v;
}
pub const PTRDIFF_MAX = INTMAX_MAX;
pub const ECS_AND = (if (@typeInfo(ecs_entity_t) == .Pointer) @intToPtr(ecs_entity_t, 1 << 61) else @as(ecs_entity_t, 1 << 61));
pub const __FLT_HAS_QUIET_NAN__ = 1;
pub const __WATCHOS_6_0 = 60000;
pub const __corei7__ = 1;
pub const __WATCHOS_6_1 = 60100;
pub const RLIMIT_CPU = 0;
pub inline fn ecs_has(world: var, entity: var, type_1: var) @TypeOf(ecs_has_type(world, entity, ecs_type(type_1))) {
    return ecs_has_type(world, entity, ecs_type(type_1));
}
pub const FLECS__EEcsSignatureExpr = 8;
pub const __BIGGEST_ALIGNMENT__ = 16;
pub const IOPOL_TYPE_VFS_STATFS_NO_DATA_VOLUME = 4;
pub const INT_LEAST32_MIN = INT32_MIN;
pub const __AVAILABILITY_INTERNAL_WEAK_IMPORT = __attribute__(weak_import);
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14(x: var) @TypeOf(x) {
    return x;
}
pub const __DARWIN_64_BIT_INO_T = 1;
pub const __XSAVEC__ = 1;
pub inline fn __API_AVAILABLE_BEGIN7(a: var, b: var, c: var, d: var, e: var, f: var, g: var) @TypeOf(__API_A_BEGIN(a) ++ (__API_A_BEGIN(b) ++ (__API_A_BEGIN(c) ++ (__API_A_BEGIN(d) ++ (__API_A_BEGIN(e) ++ (__API_A_BEGIN(f) ++ __API_A_BEGIN(g))))))) {
    return __API_A_BEGIN(a) ++ (__API_A_BEGIN(b) ++ (__API_A_BEGIN(c) ++ (__API_A_BEGIN(d) ++ (__API_A_BEGIN(e) ++ (__API_A_BEGIN(f) ++ __API_A_BEGIN(g))))));
}
pub const INT8_MIN = -128;
pub const __WATCHOS_5_1 = 50100;
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __LDBL_MANT_DIG__ = 64;
pub inline fn __DARWIN_1050ALIAS(sym: var) @TypeOf(__asm("_" ++ (__STRING(sym) ++ (__DARWIN_SUF_1050 ++ __DARWIN_SUF_UNIX03)))) {
    return __asm("_" ++ (__STRING(sym) ++ (__DARWIN_SUF_1050 ++ __DARWIN_SUF_UNIX03)));
}
pub const ECS_COLUMN_IS_SHARED = 21;
pub const ECS_MODULE_UNDEFINED = 18;
pub const UINT_LEAST32_MAX = UINT32_MAX;
pub const __UINT_FAST8_MAX__ = 255;
pub const __SIZEOF_SIZE_T__ = 8;
pub const __BMI2__ = 1;
pub const __STDC_VERSION__ = @as(c_long, 201112);
pub const __IPHONE_8_0 = 80000;
pub const __TVOS_9_1 = 90100;
pub inline fn __offsetof(type_1: var, field: var) @TypeOf(__builtin_offsetof(type_1, field)) {
    return __builtin_offsetof(type_1, field);
}
pub const __TVOS_11_4 = 110400;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = 1;
pub const __F16C__ = 1;
pub const __AVAILABILITY_INTERNAL_UNAVAILABLE = __attribute__(unavailable);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = 1;
pub const SV_NOCLDSTOP = SA_NOCLDSTOP;
pub const __SIZEOF_INT__ = 4;
pub const OBJC_NEW_PROPERTIES = 1;
pub const NULL = __DARWIN_NULL;
pub const ECS_INVALID_SIGNATURE = 6;
pub inline fn __API_UNAVAILABLE2(x: var, y: var) @TypeOf(__API_U(x) ++ __API_U(y)) {
    return __API_U(x) ++ __API_U(y);
}
pub inline fn va_end(ap: var) @TypeOf(__builtin_va_end(ap)) {
    return __builtin_va_end(ap);
}
pub const __UINT32_C_SUFFIX__ = U;
pub inline fn __API_DEPRECATED_REP4(rep: var, x: var, y: var, z: var) @TypeOf(__API_DEPRECATED_REP3(rep, x, y) ++ __API_R(rep, z)) {
    return __API_DEPRECATED_REP3(rep, x, y) ++ __API_R(rep, z);
}
pub const CLD_KILLED = 2;
pub const __INT_LEAST8_MAX__ = 127;
pub inline fn INT8_C(v: var) @TypeOf(v) {
    return v;
}
pub const __UINTMAX_FMTo__ = "lo";
pub const __IPHONE_12_3 = 120300;
pub inline fn __API_AVAILABLE2(x: var, y: var) @TypeOf(__API_A(x) ++ __API_A(y)) {
    return __API_A(x) ++ __API_A(y);
}
pub const CLD_TRAPPED = 4;
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12(x: var) @TypeOf(x) {
    return x;
}
pub const __TVOS_11_3 = 110300;
pub inline fn ecs_get_fullpath(world: var, child: var) @TypeOf(ecs_get_path_w_sep(world, 0, child, 0, ".", NULL)) {
    return ecs_get_path_w_sep(world, 0, child, 0, ".", NULL);
}
pub const SI_USER = 0x10001;
pub const __AVX__ = 1;
pub const __darwin_pthread_handler_rec = struct___darwin_pthread_handler_rec;
pub const _opaque_pthread_attr_t = struct__opaque_pthread_attr_t;
pub const _opaque_pthread_cond_t = struct__opaque_pthread_cond_t;
pub const _opaque_pthread_condattr_t = struct__opaque_pthread_condattr_t;
pub const _opaque_pthread_mutex_t = struct__opaque_pthread_mutex_t;
pub const _opaque_pthread_mutexattr_t = struct__opaque_pthread_mutexattr_t;
pub const _opaque_pthread_once_t = struct__opaque_pthread_once_t;
pub const _opaque_pthread_rwlock_t = struct__opaque_pthread_rwlock_t;
pub const _opaque_pthread_rwlockattr_t = struct__opaque_pthread_rwlockattr_t;
pub const _opaque_pthread_t = struct__opaque_pthread_t;
pub const timespec = struct_timespec;
pub const tm = struct_tm;
pub const __darwin_i386_thread_state = struct___darwin_i386_thread_state;
pub const __darwin_fp_control = struct___darwin_fp_control;
pub const __darwin_fp_status = struct___darwin_fp_status;
pub const __darwin_mmst_reg = struct___darwin_mmst_reg;
pub const __darwin_xmm_reg = struct___darwin_xmm_reg;
pub const __darwin_ymm_reg = struct___darwin_ymm_reg;
pub const __darwin_zmm_reg = struct___darwin_zmm_reg;
pub const __darwin_opmask_reg = struct___darwin_opmask_reg;
pub const __darwin_i386_float_state = struct___darwin_i386_float_state;
pub const __darwin_i386_avx_state = struct___darwin_i386_avx_state;
pub const __darwin_i386_avx512_state = struct___darwin_i386_avx512_state;
pub const __darwin_i386_exception_state = struct___darwin_i386_exception_state;
pub const __darwin_x86_debug_state32 = struct___darwin_x86_debug_state32;
pub const __x86_pagein_state = struct___x86_pagein_state;
pub const __darwin_x86_thread_state64 = struct___darwin_x86_thread_state64;
pub const __darwin_x86_thread_full_state64 = struct___darwin_x86_thread_full_state64;
pub const __darwin_x86_float_state64 = struct___darwin_x86_float_state64;
pub const __darwin_x86_avx_state64 = struct___darwin_x86_avx_state64;
pub const __darwin_x86_avx512_state64 = struct___darwin_x86_avx512_state64;
pub const __darwin_x86_exception_state64 = struct___darwin_x86_exception_state64;
pub const __darwin_x86_debug_state64 = struct___darwin_x86_debug_state64;
pub const __darwin_x86_cpmu_state64 = struct___darwin_x86_cpmu_state64;
pub const __darwin_mcontext32 = struct___darwin_mcontext32;
pub const __darwin_mcontext_avx32 = struct___darwin_mcontext_avx32;
pub const __darwin_mcontext_avx512_32 = struct___darwin_mcontext_avx512_32;
pub const __darwin_mcontext64 = struct___darwin_mcontext64;
pub const __darwin_mcontext64_full = struct___darwin_mcontext64_full;
pub const __darwin_mcontext_avx64 = struct___darwin_mcontext_avx64;
pub const __darwin_mcontext_avx64_full = struct___darwin_mcontext_avx64_full;
pub const __darwin_mcontext_avx512_64 = struct___darwin_mcontext_avx512_64;
pub const __darwin_mcontext_avx512_64_full = struct___darwin_mcontext_avx512_64_full;
pub const __darwin_sigaltstack = struct___darwin_sigaltstack;
pub const __darwin_ucontext = struct___darwin_ucontext;
pub const sigval = union_sigval;
pub const sigevent = struct_sigevent;
pub const __siginfo = struct___siginfo;
pub const __sigaction_u = union___sigaction_u;
pub const __sigaction = struct___sigaction;
pub const sigaction = struct_sigaction;
pub const sigvec = struct_sigvec;
pub const sigstack = struct_sigstack;
pub const timeval = struct_timeval;
pub const rusage = struct_rusage;
pub const rusage_info_v0 = struct_rusage_info_v0;
pub const rusage_info_v1 = struct_rusage_info_v1;
pub const rusage_info_v2 = struct_rusage_info_v2;
pub const rusage_info_v3 = struct_rusage_info_v3;
pub const rusage_info_v4 = struct_rusage_info_v4;
pub const rlimit = struct_rlimit;
pub const proc_rlimit_control_wakeupmon = struct_proc_rlimit_control_wakeupmon;
pub const __va_list_tag = struct___va_list_tag;
