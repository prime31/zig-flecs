## Flecs zig bindings

Currently quite messy and in progress zigification of the Flecs API.

#### TODO:
- make a `Filter` struct and interator to match the `Term` one (iterator will need to take in an anonymous struct and do a bit of comptime magic)
- make a `Query` struct and interator to match the `Filter` one
- make two ways to iterate for Filter/Query:
    1. each: iterates each entity (currently almost ready for Filters)
    2. iter: iterates each archetype and provides component arrays for each. Not sure the best way to handle this yet. Would need to pass into the method the relevant term arrays and some kind of iterator object to use for the loop and for optional lookups and access to the World. (https://github.com/SanderMertens/flecs/blob/master/docs/Queries.md#iter-c)
- figure out a good, clean way to handle Systems ergonomically. Start with a simple ecs_iter_t wrapper since that is always passed to systems