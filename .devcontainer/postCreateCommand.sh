cd /workspaces/zig-flecs
rm -rf ../zig
rm -rf zig

sudo apt-get install xz-utils

curl -o zig.tar.xz https://ziglang.org/builds/zig-linux-x86_64-0.10.0-dev.717+90f2a8d9c.tar.xz -O && \
    mkdir zig && tar xf zig.tar.xz -C zig --strip-components 1 && \
    rm zig.tar.xz && \
    mv zig ..

git submodule update --init
../zig/zig build