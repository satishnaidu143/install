#!bin/bash/
sudo apt-get update
sudo apt-get install openjdk-8-jdk -y
wget https://sonatype-download.global.ssl.fastly.net/repository/downloads-prod-group/3/nexus-3.23.0-03-unix.tar.gz
tar -xvf nexus-3.23.0-03-unix.tar.gz
cd nexus-3.23.0-03/bin
./nexus start
sleep 10s
./nexus status
sleep 20s
cd ~
sudo cat /home/ubuntu/sonatype-work/nexus3/admin.password