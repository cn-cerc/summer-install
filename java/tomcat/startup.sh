#!/bin/bash

sh tomat/bin/shutdown.sh

rm -rf /root/tomat/webapps/ROOT

rm -rf /root/tomat/webapps/ROOT.war

cp app-1.0.0.war ~/tomat/webapps/ROOT.war

sh tomat/bin/startup.sh
