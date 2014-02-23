FROM magnum/base
MAINTAINER Dan Sosedoff "dan@magnum-ci.com"

# Install packages to compile software
RUN apt-get -y install build-essential

# Download and compile project source
RUN wget -q https://github.com/kr/beanstalkd/archive/v1.9.tar.gz && tar -zxf v1.9.tar.gz
RUN cd beanstalkd-1.9 && make
RUN cp beanstalkd-1.9/beanstalkd /usr/bin/
RUN rm -rf beanstalkd-1.9 && rm v1.9.tar.gz

# Expose server port
EXPOSE 11300

# Start server
CMD ["/usr/bin/beanstalkd", "-n"]