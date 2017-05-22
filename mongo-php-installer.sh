#!/bin/bash
echo "Importing mongo public key"
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
echo "Creating mongodb-enterprise.list file"
echo "deb [ arch=amd64 ] http://repo.mongodb.com/apt/ubuntu precise/mongodb-enterprise/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-enterprise.list
echo "updating respositories"
apt-get update
echo "Installing mongodb"
apt-get install -y mongodb-enterprise
echo "Initializing mongo service"
service mongod start
echo "Installing pkg-config"
apt-get install pkg-config
echo "Installing mongodb php extension"
pecl install mongodb
