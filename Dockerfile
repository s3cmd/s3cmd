FROM        alpine:latest
MAINTAINER  Naner Nunes

ARG         VERSION=1.6.1

RUN         apk --no-cache add tar curl python py-dateutil
RUN         curl -O https://ufpr.dl.sourceforge.net/project/s3tools/s3cmd/${VERSION}/s3cmd-${VERSION}.tar.gz

RUN         tar -zxf s3cmd-${VERSION}.tar.gz --strip 1 -C /usr/local/bin

ENTRYPOINT  ["s3cmd"]
CMD         ["--help"]
