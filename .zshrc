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
plugins=(sudo git git-flow )
source $ZSH/oh-my-zsh.sh


# =====================================================================================
# Alias COnfigurations
# =====================================================================================
alias getports='sudo lsof -i -P -n | grep LISTEN'
alias composer='/usr/local/bin/composer.phar'

alias startpgsql='brew services start postgresql@12'
alias psql:niyomwan='psql -d niyomwan -U john -W'

alias r='ranger'
alias s='source'

alias work='cd ~/Code/ContractWorks'
alias psn='cd ~/Code/Personal'

alias lvim='/Users/tiravat/.local/bin/lvim'
alias vi='nvim'
alias vim='nvim'

# Git Shortcuts
alias gs='git status'
alias gd='git diff'
alias gl='git log'
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
# Google Cloud Platform CLI tool
# =====================================================================================

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
# PostgreSQL PATH
# =====================================================================================
export PATH="/usr/local/opt/libpq/bin:$PATH"


# =====================================================================================
# iTerm2 additional shell configurations
# =====================================================================================
# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"



# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/tiravat/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/tiravat/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/tiravat/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/tiravat/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
