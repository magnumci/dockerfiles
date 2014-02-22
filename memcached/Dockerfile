FROM magnum/base
MAINTAINER Dan Sosedoff "dan@magnum-ci.com"

# Install memcache
RUN apt-get update
RUN apt-get install -y memcached

# Port to expose (default: 11211)
EXPOSE 11211

# Set the user to run Memcached daemon
USER daemon

# Set the entrypoint to memcached binary
CMD ["/usr/bin/memcached"]