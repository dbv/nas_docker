#!/bin/bash
# author:xiaohui github.com/dbv/
docker_name=mysql
docker_data=/root/docker/mysql/data

# 可根据配置设置mysql conf、data文件夹映射
docker run --name $docker_name \
    -d -e MYSQL_ROOT_PASSWORD=yourpass\
    -p 3306:3306 \
	-e TZ=Asis/Shanghai \ 
    --restart=always \
    -e TZ=Asis/Shanghai \
	-v $docker_data:/var/lib/mysql \
    -d mysql:5.7 
# CREATE DATABASE qfx DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
