# ~/.bash_profile

# Function for adding entries to path.
pathadd() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
      PATH="$1:$PATH"
    fi
}

pathadd "/opt/homebrew/sbin"           # Add homebrew's sbin to path.
pathadd "/opt/homebrew/bin"            # Add homebrew's bin to path.
pathadd "$HOME/.local/bin"             # Add ~/.local/bin to path.

unset -f pathadd                       # Remove function.

export LC_ALL="en_US.UTF-8"            # Use en_us.UTF-8 encoding for all locale settings.
export LS_COLORS="di=0;36:ln=1;35"     # Export colors for ls command (directory, symbolic link and leave the rest to default values).
export HISTFILE="$HOME/.bash_history"  # The file to save the history (default).
export HISTFILESIZE=10000              # Maximum number of history events to save in history file.
export HISTSIZE=10000                  # Maximum number of events stored in the internal history list.
export HISTCONTROL="ignoreboth"        # Lines which begin with a space character and lines which match the previous history entry are not saved in the history list.

# Set neovim as default visual editor.
if (which nvim &>/dev/null); then
  export VISUAL="nvim"
fi

# Source ~/.bashrc
if [ "$BASHRC_SOURCED" != "yes" ] && [ -r "$HOME/.bashrc" ]; then
  source "$HOME/.bashrc"
fi
