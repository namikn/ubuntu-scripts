# JetBrains Toolbox
# https://www.jetbrains.com/help/idea/installation-guide.html

sudo apt-get install -y curl
sudo apt-get install -y jq

_URL="https://data.services.jetbrains.com/products/releases?code=TBA&type=release&latest=true"
_URL=$(curl -sSL $_URL | jq --raw-output '.TBA | max_by(.version | split(".") | map(tonumber)) | .downloads.linux.link')

echo $_URL
curl -sSL $_URL -o jetbrains-toolbox.tar.gz
sudo tar -xf jetbrains-toolbox.tar.gz -C /usr/local/bin --strip-components=1
rm -f jetbrains-toolbox.tar.gz

# jetbrains-toolbox &> /dev/null
