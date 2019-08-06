# compinit activates autocompletion
# promptinit enables theme customization
autoload -Uz compinit promptinit
compinit
promptinit

# prompt themes
prompt redhat

# autocompletion with an arrow-key driven interface
zstyle ':completion:*' menu select

# autocompletion searches official repositories when
# command is not found, pkgfile must be installed
# source /usr/share/doc/pkgfile/command-not-found.zsh

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

# case insensitive completion, _ and - are not interchangeable
# regex comes from github.com/robbyrussell/oh-my-zsh/blob/master/lib/completion.zsh
unset CASE_SENSITIVE HYPHEN_INSENSITIVE
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'

# zsh uses ZLE, this has an emacs and a vi mode
# by default, emaps mode is used but this can change
# if editor env variable has 'vi' or by setting it explicitly here
bindkey -v

# aliases
alias ls='ls --color=auto'
