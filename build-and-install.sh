#!/bin/sh

export CFLAGS="-Oz -g0 -ffunction-sections -fdata-sections -fno-builtin -s"
export CXXFLAGS="$CFLAGS"
export LDFLAGS="-Wl,--gc-sections -Wl,--strip-all"

if [ -z "${PHOENIX_SDK}" ]; then
	echo "Please set a value in the 'PHOENIX_SDK' environment variable."
	
	exit 1
fi

./contrib/download_prerequisites

rm -rf build
mkdir -p build
cd build

../configure \
	--prefix=$PHOENIX_SDK \
	--bindir=$PHOENIX_SDK/bin \
	--libdir=$PHOENIX_SDK/binutils/lib \
	--datarootdir=$PHOENIX_SDK/binutils \
	--includedir=$PHOENIX_SDK/binutils/include \
	--target=ppu \
	--disable-multilib \
	--disable-shared \
	--disable-libssp

make -j$(nproc)
make install-strip tooldir=$PHOENIX_SDK/binutils

rm -rf $PHOENIX_SDK/binutils/lib/ldscripts/*
rm -rf $PHOENIX_SDK/binutils/bin
find $PHOENIX_SDK/binutils/gdb/syscalls ! -name "ppc64*" ! -name "gdb*" ! -name "freebsd*" ! -name "netbsd*" -type f -delete

cp -f ../ld/emulparams/ppu.sh $PHOENIX_SDK/binutils/lib/ldscripts/ppu.x

unset CFLAGS
unset CXXFLAGS
unset LDFLAGS