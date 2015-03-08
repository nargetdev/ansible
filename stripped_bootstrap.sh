#!/bin/sh
echo 'Running Ansible to configure Dev machine'

if [[ -x `which ansible` ]]; then
    ansible-playbook -i hosts site.yml --ask-sudo-pass
fi
