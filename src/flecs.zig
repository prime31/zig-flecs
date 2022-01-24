pub usingnamespace @import("c.zig");
pub usingnamespace @import("wrapper.zig");
const std = @import("std");

const Self = @This();

// flecs update:
// - bump submodules
// - regenerate cimport.zig using the "generator" build target
// - clean out cruft
// - update `ecs_iter_t` to be pointer to single item (find [*c]ecs_iter_t and replace with *ecs_iter_t)
// - copy ecs_iter_t fields into this file and delete them from the cimport.zig (so we can add methods to ecs_iter_t)
// - ensure the first line declaring ecs_iter_t remains in c.zig since we moved it to this file

pub const Entity = Self.ecs_entity_t;
pub const Query = Self.ecs_query_t;

/// registered component handle cache
fn componentHandle(comptime T: type) *Entity {
    _ = T;
    return &(struct {
        pub var handle: Entity = std.math.maxInt(u64);
    }.handle);
}

pub const World = struct {
    world: *Self.ecs_world_t,

    pub fn init() World {
        return .{ .world = Self.ecs_init().? };
    }

    pub fn deinit(self: *World) void {
        _ = Self.ecs_fini(self.world);
    }

    pub fn setTargetFps(self: World, fps: f32) void {
        Self.ecs_set_target_fps(self.world, fps);
    }

    pub fn progress(self: World, delta_time: f32) void {
        _ = Self.ecs_progress(self.world, delta_time);
    }

    pub fn newComponent(self: World, comptime T: type) Entity {
        var handle = componentHandle(T);
        if (handle.* < std.math.maxInt(Entity)) {
            return handle.*;
        }

        handle.* = Self.ogNewComponent(self, T);
        return handle.*;
    }

    pub fn newType(self: World, entity: Entity, expr: [*c]const u8) Entity {
        //return Self.ecs_new_type(self.world, 0, id, components);
        return Self.ogNewType(self, entity, expr);

    }
    pub fn newQuery(self: World, signature: [*c]const u8) ?*Self.ecs_query_t {
        return Self.ecs_query_new(self.world, signature);
    }

    pub fn sortQuery(self: *World, query: ?*Self.ecs_query_t, comptime T: type, comparer: Self.ecs_compare_action_t) void {
        return Self.ecs_query_order_by(self.world, query, newComponent(self, T), comparer);
    }

    pub fn new(self: World) Entity {
        return Self.ecs_new_w_type(self.world, 0);
    }

    pub fn getType(self: World, comptime T: type) Self.ecs_type_t {
        return getTypeFromStr(self, @typeName(T));
    }

    pub fn getTypeFromStr(self: World, expr: [*c]const u8) Self.ecs_type_t {
        return Self.ecs_type_from_str(self.world, expr);
    }

    /// this operation will preallocate memory in the world for the specified number of entities
    pub fn dim(self: World, entity_count: i32) void {
        Self.ecs_dim(self.world, entity_count);
    }

    /// this operation will preallocate memory for a type (table) for the specified number of entities
    pub fn dimType(self: World, ecs_type: Self.ecs_type_t, entity_count: i32) void {
        Self.ecs_dim_type(self.world, ecs_type, entity_count);
    }

    pub fn newSystem(self: World, name: [*c]const u8, phase: Self.ecs_entity_t, terms: [*c]const u8, action: Self.ecs_iter_action_t) Entity {
        return Self.ogNewSystem(self, name, phase, terms, action);
    }

    pub fn setName(self: World, entity: Entity, name: [*c]const u8) void {
        _ = Self.ecs_set_name(self.world, entity, name);
    }

    pub fn getName(self: World, entity: Entity) [*c]const u8 {
        return Self.ecs_get_name(self.world, entity);
    }

    pub fn setPtr(self: World, entity: Entity, component: Entity, size: usize, ptr: ?*const anyopaque) void {
        _ = Self.ecs_set_ptr_w_entity(self.world, entity, component, size, ptr);
    }

    pub fn set(self: *World, entity: Entity, ptr: anytype) void {
        std.debug.assert(@typeInfo(@TypeOf(ptr)) == .Pointer);

        const child = std.meta.Child(@TypeOf(ptr));
        _ = Self.ecs_set_ptr_w_entity(self.world, entity, self.newComponent(child), @sizeOf(child), ptr);
    }

    pub fn setSingleton(self: *World, ptr: anytype) void {
        std.debug.assert(@typeInfo(@TypeOf(ptr)) == .Pointer);

        const child = std.meta.Child(@TypeOf(ptr));
        const n = self.newComponent(child);
        _ = Self.ecs_set_ptr_w_entity(self.world, Self.ecs_get_typeid(self.world, n), n, @sizeOf(child), ptr);
    }

    pub fn removeSingleton(self: *World, comptime T: type) void {
        _ = Self.ecs_remove_type(self.world, self.newComponent(T), getType(self.*, T));
    }

    //TODO: this only works if its not the first component on an entity?
    pub fn add(self: World, entity: Entity, comptime T: type) void {
        _ = Self.ecs_add_type(self.world, entity, getType(self, T));
    }

    pub fn remove(self: World, entity: Entity, comptime T: type) void {
        _ = Self.ecs_remove_type(self.world, entity, getType(self, T));
    }

    pub fn get(self: *World, entity: Entity, comptime T: type) ?*const T {
        const ptr = Self.ecs_get_w_entity(self.world, entity, self.newComponent(T));

        if (ptr) |_| {
            return @ptrCast(*const T, @alignCast(@alignOf(T), ptr));
        } else {
            return null;
        }
    }

    pub fn hasFlag(self: *World, entity: Entity, comptime T: type) bool {
        return Self.ecs_has_type(self.world, entity, getType(self.*, T));
    }

    pub fn getMut(self: *World, entity: Entity, comptime T: type) ?*T {
        var is_added: bool = true;
        const ptr = Self.ecs_get_mut_w_entity(self.world, entity, self.newComponent(T), &is_added);

        if (ptr) |_| {
            return @ptrCast(*T, @alignCast(@alignOf(T), ptr));
        } else {
            return null;
        }
    }

    pub fn getSingleton(self: *World, comptime T: type) ?*const T {
        const ptr = self.get(Self.ecs_get_typeid(self.world, self.newComponent(T)), T);

        if (ptr) |p| {
            return @ptrCast(*const T, @alignCast(@alignOf(T), p));
        } else {
            return null;
        }
    }

    pub fn getSingletonMut(self: *World, comptime T: type) ?*T {
        var is_added: bool = false;
        const ptr = Self.ecs_get_mut_w_entity(self.world, Self.ecs_get_typeid(self.world, self.newComponent(T)), self.newComponent(T), &is_added);

        if (ptr) |_| {
            return @ptrCast(*T, @alignCast(@alignOf(T), ptr));
        } else {
            return null;
        }
    }
};

pub const ecs_iter_t = extern struct {
    world: ?*Self.ecs_world_t,
    real_world: ?*Self.ecs_world_t,
    system: Self.ecs_entity_t,
    event: Self.ecs_entity_t,
    event_id: Self.ecs_id_t,
    self: Self.ecs_entity_t,
    table: ?*Self.ecs_table_t,
    data: ?*Self.ecs_data_t,
    ids: [*c]Self.ecs_id_t,
    types: [*c]Self.ecs_type_t,
    columns: [*c]i32,
    subjects: [*c]Self.ecs_entity_t,
    sizes: [*c]Self.ecs_size_t,
    ptrs: [*c]?*anyopaque,
    references: [*c]Self.ecs_ref_t,
    query: ?*Self.ecs_query_t,
    table_count: i32,
    inactive_table_count: i32,
    column_count: i32,
    term_index: i32,
    table_columns: ?*anyopaque,
    entities: [*c]Self.ecs_entity_t,
    param: ?*anyopaque,
    ctx: ?*anyopaque,
    binding_ctx: ?*anyopaque,
    delta_time: f32,
    delta_system_time: f32,
    world_time: f32,
    frame_offset: i32,
    offset: i32,
    count: i32,
    total_count: i32,
    is_valid: bool,
    triggered_by: [*c]Self.ecs_ids_t,
    interrupted_by: Self.ecs_entity_t,
    iter: Self.union_unnamed_3,
    cache: Self.ecs_iter_cache_t,

    pub fn term(self: *Self.ecs_iter_t, comptime T: type, index: i32) [*]T {
        var col = Self.ecs_term_w_size(self, @sizeOf(T), index);
        return @ptrCast([*]T, @alignCast(@alignOf(T), col));
    }
};
