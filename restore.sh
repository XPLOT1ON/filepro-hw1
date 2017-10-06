#!/bin/bash

WORK_TO_RECOVER="$1"
BACKUP_DIR="/subm/u5780665/backups"
CURRENT_DIR="$(pwd)/recovered"

DIR=`ls /subm/u5780665/backups | grep "$WORK_TO_RECOVER"_ | sort -d | tail -n 1`
if ! [ "${DIR// }" ]
then
  echo "Specified folder does not exist"
  exit 0
fi

DIR_TO_COPY="$BACKUP_DIR/$WORK_TO_RECOVER"

if [ -d "$CURRENT_DIR" ]
then
  rm -rf "$CURRENT_DIR"
fi

mkdir -p $CURRENT_DIR/$DIR
cp -r "$BACKUP_DIR/$DIR" "$CURRENT_DIR"
cd "$CURRENT_DIR"
mv "$DIR" "$WORK_TO_RECOVER"
echo "$WORK_TO_RECOVER has been restored to ./recovered/$WORK_TO_RECOVER"
