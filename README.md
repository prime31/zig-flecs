## Flecs zig bindings

#### TODO:
- figure out why the `QueryBuilder` `terms` cause a Flecs assertion in the `simple` demo
- make a `Filter` struct and interator to match the `Term` one (iterator will need to take in an anonymous struct and do a bit of comptime magic)
- make a `Query` struct and interator to match the `Filter` one
- figure out a good, clean way to handle Systems ergonomically. Start with a simple ecs_iter_t wrapper since that is always passed to systems