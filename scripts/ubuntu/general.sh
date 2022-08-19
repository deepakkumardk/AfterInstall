#!/bin/bash
sudo apt update && sudo apt upgrade -y
echo "Installing General Applications"

sudo apt install gnome-tweaks chrome-gnome-shell ubuntu-restricted-extras -y
sudo apt install timeshift -y
sudo apt install libfuse2 -y
sudo apt install laptop-mode-tools tlp tlp-rdw -y
sudo tlp start
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
gsettings set org.gnome.desktop.interface show-battery-percentage true
sudo apt install snapd -y
sudo apt autoremove -y
sudo apt clean
# sudo ufw enable
