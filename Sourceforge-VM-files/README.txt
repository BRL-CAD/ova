Virtual Machine
===============

The "*.ova" file in this directory is a Virtual Machine (also VM or
Virtual Appliance) built and tested on a Windows 7 host of Oracle's
VirtualBox (VB) 4.3.2.  The VM contains a turn-key BRL-CAD development
environment. Using it requires about 6 GB of free space.

Notes (see VB documentation on the site at <http://virtualbox.org/>):

1.  You can use various VB settings for a VM to optimize your
    experience: percent host cpu, RAM, video memory, etc.

2.  You may need to reinstall guest additions if the VM is used on a
    Linux or Mac host.

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
2013-11-18 (r58556) and there is a "brlcad-build" directory which was
used for a successful trunk build, 'make regress', 'make test', and
'sudo make install'.  It was then cleaned with 'make clean' but the
configuration files are still in place.  The directory is ready to use
as described in the "README-brlcad-development.txt" file.

The successful trunk build is installed in the default location
(/usr/brlcad/dev-7.24.1), and the PATH and MANPATH reflect that
location.

gcc/g++ version 4.7.2 is installed, as is CMake 2.8.9.

Editors vi and emacs are installed alongside the simple gedit.

Suggestions for change or additions are encouraged.  Send to
<brlcad-devel@lists.sourceforge.net>
