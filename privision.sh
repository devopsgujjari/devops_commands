#!/bin/bash -eu
# provision.sh -- install git python python-devel python-pip openssl Ansible

# install epel-release and update

yum install -y epel-release
yum update -y
yum install -y git python python-pip python-devel openssl Ansible
Ansible --version

echo "installation successfully"
