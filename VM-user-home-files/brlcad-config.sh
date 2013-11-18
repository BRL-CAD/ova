#!/bin/bash

cmake ../brlcad-svn-trunk         \
                                  \
     -DBRLCAD_BUNDLED_LIBS=ON     \
     -DBRLCAD_ZLIB=OFF            \
     -DCMAKE_BUILD_TYPE=DEBUG
