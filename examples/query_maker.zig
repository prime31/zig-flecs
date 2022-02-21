const std = @import("std");
const flecs = @import("flecs");
const q = flecs.queries;

pub const Velocity = struct { x: f32, y: f32 };
pub const Position = struct { x: f32, y: f32 };
pub const Acceleration = struct { x: f32, y: f32 };
pub const Player = struct { id: u8 = 0 };
pub const Enemy = struct { id: u64 = 0 };
pub const PopTart = struct { id: u64 = 0 };
pub const Shit = struct {
    pub const Fuck = struct { id: u8 = 0 };
};
pub const FunkLocity = Wrapper(Velocity);

pub fn Wrapper(comptime t: type) type {
    return struct {
        inner: t,
    };
}

pub fn createQuery(comptime terms: anytype) struct { terms: []TermInfo } {
    var term_infos: [terms.len]TermInfo = undefined;
    inline for (terms) |term, i| {
        term_infos[i] = extractTermInfo(term);
    }

    return .{
        .terms = &term_infos,
    };
}

pub fn createFilter(world: flecs.World, comptime terms: anytype) flecs.Filter {
    var desc = std.mem.zeroes(flecs.c.ecs_filter_desc_t);

    var term_count: usize = 0;
    inline for (terms) |t| {
        const term = extractTermInfo(t);
        desc.terms[term_count].id = world.componentId(term.term_type);
        desc.terms[term_count].inout = term.inout;
        desc.terms[term_count].oper = term.oper;

        if (term.or_term_type) |or_type| {
            term_count += 1;
            desc.terms[term_count].id = world.componentId(or_type);
            desc.terms[term_count].inout = term.inout;
            desc.terms[term_count].oper = term.oper;
        }
        term_count += 1;
    }

    return flecs.Filter.init(world, &desc);
}

const TermInfo = struct {
    term_type: type = undefined,
    or_term_type: ?type = null,
    inout: flecs.c.ecs_inout_kind_t = flecs.c.EcsInOutDefault,
    oper: flecs.c.ecs_oper_kind_t = flecs.c.EcsAnd,

    pub fn format(comptime value: TermInfo, comptime fmt: []const u8, options: std.fmt.FormatOptions, writer: anytype) !void {
        _ = options;
        _ = fmt;
        const inout = switch (value.inout) {
            flecs.c.EcsAnd => "And",
            flecs.c.EcsOr => "Or",
            flecs.c.EcsNot => "Not",
            flecs.c.EcsOptional => "Optional",
            else => unreachable,
        };
        const oper = switch (value.oper) {
            flecs.c.EcsInOutDefault => "InOutDefault",
            flecs.c.EcsInOutFilter => "Filter",
            flecs.c.EcsIn => "In",
            flecs.c.EcsOut => "Out",
            else => unreachable,
        };
        try std.fmt.format(writer, "TermInfo{{ type = {d}, or_type = {d}, inout: {s}, oper: {s} }}", .{ value.term_type, value.or_term_type, inout, oper });
    }

    pub fn validate(comptime self: TermInfo) void {
        _ = self;
    }
};

pub fn extractTermInfo(comptime T: type) TermInfo {
    var term_info = TermInfo{};
    comptime var t = T;

    // dig through all the layers of modifiers which will each have a term_type field
    while (std.meta.fieldIndex(t, "term_type")) |index| {
        const fields = std.meta.fields(t);
        const fi = fields[index];

        if (@hasDecl(t, "inout")) {
            if (term_info.inout != 0) @compileError("Bad inout in query. Previous modifier already set inout. " ++ @typeName(T));
            term_info.inout = @field(t, "inout");
        }
        if (@hasDecl(t, "oper")) {
            if (term_info.oper != 0) @compileError("Bad oper in query. Previous modifier already set oper. " ++ @typeName(T));
            term_info.oper = @field(t, "oper");
        }

        t = fi.field_type;
    }

    // if the final unwrapped type is an Or it will have term_type1
    if (std.meta.fieldIndex(t, "term_type1")) |_| {
        const fields = std.meta.fields(t);
        t = fields[0].field_type;
        term_info.or_term_type = fields[1].field_type;

        if (term_info.oper != 0) @compileError("Bad oper in query. Previous modifier already set oper. " ++ @typeName(T));
        term_info.oper = flecs.c.EcsOr;
    }

    std.debug.assert(!@hasDecl(t, "term_type") and !@hasDecl(t, "term_type1"));

    term_info.term_type = t;

    return term_info;
}

pub fn Readonly(comptime T: type) type {
    return struct {
        pub const inout = flecs.c.EcsIn;
        term_type: T,
    };
}

pub fn Optional(comptime T: type) type {
    return struct {
        pub const oper = flecs.c.EcsOptional;
        term_type: T,
    };
}

pub fn Writeonly(comptime T: type) type {
    return struct {
        pub const inout = flecs.c.EcsOut;
        term_type: T,
    };
}

pub fn Filter(comptime T: type) type {
    return struct {
        pub const inout = flecs.c.EcsInOutFilter;
        term_type: T,
    };
}

pub fn Not(comptime T: type) type {
    return struct {
        pub const oper = flecs.c.EcsNot;
        term_type: T,
    };
}

// Or is an oper
pub fn Or(comptime T1: type, comptime T2: type) type {
    return struct {
        term_type1: T1,
        term_type2: T2,
    };
}


// this tuple matches what the QueryBuilder does below so we can swap it to test
const same_as_builder = .{ Filter(Position), Velocity, Optional(Acceleration), Or(Player, Enemy) };

const TableEachCallbackType = struct {
    vel: *const Velocity, // In + And
    acc: ?*Acceleration, // needs metadata. could be Or or Optional. If no metadata can assume Optional.
    player: ?*Player,
    enemy: ?*Enemy,

    // allowed modifiers: Filter, Not, WriteOnly, Or (soon AndFrom, OrFrom, NotFrom)
    pub const modifiers = .{ q.Filter(PopTart), q.Filter(q.Or(Player, Enemy)), q.Writeonly(Acceleration), q.Not(FunkLocity) };
    pub const order_by = orderBy;
    pub const name = "SuperSystem";
};

//createFilter(world, EachCallbackType, .{ Or(Player, Enemy), Not(Position) });

pub fn main() !void {
    var world = flecs.World.init();
    defer world.deinit();

    var f = world.filter(TableEachCallbackType);
    std.debug.print("----- {s}\n", .{f.asString()});

    var query = world.query(TableEachCallbackType);
    std.debug.print("----- {s}\n", .{query.asString()});
    // world.system(TableEachCallbackType, system, .on_update);

    // const query1 = QueryTemplate.init(world, .{ Optional(Readonly((Position))), Velocity, Not(Acceleration), Or(Enemy, Player) });
    // const query2 = QueryTemplate.init(world, .{ Not(Acceleration), Filter(Or(Enemy, Player)) });
    // const query3 = createQuery(.{ Filter(Position), Velocity, Optional(Acceleration), Or(Enemy, Player) });

    // std.debug.print("{any}\n", .{query1.terms[1]});
    // std.debug.print("{any}\n", .{query2.terms[1]});
    // std.debug.print("{any}", .{query3.terms[1]});

    const entity1 = world.newEntityWithName("MyEntityYo");
    const entity2 = world.newEntityWithName("MyEntity2");
    const entity3 = world.newEntityWithName("HasAccel");
    const entity4 = world.newEntityWithName("HasNoVel");

    entity1.set(Position{ .x = 0, .y = 0 });
    entity1.set(Velocity{ .x = 1.1, .y = 1.1 });
    entity1.set(Enemy{ .id = 66 });
    entity1.set(FunkLocity{ .inner = .{ .x = 555, .y = 666 } });

    entity2.set(Position{ .x = 2, .y = 2 });
    entity2.set(Velocity{ .x = 1.2, .y = 1.2 });
    entity2.set(Player{ .id = 3 });

    entity3.set(Position{ .x = 3, .y = 3 });
    entity3.set(Velocity{ .x = 1.2, .y = 1.2 });
    entity3.set(Player{ .id = 4 });

    entity4.set(Position{ .x = 4, .y = 4 });
    entity4.set(Acceleration{ .x = 1.2, .y = 1.2 });

    // var builder = flecs.QueryBuilder.init(world)
    //     .withFilter(Position)
    //     .with(Velocity)
    //     .optional(Acceleration)
    //     .either(Player, Enemy);

    // var filter = builder.buildFilter();
    var filter = createFilter(world, same_as_builder);
    defer filter.deinit();

    // std.debug.print("\n\niterate with a Filter entityIterator\n", .{});
    // var entity_iter = filter.iterator(struct { vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy });
    // while (entity_iter.next()) |comps| {
    //     std.debug.print("comps: {any}\n", .{comps});
    // }
}

fn eachFilter(e: struct { vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy }) void {
    std.debug.print("comps: {any}\n", .{e});
}

fn eachFilterSeperateParams(vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy) void {
    std.debug.print("vel: {d}, acc: {d}, player: {d}, enemy: {d}\n", .{ vel, acc, player, enemy });
}

fn system(iter: *flecs.Iterator(TableEachCallbackType)) void {
    while (iter.next()) |e| {
        std.debug.print("WRAPPED: p: {d}, v: {d} - {s}\n", .{ e.pos, e.vel, iter.entity().getName() });
    }
}

fn orderBy(_: flecs.EntityId, c1: *const Velocity, _: flecs.EntityId, c2: *const Velocity) c_int {
    std.debug.print("c1: {any}, c2: {any}\n", .{c1, c2});
    return if (c1.x < c2.x) 1 else -1;
}
