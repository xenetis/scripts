#!/usr/bin/env bash

sudo apt-get install libfuse2 -y

wget -cO jetbrains-toolbox.tar.gz "https://data.services.jetbrains.com/products/download?platform=linux&code=TBA"
tar -xzf jetbrains-toolbox.tar.gz
DIR=$(find . -maxdepth 1 -type d -name jetbrains-toolbox-\* -print | head -n1)
cd "${DIR}"
./jetbrains-toolbox
cd ..
rm -rf "${DIR}"
rm jetbrains-toolbox.tar.gz

# Add Desktop icon
sudo cp ~/.local/share/applications/jetbrains-toolbox.desktop $(xdg-user-dir DESKTOP)
gio set $(xdg-user-dir DESKTOP)/jetbrains-toolbox.desktop metadata::trusted true
sudo chmod a+x $(xdg-user-dir DESKTOP)/jetbrains-toolbox.desktop