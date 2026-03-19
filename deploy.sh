#!/bin/bash


sudo apt update -y
sudo apt install apache2 -y

ा
sudo systemctl start apache2
sudo systemctl enable apache2

ा
sudo rm -rf /var/www/html/*


sudo cp -r /home/ubuntu/my-app/* /var/www/html/

ा
sudo chown -R www-data:www-data /var/www/html/
