Virtual Machine
===============

The "*.ova" file in this directory is a Virtual Machine (also VM or Virtual
Appliance) built and tested on a Mac OS 10.8 host of Oracle's VirtualBox 4.2.6.
The VM contains a turn-key BRL-CAD development environment. Using it requires
about 6 GB of free space.

============================= IN A NUTSHELL ===================================
Step 1: Download, Install and Open VirtualBox (http://virtualbox.org/)
Step 2: Import the VM (File > Import Appliance...)
Step 3: Open the newly created VM

Username: brlcad
Password: Brlcad!
===============================================================================

When starting the VM you may get a message about problems with the network
adapter. If you cannot start the VM successfully, you may have to experiment
with the VM's network settings to find something that works for your VirtualBox
host's hardware.

In the event nothing works for getting access to the network, you can choose
to use no network at all. Please read the VirtualBox documentation or ask for
help from the BRL-CAD developers if you don't find an answer quickly. You can
find them on IRC (irc.freenode.net #brlcad).

The VM is set to autoboot and autologin, and you should change the password
upon first login. To access the VM boot menu, press and hold the <SHIFT> key
after starting the VM.

Configuration Notes
===================

The Firefox browser has links on the bookmarks tool bar grouped by major
dependency or category. There are folder icons on the desktop for common
BRL-CAD source code references, and important working sub-directories in the
home directory. Note that the "Downloads" directory can be removed but it tends
to reappear if you download through Firefox and don't change its download
defaults.

The "brlcad-svn" directory has the brlcad/trunk current as of 2012-12-27 or
r54118 and the "brlcad-build" directory has a configured and tested build
followed by a "make clean" command. The "README-brlcad-development.txt" file
describes a recommended configuration and build sequence for use inside the
build directory.

The "brlcad-code-examples" directory has a "README-examples.txt" file that
describes briefly the purposes of the code examples shown. The files are soft
links from the version-controlled source in the BRL-CAD tree.

The "Documentation" directory has BRL-CAD documents from the BRL-CAD site. The
"Other" directory has documents from the Bullet library home site.

The successful trunk build (debug, with PDF extra docs) is installed in the
default location (/usr/brlcad/dev-7.22.1). The PATH and MANPATH reflect that
location, and Firefox has links to the installed BRL-CAD documentation.

CMake 2.8.10, Bullet Physics 2.80, and Apache FOP 1.1 are installed, and the
environment variable APACHE_FOP points to the fop executable.

Editors vi, emacs, and jEdit are installed alongside the simple gedit.

The latest Java runtime environment from Oracle is installed.

The ~/.bash_aliases file has some handy aliases for getting around:

cad='cd ~/brlcad-svn'
cabd='cd ~/brlcad-build'
svu='svn update'
svs='svn status'

There are other aliases for safe versions of destructive commands (cp, rm, mv)
and shortcuts for commonly-used commands and options.

There is also a PERL5LIB environment variable set for the current directory:

 PERL5LIB=.

Suggestions for change or additions are encouraged.
Send to <brlcad-devel@lists.sourceforge.net>
