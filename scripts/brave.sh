# Brave

sudo apt-get install -y curl

curl -sSL https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo gpg --yes --dearmor -o /etc/apt/keyrings/brave-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/brave-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave.list

sudo apt-get update
sudo apt-get install -y brave-browser

# The package installs its keys at trusted.gpg.d/ and /usr/share/keyrings/
sudo rm -f /etc/apt/trusted.gpg.d/brave-browser-release.gpg
sudo rm -f /usr/share/keyrings/brave-browser-archive-keyring.gpg
