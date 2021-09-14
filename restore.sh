#!/bin/bash
read -p "Do you wish to restore nvim configure?" yn
case $yn in
  [Yy]* ) 
    echo "::: Info ::: Copy .config/nvim to $HOME/.config" 
    cp -r ./.config/nvim $HOME/.config 
		;;
  * ) echo "::: No ::: to next"
  ;;
esac


