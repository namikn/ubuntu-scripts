# Microsoft Edge
# https://www.microsoft.com/en-us/edge/download

sudo apt-get install -y curl

curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --yes --dearmor -o /etc/apt/keyrings/microsoft-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/microsoft-archive-keyring.gpg] https://packages.microsoft.com/repos/edge stable main" | sudo tee /etc/apt/sources.list.d/microsoft-edge.list

sudo apt-get update
sudo apt-get install -y microsoft-edge-stable

# The package installs its key at trusted.gpg.d/microsoft-edge.gpg 
sudo rm -f /etc/apt/trusted.gpg.d/microsoft-edge.gpg
# The package overwrites its source at sources.list.d/microsoft-edge.list
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/microsoft-archive-keyring.gpg] https://packages.microsoft.com/repos/edge stable main" | sudo tee /etc/apt/sources.list.d/microsoft-edge.list
