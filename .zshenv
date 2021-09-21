export ANDROID_HOME=$HOME/Android/Sdk

# path is an array from which zsh sets the PATH variable
# directories can be added in from of $path, however to avoid duplicates
# from the globally set PATH, the incantation typeset -U path is used
# arch wiki has $path[@] at the end
typeset -U path
path=($ANDROID_HOME/emulator $ANDROID_HOME/tools $ANDROID_HOME/tools/bin $ANDROID_HOME/platform-tools ~/.local/bin $path)
export PATH

# command line history
HISTFILE=~/.zsh_history
HISTSIZE=999999999
SAVEHIST=$HISTSIZE

# command completion
HYPHEN_INSENSITIVE="true"
unset CASE_SENSITIVE

export npm_config_prefix=$HOME/.local
