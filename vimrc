
syntax on
filetype plugin on

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
set noeb vb t_vb=
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=L
set guifont=Monospace\ 12
set makeprg=make\ -f\ ~/.Makefile\ %<
colo gruvbox 

map <F5> :!./%< <CR>
map <F8> :make<CR>:cwindow<CR>:redraw!<CR>
map <F9> :!g++ -std=c++17 -O3 -o %< % -pedantic <CR>
map <C-_> gcc<ESC>
map <Leader>/ gcc<ESC>
map <C-c> <ESC>ggVGy
map <F4> :wqa<CR>
map <Leader>v <C-w>v<C-w>w<ESC>:vertical resize 50<CR>:e in<CR>:w<CR>
map <C-Left> :tabprev<CR>
map <C-Right> :tabnext<CR>
map <C-n> :tabnew<CR>
map <C-Down> :cnext<CR>
map <C-Up> :cprev<CR>
map <Leader>] :cclose<CR>

au BufNewFile *.cc 0r ~/tpls/main.cpp
au filetype cpp setlocal commentstring=\//%s

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-commentary'
Plugin 'vim-airline/vim-airline'
call vundle#end()
filetype plugin indent on
