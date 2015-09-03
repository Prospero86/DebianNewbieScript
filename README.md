# Debian Newbie Script
This is a script designed for the users of 4Chan's daily Friendly Linux Thread (https://boards.4chan.org/g/flt)
This script is designed to slightly rice a new Debian install, add some privacy features, add some good GNU/Linux programs, remove all desktop enviorments, and add a light-weight one called LXDE. LXDE looks like the classic Windows' interface, so it is better for newbies who are most likley switching to GNU/Linux from Windows.

##How to install!
**This is very important. How this script is set up is designed to be in your DESKTOP. It will not work if you are running the file outside the desktop or even inside a folder on your desktop. You have a chance of bloating your system, and creating files you have no access to if you run this outside the desktop folder.** It will create a few new folders with instructions. You can easily delete these folders after you are done with them.

Also, this is not a necessity but a recommendation: run it in a virtual console by pressing <code>ctrl</code> + <code>alt</code> + <code>F1</code>. You don't have to do this, but I recomend it as the DEs are being moved around and what not, you may lose the output. It will still be runing as a background process if you lose access to your DE , but you can't see anything. Login as yourself.

Go to the folder by opening up a terminal and preforming 

<code>cd ~/Desktop</code>.

Get the script from this link (https://raw.githubusercontent.com/Chocolate-Chip-Computing/DebianNewbieScript/master/newbie.sh) 
then run the script as

<code>su -c ./newbie.sh</code>

Enter the root password you chose at the time of install.

If you recieve any errors, such as "Permission Denied", preform 

<code>su -c chmod 777 newbie.sh</code>

This will change the permissions and you should be able to run it

###After installing
Reboot your computer. It's that simple.

####Bug Reports
All bug reports can be sent to my private email address, 
[chocolatechip@derpymail.org] (mailto:ChocolateChip@derpymail.org?subject=Debian%20Newbie%20Script%20Bugs)

A PGP Key can be found [here] (https://choco.neocities.org/pgp) (though, if you are a n00b, you probably don't know what PGP is...)

I can also be contacted via IRC: (irc://irc.canternet.org:+6697/Chocolate_Chip)


