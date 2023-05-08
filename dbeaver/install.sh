#!/usr/bin/env bash

curl -fsSL https://dbeaver.io/debs/dbeaver.gpg.key | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/dbeaver.gpg
echo "deb [signed-by=/etc/apt/trusted.gpg.d/dbeaver.gpg arch=$(dpkg --print-architecture)] https://dbeaver.io/debs/dbeaver-ce /"|sudo tee /etc/apt/sources.list.d/dbeaver.list

sudo apt-get update
sudo apt-get install dbeaver-ce -y

sudo cp ~/.local/share/applications/_usr_share_dbeaver-ce_.desktop $(xdg-user-dir DESKTOP)
gio set $(xdg-user-dir DESKTOP)/_usr_share_dbeaver-ce_.desktop metadata::trusted true
sudo chmod a+x $(xdg-user-dir DESKTOP)/_usr_share_dbeaver-ce_.desktop

