# VirtualBox

_VERSION=6.1

curl -L http://download.virtualbox.org/virtualbox/debian/oracle_vbox_2016.asc | sudo apt-key add
echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
sudo apt-get update
sudo apt-get install -y virtualbox-$_VERSION
