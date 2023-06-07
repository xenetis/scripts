#!/usr/bin/env bash

sudo apt-get install libfuse2 -y

# DOWNLOAD URL
url="https://electrum.org/#download"
sig_url="https://raw.githubusercontent.com/spesmilo/electrum/master/pubkeys/ThomasV.asc"
app_url=$(curl -s $url | grep ">Appimage<" | cut -d '"' -f 2)
asc_url=$(curl -s $url | grep "AppImage.asc" | cut -d '"' -f 4)

# GET ThomasV key and trust it
wget $sig_url
gpg --import ThomasV.asc

# NO NEED TO TRUST
#gpg --list-keys --fingerprint \
#    | grep ^pub -A 1 \
#    | tail -1 \
#    | tr -d ' ' \
#    | grep 6694D8DE7BE8EE5631BED9502BD5824B7F9470E6 \
#    | awk 'BEGIN { FS = "\n" } ; { print $1":6:" }' \
#    | gpg --import-ownertrust

rm ThomasV.asc

wget $app_url
wget $asc_url

VERIFIED=$(gpg --status-fd 1 --verify *.asc | grep "VALIDSIG" |wc -l)

# handle results
if [[ ! $VERIFIED -eq 0 ]]; then
    echo "gpg key verified. Installing..."

    mkdir -p $(xdg-user-dir)/.electrum
    chmod +x *.AppImage
    mv *.AppImage $(xdg-user-dir)/.electrum/electrum.AppImage

    curl -fsSLo $(xdg-user-dir)/.electrum/electrum.png https://electrum.org/images/favicon.png
else
    echo "gpg key cannot be verified. Aborting installation"
    exit 1
fi

rm *.AppImage*

cat <<EOF > $(xdg-user-dir DESKTOP)/electrum.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Electrum
Comment=My App Description
Exec=$(xdg-user-dir)/.electrum/electrum.AppImage
Icon=$(xdg-user-dir)/.electrum/electrum.png
Terminal=false
Categories=Bitcoin;
EOF

gio set $(xdg-user-dir DESKTOP)/electrum.desktop metadata::trusted true
sudo chmod a+x $(xdg-user-dir DESKTOP)/electrum.desktop

cp $(xdg-user-dir DESKTOP)/electrum.desktop $(xdg-user-dir)/.local/share/applications/
