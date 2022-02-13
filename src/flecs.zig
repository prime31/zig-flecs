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
            .add = [1]flecs.ecs_id_t {flecs.EcsPrefab} + [_]flecs.ecs_id_t {0} ** 31,
        });
        return flecs.ecs_entity_init(self.world, &desc);
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

    pub fn term(self: World, comptime T: type) Term(T) {
        return Term(T).init(self);
    }

    pub fn filterFromBuilder(self: World, builder: QueryBuilder, filter: *flecs.ecs_filter_t) void {
        var desc = std.mem.zeroes(flecs.ecs_filter_desc_t);
        std.mem.copy(flecs.ecs_term_t, &desc.terms, &builder.terms);

        std.debug.assert(flecs.ecs_filter_init(self.world, filter, &desc) == 0);
    }

    pub fn filterInit(self: World, expr: [*c]const u8) flecs.ecs_filter_t {
        var desc = std.mem.zeroes(flecs.ecs_filter_desc_t);
        desc.expr = expr;

        var filter: flecs.ecs_filter_t = undefined;
        std.debug.assert(flecs.ecs_filter_init(self.world, &filter, &desc) == 0);
        return filter;
    }

    pub fn filterIter(self: World, filter: *flecs.ecs_filter_t) flecs.ecs_iter_t {
        return flecs.ecs_filter_iter(self.world, filter);
    }

    pub fn filterDeinit(_: World, filter: *flecs.ecs_filter_t) void {
        flecs.ecs_filter_fini(filter);
    }

    pub fn queryInit(self: World, expr: [*c]const u8) *flecs.ecs_query_t {
        var desc = std.mem.zeroes(flecs.ecs_query_desc_t);
        desc.filter.expr = expr;
        return flecs.ecs_query_init(self.world, &desc).?;
    }

    pub fn queryIter(self: World, query: *flecs.ecs_query_t) flecs.ecs_iter_t {
        return flecs.ecs_query_iter(self.world, query);
    }

    pub fn queryDeinit(_: World, query: *flecs.ecs_query_t) void {
        flecs.ecs_query_fini(query);
    }

    pub fn setName(self: World, entity: Entity, name: [*c]const u8) void {
        _ = flecs.ecs_set_name(self.world, entity, name);
    }

    pub fn getName(self: World, entity: Entity) [*c]const u8 {
        return flecs.ecs_get_name(self.world, entity);
    }

    pub fn set(self: *World, entity: Entity, ptr: anytype) void {
        std.debug.assert(@typeInfo(@TypeOf(ptr)) == .Pointer);

        const child = std.meta.Child(@TypeOf(ptr));
        _ = flecs.ecs_set_id(self.world, entity, self.newComponent(child), @sizeOf(child), ptr);
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


pub fn column(self: [*c]const flecs.ecs_iter_t, comptime T: type, index: i32) [*]T {
    var col = flecs.ecs_term_w_size(self, @sizeOf(T), index);
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
