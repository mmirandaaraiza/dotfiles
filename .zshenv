# path is an array from which zsh sets the PATH variable
# directories can be added in from of $path, however to avoid duplicates
# from the globally set PATH, the incantation typeset -U path is used
# arch wiki has $path[@] at the end
typeset -U path
path=(~/.local/bin $path)

# command line history
HISTFILE=~/.zsh_history
HISTSIZE=999999999
SAVEHIST=$HISTSIZE

# command completion
HYPHEN_INSENSITIVE="true"
unset CASE_SENSITIVE
