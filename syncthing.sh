#!/bin/bash

# author:xiaohui github.com/dbv/

docker_name=syncthing
docker_data=/home/nas/data1/miniofiles/syncthing/

docker stop $docker_name
docker rm $docker_name

docker run -it --name $docker_name --restart=always  --network=host -v $docker_data:/syncdata/ -d docker.io/linuxserver/syncthing 

# user: syncthing pass: xunlei pass
