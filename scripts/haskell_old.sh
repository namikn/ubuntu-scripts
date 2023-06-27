# Haskell
# https://launchpad.net/~hvr/+archive/ubuntu/ghc

# Ubuntu Focal/20.04 LTS is the latest supported version by this PPA

_VERSION_CABAL=3.4 # 3.6
_VERSION_GHC=9.0.1 # 9.2.1

sudo add-apt-repository -y ppa:hvr/ghc
sudo apt-get update
sudo apt-get install -y cabal-install-$_VERSION_CABAL
sudo apt-get install -y ghc-$_VERSION_GHC
