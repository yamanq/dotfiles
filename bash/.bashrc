# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# History

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=-1
HISTFILESIZE=-1

# Useful timestamp format
HISTTIMEFORMAT='%F %T '

# Save history with every command
export PROMPT_COMMAND='history -a'


# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ "$color_prompt" = yes ]; then
    PS1='\[\033[01;32m\]\u\[\033[00m\]@\[\033[01;36m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# Alias definitions.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
# pass autocompletion
source /usr/share/bash-completion/completions/pass

# Default editor
export EDITOR=vim
export VISUAL=vim

# Install global NPM packages locally
# NPM_PACKAGES="${HOME}/.npmglobal"
# export PATH="$NPM_PACKAGES/bin:$PATH"
# Added by the Heroku Toolbelt
# export PATH="/usr/local/heroku/bin:$PATH"
# Go paths
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
# Ruby paths
export GEM_HOME="$HOME/.gem"
export PATH="$GEM_HOME/ruby/2.7.0/bin:$PATH"
# Path magics
export PATH="$HOME/bin:$HOME/.local/bin:$HOME/bin:~/.cargo/bin:$PATH"

# Include environment variables
if [ -f ~/.envvars ]; then
    . "$HOME/.envvars"
fi
