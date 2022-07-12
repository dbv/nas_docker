#!/bin/bash

# author:xiaohui github.com/dbv/


#!/bin/bash


docker_name=baidunet
docker_data=/root/disk/d/baidudisk

docker stop $docker_name
docker rm $docker_name

docker run -it  --name $docker_name --restart=always -p 5901:5901 -p 6080:6080  \
-v $docker_data:/home/baidu/baidunetdiskdownload -e vnc_password=自己设置密码 \
-d johnshine/baidunetdisk-crossover-vnc:latest
