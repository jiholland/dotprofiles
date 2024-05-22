# ~/.bashrc

# If not running interactively, don't do anything.
if [ -z "$PS1" ]; then return; fi

# Prevent doublesourcing.
if [ -z "$BASHRC_SOURCED" ]; then
  BASHRC_SOURCED="yes"
fi

shopt -s histappend
shopt -s checkwinsize
set -o vi
bind "set bell-style none"

PROMPT_DIRTRIM=2

if (which git &>/dev/null); then
  git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'; }
else
  git_branch() { :; }
fi

nocolor="\[\e[0m\]"
green="\[\e[0;32m\]"
yellow="\[\e[0;33m\]"
cyan="\[\e[0;36m\]"

# Set prompt with colors if terminal supports colors.
if [[ "$TERM" == *"color"* ]]
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

# Source file if it exists and is readable.
source_file "/usr/share/bash-completion/bash_completion"
source_file "/opt/homebrew/completions/bash/brew"
source_file "/opt/homebrew/etc/profile.d/bash_completion.sh"
source_file "$HOME/.bash_aliases"
source_file "$HOME/.venv/bin/activate"

unset -f source_file  # Remove function.
