#!/usr/bin/env bash

echo "deb [signed-by=/etc/apt/trusted.gpg.d/virtualbox.pub arch=$(dpkg --print-architecture)] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
sudo curl -fsSLo /etc/apt/trusted.gpg.d/virtualbox.pub http://download.virtualbox.org/virtualbox/debian/oracle_vbox_2016.asc

sudo apt-get update
sudo apt-get install virtualbox -y