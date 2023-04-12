# =====================================================================================
# Path to oh-my-zsh installation.
# =====================================================================================
export ZSH="/home/batman/.oh-my-zsh"


# =====================================================================================
# Theme Configurations
# =====================================================================================
ZSH_THEME="robbyrussell"


# =====================================================================================
# Plugin Configurations
# =====================================================================================
plugins=(sudo git git-flow)
source $ZSH/oh-my-zsh.sh


# =====================================================================================
# Alias Configurations
# =====================================================================================
alias getports='sudo lsof -i -P -n | grep LISTEN'

alias pgsql:status='pg_isready'
alias pgsql:start='brew services start postgresql@12'
alias pgsql:stop='brew services stop postgresql@12'
alias pgsql:restart='brew services restart postgresql@12'
alias pgsql:shell='psql -d postgres -U $(whoami)'

alias vi='~/nvim.appimage'
alias vim='~/nvim.appimage'
alias nvim='~/nvim.appimage'

alias m='make'
alias mt='make test'
alias r='ranger'
alias s='source'

alias ml='cd ~/Code/personal/machine-learning-research'
alias work='cd ~/Code/work'
alias lab='cd ~/Code/lab'
alias personal='cd ~/Code/personal'

alias gs='git status'
alias gd='git diff'
alias gl='git log'
alias glo='git log --oneline'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit'
alias gca='git commit --amend'
alias gp='git push'


# =====================================================================================
# Activate FZF (file searching/resolution tool)
# =====================================================================================
export NVIM_CONFIG="${HOME}/.config/nvim/init.vim"


# =====================================================================================
# Activate FZF (file searching/resolution tool)
# =====================================================================================
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Set PATH for NVM and Nodejs
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Set PATH for Golang
export PATH=$PATH:/usr/local/go/bin

# Set default editor for NeoVIM
export GIT_EDITOR=~/nvim.appimage


