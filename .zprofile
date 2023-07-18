# ~/.zprofile

BREW_PREFIX="/opt/homebrew"                 # Default brew prefix for macOS with ARM chip. Change as needed.

pathadd() {                                 # Function for adding entries to path.
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
      PATH="$1:$PATH"
    fi
}

pathadd "$BREW_PREFIX/sbin"                 # Add homebrew's sbin to path.
pathadd "$BREW_PREFIX/bin"                  # Add homebrew's bin to path.
pathadd "$HOME/.pyenv/bin"                  # Add pyenv's bin to path.

export LC_ALL='en_US.UTF-8'                 # Use en_US.UTF-8 encoding for all locale settings.
export LSCOLORS='GxFx'                      # Colors for ls command (directory, symbolic link and leave the rest to default values).
export HISTFILE="$HOME/.zsh_history"        # The file to save the history.
export SAVEHIST=2000                        # Maximum number of history events to save in history file.
export HISTSIZE=2000                        # Maximum number of events stored in the internal history list.

if (which vim &>/dev/null); then            # Set vim as default visual editor.
  export VISUAL='vim'
fi
                                            # Enable completion for zsh.
if [ -d "$BREW_PREFIX/share/zsh/site-functions" ] && [[ ":$FPATH:" != *":$BREW_PREFIX/share/zsh/site-functions:"* ]]; then
  FPATH="$BREW_PREFIX/share/zsh/site-functions:$FPATH"
fi

unset -f pathadd                            # Remove pathadd function.
unset -v BREW_PREFIX                        # Remove variable.

                                            # Source ~/.zshrc
if [ "$ZSHRC_SOURCED" != "yes" ] && [ -r "$HOME/.zshrc" ]; then
  source "$HOME/.zshrc"
fi
