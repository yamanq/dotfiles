# The personal initialization file, executed for login shells

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Include environment variables
if [ -f ~/.envvars ]; then
    . "$HOME/.envvars"
fi
