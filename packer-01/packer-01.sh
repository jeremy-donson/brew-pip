#!/bin/bash

# http://blog.traintracks.io/building-a-devbox-with-packer-vagrant-and-ansible-2/

brew cask install virtualbox
brew cask install vagrant
brew install packer
brew install ansible

cd ~/Desktop/bew-pip/
git clone git@github.com:traintracks/devbox.git
cd devbox
rm -rf .git
ls -al

cd packer
packer build devbox.json

more Vagrantfile

vagrant box add devbox packer/builds/devbox.box
vagrant up


:'
packer  
├── ansible
│   └── playbook.yml
├── devbox.json
├── files
│   └── motd
├── http
│   └── preseed.cfg
└── scripts
    ├── ansible.sh
    ├── cleanup.sh
    ├── install.sh
    └── setup.sh
'

