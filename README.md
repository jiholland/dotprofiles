### Dotprofiles

Clean, safe and minimalistic dotprofiles for:

    ~/.zshrc     # For MacOS.
    ~/.bashrc    # For Red Hat Enterprise Linux, Ubuntu etc.
    ~/.vimrc     # For python programming.

#### Note-to-self
To source bashrc, add something like this to bash\_profile (use zprofile for zshrc):

    if [[ "$BASHRC_SOURCED" != "yes" && -r "$HOME/.bashrc" ]]; then
        source "$HOME/.bashrc"
    fi

🧘
