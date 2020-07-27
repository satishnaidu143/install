#!/bin/bash
sudo apt install mysql-server
sudo mysql_secure_installation
sudo mysql
SELECT user,authentication_string,plugin,host FROM mysql.user;
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Sravi@143';
FLUSH PRIVILEGES;
SELECT user,authentication_string,plugin,host FROM mysql.user;
sudo mysql -u root -p
CREATE DATABASE sonarqube;
CREATE USER sonarqube@'localhost' IDENTIFIED BY 'Sravi@143';
GRANT ALL ON sonarqube.* to sonarqube@'localhost';