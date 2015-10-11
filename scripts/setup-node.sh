#!/usr/bin/env bash

echo "Going to install Node (and npm)"

apt-get -y install wget build-essential

wget http://nodejs.org/dist/v0.9.9/node-v0.9.9.tar.gz
tar -xvf node-v0.9.9.tar.gz
cd node-v0.9.9
./configure
make
sudo make install
echo "Node and npm install complete"

echo "Location of Node"
which node
echo "Node version: "
node -v

echo "Location of npm"
which npm
echo "npm version"
npm -v

# Install expressJS
# npm install express --save

# required modules
