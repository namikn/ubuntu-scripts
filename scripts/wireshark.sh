# Wireshark
# https://launchpad.net/~wireshark-dev/+archive/ubuntu/stable

sudo apt-get install -y debconf-utils
# Yes to "Should non-superusers be able to capture packets?"
echo "wireshark-common wireshark-common/install-setuid boolean true" | sudo debconf-set-selections

sudo add-apt-repository -y ppa:wireshark-dev/stable
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y wireshark
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y tshark
sudo usermod -aG wireshark $USER # Logout required

# Yes/No to "Should non-superusers be able to capture packets?"
# sudo dpkg-reconfigure wireshark-common
