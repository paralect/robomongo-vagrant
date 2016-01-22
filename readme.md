## Robomongo builds automation

This git repo is a set of vagrant files, which use vagrant images with all preinstalled dependencies to build & test robomongo. We use it internally in combination with CI server to automate robomongo builds.

The general idea is:
1. Run vagrant instance
2. Run ansible playbook, which build & test Robomongo
3. Copy OS specific package from vagrant to host machine

## Supported OS versions:
1. [OSX Yosemite 10.10](osx/yosemite-10.10/readme.md)
2. [Ubuntu 14.04](linux/ubuntu-14.04/readme.md)

## Prerequisites

1. [Vagrant](https://docs.vagrantup.com/v2/installation/)
2. [Ansible 1.9+](http://docs.ansible.com/ansible/intro_installation.html)
3. [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
