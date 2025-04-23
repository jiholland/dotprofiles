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

# Use en_us.UTF-8 encoding for default locale.
export LANG="en_US.UTF-8"

# Set TERM to xterm-256color if it's unset or set to the basic xterm.
if [[ -z "$TERM" || "$TERM" == "xterm" ]]; then
  export TERM="xterm-256color"
fi

# Set neovim as default editor if it is installed.
if command -v nvim &>/dev/null; then
  export VISUAL="nvim"
  export EDITOR="nvim"
fi

if [ -f "$HOME/.bashrc" ]; then
  source "$HOME/.bashrc"
fi
