FROM ubuntu

LABEL maintainer "opsxcq@strm.sh"

RUN apt-get update && apt-get install -y apt-cacher-ng

COPY conf /etc/apt-cacher-ng/acng.conf

VOLUME ["/var/cache/apt-cacher-ng"]

EXPOSE 80

CMD chmod 777 /var/cache/apt-cacher-ng && /etc/init.d/apt-cacher-ng start && tail -f /var/log/apt-cacher-ng/*
