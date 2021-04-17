# AWS CLI, 2.x

curl -L https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o aws-cli.zip
unzip aws-cli.zip
sudo ./aws/install # --install-dir /usr/local/aws-cli --bin-dir /usr/local/bin
rm -fr aws-cli.zip aws/
echo "complete -C $(which aws_completer) aws" >> ~/.bashrc

# sudo ./aws/install --install-dir /usr/local/aws-cli --bin-dir /usr/local/bin --update