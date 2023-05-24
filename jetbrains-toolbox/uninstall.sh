#!/usr/bin/env bash

sudo rm -rf .local/share/JetBrains/Toolbox
sudo rm -f ~/.local/share/applications/jetbrains-toolbox.desktop
sudo rm -f $(xdg-user-dir DESKTOP)/jetbrains-toolbox.desktop
