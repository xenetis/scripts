#!/usr/bin/env bash

# URL OF OPENSNITCH LAST RELEASE
RELEASE_URL="https://api.github.com/repos/evilsocket/opensnitch/releases/latest"
DOWNLOAD_URL=$(curl -s ${RELEASE_URL} | grep browser_download_url | grep ".deb" | grep $(dpkg --print-architecture) | cut -d '"' -f 4)

printf "================== \n Download: %s \n==================\n" "${DOWNLOAD_URL}"
wget "${DOWNLOAD_URL}"

# FILE OF OPENSNITCH LAST RELEASE
FILENAME=$(basename "${DOWNLOAD_URL}")
printf "================== \n Install: %s \n==================\n" "${FILENAME}"
sudo dpkg -i "${FILENAME}"
sudo apt-get install -f
rm -f "${FILENAME}"


# URL OF OPENSNITCH-UI LAST RELEASE
DOWNLOAD_URL=$(curl -s ${RELEASE_URL} | grep browser_download_url | grep "all.deb" | grep opensnitch-ui | cut -d '"' -f 4)

printf "================== \n Download: %s \n==================\n" "${DOWNLOAD_URL}"
wget "${DOWNLOAD_URL}"

# FILE OF OPENSNITCH LAST RELEASE
FILENAME=$(basename "${DOWNLOAD_URL}")
printf "================== \n Install: %s \n==================\n" "${FILENAME}"
sudo apt install python3-pip python3-pyasn
sudo dpkg -i "${FILENAME}"
sudo apt-get install -f
pip3 install --ignore-installed grpcio==1.44.0
pip3 install qt-material
rm -f "${FILENAME}"

systemctl enable opensnitch
systemctl start opensnitch
printf "================== \n Just run: opensnitch-ui \n==================\n"