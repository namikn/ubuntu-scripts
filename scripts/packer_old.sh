# HashiCorp Packer
# https://developer.hashicorp.com/packer

# Install from ZIP, before official HashiCorp packages

sudo apt-get install -y curl
sudo apt-get install -y jq
sudo apt-get install -y unzip

_URL=https://releases.hashicorp.com/packer/index.json
_URL=$(curl -sSL $_URL | jq --raw-output '.versions | to_entries | map(select(.key | contains("-") | not)) | max_by(.key | split(".") | map(tonumber)) | .value.builds[] | select(.os == "linux" and .arch == "amd64") | .url')

echo $_URL
curl -sSL $_URL -o packer.zip
sudo unzip -d /usr/local/bin packer.zip
rm -f packer.zip

# Updates ~/.bashrc, logout required
#packer -autocomplete-install

# For user-managed system-wide commands
_DIR=/usr/local/share/bash-completion/completions
sudo mkdir -p $_DIR
echo "complete -C /usr/local/bin/packer packer" | sudo tee $_DIR/packer
