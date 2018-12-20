#!/bin/bash

app=$1

tail -n 200 -f ~/$app/logs/catalina.out
