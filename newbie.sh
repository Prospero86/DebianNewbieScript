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


# Debian Newbie Script v0.1.8 beta
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

# Debian Newbie Script v0.1.8 beta
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
 _     _  _      _    ___  _
/ \   / \/ \  /|/ \ /\\  \//
| |   | || |\ ||| | || \  / 
| |_/\| || | \||| \_/| /  \ 
\____/\_/\_/  \|\____//__/\\
"
echo " "
echo "Thank you for choosing this script for your new GNU/Linux experience!"
echo " "
echo "You are using version 0.1.8 beta. Please confirm you are using the latest version."
echo "You will find the latest version at"
echo "https://github.com/Chocolate-Chip-Computing/DebianNewbieScript"
echo " "

# Licence Script
echo "
Debian Newbie Script v.0.1.8 beta  Copyright (C) 2015  Chocolate Chip Computing
This program comes with ABSOLUTELY NO WARRANTY; for details type y.
This is free software, and you are welcome to redistribute it
under certain conditions; type y for details, or n to continue.
"
read ans

if [ $ans = y -o $ans = Y -o $ans = yes -o $ans = Yes -o $ans = YES ]; then
echo "
    Debian Newbie Script v0.1.7 beta: A script to optimize a fresh install for Debian Newbies
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
"
echo " "
echo "Now continuing..."
fi

if [ $ans = n -o $ans = N -o $ans = no -o $ans = No -o $ans = NO ]; then
    echo "
Very well. The licence terms can be viewed at
https://gnu.org/licences
"
    echo "Now Continuing..."
fi

# Confirm Script 1
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
echo " "

# Confirm Script 2
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

# Last begin echo(s)
echo "This begins the automated portion of this script. If you wish to quit, preform:"
echo "su -c killall bash"
echo "In a seprate terminal. You will have to manually undo anything past this point."
echo "Some packages may require aditional verification. Please don't go to far away"
echo "From your terminal"

# All steps are alphabetical unless order is a nesessity

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
apt-get install -y gunzip
apt-get install -y apt-transport-https
apt-get install -y aptitude
apt-get install -y build-essential
apt-get install -y sudo
apt-get install -y wget

# install LXDE, remove some bloat
apt-get install -y --no-install-recommends lxde-core
apt-get install -y --no-install-recommends lxde
apt-get install -y --no-install-recommends task-lxde-desktop 
apt-get install -y lightdm
apt-get install -y alsamixergui
apt-get install -y evince-gtk
apt-get install -y gpicview
apt-get install -y hunspell-en-us
apt-get install -y hyphen-en-us
apt-get install -y iceweasel
apt-get install -y lxpolkit
apt-get install -y menu-xdg
apt-get install -y lxtask
apt-get install -y lxterminal
apt-get install -y pcmanfm
apt-get install -y usermode
apt-get install -y xserver-xorg
apt-get remove --purge -y wicd
apt-get install -y network-manager

# Add some good, everyday programs
apt-get install -y --no-install-recommends aspell
apt-get install -y aspell-en
apt-get install -y gimp
apt-get install -y leafpad
apt-get install -y libreoffice
apt-get install -y libreoffice-gtk
apt-get install -y nano
apt-get install -y redshift-gtk
apt-get install -y screenfetch
apt-get install -y shutter
apt-get install -y qbittorrent

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
tar xvfJ /tmp/tor.tar.xz -c /opt/tor
cp /opt/tor/browser/start-tor-browser.desktop tor.desktop
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
apt-get update 
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get install -y i2p 
apt-get install -y i2p-keyring
echo "The I2P Network is much like tor, only it's a different network and runs on Java. 
Use this as an alternative to tor if you wish. If you want to remove, preform:
rm /etc/apt/sources.list.d/i2p.list
apt-get remove --purge ip2 ip2-keyring" > anon/i2p

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

gpg --list-keys

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
mv ../.Xauthority ../.Xauthority.old


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
echo "You may now safely restart your computer"
exit
