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
MAINTAINER Sloppy Lopez <sloppy@sloppylopez.com>

ENV KIBANA_VERSION=4.0.2

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

# Kibana
RUN mkdir -p /opt/kibana
RUN wget https://download.elasticsearch.org/kibana/kibana/kibana-$KIBANA_VERSION-linux-x64.tar.gz -O /tmp/kibana.tar.gz && \
 tar zxf /tmp/kibana.tar.gz && mv kibana-$KIBANA_VERSION-linux-x64/* /opt/kibana/

# Configs
COPY kibana.yml /opt/kibana/config/kibana.yml
ADD users.htpasswd /opt/kibana/node_modules/http-auth/data/users.htpasswd

EXPOSE 5601

CMD /opt/kibana/bin/kibana
# ...put your own build instructions here...

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*