#!/bin/bash

# Applications
sudo pacman -S --noconfirm atom compton dialog feh firefox fish ttf-hack \
    i3-gaps i3blocks i3lock i3status lightdm lightdm-gtk-greeter pavucontrol \
    ranger redshift rofi vim wget wpa_supplicant xorg xterm

# Folder creation
mkdir -p ~/.config/i3/ ~/.config/fish/ ~/.vim/autoload/ ~/.vim/colors/

# Fetching dotfiles
sudo wget https://raw.githubusercontent.com/TheAwesomeEgg/dotfiles/master/lightdm \
    --no-check-certificate -O /etc/lightdm/lightdm-gtk-greeter.conf

wget https://raw.githubusercontent.com/TheAwesomeEgg/dotfiles/master/bar \
    --no-check-certificate -O ~/.config/i3/bar

wget https://raw.githubusercontent.com/TheAwesomeEgg/dotfiles/master/i3 \
    --no-check-certificate -O ~/.config/i3/config

wget https://raw.githubusercontent.com/TheAwesomeEgg/dotfiles/master/fish \
    --no-check-certificate -O ~/.config/fish/config.fish

wget https://raw.githubusercontent.com/TheAwesomeEgg/dotfiles/master/vim \
    --no-check-certificate -O ~/.vimrc

wget https://raw.githubusercontent.com/TheAwesomeEgg/dotfiles/master/xresources \
    --no-check-certificate -O ~/.Xresources

sudo wget https://raw.githubusercontent.com/TheAwesomeEgg/dotfiles/master/wallpaper.jpg \
    --no-check-certificate -O /usr/share/pixmaps/wallpaper.jpg

wget https://raw.githubusercontent.com/joshdick/onedark.vim/master/autoload/onedark.vim \
    --no-check-certificate -O ~/.vim/autoload/onedark.vim

wget https://raw.githubusercontent.com/joshdick/onedark.vim/master/colors/onedark.vim \
    --no-check-certificate -O ~/.vim/colors/onedark.vim

# Changing shell
chsh -s $(which fish) $(whoami)

# Enable LightDM
sudo systemctl enable lightdm.service
