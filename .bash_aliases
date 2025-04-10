# ~/.bash_aliases

# If colors are "supported" then...
if [[ "$TERM" == *"color"* ]]; then
  alias grep="grep --color=auto"
  alias ls="ls --color=auto"
  if command -v colordiff &>/dev/null; then
    alias diff="colordiff"
  fi
  if command -v htop &>/dev/null; then
    alias top="htop"
  fi
  if command -v tree &>/dev/null; then
    alias tree="tree -C"
  fi
fi

alias c="clear -x"
alias cp="cp -r"
alias la="ls -lhaF"
alias ll="ls -lh"
alias mkdir="mkdir -p"
alias ping="ping -c 5"

if command -v git &>/dev/null; then
  alias s="git status"
fi
