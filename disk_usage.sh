#!/bin/bash

# Set the threshold for disk space usage in percentage
threshold=20

# Set the email address where the notification will be sent
email_address="hithesh2201"

# Get the current disk space usage percentage
disk_space=$(df -h / | awk 'NR==2 {print $5}' | cut -d'%' -f1)

# Check if disk space exceeds the threshold
if [ "$disk_space" -gt "$threshold" ]; then
  # Prepare the email message
  subject="Disk Space Alert - $disk_space% Used"
  message="Disk space usage on server exceeds the threshold. Current usage: $disk_space%."

  # Send the email using the 'mail' command (make sure the 'mail' command is installed)
  echo "$message" | mail -s "$subject" "$email_address"

  # Optionally, you can log the event
  echo "$(date): Disk space alert - $disk_space% used. Email sent to $email_address." >> /var/log/disk_space_alert.log
fi
