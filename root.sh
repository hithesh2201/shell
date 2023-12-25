#!/bin/bash
ID= $(id -u)
if [ $ID != 0 ]
then
    echo "needs sudo access"
else
    echo "sudo"
fi