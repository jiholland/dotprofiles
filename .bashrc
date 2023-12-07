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

# Number of trailing directories to retian when expanding the 'w' and 'W' prompt string escapes.
PROMPT_DIRTRIM=2

# Function for getting the current git branch:
if (which git &>/dev/null); then
  git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'; }
else
  git_branch() { :; }
fi

nocolor="\[\e[0m\]"    # All attributes off. Color codes: red=31,green=32,yellow=33,blue=34,purple=35,cyan=36.
green="\[\e[0;32m\]"   # Regular green frontground color.
yellow="\[\e[0;33m\]"  # Regular yellow frontground color.
cyan="\[\e[0;36m\]"    # Regular cyan frontground color.

# Set prompt with colors if terminal supports colors.
if [[ "$TERM" == *"color"* ]]
then
  # [username@hostname working-dir (git-branch) ]prompt-indicator
  PS1="${nocolor}[${green}\u${nocolor}@\h ${cyan}\w ${yellow}\$(git_branch)${nocolor}]\\$ "
else
  PS1="[\u@\h \w \$(git_branch)]\\$ "
fi

unset -v {nocolor,green,yellow,cyan}  # Remove variables.

# Source file if it exists and is readable.
source_file() {
  if [ -r "$1" ]; then
    source "$1"
  fi
}

source_file "/usr/share/bash-completion/bash_completion"      # Source bash completion.
source_file "/opt/homebrew/completions/bash/brew"             # Source Homebrew bash completion.
source_file "/opt/homebrew/etc/profile.d/bash_completion.sh"  # Source Homebrew bash completion@2
source_file "$HOME/.bash_aliases"                             # Source aliases.
source_file "$HOME/.venv/bin/activate"                        # Source Python virtualenv.

unset -f source_file  # Remove function.
