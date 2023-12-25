# onedrive同步

docker run -it --name onedrive -v /home/xianyu/docker/onedrive/conf:/onedrive/conf \
    -v "/home/xianyu/OneDrive:/onedrive/data" \
    -e "ONEDRIVE_UID=1000" \
    -e "ONEDRIVE_GID=1000" \
    driveone/onedrive:latest
