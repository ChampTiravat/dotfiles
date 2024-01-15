export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git sudo)

source $ZSH/oh-my-zsh.sh

alias m='make'
alias s='source'
alias python='python3'
alias vi='~/bin/nvim.appimage'
alias vim='~/bin/nvim.appimage'
alias code='codium'

alias gs='git status'
alias gd='git diff'
alias gl='git log'
alias glo='git log --oneline'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit'
alias gca='git commit --amend'
alias gp='git push'
alias gitcache='git config --global credential.helper "cache --timeout=904800"'

alias axon:revamp='cd ~/Code/Contract/Axon/revamp'
alias axon:fix='cd ~/Code/Contract/Axon/fix'

alias download-youtube-playlist="yt-dlp -f bestvideo+bestaudio --merge-output-format mp4 -o '%(playlist_index)s - %(title)s.%(ext)s'"
alias download-youtube-video="yt-dlp -f bestvideo+bestaudio --merge-output-format mp4 -o '%(title)s.%(ext)s'"

export NVIM_CONFIG='/home/godwyn/.config/nvim/init.vim'
export VISUAL=vim;
export EDITOR='~/bin/nvim.appimage';
export GIT_EDITOR='~/bin/nvim.appimage';

# PATH for NVM and Node.js
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# PATH for Go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin

# PATH for additional binaries
export PATH=$PATH:/home/godwyn/bin

# Fuzzy search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/godwyn/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/godwyn/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/godwyn/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/godwyn/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Set x-rate to move faster in vim
xset r rate 180 75

