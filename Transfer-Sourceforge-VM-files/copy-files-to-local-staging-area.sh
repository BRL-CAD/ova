#!/bin/sh

USAGE="Usage: $0 <stage dir>"

if [ -z "$1" ] ; then
  echo $USAGE
  echo
  echo "Copies appropriate files to a staging directory for later"
  echo "  transfer to the BRL-CAD files download area."
  echo
  echo "The scripts copied to the staging directory will then have"
  echo "  to be edited to include your Sourceforge password."
  echo
  exit
fi

SDIR=$1

if [ ! -d "$SDIR" ] ; then
  echo "ERROR:  Staging directory '$SDIR' does not exist."
  exit
fi

# the ordinary files =============
FILS="\
../VM-user-home-files/README.txt \
WARNING.txt \
"
for f in $FILS
do
  echo "copying '$f' to '$SDIR"...
  cp $f $SDIR
done

# the template files =============
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

echo "Now go to the staging directory and edit the two *.sh"
echo "  files to add your own Sourceforge password."
