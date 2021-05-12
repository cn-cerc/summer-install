#!/bin/bash
app=official-website

sudo docker logs --tail 200 -f $app
