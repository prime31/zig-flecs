const std = @import("std");
const flecs = @import("flecs.zig");
const utils = @import("utils.zig");
const meta = @import("meta.zig");
const Entity = flecs.Entity;

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

    /// available at: https://www.flecs.dev/explorer/?remote=true
    /// test if running: http://localhost:27750/entity/flecs
    pub fn enableWebExplorer(self: World) void {
        _ = flecs.ecs_set_id(self.world, flecs.FLECS__EEcsRest, flecs.FLECS__EEcsRest, @sizeOf(flecs.EcsRest), &std.mem.zeroes(flecs.EcsRest));
    }

    pub fn progress(self: World, delta_time: f32) void {
        _ = flecs.ecs_progress(self.world, delta_time);
    }

    pub fn newEntity(self: World) Entity {
        return Entity.init(self.world, flecs.ecs_new_id(self.world));
    }

    pub fn newEntityWithName(self: World, name: [*c]const u8) Entity {
        return Entity.init(self.world, flecs.ecs_set_name(self.world, 0, name));
    }

    pub fn newPrefab(self: World, name: [*c]const u8) flecs.EntityId {
        var desc = std.mem.zeroInit(flecs.ecs_entity_desc_t, .{
            .name = name,
            .add = [1]flecs.ecs_id_t{flecs.EcsPrefab} ++ [_]flecs.ecs_id_t{0} ** 31,
        });
        return flecs.ecs_entity_init(self.world, &desc);
    }

    /// bulk registers a tuple of Types
    pub fn registerComponents(self: World, types: anytype) void {
        std.debug.assert(@typeInfo(@TypeOf(types)) == .Struct);
        inline for (types) |t| {
            _ = self.componentId(t);
        }
    }

    /// gets the EntityId for T creating it if it doesn't already exist
    pub fn componentId(self: World, comptime T: type) flecs.EntityId {
        return meta.componentId(self.world, T);
    }

    pub fn newType(self: World, components: [*c]const u8) flecs.EntityId {
        var desc = std.mem.zeroInit(flecs.struct_ecs_type_desc_t, .{ .ids_expr = components });
        return flecs.ecs_type_init(self.world, &desc);
    }

    /// this operation will preallocate memory in the world for the specified number of entities
    pub fn dim(self: World, entity_count: i32) void {
        flecs.ecs_dim(self.world, entity_count);
    }

    /// this operation will preallocate memory for a type (table) for the specified number of entities
    pub fn dimType(self: World, ecs_type: flecs.ecs_type_t, entity_count: i32) void {
        flecs.ecs_dim_type(self.world, ecs_type, entity_count);
    }

    pub fn newSystem(self: World, name: [*c]const u8, phase: flecs.Phase, signature: [*c]const u8, action: flecs.ecs_iter_action_t) void {
        var desc = std.mem.zeroes(flecs.ecs_system_desc_t);
        desc.entity.name = name;
        desc.entity.add[0] = @enumToInt(phase);
        desc.query.filter.expr = signature;
        desc.callback = action;
        _ = flecs.ecs_system_init(self.world, &desc);
    }

    pub fn setName(self: World, entity: flecs.EntityId, name: [*c]const u8) void {
        _ = flecs.ecs_set_name(self.world, entity, name);
    }

    pub fn getName(self: World, entity: flecs.EntityId) [*c]const u8 {
        return flecs.ecs_get_name(self.world, entity);
    }

    /// sets a component on entity. Can be either a pointer to a struct or a struct
    pub fn set(self: *World, entity: flecs.EntityId, ptr_or_struct: anytype) void {
        std.debug.assert(@typeInfo(@TypeOf(ptr_or_struct)) == .Pointer or @typeInfo(@TypeOf(ptr_or_struct)) == .Struct);

        const T = if (@typeInfo(@TypeOf(ptr_or_struct)) == .Pointer) std.meta.Child(@TypeOf(ptr_or_struct)) else @TypeOf(ptr_or_struct);
        var component = if (@typeInfo(@TypeOf(ptr_or_struct)) == .Pointer) ptr_or_struct else &ptr_or_struct;
        _ = flecs.ecs_set_id(self.world, entity, self.componentId(T), @sizeOf(T), component);
    }

    /// removes a component from an Entity
    pub fn remove(self: *World, entity: flecs.EntityId, comptime T: type) void {
        flecs.ecs_remove_id(self.world, entity, self.componentId(T));
    }

    /// removes all components from an Entity
    pub fn clear(self: *World, entity: flecs.EntityId) void {
        flecs.ecs_clear(self.world, entity);
    }

    /// removes the entity from the world
    pub fn delete(self: *World, entity: flecs.EntityId) void {
        flecs.ecs_delete(self.world, entity);
    }

    /// deletes all entities with the component
    pub fn deleteWith(self: *World, comptime T: type) void {
        flecs.ecs_delete_with(self.world, self.componentId(T));
    }

    /// remove all instances of the specified component
    pub fn removeAll(self: *World, comptime T: type) void {
        flecs.ecs_remove_all(self.world, self.componentId(T));
    }

    pub fn setSingleton(self: World, ptr_or_struct: anytype) void {
        std.debug.assert(@typeInfo(@TypeOf(ptr_or_struct)) == .Pointer or @typeInfo(@TypeOf(ptr_or_struct)) == .Struct);

        const T = if (@typeInfo(@TypeOf(ptr_or_struct)) == .Pointer) std.meta.Child(@TypeOf(ptr_or_struct)) else @TypeOf(ptr_or_struct);
        var component = if (@typeInfo(@TypeOf(ptr_or_struct)) == .Pointer) ptr_or_struct else &ptr_or_struct;
        _ = flecs.ecs_set_id(self.world, self.componentId(T), self.componentId(T), @sizeOf(T), component);
    }

    // TODO: use ecs_get_mut_id optionally based on a bool perhaps or maybe if the passed in type is a pointer?
    pub fn getSingleton(self: World, comptime T: type) ?* const T {
        std.debug.assert(@typeInfo(T) == .Struct);
        var val = flecs.ecs_get_id(self.world, self.componentId(T), self.componentId(T));
        if (val == null) return null;
        return @ptrCast(*const T, @alignCast(@alignOf(T), val));
    }

    pub fn getSingletonMut(self: World, comptime T: type) ?*T {
        std.debug.assert(@typeInfo(T) == .Struct);
        var is_added: bool = undefined;
        var val = flecs.ecs_get_mut_id(self.world, self.componentId(T), self.componentId(T), &is_added);
        if (val == null) return null;
        return @ptrCast(*T, @alignCast(@alignOf(T), val));
    }

    pub fn removeSingleton(self: World, comptime T: type) void {
        std.debug.assert(@typeInfo(T) == .Struct);
        flecs.ecs_remove_id(self.world, self.componentId(T), self.componentId(T));
    }
};