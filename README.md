# summer-install

## 一、项目简介

生产系统——基于Ubuntu环境下的安装脚本集合。

## 二、使用说明

### tomcat 一键部署

```shell
wget -O auto-build.sh https://gitee.com/mimrc/summer-install/raw/develop/java-web/tomcat/auto-build.sh -O - | sh
```

### docker 一键部署

1. 远程登录Linux系统的用户根目录

2. 拷贝以下命令并执行，即可一键完成docker环境的初始化工作

   **官方源**

   ```shell
   wget -O auto-build.sh https://raw.githubusercontent.com/cn-cerc/summer-install/develop/docker/auto_build_en.sh -O - | sh
   ```

   **国内源**

   ```shell
   wget -O auto-build.sh https://gitee.com/mimrc/summer-install/raw/develop/docker/auto_build_cn.sh -O - | sh
   ```

3. 根据项目的需要，自行调整`update.sh`的app名称和路径

4. 执行`sh debug.sh app8101`进入docker容器目录

5. 跳转到`cd /usr/lib/jvm/java-8-oracle/jre/lib/security`目录

6. 打开文件 `vi java.security`，跳转到`117`行修改为 `securerandom.source=file:/dev/urandom`

7. `Ctrl + D`退出docker容器

8. 执行 `docker restart app8101`重新启动

9. 
   重复执行4-8的步骤，将所有创建好的容器配置成 `urandom`

### docker

docker[说明](/docker)

该目录下的脚本主要用于部署基于docker进行虚拟化部署的应用。

1. 运行 [docker/factory](docker/factory) 目录下的 `build.sh` 进行客制化的镜像下载

2. 拷贝 [docker/tools](docker/tools) 下的文件到用户根目录 

3. `tools` 下的脚本主要用户App的容器创建、更新、删除等

### java-web

1. 该目录下的脚本主要用于直接部署在物理机上的项目。

2. [tomcat](java-web/tomcat) 该下的脚本主要用于直接在物理机上快速部署和运行App

3. [spring-boot](java-web/spring-boot)  主要用户部署和维护spring-boot打包的jar文件

### nginx

1. nginx 的配置请参考 [Wiki](https://github.com/cn-cerc/summer-install/wiki/Nginx%E9%85%8D%E7%BD%AE%E8%8C%83%E4%BE%8B) 
2. 范例的配置修改域名和SSL证书即可开箱即用

