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

# zsh uses ZLE, this has an emacs and a vi mode
# by default, emacs mode is used but this can be changed
# if editor env variable has 'vi' or by setting it explicitly here
bindkey -v

# fish auto suggestions
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# fish syntax highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# aliases
alias ls='ls --color=auto'
alias history='history 0'
