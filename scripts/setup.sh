#!/usr/bin/env bash

ln -sf /usr/share/zoneinfo/Europe/London /etc/localtime

#Update Centos
apt-get -y update
apt-get install dos2unix -q -y

# Fix scripts to make sure they are readable
find /vagrant/scripts -type f -exec dos2unix {} \;

su - vagrant /vagrant/scripts/setup-java.sh
