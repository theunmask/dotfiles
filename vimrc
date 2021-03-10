
syntax on
set number
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set hlsearch
set incsearch
set ignorecase
set smartindent
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
map <F8> :!g++ -std=c++17 -Wall -Wshadow -Wextra -DLOCAL -o %< % -fsanitize=undefined -fsanitize=address -D_GLIBCXX_DEBUG -pedantic <CR>
map <F9> :!g++ -std=c++17 -O3 -o %< % -pedantic <CR>
map <C-_> gcc<ESC>
map <C-c> <ESC>ggVGy

au BufNewFile *.cc 0r ~/tpls/main.cpp
au filetype cpp setlocal commentstring=\//%s

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-commentary'
call vundle#end()
filetype plugin indent on
