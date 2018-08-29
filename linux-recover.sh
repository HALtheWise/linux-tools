#!/bin/sh

# scripts
sudo cp keepass-gdrive /usr/local/bin
cp configs/password-file.desktop /home/eric/.local/share/applications/

mkdir -p ~/makerbot/Things
cp configs/run.sh ~/makerbot

# Chrome
sudo apt-get update
sudo apt-get install -f
cd Downloads/
wget 'https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb'
sudo apt-get install libxss1 libappindicator1 libindicator7
sudo dpkg --install google-chrome-*.deb && rm google-chrome-*.deb
 

# command-line tools
sudo apt-get install -y git gksu openssh-server
google-chrome https://help.ubuntu.com/community/SSH/OpenSSH/Configuring

# Sublime Text
google-chrome https://www.sublimetext.com/
read -p 'Install Sublime Text, then press any key to continue'

# rclone
echo 'installing rclone'
./install-rclone

# KeePass
sudo apt-get install -y keepass2

sudo apt-get install -y libmono-system-xml-linq4.0-cil libmono-system-data-datasetextensions4.0-cil libmono-system-runtime-serialization4.0-cil mono-mcs

cd /usr/lib/keepass2/
sudo mkdir plugins
cd plugins
sudo wget https://raw.github.com/pfn/keepasshttp/master/KeePassHttp.plgx

sudo apt-get install xdotool

# Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce
sudo usermod -aG docker $(whoami)

## Makerware
sudo ./install-makerware.sh

# Go
google-chrome https://golang.org/doc/install

# Fish
sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install fish

# Misc software
sudo apt-get install -y audacity inkscape gimp pinta terminator pdfshuffler
google-chrome http://www.syntevo.com/smartgit/download
google-chrome http://wikis.olin.edu/linux/doku.php?id=nvidia
google-chrome http://wikis.olin.edu/linux/doku.php?id=printing
google-chrome http://askubuntu.com/questions/264280/how-to-remove-items-from-places-sidebar-in-nautilus-3-6
google-chrome http://user.wolfram.com/
google-chrome http://wiki.ros.org/ROS/Installation
google-chrome https://www.jetbrains.com/go/download/#section=linux
google-chrome https://www.jetbrains.com/pycharm/
google-chrome https://download.visicut.org/
google-chrome https://etcher.io/

# Keybase
curl -O https://prerelease.keybase.io/keybase_amd64.deb
sudo dpkg -i keybase_amd64.deb
sudo apt-get install -y -f

# TODO: Matlab
