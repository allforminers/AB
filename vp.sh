#!/bin/bash

# Create 8GB swap
sudo fallocate -l 8G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

# Update package lists and install Redis
sudo add-apt-repository ppa:chris-lea/redis-server -y
sudo apt-get update
sudo apt install npm -y
sudo apt -y install redis-server -y

# Modify Redis configuration to bind to localhost only
sudo sed -i 's/bind 127.0.0.1 ::1/bind 127.0.0.1/g' /etc/redis/redis.conf

# Install necessary dependencies
sudo apt install nodejs node-gyp libssl1.0-dev libgmp-dev libevent-dev npm -y

# Install n package and Node.js v12
sudo npm install n -g
sudo n v12

# Install necessary libraries for Bitcoin
sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install libdb4.8-dev libdb4.8++-dev

# Clone AB repository and set permissions
git clone https://github.com/allforminers/AB.git
sudo mv AB /root/
sudo chown -R root:root /root/AB/
cd /root/AB/
chmod -R 777 .aurum/ aurum-cli aurumd aurum-tx aurum-wallet .bitcoin/ bitcoin-cli bitcoind bitcoin-tx CHANGELOG.md .circleci/ config.json docker-compose.yml coins pool_configs scrypt.sh scrypt-all.sh Dockerfile ecosystem.config.js examples/ .git/ .gitattributes init.js libs/ LICENSE package.json README.md scripts/ .travis.yml website/

# Remove any existing node_modules and update npm packages
sudo rm -rf /root/AB/node_modules
sudo npm update

# Allow necessary ports through firewall
sudo ufw allow 3187/tcp
sudo ufw allow 3188/tcp
sudo ufw allow 3189/tcp
sudo ufw allow 9818/tcp
sudo ufw allow 21402/tcp
sudo ufw allow 3032/tcp
sudo ufw allow 3256/tcp
sudo ufw allow 6379/tcp
sudo ufw allow 3256/tcp
sudo ufw allow 3008/tcp
sudo ufw allow 80/tcp
sudo ufw allow 17117/tcp
sudo ufw allow 6379/tcp

# Disable firewall and allow SSH connections
sudo ufw --force disable
sudo ufw allow ssh

# Install npm packages
sudo npm install 

# Start Redis server
sudo redis-server --daemonize yes

# Change to root directory and run init.js
cd /root/
node init.js
