# Haskell

# _VERSION_CABAL=3.4
# _VERSION_GHC=9.0.1

# sudo add-apt-repository -y ppa:hvr/ghc
# sudo apt-get update
# sudo apt-get install -y cabal-install-$_VERSION_CABAL
# sudo apt-get install -y ghc-$_VERSION_GHC


# The Haskell Tool Stack, https://haskellstack.org
curl -L https://get.haskellstack.org/ | sudo sh
stack --bash-completion-script stack >> ~/.bashrc
