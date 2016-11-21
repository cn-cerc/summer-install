#!/bin/bash





 mongodb)  
	mkdir /mongodb
	cd /home
	rm -rf mongodb.tar
	wget  http://115.28.150.165:8088/images/mongodb.tar
	cd /mongodb
	rm -rf mongo.tar.gz
	wget  http://115.28.150.165:8088/profile/mongo.tar.gz
	tar -zxvf /mongodb/mongo.tar.gz 
	cd /mongodb/mongo_1
	sudo docker load </home/mongodb.tar
	docker run -p  27018:27017 --name mymongodb -v $PWD/db:/data/db -d mongo	
		exit 1
		;;
