#!/bin/bash

# Set up a server

  sudo apt install nginx -y


  # Move webmap files in nginx folder
  # This is temporary

  sudo cp app/index.html /var/www/html/
  sudo cp app/index.js /var/www/html/
  sudo cp app/static/styles.css /var/www/html/
  sudo cp -r app/data /var/www/html/
  sudo cp -r app/Leaflet.markercluster-1.4.1 /var/www/html/
  