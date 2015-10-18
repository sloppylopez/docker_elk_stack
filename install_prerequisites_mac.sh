#!/bin/bash
#Pre-requisites
brew install curl docker docker-compose

#Install travis-cli command line to be able to encrypt api_keys in the Travis build
sudo gem install travis
#Encrypt your code climate key for Travis build and add it automatically to your .travis.yml
#remember explicitly declare this variables in
#https://travis-ci.org/<YOUR_GIT_USER>/<YOUR_GIT_PROJECT_NAME>/settings/env_vars
travis encrypt FIREBASE_TOKEN=<YOUR_FIREBASE_TOKEN> --add

#Check installed versions
docker --version
docker-compose --version
uname -r