# neo install
echo 'Installing Pip, then Ansible'

sudo easy_install pip
sudo pip install ansible
sudo pip install ansible --upgrade


echo 'Running Ansible to configure Dev machine'

if [[ -x `which ansible` ]]; then
   ansible-playbook -i hosts site.yml --ask-sudo-pass
fi
