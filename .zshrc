# TODO: install "glow" to read markdown files on terminal (https://github.com/charmbracelet/glow)

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git sudo)

source $ZSH/oh-my-zsh.sh

alias m='make'
alias s='source'
alias python='python3'
alias nvim='nvim.appimage'
alias vim='nvim.appimage'
alias vi='nvim.appimage'
alias code='codium'
alias postman='/home/batman/bin/Postman/Postman'

alias copytext='xclip -selection clipboard'
alias pastetext='xclip -selection clipboard -o'

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

alias download-youtube-playlist="yt-dlp -f bestvideo+bestaudio --merge-output-format mp4 -o '%(playlist_index)s - %(title)s.%(ext)s'"
alias download-youtube-video="yt-dlp -f bestvideo+bestaudio --merge-output-format mp4 -o '%(title)s.%(ext)s'"

export NVIM_CONFIG='/home/batman/.config/nvim/init.vim'
export VISUAL=vim;
export EDITOR='~/bin/nvim.appimage';
export GIT_EDITOR='vim';

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# PATH for Go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin

# PATH for additional binaries
export PATH=$PATH:/home/batman/bin

# Fuzzy search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Set x-rate to move faster in vim
xset r rate 180 75

# >>> conda initialize >>>
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


# bun completions
[ -s "/home/batman/.bun/_bun" ] && source "/home/batman/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
