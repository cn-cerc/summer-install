#!/bin/bash

cd ~
#git clone -b beta https://github.com/cn-cerc/summer-sample.git

cd ufamily
git pull
mvn clean package -P serverMaster

cd ~

