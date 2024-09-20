#!/bin/bash

echo "==================================="
echo "Update system apps and apt repository"
echo "==================================="
sudo apt-get update -y
sudo apt-get upgrade -y

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
