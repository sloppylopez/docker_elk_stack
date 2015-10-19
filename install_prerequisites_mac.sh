#!/bin/bash
#Pre-requisites
brew install curl docker docker-compose

#Install travis-cli command line to be able to encrypt api_keys in the Travis build
sudo gem install travis
#Encrypt your code climate key for Travis build and add it automatically to your .travis.yml
#remember explicitly declare this variables in
#https://travis-ci.org/<YOUR_GIT_USER>/<YOUR_GIT_PROJECT_NAME>/settings/env_vars
travis encrypt DOCKER_EMAIL=<YOUR_DOCKER_EMAIL> --add
travis encrypt DOCKER_USER=<YOUR_DOCKER_USER> --add
travis encrypt DOCKER_PASSWORD=<YOUR_DOCKER_PASSWORD> --add
#Check installed versions
docker --version
docker-compose --version
uname -r