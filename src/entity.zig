const std = @import("std");
const flecs = @import("flecs.zig");
const meta = @import("meta.zig");

pub const Entity = struct {
    world: *flecs.c.ecs_world_t,
    id: flecs.EntityId,

    pub fn init(world: *flecs.c.ecs_world_t, id: flecs.EntityId) Entity {
        return .{
            .world = world,
            .id = id,
        };
    }

    fn getWorld(self: Entity) flecs.World {
        return .{ .world = self.world };
    }

    pub fn format(value: Entity, comptime fmt: []const u8, options: std.fmt.FormatOptions, writer: anytype) !void {
        _ = options;
        _ = fmt;
        try std.fmt.format(writer, "Entity{{ {d} }}", .{value.id});
    }

    pub fn getFullpath(self: Entity) [*c]u8 {
        return flecs.c.ecs_get_path_w_sep(self.world, 0, self.id, ".", null);
    }

    pub fn setName(self: Entity, name: [*c]const u8) void {
        _ = flecs.c.ecs_set_name(self.world, self.id, name);
    }

    pub fn getName(self: Entity) [*c]const u8 {
        return flecs.c.ecs_get_name(self.world, self.id);
    }

    /// add an entity to an entity. This operation adds a single entity to the type of an entity. Type roles may be used in
    /// combination with the added entity.
    pub fn add(self: Entity, comptime T: type) void {
        flecs.c.ecs_add_id(self.world, self.id, meta.componentId(self.world, T));
    }

    /// shortcut for addPair(ChildOf, parent). Allowed parent types: Entity, EntityId, type
    pub fn childOf(self: Entity, parent: anytype) void {
        self.addPair(flecs.c.EcsChildOf, parent);
    }

    /// shortcut for addPair(IsA, base). Allowed base types: Entity, EntityId, type
    pub fn isA(self: Entity, base: anytype) void {
        self.addPair(flecs.c.EcsIsA, base);
    }

    /// adds a relation to the object on the entity. Allowed params: Entity, EntityId, type
    pub fn addPair(self: Entity, relation: anytype, object: anytype) void {
        flecs.c.ecs_add_id(self.world, self.id, self.getWorld().pair(relation, object));
    }

    /// returns true if the entity has the relation to the object
    pub fn hasPair(self: Entity, relation: anytype, object: anytype) bool {
        return flecs.c.ecs_has_id(self.world, self.id, self.getWorld().pair(relation, object));
    }

    pub fn setPair(self: Entity, Relation: anytype, object: type, data: Relation) void {
        const pair = self.getWorld().pair(Relation, object);
        var component = &data;
        _ = flecs.c.ecs_set_id(self.world, self.id, pair, @sizeOf(Relation), component);
    }

    /// sets a component on entity. Can be either a pointer to a struct or a struct
    pub fn set(self: Entity, ptr_or_struct: anytype) void {
        std.debug.assert(@typeInfo(@TypeOf(ptr_or_struct)) == .Pointer or @typeInfo(@TypeOf(ptr_or_struct)) == .Struct);

        const T = meta.FinalChild(@TypeOf(ptr_or_struct));
        var component = if (@typeInfo(@TypeOf(ptr_or_struct)) == .Pointer) ptr_or_struct else &ptr_or_struct;
        _ = flecs.c.ecs_set_id(self.world, self.id, meta.componentId(self.world, T), @sizeOf(T), component);
    }

    /// sets a private instance of a component on entity. Useful for inheritance.
    pub fn setOverride(self: Entity, ptr_or_struct: anytype) void {
        std.debug.assert(@typeInfo(@TypeOf(ptr_or_struct)) == .Pointer or @typeInfo(@TypeOf(ptr_or_struct)) == .Struct);

        const T = meta.FinalChild(@TypeOf(ptr_or_struct));
        var component = if (@typeInfo(@TypeOf(ptr_or_struct)) == .Pointer) ptr_or_struct else &ptr_or_struct;
        const id = meta.componentId(self.world, T);
        flecs.c.ecs_add_id(self.world, self.id, flecs.c.ECS_OVERRIDE | id);
        _ = flecs.c.ecs_set_id(self.world, self.id, id, @sizeOf(T), component);
    }

    /// gets a pointer to a type if the component is present on the entity
    pub fn get(self: Entity, comptime T: type) ?*const T {
        const ptr = flecs.c.ecs_get_id(self.world, self.id, meta.componentId(self.world, T));
        if (ptr) |p| {
            return flecs.componentCast(T, p);
        }
        return null;
    }

    /// removes a component from an Entity
    pub fn remove(self: Entity, comptime T: type) void {
        flecs.c.ecs_remove_id(self.world, self.id, meta.componentId(self.world, T));
    }

    /// removes all components from an Entity
    pub fn clear(self: Entity) void {
        flecs.c.ecs_clear(self.world, self.id);
    }

    /// removes the entity from the world. Do not use this Entity after calling this!
    pub fn delete(self: Entity) void {
        flecs.c.ecs_delete(self.world, self.id);
    }

    /// returns true if the entity is alive
    pub fn isAlive(self: Entity) bool {
        return flecs.c.ecs_is_alive(self.world, self.id);
    }

    /// returns true if the entity has a matching component type
    pub fn has(self: Entity, comptime T: type) bool {
        return flecs.c.ecs_has_id(self.world, self.id, meta.componentId(self.world, T));
    }

    /// returns the type of the component, which contains all components
    pub fn getType(self: Entity) flecs.Type {
        return flecs.Type.init(self.world, flecs.c.ecs_get_type(self.world, self.id));
    }

    /// prints a json representation of an Entity. Note that world.enable_type_reflection should be true to
    /// get component values as well.
    pub fn printJsonRepresentation(self: Entity) void {
        var str = flecs.c.ecs_entity_to_json(self.world, self.id, null);
        std.debug.print("{s}\n", .{str});
        flecs.c.ecs_os_api.free_.?(str);
    }
};
