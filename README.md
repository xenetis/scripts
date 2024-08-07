# Awesome Shell Scripts

Easy install and administrate your Debian / Ubuntu applications and services

---

# Installation

## Download project
````shell
sudo apt install git make curl lsb-release gpg -y
git clone https://github.com/xenetis/scripts
cd scripts
````

## Install scripts
````shell
make install brave
make install dbeaver
make install docker
make install electrum
make install google-chrome
make install jetbrains-toolbox
make install jetbrains-pycharm-ce
make install k6
make install minecraft
make install opensnitch
make install redis-insight
make install teamviewer-client
make install virtualbox
make install zenmap
````

## Uninstall scripts
````shell
make uninstall brave
make uninstall dbeaver
make uninstall docker
make uninstall google-chrome
make uninstall jetbrains-toolbox
make uninstall jetbrains-pycharm-ce
make uninstall k6
make uninstall minecraft
make uninstall opensnitch
make uninstall redis-insight
make uninstall teamviewer-client
make uninstall virtualbox
make uninstall zenmap
````

---

# Or direct installation

For example opensnitch: 
````shell
wget -O - https://raw.githubusercontent.com/xenetis/scripts/main/opensnitch/install.sh | bash
````

---

# Scripts

## Bitcoin 

[Electrum Bitcoin Wallet](electrum) - Installation script for Electrum Bitcoin Wallet. 

## Browser

[Brave](brave) - Installation script for Brave web browser.

[Google Chrome](google-chrome) - Installation script for Google Chrome web browser.

## Commandline tools

[K6](k6) - Installation script for K6 load testing tool

## Database tools

[Dbeaver](dbeaver) - Installation script for Dbeaver

[Redis Insight](redis-insight) - Installation script for Redis Insight

## Development tools

[Jetbrains Toolbox](jetbrains-toolbox) - Installation script for Jetbrains Toolbox.

[Jetbrains Pycharm Community](jetbrains-pycharm-ce) - Installation script for Jetbrains Pycharm Community Edition.

[Jetbrains Intellij Idea Community](jetbrains-intellij-idea-ce) - Installation script for Jetbrains Intellij Idea Community Edition.

## Firewall

[Opensnitch](opensnitch) - Installation script for Opensnitch a GNU/Linux application firewall.

## Games 

[Minecraft](minecraft) - Installation script for Minecraft Game.

## Virtual Machine - Container

[Docker](docker) - Installation script for Docker is a platform designed to help developers build, share, and run modern applications.

[Virtualbox](virtualbox) - Installation script for Virtualbox a powerful x86 and AMD64/Intel64 virtualization product for enterprise as well as home use.

## Network

[Teamviewer Client](teamviewer-client) - Installation script for Teamviewer Client

[Zenmap](zenmap) - Installation script for Zenmap a GUI for Nmap
