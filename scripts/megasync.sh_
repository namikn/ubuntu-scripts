# MEGAsync
# https://help.mega.io/installs-apps/desktop-syncing/linux

_VERSION=4.9.4-3.1

_URL=https://mega.nz/linux/repo/xUbuntu_$(lsb_release -rs)/amd64/megasync_${_VERSION}_amd64.deb

echo $_URL
curl -sSL $_URL -o megasync.deb
sudo dpkg -i megasync.deb &> /dev/null
sudo apt-get install -yf
rm -f megasync.deb
