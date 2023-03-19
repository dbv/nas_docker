#!/bin/bash

# author:xiaohui github.com/dbv/
docker_name=samba
docker_data=/home/nas/disk/1t

docker stop $docker_name
docker rm $docker_name

docker run -it --name $docker_name --restart=always -e SMB_EXTRA_OPTS="-DSENDFILE64" -m 512m  -p 139:139 -p 445:445 -v $docker_data:/mount -d dperson/samba -u "nas;nas" -s "nas;/mount/;yes;no;no;all;none"
