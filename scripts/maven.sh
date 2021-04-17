# Maven

_VERSION=3.8.1

_URL=https://downloads.apache.org/maven/maven-3/$_VERSION/binaries/apache-maven-$_VERSION-bin.tar.gz
curl -L $_URL -o apache-maven.tar.gz
sudo tar -xf apache-maven.tar.gz -C /opt
sudo ln -s /opt/apache-maven-$_VERSION/bin/mvn /usr/bin/mvn
rm -f apache-maven.tar.gz
