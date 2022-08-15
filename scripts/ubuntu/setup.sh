#!/bin/bash

chmod +x ./*

./genral.sh
./dev.sh
./ui.sh
./mobile-dev.sh
./media.sh


gnome-terminal -- ./dev-npm-packages.sh
