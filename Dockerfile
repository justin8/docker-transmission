FROM justin8/archlinux
MAINTAINER justin@dray.be

RUN pacman -Syq --noprogressbar --noconfirm transmission-cli && rm -rf /var/cache/pacman/pkg/*

VOLUME "/config"

EXPOSE 9091
CMD /usr/bin/transmission-daemon --foreground --no-portmap --log-error --config-dir /config
