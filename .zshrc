# ================================================================
# Load initial config from oh-my-zsh
# ================================================================
export ZSH="$HOME/.oh-my-zsh"


# ================================================================
# Theme
# ================================================================
ZSH_THEME="robbyrussell"


# ================================================================
# Plugin
# ================================================================
plugins=(git sudo)


# ================================================================
# Reload config from oh-my-zsh
# ================================================================
source $ZSH/oh-my-zsh.sh


# ================================================================
# Aliases
# ================================================================
alias         wifi:list='nmcli device wifi list'
alias         wifi:conn='nmcli device wifi connect '

alias        backup:all='backup:notes; echo "> created backup for notes"; backup:dotfiles; echo "> created backup for dotfiles"; backup:pass; echo "> created backup for passwords";'
alias       backup:pass="rm -rf /run/media/$(whoami)/small_ssd/Passwords;     cp -r ~/Personal/Passwords /run/media/$(whoami)/small_ssd/Passwords;"
alias      backup:notes="rm -rf /run/media/$(whoami)/small_ssd/Notes/.git;    cp -r ~/Personal/Notes/* /run/media/$(whoami)/small_ssd/Notes/"
alias   backup:dotfiles="rm -rf /run/media/$(whoami)/small_ssd/dotfiles/.git; cp -r /home/$(whoami)/Code/Personal/dotfiles/* /home/$(whoami)/Code/Personal/dotfiles/.*  /run/media/$(whoami)/small_ssd/dotfiles/"

alias              back="cd -; ls -lah"
alias             notes="cd /home/$(whoami)/Personal/Notes; vi ."
alias          go:notes="cd /home/$(whoami)/Personal/Notes; vi ."
alias           go:desk="cd /home/$(whoami)/Desktop"
alias          go:downl="cd /home/$(whoami)/Downloads"
alias       go:personal="cd /home/$(whoami)/Personal"
alias           go:dots="cd /home/$(whoami)/Code/Personal/dotfiles"
alias           go:code="cd /home/$(whoami)/Code"
alias            go:ssd="cd /media/$(whoami)/small_ssd"

alias            reload='source ~/.zshrc; echo "> reloaded ~/.zshrc";'
alias            rename='vimv' # TODO: install https://github.com/thameera/vimv/ for bulk-renaming files
alias                 m='make'
alias                 s='source'
alias            python='python3'
alias             sound='pulsemixer'
alias              nvim='nvim'
alias               vim='nvim'
alias                vi='nvim'
alias              code='codium'
alias           vi:conf="vi /home/$(whoami)/Code/Personal/dotfiles/init.vim"
alias          vim:conf="vi /home/$(whoami)/Code/Personal/dotfiles/init.vim"
alias         nvim:conf="vi /home/$(whoami)/Code/Personal/dotfiles/init.vim"
alias          zsh:conf="vi /home/$(whoami)/Code/Personal/dotfiles/.zshrc"

alias          copytext='xclip -selection clipboard; echo "> text coppied to clipboard"'
alias         pastetext='xclip -selection clipboard -o'

alias                gs='git status'
alias                gd='git diff'
alias                gl='git log'
alias                gp='git push'
alias          gitcache='git config --global credential.helper "cache --timeout=904800"'

alias  youtube-playlist="yt-dlp -f bestvideo+bestaudio --merge-output-format mp4 -o '%(playlist_index)s - %(title)s.%(ext)s'"
alias     youtube-video="yt-dlp -f bestvideo+bestaudio --merge-output-format mp4 -o '%(title)s.%(ext)s'"


# ================================================================
# Variables
# ================================================================
export ALACRITTY_CONFIG="/home/$(whoami)/.config/alacritty/alacritty.toml"
export    DOTFILES_PATH="/home/$(whoami)/Code/personal/dotfiles"
export      NVIM_CONFIG="/home/$(whoami)/.config/nvim/init.vim"
export        I3_CONFIG="/home/$(whoami)/.config/i3/config"
export           EDITOR='/usr/bin/nvim';
export       GIT_EDITOR='nvim';
export           VISUAL='vim';


# ================================================================
# PATH for NVM and Nodejs
# ================================================================
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# ================================================================
# PATH for Go
# ================================================================
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin
export GOPRIVATE="bitbucket.org/truedmp/*"


# ================================================================
# Fuzzy search (press Ctrl + r to use)
# ================================================================
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# ================================================================
# Set x-rate to move faster in vim
# ================================================================
xset r rate 200 100


# ================================================================
# Configure conda for python
# ================================================================
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


