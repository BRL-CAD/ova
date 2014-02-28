To load the VM (and a copy of the ../VM-user-home-files/README.txt
file) into the proper place in the BRL-CAD files download area on
Sourceforge do the following:

Create a clean, working directory (staging directory, SDIR):
-----------------------------------------------------------

  $ rm -r $HOME/tmp
  $ mkdir $HOME/tmp

Copy the *.ova to the SDIR:
--------------------------

  $ cp <curr ova> $HOME/tmp

Copy other files from here to the SDIR:
--------------------------------------

  $ cp WARNING.txt                               $HOME/tmp
  $ cp ../VM-user-home-files/README.txt          $HOME/tmp
  $ cp copy-to-brlcad-vm-site.sh.template        $HOME/tmp/copy-to-brlcad-vm-site.sh
  $ cp delete-from-brlcad-vm-site.sh.template    $HOME/tmp/delete-from-brlcad-vm-site.sh
  $ cd $HOME/tmp

Make the *.sh files executable:
------------------------------

  $ chmod +x *.sh

******************************
Note the convenience script "copy-files-to-local-staging-area.sh" is
provided to do the above for you.
******************************

Go to the staging directory and edit the *.sh files to replace
<password> with the values for the current user.

Use the *.sh to tranfer files to or delete files from the BRL-CAD VM
directory on Sourceforge.  See HACKING for details.

Final recommended steps (using the copy/delete scripts):
-------------------------------------------------------

1. Copy the "WARNING.txt" file to Sourceforge (SF).
2. Delete the VM "*.ova" file from SF.
3. Delete the "README.txt" from SF.

4. Copy the new VM "*.ova" file to SF (takes 6 to 12 hours--maybe
   more!).

After the new VM "*.ov" file is visible in the BRL-CAD VM download
area:

5. Delete the "WARNING.txt" file from SF.
6. Copy the "README.txt" file to SF.

Success!
=======
