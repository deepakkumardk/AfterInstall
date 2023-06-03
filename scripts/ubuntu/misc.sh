#!/bin/bash
echo "Installing Misc. Applications"

# sudo apt install rar unrar p7zip-full p7zip-rar
sudo apt install ls cloc i3 -y
flatpak install flathub com.google.Chrome -y
flatpak install flathub org.chromium.Chromium -y

flatpak install flathub com.github.tchx84.Flatseal -y

# Drivers
ubuntu-drivers devices
echo "Installing Recommended Driver"
sudo ubuntu-drivers autoinstall

# Next things to do
# Virtual Box, VenToy
# Custom Keyboard Shortcuts
# ulauncher-toggle, xkill