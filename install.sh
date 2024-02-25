#!/bin/zsh

# Enable error checking
set -e

# Check if the package manager is available
if ! command -v pacman &> /dev/null; then
    echo "Pacman package manager not found. This script is intended for Arch Linux."
    exit 1
fi

# Install packages
sudo pacman -S --needed neofetch alacritty zsh-history-substring-search xorg-xsetroot xorg-xrandr libxft libx11 libxinerama xorg-server xorg-xinit ttf-dejavu ttf-jetbrains-mono picom feh exa zsh-syntax-highlighting zsh-autosuggestions zip unzip bat bottom fzf acpi thefuck entr ripgrep rofi rofi-emoji rofi-calc stow nodejs

cd ~
mkdir suckless

git clone https://github.com/david-star-git/dotfiles
cd dotfiles
stow -vSt ~ *

# Root
sudo mkdir -p /etc/xdg
sudo mv ~/myconfig/root/picom.conf /etc/xdg/

# Move files
mv ~/myconfig/scripts ~
mv ~/myconfig/wallpapers ~

# Build and install dwm
cd ~/suckless/dwm
sudo make clean install

# Install yay
cd ~
if ! command -v yay &> /dev/null; then
    sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
fi

# Install LibreWolf
yay -S --noconfirm brave-bin zsh-theme-powerlevel10k-git

echo "Installation completed."
