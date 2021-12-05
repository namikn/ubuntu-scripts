# Windscribe (VPN)

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key FDC247B7
# echo "deb https://repo.windscribe.com/ubuntu $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/windscribe.list
echo "deb https://repo.windscribe.com/ubuntu bionic main" | sudo tee /etc/apt/sources.list.d/windscribe.list
sudo apt-get update
sudo apt-get install -y windscribe-cli

# windscribe login
# windscribe connect
