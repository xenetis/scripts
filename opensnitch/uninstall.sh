#!/usr/bin/env bash

systemctl stop opensnitchd
rm -rf /etc/opensnitchd/
rm /usr/local/bin/opensnitchd
rm /etc/systemd/system/opensnitchd.service
pip3 uninstall opensnitch-ui
rm -rf ~/.opensnitch/
