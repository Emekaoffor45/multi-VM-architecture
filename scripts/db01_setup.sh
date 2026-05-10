#!/bin/bash
echo "Setting up db01 (Database)..."
sudo yum update -y
sudo yum install -y mariadb-server
sudo systemctl start mariadb
sudo systemctl enable mariadb

# Optional: Create a test database
sudo mysql -e "CREATE DATABASE IF NOT EXISTS devops_db;"
echo "db01 is ready with MariaDB."