This is a place holder for the actual VM (*.ova).

To load the VM (and a copy of the README.txt file) into place do the
following:

Copy files:

  $ cp copy-to-brlcad-vm-site.sh.template        copy-to-brlcad-vm-site.sh
  $ cp delete-from-brlcad-vm-site.sh.template    delete-from-brlcad-vm-site.sh

Make the *.sh files executable:

  $ chmod +x *.sh

Edit the *.sh files to replace <password> with the values for the current user.

Use the *.sh to tranfer files to or delete files from the BRL-CAD VM
directory on Sourceforge.  See HACKING for details.
