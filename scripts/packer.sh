# HashiCorp Packer
# https://developer.hashicorp.com/packer

sudo apt-get install -y curl

curl -sSL https://apt.releases.hashicorp.com/gpg | sudo gpg --yes --dearmor -o /etc/apt/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/etc/apt/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt-get update
sudo apt-get install -y packer

# Updates ~/.bashrc, logout required
#packer -autocomplete-install

# For package-managed system-wide commands
_DIR=/usr/share/bash-completion/completions
echo "complete -C /usr/bin/packer packer" | sudo tee $_DIR/packer
