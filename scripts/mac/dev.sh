#!/bin/bash
echo "Installing Dev Applications"

echo "Enter name (global user.name)"
read git_config_user_name

echo "Enter email (global user.email)"
read git_config_user_email

# https://gist.github.com/bradp/bea76b16d3325f5c47d4
echo "Installing xcode-stuff"
xcode-select --install

git config --global user.name "$git_config_user_name"
git config --global user.email "$git_config_user_email"
git config --global core.editor "nano"

echo "Setting up SSH"
ssh-keygen -t ed25519 -C "$git_config_user_email"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat id_rsa.pub | pbcopy

read -r -s -p $'\nPress enter to continue...'
ssh -T git@github.com # or use bitbucket
echo "SSH key copied, paste this into the github/bitbcuket."
# Multiple SSH key setup
# https://www.section.io/engineering-education/using-multiple-ssh-keys-for-multiple-github-accounts/


# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew list

brew install python cloc tree

brew install --cask visual-studio-code postman

# Install nvm

# Update the following version as per the latest
touch ~/.zshrc
# wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
echo 'export PATH="/opt/homebrew/opt/curl/bin:$PATH"' >> ~/.zshrc
export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
export CPPFLAGS="-I/opt/homebrew/opt/curl/include"

sleep 1
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source ~/.zshrc
command -v nvm

brew install nvm
mkdir ~/.nvm

echo "Run command 'nvm ls', if you see error then reopen the terminal and then continue."
