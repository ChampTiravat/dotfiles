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

echo "==================================="
echo "Installing misc softwares"
echo "==================================="
sudo apt-get install -y screenfetch
sudo apt-get install -y cowsay
sudo apt-get install -y fortune
