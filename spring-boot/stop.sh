#!/bin/bash

curl http://127.0.0.1/stop

# 找到并关闭jar的进程
PID=$(ps -ef | grep app-1.0.0.jar | grep -v grep | awk '{ print $2 }')
if [ -z "$PID" ]
then
    echo Application is already stopped.
else
    echo kill $PID
    kill $PID
fi
