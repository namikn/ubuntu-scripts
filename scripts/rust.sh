# Rust, $HOME directory installation, default
# https://www.rust-lang.org/tools/install

# Copy/paste to shell or run as ./rust.sh !

# No prompt, accept defaults
curl -sSL https://sh.rustup.rs | sh -s -- -y

# Configure the current shell
source $HOME/.cargo/env

# For user-managed user-specific commands/binaries
_DIR=$HOME/.local/share/bash-completion/completions
mkdir -p $_DIR

rustup completions bash > $_DIR/rustup
rustup completions bash cargo > $_DIR/cargo

# rustup self uninstall -y
