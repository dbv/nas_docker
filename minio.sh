#!/bin/bash

# author:xiaohui github.com/dbv/
docker_name=miniolh
docker_data=/home/nas/data1/miniofiles/
docker_config=/home/nas/data1/minioconfig/

docker stop $docker_name
docker rm $docker_name

docker run -p 9000:9000 --name $docker_name --restart=always -v $docker_data:/data -v $docker_config:/root/.minio \
-e "MINIO_ACCESS_KEY=你的key" \
-e "MINIO_SECRET_KEY=你的secret" \
-d docker.io/minio/minio server /data
