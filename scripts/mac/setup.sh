#!/bin/bash
echo "Setting up your Macbook"

chmod +x ./*.sh

./dev.sh
./general.sh
./ui.sh
./mobile-dev.sh
./dev-npm-packages.sh
./zsh.sh
