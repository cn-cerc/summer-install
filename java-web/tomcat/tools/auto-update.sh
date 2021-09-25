#!/bin/bash

cd ~

# 获取应用文件
wget http://172.16.2.42/job/diteng-main/ws/diteng-app/target/diteng-app-1.0.0.war -O diteng-app-1.0.0.war

update_tomcat () {
    app=$1

    # 停止服务容器
    sh ~/tomcats/$app/bin/shutdown.sh

    # 删除应用文件
    rm -rf ~/tomcats/$app/webapps/ROOT
    rm -rf ~/tomcats/$app/webapps/ROOT.war

    # 复制应用文件
    cp ~/diteng-app-1.0.0.war ~/tomcats/$app/webapps/ROOT.war

    # 启动服务容器
    sh ~/tomcats/$app/bin/startup.sh

    # 监控运行日志
    tail -n 512 -f ~/tomcats/$app/logs/catalina.out
}

# 更新一号服务
update_tomcat app8101
