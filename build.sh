#!/bin/bash
#

test -d build || mkdir build

pushd build
if [ ! -d dnsmasq ]; then
    git clone git://thekelleys.org.uk/dnsmasq.git dnsmasq
fi

pushd dnsmasq
git checkout -b b2.74 tags/v2.74
LDFLAGS=-static make
popd
popd

test -d snap/bin || mkdir -p snap/bin
cp -v build/dnsmasq/src/dnsmasq snap/bin/

snappy build snap
