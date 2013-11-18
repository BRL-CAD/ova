Virtual Machine
===============

The "*.ova" file in this directory is a Virtual Machine (also VM or
Virtual Appliance) built and tested on a Debian 7.1 host of Oracle's
VirtualBox 4.3.  The VM contains a turn-key BRL-CAD development
environment. Using it requires about 6 GB of free space.

============================= IN A NUTSHELL ==========================
Step 1: Download, Install and Open VirtualBox (http://virtualbox.org/)
Step 2: Import the VM (File > Import Appliance...)
Step 3: Open the newly created VM

Username: brlcad
Password: Brlcad!

You should change the password upon first login. To access the VM boot
menu, press and hold the <SHIFT> key after starting the VM.
======================================================================

When starting the VM you may get a message about problems with the
network adapter. If you cannot start the VM successfully, you may have
to experiment with the VM's network settings to find something that
works for your VirtualBox host's hardware.

In the event nothing works for getting access to the network, you can
choose to use no network at all. Please read the VirtualBox
documentation or ask for help from the BRL-CAD developers if you don't
find an answer quickly. You can find them on IRC (irc.freenode.net
#brlcad).

Configuration Notes
===================

The Chromium browser has BRL-CAD links on the bookmarks tool bar.

The "brlcad-svn" directory has the brlcad/trunk current as of
2013-11-18 (r58556) and the "brlcad-build" directory has a configured
and tested build followed by a "make clean" command. The
"README-brlcad-development.txt" file describes a recommended
configuration and build sequence for use inside the build directory.

The successful trunk build is installed in the default location
(/usr/brlcad/dev-7.24.1). The PATH and MANPATH reflect that location,
and Chromium has links to the installed BRL-CAD documentation.

gcc/g++ version 4.7.2 is installed, as is CMake 2.8.9.

Editors vi and emacs are installed alongside the simple gedit.

Suggestions for change or additions are encouraged.  Send to
<brlcad-devel@lists.sourceforge.net>
