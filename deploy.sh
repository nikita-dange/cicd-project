#!/bin/bash
sudo apt update -y
sudo apt install apache2 -y
sudo systemctl start apache2
sudo cp -r ./* /var/www/html/
sudo systemctl restart apache2
