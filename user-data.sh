#!/bin/bash -ex

sudo apt update
sudo apt install curl -y

# Get the latest version of node repository
curl -fsSl https://deb.nodesource.com/setup_lts.x | sudo -E bash

# Install nodejs

sudo apt-get install nodejs

node -v
npm -v

# Install git 

sudo apt-get install git -y

git --version

sudo npm install pm2@latest -g

pm2 -v

git clone https://github.com/MuhammadYousufHere/nodejs-k8s

