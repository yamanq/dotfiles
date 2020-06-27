#!/usr/bin/env bash
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias diff='diff --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'


    man() {
        LESS_TERMCAP_md=$'\e[01;31m' \
        LESS_TERMCAP_me=$'\e[0m' \
        LESS_TERMCAP_se=$'\e[0m' \
        LESS_TERMCAP_so=$'\e[01;44;33m' \
        LESS_TERMCAP_ue=$'\e[0m' \
        LESS_TERMCAP_us=$'\e[01;32m' \
        command man "$@"
    }
fi

# After some updates, dolphin breaks
alias fixdolphin='nohup dbus-launch dolphin &'

# Misc Aliases

alias more='less'
alias nikhilencrypt='gpg --encrypt --armor -r nikhilsd@protonmail.com | xclip -selection clipboard'
alias fzf-pass='pass -c $(pass git ls-files '*.gpg' | sed 's/.gpg$//' | fzf --reverse --header="Select a password:")'
alias cdtemp='cd $(mktemp -d)'

function conda_start {
    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    __conda_setup="$('/home/yaman/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/home/yaman/miniconda3/etc/profile.d/conda.sh" ]; then
            . "/home/yaman/miniconda3/etc/profile.d/conda.sh"
        else
            export PATH="/home/yaman/miniconda3/bin:$PATH"
        fi
    fi
    unset __conda_setup
    # <<< conda initialize <<<
}
