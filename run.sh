#!/bin/bash

# hack but works
xhost +

sudo docker run \
  -it --rm --privileged \
  -e DISPLAY=$DISPLAY \
  -e QT_SCALE_FACTOR=$QT_SCALE_FACTOR \
  -e PULSE_SERVER=unix:/run/user/1000/pulse/native \
  -v /dev/bus/usb:/dev/bus/usb \
  -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
  -v /run/user/1000/pulse:/run/user/1000/pulse \
  limesdr-toolkit "$@"

