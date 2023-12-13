#!/bin/bash
R="\e[31m"
G="\e[32m"
NUMBER=2
if [ $NUMBER -gt 1 ]
then
    echo -e "$G TRUE"
else 
    echo -e "$R FALSE"
fi

