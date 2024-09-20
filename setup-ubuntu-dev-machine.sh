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

echo "==================================="
echo "Installing untility softwares"
echo "==================================="
sudo snap install --classic alacritty
sudo apt-get install -y tmux
sudo apt-get install -y zsh
sudo apt-get install -y htop
sudo apt-get install -y http
sudo apt-get install -y ranger
sudo apt-get install -y git
sudo apt-get install -y curl

echo "==================================="
echo "Installing misc softwares"
echo "==================================="
sudo apt-get install -y neofetch

echo "==================================="
echo "Installing Python development softwares"
echo "==================================="
sudo apt-get install -y python3-pip
