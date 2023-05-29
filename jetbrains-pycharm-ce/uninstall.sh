#!/usr/bin/env bash

sudo rm -rf ~/.local/share/JetBrains/Pycharm-Community
sudo rm -f ~/.local/share/applications/jetbrains-pycharm-ce.desktop
sudo rm -f $(xdg-user-dir DESKTOP)/jetbrains-pycharm-ce.desktop
