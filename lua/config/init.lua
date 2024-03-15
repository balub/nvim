-- Check if lazy is already installed if not clone from git
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Initalize globals
require('config.globals')
-- Define neovims behavior ie its settings
require('config.options')
-- Define custom user-defined keymaps
require('config.keymaps')

local opts = {
	defaults = {
		lazy = true,
	},
	install = {
		colorscheme = { "tomorrow-dark-blue" },
	},
	rtp = {
		disabled_plugins = {
			"gzip",
			"matchit",
			"matchparen",
			"netrw",
			"netrwPlugin",
			"tarPlugin",
			"tohtml",
			"tutor",
			"zipPlugin",
		},
	},
	change_detection = {
		notify = false,
	},
}

require("lazy").setup('plugins',opts) -- Setup plugins by reading from the plugins folder
--[[
    Here, we do not need to load all files individually because Lazy package manager automatically scans through the files in the plugins folder and if the plugin needs to be loaded in (because many plugins are lazy loaded when required by default) it determines whether or not to load those plugin configuration files.
    This is different from the config file because that follows regular lua rules hence there we need to individually require all the files in the init.lua file
--]]
