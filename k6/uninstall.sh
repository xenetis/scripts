#!/usr/bin/env bash

sudo rm -f /etc/apt/trusted.gpg.d/k6-archive-keyring.gpg
sudo rm -f /etc/apt/sources.list.d/k6.list
sudo apt autoremove --purge k6 -y
sudo apt-get update
