#!/bin/bash
echo "Installing Dev Applications"

# brew install --cask adoptopenjdk14
# brew install yarn watchman

# brew tap homebrew/cask-versions
# brew install --cask zulu11

brew install --cask androidtool
brew install android-platform-tools
brew install ruby scrcpy

brew install chruby ruby-install
ruby-install ruby

# If you need to have bison first in your PATH, run:
echo 'export PATH="/opt/homebrew/opt/bison/bin:$PATH"' >> ~/.zshrc
# For compilers to find bison you may need to set:
export LDFLAGS="-L/opt/homebrew/opt/bison/lib"
# For compilers to find libffi you may need to set:
export LDFLAGS="-L/opt/homebrew/opt/libffi/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libffi/include"

# gem install ffi
brew install cocoapods

# export PATH=/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.0.0/bin:$PATH
# export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"

# echo "export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk" >> ~/.zshrc
# echo "export PATH=$PATH:$ANDROID_SDK_ROOT/emulator" >> ~/.zshrc
# echo "export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools" >> ~/.zshrc

source ~/.zshrc

export PATH=/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.0.0/bin:$HOME/Library/Android/sdk/platform-tools:$PATH

echo "Intall AndroidStudio from the website to defer any node related errors"

# Create mobile folders
mkdir -p $HOME/AndroidStudioProjects
mkdir -p $HOME/ReactNativeProjects/Archived
mkdir -p $HOME/ReactNativeProjects/Cloned
mkdir -p $HOME/MiscProjects

# install network link contioner
