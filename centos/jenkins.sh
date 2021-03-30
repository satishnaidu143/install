#!/bin/bash
sudo yum install java-1.8.0-openjdk-devel -y
sudo yum install git -y
sudo yum install maven -y
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins -y
sudo systemctl start jenkins
systemctl status jenkins
sudo systemctl enable jenkins
sudo passwd jenkins << ENDX
1234
1234
ENDX

sudo sh -c "echo \"jenkins ALL=(ALL:ALL) NOPASSWD: ALL\" >> /etc/sudoers"
sudo sed -i "/^[^#]*PasswordAuthentication[[:space:]]no/c\PasswordAuthentication yes" /etc/ssh/sshd_config

sleep 10s
echo "find the jenkins password"
echo
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
echo
echo
curl ifconfig.co
echo
