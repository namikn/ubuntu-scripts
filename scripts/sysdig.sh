# Sysdig
# https://github.com/draios/sysdig/wiki/sysdig-examples

sudo apt-get install -y curl

curl -sSL https://download.sysdig.com/DRAIOS-GPG-KEY.public | sudo gpg --yes --dearmor -o /etc/apt/keyrings/draios-archive-keyring.gpg
_ARCH=amd64 # $(uname -m) might return x86_64, which does not exist in the repo 
echo "deb [signed-by=/etc/apt/keyrings/draios-archive-keyring.gpg] https://download.sysdig.com/stable/deb stable-$_ARCH/" | sudo tee /etc/apt/sources.list.d/draios.list

sudo apt-get update
sudo apt-get install -y sysdig

# sudo apt-get install -y linux-headers-$(uname -r)

# For package-managed system-wide commands
_URL=https://raw.githubusercontent.com/draios/sysdig/dev/scripts/completions/bash/sysdig
_DIR=/usr/share/bash-completion/completions
sudo curl -sSL $_URL -o $_DIR/sysdig
