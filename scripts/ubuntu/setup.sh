#!/bin/bash
echo "Setting up your OS"

chmod +x ./*.sh

./general.sh
./dev.sh
./mobile-dev.sh
./ui.sh
./media.sh
./misc.sh
./zsh.sh

# Run this script again (or copy paste the whole file) if terminal doesn't recognize nvm command
gnome-terminal -- ./dev-npm-packages.sh
