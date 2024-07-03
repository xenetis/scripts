#!/usr/bin/env bash

sudo apt-get install libfuse2 -y

mkdir -p $(xdg-user-dir)/.local/share/JetBrains

wget -cO $(xdg-user-dir DOWNLOAD)/jetbrains-intellij-idea-ce.tar.gz "https://data.services.jetbrains.com/products/download?platform=linux&code=IIC"
cd $(xdg-user-dir DOWNLOAD)
tar -xzf jetbrains-intellij-idea-ce.tar.gz
rm jetbrains-intellij-idea-ce.tar.gz

DIR=$(find . -maxdepth 1 -type d -name idea-IC-\* -print | head -n1)
mv ${DIR} $(xdg-user-dir)/.local/share/JetBrains/Intellij-Idea-Community

cat <<EOF > $(xdg-user-dir DESKTOP)/jetbrains-intellij-idea-ce.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Intellij Idea Community Edition
Icon=$(xdg-user-dir)/.local/share/JetBrains/Intellij-Idea-Community/bin/idea.svg
Exec="$(xdg-user-dir)/.local/share/JetBrains/Intellij-Idea-Community/bin/idea.sh" %f
Comment=Python IDE for Professional Developers
Categories=Development;IDE;
Terminal=false
StartupWMClass=jetbrains-intellij-idea-ce
StartupNotify=true
EOF
gio set $(xdg-user-dir DESKTOP)/jetbrains-intellij-idea-ce.desktop metadata::trusted true
sudo chmod a+x $(xdg-user-dir DESKTOP)/jetbrains-intellij-idea-ce.desktop

cp $(xdg-user-dir DESKTOP)/jetbrains-intellij-idea-ce.desktop ~/.local/share/applications/
