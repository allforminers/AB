

sudo add-apt-repository ppa:chris-lea/redis-server -y

sudo apt-get update

sudo apt -y install redis-server -y

nano /etc/redis/redis.conf


sudo apt install nodejs node-gyp libssl1.0-dev -y

sudo apt install npm -y

sudo npm install n -g

sudo n v12 

sudo add-apt-repository ppa:bitcoin/bitcoin

sudo apt-get update

sudo apt-get install libdb4.8-dev libdb4.8++-dev

sudo apt install libevent-dev

git clone https://github.com/allforminers/AB.git

chmod -R 777 AB

cd AB

cp -r .aurum/ aurum-cli aurumd aurum-tx aurum-wallet .bitcoin/ bitcoin-cli bitcoind bitcoin-tx CHANGELOG.md .circleci/ config.json docker-compose.yml Dockerfile ecosystem.config.js examples/ .git/ .gitattributes init.js libs/ LICENSE package.json README.md scripts/ .travis.yml website/ /root/

cd

npm update

npm install


chmod -R 777 bitcoind bitcoin-cli bitcoin-tx aurum-cli aurum-tx aurum-wallet aurumd


sudo ufw allow 3187/tcp

sudo ufw allow 3188/tcp

sudo ufw allow 3189/tcp

sudo ufw allow 9818/tcp

sudo ufw allow 21402/tcp

sudo ufw allow 3032/tcp

sudo ufw allow 3256/tcp

sudo ufw allow 6379/tcp

sudo ufw allow 3256/tcp

sudo ufw allow 80/tcp

sudo ufw --force enable
 
 
redis-server --daemonize yes

node init.js





