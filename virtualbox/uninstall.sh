#!/usr/bin/env bash

sudo rm -f /etc/apt/trusted.gpg.d/virtualbox.pub
sudo rm -f /etc/apt/sources.list.d/virtualbox.list
sudo apt autoremove --purge virtualbox -y
sudo apt-get update
