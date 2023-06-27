# HashiCorp Vagrant
# https://developer.hashicorp.com/vagrant

sudo apt-get install -y curl

curl -sSL https://apt.releases.hashicorp.com/gpg | sudo gpg --yes --dearmor -o /etc/apt/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/etc/apt/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt-get update
sudo apt-get install -y vagrant

# Updates ~/.bashrc, logout required
#vagrant autocomplete install

# For package-managed system-wide commands
_URL=https://raw.githubusercontent.com/hashicorp/vagrant/master/contrib/bash/completion.sh
_DIR=/usr/share/bash-completion/completions
sudo curl -sSL $_URL -o $_DIR/vagrant
