// pub usingnamespace @import("c.zig");
// const flecs = @import("c.zig");

const flecs = @cImport(@cInclude("flecs.h"));
pub usingnamespace flecs;

const std = @import("std");

// outdated. we just cImport the flecs.h file from now on
// flecs update:
// - bump submodules
// - regenerate cimport.zig using the "generator" build target
// - clean out cruft
// - update `ecs_iter_t` to be pointer to single item (find [*c]ecs_iter_t and replace with *ecs_iter_t)
// - copy struct_ecs_iter_t fields into this file and delete the declaration (pub const ecs_iter_t = struct_ecs_iter_t) from the cimport.zig (so we can add methods to ecs_iter_t)
// - ensure the first line declaring ecs_iter_t remains in c.zig since we moved it to this file

pub const Entity = flecs.ecs_entity_t;

/// registered component handle cache
fn componentHandle(comptime T: type) *Entity {
    _ = T;
    return &(struct {
        pub var handle: Entity = std.math.maxInt(u64);
    }.handle);
}

pub const World = struct {
    world: *flecs.ecs_world_t,

    pub fn init() World {
        return .{ .world = flecs.ecs_init().? };
    }

    pub fn deinit(self: *World) void {
        _ = flecs.ecs_fini(self.world);
    }

    pub fn setTargetFps(self: World, fps: f32) void {
        flecs.ecs_set_target_fps(self.world, fps);
    }

    pub fn progress(self: World, delta_time: f32) void {
        _ = flecs.ecs_progress(self.world, delta_time);
    }

    pub fn newEntity(self: World) Entity {
        return flecs.ecs_new_w_type(self.world, 0);
    }

    pub fn newEntityWithName(self: World, name: [*c]const u8) Entity {
        const entity = flecs.ecs_new_w_type(self.world, 0);
        self.setName(entity, name);
        return entity;
    }

    pub fn newComponent(self: *World, comptime T: type) Entity {
        var handle = componentHandle(T);
        if (handle.* < std.math.maxInt(Entity)) {
            return handle.*;
        }

        handle.* = flecs.ecs_new_component(self.world, 0, @typeName(T), @sizeOf(T), @alignOf(T));
        return handle.*;
    }

    pub fn newType(self: World, id: [*c]const u8, components: [*c]const u8) Entity {
        return flecs.ecs_new_type(self.world, 0, id, components);
    }

    pub fn typeFromStr(self: World, expr: [*c]const u8) flecs.ecs_type_t {
        return flecs.ecs_type_from_str(self.world, expr);
    }

    /// this operation will preallocate memory in the world for the specified number of entities
    pub fn dim(self: World, entity_count: i32) void {
        flecs.ecs_dim(self.world, entity_count);
    }

    /// this operation will preallocate memory for a type (table) for the specified number of entities
    pub fn dimType(self: World, ecs_type: flecs.ecs_type_t, entity_count: i32) void {
        flecs.ecs_dim_type(self.world, ecs_type, entity_count);
    }

    pub fn newSystem(self: World, name: [*c]const u8, phase: Phase, signature: [*c]const u8, action: flecs.ecs_iter_action_t) void {
        _ = flecs.ecs_new_system(self.world, 0, name, @enumToInt(phase), signature, action);
    }

    pub fn setName(self: World, entity: Entity, name: [*c]const u8) void {
        var ecs_name = flecs.EcsName{ .value = name, .symbol = null, .alloc_value = null };
        self.setPtr(entity, flecs.FLECS__EEcsName, @sizeOf(flecs.EcsName), &ecs_name);
    }

    pub fn getName(self: World, entity: Entity) [*c]const u8 {
        return flecs.ecs_get_name(self.world, entity);
    }

    pub fn setPtr(self: World, entity: Entity, component: Entity, size: usize, ptr: ?*const anyopaque) void {
        _ = flecs.ecs_set_ptr_w_entity(self.world, entity, component, size, ptr);
    }

    pub fn set(self: *World, entity: Entity, ptr: anytype) void {
        std.debug.assert(@typeInfo(@TypeOf(ptr)) == .Pointer);

        const child = std.meta.Child(@TypeOf(ptr));
        _ = flecs.ecs_set_ptr_w_entity(self.world, entity, self.newComponent(child), @sizeOf(child), ptr);
    }
};

pub fn column(self: [*c]const flecs.ecs_iter_t, comptime T: type, index: i32) [*]T {
    var col = flecs.ecs_column_w_size(self, @sizeOf(T), index);
    return @ptrCast([*]T, @alignCast(@alignOf(T), col));
}

// Builtin pipeline tags
pub const Phase = enum(flecs.ecs_entity_t) {
    pre_frame = flecs.ECS_HI_COMPONENT_ID + 13,
    on_load = flecs.ECS_HI_COMPONENT_ID + 14,
    post_load = flecs.ECS_HI_COMPONENT_ID + 15,
    pre_update = flecs.ECS_HI_COMPONENT_ID + 16,
    on_update = flecs.ECS_HI_COMPONENT_ID + 17,
    on_validate = flecs.ECS_HI_COMPONENT_ID + 18,
    post_update = flecs.ECS_HI_COMPONENT_ID + 19,
    pre_store = flecs.ECS_HI_COMPONENT_ID + 20,
    on_store = flecs.ECS_HI_COMPONENT_ID + 21,
    post_frame = flecs.ECS_HI_COMPONENT_ID + 22,
};
