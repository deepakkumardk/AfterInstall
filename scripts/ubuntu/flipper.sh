#!/bin/bash
# Run this scirpt after downloading the Flipper from https://fbflipper.com/
cd Downloads
wget "https://fbflipper.com/img/icon.png" -O icon.png

sudo cp Flipper-linux /usr/local/ -r
sudo cp icon.png /usr/local/Flipper-linux/resources
sudo nano /usr/share/applications/Flipper.desktop

echo "
#!/usr/bin/env/ xdg-open
[Desktop Entry]
Version=0.51
Type=Application
Terminal=false
Exec=/usr/local/Flipper-linux/flipper
Name=Flipper
Comment=Extensible mobile app debugger
Icon=/usr/local/Flipper-linux/resources/icon.png
" >> /usr/share/applications/Flipper.desktop

sudo chmod +x /usr/share/applications/Flipper.desktop

brew install watchman