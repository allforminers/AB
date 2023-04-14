#!/bin/bash

# Add Redis repository
sudo add-apt-repository ppa:chris-lea/redis-server -y

# Update package lists
sudo apt-get update

# Install Redis server
sudo apt-get install redis-server -y

# Update Redis configuration to bind to 127.0.0.1
sudo sed -i 's/bind 127.0.0.1 ::1/bind 127.0.0.1/g' /etc/redis/redis.conf

# Install necessary dependencies for AB
sudo apt install nodejs node-gyp libssl1.0-dev npm libdb4.8-dev libdb4.8++-dev libevent-dev libgmp-dev -y

# Install n package for Node.js version management
sudo npm install n -g

# Install Node.js v12 with n
sudo n v12

# Add Bitcoin repository
sudo add-apt-repository ppa:bitcoin/bitcoin -y

# Update package lists
sudo apt-get update

# Install necessary dependencies for AB and Bitcoin
sudo apt-get install libdb4.8-dev libdb4.8++-dev libevent-dev libgmp-dev -y

# Clone AB repository from GitHub
git clone https://github.com/allforminers/AB.git

# Set permissions for AB folder
chmod -R 777 AB

# Change directory to AB
cd AB

# Copy necessary files and folders to root directory
cp -r .aurum/ aurum-cli aurumd aurum-tx aurum-wallet .bitcoin/ bitcoin-cli bitcoind bitcoin-tx CHANGELOG.md .circleci/ config.json docker-compose.yml coins pool_configs scrypt.sh scrypt-all.sh Dockerfile ecosystem.config.js examples/ .git/ .gitattributes init.js libs/ LICENSE package.json README.md scripts/ .travis.yml website/ /root/

# Change directory to root directory
cd

# Set permissions for root directory
chmod -R 777 /root

# Remove node_modules folder if it exists
rm -r node_modules/ || true

# Update npm
sudo npm update

# Install necessary npm packages
sudo npm install

# Start Redis server in daemon mode
redis-server --daemonize yes

# Configure firewall
sudo apt-get install ipset iptables -y
sudo ufw --force disable
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw allow 80/tcp
sudo ufw allow 17117/tcp
sudo ufw allow 3008/tcp
sudo ufw allow 3032/tcp
sudo ufw allow 3187/tcp
sudo ufw allow 3188/tcp
sudo ufw allow 3189/tcp
sudo ufw allow 3256/tcp
sudo ufw allow 6379/tcp
sudo ufw allow 9818/tcp
sudo ufw allow 21402/tcp
sudo ufw enable