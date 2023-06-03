#!/bin/bash
echo "Installing NPM Packages"

nvm ls
nvm install --lts

npm install -g yalc
# Not Installing typescript as having tsc in project dependency is good.
