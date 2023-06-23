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
cat id_ed25519.pub | pbcopy

read -r -s -p $'\nPress enter to continue...'
# ssh -T git@github.com # or use bitbucket
ssh -T git@bitbucket.org
echo "SSH key copied, paste this into the github/bitbcuket."
# Multiple SSH key setup
# https://www.section.io/engineering-education/using-multiple-ssh-keys-for-multiple-github-accounts/


echo "Installing homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Setup path for brew
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew list
brew install python cloc tree wget

brew install --cask visual-studio-code postman

# Install nvm

# Update the following version as per the latest
touch ~/.zshrc
# wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
# echo 'export PATH="/opt/homebrew/opt/curl/bin:$PATH"' >> ~/.zshrc
# export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/curl/include"

# If you need to have ruby first in your PATH, run:
echo 'export PATH="/opt/homebrew/opt/ruby/bin:$PATH"' >> ~/.zshrc

# For compilers to find ruby you may need to set:
export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"
source ~/.zshrc

brew install nvm
command -v nvm
mkdir ~/.nvm

# You should create NVM's working directory if it doesn't exist:
mkdir ~/.nvm

# Add the following to your shell profile e.g. ~/.profile or ~/.zshrc:
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

read -r -s -p $'\nPress enter to continue...'

source ~/.zshrc
source ~/.nvm/nvm.sh

echo "Run command 'nvm ls', if you see error then reopen the terminal and then continue."
