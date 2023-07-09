#!/bin/bash
set -e

# Account name as argument
if [ $# != 1 ]; then
  echo "Give account name as argument"
  exit 1
fi

accountName=$1
fileName=Local-$accountName.dat

# Check if file exists, if it does just exit, otherwise copy and rename
if test -f "$fileName"; then
  echo "$fileName exists, skipping copy"
else

  echo "Starting Guild Wars 2, please log in to character select and then exit to create Local.dat for account $accountName"

  steam steam://rungameid/1284210 #&>/dev/null

  cp /home/deck/.steam/steam/steamapps/compatdata/1284210/pfx/drive_c/users/steamuser/AppData/Roaming/Guild\ Wars\ 2/Local.dat "./$fileName"

  echo "$fileName file generated"
fi
