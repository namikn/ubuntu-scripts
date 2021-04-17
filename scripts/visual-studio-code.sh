# Visual Studio Code

curl -L https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt-get update
sudo apt-get install -y code
