#!/bin/sh

USAGE="Usage: $0 <stage dir>"

if [ -z "$1" ] ; then
  echo $USAGE
  echo
  echo "Copies appropriate files to a staging directory for later"
  echo "  transfer to the BRL-CAD files download area."
  echo
  exit
fi

SDIR=$1

if [ ! -d "$SDIR" ] ; then
  echo "ERROR:  Staging directory '$SDIR' does not exist."
  exit
fi

# the files
FIL="../VM-user-home-files/README.txt"
echo "copying '$FIL' to '$SDIR"...
cp $FIL $SDIR

BFILS="\
copy-to-brlcad-vm-site-sh \
delete-from-brlcad-vm-site-sh \
"

for f in $BFILS
do
  FF=$f.template
  F=$SDIR/$f.sh
  echo "copying '$FF' to '$F"...
  cp -fp $FF $F
  chmod +x $F
done

