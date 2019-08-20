#! /bin/bash
#docker run -it westpa /bin/bash -v /home/astatide/:/home/astatide --name=phdWork
docker run --name=phdWork --hostname=snow -v /home/astatide:/home/astatide -v /media/ende:/media/ende --cpus=8 -it westpa
