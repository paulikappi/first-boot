#!/bin/bash
#wget -O - https://raw.githubusercontent.com/paulikappi/first-boot/master/first-boot.sh | bash
if [ -z "$1" ]; then
  sudo echo "Starting up visudo"
  sudo export EDITOR=$0 && sudo -E visudo
else
  sudo echo "Changing sudoers"
  sudo echo "Defaults    timestamp_timeout=0" >> $1
fi
sudo apt update
sudo apt upgrade -y
