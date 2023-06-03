#!/bin/bash
echo "Setting up your Macbook"

chmod +x ./*.sh

./dev.sh
./genral.sh
./ui.sh
./mobile-dev.sh
source ~/.nvm/nvm.sh
./dev-npm-packages.sh
./zsh.sh

