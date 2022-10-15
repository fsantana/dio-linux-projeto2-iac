#!/bin/bash
echo "Update and instal dependencies"
apt-get update && apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
apt-get install wget -y
cd /tmp
echo "Clear and reinstall site"
rm main.zip
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
rm -rf /var/www/html/*
mv -f /tmp/linux-site-dio-main/* /var/www/html
rm main.zip
rm -rf /tmp/linux-site-dio
echo "Apache start"
service apache2 start
