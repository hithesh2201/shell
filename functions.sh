#!/bin/bash
CHECK(){
    if [ $? -ne 0 ] 
    then
        echo "$1 not installed successfully"
        exit 1
    else
        echo "$1 installed successfully"
    fi
}
ID=$UID
if [ $ID -ne 0 ] 
then
    echo "ERROR:Not a root user"
    exit 1
else
    echo "You are a root user"
fi

yum install mysql -y &>>temp.log
CHECK "MYSQL"

yum install git -y &>>temp.log
CHECK "GIT"