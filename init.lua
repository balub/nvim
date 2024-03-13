require('config') -- initalize init.lua in config folder

-- Set tomorrow-night-blue as the color theme to use
-- Check out https://vi.stackexchange.com/a/39273 for more details
-- TODO: Move the code below into a theme.lua file in the plugins
vim.opt.termguicolors = true
vim.cmd("colorscheme tomorrow-night-blue")
