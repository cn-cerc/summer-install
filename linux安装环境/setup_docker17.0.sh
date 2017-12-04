#!/bin/bash

#更新软件源
apt-get update

if [ "$?" -ne 0 ]
then
        echo "更新软件源失败,请重试"
        exit 1
fi


#安装docker17.0(ubuntu16.04版))
apt-get -y install docker.io

if [ "$?" -ne 0 ]
then
        echo "安装docker17失败,请重试"
        exit 1
fi
