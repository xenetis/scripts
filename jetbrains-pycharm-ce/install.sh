#!/usr/bin/env bash

sudo apt-get install libfuse2 -y

mkdir -p $(xdg-user-dir)/.local/share/JetBrains

wget -cO $(xdg-user-dir DOWNLOAD)/jetbrains-pycharm-ce.tar.gz "https://data.services.jetbrains.com/products/download?platform=linux&code=PCC"
cd $(xdg-user-dir DOWNLOAD)
tar -xzf jetbrains-pycharm-ce.tar.gz
rm jetbrains-pycharm-ce.tar.gz

DIR=$(find . -maxdepth 1 -type d -name pycharm-community-\* -print | head -n1)
mv ${DIR} $(xdg-user-dir)/.local/share/JetBrains/Pycharm-Community

cat <<EOF > $(xdg-user-dir DESKTOP)/jetbrains-pycharm-ce.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=PyCharm Community Edition
Icon=$(xdg-user-dir)/.local/share/JetBrains/Pycharm-Community/bin/pycharm.svg
Exec="$(xdg-user-dir)/.local/share/JetBrains/Pycharm-Community/bin/pycharm.sh" %f
Comment=Python IDE for Professional Developers
Categories=Development;IDE;
Terminal=false
StartupWMClass=jetbrains-pycharm-ce
StartupNotify=true
EOF
gio set $(xdg-user-dir DESKTOP)/jetbrains-pycharm-ce.desktop metadata::trusted true
sudo chmod a+x $(xdg-user-dir DESKTOP)/jetbrains-pycharm-ce.desktop

cp $(xdg-user-dir DESKTOP)/jetbrains-pycharm-ce.desktop ~/.local/share/applications/