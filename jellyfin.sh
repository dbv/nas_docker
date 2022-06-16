#!/bin/bash

# author:xiaohui github.com/dbv/
docker_name=jellyfin
docker_config=/home/nas/data1/jellyfin/config/
docker_data=/home/nas/data1/miniofiles/movie/

docker stop $docker_name
docker rm $docker_name

docker run --name $docker_name --restart=always  -d -p 8096:8096 -v $docker_config:/config -v $docker_data:/media jellyfin/jellyfin

