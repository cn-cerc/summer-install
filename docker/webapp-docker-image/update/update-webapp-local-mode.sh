#!/bin/bash

# 本地更新模式，适用于只有1台机子的情况

# 原始镜像名称
SOURCE_IMAGE=diteng-webapp-release
# 镜像私服地址
REGISTRY_HOST=registry-vpc.cn-hangzhou.aliyuncs.com
# 镜像命名空间
NAMESPACE=diteng-release
# 接收镜像运行版本，默认 latest
TAG=$1

# 登录私服仓库
docker login -p password --username=user@aliyun.com $REGISTRY_HOST

# 拉取镜像版本
docker pull  $REGISTRY_HOST/$NAMESPACE/$SOURCE_IMAGE:$TAG

# 显示镜像列表
docker images

# 显示容器列表
docker ps

# 停止1号容器
docker stop app8101
docker rm app8101
# 更新1号容器
docker run --name app8101 -d -p 8101:8080 --hostname app8101 --restart always --cpu-shares 512 $REGISTRY_HOST/$NAMESPACE/$SOURCE_IMAGE:$TAG

sleep 30

# 停止2号容器
docker stop app8102
docker rm app8102
# 更新2号容器
docker run --name app8102 -d -p 8102:8080 --hostname app8101 --restart always --cpu-shares 512 $REGISTRY_HOST/$NAMESPACE/$SOURCE_IMAGE:$TAG
