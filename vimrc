set nocompatible

set hidden
set nowrap

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

set backspace=2

let g:pymode_folding = 0
let g:pymode_lint_ignore = "W391"
let g:pymode_lint_cwindow = 0

filetype on

filetype off
filetype plugin indent off

" start vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

"Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'klen/python-mode'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
"Plugin 'kien/rainbow_parentheses.vim'
"Plugin 'luochen1990/rainbow'
Plugin 'tpope/vim-fugitive'
Plugin 'Townk/vim-autoclose'
Plugin 'fatih/vim-go'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'rust-lang/rust.vim'
"Plugin 'racer-rust/vim-racer'
"Plugin 'guns/vim-clojure-static'
"Plugin 'tpope/vim-fireplace'
Plugin 'suan/vim-instant-markdown'

call vundle#end()

set runtimepath+=/usr/lib/go/misc/vim

"let g:godef_split=2
"let g:godef_same_file_in_same_window=1

filetype indent plugin on
syntax on
set number
set ruler
set mouse=a
set hlsearch
set expandtab
set tabstop=4
set shiftwidth=4

nnoremap <leader>f :NERDTreeToggle<CR><C-2>=
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeWinSize = 22
let NERDTreeMinimalUI = 1

autocmd BufRead *.jinja set filetype=html
"autocmd FileType go autocmd BufWritePre <buffer> Fmt
"au BufWritePost *.go silent! !ctags -R &

" remove trailing whitespace in haskell & rust files.
autocmd BufWritePre *.hs :%s/\s\+$//e
autocmd BufWritePre *.rs :%s/\s\+$//e

" fireplace clojure settings
"au FileType clj nmap gd <Plug>FireplaceDjump

"let g:racer_cmd = "~/.cargo/bin/racer"
"let $RUST_SRC_PATH="~/code/rust/rust/src/"
