
syntax on

set number
set noerrorbells
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set incsearch
set background=dark
set mouse=a
set clipboard=unnamedplus
set anti enc=utf-8
set guifont=Source\ Code\ Pro\ 12
set autowrite
set autoread
set nocompatible
set autoindent
set cindent
set smartindent

colorscheme tender

set makeprg=g++\ -std=c++17\ -g\ -Wshadow\ -Wextra\ -DLOCAL\ -pedantic\ -o\ %<\ %\ -fmax-errors=2\ -fsanitize=address\ -fsanitize=undefined\ -D__GLIBCXX_DEBUG 

inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}

map <F8> :make <CR> :cw <CR>
map <F5> :!./%< <CR>
map <C-_> gcc<ESC>
map <C-Left> :tabprev <CR>
map <C-Right> :tabnext <CR>
map <C-n> :tabnew <CR>
map <C-Down> :cnext <CR>
map <C-Up> :cprevious <CR>
map <C-c> :cclose <CR>

au BufNewFile *.cc 0r ~/.vim/tpl.cpp
au filetype cpp setlocal commentstring=//\ %s
au QuickFixCmdPost [^l]* nested cwindow
au QuickFixCmdPost    l* nested lwindow

" termdegug
packadd termdebug
let g:termdebug_wide=1
map <silent> <leader>d :Termdebug<cr>

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-commentary'
Plugin 'SirVer/ultisnips'
call vundle#end()
filetype plugin indent on

