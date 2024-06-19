export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="cloud"

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Aliases
alias 'cat'='bat'

# Fuzzy finder config
source <(fzf --zsh)
