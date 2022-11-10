#!/bin/bash


apt-get install nfs-common
mkdir -p /data/zwyao/cross_FL
mount -t nfs 172.16.62.107:/data/zwyao/cross_FL /data/zwyao/cross_FL

cat >> /etc/fstab << EOF
172.16.62.107:/data/zwyao/cross_FL /data/zwyao/cross_FL  nfs
EOF
df -h
echo "if you can see the mounted directories, then it's well done"

# echo "pulling docker image from Docker hub"
# docker pull yaozhiwei/mpinode:1.0

