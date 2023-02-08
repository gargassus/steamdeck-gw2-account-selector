#!/bin/bash
set -e

# read .dat files and parse accounts
shopt -s nullglob
accounts=(Local-*.dat)

# print options
for i in "${!accounts[@]}"; do
  accountName=$(echo ${accounts[$i]} | cut -d '-' -f 2 | cut -d '.' -f 1)
  printf "%s\t%s\n" "$i" "${accountName}"
done

# prompt for account
echo "Give account number to start Guild Wars 2"
read selectedAccount

echo Starting Guild Wars 2 with account $(echo ${accounts[selectedAccount]} | cut -d '-' -f 2 | cut -d '.' -f 1)

# copy selected file to appdata
cp ${accounts[selectedAccount]} /home/deck/.steam/steam/steamapps/compatdata/1284210/pfx/drive_c/users/steamuser/AppData/Roaming/Guild\ Wars\ 2/Local.dat

# start the game with autologin and exit
./run-gw2-portal.sh "-autologin"
exit 0