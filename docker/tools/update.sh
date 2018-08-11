#!/bin/bash
app=$1

cd ~

docker stop $app

rm -rf tomcats/$app/webapps/ROOT
rm -rf tomcats/$app/webapps/ROOT.war

cp summer-sample/target/summer-sample-1.0.0.war tomcats/$app/webapps/ROOT.war

docker start $app

docker logs --tail 200 -f $app
