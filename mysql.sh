#!/bin/bash

# Install MySQL server
sudo yum install mysql-server -y

# Start MySQL service
sudo systemctl start mysqld

# Enable MySQL to start on boot
sudo systemctl enable mysqld
