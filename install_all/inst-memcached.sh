#!/bin/bash





 
   mkdir /memcached
   cd /home
   rm -rf memcached.tar
   wget http://115.28.150.165:8088/images/memcached.tar
   
   sudo docker load </home/memcached.tar
   docker run -dp 45001:11211 --name mymemcached memcached
   exit 1
   ;;
 *)  
   echo "Usage:  {docker|tomcat|mysql|nginx|mongodb|memcached}"  
   exit 0 
 
    



