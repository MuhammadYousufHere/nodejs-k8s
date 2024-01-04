#!/bin/bash -ex

sudo apt update
sudo apt install curl -y

# Get the latest version of node repository
curl -fsSl https://deb.nodesource.com/setup_lts.x | sudo -E bash

# Install nodejs

sudo apt-get install nodejs

node -v

npm -v

sudo npm install -g yarn

# Install git 

sudo apt-get install git -y

git --version

sudo npm install pm2@latest -g

pm2 -v

git clone https://github.com/MuhammadYousufHere/nodejs-k8s


cd nodejs-k8s

git checkout main

sudo chmod -R 755 .

yarn install

pm2 start index.js --name 'node-app'

#

#!/bin/bash
# Update the system and install Node.js and Git
sudo apt update
sudo apt install -y nodejs npm git

# Create a directory for your application (replace <app_directory> with your desired directory name)
mkdir /<app_directory>
cd /<app_directory>

# Clone your GitHub repository (replace <github_username> and <repository_name> with your GitHub username and repository name)
git clone https://<github_username>:<github_token>@github.com/<github_username>/<repository_name>.git .

# Install application dependencies (if applicable)
npm install

# Start your Node.js application (replace <start_command> with the actual command to start your Node.js app)
npm start

