-- Normal vim settings
vim.g.mapleader = ","

vim.o.hidden = true
vim.wo.wrap = false
vim.o.termguicolors = true

vim.keymap.set("!", "jj", "<Esc>")

vim.keymap.set("", "<C-j>", "<C-w>j")
vim.keymap.set("", "<C-k>", "<C-w>k")
vim.keymap.set("", "<C-h>", "<C-w>h")
vim.keymap.set("", "<C-l>", "<C-w>l")
vim.keymap.set("", "<C-x>", "<C-w>x")
vim.keymap.set("", "<leader><space>", ":noh<cr>")

-- lsp config
vim.keymap.set("s", "gd", vim.lsp.buf.definition)
vim.lsp.inlay_hint.enable(true)

-- other options
vim.o.backspace = "2"
vim.o.number = true
vim.o.ruler = true
vim.o.mouse = "a"
vim.o.hlsearch = true
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

vim.o.updatetime = 300
vim.opt.completeopt = { "menuone", "noinsert", "noselect" }

-- setup plugins
require("config.lazy")
