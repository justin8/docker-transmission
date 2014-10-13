FROM justin8/archlinux
MAINTAINER justin@dray.be

RUN pacman -Syq --noprogressbar --noconfirm transmission-cli

VOLUME "/config"

EXPOSE 9091
CMD /usr/bin/transmission-daemon -f --log-error -g /config
