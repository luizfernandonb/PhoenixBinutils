#!/bin/sh

export CFLAGS="-Os -g0 -ffunction-sections -fdata-sections -fno-builtin -s"
export CXXFLAGS="$CFLAGS"
export LDFLAGS="-Wl,--gc-sections -Wl,--strip-all"

if [ -z "${PS3_SDK}" ]; then
	echo "Please set a value in the 'PS3_SDK' environment variable."
	
	exit 1
fi

./contrib/download_prerequisites

rm -rf build
mkdir -p build
cd build

../configure \
	--prefix=$PS3_SDK \
	--bindir=$PS3_SDK/bin \
	--libdir=$PS3_SDK/binutils/lib \
	--datarootdir=$PS3_SDK/binutils \
	--includedir=$PS3_SDK/binutils/include \
	--target=ppu-lv2 \
	--disable-multilib \
	--disable-shared \
	--disable-libssp

make -j$(nproc)
make install-strip tooldir=$PS3_SDK/binutils

rm -rf $PS3_SDK/binutils/lib/ldscripts/*
rm -rf $PS3_SDK/binutils/bin

cp -f ../ld/emulparams/lv2.sh $PS3_SDK/binutils/lib/ldscripts/lv2.x