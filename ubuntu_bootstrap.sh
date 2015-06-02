# neo install
echo 'Installing Pip, then Ansible'

if [[ ! -x `which pip` ]]; then
    sudo apt-get install python-pip
fi

echo
echo
echo "If that didn't work go get https://bootstrap.pypa.io/get-pip.py"
echo "python get-pip.py"

if [[ -x `which pip` && ! -x `which ansible` ]]; then
   sudo CFLAGS=-Qunused-arguments CPPFLAGS=-Qunused-arguments pip install ansible
fi

sudo pip install ansible --upgrade


echo 'Running Ansible to configure Dev machine'

if [[ -x `which ansible` ]]; then
   ansible-playbook -i hosts site.yml --ask-sudo-pass
fi
