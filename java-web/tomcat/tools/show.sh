#!/bin/bash

app=$1

tail -n 512 -f ~/tomcats/$app/logs/catalina.out
