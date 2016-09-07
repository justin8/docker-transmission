#Docker Transmission#
[![Run Status](https://api.shippable.com/projects/57cfd3812146e50e00af35ef/badge?branch=master)](https://app.shippable.com/projects/57cfd3812146e50e00af35ef)

This is a docker image for Transmission running on an Alpine linux container

##Usage##
Transmission will run on port 9091 by default. (Use `-p 9091:9091` ).
Transmission configuration will be read from /config. Bind this directory to your host or a docker volume to make configuration changes permanent.
You will also need to mount a destination volume somewhere for downloads to actually go somewhere.
