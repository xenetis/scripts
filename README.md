# Awesome Shell Scripts

Easy install and administrate your Debian / Ubuntu applications and services

---

# Installation

## Download project
````shell
sudo apt install git make curl lsb-release -y
git clone https://github.com/xenetis/scripts
cd scripts
````
## Install examples
````shell
make install brave
make install docker
make install google-chrome
make install jetbrains-toolbox
make install minecraft
make install opensnitch
make install virtualbox
````

---

# Or direct installation

For example opensnitch: 
````shell
wget -O - https://raw.githubusercontent.com/xenetis/scripts/main/opensnitch/install.sh | bash
````

---

# Scripts

## Browser

[Brave](brave) - Installation script for Brave web browser.

[Google Chrome](google-chrome) - Installation script for Google Chrome web browser.

## Commandline tools

[K6](k6) - Installation script for K6 load testing tool

## Database tools

[Dbeaver](dbeaver) - Installation script for Dbeaver

## Development tools

[Jetbrains Toolbox](jetbrains-toolbox) - Installation script for Jetbrains toolbox.

## Firewall

[Opensnitch](opensnitch) - Installation script for Opensnitch a GNU/Linux application firewall.

## Games 

[Minecraft](minecraft) - Installation script for Minecraft Game.

## Virtual Machine - Container

[Docker](docker) - Installation script for Docker is a platform designed to help developers build, share, and run modern applications.

[Virtualbox](virtualbox) - Installation script for Virtualbox a powerful x86 and AMD64/Intel64 virtualization product for enterprise as well as home use.



