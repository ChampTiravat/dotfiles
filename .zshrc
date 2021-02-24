# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/home/tiravat/.oh-my-zsh"

# ZSH_THEME="alanpeabody"
ZSH_THEME="robbyrussell"

plugins=(sudo git docker python genpass)

source $ZSH/oh-my-zsh.sh

alias getip='ip addr | grep eth | grep inet'
alias python='python3'
alias pg='sudo service postgresql'
alias m='make'

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/tiravat/google-cloud-sdk/bin
export DELTA_PROJECT='/home/tiravat/go/src/bitbucket.org/secure-project/delta-backend'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
