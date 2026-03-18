#!/bin/bash

echo "Deployment started"

# Go to deployment directory
cd /home/ec2-user

# Install Apache (if not installed)
sudo yum update -y
sudo yum install -y httpd

# Start Apache
sudo systemctl start httpd
sudo systemctl enable httpd

# Clean old files
sudo rm -rf /var/www/html/*

# Copy new files
sudo cp -r * /var/www/html/

echo "Deployment completed"
