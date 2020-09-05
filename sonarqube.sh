#!bin/bash/
sudo apt-get update
sudo apt-get install openjdk-8-jdk -y
sudo apt-get install unzip
sudo mkdir /opt/sonarqube
cd /opt/sonarqube
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-7.5.zip
sudo unzip sonarqube-7.5.zip

sudo adduser sonarqube << ENDX
1234
1234
First Last





y
ENDX

sudo chown -R sonarqube:sonarqube /opt/sonarqube/sonarqube-7.5
sudo sh -c "echo \"sonarqube ALL=(ALL:ALL) NOPASSWD: ALL\" >> /etc/sudoers"