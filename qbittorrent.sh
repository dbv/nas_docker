#!/bin/bash

# author:xiaohui github.com/dbv/
docker_name=qbit
docker_config=/home/nas/data1/qbit/config/
docker_data=/home/nas/data1/qbit/downloads/

docker stop $docker_name
docker rm $docker_name

docker run --restart=always --name $docker_name -d \
-p 6881:6881 \
-p 6881:6881/udp \
-p 8080:8080 \
-v $docker_config:/config \
-v $docker_data:/downloads \
linuxserver/qbittorrent

# qbittorrent地址：http://ip:8080
# 用户名：admin
# 密码：adminadmin
# 配置和/下载目录：~/qbittorrent
