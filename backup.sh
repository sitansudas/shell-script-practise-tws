#!/bin/bash

<<info
This shell script will take periodic backups


eg.
./backup.sh <source> <destination>
let
source=/home/ubuntu/scripts
destination=/home/ubuntu/backups
info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H:%M')

zip -r "$dest/backup-$timestamp.zip" $src &>/dev/null

aws s3 sync $dest s3://backup-practise-shell-script

echo "Backup Completed...And Uploaded to s3 ..."
