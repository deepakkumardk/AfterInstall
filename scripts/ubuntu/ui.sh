#!/bin/bash
echo "Installing UI Applications"

sudo add-apt-repository ppa:agornostal/ulauncher
sudo apt update
sudo apt install ulauncher -y

sudo apt install gir1.2-gtop-2.0 gir1.2-nm-1.0 gir1.2-clutter-1.0 gnome-system-monitor -y

sudo apt-add-repository ppa:tista/adapta -y
sudo apt update
sudo apt install adapta-gtk-theme -y

flatpak install flathub com.mattjakeman.ExtensionManager -y

