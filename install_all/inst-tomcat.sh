#!/bin/bash


 tomcat)  
	mkdir  /tomcat
	cd /home
	rm -rf tomcat.tar
	wget http://115.28.150.165:8088/images/tomcat.tar
	cd /tomcat
	rm -rf tomcat.tar.gz
	wget  http://115.28.150.165:8088/profile/tomcat.tar.gz
	#mv /home/tomcat.tar.gz /tomcat
	tar -zxvf /tomcat/tomcat.tar.gz 
	#mv /tomcat/tomcat /tomcat/tomcat_1
	cd /tomcat/tomcat_1
    sudo docker load </home/tomcat.tar
    docker run --name tomcat -p 8080:8080 -v $PWD/webapps:/usr/local/tomcat/webapps -v $PWD/conf:/usr/local/tomcat/conf -v $PWD/logs:/usr/local/tomcat/logs  -d tomcat_jdk1.8
	#修改nginx默认配置的映射地址
	cd /nginx/nginx_1/conf
	chmod 777 sever.conf
	sed -i -e 's|115.28.150.165:8080|totom:8080|' sever.conf
	chmod 644 sever.conf
	exit 0
   ;;  
 