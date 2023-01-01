# =====================================================================================
# Path to oh-my-zsh installation.
# =====================================================================================
export ZSH="/Users/tiravat/.oh-my-zsh"


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
alias pgsql:status='pg_isready'
alias pgsql:start='brew services start postgresql@12'
alias pgsql:stop='brew services stop postgresql@12'
alias pgsql:restart='brew services restart postgresql@12'

alias pgsql:shell='psql -d postgres -U $(whoami)'
alias pgsql:booclii='psql -d booclii -U tiravat -W'
alias getports='sudo lsof -i -P -n | grep LISTEN'

alias lvim='/Users/tiravat/.local/bin/lvim'
alias vi='nvim'
alias vim='nvim'

alias m='make'
alias mt='make test'
alias r='ranger'
alias s='source'
alias composer='/usr/local/bin/composer.phar'

alias ml='cd ~/Code/personal/machine-learning-research'
alias work='cd ~/Code/work'
alias lab='cd ~/Code/lab'
alias personal='cd ~/Code/personal'
alias sodality='cd ~/Code/work/sodality'
alias delta='cd ~/go/src/github.com/champtiravat/delta-api'

alias gs='git status'
alias gd='git diff'
alias gl='git log'
alias glo='git log --oneline'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit'
alias gca='git commit --amend'
alias gp='git push'


export OBSIDIEN_VAULT="/Users/tiravat/Library/Mobile Documents/iCloud~md~obsidian/Documents"


# =====================================================================================
# Activate FZF (file searching/resolution tool)
# =====================================================================================
export NVIM_CONFIG="${HOME}/.config/nvim/init.vim"


# =====================================================================================
# Activate FZF (file searching/resolution tool)
# =====================================================================================
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# =====================================================================================
# Set PATH to Go(Compiler) binary
# =====================================================================================
export PATH=$PATH:/usr/local/go/bin


# =====================================================================================
# Node Version Manager Configuration
# =====================================================================================
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/opt/php@7.3/bin:$PATH"
export PATH="/usr/local/opt/php@7.3/sbin:$PATH"


# =====================================================================================
# Conda initialization config
# =====================================================================================
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/tiravat/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/tiravat/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/tiravat/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/tiravat/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# =====================================================================================
# Flutter Path
# =====================================================================================
export PATH="/Users/tiravat/flutter/bin:$PATH"


# =====================================================================================
# PostgreSQL PATH
# =====================================================================================
export PATH="/usr/local/opt/libpq/bin:$PATH"


# =====================================================================================
# iTerm2 additional shell configurations
# =====================================================================================
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools


export PATH="/usr/local/opt/php@7.4/bin:$PATH"
export PATH="/usr/local/opt/php@7.4/sbin:$PATH"


# =====================================================================================
# PNPM
# =====================================================================================
export PNPM_HOME="/Users/tiravat/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tiravat/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/tiravat/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tiravat/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/tiravat/google-cloud-sdk/completion.zsh.inc'; fi



export PATH="/usr/local/opt/postgresql@12/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/postgresql@12/lib"
export CPPFLAGS="-I/usr/local/opt/postgresql@12/include"

