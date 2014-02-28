To load the VM (and a copy of the ../VM-user-home-files/README.txt file) into place do the
following:

Create a clean, working directory:

  $ rm -r $HOME/tmp
  $ mkdir $HOME/tmp

Copy the *.ova there:

  $ cp <curr ova> $HOME/tmp

Copy other files from here:

  $ cp ../VM-user-home-files/README.txt          $HOME/tmp
  $ cp copy-to-brlcad-vm-site.sh.template        $HOME/tmp/copy-to-brlcad-vm-site.sh
  $ cp delete-from-brlcad-vm-site.sh.template    $HOME/tmp/delete-from-brlcad-vm-site.sh
  $ cd $HOME/tmp

Make the *.sh files executable:

  $ chmod +x *.sh

Edit the *.sh files to replace <password> with the values for the current user.

Use the *.sh to tranfer files to or delete files from the BRL-CAD VM
directory on Sourceforge.  See HACKING for details.
