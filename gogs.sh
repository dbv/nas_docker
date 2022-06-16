#!/bin/bash
# author:xiaohui github.com/dbv/

docker_name=gogslh
docker_data=/home/nas/data1/gogsfiles/
docker_config=/home/nas/data1/gogsconfig/

docker run -d --name=$docker_name -p 9001:3000 -v $docker_data:/data daocloud.io/daocloud/gogs
