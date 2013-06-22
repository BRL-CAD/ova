Virtual Machine
===============

The "*.ova" file in this directory is a Virtual Machine (VM; also
called Virtual Appliance) built and tested on a Windows 7 64-bit host
of Oracle's VirtualBox (using version 4.1.12: http://virtualbox.org/).
The VM contains a turn-key BRL-CAD development environment.  (Note the
VirtualBox web site has complete instructions for obtaining and
installing VirtualBox.)

The intent of the VM is to give Google Summer of Code interns (or
anyone interested in test driving BRL-CAD) a good starting place so
they can be productive as soon as possible.

You will need about 7 Gb free space on your computer (after the
download) to import the VM into Oracle VirtualBox and run it.

To load the VM, start the VirtualBox Manager and choose File => Import
Appliance => Choose.  Then browse to the location of the VM .ova file
you downloaded and select open.  Then select Next, then Import and the
VM is imported.  When the Import is complete you will see the VM name
in the VirtualBox Manager.  To start the VM highlight its name and
either double-click it or select Start from the top menu row.

When starting the VM you may get a message about problems with the
network adapter.  If you cannot start the VM successfully, you may
have to experiment with the VM's network settings to find something
that works for your VirtualBox host's hardware.

In the event nothing works for getting access to the network, you can
choose to use no network at all.  Please read the VirtualBox
documentation and then ask for help from the BRL-CAD developers if you
don't find an answer quickly.

The VM is set to autoboot and autologin.  The user name is "brlcad"
with a password of "Brlcad!" (you should change the password upon
first login).

Note: To access the VM boot menu, press and hold the <SHIFT> key after
starting the VM.


Configuration Notes
===================

The Firefox browser has links on the bookmarks tool bar grouped by
major dependency or category.  There are folder icons on the desktop
for common BRL-CAD source code references, and important working
sub-directories in the home directory.  Note that the "Downloads"
directory can be removed but it tends to reappear if you download
through Firefox and don't change its download defaults.

The "brlcad-svn" directory has the brlcad/trunk current as of
2012-03-16 and the "brlcad-build "directory has a configured and
tested build followed by a "make clean" command.  The
"README-brlcad-development.txt" describes a recommended configuration
and build sequence for use inside the build directory.

The "brlcad-code-examples" directory has a "README-examples.txt" file
that describes briefly the purposes of the code examples shown.  The
files are soft links from the version-controlled source in the BRL-CAD
tree.

The "Documentation" directory has BRL-CAD documents from the BRL-CAD
site.  The "Other" directory has documents from the Bullet library
home site.

The successful trunk build (debug, with pdf extra docs) is installed
in the default location (/usr/brlcad/dev-7.21.0).  The PATH and
MANPATH reflect that location, and Firefox has links to the installed
BRL-CAD documentation.

The latest CMake, Bullet Physics, and Apache FOP are installed, and
the environment variable APACHE_FOP points to the fop executable.

Editors vi, emacs, and jEdit are installed alongside the simple gedit.

The latest Java runtime environment from Oracle is installed.

The ~/.bash-aliases file has some handy aliases for getting around:

 cad='cd ~/brlcad-svn'
 cabd='cd ~/brlcad-build'
 svu='svn update'
 svs='svn status'

There are other aliases for safe versions of destructive commands (cp,
rm, mv) and shortcuts for commonly-used commands and options.

There is also a PERL5LIB environment variable set for the current
directory:

 PERL5LIB=.

Suggestions for change or additions are encouraged.  Send to
<brlcad-devel@lists.sourceforge.net>.
