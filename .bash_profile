# ~/.bash_profile

# Function for adding entries to path.
pathadd() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
      PATH="$1:$PATH"
    fi
}
# Add these entries to path.
pathadd "$HOME/.local/bin"
pathadd "/opt/homebrew/bin"
pathadd "/opt/homebrew/sbin"

unset -f pathadd

export HISTCONTROL="ignoreboth"
export HISTFILE="$HOME/.bash_history"
export HISTFILESIZE=10000
export HISTSIZE=10000
export LC_ALL="en_US.UTF-8"
export LS_COLORS="di=0;36:ln=1;35"

if (which nvim &>/dev/null); then
  export VISUAL="nvim"
fi

if [ "$BASHRC_SOURCED" != "yes" ] && [ -r "$HOME/.bashrc" ]; then
  source "$HOME/.bashrc"
fi
