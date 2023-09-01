# ~/.zshrc

# If not running interactively, don't do anything.
if [ -z "$PS1" ]; then return; fi

# Prevent doublesourcing.
if [ -z "$ZSHRC_SOURCED" ]; then
  ZSHRC_SOURCED="yes"
fi

# Install pyenv as shell function, enable shims and autocompletion.
  if (which pyenv &>/dev/null); then
  eval "$(pyenv init -)"
fi

autoload -Uz compinit; compinit             # Enable the zsh completion system.
setopt HIST_IGNORE_SPACE                    # Lines which begin with a space character are not saved in the history list.
setopt HIST_IGNORE_DUPS                     # lines which match the previous history entry are not saved in the history list.
setopt APPEND_HISTORY                       # Append history list to history file.
setopt VI                                   # Enable vi mode.
unsetopt BEEP                               # Disable terminal bell.

setopt PROMPT_SUBST                         # Enable parameter expansion, command substitution and arithmetic expansion in the prompt.

# Function for getting the current git branch:
if (which git &>/dev/null); then
  git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'; }
else
  git_branch() { :; }
fi

# Set prompt with colors if terminal supports colors.
if [[ "$TERM" == "xterm"*||"vte"* ]]
then
  # [username@hostname working-dir (git-branch) ]prompt-indicator
  PS1="%f[%F{green}%n%f@%f%m %F{cyan}%2~ %F{yellow}\$(git_branch)%f]%f%(!.#.$) "
else
  PS1="[%n@%m %2~ \$(git_branch)]%(!.#.$) "
fi

# Source file if it exists and is readable.
source_file() {
  if [ -r "$1" ]; then
    source "$1"
  fi
}

source_file "$HOME/.aliases"                # Source aliases.
source_file "$HOME/.venv/bin/activate"      # Source Python virtualenv.

unset -f source_file                        # Remove function.
