# ElasticSearch

Version: 1.0.0

Docker Version: 0.8.0

## Runtime

- OpenJDK 7 JRE

## Settings

Default server configuration file has the following changes:

- Automatic zen service discovery is `disabled`
- Number of shards is set to `1`
- Number of replicas is set to `0`
- Network host is set to `127.0.0.1`
- Network port is set to `9200`

## Build

Run docker build command:

```
docker build -t=elasticsearch:1.0.0 .
```