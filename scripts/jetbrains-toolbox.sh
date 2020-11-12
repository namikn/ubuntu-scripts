# JetBrains Toolbox

_URL=https://data.services.jetbrains.com/products/releases?code=TBA
_URL=$(curl -sL $_URL | jq --raw-output '.TBA | max_by(.version | split(".") | map(tonumber)) | .downloads.linux.link')

curl -L $_URL -o jetbrains-toolbox.tar.gz
sudo tar -xf jetbrains-toolbox.tar.gz -C /usr/bin --strip-components=1
rm -f jetbrains-toolbox.tar.gz

# jetbrains-toolbox &> /dev/null
