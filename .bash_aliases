# ~/.bash_aliases

if [[ "$TERM" == *"color"* ]]; then
  alias ls="ls --color=auto"
  alias grep="grep --color=auto"
  if (which tree &>/dev/null); then
    alias tree="tree -C"
  fi
  if (which colordiff &>/dev/null); then
    alias diff="colordiff"
  fi
  if (which htop &>/dev/null); then
    alias top="htop"
  fi
fi

alias c="clear -x"
alias cp="cp -r"
alias la="ls -laF"
alias ll="ls -l"
alias mkdir="mkdir -p"
alias ping="ping -c 5"

if (which python3 &>/dev/null); then
  alias pv="python3 -m venv .venv"
  alias pa="source .venv/bin/activate"
  alias pd="deactivate"
fi

if (which git &>/dev/null); then
  alias s="git status"
fi
