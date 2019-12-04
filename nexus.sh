#!bin/bash/
sudo apt-get update
sudo apt-get install openjdk-8-jdk -y
wget https://sonatype-download.global.ssl.fastly.net/repository/repositoryManager/3/nexus-3.19.1-01-unix.tar.gz
tar -xvf nexus-3.19.1-01-unix.tar.gz
cd nexus-3.19.1-01/bin
./nexus start
sleep 10s
./nexus status
sleep 20s
cd ~
sudo cat /home/ubuntu/sonatype-work/nexus3/admin.password