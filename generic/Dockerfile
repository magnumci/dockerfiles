FROM magnum/base
MAINTAINER Dan Sosedoff "dan@magnum-ci.com"

# Change root password
RUN echo "root:root" | chpasswd

# Install OpenSSH server
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd

# Add SCMs repositories
RUN add-apt-repository -y ppa:git-core/ppa
RUN add-apt-repository -y ppa:mercurial-ppa/releases
RUN add-apt-repository -y ppa:svn/ppa
RUN apt-get update

# Install SCMs
RUN apt-get install -y git mercurial subversion

# Install build dependencies
RUN apt-get install -y \
  autoconf \
  binutils \
  bison \
  build-essential \
  checkinstall \
  openssl \
  libssl1.0.0 \
  libssl-dev \
  libcurl4-openssl-dev \
  libffi-dev \
  libgdbm-dev \
  libicu-dev \
  libncurses5-dev \
  libreadline-dev \
  libreadline6-dev \
  libssl-dev \
  libxml2 \
  libxml2-dev \
  libxslt-dev \ 
  libxslt1-dev \
  libyaml-dev \
  ncurses-dev \
  zlib1g \ 
  zlib1g-dev

# Install extras
RUN apt-get install -y \
  sqlite3 \
  libmysqlclient-dev \
  libpq-dev \
  libsqlite3-dev \
  libqt4-dev \
  freetds-dev \
  freetds-bin \
  libfontconfig1

# Install xserver
RUN apt-get install -y xserver-xorg-core x11vnc xvfb
ADD xvfb.sh /etc/init.d/xvfb

# Install phantom.js
RUN wget -q https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.7-linux-x86_64.tar.bz2
RUN tar -xjf phantomjs-1.9.7-linux-x86_64.tar.bz2
RUN cp phantomjs-1.9.7-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs
RUN rm -rf phantomjs-*

# Install imagemagick
RUN apt-get install -y imagemagick libmagick++-dev

# Setup sendmail fake alias
RUN ln -s /bin/true /bin/sendmail

# Install wkhtmltopdf
RUN wget -q https://wkhtmltopdf.googlecode.com/files/wkhtmltopdf-0.11.0_rc1-static-amd64.tar.bz2
RUN tar -xvf wkhtmltopdf-0.11.0_rc1-static-amd64.tar.bz2
RUN mv wkhtmltopdf-amd64 /usr/local/bin/wkhtmltopdf
RUN rm -f wkhtmltopdf*

# Install bunch
RUN wget -q -O /usr/bin/bunch https://github.com/magnumci/bunch/releases/download/v0.1.1/bunch_linux_amd64
RUN chmod +x /usr/bin/bunch

# Install Heroku toolbelt
RUN wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# Setup magnum user
RUN useradd -m -d /home/magnum -s /bin/bash -U magnum
RUN echo magnum:magnum | chpasswd
RUN mkdir -p /home/magnum/.ssh
RUN touch /home/magnum/.ssh/authorized_keys
RUN chmod 700 /home/magnum/.ssh
RUN chmod 600 /home/magnum/.ssh/*
RUN chown -R magnum:magnum /home/magnum
RUN echo "magnum ALL=NOPASSWD: ALL" >> /etc/sudoers