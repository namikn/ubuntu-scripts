# Ruby
# https://www.brightbox.com/docs/ruby/ubuntu/
# https://launchpad.net/~brightbox/+archive/ubuntu/ruby-ng

# Ubuntu Focal/20.04 LTS is the latest supported version by this PPA

_VERSION=2.7

sudo apt-add-repository -y ppa:brightbox/ruby-ng
sudo apt-get update
sudo apt-get install -y ruby$_VERSION
sudo apt-get install -y ruby-switch

# sudo apt-get install -y ruby$_VERSION-dev
# sudo ruby-switch --list
# sudo ruby-switch --set ruby2.6
