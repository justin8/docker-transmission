FROM alpine
MAINTAINER justin@dray.be

RUN apk add --update transmission-daemon sudo
RUN apk info transmission-daemon | grep -om1 '[0-9].[0-9.a-z-]*' > /version

ADD entrypoint.sh /entrypoint.sh

VOLUME "/config"

EXPOSE 9091
CMD /entrypoint.sh /usr/bin/transmission-daemon --foreground --no-portmap --log-error --config-dir /config
