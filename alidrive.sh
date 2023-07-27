#!/bin/bash

# 阿里云盘同步工具
# author:xiaohui github.com/dbv/

docker_name=alidrive
docker_data=$PWD/data

docker stop $docker_name
docker rm $docker_name


docker run -d --name=aliyundrive-webdav --restart=unless-stopped -p 8888:8080 \
  -v $docker_data/etc/:/etc/aliyundrive-webdav/ \
  -e REFRESH_TOKEN='xxxxxx-refresh-token' \
  -e WEBDAV_AUTH_USER=root \
  -e WEBDAV_AUTH_PASSWORD=123 \
  messense/aliyundrive-webdav
