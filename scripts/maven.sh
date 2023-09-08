# Maven
# https://maven.apache.org/install.html

_VERSION=3.9.4

_URL=https://downloads.apache.org/maven/maven-3/$_VERSION/binaries/apache-maven-$_VERSION-bin.tar.gz

echo $_URL
curl -sSL $_URL -o apache-maven.tar.gz
sudo tar -xf apache-maven.tar.gz -C /opt
sudo ln -sf /opt/apache-maven-$_VERSION/bin/mvn /usr/local/bin/mvn
rm -f apache-maven.tar.gz
