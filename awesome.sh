#!/bin/bash

IS_NUM="^[0-9]+"

if ! [ ${1// } ] || [ "$1" == "--help" ] || [ "$1" =~ $IS_NUM ]
then
  echo "Usage: { ./awesome.sh size }"
else
  ls -l | awk -v size="$1" '$5 > size {print $9;}'
fi