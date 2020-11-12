# Rust, $HOME directory installation, default

curl -L https://sh.rustup.rs | sh -s -- -y # No prompt, accept defaults
source $HOME/.cargo/env # Configure the current shell
_DIR=~/.local/share/bash-completion/completions
mkdir -p $_DIR
rustup completions bash > $_DIR/rustup
rustup completions bash cargo > $_DIR/cargo
