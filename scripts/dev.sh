#!/bin/bash
echo "Installing Dev Applications"
sleep 2


echo "Enter name for git config user.name"
read git_config_user_name

echo "Enter email for git config user.name"
read git_config_user_email

sudo apt install git -y
git config --global user.name "$git_config_user_name"
git config --global user.email "$git_config_user_name"
echo "Setup You Personal Access token NOW"
sleep 4

sudo apt install build-essential -y
sudo apt install curl

sudo apt install python3-pip -y

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
sleep 2
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source ~/.bashrc
command -v nvm
nvm ls
nvm install --lts
sleep 4

npm install -g yarn
# Not Installing typescript as having tssc in project dependency is good.

sudo apt-get install openjdk-8-jdk -y
sudo apt install net-tools -y
sudo apt install android-tools-adb android-tools-fastboot -y
sudo apt install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 -y

# Snap Apps
sudo apt install snapd
sudo snap install postman
sudo snap install --classic code
sudo snap install android-studio --classic

#Enable KVM
sudo apt install cpu-checker -y
kvm-ok
sudo apt install -y qemu qemu-kvm libvirt-daemon libvirt-clients bridge-utils virt-manager
sudo systemctl status libvirtd
sudo systemctl enable --now libvirtd
lsmod | grep -i kvm



