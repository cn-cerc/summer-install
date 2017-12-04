#!/bin/bash

#安装javaJDK
#查出java_home行数
myfile=/etc/profile
startLine=`sed -n '/JAVA_HOME/=' $myfile` #先计算带adc字符串行的行号
#有行数标示已更新
if [ $startLine ]
then
        echo "JDK已更新"
        exit 0
fi

mkdir /root/java
cd /root/java
wget http://uzu-2017-test.oss-cn-hangzhou.aliyuncs.com/down/other/jdk-8u73-linux-x64.tar.gz
tar -zxvf jdk-8u73-linux-x64.tar.gz

#设置java环境
echo "export JAVA_HOME=/root/java/jdk1.8.0_73" >> /etc/profile
echo "export PATH=$JAVA_HOME/bin:$PATH" >> /etc/profile
echo "export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar" >> /etc/profile
source /etc/profile
