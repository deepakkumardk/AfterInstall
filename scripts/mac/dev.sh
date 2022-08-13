#!/bin/bash
echo "Installing Dev Applications"
sleep 1
# https://gist.github.com/bradp/bea76b16d3325f5c47d4
echo "Installing xcode-stuff"
xcode-select --install

# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update the following version as per the latest
touch ~/.zshrc
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
  echo 'export PATH="/opt/homebrew/opt/curl/bin:$PATH"' >> ~/.zshrc
  export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/curl/include"

sleep 2
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source ~/.zshrc
command -v nvm

brew install nvm
  mkdir ~/.nvm

echo "Run command 'nvm ls', if you see error then reopen the terminal and then continue."


#sudo apt install curl libssl-dev
#sudo apt install build-essential -y
brew install python
brew install cloc tree

# Snap Apps
#sudo apt install snapd
brew install --cask postman
brew install --cask visual-studio-code

git config --global core.editor "nano"

ssh-keygen
cat id_rsa.pub | pbcopy

echo "SSH key copied paste this into the github/bitbcuket."