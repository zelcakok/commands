#!/bin/bash
ps aux | grep httpd | grep root > nul
if [ $? -eq 1 ] 
then 
	echo "Offline"
else
	echo "Online"
fi
