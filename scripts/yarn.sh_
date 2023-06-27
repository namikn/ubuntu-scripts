# Yarn
# https://classic.yarnpkg.com/lang/en/docs/install/
# Installs Node.js LTS too

sudo apt-get install -y curl

curl -sSL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo gpg --yes --dearmor -o /etc/apt/keyrings/yarn-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/yarn-archive-keyring.gpg] https://dl.yarnpkg.com/debian stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update
sudo apt-get install -y yarn

# Alternative, preferred
# npm install -g yarn
