#!/bin/bash

# author:xiaohui github.com/dbv/

docker_name=ytbdl
docker_data=$PWD/data/

docker stop $docker_name
docker rm $docker_name

docker run -it --name $docker_name --restart=always \
  --name=$docker_name \
  -e ALLOW_CONFIG_MUTATIONS='true' \
  -e ytdl_mongodb_connection_string='mongodb://172.17.0.5:27017' \
  -e ytdl_use_local_db='false' \
  -e write_ytdl_config='true' \
  -v $docker_data/appdata:/app/appdata \
  -v $docker_data/audio:/app/audio \
  -v $docker_data/video:/app/video \
  -v $docker_data/subscriptions:/app/subscriptions \
  -v $docker_data/users:/app/users \
  -p 8998:17442 \
  --restart unless-stopped \
  -d tzahi12345/youtubedl-material:latest


# 需要mongodb数据库，可以使用mongodb.sh脚本安装
# 修改mongodb的ip地址
