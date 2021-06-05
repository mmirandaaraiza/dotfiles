# compinit activates autocompletion
# promptinit enables theme customization
autoload -Uz compinit promptinit
compinit
promptinit

# prompt themes
prompt redhat

# autocompletion with an arrow-key driven interface
zstyle ':completion:*' menu select

# regex comes from github.com/robbyrussell/oh-my-zsh/blob/master/lib/completion.zsh
# case insensitive completion, _ and - are not interchangeable
#zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
# case insensitive completion, _ and - are interchangeable
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'

# completion of command line switches for aliases
setopt COMPLETE_ALIASES

# compinit will not automatically find new executables in $PATH
# rehash allows it to happen automatically
# so we need to set a pacman hook to keep a zsh cache file
# zsh will check this cache file and will rehash its own
# command cache when it goes out of date
zshcache_time="$(date +%s%N)"

autoload -Uz add-zsh-hook

rehash_precmd() {
  if [[ -a /var/cache/zsh/pacman ]]; then
    local paccache_time="$(date -r /var/cache/zsh/pacman +%s%N)"
    if (( zshcache_time < paccache_time )); then
      rehash
      zshcache_time="$paccache_time"
    fi
  fi
}

add-zsh-hook -Uz precmd rehash_precmd

# zsh help command is called run-help, it is not enabled by default
#autoload -Uz run-help
#unalias run-help
#alias help=run-help

# history includes a timestamp
setopt extendedhistory

# zsh uses ZLE, this has an emacs and a vi mode
# by default, emacs mode is used but this can be changed
# if editor env variable has 'vi' or by setting it explicitly here
bindkey -v

# key bindings for fzf
# this must come after the keybindings for vi mode
# ctrl + t lists files and directories under current directory
# ctrl + r searches history of shell commands
# alt + c change directory through fuzzy finding
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# fish syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# command not found handler
# autocompletion can search official repositories when a command isnt found
# pkgfile must be installed
source /usr/share/doc/pkgfile/command-not-found.zsh

# enable pyenv and pyenv-virtualenv
# this will enable the use of pyenv local and automatically changing the env if it exists
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# aliases
alias ls='ls --color=auto'
alias history='history 0'
# noglob is needed because zsh uses square brackets for globbing
alias pip='noglob pip'
alias pipenv='noglob pipenv'
alias diff='diff -qr --left-column --color=always'
