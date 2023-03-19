#!/bin/bash
echo "Setting up your OS"

chmod +x ./*.sh

./genral.sh
./dev.sh
./ui.sh
./mobile-dev.sh
source ~/.nvm/nvm.sh
./dev-npm-packages.sh

