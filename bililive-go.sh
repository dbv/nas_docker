#!/bin/bash

# author:xiaohui github.com/dbv/

docker_name=bililive-go
docker_data=$PWD/data

docker stop $docker_name
docker rm $docker_name

docker run -it --name $docker_name --restart=always \
  --name=$docker_name \
  --net mynetwork --ip 172.18.0.10 \
  -v $docker_data/Videos:/srv/bililive \
  -d chigusa/bililive-go
