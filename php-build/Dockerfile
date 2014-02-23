FROM magnum/generic
MAINTAINER Dan Sosedoff "dan@magnum-ci.com"

# Install PHP build dependencies
RUN apt-get install -y \
  libdb5.1-dev \
  libjpeg-dev \
  libpng-dev \
  libXpm-dev \
  libfreetype6-dev \
  libt1-dev \
  libgmp3-dev \
  libc-client-dev \
  libldap2-dev \
  libmcrypt-dev \
  libmhash-dev \
  libz-dev \
  libpcre3-dev \
  libaspell-dev \
  librecode-dev \
  libsnmp-dev \
  libtidy-dev \
  libt1-dev

# Install PHP build
RUN git clone git://github.com/CHH/php-build
RUN cd php-build && ./install.sh