const std = @import("std");
const flecs = @import("flecs.zig");
const meta = @import("meta.zig");

const assert = std.debug.assert;

const TermInfo = @import("term_info.zig").TermInfo;

/// asserts with a message
pub fn assertMsg(ok: bool, comptime msg: []const u8, args: anytype) void {
    if (@import("builtin").mode == .Debug) {
        if (!ok) {
            std.debug.print("Assertion: " ++ msg ++ "\n", args);
            unreachable;
        }
    }
}

/// registered component handle cache. Stores the EntityId for the type.
pub fn componentHandle(comptime T: type) *flecs.EntityId {
    _ = T;
    return &(struct {
        pub var handle: flecs.EntityId = std.math.maxInt(u64);
    }.handle);
}

/// gets the EntityId for T creating it if it doesn't already exist
pub fn componentId(world: *flecs.c.ecs_world_t, comptime T: type) flecs.EntityId {
    var handle = componentHandle(T);
    if (handle.* < std.math.maxInt(flecs.EntityId)) {
        return handle.*;
    }

    var desc = std.mem.zeroInit(flecs.c.ecs_component_desc_t, .{
        .entity = std.mem.zeroInit(flecs.c.ecs_entity_desc_t, .{ .name = @typeName(T) }),
        .size = @sizeOf(T),
        .alignment = @alignOf(T),
    });
    handle.* = flecs.c.ecs_component_init(world, &desc);

    // allow disabling reflection data with a root bool
    if (!@hasDecl(@import("root"), "disable_reflection") or !@as(bool, @field(@import("root"), "disable_reflection")))
        registerReflectionData(world, T, handle.*);

    return handle.*;
}

/// given a pointer or optional pointer returns the element type
pub fn FinalChild(comptime T: type) type {
    switch (@typeInfo(T)) {
        .Pointer => |info| switch (info.size) {
            .One => switch (@typeInfo(info.child)) {
                .Struct => return info.child,
                .Optional => |opt_info| return opt_info.child,
                else => {},
            },
            else => {},
        },
        .Optional => |info| return FinalChild(info.child),
        else => {},
    }
    @compileError("Expected pointer or optional pointer, found '" ++ @typeName(T) ++ "'");
}

/// given a pointer or optional pointer returns a pointer-to-many. constness and optionality are retained.
pub fn PointerToMany(comptime T: type) type {
    var is_const = false;
    var is_optional = false;
    var PointerT = T;

    switch (@typeInfo(T)) {
        .Optional => |opt_info| switch (@typeInfo(opt_info.child)) {
            .Pointer => |ptr_info| {
                is_const = ptr_info.is_const;
                is_optional = true;
                PointerT = opt_info.child;
            },
            else => unreachable,
        },
        .Pointer => |ptr_info| is_const = ptr_info.is_const,
        else => unreachable,
    }

    const info = @typeInfo(PointerT).Pointer;
    const InnerType = @Type(.{
        .Pointer = .{
            .size = .Many,
            .is_const = is_const,
            .is_volatile = info.is_volatile,
            .alignment = info.alignment,
            .address_space = info.address_space,
            .child = info.child,
            .is_allowzero = info.is_allowzero,
            .sentinel = null,
        },
    });

    if (is_optional) return @Type(.{
        .Optional = .{
            .child = InnerType,
        },
    });

    return InnerType;
}

/// gets the number of arguments in the function
pub fn argCount(comptime function: anytype) usize {
    return switch (@typeInfo(@TypeOf(function))) {
        .BoundFn => |func_info| func_info.args.len,
        .Fn => |func_info| func_info.args.len,
        else => assert("invalid function"),
    };
}

/// given a query struct, returns a type with the exact same fields except the fields are made pointer-to-many.
/// constness and optionality are retained.
pub fn TableIteratorData(comptime Components: type) type {
    const src_fields = std.meta.fields(Components);
    const StructField = std.builtin.TypeInfo.StructField;
    var fields: [src_fields.len]StructField = undefined;

    for (src_fields) |field, i| {
        const T = FinalChild(field.field_type);
        fields[i] = .{
            .name = field.name,
            .field_type = PointerToMany(field.field_type),
            .default_value = null,
            .is_comptime = false,
            .alignment = @alignOf(*T),
        };
    }

    return @Type(.{ .Struct = .{
        .layout = .Auto,
        .fields = &fields,
        .decls = &[_]std.builtin.TypeInfo.Declaration{},
        .is_tuple = false,
    } });
}

/// returns a tuple consisting of the field values of value
pub fn fieldsTuple(value: anytype) FieldsTupleType(@TypeOf(value)) {
    const T = @TypeOf(value);
    assert(@typeInfo(T) == .Struct);
    const ti = @typeInfo(T).Struct;
    const FieldsTuple = FieldsTupleType(T);

    var tuple: FieldsTuple = undefined;
    comptime var i = 0;
    inline while (i < ti.fields.len) : (i += 1) {
        tuple[i] = @field(value, ti.fields[i].name);
    }

    return tuple;
}

/// returns the Type of the tuple version of T
pub fn FieldsTupleType(comptime T: type) type {
    const ti = @typeInfo(T).Struct;
    return @Type(.{
        .Struct = .{
            .layout = ti.layout,
            .fields = ti.fields,
            .decls = &[0]std.builtin.TypeInfo.Declaration{},
            .is_tuple = true,
        },
    });
}

pub fn validateIterator(comptime Components: type, iter: *const flecs.c.ecs_iter_t) void {
    if (@import("builtin").mode == .Debug) {
        var index: usize = 0;
        const component_info = @typeInfo(Components).Struct;
        inline for (component_info.fields) |field| {
            // skip filters since they arent returned when we iterate
            if (iter.terms[index].inout != flecs.c.EcsInOutFilter) {
                const is_optional = @typeInfo(field.field_type) == .Optional;
                const col_type = FinalChild(field.field_type);
                const type_entity = meta.componentHandle(col_type).*;

                // ensure order matches for terms vs struct fields
                assertMsg(iter.terms[index].id == type_entity, "Order of struct does not match order of iter.terms! {d} != {d}\n", .{ iter.terms[index].id, type_entity });

                // validate readonly (non-ptr types in the struct) matches up with the inout
                const is_const = isConst(field.field_type);
                if (is_const) assert(iter.terms[index].inout == flecs.c.EcsIn);
                if (iter.terms[index].inout == flecs.c.EcsIn) assert(is_const);

                // validate that optionals (?* types in the struct) match up with valid opers
                if (is_optional) assert(iter.terms[index].oper == flecs.c.EcsOr or iter.terms[index].oper == flecs.c.EcsOptional);
                if (iter.terms[index].oper == flecs.c.EcsOr or iter.terms[index].oper == flecs.c.EcsOptional) assert(is_optional);
            }
            index += 1;
        }
    }
}

/// ensures an orderBy function for a query/system is legit
pub fn validateOrderByFn(comptime func: anytype) void {
    if (@import("builtin").mode == .Debug) {
        const ti = @typeInfo(@TypeOf(func));
        assert(ti == .Fn);
        assert(ti.Fn.args.len == 4);

        // args are: EntityId, *const T, EntityId, *const T
        assert(ti.Fn.args[0].arg_type.? == flecs.EntityId);
        assert(ti.Fn.args[2].arg_type.? == flecs.EntityId);
        assert(ti.Fn.args[1].arg_type.? == ti.Fn.args[3].arg_type.?);
        assert(isConst(ti.Fn.args[1].arg_type.?));
        assert(@typeInfo(ti.Fn.args[1].arg_type.?) == .Pointer);
    }
}

/// ensures the order by type is in the Components struct and that that it isnt an optional term
pub fn validateOrderByType(comptime Components: type, comptime T: type) void {
    if (@import("builtin").mode == .Debug) {
        var valid = false;

        const component_info = @typeInfo(Components).Struct;
        inline for (component_info.fields) |field| {
            if (FinalChild(field.field_type) == T) {
                valid = true;
            }
        }
        assertMsg(valid, "type {any} was not found in the struct!", .{T});
    }
}

/// checks a Pointer or Optional for constness. Any other types passed in will error.
pub fn isConst(comptime T: type) bool {
    switch (@typeInfo(T)) {
        .Pointer => |ptr| return ptr.is_const,
        .Optional => |opt| {
            switch (@typeInfo(opt.child)) {
                .Pointer => |ptr| return ptr.is_const,
                else => {},
            }
        },
        else => {},
    }

    @compileError("Invalid type passed to isConst: " ++ @typeName(T));
}

/// https://github.com/SanderMertens/flecs/tree/master/examples/c/reflection
fn registerReflectionData(world: *flecs.c.ecs_world_t, comptime T: type, entity: flecs.EntityId) void {
    var entityDesc = std.mem.zeroInit(flecs.c.ecs_entity_desc_t, .{ .entity = entity });
    var desc = std.mem.zeroInit(flecs.c.ecs_struct_desc_t, .{ .entity = entityDesc });

    switch (@typeInfo(T)) {
        .Struct => |si| {
            inline for (si.fields) |field, i| {
                var member = std.mem.zeroes(flecs.c.ecs_member_t);
                member.name = field.name.ptr;

                // TODO: support nested structs
                member.type = switch (field.field_type) {
                    // Struct => componentId(field.field_type),
                    bool => flecs.c.FLECS__Eecs_bool_t,
                    f32 => flecs.c.FLECS__Eecs_f32_t,
                    f64 => flecs.c.FLECS__Eecs_f64_t,
                    u8 => flecs.c.FLECS__Eecs_u8_t,
                    u16 => flecs.c.FLECS__Eecs_u16_t,
                    u32 => flecs.c.FLECS__Eecs_u32_t,
                    flecs.EntityId => blk: {
                        // bit of a hack, but if the field name has "entity" in it we consider it an Entity reference
                        if (std.mem.indexOf(u8, field.name, "entity") != null)
                            break :blk flecs.c.FLECS__Eecs_entity_t;
                        break :blk flecs.c.FLECS__Eecs_u64_t;
                    },
                    i8 => flecs.c.FLECS__Eecs_i8_t,
                    i16 => flecs.c.FLECS__Eecs_i16_t,
                    i32 => flecs.c.FLECS__Eecs_i32_t,
                    i64 => flecs.c.FLECS__Eecs_i64_t,
                    usize => flecs.c.FLECS__Eecs_uptr_t,
                    []const u8 => flecs.c.FLECS__Eecs_string_t,
                    [*]const u8 => flecs.c.FLECS__Eecs_string_t,
                    else => blk: {
                        if (@typeInfo(field.field_type) == .Struct)
                            break :blk componentId(world, field.field_type);

                        if (@typeInfo(field.field_type) == .Enum) {
                            var enum_desc = std.mem.zeroes(flecs.c.ecs_enum_desc_t);
                            enum_desc.entity.entity = flecs.componentHandle(T).*;

                            inline for (@typeInfo(field.field_type).Enum.fields) |f, index| {
                                enum_desc.constants[index] = std.mem.zeroInit(flecs.c.ecs_enum_constant_t, .{
                                    .name = &f.name,
                                    .value = @intCast(i33, f.value),
                                });
                            }

                            break :blk flecs.c.ecs_enum_init(world, &enum_desc);
                        }
                        std.debug.print("unhandled field type: {any}, ti: {any}\n", .{ field.field_type, @typeInfo(field.field_type) });
                        unreachable;
                    },
                };
                desc.members[i] = member;
            }
            _ = flecs.c.ecs_struct_init(world, &desc);
        },
        else => unreachable,
    }
}

/// given a struct of Components with optional embedded "metadata", "name", "order_by" data it generates an ecs_filter_desc_t
pub fn generateFilterDesc(world: flecs.World, comptime Components: type) flecs.c.ecs_filter_desc_t {
    assert(@typeInfo(Components) == .Struct);
    var desc = std.mem.zeroes(flecs.c.ecs_filter_desc_t);

    // first, extract what we can from the Components fields
    const component_info = @typeInfo(Components).Struct;
    inline for (component_info.fields) |field, i| {
        desc.terms[i].id = world.componentId(meta.FinalChild(field.field_type));

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

                        desc.terms[next_term_index].id = world.componentId(ti.term_type);
                        desc.terms[next_term_index].inout = ti.inout;
                        desc.terms[next_term_index].oper = ti.oper;
                        next_term_index += 1;

                        desc.terms[next_term_index].id = world.componentId(or_term_type);
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
                    desc.terms[next_term_index].id = world.componentId(ti.term_type);
                    desc.terms[next_term_index].inout = ti.inout;
                    next_term_index += 1;
                } else if (ti.oper == flecs.c.EcsNot) {
                    desc.terms[next_term_index].id = world.componentId(ti.term_type);
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

/// gets the index into the terms array of this type or null if it isnt found (likely a new filter term)
pub fn getTermIndex(comptime T: type, filter: *flecs.c.ecs_filter_desc_t, term_count: usize) ?usize {
    const comp_id = meta.componentHandle(T).*;
    var i: usize = 0;
    while (i < term_count) : (i += 1) {
        if (filter.terms[i].id == comp_id) return i;
    }
    return null;
}
