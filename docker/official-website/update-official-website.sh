#!/bin/bash
app=official-website

cd ~/www-zntieke-com

git pull

sudo docker stop $app

rm -rf tomcats/$app/webapps/ROOT/*

cp -r ~/www-zntieke-com/* ~/tomcats/$app/webapps/ROOT/

sudo docker start $app

sudo docker logs --tail 200 -f $app
