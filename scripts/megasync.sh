# MEGAsync

_URL=https://mega.nz/linux/MEGAsync/xUbuntu_$(lsb_release -rs)/amd64/megasync-xUbuntu_$(lsb_release -rs)_amd64.deb

curl -L $_URL -o megasync.deb
sudo dpkg -i megasync.deb &> /dev/null
sudo apt-get install -yf
rm -f megasync.deb
