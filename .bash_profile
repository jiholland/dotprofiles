# ~/.bash_profile

pathadd() {
  if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
    PATH="$1:$PATH"
  fi
}
# Add these directories to $PATH.
pathadd "$HOME/.local/bin"
pathadd "/opt/homebrew/bin"
pathadd "/opt/homebrew/sbin"

unset -f pathadd

export HISTCONTROL="ignoreboth"        # Lines which begin with a space character and lines which match the previous history entry are not saved in the history list.
export HISTFILESIZE=10000              # Maximum number of history events to save in history file.
export HISTSIZE=10000                  # Maximum number of events stored in the internal history list.
export LANG="en_US.UTF-8"              # Use en_us.UTF-8 encoding for default locale.
export LC_ALL="en_US.UTF-8"            # Use en_us.UTF-8 encoding for all locales.
export LS_COLORS="di=0;36:ln=1;35"     # Export colors for ls command (directory, symbolic link and leave the rest to default values).

# Set TERM to xterm-256color if it is unset or set to the basic xterm.
if [[ -z "$TERM" || "$TERM" == "xterm" ]]; then
  export TERM="xterm-256color"
fi

# Set neovim as default editor.
if command -v nvim &>/dev/null; then
  export VISUAL="nvim"
  export EDITOR="nvim"
fi

if [ "$BASHRC_SOURCED" != "yes" ] && [ -r "$HOME/.bashrc" ]; then
  source "$HOME/.bashrc"
fi
