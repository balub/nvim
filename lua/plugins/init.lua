return {
    {
        dir = "~/.config/nvim/mythemes",
        as = "tomorrow-night-blue",
        lazy = false,
        priority = 999,
        config = function()
            vim.cmd("colorscheme tomorrow-night-blue")
        end
    }, -- Neovim Theme
    { "folke/neodev.nvim", opts = {} }, -- Autocomplete for Neovim lua api
    { "folke/neoconf.nvim", cmd = "Neoconf" }, -- Neovim plugin to manage global and project-local settings
}

