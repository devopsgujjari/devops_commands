#!/bin/sh

# installing jdk8

yum install wget -y

mkdir /home/ansible/java

cd /home/ansible/java

wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz

tar -xzvf jdk-8u131-linux-x64.tar.gz

mv jdk1.8.0_131 java8

