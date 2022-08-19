#!/bin/bash
echo "Setting up your OS"

chmod +x ./*.sh

./general.sh
./dev.sh
./mobile-dev.sh
./ui.sh
./media.sh
./misc.sh

gnome-terminal -- ./dev-npm-packages.sh

