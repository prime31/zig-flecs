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

pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;

pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;

pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;

pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;

pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;

pub const __builtin_va_list = [*c]u8;

pub const __gnuc_va_list = __builtin_va_list;

pub const va_list = __gnuc_va_list;

pub extern fn __debugbreak() void;

pub extern fn __mingw_get_crt_info() [*c]const u8;

pub const rsize_t = usize;

pub const ptrdiff_t = c_longlong;

pub const wchar_t = c_ushort;

pub const wint_t = c_ushort;

pub const wctype_t = c_ushort;

pub const errno_t = c_int;

pub const __time32_t = c_long;

pub const __time64_t = c_longlong;

pub const time_t = __time64_t;

pub const struct_tagLC_ID = extern struct {
    wLanguage: c_ushort,

    wCountry: c_ushort,

    wCodePage: c_ushort,
};

pub const LC_ID = struct_tagLC_ID;

const struct_unnamed_1 = extern struct {
    locale: [*c]u8,

    wlocale: [*c]wchar_t,

    refcount: [*c]c_int,

    wrefcount: [*c]c_int,
};

pub const struct_lconv = opaque {};

pub const struct___lc_time_data = opaque {};

pub const struct_threadlocaleinfostruct = extern struct {
    refcount: c_int,

    lc_codepage: c_uint,

    lc_collate_cp: c_uint,

    lc_handle: [6]c_ulong,

    lc_id: [6]LC_ID,

    lc_category: [6]struct_unnamed_1,

    lc_clike: c_int,

    mb_cur_max: c_int,

    lconv_intl_refcount: [*c]c_int,

    lconv_num_refcount: [*c]c_int,

    lconv_mon_refcount: [*c]c_int,

    lconv: ?*struct_lconv,

    ctype1_refcount: [*c]c_int,

    ctype1: [*c]c_ushort,

    pctype: [*c]const c_ushort,

    pclmap: [*c]const u8,

    pcumap: [*c]const u8,

    lc_time_curr: ?*struct___lc_time_data,
};

pub const struct_threadmbcinfostruct = opaque {};

pub const pthreadlocinfo = [*c]struct_threadlocaleinfostruct;

pub const pthreadmbcinfo = ?*struct_threadmbcinfostruct;

pub const struct_localeinfo_struct = extern struct {
    locinfo: pthreadlocinfo,

    mbcinfo: pthreadmbcinfo,
};

pub const _locale_tstruct = struct_localeinfo_struct;

pub const _locale_t = [*c]struct_localeinfo_struct;

pub const LPLC_ID = [*c]struct_tagLC_ID;

pub const threadlocinfo = struct_threadlocaleinfostruct;

pub extern fn _wassert(_Message: [*c]const wchar_t, _File: [*c]const wchar_t, _Line: c_uint) void;

pub extern fn _assert(_Message: [*c]const u8, _File: [*c]const u8, _Line: c_uint) void;

pub extern fn _memccpy(_Dst: ?*anyopaque, _Src: ?*const anyopaque, _Val: c_int, _MaxCount: usize) ?*anyopaque;

pub extern fn memchr(_Buf: ?*const anyopaque, _Val: c_int, _MaxCount: c_ulonglong) ?*anyopaque;

pub extern fn _memicmp(_Buf1: ?*const anyopaque, _Buf2: ?*const anyopaque, _Size: usize) c_int;

pub extern fn _memicmp_l(_Buf1: ?*const anyopaque, _Buf2: ?*const anyopaque, _Size: usize, _Locale: _locale_t) c_int;

pub extern fn memcmp(_Buf1: ?*const anyopaque, _Buf2: ?*const anyopaque, _Size: c_ulonglong) c_int;

pub extern fn memcpy(_Dst: ?*anyopaque, _Src: ?*const anyopaque, _Size: c_ulonglong) ?*anyopaque;

pub extern fn memcpy_s(_dest: ?*anyopaque, _numberOfElements: usize, _src: ?*const anyopaque, _count: usize) errno_t;

pub extern fn mempcpy(_Dst: ?*anyopaque, _Src: ?*const anyopaque, _Size: c_ulonglong) ?*anyopaque;

pub extern fn memset(_Dst: ?*anyopaque, _Val: c_int, _Size: c_ulonglong) ?*anyopaque;

pub extern fn memccpy(_Dst: ?*anyopaque, _Src: ?*const anyopaque, _Val: c_int, _Size: c_ulonglong) ?*anyopaque;

pub extern fn memicmp(_Buf1: ?*const anyopaque, _Buf2: ?*const anyopaque, _Size: usize) c_int;

pub extern fn _strset(_Str: [*c]u8, _Val: c_int) [*c]u8;

pub extern fn _strset_l(_Str: [*c]u8, _Val: c_int, _Locale: _locale_t) [*c]u8;

pub extern fn strcpy(_Dest: [*c]u8, _Source: [*c]const u8) [*c]u8;

pub extern fn strcat(_Dest: [*c]u8, _Source: [*c]const u8) [*c]u8;

pub extern fn strcmp(_Str1: [*c]const u8, _Str2: [*c]const u8) c_int;

pub extern fn strlen(_Str: [*c]const u8) c_ulonglong;

pub extern fn strnlen(_Str: [*c]const u8, _MaxCount: usize) usize;

pub extern fn memmove(_Dst: ?*anyopaque, _Src: ?*const anyopaque, _Size: c_ulonglong) ?*anyopaque;

pub extern fn _strdup(_Src: [*c]const u8) [*c]u8;

pub extern fn strchr(_Str: [*c]const u8, _Val: c_int) [*c]u8;

pub extern fn _stricmp(_Str1: [*c]const u8, _Str2: [*c]const u8) c_int;

pub extern fn _strcmpi(_Str1: [*c]const u8, _Str2: [*c]const u8) c_int;

pub extern fn _stricmp_l(_Str1: [*c]const u8, _Str2: [*c]const u8, _Locale: _locale_t) c_int;

pub extern fn strcoll(_Str1: [*c]const u8, _Str2: [*c]const u8) c_int;

pub extern fn _strcoll_l(_Str1: [*c]const u8, _Str2: [*c]const u8, _Locale: _locale_t) c_int;

pub extern fn _stricoll(_Str1: [*c]const u8, _Str2: [*c]const u8) c_int;

pub extern fn _stricoll_l(_Str1: [*c]const u8, _Str2: [*c]const u8, _Locale: _locale_t) c_int;

pub extern fn _strncoll(_Str1: [*c]const u8, _Str2: [*c]const u8, _MaxCount: usize) c_int;

pub extern fn _strncoll_l(_Str1: [*c]const u8, _Str2: [*c]const u8, _MaxCount: usize, _Locale: _locale_t) c_int;

pub extern fn _strnicoll(_Str1: [*c]const u8, _Str2: [*c]const u8, _MaxCount: usize) c_int;

pub extern fn _strnicoll_l(_Str1: [*c]const u8, _Str2: [*c]const u8, _MaxCount: usize, _Locale: _locale_t) c_int;

pub extern fn strcspn(_Str: [*c]const u8, _Control: [*c]const u8) c_ulonglong;

pub extern fn _strerror(_ErrMsg: [*c]const u8) [*c]u8;

pub extern fn strerror(c_int) [*c]u8;

pub extern fn _strlwr(_String: [*c]u8) [*c]u8;

pub extern fn strlwr_l(_String: [*c]u8, _Locale: _locale_t) [*c]u8;

pub extern fn strncat(_Dest: [*c]u8, _Source: [*c]const u8, _Count: c_ulonglong) [*c]u8;

pub extern fn strncmp(_Str1: [*c]const u8, _Str2: [*c]const u8, _MaxCount: c_ulonglong) c_int;

pub extern fn _strnicmp(_Str1: [*c]const u8, _Str2: [*c]const u8, _MaxCount: usize) c_int;

pub extern fn _strnicmp_l(_Str1: [*c]const u8, _Str2: [*c]const u8, _MaxCount: usize, _Locale: _locale_t) c_int;

pub extern fn strncpy(_Dest: [*c]u8, _Source: [*c]const u8, _Count: c_ulonglong) [*c]u8;

pub extern fn _strnset(_Str: [*c]u8, _Val: c_int, _MaxCount: usize) [*c]u8;

pub extern fn _strnset_l(str: [*c]u8, c: c_int, count: usize, _Locale: _locale_t) [*c]u8;

pub extern fn strpbrk(_Str: [*c]const u8, _Control: [*c]const u8) [*c]u8;

pub extern fn strrchr(_Str: [*c]const u8, _Ch: c_int) [*c]u8;

pub extern fn _strrev(_Str: [*c]u8) [*c]u8;

pub extern fn strspn(_Str: [*c]const u8, _Control: [*c]const u8) c_ulonglong;

pub extern fn strstr(_Str: [*c]const u8, _SubStr: [*c]const u8) [*c]u8;

pub extern fn strtok(_Str: [*c]u8, _Delim: [*c]const u8) [*c]u8;

pub extern fn strtok_r(noalias _Str: [*c]u8, noalias _Delim: [*c]const u8, noalias __last: [*c][*c]u8) [*c]u8;

pub extern fn _strupr(_String: [*c]u8) [*c]u8;

pub extern fn _strupr_l(_String: [*c]u8, _Locale: _locale_t) [*c]u8;

pub extern fn strxfrm(_Dst: [*c]u8, _Src: [*c]const u8, _MaxCount: c_ulonglong) c_ulonglong;

pub extern fn _strxfrm_l(noalias _Dst: [*c]u8, noalias _Src: [*c]const u8, _MaxCount: usize, _Locale: _locale_t) usize;

pub extern fn strdup(_Src: [*c]const u8) [*c]u8;

pub extern fn strcmpi(_Str1: [*c]const u8, _Str2: [*c]const u8) c_int;

pub extern fn stricmp(_Str1: [*c]const u8, _Str2: [*c]const u8) c_int;

pub extern fn strlwr(_Str: [*c]u8) [*c]u8;

pub extern fn strnicmp(_Str1: [*c]const u8, _Str: [*c]const u8, _MaxCount: usize) c_int;

pub fn strncasecmp(arg___sz1: [*c]const u8, arg___sz2: [*c]const u8, arg___sizeMaxCompare: c_ulonglong) callconv(.C) c_int {
    var __sz1 = arg___sz1;

    var __sz2 = arg___sz2;

    var __sizeMaxCompare = arg___sizeMaxCompare;

    return _strnicmp(__sz1, __sz2, __sizeMaxCompare);
}

pub fn strcasecmp(arg___sz1: [*c]const u8, arg___sz2: [*c]const u8) callconv(.C) c_int {
    var __sz1 = arg___sz1;

    var __sz2 = arg___sz2;

    return _stricmp(__sz1, __sz2);
}

pub extern fn strnset(_Str: [*c]u8, _Val: c_int, _MaxCount: usize) [*c]u8;

pub extern fn strrev(_Str: [*c]u8) [*c]u8;

pub extern fn strset(_Str: [*c]u8, _Val: c_int) [*c]u8;

pub extern fn strupr(_Str: [*c]u8) [*c]u8;

pub extern fn _wcsdup(_Str: [*c]const wchar_t) [*c]wchar_t;

pub extern fn wcscat(noalias _Dest: [*c]wchar_t, noalias _Source: [*c]const wchar_t) [*c]wchar_t;

pub extern fn wcschr(_Str: [*c]const c_ushort, _Ch: c_ushort) [*c]c_ushort;

pub extern fn wcscmp(_Str1: [*c]const c_ushort, _Str2: [*c]const c_ushort) c_int;

pub extern fn wcscpy(noalias _Dest: [*c]wchar_t, noalias _Source: [*c]const wchar_t) [*c]wchar_t;

pub extern fn wcscspn(_Str: [*c]const wchar_t, _Control: [*c]const wchar_t) usize;

pub extern fn wcslen(_Str: [*c]const c_ushort) c_ulonglong;

pub extern fn wcsnlen(_Src: [*c]const wchar_t, _MaxCount: usize) usize;

pub extern fn wcsncat(noalias _Dest: [*c]wchar_t, noalias _Source: [*c]const wchar_t, _Count: usize) [*c]wchar_t;

pub extern fn wcsncmp(_Str1: [*c]const c_ushort, _Str2: [*c]const c_ushort, _MaxCount: c_ulonglong) c_int;

pub extern fn wcsncpy(noalias _Dest: [*c]wchar_t, noalias _Source: [*c]const wchar_t, _Count: usize) [*c]wchar_t;

pub extern fn _wcsncpy_l(noalias _Dest: [*c]wchar_t, noalias _Source: [*c]const wchar_t, _Count: usize, _Locale: _locale_t) [*c]wchar_t;

pub extern fn wcspbrk(_Str: [*c]const wchar_t, _Control: [*c]const wchar_t) [*c]wchar_t;

pub extern fn wcsrchr(_Str: [*c]const wchar_t, _Ch: wchar_t) [*c]wchar_t;

pub extern fn wcsspn(_Str: [*c]const wchar_t, _Control: [*c]const wchar_t) usize;

pub extern fn wcsstr(_Str: [*c]const wchar_t, _SubStr: [*c]const wchar_t) [*c]wchar_t;

pub extern fn wcstok(noalias _Str: [*c]wchar_t, noalias _Delim: [*c]const wchar_t) [*c]wchar_t;

pub extern fn _wcserror(_ErrNum: c_int) [*c]wchar_t;

pub extern fn __wcserror(_Str: [*c]const wchar_t) [*c]wchar_t;

pub extern fn _wcsicmp(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t) c_int;

pub extern fn _wcsicmp_l(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t, _Locale: _locale_t) c_int;

pub extern fn _wcsnicmp(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t, _MaxCount: usize) c_int;

pub extern fn _wcsnicmp_l(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t, _MaxCount: usize, _Locale: _locale_t) c_int;

pub extern fn _wcsnset(_Str: [*c]wchar_t, _Val: wchar_t, _MaxCount: usize) [*c]wchar_t;

pub extern fn _wcsrev(_Str: [*c]wchar_t) [*c]wchar_t;

pub extern fn _wcsset(_Str: [*c]wchar_t, _Val: wchar_t) [*c]wchar_t;

pub extern fn _wcslwr(_String: [*c]wchar_t) [*c]wchar_t;

pub extern fn _wcslwr_l(_String: [*c]wchar_t, _Locale: _locale_t) [*c]wchar_t;

pub extern fn _wcsupr(_String: [*c]wchar_t) [*c]wchar_t;

pub extern fn _wcsupr_l(_String: [*c]wchar_t, _Locale: _locale_t) [*c]wchar_t;

pub extern fn wcsxfrm(noalias _Dst: [*c]wchar_t, noalias _Src: [*c]const wchar_t, _MaxCount: usize) usize;

pub extern fn _wcsxfrm_l(noalias _Dst: [*c]wchar_t, noalias _Src: [*c]const wchar_t, _MaxCount: usize, _Locale: _locale_t) usize;

pub extern fn wcscoll(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t) c_int;

pub extern fn _wcscoll_l(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t, _Locale: _locale_t) c_int;

pub extern fn _wcsicoll(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t) c_int;

pub extern fn _wcsicoll_l(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t, _Locale: _locale_t) c_int;

pub extern fn _wcsncoll(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t, _MaxCount: usize) c_int;

pub extern fn _wcsncoll_l(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t, _MaxCount: usize, _Locale: _locale_t) c_int;

pub extern fn _wcsnicoll(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t, _MaxCount: usize) c_int;

pub extern fn _wcsnicoll_l(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t, _MaxCount: usize, _Locale: _locale_t) c_int;

pub extern fn wcsdup(_Str: [*c]const wchar_t) [*c]wchar_t;

pub extern fn wcsicmp(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t) c_int;

pub extern fn wcsnicmp(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t, _MaxCount: usize) c_int;

pub extern fn wcsnset(_Str: [*c]wchar_t, _Val: wchar_t, _MaxCount: usize) [*c]wchar_t;

pub extern fn wcsrev(_Str: [*c]wchar_t) [*c]wchar_t;

pub extern fn wcsset(_Str: [*c]wchar_t, _Val: wchar_t) [*c]wchar_t;

pub extern fn wcslwr(_Str: [*c]wchar_t) [*c]wchar_t;

pub extern fn wcsupr(_Str: [*c]wchar_t) [*c]wchar_t;

pub extern fn wcsicoll(_Str1: [*c]const wchar_t, _Str2: [*c]const wchar_t) c_int;

pub extern fn _strset_s(_Dst: [*c]u8, _DstSize: usize, _Value: c_int) errno_t;

pub extern fn _strerror_s(_Buf: [*c]u8, _SizeInBytes: usize, _ErrMsg: [*c]const u8) errno_t;

pub extern fn strerror_s(_Buf: [*c]u8, _SizeInBytes: usize, _ErrNum: c_int) errno_t;

pub extern fn _strlwr_s(_Str: [*c]u8, _Size: usize) errno_t;

pub extern fn _strlwr_s_l(_Str: [*c]u8, _Size: usize, _Locale: _locale_t) errno_t;

pub extern fn _strnset_s(_Str: [*c]u8, _Size: usize, _Val: c_int, _MaxCount: usize) errno_t;

pub extern fn _strupr_s(_Str: [*c]u8, _Size: usize) errno_t;

pub extern fn _strupr_s_l(_Str: [*c]u8, _Size: usize, _Locale: _locale_t) errno_t;

pub extern fn strncat_s(_Dst: [*c]u8, _DstSizeInChars: usize, _Src: [*c]const u8, _MaxCount: usize) errno_t;

pub extern fn _strncat_s_l(_Dst: [*c]u8, _DstSizeInChars: usize, _Src: [*c]const u8, _MaxCount: usize, _Locale: _locale_t) errno_t;

pub extern fn strcpy_s(_Dst: [*c]u8, _SizeInBytes: rsize_t, _Src: [*c]const u8) errno_t;

pub extern fn strncpy_s(_Dst: [*c]u8, _DstSizeInChars: usize, _Src: [*c]const u8, _MaxCount: usize) errno_t;

pub extern fn _strncpy_s_l(_Dst: [*c]u8, _DstSizeInChars: usize, _Src: [*c]const u8, _MaxCount: usize, _Locale: _locale_t) errno_t;

pub extern fn strtok_s(_Str: [*c]u8, _Delim: [*c]const u8, _Context: [*c][*c]u8) [*c]u8;

pub extern fn _strtok_s_l(_Str: [*c]u8, _Delim: [*c]const u8, _Context: [*c][*c]u8, _Locale: _locale_t) [*c]u8;

pub extern fn strcat_s(_Dst: [*c]u8, _SizeInBytes: rsize_t, _Src: [*c]const u8) errno_t;

pub inline fn strnlen_s(arg__src: [*c]const u8, arg__count: usize) usize {
    var _src = arg__src;

    var _count = arg__count;

    return if (_src != null) strnlen(_src, _count) else @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)));
}

pub extern fn memmove_s(_dest: ?*anyopaque, _numberOfElements: usize, _src: ?*const anyopaque, _count: usize) errno_t;

pub extern fn wcstok_s(_Str: [*c]wchar_t, _Delim: [*c]const wchar_t, _Context: [*c][*c]wchar_t) [*c]wchar_t;

pub extern fn _wcserror_s(_Buf: [*c]wchar_t, _SizeInWords: usize, _ErrNum: c_int) errno_t;

pub extern fn __wcserror_s(_Buffer: [*c]wchar_t, _SizeInWords: usize, _ErrMsg: [*c]const wchar_t) errno_t;

pub extern fn _wcsnset_s(_Dst: [*c]wchar_t, _DstSizeInWords: usize, _Val: wchar_t, _MaxCount: usize) errno_t;

pub extern fn _wcsset_s(_Str: [*c]wchar_t, _SizeInWords: usize, _Val: wchar_t) errno_t;

pub extern fn _wcslwr_s(_Str: [*c]wchar_t, _SizeInWords: usize) errno_t;

pub extern fn _wcslwr_s_l(_Str: [*c]wchar_t, _SizeInWords: usize, _Locale: _locale_t) errno_t;

pub extern fn _wcsupr_s(_Str: [*c]wchar_t, _Size: usize) errno_t;

pub extern fn _wcsupr_s_l(_Str: [*c]wchar_t, _Size: usize, _Locale: _locale_t) errno_t;

pub extern fn wcscpy_s(_Dst: [*c]wchar_t, _SizeInWords: rsize_t, _Src: [*c]const wchar_t) errno_t;

pub extern fn wcscat_s(_Dst: [*c]wchar_t, _SizeInWords: rsize_t, _Src: [*c]const wchar_t) errno_t;

pub extern fn wcsncat_s(_Dst: [*c]wchar_t, _DstSizeInChars: usize, _Src: [*c]const wchar_t, _MaxCount: usize) errno_t;

pub extern fn _wcsncat_s_l(_Dst: [*c]wchar_t, _DstSizeInChars: usize, _Src: [*c]const wchar_t, _MaxCount: usize, _Locale: _locale_t) errno_t;

pub extern fn wcsncpy_s(_Dst: [*c]wchar_t, _DstSizeInChars: usize, _Src: [*c]const wchar_t, _MaxCount: usize) errno_t;

pub extern fn _wcsncpy_s_l(_Dst: [*c]wchar_t, _DstSizeInChars: usize, _Src: [*c]const wchar_t, _MaxCount: usize, _Locale: _locale_t) errno_t;

pub extern fn _wcstok_s_l(_Str: [*c]wchar_t, _Delim: [*c]const wchar_t, _Context: [*c][*c]wchar_t, _Locale: _locale_t) [*c]wchar_t;

pub extern fn _wcsset_s_l(_Str: [*c]wchar_t, _SizeInChars: usize, _Val: c_uint, _Locale: _locale_t) errno_t;

pub extern fn _wcsnset_s_l(_Str: [*c]wchar_t, _SizeInChars: usize, _Val: c_uint, _Count: usize, _Locale: _locale_t) errno_t;

pub inline fn wcsnlen_s(arg__src: [*c]const wchar_t, arg__count: usize) usize {
    var _src = arg__src;

    var _count = arg__count;

    return if (_src != null) wcsnlen(_src, _count) else @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)));
}

pub const int_least8_t = i8;

pub const uint_least8_t = u8;

pub const int_least16_t = c_short;

pub const uint_least16_t = c_ushort;

pub const int_least32_t = c_int;

pub const uint_least32_t = c_uint;

pub const int_least64_t = c_longlong;

pub const uint_least64_t = c_ulonglong;

pub const int_fast8_t = i8;

pub const uint_fast8_t = u8;

pub const int_fast16_t = c_short;

pub const uint_fast16_t = c_ushort;

pub const int_fast32_t = c_int;

pub const uint_fast32_t = c_uint;

pub const int_fast64_t = c_longlong;

pub const uint_fast64_t = c_ulonglong;

pub const intmax_t = c_longlong;

pub const uintmax_t = c_ulonglong;

pub const ecs_flags8_t = u8;

pub const ecs_flags16_t = u16;

pub const ecs_flags32_t = u32;

pub const ecs_flags64_t = u64;

pub const ecs_size_t = i32;

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

pub const ecs_map_key_t = u64;

pub const struct_ecs_bucket_t = extern struct {
    keys: [*c]ecs_map_key_t,

    payload: ?*anyopaque,

    count: i32,
};

pub const ecs_bucket_t = struct_ecs_bucket_t;

pub const struct_ecs_map_t = extern struct {
    buckets: [*c]ecs_bucket_t,

    elem_size: i16,

    bucket_shift: u8,

    bucket_count: i32,

    count: i32,
};

pub const ecs_map_t = struct_ecs_map_t;

pub const struct_ecs_map_iter_t = extern struct {
    map: [*c]const ecs_map_t,

    bucket: [*c]struct_ecs_bucket_t,

    bucket_index: i32,

    element_index: i32,

    payload: ?*anyopaque,
};

pub const ecs_map_iter_t = struct_ecs_map_iter_t;

pub extern fn _ecs_map_init(map: [*c]ecs_map_t, elem_size: ecs_size_t, elem_count: i32) void;

pub extern fn ecs_map_fini(map: [*c]ecs_map_t) void;

pub extern fn _ecs_map_new(elem_size: ecs_size_t, elem_count: i32) [*c]ecs_map_t;

pub extern fn ecs_map_is_initialized(result: [*c]const ecs_map_t) bool;

pub extern fn _ecs_map_get(map: [*c]const ecs_map_t, elem_size: ecs_size_t, key: ecs_map_key_t) ?*anyopaque;

pub extern fn _ecs_map_get_ptr(map: [*c]const ecs_map_t, key: ecs_map_key_t) ?*anyopaque;

pub extern fn ecs_map_has(map: [*c]const ecs_map_t, key: ecs_map_key_t) bool;

pub extern fn _ecs_map_ensure(map: [*c]ecs_map_t, elem_size: ecs_size_t, key: ecs_map_key_t) ?*anyopaque;

pub extern fn _ecs_map_set(map: [*c]ecs_map_t, elem_size: ecs_size_t, key: ecs_map_key_t, payload: ?*const anyopaque) ?*anyopaque;

pub extern fn ecs_map_free(map: [*c]ecs_map_t) void;

pub extern fn ecs_map_remove(map: [*c]ecs_map_t, key: ecs_map_key_t) i32;

pub extern fn ecs_map_clear(map: [*c]ecs_map_t) void;

pub extern fn ecs_map_count(map: [*c]const ecs_map_t) i32;

pub extern fn ecs_map_bucket_count(map: [*c]const ecs_map_t) i32;

pub extern fn ecs_map_iter(map: [*c]const ecs_map_t) ecs_map_iter_t;

pub extern fn _ecs_map_next(iter: [*c]ecs_map_iter_t, elem_size: ecs_size_t, key: [*c]ecs_map_key_t) ?*anyopaque;

pub extern fn _ecs_map_next_ptr(iter: [*c]ecs_map_iter_t, key: [*c]ecs_map_key_t) ?*anyopaque;

pub extern fn ecs_map_grow(map: [*c]ecs_map_t, elem_count: i32) void;

pub extern fn ecs_map_set_size(map: [*c]ecs_map_t, elem_count: i32) void;

pub extern fn ecs_map_copy(map: [*c]ecs_map_t) [*c]ecs_map_t;

pub extern fn ecs_map_memory(map: [*c]ecs_map_t, allocd: [*c]i32, used: [*c]i32) void;

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

pub extern fn _errno() [*c]c_int;

pub extern fn _set_errno(_Value: c_int) errno_t;

pub extern fn _get_errno(_Value: [*c]c_int) errno_t;

pub const struct__heapinfo = extern struct {
    _pentry: [*c]c_int,

    _size: usize,

    _useflag: c_int,
};

pub const _HEAPINFO = struct__heapinfo;

pub extern var _amblksiz: c_uint;

pub extern fn calloc(_NumOfElements: c_ulonglong, _SizeOfElements: c_ulonglong) ?*anyopaque;

pub extern fn free(_Memory: ?*anyopaque) void;

pub extern fn malloc(_Size: c_ulonglong) ?*anyopaque;

pub extern fn realloc(_Memory: ?*anyopaque, _NewSize: c_ulonglong) ?*anyopaque;

pub extern fn _recalloc(_Memory: ?*anyopaque, _Count: usize, _Size: usize) ?*anyopaque;

pub extern fn _aligned_free(_Memory: ?*anyopaque) void;

pub extern fn _aligned_malloc(_Size: usize, _Alignment: usize) ?*anyopaque;

pub extern fn _aligned_offset_malloc(_Size: usize, _Alignment: usize, _Offset: usize) ?*anyopaque;

pub extern fn _aligned_realloc(_Memory: ?*anyopaque, _Size: usize, _Alignment: usize) ?*anyopaque;

pub extern fn _aligned_recalloc(_Memory: ?*anyopaque, _Count: usize, _Size: usize, _Alignment: usize) ?*anyopaque;

pub extern fn _aligned_offset_realloc(_Memory: ?*anyopaque, _Size: usize, _Alignment: usize, _Offset: usize) ?*anyopaque;

pub extern fn _aligned_offset_recalloc(_Memory: ?*anyopaque, _Count: usize, _Size: usize, _Alignment: usize, _Offset: usize) ?*anyopaque;

pub extern fn __mingw_aligned_malloc(_Size: usize, _Alignment: usize) ?*anyopaque;

pub extern fn __mingw_aligned_free(_Memory: ?*anyopaque) void;

pub extern fn __mingw_aligned_offset_realloc(_Memory: ?*anyopaque, _Size: usize, _Alignment: usize, _Offset: usize) ?*anyopaque;

pub extern fn __mingw_aligned_realloc(_Memory: ?*anyopaque, _Size: usize, _Offset: usize) ?*anyopaque;

pub extern fn _itow_s(_Val: c_int, _DstBuf: [*c]wchar_t, _SizeInWords: usize, _Radix: c_int) errno_t;

pub extern fn _ltow_s(_Val: c_long, _DstBuf: [*c]wchar_t, _SizeInWords: usize, _Radix: c_int) errno_t;

pub extern fn _ultow_s(_Val: c_ulong, _DstBuf: [*c]wchar_t, _SizeInWords: usize, _Radix: c_int) errno_t;

pub extern fn _wgetenv_s(_ReturnSize: [*c]usize, _DstBuf: [*c]wchar_t, _DstSizeInWords: usize, _VarName: [*c]const wchar_t) errno_t;

pub extern fn _wdupenv_s(_Buffer: [*c][*c]wchar_t, _BufferSizeInWords: [*c]usize, _VarName: [*c]const wchar_t) errno_t;

pub extern fn _i64tow_s(_Val: c_longlong, _DstBuf: [*c]wchar_t, _SizeInWords: usize, _Radix: c_int) errno_t;

pub extern fn _ui64tow_s(_Val: c_ulonglong, _DstBuf: [*c]wchar_t, _SizeInWords: usize, _Radix: c_int) errno_t;

pub extern fn _wmakepath_s(_PathResult: [*c]wchar_t, _SizeInWords: usize, _Drive: [*c]const wchar_t, _Dir: [*c]const wchar_t, _Filename: [*c]const wchar_t, _Ext: [*c]const wchar_t) errno_t;

pub extern fn _wputenv_s(_Name: [*c]const wchar_t, _Value: [*c]const wchar_t) errno_t;

pub extern fn _wsearchenv_s(_Filename: [*c]const wchar_t, _EnvVar: [*c]const wchar_t, _ResultPath: [*c]wchar_t, _SizeInWords: usize) errno_t;

pub extern fn _wsplitpath_s(_FullPath: [*c]const wchar_t, _Drive: [*c]wchar_t, _DriveSizeInWords: usize, _Dir: [*c]wchar_t, _DirSizeInWords: usize, _Filename: [*c]wchar_t, _FilenameSizeInWords: usize, _Ext: [*c]wchar_t, _ExtSizeInWords: usize) errno_t;

pub const _onexit_t = ?fn () callconv(.C) c_int;

pub const struct__div_t = extern struct {
    quot: c_int,

    rem: c_int,
};

pub const div_t = struct__div_t;

pub const struct__ldiv_t = extern struct {
    quot: c_long,

    rem: c_long,
};

pub const ldiv_t = struct__ldiv_t;

pub const _LDOUBLE = extern struct {
    ld: [10]u8,
};

pub const _CRT_DOUBLE = extern struct {
    x: f64,
};

pub const _CRT_FLOAT = extern struct {
    f: f32,
};

pub const _LONGDOUBLE = extern struct {
    x: c_longdouble,
};

pub const _LDBL12 = extern struct {
    ld12: [12]u8,
};

pub extern var __imp___mb_cur_max: [*c]c_int;

pub extern fn ___mb_cur_max_func() c_int;

pub const _purecall_handler = ?fn () callconv(.C) void;

pub extern fn _set_purecall_handler(_Handler: _purecall_handler) _purecall_handler;

pub extern fn _get_purecall_handler() _purecall_handler;

pub const _invalid_parameter_handler = ?fn ([*c]const wchar_t, [*c]const wchar_t, [*c]const wchar_t, c_uint, usize) callconv(.C) void;

pub extern fn _set_invalid_parameter_handler(_Handler: _invalid_parameter_handler) _invalid_parameter_handler;

pub extern fn _get_invalid_parameter_handler() _invalid_parameter_handler;

pub extern fn __doserrno() [*c]c_ulong;

pub extern fn _set_doserrno(_Value: c_ulong) errno_t;

pub extern fn _get_doserrno(_Value: [*c]c_ulong) errno_t;

pub extern var _sys_errlist: [1][*c]u8;

pub extern var _sys_nerr: c_int;

pub extern fn __p___argv() [*c][*c][*c]u8;

pub extern fn __p__fmode() [*c]c_int;

pub extern fn _get_pgmptr(_Value: [*c][*c]u8) errno_t;

pub extern fn _get_wpgmptr(_Value: [*c][*c]wchar_t) errno_t;

pub extern fn _set_fmode(_Mode: c_int) errno_t;

pub extern fn _get_fmode(_PMode: [*c]c_int) errno_t;

pub extern var __imp___argc: [*c]c_int;

pub extern var __imp___argv: [*c][*c][*c]u8;

pub extern var __imp___wargv: [*c][*c][*c]wchar_t;

pub extern var __imp__environ: [*c][*c][*c]u8;

pub extern var __imp__wenviron: [*c][*c][*c]wchar_t;

pub extern var __imp__pgmptr: [*c][*c]u8;

pub extern var __imp__wpgmptr: [*c][*c]wchar_t;

pub extern var __imp__osplatform: [*c]c_uint;

pub extern var __imp__osver: [*c]c_uint;

pub extern var __imp__winver: [*c]c_uint;

pub extern var __imp__winmajor: [*c]c_uint;

pub extern var __imp__winminor: [*c]c_uint;

pub extern fn _get_osplatform(_Value: [*c]c_uint) errno_t;

pub extern fn _get_osver(_Value: [*c]c_uint) errno_t;

pub extern fn _get_winver(_Value: [*c]c_uint) errno_t;

pub extern fn _get_winmajor(_Value: [*c]c_uint) errno_t;

pub extern fn _get_winminor(_Value: [*c]c_uint) errno_t;

pub extern fn exit(_Code: c_int) noreturn;

pub extern fn _exit(_Code: c_int) noreturn;

pub fn _Exit(arg_status: c_int) callconv(.C) noreturn {
    var status = arg_status;

    _exit(status);
}

pub extern fn abort() noreturn;

pub extern fn _set_abort_behavior(_Flags: c_uint, _Mask: c_uint) c_uint;

pub extern fn abs(_X: c_int) c_int;

pub extern fn labs(_X: c_long) c_long; // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\stdlib.h:421:12: warning: TODO implement function '__builtin_llabs' in std.zig.c_builtins

// C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\stdlib.h:420:41: warning: unable to translate function, demoted to extern

pub extern fn _abs64(arg_x: c_longlong) c_longlong;

pub extern fn atexit(?fn () callconv(.C) void) c_int;

pub extern fn atof(_String: [*c]const u8) f64;

pub extern fn _atof_l(_String: [*c]const u8, _Locale: _locale_t) f64;

pub extern fn atoi(_Str: [*c]const u8) c_int;

pub extern fn _atoi_l(_Str: [*c]const u8, _Locale: _locale_t) c_int;

pub extern fn atol(_Str: [*c]const u8) c_long;

pub extern fn _atol_l(_Str: [*c]const u8, _Locale: _locale_t) c_long;

pub extern fn bsearch(_Key: ?*const anyopaque, _Base: ?*const anyopaque, _NumOfElements: usize, _SizeOfElements: usize, _PtFuncCompare: ?fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int) ?*anyopaque;

pub extern fn qsort(_Base: ?*anyopaque, _NumOfElements: usize, _SizeOfElements: usize, _PtFuncCompare: ?fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int) void;

pub extern fn _byteswap_ushort(_Short: c_ushort) c_ushort;

pub extern fn _byteswap_ulong(_Long: c_ulong) c_ulong;

pub extern fn _byteswap_uint64(_Int64: c_ulonglong) c_ulonglong;

pub extern fn div(_Numerator: c_int, _Denominator: c_int) div_t;

pub extern fn getenv(_VarName: [*c]const u8) [*c]u8;

pub extern fn _itoa(_Value: c_int, _Dest: [*c]u8, _Radix: c_int) [*c]u8;

pub extern fn _i64toa(_Val: c_longlong, _DstBuf: [*c]u8, _Radix: c_int) [*c]u8;

pub extern fn _ui64toa(_Val: c_ulonglong, _DstBuf: [*c]u8, _Radix: c_int) [*c]u8;

pub extern fn _atoi64(_String: [*c]const u8) c_longlong;

pub extern fn _atoi64_l(_String: [*c]const u8, _Locale: _locale_t) c_longlong;

pub extern fn _strtoi64(_String: [*c]const u8, _EndPtr: [*c][*c]u8, _Radix: c_int) c_longlong;

pub extern fn _strtoi64_l(_String: [*c]const u8, _EndPtr: [*c][*c]u8, _Radix: c_int, _Locale: _locale_t) c_longlong;

pub extern fn _strtoui64(_String: [*c]const u8, _EndPtr: [*c][*c]u8, _Radix: c_int) c_ulonglong;

pub extern fn _strtoui64_l(_String: [*c]const u8, _EndPtr: [*c][*c]u8, _Radix: c_int, _Locale: _locale_t) c_ulonglong;

pub extern fn ldiv(_Numerator: c_long, _Denominator: c_long) ldiv_t;

pub extern fn _ltoa(_Value: c_long, _Dest: [*c]u8, _Radix: c_int) [*c]u8;

pub extern fn mblen(_Ch: [*c]const u8, _MaxCount: usize) c_int;

pub extern fn _mblen_l(_Ch: [*c]const u8, _MaxCount: usize, _Locale: _locale_t) c_int;

pub extern fn _mbstrlen(_Str: [*c]const u8) usize;

pub extern fn _mbstrlen_l(_Str: [*c]const u8, _Locale: _locale_t) usize;

pub extern fn _mbstrnlen(_Str: [*c]const u8, _MaxCount: usize) usize;

pub extern fn _mbstrnlen_l(_Str: [*c]const u8, _MaxCount: usize, _Locale: _locale_t) usize;

pub extern fn mbtowc(noalias _DstCh: [*c]wchar_t, noalias _SrcCh: [*c]const u8, _SrcSizeInBytes: usize) c_int;

pub extern fn _mbtowc_l(noalias _DstCh: [*c]wchar_t, noalias _SrcCh: [*c]const u8, _SrcSizeInBytes: usize, _Locale: _locale_t) c_int;

pub extern fn mbstowcs(noalias _Dest: [*c]wchar_t, noalias _Source: [*c]const u8, _MaxCount: usize) usize;

pub extern fn _mbstowcs_l(noalias _Dest: [*c]wchar_t, noalias _Source: [*c]const u8, _MaxCount: usize, _Locale: _locale_t) usize;

pub extern fn mkstemp(template_name: [*c]u8) c_int;

pub extern fn rand() c_int;

pub extern fn _set_error_mode(_Mode: c_int) c_int;

pub extern fn srand(_Seed: c_uint) void;

pub extern fn __mingw_strtod(noalias [*c]const u8, noalias [*c][*c]u8) f64;

pub fn strtod(noalias arg__Str: [*c]const u8, noalias arg__EndPtr: [*c][*c]u8) callconv(.C) f64 {
    var _Str = arg__Str;

    var _EndPtr = arg__EndPtr;

    return __mingw_strtod(_Str, _EndPtr);
}

pub extern fn __mingw_strtof(noalias [*c]const u8, noalias [*c][*c]u8) f32;

pub fn strtof(noalias arg__Str: [*c]const u8, noalias arg__EndPtr: [*c][*c]u8) callconv(.C) f32 {
    var _Str = arg__Str;

    var _EndPtr = arg__EndPtr;

    return __mingw_strtof(_Str, _EndPtr);
}

pub extern fn strtold([*c]const u8, [*c][*c]u8) c_longdouble;

pub extern fn __strtod(noalias [*c]const u8, noalias [*c][*c]u8) f64;

pub extern fn __mingw_strtold(noalias [*c]const u8, noalias [*c][*c]u8) c_longdouble;

pub extern fn _strtod_l(noalias _Str: [*c]const u8, noalias _EndPtr: [*c][*c]u8, _Locale: _locale_t) f64;

pub extern fn strtol(_Str: [*c]const u8, _EndPtr: [*c][*c]u8, _Radix: c_int) c_long;

pub extern fn _strtol_l(noalias _Str: [*c]const u8, noalias _EndPtr: [*c][*c]u8, _Radix: c_int, _Locale: _locale_t) c_long;

pub extern fn strtoul(_Str: [*c]const u8, _EndPtr: [*c][*c]u8, _Radix: c_int) c_ulong;

pub extern fn _strtoul_l(noalias _Str: [*c]const u8, noalias _EndPtr: [*c][*c]u8, _Radix: c_int, _Locale: _locale_t) c_ulong;

pub extern fn system(_Command: [*c]const u8) c_int;

pub extern fn _ultoa(_Value: c_ulong, _Dest: [*c]u8, _Radix: c_int) [*c]u8;

pub extern fn wctomb(_MbCh: [*c]u8, _WCh: wchar_t) c_int;

pub extern fn _wctomb_l(_MbCh: [*c]u8, _WCh: wchar_t, _Locale: _locale_t) c_int;

pub extern fn wcstombs(noalias _Dest: [*c]u8, noalias _Source: [*c]const wchar_t, _MaxCount: usize) usize;

pub extern fn _wcstombs_l(noalias _Dest: [*c]u8, noalias _Source: [*c]const wchar_t, _MaxCount: usize, _Locale: _locale_t) usize;

pub extern fn _itow(_Value: c_int, _Dest: [*c]wchar_t, _Radix: c_int) [*c]wchar_t;

pub extern fn _ltow(_Value: c_long, _Dest: [*c]wchar_t, _Radix: c_int) [*c]wchar_t;

pub extern fn _ultow(_Value: c_ulong, _Dest: [*c]wchar_t, _Radix: c_int) [*c]wchar_t;

pub extern fn __mingw_wcstod(noalias _Str: [*c]const wchar_t, noalias _EndPtr: [*c][*c]wchar_t) f64;

pub extern fn __mingw_wcstof(noalias nptr: [*c]const wchar_t, noalias endptr: [*c][*c]wchar_t) f32;

pub extern fn __mingw_wcstold(noalias [*c]const wchar_t, noalias [*c][*c]wchar_t) c_longdouble;

pub fn wcstod(noalias arg__Str: [*c]const wchar_t, noalias arg__EndPtr: [*c][*c]wchar_t) callconv(.C) f64 {
    var _Str = arg__Str;

    var _EndPtr = arg__EndPtr;

    return __mingw_wcstod(_Str, _EndPtr);
}

pub fn wcstof(noalias arg__Str: [*c]const wchar_t, noalias arg__EndPtr: [*c][*c]wchar_t) callconv(.C) f32 {
    var _Str = arg__Str;

    var _EndPtr = arg__EndPtr;

    return __mingw_wcstof(_Str, _EndPtr);
}

pub extern fn wcstold(noalias [*c]const wchar_t, noalias [*c][*c]wchar_t) c_longdouble;

pub extern fn _wcstod_l(noalias _Str: [*c]const wchar_t, noalias _EndPtr: [*c][*c]wchar_t, _Locale: _locale_t) f64;

pub extern fn wcstol(noalias _Str: [*c]const wchar_t, noalias _EndPtr: [*c][*c]wchar_t, _Radix: c_int) c_long;

pub extern fn _wcstol_l(noalias _Str: [*c]const wchar_t, noalias _EndPtr: [*c][*c]wchar_t, _Radix: c_int, _Locale: _locale_t) c_long;

pub extern fn wcstoul(noalias _Str: [*c]const wchar_t, noalias _EndPtr: [*c][*c]wchar_t, _Radix: c_int) c_ulong;

pub extern fn _wcstoul_l(noalias _Str: [*c]const wchar_t, noalias _EndPtr: [*c][*c]wchar_t, _Radix: c_int, _Locale: _locale_t) c_ulong;

pub extern fn _wgetenv(_VarName: [*c]const wchar_t) [*c]wchar_t;

pub extern fn _wsystem(_Command: [*c]const wchar_t) c_int;

pub extern fn _wtof(_Str: [*c]const wchar_t) f64;

pub extern fn _wtof_l(_Str: [*c]const wchar_t, _Locale: _locale_t) f64;

pub extern fn _wtoi(_Str: [*c]const wchar_t) c_int;

pub extern fn _wtoi_l(_Str: [*c]const wchar_t, _Locale: _locale_t) c_int;

pub extern fn _wtol(_Str: [*c]const wchar_t) c_long;

pub extern fn _wtol_l(_Str: [*c]const wchar_t, _Locale: _locale_t) c_long;

pub extern fn _i64tow(_Val: c_longlong, _DstBuf: [*c]wchar_t, _Radix: c_int) [*c]wchar_t;

pub extern fn _ui64tow(_Val: c_ulonglong, _DstBuf: [*c]wchar_t, _Radix: c_int) [*c]wchar_t;

pub extern fn _wtoi64(_Str: [*c]const wchar_t) c_longlong;

pub extern fn _wtoi64_l(_Str: [*c]const wchar_t, _Locale: _locale_t) c_longlong;

pub extern fn _wcstoi64(_Str: [*c]const wchar_t, _EndPtr: [*c][*c]wchar_t, _Radix: c_int) c_longlong;

pub extern fn _wcstoi64_l(_Str: [*c]const wchar_t, _EndPtr: [*c][*c]wchar_t, _Radix: c_int, _Locale: _locale_t) c_longlong;

pub extern fn _wcstoui64(_Str: [*c]const wchar_t, _EndPtr: [*c][*c]wchar_t, _Radix: c_int) c_ulonglong;

pub extern fn _wcstoui64_l(_Str: [*c]const wchar_t, _EndPtr: [*c][*c]wchar_t, _Radix: c_int, _Locale: _locale_t) c_ulonglong;

pub extern fn _putenv(_EnvString: [*c]const u8) c_int;

pub extern fn _wputenv(_EnvString: [*c]const wchar_t) c_int;

pub extern fn _fullpath(_FullPath: [*c]u8, _Path: [*c]const u8, _SizeInBytes: usize) [*c]u8;

pub extern fn _ecvt(_Val: f64, _NumOfDigits: c_int, _PtDec: [*c]c_int, _PtSign: [*c]c_int) [*c]u8;

pub extern fn _fcvt(_Val: f64, _NumOfDec: c_int, _PtDec: [*c]c_int, _PtSign: [*c]c_int) [*c]u8;

pub extern fn _gcvt(_Val: f64, _NumOfDigits: c_int, _DstBuf: [*c]u8) [*c]u8;

pub extern fn _atodbl(_Result: [*c]_CRT_DOUBLE, _Str: [*c]u8) c_int;

pub extern fn _atoldbl(_Result: [*c]_LDOUBLE, _Str: [*c]u8) c_int;

pub extern fn _atoflt(_Result: [*c]_CRT_FLOAT, _Str: [*c]u8) c_int;

pub extern fn _atodbl_l(_Result: [*c]_CRT_DOUBLE, _Str: [*c]u8, _Locale: _locale_t) c_int;

pub extern fn _atoldbl_l(_Result: [*c]_LDOUBLE, _Str: [*c]u8, _Locale: _locale_t) c_int;

pub extern fn _atoflt_l(_Result: [*c]_CRT_FLOAT, _Str: [*c]u8, _Locale: _locale_t) c_int;

pub extern fn _lrotl(c_ulong, c_int) c_ulong;

pub extern fn _lrotr(c_ulong, c_int) c_ulong;

pub extern fn _makepath(_Path: [*c]u8, _Drive: [*c]const u8, _Dir: [*c]const u8, _Filename: [*c]const u8, _Ext: [*c]const u8) void;

pub extern fn _onexit(_Func: _onexit_t) _onexit_t;

pub extern fn perror(_ErrMsg: [*c]const u8) void;

pub extern fn _rotl64(_Val: c_ulonglong, _Shift: c_int) c_ulonglong;

pub extern fn _rotr64(Value: c_ulonglong, Shift: c_int) c_ulonglong;

pub extern fn _rotr(_Val: c_uint, _Shift: c_int) c_uint;

pub extern fn _rotl(_Val: c_uint, _Shift: c_int) c_uint;

pub extern fn _searchenv(_Filename: [*c]const u8, _EnvVar: [*c]const u8, _ResultPath: [*c]u8) void;

pub extern fn _splitpath(_FullPath: [*c]const u8, _Drive: [*c]u8, _Dir: [*c]u8, _Filename: [*c]u8, _Ext: [*c]u8) void;

pub extern fn _swab(_Buf1: [*c]u8, _Buf2: [*c]u8, _SizeInBytes: c_int) void;

pub extern fn _wfullpath(_FullPath: [*c]wchar_t, _Path: [*c]const wchar_t, _SizeInWords: usize) [*c]wchar_t;

pub extern fn _wmakepath(_ResultPath: [*c]wchar_t, _Drive: [*c]const wchar_t, _Dir: [*c]const wchar_t, _Filename: [*c]const wchar_t, _Ext: [*c]const wchar_t) void;

pub extern fn _wperror(_ErrMsg: [*c]const wchar_t) void;

pub extern fn _wsearchenv(_Filename: [*c]const wchar_t, _EnvVar: [*c]const wchar_t, _ResultPath: [*c]wchar_t) void;

pub extern fn _wsplitpath(_FullPath: [*c]const wchar_t, _Drive: [*c]wchar_t, _Dir: [*c]wchar_t, _Filename: [*c]wchar_t, _Ext: [*c]wchar_t) void;

pub const _beep = @compileError("unable to resolve function type clang.TypeClass.MacroQualified"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\stdlib.h:681:24

pub const _seterrormode = @compileError("unable to resolve function type clang.TypeClass.MacroQualified"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\stdlib.h:683:24

pub const _sleep = @compileError("unable to resolve function type clang.TypeClass.MacroQualified"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\stdlib.h:684:24

pub extern fn ecvt(_Val: f64, _NumOfDigits: c_int, _PtDec: [*c]c_int, _PtSign: [*c]c_int) [*c]u8;

pub extern fn fcvt(_Val: f64, _NumOfDec: c_int, _PtDec: [*c]c_int, _PtSign: [*c]c_int) [*c]u8;

pub extern fn gcvt(_Val: f64, _NumOfDigits: c_int, _DstBuf: [*c]u8) [*c]u8;

pub extern fn itoa(_Val: c_int, _DstBuf: [*c]u8, _Radix: c_int) [*c]u8;

pub extern fn ltoa(_Val: c_long, _DstBuf: [*c]u8, _Radix: c_int) [*c]u8;

pub extern fn putenv(_EnvString: [*c]const u8) c_int;

pub extern fn swab(_Buf1: [*c]u8, _Buf2: [*c]u8, _SizeInBytes: c_int) void;

pub extern fn ultoa(_Val: c_ulong, _Dstbuf: [*c]u8, _Radix: c_int) [*c]u8;

pub extern fn onexit(_Func: _onexit_t) _onexit_t;

pub const lldiv_t = extern struct {
    quot: c_longlong,

    rem: c_longlong,
};

pub extern fn lldiv(c_longlong, c_longlong) lldiv_t;

pub fn llabs(arg__j: c_longlong) callconv(.C) c_longlong {
    var _j = arg__j;

    return if (_j >= @bitCast(c_longlong, @as(c_longlong, @as(c_int, 0)))) _j else -_j;
}

pub extern fn strtoll([*c]const u8, [*c][*c]u8, c_int) c_longlong;

pub extern fn strtoull([*c]const u8, [*c][*c]u8, c_int) c_ulonglong;

pub fn atoll(arg__c: [*c]const u8) callconv(.C) c_longlong {
    var _c = arg__c;

    return _atoi64(_c);
}

pub fn wtoll(arg__w: [*c]const wchar_t) callconv(.C) c_longlong {
    var _w = arg__w;

    return _wtoi64(_w);
}

pub fn lltoa(arg__n: c_longlong, arg__c: [*c]u8, arg__i: c_int) callconv(.C) [*c]u8 {
    var _n = arg__n;

    var _c = arg__c;

    var _i = arg__i;

    return _i64toa(_n, _c, _i);
}

pub fn ulltoa(arg__n: c_ulonglong, arg__c: [*c]u8, arg__i: c_int) callconv(.C) [*c]u8 {
    var _n = arg__n;

    var _c = arg__c;

    var _i = arg__i;

    return _ui64toa(_n, _c, _i);
}

pub fn lltow(arg__n: c_longlong, arg__w: [*c]wchar_t, arg__i: c_int) callconv(.C) [*c]wchar_t {
    var _n = arg__n;

    var _w = arg__w;

    var _i = arg__i;

    return _i64tow(_n, _w, _i);
}

pub fn ulltow(arg__n: c_ulonglong, arg__w: [*c]wchar_t, arg__i: c_int) callconv(.C) [*c]wchar_t {
    var _n = arg__n;

    var _w = arg__w;

    var _i = arg__i;

    return _ui64tow(_n, _w, _i);
}

pub extern fn bsearch_s(_Key: ?*const anyopaque, _Base: ?*const anyopaque, _NumOfElements: rsize_t, _SizeOfElements: rsize_t, _PtFuncCompare: ?fn (?*anyopaque, ?*const anyopaque, ?*const anyopaque) callconv(.C) c_int, _Context: ?*anyopaque) ?*anyopaque;

pub extern fn _dupenv_s(_PBuffer: [*c][*c]u8, _PBufferSizeInBytes: [*c]usize, _VarName: [*c]const u8) errno_t;

pub extern fn getenv_s(_ReturnSize: [*c]usize, _DstBuf: [*c]u8, _DstSize: rsize_t, _VarName: [*c]const u8) errno_t;

pub extern fn _itoa_s(_Value: c_int, _DstBuf: [*c]u8, _Size: usize, _Radix: c_int) errno_t;

pub extern fn _i64toa_s(_Val: c_longlong, _DstBuf: [*c]u8, _Size: usize, _Radix: c_int) errno_t;

pub extern fn _ui64toa_s(_Val: c_ulonglong, _DstBuf: [*c]u8, _Size: usize, _Radix: c_int) errno_t;

pub extern fn _ltoa_s(_Val: c_long, _DstBuf: [*c]u8, _Size: usize, _Radix: c_int) errno_t;

pub extern fn mbstowcs_s(_PtNumOfCharConverted: [*c]usize, _DstBuf: [*c]wchar_t, _SizeInWords: usize, _SrcBuf: [*c]const u8, _MaxCount: usize) errno_t;

pub extern fn _mbstowcs_s_l(_PtNumOfCharConverted: [*c]usize, _DstBuf: [*c]wchar_t, _SizeInWords: usize, _SrcBuf: [*c]const u8, _MaxCount: usize, _Locale: _locale_t) errno_t;

pub extern fn _ultoa_s(_Val: c_ulong, _DstBuf: [*c]u8, _Size: usize, _Radix: c_int) errno_t;

pub extern fn wctomb_s(_SizeConverted: [*c]c_int, _MbCh: [*c]u8, _SizeInBytes: rsize_t, _WCh: wchar_t) errno_t;

pub extern fn _wctomb_s_l(_SizeConverted: [*c]c_int, _MbCh: [*c]u8, _SizeInBytes: usize, _WCh: wchar_t, _Locale: _locale_t) errno_t;

pub extern fn wcstombs_s(_PtNumOfCharConverted: [*c]usize, _Dst: [*c]u8, _DstSizeInBytes: usize, _Src: [*c]const wchar_t, _MaxCountInBytes: usize) errno_t;

pub extern fn _wcstombs_s_l(_PtNumOfCharConverted: [*c]usize, _Dst: [*c]u8, _DstSizeInBytes: usize, _Src: [*c]const wchar_t, _MaxCountInBytes: usize, _Locale: _locale_t) errno_t;

pub extern fn _ecvt_s(_DstBuf: [*c]u8, _Size: usize, _Val: f64, _NumOfDights: c_int, _PtDec: [*c]c_int, _PtSign: [*c]c_int) errno_t;

pub extern fn _fcvt_s(_DstBuf: [*c]u8, _Size: usize, _Val: f64, _NumOfDec: c_int, _PtDec: [*c]c_int, _PtSign: [*c]c_int) errno_t;

pub extern fn _gcvt_s(_DstBuf: [*c]u8, _Size: usize, _Val: f64, _NumOfDigits: c_int) errno_t;

pub extern fn _makepath_s(_PathResult: [*c]u8, _Size: usize, _Drive: [*c]const u8, _Dir: [*c]const u8, _Filename: [*c]const u8, _Ext: [*c]const u8) errno_t;

pub extern fn _putenv_s(_Name: [*c]const u8, _Value: [*c]const u8) errno_t;

pub extern fn _searchenv_s(_Filename: [*c]const u8, _EnvVar: [*c]const u8, _ResultPath: [*c]u8, _SizeInBytes: usize) errno_t;

pub extern fn _splitpath_s(_FullPath: [*c]const u8, _Drive: [*c]u8, _DriveSize: usize, _Dir: [*c]u8, _DirSize: usize, _Filename: [*c]u8, _FilenameSize: usize, _Ext: [*c]u8, _ExtSize: usize) errno_t;

pub extern fn qsort_s(_Base: ?*anyopaque, _NumOfElements: usize, _SizeOfElements: usize, _PtFuncCompare: ?fn (?*anyopaque, ?*const anyopaque, ?*const anyopaque) callconv(.C) c_int, _Context: ?*anyopaque) void;

pub inline fn _mm_malloc(arg___size: usize, arg___align: usize) ?*anyopaque {
    var __size = arg___size;

    var __align = arg___align;

    if (__align == @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 1)))) {
        return malloc(__size);
    }

    if (!((__align & (__align -% @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 1))))) != 0) and (__align < @sizeOf(?*anyopaque))) {
        __align = @sizeOf(?*anyopaque);
    }

    var __mallocedMemory: ?*anyopaque = undefined;

    __mallocedMemory = __mingw_aligned_malloc(__size, __align);

    return __mallocedMemory;
}

pub inline fn _mm_free(arg___p: ?*anyopaque) void {
    var __p = arg___p;

    __mingw_aligned_free(__p);
}

pub extern fn _resetstkoflw() c_int;

pub extern fn _set_malloc_crt_max_wait(_NewValue: c_ulong) c_ulong;

pub extern fn _expand(_Memory: ?*anyopaque, _NewSize: usize) ?*anyopaque;

pub extern fn _msize(_Memory: ?*anyopaque) usize;

pub extern fn _get_sbh_threshold() usize;

pub extern fn _set_sbh_threshold(_NewValue: usize) c_int;

pub extern fn _set_amblksiz(_Value: usize) errno_t;

pub extern fn _get_amblksiz(_Value: [*c]usize) errno_t;

pub extern fn _heapadd(_Memory: ?*anyopaque, _Size: usize) c_int;

pub extern fn _heapchk() c_int;

pub extern fn _heapmin() c_int;

pub extern fn _heapset(_Fill: c_uint) c_int;

pub extern fn _heapwalk(_EntryInfo: [*c]_HEAPINFO) c_int;

pub extern fn _heapused(_Used: [*c]usize, _Commit: [*c]usize) usize;

pub extern fn _get_heap_handle() isize;

pub fn _MarkAllocaS(arg__Ptr: ?*anyopaque, arg__Marker: c_uint) callconv(.C) ?*anyopaque {
    var _Ptr = arg__Ptr;

    var _Marker = arg__Marker;

    if (_Ptr != null) {
        @ptrCast([*c]c_uint, @alignCast(@import("std").meta.alignment(c_uint), _Ptr)).* = _Marker;

        _Ptr = @ptrCast(?*anyopaque, @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), _Ptr)) + @bitCast(usize, @intCast(isize, @as(c_int, 16))));
    }

    return _Ptr;
}

pub fn _freea(arg__Memory: ?*anyopaque) callconv(.C) void {
    var _Memory = arg__Memory;

    var _Marker: c_uint = undefined;

    if (_Memory != null) {
        _Memory = @ptrCast(?*anyopaque, @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), _Memory)) - @bitCast(usize, @intCast(isize, @as(c_int, 16))));

        _Marker = @ptrCast([*c]c_uint, @alignCast(@import("std").meta.alignment(c_uint), _Memory)).*;

        if (_Marker == @bitCast(c_uint, @as(c_int, 56797))) {
            free(_Memory);
        }
    }
}

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

pub const struct_ecs_table_t = opaque {};

pub const ecs_table_t = struct_ecs_table_t;

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

pub const struct_ecs_table_range_t = extern struct {
    table: ?*ecs_table_t,

    offset: i32,

    count: i32,
};

pub const ecs_table_range_t = struct_ecs_table_range_t;

pub const struct_ecs_var_t = extern struct {
    range: ecs_table_range_t,

    entity: ecs_entity_t,
};

pub const ecs_var_t = struct_ecs_var_t;

pub const struct_ecs_table_record_t = opaque {};

pub const struct_ecs_record_t = extern struct {
    table: ?*ecs_table_t,

    row: u32,
};

pub const ecs_record_t = struct_ecs_record_t;

pub const struct_ecs_ref_t = extern struct {
    entity: ecs_entity_t,

    id: ecs_entity_t,

    tr: ?*struct_ecs_table_record_t,

    record: [*c]ecs_record_t,
};

pub const ecs_ref_t = struct_ecs_ref_t;

pub const struct_ecs_id_record_t = opaque {};

pub const ecs_id_record_t = struct_ecs_id_record_t;

pub const struct_ecs_table_cache_hdr_t = opaque {};

pub const struct_ecs_table_cache_iter_t = extern struct {
    cur: ?*struct_ecs_table_cache_hdr_t,

    next: ?*struct_ecs_table_cache_hdr_t,
};

pub const ecs_table_cache_iter_t = struct_ecs_table_cache_iter_t;

pub const struct_ecs_term_iter_t = extern struct {
    term: ecs_term_t,

    self_index: ?*ecs_id_record_t,

    set_index: ?*ecs_id_record_t,

    cur: ?*ecs_id_record_t,

    it: ecs_table_cache_iter_t,

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

pub const EcsIterEvalCondition: c_int = 0;

pub const EcsIterEvalTables: c_int = 1;

pub const EcsIterEvalChain: c_int = 2;

pub const EcsIterEvalNone: c_int = 3;

pub const enum_ecs_iter_kind_t = c_uint;

pub const ecs_iter_kind_t = enum_ecs_iter_kind_t;

pub const struct_ecs_filter_iter_t = extern struct {
    filter: ecs_filter_t,

    kind: ecs_iter_kind_t,

    term_iter: ecs_term_iter_t,

    matches_left: i32,

    pivot_term: i32,
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

    skip_count: i32,
};

pub const ecs_query_iter_t = struct_ecs_query_iter_t;

pub const struct_ecs_rule_t = opaque {};

pub const ecs_rule_t = struct_ecs_rule_t;

pub const struct_ecs_rule_op_ctx_t = opaque {};

pub const struct_ecs_rule_iter_t = extern struct {
    rule: ?*const ecs_rule_t,

    registers: [*c]struct_ecs_var_t,

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

const union_unnamed_2 = extern union {
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

    variables: [4]ecs_var_t,

    used: ecs_flags8_t,

    allocated: ecs_flags8_t,
};

pub const ecs_iter_cache_t = struct_ecs_iter_cache_t;

pub const struct_ecs_iter_private_t = extern struct {
    iter: union_unnamed_2,

    cache: ecs_iter_cache_t,
};

pub const ecs_iter_private_t = struct_ecs_iter_private_t;

pub const ecs_iter_next_action_t = ?fn ([*c]ecs_iter_t) callconv(.C) bool;

pub const ecs_iter_action_t = ?fn ([*c]ecs_iter_t) callconv(.C) void;

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

    variables: [*c]ecs_var_t,

    columns: [*c]i32,

    subjects: [*c]ecs_entity_t,

    match_indices: [*c]i32,

    references: [*c]ecs_ref_t,

    constrained_vars: ecs_flags64_t,

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

    flags: ecs_flags32_t,

    interrupted_by: ecs_entity_t,

    priv: ecs_iter_private_t,

    next: ecs_iter_next_action_t,

    callback: ecs_iter_action_t,

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

    flags: ecs_flags32_t,

    name: [*c]u8,

    variable_names: [1][*c]u8,

    iterable: ecs_iterable_t,
};

pub const ecs_ctx_free_t = ?fn (?*anyopaque) callconv(.C) void;

pub const struct_ecs_sparse_t = extern struct {
    dense: ?*ecs_vector_t,

    chunks: ?*ecs_vector_t,

    size: ecs_size_t,

    count: i32,

    max_id_local: u64,

    max_id: [*c]u64,
};

pub const ecs_sparse_t = struct_ecs_sparse_t;

pub const struct_ecs_observable_t = extern struct {
    events: [*c]ecs_sparse_t,
};

pub const ecs_observable_t = struct_ecs_observable_t;

pub const struct_ecs_trigger_t = extern struct {
    term: ecs_term_t,

    events: [8]ecs_entity_t,

    event_count: i32,

    callback: ecs_iter_action_t,

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

    callback: ecs_iter_action_t,

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

pub const ecs_type_info_t = struct_ecs_type_info_t;

pub const ecs_xtor_t = ?fn (?*anyopaque, i32, [*c]const ecs_type_info_t) callconv(.C) void;

pub const ecs_copy_t = ?fn (?*anyopaque, ?*const anyopaque, i32, [*c]const ecs_type_info_t) callconv(.C) void;

pub const ecs_move_t = ?fn (?*anyopaque, ?*anyopaque, i32, [*c]const ecs_type_info_t) callconv(.C) void;

pub const struct_EcsComponentLifecycle = extern struct {
    ctor: ecs_xtor_t,

    dtor: ecs_xtor_t,

    copy: ecs_copy_t,

    move: ecs_move_t,

    copy_ctor: ecs_copy_t,

    move_ctor: ecs_move_t,

    ctor_move_dtor: ecs_move_t,

    move_dtor: ecs_move_t,

    on_add: ecs_iter_action_t,

    on_set: ecs_iter_action_t,

    on_remove: ecs_iter_action_t,

    ctx: ?*anyopaque,
};

pub const EcsComponentLifecycle = struct_EcsComponentLifecycle;

pub const struct_ecs_type_info_t = extern struct {
    size: ecs_size_t,

    alignment: ecs_size_t,

    lifecycle: EcsComponentLifecycle,

    component: ecs_entity_t,

    lifecycle_set: bool,
};

pub const ecs_order_by_action_t = ?fn (ecs_entity_t, ?*const anyopaque, ecs_entity_t, ?*const anyopaque) callconv(.C) c_int;

pub const ecs_group_by_action_t = ?fn (?*ecs_world_t, ?*ecs_table_t, ecs_id_t, ?*anyopaque) callconv(.C) u64;

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

pub const struct_ecs_ids_t = extern struct {
    array: [*c]ecs_id_t,

    count: i32,

    size: i32,
};

pub const ecs_ids_t = struct_ecs_ids_t;

pub const struct_ecs_sparse_iter_t = extern struct {
    sparse: [*c]ecs_sparse_t,

    ids: [*c]const u64,

    size: ecs_size_t,

    i: i32,

    count: i32,
};

pub const ecs_sparse_iter_t = struct_ecs_sparse_iter_t;

pub extern fn ecs_module_path_from_c(c_name: [*c]const u8) [*c]u8;

pub extern fn ecs_component_has_actions(world: ?*const ecs_world_t, component: ecs_entity_t) bool;

pub extern fn ecs_identifier_is_0(id: [*c]const u8) bool;

pub extern fn ecs_identifier_is_var(id: [*c]const u8) [*c]const u8;

pub extern fn ecs_default_ctor(ptr: ?*anyopaque, count: i32, ctx: [*c]const ecs_type_info_t) void;

pub extern fn _flecs_sparse_init(sparse: [*c]ecs_sparse_t, elem_size: ecs_size_t) void;

pub extern fn _flecs_sparse_new(elem_size: ecs_size_t) [*c]ecs_sparse_t;

pub extern fn _flecs_sparse_fini(sparse: [*c]ecs_sparse_t) void;

pub extern fn flecs_sparse_free(sparse: [*c]ecs_sparse_t) void;

pub extern fn flecs_sparse_clear(sparse: [*c]ecs_sparse_t) void;

pub extern fn flecs_sparse_set_id_source(sparse: [*c]ecs_sparse_t, id_source: [*c]u64) void;

pub extern fn _flecs_sparse_add(sparse: [*c]ecs_sparse_t, elem_size: ecs_size_t) ?*anyopaque;

pub extern fn flecs_sparse_last_id(sparse: [*c]const ecs_sparse_t) u64;

pub extern fn flecs_sparse_new_id(sparse: [*c]ecs_sparse_t) u64;

pub extern fn flecs_sparse_new_ids(sparse: [*c]ecs_sparse_t, count: i32) [*c]const u64;

pub extern fn flecs_sparse_remove(sparse: [*c]ecs_sparse_t, id: u64) void;

pub extern fn _flecs_sparse_remove_get(sparse: [*c]ecs_sparse_t, elem_size: ecs_size_t, id: u64) ?*anyopaque;

pub extern fn flecs_sparse_exists(sparse: [*c]const ecs_sparse_t, id: u64) bool;

pub extern fn flecs_sparse_is_alive(sparse: [*c]const ecs_sparse_t, id: u64) bool;

pub extern fn flecs_sparse_get_alive(sparse: [*c]const ecs_sparse_t, id: u64) u64;

pub extern fn _flecs_sparse_get_dense(sparse: [*c]const ecs_sparse_t, elem_size: ecs_size_t, index: i32) ?*anyopaque;

pub extern fn flecs_sparse_count(sparse: [*c]const ecs_sparse_t) i32;

pub extern fn flecs_sparse_not_alive_count(sparse: [*c]const ecs_sparse_t) i32;

pub extern fn flecs_sparse_size(sparse: [*c]const ecs_sparse_t) i32;

pub extern fn _flecs_sparse_get(sparse: [*c]const ecs_sparse_t, elem_size: ecs_size_t, id: u64) ?*anyopaque;

pub extern fn _flecs_sparse_get_any(sparse: [*c]const ecs_sparse_t, elem_size: ecs_size_t, id: u64) ?*anyopaque;

pub extern fn _flecs_sparse_ensure(sparse: [*c]ecs_sparse_t, elem_size: ecs_size_t, id: u64) ?*anyopaque;

pub extern fn _flecs_sparse_set(sparse: [*c]ecs_sparse_t, elem_size: ecs_size_t, id: u64, value: ?*anyopaque) ?*anyopaque;

pub extern fn flecs_sparse_ids(sparse: [*c]const ecs_sparse_t) [*c]const u64;

pub extern fn flecs_sparse_set_size(sparse: [*c]ecs_sparse_t, elem_count: i32) void;

pub extern fn flecs_sparse_copy(src: [*c]const ecs_sparse_t) [*c]ecs_sparse_t;

pub extern fn flecs_sparse_restore(dst: [*c]ecs_sparse_t, src: [*c]const ecs_sparse_t) void;

pub extern fn flecs_sparse_memory(sparse: [*c]ecs_sparse_t, allocd: [*c]i32, used: [*c]i32) void;

pub extern fn _flecs_sparse_iter(sparse: [*c]ecs_sparse_t, elem_size: ecs_size_t) ecs_sparse_iter_t;

pub extern fn _ecs_sparse_new(elem_size: ecs_size_t) [*c]ecs_sparse_t;

pub extern fn _ecs_sparse_add(sparse: [*c]ecs_sparse_t, elem_size: ecs_size_t) ?*anyopaque;

pub extern fn ecs_sparse_last_id(sparse: [*c]const ecs_sparse_t) u64;

pub extern fn ecs_sparse_count(sparse: [*c]const ecs_sparse_t) i32;

pub extern fn flecs_sparse_set_generation(sparse: [*c]ecs_sparse_t, id: u64) void;

pub extern fn _ecs_sparse_get_dense(sparse: [*c]const ecs_sparse_t, elem_size: ecs_size_t, index: i32) ?*anyopaque;

pub extern fn _ecs_sparse_get(sparse: [*c]const ecs_sparse_t, elem_size: ecs_size_t, id: u64) ?*anyopaque;

pub const ecs_hm_bucket_t = extern struct {
    keys: ?*ecs_vector_t,

    values: ?*ecs_vector_t,
};

pub const ecs_hashmap_t = extern struct {
    hash: ecs_hash_value_action_t,

    compare: ecs_compare_action_t,

    key_size: ecs_size_t,

    value_size: ecs_size_t,

    impl: ecs_map_t,
};

pub const flecs_hashmap_iter_t = extern struct {
    it: ecs_map_iter_t,

    bucket: [*c]ecs_hm_bucket_t,

    index: i32,
};

pub const flecs_hashmap_result_t = extern struct {
    key: ?*anyopaque,

    value: ?*anyopaque,

    hash: u64,
};

pub extern fn _flecs_hashmap_init(hm: [*c]ecs_hashmap_t, key_size: ecs_size_t, value_size: ecs_size_t, hash: ecs_hash_value_action_t, compare: ecs_compare_action_t) void;

pub extern fn flecs_hashmap_fini(map: [*c]ecs_hashmap_t) void;

pub extern fn _flecs_hashmap_get(map: [*c]const ecs_hashmap_t, key_size: ecs_size_t, key: ?*const anyopaque, value_size: ecs_size_t) ?*anyopaque;

pub extern fn _flecs_hashmap_ensure(map: [*c]ecs_hashmap_t, key_size: ecs_size_t, key: ?*const anyopaque, value_size: ecs_size_t) flecs_hashmap_result_t;

pub extern fn _flecs_hashmap_set(map: [*c]ecs_hashmap_t, key_size: ecs_size_t, key: ?*anyopaque, value_size: ecs_size_t, value: ?*const anyopaque) void;

pub extern fn _flecs_hashmap_remove(map: [*c]ecs_hashmap_t, key_size: ecs_size_t, key: ?*const anyopaque, value_size: ecs_size_t) void;

pub extern fn _flecs_hashmap_remove_w_hash(map: [*c]ecs_hashmap_t, key_size: ecs_size_t, key: ?*const anyopaque, value_size: ecs_size_t, hash: u64) void;

pub extern fn flecs_hashmap_get_bucket(map: [*c]const ecs_hashmap_t, hash: u64) [*c]ecs_hm_bucket_t;

pub extern fn flecs_hm_bucket_remove(map: [*c]ecs_hashmap_t, bucket: [*c]ecs_hm_bucket_t, hash: u64, index: i32) void;

pub extern fn flecs_hashmap_copy(src: [*c]const ecs_hashmap_t, dst: [*c]ecs_hashmap_t) void;

pub extern fn flecs_hashmap_iter(map: [*c]ecs_hashmap_t) flecs_hashmap_iter_t;

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

    index_hash: u64,

    index: [*c]ecs_hashmap_t,
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

    id_create_total: i32,

    id_delete_total: i32,

    table_create_total: i32,

    table_delete_total: i32,

    pipeline_build_count_total: i32,

    systems_ran_frame: i32,

    id_count: i32,

    tag_id_count: i32,

    component_id_count: i32,

    pair_id_count: i32,

    wildcard_id_count: i32,

    table_count: i32,

    tag_table_count: i32,

    trivial_table_count: i32,

    empty_table_count: i32,

    table_record_count: i32,

    table_storage_count: i32,
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

pub extern const EcsVariable: ecs_entity_t;

pub extern const EcsTransitive: ecs_entity_t;

pub extern const EcsReflexive: ecs_entity_t;

pub extern const EcsFinal: ecs_entity_t;

pub extern const EcsDontInherit: ecs_entity_t;

pub extern const EcsSymmetric: ecs_entity_t;

pub extern const EcsExclusive: ecs_entity_t;

pub extern const EcsAcyclic: ecs_entity_t;

pub extern const EcsWith: ecs_entity_t;

pub extern const EcsOneOf: ecs_entity_t;

pub extern const EcsTag: ecs_entity_t;

pub extern const EcsName: ecs_entity_t;

pub extern const EcsSymbol: ecs_entity_t;

pub extern const EcsAlias: ecs_entity_t;

pub extern const EcsChildOf: ecs_entity_t;

pub extern const EcsIsA: ecs_entity_t;

pub extern const EcsModule: ecs_entity_t;

pub extern const EcsPrivate: ecs_entity_t;

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

pub extern fn ecs_set_component_actions_w_id(world: ?*ecs_world_t, id: ecs_id_t, actions: [*c]const EcsComponentLifecycle) void;

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

pub extern fn ecs_delete_empty_tables(world: ?*ecs_world_t, id: ecs_id_t, clear_generation: u16, delete_generation: u16, min_id_count: i32, time_budget_seconds: f64) i32;

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

pub extern fn ecs_ref_init_id(world: ?*const ecs_world_t, entity: ecs_entity_t, id: ecs_id_t) ecs_ref_t;

pub extern fn ecs_ref_get_id(world: ?*const ecs_world_t, ref: [*c]ecs_ref_t, id: ecs_id_t) ?*const anyopaque;

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

pub extern fn ecs_get_type_info(world: ?*const ecs_world_t, id: ecs_id_t) [*c]const ecs_type_info_t;

pub extern fn ecs_get_typeid(world: ?*const ecs_world_t, id: ecs_id_t) ecs_entity_t;

pub extern fn ecs_id_is_tag(world: ?*const ecs_world_t, id: ecs_id_t) ecs_entity_t;

pub extern fn ecs_id_in_use(world: ?*ecs_world_t, id: ecs_id_t) bool;

pub extern fn ecs_get_name(world: ?*const ecs_world_t, entity: ecs_entity_t) [*c]const u8;

pub extern fn ecs_get_symbol(world: ?*const ecs_world_t, entity: ecs_entity_t) [*c]const u8;

pub extern fn ecs_set_name(world: ?*ecs_world_t, entity: ecs_entity_t, name: [*c]const u8) ecs_entity_t;

pub extern fn ecs_set_symbol(world: ?*ecs_world_t, entity: ecs_entity_t, symbol: [*c]const u8) ecs_entity_t;

pub extern fn ecs_set_alias(world: ?*ecs_world_t, entity: ecs_entity_t, alias: [*c]const u8) void;

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

pub extern fn ecs_id_is_valid(world: ?*const ecs_world_t, id: ecs_id_t) bool;

pub extern fn ecs_filter_init(world: ?*const ecs_world_t, filter_out: [*c]ecs_filter_t, desc: [*c]const ecs_filter_desc_t) c_int;

pub extern fn ecs_filter_fini(filter: [*c]ecs_filter_t) void;

pub extern fn ecs_filter_finalize(world: ?*const ecs_world_t, filter: [*c]ecs_filter_t) c_int;

pub extern fn ecs_filter_find_this_var(filter: [*c]const ecs_filter_t) i32;

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

pub extern fn ecs_observer_default_run_action(it: [*c]ecs_iter_t) bool;

pub extern fn ecs_get_observer_ctx(world: ?*const ecs_world_t, observer: ecs_entity_t) ?*anyopaque;

pub extern fn ecs_get_observer_binding_ctx(world: ?*const ecs_world_t, observer: ecs_entity_t) ?*anyopaque;

pub extern fn ecs_iter_poly(world: ?*const ecs_world_t, poly: ?*const ecs_poly_t, iter: [*c]ecs_iter_t, filter: [*c]ecs_term_t) void;

pub extern fn ecs_iter_next(it: [*c]ecs_iter_t) bool;

pub extern fn ecs_iter_fini(it: [*c]ecs_iter_t) void;

pub extern fn ecs_iter_count(it: [*c]ecs_iter_t) bool;

pub extern fn ecs_iter_is_true(it: [*c]ecs_iter_t) bool;

pub extern fn ecs_iter_set_var(it: [*c]ecs_iter_t, var_id: i32, entity: ecs_entity_t) void;

pub extern fn ecs_iter_set_var_as_table(it: [*c]ecs_iter_t, var_id: i32, table: ?*const ecs_table_t) void;

pub extern fn ecs_iter_set_var_as_range(it: [*c]ecs_iter_t, var_id: i32, range: [*c]const ecs_table_range_t) void;

pub extern fn ecs_iter_get_var(it: [*c]ecs_iter_t, var_id: i32) ecs_entity_t;

pub extern fn ecs_iter_get_var_as_table(it: [*c]ecs_iter_t, var_id: i32) ?*ecs_table_t;

pub extern fn ecs_iter_get_var_as_range(it: [*c]ecs_iter_t, var_id: i32) ecs_table_range_t;

pub extern fn ecs_iter_var_is_constrained(it: [*c]ecs_iter_t, var_id: i32) bool;

pub extern fn ecs_page_iter(it: [*c]const ecs_iter_t, offset: i32, limit: i32) ecs_iter_t;

pub extern fn ecs_page_next(it: [*c]ecs_iter_t) bool;

pub extern fn ecs_worker_iter(it: [*c]const ecs_iter_t, index: i32, count: i32) ecs_iter_t;

pub extern fn ecs_worker_next(it: [*c]ecs_iter_t) bool;

pub extern fn ecs_term_w_size(it: [*c]const ecs_iter_t, size: usize, index: i32) ?*anyopaque;

pub extern fn ecs_term_is_readonly(it: [*c]const ecs_iter_t, index: i32) bool;

pub extern fn ecs_term_is_writeonly(it: [*c]const ecs_iter_t, index: i32) bool;

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

pub extern fn ecs_search_relation(world: ?*const ecs_world_t, table: ?*const ecs_table_t, offset: i32, id: ecs_id_t, rel: ecs_entity_t, min_depth: i32, max_depth: i32, subject_out: [*c]ecs_entity_t, id_out: [*c]ecs_id_t, depth_out: [*c]i32, tr_out: [*c]?*struct_ecs_table_record_t) i32;

pub extern fn ecs_search_relation_last(world: ?*const ecs_world_t, table: ?*const ecs_table_t, offset: i32, id: ecs_id_t, rel: ecs_entity_t, min_depth: i32, max_depth: i32, subject_out: [*c]ecs_entity_t, id_out: [*c]ecs_id_t, depth_out: [*c]i32, tr_out: [*c]?*struct_ecs_table_record_t) i32;

pub extern fn ecs_table_get_type(table: ?*const ecs_table_t) ecs_type_t;

pub extern fn ecs_table_get_storage_table(table: ?*const ecs_table_t) ?*ecs_table_t;

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

pub extern fn _ecs_deprecated(file: [*c]const u8, line: i32, msg: [*c]const u8) void;

pub extern fn _ecs_log_push(level: i32) void;

pub extern fn _ecs_log_pop(level: i32) void;

pub extern fn ecs_should_log(level: i32) bool;

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

    run: ecs_run_action_t,

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

    serialize_meta_ids: bool,

    serialize_label: bool,

    serialize_brief: bool,

    serialize_link: bool,

    serialize_id_labels: bool,

    serialize_base: bool,

    serialize_private: bool,

    serialize_hidden: bool,

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

pub extern var EcsUnitPrefixes: ecs_entity_t;

pub extern var FLECS__EEcsUnitPrefixes: ecs_entity_t;

pub extern var EcsYocto: ecs_entity_t;

pub extern var FLECS__EEcsYocto: ecs_entity_t;

pub extern var EcsZepto: ecs_entity_t;

pub extern var FLECS__EEcsZepto: ecs_entity_t;

pub extern var EcsAtto: ecs_entity_t;

pub extern var FLECS__EEcsAtto: ecs_entity_t;

pub extern var EcsFemto: ecs_entity_t;

pub extern var FLECS__EEcsFemto: ecs_entity_t;

pub extern var EcsPico: ecs_entity_t;

pub extern var FLECS__EEcsPico: ecs_entity_t;

pub extern var EcsNano: ecs_entity_t;

pub extern var FLECS__EEcsNano: ecs_entity_t;

pub extern var EcsMicro: ecs_entity_t;

pub extern var FLECS__EEcsMicro: ecs_entity_t;

pub extern var EcsMilli: ecs_entity_t;

pub extern var FLECS__EEcsMilli: ecs_entity_t;

pub extern var EcsCenti: ecs_entity_t;

pub extern var FLECS__EEcsCenti: ecs_entity_t;

pub extern var EcsDeci: ecs_entity_t;

pub extern var FLECS__EEcsDeci: ecs_entity_t;

pub extern var EcsDeca: ecs_entity_t;

pub extern var FLECS__EEcsDeca: ecs_entity_t;

pub extern var EcsHecto: ecs_entity_t;

pub extern var FLECS__EEcsHecto: ecs_entity_t;

pub extern var EcsKilo: ecs_entity_t;

pub extern var FLECS__EEcsKilo: ecs_entity_t;

pub extern var EcsMega: ecs_entity_t;

pub extern var FLECS__EEcsMega: ecs_entity_t;

pub extern var EcsGiga: ecs_entity_t;

pub extern var FLECS__EEcsGiga: ecs_entity_t;

pub extern var EcsTera: ecs_entity_t;

pub extern var FLECS__EEcsTera: ecs_entity_t;

pub extern var EcsPeta: ecs_entity_t;

pub extern var FLECS__EEcsPeta: ecs_entity_t;

pub extern var EcsExa: ecs_entity_t;

pub extern var FLECS__EEcsExa: ecs_entity_t;

pub extern var EcsZetta: ecs_entity_t;

pub extern var FLECS__EEcsZetta: ecs_entity_t;

pub extern var EcsYotta: ecs_entity_t;

pub extern var FLECS__EEcsYotta: ecs_entity_t;

pub extern var EcsKibi: ecs_entity_t;

pub extern var FLECS__EEcsKibi: ecs_entity_t;

pub extern var EcsMebi: ecs_entity_t;

pub extern var FLECS__EEcsMebi: ecs_entity_t;

pub extern var EcsGibi: ecs_entity_t;

pub extern var FLECS__EEcsGibi: ecs_entity_t;

pub extern var EcsTebi: ecs_entity_t;

pub extern var FLECS__EEcsTebi: ecs_entity_t;

pub extern var EcsPebi: ecs_entity_t;

pub extern var FLECS__EEcsPebi: ecs_entity_t;

pub extern var EcsExbi: ecs_entity_t;

pub extern var FLECS__EEcsExbi: ecs_entity_t;

pub extern var EcsZebi: ecs_entity_t;

pub extern var FLECS__EEcsZebi: ecs_entity_t;

pub extern var EcsYobi: ecs_entity_t;

pub extern var FLECS__EEcsYobi: ecs_entity_t;

pub extern var EcsDuration: ecs_entity_t;

pub extern var FLECS__EEcsDuration: ecs_entity_t;

pub extern var EcsPicoSeconds: ecs_entity_t;

pub extern var FLECS__EEcsPicoSeconds: ecs_entity_t;

pub extern var EcsNanoSeconds: ecs_entity_t;

pub extern var FLECS__EEcsNanoSeconds: ecs_entity_t;

pub extern var EcsMicroSeconds: ecs_entity_t;

pub extern var FLECS__EEcsMicroSeconds: ecs_entity_t;

pub extern var EcsMilliSeconds: ecs_entity_t;

pub extern var FLECS__EEcsMilliSeconds: ecs_entity_t;

pub extern var EcsSeconds: ecs_entity_t;

pub extern var FLECS__EEcsSeconds: ecs_entity_t;

pub extern var EcsMinutes: ecs_entity_t;

pub extern var FLECS__EEcsMinutes: ecs_entity_t;

pub extern var EcsHours: ecs_entity_t;

pub extern var FLECS__EEcsHours: ecs_entity_t;

pub extern var EcsDays: ecs_entity_t;

pub extern var FLECS__EEcsDays: ecs_entity_t;

pub extern var EcsTime: ecs_entity_t;

pub extern var FLECS__EEcsTime: ecs_entity_t;

pub extern var EcsDate: ecs_entity_t;

pub extern var FLECS__EEcsDate: ecs_entity_t;

pub extern var EcsMass: ecs_entity_t;

pub extern var FLECS__EEcsMass: ecs_entity_t;

pub extern var EcsGrams: ecs_entity_t;

pub extern var FLECS__EEcsGrams: ecs_entity_t;

pub extern var EcsKiloGrams: ecs_entity_t;

pub extern var FLECS__EEcsKiloGrams: ecs_entity_t;

pub extern var EcsElectricCurrent: ecs_entity_t;

pub extern var FLECS__EEcsElectricCurrent: ecs_entity_t;

pub extern var EcsAmpere: ecs_entity_t;

pub extern var FLECS__EEcsAmpere: ecs_entity_t;

pub extern var EcsAmount: ecs_entity_t;

pub extern var FLECS__EEcsAmount: ecs_entity_t;

pub extern var EcsMole: ecs_entity_t;

pub extern var FLECS__EEcsMole: ecs_entity_t;

pub extern var EcsLuminousIntensity: ecs_entity_t;

pub extern var FLECS__EEcsLuminousIntensity: ecs_entity_t;

pub extern var EcsCandela: ecs_entity_t;

pub extern var FLECS__EEcsCandela: ecs_entity_t;

pub extern var EcsForce: ecs_entity_t;

pub extern var FLECS__EEcsForce: ecs_entity_t;

pub extern var EcsNewton: ecs_entity_t;

pub extern var FLECS__EEcsNewton: ecs_entity_t;

pub extern var EcsLength: ecs_entity_t;

pub extern var FLECS__EEcsLength: ecs_entity_t;

pub extern var EcsMeters: ecs_entity_t;

pub extern var FLECS__EEcsMeters: ecs_entity_t;

pub extern var EcsPicoMeters: ecs_entity_t;

pub extern var FLECS__EEcsPicoMeters: ecs_entity_t;

pub extern var EcsNanoMeters: ecs_entity_t;

pub extern var FLECS__EEcsNanoMeters: ecs_entity_t;

pub extern var EcsMicroMeters: ecs_entity_t;

pub extern var FLECS__EEcsMicroMeters: ecs_entity_t;

pub extern var EcsMilliMeters: ecs_entity_t;

pub extern var FLECS__EEcsMilliMeters: ecs_entity_t;

pub extern var EcsCentiMeters: ecs_entity_t;

pub extern var FLECS__EEcsCentiMeters: ecs_entity_t;

pub extern var EcsKiloMeters: ecs_entity_t;

pub extern var FLECS__EEcsKiloMeters: ecs_entity_t;

pub extern var EcsMiles: ecs_entity_t;

pub extern var FLECS__EEcsMiles: ecs_entity_t;

pub extern var EcsPressure: ecs_entity_t;

pub extern var FLECS__EEcsPressure: ecs_entity_t;

pub extern var EcsPascal: ecs_entity_t;

pub extern var FLECS__EEcsPascal: ecs_entity_t;

pub extern var EcsBar: ecs_entity_t;

pub extern var FLECS__EEcsBar: ecs_entity_t;

pub extern var EcsSpeed: ecs_entity_t;

pub extern var FLECS__EEcsSpeed: ecs_entity_t;

pub extern var EcsMetersPerSecond: ecs_entity_t;

pub extern var FLECS__EEcsMetersPerSecond: ecs_entity_t;

pub extern var EcsKiloMetersPerSecond: ecs_entity_t;

pub extern var FLECS__EEcsKiloMetersPerSecond: ecs_entity_t;

pub extern var EcsKiloMetersPerHour: ecs_entity_t;

pub extern var FLECS__EEcsKiloMetersPerHour: ecs_entity_t;

pub extern var EcsMilesPerHour: ecs_entity_t;

pub extern var FLECS__EEcsMilesPerHour: ecs_entity_t;

pub extern var EcsTemperature: ecs_entity_t;

pub extern var FLECS__EEcsTemperature: ecs_entity_t;

pub extern var EcsKelvin: ecs_entity_t;

pub extern var FLECS__EEcsKelvin: ecs_entity_t;

pub extern var EcsCelsius: ecs_entity_t;

pub extern var FLECS__EEcsCelsius: ecs_entity_t;

pub extern var EcsFahrenheit: ecs_entity_t;

pub extern var FLECS__EEcsFahrenheit: ecs_entity_t;

pub extern var EcsAcceleration: ecs_entity_t;

pub extern var FLECS__EEcsAcceleration: ecs_entity_t;

pub extern var EcsData: ecs_entity_t;

pub extern var FLECS__EEcsData: ecs_entity_t;

pub extern var EcsBits: ecs_entity_t;

pub extern var FLECS__EEcsBits: ecs_entity_t;

pub extern var EcsKiloBits: ecs_entity_t;

pub extern var FLECS__EEcsKiloBits: ecs_entity_t;

pub extern var EcsMegaBits: ecs_entity_t;

pub extern var FLECS__EEcsMegaBits: ecs_entity_t;

pub extern var EcsGigaBits: ecs_entity_t;

pub extern var FLECS__EEcsGigaBits: ecs_entity_t;

pub extern var EcsBytes: ecs_entity_t;

pub extern var FLECS__EEcsBytes: ecs_entity_t;

pub extern var EcsKiloBytes: ecs_entity_t;

pub extern var FLECS__EEcsKiloBytes: ecs_entity_t;

pub extern var EcsMegaBytes: ecs_entity_t;

pub extern var FLECS__EEcsMegaBytes: ecs_entity_t;

pub extern var EcsGigaBytes: ecs_entity_t;

pub extern var FLECS__EEcsGigaBytes: ecs_entity_t;

pub extern var EcsKibiBytes: ecs_entity_t;

pub extern var FLECS__EEcsKibiBytes: ecs_entity_t;

pub extern var EcsMebiBytes: ecs_entity_t;

pub extern var FLECS__EEcsMebiBytes: ecs_entity_t;

pub extern var EcsGibiBytes: ecs_entity_t;

pub extern var FLECS__EEcsGibiBytes: ecs_entity_t;

pub extern var EcsDataRate: ecs_entity_t;

pub extern var FLECS__EEcsDataRate: ecs_entity_t;

pub extern var EcsBitsPerSecond: ecs_entity_t;

pub extern var FLECS__EEcsBitsPerSecond: ecs_entity_t;

pub extern var EcsKiloBitsPerSecond: ecs_entity_t;

pub extern var FLECS__EEcsKiloBitsPerSecond: ecs_entity_t;

pub extern var EcsMegaBitsPerSecond: ecs_entity_t;

pub extern var FLECS__EEcsMegaBitsPerSecond: ecs_entity_t;

pub extern var EcsGigaBitsPerSecond: ecs_entity_t;

pub extern var FLECS__EEcsGigaBitsPerSecond: ecs_entity_t;

pub extern var EcsBytesPerSecond: ecs_entity_t;

pub extern var FLECS__EEcsBytesPerSecond: ecs_entity_t;

pub extern var EcsKiloBytesPerSecond: ecs_entity_t;

pub extern var FLECS__EEcsKiloBytesPerSecond: ecs_entity_t;

pub extern var EcsMegaBytesPerSecond: ecs_entity_t;

pub extern var FLECS__EEcsMegaBytesPerSecond: ecs_entity_t;

pub extern var EcsGigaBytesPerSecond: ecs_entity_t;

pub extern var FLECS__EEcsGigaBytesPerSecond: ecs_entity_t;

pub extern var EcsPercentage: ecs_entity_t;

pub extern var FLECS__EEcsPercentage: ecs_entity_t;

pub extern var EcsAngle: ecs_entity_t;

pub extern var FLECS__EEcsAngle: ecs_entity_t;

pub extern var EcsRadians: ecs_entity_t;

pub extern var FLECS__EEcsRadians: ecs_entity_t;

pub extern var EcsDegrees: ecs_entity_t;

pub extern var FLECS__EEcsDegrees: ecs_entity_t;

pub extern var EcsBel: ecs_entity_t;

pub extern var FLECS__EEcsBel: ecs_entity_t;

pub extern var EcsDeciBel: ecs_entity_t;

pub extern var FLECS__EEcsDeciBel: ecs_entity_t;

pub extern fn FlecsUnitsImport(world: ?*ecs_world_t) void;

pub const max_align_t = extern struct {
    __clang_max_align_nonce1: c_longlong align(8),

    __clang_max_align_nonce2: c_longdouble align(16),
};

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

pub extern const FLECS__EEcsUnit: ecs_entity_t;

pub extern const FLECS__EEcsUnitPrefix: ecs_entity_t;

pub extern const EcsConstant: ecs_entity_t;

pub extern const EcsQuantity: ecs_entity_t;

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

    existing: bool,

    partial: bool,

    size: ecs_size_t,

    alignment: ecs_size_t,
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

    unit: ecs_entity_t,

    offset: i32,
};

pub const EcsMember = struct_EcsMember;

pub const struct_ecs_member_t = extern struct {
    name: [*c]const u8,

    type: ecs_entity_t,

    count: i32,

    offset: i32,

    unit: ecs_entity_t,

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
    constants: [*c]ecs_map_t,
};

pub const EcsEnum = struct_EcsEnum;

pub const struct_ecs_bitmask_constant_t = extern struct {
    name: [*c]const u8,

    value: ecs_flags32_t,

    constant: ecs_entity_t,
};

pub const ecs_bitmask_constant_t = struct_ecs_bitmask_constant_t;

pub const struct_EcsBitmask = extern struct {
    constants: [*c]ecs_map_t,
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

pub const struct_ecs_unit_translation_t = extern struct {
    factor: i32,

    power: i32,
};

pub const ecs_unit_translation_t = struct_ecs_unit_translation_t;

pub const struct_EcsUnit = extern struct {
    symbol: [*c]u8,

    prefix: ecs_entity_t,

    base: ecs_entity_t,

    over: ecs_entity_t,

    translation: ecs_unit_translation_t,
};

pub const EcsUnit = struct_EcsUnit;

pub const struct_EcsUnitPrefix = extern struct {
    symbol: [*c]u8,

    translation: ecs_unit_translation_t,
};

pub const EcsUnitPrefix = struct_EcsUnitPrefix;

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

    unit: ecs_entity_t,

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

pub extern fn ecs_meta_is_collection(cursor: [*c]const ecs_meta_cursor_t) bool;

pub extern fn ecs_meta_get_type(cursor: [*c]const ecs_meta_cursor_t) ecs_entity_t;

pub extern fn ecs_meta_get_unit(cursor: [*c]const ecs_meta_cursor_t) ecs_entity_t;

pub extern fn ecs_meta_get_member(cursor: [*c]const ecs_meta_cursor_t) [*c]const u8;

pub extern fn ecs_meta_set_bool(cursor: [*c]ecs_meta_cursor_t, value: bool) c_int;

pub extern fn ecs_meta_set_char(cursor: [*c]ecs_meta_cursor_t, value: u8) c_int;

pub extern fn ecs_meta_set_int(cursor: [*c]ecs_meta_cursor_t, value: i64) c_int;

pub extern fn ecs_meta_set_uint(cursor: [*c]ecs_meta_cursor_t, value: u64) c_int;

pub extern fn ecs_meta_set_float(cursor: [*c]ecs_meta_cursor_t, value: f64) c_int;

pub extern fn ecs_meta_set_string(cursor: [*c]ecs_meta_cursor_t, value: [*c]const u8) c_int;

pub extern fn ecs_meta_set_string_literal(cursor: [*c]ecs_meta_cursor_t, value: [*c]const u8) c_int;

pub extern fn ecs_meta_set_entity(cursor: [*c]ecs_meta_cursor_t, value: ecs_entity_t) c_int;

pub extern fn ecs_meta_set_null(cursor: [*c]ecs_meta_cursor_t) c_int;

pub extern fn ecs_meta_get_bool(cursor: [*c]const ecs_meta_cursor_t) bool;

pub extern fn ecs_meta_get_char(cursor: [*c]const ecs_meta_cursor_t) u8;

pub extern fn ecs_meta_get_int(cursor: [*c]const ecs_meta_cursor_t) i64;

pub extern fn ecs_meta_get_uint(cursor: [*c]const ecs_meta_cursor_t) u64;

pub extern fn ecs_meta_get_float(cursor: [*c]const ecs_meta_cursor_t) f64;

pub extern fn ecs_meta_get_string(cursor: [*c]const ecs_meta_cursor_t) [*c]const u8;

pub extern fn ecs_meta_get_entity(cursor: [*c]const ecs_meta_cursor_t) ecs_entity_t;

pub const struct_ecs_primitive_desc_t = extern struct {
    entity: ecs_entity_desc_t,

    kind: ecs_primitive_kind_t,
};

pub const ecs_primitive_desc_t = struct_ecs_primitive_desc_t;

pub extern fn ecs_primitive_init(world: ?*ecs_world_t, desc: [*c]const ecs_primitive_desc_t) ecs_entity_t;

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

pub const struct_ecs_unit_desc_t = extern struct {
    entity: ecs_entity_desc_t,

    symbol: [*c]const u8,

    quantity: ecs_entity_t,

    base: ecs_entity_t,

    over: ecs_entity_t,

    translation: ecs_unit_translation_t,

    prefix: ecs_entity_t,
};

pub const ecs_unit_desc_t = struct_ecs_unit_desc_t;

pub extern fn ecs_unit_init(world: ?*ecs_world_t, desc: [*c]const ecs_unit_desc_t) ecs_entity_t;

pub const struct_ecs_unit_prefix_desc_t = extern struct {
    entity: ecs_entity_desc_t,

    symbol: [*c]const u8,

    translation: ecs_unit_translation_t,
};

pub const ecs_unit_prefix_desc_t = struct_ecs_unit_prefix_desc_t;

pub extern fn ecs_unit_prefix_init(world: ?*ecs_world_t, desc: [*c]const ecs_unit_prefix_desc_t) ecs_entity_t;

pub extern fn ecs_quantity_init(world: ?*ecs_world_t, desc: [*c]const ecs_entity_desc_t) ecs_entity_t;

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

    entity_not_alive_count: ecs_gauge_t,

    id_count: ecs_gauge_t,

    tag_id_count: ecs_gauge_t,

    component_id_count: ecs_gauge_t,

    pair_id_count: ecs_gauge_t,

    wildcard_id_count: ecs_gauge_t,

    component_count: ecs_gauge_t,

    id_create_count: ecs_counter_t,

    id_delete_count: ecs_counter_t,

    table_count: ecs_gauge_t,

    empty_table_count: ecs_gauge_t,

    singleton_table_count: ecs_gauge_t,

    tag_table_count: ecs_gauge_t,

    trivial_table_count: ecs_gauge_t,

    table_record_count: ecs_gauge_t,

    table_storage_count: ecs_gauge_t,

    table_create_count: ecs_counter_t,

    table_delete_count: ecs_counter_t,

    query_count: ecs_gauge_t,

    trigger_count: ecs_gauge_t,

    observer_count: ecs_gauge_t,

    system_count: ecs_gauge_t,

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

    system_stats: [*c]ecs_map_t,

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

pub const EcsHttpOptions: c_int = 4;

pub const EcsHttpMethodUnsupported: c_int = 5;

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

pub extern fn ecs_cpp_component_register(world: ?*ecs_world_t, id: ecs_entity_t, name: [*c]const u8, symbol: [*c]const u8, size: ecs_size_t, alignment: ecs_size_t, implicit_name: bool) ecs_entity_t;

pub extern fn ecs_cpp_component_register_explicit(world: ?*ecs_world_t, s_id: ecs_entity_t, id: ecs_entity_t, name: [*c]const u8, type_name: [*c]const u8, symbol: [*c]const u8, size: usize, alignment: usize, is_component: bool) ecs_entity_t;

pub extern fn ecs_cpp_enum_constant_register(world: ?*ecs_world_t, parent: ecs_entity_t, id: ecs_entity_t, name: [*c]const u8, value: c_int) ecs_entity_t;

pub extern fn ecs_cpp_reset_count_get() i32;

pub extern fn ecs_cpp_reset_count_inc() i32;

pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`"); // (no file):66:9

pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`"); // (no file):72:9

pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`"); // (no file):164:9

pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // (no file):186:9

pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`"); // (no file):194:9

pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):315:9

pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):316:9

pub const __declspec = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):376:9

pub const _cdecl = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):377:9

pub const __cdecl = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):378:9

pub const _stdcall = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):379:9

pub const __stdcall = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):380:9

pub const _fastcall = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):381:9

pub const __fastcall = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):382:9

pub const _thiscall = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):383:9

pub const __thiscall = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):384:9

pub const _pascal = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):385:9

pub const __pascal = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):386:9

pub const __STRINGIFY = @compileError("unable to translate C expr: unexpected token '#'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any/_mingw_mac.h:10:9

pub const __MINGW64_VERSION_STR = @compileError("unable to translate C expr: unexpected token 'StringLiteral'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any/_mingw_mac.h:26:9

pub const __MINGW_IMP_SYMBOL = @compileError("unable to translate macro: undefined identifier `__imp_`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any/_mingw_mac.h:119:11

pub const __MINGW_IMP_LSYMBOL = @compileError("unable to translate macro: undefined identifier `__imp_`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any/_mingw_mac.h:120:11

pub const __MINGW_LSYMBOL = @compileError("unable to translate C expr: unexpected token '##'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any/_mingw_mac.h:122:11

pub const __MINGW_ASM_CALL = @compileError("unable to translate macro: undefined identifier `__asm__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any/_mingw_mac.h:130:9

pub const __MINGW_ASM_CRT_CALL = @compileError("unable to translate macro: undefined identifier `__asm__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any/_mingw_mac.h:131:9

pub const __MINGW_EXTENSION = @compileError("unable to translate macro: undefined identifier `__extension__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any/_mingw_mac.h:163:13

pub const __MINGW_POISON_NAME = @compileError("unable to translate macro: undefined identifier `_layout_has_not_been_verified_and_its_declaration_is_most_likely_incorrect`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any/_mingw_mac.h:203:11

pub const __MSABI_LONG = @compileError("unable to translate macro: undefined identifier `l`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any/_mingw_mac.h:209:13

pub const __MINGW_ATTRIB_DEPRECATED_STR = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any/_mingw_mac.h:247:11

pub const __MINGW_MS_PRINTF = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any/_mingw_mac.h:270:9

pub const __MINGW_MS_SCANF = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any/_mingw_mac.h:273:9

pub const __MINGW_GNU_PRINTF = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any/_mingw_mac.h:276:9

pub const __MINGW_GNU_SCANF = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any/_mingw_mac.h:279:9

pub const __mingw_ovr = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any/_mingw_mac.h:289:11

pub const __MINGW_CRT_NAME_CONCAT2 = @compileError("unable to translate macro: undefined identifier `_s`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any/_mingw_secapi.h:41:9

pub const __CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY_0_3_ = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any/_mingw_secapi.h:69:9

pub const __MINGW_IMPORT = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:51:12

pub const _CRTIMP = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:59:15

pub const _inline = @compileError("unable to translate macro: undefined identifier `__inline`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:81:9

pub const __CRT_INLINE = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:90:11

pub const __MINGW_INTRIN_INLINE = @compileError("unable to translate macro: undefined identifier `__inline__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:97:9

pub const __UNUSED_PARAM = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:111:11

pub const __restrict_arr = @compileError("unable to translate macro: undefined identifier `__restrict`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:126:10

pub const __MINGW_ATTRIB_NORETURN = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:142:9

pub const __MINGW_ATTRIB_CONST = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:143:9

pub const __MINGW_ATTRIB_MALLOC = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:153:9

pub const __MINGW_ATTRIB_PURE = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:154:9

pub const __MINGW_ATTRIB_NONNULL = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:167:9

pub const __MINGW_ATTRIB_UNUSED = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:173:9

pub const __MINGW_ATTRIB_USED = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:179:9

pub const __MINGW_ATTRIB_DEPRECATED = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:180:9

pub const __MINGW_ATTRIB_DEPRECATED_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:182:9

pub const __MINGW_NOTHROW = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:197:9

pub const __MINGW_PRAGMA_PARAM = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:215:9

pub const __MINGW_BROKEN_INTERFACE = @compileError("unable to translate macro: undefined identifier `message`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:218:9

pub const __forceinline = @compileError("unable to translate macro: undefined identifier `__inline__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:267:9

pub const _crt_va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\vadefs.h:48:9

pub const _crt_va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\vadefs.h:49:9

pub const _crt_va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\vadefs.h:50:9

pub const _crt_va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\vadefs.h:51:9

pub const __CRT_STRINGIZE = @compileError("unable to translate C expr: unexpected token '#'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:286:9

pub const __CRT_WIDE = @compileError("unable to translate macro: undefined identifier `L`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:291:9

pub const _CRT_DEPRECATE_TEXT = @compileError("unable to translate macro: undefined identifier `deprecated`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:350:9

pub const _CRT_INSECURE_DEPRECATE_MEMORY = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:353:9

pub const _CRT_INSECURE_DEPRECATE_GLOBALS = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:357:9

pub const _CRT_OBSOLETE = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:365:9

pub const _CRT_ALIGN = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:392:9

pub const _CRT_glob = @compileError("unable to translate macro: undefined identifier `_dowildcard`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:456:9

pub const _UNION_NAME = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:476:9

pub const _STRUCT_NAME = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:477:9

pub const __CRT_UUID_DECL = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\_mingw.h:564:9

pub const _CRT_SECURE_CPP_NOTHROW = @compileError("unable to translate macro: undefined identifier `throw`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\corecrt.h:148:9

pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\corecrt.h:267:9

pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\corecrt.h:268:9

pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\corecrt.h:269:9

pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\corecrt.h:270:9

pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\corecrt.h:271:9

pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\corecrt.h:272:9

pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\corecrt.h:273:9

pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\corecrt.h:274:9

pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\corecrt.h:275:9

pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\corecrt.h:276:9

pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\corecrt.h:277:9

pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_SPLITPATH = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\corecrt.h:278:9

pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\corecrt.h:282:9

pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\corecrt.h:284:9

pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\corecrt.h:286:9

pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\corecrt.h:288:9

pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\corecrt.h:290:9

pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0_EX = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\corecrt.h:427:9

pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\corecrt.h:428:9

pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_EX = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\corecrt.h:429:9

pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3_EX = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\corecrt.h:430:9

pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4_EX = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\corecrt.h:431:9

pub const __crt_typefix = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\corecrt.h:491:9

pub const static_assert = @compileError("unable to translate C expr: unexpected token '_Static_assert'"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\assert.h:38:9

pub const assert = @compileError("unable to translate macro: undefined identifier `__FILE__`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\assert.h:50:9

pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\include\stdarg.h:17:9

pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\include\stdarg.h:18:9

pub const va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\include\stdarg.h:19:9

pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\include\stdarg.h:24:9

pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\include\stdarg.h:27:9

pub const _SECIMP = @compileError("unable to translate macro: undefined identifier `dllimport`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\string.h:16:9

pub const INT64_C = @compileError("unable to translate macro: undefined identifier `LL`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\stdint.h:198:9

pub const UINT64_C = @compileError("unable to translate macro: undefined identifier `ULL`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\stdint.h:203:9

pub const INTMAX_C = @compileError("unable to translate macro: undefined identifier `LL`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\stdint.h:206:9

pub const UINTMAX_C = @compileError("unable to translate macro: undefined identifier `ULL`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\stdint.h:207:9

pub const ECS_ALIGNOF = @compileError("unable to translate macro: undefined identifier `__alignof__`"); // flecs.h:268:9

pub const ECS_UNUSED = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // flecs.h:274:9

pub const ECS_DEPRECATED = @compileError("unable to translate C expr: unexpected token 'Eof'"); // flecs.h:288:9

pub const ECS_HAS_ROLE = @compileError("unable to translate macro: undefined identifier `ECS_`"); // flecs.h:326:9

pub const ECS_HAS_RELATION = @compileError("unable to translate macro: undefined identifier `PAIR`"); // flecs.h:331:9

pub const ECS_ID_ON_DELETE = @compileError("unable to translate C expr: expected ')' instead got '['"); // flecs.h:364:9

pub const ecs_id = @compileError("unable to translate macro: undefined identifier `FLECS__E`"); // flecs.h:377:9

pub const ecs_iter_action = @compileError("unable to translate macro: undefined identifier `FLECS__F`"); // flecs.h:380:9

pub const ECS_XTOR_IMPL = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:420:9

pub const ECS_COPY_IMPL = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:437:9

pub const ECS_MOVE_IMPL = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:458:9

pub const ECS_ON_SET_IMPL = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:479:9

pub const ECS_VECTOR_VALUE = @compileError("unable to translate C expr: unexpected token '{'"); // flecs.h:564:9

pub const ECS_VECTOR_DECL = @compileError("unable to translate macro: undefined identifier `vector`"); // flecs.h:578:9

pub const ECS_VECTOR_IMPL = @compileError("unable to translate macro: undefined identifier `__`"); // flecs.h:590:9

pub const ECS_VECTOR_STACK = @compileError("unable to translate C expr: unexpected token ';'"); // flecs.h:593:9

pub const ecs_vector_add = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:660:9

pub const ecs_vector_insert_at = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:674:9

pub const ecs_vector_addn = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:688:9

pub const ecs_vector_get = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:702:9

pub const ecs_vector_last = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:715:9

pub const ecs_vector_first = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:863:9

pub const ecs_vector_each = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:909:9

pub const ECS_MAP_INIT = @compileError("unable to translate C expr: unexpected token '{'"); // flecs.h:1108:9

pub const ecs_map_get = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:1145:9

pub const ecs_map_ensure = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:1173:9

pub const ecs_map_set = @compileError("unable to translate C expr: unexpected token '*'"); // flecs.h:1184:9

pub const ecs_map_next = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:1230:9

pub const ecs_map_each = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:1267:9

pub const _STATIC_ASSERT = @compileError("unable to translate macro: undefined identifier `__static_assert_t`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\malloc.h:27:9

pub const _countof = @compileError("unable to translate C expr: expected ')' instead got '['"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\stdlib.h:377:9

pub const _alloca = @compileError("unable to translate macro: undefined identifier `__builtin_alloca`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\malloc.h:93:9

pub const alloca = @compileError("unable to translate macro: undefined identifier `__builtin_alloca`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\libc\include\any-windows-any\malloc.h:159:9

pub const ecs_os_malloc_t = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:1793:9

pub const ecs_os_malloc_n = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:1794:9

pub const ecs_os_calloc_t = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:1795:9

pub const ecs_os_calloc_n = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:1796:9

pub const ecs_os_realloc_t = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:1798:9

pub const ecs_os_realloc_n = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:1799:9

pub const ecs_os_alloca_t = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:1800:9

pub const ecs_os_alloca_n = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:1801:9

pub const ecs_os_strset = @compileError("unable to translate C expr: unexpected token ';'"); // flecs.h:1808:9

pub const ecs_offset = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:1838:9

pub const ecs_os_sprintf = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:1853:9

pub const ecs_os_vsprintf = @compileError("unable to translate macro: undefined identifier `vsprintf`"); // flecs.h:1854:9

pub const ecs_os_fopen = @compileError("unable to translate macro: undefined identifier `fopen`"); // flecs.h:1867:9

pub const ECS_BIT_SET = @compileError("unable to translate C expr: unexpected token '|='"); // flecs.h:2820:9

pub const ECS_BIT_CLEAR = @compileError("unable to translate C expr: unexpected token '&='"); // flecs.h:2821:9

pub const flecs_sparse_add = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:2936:9

pub const flecs_sparse_remove_get = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:2970:9

pub const flecs_sparse_get_dense = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:2999:9

pub const flecs_sparse_get = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:3025:9

pub const flecs_sparse_get_any = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:3035:9

pub const flecs_sparse_ensure = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:3045:9

pub const flecs_sparse_set = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:3056:9

pub const flecs_sparse_each = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:3097:9

pub const ecs_sparse_add = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:3123:9

pub const ecs_sparse_get_dense = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:3146:9

pub const ecs_sparse_get = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:3155:9

pub const flecs_hashmap_get = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:3227:9

pub const flecs_hashmap_next = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:3300:9

pub const flecs_hashmap_next_w_key = @compileError("unable to translate C expr: unexpected token ')'"); // flecs.h:3303:9

pub const EcsLastInternalComponentId = @compileError("unable to translate macro: undefined identifier `EcsSystem`"); // flecs.h:4048:9

pub const ECS_ENTITY_DEFINE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:7479:9

pub const ECS_ENTITY = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:7491:9

pub const ECS_PREFAB_DEFINE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:7499:9

pub const ECS_PREFAB = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:7500:9

pub const ECS_COMPONENT_DEFINE = @compileError("unable to translate macro: undefined identifier `desc`"); // flecs.h:7504:9

pub const ECS_COMPONENT = @compileError("unable to translate C expr: unexpected token '='"); // flecs.h:7516:9

pub const ECS_TRIGGER_DEFINE = @compileError("unable to translate macro: undefined identifier `desc`"); // flecs.h:7525:9

pub const ECS_TRIGGER = @compileError("unable to translate C expr: unexpected token '='"); // flecs.h:7537:9

pub const ECS_OBSERVER_DEFINE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:7545:9

pub const ECS_OBSERVER = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:7557:9

pub const ecs_set_component_actions = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:7575:9

pub const ecs_new_entity = @compileError("unable to translate C expr: expected '.' instead got '}'"); // flecs.h:7588:9

pub const ecs_new_prefab = @compileError("unable to translate C expr: unexpected token '{'"); // flecs.h:7593:9

pub const ecs_set = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:7628:9

pub const ecs_set_pair = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:7631:9

pub const ecs_set_pair_second = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:7636:9

pub const ecs_set_override = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:7643:9

pub const ecs_emplace = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:7649:9

pub const ecs_get = @compileError("unable to translate C expr: unexpected token 'const'"); // flecs.h:7654:9

pub const ecs_get_pair = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:7657:9

pub const ecs_get_pair_second = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:7661:9

pub const ecs_ref_get = @compileError("unable to translate C expr: unexpected token 'const'"); // flecs.h:7672:9

pub const ecs_get_mut = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:7677:9

pub const ecs_get_mut_pair = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:7680:9

pub const ecs_get_mut_pair_second = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:7684:9

pub const ecs_singleton_set = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:7708:9

pub const ecs_term = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:7810:9

pub const ecs_iter_column = @compileError("unable to translate C expr: unexpected token ','"); // flecs.h:7813:9

pub const ECS_CTOR = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:7838:9

pub const ECS_DTOR = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:7845:9

pub const ECS_COPY = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:7852:9

pub const ECS_MOVE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:7859:9

pub const ECS_ON_SET = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:7866:9

pub const ecs_ctor = @compileError("unable to translate macro: undefined identifier `_ctor`"); // flecs.h:7870:9

pub const ecs_dtor = @compileError("unable to translate macro: undefined identifier `_dtor`"); // flecs.h:7871:9

pub const ecs_copy = @compileError("unable to translate macro: undefined identifier `_copy`"); // flecs.h:7872:9

pub const ecs_move = @compileError("unable to translate macro: undefined identifier `_move`"); // flecs.h:7873:9

pub const ecs_on_set = @compileError("unable to translate macro: undefined identifier `_on_set`"); // flecs.h:7874:9

pub const ecs_on_add = @compileError("unable to translate macro: undefined identifier `_on_add`"); // flecs.h:7875:9

pub const ecs_on_remove = @compileError("unable to translate macro: undefined identifier `_on_remove`"); // flecs.h:7876:9

pub const ecs_query_new = @compileError("unable to translate C expr: expected '=' instead got '.'"); // flecs.h:7878:9

pub const ECS_TYPE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:7888:9

pub const ecs_log = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:8157:9

pub const ecs_logv = @compileError("unable to translate macro: undefined identifier `__FILE__`"); // flecs.h:8160:9

pub const _ecs_trace = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:8164:9

pub const ecs_trace = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:8165:9

pub const _ecs_warn = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:8168:9

pub const ecs_warn = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:8169:9

pub const _ecs_err = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:8172:9

pub const ecs_err = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:8173:9

pub const _ecs_fatal = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:8176:9

pub const ecs_fatal = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:8177:9

pub const ecs_deprecated = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:8184:9

pub const ecs_dbg_1 = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:8201:9

pub const ecs_dbg_2 = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:8202:9

pub const ecs_dbg_3 = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:8203:9

pub const ecs_log_push_1 = @compileError("unable to translate C expr: unexpected token ';'"); // flecs.h:8205:9

pub const ecs_log_push_2 = @compileError("unable to translate C expr: unexpected token ';'"); // flecs.h:8206:9

pub const ecs_log_push_3 = @compileError("unable to translate C expr: unexpected token ';'"); // flecs.h:8207:9

pub const ecs_log_pop_1 = @compileError("unable to translate C expr: unexpected token ';'"); // flecs.h:8209:9

pub const ecs_log_pop_2 = @compileError("unable to translate C expr: unexpected token ';'"); // flecs.h:8210:9

pub const ecs_log_pop_3 = @compileError("unable to translate C expr: unexpected token ';'"); // flecs.h:8211:9

pub const ecs_abort = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:8303:9

pub const ecs_assert = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:8312:9

pub const ecs_dbg_assert = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:8322:9

pub const ecs_dummy_check = @compileError("unable to translate macro: undefined identifier `error`"); // flecs.h:8328:9

pub const ecs_check = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:8344:9

pub const ecs_throw = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:8360:9

pub const ecs_parser_error = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:8367:9

pub const ECS_PIPELINE_DEFINE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:8954:9

pub const ECS_PIPELINE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:8964:9

pub const ECS_SYSTEM_DEFINE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:9255:9

pub const ECS_SYSTEM = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:9266:9

pub const offsetof = @compileError("unable to translate macro: undefined identifier `__builtin_offsetof`"); // C:\Users\coltonfranklin\dev\lang\zig-windows-x86_64-0.10.0-dev.1717+91eb1af91\lib\include\stddef.h:104:9

pub const ECS_META_COMPONENT = @compileError("unable to translate macro: undefined identifier `FLECS__`"); // flecs.h:10979:9

pub const ECS_STRUCT = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:10985:9

pub const ECS_ENUM = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:10990:9

pub const ECS_BITMASK = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:10995:9

pub const ECS_META_IMPL_CALL_INNER = @compileError("unable to translate C expr: unexpected token '##'"); // flecs.h:11014:9

pub const ECS_STRUCT_TYPE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:11021:9

pub const ECS_STRUCT_IMPL = @compileError("unable to translate macro: undefined identifier `FLECS__`"); // flecs.h:11026:9

pub const ECS_STRUCT_DECLARE = @compileError("unable to translate C expr: unexpected token 'extern'"); // flecs.h:11032:9

pub const ECS_STRUCT_EXTERN = @compileError("unable to translate C expr: unexpected token 'extern'"); // flecs.h:11036:9

pub const ECS_ENUM_TYPE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:11041:9

pub const ECS_ENUM_IMPL = @compileError("unable to translate macro: undefined identifier `FLECS__`"); // flecs.h:11046:9

pub const ECS_ENUM_DECLARE = @compileError("unable to translate C expr: unexpected token 'extern'"); // flecs.h:11052:9

pub const ECS_ENUM_EXTERN = @compileError("unable to translate C expr: unexpected token 'extern'"); // flecs.h:11056:9

pub const ECS_BITMASK_TYPE = @compileError("unable to translate C expr: expected ')' instead got '...'"); // flecs.h:11061:9

pub const ECS_BITMASK_IMPL = @compileError("unable to translate macro: undefined identifier `FLECS__`"); // flecs.h:11066:9

pub const ECS_BITMASK_DECLARE = @compileError("unable to translate C expr: unexpected token 'extern'"); // flecs.h:11072:9

pub const ECS_BITMASK_EXTERN = @compileError("unable to translate C expr: unexpected token 'extern'"); // flecs.h:11076:9

pub const FLECS_META_C_EXPORT = @compileError("unable to translate macro: undefined identifier `dllexport`"); // flecs.h:11082:9

pub const FLECS_META_C_IMPORT = @compileError("unable to translate macro: undefined identifier `dllimport`"); // flecs.h:11083:9

pub const ECS_MODULE = @compileError("unable to translate C expr: unexpected token '='"); // flecs.h:12147:9

pub const ECS_IMPORT = @compileError("unable to translate macro: undefined identifier `FLECS__`"); // flecs.h:12169:9

pub const ECS_FUNC_NAME_FRONT = @compileError("unable to translate C expr: unexpected token '#'"); // flecs.h:12208:9

pub const ECS_FUNC_NAME_BACK = @compileError("unable to translate C expr: unexpected token 'StringLiteral'"); // flecs.h:12209:9

pub const ECS_FUNC_NAME = @compileError("unable to translate macro: undefined identifier `__PRETTY_FUNCTION__`"); // flecs.h:12210:9

pub const ECS_FUNC_TYPE_LEN = @compileError("unable to translate macro: undefined identifier `flecs`"); // flecs.h:12223:9

pub const __llvm__ = @as(c_int, 1);

pub const __clang__ = @as(c_int, 1);

pub const __clang_major__ = @as(c_int, 13);

pub const __clang_minor__ = @as(c_int, 0);

pub const __clang_patchlevel__ = @as(c_int, 1);

pub const __clang_version__ = "13.0.1 (git@github.com:ziglang/zig-bootstrap.git 81f0e6c5b902ead84753490db4f0007d08df964a)";

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

pub const __VERSION__ = "Clang 13.0.1 (git@github.com:ziglang/zig-bootstrap.git 81f0e6c5b902ead84753490db4f0007d08df964a)";

pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);

pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);

pub const __SEH__ = @as(c_int, 1);

pub const __clang_literal_encoding__ = "UTF-8";

pub const __clang_wide_literal_encoding__ = "UTF-16";

pub const __OPTIMIZE__ = @as(c_int, 1);

pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);

pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);

pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);

pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;

pub const __LITTLE_ENDIAN__ = @as(c_int, 1);

pub const __CHAR_BIT__ = @as(c_int, 8);

pub const __SCHAR_MAX__ = @as(c_int, 127);

pub const __SHRT_MAX__ = @as(c_int, 32767);

pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);

pub const __LONG_MAX__ = @as(c_long, 2147483647);

pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);

pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);

pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);

pub const __INTMAX_MAX__ = @as(c_longlong, 9223372036854775807);

pub const __SIZE_MAX__ = @as(c_ulonglong, 18446744073709551615);

pub const __UINTMAX_MAX__ = @as(c_ulonglong, 18446744073709551615);

pub const __PTRDIFF_MAX__ = @as(c_longlong, 9223372036854775807);

pub const __INTPTR_MAX__ = @as(c_longlong, 9223372036854775807);

pub const __UINTPTR_MAX__ = @as(c_ulonglong, 18446744073709551615);

pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);

pub const __SIZEOF_FLOAT__ = @as(c_int, 4);

pub const __SIZEOF_INT__ = @as(c_int, 4);

pub const __SIZEOF_LONG__ = @as(c_int, 4);

pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);

pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);

pub const __SIZEOF_POINTER__ = @as(c_int, 8);

pub const __SIZEOF_SHORT__ = @as(c_int, 2);

pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);

pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);

pub const __SIZEOF_WCHAR_T__ = @as(c_int, 2);

pub const __SIZEOF_WINT_T__ = @as(c_int, 2);

pub const __SIZEOF_INT128__ = @as(c_int, 16);

pub const __INTMAX_TYPE__ = c_longlong;

pub const __INTMAX_FMTd__ = "lld";

pub const __INTMAX_FMTi__ = "lli";

pub const __UINTMAX_TYPE__ = c_ulonglong;

pub const __UINTMAX_FMTo__ = "llo";

pub const __UINTMAX_FMTu__ = "llu";

pub const __UINTMAX_FMTx__ = "llx";

pub const __UINTMAX_FMTX__ = "llX";

pub const __INTMAX_WIDTH__ = @as(c_int, 64);

pub const __PTRDIFF_TYPE__ = c_longlong;

pub const __PTRDIFF_FMTd__ = "lld";

pub const __PTRDIFF_FMTi__ = "lli";

pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);

pub const __INTPTR_TYPE__ = c_longlong;

pub const __INTPTR_FMTd__ = "lld";

pub const __INTPTR_FMTi__ = "lli";

pub const __INTPTR_WIDTH__ = @as(c_int, 64);

pub const __SIZE_TYPE__ = c_ulonglong;

pub const __SIZE_FMTo__ = "llo";

pub const __SIZE_FMTu__ = "llu";

pub const __SIZE_FMTx__ = "llx";

pub const __SIZE_FMTX__ = "llX";

pub const __SIZE_WIDTH__ = @as(c_int, 64);

pub const __WCHAR_TYPE__ = c_ushort;

pub const __WCHAR_WIDTH__ = @as(c_int, 16);

pub const __WINT_TYPE__ = c_ushort;

pub const __WINT_WIDTH__ = @as(c_int, 16);

pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);

pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);

pub const __CHAR16_TYPE__ = c_ushort;

pub const __CHAR32_TYPE__ = c_uint;

pub const __UINTMAX_WIDTH__ = @as(c_int, 64);

pub const __UINTPTR_TYPE__ = c_ulonglong;

pub const __UINTPTR_FMTo__ = "llo";

pub const __UINTPTR_FMTu__ = "llu";

pub const __UINTPTR_FMTx__ = "llx";

pub const __UINTPTR_FMTX__ = "llX";

pub const __UINTPTR_WIDTH__ = @as(c_int, 64);

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

pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);

pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);

pub const __LDBL_DIG__ = @as(c_int, 18);

pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);

pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);

pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);

pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);

pub const __LDBL_MANT_DIG__ = @as(c_int, 64);

pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);

pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);

pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);

pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);

pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);

pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);

pub const __POINTER_WIDTH__ = @as(c_int, 64);

pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);

pub const __WCHAR_UNSIGNED__ = @as(c_int, 1);

pub const __WINT_UNSIGNED__ = @as(c_int, 1);

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

pub const __USER_LABEL_PREFIX__ = "";

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

pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);

pub const __code_model_small__ = @as(c_int, 1);

pub const __amd64__ = @as(c_int, 1);

pub const __amd64 = @as(c_int, 1);

pub const __x86_64 = @as(c_int, 1);

pub const __x86_64__ = @as(c_int, 1);

pub const __SEG_GS = @as(c_int, 1);

pub const __SEG_FS = @as(c_int, 1);

pub const __k8 = @as(c_int, 1);

pub const __k8__ = @as(c_int, 1);

pub const __tune_k8__ = @as(c_int, 1);

pub const __REGISTER_PREFIX__ = "";

pub const __NO_MATH_INLINES = @as(c_int, 1);

pub const __AES__ = @as(c_int, 1);

pub const __PCLMUL__ = @as(c_int, 1);

pub const __LAHF_SAHF__ = @as(c_int, 1);

pub const __LZCNT__ = @as(c_int, 1);

pub const __RDRND__ = @as(c_int, 1);

pub const __FSGSBASE__ = @as(c_int, 1);

pub const __BMI__ = @as(c_int, 1);

pub const __BMI2__ = @as(c_int, 1);

pub const __POPCNT__ = @as(c_int, 1);

pub const __PRFCHW__ = @as(c_int, 1);

pub const __RDSEED__ = @as(c_int, 1);

pub const __ADX__ = @as(c_int, 1);

pub const __MOVBE__ = @as(c_int, 1);

pub const __FMA__ = @as(c_int, 1);

pub const __F16C__ = @as(c_int, 1);

pub const __FXSR__ = @as(c_int, 1);

pub const __XSAVE__ = @as(c_int, 1);

pub const __XSAVEOPT__ = @as(c_int, 1);

pub const __XSAVEC__ = @as(c_int, 1);

pub const __XSAVES__ = @as(c_int, 1);

pub const __CLFLUSHOPT__ = @as(c_int, 1);

pub const __SGX__ = @as(c_int, 1);

pub const __INVPCID__ = @as(c_int, 1);

pub const __AVX2__ = @as(c_int, 1);

pub const __AVX__ = @as(c_int, 1);

pub const __SSE4_2__ = @as(c_int, 1);

pub const __SSE4_1__ = @as(c_int, 1);

pub const __SSSE3__ = @as(c_int, 1);

pub const __SSE3__ = @as(c_int, 1);

pub const __SSE2__ = @as(c_int, 1);

pub const __SSE2_MATH__ = @as(c_int, 1);

pub const __SSE__ = @as(c_int, 1);

pub const __SSE_MATH__ = @as(c_int, 1);

pub const __MMX__ = @as(c_int, 1);

pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);

pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);

pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);

pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);

pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);

pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);

pub const _WIN32 = @as(c_int, 1);

pub const _WIN64 = @as(c_int, 1);

pub const WIN32 = @as(c_int, 1);

pub const __WIN32 = @as(c_int, 1);

pub const __WIN32__ = @as(c_int, 1);

pub const WINNT = @as(c_int, 1);

pub const __WINNT = @as(c_int, 1);

pub const __WINNT__ = @as(c_int, 1);

pub const WIN64 = @as(c_int, 1);

pub const __WIN64 = @as(c_int, 1);

pub const __WIN64__ = @as(c_int, 1);

pub const __MINGW64__ = @as(c_int, 1);

pub const __MSVCRT__ = @as(c_int, 1);

pub const __MINGW32__ = @as(c_int, 1);

pub const __STDC__ = @as(c_int, 1);

pub const __STDC_HOSTED__ = @as(c_int, 1);

pub const __STDC_VERSION__ = @as(c_long, 201710);

pub const __STDC_UTF_16__ = @as(c_int, 1);

pub const __STDC_UTF_32__ = @as(c_int, 1);

pub const _DEBUG = @as(c_int, 1);

pub const flecs_STATIC = "";

pub const FLECS_H = "";

pub const FLECS_FLOAT = f32;

pub const FLECS_NO_DEPRECATED_WARNINGS = "";

pub const FLECS_DEBUG = "";

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

pub const FLECS_UNITS = "";

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

pub const ECS_TARGET_WINDOWS = "";

pub const ECS_TARGET_GNU = "";

pub const __ASSERT_H_ = "";

pub const _INC_CRTDEFS = "";

pub const _INC_CORECRT = "";

pub const _INC__MINGW_H = "";

pub const _INC_CRTDEFS_MACRO = "";

pub inline fn __MINGW64_STRINGIFY(x: anytype) @TypeOf(__STRINGIFY(x)) {
    return __STRINGIFY(x);
}

pub const __MINGW64_VERSION_MAJOR = @as(c_int, 9);

pub const __MINGW64_VERSION_MINOR = @as(c_int, 0);

pub const __MINGW64_VERSION_BUGFIX = @as(c_int, 0);

pub const __MINGW64_VERSION_RC = @as(c_int, 0);

pub const __MINGW64_VERSION_STATE = "alpha";

pub const __MINGW32_MAJOR_VERSION = @as(c_int, 3);

pub const __MINGW32_MINOR_VERSION = @as(c_int, 11);

pub const _M_AMD64 = @as(c_int, 100);

pub const _M_X64 = @as(c_int, 100);

pub const @"_" = @as(c_int, 1);

pub const __MINGW_USE_UNDERSCORE_PREFIX = @as(c_int, 0);

pub inline fn __MINGW_USYMBOL(sym: anytype) @TypeOf(sym) {
    return sym;
}

pub const __C89_NAMELESS = __MINGW_EXTENSION;

pub const __C89_NAMELESSSTRUCTNAME = "";

pub const __C89_NAMELESSSTRUCTNAME1 = "";

pub const __C89_NAMELESSSTRUCTNAME2 = "";

pub const __C89_NAMELESSSTRUCTNAME3 = "";

pub const __C89_NAMELESSSTRUCTNAME4 = "";

pub const __C89_NAMELESSSTRUCTNAME5 = "";

pub const __C89_NAMELESSUNIONNAME = "";

pub const __C89_NAMELESSUNIONNAME1 = "";

pub const __C89_NAMELESSUNIONNAME2 = "";

pub const __C89_NAMELESSUNIONNAME3 = "";

pub const __C89_NAMELESSUNIONNAME4 = "";

pub const __C89_NAMELESSUNIONNAME5 = "";

pub const __C89_NAMELESSUNIONNAME6 = "";

pub const __C89_NAMELESSUNIONNAME7 = "";

pub const __C89_NAMELESSUNIONNAME8 = "";

pub const __GNU_EXTENSION = __MINGW_EXTENSION;

pub const __MINGW_HAVE_ANSI_C99_PRINTF = @as(c_int, 1);

pub const __MINGW_HAVE_WIDE_C99_PRINTF = @as(c_int, 1);

pub const __MINGW_HAVE_ANSI_C99_SCANF = @as(c_int, 1);

pub const __MINGW_HAVE_WIDE_C99_SCANF = @as(c_int, 1);

pub const __MINGW_GCC_VERSION = ((__GNUC__ * @as(c_int, 10000)) + (__GNUC_MINOR__ * @as(c_int, 100))) + __GNUC_PATCHLEVEL__;

pub inline fn __MINGW_GNUC_PREREQ(major: anytype, minor: anytype) @TypeOf((__GNUC__ > major) or ((__GNUC__ == major) and (__GNUC_MINOR__ >= minor))) {
    return (__GNUC__ > major) or ((__GNUC__ == major) and (__GNUC_MINOR__ >= minor));
}

pub inline fn __MINGW_MSC_PREREQ(major: anytype, minor: anytype) @TypeOf(@as(c_int, 0)) {
    _ = major;

    _ = minor;

    return @as(c_int, 0);
}

pub const __MINGW_SEC_WARN_STR = "This function or variable may be unsafe, use _CRT_SECURE_NO_WARNINGS to disable deprecation";

pub const __MINGW_MSVC2005_DEPREC_STR = "This POSIX function is deprecated beginning in Visual C++ 2005, use _CRT_NONSTDC_NO_DEPRECATE to disable deprecation";

pub const __MINGW_ATTRIB_DEPRECATED_MSVC2005 = __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_MSVC2005_DEPREC_STR);

pub const __MINGW_ATTRIB_DEPRECATED_SEC_WARN = __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_SEC_WARN_STR);

pub const __mingw_static_ovr = __mingw_ovr;

pub const __mingw_attribute_artificial = "";

pub const __MINGW_FORTIFY_LEVEL = @as(c_int, 0);

pub const __mingw_bos_ovr = __mingw_ovr;

pub const __MINGW_FORTIFY_VA_ARG = @as(c_int, 0);

pub const _INC_MINGW_SECAPI = "";

pub const _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES = @as(c_int, 0);

pub const _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY = @as(c_int, 0);

pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES = @as(c_int, 0);

pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT = @as(c_int, 0);

pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY = @as(c_int, 0);

pub const __LONG32 = c_long;

pub const __USE_CRTIMP = @as(c_int, 1);

pub const __DECLSPEC_SUPPORTED = "";

pub const USE___UUIDOF = @as(c_int, 0);

pub const __MINGW_ATTRIB_NO_OPTIMIZE = "";

pub const __MSVCRT_VERSION__ = @as(c_int, 0x700);

pub const _WIN32_WINNT = @as(c_int, 0x0603);

pub const _INT128_DEFINED = "";

pub const __int8 = u8;

pub const __int16 = c_short;

pub const __int32 = c_int;

pub const __int64 = c_longlong;

pub const __ptr32 = "";

pub const __ptr64 = "";

pub const __unaligned = "";

pub const __w64 = "";

pub const __nothrow = "";

pub const _INC_VADEFS = "";

pub const MINGW_SDK_INIT = "";

pub const MINGW_HAS_SECURE_API = @as(c_int, 1);

pub const __STDC_SECURE_LIB__ = @as(c_long, 200411);

pub const __GOT_SECURE_LIB__ = __STDC_SECURE_LIB__;

pub const MINGW_DDK_H = "";

pub const MINGW_HAS_DDK_H = @as(c_int, 1);

pub const _CRT_PACKING = @as(c_int, 8);

pub const __GNUC_VA_LIST = "";

pub const _VA_LIST_DEFINED = "";

pub inline fn _ADDRESSOF(v: anytype) @TypeOf(&v) {
    return &v;
}

pub inline fn _CRT_STRINGIZE(_Value: anytype) @TypeOf(__CRT_STRINGIZE(_Value)) {
    return __CRT_STRINGIZE(_Value);
}

pub inline fn _CRT_WIDE(_String: anytype) @TypeOf(__CRT_WIDE(_String)) {
    return __CRT_WIDE(_String);
}

pub const _W64 = "";

pub const _CRTIMP_NOIA64 = _CRTIMP;

pub const _CRTIMP2 = _CRTIMP;

pub const _CRTIMP_ALTERNATIVE = _CRTIMP;

pub const _CRT_ALTERNATIVE_IMPORTED = "";

pub const _MRTIMP2 = _CRTIMP;

pub const _DLL = "";

pub const _MT = "";

pub const _MCRTIMP = _CRTIMP;

pub const _CRTIMP_PURE = _CRTIMP;

pub const _PGLOBAL = "";

pub const _AGLOBAL = "";

pub const _SECURECRT_FILL_BUFFER_PATTERN = @as(c_int, 0xFD);

pub const _CRT_MANAGED_HEAP_DEPRECATE = "";

pub const _CONST_RETURN = "";

pub const UNALIGNED = __unaligned;

pub const __CRTDECL = __cdecl;

pub const _ARGMAX = @as(c_int, 100);

pub const _TRUNCATE = @import("std").zig.c_translation.cast(usize, -@as(c_int, 1));

pub inline fn _CRT_UNUSED(x: anytype) anyopaque {
    return @import("std").zig.c_translation.cast(anyopaque, x);
}

pub const __USE_MINGW_ANSI_STDIO = @as(c_int, 1);

pub const __ANONYMOUS_DEFINED = "";

pub const _ANONYMOUS_UNION = __MINGW_EXTENSION;

pub const _ANONYMOUS_STRUCT = __MINGW_EXTENSION;

pub const DUMMYUNIONNAME = "";

pub const DUMMYUNIONNAME1 = "";

pub const DUMMYUNIONNAME2 = "";

pub const DUMMYUNIONNAME3 = "";

pub const DUMMYUNIONNAME4 = "";

pub const DUMMYUNIONNAME5 = "";

pub const DUMMYUNIONNAME6 = "";

pub const DUMMYUNIONNAME7 = "";

pub const DUMMYUNIONNAME8 = "";

pub const DUMMYUNIONNAME9 = "";

pub const DUMMYSTRUCTNAME = "";

pub const DUMMYSTRUCTNAME1 = "";

pub const DUMMYSTRUCTNAME2 = "";

pub const DUMMYSTRUCTNAME3 = "";

pub const DUMMYSTRUCTNAME4 = "";

pub const DUMMYSTRUCTNAME5 = "";

pub const __MINGW_DEBUGBREAK_IMPL = !(__has_builtin(__debugbreak) != 0);

pub const _CRTNOALIAS = "";

pub const _CRTRESTRICT = "";

pub const _SIZE_T_DEFINED = "";

pub const _SSIZE_T_DEFINED = "";

pub const _RSIZE_T_DEFINED = "";

pub const _INTPTR_T_DEFINED = "";

pub const __intptr_t_defined = "";

pub const _UINTPTR_T_DEFINED = "";

pub const __uintptr_t_defined = "";

pub const _PTRDIFF_T_DEFINED = "";

pub const _PTRDIFF_T_ = "";

pub const _WCHAR_T_DEFINED = "";

pub const _WCTYPE_T_DEFINED = "";

pub const _WINT_T = "";

pub const _ERRCODE_DEFINED = "";

pub const _TIME32_T_DEFINED = "";

pub const _TIME64_T_DEFINED = "";

pub const _TIME_T_DEFINED = "";

pub const _TAGLC_ID_DEFINED = "";

pub const _THREADLOCALEINFO = "";

pub const _CRT_USE_WINAPI_FAMILY_DESKTOP_APP = "";

pub const __STDARG_H = "";

pub const _VA_LIST = "";

pub const _INC_STRING = "";

pub const _NLSCMP_DEFINED = "";

pub const _NLSCMPERROR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);

pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));

pub const _WConst_return = _CONST_RETURN;

pub const _CRT_MEMORY_DEFINED = "";

pub const _WSTRING_DEFINED = "";

pub const wcswcs = wcsstr;

pub const _INC_STRING_S = "";

pub const _WSTRING_S_DEFINED = "";

pub const __CLANG_STDINT_H = "";

pub const _STDINT_H = "";

pub const __need_wint_t = "";

pub const __need_wchar_t = "";

pub const _WCHAR_T = "";

pub const INT8_MIN = -@as(c_int, 128);

pub const INT16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);

pub const INT32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);

pub const INT64_MIN = -@as(c_longlong, 9223372036854775807) - @as(c_int, 1);

pub const INT8_MAX = @as(c_int, 127);

pub const INT16_MAX = @as(c_int, 32767);

pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);

pub const INT64_MAX = @as(c_longlong, 9223372036854775807);

pub const UINT8_MAX = @as(c_int, 255);

pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);

pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xffffffff, .hexadecimal);

pub const UINT64_MAX = @as(c_ulonglong, 0xffffffffffffffff);

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

pub const INTPTR_MIN = INT64_MIN;

pub const INTPTR_MAX = INT64_MAX;

pub const UINTPTR_MAX = UINT64_MAX;

pub const INTMAX_MIN = INT64_MIN;

pub const INTMAX_MAX = INT64_MAX;

pub const UINTMAX_MAX = UINT64_MAX;

pub const PTRDIFF_MIN = INT64_MIN;

pub const PTRDIFF_MAX = INT64_MAX;

pub const SIG_ATOMIC_MIN = INT32_MIN;

pub const SIG_ATOMIC_MAX = INT32_MAX;

pub const SIZE_MAX = UINT64_MAX;

pub const WCHAR_MIN = @as(c_uint, 0);

pub const WCHAR_MAX = @as(c_uint, 0xffff);

pub const WINT_MIN = @as(c_uint, 0);

pub const WINT_MAX = @as(c_uint, 0xffff);

pub inline fn INT8_C(val: anytype) @TypeOf((INT_LEAST8_MAX - INT_LEAST8_MAX) + val) {
    return (INT_LEAST8_MAX - INT_LEAST8_MAX) + val;
}

pub inline fn INT16_C(val: anytype) @TypeOf((INT_LEAST16_MAX - INT_LEAST16_MAX) + val) {
    return (INT_LEAST16_MAX - INT_LEAST16_MAX) + val;
}

pub inline fn INT32_C(val: anytype) @TypeOf((INT_LEAST32_MAX - INT_LEAST32_MAX) + val) {
    return (INT_LEAST32_MAX - INT_LEAST32_MAX) + val;
}

pub inline fn UINT8_C(val: anytype) @TypeOf(val) {
    return val;
}

pub inline fn UINT16_C(val: anytype) @TypeOf(val) {
    return val;
}

pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;

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

pub inline fn ECS_PAIR_FIRST(e: anytype) @TypeOf(ecs_entity_t_hi(e & ECS_COMPONENT_MASK)) {
    return ecs_entity_t_hi(e & ECS_COMPONENT_MASK);
}

pub inline fn ECS_PAIR_SECOND(e: anytype) @TypeOf(ecs_entity_t_lo(e)) {
    return ecs_entity_t_lo(e);
}

pub const ECS_PAIR_RELATION = ECS_PAIR_FIRST;

pub const ECS_PAIR_OBJECT = ECS_PAIR_SECOND;

pub inline fn ECS_HAS_PAIR_OBJECT(e: anytype, rel: anytype, obj: anytype) @TypeOf((ECS_HAS_RELATION(e, rel) != 0) and (ECS_PAIR_SECOND(e) == obj)) {
    return (ECS_HAS_RELATION(e, rel) != 0) and (ECS_PAIR_SECOND(e) == obj);
}

pub inline fn ECS_HAS(id: anytype, has_id: anytype) @TypeOf((id == has_id) or (ECS_HAS_PAIR_OBJECT(id, ECS_PAIR_FIRST(has_id), ECS_PAIR_SECOND(has_id)) != 0)) {
    return (id == has_id) or (ECS_HAS_PAIR_OBJECT(id, ECS_PAIR_FIRST(has_id), ECS_PAIR_SECOND(has_id)) != 0);
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

pub const ECS_ID_ACYCLIC = @as(c_uint, 1) << @as(c_int, 8);

pub const ECS_ID_TAG = @as(c_uint, 1) << @as(c_int, 9);

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

pub inline fn ecs_pair_first(world: anytype, pair: anytype) @TypeOf(ecs_get_alive(world, ECS_PAIR_FIRST(pair))) {
    return ecs_get_alive(world, ECS_PAIR_FIRST(pair));
}

pub inline fn ecs_pair_second(world: anytype, pair: anytype) @TypeOf(ecs_get_alive(world, ECS_PAIR_SECOND(pair))) {
    return ecs_get_alive(world, ECS_PAIR_SECOND(pair));
}

pub const ecs_pair_relation = ecs_pair_first;

pub const ecs_pair_object = ecs_pair_second;

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

pub inline fn ecs_vector_insert_at_t(vector: anytype, size: anytype, alignment: anytype, index: anytype) @TypeOf(_ecs_vector_insert_at(vector, ECS_VECTOR_U(size, alignment), index)) {
    return _ecs_vector_insert_at(vector, ECS_VECTOR_U(size, alignment), index);
}

pub inline fn ecs_vector_addn_t(vector: anytype, size: anytype, alignment: anytype, elem_count: anytype) @TypeOf(_ecs_vector_addn(vector, ECS_VECTOR_U(size, alignment), elem_count)) {
    return _ecs_vector_addn(vector, ECS_VECTOR_U(size, alignment), elem_count);
}

pub inline fn ecs_vector_get_t(vector: anytype, size: anytype, alignment: anytype, index: anytype) @TypeOf(_ecs_vector_get(vector, ECS_VECTOR_U(size, alignment), index)) {
    return _ecs_vector_get(vector, ECS_VECTOR_U(size, alignment), index);
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

pub inline fn ecs_vector_move_index(dst: anytype, src: anytype, T: anytype, index: anytype) @TypeOf(_ecs_vector_move_index(dst, src, ECS_VECTOR_T(T), index)) {
    return _ecs_vector_move_index(dst, src, ECS_VECTOR_T(T), index);
}

pub inline fn ecs_vector_move_index_t(dst: anytype, src: anytype, size: anytype, alignment: anytype, index: anytype) @TypeOf(_ecs_vector_move_index(dst, src, ECS_VECTOR_U(size, alignment), index)) {
    return _ecs_vector_move_index(dst, src, ECS_VECTOR_U(size, alignment), index);
}

pub inline fn ecs_vector_remove(vector: anytype, T: anytype, index: anytype) @TypeOf(_ecs_vector_remove(vector, ECS_VECTOR_T(T), index)) {
    return _ecs_vector_remove(vector, ECS_VECTOR_T(T), index);
}

pub inline fn ecs_vector_remove_t(vector: anytype, size: anytype, alignment: anytype, index: anytype) @TypeOf(_ecs_vector_remove(vector, ECS_VECTOR_U(size, alignment), index)) {
    return _ecs_vector_remove(vector, ECS_VECTOR_U(size, alignment), index);
}

pub inline fn ecs_vector_reclaim(vector: anytype, T: anytype) @TypeOf(_ecs_vector_reclaim(vector, ECS_VECTOR_T(T))) {
    return _ecs_vector_reclaim(vector, ECS_VECTOR_T(T));
}

pub inline fn ecs_vector_reclaim_t(vector: anytype, size: anytype, alignment: anytype) @TypeOf(_ecs_vector_reclaim(vector, ECS_VECTOR_U(size, alignment))) {
    return _ecs_vector_reclaim(vector, ECS_VECTOR_U(size, alignment));
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

pub inline fn ecs_map_init(map: anytype, T: anytype, elem_count: anytype) @TypeOf(_ecs_map_init(map, @import("std").zig.c_translation.sizeof(T), elem_count)) {
    _ = T;

    return _ecs_map_init(map, @import("std").zig.c_translation.sizeof(T), elem_count);
}

pub inline fn ecs_map_new(T: anytype, elem_count: anytype) @TypeOf(_ecs_map_new(@import("std").zig.c_translation.sizeof(T), elem_count)) {
    _ = T;

    return _ecs_map_new(@import("std").zig.c_translation.sizeof(T), elem_count);
}

pub inline fn ecs_map_get_ptr(map: anytype, T: anytype, key: anytype) @TypeOf(T ++ _ecs_map_get_ptr(map, key)) {
    return T ++ _ecs_map_get_ptr(map, key);
}

pub inline fn ecs_map_set_ptr(map: anytype, key: anytype, payload: anytype) @TypeOf(_ecs_map_set(map, @import("std").zig.c_translation.sizeof(payload), @import("std").zig.c_translation.cast(ecs_map_key_t, key), &payload)) {
    return _ecs_map_set(map, @import("std").zig.c_translation.sizeof(payload), @import("std").zig.c_translation.cast(ecs_map_key_t, key), &payload);
}

pub inline fn ecs_map_next_ptr(iter: anytype, T: anytype, key: anytype) @TypeOf(T ++ _ecs_map_next_ptr(iter, key)) {
    return T ++ _ecs_map_next_ptr(iter, key);
}

pub const FLECS_STRBUF_H_ = "";

pub const ECS_STRBUF_INIT = @import("std").mem.zeroInit(ecs_strbuf_t, .{@as(c_int, 0)});

pub const ECS_STRBUF_ELEMENT_SIZE = @as(c_int, 511);

pub const ECS_STRBUF_MAX_LIST_DEPTH = @as(c_int, 32);

pub const FLECS_OS_API_H = "";

pub const _INC_ERRNO = "";

pub const _CRT_ERRNO_DEFINED = "";

pub const errno = _errno().*;

pub const EPERM = @as(c_int, 1);

pub const ENOENT = @as(c_int, 2);

pub const ENOFILE = ENOENT;

pub const ESRCH = @as(c_int, 3);

pub const EINTR = @as(c_int, 4);

pub const EIO = @as(c_int, 5);

pub const ENXIO = @as(c_int, 6);

pub const E2BIG = @as(c_int, 7);

pub const ENOEXEC = @as(c_int, 8);

pub const EBADF = @as(c_int, 9);

pub const ECHILD = @as(c_int, 10);

pub const EAGAIN = @as(c_int, 11);

pub const ENOMEM = @as(c_int, 12);

pub const EACCES = @as(c_int, 13);

pub const EFAULT = @as(c_int, 14);

pub const EBUSY = @as(c_int, 16);

pub const EEXIST = @as(c_int, 17);

pub const EXDEV = @as(c_int, 18);

pub const ENODEV = @as(c_int, 19);

pub const ENOTDIR = @as(c_int, 20);

pub const EISDIR = @as(c_int, 21);

pub const ENFILE = @as(c_int, 23);

pub const EMFILE = @as(c_int, 24);

pub const ENOTTY = @as(c_int, 25);

pub const EFBIG = @as(c_int, 27);

pub const ENOSPC = @as(c_int, 28);

pub const ESPIPE = @as(c_int, 29);

pub const EROFS = @as(c_int, 30);

pub const EMLINK = @as(c_int, 31);

pub const EPIPE = @as(c_int, 32);

pub const EDOM = @as(c_int, 33);

pub const EDEADLK = @as(c_int, 36);

pub const ENAMETOOLONG = @as(c_int, 38);

pub const ENOLCK = @as(c_int, 39);

pub const ENOSYS = @as(c_int, 40);

pub const ENOTEMPTY = @as(c_int, 41);

pub const _SECURECRT_ERRCODE_VALUES_DEFINED = "";

pub const EINVAL = @as(c_int, 22);

pub const ERANGE = @as(c_int, 34);

pub const EILSEQ = @as(c_int, 42);

pub const STRUNCATE = @as(c_int, 80);

pub const EDEADLOCK = EDEADLK;

pub const ENOTSUP = @as(c_int, 129);

pub const EAFNOSUPPORT = @as(c_int, 102);

pub const EADDRINUSE = @as(c_int, 100);

pub const EADDRNOTAVAIL = @as(c_int, 101);

pub const EISCONN = @as(c_int, 113);

pub const ENOBUFS = @as(c_int, 119);

pub const ECONNABORTED = @as(c_int, 106);

pub const EALREADY = @as(c_int, 103);

pub const ECONNREFUSED = @as(c_int, 107);

pub const ECONNRESET = @as(c_int, 108);

pub const EDESTADDRREQ = @as(c_int, 109);

pub const EHOSTUNREACH = @as(c_int, 110);

pub const EMSGSIZE = @as(c_int, 115);

pub const ENETDOWN = @as(c_int, 116);

pub const ENETRESET = @as(c_int, 117);

pub const ENETUNREACH = @as(c_int, 118);

pub const ENOPROTOOPT = @as(c_int, 123);

pub const ENOTSOCK = @as(c_int, 128);

pub const ENOTCONN = @as(c_int, 126);

pub const ECANCELED = @as(c_int, 105);

pub const EINPROGRESS = @as(c_int, 112);

pub const EOPNOTSUPP = @as(c_int, 130);

pub const EWOULDBLOCK = @as(c_int, 140);

pub const EOWNERDEAD = @as(c_int, 133);

pub const EPROTO = @as(c_int, 134);

pub const EPROTONOSUPPORT = @as(c_int, 135);

pub const EBADMSG = @as(c_int, 104);

pub const EIDRM = @as(c_int, 111);

pub const ENODATA = @as(c_int, 120);

pub const ENOLINK = @as(c_int, 121);

pub const ENOMSG = @as(c_int, 122);

pub const ENOSR = @as(c_int, 124);

pub const ENOSTR = @as(c_int, 125);

pub const ENOTRECOVERABLE = @as(c_int, 127);

pub const ETIME = @as(c_int, 137);

pub const ETXTBSY = @as(c_int, 139);

pub const ETIMEDOUT = @as(c_int, 138);

pub const ELOOP = @as(c_int, 114);

pub const EPROTOTYPE = @as(c_int, 136);

pub const EOVERFLOW = @as(c_int, 132);

pub const _MALLOC_H_ = "";

pub const _HEAP_MAXREQ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFFFFFFFFFFFFE0, .hexadecimal);

pub const _HEAPEMPTY = -@as(c_int, 1);

pub const _HEAPOK = -@as(c_int, 2);

pub const _HEAPBADBEGIN = -@as(c_int, 3);

pub const _HEAPBADNODE = -@as(c_int, 4);

pub const _HEAPEND = -@as(c_int, 5);

pub const _HEAPBADPTR = -@as(c_int, 6);

pub const _FREEENTRY = @as(c_int, 0);

pub const _USEDENTRY = @as(c_int, 1);

pub const _HEAPINFO_DEFINED = "";

pub const _CRT_ALLOCATION_DEFINED = "";

pub const __MM_MALLOC_H = "";

pub const _INC_STDLIB = "";

pub const _INC_CORECRT_WSTDLIB = "";

pub const __CLANG_LIMITS_H = "";

pub const _GCC_LIMITS_H_ = "";

pub const _INC_LIMITS = "";

pub const PATH_MAX = @as(c_int, 260);

pub const CHAR_BIT = @as(c_int, 8);

pub const SCHAR_MIN = -@as(c_int, 128);

pub const SCHAR_MAX = @as(c_int, 127);

pub const UCHAR_MAX = @as(c_int, 0xff);

pub const CHAR_MIN = SCHAR_MIN;

pub const CHAR_MAX = SCHAR_MAX;

pub const MB_LEN_MAX = @as(c_int, 5);

pub const SHRT_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);

pub const SHRT_MAX = @as(c_int, 32767);

pub const USHRT_MAX = @as(c_uint, 0xffff);

pub const INT_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);

pub const INT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);

pub const UINT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xffffffff, .hexadecimal);

pub const LONG_MIN = -@as(c_long, 2147483647) - @as(c_int, 1);

pub const LONG_MAX = @as(c_long, 2147483647);

pub const ULONG_MAX = @as(c_ulong, 0xffffffff);

pub const LLONG_MAX = @as(c_longlong, 9223372036854775807);

pub const LLONG_MIN = -@as(c_longlong, 9223372036854775807) - @as(c_int, 1);

pub const ULLONG_MAX = @as(c_ulonglong, 0xffffffffffffffff);

pub const _I8_MIN = -@as(c_int, 127) - @as(c_int, 1);

pub const _I8_MAX = @as(c_int, 127);

pub const _UI8_MAX = @as(c_uint, 0xff);

pub const _I16_MIN = -@as(c_int, 32767) - @as(c_int, 1);

pub const _I16_MAX = @as(c_int, 32767);

pub const _UI16_MAX = @as(c_uint, 0xffff);

pub const _I32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);

pub const _I32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);

pub const _UI32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xffffffff, .hexadecimal);

pub const LONG_LONG_MAX = @as(c_longlong, 9223372036854775807);

pub const LONG_LONG_MIN = -LONG_LONG_MAX - @as(c_int, 1);

pub const ULONG_LONG_MAX = (@as(c_ulonglong, 2) * LONG_LONG_MAX) + @as(c_ulonglong, 1);

pub const _I64_MIN = -@as(c_longlong, 9223372036854775807) - @as(c_int, 1);

pub const _I64_MAX = @as(c_longlong, 9223372036854775807);

pub const _UI64_MAX = @as(c_ulonglong, 0xffffffffffffffff);

pub const SSIZE_MAX = _I64_MAX;

pub const __USE_MINGW_STRTOX = @as(c_int, 1);

pub const EXIT_SUCCESS = @as(c_int, 0);

pub const EXIT_FAILURE = @as(c_int, 1);

pub const _ONEXIT_T_DEFINED = "";

pub const onexit_t = _onexit_t;

pub const _DIV_T_DEFINED = "";

pub const _CRT_DOUBLE_DEC = "";

pub inline fn _PTR_LD(x: anytype) [*c]u8 {
    return @import("std").zig.c_translation.cast([*c]u8, &x.*.ld);
}

pub const RAND_MAX = @as(c_int, 0x7fff);

pub const MB_CUR_MAX = ___mb_cur_max_func();

pub const __mb_cur_max = ___mb_cur_max_func();

pub inline fn __max(a: anytype, b: anytype) @TypeOf(if (a > b) a else b) {
    return if (a > b) a else b;
}

pub inline fn __min(a: anytype, b: anytype) @TypeOf(if (a < b) a else b) {
    return if (a < b) a else b;
}

pub const _MAX_PATH = @as(c_int, 260);

pub const _MAX_DRIVE = @as(c_int, 3);

pub const _MAX_DIR = @as(c_int, 256);

pub const _MAX_FNAME = @as(c_int, 256);

pub const _MAX_EXT = @as(c_int, 256);

pub const _OUT_TO_DEFAULT = @as(c_int, 0);

pub const _OUT_TO_STDERR = @as(c_int, 1);

pub const _OUT_TO_MSGBOX = @as(c_int, 2);

pub const _REPORT_ERRMODE = @as(c_int, 3);

pub const _WRITE_ABORT_MSG = @as(c_int, 0x1);

pub const _CALL_REPORTFAULT = @as(c_int, 0x2);

pub const _MAX_ENV = @as(c_int, 32767);

pub const _doserrno = __doserrno().*;

pub const _fmode = __p__fmode().*;

pub const __argc = __MINGW_IMP_SYMBOL(__argc).*;

pub const __argv = __p___argv().*;

pub const __wargv = __MINGW_IMP_SYMBOL(__wargv).*;

pub const _environ = __MINGW_IMP_SYMBOL(_environ).*;

pub const _wenviron = __MINGW_IMP_SYMBOL(_wenviron).*;

pub const _pgmptr = __MINGW_IMP_SYMBOL(_pgmptr).*;

pub const _wpgmptr = __MINGW_IMP_SYMBOL(_wpgmptr).*;

pub const _osplatform = __MINGW_IMP_SYMBOL(_osplatform).*;

pub const _osver = __MINGW_IMP_SYMBOL(_osver).*;

pub const _winver = __MINGW_IMP_SYMBOL(_winver).*;

pub const _winmajor = __MINGW_IMP_SYMBOL(_winmajor).*;

pub const _winminor = __MINGW_IMP_SYMBOL(_winminor).*;

pub const _CRT_TERMINATE_DEFINED = "";

pub const _CRT_ABS_DEFINED = "";

pub const _CRT_ATOF_DEFINED = "";

pub const _CRT_ALGO_DEFINED = "";

pub const _CRT_SYSTEM_DEFINED = "";

pub const _WSTDLIB_DEFINED = "";

pub const _CRT_WSYSTEM_DEFINED = "";

pub const _CVTBUFSIZE = @as(c_int, 309) + @as(c_int, 40);

pub const _CRT_PERROR_DEFINED = "";

pub const _WSTDLIBP_DEFINED = "";

pub const _CRT_WPERROR_DEFINED = "";

pub const sys_errlist = _sys_errlist;

pub const sys_nerr = _sys_nerr;

pub const environ = _environ;

pub const _CRT_SWAB_DEFINED = "";

pub const _INC_STDLIB_S = "";

pub const _QSORT_S_DEFINED = "";

pub const _MAX_WAIT_MALLOC_CRT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60000, .decimal);

pub const _ALLOCA_S_THRESHOLD = @as(c_int, 1024);

pub const _ALLOCA_S_STACK_MARKER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xCCCC, .hexadecimal);

pub const _ALLOCA_S_HEAP_MARKER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xDDDD, .hexadecimal);

pub const _ALLOCA_S_MARKER_SIZE = @as(c_int, 16);

pub inline fn _malloca(size: anytype) @TypeOf(if ((size + _ALLOCA_S_MARKER_SIZE) <= _ALLOCA_S_THRESHOLD) _MarkAllocaS(_alloca(size + _ALLOCA_S_MARKER_SIZE), _ALLOCA_S_STACK_MARKER) else _MarkAllocaS(malloc(size + _ALLOCA_S_MARKER_SIZE), _ALLOCA_S_HEAP_MARKER)) {
    return if ((size + _ALLOCA_S_MARKER_SIZE) <= _ALLOCA_S_THRESHOLD) _MarkAllocaS(_alloca(size + _ALLOCA_S_MARKER_SIZE), _ALLOCA_S_STACK_MARKER) else _MarkAllocaS(malloc(size + _ALLOCA_S_MARKER_SIZE), _ALLOCA_S_HEAP_MARKER);
}

pub const _FREEA_INLINE = "";

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

pub inline fn ecs_os_alloca(size: anytype) @TypeOf(_alloca(@import("std").zig.c_translation.cast(usize, size))) {
    return _alloca(@import("std").zig.c_translation.cast(usize, size));
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

pub inline fn ecs_os_memcmp_t(ptr1: anytype, ptr2: anytype, T: anytype) @TypeOf(ecs_os_memcmp(ptr1, ptr2, ECS_SIZEOF(T))) {
    return ecs_os_memcmp(ptr1, ptr2, ECS_SIZEOF(T));
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

pub const ECS_ID_CACHE_SIZE = @as(c_int, 32);

pub const ECS_TERM_CACHE_SIZE = @as(c_int, 4);

pub const ECS_TERM_DESC_CACHE_SIZE = @as(c_int, 16);

pub const ECS_TRIGGER_DESC_EVENT_COUNT_MAX = @as(c_int, 8);

pub const ECS_VARIABLE_COUNT_MAX = @as(c_int, 64);

pub const ECS_VARIABLE_CACHE_SIZE = @as(c_int, 4);

pub const EcsDefaultSet = @as(c_int, 0);

pub const EcsSelf = @as(c_int, 1);

pub const EcsSuperSet = @as(c_int, 2);

pub const EcsSubSet = @as(c_int, 4);

pub const EcsCascade = @as(c_int, 8);

pub const EcsAll = @as(c_int, 16);

pub const EcsParent = @as(c_int, 32);

pub const EcsNothing = @as(c_int, 64);

pub const EcsFilterMatchThis = @as(c_uint, 1) << @as(c_uint, 1);

pub const EcsFilterMatchOnlyThis = @as(c_uint, 1) << @as(c_uint, 2);

pub const EcsFilterMatchPrefab = @as(c_uint, 1) << @as(c_uint, 3);

pub const EcsFilterMatchDisabled = @as(c_uint, 1) << @as(c_uint, 4);

pub const EcsFilterMatchEmptyTables = @as(c_uint, 1) << @as(c_uint, 5);

pub const EcsFilterMatchAnything = @as(c_uint, 1) << @as(c_uint, 6);

pub const EcsFilterIsFilter = @as(c_uint, 1) << @as(c_uint, 7);

pub const EcsFilterIsInstanced = @as(c_uint, 1) << @as(c_uint, 8);

pub const FLECS_API_TYPES_H = "";

pub const flecs_iter_cache_ids = @as(c_uint, 1) << @as(c_uint, 0);

pub const flecs_iter_cache_columns = @as(c_uint, 1) << @as(c_uint, 1);

pub const flecs_iter_cache_subjects = @as(c_uint, 1) << @as(c_uint, 2);

pub const flecs_iter_cache_sizes = @as(c_uint, 1) << @as(c_uint, 3);

pub const flecs_iter_cache_ptrs = @as(c_uint, 1) << @as(c_uint, 4);

pub const flecs_iter_cache_match_indices = @as(c_uint, 1) << @as(c_uint, 5);

pub const flecs_iter_cache_variables = @as(c_uint, 1) << @as(c_uint, 6);

pub const flecs_iter_cache_all = @as(c_int, 255);

pub const EcsIterIsValid = @as(c_uint, 1) << @as(c_uint, 0);

pub const EcsIterIsFilter = @as(c_uint, 1) << @as(c_uint, 1);

pub const EcsIterIsInstanced = @as(c_uint, 1) << @as(c_uint, 2);

pub const EcsIterHasShared = @as(c_uint, 1) << @as(c_uint, 3);

pub const EcsIterTableOnly = @as(c_uint, 1) << @as(c_uint, 4);

pub const EcsIterEntityOptional = @as(c_uint, 1) << @as(c_uint, 5);

pub const EcsIterNoResults = @as(c_uint, 1) << @as(c_uint, 6);

pub const EcsIterIgnoreThis = @as(c_uint, 1) << @as(c_uint, 7);

pub const FLECS_API_SUPPORT_H = "";

pub const ECS_HI_COMPONENT_ID = @as(c_int, 256);

pub const ECS_MAX_RECURSION = @as(c_int, 512);

pub const ECS_MAX_TOKEN_SIZE = @as(c_int, 256);

pub const FLECS__E0 = @as(c_int, 0);

pub inline fn ECS_OFFSET(o: anytype, offset: anytype) ?*anyopaque {
    return @import("std").zig.c_translation.cast(?*anyopaque, @import("std").zig.c_translation.cast(usize, o) + @import("std").zig.c_translation.cast(usize, offset));
}

pub inline fn ECS_ELEM(ptr: anytype, size: anytype, index: anytype) @TypeOf(ECS_OFFSET(ptr, size * index)) {
    return ECS_OFFSET(ptr, size * index);
}

pub inline fn ECS_BIT_COND(flags: anytype, bit: anytype, cond: anytype) @TypeOf(if (cond) ECS_BIT_SET(flags, bit) else ECS_BIT_CLEAR(flags, bit)) {
    return if (cond) ECS_BIT_SET(flags, bit) else ECS_BIT_CLEAR(flags, bit);
}

pub inline fn ECS_BIT_IS_SET(flags: anytype, bit: anytype) @TypeOf(flags & bit) {
    return flags & bit;
}

pub const FLECS_SPARSE_H = "";

pub inline fn flecs_sparse_init(sparse: anytype, T: anytype) @TypeOf(_flecs_sparse_init(sparse, ECS_SIZEOF(T))) {
    return _flecs_sparse_init(sparse, ECS_SIZEOF(T));
}

pub inline fn flecs_sparse_new(T: anytype) @TypeOf(_flecs_sparse_new(ECS_SIZEOF(T))) {
    return _flecs_sparse_new(ECS_SIZEOF(T));
}

pub inline fn flecs_sparse_fini(sparse: anytype) @TypeOf(_flecs_sparse_fini(sparse)) {
    return _flecs_sparse_fini(sparse);
}

pub inline fn flecs_sparse_iter(sparse: anytype, T: anytype) @TypeOf(_flecs_sparse_iter(sparse, ECS_SIZEOF(T))) {
    return _flecs_sparse_iter(sparse, ECS_SIZEOF(T));
}

pub inline fn ecs_sparse_new(T: anytype) @TypeOf(_ecs_sparse_new(ECS_SIZEOF(T))) {
    return _ecs_sparse_new(ECS_SIZEOF(T));
}

pub const FLECS_HASHMAP_H = "";

pub inline fn flecs_hashmap_init(hm: anytype, K: anytype, V: anytype, compare: anytype, hash: anytype) @TypeOf(_flecs_hashmap_init(hm, ECS_SIZEOF(K), ECS_SIZEOF(V), compare, hash)) {
    return _flecs_hashmap_init(hm, ECS_SIZEOF(K), ECS_SIZEOF(V), compare, hash);
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

pub const ecs_set_pair_object = ecs_set_pair_second;

pub const ecs_get_pair_object = ecs_get_pair_second;

pub inline fn ecs_ref_init(world: anytype, entity: anytype, T: anytype) @TypeOf(ecs_ref_init_id(world, entity, ecs_id(T))) {
    return ecs_ref_init_id(world, entity, ecs_id(T));
}

pub const ecs_get_mut_pair_object = ecs_get_mut_pair_second;

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

pub inline fn ecs_query_table_count(query: anytype) @TypeOf(query.*.cache.tables.count) {
    return query.*.cache.tables.count;
}

pub inline fn ecs_query_empty_table_count(query: anytype) @TypeOf(query.*.cache.empty_tables.count) {
    return query.*.cache.empty_tables.count;
}

pub inline fn ecs_term_id(it: anytype, index: anytype) @TypeOf(it.*.ids[index - @as(c_int, 1)]) {
    return it.*.ids[index - @as(c_int, 1)];
}

pub inline fn ecs_term_source(it: anytype, index: anytype) @TypeOf(if (it.*.subjects) it.*.subjects[index - @as(c_int, 1)] else @as(c_int, 0)) {
    return if (it.*.subjects) it.*.subjects[index - @as(c_int, 1)] else @as(c_int, 0);
}

pub inline fn ecs_term_size(it: anytype, index: anytype) @TypeOf(if (index == @as(c_int, 0)) @import("std").zig.c_translation.sizeof(ecs_entity_t) else ECS_CAST(usize, it.*.sizes[index - @as(c_int, 1)])) {
    return if (index == @as(c_int, 0)) @import("std").zig.c_translation.sizeof(ecs_entity_t) else ECS_CAST(usize, it.*.sizes[index - @as(c_int, 1)]);
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

pub const FLECS_ADDONS_H = "";

pub const FLECS_LOG_H = "";

pub const FLECS_LOG_3 = "";

pub inline fn ecs_should_log_1() @TypeOf(ecs_should_log(@as(c_int, 1))) {
    return ecs_should_log(@as(c_int, 1));
}

pub inline fn ecs_should_log_2() @TypeOf(ecs_should_log(@as(c_int, 2))) {
    return ecs_should_log(@as(c_int, 2));
}

pub inline fn ecs_should_log_3() @TypeOf(ecs_should_log(@as(c_int, 3))) {
    return ecs_should_log(@as(c_int, 3));
}

pub const FLECS_LOG_2 = "";

pub const FLECS_LOG_1 = "";

pub const FLECS_LOG_0 = "";

pub const ecs_dbg = ecs_dbg_1;

pub inline fn ecs_log_push() @TypeOf(_ecs_log_push(@as(c_int, 0))) {
    return _ecs_log_push(@as(c_int, 0));
}

pub inline fn ecs_log_pop() @TypeOf(_ecs_log_pop(@as(c_int, 0))) {
    return _ecs_log_pop(@as(c_int, 0));
}

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

pub const ECS_ALREADY_IN_USE = @as(c_int, 30);

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

pub const FLECS_APP_H = "";

pub const FLECS_REST_H = "";

pub const ECS_REST_DEFAULT_PORT = @as(c_int, 27750);

pub const FLECS_TIMER_H = "";

pub const FLECS_PIPELINE_H = "";

pub const FLECS_SYSTEM_H = "";

pub const FLECS_COREDOC_H = "";

pub const FLECS_DOC_H = "";

pub const FLECS_JSON_H = "";

pub const ECS_ENTITY_TO_JSON_INIT = @import("std").mem.zeroInit(ecs_entity_to_json_desc_t, .{ @"true", @"false", @"false", @"false", @"false", @"false", @"true", @"false", @"false", @"false", @"false" });

pub const ECS_ITER_TO_JSON_INIT = @import("std").mem.zeroInit(ecs_iter_to_json_desc_t, .{ @"true", @"true", @"true", @"true", @"true", @"true", @"true", @"false", @"false", @"false", @"false" });

pub const FLECS_UNITS_H = "";

pub const __STDDEF_H = "";

pub const __need_ptrdiff_t = "";

pub const __need_size_t = "";

pub const __need_NULL = "";

pub const __need_STDDEF_H_misc = "";

pub const _PTRDIFF_T = "";

pub const _SIZE_T = "";

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

pub const FLECS_CPP_H = "";

pub const tagLC_ID = struct_tagLC_ID;

pub const lconv = struct_lconv;

pub const __lc_time_data = struct___lc_time_data;

pub const threadlocaleinfostruct = struct_threadlocaleinfostruct;

pub const threadmbcinfostruct = struct_threadmbcinfostruct;

pub const localeinfo_struct = struct_localeinfo_struct;

pub const _heapinfo = struct__heapinfo;

pub const _div_t = struct__div_t;

pub const _ldiv_t = struct__ldiv_t;

pub const ecs_table_record_t = struct_ecs_table_record_t;

pub const ecs_table_cache_hdr_t = struct_ecs_table_cache_hdr_t;

pub const ecs_rule_op_ctx_t = struct_ecs_rule_op_ctx_t;
