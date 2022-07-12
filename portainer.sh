#!/bin/bash

# author:xiaohui github.com/dbv/


docker_name=portainer
docker_home=$PWD # 你设置的容器运行目录
docker_conf=$PWD/conf
docker_data=$PWD/data

mkdir -p $docker_conf $ocker_data
# docker stop $docker_name && docker rm $docker_name

# 通过docker服务启动的socket套接字进行管理，也可以如果是远程控制docker，可以开启docker的端口服务代替socket启动

docker run -it --name $docker_name -p 8000:8000 -p 9443:9443  \
    --restart=always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v $docker_data:/data \
    -d portainer/portainer-ce:2.9.3
