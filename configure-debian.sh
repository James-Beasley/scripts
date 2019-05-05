#!/bin/bash

# Applications
sudo apt-get -y install compton feh firefox-esr fish fonts-hack-ttf i3 \
    i3blocks i3lock i3status lightdm pavucontrol ranger redshift rofi \
    wicd-curses vim xorg --no-install-recommends

# Applications not in the repos
wget https://raw.githubusercontent.com/maestrogerardo/i3-gaps-deb/master/i3-gaps-deb \
    --no-check-certificate -O i3-gaps-deb.sh
bash i3-gaps-deb.sh

wget https://atom.io/download/deb --no-check-certificate -O atom.deb
sudo dpkg -i atom.deb
sudo apt-get -y install -f

# Folder creation
mkdir -p ~/.config/i3/ ~/.config/fish ~/.vim/autoload/ ~/.vim/colors/

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

# Cleaning up
rm -rf i3-gaps/
rm i3-gaps-deb.sh
rm atom.deb
