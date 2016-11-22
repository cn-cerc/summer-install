#!/bin/bash




	mkdir /mongodb
	cd /home
	rm -rf mongodb.tar
	wget  http://115.28.151.75/images/mongodb.tar
	cd /mongodb
	rm -rf mongo.tar.gz
	wget  http://115.28.151.75/profile/mongo.tar.gz
	tar -zxvf /mongodb/mongo.tar.gz 
	cd /mongodb/mongo
	sudo docker load </home/mongodb.tar
	docker run -p  27018:27017 --name mymongodb -v $PWD/db:/data/db -d mongo	
		exit 1
		;;
