
#### 1) Downloading & Installing

Clone the repository and run `npm update` for all the dependencies to be installed:

```bash
sudo apt-get update
sudo apt-get upgrade
sudo wget -L https://raw.githubusercontent.com/LUX-Core/lux/master/depends/install-dependencies.sh | sudo chmod +x install-dependencies.sh; sudo sh install-dependencies.sh
sudo apt-get install build-essential libsodium-dev npm libboost-all-dev libgmp3-dev
sudo apt install nodejs node-gyp libssl1.0-dev -y
sudo apt install npm -y
sudo npm install n -g
sudo n v12

sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install libdb4.8-dev libdb4.8++-dev


sudo apt purge nodejs npm -y


sudo ln -sf /usr/local/bin/node /usr/bin/node 
sudo ln -sf /usr/local/bin/npm /usr/bin/npm 

sudo add-apt-repository ppa:chris-lea/redis-server -y
sudo apt-get update
sudo apt -y install redis-server -y
nano /etc/redis/redis.conf
or
sudo apt update
sudo apt install redis-server
#change this line
bind 127.0.0.1 ::1
to this change
bind 127.0.0.1
#save file ctrl+x


git clone https://github.com/allforminers/JNOMPX-NoScreen.git jnompx
cd jnompx
npm update
npm install

node init.js

if error redis use this 

redis-server
or
redis-server --daemonize yes
```

```bash
sudo apt-get install build-essential libsodium-dev npm
sudo npm install n -g
sudo n v9

```



