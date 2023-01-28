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
  cp ./test/Local.dat "./$fileName"

  echo "$fileName file generated"
fi
