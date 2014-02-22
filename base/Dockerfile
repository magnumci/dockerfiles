FROM ubuntu:12.04
MAINTAINER Dan Sosedoff "dan@magnum-ci.com"

# Update system
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe multiverse" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

# Fix locale
RUN echo "LC_ALL=\"en_US.UTF-8\"" >> /etc/default/locale
RUN locale-gen en_US.UTF-8
RUN update-locale LANG=en_US.UTF-8

# Run dependencies installation
ADD setup.sh /tmp/setup.sh
RUN /tmp/setup.sh && rm /tmp/setup.sh