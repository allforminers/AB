***********************************
apt install git -y

sudo apt-get install dos2unix -y

git clone https://github.com/allforminers/AB.git

cd AB



***********************************

chmod +x vp.sh vp-noip.sh

dos2unix scrypt-all.sh

dos2unix scrypt.sh

dos2unix vp-noip.sh

dos2unix vp.sh

chmod +x scrypt-all.sh

chmod +x scrypt.sh

chmod +x vp.sh

chmod +x vp-noip.sh


sudo bash ./vp.sh

**********

sudo ./scrypt-all.sh

sudo ./vp-noip.sh

**********




***********************************

sudo add-apt-repository ppa:chris-lea/redis-server -y

sudo apt-get update

sudo apt -y install redis-server -y

nano /etc/redis/redis.conf

***********************************


sudo apt install nodejs node-gyp libssl1.0-dev -y

sudo apt install npm -y

sudo npm install n -g

sudo n v12 

sudo add-apt-repository ppa:bitcoin/bitcoin

sudo apt-get update

sudo apt-get install libdb4.8-dev libdb4.8++-dev

sudo apt install libevent-dev -y

git clone https://github.com/allforminers/AB.git

chmod -R 777 AB

cd AB

cp -r .aurum/ aurum-cli aurumd aurum-tx aurum-wallet .bitcoin/ bitcoin-cli bitcoind bitcoin-tx CHANGELOG.md .circleci/ config.json docker-compose.yml coins pool_configs scrypt.sh scrypt-all.sh Dockerfile ecosystem.config.js examples/ .git/ .gitattributes init.js libs/ LICENSE package.json README.md scripts/ .travis.yml website/ /root/

cd

chmod -R 777 /root

rm -r node_modules/

sudo apt-get install libgmp-dev -y

npm update

npm install

redis-server --daemonize yes

or

npm install multi-hashing



***********************************

DDos firewall

sudo apt-get install fail2ban -y

sudo systemctl start fail2ban

sudo systemctl enable fail2ban

```
nano /etc/fail2ban/jail.d/ddos.conf
```

```
[http-get-dos]
enabled = true
port = http,https
filter = http-get-dos
logpath = /var/log/nginx/access.log
maxretry = 300
findtime = 30
bantime = 600
```


ctrl-x

```
nano /etc/fail2ban/filter.d/http-get-dos.conf

```

```

[Definition]
failregex = ^<HOST> -.*"(GET|POST).*
ignoreregex =

```

sudo nano /etc/fail2ban/jail.local

```

[DEFAULT]
ignoreip = 127.0.0.1/8 35.233.127.215 35.230.107.13 34.77.152.108 34.82.223.150
bantime  = 3600
findtime = 600
maxretry = 3

[sshd]
enabled = true

[apache]
enabled = true

ctrl-x

```

***********************************

```

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


firewall

sudo ufw --force enable




check status

sudo ufw status


 

node init.js

```



after reboot server 

must 

redis-server --daemonize yes

```

apt install ipset

sudo apt-get update
sudo apt-get install ipset iptables


chmod +x scrypt.sh

chmod +x scrypt-all.sh

sudo apt-get update
sudo apt-get install dos2unix

dos2unix scrypt-all.sh

dos2unix scrypt.sh

chmod +x scrypt-all.sh

chmod +x scrypt.sh

sudo ./scrypt-all.sh

or

sudo ./scrypt.sh

```

DONE 


