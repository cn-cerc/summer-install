# Tomcat部署

### 使用说明

1. 拷贝文件到root目录

```
cd
cp summer-install/java/tomcat/* .
```

2. 解压压缩文件

```
tar -zxvf tomcat.tgz
```

3. 更改tomcat名字

```
mv tomcat app8101
```

4. 创建public文件夹

```
mkdir public
```

5. 更改public权限

```
chmod 755 public
```

6. 上传war包

7. 更改war包

```
vim update.sh
```

更改war包名字

8. 安装jdk8

使用javac查看安装命令

```
apt install openjdk-8-jdk-headless -y
```

9. 安装Redis

```
apt install redis-server -y
```

10. 启动Redis

```
redis-server
redis-cli
```

11. 安装memcached

```
apt install memcached -y
```

12. 安装nginx

```
apt install nginx-full -y
```

测试nginx是否启动了

13. 添加nginx配置

```
cd /etc/nginx/conf.d
vim app.conf
```

14. 创建tomcat实例

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

15. 测试8101端口
