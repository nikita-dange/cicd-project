#!/bin/bash

echo "Deployment started"

# Apache install (if not installed)
sudo yum install -y httpd

# Start Apache server
sudo systemctl start httpd
sudo systemctl enable httpd

# Copy files
sudo cp -r * /var/www/html/

echo "Deployment completed"
