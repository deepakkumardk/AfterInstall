#!/bin/bash
echo "Installing NPM Packages"
sleep 1

nvm ls
nvm install --lts

npm install -g lerna yarn yalc
# Not Installing typescript as having tssc in project dependency is good.
