# MEGA/sync
# https://help.mega.io/installs-apps/desktop-syncing/linux

sudo apt-get install -y curl

curl -sSL https://mega.nz/linux/repo/xUbuntu_$(lsb_release -rs)/Release.key | sudo gpg --yes --dearmor -o /etc/apt/keyrings/mega-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/mega-archive-keyring.gpg] https://mega.nz/linux/repo/xUbuntu_$(lsb_release -rs)/ ./" | sudo tee /etc/apt/sources.list.d/mega.list

sudo apt-get update
sudo apt-get install -y megasync

# The package installs its key at /usr/share/keyrings/meganz-archive-keyring.gpg 
# and source at sources.list.d/megasync.list
sudo rm -f /usr/share/keyrings/meganz-archive-keyring.gpg
sudo rm -f /etc/apt/sources.list.d/megasync.list
