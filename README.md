# Apt-get cache

How to build your image using cache (can break other things that use http_proxy)

```
docker build -t imageName --build-arg http_proxy=http://cache:3142/ .
```

How to use it as a cache (invasive way), add to `/etc/apt/conf.d/01pr` this line

```
Acquire::http { Proxy "http://cache:3142"; };
```

Or in the form of a one-liner

```
echo 'Acquire::http { Proxy "http://cache:3142"; };' >> /etc/apt/conf.d/01pr
```
