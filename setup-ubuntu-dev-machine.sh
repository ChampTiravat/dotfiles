#!/bin/bash

echo "==================================="
echo "Update system apps and apt repository"
echo "==================================="
sudo apt-get update -y
sudo apt-get upgrade -y

echo "==================================="
echo "Remove nano text editor"
echo "==================================="
sudo apt-get remove -y nano

echo "==================================="
echo "Replace vim.tiny with vim"
echo "==================================="
sudo apt-get remove -y vim.tiny
pip install neovim
npm install -g neovim
sudo apt-get install -y xclip
sudo apt-get install -y ripgrep

echo "==================================="
echo "Installing untility softwares"
echo "==================================="
sudo snap install --classic alacritty
sudo snap install dbeaver-ce
sudo apt-get install -y tmux
sudo apt-get install -y zsh
sudo apt-get install -y htop
sudo apt-get install -y http
sudo apt-get install -y ranger
sudo apt-get install -y git
sudo apt-get install -y curl
sudo apt-get install -y mpv

echo "==================================="
echo "Installing misc softwares"
echo "==================================="
sudo apt-get install -y neofetch

echo "==================================="
echo "Installing Python development softwares"
echo "==================================="
sudo apt-get install -y python3-pip

echo "==================================="
echo "Install VSCodium (opensourced version of VSCode"
echo "==================================="
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list
sudo apt-get update -y
sudo apt-get install -y codium

echo "==================================="
echo "Installing common Desktop apps"
echo "==================================="
sudo apt-get install -y gnome-disk-utility
sudo apt-get install -y gnome-tweak
sudo apt-get install -y blender
sudo apt-get install -y krita
sudo apt-get install -y gimp
sudo apt-get install -y kdenlive

echo "==================================="
echo "Installing youtube downloader"
echo "===================================";
sudo add-apt-repository ppa:tomtomtom/yt-dlp
sudo apt-get update -y
sudo apt-get install -y yt-dlp

echo "==================================="
echo "Installing brave browser"
echo "==================================="
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt-get update -y
sudo apt-get install -y brave-browser

