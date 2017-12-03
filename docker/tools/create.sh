#!/bin/bash
app=$1
post=$2
docker stop $app
docker rm $app

cd ~
mkdir tomcats
mkdir tomcats/$app
mkdir tomcats/$app/webapps
mkdir tomcats/$app/logs

cp ~/summer-sample/target/summer-sample-1.3.2.war ~/tomcats/$app/webapps/ROOT.war
cp -R ~/summer-install/docker/factory/tomcat-conf/ ~/tomcats/$app/conf/

docker run -d --name $app -p $port:8080 -h $app \
    -v ~/tomcats/$app/webapps:/opt/tomcat/webapps \
    -v ~/tomcats/$app/conf:/opt/tomcat/conf \
    -v ~/tomcats/$app/logs:/opt/tomcat/logs \
    summer/tomcat
	
#docker exec -it $app /bin/bash
#docker logs --tail 200 -f $app
