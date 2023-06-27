# Cloudflare WARP
# https://developers.cloudflare.com/warp-client/get-started/linux/

sudo apt-get install -y curl

curl -sSL https://pkg.cloudflareclient.com/pubkey.gpg | sudo gpg --yes --dearmor -o /etc/apt/keyrings/cloudflare-warp-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/cloudflare-warp-archive-keyring.gpg] https://pkg.cloudflareclient.com/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/cloudflare-warp.list

sudo apt-get update
sudo apt-get install -y cloudflare-warp
