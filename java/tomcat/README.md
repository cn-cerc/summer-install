# Tomcat部署

### 使用说明

1.拷贝文件到root目录

```
cd
cp summer-install/java/tomcat/* .
```

2.解压压缩文件

```
tar -zxvf tomcat.tgz
```

3.更改tomcat名字

```
mv tomcat app8101
```

4.创建public文件夹

```
mkdir public
```

5.更改public权限

```
chmod 755 public
```

6.上传war包

使用xftp上传war包

7.更改war包

```
vim update.sh
```

更改war包名字

8.安装jdk8

使用javac查看安装命令

```
apt install openjdk-8-jdk-headless -y
```

9.安装memcached

```
apt install memcached -y
```

10.安装nginx

```
apt install nginx-full -y
```

测试nginx是否启动了

11.添加nginx配置

```
cd /etc/nginx/conf.d
vim app.conf
```

------

```
upstream host_local{
    server 127.0.0.1:8101;
    server 127.0.0.1:8102;
}

server {
    listen 80;
    server_name www.example.com;

    keepalive_timeout 90;

    location / {
        proxy_read_timeout 90;

        # 传递客户端IP
        proxy_set_header        X-Real-IP       $remote_addr;
        proxy_set_header        X-Forwarded-For $proxy_add_x_forwarded_for;
        
        # 传递真实域名
        proxy_set_header Host $host;

        # 开启 websocket
        proxy_http_version      1.1;
        proxy_set_header        Upgrade $http_upgrade;
        proxy_set_header        Connection "upgrade";

        # 限制文件大小
        client_max_body_size    100m;
        
        # 反向代理地址
        proxy_pass http://host_local/;
    }
}
```

添加ip

------

12.创建tomcat实例

```
sh update.sh app8101
```

如需部署tomcat8102端口则需要再次解压tomcat.tgz

更改tomcat名字为app8102

进入app8102更改server.xml中的端口

再次创建tomcat实例

```
sh update.sh app8102
```

13.测试8101端口。