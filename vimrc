
syntax on
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set background=dark
set mouse=a
set clipboard=unnamedplus
set autowrite
set autoread
set nocompatible
set autoindent
set cindent
set smartindent
colo gruvbox

map <F5> :!./%< <CR>
map <F8> :!g++ -std=c++17 -Wall -Wshadow -Wextra -DLOCAL -o %< % <CR>

au BufNewFile *.cc 0r ~/.vim/tpl.cpp

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
call vundle#end()
filetype plugin indent on
