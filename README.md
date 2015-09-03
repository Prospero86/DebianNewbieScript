# Debian Newbie Script

**RE-READ THIS AS IT HAS CHANGED**

This is a script designed for the users of 4Chan's daily Friendly Linux Thread (https://boards.4chan.org/g/flt)
This script is designed to slightly rice a new Debian install, add some privacy features, add some good GNU/Linux programs, remove all desktop enviorments, and add a light-weight one called LXDE. LXDE looks like the classic Windows' interface, so it is better for newbies who are most likley switching to GNU/Linux from Windows.

##How to install!
**This is very important. How this script is set up is designed to be in your DESKTOP. It will not work if you are running the file outside the desktop or even inside a folder on your desktop. You have a chance of bloating your system, and creating files you have no access to if you run this outside the desktop folder.** It will create a few new folders with instructions. You can easily delete these folders after you are done with them.

Also, *and this has changed*, **you must run it in a virtual console by pressing <code>ctrl</code> + <code>alt</code> + <code>F1</code>.** You need to do this as the DEs are being moved around and what not, you will lose the output. At the end there is stuff you need to see. When in the virtual terminal, Login as yourself.

Go to the folder by opening up the virtual terminal and preforming 

<code>cd ~/Desktop</code>.

Get the script from this link (https://raw.githubusercontent.com/Chocolate-Chip-Computing/DebianNewbieScript/master/newbie.sh) 

(you can download it through your currently installed web browser. Just make sure it downloads to the desktop)
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


