#!/bin/bash

# author:xiaohui github.com/dbv/
docker_name=transmission
docker_data=/home/nas/data1/btdowndata/
docker_config=/home/nas/data1/btdownconfig/
docker_watch=/home/nas/data1/btdownwatch/

docker run -d --name=$docker_name \
-e PUID=224 \
-e TRANSMISSION_WEB_HOME=/transmission-web-control/ \
-e PGID=224 \
-e TZ=Asia/Shanghai  \
-p 9091:9091 \
-p 51413:51413 \
-p 51413:51413/udp \
-v $docker_config:/config/  \
-v $docker_data:/downloads/ \
-v $docker_watch:/watch/ docker.io/linuxserver/transmission
