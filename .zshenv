export ANDROID_HOME=$HOME/Android/Sdk

# path is an array from which zsh sets the PATH variable
# directories can be added in from of $path, however to avoid duplicates
# from the globally set PATH, the incantation typeset -U path is used
# arch wiki has $path[@] at the end
typeset -U path PATH
path=("$ANDROID_HOME/emulator" "$ANDROID_HOME/platform-tools" $path)
export PATH

# history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000

