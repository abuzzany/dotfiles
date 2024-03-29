export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="cloud"

# >>> Plugins <<< #
plugins=(git)

source $ZSH/oh-my-zsh.sh

# >>> Alias <<< #
setopt aliases
alias 'ls'='exa'
alias 'ls al'='exa -l'
alias 'cat'='bat'

# Pyenv coonfig
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# Fuzzy finder config
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
