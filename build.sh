#!/bin/bash -e

[ -d m4 ] || git submodule update --init --recursive
autoreconf -f -i
./configure
make
