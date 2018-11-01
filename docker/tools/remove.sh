#!/bin/bash
app=$1

sudo docker stop $app
sudo docker rm $app

rm -rf ~/tomcats/$app
