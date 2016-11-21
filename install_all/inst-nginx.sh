#!/bin/bash

 
	mkdir /nginx
	cd /home
	rm -rf nginx.tar
	wget  http://115.28.150.165:8088/images/nginx.tar
	cd /nginx
	rm -rf nginx_1.tar.gz	
	wget  http://115.28.150.165:8088/profile/nginx_1.tar.gz	
	#mv /home/nginx.tar.gz /nginx
	tar -zxvf /nginx/nginx_1.tar.gz
	
	cd /nginx/nginx_1/conf
	chmod 777 sever.conf
	sed -i -e 's|115.28.150.165:8080|totom:8080|' sever.conf
	chmod 644 sever.conf
	
	sudo docker load </home/nginx.tar
	cd /nginx/nginx_1
	docker run -p 80:80 --name mynginx  -v $PWD/www:/www -v $PWD/config:/etc/nginx/conf.d -v $PWD/logs:/wwwlogs  -d nginx
		exit 0
		;;
 