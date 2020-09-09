#!bin/bash/
sudo apt-get update
sudo apt-get install openjdk-8-jdk -y
sudo apt-get install unzip
sudo mkdir /opt/sonarqube
cd /opt/sonarqube
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-7.5.zip
sudo unzip sonarqube-7.5.zip

sudo passwd sonar << ENDX
1234
1234
ENDX

sudo sh -c "echo \"sonar ALL=(ALL:ALL) NOPASSWD: ALL\" >> /etc/sudoers"

sudo chown -R sonarqube:sonarqube /opt/sonarqube/sonarqube-7.5
sudo sh -c "echo \"sonarqube ALL=(ALL:ALL) NOPASSWD: ALL\" >> /etc/sudoers"
