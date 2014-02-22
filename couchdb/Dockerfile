FROM magnum/base
MAINTAINER Dan Sosedoff "dan@magnum-ci.com"

# Add couchdb repository
RUN add-apt-repository -y ppa:couchdb/stable
RUN apt-get update

# Install couchdb
RUN apt-get install -y couchdb

# Tweak couchdb setup
RUN sed -e 's/^bind_address = .*$/bind_address = 0.0.0.0/' -i /etc/couchdb/default.ini
RUN mkdir /var/run/couchdb
RUN chown -R couchdb:couchdb /var/run/couchdb 

# Expose server port
EXPOSE 5984

# Set user
USER couchdb

# Start server
CMD ["/usr/bin/couchdb", "-a", "/etc/couchdb/default.ini", "-a", "/etc/couchdb/local.ini"]