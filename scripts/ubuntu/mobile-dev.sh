#!/bin/bash
echo "Installing Mobile Dev Applications"

sudo apt install openjdk-8-jdk net-tools -y
sudo apt install android-tools-adb android-tools-fastboot -y

echo "export ANDROID_HOME=$HOME/Android/Sdk" >> ~/.bashrc
source ~/.bashrc

# Enable KVM
sudo apt install cpu-checker -y
kvm-ok
sudo apt install qemu qemu-kvm libvirt-daemon libvirt-clients bridge-utils virt-manager -y

sudo systemctl status libvirtd
sudo systemctl enable --now libvirtd
lsmod | grep -i kvm

# Android Studio
sudo apt install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 -y
# sudo snap install android-studio --classic
echo "Intall AndroidStudio from the website to defer any node related errors"

