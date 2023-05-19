# ~/.zshrc

if [ -z "$PS1" ]; then return; fi           # If not running interactively, don't do anything.

if [ -z "$ZSHRC_SOURCED" ]; then            # Prevent doublesourcing.
  ZSHRC_SOURCED="yes"
fi

if (which pyenv &>/dev/null); then          # Install pyenv as shell function, enable shims and autocompletion.
  eval "$(pyenv init -)"
fi

autoload -Uz compinit; compinit             # Enable the zsh completion system.
setopt HIST_IGNORE_SPACE                    # Lines which begin with a space character are not saved in the history list.
setopt HIST_IGNORE_DUPS                     # lines which match the previous history entry are not saved in the history list. 
setopt APPEND_HISTORY                       # Append history list to history file.
unsetopt BEEP                               # Disable terminal bell.

# ==================== Prompt =====================

setopt PROMPT_SUBST                         # Enable parameter expansion, command substitution and arithmetic expansion in the prompt.
                                            # Function for getting the current git branch:
if (which git &>/dev/null); then
  git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'; }
else
  git_branch() { :; }
fi

if [[ "$TERM" == "xterm"*||"vte"* ]]        # If colors are "supported" set prompt with colors.
then
  PS1="%f[%F{green}%n%f@%f%m %F{cyan}%2~ %F{yellow}\$(git_branch)%f]%f%(!.#.$) "
else
  PS1="[%n@%m %2~ \$(git_branch)]%(!.#.$) " # [username@hostname working-dir (git-branch) ]prompt-indicator 
fi

# ==================== Aliases ====================

if [[ "$TERM" == "xterm"*||"vte"* ]]; then  # If colors are "supported" then...
  alias ls='ls --color'                      # Colorize ls command. Colors are based on $LSCOLORS from zprofile.
  alias grep='grep --color'                  # Colorize grep command.
  if (which tree &>/dev/null); then          # Colorize tree command.
    alias tree='tree -C'
  fi
fi

if [ -r "$HOME/.aliases" ]; then            # Source more aliases.
  source "$HOME/.aliases"
fi
