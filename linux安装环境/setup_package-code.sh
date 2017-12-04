#!/bin/bash

#git获取代码
cd /root
git clone https://github.com/cn-cerc/summer-sample

#mvn打包代码
cd /root/summer-sample
mvn clean install

