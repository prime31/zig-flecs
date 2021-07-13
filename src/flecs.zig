pub usingnamespace @import("c.zig");
const std = @import("std");

// flecs update:
// - bump submodules
// - regenerate cimport.zig using the "generator" build target
// - clean out cruft
// - update `ecs_iter_t` to be pointer to single item (find [*c]ecs_iter_t and replace with *ecs_iter_t)
// - copy ecs_iter_t fields into this file and delete them from the cimport.zig (so we can add methods to ecs_iter_t)
// - ensure the first line declaring ecs_iter_t remains in c.zig since we moved it to this file

pub const Entity = ecs_entity_t;
pub const Query = ecs_query_t;

/// registered component handle cache
fn componentHandle(comptime T: type) *Entity {
    return &(struct {
        pub var handle: Entity = std.math.maxInt(u64);
    }.handle);
}

pub const World = struct {
    world: *ecs_world_t,

    pub fn init() World {
        return .{ .world = ecs_init().? };
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
    pub fn newQuery(self: World, signature: [*c]const u8) ?*ecs_query_t {
        return ecs_query_new(self.world, signature);
    }

    pub fn sortQuery(self: *World, query: ?*ecs_query_t, comptime T: type, comparer: ecs_compare_action_t) void {
        return ecs_query_order_by(self.world, query, newComponent(self, T), comparer);
    }

    pub fn new(self: World) Entity {
        return ecs_new_w_type(self.world, 0);
    }

    pub fn getType(self: World, comptime T: type) ecs_type_t {
        return getTypeFromStr(self, @typeName(T));
    }

    pub fn getTypeFromStr(self: World, expr: [*c]const u8) ecs_type_t {
        return ecs_type_from_str(self.world, expr);
    }

    /// this operation will preallocate memory in the world for the specified number of entities
    pub fn dim(self: World, entity_count: i32) void {
        ecs_dim(self.world, entity_count);
    }

    /// this operation will preallocate memory for a type (table) for the specified number of entities
    pub fn dimType(self: World, ecs_type: ecs_type_t, entity_count: i32) void {
        ecs_dim_type(self.world, ecs_type, entity_count);
    }

    pub fn newSystem(self: World, name: [*c]const u8, phase: Phase, signature: [*c]const u8, action: ecs_iter_action_t) Entity {
        return ecs_new_system(self.world, 0, name, @enumToInt(phase), signature, action);
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

    pub fn setSingleton(self: *World, ptr: anytype) void {
        std.debug.assert(@typeInfo(@TypeOf(ptr)) == .Pointer);

        const child = std.meta.Child(@TypeOf(ptr));
        _ = ecs_set_ptr_w_entity(self.world, ecs_get_typeid(self.world, self.newComponent(child)), self.newComponent(child), @sizeOf(child), ptr);
    }

    //TODO: this only works if its not the first component on an entity?
    pub fn add(self: World, entity: Entity, comptime T: type) void {
        _ = ecs_add_type(self.world, entity, getType(self, T));
    }

    pub fn remove(self: World, entity: Entity, comptime T: type) void {
        _ = ecs_remove_type(self.world, entity, getType(self, T));
    }

    pub fn get(self: *World, entity: Entity, comptime T: type) ?*const T {
        const ptr = ecs_get_w_entity(self.world, entity, self.newComponent(T));

        if (ptr) |p| {
            return @ptrCast(*const T, @alignCast(@alignOf(T), ptr));
        } else {
            return null;
        }
    }

    pub fn getMut(self: *World, entity: Entity, comptime T: type) ?* T {
        var is_added: bool = true;
        const ptr = ecs_get_mut_w_entity(self.world, entity, self.newComponent(T), &is_added);

        if (ptr) |p| {
            return @ptrCast(*T, @alignCast(@alignOf(T), ptr));
        } else {
            return null;
        }
    }

    pub fn getSingleton(self: *World, comptime T: type) ?*const T {
        //const ptr = ecs_singleton_get(self.world, T);
        const ptr = self.get(ecs_get_typeid(self.world, self.newComponent(T)), T);

        if (ptr) |p| {
            return @ptrCast(*const T, @alignCast(@alignOf(T), p));
        } else {
            return null;
        }
    }

    pub fn getSingletonMut (self: *World, comptime T: type ) ?*T {
        var is_added: bool = false;
        const ptr  = ecs_get_mut_w_entity(self.world, ecs_get_typeid(self.world, self.newComponent(T)), self.newComponent(T), &is_added);

        if (ptr) |p| {
            return @ptrCast(*T, @alignCast(@alignOf(T), ptr));
        } else {
            return null;
        }
    }

    
};


pub const ecs_iter_t = extern struct {
    world: ?*ecs_world_t,
    real_world: ?*ecs_world_t,
    system: ecs_entity_t,
    event: ecs_entity_t,
    self: ecs_entity_t,
    kind: ecs_query_iter_kind_t,
    table: [*c]ecs_iter_table_t,
    query: ?*ecs_query_t,
    table_count: i32,
    inactive_table_count: i32,
    column_count: i32,
    table_columns: ?*c_void,
    entities: [*c]ecs_entity_t,
    param: ?*c_void,
    ctx: ?*c_void,
    binding_ctx: ?*c_void,
    delta_time: f32,
    delta_system_time: f32,
    world_time: f32,
    frame_offset: i32,
    offset: i32,
    count: i32,
    total_count: i32,
    triggered_by: [*c]ecs_ids_t,
    interrupted_by: ecs_entity_t,
    iter: union_unnamed_3,

    pub fn column(self: *ecs_iter_t, comptime T: type, index: i32) [*]T {
        var col = ecs_column_w_size(self, @sizeOf(T), index);
        return @ptrCast([*]T, @alignCast(@alignOf(T), col));
    }
};

// pub const ECS_HI_COMPONENT_ID = 256;

// Built-in tag ids
// pub const EcsModule = ECS_HI_COMPONENT_ID + 0;
// pub const EcsPrefab = ECS_HI_COMPONENT_ID + 1;
// pub const EcsHidden = ECS_HI_COMPONENT_ID + 2;
// pub const EcsDisabled = ECS_HI_COMPONENT_ID + 3;
// pub const EcsDisabledIntern = ECS_HI_COMPONENT_ID + 4;
// pub const EcsInactive = ECS_HI_COMPONENT_ID + 5;
// pub const EcsOnDemand = ECS_HI_COMPONENT_ID + 6;
// pub const EcsMonitor = ECS_HI_COMPONENT_ID + 7;
// pub const EcsPipeline = ECS_HI_COMPONENT_ID + 8;

// Trigger tags
// pub const EcsOnAdd = ECS_HI_COMPONENT_ID + 9;
// pub const EcsOnRemove = ECS_HI_COMPONENT_ID + 10;

// Set system tags
// pub const EcsOnSet = ECS_HI_COMPONENT_ID + 11;
// pub const EcsUnSet = ECS_HI_COMPONENT_ID + 12;

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

// pub const EcsPreFrame = ECS_HI_COMPONENT_ID + 13;
// pub const EcsOnLoad = ECS_HI_COMPONENT_ID + 14;
// pub const EcsPostLoad = ECS_HI_COMPONENT_ID + 15;
// pub const EcsPreUpdate = ECS_HI_COMPONENT_ID + 16;
// pub const EcsOnUpdate = ECS_HI_COMPONENT_ID + 17;
// pub const EcsOnValidate = ECS_HI_COMPONENT_ID + 18;
// pub const EcsPostUpdate = ECS_HI_COMPONENT_ID + 19;
// pub const EcsPreStore = ECS_HI_COMPONENT_ID + 20;
// pub const EcsOnStore = ECS_HI_COMPONENT_ID + 21;
// pub const EcsPostFrame = ECS_HI_COMPONENT_ID + 22;

// Builtin entity ids
// pub const EcsFlecs = ECS_HI_COMPONENT_ID + 23;
// pub const EcsFlecsCore = ECS_HI_COMPONENT_ID + 24;
// pub const EcsWorld = ECS_HI_COMPONENT_ID + 25;
// pub const EcsSingleton = (@import("std").meta.cast(ecs_entity_t, ECS_ENTITY_MASK)) - 1;

// pub const EcsFirstUserEntityId = ECS_HI_COMPONENT_ID + 32;
