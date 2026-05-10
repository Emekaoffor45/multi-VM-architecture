#!/bin/bash
echo "Setting up web02 with Event Invitation site..."
sudo apt-get update -y
sudo apt-get install -y apache2 unzip

# Move to web directory and clean it
cd /var/www/html/
sudo rm -rf index.html

# Download and deploy template
echo "Downloading template..."
sudo wget -q https://www.tooplate.com/zip-templates/2152_event_invitation.zip
sudo unzip -o 2152_event_invitation.zip
sudo mv 2152_event_invitation/* .

# Cleanup
sudo rm -rf 2152_event_invitation 2152_event_invitation.zip
sudo systemctl restart apache2
echo "web02 is live at 192.168.56.12"

