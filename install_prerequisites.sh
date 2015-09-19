#!/bin/bash
#Pre-requisites
#sudo apt-get install -y -qq build-essential TODO check if mandatory
sudo apt-get install -y -qq wget curl

#Docker
wget -qO- https://get.docker.com/ | sh
#For not having to do 'sudo docker' but this represents a security issue so i am leaving it unset by default
#sudo usermod -aG docker <YOUR_UBUNTU_USER>

#Docker-Compose
sudo curl -L https://github.com/docker/compose/releases/download/1.3.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
#Check installed versions
docker --version
docker-compose --version
uname -r