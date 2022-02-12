const std = @import("std");
const flecs = @import("flecs.zig");

pub const QueryBuilder = struct {
    world: flecs.World,
    terms: [32]flecs.ecs_term_t = undefined, // [_]flecs.ecs_term_t {std.mem.zeroes(flecs.ecs_term_t)} ** 32
    terms_count: usize = 0,

    pub fn init(world: flecs.World) @This() {
        return .{ .world = world };
    }

    pub fn with(self: *@This(), comptime T: type) *@This() {
        self.terms[self.terms_count] = std.mem.zeroInit(flecs.ecs_term_t, .{
            .id = self.world.newComponent(T)
        });
        self.terms_count += 1;
        return self;
    }

    pub fn without(self: *@This(), comptime T: type) *@This() {
        self.terms[self.terms_count] = std.mem.zeroInit(flecs.ecs_term_t, .{
            .id = self.world.newComponent(T),
            .oper = flecs.EcsNot,
        });
        self.terms_count += 1;
        return self;
    }

    pub fn optional(self: *@This(), comptime T: type) *@This() {
        self.terms[self.terms_count] = std.mem.zeroInit(flecs.ecs_term_t, .{
            .id = self.world.newComponent(T),
            .oper = flecs.EcsOptional,
        });
        self.terms_count += 1;
        return self;
    }

    pub fn either(self: *@This(), comptime T1: type, comptime T2: type) *@This() {
        self.terms[self.terms_count] = std.mem.zeroInit(flecs.ecs_term_t, .{
            .id = self.world.newComponent(T1),
            .oper = flecs.EcsOr,
        });
        self.terms_count += 1;
        self.terms[self.terms_count] = std.mem.zeroInit(flecs.ecs_term_t, .{
            .id = self.world.newComponent(T2),
            .oper = flecs.EcsOr,
        });
        self.terms_count += 1;
        return self;
    }

    /// acts on the last added term only if it was a with
    pub fn inout(self: *@This(), val: enum { in, out, inout }) *@This() {
        // only allow this to be set for EcsAnd oper (with method)
        std.debug.assert(self.terms[self.terms_count - 1].oper == 0);

        self.terms[self.terms_count - 1].inout = switch (val) {
            .in => flecs.EcsIn,
            .out => flecs.EcsOut,
            .inout => flecs.EcsInOut,
        };
        return self;
    }

    pub fn singleton(self: *@This(), comptime T: type, entity: flecs.Entity) *@This() {
        self.terms[self.terms_count] = std.mem.zeroInit(flecs.ecs_term_t, .{
            .id = self.world.newComponent(T)
        });
        self.terms[self.terms_count].subj.entity = entity;
        self.terms_count += 1;
        return self;
    }
};