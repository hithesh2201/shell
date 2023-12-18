#!/bin/bash

DIR="/tmp/shell_script_logs"
CHECK() {
    if [ $? -eq 0 ]
    then
        echo "$L successfully deleted"
    fi
}
if [ ! -d $DIR ]
then
    echo "we dont have that shell_script_logs directory "
    exit 1
fi

LOGFILE=$(find $DIR -type f -mtime +14)

while IFS= read -r line
do
  L=$(find $line -type f -mtime +14 -name "*.log")
  rm -rf "$L"
  CHECK
done <<< "$LOGFILE"
