return {
    {
        dir = "~/.config/nvim/mythemes",
        as = "tomorrow-night-blue",
        lazy = false,
        priority = 999,
        config = function()
            vim.cmd("colorscheme tomorrow-night-blue")
        end
    },
}

