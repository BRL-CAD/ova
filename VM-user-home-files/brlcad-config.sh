#!/bin/bash

cmake ../brlcad-svn-trunk         \
                                  \
     -DBRLCAD_BUNDLED_LIBS=ON     \
     -DBRLCAD_SCL=ON              \
     -DBRLCAD_ZLIB=OFF            \
     -DBRLCAD_ENABLE_OPENGL=ON    \
     -DCMAKE_BUILD_TYPE=DEBUG
