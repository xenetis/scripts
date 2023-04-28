#!/usr/bin/env bash

curl -fsSLo /etc/apt/trusted.gpg.d/docker.gpg https://download.docker.com/linux/ubuntu/gpg
echo "deb [signed-by=/etc/apt/trusted.gpg.d/docker.gpg arch=$(dpkg --print-architecture)] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-compose -y
