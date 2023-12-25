#!/bin/bash
ID= $(id -u)
if [ $ID -neq 0 ]
then
    echo "needs sudo access"
else
    echo "sudo"
fi