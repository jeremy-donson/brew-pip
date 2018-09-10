#!/bin/bash

# Create machines. Deploy three hosts. Check total runtime.
time vagrant up

# we still need ansible binary, config file, hosts file.
echo "[app]
192.168.60.4
192.168.60.5

[db]
192.168.60.6

[multi:children]
app
db

[multi:vars]
ansible_ssh_user=vagrant
ansible_ssh_private_key_file = ~/.vagrant.d/insecure_private_key
" > /etc/ansible/hosts


ansible -m ping multi

yum install epel-release
yum install git

yum -y install ansible

yum update
yum upgrade

ansible --version

