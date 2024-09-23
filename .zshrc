export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git sudo)

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:/opt/nvim/bin"

alias notes:backup='cp -r ~/Desktop/Notes/* /media/batman/small_ssd/Notes/'
alias notes='cd ~/Desktop/Notes; vi .'

alias backup:notes='cp -r ~/Desktop/Notes/* /media/batman/small_ssd/Notes/'

alias rename='vimv' # TODO: install https://github.com/thameera/vimv/ for bulk-renaming files
alias m='make'
alias s='source'
alias python='python3'
alias nvim='nvim'
alias vim='nvim'
alias vi='nvim'
alias code='codium'

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

export ALACRITTY_CONFIG="/home/$(whoami)/.config/alacritty/alacritty.toml"
export I3_CONFIG="/home/$(whoami)/.config/i3/config"
export NVIM_CONFIG="/home/$(whoami)/.config/nvim/init.vim"
export VISUAL=vim;
export EDITOR='nvim';
export GIT_EDITOR='nvim';

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# PATH for Go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin
export GOPRIVATE="bitbucket.org/truedmp/*"

# PATH for additional binaries
export PATH=$PATH:/home/batman/bin

# Fuzzy search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Set x-rate to move faster in vim
xset r rate 200 85

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

