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



####### 另外一种方案




docker create  \
    --name=baidunetdisk  \
    -p 5800:5800  \
    -p 5900:5900  \
    -v /配置文件位置:/config  \
    -v /下载位置:/config/baidunetdiskdownload  \
    --restart unless-stopped  \
    johngong/baidunetdisk:latest
#修改端口 根据文档，5800 端口对应 Web 访问端口，5900 端口对应 VNC 协议访问端口。可以根据需求进行端口转换和映射。如果未使用 VNC 客户端，可以将 5900 端口隐藏，保证对外不可见。
