# Windscribe (VPN)
# https://windscribe.com/guides/linux

_URL=https://windscribe.com/install/desktop/linux_deb_x64

echo $_URL
curl -sSL $_URL -o windscribe.deb
# Installs in /opt
sudo dpkg -i windscribe.deb
rm -f windscribe.deb
