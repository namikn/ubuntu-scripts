# Docker Compose, standalone
# https://docs.docker.com/compose/

sudo apt-get install -y curl

_URL=https://github.com/docker/compose/releases/latest
_URL=$(curl -sSL -w %{url_effective} -o /dev/null $_URL)
_TAG=$(echo $_URL | cut -d / -f 8)
_URL=https://github.com/docker/compose/releases/download/$_TAG/docker-compose-$(uname -s)-$(uname -m)

echo $_URL
sudo curl -sSL $_URL -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# For user-managed system-wide commands/binaries
_DIR=/usr/local/share/bash-completion/completions
sudo mkdir -p $_DIR

_TAG=1.29.2 # Completion (contrib/completion/) removed in v2.x, the last v1.x is 1.29.2
_URL=https://raw.githubusercontent.com/docker/compose/$_TAG/contrib/completion/bash/docker-compose
sudo curl -sSL $_URL -o $_DIR/docker-compose
