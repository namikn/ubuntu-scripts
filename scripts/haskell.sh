# The Haskell Tool Stack
# https://haskellstack.org

# Installs in /usr/local/bin/stack
curl -sSL https://get.haskellstack.org/ | sudo sh

_DIR=/usr/local/share/bash-completion/completions
sudo mkdir -p $_DIR
stack --bash-completion-script $(which stack) | sudo tee $_DIR/stack

# Alternative, older packages
# sudo apt-get install -y haskell-platform