#!/bin/bash

docker pull mhiroaki8270/docker-makerbot-desktop

docker run -ti -e DISPLAY=$DISPLAY \
                 -v /tmp/.X11-unix:/tmp/.X11-unix \
                 -v /dev/:/dev/ \
                 -v ${HOME}/makerbot:/home/makerbot \
		 --name=Makerware \
                 mhiroaki8270/docker-makerbot-desktop
