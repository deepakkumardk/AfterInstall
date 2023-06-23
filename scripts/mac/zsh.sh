if command -v curl >/dev/null 2>&1; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/romkatv/zsh4humans/v5/install)"
else
  sh -c "$(wget -O- https://raw.githubusercontent.com/romkatv/zsh4humans/v5/install)"
fi

source ~/.nvm/nvm.sh

echo "export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk" >> ~/.zshrc
echo "export ANDROID_HOME=$HOME/Library/Android/sdk" >> ~/.zshrc
echo "export PATH=$PATH:$ANDROID_HOME/emulator" >> ~/.zshrc
echo "export PATH=$PATH:$ANDROID_HOME/platform-tools" >> ~/.zshrc

# Download and install it
# https://github.com/romkatv/powerlevel10k/blob/master/font.md
