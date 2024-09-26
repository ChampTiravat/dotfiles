export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git sudo)

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:/opt/nvim/bin"

alias sound='pulsemixer'

alias notes:backup="cp -r ~/Personal/Notes/* /media/$(whoami)/small_ssd/Notes/"
alias backup:notes="cp -r ~/Personal/Notes/* /media/$(whoami)/small_ssd/Notes/"

alias back="cd -; ls -lah"
alias notes='cd ~/Personal/Notes; vi .'
alias go:notes='cd ~/Personal/Notes; vi .'
alias go:desk="cd /home/$(whoami)/Desktop"
alias go:downl="cd /home/$(whoami)/Downloads"
alias go:personal="cd /home/$(whoami)/Personal"
alias go:ssd="cd /media/$(whoami)/small_ssd"
alias go:ssd:notes='cd /media/$(whoami)/small_ssd/Notes; vi .'
alias go:dots="cd /home/$(whoami)/Code/personal/dotfiles"
alias go:code:dotfiles="cd /home/$(whoami)/Code/personal/dotfiles"
alias go:code:tdg="cd /home/$(whoami)/Code/contract/tdg"
alias go:code:smiley="cd /home/$(whoami)/Code/contract/smiley"

alias reload='source ~/.zshrc; echo "> reloaded ~/.zshrc";'
alias rename='vimv' # TODO: install https://github.com/thameera/vimv/ for bulk-renaming files
alias m='make'
alias s='source'
alias python='python3'
alias nvim='nvim'
alias vim='nvim'
alias vi='nvim'
alias code='codium'
alias vi:conf="vi /home/$(whoami)/Code/personal/dotfiles/init.vim"
alias vim:conf="vi /home/$(whoami)/Code/personal/dotfiles/init.vim"
alias nvim:conf="vi /home/$(whoami)/Code/personal/dotfiles/init.vim"
alias zsh:conf="vi /home/$(whoami)/Code/personal/dotfiles/.zshrc"

alias copytext='xclip -selection clipboard; echo "> text coppied to clipboard"'
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

export DOTFILES_PATH="/home/$(whoami)/Code/personal/dotfiles"
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

