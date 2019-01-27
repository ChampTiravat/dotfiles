echo "==================================="
echo "Remove nano text editor"
echo "==================================="
sudo apt-get remove -y nano

echo "==================================="
echo "Replace vim.tiny with vim"
echo "==================================="
sudo apt-get remove -y vim.tiny
sudo apt-get install -y vim

echo "==================================="
echo "Installing VimPlug plugin manager"
echo "==================================="
sudo curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "==================================="
echo "Applying custom dotfiles configurations"
echo "==================================="
cp ./.vimrc ~
cp ./.tmux.conf.local ~

echo "==================================="
echo "Installing untility softwares"
echo "==================================="
sudo apt-get install -y tmux
sudo apt-get install -y zsh
sudo apt-get install -y htop
sudo apt-get install -y ranger
sudo apt-get install -y git
sudo apt-get install -y curl
sudo apt-get install -y gnome-disk-utility
sudo apt-get install -y blender
sudo apt-get install -y gimp
sudo apt-get install -y kdenlive
sudo apt-get install -y inkscape

echo "==================================="
echo "Installing misc softwares"
echo "==================================="
sudo apt-get install -y screenfetch
sudo apt-get install -y cowsay
sudo apt-get install -y fortune

echo "==================================="
echo "Installing Python development softwares"
echo "==================================="
sudo apt-get install -y python3-pip

echo "==================================="
echo "Installing NodeJS development softwares"
echo "==================================="
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

echo "==================================="
echo "Installing Golang development softwares"
echo "==================================="
sudo apt-get install -y go-dep
