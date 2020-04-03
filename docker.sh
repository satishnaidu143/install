#!/bin/bash
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh 
sudo usermod -aG docker ubuntu
sudo usermod -aG docker jenkins
sudo chmod 666 /var/run/docker.sock