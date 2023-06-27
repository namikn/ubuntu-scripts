# PHP
# https://launchpad.net/~ondrej/+archive/ubuntu/php

_VERSION=8.2

sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php$_VERSION

# sudo update-alternatives --config php
