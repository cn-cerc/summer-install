#!/bin/bash

# 下载镜像
docker pull redis

# 启动镜像
docker run —name redis -d redis