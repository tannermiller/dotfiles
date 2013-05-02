set showcmd

set nocompatible

set nowrap

set hidden

set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent

set hlsearch

let g:pymode_folding=0
let g:pymode_lint_ignore = "W391"

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-x> <C-w>x

let mapleader = ","

map <leader><space> :noh<cr>

map <leader>p :set spell!<cr>

filetype on

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'sjl/gundo.vim'
Bundle 'klen/python-mode'
Bundle 'scrooloose/syntastic'
Bundle 'jnwhiteh/vim-golang'
Bundle 'kien/ctrlp.vim'
Bundle 'kien/rainbow_parentheses.vim'

syntax on
filetype indent plugin on
set number
set ruler
set mouse=a

nnoremap <leader>f :NERDTreeToggle<CR><C-w>=
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeWinSize = 22
let NERDTreeMinimalUI = 1
