#!/usr/bin/env bash

sudo rm -rf ~/.local/share/JetBrains/Intellij-Idea-Community
sudo rm -f ~/.local/share/applications/jetbrains-intellij-idea-ce.desktop
sudo rm -f $(xdg-user-dir DESKTOP)/jetbrains-intellij-idea-ce.desktop
