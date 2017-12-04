#!/bin/bash

#更新软件源
apt-get update

if [ "$?" -ne 0 ]
then
        echo "更新软件源失败,请重试"
        exit 1
fi

#安装maven3.3.9
apt-get -y install maven

if [ "$?" -ne 0 ]
then
        echo "安装maven失败,请重试"
        exit 1
fi
