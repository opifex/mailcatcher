FROM alpine:latest
# set maintainer
MAINTAINER Mykyta Zinchenko <opifex.ua@gmail.com>
# install dependencies
RUN set -e \
    && apk add --update libstdc++ ruby-bigdecimal sqlite-libs \
    && apk add --virtual .build-deps build-base libstdc++ ruby-dev sqlite-dev \
    && gem install mailcatcher net-smtp --no-document \
    && apk del .build-deps \
    && rm -rf /var/cache/apk/*
# expose smtp and http port
EXPOSE 1025 1080
# set entrypoint
ENTRYPOINT ["mailcatcher", "--smtp-ip=0.0.0.0", "--http-ip=0.0.0.0", "--foreground"]
