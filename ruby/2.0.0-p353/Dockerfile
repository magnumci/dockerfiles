FROM magnum/generic
MAINTAINER Dan Sosedoff "dan@magnum-ci.com"

RUN git clone https://github.com/sstephenson/ruby-build.git
RUN ./ruby-build/bin/ruby-build "2.0.0-p353" "/usr/local"
RUN rm -tf ./ruby-build
RUN echo "gem: --no-rdoc --no-ri" >> /usr/local/etc/gemrc
RUN gem update --system
RUN gem install bundler