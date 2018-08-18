# Tilede
A set of applications aiming to provide a fast, battery efficient and stable desktop-environment built on the basis of i3(-gaps) for everyday use, especially for programming.

![alt text](https://raw.githubusercontent.com/stiiixx/tilede/master/pictures/screenshots/2018-02-01-132451_1920x1080_scrot.png)
![alt text](https://raw.githubusercontent.com/stiiixx/tilede/master/pictures/screenshots/1517485153.png)
![alt text](https://raw.githubusercontent.com/stiiixx/tilede/master/pictures/screenshots/2018-02-01-190040_1920x1080_scrot.png)
(Sorry for the destracting selfmade wallpaper)


This includes:
 - tiling-windowmanager (i3-gaps)
 - statusbar (polybar and i3blocks)
 - low battery / efficiency mode
 - compositor (compton)
 - start menu (rofi)

optional:
 - Spotify (https://spotify.com)
 - Atom editor (https://atom.io)
 - office suite (libreoffice)
 - image editor (gimp)

The goal is to have everything set up and installed using a single script (at the moment called 'run').

# Warning
This project is nowhere near finished. Keep in mind that this is only supposed to work on a fresh install of Ubuntu 18.04 LTS.
Install Ubuntu from the Network installer ISO available from https://www.ubuntu.com/download/alternative-downloads.
Choose "command-line install" in the boot menu.
This project is currently tested on Ubuntu 18.04 LTS and it is advised to use EXACTLY this image, 
however every still supported Ubuntu version should work in theory. 
If you choose to use a different Version of Ubuntu 18.04 LTS, some programs will not install properly.

Feel free to ask for help!
I would be very happy to have any kind of contribution or advise!

# Installation
If you want to install 'Tilede', you have to carefully follow the following steps.

1. Change into your home directory
`cd`

2. Clone this repository (This should create a folder called 'tilede')
`git clone --recursive https://www.github.com/avoc9/tilede`

3. Copy the installation script into your home directory
`cp ~/tilede/run ~`

4. Edit the installation script ('run'), you can use any text editor, in this case 'nano'
`nano run`

5. Comment or uncomment lines in the installation script according to your needs, save and close the file

6. Run the script
`~/run`

# Issues
If you find an bug/issue or have a feature request, please look first under the 'Issues' tab in GitHub (https://github.com/avoc9/tilede/issues).

# Future goals  
 - configure image viewer properly
 - advanced install script providing package selection 
 - package manager for automatic configuration (maybe not needed)
