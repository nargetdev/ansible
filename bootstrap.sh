#!/usr/bin/env bash
#set -e
#
#echo 'Installing Ansible'
#
## prefer pip for installing python packages over the older easy_install
##
#if [[ ! -x `which pip` ]]; then
#    sudo easy_install pip
#fi
#
#if [[ -x `which pip` && ! -x `which ansible` ]]; then
#    sudo CFLAGS=-Qunused-arguments CPPFLAGS=-Qunused-arguments pip install ansible
#fi
#
#echo 'Running Ansible to configure Dev machine'
#
#if [[ -x `which ansible` ]]; then
#    ansible-playbook -i hosts site.yml --ask-sudo-pass
#fi


# neo install
sudo easy_install pip
sudo pip install ansible
sudo pip install ansible --upgrade
