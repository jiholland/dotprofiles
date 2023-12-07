# ~/.aliases

if [[ "$TERM" == *"color"* ]]; then       # If colors are "supported" then...
  alias ls="ls --color=auto"              # Colorize ls command.
  alias grep="grep --color=auto"          # Colorize grep command.
  if (which tree &>/dev/null); then
    alias tree="tree -C"                  # Colorize tree command.
  fi
  if (which colordiff &>/dev/null); then
    alias diff="colordiff"                # Use colordiff instead of diff.
  fi
  if (which htop &>/dev/null); then
    alias top="htop"                      # Use htop instead of top.
  fi
fi

alias cp="cp -r"                          # Copy directories recursivley.
alias mkdir="mkdir -p"                    # Create parent directories if they don't exist.
alias ping="ping -c 5"                    # Stop ping after 5 echo_request packets.

alias c="clear -x"                        # Clear the terminal, but do not attempt to clear the terminal´s scrollback buffer.
alias la="ls -laF"                        # List files in long format, include dot ('.') directories and display prefix.
alias ll="ls -l"                          # List files in long format.

if (which python3 &>/dev/null); then      # Python virtual environments aliases.
  alias pv="python3 -m venv .venv"
  alias pa="source .venv/bin/activate"
  alias pd="deactivate"
fi

if (which git &>/dev/null); then          # Git aliases.
  alias g="git"
  alias s="git status"
fi
