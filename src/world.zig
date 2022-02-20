const std = @import("std");
const flecs = @import("flecs.zig");
const utils = @import("utils.zig");
const meta = @import("meta.zig");

const Entity = flecs.Entity;
const FlecsOrderByAction = fn (flecs.c.ecs_entity_t, ?*const anyopaque, flecs.c.ecs_entity_t, ?*const anyopaque) callconv(.C) c_int;

fn dummyFn(_: [*c]flecs.c.ecs_iter_t) callconv(.C) void {}

pub const World = struct {
    world: *flecs.c.ecs_world_t,

    pub usingnamespace @import("system_builder.zig").SystemBuilder(World);

    pub fn init() World {
        return .{ .world = flecs.c.ecs_init().? };
    }

    pub fn deinit(self: *World) void {
        _ = flecs.c.ecs_fini(self.world);
    }

    pub fn setTargetFps(self: World, fps: f32) void {
        flecs.c.ecs_set_target_fps(self.world, fps);
    }

    /// available at: https://www.flecs.dev/explorer/?remote=true
    /// test if running: http://localhost:27750/entity/flecs
    pub fn enableWebExplorer(self: World) void {
        _ = flecs.c.ecs_set_id(self.world, flecs.c.FLECS__EEcsRest, flecs.c.FLECS__EEcsRest, @sizeOf(flecs.c.EcsRest), &std.mem.zeroes(flecs.c.EcsRest));
    }

    pub fn progress(self: World, delta_time: f32) void {
        _ = flecs.c.ecs_progress(self.world, delta_time);
    }

    pub fn newEntity(self: World) Entity {
        return Entity.init(self.world, flecs.c.ecs_new_id(self.world));
    }

    pub fn newEntityWithName(self: World, name: [*c]const u8) Entity {
        var desc = std.mem.zeroInit(flecs.c.ecs_entity_desc_t, .{ .name = name });
        return Entity.init(self.world, flecs.c.ecs_entity_init(self.world, &desc));
    }

    pub fn newPrefab(self: World, name: [*c]const u8) flecs.EntityId {
        var desc = std.mem.zeroInit(flecs.c.ecs_entity_desc_t, .{
            .name = name,
            .add = [1]flecs.c.ecs_id_t{flecs.c.EcsPrefab} ++ [_]flecs.c.ecs_id_t{0} ** 31,
        });
        return Entity.init(self.world, flecs.c.ecs_entity_init(self.world, &desc));
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

    /// creates a new type entity, or finds an existing one. A type entity is an entity with the EcsType component.
    pub fn newType(self: World, name: [*c]const u8, comptime Types: anytype) flecs.EntityId {
        var desc = std.mem.zeroInit(flecs.c.ecs_type_desc_t);
        desc.entity = std.mem.zeroInit(flecs.c.ecs_entity_desc_t, .{ .name = name });

        inline for (Types) |T, i| {
            desc.ids[i] = self.componentId(T);
        }

        return flecs.c.ecs_type_init(self.world, &desc);
    }

    pub fn newTypeExpr(self: World, name: [*c]const u8, expr: [*c]const u8) flecs.EntityId {
        var desc = std.mem.zeroInit(flecs.c.ecs_type_desc_t, .{ .ids_expr = expr });
        desc.entity = std.mem.zeroInit(flecs.c.ecs_entity_desc_t, .{ .name = name });

        return flecs.c.ecs_type_init(self.world, &desc);
    }

    /// this operation will preallocate memory in the world for the specified number of entities
    pub fn dim(self: World, entity_count: i32) void {
        flecs.c.ecs_dim(self.world, entity_count);
    }

    /// this operation will preallocate memory for a type (table) for the specified number of entities
    pub fn dimType(self: World, ecs_type: flecs.c.ecs_type_t, entity_count: i32) void {
        flecs.c.ecs_dim_type(self.world, ecs_type, entity_count);
    }

    pub fn newSystem(self: World, name: [*c]const u8, phase: flecs.Phase, signature: [*c]const u8, action: flecs.c.ecs_iter_action_t) void {
        var desc = std.mem.zeroes(flecs.c.ecs_system_desc_t);
        desc.entity.name = name;
        desc.entity.add[0] = @enumToInt(phase);
        desc.query.filter.expr = signature;
        desc.callback = action;
        _ = flecs.c.ecs_system_init(self.world, &desc);
    }

    pub fn newRunSystem(self: World, name: [*c]const u8, phase: flecs.Phase, signature: [*c]const u8, action: flecs.c.ecs_iter_action_t) void {
        var desc = std.mem.zeroes(flecs.c.ecs_system_desc_t);
        desc.entity.name = name;
        desc.entity.add[0] = @enumToInt(phase);
        desc.query.filter.expr = signature;
        desc.callback = dummyFn;
        desc.run = action;
        _ = flecs.c.ecs_system_init(self.world, &desc);
    }

    pub fn newWrappedRunSystem(self: World, name: [*c]const u8, phase: flecs.Phase, signature: [*c]const u8, comptime Components: type, comptime action: fn (*flecs.Iterator(Components)) void) void {
        var desc = std.mem.zeroes(flecs.c.ecs_system_desc_t);
        desc.entity.name = name;
        desc.entity.add[0] = @enumToInt(phase);
        desc.query.filter.expr = signature;
        desc.callback = dummyFn;
        desc.run = wrapSystemFn(Components, action);
        _ = flecs.c.ecs_system_init(self.world, &desc);
    }

    pub fn setName(self: World, entity: flecs.EntityId, name: [*c]const u8) void {
        _ = flecs.c.ecs_set_name(self.world, entity, name);
    }

    pub fn getName(self: World, entity: flecs.EntityId) [*c]const u8 {
        return flecs.c.ecs_get_name(self.world, entity);
    }

    /// sets a component on entity. Can be either a pointer to a struct or a struct
    pub fn set(self: *World, entity: flecs.EntityId, ptr_or_struct: anytype) void {
        std.debug.assert(@typeInfo(@TypeOf(ptr_or_struct)) == .Pointer or @typeInfo(@TypeOf(ptr_or_struct)) == .Struct);

        const T = if (@typeInfo(@TypeOf(ptr_or_struct)) == .Pointer) std.meta.Child(@TypeOf(ptr_or_struct)) else @TypeOf(ptr_or_struct);
        var component = if (@typeInfo(@TypeOf(ptr_or_struct)) == .Pointer) ptr_or_struct else &ptr_or_struct;
        _ = flecs.c.ecs_set_id(self.world, entity, self.componentId(T), @sizeOf(T), component);
    }

    /// removes a component from an Entity
    pub fn remove(self: *World, entity: flecs.EntityId, comptime T: type) void {
        flecs.c.ecs_remove_id(self.world, entity, self.componentId(T));
    }

    /// removes all components from an Entity
    pub fn clear(self: *World, entity: flecs.EntityId) void {
        flecs.c.ecs_clear(self.world, entity);
    }

    /// removes the entity from the world
    pub fn delete(self: *World, entity: flecs.EntityId) void {
        flecs.c.ecs_delete(self.world, entity);
    }

    /// deletes all entities with the component
    pub fn deleteWith(self: *World, comptime T: type) void {
        flecs.c.ecs_delete_with(self.world, self.componentId(T));
    }

    /// remove all instances of the specified component
    pub fn removeAll(self: *World, comptime T: type) void {
        flecs.c.ecs_remove_all(self.world, self.componentId(T));
    }

    pub fn setSingleton(self: World, ptr_or_struct: anytype) void {
        std.debug.assert(@typeInfo(@TypeOf(ptr_or_struct)) == .Pointer or @typeInfo(@TypeOf(ptr_or_struct)) == .Struct);

        const T = if (@typeInfo(@TypeOf(ptr_or_struct)) == .Pointer) std.meta.Child(@TypeOf(ptr_or_struct)) else @TypeOf(ptr_or_struct);
        var component = if (@typeInfo(@TypeOf(ptr_or_struct)) == .Pointer) ptr_or_struct else &ptr_or_struct;
        _ = flecs.c.ecs_set_id(self.world, self.componentId(T), self.componentId(T), @sizeOf(T), component);
    }

    // TODO: use ecs_get_mut_id optionally based on a bool perhaps or maybe if the passed in type is a pointer?
    pub fn getSingleton(self: World, comptime T: type) ?*const T {
        std.debug.assert(@typeInfo(T) == .Struct);
        var val = flecs.c.ecs_get_id(self.world, self.componentId(T), self.componentId(T));
        if (val == null) return null;
        return @ptrCast(*const T, @alignCast(@alignOf(T), val));
    }

    pub fn getSingletonMut(self: World, comptime T: type) ?*T {
        std.debug.assert(@typeInfo(T) == .Struct);
        var is_added: bool = undefined;
        var val = flecs.c.ecs_get_mut_id(self.world, self.componentId(T), self.componentId(T), &is_added);
        if (val == null) return null;
        return @ptrCast(*T, @alignCast(@alignOf(T), val));
    }

    pub fn removeSingleton(self: World, comptime T: type) void {
        std.debug.assert(@typeInfo(T) == .Struct);
        flecs.c.ecs_remove_id(self.world, self.componentId(T), self.componentId(T));
    }
};

fn wrapSystemFn(comptime T: type, comptime cb: fn (*flecs.Iterator(T)) void) fn ([*c]flecs.c.ecs_iter_t) callconv(.C) void {
    const Closure = struct {
        pub var callback: fn (*flecs.Iterator(T)) void = cb;

        pub fn closure(it: [*c]flecs.c.ecs_iter_t) callconv(.C) void {
            callback(&flecs.Iterator(T).init(it, flecs.c.ecs_iter_next));
        }
    };
    return Closure.closure;
}

fn wrapOrderByFn(comptime T: type, comptime cb: fn (flecs.EntityId, *const T, flecs.EntityId, *const T) c_int) FlecsOrderByAction {
    const Closure = struct {
        pub var callback: fn (flecs.Entity, T, flecs.Entity, T) c_int = cb;

        pub fn closure(e1: flecs.EntityId, c1: ?*const anyopaque, e2: flecs.EntityId, c2: ?*const anyopaque) callconv(.C) c_int {
            return @call(.{ .modifier = .always_inline }, cb, .{ e1, @ptrCast(*const T, @alignCast(@alignOf(T), c1)), e2, @ptrCast(*const T, @alignCast(@alignOf(T), c2)) });
        }
    };
    return Closure.closure;
}
