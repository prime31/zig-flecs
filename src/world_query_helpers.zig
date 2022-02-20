const std = @import("std");
const flecs = @import("flecs.zig");
const utils = @import("utils.zig");
const meta = @import("meta.zig");

const assert = std.debug.assert;

const TermInfo = struct {
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

pub fn QueryHelpers(comptime Self: type) type {
    return struct {
        pub fn filter(self: Self, comptime Components: type) flecs.Filter {
            assert(@typeInfo(Components) == .Struct);
            var desc = generateFilterDesc(self, Components);
            return flecs.Filter.init(self, &desc);
        }

        pub fn query(self: Self, comptime Components: type) flecs.Query {
            std.debug.print("me: {any}\n", .{ self, Components });
        }

        pub fn system(self: Self, comptime Components: type, comptime action: fn (*flecs.Iterator(Components)) void, phase: flecs.Phase) void {
            std.debug.print("me: {any}\n", .{ self, Components, action, phase });
        }

        fn generateFilterDesc(self: Self, comptime Components: type) flecs.c.ecs_filter_desc_t {
            assert(@typeInfo(Components) == .Struct);
            var desc = std.mem.zeroes(flecs.c.ecs_filter_desc_t);

            // first, extract what we can from the Components fields
            const component_info = @typeInfo(Components).Struct;
            inline for (component_info.fields) |field, i| {
                desc.terms[i].id = self.componentId(meta.FinalChild(field.field_type));

                if (@typeInfo(field.field_type) == .Optional)
                    desc.terms[i].oper = flecs.c.EcsOptional;

                if (meta.isConst(field.field_type))
                    desc.terms[i].inout = flecs.c.EcsIn;
            }

            // optionally, apply any additional modifiers if present. Keep track of the term_index in case we have to add Or + Filters or Ands
            var next_term_index = component_info.fields.len;
            if (@hasDecl(Components, "modifiers")) {
                inline for (Components.modifiers) |inout_tuple| {
                    const ti = TermInfo.init(inout_tuple);
                    // std.debug.print("{any}: {any}\n", .{ inout_tuple, ti });

                    if (getTermIndex(ti.term_type, &desc, component_info.fields.len)) |term_index| {
                        // Not terms should not be present in the Components struct
                        assert(ti.oper != flecs.c.EcsNot);

                        // if we have a Filter on an existing type ensure we also have an Or. That is the only legit case for having a Filter and also
                        // having the term present in the query. For that case, we will leave both optionals and add the two Or terms.
                        if (ti.inout == flecs.c.EcsInOutFilter) {
                            assert(ti.oper == flecs.c.EcsOr);
                            if (ti.or_term_type) |or_term_type| {
                                // ensure the term is optional. If the second Or term is present ensure it is optional as well.
                                assert(desc.terms[term_index].oper == flecs.c.EcsOptional);
                                if (getTermIndex(or_term_type, &desc, component_info.fields.len)) |or_term_index| {
                                    assert(desc.terms[or_term_index].oper == flecs.c.EcsOptional);
                                }

                                desc.terms[next_term_index].id = self.componentId(ti.term_type);
                                desc.terms[next_term_index].inout = ti.inout;
                                desc.terms[next_term_index].oper = ti.oper;
                                next_term_index += 1;

                                desc.terms[next_term_index].id = self.componentId(or_term_type);
                                desc.terms[next_term_index].inout = ti.inout;
                                desc.terms[next_term_index].oper = ti.oper;
                                next_term_index += 1;
                            } else unreachable;
                        } else {
                            if (ti.inout == flecs.c.EcsOut) {
                                assert(desc.terms[term_index].inout == flecs.c.EcsInOutDefault);
                                desc.terms[term_index].inout = ti.inout;
                            }

                            // the only valid oper left is Or since Not terms cant be in Components struct
                            if (ti.oper == flecs.c.EcsOr) {
                                assert(desc.terms[term_index].oper == flecs.c.EcsOptional);

                                if (getTermIndex(ti.or_term_type.?, &desc, component_info.fields.len)) |or_term_index| {
                                    assert(desc.terms[or_term_index].oper == flecs.c.EcsOptional);
                                    desc.terms[or_term_index].oper = ti.oper;
                                } else unreachable;
                                desc.terms[term_index].oper = ti.oper;
                            }
                        }
                    } else {
                        // the term wasnt found so we must have either a Filter or a Not
                        if (ti.inout != flecs.c.EcsInOutFilter and ti.oper != flecs.c.EcsNot) std.debug.print("invalid inout found! No matching type found in the Components struct. Only Not and Filters are valid for types not in the struct. This should assert/panic but a zig bug lets us only print it.\n", .{});
                        if (ti.inout == flecs.c.EcsInOutFilter) {
                            desc.terms[next_term_index].id = self.componentId(ti.term_type);
                            desc.terms[next_term_index].inout = ti.inout;
                            next_term_index += 1;
                        } else if (ti.oper == flecs.c.EcsNot) {
                            desc.terms[next_term_index].id = self.componentId(ti.term_type);
                            desc.terms[next_term_index].oper = ti.oper;
                            next_term_index += 1;
                        } else {
                            std.debug.print("invalid inout applied to a term not in the query. only Not and Filter are allowed for terms not present.\n", .{});
                        }
                    }
                }
            }

            return desc;
        }
    };
}

/// gets the index into the terms array of this type or null if it isnt found (likely a new filter term)
fn getTermIndex(comptime T: type, filter: *flecs.c.ecs_filter_desc_t, term_count: usize) ?usize {
    const comp_id = meta.componentHandle(T).*;
    var i: usize = 0;
    while (i < term_count) : (i += 1) {
        if (filter.terms[i].id == comp_id) return i;
    }
    return null;
}
