#!/usr/bin/env bash

sudo apt install alien -y

url="https://nmap.org/download.html"
rpm_url=$(curl -s $url | grep "noarch.rpm<"| grep -v "BETA" | cut -d '"' -f 4)
wget $rpm_url
rpm_file=$(basename "${rpm_url}")
sudo alien ${rpm_file}

deb_file=$(find ./ -iname zenmap*.deb)
sudo dpkg -i ${deb_file}
sudo apt-get install -f -y

sudo rm -rf ${rpm_file} ${deb_file}

cat <<EOF > $(xdg-user-dir DESKTOP)/zenmap.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Zenmap
Comment=Zenmap App
Exec=sudo /usr/bin/zenmap
Icon=/usr/share/zenmap/pixmaps/zenmap.png
Terminal=false
Categories=Network;
EOF

gio set $(xdg-user-dir DESKTOP)/zenmap.desktop metadata::trusted true
sudo chmod a+x $(xdg-user-dir DESKTOP)/zenmap.desktop
