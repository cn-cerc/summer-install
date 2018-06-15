#!/bin/bash

docker run -d --name mysql -p 3306:3306 -h mysql/mysql-server
