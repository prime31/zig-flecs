const std = @import("std");

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
fn TableIteratorData(comptime Components: type) type {
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