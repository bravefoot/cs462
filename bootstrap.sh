#!/bin/bash
#wget https://github.com/bravefoot/cs462/archive/master.zip
#unzip master.zip
#sh ./cs462-master/bootstrap.sh
rm /var/www/index.html
cp cs462-master/name.html /var/www/html/index.html
cp cs462-master/cougar.byu /var/www/html/cougar.byu
mkdir /var/www/html/cgi-bin
cp cs462-master/cgi-bin/echo.py /var/www/cgi-bin/echo.py
chmod 755 /var/www/cgi-bin/echo.py