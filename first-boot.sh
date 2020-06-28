#!/bin/bash
#run with sudo
#wget -O - https://raw.githubusercontent.com/paulikappi/first-boot/master/first-boot.sh | sudo bash

<<<<<<< HEAD
apt update
apt upgrade -y
reboot now
=======
if [ -z "$1" ]; then

  # When you run the script, you will run this block since $1 is empty.

  echo "Starting up visudo with this script as first parameter"

  # We first set this script as the EDITOR and then starts visudo.
  # Visudo will now start and use THIS SCRIPT as its editor
  export EDITOR=$0 && sudo -E visudo
else

  # When visudo starts this script, it will provide the name of the sudoers
  # file as the first parameter and $1 will be non-empty. Because of that,
  # visudo will run this block.

  echo "Changing sudoers"

  # We change the sudoers file and then exit
  echo "Defaults    timestamp_timeout=0" >> $1
fi

#apt update
#apt upgrade -y
#reboot now
>>>>>>> 981f4a9171f6dda5bad0163989776dfd762aeb5a
