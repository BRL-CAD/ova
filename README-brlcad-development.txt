BRL-CAD Build Configuration
===========================

The recommended practice is to build BRL-CAD outside the BRL-CAD
source directory.  There is a build directory already created in the
home directory (brlcad-build).

Here is a starting build configuration and build sequence.  (See
~/brlcad-svn/HACKING for more information.)

  $ cd ; cd brlcad-build
  $ cmake ../brlcad-svn               \
                                      \
       -DBRLCAD_BUNDLED_LIBS=ON       \
       -DBRLCAD_ZLIB=OFF              \
       -DCMAKE_BUILD_TYPE=DEBUG

For convenience you make want to put the commands into a shell script.
If you do so, make sure it is placed outside the build directory in
case you want to delete everything in that build directory.

BRL-CAD Build
=============

The following assumes you have a valid configuration following the
steps above:

  $ cd ; cd brlcad-build
  $ make

BRL-CAD Development
==================

Note that as you modify files during your development work, you will
repeat the configure/make cycle often. The configuration may not have
to be done as often as a remake, depending on what is changed.

Sometimes, when a build fails, there may be a bug in the build system
that fails to pick up a subtle dependency and you may need to delete
all files and subdirectories in the build directory and start anew
with the configuration step.  It is worth a public compliment from the
BRL-CAD development team if you discover and report such a bug.  It is
worth an additional and very favorable compliment if you can submit a
patch which fixes that bug!


BRL-CAD Installation
====================

If you want to override the current installation (not recommended
until you are comfortable and successful with the build process), take
the next step after completing all the above successfully:

  $ cd ; cd brlcad-build
  $ sudo make install



