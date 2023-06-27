# Docker, CE
# https://docs.docker.com/engine/install/

sudo apt-get install -y curl

curl -sSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --yes --dearmor -o /etc/apt/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list

sudo apt-get update
sudo apt-get install -y docker-ce

# Logout required
sudo usermod -aG docker $USER
