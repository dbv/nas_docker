#!/bin/bash

# 自动录制直播视频，可以录制bilibili直播，youtube直播，twitch直播等
# author:xiaohui github.com/dbv/

docker_name=bililive-go
docker_data=$PWD/data

docker stop $docker_name
docker rm $docker_name

docker run -it --name $docker_name --restart=always \
  --name=$docker_name \
  -v $docker_data/Videos:/srv/bililive \
  -p 8080:8080  \
  -d chigusa/bililive-go
