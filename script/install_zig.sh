#!/bin/bash
set -eux

#url="https://ziglang.org/download/0.11.0/zig-linux-x86_64-0.11.0.tar.xz"
#sha256="2d00e789fec4f71790a6e7bf83ff91d564943c5ee843c5fd966efc474b423047"
url="https://ziglang.org/builds/zig-linux-x86_64-0.14.0-dev.1587+feaee2ba1.tar.xz"
sha256="1ef191a4eef1e17284d596c38ae4f6e797c1d33635f61086caca322dde3fb136"

curl -sSL ${url} -o zig.tar.xz
echo ${sha256} zig.tar.xz | sha256sum -c -

sudo tar -C /usr/local -Jxvf zig.tar.xz
sudo mv /usr/local/zig-* /usr/local/zig

rm zig.tar.xz