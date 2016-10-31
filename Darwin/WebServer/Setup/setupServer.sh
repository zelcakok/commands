#!/bin/bash
mkdir ~/SelfCommand
export PATH=$PATH:~/SelfCommand
sudo cp /etc/apache2/httpd.conf /etc/apache2/httpd.conf.bak
sudo cp -f httpd.conf /etc/apache2/httpd.conf
echo "Installing batches"
sudo cp serverStatus.sh ~/SelfCommand/webserverstatus
sudo cp stopServer.sh ~/SelfCommand/stopwebserver
sudo cp startServer.sh ~/SelfCommand/startwebserver
sudo apachectl start
echo "Server started"
open http://localhost
exit 0

