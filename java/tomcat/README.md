# 使用说明

1. 更新时间为北京时间

2. 提取 `tomcat.tgz` 的内容

```shell
tar -czvf tomcat.tgz
```

3. 重命名为 app8101

```
mv tomcat app8101
```

4. 若需双机热部署，可再次解压，并重命名为 app8102
5. 将tomcat2的server.xml端口修改为 `8102`，其他端口也要一并修改，不能与app8101的端口发生冲突

6. 安装 memcached

```
apt install memcached -y
```


7. 安装redis
```
apt install redis-server -y
```

测试redis是否可以连接
```
redis-cli
```

8. 在当前用户根目录下创建 `public` 文件夹，并修改权限为755
```
mkdir public

chmod +755 public

```

9. 配置 nginx

```shell
apt install nginx-full -y
```

```shell
cd /etc/nginx/conf.d

vim app.conf
```

10. 更新项目，参考 `update.sh`

> 1. 将 update.sh 的war改为当前要部署的应用war
> 2. 执行 sh update.sh app8101 快速更新当前应用


