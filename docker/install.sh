#!/usr/bin/env bash
set -Eeu

apt-get install --yes autoconf automake git libtool

git clone https://github.com/cpputest/cpputest.git
cd cpputest

autoreconf . -i
./configure
make tdd
