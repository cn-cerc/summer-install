#!/bin/bash

sh tomcat/bin/shutdown.sh

rm -rf /root/tomcat/webapps/ROOT

rm -rf /root/tomcat/webapps/ROOT.war

cp app-1.0.0.war ~/tomcat/webapps/ROOT.war

sh tomcat/bin/startup.sh
