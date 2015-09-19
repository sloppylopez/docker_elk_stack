#http://phusion.github.io/baseimage-docker/#solution
#https://github.com/phusion/baseimage-docker

# Use phusion/baseimage as base image. To make your builds
# reproducible, make sure you lock down to a specific version, not
# to `latest`! See
# https://github.com/phusion/baseimage-docker/blob/master/Changelog.md
# for a list of version numbers.
# using latest version 0.9.16

FROM phusion/baseimage:0.9.16
#FROM ubuntu:14.04
ENV LOGSTASH_VER 1.5.0.rc2
ENV DEBIAN_FRONTEND noninteractive
WORKDIR /opt
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

# Install Logstash
RUN wget --quiet "https://download.elasticsearch.org/logstash/logstash/logstash-$LOGSTASH_VER.tar.gz" -O "/opt/logstash-$LOGSTASH_VER.tar.gz" --no-check-certificate && \
 tar zxf logstash-$LOGSTASH_VER.tar.gz && \
 mv logstash-$LOGSTASH_VER logstash

# Install plugins
RUN /opt/logstash/bin/plugin update logstash-output-zeromq
RUN /opt/logstash/bin/plugin install logstash-input-log-courier

# Config files
ADD server.conf /etc/logstash/server.conf
ADD logstash-forwarder.key /etc/logstash/logstash-forwarder.key
ADD logstash-forwarder.crt /etc/logstash/logstash-forwarder.crt

# lumberjack port
EXPOSE 4545
# log-courier port
EXPOSE 4546

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD /opt/logstash/bin/logstash -f /etc/logstash/server.conf

# ...put your own build instructions here...

