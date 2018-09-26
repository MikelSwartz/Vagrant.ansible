apt-get install software-properties-common -y
apt-add-repository ppa:ansible/ansible -y
add-apt-repository ppa:jonathonf/python-2.7 -y #Installs the latest 2.7 version of python to get around an SSL certificate error
apt-get update
apt-get install ansible vim sshpass tree python2.7 -y

#Install Docker components. 
apt-get install docker-compose -y
curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
base=https://github.com/docker/machine/releases/download/v0.14.0 &&   curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine &&   sudo install /tmp/docker-machine /usr/local/bin/docker-machine
 
cat >/etc/bash_completion.d/docker-machine-prompt.bash << EOL
base=https://raw.githubusercontent.com/docker/machine/v0.14.0
for i in docker-machine-prompt.bash docker-machine-wrapper.bash docker-machine.bash
do
  sudo wget "$base/contrib/completion/bash/${i}" -P /etc/bash_completion.d
done
EOL

echo PS1="[\u@\h \W$(__docker_machine_ps1)]" >> /home/vagrant/.bashrc

apt-get update
apt-get install linux-image-extra-$(uname -r) linux-image-extra-virtual -y
apt-get update
apt-get install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
apt-get install docker-ce -y
