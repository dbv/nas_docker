#!/bin/bash

# author:xiaohui github.com/dbv/

docker_name=syncthing
docker_data=/home/nas/data1/miniofiles/syncthing/

docker stop $docker_name
docker rm $docker_name

docker run -it --name $docker_name --restart=always \
  --name=syncthing \
  --hostname=syncthing `#optional` \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -p 8384:8384 \
  -p 22000:22000/tcp \
  -p 22000:22000/udp \
  -p 21027:21027/udp \
  -v $docker_data/config:/config \
  -v $docker_data/data/:/data1 \
  --restart unless-stopped \
  -d linuxserver/syncthing:latest
