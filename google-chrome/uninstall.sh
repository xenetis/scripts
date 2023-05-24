#!/usr/bin/env bash

sudo rm -f /etc/apt/trusted.gpg.d/google-chrome.pub
sudo rm -f /etc/apt/sources.list.d/google-chrome.list
sudo apt autoremove --purge google-chrome-stable -y
sudo apt-get update
