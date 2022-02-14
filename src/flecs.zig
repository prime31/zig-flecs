pub usingnamespace @import("c.zig");
const flecs = @import("c.zig");

pub const QueryBuilder = @import("query_builder.zig").QueryBuilder;

// TODO: why does translate-c fail for cImport but succeeds when used directly?
// const flecs = @cImport(@cInclude("flecs.h"));
// pub usingnamespace flecs;

const std = @import("std");

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
        return flecs.ecs_new_id(self.world);
    }

    pub fn newEntityWithName(self: World, name: [*c]const u8) Entity {
        return flecs.ecs_set_name(self.world, 0, name);
    }

    pub fn newPrefab(self: World, name: [*c]const u8) Entity {
        var desc = std.mem.zeroInit(flecs.ecs_entity_desc_t, .{
            .name = name,
            .add = [1]flecs.ecs_id_t{flecs.EcsPrefab} + [_]flecs.ecs_id_t{0} ** 31,
        });
        return flecs.ecs_entity_init(self.world, &desc);
    }

    /// bulk registers a tuple of Types
    pub fn registerComponents(self: World, types: anytype) void {
        std.debug.assert(@typeInfo(@TypeOf(types)) == .Struct);
        inline for (types) |t| {
            _ = self.newComponent(t);
        }
    }

    pub fn newComponent(self: World, comptime T: type) Entity {
        var handle = componentHandle(T);
        if (handle.* < std.math.maxInt(Entity)) {
            return handle.*;
        }

        var desc = std.mem.zeroInit(flecs.ecs_component_desc_t, .{
            .entity = std.mem.zeroInit(flecs.struct_ecs_entity_desc_t, .{ .name = @typeName(T) }),
            .size = @sizeOf(T),
            .alignment = @alignOf(T),
        });
        handle.* = flecs.ecs_component_init(self.world, &desc);
        return handle.*;
    }

    pub fn newType(self: World, components: [*c]const u8) Entity {
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

    pub fn newSystem(self: World, name: [*c]const u8, phase: Phase, signature: [*c]const u8, action: flecs.ecs_iter_action_t) void {
        var desc = std.mem.zeroes(flecs.ecs_system_desc_t);
        desc.entity.name = name;
        desc.entity.add[0] = @enumToInt(phase);
        desc.query.filter.expr = signature;
        desc.callback = action;
        _ = flecs.ecs_system_init(self.world, &desc);
    }

    pub fn setName(self: World, entity: Entity, name: [*c]const u8) void {
        _ = flecs.ecs_set_name(self.world, entity, name);
    }

    pub fn getName(self: World, entity: Entity) [*c]const u8 {
        return flecs.ecs_get_name(self.world, entity);
    }

    /// sets a component on entity. Can be either a pointer to a struct or a struct
    pub fn set(self: *World, entity: Entity, ptr_or_struct: anytype) void {
        std.debug.assert(@typeInfo(@TypeOf(ptr_or_struct)) == .Pointer or @typeInfo(@TypeOf(ptr_or_struct)) == .Struct);

        const T = if (@typeInfo(@TypeOf(ptr_or_struct)) == .Pointer) std.meta.Child(@TypeOf(ptr_or_struct)) else @TypeOf(ptr_or_struct);
        var component = if (@typeInfo(@TypeOf(ptr_or_struct)) == .Pointer) ptr_or_struct else &ptr_or_struct;
        _ = flecs.ecs_set_id(self.world, entity, self.newComponent(T), @sizeOf(T), component);
    }
};

pub fn Term(comptime T: type) type {
    return struct {
        world: World,
        term: flecs.ecs_term_t,

        const Iterator = struct {
            iter: flecs.ecs_iter_t,
            index: usize = 0,

            pub fn init(iter: flecs.ecs_iter_t) @This() {
                return .{ .iter = iter };
            }

            pub fn next(self: *@This()) ?*T {
                if (self.index >= self.iter.count) {
                    self.index = 0;
                    if (!flecs.ecs_term_next(&self.iter)) return null;
                }

                self.index += 1;
                const array = column(&self.iter, T, 1);
                return &array[self.index - 1];
            }

            pub fn entity(self: *@This()) Entity {
                return self.iter.entities[self.index - 1];
            }
        };

        pub fn init(world: World) @This() {
            var term = std.mem.zeroInit(flecs.ecs_term_t, .{ .id = world.newComponent(T) });
            return .{ .world = world, .term = term };
        }

        pub fn deinit(self: *@This()) void {
            flecs.ecs_term_fini(&self.term);
        }

        pub fn iterator(self: *@This()) Iterator {
            return Iterator.init(flecs.ecs_term_iter(self.world.world, &self.term));
        }

        pub fn each(self: *@This(), func: fn (Entity, *T) void) void {
            var iter = self.iterator();
            while (iter.next()) |e| {
                func(iter.entity(), e);
            }
        }
    };
}

pub const Filter = struct {
    world: World,
    filter: *flecs.ecs_filter_t = undefined,

    /// filter iterator that lets you fetch components via get/getOpt
    const Iterator = struct {
        iter: flecs.ecs_iter_t,
        index: usize = 0,

        pub fn init(iter: flecs.ecs_iter_t) @This() {
            return .{ .iter = iter };
        }

        pub fn next(self: *@This()) ?void {
            if (self.index >= self.iter.count) {
                self.index = 0;
                if (!flecs.ecs_filter_next(&self.iter)) return null;
            }

            self.index += 1;
        }

        pub fn entity(self: *@This()) Entity {
            return self.iter.entities[self.index - 1];
        }

        /// gets a term that is not optional
        pub fn get(self: @This(), comptime T: type) *T {
            const column_index = flecs.ecs_iter_find_column(&self.iter, componentHandle(T).*);
            return &column(&self.iter, T, column_index + 1)[self.index - 1];
        }

        /// gets a term that is not optional but is readonly
        pub fn getConst(self: @This(), comptime T: type) *const T {
            // validate the term is actually readonly in debug builds
            if (@import("builtin").mode == .Debug) {
                var comp_id = componentHandle(T).*;
                var i: usize = 0;
                while (i < self.iter.term_count) : (i += 1) {
                    if (self.iter.terms[i].id == comp_id) {
                        std.debug.assert(flecs.ecs_term_is_readonly(&self.iter, @intCast(i32, i + 1)));
                        break;
                    }
                }
            }

            const column_index = flecs.ecs_iter_find_column(&self.iter, componentHandle(T).*);
            return &column(&self.iter, T, column_index + 1)[self.index - 1];
        }

        /// gets a term that is optional. Returns null if it isnt found.
        pub fn getOpt(self: @This(), comptime T: type) ?*T {
            const column_index = flecs.ecs_iter_find_column(&self.iter, componentHandle(T).*);
            if (columnOpt(&self.iter, T, column_index + 1)) |col| {
                return &col[self.index - 1];
            }
            return null;
        }

        /// gets a term that is optional and readonly. Returns null if it isnt found.
        pub fn getConstOpt(self: @This(), comptime T: type) ?*const T {
            // validate the term is actually readonly in debug builds
            if (@import("builtin").mode == .Debug) {
                var comp_id = componentHandle(T).*;
                var i: usize = 0;
                while (i < self.iter.term_count) : (i += 1) {
                    if (self.iter.terms[i].id == comp_id) {
                        std.debug.assert(flecs.ecs_term_is_readonly(&self.iter, @intCast(i32, i + 1)));
                        break;
                    }
                }
            }

            const column_index = flecs.ecs_iter_find_column(&self.iter, componentHandle(T).*);
            if (columnOpt(&self.iter, T, column_index + 1)) |col| {
                return &col[self.index - 1];
            }
            return null;
        }
    };

    pub fn init(world: World, builder: *QueryBuilder) @This() {
        var filter = @This(){ .world = world };
        filter.filter = std.heap.c_allocator.create(flecs.ecs_filter_t) catch unreachable;
        std.debug.assert(flecs.ecs_filter_init(world.world, filter.filter, &builder.query.filter) == 0);
        return filter;
    }

    pub fn deinit(self: *@This()) void {
        flecs.ecs_filter_fini(self.filter);
        std.heap.c_allocator.destroy(self.filter);
    }

    pub fn iterator(self: *@This()) Iterator {
        return Iterator.init(flecs.ecs_filter_iter(self.world.world, self.filter));
    }

    pub fn entityIterator(self: *@This(), comptime Components: anytype) EntityIterator(Components) {
        return EntityIterator(Components).init(self.world, flecs.ecs_filter_iter(self.world.world, self.filter), flecs.ecs_filter_next);
    }

    pub fn each(self: *@This(), comptime func: anytype) void {
        const Components = switch (@typeInfo(@TypeOf(func))) {
            .BoundFn => |func_info| func_info.args[1].arg_type.?,
            .Fn => |func_info| func_info.args[0].arg_type.?,
            else => std.debug.assert("invalid func"),
        };

        var iter = self.entityIterator(Components);
        while (iter.next()) |comps| {
            @call(.{ .modifier = .always_inline }, func, .{comps});
        }
    }
};

pub const Query = struct {
    world: World,
    query: *flecs.ecs_query_t,

    pub fn init(world: World, builder: *QueryBuilder) @This() {
        return .{ .world = world, .query = flecs.ecs_query_init(world.world, &builder.query).? };
    }

    pub fn deinit(self: *@This()) void {
        flecs.ecs_query_fini(self.query);
    }
};

pub fn EntityIterator(comptime Components: anytype) type {
    std.debug.assert(@typeInfo(Components) == .Struct);

    return struct {
        iter: flecs.ecs_iter_t,
        index: usize = 0,
        nextFn: fn ([*c]flecs.ecs_iter_t) callconv(.C) bool,

        pub fn init(_: World, iter: flecs.ecs_iter_t, nextFn: fn ([*c]flecs.ecs_iter_t) callconv(.C) bool) @This() {
            if (@import("builtin").mode == .Debug) {
                const component_info = @typeInfo(Components).Struct;
                inline for (component_info.fields) |field, i| {
                    const is_optional = @typeInfo(field.field_type) == .Optional;
                    const is_readonly = (@typeInfo(field.field_type) == .Pointer and @typeInfo(field.field_type).Pointer.is_const) or (@typeInfo(std.meta.Child(field.field_type)) == .Pointer and @typeInfo(std.meta.Child(field.field_type)).Pointer.is_const);
                    const child = std.meta.Child(field.field_type);
                    const col_type = if (is_optional) std.meta.Child(child) else child;
                    const type_entity = componentHandle(col_type).*;

                    // ensure order matches for terms vs struct fields
                    std.debug.assert(iter.terms[i].id == type_entity);

                    // validate readonly (non-ptr types in the struct) matches up with the inout
                    if (is_readonly) std.debug.assert(iter.terms[i].inout == flecs.EcsIn);
                    if (iter.terms[i].inout == flecs.EcsIn) std.debug.assert(is_readonly);

                    // validate optionals (?* types in the struct) mathces up with valid opers
                    if (is_optional) std.debug.assert(iter.terms[i].oper == flecs.EcsOr or iter.terms[i].oper == flecs.EcsOptional);
                    if (iter.terms[i].oper == flecs.EcsOr or iter.terms[i].oper == flecs.EcsOptional) std.debug.assert(is_optional);
                }
            }

            return .{ .iter = iter, .nextFn = nextFn };
        }

        pub fn next(self: *@This()) ?Components {
            if (self.index >= self.iter.count) {
                self.index = 0;
                if (!self.nextFn(&self.iter)) return null;
            }

            var comps: Components = undefined;
            inline for (@typeInfo(Components).Struct.fields) |field, i| {
                const is_optional = @typeInfo(field.field_type) == .Optional;
                const child = std.meta.Child(field.field_type);
                const col_type = if (is_optional) std.meta.Child(child) else child;

                // TODO: handle readonly with ecs_term_is_readonly? perhaps just for an assert?
                if (is_optional) @field(comps, field.name) = null;
                const column_index = if (is_optional) flecs.ecs_iter_find_column(&self.iter, componentHandle(col_type).*) else i;

                // const is_set = flecs.ecs_term_is_set(&self.iter, i + 1); // Flecs bug?
                // std.debug.print("---- col_type: {any}, optional: {any}, i: {d}, col_index: {d}, is_set: {d}\n", .{ col_type, is_optional, i, column_index, is_set });
                if (columnOpt(&self.iter, col_type, column_index + 1)) |col| {
                    @field(comps, field.name) = &col[self.index];
                }
            }

            self.index += 1;
            return comps;
        }
    };
}

pub fn column(iter: [*c]const flecs.ecs_iter_t, comptime T: type, index: i32) [*]T {
    var col = flecs.ecs_term_w_size(iter, @sizeOf(T), index);
    return @ptrCast([*]T, @alignCast(@alignOf(T), col));
}

/// returns null in the case of column not being present. We need this because we cant check the column_index at runtime due to a zig
/// bug thinking it is comptime known only.
pub fn columnOpt(iter: [*c]const flecs.ecs_iter_t, comptime T: type, index: i32) ?[*]T {
    if (index <= 0) return null;
    var col = flecs.ecs_term_w_size(iter, @sizeOf(T), index);
    if (col == null) return null;
    return @ptrCast([*]T, @alignCast(@alignOf(T), col));
}

/// used with ecs_iter_find_column to fetch data from terms not in the query
pub fn columnNonQuery(iter: [*c]const flecs.ecs_iter_t, comptime T: type, index: i32) ?[*]T {
    if (index <= 0) return null;
    var col = flecs.ecs_iter_column_w_size(iter, @sizeOf(T), index - 1);
    if (col == null) return null;
    return @ptrCast([*]T, @alignCast(@alignOf(T), col));
}

// Builtin pipeline tags
pub const Phase = enum(flecs.ecs_entity_t) {
    monitor = flecs.ECS_HI_COMPONENT_ID + 61,
    inactive = flecs.ECS_HI_COMPONENT_ID + 63,
    pipeline = flecs.ECS_HI_COMPONENT_ID + 64,
    pre_frame = flecs.ECS_HI_COMPONENT_ID + 65,
    on_load = flecs.ECS_HI_COMPONENT_ID + 66,
    post_load = flecs.ECS_HI_COMPONENT_ID + 67,
    pre_update = flecs.ECS_HI_COMPONENT_ID + 68,
    on_update = flecs.ECS_HI_COMPONENT_ID + 69,
    on_validate = flecs.ECS_HI_COMPONENT_ID + 70,
    post_update = flecs.ECS_HI_COMPONENT_ID + 71,
    pre_store = flecs.ECS_HI_COMPONENT_ID + 72,
    on_store = flecs.ECS_HI_COMPONENT_ID + 73,
    post_frame = flecs.ECS_HI_COMPONENT_ID + 74,
};
