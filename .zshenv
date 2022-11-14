local HOMEBREW_PREFIX=/opt/homebrew

# path is an array from which zsh sets the PATH variable
# directories can be added in from of $path, however to avoid duplicates
# from the globally set PATH, the incantation typeset -U path is used
# arch wiki has $path[@] at the end
typeset -U PATH path
path=("$HOME/.rd/bin" "$HOMEBREW_PREFIX/opt/node@16/bin" "$HOMEBREW_PREFIX/bin" "$path[@]")
export PATH

# history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000

