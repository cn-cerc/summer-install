#/bin/bash

cd ~

wget -O jenkins.war http://mirrors.jenkins.io/war-stable/latest/jenkins.war

docker cp jenkins.war jenkins:/usr/share/jenkins

docker restart jenkins
