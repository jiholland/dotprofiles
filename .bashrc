# ~/.bashrc

# If not running interactively, don't do anything.
if [ -z "$PS1" ]; then return; fi

# Prevent doublesourcing.
if [ -z "$BASHRC_SOURCED" ]; then
  BASHRC_SOURCED="yes"
fi

shopt -s histappend         # Append history list to history file.
shopt -s checkwinsize       # Update window size after each command.
set -o vi                   # Use vi keybindings.
bind "set bell-style none"  # Disable terminal bell.

# Number of trailing directories to retain when expanding the 'w' and 'W' prompt string escapes.
PROMPT_DIRTRIM=2

# Function for getting the current git branch.
if command -v git &>/dev/null; then
  git_branch() { git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'; }
else
  git_branch() { :; }
fi

# Color codes: red=31,green=32,yellow=33,blue=34,purple=35,cyan=36.
nocolor="\[\e[0m\]"
green="\[\e[0;32m\]"
yellow="\[\e[0;33m\]"
cyan="\[\e[0;36m\]"

# Set prompt with colors when terminal supports it.
if [[ "$TERM" =~ 256color$ ]]
then
  # [username@hostname working-dir (git-branch) ]prompt-indicator
  PS1="${nocolor}[${green}\u${nocolor}@\h ${cyan}\w ${yellow}\$(git_branch)${nocolor}]\\$ "
else
  PS1="[\u@\h \w \$(git_branch)]\\$ "
fi

unset -v {nocolor,green,yellow,cyan}

source_file() {
  if [ -r "$1" ]; then
    source "$1"
  fi
}

# Source these files if they exist and are readable.
source_file "/opt/homebrew/completions/bash/brew"
source_file "/opt/homebrew/etc/profile.d/bash_completion.sh"
source_file "/usr/share/bash-completion/bash_completion"
source_file "$HOME/.bash_aliases"
source_file "$HOME/.venv/bin/activate"

unset -f source_file

# Attach to or create tmux session.
if command -v tmux &>/dev/null && [ -z "$TMUX" ]; then
  tmux attach-session -t default || tmux new-session -s default
fi
