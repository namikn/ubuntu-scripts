## Binary Paths

    # For package-managed system-wide commands
    /usr/bin        # For a single binary or link (to /opt)
    /opt            # For multi-file packages

    # For user-managed system-wide commands
    /usr/local/bin  # For a single binary or link (to /opt)
    /opt            # For multi-file packages

## Bash Completion Paths

    # For system-managed system-wide commands
    /etc/bash_completion.d

    # For package-managed system-wide commands
    /usr/share/bash-completion/completions

    # For user-managed system-wide commands
    _DIR=/usr/local/share/bash-completion/completions
    sudo mkdir -p $_DIR

    # For user-managed user-specific commands
    _DIR=~/.local/share/bash-completion/completions
    mkdir -p $_DIR
