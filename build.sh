#!/bin/bash -e

git submodule update --init --recursive
autoreconf -f -i
./configure
make
