Base Article http://thepracticalsysadmin.com/running-elk-on-docker/

## docker has stopped distributing images with java pre-installed 
 
 <img src="https://github.com/sloppylopez/angularclient/blob/master/app/images/100x100/foreveralone.jpg" alt="sloppylopez.com"/>
 ![alt tag](http://www.memesly.com/media/created/ghp9w3.jpg) v1.0.9-forever-alone
 
 <a href="http://sloppylopez.com/">sloppylopez.com</a>
 
    We use this problem to generate an opportunity, we will start using

        http://phusion.github.io/baseimage-docker/#solution
        https://github.com/phusion/baseimage-docker

    Which aims to be a lightweight docker friendly minimal ubuntu image, that
    will allow us to consume much less memory in our docker stack
    
    23-05-2015:I am seriously considering start using http://rancher.com/rancher-os/
    instead of phusion images, i think RancherOS is the real deal for docker,
    in fact I started the process of putting it inside the project.

##dockers
It's 5 virtual machines, one per each element of the ELK stack, 1 jenkins
and 1 nodeapi server to persist info in the elastic search, they are connected 
between them with minimum configuration, if you check inside each folder 
there is one Dockerfile to create each container, plus the instructions 
to download and configure,USING the rest of the files of each folder to 
have a complete running setup once all dependencies have been downloaded 
by Docker
###*Use the run scripts in the folder to run it, it works out of the box.

Prerequisites :

    * Linux
    * Docker
    * Docker-compose
    
### To build:FIRST INSTALL!
    1)I assume you have docker installed
    2)sudo sh run_dockers.sh
    
###After install:
    1) http://localhost:5601       kibana
    2) http://localhost:8084/api   nodeapi
    3) http://localhost:9200       elasticsearch
    4) http://localhost:8080       rancher
    5) http://localhost:8111       teamcity (ci for nodejs)

##Upgrade docker
    wget -N https://get.docker.com/ | sh

##Useful commands
    sudo docker ps  -> list containers
    sudo docker run -d container_id -> run in detached mode
    sudo docker build .  -> build docker image
    sudo docker build -t sloppylopez/projectname .  -> build docker image
    sudo docker run -dt -p 8111:8111 dockers_teamcity -> run docker teamcity image in detached mode
    sudo docker run -ti -p 8111:8111 dockers_teamcity /bin/bash -> run docker teamcity image in interactive mode

##Finally we are using rancher as base operating system for our Docker containers
   
    
##Info sources:
    http://stackshare.io/docker-tools
    http://ariya.ofilabs.com/2015/03/continuous-integration-for-node-js-projects-with-teamcity.html
    https://github.com/clayman74/docker-teamcity/blob/master/server/Dockerfile
    http://blog.fire-development.com/2014/09/23/teamcity-8-setup-on-linux/
    https://confluence.jetbrains.com/display/TCD7/Setting+up+an+External+Database#SettingupanExternalDatabase-MySQL
    https://confluence.jetbrains.com/display/TCD9/Setting+up+and+Running+Additional+Build+Agents
    http://sparktutorials.github.io/2015/04/14/getting-started-with-spark-and-docker.html

    https://www.mindmeister.com/389671722/docker-ecosystem
    https://www.digitalocean.com/community/tutorials/how-to-manage-jenkins-with-rancher-on-ubuntu-14-04
    https://docs.docker.com/docker-hub/builds/
    http://nathanleclaire.com/blog/2014/08/17/automagical-deploys-from-docker-hub/

    //webhooks
    https://registry.hub.docker.com/u/sloppylopez/dockers/settings/webhooks/
    https://www.digitalocean.com/community/tutorials/how-to-use-the-digitalocean-elk-stack-one-click-application

