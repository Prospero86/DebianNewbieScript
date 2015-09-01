#!/bin/bash

# Debian Newbie Script v0.0.9 final alpha (next beta)
# This script is designed to paritally rice a Debian install, and install new, better components on first run. 
# This script is designed for the latest stable release, Debian GNU/Linux 8.1 Jessie. 
# This script is designed for users of the Daily "Friendly Linux Thread" on 4chan's technology board, /g/. 
# (https://boards.4chan.org/g/flt) 

# This script adds a number of privacy features. It also removes all other Desktop Enviorments, and installs a 
# light-weight one called LXDE, which is much like the older Windows' Interface, 
# so is good for newbies.

# Debian Newbie Script v0.0.9 final alpha (next beta)
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
echo "Thank you for choosing this script for your new GNU/Linux experience!"
echo " "
echo "Please note it is EXTREMELY IMPORTANT to have this script running from your"
echo "desktop. Do not continue the script if you are running it outside your desktop."
echo " "
echo "Would you like to continue? [Y/n]?"
read ans

if [ $ans = y -o $ans = Y -o $ans = yes -o $ans = Yes -o $ans = YES ]; then
echo " "
echo "Now continuing"
fi

if [ $ans = n -o $ans = N -o $ans = no -o $ans = No -o $ans = NO ]; then
    echo " "
    echo "Exiting..."
    exit 1
fi
echo " "
echo "The script is starting."
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
echo " "
echo " "
echo "You are running as Root! Thanks!"
echo " "
echo "Are you SURE you want to contine? This will take a long time."
echo "You will have to MANUALLY UNDO any changes from this point on!"
echo " "
echo "Continue? [Y/n]?"
read ans

if [ $ans = y -o $ans = Y -o $ans = yes -o $ans = Yes -o $ans = YES ]; then
echo " "
echo "Now continuing"
fi

if [ $ans = n -o $ans = N -o $ans = no -o $ans = No -o $ans = NO ]; then
    echo " "
    echo "Exiting..."
    exit 1
fi
echo "This begins the automated portion of this script. If you wish to quit, preform:"
echo "su -c killall bash"
echo "In a seprate terminal. You will have to manually undo anything past this point."
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get install -y firmware-linux-free
apt-get remove --purge -y kde.
apt-get remove --purge -y gnome.
apt-get remove --purge -y xfce.
apt-get install -y firmware-linux-free
apt-get install -y sudo
apt-get install -y --no-install-recommends lxde
apt-get install -y vlc
apt-get install -y sox
apt-get install -y lame
apt-get install -y vorbis-tools
apt-get install -y nano
apt-get install -y lightdm
apt-get install -y alsamixergui
apt-get install -y deluge
apt-get install -y iceweasel
apt-get install -y evince-gtk
apt-get install -y lxpolkit
apt-get install -y menu-xdg
apt-get install -y usermode
apt-get install -y xserver-xorg
apt-get install -y gimp
apt-get install -y libreoffice
apt-get install -y lxtask
apt-get install -y screenfetch
apt-get remove --purge -y dillo
apt-get remove --purge -y konsole
apt-get install -y bleachbit
apt-get remove --purge -y wicd.
apt-get install -y network-manager
apt-get install -y xul-ext-https-finder
apt-get install -y xul-ext-https-everywhere
apt-get remove --purge -y kmail
apt-get remove --purge -y konqureor
apt-get install -y evolution
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
apt-get install -y qtox
mkdir Redshift
echo "Find an example config file at the Redshift website. 
Also, further instructions will be there as well.
My own redshift config is:
; Global settings for redshift
[redshift]
; Set the day and night screen temperatures
temp-day=5700
temp-night=2900

; Enable/Disable a smooth transition between day and night
; 0 will cause a direct change from day to night screen temperature.
; 1 will gradually increase or decrease the screen temperature.
transition=1

; Set the screen brightness. Default is 1.0.
;brightness=0.9
; It is also possible to use different settings for day and night
; since version 1.8.
;brightness-day=0.7
;brightness-night=0.4
; Set the screen gamma (for all colors, or each color channel
; individually)
gamma=0.8
;gamma=0.8:0.7:0.8
; This can also be set individually for day and night since
; version 1.10.
;gamma-day=0.8:0.7:0.8
;gamma-night=0.6

; Set the location-provider: 'geoclue', 'geoclue2', 'manual'
; type 'redshift -l list' to see possible values.
; The location provider settings are in a different section.
location-provider=manual

; Set the adjustment-method: 'randr', 'vidmode'
; type 'redshift -m list' to see all possible values.
; 'randr' is the preferred method, 'vidmode' is an older API.
; but works in some cases when 'randr' does not.
; The adjustment method settings are in a different section.
adjustment-method=vidmode

; Configuration of the location-provider:
; type 'redshift -l PROVIDER:help' to see the settings.
; ex: 'redshift -l manual:help'
; Keep in mind that longitudes west of Greenwich (e.g. the Americas)
; are negative numbers.
[manual]
lat=[omited]
lon=[omited]

; Configuration of the adjustment-method
; type 'redshift -m METHOD:help' to see the settings.
; ex: 'redshift -m randr:help'
; In this example, randr is configured to adjust screen 1.
; Note that the numbering starts from 0, so this is actually the
; second screen. If this option is not specified, Redshift will try
; to adjust _all_ screens.
[randr]
screen=1
You don't need to use this exactly as it is here, though." > Redshift/README
mkdir startup
echo "Make sure to delete these extra files and folders after you are finished with them. 
You will need to find documentation for all the things this has installed. 
If you do not want a package that this script has installed, preform the comamnd 

sudo apt-get remove --purge [packageName]. 

Periodically preform the commands 

sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade

I have added LXDE to this script as I use it myself, it is much like the old Windows' interface, 
and it is jsut good for beginners, imho. You can pick another one once you know what you're doing, I guess.

Thanks again for using my script!" > README
apt-get install -y redshift-gtk
apt-get install -y hexchat
apt-get install -y build-essential
apt-get install -y keepass2
apt-get install -y shutter
mkdir iceweasel-plugins
echo "These are for your Iceweasel installtion. Please add them using the add-on's menu.
Please. 
Also, add this: 
https://github.com/CrisBRM/user.js" > iceweasel-plugins/README
wget https://mozilla.github.io/shumway/extension/firefox/shumway.xpi -O iceweasel-plugins/shumway.xpi
wget https://addons.mozilla.org/firefox/downloads/latest/6623/addon-6623-latest.xpi -O iceweasel-plugins/privacy.xpi
wget https://addons.mozilla.org/firefox/downloads/latest/607454/addon-607454-latest.xpi -O iceweasel-plugins/uBlock-Origin.xpi
wget https://mega.nz/meganz.xpi -O iceweasel-plugins/mega.xpi
mkdir ~/Music/.startup
wget http://www.windows93.net/c/sys/boot/boot.ogg -O ../Music/.startup/startup.ogg
echo "@play -t ogg -v 0.40 ../Music/startup.ogg
@redshift-gtk
@qtox
@lxpanel --profile LXDE
@pcmanfm --desktop --profile LXDE
@xscreensaver -no-splash" > ../.config/lxsession/LXDE/autostart
mkdir
echo "If you don't like my startup sound, delete it using
sudo rm -r -f ~/Music/.startup
and remove it from your ~/.config/lxsession/LXDE/auotstart file" > startup/README
apt-get remove --purge -y clipit
apt-get autoremove --purge -y
apt-get autoclean
update-menus
chmod 777 startup
chmod 777 iceweasel-plugins
chmod 777 Redshift
chmod 777 README
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
echo "On GNU Social under the name @duchocolatepony@quitter.se"
echo " "
echo "Please see the script itself for licence information"
echo " "
echo "Support the FSF by saying Free/Libre instead of Open Source!"
echo "And always say GNU/Linux when referring to the OS and not the Linux kernel!"
echo " "
echo "You may now restart your computer"
exit
