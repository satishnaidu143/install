#!/bin/bash
sudo apt-get update
sudo apt-get install openjdk-8-jdk -y
sudo apt-get install maven -y
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins -y
sudo passwd jenkins << ENDX
1234
1234

ENDX

sudo sh -c "echo \"jenkins ALL=(ALL:ALL) NOPASSWD: ALL\" >> /etc/sudoers"
sudo sed -i "/^[^#]*PasswordAuthentication[[:space:]]no/c\PasswordAuthentication yes" /etc/ssh/sshd_config
sudo service sshd restart
echo
echo " finding jenkins password "
echo 
echo
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
echo
echo
curl ifconfig.co
echo
