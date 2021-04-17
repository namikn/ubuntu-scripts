# Terraform

# _URL=https://releases.hashicorp.com/terraform/index.json
# _URL=$(curl -sL $_URL | jq --raw-output '.versions | to_entries | map(select(.key | contains("-") | not)) | max_by(.key | split(".") | map(tonumber)) | .value.builds[] | select(.os == "linux" and .arch == "amd64") | .url')

# curl -L $_URL -o terraform.zip
# sudo unzip -od /usr/bin terraform.zip
# rm -f terraform.zip


# Official HashiCorp packages
curl -L https://apt.releases.hashicorp.com/gpg | sudo apt-key add
echo "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt-get update
sudo apt-get install -y terraform

terraform -install-autocomplete # Updates ~/.bashrc
