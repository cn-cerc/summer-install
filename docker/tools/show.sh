#!/bin/bash
app=$1

sudo docker logs --tail 200 -f $app
