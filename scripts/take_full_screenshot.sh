#/bin/zsh

maim | tee ~/Pictures/$(date +%s).png | xclip -selection clipboard -t image/png
