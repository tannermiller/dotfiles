set nocompatible

set hidden
set nowrap
set termguicolors

let mapleader = ","

map <leader><space> :noh<cr>

" Hack to let neovim use <C-h>
if has('nvim')
  nmap <BS> <C-W>h
endif

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-x> <C-w>x

noremap! jj <Esc>

" close quick fix window key mapping
nnoremap <leader>b :cclose<CR>`A

set backspace=2
set number
set ruler
set mouse=a
set hlsearch
set expandtab
set tabstop=4
set shiftwidth=4

highlight Pmenu guibg=brown gui=bold

" Vundle setup
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Townk/vim-autoclose'

call vundle#end()

filetype indent plugin on
" End vundle setup

syntax on
