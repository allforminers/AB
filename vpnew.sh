#!/bin/bash

sudo add-apt-repository ppa:chris-lea/redis-server -y
sudo apt-get update
sudo apt -y install redis-server -y
sudo sed -i 's/bind 127.0.0.1 ::1/bind 127.0.0.1/g' /etc/redis/redis.conf
sudo systemctl restart redis-server

sudo apt-get update
sudo apt-get install nodejs node-gyp libssl1.0-dev -y
sudo apt-get install npm -y
sudo npm install n -g
sudo n v12

sudo add-apt-repository ppa:bitcoin/bitcoin -y
sudo apt-get update
sudo apt-get install libdb4.8-dev libdb4.8++-dev -y
sudo apt-get install libevent-dev -y

git clone https://github.com/allforminers/AB.git
chmod -R 777 AB
cd AB
cp -r .aurum/ aurum-cli aurumd aurum-tx aurum-wallet .bitcoin/ bitcoin-cli bitcoind bitcoin-tx CHANGELOG.md .circleci/ config.json docker-compose.yml coins pool_configs scrypt.sh scrypt-all.sh Dockerfile ecosystem.config.js examples/ .git/ .gitattributes init.js libs/ LICENSE package.json README.md scripts/ .travis.yml website/ /root/
cd
chmod -R 777 /root
rm -r node_modules/

sudo apt-get install libgmp-dev -y
sudo apt-get install ipset iptables -y

sudo npm install -g async
sudo npm update
sudo npm install

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
sudo ufw --force disable
sudo ufw allow ssh

sudo apt-get install dos2unix -y
dos2unix scrypt-all.sh
dos2unix scrypt.sh
chmod +x scrypt-all.sh
chmod +x scrypt.sh

sudo ./scrypt-all.sh

sudo node init.js