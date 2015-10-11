#!/usr/bin/env bash

echo "Going to install Java"

# Download Java 7_79 from oracle
wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.tar.gz

# Unpack JDK
mkdir /opt/jdk
tar -zxf jdk-7u79-linux-x64.tar.gz -C /opt/jdk

# Set Oracle JDK as the default JVM
update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.7.0_79/bin/java 100
update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.7.0_79/bin/javac 100

echo "Java -version"
java -version

echo "Java install complete"
