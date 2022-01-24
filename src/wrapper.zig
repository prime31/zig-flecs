const flecs = @import("flecs.zig");
const std = @import("std");
extern fn _ogNewComponent(world: *flecs.ecs_world_t, name: [*c]const u8, size: i32, alignment: i32) flecs.Entity;
extern fn _ogNewSystem(world: *flecs.ecs_world_t, name: [*c]const u8, phase: u64, expr: [*c]const u8, action: flecs.ecs_iter_action_t) flecs.Entity;
extern fn _ogNewType(world: *flecs.ecs_world_t, entity: flecs.Entity, expr: [*c]const u8) flecs.Entity;


pub fn ogNewComponent(world: flecs.World, comptime T: type) flecs.Entity {
    return _ogNewComponent(world.world, @typeName(T), @sizeOf(T), @alignOf(T));
}

pub fn ogNewSystem(world: flecs.World, name: [*c]const u8, phase: flecs.ecs_entity_t, expr: [*c]const u8, action: flecs.ecs_iter_action_t) flecs.Entity {
    return _ogNewSystem(world.world, name, phase, expr, action);
}

pub fn ogNewType(world: flecs.World, entity: flecs.Entity, expr: [*c]const u8) flecs.Entity {
    return _ogNewType(world.world, entity, expr);
}
