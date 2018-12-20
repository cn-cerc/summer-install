#!/bin/bash

app=$1

sh ~/$app/bin/shutdown.sh

rm -rf ~/$app/webapps/ROOT

rm -rf ~/$app/webapps/ROOT.war

cp ~/fishing-project/fishing-app/target/fishing-app-1.0.0.war ~/$app/webapps/ROOT.war

sh ~/$app/bin/startup.sh

tail -n 200 -f ~/$app/logs/catalina.out