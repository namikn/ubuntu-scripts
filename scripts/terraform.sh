# HashiCorp Terraform
# https://developer.hashicorp.com/terraform

sudo apt-get install -y curl

curl -sSL https://apt.releases.hashicorp.com/gpg | sudo gpg --yes --dearmor -o /etc/apt/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/etc/apt/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt-get update
sudo apt-get install -y terraform

# Updates ~/.bashrc, logout required
#terraform -install-autocomplete

# For package-managed system-wide commands
_DIR=/usr/share/bash-completion/completions
echo "complete -C /usr/bin/terraform terraform" | sudo tee $_DIR/terraform
