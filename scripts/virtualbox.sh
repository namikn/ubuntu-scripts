# VirtualBox
# https://www.virtualbox.org/wiki/Linux_Downloads

_VERSION=6.1

sudo apt-get install -y curl

curl -sSL https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --yes --dearmor -o /etc/apt/keyrings/virtualbox-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/virtualbox-archive-keyring.gpg] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list

sudo apt-get update
sudo apt-get install -y virtualbox-$_VERSION
