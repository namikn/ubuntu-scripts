# OpenJDK, Azul Zulu

_VERSION=17 # LTS

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 219BD9C9
echo "deb [arch=amd64] https://repos.azul.com/zulu/deb/ stable main" | sudo tee /etc/apt/sources.list.d/zulu-openjdk.list
sudo apt-get update
sudo apt-get install -y zulu$_VERSION

# sudo update-alternatives --config java
