#!/bin/bash

update_app(){
    app=$1

    cd ~
    sudo docker stop $app

    rm -rf tomcats/$app/webapps/ROOT
    rm -rf tomcats/$app/webapps/ROOT.war

    # 方案一->内部快速拷贝
    warfile='root@jenkins:/var/lib/docker/volumes/jenkins_home/_data/workspace/diaoyou-app/diaoyou-app/target/diaoyou-app-1.0.0.war'
    scp $warfile ~/tomcats/$app/webapps/ROOT.war 

    # 方案二->远程下载文件
    # wget -O diaoyou-app-1.0.0.war https://jenkins.diteng.site/job/diaoyou-app/ws/diaoyou-app/target/diaoyou-app-1.0.0.war
    # cp cp ~/diaoyou-app-1.0.0.war tomcats/$app/webapps/ROOT.war

    sudo docker start $app

    echo "finish update app $1."
}

update_app app8101

# 休息10秒等待缓存同步完成
sleep 10

update_app app8102