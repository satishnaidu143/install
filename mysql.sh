#!/bin/bash
sudo apt install mysql-server -y
sudo mysql_secure_installation << ENDX
y
2
Sravi@143
Sravi@143
y
y
y
y
y
ENDX
sudo mysql
SELECT user,authentication_string,plugin,host FROM mysql.user;
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Sravi@143';
FLUSH PRIVILEGES;
SELECT user,authentication_string,plugin,host FROM mysql.user;
exit
sudo mysql -u root -p << ENDX
sravi@143
ENDX
CREATE DATABASE sonarqube;
CREATE USER sonarqube@'localhost' IDENTIFIED BY 'Sravi@143';
GRANT ALL ON sonarqube.* to sonarqube@'localhost';
exit