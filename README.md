### Dotprofiles

Clean, safe and minimalistic dotprofiles for:

    ~/.zshrc     # MacOS.
    ~/.bashrc    # Red Hat Enterprise Linux, Ubuntu etc.
    ~/.vimrc     # Python programming.


#### Note-to-self
To always source bashrc, add something like this to ~/.bash\_profile:

    if [[ "$BASHRC_SOURCED" != "yes" && -r "$HOME/.bashrc" ]]; then
        source "$HOME/.bashrc"
    fi

🧘
