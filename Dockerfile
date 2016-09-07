FROM justin8/alpine
MAINTAINER justin@dray.be

RUN apk add --update transmission-daemon
RUN apk info transmission-daemon | grep -om1 '[0-9].[0-9.a-z-]*' > /version

VOLUME "/config"

EXPOSE 9091
CMD /usr/bin/transmission-daemon --foreground --no-portmap --log-error --config-dir /config
