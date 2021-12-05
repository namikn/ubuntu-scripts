# Vagrant

curl -L https://apt.releases.hashicorp.com/gpg | sudo apt-key add
echo "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt-get update
sudo apt-get install -y vagrant

_URL=https://raw.githubusercontent.com/hashicorp/vagrant/master/contrib/bash/completion.sh
sudo curl -L $_URL -o /etc/bash_completion.d/vagrant
