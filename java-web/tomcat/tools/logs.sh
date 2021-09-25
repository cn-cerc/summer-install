#!/bin/bash

app=$1

tail -n 512 -f ~/$app/logs/catalina.out
