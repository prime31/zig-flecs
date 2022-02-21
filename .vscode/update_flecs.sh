echo "----- cd src/c"
cd src/c

echo "----- download flecs.h and flecs.c"
curl -O https://raw.githubusercontent.com/SanderMertens/flecs/master/flecs.h
curl -O https://raw.githubusercontent.com/SanderMertens/flecs/master/flecs.c

echo "----- translate-c the new flecs.h file"
zig translate-c flecs.h > ../c.zig

echo "----- done"