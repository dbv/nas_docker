# author:xiaohui github.com/dbv/
#!/bin/bash

docker_name=nginx
docker_conf=/root/docker/nginx/conf
docker_log=/root/docker/nginx/log

docker stop $docker_name && docker rm $docker_name

docker run --privileged -it --name $docker_name -p 80:80 -p 443:443 \
-v $docker_conf:/etc/nginx/conf.d:ro \
-v $docker_log:/var/log/nginx -d nginx



