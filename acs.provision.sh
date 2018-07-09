apt-get install software-properties-common -y
apt-add-repository ppa:ansible/ansible -y
add-apt-repository ppa:jonathonf/python-2.7 -y #Installs the latest 2.7 version of python to get around an SSL certificate error
apt-get update
apt-get install ansible vim sshpass tree python2.7 -y
