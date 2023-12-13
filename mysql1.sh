#!/bin/bash
ID=$UID
if [ $ID -ne 0 ] 
then
    echo "ERROR:Not a root user"
    exit 1
else
    echo "You are a root user"
fi

yum install mysql -y

if [ $? -ne 0 ] 
then
    echo "Mysql not installed successfully"
    exit 1
else
    echo "Mysql installed successfully"
fi