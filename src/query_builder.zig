const std = @import("std");
const flecs = @import("flecs.zig");

pub const QueryBuilder = struct {
    world: flecs.World,
    query: flecs.ecs_query_desc_t,
    expr: [*c]const u8 = null,
    terms_count: usize = 0,

    pub fn init(world: flecs.World) @This() {
        return .{
            .world = world,
            .query = std.mem.zeroes(flecs.ecs_query_desc_t),
        };
    }

    /// adds an InOut (read/write) component to the query
    pub fn with(self: *@This(), comptime T: type) *@This() {
        self.query.filter.terms[self.terms_count].id = self.world.newComponent(T);
        self.terms_count += 1;
        return self;
    }

    pub fn withReadonly(self: *@This(), comptime T: type) *@This() {
        self.query.filter.terms[self.terms_count].id = self.world.newComponent(T);
        self.query.filter.terms[self.terms_count].inout = flecs.EcsIn;
        self.terms_count += 1;
        return self;
    }

    pub fn withWriteonly(self: *@This(), comptime T: type) *@This() {
        self.query.filter.terms[self.terms_count].id = self.world.newComponent(T);
        self.query.filter.terms[self.terms_count].inout = flecs.EcsOut;
        self.terms_count += 1;
        return self;
    }

    pub fn without(self: *@This(), comptime T: type) *@This() {
        self.query.filter.terms[self.terms_count] = std.mem.zeroInit(flecs.ecs_term_t, .{
            .id = self.world.newComponent(T),
            .oper = flecs.EcsNot,
        });
        self.terms_count += 1;
        return self;
    }

    pub fn optional(self: *@This(), comptime T: type) *@This() {
        self.query.filter.terms[self.terms_count] = std.mem.zeroInit(flecs.ecs_term_t, .{
            .id = self.world.newComponent(T),
            .oper = flecs.EcsOptional,
        });
        self.terms_count += 1;
        return self;
    }

    pub fn either(self: *@This(), comptime T1: type, comptime T2: type) *@This() {
        self.query.filter.terms[self.terms_count] = std.mem.zeroInit(flecs.ecs_term_t, .{
            .id = self.world.newComponent(T1),
            .oper = flecs.EcsOr,
        });
        self.terms_count += 1;
        self.query.filter.terms[self.terms_count] = std.mem.zeroInit(flecs.ecs_term_t, .{
            .id = self.world.newComponent(T2),
            .oper = flecs.EcsOr,
        });
        self.terms_count += 1;
        return self;
    }

    /// inject a plain old string expression into the builder
    pub fn expression(self: *@This(), expr: [*c]const u8) *@This() {
        self.query.filter.expr = expr;
        return self;
    }

    pub fn singleton(self: *@This(), comptime T: type, entity: flecs.EntityId) *@This() {
        self.query.filter.terms[self.terms_count] = std.mem.zeroInit(flecs.ecs_term_t, .{ .id = self.world.newComponent(T) });
        self.query.filter.terms[self.terms_count].subj.entity = entity;
        self.terms_count += 1;
        return self;
    }

    /// queries/system only
    pub fn orderBy(self: *@This(), comptime T: type, orderByFn: fn (flecs.EntityId, ?*const anyopaque, flecs.EntityId, ?*const anyopaque) callconv(.C) c_int) *@This() {
        self.query.order_by_component = self.world.newComponent(T);
        self.query.order_by = orderByFn;
        return self;
    }

    /// queries/system only
    pub fn orderByEntity(self: *@This(), orderByFn: fn (flecs.EntityId, ?*const anyopaque, flecs.EntityId, ?*const anyopaque) callconv(.C) c_int) *@This() {
        self.query.order_by = orderByFn;
        return self;
    }

    pub fn buildFilter(self: *@This()) flecs.Filter {
        return flecs.Filter.init(self.world, self);
    }

    pub fn buildQuery(self: *@This()) flecs.Query {
        return flecs.Query.init(self.world, self);
    }
};
