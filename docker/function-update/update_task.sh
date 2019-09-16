#!/bin/bash

update_task() {
    app=$1

    cd ~
    sudo docker stop $app

    rm -rf tomcats/$app/webapps/ROOT
    rm -rf tomcats/$app/webapps/ROOT.war

    # 方案一->内部快速拷贝
    warfile='root@jenkins:/var/lib/docker/volumes/jenkins_home/_data/workspace/diaoyou-task/diaoyou-task/target/diaoyou-task-1.0.0.war'
    scp $warfile ~/tomcats/$app/webapps/ROOT.war 

    # 方案二->远程下载文件
    # wget -O diaoyou-admin-1.0.0.war https://jenkins.diteng.site/job/diaoyou-app/ws/diaoyou-app/target/diaoyou-app-1.0.0.war
    # cp cp ~/diaoyou-admin-1.0.0.war tomcats/$app/webapps/ROOT.war

    sudo docker start $app

    sudo docker logs --tail 200 -f $app
}

update_task task8105