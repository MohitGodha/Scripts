#!/bin/bash
sudo apt-get update

sudo apt-get install apache2

sudo apt-get install mysql-server

sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql php-mbstring php7.0-mbstring php-gettext

sudo apt-get install phpmyadmin

sudo service apache2 restart

sudo /etc/init.d/apache2 restart
