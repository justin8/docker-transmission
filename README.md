#Docker Transmission#
[![Build Status](https://jenkins.dray.be/buildStatus/icon?job=docker_transmission)](https://jenkins.dray.be/job/docker_transmission)

This is a docker image for Transmission running on an Alpine linux container

##Usage##
Transmission will run on port 9091 by default. (Use `-p 9091:9091` ).
Transmission configuration will be read from /config. Bind this directory to your host or a docker volume to make configuration changes permanent.
You will also need to mount a destination volume somewhere for downloads to actually go somewhere.
