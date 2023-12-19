#!/bin/bash
INSTANCES_NAME=("mongodb" "mysql" "redis" "rabbitmq" "catalogue" "user" "cart" "shipping" "payments")
INSTANCE_TYPE=""

for i in "${INSTANCES_NAME[@]}"
do
    if [ $i = "mongodb" ] | [ $i = "mysql" ] |[ $i = "shipping" ]
    then
        INSTANCE_TYPE="t2.small"
    else
        INSTANCE_TYPE="t2.micro"
    fi
    PRIVATE_IPADDRESS=$(aws ec2 run-instances --image-id ami-03265a0778a880afb --count 1 --instance-type $INSTANCE_TYPE  --security-group-ids sg-0f0225d73ad9227cc)
    echo "$i : $PRIVATE_IPADDRESS" 
done

# aws ec2 run-instances --image-id ami-xxxxxxxx --count 1 --instance-type $INSTANCE_TYPE  --security-group-ids sg-xxxxxxxx 