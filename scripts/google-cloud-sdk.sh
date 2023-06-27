# Google Cloud SDK
# https://cloud.google.com/sdk/docs/install

sudo apt-get install -y curl

curl -sSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --yes --dearmor -o /etc/apt/keyrings/google-cloud-archive-keyring.gpg
echo "deb [signed-by=/etc/apt/keyrings/google-cloud-archive-keyring.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee /etc/apt/sources.list.d/google-cloud-sdk.list

sudo apt-get update
sudo apt-get install -y google-cloud-sdk
