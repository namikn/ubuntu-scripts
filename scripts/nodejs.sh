# Node.js
# https://github.com/nodesource/distributions

_VERSION=18 # 20, 19, 18 LTS

sudo apt-get install -y curl

curl -sSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | sudo gpg --yes --dearmor -o /etc/apt/keyrings/nodesource-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/nodesource-archive-keyring.gpg] https://deb.nodesource.com/node_$_VERSION.x $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/nodesource.list

sudo apt-get update
sudo apt-get install -y nodejs

# Update NPM
sudo npm install -g npm

# sudo npm install -g yarn
# sudo npm install -g http-server
# sudo npm install -g serverless

# For user-managed system-wide commands
_DIR=/usr/local/share/bash-completion/completions
sudo mkdir -p $_DIR
node --completion-bash | sudo tee $_DIR/node