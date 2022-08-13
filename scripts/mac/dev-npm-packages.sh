#!/bin/bash
echo "Installing NPM Packages"
sleep 1
nvm
nvm ls
nvm install --lts

npm install -g lerna yalc
# Not Installing typescript as having tssc in project dependency is good.
