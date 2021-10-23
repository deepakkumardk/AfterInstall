#!/bin/bash
echo "Installing Misc. Applications"
sleep 2

# sudo apt install rar unrar p7zip-full p7zip-rar
sudo snap install chromium
sudo apt install ls

# Joplin
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash

# Drivers
ubuntu-drivers devices
echo "Installing Recommended Driver"
sudo ubuntu-drivers autoinstall

# Virtual Box, VenToy