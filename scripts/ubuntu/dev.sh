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

echo "Setting up SSH"
ssh-keygen -t ed25519 -C "$git_config_user_email"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
echo "Copy the above SSH key and create a new one on GitHub"
read -r -s -p $'\nPress enter to continue...'
ssh -T git@github.com

# Install git credential manager
# https://github.com/git-ecosystem/git-credential-manager/blob/release/docs/credstores.md
# https://github.com/git-ecosystem/git-credential-manager/blob/release/docs/install.md
# https://www.section.io/engineering-education/using-multiple-ssh-keys-for-multiple-github-accounts/

sudo apt install curl libssl-dev -y
sudo apt install build-essential python3-pip -y
sudo apt install cloc tree -y

flatpak install flathub com.getpostman.Postman -y
# flatpak install flathub com.visualstudio.code -y
# install VS code from Software to avoid the VS Code Bug

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Update the following version as per the latest
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source ~/.bashrc
command -v nvm
echo "Run command 'nvm ls', if you see error then reopen the terminal and then continue."
