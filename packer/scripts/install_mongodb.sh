#!/bin/bash -e
sleep 10
wget -qO - http://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sleep 10
apt-get update
apt-get install -y mongodb-org
systemctl start mongod
systemctl enable mongod
