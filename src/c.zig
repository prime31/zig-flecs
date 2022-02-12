pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub extern fn __assert_rtn([*c]const u8, [*c]const u8, c_int, [*c]const u8) noreturn;
pub const __builtin_va_list = [*c]u8;
pub const va_list = __builtin_va_list;
pub const __gnuc_va_list = __builtin_va_list;
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
pub const __mbstate_t = extern union {
    __mbstate8: [128]u8,
    _mbstateL: c_longlong,
};
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
    __routine: ?fn (?*anyopaque) callconv(.C) void,
    __arg: ?*anyopaque,
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
pub extern fn memchr(__s: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn memcpy(__dst: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memmove(__dst: ?*anyopaque, __src: ?*const anyopaque, __len: c_ulong) ?*anyopaque;
pub extern fn memset(__b: ?*anyopaque, __c: c_int, __len: c_ulong) ?*anyopaque;
pub extern fn strcat(__s1: [*c]u8, __s2: [*c]const u8) [*c]u8;
pub extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strcoll(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strcpy(__dst: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strcspn(__s: [*c]const u8, __charset: [*c]const u8) c_ulong;
pub extern fn strerror(__errnum: c_int) [*c]u8;
pub extern fn strlen(__s: [*c]const u8) c_ulong;
pub extern fn strncat(__s1: [*c]u8, __s2: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strncpy(__dst: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strpbrk(__s: [*c]const u8, __charset: [*c]const u8) [*c]u8;
pub extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strspn(__s: [*c]const u8, __charset: [*c]const u8) c_ulong;
pub extern fn strstr(__big: [*c]const u8, __little: [*c]const u8) [*c]u8;
pub extern fn strtok(__str: [*c]u8, __sep: [*c]const u8) [*c]u8;
pub extern fn strxfrm(__s1: [*c]u8, __s2: [*c]const u8, __n: c_ulong) c_ulong;
pub extern fn strtok_r(__str: [*c]u8, __sep: [*c]const u8, __lasts: [*c][*c]u8) [*c]u8;
pub extern fn strerror_r(__errnum: c_int, __strerrbuf: [*c]u8, __buflen: usize) c_int;
pub extern fn strdup(__s1: [*c]const u8) [*c]u8;
pub extern fn memccpy(__dst: ?*anyopaque, __src: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn stpcpy(__dst: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn stpncpy(__dst: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strndup(__s1: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strnlen(__s1: [*c]const u8, __n: usize) usize;
pub extern fn strsignal(__sig: c_int) [*c]u8;
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
pub const rsize_t = __darwin_size_t;
pub const errno_t = c_int;
pub extern fn memset_s(__s: ?*anyopaque, __smax: rsize_t, __c: c_int, __n: rsize_t) errno_t;
pub extern fn memmem(__big: ?*const anyopaque, __big_len: usize, __little: ?*const anyopaque, __little_len: usize) ?*anyopaque;
pub extern fn memset_pattern4(__b: ?*anyopaque, __pattern4: ?*const anyopaque, __len: usize) void;
pub extern fn memset_pattern8(__b: ?*anyopaque, __pattern8: ?*const anyopaque, __len: usize) void;
pub extern fn memset_pattern16(__b: ?*anyopaque, __pattern16: ?*const anyopaque, __len: usize) void;
pub extern fn strcasestr(__big: [*c]const u8, __little: [*c]const u8) [*c]u8;
pub extern fn strnstr(__big: [*c]const u8, __little: [*c]const u8, __len: usize) [*c]u8;
pub extern fn strlcat(__dst: [*c]u8, __source: [*c]const u8, __size: c_ulong) c_ulong;
pub extern fn strlcpy(__dst: [*c]u8, __source: [*c]const u8, __size: c_ulong) c_ulong;
pub extern fn strmode(__mode: c_int, __bp: [*c]u8) void;
pub extern fn strsep(__stringp: [*c][*c]u8, __delim: [*c]const u8) [*c]u8;
pub extern fn swab(noalias ?*const anyopaque, noalias ?*anyopaque, isize) void;
pub extern fn timingsafe_bcmp(__b1: ?*const anyopaque, __b2: ?*const anyopaque, __len: usize) c_int;
pub extern fn strsignal_r(__sig: c_int, __strsignalbuf: [*c]u8, __buflen: usize) c_int;
pub extern fn bcmp(?*const anyopaque, ?*const anyopaque, c_ulong) c_int;
pub extern fn bcopy(?*const anyopaque, ?*anyopaque, usize) void;
pub extern fn bzero(?*anyopaque, c_ulong) void;
pub extern fn index([*c]const u8, c_int) [*c]u8;
pub extern fn rindex([*c]const u8, c_int) [*c]u8;
pub extern fn ffs(c_int) c_int;
pub extern fn strcasecmp([*c]const u8, [*c]const u8) c_int;
pub extern fn strncasecmp([*c]const u8, [*c]const u8, c_ulong) c_int;
pub extern fn ffsl(c_long) c_int;
pub extern fn ffsll(c_longlong) c_int;
pub extern fn fls(c_int) c_int;
pub extern fn flsl(c_long) c_int;
pub extern fn flsll(c_longlong) c_int;
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
pub const ecs_flags32_t = u32;
pub const ecs_flags64_t = u64;
pub const ecs_size_t = i32;
pub extern fn _ecs_deprecated(file: [*c]const u8, line: i32, msg: [*c]const u8) void;
pub extern fn ecs_log_push() void;
pub extern fn ecs_log_pop() void;
pub extern fn ecs_strerror(error_code: i32) [*c]const u8;
pub extern fn _ecs_log(level: i32, file: [*c]const u8, line: i32, fmt: [*c]const u8, ...) void;
pub extern fn _ecs_logv(level: c_int, file: [*c]const u8, line: i32, fmt: [*c]const u8, args: va_list) void;
pub extern fn _ecs_abort(error_code: i32, file: [*c]const u8, line: i32, fmt: [*c]const u8, ...) void;
pub extern fn _ecs_assert(condition: bool, error_code: i32, condition_str: [*c]const u8, file: [*c]const u8, line: i32, fmt: [*c]const u8, ...) bool;
pub extern fn _ecs_parser_error(name: [*c]const u8, expr: [*c]const u8, column: i64, fmt: [*c]const u8, ...) void;
pub extern fn _ecs_parser_errorv(name: [*c]const u8, expr: [*c]const u8, column: i64, fmt: [*c]const u8, args: va_list) void;
pub extern fn ecs_log_set_level(level: c_int) c_int;
pub extern fn ecs_log_enable_colors(enabled: bool) bool;
pub extern fn ecs_log_last_error() c_int;
pub const struct_ecs_vector_t = opaque {};
pub const ecs_vector_t = struct_ecs_vector_t;
pub const ecs_comparator_t = ?fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int;
pub extern fn _ecs_vector_new(elem_size: ecs_size_t, offset: i16, elem_count: i32) ?*ecs_vector_t;
pub extern fn _ecs_vector_from_array(elem_size: ecs_size_t, offset: i16, elem_count: i32, array: ?*anyopaque) ?*ecs_vector_t;
pub extern fn _ecs_vector_zero(vector: ?*ecs_vector_t, elem_size: ecs_size_t, offset: i16) void;
pub extern fn ecs_vector_free(vector: ?*ecs_vector_t) void;
pub extern fn ecs_vector_clear(vector: ?*ecs_vector_t) void;
pub extern fn ecs_vector_assert_size(vector_inout: ?*ecs_vector_t, elem_size: ecs_size_t) void;
pub extern fn _ecs_vector_add(array_inout: [*c]?*ecs_vector_t, elem_size: ecs_size_t, offset: i16) ?*anyopaque;
pub extern fn _ecs_vector_insert_at(array_inout: [*c]?*ecs_vector_t, elem_size: ecs_size_t, offset: i16, index: i32) ?*anyopaque;
pub extern fn _ecs_vector_addn(array_inout: [*c]?*ecs_vector_t, elem_size: ecs_size_t, offset: i16, elem_count: i32) ?*anyopaque;
pub extern fn _ecs_vector_get(vector: ?*const ecs_vector_t, elem_size: ecs_size_t, offset: i16, index: i32) ?*anyopaque;
pub extern fn _ecs_vector_last(vector: ?*const ecs_vector_t, elem_size: ecs_size_t, offset: i16) ?*anyopaque;
pub extern fn _ecs_vector_set_min_size(array_inout: [*c]?*ecs_vector_t, elem_size: ecs_size_t, offset: i16, elem_count: i32) i32;
pub extern fn _ecs_vector_set_min_count(vector_inout: [*c]?*ecs_vector_t, elem_size: ecs_size_t, offset: i16, elem_count: i32) i32;
pub extern fn ecs_vector_remove_last(vector: ?*ecs_vector_t) void;
pub extern fn _ecs_vector_pop(vector: ?*ecs_vector_t, elem_size: ecs_size_t, offset: i16, value: ?*anyopaque) bool;
pub extern fn _ecs_vector_move_index(dst: [*c]?*ecs_vector_t, src: ?*ecs_vector_t, elem_size: ecs_size_t, offset: i16, index: i32) i32;
pub extern fn _ecs_vector_remove(vector: ?*ecs_vector_t, elem_size: ecs_size_t, offset: i16, index: i32) i32;
pub extern fn _ecs_vector_reclaim(vector: [*c]?*ecs_vector_t, elem_size: ecs_size_t, offset: i16) void;
pub extern fn _ecs_vector_grow(vector: [*c]?*ecs_vector_t, elem_size: ecs_size_t, offset: i16, elem_count: i32) i32;
pub extern fn _ecs_vector_set_size(vector: [*c]?*ecs_vector_t, elem_size: ecs_size_t, offset: i16, elem_count: i32) i32;
pub extern fn _ecs_vector_set_count(vector: [*c]?*ecs_vector_t, elem_size: ecs_size_t, offset: i16, elem_count: i32) i32;
pub extern fn ecs_vector_count(vector: ?*const ecs_vector_t) i32;
pub extern fn ecs_vector_size(vector: ?*const ecs_vector_t) i32;
pub extern fn _ecs_vector_first(vector: ?*const ecs_vector_t, elem_size: ecs_size_t, offset: i16) ?*anyopaque;
pub extern fn _ecs_vector_sort(vector: ?*ecs_vector_t, elem_size: ecs_size_t, offset: i16, compare_action: ecs_comparator_t) void;
pub extern fn _ecs_vector_memory(vector: ?*const ecs_vector_t, elem_size: ecs_size_t, offset: i16, allocd: [*c]i32, used: [*c]i32) void;
pub extern fn _ecs_vector_copy(src: ?*const ecs_vector_t, elem_size: ecs_size_t, offset: i16) ?*ecs_vector_t;
pub const struct_ecs_map_t = opaque {};
pub const ecs_map_t = struct_ecs_map_t;
pub const ecs_map_key_t = u64;
pub const struct_ecs_bucket_t = opaque {};
pub const struct_ecs_map_iter_t = extern struct {
    map: ?*const ecs_map_t,
    bucket: ?*struct_ecs_bucket_t,
    bucket_index: i32,
    element_index: i32,
    payload: ?*anyopaque,
};
pub const ecs_map_iter_t = struct_ecs_map_iter_t;
pub extern fn _ecs_map_new(elem_size: ecs_size_t, elem_count: i32) ?*ecs_map_t;
pub extern fn _ecs_map_get(map: ?*const ecs_map_t, elem_size: ecs_size_t, key: ecs_map_key_t) ?*anyopaque;
pub extern fn _ecs_map_get_ptr(map: ?*const ecs_map_t, key: ecs_map_key_t) ?*anyopaque;
pub extern fn ecs_map_has(map: ?*const ecs_map_t, key: ecs_map_key_t) bool;
pub extern fn _ecs_map_ensure(map: ?*ecs_map_t, elem_size: ecs_size_t, key: ecs_map_key_t) ?*anyopaque;
pub extern fn _ecs_map_set(map: ?*ecs_map_t, elem_size: ecs_size_t, key: ecs_map_key_t, payload: ?*const anyopaque) ?*anyopaque;
pub extern fn ecs_map_free(map: ?*ecs_map_t) void;
pub extern fn ecs_map_remove(map: ?*ecs_map_t, key: ecs_map_key_t) i32;
pub extern fn ecs_map_clear(map: ?*ecs_map_t) void;
pub extern fn ecs_map_count(map: ?*const ecs_map_t) i32;
pub extern fn ecs_map_bucket_count(map: ?*const ecs_map_t) i32;
pub extern fn ecs_map_iter(map: ?*const ecs_map_t) ecs_map_iter_t;
pub extern fn _ecs_map_next(iter: [*c]ecs_map_iter_t, elem_size: ecs_size_t, key: [*c]ecs_map_key_t) ?*anyopaque;
pub extern fn _ecs_map_next_ptr(iter: [*c]ecs_map_iter_t, key: [*c]ecs_map_key_t) ?*anyopaque;
pub extern fn ecs_map_grow(map: ?*ecs_map_t, elem_count: i32) void;
pub extern fn ecs_map_set_size(map: ?*ecs_map_t, elem_count: i32) void;
pub extern fn ecs_map_copy(map: ?*ecs_map_t) ?*ecs_map_t;
pub extern fn ecs_map_memory(map: ?*ecs_map_t, allocd: [*c]i32, used: [*c]i32) void;
pub const struct_ecs_strbuf_element = extern struct {
    buffer_embedded: bool,
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
    content: [*c]u8,
    length: i32,
};
pub const ecs_strbuf_t = struct_ecs_strbuf_t;
pub extern fn ecs_strbuf_append(buffer: [*c]ecs_strbuf_t, fmt: [*c]const u8, ...) bool;
pub extern fn ecs_strbuf_vappend(buffer: [*c]ecs_strbuf_t, fmt: [*c]const u8, args: va_list) bool;
pub extern fn ecs_strbuf_appendstr(buffer: [*c]ecs_strbuf_t, str: [*c]const u8) bool;
pub extern fn ecs_strbuf_appendch(buffer: [*c]ecs_strbuf_t, ch: u8) bool;
pub extern fn ecs_strbuf_appendflt(buffer: [*c]ecs_strbuf_t, v: f64, nan_delim: u8) bool;
pub extern fn ecs_strbuf_mergebuff(dst_buffer: [*c]ecs_strbuf_t, src_buffer: [*c]ecs_strbuf_t) bool;
pub extern fn ecs_strbuf_appendstr_zerocpy(buffer: [*c]ecs_strbuf_t, str: [*c]u8) bool;
pub extern fn ecs_strbuf_appendstr_zerocpy_const(buffer: [*c]ecs_strbuf_t, str: [*c]const u8) bool;
pub extern fn ecs_strbuf_appendstrn(buffer: [*c]ecs_strbuf_t, str: [*c]const u8, n: i32) bool;
pub extern fn ecs_strbuf_get(buffer: [*c]ecs_strbuf_t) [*c]u8;
pub extern fn ecs_strbuf_get_small(buffer: [*c]ecs_strbuf_t) [*c]u8;
pub extern fn ecs_strbuf_reset(buffer: [*c]ecs_strbuf_t) void;
pub extern fn ecs_strbuf_list_push(buffer: [*c]ecs_strbuf_t, list_open: [*c]const u8, separator: [*c]const u8) void;
pub extern fn ecs_strbuf_list_pop(buffer: [*c]ecs_strbuf_t, list_close: [*c]const u8) void;
pub extern fn ecs_strbuf_list_next(buffer: [*c]ecs_strbuf_t) void;
pub extern fn ecs_strbuf_list_append(buffer: [*c]ecs_strbuf_t, fmt: [*c]const u8, ...) bool;
pub extern fn ecs_strbuf_list_appendstr(buffer: [*c]ecs_strbuf_t, str: [*c]const u8) bool;
pub extern fn ecs_strbuf_written(buffer: [*c]const ecs_strbuf_t) i32;
pub extern fn __error() [*c]c_int;
pub extern fn alloca(c_ulong) ?*anyopaque;
pub const struct_ecs_time_t = extern struct {
    sec: u32,
    nanosec: u32,
};
pub const ecs_time_t = struct_ecs_time_t;
pub extern var ecs_os_api_malloc_count: i64;
pub extern var ecs_os_api_realloc_count: i64;
pub extern var ecs_os_api_calloc_count: i64;
pub extern var ecs_os_api_free_count: i64;
pub const ecs_os_thread_t = usize;
pub const ecs_os_cond_t = usize;
pub const ecs_os_mutex_t = usize;
pub const ecs_os_dl_t = usize;
pub const ecs_os_sock_t = usize;
pub const ecs_os_proc_t = ?fn () callconv(.C) void;
pub const ecs_os_api_init_t = ?fn () callconv(.C) void;
pub const ecs_os_api_fini_t = ?fn () callconv(.C) void;
pub const ecs_os_api_malloc_t = ?fn (ecs_size_t) callconv(.C) ?*anyopaque;
pub const ecs_os_api_free_t = ?fn (?*anyopaque) callconv(.C) void;
pub const ecs_os_api_realloc_t = ?fn (?*anyopaque, ecs_size_t) callconv(.C) ?*anyopaque;
pub const ecs_os_api_calloc_t = ?fn (ecs_size_t) callconv(.C) ?*anyopaque;
pub const ecs_os_api_strdup_t = ?fn ([*c]const u8) callconv(.C) [*c]u8;
pub const ecs_os_thread_callback_t = ?fn (?*anyopaque) callconv(.C) ?*anyopaque;
pub const ecs_os_api_thread_new_t = ?fn (ecs_os_thread_callback_t, ?*anyopaque) callconv(.C) ecs_os_thread_t;
pub const ecs_os_api_thread_join_t = ?fn (ecs_os_thread_t) callconv(.C) ?*anyopaque;
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
pub const ecs_os_api_enable_high_timer_resolution_t = ?fn (bool) callconv(.C) void;
pub const ecs_os_api_get_time_t = ?fn ([*c]ecs_time_t) callconv(.C) void;
pub const ecs_os_api_now_t = ?fn () callconv(.C) u64;
pub const ecs_os_api_log_t = ?fn (i32, [*c]const u8, i32, [*c]const u8) callconv(.C) void;
pub const ecs_os_api_abort_t = ?fn () callconv(.C) void;
pub const ecs_os_api_dlopen_t = ?fn ([*c]const u8) callconv(.C) ecs_os_dl_t;
pub const ecs_os_api_dlproc_t = ?fn (ecs_os_dl_t, [*c]const u8) callconv(.C) ecs_os_proc_t;
pub const ecs_os_api_dlclose_t = ?fn (ecs_os_dl_t) callconv(.C) void;
pub const ecs_os_api_module_to_path_t = ?fn ([*c]const u8) callconv(.C) [*c]u8;
pub const struct_ecs_os_api_t = extern struct {
    init_: ecs_os_api_init_t,
    fini_: ecs_os_api_fini_t,
    malloc_: ecs_os_api_malloc_t,
    realloc_: ecs_os_api_realloc_t,
    calloc_: ecs_os_api_calloc_t,
    free_: ecs_os_api_free_t,
    strdup_: ecs_os_api_strdup_t,
    thread_new_: ecs_os_api_thread_new_t,
    thread_join_: ecs_os_api_thread_join_t,
    ainc_: ecs_os_api_ainc_t,
    adec_: ecs_os_api_ainc_t,
    mutex_new_: ecs_os_api_mutex_new_t,
    mutex_free_: ecs_os_api_mutex_free_t,
    mutex_lock_: ecs_os_api_mutex_lock_t,
    mutex_unlock_: ecs_os_api_mutex_lock_t,
    cond_new_: ecs_os_api_cond_new_t,
    cond_free_: ecs_os_api_cond_free_t,
    cond_signal_: ecs_os_api_cond_signal_t,
    cond_broadcast_: ecs_os_api_cond_broadcast_t,
    cond_wait_: ecs_os_api_cond_wait_t,
    sleep_: ecs_os_api_sleep_t,
    now_: ecs_os_api_now_t,
    get_time_: ecs_os_api_get_time_t,
    enable_high_timer_resolution_: ecs_os_api_enable_high_timer_resolution_t,
    log_: ecs_os_api_log_t,
    abort_: ecs_os_api_abort_t,
    dlopen_: ecs_os_api_dlopen_t,
    dlproc_: ecs_os_api_dlproc_t,
    dlclose_: ecs_os_api_dlclose_t,
    module_to_dl_: ecs_os_api_module_to_path_t,
    module_to_etc_: ecs_os_api_module_to_path_t,
    log_level_: i32,
    log_indent_: i32,
    log_last_error_: i32,
    log_with_color_: bool,
};
pub const ecs_os_api_t = struct_ecs_os_api_t;
pub extern var ecs_os_api: ecs_os_api_t;
pub extern fn ecs_os_init() void;
pub extern fn ecs_os_fini() void;
pub extern fn ecs_os_set_api(os_api: [*c]ecs_os_api_t) void;
pub extern fn ecs_os_set_api_defaults() void;
pub extern fn ecs_os_enable_high_timer_resolution(enable: bool) void;
pub extern fn ecs_os_dbg(file: [*c]const u8, line: i32, msg: [*c]const u8) void;
pub extern fn ecs_os_trace(file: [*c]const u8, line: i32, msg: [*c]const u8) void;
pub extern fn ecs_os_warn(file: [*c]const u8, line: i32, msg: [*c]const u8) void;
pub extern fn ecs_os_err(file: [*c]const u8, line: i32, msg: [*c]const u8) void;
pub extern fn ecs_os_fatal(file: [*c]const u8, line: i32, msg: [*c]const u8) void;
pub extern fn ecs_os_strerror(err: c_int) [*c]const u8;
pub extern fn ecs_sleepf(t: f64) void;
pub extern fn ecs_time_measure(start: [*c]ecs_time_t) f64;
pub extern fn ecs_time_sub(t1: ecs_time_t, t2: ecs_time_t) ecs_time_t;
pub extern fn ecs_time_to_double(t: ecs_time_t) f64;
pub extern fn ecs_os_memdup(src: ?*const anyopaque, size: ecs_size_t) ?*anyopaque;
pub extern fn ecs_os_has_heap() bool;
pub extern fn ecs_os_has_threading() bool;
pub extern fn ecs_os_has_time() bool;
pub extern fn ecs_os_has_logging() bool;
pub extern fn ecs_os_has_dl() bool;
pub extern fn ecs_os_has_modules() bool;
pub const ecs_poly_t = anyopaque;
pub const ecs_id_t = u64;
pub const ecs_entity_t = ecs_id_t;
pub const ecs_type_t = ?*const ecs_vector_t;
pub const struct_ecs_world_t = opaque {};
pub const ecs_world_t = struct_ecs_world_t;
pub const EcsInOutDefault: c_int = 0;
pub const EcsInOutFilter: c_int = 1;
pub const EcsInOut: c_int = 2;
pub const EcsIn: c_int = 3;
pub const EcsOut: c_int = 4;
pub const enum_ecs_inout_kind_t = c_uint;
pub const ecs_inout_kind_t = enum_ecs_inout_kind_t;
pub const EcsVarDefault: c_int = 0;
pub const EcsVarIsEntity: c_int = 1;
pub const EcsVarIsVariable: c_int = 2;
pub const enum_ecs_var_kind_t = c_uint;
pub const ecs_var_kind_t = enum_ecs_var_kind_t;
pub const struct_ecs_term_set_t = extern struct {
    relation: ecs_entity_t,
    mask: u8,
    min_depth: i32,
    max_depth: i32,
};
pub const ecs_term_set_t = struct_ecs_term_set_t;
pub const struct_ecs_term_id_t = extern struct {
    entity: ecs_entity_t,
    name: [*c]u8,
    @"var": ecs_var_kind_t,
    set: ecs_term_set_t,
};
pub const ecs_term_id_t = struct_ecs_term_id_t;
pub const EcsAnd: c_int = 0;
pub const EcsOr: c_int = 1;
pub const EcsNot: c_int = 2;
pub const EcsOptional: c_int = 3;
pub const EcsAndFrom: c_int = 4;
pub const EcsOrFrom: c_int = 5;
pub const EcsNotFrom: c_int = 6;
pub const enum_ecs_oper_kind_t = c_uint;
pub const ecs_oper_kind_t = enum_ecs_oper_kind_t;
pub const struct_ecs_term_t = extern struct {
    id: ecs_id_t,
    inout: ecs_inout_kind_t,
    pred: ecs_term_id_t,
    subj: ecs_term_id_t,
    obj: ecs_term_id_t,
    oper: ecs_oper_kind_t,
    role: ecs_id_t,
    name: [*c]u8,
    index: i32,
    move: bool,
};
pub const ecs_term_t = struct_ecs_term_t;
pub const struct_ecs_query_t = opaque {};
pub const ecs_query_t = struct_ecs_query_t;
pub const struct_ecs_mixins_t = opaque {};
pub const ecs_mixins_t = struct_ecs_mixins_t;
pub const struct_ecs_header_t = extern struct {
    magic: i32,
    type: i32,
    mixins: ?*ecs_mixins_t,
};
pub const ecs_header_t = struct_ecs_header_t;
pub const struct_ecs_table_t = opaque {};
pub const ecs_table_t = struct_ecs_table_t;
pub const struct_ecs_record_t = extern struct {
    table: ?*ecs_table_t,
    row: u32,
};
pub const ecs_record_t = struct_ecs_record_t;
pub const struct_ecs_ref_t = extern struct {
    entity: ecs_entity_t,
    component: ecs_entity_t,
    table: ?*anyopaque,
    row: u32,
    alloc_count: i32,
    record: [*c]ecs_record_t,
    ptr: ?*const anyopaque,
};
pub const ecs_ref_t = struct_ecs_ref_t;
pub const struct_ecs_id_record_t = opaque {};
pub const ecs_id_record_t = struct_ecs_id_record_t;
pub const struct_ecs_term_iter_t = extern struct {
    term: ecs_term_t,
    self_index: ?*ecs_id_record_t,
    set_index: ?*ecs_id_record_t,
    cur: ?*ecs_id_record_t,
    index: i32,
    table: ?*ecs_table_t,
    cur_match: i32,
    match_count: i32,
    last_column: i32,
    empty_tables: bool,
    id: ecs_id_t,
    column: i32,
    subject: ecs_entity_t,
    size: ecs_size_t,
    ptr: ?*anyopaque,
};
pub const ecs_term_iter_t = struct_ecs_term_iter_t;
pub const ecs_filter_t = struct_ecs_filter_t;
pub const EcsIterEvalIndex: c_int = 0;
pub const EcsIterEvalChain: c_int = 1;
pub const EcsIterEvalCondition: c_int = 2;
pub const EcsIterEvalNone: c_int = 3;
pub const enum_ecs_iter_kind_t = c_uint;
pub const ecs_iter_kind_t = enum_ecs_iter_kind_t;
pub const struct_ecs_filter_iter_t = extern struct {
    filter: ecs_filter_t,
    kind: ecs_iter_kind_t,
    term_iter: ecs_term_iter_t,
    matches_left: i32,
};
pub const ecs_filter_iter_t = struct_ecs_filter_iter_t;
pub const struct_ecs_query_table_node_t = opaque {};
pub const ecs_query_table_node_t = struct_ecs_query_table_node_t;
pub const struct_ecs_query_iter_t = extern struct {
    query: ?*ecs_query_t,
    node: ?*ecs_query_table_node_t,
    prev: ?*ecs_query_table_node_t,
    sparse_smallest: i32,
    sparse_first: i32,
    bitset_first: i32,
};
pub const ecs_query_iter_t = struct_ecs_query_iter_t;
pub const struct_ecs_rule_t = opaque {};
pub const ecs_rule_t = struct_ecs_rule_t;
pub const struct_ecs_rule_reg_t = opaque {};
pub const struct_ecs_rule_op_ctx_t = opaque {};
pub const struct_ecs_rule_iter_t = extern struct {
    rule: ?*const ecs_rule_t,
    registers: ?*struct_ecs_rule_reg_t,
    variables: [*c]ecs_entity_t,
    op_ctx: ?*struct_ecs_rule_op_ctx_t,
    columns: [*c]i32,
    entity: ecs_entity_t,
    redo: bool,
    op: i32,
    sp: i32,
};
pub const ecs_rule_iter_t = struct_ecs_rule_iter_t;
pub const struct_ecs_snapshot_iter_t = extern struct {
    filter: ecs_filter_t,
    tables: ?*ecs_vector_t,
    index: i32,
};
pub const ecs_snapshot_iter_t = struct_ecs_snapshot_iter_t;
pub const struct_ecs_page_iter_t = extern struct {
    offset: i32,
    limit: i32,
    remaining: i32,
};
pub const ecs_page_iter_t = struct_ecs_page_iter_t;
pub const struct_ecs_worker_iter_t = extern struct {
    index: i32,
    count: i32,
};
pub const ecs_worker_iter_t = struct_ecs_worker_iter_t;
const union_unnamed_1 = extern union {
    term: ecs_term_iter_t,
    filter: ecs_filter_iter_t,
    query: ecs_query_iter_t,
    rule: ecs_rule_iter_t,
    snapshot: ecs_snapshot_iter_t,
    page: ecs_page_iter_t,
    worker: ecs_worker_iter_t,
};
pub const struct_ecs_iter_cache_t = extern struct {
    ids: [4]ecs_id_t,
    columns: [4]i32,
    subjects: [4]ecs_entity_t,
    sizes: [4]ecs_size_t,
    ptrs: [4]?*anyopaque,
    match_indices: [4]i32,
    ids_alloc: bool,
    columns_alloc: bool,
    subjects_alloc: bool,
    sizes_alloc: bool,
    ptrs_alloc: bool,
    match_indices_alloc: bool,
};
pub const ecs_iter_cache_t = struct_ecs_iter_cache_t;
pub const struct_ecs_iter_private_t = extern struct {
    iter: union_unnamed_1,
    cache: ecs_iter_cache_t,
};
pub const ecs_iter_private_t = struct_ecs_iter_private_t;
pub const ecs_iter_next_action_t = ?fn ([*c]ecs_iter_t) callconv(.C) bool;
pub const ecs_iter_fini_action_t = ?fn ([*c]ecs_iter_t) callconv(.C) void;
pub const struct_ecs_iter_t = extern struct {
    world: ?*ecs_world_t,
    real_world: ?*ecs_world_t,
    entities: [*c]ecs_entity_t,
    ptrs: [*c]?*anyopaque,
    sizes: [*c]ecs_size_t,
    table: ?*ecs_table_t,
    type: ecs_type_t,
    other_table: ?*ecs_table_t,
    ids: [*c]ecs_id_t,
    variables: [*c]ecs_entity_t,
    columns: [*c]i32,
    subjects: [*c]ecs_entity_t,
    match_indices: [*c]i32,
    references: [*c]ecs_ref_t,
    system: ecs_entity_t,
    event: ecs_entity_t,
    event_id: ecs_id_t,
    self: ecs_entity_t,
    terms: [*c]ecs_term_t,
    table_count: i32,
    term_count: i32,
    term_index: i32,
    variable_count: i32,
    variable_names: [*c][*c]u8,
    param: ?*anyopaque,
    ctx: ?*anyopaque,
    binding_ctx: ?*anyopaque,
    delta_time: f32,
    delta_system_time: f32,
    frame_offset: i32,
    offset: i32,
    count: i32,
    instance_count: i32,
    is_valid: bool,
    is_filter: bool,
    is_instanced: bool,
    has_shared: bool,
    table_only: bool,
    interrupted_by: ecs_entity_t,
    priv: ecs_iter_private_t,
    next: ecs_iter_next_action_t,
    fini: ecs_iter_fini_action_t,
    chain_it: [*c]ecs_iter_t,
};
pub const ecs_iter_t = struct_ecs_iter_t;
pub const ecs_iter_init_action_t = ?fn (?*const ecs_world_t, ?*const ecs_poly_t, [*c]ecs_iter_t, [*c]ecs_term_t) callconv(.C) void;
pub const struct_ecs_iterable_t = extern struct {
    init: ecs_iter_init_action_t,
};
pub const ecs_iterable_t = struct_ecs_iterable_t;
pub const struct_ecs_filter_t = extern struct {
    hdr: ecs_header_t,
    terms: [*c]ecs_term_t,
    term_count: i32,
    term_count_actual: i32,
    term_cache: [4]ecs_term_t,
    term_cache_used: bool,
    match_this: bool,
    match_only_this: bool,
    match_prefab: bool,
    match_disabled: bool,
    match_anything: bool,
    filter: bool,
    instanced: bool,
    match_empty_tables: bool,
    name: [*c]u8,
    expr: [*c]u8,
    iterable: ecs_iterable_t,
};
pub const ecs_iter_action_t = ?fn ([*c]ecs_iter_t) callconv(.C) void;
pub const ecs_ctx_free_t = ?fn (?*anyopaque) callconv(.C) void;
pub const struct_ecs_sparse_t = opaque {};
pub const ecs_sparse_t = struct_ecs_sparse_t;
pub const struct_ecs_observable_t = extern struct {
    events: ?*ecs_sparse_t,
};
pub const ecs_observable_t = struct_ecs_observable_t;
pub const struct_ecs_trigger_t = extern struct {
    term: ecs_term_t,
    events: [8]ecs_entity_t,
    event_count: i32,
    action: ecs_iter_action_t,
    ctx: ?*anyopaque,
    binding_ctx: ?*anyopaque,
    ctx_free: ecs_ctx_free_t,
    binding_ctx_free: ecs_ctx_free_t,
    entity: ecs_entity_t,
    self: ecs_entity_t,
    observable: [*c]ecs_observable_t,
    match_prefab: bool,
    match_disabled: bool,
    instanced: bool,
    id: u64,
    last_event_id: [*c]i32,
};
pub const ecs_trigger_t = struct_ecs_trigger_t;
pub const ecs_run_action_t = ?fn ([*c]ecs_iter_t) callconv(.C) void;
pub const struct_ecs_observer_t = extern struct {
    filter: ecs_filter_t,
    triggers: ?*ecs_vector_t,
    events: [8]ecs_entity_t,
    event_count: i32,
    action: ecs_iter_action_t,
    run: ecs_run_action_t,
    ctx: ?*anyopaque,
    binding_ctx: ?*anyopaque,
    ctx_free: ecs_ctx_free_t,
    binding_ctx_free: ecs_ctx_free_t,
    entity: ecs_entity_t,
    self: ecs_entity_t,
    observable: [*c]ecs_observable_t,
    id: u64,
    last_event_id: i32,
    is_monitor: bool,
};
pub const ecs_observer_t = struct_ecs_observer_t;
pub const ecs_order_by_action_t = ?fn (ecs_entity_t, ?*const anyopaque, ecs_entity_t, ?*const anyopaque) callconv(.C) c_int;
pub const ecs_group_by_action_t = ?fn (?*ecs_world_t, ecs_type_t, ecs_id_t, ?*anyopaque) callconv(.C) u64;
pub const ecs_module_action_t = ?fn (?*ecs_world_t) callconv(.C) void;
pub const ecs_fini_action_t = ?fn (?*ecs_world_t, ?*anyopaque) callconv(.C) void;
pub const ecs_compare_action_t = ?fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int;
pub const ecs_hash_value_action_t = ?fn (?*const anyopaque) callconv(.C) u64;
pub const struct_ecs_stage_t = opaque {};
pub const ecs_stage_t = struct_ecs_stage_t;
pub const struct_ecs_column_t = opaque {};
pub const ecs_column_t = struct_ecs_column_t;
pub const struct_ecs_data_t = opaque {};
pub const ecs_data_t = struct_ecs_data_t;
pub const struct_ecs_switch_t = opaque {};
pub const ecs_switch_t = struct_ecs_switch_t;
pub const struct_ecs_table_record_t = opaque {};
pub const struct_ecs_ids_t = extern struct {
    array: [*c]ecs_id_t,
    count: i32,
    size: i32,
};
pub const ecs_ids_t = struct_ecs_ids_t;
pub const struct_ecs_sparse_iter_t = extern struct {
    sparse: ?*ecs_sparse_t,
    ids: [*c]const u64,
    size: ecs_size_t,
    i: i32,
    count: i32,
};
pub const ecs_sparse_iter_t = struct_ecs_sparse_iter_t;
pub const ecs_xtor_t = ?fn (?*ecs_world_t, ecs_entity_t, [*c]const ecs_entity_t, ?*anyopaque, usize, i32, ?*anyopaque) callconv(.C) void;
pub const ecs_copy_t = ?fn (?*ecs_world_t, ecs_entity_t, [*c]const ecs_entity_t, [*c]const ecs_entity_t, ?*anyopaque, ?*const anyopaque, usize, i32, ?*anyopaque) callconv(.C) void;
pub const ecs_move_t = ?fn (?*ecs_world_t, ecs_entity_t, [*c]const ecs_entity_t, [*c]const ecs_entity_t, ?*anyopaque, ?*anyopaque, usize, i32, ?*anyopaque) callconv(.C) void;
pub const EcsComponentLifecycle = struct_EcsComponentLifecycle;
pub const ecs_copy_ctor_t = ?fn (?*ecs_world_t, ecs_entity_t, [*c]const EcsComponentLifecycle, [*c]const ecs_entity_t, [*c]const ecs_entity_t, ?*anyopaque, ?*const anyopaque, usize, i32, ?*anyopaque) callconv(.C) void;
pub const ecs_move_ctor_t = ?fn (?*ecs_world_t, ecs_entity_t, [*c]const EcsComponentLifecycle, [*c]const ecs_entity_t, [*c]const ecs_entity_t, ?*anyopaque, ?*anyopaque, usize, i32, ?*anyopaque) callconv(.C) void;
pub const struct_EcsComponentLifecycle = extern struct {
    ctor: ecs_xtor_t,
    dtor: ecs_xtor_t,
    copy: ecs_copy_t,
    move: ecs_move_t,
    ctx: ?*anyopaque,
    copy_ctor: ecs_copy_ctor_t,
    move_ctor: ecs_move_ctor_t,
    ctor_move_dtor: ecs_move_ctor_t,
    move_dtor: ecs_move_ctor_t,
    on_set: ecs_iter_action_t,
};
pub extern fn ecs_module_path_from_c(c_name: [*c]const u8) [*c]u8;
pub extern fn ecs_component_has_actions(world: ?*const ecs_world_t, component: ecs_entity_t) bool;
pub extern fn ecs_identifier_is_0(id: [*c]const u8) bool;
pub extern fn ecs_identifier_is_var(id: [*c]const u8) [*c]const u8;
pub extern fn ecs_default_ctor(world: ?*ecs_world_t, component: ecs_entity_t, entity_ptr: [*c]const ecs_entity_t, ptr: ?*anyopaque, size: usize, count: i32, ctx: ?*anyopaque) void;
pub extern fn _flecs_sparse_new(elem_size: ecs_size_t) ?*ecs_sparse_t;
pub extern fn flecs_sparse_set_id_source(sparse: ?*ecs_sparse_t, id_source: [*c]u64) void;
pub extern fn flecs_sparse_free(sparse: ?*ecs_sparse_t) void;
pub extern fn flecs_sparse_clear(sparse: ?*ecs_sparse_t) void;
pub extern fn _flecs_sparse_add(sparse: ?*ecs_sparse_t, elem_size: ecs_size_t) ?*anyopaque;
pub extern fn flecs_sparse_last_id(sparse: ?*const ecs_sparse_t) u64;
pub extern fn flecs_sparse_new_id(sparse: ?*ecs_sparse_t) u64;
pub extern fn flecs_sparse_new_ids(sparse: ?*ecs_sparse_t, count: i32) [*c]const u64;
pub extern fn flecs_sparse_remove(sparse: ?*ecs_sparse_t, id: u64) void;
pub extern fn _flecs_sparse_remove_get(sparse: ?*ecs_sparse_t, elem_size: ecs_size_t, id: u64) ?*anyopaque;
pub extern fn flecs_sparse_exists(sparse: ?*const ecs_sparse_t, id: u64) bool;
pub extern fn flecs_sparse_is_alive(sparse: ?*const ecs_sparse_t, id: u64) bool;
pub extern fn flecs_sparse_get_alive(sparse: ?*const ecs_sparse_t, id: u64) u64;
pub extern fn _flecs_sparse_get_dense(sparse: ?*const ecs_sparse_t, elem_size: ecs_size_t, index: i32) ?*anyopaque;
pub extern fn flecs_sparse_count(sparse: ?*const ecs_sparse_t) i32;
pub extern fn flecs_sparse_size(sparse: ?*const ecs_sparse_t) i32;
pub extern fn _flecs_sparse_get(sparse: ?*const ecs_sparse_t, elem_size: ecs_size_t, id: u64) ?*anyopaque;
pub extern fn _flecs_sparse_get_any(sparse: ?*ecs_sparse_t, elem_size: ecs_size_t, id: u64) ?*anyopaque;
pub extern fn _flecs_sparse_ensure(sparse: ?*ecs_sparse_t, elem_size: ecs_size_t, id: u64) ?*anyopaque;
pub extern fn _flecs_sparse_set(sparse: ?*ecs_sparse_t, elem_size: ecs_size_t, id: u64, value: ?*anyopaque) ?*anyopaque;
pub extern fn flecs_sparse_ids(sparse: ?*const ecs_sparse_t) [*c]const u64;
pub extern fn flecs_sparse_set_size(sparse: ?*ecs_sparse_t, elem_count: i32) void;
pub extern fn flecs_sparse_copy(src: ?*const ecs_sparse_t) ?*ecs_sparse_t;
pub extern fn flecs_sparse_restore(dst: ?*ecs_sparse_t, src: ?*const ecs_sparse_t) void;
pub extern fn flecs_sparse_memory(sparse: ?*ecs_sparse_t, allocd: [*c]i32, used: [*c]i32) void;
pub extern fn _flecs_sparse_iter(sparse: ?*ecs_sparse_t, elem_size: ecs_size_t) ecs_sparse_iter_t;
pub extern fn _ecs_sparse_new(elem_size: ecs_size_t) ?*ecs_sparse_t;
pub extern fn _ecs_sparse_add(sparse: ?*ecs_sparse_t, elem_size: ecs_size_t) ?*anyopaque;
pub extern fn ecs_sparse_last_id(sparse: ?*const ecs_sparse_t) u64;
pub extern fn ecs_sparse_count(sparse: ?*const ecs_sparse_t) i32;
pub extern fn flecs_sparse_set_generation(sparse: ?*ecs_sparse_t, id: u64) void;
pub extern fn _ecs_sparse_get_dense(sparse: ?*const ecs_sparse_t, elem_size: ecs_size_t, index: i32) ?*anyopaque;
pub extern fn _ecs_sparse_get(sparse: ?*const ecs_sparse_t, elem_size: ecs_size_t, id: u64) ?*anyopaque;
pub const ecs_hashmap_t = extern struct {
    hash: ecs_hash_value_action_t,
    compare: ecs_compare_action_t,
    key_size: ecs_size_t,
    value_size: ecs_size_t,
    impl: ?*ecs_map_t,
};
pub const struct_ecs_hm_bucket_t = opaque {};
pub const flecs_hashmap_iter_t = extern struct {
    it: ecs_map_iter_t,
    bucket: ?*struct_ecs_hm_bucket_t,
    index: i32,
};
pub const flecs_hashmap_result_t = extern struct {
    key: ?*anyopaque,
    value: ?*anyopaque,
    hash: u64,
};
pub extern fn _flecs_hashmap_new(key_size: ecs_size_t, value_size: ecs_size_t, hash: ecs_hash_value_action_t, compare: ecs_compare_action_t) ecs_hashmap_t;
pub extern fn flecs_hashmap_free(map: ecs_hashmap_t) void;
pub extern fn _flecs_hashmap_get(map: ecs_hashmap_t, key_size: ecs_size_t, key: ?*const anyopaque, value_size: ecs_size_t) ?*anyopaque;
pub extern fn _flecs_hashmap_ensure(map: ecs_hashmap_t, key_size: ecs_size_t, key: ?*const anyopaque, value_size: ecs_size_t) flecs_hashmap_result_t;
pub extern fn _flecs_hashmap_set(map: ecs_hashmap_t, key_size: ecs_size_t, key: ?*anyopaque, value_size: ecs_size_t, value: ?*const anyopaque) void;
pub extern fn _flecs_hashmap_remove(map: ecs_hashmap_t, key_size: ecs_size_t, key: ?*const anyopaque, value_size: ecs_size_t) void;
pub extern fn _flecs_hashmap_remove_w_hash(map: ecs_hashmap_t, key_size: ecs_size_t, key: ?*const anyopaque, value_size: ecs_size_t, hash: u64) void;
pub extern fn flecs_hashmap_copy(src: ecs_hashmap_t) ecs_hashmap_t;
pub extern fn flecs_hashmap_iter(map: ecs_hashmap_t) flecs_hashmap_iter_t;
pub extern fn _flecs_hashmap_next(it: [*c]flecs_hashmap_iter_t, key_size: ecs_size_t, key_out: ?*anyopaque, value_size: ecs_size_t) ?*anyopaque;
pub const struct_ecs_entity_desc_t = extern struct {
    _canary: i32,
    entity: ecs_entity_t,
    name: [*c]const u8,
    sep: [*c]const u8,
    root_sep: [*c]const u8,
    symbol: [*c]const u8,
    use_low_id: bool,
    add: [32]ecs_id_t,
    add_expr: [*c]const u8,
};
pub const ecs_entity_desc_t = struct_ecs_entity_desc_t;
pub const struct_ecs_bulk_desc_t = extern struct {
    _canary: i32,
    entities: [*c]ecs_entity_t,
    count: i32,
    ids: [32]ecs_id_t,
    data: [*c]?*anyopaque,
    table: ?*ecs_table_t,
};
pub const ecs_bulk_desc_t = struct_ecs_bulk_desc_t;
pub const struct_ecs_component_desc_t = extern struct {
    _canary: i32,
    entity: ecs_entity_desc_t,
    size: usize,
    alignment: usize,
};
pub const ecs_component_desc_t = struct_ecs_component_desc_t;
pub const struct_ecs_type_desc_t = extern struct {
    _canary: i32,
    entity: ecs_entity_desc_t,
    ids: [32]ecs_id_t,
    ids_expr: [*c]const u8,
};
pub const ecs_type_desc_t = struct_ecs_type_desc_t;
pub const struct_ecs_filter_desc_t = extern struct {
    _canary: i32,
    terms: [16]ecs_term_t,
    terms_buffer: [*c]ecs_term_t,
    terms_buffer_count: i32,
    filter: bool,
    instanced: bool,
    match_empty_tables: bool,
    expr: [*c]const u8,
    name: [*c]const u8,
};
pub const ecs_filter_desc_t = struct_ecs_filter_desc_t;
pub const struct_ecs_query_desc_t = extern struct {
    _canary: i32,
    filter: ecs_filter_desc_t,
    order_by_component: ecs_entity_t,
    order_by: ecs_order_by_action_t,
    group_by_id: ecs_id_t,
    group_by: ecs_group_by_action_t,
    group_by_ctx: ?*anyopaque,
    group_by_ctx_free: ecs_ctx_free_t,
    parent: ?*ecs_query_t,
    system: ecs_entity_t,
};
pub const ecs_query_desc_t = struct_ecs_query_desc_t;
pub const struct_ecs_trigger_desc_t = extern struct {
    _canary: i32,
    entity: ecs_entity_desc_t,
    term: ecs_term_t,
    expr: [*c]const u8,
    events: [8]ecs_entity_t,
    match_prefab: bool,
    match_disabled: bool,
    instanced: bool,
    yield_existing: bool,
    callback: ecs_iter_action_t,
    self: ecs_entity_t,
    ctx: ?*anyopaque,
    binding_ctx: ?*anyopaque,
    ctx_free: ecs_ctx_free_t,
    binding_ctx_free: ecs_ctx_free_t,
    observable: ?*ecs_poly_t,
    last_event_id: [*c]i32,
};
pub const ecs_trigger_desc_t = struct_ecs_trigger_desc_t;
pub const struct_ecs_observer_desc_t = extern struct {
    _canary: i32,
    entity: ecs_entity_desc_t,
    filter: ecs_filter_desc_t,
    events: [8]ecs_entity_t,
    yield_existing: bool,
    callback: ecs_iter_action_t,
    run: ecs_run_action_t,
    self: ecs_entity_t,
    ctx: ?*anyopaque,
    binding_ctx: ?*anyopaque,
    ctx_free: ecs_ctx_free_t,
    binding_ctx_free: ecs_ctx_free_t,
    observable: ?*ecs_poly_t,
};
pub const ecs_observer_desc_t = struct_ecs_observer_desc_t;
pub const struct_EcsIdentifier = extern struct {
    value: [*c]u8,
    length: ecs_size_t,
    hash: u64,
};
pub const EcsIdentifier = struct_EcsIdentifier;
pub const struct_EcsComponent = extern struct {
    size: ecs_size_t,
    alignment: ecs_size_t,
};
pub const EcsComponent = struct_EcsComponent;
pub const struct_EcsType = extern struct {
    type: ecs_type_t,
    normalized: ?*ecs_table_t,
};
pub const EcsType = struct_EcsType;
pub const struct_EcsTrigger = extern struct {
    trigger: [*c]const ecs_trigger_t,
};
pub const EcsTrigger = struct_EcsTrigger;
pub const struct_EcsObserver = extern struct {
    observer: [*c]const ecs_observer_t,
};
pub const EcsObserver = struct_EcsObserver;
pub const struct_EcsQuery = extern struct {
    query: ?*ecs_query_t,
};
pub const EcsQuery = struct_EcsQuery;
pub const EcsIterable = ecs_iterable_t;
pub const struct_ecs_world_info_t = extern struct {
    last_component_id: ecs_entity_t,
    last_id: ecs_entity_t,
    min_id: ecs_entity_t,
    max_id: ecs_entity_t,
    delta_time_raw: f32,
    delta_time: f32,
    time_scale: f32,
    target_fps: f32,
    frame_time_total: f32,
    system_time_total: f32,
    merge_time_total: f32,
    world_time_total: f32,
    world_time_total_raw: f32,
    frame_count_total: i32,
    merge_count_total: i32,
    pipeline_build_count_total: i32,
    systems_ran_frame: i32,
};
pub const ecs_world_info_t = struct_ecs_world_info_t;
pub extern const ECS_CASE: ecs_id_t;
pub extern const ECS_SWITCH: ecs_id_t;
pub extern const ECS_PAIR: ecs_id_t;
pub extern const ECS_OVERRIDE: ecs_id_t;
pub extern const ECS_DISABLED: ecs_id_t;
pub extern const FLECS__EEcsComponent: ecs_entity_t;
pub extern const FLECS__EEcsComponentLifecycle: ecs_entity_t;
pub extern const FLECS__EEcsType: ecs_entity_t;
pub extern const FLECS__EEcsIdentifier: ecs_entity_t;
pub extern const FLECS__EEcsTrigger: ecs_entity_t;
pub extern const FLECS__EEcsQuery: ecs_entity_t;
pub extern const FLECS__EEcsObserver: ecs_entity_t;
pub extern const FLECS__EEcsIterable: ecs_entity_t;
pub extern const FLECS__EEcsSystem: ecs_entity_t;
pub extern const FLECS__EEcsTickSource: ecs_entity_t;
pub extern const FLECS__EEcsPipelineQuery: ecs_entity_t;
pub extern const FLECS__EEcsTimer: ecs_entity_t;
pub extern const FLECS__EEcsRateFilter: ecs_entity_t;
pub extern const EcsFlecs: ecs_entity_t;
pub extern const EcsFlecsCore: ecs_entity_t;
pub extern const EcsFlecsHidden: ecs_entity_t;
pub extern const EcsWorld: ecs_entity_t;
pub extern const EcsWildcard: ecs_entity_t;
pub extern const EcsAny: ecs_entity_t;
pub extern const EcsThis: ecs_entity_t;
pub extern const EcsTransitive: ecs_entity_t;
pub extern const EcsReflexive: ecs_entity_t;
pub extern const EcsFinal: ecs_entity_t;
pub extern const EcsDontInherit: ecs_entity_t;
pub extern const EcsSymmetric: ecs_entity_t;
pub extern const EcsExclusive: ecs_entity_t;
pub extern const EcsAcyclic: ecs_entity_t;
pub extern const EcsWith: ecs_entity_t;
pub extern const EcsTag: ecs_entity_t;
pub extern const EcsName: ecs_entity_t;
pub extern const EcsSymbol: ecs_entity_t;
pub extern const EcsChildOf: ecs_entity_t;
pub extern const EcsIsA: ecs_entity_t;
pub extern const EcsModule: ecs_entity_t;
pub extern const EcsPrefab: ecs_entity_t;
pub extern const EcsDisabled: ecs_entity_t;
pub extern const EcsOnAdd: ecs_entity_t;
pub extern const EcsOnRemove: ecs_entity_t;
pub extern const EcsOnSet: ecs_entity_t;
pub extern const EcsUnSet: ecs_entity_t;
pub extern const EcsMonitor: ecs_entity_t;
pub extern const EcsOnDelete: ecs_entity_t;
pub extern const EcsOnTableEmpty: ecs_entity_t;
pub extern const EcsOnTableFill: ecs_entity_t;
pub extern const EcsOnDeleteObject: ecs_entity_t;
pub extern const EcsRemove: ecs_entity_t;
pub extern const EcsDelete: ecs_entity_t;
pub extern const EcsThrow: ecs_entity_t;
pub extern const EcsDefaultChildComponent: ecs_entity_t;
pub extern const EcsInactive: ecs_entity_t;
pub extern const EcsPipeline: ecs_entity_t;
pub extern const EcsPreFrame: ecs_entity_t;
pub extern const EcsOnLoad: ecs_entity_t;
pub extern const EcsPostLoad: ecs_entity_t;
pub extern const EcsPreUpdate: ecs_entity_t;
pub extern const EcsOnUpdate: ecs_entity_t;
pub extern const EcsOnValidate: ecs_entity_t;
pub extern const EcsPostUpdate: ecs_entity_t;
pub extern const EcsPreStore: ecs_entity_t;
pub extern const EcsOnStore: ecs_entity_t;
pub extern const EcsPostFrame: ecs_entity_t;
pub extern fn ecs_init() ?*ecs_world_t;
pub extern fn ecs_mini() ?*ecs_world_t;
pub extern fn ecs_init_w_args(argc: c_int, argv: [*c][*c]u8) ?*ecs_world_t;
pub extern fn ecs_fini(world: ?*ecs_world_t) c_int;
pub extern fn ecs_is_fini(world: ?*const ecs_world_t) bool;
pub extern fn ecs_atfini(world: ?*ecs_world_t, action: ecs_fini_action_t, ctx: ?*anyopaque) void;
pub extern fn ecs_run_post_frame(world: ?*ecs_world_t, action: ecs_fini_action_t, ctx: ?*anyopaque) void;
pub extern fn ecs_quit(world: ?*ecs_world_t) void;
pub extern fn ecs_should_quit(world: ?*const ecs_world_t) bool;
pub extern fn ecs_set_component_actions_w_id(world: ?*ecs_world_t, id: ecs_id_t, actions: [*c]EcsComponentLifecycle) void;
pub extern fn ecs_set_context(world: ?*ecs_world_t, ctx: ?*anyopaque) void;
pub extern fn ecs_get_context(world: ?*const ecs_world_t) ?*anyopaque;
pub extern fn ecs_get_world_info(world: ?*const ecs_world_t) [*c]const ecs_world_info_t;
pub extern fn ecs_dim(world: ?*ecs_world_t, entity_count: i32) void;
pub extern fn ecs_set_entity_range(world: ?*ecs_world_t, id_start: ecs_entity_t, id_end: ecs_entity_t) void;
pub extern fn ecs_set_entity_generation(world: ?*ecs_world_t, entity_with_generation: ecs_entity_t) void;
pub extern fn ecs_enable_range_check(world: ?*ecs_world_t, enable: bool) bool;
pub extern fn ecs_enable_locking(world: ?*ecs_world_t, enable: bool) bool;
pub extern fn ecs_lock(world: ?*ecs_world_t) void;
pub extern fn ecs_unlock(world: ?*ecs_world_t) void;
pub extern fn ecs_begin_wait(world: ?*ecs_world_t) void;
pub extern fn ecs_end_wait(world: ?*ecs_world_t) void;
pub extern fn ecs_measure_frame_time(world: ?*ecs_world_t, enable: bool) void;
pub extern fn ecs_measure_system_time(world: ?*ecs_world_t, enable: bool) void;
pub extern fn ecs_set_target_fps(world: ?*ecs_world_t, fps: f32) void;
pub extern fn ecs_get_threads(world: ?*ecs_world_t) i32;
pub extern fn ecs_force_aperiodic(world: ?*ecs_world_t) void;
pub extern fn ecs_new_id(world: ?*ecs_world_t) ecs_entity_t;
pub extern fn ecs_new_low_id(world: ?*ecs_world_t) ecs_entity_t;
pub extern fn ecs_new_w_id(world: ?*ecs_world_t, id: ecs_id_t) ecs_entity_t;
pub extern fn ecs_entity_init(world: ?*ecs_world_t, desc: [*c]const ecs_entity_desc_t) ecs_entity_t;
pub extern fn ecs_bulk_init(world: ?*ecs_world_t, desc: [*c]const ecs_bulk_desc_t) [*c]const ecs_entity_t;
pub extern fn ecs_component_init(world: ?*ecs_world_t, desc: [*c]const ecs_component_desc_t) ecs_entity_t;
pub extern fn ecs_type_init(world: ?*ecs_world_t, desc: [*c]const ecs_type_desc_t) ecs_entity_t;
pub extern fn ecs_bulk_new_w_id(world: ?*ecs_world_t, id: ecs_id_t, count: i32) [*c]const ecs_entity_t;
pub extern fn ecs_clone(world: ?*ecs_world_t, dst: ecs_entity_t, src: ecs_entity_t, copy_value: bool) ecs_entity_t;
pub extern fn ecs_add_id(world: ?*ecs_world_t, entity: ecs_entity_t, id: ecs_id_t) void;
pub extern fn ecs_remove_id(world: ?*ecs_world_t, entity: ecs_entity_t, id: ecs_id_t) void;
pub extern fn ecs_enable_component_w_id(world: ?*ecs_world_t, entity: ecs_entity_t, id: ecs_id_t, enable: bool) void;
pub extern fn ecs_is_component_enabled_w_id(world: ?*const ecs_world_t, entity: ecs_entity_t, id: ecs_id_t) bool;
pub extern fn ecs_make_pair(relation: ecs_entity_t, object: ecs_entity_t) ecs_id_t;
pub extern fn ecs_clear(world: ?*ecs_world_t, entity: ecs_entity_t) void;
pub extern fn ecs_delete(world: ?*ecs_world_t, entity: ecs_entity_t) void;
pub extern fn ecs_delete_with(world: ?*ecs_world_t, id: ecs_id_t) void;
pub extern fn ecs_remove_all(world: ?*ecs_world_t, id: ecs_id_t) void;
pub extern fn ecs_get_id(world: ?*const ecs_world_t, entity: ecs_entity_t, id: ecs_id_t) ?*const anyopaque;
pub extern fn ecs_get_ref_id(world: ?*const ecs_world_t, ref: [*c]ecs_ref_t, entity: ecs_entity_t, id: ecs_id_t) ?*const anyopaque;
pub extern fn ecs_get_case(world: ?*const ecs_world_t, e: ecs_entity_t, sw: ecs_entity_t) ecs_entity_t;
pub extern fn ecs_get_mut_id(world: ?*ecs_world_t, entity: ecs_entity_t, id: ecs_id_t, is_added: [*c]bool) ?*anyopaque;
pub extern fn ecs_emplace_id(world: ?*ecs_world_t, entity: ecs_entity_t, id: ecs_id_t) ?*anyopaque;
pub extern fn ecs_modified_id(world: ?*ecs_world_t, entity: ecs_entity_t, id: ecs_id_t) void;
pub extern fn ecs_set_id(world: ?*ecs_world_t, entity: ecs_entity_t, id: ecs_id_t, size: usize, ptr: ?*const anyopaque) ecs_entity_t;
pub extern fn ecs_is_valid(world: ?*const ecs_world_t, e: ecs_entity_t) bool;
pub extern fn ecs_is_alive(world: ?*const ecs_world_t, e: ecs_entity_t) bool;
pub extern fn ecs_strip_generation(e: ecs_entity_t) ecs_id_t;
pub extern fn ecs_get_alive(world: ?*const ecs_world_t, e: ecs_entity_t) ecs_entity_t;
pub extern fn ecs_ensure(world: ?*ecs_world_t, entity: ecs_entity_t) void;
pub extern fn ecs_ensure_id(world: ?*ecs_world_t, id: ecs_id_t) void;
pub extern fn ecs_exists(world: ?*const ecs_world_t, entity: ecs_entity_t) bool;
pub extern fn ecs_get_type(world: ?*const ecs_world_t, entity: ecs_entity_t) ecs_type_t;
pub extern fn ecs_get_table(world: ?*const ecs_world_t, entity: ecs_entity_t) ?*ecs_table_t;
pub extern fn ecs_get_storage_table(world: ?*const ecs_world_t, entity: ecs_entity_t) ?*ecs_table_t;
pub extern fn ecs_get_typeid(world: ?*const ecs_world_t, id: ecs_id_t) ecs_entity_t;
pub extern fn ecs_id_is_tag(world: ?*const ecs_world_t, id: ecs_id_t) ecs_entity_t;
pub extern fn ecs_get_name(world: ?*const ecs_world_t, entity: ecs_entity_t) [*c]const u8;
pub extern fn ecs_get_symbol(world: ?*const ecs_world_t, entity: ecs_entity_t) [*c]const u8;
pub extern fn ecs_set_name(world: ?*ecs_world_t, entity: ecs_entity_t, name: [*c]const u8) ecs_entity_t;
pub extern fn ecs_set_symbol(world: ?*ecs_world_t, entity: ecs_entity_t, symbol: [*c]const u8) ecs_entity_t;
pub extern fn ecs_role_str(role: ecs_id_t) [*c]const u8;
pub extern fn ecs_id_str(world: ?*const ecs_world_t, id: ecs_id_t) [*c]u8;
pub extern fn ecs_id_str_buf(world: ?*const ecs_world_t, id: ecs_id_t, buf: [*c]ecs_strbuf_t) void;
pub extern fn ecs_type_str(world: ?*const ecs_world_t, @"type": ecs_type_t) [*c]u8;
pub extern fn ecs_has_id(world: ?*const ecs_world_t, entity: ecs_entity_t, id: ecs_id_t) bool;
pub extern fn ecs_get_object(world: ?*const ecs_world_t, entity: ecs_entity_t, rel: ecs_entity_t, index: i32) ecs_entity_t;
pub extern fn ecs_get_object_for_id(world: ?*const ecs_world_t, entity: ecs_entity_t, rel: ecs_entity_t, id: ecs_id_t) ecs_entity_t;
pub extern fn ecs_enable(world: ?*ecs_world_t, entity: ecs_entity_t, enabled: bool) void;
pub extern fn ecs_count_id(world: ?*const ecs_world_t, entity: ecs_id_t) i32;
pub extern fn ecs_lookup(world: ?*const ecs_world_t, name: [*c]const u8) ecs_entity_t;
pub extern fn ecs_lookup_child(world: ?*const ecs_world_t, parent: ecs_entity_t, name: [*c]const u8) ecs_entity_t;
pub extern fn ecs_lookup_path_w_sep(world: ?*const ecs_world_t, parent: ecs_entity_t, path: [*c]const u8, sep: [*c]const u8, prefix: [*c]const u8, recursive: bool) ecs_entity_t;
pub extern fn ecs_lookup_symbol(world: ?*const ecs_world_t, symbol: [*c]const u8, lookup_as_path: bool) ecs_entity_t;
pub extern fn ecs_use(world: ?*ecs_world_t, entity: ecs_entity_t, name: [*c]const u8) void;
pub extern fn ecs_get_path_w_sep(world: ?*const ecs_world_t, parent: ecs_entity_t, child: ecs_entity_t, sep: [*c]const u8, prefix: [*c]const u8) [*c]u8;
pub extern fn ecs_get_path_w_sep_buf(world: ?*const ecs_world_t, parent: ecs_entity_t, child: ecs_entity_t, sep: [*c]const u8, prefix: [*c]const u8, buf: [*c]ecs_strbuf_t) void;
pub extern fn ecs_new_from_path_w_sep(world: ?*ecs_world_t, parent: ecs_entity_t, path: [*c]const u8, sep: [*c]const u8, prefix: [*c]const u8) ecs_entity_t;
pub extern fn ecs_add_path_w_sep(world: ?*ecs_world_t, entity: ecs_entity_t, parent: ecs_entity_t, path: [*c]const u8, sep: [*c]const u8, prefix: [*c]const u8) ecs_entity_t;
pub extern fn ecs_set_scope(world: ?*ecs_world_t, scope: ecs_entity_t) ecs_entity_t;
pub extern fn ecs_get_scope(world: ?*const ecs_world_t) ecs_entity_t;
pub extern fn ecs_set_with(world: ?*ecs_world_t, id: ecs_id_t) ecs_entity_t;
pub extern fn ecs_get_with(world: ?*const ecs_world_t) ecs_id_t;
pub extern fn ecs_set_name_prefix(world: ?*ecs_world_t, prefix: [*c]const u8) [*c]const u8;
pub extern fn ecs_set_lookup_path(world: ?*ecs_world_t, lookup_path: [*c]const ecs_entity_t) [*c]ecs_entity_t;
pub extern fn ecs_get_lookup_path(world: ?*const ecs_world_t) [*c]ecs_entity_t;
pub extern fn ecs_term_iter(world: ?*const ecs_world_t, term: [*c]ecs_term_t) ecs_iter_t;
pub extern fn ecs_term_chain_iter(it: [*c]const ecs_iter_t, term: [*c]ecs_term_t) ecs_iter_t;
pub extern fn ecs_term_next(it: [*c]ecs_iter_t) bool;
pub extern fn ecs_term_id_is_set(id: [*c]const ecs_term_id_t) bool;
pub extern fn ecs_term_is_initialized(term: [*c]const ecs_term_t) bool;
pub extern fn ecs_term_is_trivial(term: [*c]const ecs_term_t) bool;
pub extern fn ecs_term_finalize(world: ?*const ecs_world_t, name: [*c]const u8, term: [*c]ecs_term_t) c_int;
pub extern fn ecs_term_copy(src: [*c]const ecs_term_t) ecs_term_t;
pub extern fn ecs_term_move(src: [*c]ecs_term_t) ecs_term_t;
pub extern fn ecs_term_fini(term: [*c]ecs_term_t) void;
pub extern fn ecs_id_match(id: ecs_id_t, pattern: ecs_id_t) bool;
pub extern fn ecs_id_is_pair(id: ecs_id_t) bool;
pub extern fn ecs_id_is_wildcard(id: ecs_id_t) bool;
pub extern fn ecs_filter_init(world: ?*const ecs_world_t, filter_out: [*c]ecs_filter_t, desc: [*c]const ecs_filter_desc_t) c_int;
pub extern fn ecs_filter_fini(filter: [*c]ecs_filter_t) void;
pub extern fn ecs_filter_finalize(world: ?*const ecs_world_t, filter: [*c]ecs_filter_t) c_int;
pub extern fn ecs_term_str(world: ?*const ecs_world_t, term: [*c]const ecs_term_t) [*c]u8;
pub extern fn ecs_filter_str(world: ?*const ecs_world_t, filter: [*c]const ecs_filter_t) [*c]u8;
pub extern fn ecs_filter_iter(world: ?*const ecs_world_t, filter: [*c]const ecs_filter_t) ecs_iter_t;
pub extern fn ecs_filter_chain_iter(it: [*c]const ecs_iter_t, filter: [*c]const ecs_filter_t) ecs_iter_t;
pub extern fn ecs_filter_pivot_term(world: ?*const ecs_world_t, filter: [*c]const ecs_filter_t) i32;
pub extern fn ecs_filter_next(it: [*c]ecs_iter_t) bool;
pub extern fn ecs_filter_next_instanced(it: [*c]ecs_iter_t) bool;
pub extern fn ecs_filter_move(dst: [*c]ecs_filter_t, src: [*c]ecs_filter_t) void;
pub extern fn ecs_filter_copy(dst: [*c]ecs_filter_t, src: [*c]const ecs_filter_t) void;
pub extern fn ecs_query_init(world: ?*ecs_world_t, desc: [*c]const ecs_query_desc_t) ?*ecs_query_t;
pub extern fn ecs_query_fini(query: ?*ecs_query_t) void;
pub extern fn ecs_query_get_filter(query: ?*ecs_query_t) [*c]const ecs_filter_t;
pub extern fn ecs_query_iter(world: ?*const ecs_world_t, query: ?*ecs_query_t) ecs_iter_t;
pub extern fn ecs_query_next(iter: [*c]ecs_iter_t) bool;
pub extern fn ecs_query_next_instanced(iter: [*c]ecs_iter_t) bool;
pub extern fn ecs_query_changed(query: ?*ecs_query_t, it: [*c]const ecs_iter_t) bool;
pub extern fn ecs_query_skip(it: [*c]ecs_iter_t) void;
pub extern fn ecs_query_orphaned(query: ?*ecs_query_t) bool;
pub extern fn ecs_trigger_init(world: ?*ecs_world_t, desc: [*c]const ecs_trigger_desc_t) ecs_entity_t;
pub extern fn ecs_get_trigger_ctx(world: ?*const ecs_world_t, trigger: ecs_entity_t) ?*anyopaque;
pub extern fn ecs_get_trigger_binding_ctx(world: ?*const ecs_world_t, trigger: ecs_entity_t) ?*anyopaque;
pub const struct_ecs_event_desc_t = extern struct {
    event: ecs_entity_t,
    ids: [*c]ecs_ids_t,
    table: ?*ecs_table_t,
    other_table: ?*ecs_table_t,
    offset: i32,
    count: i32,
    param: ?*const anyopaque,
    observable: ?*ecs_poly_t,
    table_event: bool,
    relation: ecs_entity_t,
};
pub const ecs_event_desc_t = struct_ecs_event_desc_t;
pub extern fn ecs_emit(world: ?*ecs_world_t, desc: [*c]ecs_event_desc_t) void;
pub extern fn ecs_observer_init(world: ?*ecs_world_t, desc: [*c]const ecs_observer_desc_t) ecs_entity_t;
pub extern fn ecs_get_observer_ctx(world: ?*const ecs_world_t, observer: ecs_entity_t) ?*anyopaque;
pub extern fn ecs_get_observer_binding_ctx(world: ?*const ecs_world_t, observer: ecs_entity_t) ?*anyopaque;
pub extern fn ecs_iter_poly(world: ?*const ecs_world_t, poly: ?*const ecs_poly_t, iter: [*c]ecs_iter_t, filter: [*c]ecs_term_t) void;
pub extern fn ecs_iter_next(it: [*c]ecs_iter_t) bool;
pub extern fn ecs_iter_fini(it: [*c]ecs_iter_t) void;
pub extern fn ecs_iter_count(it: [*c]ecs_iter_t) bool;
pub extern fn ecs_page_iter(it: [*c]const ecs_iter_t, offset: i32, limit: i32) ecs_iter_t;
pub extern fn ecs_page_next(it: [*c]ecs_iter_t) bool;
pub extern fn ecs_worker_iter(it: [*c]const ecs_iter_t, index: i32, count: i32) ecs_iter_t;
pub extern fn ecs_worker_next(it: [*c]ecs_iter_t) bool;
pub extern fn ecs_term_w_size(it: [*c]const ecs_iter_t, size: usize, index: i32) ?*anyopaque;
pub extern fn ecs_term_is_readonly(it: [*c]const ecs_iter_t, index: i32) bool;
pub extern fn ecs_term_is_set(it: [*c]const ecs_iter_t, index: i32) bool;
pub extern fn ecs_term_is_owned(it: [*c]const ecs_iter_t, index: i32) bool;
pub extern fn ecs_iter_str(it: [*c]const ecs_iter_t) [*c]u8;
pub extern fn ecs_iter_find_column(it: [*c]const ecs_iter_t, id: ecs_id_t) i32;
pub extern fn ecs_iter_column_w_size(it: [*c]const ecs_iter_t, size: usize, index: i32) ?*anyopaque;
pub extern fn ecs_iter_column_size(it: [*c]const ecs_iter_t, index: i32) usize;
pub extern fn ecs_frame_begin(world: ?*ecs_world_t, delta_time: f32) f32;
pub extern fn ecs_frame_end(world: ?*ecs_world_t) void;
pub extern fn ecs_staging_begin(world: ?*ecs_world_t) bool;
pub extern fn ecs_staging_end(world: ?*ecs_world_t) void;
pub extern fn ecs_merge(world: ?*ecs_world_t) void;
pub extern fn ecs_defer_begin(world: ?*ecs_world_t) bool;
pub extern fn ecs_is_deferred(world: ?*const ecs_world_t) bool;
pub extern fn ecs_defer_end(world: ?*ecs_world_t) bool;
pub extern fn ecs_set_automerge(world: ?*ecs_world_t, automerge: bool) void;
pub extern fn ecs_set_stages(world: ?*ecs_world_t, stages: i32) void;
pub extern fn ecs_get_stage_count(world: ?*const ecs_world_t) i32;
pub extern fn ecs_get_stage_id(world: ?*const ecs_world_t) i32;
pub extern fn ecs_get_stage(world: ?*const ecs_world_t, stage_id: i32) ?*ecs_world_t;
pub extern fn ecs_get_world(world: ?*const ecs_poly_t) ?*const ecs_world_t;
pub extern fn ecs_stage_is_readonly(world: ?*const ecs_world_t) bool;
pub extern fn ecs_async_stage_new(world: ?*ecs_world_t) ?*ecs_world_t;
pub extern fn ecs_async_stage_free(stage: ?*ecs_world_t) void;
pub extern fn ecs_stage_is_async(stage: ?*ecs_world_t) bool;
pub extern fn ecs_search(world: ?*const ecs_world_t, table: ?*const ecs_table_t, id: ecs_id_t, id_out: [*c]ecs_id_t) i32;
pub extern fn ecs_search_offset(world: ?*const ecs_world_t, table: ?*const ecs_table_t, offset: i32, id: ecs_id_t, id_out: [*c]ecs_id_t) i32;
pub extern fn ecs_search_relation(world: ?*const ecs_world_t, table: ?*const ecs_table_t, offset: i32, id: ecs_id_t, rel: ecs_entity_t, min_depth: i32, max_depth: i32, subject_out: [*c]ecs_entity_t, id_out: [*c]ecs_id_t, tr_out: [*c]?*struct_ecs_table_record_t) i32;
pub extern fn ecs_table_get_type(table: ?*const ecs_table_t) ecs_type_t;
pub extern fn ecs_table_get_storage_table(table: ?*const ecs_table_t) ?*ecs_table_t;
pub extern fn ecs_table_storage_count(table: ?*const ecs_table_t) i32;
pub extern fn ecs_table_type_to_storage_index(table: ?*const ecs_table_t, index: i32) i32;
pub extern fn ecs_table_storage_to_type_index(table: ?*const ecs_table_t, index: i32) i32;
pub extern fn ecs_table_count(table: ?*const ecs_table_t) i32;
pub extern fn ecs_table_add_id(world: ?*ecs_world_t, table: ?*ecs_table_t, id: ecs_id_t) ?*ecs_table_t;
pub extern fn ecs_table_remove_id(world: ?*ecs_world_t, table: ?*ecs_table_t, id: ecs_id_t) ?*ecs_table_t;
pub extern fn ecs_table_lock(world: ?*ecs_world_t, table: ?*ecs_table_t) void;
pub extern fn ecs_table_unlock(world: ?*ecs_world_t, table: ?*ecs_table_t) void;
pub extern fn ecs_table_has_module(table: ?*ecs_table_t) bool;
pub extern fn ecs_commit(world: ?*ecs_world_t, entity: ecs_entity_t, record: [*c]ecs_record_t, table: ?*ecs_table_t, added: [*c]ecs_ids_t, removed: [*c]ecs_ids_t) bool;
pub extern fn ecs_record_find(world: ?*const ecs_world_t, entity: ecs_entity_t) [*c]ecs_record_t;
pub extern fn ecs_record_get_column(r: [*c]ecs_record_t, column: i32, c_size: usize) ?*anyopaque;
pub const ecs_app_init_action_t = ?fn (?*ecs_world_t) callconv(.C) c_int;
pub const struct_ecs_app_desc_t = extern struct {
    target_fps: f32,
    delta_time: f32,
    threads: i32,
    enable_rest: bool,
    init: ecs_app_init_action_t,
    ctx: ?*anyopaque,
};
pub const ecs_app_desc_t = struct_ecs_app_desc_t;
pub const ecs_app_run_action_t = ?fn (?*ecs_world_t, [*c]ecs_app_desc_t) callconv(.C) c_int;
pub const ecs_app_frame_action_t = ?fn (?*ecs_world_t, [*c]const ecs_app_desc_t) callconv(.C) c_int;
pub extern fn ecs_app_run(world: ?*ecs_world_t, desc: [*c]ecs_app_desc_t) c_int;
pub extern fn ecs_app_run_frame(world: ?*ecs_world_t, desc: [*c]const ecs_app_desc_t) c_int;
pub extern fn ecs_app_set_run_action(callback: ecs_app_run_action_t) c_int;
pub extern fn ecs_app_set_frame_action(callback: ecs_app_frame_action_t) c_int;
pub extern const FLECS__EEcsRest: ecs_entity_t;
pub const EcsRest = extern struct {
    port: u16,
    ipaddr: [*c]u8,
    impl: ?*anyopaque,
};
pub extern fn FlecsRestImport(world: ?*ecs_world_t) void;
pub const struct_EcsTimer = extern struct {
    timeout: f32,
    time: f32,
    fired_count: i32,
    active: bool,
    single_shot: bool,
};
pub const EcsTimer = struct_EcsTimer;
pub const struct_EcsRateFilter = extern struct {
    src: ecs_entity_t,
    rate: i32,
    tick_count: i32,
    time_elapsed: f32,
};
pub const EcsRateFilter = struct_EcsRateFilter;
pub extern fn ecs_set_timeout(world: ?*ecs_world_t, tick_source: ecs_entity_t, timeout: f32) ecs_entity_t;
pub extern fn ecs_get_timeout(world: ?*const ecs_world_t, tick_source: ecs_entity_t) f32;
pub extern fn ecs_set_interval(world: ?*ecs_world_t, tick_source: ecs_entity_t, interval: f32) ecs_entity_t;
pub extern fn ecs_get_interval(world: ?*const ecs_world_t, tick_source: ecs_entity_t) f32;
pub extern fn ecs_start_timer(world: ?*ecs_world_t, tick_source: ecs_entity_t) void;
pub extern fn ecs_stop_timer(world: ?*ecs_world_t, tick_source: ecs_entity_t) void;
pub extern fn ecs_set_rate(world: ?*ecs_world_t, tick_source: ecs_entity_t, rate: i32, source: ecs_entity_t) ecs_entity_t;
pub extern fn ecs_set_tick_source(world: ?*ecs_world_t, system: ecs_entity_t, tick_source: ecs_entity_t) void;
pub extern fn FlecsTimerImport(world: ?*ecs_world_t) void;
pub extern fn ecs_set_pipeline(world: ?*ecs_world_t, pipeline: ecs_entity_t) void;
pub extern fn ecs_get_pipeline(world: ?*const ecs_world_t) ecs_entity_t;
pub extern fn ecs_progress(world: ?*ecs_world_t, delta_time: f32) bool;
pub extern fn ecs_set_time_scale(world: ?*ecs_world_t, scale: f32) void;
pub extern fn ecs_reset_clock(world: ?*ecs_world_t) void;
pub extern fn ecs_run_pipeline(world: ?*ecs_world_t, pipeline: ecs_entity_t, delta_time: f32) void;
pub extern fn ecs_deactivate_systems(world: ?*ecs_world_t) void;
pub extern fn ecs_set_threads(world: ?*ecs_world_t, threads: i32) void;
pub extern fn FlecsPipelineImport(world: ?*ecs_world_t) void;
pub const struct_EcsTickSource = extern struct {
    tick: bool,
    time_elapsed: f32,
};
pub const EcsTickSource = struct_EcsTickSource;
pub const EcsSystemStatusNone: c_int = 0;
pub const EcsSystemEnabled: c_int = 1;
pub const EcsSystemDisabled: c_int = 2;
pub const EcsSystemActivated: c_int = 3;
pub const EcsSystemDeactivated: c_int = 4;
pub const enum_ecs_system_status_t = c_uint;
pub const ecs_system_status_t = enum_ecs_system_status_t;
pub const ecs_system_status_action_t = ?fn (?*ecs_world_t, ecs_entity_t, ecs_system_status_t, ?*anyopaque) callconv(.C) void;
pub const struct_ecs_system_desc_t = extern struct {
    _canary: i32,
    entity: ecs_entity_desc_t,
    query: ecs_query_desc_t,
    callback: ecs_iter_action_t,
    status_callback: ecs_system_status_action_t,
    self: ecs_entity_t,
    ctx: ?*anyopaque,
    status_ctx: ?*anyopaque,
    binding_ctx: ?*anyopaque,
    ctx_free: ecs_ctx_free_t,
    status_ctx_free: ecs_ctx_free_t,
    binding_ctx_free: ecs_ctx_free_t,
    interval: f32,
    rate: i32,
    tick_source: ecs_entity_t,
    multi_threaded: bool,
    no_staging: bool,
};
pub const ecs_system_desc_t = struct_ecs_system_desc_t;
pub extern fn ecs_system_init(world: ?*ecs_world_t, desc: [*c]const ecs_system_desc_t) ecs_entity_t;
pub extern fn ecs_run(world: ?*ecs_world_t, system: ecs_entity_t, delta_time: f32, param: ?*anyopaque) ecs_entity_t;
pub extern fn ecs_run_worker(world: ?*ecs_world_t, system: ecs_entity_t, stage_current: i32, stage_count: i32, delta_time: f32, param: ?*anyopaque) ecs_entity_t;
pub extern fn ecs_run_w_filter(world: ?*ecs_world_t, system: ecs_entity_t, delta_time: f32, offset: i32, limit: i32, param: ?*anyopaque) ecs_entity_t;
pub extern fn ecs_system_get_query(world: ?*const ecs_world_t, system: ecs_entity_t) ?*ecs_query_t;
pub extern fn ecs_get_system_ctx(world: ?*const ecs_world_t, system: ecs_entity_t) ?*anyopaque;
pub extern fn ecs_get_system_binding_ctx(world: ?*const ecs_world_t, system: ecs_entity_t) ?*anyopaque;
pub extern fn FlecsSystemImport(world: ?*ecs_world_t) void;
pub extern fn FlecsCoreDocImport(world: ?*ecs_world_t) void;
pub extern const FLECS__EEcsDocDescription: ecs_entity_t;
pub extern const EcsDocBrief: ecs_entity_t;
pub extern const EcsDocDetail: ecs_entity_t;
pub extern const EcsDocLink: ecs_entity_t;
pub const struct_EcsDocDescription = extern struct {
    value: [*c]const u8,
};
pub const EcsDocDescription = struct_EcsDocDescription;
pub extern fn ecs_doc_set_name(world: ?*ecs_world_t, entity: ecs_entity_t, name: [*c]const u8) void;
pub extern fn ecs_doc_set_brief(world: ?*ecs_world_t, entity: ecs_entity_t, description: [*c]const u8) void;
pub extern fn ecs_doc_set_detail(world: ?*ecs_world_t, entity: ecs_entity_t, description: [*c]const u8) void;
pub extern fn ecs_doc_set_link(world: ?*ecs_world_t, entity: ecs_entity_t, link: [*c]const u8) void;
pub extern fn ecs_doc_get_name(world: ?*const ecs_world_t, entity: ecs_entity_t) [*c]const u8;
pub extern fn ecs_doc_get_brief(world: ?*const ecs_world_t, entity: ecs_entity_t) [*c]const u8;
pub extern fn ecs_doc_get_detail(world: ?*const ecs_world_t, entity: ecs_entity_t) [*c]const u8;
pub extern fn ecs_doc_get_link(world: ?*const ecs_world_t, entity: ecs_entity_t) [*c]const u8;
pub extern fn FlecsDocImport(world: ?*ecs_world_t) void;
pub const struct_ecs_parse_json_desc_t = extern struct {
    name: [*c]const u8,
    expr: [*c]const u8,
};
pub const ecs_parse_json_desc_t = struct_ecs_parse_json_desc_t;
pub extern fn ecs_parse_json(world: ?*const ecs_world_t, ptr: [*c]const u8, @"type": ecs_entity_t, data_out: ?*anyopaque, desc: [*c]const ecs_parse_json_desc_t) [*c]const u8;
pub extern fn ecs_array_to_json(world: ?*const ecs_world_t, @"type": ecs_entity_t, data: ?*const anyopaque, count: i32) [*c]u8;
pub extern fn ecs_array_to_json_buf(world: ?*const ecs_world_t, @"type": ecs_entity_t, data: ?*const anyopaque, count: i32, buf_out: [*c]ecs_strbuf_t) c_int;
pub extern fn ecs_ptr_to_json(world: ?*const ecs_world_t, @"type": ecs_entity_t, data: ?*const anyopaque) [*c]u8;
pub extern fn ecs_ptr_to_json_buf(world: ?*const ecs_world_t, @"type": ecs_entity_t, data: ?*const anyopaque, buf_out: [*c]ecs_strbuf_t) c_int;
pub extern fn ecs_type_info_to_json(world: ?*const ecs_world_t, @"type": ecs_entity_t) [*c]u8;
pub extern fn ecs_type_info_to_json_buf(world: ?*const ecs_world_t, @"type": ecs_entity_t, buf_out: [*c]ecs_strbuf_t) c_int;
pub const struct_ecs_entity_to_json_desc_t = extern struct {
    serialize_path: bool,
    serialize_base: bool,
    serialize_values: bool,
    serialize_type_info: bool,
};
pub const ecs_entity_to_json_desc_t = struct_ecs_entity_to_json_desc_t;
pub extern fn ecs_entity_to_json(world: ?*const ecs_world_t, entity: ecs_entity_t, desc: [*c]const ecs_entity_to_json_desc_t) [*c]u8;
pub extern fn ecs_entity_to_json_buf(world: ?*const ecs_world_t, entity: ecs_entity_t, buf_out: [*c]ecs_strbuf_t, desc: [*c]const ecs_entity_to_json_desc_t) c_int;
pub const struct_ecs_iter_to_json_desc_t = extern struct {
    serialize_term_ids: bool,
    serialize_ids: bool,
    serialize_subjects: bool,
    serialize_variables: bool,
    serialize_is_set: bool,
    serialize_values: bool,
    serialize_entities: bool,
    serialize_entity_labels: bool,
    serialize_variable_labels: bool,
    measure_eval_duration: bool,
    serialize_type_info: bool,
};
pub const ecs_iter_to_json_desc_t = struct_ecs_iter_to_json_desc_t;
pub extern fn ecs_iter_to_json(world: ?*const ecs_world_t, iter: [*c]ecs_iter_t, desc: [*c]const ecs_iter_to_json_desc_t) [*c]u8;
pub extern fn ecs_iter_to_json_buf(world: ?*const ecs_world_t, iter: [*c]ecs_iter_t, buf_out: [*c]ecs_strbuf_t, desc: [*c]const ecs_iter_to_json_desc_t) c_int;
pub const ptrdiff_t = c_long;
pub const wchar_t = c_int;
pub const max_align_t = c_longdouble;
pub const ecs_bool_t = bool;
pub const ecs_char_t = u8;
pub const ecs_byte_t = u8;
pub const ecs_u8_t = u8;
pub const ecs_u16_t = u16;
pub const ecs_u32_t = u32;
pub const ecs_u64_t = u64;
pub const ecs_uptr_t = usize;
pub const ecs_i8_t = i8;
pub const ecs_i16_t = i16;
pub const ecs_i32_t = i32;
pub const ecs_i64_t = i64;
pub const ecs_iptr_t = isize;
pub const ecs_f32_t = f32;
pub const ecs_f64_t = f64;
pub const ecs_string_t = [*c]u8;
pub extern const FLECS__EEcsMetaType: ecs_entity_t;
pub extern const FLECS__EEcsMetaTypeSerialized: ecs_entity_t;
pub extern const FLECS__EEcsPrimitive: ecs_entity_t;
pub extern const FLECS__EEcsEnum: ecs_entity_t;
pub extern const FLECS__EEcsBitmask: ecs_entity_t;
pub extern const FLECS__EEcsMember: ecs_entity_t;
pub extern const FLECS__EEcsStruct: ecs_entity_t;
pub extern const FLECS__EEcsArray: ecs_entity_t;
pub extern const FLECS__EEcsVector: ecs_entity_t;
pub extern const EcsConstant: ecs_entity_t;
pub extern const FLECS__Eecs_bool_t: ecs_entity_t;
pub extern const FLECS__Eecs_char_t: ecs_entity_t;
pub extern const FLECS__Eecs_byte_t: ecs_entity_t;
pub extern const FLECS__Eecs_u8_t: ecs_entity_t;
pub extern const FLECS__Eecs_u16_t: ecs_entity_t;
pub extern const FLECS__Eecs_u32_t: ecs_entity_t;
pub extern const FLECS__Eecs_u64_t: ecs_entity_t;
pub extern const FLECS__Eecs_uptr_t: ecs_entity_t;
pub extern const FLECS__Eecs_i8_t: ecs_entity_t;
pub extern const FLECS__Eecs_i16_t: ecs_entity_t;
pub extern const FLECS__Eecs_i32_t: ecs_entity_t;
pub extern const FLECS__Eecs_i64_t: ecs_entity_t;
pub extern const FLECS__Eecs_iptr_t: ecs_entity_t;
pub extern const FLECS__Eecs_f32_t: ecs_entity_t;
pub extern const FLECS__Eecs_f64_t: ecs_entity_t;
pub extern const FLECS__Eecs_string_t: ecs_entity_t;
pub extern const FLECS__Eecs_entity_t: ecs_entity_t;
pub const EcsPrimitiveType: c_int = 0;
pub const EcsBitmaskType: c_int = 1;
pub const EcsEnumType: c_int = 2;
pub const EcsStructType: c_int = 3;
pub const EcsArrayType: c_int = 4;
pub const EcsVectorType: c_int = 5;
pub const EcsTypeKindLast: c_int = 5;
pub const enum_ecs_type_kind_t = c_uint;
pub const ecs_type_kind_t = enum_ecs_type_kind_t;
pub const struct_EcsMetaType = extern struct {
    kind: ecs_type_kind_t,
};
pub const EcsMetaType = struct_EcsMetaType;
pub const EcsBool: c_int = 1;
pub const EcsChar: c_int = 2;
pub const EcsByte: c_int = 3;
pub const EcsU8: c_int = 4;
pub const EcsU16: c_int = 5;
pub const EcsU32: c_int = 6;
pub const EcsU64: c_int = 7;
pub const EcsI8: c_int = 8;
pub const EcsI16: c_int = 9;
pub const EcsI32: c_int = 10;
pub const EcsI64: c_int = 11;
pub const EcsF32: c_int = 12;
pub const EcsF64: c_int = 13;
pub const EcsUPtr: c_int = 14;
pub const EcsIPtr: c_int = 15;
pub const EcsString: c_int = 16;
pub const EcsEntity: c_int = 17;
pub const EcsPrimitiveKindLast: c_int = 17;
pub const enum_ecs_primitive_kind_t = c_uint;
pub const ecs_primitive_kind_t = enum_ecs_primitive_kind_t;
pub const struct_EcsPrimitive = extern struct {
    kind: ecs_primitive_kind_t,
};
pub const EcsPrimitive = struct_EcsPrimitive;
pub const struct_EcsMember = extern struct {
    type: ecs_entity_t,
    count: i32,
};
pub const EcsMember = struct_EcsMember;
pub const struct_ecs_member_t = extern struct {
    name: [*c]const u8,
    type: ecs_entity_t,
    count: i32,
    offset: i32,
    size: ecs_size_t,
    member: ecs_entity_t,
};
pub const ecs_member_t = struct_ecs_member_t;
pub const struct_EcsStruct = extern struct {
    members: ?*ecs_vector_t,
};
pub const EcsStruct = struct_EcsStruct;
pub const struct_ecs_enum_constant_t = extern struct {
    name: [*c]const u8,
    value: i32,
    constant: ecs_entity_t,
};
pub const ecs_enum_constant_t = struct_ecs_enum_constant_t;
pub const struct_EcsEnum = extern struct {
    constants: ?*ecs_map_t,
};
pub const EcsEnum = struct_EcsEnum;
pub const struct_ecs_bitmask_constant_t = extern struct {
    name: [*c]const u8,
    value: ecs_flags32_t,
    constant: ecs_entity_t,
};
pub const ecs_bitmask_constant_t = struct_ecs_bitmask_constant_t;
pub const struct_EcsBitmask = extern struct {
    constants: ?*ecs_map_t,
};
pub const EcsBitmask = struct_EcsBitmask;
pub const struct_EcsArray = extern struct {
    type: ecs_entity_t,
    count: i32,
};
pub const EcsArray = struct_EcsArray;
pub const struct_EcsVector = extern struct {
    type: ecs_entity_t,
};
pub const EcsVector = struct_EcsVector;
pub const EcsOpArray: c_int = 0;
pub const EcsOpVector: c_int = 1;
pub const EcsOpPush: c_int = 2;
pub const EcsOpPop: c_int = 3;
pub const EcsOpScope: c_int = 4;
pub const EcsOpEnum: c_int = 5;
pub const EcsOpBitmask: c_int = 6;
pub const EcsOpPrimitive: c_int = 7;
pub const EcsOpBool: c_int = 8;
pub const EcsOpChar: c_int = 9;
pub const EcsOpByte: c_int = 10;
pub const EcsOpU8: c_int = 11;
pub const EcsOpU16: c_int = 12;
pub const EcsOpU32: c_int = 13;
pub const EcsOpU64: c_int = 14;
pub const EcsOpI8: c_int = 15;
pub const EcsOpI16: c_int = 16;
pub const EcsOpI32: c_int = 17;
pub const EcsOpI64: c_int = 18;
pub const EcsOpF32: c_int = 19;
pub const EcsOpF64: c_int = 20;
pub const EcsOpUPtr: c_int = 21;
pub const EcsOpIPtr: c_int = 22;
pub const EcsOpString: c_int = 23;
pub const EcsOpEntity: c_int = 24;
pub const enum_ecs_meta_type_op_kind_t = c_uint;
pub const ecs_meta_type_op_kind_t = enum_ecs_meta_type_op_kind_t;
pub const struct_ecs_meta_type_op_t = extern struct {
    kind: ecs_meta_type_op_kind_t,
    offset: ecs_size_t,
    count: i32,
    name: [*c]const u8,
    op_count: i32,
    size: ecs_size_t,
    type: ecs_entity_t,
    members: [*c]ecs_hashmap_t,
};
pub const ecs_meta_type_op_t = struct_ecs_meta_type_op_t;
pub const struct_EcsMetaTypeSerialized = extern struct {
    ops: ?*ecs_vector_t,
};
pub const EcsMetaTypeSerialized = struct_EcsMetaTypeSerialized;
pub const struct_ecs_meta_scope_t = extern struct {
    type: ecs_entity_t,
    ops: [*c]ecs_meta_type_op_t,
    op_count: i32,
    op_cur: i32,
    elem_cur: i32,
    ptr: ?*anyopaque,
    comp: [*c]const EcsComponent,
    vector: [*c]?*ecs_vector_t,
    is_collection: bool,
    is_inline_array: bool,
};
pub const ecs_meta_scope_t = struct_ecs_meta_scope_t;
pub const struct_ecs_meta_cursor_t = extern struct {
    world: ?*const ecs_world_t,
    scope: [32]ecs_meta_scope_t,
    depth: i32,
    valid: bool,
    is_primitive_scope: bool,
    lookup_action: ?fn (?*const ecs_world_t, [*c]const u8, ?*anyopaque) callconv(.C) ecs_entity_t,
    lookup_ctx: ?*anyopaque,
};
pub const ecs_meta_cursor_t = struct_ecs_meta_cursor_t;
pub extern fn ecs_meta_cursor(world: ?*const ecs_world_t, @"type": ecs_entity_t, ptr: ?*anyopaque) ecs_meta_cursor_t;
pub extern fn ecs_meta_get_ptr(cursor: [*c]ecs_meta_cursor_t) ?*anyopaque;
pub extern fn ecs_meta_next(cursor: [*c]ecs_meta_cursor_t) c_int;
pub extern fn ecs_meta_move(cursor: [*c]ecs_meta_cursor_t, pos: i32) c_int;
pub extern fn ecs_meta_member(cursor: [*c]ecs_meta_cursor_t, name: [*c]const u8) c_int;
pub extern fn ecs_meta_push(cursor: [*c]ecs_meta_cursor_t) c_int;
pub extern fn ecs_meta_pop(cursor: [*c]ecs_meta_cursor_t) c_int;
pub extern fn ecs_meta_is_collection(cursor: [*c]ecs_meta_cursor_t) bool;
pub extern fn ecs_meta_get_type(cursor: [*c]ecs_meta_cursor_t) ecs_entity_t;
pub extern fn ecs_meta_set_bool(cursor: [*c]ecs_meta_cursor_t, value: bool) c_int;
pub extern fn ecs_meta_set_char(cursor: [*c]ecs_meta_cursor_t, value: u8) c_int;
pub extern fn ecs_meta_set_int(cursor: [*c]ecs_meta_cursor_t, value: i64) c_int;
pub extern fn ecs_meta_set_uint(cursor: [*c]ecs_meta_cursor_t, value: u64) c_int;
pub extern fn ecs_meta_set_float(cursor: [*c]ecs_meta_cursor_t, value: f64) c_int;
pub extern fn ecs_meta_set_string(cursor: [*c]ecs_meta_cursor_t, value: [*c]const u8) c_int;
pub extern fn ecs_meta_set_string_literal(cursor: [*c]ecs_meta_cursor_t, value: [*c]const u8) c_int;
pub extern fn ecs_meta_set_entity(cursor: [*c]ecs_meta_cursor_t, value: ecs_entity_t) c_int;
pub extern fn ecs_meta_set_null(cursor: [*c]ecs_meta_cursor_t) c_int;
pub const struct_ecs_enum_desc_t = extern struct {
    entity: ecs_entity_desc_t,
    constants: [32]ecs_enum_constant_t,
};
pub const ecs_enum_desc_t = struct_ecs_enum_desc_t;
pub extern fn ecs_enum_init(world: ?*ecs_world_t, desc: [*c]const ecs_enum_desc_t) ecs_entity_t;
pub const struct_ecs_bitmask_desc_t = extern struct {
    entity: ecs_entity_desc_t,
    constants: [32]ecs_bitmask_constant_t,
};
pub const ecs_bitmask_desc_t = struct_ecs_bitmask_desc_t;
pub extern fn ecs_bitmask_init(world: ?*ecs_world_t, desc: [*c]const ecs_bitmask_desc_t) ecs_entity_t;
pub const struct_ecs_array_desc_t = extern struct {
    entity: ecs_entity_desc_t,
    type: ecs_entity_t,
    count: i32,
};
pub const ecs_array_desc_t = struct_ecs_array_desc_t;
pub extern fn ecs_array_init(world: ?*ecs_world_t, desc: [*c]const ecs_array_desc_t) ecs_entity_t;
pub const struct_ecs_vector_desc_t = extern struct {
    entity: ecs_entity_desc_t,
    type: ecs_entity_t,
};
pub const ecs_vector_desc_t = struct_ecs_vector_desc_t;
pub extern fn ecs_vector_init(world: ?*ecs_world_t, desc: [*c]const ecs_vector_desc_t) ecs_entity_t;
pub const struct_ecs_struct_desc_t = extern struct {
    entity: ecs_entity_desc_t,
    members: [32]ecs_member_t,
};
pub const ecs_struct_desc_t = struct_ecs_struct_desc_t;
pub extern fn ecs_struct_init(world: ?*ecs_world_t, desc: [*c]const ecs_struct_desc_t) ecs_entity_t;
pub extern fn FlecsMetaImport(world: ?*ecs_world_t) void;
pub extern fn ecs_chresc(out: [*c]u8, in: u8, delimiter: u8) [*c]u8;
pub extern fn ecs_chrparse(in: [*c]const u8, out: [*c]u8) [*c]const u8;
pub extern fn ecs_stresc(out: [*c]u8, size: ecs_size_t, delimiter: u8, in: [*c]const u8) ecs_size_t;
pub extern fn ecs_astresc(delimiter: u8, in: [*c]const u8) [*c]u8;
pub const struct_ecs_parse_expr_desc_t = extern struct {
    name: [*c]const u8,
    expr: [*c]const u8,
    lookup_action: ?fn (?*const ecs_world_t, [*c]const u8, ?*anyopaque) callconv(.C) ecs_entity_t,
    lookup_ctx: ?*anyopaque,
};
pub const ecs_parse_expr_desc_t = struct_ecs_parse_expr_desc_t;
pub extern fn ecs_parse_expr(world: ?*const ecs_world_t, ptr: [*c]const u8, @"type": ecs_entity_t, data_out: ?*anyopaque, desc: [*c]const ecs_parse_expr_desc_t) [*c]const u8;
pub extern fn ecs_ptr_to_expr(world: ?*const ecs_world_t, @"type": ecs_entity_t, data: ?*const anyopaque) [*c]u8;
pub extern fn ecs_ptr_to_expr_buf(world: ?*const ecs_world_t, @"type": ecs_entity_t, data: ?*const anyopaque, buf: [*c]ecs_strbuf_t) c_int;
pub extern fn ecs_primitive_to_expr_buf(world: ?*const ecs_world_t, kind: ecs_primitive_kind_t, data: ?*const anyopaque, buf: [*c]ecs_strbuf_t) c_int;
pub extern fn ecs_parse_expr_token(name: [*c]const u8, expr: [*c]const u8, ptr: [*c]const u8, token: [*c]u8) [*c]const u8;
pub extern fn ecs_meta_from_desc(world: ?*ecs_world_t, component: ecs_entity_t, kind: ecs_type_kind_t, desc: [*c]const u8) c_int;
pub extern fn ecs_plecs_from_str(world: ?*ecs_world_t, name: [*c]const u8, str: [*c]const u8) c_int;
pub extern fn ecs_plecs_from_file(world: ?*ecs_world_t, filename: [*c]const u8) c_int;
pub extern fn ecs_rule_init(world: ?*ecs_world_t, desc: [*c]const ecs_filter_desc_t) ?*ecs_rule_t;
pub extern fn ecs_rule_fini(rule: ?*ecs_rule_t) void;
pub extern fn ecs_rule_get_filter(rule: ?*const ecs_rule_t) [*c]const ecs_filter_t;
pub extern fn ecs_rule_var_count(rule: ?*const ecs_rule_t) i32;
pub extern fn ecs_rule_find_var(rule: ?*const ecs_rule_t, name: [*c]const u8) i32;
pub extern fn ecs_rule_var_name(rule: ?*const ecs_rule_t, var_id: i32) [*c]const u8;
pub extern fn ecs_rule_set_var(it: [*c]ecs_iter_t, var_id: i32, value: ecs_entity_t) void;
pub extern fn ecs_rule_get_var(it: [*c]const ecs_iter_t, var_id: i32) ecs_entity_t;
pub extern fn ecs_rule_var_is_entity(rule: ?*const ecs_rule_t, var_id: i32) bool;
pub extern fn ecs_rule_iter(world: ?*const ecs_world_t, rule: ?*const ecs_rule_t) ecs_iter_t;
pub extern fn ecs_rule_next(it: [*c]ecs_iter_t) bool;
pub extern fn ecs_rule_next_instanced(it: [*c]ecs_iter_t) bool;
pub extern fn ecs_rule_str(rule: ?*ecs_rule_t) [*c]u8;
pub const struct_ecs_snapshot_t = opaque {};
pub const ecs_snapshot_t = struct_ecs_snapshot_t;
pub extern fn ecs_snapshot_take(world: ?*ecs_world_t) ?*ecs_snapshot_t;
pub extern fn ecs_snapshot_take_w_iter(iter: [*c]ecs_iter_t) ?*ecs_snapshot_t;
pub extern fn ecs_snapshot_restore(world: ?*ecs_world_t, snapshot: ?*ecs_snapshot_t) void;
pub extern fn ecs_snapshot_iter(snapshot: ?*ecs_snapshot_t) ecs_iter_t;
pub extern fn ecs_snapshot_next(iter: [*c]ecs_iter_t) bool;
pub extern fn ecs_snapshot_free(snapshot: ?*ecs_snapshot_t) void;
pub const struct_ecs_gauge_t = extern struct {
    avg: [60]f32,
    min: [60]f32,
    max: [60]f32,
};
pub const ecs_gauge_t = struct_ecs_gauge_t;
pub const struct_ecs_counter_t = extern struct {
    rate: ecs_gauge_t,
    value: [60]f32,
};
pub const ecs_counter_t = struct_ecs_counter_t;
pub const struct_ecs_world_stats_t = extern struct {
    dummy_: i32,
    entity_count: ecs_gauge_t,
    component_count: ecs_gauge_t,
    query_count: ecs_gauge_t,
    system_count: ecs_gauge_t,
    table_count: ecs_gauge_t,
    empty_table_count: ecs_gauge_t,
    singleton_table_count: ecs_gauge_t,
    matched_entity_count: ecs_gauge_t,
    matched_table_count: ecs_gauge_t,
    new_count: ecs_counter_t,
    bulk_new_count: ecs_counter_t,
    delete_count: ecs_counter_t,
    clear_count: ecs_counter_t,
    add_count: ecs_counter_t,
    remove_count: ecs_counter_t,
    set_count: ecs_counter_t,
    discard_count: ecs_counter_t,
    world_time_total_raw: ecs_counter_t,
    world_time_total: ecs_counter_t,
    frame_time_total: ecs_counter_t,
    system_time_total: ecs_counter_t,
    merge_time_total: ecs_counter_t,
    fps: ecs_gauge_t,
    delta_time: ecs_gauge_t,
    frame_count_total: ecs_counter_t,
    merge_count_total: ecs_counter_t,
    pipeline_build_count_total: ecs_counter_t,
    systems_ran_frame: ecs_counter_t,
    t: i32,
};
pub const ecs_world_stats_t = struct_ecs_world_stats_t;
pub const struct_ecs_query_stats_t = extern struct {
    matched_table_count: ecs_gauge_t,
    matched_empty_table_count: ecs_gauge_t,
    matched_entity_count: ecs_gauge_t,
    t: i32,
};
pub const ecs_query_stats_t = struct_ecs_query_stats_t;
pub const struct_ecs_system_stats_t = extern struct {
    query_stats: ecs_query_stats_t,
    time_spent: ecs_counter_t,
    invoke_count: ecs_counter_t,
    active: ecs_gauge_t,
    enabled: ecs_gauge_t,
};
pub const ecs_system_stats_t = struct_ecs_system_stats_t;
pub const struct_ecs_pipeline_stats_t = extern struct {
    systems: ?*ecs_vector_t,
    system_stats: ?*ecs_map_t,
    system_count: i32,
    active_system_count: i32,
    rebuild_count: i32,
};
pub const ecs_pipeline_stats_t = struct_ecs_pipeline_stats_t;
pub extern fn ecs_get_world_stats(world: ?*const ecs_world_t, stats: [*c]ecs_world_stats_t) void;
pub extern fn ecs_dump_world_stats(world: ?*const ecs_world_t, stats: [*c]const ecs_world_stats_t) void;
pub extern fn ecs_get_query_stats(world: ?*const ecs_world_t, query: ?*const ecs_query_t, stats: [*c]ecs_query_stats_t) void;
pub extern fn ecs_get_system_stats(world: ?*const ecs_world_t, system: ecs_entity_t, stats: [*c]ecs_system_stats_t) bool;
pub extern fn ecs_get_pipeline_stats(world: ?*ecs_world_t, pipeline: ecs_entity_t, stats: [*c]ecs_pipeline_stats_t) bool;
pub extern fn ecs_pipeline_stats_fini(stats: [*c]ecs_pipeline_stats_t) void;
pub extern fn ecs_gauge_reduce(dst: [*c]ecs_gauge_t, t_dst: i32, src: [*c]ecs_gauge_t, t_src: i32) void;
pub extern fn ecs_parse_whitespace(ptr: [*c]const u8) [*c]const u8;
pub extern fn ecs_parse_eol_and_whitespace(ptr: [*c]const u8) [*c]const u8;
pub extern fn ecs_parse_digit(ptr: [*c]const u8, token: [*c]u8) [*c]const u8;
pub extern fn ecs_parse_fluff(ptr: [*c]const u8, last_comment: [*c][*c]u8) [*c]const u8;
pub extern fn ecs_parse_token(name: [*c]const u8, expr: [*c]const u8, ptr: [*c]const u8, token_out: [*c]u8) [*c]const u8;
pub extern fn ecs_parse_term(world: ?*const ecs_world_t, name: [*c]const u8, expr: [*c]const u8, ptr: [*c]const u8, term_out: [*c]ecs_term_t) [*c]u8;
pub const struct_ecs_http_server_t = opaque {};
pub const ecs_http_server_t = struct_ecs_http_server_t;
pub const ecs_http_connection_t = extern struct {
    id: u64,
    server: ?*ecs_http_server_t,
    host: [128]u8,
    port: [16]u8,
};
pub const ecs_http_key_value_t = extern struct {
    key: [*c]const u8,
    value: [*c]const u8,
};
pub const EcsHttpGet: c_int = 0;
pub const EcsHttpPost: c_int = 1;
pub const EcsHttpPut: c_int = 2;
pub const EcsHttpDelete: c_int = 3;
pub const EcsHttpMethodUnsupported: c_int = 4;
pub const ecs_http_method_t = c_uint;
pub const ecs_http_request_t = extern struct {
    id: u64,
    method: ecs_http_method_t,
    path: [*c]u8,
    body: [*c]u8,
    headers: [32]ecs_http_key_value_t,
    params: [32]ecs_http_key_value_t,
    header_count: i32,
    param_count: i32,
    conn: [*c]ecs_http_connection_t,
};
pub const ecs_http_reply_t = extern struct {
    code: c_int,
    body: ecs_strbuf_t,
    status: [*c]const u8,
    content_type: [*c]const u8,
    headers: ecs_strbuf_t,
};
pub const ecs_http_reply_action_t = ?fn ([*c]const ecs_http_request_t, [*c]ecs_http_reply_t, ?*anyopaque) callconv(.C) bool;
pub const ecs_http_server_desc_t = extern struct {
    callback: ecs_http_reply_action_t,
    ctx: ?*anyopaque,
    port: u16,
    ipaddr: [*c]const u8,
};
pub extern fn ecs_http_server_init(desc: [*c]const ecs_http_server_desc_t) ?*ecs_http_server_t;
pub extern fn ecs_http_server_fini(server: ?*ecs_http_server_t) void;
pub extern fn ecs_http_server_start(server: ?*ecs_http_server_t) c_int;
pub extern fn ecs_http_server_dequeue(server: ?*ecs_http_server_t, delta_time: f32) void;
pub extern fn ecs_http_server_stop(server: ?*ecs_http_server_t) void;
pub extern fn ecs_http_get_header(req: [*c]const ecs_http_request_t, name: [*c]const u8) [*c]const u8;
pub extern fn ecs_http_get_param(req: [*c]const ecs_http_request_t, name: [*c]const u8) [*c]const u8;
pub extern fn ecs_set_os_api_impl() void;
pub extern fn ecs_import(world: ?*ecs_world_t, module: ecs_module_action_t, module_name: [*c]const u8) ecs_entity_t;
pub extern fn ecs_import_from_library(world: ?*ecs_world_t, library_name: [*c]const u8, module_name: [*c]const u8) ecs_entity_t;
pub extern fn ecs_module_init(world: ?*ecs_world_t, desc: [*c]const ecs_component_desc_t) ecs_entity_t;
pub extern fn ecs_cpp_get_type_name(type_name: [*c]u8, func_name: [*c]const u8, len: usize) [*c]u8;
pub extern fn ecs_cpp_get_symbol_name(symbol_name: [*c]u8, type_name: [*c]const u8, len: usize) [*c]u8;
pub extern fn ecs_cpp_get_constant_name(constant_name: [*c]u8, func_name: [*c]const u8, len: usize) [*c]u8;
pub extern fn ecs_cpp_trim_module(world: ?*ecs_world_t, type_name: [*c]const u8) [*c]const u8;
pub extern fn ecs_cpp_component_validate(world: ?*ecs_world_t, id: ecs_entity_t, name: [*c]const u8, size: usize, alignment: usize, implicit_name: bool) void;
pub extern fn ecs_cpp_component_register(world: ?*ecs_world_t, id: ecs_entity_t, name: [*c]const u8, symbol: [*c]const u8, size: ecs_size_t, alignment: ecs_size_t) ecs_entity_t;
pub extern fn ecs_cpp_component_register_explicit(world: ?*ecs_world_t, s_id: ecs_entity_t, id: ecs_entity_t, name: [*c]const u8, type_name: [*c]const u8, symbol: [*c]const u8, size: usize, alignment: usize) ecs_entity_t;
pub extern fn ecs_cpp_enum_constant_register(world: ?*ecs_world_t, parent: ecs_entity_t, id: ecs_entity_t, name: [*c]const u8, value: c_int) ecs_entity_t;
pub extern fn ecs_cpp_reset_count_get() i32;
pub extern fn ecs_cpp_reset_count_inc() i32;
pub const __block = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):27:9
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):69:9
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):75:9
pub const __FLT16_DENORM_MIN__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):106:9
pub const __FLT16_EPSILON__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):110:9
pub const __FLT16_MAX__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):116:9
pub const __FLT16_MIN__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):119:9
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`"); // (no file):179:9
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // (no file):201:9
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`"); // (no file):209:9
pub const __USER_LABEL_PREFIX__ = @compileError("unable to translate macro: undefined identifier `_`"); // (no file):292:9
pub const __nonnull = @compileError("unable to translate macro: undefined identifier `_Nonnull`"); // (no file):322:9
pub const __null_unspecified = @compileError("unable to translate macro: undefined identifier `_Null_unspecified`"); // (no file):323:9
pub const __nullable = @compileError("unable to translate macro: undefined identifier `_Nullable`"); // (no file):324:9
pub const __weak = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):382:9
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:113:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:114:9
pub const __const = @compileError("unable to translate C expr: unexpected token 'const'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:116:9
pub const __volatile = @compileError("unable to translate C expr: unexpected token 'volatile'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:118:9
pub const __dead2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:162:9
pub const __pure2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:163:9
pub const __stateful_pure = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:164:9
pub const __unused = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:169:9
pub const __used = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:174:9
pub const __cold = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:180:9
pub const __exported = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:190:9
pub const __exported_push = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:191:9
pub const __exported_pop = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:192:9
pub const __deprecated = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:204:9
pub const __deprecated_msg = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:208:10
pub const __kpi_deprecated = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:219:9
pub const __unavailable = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:225:9
pub const __restrict = @compileError("unable to translate C expr: unexpected token 'restrict'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:247:9
pub const __disable_tail_calls = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:280:9
pub const __not_tail_called = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:292:9
pub const __result_use_check = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:303:9
pub const __swift_unavailable = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:313:9
pub const __header_inline = @compileError("unable to translate C expr: unexpected token 'inline'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:347:10
pub const __header_always_inline = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:360:10
pub const __unreachable_ok_push = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:373:10
pub const __unreachable_ok_pop = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:376:10
pub const __printflike = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:397:9
pub const __printf0like = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:399:9
pub const __scanflike = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:401:9
pub const __IDSTRING = @compileError("unable to translate C expr: unexpected token 'static'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:404:9
pub const __COPYRIGHT = @compileError("unable to translate macro: undefined identifier `copyright`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:407:9
pub const __RCSID = @compileError("unable to translate macro: undefined identifier `rcsid`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:411:9
pub const __SCCSID = @compileError("unable to translate macro: undefined identifier `sccsid`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:415:9
pub const __PROJECT_VERSION = @compileError("unable to translate macro: undefined identifier `project_version`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:419:9
pub const __FBSDID = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:424:9
pub const __DECONST = @compileError("unable to translate C expr: unexpected token 'const'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:428:9
pub const __DEVOLATILE = @compileError("unable to translate C expr: unexpected token 'volatile'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:432:9
pub const __DEQUALIFY = @compileError("unable to translate C expr: unexpected token 'const'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:436:9
pub const __alloc_size = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:454:9
pub const __DARWIN_ALIAS = @compileError("unable to translate macro: undefined identifier `__asm`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:639:9
pub const __DARWIN_ALIAS_C = @compileError("unable to translate macro: undefined identifier `__asm`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:640:9
pub const __DARWIN_ALIAS_I = @compileError("unable to translate macro: undefined identifier `__asm`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:641:9
pub const __DARWIN_NOCANCEL = @compileError("unable to translate macro: undefined identifier `__asm`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:642:9
pub const __DARWIN_INODE64 = @compileError("unable to translate macro: undefined identifier `__asm`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:643:9
pub const __DARWIN_1050 = @compileError("unable to translate macro: undefined identifier `__asm`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:645:9
pub const __DARWIN_1050ALIAS = @compileError("unable to translate macro: undefined identifier `__asm`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:646:9
pub const __DARWIN_1050ALIAS_C = @compileError("unable to translate macro: undefined identifier `__asm`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:647:9
pub const __DARWIN_1050ALIAS_I = @compileError("unable to translate macro: undefined identifier `__asm`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:648:9
pub const __DARWIN_1050INODE64 = @compileError("unable to translate macro: undefined identifier `__asm`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:649:9
pub const __DARWIN_EXTSN = @compileError("unable to translate macro: undefined identifier `__asm`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:651:9
pub const __DARWIN_EXTSN_C = @compileError("unable to translate macro: undefined identifier `__asm`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:652:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:35:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:41:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:47:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:53:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:59:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:65:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:71:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:77:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:83:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_3 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:89:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:95:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:101:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:107:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:113:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:119:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:125:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:131:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:137:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:143:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_3 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:149:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_4 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:155:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:161:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:167:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:173:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_3 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:179:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:185:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:191:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:197:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_3 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:203:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:209:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:215:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:221:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_3 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:227:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_4 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:233:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:239:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:245:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:251:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_3 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:257:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_4 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:263:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:269:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:275:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:281:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_3 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:287:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_4 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:293:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_5 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:299:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_6 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:305:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_7 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:311:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:317:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:323:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:329:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_3 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:335:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_5 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:341:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/_symbol_aliasing.h:347:9
pub const __DARWIN_ALIAS_STARTING = @compileError("unable to translate macro: undefined identifier `__DARWIN_ALIAS_STARTING_MAC_`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:662:9
pub const __POSIX_C_DEPRECATED = @compileError("unable to translate macro: undefined identifier `___POSIX_C_DEPRECATED_STARTING_`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:725:9
pub const __XNU_PRIVATE_EXTERN = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:825:9
pub const __compiler_barrier = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:842:9
pub const __enum_open = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:845:9
pub const __enum_closed = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:846:9
pub const __enum_options = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:853:9
pub const __enum_decl = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:866:9
pub const __enum_closed_decl = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:868:9
pub const __options_decl = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:870:9
pub const __options_closed_decl = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/sys/cdefs.h:872:9
pub const __ASSERT_FILE_NAME = @compileError("unable to translate macro: undefined identifier `__FILE_NAME__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/assert.h:60:9
pub const __assert = @compileError("unable to translate C expr: unexpected token 'const'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/assert.h:93:9
pub const assert = @compileError("unable to translate macro: undefined identifier `__func__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/assert.h:98:9
pub const static_assert = @compileError("unable to translate C expr: unexpected token '_Static_assert'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/assert.h:113:9
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // /Users/desaro/zig/lib/zig/include/stdarg.h:17:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // /Users/desaro/zig/lib/zig/include/stdarg.h:18:9
pub const va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`"); // /Users/desaro/zig/lib/zig/include/stdarg.h:19:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /Users/desaro/zig/lib/zig/include/stdarg.h:24:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /Users/desaro/zig/lib/zig/include/stdarg.h:27:9
pub const __offsetof = @compileError("unable to translate macro: undefined identifier `__builtin_offsetof`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/sys/_types.h:83:9
pub const __strfmonlike = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/_types.h:31:9
pub const __strftimelike = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/_types.h:33:9
pub const __AVAILABILITY_INTERNAL_DEPRECATED = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:109:9
pub const __AVAILABILITY_INTERNAL_DEPRECATED_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:112:17
pub const __AVAILABILITY_INTERNAL_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:121:9
pub const __AVAILABILITY_INTERNAL_WEAK_IMPORT = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:122:9
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2922:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2923:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2924:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2926:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2930:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2932:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2937:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2941:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2942:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2944:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2948:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2950:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2954:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2956:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2961:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2965:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2966:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2968:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2972:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2974:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2978:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2980:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2985:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2990:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2994:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:2996:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3000:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3002:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3006:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3008:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3012:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3014:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3018:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3020:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3024:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3026:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3030:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3032:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3036:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3038:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3042:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3043:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3044:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3045:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3046:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3047:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3049:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3053:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3055:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3060:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3064:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3065:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3067:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3071:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3073:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3077:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3079:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3084:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3088:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3089:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3091:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3095:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3097:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3101:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3103:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3108:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3112:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3113:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3115:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3119:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3121:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3125:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3127:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3131:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3133:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3137:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3139:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3143:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3145:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3149:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3151:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3155:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3157:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3161:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3162:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3163:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3164:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3165:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3166:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3168:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3172:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3174:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3179:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3183:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3184:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3186:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3190:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3192:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3196:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3198:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3203:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3207:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3208:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3210:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3214:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3216:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3220:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3222:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3227:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3231:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3232:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3234:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3238:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3240:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3244:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3246:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3250:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3252:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3256:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3258:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3262:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3264:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3268:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3270:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3274:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3275:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3276:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3277:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3278:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3279:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3281:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3285:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3287:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3292:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3296:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3297:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3299:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3303:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3305:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3309:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3311:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3316:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3320:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3321:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3323:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3327:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3329:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3333:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3335:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3340:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3344:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3345:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3347:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3351:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3353:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3357:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3359:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3363:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3365:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3369:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3371:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3375:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3377:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3381:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3382:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3383:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEPRECATED__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3384:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3385:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3386:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3387:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3389:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3393:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3395:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3400:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3404:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3405:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3407:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3411:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3413:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3417:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3419:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3424:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3428:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3429:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3431:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3435:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3437:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3441:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3443:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3448:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3452:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3454:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3458:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3460:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3464:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3466:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3470:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3472:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3476:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3478:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3482:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3483:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3484:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3485:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3486:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3487:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3489:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3493:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3495:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3500:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3504:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3505:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3507:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3511:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3513:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3517:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3519:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3524:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3528:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3529:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3531:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3535:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3537:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3541:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3543:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3548:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3552:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3553:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3555:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3559:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3561:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3565:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3567:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3571:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3573:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3577:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3578:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3579:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3580:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3581:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3582:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3584:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3588:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3590:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3595:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3599:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3600:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3602:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3606:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3608:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3612:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3614:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3619:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3623:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3624:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3626:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3630:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3632:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3636:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3638:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3643:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_13_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3647:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3648:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3650:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3654:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3656:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3660:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3662:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3666:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3667:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3668:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3669:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3670:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3671:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3673:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3677:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3679:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3684:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3688:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3689:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3691:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3695:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3697:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3701:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3703:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3708:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3712:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3713:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3715:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3719:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3721:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3725:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3727:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3732:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3736:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3737:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3739:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3743:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3745:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3749:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3750:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3751:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3752:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3753:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3754:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3756:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3760:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3762:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3767:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3771:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3772:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3774:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3778:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3780:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3784:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3786:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3791:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3795:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3796:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3798:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3802:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3804:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3808:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3810:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3815:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3819:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_14 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3820:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3821:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3823:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3827:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3828:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3829:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_0 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3830:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_0_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3832:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3836:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3837:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3838:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3840:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3844:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3846:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3851:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3855:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3856:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3858:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3862:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3864:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3868:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3870:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3875:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3879:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3880:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3882:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3886:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3888:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3892:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3894:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3899:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3903:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3905:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3909:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3911:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3915:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3917:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3921:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3923:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3927:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3929:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3933:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3935:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3939:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3941:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3945:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3947:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3951:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3953:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_13_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3958:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3962:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3963:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3964:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3965:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3966:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3967:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3969:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3973:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3975:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3979:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3980:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3982:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3986:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3988:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3992:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3994:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:3999:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4003:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4004:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4006:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4010:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4012:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4016:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4018:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4023:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4027:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4028:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4029:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4030:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4032:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4036:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4037:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4039:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4043:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4045:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4049:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4051:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4056:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4060:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4061:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4063:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4067:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4069:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4073:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4075:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4080:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4084:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4085:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4086:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4087:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4088:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4090:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4094:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4096:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4101:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4105:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4106:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4108:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4112:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4114:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4118:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4120:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4125:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4129:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4130:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4132:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4136:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4138:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4142:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4144:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4149:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4153:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4155:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4159:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4160:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4161:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4162:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4163:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4164:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4166:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4170:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4172:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4176:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4178:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4182:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4183:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4185:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4189:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4191:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4195:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4197:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4202:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4206:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4207:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4208:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4209:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4211:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4215:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4217:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4221:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4222:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4224:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4228:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4230:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4234:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4236:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4241:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4245:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4246:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4247:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4248:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4250:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4254:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4255:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4257:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4261:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4263:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4267:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4269:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4274:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4278:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4279:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4280:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4281:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4282:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4284:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4288:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4290:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4294:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4296:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4301:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4305:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4306:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4308:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4312:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4314:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4318:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4320:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4325:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4329:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4330:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4331:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4332:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4333:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4335:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4339:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4341:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4345:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4347:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4351:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4352:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4353:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4354:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4356:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4360:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4362:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4366:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4367:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4368:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4369:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4371:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4375:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4376:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4377:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4378:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4380:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4384:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4386:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4390:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4392:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4397:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4401:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4403:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4407:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_14 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4408:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4409:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4410:21
pub const __AVAILABILITY_INTERNAL__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4411:21
pub const __AVAILABILITY_INTERNAL__MAC_10_13_4 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4412:21
pub const __AVAILABILITY_INTERNAL__MAC_10_14 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4413:21
pub const __AVAILABILITY_INTERNAL__MAC_10_14_DEP__MAC_10_14 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4414:21
pub const __AVAILABILITY_INTERNAL__MAC_10_15 = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4415:21
pub const __AVAILABILITY_INTERNAL__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4417:21
pub const __AVAILABILITY_INTERNAL__MAC_NA_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4418:21
pub const __AVAILABILITY_INTERNAL__MAC_NA_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4419:21
pub const __AVAILABILITY_INTERNAL__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4421:21
pub const __AVAILABILITY_INTERNAL__IPHONE_NA__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4422:21
pub const __AVAILABILITY_INTERNAL__IPHONE_NA_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4423:21
pub const __AVAILABILITY_INTERNAL__IPHONE_NA_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4424:21
pub const __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4427:22
pub const __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION_DEP__IPHONE_COMPAT_VERSION = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4428:22
pub const __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION_DEP__IPHONE_COMPAT_VERSION_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4429:22
pub const __API_AVAILABLE_PLATFORM_macos = @compileError("unable to translate macro: undefined identifier `macos`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4445:13
pub const __API_AVAILABLE_PLATFORM_macosx = @compileError("unable to translate macro: undefined identifier `macosx`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4446:13
pub const __API_AVAILABLE_PLATFORM_ios = @compileError("unable to translate macro: undefined identifier `ios`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4447:13
pub const __API_AVAILABLE_PLATFORM_watchos = @compileError("unable to translate macro: undefined identifier `watchos`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4448:13
pub const __API_AVAILABLE_PLATFORM_tvos = @compileError("unable to translate macro: undefined identifier `tvos`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4449:13
pub const __API_AVAILABLE_PLATFORM_macCatalyst = @compileError("unable to translate macro: undefined identifier `macCatalyst`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4451:13
pub const __API_AVAILABLE_PLATFORM_uikitformac = @compileError("unable to translate macro: undefined identifier `uikitformac`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4454:14
pub const __API_AVAILABLE_PLATFORM_driverkit = @compileError("unable to translate macro: undefined identifier `driverkit`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4456:13
pub const __API_A = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4460:17
pub const __API_AVAILABLE2 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4469:13
pub const __API_AVAILABLE3 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4470:13
pub const __API_AVAILABLE4 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4471:13
pub const __API_AVAILABLE5 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4472:13
pub const __API_AVAILABLE6 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4473:13
pub const __API_AVAILABLE7 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4474:13
pub const __API_AVAILABLE_GET_MACRO = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4475:13
pub const __API_APPLY_TO = @compileError("unable to translate macro: undefined identifier `any`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4477:13
pub const __API_RANGE_STRINGIFY2 = @compileError("unable to translate C expr: unexpected token '#'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4479:13
pub const __API_A_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4481:13
pub const __API_AVAILABLE_BEGIN2 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4484:13
pub const __API_AVAILABLE_BEGIN3 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4485:13
pub const __API_AVAILABLE_BEGIN4 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4486:13
pub const __API_AVAILABLE_BEGIN5 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4487:13
pub const __API_AVAILABLE_BEGIN6 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4488:13
pub const __API_AVAILABLE_BEGIN7 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4489:13
pub const __API_AVAILABLE_BEGIN_GET_MACRO = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4490:13
pub const __API_DEPRECATED_PLATFORM_macos = @compileError("unable to translate macro: undefined identifier `macos`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4493:13
pub const __API_DEPRECATED_PLATFORM_macosx = @compileError("unable to translate macro: undefined identifier `macosx`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4494:13
pub const __API_DEPRECATED_PLATFORM_ios = @compileError("unable to translate macro: undefined identifier `ios`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4495:13
pub const __API_DEPRECATED_PLATFORM_watchos = @compileError("unable to translate macro: undefined identifier `watchos`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4496:13
pub const __API_DEPRECATED_PLATFORM_tvos = @compileError("unable to translate macro: undefined identifier `tvos`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4497:13
pub const __API_DEPRECATED_PLATFORM_macCatalyst = @compileError("unable to translate macro: undefined identifier `macCatalyst`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4499:13
pub const __API_DEPRECATED_PLATFORM_uikitformac = @compileError("unable to translate macro: undefined identifier `uikitformac`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4502:14
pub const __API_DEPRECATED_PLATFORM_driverkit = @compileError("unable to translate macro: undefined identifier `driverkit`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4504:13
pub const __API_D = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4508:17
pub const __API_DEPRECATED_MSG3 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4517:13
pub const __API_DEPRECATED_MSG4 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4518:13
pub const __API_DEPRECATED_MSG5 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4519:13
pub const __API_DEPRECATED_MSG6 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4520:13
pub const __API_DEPRECATED_MSG7 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4521:13
pub const __API_DEPRECATED_MSG8 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4522:13
pub const __API_DEPRECATED_MSG_GET_MACRO = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4523:13
pub const __API_D_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4525:13
pub const __API_DEPRECATED_BEGIN_MSG3 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4528:13
pub const __API_DEPRECATED_BEGIN_MSG4 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4529:13
pub const __API_DEPRECATED_BEGIN_MSG5 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4530:13
pub const __API_DEPRECATED_BEGIN_MSG6 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4531:13
pub const __API_DEPRECATED_BEGIN_MSG7 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4532:13
pub const __API_DEPRECATED_BEGIN_MSG8 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4533:13
pub const __API_DEPRECATED_BEGIN_MSG_GET_MACRO = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4534:13
pub const __API_R = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4537:17
pub const __API_DEPRECATED_REP3 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4543:13
pub const __API_DEPRECATED_REP4 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4544:13
pub const __API_DEPRECATED_REP5 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4545:13
pub const __API_DEPRECATED_REP6 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4546:13
pub const __API_DEPRECATED_REP7 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4547:13
pub const __API_DEPRECATED_REP8 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4548:13
pub const __API_DEPRECATED_REP_GET_MACRO = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4549:13
pub const __API_R_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4552:17
pub const __API_DEPRECATED_BEGIN_REP3 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4558:13
pub const __API_DEPRECATED_BEGIN_REP4 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4559:13
pub const __API_DEPRECATED_BEGIN_REP5 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4560:13
pub const __API_DEPRECATED_BEGIN_REP6 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4561:13
pub const __API_DEPRECATED_BEGIN_REP7 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4562:13
pub const __API_DEPRECATED_BEGIN_REP8 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4563:13
pub const __API_DEPRECATED_BEGIN_REP_GET_MACRO = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4564:13
pub const __API_UNAVAILABLE_PLATFORM_macos = @compileError("unable to translate macro: undefined identifier `macos`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4574:13
pub const __API_UNAVAILABLE_PLATFORM_macosx = @compileError("unable to translate macro: undefined identifier `macosx`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4575:13
pub const __API_UNAVAILABLE_PLATFORM_ios = @compileError("unable to translate macro: undefined identifier `ios`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4576:13
pub const __API_UNAVAILABLE_PLATFORM_watchos = @compileError("unable to translate macro: undefined identifier `watchos`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4577:13
pub const __API_UNAVAILABLE_PLATFORM_tvos = @compileError("unable to translate macro: undefined identifier `tvos`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4578:13
pub const __API_UNAVAILABLE_PLATFORM_macCatalyst = @compileError("unable to translate macro: undefined identifier `macCatalyst`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4580:13
pub const __API_UNAVAILABLE_PLATFORM_uikitformac = @compileError("unable to translate macro: undefined identifier `uikitformac`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4583:14
pub const __API_UNAVAILABLE_PLATFORM_driverkit = @compileError("unable to translate macro: undefined identifier `driverkit`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4585:13
pub const __API_U = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4589:17
pub const __API_UNAVAILABLE2 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4598:13
pub const __API_UNAVAILABLE3 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4599:13
pub const __API_UNAVAILABLE4 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4600:13
pub const __API_UNAVAILABLE5 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4601:13
pub const __API_UNAVAILABLE6 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4602:13
pub const __API_UNAVAILABLE7 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4603:13
pub const __API_UNAVAILABLE_GET_MACRO = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4604:13
pub const __API_U_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4606:13
pub const __API_UNAVAILABLE_BEGIN2 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4609:13
pub const __API_UNAVAILABLE_BEGIN3 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4610:13
pub const __API_UNAVAILABLE_BEGIN4 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4611:13
pub const __API_UNAVAILABLE_BEGIN5 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4612:13
pub const __API_UNAVAILABLE_BEGIN6 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4613:13
pub const __API_UNAVAILABLE_BEGIN7 = @compileError("unable to translate macro: undefined identifier `g`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4614:13
pub const __API_UNAVAILABLE_BEGIN_GET_MACRO = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4615:13
pub const __swift_compiler_version_at_least = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4664:13
pub const __SPI_AVAILABLE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos.12-any/AvailabilityInternal.h:4672:11
pub const __OSX_AVAILABLE_STARTING = @compileError("unable to translate macro: undefined identifier `__AVAILABILITY_INTERNAL`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:172:17
pub const __OSX_AVAILABLE_BUT_DEPRECATED = @compileError("unable to translate macro: undefined identifier `__AVAILABILITY_INTERNAL`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:173:17
pub const __OSX_AVAILABLE_BUT_DEPRECATED_MSG = @compileError("unable to translate macro: undefined identifier `__AVAILABILITY_INTERNAL`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:175:17
pub const __OS_AVAILABILITY = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:198:13
pub const __OS_AVAILABILITY_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:199:13
pub const __OSX_EXTENSION_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `macosx_app_extension`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:216:13
pub const __IOS_EXTENSION_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `ios_app_extension`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:217:13
pub const __OS_EXTENSION_UNAVAILABLE = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:227:9
pub const __OSX_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `macosx`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:234:13
pub const __OSX_AVAILABLE = @compileError("unable to translate macro: undefined identifier `macosx`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:235:13
pub const __OSX_DEPRECATED = @compileError("unable to translate macro: undefined identifier `macosx`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:236:13
pub const __IOS_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `ios`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:256:13
pub const __IOS_PROHIBITED = @compileError("unable to translate macro: undefined identifier `ios`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:257:13
pub const __IOS_AVAILABLE = @compileError("unable to translate macro: undefined identifier `ios`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:258:13
pub const __IOS_DEPRECATED = @compileError("unable to translate macro: undefined identifier `ios`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:259:13
pub const __TVOS_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `tvos`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:283:13
pub const __TVOS_PROHIBITED = @compileError("unable to translate macro: undefined identifier `tvos`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:284:13
pub const __TVOS_AVAILABLE = @compileError("unable to translate macro: undefined identifier `tvos`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:285:13
pub const __TVOS_DEPRECATED = @compileError("unable to translate macro: undefined identifier `tvos`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:286:13
pub const __WATCHOS_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `watchos`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:310:13
pub const __WATCHOS_PROHIBITED = @compileError("unable to translate macro: undefined identifier `watchos`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:311:13
pub const __WATCHOS_AVAILABLE = @compileError("unable to translate macro: undefined identifier `watchos`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:312:13
pub const __WATCHOS_DEPRECATED = @compileError("unable to translate macro: undefined identifier `watchos`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:313:13
pub const __SWIFT_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `swift`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:337:13
pub const __SWIFT_UNAVAILABLE_MSG = @compileError("unable to translate macro: undefined identifier `swift`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:338:13
pub const __API_AVAILABLE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:381:13
pub const __API_AVAILABLE_BEGIN = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:383:13
pub const __API_AVAILABLE_END = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:384:13
pub const __API_DEPRECATED = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:402:13
pub const __API_DEPRECATED_WITH_REPLACEMENT = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:403:13
pub const __API_DEPRECATED_BEGIN = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:405:13
pub const __API_DEPRECATED_END = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:406:13
pub const __API_DEPRECATED_WITH_REPLACEMENT_BEGIN = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:408:13
pub const __API_DEPRECATED_WITH_REPLACEMENT_END = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:409:13
pub const __API_UNAVAILABLE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:419:13
pub const __API_UNAVAILABLE_BEGIN = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:421:13
pub const __API_UNAVAILABLE_END = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:422:13
pub const __SPI_DEPRECATED = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:475:11
pub const __SPI_DEPRECATED_WITH_REPLACEMENT = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/Availability.h:479:11
pub const ECS_ALIGNOF = @compileError("unable to translate macro: undefined identifier `__alignof__`"); // flecs.h:222:9
pub const ECS_UNUSED = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // flecs.h:228:9
pub const ECS_DEPRECATED = @compileError("unable to translate C expr: unexpected token 'Eof'"); // flecs.h:242:9
pub const ECS_HAS_ROLE = @compileError("unable to translate macro: undefined identifier `ECS_`"); // flecs.h:280:9
pub const ECS_HAS_RELATION = @compileError("unable to translate macro: undefined identifier `PAIR`"); // flecs.h:283:9
pub const ECS_ID_ON_DELETE = @compileError("unable to translate C expr: expected ')' instead got '['"); // flecs.h:314:9
pub const ecs_id = @compileError("unable to translate macro: undefined identifier `FLECS__E`"); // flecs.h:327:9
pub const ecs_iter_action = @compileError("unable to translate macro: undefined identifier `FLECS__F`"); // flecs.h:330:9
pub const ECS_XTOR_IMPL = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:369:9
pub const ECS_COPY_IMPL = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:396:9
pub const ECS_MOVE_IMPL = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:431:9
pub const ECS_ON_SET_IMPL = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:466:9
pub const ecs_log = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:643:9
pub const ecs_logv = @compileError("unable to translate macro: undefined identifier `__FILE__`"); // flecs.h:646:9
pub const _ecs_trace = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:650:9
pub const ecs_trace = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:651:9
pub const _ecs_warn = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:654:9
pub const ecs_warn = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:655:9
pub const _ecs_err = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:658:9
pub const ecs_err = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:659:9
pub const _ecs_fatal = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:662:9
pub const ecs_fatal = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:663:9
pub const ecs_deprecated = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:670:9
pub const ecs_dbg_1 = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:687:9
pub const ecs_dbg_2 = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:688:9
pub const ecs_dbg_3 = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:689:9
pub const ecs_abort = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:719:9
pub const ecs_assert = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:728:9
pub const ecs_dbg_assert = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:738:9
pub const ecs_dummy_check = @compileError("unable to translate macro: undefined identifier `error`"); // flecs.h:744:9
pub const ecs_check = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:760:9
pub const ecs_throw = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:776:9
pub const ecs_parser_error = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:783:9
pub const ECS_VECTOR_VALUE = @compileError("unable to translate C expr: unexpected token '{'"); // flecs.h:953:9
pub const ECS_VECTOR_DECL = @compileError("unable to translate macro: undefined identifier `vector`"); // flecs.h:967:9
pub const ECS_VECTOR_IMPL = @compileError("unable to translate macro: undefined identifier `__`"); // flecs.h:979:9
pub const ECS_VECTOR_STACK = @compileError("unable to translate C expr: unexpected token ';'"); // flecs.h:982:9
pub const ecs_vector_add = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:1049:9
pub const ecs_vector_insert_at = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:1063:9
pub const ecs_vector_addn = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:1077:9
pub const ecs_vector_get = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:1091:9
pub const ecs_vector_last = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:1104:9
pub const ecs_vector_first = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:1249:9
pub const ecs_vector_each = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:1295:9
pub const ecs_map_get = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:1496:9
pub const ecs_map_ensure = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:1524:9
pub const ecs_map_set = @compileError("unable to translate C expr: unexpected token '*'"); // flecs.h:1535:9
pub const ecs_map_next = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:1578:9
pub const ecs_map_each = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:1615:9
pub const __alloca = @compileError("unable to translate macro: undefined identifier `__builtin_alloca`"); // /Users/desaro/zig/lib/zig/libc/include/any-macos-any/alloca.h:40:9
pub const ecs_os_malloc_t = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:2141:9
pub const ecs_os_malloc_n = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:2142:9
pub const ecs_os_calloc_t = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:2143:9
pub const ecs_os_calloc_n = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:2144:9
pub const ecs_os_realloc_t = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:2145:9
pub const ecs_os_realloc_n = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:2146:9
pub const ecs_os_alloca_t = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:2147:9
pub const ecs_os_alloca_n = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:2148:9
pub const ecs_os_strset = @compileError("unable to translate C expr: unexpected token ';'"); // flecs.h:2155:9
pub const ecs_offset = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:2184:9
pub const ecs_os_sprintf = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:2199:9
pub const ecs_os_vsprintf = @compileError("unable to translate macro: undefined identifier `vsprintf`"); // flecs.h:2200:9
pub const ecs_os_fopen = @compileError("unable to translate macro: undefined identifier `fopen`"); // flecs.h:2213:9
pub const flecs_sparse_add = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:3240:9
pub const flecs_sparse_remove_get = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:3274:9
pub const flecs_sparse_get_dense = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:3303:9
pub const flecs_sparse_get = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:3324:9
pub const flecs_sparse_get_any = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:3334:9
pub const flecs_sparse_ensure = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:3344:9
pub const flecs_sparse_set = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:3355:9
pub const flecs_sparse_each = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:3396:9
pub const ecs_sparse_add = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:3422:9
pub const ecs_sparse_get_dense = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:3445:9
pub const ecs_sparse_get = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:3454:9
pub const flecs_hashmap_get = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:3520:9
pub const flecs_hashmap_next = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:3580:9
pub const flecs_hashmap_next_w_key = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:3583:9
pub const EcsLastInternalComponentId = @compileError("unable to translate macro: undefined identifier `EcsSystem`"); // flecs.h:4273:9
pub const ECS_PIPELINE_DEFINE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:7893:9
pub const ECS_PIPELINE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:7903:9
pub const ECS_SYSTEM_DEFINE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:8175:9
pub const ECS_SYSTEM = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:8186:9
pub const offsetof = @compileError("unable to translate macro: undefined identifier `__builtin_offsetof`"); // /Users/desaro/zig/lib/zig/include/stddef.h:104:9
pub const ECS_META_COMPONENT = @compileError("unable to translate macro: undefined identifier `FLECS__`"); // flecs.h:9524:9
pub const ECS_STRUCT = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:9530:9
pub const ECS_ENUM = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:9535:9
pub const ECS_BITMASK = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:9540:9
pub const ECS_META_IMPL_CALL_INNER = @compileError("unable to translate C expr: unexpected token '##'"); // flecs.h:9559:9
pub const ECS_STRUCT_TYPE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:9566:9
pub const ECS_STRUCT_IMPL = @compileError("unable to translate macro: undefined identifier `FLECS__`"); // flecs.h:9571:9
pub const ECS_STRUCT_DECLARE = @compileError("unable to translate C expr: unexpected token 'extern'"); // flecs.h:9577:9
pub const ECS_STRUCT_EXTERN = @compileError("unable to translate C expr: unexpected token 'extern'"); // flecs.h:9581:9
pub const ECS_ENUM_TYPE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:9586:9
pub const ECS_ENUM_IMPL = @compileError("unable to translate macro: undefined identifier `FLECS__`"); // flecs.h:9591:9
pub const ECS_ENUM_DECLARE = @compileError("unable to translate C expr: unexpected token 'extern'"); // flecs.h:9597:9
pub const ECS_ENUM_EXTERN = @compileError("unable to translate C expr: unexpected token 'extern'"); // flecs.h:9601:9
pub const ECS_BITMASK_TYPE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:9606:9
pub const ECS_BITMASK_IMPL = @compileError("unable to translate macro: undefined identifier `FLECS__`"); // flecs.h:9611:9
pub const ECS_BITMASK_DECLARE = @compileError("unable to translate C expr: unexpected token 'extern'"); // flecs.h:9617:9
pub const ECS_BITMASK_EXTERN = @compileError("unable to translate C expr: unexpected token 'extern'"); // flecs.h:9621:9
pub const FLECS_META_C_EXPORT = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // flecs.h:9630:9
pub const ECS_MODULE = @compileError("unable to translate C expr: unexpected token '='"); // flecs.h:10705:9
pub const ECS_IMPORT = @compileError("unable to translate macro: undefined identifier `FLECS__`"); // flecs.h:10727:9
pub const ECS_ENTITY_DEFINE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:10760:9
pub const ECS_ENTITY = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:10772:9
pub const ECS_PREFAB_DEFINE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:10780:9
pub const ECS_PREFAB = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:10781:9
pub const ECS_COMPONENT_DEFINE = @compileError("unable to translate macro: undefined identifier `desc`"); // flecs.h:10785:9
pub const ECS_COMPONENT = @compileError("unable to translate C expr: unexpected token '='"); // flecs.h:10797:9
pub const ECS_TRIGGER_DEFINE = @compileError("unable to translate macro: undefined identifier `desc`"); // flecs.h:10806:9
pub const ECS_TRIGGER = @compileError("unable to translate C expr: unexpected token '='"); // flecs.h:10818:9
pub const ECS_OBSERVER_DEFINE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:10826:9
pub const ECS_OBSERVER = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:10838:9
pub const ecs_set_component_actions = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:10856:9
pub const ecs_new_entity = @compileError("unable to translate C expr: expected '.' instead got '}'"); // flecs.h:10869:9
pub const ecs_new_prefab = @compileError("unable to translate C expr: unexpected token '{'"); // flecs.h:10874:9
pub const ecs_set = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:10909:9
pub const ecs_set_pair = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:10912:9
pub const ecs_set_pair_object = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:10917:9
pub const ecs_set_override = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:10922:9
pub const ecs_emplace = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:10928:9
pub const ecs_get_ref = @compileError("unable to translate C expr: unexpected token 'const'"); // flecs.h:10934:9
pub const ecs_get = @compileError("unable to translate C expr: unexpected token 'const'"); // flecs.h:10937:9
pub const ecs_get_pair = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:10940:9
pub const ecs_get_pair_object = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:10944:9
pub const ecs_get_mut = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:10951:9
pub const ecs_get_mut_pair = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:10954:9
pub const ecs_get_mut_pair_object = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:10958:9
pub const ecs_singleton_set = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:10980:9
pub const ecs_term = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:11085:9
pub const ecs_iter_column = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:11088:9
pub const ECS_CTOR = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:11113:9
pub const ECS_DTOR = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:11120:9
pub const ECS_COPY = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:11127:9
pub const ECS_MOVE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:11134:9
pub const ECS_ON_SET = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:11141:9
pub const ecs_ctor = @compileError("unable to translate macro: undefined identifier `_ctor`"); // flecs.h:11145:9
pub const ecs_dtor = @compileError("unable to translate macro: undefined identifier `_dtor`"); // flecs.h:11146:9
pub const ecs_copy = @compileError("unable to translate macro: undefined identifier `_copy`"); // flecs.h:11147:9
pub const ecs_move = @compileError("unable to translate macro: undefined identifier `_move`"); // flecs.h:11148:9
pub const ecs_on_set = @compileError("unable to translate macro: undefined identifier `_on_set`"); // flecs.h:11149:9
pub const ecs_query_new = @compileError("unable to translate C expr: expected '=' instead got '.'"); // flecs.h:11151:9
pub const ECS_TYPE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:11161:9
pub const ECS_FUNC_NAME_FRONT = @compileError("unable to translate C expr: unexpected token '#'"); // flecs.h:11195:9
pub const ECS_FUNC_NAME_BACK = @compileError("unable to translate C expr: unexpected token 'StringLiteral'"); // flecs.h:11196:9
pub const ECS_FUNC_NAME = @compileError("unable to translate macro: undefined identifier `__PRETTY_FUNCTION__`"); // flecs.h:11197:9
pub const ECS_FUNC_TYPE_LEN = @compileError("unable to translate macro: undefined identifier `flecs`"); // flecs.h:11210:9
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 13);
pub const __clang_minor__ = @as(c_int, 0);
pub const __clang_patchlevel__ = @as(c_int, 0);
pub const __clang_version__ = "13.0.0 (git@github.com:ziglang/zig-bootstrap.git 6a5bc3f4a88cc446baad6b0d8677c287f77d9393)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 13.0.0 (git@github.com:ziglang/zig-bootstrap.git 6a5bc3f4a88cc446baad6b0d8677c287f77d9393)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 1);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __BLOCKS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __OPTIMIZE__ = @as(c_int, 1);
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __WCHAR_TYPE__ = c_int;
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_TYPE__ = c_int;
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = 4.9406564584124654e-324;
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = 2.2204460492503131e-16;
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = 1.7976931348623157e+308;
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = 2.2250738585072014e-308;
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 4.9406564584124654e-324);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 15);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 2.2204460492503131e-16);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 53);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __LDBL_MAX_EXP__ = @as(c_int, 1024);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.7976931348623157e+308);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __LDBL_MIN__ = @as(c_longdouble, 2.2250738585072014e-308);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 8);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_longlong;
pub const __INT64_FMTd__ = "lld";
pub const __INT64_FMTi__ = "lli";
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulonglong;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_longlong;
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_FMTd__ = "lld";
pub const __INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_TYPE__ = c_ulonglong;
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_LEAST64_FMTo__ = "llo";
pub const __UINT_LEAST64_FMTu__ = "llu";
pub const __UINT_LEAST64_FMTx__ = "llx";
pub const __UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_longlong;
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_FMTd__ = "lld";
pub const __INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_TYPE__ = c_ulonglong;
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_FAST64_FMTo__ = "llo";
pub const __UINT_FAST64_FMTu__ = "llu";
pub const __UINT_FAST64_FMTx__ = "llx";
pub const __UINT_FAST64_FMTX__ = "llX";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_EVAL_METHOD__ = @as(c_int, 0);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = @as(c_int, 2);
pub const __AARCH64EL__ = @as(c_int, 1);
pub const __aarch64__ = @as(c_int, 1);
pub const __AARCH64_CMODEL_SMALL__ = @as(c_int, 1);
pub const __ARM_ACLE = @as(c_int, 200);
pub const __ARM_ARCH = @as(c_int, 8);
pub const __ARM_ARCH_PROFILE = 'A';
pub const __ARM_64BIT_STATE = @as(c_int, 1);
pub const __ARM_PCS_AAPCS64 = @as(c_int, 1);
pub const __ARM_ARCH_ISA_A64 = @as(c_int, 1);
pub const __ARM_FEATURE_CLZ = @as(c_int, 1);
pub const __ARM_FEATURE_FMA = @as(c_int, 1);
pub const __ARM_FEATURE_LDREX = @as(c_int, 0xF);
pub const __ARM_FEATURE_IDIV = @as(c_int, 1);
pub const __ARM_FEATURE_DIV = @as(c_int, 1);
pub const __ARM_FEATURE_NUMERIC_MAXMIN = @as(c_int, 1);
pub const __ARM_FEATURE_DIRECTED_ROUNDING = @as(c_int, 1);
pub const __ARM_ALIGN_MAX_STACK_PWR = @as(c_int, 4);
pub const __ARM_FP = @as(c_int, 0xE);
pub const __ARM_FP16_FORMAT_IEEE = @as(c_int, 1);
pub const __ARM_FP16_ARGS = @as(c_int, 1);
pub const __ARM_SIZEOF_WCHAR_T = @as(c_int, 4);
pub const __ARM_SIZEOF_MINIMAL_ENUM = @as(c_int, 4);
pub const __ARM_NEON = @as(c_int, 1);
pub const __ARM_NEON_FP = @as(c_int, 0xE);
pub const __ARM_FEATURE_CRC32 = @as(c_int, 1);
pub const __ARM_FEATURE_CRYPTO = @as(c_int, 1);
pub const __ARM_FEATURE_AES = @as(c_int, 1);
pub const __ARM_FEATURE_SHA2 = @as(c_int, 1);
pub const __ARM_FEATURE_SHA3 = @as(c_int, 1);
pub const __ARM_FEATURE_SHA512 = @as(c_int, 1);
pub const __ARM_FEATURE_UNALIGNED = @as(c_int, 1);
pub const __ARM_FEATURE_FP16_VECTOR_ARITHMETIC = @as(c_int, 1);
pub const __ARM_FEATURE_FP16_SCALAR_ARITHMETIC = @as(c_int, 1);
pub const __ARM_FEATURE_DOTPROD = @as(c_int, 1);
pub const __ARM_FEATURE_ATOMICS = @as(c_int, 1);
pub const __ARM_FEATURE_FP16_FML = @as(c_int, 1);
pub const __ARM_FEATURE_COMPLEX = @as(c_int, 1);
pub const __ARM_FEATURE_JCVT = @as(c_int, 1);
pub const __ARM_FEATURE_QRDMX = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __AARCH64_SIMD__ = @as(c_int, 1);
pub const __ARM64_ARCH_8__ = @as(c_int, 1);
pub const __ARM_NEON__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __arm64 = @as(c_int, 1);
pub const __arm64__ = @as(c_int, 1);
pub const __APPLE_CC__ = @as(c_int, 6000);
pub const __APPLE__ = @as(c_int, 1);
pub const __STDC_NO_THREADS__ = @as(c_int, 1);
pub const __strong = "";
pub const __unsafe_unretained = "";
pub const __DYNAMIC__ = @as(c_int, 1);
pub const __ENVIRONMENT_MAC_OS_X_VERSION_MIN_REQUIRED__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120001, .decimal);
pub const __MACH__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const _DEBUG = @as(c_int, 1);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const flecs_STATIC = "";
pub const FLECS_H = "";
pub const FLECS_FLOAT = f32;
pub const FLECS_NO_DEPRECATED_WARNINGS = "";
pub const FLECS_SANITIZE = "";
pub const FLECS_CPP = "";
pub const FLECS_MODULE = "";
pub const FLECS_PARSER = "";
pub const FLECS_PLECS = "";
pub const FLECS_RULES = "";
pub const FLECS_SNAPSHOT = "";
pub const FLECS_STATS = "";
pub const FLECS_SYSTEM = "";
pub const FLECS_PIPELINE = "";
pub const FLECS_TIMER = "";
pub const FLECS_META = "";
pub const FLECS_META_C = "";
pub const FLECS_EXPR = "";
pub const FLECS_JSON = "";
pub const FLECS_DOC = "";
pub const FLECS_COREDOC = "";
pub const FLECS_LOG = "";
pub const FLECS_APP = "";
pub const FLECS_OS_API_IMPL = "";
pub const FLECS_HTTP = "";
pub const FLECS_REST = "";
pub const FLECS_API_DEFINES_H = "";
pub const ECS_TARGET_DARWIN = "";
pub const ECS_TARGET_POSIX = "";
pub const ECS_TARGET_GNU = "";
pub const _CDEFS_H_ = "";
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __P(protos: anytype) @TypeOf(protos) {
    return protos;
}
pub const __signed = c_int;
pub inline fn __deprecated_enum_msg(_msg: anytype) @TypeOf(__deprecated_msg(_msg)) {
    return __deprecated_msg(_msg);
}
pub const __kpi_unavailable = "";
pub const __kpi_deprecated_arm64_macos_unavailable = "";
pub const __dead = "";
pub const __pure = "";
pub const __abortlike = __dead2 ++ __cold ++ __not_tail_called;
pub const __DARWIN_ONLY_64_BIT_INO_T = @as(c_int, 1);
pub const __DARWIN_ONLY_UNIX_CONFORMANCE = @as(c_int, 1);
pub const __DARWIN_ONLY_VERS_1050 = @as(c_int, 1);
pub const __DARWIN_UNIX03 = @as(c_int, 1);
pub const __DARWIN_64_BIT_INO_T = @as(c_int, 1);
pub const __DARWIN_VERS_1050 = @as(c_int, 1);
pub const __DARWIN_NON_CANCELABLE = @as(c_int, 0);
pub const __DARWIN_SUF_UNIX03 = "";
pub const __DARWIN_SUF_64_BIT_INO_T = "";
pub const __DARWIN_SUF_1050 = "";
pub const __DARWIN_SUF_NON_CANCELABLE = "";
pub const __DARWIN_SUF_EXTSN = "$DARWIN_EXTSN";
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_0(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_1(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_2(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_3(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_4(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_5(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_6(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_7(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_8(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_9(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_2(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_3(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_2(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_3(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_4(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_1(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_2(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_4(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_1(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_2(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_4(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_1(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_4(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_5(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_6(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15_1(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_16(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_0(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_1(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_3(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_0(x: anytype) @TypeOf(x) {
    return x;
}
pub const ___POSIX_C_DEPRECATED_STARTING_198808L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199009L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199209L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199309L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199506L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_200112L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_200809L = "";
pub const __DARWIN_C_ANSI = @as(c_long, 0o10000);
pub const __DARWIN_C_FULL = @as(c_long, 900000);
pub const __DARWIN_C_LEVEL = __DARWIN_C_FULL;
pub const __STDC_WANT_LIB_EXT1__ = @as(c_int, 1);
pub const __DARWIN_NO_LONG_LONG = @as(c_int, 0);
pub const _DARWIN_FEATURE_64_BIT_INODE = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_64_BIT_INODE = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_VERS_1050 = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_UNIX_CONFORMANCE = @as(c_int, 1);
pub const _DARWIN_FEATURE_UNIX_CONFORMANCE = @as(c_int, 3);
pub inline fn __CAST_AWAY_QUALIFIER(variable: anytype, qualifier: anytype, @"type": anytype) @TypeOf(@"type"(c_long)(variable)) {
    _ = qualifier;
    return @"type"(c_long)(variable);
}
pub const __kernel_ptr_semantics = "";
pub const __kernel_data_semantics = "";
pub const __kernel_dual_semantics = "";
pub const _ASSERT_H_ = "";
pub const __STDARG_H = "";
pub const _VA_LIST = "";
pub const __GNUC_VA_LIST = @as(c_int, 1);
pub const _STRING_H_ = "";
pub const __TYPES_H_ = "";
pub const _SYS__TYPES_H_ = "";
pub const _BSD_MACHINE__TYPES_H_ = "";
pub const _BSD_ARM__TYPES_H_ = "";
pub const __DARWIN_NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const _SYS__PTHREAD_TYPES_H_ = "";
pub const __PTHREAD_SIZE__ = @as(c_int, 8176);
pub const __PTHREAD_ATTR_SIZE__ = @as(c_int, 56);
pub const __PTHREAD_MUTEXATTR_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_MUTEX_SIZE__ = @as(c_int, 56);
pub const __PTHREAD_CONDATTR_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_COND_SIZE__ = @as(c_int, 40);
pub const __PTHREAD_ONCE_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_RWLOCK_SIZE__ = @as(c_int, 192);
pub const __PTHREAD_RWLOCKATTR_SIZE__ = @as(c_int, 16);
pub const __DARWIN_WCHAR_MAX = __WCHAR_MAX__;
pub const __DARWIN_WCHAR_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hexadecimal) - @as(c_int, 1);
pub const __DARWIN_WEOF = @import("std").zig.c_translation.cast(__darwin_wint_t, -@as(c_int, 1));
pub const _FORTIFY_SOURCE = @as(c_int, 2);
pub const __AVAILABILITY__ = "";
pub const __API_TO_BE_DEPRECATED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __AVAILABILITY_VERSIONS__ = "";
pub const __MAC_10_0 = @as(c_int, 1000);
pub const __MAC_10_1 = @as(c_int, 1010);
pub const __MAC_10_2 = @as(c_int, 1020);
pub const __MAC_10_3 = @as(c_int, 1030);
pub const __MAC_10_4 = @as(c_int, 1040);
pub const __MAC_10_5 = @as(c_int, 1050);
pub const __MAC_10_6 = @as(c_int, 1060);
pub const __MAC_10_7 = @as(c_int, 1070);
pub const __MAC_10_8 = @as(c_int, 1080);
pub const __MAC_10_9 = @as(c_int, 1090);
pub const __MAC_10_10 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101000, .decimal);
pub const __MAC_10_10_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101002, .decimal);
pub const __MAC_10_10_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101003, .decimal);
pub const __MAC_10_11 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101100, .decimal);
pub const __MAC_10_11_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101102, .decimal);
pub const __MAC_10_11_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101103, .decimal);
pub const __MAC_10_11_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101104, .decimal);
pub const __MAC_10_12 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101200, .decimal);
pub const __MAC_10_12_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101201, .decimal);
pub const __MAC_10_12_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101202, .decimal);
pub const __MAC_10_12_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101204, .decimal);
pub const __MAC_10_13 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101300, .decimal);
pub const __MAC_10_13_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101301, .decimal);
pub const __MAC_10_13_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101302, .decimal);
pub const __MAC_10_13_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101304, .decimal);
pub const __MAC_10_14 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101400, .decimal);
pub const __MAC_10_14_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101401, .decimal);
pub const __MAC_10_14_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101404, .decimal);
pub const __MAC_10_14_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101406, .decimal);
pub const __MAC_10_15 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101500, .decimal);
pub const __MAC_10_15_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101501, .decimal);
pub const __MAC_10_15_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101504, .decimal);
pub const __MAC_10_16 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101600, .decimal);
pub const __MAC_11_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110000, .decimal);
pub const __MAC_11_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110100, .decimal);
pub const __MAC_11_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110300, .decimal);
pub const __MAC_11_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110400, .decimal);
pub const __MAC_11_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110500, .decimal);
pub const __MAC_12_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120000, .decimal);
pub const __IPHONE_2_0 = @as(c_int, 20000);
pub const __IPHONE_2_1 = @as(c_int, 20100);
pub const __IPHONE_2_2 = @as(c_int, 20200);
pub const __IPHONE_3_0 = @as(c_int, 30000);
pub const __IPHONE_3_1 = @as(c_int, 30100);
pub const __IPHONE_3_2 = @as(c_int, 30200);
pub const __IPHONE_4_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40000, .decimal);
pub const __IPHONE_4_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40100, .decimal);
pub const __IPHONE_4_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40200, .decimal);
pub const __IPHONE_4_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40300, .decimal);
pub const __IPHONE_5_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50000, .decimal);
pub const __IPHONE_5_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50100, .decimal);
pub const __IPHONE_6_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60000, .decimal);
pub const __IPHONE_6_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60100, .decimal);
pub const __IPHONE_7_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70000, .decimal);
pub const __IPHONE_7_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70100, .decimal);
pub const __IPHONE_8_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80000, .decimal);
pub const __IPHONE_8_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80100, .decimal);
pub const __IPHONE_8_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80200, .decimal);
pub const __IPHONE_8_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80300, .decimal);
pub const __IPHONE_8_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80400, .decimal);
pub const __IPHONE_9_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90000, .decimal);
pub const __IPHONE_9_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90100, .decimal);
pub const __IPHONE_9_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90200, .decimal);
pub const __IPHONE_9_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90300, .decimal);
pub const __IPHONE_10_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __IPHONE_10_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100100, .decimal);
pub const __IPHONE_10_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100200, .decimal);
pub const __IPHONE_10_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100300, .decimal);
pub const __IPHONE_11_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110000, .decimal);
pub const __IPHONE_11_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110100, .decimal);
pub const __IPHONE_11_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110200, .decimal);
pub const __IPHONE_11_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110300, .decimal);
pub const __IPHONE_11_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110400, .decimal);
pub const __IPHONE_12_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120000, .decimal);
pub const __IPHONE_12_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120100, .decimal);
pub const __IPHONE_12_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120200, .decimal);
pub const __IPHONE_12_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120300, .decimal);
pub const __IPHONE_12_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120400, .decimal);
pub const __IPHONE_13_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130000, .decimal);
pub const __IPHONE_13_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130100, .decimal);
pub const __IPHONE_13_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130200, .decimal);
pub const __IPHONE_13_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130300, .decimal);
pub const __IPHONE_13_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130400, .decimal);
pub const __IPHONE_13_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130500, .decimal);
pub const __IPHONE_13_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130600, .decimal);
pub const __IPHONE_13_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130700, .decimal);
pub const __IPHONE_14_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140000, .decimal);
pub const __IPHONE_14_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140100, .decimal);
pub const __IPHONE_14_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140200, .decimal);
pub const __IPHONE_14_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140300, .decimal);
pub const __IPHONE_14_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140500, .decimal);
pub const __IPHONE_14_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140600, .decimal);
pub const __IPHONE_14_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140700, .decimal);
pub const __IPHONE_14_8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140800, .decimal);
pub const __IPHONE_15_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150000, .decimal);
pub const __TVOS_9_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90000, .decimal);
pub const __TVOS_9_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90100, .decimal);
pub const __TVOS_9_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90200, .decimal);
pub const __TVOS_10_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __TVOS_10_0_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100001, .decimal);
pub const __TVOS_10_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100100, .decimal);
pub const __TVOS_10_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100200, .decimal);
pub const __TVOS_11_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110000, .decimal);
pub const __TVOS_11_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110100, .decimal);
pub const __TVOS_11_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110200, .decimal);
pub const __TVOS_11_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110300, .decimal);
pub const __TVOS_11_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110400, .decimal);
pub const __TVOS_12_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120000, .decimal);
pub const __TVOS_12_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120100, .decimal);
pub const __TVOS_12_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120200, .decimal);
pub const __TVOS_12_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120300, .decimal);
pub const __TVOS_12_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120400, .decimal);
pub const __TVOS_13_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130000, .decimal);
pub const __TVOS_13_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130200, .decimal);
pub const __TVOS_13_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130300, .decimal);
pub const __TVOS_13_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130400, .decimal);
pub const __TVOS_14_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140000, .decimal);
pub const __TVOS_14_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140100, .decimal);
pub const __TVOS_14_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140200, .decimal);
pub const __TVOS_14_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140300, .decimal);
pub const __TVOS_14_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140500, .decimal);
pub const __TVOS_14_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140600, .decimal);
pub const __TVOS_14_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140700, .decimal);
pub const __TVOS_15_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150000, .decimal);
pub const __WATCHOS_1_0 = @as(c_int, 10000);
pub const __WATCHOS_2_0 = @as(c_int, 20000);
pub const __WATCHOS_2_1 = @as(c_int, 20100);
pub const __WATCHOS_2_2 = @as(c_int, 20200);
pub const __WATCHOS_3_0 = @as(c_int, 30000);
pub const __WATCHOS_3_1 = @as(c_int, 30100);
pub const __WATCHOS_3_1_1 = @as(c_int, 30101);
pub const __WATCHOS_3_2 = @as(c_int, 30200);
pub const __WATCHOS_4_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40000, .decimal);
pub const __WATCHOS_4_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40100, .decimal);
pub const __WATCHOS_4_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40200, .decimal);
pub const __WATCHOS_4_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40300, .decimal);
pub const __WATCHOS_5_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50000, .decimal);
pub const __WATCHOS_5_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50100, .decimal);
pub const __WATCHOS_5_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50200, .decimal);
pub const __WATCHOS_5_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50300, .decimal);
pub const __WATCHOS_6_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60000, .decimal);
pub const __WATCHOS_6_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60100, .decimal);
pub const __WATCHOS_6_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60200, .decimal);
pub const __WATCHOS_7_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70000, .decimal);
pub const __WATCHOS_7_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70100, .decimal);
pub const __WATCHOS_7_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70200, .decimal);
pub const __WATCHOS_7_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70300, .decimal);
pub const __WATCHOS_7_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70400, .decimal);
pub const __WATCHOS_7_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70500, .decimal);
pub const __WATCHOS_7_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70600, .decimal);
pub const __WATCHOS_8_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80000, .decimal);
pub const MAC_OS_X_VERSION_10_0 = @as(c_int, 1000);
pub const MAC_OS_X_VERSION_10_1 = @as(c_int, 1010);
pub const MAC_OS_X_VERSION_10_2 = @as(c_int, 1020);
pub const MAC_OS_X_VERSION_10_3 = @as(c_int, 1030);
pub const MAC_OS_X_VERSION_10_4 = @as(c_int, 1040);
pub const MAC_OS_X_VERSION_10_5 = @as(c_int, 1050);
pub const MAC_OS_X_VERSION_10_6 = @as(c_int, 1060);
pub const MAC_OS_X_VERSION_10_7 = @as(c_int, 1070);
pub const MAC_OS_X_VERSION_10_8 = @as(c_int, 1080);
pub const MAC_OS_X_VERSION_10_9 = @as(c_int, 1090);
pub const MAC_OS_X_VERSION_10_10 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101000, .decimal);
pub const MAC_OS_X_VERSION_10_10_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101002, .decimal);
pub const MAC_OS_X_VERSION_10_10_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101003, .decimal);
pub const MAC_OS_X_VERSION_10_11 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101100, .decimal);
pub const MAC_OS_X_VERSION_10_11_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101102, .decimal);
pub const MAC_OS_X_VERSION_10_11_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101103, .decimal);
pub const MAC_OS_X_VERSION_10_11_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101104, .decimal);
pub const MAC_OS_X_VERSION_10_12 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101200, .decimal);
pub const MAC_OS_X_VERSION_10_12_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101201, .decimal);
pub const MAC_OS_X_VERSION_10_12_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101202, .decimal);
pub const MAC_OS_X_VERSION_10_12_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101204, .decimal);
pub const MAC_OS_X_VERSION_10_13 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101300, .decimal);
pub const MAC_OS_X_VERSION_10_13_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101301, .decimal);
pub const MAC_OS_X_VERSION_10_13_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101302, .decimal);
pub const MAC_OS_X_VERSION_10_13_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101304, .decimal);
pub const MAC_OS_X_VERSION_10_14 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101400, .decimal);
pub const MAC_OS_X_VERSION_10_14_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101401, .decimal);
pub const MAC_OS_X_VERSION_10_14_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101404, .decimal);
pub const MAC_OS_X_VERSION_10_14_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101406, .decimal);
pub const MAC_OS_X_VERSION_10_15 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101500, .decimal);
pub const MAC_OS_X_VERSION_10_15_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101501, .decimal);
pub const MAC_OS_X_VERSION_10_16 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101600, .decimal);
pub const MAC_OS_VERSION_11_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110000, .decimal);
pub const MAC_OS_VERSION_12_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120000, .decimal);
pub const __DRIVERKIT_19_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 190000, .decimal);
pub const __DRIVERKIT_20_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 200000, .decimal);
pub const __DRIVERKIT_21_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 210000, .decimal);
pub const __AVAILABILITY_INTERNAL__ = "";
pub const __MAC_OS_X_VERSION_MIN_REQUIRED = __ENVIRONMENT_MAC_OS_X_VERSION_MIN_REQUIRED__;
pub const __MAC_OS_X_VERSION_MAX_ALLOWED = __MAC_12_0;
pub const __AVAILABILITY_INTERNAL_REGULAR = "";
pub const __ENABLE_LEGACY_MAC_AVAILABILITY = @as(c_int, 1);
pub inline fn __API_AVAILABLE1(x: anytype) @TypeOf(__API_A(x)) {
    return __API_A(x);
}
pub inline fn __API_RANGE_STRINGIFY(x: anytype) @TypeOf(__API_RANGE_STRINGIFY2(x)) {
    return __API_RANGE_STRINGIFY2(x);
}
pub inline fn __API_AVAILABLE_BEGIN1(a: anytype) @TypeOf(__API_A_BEGIN(a)) {
    return __API_A_BEGIN(a);
}
pub inline fn __API_DEPRECATED_MSG2(msg: anytype, x: anytype) @TypeOf(__API_D(msg, x)) {
    return __API_D(msg, x);
}
pub inline fn __API_DEPRECATED_BEGIN_MSG2(msg: anytype, a: anytype) @TypeOf(__API_D_BEGIN(msg, a)) {
    return __API_D_BEGIN(msg, a);
}
pub inline fn __API_DEPRECATED_REP2(rep: anytype, x: anytype) @TypeOf(__API_R(rep, x)) {
    return __API_R(rep, x);
}
pub inline fn __API_DEPRECATED_BEGIN_REP2(rep: anytype, a: anytype) @TypeOf(__API_R_BEGIN(rep, a)) {
    return __API_R_BEGIN(rep, a);
}
pub inline fn __API_UNAVAILABLE1(x: anytype) @TypeOf(__API_U(x)) {
    return __API_U(x);
}
pub inline fn __API_UNAVAILABLE_BEGIN1(a: anytype) @TypeOf(__API_U_BEGIN(a)) {
    return __API_U_BEGIN(a);
}
pub const _SIZE_T = "";
pub const NULL = __DARWIN_NULL;
pub const _RSIZE_T = "";
pub const _BSD_MACHINE_TYPES_H_ = "";
pub const _ARM_MACHTYPES_H_ = "";
pub const _MACHTYPES_H_ = "";
pub const _INT8_T = "";
pub const _INT16_T = "";
pub const _INT32_T = "";
pub const _INT64_T = "";
pub const _U_INT8_T = "";
pub const _U_INT16_T = "";
pub const _U_INT32_T = "";
pub const _U_INT64_T = "";
pub const _INTPTR_T = "";
pub const _UINTPTR_T = "";
pub const USER_ADDR_NULL = @import("std").zig.c_translation.cast(user_addr_t, @as(c_int, 0));
pub inline fn CAST_USER_ADDR_T(a_ptr: anytype) user_addr_t {
    return @import("std").zig.c_translation.cast(user_addr_t, @import("std").zig.c_translation.cast(usize, a_ptr));
}
pub const _ERRNO_T = "";
pub const _SSIZE_T = "";
pub const _STRINGS_H_ = "";
pub const _SECURE__STRINGS_H_ = "";
pub const _SECURE__COMMON_H_ = "";
pub const _USE_FORTIFY_LEVEL = @as(c_int, 2);
pub inline fn __darwin_obsz0(object: anytype) @TypeOf(__builtin_object_size(object, @as(c_int, 0))) {
    return __builtin_object_size(object, @as(c_int, 0));
}
pub inline fn __darwin_obsz(object: anytype) @TypeOf(__builtin_object_size(object, if (_USE_FORTIFY_LEVEL > @as(c_int, 1)) @as(c_int, 1) else @as(c_int, 0))) {
    return __builtin_object_size(object, if (_USE_FORTIFY_LEVEL > @as(c_int, 1)) @as(c_int, 1) else @as(c_int, 0));
}
pub const _SECURE__STRING_H_ = "";
pub const __HAS_FIXED_CHK_PROTOTYPES = @as(c_int, 1);
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H_ = "";
pub const __WORDSIZE = @as(c_int, 64);
pub const _UINT8_T = "";
pub const _UINT16_T = "";
pub const _UINT32_T = "";
pub const _UINT64_T = "";
pub const _INTMAX_T = "";
pub const _UINTMAX_T = "";
pub inline fn INT8_C(v: anytype) @TypeOf(v) {
    return v;
}
pub inline fn INT16_C(v: anytype) @TypeOf(v) {
    return v;
}
pub inline fn INT32_C(v: anytype) @TypeOf(v) {
    return v;
}
pub const INT64_C = @import("std").zig.c_translation.Macros.LL_SUFFIX;
pub inline fn UINT8_C(v: anytype) @TypeOf(v) {
    return v;
}
pub inline fn UINT16_C(v: anytype) @TypeOf(v) {
    return v;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const UINT64_C = @import("std").zig.c_translation.Macros.ULL_SUFFIX;
pub const INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = @as(c_longlong, 9223372036854775807);
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const INT32_MIN = -INT32_MAX - @as(c_int, 1);
pub const INT64_MIN = -INT64_MAX - @as(c_int, 1);
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = @as(c_ulonglong, 18446744073709551615);
pub const INT_LEAST8_MIN = INT8_MIN;
pub const INT_LEAST16_MIN = INT16_MIN;
pub const INT_LEAST32_MIN = INT32_MIN;
pub const INT_LEAST64_MIN = INT64_MIN;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const INT_LEAST16_MAX = INT16_MAX;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const INT_LEAST64_MAX = INT64_MAX;
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const UINT_LEAST16_MAX = UINT16_MAX;
pub const UINT_LEAST32_MAX = UINT32_MAX;
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const INT_FAST8_MIN = INT8_MIN;
pub const INT_FAST16_MIN = INT16_MIN;
pub const INT_FAST32_MIN = INT32_MIN;
pub const INT_FAST64_MIN = INT64_MIN;
pub const INT_FAST8_MAX = INT8_MAX;
pub const INT_FAST16_MAX = INT16_MAX;
pub const INT_FAST32_MAX = INT32_MAX;
pub const INT_FAST64_MAX = INT64_MAX;
pub const UINT_FAST8_MAX = UINT8_MAX;
pub const UINT_FAST16_MAX = UINT16_MAX;
pub const UINT_FAST32_MAX = UINT32_MAX;
pub const UINT_FAST64_MAX = UINT64_MAX;
pub const INTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INTPTR_MIN = -INTPTR_MAX - @as(c_int, 1);
pub const UINTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const INTMAX_MAX = INTMAX_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = UINTMAX_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTMAX_MIN = -INTMAX_MAX - @as(c_int, 1);
pub const PTRDIFF_MIN = INTMAX_MIN;
pub const PTRDIFF_MAX = INTMAX_MAX;
pub const SIZE_MAX = UINTPTR_MAX;
pub const RSIZE_MAX = SIZE_MAX >> @as(c_int, 1);
pub const WCHAR_MAX = __WCHAR_MAX__;
pub const WCHAR_MIN = -WCHAR_MAX - @as(c_int, 1);
pub const WINT_MIN = INT32_MIN;
pub const WINT_MAX = INT32_MAX;
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const FLECS_BAKE_CONFIG_H = "";
pub const FLECS_API = "";
pub const FLECS_DBG_API = FLECS_API;
pub const __STDBOOL_H = "";
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub inline fn ECS_SIZEOF(T: anytype) @TypeOf(ECS_CAST(ecs_size_t, @import("std").zig.c_translation.sizeof(T))) {
    _ = T;
    return ECS_CAST(ecs_size_t, @import("std").zig.c_translation.sizeof(T));
}
pub inline fn ECS_ALIGN(size: anytype, alignment: anytype) ecs_size_t {
    return @import("std").zig.c_translation.cast(ecs_size_t, (((@import("std").zig.c_translation.cast(usize, size) - @as(c_int, 1)) / @import("std").zig.c_translation.cast(usize, alignment)) + @as(c_int, 1)) * @import("std").zig.c_translation.cast(usize, alignment));
}
pub inline fn ECS_MAX(a: anytype, b: anytype) @TypeOf(if (a > b) a else b) {
    return if (a > b) a else b;
}
pub inline fn ECS_MIN(a: anytype, b: anytype) @TypeOf(if (a < b) a else b) {
    return if (a < b) a else b;
}
pub inline fn ECS_CAST(T: anytype, V: anytype) @TypeOf(T(V)) {
    return T(V);
}
pub const ECS_ROW_MASK = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x0FFFFFFF, .hexadecimal);
pub const ECS_ROW_FLAGS_MASK = ~ECS_ROW_MASK;
pub const ECS_FLAG_OBSERVED = @as(c_uint, 1) << @as(c_int, 31);
pub const ECS_FLAG_OBSERVED_ID = @as(c_uint, 1) << @as(c_int, 30);
pub const ECS_FLAG_OBSERVED_OBJECT = @as(c_uint, 1) << @as(c_int, 29);
pub const ECS_FLAG_OBSERVED_ACYCLIC = @as(c_uint, 1) << @as(c_int, 28);
pub inline fn ECS_RECORD_TO_ROW(v: anytype) @TypeOf(ECS_CAST(i32, ECS_CAST(u32, v) & ECS_ROW_MASK)) {
    return ECS_CAST(i32, ECS_CAST(u32, v) & ECS_ROW_MASK);
}
pub inline fn ECS_RECORD_TO_ROW_FLAGS(v: anytype) @TypeOf(ECS_CAST(u32, v) & ECS_ROW_FLAGS_MASK) {
    return ECS_CAST(u32, v) & ECS_ROW_FLAGS_MASK;
}
pub inline fn ECS_ROW_TO_RECORD(row: anytype, flags: anytype) @TypeOf(ECS_CAST(u32, ECS_CAST(u32, row) | flags)) {
    return ECS_CAST(u32, ECS_CAST(u32, row) | flags);
}
pub const ECS_ROLE_MASK = @as(c_ulonglong, 0xFF) << @as(c_int, 56);
pub const ECS_ENTITY_MASK = @as(c_ulonglong, 0xFFFFFFFF);
pub const ECS_GENERATION_MASK = @as(c_ulonglong, 0xFFFF) << @as(c_int, 32);
pub inline fn ECS_GENERATION(e: anytype) @TypeOf((e & ECS_GENERATION_MASK) >> @as(c_int, 32)) {
    return (e & ECS_GENERATION_MASK) >> @as(c_int, 32);
}
pub inline fn ECS_GENERATION_INC(e: anytype) @TypeOf((e & ~ECS_GENERATION_MASK) | ((@import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFF, .hexadecimal) & (ECS_GENERATION(e) + @as(c_int, 1))) << @as(c_int, 32))) {
    return (e & ~ECS_GENERATION_MASK) | ((@import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFF, .hexadecimal) & (ECS_GENERATION(e) + @as(c_int, 1))) << @as(c_int, 32));
}
pub const ECS_COMPONENT_MASK = ~ECS_ROLE_MASK;
pub inline fn ECS_PAIR_RELATION(e: anytype) @TypeOf(ecs_entity_t_hi(e & ECS_COMPONENT_MASK)) {
    return ecs_entity_t_hi(e & ECS_COMPONENT_MASK);
}
pub inline fn ECS_PAIR_OBJECT(e: anytype) @TypeOf(ecs_entity_t_lo(e)) {
    return ecs_entity_t_lo(e);
}
pub inline fn ECS_HAS_PAIR_OBJECT(e: anytype, rel: anytype, obj: anytype) @TypeOf((ECS_HAS_RELATION(e, rel) != 0) and (ECS_PAIR_OBJECT(e) == obj)) {
    return (ECS_HAS_RELATION(e, rel) != 0) and (ECS_PAIR_OBJECT(e) == obj);
}
pub inline fn ECS_HAS(id: anytype, has_id: anytype) @TypeOf((id == has_id) or (ECS_HAS_PAIR_OBJECT(id, ECS_PAIR_RELATION(has_id), ECS_PAIR_OBJECT(has_id)) != 0)) {
    return (id == has_id) or (ECS_HAS_PAIR_OBJECT(id, ECS_PAIR_RELATION(has_id), ECS_PAIR_OBJECT(has_id)) != 0);
}
pub const ECS_ID_ON_DELETE_REMOVE = @as(c_uint, 1) << @as(c_int, 0);
pub const ECS_ID_ON_DELETE_DELETE = @as(c_uint, 1) << @as(c_int, 1);
pub const ECS_ID_ON_DELETE_THROW = @as(c_uint, 1) << @as(c_int, 2);
pub const ECS_ID_ON_DELETE_MASK = (ECS_ID_ON_DELETE_THROW | ECS_ID_ON_DELETE_REMOVE) | ECS_ID_ON_DELETE_DELETE;
pub const ECS_ID_ON_DELETE_OBJECT_REMOVE = @as(c_uint, 1) << @as(c_int, 3);
pub const ECS_ID_ON_DELETE_OBJECT_DELETE = @as(c_uint, 1) << @as(c_int, 4);
pub const ECS_ID_ON_DELETE_OBJECT_THROW = @as(c_uint, 1) << @as(c_int, 5);
pub const ECS_ID_ON_DELETE_OBJECT_MASK = (ECS_ID_ON_DELETE_OBJECT_THROW | ECS_ID_ON_DELETE_OBJECT_REMOVE) | ECS_ID_ON_DELETE_OBJECT_DELETE;
pub const ECS_ID_EXCLUSIVE = @as(c_uint, 1) << @as(c_int, 6);
pub const ECS_ID_DONT_INHERIT = @as(c_uint, 1) << @as(c_int, 7);
pub inline fn ECS_ID_ON_DELETE_OBJECT(flags: anytype) @TypeOf(ECS_ID_ON_DELETE(flags >> @as(c_int, 3))) {
    return ECS_ID_ON_DELETE(flags >> @as(c_int, 3));
}
pub inline fn ECS_ID_ON_DELETE_FLAG(id: anytype) @TypeOf(@as(c_uint, 1) << (id - EcsRemove)) {
    return @as(c_uint, 1) << (id - EcsRemove);
}
pub inline fn ECS_ID_ON_DELETE_OBJECT_FLAG(id: anytype) @TypeOf(@as(c_uint, 1) << (@as(c_int, 3) + (id - EcsRemove))) {
    return @as(c_uint, 1) << (@as(c_int, 3) + (id - EcsRemove));
}
pub inline fn ecs_entity_t_lo(value: anytype) @TypeOf(ECS_CAST(u32, value)) {
    return ECS_CAST(u32, value);
}
pub inline fn ecs_entity_t_hi(value: anytype) @TypeOf(ECS_CAST(u32, value >> @as(c_int, 32))) {
    return ECS_CAST(u32, value >> @as(c_int, 32));
}
pub inline fn ecs_entity_t_comb(lo: anytype, hi: anytype) @TypeOf((ECS_CAST(u64, hi) << @as(c_int, 32)) + ECS_CAST(u32, lo)) {
    return (ECS_CAST(u64, hi) << @as(c_int, 32)) + ECS_CAST(u32, lo);
}
pub inline fn ecs_pair(pred: anytype, obj: anytype) @TypeOf(ECS_PAIR | ecs_entity_t_comb(obj, pred)) {
    return ECS_PAIR | ecs_entity_t_comb(obj, pred);
}
pub inline fn ecs_case(pred: anytype, obj: anytype) @TypeOf(ECS_CASE | ecs_entity_t_comb(obj, pred)) {
    return ECS_CASE | ecs_entity_t_comb(obj, pred);
}
pub inline fn ecs_pair_relation(world: anytype, pair: anytype) @TypeOf(ecs_get_alive(world, ECS_PAIR_RELATION(pair))) {
    return ecs_get_alive(world, ECS_PAIR_RELATION(pair));
}
pub inline fn ecs_pair_object(world: anytype, pair: anytype) @TypeOf(ecs_get_alive(world, ECS_PAIR_OBJECT(pair))) {
    return ecs_get_alive(world, ECS_PAIR_OBJECT(pair));
}
pub inline fn ECS_TABLE_LOCK(world: anytype, table: anytype) @TypeOf(ecs_table_lock(world, table)) {
    return ecs_table_lock(world, table);
}
pub inline fn ECS_TABLE_UNLOCK(world: anytype, table: anytype) @TypeOf(ecs_table_unlock(world, table)) {
    return ecs_table_unlock(world, table);
}
pub const ECS_AND = ECS_ROLE | (@as(c_ulonglong, 0x79) << @as(c_int, 56));
pub const ECS_OR = ECS_ROLE | (@as(c_ulonglong, 0x78) << @as(c_int, 56));
pub const ECS_XOR = ECS_ROLE | (@as(c_ulonglong, 0x77) << @as(c_int, 56));
pub const ECS_NOT = ECS_ROLE | (@as(c_ulonglong, 0x76) << @as(c_int, 56));
pub const FLECS_LOG_H = "";
pub const ECS_TRACE_3 = "";
pub const ecs_dbg = ecs_dbg_1;
pub inline fn ecs_parser_errorv(name: anytype, expr: anytype, column: anytype, fmt: anytype, args: anytype) @TypeOf(_ecs_parser_errorv(name, expr, column, fmt, args)) {
    return _ecs_parser_errorv(name, expr, column, fmt, args);
}
pub const ECS_INVALID_OPERATION = @as(c_int, 1);
pub const ECS_INVALID_PARAMETER = @as(c_int, 2);
pub const ECS_CONSTRAINT_VIOLATED = @as(c_int, 3);
pub const ECS_OUT_OF_MEMORY = @as(c_int, 4);
pub const ECS_OUT_OF_RANGE = @as(c_int, 5);
pub const ECS_UNSUPPORTED = @as(c_int, 6);
pub const ECS_INTERNAL_ERROR = @as(c_int, 7);
pub const ECS_ALREADY_DEFINED = @as(c_int, 8);
pub const ECS_MISSING_OS_API = @as(c_int, 9);
pub const ECS_OPERATION_FAILED = @as(c_int, 10);
pub const ECS_INVALID_CONVERSION = @as(c_int, 11);
pub const ECS_ID_IN_USE = @as(c_int, 12);
pub const ECS_INCONSISTENT_NAME = @as(c_int, 20);
pub const ECS_NAME_IN_USE = @as(c_int, 21);
pub const ECS_NOT_A_COMPONENT = @as(c_int, 22);
pub const ECS_INVALID_COMPONENT_SIZE = @as(c_int, 23);
pub const ECS_INVALID_COMPONENT_ALIGNMENT = @as(c_int, 24);
pub const ECS_COMPONENT_NOT_REGISTERED = @as(c_int, 25);
pub const ECS_INCONSISTENT_COMPONENT_ID = @as(c_int, 26);
pub const ECS_INCONSISTENT_COMPONENT_ACTION = @as(c_int, 27);
pub const ECS_MODULE_UNDEFINED = @as(c_int, 28);
pub const ECS_MISSING_SYMBOL = @as(c_int, 29);
pub const ECS_COLUMN_ACCESS_VIOLATION = @as(c_int, 40);
pub const ECS_COLUMN_INDEX_OUT_OF_RANGE = @as(c_int, 41);
pub const ECS_COLUMN_IS_NOT_SHARED = @as(c_int, 42);
pub const ECS_COLUMN_IS_SHARED = @as(c_int, 43);
pub const ECS_COLUMN_TYPE_MISMATCH = @as(c_int, 45);
pub const ECS_TYPE_INVALID_CASE = @as(c_int, 62);
pub const ECS_INVALID_WHILE_ITERATING = @as(c_int, 70);
pub const ECS_LOCKED_STORAGE = @as(c_int, 71);
pub const ECS_INVALID_FROM_WORKER = @as(c_int, 72);
pub const ECS_BLACK = "\x1b[1;30m";
pub const ECS_RED = "\x1b[0;31m";
pub const ECS_GREEN = "\x1b[0;32m";
pub const ECS_YELLOW = "\x1b[0;33m";
pub const ECS_BLUE = "\x1b[0;34m";
pub const ECS_MAGENTA = "\x1b[0;35m";
pub const ECS_CYAN = "\x1b[0;36m";
pub const ECS_WHITE = "\x1b[1;37m";
pub const ECS_GREY = "\x1b[0;37m";
pub const ECS_NORMAL = "\x1b[0;49m";
pub const ECS_BOLD = "\x1b[1;49m";
pub const FLECS_VECTOR_H = "";
pub const ECS_VECTOR_T_SIZE = (ECS_SIZEOF(i32) + ECS_SIZEOF(i32)) + ECS_SIZEOF(i64);
pub inline fn ECS_VECTOR_U(size: anytype, alignment: anytype) @TypeOf(ECS_CAST(i16, ECS_MAX(ECS_VECTOR_T_SIZE, alignment))) {
    return blk: {
        _ = size;
        break :blk ECS_CAST(i16, ECS_MAX(ECS_VECTOR_T_SIZE, alignment));
    };
}
pub inline fn ECS_VECTOR_T(T: anytype) @TypeOf(ECS_VECTOR_U(ECS_SIZEOF(T), ECS_ALIGNOF(T))) {
    return ECS_VECTOR_U(ECS_SIZEOF(T), ECS_ALIGNOF(T));
}
pub inline fn ecs_vector_new(T: anytype, elem_count: anytype) @TypeOf(_ecs_vector_new(ECS_VECTOR_T(T), elem_count)) {
    return _ecs_vector_new(ECS_VECTOR_T(T), elem_count);
}
pub inline fn ecs_vector_new_t(size: anytype, alignment: anytype, elem_count: anytype) @TypeOf(_ecs_vector_new(ECS_VECTOR_U(size, alignment), elem_count)) {
    return _ecs_vector_new(ECS_VECTOR_U(size, alignment), elem_count);
}
pub inline fn ecs_vector_from_array(T: anytype, elem_count: anytype, array: anytype) @TypeOf(_ecs_vector_from_array(ECS_VECTOR_T(T), elem_count, array)) {
    return _ecs_vector_from_array(ECS_VECTOR_T(T), elem_count, array);
}
pub inline fn ecs_vector_zero(vector: anytype, T: anytype) @TypeOf(_ecs_vector_zero(vector, ECS_VECTOR_T(T))) {
    return _ecs_vector_zero(vector, ECS_VECTOR_T(T));
}
pub inline fn ecs_vector_add_t(vector: anytype, size: anytype, alignment: anytype) @TypeOf(_ecs_vector_add(vector, ECS_VECTOR_U(size, alignment))) {
    return _ecs_vector_add(vector, ECS_VECTOR_U(size, alignment));
}
pub inline fn ecs_vector_insert_at_t(vector: anytype, size: anytype, alignment: anytype, index_1: anytype) @TypeOf(_ecs_vector_insert_at(vector, ECS_VECTOR_U(size, alignment), index_1)) {
    return _ecs_vector_insert_at(vector, ECS_VECTOR_U(size, alignment), index_1);
}
pub inline fn ecs_vector_addn_t(vector: anytype, size: anytype, alignment: anytype, elem_count: anytype) @TypeOf(_ecs_vector_addn(vector, ECS_VECTOR_U(size, alignment), elem_count)) {
    return _ecs_vector_addn(vector, ECS_VECTOR_U(size, alignment), elem_count);
}
pub inline fn ecs_vector_get_t(vector: anytype, size: anytype, alignment: anytype, index_1: anytype) @TypeOf(_ecs_vector_get(vector, ECS_VECTOR_U(size, alignment), index_1)) {
    return _ecs_vector_get(vector, ECS_VECTOR_U(size, alignment), index_1);
}
pub inline fn ecs_vector_last_t(vector: anytype, size: anytype, alignment: anytype) @TypeOf(_ecs_vector_last(vector, ECS_VECTOR_U(size, alignment))) {
    return _ecs_vector_last(vector, ECS_VECTOR_U(size, alignment));
}
pub inline fn ecs_vector_set_min_size(vector: anytype, T: anytype, size: anytype) @TypeOf(_ecs_vector_set_min_size(vector, ECS_VECTOR_T(T), size)) {
    return _ecs_vector_set_min_size(vector, ECS_VECTOR_T(T), size);
}
pub inline fn ecs_vector_set_min_count(vector: anytype, T: anytype, elem_count: anytype) @TypeOf(_ecs_vector_set_min_count(vector, ECS_VECTOR_T(T), elem_count)) {
    return _ecs_vector_set_min_count(vector, ECS_VECTOR_T(T), elem_count);
}
pub inline fn ecs_vector_set_min_count_t(vector: anytype, size: anytype, alignment: anytype, elem_count: anytype) @TypeOf(_ecs_vector_set_min_count(vector, ECS_VECTOR_U(size, alignment), elem_count)) {
    return _ecs_vector_set_min_count(vector, ECS_VECTOR_U(size, alignment), elem_count);
}
pub inline fn ecs_vector_pop(vector: anytype, T: anytype, value: anytype) @TypeOf(_ecs_vector_pop(vector, ECS_VECTOR_T(T), value)) {
    return _ecs_vector_pop(vector, ECS_VECTOR_T(T), value);
}
pub inline fn ecs_vector_move_index(dst: anytype, src: anytype, T: anytype, index_1: anytype) @TypeOf(_ecs_vector_move_index(dst, src, ECS_VECTOR_T(T), index_1)) {
    return _ecs_vector_move_index(dst, src, ECS_VECTOR_T(T), index_1);
}
pub inline fn ecs_vector_move_index_t(dst: anytype, src: anytype, size: anytype, alignment: anytype, index_1: anytype) @TypeOf(_ecs_vector_move_index(dst, src, ECS_VECTOR_U(size, alignment), index_1)) {
    return _ecs_vector_move_index(dst, src, ECS_VECTOR_U(size, alignment), index_1);
}
pub inline fn ecs_vector_remove(vector: anytype, T: anytype, index_1: anytype) @TypeOf(_ecs_vector_remove(vector, ECS_VECTOR_T(T), index_1)) {
    return _ecs_vector_remove(vector, ECS_VECTOR_T(T), index_1);
}
pub inline fn ecs_vector_remove_t(vector: anytype, size: anytype, alignment: anytype, index_1: anytype) @TypeOf(_ecs_vector_remove(vector, ECS_VECTOR_U(size, alignment), index_1)) {
    return _ecs_vector_remove(vector, ECS_VECTOR_U(size, alignment), index_1);
}
pub inline fn ecs_vector_reclaim(vector: anytype, T: anytype) @TypeOf(_ecs_vector_reclaim(vector, ECS_VECTOR_T(T))) {
    return _ecs_vector_reclaim(vector, ECS_VECTOR_T(T));
}
pub inline fn ecs_vector_grow(vector: anytype, T: anytype, size: anytype) @TypeOf(_ecs_vector_grow(vector, ECS_VECTOR_T(T), size)) {
    return _ecs_vector_grow(vector, ECS_VECTOR_T(T), size);
}
pub inline fn ecs_vector_set_size(vector: anytype, T: anytype, elem_count: anytype) @TypeOf(_ecs_vector_set_size(vector, ECS_VECTOR_T(T), elem_count)) {
    return _ecs_vector_set_size(vector, ECS_VECTOR_T(T), elem_count);
}
pub inline fn ecs_vector_set_size_t(vector: anytype, size: anytype, alignment: anytype, elem_count: anytype) @TypeOf(_ecs_vector_set_size(vector, ECS_VECTOR_U(size, alignment), elem_count)) {
    return _ecs_vector_set_size(vector, ECS_VECTOR_U(size, alignment), elem_count);
}
pub inline fn ecs_vector_set_count(vector: anytype, T: anytype, elem_count: anytype) @TypeOf(_ecs_vector_set_count(vector, ECS_VECTOR_T(T), elem_count)) {
    return _ecs_vector_set_count(vector, ECS_VECTOR_T(T), elem_count);
}
pub inline fn ecs_vector_set_count_t(vector: anytype, size: anytype, alignment: anytype, elem_count: anytype) @TypeOf(_ecs_vector_set_count(vector, ECS_VECTOR_U(size, alignment), elem_count)) {
    return _ecs_vector_set_count(vector, ECS_VECTOR_U(size, alignment), elem_count);
}
pub inline fn ecs_vector_first_t(vector: anytype, size: anytype, alignment: anytype) @TypeOf(_ecs_vector_first(vector, ECS_VECTOR_U(size, alignment))) {
    return _ecs_vector_first(vector, ECS_VECTOR_U(size, alignment));
}
pub inline fn ecs_vector_sort(vector: anytype, T: anytype, compare_action: anytype) @TypeOf(_ecs_vector_sort(vector, ECS_VECTOR_T(T), compare_action)) {
    return _ecs_vector_sort(vector, ECS_VECTOR_T(T), compare_action);
}
pub inline fn ecs_vector_memory(vector: anytype, T: anytype, allocd: anytype, used: anytype) @TypeOf(_ecs_vector_memory(vector, ECS_VECTOR_T(T), allocd, used)) {
    return _ecs_vector_memory(vector, ECS_VECTOR_T(T), allocd, used);
}
pub inline fn ecs_vector_memory_t(vector: anytype, size: anytype, alignment: anytype, allocd: anytype, used: anytype) @TypeOf(_ecs_vector_memory(vector, ECS_VECTOR_U(size, alignment), allocd, used)) {
    return _ecs_vector_memory(vector, ECS_VECTOR_U(size, alignment), allocd, used);
}
pub inline fn ecs_vector_copy(src: anytype, T: anytype) @TypeOf(_ecs_vector_copy(src, ECS_VECTOR_T(T))) {
    return _ecs_vector_copy(src, ECS_VECTOR_T(T));
}
pub inline fn ecs_vector_copy_t(src: anytype, size: anytype, alignment: anytype) @TypeOf(_ecs_vector_copy(src, ECS_VECTOR_U(size, alignment))) {
    return _ecs_vector_copy(src, ECS_VECTOR_U(size, alignment));
}
pub const FLECS_MAP_H = "";
pub inline fn ecs_map_new(T: anytype, elem_count: anytype) @TypeOf(_ecs_map_new(@import("std").zig.c_translation.sizeof(T), elem_count)) {
    _ = T;
    return _ecs_map_new(@import("std").zig.c_translation.sizeof(T), elem_count);
}
pub inline fn ecs_map_get_ptr(map: anytype, T: anytype, key: anytype) @TypeOf(T ++ _ecs_map_get_ptr(map, key)) {
    return T ++ _ecs_map_get_ptr(map, key);
}
pub inline fn ecs_map_next_ptr(iter: anytype, T: anytype, key: anytype) @TypeOf(T ++ _ecs_map_next_ptr(iter, key)) {
    return T ++ _ecs_map_next_ptr(iter, key);
}
pub const FLECS_STRBUF_H_ = "";
pub const ECS_STRBUF_INIT = @import("std").mem.zeroInit(ecs_strbuf_t, .{@as(c_int, 0)});
pub const ECS_STRBUF_ELEMENT_SIZE = @as(c_int, 511);
pub const ECS_STRBUF_MAX_LIST_DEPTH = @as(c_int, 32);
pub const FLECS_OS_API_H = "";
pub const _SYS_ERRNO_H_ = "";
pub const errno = __error().*;
pub const EPERM = @as(c_int, 1);
pub const ENOENT = @as(c_int, 2);
pub const ESRCH = @as(c_int, 3);
pub const EINTR = @as(c_int, 4);
pub const EIO = @as(c_int, 5);
pub const ENXIO = @as(c_int, 6);
pub const E2BIG = @as(c_int, 7);
pub const ENOEXEC = @as(c_int, 8);
pub const EBADF = @as(c_int, 9);
pub const ECHILD = @as(c_int, 10);
pub const EDEADLK = @as(c_int, 11);
pub const ENOMEM = @as(c_int, 12);
pub const EACCES = @as(c_int, 13);
pub const EFAULT = @as(c_int, 14);
pub const ENOTBLK = @as(c_int, 15);
pub const EBUSY = @as(c_int, 16);
pub const EEXIST = @as(c_int, 17);
pub const EXDEV = @as(c_int, 18);
pub const ENODEV = @as(c_int, 19);
pub const ENOTDIR = @as(c_int, 20);
pub const EISDIR = @as(c_int, 21);
pub const EINVAL = @as(c_int, 22);
pub const ENFILE = @as(c_int, 23);
pub const EMFILE = @as(c_int, 24);
pub const ENOTTY = @as(c_int, 25);
pub const ETXTBSY = @as(c_int, 26);
pub const EFBIG = @as(c_int, 27);
pub const ENOSPC = @as(c_int, 28);
pub const ESPIPE = @as(c_int, 29);
pub const EROFS = @as(c_int, 30);
pub const EMLINK = @as(c_int, 31);
pub const EPIPE = @as(c_int, 32);
pub const EDOM = @as(c_int, 33);
pub const ERANGE = @as(c_int, 34);
pub const EAGAIN = @as(c_int, 35);
pub const EWOULDBLOCK = EAGAIN;
pub const EINPROGRESS = @as(c_int, 36);
pub const EALREADY = @as(c_int, 37);
pub const ENOTSOCK = @as(c_int, 38);
pub const EDESTADDRREQ = @as(c_int, 39);
pub const EMSGSIZE = @as(c_int, 40);
pub const EPROTOTYPE = @as(c_int, 41);
pub const ENOPROTOOPT = @as(c_int, 42);
pub const EPROTONOSUPPORT = @as(c_int, 43);
pub const ESOCKTNOSUPPORT = @as(c_int, 44);
pub const ENOTSUP = @as(c_int, 45);
pub const EPFNOSUPPORT = @as(c_int, 46);
pub const EAFNOSUPPORT = @as(c_int, 47);
pub const EADDRINUSE = @as(c_int, 48);
pub const EADDRNOTAVAIL = @as(c_int, 49);
pub const ENETDOWN = @as(c_int, 50);
pub const ENETUNREACH = @as(c_int, 51);
pub const ENETRESET = @as(c_int, 52);
pub const ECONNABORTED = @as(c_int, 53);
pub const ECONNRESET = @as(c_int, 54);
pub const ENOBUFS = @as(c_int, 55);
pub const EISCONN = @as(c_int, 56);
pub const ENOTCONN = @as(c_int, 57);
pub const ESHUTDOWN = @as(c_int, 58);
pub const ETOOMANYREFS = @as(c_int, 59);
pub const ETIMEDOUT = @as(c_int, 60);
pub const ECONNREFUSED = @as(c_int, 61);
pub const ELOOP = @as(c_int, 62);
pub const ENAMETOOLONG = @as(c_int, 63);
pub const EHOSTDOWN = @as(c_int, 64);
pub const EHOSTUNREACH = @as(c_int, 65);
pub const ENOTEMPTY = @as(c_int, 66);
pub const EPROCLIM = @as(c_int, 67);
pub const EUSERS = @as(c_int, 68);
pub const EDQUOT = @as(c_int, 69);
pub const ESTALE = @as(c_int, 70);
pub const EREMOTE = @as(c_int, 71);
pub const EBADRPC = @as(c_int, 72);
pub const ERPCMISMATCH = @as(c_int, 73);
pub const EPROGUNAVAIL = @as(c_int, 74);
pub const EPROGMISMATCH = @as(c_int, 75);
pub const EPROCUNAVAIL = @as(c_int, 76);
pub const ENOLCK = @as(c_int, 77);
pub const ENOSYS = @as(c_int, 78);
pub const EFTYPE = @as(c_int, 79);
pub const EAUTH = @as(c_int, 80);
pub const ENEEDAUTH = @as(c_int, 81);
pub const EPWROFF = @as(c_int, 82);
pub const EDEVERR = @as(c_int, 83);
pub const EOVERFLOW = @as(c_int, 84);
pub const EBADEXEC = @as(c_int, 85);
pub const EBADARCH = @as(c_int, 86);
pub const ESHLIBVERS = @as(c_int, 87);
pub const EBADMACHO = @as(c_int, 88);
pub const ECANCELED = @as(c_int, 89);
pub const EIDRM = @as(c_int, 90);
pub const ENOMSG = @as(c_int, 91);
pub const EILSEQ = @as(c_int, 92);
pub const ENOATTR = @as(c_int, 93);
pub const EBADMSG = @as(c_int, 94);
pub const EMULTIHOP = @as(c_int, 95);
pub const ENODATA = @as(c_int, 96);
pub const ENOLINK = @as(c_int, 97);
pub const ENOSR = @as(c_int, 98);
pub const ENOSTR = @as(c_int, 99);
pub const EPROTO = @as(c_int, 100);
pub const ETIME = @as(c_int, 101);
pub const EOPNOTSUPP = @as(c_int, 102);
pub const ENOPOLICY = @as(c_int, 103);
pub const ENOTRECOVERABLE = @as(c_int, 104);
pub const EOWNERDEAD = @as(c_int, 105);
pub const EQFULL = @as(c_int, 106);
pub const ELAST = @as(c_int, 106);
pub const _ALLOCA_H_ = "";
pub inline fn ecs_os_malloc(size: anytype) @TypeOf(ecs_os_api.malloc_(size)) {
    return ecs_os_api.malloc_(size);
}
pub inline fn ecs_os_free(ptr: anytype) @TypeOf(ecs_os_api.free_(ptr)) {
    return ecs_os_api.free_(ptr);
}
pub inline fn ecs_os_realloc(ptr: anytype, size: anytype) @TypeOf(ecs_os_api.realloc_(ptr, size)) {
    return ecs_os_api.realloc_(ptr, size);
}
pub inline fn ecs_os_calloc(size: anytype) @TypeOf(ecs_os_api.calloc_(size)) {
    return ecs_os_api.calloc_(size);
}
pub inline fn ecs_os_alloca(size: anytype) @TypeOf(alloca(@import("std").zig.c_translation.cast(usize, size))) {
    return alloca(@import("std").zig.c_translation.cast(usize, size));
}
pub inline fn ecs_os_strdup(str: anytype) @TypeOf(ecs_os_api.strdup_(str)) {
    return ecs_os_api.strdup_(str);
}
pub inline fn ecs_os_strlen(str: anytype) ecs_size_t {
    return @import("std").zig.c_translation.cast(ecs_size_t, strlen(str));
}
pub inline fn ecs_os_strncmp(str1: anytype, str2: anytype, num: anytype) @TypeOf(strncmp(str1, str2, @import("std").zig.c_translation.cast(usize, num))) {
    return strncmp(str1, str2, @import("std").zig.c_translation.cast(usize, num));
}
pub inline fn ecs_os_memcmp(ptr1: anytype, ptr2: anytype, num: anytype) @TypeOf(memcmp(ptr1, ptr2, @import("std").zig.c_translation.cast(usize, num))) {
    return memcmp(ptr1, ptr2, @import("std").zig.c_translation.cast(usize, num));
}
pub inline fn ecs_os_memcpy(ptr1: anytype, ptr2: anytype, num: anytype) @TypeOf(memcpy(ptr1, ptr2, @import("std").zig.c_translation.cast(usize, num))) {
    return memcpy(ptr1, ptr2, @import("std").zig.c_translation.cast(usize, num));
}
pub inline fn ecs_os_memset(ptr: anytype, value: anytype, num: anytype) @TypeOf(memset(ptr, value, @import("std").zig.c_translation.cast(usize, num))) {
    return memset(ptr, value, @import("std").zig.c_translation.cast(usize, num));
}
pub inline fn ecs_os_memmove(dst: anytype, src: anytype, size: anytype) @TypeOf(memmove(dst, src, @import("std").zig.c_translation.cast(usize, size))) {
    return memmove(dst, src, @import("std").zig.c_translation.cast(usize, size));
}
pub inline fn ecs_os_memcpy_t(ptr1: anytype, ptr2: anytype, T: anytype) @TypeOf(ecs_os_memcpy(ptr1, ptr2, ECS_SIZEOF(T))) {
    return ecs_os_memcpy(ptr1, ptr2, ECS_SIZEOF(T));
}
pub inline fn ecs_os_memcpy_n(ptr1: anytype, ptr2: anytype, T: anytype, count: anytype) @TypeOf(ecs_os_memcpy(ptr1, ptr2, ECS_SIZEOF(T) * count)) {
    return ecs_os_memcpy(ptr1, ptr2, ECS_SIZEOF(T) * count);
}
pub inline fn ecs_os_strcmp(str1: anytype, str2: anytype) @TypeOf(strcmp(str1, str2)) {
    return strcmp(str1, str2);
}
pub inline fn ecs_os_memset_t(ptr: anytype, value: anytype, T: anytype) @TypeOf(ecs_os_memset(ptr, value, ECS_SIZEOF(T))) {
    return ecs_os_memset(ptr, value, ECS_SIZEOF(T));
}
pub inline fn ecs_os_memset_n(ptr: anytype, value: anytype, T: anytype, count: anytype) @TypeOf(ecs_os_memset(ptr, value, ECS_SIZEOF(T) * count)) {
    return ecs_os_memset(ptr, value, ECS_SIZEOF(T) * count);
}
pub inline fn ecs_os_zeromem(ptr: anytype) @TypeOf(ecs_os_memset(ptr, @as(c_int, 0), ECS_SIZEOF(ptr.*))) {
    return ecs_os_memset(ptr, @as(c_int, 0), ECS_SIZEOF(ptr.*));
}
pub inline fn ecs_os_memdup_t(ptr: anytype, T: anytype) @TypeOf(ecs_os_memdup(ptr, ECS_SIZEOF(T))) {
    return ecs_os_memdup(ptr, ECS_SIZEOF(T));
}
pub inline fn ecs_os_memdup_n(ptr: anytype, T: anytype, count: anytype) @TypeOf(ecs_os_memdup(ptr, ECS_SIZEOF(T) * count)) {
    return ecs_os_memdup(ptr, ECS_SIZEOF(T) * count);
}
pub inline fn ecs_os_strcat(str1: anytype, str2: anytype) @TypeOf(strcat(str1, str2)) {
    return strcat(str1, str2);
}
pub inline fn ecs_os_strcpy(str1: anytype, str2: anytype) @TypeOf(strcpy(str1, str2)) {
    return strcpy(str1, str2);
}
pub inline fn ecs_os_strncpy(str1: anytype, str2: anytype, num: anytype) @TypeOf(strncpy(str1, str2, @import("std").zig.c_translation.cast(usize, num))) {
    return strncpy(str1, str2, @import("std").zig.c_translation.cast(usize, num));
}
pub inline fn ecs_os_thread_new(callback: anytype, param: anytype) @TypeOf(ecs_os_api.thread_new_(callback, param)) {
    return ecs_os_api.thread_new_(callback, param);
}
pub inline fn ecs_os_thread_join(thread: anytype) @TypeOf(ecs_os_api.thread_join_(thread)) {
    return ecs_os_api.thread_join_(thread);
}
pub inline fn ecs_os_ainc(value: anytype) @TypeOf(ecs_os_api.ainc_(value)) {
    return ecs_os_api.ainc_(value);
}
pub inline fn ecs_os_adec(value: anytype) @TypeOf(ecs_os_api.adec_(value)) {
    return ecs_os_api.adec_(value);
}
pub inline fn ecs_os_mutex_new() @TypeOf(ecs_os_api.mutex_new_()) {
    return ecs_os_api.mutex_new_();
}
pub inline fn ecs_os_mutex_free(mutex: anytype) @TypeOf(ecs_os_api.mutex_free_(mutex)) {
    return ecs_os_api.mutex_free_(mutex);
}
pub inline fn ecs_os_mutex_lock(mutex: anytype) @TypeOf(ecs_os_api.mutex_lock_(mutex)) {
    return ecs_os_api.mutex_lock_(mutex);
}
pub inline fn ecs_os_mutex_unlock(mutex: anytype) @TypeOf(ecs_os_api.mutex_unlock_(mutex)) {
    return ecs_os_api.mutex_unlock_(mutex);
}
pub inline fn ecs_os_cond_new() @TypeOf(ecs_os_api.cond_new_()) {
    return ecs_os_api.cond_new_();
}
pub inline fn ecs_os_cond_free(cond: anytype) @TypeOf(ecs_os_api.cond_free_(cond)) {
    return ecs_os_api.cond_free_(cond);
}
pub inline fn ecs_os_cond_signal(cond: anytype) @TypeOf(ecs_os_api.cond_signal_(cond)) {
    return ecs_os_api.cond_signal_(cond);
}
pub inline fn ecs_os_cond_broadcast(cond: anytype) @TypeOf(ecs_os_api.cond_broadcast_(cond)) {
    return ecs_os_api.cond_broadcast_(cond);
}
pub inline fn ecs_os_cond_wait(cond: anytype, mutex: anytype) @TypeOf(ecs_os_api.cond_wait_(cond, mutex)) {
    return ecs_os_api.cond_wait_(cond, mutex);
}
pub inline fn ecs_os_sleep(sec: anytype, nanosec: anytype) @TypeOf(ecs_os_api.sleep_(sec, nanosec)) {
    return ecs_os_api.sleep_(sec, nanosec);
}
pub inline fn ecs_os_now() @TypeOf(ecs_os_api.now_()) {
    return ecs_os_api.now_();
}
pub inline fn ecs_os_get_time(time_out: anytype) @TypeOf(ecs_os_api.get_time_(time_out)) {
    return ecs_os_api.get_time_(time_out);
}
pub inline fn ecs_os_abort() @TypeOf(ecs_os_api.abort_()) {
    return ecs_os_api.abort_();
}
pub inline fn ecs_os_dlopen(libname: anytype) @TypeOf(ecs_os_api.dlopen_(libname)) {
    return ecs_os_api.dlopen_(libname);
}
pub inline fn ecs_os_dlproc(lib: anytype, procname: anytype) @TypeOf(ecs_os_api.dlproc_(lib, procname)) {
    return ecs_os_api.dlproc_(lib, procname);
}
pub inline fn ecs_os_dlclose(lib: anytype) @TypeOf(ecs_os_api.dlclose_(lib)) {
    return ecs_os_api.dlclose_(lib);
}
pub inline fn ecs_os_module_to_dl(lib: anytype) @TypeOf(ecs_os_api.module_to_dl_(lib)) {
    return ecs_os_api.module_to_dl_(lib);
}
pub inline fn ecs_os_module_to_etc(lib: anytype) @TypeOf(ecs_os_api.module_to_etc_(lib)) {
    return ecs_os_api.module_to_etc_(lib);
}
pub const ECS_MAX_ADD_REMOVE = @as(c_int, 32);
pub const ECS_TERM_CACHE_SIZE = @as(c_int, 4);
pub const ECS_TERM_DESC_CACHE_SIZE = @as(c_int, 16);
pub const ECS_TRIGGER_DESC_EVENT_COUNT_MAX = @as(c_int, 8);
pub const EcsDefaultSet = @as(c_int, 0);
pub const EcsSelf = @as(c_int, 1);
pub const EcsSuperSet = @as(c_int, 2);
pub const EcsSubSet = @as(c_int, 4);
pub const EcsCascade = @as(c_int, 8);
pub const EcsAll = @as(c_int, 16);
pub const EcsParent = @as(c_int, 32);
pub const EcsNothing = @as(c_int, 64);
pub const FLECS_API_TYPES_H = "";
pub const FLECS_API_SUPPORT_H = "";
pub const ECS_HI_COMPONENT_ID = @as(c_int, 256);
pub const ECS_MAX_RECURSION = @as(c_int, 512);
pub const ECS_MAX_TOKEN_SIZE = @as(c_int, 256);
pub const FLECS__E0 = @as(c_int, 0);
pub inline fn ECS_OFFSET(o: anytype, offset: anytype) ?*anyopaque {
    return @import("std").zig.c_translation.cast(?*anyopaque, @import("std").zig.c_translation.cast(usize, o) + @import("std").zig.c_translation.cast(usize, offset));
}
pub inline fn ECS_ELEM(ptr: anytype, size: anytype, index_1: anytype) @TypeOf(ECS_OFFSET(ptr, size * index_1)) {
    return ECS_OFFSET(ptr, size * index_1);
}
pub const FLECS_SPARSE_H = "";
pub inline fn flecs_sparse_new(@"type": anytype) @TypeOf(_flecs_sparse_new(@import("std").zig.c_translation.sizeof(@"type"))) {
    _ = @"type";
    return _flecs_sparse_new(@import("std").zig.c_translation.sizeof(@"type"));
}
pub inline fn flecs_sparse_iter(sparse: anytype, T: anytype) @TypeOf(_flecs_sparse_iter(sparse, ECS_SIZEOF(T))) {
    return _flecs_sparse_iter(sparse, ECS_SIZEOF(T));
}
pub inline fn ecs_sparse_new(@"type": anytype) @TypeOf(_ecs_sparse_new(@import("std").zig.c_translation.sizeof(@"type"))) {
    _ = @"type";
    return _ecs_sparse_new(@import("std").zig.c_translation.sizeof(@"type"));
}
pub const FLECS_HASHMAP_H = "";
pub inline fn flecs_hashmap_new(K: anytype, V: anytype, compare: anytype, hash: anytype) @TypeOf(_flecs_hashmap_new(ECS_SIZEOF(K), ECS_SIZEOF(V), compare, hash)) {
    return _flecs_hashmap_new(ECS_SIZEOF(K), ECS_SIZEOF(V), compare, hash);
}
pub inline fn flecs_hashmap_ensure(map: anytype, key: anytype, V: anytype) @TypeOf(_flecs_hashmap_ensure(map, ECS_SIZEOF(key.*), key, ECS_SIZEOF(V))) {
    return _flecs_hashmap_ensure(map, ECS_SIZEOF(key.*), key, ECS_SIZEOF(V));
}
pub inline fn flecs_hashmap_set(map: anytype, key: anytype, value: anytype) @TypeOf(_flecs_hashmap_set(map, ECS_SIZEOF(key.*), key, ECS_SIZEOF(value.*), value)) {
    return _flecs_hashmap_set(map, ECS_SIZEOF(key.*), key, ECS_SIZEOF(value.*), value);
}
pub inline fn flecs_hashmap_remove(map: anytype, key: anytype, V: anytype) @TypeOf(_flecs_hashmap_remove(map, ECS_SIZEOF(key.*), key, ECS_SIZEOF(V))) {
    return _flecs_hashmap_remove(map, ECS_SIZEOF(key.*), key, ECS_SIZEOF(V));
}
pub inline fn flecs_hashmap_remove_w_hash(map: anytype, key: anytype, V: anytype, hash: anytype) @TypeOf(_flecs_hashmap_remove_w_hash(map, ECS_SIZEOF(key.*), key, ECS_SIZEOF(V), hash)) {
    return _flecs_hashmap_remove_w_hash(map, ECS_SIZEOF(key.*), key, ECS_SIZEOF(V), hash);
}
pub const ECS_ROLE = @as(c_ulonglong, 1) << @as(c_int, 63);
pub const EcsFirstUserComponentId = @as(c_int, 32);
pub const EcsFirstUserEntityId = ECS_HI_COMPONENT_ID + @as(c_int, 128);
pub const FLECS_APP_H = "";
pub const FLECS_REST_H = "";
pub const ECS_REST_DEFAULT_PORT = @as(c_int, 27750);
pub const FLECS_TIMER_H = "";
pub const FLECS_PIPELINE_H = "";
pub const FLECS_SYSTEM_H = "";
pub const FLECS_COREDOC_H = "";
pub const FLECS_DOC_H = "";
pub const FLECS_JSON_H = "";
pub const ECS_ENTITY_TO_JSON_INIT = @import("std").mem.zeroInit(ecs_entity_to_json_desc_t, .{ @"true", @"true", @"true", @"false" });
pub const ECS_ITER_TO_JSON_INIT = @import("std").mem.zeroInit(ecs_iter_to_json_desc_t, .{ @"true", @"true", @"true", @"true", @"true", @"true", @"true", @"false", @"false", @"false", @"false" });
pub const __STDDEF_H = "";
pub const __need_ptrdiff_t = "";
pub const __need_size_t = "";
pub const __need_wchar_t = "";
pub const __need_NULL = "";
pub const __need_STDDEF_H_misc = "";
pub const _PTRDIFF_T = "";
pub const _WCHAR_T = "";
pub const __CLANG_MAX_ALIGN_T_DEFINED = "";
pub const FLECS_META_H = "";
pub const ECS_MEMBER_DESC_CACHE_SIZE = @as(c_int, 32);
pub const ECS_META_MAX_SCOPE_DEPTH = @as(c_int, 32);
pub const FLECS_EXPR_H = "";
pub const FLECS_META_C_H = "";
pub const ECS_PRIVATE = "";
pub inline fn ECS_META_IMPL_CALL(base: anytype, impl: anytype, name: anytype, type_desc: anytype) @TypeOf(ECS_META_IMPL_CALL_INNER(base, impl, name, type_desc)) {
    return ECS_META_IMPL_CALL_INNER(base, impl, name, type_desc);
}
pub const ECS_STRUCT_ECS_META_IMPL = ECS_STRUCT_IMPL;
pub const ECS_ENUM_ECS_META_IMPL = ECS_ENUM_IMPL;
pub const ECS_BITMASK_ECS_META_IMPL = ECS_BITMASK_IMPL;
pub const FLECS_META_C_IMPORT = "";
pub const FLECS_PLECS_H = "";
pub const FLECS_RULES_H = "";
pub const FLECS_SNAPSHOT_H = "";
pub const FLECS_STATS_H = "";
pub const ECS_STAT_WINDOW = @as(c_int, 60);
pub const FLECS_PARSER_H = "";
pub const FLECS_HTTP_H = "";
pub const ECS_HTTP_HEADER_COUNT_MAX = @as(c_int, 32);
pub const ECS_HTTP_QUERY_PARAM_COUNT_MAX = @as(c_int, 32);
pub const ECS_HTTP_REPLY_INIT = @import("std").mem.zeroInit(ecs_http_reply_t, .{ @as(c_int, 200), ECS_STRBUF_INIT, "OK", "application/json", ECS_STRBUF_INIT });
pub const FLECS_OS_API_IMPL_H = "";
pub const FLECS_MODULE_H = "";
pub const FLECS_C_ = "";
pub inline fn ECS_DECLARE(id: anytype) @TypeOf(ecs_id(id)) {
    return blk: {
        _ = ecs_entity_t ++ id;
        break :blk ecs_id(id);
    };
}
pub inline fn ECS_TAG_DEFINE(world: anytype, id: anytype) @TypeOf(ECS_ENTITY_DEFINE(world, id, @as(c_int, 0))) {
    return ECS_ENTITY_DEFINE(world, id, @as(c_int, 0));
}
pub inline fn ECS_TAG(world: anytype, id: anytype) @TypeOf(ECS_ENTITY(world, id, @as(c_int, 0))) {
    return ECS_ENTITY(world, id, @as(c_int, 0));
}
pub inline fn ECS_COMPONENT_DECLARE(id: anytype) @TypeOf(ecs_entity_t ++ ecs_id(id)) {
    return ecs_entity_t ++ ecs_id(id);
}
pub inline fn ECS_SYSTEM_DECLARE(id: anytype) @TypeOf(ecs_entity_t ++ ecs_id(id)) {
    return ecs_entity_t ++ ecs_id(id);
}
pub inline fn ecs_new(world: anytype, T: anytype) @TypeOf(ecs_new_w_id(world, ecs_id(T))) {
    return ecs_new_w_id(world, ecs_id(T));
}
pub inline fn ecs_new_w_pair(world: anytype, relation: anytype, object: anytype) @TypeOf(ecs_new_w_id(world, ecs_pair(relation, object))) {
    return ecs_new_w_id(world, ecs_pair(relation, object));
}
pub inline fn ecs_bulk_new(world: anytype, component: anytype, count: anytype) @TypeOf(ecs_bulk_new_w_id(world, ecs_id(component), count)) {
    return ecs_bulk_new_w_id(world, ecs_id(component), count);
}
pub inline fn ecs_add(world: anytype, entity: anytype, T: anytype) @TypeOf(ecs_add_id(world, entity, ecs_id(T))) {
    return ecs_add_id(world, entity, ecs_id(T));
}
pub inline fn ecs_add_pair(world: anytype, subject: anytype, relation: anytype, object: anytype) @TypeOf(ecs_add_id(world, subject, ecs_pair(relation, object))) {
    return ecs_add_id(world, subject, ecs_pair(relation, object));
}
pub inline fn ecs_remove(world: anytype, entity: anytype, T: anytype) @TypeOf(ecs_remove_id(world, entity, ecs_id(T))) {
    return ecs_remove_id(world, entity, ecs_id(T));
}
pub inline fn ecs_remove_pair(world: anytype, subject: anytype, relation: anytype, object: anytype) @TypeOf(ecs_remove_id(world, subject, ecs_pair(relation, object))) {
    return ecs_remove_id(world, subject, ecs_pair(relation, object));
}
pub inline fn ecs_delete_children(world: anytype, parent: anytype) @TypeOf(ecs_delete_with(world, ecs_pair(EcsChildOf, parent))) {
    return ecs_delete_with(world, ecs_pair(EcsChildOf, parent));
}
pub inline fn ecs_set_ptr(world: anytype, entity: anytype, component: anytype, ptr: anytype) @TypeOf(ecs_set_id(world, entity, ecs_id(component), @import("std").zig.c_translation.sizeof(component), ptr)) {
    return ecs_set_id(world, entity, ecs_id(component), @import("std").zig.c_translation.sizeof(component), ptr);
}
pub inline fn ecs_modified(world: anytype, entity: anytype, component: anytype) @TypeOf(ecs_modified_id(world, entity, ecs_id(component))) {
    return ecs_modified_id(world, entity, ecs_id(component));
}
pub inline fn ecs_modified_pair(world: anytype, subject: anytype, relation: anytype, object: anytype) @TypeOf(ecs_modified_id(world, subject, ecs_pair(relation, object))) {
    return ecs_modified_id(world, subject, ecs_pair(relation, object));
}
pub inline fn ecs_singleton_add(world: anytype, comp: anytype) @TypeOf(ecs_add(world, ecs_id(comp), comp)) {
    return ecs_add(world, ecs_id(comp), comp);
}
pub inline fn ecs_singleton_remove(world: anytype, comp: anytype) @TypeOf(ecs_remove(world, ecs_id(comp), comp)) {
    return ecs_remove(world, ecs_id(comp), comp);
}
pub inline fn ecs_singleton_get(world: anytype, comp: anytype) @TypeOf(ecs_get(world, ecs_id(comp), comp)) {
    return ecs_get(world, ecs_id(comp), comp);
}
pub inline fn ecs_singleton_get_mut(world: anytype, comp: anytype) @TypeOf(ecs_get_mut(world, ecs_id(comp), comp, NULL)) {
    return ecs_get_mut(world, ecs_id(comp), comp, NULL);
}
pub inline fn ecs_singleton_modified(world: anytype, comp: anytype) @TypeOf(ecs_modified(world, ecs_id(comp), comp)) {
    return ecs_modified(world, ecs_id(comp), comp);
}
pub inline fn ecs_has(world: anytype, entity: anytype, T: anytype) @TypeOf(ecs_has_id(world, entity, ecs_id(T))) {
    return ecs_has_id(world, entity, ecs_id(T));
}
pub inline fn ecs_has_pair(world: anytype, entity: anytype, relation: anytype, object: anytype) @TypeOf(ecs_has_id(world, entity, ecs_pair(relation, object))) {
    return ecs_has_id(world, entity, ecs_pair(relation, object));
}
pub inline fn ecs_owns_id(world: anytype, entity: anytype, id: anytype) @TypeOf(ecs_search(world, ecs_get_table(world, entity), id, @as(c_int, 0)) != -@as(c_int, 1)) {
    return ecs_search(world, ecs_get_table(world, entity), id, @as(c_int, 0)) != -@as(c_int, 1);
}
pub inline fn ecs_owns_pair(world: anytype, entity: anytype, relation: anytype, object: anytype) @TypeOf(ecs_owns_id(world, entity, ecs_pair(relation, object))) {
    return ecs_owns_id(world, entity, ecs_pair(relation, object));
}
pub inline fn ecs_owns(world: anytype, entity: anytype, T: anytype) @TypeOf(ecs_owns_id(world, entity, ecs_id(T))) {
    return ecs_owns_id(world, entity, ecs_id(T));
}
pub inline fn ecs_shares_id(world: anytype, entity: anytype, id: anytype) @TypeOf(ecs_search_relation(world, ecs_get_table(world, entity), @as(c_int, 0), ecs_id(id), EcsIsA, @as(c_int, 1), @as(c_int, 0), @as(c_int, 0), @as(c_int, 0), @as(c_int, 0)) != -@as(c_int, 1)) {
    return ecs_search_relation(world, ecs_get_table(world, entity), @as(c_int, 0), ecs_id(id), EcsIsA, @as(c_int, 1), @as(c_int, 0), @as(c_int, 0), @as(c_int, 0), @as(c_int, 0)) != -@as(c_int, 1);
}
pub inline fn ecs_shares_pair(world: anytype, entity: anytype, relation: anytype, object: anytype) @TypeOf(ecs_shares_id(world, entity, ecs_pair(relation, object))) {
    return ecs_shares_id(world, entity, ecs_pair(relation, object));
}
pub inline fn ecs_shares(world: anytype, entity: anytype, T: anytype) @TypeOf(ecs_shares_id(world, entity, ecs_id(T))) {
    return ecs_shares_id(world, entity, ecs_id(T));
}
pub inline fn ecs_enable_component(world: anytype, entity: anytype, T: anytype, enable: anytype) @TypeOf(ecs_enable_component_w_id(world, entity, ecs_id(T), enable)) {
    return ecs_enable_component_w_id(world, entity, ecs_id(T), enable);
}
pub inline fn ecs_is_component_enabled(world: anytype, entity: anytype, T: anytype) @TypeOf(ecs_is_component_enabled_w_id(world, entity, ecs_id(T))) {
    return ecs_is_component_enabled_w_id(world, entity, ecs_id(T));
}
pub inline fn ecs_count(world: anytype, @"type": anytype) @TypeOf(ecs_count_id(world, ecs_id(@"type"))) {
    return ecs_count_id(world, ecs_id(@"type"));
}
pub inline fn ecs_lookup_path(world: anytype, parent: anytype, path: anytype) @TypeOf(ecs_lookup_path_w_sep(world, parent, path, ".", NULL, @"true")) {
    return ecs_lookup_path_w_sep(world, parent, path, ".", NULL, @"true");
}
pub inline fn ecs_lookup_fullpath(world: anytype, path: anytype) @TypeOf(ecs_lookup_path_w_sep(world, @as(c_int, 0), path, ".", NULL, @"true")) {
    return ecs_lookup_path_w_sep(world, @as(c_int, 0), path, ".", NULL, @"true");
}
pub inline fn ecs_get_path(world: anytype, parent: anytype, child: anytype) @TypeOf(ecs_get_path_w_sep(world, parent, child, ".", NULL)) {
    return ecs_get_path_w_sep(world, parent, child, ".", NULL);
}
pub inline fn ecs_get_fullpath(world: anytype, child: anytype) @TypeOf(ecs_get_path_w_sep(world, @as(c_int, 0), child, ".", NULL)) {
    return ecs_get_path_w_sep(world, @as(c_int, 0), child, ".", NULL);
}
pub inline fn ecs_get_fullpath_buf(world: anytype, child: anytype, buf: anytype) @TypeOf(ecs_get_path_w_sep_buf(world, @as(c_int, 0), child, ".", NULL, buf)) {
    return ecs_get_path_w_sep_buf(world, @as(c_int, 0), child, ".", NULL, buf);
}
pub inline fn ecs_new_from_path(world: anytype, parent: anytype, path: anytype) @TypeOf(ecs_new_from_path_w_sep(world, parent, path, ".", NULL)) {
    return ecs_new_from_path_w_sep(world, parent, path, ".", NULL);
}
pub inline fn ecs_new_from_fullpath(world: anytype, path: anytype) @TypeOf(ecs_new_from_path_w_sep(world, @as(c_int, 0), path, ".", NULL)) {
    return ecs_new_from_path_w_sep(world, @as(c_int, 0), path, ".", NULL);
}
pub inline fn ecs_add_path(world: anytype, entity: anytype, parent: anytype, path: anytype) @TypeOf(ecs_add_path_w_sep(world, entity, parent, path, ".", NULL)) {
    return ecs_add_path_w_sep(world, entity, parent, path, ".", NULL);
}
pub inline fn ecs_add_fullpath(world: anytype, entity: anytype, path: anytype) @TypeOf(ecs_add_path_w_sep(world, entity, @as(c_int, 0), path, ".", NULL)) {
    return ecs_add_path_w_sep(world, entity, @as(c_int, 0), path, ".", NULL);
}
pub inline fn ecs_query_table_count(query: anytype) @TypeOf(ecs_vector_count(query.*.cache.tables)) {
    return ecs_vector_count(query.*.cache.tables);
}
pub inline fn ecs_query_empty_table_count(query: anytype) @TypeOf(ecs_vector_count(query.*.cache.empty_tables)) {
    return ecs_vector_count(query.*.cache.empty_tables);
}
pub inline fn ecs_term_id(it: anytype, index_1: anytype) @TypeOf(it.*.ids[index_1 - @as(c_int, 1)]) {
    return it.*.ids[index_1 - @as(c_int, 1)];
}
pub inline fn ecs_term_source(it: anytype, index_1: anytype) @TypeOf(if (it.*.subjects) it.*.subjects[index_1 - @as(c_int, 1)] else @as(c_int, 0)) {
    return if (it.*.subjects) it.*.subjects[index_1 - @as(c_int, 1)] else @as(c_int, 0);
}
pub inline fn ecs_term_size(it: anytype, index_1: anytype) @TypeOf(if (index_1 == @as(c_int, 0)) @import("std").zig.c_translation.sizeof(ecs_entity_t) else ECS_CAST(usize, it.*.sizes[index_1 - @as(c_int, 1)])) {
    return if (index_1 == @as(c_int, 0)) @import("std").zig.c_translation.sizeof(ecs_entity_t) else ECS_CAST(usize, it.*.sizes[index_1 - @as(c_int, 1)]);
}
pub inline fn ecs_childof(parent: anytype) @TypeOf(ecs_pair(EcsChildOf, parent)) {
    return ecs_pair(EcsChildOf, parent);
}
pub inline fn ecs_isa(base: anytype) @TypeOf(ecs_pair(EcsIsA, base)) {
    return ecs_pair(EcsIsA, base);
}
pub inline fn ecs_rule_new(world: anytype, q_expr: anytype) @TypeOf(ecs_rule_init(world, &@import("std").mem.zeroInit(ecs_filter_desc_t, .{
    .expr = q_expr,
}))) {
    return ecs_rule_init(world, &@import("std").mem.zeroInit(ecs_filter_desc_t, .{
        .expr = q_expr,
    }));
}
pub const FLECS_CPP_H = "";
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
pub const ecs_bucket_t = struct_ecs_bucket_t;
pub const ecs_rule_reg_t = struct_ecs_rule_reg_t;
pub const ecs_rule_op_ctx_t = struct_ecs_rule_op_ctx_t;
pub const ecs_table_record_t = struct_ecs_table_record_t;
pub const ecs_hm_bucket_t = struct_ecs_hm_bucket_t;
