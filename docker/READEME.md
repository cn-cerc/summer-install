# Docker部署

### 使用说明

1. 安装Docker

```
apt install docker.io
```
2.构建Docker实例

```
cd summer-install/docker/factory
sh build.sh
```
3.查看Docker实例镜像

```
docker images
```
4.拷贝工具

```
cd
cp -r summer-install/docker/tools/* .
```
5.上传war包
使用xftp上传到root目录

6.更改脚本内容

```
vim create.sh
```
更改为上传上来的war包名字

7.运行脚本

```
sh create.sh app8101 8101
sh create.sh app8102 8102
```
8.查看tomcat实例

```
docker ps
```
9.安装nginx

```
apt install nginx-full -y
```
输入ip测试nginx是否正常运行

10.更改nginx配置

```
cd /etc/nginx/conf.d
vim app.conf
```
添加需要代理的ip

11.重启nginx

```
nginx -s reload
```
12.测试。



