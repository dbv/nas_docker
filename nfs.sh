#!/bin/bash

# author:xiaohui github.com/dbv/
docker_name=nfs-server
docker_data=/home/nas/data1/pv

docker stop $docker_name
docker rm $docker_name
rm -rf $docker_data

sudo docker run -d --name=$docker_name \
-p 2049:2049 \
-v $docker_data:/nfsroot \
-h nfsserver \
-e SHARED_DIRECTORY=/nfsroot \
itsthenetwork/nfs-server-alpine:latest
