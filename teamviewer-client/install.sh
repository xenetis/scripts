#!/usr/bin/env bash

wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb

sudo apt install libminizip1
sudo dpkg -i teamviewer_amd64.deb

rm -rf teamviewer_amd64.deb

cat <<EOF > $(xdg-user-dir DESKTOP)/Teamviewer.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Teamviewer
Comment=Teamviewer
Exec=/usr/bin/teamviewer
Icon=TeamViewer
Terminal=false
Categories=Network;
EOF

gio set $(xdg-user-dir DESKTOP)/Teamviewer.desktop metadata::trusted true
sudo chmod a+x $(xdg-user-dir DESKTOP)/Teamviewer.desktop

