const std = @import("std");
const flecs = @import("flecs.zig");

const assert = std.debug.assert;

/// given a type that is wrapped by any query modifiers (Or, And, Filter, etc) it unwraps the term data and validates it.
pub const TermInfo = struct {
    term_type: type = undefined,
    or_term_type: ?type = null,
    obj_type: ?type = null,
    relation_type: ?type = null,
    inout: flecs.c.ecs_inout_kind_t = flecs.c.EcsInOutDefault,
    oper: flecs.c.ecs_oper_kind_t = flecs.c.EcsAnd,
    mask: u8 = flecs.c.EcsDefaultSet,
    field: ?[]const u8 = null,

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
            if (@hasDecl(t, "mask")) {
                if (term_info.mask != 0) @compileError("Bad mask in query. Previous modifier already set mask. " ++ @typeName(T));
                term_info.mask = @field(t, "mask");
            }
            if (@hasDecl(t, "field")) {
                if (term_info.field != null) @compileError("Bad field in query. Previous modifier already set field. " ++ @typeName(T));
                term_info.field = @field(t, "field");
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

        // Pairs will have an obj_type as well
        if (std.meta.fieldIndex(t, "obj_type")) |obj_idx| {
            const fields = std.meta.fields(t);
            if (term_info.obj_type != null) @compileError("Bad obj_type in query. Previous modifier already set obj_type. " ++ @typeName(T));
            term_info.obj_type = fields[obj_idx].field_type;

            if (std.meta.fieldIndex(t, "relation_type")) |relation_idx| {
                term_info.relation_type = fields[relation_idx].field_type;
            } else unreachable;

            if (@hasDecl(t, "field")) {
                // TODO: this is to prevent multiple nested "I" types (WriteonlyI(PairI)) setting different names but it always triggers even if term_info.field is null
                // if (term_info.field == null) @compileError("Bad field in query. Previous modifier already set field. " ++ @typeName(T));
                term_info.field = @field(t, "field");
            }

            t = fields[0].field_type;
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
        try std.fmt.format(writer, "TermInfo{{ type = {d}, or_type = {d}, inout: {s}, oper: {s}, mask: {d}, obj_type: {any}, relation_type: {any}, field_name: {s} }}", .{ value.term_type, value.or_term_type, inout, oper, value.mask, value.obj_type, value.relation_type, value.field });
    }
};
