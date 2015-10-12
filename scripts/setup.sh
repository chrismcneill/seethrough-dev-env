#!/usr/bin/env bash

ln -sf /usr/share/zoneinfo/Europe/London /etc/localtime

#Update Centos
apt-get -y update
apt-get install dos2unix -q -y
apt-get -y install wget build-essential

# Fix scripts to make sure they are readable
find /vagrant/scripts -type f -exec dos2unix {} \;

su - vagrant /vagrant/scripts/setup-git.sh
su - vagrant /vagrant/scripts/setup-java.sh
su - vagrant /vagrant/scripts/setup-node.sh
su - vagrant /vagrant/scripts/setup-sublime.sh
su - vagrant /vagrant/scripts/setup-misc.sh
