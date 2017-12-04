#!/bin/bash

#更新软件源
apt-get update

if [ "$?" -ne 0 ]
then
        echo "更新软件源失败,请重试"
        exit 1
fi


#安装docker17.0
apt-get -y install docker.io

if [ "$?" -ne 0 ]
then
        echo "安装docker17失败,请重试"
        exit 1
fi

#安装git2.7
apt-get -y install git

if [ "$?" -ne 0 ]
then
        echo "安装git失败,请重试"
        exit 1
fi

#安装maven3.3.9
apt-get -y install maven

if [ "$?" -ne 0 ]
then
        echo "安装maven失败,请重试"
        exit 1
fi

#安装nginx1.10
#apt-get -y install nginx

if [ "$?" -ne 0 ]
then
        echo "安装nginx失败,请重试"
        exit 1
fi

#安装javaJDK
mkdir /root/java
cd /root/java
wget http://uzu-2017-test.oss-cn-hangzhou.aliyuncs.com/down/other/jdk-8u73-linux-x64.tar.gz
tar -zxvf jdk-8u73-linux-x64.tar.gz

#设置java环境
echo "export JAVA_HOME=/root/java/jdk1.8.0_73" >> /etc/profile
echo "export PATH=$JAVA_HOME/bin:$PATH" >> /etc/profile
echo "export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar" >> /etc/profile
source /etc/profile

#git获取代码
mkdir /root/git
cd /root/git
git clone https://github.com/mimrc/ufamily

#mvn打包代码
cd /root/git/ufamily
mvn clean install



