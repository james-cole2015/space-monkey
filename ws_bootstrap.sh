#!/bin/bash
apt-get update -y
apt-get install -y apache2
systemctl start apache2
git clone https://github.com/james-cole2015/wrecked-machine.git
cd wrecked-machine
cp -r * /var/www/html
systemctl restart apache2
