# Ruby

_VERSION=2.7

sudo apt-add-repository -y ppa:brightbox/ruby-ng
sudo apt-get update
sudo apt-get install -y ruby$_VERSION
sudo apt-get install -y ruby-switch

# sudo apt-get install -y ruby$_VERSION-dev
# sudo ruby-switch --list
# sudo ruby-switch --set ruby2.6
