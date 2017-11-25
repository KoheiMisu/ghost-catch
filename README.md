## Overview

Application docker configuration

## Start

```bash
$ cp .env.example .env
$ vi .env # if you need
```

```bash
$ make set-client
$ docker-compose up -d
$ make build-client
```

## CI

__update api__

```
$ make build-api
```

__update client__

```
$ make build-client
```

### docker-compose

```
$ curl -L https://github.com/docker/compose/releases/download/1.17.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
$ chmod +x /usr/local/bin/docker-compose
$ /usr/local/bin/docker-compose version
```
