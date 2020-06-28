#!/bin/bash
# run with sudo
#wget -O - https://raw.githubusercontent.com/paulikappi/first-boot/master/first-boot.sh | bash
sudo echo "Editing sudoers"
sudo echo "Defaults    timestamp_timeout=0" >> /etc/sudoers
fi
sudo apt update
sudo apt upgrade -y
