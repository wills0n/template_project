#!/usr/bin/env bash
sudo apt-get update

echo "Start install Ruby"
sudo apt-get update
sudo apt install -y ruby-full ruby-bundler build-essential
echo "End install Ruby"

echo "Start install MongoDB"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
sudo bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list'
sudo apt update
sudo apt install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod
echo "End install MongoDB"

echo "Start clone application & install"
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
puma -d
echo "End install application"