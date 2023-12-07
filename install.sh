#!/bin/zsh

# Enable error checking
set -e

# Install packages
sudo pacman -S --needed neofetch alacritty zsh-history-substring-search xorg-xrandr libxft libx11 libxinerama xorg-server xorg-xinit ttf-dejavu ttf-jetbrains-mono picom feh exa zsh-syntax-highlighting zsh-autosuggestions zip unzip bat bottom fzf

# Create directories if not exist
mkdir -p ~/.config
mkdir -p ~/.fonts
mkdir -p ~/Pictures
sudo mkdir -p /etc/xdg

# Move files
mv config/* ~/.config/
mv fonts/* ~/.fonts/
mv wallpaper.png ~/Pictures/
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

# Install yay
cd ~
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

# Install LibreWolf
yay -S --noconfirm brave-bin zsh-theme-powerlevel10k-git

echo "Installation completed."
