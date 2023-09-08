# Microsoft Azure CLI
# https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-linux

sudo apt-get install -y curl

curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --yes --dearmor -o /etc/apt/keyrings/microsoft-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/microsoft-archive-keyring.gpg] https://packages.microsoft.com/repos/azure-cli/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/azure-cli.list

sudo apt-get update
sudo apt-get install -y azure-cli

# Logout required for autocomplete