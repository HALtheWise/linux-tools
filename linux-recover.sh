#!/bin/sh

# Uninstall pre-installed stuff
sudo apt-get purge thunderbird rhythmbox

# scripts
sudo cp keepass-gdrive /usr/local/bin
cp configs/password-file.desktop /home/eric/.local/share/applications/

# Chrome
sudo apt-get update
sudo apt-get install -f
cd Downloads/
wget 'https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb'
sudo apt-get install libxss1 libappindicator1 libindicator7
sudo dpkg --install google-chrome-*.deb && rm google-chrome-*.deb
 

# command-line tools
sudo apt-get install -y git openssh-server curl
google-chrome https://help.ubuntu.com/community/SSH/OpenSSH/Configuring

# VSCode
google-chrome https://code.visualstudio.com/download

# rclone
echo 'installing rclone'
./install-rclone
sudo mkdir -p /etc/fish/completions
sudo rclone genautocomplete fish

# KeePass
sudo apt-get install -y keepass2

sudo apt-get install -y libmono-system-xml-linq4.0-cil libmono-system-data-datasetextensions4.0-cil libmono-system-runtime-serialization4.0-cil mono-mcs

cd /usr/lib/keepass2/
sudo mkdir plugins
cd plugins
sudo wget https://raw.github.com/pfn/keepasshttp/master/KeePassHttp.plgx

sudo apt-get install xdotool

# Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce
sudo usermod -aG docker $(whoami)

# Go
google-chrome https://golang.org/doc/install

# Fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish
chsh --shell /usr/bin/fish

# Smartgit
cd ~/Downloads
wget https://www.syntevo.com/downloads/smartgit/smartgit-linux-20_2_4.tar.gz
sudo tar -C /usr/local/ -xzf smartgit-linux*.tar.gz
sudo ln -s /usr/local/smartgit/bin/smartgit.sh /usr/local/bin/smartgit

# Misc software
sudo apt-get install audacity inkscape gimp pinta terminator pdfshuffler
google-chrome http://www.syntevo.com/smartgit/download
google-chrome http://askubuntu.com/questions/264280/how-to-remove-items-from-places-sidebar-in-nautilus-3-6
google-chrome https://download.visicut.org/
google-chrome https://etcher.io/

# Keybase
curl -O https://prerelease.keybase.io/keybase_amd64.deb
sudo dpkg -i keybase_amd64.deb
sudo apt-get install -f
