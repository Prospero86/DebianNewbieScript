#!/bin/bash

#     ________                     __      __          ________    _          
#    / ____/ /_  ____  _________  / /___ _/ /____     / ____/ /_  (_)___      
#   / /   / __ \/ __ \/ ___/ __ \/ / __ `/ __/ _ \   / /   / __ \/ / __ \     
#  / /___/ / / / /_/ / /__/ /_/ / / /_/ / /_/  __/  / /___/ / / / / /_/ /     
#  \____/_/ /_/\____/\___/\____/_/\__,_/\__/\___/   \____/_/ /_/_/ .___/      
#     ______                            __  _                   /_/           
#    / ____/___  ____ ___  ____  __  __/ /_(_)___  ____ _                     
#   / /   / __ \/ __ `__ \/ __ \/ / / / __/ / __ \/ __ `/                     
#  / /___/ /_/ / / / / / / /_/ / /_/ / /_/ / / / / /_/ /                      
#  \____/\____/_/ /_/ /_/ .___/\__,_/\__/_/_/ /_/\__, /                       
#                      /_/                      /____/  


# Debian Newbie Script v0.2.0 beta
# This script is designed to paritally rice a Debian install, and install new, better components on first run. 
# This script is designed for the latest stable release, Debian GNU/Linux 8.1 Jessie. This includes 32 bit 
# packages, to ensure it works on both 32 and 64 bit systems. All apt packages will obviously be tailored
# to the system. I am currently trying to figure out how to make an auto-update script to insure that the user is
# using the latest version.

# This script is designed for users of the Daily "Friendly Linux Thread" on 4chan's technology board, /g/. 
# (https://boards.4chan.org/g/flt) 

# This script adds a number of privacy features. It also removes all other Desktop Enviorments, and installs a 
# light-weight one called LXDE, which is much like the older Windows' Interface, so is good for newbies.

# YOU MUST RUN THIS SCRIPT FROM YOUR DESKTOP. IT IS IMPERATIVE THAT YOU DO. IF YOU DO NOT, YOU MAY CREATE
# FILES THAT BLOAT YOUR SYSTEM, AND HAVE NO ACCESS TO THEM. DO NOT RUN THIS SCRIPT OUTSIDE THE DESKTOP!
# (yes, it would be easy to find and access the files that have been created, maybe move them all, but
# this script is designed for n00bs. That'd be too hard for a beginer. To make it easier, just trust me
# and run from the desktop.)

# I have tried my very best to only include Free/Libre software. If you see any package in here that is not,
# CONTACT ME IMEDIETLY. chocolatechip@derpymail.org is my email, and my PGP key is avalible at 
# https://choco.neocities.org/pgp
# Please email all bug reports to the same address.
# You can also contact me on #Chocolate_Chip on the network irc.canternet.org (please use the SSL Port 6697.)

# Debian Newbie Script v0.2.0 beta
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

# Start echo(s)
echo "
Copyright (c) 2015
 ██████╗██╗  ██╗ ██████╗  ██████╗ ██████╗ ██╗      █████╗ ████████╗███████╗    
██╔════╝██║  ██║██╔═══██╗██╔════╝██╔═══██╗██║     ██╔══██╗╚══██╔══╝██╔════╝    
██║     ███████║██║   ██║██║     ██║   ██║██║     ███████║   ██║   █████╗      
██║     ██╔══██║██║   ██║██║     ██║   ██║██║     ██╔══██║   ██║   ██╔══╝      
╚██████╗██║  ██║╚██████╔╝╚██████╗╚██████╔╝███████╗██║  ██║   ██║   ███████╗    
 ╚═════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚══════╝    
 ██████╗██╗  ██╗██╗██████╗                                                     
██╔════╝██║  ██║██║██╔══██╗                                                    
██║     ███████║██║██████╔╝                                                    
██║     ██╔══██║██║██╔═══╝                                                     
╚██████╗██║  ██║██║██║                                                         
 ╚═════╝╚═╝  ╚═╝╚═╝╚═╝                                                         
 ██████╗ ██████╗ ███╗   ███╗██████╗ ██╗   ██╗████████╗██╗███╗   ██╗ ██████╗    
██╔════╝██╔═══██╗████╗ ████║██╔══██╗██║   ██║╚══██╔══╝██║████╗  ██║██╔════╝    
██║     ██║   ██║██╔████╔██║██████╔╝██║   ██║   ██║   ██║██╔██╗ ██║██║  ███╗   
██║     ██║   ██║██║╚██╔╝██║██╔═══╝ ██║   ██║   ██║   ██║██║╚██╗██║██║   ██║   
╚██████╗╚██████╔╝██║ ╚═╝ ██║██║     ╚██████╔╝   ██║   ██║██║ ╚████║╚██████╔╝   
 ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝      ╚═════╝    ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝ 
" 
echo " 
                                 Scripts for
   ▄██████▄  ███▄▄▄▄   ███    █▄  
  ███    ███ ███▀▀▀██▄ ███    ███ 
  ███    █▀  ███   ███ ███    ███ 
 ▄███        ███   ███ ███    ███ 
▀▀███ ████▄  ███   ███ ███    ███ 
  ███    ███ ███   ███ ███    ███ 
  ███    ███ ███   ███ ███    ███ 
  ████████▀   ▀█   █▀  ████████  
                                    .________.___    .______  .________.___.__  
                                    |    ___/|   |   :      \ |    ___/:   |  \ 
                                    |___    \|   |   |   .   ||___    \|   :   |
                                    |       /|   |/\ |   :   ||       /|   .   |
                                    |__:___/ |   /  \|___|   ||__:___/ |___|   |
                                       :     |______/    |___|   :         |___| 
 __    ____  _  _  __  __  _  _ 
(  )  (_  _)( \( )(  )(  )( \/ )
 )(__  _)(_  )  (  )(__)(  )  ( 
(____)(____)(_)\_)(______)(_/\_)
(and that is the RIGHT WAY of saying it!)
"
echo "To continue, type c. To quit, type q"
read ans

if [ $ans = c -o $ans = C -o $ans = continue -o $ans = Continue -o $ans = CONTINUE ]; then
echo " "
echo "Continuing..."
clear
fi

if [ $ans = q -o $ans = Q -o $ans = quit -o $ans = Quit -o $ans = QUIT ]; then
clear
echo " "
echo "Ok then..."
echo " "
echo "Thank you for choosing Chocolate Chip Computing for your new GNU/Linux Experience!"
exit 1
fi

clear
echo " "
echo "Thank you for choosing this script for your new GNU/Linux experience!"
echo " "
echo "This script is designed for Debian GNU/Linux 8.1 Jessie"
echo " "
echo "You are using version 0.2.0 beta. Please confirm you are using the latest version."
echo "You will find the latest version at"
echo "https://github.com/Chocolate-Chip-Computing/DebianNewbieScript"
echo " "

# Licence Script
echo "
Debian Newbie Script v0.2.0 beta  Copyright (C) 2015  Chocolate Chip Computing
This program comes with ABSOLUTELY NO WARRANTY; for details type d.
This is free software, and you are welcome to redistribute it
under certain conditions; type d for details, or c to continue.
"
read ans

if [ $ans = d -o $ans = D -o $ans = details -o $ans = Details -o $ans = DETAILS ]; then
echo "
    Debian Newbie Script v0.2.0 beta: A script to optimize a fresh install for Debian Newbies
    Copyright (C) 2015 Chocolate Chip Computing

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>. 
    
    The programmer is avalible to contact via the IRC channel #Chocolate_Chip
    on the network irc.canternet.org. The programmer can also be contacted
    via email. The email address is chocolatechip@derpymail.org.
"
echo " "
echo "Now continuing..."
fi

if [ $ans = c -o $ans = C -o $ans = continue -o $ans = Continue -o $ans = CONTINUE ]; then
clear
    echo "
Very well. The licence terms can be viewed at
https://gnu.org/licences
"
    echo "Now Continuing..."
fi

# Confirm Script 1
echo " "
echo " "
echo "Please note it is EXTREMELY IMPORTANT to have this script running from your"
echo "desktop. Abort the script if you are running it outside your desktop."
echo " "
echo "Would you like to continue? [Y/n]?"
read ans

if [ $ans = y -o $ans = Y -o $ans = yes -o $ans = Yes -o $ans = YES ]; then
echo " "
echo "Now continuing"
clear
fi

if [ $ans = n -o $ans = N -o $ans = no -o $ans = No -o $ans = NO ]; then
    echo " "
    echo "Exiting..."
    clear
    exit 1
fi
echo " "
echo "The script is starting."
echo " "

# Check if root. If not root, program will exit
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
clear

# Confirm Script 2
echo "Are you SURE you want to contine? This will take a long time."
echo "You will have to MANUALLY UNDO any changes from this point on!"
echo " "
echo "YOU MUST HAVE A CONSTANT, DECENT ENOUGH INTERNET CONNECTION FOR THIS SCRIPT!!!"
echo "IF NOT, APT-GET WILL TIME OUT AND PORTIONS OF THIS SCRIPT WILL FAIL!!!"
echo " "
echo "Continue? [Y/n]?"
read ans

if [ $ans = y -o $ans = Y -o $ans = yes -o $ans = Yes -o $ans = YES ]; then
echo " "
echo "Now continuing"
clear
fi

if [ $ans = n -o $ans = N -o $ans = no -o $ans = No -o $ans = NO ]; then
    echo " "
    echo "Exiting..."
    clear
    exit 1
fi

# Last begin echo(s)
echo "This begins the automated portion of this script. If you wish to quit, preform:"
echo "su -c killall newbie.sh"
echo "In a seprate terminal. You will have to manually undo anything past this point."
echo " "
echo "Some packages may require aditional verification. Please don't go to far away"
echo "From your terminal"
echo " "

# All steps are alphabetical unless order is a nesessity

# Pre-requisities
echo "
# These are your debian source files. Whenever changing them, preform apt-get update
# or aptitude update. To use non-free packages, add the words contrib non-free to the
# ends of these lines. It is highly reccomended that you DO NOT USE NON-FREE PACKAGES.
# These non-free packages contradict the entire GNU Philosophy and are only included for 
# the sake of users who wish to use them. Please don't.

# The MAIN Debian Repo
deb ftp://ftp.us.debian.org/debian/ jessie main
deb-src ftp://ftp.us.debian.org/debian/ jessie main

" > /etc/apt/sources.list

# Debian 
# Begin Automation
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y

# remove other DEs
apt-get remove --purge -y gnome.
apt-get remove --purge -y kde.
apt-get remove --purge -y xfce.
apt-get remove --purge -y cinnamon.

# install needed packages
apt-get install -y firmware-linux-free
apt-get install -y tar
apt-get install -y zip
apt-get install -y gzip
apt-get install -y apt-transport-http
apt-get install -y apt-transport-https
apt-get install -y aptitude
apt-get install -y build-essential
apt-get install -y sudo
apt-get install -y wget

# Change ftp to Http now that apt-transport-http(s) is installed
echo "
# These are your debian source files. Whenever changing them, preform apt-get update
# or aptitude update. To use non-free packages, add the words contrib non-free to the
# ends of these lines. It is highly reccomended that you DO NOT USE NON-FREE PACKAGES.
# These non-free packages contradict the entire GNU Philosophy and are only included for 
# the sake of users who wish to use them. Please don't.

# The MAIN Debian Repo
deb http://http.us.debian.org/debian/ jessie main
deb-src http://http.us.debian.org/debian/ jessie main

# Debian security updates
deb http://security.debian.org/ jessie/updates main
deb-src http://security.debian.org/ jessie/updates main

# Debian updates (previosuly known as Volitile)
deb http://http.us.debian.org/debian/ jessie-updates main
deb-src http://http.us.debian.org/debian/ jessie-updates main


" > /etc/apt/sources.list
apt-get update

# install LXDE, remove some bloat, personalization
apt-get install -y --no-install-recommends lxde-core
apt-get install -y --no-install-recommends lxde
apt-get install -y --no-install-recommends lxde-common
apt-get install -y --no-install-recommends task-lxde-desktop 
apt-get install -y lxde-settings-daemon 
apt-get install -y lxde-icon-theme
apt-get install -y lightdm
apt-get remove --purge -y wicd
apt-get install -y alsamixergui
apt-get install -y evince-gtk
apt-get install -y evolution
apt-get install -y gpicview
apt-get install -y gtk-chtheme
apt-get install -y gtk-qt-engine
apt-get install -y gtk-smooth-themes
apt-get install -y gtk-theme-config
apt-get install -y gtk-theme-switch
apt-get install -y gtk2-engines
apt-get install -y gtk2-engines-aurora
apt-get install -y gtk2-engines-cleanice
apt-get install -y gtk2-engines-magicchicken
apt-get install -y gtk2-engines-moblin
apt-get install -y gtk2-engines-murrine
apt-get install -y gtk2-engines-nodoka
apt-get install -y gtk2-engines-oxygen
apt-get install -y gtk2-engines-pixbuf
apt-get install -y gtk2-engines-qtcurve
apt-get install -y gtk2-engines-udeb
apt-get install -y gtk2-engines-ubuntulooks
apt-get install -y gtk2-engines-wonderland
apt-get install -y gtk3-engines-oxygen
apt-get install -y clearlooks-phenix-theme
apt-get install -y hunspell-en-us
apt-get install -y hyphen-en-us
apt-get install -y iceweasel
apt-get install -y lxpolkit
apt-get install -y menu-xdg
apt-get install -y lxsession
apt-get install -y lxtask
apt-get install -y lxterminal
apt-get install -y lxpanel
apt-get install -y lxappearance
apt-get install -y pcmanfm
apt-get install -y usermode
apt-get install -y xserver-xorg
apt-get install -y xscreensaver
apt-get install -y network-manager
apt-get install -y --no-install-recommends xarchiver

# Add some good, everyday programs
apt-get install -y --no-install-recommends aspell
apt-get install -y aspell-en
apt-get install -y gimp
apt-get install -y leafpad
apt-get install -y libreoffice
apt-get install -y libreoffice-gtk
apt-get install -y nano
apt-get install -y gtk-redshift
apt-get install -y redshift
apt-get install -y screenfetch
apt-get install -y shutter
apt-get install -y qbittorrent
apt-get install -y synaptic

# Cursor Packages 
# THESE ARE A DEPENDENCY FURTHER IN THE SCRIPT
apt-get install -y --no-install-recommends dmz-cursor-theme
apt-get install -y --no-install-recommends x-cursor-theme

# Some privacy tools
apt-get install -y bleachbit
apt-get install -y gpg
apt-get install -y keepass2
# TOR v. 5.0.2 Anomizer Network script
apt-get install -y tor
wget https://www.torproject.org/dist/torbrowser/5.0.2/tor-browser-linux32-5.0.2_en-US.tar.xz -O /tmp/tor.tar.xz
tar -xvC /tmp/tor.tar.xz -f /opt/tor
echo "
[Desktop Entry]
Name=Tor
GenericName=Tor, the Onion Browser
Exec=/opt/tor/browser/tor.desktop
Icon=
Terminal=false
Type=Application
StartupNotify=false
Categories=Internet;
MimeType=application/qtox;
" > tor.desktop
rm /tmp/tor.tar.xz
mkdir anon
echo "This is the Tor Browser.
To configure it, simpily double click the tor icon, wait a few moments, and it will open.
If you wish to remove tor, preform the commands:
apt-get remove --purge tor
rm -r -f /opt/tor" > anon/tor
# I2P Script
echo "deb http://deb.i2p2.no/ jessie main
deb-src http://deb.i2p2.no/ jessie main" > /etc/apt/sources.list.d/i2p.list
wget https://geti2p.net/_static/i2p-debian-repo.key.asc -O /tmp/i2p.key.asc
apt-key add /tmp/12p.key.asc
rm /tmp/i2p.key.asc 
apt-get update 
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get install -y --force-yes i2p 
apt-get install -y --force-yes i2p-keyring
echo "The I2P Network is much like tor, only it's a different network and runs on Java. 
Use this as an alternative to tor if you wish. If you want to remove, preform:
rm /etc/apt/sources.list.d/i2p.list
apt-get remove --purge ip2 ip2-keyring

" > anon/i2p

# Communication tools
apt-get install -y evolution
# Hexchat instead of weechat or irissi or IRCii because a GUI is easiest for a n00b
apt-get install -y hexchat

# Media tools
apt-get install -y vlc
apt-get install -y lame
# DO NOT REMOVE SOX FROM THIS LIST. IT IS A DEPENDENCY FURTHER IN THE SCRIPT
apt-get install -y sox
# DO NOT REMOVE VORBIS-TOOLS FROM THIS LIST. IT IS A DEPENDENCY FURTHER IN THE SCRIPT
apt-get install -y vorbis-tools

# remove some other packages that (may) come pre-bundled
apt-get remove --purge -y clipit
apt-get remove --purge -y dillo
apt-get remove --purge -y konqureor
apt-get remove --purge -y kmail
apt-get remove --purge -y konsole
apt-get remove --purge -y deluge

# qTox, the skype replacment's script
echo "deb https://pkg.tox.chat/debian nightly release" > /etc/apt/sources.list.d/tox.list
wget https://pkg.tox.chat/debian/pkg.gpg.key -O /tmp/pkg.gpg.key
apt-key add /tmp/pkg.gpg.key
rm /tmp/pkg.gpg.key
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get install -y qtox

# Shutter Docs
echo "Shutter is a tool much like Snipping Tool for Windows Vista and later.
Simpily open it, click selection, select, and press enter. You have now taken a screenshot." > tools/Shutter

# Redshift script
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


You don't need to use this exactly as it is here, though." > tools/Redshift


# Master Readme
echo "Make sure to delete these extra files and folders after you are finished with them. 
You will need to find documentation for all the things this has installed. 
If you do not want a package that this script has installed, preform the comamnd 

sudo apt-get remove --purge [packageName]. 

Periodically preform the commands 

sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade

I have added LXDE to this script as I use it myself, it is much like the old Windows' interface, 
and it is just good for beginners, imho. You can pick another one once you know what you're doing, I guess.

To configure your network, use the command nmtui. This is network-manager's terminal interface.

Soon, I will be writing more documentation for all the packages I installed, made for the point of view of n00bs.

I have not included non-free/proprietory packages in here for a reason. That reason is that they are evil. Find out why at:

https://gnu.org/philosophy

If you see any non-free/proprietory packages in this script, contact me imedietly at the email address

chocolatechip@derpymail.org

Please send all bug reports (and any questions) there as well. A PGP key can be found at:

https://choco.neocities.org/pgp

I can also be contacted at the IRC channel #Chocolate_Chip at irc.canternet.org (SSL Port 6697)
(HINT: Use the hexchat package this script installs)
(Other Hint: Try copying irc://irc.canternet.org:+6697/Chocolate_Chip into Iceweasel.)

No matter what, avoid skype and facebook:
https://stallman.org/skype.html

https://stallman.org/facebook.html

And always refer to your OS as GNU/Linux unless refering to the kernel itself!

Thanks again for using my script!" > README

# GPG Docs
echo "This is the documentation for GPG. GPG (full name GNPGP) is a free/Libre version of the PGP encryption
algorithem. Commonly used for email, it can also be used to encrypt files. 

To use PGP, you must first create a key. To do this, preform the command

gpg --gen-key

This will begin the process. It is reccomended you make your key the maximum amount of characters the program allows.
It will ask you a few questins that you should answer honestly. There is little to no point not to. An example:
Expire: 3 Months
Full name: Dustin M. Shappee
email: chocolatechip@derpymail.org
comment: Chocolate D. Chip
passphrase: [secret passphrase here]

Using this, I have configured a key to be alid for 3 months, to be registered as my real name (and my online alias)
and have configured a secret password (I reccomend getting one from http://securepasswordgenerator.com).

The signature looks something like this:

Dustin M. Shappee (ChocolateChip@derpymail.org) <chocolatechip@derpymail.org>
PUB: 246810 SIG: 1357911 created: 09-10-15 NextCheck: 11-10-15

After you enter this information, will generate the key. It might seem odd that it asks you to move the mouse and type random keys, 
but it is all for the sake of generating random numbers for your key.

Now, after that has finished, to export your key, preform the command

gpg --armor --output pubkey.txt --export [Your Name]

(the --armor part is pretty important because it is what converts your key to text)
Then give your friends your key so they know it is yours.

Now, open Evolution. Evolution needs little configuring for PGP.  (but you will need to configure it to use
your email, obviously.) Preform the command:

gpg --list-sigs

Find the one you just made, copy the PUB key, and add it to edit > Prefrences > (your account) > edit > Security > 
Open PGP Key ID. Paste the PUB key there. Select the three options below it. It works better if you add 0x to the key.
For example, 832111 would become 0x83211.

Then, start composing an email for the account you made an email to. Go to the settings and select PGP Sign. This will
make your message signed with your PGP Signaure. Make the recipient one of your friends. Have him preform the same steps to 
get a PGP key. Sned him a message with your signature signed. Then have him send you a message signed. Then, once you get his 
signature, import it using 

gpg --import
[paste pgp key]
then press ctrl + D

Now, go back to your email, and select PGP Encrypt and PGP Sign. Send another email to your friend. This will arrive to him
encrypted. Now have him reply to the message with another encrypted message. Congratulations, you have sent a PGP Encrypted
message. 

Some tips:
Encrypt whenever possible. If you only encrypt certain things, the survaliance programs will take extra notice to the ones you
are encrypting.

Don't automatically trust something just because it has been PGP Signed/Encrypted. Anyone can make a PGP key. People can also
make fradulent keys using your email address. That is why it is important to make your keys expire in a short amount of time, 
and also post your keys to a site your friends can trust.

Thank you for reading this tutorial." > anon/GPG

# Iceweasel downloads
mkdir iceweasel-plugins
echo "These are for your Iceweasel installtion. Please add them using the add-on's menu.
Please. 
Also, add this: 
https://github.com/CrisBRM/user.js" > iceweasel-plugins/README
wget https://mozilla.github.io/shumway/extension/firefox/shumway.xpi -O iceweasel-plugins/shumway.xpi
wget https://addons.mozilla.org/firefox/downloads/latest/6623/addon-6623-latest.xpi -O iceweasel-plugins/privacy.xpi
wget https://addons.mozilla.org/firefox/downloads/latest/607454/addon-607454-latest.xpi -O iceweasel-plugins/uBlock-Origin.xpi
wget https://mega.nz/meganz.xpi -O iceweasel-plugins/mega.xpi
apt-get install -y xul-ext-https-finder
apt-get install -y xul-ext-https-everywhere

# LXDE startup modifier
mkdir startup
mkdir ../Music/.startup
wget http://www.windows93.net/c/sys/boot/boot.ogg -O ../Music/.startup/startup.ogg
echo "@play -t ogg -v 0.40 ~/Music/.startup/startup.ogg
@redshift-gtk
@qtox
@lxpanel --profile LXDE
@pcmanfm --desktop --profile LXDE
@xscreensaver -no-splash" > ../.config/lxsession/LXDE/autostart
# Startup Readme
echo "If you don't like the startup sound I added, delete it using
sudo rm -r -f ~/Music/.startup
and remove it from your ~/.config/lxsession/LXDE/auotstart file

NOTE: I AM NOT AFFILIATED WITH THE WINDOWS 93 JOKE SITE" > startup/README


# Make desktop defaults, design, background
echo "[Session]
window_manager=openbox-lxde
windows_manager/command=openbox
windows_manager/session=LXDE
disable_autostart=no
polkit/command=lxpolkit
clipboard/command=lxclipboard
xsettings_manager/command=build-in
proxy_manager/command=build-in
keyring/command=ssh-agent
quit_manager/command=lxsession-logout
quit_manager/image=/usr/share/lxde/images/logout-banner.png
quit_manager/layout=top
lock_manager/command=lxlock
terminal_manager/command=lxterminal
launcher_manager/command=lxpanelctl
webbrowser/command=iceweasel
video_player/command=/usr/bin/vlc
audio_player/command=/usr/bin/vlc
image_display/command=gpicview
bittorent/command=qbittorrent
tasks/command=lxtask
document/command=libreoffice
text_editor/command=leafpad
im1/command=srg
file_manager/command=pcmanfm
network_gui/command=nmtui
im2/autostart=true

[GTK]
sNet/ThemeName=Clearlooks
sNet/IconThemeName=nuoveXT2
sGtk/FontName=Sans 10
iGtk/ToolbarStyle=3
iGtk/ButtonImages=1
iGtk/MenuImages=1
iGtk/CursorThemeSize=18
iXft/Antialias=1
iXft/Hinting=1
sXft/HintStyle=hintfull
sXft/RGBA=rgb
iNet/EnableEventSounds=1
iNet/EnableInputFeedbackSounds=1
sGtk/ColorScheme=
iGtk/ToolbarIconSize=3
sGtk/CursorThemeName=Adwaita

[Mouse]
AccFactor=20
AccThreshold=13
LeftHanded=0

[Keyboard]
Delay=357
Interval=25
Beep=1

[State]
guess_default=true

[Dbus]
lxde=true

[Environment]
menu_prefix=lxde-" > ../.config/lxsession/LXDE/desktop.conf

echo "[special_cases]
synaptic=synaptic-pkexec
soffice.bin=libreoffice
x-terminal-emulator=lxterminal" > ../.config/lxpanel/launchtaskbar.cfg

echo "# lxpanel <profile> config file. Manually editing is not recommended.
# Use preference dialog in lxpanel to adjust config when you can.

Global {
  edge=bottom
  allign=center
  margin=0
  widthtype=percent
  width=100
  height=28
  transparent=1
  tintcolor=#c900ff
  alpha=60
  setdocktype=0
  setpartialstrut=1
  usefontcolor=1
  fontcolor=#ffffff
  background=0
  backgroundfile=/usr/share/lxpanel/images/background.png
  iconsize=23
}
Plugin {
  type=space
  Config {
    Size=3
  }
}
Plugin {
  type=menu
  Config {
    image=/usr/share/lxde/images/lxde-icon.png
    system {
    }
    separator {
    }
    item {
      command=run
    }
    separator {
    }
    item {
      image=gnome-logout
      command=logout
    }
  }
}
Plugin {
  type=launchbar
  Config {
    Button {
      id=pcmanfm.desktop
    }
    Button {
      id=menu://applications/Internet/iceweasel.desktop
    }
    Button {
      id=menu://applications/System/lxterminal.desktop
    }
    Button {
      id=menu://applications/Accessories/shutter.desktop
    }
  }
}
Plugin {
  type=space
  Config {
    Size=4
  }
}
Plugin {
  type=wincmd
  Config {
    Button1=iconify
    Button2=shade
  }
}
Plugin {
  type=space
  Config {
    Size=4
  }
}
Plugin {
  type=pager
  Config {
  }
}
Plugin {
  type=taskbar
  Config {
    tooltips=1
    IconsOnly=0
    AcceptSkipPager=1
    ShowIconified=1
    ShowMapped=1
    ShowAllDesks=0
    UseMouseWheel=1
    UseUrgencyHint=1
    FlatButton=0
    MaxTaskWidth=150
    spacing=1
    SameMonitorOnly=1
    GroupedTasks=1
  }
  expand=1
}
Plugin {
  type=space
  Config {
    Size=2
  }
  expand=1
}
Plugin {
  type=volumealsa
  Config {
  }
}
Plugin {
  type=cpu
  Config {
  }
}
Plugin {
  type=tray
  Config {
  }
}
Plugin {
  type=dclock
  Config {
    ClockFmt=%r
    TooltipFmt=%A %x
    BoldFont=0
    IconOnly=0
    CenterText=0
  }
}
Plugin {
  type=launchbar
  Config {
    Button {
      id=lxde-screenlock.desktop
    }
    Button {
      id=lxde-logout.desktop
    }
  }
}
 " > ../.config/lxpanel/LXDE/panels/panel
# Desktop Files

# Iceweasel
echo "
[Desktop Entry]
Encoding=UTF-8
Name=Iceweasel
Name[bg]=Iceweasel
Name[ca]=Iceweasel
Name[cs]=Iceweasel
Name[el]=Iceweasel
Name[es]=Iceweasel
Name[fa]=Iceweasel
Name[fi]=Iceweasel
Name[fr]=Iceweasel
Name[hu]=Iceweasel
Name[it]=Iceweasel
Name[ja]=Iceweasel
Name[ko]=Iceweasel
Name[nb]=Iceweasel
Name[nl]=Iceweasel
Name[nn]=Iceweasel
Name[no]=Iceweasel
Name[pl]=Iceweasel
Name[pt]=Iceweasel
Name[pt_BR]=Iceweasel
Name[ru]=Iceweasel
Name[sk]=Iceweasel
Name[sv]=Iceweasel
Comment=Browse the World Wide Web
Comment[bg]=Сърфиране в Мрежата
Comment[ca]=Navegueu per el web
Comment[cs]=Prohlížení stránek World Wide Webu
Comment[de]=Im Internet surfen
Comment[el]=Περιηγηθείτε στον παγκόσμιο ιστό
Comment[es]=Navegue por la web
Comment[fa]=صفحات شبکه جهانی اینترنت را مرور نمایید
Comment[fi]=Selaa Internetin WWW-sivuja
Comment[fr]=Navigue sur Internet
Comment[hu]=A világháló böngészése
Comment[it]=Esplora il web
Comment[ja]=ウェブを閲覧します
Comment[ko]=웹을 돌아 다닙니다
Comment[nb]=Surf på nettet
Comment[nl]=Verken het internet
Comment[nn]=Surf på nettet
Comment[no]=Surf på nettet
Comment[pl]=Przeglądanie stron WWW 
Comment[pt]=Navegue na Internet
Comment[pt_BR]=Navegue na Internet
Comment[ru]=Обозреватель Всемирной Паутины
Comment[sk]=Prehliadanie internetu
Comment[sv]=Surfa på webben
GenericName=Web Browser
GenericName[bg]=Интернет браузър
GenericName[ca]=Navegador web
GenericName[cs]=Webový prohlížeč
GenericName[de]=Webbrowser
GenericName[el]=Περιηγητής ιστού
GenericName[es]=Navegador web
GenericName[fa]=مرورگر اینترنتی
GenericName[fi]=WWW-selain
GenericName[fr]=Navigateur Web
GenericName[hu]=Webböngésző
GenericName[it]=Browser Web
GenericName[ja]=ウェブ・ブラウザ
GenericName[ko]=웹 브라우저
GenericName[nb]=Nettleser
GenericName[nl]=Webbrowser
GenericName[nn]=Nettlesar
GenericName[no]=Nettleser
GenericName[pl]=Przeglądarka WWW
GenericName[pt]=Navegador Web
GenericName[pt_BR]=Navegador Web
GenericName[ru]=Интернет-браузер
GenericName[sk]=Internetový prehliadač
GenericName[sv]=Webbläsare
X-GNOME-FullName=Iceweasel Web Browser
X-GNOME-FullName[bg]=Интернет браузър (Iceweasel)
X-GNOME-FullName[ca]=Navegador web Iceweasel
X-GNOME-FullName[cs]=Iceweasel Webový prohlížeč
X-GNOME-FullName[el]=Περιηγήτης Ιστού Iceweasel
X-GNOME-FullName[es]=Navegador web Iceweasel
X-GNOME-FullName[fa]=مرورگر اینترنتی Iceweasel
X-GNOME-FullName[fi]=Iceweasel-selain
X-GNOME-FullName[fr]=Navigateur Web Iceweasel
X-GNOME-FullName[hu]=Iceweasel webböngésző
X-GNOME-FullName[it]=Iceweasel Browser Web
X-GNOME-FullName[ja]=Iceweasel ウェブ・ブラウザ
X-GNOME-FullName[ko]=Iceweasel 웹 브라우저
X-GNOME-FullName[nb]=Iceweasel Nettleser
X-GNOME-FullName[nl]=Iceweasel webbrowser
X-GNOME-FullName[nn]=Iceweasel Nettlesar
X-GNOME-FullName[no]=Iceweasel Nettleser
X-GNOME-FullName[pl]=Przeglądarka WWW Iceweasel
X-GNOME-FullName[pt]=Iceweasel Navegador Web
X-GNOME-FullName[pt_BR]=Navegador Web Iceweasel
X-GNOME-FullName[ru]=Интернет-браузер Iceweasel
X-GNOME-FullName[sk]=Internetový prehliadač Iceweasel
X-GNOME-FullName[sv]=Webbläsaren Iceweasel
Exec=iceweasel %u
Terminal=false
X-MultipleArgs=false
Type=Application
Icon=iceweasel
Categories=Network;WebBrowser;
MimeType=text/html;text/xml;application/xhtml+xml;application/xml;application/vnd.mozilla.xul+xml;application/rss+xml;application/rdf+xml;image/gif;image/jpeg;image/png;x-scheme-handler/http;x-scheme-handler/https;
StartupWMClass=Iceweasel
StartupNotify=true
" > Iceweasel.desktop

# hexchat
echo "
[Desktop Entry]
Name=HexChat
Name[de]=HexChat
Name[en_GB]=HexChat
Name[es]=HexChat
Name[fr]=HexChat
Name[it]=HexChat
Name[ja_JP]=HexChat
Name[ko]=헥스채트
Name[pl]=HexChat
Name[sq]=HexChat
Name[zh_CN]=HexChat
GenericName=IRC Client
GenericName[de]=IRC-Client
GenericName[en_GB]=IRC Client
GenericName[es]=Cliente de IRC
GenericName[fi]=IRC Client
GenericName[fr]=Client IRC
GenericName[it]=Client IRC
GenericName[ja_JP]=IRCクライアント
GenericName[ko]=IRC 클라이언트
GenericName[pl]=Klient IRC
GenericName[sq]=Klient IRC
GenericName[zh_CN]=IRC 客户端
Comment=Chat with other people online
Comment[de]=Chatte online mit anderen Leuten
Comment[en_GB]=Chat with other people online
Comment[es]=Chatea con otras personas en línea
Comment[fr]=Parlez avec d'autres personnes en ligne
Comment[it]=Chiacchiera con altri utenti online
Comment[ja_JP]=他の人とオンラインチャットをします
Comment[ko]=온라인에 있는 사람들과 대화합니다
Comment[pl]=Rozmawiaj z innymi ludźmi przez internet
Comment[sq]=Bisedoni në linjë me persona të tjerë
Comment[zh_CN]=与其他人在线聊天
Keywords=IM;Chat;
Keywords[de]=IM;Chat;
Keywords[en_GB]=IM;Chat;
Keywords[es]=IM;Chat;
Keywords[fr]=IM;Chat;
Keywords[it]=IM;Chat;Messaggistica Istantanea;IRC;
Keywords[ko]=IM;인스턴트 메신저;Chat;대화;
Keywords[pl]=IM;Chat;
Keywords[sq]=IM;Fjalosje;
Keywords[zh_CN]=IM;聊天;
Exec=hexchat %U
Icon=hexchat
Terminal=false
Type=Application
Categories=GTK;Network;IRCClient;
StartupNotify=true
X-GNOME-UsesNotifications=true
MimeType=x-scheme-handler/irc;x-scheme-handler/ircs;
Actions=SafeMode;

[Desktop Action SafeMode]
Name=Open Safe Mode
Name[de]=Im sicheren Modus öffnen
Name[en_GB]=Open Safe Mode
Name[es]=Abrir en modo seguro
Name[fr]=Ouvrir le mode sans échec
Name[it]=Apri modalità sicura
Name[ja_JP]=セーフモードで開く
Name[ko]=공개 안전 모드
Name[pl]=Otwórz tryb bezpieczny
Name[sq]=Hap Mënyrën e Sigurt
Name[zh_CN]=打开安全模式
Exec=hexchat --no-auto --no-plugins
" > Hexchat.desktop

echo "
[Desktop Entry]
Name=KeePass2
GenericName=Password manager
Exec=keepass2
Icon=keepass2
Terminal=false
Type=Application
StartupNotify=false
Categories=Utility;
MimeType=application/x-keepass2;
" > KeePass2.desktop

echo "
[Desktop Entry]
Version=1.0
Name=VLC media player
GenericName=Media player
Comment=Read, capture, broadcast your multimedia streams
Name[bn]=VLC মিডিয়া প্লেয়ার
Comment[bn]=আপনার মাল্টিমিডিয়া স্ট্রীম পড়ুন, ধরে রাখুন এবং ছড়িয়ে দিন
Name[br]=VLC lenner mediaoù
GenericName[br]=Lenner mediaoù
Comment[br]=Lenn, enrollañ, skignañ ho lanvioù liesvedia
Name[ca]=Reproductor multimèdia VLC
GenericName[ca]=Reproductor multimèdia
Comment[ca]=Reproduïu, captureu i difoneu fluxos multimèdia
Name[de]=VLC Media Player
GenericName[de]=Medienwiedergabe
Comment[de]=Wiedergabe, Aufnahme und Verbreitung Ihrer Multimedia-Streams
Name[es]=Reproductor multimedia VLC
GenericName[es]=Reproductor multimedia
Comment[es]=Lea, capture y emita sus contenidos multimedia
Name[et]=VLC meediaesitaja
GenericName[et]=Meediaesitaja
Comment[et]=Multimeediafailide taasesitamine, lindistamine ja edastamine
Name[eu]=VLC multimedia irakurgailua
GenericName[eu]=Multimedia irakurgailua
Comment[eu]=Irakurri, hartu, igorri zure multimedia jarioak
Name[fi]=VLC-mediasoitin
GenericName[fi]=Mediasoitin
Comment[fi]=Toista, tallenna ja lähetä multimediaa
Name[fr]=Lecteur multimédia VLC
GenericName[fr]=Lecteur multimédia
Comment[fr]=Lire, capturer, diffuser vos flux multimedia
Name[gl]=Reprodutor multimedia VLC
GenericName[gl]=Reprodutor multimedia
Comment[gl]=Lea, capture e emita os seus fluxos multimedia
Name[he]=נגן המדיה VLC
GenericName[he]=נגן מדיה
Comment[he]=קריאה, לכידה ושידור של תזרימי מולטימדיה
Name[hu]=VLC médialejátszó
GenericName[hu]=Médialejátszó
Comment[hu]=Multimédiás adatfolyamok olvasása, mentése, szórása
Name[is]=VLC margmiðlunarspilarinn
GenericName[is]=Margmiðlunarspilari
Comment[is]=Spilar margmiðlunarefni ásamt því að taka upp og útvarpa straumum
Name[it]=Lettore multimediale VLC
GenericName[it]=Lettore multimediale
Comment[it]=Legge, acquisisce e trasmette i tuoi flussi multimediali
Name[ja]=VLCメディアプレイヤー
Comment[ja]=マルチメディアストリームの読み込み、キャプチャー、ブロードキャスト
Name[km]=កម្មវិធី​ចាក់​មេឌៀ VLC
Comment[km]=អាន ចាប់យក ប្រកាស​ស្ទ្រីម​ពហុមេឌៀ​របស់​អ្នក
Name[lt]=VLC leistuvė 
GenericName[lt]=Leistuvė
Comment[lt]=Groti, įrašyti, siųsti įvairialypės terpės kūrinius
Name[nl]=VLC Media Player
GenericName[nl]=Mediaspeler
Comment[nl]=Uw multimediastreams afspelen, opnemen en uitzenden
Name[nn]=VLC mediespelar
GenericName[nn]=Mediespelar
Comment[nn]=Spel av, ta opp og send ut multimedia
Name[pa]=VLC ਮੀਡਿਆ ਪਲੇਅਰ
Comment[pa]=ਆਪਣੀ ਮਲਟੀਮੀਡਿਆ ਸਟਰੀਮ ਪੜ੍ਹੋ, ਕੈਪਚਰ ਤੇ ਬਰਾਡਕਾਸਟ ਕਰੋ 
Name[pl]=VLC media player
GenericName[pl]=Odtwarzacz multimedialny
Comment[pl]=Odczytywanie, przechwytywanie i nadawanie strumieni multimedialnych
Name[pt_BR]=Reprodutor de Mídias VLC
GenericName[pt_BR]=Reprodutor de Mídias
Comment[pt_BR]=Reproduza, capture e transmita os seus fluxos multimídia
Name[ru]=Медиаплеер VLC
GenericName[ru]=Медиаплеер
Comment[ru]=Универсальный проигрыватель видео и аудио
Name[sk]=VLC media player
Comment[sk]=Naèítavajte, zaznamenávajte, vysielajte svoje multimediálne streamy
Name[sv]=Mediaspelaren VLC
GenericName[sv]=Mediaspelaren
Comment[sv]=Allmän uppspelare av film och musik
Name[te]=VLC మాధ్యమ ప్రదర్శకం
GenericName[te]=మాధ్యమ ప్రదర్శకం
Comment[te]=మీ బహుళమాధ్యమ ప్రవాహాలను చదువు, బంధించు మరియు ప్రసారం చేయి
Name[wa]=Djouweu d' media VLC
GenericName[wa]=Djouweu d' media
Comment[wa]=Lét, egaloye, evoye vos floûs multimedia
Name[zh_CN]=VLC media player
GenericName[zh_CN]=媒体播放器
Comment[zh_CN]=为您读取、捕获或发送多媒体流
Exec=/usr/bin/vlc --started-from-file %U
TryExec=/usr/bin/vlc
Icon=vlc
Terminal=false
Type=Application
Categories=AudioVideo;Player;Recorder;
MimeType=video/dv;video/mpeg;video/x-mpeg;video/msvideo;video/quicktime;video/x-anim;video/x-avi;video/x-ms-asf;video/x-ms-wmv;video/x-msvideo;video/x-nsv;video/x-flc;video/x-fli;video/x-flv;video/vnd.rn-realvideo;video/mp4;video/mp4v-es;video/mp2t;application/ogg;application/x-ogg;video/x-ogm+ogg;audio/x-vorbis+ogg;audio/ogg;video/ogg;application/x-matroska;audio/x-matroska;video/x-matroska;video/webm;audio/webm;audio/x-mp3;audio/x-mpeg;audio/mpeg;audio/x-wav;audio/x-mpegurl;audio/x-scpls;audio/x-m4a;audio/x-ms-asf;audio/x-ms-asx;audio/x-ms-wax;application/vnd.rn-realmedia;audio/x-real-audio;audio/x-pn-realaudio;application/x-flac;audio/x-flac;application/x-shockwave-flash;misc/ultravox;audio/vnd.rn-realaudio;audio/x-pn-aiff;audio/x-pn-au;audio/x-pn-wav;audio/x-pn-windows-acm;image/vnd.rn-realpix;audio/x-pn-realaudio-plugin;application/x-extension-mp4;audio/mp4;audio/amr;audio/amr-wb;x-content/video-vcd;x-content/video-svcd;x-content/video-dvd;x-content/audio-cdda;x-content/audio-player;application/xspf+xml;x-scheme-handler/mms;x-scheme-handler/rtmp;x-scheme-handler/rtsp;
X-KDE-Protocols=ftp,http,https,mms,rtmp,rtsp,sftp,smb
Keywords=Player;Capture;DVD;Audio;Video;Server;Broadcast;
" > VLC.desktop

echo "
[Desktop Entry]
Name=qTox
GenericName=Tox
Exec=qtox
Icon=qtox
Terminal=false
Type=Application
StartupNotify=false
Categories=Internet;
MimeType=application/qtox;
" > qTox.desktop

echo "
[Desktop Entry]
Name=Evolution
Name[af]=Evolution
Name[an]=Evolution
Name[ar]=افلوشن
Name[as]=Evolution
Name[ast]=Evolution
Name[az]=Evolution
Name[be]=Evolution
Name[be@latin]=Evolution
Name[bg]=Evolution
Name[bn]=Evolution
Name[bn_IN]=Evolution
Name[br]=Evolution
Name[ca]=Evolution
Name[ca@valencia]=Evolution
Name[cs]=Evolution
Name[cy]=Evolution
Name[da]=Evolution
Name[de]=Evolution
Name[dz]=ཨི་བོ་ལུ་ཤཱན།
Name[el]=Evolution
Name[en@shaw]=·𐑧𐑝𐑩𐑤𐑵𐑖𐑩𐑯
Name[en_CA]=Evolution
Name[en_GB]=Evolution
Name[eo]=Evolucio
Name[es]=Evolution
Name[et]=Evolution
Name[eu]=Evolution
Name[fa]=اوولوشن
Name[fi]=Evolution
Name[fr]=Evolution
Name[ga]=Evolution
Name[gl]=Evolution
Name[gu]=Evolution
Name[he]=Evolution
Name[hi]=एवोल्यूशन
Name[hr]=Evolution
Name[hu]=Evolution
Name[id]=Evolution
Name[it]=Evolution
Name[ja]=Evolution
Name[ka]=ევოლუშენი
Name[kn]=Evolution
Name[ko]=에볼루션
Name[lt]=Evolution
Name[lv]=Evolution
Name[mai]=Evolution
Name[mk]=Evolution
Name[ml]=Evolution
Name[mn]=Эволюшин
Name[mr]=एव्हल्युशन
Name[ms]=Evolution
Name[nb]=Evolution
Name[nds]=Evolution
Name[ne]=इभोल्युसन
Name[nl]=Evolution
Name[nn]=Evolution
Name[oc]=Evolution
Name[or]=କ୍ରମବିକାଶ 
Name[pa]=ਈਵੇਲੂਸ਼ਨ
Name[pl]=Evolution
Name[pt]=Evolution
Name[pt_BR]=Evolution
Name[ro]=Evolution
Name[ru]=Evolution
Name[rw]=Impinduka
Name[si]=ඉවෝලුශන්
Name[sk]=Evolution
Name[sl]=Evolution
Name[sq]=Evolution
Name[sr]=Еволуција
Name[sr@latin]=Evolucija
Name[sv]=Evolution
Name[ta]=எவல்யூஷன்
Name[te]=ఎవాల్యూషన్
Name[th]=Evolution
Name[tr]=Evolution
Name[ug]=Evolution
Name[uk]=Evolution
Name[vi]=Evolution
Name[wa]=Evolution
Name[xh]=I-Evolution
Name[zh_CN]=Evolution
Name[zh_HK]=Evolution
Name[zh_TW]=Evolution
GenericName=Groupware Suite
GenericName[an]=Suite de treballo en grupo
GenericName[ar]=حِزمة Groupware
GenericName[as]=Groupware চুইট
GenericName[ast]=Suite de trabayu en grupu
GenericName[be]=Пакет для групавой працы
GenericName[be@latin]=Pakiet dla kalektyŭnaj pracy
GenericName[bg]=Програма за работа в група
GenericName[bn]=Groupware Suite
GenericName[bn_IN]=Groupware Suite
GenericName[ca]=Aplicacions de treball en grup
GenericName[ca@valencia]=Aplicacions de treball en grup
GenericName[cs]=Sada groupware
GenericName[cy]=Cyfres Meddalwedd Grŵp
GenericName[da]=Samarbejdsprogramsuite
GenericName[de]=Groupware-Suite
GenericName[dz]=གུ་རུབ་ཝེར་ སུཊི།
GenericName[el]=Σουίτα Groupware
GenericName[en@shaw]=𐑜𐑮𐑵𐑐𐑢𐑧𐑮 𐑕𐑢𐑰𐑑
GenericName[en_CA]=Groupware Suite
GenericName[en_GB]=Groupware Suite
GenericName[eo]=Grupprogramaro
GenericName[es]=Suite de trabajo en grupo
GenericName[et]=Grupitöövahend
GenericName[eu]=Talde-lanerako suitea
GenericName[fa]=مجموعه‌ی Groupware
GenericName[fi]=Ryhmätyöohjelmisto
GenericName[fr]=Suite de travail collaboratif
GenericName[ga]=Sraith Feidhmchlár Grúpa-Earraí
GenericName[gl]=Suite de Groupware
GenericName[gu]=ગ્રુપવેર સ્યુટ
GenericName[hi]=ग्रूपवेयर सूट
GenericName[hr]=Groupware Suite
GenericName[hu]=Csoportmunka-szoftver
GenericName[id]=Groupware Suite
GenericName[it]=Suite groupware
GenericName[ja]=グループウェアスイートです。
GenericName[kn]=ಗ್ರೂಪ್‌ವೇರ್ ಸೂಟ್
GenericName[ko]=그룹웨어 모음
GenericName[lt]=Grupinio darbo įrankis
GenericName[lv]=Groupware Suite
GenericName[mk]=Groupware Suite
GenericName[ml]=Groupware Suite
GenericName[mr]=ग्रुपवेअर संच
GenericName[ms]=Sut Groupware
GenericName[nb]=Gruppevareløsning
GenericName[ne]=ग्रूपवेयर सुट
GenericName[nl]=Groupware suite
GenericName[nn]=Gruppevarepakke
GenericName[or]=Groupware ସମୂହ
GenericName[pa]=ਗਰੁੱਪਵੇਅਰ ਸੂਟ
GenericName[pl]=Pakiet do pracy grupowej
GenericName[pt]=Groupwise Suite
GenericName[pt_BR]=Suíte de Groupware
GenericName[ro]=Suită Groupware
GenericName[ru]=Пакет для групповой работы
GenericName[sk]=Program na podporu spolupráce
GenericName[sl]=Zbirka za skupinsko delo
GenericName[sq]=Suite Groupware
GenericName[sr]=Пакет групе
GenericName[sr@latin]=Paket grupe
GenericName[sv]=Grupprogramvarusvit
GenericName[ta]=குழுக்களுக்கான மென்பொருள்
GenericName[te]=సమూహతరహా సమసమితి
GenericName[th]=ชุดกรุ๊ปแวร์
GenericName[tr]=Groupwise Takımı
GenericName[ug]=Groupware يۈرۈشلۈكى
GenericName[uk]=Пакет для групової роботи
GenericName[vi]=Bộ phần mềm nhóm (Groupware)
GenericName[xh]=I-Groupware Suite
GenericName[zh_CN]=Groupwise 套件
GenericName[zh_HK]=Groupware 套裝軟件
GenericName[zh_TW]=Groupware 套裝軟體
X-GNOME-FullName=Evolution Mail and Calendar
X-GNOME-FullName[af]=Evolution pos en kalender
X-GNOME-FullName[an]=Correu y calandario d'Evolution
X-GNOME-FullName[ar]=بريد وتقويم إفلوشن
X-GNOME-FullName[as]=Evolution মেইল কেলেন্ডাৰ
X-GNOME-FullName[ast]=Corréu y calendariu d'Evolution
X-GNOME-FullName[be]=Пошта і каляндар Evolution
X-GNOME-FullName[be@latin]=Pošta j kalandar Evolution
X-GNOME-FullName[bg]=E-поща и календар (Evolution)
X-GNOME-FullName[bn]=Evolution মেইল ও ক্যালেন্ডার
X-GNOME-FullName[bn_IN]=Evolution মেইল ও বর্ষপঞ্জি
X-GNOME-FullName[ca]=Correu i calendari de l'Evolution
X-GNOME-FullName[ca@valencia]=Correu i calendari de l'Evolution
X-GNOME-FullName[cs]=Pošta a kalendář Evolution
X-GNOME-FullName[cy]=Ebost a Chalendr Evolution
X-GNOME-FullName[da]=Evolutions E-post og Kalender
X-GNOME-FullName[de]=Evolution-E-Mail und -Kalender
X-GNOME-FullName[dz]=ཨི་བོ་ལུ་ཤཱན་ ཡིག་འཕྲིན་དང་ ཟླ་ཐོ་ 
X-GNOME-FullName[el]=Αλληλογραφία και Ημερολόγιο του Evolution
X-GNOME-FullName[en@shaw]=·𐑧𐑝𐑩𐑤𐑵𐑖𐑩𐑯 𐑥𐑱𐑤 𐑯 𐑒𐑨𐑤𐑩𐑯𐑛𐑼
X-GNOME-FullName[en_GB]=Evolution Mail and Calendar
X-GNOME-FullName[eo]=Evolucio - Retpoŝto kaj Kalendaro
X-GNOME-FullName[es]=Correo y calendario de Evolution
X-GNOME-FullName[et]=Evolutioni E-post ja kalender
X-GNOME-FullName[eu]=Evolution-en posta eta egutegia
X-GNOME-FullName[fa]=نامه و تقویم اوولوشن
X-GNOME-FullName[fi]=Evolution-sähköposti ja -kalenteri
X-GNOME-FullName[fr]=Messagerie et agenda d'Evolution
X-GNOME-FullName[ga]=Post agus Féilire Evolution
X-GNOME-FullName[gl]=Correo e calendario do Evolution
X-GNOME-FullName[gu]=ઈવોલ્યુશન મેઈલ અને કેલેન્ડર
X-GNOME-FullName[he]=דואר ויומן Evolution
X-GNOME-FullName[hi]=एवोल्यूशन डाक और पंचांग
X-GNOME-FullName[hu]=Evolution levelező és naptár
X-GNOME-FullName[id]=Surat dan Kalender Evolution
X-GNOME-FullName[it]=Email e calendario Evolution
X-GNOME-FullName[ja]=Evolution のメールとカレンダー
X-GNOME-FullName[kn]=Evolution ಅಂಚೆ ಹಾಗು ಕ್ಯಾಲೆಂಡರ್
X-GNOME-FullName[ko]=에볼루션 메일 및 달력
X-GNOME-FullName[lt]=Evolution paštas ir kalendorius
X-GNOME-FullName[lv]=Evolution pasts un kalendārs
X-GNOME-FullName[mk]=Evolution пошта и календар
X-GNOME-FullName[ml]=Evolution മെയിലും കാലെണ്ടറും
X-GNOME-FullName[mr]=एव्हल्युशन मेल आणि दिनदर्शिका
X-GNOME-FullName[nb]=Evolution e-post og kalender
X-GNOME-FullName[nl]=Evolution e-mail en agenda
X-GNOME-FullName[nn]=Evolution e-post og kalender
X-GNOME-FullName[oc]=Corrièls e calendièr Evolution
X-GNOME-FullName[or]=Evolution କ୍ଯାଲେଣ୍ଡର ବସ୍ତୁ
X-GNOME-FullName[pa]=ਈਵੇਲੂਸ਼ਨ ਮੇਲ ਅਤੇ ਕੈਲੰਡਰ
X-GNOME-FullName[pl]=Poczta i kalendarz Evolution
X-GNOME-FullName[ps]=اېوليوشن ليک او کليز
X-GNOME-FullName[pt]=Correio eletrónico e calendário Evolution
X-GNOME-FullName[pt_BR]=Correio e agenda do Evolution
X-GNOME-FullName[ro]=Calendar și Email Evolution
X-GNOME-FullName[ru]=Электронная почта и календарь Evolution
X-GNOME-FullName[sk]=Evolution - pošta a kalendár
X-GNOME-FullName[sl]=Evolution koledar in pošta
X-GNOME-FullName[sq]=Evolution - Posta dhe kalendari
X-GNOME-FullName[sr]=Еволуција — пошта и календар
X-GNOME-FullName[sr@latin]=Evolucija — pošta i kalendar
X-GNOME-FullName[sv]=Evolutions e-post och kalender
X-GNOME-FullName[ta]=எவல்யூஷன் மின்னஞ்சல் மற்றும் நாள்காட்டி
X-GNOME-FullName[te]=ఎవల్యూషన్ కాలెండర్ మరియు మెయిల్
X-GNOME-FullName[th]=เมลและปฏิทินของ Evolution
X-GNOME-FullName[tr]=Evolution Posta ve Takvimi
X-GNOME-FullName[ug]=Evolution خەت ۋە يىلنامە
X-GNOME-FullName[uk]=Електронна пошта та календар Evolutuion
X-GNOME-FullName[vi]=Thư tín và Lịch Evolution
X-GNOME-FullName[zh_CN]=Evolution 邮件及日历
X-GNOME-FullName[zh_HK]=Evolution 郵件與行事曆
X-GNOME-FullName[zh_TW]=Evolution 郵件與行事曆
Comment=Manage your email, contacts and schedule
Comment[af]=Bestuur pos, kontakte en skedule
Comment[an]=Chestiona lo tuyo correu electronico, contactos y calandario
Comment[ar]=أدِر بريدك الإلكتروني ومتراسليك وجدولك
Comment[as]=আপোনাৰ ই-মেইল একাওণ্টসমূহকে ইয়াত বিন্যাস কৰক
Comment[ast]=Xestiona'l corréu-e, contautos y calendariu
Comment[be]=Кіраванне поштай, кантактамі і раскладам
Comment[be@latin]=Pracuj z poštaj, kantaktami j pracoŭnym raskładam
Comment[bg]=Управление на поща, контакти и разписания
Comment[bn]=ই-মেইল, পরিচিতি ও কর্মতালিকা এখানে কনফিগার করুন
Comment[bn_IN]=ই-মেইল, পরিচিতি ও কর্মতালিকা এখানে কনফিগার করুন
Comment[ca]=Gestioneu els correus electrònics, contactes i horaris
Comment[ca@valencia]=Gestioneu els correus electrònics, contactes i horaris
Comment[cs]=Spravujte svůj e-mail, kontakty a rozvrh
Comment[da]=Håndter din e-post, dine kontaktpersoner og din tidsplan
Comment[de]=Ihre E-Mails, Kontakte und Kalender verwalten
Comment[dz]=ཁྱོད་རའི་གློག་འཕྲིན་དང་ འབྲེལ་ས་ དེ་ལས་ འཆར་རིམ་ཚུ་ འཛིན་སྐྱོང་འབད་ 
Comment[el]=Διαχείριση της ηλ. αλληλογραφίας, των επαφών και του χρόνου σας
Comment[en@shaw]=𐑥𐑨𐑯𐑦𐑡 𐑿𐑼 𐑰𐑥𐑱𐑤, 𐑒𐑪𐑯𐑑𐑨𐑒𐑑𐑕 𐑯 𐑖𐑧𐑛𐑿𐑤
Comment[en_GB]=Manage your e-mail, contacts and schedule
Comment[eo]=Administri viajn retpoŝton, kontaktojn kaj planojn
Comment[es]=Gestione su correo-e, contactos y calendario
Comment[et]=Oma e-posti, kontaktide ja kalendri haldamine
Comment[eu]=Kudeatu zure posta-kontuak, kontaktuak eta antolaketa
Comment[fa]=رایانامه، آشنایان و برنامه‌ریزی‌تان را مدیریت کنید
Comment[fi]=Hallitse sähköposteja, yhteystietoja ja ajan käyttöä
Comment[fr]=Gérer vos courriels, contacts et agendas
Comment[ga]=Bainstigh do chuid ríomhphoist, do chuid teagmhálacha agus do sceideal
Comment[gl]=Xestione o seu correo, contactos e programación
Comment[gu]=તમારું ઈમેઈલ, સંપર્કો અને સમયક્રમની વ્યવસ્થા કરો
Comment[he]=נהל את הדוא"ל, אנשי הקשר ולוח הזמנים שלך
Comment[hi]=अपना ईमेल संपर्क व योजना प्रबंधित करें
Comment[hu]=E-mailek, névjegyek és határidők kezelése
Comment[id]=Mengelola surel, kontak, dan jadwal Anda
Comment[it]=Gestisce le proprie email, i contatti e progetti
Comment[ja]=メールや連絡先、予定などを管理します
Comment[kn]=ನಿಮ್ಮ ವಿಅಂಚೆ, ಸಂಪರ್ಕ ವಿಳಾಸಗಳನ್ನು ಹಾಗು ಕಾರ್ಯಕ್ರಮಗಳನ್ನು ನಿರ್ವಹಿಸು
Comment[ko]=전자메일, 연락처, 일정을 관리합니다
Comment[lt]=Tvarkykite savo el. paštą, kontaktus ir kalendorių
Comment[lv]=Pārvaldiet savu e-pastu, kontaktus un grafiku
Comment[mk]=Менаџирајте со Вашата е-пошта, контакти и распоред
Comment[ml]=നിങ്ങളുടെ ഈ മെയില്‍ , കോണ്ടാക്റ്റുകള്‍, ഷെഡ്യൂള്‍ ഇവിടെ ക്രമീകരിക്കുക
Comment[mr]=तुमचे ईमेल, संपर्क व वेळपत्रकाचे निरीक्षण करा
Comment[nb]=Håndter e-post, kontakter og kalender
Comment[nl]=Uw e-mail, adresboek en agenda beheren
Comment[nn]=Handsama epost, kontaktar og timeplan
Comment[or]=ଆପଣଙ୍କ ମେଲକୁ ପରିଚାଳନା କରନ୍ତୁ, ଯୋଗାଯୋଗ ଏବଂ କାର୍ଯ୍ୟସୂଚୀ
Comment[pa]=ਆਪਣਾ ਈ-ਮੇਲ ਅਕਾਊਂਟ, ਸੰਪਰਕ ਅਤੇ ਸ਼ੈਡਿਊਲ ਦਾ ਪਰਬੰਧ ਕਰੋ
Comment[pl]=Zarządzanie wiadomościami, kontaktami i planami
Comment[ps]=خپل برېښليکونه، اړيکلوري او مهالوېش سمبال کړﺉ
Comment[pt]=Para gerir o seu email, contactos e compromissos
Comment[pt_BR]=Gerencie seus e-mails, contatos e agenda
Comment[ro]=Administrează email-urile, contactele și întâlnirile
Comment[ru]=Ваша электронная почта, контакты и расписание
Comment[sk]=Spravujte váš email, kontakty a časový plán
Comment[sl]=Upravljajte s pošto, stiki in razporedi
Comment[sq]=Menazhon postën personale, kontakte dhe projekte
Comment[sr]=Управљајте вашом поштом, контактима и обавезама
Comment[sr@latin]=Upravljajte vašom poštom, kontaktima i obavezama
Comment[sv]=Hantera din e-post, kontakter och schema
Comment[ta]=உங்கள் மின்னஞ்சல் தொடர்புகள் மற்றும் கால ஒதுக்கீடுகள் ஆகியவற்றை மேலாளவும்
Comment[te]=మీ ఈమెయిల్ ను నిర్వహించుము, పరిచయాలు మరియు ప్రణాళిక
Comment[th]=จัดการอีเมล ผู้ติดต่อ และนัดหมายของคุณ
Comment[tr]=E-postalarını, bağlantılarınızı ve randevularınızı yönetin
Comment[ug]=ئېلخەت، ئالاقەداشلار ۋە پىلانىڭىزنى باشقۇرىدۇ
Comment[uk]=Ваша електронна пошта та розклад
Comment[vi]=Quản lý thư tín, lịch biểu và các liên lạc
Comment[zh_CN]=配置您的电子邮件，联系人和日程表
Comment[zh_HK]=管理你的郵件、聯絡人和行程
Comment[zh_TW]=管理您的郵件、連絡人和行程
Keywords=email;calendar;contact;addressbook;task;
Keywords[as]=email;calendar;contact;addressbook;task;
Keywords[bg]=поща;е-поща;календар;контакт;адресник;задача;mail;email;calendar;contact;addressbook;task;
Keywords[ca]=correu;calendari;contactes;llibreta d'adreces;tasca;
Keywords[ca@valencia]=correu;calendari;contactes;llibreta d'adreces;tasca;
Keywords[cs]=pošta;e-mail;kalendář;kontakt;adresář;úkol;
Keywords[da]=epost;e-post;kalender;kontakt;kontaktperson;adressebog;opgave;
Keywords[de]=Mail;E-Mail;Nachricht;Kalender;Kontakt;Adressbuch;Aufgabe;
Keywords[el]=ηλεκτρονική αλληλογραφία;ημερολόγιο;επαφή;βιβλίο διευθύνσεων;εργασία;email;calendar;contact;addressbook;task;
Keywords[es]=correo-e;calendario;contacto;libreta;direcciones;tarea;
Keywords[eu]=posta;egutegia;kontaktua;helbide-liburua;zeregina;
Keywords[fi]=email;calendar;contact;addressbook;task;sähköposti;kalenteri;yhteystiedot;osoitekirja;tehtävä;
Keywords[fr]=courriel;agenda;calendrier;contact;carnet d'adresses;tâches;
Keywords[gl]=correo;calendario;contacto;caderno de enderezos;tarefas;
Keywords[gu]=ઇમેઇલ;કૅલેન્ડર;સંપર્ક;સરનામાંપુસ્તિકા;કાર્ય;
Keywords[hi]=ईमेल;कैलेंडर;संपर्क;पता पुस्तिका;कार्य;
Keywords[hu]=levél;naptár;névjegy;címjegyzék;feladat;
Keywords[id]=surel;kalender;kontak;buku alamat;tugas;
Keywords[it]=email;calendario;contatti;rubrica;attività;
Keywords[ja]=email;calendar;contact;addressbook;task;メール;電子メール;カレンダー;連絡先;アドレス帳;タスク;作業;予定;
Keywords[kn]=ಅಂಚೆ;ಕ್ಯಾಲೆಂಡರ್;ಸಂಪರ್ಕ;ವಿಳಾಸಪುಸ್ತಕ;ಕಾರ್ಯ;
Keywords[ko]=email;메일;전자메일;편지;calendar;달력;캘린더;일정;contact;연락처;addressbook;주소록;task;작업;할일;
Keywords[lt]=paštas;kalendorius;kontaktai;adresų knyga;užduotis;
Keywords[lv]=e-pasts;pasts;kalendārs;kontakti;adrešu grāmata;uzdevums;vēstule;
Keywords[mr]=ईमेल;दिनदर्शिका;संपर्क;पत्तापुस्तिका;कार्य;
Keywords[nb]=e-post;kalender;kontakt;adressebok;oppgave;
Keywords[nl]=email;e-mail;calendar;agenda;contact;addressbook;adresboek;task;taak;
Keywords[or]=ଇମେଲ;କ୍ୟାଲେଣ୍ଡର;ସମ୍ପର୍କ;ଠିକଣାପୁସ୍ତକ;କାର୍ଯ୍ୟ;
Keywords[pl]=email;mail;poczta;kalendarz;kontakt;książka adresowa;zadanie;
Keywords[pt]=correio;email;mensagem;calendário;contacto;contato;livro;endereços;tarefa;
Keywords[pt_BR]=correio;email;calendário;agenda;contato;catálogo de endereços;tarefa;
Keywords[ru]=почта;календарь;контакт;адресная;книга;задача;задание;
Keywords[sk]=pošta;email;kalendár;kontakt;adresár kontaktov;úloha;
Keywords[sl]=elektronska pošta;koledar;stik;stiki;imenik;opravila;naloge;
Keywords[sr]=ел.пошта;пошта;календар;контакт;адресар;задатак;
Keywords[sr@latin]=el.pošta;pošta;kalendar;kontakt;adresar;zadatak;
Keywords[sv]=epost;e-post;kalender;kontakt;adressbok;uppgifter;mail;email;todo;
Keywords[ta]=email;calendar;contact;addressbook;task;
Keywords[te]=ఈమెయిల్;కాలెండర్;పరిచయం;చిరునామాపుస్తకం;కర్తవ్యం;
Keywords[uk]=пошта;календар;контакт;адресна;книга;завдання;
Keywords[zh_CN]=mail;calendar;contact;addressbook;task;邮件;日历;联系人;地址簿;任务;
Keywords[zh_HK]=email;calendar;contact;addressbook;task;電子郵件;行事曆;聯絡人;通訊錄;工作;
Keywords[zh_TW]=email;calendar;contact;addressbook;task;電子郵件;行事曆;連絡人;通訊錄;工作;
Exec=evolution %U
Icon=evolution
Terminal=false
Type=Application
Categories=GNOME;GTK;Office;Email;Calendar;ContactManagement;X-Red-Hat-Base;
StartupNotify=true
X-GNOME-Bugzilla-Bugzilla=GNOME
X-GNOME-Bugzilla-Product=Evolution
X-GNOME-Bugzilla-Component=BugBuddyBugs
X-GNOME-Bugzilla-Version=3.12.x
X-GNOME-Bugzilla-OtherBinaries=evolution-addressbook-factory;evolution-calendar-factory;evolution-source-registry;evolution-user-prompter;
X-GNOME-UsesNotifications=true
MimeType=text/calendar;text/x-vcard;text/directory;application/mbox;message/rfc822;x-scheme-handler/mailto;
" > Evolution.desktop

# Final steps
apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get autoremove --purge -y
apt-get autoclean
update-menus
chmod 777 startup/*
chmod 777 iceweasel-plugins/*
chmod 777 anon/*
chmod 777 tools/*
chmod 777 README
chmod 777 tor.desktop
chmod 777 ../.config/*
chmod 777 *.desktop
mv ../.Xauthority ../.Xauthority.old
clear

# End
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
echo " "
echo "Thank you for choosing Chocolate Chip Computing for your new GNU/Linux Experience!"
echo " "
echo "This script has been created by Chocolate Chip"
echo "http://choco.neocities.org"
echo "On GNU Social under the name @duchocolatepony@quitter.se"
echo " "
echo "Support the FSF by saying Free/Libre instead of Open Source!"
echo "And always say GNU/Linux when referring to the OS and not the Linux kernel!"
echo " "
echo "You may now safely restart your computer"
exit
