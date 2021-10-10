#!/bin/bash
echo "Installing Misc. Applications"
sleep 2

#sudo apt install rar unrar p7zip-full p7zip-rar
sudo snap install chromium

#Drivers
ubuntu-drivers devices
echo "Installing Recommended Driver"
sudo ubuntu-drivers autoinstall
