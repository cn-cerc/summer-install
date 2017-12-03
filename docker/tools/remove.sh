#!/bin/bash
app=$1

docker stop $app
docker rm $app

rm -rf ~/tomcats/$app
