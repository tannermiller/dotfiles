return {
    {
        'mrcjkb/rustaceanvim',
        version = '^5',
        -- Recommended
        lazy = false, -- This plugin is already lazy
        init = function ()
            vim.g.rustfmt_autosave = 1
        end,
    },
}
