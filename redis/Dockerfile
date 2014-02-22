FROM magnum/base
MAINTAINER Dan Sosedoff "dan@magnum-ci.com"

# Add redis PPA
RUN add-apt-repository -y ppa:chris-lea/redis-server
RUN apt-get update

# Install redis server
RUN apt-get install -y redis-server

# Add redis config
ADD redis.yml /etc/redis/redis.yml

# Expose daemon server
EXPOSE 6379

# Setup redis server
CMD ["/usr/bin/redis-server", "/etc/redis/redis.yml"]