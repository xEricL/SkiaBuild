set -eux

url="https://ziglang.org/download/0.11.0/zig-linux-x86_64-0.11.0.tar.xz"
sha256="2d00e789fec4f71790a6e7bf83ff91d564943c5ee843c5fd966efc474b423047"

curl -sSL ${url} -o zig.tar.xz
echo ${sha256} zig.tar.xz | sha256sum -c -

sudo tar -C /usr/local -Jxvf zig.tar.xz
sudo mv /usr/local/zig-* /usr/local/zig

rm zig.tar.xz
zig version