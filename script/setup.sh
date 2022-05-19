#!/bin/bash

# Sets up an ODK webmap server.

# Assumes a non-root sudo user called webmap.

echo please enter the domain name of your server
read domain_name
echo
echo Please enter an email address for certificate renewal information
read email
echo
echo Updating and upgrading the OS
sudo apt -y update
sudo apt -y upgrade



  echo installing nginx
if ! type "nginx"; then
    sudo apt install -y nginx
else echo Nginx seems to be already installed
fi

echo installing Certbot
if ! type "certbot"; then
    sudo apt install -y certbot python3-certbot-nginx
else echo Certbot seems to be already installed
fi



  # Move webmap files in nginx folder
  # This is temporary

  sudo cp app/index.html /var/www/html/
  sudo cp app/index.js /var/www/html/
  sudo cp app/static/styles.css /var/www/html/
  sudo cp -r app/data /var/www/html/
  sudo cp -r app/Leaflet.markercluster-1.4.1 /var/www/html/
  sudo cp -r app/css /var/www/html/
  
  echo Procuring a certificate for the site from LetsEncrypt using Certbot
sudo certbot --nginx -n --agree-tos --redirect -m $email -d $domain_name -d www.$domain_name
