# OpenJDK, Azul Zulu
# https://docs.azul.com/core/zulu-openjdk/install/debian

_VERSION=8

sudo apt-get install -y curl

curl -sSL https://repos.azul.com/azul-repo.key | sudo gpg --yes --dearmor -o /etc/apt/keyrings/azul-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/azul-archive-keyring.gpg] https://repos.azul.com/zulu/deb stable main" | sudo tee /etc/apt/sources.list.d/azul-zulu-openjdk.list

sudo apt-get update
sudo apt-get install -y zulu$_VERSION

# sudo update-alternatives --config java
