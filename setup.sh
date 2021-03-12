
sudo apt update
sudo apt upgrade

sudo apt install -y vim vim-gtk 
sudo apt install -y git
sudo apt install -y openjdk-8-jdk
sudo apt install -y maven
sudo apt install -y docker.io 
sudo apt install -y xclip xsel
sudo apt install -y gnome-tweak-tool

ln -s /home/nurbek/dotfiles/vimrc /home/nurbek/.vimrc
ln -s /home/nurbek/dotfiles/bash_aliases /home/nurbek/.bash_aliases
ln -s /home/nurbek/dotfiles/Makefile /home/nurbek/.Makefile

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

