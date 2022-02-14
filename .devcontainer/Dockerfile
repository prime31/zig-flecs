# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.209.6/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version (use hirsuite or bionic on local arm64/Apple Silicon): hirsute, focal, bionic
ARG VARIANT="hirsute"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# [Optional] Uncomment this section to install additional OS packages.
# RUN apk add curl xz

# RUN git submodule update --init

# ARG ZIGVER="0.10.0-dev.717+90f2a8d9c"
# RUN curl -o zig.tar.xz https://ziglang.org/builds/zig-linux-x86_64-0.10.0-dev.717+90f2a8d9c.tar.xz -O && \
#     mkdir zig && tar xf zig.tar.xz -C zig --strip-components 1 && \
#     rm zig.tar.xz && \
#     mv zig ..

# RUN git submodule update --init
# RUN ../zig/zig build
