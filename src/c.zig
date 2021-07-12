
const ecs_iter_t = @import("flecs.zig").ecs_iter_t;
pub const ecs_flags32_t = u32;
pub const ecs_flags64_t = u64;
pub const ecs_size_t = i32;
pub extern fn _ecs_trace(level: c_int, file: [*c]const u8, line: i32, fmt: [*c]const u8, ...) void;
pub extern fn _ecs_warn(file: [*c]const u8, line: i32, fmt: [*c]const u8, ...) void;
pub extern fn _ecs_err(file: [*c]const u8, line: i32, fmt: [*c]const u8, ...) void;
pub extern fn _ecs_deprecated(file: [*c]const u8, line: i32, msg: [*c]const u8) void;
pub extern fn ecs_log_push() void;
pub extern fn ecs_log_pop() void;
pub extern fn ecs_strerror(error_code: i32) [*c]const u8;
pub extern fn _ecs_abort(error_code: i32, param: [*c]const u8, file: [*c]const u8, line: i32) void;
pub extern fn _ecs_assert(condition: bool, error_code: i32, param: [*c]const u8, condition_str: [*c]const u8, file: [*c]const u8, line: i32) void;
pub extern fn _ecs_parser_error(name: [*c]const u8, expr: [*c]const u8, column: i64, fmt: [*c]const u8, ...) void;
pub const struct_ecs_vector_t = extern struct {
    count: i32,
    size: i32,
    elem_size: i64,
};
pub const ecs_vector_t = struct_ecs_vector_t;
pub const ecs_comparator_t = ?fn (?*const c_void, ?*const c_void) callconv(.C) c_int;
pub extern fn _ecs_vector_new(elem_size: ecs_size_t, offset: i16, elem_count: i32) [*c]ecs_vector_t;
pub extern fn _ecs_vector_from_array(elem_size: ecs_size_t, offset: i16, elem_count: i32, array: ?*c_void) [*c]ecs_vector_t;
pub extern fn _ecs_vector_zero(vector: [*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16) void;
pub extern fn ecs_vector_free(vector: [*c]ecs_vector_t) void;
pub extern fn ecs_vector_clear(vector: [*c]ecs_vector_t) void;
pub extern fn ecs_vector_assert_size(vector_inout: [*c]ecs_vector_t, elem_size: ecs_size_t) void;
pub extern fn ecs_vector_assert_alignment(vector: [*c]ecs_vector_t, elem_alignment: ecs_size_t) void;
pub extern fn _ecs_vector_add(array_inout: [*c][*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16) ?*c_void;
pub extern fn _ecs_vector_addn(array_inout: [*c][*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16, elem_count: i32) ?*c_void;
pub extern fn _ecs_vector_get(vector: [*c]const ecs_vector_t, elem_size: ecs_size_t, offset: i16, index: i32) ?*c_void;
pub extern fn _ecs_vector_last(vector: [*c]const ecs_vector_t, elem_size: ecs_size_t, offset: i16) ?*c_void;
pub extern fn _ecs_vector_set_min_size(array_inout: [*c][*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16, elem_count: i32) i32;
pub extern fn _ecs_vector_set_min_count(vector_inout: [*c][*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16, elem_count: i32) i32;
pub extern fn ecs_vector_remove_last(vector: [*c]ecs_vector_t) void;
pub extern fn _ecs_vector_pop(vector: [*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16, value: ?*c_void) bool;
pub extern fn _ecs_vector_move_index(dst: [*c][*c]ecs_vector_t, src: [*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16, index: i32) i32;
pub extern fn _ecs_vector_remove(vector: [*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16, index: i32) i32;
pub extern fn _ecs_vector_reclaim(vector: [*c][*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16) void;
pub extern fn _ecs_vector_grow(vector: [*c][*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16, elem_count: i32) i32;
pub extern fn _ecs_vector_set_size(vector: [*c][*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16, elem_count: i32) i32;
pub extern fn _ecs_vector_set_count(vector: [*c][*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16, elem_count: i32) i32;
pub extern fn ecs_vector_count(vector: [*c]const ecs_vector_t) i32;
pub extern fn ecs_vector_size(vector: [*c]const ecs_vector_t) i32;
pub extern fn _ecs_vector_first(vector: [*c]const ecs_vector_t, elem_size: ecs_size_t, offset: i16) ?*c_void;
pub extern fn _ecs_vector_sort(vector: [*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16, compare_action: ecs_comparator_t) void;
pub extern fn _ecs_vector_memory(vector: [*c]const ecs_vector_t, elem_size: ecs_size_t, offset: i16, allocd: [*c]i32, used: [*c]i32) void;
pub extern fn _ecs_vector_copy(src: [*c]const ecs_vector_t, elem_size: ecs_size_t, offset: i16) [*c]ecs_vector_t;
pub const struct_ecs_map_t = opaque {};
pub const ecs_map_t = struct_ecs_map_t;
pub const ecs_map_key_t = u64;
pub const struct_ecs_bucket_t = opaque {};
pub const struct_ecs_map_iter_t = extern struct {
    map: ?*const ecs_map_t,
    bucket: ?*struct_ecs_bucket_t,
    bucket_index: i32,
    element_index: i32,
    payload: ?*c_void,
};
pub const ecs_map_iter_t = struct_ecs_map_iter_t;
pub extern fn _ecs_map_new(elem_size: ecs_size_t, alignment: ecs_size_t, elem_count: i32) ?*ecs_map_t;
pub extern fn _ecs_map_get(map: ?*const ecs_map_t, elem_size: ecs_size_t, key: ecs_map_key_t) ?*c_void;
pub extern fn _ecs_map_get_ptr(map: ?*const ecs_map_t, key: ecs_map_key_t) ?*c_void;
pub extern fn _ecs_map_ensure(map: ?*ecs_map_t, elem_size: ecs_size_t, key: ecs_map_key_t) ?*c_void;
pub extern fn _ecs_map_set(map: ?*ecs_map_t, elem_size: ecs_size_t, key: ecs_map_key_t, payload: ?*const c_void) ?*c_void;
pub extern fn ecs_map_free(map: ?*ecs_map_t) void;
pub extern fn ecs_map_remove(map: ?*ecs_map_t, key: ecs_map_key_t) void;
pub extern fn ecs_map_clear(map: ?*ecs_map_t) void;
pub extern fn ecs_map_count(map: ?*const ecs_map_t) i32;
pub extern fn ecs_map_bucket_count(map: ?*const ecs_map_t) i32;
pub extern fn ecs_map_iter(map: ?*const ecs_map_t) ecs_map_iter_t;
pub extern fn _ecs_map_next(iter: [*c]ecs_map_iter_t, elem_size: ecs_size_t, key: [*c]ecs_map_key_t) ?*c_void;
pub extern fn _ecs_map_next_ptr(iter: [*c]ecs_map_iter_t, key: [*c]ecs_map_key_t) ?*c_void;
pub extern fn ecs_map_grow(map: ?*ecs_map_t, elem_count: i32) void;
pub extern fn ecs_map_set_size(map: ?*ecs_map_t, elem_count: i32) void;
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
};
pub const ecs_strbuf_t = struct_ecs_strbuf_t;
pub extern fn ecs_strbuf_append(buffer: [*c]ecs_strbuf_t, fmt: [*c]const u8, ...) bool;
pub extern fn ecs_strbuf_vappend(buffer: [*c]ecs_strbuf_t, fmt: [*c]const u8, args: va_list) bool;
pub extern fn ecs_strbuf_appendstr(buffer: [*c]ecs_strbuf_t, str: [*c]const u8) bool;
pub extern fn ecs_strbuf_mergebuff(dst_buffer: [*c]ecs_strbuf_t, src_buffer: [*c]ecs_strbuf_t) bool;
pub extern fn ecs_strbuf_appendstr_zerocpy(buffer: [*c]ecs_strbuf_t, str: [*c]u8) bool;
pub extern fn ecs_strbuf_appendstr_zerocpy_const(buffer: [*c]ecs_strbuf_t, str: [*c]const u8) bool;
pub extern fn ecs_strbuf_appendstrn(buffer: [*c]ecs_strbuf_t, str: [*c]const u8, n: i32) bool;
pub extern fn ecs_strbuf_get(buffer: [*c]ecs_strbuf_t) [*c]u8;
pub extern fn ecs_strbuf_reset(buffer: [*c]ecs_strbuf_t) void;
pub extern fn ecs_strbuf_list_push(buffer: [*c]ecs_strbuf_t, list_open: [*c]const u8, separator: [*c]const u8) void;
pub extern fn ecs_strbuf_list_pop(buffer: [*c]ecs_strbuf_t, list_close: [*c]const u8) void;
pub extern fn ecs_strbuf_list_next(buffer: [*c]ecs_strbuf_t) void;
pub extern fn ecs_strbuf_list_append(buffer: [*c]ecs_strbuf_t, fmt: [*c]const u8, ...) bool;
pub extern fn ecs_strbuf_list_appendstr(buffer: [*c]ecs_strbuf_t, str: [*c]const u8) bool;
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
pub const ecs_os_proc_t = ?fn () callconv(.C) void;
pub const ecs_os_api_init_t = ?fn () callconv(.C) void;
pub const ecs_os_api_fini_t = ?fn () callconv(.C) void;
pub const ecs_os_api_malloc_t = ?fn (ecs_size_t) callconv(.C) ?*c_void;
pub const ecs_os_api_free_t = ?fn (?*c_void) callconv(.C) void;
pub const ecs_os_api_realloc_t = ?fn (?*c_void, ecs_size_t) callconv(.C) ?*c_void;
pub const ecs_os_api_calloc_t = ?fn (ecs_size_t) callconv(.C) ?*c_void;
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
pub const ecs_os_api_log_t = ?fn ([*c]const u8, va_list) callconv(.C) void;
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
    get_time_: ecs_os_api_get_time_t,
    log_: ecs_os_api_log_t,
    log_error_: ecs_os_api_log_t,
    log_debug_: ecs_os_api_log_t,
    log_warning_: ecs_os_api_log_t,
    abort_: ecs_os_api_abort_t,
    dlopen_: ecs_os_api_dlopen_t,
    dlproc_: ecs_os_api_dlproc_t,
    dlclose_: ecs_os_api_dlclose_t,
    module_to_dl_: ecs_os_api_module_to_path_t,
    module_to_etc_: ecs_os_api_module_to_path_t,
};
pub const ecs_os_api_t = struct_ecs_os_api_t;
pub extern var ecs_os_api: ecs_os_api_t;
pub extern fn ecs_os_init() void;
pub extern fn ecs_os_fini() void;
pub extern fn ecs_os_set_api(os_api: [*c]ecs_os_api_t) void;
pub extern fn ecs_os_set_api_defaults() void;
pub extern fn ecs_os_log(fmt: [*c]const u8, ...) void;
pub extern fn ecs_os_warn(fmt: [*c]const u8, ...) void;
pub extern fn ecs_os_err(fmt: [*c]const u8, ...) void;
pub extern fn ecs_os_dbg(fmt: [*c]const u8, ...) void;
pub extern fn ecs_sleepf(t: f64) void;
pub extern fn ecs_time_measure(start: [*c]ecs_time_t) f64;
pub extern fn ecs_time_sub(t1: ecs_time_t, t2: ecs_time_t) ecs_time_t;
pub extern fn ecs_time_to_double(t: ecs_time_t) f64;
pub extern fn ecs_os_memdup(src: ?*const c_void, size: ecs_size_t) ?*c_void;
pub extern fn ecs_os_has_heap() bool;
pub extern fn ecs_os_has_threading() bool;
pub extern fn ecs_os_has_time() bool;
pub extern fn ecs_os_has_logging() bool;
pub extern fn ecs_os_has_dl() bool;
pub extern fn ecs_os_has_modules() bool;
pub const ecs_id_t = u64;
pub const ecs_entity_t = ecs_id_t;
pub const ecs_type_t = [*c]const ecs_vector_t;
pub const struct_ecs_world_t = opaque {};
pub const ecs_world_t = struct_ecs_world_t;
pub const struct_ecs_query_t = opaque {};
pub const ecs_query_t = struct_ecs_query_t;
pub const EcsInOutDefault: c_int = 0;
pub const EcsInOut: c_int = 1;
pub const EcsIn: c_int = 2;
pub const EcsOut: c_int = 3;
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
    args: [2]ecs_term_id_t,
    oper: ecs_oper_kind_t,
    role: ecs_id_t,
    name: [*c]u8,
    index: i32,
    move: bool,
};
pub const ecs_term_t = struct_ecs_term_t;
pub const EcsMatchDefault: c_int = 0;
pub const EcsMatchAll: c_int = 1;
pub const EcsMatchAny: c_int = 2;
pub const EcsMatchExact: c_int = 3;
pub const enum_ecs_match_kind_t = c_uint;
pub const ecs_match_kind_t = enum_ecs_match_kind_t;
pub const struct_ecs_filter_t = extern struct {
    terms: [*c]ecs_term_t,
    term_count: i32,
    term_count_actual: i32,
    name: [*c]u8,
    expr: [*c]u8,
    include: ecs_type_t,
    exclude: ecs_type_t,
    include_kind: ecs_match_kind_t,
    exclude_kind: ecs_match_kind_t,
};
pub const ecs_filter_t = struct_ecs_filter_t;
pub const EcsQuerySimpleIter: c_int = 0;
pub const EcsQueryPagedIter: c_int = 1;
pub const EcsQuerySortedIter: c_int = 2;
pub const EcsQuerySwitchIter: c_int = 3;
pub const enum_ecs_query_iter_kind_t = c_uint;
pub const ecs_query_iter_kind_t = enum_ecs_query_iter_kind_t;
pub const struct_ecs_table_t = opaque {};
pub const ecs_table_t = struct_ecs_table_t;
pub const struct_ecs_data_t = opaque {};
pub const ecs_data_t = struct_ecs_data_t;
pub const struct_ecs_record_t = extern struct {
    table: ?*ecs_table_t,
    row: i32,
};
pub const ecs_record_t = struct_ecs_record_t;
pub const struct_ecs_ref_t = extern struct {
    entity: ecs_entity_t,
    component: ecs_entity_t,
    table: ?*c_void,
    row: i32,
    alloc_count: i32,
    record: [*c]ecs_record_t,
    ptr: ?*const c_void,
};
pub const ecs_ref_t = struct_ecs_ref_t;
pub const struct_ecs_iter_table_t = extern struct {
    columns: [*c]i32,
    table: ?*ecs_table_t,
    data: ?*ecs_data_t,
    components: [*c]ecs_entity_t,
    types: [*c]ecs_type_t,
    references: [*c]ecs_ref_t,
};
pub const ecs_iter_table_t = struct_ecs_iter_table_t;
pub const struct_ecs_ids_t = extern struct {
    array: [*c]ecs_entity_t,
    count: i32,
};
pub const ecs_ids_t = struct_ecs_ids_t;
pub const struct_ecs_scope_iter_t = extern struct {
    filter: ecs_filter_t,
    tables: ecs_map_iter_t,
    index: i32,
    table: ecs_iter_table_t,
};
pub const ecs_scope_iter_t = struct_ecs_scope_iter_t;
pub const struct_ecs_sparse_t = opaque {};
pub const ecs_sparse_t = struct_ecs_sparse_t;
pub const struct_ecs_filter_iter_t = extern struct {
    filter: ecs_filter_t,
    tables: ?*ecs_sparse_t,
    index: i32,
    table: ecs_iter_table_t,
};
pub const ecs_filter_iter_t = struct_ecs_filter_iter_t;
pub const struct_ecs_page_iter_t = extern struct {
    offset: i32,
    limit: i32,
    remaining: i32,
};
pub const ecs_page_iter_t = struct_ecs_page_iter_t;
pub const struct_ecs_query_iter_t = extern struct {
    page_iter: ecs_page_iter_t,
    index: i32,
    sparse_smallest: i32,
    sparse_first: i32,
    bitset_first: i32,
};
pub const ecs_query_iter_t = struct_ecs_query_iter_t;
pub const struct_ecs_snapshot_iter_t = extern struct {
    filter: ecs_filter_t,
    tables: [*c]ecs_vector_t,
    index: i32,
    table: ecs_iter_table_t,
};
pub const ecs_snapshot_iter_t = struct_ecs_snapshot_iter_t;
const union_unnamed_3 = extern union {
    parent: ecs_scope_iter_t,
    filter: ecs_filter_iter_t,
    query: ecs_query_iter_t,
    snapshot: ecs_snapshot_iter_t,
};


pub const ecs_iter_action_t = ?fn ([*c]ecs_iter_t) callconv(.C) void;
pub const ecs_ctx_free_t = ?fn (?*c_void) callconv(.C) void;
pub const struct_ecs_trigger_t = extern struct {
    term: ecs_term_t,
    events: [8]ecs_entity_t,
    event_count: i32,
    action: ecs_iter_action_t,
    ctx: ?*c_void,
    binding_ctx: ?*c_void,
    ctx_free: ecs_ctx_free_t,
    binding_ctx_free: ecs_ctx_free_t,
    entity: ecs_entity_t,
    self: ecs_entity_t,
    id: u64,
};
pub const ecs_trigger_t = struct_ecs_trigger_t;
pub const struct_ecs_observer_t = extern struct {
    filter: ecs_filter_t,
    triggers: [*c]ecs_entity_t,
    events: [8]ecs_entity_t,
    event_count: i32,
    action: ecs_iter_action_t,
    ctx: ?*c_void,
    binding_ctx: ?*c_void,
    ctx_free: ecs_ctx_free_t,
    binding_ctx_free: ecs_ctx_free_t,
    entity: ecs_entity_t,
    self: ecs_entity_t,
    id: u64,
};
pub const ecs_observer_t = struct_ecs_observer_t;
pub const ecs_iter_next_action_t = ?fn ([*c]ecs_iter_t) callconv(.C) bool;
pub const ecs_rank_type_action_t = ?fn (?*ecs_world_t, ecs_entity_t, ecs_type_t) callconv(.C) i32;
pub const ecs_module_action_t = ?fn (?*ecs_world_t) callconv(.C) void;
pub const ecs_fini_action_t = ?fn (?*ecs_world_t, ?*c_void) callconv(.C) void;
pub const ecs_compare_value_action_t = ?fn (?*const c_void, ?*const c_void) callconv(.C) c_int;
pub const ecs_hash_value_action_t = ?fn (?*const c_void) callconv(.C) u64;
pub const ecs_compare_action_t = ?fn (ecs_entity_t, ?*const c_void, ecs_entity_t, ?*const c_void) callconv(.C) c_int;
pub const struct_ecs_stage_t = opaque {};
pub const ecs_stage_t = struct_ecs_stage_t;
pub const struct_ecs_column_t = opaque {};
pub const ecs_column_t = struct_ecs_column_t;
pub const struct_ecs_switch_t = opaque {};
pub const ecs_switch_t = struct_ecs_switch_t;
pub const struct_ecs_page_cursor_t = extern struct {
    first: i32,
    count: i32,
};
pub const ecs_page_cursor_t = struct_ecs_page_cursor_t;
pub const EcsMatchOk: c_int = 0;
pub const EcsMatchNotASystem: c_int = 1;
pub const EcsMatchSystemIsATask: c_int = 2;
pub const EcsMatchEntityIsDisabled: c_int = 3;
pub const EcsMatchEntityIsPrefab: c_int = 4;
pub const EcsMatchFromSelf: c_int = 5;
pub const EcsMatchFromOwned: c_int = 6;
pub const EcsMatchFromShared: c_int = 7;
pub const EcsMatchFromContainer: c_int = 8;
pub const EcsMatchFromEntity: c_int = 9;
pub const EcsMatchOrFromSelf: c_int = 10;
pub const EcsMatchOrFromOwned: c_int = 11;
pub const EcsMatchOrFromShared: c_int = 12;
pub const EcsMatchOrFromContainer: c_int = 13;
pub const EcsMatchNotFromSelf: c_int = 14;
pub const EcsMatchNotFromOwned: c_int = 15;
pub const EcsMatchNotFromShared: c_int = 16;
pub const EcsMatchNotFromContainer: c_int = 17;
pub const enum_EcsMatchFailureReason = c_uint;
pub const EcsMatchFailureReason = enum_EcsMatchFailureReason;
pub const struct_ecs_match_failure_t = extern struct {
    reason: EcsMatchFailureReason,
    column: i32,
};
pub const ecs_match_failure_t = struct_ecs_match_failure_t;
pub const ecs_xtor_t = ?fn (?*ecs_world_t, ecs_entity_t, [*c]const ecs_entity_t, ?*c_void, usize, i32, ?*c_void) callconv(.C) void;
pub const ecs_copy_t = ?fn (?*ecs_world_t, ecs_entity_t, [*c]const ecs_entity_t, [*c]const ecs_entity_t, ?*c_void, ?*const c_void, usize, i32, ?*c_void) callconv(.C) void;
pub const ecs_move_t = ?fn (?*ecs_world_t, ecs_entity_t, [*c]const ecs_entity_t, [*c]const ecs_entity_t, ?*c_void, ?*c_void, usize, i32, ?*c_void) callconv(.C) void;
pub const EcsComponentLifecycle = struct_EcsComponentLifecycle;
pub const ecs_copy_ctor_t = ?fn (?*ecs_world_t, ecs_entity_t, [*c]const EcsComponentLifecycle, [*c]const ecs_entity_t, [*c]const ecs_entity_t, ?*c_void, ?*const c_void, usize, i32, ?*c_void) callconv(.C) void;
pub const ecs_move_ctor_t = ?fn (?*ecs_world_t, ecs_entity_t, [*c]const EcsComponentLifecycle, [*c]const ecs_entity_t, [*c]const ecs_entity_t, ?*c_void, ?*c_void, usize, i32, ?*c_void) callconv(.C) void;
pub const struct_EcsComponentLifecycle = extern struct {
    ctor: ecs_xtor_t,
    dtor: ecs_xtor_t,
    copy: ecs_copy_t,
    move: ecs_move_t,
    ctx: ?*c_void,
    copy_ctor: ecs_copy_ctor_t,
    move_ctor: ecs_move_ctor_t,
    merge: ecs_move_ctor_t,
    ctor_illegal: bool,
    copy_illegal: bool,
    move_illegal: bool,
    copy_ctor_illegal: bool,
    move_ctor_illegal: bool,
};
pub extern var FLECS__TEcsComponent: ecs_type_t;
pub extern var FLECS__TEcsComponentLifecycle: ecs_type_t;
pub extern var FLECS__TEcsType: ecs_type_t;
pub extern var FLECS__TEcsName: ecs_type_t;
pub extern fn ecs_new_module(world: ?*ecs_world_t, e: ecs_entity_t, name: [*c]const u8, size: usize, alignment: usize) ecs_entity_t;
pub extern fn ecs_module_path_from_c(c_name: [*c]const u8) [*c]u8;
pub extern fn ecs_component_has_actions(world: ?*const ecs_world_t, component: ecs_entity_t) bool;
pub extern fn ecs_add_module_tag(world: ?*ecs_world_t, module: ecs_entity_t) void;
pub extern fn ecs_identifier_is_0(id: [*c]const u8) bool;
pub extern fn ecs_identifier_is_var(id: [*c]const u8) bool;
pub extern fn ecs_type_from_id(world: ?*ecs_world_t, entity: ecs_entity_t) ecs_type_t;
pub extern fn ecs_type_to_id(world: ?*const ecs_world_t, type: ecs_type_t) ecs_entity_t;
pub extern fn ecs_type_str(world: ?*const ecs_world_t, type: ecs_type_t) [*c]u8;
pub extern fn ecs_type_from_str(world: ?*ecs_world_t, expr: [*c]const u8) ecs_type_t;
pub extern fn ecs_type_find(world: ?*ecs_world_t, array: [*c]ecs_entity_t, count: i32) ecs_type_t;
pub extern fn ecs_type_merge(world: ?*ecs_world_t, type: ecs_type_t, type_add: ecs_type_t, type_remove: ecs_type_t) ecs_type_t;
pub extern fn ecs_type_add(world: ?*ecs_world_t, type: ecs_type_t, entity: ecs_entity_t) ecs_type_t;
pub extern fn ecs_type_remove(world: ?*ecs_world_t, type: ecs_type_t, entity: ecs_entity_t) ecs_type_t;
pub extern fn ecs_type_has_id(world: ?*const ecs_world_t, type: ecs_type_t, entity: ecs_entity_t) bool;
pub extern fn ecs_type_has_type(world: ?*const ecs_world_t, type: ecs_type_t, has: ecs_type_t) bool;
pub extern fn ecs_type_owns_id(world: ?*const ecs_world_t, type: ecs_type_t, entity: ecs_entity_t, owned: bool) bool;
pub extern fn ecs_type_owns_type(world: ?*const ecs_world_t, type: ecs_type_t, has: ecs_type_t, owned: bool) bool;
pub extern fn ecs_type_find_id(world: ?*const ecs_world_t, type: ecs_type_t, id: ecs_entity_t, rel: ecs_entity_t, min_depth: i32, max_depth: i32, out: [*c]ecs_entity_t) bool;
pub extern fn ecs_type_get_entity_for_xor(world: ?*ecs_world_t, type: ecs_type_t, xor_tag: ecs_entity_t) ecs_entity_t;
pub extern fn ecs_type_index_of(type: ecs_type_t, component: ecs_entity_t) i32;
pub extern fn ecs_type_match(type: ecs_type_t, start_index: i32, pair: ecs_entity_t) i32;
pub const struct_ecs_entity_desc_t = extern struct {
    entity: ecs_entity_t,
    name: [*c]const u8,
    sep: [*c]const u8,
    symbol: [*c]const u8,
    use_low_id: bool,
    add: [32]ecs_id_t,
    remove: [32]ecs_id_t,
    add_expr: [*c]const u8,
    remove_expr: [*c]const u8,
};
pub const ecs_entity_desc_t = struct_ecs_entity_desc_t;
pub const struct_ecs_component_desc_t = extern struct {
    entity: ecs_entity_desc_t,
    size: usize,
    alignment: usize,
};
pub const ecs_component_desc_t = struct_ecs_component_desc_t;
pub const struct_ecs_type_desc_t = extern struct {
    entity: ecs_entity_desc_t,
    ids: [32]ecs_id_t,
    ids_expr: [*c]const u8,
};
pub const ecs_type_desc_t = struct_ecs_type_desc_t;
pub const struct_ecs_filter_desc_t = extern struct {
    terms: [16]ecs_term_t,
    terms_buffer: [*c]ecs_term_t,
    terms_buffer_count: i32,
    substitute_default: bool,
    expr: [*c]const u8,
    name: [*c]const u8,
};
pub const ecs_filter_desc_t = struct_ecs_filter_desc_t;
pub const struct_ecs_query_desc_t = extern struct {
    filter: ecs_filter_desc_t,
    order_by_id: ecs_id_t,
    order_by: ecs_compare_action_t,
    group_by_id: ecs_id_t,
    group_by: ecs_rank_type_action_t,
    parent: ?*ecs_query_t,
    system: ecs_entity_t,
};
pub const ecs_query_desc_t = struct_ecs_query_desc_t;
pub const struct_ecs_trigger_desc_t = extern struct {
    entity: ecs_entity_desc_t,
    term: ecs_term_t,
    expr: [*c]const u8,
    events: [8]ecs_entity_t,
    callback: ecs_iter_action_t,
    self: ecs_entity_t,
    ctx: ?*c_void,
    binding_ctx: ?*c_void,
    ctx_free: ecs_ctx_free_t,
    binding_ctx_free: ecs_ctx_free_t,
};
pub const ecs_trigger_desc_t = struct_ecs_trigger_desc_t;
pub const struct_ecs_observer_desc_t = extern struct {
    entity: ecs_entity_desc_t,
    filter: ecs_filter_desc_t,
    events: [8]ecs_entity_t,
    callback: ecs_iter_action_t,
    self: ecs_entity_t,
    ctx: ?*c_void,
    binding_ctx: ?*c_void,
    ctx_free: ecs_ctx_free_t,
    binding_ctx_free: ecs_ctx_free_t,
};
pub const ecs_observer_desc_t = struct_ecs_observer_desc_t;
pub const struct_EcsName = extern struct {
    value: [*c]const u8,
    symbol: [*c]u8,
    alloc_value: [*c]u8,
};
pub const EcsName = struct_EcsName;
pub const struct_EcsComponent = extern struct {
    size: ecs_size_t,
    alignment: ecs_size_t,
};
pub const EcsComponent = struct_EcsComponent;
pub const struct_EcsType = extern struct {
    type: ecs_type_t,
    normalized: ecs_type_t,
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
pub const ecs_entities_t = ecs_ids_t;
pub extern fn ecs_dim_type(world: ?*ecs_world_t, type: ecs_type_t, entity_count: i32) void;
pub extern fn ecs_new_w_type(world: ?*ecs_world_t, type: ecs_type_t) ecs_entity_t;
pub extern fn ecs_bulk_new_w_type(world: ?*ecs_world_t, type: ecs_type_t, count: i32) [*c]const ecs_entity_t;
pub extern fn ecs_add_type(world: ?*ecs_world_t, entity: ecs_entity_t, type: ecs_type_t) void;
pub extern fn ecs_remove_type(world: ?*ecs_world_t, entity: ecs_entity_t, type: ecs_type_t) void;
pub extern fn ecs_add_remove_type(world: ?*ecs_world_t, entity: ecs_entity_t, to_add: ecs_type_t, to_remove: ecs_type_t) void;
pub extern fn ecs_has_type(world: ?*const ecs_world_t, entity: ecs_entity_t, type: ecs_type_t) bool;
pub extern fn ecs_count_type(world: ?*const ecs_world_t, type: ecs_type_t) i32;
pub extern fn ecs_count_entity(world: ?*const ecs_world_t, entity: ecs_id_t) i32;
pub extern fn ecs_count_w_filter(world: ?*const ecs_world_t, filter: [*c]const ecs_filter_t) i32;
pub extern fn ecs_set_component_actions_w_entity(world: ?*ecs_world_t, id: ecs_id_t, actions: [*c]EcsComponentLifecycle) void;
pub extern fn ecs_new_w_entity(world: ?*ecs_world_t, id: ecs_id_t) ecs_entity_t;
pub extern fn ecs_bulk_new_w_entity(world: ?*ecs_world_t, id: ecs_id_t, count: i32) [*c]const ecs_entity_t;
pub extern fn ecs_enable_component_w_entity(world: ?*ecs_world_t, entity: ecs_entity_t, id: ecs_id_t, enable: bool) void;
pub extern fn ecs_is_component_enabled_w_entity(world: ?*const ecs_world_t, entity: ecs_entity_t, id: ecs_id_t) bool;
pub extern fn ecs_get_w_id(world: ?*const ecs_world_t, entity: ecs_entity_t, id: ecs_id_t) ?*const c_void;
pub extern fn ecs_get_w_entity(world: ?*const ecs_world_t, entity: ecs_entity_t, id: ecs_id_t) ?*const c_void;
pub extern fn ecs_get_ref_w_entity(world: ?*const ecs_world_t, ref: [*c]ecs_ref_t, entity: ecs_entity_t, id: ecs_id_t) ?*const c_void;
pub extern fn ecs_get_mut_w_entity(world: ?*ecs_world_t, entity: ecs_entity_t, id: ecs_id_t, is_added: [*c]bool) ?*c_void;
pub extern fn ecs_get_mut_w_id(world: ?*ecs_world_t, entity: ecs_entity_t, id: ecs_id_t, is_added: [*c]bool) ?*c_void;
pub extern fn ecs_modified_w_entity(world: ?*ecs_world_t, entity: ecs_entity_t, id: ecs_id_t) void;
pub extern fn ecs_modified_w_id(world: ?*ecs_world_t, entity: ecs_entity_t, id: ecs_id_t) void;
pub extern fn ecs_set_ptr_w_entity(world: ?*ecs_world_t, entity: ecs_entity_t, id: ecs_id_t, size: usize, ptr: ?*const c_void) ecs_entity_t;
pub extern fn ecs_has_entity(world: ?*const ecs_world_t, entity: ecs_entity_t, id: ecs_id_t) bool;
pub extern fn ecs_entity_str(world: ?*const ecs_world_t, entity: ecs_id_t, buffer: [*c]u8, buffer_len: usize) usize;
pub extern fn ecs_get_parent_w_entity(world: ?*const ecs_world_t, entity: ecs_entity_t, id: ecs_id_t) ecs_entity_t;
pub extern fn ecs_get_thread_index(world: ?*const ecs_world_t) i32;
pub extern fn ecs_add_entity(world: ?*ecs_world_t, entity: ecs_entity_t, entity_add: ecs_entity_t) void;
pub extern fn ecs_remove_entity(world: ?*ecs_world_t, entity: ecs_entity_t, id: ecs_id_t) void;
pub extern fn ecs_add_remove_entity(world: ?*ecs_world_t, entity: ecs_entity_t, id_add: ecs_id_t, id_remove: ecs_id_t) void;
pub extern fn ecs_type_from_entity(world: ?*ecs_world_t, entity: ecs_entity_t) ecs_type_t;
pub extern fn ecs_type_to_entity(world: ?*const ecs_world_t, type: ecs_type_t) ecs_entity_t;
pub extern fn ecs_type_has_entity(world: ?*const ecs_world_t, type: ecs_type_t, entity: ecs_entity_t) bool;
pub extern fn ecs_type_owns_entity(world: ?*const ecs_world_t, type: ecs_type_t, entity: ecs_entity_t, owned: bool) bool;
pub extern fn ecs_column_w_size(it: [*c]const ecs_iter_t, size: usize, column: i32) ?*c_void;
pub extern fn ecs_column_index_from_name(it: [*c]const ecs_iter_t, name: [*c]const u8) i32;
pub extern fn ecs_element_w_size(it: [*c]const ecs_iter_t, size: usize, column: i32, row: i32) ?*c_void;
pub extern fn ecs_column_source(it: [*c]const ecs_iter_t, column: i32) ecs_entity_t;
pub extern fn ecs_column_entity(it: [*c]const ecs_iter_t, column: i32) ecs_entity_t;
pub extern fn ecs_column_type(it: [*c]const ecs_iter_t, column: i32) ecs_type_t;
pub extern fn ecs_column_size(it: [*c]const ecs_iter_t, column: i32) usize;
pub extern fn ecs_is_readonly(it: [*c]const ecs_iter_t, column: i32) bool;
pub extern fn ecs_is_owned(it: [*c]const ecs_iter_t, column: i32) bool;
pub extern fn ecs_table_column(it: [*c]const ecs_iter_t, column: i32) ?*c_void;
pub extern fn ecs_table_column_size(it: [*c]const ecs_iter_t, column: i32) usize;
pub extern fn ecs_table_component_index(it: [*c]const ecs_iter_t, component: ecs_entity_t) i32;
pub extern fn ecs_set_rate_filter(world: ?*ecs_world_t, filter: ecs_entity_t, rate: i32, source: ecs_entity_t) ecs_entity_t;
pub extern fn ecs_query_new(world: ?*ecs_world_t, sig: [*c]const u8) ?*ecs_query_t;
pub extern fn ecs_subquery_new(world: ?*ecs_world_t, parent: ?*ecs_query_t, sig: [*c]const u8) ?*ecs_query_t;
pub extern fn ecs_query_free(query: ?*ecs_query_t) void;
pub extern fn ecs_query_order_by(world: ?*ecs_world_t, query: ?*ecs_query_t, component: ecs_entity_t, compare: ecs_compare_action_t) void;
pub extern fn ecs_query_group_by(world: ?*ecs_world_t, query: ?*ecs_query_t, component: ecs_entity_t, rank_action: ecs_rank_type_action_t) void;
pub extern const ECS_CASE: ecs_id_t;
pub extern const ECS_SWITCH: ecs_id_t;
pub extern const ECS_PAIR: ecs_id_t;
pub extern const ECS_OWNED: ecs_id_t;
pub extern const ECS_DISABLED: ecs_id_t;
pub extern const EcsFlecs: ecs_entity_t;
pub extern const EcsFlecsCore: ecs_entity_t;
pub extern const EcsWorld: ecs_entity_t;
pub extern const EcsWildcard: ecs_entity_t;
pub extern const EcsThis: ecs_entity_t;
pub extern const EcsTransitive: ecs_entity_t;
pub extern const EcsFinal: ecs_entity_t;
pub extern const EcsTag: ecs_entity_t;
pub extern const EcsChildOf: ecs_entity_t;
pub extern const EcsIsA: ecs_entity_t;
pub extern const EcsModule: ecs_entity_t;
pub extern const EcsPrefab: ecs_entity_t;
pub extern const EcsDisabled: ecs_entity_t;
pub extern const EcsHidden: ecs_entity_t;
pub extern const EcsOnAdd: ecs_entity_t;
pub extern const EcsOnRemove: ecs_entity_t;
pub extern const EcsOnSet: ecs_entity_t;
pub extern const EcsUnSet: ecs_entity_t;
pub extern const EcsOnDelete: ecs_entity_t;
pub extern const EcsOnDeleteObject: ecs_entity_t;
pub extern const EcsRemove: ecs_entity_t;
pub extern const EcsDelete: ecs_entity_t;
pub extern const EcsThrow: ecs_entity_t;
pub extern const EcsOnDemand: ecs_entity_t;
pub extern const EcsMonitor: ecs_entity_t;
pub extern const EcsDisabledIntern: ecs_entity_t;
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
pub extern fn ecs_atfini(world: ?*ecs_world_t, action: ecs_fini_action_t, ctx: ?*c_void) void;
pub extern fn ecs_run_post_frame(world: ?*ecs_world_t, action: ecs_fini_action_t, ctx: ?*c_void) void;
pub extern fn ecs_quit(world: ?*ecs_world_t) void;
pub extern fn ecs_should_quit(world: ?*const ecs_world_t) bool;
pub extern fn ecs_set_component_actions_w_id(world: ?*ecs_world_t, id: ecs_id_t, actions: [*c]EcsComponentLifecycle) void;
pub extern fn ecs_set_context(world: ?*ecs_world_t, ctx: ?*c_void) void;
pub extern fn ecs_get_context(world: ?*const ecs_world_t) ?*c_void;
pub extern fn ecs_get_world_info(world: ?*const ecs_world_t) [*c]const ecs_world_info_t;
pub extern fn ecs_dim(world: ?*ecs_world_t, entity_count: i32) void;
pub extern fn ecs_set_entity_range(world: ?*ecs_world_t, id_start: ecs_entity_t, id_end: ecs_entity_t) void;
pub extern fn ecs_enable_range_check(world: ?*ecs_world_t, enable: bool) bool;
pub extern fn ecs_enable_locking(world: ?*ecs_world_t, enable: bool) bool;
pub extern fn ecs_lock(world: ?*ecs_world_t) void;
pub extern fn ecs_unlock(world: ?*ecs_world_t) void;
pub extern fn ecs_begin_wait(world: ?*ecs_world_t) void;
pub extern fn ecs_end_wait(world: ?*ecs_world_t) void;
pub extern fn ecs_tracing_enable(level: c_int) void;
pub extern fn ecs_measure_frame_time(world: ?*ecs_world_t, enable: bool) void;
pub extern fn ecs_measure_system_time(world: ?*ecs_world_t, enable: bool) void;
pub extern fn ecs_set_target_fps(world: ?*ecs_world_t, fps: f32) void;
pub extern fn ecs_get_threads(world: ?*ecs_world_t) i32;
pub extern fn ecs_new_id(world: ?*ecs_world_t) ecs_entity_t;
pub extern fn ecs_new_component_id(world: ?*ecs_world_t) ecs_entity_t;
pub extern fn ecs_new_w_id(world: ?*ecs_world_t, id: ecs_id_t) ecs_entity_t;
pub extern fn ecs_entity_init(world: ?*ecs_world_t, desc: [*c]const ecs_entity_desc_t) ecs_entity_t;
pub extern fn ecs_component_init(world: ?*ecs_world_t, desc: [*c]const ecs_component_desc_t) ecs_entity_t;
pub extern fn ecs_type_init(world: ?*ecs_world_t, desc: [*c]const ecs_type_desc_t) ecs_entity_t;
pub extern fn ecs_bulk_new_w_id(world: ?*ecs_world_t, id: ecs_id_t, count: i32) [*c]const ecs_entity_t;
pub extern fn ecs_bulk_new_w_data(world: ?*ecs_world_t, count: i32, component_ids: [*c]const ecs_ids_t, data: ?*c_void) [*c]const ecs_entity_t;
pub extern fn ecs_clone(world: ?*ecs_world_t, dst: ecs_entity_t, src: ecs_entity_t, copy_value: bool) ecs_entity_t;
pub extern fn ecs_add_id(world: ?*ecs_world_t, entity: ecs_entity_t, id: ecs_id_t) void;
pub extern fn ecs_remove_id(world: ?*ecs_world_t, entity: ecs_entity_t, id: ecs_id_t) void;
pub extern fn ecs_enable_component_w_id(world: ?*ecs_world_t, entity: ecs_entity_t, id: ecs_id_t, enable: bool) void;
pub extern fn ecs_is_component_enabled_w_id(world: ?*const ecs_world_t, entity: ecs_entity_t, id: ecs_id_t) bool;
pub extern fn ecs_make_pair(relation: ecs_entity_t, object: ecs_entity_t) ecs_id_t;
pub extern fn ecs_clear(world: ?*ecs_world_t, entity: ecs_entity_t) void;
pub extern fn ecs_delete(world: ?*ecs_world_t, entity: ecs_entity_t) void;
pub extern fn ecs_delete_children(world: ?*ecs_world_t, parent: ecs_entity_t) void;
pub extern fn ecs_get_id(world: ?*const ecs_world_t, entity: ecs_entity_t, id: ecs_id_t) ?*const c_void;
pub extern fn ecs_get_ref_w_id(world: ?*const ecs_world_t, ref: [*c]ecs_ref_t, entity: ecs_entity_t, id: ecs_id_t) ?*const c_void;
pub extern fn ecs_get_case(world: ?*const ecs_world_t, e: ecs_entity_t, sw: ecs_entity_t) ecs_entity_t;
pub extern fn ecs_get_mut_id(world: ?*ecs_world_t, entity: ecs_entity_t, id: ecs_id_t, is_added: [*c]bool) ?*c_void;
pub extern fn ecs_emplace_id(world: ?*ecs_world_t, entity: ecs_entity_t, id: ecs_id_t) ?*c_void;
pub extern fn ecs_modified_id(world: ?*ecs_world_t, entity: ecs_entity_t, id: ecs_id_t) void;
pub extern fn ecs_set_id(world: ?*ecs_world_t, entity: ecs_entity_t, id: ecs_id_t, size: usize, ptr: ?*const c_void) ecs_entity_t;
pub extern fn ecs_has_id(world: ?*const ecs_world_t, entity: ecs_entity_t, id: ecs_id_t) bool;
pub extern fn ecs_is_valid(world: ?*const ecs_world_t, e: ecs_entity_t) bool;
pub extern fn ecs_is_alive(world: ?*const ecs_world_t, e: ecs_entity_t) bool;
pub extern fn ecs_get_alive(world: ?*const ecs_world_t, e: ecs_entity_t) ecs_entity_t;
pub extern fn ecs_ensure(world: ?*ecs_world_t, e: ecs_entity_t) void;
pub extern fn ecs_exists(world: ?*const ecs_world_t, e: ecs_entity_t) bool;
pub extern fn ecs_get_type(world: ?*const ecs_world_t, entity: ecs_entity_t) ecs_type_t;
pub extern fn ecs_get_typeid(world: ?*const ecs_world_t, e: ecs_id_t) ecs_entity_t;
pub extern fn ecs_get_name(world: ?*const ecs_world_t, entity: ecs_entity_t) [*c]const u8;
pub extern fn ecs_role_str(entity: ecs_entity_t) [*c]const u8;
pub extern fn ecs_id_str(world: ?*const ecs_world_t, entity: ecs_id_t, buffer: [*c]u8, buffer_len: usize) usize;
pub extern fn ecs_get_object_w_id(world: ?*const ecs_world_t, entity: ecs_entity_t, rel: ecs_entity_t, id: ecs_id_t) ecs_entity_t;
pub extern fn ecs_enable(world: ?*ecs_world_t, entity: ecs_entity_t, enabled: bool) void;
pub extern fn ecs_count_id(world: ?*const ecs_world_t, entity: ecs_id_t) i32;
pub extern fn ecs_count_filter(world: ?*const ecs_world_t, filter: [*c]const ecs_filter_t) i32;
pub extern fn ecs_lookup(world: ?*const ecs_world_t, name: [*c]const u8) ecs_entity_t;
pub extern fn ecs_lookup_child(world: ?*const ecs_world_t, parent: ecs_entity_t, name: [*c]const u8) ecs_entity_t;
pub extern fn ecs_lookup_path_w_sep(world: ?*const ecs_world_t, parent: ecs_entity_t, path: [*c]const u8, sep: [*c]const u8, prefix: [*c]const u8, recursive: bool) ecs_entity_t;
pub extern fn ecs_lookup_symbol(world: ?*const ecs_world_t, name: [*c]const u8) ecs_entity_t;
pub extern fn ecs_use(world: ?*ecs_world_t, entity: ecs_entity_t, name: [*c]const u8) void;
pub extern fn ecs_get_path_w_sep(world: ?*const ecs_world_t, parent: ecs_entity_t, child: ecs_entity_t, component: ecs_entity_t, sep: [*c]const u8, prefix: [*c]const u8) [*c]u8;
pub extern fn ecs_new_from_path_w_sep(world: ?*ecs_world_t, parent: ecs_entity_t, path: [*c]const u8, sep: [*c]const u8, prefix: [*c]const u8) ecs_entity_t;
pub extern fn ecs_add_path_w_sep(world: ?*ecs_world_t, entity: ecs_entity_t, parent: ecs_entity_t, path: [*c]const u8, sep: [*c]const u8, prefix: [*c]const u8) ecs_entity_t;
pub extern fn ecs_get_child_count(world: ?*const ecs_world_t, entity: ecs_entity_t) i32;
pub extern fn ecs_scope_iter(world: ?*ecs_world_t, parent: ecs_entity_t) ecs_iter_t;
pub extern fn ecs_scope_iter_w_filter(world: ?*ecs_world_t, parent: ecs_entity_t, filter: [*c]ecs_filter_t) ecs_iter_t;
pub extern fn ecs_scope_next(it: [*c]ecs_iter_t) bool;
pub extern fn ecs_set_scope(world: ?*ecs_world_t, scope: ecs_entity_t) ecs_entity_t;
pub extern fn ecs_get_scope(world: ?*const ecs_world_t) ecs_entity_t;
pub extern fn ecs_set_with(world: ?*ecs_world_t, id: ecs_id_t) ecs_entity_t;
pub extern fn ecs_get_with(world: ?*const ecs_world_t) ecs_entity_t;
pub extern fn ecs_set_name_prefix(world: ?*ecs_world_t, prefix: [*c]const u8) [*c]const u8;
pub extern fn ecs_term_is_set(term: [*c]const ecs_term_t) bool;
pub extern fn ecs_term_is_trivial(term: [*c]ecs_term_t) bool;
pub extern fn ecs_term_finalize(world: ?*const ecs_world_t, name: [*c]const u8, expr: [*c]const u8, term: [*c]ecs_term_t) c_int;
pub extern fn ecs_term_copy(src: [*c]const ecs_term_t) ecs_term_t;
pub extern fn ecs_term_move(src: [*c]ecs_term_t) ecs_term_t;
pub extern fn ecs_term_fini(term: [*c]ecs_term_t) void;
pub extern fn ecs_id_match(id: ecs_id_t, pattern: ecs_id_t) bool;
pub extern fn ecs_filter_init(world: ?*const ecs_world_t, filter_out: [*c]ecs_filter_t, desc: [*c]const ecs_filter_desc_t) c_int;
pub extern fn ecs_filter_fini(filter: [*c]ecs_filter_t) void;
pub extern fn ecs_filter_finalize(world: ?*const ecs_world_t, filter: [*c]ecs_filter_t) c_int;
pub extern fn ecs_filter_str(world: ?*const ecs_world_t, filter: [*c]const ecs_filter_t) [*c]u8;
pub extern fn ecs_filter_match_entity(world: ?*const ecs_world_t, filter: [*c]const ecs_filter_t, e: ecs_entity_t) bool;
pub extern fn ecs_filter_match_type(world: ?*const ecs_world_t, filter: [*c]const ecs_filter_t, type: ecs_type_t) bool;
pub extern fn ecs_filter_iter(world: ?*ecs_world_t, filter: [*c]const ecs_filter_t) ecs_iter_t;
pub extern fn ecs_filter_next(iter: [*c]ecs_iter_t) bool;
pub extern fn ecs_query_init(world: ?*ecs_world_t, desc: [*c]const ecs_query_desc_t) ?*ecs_query_t;
pub extern fn ecs_query_fini(query: ?*ecs_query_t) void;
pub extern fn ecs_query_get_filter(query: ?*ecs_query_t) [*c]const ecs_filter_t;
pub extern fn ecs_query_iter(query: ?*ecs_query_t) ecs_iter_t;
pub extern fn ecs_query_iter_page(query: ?*ecs_query_t, offset: i32, limit: i32) ecs_iter_t;
pub extern fn ecs_query_next(iter: [*c]ecs_iter_t) bool;
pub extern fn ecs_query_next_w_filter(iter: [*c]ecs_iter_t, filter: [*c]const ecs_filter_t) bool;
pub extern fn ecs_query_next_worker(it: [*c]ecs_iter_t, stage_current: i32, stage_count: i32) bool;
pub extern fn ecs_query_changed(query: ?*ecs_query_t) bool;
pub extern fn ecs_query_orphaned(query: ?*ecs_query_t) bool;
pub extern fn ecs_trigger_init(world: ?*ecs_world_t, desc: [*c]const ecs_trigger_desc_t) ecs_entity_t;
pub extern fn ecs_get_trigger_ctx(world: ?*const ecs_world_t, trigger: ecs_entity_t) ?*c_void;
pub extern fn ecs_get_trigger_binding_ctx(world: ?*const ecs_world_t, trigger: ecs_entity_t) ?*c_void;
pub extern fn ecs_observer_init(world: ?*ecs_world_t, desc: [*c]const ecs_observer_desc_t) ecs_entity_t;
pub extern fn ecs_get_observer_ctx(world: ?*const ecs_world_t, observer: ecs_entity_t) ?*c_void;
pub extern fn ecs_get_observer_binding_ctx(world: ?*const ecs_world_t, observer: ecs_entity_t) ?*c_void;
pub extern fn ecs_term_w_size(it: [*c]const ecs_iter_t, size: usize, index: i32) ?*c_void;
pub extern fn ecs_term_id(it: [*c]const ecs_iter_t, index: i32) ecs_id_t;
pub extern fn ecs_term_source(it: [*c]const ecs_iter_t, index: i32) ecs_entity_t;
pub extern fn ecs_term_size(it: [*c]const ecs_iter_t, index: i32) usize;
pub extern fn ecs_term_is_readonly(it: [*c]const ecs_iter_t, index: i32) bool;
pub extern fn ecs_term_is_owned(it: [*c]const ecs_iter_t, index: i32) bool;
pub extern fn ecs_iter_type(it: [*c]const ecs_iter_t) ecs_type_t;
pub extern fn ecs_iter_table(it: [*c]const ecs_iter_t) ?*ecs_table_t;
pub extern fn ecs_iter_find_column(it: [*c]const ecs_iter_t, id: ecs_id_t) i32;
pub extern fn ecs_iter_column_w_size(it: [*c]const ecs_iter_t, size: usize, index: i32) ?*c_void;
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
pub extern fn ecs_get_world(world: ?*const ecs_world_t) ?*const ecs_world_t;
pub extern fn ecs_stage_is_readonly(stage: ?*const ecs_world_t) bool;
pub extern fn ecs_async_stage_new(world: ?*ecs_world_t) ?*ecs_world_t;
pub extern fn ecs_async_stage_free(stage: ?*ecs_world_t) void;
pub extern fn ecs_stage_is_async(stage: ?*ecs_world_t) bool;
pub extern fn ecs_table_from_str(world: ?*ecs_world_t, type: [*c]const u8) ?*ecs_table_t;
pub extern fn ecs_table_from_type(world: ?*ecs_world_t, type: ecs_type_t) ?*ecs_table_t;
pub extern fn ecs_table_get_type(table: ?*const ecs_table_t) ecs_type_t;
pub extern fn ecs_table_insert(world: ?*ecs_world_t, table: ?*ecs_table_t, entity: ecs_entity_t, record: [*c]ecs_record_t) ecs_record_t;
pub extern fn ecs_table_count(table: ?*const ecs_table_t) i32;
pub extern fn ecs_table_add_id(world: ?*ecs_world_t, table: ?*ecs_table_t, id: ecs_id_t) ?*ecs_table_t;
pub extern fn ecs_table_remove_id(world: ?*ecs_world_t, table: ?*ecs_table_t, id: ecs_id_t) ?*ecs_table_t;
pub extern fn ecs_table_lock(world: ?*ecs_world_t, table: ?*ecs_table_t) void;
pub extern fn ecs_table_unlock(world: ?*ecs_world_t, table: ?*ecs_table_t) void;
pub extern fn ecs_table_has_module(table: ?*ecs_table_t) bool;
pub extern fn ecs_commit(world: ?*ecs_world_t, entity: ecs_entity_t, record: [*c]ecs_record_t, table: ?*ecs_table_t, added: [*c]ecs_entities_t, removed: [*c]ecs_entities_t) bool;
pub extern fn ecs_import(world: ?*ecs_world_t, module: ecs_module_action_t, module_name: [*c]const u8, handles_out: ?*c_void, handles_size: usize) ecs_entity_t;
pub extern fn ecs_import_from_library(world: ?*ecs_world_t, library_name: [*c]const u8, module_name: [*c]const u8) ecs_entity_t;
pub extern var FLECS__TEcsSystem: ecs_type_t;
pub extern var FLECS__TEcsTickSource: ecs_type_t;
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
pub const ecs_system_status_action_t = ?fn (?*ecs_world_t, ecs_entity_t, ecs_system_status_t, ?*c_void) callconv(.C) void;
pub const struct_ecs_system_desc_t = extern struct {
    entity: ecs_entity_desc_t,
    query: ecs_query_desc_t,
    callback: ecs_iter_action_t,
    status_callback: ecs_system_status_action_t,
    self: ecs_entity_t,
    ctx: ?*c_void,
    status_ctx: ?*c_void,
    binding_ctx: ?*c_void,
    ctx_free: ecs_ctx_free_t,
    status_ctx_free: ecs_ctx_free_t,
    binding_ctx_free: ecs_ctx_free_t,
    interval: f32,
    rate: i32,
    tick_source: ecs_entity_t,
};
pub const ecs_system_desc_t = struct_ecs_system_desc_t;
pub extern fn ecs_system_init(world: ?*ecs_world_t, desc: [*c]const ecs_system_desc_t) ecs_entity_t;
pub extern fn ecs_run(world: ?*ecs_world_t, system: ecs_entity_t, delta_time: f32, param: ?*c_void) ecs_entity_t;
pub extern fn ecs_run_worker(world: ?*ecs_world_t, system: ecs_entity_t, stage_current: i32, stage_count: i32, delta_time: f32, param: ?*c_void) ecs_entity_t;
pub extern fn ecs_run_w_filter(world: ?*ecs_world_t, system: ecs_entity_t, delta_time: f32, offset: i32, limit: i32, filter: [*c]const ecs_filter_t, param: ?*c_void) ecs_entity_t;
pub extern fn ecs_get_system_query(world: ?*const ecs_world_t, system: ecs_entity_t) ?*ecs_query_t;
pub extern fn ecs_get_system_ctx(world: ?*const ecs_world_t, system: ecs_entity_t) ?*c_void;
pub extern fn ecs_get_system_binding_ctx(world: ?*const ecs_world_t, system: ecs_entity_t) ?*c_void;
pub const struct_ecs_dbg_system_t = extern struct {
    system: ecs_entity_t,
    entities_matched_count: i32,
    active_table_count: i32,
    inactive_table_count: i32,
    enabled: bool,
    system_data: ?*c_void,
};
pub const ecs_dbg_system_t = struct_ecs_dbg_system_t;
pub extern fn ecs_dbg_system(world: ?*const ecs_world_t, system: ecs_entity_t, dbg_out: [*c]ecs_dbg_system_t) c_int;
pub extern fn ecs_dbg_get_active_table(world: ?*const ecs_world_t, dbg: [*c]ecs_dbg_system_t, index: i32) ?*ecs_table_t;
pub extern fn ecs_dbg_get_inactive_table(world: ?*const ecs_world_t, dbg: [*c]ecs_dbg_system_t, index: i32) ?*ecs_table_t;
pub extern fn ecs_dbg_get_column_type(world: ?*ecs_world_t, system: ecs_entity_t, column_index: i32) ecs_type_t;
pub extern fn ecs_dbg_match_entity(world: ?*const ecs_world_t, entity: ecs_entity_t, system: ecs_entity_t, failure_info_out: [*c]ecs_match_failure_t) bool;
pub const struct_FlecsSystem = extern struct {
    dummy: i32,
};
pub const FlecsSystem = struct_FlecsSystem;
pub extern fn FlecsSystemImport(world: ?*ecs_world_t) void;
pub extern fn ecs_set_pipeline(world: ?*ecs_world_t, pipeline: ecs_entity_t) void;
pub extern fn ecs_get_pipeline(world: ?*const ecs_world_t) ecs_entity_t;
pub extern fn ecs_progress(world: ?*ecs_world_t, delta_time: f32) bool;
pub extern fn ecs_set_time_scale(world: ?*ecs_world_t, scale: f32) void;
pub extern fn ecs_reset_clock(world: ?*ecs_world_t) void;
pub extern fn ecs_pipeline_run(world: ?*ecs_world_t, pipeline: ecs_entity_t, delta_time: f32) void;
pub extern fn ecs_deactivate_systems(world: ?*ecs_world_t) void;
pub extern fn ecs_set_threads(world: ?*ecs_world_t, threads: i32) void;
pub const struct_FlecsPipeline = extern struct {
    dummy: i32,
};
pub const FlecsPipeline = struct_FlecsPipeline;
pub extern fn FlecsPipelineImport(world: ?*ecs_world_t) void;
pub extern var FLECS__TEcsTimer: ecs_type_t;
pub extern var FLECS__TEcsRateFilter: ecs_type_t;
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
pub const struct_FlecsTimer = extern struct {
    dummy: i32,
};
pub const FlecsTimer = struct_FlecsTimer;
pub extern fn FlecsTimerImport(world: ?*ecs_world_t) void;
pub extern fn ecs_bulk_add_entity(world: ?*ecs_world_t, entity_add: ecs_entity_t, filter: [*c]const ecs_filter_t) void;
pub extern fn ecs_bulk_add_type(world: ?*ecs_world_t, type: ecs_type_t, filter: [*c]const ecs_filter_t) void;
pub extern fn ecs_bulk_remove_entity(world: ?*ecs_world_t, entity_remove: ecs_entity_t, filter: [*c]const ecs_filter_t) void;
pub extern fn ecs_bulk_remove_type(world: ?*ecs_world_t, type: ecs_type_t, filter: [*c]const ecs_filter_t) void;
pub extern fn ecs_bulk_add_remove_type(world: ?*ecs_world_t, to_add: ecs_type_t, to_remove: ecs_type_t, filter: [*c]const ecs_filter_t) void;
pub extern fn ecs_bulk_delete(world: ?*ecs_world_t, filter: [*c]const ecs_filter_t) void;
pub const struct_ecs_dbg_entity_t = extern struct {
    entity: ecs_entity_t,
    table: ?*ecs_table_t,
    type: ecs_type_t,
    row: i32,
    is_watched: bool,
};
pub const ecs_dbg_entity_t = struct_ecs_dbg_entity_t;
pub const struct_ecs_dbg_table_t = extern struct {
    table: ?*ecs_table_t,
    type: ecs_type_t,
    shared: ecs_type_t,
    container: ecs_type_t,
    parent_entities: ecs_type_t,
    base_entities: ecs_type_t,
    systems_matched: [*c]ecs_vector_t,
    entities: [*c]ecs_entity_t,
    entities_count: i32,
};
pub const ecs_dbg_table_t = struct_ecs_dbg_table_t;
pub extern fn ecs_dbg_entity(world: ?*const ecs_world_t, entity: ecs_entity_t, dbg_out: [*c]ecs_dbg_entity_t) void;
pub extern fn ecs_dbg_find_table(world: ?*ecs_world_t, type: ecs_type_t) ?*ecs_table_t;
pub extern fn ecs_dbg_get_table(world: ?*const ecs_world_t, index: i32) ?*ecs_table_t;
pub extern fn ecs_dbg_filter_table(world: ?*const ecs_world_t, table: ?*const ecs_table_t, filter: [*c]const ecs_filter_t) bool;
pub extern fn ecs_dbg_table(world: ?*ecs_world_t, table: ?*ecs_table_t, dbg_out: [*c]ecs_dbg_table_t) void;
pub extern fn ecs_parse_term(world: ?*const ecs_world_t, name: [*c]const u8, expr: [*c]const u8, ptr: [*c]const u8, term_out: [*c]ecs_term_t) [*c]u8;
pub const struct_ecs_queue_t = opaque {};
pub const ecs_queue_t = struct_ecs_queue_t;
pub extern fn _ecs_queue_new(elem_size: ecs_size_t, offset: i16, elem_count: i32) ?*ecs_queue_t;
pub extern fn _ecs_queue_from_array(elem_size: ecs_size_t, offset: i16, elem_count: i32, array: ?*c_void) ?*ecs_queue_t;
pub extern fn _ecs_queue_push(queue: ?*ecs_queue_t, elem_size: ecs_size_t, offset: i16) ?*c_void;
pub extern fn _ecs_queue_get(queue: ?*ecs_queue_t, elem_size: ecs_size_t, offset: i16, index: i32) ?*c_void;
pub extern fn _ecs_queue_last(queue: ?*ecs_queue_t, elem_size: ecs_size_t, offset: i16) ?*c_void;
pub extern fn ecs_queue_index(queue: ?*ecs_queue_t) i32;
pub extern fn ecs_queue_count(queue: ?*ecs_queue_t) i32;
pub extern fn ecs_queue_free(queue: ?*ecs_queue_t) void;
pub const EcsStreamHeader: c_int = 0;
pub const EcsTableSegment: c_int = 1;
pub const EcsFooterSegment: c_int = 2;
pub const EcsTableHeader: c_int = 3;
pub const EcsTableTypeSize: c_int = 4;
pub const EcsTableType: c_int = 5;
pub const EcsTableSize: c_int = 6;
pub const EcsTableColumn: c_int = 7;
pub const EcsTableColumnHeader: c_int = 8;
pub const EcsTableColumnSize: c_int = 9;
pub const EcsTableColumnData: c_int = 10;
pub const EcsTableColumnNameHeader: c_int = 11;
pub const EcsTableColumnNameLength: c_int = 12;
pub const EcsTableColumnName: c_int = 13;
pub const EcsStreamFooter: c_int = 14;
pub const enum_ecs_blob_header_kind_t = c_uint;
pub const ecs_blob_header_kind_t = enum_ecs_blob_header_kind_t;
pub const struct_ecs_table_reader_t = extern struct {
    state: ecs_blob_header_kind_t,
    table_index: i32,
    table: ?*ecs_table_t,
    data: ?*ecs_data_t,
    type_written: ecs_size_t,
    type: ecs_type_t,
    column_vector: [*c]ecs_vector_t,
    column_index: i32,
    total_columns: i32,
    column_data: ?*c_void,
    column_size: i16,
    column_alignment: i16,
    column_written: ecs_size_t,
    row_index: i32,
    row_count: i32,
    name: [*c]const u8,
    name_len: ecs_size_t,
    name_written: ecs_size_t,
    has_next_table: bool,
};
pub const ecs_table_reader_t = struct_ecs_table_reader_t;
pub const struct_ecs_reader_t = extern struct {
    world: ?*ecs_world_t,
    state: ecs_blob_header_kind_t,
    data_iter: ecs_iter_t,
    data_next: ecs_iter_next_action_t,
    component_iter: ecs_iter_t,
    component_next: ecs_iter_next_action_t,
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
    type_written: ecs_size_t,
    type_array: [*c]ecs_entity_t,
    column_index: i32,
    column_size: i16,
    column_alignment: i16,
    column_written: ecs_size_t,
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
pub extern fn ecs_reader_init(world: ?*ecs_world_t) ecs_reader_t;
pub extern fn ecs_reader_init_w_iter(iter: [*c]ecs_iter_t, next: ecs_iter_next_action_t) ecs_reader_t;
pub extern fn ecs_reader_read(buffer: [*c]u8, size: i32, reader: [*c]ecs_reader_t) i32;
pub extern fn ecs_writer_init(world: ?*ecs_world_t) ecs_writer_t;
pub extern fn ecs_writer_write(buffer: [*c]const u8, size: i32, writer: [*c]ecs_writer_t) i32;
pub const struct_ecs_snapshot_t = opaque {};
pub const ecs_snapshot_t = struct_ecs_snapshot_t;
pub extern fn ecs_snapshot_take(world: ?*ecs_world_t) ?*ecs_snapshot_t;
pub extern fn ecs_snapshot_take_w_iter(iter: [*c]ecs_iter_t, action: ecs_iter_next_action_t) ?*ecs_snapshot_t;
pub extern fn ecs_snapshot_restore(world: ?*ecs_world_t, snapshot: ?*ecs_snapshot_t) void;
pub extern fn ecs_snapshot_iter(snapshot: ?*ecs_snapshot_t, filter: [*c]const ecs_filter_t) ecs_iter_t;
pub extern fn ecs_snapshot_next(iter: [*c]ecs_iter_t) bool;
pub extern fn ecs_snapshot_free(snapshot: ?*ecs_snapshot_t) void;
pub extern fn ecs_table_find_column(table: ?*const ecs_table_t, component: ecs_entity_t) i32;
pub extern fn ecs_table_get_column(table: ?*const ecs_table_t, column: i32) [*c]ecs_vector_t;
pub extern fn ecs_table_set_column(world: ?*ecs_world_t, table: ?*ecs_table_t, column: i32, vector: [*c]ecs_vector_t) [*c]ecs_vector_t;
pub extern fn ecs_table_get_entities(table: ?*const ecs_table_t) [*c]ecs_vector_t;
pub extern fn ecs_table_get_records(table: ?*const ecs_table_t) [*c]ecs_vector_t;
pub extern fn ecs_records_clear(records: [*c]ecs_vector_t) void;
pub extern fn ecs_records_update(world: ?*ecs_world_t, entities: [*c]ecs_vector_t, records: [*c]ecs_vector_t, table: ?*ecs_table_t) void;
pub extern fn ecs_table_set_entities(table: ?*ecs_table_t, entities: [*c]ecs_vector_t, records: [*c]ecs_vector_t) void;
pub extern fn ecs_table_delete_column(world: ?*ecs_world_t, table: ?*ecs_table_t, column: i32, vector: [*c]ecs_vector_t) void;
pub extern fn ecs_record_find(world: ?*ecs_world_t, entity: ecs_entity_t) [*c]ecs_record_t;
pub extern fn ecs_record_ensure(world: ?*ecs_world_t, entity: ecs_entity_t) [*c]ecs_record_t;
pub extern fn ecs_record_get_column(r: [*c]ecs_record_t, column: i32, size: usize) ?*c_void;
pub extern fn ecs_record_copy_to(world: ?*ecs_world_t, r: [*c]ecs_record_t, column: i32, size: usize, value: ?*const c_void, count: i32) void;
pub extern fn ecs_record_copy_pod_to(world: ?*ecs_world_t, r: [*c]ecs_record_t, column: i32, size: usize, value: ?*const c_void, count: i32) void;
pub extern fn ecs_record_move_to(world: ?*ecs_world_t, r: [*c]ecs_record_t, column: i32, size: usize, value: ?*c_void, count: i32) void;
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
    systems: [*c]ecs_vector_t,
    system_stats: ?*ecs_map_t,
};
pub const ecs_pipeline_stats_t = struct_ecs_pipeline_stats_t;
pub extern fn ecs_get_world_stats(world: ?*const ecs_world_t, stats: [*c]ecs_world_stats_t) void;
pub extern fn ecs_dump_world_stats(world: ?*const ecs_world_t, stats: [*c]const ecs_world_stats_t) void;
pub extern fn ecs_get_query_stats(world: ?*const ecs_world_t, query: ?*const ecs_query_t, s: [*c]ecs_query_stats_t) void;
pub extern fn ecs_get_system_stats(world: ?*const ecs_world_t, system: ecs_entity_t, stats: [*c]ecs_system_stats_t) bool;
pub extern fn ecs_get_pipeline_stats(world: ?*const ecs_world_t, pipeline: ecs_entity_t, stats: [*c]ecs_pipeline_stats_t) bool;
pub extern fn ecs_gauge_reduce(dst: [*c]ecs_gauge_t, t_dst: i32, src: [*c]ecs_gauge_t, t_src: i32) void;

pub inline fn ECS_SIZEOF(T: anytype) @TypeOf(ECS_CAST(ecs_size_t, @import("std").zig.c_translation.sizeof(T))) {
    _ = T;
    return ECS_CAST(ecs_size_t, @import("std").zig.c_translation.sizeof(T));
}
pub inline fn ECS_ALIGNOF(T: anytype) i64 {
    return @import("std").zig.c_translation.cast(i64, __alignof__(T));
}
pub const ECS_UNUSED = __attribute__(unused);
pub inline fn ECS_ALIGN(size: anytype, alignment: anytype) ecs_size_t {
    return @import("std").zig.c_translation.cast(ecs_size_t, (((@import("std").zig.c_translation.cast(usize, size) - @as(c_int, 1)) / @import("std").zig.c_translation.cast(usize, alignment)) + @as(c_int, 1)) * @import("std").zig.c_translation.cast(usize, alignment));
}
pub inline fn ECS_MAX(a: anytype, b: anytype) @TypeOf(if (a > b) a else b) {
    return if (a > b) a else b;
}
pub inline fn ECS_CAST(T: anytype, V: anytype) @TypeOf(T(V)) {
    return T(V);
}
pub const FLECS__EEcsComponent = @as(c_int, 1);
pub const FLECS__EEcsComponentLifecycle = @as(c_int, 2);
pub const FLECS__EEcsType = @as(c_int, 3);
pub const FLECS__EEcsName = @as(c_int, 6);
pub const FLECS__EEcsTrigger = @as(c_int, 4);
pub const FLECS__EEcsObserver = @as(c_int, 11);
pub const FLECS__EEcsSystem = @as(c_int, 5);
pub const FLECS__EEcsTickSource = @as(c_int, 7);
pub const FLECS__EEcsQuery = @as(c_int, 10);
pub const FLECS__EEcsPipelineQuery = @as(c_int, 13);
pub const FLECS__EEcsTimer = @as(c_int, 14);
pub const FLECS__EEcsRateFilter = @as(c_int, 15);
pub const ECS_ROLE_MASK = @as(c_ulonglong, 0xFF) << @as(c_int, 56);
pub const ECS_ENTITY_MASK = @as(c_ulonglong, 0xFFFFFFFF);
pub const ECS_GENERATION_MASK = @as(c_ulonglong, 0xFFFF) << @as(c_int, 32);
pub inline fn ECS_GENERATION(e: anytype) @TypeOf((e & ECS_GENERATION_MASK) >> @as(c_int, 32)) {
    return (e & ECS_GENERATION_MASK) >> @as(c_int, 32);
}
pub inline fn ECS_GENERATION_INC(e: anytype) @TypeOf((e & ~ECS_GENERATION_MASK) | ((ECS_GENERATION(e) + @as(c_int, 1)) << @as(c_int, 32))) {
    return (e & ~ECS_GENERATION_MASK) | ((ECS_GENERATION(e) + @as(c_int, 1)) << @as(c_int, 32));
}
pub const ECS_COMPONENT_MASK = ~ECS_ROLE_MASK;
pub inline fn ECS_PAIR_RELATION(e: anytype) @TypeOf(if (ECS_HAS_ROLE(e, PAIR)) ecs_entity_t_hi(e & ECS_COMPONENT_MASK) else if ((e & ECS_ROLE_MASK) == ECS_CHILDOF) EcsChildOf else if ((e & ECS_ROLE_MASK) == ECS_INSTANCEOF) EcsIsA else e & ECS_ROLE_MASK) {
    return if (ECS_HAS_ROLE(e, PAIR)) ecs_entity_t_hi(e & ECS_COMPONENT_MASK) else if ((e & ECS_ROLE_MASK) == ECS_CHILDOF) EcsChildOf else if ((e & ECS_ROLE_MASK) == ECS_INSTANCEOF) EcsIsA else e & ECS_ROLE_MASK;
}
pub inline fn ECS_PAIR_OBJECT(e: anytype) @TypeOf(ecs_entity_t_lo(e)) {
    return ecs_entity_t_lo(e);
}
pub inline fn ECS_HAS_PAIR(e: anytype, rel: anytype) @TypeOf((ECS_HAS_ROLE(e, PAIR) != 0) and (ECS_PAIR_RELATION(e) == rel)) {
    return (ECS_HAS_ROLE(e, PAIR) != 0) and (ECS_PAIR_RELATION(e) == rel);
}
pub inline fn ECS_HAS_RELATION(e: anytype, rel: anytype) @TypeOf(((((rel == ECS_CHILDOF) or (rel == EcsChildOf)) and ((ECS_HAS_ROLE(e, CHILDOF) != 0) or (ECS_HAS_PAIR(e, EcsChildOf) != 0))) or (((rel == ECS_INSTANCEOF) or (rel == EcsIsA)) and ((ECS_HAS_ROLE(e, INSTANCEOF) != 0) or (ECS_HAS_PAIR(e, EcsIsA) != 0)))) or (ECS_HAS_PAIR(e, rel) != 0)) {
    return ((((rel == ECS_CHILDOF) or (rel == EcsChildOf)) and ((ECS_HAS_ROLE(e, CHILDOF) != 0) or (ECS_HAS_PAIR(e, EcsChildOf) != 0))) or (((rel == ECS_INSTANCEOF) or (rel == EcsIsA)) and ((ECS_HAS_ROLE(e, INSTANCEOF) != 0) or (ECS_HAS_PAIR(e, EcsIsA) != 0)))) or (ECS_HAS_PAIR(e, rel) != 0);
}
pub inline fn ECS_HAS_PAIR_OBJECT(e: anytype, rel: anytype, obj: anytype) @TypeOf((ECS_HAS_RELATION(e, rel) != 0) and (ECS_PAIR_OBJECT(e) == obj)) {
    return (ECS_HAS_RELATION(e, rel) != 0) and (ECS_PAIR_OBJECT(e) == obj);
}
pub inline fn ECS_HAS(e: anytype, type_id: anytype) @TypeOf((e == type_id) or (ECS_HAS_PAIR_OBJECT(e, ECS_PAIR_RELATION(type_id), ECS_PAIR_OBJECT(type_id)) != 0)) {
    return (e == type_id) or (ECS_HAS_PAIR_OBJECT(e, ECS_PAIR_RELATION(type_id), ECS_PAIR_OBJECT(type_id)) != 0);
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
pub inline fn ecs_pair_relation(world: anytype, pair: anytype) @TypeOf(ecs_get_alive(world, ECS_PAIR_RELATION(pair))) {
    return ecs_get_alive(world, ECS_PAIR_RELATION(pair));
}
pub inline fn ecs_pair_object(world: anytype, pair: anytype) @TypeOf(ecs_get_alive(world, ECS_PAIR_OBJECT(pair))) {
    return ecs_get_alive(world, ECS_PAIR_OBJECT(pair));
}
pub const ECS_INVALID_OPERATION = @as(c_int, 1);
pub const ECS_INVALID_PARAMETER = @as(c_int, 2);
pub const ECS_INVALID_DELETE = @as(c_int, 3);
pub const ECS_OUT_OF_MEMORY = @as(c_int, 4);
pub const ECS_OUT_OF_RANGE = @as(c_int, 5);
pub const ECS_UNSUPPORTED = @as(c_int, 6);
pub const ECS_INTERNAL_ERROR = @as(c_int, 7);
pub const ECS_ALREADY_DEFINED = @as(c_int, 8);
pub const ECS_MISSING_OS_API = @as(c_int, 9);
pub const ECS_THREAD_ERROR = @as(c_int, 10);
pub const ECS_CYCLE_DETECTED = @as(c_int, 11);
pub const ECS_INCONSISTENT_NAME = @as(c_int, 20);
pub const ECS_NAME_IN_USE = @as(c_int, 21);
pub const ECS_NOT_A_COMPONENT = @as(c_int, 22);
pub const ECS_INVALID_COMPONENT_SIZE = @as(c_int, 23);
pub const ECS_INVALID_COMPONENT_ALIGNMENT = @as(c_int, 24);
pub const ECS_COMPONENT_NOT_REGISTERED = @as(c_int, 25);
pub const ECS_INCONSISTENT_COMPONENT_ID = @as(c_int, 26);
pub const ECS_INCONSISTENT_COMPONENT_ACTION = @as(c_int, 27);
pub const ECS_MODULE_UNDEFINED = @as(c_int, 28);
pub const ECS_COLUMN_ACCESS_VIOLATION = @as(c_int, 40);
pub const ECS_COLUMN_INDEX_OUT_OF_RANGE = @as(c_int, 41);
pub const ECS_COLUMN_IS_NOT_SHARED = @as(c_int, 42);
pub const ECS_COLUMN_IS_SHARED = @as(c_int, 43);
pub const ECS_COLUMN_HAS_NO_DATA = @as(c_int, 44);
pub const ECS_COLUMN_TYPE_MISMATCH = @as(c_int, 45);
pub const ECS_NO_OUT_COLUMNS = @as(c_int, 46);
pub const ECS_TYPE_NOT_AN_ENTITY = @as(c_int, 60);
pub const ECS_TYPE_CONSTRAINT_VIOLATION = @as(c_int, 61);
pub const ECS_TYPE_INVALID_CASE = @as(c_int, 62);
pub const ECS_INVALID_WHILE_ITERATING = @as(c_int, 70);
pub const ECS_LOCKED_STORAGE = @as(c_int, 71);
pub const ECS_INVALID_FROM_WORKER = @as(c_int, 72);
pub const ECS_DESERIALIZE_FORMAT_ERROR = @as(c_int, 80);
pub const ECS_INSTANCEOF = ECS_ROLE | (@as(c_ulonglong, 0x7E) << @as(c_int, 56));
pub const ECS_CHILDOF = ECS_ROLE | (@as(c_ulonglong, 0x7D) << @as(c_int, 56));
pub const ECS_AND = ECS_ROLE | (@as(c_ulonglong, 0x79) << @as(c_int, 56));
pub const ECS_OR = ECS_ROLE | (@as(c_ulonglong, 0x78) << @as(c_int, 56));
pub const ECS_XOR = ECS_ROLE | (@as(c_ulonglong, 0x77) << @as(c_int, 56));
pub const ECS_NOT = ECS_ROLE | (@as(c_ulonglong, 0x76) << @as(c_int, 56));
pub const ECS_TRAIT = ECS_PAIR;
pub const EcsSingleton = ECS_HI_COMPONENT_ID + @as(c_int, 37);
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
pub inline fn ECS_VECTOR_U(size: anytype, alignment: anytype) @TypeOf(ECS_CAST(i16, ECS_MAX(ECS_SIZEOF(ecs_vector_t), alignment))) {
    return blk: {
        _ = size;
        break :blk ECS_CAST(i16, ECS_MAX(ECS_SIZEOF(ecs_vector_t), alignment));
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
pub inline fn ecs_vector_addn_t(vector: anytype, size: anytype, alignment: anytype, elem_count: anytype) @TypeOf(_ecs_vector_addn(vector, ECS_VECTOR_U(size, alignment), elem_count)) {
    return _ecs_vector_addn(vector, ECS_VECTOR_U(size, alignment), elem_count);
}
pub inline fn ecs_vector_get_t(vector: anytype, size: anytype, alignment: anytype, index_1: anytype) @TypeOf(_ecs_vector_get(vector, ECS_VECTOR_U(size, alignment), index_1)) {
    return _ecs_vector_get(vector, ECS_VECTOR_U(size, alignment), index_1);
}
pub inline fn ecs_vector_set_min_size(vector: anytype, T: anytype, size: anytype) @TypeOf(_ecs_vector_set_min_size(vector, ECS_VECTOR_T(T), size)) {
    return _ecs_vector_set_min_size(vector, ECS_VECTOR_T(T), size);
}
pub inline fn ecs_vector_set_min_count(vector: anytype, T: anytype, size: anytype) @TypeOf(_ecs_vector_set_min_count(vector, ECS_VECTOR_T(T), size)) {
    return _ecs_vector_set_min_count(vector, ECS_VECTOR_T(T), size);
}
pub inline fn ecs_vector_pop(vector: anytype, T: anytype, value: anytype) @TypeOf(_ecs_vector_pop(vector, ECS_VECTOR_T(T), value)) {
    return _ecs_vector_pop(vector, ECS_VECTOR_T(T), value);
}
pub inline fn ecs_vector_move_index(dst: anytype, src: anytype, T: anytype, index_1: anytype) @TypeOf(_ecs_vector_move_index(dst, src, ECS_VECTOR_T(T), index_1)) {
    return _ecs_vector_move_index(dst, src, ECS_VECTOR_T(T), index_1);
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
pub inline fn ecs_map_new(T: anytype, elem_count: anytype) @TypeOf(_ecs_map_new(@import("std").zig.c_translation.sizeof(T), ECS_ALIGNOF(T), elem_count)) {
    return _ecs_map_new(@import("std").zig.c_translation.sizeof(T), ECS_ALIGNOF(T), elem_count);
}
pub inline fn ecs_map_get_ptr(map: anytype, T: anytype, key: anytype) @TypeOf(T ++ _ecs_map_get_ptr(map, key)) {
    return T ++ _ecs_map_get_ptr(map, key);
}
pub inline fn ecs_map_next_ptr(iter: anytype, T: anytype, key: anytype) @TypeOf(T ++ _ecs_map_next_ptr(iter, key)) {
    return T ++ _ecs_map_next_ptr(iter, key);
}
pub const ECS_STRBUF_INIT = @import("std").mem.zeroInit(ecs_strbuf_t, .{@as(c_int, 0)});
pub const ECS_STRBUF_ELEMENT_SIZE = @as(c_int, 511);
pub const ECS_STRBUF_MAX_LIST_DEPTH = @as(c_int, 32);
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
pub inline fn ecs_os_memmove(ptr: anytype, value: anytype, num: anytype) @TypeOf(memmove(ptr, value, @import("std").zig.c_translation.cast(usize, num))) {
    return memmove(ptr, value, @import("std").zig.c_translation.cast(usize, num));
}
pub inline fn ecs_os_strcmp(str1: anytype, str2: anytype) @TypeOf(strcmp(str1, str2)) {
    return strcmp(str1, str2);
}
pub inline fn ecs_os_strcat(str1: anytype, str2: anytype) @TypeOf(strcat(str1, str2)) {
    return strcat(str1, str2);
}
pub inline fn ecs_os_vsprintf(ptr: anytype, fmt: anytype, args: anytype) @TypeOf(vsprintf(ptr, fmt, args)) {
    return vsprintf(ptr, fmt, args);
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
pub const ECS_FILTER_DESC_TERM_ARRAY_MAX = @as(c_int, 16);
pub const ECS_TRIGGER_DESC_EVENT_COUNT_MAX = @as(c_int, 8);
pub const EcsDefaultSet = @as(c_int, 0);
pub const EcsSelf = @as(c_int, 1);
pub const EcsSuperSet = @as(c_int, 2);
pub const EcsSubSet = @as(c_int, 4);
pub const EcsCascade = @as(c_int, 8);
pub const EcsAll = @as(c_int, 16);
pub const EcsNothing = @as(c_int, 32);
pub const ECS_HI_COMPONENT_ID = @as(c_int, 256);
pub const ECS_MAX_RECURSION = @as(c_int, 512);
pub const FLECS__TNULL = @as(c_int, 0);
pub const FLECS__T0 = @as(c_int, 0);
pub const FLECS__E0 = @as(c_int, 0);
pub inline fn ECS_OFFSET(o: anytype, offset: anytype) ?*c_void {
    return @import("std").zig.c_translation.cast(?*c_void, @import("std").zig.c_translation.cast(usize, o) + @import("std").zig.c_translation.cast(usize, offset));
}
pub inline fn ecs_entity(T: anytype) @TypeOf(ecs_typeid(T)) {
    return ecs_typeid(T);
}
pub inline fn ecs_trait(comp: anytype, trait: anytype) @TypeOf(ECS_TRAIT | ecs_entity_t_comb(comp, trait)) {
    return ECS_TRAIT | ecs_entity_t_comb(comp, trait);
}
pub inline fn ecs_add_trait(world: anytype, entity: anytype, component: anytype, trait: anytype) @TypeOf(ecs_add_entity(world, entity, ecs_trait(component, trait))) {
    return ecs_add_entity(world, entity, ecs_trait(component, trait));
}
pub inline fn ecs_remove_trait(world: anytype, entity: anytype, component: anytype, trait: anytype) @TypeOf(ecs_remove_entity(world, entity, ecs_trait(component, trait))) {
    return ecs_remove_entity(world, entity, ecs_trait(component, trait));
}
pub inline fn ecs_has_trait(world: anytype, entity: anytype, component: anytype, trait: anytype) @TypeOf(ecs_has_entity(world, entity, ecs_trait(component, trait))) {
    return ecs_has_entity(world, entity, ecs_trait(component, trait));
}
pub inline fn ECS_ENTITY_DECLARE(id: anytype) @TypeOf(ecs_entity_t ++ id) {
    return ecs_entity_t ++ id;
}
pub inline fn ecs_new(world: anytype, type_1: anytype) @TypeOf(ecs_new_w_type(world, ecs_type(type_1))) {
    return ecs_new_w_type(world, ecs_type(type_1));
}
pub inline fn ecs_bulk_new(world: anytype, component: anytype, count: anytype) @TypeOf(ecs_bulk_new_w_type(world, ecs_type(component), count)) {
    return ecs_bulk_new_w_type(world, ecs_type(component), count);
}
pub inline fn ecs_add(world: anytype, entity: anytype, component: anytype) @TypeOf(ecs_add_type(world, entity, ecs_type(component))) {
    return ecs_add_type(world, entity, ecs_type(component));
}
pub inline fn ecs_remove(world: anytype, entity: anytype, type_1: anytype) @TypeOf(ecs_remove_type(world, entity, ecs_type(type_1))) {
    return ecs_remove_type(world, entity, ecs_type(type_1));
}
pub inline fn ecs_add_remove(world: anytype, entity: anytype, to_add: anytype, to_remove: anytype) @TypeOf(ecs_add_remove_type(world, entity, ecs_type(to_add), ecs_type(to_remove))) {
    return ecs_add_remove_type(world, entity, ecs_type(to_add), ecs_type(to_remove));
}
pub inline fn ecs_has(world: anytype, entity: anytype, type_1: anytype) @TypeOf(ecs_has_type(world, entity, ecs_type(type_1))) {
    return ecs_has_type(world, entity, ecs_type(type_1));
}
pub inline fn ecs_owns(world: anytype, entity: anytype, type_1: anytype, owned: anytype) @TypeOf(ecs_type_owns_type(world, ecs_get_type(world, entity), ecs_type(type_1), owned)) {
    return ecs_type_owns_type(world, ecs_get_type(world, entity), ecs_type(type_1), owned);
}
pub inline fn ecs_set_ptr_w_id(world: anytype, entity: anytype, size: anytype, ptr: anytype) @TypeOf(ecs_set_id(world, entity, size, ptr)) {
    return ecs_set_id(world, entity, size, ptr);
}
pub inline fn ecs_owns_entity(world: anytype, entity: anytype, id: anytype, owned: anytype) @TypeOf(ecs_type_owns_id(world, ecs_get_type(world, entity), id, owned)) {
    return ecs_type_owns_id(world, ecs_get_type(world, entity), id, owned);
}
pub inline fn ecs_get_parent(world: anytype, entity: anytype, component: anytype) @TypeOf(ecs_get_parent_w_entity(world, entity, ecs_typeid(component))) {
    return ecs_get_parent_w_entity(world, entity, ecs_typeid(component));
}
pub inline fn ecs_column(it: anytype, T: anytype, column: anytype) @TypeOf(ecs_column_w_size(it, @import("std").zig.c_translation.sizeof(T), column)) {
    _ = T;
    return ecs_column_w_size(it, @import("std").zig.c_translation.sizeof(T), column);
}
pub const ECS_ROLE = @as(c_ulonglong, 1) << @as(c_int, 63);
pub const EcsLastInternalComponentId = ecs_id(EcsSystem);
pub const EcsFirstUserComponentId = @as(c_int, 32);
pub const EcsFirstUserEntityId = ECS_HI_COMPONENT_ID + @as(c_int, 64);
pub inline fn ecs_enable_component(world: anytype, entity: anytype, T: anytype, enable: anytype) @TypeOf(ecs_enable_component_w_id(world, entity, ecs_id(T), enable)) {
    return ecs_enable_component_w_id(world, entity, ecs_id(T), enable);
}
pub inline fn ecs_is_component_enabled(world: anytype, entity: anytype, T: anytype) @TypeOf(ecs_is_component_enabled_w_id(world, entity, ecs_id(T))) {
    return ecs_is_component_enabled_w_id(world, entity, ecs_id(T));
}
pub inline fn ecs_new_w_pair(world: anytype, relation: anytype, object: anytype) @TypeOf(ecs_new_w_id(world, ecs_pair(relation, object))) {
    return ecs_new_w_id(world, ecs_pair(relation, object));
}
pub inline fn ecs_add_pair(world: anytype, subject: anytype, relation: anytype, object: anytype) @TypeOf(ecs_add_id(world, subject, ecs_pair(relation, object))) {
    return ecs_add_id(world, subject, ecs_pair(relation, object));
}
pub inline fn ecs_remove_pair(world: anytype, subject: anytype, relation: anytype, object: anytype) @TypeOf(ecs_remove_id(world, subject, ecs_pair(relation, object))) {
    return ecs_remove_id(world, subject, ecs_pair(relation, object));
}
pub inline fn ecs_has_pair(world: anytype, subject: anytype, relation: anytype, object: anytype) @TypeOf(ecs_has_id(world, subject, ecs_pair(relation, object))) {
    return ecs_has_id(world, subject, ecs_pair(relation, object));
}
pub inline fn ecs_modified_pair(world: anytype, subject: anytype, relation: anytype, object: anytype) @TypeOf(ecs_modified_id(world, subject, ecs_pair(relation, object))) {
    return ecs_modified_id(world, subject, ecs_pair(relation, object));
}
pub inline fn ecs_modified(world: anytype, entity: anytype, component: anytype) @TypeOf(ecs_modified_id(world, entity, ecs_id(component))) {
    return ecs_modified_id(world, entity, ecs_id(component));
}
pub inline fn ecs_set_ptr(world: anytype, entity: anytype, component: anytype, ptr: anytype) @TypeOf(ecs_set_id(world, entity, ecs_id(component), @import("std").zig.c_translation.sizeof(component), ptr)) {
    return ecs_set_id(world, entity, ecs_id(component), @import("std").zig.c_translation.sizeof(component), ptr);
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
pub inline fn ecs_get_object(world: anytype, entity: anytype, rel: anytype, component: anytype) @TypeOf(ecs_get_parent_w_id(world, entity, ecs_id(component))) {
    _ = rel;
    return ecs_get_parent_w_id(world, entity, ecs_id(component));
}
pub inline fn ecs_count(world: anytype, type_1: anytype) @TypeOf(ecs_count_type(world, ecs_type(type_1))) {
    return ecs_count_type(world, ecs_type(type_1));
}
pub inline fn ecs_lookup_path(world: anytype, parent: anytype, path: anytype) @TypeOf(ecs_lookup_path_w_sep(world, parent, path, ".", NULL, @"true")) {
    return ecs_lookup_path_w_sep(world, parent, path, ".", NULL, @"true");
}
pub inline fn ecs_lookup_fullpath(world: anytype, path: anytype) @TypeOf(ecs_lookup_path_w_sep(world, @as(c_int, 0), path, ".", NULL, @"true")) {
    return ecs_lookup_path_w_sep(world, @as(c_int, 0), path, ".", NULL, @"true");
}
pub inline fn ecs_get_path(world: anytype, parent: anytype, child: anytype) @TypeOf(ecs_get_path_w_sep(world, parent, child, @as(c_int, 0), ".", NULL)) {
    return ecs_get_path_w_sep(world, parent, child, @as(c_int, 0), ".", NULL);
}
pub inline fn ecs_get_fullpath(world: anytype, child: anytype) @TypeOf(ecs_get_path_w_sep(world, @as(c_int, 0), child, @as(c_int, 0), ".", NULL)) {
    return ecs_get_path_w_sep(world, @as(c_int, 0), child, @as(c_int, 0), ".", NULL);
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
pub inline fn ECS_DECLARE_TYPE(id: anytype) @TypeOf(ECS_DECLARE_ENTITY(id)) {
    return ECS_DECLARE_ENTITY(id);
}
pub inline fn ECS_EXPORT_COMPONENT(id: anytype) @TypeOf(ECS_SET_COMPONENT(id)) {
    return ECS_SET_COMPONENT(id);
}
pub inline fn ECS_EXPORT_ENTITY(id: anytype) @TypeOf(ECS_SET_ENTITY(id)) {
    return ECS_SET_ENTITY(id);
}
pub inline fn ECS_EXPORT_TYPE(id: anytype) @TypeOf(ECS_SET_TYPE(id)) {
    return ECS_SET_TYPE(id);
}
pub inline fn ecs_bulk_add(world: anytype, type_1: anytype, filter: anytype) @TypeOf(ecs_bulk_add_type(world, ecs_type(type_1), filter)) {
    return ecs_bulk_add_type(world, ecs_type(type_1), filter);
}
pub inline fn ecs_bulk_remove(world: anytype, type_1: anytype, filter: anytype) @TypeOf(ecs_bulk_remove_type(world, ecs_type(type_1), filter)) {
    return ecs_bulk_remove_type(world, ecs_type(type_1), filter);
}
pub inline fn ecs_bulk_add_remove(world: anytype, to_add: anytype, to_remove: anytype, filter: anytype) @TypeOf(ecs_bulk_add_remove_type(world, ecs_type(to_add), ecs_type(to_remove), filter)) {
    return ecs_bulk_add_remove_type(world, ecs_type(to_add), ecs_type(to_remove), filter);
}
pub inline fn ecs_queue_new(T: anytype, elem_count: anytype) @TypeOf(_ecs_queue_new(ECS_VECTOR_T(T), elem_count)) {
    return _ecs_queue_new(ECS_VECTOR_T(T), elem_count);
}
pub inline fn ecs_queue_from_array(T: anytype, elem_count: anytype, array: anytype) @TypeOf(_ecs_queue_from_array(ECS_VECTOR_T(T), elem_count, array)) {
    return _ecs_queue_from_array(ECS_VECTOR_T(T), elem_count, array);
}
pub inline fn ecs_queue_get_t(vector: anytype, size: anytype, alignment: anytype, index_1: anytype) @TypeOf(_ecs_queue_get(vector, ECS_VECTOR_U(size, alignment), index_1)) {
    return _ecs_queue_get(vector, ECS_VECTOR_U(size, alignment), index_1);
}
pub const ECS_STAT_WINDOW = @as(c_int, 60);
pub const ecs_bucket_t = struct_ecs_bucket_t;
