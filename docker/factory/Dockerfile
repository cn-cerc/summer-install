FROM docker.io/dordoka/tomcat
MAINTAINER cn.cerc.summer

#RUN apt-get update 

#synac with memcached
ADD tomcat-lib/*.jar /opt/tomcat/lib/
ADD tomcat-conf/*.* /opt/tomcat/conf/


#add crypt with uzu
ADD crypt/*.jar /usr/lib/jvm/java-8-oracle/jre/lib/security/
