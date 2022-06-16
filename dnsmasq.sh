#!/bin/bash
# author:xiaohui github.com/dbv/

docker_name=dnsmasq
docker_data=
docker_config=/home/nas/data1/lhdns/

docker stop $docker_name
docker rm $docker_name

docker run -d --name=$docker_name \
    -d jpillora/dnsmasq \
    -p 53:53/udp \
    -p 16060:8080 \
    -v $docker_config/dnsmasq.conf:/etc/dnsmasq.conf \
    --log-opt "max-size=100m" \
    -e "HTTP_USER=admin" \
    -e "HTTP_PASS=123456" \
    --restart always \
    172.16.91.222:80/dns/dnsmasq
