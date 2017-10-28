FROM ubuntu

LABEL maintainer "opsxcq@strm.sh"

RUN apt-get update && apt-get install -y apt-cacher-ng

VOLUME ["/var/cache/apt-cacher-ng"]

EXPOSE 3142

CMD ["apt-cacher-ng","VerboseLog=1","Debug=7","ForeGround=1","PassThroughPattern=.*","Port=3142"]
