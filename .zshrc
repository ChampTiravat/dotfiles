export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git sudo)

source $ZSH/oh-my-zsh.sh

alias wifi:list='nmcli device wifi list'
alias wifi:conn='nmcli device wifi connect '

alias backup:pass="rm -rf /media/$(whoami)/small_ssd/Passwords; cp -r ~/Personal/Passwords /media/$(whoami)/small_ssd/Passwords;"
alias backup:notes="rm -rf /media/$(whoami)/small_ssd/Notes/.git; cp -r ~/Personal/Notes/* /media/$(whoami)/small_ssd/Notes/"
alias backup:dotfiles="rm -rf /media/$(whoami)/small_ssd/dotfiles/.git; cp -r ~/Code/Personal/dotfiles/* ~/Code/Personal/dotfiles/.*  /media/$(whoami)/small_ssd/dotfiles/"
alias backup:all='backup:notes; echo "> created backup for notes"; backup:dotfiles; echo "> created backup for dotfiles"; backup:pass; echo "> created backup for passwords";'

alias back="cd -; ls -lah"
alias notes='cd ~/Personal/Notes; vi .'
alias go:notes='cd ~/Personal/Notes; vi .'
alias go:desk="cd ~/Desktop"
alias go:downl="cd ~/Downloads"
alias go:personal="cd ~/Personal"
alias go:ssd="cd /media/$(whoami)/small_ssd"
alias go:dots="cd ~/Code/Personal/dotfiles"
alias go:code="cd ~/Code"

alias reload='source ~/.zshrc; echo "> reloaded ~/.zshrc";'
alias rename='vimv' # TODO: install https://github.com/thameera/vimv/ for bulk-renaming files
alias m='make'
alias s='source'
alias python='python3'
alias sound='pulsemixer'
alias nvim='nvim'
alias vim='nvim'
alias vi='nvim'
alias code='codium'
alias vi:conf="vi   ~/Code/Personal/dotfiles/init.vim"
alias vim:conf="vi  ~/Code/Personal/dotfiles/init.vim"
alias nvim:conf="vi ~/Code/Personal/dotfiles/init.vim"
alias zsh:conf="vi  ~/Code/Personal/dotfiles/.zshrc"

alias copytext='xclip -selection clipboard; echo "> text coppied to clipboard"'
alias pastetext='xclip -selection clipboard -o'

alias gs='git status'
alias gd='git diff'
alias gl='git log'
alias gp='git push'
alias gitcache='git config --global credential.helper "cache --timeout=904800"'

alias download-youtube-playlist="yt-dlp -f bestvideo+bestaudio --merge-output-format mp4 -o '%(playlist_index)s - %(title)s.%(ext)s'"
alias download-youtube-video="yt-dlp -f bestvideo+bestaudio --merge-output-format mp4 -o '%(title)s.%(ext)s'"

export DOTFILES_PATH="/home/$(whoami)/Code/personal/dotfiles"
export ALACRITTY_CONFIG="/home/$(whoami)/.config/alacritty/alacritty.toml"
export I3_CONFIG="/home/$(whoami)/.config/i3/config"
export NVIM_CONFIG="/home/$(whoami)/.config/nvim/init.vim"
export VISUAL='vim';
export EDITOR='/usr/bin/nvim';
export GIT_EDITOR='nvim';

# PATH for NVM and Nodejs
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# PATH for Go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin
export GOPRIVATE="bitbucket.org/truedmp/*"

# Fuzzy search (press Ctrl + r to use)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Set x-rate to move faster in vim
xset r rate 200 90

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/primaris/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/primaris/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/primaris/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/primaris/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

