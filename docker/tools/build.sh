#!/bin/bash

cd ~
#git clone -b beta https://github.com/mimrc/ufamily.git

cd ufamily
git pull
mvn clean package -P serverMaster

cd ~

