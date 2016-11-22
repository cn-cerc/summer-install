#!/bin/bash

 
	mkdir /nginx
	cd /home
	rm -rf nginx.tar
	wget  http://115.28.151.75/images/nginx.tar
	cd /nginx
	rm -rf nginx_1.tar.gz	
	wget  http://115.28.151.75/profile/nginx_1.tar.gz	
	#mv /home/nginx.tar.gz /nginx
	tar -zxvf /nginx/nginx_1.tar.gz
	
	cd /nginx/nginx_1/conf

	
	sudo docker load </home/nginx.tar
	cd /nginx/nginx_1
	docker run -p 80:80 --name mynginx  -v $PWD/www:/www -v $PWD/config:/etc/nginx/conf.d -v $PWD/logs:/wwwlogs  -d nginx
		exit 0
		;;
 