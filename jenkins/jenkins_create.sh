#!/bin/bash

cd ~

docker pull jenkins/jenkins:lts

docker stop jenkins && docker rm jenkins 

# 创建jenkins容器，并绑定北京时间
docker run --name jenkins -p 8080:8080 -p 50000:50000 \
--restart=always \
-v /usr/share/zoneinfo/Asia/Shanghai:/etc/localtime \
-v jenkins_home:/var/jenkins_home jenkins/jenkins:lts
