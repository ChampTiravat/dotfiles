#!/bin/bash

echo "====================================================="
echo "update system apps and apt repository"
echo "====================================================="
sudo apt-get update  -y;
sudo apt-get upgrade -y;

echo "====================================================="
echo "remove nano text editor"
echo "====================================================="
# sudo apt-get remove -y nano;

echo "====================================================="
echo "replace vim.tiny with vim"
echo "====================================================="
# sudo apt-get remove -y vim.tiny;
sudo apt install -y python3-pynvim;
npm install -g neovim;
sudo apt-get install -y xclip;
sudo apt-get install -y ripgrep;

echo "====================================================="
echo "builk-renaming files with vim"
echo "====================================================="
curl https://raw.githubusercontent.com/thameera/vimv/master/vimv > ~/.local/bin/vimv && chmod +755 ~/.local/bin/vimv

echo "====================================================="
echo "installing untility softwares"
echo "====================================================="
sudo snap    install --classic alacritty;
# sudo snap    install           dbeaver-ce;
sudo apt-get install -y        tmux;
sudo apt-get install -y        zsh;
sudo apt-get install -y        htop;
sudo apt-get install -y        http;
sudo apt-get install -y        ranger;
sudo apt-get install -y        git;
sudo apt-get install -y        curl;
sudo apt-get install -y        mpv;
sudo apt-get install -y        maim;
sudo apt-get insatll -y        pulsemixer;
sudo apt-get install -y        sxiv; # image viewer
# sudo apt-get install -y      sxhkd; # keyboard's key binding

echo "====================================================="
echo "installing misc softwares"
echo "====================================================="
sudo apt-get install -y neofetch;

echo "==================================="
echo "Installing Python development softwares"
echo "==================================="
sudo apt-get install -y python3-pip;

echo "====================================================="
echo "install vscodium (opensourced version of vscode"
echo "====================================================="
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg;

echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list;

sudo apt-get update  -y;
sudo apt-get install -y codium;

echo "====================================================="
echo "installing common desktop apps"
echo "====================================================="
sudo apt-get install -y gnome-disk-utility;
sudo apt-get install -y gnome-tweaks;
sudo apt-get install -y blender;
sudo apt-get install -y krita;
sudo apt-get install -y gimp;
sudo apt-get install -y kdenlive;

echo "====================================================="
echo "installing youtube downloader"
echo "====================================================="
sudo add-apt-repository ppa:tomtomtom/yt-dlp;
sudo apt-get update  -y;
sudo apt-get install -y yt-dlp;

echo "====================================================="
echo "installing brave browser"
echo "====================================================="
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg;
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list;
sudo apt-get update  -y;
sudo apt-get install -y brave-browser;

echo "====================================================="
echo "place config files in their appropriate locations"
echo "====================================================="
     ln -s ./init.vim                   ~/.config/nvim/init.vim;
     ln -s ./alacritty.toml             ~/.config/alacritty/alacritty.toml;
     ln -s ./.tmux.conf                 ~/.tmux.conf;
     ln -s ./.xinitrc                   ~/.xinitrc;
sudo ln    ./scripts/screenshot.sh      /usr/bin/screenshot;
sudo ln    ./scripts/screenshot-full.sh /usr/bin/screenshot-full;

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
rm /home/${whoami}/.zshrc;
ln -s ./.zshrc /home/${whoami}/.zshrc;

echo "====================================================="
echo "installing signal"
echo "====================================================="
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg;
cat signal-desktop-keyring.gpg | sudo tee /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null;

echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  sudo tee /etc/apt/sources.list.d/signal-xenial.list;

sudo apt-get update  -y;
sudo apt-get install -y signal-desktop;

