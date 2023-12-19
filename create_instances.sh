#!/bin/bash
INSTANCES_NAME=("mongodb" "mysql" "redis" "rabbitmq" "catalogue" "user" "cart" "shipping" "payments")
INSTANCE_TYPE=""

for i in INSTANCES_NAME[@]
do
    echo "$i"
done
# aws ec2 run-instances --image-id ami-xxxxxxxx --count 1 --instance-type $INSTANCE_TYPE  --security-group-ids sg-xxxxxxxx 