#!bin/bash

# update package
apt update && apt upgrade -y

# install java8
apt install openjdk-8-jdk-headless -y

# install git
apt install git -y

# get summer-install
git clone https://github.com/cn-cerc/summer-install.git

# install tomcat
cd ~
cp ~/summer-install/java/tomcat/tools/* ~

cd ~
mkdir tomcats
tar -zxvf tomcat.tgz -C ~/tomcats/
cd tomcats
mv tomcat app8101

# update java security 117
# cd /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/security
# vim java.security