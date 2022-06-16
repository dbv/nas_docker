#!/bin/bash
# author:xiaohui github.com/dbv/
docker_name=mysql

# 可根据配置设置mysql conf、data文件夹映射
docker run --name $docker_name \
    -d -e MYSQL_ROOT_PASSWORD=yourpass\
    -p 13306:3306 \
    --restart=always \
    -e TZ=Asis/Shanghai \
    mysql:5.7 \
    --character-set-server=utf8mb4 \
    --collation-server=utf8mb4_unicode_ci \
    --character-set-client-handshake=FALSE 



# CREATE DATABASE qfx DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
