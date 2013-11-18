#!/bin/bash

FDIR=../brlcad-svn-trunk/src

FILS="\
conv/walk_example.c \
libdm/dm-Null.c \
libfb/if_TEMPLATE.c \
libged/version.c \
liboptical/sh_xxx.c \
librt/primitives/xxx/xxx.c \
proc-db/wdb_example.c \
rt/rtexample.c \
util/roots_example.c \
"

for f in $FILS
  do
    ln -sf $FDIR/$f .
  done

