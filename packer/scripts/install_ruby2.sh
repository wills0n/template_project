#!/usr/bin/env bash
echo "Start install Ruby"
sudo apt-get update
sudo apt install -y ruby-full ruby-bundler build-essential
echo "End install Ruby"