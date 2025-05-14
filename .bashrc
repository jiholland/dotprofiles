# ~/.bashrc

# If not running interactively, don't do anything.
if [ -z "$PS1" ]; then return; fi

# Use vi keybindings, disable terminal bell and update window size after each command.
set -o vi
bind "set bell-style none"
shopt -s checkwinsize

# Append to history file, set max history size for disk and memory,
# ignore space-staring, commands and duplicates and add timestamps.
shopt -s histappend
export HISTFILESIZE=100000
export HISTSIZE=100000
export HISTCONTROL="ignoreboth"
export HISTTIMEFORMAT="%F %T "

# Set colors for ls command (directory, symbolic link and leave the rest to default values).
export LS_COLORS="di=0;36:ln=1;35"

# Number of trailing directories to retain when expanding the 'w' and 'W' prompt string escapes.
PROMPT_DIRTRIM=2

# Function for getting the current git branch.
if command -v git &>/dev/null; then
  git_branch() { git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'; }
else
  git_branch() { :; }
fi

# Define color codes for prompt.
nocolor="\[\e[0m\]"
green="\[\e[0;32m\]"
yellow="\[\e[0;33m\]"
cyan="\[\e[0;36m\]"

# Set prompt with colors when the terminal supports it.
if [[ "$TERM" =~ 256color$ ]]
then
  # [username@hostname working-dir (git-branch) ]prompt-indicator
  PS1="${nocolor}[${green}\u${nocolor}@\h ${cyan}\w ${yellow}\$(git_branch)${nocolor}]\\$ "
else
  PS1="[\u@\h \w \$(git_branch)]\\$ "
fi

unset -v {nocolor,green,yellow,cyan}

source_file() {
  if [ -f "$1" ]; then
    source "$1"
  fi
}

# Source these files if they exist and is a regular file.
source_file "/usr/share/bash-completion/bash_completion"
source_file "/opt/homebrew/completions/bash/brew"
source_file "/opt/homebrew/etc/profile.d/bash_completion.sh"
source_file "$HOME/.bash_aliases"
source_file "$HOME/.venv/bin/activate"

unset -f source_file

# Attach to or create tmux session.
if command -v tmux &>/dev/null && [ -z "$TMUX" ]; then
  tmux attach-session -t default || tmux new-session -s default
fi
