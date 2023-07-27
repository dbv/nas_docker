#!/bin/bash

# 很好的nosql数据库，集成了模糊搜索功能，rust开发
# author:xiaohui github.com/dbv/

docker_name=meilisearch
docker_data=$PWD/data

docker stop $docker_name
docker rm $docker_name

docker run -it --name=$docker_name \
  -e MEILI_MASTER_KEY='你自己设置随机字符串客户端使用这个字符串进行验证'\
  -p 7700:7700 \
  -v $docker_data/meili_data:/meili_data \
  -d getmeili/meilisearch:latest
