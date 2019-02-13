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
echo "Installing untility softwares"
echo "==================================="
sudo apt-get install -y tmux
sudo apt-get install -y zsh
sudo apt-get install -y htop
sudo apt-get install -y ranger
sudo apt-get install -y git
sudo apt-get install -y curl

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
echo "Installing Golang development softwares"
echo "==================================="
sudo apt-get install -y go-dep
