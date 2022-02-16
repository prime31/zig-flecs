const std = @import("std");
const flecs = @import("flecs.zig");
const utils = @import("utils.zig");
const Entity = flecs.Entity;

pub const World = struct {
    world: *flecs.ecs_world_t,
    enable_type_reflection: bool = false,

    pub fn init() World {
        return .{ .world = flecs.ecs_init().? };
    }

    pub fn deinit(self: *World) void {
        _ = flecs.ecs_fini(self.world);
    }

    pub fn setTargetFps(self: World, fps: f32) void {
        flecs.ecs_set_target_fps(self.world, fps);
    }

    /// available at https://www.flecs.dev/explorer/
    pub fn enableWebExplorer(self: World) void {
        _ = flecs.ecs_set_id(self.world, flecs.FLECS__EEcsRest, flecs.FLECS__EEcsRest, @sizeOf(flecs.EcsRest), &std.mem.zeroes(flecs.EcsRest));
    }

    pub fn progress(self: World, delta_time: f32) void {
        _ = flecs.ecs_progress(self.world, delta_time);
    }

    pub fn newEntity(self: World) Entity {
        return Entity.init(self, flecs.ecs_new_id(self.world));
    }

    pub fn newEntityWithName(self: World, name: [*c]const u8) Entity {
        return Entity.init(self, flecs.ecs_set_name(self.world, 0, name));
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
        var handle = flecs.componentHandle(T);
        if (handle.* < std.math.maxInt(flecs.EntityId)) {
            return handle.*;
        }

        var desc = std.mem.zeroInit(flecs.ecs_component_desc_t, .{
            .entity = std.mem.zeroInit(flecs.struct_ecs_entity_desc_t, .{ .name = @typeName(T) }),
            .size = @sizeOf(T),
            .alignment = @alignOf(T),
        });
        handle.* = flecs.ecs_component_init(self.world, &desc);
        if (self.enable_type_reflection) self.registerReflectionData(T, handle.*);
        return handle.*;
    }

    /// https://github.com/SanderMertens/flecs/tree/master/examples/c/reflection
    fn registerReflectionData(self: World, comptime T: type, entity: flecs.EntityId) void {
        var entityDesc = std.mem.zeroInit(flecs.ecs_entity_desc_t, .{ .entity = entity });
        var desc = std.mem.zeroInit(flecs.ecs_struct_desc_t, .{
            .entity = entityDesc
        });

        switch (@typeInfo(T)) {
            .Struct => |si| {
                inline for (si.fields) |field, i| {
                    var member = std.mem.zeroes(flecs.ecs_member_t);
                    member.name = field.name.ptr;

                    // TODO: support nested structs
                    member.type = switch (field.field_type) {
                        // Struct => self.componentId(field.field_type),
                        bool => flecs.FLECS__Eecs_bool_t,
                        f32 => flecs.FLECS__Eecs_f32_t,
                        f64 => flecs.FLECS__Eecs_f64_t,
                        u8 => flecs.FLECS__Eecs_u8_t,
                        u16 => flecs.FLECS__Eecs_u16_t,
                        u32 => flecs.FLECS__Eecs_u32_t,
                        flecs.EntityId => blk: {
                            // bit of a hack, but if the field name has "entity" in it we consider it an Entity reference
                            if (std.mem.indexOf(u8, field.name, "entity") != null)
                                break :blk flecs.FLECS__Eecs_entity_t;
                            break :blk flecs.FLECS__Eecs_u64_t;
                        },
                        i8 => flecs.FLECS__Eecs_i8_t,
                        i16 => flecs.FLECS__Eecs_i16_t,
                        i32 => flecs.FLECS__Eecs_i32_t,
                        i64 => flecs.FLECS__Eecs_i64_t,
                        usize => flecs.FLECS__Eecs_uptr_t,
                        []const u8 => flecs.FLECS__Eecs_string_t,
                        [*]const u8 => flecs.FLECS__Eecs_string_t,
                        else => blk: {
                            if (@typeInfo(field.field_type) == .Struct)
                                break :blk self.componentId(field.field_type);

                            if (@typeInfo(field.field_type) == .Enum) {
                                var enum_desc = std.mem.zeroes(flecs.ecs_enum_desc_t);
                                enum_desc.entity.entity = flecs.componentHandle(T).*;

                                inline for (@typeInfo(field.field_type).Enum.fields) |f, index| {
                                    enum_desc.constants[index] = std.mem.zeroInit(flecs.ecs_enum_constant_t, .{
                                        .name = &f.name,
                                        .value = @intCast(i33, f.value),
                                    });
                                }

                                break :blk flecs.ecs_enum_init(self.world, &enum_desc);
                            }
                            std.debug.print("unhandled field type: {any}, ti: {any}\n", .{field.field_type, @typeInfo(field.field_type)});
                            unreachable;
                        },
                    };
                    desc.members[i] = member;
                }
                _ = flecs.ecs_struct_init(self.world, &desc);
            },
            else => unreachable,
        }
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

    // TODO: use ecs_get_mut_id optionally based on a bool perhaps?
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