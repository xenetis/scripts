#!/usr/bin/env bash

sudo rm -f /etc/apt/trusted.gpg.d/dbeaver.gpg
sudo rm -f /etc/apt/sources.list.d/dbeaver.list
sudo rm -f $(xdg-user-dir DESKTOP)/_usr_share_dbeaver-ce_.desktop
sudo rm -rf .local/share/DBeaverData
sudo apt autoremove --purge dbeaver-ce -y
sudo apt-get update
