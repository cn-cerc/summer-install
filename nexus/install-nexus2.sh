#/bin/bash

# 创建存储文件夹
mkdir /var/lib/docker/volumes/nexus-data && chown -R 200 /var/lib/docker/volumes/nexus-data

# 生成镜像
docker run -d -p 8081:8081 --name nexus -v /var/lib/docker/volumes/nexus-data:/sonatype-work sonatype/nexus

# 打开地址
# http://127.0.0.1:8081/nexus
