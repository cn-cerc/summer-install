#!/bin/bash
app=$1

docker logs --tail 200 -f $app
