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
pub const Type = @import("type.zig").Type;

pub const Iterator = @import("iterator.zig").Iterator;
pub const TableIterator = @import("table_iterator.zig").TableIterator;

pub usingnamespace @import("utils.zig");
pub const meta = @import("meta.zig");

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

pub const Event = enum(c.ecs_id_t) {
    // Event. Triggers when an id (component, tag, pair) is added to an entity
    on_add = c.ECS_HI_COMPONENT_ID + 30,
    // Event. Triggers when an id (component, tag, pair) is removed from an entity
    on_remove = c.ECS_HI_COMPONENT_ID + 31,
    // Event. Triggers when a component is set for an entity
    on_set = c.ECS_HI_COMPONENT_ID + 32,
    // Event. Triggers when a component is unset for an entity 
    un_set = c.ECS_HI_COMPONENT_ID + 33,
    // Event. Triggers when an entity is deleted.
    on_delete = c.ECS_HI_COMPONENT_ID + 34,
    // Event. Exactly-once trigger for when an entity matches/unmatches a filter
    monitor = c.ECS_HI_COMPONENT_ID + 61,
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
    default = c.EcsInOutDefault, // in_out for regular terms, in for shared terms
    filter = c.EcsInOutFilter, // neither read nor written. Cannot have a query term.
    in_out = c.EcsInOut, // read/write
    in = c.EcsIn, // read only. Query term is const.
    out = c.EcsOut, // write only
};

pub fn pairFirst(id: EntityId) u32 {
    return @truncate(u32, (id & c.ECS_COMPONENT_MASK) >> 32);
}

pub fn pairSecond(id: EntityId) u32 {
    return @truncate(u32, id);
}
