# ~/.bash_profile

pathadd() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
      PATH="$1:$PATH"
    fi
}

# Add entries to PATH.
pathadd "/opt/homebrew/sbin"
pathadd "/opt/homebrew/bin"
pathadd "$HOME/.local/bin"

unset -f pathadd

export LC_ALL="en_US.UTF-8"
export LS_COLORS="di=0;36:ln=1;35"
export HISTFILESIZE=10000
export HISTSIZE=10000
export HISTCONTROL="ignoreboth"

if (which nvim &>/dev/null); then
  export VISUAL="nvim"
fi

if [ "$BASHRC_SOURCED" != "yes" ] && [ -r "$HOME/.bashrc" ]; then
  source "$HOME/.bashrc"
fi
