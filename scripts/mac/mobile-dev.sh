#!/bin/bash
echo "Installing Dev Applications"

brew install adoptopenjdk14 yarn watchman

brew tap homebrew/cask-versions
brew install --cask zulu11

brew install android-tools-adb android-tools-fastboot net-tools

echo "export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk" >> ~/.zshrc
echo "export PATH=$PATH:$ANDROID_SDK_ROOT/emulator" >> ~/.zshrc
echo "export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools" >> ~/.zshrc

source ~/.zshrc

gem install ffi cocoapods

brew install ruby scrcpy

export PATH=/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.0.0/bin:$PATH
export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"

export PATH=/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.0.0/bin:$HOME/Library/Android/sdk/platform-tools:$PATH

echo "Intall AndroidStudio from the website to defer any node related errors"

# Create mobile folders
mkdir -p $HOME/AndroidStudioProjects
mkdir -p $HOME/ReactNativeProjects/Archived
mkdir -p $HOME/ReactNativeProjects/Cloned
mkdir -p $HOME/MiscProjects

# install network link contioner