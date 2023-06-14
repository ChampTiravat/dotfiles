# =====================================================================================
# Set default text editor (NeoVIM)
# =====================================================================================
export NVIM_PATH="/usr/bin/nvim.appimage"
export EDITOR=$NVIM_PATH


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
alias btt='bluetoothctl'
alias btt:headphone="bluetoothctl connect $(cat ~/Data/WH1000.txt)"
alias screenshot="scrot -s"
alias sound="alsamixer"

alias soundctl='pavucontrol'
alias getports='sudo lsof -i -P -n | grep LISTEN'

alias pgadmin='/usr/pgadmin4/bin/pgadmin4'
alias pgsql:status='pg_isready'
alias pgsql:start='sudo systemctl start postgresql@14'
alias pgsql:stop='sudo systemctl stop postgresql@14'
alias pgsql:restart='sudo systemctl restart postgresql@14'
alias pgsql:shell='psql -d postgres -U $(whoami)'

alias vi='/usr/bin/nvim.appimage'
alias vim='/usr/bin/nvim.appimage'
alias nvim='/usr/bin/nvim.appimage'

alias m='make'
alias mt='make test'
alias r='ranger'
alias s='source'

alias ml='cd ~/Code/Personal/machine-learning-research; tmux'
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
alias gitcache="git config --global credential.helper 'cache --timeout=72000'"

alias python='python3'
alias doai='conda activate tf-gpu'

alias download-youtube="yt-dlp -f bestvideo+bestaudio --merge-output-format mp4 -o '%(playlist_index)s - %(title)s.%(ext)s"


# =====================================================================================
# Activate FZF (file searching/resolution tool)
# =====================================================================================
export NVIM_CONFIG="${HOME}/.config/nvim/init.vim"


# =====================================================================================
# Activate FZF (file searching/resolution tool)
# =====================================================================================
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# =====================================================================================
# Set PATH for NVM and Nodejs
# =====================================================================================
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# =====================================================================================
# Set PATH for Golang
# =====================================================================================
export PATH=$PATH:/usr/local/go/bin


# =====================================================================================
# Set default editor for NeoVIM
# =====================================================================================
export GIT_EDITOR="/usr/bin/nvim.appimage"


# =====================================================================================
# conda initialization
# =====================================================================================
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/batman/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/batman/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/batman/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/batman/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# =====================================================================================
# Android Studio
# =====================================================================================
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools


# =====================================================================================
# Path to Java JDK/JRE
# =====================================================================================
export JAVA_HOME=/home/batman/android-studio/jbr
export PATH=$PATH:$JAVA_HOME/bin


