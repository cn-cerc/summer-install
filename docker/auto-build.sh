#!/bin/bash

# 更新系统
apt update && apt upgrade -y

apt install docker.io -y

# 构建镜像
cd factory
sh build.sh

# 拷贝脚本
cd ../tools
cp -r *.sh .

# 创建容器
cd ~

sh create.sh app8101 8101

sh create.sh app8101 8102

echo "应用环境初始化完成，请根据项目实际情况酌情修改 update.sh"