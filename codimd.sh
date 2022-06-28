# author:xiaohui github.com/dbv/
#!/bin/bash

docker_name=codimd
docker_data=/root/docker/codimd/data

docker stop $docker_name && docker rm $docker_name

docker run --name $docker_name \
    -e CMD_DB_URL=mysql://root:yourpass@127.0.0.1:3306/codimd \
    -e CMD_USECDN=false \
    -e CMD_ALLOW_EMAIL_REGISTER=false \
    -e CMD_EMAIL=true \
    -e CMD_OAUTH2_SCOPE=user \
    --restart=always \
    -v $docker_data:/home/hackmd/app/public/uploads \
    -d nabo.codimd.dev/hackmdio/hackmd:latest
