# ~/.bash_aliases

# Add colors to various commands when the terminal supports it.
if [[ "$TERM" =~ 256color$ ]]; then
  alias grep="grep --color=auto"
  alias ls="ls --color=auto"
  if command -v colordiff &>/dev/null; then
    alias diff="colordiff"
  fi
  if command -v tree &>/dev/null; then
    alias tree="tree -C"
  fi
  if command -v bat &>/dev/null; then
    alias bat="bat -pp"
  fi
  if command -v btop &>/dev/null; then
    alias top="btop"
  elif command -v htop &>/dev/null; then
    alias top="htop"
  fi
fi

alias c="clear -x"
alias cp="cp -Rv"
alias du="du -h"
alias la="ls -lha"
alias ll="ls -lh"
alias mkdir="mkdir -pv"
alias rm="rm -v"

if command -v git &>/dev/null; then
  alias s="git status"
fi
