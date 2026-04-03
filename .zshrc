export ZSH="$HOME/.oh-my-zsh"

if [ -f "$HOME/.zsh_secrets" ]; then
    source "$HOME/.zsh_secrets"
fi

zstyle ':omz:update' mode reminder  # just remind me to update when it's time
zstyle ':omz:update' frequency 30

ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"

plugins=(git sudo)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# ================================================================
# Aliases
# ================================================================
alias gitlazy=lazygit
alias reset:keyboard="setxkbmap -layout 'us,th' -option 'grp:alt_shift_toggle'"

alias encrypt='gpg -c --no-symkey-cache --cipher-algo AES256'
alias decrypt='gpg --decrypt'

alias wifi:list='nmcli device wifi list'
alias wifi:conn='nmcli device wifi connect '

alias    reload='source ~/.zshrc; echo "> reloaded ~/.zshrc";'
alias    rename='vimv' # TODO: install https://github.com/thameera/vimv/ for bulk-renaming files
alias         m='make'
alias         s='source'
alias    python='python3'
alias     sound='pulsemixer'
alias       vim='nvim'
alias        vi='nvim'
alias      code='codium'
alias   vi:conf="vi /home/$(whoami)/Code/Personal/dotfiles/init.vim"
alias  vim:conf="vi /home/$(whoami)/Code/Personal/dotfiles/init.vim"
alias nvim:conf="vi /home/$(whoami)/Code/Personal/dotfiles/init.vim"
alias  zsh:conf="vi /home/$(whoami)/Code/Personal/dotfiles/.zshrc"

alias  copytext='xclip -selection clipboard; echo "> text coppied to clipboard"'
alias  ccc='xclip -selection clipboard; echo "> text coppied to clipboard"'
alias ppp='xclip -selection clipboard -o'

alias       gs='git status'
alias       gd='git diff'
alias       gl='git log'
alias       gp='git push'
alias gitcache='git config --global credential.helper "cache --timeout=904800"'

alias appsOnPort='sudo lsof -i '

alias l='eza -lah --icons'
alias ll='eza -lah --icons'
alias ls='eza --icons'

alias rm=trash

alias activate='source venv/bin/activate'

#source ~/.fzf/shell/key-bindings.zsh
#source ~/.fzf/shell/completion.zsh

# ================================================================
# Variables
# ================================================================
export ALACRITTY_CONFIG="/home/$(whoami)/.config/alacritty/alacritty.toml"
export      NVIM_CONFIG="/home/$(whoami)/.config/nvim/init.vim"
export        I3_CONFIG="/home/$(whoami)/.config/i3/config"
export           EDITOR='/usr/bin/nvim';
export       GIT_EDITOR='nvim'
export           VISUAL='nvim'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/$(whoami)/go/bin/
export PATH="$PATH:/usr/bin/nvim-linux-x86_64/bin"
export PATH="$PATH:/usr/bin/Postman/app"

unsetopt correct_all
xset r rate 200 150

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias speak="~/Tools/piper-tts/piper/piper --model ~/Tools/piper-tts/piper/en_US-lessac-medium.onnx --output_raw | aplay -r 22050 -f S16_LE -t raw -"
