#!/usr/bin/env bash

sudo curl -fsSLo /etc/apt/trusted.gpg.d/google-chrome.pub https://dl-ssl.google.com/linux/linux_signing_key.pub
echo "deb [signed-by=/etc/apt/trusted.gpg.d/google-chrome.pub arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main"|sudo tee /etc/apt/sources.list.d/google-chrome.list

sudo apt-get update
sudo apt-get install google-chrome-stable