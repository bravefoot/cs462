sed -i -e 's/archive.ubuntu.com\|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list
sed -i 's/us-east-1\.ec2\.//g' /etc/apt/sources.list
apt-get update
apt-get install apache2
