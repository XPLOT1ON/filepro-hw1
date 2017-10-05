#!/bin/bash

# if [[ condition ]]; then
#   #statements
# fi

CURRENT_DATE=$(date +%Y-%m-%d"_"%H:%M:%S)
BASE_PATH=$(basename $1)
BACKUP_DIR="/subm/u5780665/backups"
BACKUP_PATH="$BACKUP_DIR/$BASE_PATH"_"$CURRENT_DATE"
mkdir -p $BACKUP_DIR
cp -r "$1" $BACKUP_DIR
mv $BACKUP_DIR/$BASE_PATH $BACKUP_PATH
echo "Backup $BASE_PATH completed successfully."
