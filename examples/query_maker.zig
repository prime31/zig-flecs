const std = @import("std");
const flecs = @import("flecs");

pub const Velocity = struct { x: f32, y: f32 };
pub const Position = struct { x: f32, y: f32 };
pub const Acceleration = struct { x: f32, y: f32 };
pub const Player = struct { id: u8 = 0 };
pub const Enemy = struct { id: u64 = 0 };

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
    var desc = std.mem.zeroes(flecs.ecs_filter_desc_t);

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
    inout: flecs.ecs_inout_kind_t = flecs.EcsInOutDefault,
    oper: flecs.ecs_oper_kind_t = flecs.EcsAnd,

    pub fn format(comptime value: TermInfo, comptime fmt: []const u8, options: std.fmt.FormatOptions, writer: anytype) !void {
        _ = options;
        _ = fmt;
        const inout = switch (value.inout) {
            flecs.EcsAnd => "And",
            flecs.EcsOr => "Or",
            flecs.EcsNot => "Not",
            flecs.EcsOptional => "Optional",
            else => unreachable,
        };
        const oper = switch (value.oper) {
            flecs.EcsInOutDefault => "InOutDefault",
            flecs.EcsInOutFilter => "Filter",
            flecs.EcsIn => "In",
            flecs.EcsOut => "Out",
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
        term_info.oper = flecs.EcsOr;
    }

    std.debug.assert(!@hasDecl(t, "term_type") and !@hasDecl(t, "term_type1"));

    term_info.term_type = t;

    return term_info;
}

pub fn Readonly(comptime T: type) type {
    return struct {
        pub const inout = flecs.EcsIn;
        term_type: T,
    };
}

pub fn Writeonly(comptime T: type) type {
    return struct {
        pub const inout = flecs.EcsOut;
        term_type: T,
    };
}

pub fn Filter(comptime T: type) type {
    return struct {
        pub const inout = flecs.EcsInOutFilter;
        term_type: T,
    };
}

pub fn Optional(comptime T: type) type {
    return struct {
        pub const oper = flecs.EcsOptional;
        term_type: T,
    };
}

pub fn Not(comptime T: type) type {
    return struct {
        pub const oper = flecs.EcsNot;
        term_type: T,
    };
}

pub fn Or(comptime T1: type, comptime T2: type) type {
    return struct {
        term_type1: T1,
        term_type2: T2,
    };
}

// this tuple matches what the QueryBuilder does below so we can swap it to test
const same_as_builder = .{ Filter(Position), Velocity, Optional(Acceleration), Or(Player, Enemy) };


// other way with structs hand-written. this allows you to define your `each` struct which acts as the base to generate the ecs_filter_desc_t.
// additinal data is sent to create* with modifiers on the types (NOT, OR, etc)
const EntityEachCallbackType = struct {
    vel: *const Velocity, // In + And
    acc: ?*Acceleration, // needs metadata. could be Or or Optional
    player: ?*Player,
    enemy: ?*Enemy,
};

// alternative idea: if the callback type has arrays provide a TableIterator. If it is single item pointers provide an EntityIterator
const TableEachCallbackType = struct {
    vel: *const Velocity, // In + And
    acc: ?*Acceleration, // needs metadata. could be Or or Optional
    player: ?*Player,
    enemy: ?*Enemy,
};
//createFilter(world, EachCallbackType, .{ Or(Player, Enemy), Not(Position) });

pub fn main() !void {
    var world = flecs.World.init();
    defer world.deinit();

    // const query1 = QueryTemplate.init(world, .{ Optional(Readonly((Position))), Velocity, Not(Acceleration), Or(Enemy, Player) });
    // const query2 = QueryTemplate.init(world, .{ Not(Acceleration), Filter(Or(Enemy, Player)) });
    const query3 = createQuery(.{ Filter(Position), Velocity, Optional(Acceleration), Or(Enemy, Player) });

    // std.debug.print("{any}\n", .{query1.terms[1]});
    // std.debug.print("{any}\n", .{query2.terms[1]});
    std.debug.print("{any}", .{query3.terms[1]});

    const entity1 = world.newEntityWithName("MyEntityYo");
    const entity2 = world.newEntityWithName("MyEntity2");
    const entity3 = world.newEntityWithName("HasAccel");
    const entity4 = world.newEntityWithName("HasNoVel");

    entity1.set(Position{ .x = 0, .y = 0 });
    entity1.set(Velocity{ .x = 1.1, .y = 1.1 });
    entity1.set(Enemy{ .id = 66 });

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

    std.debug.print("\n\niterate with a Filter entityIterator\n", .{});
    var entity_iter = filter.entityIterator(struct { vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy });
    while (entity_iter.next()) |comps| {
        std.debug.print("comps: {any}\n", .{comps});
    }

    // std.debug.print("\n\niterate with a Filter tableIterator\n", .{});
    // var table_iter = filter.tableIterator(struct { vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy });
    // while (table_iter.next()) |it| {
    //     var i: usize = 0;
    //     while (i < it.count) : (i += 1) {
    //         const accel = if (it.data.acc) |acc| acc[i] else null;
    //         const player = if (it.data.player) |play| play[i] else null;
    //         const enemy = if (it.data.enemy) |en| en[i] else null;
    //         std.debug.print("i: {d}, vel: {d}, acc: {d}, player: {d}, enemy: {d}\n", .{ i, it.data.vel[i], accel, player, enemy });
    //     }
    // }

    // std.debug.print("\n\niterate with a Filter each with a single struct of components\n", .{});
    // filter.each(eachFilter);
    // std.debug.print("\n\niterate with a Filter each with a param per component\n", .{});
    // filter.each(eachFilterSeperateParams);
}

fn eachFilter(e: struct { vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy }) void {
    std.debug.print("comps: {any}\n", .{e});
}

fn eachFilterSeperateParams(vel: *Velocity, acc: ?*Acceleration, player: ?*Player, enemy: ?*Enemy) void {
    std.debug.print("vel: {d}, acc: {d}, player: {d}, enemy: {d}\n", .{ vel, acc, player, enemy });
}
