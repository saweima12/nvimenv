#!/bin/bash
sudo pacman -S global ripgrep tmux 

# install nerd-fonts
read -p "Do you wish to install nerd font?" yn
case $yn in
  [Yy]* ) 
    echo "::: Info ::: Start to download nerd font" 
    yay -S nerd-fonts-fira-code 
		;;
  * ) echo "::: No ::: to next"
  ;;
esac



