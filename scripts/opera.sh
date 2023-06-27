# Opera

sudo apt-get install -y curl

sudo apt-get install -y debconf-utils
# No to "Do you want to update Opera together with the rest of the system?"
echo "opera-stable opera-stable/add-deb-source boolean false" | sudo debconf-set-selections

curl -sSL https://deb.opera.com/archive.key | sudo gpg --yes --dearmor -o /etc/apt/keyrings/opera-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/opera-archive-keyring.gpg] https://deb.opera.com/opera-stable/ stable non-free" | sudo tee /etc/apt/sources.list.d/opera.list

sudo apt-get update
sudo apt-get install -y opera-stable

# The package installs its key at trusted.gpg.d/opera*.gpg 
sudo rm -f /etc/apt/trusted.gpg.d/opera*.gpg


# Yes/No to "Do you want to update Opera together with the rest of the system?"
# sudo dpkg-reconfigure opera-stable
