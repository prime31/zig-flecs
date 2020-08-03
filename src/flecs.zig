const std = @import("std");

pub const Entity = ecs_entity_t;

/// registered component handle cache
fn componentHandle(comptime T: type) *Entity {
    return &(struct {
        pub var handle: Entity = std.math.maxInt(u64);
    }.handle);
}

pub const ecs_world_t = @Type(.Opaque);

pub const World = struct {
    world: *ecs_world_t,

    pub fn init() World {
        return .{ .world = ecs_init() };
    }

    pub fn deinit(self: *World) void {
        _ = ecs_fini(self.world);
    }

    pub fn setTargetFps(self: World, fps: f32) void {
        ecs_set_target_fps(self.world, fps);
    }

    pub fn progress(self: World, delta_time: f32) void {
        _ = ecs_progress(self.world, delta_time);
    }

    pub fn newComponent(self: *World, comptime T: type) Entity {
        var handle = componentHandle(T);
        if (handle.* < std.math.maxInt(Entity)) {
            return handle.*;
        }

        handle.* = ecs_new_component(self.world, 0, @typeName(T), @sizeOf(T), @alignOf(T));
        return handle.*;
    }

    pub fn newType(self: World, id: [*c]const u8, components: [*c]const u8) Entity {
        return ecs_new_type(self.world, 0, id, components);
    }

    pub fn typeFromStr(self: World, expr: [*c]const u8) ecs_type_t {
        return ecs_type_from_str(self.world, expr);
    }

    /// This operation will preallocate memory in the world for the specified number of entities
    pub fn dim(self: World, entity_count: i32) void {
        ecs_dim(self.world, entity_count);
    }

    /// his operation will preallocate memory for a type (table) for the specified number of entities
    pub fn dimType(self: World, ecs_type: ecs_type_t, entity_count: i32) void {
        ecs_dim_type(self.world, ecs_type, entity_count);
    }

    pub fn newSystem(self: World, name: [*c]const u8, phase: Phase, signature: [*c]const u8, action: ecs_iter_action_t) void {
        _ = ecs_new_system(self.world, 0, name, @enumToInt(phase), signature, action);
    }

    pub fn setName(self: World, entity: Entity, name: [*c]const u8) void {
        var ecs_name = EcsName{ .value = name, .symbol = null, .alloc_value = null };
        self.setPtr(entity, FLECS__EEcsName, @sizeOf(EcsName), &ecs_name);
    }

    pub fn getName(self: World, entity: Entity) [*c]const u8 {
        return ecs_get_name(self.world, entity);
    }

    pub fn setPtr(self: World, entity: Entity, component: Entity, size: usize, ptr: ?*const c_void) void {
        _ = ecs_set_ptr_w_entity(self.world, entity, component, size, ptr);
    }

    pub fn set(self: *World, entity: Entity, ptr: anytype) void {
        std.debug.assert(@typeInfo(@TypeOf(ptr)) == .Pointer);

        const child = std.meta.Child(@TypeOf(ptr));
        _ = ecs_set_ptr_w_entity(self.world, entity, self.newComponent(child), @sizeOf(child), ptr);
    }
};

pub const ECS_HI_COMPONENT_ID = 256;

// Built-in tag ids
pub const EcsModule = ECS_HI_COMPONENT_ID + 0;
pub const EcsPrefab = ECS_HI_COMPONENT_ID + 1;
pub const EcsHidden = ECS_HI_COMPONENT_ID + 2;
pub const EcsDisabled = ECS_HI_COMPONENT_ID + 3;
pub const EcsDisabledIntern = ECS_HI_COMPONENT_ID + 4;
pub const EcsInactive = ECS_HI_COMPONENT_ID + 5;
pub const EcsOnDemand = ECS_HI_COMPONENT_ID + 6;
pub const EcsMonitor = ECS_HI_COMPONENT_ID + 7;
pub const EcsPipeline = ECS_HI_COMPONENT_ID + 8;

// Trigger tags
pub const EcsOnAdd = ECS_HI_COMPONENT_ID + 9;
pub const EcsOnRemove = ECS_HI_COMPONENT_ID + 10;

// Set system tags
pub const EcsOnSet = ECS_HI_COMPONENT_ID + 11;
pub const EcsUnSet = ECS_HI_COMPONENT_ID + 12;

// Builtin pipeline tags
pub const Phase = enum(ecs_entity_t) {
    pre_frame = ECS_HI_COMPONENT_ID + 13,
    on_load = ECS_HI_COMPONENT_ID + 14,
    post_load = ECS_HI_COMPONENT_ID + 15,
    pre_update = ECS_HI_COMPONENT_ID + 16,
    on_update = ECS_HI_COMPONENT_ID + 17,
    on_validate = ECS_HI_COMPONENT_ID + 18,
    post_update = ECS_HI_COMPONENT_ID + 19,
    pre_store = ECS_HI_COMPONENT_ID + 20,
    on_store = ECS_HI_COMPONENT_ID + 21,
    post_frame = ECS_HI_COMPONENT_ID + 22,
};

pub const EcsPreFrame = ECS_HI_COMPONENT_ID + 13;
pub const EcsOnLoad = ECS_HI_COMPONENT_ID + 14;
pub const EcsPostLoad = ECS_HI_COMPONENT_ID + 15;
pub const EcsPreUpdate = ECS_HI_COMPONENT_ID + 16;
pub const EcsOnUpdate = ECS_HI_COMPONENT_ID + 17;
pub const EcsOnValidate = ECS_HI_COMPONENT_ID + 18;
pub const EcsPostUpdate = ECS_HI_COMPONENT_ID + 19;
pub const EcsPreStore = ECS_HI_COMPONENT_ID + 20;
pub const EcsOnStore = ECS_HI_COMPONENT_ID + 21;
pub const EcsPostFrame = ECS_HI_COMPONENT_ID + 22;

// Builtin entity ids
pub const EcsFlecs = ECS_HI_COMPONENT_ID + 23;
pub const EcsFlecsCore = ECS_HI_COMPONENT_ID + 24;
pub const EcsWorld = ECS_HI_COMPONENT_ID + 25;
pub const EcsSingleton = (@import("std").meta.cast(ecs_entity_t, ECS_ENTITY_MASK)) - 1;

pub const EcsFirstUserEntityId = ECS_HI_COMPONENT_ID + 32;

pub const ecs_iter_t = extern struct {
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
    iter: extern union {
        parent: ecs_scope_iter_t,
        filter: ecs_filter_iter_t,
        query: ecs_query_iter_t,
        snapshot: ecs_snapshot_iter_t,
    },

    pub fn column(self: *ecs_iter_t, comptime T: type, index: i32) [*]T {
        var col = ecs_column_w_size(self, @sizeOf(T), index);
        return @ptrCast([*]T, @alignCast(@alignOf(T), col));
    }
};

pub extern fn ecs_init() *ecs_world_t;
pub extern fn ecs_mini() *ecs_world_t;
pub extern fn ecs_init_w_args(argc: c_int, argv: [*c][*c]u8) *ecs_world_t;
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
pub const struct_ecs_snapshot_t = @Type(.Opaque);
pub const ecs_snapshot_t = struct_ecs_snapshot_t;

/// Query needs matching with tables
pub const EcsQueryNeedsTables = 1;
/// Query needs to be registered as a monitor
pub const EcsQueryMonitor = 2;
/// Query needs to be registered as on_set system
pub const EcsQueryOnSet = 4;
/// Query needs to be registered as un_set system
pub const EcsQueryUnSet = 8;
/// Does query match disabled
pub const EcsQueryMatchDisabled = 16;
/// Does query match prefabs
pub const EcsQueryMatchPrefab = 32;
/// Does query have references
pub const EcsQueryHasRefs = 64;

pub const struct_ecs_query_t = @Type(.Opaque);
pub const ecs_query_t = struct_ecs_query_t;

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

pub const EcsName = extern struct {
    value: [*c]const u8,
    symbol: [*c]const u8,
    alloc_value: [*c]u8,
};

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

pub inline fn ecs_os_get_time(time_out: anytype) @TypeOf(ecs_os_api.get_time(time_out)) {
    return ecs_os_api.get_time(time_out);
}

pub const ECS_INVALID_HANDLE = 1;
pub inline fn ecs_lookup_fullpath(world: anytype, path: anytype) @TypeOf(ecs_lookup_path_w_sep(world, 0, path, ".", NULL)) {
    return ecs_lookup_path_w_sep(world, 0, path, ".", NULL);
}

pub const FLECS__EEcsSignature = 9;
pub inline fn ecs_modified(world: anytype, entity: anytype, component: anytype) @TypeOf(ecs_modified_w_entity(world, entity, ecs_entity(component))) {
    return ecs_modified_w_entity(world, entity, ecs_entity(component));
}

pub inline fn __API_UNAVAILABLE5(x: anytype, y: anytype, z: anytype, t: anytype, b: anytype) @TypeOf(__API_UNAVAILABLE4(x, y, z, t) ++ __API_U(b)) {
    return __API_UNAVAILABLE4(x, y, z, t) ++ __API_U(b);
}

pub const ECS_INVALID_FROM_WORKER = 26;
pub const ECS_COLUMN_IS_NOT_SHARED = 20;
pub const ECS_INVALID_COMPONENT_ALIGNMENT = 16;
pub inline fn ecs_os_dlclose(lib: anytype) @TypeOf(ecs_os_api.dlclose(lib)) {
    return ecs_os_api.dlclose(lib);
}

pub inline fn ECS_ENTITY_VAR(type_1: anytype) @TypeOf(ecs_entity_t ++ ecs_entity(type_1)) {
    return ecs_entity_t ++ ecs_entity(type_1);
}
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);

pub const __INT_LEAST32_FMTi__ = "i";
pub const FLECS__EEcsComponentLifecycle = 2;
pub const __WCHAR_WIDTH__ = 32;
pub const __UINT16_FMTX__ = "hX";
pub inline fn __sfeof(p: anytype) @TypeOf(((p.*._flags) & __SEOF) != 0) {
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
pub inline fn ecs_vector_memory(vector: anytype, T: anytype, allocd: anytype, used: anytype) @TypeOf(_ecs_vector_memory(vector, ECS_VECTOR_T(T), allocd, used)) {}

pub const __FSGSBASE__ = 1;
pub const __DYNAMIC__ = 1;
pub inline fn __API_DEPRECATED_BEGIN_REP6(rep: anytype, a: anytype, b: anytype, c: anytype, d: anytype, e: anytype) @TypeOf(__API_R_BEGIN(rep, a) ++ (__API_R_BEGIN(rep, b) ++ (__API_R_BEGIN(rep, c) ++ (__API_R_BEGIN(rep, d) ++ __API_R_BEGIN(rep, e))))) {
    return __API_R_BEGIN(rep, a) ++ (__API_R_BEGIN(rep, b) ++ (__API_R_BEGIN(rep, c) ++ (__API_R_BEGIN(rep, d) ++ __API_R_BEGIN(rep, e))));
}
pub const __INTPTR_MAX__ = @as(c_long, 9223372036854775807);
pub inline fn __API_AVAILABLE5(x: anytype, y: anytype, z: anytype, t: anytype, b: anytype) @TypeOf(__API_A(x) ++ (__API_A(y) ++ (__API_A(z) ++ (__API_A(t) ++ __API_A(b))))) {
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
pub inline fn ECS_EXPORT_ENTITY(type_1: anytype) @TypeOf(ECS_SET_ENTITY(type_1)) {
    return ECS_SET_ENTITY(type_1);
}
pub const _POSIX2_RE_DUP_MAX = 255;
pub const RLIMIT_FOOTPRINT_INTERVAL = 0x4;
pub const __LDBL_DECIMAL_DIG__ = 21;

pub const __WCHAR_TYPE__ = c_int;
pub const ECS_MORE_THAN_ONE_PREFAB = 13;
pub const _STRUCT_MCONTEXT = _STRUCT_MCONTEXT64;
pub const ECS_INVALID_REACTIVE_SIGNATURE = 41;
pub const INT_LEAST64_MIN = INT64_MIN;
pub const RLIMIT_MEMLOCK = 6;
pub const __UINTMAX_FMTu__ = "lu";
pub const L_tmpnam = 1024;

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

pub inline fn ecs_os_dlproc(lib: anytype, procname: anytype) @TypeOf(ecs_os_api.dlproc(lib, procname)) {
    return ecs_os_api.dlproc(lib, procname);
}
pub const PRIO_USER = 2;
pub inline fn __P(protos: anytype) @TypeOf(protos) {
    return protos;
}
pub inline fn __RCSID(s: anytype) @TypeOf(__IDSTRING(rcsid, s)) {
    return __IDSTRING(rcsid, s);
}
pub inline fn __API_DEPRECATED_MSG4(msg: anytype, x: anytype, y: anytype, z: anytype) @TypeOf(__API_DEPRECATED_MSG3(msg, x, y) ++ __API_D(msg, z)) {
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
pub inline fn INT32_C(v: anytype) @TypeOf(v) {
    return v;
}
pub const __STDC_UTF_32__ = 1;
pub const FLECS__EEcsIterAction = 11;
pub const ECS_NO_OUT_COLUMNS = 36;
pub const __MAC_10_4 = 1040;
pub const SA_USERSPACE_MASK = SA_ONSTACK | (SA_RESTART | (SA_RESETHAND | (SA_NOCLDSTOP | (SA_NODEFER | (SA_NOCLDWAIT | SA_SIGINFO)))));
pub const __WATCHOS_6_2 = 60200;
pub const UINT32_MAX = @as(c_uint, 4294967295);
pub const __GNUC_STDC_INLINE__ = 1;
pub const __DBL_DIG__ = 15;

pub inline fn __API_DEPRECATED_MSG6(msg: anytype, x: anytype, y: anytype, z: anytype, t: anytype, b: anytype) @TypeOf(__API_DEPRECATED_MSG5(msg, x, y, z, t) ++ __API_D(msg, b)) {
    return __API_DEPRECATED_MSG5(msg, x, y, z, t) ++ __API_D(msg, b);
}
pub inline fn va_copy(dest: anytype, src: anytype) @TypeOf(__builtin_va_copy(dest, src)) {
    return __builtin_va_copy(dest, src);
}
pub inline fn ecs_vector_set_size_t(vector: anytype, size: anytype, alignment: anytype, elem_count: anytype) @TypeOf(_ecs_vector_set_size(vector, ECS_VECTOR_U(size, alignment), elem_count)) {}
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
pub inline fn __API_AVAILABLE3(x: anytype, y: anytype, z: anytype) @TypeOf(__API_A(x) ++ (__API_A(y) ++ __API_A(z))) {
    return __API_A(x) ++ (__API_A(y) ++ __API_A(z));
}
pub inline fn ecs_vector_remove_index(vector: anytype, T: anytype, index_1: anytype) @TypeOf(_ecs_vector_remove_index(vector, ECS_VECTOR_T(T), index_1)) {}
pub const __INT32_TYPE__ = c_int;
pub const __DBL_MIN_EXP__ = -1021;
pub inline fn __API_DEPRECATED_BEGIN_MSG2(msg: anytype, a: anytype) @TypeOf(__API_D_BEGIN(msg, a)) {
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
pub inline fn ecs_vector_set_count_t(vector: anytype, size: anytype, alignment: anytype, elem_count: anytype) @TypeOf(_ecs_vector_set_count(vector, ECS_VECTOR_U(size, alignment), elem_count)) {}
pub const __enum_closed = __attribute__(__enum_extensibility__(closed));
pub inline fn WEXITSTATUS(x: anytype) @TypeOf((_W_INT(x) >> 8) & 0x000000ff) {
    return (_W_INT(x) >> 8) & 0x000000ff;
}
pub const __UINT_LEAST32_FMTX__ = "X";
pub const ECS_OUT_OF_MEMORY = 17;
pub const __SSE_MATH__ = 1;
pub const SIGEV_SIGNAL = 1;
pub inline fn ecs_os_mutex_lock(mutex: anytype) @TypeOf(ecs_os_api.mutex_lock(mutex)) {
    return ecs_os_api.mutex_lock(mutex);
}
pub const _POSIX_SEM_VALUE_MAX = 32767;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub inline fn _WSTATUS(x: anytype) @TypeOf(_W_INT(x) & 0o0177) {
    return _W_INT(x) & 0o0177;
}
pub const SIGCHLD = 20;
pub const UQUAD_MAX = ULLONG_MAX;
pub const __IPHONE_3_0 = 30000;
pub const WORD_BIT = 32;
pub inline fn __API_AVAILABLE_BEGIN6(a: anytype, b: anytype, c: anytype, d: anytype, e: anytype, f: anytype) @TypeOf(__API_A_BEGIN(a) ++ (__API_A_BEGIN(b) ++ (__API_A_BEGIN(c) ++ (__API_A_BEGIN(d) ++ (__API_A_BEGIN(e) ++ __API_A_BEGIN(f)))))) {
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
pub inline fn W_EXITCODE(ret: anytype, sig: anytype) @TypeOf(ret << (8 | sig)) {
    return ret << (8 | sig);
}
pub inline fn __AVAILABILITY_INTERNAL_DEPRECATED_MSG(_msg: anytype) @TypeOf(__attribute__(deprecated(_msg))) {
    return __attribute__(deprecated(_msg));
}
pub const __UINTPTR_FMTo__ = "lo";
pub const __IPHONE_11_4 = 110400;
pub const _POSIX_SSIZE_MAX = 32767;
pub const __INT32_MAX__ = 2147483647;
pub const __INTPTR_FMTd__ = "ld";
pub inline fn va_arg(ap: anytype, type_1: anytype) @TypeOf(__builtin_va_arg(ap, type_1)) {
    return __builtin_va_arg(ap, type_1);
}
pub const SIGUSR2 = 31;
pub const _POSIX_SYMLINK_MAX = 255;

pub const __MOVBE__ = 1;
pub const EXPR_NEST_MAX = 32;
pub inline fn __API_DEPRECATED_BEGIN_MSG7(msg: anytype, a: anytype, b: anytype, c: anytype, d: anytype, e: anytype, f: anytype) @TypeOf(__API_D_BEGIN(msg, a) ++ (__API_D_BEGIN(msg, b) ++ (__API_D_BEGIN(msg, c) ++ (__API_D_BEGIN(msg, d) ++ (__API_D_BEGIN(msg, e) ++ __API_D_BEGIN(msg, f)))))) {
    return __API_D_BEGIN(msg, a) ++ (__API_D_BEGIN(msg, b) ++ (__API_D_BEGIN(msg, c) ++ (__API_D_BEGIN(msg, d) ++ (__API_D_BEGIN(msg, e) ++ __API_D_BEGIN(msg, f)))));
}
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const __BLOCKS__ = 1;
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINTPTR_MAX__ = @as(c_ulong, 18446744073709551615);
pub const __MAC_10_9 = 1090;
pub const __PTRDIFF_FMTd__ = "ld";
pub const PRIO_PGRP = 1;
pub const IOV_MAX = 1024;
pub const SA_RESETHAND = 0x0004;
pub const SEGV_NOOP = 0;
pub const ILL_PRVOPC = 3;
pub inline fn UINT8_C(v: anytype) @TypeOf(v) {
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

pub inline fn sigmask(m: anytype) @TypeOf(1 << (m - 1)) {
    return 1 << (m - 1);
}

pub const __PTHREAD_CONDATTR_SIZE__ = 8;
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub inline fn ecs_owns_entity(world: anytype, entity: anytype, has: anytype, owned: anytype) @TypeOf(ecs_type_owns_entity(world, ecs_get_type(world, entity), has, owned)) {
    return ecs_type_owns_entity(world, ecs_get_type(world, entity), has, owned);
}

pub const ECS_INVALID_TYPE_EXPRESSION = 5;

pub inline fn ECS_EXPORT_COMPONENT(type_1: anytype) @TypeOf(ECS_SET_COMPONENT(type_1)) {
    return ECS_SET_COMPONENT(type_1);
}

pub inline fn ecs_os_module_to_dl(lib: anytype) @TypeOf(ecs_os_api.module_to_dl(lib)) {
    return ecs_os_api.module_to_dl(lib);
}

pub inline fn ecs_os_strdup(str: anytype) @TypeOf(ecs_os_api.strdup(str)) {
    return ecs_os_api.strdup(str);
}

pub const ECS_THREAD_ERROR = 31;
pub inline fn ecs_os_mutex_unlock(mutex: anytype) @TypeOf(ecs_os_api.mutex_unlock(mutex)) {
    return ecs_os_api.mutex_unlock(mutex);
}
pub const FLECS__EEcsTimer = 14;
pub const ECS_COLUMN_ACCESS_VIOLATION = 37;
pub inline fn ecs_os_mutex_free(mutex: anytype) @TypeOf(ecs_os_api.mutex_free(mutex)) {
    return ecs_os_api.mutex_free(mutex);
}
pub const ECS_REFLECTION = 1;
pub inline fn ecs_os_cond_wait(cond: anytype, mutex: anytype) @TypeOf(ecs_os_api.cond_wait(cond, mutex)) {
    return ecs_os_api.cond_wait(cond, mutex);
}

pub const ECS_STRBUF_ELEMENT_SIZE = 511;
pub const ECS_INVALID_PARAMETER = 2;
pub const ECS_INVALID_COMPONENT_ID = 3;

pub const ECS_UNRESOLVED_REFERENCE = 30;
pub const ECS_INVALID_WHILE_ITERATING = 25;
pub inline fn ecs_get_path(world: anytype, parent: anytype, child: anytype) @TypeOf(ecs_get_path_w_sep(world, parent, child, 0, ".", NULL)) {
    return ecs_get_path_w_sep(world, parent, child, 0, ".", NULL);
}
pub const ECS_INVALID_EXPRESSION = 4;
pub const ECS_ALREADY_DEFINED = 14;
pub const ECS_INVALID_COMPONENT_SIZE = 15;
pub const ECS_INVALID_WHILE_MERGING = 24;
pub const FLECS__EEcsSignatureExpr = 8;
pub const ECS_INVALID_SIGNATURE = 6;
pub const FLECS__TNULL = 0;
pub const FLECS__EEcsComponent = 1;
pub const FLECS__EEcsPipelineQuery = 13;
pub const ECS_COLUMN_INDEX_OUT_OF_RANGE = 19;
pub inline fn ECS_OFFSET(o: anytype, offset: anytype) @TypeOf((@import("std").meta.cast(?*c_void, (@import("std").meta.cast(uintptr_t, o)) + (@import("std").meta.cast(uintptr_t, offset))))) {
    return (@import("std").meta.cast(?*c_void, (@import("std").meta.cast(uintptr_t, o)) + (@import("std").meta.cast(uintptr_t, offset))));
}
pub const ECS_XOR = (@import("std").meta.cast(ecs_entity_t, 1 << 59));
pub const ECS_UNKNOWN_TYPE_ID = 8;

pub const ECS_COLUMN_TYPE_MISMATCH = 23;

pub inline fn __CAST_AWAY_QUALIFIER(variable: anytype, qualifier: anytype, type_1: anytype) @TypeOf((@import("std").meta.cast(type_1, c_long))(variable)) {
    return (@import("std").meta.cast(type_1, c_long))(variable);
}
pub inline fn ecs_new_from_fullpath(world: anytype, path: anytype) @TypeOf(ecs_new_from_path_w_sep(world, 0, path, ".", NULL)) {
    return ecs_new_from_path_w_sep(world, 0, path, ".", NULL);
}

pub const ECS_DESERIALIZE_COMPONENT_ID_CONFLICT = 38;

pub const ECS_OUT_OF_RANGE = 28;
pub const ECS_MISSING_OS_API = 32;
pub const ECS_COLUMN_HAS_NO_DATA = 22;
pub const FLECS__EEcsQuery = 10;

pub const EcsFirstUserComponentId = 32;

pub inline fn ecs_get_parent(world: anytype, entity: anytype, component: anytype) @TypeOf(ecs_get_parent_w_entity(world, entity, ecs_entity(component))) {
    return ecs_get_parent_w_entity(world, entity, ecs_entity(component));
}

pub const ECS_TYPE_NOT_AN_ENTITY = 9;
pub const FLECS__EEcsTrigger = 4;
pub const ECS_INVALID_PREFAB_CHILD_TYPE = 34;
pub inline fn ecs_os_thread_join(thread: anytype) @TypeOf(ecs_os_api.thread_join(thread)) {
    return ecs_os_api.thread_join(thread);
}

pub inline fn ecs_get_mut(world: anytype, entity: anytype, component: anytype, is_added: anytype) @TypeOf((@import("std").meta.cast([*c]component, ecs_get_mut_w_entity(world, entity, ecs_entity(component), is_added)))) {
    return (@import("std").meta.cast([*c]component, ecs_get_mut_w_entity(world, entity, ecs_entity(component), is_added)));
}

pub const ECS_UNRESOLVED_IDENTIFIER = 27;

pub inline fn ecs_os_adec(value: anytype) @TypeOf(ecs_os_api.adec(value)) {
    return ecs_os_api.adec(value);
}

pub inline fn ecs_os_cond_free(cond: anytype) @TypeOf(ecs_os_api.cond_free(cond)) {
    return ecs_os_api.cond_free(cond);
}

pub inline fn ecs_os_calloc(size: anytype) @TypeOf(ecs_os_api.calloc(size)) {
    return ecs_os_api.calloc(size);
}

pub const FLECS__EEcsTickSource = 7;

pub const ECS_INSTANCEOF = (@import("std").meta.cast(ecs_entity_t, 1 << 63));

pub inline fn ecs_lookup_path(world: anytype, parent: anytype, path: anytype) @TypeOf(ecs_lookup_path_w_sep(world, parent, path, ".", NULL)) {
    return ecs_lookup_path_w_sep(world, parent, path, ".", NULL);
}

pub inline fn ecs_os_thread_new(callback: anytype, param: anytype) @TypeOf(ecs_os_api.thread_new(callback, param)) {
    return ecs_os_api.thread_new(callback, param);
}

pub inline fn ecs_os_alloca(size: anytype) @TypeOf(alloca(size)) {
    return alloca(size);
}

pub const ECS_NOT = (@import("std").meta.cast(ecs_entity_t, 1 << 58));
pub const ECS_TYPE_FLAG_MASK = (@import("std").meta.cast(ecs_entity_t, ECS_INSTANCEOF | (ECS_CHILDOF | (ECS_AND | (ECS_OR | (ECS_XOR | ECS_NOT))))));

pub inline fn ecs_new_from_path(world: anytype, parent: anytype, path: anytype) @TypeOf(ecs_new_from_path_w_sep(world, parent, path, ".", NULL)) {
    return ecs_new_from_path_w_sep(world, parent, path, ".", NULL);
}

pub const FLECS__EEcsRateFilter = 15;

pub inline fn ecs_os_realloc(ptr: anytype, size: anytype) @TypeOf(ecs_os_api.realloc(ptr, size)) {
    return ecs_os_api.realloc(ptr, size);
}
pub const ECS_OR = (@import("std").meta.cast(ecs_entity_t, 1 << 60));
pub const ECS_UNSUPPORTED = 35;
pub const ECS_UNKNOWN_COMPONENT_ID = 7;
pub const ECS_DESERIALIZE_FORMAT_ERROR = 40;
pub const EcsLastInternalComponentId = ecs_entity(EcsSystem);
pub inline fn ecs_os_ainc(value: anytype) @TypeOf(ecs_os_api.ainc(value)) {
    return ecs_os_api.ainc(value);
}
pub inline fn ECS_MAX(a: anytype, b: anytype) @TypeOf(if (a > b) a else b) {
    return if (a > b) a else b;
}
pub const ECS_TYPE_CONSTRAINT_VIOLATION = 43;
pub const ECS_3D = 3;
pub inline fn ecs_os_cond_broadcast(cond: anytype) @TypeOf(ecs_os_api.cond_broadcast(cond)) {
    return ecs_os_api.cond_broadcast(cond);
}
pub inline fn ecs_os_sleep(sec: anytype, nanosec: anytype) @TypeOf(ecs_os_api.sleep(sec, nanosec)) {
    return ecs_os_api.sleep(sec, nanosec);
}

pub inline fn ecs_os_cond_signal(cond: anytype) @TypeOf(ecs_os_api.cond_signal(cond)) {
    return ecs_os_api.cond_signal(cond);
}

pub const FLECS__T0 = 0;

pub const FLECS__EEcsName = 6;
pub const ECS_CHILDOF = (@import("std").meta.cast(ecs_entity_t, 1 << 62));
pub const ECS_NOT_A_COMPONENT = 11;
pub const ECS_COLUMN_IS_SHARED = 21;
pub const ECS_MODULE_UNDEFINED = 18;

pub inline fn ecs_get_fullpath(world: anytype, child: anytype) @TypeOf(ecs_get_path_w_sep(world, 0, child, 0, ".", NULL)) {
    return ecs_get_path_w_sep(world, 0, child, 0, ".", NULL);
}
