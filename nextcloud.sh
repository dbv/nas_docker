#!/bin/bash

# author:xiaohui github.com/dbv/
docker_name=nextcloud
docker_data=/home/nas/data1/nextcloud/

docker stop $docker_name
docker rm $docker_name

docker run -it --name $docker_name --restart=always  -p 19000:80 -v $docker_data:/var/www/html/data -d docker.io/nextcloud
