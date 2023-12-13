#!/bin/bash
ID=$UID
if [ $ID -ne 0 ] 
then
    echo "ERROR:Not a root user"
    exit 1
else
    echo "You are a root user"
fi
