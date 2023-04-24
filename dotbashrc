# ~/.bashrc

if [ -z "$PS1" ]; then return; fi           # If not running interactively, don't do anything.

if [ -z "$BASHRC_SOURCED" ]; then           # Prevent doublesourcing.
  BASHRC_SOURCED="yes"
fi

shopt -s histappend                         # Append history list to history file.
shopt -s checkwinsize                       # Update window size after each command.
bind 'set bell-style none'                  # Disable terminal bell.

# ==================== Prompt =====================

PROMPT_DIRTRIM=2                            # Number of trailing directories to retian when expanding the 'w' and 'W' prompt string escapes.
                                            # Function for getting the current git branch:
if (which git &>/dev/null); then
  git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'; }
else
  git_branch() { :; }
fi

nocolor="\[\e[0m\]"                         # All attributes off. Color codes: red=31,green=32,yellow=33,blue=34,purple=35,cyan=36.
green="\[\e[0;32m\]"                        # Regular green frontground color.
yellow="\[\e[0;33m\]"                       # Regular yellow frontground color.
cyan="\[\e[0;36m\]"                         # Regular cyan frontground color.

if [[ "$TERM" == "xterm"*||"vte"* ]]        # If colors are "supported" set prompt with colors.
then
  PS1="${nocolor}[${green}\u${nocolor}@\h ${cyan}\w ${yellow}\$(git_branch)${nocolor}]\\$ "
else
  PS1="[\u@\h \w \$(git_branch)]\\$ "       # [username@hostname working-dir (git-branch) ]prompt-indicator 
fi

unset -v {nocolor,green,yellow,cyan}        # Remove variables.

# ==================== Aliases ====================

if [[ "$TERM" == "xterm"*||"vte"* ]]; then  # If colors are "supported" then...
  alias ls='ls --color'                      # Colorize ls command. Colors are based on $LS_COLORS from bash_profile.
  alias grep='grep --color'                  # Colorize grep command.
  if (which tree &>/dev/null); then          # Colorize tree command.
    alias tree='tree -C'
  fi
fi

if [ -r "$HOME/.aliases" ]; then            # Source more aliases.
  source "$HOME/.aliases"
fi
