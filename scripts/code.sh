# Microsoft Visual Studio Code
# https://code.visualstudio.com/docs/setup/linux

sudo apt-get install -y curl

curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --yes --dearmor -o /etc/apt/keyrings/microsoft-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/microsoft-archive-keyring.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/microsoft-code.list

sudo apt-get update
sudo apt-get install -y code

# The package installs its key at trusted.gpg.d/microsoft.gpg 
# and source at sources.list.d/vscode.list
sudo rm -f /etc/apt/trusted.gpg.d/microsoft.gpg
sudo rm -f /etc/apt/sources.list.d/vscode.list
