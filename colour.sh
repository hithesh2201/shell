#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
NORMAL="\e[0m"

if [ "$1" -gt 1 ]
then
    echo -e "$G TRUE"
else 
    echo -e "$R FALSE"
fi

