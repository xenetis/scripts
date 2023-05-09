#!/usr/bin/env bash

wget https://launcher.mojang.com/download/Minecraft.deb

sudo dpkg -i Minecraft.deb
sudo apt-get install -f -y

rm -rf Minecraft.deb