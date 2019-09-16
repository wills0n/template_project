#!/usr/bin/env bash
echo "Start install MongoDB"
sudo wget -qO - https://www.mongodb.org/static/pgp/server-3.2.asc | sudo apt-key add -
sudo echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt update
sudo apt install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod
echo "End install MongoDB"
