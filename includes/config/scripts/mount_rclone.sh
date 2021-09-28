#!/bin/bash

cd /opt/seedbox-compose
source profile.sh
remote_rclone=$(get_from_account_yml rclone.remote)

docker run --rm \
  --volume /home/${USER}/.config/rclone:/config/rclone \
  --volume /mnt/rclone:/mnt/rclone:shared \
  --user $(id -u):$(id -g) \
  --volume /etc/passwd:/etc/passwd:ro \
  --volume /etc/group:/etc/group:ro \
  --device /dev/fuse \
  --cap-add SYS_ADMIN \
  --security-opt apparmor:unconfined \
  --name mnt_rclone \
  rclone/rclone \
  mount ${remote_rclone}: /mnt/rclone/ &
