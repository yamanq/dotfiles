# The personal initialization file, executed for login shells

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

# Include environment variables
if [ -f ~/.envvars ]; then
    . "$HOME/.envvars"
fi
