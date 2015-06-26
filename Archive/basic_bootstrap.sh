ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew install ansible

# test out ssh keys
ssh-keygen -t dsa -P '' -f ~/.ssh/id_dsa

brew install https://raw.github.com/eugeneoden/homebrew/eca9de1/Library/Formula/sshpass.rb

ansible webservers -m git -a "repo=git://foo.example.org/repo.git dest=/srv/myapp version=HEAD"
