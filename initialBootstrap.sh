 #! /bin/bash

 # Minimal (and consistent) initial bootstrap of the thing (ansible) that bootstraps the thing (my system)

 mkdir -p ~/DEV/INFRASTRUCURE

 if ! [ -x "$(command -v git)" ]; then
   echo 'Error: git is not installed.' >&2
   exit 1
 fi

git clone https://github.com/nargetdev/ansible.git ~/DEV/INFRASTRUCURE/ansible
