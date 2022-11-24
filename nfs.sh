#!/bin/bash


apt-get install nfs-common
mkdir -p /data/zwyao/cross_FL
mount -t nfs 172.16.63.64:/data/zwyao/cross_FL /data/zwyao/cross_FL

cat >> /etc/fstab << EOF
172.16.63.64:/data/zwyao/cross_FL /data/zwyao/cross_FL  nfs
EOF
df -h
echo "If you can see the mounted directories, then it's well done"


# Oneline
apt-get install nfs-common && mkdir -p /data/zwyao/cross_FL && mount -t nfs 172.16.63.64:/data/zwyao/cross_FL /data/zwyao/cross_FL && cat >> /etc/fstab << EOF 172.16.63.64:/data/zwyao/cross_FL /data/zwyao/cross_FL  nfs EOF && df -h && echo "If you can see the mounted directories, then it's well done"


