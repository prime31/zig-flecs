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
pub extern fn ecs_enable_range_check(world: ?*ecs_world_t, enable: u8) u8;
pub extern fn ecs_enable_locking(world: ?*ecs_world_t, enable: u8) u8;
pub extern fn ecs_lock(world: ?*ecs_world_t) void;
pub extern fn ecs_unlock(world: ?*ecs_world_t) void;
pub extern fn ecs_tracing_enable(enabled: u8) void;
pub extern fn ecs_new_w_entity(world: ?*ecs_world_t, entity: ecs_entity_t) ecs_entity_t;
pub extern fn ecs_new_w_type(world: ?*ecs_world_t, type: ecs_type_t) ecs_entity_t;
pub extern fn ecs_bulk_new_w_entity(world: ?*ecs_world_t, entity: ecs_entity_t, count: i32) ecs_entity_t;
pub extern fn ecs_bulk_new_w_type(world: ?*ecs_world_t, type: ecs_type_t, count: i32) ecs_entity_t;
pub extern fn ecs_bulk_new_w_data(world: ?*ecs_world_t, count: i32, component_ids: [*c]ecs_entities_t, data: ?*c_void) ecs_entity_t;
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
pub extern fn ecs_clone(world: ?*ecs_world_t, dst: ecs_entity_t, src: ecs_entity_t, copy_value: u8) ecs_entity_t;
pub extern fn ecs_get_w_entity(world: ?*ecs_world_t, entity: ecs_entity_t, component: ecs_entity_t) ?*const c_void;
pub extern fn ecs_get_ref_w_entity(world: ?*ecs_world_t, ref: [*c]ecs_ref_t, entity: ecs_entity_t, component: ecs_entity_t) ?*const c_void;
pub extern fn ecs_get_mut_w_entity(world: ?*ecs_world_t, entity: ecs_entity_t, component: ecs_entity_t, is_added: [*c]u8) ?*c_void;
pub extern fn ecs_modified_w_entity(world: ?*ecs_world_t, entity: ecs_entity_t, component: ecs_entity_t) void;
pub extern fn ecs_set_ptr_w_entity(world: ?*ecs_world_t, entity: ecs_entity_t, component: ecs_entity_t, size: usize, ptr: ?*const c_void) ecs_entity_t;
pub extern fn ecs_has_entity(world: ?*ecs_world_t, entity: ecs_entity_t, to_check: ecs_entity_t) u8;
pub extern fn ecs_has_type(world: ?*ecs_world_t, entity: ecs_entity_t, type: ecs_type_t) u8;
pub extern fn ecs_get_type(world: ?*ecs_world_t, entity: ecs_entity_t) ecs_type_t;
pub extern fn ecs_get_name(world: ?*ecs_world_t, entity: ecs_entity_t) [*c]const u8;
pub extern fn ecs_get_parent_w_entity(world: ?*ecs_world_t, entity: ecs_entity_t, component: ecs_entity_t) ecs_entity_t;
pub extern fn ecs_enable(world: ?*ecs_world_t, entity: ecs_entity_t, enabled: u8) void;
pub extern fn ecs_filter_iter(world: ?*ecs_world_t, filter: [*c]const ecs_filter_t) ecs_iter_t;
pub extern fn ecs_filter_next(iter: *ecs_iter_t) u8;
pub extern fn ecs_query_new(world: ?*ecs_world_t, sig: [*c]const u8) ?*ecs_query_t;
pub extern fn ecs_query_free(query: ?*ecs_query_t) void;
pub extern fn ecs_query_iter(query: ?*ecs_query_t) ecs_iter_t;
pub extern fn ecs_query_iter_page(query: ?*ecs_query_t, offset: i32, limit: i32) ecs_iter_t;
pub extern fn ecs_query_next(iter: *ecs_iter_t) u8;
pub extern fn ecs_query_next_worker(it: *ecs_iter_t, current: i32, total: i32) u8;
pub extern fn ecs_query_order_by(world: ?*ecs_world_t, query: ?*ecs_query_t, component: ecs_entity_t, compare: ecs_compare_action_t) void;
pub extern fn ecs_query_group_by(world: ?*ecs_world_t, query: ?*ecs_query_t, component: ecs_entity_t, rank_action: ecs_rank_type_action_t) void;
pub extern fn ecs_count_entity(world: ?*ecs_world_t, entity: ecs_entity_t) i32;
pub extern fn ecs_count_type(world: ?*ecs_world_t, type: ecs_type_t) i32;
pub extern fn ecs_count_w_filter(world: ?*ecs_world_t, filter: [*c]const ecs_filter_t) i32;
pub extern fn ecs_lookup(world: ?*ecs_world_t, name: [*c]const u8) ecs_entity_t;
pub extern fn ecs_lookup_child(world: ?*ecs_world_t, parent: ecs_entity_t, name: [*c]const u8) ecs_entity_t;
pub extern fn ecs_lookup_path_w_sep(world: ?*ecs_world_t, parent: ecs_entity_t, path: [*c]const u8, sep: [*c]const u8, prefix: [*c]const u8) ecs_entity_t;
pub extern fn ecs_get_path_w_sep(world: ?*ecs_world_t, parent: ecs_entity_t, child: ecs_entity_t, component: ecs_entity_t, sep: [*c]u8, prefix: [*c]u8) [*c]u8;
pub extern fn ecs_new_from_path_w_sep(world: ?*ecs_world_t, parent: ecs_entity_t, path: [*c]const u8, sep: [*c]const u8, prefix: [*c]const u8) ecs_entity_t;
pub extern fn ecs_get_child_count(world: ?*ecs_world_t, entity: ecs_entity_t) i32;
pub extern fn ecs_scope_iter(world: ?*ecs_world_t, parent: ecs_entity_t) ecs_iter_t;
pub extern fn ecs_scope_iter_w_filter(world: ?*ecs_world_t, parent: ecs_entity_t, filter: [*c]ecs_filter_t) ecs_iter_t;
pub extern fn ecs_scope_next(it: *ecs_iter_t) u8;
pub extern fn ecs_set_scope(world: ?*ecs_world_t, scope: ecs_entity_t) ecs_entity_t;
pub extern fn ecs_get_scope(world: ?*ecs_world_t) ecs_entity_t;
pub extern fn ecs_set_name_prefix(world: ?*ecs_world_t, prefix: [*c]const u8) [*c]const u8;
pub extern fn ecs_column_w_size(it: [*c]const ecs_iter_t, size: usize, column: i32) ?*c_void;
pub extern fn ecs_is_owned(it: [*c]const ecs_iter_t, column: i32) u8;
pub extern fn ecs_element_w_size(it: [*c]const ecs_iter_t, size: usize, column: i32, row: i32) ?*c_void;
pub extern fn ecs_column_source(it: [*c]const ecs_iter_t, column: i32) ecs_entity_t;
pub extern fn ecs_column_entity(it: [*c]const ecs_iter_t, column: i32) ecs_entity_t;
pub extern fn ecs_column_type(it: [*c]const ecs_iter_t, column: i32) ecs_type_t;
pub extern fn ecs_is_readonly(it: [*c]const ecs_iter_t, column: i32) u8;
pub extern fn ecs_iter_type(it: [*c]const ecs_iter_t) ecs_type_t;
pub extern fn ecs_table_column(it: [*c]const ecs_iter_t, column: i32) ?*c_void;
pub extern fn ecs_import(world: ?*ecs_world_t, module: ecs_module_action_t, module_name: [*c]const u8, flags: c_int, handles_out: ?*c_void, handles_size: usize) ecs_entity_t;
pub extern fn ecs_import_from_library(world: ?*ecs_world_t, library_name: [*c]const u8, module_name: [*c]const u8, flags: c_int) ecs_entity_t;
pub extern fn ecs_staging_begin(world: ?*ecs_world_t) u8;
pub extern fn ecs_staging_end(world: ?*ecs_world_t, is_staged: u8) u8;
pub extern fn ecs_merge(world: ?*ecs_world_t) void;
pub extern fn ecs_set_automerge(world: ?*ecs_world_t, auto_merge: u8) void;
pub extern fn ecs_enable_admin(world: ?*ecs_world_t, port: u16) c_int;
pub extern fn ecs_enable_console(world: ?*ecs_world_t) c_int;

pub const struct_ecs_vector_t = extern struct {
    count: i32,
    size: i32,
};
pub const ecs_vector_t = struct_ecs_vector_t;
pub const ecs_comparator_t = ?fn (?*const c_void, ?*const c_void) callconv(.C) c_int;

pub extern fn ecs_vector_free(vector: [*c]ecs_vector_t) void;
pub extern fn ecs_vector_clear(vector: [*c]ecs_vector_t) void;

pub extern fn ecs_vector_remove_last(vector: [*c]ecs_vector_t) void;

pub extern fn ecs_vector_count(vector: [*c]const ecs_vector_t) i32;
pub extern fn ecs_vector_size(vector: [*c]const ecs_vector_t) i32;

pub const struct_ecs_sparse_t = @Type(.Opaque);
pub const ecs_sparse_t = struct_ecs_sparse_t;

pub extern fn ecs_sparse_free(sparse: ?*ecs_sparse_t) void;
pub extern fn ecs_sparse_clear(sparse: ?*ecs_sparse_t) void;

pub extern fn ecs_sparse_count(sparse: ?*const ecs_sparse_t) i32;
pub extern fn ecs_sparse_size(sparse: ?*const ecs_sparse_t) i32;

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

pub extern fn ecs_map_free(map: ?*ecs_map_t) void;
pub extern fn ecs_map_remove(map: ?*ecs_map_t, key: ecs_map_key_t) void;
pub extern fn ecs_map_clear(map: ?*ecs_map_t) void;
pub extern fn ecs_map_count(map: ?*const ecs_map_t) i32;
pub extern fn ecs_map_bucket_count(map: ?*const ecs_map_t) i32;
pub extern fn ecs_map_iter(map: ?*const ecs_map_t) ecs_map_iter_t;

pub extern fn ecs_map_grow(map: ?*ecs_map_t, elem_count: i32) void;
pub extern fn ecs_map_set_size(map: ?*ecs_map_t, elem_count: i32) void;
pub extern fn ecs_map_memory(map: ?*ecs_map_t, allocd: [*c]i32, used: [*c]i32) void;
pub extern fn ecs_map_copy(map: ?*const ecs_map_t) ?*ecs_map_t;
pub const struct_ecs_strbuf_element = extern struct {
    buffer_embedded: u8,
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
pub extern fn ecs_strbuf_append(buffer: [*c]ecs_strbuf_t, fmt: [*c]const u8, ...) u8;
pub extern fn ecs_strbuf_vappend(buffer: [*c]ecs_strbuf_t, fmt: [*c]const u8, args: [*c]struct___va_list_tag) u8;
pub extern fn ecs_strbuf_appendstr(buffer: [*c]ecs_strbuf_t, str: [*c]const u8) u8;
pub extern fn ecs_strbuf_mergebuff(dst_buffer: [*c]ecs_strbuf_t, src_buffer: [*c]ecs_strbuf_t) u8;
pub extern fn ecs_strbuf_appendstr_zerocpy(buffer: [*c]ecs_strbuf_t, str: [*c]u8) u8;
pub extern fn ecs_strbuf_appendstr_zerocpy_const(buffer: [*c]ecs_strbuf_t, str: [*c]const u8) u8;
pub extern fn ecs_strbuf_appendstrn(buffer: [*c]ecs_strbuf_t, str: [*c]const u8, n: i32) u8;
pub extern fn ecs_strbuf_get(buffer: [*c]ecs_strbuf_t) [*c]u8;
pub extern fn ecs_strbuf_reset(buffer: [*c]ecs_strbuf_t) void;
pub extern fn ecs_strbuf_list_push(buffer: [*c]ecs_strbuf_t, list_open: [*c]const u8, separator: [*c]const u8) void;
pub extern fn ecs_strbuf_list_pop(buffer: [*c]ecs_strbuf_t, list_close: [*c]const u8) void;
pub extern fn ecs_strbuf_list_next(buffer: [*c]ecs_strbuf_t) void;
pub extern fn ecs_strbuf_list_append(buffer: [*c]ecs_strbuf_t, fmt: [*c]const u8, ...) u8;
pub extern fn ecs_strbuf_list_appendstr(buffer: [*c]ecs_strbuf_t, str: [*c]const u8) u8;
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
pub const ecs_os_api_calloc_t = ?fn (usize) callconv(.C) ?*c_void;
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
pub extern fn ecs_os_enable_dbg(enable: u8) void;
pub extern fn ecs_os_dbg_enabled() u8;
pub extern fn ecs_sleepf(t: f64) void;
pub extern fn ecs_time_measure(start: [*c]ecs_time_t) f64;
pub extern fn ecs_time_sub(t1: ecs_time_t, t2: ecs_time_t) ecs_time_t;
pub extern fn ecs_time_to_double(t: ecs_time_t) f64;
pub extern fn ecs_os_memdup(src: ?*const c_void, size: usize) ?*c_void;
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
    snapshot: ecs_snapshot_iter_t,
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
    time_scale: f32,
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
pub const ecs_iter_next_action_t = ?fn (*ecs_iter_t) callconv(.C) u8;
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
pub const struct_ecs_column_t = @Type(.Opaque);
pub const ecs_column_t = struct_ecs_column_t;
pub const struct_ecs_data_t = @Type(.Opaque);
pub const ecs_data_t = struct_ecs_data_t;
pub const struct_ecs_entities_t = extern struct {
    array: [*c]ecs_entity_t,
    count: i32,
};
pub const ecs_entities_t = struct_ecs_entities_t;
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
    offset: i32,
    limit: i32,
    remaining: i32,
    index: i32,
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
pub extern fn ecs_type_has_entity(world: ?*ecs_world_t, type: ecs_type_t, entity: ecs_entity_t) u8;
pub extern fn ecs_type_has_type(world: ?*ecs_world_t, type: ecs_type_t, has: ecs_type_t) u8;
pub extern fn ecs_type_owns_entity(world: ?*ecs_world_t, type: ecs_type_t, entity: ecs_entity_t, owned: u8) u8;
pub extern fn ecs_type_owns_type(world: ?*ecs_world_t, type: ecs_type_t, has: ecs_type_t, owned: u8) u8;
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
pub const struct_EcsTrigger = extern struct {
    kind: ecs_entity_t,
    action: ecs_iter_action_t,
    component: ecs_entity_t,
    self: ecs_entity_t,
    ctx: ?*c_void,
};
pub const EcsTrigger = struct_EcsTrigger;
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
    tick: u8,
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
pub const struct_FlecsSystem = extern struct {
    dummy: i32,
};
pub const FlecsSystem = struct_FlecsSystem;
pub extern fn FlecsSystemImport(world: ?*ecs_world_t, flags: c_int) void;
pub extern fn ecs_set_pipeline(world: ?*ecs_world_t, pipeline: ecs_entity_t) void;
pub extern fn ecs_get_pipeline(world: ?*ecs_world_t) ecs_entity_t;
pub extern fn ecs_progress(world: ?*ecs_world_t, delta_time: f32) u8;
pub extern fn ecs_set_target_fps(world: ?*ecs_world_t, fps: f32) void;
pub extern fn ecs_set_time_scale(world: ?*ecs_world_t, scale: f32) void;
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
    active: u8,
    single_shot: u8,
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
pub extern fn FlecsTimerImport(world: ?*ecs_world_t, flags: c_int) void;
pub extern fn ecs_snapshot_take(world: ?*ecs_world_t) ?*ecs_snapshot_t;
pub extern fn ecs_snapshot_take_w_iter(iter: *ecs_iter_t, action: ecs_iter_next_action_t) ?*ecs_snapshot_t;
pub extern fn ecs_snapshot_restore(world: ?*ecs_world_t, snapshot: ?*ecs_snapshot_t) void;
pub extern fn ecs_snapshot_iter(snapshot: ?*ecs_snapshot_t, filter: [*c]const ecs_filter_t) ecs_iter_t;
pub extern fn ecs_snapshot_next(iter: *ecs_iter_t) u8;
pub extern fn ecs_snapshot_free(snapshot: ?*ecs_snapshot_t) void;
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
    has_next_table: u8,
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
pub extern fn ecs_reader_init(world: ?*ecs_world_t) ecs_reader_t;
pub extern fn ecs_reader_init_w_iter(iter: *ecs_iter_t, next: ecs_iter_next_action_t) ecs_reader_t;
pub extern fn ecs_reader_read(buffer: [*c]u8, size: usize, reader: [*c]ecs_reader_t) usize;
pub extern fn ecs_writer_init(world: ?*ecs_world_t) ecs_writer_t;
pub extern fn ecs_writer_write(buffer: [*c]const u8, size: usize, writer: [*c]ecs_writer_t) c_int;
pub const struct_ecs_ringbuf_t = @Type(.Opaque);
pub const ecs_ringbuf_t = struct_ecs_ringbuf_t;

pub extern fn ecs_ringbuf_index(buffer: ?*ecs_ringbuf_t) i32;
pub extern fn ecs_ringbuf_count(buffer: ?*ecs_ringbuf_t) i32;
pub extern fn ecs_ringbuf_free(buffer: ?*ecs_ringbuf_t) void;

pub inline fn ecs_bulk_remove(world: var, type_1: var, filter: var) @TypeOf(ecs_bulk_remove_type(world, ecs_type(type_1), filter)) {
    return ecs_bulk_remove_type(world, ecs_type(type_1), filter);
}
pub const _POSIX_TRACE_SYS_MAX = 8;
pub const __UINT64_FMTX__ = "llX";
pub const __SSE4_2__ = 1;
pub const SIGXCPU = 24;
pub const _POSIX_OPEN_MAX = 20;
pub inline fn __API_UNAVAILABLE1(x: var) @TypeOf(__API_U(x)) {
    return __API_U(x);
}
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __STDC_UTF_16__ = 1;
pub const __LDBL_HAS_DENORM__ = 1;
pub const __FMA__ = 1;
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT32_MAX__ = @as(c_uint, 4294967295);
pub const __MAC_10_2 = 1020;
pub const SIGHUP = 1;
pub inline fn ecs_os_get_time(time_out: var) @TypeOf(ecs_os_api.get_time(time_out)) {
    return ecs_os_api.get_time(time_out);
}
pub const __API_UNAVAILABLE_END = _Pragma("clang attribute pop");
pub const __INT_LEAST32_MAX__ = 2147483647;
pub const __INT_FAST16_FMTd__ = "hd";
pub const __UINT_LEAST64_FMTu__ = "llu";
pub inline fn __API_DEPRECATED_MSG5(msg: var, x: var, y: var, z: var, t: var) @TypeOf(__API_DEPRECATED_MSG4(msg, x, y, z) ++ __API_D(msg, t)) {
    return __API_DEPRECATED_MSG4(msg, x, y, z) ++ __API_D(msg, t);
}
pub const __UINT8_FMTu__ = "hhu";
pub inline fn ECS_TYPE_VAR(type_1: var) @TypeOf(ecs_type_t ++ ecs_type(type_1)) {
    return ecs_type_t ++ ecs_type(type_1);
}
pub const __INVPCID__ = 1;
pub const __UINT8_FMTX__ = "hhX";


pub const _POSIX_THREAD_DESTRUCTOR_ITERATIONS = 4;
pub const ECS_INVALID_HANDLE = 1;
pub const INT_FAST32_MAX = INT32_MAX;
pub inline fn __API_UNAVAILABLE7(x: var, y: var, z: var, t: var, b: var, m: var, d: var) @TypeOf(__API_UNAVAILABLE6(x, y, z, t, b, m) ++ __API_U(d)) {
    return __API_UNAVAILABLE6(x, y, z, t, b, m) ++ __API_U(d);
}
pub inline fn __API_DEPRECATED_BEGIN_REP2(rep: var, a: var) @TypeOf(__API_R_BEGIN(rep, a)) {
    return __API_R_BEGIN(rep, a);
}
pub const _POSIX2_EXPR_NEST_MAX = 32;
pub inline fn ecs_vector_sort(vector: var, T: var, compare_action: var) @TypeOf(_ecs_vector_sort(vector, ECS_VECTOR_T(T), compare_action)) {}
pub const SS_ONSTACK = 0x0001;

pub const __DBL_HAS_DENORM__ = 1;
pub const __INT_LEAST64_FMTd__ = "lld";
pub const __SSSE3__ = 1;
pub const __MAC_10_10_3 = 101003;
pub const __IPHONE_13_0 = 130000;
pub const SIGKILL = 9;
pub const __MAC_10_14 = 101400;
pub const __UINT_FAST16_FMTu__ = "hu";
pub inline fn __API_DEPRECATED_BEGIN_MSG8(msg: var, a: var, b: var, c: var, d: var, e: var, f: var, g: var) @TypeOf(__API_D_BEGIN(msg, a) ++ (__API_D_BEGIN(msg, b) ++ (__API_D_BEGIN(msg, c) ++ (__API_D_BEGIN(msg, d) ++ (__API_D_BEGIN(msg, e) ++ (__API_D_BEGIN(msg, f) ++ __API_D_BEGIN(msg, g))))))) {
    return __API_D_BEGIN(msg, a) ++ (__API_D_BEGIN(msg, b) ++ (__API_D_BEGIN(msg, c) ++ (__API_D_BEGIN(msg, d) ++ (__API_D_BEGIN(msg, e) ++ (__API_D_BEGIN(msg, f) ++ __API_D_BEGIN(msg, g))))));
}

pub inline fn fileno_unlocked(p: var) @TypeOf(__sfileno(p)) {
    return __sfileno(p);
}
pub const SCHAR_MAX = 127;
pub inline fn ecs_lookup_fullpath(world: var, path: var) @TypeOf(ecs_lookup_path_w_sep(world, 0, path, ".", NULL)) {
    return ecs_lookup_path_w_sep(world, 0, path, ".", NULL);
}
pub const WCHAR_MAX = __WCHAR_MAX__;
pub const __clang_patchlevel__ = 0;
pub const FP_CHOP = 3;
pub const EXIT_SUCCESS = 0;
pub const FLECS__EEcsSignature = 9;
pub const INT_FAST32_MIN = INT32_MIN;
pub inline fn ecs_modified(world: var, entity: var, component: var) @TypeOf(ecs_modified_w_entity(world, entity, ecs_entity(component))) {
    return ecs_modified_w_entity(world, entity, ecs_entity(component));
}
pub const __LDBL_DIG__ = 18;
pub const CLD_CONTINUED = 6;
pub const __OPENCL_MEMORY_SCOPE_DEVICE = 2;
pub inline fn __API_DEPRECATED_MSG3(msg: var, x: var, y: var) @TypeOf(__API_D(msg, x) ++ __API_D(msg, y)) {
    return __API_D(msg, x) ++ __API_D(msg, y);
}
pub const QUAD_MIN = LLONG_MIN;
pub const __MMX__ = 1;
pub const SIGINT = 2;
pub const __SIZEOF_WINT_T__ = 4;
pub const FPE_FLTSUB = 6;

pub inline fn __API_UNAVAILABLE5(x: var, y: var, z: var, t: var, b: var) @TypeOf(__API_UNAVAILABLE4(x, y, z, t) ++ __API_U(b)) {
    return __API_UNAVAILABLE4(x, y, z, t) ++ __API_U(b);
}
pub const EcsOnUpdate = ECS_HI_COMPONENT_ID + 17;
pub const ECS_INVALID_FROM_WORKER = 26;
pub const LONG_MAX = @as(c_long, 0x7fffffffffffffff);
pub const __UINTMAX_C_SUFFIX__ = UL;
pub const IOPOL_MATERIALIZE_DATALESS_FILES_ON = 2;
pub const __VERSION__ = "Clang 10.0.0 ";
pub const __DBL_HAS_INFINITY__ = 1;
pub const _POSIX_LOGIN_NAME_MAX = 9;
pub const __WATCHOS_UNAVAILABLE = __OS_AVAILABILITY(watchos, unavailable);
pub const __corei7 = 1;
pub const __LDBL_HAS_QUIET_NAN__ = 1;
pub const SIG_SETMASK = 3;
pub const __UINT_FAST32_FMTu__ = "u";
pub const WCHAR_MIN = -WCHAR_MAX - 1;
pub const w_termsig = w_T.w_Termsig;
pub const EcsOnStore = ECS_HI_COMPONENT_ID + 21;
pub const ECS_COLUMN_IS_NOT_SHARED = 20;
pub const __pic__ = 2;
pub const UINT_FAST32_MAX = UINT32_MAX;
pub const EOF = -1;
pub const RLIMIT_WAKEUPS_MONITOR = 0x1;
pub const __SERR = 0x0040;
pub inline fn fwopen(cookie: var, @"fn": var) @TypeOf(funopen(cookie, 0, @"fn", 0, 0)) {
    return funopen(cookie, 0, @"fn", 0, 0);
}

pub inline fn __API_AVAILABLE_BEGIN1(a: var) @TypeOf(__API_A_BEGIN(a)) {
    return __API_A_BEGIN(a);
}
pub const INT8_MAX = 127;
pub const __SNPT = 0x0800;
pub const SEEK_SET = 0;
pub const __UINT_LEAST32_MAX__ = @as(c_uint, 4294967295);
pub const ECS_INVALID_COMPONENT_ALIGNMENT = 16;
pub inline fn ecs_os_dlclose(lib: var) @TypeOf(ecs_os_api.dlclose(lib)) {
    return ecs_os_api.dlclose(lib);
}

pub const _POSIX_SEM_NSEMS_MAX = 256;
pub inline fn ecs_add_remove(world: var, entity: var, to_add: var, to_remove: var) @TypeOf(ecs_add_remove_type(world, entity, ecs_type(to_add), ecs_type(to_remove))) {
    return ecs_add_remove_type(world, entity, ecs_type(to_add), ecs_type(to_remove));
}

pub const _POSIX_MAX_INPUT = 255;
pub const __clang_version__ = "10.0.0 ";
pub inline fn __API_DEPRECATED_REP2(rep: var, x: var) @TypeOf(__API_R(rep, x)) {
    return __API_R(rep, x);
}
pub const SA_NOCLDSTOP = 0x0008;


pub inline fn ECS_ENTITY_VAR(type_1: var) @TypeOf(ecs_entity_t ++ ecs_entity(type_1)) {
    return ecs_entity_t ++ ecs_entity(type_1);
}
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);

pub const __INT_LEAST32_FMTi__ = "i";
pub const FLECS__EEcsComponentLifecycle = 2;
pub const __WCHAR_WIDTH__ = 32;
pub const __UINT16_FMTX__ = "hX";
pub inline fn __sfeof(p: var) @TypeOf(((p.*._flags) & __SEOF) != 0) {
    return ((p.*._flags) & __SEOF) != 0;
}
pub const FLECS__EEcsContext = 12;
pub const POLL_MSG = 3;
pub const LLONG_MAX = @as(c_longlong, 0x7fffffffffffffff);
pub const ULLONG_MAX = @as(c_ulonglong, 0xffffffffffffffff);
pub const CHAR_MAX = 127;
pub const FOPEN_MAX = 20;



pub const INT32_MAX = 2147483647;
pub const INT16_MIN = -32768;
pub const __WATCHOS_3_1 = 30100;
pub const __SSE2__ = 1;
pub const __STDC__ = 1;
pub const ULONG_MAX = @as(c_ulong, 0xffffffffffffffff);
pub const __API_UNAVAILABLE_PLATFORM_macos = blk: {
    _ = macos;
    break :blk unavailable;
};
pub inline fn ecs_vector_memory(vector: var, T: var, allocd: var, used: var) @TypeOf(_ecs_vector_memory(vector, ECS_VECTOR_T(T), allocd, used)) {}

pub const EcsWorld = ECS_HI_COMPONENT_ID + 25;
pub const __FSGSBASE__ = 1;
pub const __DYNAMIC__ = 1;
pub inline fn __API_DEPRECATED_BEGIN_REP6(rep: var, a: var, b: var, c: var, d: var, e: var) @TypeOf(__API_R_BEGIN(rep, a) ++ (__API_R_BEGIN(rep, b) ++ (__API_R_BEGIN(rep, c) ++ (__API_R_BEGIN(rep, d) ++ __API_R_BEGIN(rep, e))))) {
    return __API_R_BEGIN(rep, a) ++ (__API_R_BEGIN(rep, b) ++ (__API_R_BEGIN(rep, c) ++ (__API_R_BEGIN(rep, d) ++ __API_R_BEGIN(rep, e))));
}
pub const __INTPTR_MAX__ = @as(c_long, 9223372036854775807);
pub inline fn __API_AVAILABLE5(x: var, y: var, z: var, t: var, b: var) @TypeOf(__API_A(x) ++ (__API_A(y) ++ (__API_A(z) ++ (__API_A(t) ++ __API_A(b))))) {
    return __API_A(x) ++ (__API_A(y) ++ (__API_A(z) ++ (__API_A(t) ++ __API_A(b))));
}
pub const __INTMAX_WIDTH__ = 64;
pub const QUAD_MAX = LLONG_MAX;
pub const SIGTSTP = 18;
pub const FLECS__EEcsType = 3;
pub const RLIM_SAVED_CUR = RLIM_INFINITY;
pub const __cold = __attribute__(__cold__);
pub const POLL_ERR = 4;
pub const __INT8_FMTd__ = "hhd";

pub const __UINT8_MAX__ = 255;
pub const __DBL_HAS_QUIET_NAN__ = 1;
pub const __clang_minor__ = 0;
pub const __WATCHOS_4_1 = 40100;
pub inline fn ECS_EXPORT_ENTITY(type_1: var) @TypeOf(ECS_SET_ENTITY(type_1)) {
    return ECS_SET_ENTITY(type_1);
}
pub const _POSIX2_RE_DUP_MAX = 255;
pub const RLIMIT_FOOTPRINT_INTERVAL = 0x4;
pub const __LDBL_DECIMAL_DIG__ = 21;



pub const EcsPipeline = ECS_HI_COMPONENT_ID + 8;
pub const __WCHAR_TYPE__ = c_int;
pub const ECS_MORE_THAN_ONE_PREFAB = 13;
pub const _STRUCT_MCONTEXT = _STRUCT_MCONTEXT64;
pub const ECS_INVALID_REACTIVE_SIGNATURE = 41;
pub const INT_LEAST64_MIN = INT64_MIN;
pub const EcsPostUpdate = ECS_HI_COMPONENT_ID + 19;
pub const RLIMIT_MEMLOCK = 6;
pub const __UINTMAX_FMTu__ = "lu";
pub const L_tmpnam = 1024;


pub const ECS_HI_COMPONENT_ID = 256;
pub const SIGFPE = 8;
pub const UINT_MAX = 0xffffffff;




pub const CLD_EXITED = 1;
pub const SIGSTKSZ = 131072;
pub const __INT64_C_SUFFIX__ = LL;
pub const __CLANG_ATOMIC_INT_LOCK_FREE = 2;
pub const SIGBUS = 10;
pub const __SMOD = 0x2000;
pub const RLIM_NLIMITS = 9;
pub const _POSIX_NGROUPS_MAX = 8;
pub const _IOLBF = 1;
pub inline fn ecs_new(world: var, type_1: var) @TypeOf(ecs_new_w_type(world, ecs_type(type_1))) {
    return ecs_new_w_type(world, ecs_type(type_1));
}
pub inline fn ecs_os_dlproc(lib: var, procname: var) @TypeOf(ecs_os_api.dlproc(lib, procname)) {
    return ecs_os_api.dlproc(lib, procname);
}
pub const PRIO_USER = 2;
pub inline fn __P(protos: var) @TypeOf(protos) {
    return protos;
}
pub inline fn __RCSID(s: var) @TypeOf(__IDSTRING(rcsid, s)) {
    return __IDSTRING(rcsid, s);
}
pub inline fn __API_DEPRECATED_MSG4(msg: var, x: var, y: var, z: var) @TypeOf(__API_DEPRECATED_MSG3(msg, x, y) ++ __API_D(msg, z)) {
    return __API_DEPRECATED_MSG3(msg, x, y) ++ __API_D(msg, z);
}
pub const ECS_STRBUF_MAX_LIST_DEPTH = 32;




pub const __IPHONE_8_1 = 80100;
pub const ECS_TYPE_TOO_LARGE = 33;
pub const BC_BASE_MAX = 99;
pub const BC_SCALE_MAX = 99;
pub const TRAP_TRACE = 2;
pub const __abortlike = __dead2 ++ (__cold ++ __not_tail_called);
pub const FPE_NOOP = 0;
pub const ECS_INCONSISTENT_COMPONENT_NAME = 42;
pub inline fn INT32_C(v: var) @TypeOf(v) {
    return v;
}
pub const __STDC_UTF_32__ = 1;
pub const FLECS__EEcsIterAction = 11;
pub const EcsOnAdd = ECS_HI_COMPONENT_ID + 9;
pub const ECS_NO_OUT_COLUMNS = 36;
pub const __MAC_10_4 = 1040;
pub const SA_USERSPACE_MASK = SA_ONSTACK | (SA_RESTART | (SA_RESETHAND | (SA_NOCLDSTOP | (SA_NODEFER | (SA_NOCLDWAIT | SA_SIGINFO)))));
pub const __WATCHOS_6_2 = 60200;
pub const UINT32_MAX = @as(c_uint, 4294967295);
pub const __GNUC_STDC_INLINE__ = 1;
pub const __DBL_DIG__ = 15;

pub inline fn __API_DEPRECATED_MSG6(msg: var, x: var, y: var, z: var, t: var, b: var) @TypeOf(__API_DEPRECATED_MSG5(msg, x, y, z, t) ++ __API_D(msg, b)) {
    return __API_DEPRECATED_MSG5(msg, x, y, z, t) ++ __API_D(msg, b);
}
pub inline fn va_copy(dest: var, src: var) @TypeOf(__builtin_va_copy(dest, src)) {
    return __builtin_va_copy(dest, src);
}
pub inline fn ecs_vector_set_size_t(vector: var, size: var, alignment: var, elem_count: var) @TypeOf(_ecs_vector_set_size(vector, ECS_VECTOR_U(size, alignment), elem_count)) {}
pub const __INT32_FMTd__ = "d";
pub const __WATCHOS_4_2 = 40200;
pub const GID_MAX = @as(c_uint, 2147483647);
pub const __MAC_OS_X_VERSION_MAX_ALLOWED = __MAC_10_15;
pub const OPEN_MAX = 10240;
pub const __FLT_DIG__ = 6;
pub const __USER_LABEL_PREFIX__ = _;
pub const RENAME_SECLUDE = 0x00000001;

pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const IOPOL_SCOPE_PROCESS = 0;
pub const __SIZEOF_LONG_LONG__ = 8;
pub const INT_LEAST64_MAX = INT64_MAX;
pub inline fn __API_AVAILABLE3(x: var, y: var, z: var) @TypeOf(__API_A(x) ++ (__API_A(y) ++ __API_A(z))) {
    return __API_A(x) ++ (__API_A(y) ++ __API_A(z));
}
pub inline fn ecs_vector_remove_index(vector: var, T: var, index_1: var) @TypeOf(_ecs_vector_remove_index(vector, ECS_VECTOR_T(T), index_1)) {}
pub const __INT32_TYPE__ = c_int;
pub const __DBL_MIN_EXP__ = -1021;
pub inline fn __API_DEPRECATED_BEGIN_MSG2(msg: var, a: var) @TypeOf(__API_D_BEGIN(msg, a)) {
    return __API_D_BEGIN(msg, a);
}
pub const ECS_TYPE_FLAG_START = ECS_CHILDOF;
pub const __PTHREAD_ONCE_SIZE__ = 8;
pub const __MAC_10_10_2 = 101002;
pub const SIGSTOP = 17;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION = __attribute__(availability(ios, unavailable));
pub const __PTHREAD_RWLOCKATTR_SIZE__ = 16;
pub const CLD_DUMPED = 3;
pub const __IPHONE_7_1 = 70100;
pub const __PTHREAD_MUTEXATTR_SIZE__ = 8;
pub const __API_TO_BE_DEPRECATED = 100000;
pub const RLIMIT_NPROC = 7;
pub inline fn ecs_vector_set_count_t(vector: var, size: var, alignment: var, elem_count: var) @TypeOf(_ecs_vector_set_count(vector, ECS_VECTOR_U(size, alignment), elem_count)) {}
pub const __enum_closed = __attribute__(__enum_extensibility__(closed));
pub inline fn WEXITSTATUS(x: var) @TypeOf((_W_INT(x) >> 8) & 0x000000ff) {
    return (_W_INT(x) >> 8) & 0x000000ff;
}
pub const __UINT_LEAST32_FMTX__ = "X";
pub const ECS_OUT_OF_MEMORY = 17;
pub const __SSE_MATH__ = 1;
pub const SIGEV_SIGNAL = 1;
pub inline fn ecs_os_mutex_lock(mutex: var) @TypeOf(ecs_os_api.mutex_lock(mutex)) {
    return ecs_os_api.mutex_lock(mutex);
}
pub const _POSIX_SEM_VALUE_MAX = 32767;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub inline fn _WSTATUS(x: var) @TypeOf(_W_INT(x) & 0o0177) {
    return _W_INT(x) & 0o0177;
}
pub const SIGCHLD = 20;
pub const UQUAD_MAX = ULLONG_MAX;
pub const __IPHONE_3_0 = 30000;
pub const WORD_BIT = 32;
pub inline fn __API_AVAILABLE_BEGIN6(a: var, b: var, c: var, d: var, e: var, f: var) @TypeOf(__API_A_BEGIN(a) ++ (__API_A_BEGIN(b) ++ (__API_A_BEGIN(c) ++ (__API_A_BEGIN(d) ++ (__API_A_BEGIN(e) ++ __API_A_BEGIN(f)))))) {
    return __API_A_BEGIN(a) ++ (__API_A_BEGIN(b) ++ (__API_A_BEGIN(c) ++ (__API_A_BEGIN(d) ++ (__API_A_BEGIN(e) ++ __API_A_BEGIN(f)))));
}
pub const RLIMIT_RSS = RLIMIT_AS;
pub const __INT16_TYPE__ = c_short;
pub const __PCLMUL__ = 1;
pub const SA_NODEFER = 0x0010;
pub const CLOCK_UPTIME_RAW_APPROX = _CLOCK_UPTIME_RAW_APPROX;
pub const RUSAGE_SELF = 0;
pub const ECS_COLUMN_IS_NOT_SET = 29;
pub const BUS_ADRALN = 1;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const CHARCLASS_NAME_MAX = 14;
pub const _IOFBF = 0;
pub const FLECS__EEcsSystem = 5;
pub const __SEOF = 0x0020;
pub inline fn W_EXITCODE(ret: var, sig: var) @TypeOf(ret << (8 | sig)) {
    return ret << (8 | sig);
}
pub inline fn __AVAILABILITY_INTERNAL_DEPRECATED_MSG(_msg: var) @TypeOf(__attribute__(deprecated(_msg))) {
    return __attribute__(deprecated(_msg));
}
pub const __UINTPTR_FMTo__ = "lo";
pub const __IPHONE_11_4 = 110400;
pub const _POSIX_SSIZE_MAX = 32767;
pub const __INT32_MAX__ = 2147483647;
pub const __INTPTR_FMTd__ = "ld";
pub inline fn va_arg(ap: var, type_1: var) @TypeOf(__builtin_va_arg(ap, type_1)) {
    return __builtin_va_arg(ap, type_1);
}
pub const SIGUSR2 = 31;
pub const _POSIX_SYMLINK_MAX = 255;



pub const __MOVBE__ = 1;
pub const EXPR_NEST_MAX = 32;
pub inline fn __API_DEPRECATED_BEGIN_MSG7(msg: var, a: var, b: var, c: var, d: var, e: var, f: var) @TypeOf(__API_D_BEGIN(msg, a) ++ (__API_D_BEGIN(msg, b) ++ (__API_D_BEGIN(msg, c) ++ (__API_D_BEGIN(msg, d) ++ (__API_D_BEGIN(msg, e) ++ __API_D_BEGIN(msg, f)))))) {
    return __API_D_BEGIN(msg, a) ++ (__API_D_BEGIN(msg, b) ++ (__API_D_BEGIN(msg, c) ++ (__API_D_BEGIN(msg, d) ++ (__API_D_BEGIN(msg, e) ++ __API_D_BEGIN(msg, f)))));
}
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const __BLOCKS__ = 1;
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINTPTR_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __MAC_10_9 = 1090;
pub const EcsPreStore = ECS_HI_COMPONENT_ID + 20;
pub const __PTRDIFF_FMTd__ = "ld";
pub const PRIO_PGRP = 1;
pub const IOV_MAX = 1024;
pub const SA_RESETHAND = 0x0004;
pub const SEGV_NOOP = 0;
pub const ILL_PRVOPC = 3;
pub inline fn UINT8_C(v: var) @TypeOf(v) {
    return v;
}
pub const RSIZE_MAX = SIZE_MAX >> 1;
pub const ECS_INTERNAL_ERROR = 12;
pub const IOPOL_MATERIALIZE_DATALESS_FILES_DEFAULT = 0;
pub const RLIMIT_CPU_USAGE_MONITOR = 0x2;
pub const __MAC_10_11_3 = 101103;



pub const L_ctermid = 1024;
pub const _QUAD_HIGHWORD = 1;
pub const __x86_64__ = 1;
pub const _POSIX_LINK_MAX = 8;
pub inline fn ecs_bulk_add_remove(world: var, to_add: var, to_remove: var, filter: var) @TypeOf(ecs_bulk_add_remove_type(world, ecs_type(to_add), ecs_type(to_remove), filter)) {
    return ecs_bulk_add_remove_type(world, ecs_type(to_add), ecs_type(to_remove), filter);
}
pub inline fn sigmask(m: var) @TypeOf(1 << (m - 1)) {
    return 1 << (m - 1);
}

pub const __PTHREAD_CONDATTR_SIZE__ = 8;
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub inline fn ecs_owns_entity(world: var, entity: var, has: var, owned: var) @TypeOf(ecs_type_owns_entity(world, ecs_get_type(world, entity), has, owned)) {
    return ecs_type_owns_entity(world, ecs_get_type(world, entity), has, owned);
}
pub const __SIZEOF_FLOAT__ = 4;
pub inline fn __API_DEPRECATED_REP6(rep: var, x: var, y: var, z: var, t: var, b: var) @TypeOf(__API_DEPRECATED_REP5(rep, x, y, z, t) ++ __API_R(rep, b)) {
    return __API_DEPRECATED_REP5(rep, x, y, z, t) ++ __API_R(rep, b);
}
pub inline fn __SCCSID(s: var) @TypeOf(__IDSTRING(sccsid, s)) {
    return __IDSTRING(sccsid, s);
}
pub const __MAC_10_6 = 1060;
pub const __OBJC_BOOL_IS_BOOL = 0;
pub const __IPHONE_9_2 = 90200;
pub inline fn __SWIFT_UNAVAILABLE_MSG(_msg: var) @TypeOf(__OS_AVAILABILITY_MSG(swift, unavailable, _msg)) {
    return __OS_AVAILABILITY_MSG(swift, unavailable, _msg);
}
pub const PASS_MAX = 128;
pub const ECS_INVALID_TYPE_EXPRESSION = 5;
pub const __NO_MATH_INLINES = 1;
pub const _POSIX_HOST_NAME_MAX = 255;

pub const __UINT_FAST16_MAX__ = 65535;

pub const __ATOMIC_ACQUIRE = 2;
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub inline fn ecs_vector_remove(vector: var, T: var, index_1: var) @TypeOf(_ecs_vector_remove(vector, ECS_VECTOR_T(T), index_1)) {}

pub const RUSAGE_INFO_V3 = 3;

pub const FPE_FLTRES = 4;
pub const EcsPrefab = ECS_HI_COMPONENT_ID + 1;
pub const __DBL_MIN_10_EXP__ = -307;
pub const CHAR_MIN = -128;
pub const IOPOL_ATIME_UPDATES_DEFAULT = 0;
pub const __DBL_DENORM_MIN__ = 4.9406564584124654e-324;
pub const LINE_MAX = 2048;
pub const __IPHONE_4_2 = 40200;
pub const EcsDisabled = ECS_HI_COMPONENT_ID + 3;
pub const __ORDER_PDP_ENDIAN__ = 3412;
pub inline fn __API_AVAILABLE1(x: var) @TypeOf(__API_A(x)) {
    return __API_A(x);
}
pub const __DBL_MAX_10_EXP__ = 308;
pub const __PTRDIFF_FMTi__ = "li";
pub const stdout = __stdoutp;
pub const _POSIX_TRACE_NAME_MAX = 8;
pub const EcsMonitor = ECS_HI_COMPONENT_ID + 7;
pub const EcsOnLoad = ECS_HI_COMPONENT_ID + 14;



pub const __SIZEOF_LONG__ = 8;
pub const ILL_PRVREG = 6;
pub const RLIMIT_FSIZE = 1;
pub const LONG_LONG_MAX = __LONG_LONG_MAX__;
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __FLT_EVAL_METHOD__ = 0;
pub const RLIMIT_NOFILE = 8;
pub const __SRW = 0x0010;
pub const __FLT_MAX_EXP__ = 128;
pub const UINT8_MAX = 255;
pub inline fn ECS_EXPORT_COMPONENT(type_1: var) @TypeOf(ECS_SET_COMPONENT(type_1)) {
    return ECS_SET_COMPONENT(type_1);
}



pub const __WATCHOS_2_1 = 20100;
pub const PRIO_MAX = 20;
pub const __UINT_FAST8_FMTX__ = "hhX";

pub inline fn ecs_os_module_to_dl(lib: var) @TypeOf(ecs_os_api.module_to_dl(lib)) {
    return ecs_os_api.module_to_dl(lib);
}
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const _POSIX_RE_DUP_MAX = _POSIX2_RE_DUP_MAX;
pub const __API_UNAVAILABLE_PLATFORM_driverkit = blk: {
    _ = driverkit;
    break :blk unavailable;
};
pub const RUSAGE_INFO_CURRENT = RUSAGE_INFO_V4;
pub const __SOFF = 0x1000;


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
pub const NL_LANGMAX = 14;
pub const ECS_2D = 2;
pub const SHRT_MAX = 32767;
pub const RUSAGE_INFO_V4 = 4;
pub const __INTMAX_C_SUFFIX__ = L;
pub const POLL_IN = 1;




pub const __UINT32_FMTx__ = "x";
pub const WINT_MIN = INT32_MIN;
pub const __disable_tail_calls = __attribute__(__disable_tail_calls__);
pub const _POSIX_TRACE_USER_EVENT_MAX = 32;
pub const __UINT_LEAST64_FMTx__ = "llx";
pub const __IPHONE_5_1 = 50100;
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __AVAILABILITY_INTERNAL__IPHONE_NA__IPHONE_NA = __attribute__(availability(ios, unavailable));
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = 2;

pub const __UINTPTR_FMTu__ = "lu";
pub const SA_SIGINFO = 0x0040;
pub const __INT_FAST32_TYPE__ = c_int;
pub const UINTPTR_MAX = @as(c_ulong, 18446744073709551615);
pub const __UINT16_FMTx__ = "hx";
pub const BUS_OBJERR = 3;
pub const WAKEMON_GET_PARAMS = 0x04;
pub const __WATCHOS_1_0 = 10000;
pub inline fn __printflike(fmtarg: var, firstvararg: var) @TypeOf(__attribute__(__format__(__printf__, fmtarg, firstvararg))) {
    return __attribute__(__format__(__printf__, fmtarg, firstvararg));
}
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const SIGEMT = 7;
pub const _POSIX_MAX_CANON = 255;
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const _POSIX_MQ_PRIO_MAX = 32;
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTX__ = "lX";
pub const WAKEMON_SET_DEFAULTS = 0x08;
pub const __INT16_FMTd__ = "hd";
pub const EcsOnDemand = ECS_HI_COMPONENT_ID + 6;



pub const _POSIX_SS_REPL_MAX = 4;
pub const INT_FAST16_MIN = INT16_MIN;
pub const NGROUPS_MAX = 16;
pub const PATH_MAX = 1024;
pub const SSIZE_MAX = LONG_MAX;
pub const TRAP_BRKPT = 1;
pub const INT32_MIN = -INT32_MAX - 1;

pub const __SRD = 0x0004;
pub inline fn __API_DEPRECATED_BEGIN_REP7(rep: var, a: var, b: var, c: var, d: var, e: var, f: var) @TypeOf(__API_R_BEGIN(rep, a) ++ (__API_R_BEGIN(rep, b) ++ (__API_R_BEGIN(rep, c) ++ (__API_R_BEGIN(rep, d) ++ (__API_R_BEGIN(rep, e) ++ __API_R_BEGIN(rep, f)))))) {
    return __API_R_BEGIN(rep, a) ++ (__API_R_BEGIN(rep, b) ++ (__API_R_BEGIN(rep, c) ++ (__API_R_BEGIN(rep, d) ++ (__API_R_BEGIN(rep, e) ++ __API_R_BEGIN(rep, f)))));
}
pub const __GCC_ATOMIC_LONG_LOCK_FREE = 2;
pub const _I386_SIGNAL_H_ = 1;
pub const __UINTPTR_WIDTH__ = 64;
pub const SI_MESGQ = 0x10005;
pub const INTMAX_MIN = -INTMAX_MAX - 1;
pub const SEGV_ACCERR = 2;
pub const ECS_THREAD_ERROR = 31;
pub const EcsOnSet = ECS_HI_COMPONENT_ID + 11;
pub const IOPOL_TYPE_VFS_ATIME_UPDATES = 2;
pub const __dead2 = __attribute__(__noreturn__);
pub inline fn ecs_os_mutex_unlock(mutex: var) @TypeOf(ecs_os_api.mutex_unlock(mutex)) {
    return ecs_os_api.mutex_unlock(mutex);
}
pub const __unavailable = __attribute__(__unavailable__);
pub const __ATOMIC_RELAXED = 0;


pub const _RLIMIT_POSIX_FLAG = 0x1000;
pub const stderr = __stderrp;
pub const FOOTPRINT_INTERVAL_RESET = 0x1;
pub const __UINT64_C_SUFFIX__ = ULL;
pub inline fn __API_AVAILABLE_BEGIN4(a: var, b: var, c: var, d: var) @TypeOf(__API_A_BEGIN(a) ++ (__API_A_BEGIN(b) ++ (__API_A_BEGIN(c) ++ __API_A_BEGIN(d)))) {
    return __API_A_BEGIN(a) ++ (__API_A_BEGIN(b) ++ (__API_A_BEGIN(c) ++ __API_A_BEGIN(d)));
}
pub const FLECS__EEcsTimer = 14;
pub const __DBL_MAX__ = 1.7976931348623157e+308;
pub const UID_MAX = @as(c_uint, 2147483647);
pub const __CHAR_BIT__ = 8;
pub const __DBL_DECIMAL_DIG__ = 17;
pub const __SWR = 0x0008;
pub const CLOCK_UPTIME_RAW = _CLOCK_UPTIME_RAW;
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __MAC_10_5 = 1050;
pub const FP_RND_DOWN = 1;
pub const SV_RESETHAND = SA_RESETHAND;

pub const CHILD_MAX = 266;
pub const FP_PREC_24B = 0;
pub const LONG_BIT = 64;
pub inline fn __API_AVAILABLE6(x: var, y: var, z: var, t: var, b: var, m: var) @TypeOf(__API_A(x) ++ (__API_A(y) ++ (__API_A(z) ++ (__API_A(t) ++ (__API_A(b) ++ __API_A(m)))))) {
    return __API_A(x) ++ (__API_A(y) ++ (__API_A(z) ++ (__API_A(t) ++ (__API_A(b) ++ __API_A(m)))));
}
pub const w_retcode = w_T.w_Retcode;
pub const __ENVIRONMENT_MAC_OS_X_VERSION_MIN_REQUIRED__ = 101500;
pub const __INTMAX_MAX__ = @as(c_long, 9223372036854775807);

pub const WAKEMON_MAKE_FATAL = 0x10;

pub const __DBL_MIN__ = 2.2250738585072014e-308;
pub const ECS_COLUMN_ACCESS_VIOLATION = 37;
pub inline fn __API_AVAILABLE_BEGIN5(a: var, b: var, c: var, d: var, e: var) @TypeOf(__API_A_BEGIN(a) ++ (__API_A_BEGIN(b) ++ (__API_A_BEGIN(c) ++ (__API_A_BEGIN(d) ++ __API_A_BEGIN(e))))) {
    return __API_A_BEGIN(a) ++ (__API_A_BEGIN(b) ++ (__API_A_BEGIN(c) ++ (__API_A_BEGIN(d) ++ __API_A_BEGIN(e))));
}
pub inline fn ecs_os_mutex_free(mutex: var) @TypeOf(ecs_os_api.mutex_free(mutex)) {
    return ecs_os_api.mutex_free(mutex);
}
pub const __XSAVEOPT__ = 1;
pub const ru_last = ru_nivcsw;
pub inline fn WCOREDUMP(x: var) @TypeOf(_W_INT(x) & WCOREFLAG) {
    return _W_INT(x) & WCOREFLAG;
}
pub const __API_AVAILABLE_END = _Pragma("clang attribute pop");


pub const ECS_REFLECTION = 1;
pub const __UINTMAX_FMTX__ = "lX";
pub inline fn ecs_os_cond_wait(cond: var, mutex: var) @TypeOf(ecs_os_api.cond_wait(cond, mutex)) {
    return ecs_os_api.cond_wait(cond, mutex);
}
pub const __AVX2__ = 1;
pub const __UINT_LEAST16_FMTo__ = "ho";

pub const __XNU_PRIVATE_EXTERN = __attribute__(visibility("hidden"));
pub const SHRT_MIN = -32768;
pub inline fn __API_DEPRECATED_BEGIN_REP3(rep: var, a: var, b: var) @TypeOf(__API_R_BEGIN(rep, a) ++ __API_R_BEGIN(rep, b)) {
    return __API_R_BEGIN(rep, a) ++ __API_R_BEGIN(rep, b);
}
pub const INTPTR_MIN = -INTPTR_MAX - 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = 1;

pub const __PTHREAD_RWLOCK_SIZE__ = 192;
pub const BUS_ADRERR = 2;



pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __SAPP = 0x0100;
pub const EcsPreFrame = ECS_HI_COMPONENT_ID + 13;
pub const IOPOL_VFS_STATFS_FORCE_NO_DATA_VOLUME = 1;
pub inline fn _W_INT(w: var) @TypeOf([*c]c_int & w.*) {
    return [*c]c_int & w.*;
}
pub const SIGEV_THREAD = 3;
pub inline fn __strftimelike(fmtarg: var) @TypeOf(__attribute__(__format__(__strftime__, fmtarg, 0))) {
    return __attribute__(__format__(__strftime__, fmtarg, 0));
}
pub const CLOCK_PROCESS_CPUTIME_ID = _CLOCK_PROCESS_CPUTIME_ID;
pub const ECS_STRBUF_ELEMENT_SIZE = 511;
pub inline fn ecs_vector_grow(vector: var, T: var, size: var) @TypeOf(_ecs_vector_grow(vector, ECS_VECTOR_T(T), size)) {}
pub const __SIGN = 0x8000;
pub inline fn ecs_vector_reclaim(vector: var, T: var) @TypeOf(_ecs_vector_reclaim(vector, ECS_VECTOR_T(T))) {}
pub const __POPCNT__ = 1;
pub const __ATOMIC_ACQ_REL = 4;

pub const __UINT_LEAST32_FMTx__ = "x";
pub const FP_PREC_53B = 2;
pub const ECS_INVALID_PARAMETER = 2;
pub const SA_ONSTACK = 0x0001;

pub inline fn __API_AVAILABLE7(x: var, y: var, z: var, t: var, b: var, m: var, d: var) @TypeOf(__API_A(x) ++ (__API_A(y) ++ (__API_A(z) ++ (__API_A(t) ++ (__API_A(b) ++ (__API_A(m) ++ __API_A(d))))))) {
    return __API_A(x) ++ (__API_A(y) ++ (__API_A(z) ++ (__API_A(t) ++ (__API_A(b) ++ (__API_A(m) ++ __API_A(d))))));
}


pub inline fn __API_AVAILABLE_BEGIN2(a: var, b: var) @TypeOf(__API_A_BEGIN(a) ++ __API_A_BEGIN(b)) {
    return __API_A_BEGIN(a) ++ __API_A_BEGIN(b);
}
pub const ILL_ILLADR = 5;
pub const EcsOnRemove = ECS_HI_COMPONENT_ID + 10;
pub const FP_RND_NEAR = 0;
pub const CLOCK_THREAD_CPUTIME_ID = _CLOCK_THREAD_CPUTIME_ID;
pub const ECS_INVALID_COMPONENT_ID = 3;
pub const UINT_FAST16_MAX = UINT16_MAX;
pub inline fn __PROJECT_VERSION(s: var) @TypeOf(__IDSTRING(project_version, s)) {
    return __IDSTRING(project_version, s);
}
pub const __UINT_LEAST64_FMTo__ = "llo";
pub const MINSIGSTKSZ = 32768;
pub const __SMBF = 0x0080;
pub const _XOPEN_IOV_MAX = 16;
pub inline fn __API_DEPRECATED_BEGIN_MSG3(msg: var, a: var, b: var) @TypeOf(__API_D_BEGIN(msg, a) ++ __API_D_BEGIN(msg, b)) {
    return __API_D_BEGIN(msg, a) ++ __API_D_BEGIN(msg, b);
}
pub const __ENABLE_LEGACY_MAC_AVAILABILITY = 1;
pub const RLIM_SAVED_MAX = RLIM_INFINITY;
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const sv_onstack = sv_flags;
pub const NL_TEXTMAX = 2048;

pub const __UINTMAX_MAX__ = @as(c_ulong, 18446744073709551615);
pub inline fn ecs_vector_copy_t(src: var, size: var, alignment: var) @TypeOf(_ecs_vector_copy(src, ECS_VECTOR_U(size, alignment))) {}
pub const CLOCKS_PER_SEC = 1000000;
pub const CLD_NOOP = 0;
pub const __WATCHOS_3_0 = 30000;
pub const __DBL_MANT_DIG__ = 53;
pub inline fn ecs_vector_addn_t(vector: var, size: var, alignment: var, elem_count: var) @TypeOf(_ecs_vector_addn(vector, ECS_VECTOR_U(size, alignment), elem_count)) {}
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const __UINT32_FMTX__ = "X";
pub const RUSAGE_INFO_V0 = 0;
pub const __SHRT_MAX__ = 32767;
pub const __API_UNAVAILABLE_PLATFORM_watchos = blk: {
    _ = watchos;
    break :blk unavailable;
};
pub const ECS_UNRESOLVED_REFERENCE = 30;
pub const __UINT_FAST16_FMTX__ = "hX";
pub const ECS_INVALID_WHILE_ITERATING = 25;
pub inline fn ecs_vector_memory_t(vector: var, size: var, alignment: var, allocd: var, used: var) @TypeOf(_ecs_vector_memory(vector, ECS_VECTOR_U(size, alignment), allocd, used)) {}
pub const __FLT_DECIMAL_DIG__ = 9;
pub const IOPOL_DEFAULT = 0;
pub const __UINT8_FMTo__ = "hho";
pub const __FLT_HAS_DENORM__ = 1;
pub const IOPOL_UTILITY = 4;
pub inline fn ecs_vector_new_t(size: var, alignment: var, elem_count: var) @TypeOf(_ecs_vector_new(ECS_VECTOR_U(size, alignment), elem_count)) {}
pub const USER_ADDR_NULL = (@import("std").meta.cast(user_addr_t, 0));
pub const INTMAX_MAX = INTMAX_C(9223372036854775807);
pub const INT_LEAST16_MIN = INT16_MIN;
pub inline fn ecs_get_path(world: var, parent: var, child: var) @TypeOf(ecs_get_path_w_sep(world, parent, child, 0, ".", NULL)) {
    return ecs_get_path_w_sep(world, parent, child, 0, ".", NULL);
}
pub const SIGWINCH = 28;
pub const SIGPIPE = 13;
pub const RAND_MAX = 0x7fffffff;


pub const ECS_INVALID_EXPRESSION = 4;
pub const IOPOL_SCOPE_THREAD = 1;
pub const __MAC_10_13_2 = 101302;
pub const RLIMIT_THREAD_CPULIMITS = 0x3;
pub const ECS_ALREADY_DEFINED = 14;

pub inline fn ecs_vector_set_min_count(vector: var, T: var, size: var) @TypeOf(_ecs_vector_set_min_count(vector, ECS_VECTOR_T(T), size)) {}
pub const __IPHONE_3_2 = 30200;
pub const __UINT_FAST64_FMTx__ = "llx";
pub const __pure2 = __attribute__(__const__);
pub const ILL_NOOP = 0;
pub inline fn ecs_os_dlopen(libname: var) @TypeOf(ecs_os_api.dlopen(libname)) {
    return ecs_os_api.dlopen(libname);
}
pub const INTPTR_MAX = @as(c_long, 9223372036854775807);
pub const __UINT_LEAST8_MAX__ = 255;
pub inline fn __API_UNAVAILABLE_BEGIN5(a: var, b: var, c: var, d: var, e: var) @TypeOf(__API_U_BEGIN(a) ++ (__API_U_BEGIN(b) ++ (__API_U_BEGIN(c) ++ (__API_U_BEGIN(d) ++ __API_U_BEGIN(e))))) {
    return __API_U_BEGIN(a) ++ (__API_U_BEGIN(b) ++ (__API_U_BEGIN(c) ++ (__API_U_BEGIN(d) ++ __API_U_BEGIN(e))));
}
pub const UINT16_MAX = 65535;
pub inline fn __API_DEPRECATED_BEGIN_MSG6(msg: var, a: var, b: var, c: var, d: var, e: var) @TypeOf(__API_D_BEGIN(msg, a) ++ (__API_D_BEGIN(msg, b) ++ (__API_D_BEGIN(msg, c) ++ (__API_D_BEGIN(msg, d) ++ __API_D_BEGIN(msg, e))))) {
    return __API_D_BEGIN(msg, a) ++ (__API_D_BEGIN(msg, b) ++ (__API_D_BEGIN(msg, c) ++ (__API_D_BEGIN(msg, d) ++ __API_D_BEGIN(msg, e))));
}
pub const __MAC_10_12_1 = 101201;
pub const SIGILL = 4;
pub inline fn __API_DEPRECATED_REP3(rep: var, x: var, y: var) @TypeOf(__API_R(rep, x) ++ __API_R(rep, y)) {
    return __API_R(rep, x) ++ __API_R(rep, y);
}
pub const INT_FAST64_MIN = INT64_MIN;
pub const __WORDSIZE = 64;
pub const __UINT_LEAST16_MAX__ = 65535;
pub const EcsSingleton = (@import("std").meta.cast(ecs_entity_t, ECS_ENTITY_MASK)) - 1;
pub inline fn __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION_DEP__IPHONE_COMPAT_VERSION_MSG(_msg: var) @TypeOf(__attribute__(availability(ios, unavailable))) {
    return __attribute__(availability(ios, unavailable));
}
pub const WEXITED = 0x00000004;
pub const ECS_INVALID_COMPONENT_SIZE = 15;

pub const __DBL_MAX_EXP__ = 1024;
pub inline fn __scanflike(fmtarg: var, firstvararg: var) @TypeOf(__attribute__(__format__(__scanf__, fmtarg, firstvararg))) {
    return __attribute__(__format__(__scanf__, fmtarg, firstvararg));
}
pub inline fn __API_UNAVAILABLE_BEGIN6(a: var, b: var, c: var, d: var, e: var, f: var) @TypeOf(__API_U_BEGIN(a) ++ (__API_U_BEGIN(b) ++ (__API_U_BEGIN(c) ++ (__API_U_BEGIN(d) ++ (__API_U_BEGIN(e) ++ __API_U_BEGIN(f)))))) {
    return __API_U_BEGIN(a) ++ (__API_U_BEGIN(b) ++ (__API_U_BEGIN(c) ++ (__API_U_BEGIN(d) ++ (__API_U_BEGIN(e) ++ __API_U_BEGIN(f)))));
}
pub const SCHAR_MIN = -128;
pub const SV_NODEFER = SA_NODEFER;

pub const ECS_INVALID_WHILE_MERGING = 24;
pub const __PTRDIFF_MAX__ = @as(c_long, 9223372036854775807);
pub const __ORDER_LITTLE_ENDIAN__ = 1234;
pub const CLOCK_MONOTONIC_RAW = _CLOCK_MONOTONIC_RAW;


pub const w_coredump = w_T.w_Coredump;
pub const __UINT_FAST32_MAX__ = @as(c_uint, 4294967295);
pub const w_stopsig = w_S.w_Stopsig;
pub const __MAC_10_15 = 101500;
pub const _POSIX_SYMLOOP_MAX = 8;
pub const WCONTINUED = 0x00000010;
pub const MAX_INPUT = 1024;
pub const __WINT_MAX__ = 2147483647;
pub const __unused = __attribute__(__unused__);
pub const NAME_MAX = 255;
pub const EQUIV_CLASS_MAX = 2;

pub const __PTHREAD_ATTR_SIZE__ = 56;
pub const __IPHONE_10_0 = 100000;
pub const _POSIX_TRACE_EVENT_NAME_MAX = 30;
pub inline fn __deprecated_enum_msg(_msg: var) @TypeOf(__deprecated_msg(_msg)) {
    return __deprecated_msg(_msg);
}
pub const RUSAGE_INFO_V1 = 1;
pub const __IPHONE_9_3 = 90300;
pub const _FORTIFY_SOURCE = 2;
pub const SI_TIMER = 0x10003;
pub const __UINT_FAST16_FMTo__ = "ho";
pub const SIGCONT = 19;
pub inline fn UINT16_C(v: var) @TypeOf(v) {
    return v;
}
pub const __WATCHOS_6_1 = 60100;
pub const FLECS__EEcsSignatureExpr = 8;
pub const __AVAILABILITY_INTERNAL_WEAK_IMPORT = __attribute__(weak_import);
pub const INT_LEAST32_MIN = INT32_MIN;
pub const INT8_MIN = -128;
pub const __WATCHOS_5_1 = 50100;
pub const __UINT_FAST8_MAX__ = 255;
pub const __SIZEOF_SIZE_T__ = 8;
pub const __BMI2__ = 1;
pub const __STDC_VERSION__ = @as(c_long, 201112);
pub inline fn __offsetof(type_1: var, field: var) @TypeOf(__builtin_offsetof(type_1, field)) {
    return __builtin_offsetof(type_1, field);
}

pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = 1;
pub const OBJC_NEW_PROPERTIES = 1;

pub const ECS_INVALID_SIGNATURE = 6;
pub inline fn va_end(ap: var) @TypeOf(__builtin_va_end(ap)) {
    return __builtin_va_end(ap);
}
pub const BC_DIM_MAX = 2048;
pub const __UINT32_C_SUFFIX__ = U;
pub const _POSIX_CLOCKRES_MIN = 20000000;
pub inline fn __API_DEPRECATED_REP4(rep: var, x: var, y: var, z: var) @TypeOf(__API_DEPRECATED_REP3(rep, x, y) ++ __API_R(rep, z)) {
    return __API_DEPRECATED_REP3(rep, x, y) ++ __API_R(rep, z);
}

pub const FLECS__TNULL = 0;
pub const FLECS__EEcsComponent = 1;
pub const FLECS__EEcsPipelineQuery = 13;
pub const ECS_COLUMN_INDEX_OUT_OF_RANGE = 19;
pub const EcsHidden = ECS_HI_COMPONENT_ID + 2;
pub inline fn ECS_OFFSET(o: var, offset: var) @TypeOf((@import("std").meta.cast(?*c_void, (@import("std").meta.cast(uintptr_t, o)) + (@import("std").meta.cast(uintptr_t, offset))))) {
    return (@import("std").meta.cast(?*c_void, (@import("std").meta.cast(uintptr_t, o)) + (@import("std").meta.cast(uintptr_t, offset))));
}
pub const TIME_UTC = 1;

pub const __INT_FAST16_MAX__ = 32767;
pub const ECS_XOR = (@import("std").meta.cast(ecs_entity_t, 1 << 59));
pub const WNOWAIT = 0x00000020;
pub const RUSAGE_INFO_V2 = 2;
pub inline fn ecs_vector_first_t(vector: var, size: var, alignment: var) @TypeOf(_ecs_vector_first(vector, ECS_VECTOR_U(size, alignment))) {}
pub const __SIZE_FMTx__ = "lx";
pub const _XOPEN_PATH_MAX = 1024;
pub inline fn WIFSIGNALED(x: var) @TypeOf(_WSTATUS(x) != @boolToInt((_WSTOPPED != 0) and (_WSTATUS(x) != 0))) {
    return _WSTATUS(x) != @boolToInt((_WSTOPPED != 0) and (_WSTATUS(x) != 0));
}
pub const __MAC_OS_X_VERSION_MIN_REQUIRED = __ENVIRONMENT_MAC_OS_X_VERSION_MIN_REQUIRED__;
pub const RLIMIT_CORE = 4;
pub const __enum_options = __attribute__(__flag_enum__);
pub inline fn __API_DEPRECATED_BEGIN_REP8(rep: var, a: var, b: var, c: var, d: var, e: var, f: var, g: var) @TypeOf(__API_R_BEGIN(rep, a) ++ (__API_R_BEGIN(rep, b) ++ (__API_R_BEGIN(rep, c) ++ (__API_R_BEGIN(rep, d) ++ (__API_R_BEGIN(rep, e) ++ (__API_R_BEGIN(rep, f) ++ __API_R_BEGIN(rep, g))))))) {
    return __API_R_BEGIN(rep, a) ++ (__API_R_BEGIN(rep, b) ++ (__API_R_BEGIN(rep, c) ++ (__API_R_BEGIN(rep, d) ++ (__API_R_BEGIN(rep, e) ++ (__API_R_BEGIN(rep, f) ++ __API_R_BEGIN(rep, g))))));
}
pub const P_tmpdir = "/var/tmp/";
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub inline fn ecs_vector_remove_index_t(vector: var, size: var, alignment: var, index_1: var) @TypeOf(_ecs_vector_remove_index(vector, ECS_VECTOR_U(size, alignment), index_1)) {}
pub const __header_always_inline = __header_inline ++ __attribute__(__always_inline__);
pub const SEEK_END = 2;
pub const SEGV_MAPERR = 1;
pub const SIGTTOU = 22;
pub const RLIMIT_AS = 5;

pub const __UINT64_FMTu__ = "llu";
pub inline fn __API_UNAVAILABLE6(x: var, y: var, z: var, t: var, b: var, m: var) @TypeOf(__API_UNAVAILABLE5(x, y, z, t, b) ++ __API_U(m)) {
    return __API_UNAVAILABLE5(x, y, z, t, b) ++ __API_U(m);
}
pub const SIGTERM = 15;
pub const __API_DEPRECATED_END = _Pragma("clang attribute pop");
pub const _IONBF = 2;
pub const IOPOL_TYPE_VFS_MATERIALIZE_DATALESS_FILES = 3;
pub const __SALC = 0x4000;
pub const __INT_FAST8_FMTd__ = "hhd";

pub inline fn __API_UNAVAILABLE3(x: var, y: var, z: var) @TypeOf(__API_UNAVAILABLE2(x, y) ++ __API_U(z)) {
    return __API_UNAVAILABLE2(x, y) ++ __API_U(z);
}

pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = 2;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = 1;
pub const __LITTLE_ENDIAN__ = 1;
pub const ECS_UNKNOWN_TYPE_ID = 8;
pub inline fn __API_UNAVAILABLE4(x: var, y: var, z: var, t: var) @TypeOf(__API_UNAVAILABLE3(x, y, z) ++ __API_U(t)) {
    return __API_UNAVAILABLE3(x, y, z) ++ __API_U(t);
}
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = 0;
pub const __INT_LEAST16_MAX__ = 32767;
pub const __GNUC_MINOR__ = 2;
pub const INT_LEAST16_MAX = INT16_MAX;
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const ECS_COLUMN_TYPE_MISMATCH = 23;

pub const PTHREAD_KEYS_MAX = 512;

pub const __FLT_HAS_INFINITY__ = 1;
pub inline fn __CAST_AWAY_QUALIFIER(variable: var, qualifier: var, type_1: var) @TypeOf((@import("std").meta.cast(type_1, c_long))(variable)) {
    return (@import("std").meta.cast(type_1, c_long))(variable);
}
pub inline fn ecs_new_from_fullpath(world: var, path: var) @TypeOf(ecs_new_from_path_w_sep(world, 0, path, ".", NULL)) {
    return ecs_new_from_path_w_sep(world, 0, path, ".", NULL);
}
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
pub const EcsFirstUserEntityId = ECS_HI_COMPONENT_ID + 32;

pub const ECS_DESERIALIZE_COMPONENT_ID_CONFLICT = 38;

pub const __nullable = _Nullable;
pub const __IPHONE_9_0 = 90000;
pub inline fn fropen(cookie: var, @"fn": var) @TypeOf(funopen(cookie, @"fn", 0, 0, 0)) {
    return funopen(cookie, @"fn", 0, 0, 0);
}
pub const __INTMAX_FMTd__ = "ld";
pub const IOPOL_MATERIALIZE_DATALESS_FILES_OFF = 1;
pub const __SEG_FS = 1;
pub const TMP_MAX = 308915776;
pub const __UINT_FAST8_FMTo__ = "hho";
pub const SIGURG = 16;
pub inline fn ecs_add(world: var, entity: var, component: var) @TypeOf(ecs_add_type(world, entity, ecs_type(component))) {
    return ecs_add_type(world, entity, ecs_type(component));
}

pub const SIG_BLOCK = 1;
pub const SV_INTERRUPT = SA_RESTART;
pub const ECS_OUT_OF_RANGE = 28;
pub const ECS_MISSING_OS_API = 32;
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const __INT_LEAST16_TYPE__ = c_short;

pub const ECS_COLUMN_HAS_NO_DATA = 22;
pub const __deprecated = __attribute__(__deprecated__);
pub const __IPHONE_10_1 = 100100;
pub const __SSE3__ = 1;
pub inline fn ecs_vector_move_index(dst: var, src: var, T: var, index_1: var) @TypeOf(_ecs_vector_move_index(dst, src, ECS_VECTOR_T(T), index_1)) {}
pub const __WATCHOS_2_0 = 20000;
pub const ILL_BADSTK = 8;
pub const FLECS__EEcsQuery = 10;
pub const INT_FAST8_MAX = INT8_MAX;
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_FAST64_FMTu__ = "llu";
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const EcsFirstUserComponentId = 32;

pub const __block = __attribute__(__blocks__(byref));
pub const __AVAILABILITY_INTERNAL_DEPRECATED = __attribute__(deprecated);



pub const __LONG_MAX__ = @as(c_long, 9223372036854775807);
pub const _POSIX_TZNAME_MAX = 6;
pub const SIGEV_NONE = 0;

pub const _POSIX_SIGQUEUE_MAX = 32;
pub const __MAC_10_11_2 = 101102;
pub inline fn __deprecated_msg(_msg: var) @TypeOf(__attribute__(__deprecated__(_msg))) {
    return __attribute__(__deprecated__(_msg));
}
pub const __HAS_FIXED_CHK_PROTOTYPES = 1;



pub const EcsPostFrame = ECS_HI_COMPONENT_ID + 22;
pub inline fn ecs_owns(world: var, entity: var, type_1: var, owned: var) @TypeOf(ecs_type_owns_type(world, ecs_get_type(world, entity), ecs_type(type_1), owned)) {
    return ecs_type_owns_type(world, ecs_get_type(world, entity), ecs_type(type_1), owned);
}

pub inline fn ecs_bulk_new(world: var, component: var, count: var) @TypeOf(ecs_bulk_new_w_type(world, ecs_type(component), count)) {
    return ecs_bulk_new_w_type(world, ecs_type(component), count);
}

pub inline fn ecs_get_parent(world: var, entity: var, component: var) @TypeOf(ecs_get_parent_w_entity(world, entity, ecs_entity(component))) {
    return ecs_get_parent_w_entity(world, entity, ecs_entity(component));
}
pub const __SSE4_1__ = 1;
pub const __INT_FAST64_FMTd__ = "lld";
pub inline fn WTERMSIG(x: var) @TypeOf(_WSTATUS(x)) {
    return _WSTATUS(x);
}
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub inline fn ecs_vector_from_array(T: var, elem_count: var, array: var) @TypeOf(_ecs_vector_from_array(ECS_VECTOR_T(T), elem_count, array)) {}
pub const IOPOL_APPLICATION = IOPOL_STANDARD;
pub const __INT16_FMTi__ = "hi";
pub const WSTOPPED = 0x00000008;
pub const __LDBL_MIN_EXP__ = -16381;
pub inline fn __API_DEPRECATED_BEGIN_REP5(rep: var, a: var, b: var, c: var, d: var) @TypeOf(__API_R_BEGIN(rep, a) ++ (__API_R_BEGIN(rep, b) ++ (__API_R_BEGIN(rep, c) ++ __API_R_BEGIN(rep, d)))) {
    return __API_R_BEGIN(rep, a) ++ (__API_R_BEGIN(rep, b) ++ (__API_R_BEGIN(rep, c) ++ __API_R_BEGIN(rep, d)));
}
pub const _POSIX_DELAYTIMER_MAX = 32;
pub inline fn __API_DEPRECATED_BEGIN_MSG4(msg: var, a: var, b: var, c: var) @TypeOf(__API_D_BEGIN(msg, a) ++ (__API_D_BEGIN(msg, b) ++ __API_D_BEGIN(msg, c))) {
    return __API_D_BEGIN(msg, a) ++ (__API_D_BEGIN(msg, b) ++ __API_D_BEGIN(msg, c));
}
pub const ECS_TYPE_NOT_AN_ENTITY = 9;
pub const FLECS__EEcsTrigger = 4;
pub const ECS_INVALID_PREFAB_CHILD_TYPE = 34;
pub inline fn ecs_os_thread_join(thread: var) @TypeOf(ecs_os_api.thread_join(thread)) {
    return ecs_os_api.thread_join(thread);
}

pub inline fn __API_AVAILABLE4(x: var, y: var, z: var, t: var) @TypeOf(__API_A(x) ++ (__API_A(y) ++ (__API_A(z) ++ __API_A(t)))) {
    return __API_A(x) ++ (__API_A(y) ++ (__API_A(z) ++ __API_A(t)));
}
pub const IOPOL_TYPE_DISK = 0;
pub inline fn ecs_get_mut(world: var, entity: var, component: var, is_added: var) @TypeOf((@import("std").meta.cast([*c]component, ecs_get_mut_w_entity(world, entity, ecs_entity(component), is_added)))) {
    return (@import("std").meta.cast([*c]component, ecs_get_mut_w_entity(world, entity, ecs_entity(component), is_added)));
}
pub const __UINT16_FMTu__ = "hu";
pub const COLL_WEIGHTS_MAX = 2;
pub inline fn ecs_vector_pop(vector: var, T: var, value: var) @TypeOf(_ecs_vector_pop(vector, ECS_VECTOR_T(T), value)) {}
pub const INT_LEAST8_MIN = INT8_MIN;
pub inline fn ecs_vector_set_size(vector: var, T: var, elem_count: var) @TypeOf(_ecs_vector_set_size(vector, ECS_VECTOR_T(T), elem_count)) {}

pub inline fn ecs_vector_copy(src: var, T: var) @TypeOf(_ecs_vector_copy(src, ECS_VECTOR_T(T))) {}
pub const __IPHONE_6_1 = 60100;
pub const RLIM_INFINITY = (@import("std").meta.cast(__uint64_t, 1 << 63)) - 1;
pub const __INT_LEAST32_FMTd__ = "d";
pub const ECS_UNRESOLVED_IDENTIFIER = 27;
pub const WCOREFLAG = 0o0200;
pub const __INTPTR_FMTi__ = "li";
pub const __IPHONE_5_0 = 50000;

pub const USHRT_MAX = 65535;

pub inline fn ecs_vector_get_t(vector: var, size: var, alignment: var, index_1: var) @TypeOf(_ecs_vector_get(vector, ECS_VECTOR_U(size, alignment), index_1)) {}
pub const __result_use_check = __attribute__(__warn_unused_result__);
pub const __WINT_TYPE__ = c_int;
pub inline fn ecs_os_adec(value: var) @TypeOf(ecs_os_api.adec(value)) {
    return ecs_os_api.adec(value);
}

pub inline fn ecs_os_cond_free(cond: var) @TypeOf(ecs_os_api.cond_free(cond)) {
    return ecs_os_api.cond_free(cond);
}

pub inline fn ecs_os_calloc(size: var) @TypeOf(ecs_os_api.calloc(size)) {
    return ecs_os_api.calloc(size);
}
pub const __nonnull = _Nonnull;
pub const FLECS__EEcsTickSource = 7;
pub inline fn __strfmonlike(fmtarg: var, firstvararg: var) @TypeOf(__attribute__(__format__(__strfmon__, fmtarg, firstvararg))) {
    return __attribute__(__format__(__strfmon__, fmtarg, firstvararg));
}
pub const _POSIX2_EQUIV_CLASS_MAX = 2;
pub const FPE_INTOVF = 8;
pub const __DBL_EPSILON__ = 2.2204460492503131e-16;
pub const NL_ARGMAX = 9;
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = 2;
pub const @"false" = 0;

pub const MB_CUR_MAX = __mb_cur_max;
pub inline fn __API_UNAVAILABLE_BEGIN7(a: var, b: var, c: var, d: var, e: var, f: var) @TypeOf(__API_U_BEGIN(a) ++ (__API_U_BEGIN(b) ++ (__API_U_BEGIN(c) ++ (__API_U_BEGIN(d) ++ (__API_U_BEGIN(e) ++ (__API_U_BEGIN(f) ++ __API_U_BEGIN(g))))))) {
    return __API_U_BEGIN(a) ++ (__API_U_BEGIN(b) ++ (__API_U_BEGIN(c) ++ (__API_U_BEGIN(d) ++ (__API_U_BEGIN(e) ++ (__API_U_BEGIN(f) ++ __API_U_BEGIN(g))))));
}
pub const ECS_INSTANCEOF = (@import("std").meta.cast(ecs_entity_t, 1 << 63));
pub const __UINTPTR_FMTx__ = "lx";
pub inline fn WIFEXITED(x: var) @TypeOf(_WSTATUS(x) == 0) {
    return _WSTATUS(x) == 0;
}
pub const PRIO_PROCESS = 0;
pub const __enum_open = __attribute__(__enum_extensibility__(open));
pub const FPE_FLTUND = 3;
pub const __AES__ = 1;
pub const __FLT_RADIX__ = 2;
pub const __amd64 = 1;

pub inline fn ecs_lookup_path(world: var, parent: var, path: var) @TypeOf(ecs_lookup_path_w_sep(world, parent, path, ".", NULL)) {
    return ecs_lookup_path_w_sep(world, parent, path, ".", NULL);
}


pub inline fn ecs_os_thread_new(callback: var, param: var) @TypeOf(ecs_os_api.thread_new(callback, param)) {
    return ecs_os_api.thread_new(callback, param);
}

pub inline fn ecs_os_alloca(size: var) @TypeOf(alloca(size)) {
    return alloca(size);
}

pub const ECS_NOT = (@import("std").meta.cast(ecs_entity_t, 1 << 58));
pub const ECS_TYPE_FLAG_MASK = (@import("std").meta.cast(ecs_entity_t, ECS_INSTANCEOF | (ECS_CHILDOF | (ECS_AND | (ECS_OR | (ECS_XOR | ECS_NOT))))));
pub const __SSTR = 0x0200;
pub const SIGPROF = 27;
pub const __WATCHOS_4_3 = 40300;
pub const __SEG_GS = 1;
pub const INT_FAST64_MAX = INT64_MAX;
pub const __INT_FAST8_MAX__ = 127;
pub const __MAC_10_14_4 = 101404;
pub inline fn CAST_USER_ADDR_T(a_ptr: var) @TypeOf((@import("std").meta.cast(user_addr_t, (@import("std").meta.cast(uintptr_t, a_ptr))))) {
    return (@import("std").meta.cast(user_addr_t, (@import("std").meta.cast(uintptr_t, a_ptr))));
}
pub const CLD_STOPPED = 5;
pub const OFF_MAX = LLONG_MAX;
pub const _POSIX2_CHARCLASS_NAME_MAX = 14;
pub const WAIT_ANY = -1;
pub const _POSIX_AIO_MAX = 1;
pub const __SSE__ = 1;
pub const EcsPostLoad = ECS_HI_COMPONENT_ID + 15;
pub const EcsDisabledIntern = ECS_HI_COMPONENT_ID + 4;

pub inline fn ecs_new_from_path(world: var, parent: var, path: var) @TypeOf(ecs_new_from_path_w_sep(world, parent, path, ".", NULL)) {
    return ecs_new_from_path_w_sep(world, parent, path, ".", NULL);
}

pub inline fn ecs_bulk_add(world: var, type_1: var, filter: var) @TypeOf(ecs_bulk_add_type(world, ecs_type(type_1), filter)) {
    return ecs_bulk_add_type(world, ecs_type(type_1), filter);
}

pub const EcsFlecsCore = ECS_HI_COMPONENT_ID + 24;
pub const FLECS__EEcsRateFilter = 15;

pub inline fn ecs_remove(world: var, entity: var, type_1: var) @TypeOf(ecs_remove_type(world, entity, ecs_type(type_1))) {
    return ecs_remove_type(world, entity, ecs_type(type_1));
}
pub inline fn ecs_os_realloc(ptr: var, size: var) @TypeOf(ecs_os_api.realloc(ptr, size)) {
    return ecs_os_api.realloc(ptr, size);
}
pub const ECS_OR = (@import("std").meta.cast(ecs_entity_t, 1 << 60));
pub const ECS_UNSUPPORTED = 35;
pub const ECS_UNKNOWN_COMPONENT_ID = 7;
pub const ECS_DESERIALIZE_FORMAT_ERROR = 40;
pub const EcsPreUpdate = ECS_HI_COMPONENT_ID + 16;

pub const __ORDER_BIG_ENDIAN__ = 4321;
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const EcsLastInternalComponentId = ecs_entity(EcsSystem);
pub const __IPHONE_11_3 = 110300;
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = 2;
pub inline fn ecs_os_ainc(value: var) @TypeOf(ecs_os_api.ainc(value)) {
    return ecs_os_api.ainc(value);
}
pub const __MAC_10_13_1 = 101301;
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = 2;
pub const @"true" = !@"false";
pub const __PRAGMA_REDEFINE_EXTNAME = 1;
pub const SIGQUIT = 3;
pub const __WATCHOS_3_2 = 30200;
pub const __IPHONE_6_0 = 60000;
pub inline fn ECS_MAX(a: var, b: var) @TypeOf(if (a > b) a else b) {
    return if (a > b) a else b;
}
pub const ECS_TYPE_CONSTRAINT_VIOLATION = 43;
pub const __RDRND__ = 1;
pub const ECS_3D = 3;
pub inline fn ecs_os_cond_broadcast(cond: var) @TypeOf(ecs_os_api.cond_broadcast(cond)) {
    return ecs_os_api.cond_broadcast(cond);
}
pub inline fn ecs_os_sleep(sec: var, nanosec: var) @TypeOf(ecs_os_api.sleep(sec, nanosec)) {
    return ecs_os_api.sleep(sec, nanosec);
}

pub inline fn ecs_os_cond_signal(cond: var) @TypeOf(ecs_os_api.cond_signal(cond)) {
    return ecs_os_api.cond_signal(cond);
}

pub inline fn ecs_count(world: var, type_1: var) @TypeOf(ecs_count_type(world, ecs_type(type_1))) {
    return ecs_count_type(world, ecs_type(type_1));
}
pub const FLECS__T0 = 0;
pub const EcsFlecs = ECS_HI_COMPONENT_ID + 23;
pub const FLECS__EEcsName = 6;
pub const ECS_CHILDOF = (@import("std").meta.cast(ecs_entity_t, 1 << 62));
pub const ECS_NOT_A_COMPONENT = 11;
pub const EcsModule = ECS_HI_COMPONENT_ID + 0;
pub const EcsOnValidate = ECS_HI_COMPONENT_ID + 18;
pub const RLIMIT_CPU = 0;
pub inline fn ecs_has(world: var, entity: var, type_1: var) @TypeOf(ecs_has_type(world, entity, ecs_type(type_1))) {
    return ecs_has_type(world, entity, ecs_type(type_1));
}

pub const ECS_COLUMN_IS_SHARED = 21;
pub const ECS_MODULE_UNDEFINED = 18;
pub inline fn ecs_get_fullpath(world: var, child: var) @TypeOf(ecs_get_path_w_sep(world, 0, child, 0, ".", NULL)) {
    return ecs_get_path_w_sep(world, 0, child, 0, ".", NULL);
}