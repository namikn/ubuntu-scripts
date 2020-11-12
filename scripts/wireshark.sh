# Wireshark

sudo add-apt-repository -y ppa:wireshark-dev/stable
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y wireshark
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y tshark
sudo usermod -aG wireshark $USER # Logout required
