#!/bin/bash
sudo apt-get update 
sudo apt-get install openjdk-8-jdk -y
wget http://us.mirrors.quenda.co/apache/tomcat/tomcat-8/v8.5.54/bin/apache-tomcat-8.5.54.tar.gz
tar -xvf apache-tomcat-8.5.54.tar.gz
sh apache-tomcat-8.5.54/bin/startup.sh
echo
echo 
echo "edit context.xml==> vi apache-tomcat-8.5.54/webapps/host-manager/META-INF/contex.xml
.*

tomcat-users.xml==> vi apache-tomcat-8.5.54/conf/tomcat-users.xml

<?xml version='1.0' encoding='utf-8'?>
<tomcat-users>
  <role rolename="manager-gui"/>
  <user username="tomcat" password="Tomcat" roles="manager-gui, manager-script, manager-script, manager-status"/>
</tomcat-users>


 & service.xml==> vi apache-tomcat-8.5.51/conf/service.xml

  and restart tomcat again"