#!/bin/bash
echo "Setting up your OS"

chmod +x ./*.sh

./dev.sh
./general.sh
./ui.sh
./mobile-dev.sh
./media.sh
./misc.sh
source ~/.nvm/nvm.sh
# Run this script again (or copy paste the whole file) if terminal doesn't recognize nvm command
gnome-terminal -- ./dev-npm-packages.sh

./zsh.sh