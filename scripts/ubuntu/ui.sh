#!/bin/bash
echo "Installing UI Applications"

sudo add-apt-repository ppa:agornostal/ulauncher
sudo apt update
sudo apt install ulauncher -y
sudo apt install wmctrl

sudo apt install gir1.2-gtop-2.0 gir1.2-nm-1.0 gir1.2-clutter-1.0 gnome-system-monitor -y

sudo apt-add-repository ppa:tista/adapta -y
sudo apt update
sudo apt install adapta-gtk-theme -y

flatpak install flathub com.mattjakeman.ExtensionManager -y
# ExtensionsList -
# User Themes, Dash to Dock, Vitals, Clipboard Indicator, Net Speed Simplified, 
# https://github.com/Ulauncher/Ulauncher/wiki/Hotkey-In-Wayland
