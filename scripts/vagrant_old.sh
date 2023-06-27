# HashiCorp Vagrant
# https://developer.hashicorp.com/vagrant

# Install from ZIP, before official HashiCorp packages

sudo apt-get install -y curl
sudo apt-get install -y jq
sudo apt-get install -y unzip

_URL=https://releases.hashicorp.com/vagrant/index.json
_URL=$(curl -sSL $_URL | jq --raw-output '.versions | to_entries | map(select(.key | contains("-") | not)) | max_by(.key | split(".") | map(tonumber)) | .value.builds[] | select(.os == "linux" and .arch == "amd64") | select(.url|endswith(".zip")) | .url')

echo $_URL
curl -sSL $_URL -o vagrant.zip
sudo unzip -d /usr/local/bin vagrant.zip
rm -f vagrant.zip

# https://github.com/AppImage/AppImageKit/wiki/FUSE
sudo apt-get install -y libfuse2

# For user-managed system-wide commands
_DIR=/usr/local/share/bash-completion/completions
sudo mkdir -p $_DIR

_URL=https://raw.githubusercontent.com/hashicorp/vagrant/master/contrib/bash/completion.sh
sudo curl -sSL $_URL -o $_DIR/vagrant
