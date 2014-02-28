VirtualBox
==========

Use the latest version of VB.

Select new dynamic hard drive of 25 Gb.

Set System | Processor | Execution Cap to a low but green value.

Debian 7.2 (32-bit: i386)
=========================

http://debian.org

Use debian-7.2.0-i386-netinst.iso.

Set host name: brlcad-vm.localdomain.

Set user name: brlcad

Set root and user password: Brlcad!

Use software selections of: desktop, standard utilities

Desktop Configuration
=====================

Use the Gnome Classic Desktop at login.

Desktop customizations
----------------------

  Applications | System Tools | Preferences | Advanced Settings
    Theme => Window theme => Bright
    Windows => Windows focus mode => Mouse

  Edit the termminal application (Applications | Accessories), default
  configuration so default terminal windows do NOT have the menu in view.  Aso
  check unlited scroll and output scroll.

  Under "BRL-CAD User" in the upper right select System Settings | Brightness
  and Lock. Select "1 hour" for turning off the screen and turn Lock to "OFF".

Additional packages
-------------------

  g++
  freeglut3-dev
  cmake
  subversion
  fop
  chromium
  zlib1g-dev
  libfontconfig-dev
  libxext-dev
  libxi-dev
  zerofree
  exfat-utils
  exfat-fuse

Setting up BRL-CAD
------------------

Using read-only subversion checkout the latest BRL-CAD trunk:

  $ cd ; mkdir brlcad-svn-trunk
  $ cd brlcad-svn-trunk
  $ svn co ...

Copy the configure script (brlcad-config.sh) to the home directory,
create a build directory and a configure script and build:

  $ cd ; mkdir brlcad-build
  $ cd brlcad-build
  $ ../brlcad-config.sh >& config.log
  $ make >& build.log
  $ sudo make install

Set up paths and the environment
--------------------------------

As root, add user 'brlcad' to the /etc/sudoers file (use 'visudo' per
'man sudoers'): copy the entry line for 'root' and change 'root' to
'brlcad'.

From the "../VM-user-home-file" directory, copy the following files
and install in the VM as indicated:

  $ cp dot_bash_aliases.txt $HOME/.bash_aliases
  $ cp README-brlcad-development.txt $HOME
  $ cp brlcad-config.sh $HOME
  $ cp -r brlcad-code-examples $HOME

In the $HOME/brlcad-code-examples directory, run the "link-files.sh
" script.



  