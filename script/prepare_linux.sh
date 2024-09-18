#!/bin/bash
set -o errexit -o nounset -o pipefail

sudo sed -i -E 's|^deb ([^ ]+) (.*)$|deb [arch=amd64] \1 \2\ndeb [arch=arm64] http://ports.ubuntu.com/ubuntu-ports/ \2|' /etc/apt/sources.list
sudo dpkg --add-architecture arm64


apt-get update -y
apt-get install build-essential software-properties-common -y
add-apt-repository ppa:ubuntu-toolchain-r/test -y
apt-get update -y
apt-get install build-essential software-properties-common -y
apt-get update
apt-get install gcc-9 g++-9 -y
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 60 --slave /usr/bin/g++ g++ /usr/bin/g++-9
update-alternatives --config gcc 

apt-get install git python wget -y
apt-get install \
  gcc-aarch64-linux-gnu \
  g++-aarch64-linux-gnu \
  ninja-build \
  fontconfig \
  libfontconfig-dev \
  libfontconfig1-dev \
  libglu1-mesa-dev \
  libgl-dev \
  libx11-dev \
  libxrandr-dev \
  libxxf86vm-dev \
  libxi-dev \
  libxcursor-dev \
  libxinerama-dev \
  libxkbcommon-dev \
  libgl-dev:arm64 \
  libx11-dev:arm64 \
  libxrandr-dev:arm64 \
  libxxf86vm-dev:arm64 \
  libxi-dev:arm64 \
  libxcursor-dev:arm64 \
  libxinerama-dev:arm64 \
  libxkbcommon-dev:arm64 \
  libfontconfig1-dev:arm64 \
  curl \
  zip -y