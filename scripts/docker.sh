# Docker, CE

curl -L https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get install -y docker-ce
sudo usermod -aG docker $USER # Logout required
