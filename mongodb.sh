#!/bin/bash

# author:xiaohui github.com/dbv/

docker_name=mongodb
docker_data=$PWD/data/

docker stop $docker_name
docker rm $docker_name

docker run -it --name $docker_name --restart=always \
  --name=mongodb \
  -v $docker_data:/data/db \
  --restart unless-stopped \
  -d mongo:latest
