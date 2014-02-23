# Dockerfiles

Build docker images for Magnum CI

## Images

**Language runtimes:**

- Ruby: 1.9.2, 1.9.3, 2.0.0, 2.1.0
- Node.js: 0.8, 0.10, 0.11
- Go: 1.1.2, 1.2
- PHP: 5.3, 5.4, 5.5

**Databases, key-value stores and search engines:**

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