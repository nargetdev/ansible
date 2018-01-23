 #! /bin/bash

 # Minimal (and consistent) initial bootstrap of the thing (ansible) that bootstraps the thing (my system)

# MACROS
GUI_EDITOR=VSCODE


# Parse the commands
GUI=0

while getopts h:g option
do
 case "${option}"
 in
 h) INSTALL_HOME=${OPTARG};;
 g) GUI=1;;
 esac
done

echo "Welcome to initialBootstrap!"
echo "This is a minimal script which should get your system to the following:"
echo "@expect   \$ << ansible playbook command >> works.. || ./simple_run.sh"


TARGET_DIR="$INSTALL_HOME/DEV/INFRASTRUCURE"
ansible_dir="$TARGET_DIR/ansible"
 mkdir -p "$TARGET_DIR"

 if ! [ -x "$(command -v git)" ]; then
   echo 'Error: git is not installed.' >&2
   exit 1
 fi



 if [ -d "$ansible_dir" ]; then
   echo 'Ansible dir already cloned.'
else
  echo 'IDEMPOTENT: cloning ansible system config'
  git clone https://github.com/nargetdev/ansible.git "$ansible_dir"
 fi

  if ! [ -x "$(command -v ansible)" ]; then
   echo 'Ansible is not installed.  Getting it.'
   sudo apt-get update
   sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
sudo apt-get install ansible -y
 fi


if ! [ -x "$(command -v code)" ]; then
   echo "GUI specified (via '-g' opt) [LOGIC TO INSTALL $GUI_EDITOR]" >&2
   exit 1
else
  # Open the dir for viewing / actions..
  # code "$ansible_dir"
fi
