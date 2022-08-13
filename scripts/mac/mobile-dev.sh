#!/bin/bash
echo "Installing Dev Applications"
sleep 2

brew install adoptopenjdk14
brew install net-tools
brew install yarn
brew install watchman

brew tap homebrew/cask-versions
brew install --cask zulu11

brew install android-tools-adb android-tools-fastboot

echo "export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk" >> ~/.zshrc
echo "export PATH=$PATH:$ANDROID_SDK_ROOT/emulator" >> ~/.zshrc
echo "export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools" >> ~/.zshrc

source ~/.zshrc

gem install ffi
gem install cocoapods

brew install ruby

export PATH=/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.0.0/bin:$PATH
export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"


export PATH=/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.0.0/bin:$HOME/Library/Android/sdk/platform-tools:$PATH

# install network link contioner