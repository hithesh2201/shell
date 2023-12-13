#!/bin/bash

check() {
    if [ $? -ne 0 ]; then
        echo "$1 not installed successfully"
        exit 1
    else
        echo "$1 installed successfully"
    fi
}

if [ $UID -ne 0 ]; then
    echo "ERROR: Not a root user"
    exit 1
else
    echo "You are a root user"
fi

yum install mysql gitt -y &>>temp.log
check "MYSQL"
check "GIT"
