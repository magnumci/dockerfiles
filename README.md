# Dockerfiles

Build docker images for Magnum CI

## Images

- PostgreSQL
- MySQL
- MongoDb
- ElasticSearch
- Redis
- RabbitMQ
- Memcached
- CouchDB

## Setup

Dockerfiles project is configured to run under Vagrant virtual machine.

To configure the host VM run:

```
vagrant up
```

After machine has been built and provisioned, reload it:

```
vagrant reload
```

## Usage

Start VM and connect via SSH:

```
vagrant up
vagrant ssh
```

Project directory is automatically mapped to `/dockerfiles` directly. 

To build all available images run:

```
cd /dockerfiles
./build_all
```

Or to build a single image:

```
./build [name]
```

If you want to remove all containers and images, run:

```
./cleanup
```

## License 

The MIT License (MIT)

Copyright (c) 2014 Dan Sosedoff, dan.sosedoff@gmail.com