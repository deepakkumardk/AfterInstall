#!/bin/bash
echo "Installing General Applications"
sleep 2

sudo apt update && sudo apt upgrade -y

sudo apt install ubuntu-restricted-extras -y
sudo apt install gnome-tweaks
sudo apt install chrome-gnome-shell -y
sudo apt install laptop-mode-tools -y
sudo apt install tlp tlp-rdw -y
sudo tlp start
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
gsettings set org.gnome.desktop.interface show-battery-percentage true
sudo apt autoremove -y
sudo apt clean
# sudo ufw enable


brew install --cask stats


# Set default finder folder
# Set backspace/delete speed, keyboard -> key repeat
# Add some custom shortcuts as you want
# Setup Keyboard/mouse as per you need