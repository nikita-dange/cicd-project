#!/bin/bash

echo "Deployment started"

cd /opt/codedeploy-agent/deployment-root/*/*/deployment-archive

# Install Apache (Ubuntu)
sudo apt update -y
sudo apt install apache2 -y

# Start Apache
sudo systemctl start apache2
sudo systemctl enable apache2

# Clean old files
sudo rm -rf /var/www/html/*

# Copy new files
sudo cp -r * /var/www/html/

echo "Deployment completed"
