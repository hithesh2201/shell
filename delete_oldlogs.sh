#!/bin/bash

DIR="/tmp/shell_script_logs"

if [ ! -d $DIR ]
then
    echo "we dont have that shell_script_logs directory "
    exit 1
fi

LOGFILE=$(find $DIR -type f -mtime +14)

while IFS= read -r line
do
  rm -rf "$line"
done <<< "$LOGFILE"
