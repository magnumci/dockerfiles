FROM magnum/base
MAINTAINER Dan Sosedoff "dan@magnum-ci.com"

# Add PostgreSQL PPA repository
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" > /etc/apt/sources.list.d/pgdg.list
RUN curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN apt-get update

# Install PostgreSQL packages
RUN apt-get install -y postgresql-9.3 postgresql-server-dev-9.3 postgresql-contrib-9.3 postgresql-client-9.3 libpq-dev

# Setup config files
ADD pg_hba.conf /etc/postgresql/9.3/main/
ADD postgresql.conf /etc/postgresql/9.3/main/

# Expose default server port
EXPOSE 5432

# Start daemon
CMD ["/bin/su", "postgres", "-c", "/usr/lib/postgresql/9.3/bin/postgres -D /var/lib/postgresql/9.3/main -c config_file=/etc/postgresql/9.3/main/postgresql.conf"]