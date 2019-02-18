# summer-install

## 项目简介

生产系统——基于Ubuntu环境下的安装脚本集合。

## 使用说明

### docker

该目录下的脚本主要用于部署基于docker进行虚拟化部署的应用。

1. 运行 [docker/factory](docker/factory) 目录下的 `build.sh` 进行客制化的镜像下载
2. 拷贝 [docker/tools](docker/tools) 下的文件到用户根目录 
3. `tools` 下的脚本主要用户App的容器创建、更新、删除等

### java

1. 该目录下的脚本主要用于直接部署在物理机上的项目。

2. [tomcat](java/tomcat) 该下的脚本主要用于直接在物理机上快速部署和运行App

3. [spring-boot](java/spring-boot)  主要用户部署和维护spring-boot打包的jar文件

### nginx

1. nginx 的配置请参考 [Wiki](https://github.com/cn-cerc/summer-install/wiki/Nginx%E9%85%8D%E7%BD%AE%E8%8C%83%E4%BE%8B) 
2. 范例的配置修改域名和SSL证书即可开箱即用

