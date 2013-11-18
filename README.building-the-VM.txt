VirtualBox
==========

Using version 4.3.2.

Select new dynamic hard drive of 20 Gb.

Set System | Processor | Execution Cap to a low but green value.

Select all else as the default (ensure the USB 2.0 capability is NOT
set since it cannot be distributed).

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
  configuration so default terminal windows do NOT have the menu in
  view.  Aso check unlited scroll and output scroll.

  Under "BRL-CAD User" in the upper right select System Settings |
  Brightness and Lock. Select "1 hour" for turning off the screen and
  turn Lock to "OFF".

Additional packages
-------------------

  g++
  freeglut3-dev
  cmake
  subversion
  fop
  chromium
  zlib1g-dev

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

Copy, on USB, the following files and install as indicated:

   dot_bash_aliases.txt => $HOME/.bash_aliases




  