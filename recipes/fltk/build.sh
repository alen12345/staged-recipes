#!/bin/bash
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_BUILD_TYPE=Release .. -DBUILD_SHARED_LIBS=yes
make -j${CPU_COUNT}
make test && make install
