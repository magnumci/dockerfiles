FROM magnum/php-build
MAINTAINER Dan Sosedoff "dan@magnum-ci.com"

# Install PHP runtime
RUN php-build -i development --pear 5.4.25 /usr/local

# Install PHPUnit
RUN pear channel-discover pear.phpunit.de
RUN pear install phpunit/PHPUnit

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer