#!/bin/bash
app=$1
port=$2
sudo docker stop $app
sudo docker rm $app

cd ~
mkdir tomcats
mkdir tomcats/$app
mkdir tomcats/$app/webapps
mkdir tomcats/$app/logs

cp ~/summer-sample/target/summer-sample-1.3.2.war ~/tomcats/$app/webapps/ROOT.war
cp -R ~/summer-install/docker/factory/tomcat-conf/ ~/tomcats/$app/conf/

sudo docker run -d --name $app -p $port:8080 -h $app \
    --restart=always \
    -v ~/tomcats/$app/webapps:/opt/tomcat/webapps \
    -v ~/tomcats/$app/conf:/opt/tomcat/conf \
    -v ~/tomcats/$app/logs:/opt/tomcat/logs \
    -v ~/summer-application.properties:/root/summer-application.properties \
    summer/tomcat

#docker exec -it $app /bin/bash
#docker logs --tail 200 -f $app
