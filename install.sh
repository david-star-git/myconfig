#!/bin/zsh

# Install packages
sudo pacman -S libxft libx11 libxinerama xorg-server xorg-xinit ttf-dejavu ttf-jetbrains-mono picom feh exa zsh-syntax-highlighting zsh-autosuggestions zip unzip bat bottom

# Create directories if not exist
mkdir -p ~/.config
mkdir -p ~/.fonts
sudo mkdir -p /etc/xdg

# Move files
mv config/* ~/.config/
mv fonts/* ~/.fonts/
sudo mv root/picom.conf /etc/xdg/

# Move entire suckless folder
mv suckless ~

# Move specific files
mv .p10k.zsh .xinitrc .zshrc ~

# Build and install dwm
cd ~/suckless/dwm
sudo make clean install

# Build and install dmenu
cd ~/suckless/dmenu
sudo make clean install

echo "Installation completed."
