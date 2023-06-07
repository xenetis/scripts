#!/usr/bin/env bash

sudo rm -f $(xdg-user-dir)/.electrum/electrum.AppImage
sudo rm -f $(xdg-user-dir)/.electrum/electrum.png
sudo rm -f $(xdg-user-dir)/.local/share/applications/electrum.desktop
sudo rm -f $(xdg-user-dir DESKTOP)/electrum.desktop
