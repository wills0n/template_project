#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install gnupg2

echo "Start install Ruby"
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.4.1
rvm use 2.4.1 --default
gem install bundler -V 
ruby -v
bundler -v
echo "End install Ruby"
