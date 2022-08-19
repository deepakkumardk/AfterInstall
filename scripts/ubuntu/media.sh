#!/bin/bash
echo "Installing Media Applications"

sudo apt install ffmpeg -y

flatpak install flathub org.gimp.GIMP -y
flatpak install flathub org.inkscape.Inkscape -y
flatpak install flathub org.kde.kdenlive -y
flatpak install flathub org.telegram.desktop -y
flatpak install flathub org.audacityteam.Audacity -y
flatpak install flathub org.videolan.VLC -y

