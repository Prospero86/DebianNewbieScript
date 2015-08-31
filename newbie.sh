#!/bin/bash

# Debian Newbie Script v0.0.2 alpha
# This script is designed to rice a Debian install, and install new, better components on first run. 
# This script is designed for the latest stable release, Debian GNU/Linux 8.1 Jessie. 
# This script is designed for users of the Daily "Friendly Linux Thread" on 4chan's technology board, /g/. (https://boards.4chan.org/g/flt) 
# This script adds a number of privacy features. It also removes all other Desktop Enviorments, and installs a light-weight one called
# LXDE, which is much like the older Windows' Interface, so is good for newbies.

# Debian Newbie Script v0.0.2 Alpha
# Copyright (C) 2015  Chocolate Chip Computing

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
echo " "
echo "Please note it is EXTREAMLY IMPORTANT to have this script running from your"
echo "desktop. Do not continue the script if you are running it outside your desktop."
echo " "
echo " "
echo "The script is starting. Please wait as this will take some time"
echo " "
echo "Now checking if running as root..."
if [ "`whoami`" != "root" ]; then
    echo " "
    echo "Uh oh!"
    echo " "
    echo "Please run as root by doing su -c ./newbie.sh and entering your root password" 
    echo "you chose at install."
    exit 1
fi
echo "You are running as Root! Thanks!"
echo " "
echo "This begins the automated portion of this script."
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get remove --purge -y kde.
apt-get remove --purge -y gnome.
apt-get remove --purge -y xfce.
apt-get install -y lxde
apt-get install -y lightdm
apt-get remove --purge -y dillo
apt-get remove --purge -y konsole
apt-get install -y bleachbit
apt-get remove --purge -y wicd.
apt-get install -y networkmanager
apt-get install -y xul-ext-https-finder
apt-get install -y xul-ext-https-everywhere
apt-get remove --purge -y kmail
apt-get install -y Evolution
apt-get install -y gpg
echo "deb https://pkg.tox.chat/debian nightly release" > /etc/apt/sources.list.d/tox.list
apt-get install -y wget
wget https://pkg.tox.chat/debian/pkg.gpg.key -O /tmp/pkg.gpg.key
apt-key add /tmp/pkg.gpg.key
rm /tmp/pkg.gpg.key
apt-get install -y apt-transport-https
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get install -y qTox
mkdir Redshift
echo "Find an example config file at the Redshift website. Also, further instructions will be there as well" > Redshift/README
mkdir startup
echo "Add @redshift-gtk and @qtox to the file /home/[your user name]/.config/lxsession/LXDE/autostart"> startup/README
echo "Make sure to delete these extra files and folders after you are finished with them You will need to find documentation for all the things this has installed. If you do not want a package that this script has installed, preform the comamnd sudo apt-get remove --purge [packageName]" > README
apt-get install -y redshift-gtk
apt-get install -y hexchat
apt-get install -y build-essential
apt-get install -y keepass2
mkdir iceweasel-plugins
echo "These are for your Iceweasel instaltion. Please add them using the add-on's menu. Please. Also, add this: https://github.com/CrisBRM/user.js" > iceweasel-plugins/README
wget https://mozilla.github.io/shumway/extension/firefox/shumway.xpi -O iceweasel-plugins/shumway.xpi
wget https://addons.mozilla.org/firefox/downloads/latest/6623/addon-6623-latest.xpi -O iceweasel-plugins/privacy.xpi
wget https://addons.mozilla.org/firefox/downloads/latest/607454/addon-607454-latest.xpi -O iceweasel-plugins/uBlock-Origin.xpi
apt-get remove --purge -y clipit
apt-get autoremove --purge -y
apt-get autoclean
echo " "
echo "The script has finished"
echo " "
echo "Please check the new desktop folders for aditional information"
echo " "
echo "Do yourself a favor:"
echo " "
echo "After this ends, copy the following into another terminal"
echo 'su -c usermod -aG sudo `whoami`'
echo "Copy it exactly! Make sure to enter the root password, and not your own!"
echo "Thanks"
echo " "
echo "This script has been created by Chocolate Chip"
echo "http://choco.neocities.org"
echo "On GNU Social under the name @DuChocolatePony"
echo " "
echo "Please see the script itself for licence information"
echo " "
echo "Support the FSF by saying Free/Libre instead of Open Source!"
echo "And always say GNU/Linux when referring to the OS and not the Linux kernel!"
echo " "
echo "You may now restart your computer"
exit
