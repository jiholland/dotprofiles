# ~/.bash_profile

# Function for adding entries to path.
pathadd() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="$1:$PATH"
    fi
}

pathadd "$HOME/.local/bin"                  # Add ~/.local/bin to path.

export LC_ALL='en_US.UTF-8'                 # Use en_us.UTF-8 encoding for all locale settings.
export LS_COLORS='di=0;36:ln=1;35'          # Export colors for ls command (directory, symbolic link and leave the rest to default values).
export HISTFILE="$HOME/.bash_history"       # The file to save the history (default).
export HISTFILESIZE=2000                    # Maximum number of history events to save in history file.
export HISTSIZE=2000                        # Maximum number of events stored in the internal history list.
export HISTCONTROL="ignoreboth"             # Lines which begin with a space character and lines which match the previous history entry are not saved in the history list.

# Set neovim as default visual editor.
if (which nvim &>/dev/null); then
  export VISUAL='nvim'
fi

# Enable completion for bash.
if [ -f /usr/share/bash-completion/bash_completion ]; then
  source /usr/share/bash-completion/bash_completion
elif [ -d /etc/bash_completion.d ]; then
  for COMPLETION in /etc/bash_completion.d/*
  do
    [ -r "$COMPLETION" ] && source "$COMPLETION"
  done
fi

unset -v COMPLETION                         # Remove variable.
unset -f pathadd                            # Remove function.

# Source ~/.bashrc
if [ "$BASHRC_SOURCED" != "yes" ] && [ -r "$HOME/.bashrc" ]; then
  source "$HOME/.bashrc"
fi
