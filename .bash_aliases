# ~/.bash_aliases

# If colors are "supported" then...
if [[ "$TERM" == *"color"* ]]; then
  alias grep="grep --color=auto"
  alias ls="ls --color=auto"
  if (which colordiff &>/dev/null); then
    alias diff="colordiff"
  fi
  if (which htop &>/dev/null); then
    alias top="htop"
  fi
  if (which tree &>/dev/null); then
    alias tree="tree -C"
  fi
fi

alias c="clear -x"
alias cp="cp -r"
alias la="ls -laF"
alias ll="ls -l"
alias mkdir="mkdir -p"
alias ping="ping -c 5"

if (which git &>/dev/null); then
  alias s="git status"
fi
