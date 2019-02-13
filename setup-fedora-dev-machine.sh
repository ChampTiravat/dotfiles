echo "==================================="
echo "Remove nano text editor"
echo "==================================="
sudo dnf remove -y nano

echo "==================================="
echo "Replace vim.tiny with vim"
echo "==================================="
sudo dnf remove -y vim.tiny
sudo dnf install -y vim

echo "==================================="
echo "Installing untility softwares"
echo "==================================="
sudo dnf install -y tmux
sudo dnf install -y zsh
sudo dnf install -y htop
sudo dnf install -y ranger
sudo dnf install -y git
sudo dnf install -y curl

echo "==================================="
echo "Installing misc softwares"
echo "==================================="
sudo dnf install -y screenfetch
sudo dnf install -y cowsay
sudo dnf install -y fortune

echo "==================================="
echo "Installing Python development softwares"
echo "==================================="
sudo dnf install -y python3-pip

echo "==================================="
echo "Installing Golang development softwares"
echo "==================================="
sudo dnf install -y go-dep
