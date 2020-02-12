#!/bin/bash
sudo apt-get update 
sudo apt-get install openjdk-8-jdk -y
wget http://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.49/bin/apache-tomcat-8.5.50.tar.gz
tar -xvf apache-tomcat-8.5.50.tar.gz
cd apache-tomcat-8.5.50/bin
sh startup.sh
echo
echo 
echo "edit context.xml==> vi apache-tomcat-8.5.50/webapps/host-manager/META-INF/contex.xml
.*

tomcat-users.xml==> vi apache-tomcat-8.5.50/conf/tomcat-users.xml

<?xml version='1.0' encoding='utf-8'?>
<tomcat-users>
  <role rolename="manager-gui"/>
  <user username="tomcat" password="Tomcat" roles="manager-gui, manager-script, manager-script, manager-status"/>
</tomcat-users>


 & service.xml==> vi apache-tomcat-8.5.50/conf/service.xml
 
  and restart tomcat again"