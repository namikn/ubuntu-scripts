# .NET Core

_VERSION=6.0

curl -L https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb -O
sudo dpkg -i packages-microsoft-prod.deb
rm -f packages-microsoft-prod.deb
sudo apt-get update
sudo apt-get install -y dotnet-sdk-$_VERSION
# sudo apt-get install -y aspnetcore-runtime-$_VERSION
