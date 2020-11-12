# Brave

curl -L https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key add
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave.list
sudo apt-get update
sudo apt-get install -y brave-browser
