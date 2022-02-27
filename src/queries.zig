const std = @import("std");
const flecs = @import("flecs.zig");

// inouts
pub fn Filter(comptime T: type) type {
    return struct {
        pub const inout: flecs.InOutKind = .filter;
        term_type: T,
    };
}

pub fn Writeonly(comptime T: type) type {
    return struct {
        pub const inout: flecs.InOutKind = .out;
        term_type: T,
    };
}

// opers
pub fn Or(comptime T1: type, comptime T2: type) type {
    return struct {
        term_type1: T1,
        term_type2: T2,
    };
}

pub fn Not(comptime T: type) type {
    return struct {
        pub const oper: flecs.OperKind = .not;
        term_type: T,
    };
}

// next three are opers that work only on kinds. not implemented yet
fn AndFrom(comptime T1: type, comptime T2: type) type {
    return struct {
        pub const oper: flecs.OperKind = .and_from;
        term_type1: T1,
        term_type2: T2,
    };
}

fn OrFrom(comptime T1: type, comptime T2: type) type {
    return struct {
        pub const oper: flecs.OperKind = .or_from;
        term_type1: T1,
        term_type2: T2,
    };
}

fn NotFrom(comptime T1: type, comptime T2: type) type {
    return struct {
        pub const oper: flecs.OperKind = .not_from;
        term_type1: T1,
        term_type2: T2,
    };
}

pub fn Mask(comptime T: type, mask: u8) type {
    return struct {
        pub const mask: u8 = mask;
        term_type: T,
        // mask: u8 = mask, // default value access causes zig compiler crash
        // mask: [mask]u1, // HACK: use an array so we can pull out the len until above crasher is fixed
    };
}