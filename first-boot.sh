#!/bin/bash
#wget -O - https://raw.githubusercontent.com/<username>/<project>/<branch>/<path>/<file> | bash
if [ -z "$1" ]; then
  echo "Starting up visudo"
  export EDITOR=$0 && sudo -E visudo
else
  echo "Changing sudoers"
  echo "Defaults    timestamp_timeout=0" >> $1
fi
apt update
apt upgrade -y
