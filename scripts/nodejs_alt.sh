# Node.js
# https://github.com/nodesource/distributions

_VERSION=lts # current, lts

curl -sSL https://deb.nodesource.com/setup_$_VERSION.x | sudo bash
sudo apt-get install -y nodejs

# Update NPM
sudo npm install -g npm

# sudo npm install -g yarn
# sudo npm install -g http-server
# sudo npm install -g serverless
