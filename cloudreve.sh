#!/bin/bash
##自己的私人网盘，对接到云厂商oss真的很香

# author:xiaohui github.com/dbv/

docker_name=cloudreve
docker_data=/ex/cloudreve

docker stop $docker_name
docker rm $docker_name

docker run -it --name=$docker_name \
  --restart=always \
  -v $docker_data/uploads/:/cloudreve/uploads \
  -v $docker_data/config/:/cloudreve/config \
  -v $docker_data/db/:/cloudreve/db \
  -v $docker_data/avatar/:/cloudreve/avatar \
  -d cloudreve/cloudreve
