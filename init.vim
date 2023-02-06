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
Plugin 'rust-lang/rust.vim'
Plugin 'neovim/nvim-lspconfig'
Plugin 'nvim-lua/lsp_extensions.nvim'
Plugin 'simrat39/rust-tools.nvim'
"Plugin 'nvim-lua/completion-nvim'

call vundle#end()

filetype indent plugin on
" End vundle setup

syntax on

" rust settings, mostly from https://sharksforarms.dev/posts/neovim-rust/
let g:rustfmt_autosave = 1

set completeopt=menuone,noinsert,noselect
set shortmess+=c
set updatetime=300

lua <<EOF
--vim.lsp.set_log_level("debug")

--local nvim_lsp = require'lspconfig'

--local on_attach = function(client)
--    require'completion'.on_attach(client)
--end

--nvim_lsp.rust_analyzer.setup({ on_attach=on_attach })
--
--vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--    vim.lsp.diagnostic.on_publish_diagnostics, {
--        virtual_text = true,
--        signs = true,
--        update_in_insert = true,
--    }
--)

local opts = {
    -- rust-tools options
    tools = {
        autoSetHints = true,
        hover_with_actions = true,
        inlay_hints = {
            show_parameter_hints = true,
            parameter_hints_prefix = "",
            other_hints_prefix = "",
        },
    },

    -- all the options to send to nvim-lspconfig
    -- these override the defaults set by rust-tools.nvim
    server = {
        settings = {
            ["rust-analyzer"] = {
                importEnforcedGranularity = true,
                importPrefix = "crate"
            },
            cargo = {
                allFeatures = true
            },
            checkOnSave = {
                command = "clippy",
            },
            inlayHints = {
                lifetimeElisionHints = {
                    enable = true,
                    useParameterNames = true
                },
            },
        },
    },
}
require('rust-tools').setup(opts)
EOF

" use gd to jump to definition
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>

" TODO: setup autocomplete and inlay type hints
