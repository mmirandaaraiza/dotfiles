export ANDROID_HOME=$HOME/Android/Sdk

# path is an array from which zsh sets the PATH variable
# directories can be added in from of $path, however to avoid duplicates
# from the globally set PATH, the incantation typeset -U path is used
# arch wiki has $path[@] at the end
typeset -U PATH path
path=("$ANDROID_HOME/emulator" "$ANDROID_HOME/tools" "$ANDROID_HOME/tools/bin" "$ANDROID_HOME/platform-tools" "$HOME/.local/bin" "$path[@]")
export PATH

# history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000

# directory to install global packages for the current user
export npm_config_prefix=$HOME/.local
