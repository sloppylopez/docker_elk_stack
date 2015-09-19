#http://phusion.github.io/baseimage-docker/#solution
#https://github.com/phusion/baseimage-docker

# Use phusion/baseimage as base image. To make your builds
# reproducible, make sure you lock down to a specific version, not
# to `latest`! See
# https://github.com/phusion/baseimage-docker/blob/master/Changelog.md
# for a list of version numbers.
# using latest version 0.9.16
FROM phusion/baseimage:0.9.16
#FROM rancherio/os:latest
#FROM ubuntu:14.04
MAINTAINER Sloppy Lopez <sloppy@sloppylopez.com>

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# ...put your own build instructions here...
# Dependencies
# Add a repo where OpenJDK can be found.
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update

# Auto-accept the Oracle JDK license
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
RUN apt-get install -y oracle-java8-installer

# Set install version
ENV ES_PKG_NAME elasticsearch-1.5.1

# Install ElasticSearch
RUN \
 cd / && \
 wget https://download.elasticsearch.org/elasticsearch/elasticsearch/$ES_PKG_NAME.tar.gz && \
 tar xvzf $ES_PKG_NAME.tar.gz && \
 rm -f $ES_PKG_NAME.tar.gz && \
 mv /$ES_PKG_NAME /elasticsearch

# Define mountable directories
VOLUME ["/data"]

# Define working directory
WORKDIR /data

# Custom ES config
ADD elasticsearch.yml /elasticsearch/config/elasticsearch.yml

# Expose ports
EXPOSE 9200
EXPOSE 9300

# Define default command
CMD ["/elasticsearch/bin/elasticsearch"]

# ...put your own build instructions here...

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*