#!/bin/bash
echo "Installing Media Applications"
sleep 2

# sudo add-apt-repository ppa:ubuntuhandbook1/gimp
# sudo add-apt-repository ppa:inkscape.dev/stable
# sudo add-apt-repository ppa:kdenlive/kdenlive-stable
# sudo add-apt-repository ppa:videolan/master-daily


sudo apt install kazam -Y
sudo apt install snapd -Y

sudo snap install gimp
sudo snap install inkscape
sudo snap install kdenlive
sudo snap install vlc
sudo snap install ffmpeg
sudo snap install telegram-desktop
sudo snap install audacity
sudo snap connect audacity:alsa
