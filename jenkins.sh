#!/bin/bash
sudo apt-get update
sudo apt-get install openjdk-8-jdk -y
sudo apt-get install maven -y
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'deb https://pkg.jenkins.io/debian binary/ > /etc/apt/sources.list'
sudo apt-get update
sudo apt-get install jenkins -y
sleep 10s
echo "find the jenkins password"
echo
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
echo
echo