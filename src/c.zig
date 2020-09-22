const ecs_iter_t = @import("flecs.zig").ecs_iter_t;

pub const ecs_size_t = i32;
pub const struct_ecs_vector_t = extern struct {
    count: i32,
    size: i32,
    elem_size: i64,
};
pub const ecs_vector_t = struct_ecs_vector_t;
pub const ecs_comparator_t = ?fn (?*const c_void, ?*const c_void) callconv(.C) c_int;
pub extern fn _ecs_vector_new(elem_size: ecs_size_t, offset: i16, elem_count: i32) [*c]ecs_vector_t;
pub extern fn _ecs_vector_from_array(elem_size: ecs_size_t, offset: i16, elem_count: i32, array: ?*c_void) [*c]ecs_vector_t;
pub extern fn ecs_vector_free(vector: [*c]ecs_vector_t) void;
pub extern fn ecs_vector_clear(vector: [*c]ecs_vector_t) void;
pub extern fn _ecs_vector_add(array_inout: [*c][*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16) ?*c_void;
pub extern fn _ecs_vector_addn(array_inout: [*c][*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16, elem_count: i32) ?*c_void;
pub extern fn _ecs_vector_get(vector: [*c]const ecs_vector_t, elem_size: ecs_size_t, offset: i16, index: i32) ?*c_void;
pub extern fn _ecs_vector_last(vector: [*c]const ecs_vector_t, elem_size: ecs_size_t, offset: i16) ?*c_void;
pub extern fn _ecs_vector_remove(vector: [*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16, elem: ?*c_void) i32;
pub extern fn ecs_vector_remove_last(vector: [*c]ecs_vector_t) void;
pub extern fn _ecs_vector_pop(vector: [*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16, value: ?*c_void) bool;
pub extern fn _ecs_vector_move_index(dst: [*c][*c]ecs_vector_t, src: [*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16, index: i32) i32;
pub extern fn _ecs_vector_remove_index(vector: [*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16, index: i32) i32;
pub extern fn _ecs_vector_reclaim(vector: [*c][*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16) void;
pub extern fn _ecs_vector_grow(vector: [*c][*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16, elem_count: i32) i32;
pub extern fn _ecs_vector_set_size(vector: [*c][*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16, elem_count: i32) i32;
pub extern fn _ecs_vector_set_count(vector: [*c][*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16, elem_count: i32) i32;
pub extern fn _ecs_vector_set_min_size(array_inout: [*c][*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16, elem_count: i32) i32;
pub extern fn _ecs_vector_set_min_count(vector_inout: [*c][*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16, elem_count: i32) i32;
pub extern fn ecs_vector_count(vector: [*c]const ecs_vector_t) i32;
pub extern fn ecs_vector_size(vector: [*c]const ecs_vector_t) i32;
pub extern fn _ecs_vector_first(vector: [*c]const ecs_vector_t, elem_size: ecs_size_t, offset: i16) ?*c_void;
pub extern fn _ecs_vector_sort(vector: [*c]ecs_vector_t, elem_size: ecs_size_t, offset: i16, compare_action: ecs_comparator_t) void;
pub extern fn _ecs_vector_memory(vector: [*c]const ecs_vector_t, elem_size: ecs_size_t, offset: i16, allocd: [*c]i32, used: [*c]i32) void;
pub extern fn _ecs_vector_copy(src: [*c]const ecs_vector_t, elem_size: ecs_size_t, offset: i16) [*c]ecs_vector_t;
pub const struct_ecs_sparse_t = @Type(.Opaque);
pub const ecs_sparse_t = struct_ecs_sparse_t;
pub extern fn _ecs_sparse_new(elem_size: ecs_size_t) ?*ecs_sparse_t;
pub extern fn ecs_sparse_set_id_source(sparse: ?*ecs_sparse_t, id_source: [*c]u64) void;
pub extern fn ecs_sparse_free(sparse: ?*ecs_sparse_t) void;
pub extern fn ecs_sparse_clear(sparse: ?*ecs_sparse_t) void;
pub extern fn _ecs_sparse_add(sparse: ?*ecs_sparse_t, elem_size: ecs_size_t) ?*c_void;
pub extern fn ecs_sparse_last_id(sparse: ?*ecs_sparse_t) u64;
pub extern fn ecs_sparse_new_id(sparse: ?*ecs_sparse_t) u64;
pub extern fn ecs_sparse_new_ids(sparse: ?*ecs_sparse_t, count: i32) [*c]const u64;
pub extern fn _ecs_sparse_remove(sparse: ?*ecs_sparse_t, index: u64) void;
pub extern fn _ecs_sparse_get(sparse: ?*const ecs_sparse_t, elem_size: ecs_size_t, index: i32) ?*c_void;
pub extern fn ecs_sparse_count(sparse: ?*const ecs_sparse_t) i32;
pub extern fn ecs_sparse_size(sparse: ?*const ecs_sparse_t) i32;
pub extern fn _ecs_sparse_get_sparse(sparse: ?*const ecs_sparse_t, elem_size: ecs_size_t, index: u64) ?*c_void;
pub extern fn _ecs_sparse_get_or_create(sparse: ?*ecs_sparse_t, elem_size: ecs_size_t, index: u64) ?*c_void;
pub extern fn _ecs_sparse_set(sparse: ?*ecs_sparse_t, elem_size: ecs_size_t, index: u64, value: ?*c_void) ?*c_void;
pub extern fn ecs_sparse_ids(sparse: ?*const ecs_sparse_t) [*c]const u64;
pub extern fn ecs_sparse_set_size(sparse: ?*ecs_sparse_t, elem_count: i32) void;
pub extern fn ecs_sparse_grow(sparse: ?*ecs_sparse_t, count: i32) void;
pub extern fn ecs_sparse_copy(src: ?*const ecs_sparse_t) ?*ecs_sparse_t;
pub extern fn ecs_sparse_restore(dst: ?*ecs_sparse_t, src: ?*const ecs_sparse_t) void;
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
pub extern fn _ecs_map_new(elem_size: ecs_size_t, alignment: ecs_size_t, elem_count: i32) ?*ecs_map_t;
pub extern fn _ecs_map_get(map: ?*const ecs_map_t, elem_size: ecs_size_t, key: ecs_map_key_t) ?*c_void;
pub extern fn _ecs_map_has(map: ?*const ecs_map_t, elem_size: ecs_size_t, key: ecs_map_key_t, payload: ?*c_void) bool;
pub extern fn _ecs_map_get_ptr(map: ?*const ecs_map_t, key: ecs_map_key_t) ?*c_void;
pub extern fn _ecs_map_set(map: ?*ecs_map_t, elem_size: ecs_size_t, key: ecs_map_key_t, payload: ?*const c_void) void;
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
pub extern fn ecs_map_copy(map: ?*const ecs_map_t) ?*ecs_map_t;
pub const struct_ecs_switch_header_t = extern struct {
    element: i32,
    count: i32,
};
pub const ecs_switch_header_t = struct_ecs_switch_header_t;
pub const struct_ecs_switch_node_t = extern struct {
    next: i32,
    prev: i32,
};
pub const ecs_switch_node_t = struct_ecs_switch_node_t;
pub const struct_ecs_switch_t = extern struct {
    min: u64,
    max: u64,
    headers: [*c]ecs_switch_header_t,
    nodes: [*c]ecs_vector_t,
    values: [*c]ecs_vector_t,
};
pub const ecs_switch_t = struct_ecs_switch_t;
pub extern fn ecs_switch_new(min: u64, max: u64, elements: i32) [*c]ecs_switch_t;
pub extern fn ecs_switch_free(sw: [*c]ecs_switch_t) void;
pub extern fn ecs_switch_add(sw: [*c]ecs_switch_t) void;
pub extern fn ecs_switch_set_count(sw: [*c]ecs_switch_t, count: i32) void;
pub extern fn ecs_switch_set_min_count(sw: [*c]ecs_switch_t, count: i32) void;
pub extern fn ecs_switch_addn(sw: [*c]ecs_switch_t, count: i32) void;
pub extern fn ecs_switch_set(sw: [*c]ecs_switch_t, element: i32, value: u64) void;
pub extern fn ecs_switch_remove(sw: [*c]ecs_switch_t, element: i32) void;
pub extern fn ecs_switch_get(sw: [*c]const ecs_switch_t, element: i32) u64;
pub extern fn ecs_switch_values(sw: [*c]const ecs_switch_t) [*c]ecs_vector_t;
pub extern fn ecs_switch_case_count(sw: [*c]const ecs_switch_t, value: u64) i32;
pub extern fn ecs_switch_first(sw: [*c]const ecs_switch_t, value: u64) i32;
pub extern fn ecs_switch_next(sw: [*c]const ecs_switch_t, elem: i32) i32;
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
pub extern fn ecs_strbuf_vappend(buffer: [*c]ecs_strbuf_t, fmt: [*c]const u8, args: [*c]struct___va_list_tag) bool;
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
pub const ecs_os_api_log_t = ?fn ([*c]const u8, [*c]struct___va_list_tag) callconv(.C) void;
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
pub const ecs_entity_t = u64;
pub const ecs_type_t = [*c]const ecs_vector_t;
pub const struct_ecs_world_t = @Type(.Opaque);
pub const ecs_world_t = struct_ecs_world_t;
pub const struct_ecs_snapshot_t = @Type(.Opaque);
pub const ecs_snapshot_t = struct_ecs_snapshot_t;
pub const struct_ecs_query_t = @Type(.Opaque);
pub const ecs_query_t = struct_ecs_query_t;

pub const struct_ecs_ref_t = extern struct {
    entity: ecs_entity_t,
    component: ecs_entity_t,
    table: ?*c_void,
    row: i32,
    alloc_count: i32,
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
    delta_time_raw: f32,
    delta_time: f32,
    time_scale: f32,
    target_fps: f32,
    frame_time_total: f32,
    system_time_total: f32,
    merge_time_total: f32,
    world_time_total: f32,
    world_time_total_raw: f32,
    sleep_err: f32,
    frame_count_total: i32,
    merge_count_total: i32,
    pipeline_build_count_total: i32,
    systems_ran_frame: i32,
};
pub const ecs_world_info_t = struct_ecs_world_info_t;
pub const ecs_iter_action_t = ?fn (*ecs_iter_t) callconv(.C) void;
pub const ecs_iter_next_action_t = ?fn (*ecs_iter_t) callconv(.C) bool;
pub const ecs_compare_action_t = ?fn (ecs_entity_t, ?*c_void, ecs_entity_t, ?*c_void) callconv(.C) c_int;
pub const ecs_rank_type_action_t = ?fn (?*ecs_world_t, ecs_entity_t, ecs_type_t) callconv(.C) i32;
pub const ecs_module_action_t = ?fn (?*ecs_world_t) callconv(.C) void;
pub const ecs_fini_action_t = ?fn (?*ecs_world_t, ?*c_void) callconv(.C) void;
pub const struct_ecs_stage_t = @Type(.Opaque);
pub const ecs_stage_t = struct_ecs_stage_t;
pub const struct_ecs_table_t = @Type(.Opaque);
pub const ecs_table_t = struct_ecs_table_t;
pub const struct_ecs_record_t = @Type(.Opaque);
pub const ecs_record_t = struct_ecs_record_t;
pub const struct_ecs_column_t = @Type(.Opaque);
pub const ecs_column_t = struct_ecs_column_t;
pub const struct_ecs_data_t = @Type(.Opaque);
pub const ecs_data_t = struct_ecs_data_t;
pub const struct_ecs_entities_t = extern struct {
    array: [*c]ecs_entity_t,
    count: i32,
};
pub const ecs_entities_t = struct_ecs_entities_t;
pub const struct_ecs_page_cursor_t = extern struct {
    first: i32,
    count: i32,
};
pub const ecs_page_cursor_t = struct_ecs_page_cursor_t;
pub const struct_ecs_page_iter_t = extern struct {
    offset: i32,
    limit: i32,
    remaining: i32,
};
pub const ecs_page_iter_t = struct_ecs_page_iter_t;
pub const struct_ecs_scope_iter_t = extern struct {
    filter: ecs_filter_t,
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
    page_iter: ecs_page_iter_t,
    index: i32,
    sparse_smallest: i32,
    sparse_first: i32,
};
pub const ecs_query_iter_t = struct_ecs_query_iter_t;
pub const struct_ecs_snapshot_iter_t = extern struct {
    filter: ecs_filter_t,
    tables: [*c]ecs_vector_t,
    index: i32,
};
pub const ecs_snapshot_iter_t = struct_ecs_snapshot_iter_t;
pub const EcsMatchOk = @enumToInt(enum_EcsMatchFailureReason.EcsMatchOk);
pub const EcsMatchNotASystem = @enumToInt(enum_EcsMatchFailureReason.EcsMatchNotASystem);
pub const EcsMatchSystemIsATask = @enumToInt(enum_EcsMatchFailureReason.EcsMatchSystemIsATask);
pub const EcsMatchEntityIsDisabled = @enumToInt(enum_EcsMatchFailureReason.EcsMatchEntityIsDisabled);
pub const EcsMatchEntityIsPrefab = @enumToInt(enum_EcsMatchFailureReason.EcsMatchEntityIsPrefab);
pub const EcsMatchFromSelf = @enumToInt(enum_EcsMatchFailureReason.EcsMatchFromSelf);
pub const EcsMatchFromOwned = @enumToInt(enum_EcsMatchFailureReason.EcsMatchFromOwned);
pub const EcsMatchFromShared = @enumToInt(enum_EcsMatchFailureReason.EcsMatchFromShared);
pub const EcsMatchFromContainer = @enumToInt(enum_EcsMatchFailureReason.EcsMatchFromContainer);
pub const EcsMatchFromEntity = @enumToInt(enum_EcsMatchFailureReason.EcsMatchFromEntity);
pub const EcsMatchOrFromSelf = @enumToInt(enum_EcsMatchFailureReason.EcsMatchOrFromSelf);
pub const EcsMatchOrFromOwned = @enumToInt(enum_EcsMatchFailureReason.EcsMatchOrFromOwned);
pub const EcsMatchOrFromShared = @enumToInt(enum_EcsMatchFailureReason.EcsMatchOrFromShared);
pub const EcsMatchOrFromContainer = @enumToInt(enum_EcsMatchFailureReason.EcsMatchOrFromContainer);
pub const EcsMatchNotFromSelf = @enumToInt(enum_EcsMatchFailureReason.EcsMatchNotFromSelf);
pub const EcsMatchNotFromOwned = @enumToInt(enum_EcsMatchFailureReason.EcsMatchNotFromOwned);
pub const EcsMatchNotFromShared = @enumToInt(enum_EcsMatchFailureReason.EcsMatchNotFromShared);
pub const EcsMatchNotFromContainer = @enumToInt(enum_EcsMatchFailureReason.EcsMatchNotFromContainer);
pub const enum_EcsMatchFailureReason = extern enum(c_int) {
    EcsMatchOk,
    EcsMatchNotASystem,
    EcsMatchSystemIsATask,
    EcsMatchEntityIsDisabled,
    EcsMatchEntityIsPrefab,
    EcsMatchFromSelf,
    EcsMatchFromOwned,
    EcsMatchFromShared,
    EcsMatchFromContainer,
    EcsMatchFromEntity,
    EcsMatchOrFromSelf,
    EcsMatchOrFromOwned,
    EcsMatchOrFromShared,
    EcsMatchOrFromContainer,
    EcsMatchNotFromSelf,
    EcsMatchNotFromOwned,
    EcsMatchNotFromShared,
    EcsMatchNotFromContainer,
    _,
};
pub const EcsMatchFailureReason = enum_EcsMatchFailureReason;
pub const struct_ecs_match_failure_t = extern struct {
    reason: EcsMatchFailureReason,
    column: i32,
};
pub const ecs_match_failure_t = struct_ecs_match_failure_t;
pub const ecs_xtor_t = ?fn (?*ecs_world_t, ecs_entity_t, [*c]const ecs_entity_t, ?*c_void, usize, i32, ?*c_void) callconv(.C) void;
pub const ecs_copy_t = ?fn (?*ecs_world_t, ecs_entity_t, [*c]const ecs_entity_t, [*c]const ecs_entity_t, ?*c_void, ?*const c_void, usize, i32, ?*c_void) callconv(.C) void;
pub const ecs_move_t = ?fn (?*ecs_world_t, ecs_entity_t, [*c]const ecs_entity_t, [*c]const ecs_entity_t, ?*c_void, ?*c_void, usize, i32, ?*c_void) callconv(.C) void;
pub extern var FLECS__TEcsComponent: ecs_type_t;
pub extern var FLECS__TEcsComponentLifecycle: ecs_type_t;
pub extern var FLECS__TEcsType: ecs_type_t;
pub extern var FLECS__TEcsName: ecs_type_t;
pub extern fn ecs_new_entity(world: ?*ecs_world_t, e: ecs_entity_t, id: [*c]const u8, components: [*c]const u8) ecs_entity_t;
pub extern fn ecs_new_component(world: ?*ecs_world_t, e: ecs_entity_t, id: [*c]const u8, size: usize, alignment: usize) ecs_entity_t;
pub extern fn ecs_new_module(world: ?*ecs_world_t, e: ecs_entity_t, name: [*c]const u8, size: usize, alignment: usize) ecs_entity_t;
pub extern fn ecs_new_type(world: ?*ecs_world_t, e: ecs_entity_t, id: [*c]const u8, components: [*c]const u8) ecs_entity_t;
pub extern fn ecs_new_prefab(world: ?*ecs_world_t, e: ecs_entity_t, id: [*c]const u8, sig: [*c]const u8) ecs_entity_t;
pub extern fn ecs_new_system(world: ?*ecs_world_t, e: ecs_entity_t, name: [*c]const u8, phase: ecs_entity_t, signature: [*c]const u8, action: ecs_iter_action_t) ecs_entity_t;
pub extern fn ecs_new_trigger(world: ?*ecs_world_t, e: ecs_entity_t, name: [*c]const u8, kind: ecs_entity_t, component: [*c]const u8, action: ecs_iter_action_t) ecs_entity_t;
pub extern fn ecs_new_pipeline(world: ?*ecs_world_t, e: ecs_entity_t, name: [*c]const u8, expr: [*c]const u8) ecs_entity_t;
pub extern fn ecs_module_path_from_c(c_name: [*c]const u8) [*c]u8;
pub extern fn ecs_component_has_actions(world: ?*ecs_world_t, component: ecs_entity_t) bool;
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
pub const EcsFromAny = @enumToInt(enum_ecs_sig_from_kind_t.EcsFromAny);
pub const EcsFromOwned = @enumToInt(enum_ecs_sig_from_kind_t.EcsFromOwned);
pub const EcsFromShared = @enumToInt(enum_ecs_sig_from_kind_t.EcsFromShared);
pub const EcsFromParent = @enumToInt(enum_ecs_sig_from_kind_t.EcsFromParent);
pub const EcsFromSystem = @enumToInt(enum_ecs_sig_from_kind_t.EcsFromSystem);
pub const EcsFromEmpty = @enumToInt(enum_ecs_sig_from_kind_t.EcsFromEmpty);
pub const EcsFromEntity = @enumToInt(enum_ecs_sig_from_kind_t.EcsFromEntity);
pub const EcsCascade = @enumToInt(enum_ecs_sig_from_kind_t.EcsCascade);
pub const enum_ecs_sig_from_kind_t = extern enum(c_int) {
    EcsFromAny,
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
pub const EcsOperAll = @enumToInt(enum_ecs_sig_oper_kind_t.EcsOperAll);
pub const EcsOperLast = @enumToInt(enum_ecs_sig_oper_kind_t.EcsOperLast);
pub const enum_ecs_sig_oper_kind_t = extern enum(c_int) {
    EcsOperAnd = 0,
    EcsOperOr = 1,
    EcsOperNot = 2,
    EcsOperOptional = 3,
    EcsOperAll = 4,
    EcsOperLast = 5,
    _,
};
pub const ecs_sig_oper_kind_t = enum_ecs_sig_oper_kind_t;
const union_unnamed_10 = extern union {
    type: [*c]ecs_vector_t,
    component: ecs_entity_t,
};
pub const struct_ecs_sig_column_t = extern struct {
    from_kind: ecs_sig_from_kind_t,
    oper_kind: ecs_sig_oper_kind_t,
    inout_kind: ecs_sig_inout_kind_t,
    is: union_unnamed_10,
    source: ecs_entity_t,
    name: [*c]u8,
};
pub const ecs_sig_column_t = struct_ecs_sig_column_t;
pub const struct_ecs_sig_t = extern struct {
    name: [*c]const u8,
    expr: [*c]u8,
    columns: [*c]ecs_vector_t,
};
pub const ecs_sig_t = struct_ecs_sig_t;
pub extern fn ecs_sig_init(world: ?*ecs_world_t, name: [*c]const u8, expr: [*c]const u8, sig: [*c]ecs_sig_t) void;
pub extern fn ecs_sig_deinit(sig: [*c]ecs_sig_t) void;
pub extern fn ecs_sig_add(world: ?*ecs_world_t, sig: [*c]ecs_sig_t, from_kind: ecs_sig_from_kind_t, oper_kind: ecs_sig_oper_kind_t, access_kind: ecs_sig_inout_kind_t, component: ecs_entity_t, source: ecs_entity_t, arg_name: [*c]const u8) c_int;
pub extern fn ecs_query_new_w_sig(world: ?*ecs_world_t, system: ecs_entity_t, sig: [*c]ecs_sig_t) ?*ecs_query_t;
pub extern fn _ecs_trace(level: c_int, file: [*c]const u8, line: i32, fmt: [*c]const u8, ...) void;
pub extern fn _ecs_warn(file: [*c]const u8, line: i32, fmt: [*c]const u8, ...) void;
pub extern fn _ecs_err(file: [*c]const u8, line: i32, fmt: [*c]const u8, ...) void;
pub extern fn ecs_log_push() void;
pub extern fn ecs_log_pop() void;
pub extern fn ecs_strerror(error_code: i32) [*c]const u8;
pub extern fn _ecs_abort(error_code: i32, param: [*c]const u8, file: [*c]const u8, line: i32) void;
pub extern fn _ecs_assert(condition: bool, error_code: i32, param: [*c]const u8, condition_str: [*c]const u8, file: [*c]const u8, line: i32) void;
pub extern fn _ecs_parser_error(name: [*c]const u8, expr: [*c]const u8, column: i64, fmt: [*c]const u8, ...) void;
pub extern fn ecs_type_from_entity(world: ?*ecs_world_t, entity: ecs_entity_t) ecs_type_t;
pub extern fn ecs_type_to_entity(world: ?*ecs_world_t, type: ecs_type_t) ecs_entity_t;
pub extern fn ecs_type_str(world: ?*ecs_world_t, type: ecs_type_t) [*c]u8;
pub extern fn ecs_type_from_str(world: ?*ecs_world_t, expr: [*c]const u8) ecs_type_t;
pub extern fn ecs_type_find(world: ?*ecs_world_t, array: [*c]ecs_entity_t, count: i32) ecs_type_t;
pub extern fn ecs_type_merge(world: ?*ecs_world_t, type: ecs_type_t, type_add: ecs_type_t, type_remove: ecs_type_t) ecs_type_t;
pub extern fn ecs_type_add(world: ?*ecs_world_t, type: ecs_type_t, entity: ecs_entity_t) ecs_type_t;
pub extern fn ecs_type_remove(world: ?*ecs_world_t, type: ecs_type_t, entity: ecs_entity_t) ecs_type_t;
pub extern fn ecs_type_has_entity(world: ?*ecs_world_t, type: ecs_type_t, entity: ecs_entity_t) bool;
pub extern fn ecs_type_has_type(world: ?*ecs_world_t, type: ecs_type_t, has: ecs_type_t) bool;
pub extern fn ecs_type_owns_entity(world: ?*ecs_world_t, type: ecs_type_t, entity: ecs_entity_t, owned: bool) bool;
pub extern fn ecs_type_owns_type(world: ?*ecs_world_t, type: ecs_type_t, has: ecs_type_t, owned: bool) bool;
pub extern fn ecs_type_get_entity_for_xor(world: ?*ecs_world_t, type: ecs_type_t, xor_tag: ecs_entity_t) ecs_entity_t;
pub extern fn ecs_type_index_of(type: ecs_type_t, component: ecs_entity_t) i32;
pub extern fn ecs_type_trait_index_of(type: ecs_type_t, start_index: i32, trait: ecs_entity_t) i32;
pub const struct_EcsName = extern struct {
    value: [*c]const u8,
    symbol: [*c]const u8,
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
pub const struct_EcsComponentLifecycle = extern struct {
    ctor: ecs_xtor_t,
    dtor: ecs_xtor_t,
    copy: ecs_copy_t,
    move: ecs_move_t,
    ctx: ?*c_void,
};
pub const EcsComponentLifecycle = struct_EcsComponentLifecycle;
pub const struct_EcsTrigger = extern struct {
    kind: ecs_entity_t,
    action: ecs_iter_action_t,
    component: ecs_entity_t,
    self: ecs_entity_t,
    ctx: ?*c_void,
};
pub const EcsTrigger = struct_EcsTrigger;
pub extern fn ecs_init() ?*ecs_world_t;
pub extern fn ecs_mini() ?*ecs_world_t;
pub extern fn ecs_init_w_args(argc: c_int, argv: [*c][*c]u8) ?*ecs_world_t;
pub extern fn ecs_fini(world: ?*ecs_world_t) c_int;
pub extern fn ecs_atfini(world: ?*ecs_world_t, action: ecs_fini_action_t, ctx: ?*c_void) void;
pub extern fn ecs_run_post_frame(world: ?*ecs_world_t, action: ecs_fini_action_t, ctx: ?*c_void) void;
pub extern fn ecs_set_component_actions_w_entity(world: ?*ecs_world_t, component: ecs_entity_t, actions: [*c]EcsComponentLifecycle) void;
pub extern fn ecs_set_context(world: ?*ecs_world_t, ctx: ?*c_void) void;
pub extern fn ecs_get_context(world: ?*ecs_world_t) ?*c_void;
pub extern fn ecs_get_world_info(world: ?*ecs_world_t) [*c]const ecs_world_info_t;
pub extern fn ecs_dim(world: ?*ecs_world_t, entity_count: i32) void;
pub extern fn ecs_dim_type(world: ?*ecs_world_t, type: ecs_type_t, entity_count: i32) void;
pub extern fn ecs_set_entity_range(world: ?*ecs_world_t, id_start: ecs_entity_t, id_end: ecs_entity_t) void;
pub extern fn ecs_enable_range_check(world: ?*ecs_world_t, enable: bool) bool;
pub extern fn ecs_enable_locking(world: ?*ecs_world_t, enable: bool) bool;
pub extern fn ecs_lock(world: ?*ecs_world_t) void;
pub extern fn ecs_unlock(world: ?*ecs_world_t) void;
pub extern fn ecs_begin_wait(world: ?*ecs_world_t) void;
pub extern fn ecs_end_wait(world: ?*ecs_world_t) void;
pub extern fn ecs_tracing_enable(level: c_int) void;
pub extern fn ecs_new_id(world: ?*ecs_world_t) ecs_entity_t;
pub extern fn ecs_new_component_id(world: ?*ecs_world_t) ecs_entity_t;
pub extern fn ecs_new_w_entity(world: ?*ecs_world_t, entity: ecs_entity_t) ecs_entity_t;
pub extern fn ecs_new_w_type(world: ?*ecs_world_t, type: ecs_type_t) ecs_entity_t;
pub extern fn ecs_bulk_new_w_entity(world: ?*ecs_world_t, entity: ecs_entity_t, count: i32) [*c]const ecs_entity_t;
pub extern fn ecs_bulk_new_w_type(world: ?*ecs_world_t, type: ecs_type_t, count: i32) [*c]const ecs_entity_t;
pub extern fn ecs_bulk_new_w_data(world: ?*ecs_world_t, count: i32, component_ids: [*c]ecs_entities_t, data: ?*c_void) [*c]const ecs_entity_t;
pub extern fn ecs_clone(world: ?*ecs_world_t, dst: ecs_entity_t, src: ecs_entity_t, copy_value: bool) ecs_entity_t;
pub extern fn ecs_add_entity(world: ?*ecs_world_t, entity: ecs_entity_t, entity_add: ecs_entity_t) void;
pub extern fn ecs_add_type(world: ?*ecs_world_t, entity: ecs_entity_t, type: ecs_type_t) void;
pub extern fn ecs_remove_entity(world: ?*ecs_world_t, entity: ecs_entity_t, entity_remove: ecs_entity_t) void;
pub extern fn ecs_remove_type(world: ?*ecs_world_t, entity: ecs_entity_t, type: ecs_type_t) void;
pub extern fn ecs_add_remove_entity(world: ?*ecs_world_t, entity: ecs_entity_t, to_add: ecs_entity_t, to_remove: ecs_entity_t) void;
pub extern fn ecs_add_remove_type(world: ?*ecs_world_t, entity: ecs_entity_t, to_add: ecs_type_t, to_remove: ecs_type_t) void;
pub extern fn ecs_get_case(world: ?*ecs_world_t, e: ecs_entity_t, sw: ecs_entity_t) ecs_entity_t;
pub extern fn ecs_clear(world: ?*ecs_world_t, entity: ecs_entity_t) void;
pub extern fn ecs_delete(world: ?*ecs_world_t, entity: ecs_entity_t) void;
pub extern fn ecs_delete_children(world: ?*ecs_world_t, parent: ecs_entity_t) void;
pub extern fn ecs_get_w_entity(world: ?*ecs_world_t, entity: ecs_entity_t, component: ecs_entity_t) ?*const c_void;
pub extern fn ecs_get_ref_w_entity(world: ?*ecs_world_t, ref: [*c]ecs_ref_t, entity: ecs_entity_t, component: ecs_entity_t) ?*const c_void;
pub extern fn ecs_get_mut_w_entity(world: ?*ecs_world_t, entity: ecs_entity_t, component: ecs_entity_t, is_added: [*c]bool) ?*c_void;
pub extern fn ecs_modified_w_entity(world: ?*ecs_world_t, entity: ecs_entity_t, component: ecs_entity_t) void;
pub extern fn ecs_set_ptr_w_entity(world: ?*ecs_world_t, entity: ecs_entity_t, component: ecs_entity_t, size: usize, ptr: ?*const c_void) ecs_entity_t;
pub extern fn ecs_has_entity(world: ?*ecs_world_t, entity: ecs_entity_t, to_check: ecs_entity_t) bool;
pub extern fn ecs_has_type(world: ?*ecs_world_t, entity: ecs_entity_t, type: ecs_type_t) bool;
pub extern fn ecs_get_type(world: ?*ecs_world_t, entity: ecs_entity_t) ecs_type_t;
pub extern fn ecs_get_name(world: ?*ecs_world_t, entity: ecs_entity_t) [*c]const u8;
pub extern fn ecs_role_str(entity: ecs_entity_t) [*c]const u8;
pub extern fn ecs_entity_str(world: ?*ecs_world_t, entity: ecs_entity_t, buffer: [*c]u8, buffer_len: usize) usize;
pub extern fn ecs_get_parent_w_entity(world: ?*ecs_world_t, entity: ecs_entity_t, component: ecs_entity_t) ecs_entity_t;
pub extern fn ecs_enable(world: ?*ecs_world_t, entity: ecs_entity_t, enabled: bool) void;
pub extern fn ecs_count_entity(world: ?*ecs_world_t, entity: ecs_entity_t) i32;
pub extern fn ecs_count_type(world: ?*ecs_world_t, type: ecs_type_t) i32;
pub extern fn ecs_count_w_filter(world: ?*ecs_world_t, filter: [*c]const ecs_filter_t) i32;
pub extern fn ecs_lookup(world: ?*ecs_world_t, name: [*c]const u8) ecs_entity_t;
pub extern fn ecs_lookup_child(world: ?*ecs_world_t, parent: ecs_entity_t, name: [*c]const u8) ecs_entity_t;
pub extern fn ecs_lookup_path_w_sep(world: ?*ecs_world_t, parent: ecs_entity_t, path: [*c]const u8, sep: [*c]const u8, prefix: [*c]const u8) ecs_entity_t;
pub extern fn ecs_lookup_symbol(world: ?*ecs_world_t, name: [*c]const u8) ecs_entity_t;
pub extern fn ecs_get_path_w_sep(world: ?*ecs_world_t, parent: ecs_entity_t, child: ecs_entity_t, component: ecs_entity_t, sep: [*c]const u8, prefix: [*c]const u8) [*c]u8;
pub extern fn ecs_new_from_path_w_sep(world: ?*ecs_world_t, parent: ecs_entity_t, path: [*c]const u8, sep: [*c]const u8, prefix: [*c]const u8) ecs_entity_t;
pub extern fn ecs_add_path_w_sep(world: ?*ecs_world_t, entity: ecs_entity_t, parent: ecs_entity_t, path: [*c]const u8, sep: [*c]const u8, prefix: [*c]const u8) ecs_entity_t;
pub extern fn ecs_get_child_count(world: ?*ecs_world_t, entity: ecs_entity_t) i32;
pub extern fn ecs_scope_iter(world: ?*ecs_world_t, parent: ecs_entity_t) ecs_iter_t;
pub extern fn ecs_scope_iter_w_filter(world: ?*ecs_world_t, parent: ecs_entity_t, filter: [*c]ecs_filter_t) ecs_iter_t;
pub extern fn ecs_scope_next(it: [*c]ecs_iter_t) bool;
pub extern fn ecs_set_scope(world: ?*ecs_world_t, scope: ecs_entity_t) ecs_entity_t;
pub extern fn ecs_get_scope(world: ?*ecs_world_t) ecs_entity_t;
pub extern fn ecs_set_name_prefix(world: ?*ecs_world_t, prefix: [*c]const u8) [*c]const u8;
pub extern fn ecs_filter_iter(world: ?*ecs_world_t, filter: [*c]const ecs_filter_t) ecs_iter_t;
pub extern fn ecs_filter_next(iter: [*c]ecs_iter_t) bool;
pub extern fn ecs_query_new(world: ?*ecs_world_t, sig: [*c]const u8) ?*ecs_query_t;
pub extern fn ecs_subquery_new(world: ?*ecs_world_t, parent: ?*ecs_query_t, sig: [*c]const u8) ?*ecs_query_t;
pub extern fn ecs_query_free(query: ?*ecs_query_t) void;
pub extern fn ecs_query_iter(query: ?*ecs_query_t) ecs_iter_t;
pub extern fn ecs_query_iter_page(query: ?*ecs_query_t, offset: i32, limit: i32) ecs_iter_t;
pub extern fn ecs_query_next(iter: [*c]ecs_iter_t) bool;
pub extern fn ecs_query_next_w_filter(iter: [*c]ecs_iter_t, filter: [*c]const ecs_filter_t) bool;
pub extern fn ecs_query_next_worker(it: [*c]ecs_iter_t, current: i32, total: i32) bool;
pub extern fn ecs_query_order_by(world: ?*ecs_world_t, query: ?*ecs_query_t, component: ecs_entity_t, compare: ecs_compare_action_t) void;
pub extern fn ecs_query_group_by(world: ?*ecs_world_t, query: ?*ecs_query_t, component: ecs_entity_t, rank_action: ecs_rank_type_action_t) void;
pub extern fn ecs_query_changed(query: ?*ecs_query_t) bool;
pub extern fn ecs_column_w_size(it: [*c]const ecs_iter_t, size: usize, column: i32) ?*c_void;
pub extern fn ecs_column_index_from_name(it: [*c]const ecs_iter_t, name: [*c]const u8) i32;
pub extern fn ecs_is_owned(it: [*c]const ecs_iter_t, column: i32) bool;
pub extern fn ecs_element_w_size(it: [*c]const ecs_iter_t, size: usize, column: i32, row: i32) ?*c_void;
pub extern fn ecs_column_source(it: [*c]const ecs_iter_t, column: i32) ecs_entity_t;
pub extern fn ecs_column_entity(it: [*c]const ecs_iter_t, column: i32) ecs_entity_t;
pub extern fn ecs_column_type(it: [*c]const ecs_iter_t, column: i32) ecs_type_t;
pub extern fn ecs_column_size(it: [*c]const ecs_iter_t, column: i32) ecs_entity_t;
pub extern fn ecs_is_readonly(it: [*c]const ecs_iter_t, column: i32) bool;
pub extern fn ecs_iter_type(it: [*c]const ecs_iter_t) ecs_type_t;
pub extern fn ecs_table_column(it: [*c]const ecs_iter_t, column: i32) ?*c_void;
pub extern fn ecs_table_column_size(it: [*c]const ecs_iter_t, column: i32) usize;
pub extern fn ecs_table_component_index(it: [*c]const ecs_iter_t, component: ecs_entity_t) i32;
pub extern fn ecs_staging_begin(world: ?*ecs_world_t) bool;
pub extern fn ecs_staging_end(world: ?*ecs_world_t, is_staged: bool) bool;
pub extern fn ecs_merge(world: ?*ecs_world_t) void;
pub extern fn ecs_set_automerge(world: ?*ecs_world_t, auto_merge: bool) void;
pub extern fn ecs_import(world: ?*ecs_world_t, module: ecs_module_action_t, module_name: [*c]const u8, handles_out: ?*c_void, handles_size: usize) ecs_entity_t;
pub extern fn ecs_import_from_library(world: ?*ecs_world_t, library_name: [*c]const u8, module_name: [*c]const u8) ecs_entity_t;
pub extern var FLECS__TEcsTrigger: ecs_type_t;
pub extern var FLECS__TEcsSystem: ecs_type_t;
pub extern var FLECS__TEcsTickSource: ecs_type_t;
pub extern var FLECS__TEcsSignatureExpr: ecs_type_t;
pub extern var FLECS__TEcsSignature: ecs_type_t;
pub extern var FLECS__TEcsQuery: ecs_type_t;
pub extern var FLECS__TEcsIterAction: ecs_type_t;
pub extern var FLECS__TEcsContext: ecs_type_t;
pub const struct_EcsTickSource = extern struct {
    tick: bool,
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
pub const struct_ecs_dbg_system_t = extern struct {
    system: ecs_entity_t,
    entities_matched_count: i32,
    active_table_count: i32,
    inactive_table_count: i32,
    enabled: bool,
    system_data: ?*c_void,
};
pub const ecs_dbg_system_t = struct_ecs_dbg_system_t;
pub extern fn ecs_dbg_system(world: ?*ecs_world_t, system: ecs_entity_t, dbg_out: [*c]ecs_dbg_system_t) c_int;
pub extern fn ecs_dbg_get_active_table(world: ?*ecs_world_t, dbg: [*c]ecs_dbg_system_t, index: i32) ?*ecs_table_t;
pub extern fn ecs_dbg_get_inactive_table(world: ?*ecs_world_t, dbg: [*c]ecs_dbg_system_t, index: i32) ?*ecs_table_t;
pub extern fn ecs_dbg_get_column_type(world: ?*ecs_world_t, system: ecs_entity_t, column_index: i32) ecs_type_t;
pub extern fn ecs_dbg_match_entity(world: ?*ecs_world_t, entity: ecs_entity_t, system: ecs_entity_t, failure_info_out: [*c]ecs_match_failure_t) bool;
pub const struct_FlecsSystem = extern struct {
    dummy: i32,
};
pub const FlecsSystem = struct_FlecsSystem;
pub extern fn FlecsSystemImport(world: ?*ecs_world_t) void;
pub extern fn ecs_set_pipeline(world: ?*ecs_world_t, pipeline: ecs_entity_t) void;
pub extern fn ecs_get_pipeline(world: ?*ecs_world_t) ecs_entity_t;
pub extern fn ecs_progress(world: ?*ecs_world_t, delta_time: f32) bool;
pub extern fn ecs_set_target_fps(world: ?*ecs_world_t, fps: f32) void;
pub extern fn ecs_set_time_scale(world: ?*ecs_world_t, scale: f32) void;
pub extern fn ecs_reset_clock(world: ?*ecs_world_t) void;
pub extern fn ecs_quit(world: ?*ecs_world_t) void;
pub extern fn ecs_deactivate_systems(world: ?*ecs_world_t) void;
pub extern fn ecs_set_threads(world: ?*ecs_world_t, threads: i32) void;
pub extern fn ecs_get_threads(world: ?*ecs_world_t) i32;
pub extern fn ecs_get_thread_index(world: ?*ecs_world_t) i32;
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
pub extern fn ecs_set_timeout(world: ?*ecs_world_t, timer: ecs_entity_t, timeout: f32) ecs_entity_t;
pub extern fn ecs_get_timeout(world: ?*ecs_world_t, timer: ecs_entity_t) f32;
pub extern fn ecs_set_interval(world: ?*ecs_world_t, timer: ecs_entity_t, interval: f32) ecs_entity_t;
pub extern fn ecs_get_interval(world: ?*ecs_world_t, timer: ecs_entity_t) f32;
pub extern fn ecs_start_timer(world: ?*ecs_world_t, timer: ecs_entity_t) void;
pub extern fn ecs_stop_timer(world: ?*ecs_world_t, timer: ecs_entity_t) void;
pub extern fn ecs_set_rate_filter(world: ?*ecs_world_t, filter: ecs_entity_t, rate: i32, source: ecs_entity_t) ecs_entity_t;
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
pub const struct_ecs_memory_stat_t = extern struct {
    allocd_bytes: i32,
    used_bytes: i32,
};
pub const ecs_memory_stat_t = struct_ecs_memory_stat_t;
pub const struct_EcsAllocStats = extern struct {
    malloc_count_total: i64,
    realloc_count_total: i64,
    calloc_count_total: i64,
    free_count_total: i64,
};
pub const EcsAllocStats = struct_EcsAllocStats;
pub const struct_EcsRowSystemMemoryStats = extern struct {
    base_memory_bytes: i32,
    columns_memory: ecs_memory_stat_t,
    components_memory: ecs_memory_stat_t,
};
pub const EcsRowSystemMemoryStats = struct_EcsRowSystemMemoryStats;
pub const struct_EcsSystemMemoryStats = extern struct {
    base_memory_bytes: i32,
    columns_memory: ecs_memory_stat_t,
    active_tables_memory: ecs_memory_stat_t,
    inactive_tables_memory: ecs_memory_stat_t,
    jobs_memory: ecs_memory_stat_t,
    other_memory_bytes: i32,
};
pub const EcsSystemMemoryStats = struct_EcsSystemMemoryStats;
pub const struct_EcsMemoryStats = extern struct {
    __dummy: i32,
    total_memory: ecs_memory_stat_t,
    entities_memory: ecs_memory_stat_t,
    components_memory: ecs_memory_stat_t,
    systems_memory: ecs_memory_stat_t,
    types_memory: ecs_memory_stat_t,
    tables_memory: ecs_memory_stat_t,
    stages_memory: ecs_memory_stat_t,
    world_memory: ecs_memory_stat_t,
};
pub const EcsMemoryStats = struct_EcsMemoryStats;
pub const struct_EcsComponentStats = extern struct {
    entity: ecs_entity_t,
    name: [*c]const u8,
    size_bytes: i32,
    memory: ecs_memory_stat_t,
    entities_count: i32,
    tables_count: i32,
};
pub const EcsComponentStats = struct_EcsComponentStats;
pub const struct_EcsSystemStats = extern struct {
    entity: ecs_entity_t,
    name: [*c]const u8,
    signature: [*c]const u8,
    phase: ecs_entity_t,
    period_seconds: f32,
    tables_matched_count: i32,
    entities_matched_count: i32,
    invoke_count_total: i64,
    seconds_total: f32,
    is_enabled: bool,
    is_active: bool,
    is_hidden: bool,
};
pub const EcsSystemStats = struct_EcsSystemStats;
pub const struct_EcsTypeStats = extern struct {
    entity: ecs_entity_t,
    name: [*c]const u8,
    type: ecs_type_t,
    normalized_type: ecs_type_t,
    entities_count: i32,
    entities_childof_count: i32,
    entities_instanceof_count: i32,
    components_count: i32,
    col_systems_count: i32,
    row_systems_count: i32,
    enabled_systems_count: i32,
    active_systems_count: i32,
    instance_count: i32,
    is_hidden: bool,
};
pub const EcsTypeStats = struct_EcsTypeStats;
pub const struct_EcsTableStats = extern struct {
    type: ecs_type_t,
    columns_count: i32,
    rows_count: i32,
    systems_matched_count: i32,
    entity_memory: ecs_memory_stat_t,
    component_memory: ecs_memory_stat_t,
    other_memory_bytes: i32,
};
pub const EcsTableStats = struct_EcsTableStats;
pub const struct_EcsWorldStats = extern struct {
    target_fps_hz: f64,
    tables_count: i32,
    components_count: i32,
    col_systems_count: i32,
    row_systems_count: i32,
    inactive_systems_count: i32,
    entities_count: i32,
    threads_count: i32,
    frame_count_total: i32,
    frame_seconds_total: f64,
    system_seconds_total: f64,
    merge_seconds_total: f64,
    world_seconds_total: f64,
    fps_hz: f64,
};
pub const EcsWorldStats = struct_EcsWorldStats;
pub const struct_FlecsStats = extern struct {
    FLECS__EEcsAllocStats: ecs_entity_t,
    FLECS__TEcsAllocStats: ecs_type_t,
    FLECS__EEcsWorldStats: ecs_entity_t,
    FLECS__TEcsWorldStats: ecs_type_t,
    FLECS__EEcsMemoryStats: ecs_entity_t,
    FLECS__TEcsMemoryStats: ecs_type_t,
    FLECS__EEcsSystemStats: ecs_entity_t,
    FLECS__TEcsSystemStats: ecs_type_t,
    FLECS__EEcsSystemMemoryStats: ecs_entity_t,
    FLECS__TEcsSystemMemoryStats: ecs_type_t,
    FLECS__EEcsRowSystemMemoryStats: ecs_entity_t,
    FLECS__TEcsRowSystemMemoryStats: ecs_type_t,
    FLECS__EEcsComponentStats: ecs_entity_t,
    FLECS__TEcsComponentStats: ecs_type_t,
    FLECS__EEcsTableStats: ecs_entity_t,
    FLECS__TEcsTableStats: ecs_type_t,
    FLECS__EEcsTablePtr: ecs_entity_t,
    FLECS__TEcsTablePtr: ecs_type_t,
    FLECS__EEcsTypeStats: ecs_entity_t,
    FLECS__TEcsTypeStats: ecs_type_t,
};
pub const FlecsStats = struct_FlecsStats;
pub extern fn FlecsStatsImport(world: ?*ecs_world_t) void;
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
pub extern fn ecs_dbg_entity(world: ?*ecs_world_t, entity: ecs_entity_t, dbg_out: [*c]ecs_dbg_entity_t) void;
pub extern fn ecs_dbg_find_table(world: ?*ecs_world_t, type: ecs_type_t) ?*ecs_table_t;
pub extern fn ecs_dbg_get_table(world: ?*ecs_world_t, index: i32) ?*ecs_table_t;
pub extern fn ecs_dbg_filter_table(world: ?*ecs_world_t, table: ?*ecs_table_t, filter: [*c]ecs_filter_t) bool;
pub extern fn ecs_dbg_table(world: ?*ecs_world_t, table: ?*ecs_table_t, dbg_out: [*c]ecs_dbg_table_t) void;
pub const struct_ecs_queue_t = @Type(.Opaque);
pub const ecs_queue_t = struct_ecs_queue_t;
pub extern fn _ecs_queue_new(elem_size: ecs_size_t, offset: i16, elem_count: i32) ?*ecs_queue_t;
pub extern fn _ecs_queue_from_array(elem_size: ecs_size_t, offset: i16, elem_count: i32, array: ?*c_void) ?*ecs_queue_t;
pub extern fn _ecs_queue_push(queue: ?*ecs_queue_t, elem_size: ecs_size_t, offset: i16) ?*c_void;
pub extern fn _ecs_queue_get(queue: ?*ecs_queue_t, elem_size: ecs_size_t, offset: i16, index: i32) ?*c_void;
pub extern fn _ecs_queue_last(queue: ?*ecs_queue_t, elem_size: ecs_size_t, offset: i16) ?*c_void;
pub extern fn ecs_queue_index(queue: ?*ecs_queue_t) i32;
pub extern fn ecs_queue_count(queue: ?*ecs_queue_t) i32;
pub extern fn ecs_queue_free(queue: ?*ecs_queue_t) void;
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
pub extern fn ecs_reader_read(buffer: [*c]u8, size: ecs_size_t, reader: [*c]ecs_reader_t) ecs_size_t;
pub extern fn ecs_writer_init(world: ?*ecs_world_t) ecs_writer_t;
pub extern fn ecs_writer_write(buffer: [*c]const u8, size: ecs_size_t, writer: [*c]ecs_writer_t) c_int;
pub extern fn ecs_snapshot_take(world: ?*ecs_world_t) ?*ecs_snapshot_t;
pub extern fn ecs_snapshot_take_w_iter(iter: [*c]ecs_iter_t, action: ecs_iter_next_action_t) ?*ecs_snapshot_t;
pub extern fn ecs_snapshot_restore(world: ?*ecs_world_t, snapshot: ?*ecs_snapshot_t) void;
pub extern fn ecs_snapshot_iter(snapshot: ?*ecs_snapshot_t, filter: [*c]const ecs_filter_t) ecs_iter_t;
pub extern fn ecs_snapshot_next(iter: [*c]ecs_iter_t) bool;
pub extern fn ecs_snapshot_free(snapshot: ?*ecs_snapshot_t) void;

pub inline fn ECS_SIZEOF(T: anytype) @TypeOf((@import("std").meta.cast(ecs_size_t, @sizeOf(T)))) {
    return (@import("std").meta.cast(ecs_size_t, @sizeOf(T)));
}
pub inline fn ECS_ALIGNOF(T: anytype) @TypeOf((@import("std").meta.cast(i64, __alignof__(T)))) {
    return (@import("std").meta.cast(i64, __alignof__(T)));
}
pub const ECS_UNUSED = __attribute__(unused);
pub inline fn ECS_ALIGN(size: anytype, alignment: anytype) @TypeOf((@import("std").meta.cast(ecs_size_t, ((((@import("std").meta.cast(usize, size)) - 1) / (@import("std").meta.cast(usize, alignment))) + 1) * (@import("std").meta.cast(usize, alignment))))) {
    return (@import("std").meta.cast(ecs_size_t, ((((@import("std").meta.cast(usize, size)) - 1) / (@import("std").meta.cast(usize, alignment))) + 1) * (@import("std").meta.cast(usize, alignment))));
}
pub inline fn ECS_MAX(a: anytype, b: anytype) @TypeOf(if (a > b) a else b) {
    return if (a > b) a else b;
}
pub const FLECS__EEcsComponent = 1;
pub const FLECS__EEcsComponentLifecycle = 2;
pub const FLECS__EEcsType = 3;
pub const FLECS__EEcsName = 6;
pub const FLECS__EEcsTrigger = 4;
pub const FLECS__EEcsSystem = 5;
pub const FLECS__EEcsTickSource = 7;
pub const FLECS__EEcsSignatureExpr = 8;
pub const FLECS__EEcsSignature = 9;
pub const FLECS__EEcsQuery = 10;
pub const FLECS__EEcsIterAction = 11;
pub const FLECS__EEcsContext = 12;
pub const FLECS__EEcsPipelineQuery = 13;
pub const FLECS__EEcsTimer = 14;
pub const FLECS__EEcsRateFilter = 15;
pub const ECS_ROLE_MASK = (@import("std").meta.cast(ecs_entity_t, 0xFF << 56));
pub const ECS_TYPE_ROLE_START = ECS_CHILDOF;
pub inline fn ecs_entity_t_lo(value: anytype) @TypeOf((@import("std").meta.cast(u32, value))) {
    return (@import("std").meta.cast(u32, value));
}
pub inline fn ecs_entity_t_hi(value: anytype) @TypeOf((@import("std").meta.cast(u32, value >> 32))) {
    return (@import("std").meta.cast(u32, value >> 32));
}
pub inline fn ecs_entity_t_comb(v1: anytype, v2: anytype) @TypeOf(((@import("std").meta.cast(u64, v2)) << 32) + (@import("std").meta.cast(u32, v1))) {
    return ((@import("std").meta.cast(u64, v2)) << 32) + (@import("std").meta.cast(u32, v1));
}
pub inline fn ecs_trait(comp: anytype, trait: anytype) @TypeOf(ECS_TRAIT | ecs_entity_t_comb(comp, trait)) {
    return ECS_TRAIT | ecs_entity_t_comb(comp, trait);
}
pub inline fn ECS_VECTOR_U(size: anytype, alignment: anytype) @TypeOf(ECS_MAX(ECS_SIZEOF(ecs_vector_t), alignment)) {
    return blk: {
        _ = size;
        break :blk ECS_MAX(ECS_SIZEOF(ecs_vector_t), alignment);
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
pub inline fn ecs_vector_add(vector: anytype, T: anytype) @TypeOf((@import("std").meta.cast([*c]T, _ecs_vector_add(vector, ECS_VECTOR_T(T))))) {
    return (@import("std").meta.cast([*c]T, _ecs_vector_add(vector, ECS_VECTOR_T(T))));
}
pub inline fn ecs_vector_add_t(vector: anytype, size: anytype, alignment: anytype) @TypeOf(_ecs_vector_add(vector, ECS_VECTOR_U(size, alignment))) {
    return _ecs_vector_add(vector, ECS_VECTOR_U(size, alignment));
}
pub inline fn ecs_vector_addn(vector: anytype, T: anytype, elem_count: anytype) @TypeOf((@import("std").meta.cast([*c]T, _ecs_vector_addn(vector, ECS_VECTOR_T(T), elem_count)))) {
    return (@import("std").meta.cast([*c]T, _ecs_vector_addn(vector, ECS_VECTOR_T(T), elem_count)));
}
pub inline fn ecs_vector_addn_t(vector: anytype, size: anytype, alignment: anytype, elem_count: anytype) @TypeOf(_ecs_vector_addn(vector, ECS_VECTOR_U(size, alignment), elem_count)) {
    return _ecs_vector_addn(vector, ECS_VECTOR_U(size, alignment), elem_count);
}
pub inline fn ecs_vector_get(vector: anytype, T: anytype, index_1: anytype) @TypeOf((@import("std").meta.cast([*c]T, _ecs_vector_get(vector, ECS_VECTOR_T(T), index_1)))) {
    return (@import("std").meta.cast([*c]T, _ecs_vector_get(vector, ECS_VECTOR_T(T), index_1)));
}
pub inline fn ecs_vector_get_t(vector: anytype, size: anytype, alignment: anytype, index_1: anytype) @TypeOf(_ecs_vector_get(vector, ECS_VECTOR_U(size, alignment), index_1)) {
    return _ecs_vector_get(vector, ECS_VECTOR_U(size, alignment), index_1);
}
pub inline fn ecs_vector_last(vector: anytype, T: anytype) @TypeOf(_ecs_vector_last(vector, ECS_VECTOR_T(T))) {
    return _ecs_vector_last(vector, ECS_VECTOR_T(T));
}
pub inline fn ecs_vector_remove(vector: anytype, T: anytype, index_1: anytype) @TypeOf(_ecs_vector_remove(vector, ECS_VECTOR_T(T), index_1)) {
    return _ecs_vector_remove(vector, ECS_VECTOR_T(T), index_1);
}
pub inline fn ecs_vector_pop(vector: anytype, T: anytype, value: anytype) @TypeOf(_ecs_vector_pop(vector, ECS_VECTOR_T(T), value)) {
    return _ecs_vector_pop(vector, ECS_VECTOR_T(T), value);
}
pub inline fn ecs_vector_move_index(dst: anytype, src: anytype, T: anytype, index_1: anytype) @TypeOf(_ecs_vector_move_index(dst, src, ECS_VECTOR_T(T), index_1)) {
    return _ecs_vector_move_index(dst, src, ECS_VECTOR_T(T), index_1);
}
pub inline fn ecs_vector_remove_index(vector: anytype, T: anytype, index_1: anytype) @TypeOf(_ecs_vector_remove_index(vector, ECS_VECTOR_T(T), index_1)) {
    return _ecs_vector_remove_index(vector, ECS_VECTOR_T(T), index_1);
}
pub inline fn ecs_vector_remove_index_t(vector: anytype, size: anytype, alignment: anytype, index_1: anytype) @TypeOf(_ecs_vector_remove_index(vector, ECS_VECTOR_U(size, alignment), index_1)) {
    return _ecs_vector_remove_index(vector, ECS_VECTOR_U(size, alignment), index_1);
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
pub inline fn ecs_vector_set_min_size(vector: anytype, T: anytype, size: anytype) @TypeOf(_ecs_vector_set_min_size(vector, ECS_VECTOR_T(T), size)) {
    return _ecs_vector_set_min_size(vector, ECS_VECTOR_T(T), size);
}
pub inline fn ecs_vector_set_min_count(vector: anytype, T: anytype, size: anytype) @TypeOf(_ecs_vector_set_min_count(vector, ECS_VECTOR_T(T), size)) {
    return _ecs_vector_set_min_count(vector, ECS_VECTOR_T(T), size);
}
pub inline fn ecs_vector_first(vector: anytype, T: anytype) @TypeOf((@import("std").meta.cast([*c]T, _ecs_vector_first(vector, ECS_VECTOR_T(T))))) {
    return (@import("std").meta.cast([*c]T, _ecs_vector_first(vector, ECS_VECTOR_T(T))));
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
pub inline fn ecs_sparse_new(type_1: anytype) @TypeOf(_ecs_sparse_new(@sizeOf(type_1))) {
    return _ecs_sparse_new(@sizeOf(type_1));
}
pub inline fn ecs_sparse_add(sparse: anytype, type_1: anytype) @TypeOf((@import("std").meta.cast([*c]type_1, _ecs_sparse_add(sparse, @sizeOf(type_1))))) {
    return (@import("std").meta.cast([*c]type_1, _ecs_sparse_add(sparse, @sizeOf(type_1))));
}
pub inline fn ecs_sparse_remove(sparse: anytype, index_1: anytype) @TypeOf(_ecs_sparse_remove(sparse, index_1)) {
    return _ecs_sparse_remove(sparse, index_1);
}
pub inline fn ecs_sparse_get(sparse: anytype, type_1: anytype, index_2: anytype) @TypeOf((@import("std").meta.cast([*c]type_1, _ecs_sparse_get(sparse, @sizeOf(type_1), index_2)))) {
    return (@import("std").meta.cast([*c]type_1, _ecs_sparse_get(sparse, @sizeOf(type_1), index_2)));
}
pub inline fn ecs_sparse_get_sparse(sparse: anytype, type_1: anytype, index_2: anytype) @TypeOf((@import("std").meta.cast([*c]type_1, _ecs_sparse_get_sparse(sparse, @sizeOf(type_1), index_2)))) {
    return (@import("std").meta.cast([*c]type_1, _ecs_sparse_get_sparse(sparse, @sizeOf(type_1), index_2)));
}
