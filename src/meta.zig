const std = @import("std");
const flecs = @import("flecs.zig");

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

pub fn validateIterator(comptime Components: type, iter: flecs.ecs_iter_t) void {
    if (@import("builtin").mode == .Debug) {
        const component_info = @typeInfo(Components).Struct;
        inline for (component_info.fields) |field, i| {
            const is_optional = @typeInfo(field.field_type) == .Optional;
            const is_readonly = (@typeInfo(field.field_type) == .Pointer and @typeInfo(field.field_type).Pointer.is_const) or (@typeInfo(std.meta.Child(field.field_type)) == .Pointer and @typeInfo(std.meta.Child(field.field_type)).Pointer.is_const);
            const col_type = FinalChild(field.field_type);
            const type_entity = flecs.componentHandle(col_type).*;

            // ensure order matches for terms vs struct fields
            std.debug.assert(iter.terms[i].id == type_entity);

            // validate readonly (non-ptr types in the struct) matches up with the inout
            if (is_readonly) std.debug.assert(iter.terms[i].inout == flecs.EcsIn);
            if (iter.terms[i].inout == flecs.EcsIn) std.debug.assert(is_readonly);

            // validate optionals (?* types in the struct) mathces up with valid opers
            if (is_optional) std.debug.assert(iter.terms[i].oper == flecs.EcsOr or iter.terms[i].oper == flecs.EcsOptional);
            if (iter.terms[i].oper == flecs.EcsOr or iter.terms[i].oper == flecs.EcsOptional) std.debug.assert(is_optional);
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
