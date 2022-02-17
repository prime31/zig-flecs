const std = @import("std");
const flecs = @import("flecs.zig");
const meta = @import("meta.zig");

/// registered component handle cache
pub fn componentHandle(comptime T: type) *flecs.EntityId {
    _ = T;
    return &(struct {
        pub var handle: flecs.EntityId = std.math.maxInt(u64);
    }.handle);
}

/// gets the EntityId for T creating it if it doesn't already exist
pub fn componentId(world: *flecs.ecs_world_t, comptime T: type) flecs.EntityId {
    var handle = componentHandle(T);
    if (handle.* < std.math.maxInt(flecs.EntityId)) {
        return handle.*;
    }

    var desc = std.mem.zeroInit(flecs.ecs_component_desc_t, .{
        .entity = std.mem.zeroInit(flecs.struct_ecs_entity_desc_t, .{ .name = @typeName(T) }),
        .size = @sizeOf(T),
        .alignment = @alignOf(T),
    });
    handle.* = flecs.ecs_component_init(world, &desc);

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

/// given a query struct, returns a type with the exact same fields except the fields are made pointer-to-many.
/// constness and optionality are retained.
pub fn TableIteratorData(comptime Components: type) type {
    const src_fields = std.meta.fields(Components);
    const StructField = std.builtin.TypeInfo.StructField;
    var fields: [src_fields.len]StructField = undefined;
    _ = fields;

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
pub fn fieldsTuple(comptime T: type, value: T) FieldsTupleType(T) {
    std.debug.assert(@typeInfo(T) == .Struct);
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

pub fn validateIterator(comptime Components: type, iter: flecs.ecs_iter_t) void {
    if (@import("builtin").mode == .Debug) {
        var index: usize = 0;
        const component_info = @typeInfo(Components).Struct;
        inline for (component_info.fields) |field| {
            // skip filters since they arent returned when we iterate
            while (iter.terms[index].inout == flecs.EcsInOutFilter) : (index += 1) {}

            const is_optional = @typeInfo(field.field_type) == .Optional;
            const is_readonly = (@typeInfo(field.field_type) == .Pointer and @typeInfo(field.field_type).Pointer.is_const) or (@typeInfo(std.meta.Child(field.field_type)) == .Pointer and @typeInfo(std.meta.Child(field.field_type)).Pointer.is_const);
            const col_type = FinalChild(field.field_type);
            const type_entity = meta.componentHandle(col_type).*;

            // ensure order matches for terms vs struct fields
            std.debug.assert(iter.terms[index].id == type_entity);

            // validate readonly (non-ptr types in the struct) matches up with the inout
            if (is_readonly) std.debug.assert(iter.terms[index].inout == flecs.EcsIn);
            if (iter.terms[index].inout == flecs.EcsIn) std.debug.assert(is_readonly);

            // validate optionals (?* types in the struct) mathces up with valid opers
            if (is_optional) std.debug.assert(iter.terms[index].oper == flecs.EcsOr or iter.terms[index].oper == flecs.EcsOptional);
            if (iter.terms[index].oper == flecs.EcsOr or iter.terms[index].oper == flecs.EcsOptional) std.debug.assert(is_optional);
            index += 1;
        }
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
fn registerReflectionData(world: *flecs.ecs_world_t, comptime T: type, entity: flecs.EntityId) void {
    var entityDesc = std.mem.zeroInit(flecs.ecs_entity_desc_t, .{ .entity = entity });
    var desc = std.mem.zeroInit(flecs.ecs_struct_desc_t, .{ .entity = entityDesc });

    switch (@typeInfo(T)) {
        .Struct => |si| {
            inline for (si.fields) |field, i| {
                var member = std.mem.zeroes(flecs.ecs_member_t);
                member.name = field.name.ptr;

                // TODO: support nested structs
                member.type = switch (field.field_type) {
                    // Struct => componentId(field.field_type),
                    bool => flecs.FLECS__Eecs_bool_t,
                    f32 => flecs.FLECS__Eecs_f32_t,
                    f64 => flecs.FLECS__Eecs_f64_t,
                    u8 => flecs.FLECS__Eecs_u8_t,
                    u16 => flecs.FLECS__Eecs_u16_t,
                    u32 => flecs.FLECS__Eecs_u32_t,
                    flecs.EntityId => blk: {
                        // bit of a hack, but if the field name has "entity" in it we consider it an Entity reference
                        if (std.mem.indexOf(u8, field.name, "entity") != null)
                            break :blk flecs.FLECS__Eecs_entity_t;
                        break :blk flecs.FLECS__Eecs_u64_t;
                    },
                    i8 => flecs.FLECS__Eecs_i8_t,
                    i16 => flecs.FLECS__Eecs_i16_t,
                    i32 => flecs.FLECS__Eecs_i32_t,
                    i64 => flecs.FLECS__Eecs_i64_t,
                    usize => flecs.FLECS__Eecs_uptr_t,
                    []const u8 => flecs.FLECS__Eecs_string_t,
                    [*]const u8 => flecs.FLECS__Eecs_string_t,
                    else => blk: {
                        if (@typeInfo(field.field_type) == .Struct)
                            break :blk componentId(field.field_type);

                        if (@typeInfo(field.field_type) == .Enum) {
                            var enum_desc = std.mem.zeroes(flecs.ecs_enum_desc_t);
                            enum_desc.entity.entity = flecs.componentHandle(T).*;

                            inline for (@typeInfo(field.field_type).Enum.fields) |f, index| {
                                enum_desc.constants[index] = std.mem.zeroInit(flecs.ecs_enum_constant_t, .{
                                    .name = &f.name,
                                    .value = @intCast(i33, f.value),
                                });
                            }

                            break :blk flecs.ecs_enum_init(world, &enum_desc);
                        }
                        std.debug.print("unhandled field type: {any}, ti: {any}\n", .{ field.field_type, @typeInfo(field.field_type) });
                        unreachable;
                    },
                };
                desc.members[i] = member;
            }
            _ = flecs.ecs_struct_init(world, &desc);
        },
        else => unreachable,
    }
}
