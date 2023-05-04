# VIRTUALBOX

A simple script designed for **Debian / Ubuntu** to install the last stable release of **K6** .

## Install 

````shell
wget -O - https://raw.githubusercontent.com/xenetis/scripts/main/k6/install.sh | bash
````
OR 
````shell
git clone https://github.com/xenetis/scripts
cd scripts
make install k6
````

You can try k6 with **k6-example.js** 
````shell
k6 run k6/k6-example.js
````

<p align="center">
  <img src="https://raw.githubusercontent.com/xenetis/scripts/main/k6/screenshot.png" alt="OpenSnitch"/>
</p>