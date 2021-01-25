#
# Dockerfile for json-server
#

FROM alpine:latest

WORKDIR /data

RUN set -xe \
  && apk add --no-cache nodejs nodejs-npm \
  && npm install -g json-server \
  && rm -rf /tmp/npm* /var/cache/apk/*

EXPOSE 3000

ENTRYPOINT ["json-server"]
CMD ["--help"]
