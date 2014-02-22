FROM magnum/base
MAINTAINER Dan Sosedoff "dan@magnum-ci.com"

# Install Erlang repositories
ADD http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb /tmp/
RUN dpkg -i /tmp/erlang-solutions_1.0_all.deb && rm /tmp/erlang-solutions_1.0_all.deb

# Install RabbitMQ database server
RUN echo "deb http://www.rabbitmq.com/debian/ testing main" >> /etc/apt/sources.list
RUN wget http://www.rabbitmq.com/rabbitmq-signing-key-public.asc
RUN apt-key add rabbitmq-signing-key-public.asc && rm rabbitmq-signing-key-public.asc
RUN apt-get update

# Install erlang
RUN apt-get install -y rabbitmq-server

# Expose server port
EXPOSE 5672

# Run server
CMD ["/usr/sbin/rabbitmq-server"]