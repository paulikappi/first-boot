#!/bin/bash
# run with sudo
#wget -O - https://raw.githubusercontent.com/paulikappi/first-boot/master/first-boot.sh | sudo bash
sudo echo "Defaults    timestamp_timeout=0" >> /etc/sudoers
sudo apt update
sudo apt upgrade -y
