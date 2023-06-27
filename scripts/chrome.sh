# Google Chrome

sudo apt-get install -y curl

curl -sSL https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo gpg --yes --dearmor -o /etc/apt/keyrings/google-chrome-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/google-chrome-archive-keyring.gpg] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list

sudo apt-get update
sudo apt-get install -y google-chrome-stable

# The package installs its key at trusted.gpg.d/google-chrome.gpg 
sudo rm -f /etc/apt/trusted.gpg.d/google-chrome.gpg
# The package overwrites its source at sources.list.d/google-chrome.list
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/google-chrome-archive-keyring.gpg] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
