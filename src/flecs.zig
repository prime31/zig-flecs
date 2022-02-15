pub usingnamespace @import("c.zig");
const flecs = @import("c.zig");
const std = @import("std");

// TODO: why does translate-c fail for cImport but succeeds when used directly?
// const flecs = @cImport(@cInclude("flecs.h"));
// pub usingnamespace flecs;

pub const EntityId = flecs.ecs_entity_t;
pub const World = @import("world.zig").World;
pub const QueryBuilder = @import("query_builder.zig").QueryBuilder;
pub const Term = @import("term.zig").Term;
pub const Filter = @import("filter.zig").Filter;
pub const Query = @import("query.zig").Query;

pub const EntityIterator = @import("entity_iterator.zig").EntityIterator;
pub const TableIterator = @import("table_iterator.zig").TableIterator;

pub usingnamespace @import("utils.zig");


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
