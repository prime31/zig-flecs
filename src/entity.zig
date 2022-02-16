const std = @import("std");
const flecs = @import("flecs.zig");

pub const Entity = struct {
    world: flecs.World,
    id: flecs.EntityId,

    pub fn init(world: flecs.World, id: flecs.EntityId) Entity {
        return .{
            .world = world,
            .id = id,
        };
    }

    pub fn format(value: Entity, comptime fmt: []const u8, options: std.fmt.FormatOptions, writer: anytype) !void {
        _ = options;
        _ = fmt;
        try std.fmt.format(writer, "Entity{{ {d} }}", .{value.id});
    }

    pub fn setName(self: Entity, name: [*c]const u8) void {
        _ = flecs.ecs_set_name(self.world.world, self.id, name);
    }

    pub fn getName(self: Entity) [*c]const u8 {
        return flecs.ecs_get_name(self.world.world, self.id);
    }

    /// sets a component on entity. Can be either a pointer to a struct or a struct
    pub fn set(self: Entity, ptr_or_struct: anytype) void {
        std.debug.assert(@typeInfo(@TypeOf(ptr_or_struct)) == .Pointer or @typeInfo(@TypeOf(ptr_or_struct)) == .Struct);

        const T = if (@typeInfo(@TypeOf(ptr_or_struct)) == .Pointer) std.meta.Child(@TypeOf(ptr_or_struct)) else @TypeOf(ptr_or_struct);
        var component = if (@typeInfo(@TypeOf(ptr_or_struct)) == .Pointer) ptr_or_struct else &ptr_or_struct;
        _ = flecs.ecs_set_id(self.world.world, self.id, self.world.componentId(T), @sizeOf(T), component);
    }

    /// removes a component from an Entity
    pub fn remove(self: Entity, comptime T: type) void {
        flecs.ecs_remove_id(self.world.world, self.id, self.world.componentId(T));
    }

    /// removes all components from an Entity
    pub fn clear(self: Entity) void {
        flecs.ecs_clear(self.world.world, self.id);
    }

    /// removes the entity from the world. Do not use this Entity after calling this!
    pub fn delete(self: Entity) void {
        flecs.ecs_delete(self.world.world, self.id);
        self.id = 0;
    }
};