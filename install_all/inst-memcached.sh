#!/bin/bash





 
   mkdir /memcached
   cd /home
   rm -rf memcached.tar
   wget http://115.28.151.75/images/memcached.tar
   
   sudo docker load </home/memcached.tar
   docker run -dp 45001:11211 --name mymemcached memcached
   exit 0
   ;;

    



