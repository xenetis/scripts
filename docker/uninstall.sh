#!/usr/bin/env bash

sudo rm -f /etc/apt/trusted.gpg.d/docker.pub
sudo rm -f /etc/apt/sources.list.d/docker.list
sudo apt autoremove --purge docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-compose -y
sudo apt-get update
