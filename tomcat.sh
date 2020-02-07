#!/bin/bash
sudo apt-get update 
sudo apt-get install openjdk-8-jdk -y
wget http://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.49/bin/apache-tomcat-8.5.50.tar.gz
tar -xvf apache-tomcat-8.5.50.tar.gz
cd apache-tomcat-8.5.50/bin
sh startup.sh
echo
echo 
echo "edit context.xml & tomcat-users.xml & service.xml and restart tomcat again"