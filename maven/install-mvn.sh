#!/bin/bash

cd ~
wget http://oss.mimrc.com/tools/linux/apache-maven-3.8.1-bin.tar.gz

tar -xzvf apache-maven-3.8.1-bin.tar.gz

rm -f apache-maven-3.8.1-bin.tar.gz

mv apache-maven-3.8.1 maven