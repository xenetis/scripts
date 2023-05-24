#!/usr/bin/env bash

sudo rm -f /etc/apt/trusted.gpg.d/brave-browser-archive-keyring.gpg
sudo rm -f /etc/apt/sources.list.d/brave-browser-release.list
sudo apt autoremove --purge brave-browser -y
sudo apt-get update
