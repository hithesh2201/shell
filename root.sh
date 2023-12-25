#!/bin/bash
ID=$(id -u)
if [ "$ID" != 0 ]
then
    echo "needs sudo access"
    exit 1
else
    echo "sudo"
fi