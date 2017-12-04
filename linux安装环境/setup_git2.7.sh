#!/bin/bash

#更新软件源
apt-get update

if [ "$?" -ne 0 ]
then
        echo "更新软件源失败,请重试"
        exit 1
fi

#安装git2.7
apt-get -y install git

if [ "$?" -ne 0 ]
then
        echo "安装git失败,请重试"
        exit 1
fi




