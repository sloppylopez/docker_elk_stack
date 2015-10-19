#!/bin/bash
#Pre-requisites
#sudo apt-get install -y -qq build-essential TODO check if mandatory
sudo apt-get install -y -qq wget curl

#Docker
wget -qO- https://get.docker.com/ | sh
#For not having to do 'sudo docker' but this represents a security issue so i am leaving it unset by default
#sudo usermod -aG docker <YOUR_UBUNTU_USER>

#Install travis-cli command line to be able to encrypt api_keys in the Travis build
sudo gem install travis
#Encrypt your code climate key for Travis build and add it automatically to your .travis.yml
#remember explicitly declare this variables in
#https://travis-ci.org/<YOUR_GIT_USER>/<YOUR_GIT_PROJECT_NAME>/settings/env_vars
travis encrypt DOCKER_EMAIL=<YOUR_DOCKER_EMAIL> && travis encrypt DOCKER_USER=<YOUR_DOCKER_USER> --add && --add && travis encrypt DOCKER_PASSWORD=<YOUR_DOCKER_PASSWORD> --add

#Docker-Compose
sudo curl -L https://github.com/docker/compose/releases/download/1.3.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
#Check installed versions
docker --version
docker-compose --version
uname -r