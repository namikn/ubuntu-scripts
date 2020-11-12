# Google Cloud SDK

curl -L https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
echo "deb https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee /etc/apt/sources.list.d/google-cloud-sdk.list
sudo apt-get update
sudo apt-get install -y google-cloud-sdk
