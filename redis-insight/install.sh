#!/usr/bin/env bash

wget https://download.redisinsight.redis.com/latest/RedisInsight-linux-amd64.deb

sudo dpkg -i RedisInsight-linux-amd64.deb

rm -rf RedisInsight-linux-amd64.deb


cat <<EOF > $(xdg-user-dir DESKTOP)/RedisInsight.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Redis Insight
Comment=Redis Insight
Exec=/opt/RedisInsight/redisinsight
Icon=/usr/share/icons/hicolor/128x128/apps/redisinsight.png
Terminal=false
Categories=Network;
EOF

gio set $(xdg-user-dir DESKTOP)/RedisInsight.desktop metadata::trusted true
sudo chmod a+x $(xdg-user-dir DESKTOP)/RedisInsight.desktop

