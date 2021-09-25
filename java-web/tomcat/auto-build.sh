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
touch ~/summer-application.properties

tar -zxvf apache-tomcat-8.5.71.tar.gz -C ~/tomcats/
cd tomcats
mv apache-tomcat-8.5.71 app8101
