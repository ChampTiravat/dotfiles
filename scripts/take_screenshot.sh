#/bin/zsh

maim --select | tee ~/Pictures/$(date +%s).png | xclip -selection clipboard -t image/png
