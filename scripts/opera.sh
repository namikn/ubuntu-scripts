# Opera

curl -L https://deb.opera.com/archive.key | sudo apt-key add
echo "deb [arch=amd64] https://deb.opera.com/opera-stable/ stable non-free" | sudo tee /etc/apt/sources.list.d/opera.list
sudo apt-get update
sudo apt-get install -y debconf-utils # Prerequisite
echo "opera-stable opera-stable/add-deb-source boolean false" | sudo debconf-set-selections
sudo apt-get install -y opera-stable
