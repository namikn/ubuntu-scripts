# AWS CLI, 2.x
# https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

# Defaults
# sudo ./aws/install --install-dir /usr/local/aws-cli --bin-dir /usr/local/bin
# sudo ./aws/install --install-dir /usr/local/aws-cli --bin-dir /usr/local/bin --update

sudo apt-get install -y curl
sudo apt-get install -y unzip

curl -sSL https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o aws-cli.zip
unzip aws-cli.zip
sudo ./aws/install --install-dir /opt/aws-cli
rm -rf aws-cli.zip aws/

# For user-managed system-wide commands
_DIR=/usr/local/share/bash-completion/completions
sudo mkdir -p $_DIR
echo "complete -C $(which aws_completer) aws" | sudo tee $_DIR/aws
