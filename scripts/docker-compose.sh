# Docker Compose

_URL=https://github.com/docker/compose/releases/latest
_URL=$(curl -sL -w %{url_effective} -o /dev/null $_URL)
_TAG=$(echo $_URL | cut -d / -f 8)
_URL=https://github.com/docker/compose/releases/download/$_TAG/docker-compose-$(uname -s)-$(uname -m)

sudo curl -L $_URL -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose

_URL=https://raw.githubusercontent.com/docker/compose/$_TAG/contrib/completion/bash/docker-compose
sudo curl -L $_URL -o /etc/bash_completion.d/docker-compose
