#!/bin/bash

cd ~

# 停止1号机 
sh shutdown.sh diteng-app-main 

sleep 10

# 获取应用文件
wget http://172.16.2.42/job/diteng-main/ws/diteng-app/target/diteng-app-1.0.0.war -O diteng-app-main-1.0.0.war
wget http://172.16.2.42/job/diteng-safe/ws/diteng-app/target/diteng-app-1.0.0.war -O diteng-app-safe-1.0.0.war

update_tomcat () {
    app=$1

    # 停止服务容器
    sh ~/tomcats/$app/bin/shutdown.sh

    sleep 10

    # 删除应用文件
    rm -rf ~/tomcats/$app/webapps/ROOT
    rm -rf ~/tomcats/$app/webapps/ROOT.war

    # 复制应用文件
    cp ~/diteng-app-safe-1.0.0.war ~/tomcats/$app/webapps/ROOT.war

    # 启动服务容器
    sh ~/tomcats/$app/bin/startup.sh
}

# 更新2号服务
update_tomcat diteng-app-safe 

