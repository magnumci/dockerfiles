FROM magnum/base
MAINTAINER Dan Sosedoff "dan@magnum-ci.com"

# Add MongoDB repository
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
RUN apt-get update

# Install MongoDB server
RUN apt-get install -y mongodb-10gen

# Create data dir
RUN mkdir -p /data/db

# Setup MongoDB server
EXPOSE 27017

# Start daemon
CMD ["/usr/bin/mongod"]