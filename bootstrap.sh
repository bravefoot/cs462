#!/bin/bash
sed -i -e 's/archive.ubuntu.com\|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list
sed -i 's/us-east-1\.ec2\.//g' /etc/apt/sources.list
apt-get update -y
apt-get install -y apache2
apt-get install -y unzip
wget https://github.com/bravefoot/cs462/archive/master.zip
unzip master.zip
rm /var/www/index.html
cp cs462-master/name.txt /var/www/index.html