return {
    {
        "nvim-telescope/telescope.nvim",
        init = function (plugin)
            vim.keymap.set("", "<leader>ff", "<cmd> Telescope find_files<cr>")
            vim.keymap.set("", "<leader>fg", "<cmd> Telescope live_grep<cr>")
            vim.keymap.set("", "<leader>fb", "<cmd> Telescope buffers<cr>")
            vim.keymap.set("", "<leader>fb", "<cmd> Telescope help_tags<cr>")
            vim.keymap.set("", "<leader>fb", "<cmd> Telescope grep_string<cr>")
        end,
    },
    { "nvim-telescope/telescope-fzf-native.nvim" },
    { "tpope/vim-fugitive" },
    { "cohama/lexima.vim" },
}
