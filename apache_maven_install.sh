#!/bin/bash

#################################################################
#  Purpose : Apache Maven Installation	 			#
#  Author  : Abhijit Shinde					#
#  Note    : Pass Argument as required version			#
#	     e.g. ./apache_maven.sh 3.5.0			#
################################################################# 


if [ -d /opt/apache-maven-$1 ]
then
       	echo " Apache Maven $1 ALREADY INSTALLED "
else
	export http_proxy=http://<proxy_server_ip_address:port_num>
	export https_proxy=http://<proxy_server_ip_address:port_num>
	cd /opt/
	wget -O /opt/apache-maven-$1-bin.tar.gz --no-check-certificate https://repo.maven.apache.org/maven2/org/apache/maven/apache-maven/$1/apache-maven-$1-bin.tar.gz > /dev/null
	tar -zxvf apache-maven-$1-bin.tar.gz -C /opt > /dev/null
	rm -rf /opt/apache-maven-$1-bin.tar.gz
	echo " Apache Maven $1 INSTALLED SUCCESSFULLY "
fi
