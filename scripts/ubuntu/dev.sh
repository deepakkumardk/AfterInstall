#!/bin/bash
echo "Installing Dev Applications"

echo "Enter name for git config global user.name"
read git_config_user_name

echo "Enter email for git config global user.name"
read git_config_user_email

echo "Installing Dev Applications"

echo "Setup You Personal Access Token (PAT) While we are downloading some important dev apps."

sudo apt install git -y
git config --global user.name "$git_config_user_name"
git config --global user.email "$git_config_user_email"
git config --global credential.helper cache --timeout=3600

sudo apt install curl libssl-dev -y
sudo apt install build-essential python3-pip -y
sudo apt install cloc tree -y

flatpak install flathub com.getpostman.Postman -y
flatpak install flathub com.visualstudio.code -y

# Update the following version as per the latest
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source ~/.bashrc
command -v nvm
echo "Run command 'nvm ls', if you see error then reopen the terminal and then continue."
