FROM magnum/generic
MAINTAINER Dan Sosedoff "dan@magnum-ci.com"

# Setup GOPATH
ENV PATH $PATH:/usr/local/go/bin
ENV GOPATH /usr/local/go/

# Install Golang binaries
RUN wget -q https://go.googlecode.com/files/go1.2.1.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf ./go1.2.1.linux-amd64.tar.gz
RUN rm ./go1.2.1.linux-amd64.tar.gz