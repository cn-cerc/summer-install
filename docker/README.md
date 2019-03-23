# Docker部署

### 使用说明

1. 安装Docker

```
apt install docker.io
```
2. 构建Docker实例

```
cd summer-install/docker/factory
sh build.sh
```
3. 查看Docker实例镜像

```
docker images
```
4. 拷贝工具

```
cd
cp -r summer-install/docker/tools/* .
```
5. 上传war包

   使用xftp上传到root目录

6. 更改脚本内容

```
vim create.sh
```
更改为上传上来的war包名字

7. 运行脚本

```
sh create.sh app8101 8101
sh create.sh app8102 8102
```
8. 查看tomcat实例

```
docker ps
```
9. 更新war包

```
vim update.sh
sh.update.sh app8101
```
修改update.sh中的war包名

10. 安装nginx

```
apt install nginx-full -y
```
输入ip测试nginx是否正常运行

11. 更改nginx配置

```
cd /etc/nginx/conf.d
vim app.conf
```
添加需要代理的ip

12. 重启nginx

```
nginx -s reload
```
13. 测试。

# 配置Memcached缓存
1. 进入conf目录找到context.xml
```
cd /root/tomcats/app8101/conf
vim context.xml
```
2. 修改Memcached内网地址
  ```
 <Manager className="de.javakaffee.web.msm.MemcachedBackupSessionManager"
memcachedNodes="m-wz9a71e150967454.memcache.rds.aliyuncs.com:11211"
sticky="false"
sessionBackupAsync="false"
lockingMode="auto"
requestUriIgnorePattern=".*\.(ico|png|gif|jpg|css|js)$"
transcoderFactoryClass="de.javakaffee.web.msm.serializer.kryo.KryoTranscoderFactory"/>
  ```
更改memcachedNodes="m-wz9a71e150967454.memcache.rds.aliyuncs.com:11211"中的内网地址

4. 重启docker
```
cd 
docker restart app8101
docker restart app8102
```
# 配置tomcat加速运行
1.  进入debug.sh
```
sh debug.sh app8101
cd /usr/lib/jvm/java-8-oracle/jre/lib/security
vi java.security
```
在117行中改为urandom

2. 退出到根目录
```
exit
```
3. 重启docker
```
docker restart app8101
docker restart app8102
```

# Docker构建镜像缓慢解决方案
使用Docker拉镜像的时候，出现下面错误
```
net/http: request canceled while waiting for connection (Client.Timeout exceeded while awaiting headers)
```

因为在下载官方镜像点的镜像国内访问速度太慢，所以报错，使用加速器就可以解决这个问题
### 1. Ubuntu系统自行创建daemon.json
```
vim /etc/docker/daemon.json
```
### 2. 加入
```
{
    "registry-mirrors":["https://docker.mirrors.ustc.edu.cn"]
}
```
### 3.重启守护进程
```
sudo systemctl daemon-reload
sudo systemctl restart docker
```

