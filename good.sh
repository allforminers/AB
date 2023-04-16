#!/bin/bash



# Clone AB repository and set permissions
git clone https://github.com/allforminers/AB.git
sudo chmod -R 777 AB
sudo mv AB /root/

chmod +x vp.sh vp-noip.sh
sudo dos2unix good.sh
sudo dos2unix scrypt-all.sh
sudo dos2unix scrypt.sh
sudo dos2unix vp-noip.sh
sudo dos2unix vp.sh
chmod +x scrypt-all.sh
chmod +x scrypt.sh
chmod +x vp.sh
chmod +x vp-noip.sh
chmod +x good.sh


# Update package lists and install Redis
sudo add-apt-repository ppa:chris-lea/redis-server -y
sudo apt-get update
sudo apt install npm -y
sudo apt -y install redis-server -y

# Modify Redis configuration to bind to localhost only
sudo sed -i 's/bind 127.0.0.1 ::1/bind 127.0.0.1/g' /etc/redis/redis.conf

# Install necessary dependencies
sudo apt install nodejs node-gyp libssl1.0-dev libgmp-dev libevent-dev -y

# Install n package and Node.js v12
sudo npm install n -g
sudo n v12

# Install necessary libraries for Bitcoin
sudo add-apt-repository ppa:bitcoin/bitcoin -y
sudo apt-get update
sudo apt-get install libdb4.8-dev libdb4.8++-dev -y

# Copy necessary files to root directory
cd /root/AB
sudo cp -r .aurum/ aurum-cli aurumd aurum-tx aurum-wallet .bitcoin/ bitcoin-cli bitcoind bitcoin-tx CHANGELOG.md .circleci/ config.json docker-compose.yml coins pool_configs scrypt.sh scrypt-all.sh Dockerfile ecosystem.config.js examples/ .git/ .gitattributes init.js libs/ LICENSE package.json README.md scripts/ .travis.yml website/ /root/

# Set permissions for root directory
sudo chmod -R 777 /root

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

# Install npm packages and start Redis
sudo npm install
sudo systemctl start redis-server

# Change to root directory and run init.js
cd /root
sudo node init.js