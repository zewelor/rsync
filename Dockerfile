ARG ALPINE_VERSION=3.12
FROM alpine:${ALPINE_VERSION}

RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
            rsync \
            openssh-client \
            ca-certificates \
 && update-ca-certificates \
 && rm -rf /var/cache/apk/*

ENTRYPOINT ["rsync"]
