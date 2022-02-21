pub const c = @import("c.zig");
const std = @import("std");

// TODO: why does translate-c fail for cImport but succeeds when used directly?
// const flecs = @cImport(@cInclude("flecs.h"));
// pub usingnamespace flecs;

pub const queries = @import("queries.zig");

pub const EntityId = c.ecs_entity_t;
pub const Entity = @import("entity.zig").Entity;
pub const World = @import("world.zig").World;
pub const QueryBuilder = @import("query_builder.zig").QueryBuilder;
pub const Term = @import("term.zig").Term;
pub const Filter = @import("filter.zig").Filter;
pub const Query = @import("query.zig").Query;

pub const Iterator = @import("iterator.zig").Iterator;
pub const TableIterator = @import("table_iterator.zig").TableIterator;

pub usingnamespace @import("utils.zig");

// Builtin pipeline tags
pub const Phase = enum(c.ecs_id_t) {
    monitor = c.ECS_HI_COMPONENT_ID + 61,
    inactive = c.ECS_HI_COMPONENT_ID + 63,
    pipeline = c.ECS_HI_COMPONENT_ID + 64,
    pre_frame = c.ECS_HI_COMPONENT_ID + 65,
    on_load = c.ECS_HI_COMPONENT_ID + 66,
    post_load = c.ECS_HI_COMPONENT_ID + 67,
    pre_update = c.ECS_HI_COMPONENT_ID + 68,
    on_update = c.ECS_HI_COMPONENT_ID + 69,
    on_validate = c.ECS_HI_COMPONENT_ID + 70,
    post_update = c.ECS_HI_COMPONENT_ID + 71,
    pre_store = c.ECS_HI_COMPONENT_ID + 72,
    on_store = c.ECS_HI_COMPONENT_ID + 73,
    post_frame = c.ECS_HI_COMPONENT_ID + 74,
};

pub const OperKind = enum(c_int) {
    and_ = c.EcsAnd,
    or_ = c.EcsOr,
    not = c.EcsNot,
    optional = c.EcsOptional,
    and_from = c.EcsAndFrom,
    or_from = c.EcsOrFrom,
    not_from = c.EcsNotFrom,
};

pub const InOutKind = enum(c_int) {
    default = c.EcsInOutDefault,    // in_out for regular terms, in for shared terms
    filter = c.EcsInOutFilter,      // neither read nor written. Cannot have a query term.
    in_out = c.EcsInOut,            // read/write
    in = c.EcsIn,                   // read only. Query term is const.
    out = c.EcsOut,                 // write only
};
