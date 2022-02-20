const std = @import("std");
const flecs = @import("flecs.zig");

const assert = std.debug.assert;

/// given a type that is wrapped by any query modifiers (Or, And, Filter, etc) it unwraps the term data and validates it.
pub const TermInfo = struct {
    term_type: type = undefined,
    or_term_type: ?type = null,
    inout: flecs.c.ecs_inout_kind_t = flecs.c.EcsInOutDefault,
    oper: flecs.c.ecs_oper_kind_t = flecs.c.EcsAnd,

    pub fn init(comptime T: type) TermInfo {
        var term_info = TermInfo{};
        comptime var t = T;

        // dig through all the layers of modifiers which will each have a term_type field
        while (std.meta.fieldIndex(t, "term_type")) |index| {
            const fields = std.meta.fields(t);
            const fi = fields[index];

            if (@hasDecl(t, "inout")) {
                if (term_info.inout != 0) @compileError("Bad inout in query. Previous modifier already set inout. " ++ @typeName(T));
                term_info.inout = @enumToInt(@field(t, "inout"));
            }
            if (@hasDecl(t, "oper")) {
                if (term_info.oper != 0) @compileError("Bad oper in query. Previous modifier already set oper. " ++ @typeName(T));
                term_info.oper = @enumToInt(@field(t, "oper"));
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

        assert(!@hasDecl(t, "term_type") and !@hasDecl(t, "term_type1"));

        term_info.term_type = t;
        term_info.validate();

        return term_info;
    }

    fn validate(comptime self: TermInfo) void {
        if (self.inout == flecs.c.EcsInOutFilter and self.oper == flecs.c.EcsNot) @compileError("Filter cant be combined with Not");
        if (self.oper == flecs.c.EcsNot and self.inout != flecs.c.EcsInOutDefault) @compileError("Not cant be combined with any other modifiers");
    }

    pub fn format(comptime value: TermInfo, comptime _: []const u8, _: std.fmt.FormatOptions, writer: anytype) !void {
        const inout = switch (value.inout) {
            flecs.c.EcsInOutDefault => "InOutDefault",
            flecs.c.EcsInOutFilter => "Filter",
            flecs.c.EcsIn => "In",
            flecs.c.EcsOut => "Out",
            else => unreachable,
        };
        const oper = switch (value.oper) {
            flecs.c.EcsAnd => "And",
            flecs.c.EcsOr => "Or",
            flecs.c.EcsNot => "Not",
            flecs.c.EcsOptional => "Optional",
            else => unreachable,
        };
        try std.fmt.format(writer, "TermInfo{{ type = {d}, or_type = {d}, inout: {s}, oper: {s} }}", .{ value.term_type, value.or_term_type, inout, oper });
    }
};
