cd /workspaces
rm -rf zig
rm -rf zls

sudo apt-get install xz-utils

curl -o zig.tar.xz https://ziglang.org/builds/zig-linux-x86_64-0.10.0-dev.717+90f2a8d9c.tar.xz -O
mkdir zig && tar xf zig.tar.xz -C zig --strip-components 1
rm zig.tar.xz

git clone --recursive https://github.com/zigtools/zls.git
cd zls
git checkout f3aabd6b7ca424b6aa1be9ef8a215a842301b994
/workspaces/zig/zig build -Drelease-safe
# ./zig-out/bin/zls config


echo 'export PATH="/workspaces/zig:$PATH"' >> ~/.bashrc
echo 'export PATH="/workspaces/zls/zig-out/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

cd /workspaces/zig-flecs
git submodule update --init
../zig/zig build