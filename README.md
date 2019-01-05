# Apt-get cacher
[![Docker Pulls](https://img.shields.io/docker/pulls/strm/apt-cacher.svg?style=plastic)](https://hub.docker.com/r/strm/apt-cacher/)

Transparently intercept calls to `deb.debian.org` and cache them.

When running containers, link it like

```
docker run --rm -it --link apt-cache:deb.debian.org --entrypoint /bin/bash debian:9.2
```

Considering that previously you started this container naming it `apt-cache`.

