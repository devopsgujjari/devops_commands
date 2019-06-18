#!/bin/bash -eu
# provision.sh -- Install Apache tomcat 8

# java installation 

yum install epel-release -y
yum update -y
yum install wget -y
mkdir /root/java
cd /root/java
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz
tar -xvzf jdk-8u131-linux-x64.tar.gz
mv jdk-8u131 java8
export JAVA_HOME=/root/java/java8
export PATH=$JAVA_HOME/bin:$PATH
java -version
mkdir /root/tomcat
cd /root/tomcat
wget http://us.mirrors.quenda.co/apache/tomcat/tomcat-8/v8.5.42/bin/apache-tomcat-8.5.42.tar.gz
tar -xvzf apache-tomcat-8.5.42.tar.gz
mv apache-tomcat-8.5.42 tomcat8
cd tomcat8/bin
./startup.sh
