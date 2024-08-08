return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function ()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = { "rust" },
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    },
    { "neovim/nvim-lspconfig" },
    { "nvim-lua/lsp_extensions.nvim" },
}
